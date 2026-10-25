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
import Seq.B000.C023
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
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A323501: Number of minimum dominating sets in the n X n white bishop graph.

The programs for A323501, there is no canonical definition to state claims against.
-/

/-! ## A323501.P10897399437768085444

`A182333(n+2)/A323500(n+2)`
-/

namespace A323501.P10897399437768085444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182333 (n + 2) : ℚ) / (A323500 (n + 2) : ℚ)

end

end A323501.P10897399437768085444

/-!
# A323502: Number of irreducible or connected partial orders on {1,2,...,n} that are contained in the usual linear order (i.e., xRy => x < y).

The programs for A323502, there is no canonical definition to state claims against.
-/

/-! ## A323502.P16022093035159883794

`A330668(n)-A033101(A330668(n))`
-/

namespace A323502.P16022093035159883794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330668 n - A033101 (A330668 n).toNat

end

end A323502.P16022093035159883794

/-! ## A323502.P8998232763502329699

`round(sqrt(A265707(n!)))`
-/

namespace A323502.P8998232763502329699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A265707 (Nat.factorial n) : ℝ))

end

end A323502.P8998232763502329699

/-!
# A323503: a(n) = A322827(2n) / A322827(n).

The programs for A323503, the canonical program `A323503.P2031337210637551510` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323503 has offset 0).

The definition of A323503 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322827, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323503.P2031337210637551510

`A322827(2*n)/A322827(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A323503

/-- `A322827(2*n)/A322827(n)` -/
def P2031337210637551510.Spec : Prop :=
  ∀ n, P2031337210637551510.a n = (A323503 n : ℚ)

end A323503

/-! ## A323503.P4887515344136065442

`A323507(2*n)`
-/

namespace A323503.P4887515344136065442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323507 (2 * n)

end

end A323503.P4887515344136065442

namespace A323503

/-- `A323507(2*n)` -/
def P4887515344136065442.Spec : Prop :=
  ∀ n, P4887515344136065442.a n = A323503 n

end A323503

/-! ## A323503.P12369380148491729963

`gcd(A000038(n), A323507(A005843(n)))`
-/

namespace A323503.P12369380148491729963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A323507 (A005843 n).toNat)

end

end A323503.P12369380148491729963

namespace A323503

/-- `gcd(A000038(n), A323507(A005843(n)))` -/
def P12369380148491729963.Spec : Prop :=
  ∀ n, (P12369380148491729963.a n : ℤ) = A323503 n

end A323503

/-! ## A323503.P4508072174753970608

`or(A000007(n), A323507(A005843(n)))`
-/

namespace A323503.P4508072174753970608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A323507 (A005843 n).toNat)

end

end A323503.P4508072174753970608

namespace A323503

/-- `or(A000007(n), A323507(A005843(n)))` -/
def P4508072174753970608.Spec : Prop :=
  ∀ n, P4508072174753970608.a n = A323503 n

end A323503

/-! ## A323503.P10165844610702246905

`A323507(eq[2, A020639(n+2)])%A154113(n+1)`
-/

namespace A323503.P10165844610702246905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A154113 (n + 1))

end

end A323503.P10165844610702246905

namespace A323503

/-- `A323507(eq[2, A020639(n+2)])%A154113(n+1)` -/
def P10165844610702246905.Spec : Prop :=
  ∀ n, P10165844610702246905.a n = A323503 n

end A323503

/-! ## A323503.P15933741854951994657

`A323507(n+n)+A083280(A076272(n+1))`
-/

namespace A323503.P15933741854951994657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323507 (n + n) + A083280 (A076272 (n + 1)).toNat

end

end A323503.P15933741854951994657

namespace A323503

/-- `A323507(n+n)+A083280(A076272(n+1))` -/
def P15933741854951994657.Spec : Prop :=
  ∀ n, P15933741854951994657.a n = A323503 n

end A323503

/-! ## A323503.P10011717864149965318

`A323507(A005843(n))%A341722(A050140(n+2))`
-/

namespace A323503.P10011717864149965318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323507 (A005843 n).toNat) (A341722 (A050140 (n + 2)).toNat)

end

end A323503.P10011717864149965318

namespace A323503

/-- `A323507(A005843(n))%A341722(A050140(n+2))` -/
def P10011717864149965318.Spec : Prop :=
  ∀ n, P10011717864149965318.a n = A323503 n

end A323503

/-! ## A323503.P7360328249006229368

`A323507(n+n)^A007913((n+1)²)`
-/

namespace A323503.P7360328249006229368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323507 (n + n) : ℚ) ^ (A007913 ((n + 1) ^ 2) : ℤ)

end

end A323503.P7360328249006229368

namespace A323503

/-- `A323507(n+n)^A007913((n+1)²)` -/
def P7360328249006229368.Spec : Prop :=
  ∀ n, P7360328249006229368.a n = (A323503 n : ℚ)

end A323503

/-! ## A323503.P4148552741343933665

`A323507(n+n)+A282516(∑[n])`
-/

namespace A323503.P4148552741343933665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323507 (n + n) + A282516 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323503.P4148552741343933665

namespace A323503

/-- `A323507(n+n)+A282516(∑[n])` -/
def P4148552741343933665.Spec : Prop :=
  ∀ n, P4148552741343933665.a n = A323503 n

end A323503

/-! ## A323503.P13874867789738145090

`∏{p}[A323507(A005408(n)-1), #]`
-/

namespace A323503.P13874867789738145090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323507 (A005408 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A323503.P13874867789738145090

namespace A323503

/-- `∏{p}[A323507(A005408(n)-1), #]` -/
def P13874867789738145090.Spec : Prop :=
  ∀ n, (P13874867789738145090.a n : ℤ) = A323503 n

end A323503

/-! ## A323503.P8949448469618544904

`A323507(n+n)/A010766(∑[n+1])`
-/

namespace A323503.P8949448469618544904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323507 (n + n) : ℚ) / (A010766 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A323503.P8949448469618544904

namespace A323503

/-- `A323507(n+n)/A010766(∑[n+1])` -/
def P8949448469618544904.Spec : Prop :=
  ∀ n, P8949448469618544904.a n = (A323503 n : ℚ)

end A323503

/-!
# A323504: a(n) = A322827(2n+1) / A322827(n).

The programs for A323504, the canonical program `A323504.P6557596497636559226` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323504 has offset 0).

The definition of A323504 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322827, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323504.P6557596497636559226

`A322827(2*n+1)/A322827(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A323504

/-- `A322827(2*n+1)/A322827(n)` -/
def P6557596497636559226.Spec : Prop :=
  ∀ n, P6557596497636559226.a n = (A323504 n : ℚ)

end A323504

/-! ## A323504.P13319010658566700535

`A323507(Δ[n²])`
-/

namespace A323504.P13319010658566700535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323507 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A323504.P13319010658566700535

namespace A323504

/-- `A323507(Δ[n²])` -/
def P13319010658566700535.Spec : Prop :=
  ∀ n, P13319010658566700535.a n = A323504 n

end A323504

/-! ## A323504.P4514954972228775299

`lcm(A033999(n), A323507(A005408(n)))`
-/

namespace A323504.P4514954972228775299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A323507 (A005408 n).toNat)

end

end A323504.P4514954972228775299

namespace A323504

/-- `lcm(A033999(n), A323507(A005408(n)))` -/
def P4514954972228775299.Spec : Prop :=
  ∀ n, (P4514954972228775299.a n : ℤ) = A323504 n

end A323504

/-! ## A323504.P16345695152784448374

`A323507(A005408(n))+A000007(n+1)`
-/

namespace A323504.P16345695152784448374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323507 (A005408 n).toNat + A000007 (n + 1)

end

end A323504.P16345695152784448374

namespace A323504

/-- `A323507(A005408(n))+A000007(n+1)` -/
def P16345695152784448374.Spec : Prop :=
  ∀ n, P16345695152784448374.a n = A323504 n

end A323504

/-! ## A323504.P3611946234494198807

`A323507(A005408(n))%A138439(n+1)`
-/

namespace A323504.P3611946234494198807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323507 (A005408 n).toNat) (A138439 (n + 1))

end

end A323504.P3611946234494198807

namespace A323504

/-- `A323507(A005408(n))%A138439(n+1)` -/
def P3611946234494198807.Spec : Prop :=
  ∀ n, P3611946234494198807.a n = A323504 n

end A323504

/-! ## A323504.P8107831689190819537

`gcd(A000038(n), A323507(A005843(n)+1))`
-/

namespace A323504.P8107831689190819537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A323507 (A005843 n + 1).toNat)

end

end A323504.P8107831689190819537

namespace A323504

/-- `gcd(A000038(n), A323507(A005843(n)+1))` -/
def P8107831689190819537.Spec : Prop :=
  ∀ n, (P8107831689190819537.a n : ℤ) = A323504 n

end A323504

/-! ## A323504.P13802537677719988224

`A323507(A005408(n))-n*A000007(n)`
-/

namespace A323504.P13802537677719988224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323507 (A005408 n).toNat - (n : ℤ) * A000007 n

end

end A323504.P13802537677719988224

namespace A323504

/-- `A323507(A005408(n))-n*A000007(n)` -/
def P13802537677719988224.Spec : Prop :=
  ∀ n, P13802537677719988224.a n = A323504 n

end A323504

/-! ## A323504.P1990466972034611732

`A326595(val(n+1, 3))+A323507(A005408(n))`
-/

namespace A323504.P1990466972034611732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326595 (SequenceMachineLib.valuation (n + 1) 3) + A323507 (A005408 n).toNat

end

end A323504.P1990466972034611732

namespace A323504

/-- `A326595(val(n+1, 3))+A323507(A005408(n))` -/
def P1990466972034611732.Spec : Prop :=
  ∀ n, P1990466972034611732.a n = A323504 n

end A323504

/-! ## A323504.P15123404563773550277

`A323507(A005408(n))+A106242(A106255(n+1))`
-/

namespace A323504.P15123404563773550277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323507 (A005408 n).toNat + A106242 (A106255 (n + 1)).toNat

end

end A323504.P15123404563773550277

namespace A323504

/-- `A323507(A005408(n))+A106242(A106255(n+1))` -/
def P15123404563773550277.Spec : Prop :=
  ∀ n, P15123404563773550277.a n = A323504 n

end A323504

/-! ## A323504.P3703708204198451304

`A033999(2*n)*A323507(A005408(n))`
-/

namespace A323504.P3703708204198451304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A323507 (A005408 n).toNat

end

end A323504.P3703708204198451304

namespace A323504

/-- `A033999(2*n)*A323507(A005408(n))` -/
def P3703708204198451304.Spec : Prop :=
  ∀ n, P3703708204198451304.a n = A323504 n

end A323504

/-! ## A323504.P2997833867251282564

`A124625(2*n)*A323507(A005408(n))`
-/

namespace A323504.P2997833867251282564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (2 * n) * A323507 (A005408 n).toNat

end

end A323504.P2997833867251282564

namespace A323504

/-- `A124625(2*n)*A323507(A005408(n))` -/
def P2997833867251282564.Spec : Prop :=
  ∀ n, P2997833867251282564.a n = A323504 n

end A323504

/-! ## A323504.P6173316229078519271

`∏{p}[A323507(2*n+1), #]`
-/

namespace A323504.P6173316229078519271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323507 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A323504.P6173316229078519271

namespace A323504

/-- `∏{p}[A323507(2*n+1), #]` -/
def P6173316229078519271.Spec : Prop :=
  ∀ n, (P6173316229078519271.a n : ℤ) = A323504 n

end A323504

/-!
# A323505: Mirror image of (denominators of) Bernoulli tree, A106831.

The programs for A323505, the canonical program `A323505.P2579351898169798948` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323505 has offset 0).

The definition of A323505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323505.P13534897933969910961

`A246660(n)*A323506(n)`
-/

namespace A323505.P13534897933969910961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 n * A323506 n

end

end A323505.P13534897933969910961

namespace A323505

/-- `A246660(n)*A323506(n)` -/
def P13534897933969910961.Spec : Prop :=
  ∀ n, P13534897933969910961.a n = A323505 n

end A323505

/-! ## A323505.P15154917120904322633

`A323508(A005940(1+n))`
-/

namespace A323505.P15154917120904322633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323508 (A005940 (1 + n)).toNat

end

end A323505.P15154917120904322633

namespace A323505

/-- `A323508(A005940(1+n))` -/
def P15154917120904322633.Spec : Prop :=
  ∀ n, P15154917120904322633.a n = A323505 n

end A323505

/-! ## A323505.P4890902691247101407

`A321898(A246029(n))*A323506(n)`
-/

namespace A323505.P4890902691247101407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321898 (A246029 n).toNat * A323506 n

end

end A323505.P4890902691247101407

namespace A323505

/-- `A321898(A246029(n))*A323506(n)` -/
def P4890902691247101407.Spec : Prop :=
  ∀ n, P4890902691247101407.a n = A323505 n

end A323505

/-! ## A323505.P7118265874437534999

`∏{e}[A278222(n), A000142(#)]*A323506(n)`
-/

namespace A323505.P7118265874437534999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p)) * A323506 n

end

end A323505.P7118265874437534999

namespace A323505

/-- `∏{e}[A278222(n), A000142(#)]*A323506(n)` -/
def P7118265874437534999.Spec : Prop :=
  ∀ n, P7118265874437534999.a n = A323505 n

end A323505

/-! ## A323505.P2579351898169798948

`a(floor(n/2))*A091090(2*n+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A323505

/-- `a(floor(n/2))*A091090(2*n+1)` -/
def P2579351898169798948.Spec : Prop :=
  ∀ n, P2579351898169798948.a n = A323505 n

theorem P2579351898169798948.correct : P2579351898169798948.Spec := by
  intro n
  simp only [A323505]

end A323505

/-! ## A323505.P7750954642754779922

`A112624(A278222(n))*A323506(n)`
-/

namespace A323505.P7750954642754779922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A278222 n).toNat * A323506 n

end

end A323505.P7750954642754779922

namespace A323505

/-- `A112624(A278222(n))*A323506(n)` -/
def P7750954642754779922.Spec : Prop :=
  ∀ n, P7750954642754779922.a n = A323505 n

end A323505

/-! ## A323505.P11825239913434929838

`∏{e}[A005940(n+1), #!]*A323506(n)`
-/

namespace A323505.P11825239913434929838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) * A323506 n

end

end A323505.P11825239913434929838

namespace A323505

/-- `∏{e}[A005940(n+1), #!]*A323506(n)` -/
def P11825239913434929838.Spec : Prop :=
  ∀ n, P11825239913434929838.a n = A323505 n

end A323505

/-! ## A323505.P3607597309665342708

`A112624(A005940(n+1))*A323506(n)`
-/

namespace A323505.P3607597309665342708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A005940 (n + 1)).toNat * A323506 n

end

end A323505.P3607597309665342708

namespace A323505

/-- `A112624(A005940(n+1))*A323506(n)` -/
def P3607597309665342708.Spec : Prop :=
  ∀ n, P3607597309665342708.a n = A323505 n

end A323505

/-! ## A323505.P5846755270891452283

`A112624(A332815(n))*A323506(n)`
-/

namespace A323505.P5846755270891452283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A332815 n).toNat * A323506 n

end

end A323505.P5846755270891452283

namespace A323505

/-- `A112624(A332815(n))*A323506(n)` -/
def P5846755270891452283.Spec : Prop :=
  ∀ n, P5846755270891452283.a n = A323505 n

end A323505

/-! ## A323505.P4145158058875445245

`A323508(A253565(n))`
-/

namespace A323505.P4145158058875445245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323508 (A253565 n).toNat

end

end A323505.P4145158058875445245

namespace A323505

/-- `A323508(A253565(n))` -/
def P4145158058875445245.Spec : Prop :=
  ∀ n, P4145158058875445245.a n = A323505 n

end A323505

/-!
# A323506: a(n) = A323505(n) / A246660(n).

The programs for A323506, the canonical program `A323506.P376847477820473957` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323506 has offset 0).

The definition of A323506 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246660, A323505, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323506.P376847477820473957

`A323505(n)/A246660(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A323506

/-- `A323505(n)/A246660(n)` -/
def P376847477820473957.Spec : Prop :=
  ∀ n, P376847477820473957.a n = (A323506 n : ℚ)

end A323506

/-! ## A323506.P8716308142898193594

`A323505(n)/A321898(A246029(n))`
-/

namespace A323506.P8716308142898193594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323505 n : ℚ) / (A321898 (A246029 n).toNat : ℚ)

end

end A323506.P8716308142898193594

namespace A323506

/-- `A323505(n)/A321898(A246029(n))` -/
def P8716308142898193594.Spec : Prop :=
  ∀ n, P8716308142898193594.a n = (A323506 n : ℚ)

end A323506

/-! ## A323506.P6540265405218996360

`A323505(n)/∏{e}[A278222(n), A000142(#)]`
-/

namespace A323506.P6540265405218996360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323505 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℚ)

end

end A323506.P6540265405218996360

namespace A323506

/-- `A323505(n)/∏{e}[A278222(n), A000142(#)]` -/
def P6540265405218996360.Spec : Prop :=
  ∀ n, P6540265405218996360.a n = (A323506 n : ℚ)

end A323506

/-! ## A323506.P10538390356084341039

`A323505(n)/A112624(A278222(n))`
-/

namespace A323506.P10538390356084341039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323505 n : ℚ) / (A112624 (A278222 n).toNat : ℚ)

end

end A323506.P10538390356084341039

namespace A323506

/-- `A323505(n)/A112624(A278222(n))` -/
def P10538390356084341039.Spec : Prop :=
  ∀ n, P10538390356084341039.a n = (A323506 n : ℚ)

end A323506

/-! ## A323506.P47665801087816868

`A323505(n)/∏{e}[A005940(n+1), #!]`
-/

namespace A323506.P47665801087816868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323505 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℚ)

end

end A323506.P47665801087816868

namespace A323506

/-- `A323505(n)/∏{e}[A005940(n+1), #!]` -/
def P47665801087816868.Spec : Prop :=
  ∀ n, P47665801087816868.a n = (A323506 n : ℚ)

end A323506

/-! ## A323506.P2528399807004448464

`A323505(n)/A112624(A005940(n+1))`
-/

namespace A323506.P2528399807004448464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323505 n : ℚ) / (A112624 (A005940 (n + 1)).toNat : ℚ)

end

end A323506.P2528399807004448464

namespace A323506

/-- `A323505(n)/A112624(A005940(n+1))` -/
def P2528399807004448464.Spec : Prop :=
  ∀ n, P2528399807004448464.a n = (A323506 n : ℚ)

end A323506

/-! ## A323506.P14407934755914414999

`A323505(n)/A112624(A332815(n))`
-/

namespace A323506.P14407934755914414999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323505 n : ℚ) / (A112624 (A332815 n).toNat : ℚ)

end

end A323506.P14407934755914414999

namespace A323506

/-- `A323505(n)/A112624(A332815(n))` -/
def P14407934755914414999.Spec : Prop :=
  ∀ n, P14407934755914414999.a n = (A323506 n : ℚ)

end A323506

/-! ## A323506.P2351946261571175278

`A323508(A005940(n+1))/A246660(n)`
-/

namespace A323506.P2351946261571175278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323508 (A005940 (n + 1)).toNat : ℚ) / (A246660 n : ℚ)

end

end A323506.P2351946261571175278

namespace A323506

/-- `A323508(A005940(n+1))/A246660(n)` -/
def P2351946261571175278.Spec : Prop :=
  ∀ n, P2351946261571175278.a n = (A323506 n : ℚ)

end A323506

/-! ## A323506.P17450973247948972623

`A323505(n)/A003963(A278159(n))`
-/

namespace A323506.P17450973247948972623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323505 n : ℚ) / (A003963 (A278159 n).toNat : ℚ)

end

end A323506.P17450973247948972623

namespace A323506

/-- `A323505(n)/A003963(A278159(n))` -/
def P17450973247948972623.Spec : Prop :=
  ∀ n, P17450973247948972623.a n = (A323506 n : ℚ)

end A323506

/-!
# A323507: a(n) = A322827(n) / A322827(floor(n/2)).

The programs for A323507, the canonical program `A323507.P15160612703458864707` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323507 has offset 0).

The definition of A323507 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322827, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323507.P15160612703458864707

`A322827(n)/A322827(floor(n/2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A323507

/-- `A322827(n)/A322827(floor(n/2))` -/
def P15160612703458864707.Spec : Prop :=
  ∀ n, P15160612703458864707.a n = (A323507 n : ℚ)

end A323507

/-! ## A323507.P7291793736301208695

`ceil(A322827(n)/A322827(A123108(n)))`
-/

namespace A323507.P7291793736301208695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322827 n : ℚ) / (A322827 (A123108 n).toNat : ℚ)⌉

end

end A323507.P7291793736301208695

namespace A323507

/-- `ceil(A322827(n)/A322827(A123108(n)))` -/
def P7291793736301208695.Spec : Prop :=
  ∀ n, P7291793736301208695.a n = A323507 n

end A323507

/-! ## A323507.P13590503533880666021

`A054977(n)/A322827(A123108(n))*A322827(n)`
-/

namespace A323507.P13590503533880666021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054977 n : ℚ) / (A322827 (A123108 n).toNat : ℚ) * (A322827 n : ℚ)

end

end A323507.P13590503533880666021

namespace A323507

/-- `A054977(n)/A322827(A123108(n))*A322827(n)` -/
def P13590503533880666021.Spec : Prop :=
  ∀ n, P13590503533880666021.a n = (A323507 n : ℚ)

end A323507

/-! ## A323507.P2048699782944887901

`A322827(n)/A322827(A123108(n))*A014963(4*n+2)`
-/

namespace A323507.P2048699782944887901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322827 n : ℚ) / (A322827 (A123108 n).toNat : ℚ) * (A014963 (4 * n + 2) : ℚ)

end

end A323507.P2048699782944887901

namespace A323507

/-- `A322827(n)/A322827(A123108(n))*A014963(4*n+2)` -/
def P2048699782944887901.Spec : Prop :=
  ∀ n, P2048699782944887901.a n = (A323507 n : ℚ)

end A323507

/-! ## A323507.P2047355422793518032

`(A322827(n)/A322827(A123108(n)))^A089309(n²)`
-/

namespace A323507.P2047355422793518032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A322827 n : ℚ) / (A322827 (A123108 n).toNat : ℚ)) ^ (A089309 (n ^ 2) : ℤ)

end

end A323507.P2047355422793518032

namespace A323507

/-- `(A322827(n)/A322827(A123108(n)))^A089309(n²)` -/
def P2047355422793518032.Spec : Prop :=
  ∀ n, P2047355422793518032.a n = (A323507 n : ℚ)

end A323507

/-!
# A323508: a(n) = A323505(A156552(n)).

The programs for A323508, the canonical program `A323508.P4574373655383351244` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323508 has offset 1).

The definition of A323508 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A323505, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323508.P4574373655383351244

`A323505(A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A323508

/-- `A323505(A156552(n+1))` -/
def P4574373655383351244.Spec : Prop :=
  ∀ n, P4574373655383351244.a n = A323508 (n + 1)

theorem P4574373655383351244.correct : P4574373655383351244.Spec := by
  intro n
  simp only [A323508, Nat.add_sub_cancel]

end A323508

/-! ## A323508.P13542384076861853779

`A323505(A253566(n+1))`
-/

namespace A323508.P13542384076861853779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 (A253566 (n + 1)).toNat

end

end A323508.P13542384076861853779

namespace A323508

/-- `A323505(A253566(n+1))` -/
def P13542384076861853779.Spec : Prop :=
  ∀ n, P13542384076861853779.a n = A323508 (n + 1)

end A323508

/-! ## A323508.P11707999820516540298

`A323505(A005941(n+1)-1)`
-/

namespace A323508.P11707999820516540298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 (A005941 (n + 1) - 1).toNat

end

end A323508.P11707999820516540298

namespace A323508

/-- `A323505(A005941(n+1)-1)` -/
def P11707999820516540298.Spec : Prop :=
  ∀ n, P11707999820516540298.a n = A323508 (n + 1)

end A323508

/-! ## A323508.P6718902177014926325

`A323505(∑{d}[n+1, A297112(#)])`
-/

namespace A323508.P6718902177014926325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 (∑ d ∈ Nat.divisors (f1 n), A297112 d).toNat

end

end A323508.P6718902177014926325

namespace A323508

/-- `A323505(∑{d}[n+1, A297112(#)])` -/
def P6718902177014926325.Spec : Prop :=
  ∀ n, P6718902177014926325.a n = A323508 (n + 1)

end A323508

/-! ## A323508.P11601843874170971983

`A323505((A322993(2*(n+1))-1)/2)`
-/

namespace A323508.P11601843874170971983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 (SequenceMachineLib.roundAway ((A322993 (2 * (n + 1)) - 1 : ℚ) / 2)).toNat

end

end A323508.P11601843874170971983

namespace A323508

/-- `A323505((A322993(2*(n+1))-1)/2)` -/
def P11601843874170971983.Spec : Prop :=
  ∀ n, P11601843874170971983.a n = A323508 (n + 1)

end A323508

/-!
# A323509: a(n) = 1 if n = 2^e1 * 3^e2 * ... * prime(k)^e_k, with k = A061395(n) = A001221(n) and e1 >= e2 >= ... >= e_k, with each e1 .. e_k one less than a prime, otherwise a(n) = 0.

The programs for A323509, the canonical program `A323509.P12181625504260047488` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323509 has offset 1).

The definition of A323509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323509.P12181625504260047488

`char[A037019(n+1)-1]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A323509

/-- `char[A037019(n+1)-1]` -/
def P12181625504260047488.Spec : Prop :=
  ∀ n, (P12181625504260047488.a n : ℤ) = A323509 (n + 1)

theorem P12181625504260047488.correct : P12181625504260047488.Spec := by
  intro n
  simp only [A323509, Nat.add_sub_cancel]

end A323509

/-! ## A323509.P10995697543974350607

`char[A220219(n+1)-1]`
-/

namespace A323509.P10995697543974350607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220219 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323509.P10995697543974350607

namespace A323509

/-- `char[A220219(n+1)-1]` -/
def P10995697543974350607.Spec : Prop :=
  ∀ n, (P10995697543974350607.a n : ℤ) = A323509 (n + 1)

end A323509

/-! ## A323509.P7498513319862777622

`char[Δ[A037019(A152271(n))]]`
-/

namespace A323509.P7498513319862777622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323509.P7498513319862777622

namespace A323509

/-- `char[Δ[A037019(A152271(n))]]` -/
def P7498513319862777622.Spec : Prop :=
  ∀ n, (P7498513319862777622.a n : ℤ) = A323509 (n + 1)

end A323509

/-! ## A323509.P16762433777422276641

`char[A082551(A005100(n+1))+A037019(n+1)]`
-/

namespace A323509.P16762433777422276641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A005100 (n + 1)).toNat + A037019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323509.P16762433777422276641

namespace A323509

/-- `char[A082551(A005100(n+1))+A037019(n+1)]` -/
def P16762433777422276641.Spec : Prop :=
  ∀ n, (P16762433777422276641.a n : ℤ) = A323509 (n + 1)

end A323509

/-! ## A323509.P18137524495921036702

`C(A284440(A284476(n+1)), A284440(n+1))`
-/

namespace A323509.P18137524495921036702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A284440 (A284476 (n + 1)).toNat).toNat (A284440 (n + 1)).toNat

end

end A323509.P18137524495921036702

namespace A323509

/-- `C(A284440(A284476(n+1)), A284440(n+1))` -/
def P18137524495921036702.Spec : Prop :=
  ∀ n, (P18137524495921036702.a n : ℤ) = A323509 (n + 1)

end A323509

/-! ## A323509.P14943822631405688002

`and(A322585(n+1), A378941(n))`
-/

namespace A323509.P14943822631405688002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A322585 (n + 1)) (A378941 n)

end

end A323509.P14943822631405688002

namespace A323509

/-- `and(A322585(n+1), A378941(n))` -/
def P14943822631405688002.Spec : Prop :=
  ∀ n, P14943822631405688002.a n = A323509 (n + 1)

end A323509

/-! ## A323509.P14265720661248683597

`and(A026299(n), A322585(n+1))`
-/

namespace A323509.P14265720661248683597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026299 n) (A322585 (n + 1))

end

end A323509.P14265720661248683597

namespace A323509

/-- `and(A026299(n), A322585(n+1))` -/
def P14265720661248683597.Spec : Prop :=
  ∀ n, P14265720661248683597.a n = A323509 (n + 1)

end A323509

/-! ## A323509.P12174511198717018157

`and(1, (A026667(n)*A322585(n+1))²)`
-/

namespace A323509.P12174511198717018157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A026667 n * A322585 (n + 1)) ^ 2)

end

end A323509.P12174511198717018157

namespace A323509

/-- `and(1, (A026667(n)*A322585(n+1))²)` -/
def P12174511198717018157.Spec : Prop :=
  ∀ n, P12174511198717018157.a n = A323509 (n + 1)

end A323509

/-! ## A323509.P18262733116236776048

`and(A026667(n)², A322585(n+1))`
-/

namespace A323509.P18262733116236776048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026667 n ^ 2) (A322585 (n + 1))

end

end A323509.P18262733116236776048

namespace A323509

/-- `and(A026667(n)², A322585(n+1))` -/
def P18262733116236776048.Spec : Prop :=
  ∀ n, P18262733116236776048.a n = A323509 (n + 1)

end A323509

/-! ## A323509.P10532113474339176907

`and(A055452(n+2), A322585(n+1))`
-/

namespace A323509.P10532113474339176907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055452 (n + 2)) (A322585 (n + 1))

end

end A323509.P10532113474339176907

namespace A323509

/-- `and(A055452(n+2), A322585(n+1))` -/
def P10532113474339176907.Spec : Prop :=
  ∀ n, P10532113474339176907.a n = A323509 (n + 1)

end A323509

/-! ## A323509.P18153362396949302598

`A161645((A284476(n+1)-n)²)%2`
-/

namespace A323509.P18153362396949302598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161645 ((A284476 (n + 1) - (n : ℤ)) ^ 2).toNat) 2

end

end A323509.P18153362396949302598

namespace A323509

/-- `A161645((A284476(n+1)-n)²)%2` -/
def P18153362396949302598.Spec : Prop :=
  ∀ n, P18153362396949302598.a n = A323509 (n + 1)

end A323509

/-!
# A323510: a(n) = 1 if A005179(n) < A037019(n), 0 otherwise; characteristic function of extraordinary numbers, A072066.

The programs for A323510, there is no canonical definition to state claims against.
-/

/-! ## A323510.P5706258717756322775

`char[A072066(n+1)-1]`
-/

namespace A323510.P5706258717756322775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072066 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323510.P5706258717756322775

/-! ## A323510.P7007216295001543831

`A110655(A001222(n+1)-A122375(n+1))`
-/

namespace A323510.P7007216295001543831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A001222 (n + 1) - A122375 (n + 1)).toNat

end

end A323510.P7007216295001543831

/-! ## A323510.P14421496837577028188

`A000166(C(A122375(n+1), A001222(n+1)))`
-/

namespace A323510.P14421496837577028188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (Nat.choose (A122375 (n + 1)).toNat (A001222 (n + 1)).toNat)

end

end A323510.P14421496837577028188

/-! ## A323510.P9471755935368460821

`A033301(C(A122375(n+1), A001222(n+1)))`
-/

namespace A323510.P9471755935368460821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 (Nat.choose (A122375 (n + 1)).toNat (A001222 (n + 1)).toNat)

end

end A323510.P9471755935368460821

/-! ## A323510.P13614618070599130445

`A264036(C(A122375(n+1), A001222(n+1)))`
-/

namespace A323510.P13614618070599130445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264036 (Nat.choose (A122375 (n + 1)).toNat (A001222 (n + 1)).toNat)

end

end A323510.P13614618070599130445

/-! ## A323510.P17997289342655654459

`val(A220345(n+1), A004277(A345052(n+1)))`
-/

namespace A323510.P17997289342655654459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A220345 (n + 1)).toNat (A004277 (A345052 (n + 1)).toNat).toNat

end

end A323510.P17997289342655654459

/-! ## A323510.P12077944625111660386

`A262689(A008574(n))%A000034(A000290(n))`
-/

namespace A323510.P12077944625111660386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262689 (A008574 n).toNat) (A000034 (A000290 n).toNat)

end

end A323510.P12077944625111660386

/-! ## A323510.P4963136771561534107

`A008619((n+2)²)%A049077(A049077(n+1))`
-/

namespace A323510.P4963136771561534107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 ((n + 2) ^ 2)) (A049077 (A049077 (n + 1)).toNat)

end

end A323510.P4963136771561534107

/-! ## A323510.P5614586965217292246

`A295884(A102236(n+1))`
-/

namespace A323510.P5614586965217292246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A102236 (n + 1)).toNat

end

end A323510.P5614586965217292246

/-! ## A323510.P1829485338986397264

`A036988(A195046(n+1))`
-/

namespace A323510.P1829485338986397264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 (A195046 (n + 1)).toNat

end

end A323510.P1829485338986397264

/-!
# A323511: a(n) = 1 if n is squarefree and A079559(A048675(n)) = 1, otherwise a(n) = 0.

The programs for A323511, the canonical program `A323511.P13166536761734004681` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323511 has offset 1).

The definition of A323511 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323511.P13166536761734004681

`A008966(n+1)*A079559(A048675(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A323511

/-- `A008966(n+1)*A079559(A048675(n+1))` -/
def P13166536761734004681.Spec : Prop :=
  ∀ n, P13166536761734004681.a n = A323511 (n + 1)

theorem P13166536761734004681.correct : P13166536761734004681.Spec := by
  intro n
  simp only [A323511, Nat.add_sub_cancel]

end A323511

/-! ## A323511.P13106570686490020049

`char[A283476(n+1)-1]`
-/

namespace A323511.P13106570686490020049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283476 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323511.P13106570686490020049

namespace A323511

/-- `char[A283476(n+1)-1]` -/
def P13106570686490020049.Spec : Prop :=
  ∀ n, (P13106570686490020049.a n : ℤ) = A323511 (n + 1)

end A323511

/-! ## A323511.P10479566701436393143

`A008966(n+1)*A323512(A347120(n+1))`
-/

namespace A323511.P10479566701436393143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A323512 (A347120 (n + 1)).toNat

end

end A323511.P10479566701436393143

namespace A323511

/-- `A008966(n+1)*A323512(A347120(n+1))` -/
def P10479566701436393143.Spec : Prop :=
  ∀ n, P10479566701436393143.a n = A323511 (n + 1)

end A323511

/-! ## A323511.P17928320079500364753

`char[A023443(A283476(n+1))]`
-/

namespace A323511.P17928320079500364753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A283476 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323511.P17928320079500364753

namespace A323511

/-- `char[A023443(A283476(n+1))]` -/
def P17928320079500364753.Spec : Prop :=
  ∀ n, (P17928320079500364753.a n : ℤ) = A323511 (n + 1)

end A323511

/-! ## A323511.P15875928685772069969

`char[Δ[A283476(A152271(n))]]`
-/

namespace A323511.P15875928685772069969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283476 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323511.P15875928685772069969

namespace A323511

/-- `char[Δ[A283476(A152271(n))]]` -/
def P15875928685772069969.Spec : Prop :=
  ∀ n, (P15875928685772069969.a n : ℤ) = A323511 (n + 1)

end A323511

/-!
# A323512: a(n) = A079559(A156552(n)).

The programs for A323512, the canonical program `A323512.P14212674408802958042` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323512 has offset 1).

The definition of A323512 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323512.P14212674408802958042

`A079559(A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A323512

/-- `A079559(A156552(n+1))` -/
def P14212674408802958042.Spec : Prop :=
  ∀ n, P14212674408802958042.a n = A323512 (n + 1)

theorem P14212674408802958042.correct : P14212674408802958042.Spec := by
  intro n
  simp only [A323512, Nat.add_sub_cancel]

end A323512

/-! ## A323512.P6466672383866991388

`A323511(A332462(n+1))`
-/

namespace A323512.P6466672383866991388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323511 (A332462 (n + 1)).toNat

end

end A323512.P6466672383866991388

namespace A323512

/-- `A323511(A332462(n+1))` -/
def P6466672383866991388.Spec : Prop :=
  ∀ n, P6466672383866991388.a n = A323512 (n + 1)

end A323512

/-! ## A323512.P17622582704704160029

`A153006(A005941(n+1))%2`
-/

namespace A323512.P17622582704704160029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153006 (A005941 (n + 1)).toNat) 2

end

end A323512.P17622582704704160029

namespace A323512

/-- `A153006(A005941(n+1))%2` -/
def P17622582704704160029.Spec : Prop :=
  ∀ n, P17622582704704160029.a n = A323512 (n + 1)

end A323512

/-! ## A323512.P15339858935387697416

`A151555(A005941(n+1)-1)%2`
-/

namespace A323512.P15339858935387697416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151555 (A005941 (n + 1) - 1).toNat) 2

end

end A323512.P15339858935387697416

namespace A323512

/-- `A151555(A005941(n+1)-1)%2` -/
def P15339858935387697416.Spec : Prop :=
  ∀ n, P15339858935387697416.a n = A323512 (n + 1)

end A323512

/-! ## A323512.P17951179989906045072

`A112299(A151555(A156552(n+1))²)`
-/

namespace A323512.P17951179989906045072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (A151555 (A156552 (n + 1)).toNat ^ 2).toNat

end

end A323512.P17951179989906045072

namespace A323512

/-- `A112299(A151555(A156552(n+1))²)` -/
def P17951179989906045072.Spec : Prop :=
  ∀ n, P17951179989906045072.a n = A323512 (n + 1)

end A323512

/-! ## A323512.P7759841517598404376

`and(A010052(n²), A153006(A005941(n+1)))`
-/

namespace A323512.P7759841517598404376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010052 (n ^ 2)) (A153006 (A005941 (n + 1)).toNat)

end

end A323512.P7759841517598404376

namespace A323512

/-- `and(A010052(n²), A153006(A005941(n+1)))` -/
def P7759841517598404376.Spec : Prop :=
  ∀ n, P7759841517598404376.a n = A323512 (n + 1)

end A323512

/-! ## A323512.P10447982464067237926

`and(A033999(n)², A153006(A005941(n+1)))`
-/

namespace A323512.P10447982464067237926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n ^ 2) (A153006 (A005941 (n + 1)).toNat)

end

end A323512.P10447982464067237926

namespace A323512

/-- `and(A033999(n)², A153006(A005941(n+1)))` -/
def P10447982464067237926.Spec : Prop :=
  ∀ n, P10447982464067237926.a n = A323512 (n + 1)

end A323512

/-! ## A323512.P427066664471134953

`and(A000051(n+1), A153006(A005941(n+1)))`
-/

namespace A323512.P427066664471134953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 (n + 1)) (A153006 (A005941 (n + 1)).toNat)

end

end A323512.P427066664471134953

namespace A323512

/-- `and(A000051(n+1), A153006(A005941(n+1)))` -/
def P427066664471134953.Spec : Prop :=
  ∀ n, P427066664471134953.a n = A323512 (n + 1)

end A323512

/-!
# A323513: a(n) = 1 if n and phi(n) share the same prime signature, 0 otherwise.

The programs for A323513, the canonical program `A323513.P12048018068045558104` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323513 has offset 1).

The definition of A323513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323513.P12048018068045558104

`char[A300216(n+1)-1]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A323513

/-- `char[A300216(n+1)-1]` -/
def P12048018068045558104.Spec : Prop :=
  ∀ n, (P12048018068045558104.a n : ℤ) = A323513 (n + 1)

theorem P12048018068045558104.correct : P12048018068045558104.Spec := by
  intro n
  simp only [A323513, Nat.add_sub_cancel]

end A323513

/-! ## A323513.P1111134290164375829

`char[eq[A046523(n+1), A277906(n+1)]]`
-/

namespace A323513.P1111134290164375829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A323513.P1111134290164375829

namespace A323513

/-- `char[eq[A046523(n+1), A277906(n+1)]]` -/
def P1111134290164375829.Spec : Prop :=
  ∀ n, (P1111134290164375829.a n : ℤ) = A323513 (n + 1)

end A323513

/-! ## A323513.P888286981016951712

`A000007(xor(A046523(n+1), A277906(n+1)))`
-/

namespace A323513.P888286981016951712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A046523 (n + 1)) (A277906 (n + 1))).toNat

end

end A323513.P888286981016951712

namespace A323513

/-- `A000007(xor(A046523(n+1), A277906(n+1)))` -/
def P888286981016951712.Spec : Prop :=
  ∀ n, P888286981016951712.a n = A323513 (n + 1)

end A323513

/-! ## A323513.P14120466399822223266

`A130706(xor(A046523(n+1), A277906(n+1)))`
-/

namespace A323513.P14120466399822223266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (Int.xor (A046523 (n + 1)) (A277906 (n + 1))).toNat

end

end A323513.P14120466399822223266

namespace A323513

/-- `A130706(xor(A046523(n+1), A277906(n+1)))` -/
def P14120466399822223266.Spec : Prop :=
  ∀ n, P14120466399822223266.a n = A323513 (n + 1)

end A323513

/-! ## A323513.P13815568129763219402

`val(A248410(n+1), A248410(A000010(n+1)))`
-/

namespace A323513.P13815568129763219402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A248410 (n + 1)).toNat (A248410 (A000010 (n + 1)).toNat).toNat

end

end A323513.P13815568129763219402

namespace A323513

/-- `val(A248410(n+1), A248410(A000010(n+1)))` -/
def P13815568129763219402.Spec : Prop :=
  ∀ n, (P13815568129763219402.a n : ℤ) = A323513 (n + 1)

end A323513

/-! ## A323513.P2295338396176204211

`A000007((A046523(n+1)-A277906(n+1))²)`
-/

namespace A323513.P2295338396176204211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((A046523 (n + 1) - A277906 (n + 1)) ^ 2).toNat

end

end A323513.P2295338396176204211

namespace A323513

/-- `A000007((A046523(n+1)-A277906(n+1))²)` -/
def P2295338396176204211.Spec : Prop :=
  ∀ n, P2295338396176204211.a n = A323513 (n + 1)

end A323513

/-!
# A323514: a(n) = 1 if the greatest common divisor of the set of solutions to phi(x) = n is larger than one, otherwise 0.

The programs for A323514, there is no canonical definition to state claims against.
-/

/-! ## A323514.P12674779513268965313

`floor(atan(A323169(n+1)))`
-/

namespace A323514.P12674779513268965313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A323169 (n + 1) : ℝ)⌋

end

end A323514.P12674779513268965313

/-! ## A323514.P2860594361262819971

`char[A303745(n+1)-1]`
-/

namespace A323514.P2860594361262819971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303745 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323514.P2860594361262819971

/-! ## A323514.P15829563020684247619

`A323128(C(3, A323169(n+1)))`
-/

namespace A323514.P15829563020684247619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323128 (Nat.choose 3 (A323169 (n + 1)).toNat)

end

end A323514.P15829563020684247619

/-! ## A323514.P18352604947576329768

`A333755(C(3, A323169(n+1)))`
-/

namespace A323514.P18352604947576329768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (Nat.choose 3 (A323169 (n + 1)).toNat)

end

end A323514.P18352604947576329768

/-! ## A323514.P1230163899580954752

`A323170(xor(5, A323169(n+1)))`
-/

namespace A323514.P1230163899580954752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323170 (Int.xor 5 (A323169 (n + 1))).toNat

end

end A323514.P1230163899580954752

/-! ## A323514.P12037639999564040681

`C(2, A070561(C(2, A323169(n+1))))`
-/

namespace A323514.P12037639999564040681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A070561 (Nat.choose 2 (A323169 (n + 1)).toNat)).toNat

end

end A323514.P12037639999564040681

/-! ## A323514.P13529923661557359487

`C(2, A138148(C(2, A323169(n+1))))`
-/

namespace A323514.P13529923661557359487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A138148 (Nat.choose 2 (A323169 (n + 1)).toNat)).toNat

end

end A323514.P13529923661557359487

/-! ## A323514.P7981969326535449448

`A323169(A000010(A014197(A000010(A323169(n+1)+1)+1)+1)+1)`
-/

namespace A323514.P7981969326535449448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A000010 (A014197 (A000010 (A323169 (n + 1) + 1).toNat + 1).toNat + 1).toNat + 1).toNat

end

end A323514.P7981969326535449448

/-! ## A323514.P13913372956519320825

`char[A014681(A303745(n+1))]`
-/

namespace A323514.P13913372956519320825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A303745 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323514.P13913372956519320825

/-! ## A323514.P16231696979938799203

`A323162((A323169(n+1)+1)²)`
-/

namespace A323514.P16231696979938799203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 ((A323169 (n + 1) + 1) ^ 2).toNat

end

end A323514.P16231696979938799203

/-! ## A323514.P16903628494757189869

`A323170(A323169(n+1)²+1)`
-/

namespace A323514.P16903628494757189869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323170 (A323169 (n + 1) ^ 2 + 1).toNat

end

end A323514.P16903628494757189869

/-! ## A323514.P18014858097149605565

`1-A010054(A323169(n+1)²)`
-/

namespace A323514.P18014858097149605565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010054 (A323169 (n + 1) ^ 2).toNat

end

end A323514.P18014858097149605565

/-!
# A323515: Number of minimum total dominating sets in the hypercube graph Q_n.

The programs for A323515, there is no canonical definition to state claims against.
-/

/-! ## A323515.P17265506282839165767

`A353571((n+1)^n)²`
-/

namespace A323515.P17265506282839165767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353571 ((n + 1) ^ n) ^ 2

end

end A323515.P17265506282839165767

/-! ## A323515.P5082590116735906060

`A097448(A057711(n))²`
-/

namespace A323515.P5082590116735906060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A057711 n).toNat ^ 2

end

end A323515.P5082590116735906060

/-!
# A323519: a(n) is the number of ways to fill a square matrix with the multiset of prime factors of n, if the number of prime factors (counted with multiplicity) is a perfect square, and a(n) = 0 otherwise.

The programs for A323519, the canonical program `A323519.P5612337136972433233` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323519 has offset 1).

The definition of A323519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323519.P5612337136972433233

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*A010052(∑{e}[n+1, #])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A323519

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*A010052(∑{e}[n+1, #])` -/
def P5612337136972433233.Spec : Prop :=
  ∀ n, P5612337136972433233.a n = (A323519 (n + 1) : ℚ)

end A323519

/-! ## A323519.P10893507613921414837

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*A302052(∑{e}[n+1, #])`
-/

namespace A323519.P10893507613921414837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A302052 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) : ℚ)

end

end A323519.P10893507613921414837

namespace A323519

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*A302052(∑{e}[n+1, #])` -/
def P10893507613921414837.Spec : Prop :=
  ∀ n, P10893507613921414837.a n = (A323519 (n + 1) : ℚ)

end A323519

/-! ## A323519.P12106899019241062920

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*A316480(∑{e}[n+1, #]+1)`
-/

namespace A323519.P12106899019241062920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A316480 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1) : ℚ)

end

end A323519.P12106899019241062920

namespace A323519

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*A316480(∑{e}[n+1, #]+1)` -/
def P12106899019241062920.Spec : Prop :=
  ∀ n, P12106899019241062920.a n = (A323519 (n + 1) : ℚ)

end A323519

/-! ## A323519.P10270254328645558625

`A323305(n+1)%2*A008480(n+1)`
-/

namespace A323519.P10270254328645558625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323305 (n + 1)) 2 * A008480 (n + 1)

end

end A323519.P10270254328645558625

namespace A323519

/-- `A323305(n+1)%2*A008480(n+1)` -/
def P10270254328645558625.Spec : Prop :=
  ∀ n, P10270254328645558625.a n = A323519 (n + 1)

end A323519

/-! ## A323519.P17304044286611657259

`A323525(A181819(n+1))`
-/

namespace A323519.P17304044286611657259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (A181819 (n + 1)).toNat

end

end A323519.P17304044286611657259

namespace A323519

/-- `A323525(A181819(n+1))` -/
def P17304044286611657259.Spec : Prop :=
  ∀ n, P17304044286611657259.a n = A323519 (n + 1)

end A323519

/-! ## A323519.P15065814473125036208

`A323525(∏{e}[n+1, A000040(#)])`
-/

namespace A323519.P15065814473125036208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A323519.P15065814473125036208

namespace A323519

/-- `A323525(∏{e}[n+1, A000040(#)])` -/
def P15065814473125036208.Spec : Prop :=
  ∀ n, P15065814473125036208.a n = A323519 (n + 1)

end A323519

/-! ## A323519.P4923103837870348046

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*A287703(2^∑{e}[n+1, #])`
-/

namespace A323519.P4923103837870348046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A287703 (2 ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)) : ℚ)

end

end A323519.P4923103837870348046

namespace A323519

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*A287703(2^∑{e}[n+1, #])` -/
def P4923103837870348046.Spec : Prop :=
  ∀ n, P4923103837870348046.a n = (A323519 (n + 1) : ℚ)

end A323519

/-! ## A323519.P9241447295263519709

`and(2-A322794(n+1), A008480(n+1))`
-/

namespace A323519.P9241447295263519709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A322794 (n + 1)) (A008480 (n + 1))

end

end A323519.P9241447295263519709

namespace A323519

/-- `and(2-A322794(n+1), A008480(n+1))` -/
def P9241447295263519709.Spec : Prop :=
  ∀ n, P9241447295263519709.a n = A323519 (n + 1)

end A323519

/-!
# A323520: Numbers of the form p^(k^2) where p is prime and k >= 0.

The programs for A323520, there is no canonical definition to state claims against.
-/

/-! ## A323520.P9053398303116023912

`eq[1, A323519(n+1)]+1`
-/

namespace A323520.P9053398303116023912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323520.P9053398303116023912

/-! ## A323520.P13125035523072413569

`lt[A074848(n+1), 3]+1`
-/

namespace A323520.P13125035523072413569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074848 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A323520.P13125035523072413569

/-! ## A323520.P7594618125922330038

`∪[A008578(n+1), comp[n²]²²]`
-/

namespace A323520.P7594618125922330038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A323520.P7594618125922330038

/-! ## A323520.P18083940215378685274

`∪[A000040(n+1), comp[4*n]²²]`
-/

namespace A323520.P18083940215378685274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A323520.P18083940215378685274

/-! ## A323520.P15657185625774752276

`eq[0, 6%(A000005(n+1)+1)]+1`
-/

namespace A323520.P15657185625774752276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 6 (A000005 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323520.P15657185625774752276

/-! ## A323520.P8385133585703868828

`eq[0, 5%round(sqrt(A353304(n+1)²+1))]+1`
-/

namespace A323520.P8385133585703868828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (SequenceMachineLib.roundAway (Real.sqrt (A353304 (n + 1) ^ 2 + 1 : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323520.P8385133585703868828

/-! ## A323520.P5531556834346358496

`eq[1, A145173(A145154(n))]`
-/

namespace A323520.P5531556834346358496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145173 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323520.P5531556834346358496

/-! ## A323520.P8466142501886936645

`eq[4, A328628(A211437(n))]`
-/

namespace A323520.P8466142501886936645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328628 (A211437 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323520.P8466142501886936645

/-! ## A323520.P12327043735356508307

`filter[A085924(n), A353787(#)]`
-/

namespace A323520.P12327043735356508307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A323520.P12327043735356508307

/-! ## A323520.P16370315302407466983

`record[A130065(A084111(n+1))]`
-/

namespace A323520.P16370315302407466983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130065 (A084111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323520.P16370315302407466983

/-!
# A323521: Numbers whose number of prime factors counted with multiplicity (A001222) is not a perfect square.

The programs for A323521, there is no canonical definition to state claims against.
-/

/-! ## A323521.P1883505021203958693

`lt[tan(∑{e}[n, #]), 0]`
-/

namespace A323521.P1883505021203958693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A323521.P1883505021203958693

/-! ## A323521.P4904482377433617772

`eq[2, A169695(∑{e}[n, #])]`
-/

namespace A323521.P4904482377433617772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323521.P4904482377433617772

/-! ## A323521.P878776394430678833

`eq[0, A323519(n+1)]+1`
-/

namespace A323521.P878776394430678833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323521.P878776394430678833

/-! ## A323521.P7480965215774581680

`comp[A026478(n+1)-1]+1`
-/

namespace A323521.P7480965215774581680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026478 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A323521.P7480965215774581680

/-! ## A323521.P10773425379559699897

`lt[tan(A001222(n+1)), 0]+1`
-/

namespace A323521.P10773425379559699897
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A001222 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A323521.P10773425379559699897

/-! ## A323521.P5690077211873446511

`lt[n/a(A001222(n))², n]` with `a(0)=1`
-/

namespace A323521.P5690077211873446511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A323521.P5690077211873446511

/-! ## A323521.P3747154032910551444

`lt[1, dr(A001222(n+2)^3)]+2`
-/

namespace A323521.P3747154032910551444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001222 (n + 2) ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A323521.P3747154032910551444

/-! ## A323521.P5132193267219640659

`lt[A001222(round(acot(n)+n)²)%3, 2]`
-/

namespace A323521.P5132193267219640659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) ^ 2).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A323521.P5132193267219640659

/-! ## A323521.P15340378385004664591

`lt[0, (A001222(abs(1-n)+1)-1)%3]`
-/

namespace A323521.P15340378385004664591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (|1 - (n : ℤ)| + 1).toNat - 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A323521.P15340378385004664591

/-! ## A323521.P362090368820377833

`comp[eq[1, (A001222((n+1)²)+2)%3]-2]+3`
-/

namespace A323521.P362090368820377833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 ((n + 1) ^ 2) + 2) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A323521.P362090368820377833

/-!
# A323522: Number of ways to fill a square matrix with the parts of a strict integer partition of n.

The programs for A323522, there is no canonical definition to state claims against.
-/

/-! ## A323522.P17310670743381587904

`A339060(A019442(n+1))+1`
-/

namespace A323522.P17310670743381587904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339060 (A019442 (n + 1)).toNat + 1

end

end A323522.P17310670743381587904

/-! ## A323522.P4951216988598599634

`A017533(A309834(n))%A007921(A000032(n))`
-/

namespace A323522.P4951216988598599634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017533 (A309834 n).toNat) (A007921 (A000032 n).toNat)

end

end A323522.P4951216988598599634

/-! ## A323522.P9946413298314068514

`A323301(n)%A233583(A032020(n))`
-/

namespace A323522.P9946413298314068514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323301 n) (A233583 (A032020 n).toNat)

end

end A323522.P9946413298314068514

/-! ## A323522.P15124722567680235071

`∑[A376346(Δ[A250000(n+1)])]`
-/

namespace A323522.P15124722567680235071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250000 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376346 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323522.P15124722567680235071

/-!
# A323523: Number of positive integer square matrices with entries summing to n and equal row and column sums.

The programs for A323523, there is no canonical definition to state claims against.
-/

/-! ## A323523.P18080778941975620535

`∏{e}[A302032(A290527(n)), #]`
-/

namespace A323523.P18080778941975620535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A290527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A323523.P18080778941975620535

/-! ## A323523.P6135823605544267058

`∏{d}[A293234(A000079(n)+n%2), A020639(#)]`
-/

namespace A323523.P6135823605544267058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A000079 n + ((n % 2 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A323523.P6135823605544267058

/-! ## A323523.P4213855740060714611

`A078898(A000108(A181499(n))*A233583(n+1))`
-/

namespace A323523.P4213855740060714611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A000108 (A181499 n).toNat * A233583 (n + 1)).toNat

end

end A323523.P4213855740060714611

/-! ## A323523.P8012282715559321671

`A331979(n)+A057979(A187829(n+1)+A088194(n+1))`
-/

namespace A323523.P8012282715559321671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331979 n + A057979 (A187829 (n + 1) + A088194 (n + 1)).toNat

end

end A323523.P8012282715559321671

/-! ## A323523.P8667689110755141599

`A053735(A369924(n))`
-/

namespace A323523.P8667689110755141599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A369924 n).toNat

end

end A323523.P8667689110755141599

/-!
# A323524: Number of integer partitions of n whose parts can be arranged into a square matrix with equal row and column sums.

The programs for A323524, there is no canonical definition to state claims against.
-/

/-! ## A323524.P4470981644522461777

`A110592(A327766(n))`
-/

namespace A323524.P4470981644522461777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A327766 n).toNat

end

end A323524.P4470981644522461777

/-! ## A323524.P5158339212370140502

`A276134(A327766(n)+4)`
-/

namespace A323524.P5158339212370140502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 (A327766 n + 4).toNat

end

end A323524.P5158339212370140502

/-! ## A323524.P5527359355186012789

`A276134(xor(11, A327766(n)))`
-/

namespace A323524.P5527359355186012789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 (Int.xor 11 (A327766 n)).toNat

end

end A323524.P5527359355186012789

/-! ## A323524.P13928035636073251901

`A048766(3*A003056(A284839(n)))`
-/

namespace A323524.P13928035636073251901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (3 * A003056 (A284839 n).toNat).toNat

end

end A323524.P13928035636073251901

/-! ## A323524.P601448041732781262

`A216325(A216230(n)+A007650(n))`
-/

namespace A323524.P601448041732781262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216325 (A216230 n + A007650 n).toNat

end

end A323524.P601448041732781262

/-!
# A323525: Number of ways to arrange the parts of a multiset whose multiplicities are the prime indices of n into a square matrix.

The programs for A323525, there is no canonical definition to state claims against.
-/

/-! ## A323525.P9898771937408130602

`A010052(A056239(n+1))*A318762(n+1)`
-/

namespace A323525.P9898771937408130602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A056239 (n + 1)).toNat * A318762 (n + 1)

end

end A323525.P9898771937408130602

/-! ## A323525.P3644441843303050104

`A010052(log2(A248692(n+1)))*A318808(2*(n+1))`
-/

namespace A323525.P3644441843303050104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (SequenceMachineLib.roundAway (Real.logb 2 (A248692 (n + 1) : ℝ))).toNat * A318808 (2 * (n + 1))

end

end A323525.P3644441843303050104

/-! ## A323525.P16375965223018411225

`A010052(∑{d}[n+1, A297109(#)])*A318808(2*(n+1))`
-/

namespace A323525.P16375965223018411225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (∑ d ∈ Nat.divisors (f1 n), A297109 d).toNat * A318808 (2 * (n + 1))

end

end A323525.P16375965223018411225

/-! ## A323525.P10418803003752956570

`A010052(A316436(2*(n+1))-1)*A318808(2*(n+1))`
-/

namespace A323525.P10418803003752956570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A316436 (2 * (n + 1)) - 1).toNat * A318808 (2 * (n + 1))

end

end A323525.P10418803003752956570

/-! ## A323525.P15319414755632518917

`A010052(A325135(n+1)+A252464(n+1))*A318808(2*(n+1))`
-/

namespace A323525.P15319414755632518917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A325135 (n + 1) + A252464 (n + 1)).toNat * A318808 (2 * (n + 1))

end

end A323525.P15319414755632518917

/-! ## A323525.P6627549612711457795

`A010052(A325166(n+1)+A297113(n+1))*A318808(2*(n+1))`
-/

namespace A323525.P6627549612711457795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A325166 (n + 1) + A297113 (n + 1)).toNat * A318808 (2 * (n + 1))

end

end A323525.P6627549612711457795

/-! ## A323525.P3885672366108933649

`A010052(A329622(n+1)+A324888(n+1))*A318808(2*(n+1))`
-/

namespace A323525.P3885672366108933649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A329622 (n + 1) + A324888 (n + 1)).toNat * A318808 (2 * (n + 1))

end

end A323525.P3885672366108933649

/-! ## A323525.P17750060030696711359

`A010052(A339896(n+1)+A339894(n+1))*A318808(2*(n+1))`
-/

namespace A323525.P17750060030696711359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A339896 (n + 1) + A339894 (n + 1)).toNat * A318808 (2 * (n + 1))

end

end A323525.P17750060030696711359

/-! ## A323525.P13259710640757581141

`A010052(A000005(n+1)-A325794(n+1))*A318808(2*(n+1))`
-/

namespace A323525.P13259710640757581141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000005 (n + 1) - A325794 (n + 1)).toNat * A318808 (2 * (n + 1))

end

end A323525.P13259710640757581141

/-!
# A323526: One and prime numbers whose prime index is a perfect square.

The programs for A323526, there is no canonical definition to state claims against.
-/

/-! ## A323526.P15087944000344459831

`∪[A011757(n+1), A051470(n+1)]`
-/

namespace A323526.P15087944000344459831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323526.P15087944000344459831

/-! ## A323526.P17590062832247342774

`A296857(A008578(n+1))`
-/

namespace A323526.P17590062832247342774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A008578 (n + 1)).toNat

end

end A323526.P17590062832247342774

/-! ## A323526.P3344244171436412308

`A296857(A158611(n+2))`
-/

namespace A323526.P3344244171436412308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A158611 (n + 2)).toNat

end

end A323526.P3344244171436412308

/-! ## A323526.P6861635881067018120

`A296857(record[A006530(n+1)])`
-/

namespace A323526.P6861635881067018120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323526.P6861635881067018120

/-! ## A323526.P16833608618660182496

`A296857(record[A014963(n+1)])`
-/

namespace A323526.P16833608618660182496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323526.P16833608618660182496

/-! ## A323526.P13671797391041813768

`A296857(record[A020639(n+1)])`
-/

namespace A323526.P13671797391041813768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323526.P13671797391041813768

/-! ## A323526.P15415679231345153510

`∩[A015919(n+1), A064517(n+1)]`
-/

namespace A323526.P15415679231345153510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323526.P15415679231345153510

/-! ## A323526.P11522737506179883766

`A028815(n²)-1`
-/

namespace A323526.P11522737506179883766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n ^ 2) - 1

end

end A323526.P11522737506179883766

/-! ## A323526.P17592816684409024357

`A000040(A028310(n²))-A000007(n)`
-/

namespace A323526.P17592816684409024357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028310 (n ^ 2)).toNat - A000007 n

end

end A323526.P17592816684409024357

/-! ## A323526.P3445867765539961912

`A000040(A253909(n))-A129308(A000040(n+1))`
-/

namespace A323526.P3445867765539961912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A253909 n).toNat - A129308 (A000040 (n + 1)).toNat

end

end A323526.P3445867765539961912

/-! ## A323526.P18040616189930954958

`A008578(n²+1)`
-/

namespace A323526.P18040616189930954958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n ^ 2 + 1)

end

end A323526.P18040616189930954958

/-! ## A323526.P1140080394348294470

`A158611(n²+2)`
-/

namespace A323526.P1140080394348294470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n ^ 2 + 2)

end

end A323526.P1140080394348294470

/-! ## A323526.P13195456945864544288

`A335402(n²+2)`
-/

namespace A323526.P13195456945864544288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n ^ 2 + 2)

end

end A323526.P13195456945864544288

/-! ## A323526.P10816840359560979197

`sqrt(A280076(n²+1))`
-/

namespace A323526.P10816840359560979197
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n ^ 2 + 1) : ℝ)

end

end A323526.P10816840359560979197

/-! ## A323526.P6188896933870676553

`A280560(n)+A082455(n²)`
-/

namespace A323526.P6188896933870676553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n + A082455 (n ^ 2)

end

end A323526.P6188896933870676553

/-! ## A323526.P8153462116776527895

`∩[A008578(n+1), A064517(n+1)]`
-/

namespace A323526.P8153462116776527895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323526.P8153462116776527895

/-! ## A323526.P5252946452246659372

`∩[A046022(n+1), A064517(n+1)]`
-/

namespace A323526.P5252946452246659372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323526.P5252946452246659372

/-! ## A323526.P9153245636991775312

`∩[A062972(n+1), A064517(n+1)]`
-/

namespace A323526.P9153245636991775312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323526.P9153245636991775312

/-! ## A323526.P11980512086891407093

`∩[A064517(n+1), A097605(n+1)]`
-/

namespace A323526.P11980512086891407093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323526.P11980512086891407093

/-! ## A323526.P4496792545134466641

`∩[A064517(n+1), A158611(n+1)]`
-/

namespace A323526.P4496792545134466641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323526.P4496792545134466641

/-!
# A323527: Numbers whose sum of prime indices is not a perfect square.

The programs for A323527, the canonical program `A323527.P4494527412593892083` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323527 has offset 1).

The definition of A323527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323527.P4494527412593892083

`comp[A323528(n+1)-1]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A323527

/-- `comp[A323528(n+1)-1]+1` -/
def P4494527412593892083.Spec : Prop :=
  ∀ n, (P4494527412593892083.a n : ℤ) = A323527 (n + 1)

theorem P4494527412593892083.correct : P4494527412593892083.Spec := by
  intro n
  simp only [A323527, Nat.add_sub_cancel]

end A323527

/-! ## A323527.P13379737672641388469

`eq[0, A323525(n+1)]+1`
-/

namespace A323527.P13379737672641388469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323527.P13379737672641388469

namespace A323527

/-- `eq[0, A323525(n+1)]+1` -/
def P13379737672641388469.Spec : Prop :=
  ∀ n, (P13379737672641388469.a n : ℤ) = A323527 (n + 1)

end A323527

/-! ## A323527.P5681985932587097979

`lt[A323525(round(acot(n)+n)), 1]`
-/

namespace A323527.P5681985932587097979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A323527.P5681985932587097979

namespace A323527

/-- `lt[A323525(round(acot(n)+n)), 1]` -/
def P5681985932587097979.Spec : Prop :=
  ∀ n, (P5681985932587097979.a n : ℤ) = A323527 (n + 1)

end A323527

/-! ## A323527.P12261315020067972666

`record[n+3-A323525(n+3)]`
-/

namespace A323527.P12261315020067972666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A323525 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323527.P12261315020067972666

namespace A323527

/-- `record[n+3-A323525(n+3)]` -/
def P12261315020067972666.Spec : Prop :=
  ∀ n, P12261315020067972666.a n = A323527 (n + 1)

end A323527

/-! ## A323527.P15119304651286672561

`lt[A323525(round(sqrt(n²+1))), 1]`
-/

namespace A323527.P15119304651286672561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A323527.P15119304651286672561

namespace A323527

/-- `lt[A323525(round(sqrt(n²+1))), 1]` -/
def P15119304651286672561.Spec : Prop :=
  ∀ n, (P15119304651286672561.a n : ℤ) = A323527 (n + 1)

end A323527

/-! ## A323527.P3157691520919049034

`eq[0, A323525(A028310(n))]`
-/

namespace A323527.P3157691520919049034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323527.P3157691520919049034

namespace A323527

/-- `eq[0, A323525(A028310(n))]` -/
def P3157691520919049034.Spec : Prop :=
  ∀ n, (P3157691520919049034.a n : ℤ) = A323527 (n + 1)

end A323527

/-! ## A323527.P4466634254977685490

`lt[A323525(n+1), 1]+A007318(C(2, n))`
-/

namespace A323527.P4466634254977685490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) + A007318 (Nat.choose 2 n)

end

end A323527.P4466634254977685490

namespace A323527

/-- `lt[A323525(n+1), 1]+A007318(C(2, n))` -/
def P4466634254977685490.Spec : Prop :=
  ∀ n, P4466634254977685490.a n = A323527 (n + 1)

end A323527

/-! ## A323527.P11635053477038554971

`lt[A323525(n+1), 1]+A014963(6*(n+1))`
-/

namespace A323527.P11635053477038554971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) + A014963 (6 * (n + 1))

end

end A323527.P11635053477038554971

namespace A323527

/-- `lt[A323525(n+1), 1]+A014963(6*(n+1))` -/
def P11635053477038554971.Spec : Prop :=
  ∀ n, P11635053477038554971.a n = A323527 (n + 1)

end A323527

/-! ## A323527.P14193671455377516489

`lt[A323525(n+1), 1]+A000041(C(2, n+2))`
-/

namespace A323527.P14193671455377516489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) + A000041 (Nat.choose 2 (n + 2))

end

end A323527.P14193671455377516489

namespace A323527

/-- `lt[A323525(n+1), 1]+A000041(C(2, n+2))` -/
def P14193671455377516489.Spec : Prop :=
  ∀ n, P14193671455377516489.a n = A323527 (n + 1)

end A323527

/-! ## A323527.P12167295363630273858

`lt[A323525(n+1), 1]+log2(A020639(2*(n+1)))`
-/

namespace A323527.P12167295363630273858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℝ) + Real.logb 2 (A020639 (2 * (n + 1)) : ℝ)

end

end A323527.P12167295363630273858

namespace A323527

/-- `lt[A323525(n+1), 1]+log2(A020639(2*(n+1)))` -/
def P12167295363630273858.Spec : Prop :=
  ∀ n, P12167295363630273858.a n = (A323527 (n + 1) : ℝ)

end A323527

/-!
# A323528: Numbers whose sum of prime indices is a perfect square.

The programs for A323528, the canonical program `A323528.P7448635072449163044` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323528 has offset 1).

The definition of A323528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 742 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323528.P7448635072449163044

`eq[1, A010052(A056239(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A323528

/-- `eq[1, A010052(A056239(n+1))]+1` -/
def P7448635072449163044.Spec : Prop :=
  ∀ n, (P7448635072449163044.a n : ℤ) = A323528 (n + 1)

theorem P7448635072449163044.correct : P7448635072449163044.Spec := by
  intro n
  simp only [A323528, Nat.add_sub_cancel]

end A323528

/-! ## A323528.P6327612202529386497

`record[A000027(n+1)*A010052(A056239(n+1))]`
-/

namespace A323528.P6327612202529386497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A010052 (A056239 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323528.P6327612202529386497

namespace A323528

/-- `record[A000027(n+1)*A010052(A056239(n+1))]` -/
def P6327612202529386497.Spec : Prop :=
  ∀ n, P6327612202529386497.a n = A323528 (n + 1)

end A323528

/-! ## A323528.P17987526274693199705

`record[A008619(2*n)*A010052(A056239(n+1))]`
-/

namespace A323528.P17987526274693199705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A010052 (A056239 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323528.P17987526274693199705

namespace A323528

/-- `record[A008619(2*n)*A010052(A056239(n+1))]` -/
def P17987526274693199705.Spec : Prop :=
  ∀ n, P17987526274693199705.a n = A323528 (n + 1)

end A323528

/-! ## A323528.P5934136966056036900

`record[A010052(A056239(n+1))*A028242(2*n)]`
-/

namespace A323528.P5934136966056036900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A056239 (n + 1)).toNat * A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323528.P5934136966056036900

namespace A323528

/-- `record[A010052(A056239(n+1))*A028242(2*n)]` -/
def P5934136966056036900.Spec : Prop :=
  ∀ n, P5934136966056036900.a n = A323528 (n + 1)

end A323528

/-! ## A323528.P1221274684594390615

`record[A010052(A056239(n+1))*A029579(2*n)]`
-/

namespace A323528.P1221274684594390615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A056239 (n + 1)).toNat * A029579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323528.P1221274684594390615

namespace A323528

/-- `record[A010052(A056239(n+1))*A029579(2*n)]` -/
def P1221274684594390615.Spec : Prop :=
  ∀ n, P1221274684594390615.a n = A323528 (n + 1)

end A323528

/-!
# A323529: Number of strict square plane partitions of n.

The programs for A323529, there is no canonical definition to state claims against.
-/

/-! ## A323529.P7253306154128494239

`A081753(A323522(n))`
-/

namespace A323529.P7253306154128494239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A323522 n).toNat

end

end A323529.P7253306154128494239

/-! ## A323529.P2668996704392603707

`A008620(ceil(A323522(n)/4))`
-/

namespace A323529.P2668996704392603707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ⌈(A323522 n : ℚ) / 4⌉.toNat

end

end A323529.P2668996704392603707

/-! ## A323529.P14922189683828676539

`A091136(A309834(n))`
-/

namespace A323529.P14922189683828676539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091136 (A309834 n).toNat

end

end A323529.P14922189683828676539

/-! ## A323529.P12017593334670989726

`A130479(A309834(n)+1)`
-/

namespace A323529.P12017593334670989726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130479 (A309834 n + 1).toNat

end

end A323529.P12017593334670989726

/-! ## A323529.P6663593284468928526

`A130479(or(1, A309834(n)))`
-/

namespace A323529.P6663593284468928526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130479 (Int.lor 1 (A309834 n)).toNat

end

end A323529.P6663593284468928526

/-!
# A323530: Number of square plane partitions of n with strictly decreasing rows and columns.

The programs for A323530, there is no canonical definition to state claims against.
-/

/-! ## A323530.P7621040784897139532

`A319684(A217065(3*n+4))+A027636(2*n+3)`
-/

namespace A323530.P7621040784897139532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (A217065 (3 * n + 4)).toNat + A027636 (2 * n + 3)

end

end A323530.P7621040784897139532

/-! ## A323530.P15789435723227728376

`A027636(2*n+3)+A316864(n²*A000926(n+1))!`
-/

namespace A323530.P15789435723227728376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027636 (2 * n + 3) + (Nat.factorial (A316864 ((n ^ 2 : ℤ) * A000926 (n + 1)).toNat).toNat : ℤ)

end

end A323530.P15789435723227728376

/-! ## A323530.P3563921747671768017

`A027636(2*n+3)+A001221(A137365(3*n+4))`
-/

namespace A323530.P3563921747671768017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027636 (2 * n + 3) + A001221 (A137365 (3 * n + 4)).toNat

end

end A323530.P3563921747671768017

/-!
# A323531: Number of square multiset partitions of integer partitions of n.

The programs for A323531, there is no canonical definition to state claims against.
-/

/-! ## A323531.P4218860756288405797

`A105224(A167936(n+1))`
-/

namespace A323531.P4218860756288405797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A167936 (n + 1)).toNat

end

end A323531.P4218860756288405797

/-! ## A323531.P17995457086122394806

`A320278(A167936(n+1)+2)`
-/

namespace A323531.P17995457086122394806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A167936 (n + 1) + 2).toNat

end

end A323531.P17995457086122394806

/-! ## A323531.P85237047370307559

`A020658(A089299(n)%A050341(3*n+5))`
-/

namespace A323531.P85237047370307559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (Int.tmod (A089299 n) (A050341 (3 * n + 5))).toNat

end

end A323531.P85237047370307559

/-!
# A323539: Number of distinct sets of lengths of squares that are prefixes of a length-n binary word.

The programs for A323539, there is no canonical definition to state claims against.
-/

/-! ## A323539.P10073778959606509360

`A356944(A277133(n+1))`
-/

namespace A323539.P10073778959606509360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A277133 (n + 1)).toNat

end

end A323539.P10073778959606509360

/-! ## A323539.P16075339198807067407

`A073472(A110654(n)%A359675(3*n+5))`
-/

namespace A323539.P16075339198807067407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073472 (Int.tmod (A110654 n) (A359675 (3 * n + 5))).toNat

end

end A323539.P16075339198807067407

/-! ## A323539.P16517939778148556501

`A073472(A065033(n)%A272773(n))`
-/

namespace A323539.P16517939778148556501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073472 (Int.tmod (A065033 n) (A272773 n)).toNat

end

end A323539.P16517939778148556501

/-! ## A323539.P6440443801097024224

`A073472(A110654(n)%A272773(n))`
-/

namespace A323539.P6440443801097024224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073472 (Int.tmod (A110654 n) (A272773 n)).toNat

end

end A323539.P6440443801097024224

/-!
# A323547: n-th digit in the base-2 expansion of 1/n.

The programs for A323547, the canonical program `A323547.P8827886963930312361` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323547 has offset 1).

The definition of A323547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323547.P8827886963930312361

`floor(1/(n+1)*2^(n+1))%2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323547

/-- `floor(1/(n+1)*2^(n+1))%2` -/
def P8827886963930312361.Spec : Prop :=
  ∀ n, P8827886963930312361.a n = A323547 (n + 1)

theorem P8827886963930312361.correct : P8827886963930312361.Spec := by
  intro n
  simp only [A323547, Nat.add_sub_cancel]

end A323547

/-! ## A323547.P16660273346079992290

`char[A071354(n+1)-1]`
-/

namespace A323547.P16660273346079992290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071354 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A323547.P16660273346079992290

namespace A323547

/-- `char[A071354(n+1)-1]` -/
def P16660273346079992290.Spec : Prop :=
  ∀ n, (P16660273346079992290.a n : ℤ) = A323547 (n + 1)

end A323547

/-! ## A323547.P12984963022692700791

`round(acot(n)*A062173(n+1))`
-/

namespace A323547.P12984963022692700791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) * (A062173 (n + 1) : ℝ))

end

end A323547.P12984963022692700791

namespace A323547

/-- `round(acot(n)*A062173(n+1))` -/
def P12984963022692700791.Spec : Prop :=
  ∀ n, P12984963022692700791.a n = A323547 (n + 1)

end A323547

/-! ## A323547.P16332931114745753482

`and(A043545(n), A114699(n))`
-/

namespace A323547.P16332931114745753482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043545 n) (A114699 n)

end

end A323547.P16332931114745753482

namespace A323547

/-- `and(A043545(n), A114699(n))` -/
def P16332931114745753482.Spec : Prop :=
  ∀ n, P16332931114745753482.a n = A323547 (n + 1)

end A323547

/-! ## A323547.P8919339405147082643

`and(A054977(n), A114699(n))`
-/

namespace A323547.P8919339405147082643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A114699 n)

end

end A323547.P8919339405147082643

namespace A323547

/-- `and(A054977(n), A114699(n))` -/
def P8919339405147082643.Spec : Prop :=
  ∀ n, P8919339405147082643.a n = A323547 (n + 1)

end A323547

/-! ## A323547.P8088083105694825139

`and(A057427(n), A114699(n))`
-/

namespace A323547.P8088083105694825139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A114699 n)

end

end A323547.P8088083105694825139

namespace A323547

/-- `and(A057427(n), A114699(n))` -/
def P8088083105694825139.Spec : Prop :=
  ∀ n, P8088083105694825139.a n = A323547 (n + 1)

end A323547

/-! ## A323547.P13491744908908404766

`and(A060576(n), A114699(n))`
-/

namespace A323547.P13491744908908404766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A114699 n)

end

end A323547.P13491744908908404766

namespace A323547

/-- `and(A060576(n), A114699(n))` -/
def P13491744908908404766.Spec : Prop :=
  ∀ n, P13491744908908404766.a n = A323547 (n + 1)

end A323547

/-! ## A323547.P8359548922829266107

`and(A052552(n), A114699(n))`
-/

namespace A323547.P8359548922829266107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052552 n) (A114699 n)

end

end A323547.P8359548922829266107

namespace A323547

/-- `and(A052552(n), A114699(n))` -/
def P8359548922829266107.Spec : Prop :=
  ∀ n, P8359548922829266107.a n = A323547 (n + 1)

end A323547

/-! ## A323547.P12643328389650412242

`A054650(n+1)-A006788(n+1)`
-/

namespace A323547.P12643328389650412242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054650 (n + 1) - A006788 (n + 1)

end

end A323547.P12643328389650412242

namespace A323547

/-- `A054650(n+1)-A006788(n+1)` -/
def P12643328389650412242.Spec : Prop :=
  ∀ n, P12643328389650412242.a n = A323547 (n + 1)

end A323547

/-! ## A323547.P15027457824450202007

`A000799(n+1)-2*A006788(n+1)`
-/

namespace A323547.P15027457824450202007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) - 2 * A006788 (n + 1)

end

end A323547.P15027457824450202007

namespace A323547

/-- `A000799(n+1)-2*A006788(n+1)` -/
def P15027457824450202007.Spec : Prop :=
  ∀ n, P15027457824450202007.a n = A323547 (n + 1)

end A323547

/-! ## A323547.P9311304675611373685

`2*A054650(n+1)-A000799(n+1)`
-/

namespace A323547.P9311304675611373685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054650 (n + 1) - A000799 (n + 1)

end

end A323547.P9311304675611373685

namespace A323547

/-- `2*A054650(n+1)-A000799(n+1)` -/
def P9311304675611373685.Spec : Prop :=
  ∀ n, P9311304675611373685.a n = A323547 (n + 1)

end A323547

/-! ## A323547.P5931702736572210110

`round((2^n)%(n+1)/(n+1))`
-/

namespace A323547.P5931702736572210110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 ^ n % (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ))

end

end A323547.P5931702736572210110

namespace A323547

/-- `round((2^n)%(n+1)/(n+1))` -/
def P5931702736572210110.Spec : Prop :=
  ∀ n, P5931702736572210110.a n = A323547 (n + 1)

end A323547

/-! ## A323547.P15585225040004954074

`and(A000051(n), A114699(n))`
-/

namespace A323547.P15585225040004954074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A114699 n)

end

end A323547.P15585225040004954074

namespace A323547

/-- `and(A000051(n), A114699(n))` -/
def P15585225040004954074.Spec : Prop :=
  ∀ n, P15585225040004954074.a n = A323547 (n + 1)

end A323547

/-! ## A323547.P3521056747206148499

`and(1, floor(2^(n+1)/(n+1)))`
-/

namespace A323547.P3521056747206148499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A323547.P3521056747206148499

namespace A323547

/-- `and(1, floor(2^(n+1)/(n+1)))` -/
def P3521056747206148499.Spec : Prop :=
  ∀ n, P3521056747206148499.a n = A323547 (n + 1)

end A323547

/-!
# A323549: Number of minimum total dominating sets in the n X n knight graph.

The programs for A323549, there is no canonical definition to state claims against.
-/

/-! ## A323549.P17958636062259504011

`A137326(n!)-n!`
-/

namespace A323549.P17958636062259504011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137326 (Nat.factorial n) - (Nat.factorial n : ℤ)

end

end A323549.P17958636062259504011

/-!
# A323550: Numbers that can be expressed as (p - 1)*(q - 1) + 1, where p < q are primes.

The programs for A323550, there is no canonical definition to state claims against.
-/

/-! ## A323550.P17479248492705956633

`2*lt[0, A306440(n)]+1`
-/

namespace A323550.P17479248492705956633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A323550.P17479248492705956633

/-! ## A323550.P1171771291170767505

`A005408(lt[0, A306440(n)])`
-/

namespace A323550.P1171771291170767505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A323550.P1171771291170767505

/-! ## A323550.P16396560081646911913

`A144396(lt[0, A306440(n)])`
-/

namespace A323550.P16396560081646911913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A323550.P16396560081646911913

/-! ## A323550.P14783431594805444606

`record[A039649(2*(n+2))]*A155457(2*(n+2))`
-/

namespace A323550.P14783431594805444606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A155457 (2 * (n + 2))

end

end A323550.P14783431594805444606

/-! ## A323550.P4862912622449921846

`A318809(2*n+5)+record[A000010(2*(n+2))]`
-/

namespace A323550.P4862912622449921846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (2 * n + 5) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323550.P4862912622449921846

/-!
# A323551: Numerators of the partial Euler product representation of Pi/4.

The programs for A323551, there is no canonical definition to state claims against.
-/

/-! ## A323551.P9575314746397090158

`A275733(A027270(n+2))`
-/

namespace A323551.P9575314746397090158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 (A027270 (n + 2)).toNat

end

end A323551.P9575314746397090158

/-! ## A323551.P571952909136480526

`A275733(lcm(2, A137573(n)))`
-/

namespace A323551.P571952909136480526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 (Int.lcm 2 (A137573 n))

end

end A323551.P571952909136480526

/-!
# A323552: Denominators of the partial Euler product representation of Pi/4.

The programs for A323552, there is no canonical definition to state claims against.
-/

/-! ## A323552.P13355921080759043693

`∏[A000005(A272310(n+2))]`
-/

namespace A323552.P13355921080759043693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A272310 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A323552.P13355921080759043693

/-! ## A323552.P6981915006005276915

`∏[A099774(A290890(n+4))]`
-/

namespace A323552.P6981915006005276915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A290890 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A323552.P6981915006005276915

/-! ## A323552.P1049996333617945884

`A000027(∏[4*A008949(n)])`
-/

namespace A323552.P1049996333617945884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323552.P1049996333617945884

/-!
# A323553: Irregular table read by rows: T(n,k) = (2*k+1)^(-1/3) mod 2^n, 0 <= k <= 2^(n-1) - 1.

The programs for A323553, there is no canonical definition to state claims against.
-/

/-! ## A323553.P17469346565794988383

`A193250(n+2)%(A000007(n)+2^ceil(log2(n+1)))`
-/

namespace A323553.P17469346565794988383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193250 (n + 2)) (SequenceMachineLib.roundAway ((A000007 n : ℚ) + (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

end

end A323553.P17469346565794988383

/-! ## A323553.P1024152059184995027

`and(A000225(A070939(n)), A007588(2*n+3))`
-/

namespace A323553.P1024152059184995027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A070939 n).toNat) (A007588 (2 * n + 3))

end

end A323553.P1024152059184995027

/-! ## A323553.P2398275919698423260

`A004525(A323555(record[A092486(n)]))`
-/

namespace A323553.P2398275919698423260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A323555 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A323553.P2398275919698423260

/-! ## A323553.P13873451232269174944

`A323555(∑[∑[A151660(n)]])`
-/

namespace A323553.P13873451232269174944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323555 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323553.P13873451232269174944

/-! ## A323553.P10151190404194113258

`A323555(A340008(2*(n+1)))`
-/

namespace A323553.P10151190404194113258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323555 (A340008 (2 * (n + 1))).toNat

end

end A323553.P10151190404194113258

/-!
# A323554: Irregular table read by rows: T(n,k) = (2*k+1)^(-1/5) mod 2^n, 0 <= k <= 2^(n-1) - 1.

The programs for A323554, there is no canonical definition to state claims against.
-/

/-! ## A323554.P14614202815353468161

`A323556(n+1)%A001316(A158632(n))`
-/

namespace A323554.P14614202815353468161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323556 (n + 1)) (A001316 (A158632 n).toNat)

end

end A323554.P14614202815353468161

/-! ## A323554.P10571747842475170794

`A048266(A323556(n+1))`
-/

namespace A323554.P10571747842475170794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A323556 (n + 1)).toNat

end

end A323554.P10571747842475170794

/-! ## A323554.P13312050248146075846

`A323556(∑[∑[A151660(n)]])`
-/

namespace A323554.P13312050248146075846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323556 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323554.P13312050248146075846

/-! ## A323554.P13101542782550755419

`and(A179612(n+1), A323556(n+1))`
-/

namespace A323554.P13101542782550755419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179612 (n + 1)) (A323556 (n + 1))

end

end A323554.P13101542782550755419

/-! ## A323554.P1613455568635369933

`A323556(n+1)+C(A323556(3*n+1), ∑[10*n]+13)`
-/

namespace A323554.P1613455568635369933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323556 (n + 1) + (Nat.choose (A323556 (3 * n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j + 13) : ℤ)

end

end A323554.P1613455568635369933

/-!
# A323555: Irregular table read by rows: T(n,k) = (2*k+1)^(1/5) mod 2^n, 0 <= k <= 2^(n-1) - 1.

The programs for A323555, there is no canonical definition to state claims against.
-/

/-! ## A323555.P10885822172697095242

`A165900(A165900(2*n+3))%A062383(n+1)`
-/

namespace A323555.P10885822172697095242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165900 (A165900 (2 * n + 3)).toNat) (A062383 (n + 1))

end

end A323555.P10885822172697095242

/-! ## A323555.P17210680275460583257

`A323553(n+1)%A001316(A158632(n))`
-/

namespace A323555.P17210680275460583257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323553 (n + 1)) (A001316 (A158632 n).toNat)

end

end A323555.P17210680275460583257

/-!
# A323557: G.f.: Sum_{n>=0} x^n * (1 + x^n)^n / (1 + x^(n+1))^(n+1).

The programs for A323557, there is no canonical definition to state claims against.
-/

/-! ## A323557.P5582177506290237727

`∑[A354247(n)]`
-/

namespace A323557.P5582177506290237727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323557.P5582177506290237727

/-!
# A323561: Number of rooted self-avoiding king's walks of n moves on an infinite chessboard with first move specified.

The programs for A323561, there is no canonical definition to state claims against.
-/

/-! ## A323561.P8739947354056532906

`A272763(n+1)/4`
-/

namespace A323561.P8739947354056532906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272763 (n + 1) : ℚ) / 4

end

end A323561.P8739947354056532906

/-! ## A323561.P2199751588948113133

`Δ[∑[A272763(n)]/4]`
-/

namespace A323561.P2199751588948113133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272763 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323561.P2199751588948113133

/-! ## A323561.P6547296509892523132

`record[A272763(ceil(abs((1-n)/2)))/4]`
-/

namespace A323561.P6547296509892523132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272763 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323561.P6547296509892523132

/-!
# A323563: E.g.f. A(x) = 3 + Integral B(x)*C(x) dx such that C(x)^2 - A(x)^2 = 16 and B(x)^2 - A(x)^2 = 7.

The programs for A323563, there is no canonical definition to state claims against.
-/

/-! ## A323563.P17159473825680567550

`7*A323567(n)-A323564(n)`
-/

namespace A323563.P17159473825680567550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A323567 n - A323564 n

end

end A323563.P17159473825680567550

/-! ## A323563.P8222183929398344428

`8*A323568(n)-A323565(n)`
-/

namespace A323563.P8222183929398344428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A323568 n - A323565 n

end

end A323563.P8222183929398344428

/-!
# A323564: E.g.f. B(x) = 4 + Integral A(x)*C(x) dx such that C(x)^2 - B(x)^2 = 9 and B(x)^2 - A(x)^2 = 7.

The programs for A323564, there is no canonical definition to state claims against.
-/

/-! ## A323564.P2505389797319400900

`7*A323567(n)-A323563(n)`
-/

namespace A323564.P2505389797319400900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A323567 n - A323563 n

end

end A323564.P2505389797319400900

/-! ## A323564.P14568473568532066586

`9*A323569(n)-A323565(n)`
-/

namespace A323564.P14568473568532066586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A323569 n - A323565 n

end

end A323564.P14568473568532066586

/-!
# A323565: E.g.f. C(x) = 5 + Integral A(x)*B(x) dx such that C(x)^2 - A(x)^2 = 16 and C(x)^2 - B(x)^2 = 9.

The programs for A323565, there is no canonical definition to state claims against.
-/

/-! ## A323565.P15154024032530984085

`8*A323568(n)-A323563(n)`
-/

namespace A323565.P15154024032530984085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A323568 n - A323563 n

end

end A323565.P15154024032530984085

/-! ## A323565.P11532294575502586165

`9*A323569(n)-A323564(n)`
-/

namespace A323565.P11532294575502586165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A323569 n - A323564 n

end

end A323565.P11532294575502586165

/-!
# A323567: E.g.f. exp( Integral C(x) dx ) = (A(x) + B(x))/7 where A(x) = 3 + Integral B(x)*C(x) dx and B(x) = 4 + Integral A(x)*C(x) dx such that A(x)^2 - 3^2 = B(x)^2 - 4^2 = C(x)^2 - 5^2.

The programs for A323567, there is no canonical definition to state claims against.
-/

/-! ## A323567.P6665338749855988449

`(A323564(n)+A323563(n))/7`
-/

namespace A323567.P6665338749855988449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323564 n + A323563 n : ℚ) / 7

end

end A323567.P6665338749855988449

/-!
# A323568: E.g.f. exp( Integral B(x) dx ) = (A(x) + C(x))/8 where A(x) = 3 + Integral B(x)*C(x) dx and C(x) = 5 + Integral A(x)*B(x) dx such that A(x)^2 - 3^2 = B(x)^2 - 4^2 = C(x)^2 - 5^2.

The programs for A323568, there is no canonical definition to state claims against.
-/

/-! ## A323568.P5682020850440241587

`(A323565(n)+A323563(n))/8`
-/

namespace A323568.P5682020850440241587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323565 n + A323563 n : ℚ) / 8

end

end A323568.P5682020850440241587

/-!
# A323569: E.g.f. exp( Integral A(x) dx ) = (B(x) + C(x))/9 where B(x) = 4 + Integral A(x)*C(x) dx and C(x) = 5 + Integral A(x)*B(x) dx such that A(x)^2 - 3^2 = B(x)^2 - 4^2 = C(x)^2 - 5^2.

The programs for A323569, there is no canonical definition to state claims against.
-/

/-! ## A323569.P16952214077473728993

`(A323565(n)+A323564(n))/9`
-/

namespace A323569.P16952214077473728993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323565 n + A323564 n : ℚ) / 9

end

end A323569.P16952214077473728993

/-! ## A323569.P17444152297596105464

`(A323565(n)+A323564(n))*9^A133574(A001316(n))`
-/

namespace A323569.P17444152297596105464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323565 n + A323564 n : ℚ) * (9 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ)

end

end A323569.P17444152297596105464

/-!
# A323573: G.f. A(x) satisfies: 1 = Sum_{n>=0} ((1+x)^n - 1)^n/(A(x) + (1+x)^n - 1)^(n+1).

The programs for A323573, there is no canonical definition to state claims against.
-/

/-! ## A323573.P14450851369204660419

`A324060(C(ceil(2^(n-1)), n))`
-/

namespace A323573.P14450851369204660419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324060 (Nat.choose ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat n)

end

end A323573.P14450851369204660419

/-! ## A323573.P83855136958645756

`A086404(A027376(n))`
-/

namespace A323573.P83855136958645756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086404 (A027376 n).toNat

end

end A323573.P83855136958645756

/-!
# A323576: Primes p such that 2 is a primitive root modulo p while 128 is not.

The programs for A323576, there is no canonical definition to state claims against.
-/

/-! ## A323576.P6460764178458870245

`∩[A001122(n+1), A004619(n+1)]`
-/

namespace A323576.P6460764178458870245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P6460764178458870245

/-! ## A323576.P9971821486636753197

`∩[A001122(n+1), A045465(n+1)]`
-/

namespace A323576.P9971821486636753197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P9971821486636753197

/-! ## A323576.P7420561986866545266

`∩[A045465(n+1), A050229(n+1)]`
-/

namespace A323576.P7420561986866545266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P7420561986866545266

/-! ## A323576.P16952757168351384121

`∩[A001122(n+1), A140444(n+1)]`
-/

namespace A323576.P16952757168351384121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P16952757168351384121

/-! ## A323576.P2442012988898635970

`∩[A050229(n+1), A140444(n+1)]`
-/

namespace A323576.P2442012988898635970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P2442012988898635970

/-! ## A323576.P18005264547914013117

`∩[A045465(n+1), A139099(n+1)]`
-/

namespace A323576.P18005264547914013117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P18005264547914013117

/-! ## A323576.P7868222323624199556

`∩[A139099(n+1), A140444(n+1)]`
-/

namespace A323576.P7868222323624199556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P7868222323624199556

/-! ## A323576.P9379440886774732717

`∩[A045465(n+1), A167791(n+1)]`
-/

namespace A323576.P9379440886774732717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P9379440886774732717

/-! ## A323576.P7552178209255373176

`∩[A140444(n+1), A167791(n+1)]`
-/

namespace A323576.P7552178209255373176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P7552178209255373176

/-! ## A323576.P13423353008757235576

`∩[A045465(n+1), A179383(n+1)]`
-/

namespace A323576.P13423353008757235576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P13423353008757235576

/-! ## A323576.P5976184061967210018

`∩[A140444(n+1), A179383(n+1)]`
-/

namespace A323576.P5976184061967210018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P5976184061967210018

/-! ## A323576.P10086606393468627924

`∩[A001122(n+1), A042967(n+1)]`
-/

namespace A323576.P10086606393468627924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P10086606393468627924

/-! ## A323576.P17013266758131837626

`∩[A042967(n+1), A050229(n+1)]`
-/

namespace A323576.P17013266758131837626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P17013266758131837626

/-! ## A323576.P11272525110487051111

`∩[A042967(n+1), A139099(n+1)]`
-/

namespace A323576.P11272525110487051111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P11272525110487051111

/-! ## A323576.P4604004456227461149

`∩[A042967(n+1), A167791(n+1)]`
-/

namespace A323576.P4604004456227461149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P4604004456227461149

/-! ## A323576.P14329910383634036179

`∩[A042967(n+1), A179383(n+1)]`
-/

namespace A323576.P14329910383634036179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P14329910383634036179

/-! ## A323576.P8405131981618466895

`∩[A001122(n+1), A131877(n)]`
-/

namespace A323576.P8405131981618466895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P8405131981618466895

/-! ## A323576.P1581188475965788581

`∩[A001122(n+1), A190991(n)+n]`
-/

namespace A323576.P1581188475965788581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P1581188475965788581

/-! ## A323576.P6670293318207125939

`∩[A042967(n+1), A141231(n+1)]`
-/

namespace A323576.P6670293318207125939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P6670293318207125939

/-! ## A323576.P15888635914954829386

`∩[A045465(n+1), A141231(n+1)]`
-/

namespace A323576.P15888635914954829386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323576.P15888635914954829386

/-!
# A323577: Primes p such that 2 is a primitive root modulo p while 2048 is not.

The programs for A323577, there is no canonical definition to state claims against.
-/

/-! ## A323577.P6765499718776306949

`∩[A001122(n+1), A141849(n+1)]`
-/

namespace A323577.P6765499718776306949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P6765499718776306949

/-! ## A323577.P8393734729602764152

`∩[A050229(n+1), A141849(n+1)]`
-/

namespace A323577.P8393734729602764152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P8393734729602764152

/-! ## A323577.P16048948713236486416

`∩[A139099(n+1), A141849(n+1)]`
-/

namespace A323577.P16048948713236486416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P16048948713236486416

/-! ## A323577.P11102571655977093096

`∩[A141849(n+1), A167791(n+1)]`
-/

namespace A323577.P11102571655977093096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P11102571655977093096

/-! ## A323577.P7116055039438557453

`∩[A141849(n+1), A179383(n+1)]`
-/

namespace A323577.P7116055039438557453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P7116055039438557453

/-! ## A323577.P6893533500367036676

`∩[A001122(n+1), A059241(n+1)]`
-/

namespace A323577.P6893533500367036676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P6893533500367036676

/-! ## A323577.P14006933131607706178

`∩[A050229(n+1), A059241(n+1)]`
-/

namespace A323577.P14006933131607706178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P14006933131607706178

/-! ## A323577.P18335122939595656004

`∩[A059241(n+1), A139099(n+1)]`
-/

namespace A323577.P18335122939595656004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P18335122939595656004

/-! ## A323577.P18273033667492318500

`∩[A059241(n+1), A167791(n+1)]`
-/

namespace A323577.P18273033667492318500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P18273033667492318500

/-! ## A323577.P8087828077274032112

`∩[A059241(n+1), A179383(n+1)]`
-/

namespace A323577.P8087828077274032112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P8087828077274032112

/-! ## A323577.P11604602752754305522

`∩[A001122(n+1), A161709(n)]`
-/

namespace A323577.P11604602752754305522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P11604602752754305522

/-! ## A323577.P1872530326019575746

`∩[A001122(n+1), A017401(n)]`
-/

namespace A323577.P1872530326019575746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P1872530326019575746

/-! ## A323577.P5879148809593660639

`∩[A001122(n+1), A017281(n)+n]`
-/

namespace A323577.P5879148809593660639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P5879148809593660639

/-! ## A323577.P8750220021684618790

`∩[A059241(n+1), A141231(n+1)]`
-/

namespace A323577.P8750220021684618790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P8750220021684618790

/-! ## A323577.P17035651872408804541

`∩[A141231(n+1), A141849(n+1)]`
-/

namespace A323577.P17035651872408804541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323577.P17035651872408804541

/-!
# A323578: Primes with distinct digits for which parity of digits alternates.

The programs for A323578, there is no canonical definition to state claims against.
-/

/-! ## A323578.P5004662021051028963

`∩[A029743(n+1), A030144(n+1)]`
-/

namespace A323578.P5004662021051028963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323578.P5004662021051028963

/-! ## A323578.P11504228424964065253

`∩[A030144(n+1), A082646(n+1)]`
-/

namespace A323578.P11504228424964065253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323578.P11504228424964065253

/-! ## A323578.P14464613875027216460

`∩[A030144(n+1), A052085(n+1)]`
-/

namespace A323578.P14464613875027216460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323578.P14464613875027216460

/-! ## A323578.P11666093014493282594

`∩[A029743(n+1), A030141(n+1)]`
-/

namespace A323578.P11666093014493282594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323578.P11666093014493282594

/-! ## A323578.P3930997375178944061

`∩[A030141(n+1), A052085(n+1)]`
-/

namespace A323578.P3930997375178944061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323578.P3930997375178944061

/-! ## A323578.P6644670066888515524

`∩[A030141(n+1), A082646(n+1)]`
-/

namespace A323578.P6644670066888515524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323578.P6644670066888515524

/-! ## A323578.P17037776960375701124

`∩[A010784(n+1), A030144(n+1)]`
-/

namespace A323578.P17037776960375701124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323578.P17037776960375701124

/-! ## A323578.P3163310128898490559

`∩[A030144(n+1), A266279(n+1)]`
-/

namespace A323578.P3163310128898490559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323578.P3163310128898490559

/-! ## A323578.P2820636214251379918

`record[A137564(p?[A228722(n)])]`
-/

namespace A323578.P2820636214251379918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323578.P2820636214251379918

/-! ## A323578.P15610285414702882489

`record[A320486(p?[A228722(n)])]`
-/

namespace A323578.P15610285414702882489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323578.P15610285414702882489

/-! ## A323578.P9121124180638478656

`record[A137564(A030144(n+1))]`
-/

namespace A323578.P9121124180638478656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A030144 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323578.P9121124180638478656

/-! ## A323578.P4415323499550610515

`filter[A030144(n+1), A178788(#)]`
-/

namespace A323578.P4415323499550610515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A323578.P4415323499550610515

/-! ## A323578.P10196924407379114469

`filter[A029743(n+1), A228710(#)]`
-/

namespace A323578.P10196924407379114469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A323578.P10196924407379114469

/-! ## A323578.P18146479900310894310

`filter[A052085(n+1), A228710(#)]`
-/

namespace A323578.P18146479900310894310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A323578.P18146479900310894310

/-! ## A323578.P724369097041710687

`filter[A082646(n+1), A228710(#)]`
-/

namespace A323578.P724369097041710687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A323578.P724369097041710687

/-! ## A323578.P13571645629087647594

`record[A137564(p?[A030141(n+1)])]`
-/

namespace A323578.P13571645629087647594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323578.P13571645629087647594

/-! ## A323578.P13824090081768609034

`record[A320485(p?[A030141(n+1)])]`
-/

namespace A323578.P13824090081768609034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323578.P13824090081768609034

/-! ## A323578.P5656772714188184792

`record[A320486(p?[A030141(n+1)])]`
-/

namespace A323578.P5656772714188184792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323578.P5656772714188184792

/-! ## A323578.P9551180886406063890

`record[A320486(A030144(2*n+1-n))]`
-/

namespace A323578.P9551180886406063890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (A030144 (2 * n + 1 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323578.P9551180886406063890

/-!
# A323579: Primes formed by using the four terminal digits of multidigit primes and whose digits are distinct, i.e., consisting of only digits 1, 3, 7, 9.

The programs for A323579, there is no canonical definition to state claims against.
-/

/-! ## A323579.P10488670854204279241

`record[A137564(A091633(n+1))]`
-/

namespace A323579.P10488670854204279241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A091633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323579.P10488670854204279241

/-! ## A323579.P6536023335518168859

`record[A137564(A166559(n+1))]`
-/

namespace A323579.P6536023335518168859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A166559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323579.P6536023335518168859

/-! ## A323579.P13936184679159024043

`filter[A091633(n+1), A178788(#)]`
-/

namespace A323579.P13936184679159024043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A323579.P13936184679159024043

/-! ## A323579.P6668422663477025333

`filter[A166559(n+1), A178788(#)]`
-/

namespace A323579.P6668422663477025333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A323579.P6668422663477025333

/-! ## A323579.P13500617926710543427

`record[A320485(p?[A091633(n+1)])]`
-/

namespace A323579.P13500617926710543427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323579.P13500617926710543427

/-!
# A323581: Number of ways to fill a Young diagram with positive integers summing to n such that the rows are strictly increasing and the columns are strictly decreasing.

The programs for A323581, there is no canonical definition to state claims against.
-/

/-! ## A323581.P14429718061691214459

`A318684(n)-A107846(A002662(n))`
-/

namespace A323581.P14429718061691214459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318684 n - A107846 (A002662 n).toNat

end

end A323581.P14429718061691214459

/-! ## A323581.P15368161876062607206

`A318684(n)-A118175(A105862(n+1))`
-/

namespace A323581.P15368161876062607206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318684 n - A118175 (A105862 (n + 1)).toNat

end

end A323581.P15368161876062607206

/-! ## A323581.P5107937996472020894

`A318684(n)-A106752(A059025(n+6))`
-/

namespace A323581.P5107937996472020894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318684 n - A106752 (A059025 (n + 6)).toNat

end

end A323581.P5107937996472020894

/-! ## A323581.P5455806660073144264

`A342383(A342343(n))%A342364(3*n+4)`
-/

namespace A323581.P5455806660073144264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342383 (A342343 n).toNat) (A342364 (3 * n + 4))

end

end A323581.P5455806660073144264

/-! ## A323581.P8262844015874770600

`A322847(A333150(n)%A270613(3*(n+1)))`
-/

namespace A323581.P8262844015874770600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (Int.tmod (A333150 n) (A270613 (3 * (n + 1)))).toNat

end

end A323581.P8262844015874770600

/-!
# A323582: Number of generalized Young tableaux with constant rows, weakly increasing columns, and entries summing to n.

The programs for A323582, there is no canonical definition to state claims against.
-/

/-! ## A323582.P16643775179092816504

`or(A327043(n), A327051(A327018(n)))`
-/

namespace A323582.P16643775179092816504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A327043 n) (A327051 (A327018 n).toNat)

end

end A323582.P16643775179092816504

/-! ## A323582.P5354324901619017236

`A358007(A106529(n+1))+A327043(n)`
-/

namespace A323582.P5354324901619017236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358007 ((A106529 (n + 1)).toNat + 53) + A327043 n

end

end A323582.P5354324901619017236

/-! ## A323582.P18254586660236594939

`or(A089789(A103600(n+1)), A327043(n))`
-/

namespace A323582.P18254586660236594939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089789 (A103600 (n + 1)).toNat) (A327043 n)

end

end A323582.P18254586660236594939

/-! ## A323582.P6260788547093079346

`or(A327005(A000020(n+1)), A327043(n))`
-/

namespace A323582.P6260788547093079346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A327005 (A000020 (n + 1)).toNat) (A327043 n)

end

end A323582.P6260788547093079346

/-! ## A323582.P408818710507809785

`or(A038189(3^n+1-∑[2^n]), A327043(n))`
-/

namespace A323582.P408818710507809785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038189 ((3 ^ n : ℤ) + (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat) (A327043 n)

end

end A323582.P408818710507809785

/-!
# A323583: Number of ways to split an integer partition of n into consecutive subsequences.

The programs for A323583, there is no canonical definition to state claims against.
-/

/-! ## A323583.P16904141277396935209

`ceil(A070933(n)/2)`
-/

namespace A323583.P16904141277396935209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070933 n : ℚ) / 2⌉

end

end A323583.P16904141277396935209

/-! ## A323583.P14324872581146829566

`A070933(floor(acot(n)+n))/2`
-/

namespace A323583.P14324872581146829566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070933 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat : ℚ) / 2

end

end A323583.P14324872581146829566

/-! ## A323583.P15108495349377469976

`A070933(n)/A036453(n+1)`
-/

namespace A323583.P15108495349377469976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070933 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A323583.P15108495349377469976

/-! ## A323583.P6930325998336038045

`A070933(n)/A020639(A000010(n+2))`
-/

namespace A323583.P6930325998336038045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070933 n : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

end

end A323583.P6930325998336038045

/-! ## A323583.P14173298029124725318

`ceil(A262444(n)/3)`
-/

namespace A323583.P14173298029124725318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262444 n : ℚ) / 3⌉

end

end A323583.P14173298029124725318

/-! ## A323583.P14008882326770837585

`A262444(n)/A122553(n)`
-/

namespace A323583.P14008882326770837585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262444 n : ℚ) / (A122553 n : ℚ)

end

end A323583.P14008882326770837585

/-! ## A323583.P6252520137619169036

`gcd(A070933(n), A262444(n))`
-/

namespace A323583.P6252520137619169036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070933 n) (A262444 n)

end

end A323583.P6252520137619169036

/-! ## A323583.P4966674585738082740

`A262444(n)/A071187(A071187(n+1)²)`
-/

namespace A323583.P4966674585738082740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262444 n : ℚ) / (A071187 (A071187 (n + 1) ^ 2).toNat : ℚ)

end

end A323583.P4966674585738082740

/-! ## A323583.P14757671682397521068

`A300581(n)/A151821(n+1)`
-/

namespace A323583.P14757671682397521068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300581 n : ℚ) / (A151821 (n + 1) : ℚ)

end

end A323583.P14757671682397521068

/-! ## A323583.P1158296264244717515

`lcm(A070933(n), A151821(n+1))/A151821(n+1)`
-/

namespace A323583.P1158296264244717515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A070933 n) (A151821 (n + 1)) : ℚ) / (A151821 (n + 1) : ℚ)

end

end A323583.P1158296264244717515

/-!
# A323584: Second Moebius transform of A000219. Number of plane partitions of n whose multiset of rows is aperiodic and whose multiset of columns is also aperiodic.

The programs for A323584, there is no canonical definition to state claims against.
-/

/-! ## A323584.P1926589366517501136

`∑{d}[A028310(n), A323585(#)]`
-/

namespace A323584.P1926589366517501136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323585 d

end

end A323584.P1926589366517501136

/-! ## A323584.P17301757900821854621

`∑{d}[A065033(2*n), A323585(#)]`
-/

namespace A323584.P17301757900821854621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323585 d

end

end A323584.P17301757900821854621

/-! ## A323584.P17885836765360322557

`∑{d}[A008619(A004273(n)), A323585(#)]`
-/

namespace A323584.P17885836765360322557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323585 d

end

end A323584.P17885836765360322557

/-! ## A323584.P15170881617113388167

`∑{d}[A008619(A004275(n)), A323585(#)]`
-/

namespace A323584.P15170881617113388167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323585 d

end

end A323584.P15170881617113388167

/-! ## A323584.P1129816509275312701

`∑{d}[A233583(n+1), A323585(#)]`
-/

namespace A323584.P1129816509275312701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323585 d

end

end A323584.P1129816509275312701

/-! ## A323584.P15799132438492464506

`∑{d}[A007318(A000124(n)), A323585(#)]`
-/

namespace A323584.P15799132438492464506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323585 d

end

end A323584.P15799132438492464506

/-!
# A323586: Number of plane partitions of n with no repeated rows (or, equivalently, no repeated columns).

The programs for A323586, there is no canonical definition to state claims against.
-/

/-! ## A323586.P491935129325998657

`A325328(A054352(n)-A130260(n))`
-/

namespace A323586.P491935129325998657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325328 (A054352 n - A130260 n).toNat

end

end A323586.P491935129325998657

/-! ## A323586.P10037250142409733485

`A013936(A089259(n)^A029134(n))`
-/

namespace A323586.P10037250142409733485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013936 (SequenceMachineLib.roundAway ((A089259 n : ℚ) ^ (A029134 n : ℤ))).toNat

end

end A323586.P10037250142409733485

/-! ## A323586.P7062723068576091669

`A033985(A304040(n+1))+A026007(n)`
-/

namespace A323586.P7062723068576091669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033985 (A304040 (n + 1)).toNat + A026007 n

end

end A323586.P7062723068576091669

/-! ## A323586.P7453402797090406482

`A320921(n)+A102781(A064174(n+1))`
-/

namespace A323586.P7453402797090406482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320921 n + A102781 (A064174 (n + 1)).toNat

end

end A323586.P7453402797090406482

/-!
# A323589: a(n) = Product_{k=1..n-1} (k^k + (n-k)^(n-k)).

The programs for A323589, there is no canonical definition to state claims against.
-/

/-! ## A323589.P14384110403477598263

`A209467(ceil(sqrt(n!)))`
-/

namespace A323589.P14384110403477598263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209467 ⌈Real.sqrt (Nat.factorial n : ℝ)⌉.toNat

end

end A323589.P14384110403477598263

/-!
# A323590: Primes p such that 2 is a primitive root modulo p while 8192 is not.

The programs for A323590, there is no canonical definition to state claims against.
-/

/-! ## A323590.P6500910979652456964

`∩[13*n+1, A139099(n+2)]`
-/

namespace A323590.P6500910979652456964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P6500910979652456964

/-! ## A323590.P10602312100953501888

`∩[A001122(n+1), A268753(n+1)]`
-/

namespace A323590.P10602312100953501888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P10602312100953501888

/-! ## A323590.P12842719257430750363

`∩[A050229(n+1), A268753(n+1)]`
-/

namespace A323590.P12842719257430750363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P12842719257430750363

/-! ## A323590.P13556521716637090517

`∩[A139099(n+1), A268753(n+1)]`
-/

namespace A323590.P13556521716637090517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P13556521716637090517

/-! ## A323590.P10895301497426345230

`∩[A167791(n+1), A268753(n+1)]`
-/

namespace A323590.P10895301497426345230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P10895301497426345230

/-! ## A323590.P2963234223009628136

`∩[A179383(n+1), A268753(n+1)]`
-/

namespace A323590.P2963234223009628136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P2963234223009628136

/-! ## A323590.P16930208302892131600

`∩[A001122(n+1), A059245(n+1)]`
-/

namespace A323590.P16930208302892131600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P16930208302892131600

/-! ## A323590.P10811090451086698136

`∩[A050229(n+1), A059245(n+1)]`
-/

namespace A323590.P10811090451086698136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P10811090451086698136

/-! ## A323590.P5253568586560239698

`∩[A059245(n+1), A167791(n+1)]`
-/

namespace A323590.P5253568586560239698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P5253568586560239698

/-! ## A323590.P1604833171497421438

`∩[A059245(n+1), A179383(n+1)]`
-/

namespace A323590.P1604833171497421438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P1604833171497421438

/-! ## A323590.P14526736672134495155

`∩[A001122(n+1), A190991(n)]`
-/

namespace A323590.P14526736672134495155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P14526736672134495155

/-! ## A323590.P14358511649640454544

`∩[A001122(n+1), A131877(n)-n]`
-/

namespace A323590.P14358511649640454544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P14358511649640454544

/-! ## A323590.P11125322231520633152

`∩[A059245(n+1), A141231(n+1)]`
-/

namespace A323590.P11125322231520633152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P11125322231520633152

/-! ## A323590.P17826636152105899066

`∩[A141231(n+1), A268753(n+1)]`
-/

namespace A323590.P17826636152105899066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323590.P17826636152105899066

/-!
# A323591: n-th digit after the radix point in the base-3 expansion of 1/n.

The programs for A323591, the canonical program `A323591.P7629981022573915657` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323591 has offset 1).

The definition of A323591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323591.P7629981022573915657

`floor(1/(n+1)*3^(n+1))%3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323591

/-- `floor(1/(n+1)*3^(n+1))%3` -/
def P7629981022573915657.Spec : Prop :=
  ∀ n, P7629981022573915657.a n = A323591 (n + 1)

theorem P7629981022573915657.correct : P7629981022573915657.Spec := by
  intro n
  simp only [A323591, Nat.add_sub_cancel]

end A323591

/-! ## A323591.P12440108079682806468

`A010872(∑{digits}[A092763(n+1), #])`
-/

namespace A323591.P12440108079682806468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A323591.P12440108079682806468

namespace A323591

/-- `A010872(∑{digits}[A092763(n+1), #])` -/
def P12440108079682806468.Spec : Prop :=
  ∀ n, P12440108079682806468.a n = A323591 (n + 1)

end A323591

/-! ## A323591.P1019686130217917693

`abs(((A000244(n+1)-A066601(n+1))/(n+1))%3)`
-/

namespace A323591.P1019686130217917693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (SequenceMachineLib.roundAway ((A000244 (n + 1) - A066601 (n + 1) : ℚ) / (n + 1 : ℚ))) 3|

end

end A323591.P1019686130217917693

namespace A323591

/-- `abs(((A000244(n+1)-A066601(n+1))/(n+1))%3)` -/
def P1019686130217917693.Spec : Prop :=
  ∀ n, P1019686130217917693.a n = A323591 (n + 1)

end A323591

/-! ## A323591.P16900755406542781477

`A353303(Δ[record[A283595(n)]])`
-/

namespace A323591.P16900755406542781477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283595 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (f1 (n + 1) - f1 n).toNat

end

end A323591.P16900755406542781477

namespace A323591

/-- `A353303(Δ[record[A283595(n)]])` -/
def P16900755406542781477.Spec : Prop :=
  ∀ n, P16900755406542781477.a n = A323591 (n + 1)

end A323591

/-! ## A323591.P15437222247597318260

`A086071(A014696(n+1))`
-/

namespace A323591.P15437222247597318260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086071 (A014696 (n + 1)).toNat

end

end A323591.P15437222247597318260

namespace A323591

/-- `A086071(A014696(n+1))` -/
def P15437222247597318260.Spec : Prop :=
  ∀ n, P15437222247597318260.a n = A323591 (n + 1)

end A323591

/-!
# A323592: n-th digit in the base-4 expansion of 1/n.

The programs for A323592, the canonical program `A323592.P11217697484081014629` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323592 has offset 1).

The definition of A323592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323592.P11217697484081014629

`floor(4^(n+1)/(n+1))%4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323592

/-- `floor(4^(n+1)/(n+1))%4` -/
def P11217697484081014629.Spec : Prop :=
  ∀ n, P11217697484081014629.a n = A323592 (n + 1)

theorem P11217697484081014629.correct : P11217697484081014629.Spec := by
  intro n
  simp only [A323592, Nat.add_sub_cancel]

end A323592

/-! ## A323592.P7579898824383100078

`dr(A281375(2*(n+1))%4)`
-/

namespace A323592.P7579898824383100078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A281375 (2 * (n + 1))) 4)

end

end A323592.P7579898824383100078

namespace A323592

/-- `dr(A281375(2*(n+1))%4)` -/
def P7579898824383100078.Spec : Prop :=
  ∀ n, (P7579898824383100078.a n : ℤ) = A323592 (n + 1)

end A323592

/-! ## A323592.P12691786689046370425

`and(A122553(n), A129794(n+1))`
-/

namespace A323592.P12691786689046370425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A129794 (n + 1))

end

end A323592.P12691786689046370425

namespace A323592

/-- `and(A122553(n), A129794(n+1))` -/
def P12691786689046370425.Spec : Prop :=
  ∀ n, P12691786689046370425.a n = A323592 (n + 1)

end A323592

/-! ## A323592.P2494275905267489259

`and(A129794(n+1), A158799(n))`
-/

namespace A323592.P2494275905267489259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129794 (n + 1)) (A158799 n)

end

end A323592.P2494275905267489259

namespace A323592

/-- `and(A129794(n+1), A158799(n))` -/
def P2494275905267489259.Spec : Prop :=
  ∀ n, P2494275905267489259.a n = A323592 (n + 1)

end A323592

/-! ## A323592.P13057270410060574313

`and(A129794(n+1), A290858(n))`
-/

namespace A323592.P13057270410060574313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129794 (n + 1)) (A290858 n)

end

end A323592.P13057270410060574313

namespace A323592

/-- `and(A129794(n+1), A290858(n))` -/
def P13057270410060574313.Spec : Prop :=
  ∀ n, P13057270410060574313.a n = A323592 (n + 1)

end A323592

/-! ## A323592.P1092219152421210857

`and(A129794(n+1), A157532(n+1))`
-/

namespace A323592.P1092219152421210857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129794 (n + 1)) (A157532 (n + 1))

end

end A323592.P1092219152421210857

namespace A323592

/-- `and(A129794(n+1), A157532(n+1))` -/
def P1092219152421210857.Spec : Prop :=
  ∀ n, P1092219152421210857.a n = A323592 (n + 1)

end A323592

/-! ## A323592.P3610621545085893340

`and(A057427(n)+2, A129794(n+1))`
-/

namespace A323592.P3610621545085893340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n + 2) (A129794 (n + 1))

end

end A323592.P3610621545085893340

namespace A323592

/-- `and(A057427(n)+2, A129794(n+1))` -/
def P3610621545085893340.Spec : Prop :=
  ∀ n, P3610621545085893340.a n = A323592 (n + 1)

end A323592

/-! ## A323592.P698118957656812955

`and(3, floor(4^(n+1)/(n+1)))`
-/

namespace A323592.P698118957656812955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ⌊(4 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A323592.P698118957656812955

namespace A323592

/-- `and(3, floor(4^(n+1)/(n+1)))` -/
def P698118957656812955.Spec : Prop :=
  ∀ n, P698118957656812955.a n = A323592 (n + 1)

end A323592

/-!
# A323594: Primes p such that 3 is a primitive root modulo p while 27 is not.

The programs for A323594, there is no canonical definition to state claims against.
-/

/-! ## A323594.P4365372161112354768

`p?[2-xor(2, -A019334(n+1))]`
-/

namespace A323594.P4365372161112354768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 2 (-A019334 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323594.P4365372161112354768

/-! ## A323594.P6880013631560468014

`∩[A019334(n+1), A068229(n+1)]`
-/

namespace A323594.P6880013631560468014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P6880013631560468014

/-! ## A323594.P7501349469885940563

`∩[A019334(n+1), A040038(n+1)]`
-/

namespace A323594.P7501349469885940563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P7501349469885940563

/-! ## A323594.P11518137036748941542

`∩[A040038(n+1), A105881(n+1)]`
-/

namespace A323594.P11518137036748941542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P11518137036748941542

/-! ## A323594.P16438985093152074008

`∩[A002476(n+1), A019334(n+1)]`
-/

namespace A323594.P16438985093152074008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P16438985093152074008

/-! ## A323594.P14007286870966548545

`∩[A007645(n+1), A019334(n+1)]`
-/

namespace A323594.P14007286870966548545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P14007286870966548545

/-! ## A323594.P13497920559647683630

`∩[A002476(n+1), A105881(n+1)]`
-/

namespace A323594.P13497920559647683630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P13497920559647683630

/-! ## A323594.P12322825122619667042

`∩[A007645(n+1), A105881(n+1)]`
-/

namespace A323594.P12322825122619667042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P12322825122619667042

/-! ## A323594.P14363550715623283769

`∩[A019334(n+1), A123365(n+1)]`
-/

namespace A323594.P14363550715623283769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P14363550715623283769

/-! ## A323594.P5297073520959998024

`∩[A002145(n+1), A019334(n+1)]`
-/

namespace A323594.P5297073520959998024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P5297073520959998024

/-! ## A323594.P16120468553493522344

`∩[A019334(n+1), A055664(n+1)]`
-/

namespace A323594.P16120468553493522344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P16120468553493522344

/-! ## A323594.P7819635731753150837

`∩[A003630(n+1), A105881(n+1)]`
-/

namespace A323594.P7819635731753150837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P7819635731753150837

/-! ## A323594.P12961728157206415465

`∩[A019334(n+1), A133290(n+1)]`
-/

namespace A323594.P12961728157206415465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P12961728157206415465

/-! ## A323594.P9814076647401520194

`∩[A019334(n+1), A085760(n+1)]`
-/

namespace A323594.P9814076647401520194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P9814076647401520194

/-! ## A323594.P9074548515974083468

`∩[A019334(n+1), A197504(n+1)]`
-/

namespace A323594.P9074548515974083468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P9074548515974083468

/-! ## A323594.P16835259579508134807

`∩[A019334(n+1), A274971(n+1)]`
-/

namespace A323594.P16835259579508134807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P16835259579508134807

/-! ## A323594.P12241188523254819700

`∩[A019334(n+1), A292762(n+1)]`
-/

namespace A323594.P12241188523254819700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P12241188523254819700

/-! ## A323594.P9380058814027889106

`∩[A002145(n+1), A167792(n+1)]`
-/

namespace A323594.P9380058814027889106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P9380058814027889106

/-! ## A323594.P17069977329803049561

`∩[A040102(n+1), A105881(n+1)]`
-/

namespace A323594.P17069977329803049561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P17069977329803049561

/-! ## A323594.P15472890745966768593

`∩[A045318(n+1), A105881(n+1)]`
-/

namespace A323594.P15472890745966768593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323594.P15472890745966768593

/-!
# A323595: Number of distinct sets of lengths of nonempty palindrome prefixes, over all binary words of length n.

The programs for A323595, there is no canonical definition to state claims against.
-/

/-! ## A323595.P11625282651656786708

`∑[A304178(n+1)]`
-/

namespace A323595.P11625282651656786708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323595.P11625282651656786708

/-! ## A323595.P5502028445686902235

`A304178(A000027(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A323595.P5502028445686902235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304178 (A000027 (n + 1)).toNat + a (n - 1)

end

end A323595.P5502028445686902235

/-! ## A323595.P5953324844341893385

`a(n-1)+A007318(or(3, n)-n)*A304178(n+1)` with `a(0)=1`
-/

namespace A323595.P5953324844341893385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (Nat.lor 3 n - n) * A304178 (n + 1)

end

end A323595.P5953324844341893385

/-! ## A323595.P1087936777971066686

`∑[A319951(A325676(n+1))]`
-/

namespace A323595.P1087936777971066686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A325676 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323595.P1087936777971066686

/-! ## A323595.P382234346997675119

`A340719(n+2)-A127054(∑[n])`
-/

namespace A323595.P382234346997675119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340719 (n + 2 + 36) - A127054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323595.P382234346997675119

/-!
# A323597: The "word binomial coefficient" of (mu^(n+1) (0) | mu^n (0)), where mu is the Thue-Morse morphism.

The programs for A323597, there is no canonical definition to state claims against.
-/

/-! ## A323597.P11939467583115765225

`A323598(2^(n+1))`
-/

namespace A323597.P11939467583115765225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323598 (2 ^ (n + 1))

end

end A323597.P11939467583115765225

/-!
# A323599: Dirichlet convolution of the identity function with omega.

The programs for A323599, the canonical program `A323599.P7337034044960425061` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323599 has offset 1).

The definition of A323599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323599.P3293685844123182213

`∑{d}[n+1, A069359(#)]`
-/

namespace A323599.P3293685844123182213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069359 d

end

end A323599.P3293685844123182213

namespace A323599

/-- `∑{d}[n+1, A069359(#)]` -/
def P3293685844123182213.Spec : Prop :=
  ∀ n, P3293685844123182213.a n = A323599 (n + 1)

end A323599

/-! ## A323599.P7337034044960425061

`∑{p}[n+1, A000203((n+1)/#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A323599

/-- `∑{p}[n+1, A000203((n+1)/#)]` -/
def P7337034044960425061.Spec : Prop :=
  ∀ n, P7337034044960425061.a n = A323599 (n + 1)

theorem P7337034044960425061.correct : P7337034044960425061.Spec := by
  intro n
  simp only [A323599, Nat.add_sub_cancel]

end A323599

/-! ## A323599.P6766134720301326188

`∑{d}[n+1, (n+1)/#*A001221(#)]`
-/

namespace A323599.P6766134720301326188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A001221 d : ℚ)

end

end A323599.P6766134720301326188

namespace A323599

/-- `∑{d}[n+1, (n+1)/#*A001221(#)]` -/
def P6766134720301326188.Spec : Prop :=
  ∀ n, P6766134720301326188.a n = (A323599 (n + 1) : ℚ)

end A323599

/-! ## A323599.P6925749965748699725

`A180253(n+1)-A329354(n+1)`
-/

namespace A323599.P6925749965748699725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180253 (n + 1) - A329354 (n + 1)

end

end A323599.P6925749965748699725

namespace A323599

/-- `A180253(n+1)-A329354(n+1)` -/
def P6925749965748699725.Spec : Prop :=
  ∀ n, P6925749965748699725.a n = A323599 (n + 1)

theorem P6925749965748699725.correct : P6925749965748699725.Spec := by
  intro n
  simp only [A323599, Nat.add_sub_cancel, A323599.P6925749965748699725.a, A323599.P7337034044960425061.f1, A323599.P7337034044960425061.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A180253, A180253.P5766954473390724664.f1, A180253.P5766954473390724664.a, A329354, A329354.P424931253356111511.a, A065967, A065967.P9165261899428571397.f1, A065967.P9165261899428571397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323599

/-! ## A323599.P1074030758699662968

`∑{d}[n+1, A000203(#)*A010051((n+1)/#)]`
-/

namespace A323599.P1074030758699662968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323599.P1074030758699662968

namespace A323599

/-- `∑{d}[n+1, A000203(#)*A010051((n+1)/#)]` -/
def P1074030758699662968.Spec : Prop :=
  ∀ n, P1074030758699662968.a n = A323599 (n + 1)

end A323599

/-! ## A323599.P7961570572040122653

`∑{d}[n+1, A000010(#)*A062799((n+1)/#)]`
-/

namespace A323599.P7961570572040122653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A062799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323599.P7961570572040122653

namespace A323599

/-- `∑{d}[n+1, A000010(#)*A062799((n+1)/#)]` -/
def P7961570572040122653.Spec : Prop :=
  ∀ n, P7961570572040122653.a n = A323599 (n + 1)

end A323599

/-! ## A323599.P12582715723104590815

`∑{d}[n+1, A000005(#)*A117494((n+1)/#)]`
-/

namespace A323599.P12582715723104590815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A117494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323599.P12582715723104590815

namespace A323599

/-- `∑{d}[n+1, A000005(#)*A117494((n+1)/#)]` -/
def P12582715723104590815.Spec : Prop :=
  ∀ n, P12582715723104590815.a n = A323599 (n + 1)

end A323599

/-! ## A323599.P7436210590879532248

`∑{d}[n+1, A007429(#)*A143519((n+1)/#)]`
-/

namespace A323599.P7436210590879532248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323599.P7436210590879532248

namespace A323599

/-- `∑{d}[n+1, A007429(#)*A143519((n+1)/#)]` -/
def P7436210590879532248.Spec : Prop :=
  ∀ n, P7436210590879532248.a n = A323599 (n + 1)

end A323599

/-! ## A323599.P4314654184216237728

`∑{d}[n+1, A008683(#)*A323600((n+1)/#)]`
-/

namespace A323599.P4314654184216237728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A323600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323599.P4314654184216237728

namespace A323599

/-- `∑{d}[n+1, A008683(#)*A323600((n+1)/#)]` -/
def P4314654184216237728.Spec : Prop :=
  ∀ n, P4314654184216237728.a n = A323599 (n + 1)

end A323599

/-! ## A323599.P3347896880315948447

`∑{d}[n+1, A001615(#)*A358769((n+1)/#)]`
-/

namespace A323599.P3347896880315948447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A358769 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323599.P3347896880315948447

namespace A323599

/-- `∑{d}[n+1, A001615(#)*A358769((n+1)/#)]` -/
def P3347896880315948447.Spec : Prop :=
  ∀ n, P3347896880315948447.a n = A323599 (n + 1)

end A323599

/-! ## A323599.P1322511006439036408

`∑{d}[n+1, A347957(#)*A349432((n+1)/#)]`
-/

namespace A323599.P1322511006439036408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347957 d * A349432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323599.P1322511006439036408

namespace A323599

/-- `∑{d}[n+1, A347957(#)*A349432((n+1)/#)]` -/
def P1322511006439036408.Spec : Prop :=
  ∀ n, P1322511006439036408.a n = A323599 (n + 1)

end A323599

/-! ## A323599.P4163397712745529511

`A180253(n+1)-(A329375(n+1)+A328260(n+1))`
-/

namespace A323599.P4163397712745529511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180253 (n + 1) - (A329375 (n + 1) + A328260 (n + 1))

end

end A323599.P4163397712745529511

namespace A323599

/-- `A180253(n+1)-(A329375(n+1)+A328260(n+1))` -/
def P4163397712745529511.Spec : Prop :=
  ∀ n, P4163397712745529511.a n = A323599 (n + 1)

theorem P4163397712745529511.correct : P4163397712745529511.Spec := by
  intro n
  simp only [A323599, Nat.add_sub_cancel, A323599.P4163397712745529511.a, A323599.P7337034044960425061.f1, A323599.P7337034044960425061.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A180253, A180253.P5766954473390724664.f1, A180253.P5766954473390724664.a, A328260, A328260.P7448071103509823469.f1, A328260.P7448071103509823469.a, A329375, A329375.P559970247339746563.a, A065967, A065967.P9165261899428571397.f1, A065967.P9165261899428571397.a, A329354, A329354.P424931253356111511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323599

