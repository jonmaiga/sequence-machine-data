import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
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
import SequenceMachineLib.Triangle

/-!
# A385200: The sum of the exponents e for the integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a prime power p^e.

The programs for A385200, there is no canonical definition to state claims against.
-/

/-! ## A385200.P13066527881874461984

`A300233(n+1)-A292589(A097181(n))`
-/

namespace A385200.P13066527881874461984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300233 (n + 1) - A292589 (A097181 n).toNat

end

end A385200.P13066527881874461984

/-! ## A385200.P12620332406917234176

`A322390(n+1)-A059841(A363143(n))`
-/

namespace A385200.P12620332406917234176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (n + 1) - A059841 (A363143 n).toNat

end

end A385200.P12620332406917234176

/-! ## A385200.P6207486873747267096

`A374992(A115122(n+1))`
-/

namespace A385200.P6207486873747267096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374992 (A115122 (n + 1)).toNat

end

end A385200.P6207486873747267096

/-! ## A385200.P10780974108733065732

`A382397(A386946(n+1))`
-/

namespace A385200.P10780974108733065732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (A386946 (n + 1)).toNat

end

end A385200.P10780974108733065732

/-! ## A385200.P14898944746019228599

`A332433(A329605(2*n+3))+∏{e}[n+1, #+1]`
-/

namespace A385200.P14898944746019228599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332433 (A329605 (2 * n + 3)).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A385200.P14898944746019228599

/-!
# A385201: Palindromic primes indexed by palindromic primes.

The programs for A385201, there is no canonical definition to state claims against.
-/

/-! ## A385201.P7664339513334357820

`A002385(A002385(n+1))`
-/

namespace A385201.P7664339513334357820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A002385 (n + 1)).toNat

end

end A385201.P7664339513334357820

/-! ## A385201.P11249579098257185631

`A083139(A083139(1+n))`
-/

namespace A385201.P11249579098257185631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083139 (A083139 (1 + n)).toNat

end

end A385201.P11249579098257185631

/-! ## A385201.P14604887327813806485

`A002385(eq[n, A062584(A004086(n))])`
-/

namespace A385201.P14604887327813806485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A385201.P14604887327813806485

/-! ## A385201.P2821397014564723312

`A069217(1+A069217(2+n))`
-/

namespace A385201.P2821397014564723312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (1 + A069217 (2 + n)).toNat

end

end A385201.P2821397014564723312

/-!
# A385203: G.f. A(x) satisfies A(x) = ( 1 + 25*x*A(x)^2 )^(1/5).

The programs for A385203, there is no canonical definition to state claims against.
-/

/-! ## A385203.P3949913264677168311

`Δ[(A093312(A283136(n)+1)+1)²]^n`
-/

namespace A385203.P3949913264677168311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093312 (A283136 n + 1).toNat + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A385203.P3949913264677168311

/-!
# A385204: G.f. A(x) satisfies A(x) = ( 1 + 25*x*A(x)^3 )^(1/5).

The programs for A385204, there is no canonical definition to state claims against.
-/

/-! ## A385204.P6791448675191547226

`A000351(n)*A029881(A249931(n))`
-/

namespace A385204.P6791448675191547226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A029881 (A249931 n).toNat

end

end A385204.P6791448675191547226

/-!
# A385205: G.f. A(x) satisfies A(x) = ( 1 + 25*x*A(x)^4 )^(1/5).

The programs for A385205, there is no canonical definition to state claims against.
-/

/-! ## A385205.P6654163777174408602

`5^n*A038548(A053763(n))`
-/

namespace A385205.P6654163777174408602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A038548 (A053763 n).toNat

end

end A385205.P6654163777174408602

/-!
# A385207: G.f. A(x) satisfies A(x) = ( 1 + 49*x*A(x)^6 )^(1/7).

The programs for A385207, there is no canonical definition to state claims against.
-/

/-! ## A385207.P9377179885709604312

`A000420(n)*A209334(A000108(n+1))`
-/

namespace A385207.P9377179885709604312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n * A209334 (A000108 (n + 1)).toNat

end

end A385207.P9377179885709604312

/-!
# A385212: a(n) = n^(mu(n)^2), where mu is the Möbius function (A008683).

The programs for A385212, the canonical program `A385212.P9842174822720494087` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385212 has offset 1).

The definition of A385212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385212.P15302174770823865120

`1+A008683(n+1)²*n`
-/

namespace A385212.P15302174770823865120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A008683 (n + 1) ^ 2 * (n : ℤ)

end

end A385212.P15302174770823865120

namespace A385212

/-- `1+A008683(n+1)²*n` -/
def P15302174770823865120.Spec : Prop :=
  ∀ n, P15302174770823865120.a n = A385212 (n + 1)

end A385212

/-! ## A385212.P14424496974886547052

`(n+1)^A008683(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385212.P14424496974886547052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (n + 1) ^ 2 : ℤ)

end

end A385212.P14424496974886547052

namespace A385212

/-- `(n+1)^A008683(n+1)²` -/
def P14424496974886547052.Spec : Prop :=
  ∀ n, P14424496974886547052.a n = (A385212 (n + 1) : ℚ)

end A385212

/-! ## A385212.P9842174822720494087

`abs(A055615(n+1))+A107078(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A385212

/-- `abs(A055615(n+1))+A107078(n+1)` -/
def P9842174822720494087.Spec : Prop :=
  ∀ n, P9842174822720494087.a n = A385212 (n + 1)

theorem P9842174822720494087.correct : P9842174822720494087.Spec := by
  intro n
  simp only [A385212, Nat.add_sub_cancel]

end A385212

/-! ## A385212.P7522274640838650424

`∑{d}[n+1, A344465(#)*A008683((n+1)/#)]`
-/

namespace A385212.P7522274640838650424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344465 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385212.P7522274640838650424

namespace A385212

/-- `∑{d}[n+1, A344465(#)*A008683((n+1)/#)]` -/
def P7522274640838650424.Spec : Prop :=
  ∀ n, P7522274640838650424.a n = A385212 (n + 1)

end A385212

/-! ## A385212.P12359879314697089874

`∏{p}[C(∏{p}[n+1, #], n), #]`
-/

namespace A385212.P12359879314697089874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A385212.P12359879314697089874

namespace A385212

/-- `∏{p}[C(∏{p}[n+1, #], n), #]` -/
def P12359879314697089874.Spec : Prop :=
  ∀ n, (P12359879314697089874.a n : ℤ) = A385212 (n + 1)

end A385212

/-! ## A385212.P6135316741118568143

`(n+1)^floor(1/∏{e}[n+1, #])`
-/

namespace A385212.P6135316741118568143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (⌊1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌋ : ℤ)

end

end A385212.P6135316741118568143

namespace A385212

/-- `(n+1)^floor(1/∏{e}[n+1, #])` -/
def P6135316741118568143.Spec : Prop :=
  ∀ n, P6135316741118568143.a n = (A385212 (n + 1) : ℚ)

end A385212

/-! ## A385212.P11365410691280019852

`ceil((n+1)^(2-∏{e}[n+1, #]))`
-/

namespace A385212.P11365410691280019852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) ^ (2 - ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) : ℤ)⌉

end

end A385212.P11365410691280019852

namespace A385212

/-- `ceil((n+1)^(2-∏{e}[n+1, #]))` -/
def P11365410691280019852.Spec : Prop :=
  ∀ n, P11365410691280019852.a n = A385212 (n + 1)

end A385212

/-! ## A385212.P3908540184511122581

`(n+1)^and(1, ∏{e}[n+1, #!])`
-/

namespace A385212.P3908540184511122581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))

end

end A385212.P3908540184511122581

namespace A385212

/-- `(n+1)^and(1, ∏{e}[n+1, #!])` -/
def P3908540184511122581.Spec : Prop :=
  ∀ n, (P3908540184511122581.a n : ℤ) = A385212 (n + 1)

end A385212

/-! ## A385212.P12939119369025486177

`ceil((n+1)^(∏{p}[n+1, #]-n))`
-/

namespace A385212.P12939119369025486177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) ^ (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - (n : ℤ) : ℤ)⌉

end

end A385212.P12939119369025486177

namespace A385212

/-- `ceil((n+1)^(∏{p}[n+1, #]-n))` -/
def P12939119369025486177.Spec : Prop :=
  ∀ n, P12939119369025486177.a n = A385212 (n + 1)

end A385212

/-! ## A385212.P10773644386160878918

`floor((n+1)/(n+2-∏{p}[n+1, #]))`
-/

namespace A385212.P10773644386160878918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((n + 2 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℚ)⌋

end

end A385212.P10773644386160878918

namespace A385212

/-- `floor((n+1)/(n+2-∏{p}[n+1, #]))` -/
def P10773644386160878918.Spec : Prop :=
  ∀ n, P10773644386160878918.a n = A385212 (n + 1)

end A385212

/-! ## A385212.P8049490491634261698

`(n+1)^floor(∏{p}[n+1, #]/(n+1))`
-/

namespace A385212.P8049490491634261698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (⌊((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (n + 1 : ℚ)⌋ : ℤ)

end

end A385212.P8049490491634261698

namespace A385212

/-- `(n+1)^floor(∏{p}[n+1, #]/(n+1))` -/
def P8049490491634261698.Spec : Prop :=
  ∀ n, P8049490491634261698.a n = (A385212 (n + 1) : ℚ)

end A385212

/-! ## A385212.P586788723189095406

`(n+1)^round(∏{p}[n+1, #]/(n+2))`
-/

namespace A385212.P586788723189095406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (n + 2 : ℚ)) : ℤ)

end

end A385212.P586788723189095406

namespace A385212

/-- `(n+1)^round(∏{p}[n+1, #]/(n+2))` -/
def P586788723189095406.Spec : Prop :=
  ∀ n, P586788723189095406.a n = (A385212 (n + 1) : ℚ)

end A385212

/-! ## A385212.P16429233928285754228

`∏{p}[A055615(n+1), #]`
-/

namespace A385212.P16429233928285754228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A385212.P16429233928285754228

namespace A385212

/-- `∏{p}[A055615(n+1), #]` -/
def P16429233928285754228.Spec : Prop :=
  ∀ n, (P16429233928285754228.a n : ℤ) = A385212 (n + 1)

end A385212

/-! ## A385212.P15205849898450525597

`∏{p}[A140700(n+1), #]`
-/

namespace A385212.P15205849898450525597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A385212.P15205849898450525597

namespace A385212

/-- `∏{p}[A140700(n+1), #]` -/
def P15205849898450525597.Spec : Prop :=
  ∀ n, (P15205849898450525597.a n : ℤ) = A385212 (n + 1)

end A385212

/-! ## A385212.P14482567969100975570

`n*A008966(n+1)+1`
-/

namespace A385212.P14482567969100975570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008966 (n + 1) + 1

end

end A385212.P14482567969100975570

namespace A385212

/-- `n*A008966(n+1)+1` -/
def P14482567969100975570.Spec : Prop :=
  ∀ n, P14482567969100975570.a n = A385212 (n + 1)

end A385212

/-! ## A385212.P11854454237978161402

`(n+1)^A069158(n+1)²`
-/

namespace A385212.P11854454237978161402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A069158 (n + 1) ^ 2 : ℤ)

end

end A385212.P11854454237978161402

namespace A385212

/-- `(n+1)^A069158(n+1)²` -/
def P11854454237978161402.Spec : Prop :=
  ∀ n, P11854454237978161402.a n = (A385212 (n + 1) : ℚ)

end A385212

/-! ## A385212.P11069663135993255177

`(n+1)^A080323(n+1)²`
-/

namespace A385212.P11069663135993255177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A080323 (n + 1) ^ 2 : ℤ)

end

end A385212.P11069663135993255177

namespace A385212

/-- `(n+1)^A080323(n+1)²` -/
def P11069663135993255177.Spec : Prop :=
  ∀ n, P11069663135993255177.a n = (A385212 (n + 1) : ℚ)

end A385212

/-! ## A385212.P15362756654261190258

`(n+1)^A157657(n+1)²`
-/

namespace A385212.P15362756654261190258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A157657 (n + 1) ^ 2 : ℤ)

end

end A385212.P15362756654261190258

namespace A385212

/-- `(n+1)^A157657(n+1)²` -/
def P15362756654261190258.Spec : Prop :=
  ∀ n, P15362756654261190258.a n = (A385212 (n + 1) : ℚ)

end A385212

/-! ## A385212.P4726031137707376332

`(n+1)^A157658(n+1)²`
-/

namespace A385212.P4726031137707376332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A157658 (n + 1) ^ 2 : ℤ)

end

end A385212.P4726031137707376332

namespace A385212

/-- `(n+1)^A157658(n+1)²` -/
def P4726031137707376332.Spec : Prop :=
  ∀ n, P4726031137707376332.a n = (A385212 (n + 1) : ℚ)

end A385212

/-! ## A385212.P9534258517223446224

`(n+1)^A359155(n+1)²`
-/

namespace A385212.P9534258517223446224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A359155 (n + 1) ^ 2 : ℤ)

end

end A385212.P9534258517223446224

namespace A385212

/-- `(n+1)^A359155(n+1)²` -/
def P9534258517223446224.Spec : Prop :=
  ∀ n, P9534258517223446224.a n = (A385212 (n + 1) : ℚ)

end A385212

/-!
# A385213: Number of maximal runs of consecutive parts increasing by 1 in the prime indices of n (with multiplicity).

The programs for A385213, there is no canonical definition to state claims against.
-/

/-! ## A385213.P7529851177498792559

`A287170(n+1)+A046660(n+1)`
-/

namespace A385213.P7529851177498792559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1) + A046660 (n + 1)

end

end A385213.P7529851177498792559

/-! ## A385213.P6872892495503268642

`A375136(n+1)+A073490(n+1)`
-/

namespace A385213.P6872892495503268642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375136 (n + 1) + A073490 (n + 1)

end

end A385213.P6872892495503268642

/-! ## A385213.P5102841838932069530

`∑{e}[n+1, #]-A341596(A322361(n+1))`
-/

namespace A385213.P5102841838932069530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A341596 (A322361 (n + 1)).toNat

end

end A385213.P5102841838932069530

/-! ## A385213.P4323849197326040969

`val(∏{e}[n+1, 2^#], 2)-A001221(A330749(n+1))`
-/

namespace A385213.P4323849197326040969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) 2 : ℤ) - A001221 (A330749 (n + 1)).toNat

end

end A385213.P4323849197326040969

/-! ## A385213.P9897743672581871631

`A287170(n+1)+A056239(A000688(n+1))`
-/

namespace A385213.P9897743672581871631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1) + A056239 (A000688 (n + 1)).toNat

end

end A385213.P9897743672581871631

/-! ## A385213.P17632297305144440729

`A287170(n+1)+A253555(A381455(n+1))`
-/

namespace A385213.P17632297305144440729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1) + A253555 (A381455 (n + 1)).toNat

end

end A385213.P17632297305144440729

/-! ## A385213.P3529858804578538066

`A001222(n+1)-A001221(A322361(n+1))`
-/

namespace A385213.P3529858804578538066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001221 (A322361 (n + 1)).toNat

end

end A385213.P3529858804578538066

/-! ## A385213.P13577351798834953658

`A001222(n+1)-A001221(A330749(n+1))`
-/

namespace A385213.P13577351798834953658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001221 (A330749 (n + 1)).toNat

end

end A385213.P13577351798834953658

/-!
# A385214: Number of subsets of {1..n} without all equal lengths of maximal runs of consecutive elements increasing by 1.

The programs for A385214, there is no canonical definition to state claims against.
-/

/-! ## A385214.P11573060337783897701

`2^n-A243815(n)`
-/

namespace A385214.P11573060337783897701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A243815 n

end

end A385214.P11573060337783897701

/-! ## A385214.P8829163470554868923

`abs(A000079(n)-A243815(n))`
-/

namespace A385214.P8829163470554868923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A243815 n|

end

end A385214.P8829163470554868923

/-! ## A385214.P6138093895861243378

`and(-A243815(n), A000225(n))`
-/

namespace A385214.P6138093895861243378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A243815 n) (A000225 n)

end

end A385214.P6138093895861243378

/-! ## A385214.P4008717995391246559

`∑[A003945(n)-A097939(n+1)]`
-/

namespace A385214.P4008717995391246559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A097939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385214.P4008717995391246559

/-! ## A385214.P4455533340153435073

`A202305(A369416(n))`
-/

namespace A385214.P4455533340153435073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A369416 n).toNat

end

end A385214.P4455533340153435073

/-!
# A385215: Number of maximal sparse submultisets of the prime indices of n, where a multiset is sparse iff 1 is not a first difference.

The programs for A385215, there is no canonical definition to state claims against.
-/

/-! ## A385215.P6789825928764880225

`A296210(1+n)+1`
-/

namespace A385215.P6789825928764880225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296210 (1 + n) + 1

end

end A385215.P6789825928764880225

/-! ## A385215.P3578964728769160664

`2-A356173(n+1)`
-/

namespace A385215.P3578964728769160664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A356173 (n + 1)

end

end A385215.P3578964728769160664

/-! ## A385215.P13491757053852773709

`ceil(sqrt(A356936(n+1)))`
-/

namespace A385215.P13491757053852773709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A356936 (n + 1) : ℝ)⌉

end

end A385215.P13491757053852773709

/-! ## A385215.P13146672932214125805

`A250068(∏{p}[n+1, #])`
-/

namespace A385215.P13146672932214125805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A385215.P13146672932214125805

/-! ## A385215.P7220195652463866516

`(2%A322361(n+1))!`
-/

namespace A385215.P7220195652463866516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod 2 (A322361 (n + 1))).toNat

end

end A385215.P7220195652463866516

/-! ## A385215.P1885604714242939902

`gcd(2, A356735(n+1)!)`
-/

namespace A385215.P1885604714242939902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.factorial (A356735 (n + 1)).toNat)

end

end A385215.P1885604714242939902

/-! ## A385215.P14723692483947188907

`ceil((A300820(n+1)+1)/2)`
-/

namespace A385215.P14723692483947188907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A300820 (n + 1) + 1 : ℚ) / 2⌉

end

end A385215.P14723692483947188907

/-! ## A385215.P7560211785629355809

`A250068(A007947(n+1))`
-/

namespace A385215.P7560211785629355809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A007947 (n + 1)).toNat

end

end A385215.P7560211785629355809

/-! ## A385215.P16107483506358726829

`A250068(A015052(n+1))`
-/

namespace A385215.P16107483506358726829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A015052 (n + 1)).toNat

end

end A385215.P16107483506358726829

/-! ## A385215.P1320449999947275485

`A250068(A015053(n+1))`
-/

namespace A385215.P1320449999947275485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A015053 (n + 1)).toNat

end

end A385215.P1320449999947275485

/-!
# A385216: Greatest Heinz number of a sparse submultiset of the prime indices of n, where a multiset is sparse iff 1 is not a first difference.

The programs for A385216, there is no canonical definition to state claims against.
-/

/-! ## A385216.P10291716635844920119

`A319626(n+1)-A376965(A280703(n+1))`
-/

namespace A385216.P10291716635844920119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (n + 1) - A376965 (A280703 (n + 1)).toNat

end

end A385216.P10291716635844920119

/-!
# A385220: Primes p such that multiplicative order of 3 modulo p is odd.

The programs for A385220, there is no canonical definition to state claims against.
-/

/-! ## A385220.P5843971819770039423

`p?[A363215(n+1)]`
-/

namespace A385220.P5843971819770039423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A385220.P5843971819770039423

/-! ## A385220.P9407786598484599973

`∩[A040101(n+1), A363215(n+1)]`
-/

namespace A385220.P9407786598484599973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P9407786598484599973

/-! ## A385220.P15606966041474173815

`∩[A045317(n+1), A363215(n+1)]`
-/

namespace A385220.P15606966041474173815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P15606966041474173815

/-! ## A385220.P13944335190437081843

`∩[A038874(n+1), A363215(n+1)]`
-/

namespace A385220.P13944335190437081843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P13944335190437081843

/-! ## A385220.P5283704624244960969

`∩[A015919(n+1), A363215(n+1)]`
-/

namespace A385220.P5283704624244960969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P5283704624244960969

/-! ## A385220.P17799600876207470176

`∩[A040116(n+1), A363215(n+1)]`
-/

namespace A385220.P17799600876207470176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P17799600876207470176

/-! ## A385220.P558994546887006017

`∩[A000040(n+1), A363215(n+1)]`
-/

namespace A385220.P558994546887006017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P558994546887006017

/-! ## A385220.P17167135412984529743

`∩[A008578(n+1), A363215(n+1)]`
-/

namespace A385220.P17167135412984529743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P17167135412984529743

/-! ## A385220.P14156456111014647432

`∩[A045319(n+1), A363215(n+1)]`
-/

namespace A385220.P14156456111014647432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P14156456111014647432

/-! ## A385220.P5822023700567700979

`∩[A045344(n+1), A363215(n+1)]`
-/

namespace A385220.P5822023700567700979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P5822023700567700979

/-! ## A385220.P8701600367869838268

`∩[A093515(n+1), A363215(n+1)]`
-/

namespace A385220.P8701600367869838268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P8701600367869838268

/-! ## A385220.P10951980957155415540

`∩[A046022(n+1), A363215(n+1)]`
-/

namespace A385220.P10951980957155415540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P10951980957155415540

/-! ## A385220.P9363107774281441842

`∩[A051948(n+1), A363215(n+1)]`
-/

namespace A385220.P9363107774281441842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P9363107774281441842

/-! ## A385220.P1268397526536535770

`∩[A053813(n+1), A363215(n+1)]`
-/

namespace A385220.P1268397526536535770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P1268397526536535770

/-! ## A385220.P12333787059756228415

`∩[A062972(n+1), A363215(n+1)]`
-/

namespace A385220.P12333787059756228415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P12333787059756228415

/-! ## A385220.P14514886438234096214

`∩[A182140(n+1), A363215(n+1)]`
-/

namespace A385220.P14514886438234096214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P14514886438234096214

/-! ## A385220.P17963171553665913010

`∩[A053577(n+1), A363215(n+1)]`
-/

namespace A385220.P17963171553665913010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P17963171553665913010

/-! ## A385220.P8037434968148314587

`∩[A363215(n+1), A260442(n)]`
-/

namespace A385220.P8037434968148314587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P8037434968148314587

/-! ## A385220.P2166978533515499387

`∩[A143578(n+1), A363215(n+1)]`
-/

namespace A385220.P2166978533515499387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385220.P2166978533515499387

/-! ## A385220.P15010350817124886863

`filter[A363215(n+1), A010051(#)]`
-/

namespace A385220.P15010350817124886863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A385220.P15010350817124886863

/-!
# A385221: Primes p such that multiplicative order of 4 modulo p is odd.

The programs for A385221, there is no canonical definition to state claims against.
-/

/-! ## A385221.P9076884169472172199

`∪[A014663(n+1), A163183(n+1)]`
-/

namespace A385221.P9076884169472172199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385221.P9076884169472172199

/-! ## A385221.P9966721622766290553

`∩[A026470(n+1), A160227(n+1)]`
-/

namespace A385221.P9966721622766290553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385221.P9966721622766290553

/-! ## A385221.P17600822300256914838

`∩[A026514(n+1), A160227(n+1)]`
-/

namespace A385221.P17600822300256914838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385221.P17600822300256914838

/-! ## A385221.P3320505321911055390

`∩[A160227(n+1), A256863(n+1)]`
-/

namespace A385221.P3320505321911055390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385221.P3320505321911055390

/-! ## A385221.P1959622397751667405

`∩[A096315(n+1), A216285(n+1)]`
-/

namespace A385221.P1959622397751667405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385221.P1959622397751667405

/-!
# A385223: Primes p such that multiplicative order of -3 modulo p is odd.

The programs for A385223, there is no canonical definition to state claims against.
-/

/-! ## A385223.P17264055202366032746

`A000040(lt[(A380482(n+1)+1)%2, 1]+1)`
-/

namespace A385223.P17264055202366032746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380482 (n + 1) + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A385223.P17264055202366032746

/-! ## A385223.P16415363909472385880

`A136054(n+1)+A008683(A075153(n))`
-/

namespace A385223.P16415363909472385880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136054 (n + 1) + A008683 (A075153 n).toNat

end

end A385223.P16415363909472385880

/-! ## A385223.P15411497727304887803

`A136054(n+1)-A000007(A014138(n))`
-/

namespace A385223.P15411497727304887803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136054 (n + 1) - A000007 (A014138 n).toNat

end

end A385223.P15411497727304887803

/-! ## A385223.P13870234705214507288

`A136054(n+1)-A010054(A024576(n))`
-/

namespace A385223.P13870234705214507288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136054 (n + 1) - A010054 (A024576 n).toNat

end

end A385223.P13870234705214507288

/-! ## A385223.P13153381503313668673

`A136054(n+1)+A010815(A001008(n+1))`
-/

namespace A385223.P13153381503313668673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136054 (n + 1) + A010815 (A001008 (n + 1)).toNat

end

end A385223.P13153381503313668673

/-!
# A385224: Primes p such that multiplicative order of -4 modulo p is odd.

The programs for A385224, there is no canonical definition to state claims against.
-/

/-! ## A385224.P15418857158157480192

`A133204(n+1)%A054678(n+2)`
-/

namespace A385224.P15418857158157480192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133204 (n + 1)) (A054678 (n + 2))

end

end A385224.P15418857158157480192

/-! ## A385224.P14046125683130812054

`A133204(n+1)+A003982(A032022(n+3))`
-/

namespace A385224.P14046125683130812054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133204 (n + 1) + A003982 (A032022 (n + 3)).toNat

end

end A385224.P14046125683130812054

/-! ## A385224.P3310819047651853608

`or(A010060(A045943(3*n)), A133204(n+1))`
-/

namespace A385224.P3310819047651853608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A045943 (3 * n)).toNat) (A133204 (n + 1))

end

end A385224.P3310819047651853608

/-! ## A385224.P18408065480587739588

`or(A010060(A053307(2*(n+1))), A133204(n+1))`
-/

namespace A385224.P18408065480587739588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A053307 (2 * (n + 1))).toNat) (A133204 (n + 1))

end

end A385224.P18408065480587739588

/-! ## A385224.P18018468776954260222

`A133204(n+1)-A000007(A357643(n))`
-/

namespace A385224.P18018468776954260222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133204 (n + 1) - A000007 (A357643 n).toNat

end

end A385224.P18018468776954260222

/-!
# A385225: Primes p such that multiplicative order of -5 modulo p is odd.

The programs for A385225, there is no canonical definition to state claims against.
-/

/-! ## A385225.P3692726873067051298

`A323578(lt[A290236(2*(n+1)), A099337(n+1)])`
-/

namespace A385225.P3692726873067051298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290236 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385225.P3692726873067051298

/-!
# A385226: Odd multiplicative orders of 3 modulo primes.

The programs for A385226, there is no canonical definition to state claims against.
-/

/-! ## A385226.P6694085498494289988

`filter[A062117(n+1), A000035(#)]`
-/

namespace A385226.P6694085498494289988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385226.P6694085498494289988

/-! ## A385226.P3232821784383642560

`A007734(A385220(n+1))`
-/

namespace A385226.P3232821784383642560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A385220 (n + 1)).toNat

end

end A385226.P3232821784383642560

/-!
# A385227: Odd multiplicative orders of 4 modulo primes.

The programs for A385227, there is no canonical definition to state claims against.
-/

/-! ## A385227.P17426107745657872896

`filter[A082654(n+1), A000035(#)]`
-/

namespace A385227.P17426107745657872896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385227.P17426107745657872896

/-! ## A385227.P1577256078054449347

`A007735(A385221(n+1))`
-/

namespace A385227.P1577256078054449347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A385221 (n + 1)).toNat

end

end A385227.P1577256078054449347

/-! ## A385227.P9683278723281308228

`A385164(n+1)+A000007(A098660(n))`
-/

namespace A385227.P9683278723281308228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385164 (n + 1) + A000007 (A098660 n).toNat

end

end A385227.P9683278723281308228

/-! ## A385227.P9680185997855591703

`A385164(n+1)*A385166(A000085(n))`
-/

namespace A385227.P9680185997855591703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385164 (n + 1) * A385166 (A000085 n).toNat

end

end A385227.P9680185997855591703

/-! ## A385227.P13420133075079126480

`A385164(n+1)%A001043(A309159(n))`
-/

namespace A385227.P13420133075079126480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385164 (n + 1)) (A001043 (A309159 n).toNat)

end

end A385227.P13420133075079126480

/-!
# A385228: Odd multiplicative orders of -2 modulo primes.

The programs for A385228, there is no canonical definition to state claims against.
-/

/-! ## A385228.P16414233534657264940

`filter[A240657(n+1), A000035(#)]`
-/

namespace A385228.P16414233534657264940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385228.P16414233534657264940

/-! ## A385228.P16607723228264188862

`A007735(A163183(n+1))`
-/

namespace A385228.P16607723228264188862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A163183 (n + 1)).toNat

end

end A385228.P16607723228264188862

/-! ## A385228.P774392528175475872

`A007735(A051085(n+2))`
-/

namespace A385228.P774392528175475872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A051085 (n + 2)).toNat

end

end A385228.P774392528175475872

/-! ## A385228.P1867875274376497477

`A007735(A051101(n+2))`
-/

namespace A385228.P1867875274376497477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A051101 (n + 2)).toNat

end

end A385228.P1867875274376497477

/-! ## A385228.P9615783005238773689

`A238371(A186296(n+1))`
-/

namespace A385228.P9615783005238773689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238371 (A186296 (n + 1)).toNat

end

end A385228.P9615783005238773689

/-!
# A385229: Odd multiplicative orders of -3 modulo primes.

The programs for A385229, there is no canonical definition to state claims against.
-/

/-! ## A385229.P1611244427874894961

`A380482(lt[(A380482(n+1)+1)%2, 1]+1)`
-/

namespace A385229.P1611244427874894961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380482 (n + 1) + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380482 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A385229.P1611244427874894961

/-! ## A385229.P10739482681541739065

`filter[A240658(n+1), A000035(#)]`
-/

namespace A385229.P10739482681541739065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385229.P10739482681541739065

/-! ## A385229.P1699086090159098671

`filter[A301917(n+1), A000035(#)]`
-/

namespace A385229.P1699086090159098671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385229.P1699086090159098671

/-! ## A385229.P5645150449728788514

`A007740(A385223(n+1))`
-/

namespace A385229.P5645150449728788514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A385223 (n + 1)).toNat

end

end A385229.P5645150449728788514

/-! ## A385229.P11330150259110203103

`filter[A380482(n+1), A000035(#)]`
-/

namespace A385229.P11330150259110203103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385229.P11330150259110203103

/-!
# A385230: Odd multiplicative orders of -4 modulo primes.

The programs for A385230, there is no canonical definition to state claims against.
-/

/-! ## A385230.P9247710245107441992

`filter[A240659(1+n), A000035(#)]`
-/

namespace A385230.P9247710245107441992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240659 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385230.P9247710245107441992

/-! ## A385230.P8312244399921391536

`A054716(A385224(n+1))`
-/

namespace A385230.P8312244399921391536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (A385224 (n + 1)).toNat

end

end A385230.P8312244399921391536

/-! ## A385230.P4035758408295216818

`filter[A380531(n+1), A000035(#)]`
-/

namespace A385230.P4035758408295216818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385230.P4035758408295216818

/-!
# A385231: Odd multiplicative orders of -5 modulo primes.

The programs for A385231, there is no canonical definition to state claims against.
-/

/-! ## A385231.P877138819931979297

`filter[A240660(n+1), A000035(#)]`
-/

namespace A385231.P877138819931979297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385231.P877138819931979297

/-! ## A385231.P18242088394961848942

`filter[A380532(n+1), A000035(#)]`
-/

namespace A385231.P18242088394961848942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385231.P18242088394961848942

/-! ## A385231.P15348439879887796311

`A103491(A385225(n+1))`
-/

namespace A385231.P15348439879887796311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103491 (A385225 (n + 1)).toNat

end

end A385231.P15348439879887796311

/-!
# A385232: Numbers that can be written as s^x + t^y, with 1 < s < t and {s,t} = {x,y}; that is, are of the form s^s + t^t or s^t + t^s.

The programs for A385232, there is no canonical definition to state claims against.
-/

/-! ## A385232.P8295817756846069336

`∪[A173054(n+1), A385614(n+1)]`
-/

namespace A385232.P8295817756846069336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385232.P8295817756846069336

/-!
# A385234: a(n) is the number of partitions of n into primes of the form 4*k + 1.

The programs for A385234, there is no canonical definition to state claims against.
-/

/-! ## A385234.P2142195488082580872

`A000045(A319734(n)^A274468(3*n+4))`
-/

namespace A385234.P2142195488082580872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A319734 n : ℚ) ^ (A274468 (3 * n + 4) : ℤ))).toNat

end

end A385234.P2142195488082580872

/-! ## A385234.P17626292271990993545

`A000081(A319734(n)^A274468(3*n+4))`
-/

namespace A385234.P17626292271990993545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (SequenceMachineLib.roundAway ((A319734 n : ℚ) ^ (A274468 (3 * n + 4) : ℤ))).toNat

end

end A385234.P17626292271990993545

/-! ## A385234.P10887637544214160427

`A005090(4^A321445(n))`
-/

namespace A385234.P10887637544214160427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A321445 n : ℤ))).toNat

end

end A385234.P10887637544214160427

/-! ## A385234.P1680514341689299193

`A109883(4^A321445(n))`
-/

namespace A385234.P1680514341689299193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109883 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A321445 n : ℤ))).toNat

end

end A385234.P1680514341689299193

/-! ## A385234.P15704342123683360078

`A023532(A321445(n)^5)`
-/

namespace A385234.P15704342123683360078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A321445 n ^ 5).toNat

end

end A385234.P15704342123683360078

/-!
# A385235: a(n) is the number of partitions of n into primes of the form 4*k + 3.

The programs for A385235, there is no canonical definition to state claims against.
-/

/-! ## A385235.P17824500373877098596

`or(A000007(A358834(n)), A025848(n))`
-/

namespace A385235.P17824500373877098596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A358834 n).toNat) (A025848 n)

end

end A385235.P17824500373877098596

/-! ## A385235.P9043592720521395056

`A000188(A361671(2*n+3))*A025848(n)`
-/

namespace A385235.P9043592720521395056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A361671 (2 * n + 3)).toNat * A025848 n

end

end A385235.P9043592720521395056

/-! ## A385235.P7624086057289604988

`∑[A014240(n)^A117987(2*n+3)]`
-/

namespace A385235.P7624086057289604988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014240 n : ℚ) ^ (A117987 (2 * n + 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385235.P7624086057289604988

/-! ## A385235.P17144178609226487996

`A025848(n)^A005259(A025854(n))`
-/

namespace A385235.P17144178609226487996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025848 n : ℚ) ^ (A005259 (A025854 n).toNat : ℤ)

end

end A385235.P17144178609226487996

/-! ## A385235.P15783971838445192086

`A025848(n)+A000007(A192522(3*n+1))`
-/

namespace A385235.P15783971838445192086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025848 n + A000007 (A192522 (3 * n + 1)).toNat

end

end A385235.P15783971838445192086

/-!
# A385236: Largest x such that x^2+y^2 = A001481(n), x and y are nonnegative integers.

The programs for A385236, there is no canonical definition to state claims against.
-/

/-! ## A385236.P12582775130538589743

`A328803(n+1)-A229140(n+1)`
-/

namespace A385236.P12582775130538589743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328803 (n + 1) - A229140 (n + 1)

end

end A385236.P12582775130538589743

/-! ## A385236.P9001411670564911089

`sqrt(A001481(n+1)-A229140(n+1)²)`
-/

namespace A385236.P9001411670564911089
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001481 (n + 1) - A229140 (n + 1) ^ 2 : ℝ)

end

end A385236.P9001411670564911089

/-! ## A385236.P1338187657692363468

`A064876(A001481(n+1))`
-/

namespace A385236.P1338187657692363468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A001481 (n + 1)).toNat

end

end A385236.P1338187657692363468

/-! ## A385236.P14071487563157415795

`A262689(A166687(n+1)-1)`
-/

namespace A385236.P14071487563157415795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A166687 (n + 1) - 1).toNat

end

end A385236.P14071487563157415795

/-! ## A385236.P16298609300797747580

`A262689(eq[0, A070176(n)])`
-/

namespace A385236.P16298609300797747580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A385236.P16298609300797747580

/-! ## A385236.P13475671181636607765

`A262689(lt[0, A004018(n)])`
-/

namespace A385236.P13475671181636607765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A385236.P13475671181636607765

/-! ## A385236.P7930158480273113985

`A328803(n+1)-A064875(A001481(n+1))`
-/

namespace A385236.P7930158480273113985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328803 (n + 1) - A064875 (A001481 (n + 1)).toNat

end

end A385236.P7930158480273113985

/-!
# A385237: Smallest x such that x^3+y^3 = A004999(n), x and y are nonnegative integers.

The programs for A385237, there is no canonical definition to state claims against.
-/

/-! ## A385237.P11723673004539840881

`col(lt[A001590(n), A316420(3*n+4)])`
-/

namespace A385237.P11723673004539840881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385237.P11723673004539840881

/-! ## A385237.P16358277266758451039

`A002262(lt[n-3*floor((n+1)/4), 5])`
-/

namespace A385237.P16358277266758451039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * ⌊(n + 1 : ℚ) / 4⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A385237.P16358277266758451039

/-! ## A385237.P15938561506580185145

`col(lt[A025433(2*(n+1)), n%2+2])`
-/

namespace A385237.P15938561506580185145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025433 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A385237.P15938561506580185145

/-! ## A385237.P5426770745105817640

`col(comp[A369361(A375336(2*n+7))])`
-/

namespace A385237.P5426770745105817640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (A375336 (2 * n + 7)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A385237.P5426770745105817640

/-! ## A385237.P10591123112056044376

`col(lt[A339453(n+1), A239932(2*(n+1))])`
-/

namespace A385237.P10591123112056044376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239932 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385237.P10591123112056044376

/-!
# A385239: a(n) = the total lengths of all the top arches of semi-meanders with n top arches where arch length = 1 + number of arches covered by the arch.

The programs for A385239, there is no canonical definition to state claims against.
-/

/-! ## A385239.P12786071100087884875

`A289497(A281100(n)²+1)`
-/

namespace A385239.P12786071100087884875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A281100 n ^ 2 + 1).toNat

end

end A385239.P12786071100087884875

/-! ## A385239.P11020759525004772053

`A350311(A018913(n))+A003229(n)`
-/

namespace A385239.P11020759525004772053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350311 (A018913 n).toNat + A003229 n

end

end A385239.P11020759525004772053

/-!
# A385240: Array read by descending antidiagonals: T(n,k) is the number of k element sets of noncongruent integer sided rectangles that fill an n X n square.

The programs for A385240, there is no canonical definition to state claims against.
-/

/-! ## A385240.P14172349872012599928

`and(A089344(n+1), A387121(n+1))`
-/

namespace A385240.P14172349872012599928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089344 (n + 1)) (A387121 (n + 1))

end

end A385240.P14172349872012599928

/-! ## A385240.P3257944995836720486

`and(A146369(n+1), A387121(n+1))`
-/

namespace A385240.P3257944995836720486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146369 (n + 1)) (A387121 (n + 1))

end

end A385240.P3257944995836720486

/-! ## A385240.P5119285650414862313

`and(A290204(n+1), A387121(n+1))`
-/

namespace A385240.P5119285650414862313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290204 (n + 1)) (A387121 (n + 1))

end

end A385240.P5119285650414862313

/-! ## A385240.P7309898181817767685

`A387121(n+1)%A259325(A002808(n+1))`
-/

namespace A385240.P7309898181817767685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387121 (n + 1)) (A259325 (A002808 (n + 1)).toNat)

end

end A385240.P7309898181817767685

/-! ## A385240.P12548829808350889523

`and(A080077(n+1), A387121(n+1))`
-/

namespace A385240.P12548829808350889523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080077 (n + 1)) (A387121 (n + 1))

end

end A385240.P12548829808350889523

/-!
# A385242: Number of tilings of a 3 X n strip with dominos and U-shaped pentominos.

The programs for A385242, the canonical program `A385242.P3515255519971219702` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385242 has offset 0).

The definition of A385242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385242.P6196036324901261894

`ogf((1-x-x^2+x^5)/(1-x-4x^2+3x^3+2x^5))`
-/

namespace A385242.P6196036324901261894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 0, 0, 1] [1, -1, -4, 3, 0, 2] n

end

end A385242.P6196036324901261894

namespace A385242

/-- `ogf((1-x-x^2+x^5)/(1-x-4x^2+3x^3+2x^5))` -/
def P6196036324901261894.Spec : Prop :=
  ∀ n, P6196036324901261894.a n = A385242 n

end A385242

/-! ## A385242.P3515255519971219702

`a(n-1)+4*a(n-2)-3*a(n-3)-2*a(n-5)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=12, a(5)=2`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385242

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-2*a(n-5)` -/
def P3515255519971219702.Spec : Prop :=
  ∀ n, P3515255519971219702.a n = A385242 n

theorem P3515255519971219702.correct : P3515255519971219702.Spec := by
  intro n
  simp only [A385242]

end A385242

/-!
# A385243: a(0) = 0 and a(1) = 1 followed by primes p such that (2p)^4 + 1 is prime.

The programs for A385243, there is no canonical definition to state claims against.
-/

/-! ## A385243.P11127867323261625817

`∪[A008455(n), A378146(n+1)]`
-/

namespace A385243.P11127867323261625817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385243.P11127867323261625817

/-! ## A385243.P10891908606374136056

`∪[A123095(n), A378146(n+1)]`
-/

namespace A385243.P10891908606374136056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385243.P10891908606374136056

/-! ## A385243.P17632948667814418986

`∪[A152726(n), A378146(n+1)]`
-/

namespace A385243.P17632948667814418986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385243.P17632948667814418986

/-! ## A385243.P11706255900534893053

`∪[A162840(n), A378146(n+1)]`
-/

namespace A385243.P11706255900534893053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385243.P11706255900534893053

/-! ## A385243.P10493790877726539533

`∪[A167149(n), A378146(n+1)]`
-/

namespace A385243.P10493790877726539533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385243.P10493790877726539533

/-! ## A385243.P16074917137759955347

`∪[A170793(n), A378146(n+1)]`
-/

namespace A385243.P16074917137759955347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385243.P16074917137759955347

/-! ## A385243.P11188794875357181551

`∪[A194719(n), A378146(n+1)]`
-/

namespace A385243.P11188794875357181551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385243.P11188794875357181551

/-! ## A385243.P13064443029397375187

`∪[A194720(n), A378146(n+1)]`
-/

namespace A385243.P13064443029397375187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385243.P13064443029397375187

/-! ## A385243.P11338404170080321082

`∪[A194721(n), A378146(n+1)]`
-/

namespace A385243.P11338404170080321082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385243.P11338404170080321082

/-! ## A385243.P10459788984826234597

`∪[A204474(n), A378146(n+1)]`
-/

namespace A385243.P10459788984826234597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204474 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385243.P10459788984826234597

/-!
# A385245: Primes that are no longer prime if in their binary representation any single bit is flipped but stay prime if a 1 bit is prepended.

The programs for A385245, there is no canonical definition to state claims against.
-/

/-! ## A385245.P1762100446311082412

`∩[A065047(n+1), A137985(n+1)]`
-/

namespace A385245.P1762100446311082412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385245.P1762100446311082412

/-!
# A385247: a(n) is the number of ways to partition n X n X n cube into 6 noncongruent cuboids.

The programs for A385247, there is no canonical definition to state claims against.
-/

/-! ## A385247.P8084602846755673394

`A078128(A122853(2*(n+1))+4)`
-/

namespace A385247.P8084602846755673394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (A122853 (2 * (n + 1)) + 4).toNat

end

end A385247.P8084602846755673394

/-!
# A385248: Number of digits in the decimal expansion of Fibonacci(2^n).

The programs for A385248, there is no canonical definition to state claims against.
-/

/-! ## A385248.P5758115926147511911

`A060384(A000079(n))`
-/

namespace A385248.P5758115926147511911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A000079 n).toNat

end

end A385248.P5758115926147511911

/-! ## A385248.P16685635258182188950

`A060384(2^n)`
-/

namespace A385248.P16685635258182188950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (2 ^ n)

end

end A385248.P16685635258182188950

/-! ## A385248.P13118120785719493663

`A386758(A282153(n))`
-/

namespace A385248.P13118120785719493663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 (A282153 n).toNat

end

end A385248.P13118120785719493663

/-! ## A385248.P12082868192708542412

`A386758(A000225(n)-A010060(n))`
-/

namespace A385248.P12082868192708542412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 (A000225 n - A010060 n).toNat

end

end A385248.P12082868192708542412

/-! ## A385248.P1664758029152664000

`A386758(xor(A000225(n), A010060(n)))`
-/

namespace A385248.P1664758029152664000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 (Int.xor (A000225 n) (A010060 n)).toNat

end

end A385248.P1664758029152664000

/-!
# A385249: Number of iterations of seven segments count x -> A010371(x) to go from n to a fixed point.

The programs for A385249, there is no canonical definition to state claims against.
-/

/-! ## A385249.P9368061865919670517

`A387106(A004186(n))`
-/

namespace A385249.P9368061865919670517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387106 (A004186 n).toNat

end

end A385249.P9368061865919670517

/-! ## A385249.P18348145816264148861

`A387106(A057846(n))`
-/

namespace A385249.P18348145816264148861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387106 (A057846 n).toNat

end

end A385249.P18348145816264148861

/-! ## A385249.P10728663524406340022

`A387106(A321474(n))`
-/

namespace A385249.P10728663524406340022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387106 (A321474 n).toNat

end

end A385249.P10728663524406340022

/-! ## A385249.P12789776369135102320

`A387106(A333659(n))`
-/

namespace A385249.P12789776369135102320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387106 (A333659 n).toNat

end

end A385249.P12789776369135102320

/-! ## A385249.P8242247771875891304

`A387106(A336956(n))`
-/

namespace A385249.P8242247771875891304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387106 (A336956 n).toNat

end

end A385249.P8242247771875891304

/-!
# A385250: a(n) = Sum_{k=0..n} binomial(n+2*k+1,k).

The programs for A385250, the canonical program `A385250.P12478149952468755517` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385250 has offset 0).

The definition of A385250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#+1, #)]` (program `A385250.P12478149952468755517`, by `A385250.P12478149952468755517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385250.P12478149952468755517

`∑{#}[n, C(n+2*#+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385250

/-- `∑{#}[n, C(n+2*#+1, #)]` -/
def P12478149952468755517.Spec : Prop :=
  ∀ n, (P12478149952468755517.a n : ℤ) = A385250 n

theorem P12478149952468755517.correct : P12478149952468755517.Spec := by
  intro n
  simp only [A385250]

end A385250

/-! ## A385250.P3493550510153197725

`A361654(A099776(n+1)+1)`
-/

namespace A385250.P3493550510153197725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A099776 (n + 1) + 1).toNat

end

end A385250.P3493550510153197725

namespace A385250

/-- `A361654(A099776(n+1)+1)` -/
def P3493550510153197725.Spec : Prop :=
  ∀ n, P3493550510153197725.a n = A385250 n

end A385250

/-! ## A385250.P5279962842462104777

`A013580(A051682(n+1))`
-/

namespace A385250.P5279962842462104777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A051682 (n + 1)).toNat

end

end A385250.P5279962842462104777

namespace A385250

/-- `A013580(A051682(n+1))` -/
def P5279962842462104777.Spec : Prop :=
  ∀ n, P5279962842462104777.a n = A385250 n

end A385250

/-! ## A385250.P10990513664118640644

`A013580(A062708(n+1))`
-/

namespace A385250.P10990513664118640644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A062708 (n + 1)).toNat

end

end A385250.P10990513664118640644

namespace A385250

/-- `A013580(A062708(n+1))` -/
def P10990513664118640644.Spec : Prop :=
  ∀ n, P10990513664118640644.a n = A385250 n

end A385250

/-! ## A385250.P2304138712813587151

`A013580(A000217(3*n+1)+n)`
-/

namespace A385250.P2304138712813587151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A000217 (3 * n + 1) + (n : ℤ)).toNat

end

end A385250.P2304138712813587151

namespace A385250

/-- `A013580(A000217(3*n+1)+n)` -/
def P2304138712813587151.Spec : Prop :=
  ∀ n, P2304138712813587151.a n = A385250 n

end A385250

/-!
# A385251: a(n) = Sum_{k=0..n-1} binomial(4*k-3,k) * binomial(4*n-4*k,n-k-1).

The programs for A385251, the canonical program `A385251.P11925746458958208436` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385251 has offset 0).

The definition of A385251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385251.P11925746458958208436

`∑{#}[n-1, 3^(n-#-1)*C(4*n-2, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385251

/-- `∑{#}[n-1, 3^(n-#-1)*C(4*n-2, #)]` -/
def P11925746458958208436.Spec : Prop :=
  ∀ n, P11925746458958208436.a n = (A385251 n : ℚ)

end A385251

/-!
# A385252: Number of ternary strings of length 2*n that have at least one 0 but less 0's than the combined number of 1's and 2's.

The programs for A385252, there is no canonical definition to state claims against.
-/

/-! ## A385252.P10386045153911789804

`4*A002775(n)*A109301(n!)`
-/

namespace A385252.P10386045153911789804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002775 n * A109301 (Nat.factorial n)

end

end A385252.P10386045153911789804

/-!
# A385254: Distinct terms in A386369.

The programs for A385254, there is no canonical definition to state claims against.
-/

/-! ## A385254.P12917257623594297998

`record[A386369(A110449(n)+1)]`
-/

namespace A385254.P12917257623594297998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386369 (A110449 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385254.P12917257623594297998

/-! ## A385254.P11352109197108315585

`record[A386369(A238009(n+2))]`
-/

namespace A385254.P11352109197108315585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386369 (A238009 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385254.P11352109197108315585

/-! ## A385254.P5215335602994465151

`eq[A004178(n), A386369(n+1)]`
-/

namespace A385254.P5215335602994465151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385254.P5215335602994465151

/-! ## A385254.P14436062040177758423

`eq[A009531(n), A386369(n+1)]`
-/

namespace A385254.P14436062040177758423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385254.P14436062040177758423

/-! ## A385254.P16396839625522936195

`eq[A065599(n), A386369(n+1)]`
-/

namespace A385254.P16396839625522936195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385254.P16396839625522936195

/-!
# A385265: Number of edge-connected components of polygonal cells in the pinwheel tiling up to rotation of the tiling.

The programs for A385265, there is no canonical definition to state claims against.
-/

/-! ## A385265.P6423859353967416457

`A397168(A107284(n))`
-/

namespace A385265.P6423859353967416457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397168 (A107284 n).toNat

end

end A385265.P6423859353967416457

/-! ## A385265.P16466479996713676478

`A268820(A036691(n))+n`
-/

namespace A385265.P16466479996713676478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A036691 n).toNat + (n : ℤ)

end

end A385265.P16466479996713676478

/-!
# A385266: Number of edge-connected components of polygonal cells in the basketweave tiling up to rotation and reflection of the tiling.

The programs for A385266, there is no canonical definition to state claims against.
-/

/-! ## A385266.P2805346435020834401

`A162961(A150248(n))`
-/

namespace A385266.P2805346435020834401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162961 (A150248 n).toNat

end

end A385266.P2805346435020834401

/-! ## A385266.P8810297156571294109

`A030600(n+4)*A263284(2^n)`
-/

namespace A385266.P8810297156571294109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030600 (n + 4) * A263284 (2 ^ n)

end

end A385266.P8810297156571294109

/-!
# A385267: Number of face-connected components of half pyramidille cells in the half pyramidille up to translation, rotation, and reflection of the honeycomb.

The programs for A385267, there is no canonical definition to state claims against.
-/

/-! ## A385267.P16206739066115351335

`A254679(A301702(n))`
-/

namespace A385267.P16206739066115351335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254679 (A301702 n).toNat

end

end A385267.P16206739066115351335

/-! ## A385267.P15901432283401463050

`A002487(A000010(n+1)*A263779(n+1))`
-/

namespace A385267.P15901432283401463050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000010 (n + 1) * A263779 (n + 1)).toNat

end

end A385267.P15901432283401463050

/-!
# A385268: Number of face-connected components of oblate cubille cells in the oblate cubille up to translation, rotation, and reflection of the honeycomb.

The programs for A385268, there is no canonical definition to state claims against.
-/

/-! ## A385268.P8901360150995856535

`A027610(n+1)-A374640(A001419(n+1))`
-/

namespace A385268.P8901360150995856535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027610 (n + 1) - A374640 (A001419 (n + 1)).toNat

end

end A385268.P8901360150995856535

/-! ## A385268.P12100220228757554060

`A027610(n+1)-A185264(A270831(n+1))`
-/

namespace A385268.P12100220228757554060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027610 (n + 1) - A185264 (A270831 (n + 1)).toNat

end

end A385268.P12100220228757554060

/-!
# A385269: Number of face-connected components of quarter cubille cells in the quarter cubille up to translation, rotation, and reflection of the honeycomb.

The programs for A385269, there is no canonical definition to state claims against.
-/

/-! ## A385269.P6461450598512133042

`A231149(or(2, A110143(n)))`
-/

namespace A385269.P6461450598512133042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (Int.lor 2 (A110143 n)).toNat

end

end A385269.P6461450598512133042

/-!
# A385270: Number of face-connected components of elongated dodecahedral cells in the elongated dodecahedral honeycomb up to translation, rotation, and reflection of the honeycomb.

The programs for A385270, there is no canonical definition to state claims against.
-/

/-! ## A385270.P10930967545974867720

`A027868(A059099(n))+1`
-/

namespace A385270.P10930967545974867720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A059099 n).toNat + 1

end

end A385270.P10930967545974867720

/-! ## A385270.P5174354380498405270

`A003963(A177510(3*n)-n)`
-/

namespace A385270.P5174354380498405270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A177510 (3 * n) - (n : ℤ)).toNat

end

end A385270.P5174354380498405270

/-!
# A385272: Number of face-connected components of phyllic disphenoidal cells in the phyllic disphenoidal honeycomb up to translation, rotation, and reflection of the honeycomb.

The programs for A385272, there is no canonical definition to state claims against.
-/

/-! ## A385272.P3955199636032043299

`A154099(A362596(n))`
-/

namespace A385272.P3955199636032043299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A362596 n).toNat

end

end A385272.P3955199636032043299

/-! ## A385272.P3222418093489304780

`A340282(A153643(n+1))`
-/

namespace A385272.P3222418093489304780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340282 (A153643 (n + 1)).toNat

end

end A385272.P3222418093489304780

/-! ## A385272.P7561826233729475993

`Δ[A319434(∑[A012150(n)])]`
-/

namespace A385272.P7561826233729475993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319434 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A385272.P7561826233729475993

/-!
# A385273: Number of face-connected components of polyhedral cells in the quarter oblate octahedrille up to translation, rotation, and reflection of the honeycomb.

The programs for A385273, there is no canonical definition to state claims against.
-/

/-! ## A385273.P2001102296775385557

`A000142(n)-A125985(A006761(n+1))`
-/

namespace A385273.P2001102296775385557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A125985 (A006761 (n + 1)).toNat

end

end A385273.P2001102296775385557

/-! ## A385273.P15413491098762785950

`A080607(n^n)/3`
-/

namespace A385273.P15413491098762785950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080607 (n ^ n) : ℚ) / 3

end

end A385273.P15413491098762785950

/-!
# A385274: Number of face-connected components of rhombic pyramidal cells in the rhombic pyramidal honeycomb up to translation, rotation, and reflection of the honeycomb.

The programs for A385274, there is no canonical definition to state claims against.
-/

/-! ## A385274.P16485011399633903105

`A016727(A290124(n+1))`
-/

namespace A385274.P16485011399633903105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 (A290124 (n + 1)).toNat

end

end A385274.P16485011399633903105

/-! ## A385274.P6787910844841341167

`A089610(A366732(n)+n)`
-/

namespace A385274.P6787910844841341167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (A366732 n + (n : ℤ)).toNat

end

end A385274.P6787910844841341167

/-! ## A385274.P5766612334378448836

`A350355(A113182(n+1))+A000009(n)`
-/

namespace A385274.P5766612334378448836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350355 (A113182 (n + 1)).toNat + A000009 n

end

end A385274.P5766612334378448836

/-!
# A385276: Number of face-connected components of trapezo-rhombic dodecahedral cells in the trapezo-rhombic dodecahedral honeycomb up to translation, rotation, and reflection of the honeycomb.

The programs for A385276, there is no canonical definition to state claims against.
-/

/-! ## A385276.P7855613910607300376

`A008619(A000996(2*(n+1)))`
-/

namespace A385276.P7855613910607300376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000996 (2 * (n + 1))).toNat

end

end A385276.P7855613910607300376

/-! ## A385276.P16862255431782624434

`A067138(n)+A035250(A124577(n))`
-/

namespace A385276.P16862255431782624434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067138 n + A035250 (A124577 n).toNat

end

end A385276.P16862255431782624434

/-!
# A385277: Number of face-connected components of triangular prismatic cells in the triangular prismatic honeycomb up to translation, rotation, and reflection of the honeycomb.

The programs for A385277, there is no canonical definition to state claims against.
-/

/-! ## A385277.P7615270261887595053

`A365661(A366741(3*n+4)+A133289(n))`
-/

namespace A385277.P7615270261887595053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365661 (A366741 (3 * n + 4) + A133289 n).toNat

end

end A385277.P7615270261887595053

/-! ## A385277.P6615260783902186324

`A316503(A056953(n))`
-/

namespace A385277.P6615260783902186324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316503 (A056953 n).toNat

end

end A385277.P6615260783902186324

/-! ## A385277.P14265049704591405530

`A325327(A165433(n))`
-/

namespace A385277.P14265049704591405530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325327 (A165433 n).toNat

end

end A385277.P14265049704591405530

/-!
# A385278: Number of face-connected components of polyhedral cells in the triangular pyramidille up to translation, rotation, and reflection of the honeycomb.

The programs for A385278, there is no canonical definition to state claims against.
-/

/-! ## A385278.P7503756960353198066

`A087816(A093483(n+1)-A067538(n+1))`
-/

namespace A385278.P7503756960353198066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087816 (A093483 (n + 1) - A067538 (n + 1)).toNat

end

end A385278.P7503756960353198066

/-! ## A385278.P13094890680758760875

`A087816(A093483(n+1)-A275870(n+1))`
-/

namespace A385278.P13094890680758760875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087816 (A093483 (n + 1) - A275870 (n + 1)).toNat

end

end A385278.P13094890680758760875

/-!
# A385280: a(n) is the number of n-digit primes of which all digits except one are the same.

The programs for A385280, there is no canonical definition to state claims against.
-/

/-! ## A385280.P13526106753867850272

`A266149(n+1)-A373143(A279312(n+2))`
-/

namespace A385280.P13526106753867850272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266149 (n + 1) - A373143 (A279312 (n + 2)).toNat

end

end A385280.P13526106753867850272

/-! ## A385280.P13978296998193432245

`A266149(n+1)-A010051(A341204(n+7))`
-/

namespace A385280.P13978296998193432245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266149 (n + 1) - A010051 (A341204 (n + 7)).toNat

end

end A385280.P13978296998193432245

/-! ## A385280.P2545044157694193610

`A266149(n+1)-A010051(A197049(n))`
-/

namespace A385280.P2545044157694193610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266149 (n + 1) - A010051 (A197049 n).toNat

end

end A385280.P2545044157694193610

/-! ## A385280.P6491056002432205814

`A266149(n+1)-A010051(A007056(n))`
-/

namespace A385280.P6491056002432205814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266149 (n + 1) - A010051 (A007056 n).toNat

end

end A385280.P6491056002432205814

/-! ## A385280.P15899590302798817936

`A266149(n+1)-A000035(A194701(n))`
-/

namespace A385280.P15899590302798817936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266149 (n + 1) - A000035 (A194701 n).toNat

end

end A385280.P15899590302798817936

/-!
# A385281: Expansion of e.g.f. 1/(1 - 2 * x * cosh(2*x))^(1/2).

The programs for A385281, there is no canonical definition to state claims against.
-/

/-! ## A385281.P1539421905340906197

`A389936(n+1)-A002265(A389936(n+1))`
-/

namespace A385281.P1539421905340906197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389936 (n + 1) - A002265 (A389936 (n + 1)).toNat

end

end A385281.P1539421905340906197

/-!
# A385282: Expansion of e.g.f. 1/(1 - 3 * x * cosh(3*x))^(1/3).

The programs for A385282, there is no canonical definition to state claims against.
-/

/-! ## A385282.P8110295070224698066

`A174291(A034216(n))`
-/

namespace A385282.P8110295070224698066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174291 (A034216 n).toNat

end

end A385282.P8110295070224698066

/-!
# A385284: Expansion of e.g.f. 1/(1 - 3 * x * cos(3*x))^(1/3).

The programs for A385284, there is no canonical definition to state claims against.
-/

/-! ## A385284.P5633331083781193147

`A249268(A044047(n+1))`
-/

namespace A385284.P5633331083781193147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249268 (A044047 (n + 1)).toNat

end

end A385284.P5633331083781193147

/-!
# A385285: a(n) = Sum_{k=0..n} (binomial(n, k) mod 8).

The programs for A385285, the canonical program `A385285.P17161028083229077530` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385285 has offset 0).

The definition of A385285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)%8]` (program `A385285.P17161028083229077530`, by `A385285.P17161028083229077530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385285.P17161028083229077530

`∑{#}[n, C(n, #)%8]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385285

/-- `∑{#}[n, C(n, #)%8]` -/
def P17161028083229077530.Spec : Prop :=
  ∀ n, (P17161028083229077530.a n : ℤ) = A385285 n

theorem P17161028083229077530.correct : P17161028083229077530.Spec := by
  intro n
  simp only [A385285]

end A385285

/-! ## A385285.P6663811610215128868

`A001316(n)*A385394(n)`
-/

namespace A385285.P6663811610215128868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A385394 n

end

end A385285.P6663811610215128868

namespace A385285

/-- `A001316(n)*A385394(n)` -/
def P6663811610215128868.Spec : Prop :=
  ∀ n, P6663811610215128868.a n = A385285 n

end A385285

/-! ## A385285.P2797874783333618290

`sqrt(A102376(n))*A385394(n)`
-/

namespace A385285.P2797874783333618290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 n : ℝ) * (A385394 n : ℝ)

end

end A385285.P2797874783333618290

namespace A385285

/-- `sqrt(A102376(n))*A385394(n)` -/
def P2797874783333618290.Spec : Prop :=
  ∀ n, P2797874783333618290.a n = (A385285 n : ℝ)

end A385285

/-! ## A385285.P4690242279368556564

`A060632(2*n)*A385394(n)`
-/

namespace A385285.P4690242279368556564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) * A385394 n

end

end A385285.P4690242279368556564

namespace A385285

/-- `A060632(2*n)*A385394(n)` -/
def P4690242279368556564.Spec : Prop :=
  ∀ n, P4690242279368556564.a n = A385285 n

end A385285

/-! ## A385285.P11295908975153988918

`2^A000120(n)*A385394(n)`
-/

namespace A385285.P11295908975153988918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ) * (A385394 n : ℚ)

end

end A385285.P11295908975153988918

namespace A385285

/-- `2^A000120(n)*A385394(n)` -/
def P11295908975153988918.Spec : Prop :=
  ∀ n, P11295908975153988918.a n = (A385285 n : ℚ)

end A385285

/-! ## A385285.P15937138944183933044

`A384715(n)/A385393(n)*A385394(n)`
-/

namespace A385285.P15937138944183933044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384715 n : ℚ) / (A385393 n : ℚ) * (A385394 n : ℚ)

end

end A385285.P15937138944183933044

namespace A385285

/-- `A384715(n)/A385393(n)*A385394(n)` -/
def P15937138944183933044.Spec : Prop :=
  ∀ n, P15937138944183933044.a n = (A385285 n : ℚ)

end A385285

/-!
# A385286: a(n) = (n!)^2 [x^n] hypergeom([], [1], x)^8.

The programs for A385286, there is no canonical definition to state claims against.
-/

/-! ## A385286.P5057905393722157587

`A198804(2*n)/A000984(n)`
-/

namespace A385286.P5057905393722157587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198804 (2 * n) : ℚ) / (A000984 n : ℚ)

end

end A385286.P5057905393722157587

/-! ## A385286.P10691136551783859299

`A198804(2*n)/A063886(2*n)`
-/

namespace A385286.P10691136551783859299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198804 (2 * n) : ℚ) / (A063886 (2 * n) : ℚ)

end

end A385286.P10691136551783859299

/-! ## A385286.P12164143942616932931

`A198804(2*n)/A126869(2*n)`
-/

namespace A385286.P12164143942616932931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198804 (2 * n) : ℚ) / (A126869 (2 * n) : ℚ)

end

end A385286.P12164143942616932931

/-!
# A385287: a(0) = 1, a(1) = 0; a(n) = a(n-2) + Sum_{k=0..n-1} k * a(k) * a(n-1-k).

The programs for A385287, there is no canonical definition to state claims against.
-/

/-! ## A385287.P1129714583810708334

`A059439(C(2, A320333(n))+n)`
-/

namespace A385287.P1129714583810708334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059439 (Nat.choose 2 (A320333 n).toNat + n)

end

end A385287.P1129714583810708334

/-! ## A385287.P9396666706995213848

`A059439(n)+A010054(A260532(n))`
-/

namespace A385287.P9396666706995213848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059439 n + A010054 (A260532 n).toNat

end

end A385287.P9396666706995213848

/-! ## A385287.P16592287271073193129

`A320655(A152401(n))+A059439(n)`
-/

namespace A385287.P16592287271073193129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A152401 n).toNat + A059439 n

end

end A385287.P16592287271073193129

/-!
# A385288: Numbers with a prime number of prime factors, counted with multiplicity, and whose prime factors are each raised to a prime exponent.

The programs for A385288, there is no canonical definition to state claims against.
-/

/-! ## A385288.P9414948938407304151

`filter[A063989(n+1), A293449(#)]`
-/

namespace A385288.P9414948938407304151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A385288.P9414948938407304151

/-! ## A385288.P11787793560726949094

`∩[A056166(n+1), A063989(n+1)]`
-/

namespace A385288.P11787793560726949094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385288.P11787793560726949094

/-!
# A385289: Numbers whose trailing digits form a power of 2.

The programs for A385289, there is no canonical definition to state claims against.
-/

/-! ## A385289.P18180449910311533818

`∪[A000079(n), A384714(n+1)]`
-/

namespace A385289.P18180449910311533818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385289.P18180449910311533818

/-!
# A385290: Indices of records in A378865.

The programs for A385290, there is no canonical definition to state claims against.
-/

/-! ## A385290.P17242659526107005029

`A226314(A248491(n+1))`
-/

namespace A385290.P17242659526107005029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226314 (A248491 (n + 1)).toNat

end

end A385290.P17242659526107005029

/-!
# A385291: Square array read by descending antidiagonals: A(n,k) is the number of fixed n-dimensional polyominoes of size k.

The programs for A385291, there is no canonical definition to state claims against.
-/

/-! ## A385291.P14448959263128091616

`A065708(A201198(n))`
-/

namespace A385291.P14448959263128091616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065708 (A201198 n).toNat

end

end A385291.P14448959263128091616

/-! ## A385291.P16099451789925220639

`A179978(A142589(n))`
-/

namespace A385291.P16099451789925220639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179978 (A142589 n).toNat

end

end A385291.P16099451789925220639

/-! ## A385291.P4221429811387976604

`A300287(A364071(n))`
-/

namespace A385291.P4221429811387976604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300287 (A364071 n).toNat

end

end A385291.P4221429811387976604

/-! ## A385291.P6422562136478152148

`A318875(A126646(n))+A263341(n+1)`
-/

namespace A385291.P6422562136478152148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318875 (A126646 n).toNat + A263341 (n + 1)

end

end A385291.P6422562136478152148

/-! ## A385291.P9946091568364469499

`A201198(n)-A353528(A201198(3*n))`
-/

namespace A385291.P9946091568364469499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201198 n - A353528 (A201198 (3 * n)).toNat

end

end A385291.P9946091568364469499

/-!
# A385292: Numbers whose digits all belong to the same residue class mod 3.

The programs for A385292, there is no canonical definition to state claims against.
-/

/-! ## A385292.P15922337439701264962

`eq[1, A383571(A347689(n))]`
-/

namespace A385292.P15922337439701264962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383571 (A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385292.P15922337439701264962

/-! ## A385292.P3574671406987215365

`lt[A055642(n)-A373838(3*n), 2]`
-/

namespace A385292.P3574671406987215365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A373838 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A385292.P3574671406987215365

/-! ## A385292.P2113509324145531090

`lt[A298016(A102491(n+1)), A120309(2*(n+2))]`
-/

namespace A385292.P2113509324145531090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298016 (A102491 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385292.P2113509324145531090

/-! ## A385292.P8479259452330985874

`record[A139281(n)]`
-/

namespace A385292.P8479259452330985874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385292.P8479259452330985874

/-! ## A385292.P5874115727823920197

`eq[A106620(n), A139281(n)]`
-/

namespace A385292.P5874115727823920197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385292.P5874115727823920197

/-!
# A385293: Numbers whose digits all belong to the same residue class mod 4.

The programs for A385293, there is no canonical definition to state claims against.
-/

/-! ## A385293.P12461287682290919320

`lt[A347689(n)%4, 1]`
-/

namespace A385293.P12461287682290919320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347689 n) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A385293.P12461287682290919320

/-! ## A385293.P11884298234198886999

`lt[A151949(n), A124773(A151949(n))]`
-/

namespace A385293.P11884298234198886999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385293.P11884298234198886999

/-!
# A385294: Numbers whose digits all belong to the same residue class mod 5.

The programs for A385294, there is no canonical definition to state claims against.
-/

/-! ## A385294.P5071565948254704304

`eq[1, A334275(A040115(n))]`
-/

namespace A385294.P5071565948254704304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334275 (A040115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385294.P5071565948254704304

/-! ## A385294.P265962457346019773

`eq[A000332(A347689(n)), A347689(n)]`
-/

namespace A385294.P265962457346019773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A347689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385294.P265962457346019773

/-! ## A385294.P1847458340782150802

`eq[1, A104778(A151949(n))]`
-/

namespace A385294.P1847458340782150802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104778 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385294.P1847458340782150802

/-! ## A385294.P8430068475505167128

`lt[A165020(2*n+1), gcd(5, A151949(n))]`
-/

namespace A385294.P8430068475505167128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165020 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A151949 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A385294.P8430068475505167128

/-! ## A385294.P7366083638633424556

`eq[1, A014381(A151950(n)%A058331(n²))]`
-/

namespace A385294.P7366083638633424556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014381 (Int.tmod (A151950 n) (A058331 (n ^ 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385294.P7366083638633424556

/-!
# A385295: Numbers whose digits all belong to the same residue class mod 6.

The programs for A385295, there is no canonical definition to state claims against.
-/

/-! ## A385295.P9146777122395207422

`∩[A059708(n+1), A385292(n+1)]`
-/

namespace A385295.P9146777122395207422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385295.P9146777122395207422

/-! ## A385295.P13933189602949635861

`record[A059707(A385292(n+1))]`
-/

namespace A385295.P13933189602949635861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 (A385292 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385295.P13933189602949635861

/-! ## A385295.P14857266784134658430

`lt[A030567(A347689(n)), 1]`
-/

namespace A385295.P14857266784134658430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 (A347689 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A385295.P14857266784134658430

/-! ## A385295.P8766764822085605484

`eq[1, A251140(3+A347689(n))]`
-/

namespace A385295.P8766764822085605484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251140 (3 + A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385295.P8766764822085605484

/-! ## A385295.P1052548346037059548

`lt[A374516(A151949(n)), 2]`
-/

namespace A385295.P1052548346037059548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 (A151949 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A385295.P1052548346037059548

/-!
# A385296: Numbers whose digits all belong to the same residue class mod 7.

The programs for A385296, there is no canonical definition to state claims against.
-/

/-! ## A385296.P13066691805496171330

`eq[A040115(n), A365320(A040115(n))]`
-/

namespace A385296.P13066691805496171330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040115 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365320 (A040115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385296.P13066691805496171330

/-! ## A385296.P2123365236758922397

`eq[1, A129529(A347689(n))]`
-/

namespace A385296.P2123365236758922397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129529 (A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385296.P2123365236758922397

/-! ## A385296.P4033951390395893635

`eq[1, A016355(A151949(n))]`
-/

namespace A385296.P4033951390395893635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016355 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385296.P4033951390395893635

/-! ## A385296.P6536884115722156325

`eq[A070061(A151950(n)), A151950(n)]`
-/

namespace A385296.P6536884115722156325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070061 (A151950 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385296.P6536884115722156325

/-! ## A385296.P14253426459262133963

`lt[A373948(A151949(n)), A124767(3*n+4)]`
-/

namespace A385296.P14253426459262133963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373948 (A151949 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385296.P14253426459262133963

/-!
# A385297: Numbers whose digits all belong to the same residue class mod 8.

The programs for A385297, there is no canonical definition to state claims against.
-/

/-! ## A385297.P15275151976480555654

`eq[1, A333940(A151949(n))]`
-/

namespace A385297.P15275151976480555654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333940 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385297.P15275151976480555654

/-! ## A385297.P8724561531344560791

`lt[A228086(A338827(n)), A296772(n+1)]`
-/

namespace A385297.P8724561531344560791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (A338827 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296772 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385297.P8724561531344560791

/-! ## A385297.P4174027967025862985

`∪[A002113(n+1), A069352(A285046(n))]`
-/

namespace A385297.P4174027967025862985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (A285046 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385297.P4174027967025862985

/-! ## A385297.P14083554671899555332

`eq[n, A004086(n)%72]`
-/

namespace A385297.P14083554671899555332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 n) 72

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385297.P14083554671899555332

/-! ## A385297.P18121377562282407232

`eq[A004427(n), A004427(A329200(n))]`
-/

namespace A385297.P18121377562282407232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A329200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385297.P18121377562282407232

/-!
# A385298: Numbers whose digits all belong to the same residue class mod 9.

The programs for A385298, the canonical program `A385298.P1717443801627157010` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385298 has offset 1).

The definition of A385298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385298.P1717443801627157010

`∪[A010785(n), A097256(n)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385298

/-- `∪[A010785(n), A097256(n)]` -/
def P1717443801627157010.Spec : Prop :=
  ∀ n, (P1717443801627157010.a n : ℤ) = A385298 (n + 1)

theorem P1717443801627157010.correct : P1717443801627157010.Spec := by
  intro n
  simp only [A385298, Nat.add_sub_cancel]

end A385298

/-! ## A385298.P10446312350655520493

`∩[A376425(n+1), A385292(n+1)]`
-/

namespace A385298.P10446312350655520493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385298.P10446312350655520493

namespace A385298

/-- `∩[A376425(n+1), A385292(n+1)]` -/
def P10446312350655520493.Spec : Prop :=
  ∀ n, (P10446312350655520493.a n : ℤ) = A385298 (n + 1)

end A385298

/-! ## A385298.P11058747503878029204

`∪[A010785(n), A381433(A027691(3*(n+1)))]`
-/

namespace A385298.P11058747503878029204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (A027691 (3 * (n + 1))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385298.P11058747503878029204

namespace A385298

/-- `∪[A010785(n), A381433(A027691(3*(n+1)))]` -/
def P11058747503878029204.Spec : Prop :=
  ∀ n, (P11058747503878029204.a n : ℤ) = A385298 (n + 1)

end A385298

/-! ## A385298.P5753038222914060014

`eq[0, A382056(A216556(n))]`
-/

namespace A385298.P5753038222914060014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382056 (A216556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385298.P5753038222914060014

namespace A385298

/-- `eq[0, A382056(A216556(n))]` -/
def P5753038222914060014.Spec : Prop :=
  ∀ n, (P5753038222914060014.a n : ℤ) = A385298 (n + 1)

end A385298

/-! ## A385298.P1309436003673197444

`eq[A151949(A026741(n)), A347689(n)]`
-/

namespace A385298.P1309436003673197444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A026741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385298.P1309436003673197444

namespace A385298

/-- `eq[A151949(A026741(n)), A347689(n)]` -/
def P1309436003673197444.Spec : Prop :=
  ∀ n, (P1309436003673197444.a n : ℤ) = A385298 (n + 1)

end A385298

/-!
# A385299: Number of Schröder paths of semilength 2n and having n valleys.

The programs for A385299, there is no canonical definition to state claims against.
-/

/-! ## A385299.P6386367496778297193

`A304678(A001813(n))-n`
-/

namespace A385299.P6386367496778297193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (A001813 n).toNat - (n : ℤ)

end

end A385299.P6386367496778297193

