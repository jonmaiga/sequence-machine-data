import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
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

/-! ## A385203.P4757115218301063206

`Δ[A060997(A188185(n+1))]^n`
-/

namespace A385203.P4757115218301063206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060997 (A188185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A385203.P4757115218301063206

/-!
# A385204: G.f. A(x) satisfies A(x) = ( 1 + 25*x*A(x)^3 )^(1/5).

The programs for A385204, there is no canonical definition to state claims against.
-/

/-! ## A385204.P14576410339566983812

`A239005(A132050(n+1)+1)*5^n`
-/

namespace A385204.P14576410339566983812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239005 (A132050 (n + 1) + 1).toNat * (5 ^ n : ℤ)

end

end A385204.P14576410339566983812

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
# A385209: Least k such that A086369(k) = n.

The programs for A385209, there is no canonical definition to state claims against.
-/

/-! ## A385209.P1960978158575790080

`fo[A086369(n+1)-1]+1`
-/

namespace A385209.P1960978158575790080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086369 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A385209.P1960978158575790080

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

/-! ## A385212.P4613106982316923452

`∏{p}[C(∏{p}[1+n, #], n), #]`
-/

namespace A385212.P4613106982316923452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A385212.P4613106982316923452

namespace A385212

/-- `∏{p}[C(∏{p}[1+n, #], n), #]` -/
def P4613106982316923452.Spec : Prop :=
  ∀ n, (P4613106982316923452.a n : ℤ) = A385212 (n + 1)

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

/-! ## A385213.P7625821746937592879

`A073490(n+1)+ceil(∑{e}[n+1, #-n/(n+1)])`
-/

namespace A385213.P7625821746937592879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1) + ⌈∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℚ) - (n : ℚ) / (n + 1 : ℚ))⌉

end

end A385213.P7625821746937592879

/-! ## A385213.P10970129058985275868

`A287170(1+n)+A046660(n+1)`
-/

namespace A385213.P10970129058985275868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (1 + n) + A046660 (n + 1)

end

end A385213.P10970129058985275868

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

/-! ## A385213.P4917413021485077869

`A001222(n+1)-ceil(A356735(n+1)/2)`
-/

namespace A385213.P4917413021485077869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - ⌈(A356735 (n + 1) : ℚ) / 2⌉

end

end A385213.P4917413021485077869

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

/-! ## A385213.P13668875233827540445

`A287170(n+1)+A001222(A003557(n+1))`
-/

namespace A385213.P13668875233827540445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1) + A001222 (A003557 (n + 1)).toNat

end

end A385213.P13668875233827540445

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

/-! ## A385214.P5395196930673205959

`A000051(n)-(A243815(n)+1)`
-/

namespace A385214.P5395196930673205959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A243815 n + 1)

end

end A385214.P5395196930673205959

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

/-! ## A385215.P16345684661757653619

`2-A356173(1+n)`
-/

namespace A385215.P16345684661757653619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A356173 (1 + n)

end

end A385215.P16345684661757653619

/-! ## A385215.P13836608095782365034

`ceil(sqrt(A356936(1+n)))`
-/

namespace A385215.P13836608095782365034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A356936 (1 + n) : ℝ)⌉

end

end A385215.P13836608095782365034

/-! ## A385215.P16355791034738871947

`A250068(∏{p}[1+n, #])`
-/

namespace A385215.P16355791034738871947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A385215.P16355791034738871947

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
# A385217: Odd multiplicative orders of 2+-i modulo primes p == 3 (mod 4).

The programs for A385217, there is no canonical definition to state claims against.
-/

/-! ## A385217.P16833746444833653773

`filter[A385165(n+1), #%2]`
-/

namespace A385217.P16833746444833653773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A385217.P16833746444833653773

/-!
# A385218: Multiplicative orders of 2+-i modulo p == 3 (mod 4) that are congruent to 2 modulo 4.

The programs for A385218, there is no canonical definition to state claims against.
-/

/-! ## A385218.P7323684266043927725

`filter[A385165(n+1), val(#, 2)]`
-/

namespace A385218.P7323684266043927725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.valuation (f1 j).toNat 2 = 1) n)

end

end A385218.P7323684266043927725

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

/-! ## A385221.P2784171338863378740

`A000040(eq[1, gcd(2, A082654(n+2))]+2)`
-/

namespace A385221.P2784171338863378740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A082654 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A385221.P2784171338863378740

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

/-! ## A385223.P343156665256214006

`A136054(n+1)+A008683(A056236(n))`
-/

namespace A385223.P343156665256214006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136054 (n + 1) + A008683 (A056236 n).toNat

end

end A385223.P343156665256214006

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

/-!
# A385224: Primes p such that multiplicative order of -4 modulo p is odd.

The programs for A385224, there is no canonical definition to state claims against.
-/

/-! ## A385224.P2638858095035499158

`A133204(n+1)%A331929(n+1)`
-/

namespace A385224.P2638858095035499158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133204 (n + 1)) (A331929 (n + 1))

end

end A385224.P2638858095035499158

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

/-! ## A385224.P13458856473614749202

`A133204(n+1)+C(A000045(n), A054678(n+2))`
-/

namespace A385224.P13458856473614749202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133204 (n + 1) + (Nat.choose (A000045 n).toNat (A054678 (n + 2)).toNat : ℤ)

end

end A385224.P13458856473614749202

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

/-! ## A385226.P4786919533157425000

`filter[A062117(1+n), A000035(#)]`
-/

namespace A385226.P4786919533157425000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062117 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385226.P4786919533157425000

/-! ## A385226.P16602219625130222588

`A007734(A385220(1+n))`
-/

namespace A385226.P16602219625130222588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A385220 (1 + n)).toNat

end

end A385226.P16602219625130222588

/-! ## A385226.P8854936289437739596

`A336466(lcm(A276086(n), A385220(n+1)))`
-/

namespace A385226.P8854936289437739596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (Int.lcm (A276086 n) (A385220 (n + 1)))

end

end A385226.P8854936289437739596

/-!
# A385227: Odd multiplicative orders of 4 modulo primes.

The programs for A385227, there is no canonical definition to state claims against.
-/

/-! ## A385227.P8574288950112362480

`filter[A082654(1+n), A000035(#)]`
-/

namespace A385227.P8574288950112362480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385227.P8574288950112362480

/-! ## A385227.P4545193000507995438

`A007735(A385221(1+n))`
-/

namespace A385227.P4545193000507995438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A385221 (1 + n)).toNat

end

end A385227.P4545193000507995438

/-! ## A385227.P9651740674460448624

`A385164(A000005(3^n))`
-/

namespace A385227.P9651740674460448624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385164 (A000005 (3 ^ n)).toNat

end

end A385227.P9651740674460448624

/-! ## A385227.P532292375770694891

`A385164(n+1)%(A029471(n+1)+1)`
-/

namespace A385227.P532292375770694891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385164 (n + 1)) (A029471 (n + 1) + 1)

end

end A385227.P532292375770694891

/-! ## A385227.P9683278723281308228

`A385164(n+1)+A000007(A098660(n))`
-/

namespace A385227.P9683278723281308228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385164 (n + 1) + A000007 (A098660 n).toNat

end

end A385227.P9683278723281308228

/-!
# A385228: Odd multiplicative orders of -2 modulo primes.

The programs for A385228, there is no canonical definition to state claims against.
-/

/-! ## A385228.P18201236940347679870

`filter[A240657(n+1), #%2]`
-/

namespace A385228.P18201236940347679870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A385228.P18201236940347679870

/-! ## A385228.P105974900341641357

`filter[A240657(1+n), A000035(#)]`
-/

namespace A385228.P105974900341641357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240657 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385228.P105974900341641357

/-! ## A385228.P14497843039244517052

`A007735(A163183(1+n))`
-/

namespace A385228.P14497843039244517052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A163183 (1 + n)).toNat

end

end A385228.P14497843039244517052

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

/-! ## A385229.P8601725235143669597

`filter[A240658(1+n), A000035(#)]`
-/

namespace A385229.P8601725235143669597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240658 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385229.P8601725235143669597

/-! ## A385229.P2400495803126279093

`filter[A301917(1+n), A000035(#)]`
-/

namespace A385229.P2400495803126279093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301917 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385229.P2400495803126279093

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

/-! ## A385229.P6076202190929355624

`filter[A007740(A301916(n+1)), #%2]`
-/

namespace A385229.P6076202190929355624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A301916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A385229.P6076202190929355624

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

/-! ## A385230.P17455103738234257746

`A054716(A385224(1+n))`
-/

namespace A385230.P17455103738234257746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (A385224 (1 + n)).toNat

end

end A385230.P17455103738234257746

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

/-! ## A385230.P15478766601721664280

`filter[A380531(n+3), A001511(#)]`
-/

namespace A385230.P15478766601721664280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380531 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001511 (f1 j).toNat = 1) n)

end

end A385230.P15478766601721664280

/-!
# A385231: Odd multiplicative orders of -5 modulo primes.

The programs for A385231, there is no canonical definition to state claims against.
-/

/-! ## A385231.P17829336586128016595

`filter[A240660(1+n), A000035(#)]`
-/

namespace A385231.P17829336586128016595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240660 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385231.P17829336586128016595

/-! ## A385231.P13733065010723968059

`filter[A380532(1+n), A000035(#)]`
-/

namespace A385231.P13733065010723968059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380532 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385231.P13733065010723968059

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

/-! ## A385232.P14311132713587465275

`A385969(eq[2, A385970(n+1)]+1)`
-/

namespace A385232.P14311132713587465275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A385232.P14311132713587465275

/-!
# A385233: Numbers that can be written as s^x + t^y + u^z with 1 < s < t < u and {s,t,u} = {x,y,z} (the sequence of exponents can be any permutation of s,t,u).

The programs for A385233, there is no canonical definition to state claims against.
-/

/-! ## A385233.P7545219212109951582

`A385969(eq[3, A385970(n+1)]+1)`
-/

namespace A385233.P7545219212109951582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A385233.P7545219212109951582

/-!
# A385234: a(n) is the number of partitions of n into primes of the form 4*k + 1.

The programs for A385234, there is no canonical definition to state claims against.
-/

/-! ## A385234.P6185085377446306838

`A000045(A319734(n)^A075462(n+1))`
-/

namespace A385234.P6185085377446306838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A319734 n : ℚ) ^ (A075462 (n + 1) : ℤ))).toNat

end

end A385234.P6185085377446306838

/-! ## A385234.P2655488035507608574

`A000081(A319734(n)^A075462(n+1))`
-/

namespace A385234.P2655488035507608574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (SequenceMachineLib.roundAway ((A319734 n : ℚ) ^ (A075462 (n + 1) : ℤ))).toNat

end

end A385234.P2655488035507608574

/-! ## A385234.P3233582979015112697

`A000081(A319734(n)%A396599(3*n+5))`
-/

namespace A385234.P3233582979015112697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (Int.tmod (A319734 n) (A396599 (3 * n + 5))).toNat

end

end A385234.P3233582979015112697

/-! ## A385234.P11473028737421582719

`and(A000045(A319734(n)), A396599(3*(n+1)))`
-/

namespace A385234.P11473028737421582719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (A319734 n).toNat) (A396599 (3 * (n + 1)))

end

end A385234.P11473028737421582719

/-! ## A385234.P13231587039363168700

`A000045(A319734(n))^A274468(A001358(n+1))`
-/

namespace A385234.P13231587039363168700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A319734 n).toNat : ℚ) ^ (A274468 (A001358 (n + 1)).toNat : ℤ)

end

end A385234.P13231587039363168700

/-!
# A385235: a(n) is the number of partitions of n into primes of the form 4*k + 3.

The programs for A385235, there is no canonical definition to state claims against.
-/

/-! ## A385235.P15613384545002901490

`A025848(n)%(A340105(3*n+1)-3*T(n-1,k)-T(n-2,k))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A385235.P15613384545002901490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  Int.tmod (A025848 n) (A340105 (3 * n + 1) - 3 * SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n)

end

end A385235.P15613384545002901490

/-! ## A385235.P18034027081333964494

`A025848(n)%A065900(A294761(n))`
-/

namespace A385235.P18034027081333964494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025848 n) (A065900 (A294761 n).toNat)

end

end A385235.P18034027081333964494

/-! ## A385235.P17824500373877098596

`or(A000007(A358834(n)), A025848(n))`
-/

namespace A385235.P17824500373877098596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A358834 n).toNat) (A025848 n)

end

end A385235.P17824500373877098596

/-! ## A385235.P10933527117119034932

`A025848(n)^A007953(A318191(2*n))`
-/

namespace A385235.P10933527117119034932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025848 n : ℚ) ^ (A007953 (A318191 (2 * n)).toNat : ℤ)

end

end A385235.P10933527117119034932

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

/-! ## A385236.P7850827402017102907

`A262689(A001481(1+n))`
-/

namespace A385236.P7850827402017102907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A001481 (1 + n)).toNat

end

end A385236.P7850827402017102907

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

/-! ## A385236.P15646266191135391352

`A064876(eq[0, A064874(n)])`
-/

namespace A385236.P15646266191135391352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A385236.P15646266191135391352

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

/-! ## A385237.P18232927806923066410

`col(lt[A241448(n), A363576(n+1)])`
-/

namespace A385237.P18232927806923066410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385237.P18232927806923066410

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

/-! ## A385237.P13925309300407106322

`col(lt[A003440(n+4), A205753(3*n+4)])`
-/

namespace A385237.P13925309300407106322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003440 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385237.P13925309300407106322

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

/-! ## A385243.P17144763726044316968

`∪[n^13, A378146(n+1)]`
-/

namespace A385243.P17144763726044316968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385243.P17144763726044316968

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

/-! ## A385247.P551330332132729327

`A386296(eq[3, A219347(n)])`
-/

namespace A385247.P551330332132729327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A385247.P551330332132729327

/-! ## A385247.P4814517180067582995

`A386296(A055999(3+n)+1)`
-/

namespace A385247.P4814517180067582995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386296 (A055999 (3 + n) + 1).toNat

end

end A385247.P4814517180067582995

/-! ## A385247.P2399514653765679821

`A386296(Δ[Δ[A006504(n+1)]])`
-/

namespace A385247.P2399514653765679821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386296 (f1 (n + 1) - f1 n).toNat

end

end A385247.P2399514653765679821

/-!
# A385248: Number of digits in the decimal expansion of Fibonacci(2^n).

The programs for A385248, the canonical program `A385248.P5758115926147511911` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385248 has offset 0).

The definition of A385248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060384, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385248.P5758115926147511911

`A060384(A000079(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A385248

/-- `A060384(A000079(n))` -/
def P5758115926147511911.Spec : Prop :=
  ∀ n, P5758115926147511911.a n = A385248 n

theorem P5758115926147511911.correct : P5758115926147511911.Spec := by
  intro n
  simp only [A385248]

end A385248

/-! ## A385248.P10596641006753293136

`fp[log2(A072354(n+1))]`
-/

namespace A385248.P10596641006753293136
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A072354 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A385248.P10596641006753293136

namespace A385248

/-- `fp[log2(A072354(n+1))]` -/
def P10596641006753293136.Spec : Prop :=
  ∀ n, (P10596641006753293136.a n : ℤ) = A385248 n

end A385248

/-! ## A385248.P16685635258182188950

`A060384(2^n)`
-/

namespace A385248.P16685635258182188950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (2 ^ n)

end

end A385248.P16685635258182188950

namespace A385248

/-- `A060384(2^n)` -/
def P16685635258182188950.Spec : Prop :=
  ∀ n, P16685635258182188950.a n = A385248 n

end A385248

/-! ## A385248.P13118120785719493663

`A386758(A282153(n))`
-/

namespace A385248.P13118120785719493663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 (A282153 n).toNat

end

end A385248.P13118120785719493663

namespace A385248

/-- `A386758(A282153(n))` -/
def P13118120785719493663.Spec : Prop :=
  ∀ n, P13118120785719493663.a n = A385248 n

end A385248

/-! ## A385248.P1696467572497248160

`A386758(2^n-1-A280454(n+2))`
-/

namespace A385248.P1696467572497248160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 ((2 ^ n : ℤ) - 1 - A280454 (n + 2)).toNat

end

end A385248.P1696467572497248160

namespace A385248

/-- `A386758(2^n-1-A280454(n+2))` -/
def P1696467572497248160.Spec : Prop :=
  ∀ n, P1696467572497248160.a n = A385248 n

end A385248

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

/-! ## A385252.P3983456402241752219

`A353753(A001416(n)+10)`
-/

namespace A385252.P3983456402241752219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353753 (A001416 n + 10).toNat

end

end A385252.P3983456402241752219

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

/-! ## A385254.P12616215464085167931

`record[A386369(A191707(n+1))]`
-/

namespace A385254.P12616215464085167931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386369 (A191707 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385254.P12616215464085167931

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

/-! ## A385266.P4771851214155189618

`A370802(A201689(n+1)+1)`
-/

namespace A385266.P4771851214155189618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370802 (A201689 (n + 1) + 1).toNat

end

end A385266.P4771851214155189618

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

/-! ## A385267.P10472262699761643994

`A343956(A148128(n))+A148184(n)`
-/

namespace A385267.P10472262699761643994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343956 (A148128 n).toNat + A148184 n

end

end A385267.P10472262699761643994

/-! ## A385267.P13644240638015520957

`A148500(n)-A318473(A001192(n))`
-/

namespace A385267.P13644240638015520957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148500 n - A318473 (A001192 n).toNat

end

end A385267.P13644240638015520957

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

/-! ## A385269.P439376172467718906

`A294602(A034386(n+1)*A034386(n)+2)`
-/

namespace A385269.P439376172467718906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (A034386 (n + 1) * A034386 n + 2).toNat

end

end A385269.P439376172467718906

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

/-! ## A385270.P2555325243877800854

`A261585(A373770(n+1))`
-/

namespace A385270.P2555325243877800854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A373770 (n + 1)).toNat

end

end A385270.P2555325243877800854

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

/-! ## A385272.P13494407229329457061

`A191991(A238436(n)+1)`
-/

namespace A385272.P13494407229329457061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191991 (A238436 n + 1).toNat

end

end A385272.P13494407229329457061

/-! ## A385272.P3222418093489304780

`A340282(A153643(n+1))`
-/

namespace A385272.P3222418093489304780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340282 (A153643 (n + 1)).toNat

end

end A385272.P3222418093489304780

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

/-! ## A385276.P8128256210224871598

`A390395(A255072(n^n))`
-/

namespace A385276.P8128256210224871598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A255072 (n ^ n)).toNat

end

end A385276.P8128256210224871598

/-! ## A385276.P5216347718075729249

`A008612(A141117(n+1))+1`
-/

namespace A385276.P5216347718075729249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A141117 (n + 1)).toNat + 1

end

end A385276.P5216347718075729249

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

/-! ## A385281.P9809040503167817153

`A395893(n+1)-A002265(A395893(n+1))`
-/

namespace A385281.P9809040503167817153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395893 (n + 1) - A002265 (A395893 (n + 1)).toNat

end

end A385281.P9809040503167817153

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

/-! ## A385286.P11774955630481649744

`record[A198804(n)]/A000984(n)`
-/

namespace A385286.P11774955630481649744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000984 n : ℚ)

end

end A385286.P11774955630481649744

/-! ## A385286.P5057905393722157587

`A198804(2*n)/A000984(n)`
-/

namespace A385286.P5057905393722157587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198804 (2 * n) : ℚ) / (A000984 n : ℚ)

end

end A385286.P5057905393722157587

/-! ## A385286.P11751775476112215677

`A198804(2*n)/record[A067804(n)]`
-/

namespace A385286.P11751775476112215677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198804 (2 * n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A385286.P11751775476112215677

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

/-! ## A385287.P10677561790369772540

`A059439(n)+A000007(A084326(n))`
-/

namespace A385287.P10677561790369772540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059439 n + A000007 (A084326 n).toNat

end

end A385287.P10677561790369772540

/-! ## A385287.P14912953377656821230

`A065043(A027836(n))+A059439(n)`
-/

namespace A385287.P14912953377656821230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (A027836 n).toNat + A059439 n

end

end A385287.P14912953377656821230

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

/-! ## A385289.P16591308390583700043

`∪[2^n, A384714(n+1)]`
-/

namespace A385289.P16591308390583700043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385289.P16591308390583700043

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

/-! ## A385292.P16507396761808300974

`lt[A151949(A397694(n)), 1]`
-/

namespace A385292.P16507396761808300974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A397694 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A385292.P16507396761808300974

/-! ## A385292.P13638732321579551110

`lt[A151949(A397695(n)), A056624(n+1)]`
-/

namespace A385292.P13638732321579551110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A397695 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385292.P13638732321579551110

/-! ## A385292.P7973964343810114062

`lt[A151949(A397695(n)), A193582(3*(n+1))]`
-/

namespace A385292.P7973964343810114062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A397695 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385292.P7973964343810114062

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

/-! ## A385293.P10227496030567109755

`eq[1, A016383(A151949(n))]`
-/

namespace A385293.P10227496030567109755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016383 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385293.P10227496030567109755

/-! ## A385293.P10851309541156497571

`eq[1, A320480(A151950(n))]`
-/

namespace A385293.P10851309541156497571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320480 (A151950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385293.P10851309541156497571

/-! ## A385293.P10313377085078843884

`lt[A379308(A347689(n)), 1]`
-/

namespace A385293.P10313377085078843884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379308 (A347689 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A385293.P10313377085078843884

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

/-! ## A385294.P3964806644586798953

`eq[A151950(n), A151950(A196222(n)²)]`
-/

namespace A385294.P3964806644586798953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 (A196222 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385294.P3964806644586798953

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

/-! ## A385295.P5892850514108405913

`record[A059707(A385292(1+n))]`
-/

namespace A385295.P5892850514108405913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 (A385292 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385295.P5892850514108405913

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

/-! ## A385295.P6779196646740794877

`eq[1, A193739(7*A040115(n)²)]`
-/

namespace A385295.P6779196646740794877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (7 * A040115 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385295.P6779196646740794877

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

/-! ## A385296.P13766864958555913835

`lt[A382310(A151950(n)), 1]`
-/

namespace A385296.P13766864958555913835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382310 (A151950 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A385296.P13766864958555913835

/-! ## A385296.P7272004497366024432

`eq[2, A361967(C(A151949(n)+9, 2)+8)]`
-/

namespace A385296.P7272004497366024432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361967 (Nat.choose (A151949 n + 9).toNat 2 + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385296.P7272004497366024432

/-!
# A385297: Numbers whose digits all belong to the same residue class mod 8.

The programs for A385297, there is no canonical definition to state claims against.
-/

/-! ## A385297.P4938681937806678430

`eq[A040115(n), A120037(A040115(n))]`
-/

namespace A385297.P4938681937806678430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040115 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120037 (A040115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385297.P4938681937806678430

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

/-! ## A385297.P844178361247852187

`lt[A182733(n+1), A010194(A040115(n))]`
-/

namespace A385297.P844178361247852187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 (A040115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385297.P844178361247852187

/-! ## A385297.P14394016005372030505

`lt[A228086(A338827(n)), A333940(n)]`
-/

namespace A385297.P14394016005372030505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (A338827 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333940 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385297.P14394016005372030505

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

/-! ## A385299.P611363844280331604

`A101282(A058331(n))-A000007(n)`
-/

namespace A385299.P611363844280331604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101282 (A058331 n).toNat - A000007 n

end

end A385299.P611363844280331604

