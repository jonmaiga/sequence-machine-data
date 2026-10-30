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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
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
# A306000: Number of labeled intersecting set-systems with no singletons covering some subset of {1,...,n}.

The programs for A306000, there is no canonical definition to state claims against.
-/

/-! ## A306000.P512069399241408519

`∏[A181341(n!)]`
-/

namespace A306000.P512069399241408519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181341 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306000.P512069399241408519

/-!
# A306001: Number of unlabeled intersecting set-systems with no singletons on up to n vertices.

The programs for A306001, there is no canonical definition to state claims against.
-/

/-! ## A306001.P1633369126207611685

`∑[A305999(n)]`
-/

namespace A306001.P1633369126207611685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306001.P1633369126207611685

/-!
# A306003: Number of simple graphs on n nodes where each component has at least one cycle.

The programs for A306003, there is no canonical definition to state claims against.
-/

/-! ## A306003.P9005688463339908587

`A238401(A001349(n+1))`
-/

namespace A306003.P9005688463339908587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238401 (A001349 (n + 1)).toNat

end

end A306003.P9005688463339908587

/-! ## A306003.P4917071576740215743

`A238401(A128527(n+2))`
-/

namespace A306003.P4917071576740215743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238401 (A128527 (n + 2)).toNat

end

end A306003.P4917071576740215743

/-! ## A306003.P898758656663385939

`A238401(A128528(n+2))`
-/

namespace A306003.P898758656663385939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238401 (A128528 (n + 2)).toNat

end

end A306003.P898758656663385939

/-!
# A306005: Number of non-isomorphic set-systems of weight n with no singletons.

The programs for A306005, there is no canonical definition to state claims against.
-/

/-! ## A306005.P1773243087631804183

`A283877(n)-A330053(n)`
-/

namespace A306005.P1773243087631804183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 n - A330053 n

end

end A306005.P1773243087631804183

/-! ## A306005.P3009534386240468596

`A330052(n)+A330054(n)-A330053(n)`
-/

namespace A306005.P3009534386240468596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330052 n + (A330054 n - A330053 n)

end

end A306005.P3009534386240468596

/-! ## A306005.P7104500116206778775

`A283877(n)+A057428(n)*A330053(n)`
-/

namespace A306005.P7104500116206778775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 n + A057428 n * A330053 n

end

end A306005.P7104500116206778775

/-! ## A306005.P11091211406881789282

`A368094(n)+A368095(n)-A330053(n)`
-/

namespace A306005.P11091211406881789282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368094 n + (A368095 n - A330053 n)

end

end A306005.P11091211406881789282

/-! ## A306005.P7077157677384435563

`A154129(A005202(n+2))`
-/

namespace A306005.P7077157677384435563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154129 (A005202 (n + 2)).toNat

end

end A306005.P7077157677384435563

/-!
# A306006: Number of non-isomorphic intersecting set-systems of weight n.

The programs for A306006, there is no canonical definition to state claims against.
-/

/-! ## A306006.P7437240320619527053

`A352513(A319503(n))+A198518(n)`
-/

namespace A306006.P7437240320619527053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A319503 n).toNat + A198518 n

end

end A306006.P7437240320619527053

/-! ## A306006.P7517242392128750761

`A265581(n)+A011731(A369553(n+1))`
-/

namespace A306006.P7517242392128750761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265581 n + A011731 (A369553 (n + 1)).toNat

end

end A306006.P7517242392128750761

/-! ## A306006.P2528857105659569821

`A137735(A191970(n)-A208244(n+1))`
-/

namespace A306006.P2528857105659569821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A191970 n - A208244 (n + 1)).toNat

end

end A306006.P2528857105659569821

/-! ## A306006.P303818027063793738

`A011731(A369553(n+1))+∑[A265580(n)]`
-/

namespace A306006.P303818027063793738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011731 (A369553 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306006.P303818027063793738

/-!
# A306008: Number of non-isomorphic intersecting set-systems of weight n with no singletons.

The programs for A306008, there is no canonical definition to state claims against.
-/

/-! ## A306008.P11067187539287890175

`A369584(n)+A089599(n)`
-/

namespace A306008.P11067187539287890175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369584 n + A089599 n

end

end A306008.P11067187539287890175

/-! ## A306008.P18318380401135128486

`A103221(n)+∑[A139797(n)]`
-/

namespace A306008.P18318380401135128486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306008.P18318380401135128486

/-! ## A306008.P6650708120162194454

`A051841(n+1)-A308758(n)`
-/

namespace A306008.P6650708120162194454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051841 (n + 1) - A308758 n

end

end A306008.P6650708120162194454

/-! ## A306008.P10182618907951413357

`A153234(n)+A343347(n)-a(n-1)` with `a(0)=1`
-/

namespace A306008.P10182618907951413357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153234 n + (A343347 n - a (n - 1))

end

end A306008.P10182618907951413357

/-! ## A306008.P8880860575457587578

`A008617(A063834(n)+A036035(n))`
-/

namespace A306008.P8880860575457587578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A063834 n + A036035 n).toNat

end

end A306008.P8880860575457587578

/-!
# A306009: Inverse Weigh transform of A000085.

The programs for A306009, there is no canonical definition to state claims against.
-/

/-! ## A306009.P12276011781381923851

`or(∑{e}[n+1, #]+1, A170887(A000079(n)))`
-/

namespace A306009.P12276011781381923851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ) (A170887 (A000079 n).toNat)

end

end A306009.P12276011781381923851

/-! ## A306009.P17561205997277730733

`A170887(A000079(n))+A072670(n)`
-/

namespace A306009.P17561205997277730733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170887 (A000079 n).toNat + A072670 n

end

end A306009.P17561205997277730733

/-! ## A306009.P11508056019646529714

`A229951(n)+A170887(A000079(n))`
-/

namespace A306009.P11508056019646529714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229951 n + A170887 (A000079 n).toNat

end

end A306009.P11508056019646529714

/-!
# A306011: Let S(m) = d(k)/d(1) + ... + d(1)/d(k), where d(1)..d(k) are the unitary divisors of m; then a(n) is the numerator of S(m) when all the numbers S(m) are arranged in increasing order.

The programs for A306011, there is no canonical definition to state claims against.
-/

/-! ## A306011.P5358565634166169174

`A229997(A306010(n+1))`
-/

namespace A306011.P5358565634166169174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229997 (A306010 (n + 1)).toNat

end

end A306011.P5358565634166169174

/-! ## A306011.P16428594336076262427

`A229997(A334100(n+1)^A030547(n+1))`
-/

namespace A306011.P16428594336076262427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229997 (SequenceMachineLib.roundAway ((A334100 (n + 1) : ℚ) ^ (A030547 (n + 1) : ℤ))).toNat

end

end A306011.P16428594336076262427

/-! ## A306011.P7189634252289619119

`A229997(lcm(A306012(n+1), A334100(n+1)))`
-/

namespace A306011.P7189634252289619119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229997 (Int.lcm (A306012 (n + 1)) (A334100 (n + 1)))

end

end A306011.P7189634252289619119

/-! ## A306011.P11307258627182138099

`A229997(C(A334100(n+1), A030547(n+1)))`
-/

namespace A306011.P11307258627182138099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229997 (Nat.choose (A334100 (n + 1)).toNat (A030547 (n + 1)).toNat)

end

end A306011.P11307258627182138099

/-! ## A306011.P5066062024890566268

`A229997(C(A334100(n+1), A323166(n+1)))`
-/

namespace A306011.P5066062024890566268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229997 (Nat.choose (A334100 (n + 1)).toNat (A323166 (n + 1)).toNat)

end

end A306011.P5066062024890566268

/-!
# A306012: Let S(m) = d(k)/d(1) + ... + d(1)/d(k), where d(1)..d(k) are the unitary divisors of m; then a(n) is the denominator of S(m) when all the numbers S(m) are arranged in increasing order.

The programs for A306012, there is no canonical definition to state claims against.
-/

/-! ## A306012.P15920980075142872016

`A229998(A306010(n+1))`
-/

namespace A306012.P15920980075142872016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229998 (A306010 (n + 1)).toNat

end

end A306012.P15920980075142872016

/-!
# A306015: Exponential series expansion of (exp(x*y) + sinh(x) - cosh(x))/(1 - x).

The programs for A306015, the canonical program `A306015.P10934879851139084817` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306015 has offset 0).

The definition of A306015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306015.P10934879851139084817

`A094587(n)-A008290(n)*A010054(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A306015

/-- `A094587(n)-A008290(n)*A010054(n)` -/
def P10934879851139084817.Spec : Prop :=
  ∀ n, P10934879851139084817.a n = A306015 n

theorem P10934879851139084817.correct : P10934879851139084817.Spec := by
  intro n
  simp only [A306015]

end A306015

/-! ## A306015.P1480163198036768968

`A094587(n)-A010054(n)*A068106(n)`
-/

namespace A306015.P1480163198036768968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n - A010054 n * A068106 n

end

end A306015.P1480163198036768968

namespace A306015

/-- `A094587(n)-A010054(n)*A068106(n)` -/
def P1480163198036768968.Spec : Prop :=
  ∀ n, P1480163198036768968.a n = A306015 n

end A306015

/-! ## A306015.P2126289244391387102

`A094587(n)-A010054(n)*A086764(n)`
-/

namespace A306015.P2126289244391387102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n - A010054 n * A086764 n

end

end A306015.P2126289244391387102

namespace A306015

/-- `A094587(n)-A010054(n)*A086764(n)` -/
def P2126289244391387102.Spec : Prop :=
  ∀ n, P2126289244391387102.a n = A306015 n

end A306015

/-! ## A306015.P5279787834544387528

`A094587(n)-lcm(A068106(n), A197870(n))`
-/

namespace A306015.P5279787834544387528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n - (Int.lcm (A068106 n) (A197870 n) : ℤ)

end

end A306015.P5279787834544387528

namespace A306015

/-- `A094587(n)-lcm(A068106(n), A197870(n))` -/
def P5279787834544387528.Spec : Prop :=
  ∀ n, P5279787834544387528.a n = A306015 n

end A306015

/-! ## A306015.P15159273475961067196

`A094587(n)+A001489(A010054(n)*A068106(n))`
-/

namespace A306015.P15159273475961067196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n + A001489 (A010054 n * A068106 n).toNat

end

end A306015.P15159273475961067196

namespace A306015

/-- `A094587(n)+A001489(A010054(n)*A068106(n))` -/
def P15159273475961067196.Spec : Prop :=
  ∀ n, P15159273475961067196.a n = A306015 n

end A306015

/-!
# A306020: a(n) is the number of set-systems using nonempty subsets of {1,...,n} in which all sets have the same size.

The programs for A306020, the canonical program `A306020.P12964979202059882125` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306020 has offset 0).

The definition of A306020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306020.P12964979202059882125

`1-n+∑{#}[n-1, 2^C(n, #)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306020

/-- `1-n+∑{#}[n-1, 2^C(n, #)]` -/
def P12964979202059882125.Spec : Prop :=
  ∀ n, P12964979202059882125.a n = A306020 n

theorem P12964979202059882125.correct : P12964979202059882125.Spec := by
  intro n
  simp only [A306020]

end A306020

/-! ## A306020.P2995148721423749502

`∑{#}[n, 2^C(n, #)-1]`
-/

namespace A306020.P2995148721423749502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((2 ^ Nat.choose n k : ℤ) - 1)

end

end A306020.P2995148721423749502

namespace A306020

/-- `∑{#}[n, 2^C(n, #)-1]` -/
def P2995148721423749502.Spec : Prop :=
  ∀ n, P2995148721423749502.a n = A306020 n

end A306020

/-! ## A306020.P5049619231226867670

`A169974(n)-1`
-/

namespace A306020.P5049619231226867670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169974 n - 1

end

end A306020.P5049619231226867670

namespace A306020

/-- `A169974(n)-1` -/
def P5049619231226867670.Spec : Prop :=
  ∀ n, P5049619231226867670.a n = A306020 n

end A306020

/-! ## A306020.P6775802876520921759

`A001315(n)-(n+1)`
-/

namespace A306020.P6775802876520921759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001315 n - (n + 1 : ℤ)

end

end A306020.P6775802876520921759

namespace A306020

/-- `A001315(n)-(n+1)` -/
def P6775802876520921759.Spec : Prop :=
  ∀ n, P6775802876520921759.a n = A306020 n

end A306020

/-! ## A306020.P13504547876563178663

`A302546(n)+1-n`
-/

namespace A306020.P13504547876563178663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302546 n + (1 - (n : ℤ))

end

end A306020.P13504547876563178663

namespace A306020

/-- `A302546(n)+1-n` -/
def P13504547876563178663.Spec : Prop :=
  ∀ n, P13504547876563178663.a n = A306020 n

end A306020

/-!
# A306021: Number of set-systems spanning {1,...,n} in which all sets have the same size.

The programs for A306021, there is no canonical definition to state claims against.
-/

/-! ## A306021.P8199082989963205456

`A359375(2^A306098(n))`
-/

namespace A306021.P8199082989963205456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359375 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A306098 n : ℤ))).toNat

end

end A306021.P8199082989963205456

/-! ## A306021.P15920093470674117622

`A359375(∏[∏[A013609(n)]])`
-/

namespace A306021.P15920093470674117622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359375 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306021.P15920093470674117622

/-!
# A306022: Stirling transform of partitions numbers (A000041).

The programs for A306022, there is no canonical definition to state claims against.
-/

/-! ## A306022.P7158814923868151876

`A122651(∑[n^n])`
-/

namespace A306022.P7158814923868151876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306022.P7158814923868151876

/-! ## A306022.P6478146868473048787

`A176175(A111277(n))`
-/

namespace A306022.P6478146868473048787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176175 (A111277 n).toNat

end

end A306022.P6478146868473048787

/-!
# A306023: Stirling transform of partitions into distinct parts (A000009).

The programs for A306023, there is no canonical definition to state claims against.
-/

/-! ## A306023.P14480978671123873091

`A243284(A294467(n))`
-/

namespace A306023.P14480978671123873091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243284 (A294467 n).toNat

end

end A306023.P14480978671123873091

/-! ## A306023.P10793571926512514936

`A195177(A150739(n)+1)`
-/

namespace A306023.P10793571926512514936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A150739 n + 1).toNat

end

end A306023.P10793571926512514936

/-! ## A306023.P3771927448656780195

`A324748(A032527(n+1))`
-/

namespace A306023.P3771927448656780195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324748 (A032527 (n + 1)).toNat

end

end A306023.P3771927448656780195

/-!
# A306024: Number A(n,k) of length-n restricted growth strings (RGS) with growth <= k and first element in [k]; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A306024, there is no canonical definition to state claims against.
-/

/-! ## A306024.P1196691208836472429

`A124550(n)+Δ[A025469(A256116(n))]`
-/

namespace A306024.P1196691208836472429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A256116 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 n + (f1 (n + 1) - f1 n)

end

end A306024.P1196691208836472429

/-! ## A306024.P9454238367984048224

`A185284(2*n+1)+A124550(n)`
-/

namespace A306024.P9454238367984048224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A124550 n

end

end A306024.P9454238367984048224

/-! ## A306024.P126942503093965291

`A124550(n)+A018843(A008949(n))`
-/

namespace A306024.P126942503093965291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 n + A018843 (A008949 n).toNat

end

end A306024.P126942503093965291

/-! ## A306024.P14076335815345876465

`A124550(n)+A025469(A285981(n))`
-/

namespace A306024.P14076335815345876465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 n + A025469 (A285981 n).toNat

end

end A306024.P14076335815345876465

/-! ## A306024.P12348222368180774834

`or(A124550(n), A185284(A005408(n)))`
-/

namespace A306024.P12348222368180774834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124550 n) (A185284 (A005408 n).toNat)

end

end A306024.P12348222368180774834

/-!
# A306025: Number of length-n restricted growth strings (RGS) with growth <= n and first element in [n].

The programs for A306025, there is no canonical definition to state claims against.
-/

/-! ## A306025.P8581826094683228583

`A306024(C(n+n+1, 2)+n)`
-/

namespace A306025.P8581826094683228583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (Nat.choose (n + n + 1) 2 + n)

end

end A306025.P8581826094683228583

/-! ## A306025.P5300356650675011127

`A306024(∑[4*n])`
-/

namespace A306025.P5300356650675011127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306025.P5300356650675011127

/-! ## A306025.P8922929333736410922

`lcm(A033999(n), A306024(A046092(n)))`
-/

namespace A306025.P8922929333736410922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A306024 (A046092 n).toNat)

end

end A306025.P8922929333736410922

/-! ## A306025.P17644185649060048261

`A306024(A046092(n))+A000007(n+1)`
-/

namespace A306025.P17644185649060048261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (A046092 n).toNat + A000007 (n + 1)

end

end A306025.P17644185649060048261

/-! ## A306025.P16691368229390897475

`A306024(A046092(n))+A163473(n)%3`
-/

namespace A306025.P16691368229390897475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (A046092 n).toNat + Int.tmod (A163473 n) 3

end

end A306025.P16691368229390897475

/-!
# A306026: Antidiagonal sums of A306024.

The programs for A306026, there is no canonical definition to state claims against.
-/

/-! ## A306026.P17977615951634646072

`A071049(A071075(n)-A071026(n+1))`
-/

namespace A306026.P17977615951634646072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071049 (A071075 n - A071026 (n + 1)).toNat

end

end A306026.P17977615951634646072

/-! ## A306026.P17437430829324750837

`A071049(A071075(n)-A071040(n+2))`
-/

namespace A306026.P17437430829324750837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071049 (A071075 n - A071040 (n + 2)).toNat

end

end A306026.P17437430829324750837

/-! ## A306026.P7650925423328201764

`A071049(A071075(n)-A071041(n+2))`
-/

namespace A306026.P7650925423328201764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071049 (A071075 n - A071041 (n + 2)).toNat

end

end A306026.P7650925423328201764

/-! ## A306026.P5876458537776959340

`A071049(A071075(n)-A071031(2*n))`
-/

namespace A306026.P5876458537776959340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071049 (A071075 n - A071031 (2 * n)).toNat

end

end A306026.P5876458537776959340

/-!
# A306027: Number of length-n restricted growth strings (RGS) with growth <= three and first element in [3].

The programs for A306027, there is no canonical definition to state claims against.
-/

/-! ## A306027.P1686065764536759205

`A306024(∑[n+3]+n+3)`
-/

namespace A306027.P1686065764536759205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A306027.P1686065764536759205

/-! ## A306027.P18177073799634202318

`record[A306024(abs(A046691(n)))]`
-/

namespace A306027.P18177073799634202318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306027.P18177073799634202318

/-! ## A306027.P13829819840368218165

`or(1, A306024(A046691(2+n)))`
-/

namespace A306027.P13829819840368218165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A306024 (A046691 (2 + n)).toNat)

end

end A306027.P13829819840368218165

/-! ## A306027.P13653314304370753721

`record[A306024(abs(3-A000096(n)))]`
-/

namespace A306027.P13653314304370753721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 |3 - A000096 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306027.P13653314304370753721

/-! ## A306027.P6106466401422619780

`gcd(A090192(2*n), A306024(A046691(n+2)))`
-/

namespace A306027.P6106466401422619780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090192 (2 * n)) (A306024 (A046691 (n + 2)).toNat)

end

end A306027.P6106466401422619780

/-! ## A306027.P2396951039799780855

`A306024(A046691(n+2))+1-A007318(C(2, n))`
-/

namespace A306027.P2396951039799780855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (A046691 (n + 2)).toNat + (1 - A007318 (Nat.choose 2 n))

end

end A306027.P2396951039799780855

/-!
# A306028: Number of length-n restricted growth strings (RGS) with growth <= four and first element in [4].

The programs for A306028, there is no canonical definition to state claims against.
-/

/-! ## A306028.P9847239001942704958

`record[A306024(A052905(n))]`
-/

namespace A306028.P9847239001942704958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306028.P9847239001942704958

/-! ## A306028.P15371433304826840294

`A306024(A052905(2+n))`
-/

namespace A306028.P15371433304826840294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (A052905 (2 + n)).toNat

end

end A306028.P15371433304826840294

/-! ## A306028.P5538633694062735409

`A306024(eq[4, A025581(n)])`
-/

namespace A306028.P5538633694062735409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306028.P5538633694062735409

/-! ## A306028.P5933026370728462212

`A306024(eq[16, A130321(n)])`
-/

namespace A306028.P5933026370728462212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306028.P5933026370728462212

/-! ## A306028.P12461005229780116987

`record[A306024(A055999(n)+1)]`
-/

namespace A306028.P12461005229780116987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306028.P12461005229780116987

/-! ## A306028.P657620610494581752

`A306024(eq[5, A004736(n+1)])`
-/

namespace A306028.P657620610494581752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306028.P657620610494581752

/-! ## A306028.P14506296710260427678

`record[A306024(abs(A046691(n))-1)]`
-/

namespace A306028.P14506296710260427678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306028.P14506296710260427678

/-! ## A306028.P16999424178666942861

`record[A306024(A046691(n+1)-1)]`
-/

namespace A306028.P16999424178666942861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306028.P16999424178666942861

/-! ## A306028.P411411495105557029

`A306024(eq[2, A144257(n+1)-2])`
-/

namespace A306028.P411411495105557029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306028.P411411495105557029

/-! ## A306028.P16998763345660259804

`A306024(eq[2, A144257(n+1)/2])`
-/

namespace A306028.P16998763345660259804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144257 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A306028.P16998763345660259804

/-!
# A306029: Number of length-n restricted growth strings (RGS) with growth <= five and first element in [5].

The programs for A306029, there is no canonical definition to state claims against.
-/

/-! ## A306029.P16572737407918371730

`record[A306024(n*(n+7)/2)]`
-/

namespace A306029.P16572737407918371730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.roundAway ((n * (n + 7) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306029.P16572737407918371730

/-! ## A306029.P13206688249270541906

`A306024(A055999(n+3))`
-/

namespace A306029.P13206688249270541906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (A055999 (n + 3)).toNat

end

end A306029.P13206688249270541906

/-! ## A306029.P9971428690438417907

`A306024(eq[5, A025581(n)])`
-/

namespace A306029.P9971428690438417907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306029.P9971428690438417907

/-! ## A306029.P16250956122839024787

`A306024(eq[6, A193739(n)])`
-/

namespace A306029.P16250956122839024787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306029.P16250956122839024787

/-! ## A306029.P17187019653650209207

`A306024(eq[6, A195663(n)])`
-/

namespace A306029.P17187019653650209207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306029.P17187019653650209207

/-! ## A306029.P11612526460687371174

`A306024(eq[11, A099375(n)])`
-/

namespace A306029.P11612526460687371174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306029.P11612526460687371174

/-! ## A306029.P5859313421310096483

`A306024(eq[6, A004736(n+1)])`
-/

namespace A306029.P5859313421310096483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306029.P5859313421310096483

/-!
# A306030: Number of length-n restricted growth strings (RGS) with growth <= six and first element in [6].

The programs for A306030, there is no canonical definition to state claims against.
-/

/-! ## A306030.P4539558331899221214

`A306024(eq[6, A025581(n)])`
-/

namespace A306030.P4539558331899221214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306030.P4539558331899221214

/-! ## A306030.P3553820703990914911

`A306024(eq[7, A193739(n)])`
-/

namespace A306030.P3553820703990914911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306030.P3553820703990914911

/-! ## A306030.P2922234963216068328

`A306024(eq[7, A195663(n)])`
-/

namespace A306030.P2922234963216068328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306030.P2922234963216068328

/-! ## A306030.P4077929279148191340

`A306024(eq[13, A099375(n)])`
-/

namespace A306030.P4077929279148191340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306030.P4077929279148191340

/-! ## A306030.P14864708732593451003

`A306024(eq[7, A004736(n+1)])`
-/

namespace A306030.P14864708732593451003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306030.P14864708732593451003

/-!
# A306031: Number of length-n restricted growth strings (RGS) with growth <= seven and first element in [7].

The programs for A306031, there is no canonical definition to state claims against.
-/

/-! ## A306031.P12353689618609340656

`A306024(eq[7, A025581(n)])`
-/

namespace A306031.P12353689618609340656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306031.P12353689618609340656

/-! ## A306031.P10825650798642268213

`A306024(eq[8, A193739(n)])`
-/

namespace A306031.P10825650798642268213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306031.P10825650798642268213

/-! ## A306031.P15305758585128735067

`A306024(eq[8, A195663(n)])`
-/

namespace A306031.P15305758585128735067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306031.P15305758585128735067

/-! ## A306031.P6418402500390704786

`A306024(eq[15, A099375(n)])`
-/

namespace A306031.P6418402500390704786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306031.P6418402500390704786

/-! ## A306031.P7600556919799669393

`A306024(eq[8, A004736(n+1)])`
-/

namespace A306031.P7600556919799669393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306031.P7600556919799669393

/-!
# A306032: Number of length-n restricted growth strings (RGS) with growth <= eight and first element in [8].

The programs for A306032, there is no canonical definition to state claims against.
-/

/-! ## A306032.P18086185062452026501

`A306024(eq[7, A116598(n)])`
-/

namespace A306032.P18086185062452026501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306032.P18086185062452026501

/-! ## A306032.P16207328621738394377

`A306024(eq[8, A025581(n)])`
-/

namespace A306032.P16207328621738394377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306032.P16207328621738394377

/-! ## A306032.P17759584188383249050

`A306024(eq[9, A193739(n)])`
-/

namespace A306032.P17759584188383249050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306032.P17759584188383249050

/-! ## A306032.P15515598475082327218

`A306024(eq[9, A195663(n)])`
-/

namespace A306032.P15515598475082327218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306032.P15515598475082327218

/-! ## A306032.P9136230655208114517

`A306024(eq[9, A004736(n+1)])`
-/

namespace A306032.P9136230655208114517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306032.P9136230655208114517

/-!
# A306033: Number of length-n restricted growth strings (RGS) with growth <= nine and first element in [9].

The programs for A306033, there is no canonical definition to state claims against.
-/

/-! ## A306033.P5917207421529280993

`A306024(eq[8, A116598(n)])`
-/

namespace A306033.P5917207421529280993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306033.P5917207421529280993

/-! ## A306033.P16866596497157497285

`A306024(eq[9, A025581(n)])`
-/

namespace A306033.P16866596497157497285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306033.P16866596497157497285

/-! ## A306033.P14672781424999813948

`A306024(eq[10, A193739(n)])`
-/

namespace A306033.P14672781424999813948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306033.P14672781424999813948

/-! ## A306033.P14936205571754053879

`A306024(eq[10, A195663(n)])`
-/

namespace A306033.P14936205571754053879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306033.P14936205571754053879

/-! ## A306033.P8088364537387744715

`A306024(eq[10, A004736(n+1)])`
-/

namespace A306033.P8088364537387744715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306033.P8088364537387744715

/-! ## A306033.P13083470070694991116

`A306024(eq[10, A134231(n+1)])`
-/

namespace A306033.P13083470070694991116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306033.P13083470070694991116

/-!
# A306034: Number of length-n restricted growth strings (RGS) with growth <= ten and first element in [10].

The programs for A306034, there is no canonical definition to state claims against.
-/

/-! ## A306034.P3566074653100173298

`A306024(eq[10, A025581(n)])`
-/

namespace A306034.P3566074653100173298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306034.P3566074653100173298

/-! ## A306034.P287073160209957245

`A306024(eq[11, A193739(n)])`
-/

namespace A306034.P287073160209957245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306034.P287073160209957245

/-! ## A306034.P1736293526217968796

`A306024(eq[11, A195663(n)])`
-/

namespace A306034.P1736293526217968796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306034.P1736293526217968796

/-! ## A306034.P7906171487518232251

`A306024(eq[12, A116598(n)])`
-/

namespace A306034.P7906171487518232251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306034.P7906171487518232251

/-! ## A306034.P6798458717367987477

`record[A306024(∑[A057717(n)])]`
-/

namespace A306034.P6798458717367987477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306034.P6798458717367987477

/-! ## A306034.P2275890704621850557

`A306024(eq[10, A144257(n+1)])`
-/

namespace A306034.P2275890704621850557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306034.P2275890704621850557

/-! ## A306034.P6764312554693413210

`A306024(eq[11, A004736(n+1)])`
-/

namespace A306034.P6764312554693413210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306034.P6764312554693413210

/-!
# A306035: Indices of records in A305382.

The programs for A306035, there is no canonical definition to state claims against.
-/

/-! ## A306035.P8733756627670958059

`A316226(record[A305382(n+1)])`
-/

namespace A306035.P8733756627670958059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316226 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306035.P8733756627670958059

/-! ## A306035.P7314312434944148544

`filter[A316226(n+8), A309754(#)]`
-/

namespace A306035.P7314312434944148544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316226 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A309754 (f1 j).toNat = 1) n)

end

end A306035.P7314312434944148544

/-!
# A306037: Expansion of e.g.f. 1/(1 + log(1 - log(1 + x))).

The programs for A306037, there is no canonical definition to state claims against.
-/

/-! ## A306037.P5587598982986518812

`∑[floor(sqrt(A306731(n²)))-A000196(n)]`
-/

namespace A306037.P5587598982986518812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A306731 (n ^ 2)) - A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306037.P5587598982986518812

/-! ## A306037.P15835594215666506633

`A187184(A054726(n))+A033312(n)`
-/

namespace A306037.P15835594215666506633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187184 (A054726 n).toNat + A033312 n

end

end A306037.P15835594215666506633

/-! ## A306037.P351640868768870205

`A373772(n)-A056654(A002995(n))`
-/

namespace A306037.P351640868768870205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373772 n - A056654 (A002995 n).toNat

end

end A306037.P351640868768870205

/-!
# A306038: Expansion of e.g.f. (1 + x)/(1 - log(1 + x)).

The programs for A306038, there is no canonical definition to state claims against.
-/

/-! ## A306038.P11951599431744330879

`A108125(n)+A006252(n)`
-/

namespace A306038.P11951599431744330879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108125 n + A006252 n

end

end A306038.P11951599431744330879

/-! ## A306038.P17579206977417990955

`A006252(n)+n*A006252(abs(1-n))`
-/

namespace A306038.P17579206977417990955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 n + (n : ℤ) * A006252 |1 - (n : ℤ)|.toNat

end

end A306038.P17579206977417990955

/-! ## A306038.P6048413217763463970

`A108125(n)+A317280(n)-A320344(n)`
-/

namespace A306038.P6048413217763463970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108125 n + (A317280 n - A320344 n)

end

end A306038.P6048413217763463970

/-! ## A306038.P11448884829087636014

`A108125(n)-(A320344(A118759(n))-A317280(n))`
-/

namespace A306038.P11448884829087636014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108125 n - (A320344 (A118759 n).toNat - A317280 n)

end

end A306038.P11448884829087636014

/-! ## A306038.P2870438736821358285

`A108125(n)+A108125(n+1)/(n+1)`
-/

namespace A306038.P2870438736821358285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108125 n : ℚ) + (A108125 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A306038.P2870438736821358285

/-!
# A306041: Expansion of e.g.f. Product_{k>=1} (1 + x^k/k!)/(1 - x^k/k!).

The programs for A306041, there is no canonical definition to state claims against.
-/

/-! ## A306041.P11627292953392697649

`row(∑{#}[A345870(n), #])`
-/

namespace A306041.P11627292953392697649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345870 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A306041.P11627292953392697649

/-! ## A306041.P5947196214816853547

`A068937(lt[0, ∑{p}[2*n, 4-#]]!)`
-/

namespace A306041.P5947196214816853547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), (4 - (p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (Nat.factorial (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n))

end

end A306041.P5947196214816853547

/-!
# A306043: Lexicographically first sequence of distinct positive squares, no two or more of which sum to a square.

The programs for A306043, there is no canonical definition to state claims against.
-/

/-! ## A306043.P9890409137113895640

`∑[A194543(A186760(n))]²`
-/

namespace A306043.P9890409137113895640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A186760 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A306043.P9890409137113895640

/-! ## A306043.P7786242483621875208

`∑[A099386(A286697(n))]²`
-/

namespace A306043.P7786242483621875208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099386 (A286697 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A306043.P7786242483621875208

/-! ## A306043.P14225761457364736493

`∑[A285573(A008311(∑[n]))]²`
-/

namespace A306043.P14225761457364736493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (A008311 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A306043.P14225761457364736493

/-! ## A306043.P12294286667941605288

`record[A324572(A175612(n+1))²]`
-/

namespace A306043.P12294286667941605288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324572 (A175612 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306043.P12294286667941605288

/-!
# A306044: Powers of 2, 3 and 5.

The programs for A306044, there is no canonical definition to state claims against.
-/

/-! ## A306044.P10331807458805447706

`∩[A105317(n+1), A337801(n+1)]`
-/

namespace A306044.P10331807458805447706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306044.P10331807458805447706

/-! ## A306044.P11724907804251252992

`∩[A105317(n+1), A325662(n+1)]`
-/

namespace A306044.P11724907804251252992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306044.P11724907804251252992

/-! ## A306044.P11199761780449303266

`∩[A257997(n+1), A325662(n+1)]`
-/

namespace A306044.P11199761780449303266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306044.P11199761780449303266

/-! ## A306044.P7604394648259154308

`∩[A258023(n+1), A325662(n+1)]`
-/

namespace A306044.P7604394648259154308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306044.P7604394648259154308

/-! ## A306044.P13565571970986468596

`∩[A325662(n+1), A337800(n+1)]`
-/

namespace A306044.P13565571970986468596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306044.P13565571970986468596

/-! ## A306044.P2099792149486693514

`∩[A325662(n+1), A337801(n+1)]`
-/

namespace A306044.P2099792149486693514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306044.P2099792149486693514

/-! ## A306044.P631483730329801657

`∩[A051037(n+1), A325662(n+1)]`
-/

namespace A306044.P631483730329801657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306044.P631483730329801657

/-! ## A306044.P14028770419767907437

`record[A112763(n+1)^A112759(n+1)]`
-/

namespace A306044.P14028770419767907437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112763 (n + 1) : ℚ) ^ (A112759 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306044.P14028770419767907437

/-! ## A306044.P5215457332004873490

`A051037(eq[A112763(n+1), A112764(n+1)]+1)`
-/

namespace A306044.P5215457332004873490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A306044.P5215457332004873490

/-! ## A306044.P11734381109721015596

`∩[A325662(n+1), A342950(n+1)]`
-/

namespace A306044.P11734381109721015596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306044.P11734381109721015596

/-!
# A306045: Expansion of e.g.f. Product_{k>=1} (1 + (exp(x) - 1)^k) / (1 - (exp(x) - 1)^k).

The programs for A306045, there is no canonical definition to state claims against.
-/

/-! ## A306045.P17293892610058601524

`A004277(A000557(n))-A000629(n)`
-/

namespace A306045.P17293892610058601524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000557 n).toNat - A000629 n

end

end A306045.P17293892610058601524

/-! ## A306045.P9253687554751897137

`A004277(A000557(n)-A000670(n))`
-/

namespace A306045.P9253687554751897137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000557 n - A000670 n).toNat

end

end A306045.P9253687554751897137

/-!
# A306046: Expansion of e.g.f. Product_{k>=1} 1/(1 - (exp(x) - 1)^k)^k.

The programs for A306046, there is no canonical definition to state claims against.
-/

/-! ## A306046.P12896959203716770486

`A294178(A326885(n)-A306083(n))`
-/

namespace A306046.P12896959203716770486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 (A326885 n - A306083 n).toNat

end

end A306046.P12896959203716770486

/-!
# A306047: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306047, there is no canonical definition to state claims against.
-/

/-! ## A306047.P4606425278202672536

`A306053(∑[4*n]+1)`
-/

namespace A306047.P4606425278202672536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A306047.P4606425278202672536

/-! ## A306047.P4324122326969725778

`record[A306053(A330613(n+1))]`
-/

namespace A306047.P4324122326969725778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306047.P4324122326969725778

/-! ## A306047.P7575856769139062032

`A306053(A001844(n))+char[12]`
-/

namespace A306047.P7575856769139062032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A306047.P7575856769139062032

/-! ## A306047.P15375821040760795789

`record[A003982(n)*A306053(n+1)]`
-/

namespace A306047.P15375821040760795789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A306053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306047.P15375821040760795789

/-! ## A306047.P4050458982950608847

`record[gcd(A008482(n), A306053(n+1))]`
-/

namespace A306047.P4050458982950608847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A306053 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306047.P4050458982950608847

/-!
# A306048: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306048, there is no canonical definition to state claims against.
-/

/-! ## A306048.P6914354522561086733

`A306053(∑[n+2]+4)`
-/

namespace A306048.P6914354522561086733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A306048.P6914354522561086733

/-! ## A306048.P11849411311985612237

`or(char[1], A306053(A167614(n+1)))`
-/

namespace A306048.P11849411311985612237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A306053 (A167614 (n + 1)).toNat)

end

end A306048.P11849411311985612237

/-! ## A306048.P12653571747389673780

`A306053(A167614(n+1))%A074877(n)`
-/

namespace A306048.P12653571747389673780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306053 (A167614 (n + 1)).toNat) (A074877 n)

end

end A306048.P12653571747389673780

/-! ## A306048.P9053837065702409798

`(A000041(n)%2)!*A306053(A167614(n+1))`
-/

namespace A306048.P9053837065702409798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A306053 (A167614 (n + 1)).toNat

end

end A306048.P9053837065702409798

/-! ## A306048.P564829522439522154

`A038500(3*n+4)*A306053(A167614(n+1))`
-/

namespace A306048.P564829522439522154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (3 * n + 4) * A306053 (A167614 (n + 1)).toNat

end

end A306048.P564829522439522154

/-!
# A306049: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306049, there is no canonical definition to state claims against.
-/

/-! ## A306049.P13383082004356786783

`A306053(A374004(n+1))`
-/

namespace A306049.P13383082004356786783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A374004 (n + 1)).toNat

end

end A306049.P13383082004356786783

/-! ## A306049.P9194790738361810146

`A306053(A145018(n+4))`
-/

namespace A306049.P9194790738361810146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A145018 (n + 4)).toNat

end

end A306049.P9194790738361810146

/-! ## A306049.P7171663345227678037

`A306053(A141214(n)+7)`
-/

namespace A306049.P7171663345227678037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A141214 n + 7).toNat

end

end A306049.P7171663345227678037

/-! ## A306049.P8232435887426935119

`A306053(A052905(n)+9)`
-/

namespace A306049.P8232435887426935119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A052905 n + 9).toNat

end

end A306049.P8232435887426935119

/-! ## A306049.P5765040914206170050

`A306053(A055999(n)+10)`
-/

namespace A306049.P5765040914206170050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A055999 n + 10).toNat

end

end A306049.P5765040914206170050

/-!
# A306050: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306050, there is no canonical definition to state claims against.
-/

/-! ## A306050.P12954915122597745988

`A306053(A374005(n+1))`
-/

namespace A306050.P12954915122597745988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A374005 (n + 1)).toNat

end

end A306050.P12954915122597745988

/-! ## A306050.P5785780858324724745

`A306053(A167499(n+3))`
-/

namespace A306050.P5785780858324724745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A167499 (n + 3)).toNat

end

end A306050.P5785780858324724745

/-! ## A306050.P5293266539909321032

`A306053(A155212(n)+13)`
-/

namespace A306050.P5293266539909321032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A155212 n + 13).toNat

end

end A306050.P5293266539909321032

/-! ## A306050.P2733394840771127804

`A306053(A056000(n)+15)`
-/

namespace A306050.P2733394840771127804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A056000 n + 15).toNat

end

end A306050.P2733394840771127804

/-! ## A306050.P11902481962464552772

`A306053(A000217(n+4)+5)`
-/

namespace A306050.P11902481962464552772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A000217 (n + 4) + 5).toNat

end

end A306050.P11902481962464552772

/-!
# A306051: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306051, there is no canonical definition to state claims against.
-/

/-! ## A306051.P4171433063738896114

`A306053(A374007(n+1))`
-/

namespace A306051.P4171433063738896114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A374007 (n + 1)).toNat

end

end A306051.P4171433063738896114

/-! ## A306051.P3051884314121312873

`A306053(A166136(n+4))`
-/

namespace A306051.P3051884314121312873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A166136 (n + 4)).toNat

end

end A306051.P3051884314121312873

/-! ## A306051.P14349129686943330761

`A306053(A056115(n)+21)`
-/

namespace A306051.P14349129686943330761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A056115 n + 21).toNat

end

end A306051.P14349129686943330761

/-! ## A306051.P15027166773951547001

`A306053(Δ[A255994(n+2)])`
-/

namespace A306051.P15027166773951547001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (f1 (n + 1) - f1 n).toNat

end

end A306051.P15027166773951547001

/-! ## A306051.P10490059173104382252

`A306053(A167499(n+4)+1)`
-/

namespace A306051.P10490059173104382252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A167499 (n + 4) + 1).toNat

end

end A306051.P10490059173104382252

/-!
# A306052: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306052, there is no canonical definition to state claims against.
-/

/-! ## A306052.P3765161572317553370

`A306053(A374008(n+1))`
-/

namespace A306052.P3765161572317553370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A374008 (n + 1)).toNat

end

end A306052.P3765161572317553370

/-! ## A306052.P11311899943029660266

`A306053(A167487(n+5))`
-/

namespace A306052.P11311899943029660266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A167487 (n + 5)).toNat

end

end A306052.P11311899943029660266

/-! ## A306052.P9639010912865138849

`A306053(A056119(n)+28)`
-/

namespace A306052.P9639010912865138849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A056119 n + 28).toNat

end

end A306052.P9639010912865138849

/-! ## A306052.P9418179443460559597

`A306053(A000217(n+6)+7)`
-/

namespace A306052.P9418179443460559597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A000217 (n + 6) + 7).toNat

end

end A306052.P9418179443460559597

/-! ## A306052.P6533685781279150898

`A306053(A055999(n+3)+13)`
-/

namespace A306052.P6533685781279150898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (A055999 (n + 3) + 13).toNat

end

end A306052.P6533685781279150898

/-!
# A306053: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306053, there is no canonical definition to state claims against.
-/

/-! ## A306053.P10852945654350981550

`A317230(n+1)-A186745(A306100(n))`
-/

namespace A306053.P10852945654350981550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (n + 1) - A186745 (A306100 n).toNat

end

end A306053.P10852945654350981550

/-! ## A306053.P16936345447202374576

`A317230(n+1)+A016389(A022166(n))`
-/

namespace A306053.P16936345447202374576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (n + 1) + A016389 (A022166 n).toNat

end

end A306053.P16936345447202374576

/-! ## A306053.P140396417299259838

`A317230(n+1)+A016389(A027336(n))`
-/

namespace A306053.P140396417299259838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (n + 1) + A016389 (A027336 n).toNat

end

end A306053.P140396417299259838

/-! ## A306053.P17141013674424884513

`A317230(n+1)+A290531(A056940(n))`
-/

namespace A306053.P17141013674424884513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (n + 1) + A290531 (A056940 n).toNat

end

end A306053.P17141013674424884513

/-! ## A306053.P8767042212336736623

`A326291(A146987(n))+A316289(n+1)`
-/

namespace A306053.P8767042212336736623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A146987 n).toNat + A316289 (n + 1)

end

end A306053.P8767042212336736623

/-!
# A306054: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306054, there is no canonical definition to state claims against.
-/

/-! ## A306054.P11997052639342122655

`A306060(∑[4*n]+1)`
-/

namespace A306054.P11997052639342122655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A306054.P11997052639342122655

/-! ## A306054.P11650826626335368590

`record[A306060(Δ[A235355(n)])]`
-/

namespace A306054.P11650826626335368590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306054.P11650826626335368590

/-! ## A306054.P12083950517181011245

`record[A306060(A330613(n+1))]`
-/

namespace A306054.P12083950517181011245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306054.P12083950517181011245

/-! ## A306054.P1149121764878485016

`A306060(A001844(n))+char[10]`
-/

namespace A306054.P1149121764878485016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A306054.P1149121764878485016

/-! ## A306054.P4607575529378658979

`record[A306060(Δ[A079824(n+1)])]`
-/

namespace A306054.P4607575529378658979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306054.P4607575529378658979

/-!
# A306055: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306055, there is no canonical definition to state claims against.
-/

/-! ## A306055.P16349276185513284255

`A306060(∑[n+2]+4)`
-/

namespace A306055.P16349276185513284255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A306055.P16349276185513284255

/-! ## A306055.P16455589012435248612

`A306060(A152950(n+3))+char[23]`
-/

namespace A306055.P16455589012435248612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (A152950 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A306055.P16455589012435248612

/-! ## A306055.P13143737108486850056

`or(char[2], A306060(A055998(n)+6))`
-/

namespace A306055.P13143737108486850056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A306060 (A055998 n + 6).toNat)

end

end A306055.P13143737108486850056

/-! ## A306055.P14193574471284476630

`lcm((-1)^n, A306060(A167614(n+1)))`
-/

namespace A306055.P14193574471284476630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A306060 (A167614 (n + 1)).toNat)

end

end A306055.P14193574471284476630

/-! ## A306055.P12625781704570878958

`A306060(A167614(n+1))+A185264(n)`
-/

namespace A306055.P12625781704570878958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (A167614 (n + 1)).toNat + A185264 n

end

end A306055.P12625781704570878958

/-!
# A306056: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306056, there is no canonical definition to state claims against.
-/

/-! ## A306056.P1026515402251705698

`A306060(∑[n+3]+7)`
-/

namespace A306056.P1026515402251705698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A306056.P1026515402251705698

/-! ## A306056.P14285002475001042789

`A306060(A055999(n)+10)+char[20]`
-/

namespace A306056.P14285002475001042789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A306056.P14285002475001042789

/-! ## A306056.P14463798270987013113

`A007318(C(2, n))*A306060(A055999(n)+10)`
-/

namespace A306056.P14463798270987013113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A306060 (A055999 n + 10).toNat

end

end A306056.P14463798270987013113

/-!
# A306057: Number of n X 5 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306057, there is no canonical definition to state claims against.
-/

/-! ## A306057.P1856600442615969956

`A306060(∑[n+4]+11)`
-/

namespace A306057.P1856600442615969956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A306057.P1856600442615969956

/-! ## A306057.P9177736458742020354

`A152845(n)*A306060(eq[6, A131818(n+1)])`
-/

namespace A306057.P9177736458742020354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152845 n * A306060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306057.P9177736458742020354

/-! ## A306057.P13101347193458033106

`A219347(A219347(n))*A306060(A374005(n+1))`
-/

namespace A306057.P13101347193458033106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A219347 n).toNat * A306060 (A374005 (n + 1)).toNat

end

end A306057.P13101347193458033106

/-! ## A306057.P4858549888795109978

`A306060(A374005(n+1))/A219347(A219347(n+3))`
-/

namespace A306057.P4858549888795109978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306060 (A374005 (n + 1)).toNat : ℚ) / (A219347 (A219347 (n + 3)).toNat : ℚ)

end

end A306057.P4858549888795109978

/-!
# A306058: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306058, there is no canonical definition to state claims against.
-/

/-! ## A306058.P18272208381023333297

`A306060(∑[n+5]+16)`
-/

namespace A306058.P18272208381023333297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A306058.P18272208381023333297

/-! ## A306058.P18200216749625640638

`A306060(A000217(n+5)+6)+char[17]`
-/

namespace A306058.P18200216749625640638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A306058.P18200216749625640638

/-! ## A306058.P3201094187115698318

`A306060(A133263(n+5)+4)+char[30]`
-/

namespace A306058.P3201094187115698318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (A133263 (n + 5) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A306058.P3201094187115698318

/-! ## A306058.P1233450780480397146

`A040372(2*n+1)*A306060(A374007(n+1))`
-/

namespace A306058.P1233450780480397146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040372 (2 * n + 1) * A306060 (A374007 (n + 1)).toNat

end

end A306058.P1233450780480397146

/-! ## A306058.P7558887550240374653

`A306060(A374007(n+1))%A025018(3*n+5)`
-/

namespace A306058.P7558887550240374653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306060 (A374007 (n + 1)).toNat) (A025018 (3 * n + 5))

end

end A306058.P7558887550240374653

/-!
# A306059: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306059, there is no canonical definition to state claims against.
-/

/-! ## A306059.P3703334732420419281

`A306060(A374008(n+1))`
-/

namespace A306059.P3703334732420419281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (A374008 (n + 1)).toNat

end

end A306059.P3703334732420419281

/-! ## A306059.P11620167789199793005

`A306060(A056119(n)+28)`
-/

namespace A306059.P11620167789199793005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (A056119 n + 28).toNat

end

end A306059.P11620167789199793005

/-! ## A306059.P6596407618556516515

`A306060(eq[11, A066657(n)])`
-/

namespace A306059.P6596407618556516515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306059.P6596407618556516515

/-! ## A306059.P6554729786252662169

`A306060(A167499(n+5)+2)`
-/

namespace A306059.P6554729786252662169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (A167499 (n + 5) + 2).toNat

end

end A306059.P6554729786252662169

/-! ## A306059.P3913371816728783798

`A306060(A133263(n+6)+5)`
-/

namespace A306059.P3913371816728783798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (A133263 (n + 6) + 5).toNat

end

end A306059.P3913371816728783798

/-!
# A306060: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306060, there is no canonical definition to state claims against.
-/

/-! ## A306060.P13651157749762941801

`A317238(n+1)-A186034(A022167(n))`
-/

namespace A306060.P13651157749762941801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (n + 1) - A186034 (A022167 n).toNat

end

end A306060.P13651157749762941801

/-! ## A306060.P16723096366819428084

`A317238(n+1)-A173920(A173917(n))`
-/

namespace A306060.P16723096366819428084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (n + 1) - A173920 (A173917 n).toNat

end

end A306060.P16723096366819428084

/-! ## A306060.P14963371938616851431

`A316545(n+1)+A001222(A219987(n)!)`
-/

namespace A306060.P14963371938616851431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (n + 1) + A001222 (Nat.factorial (A219987 n).toNat)

end

end A306060.P14963371938616851431

/-! ## A306060.P14043382361906223187

`A316545(n+1)+A025465(A003099(n))`
-/

namespace A306060.P14043382361906223187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (n + 1) + A025465 (A003099 n).toNat

end

end A306060.P14043382361906223187

/-! ## A306060.P2478128247110278426

`A316545(n+1)+A060862(A153651(n+1))`
-/

namespace A306060.P2478128247110278426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (n + 1) + A060862 (A153651 (n + 1)).toNat

end

end A306060.P2478128247110278426

/-!
# A306062: O.g.f. A(x) satisfies: Sum_{n>=0} log( (1 + 2^n*x) / A(x) )^n / n! = 1.

The programs for A306062, there is no canonical definition to state claims against.
-/

/-! ## A306062.P4849736371825416736

`A305776(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=24`
-/

namespace A306062.P4849736371825416736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 24] fun n a =>
  A305776 (a (n - 1)).toNat

end

end A306062.P4849736371825416736

/-!
# A306064: G.f. A(x) satisfies: A(x) = x + x*A(x + A(x)).

The programs for A306064, there is no canonical definition to state claims against.
-/

/-! ## A306064.P14168269354681662015

`∑[A130290(A083670(n))]`
-/

namespace A306064.P14168269354681662015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (A083670 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306064.P14168269354681662015

/-!
# A306065: E.g.f. A(x) satisfies: Sum_{n>=0} (-x)^n/n! * Product_{k=0..n} (n+1-k) - (k+1)*A(x) = 0.

The programs for A306065, there is no canonical definition to state claims against.
-/

/-! ## A306065.P6085557746400820244

`abs(A306066(n+1)/(n+1))`
-/

namespace A306065.P6085557746400820244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A306066 (n + 1) : ℚ) / (n + 1 : ℚ)|

end

end A306065.P6085557746400820244

/-! ## A306065.P16956652548991962726

`A306066(n+1)/A038608(n+1)`
-/

namespace A306065.P16956652548991962726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306066 (n + 1) : ℚ) / (A038608 (n + 1) : ℚ)

end

end A306065.P16956652548991962726

/-!
# A306066: E.g.f. A(x) satisfies: Sum_{n>=0} 1/n! * Product_{k=0..n} (n+1-k)*x + (k+1)*A(x) = 0.

The programs for A306066, there is no canonical definition to state claims against.
-/

/-! ## A306066.P3460191864290846168

`A038608(n+1)*A306065(n)`
-/

namespace A306066.P3460191864290846168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (n + 1) * A306065 n

end

end A306066.P3460191864290846168

/-! ## A306066.P4266541042195936336

`(A383710(n²-n)+A328913(3*n+2))*A038608(n+1)`
-/

namespace A306066.P4266541042195936336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A383710 (n ^ 2 - n) + A328913 (3 * n + 2)) * A038608 (n + 1)

end

end A306066.P4266541042195936336

/-!
# A306067: E.g.f. A(x) satisfies: Sum_{n>=0} (-x)^n/n! * Product_{k=0..n} (n-k) + (k+1)*A(x) = 1.

The programs for A306067, there is no canonical definition to state claims against.
-/

/-! ## A306067.P2739339445178348922

`A293521(A186244(n))+A054474(n)`
-/

namespace A306067.P2739339445178348922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293521 (A186244 n).toNat + A054474 n

end

end A306067.P2739339445178348922

/-!
# A306069: Partial sums of A286324: Sum_{k=1..n} bd(k) where bd(k) is the number of bi-unitary divisors of k.

The programs for A306069, the canonical program `A306069.P13567570020237059925` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306069 has offset 1).

The definition of A306069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306069.P13567570020237059925

`∑[∏{e}[n+1, #%2+#]]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306069

/-- `∑[∏{e}[n+1, #%2+#]]` -/
def P13567570020237059925.Spec : Prop :=
  ∀ n, (P13567570020237059925.a n : ℤ) = A306069 (n + 1)

theorem P13567570020237059925.correct : P13567570020237059925.Spec := by
  intro n
  simp only [A306069, Nat.add_sub_cancel]

end A306069

/-! ## A306069.P13751614337499206710

`∑[∏{e}[n+1, and(1, #)+#]]`
-/

namespace A306069.P13751614337499206710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.land 1 (Nat.factorization (f2 n) p) + Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306069.P13751614337499206710

namespace A306069

/-- `∑[∏{e}[n+1, and(1, #)+#]]` -/
def P13751614337499206710.Spec : Prop :=
  ∀ n, (P13751614337499206710.a n : ℤ) = A306069 (n + 1)

theorem P13751614337499206710.correct : P13751614337499206710.Spec := by
  intro n
  simp only [A306069, Nat.add_sub_cancel, A306069.P13751614337499206710.f2, A306069.P13751614337499206710.f1, A306069.P13751614337499206710.a, A306069.P13567570020237059925.f2, A306069.P13567570020237059925.f1, A306069.P13567570020237059925.a, SequenceMachineLib.memo_apply]
  try simp

end A306069

/-! ## A306069.P3017705520941331238

`∑[∏{e}[n+1, 2*ceil(#/2)]]`
-/

namespace A306069.P3017705520941331238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 * ⌈(Nat.factorization (f2 n) p : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306069.P3017705520941331238

namespace A306069

/-- `∑[∏{e}[n+1, 2*ceil(#/2)]]` -/
def P3017705520941331238.Spec : Prop :=
  ∀ n, P3017705520941331238.a n = A306069 (n + 1)

end A306069

/-! ## A306069.P6443345422050388663

`∑[A286324(1+n)]`
-/

namespace A306069.P6443345422050388663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306069.P6443345422050388663

namespace A306069

/-- `∑[A286324(1+n)]` -/
def P6443345422050388663.Spec : Prop :=
  ∀ n, P6443345422050388663.a n = A306069 (n + 1)

end A306069

/-! ## A306069.P515028496226985960

`∑[A000005(A350390(n+1))]`
-/

namespace A306069.P515028496226985960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A350390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306069.P515028496226985960

namespace A306069

/-- `∑[A000005(A350390(n+1))]` -/
def P515028496226985960.Spec : Prop :=
  ∀ n, P515028496226985960.a n = A306069 (n + 1)

end A306069

/-! ## A306069.P8955942097532371434

`∑[A000005(gcd(n+1, A011262(n+1)))]`
-/

namespace A306069.P8955942097532371434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) (A011262 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306069.P8955942097532371434

namespace A306069

/-- `∑[A000005(gcd(n+1, A011262(n+1)))]` -/
def P8955942097532371434.Spec : Prop :=
  ∀ n, P8955942097532371434.a n = A306069 (n + 1)

end A306069

/-! ## A306069.P3705694016352399402

`eq[1, A222266(n+2)]+1`
-/

namespace A306069.P3705694016352399402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A306069.P3705694016352399402

namespace A306069

/-- `eq[1, A222266(n+2)]+1` -/
def P3705694016352399402.Spec : Prop :=
  ∀ n, (P3705694016352399402.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P9547234404445190336

`eq[A088440(n), A222266(n+1)]`
-/

namespace A306069.P9547234404445190336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P9547234404445190336

namespace A306069

/-- `eq[A088440(n), A222266(n+1)]` -/
def P9547234404445190336.Spec : Prop :=
  ∀ n, (P9547234404445190336.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P11779405257249181362

`eq[A097325(n), A222266(n+1)]`
-/

namespace A306069.P11779405257249181362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P11779405257249181362

namespace A306069

/-- `eq[A097325(n), A222266(n+1)]` -/
def P11779405257249181362.Spec : Prop :=
  ∀ n, (P11779405257249181362.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P7558305088644843059

`eq[A098725(n), A222266(n+1)]`
-/

namespace A306069.P7558305088644843059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P7558305088644843059

namespace A306069

/-- `eq[A098725(n), A222266(n+1)]` -/
def P7558305088644843059.Spec : Prop :=
  ∀ n, (P7558305088644843059.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P9487684246556366169

`eq[A115971(n), A222266(n+1)]`
-/

namespace A306069.P9487684246556366169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P9487684246556366169

namespace A306069

/-- `eq[A115971(n), A222266(n+1)]` -/
def P9487684246556366169.Spec : Prop :=
  ∀ n, (P9487684246556366169.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P6736199800923397740

`eq[A166486(n), A222266(n+1)]`
-/

namespace A306069.P6736199800923397740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P6736199800923397740

namespace A306069

/-- `eq[A166486(n), A222266(n+1)]` -/
def P6736199800923397740.Spec : Prop :=
  ∀ n, (P6736199800923397740.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P7122917855989534691

`eq[A168181(n), A222266(n+1)]`
-/

namespace A306069.P7122917855989534691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P7122917855989534691

namespace A306069

/-- `eq[A168181(n), A222266(n+1)]` -/
def P7122917855989534691.Spec : Prop :=
  ∀ n, (P7122917855989534691.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P10348261460725275443

`eq[A168185(n), A222266(n+1)]`
-/

namespace A306069.P10348261460725275443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P10348261460725275443

namespace A306069

/-- `eq[A168185(n), A222266(n+1)]` -/
def P10348261460725275443.Spec : Prop :=
  ∀ n, (P10348261460725275443.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P12306849464075904708

`eq[A222266(n+1), A316829(n)]`
-/

namespace A306069.P12306849464075904708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P12306849464075904708

namespace A306069

/-- `eq[A222266(n+1), A316829(n)]` -/
def P12306849464075904708.Spec : Prop :=
  ∀ n, (P12306849464075904708.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P15140058827072738652

`eq[A222266(n+1), A257680(n)]`
-/

namespace A306069.P15140058827072738652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P15140058827072738652

namespace A306069

/-- `eq[A222266(n+1), A257680(n)]` -/
def P15140058827072738652.Spec : Prop :=
  ∀ n, (P15140058827072738652.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P18170499709240983156

`eq[A000035(n), A222266(n+1)]`
-/

namespace A306069.P18170499709240983156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P18170499709240983156

namespace A306069

/-- `eq[A000035(n), A222266(n+1)]` -/
def P18170499709240983156.Spec : Prop :=
  ∀ n, (P18170499709240983156.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P2507498483124057343

`eq[A088705(n), A222266(n+1)]`
-/

namespace A306069.P2507498483124057343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P2507498483124057343

namespace A306069

/-- `eq[A088705(n), A222266(n+1)]` -/
def P2507498483124057343.Spec : Prop :=
  ∀ n, (P2507498483124057343.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P9019325495961039242

`eq[A222266(n+1), A276950(n)]`
-/

namespace A306069.P9019325495961039242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P9019325495961039242

namespace A306069

/-- `eq[A222266(n+1), A276950(n)]` -/
def P9019325495961039242.Spec : Prop :=
  ∀ n, (P9019325495961039242.a n : ℤ) = A306069 (n + 1)

end A306069

/-! ## A306069.P14979342595369174323

`eq[A052552(n), A222266(n+1)]`
-/

namespace A306069.P14979342595369174323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306069.P14979342595369174323

namespace A306069

/-- `eq[A052552(n), A222266(n+1)]` -/
def P14979342595369174323.Spec : Prop :=
  ∀ n, (P14979342595369174323.a n : ℤ) = A306069 (n + 1)

end A306069

/-!
# A306070: Partial sums of A116550: Sum_{k=1..n} bphi(k) where bphi(k) is the bi-unitary analog of Euler's totient function.

The programs for A306070, there is no canonical definition to state claims against.
-/

/-! ## A306070.P14227225114912132110

`∑[A116550(n+1)]`
-/

namespace A306070.P14227225114912132110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306070.P14227225114912132110

/-! ## A306070.P8841278676164357687

`A116550(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A306070.P8841278676164357687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116550 (n + 1) + a (A023443 n).toNat

end

end A306070.P8841278676164357687

/-! ## A306070.P6449561794893089723

`a(n-1)+A116550(n+1)%A116555(n)` with `a(0)=1, a(1)=2`
-/

namespace A306070.P6449561794893089723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.tmod (A116550 (n + 1)) (A116555 n)

end

end A306070.P6449561794893089723

/-! ## A306070.P15722669668600256634

`a(n-1)+A059841(2*n)*A116550(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A306070.P15722669668600256634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A059841 (2 * n) * A116550 (n + 1)

end

end A306070.P15722669668600256634

/-! ## A306070.P173069266407700033

`eq[A267084(n+1), A384244(n+1)]`
-/

namespace A306070.P173069266407700033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306070.P173069266407700033

/-! ## A306070.P6593568817235745812

`eq[A054977(n), A384244(n+1)]`
-/

namespace A306070.P6593568817235745812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306070.P6593568817235745812

/-! ## A306070.P3582392641014384734

`eq[A057427(n), A384244(n+1)]`
-/

namespace A306070.P3582392641014384734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306070.P3582392641014384734

/-! ## A306070.P5347752331371562066

`eq[A158388(n), A384244(n+1)]`
-/

namespace A306070.P5347752331371562066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306070.P5347752331371562066

/-! ## A306070.P8787809749228103823

`eq[A367623(n+1), A384244(n+1)]`
-/

namespace A306070.P8787809749228103823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306070.P8787809749228103823

/-!
# A306073: Bases in which 3 is a unique-period prime.

The programs for A306073, there is no canonical definition to state claims against.
-/

/-! ## A306073.P15747928719559685932

`A004524(eq[3, A006530(A302032(n+1))])`
-/

namespace A306073.P15747928719559685932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A302032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306073.P15747928719559685932

/-! ## A306073.P10264160067292464144

`A068962(eq[3, A006530(A068962(n+1))])`
-/

namespace A306073.P10264160067292464144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A068962 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306073.P10264160067292464144

/-! ## A306073.P9417534479762205526

`eq[A080116(3*n), A356266(∏{p}[n+1, #]+1)]`
-/

namespace A306073.P9417534479762205526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (3 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356266 (∏ p ∈ Nat.primeFactors (f3 n), p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306073.P9417534479762205526

/-!
# A306080: Expansion of e.g.f. Product_{k>=1} (1 + (exp(x) - 1)^k)^k.

The programs for A306080, there is no canonical definition to state claims against.
-/

/-! ## A306080.P9350449445053222810

`or(1, A140106(A300701(n)))`
-/

namespace A306080.P9350449445053222810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A140106 (A300701 n).toNat)

end

end A306080.P9350449445053222810

/-! ## A306080.P17947608404148526379

`A026741(A050351(n)+A001117(n))`
-/

namespace A306080.P17947608404148526379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A050351 n + A001117 n).toNat

end

end A306080.P17947608404148526379

/-!
# A306081: Expansion of e.g.f. Product_{k>=1} ((1 + (exp(x) - 1)^k) / (1 - (exp(x) - 1)^k))^k.

The programs for A306081, there is no canonical definition to state claims against.
-/

/-! ## A306081.P13414502816383601618

`A007913(A326886(n))`
-/

namespace A306081.P13414502816383601618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A326886 n).toNat

end

end A306081.P13414502816383601618

/-! ## A306081.P6951438496046956244

`A040271(A326884(n))*A326886(n)`
-/

namespace A306081.P6951438496046956244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040271 (A326884 n).toNat * A326886 n

end

end A306081.P6951438496046956244

/-!
# A306082: Expansion of e.g.f. Product_{k>=1} 1/(1 - (exp(x) - 1)^(k^2)).

The programs for A306082, there is no canonical definition to state claims against.
-/

/-! ## A306082.P16324380941300313417

`A000027(A076726(n)-A101052(n))`
-/

namespace A306082.P16324380941300313417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A076726 n - A101052 n).toNat

end

end A306082.P16324380941300313417

/-! ## A306082.P5568923679722136345

`A023443(A076726(n)-(3^n-∑[2^n]))`
-/

namespace A306082.P5568923679722136345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A076726 n - ((3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat

end

end A306082.P5568923679722136345

/-! ## A306082.P8593168005294189004

`A028310(abs(3^n+1-∑[2^n]-A000629(n)))`
-/

namespace A306082.P8593168005294189004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |(3 ^ n : ℤ) + (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) - A000629 n|.toNat

end

end A306082.P8593168005294189004

/-!
# A306083: Expansion of e.g.f. Product_{k>=1} (1 + (exp(x) - 1)^(k^2)).

The programs for A306083, there is no canonical definition to state claims against.
-/

/-! ## A306083.P14243672808495437469

`A103214(A056281(n+1))`
-/

namespace A306083.P14243672808495437469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (A056281 (n + 1)).toNat

end

end A306083.P14243672808495437469

/-! ## A306083.P2393273994558515295

`A000027(A028245(n+1)+1)`
-/

namespace A306083.P2393273994558515295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A028245 (n + 1) + 1).toNat

end

end A306083.P2393273994558515295

/-! ## A306083.P15966210465266841562

`A028245(A032555(n+1))+1`
-/

namespace A306083.P15966210465266841562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028245 (A032555 (n + 1)).toNat + 1

end

end A306083.P15966210465266841562

/-! ## A306083.P5546108605824334120

`A028245(A032559(n+1))+1`
-/

namespace A306083.P5546108605824334120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028245 (A032559 (n + 1)).toNat + 1

end

end A306083.P5546108605824334120

/-! ## A306083.P13964000743570262232

`A335438(A062272(n))+A028245(n+1)`
-/

namespace A306083.P13964000743570262232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335438 (A062272 n).toNat + A028245 (n + 1)

end

end A306083.P13964000743570262232

/-!
# A306084: Primes which remain prime after all even digits are removed.

The programs for A306084, there is no canonical definition to state claims against.
-/

/-! ## A306084.P17948284784709400290

`∪[A030096(n+1), A306085(n+1)]`
-/

namespace A306084.P17948284784709400290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306084.P17948284784709400290

/-! ## A306084.P8455580677035388480

`p?[∪[A014261(n+1), A306085(n+1)]]`
-/

namespace A306084.P8455580677035388480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306085 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A306084.P8455580677035388480

/-! ## A306084.P11339780913252320635

`p?[∪[A066640(n+1), A306085(n+1)]]`
-/

namespace A306084.P11339780913252320635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306085 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A306084.P11339780913252320635

/-! ## A306084.P429517798226912594

`p?[A001222(A225985(n+1))*A007957(n+1)]`
-/

namespace A306084.P429517798226912594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225985 (n + 1)).toNat * A007957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306084.P429517798226912594

/-! ## A306084.P8155176615855149789

`p?[A028813(n+2)]`
-/

namespace A306084.P8155176615855149789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028813 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306084.P8155176615855149789

/-!
# A306085: Primes which have an even decimal digit and remain prime after all even digits are removed.

The programs for A306085, there is no canonical definition to state claims against.
-/

/-! ## A306085.P8054264035986594094

`∩[A007929(n+1), A306084(n+1)]`
-/

namespace A306085.P8054264035986594094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306085.P8054264035986594094

/-! ## A306085.P16059278946036589732

`∩[A007930(n+1), A306084(n+1)]`
-/

namespace A306085.P16059278946036589732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306085.P16059278946036589732

/-! ## A306085.P14607860294878028385

`∩[A007928(n+1), A306084(n+1)]`
-/

namespace A306085.P14607860294878028385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306085.P14607860294878028385

/-! ## A306085.P6907124446570604356

`∩[A118070(n+1), A306084(n+1)]`
-/

namespace A306085.P6907124446570604356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306085.P6907124446570604356

/-! ## A306085.P17616270649689114005

`p?[A318700(2*n+1)]`
-/

namespace A306085.P17616270649689114005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318700 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306085.P17616270649689114005

/-!
# A306086: Primes which remain prime after all odd digits are deleted.

The programs for A306086, there is no canonical definition to state claims against.
-/

/-! ## A306086.P15465664589728678344

`p?[eq[2, A001613(n)]]`
-/

namespace A306086.P15465664589728678344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A306086.P15465664589728678344

/-! ## A306086.P752640285550933052

`eq[A001613(n), A092976(n)]`
-/

namespace A306086.P752640285550933052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306086.P752640285550933052

/-! ## A306086.P15363764818851826971

`eq[A001613(n), A225244(n)]`
-/

namespace A306086.P15363764818851826971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306086.P15363764818851826971

/-! ## A306086.P17249223395165863214

`eq[A001613(n), A327859(n)]`
-/

namespace A306086.P17249223395165863214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306086.P17249223395165863214

/-! ## A306086.P9700222013029830205

`eq[A001613(n), A373982(n)]`
-/

namespace A306086.P9700222013029830205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306086.P9700222013029830205

/-! ## A306086.P9095645600838040450

`eq[A001613(n), A398023(n)]`
-/

namespace A306086.P9095645600838040450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306086.P9095645600838040450

/-! ## A306086.P14484763106113153889

`eq[A001613(n), A400153(n)]`
-/

namespace A306086.P14484763106113153889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306086.P14484763106113153889

/-! ## A306086.P17165305444778184082

`record[A014963(eq[2, A001613(n)])]`
-/

namespace A306086.P17165305444778184082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306086.P17165305444778184082

/-! ## A306086.P4668770265210648444

`eq[2, A001613(n)+A237053(n)²]`
-/

namespace A306086.P4668770265210648444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n + A237053 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306086.P4668770265210648444

/-! ## A306086.P2449368442137194743

`eq[A001613(n), A237053(A237053(n)²)]`
-/

namespace A306086.P2449368442137194743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A237053 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306086.P2449368442137194743

/-!
# A306090: G.f. A(x) satisfies: (1 + A(x))^A(x) = (1 + x)^x ; this sequence gives the numerators of the coefficients of x^n in g.f. A(x).

The programs for A306090, there is no canonical definition to state claims against.
-/

/-! ## A306090.P9116617905731574323

`A132968(∑[A000367(n)]²)`
-/

namespace A306090.P9116617905731574323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132968 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A306090.P9116617905731574323

/-! ## A306090.P3968682948915471968

`A051775(A197213(n+1))-1`
-/

namespace A306090.P3968682948915471968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (A197213 (n + 1)).toNat - 1

end

end A306090.P3968682948915471968

/-!
# A306091: G.f. A(x) satisfies: (1 + A(x))^A(x) = (1 + x)^x ; this sequence gives the denominators of the coefficients of x^n in g.f. A(x).

The programs for A306091, there is no canonical definition to state claims against.
-/

/-! ## A306091.P8423849290049320147

`A333963(A037400(n+1))`
-/

namespace A306091.P8423849290049320147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333963 (A037400 (n + 1)).toNat

end

end A306091.P8423849290049320147

/-! ## A306091.P4469717993548213458

`A120383(∑[A000332(n)!])`
-/

namespace A306091.P4469717993548213458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000332 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306091.P4469717993548213458

/-!
# A306092: G.f. A(x) satisfies: (1 + A(x))^A(x) = (1+x)^x, where A(x) = Sum_{n>=1} a(n)*x^n/(2*n-1)!.

The programs for A306092, there is no canonical definition to state claims against.
-/

/-! ## A306092.P10492625548417035329

`∏[-A344153(A066641(n+1))]`
-/

namespace A306092.P10492625548417035329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A344153 (A066641 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306092.P10492625548417035329

/-!
# A306093: Number of plane partitions of n where parts are colored in 3 colors.

The programs for A306093, there is no canonical definition to state claims against.
-/

/-! ## A306093.P5728822340887211775

`A306101(∑[n+2]-1)`
-/

namespace A306093.P5728822340887211775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306101 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A306093.P5728822340887211775

/-! ## A306093.P218872607018845991

`A306101(A034856(n+1))%A048711(n)`
-/

namespace A306093.P218872607018845991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306101 (A034856 (n + 1)).toNat) (A048711 n)

end

end A306093.P218872607018845991

/-! ## A306093.P8161293356658231762

`A306101(A034856(n+1))+A180601(n+1)`
-/

namespace A306093.P8161293356658231762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306101 (A034856 (n + 1)).toNat + A180601 (n + 1)

end

end A306093.P8161293356658231762

/-! ## A306093.P13199022938514253221

`A306100(∑[n+4]+2)`
-/

namespace A306093.P13199022938514253221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A306093.P13199022938514253221

/-! ## A306093.P18327726898005761416

`record[A306100(abs(A046691(n)))]`
-/

namespace A306093.P18327726898005761416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306093.P18327726898005761416

/-!
# A306094: Number of plane partitions of n where parts are colored in (at most) 4 colors.

The programs for A306094, there is no canonical definition to state claims against.
-/

/-! ## A306094.P15919522063549722914

`A306100(∑[n+5]+5)`
-/

namespace A306094.P15919522063549722914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A306094.P15919522063549722914

/-! ## A306094.P7730518916272024710

`record[A306100(A052905(n))]`
-/

namespace A306094.P7730518916272024710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306094.P7730518916272024710

/-! ## A306094.P3823028703671839868

`record[A306100(A055999(n)+1)]`
-/

namespace A306094.P3823028703671839868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306094.P3823028703671839868

/-! ## A306094.P3505242305595032713

`record[A306100(abs(A046691(n))-1)]`
-/

namespace A306094.P3505242305595032713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306094.P3505242305595032713

/-! ## A306094.P2962020211973525216

`record[A306100(A046691(n+1)-1)]`
-/

namespace A306094.P2962020211973525216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306094.P2962020211973525216

/-!
# A306095: Number of plane partitions of n where parts are colored in (at most) 5 colors.

The programs for A306095, there is no canonical definition to state claims against.
-/

/-! ## A306095.P8788113964595446109

`record[A306100(A055999(n))]`
-/

namespace A306095.P8788113964595446109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306095.P8788113964595446109

/-! ## A306095.P781539540784178430

`A306100(A055999(n+3))`
-/

namespace A306095.P781539540784178430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (A055999 (n + 3)).toNat

end

end A306095.P781539540784178430

/-! ## A306095.P11209613456990297413

`record[A306100(∑[A020705(n)])]`
-/

namespace A306095.P11209613456990297413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306095.P11209613456990297413

/-! ## A306095.P16592225124871027021

`A306100(Δ[A023551(n+1)])`
-/

namespace A306095.P16592225124871027021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (f1 (n + 1) - f1 n).toNat

end

end A306095.P16592225124871027021

/-! ## A306095.P2217195109651958156

`record[A306100(A052905(n)-1)]`
-/

namespace A306095.P2217195109651958156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306095.P2217195109651958156

/-!
# A306096: Number of plane partitions of n where parts are colored in (at most) 6 colors.

The programs for A306096, there is no canonical definition to state claims against.
-/

/-! ## A306096.P12136875485184774140

`A306100(eq[6, A025581(n)])`
-/

namespace A306096.P12136875485184774140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306096.P12136875485184774140

/-! ## A306096.P15796397763231385838

`A306100(A055999(n+4)-1)`
-/

namespace A306096.P15796397763231385838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (A055999 (n + 4) - 1).toNat

end

end A306096.P15796397763231385838

/-! ## A306096.P11277590360788941151

`A306100(A000217(n+7)-7)`
-/

namespace A306096.P11277590360788941151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (A000217 (n + 7) - 7).toNat

end

end A306096.P11277590360788941151

/-! ## A306096.P13539853426279252941

`A306100(A000124(n+7)-8)`
-/

namespace A306096.P13539853426279252941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (A000124 (n + 7) - 8).toNat

end

end A306096.P13539853426279252941

/-! ## A306096.P14985082796940388682

`A306100(eq[7, A004736(n+1)])`
-/

namespace A306096.P14985082796940388682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306096.P14985082796940388682

/-!
# A306098: Number of equivalence classes, modulo transposition, of non-symmetric plane partitions of n.

The programs for A306098, there is no canonical definition to state claims against.
-/

/-! ## A306098.P14203445034324201264

`(A000219(n)-A005987(n))/2`
-/

namespace A306098.P14203445034324201264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000219 n - A005987 n : ℚ) / 2

end

end A306098.P14203445034324201264

/-! ## A306098.P8143850101866501246

`A000219(n)-A048140(round(sqrt(n²+1)))`
-/

namespace A306098.P8143850101866501246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n - A048140 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A306098.P8143850101866501246

/-! ## A306098.P15646734274410201727

`A048140(round(sqrt(n²+1)))-A005987(n)`
-/

namespace A306098.P15646734274410201727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048140 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A005987 n

end

end A306098.P15646734274410201727

/-! ## A306098.P6128726351065684439

`(A242642(A179865(n+1))-A005987(n))/2`
-/

namespace A306098.P6128726351065684439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242642 (A179865 (n + 1)).toNat - A005987 n : ℚ) / 2

end

end A306098.P6128726351065684439

/-! ## A306098.P8623418194561832923

`(A242642(A000007(n)+∑[n])-A005987(n))/2`
-/

namespace A306098.P8623418194561832923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242642 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat - A005987 n : ℚ) / 2

end

end A306098.P8623418194561832923

/-! ## A306098.P16830714278246197173

`(A000712(n)+A116600(n)-A011782(n)-A005987(n))/2`
-/

namespace A306098.P16830714278246197173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000712 n + (A116600 n - A011782 n) - A005987 n : ℚ) / 2

end

end A306098.P16830714278246197173

/-! ## A306098.P3326045323150312530

`(A091360(n+1)-(A191659(n)+A091360(n))-A005987(n))/2`
-/

namespace A306098.P3326045323150312530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091360 (n + 1) - (A191659 n + A091360 n) - A005987 n : ℚ) / 2

end

end A306098.P3326045323150312530

/-!
# A306099: Number of plane partitions of n where parts are colored in 2 colors.

The programs for A306099, there is no canonical definition to state claims against.
-/

/-! ## A306099.P13578322326844724562

`A306101(A212342(n+1))`
-/

namespace A306099.P13578322326844724562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306101 (A212342 (n + 1)).toNat

end

end A306099.P13578322326844724562

/-! ## A306099.P9994423728622249637

`A306101(A028310(∑[n]+n))`
-/

namespace A306099.P9994423728622249637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306101 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A306099.P9994423728622249637

/-! ## A306099.P1028087750172557535

`record[gcd(A306100(n+1), A306101(n+1))]`
-/

namespace A306099.P1028087750172557535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306100 (n + 1)) (A306101 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306099.P1028087750172557535

/-! ## A306099.P10924535470786974280

`A306101(∑[A003602(A267872(n))])`
-/

namespace A306099.P10924535470786974280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A267872 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306099.P10924535470786974280

/-! ## A306099.P17153411180717398892

`A306101(∑[A008619(A267872(n))])`
-/

namespace A306099.P17153411180717398892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A267872 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306099.P17153411180717398892

/-! ## A306099.P17930133325812225051

`A306101(A152947(n+1)+A004273(n))`
-/

namespace A306099.P17930133325812225051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306101 (A152947 (n + 1) + A004273 n).toNat

end

end A306099.P17930133325812225051

