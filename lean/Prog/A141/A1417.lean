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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A141700: Triangle read by rows: A120007 interleaved with (k-1) zeros.

The programs for A141700, the canonical program `A141700.P8708006094042400397` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141700 has offset 1).

The definition of A141700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141700.P12149532387527179252

`∑{p}[A054372(n+1), #]`
-/

namespace A141700.P12149532387527179252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141700.P12149532387527179252

namespace A141700

/-- `∑{p}[A054372(n+1), #]` -/
def P12149532387527179252.Spec : Prop :=
  ∀ n, (P12149532387527179252.a n : ℤ) = A141700 (n + 1)

end A141700

/-! ## A141700.P8708006094042400397

`∑{p}[A138618(n+1), #]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A141700

/-- `∑{p}[A138618(n+1), #]` -/
def P8708006094042400397.Spec : Prop :=
  ∀ n, (P8708006094042400397.a n : ℤ) = A141700 (n + 1)

theorem P8708006094042400397.correct : P8708006094042400397.Spec := by
  intro n
  simp only [A141700, Nat.add_sub_cancel]

end A141700

/-! ## A141700.P10851458762868992170

`∑{p}[A140256(n+1), #]`
-/

namespace A141700.P10851458762868992170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140256 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141700.P10851458762868992170

namespace A141700

/-- `∑{p}[A140256(n+1), #]` -/
def P10851458762868992170.Spec : Prop :=
  ∀ n, (P10851458762868992170.a n : ℤ) = A141700 (n + 1)

end A141700

/-! ## A141700.P11667981318224095649

`A001414(A138618(n+1))`
-/

namespace A141700.P11667981318224095649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A138618 (n + 1)).toNat

end

end A141700.P11667981318224095649

namespace A141700

/-- `A001414(A138618(n+1))` -/
def P11667981318224095649.Spec : Prop :=
  ∀ n, P11667981318224095649.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P385219827163444954

`A120007(A051537(n+1))`
-/

namespace A141700.P385219827163444954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (A051537 (n + 1)).toNat

end

end A141700.P385219827163444954

namespace A141700

/-- `A120007(A051537(n+1))` -/
def P385219827163444954.Spec : Prop :=
  ∀ n, P385219827163444954.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P17864700297621451434

`A039653(A140256(n+1))`
-/

namespace A141700.P17864700297621451434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A140256 (n + 1)).toNat

end

end A141700.P17864700297621451434

namespace A141700

/-- `A039653(A140256(n+1))` -/
def P17864700297621451434.Spec : Prop :=
  ∀ n, P17864700297621451434.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P9897215154736039027

`A120007(A338797(n+1))`
-/

namespace A141700.P9897215154736039027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (A338797 (n + 1)).toNat

end

end A141700.P9897215154736039027

namespace A141700

/-- `A120007(A338797(n+1))` -/
def P9897215154736039027.Spec : Prop :=
  ∀ n, P9897215154736039027.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P11979776082404115819

`A008472(A138618(n+1)²)`
-/

namespace A141700.P11979776082404115819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A138618 (n + 1) ^ 2).toNat

end

end A141700.P11979776082404115819

namespace A141700

/-- `A008472(A138618(n+1)²)` -/
def P11979776082404115819.Spec : Prop :=
  ∀ n, P11979776082404115819.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P11464324826688629526

`A020500(A138618(n+1)²)`
-/

namespace A141700.P11464324826688629526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (A138618 (n + 1) ^ 2).toNat

end

end A141700.P11464324826688629526

namespace A141700

/-- `A020500(A138618(n+1)²)` -/
def P11464324826688629526.Spec : Prop :=
  ∀ n, P11464324826688629526.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P8820088744143408964

`A120007(A138618(n+1)²)`
-/

namespace A141700.P8820088744143408964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (A138618 (n + 1) ^ 2).toNat

end

end A141700.P8820088744143408964

namespace A141700

/-- `A120007(A138618(n+1)²)` -/
def P8820088744143408964.Spec : Prop :=
  ∀ n, P8820088744143408964.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P4630087267272462740

`A182936(A138618(n+1)²)`
-/

namespace A141700.P4630087267272462740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (A138618 (n + 1) ^ 2).toNat

end

end A141700.P4630087267272462740

namespace A141700

/-- `A182936(A138618(n+1)²)` -/
def P4630087267272462740.Spec : Prop :=
  ∀ n, P4630087267272462740.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P2116523541109909030

`A217668(A138618(n+1)²)-1`
-/

namespace A141700.P2116523541109909030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 (A138618 (n + 1) ^ 2).toNat - 1

end

end A141700.P2116523541109909030

namespace A141700

/-- `A217668(A138618(n+1)²)-1` -/
def P2116523541109909030.Spec : Prop :=
  ∀ n, P2116523541109909030.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P408180296189082878

`A008472(A138618(2*n+1-n))`
-/

namespace A141700.P408180296189082878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A138618 (2 * n + 1 - n)).toNat

end

end A141700.P408180296189082878

namespace A141700

/-- `A008472(A138618(2*n+1-n))` -/
def P408180296189082878.Spec : Prop :=
  ∀ n, P408180296189082878.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P4307044904263223188

`∏{d}[A140256(n+1), A000203(#)]-1`
-/

namespace A141700.P4307044904263223188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000203 d - 1

end

end A141700.P4307044904263223188

namespace A141700

/-- `∏{d}[A140256(n+1), A000203(#)]-1` -/
def P4307044904263223188.Spec : Prop :=
  ∀ n, P4307044904263223188.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P15552269337663459215

`A008472(A138618(n+1)*A138618(n+1))`
-/

namespace A141700.P15552269337663459215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A138618 (n + 1) * A138618 (n + 1)).toNat

end

end A141700.P15552269337663459215

namespace A141700

/-- `A008472(A138618(n+1)*A138618(n+1))` -/
def P15552269337663459215.Spec : Prop :=
  ∀ n, P15552269337663459215.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P8557972099598930074

`A120007(A138618(n+1)*A138618(n+1))`
-/

namespace A141700.P8557972099598930074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (A138618 (n + 1) * A138618 (n + 1)).toNat

end

end A141700.P8557972099598930074

namespace A141700

/-- `A120007(A138618(n+1)*A138618(n+1))` -/
def P8557972099598930074.Spec : Prop :=
  ∀ n, P8557972099598930074.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P18031664481329126360

`A182936(A138618(n+1)*A138618(n+1))`
-/

namespace A141700.P18031664481329126360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (A138618 (n + 1) * A138618 (n + 1)).toNat

end

end A141700.P18031664481329126360

namespace A141700

/-- `A182936(A138618(n+1)*A138618(n+1))` -/
def P18031664481329126360.Spec : Prop :=
  ∀ n, P18031664481329126360.a n = A141700 (n + 1)

end A141700

/-! ## A141700.P5890817031588537455

`∑{p}[∑{e}[A000079(A126988(n+1)), A014963(#)], #]`
-/

namespace A141700.P5890817031588537455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A126988 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A014963 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141700.P5890817031588537455

namespace A141700

/-- `∑{p}[∑{e}[A000079(A126988(n+1)), A014963(#)], #]` -/
def P5890817031588537455.Spec : Prop :=
  ∀ n, (P5890817031588537455.a n : ℤ) = A141700 (n + 1)

end A141700

/-! ## A141700.P14369761396262694517

`A138618(n+1)-A008683(A138618(n+1)²)`
-/

namespace A141700.P14369761396262694517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138618 (n + 1) - A008683 (A138618 (n + 1) ^ 2).toNat

end

end A141700.P14369761396262694517

namespace A141700

/-- `A138618(n+1)-A008683(A138618(n+1)²)` -/
def P14369761396262694517.Spec : Prop :=
  ∀ n, P14369761396262694517.a n = A141700 (n + 1)

end A141700

/-!
# A141701: Triangle read by rows: A001414 interleaved with (k-1) zeros.

The programs for A141701, the canonical program `A141701.P8211479873156200797` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141701 has offset 1).

The definition of A141701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141701.P8211479873156200797

`∑{d}[A126988(n+1), A120007(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A141701

/-- `∑{d}[A126988(n+1), A120007(#)]` -/
def P8211479873156200797.Spec : Prop :=
  ∀ n, P8211479873156200797.a n = A141701 (n + 1)

theorem P8211479873156200797.correct : P8211479873156200797.Spec := by
  intro n
  simp only [A141701, Nat.add_sub_cancel]

end A141701

/-! ## A141701.P9887568227531761351

`∑{d}[A167990(n+1), A120007(#)]`
-/

namespace A141701.P9887568227531761351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A141701.P9887568227531761351

namespace A141701

/-- `∑{d}[A167990(n+1), A120007(#)]` -/
def P9887568227531761351.Spec : Prop :=
  ∀ n, P9887568227531761351.a n = A141701 (n + 1)

end A141701

/-! ## A141701.P15931167855869241013

`floor(A107463(A126988(n+1)²)/2)`
-/

namespace A141701.P15931167855869241013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107463 (A126988 (n + 1) ^ 2).toNat : ℚ) / 2⌋

end

end A141701.P15931167855869241013

namespace A141701

/-- `floor(A107463(A126988(n+1)²)/2)` -/
def P15931167855869241013.Spec : Prop :=
  ∀ n, P15931167855869241013.a n = A141701 (n + 1)

end A141701

/-! ## A141701.P6122155188479888343

`A001414(A028310(A126988(n+1)))`
-/

namespace A141701.P6122155188479888343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A028310 (A126988 (n + 1)).toNat).toNat

end

end A141701.P6122155188479888343

namespace A141701

/-- `A001414(A028310(A126988(n+1)))` -/
def P6122155188479888343.Spec : Prop :=
  ∀ n, P6122155188479888343.a n = A141701 (n + 1)

end A141701

/-! ## A141701.P4235749664278355537

`∑{d}[A127013(A278818(n)), A120007(#)]`
-/

namespace A141701.P4235749664278355537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127013 (A278818 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A141701.P4235749664278355537

namespace A141701

/-- `∑{d}[A127013(A278818(n)), A120007(#)]` -/
def P4235749664278355537.Spec : Prop :=
  ∀ n, P4235749664278355537.a n = A141701 (n + 1)

end A141701

/-! ## A141701.P15624215120236480846

`A001414(abs(A274922(A126988(n+1))))`
-/

namespace A141701.P15624215120236480846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 |A274922 (A126988 (n + 1)).toNat|.toNat

end

end A141701.P15624215120236480846

namespace A141701

/-- `A001414(abs(A274922(A126988(n+1))))` -/
def P15624215120236480846.Spec : Prop :=
  ∀ n, P15624215120236480846.a n = A141701 (n + 1)

end A141701

/-! ## A141701.P318130410552585422

`A004526(A107463(A126988(n+1)²))`
-/

namespace A141701.P318130410552585422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A107463 (A126988 (n + 1) ^ 2).toNat).toNat

end

end A141701.P318130410552585422

namespace A141701

/-- `A004526(A107463(A126988(n+1)²))` -/
def P318130410552585422.Spec : Prop :=
  ∀ n, P318130410552585422.a n = A141701 (n + 1)

end A141701

/-! ## A141701.P16598135035215157901

`A001414(A137734(A126988(n+1)²))`
-/

namespace A141701.P16598135035215157901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A137734 (A126988 (n + 1) ^ 2).toNat).toNat

end

end A141701.P16598135035215157901

namespace A141701

/-- `A001414(A137734(A126988(n+1)²))` -/
def P16598135035215157901.Spec : Prop :=
  ∀ n, P16598135035215157901.a n = A141701 (n + 1)

end A141701

/-! ## A141701.P10585438012513984951

`∑{d}[A126988(n+1), A001414(A014963(#))]`
-/

namespace A141701.P10585438012513984951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001414 (A014963 d).toNat

end

end A141701.P10585438012513984951

namespace A141701

/-- `∑{d}[A126988(n+1), A001414(A014963(#))]` -/
def P10585438012513984951.Spec : Prop :=
  ∀ n, P10585438012513984951.a n = A141701 (n + 1)

end A141701

/-! ## A141701.P4641179366524183485

`A001414(A010766(n+1))*A051731(n+1)`
-/

namespace A141701.P4641179366524183485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A141701.P4641179366524183485

namespace A141701

/-- `A001414(A010766(n+1))*A051731(n+1)` -/
def P4641179366524183485.Spec : Prop :=
  ∀ n, P4641179366524183485.a n = A141701 (n + 1)

end A141701

/-! ## A141701.P4307069994980616871

`A001414(A051537(n+1))*A051731(n+1)`
-/

namespace A141701.P4307069994980616871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A051537 (n + 1)).toNat * A051731 (n + 1)

end

end A141701.P4307069994980616871

namespace A141701

/-- `A001414(A051537(n+1))*A051731(n+1)` -/
def P4307069994980616871.Spec : Prop :=
  ∀ n, P4307069994980616871.a n = A141701 (n + 1)

end A141701

/-! ## A141701.P18125611086204602048

`A001414(A054531(n+1))*A051731(n+1)`
-/

namespace A141701.P18125611086204602048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A141701.P18125611086204602048

namespace A141701

/-- `A001414(A054531(n+1))*A051731(n+1)` -/
def P18125611086204602048.Spec : Prop :=
  ∀ n, P18125611086204602048.a n = A141701 (n + 1)

end A141701

/-! ## A141701.P13072327765628899900

`A001414(gcd(A126988(n+1)!, A167990(n+1)))`
-/

namespace A141701.P13072327765628899900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.gcd (Nat.factorial (A126988 (n + 1)).toNat : ℤ) (A167990 (n + 1)))

end

end A141701.P13072327765628899900

namespace A141701

/-- `A001414(gcd(A126988(n+1)!, A167990(n+1)))` -/
def P13072327765628899900.Spec : Prop :=
  ∀ n, P13072327765628899900.a n = A141701 (n + 1)

end A141701

/-!
# A141702: a(n) is the number of Carmichael numbers of the form prime(n)*prime(n')*prime(n") with n > n' > n".

The programs for A141702, there is no canonical definition to state claims against.
-/

/-! ## A141702.P15416690543127199959

`A274217(comp[A048726(n)+1])%A036585(n+1)`
-/

namespace A141702.P15416690543127199959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048726 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A036585 (n + 1))

end

end A141702.P15416690543127199959

/-! ## A141702.P9102209223391700898

`A274217(comp[2*A038556(n)+1])%A036585(n+1)`
-/

namespace A141702.P9102209223391700898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038556 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A036585 (n + 1))

end

end A141702.P9102209223391700898

/-! ## A141702.P13136021252428092475

`A274217(∪[2*n, A001969(n+1)])%A036585(n+1)`
-/

namespace A141702.P13136021252428092475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274217 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)) (A036585 (n + 1))

end

end A141702.P13136021252428092475

/-! ## A141702.P6296540023833291944

`A274217(∪[2*n, A129771(n+1)])%A036585(n+1)`
-/

namespace A141702.P6296540023833291944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274217 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)) (A036585 (n + 1))

end

end A141702.P6296540023833291944

/-! ## A141702.P17732715484911980276

`A274217(∪[2*n, A195609(n+1)])%A036585(n+1)`
-/

namespace A141702.P17732715484911980276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195609 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274217 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)) (A036585 (n + 1))

end

end A141702.P17732715484911980276

/-!
# A141707: Least k>0 such that (2n-1)k is palindromic in base 2.

The programs for A141707, there is no canonical definition to state claims against.
-/

/-! ## A141707.P17589228270135787952

`A141708(n+1)/Δ[n²]`
-/

namespace A141707.P17589228270135787952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141708 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A141707.P17589228270135787952

/-! ## A141707.P9239790949217587079

`floor(A141708(n+1)/A005408(n))`
-/

namespace A141707.P9239790949217587079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141708 (n + 1) : ℚ) / (A005408 n : ℚ)⌋

end

end A141707.P9239790949217587079

/-! ## A141707.P7273328890582551838

`A000265(A141708(n+1)/(2*n+1))`
-/

namespace A141707.P7273328890582551838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A141708 (n + 1) : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A141707.P7273328890582551838

/-! ## A141707.P10443604685890645320

`A004151(A141708(n+1)/(2*n+1))`
-/

namespace A141707.P10443604685890645320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway ((A141708 (n + 1) : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A141707.P10443604685890645320

/-! ## A141707.P13271930622112125161

`A141709(2*n+1)/Δ[n²]`
-/

namespace A141707.P13271930622112125161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141709 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A141707.P13271930622112125161

/-! ## A141707.P9228731273120720544

`A216972(A141709(2*n+1)/(2*n+1))`
-/

namespace A141707.P9228731273120720544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216972 (SequenceMachineLib.roundAway ((A141709 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A141707.P9228731273120720544

/-! ## A141707.P4123370406982513055

`A249811(A141709(2*n+1)/(2*n+1))`
-/

namespace A141707.P4123370406982513055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (SequenceMachineLib.roundAway ((A141709 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A141707.P4123370406982513055

/-!
# A141708: Least positive multiple of 2n-1 which is palindromic in base 2.

The programs for A141708, there is no canonical definition to state claims against.
-/

/-! ## A141708.P9727853737310992313

`(2*(n+1)-1)*A141707(n+1)`
-/

namespace A141708.P9727853737310992313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * A141707 (n + 1)

end

end A141708.P9727853737310992313

/-! ## A141708.P7886515824398716465

`A141709(Δ[n²])`
-/

namespace A141708.P7886515824398716465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141709 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A141708.P7886515824398716465

/-! ## A141708.P4279074243454266396

`or(1, A141709(2*n+1))`
-/

namespace A141708.P4279074243454266396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A141709 (2 * n + 1))

end

end A141708.P4279074243454266396

/-! ## A141708.P11423794506695263824

`lcm(A141707(n+1), A141709(2*n+1))`
-/

namespace A141708.P11423794506695263824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141707 (n + 1)) (A141709 (2 * n + 1))

end

end A141708.P11423794506695263824

/-! ## A141708.P7932753588956878725

`(2-A000034(n))!*A141709(2*n+1)`
-/

namespace A141708.P7932753588956878725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 - A000034 n).toNat : ℤ) * A141709 (2 * n + 1)

end

end A141708.P7932753588956878725

/-! ## A141708.P10077290467288570713

`A141709(2*n+1)%(∑[A051740(n)]+1)`
-/

namespace A141708.P10077290467288570713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141709 (2 * n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A141708.P10077290467288570713

/-! ## A141708.P2757254232278735563

`A178225(2*(n+1))+A141709(2*n+1)`
-/

namespace A141708.P2757254232278735563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (2 * (n + 1)) + A141709 (2 * n + 1)

end

end A141708.P2757254232278735563

/-! ## A141708.P15295743751518834919

`A141709(2*n+1)+A000010(n+3)%2`
-/

namespace A141708.P15295743751518834919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141709 (2 * n + 1) + Int.tmod (A000010 (n + 3)) 2

end

end A141708.P15295743751518834919

/-! ## A141708.P6018311136642551061

`A141709(2*n+1)+char[A069272(n+1)²]`
-/

namespace A141708.P6018311136642551061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069272 (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141709 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A141708.P6018311136642551061

/-! ## A141708.P14063792011252268131

`A033999(A025480(n))²*A141709(2*n+1)`
-/

namespace A141708.P14063792011252268131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025480 n).toNat ^ 2 * A141709 (2 * n + 1)

end

end A141708.P14063792011252268131

/-! ## A141708.P7577577633382147370

`A051119(Δ[A294456(n+2)]+1)*A141709(2*n+1)`
-/

namespace A141708.P7577577633382147370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (f1 (n + 1) - f1 n + 1).toNat * A141709 (2 * n + 1)

end

end A141708.P7577577633382147370

/-! ## A141708.P11613774151380172645

`A061674(A002113(n+1))*A141709(2*n+1)`
-/

namespace A141708.P11613774151380172645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 (A002113 (n + 1)).toNat * A141709 (2 * n + 1)

end

end A141708.P11613774151380172645

/-!
# A141709: Least positive multiple of n which is palindromic in base 2, allowing for leading zeros (or: ignoring trailing zeros).

The programs for A141709, there is no canonical definition to state claims against.
-/

/-! ## A141709.P374208648771538619

`(n+1)*A141707(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A141709.P374208648771538619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A141707 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A141709.P374208648771538619

/-! ## A141709.P15439889569987662574

`(n+1)*A141707(A003602(n+1))`
-/

namespace A141709.P15439889569987662574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A141707 (A003602 (n + 1)).toNat

end

end A141709.P15439889569987662574

/-! ## A141709.P15762370102243064329

`A095259(A095258(n+1))*A143069(n+1)`
-/

namespace A141709.P15762370102243064329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095259 (A095258 (n + 1)).toNat * A143069 (n + 1)

end

end A141709.P15762370102243064329

/-! ## A141709.P18003930220629895402

`A329378(∏[p?[A110656(n)]])`
-/

namespace A141709.P18003930220629895402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A141709.P18003930220629895402

/-! ## A141709.P6015762873491870182

`lcm(A010887(n), A070939(A079117(n)))`
-/

namespace A141709.P6015762873491870182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010887 n) (A070939 (A079117 n).toNat)

end

end A141709.P6015762873491870182

/-!
# A141710: Least prime factor of n-th Carmichael number A002997(n).

The programs for A141710, there is no canonical definition to state claims against.
-/

/-! ## A141710.P11417018550547692555

`A020639(A002997(n+1))`
-/

namespace A141710.P11417018550547692555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002997 (n + 1)).toNat

end

end A141710.P11417018550547692555

/-! ## A141710.P12753443218574030805

`A002997(n+1)/A081703(n+1)`
-/

namespace A141710.P12753443218574030805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002997 (n + 1) : ℚ) / (A081703 (n + 1) : ℚ)

end

end A141710.P12753443218574030805

/-! ## A141710.P8206580701691441640

`∪[A087788(n+1), A141711(n+1)]/A081703(n+1)`
-/

namespace A141710.P8206580701691441640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141711 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A081703 (n + 1) : ℚ)

end

end A141710.P8206580701691441640

/-! ## A141710.P9985479072055302808

`∪[A033181(n+1), A262043(n+1)]/A081703(n+1)`
-/

namespace A141710.P9985479072055302808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262043 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A081703 (n + 1) : ℚ)

end

end A141710.P9985479072055302808

/-! ## A141710.P12433737314984892246

`∪[A141711(n+1), A355039(n+1)]/A081703(n+1)`
-/

namespace A141710.P12433737314984892246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355039 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A081703 (n + 1) : ℚ)

end

end A141710.P12433737314984892246

/-! ## A141710.P11674622327553941044

`(A174590(n+1)*A306414(n+1)+1)/A081703(n+1)`
-/

namespace A141710.P11674622327553941044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174590 (n + 1) * A306414 (n + 1) + 1 : ℚ) / (A081703 (n + 1) : ℚ)

end

end A141710.P11674622327553941044

/-! ## A141710.P5464779621964932855

`A298701(∑[A135717(n+1)]-A135717(n+1)+1)`
-/

namespace A141710.P5464779621964932855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298701 (∑ j ∈ Finset.range (n + 1), f1 j - A135717 (n + 1) + 1).toNat

end

end A141710.P5464779621964932855

/-! ## A141710.P16793936395304567008

`A020639((A174590(n+1)*A306414(n+1)+1)/A081702(n+1))`
-/

namespace A141710.P16793936395304567008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A174590 (n + 1) * A306414 (n + 1) + 1 : ℚ) / (A081702 (n + 1) : ℚ))).toNat

end

end A141710.P16793936395304567008

/-!
# A141712: Triangle T, read by rows, where the n-th diagonal of T equals the BINOMIAL transform of the (n-1)-th diagonal of T^2 for n>=1, with the zeroth diagonal set to all 1's and where T^2 denotes the matrix square of T.

The programs for A141712, there is no canonical definition to state claims against.
-/

/-! ## A141712.P8019624710786728587

`A202304(A132986(n))`
-/

namespace A141712.P8019624710786728587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A132986 n).toNat

end

end A141712.P8019624710786728587

/-! ## A141712.P11700462466813516856

`A000196(3*A132986(n))`
-/

namespace A141712.P11700462466813516856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (3 * A132986 n).toNat

end

end A141712.P11700462466813516856

/-! ## A141712.P14133196259119839857

`A098539(n)-A000038(A062886(n))`
-/

namespace A141712.P14133196259119839857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098539 n - A000038 (A062886 n).toNat

end

end A141712.P14133196259119839857

/-! ## A141712.P10917442575926600674

`A031285(A098539(n))-A208673(n)`
-/

namespace A141712.P10917442575926600674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A098539 n).toNat - A208673 n

end

end A141712.P10917442575926600674

/-! ## A141712.P7917328615215639741

`∑{d}[A132986(n), A065231(A133008(#))]`
-/

namespace A141712.P7917328615215639741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A065231 (A133008 d).toNat

end

end A141712.P7917328615215639741

/-!
# A141713: Column 0 of triangle A141712.

The programs for A141713, there is no canonical definition to state claims against.
-/

/-! ## A141713.P2221705028713874348

`A141715(C(n, 2))`
-/

namespace A141713.P2221705028713874348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141715 (Nat.choose n 2)

end

end A141713.P2221705028713874348

/-! ## A141713.P12170512488903443568

`A141715(∑[n]-n)`
-/

namespace A141713.P12170512488903443568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141715 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A141713.P12170512488903443568

/-! ## A141713.P14400808484540754601

`A141715(A161680(n))*A208673(n)`
-/

namespace A141713.P14400808484540754601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141715 (A161680 n).toNat * A208673 n

end

end A141713.P14400808484540754601

/-! ## A141713.P14670676718977094437

`A141715(A161680(n))%A086927(n)`
-/

namespace A141713.P14670676718977094437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141715 (A161680 n).toNat) (A086927 n)

end

end A141713.P14670676718977094437

/-! ## A141713.P8011210086877417007

`lcm(A047040(n), A141715(A161680(n)))`
-/

namespace A141713.P8011210086877417007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047040 n) (A141715 (A161680 n).toNat)

end

end A141713.P8011210086877417007

/-!
# A141714: Column 2 of triangle A141712.

The programs for A141714, there is no canonical definition to state claims against.
-/

/-! ## A141714.P3293958382951364111

`A141712(∑[n+2]+3)`
-/

namespace A141714.P3293958382951364111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141712 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A141714.P3293958382951364111

/-! ## A141714.P7379168075248763146

`record[gcd(A141712(n+3), A322280(n))]`
-/

namespace A141714.P7379168075248763146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141712 (n + 3)) (A322280 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141714.P7379168075248763146

/-! ## A141714.P8653847967037159199

`record[A141712(A130299(n+1)+n+1)]`
-/

namespace A141714.P8653847967037159199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141712 (A130299 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141714.P8653847967037159199

/-!
# A141716: Column 1 of triangle A141715.

The programs for A141716, there is no canonical definition to state claims against.
-/

/-! ## A141716.P13254162338409965559

`Δ[A141713(n+1)]`
-/

namespace A141716.P13254162338409965559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141716.P13254162338409965559

/-! ## A141716.P10999381867443865785

`Δ[record[A141713(A002262(n))]]`
-/

namespace A141716.P10999381867443865785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141713 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141716.P10999381867443865785

/-! ## A141716.P17380816235505486209

`Δ[record[A141713(A025480(n))]]`
-/

namespace A141716.P17380816235505486209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141713 (A025480 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141716.P17380816235505486209

/-! ## A141716.P13602894512070074041

`Δ[record[A141713(A025581(n))]]`
-/

namespace A141716.P13602894512070074041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141713 (A025581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141716.P13602894512070074041

/-! ## A141716.P17929163091177416616

`Δ[record[A141713(A027656(n))]]`
-/

namespace A141716.P17929163091177416616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141713 (A027656 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141716.P17929163091177416616

/-!
# A141717: Numbers k such that the set of prime factors of phi(k) is a proper subset of the set of prime factors of k and the set of prime factors of k is a proper subset of the set of prime factors of sigma(k).

The programs for A141717, there is no canonical definition to state claims against.
-/

/-! ## A141717.P11761895635041661899

`A175200(lt[A329332(3*n), A084938(2*(n+1))])`
-/

namespace A141717.P11761895635041661899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329332 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175200 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A141717.P11761895635041661899

/-!
# A141719: Triangle online: 4, A140978(n+1) - A133819 .

The programs for A141719, there is no canonical definition to state claims against.
-/

/-! ## A141719.P10319811649799142072

`A094728(A130299(n+1)+1+n)`
-/

namespace A141719.P10319811649799142072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (A130299 (n + 1) + 1 + (n : ℤ)).toNat

end

end A141719.P10319811649799142072

/-! ## A141719.P5157284443506128754

`A105020(A111650(n+1)+A056943(n))`
-/

namespace A141719.P5157284443506128754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 (A111650 (n + 1) + A056943 n).toNat

end

end A141719.P5157284443506128754

/-! ## A141719.P4534551234844640499

`A094728(A130296(n+1)+A007401(n+1))`
-/

namespace A141719.P4534551234844640499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (A130296 (n + 1) + A007401 (n + 1)).toNat

end

end A141719.P4534551234844640499

/-! ## A141719.P3969711475338520954

`A140978(n+1)-A000120(A023758(n+1))²`
-/

namespace A141719.P3969711475338520954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (n + 1) - A000120 (A023758 (n + 1)).toNat ^ 2

end

end A141719.P3969711475338520954

/-! ## A141719.P14170242518344426058

`A003057(n+2)²-A000120(A023758(n+1))²`
-/

namespace A141719.P14170242518344426058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) ^ 2 - A000120 (A023758 (n + 1)).toNat ^ 2

end

end A141719.P14170242518344426058

/-!
# A141720: Triangle of coefficients of the polynomials (1 - x)^n*A(n,x/(1 - x)), where A(n,x) are the Eulerian polynomials of A008292.

The programs for A141720, there is no canonical definition to state claims against.
-/

/-! ## A141720.P17201699317472642400

`∑[A142073(n)]-1`
-/

namespace A141720.P17201699317472642400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A141720.P17201699317472642400

/-! ## A141720.P3649483776821010392

`A225678(A183302(n+1))`
-/

namespace A141720.P3649483776821010392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225678 (A183302 (n + 1)).toNat

end

end A141720.P3649483776821010392

/-! ## A141720.P14182694138139418108

`∑[A057427(n)*A142073(n)]`
-/

namespace A141720.P14182694138139418108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A142073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141720.P14182694138139418108

/-! ## A141720.P1982086148659752299

`∑[and(A057428(n), A142073(n))]`
-/

namespace A141720.P1982086148659752299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A142073 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141720.P1982086148659752299

/-! ## A141720.P6372002706812859431

`∑[xor(A000007(n), A142073(n))]`
-/

namespace A141720.P6372002706812859431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A142073 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141720.P6372002706812859431

/-! ## A141720.P13006530830130910891

`A008683(A000040(n+1))+∑[A142073(n)]`
-/

namespace A141720.P13006530830130910891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000040 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141720.P13006530830130910891

/-!
# A141721: A141631(n) mod 10.

The programs for A141721, the canonical program `A141721.P1296886474758781361` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141721 has offset 1).

The definition of A141721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141721.P1296886474758781361

`a(n-10)` with `a(0)=2, a(1)=7, a(2)=8, a(3)=5, a(4)=8, a(5)=7, a(6)=2, a(7)=3, a(8)=0, a(9)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A141721

/-- `a(n-10)` -/
def P1296886474758781361.Spec : Prop :=
  ∀ n, (P1296886474758781361.a n : ℤ) = A141721 (n + 1)

theorem P1296886474758781361.correct : P1296886474758781361.Spec := by
  intro n
  simp only [A141721, Nat.add_sub_cancel]

end A141721

/-!
# A141722: a(n) = 8*4^n - 7.

The programs for A141722, the canonical program `A141722.P3395752696005296330` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141722 has offset 0).

The definition of A141722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*4^n-7` (program `A141722.P3395752696005296330`, by `A141722.P3395752696005296330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141722.P3395752696005296330

`8*4^n-7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A141722

/-- `8*4^n-7` -/
def P3395752696005296330.Spec : Prop :=
  ∀ n, P3395752696005296330.a n = A141722 n

theorem P3395752696005296330.correct : P3395752696005296330.Spec := by
  intro n
  simp only [A141722]

end A141722

/-! ## A141722.P10887978680103054195

`ogf((1+20x)/(1-5x+4x^2))`
-/

namespace A141722.P10887978680103054195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 20] [1, -5, 4] n

end

end A141722.P10887978680103054195

namespace A141722

/-- `ogf((1+20x)/(1-5x+4x^2))` -/
def P10887978680103054195.Spec : Prop :=
  ∀ n, P10887978680103054195.a n = A141722 n

end A141722

/-! ## A141722.P9451756455684920463

`∑[4*a(n-1)]` with `a(0)=1, a(1)=24`
-/

namespace A141722.P9451756455684920463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141722.P9451756455684920463

namespace A141722

/-- `∑[4*a(n-1)]` -/
def P9451756455684920463.Spec : Prop :=
  ∀ n, (P9451756455684920463.a n : ℤ) = A141722 n

end A141722

/-! ## A141722.P18256344108397241889

`or(1, 4*(a(n-1)+5))` with `a(0)=1`
-/

namespace A141722.P18256344108397241889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (4 * (a (n - 1) + 5))

end

end A141722.P18256344108397241889

namespace A141722

/-- `or(1, 4*(a(n-1)+5))` -/
def P18256344108397241889.Spec : Prop :=
  ∀ n, (P18256344108397241889.a n : ℤ) = A141722 n

end A141722

/-! ## A141722.P7134668299214707481

`xor(1, 4*(a(n-1)+5))` with `a(0)=1`
-/

namespace A141722.P7134668299214707481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (4 * (a (n - 1) + 5))

end

end A141722.P7134668299214707481

namespace A141722

/-- `xor(1, 4*(a(n-1)+5))` -/
def P7134668299214707481.Spec : Prop :=
  ∀ n, (P7134668299214707481.a n : ℤ) = A141722 n

end A141722

/-! ## A141722.P18072330895346854843

`4*(a(n-1)+21/4)` with `a(0)=1`
-/

namespace A141722.P18072330895346854843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) + (21 : ℚ) / 4)

end

end A141722.P18072330895346854843

namespace A141722

/-- `4*(a(n-1)+21/4)` -/
def P18072330895346854843.Spec : Prop :=
  ∀ n, P18072330895346854843.a n = (A141722 n : ℚ)

theorem P18072330895346854843.correct : P18072330895346854843.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A141722, Nat.add_sub_cancel, A141722.P18072330895346854843.a, A141722.P3395752696005296330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A141722, Nat.add_sub_cancel, A141722.P18072330895346854843.a, A141722.P3395752696005296330.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A141722

/-! ## A141722.P6527644193414782551

`or(25, 4*a(n-1)-3)` with `a(0)=1`
-/

namespace A141722.P6527644193414782551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 25 (4 * a (n - 1) - 3)

end

end A141722.P6527644193414782551

namespace A141722

/-- `or(25, 4*a(n-1)-3)` -/
def P6527644193414782551.Spec : Prop :=
  ∀ n, P6527644193414782551.a n = A141722 n

end A141722

/-! ## A141722.P6776242541401163765

`xor(28, lcm(4, a(n-1))+1)` with `a(0)=1`
-/

namespace A141722.P6776242541401163765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 28 (Nat.lcm 4 (a (n - 1)) + 1)

end

end A141722.P6776242541401163765

namespace A141722

/-- `xor(28, lcm(4, a(n-1))+1)` -/
def P6776242541401163765.Spec : Prop :=
  ∀ n, (P6776242541401163765.a n : ℤ) = A141722 n

end A141722

/-! ## A141722.P6948461039589856899

`record[(-2)^(n+2)-a(n-1)]` with `a(0)=1`
-/

namespace A141722.P6948461039589856899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (-2) ^ (n + 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141722.P6948461039589856899

namespace A141722

/-- `record[(-2)^(n+2)-a(n-1)]` -/
def P6948461039589856899.Spec : Prop :=
  ∀ n, P6948461039589856899.a n = A141722 n

end A141722

/-! ## A141722.P11583754036672090045

`A048490(2*n)`
-/

namespace A141722.P11583754036672090045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048490 (2 * n)

end

end A141722.P11583754036672090045

namespace A141722

/-- `A048490(2*n)` -/
def P11583754036672090045.Spec : Prop :=
  ∀ n, P11583754036672090045.a n = A141722 n

end A141722

/-! ## A141722.P7652161166218082486

`∑[record[A280370(n+3)]]`
-/

namespace A141722.P7652161166218082486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280370 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141722.P7652161166218082486

namespace A141722

/-- `∑[record[A280370(n+3)]]` -/
def P7652161166218082486.Spec : Prop :=
  ∀ n, P7652161166218082486.a n = A141722 n

end A141722

/-! ## A141722.P14595179505151700918

`∑[record[A287132(2*n)]]`
-/

namespace A141722.P14595179505151700918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287132 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141722.P14595179505151700918

namespace A141722

/-- `∑[record[A287132(2*n)]]` -/
def P14595179505151700918.Spec : Prop :=
  ∀ n, P14595179505151700918.a n = A141722 n

end A141722

/-! ## A141722.P7412032257145539774

`∑[record[A287193(2*n)]]`
-/

namespace A141722.P7412032257145539774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287193 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141722.P7412032257145539774

namespace A141722

/-- `∑[record[A287193(2*n)]]` -/
def P7412032257145539774.Spec : Prop :=
  ∀ n, P7412032257145539774.a n = A141722 n

end A141722

/-! ## A141722.P15084729322919264739

`record[2*A277866(n)-1]`
-/

namespace A141722.P15084729322919264739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277866 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141722.P15084729322919264739

namespace A141722

/-- `record[2*A277866(n)-1]` -/
def P15084729322919264739.Spec : Prop :=
  ∀ n, P15084729322919264739.a n = A141722 n

end A141722

/-! ## A141722.P6915997391614320869

`xor(2, A267921(n+1)-2)`
-/

namespace A141722.P6915997391614320869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A267921 (n + 1) - 2)

end

end A141722.P6915997391614320869

namespace A141722

/-- `xor(2, A267921(n+1)-2)` -/
def P6915997391614320869.Spec : Prop :=
  ∀ n, P6915997391614320869.a n = A141722 n

end A141722

/-! ## A141722.P17852131592793811300

`xor(6, A000225(2*n+3))`
-/

namespace A141722.P17852131592793811300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A000225 (2 * n + 3))

end

end A141722.P17852131592793811300

namespace A141722

/-- `xor(6, A000225(2*n+3))` -/
def P17852131592793811300.Spec : Prop :=
  ∀ n, P17852131592793811300.a n = A141722 n

end A141722

/-! ## A141722.P3314427857351067836

`xor(2, A173033(2*n+1)-1)`
-/

namespace A141722.P3314427857351067836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A173033 (2 * n + 1) - 1)

end

end A141722.P3314427857351067836

namespace A141722

/-- `xor(2, A173033(2*n+1)-1)` -/
def P3314427857351067836.Spec : Prop :=
  ∀ n, P3314427857351067836.a n = A141722 n

end A141722

/-! ## A141722.P5807240357086078605

`xor(A083584(n), A247817(n+1))`
-/

namespace A141722.P5807240357086078605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083584 n) (A247817 (n + 1))

end

end A141722.P5807240357086078605

namespace A141722

/-- `xor(A083584(n), A247817(n+1))` -/
def P5807240357086078605.Spec : Prop :=
  ∀ n, P5807240357086078605.a n = A141722 n

end A141722

/-! ## A141722.P7478757074376784078

`∑[A003945(A114637(2*n+1))]`
-/

namespace A141722.P7478757074376784078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A114637 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141722.P7478757074376784078

namespace A141722

/-- `∑[A003945(A114637(2*n+1))]` -/
def P7478757074376784078.Spec : Prop :=
  ∀ n, P7478757074376784078.a n = A141722 n

end A141722

/-! ## A141722.P7693610067670030956

`∑[A003945(A114637(n+1)+n)]`
-/

namespace A141722.P7693610067670030956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A114637 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141722.P7693610067670030956

namespace A141722

/-- `∑[A003945(A114637(n+1)+n)]` -/
def P7693610067670030956.Spec : Prop :=
  ∀ n, P7693610067670030956.a n = A141722 n

end A141722

/-!
# A141724: Triangle T(n, k) = Sum_{m=0..k} Sum_{j=0..m} Multinomial(n-k-m-j, j, m, k), read by rows.

The programs for A141724, there is no canonical definition to state claims against.
-/

/-! ## A141724.P12075036275082501216

`A000203(A338973(A168216(n)))`
-/

namespace A141724.P12075036275082501216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A338973 (A168216 n).toNat).toNat

end

end A141724.P12075036275082501216

/-! ## A141724.P4550855379951793490

`A325249(A060543(n))+A060543(n)`
-/

namespace A141724.P4550855379951793490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325249 (A060543 n).toNat + A060543 n

end

end A141724.P4550855379951793490

/-! ## A141724.P18160711242267359846

`A000005(A022340(n)^A071920(n))`
-/

namespace A141724.P18160711242267359846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A022340 n : ℚ) ^ (A071920 n : ℤ))).toNat

end

end A141724.P18160711242267359846

/-! ## A141724.P15998475726280528525

`A000005(A036561(n)^A071920(n))`
-/

namespace A141724.P15998475726280528525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A036561 n : ℚ) ^ (A071920 n : ℤ))).toNat

end

end A141724.P15998475726280528525

/-! ## A141724.P8548186497224192618

`A000005(A103371(n)^A071920(n))`
-/

namespace A141724.P8548186497224192618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A103371 n : ℚ) ^ (A071920 n : ℤ))).toNat

end

end A141724.P8548186497224192618

/-!
# A141725: a(n) = 4^(n+1) - 3.

The programs for A141725, the canonical program `A141725.P3910336082841405750` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141725 has offset 0).

The definition of A141725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n+1)-3` (program `A141725.P3910336082841405750`, by `A141725.P3910336082841405750.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141725.P3910336082841405750

`4^(n+1)-3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A141725

/-- `4^(n+1)-3` -/
def P3910336082841405750.Spec : Prop :=
  ∀ n, P3910336082841405750.a n = A141725 n

theorem P3910336082841405750.correct : P3910336082841405750.Spec := by
  intro n
  simp only [A141725]

end A141725

/-! ## A141725.P12386913360214216989

`A036563(2*n+2)`
-/

namespace A141725.P12386913360214216989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (2 * n + 2)

end

end A141725.P12386913360214216989

namespace A141725

/-- `A036563(2*n+2)` -/
def P12386913360214216989.Spec : Prop :=
  ∀ n, P12386913360214216989.a n = A141725 n

end A141725

/-! ## A141725.P4233139290936528685

`ogf((1+8x)/(1-5x+4x^2))`
-/

namespace A141725.P4233139290936528685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, -5, 4] n

end

end A141725.P4233139290936528685

namespace A141725

/-- `ogf((1+8x)/(1-5x+4x^2))` -/
def P4233139290936528685.Spec : Prop :=
  ∀ n, P4233139290936528685.a n = A141725 n

end A141725

/-! ## A141725.P10594179228235903982

`xor(2, ∑[3*4^n])`
-/

namespace A141725.P10594179228235903982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141725.P10594179228235903982

namespace A141725

/-- `xor(2, ∑[3*4^n])` -/
def P10594179228235903982.Spec : Prop :=
  ∀ n, (P10594179228235903982.a n : ℤ) = A141725 n

end A141725

/-! ## A141725.P17509364046611515750

`or(9, 4*a(n-1))` with `a(0)=1`
-/

namespace A141725.P17509364046611515750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 9 (4 * a (n - 1))

end

end A141725.P17509364046611515750

namespace A141725

/-- `or(9, 4*a(n-1))` -/
def P17509364046611515750.Spec : Prop :=
  ∀ n, (P17509364046611515750.a n : ℤ) = A141725 n

end A141725

/-! ## A141725.P17105099162363053027

`or(9, lcm(4, a(n-1)))` with `a(0)=1`
-/

namespace A141725.P17105099162363053027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 9 (Nat.lcm 4 (a (n - 1)))

end

end A141725.P17105099162363053027

namespace A141725

/-- `or(9, lcm(4, a(n-1)))` -/
def P17105099162363053027.Spec : Prop :=
  ∀ n, (P17105099162363053027.a n : ℤ) = A141725 n

end A141725

/-! ## A141725.P9681141931978972198

`∑[4*a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A141725.P9681141931978972198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141725.P9681141931978972198

namespace A141725

/-- `∑[4*a(n-1)]` -/
def P9681141931978972198.Spec : Prop :=
  ∀ n, (P9681141931978972198.a n : ℤ) = A141725 n

end A141725

/-! ## A141725.P10017112377867433887

`abs(or(3, -4^(n+1)))`
-/

namespace A141725.P10017112377867433887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 3 (-(4 ^ (n + 1) : ℤ))|

end

end A141725.P10017112377867433887

namespace A141725

/-- `abs(or(3, -4^(n+1)))` -/
def P10017112377867433887.Spec : Prop :=
  ∀ n, P10017112377867433887.a n = A141725 n

end A141725

/-! ## A141725.P429220669308535103

`-or(3, -4^(n+1))`
-/

namespace A141725.P429220669308535103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 3 (-(4 ^ (n + 1) : ℤ))

end

end A141725.P429220669308535103

namespace A141725

/-- `-or(3, -4^(n+1))` -/
def P429220669308535103.Spec : Prop :=
  ∀ n, P429220669308535103.a n = A141725 n

end A141725

/-! ## A141725.P15399539275809243357

`abs(xor(3, -4^(n+1)))`
-/

namespace A141725.P15399539275809243357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 3 (-(4 ^ (n + 1) : ℤ))|

end

end A141725.P15399539275809243357

namespace A141725

/-- `abs(xor(3, -4^(n+1)))` -/
def P15399539275809243357.Spec : Prop :=
  ∀ n, P15399539275809243357.a n = A141725 n

end A141725

/-! ## A141725.P368739688241741295

`-xor(3, -4^(n+1))`
-/

namespace A141725.P368739688241741295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 3 (-(4 ^ (n + 1) : ℤ))

end

end A141725.P368739688241741295

namespace A141725

/-- `-xor(3, -4^(n+1))` -/
def P368739688241741295.Spec : Prop :=
  ∀ n, P368739688241741295.a n = A141725 n

end A141725

/-! ## A141725.P7003655668353422448

`record[4^abs(1-n)-3]`
-/

namespace A141725.P7003655668353422448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141725.P7003655668353422448

namespace A141725

/-- `record[4^abs(1-n)-3]` -/
def P7003655668353422448.Spec : Prop :=
  ∀ n, P7003655668353422448.a n = (A141725 n : ℚ)

end A141725

/-! ## A141725.P2571287668472419269

`∑[4^n*3%(2*(n+1))]`
-/

namespace A141725.P2571287668472419269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (3 % (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141725.P2571287668472419269

namespace A141725

/-- `∑[4^n*3%(2*(n+1))]` -/
def P2571287668472419269.Spec : Prop :=
  ∀ n, (P2571287668472419269.a n : ℤ) = A141725 n

end A141725

/-! ## A141725.P12779339182507874771

`4*(3-(3/4-a(n-1)))` with `a(0)=1`
-/

namespace A141725.P12779339182507874771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (3 - ((3 : ℚ) / 4 - a (n - 1)))

end

end A141725.P12779339182507874771

namespace A141725

/-- `4*(3-(3/4-a(n-1)))` -/
def P12779339182507874771.Spec : Prop :=
  ∀ n, P12779339182507874771.a n = (A141725 n : ℚ)

theorem P12779339182507874771.correct : P12779339182507874771.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A141725, Nat.add_sub_cancel, A141725.P12779339182507874771.a, A141725.P3910336082841405750.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A141725, Nat.add_sub_cancel, A141725.P12779339182507874771.a, A141725.P3910336082841405750.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A141725

/-! ## A141725.P6414108509776169924

`A136252(4*n)`
-/

namespace A141725.P6414108509776169924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 (4 * n)

end

end A141725.P6414108509776169924

namespace A141725

/-- `A136252(4*n)` -/
def P6414108509776169924.Spec : Prop :=
  ∀ n, P6414108509776169924.a n = A141725 n

end A141725

/-! ## A141725.P734600990249163432

`A185647(4*n)`
-/

namespace A141725.P734600990249163432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185647 (4 * n)

end

end A141725.P734600990249163432

namespace A141725

/-- `A185647(4*n)` -/
def P734600990249163432.Spec : Prop :=
  ∀ n, P734600990249163432.a n = A141725 n

end A141725

/-! ## A141725.P10992908092126469600

`A101622(Δ[n²])`
-/

namespace A141725.P10992908092126469600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A141725.P10992908092126469600

namespace A141725

/-- `A101622(Δ[n²])` -/
def P10992908092126469600.Spec : Prop :=
  ∀ n, P10992908092126469600.a n = A141725 n

end A141725

/-! ## A141725.P15431867145357735759

`A277866(Δ[n²])`
-/

namespace A141725.P15431867145357735759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277866 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A141725.P15431867145357735759

namespace A141725

/-- `A277866(Δ[n²])` -/
def P15431867145357735759.Spec : Prop :=
  ∀ n, P15431867145357735759.a n = A141725 n

end A141725

/-!
# A141726: Sawtooth with period length 9: repeat 8, 7, 6, 5, 4, 3, 2, 1, 0.

The programs for A141726, the canonical program `A141726.P3819973607470046487` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141726 has offset 1).

The definition of A141726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141726.P3819973607470046487

`a(n-9)` with `a(0)=8, a(1)=7, a(2)=6, a(3)=5, a(4)=4, a(5)=3, a(6)=2, a(7)=1, a(8)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A141726

/-- `a(n-9)` -/
def P3819973607470046487.Spec : Prop :=
  ∀ n, (P3819973607470046487.a n : ℤ) = A141726 (n + 1)

theorem P3819973607470046487.correct : P3819973607470046487.Spec := by
  intro n
  simp only [A141726, Nat.add_sub_cancel]

end A141726

/-!
# A141727: Triangle T(n,k) read by rows. Entries are 0 and 1. Start with 1 in the top row, add a second row of 2n-1 elements (with n=2 -> 3). Moving from left to right add 0 if the number of adjacent 1's is even or add 1 if it is odd.

The programs for A141727, there is no canonical definition to state claims against.
-/

/-! ## A141727.P18121588231327708975

`xor(A141728(n), A141743(n))`
-/

namespace A141727.P18121588231327708975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141728 n) (A141743 n)

end

end A141727.P18121588231327708975

/-! ## A141727.P9455622885163822398

`(A141728(n)-A141743(n))^A001105(n)`
-/

namespace A141727.P9455622885163822398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141728 n - A141743 n : ℚ) ^ (A001105 n : ℤ)

end

end A141727.P9455622885163822398

/-! ## A141727.P12445142766564851865

`(A141743(n)-A141728(n))^A002088(n)`
-/

namespace A141727.P12445142766564851865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141743 n - A141728 n : ℚ) ^ (A002088 n : ℤ)

end

end A141727.P12445142766564851865

/-! ## A141727.P9693665698572681229

`(A141728(n)-A141743(n))^A002378(n)`
-/

namespace A141727.P9693665698572681229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141728 n - A141743 n : ℚ) ^ (A002378 n : ℤ)

end

end A141727.P9693665698572681229

/-! ## A141727.P364256184238505067

`(A141743(n)-A141728(n))^A004275(n)`
-/

namespace A141727.P364256184238505067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141743 n - A141728 n : ℚ) ^ (A004275 n : ℤ)

end

end A141727.P364256184238505067

/-! ## A141727.P14329413719497231758

`gcd(A141728(n)-A141743(n), A000038(n))`
-/

namespace A141727.P14329413719497231758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141728 n - A141743 n) (A000038 n)

end

end A141727.P14329413719497231758

/-! ## A141727.P15954609166998222600

`and(A141743(n)+A141728(n), A000328(n))`
-/

namespace A141727.P15954609166998222600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141743 n + A141728 n) (A000328 n)

end

end A141727.P15954609166998222600

/-! ## A141727.P18070516874781200061

`abs((A141728(n)-A141743(n))^A000041(n))`
-/

namespace A141727.P18070516874781200061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A141728 n - A141743 n : ℚ) ^ (A000041 n : ℤ)|

end

end A141727.P18070516874781200061

/-! ## A141727.P4088347849603306998

`abs((A141728(n)-A141743(n))^A007318(n))`
-/

namespace A141727.P4088347849603306998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A141728 n - A141743 n : ℚ) ^ (A007318 n : ℤ)|

end

end A141727.P4088347849603306998

/-! ## A141727.P18263152887950385374

`A000045(((A141728(n)-A141743(n))^n)²)`
-/

namespace A141727.P18263152887950385374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((A141728 n - A141743 n) ^ n) ^ 2).toNat

end

end A141727.P18263152887950385374

/-! ## A141727.P10715748013526713677

`(or(A000007(n), A141728(n))-A141743(n))²`
-/

namespace A141727.P10715748013526713677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor (A000007 n) (A141728 n) - A141743 n) ^ 2

end

end A141727.P10715748013526713677

/-! ## A141727.P12301157775327839357

`(A141728(n)-A141743(n))^A000010(n+2)`
-/

namespace A141727.P12301157775327839357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141728 n - A141743 n : ℚ) ^ (A000010 (n + 2) : ℤ)

end

end A141727.P12301157775327839357

/-! ## A141727.P3632239788164612670

`A000045((A141728(n)-A141743(n))^(2*n))`
-/

namespace A141727.P3632239788164612670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((A141728 n - A141743 n) ^ (2 * n)).toNat

end

end A141727.P3632239788164612670

/-! ## A141727.P16640994569967484345

`((A141728(n)-A141743(n))^A000005(n+1))²`
-/

namespace A141727.P16640994569967484345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141728 n - A141743 n : ℚ) ^ (A000005 (n + 1) : ℤ)) ^ 2

end

end A141727.P16640994569967484345

/-! ## A141727.P4311764420811459189

`((A141728(n)-A141743(n))^A000040(n+1))²`
-/

namespace A141727.P4311764420811459189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141728 n - A141743 n : ℚ) ^ (A000040 (n + 1) : ℤ)) ^ 2

end

end A141727.P4311764420811459189

/-! ## A141727.P892867323125854884

`(A141728(n)-A141743(n))^A000005(2*n+1)`
-/

namespace A141727.P892867323125854884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141728 n - A141743 n : ℚ) ^ (A000005 (2 * n + 1) : ℤ)

end

end A141727.P892867323125854884

/-! ## A141727.P17341141117798151603

`(A141728(n)-A141743(n))^A020639(2*(n+1))`
-/

namespace A141727.P17341141117798151603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141728 n - A141743 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A141727.P17341141117798151603

/-!
# A141728: Triangle read by rows T(n,k). Triangle elements are 0 and 1. Starting with 1 in the top add below a second row of (2n-1) elements (with n=2 -> 3). Moving from left to right add 1 if the number of adjacent 1's is even or add 0 if it is odd. See example below.

The programs for A141728, there is no canonical definition to state claims against.
-/

/-! ## A141728.P13432657764330651595

`xor(A141727(n), A141743(n))`
-/

namespace A141728.P13432657764330651595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141727 n) (A141743 n)

end

end A141728.P13432657764330651595

/-! ## A141728.P5644228105362006120

`abs(A141727(2*n-n)-A141743(n))`
-/

namespace A141728.P5644228105362006120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141727 (2 * n - n) - A141743 n|

end

end A141728.P5644228105362006120

/-! ## A141728.P10909995760185645305

`(A141727(n)-A141743(n))^A000123(n)`
-/

namespace A141728.P10909995760185645305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141743 n : ℚ) ^ (A000123 n : ℤ)

end

end A141728.P10909995760185645305

/-! ## A141728.P11343482782286604467

`(A141727(n)-A141743(n))^A001105(n)`
-/

namespace A141728.P11343482782286604467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141743 n : ℚ) ^ (A001105 n : ℤ)

end

end A141728.P11343482782286604467

/-! ## A141728.P12212731193394988745

`(A141727(n)-A141743(n))^A001316(n)`
-/

namespace A141728.P12212731193394988745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141743 n : ℚ) ^ (A001316 n : ℤ)

end

end A141728.P12212731193394988745

/-! ## A141728.P5183445280462659781

`(A141727(n)-A141743(n))^A008574(n)`
-/

namespace A141728.P5183445280462659781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141743 n : ℚ) ^ (A008574 n : ℤ)

end

end A141728.P5183445280462659781

/-! ## A141728.P11146991701793001692

`gcd(A141727(n)-A141743(n), A000038(n))`
-/

namespace A141728.P11146991701793001692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141727 n - A141743 n) (A000038 n)

end

end A141728.P11146991701793001692

/-! ## A141728.P12653831816214863485

`A000007(a((A141727(n)-A141743(n))²))` with `a(0)=1`
-/

namespace A141728.P12653831816214863485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 (a ((A141727 n - A141743 n) ^ 2).toNat).toNat

end

end A141728.P12653831816214863485

/-! ## A141728.P4908049696916023984

`abs((A141727(n)-A141743(n))^A000041(n))`
-/

namespace A141728.P4908049696916023984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A141727 n - A141743 n : ℚ) ^ (A000041 n : ℤ)|

end

end A141728.P4908049696916023984

/-! ## A141728.P1370485018288856616

`abs((A141727(n)-A141743(n))^A007318(n))`
-/

namespace A141728.P1370485018288856616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A141727 n - A141743 n : ℚ) ^ (A007318 n : ℤ)|

end

end A141728.P1370485018288856616

/-! ## A141728.P13415477976826814069

`((A141727(n)-A141743(n))^A000034(n))²`
-/

namespace A141728.P13415477976826814069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141727 n - A141743 n : ℚ) ^ (A000034 n : ℤ)) ^ 2

end

end A141728.P13415477976826814069

/-! ## A141728.P137516640042179378

`A000045((A141727(n)-A141743(n))²^n)`
-/

namespace A141728.P137516640042179378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((A141727 n - A141743 n) ^ 2) ^ n).toNat

end

end A141728.P137516640042179378

/-! ## A141728.P16416406865106315119

`(A141727(n)-A141743(n))^A000010(n+1)`
-/

namespace A141728.P16416406865106315119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141743 n : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A141728.P16416406865106315119

/-! ## A141728.P2917634313015525391

`A000045((A141727(n)-A141743(n))^(2*n))`
-/

namespace A141728.P2917634313015525391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((A141727 n - A141743 n) ^ (2 * n)).toNat

end

end A141728.P2917634313015525391

/-! ## A141728.P477045687588892115

`(A141727(n)-A141743(n))^A000203(n+5)`
-/

namespace A141728.P477045687588892115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141743 n : ℚ) ^ (A000203 (n + 5) : ℤ)

end

end A141728.P477045687588892115

/-! ## A141728.P6384377958610201537

`((A141727(n)-A141743(n))^A000005(n+1))²`
-/

namespace A141728.P6384377958610201537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141727 n - A141743 n : ℚ) ^ (A000005 (n + 1) : ℤ)) ^ 2

end

end A141728.P6384377958610201537

/-! ## A141728.P16489293360860560699

`((A141727(n)-A141743(n))^A000041(n+1))²`
-/

namespace A141728.P16489293360860560699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141727 n - A141743 n : ℚ) ^ (A000041 (n + 1) : ℤ)) ^ 2

end

end A141728.P16489293360860560699

/-! ## A141728.P11965328418989686722

`(A141727(n)-A141743(n))^A001222((n+1)²)`
-/

namespace A141728.P11965328418989686722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141743 n : ℚ) ^ (A001222 ((n + 1) ^ 2) : ℤ)

end

end A141728.P11965328418989686722

/-! ## A141728.P15342014771148993150

`((A141727(n)-A141743(n))^A005117(n+1))²`
-/

namespace A141728.P15342014771148993150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141727 n - A141743 n : ℚ) ^ (A005117 (n + 1) : ℤ)) ^ 2

end

end A141728.P15342014771148993150

/-! ## A141728.P15974489686490765588

`((A141727(n)-A141743(n))^A000040(n+2))²`
-/

namespace A141728.P15974489686490765588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141727 n - A141743 n : ℚ) ^ (A000040 (n + 2) : ℤ)) ^ 2

end

end A141728.P15974489686490765588

/-!
# A141729: Numbers of 1's in the rows of triangle A141727.

The programs for A141729, there is no canonical definition to state claims against.
-/

/-! ## A141729.P2118203622728682681

`char[2]+A005408(n)-A141730(n+1)`
-/

namespace A141729.P2118203622728682681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A005408 n - A141730 (n + 1))

end

end A141729.P2118203622728682681

/-!
# A141730: Numbers of 0's in the rows of triangle A141727.

The programs for A141730, there is no canonical definition to state claims against.
-/

/-! ## A141730.P11219796207784602615

`Δ[n²]-(A141729(n+1)-char[2])`
-/

namespace A141730.P11219796207784602615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (A141729 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A141730.P11219796207784602615

/-! ## A141730.P8094276200572436567

`char[2]+A005408(n)-A141729(n+1)`
-/

namespace A141730.P8094276200572436567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A005408 n - A141729 (n + 1))

end

end A141730.P8094276200572436567

/-! ## A141730.P10032945094886825291

`A005843(n)+1-(A141729(n+1)-char[2])`
-/

namespace A141730.P10032945094886825291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - (A141729 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)))

end

end A141730.P10032945094886825291

/-! ## A141730.P17261157646894947835

`A008585(n+1)-(A141729(n+1)-char[2]+n+2)`
-/

namespace A141730.P17261157646894947835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) - (A141729 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n + 2 : ℤ))

end

end A141730.P17261157646894947835

/-! ## A141730.P625009432045760390

`A046691(n+2)+1-(A167614(n+1)+A141729(n+1)-char[2])`
-/

namespace A141730.P625009432045760390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (n + 2) + 1 - (A167614 (n + 1) + (A141729 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)))

end

end A141730.P625009432045760390

/-!
# A141731: Numbers of 1's in the rows of triangle A141728.

The programs for A141731, there is no canonical definition to state claims against.
-/

/-! ## A141731.P12182665219100159224

`Δ[n²]-A141732(n+1)`
-/

namespace A141731.P12182665219100159224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A141732 (n + 1)

end

end A141731.P12182665219100159224

/-! ## A141731.P16848654124659660579

`abs(A141732(n+1)-A005408(n))`
-/

namespace A141731.P16848654124659660579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141732 (n + 1) - A005408 n|

end

end A141731.P16848654124659660579

/-! ## A141731.P15863455376084901148

`A005843(n)+1-A141732(n+1)`
-/

namespace A141731.P15863455376084901148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A141732 (n + 1))

end

end A141731.P15863455376084901148

/-! ## A141731.P9541860139593908711

`Δ[A028552(n)]-(A141732(n+1)+3)`
-/

namespace A141731.P9541860139593908711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A141732 (n + 1) + 3)

end

end A141731.P9541860139593908711

/-! ## A141731.P10916971424830400184

`A004396(3*n)-A141732(n+1)+1`
-/

namespace A141731.P10916971424830400184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (3 * n) - A141732 (n + 1) + 1

end

end A141731.P10916971424830400184

/-! ## A141731.P7861782862282984349

`A000027(n+1)-A141732(n+1)+n`
-/

namespace A141731.P7861782862282984349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A141732 (n + 1) + (n : ℤ)

end

end A141731.P7861782862282984349

/-! ## A141731.P3776159866180610335

`(2*n+1-A141732(n+1))%A000040(n+1)`
-/

namespace A141731.P3776159866180610335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) - A141732 (n + 1)) (A000040 (n + 1))

end

end A141731.P3776159866180610335

/-! ## A141731.P7538522793090536392

`2*n+A000045(gcd(n, n+1))-A141732(n+1)`
-/

namespace A141731.P7538522793090536392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A000045 (Nat.gcd n (n + 1)) - A141732 (n + 1))

end

end A141731.P7538522793090536392

/-! ## A141731.P10081524427537323756

`(n+1+n-A141732(n+1))%record[A014963(n+2)]`
-/

namespace A141731.P10081524427537323756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 + n : ℤ) - A141732 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A141731.P10081524427537323756

/-!
# A141732: Numbers of 0's in the rows of triangle A141728.

The programs for A141732, there is no canonical definition to state claims against.
-/

/-! ## A141732.P18408695920684277199

`Δ[n²]-A141731(n+1)`
-/

namespace A141732.P18408695920684277199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A141731 (n + 1)

end

end A141732.P18408695920684277199

/-! ## A141732.P2950576532391819355

`2*n-A141731(abs(xor(n, -1)))+1`
-/

namespace A141732.P2950576532391819355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A141731 |Int.xor (n : ℤ) (-1)|.toNat + 1

end

end A141732.P2950576532391819355

/-! ## A141732.P10699824878532326095

`2*n-A141731(2*n-n+1)+1`
-/

namespace A141732.P10699824878532326095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A141731 ((2 * n : ℤ) - (n : ℤ) + 1).toNat + 1

end

end A141732.P10699824878532326095

/-! ## A141732.P1705418432601029005

`abs(A141731(n+1)-A005408(n))`
-/

namespace A141732.P1705418432601029005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141731 (n + 1) - A005408 n|

end

end A141732.P1705418432601029005

/-! ## A141732.P12281611547562733914

`A005843(n)+1-A141731(n+1)`
-/

namespace A141732.P12281611547562733914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A141731 (n + 1))

end

end A141732.P12281611547562733914

/-! ## A141732.P742481184134080452

`A254667(2*n+1-A141731(n+1))`
-/

namespace A141732.P742481184134080452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 ((2 * n + 1 : ℤ) - A141731 (n + 1)).toNat

end

end A141732.P742481184134080452

/-! ## A141732.P3388464804940203440

`A103517(n+2)-(A141731(n+1)+5)`
-/

namespace A141732.P3388464804940203440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (n + 2) - (A141731 (n + 1) + 5)

end

end A141732.P3388464804940203440

/-! ## A141732.P6093125195200600962

`n+1-(A141731(n+1)+A001489(n))`
-/

namespace A141732.P6093125195200600962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A141731 (n + 1) + A001489 n)

end

end A141732.P6093125195200600962

/-!
# A141733: Binary digits, representing the rows of triangle A141727, written in base 10.

The programs for A141733, there is no canonical definition to state claims against.
-/

/-! ## A141733.P17440533083310736840

`xor(A141734(n+1), A141746(n))`
-/

namespace A141733.P17440533083310736840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141734 (n + 1)) (A141746 n)

end

end A141733.P17440533083310736840

/-! ## A141733.P16520290608802437354

`A006068(A048727(a(n-1)))` with `a(0)=1`
-/

namespace A141733.P16520290608802437354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006068 (A048727 (a (n - 1)).toNat).toNat

end

end A141733.P16520290608802437354

/-!
# A141734: Binary digits, representing the rows of triangle A141728, written in base 10.

The programs for A141734, there is no canonical definition to state claims against.
-/

/-! ## A141734.P6819635852318024893

`xor(A141733(n+1), A141746(n))`
-/

namespace A141734.P6819635852318024893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141733 (n + 1)) (A141746 n)

end

end A141734.P6819635852318024893

/-!
# A141735: List of the 0's and 1's digits of triangle A141727 along a boustrophedon path. First case: see example below.

The programs for A141735, there is no canonical definition to state claims against.
-/

/-! ## A141735.P10846525808960374618

`A141736(A020703(n+1))`
-/

namespace A141735.P10846525808960374618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141736 (A020703 (n + 1)).toNat

end

end A141735.P10846525808960374618

/-! ## A141735.P7402021911930416641

`A297933(A010435(n+2))%2`
-/

namespace A141735.P7402021911930416641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297933 (A010435 (n + 2)).toNat) 2

end

end A141735.P7402021911930416641

/-! ## A141735.P13061940150919268262

`and(A033999(n)², A297933(A010435(n+2)))`
-/

namespace A141735.P13061940150919268262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n ^ 2) (A297933 (A010435 (n + 2)).toNat)

end

end A141735.P13061940150919268262

/-! ## A141735.P18098586726351352391

`and(A000051(n+1), A297933(A010435(n+2)))`
-/

namespace A141735.P18098586726351352391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 (n + 1)) (A297933 (A010435 (n + 2)).toNat)

end

end A141735.P18098586726351352391

/-! ## A141735.P14365787513948092403

`and(A008836(n+1)², A297933(A010435(n+2)))`
-/

namespace A141735.P14365787513948092403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008836 (n + 1) ^ 2) (A297933 (A010435 (n + 2)).toNat)

end

end A141735.P14365787513948092403

/-!
# A141736: List of the 0's and 1's digits of triangle A141727 along a boustrophedon path. Second case: see example below.

The programs for A141736, there is no canonical definition to state claims against.
-/

/-! ## A141736.P1120744526497470628

`A141735(A020703(n+1))`
-/

namespace A141736.P1120744526497470628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141735 (A020703 (n + 1)).toNat

end

end A141736.P1120744526497470628

/-! ## A141736.P18415447223078887314

`A127239(xor(A001182(3*n+1), A001182(n+1)))`
-/

namespace A141736.P18415447223078887314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127239 (Int.xor (A001182 (3 * n + 1)) (A001182 (n + 1))).toNat

end

end A141736.P18415447223078887314

/-! ## A141736.P12463954297996535207

`A008683(∑[A026787(A004526(n))])²`
-/

namespace A141736.P12463954297996535207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026787 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A141736.P12463954297996535207

/-! ## A141736.P4109057442710649094

`A010052(A050979(n+1)^A003557(n+1))`
-/

namespace A141736.P4109057442710649094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (SequenceMachineLib.roundAway ((A050979 (n + 1) : ℚ) ^ (A003557 (n + 1) : ℤ))).toNat

end

end A141736.P4109057442710649094

/-! ## A141736.P14062908128864723114

`A292438(A034884(2*(n+2))%(n+1))`
-/

namespace A141736.P14062908128864723114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (Int.tmod (A034884 (2 * (n + 2))) (n + 1 : ℤ)).toNat

end

end A141736.P14062908128864723114

/-!
# A141737: List of the 0's and 1's digits of triangle A141728 along a boustrophedon path. First case: see example below.

The programs for A141737, there is no canonical definition to state claims against.
-/

/-! ## A141737.P6412350334964105619

`A141738(A020703(n+1))`
-/

namespace A141737.P6412350334964105619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141738 (A020703 (n + 1)).toNat

end

end A141737.P6412350334964105619

/-! ## A141737.P12463991931154648065

`A000007(A253014(n+1)%A001316(n))`
-/

namespace A141737.P12463991931154648065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A253014 (n + 1)) (A001316 n)).toNat

end

end A141737.P12463991931154648065

/-! ## A141737.P3798570980103200660

`and(A244986(A008472(n+1)), A285305(n+1))`
-/

namespace A141737.P3798570980103200660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A244986 (A008472 (n + 1)).toNat) (A285305 (n + 1))

end

end A141737.P3798570980103200660

/-! ## A141737.P11717237089146754208

`A230629(A071761(n+7)%A014673(n+4))`
-/

namespace A141737.P11717237089146754208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230629 (Int.tmod (A071761 (n + 7)) (A014673 (n + 4))).toNat

end

end A141737.P11717237089146754208

/-! ## A141737.P5009023914745967385

`A359590(A136396(n)*A348367(n+1))`
-/

namespace A141737.P5009023914745967385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359590 (A136396 n * A348367 (n + 1)).toNat

end

end A141737.P5009023914745967385

/-!
# A141738: List of the 0's and 1's digits of triangle A141728 along a boustrophedon path. Second case: see example below.

The programs for A141738, there is no canonical definition to state claims against.
-/

/-! ## A141738.P15006062972026595327

`A141737(A020703(n+1))`
-/

namespace A141738.P15006062972026595327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141737 (A020703 (n + 1)).toNat

end

end A141738.P15006062972026595327

/-! ## A141738.P10868274714650452532

`A141737(n-2*A196199(n)+1)`
-/

namespace A141738.P10868274714650452532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141737 ((n : ℤ) - 2 * A196199 n + 1).toNat

end

end A141738.P10868274714650452532

/-! ## A141738.P7891161276088884768

`A010060(A220777(n)+A002183(n+1)²)`
-/

namespace A141738.P7891161276088884768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A220777 n + A002183 (n + 1) ^ 2).toNat

end

end A141738.P7891161276088884768

/-! ## A141738.P3705881485938394677

`A215781(A216527(n+1))%2`
-/

namespace A141738.P3705881485938394677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215781 (A216527 (n + 1)).toNat) 2

end

end A141738.P3705881485938394677

/-! ## A141738.P18238467429364008265

`A083035(A370787(n+1))`
-/

namespace A141738.P18238467429364008265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (A370787 (n + 1)).toNat

end

end A141738.P18238467429364008265

/-!
# A141739: Cumulative sums of the rows of triangle A141727.

The programs for A141739, there is no canonical definition to state claims against.
-/

/-! ## A141739.P8974983569112551251

`∑[A141729(n+1)-char[2]]`
-/

namespace A141739.P8974983569112551251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141729 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141739.P8974983569112551251

/-! ## A141739.P7390009386866512169

`∑[Δ[n²]-A141730(n+1)]`
-/

namespace A141739.P7390009386866512169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A141730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141739.P7390009386866512169

/-! ## A141739.P3451850092356394967

`∑[xor(A141729(n+1), A185012(n))]`
-/

namespace A141739.P3451850092356394967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141729 (n + 1)) (A185012 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141739.P3451850092356394967

/-! ## A141739.P355732499363599875

`∑[A005408(n+1)-A141730(n+1)-2]`
-/

namespace A141739.P355732499363599875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) - A141730 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141739.P355732499363599875

/-! ## A141739.P12462138328154028833

`a(n-1)+A005408(n)-A141730(n+1)` with `a(0)=1`
-/

namespace A141739.P12462138328154028833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A005408 n - A141730 (n + 1))

end

end A141739.P12462138328154028833

/-!
# A141740: Cumulative sum of the rows of triangle A141728.

The programs for A141740, there is no canonical definition to state claims against.
-/

/-! ## A141740.P3742280929461286065

`∑[A141731(n+1)]`
-/

namespace A141740.P3742280929461286065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141740.P3742280929461286065

/-! ## A141740.P16005072264773876361

`∑[Δ[n²]-A141732(n+1)]`
-/

namespace A141740.P16005072264773876361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A141732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141740.P16005072264773876361

/-! ## A141740.P13951145156422118049

`A141731(abs(xor(n, -1)))+a(n-1)` with `a(0)=1`
-/

namespace A141740.P13951145156422118049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A141731 |Int.xor (n : ℤ) (-1)|.toNat + a (n - 1)

end

end A141740.P13951145156422118049

/-! ## A141740.P2393330831492372745

`∑[abs(A141732(n+1)-A005408(n))]`
-/

namespace A141740.P2393330831492372745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141732 (n + 1) - A005408 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141740.P2393330831492372745

/-! ## A141740.P17763863101417733868

`∑[A005843(n)+1-A141732(n+1)]`
-/

namespace A141740.P17763863101417733868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A141732 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141740.P17763863101417733868

/-!
# A141743: Triangle read by rows T(n,k). Triangle elements are 0 and 1. Starting with 0 in the top add below a second row of (2n-1) elements (with n=2 -> 3). Moving from left to right add 0 if the number of adjacent 1's is odd or add 1 if it is even or null. See example below.

The programs for A141743, there is no canonical definition to state claims against.
-/

/-! ## A141743.P9375791241314120873

`xor(A141727(n), A141728(n))`
-/

namespace A141743.P9375791241314120873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141727 n) (A141728 n)

end

end A141743.P9375791241314120873

/-! ## A141743.P11606396394150996918

`(A141727(floor(acot(n)+n))-A141728(n))²`
-/

namespace A141743.P11606396394150996918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141727 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - A141728 n) ^ 2

end

end A141743.P11606396394150996918

/-! ## A141743.P5424020891510333064

`(A141727(n)-A141728(n))^A000118(n)`
-/

namespace A141743.P5424020891510333064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141728 n : ℚ) ^ (A000118 n : ℤ)

end

end A141743.P5424020891510333064

/-! ## A141743.P8586491259126462776

`(A141727(n)-A141728(n))^A001316(n)`
-/

namespace A141743.P8586491259126462776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141728 n : ℚ) ^ (A001316 n : ℤ)

end

end A141743.P8586491259126462776

/-! ## A141743.P10978208893161590428

`(A141727(n)-A141728(n))^A001504(n)`
-/

namespace A141743.P10978208893161590428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141728 n : ℚ) ^ (A001504 n : ℤ)

end

end A141743.P10978208893161590428

/-! ## A141743.P16869412266152349277

`(A141727(n)-A141728(n))^A001561(n)`
-/

namespace A141743.P16869412266152349277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141728 n : ℚ) ^ (A001561 n : ℤ)

end

end A141743.P16869412266152349277

/-! ## A141743.P11652862183616487958

`(A141727(n)-A141728(n))^A006233(n)`
-/

namespace A141743.P11652862183616487958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141728 n : ℚ) ^ (A006233 n : ℤ)

end

end A141743.P11652862183616487958

/-! ## A141743.P11367672096850540202

`and(A141728(n)+A141727(n), A001844(n))`
-/

namespace A141743.P11367672096850540202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141728 n + A141727 n) (A001844 n)

end

end A141743.P11367672096850540202

/-! ## A141743.P4514878983116338381

`abs((A141727(n)-A141728(n))^A000041(n))`
-/

namespace A141743.P4514878983116338381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A141727 n - A141728 n : ℚ) ^ (A000041 n : ℤ)|

end

end A141743.P4514878983116338381

/-! ## A141743.P8856041546442592511

`abs((A141727(n)-A141728(n))^A007318(n))`
-/

namespace A141743.P8856041546442592511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A141727 n - A141728 n : ℚ) ^ (A007318 n : ℤ)|

end

end A141743.P8856041546442592511

/-! ## A141743.P17143593304790587524

`((A141727(n)-A141728(n))^A000124(n))²`
-/

namespace A141743.P17143593304790587524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141727 n - A141728 n : ℚ) ^ (A000124 n : ℤ)) ^ 2

end

end A141743.P17143593304790587524

/-! ## A141743.P12241634043013230660

`(A141727(n)-A141728(n))^A000010(n+1)`
-/

namespace A141743.P12241634043013230660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141728 n : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A141743.P12241634043013230660

/-! ## A141743.P3627439145402515445

`(A141727(n)-A141728(n))^A000005(n+5)`
-/

namespace A141743.P3627439145402515445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141728 n : ℚ) ^ (A000005 (n + 5) : ℤ)

end

end A141743.P3627439145402515445

/-! ## A141743.P8432370342612723598

`(A141727(n)-A141728(n))^A000203(n+5)`
-/

namespace A141743.P8432370342612723598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141727 n - A141728 n : ℚ) ^ (A000203 (n + 5) : ℤ)

end

end A141743.P8432370342612723598

/-! ## A141743.P11125163621879120003

`abs((A141727(n)-A141728(n))^A020639(n+1))`
-/

namespace A141743.P11125163621879120003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A141727 n - A141728 n : ℚ) ^ (A020639 (n + 1) : ℤ)|

end

end A141743.P11125163621879120003

/-! ## A141743.P9321777640526732824

`((A141727(n)-A141728(n))^A000040(n+1))²`
-/

namespace A141743.P9321777640526732824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141727 n - A141728 n : ℚ) ^ (A000040 (n + 1) : ℤ)) ^ 2

end

end A141743.P9321777640526732824

/-! ## A141743.P10881794432295830834

`((A141727(n)-A141728(n))^A014963(n+1))²`
-/

namespace A141743.P10881794432295830834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141727 n - A141728 n : ℚ) ^ (A014963 (n + 1) : ℤ)) ^ 2

end

end A141743.P10881794432295830834

/-! ## A141743.P9966794136293423598

`((A141727(n)-A141728(n))^A018252(n+1))²`
-/

namespace A141743.P9966794136293423598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141727 n - A141728 n : ℚ) ^ (A018252 (n + 1) : ℤ)) ^ 2

end

end A141743.P9966794136293423598

/-! ## A141743.P15440973377252450911

`A000045((A141727(n)-A141728(n))^(2*(n+1)))`
-/

namespace A141743.P15440973377252450911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((A141727 n - A141728 n) ^ (2 * (n + 1))).toNat

end

end A141743.P15440973377252450911

/-!
# A141744: Numbers of 1's in the rows of triangle A141743.

The programs for A141744, there is no canonical definition to state claims against.
-/

/-! ## A141744.P10491011926406629773

`Δ[n²]-A141745(n)`
-/

namespace A141744.P10491011926406629773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A141745 n

end

end A141744.P10491011926406629773

/-! ## A141744.P712612369812405800

`2*n-A141745(n%(n+1))+1`
-/

namespace A141744.P712612369812405800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A141745 (n % (n + 1)) + 1

end

end A141744.P712612369812405800

/-! ## A141744.P10787571902090243177

`2*n-A141745(round(sqrt(n²+1)))+1`
-/

namespace A141744.P10787571902090243177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A141745 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A141744.P10787571902090243177

/-! ## A141744.P5688207484485577504

`abs(A005408(n)-A141745(n))`
-/

namespace A141744.P5688207484485577504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A141745 n|

end

end A141744.P5688207484485577504

/-! ## A141744.P1541923814641884975

`A005843(n)+1-A141745(n)`
-/

namespace A141744.P1541923814641884975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A141745 n)

end

end A141744.P1541923814641884975

/-! ## A141744.P4208194327542813694

`abs(A109613(2*n)-A141745(n))`
-/

namespace A141744.P4208194327542813694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109613 (2 * n) - A141745 n|

end

end A141744.P4208194327542813694

/-! ## A141744.P12771000505958590642

`n+1-(A141745(n)+A001489(n))`
-/

namespace A141744.P12771000505958590642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A141745 n + A001489 n)

end

end A141744.P12771000505958590642

/-! ## A141744.P10644362782584071902

`2*n+A008683(A014963(n+1))²-A141745(n)`
-/

namespace A141744.P10644362782584071902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A008683 (A014963 (n + 1)).toNat ^ 2 - A141745 n)

end

end A141744.P10644362782584071902

/-!
# A141745: Numbers of 0's in the rows of triangle A141743.

The programs for A141745, there is no canonical definition to state claims against.
-/

/-! ## A141745.P365921268022886128

`Δ[n²]-A141744(n)`
-/

namespace A141745.P365921268022886128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A141744 n

end

end A141745.P365921268022886128

/-! ## A141745.P13954408528667371480

`2*n-A141744(2*n-n)+1`
-/

namespace A141745.P13954408528667371480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A141744 (2 * n - n) + 1

end

end A141745.P13954408528667371480

/-! ## A141745.P1471467711698595275

`abs(A005408(n)-A141744(n))`
-/

namespace A141745.P1471467711698595275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A141744 n|

end

end A141745.P1471467711698595275

/-! ## A141745.P3411242036812144752

`abs(record[A004442(n)]-A141744(n))`
-/

namespace A141745.P3411242036812144752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A141744 n|

end

end A141745.P3411242036812144752

/-! ## A141745.P8887522253047021607

`abs(A004273(n+1)-A141744(n))`
-/

namespace A141745.P8887522253047021607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004273 (n + 1) - A141744 n|

end

end A141745.P8887522253047021607

/-! ## A141745.P9219893048896666255

`(A004442(2*n)-A141744(n))%87`
-/

namespace A141745.P9219893048896666255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (2 * n) - A141744 n) 87

end

end A141745.P9219893048896666255

/-! ## A141745.P12401065600808528175

`2*n+A000034(8*n)-A141744(n)`
-/

namespace A141745.P12401065600808528175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A000034 (8 * n) - A141744 n)

end

end A141745.P12401065600808528175

/-! ## A141745.P13213079175977968519

`(A004442(2*n)-A141744(n))*A007318(∑[n])`
-/

namespace A141745.P13213079175977968519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 (2 * n) - A141744 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141745.P13213079175977968519

/-!
# A141746: Binary digits, representing the rows of triangle A141743, written in base 10.

The programs for A141746, there is no canonical definition to state claims against.
-/

/-! ## A141746.P194143533375564464

`xor(A141733(n+1), A141734(n+1))`
-/

namespace A141746.P194143533375564464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141733 (n + 1)) (A141734 (n + 1))

end

end A141746.P194143533375564464

/-!
# A141747: a(n) is the number of nonnegative integer pairs i,j such that n = 2^i + 3^j.

The programs for A141747, there is no canonical definition to state claims against.
-/

/-! ## A141747.P1801205393527469301

`A319395(A356069(n+1)^A326031(n))`
-/

namespace A141747.P1801205393527469301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 (SequenceMachineLib.roundAway ((A356069 (n + 1) : ℚ) ^ (A326031 n : ℤ))).toNat

end

end A141747.P1801205393527469301

/-! ## A141747.P2174476032365150862

`xor(A007814(A001611(n)), A135136(n))`
-/

namespace A141747.P2174476032365150862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (A001611 n).toNat) (A135136 n)

end

end A141747.P2174476032365150862

/-! ## A141747.P18446648812216193336

`A168324(A097133(n))%A168330(n+1)`
-/

namespace A141747.P18446648812216193336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168324 (A097133 n).toNat) (A168330 (n + 1))

end

end A141747.P18446648812216193336

/-! ## A141747.P4916631109279506711

`A060401(n+1)%p?[A226056(2*(n+2))]`
-/

namespace A141747.P4916631109279506711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226056 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141747.P4916631109279506711

/-! ## A141747.P388104138773180570

`Δ[A107436(A276878(A191165(n+1)))]`
-/

namespace A141747.P388104138773180570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (A276878 (A191165 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141747.P388104138773180570

/-!
# A141748: a(n) = n-th nonnegative integer k such that there is a unique nonnegative integer pair (i,j) for which n = 2^i + 3^j.

The programs for A141748, there is no canonical definition to state claims against.
-/

/-! ## A141748.P15073383613311177897

`eq[1, A141747(n+1)]+1`
-/

namespace A141748.P15073383613311177897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A141748.P15073383613311177897

/-! ## A141748.P1657019447969403745

`eq[1, A141747(A028310(n))]`
-/

namespace A141748.P1657019447969403745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141747 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141748.P1657019447969403745

/-! ## A141748.P11449125706625099504

`A020725(eq[1, A141747(n+1)])`
-/

namespace A141748.P11449125706625099504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141748.P11449125706625099504

/-! ## A141748.P17580660507556567309

`eq[3, A298413(a(A141747(n)))]` with `a(0)=1`
-/

namespace A141748.P17580660507556567309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A298413 (f2 (A141747 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141748.P17580660507556567309

/-! ## A141748.P17363879356996075934

`eq[1, A005044(a(A141747(n)))]` with `a(0)=2, a(1)=3`
-/

namespace A141748.P17363879356996075934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A005044 (f2 (A141747 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141748.P17363879356996075934

/-! ## A141748.P2918255040264361233

`eq[1, A117010(a(A141747(n)))]` with `a(0)=3, a(1)=2`
-/

namespace A141748.P2918255040264361233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A117010 (f2 (A141747 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141748.P2918255040264361233

/-! ## A141748.P9693938569339713726

`eq[1, A141747(A008619(A004273(n)))]`
-/

namespace A141748.P9693938569339713726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141747 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141748.P9693938569339713726

/-! ## A141748.P12210355570045940298

`record[A004050(n+1)/A141747(A004050(n+1))]`
-/

namespace A141748.P12210355570045940298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004050 (n + 1) : ℚ) / (A141747 (A004050 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141748.P12210355570045940298

/-!
# A141751: Triangle, read by rows, where T(n,k) = [T(n-1,k-1)*T(n-1,k) + 1]/T(n-2,k-1) for 0=0 and T(n,0) = Fibonacci(2*n-1) for n>=1.

The programs for A141751, there is no canonical definition to state claims against.
-/

/-! ## A141751.P16639855829153096563

`A020951(A130329(A000007(n)+n))`
-/

namespace A141751.P16639855829153096563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A130329 (A000007 n + (n : ℤ)).toNat).toNat

end

end A141751.P16639855829153096563

/-! ## A141751.P103212207392515570

`A020951(A169585(n)+A130329(n))`
-/

namespace A141751.P103212207392515570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A169585 n + A130329 n).toNat

end

end A141751.P103212207392515570

/-! ## A141751.P10255081687714005116

`A020951(A130329(n)-A000007(n))`
-/

namespace A141751.P10255081687714005116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A130329 n - A000007 n).toNat

end

end A141751.P10255081687714005116

/-! ## A141751.P3958016711794458569

`A020951(A130329(n)-A169585(n))`
-/

namespace A141751.P3958016711794458569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A130329 n - A169585 n).toNat

end

end A141751.P3958016711794458569

/-! ## A141751.P11554025044323760519

`A020951(A130329(n)%(A000045(2*(n+2))-A000032(2*n)))`
-/

namespace A141751.P11554025044323760519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (Int.tmod (A130329 n) (A000045 (2 * (n + 2)) - A000032 (2 * n))).toNat

end

end A141751.P11554025044323760519

/-!
# A141752: a(n) = Sum_{k=0..n} ( Fibonacci(2*k-1) + (n-k)*Fibonacci(2*k) ).

The programs for A141752, the canonical program `A141752.P6112027645984727575` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141752 has offset 0).

The definition of A141752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141752.P13306355137124445547

`A055588(n)+A054452(n)`
-/

namespace A141752.P13306355137124445547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n + A054452 n

end

end A141752.P13306355137124445547

namespace A141752

/-- `A055588(n)+A054452(n)` -/
def P13306355137124445547.Spec : Prop :=
  ∀ n, P13306355137124445547.a n = A141752 n

end A141752

/-! ## A141752.P6112027645984727575

`5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A141752

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` -/
def P6112027645984727575.Spec : Prop :=
  ∀ n, P6112027645984727575.a n = A141752 n

theorem P6112027645984727575.correct : P6112027645984727575.Spec := by
  intro n
  simp only [A141752]

end A141752

/-! ## A141752.P5290049241628648487

`∑[∑[ogf((1-3x+3x^2)/(1-3x+x^2))]]`
-/

namespace A141752.P5290049241628648487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -3, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141752.P5290049241628648487

namespace A141752

/-- `∑[∑[ogf((1-3x+3x^2)/(1-3x+x^2))]]` -/
def P5290049241628648487.Spec : Prop :=
  ∀ n, P5290049241628648487.a n = A141752 n

end A141752

/-! ## A141752.P8973936054709261793

`∑[or(1, ceil(ϕ²*a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A141752.P8973936054709261793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.lor 1 ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141752.P8973936054709261793

namespace A141752

/-- `∑[or(1, ceil(ϕ²*a(n-1)))]` -/
def P8973936054709261793.Spec : Prop :=
  ∀ n, P8973936054709261793.a n = A141752 n

end A141752

/-! ## A141752.P7102551064222081325

`∑[floor(ϕ²*a(n-1))+2]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A141752.P7102551064222081325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋ + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141752.P7102551064222081325

namespace A141752

/-- `∑[floor(ϕ²*a(n-1))+2]` -/
def P7102551064222081325.Spec : Prop :=
  ∀ n, P7102551064222081325.a n = A141752 n

end A141752

/-! ## A141752.P12999643432215529030

`∑[3*a(n-1)+1-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A141752.P12999643432215529030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 1) + (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141752.P12999643432215529030

namespace A141752

/-- `∑[3*a(n-1)+1-a(n-2)]` -/
def P12999643432215529030.Spec : Prop :=
  ∀ n, P12999643432215529030.a n = A141752 n

end A141752

/-! ## A141752.P5642663008548751111

`∑[1-(a(n-2)-3*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A141752.P5642663008548751111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - (f1 (n - 2) - 3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141752.P5642663008548751111

namespace A141752

/-- `∑[1-(a(n-2)-3*a(n-1))]` -/
def P5642663008548751111.Spec : Prop :=
  ∀ n, P5642663008548751111.a n = A141752 n

end A141752

/-! ## A141752.P8687362970484462908

`3*a(n-1)-(a(n-2)+2)+n` with `a(0)=1, a(1)=2`
-/

namespace A141752.P8687362970484462908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) - (a (n - 2) + 2) + (n : ℤ)

end

end A141752.P8687362970484462908

namespace A141752

/-- `3*a(n-1)-(a(n-2)+2)+n` -/
def P8687362970484462908.Spec : Prop :=
  ∀ n, P8687362970484462908.a n = A141752 n

end A141752

/-! ## A141752.P15582638305794593107

`3*a(n-1)-(2-(n-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A141752.P15582638305794593107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) - (2 - ((n : ℤ) - a (n - 2)))

end

end A141752.P15582638305794593107

namespace A141752

/-- `3*a(n-1)-(2-(n-a(n-2)))` -/
def P15582638305794593107.Spec : Prop :=
  ∀ n, P15582638305794593107.a n = A141752 n

end A141752

/-! ## A141752.P1048341231221536857

`∑[A055819(n)]-n`
-/

namespace A141752.P1048341231221536857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A141752.P1048341231221536857

namespace A141752

/-- `∑[A055819(n)]-n` -/
def P1048341231221536857.Spec : Prop :=
  ∀ n, P1048341231221536857.a n = A141752 n

end A141752

/-! ## A141752.P18089807593509398209

`∑[A066983(Δ[n²])]`
-/

namespace A141752.P18089807593509398209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141752.P18089807593509398209

namespace A141752

/-- `∑[A066983(Δ[n²])]` -/
def P18089807593509398209.Spec : Prop :=
  ∀ n, P18089807593509398209.a n = A141752 n

end A141752

/-! ## A141752.P11066014540788678060

`A192908(n+1)-n`
-/

namespace A141752.P11066014540788678060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192908 (n + 1) - (n : ℤ)

end

end A141752.P11066014540788678060

namespace A141752

/-- `A192908(n+1)-n` -/
def P11066014540788678060.Spec : Prop :=
  ∀ n, P11066014540788678060.a n = A141752 n

end A141752

/-! ## A141752.P15080495270966463865

`A001588(2*n)-n`
-/

namespace A141752.P15080495270966463865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 (2 * n) - (n : ℤ)

end

end A141752.P15080495270966463865

namespace A141752

/-- `A001588(2*n)-n` -/
def P15080495270966463865.Spec : Prop :=
  ∀ n, P15080495270966463865.a n = A141752 n

end A141752

/-! ## A141752.P17662289738252566840

`A166012(2*n)-n`
-/

namespace A141752.P17662289738252566840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 (2 * n) - (n : ℤ)

end

end A141752.P17662289738252566840

namespace A141752

/-- `A166012(2*n)-n` -/
def P17662289738252566840.Spec : Prop :=
  ∀ n, P17662289738252566840.a n = A141752 n

end A141752

/-! ## A141752.P10724503605130325904

`∑[∑[A192908(n)]-n]`
-/

namespace A141752.P10724503605130325904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192908 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141752.P10724503605130325904

namespace A141752

/-- `∑[∑[A192908(n)]-n]` -/
def P10724503605130325904.Spec : Prop :=
  ∀ n, P10724503605130325904.a n = A141752 n

end A141752

/-! ## A141752.P487182671810974371

`∑[A052995(n)-1]+2`
-/

namespace A141752.P487182671810974371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052995 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A141752.P487182671810974371

namespace A141752

/-- `∑[A052995(n)-1]+2` -/
def P487182671810974371.Spec : Prop :=
  ∀ n, P487182671810974371.a n = A141752 n

end A141752

/-! ## A141752.P12511783832703868907

`∑[A128587(2*n+1)]`
-/

namespace A141752.P12511783832703868907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128587 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141752.P12511783832703868907

namespace A141752

/-- `∑[A128587(2*n+1)]` -/
def P12511783832703868907.Spec : Prop :=
  ∀ n, P12511783832703868907.a n = A141752 n

end A141752

/-! ## A141752.P814450554278656277

`∑[A118658(2*n)-1]`
-/

namespace A141752.P814450554278656277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141752.P814450554278656277

namespace A141752

/-- `∑[A118658(2*n)-1]` -/
def P814450554278656277.Spec : Prop :=
  ∀ n, P814450554278656277.a n = A141752 n

end A141752

/-! ## A141752.P9856680187700538082

`∑[A295686(2*n)-1]`
-/

namespace A141752.P9856680187700538082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295686 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141752.P9856680187700538082

namespace A141752

/-- `∑[A295686(2*n)-1]` -/
def P9856680187700538082.Spec : Prop :=
  ∀ n, P9856680187700538082.a n = A141752 n

end A141752

/-! ## A141752.P13530055700592392998

`∑[A006355(2*n)]-n`
-/

namespace A141752.P13530055700592392998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A141752.P13530055700592392998

namespace A141752

/-- `∑[A006355(2*n)]-n` -/
def P13530055700592392998.Spec : Prop :=
  ∀ n, P13530055700592392998.a n = A141752 n

end A141752

/-!
# A141753: Main diagonal of A139755, the table of q-derangement numbers of type A.

The programs for A141753, there is no canonical definition to state claims against.
-/

/-! ## A141753.P5984317314576624650

`A139755(∑[∑[a(n-2)+2]])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A141753.P5984317314576624650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139755 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141753.P5984317314576624650

/-! ## A141753.P2636721523619340834

`A139755(A064843(n+1)+1+n)`
-/

namespace A141753.P2636721523619340834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139755 (A064843 (n + 1) + 1 + (n : ℤ)).toNat

end

end A141753.P2636721523619340834

/-! ## A141753.P10554444239342316253

`A139755(A000982(n)+A000125(n))`
-/

namespace A141753.P10554444239342316253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139755 (A000982 n + A000125 n).toNat

end

end A141753.P10554444239342316253

/-! ## A141753.P5434119267840876157

`A139755(A080513(n)+A000292(n))`
-/

namespace A141753.P5434119267840876157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139755 (A080513 n + A000292 n).toNat

end

end A141753.P5434119267840876157

/-! ## A141753.P387555141242457358

`A139755(A026035(n+2)-A084265(n))`
-/

namespace A141753.P387555141242457358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139755 (A026035 (n + 2) - A084265 n).toNat

end

end A141753.P387555141242457358

/-!
# A141754: Secondary diagonal of A139755, the table of q-derangement numbers of type A.

The programs for A141754, there is no canonical definition to state claims against.
-/

/-! ## A141754.P10631500665138162499

`A139755(A026035(n+2))`
-/

namespace A141754.P10631500665138162499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139755 (A026035 (n + 2)).toNat

end

end A141754.P10631500665138162499

/-! ## A141754.P17423794415214015748

`A139755(∑[A084265(n)+1])`
-/

namespace A141754.P17423794415214015748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139755 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A141754.P17423794415214015748

/-! ## A141754.P2977326881329654322

`A139755(A110611(n+1)+1)`
-/

namespace A141754.P2977326881329654322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139755 (A110611 (n + 1) + 1).toNat

end

end A141754.P2977326881329654322

/-! ## A141754.P1319196275360729642

`A139755(∑[∑[A103889(n+1)]])`
-/

namespace A141754.P1319196275360729642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139755 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A141754.P1319196275360729642

/-! ## A141754.P6974447463424138153

`A139755(A064843(n+2)+n+1)`
-/

namespace A141754.P6974447463424138153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139755 (A064843 (n + 2) + (n + 1 : ℤ)).toNat

end

end A141754.P6974447463424138153

/-!
# A141755: Product of two primes whose sum is a perfect square.

The programs for A141755, the canonical program `A141755.P13565585022671085001` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141755 has offset 1).

The definition of A141755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141755.P6912306483348302764

`filter[A051448(n+1), A374128(#)]`
-/

namespace A141755.P6912306483348302764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A141755.P6912306483348302764

namespace A141755

/-- `filter[A051448(n+1), A374128(#)]` -/
def P6912306483348302764.Spec : Prop :=
  ∀ n, P6912306483348302764.a n = A141755 (n + 1)

end A141755

/-! ## A141755.P10792793940797964281

`filter[A256706(n+2), A374128(#)]`
-/

namespace A141755.P10792793940797964281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256706 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A141755.P10792793940797964281

namespace A141755

/-- `filter[A256706(n+2), A374128(#)]` -/
def P10792793940797964281.Spec : Prop :=
  ∀ n, P10792793940797964281.a n = A141755 (n + 1)

end A141755

/-! ## A141755.P17819534888162339464

`filter[A377732(n+2), A374128(#)]`
-/

namespace A141755.P17819534888162339464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377732 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A141755.P17819534888162339464

namespace A141755

/-- `filter[A377732(n+2), A374128(#)]` -/
def P17819534888162339464.Spec : Prop :=
  ∀ n, P17819534888162339464.a n = A141755 (n + 1)

end A141755

/-! ## A141755.P9374611568819776432

`filter[A051448(n+1), A064911(#)]`
-/

namespace A141755.P9374611568819776432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A141755.P9374611568819776432

namespace A141755

/-- `filter[A051448(n+1), A064911(#)]` -/
def P9374611568819776432.Spec : Prop :=
  ∀ n, P9374611568819776432.a n = A141755 (n + 1)

end A141755

/-! ## A141755.P14244957810797250763

`filter[A051448(n+1), A101040(#)]`
-/

namespace A141755.P14244957810797250763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A141755.P14244957810797250763

namespace A141755

/-- `filter[A051448(n+1), A101040(#)]` -/
def P14244957810797250763.Spec : Prop :=
  ∀ n, P14244957810797250763.a n = A141755 (n + 1)

end A141755

/-! ## A141755.P8585687466620126564

`filter[A377732(n+1), A064911(#)]`
-/

namespace A141755.P8585687466620126564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A141755.P8585687466620126564

namespace A141755

/-- `filter[A377732(n+1), A064911(#)]` -/
def P8585687466620126564.Spec : Prop :=
  ∀ n, P8585687466620126564.a n = A141755 (n + 1)

end A141755

/-! ## A141755.P6595634549221483669

`filter[A256706(n+2), A064911(#)]`
-/

namespace A141755.P6595634549221483669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256706 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A141755.P6595634549221483669

namespace A141755

/-- `filter[A256706(n+2), A064911(#)]` -/
def P6595634549221483669.Spec : Prop :=
  ∀ n, P6595634549221483669.a n = A141755 (n + 1)

end A141755

/-! ## A141755.P12667493954595298971

`filter[A256706(n+2), A101040(#)]`
-/

namespace A141755.P12667493954595298971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256706 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A141755.P12667493954595298971

namespace A141755

/-- `filter[A256706(n+2), A101040(#)]` -/
def P12667493954595298971.Spec : Prop :=
  ∀ n, P12667493954595298971.a n = A141755 (n + 1)

end A141755

/-! ## A141755.P10070803077211361938

`filter[A377732(n+2), A101040(#)]`
-/

namespace A141755.P10070803077211361938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377732 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A141755.P10070803077211361938

namespace A141755

/-- `filter[A377732(n+2), A101040(#)]` -/
def P10070803077211361938.Spec : Prop :=
  ∀ n, P10070803077211361938.a n = A141755 (n + 1)

end A141755

/-! ## A141755.P16875562993972046350

`filter[A377732(n+2), A353799(#)]`
-/

namespace A141755.P16875562993972046350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377732 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A141755.P16875562993972046350

namespace A141755

/-- `filter[A377732(n+2), A353799(#)]` -/
def P16875562993972046350.Spec : Prop :=
  ∀ n, P16875562993972046350.a n = A141755 (n + 1)

end A141755

/-! ## A141755.P18354016602190686729

`filter[A256706(n+3), A123927(#)]`
-/

namespace A141755.P18354016602190686729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256706 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A141755.P18354016602190686729

namespace A141755

/-- `filter[A256706(n+3), A123927(#)]` -/
def P18354016602190686729.Spec : Prop :=
  ∀ n, P18354016602190686729.a n = A141755 (n + 1)

end A141755

/-! ## A141755.P93809099208778470

`filter[A256706(n+3), A353799(#)]`
-/

namespace A141755.P93809099208778470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256706 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A141755.P93809099208778470

namespace A141755

/-- `filter[A256706(n+3), A353799(#)]` -/
def P93809099208778470.Spec : Prop :=
  ∀ n, P93809099208778470.a n = A141755 (n + 1)

end A141755

/-! ## A141755.P13565585022671085001

`∩[A001358(n+1), A051448(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A141755

/-- `∩[A001358(n+1), A051448(n+1)]` -/
def P13565585022671085001.Spec : Prop :=
  ∀ n, (P13565585022671085001.a n : ℤ) = A141755 (n + 1)

theorem P13565585022671085001.correct : P13565585022671085001.Spec := by
  intro n
  simp only [A141755, Nat.add_sub_cancel]

end A141755

/-! ## A141755.P14003699277781085485

`∩[A001358(n+1), A377732(n+1)]`
-/

namespace A141755.P14003699277781085485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141755.P14003699277781085485

namespace A141755

/-- `∩[A001358(n+1), A377732(n+1)]` -/
def P14003699277781085485.Spec : Prop :=
  ∀ n, (P14003699277781085485.a n : ℤ) = A141755 (n + 1)

end A141755

/-! ## A141755.P10229093259498978560

`∩[A176540(n+1), A377732(n+1)]`
-/

namespace A141755.P10229093259498978560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141755.P10229093259498978560

namespace A141755

/-- `∩[A176540(n+1), A377732(n+1)]` -/
def P10229093259498978560.Spec : Prop :=
  ∀ n, (P10229093259498978560.a n : ℤ) = A141755 (n + 1)

end A141755

/-! ## A141755.P10866816296834407285

`∩[A323644(n+1), A377732(n+1)]`
-/

namespace A141755.P10866816296834407285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141755.P10866816296834407285

namespace A141755

/-- `∩[A323644(n+1), A377732(n+1)]` -/
def P10866816296834407285.Spec : Prop :=
  ∀ n, (P10866816296834407285.a n : ℤ) = A141755 (n + 1)

end A141755

/-! ## A141755.P15368662589062118612

`∩[A077136(n+1), A377732(n+1)]`
-/

namespace A141755.P15368662589062118612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141755.P15368662589062118612

namespace A141755

/-- `∩[A077136(n+1), A377732(n+1)]` -/
def P15368662589062118612.Spec : Prop :=
  ∀ n, (P15368662589062118612.a n : ℤ) = A141755 (n + 1)

end A141755

/-! ## A141755.P2790442332250856052

`∩[A051448(n+1), A374129(n+1)]`
-/

namespace A141755.P2790442332250856052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141755.P2790442332250856052

namespace A141755

/-- `∩[A051448(n+1), A374129(n+1)]` -/
def P2790442332250856052.Spec : Prop :=
  ∀ n, (P2790442332250856052.a n : ℤ) = A141755 (n + 1)

end A141755

/-!
# A141757: Even terms in A100933.

The programs for A141757, there is no canonical definition to state claims against.
-/

/-! ## A141757.P16629260841227618423

`∩[2*A334965(n+2), A071365(2*(n+1))]`
-/

namespace A141757.P16629260841227618423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334965 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141757.P16629260841227618423

/-! ## A141757.P6921243436455874236

`A005843(∩[A082293(2*(n+1)), A333854(n+1)])`
-/

namespace A141757.P6921243436455874236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333854 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A141757.P6921243436455874236

/-!
# A141758: Elements n of A141586 with property that A100762(n) = n.

The programs for A141758, there is no canonical definition to state claims against.
-/

/-! ## A141758.P2845380550680852228

`record[A100786(n+1)]`
-/

namespace A141758.P2845380550680852228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141758.P2845380550680852228

/-! ## A141758.P7151072466665817183

`record[A100786(A008619(n))-A000035(n)]`
-/

namespace A141758.P7151072466665817183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100786 (A008619 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141758.P7151072466665817183

/-! ## A141758.P13561497676411951184

`record[A100786(A008619(n))-A033683(n)]`
-/

namespace A141758.P13561497676411951184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100786 (A008619 n).toNat - A033683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141758.P13561497676411951184

/-! ## A141758.P4672268890177238666

`record[A100786(A008620(n))-A033683(n)]`
-/

namespace A141758.P4672268890177238666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100786 (A008620 n).toNat - A033683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141758.P4672268890177238666

/-! ## A141758.P5158754224415065086

`record[A100786(A028310(n))-A033683(n)]`
-/

namespace A141758.P5158754224415065086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100786 (A028310 n).toNat - A033683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141758.P5158754224415065086

/-!
# A141759: a(n) = 16n^2 + 32n + 15.

The programs for A141759, the canonical program `A141759.P7052951860497148321` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141759 has offset 0).

The definition of A141759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n²+32*n+15` (program `A141759.P7052951860497148321`, by `A141759.P7052951860497148321.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141759.P7052951860497148321

`16*n²+32*n+15`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A141759

/-- `16*n²+32*n+15` -/
def P7052951860497148321.Spec : Prop :=
  ∀ n, (P7052951860497148321.a n : ℤ) = A141759 n

theorem P7052951860497148321.correct : P7052951860497148321.Spec := by
  intro n
  simp only [A141759]

end A141759

/-! ## A141759.P9744673651022385677

`record[(n+5)*xor(3, n)]`
-/

namespace A141759.P9744673651022385677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) * Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141759.P9744673651022385677

namespace A141759

/-- `record[(n+5)*xor(3, n)]` -/
def P9744673651022385677.Spec : Prop :=
  ∀ n, (P9744673651022385677.a n : ℤ) = A141759 n

end A141759

/-! ## A141759.P12249909453243825150

`record[xor(n, -4)²-1]`
-/

namespace A141759.P12249909453243825150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-4) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141759.P12249909453243825150

namespace A141759

/-- `record[xor(n, -4)²-1]` -/
def P12249909453243825150.Spec : Prop :=
  ∀ n, P12249909453243825150.a n = A141759 n

end A141759

/-! ## A141759.P7229745146004815462

`∑[a(n-1)+32]` with `a(0)=15, a(1)=48`
-/

namespace A141759.P7229745146004815462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 48] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141759.P7229745146004815462

namespace A141759

/-- `∑[a(n-1)+32]` -/
def P7229745146004815462.Spec : Prop :=
  ∀ n, (P7229745146004815462.a n : ℤ) = A141759 n

end A141759

/-! ## A141759.P2586026512435539716

`record[(4*(1-n))²-1]`
-/

namespace A141759.P2586026512435539716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (1 - (n : ℤ))) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141759.P2586026512435539716

namespace A141759

/-- `record[(4*(1-n))²-1]` -/
def P2586026512435539716.Spec : Prop :=
  ∀ n, P2586026512435539716.a n = A141759 n

end A141759

/-! ## A141759.P12356926832847193149

`Δ[C(2*n+1, 2)]*Δ[(2*n+1)*(n+1)]`
-/

namespace A141759.P12356926832847193149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A141759.P12356926832847193149

namespace A141759

/-- `Δ[C(2*n+1, 2)]*Δ[(2*n+1)*(n+1)]` -/
def P12356926832847193149.Spec : Prop :=
  ∀ n, P12356926832847193149.a n = A141759 n

end A141759

/-! ## A141759.P16232556918110922215

`lcm(Δ[(2*n+1)*(n+1)], Δ[n*(2*n+1)])`
-/

namespace A141759.P16232556918110922215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A141759.P16232556918110922215

namespace A141759

/-- `lcm(Δ[(2*n+1)*(n+1)], Δ[n*(2*n+1)])` -/
def P16232556918110922215.Spec : Prop :=
  ∀ n, (P16232556918110922215.a n : ℤ) = A141759 n

end A141759

/-! ## A141759.P5799124503593099642

`(A158563(n+1)-1)/2`
-/

namespace A141759.P5799124503593099642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158563 (n + 1) - 1 : ℚ) / 2

end

end A141759.P5799124503593099642

namespace A141759

/-- `(A158563(n+1)-1)/2` -/
def P5799124503593099642.Spec : Prop :=
  ∀ n, P5799124503593099642.a n = (A141759 n : ℚ)

end A141759

/-! ## A141759.P1537452538822832021

`(A158684(n+1)-3)/4`
-/

namespace A141759.P1537452538822832021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158684 (n + 1) - 3 : ℚ) / 4

end

end A141759.P1537452538822832021

namespace A141759

/-- `(A158684(n+1)-3)/4` -/
def P1537452538822832021.Spec : Prop :=
  ∀ n, P1537452538822832021.a n = (A141759 n : ℚ)

end A141759

/-! ## A141759.P9081891738044156909

`A069975(n+1)/(n+1)`
-/

namespace A141759.P9081891738044156909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069975 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A141759.P9081891738044156909

namespace A141759

/-- `A069975(n+1)/(n+1)` -/
def P9081891738044156909.Spec : Prop :=
  ∀ n, P9081891738044156909.a n = (A141759 n : ℚ)

end A141759

/-! ## A141759.P12548351430389546210

`(4*n+5)*A004767(n)`
-/

namespace A141759.P12548351430389546210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℤ) * A004767 n

end

end A141759.P12548351430389546210

namespace A141759

/-- `(4*n+5)*A004767(n)` -/
def P12548351430389546210.Spec : Prop :=
  ∀ n, P12548351430389546210.a n = A141759 n

end A141759

/-! ## A141759.P6876959491099983720

`A133766(n)/A016813(n)`
-/

namespace A141759.P6876959491099983720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133766 n : ℚ) / (A016813 n : ℚ)

end

end A141759.P6876959491099983720

namespace A141759

/-- `A133766(n)/A016813(n)` -/
def P6876959491099983720.Spec : Prop :=
  ∀ n, P6876959491099983720.a n = (A141759 n : ℚ)

end A141759

/-! ## A141759.P2764703070837658186

`gcd(A133766(n), A158562(n+1))`
-/

namespace A141759.P2764703070837658186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133766 n) (A158562 (n + 1))

end

end A141759.P2764703070837658186

namespace A141759

/-- `gcd(A133766(n), A158562(n+1))` -/
def P2764703070837658186.Spec : Prop :=
  ∀ n, (P2764703070837658186.a n : ℤ) = A141759 n

end A141759

/-! ## A141759.P10800721329888382846

`∪[A158684(n+1), A177065(n)]`
-/

namespace A141759.P10800721329888382846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177065 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141759.P10800721329888382846

namespace A141759

/-- `∪[A158684(n+1), A177065(n)]` -/
def P10800721329888382846.Spec : Prop :=
  ∀ n, (P10800721329888382846.a n : ℤ) = A141759 n

end A141759

/-! ## A141759.P13531887775050410942

`Δ[∑[A008574(n)²]-n]`
-/

namespace A141759.P13531887775050410942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141759.P13531887775050410942

namespace A141759

/-- `Δ[∑[A008574(n)²]-n]` -/
def P13531887775050410942.Spec : Prop :=
  ∀ n, P13531887775050410942.a n = A141759 n

end A141759

/-!
# A141760: Triangle T, read by rows, where the g.f. of column k in matrix power T^m is given by: 1/(1-x)^m = Sum_{n>=k} [T^m](n,k) * x^(n-k)/(1+x)^{n(n-1)/2 - k(k-1)/2} for k>=0.

The programs for A141760, there is no canonical definition to state claims against.
-/

/-! ## A141760.P2693631793627277580

`A259899(A126460(n))`
-/

namespace A141760.P2693631793627277580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A126460 n).toNat

end

end A141760.P2693631793627277580

/-!
# A141761: Column 0 of triangle A141760.

The programs for A141761, there is no canonical definition to state claims against.
-/

/-! ## A141761.P800662410997824726

`A141760(∑[n])`
-/

namespace A141761.P800662410997824726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141761.P800662410997824726

/-! ## A141761.P5337443273737879221

`A141760(A000124(n))+char[11]`
-/

namespace A141761.P5337443273737879221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A141761.P5337443273737879221

/-! ## A141761.P10649900276438364463

`A141760(A000217(n))^floor(atan(n))`
-/

namespace A141761.P10649900276438364463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141760 (A000217 n).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A141761.P10649900276438364463

/-! ## A141761.P6691670375625725829

`A326678(n)+A141760(n²-C(n, 2))`
-/

namespace A141761.P6691670375625725829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n + A141760 (n ^ 2 - Nat.choose n 2)

end

end A141761.P6691670375625725829

/-! ## A141761.P11696399913349533181

`A141760(n²-C(n, 2))*A215561(n)`
-/

namespace A141761.P11696399913349533181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (n ^ 2 - Nat.choose n 2) * A215561 n

end

end A141761.P11696399913349533181

/-!
# A141762: Column 2 of triangle A141760.

The programs for A141762, there is no canonical definition to state claims against.
-/

/-! ## A141762.P492283983495314477

`ceil(A141761(n+2)/2)`
-/

namespace A141762.P492283983495314477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141761 (n + 2) : ℚ) / 2⌉

end

end A141762.P492283983495314477

/-! ## A141762.P14151505329923409324

`A141761(n+2)/A000122(n²)`
-/

namespace A141762.P14151505329923409324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141761 (n + 2) : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A141762.P14151505329923409324

/-! ## A141762.P4227161967242072025

`A141761(n+2)/A036453(n+1)`
-/

namespace A141762.P4227161967242072025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141761 (n + 2) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A141762.P4227161967242072025

/-! ## A141762.P12283898997605307820

`A141761(n+2)/A020639(A000010(2*(n+1)))`
-/

namespace A141762.P12283898997605307820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141761 (n + 2) : ℚ) / (A020639 (A000010 (2 * (n + 1))).toNat : ℚ)

end

end A141762.P12283898997605307820

/-!
# A141763: Column 3 of triangle A141760.

The programs for A141763, there is no canonical definition to state claims against.
-/

/-! ## A141763.P4724210922295855074

`A141760(eq[3, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A141763.P4724210922295855074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141763.P4724210922295855074

/-! ## A141763.P7330793518266941539

`A141760(A167614(n+2))`
-/

namespace A141763.P7330793518266941539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (A167614 (n + 2)).toNat

end

end A141763.P7330793518266941539

/-! ## A141763.P4245788696454466280

`A141760(A141214(n)+6)`
-/

namespace A141763.P4245788696454466280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (A141214 n + 6).toNat

end

end A141763.P4245788696454466280

/-! ## A141763.P17342556935036015456

`A141760(A052905(n)+8)`
-/

namespace A141763.P17342556935036015456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (A052905 n + 8).toNat

end

end A141763.P17342556935036015456

/-!
# A141764: Column 4 of triangle A141760.

The programs for A141764, there is no canonical definition to state claims against.
-/

/-! ## A141764.P5146547052997290341

`A141760(eq[4, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A141764.P5146547052997290341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141764.P5146547052997290341

/-! ## A141764.P12142902821536202048

`A141760(A155212(n)+12)`
-/

namespace A141764.P12142902821536202048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (A155212 n + 12).toNat

end

end A141764.P12142902821536202048

/-! ## A141764.P13744890843703191567

`A141760(A056000(n)+14)`
-/

namespace A141764.P13744890843703191567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (A056000 n + 14).toNat

end

end A141764.P13744890843703191567

/-!
# A141766: A positive integer n is included if both (p-1) and (p+1) divide n for every prime p that divides n.

The programs for A141766, there is no canonical definition to state claims against.
-/

/-! ## A141766.P6324699085595867012

`ceil(A141767(n+1)/2)`
-/

namespace A141766.P6324699085595867012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141767 (n + 1) : ℚ) / 2⌉

end

end A141766.P6324699085595867012

/-! ## A141766.P5478808835136007448

`A141767(n+1)/A036453(n+1)`
-/

namespace A141766.P5478808835136007448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141767 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A141766.P5478808835136007448

/-! ## A141766.P2407886207729586729

`A141767(n+1)/(A057427(n)+1)`
-/

namespace A141766.P2407886207729586729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141767 (n + 1) : ℚ) / (A057427 n + 1 : ℚ)

end

end A141766.P2407886207729586729

/-! ## A141766.P16717166488616696962

`∩[A124240(n+1), A140470(n+1)]`
-/

namespace A141766.P16717166488616696962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141766.P16717166488616696962

/-! ## A141766.P13946883940773803868

`A141767(n+1)/(char[A059399(n+1)]+1)`
-/

namespace A141766.P13946883940773803868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141767 (n + 1) : ℚ) / (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ)

end

end A141766.P13946883940773803868

/-! ## A141766.P1577004087186101085

`A141767(n+1)/(char[A062050(n+1)]+1)`
-/

namespace A141766.P1577004087186101085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141767 (n + 1) : ℚ) / (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ)

end

end A141766.P1577004087186101085

/-! ## A141766.P7392701916669852890

`A141767(n+1)/A141310(A038573(n))`
-/

namespace A141766.P7392701916669852890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141767 (n + 1) : ℚ) / (A141310 (A038573 n).toNat : ℚ)

end

end A141766.P7392701916669852890

/-! ## A141766.P16132841734188001776

`A141767(n+1)/A225821(A226872(n+1))`
-/

namespace A141766.P16132841734188001776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141767 (n + 1) : ℚ) / (A225821 (A226872 (n + 1)).toNat : ℚ)

end

end A141766.P16132841734188001776

/-! ## A141766.P3555162328557707762

`A141767(n+1)/A324121(p?[A322807(n+1)])`
-/

namespace A141766.P3555162328557707762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322807 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141767 (n + 1) : ℚ) / (A324121 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ)

end

end A141766.P3555162328557707762

/-! ## A141766.P9628141664480996548

`A141767(n+1)/A060764(A006530(2*n+1))`
-/

namespace A141766.P9628141664480996548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141767 (n + 1) : ℚ) / (A060764 (A006530 (2 * n + 1)).toNat : ℚ)

end

end A141766.P9628141664480996548

/-! ## A141766.P12785099454240840146

`A141767(n+1)/A324121(p?[A057300(n)])`
-/

namespace A141766.P12785099454240840146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141767 (n + 1) : ℚ) / (A324121 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ)

end

end A141766.P12785099454240840146

/-! ## A141766.P3050547609392420741

`A141767(n+1)/A141310(A141767(n+1)-1)`
-/

namespace A141766.P3050547609392420741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141767 (n + 1) : ℚ) / (A141310 (A141767 (n + 1) - 1).toNat : ℚ)

end

end A141766.P3050547609392420741

/-!
# A141767: A positive integer k is included if (p-1)*(p+1) divides k for every prime p that divides k.

The programs for A141767, there is no canonical definition to state claims against.
-/

/-! ## A141767.P16913542201234873780

`A036453(n+1)*A141766(n+1)`
-/

namespace A141767.P16913542201234873780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A141766 (n + 1)

end

end A141767.P16913542201234873780

/-! ## A141767.P4192257212792356849

`A141766(n+1)*A333016(n²%(n+1))`
-/

namespace A141767.P4192257212792356849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141766 (n + 1) * A333016 (n ^ 2 % (n + 1))

end

end A141767.P4192257212792356849

/-! ## A141767.P16006258470270551392

`A000005(A008578(n+1))*A141766(n+1)`
-/

namespace A141767.P16006258470270551392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A141766 (n + 1)

end

end A141767.P16006258470270551392

/-! ## A141767.P14042951327315741302

`A007947(A068068(2*n+1))*A141766(n+1)`
-/

namespace A141767.P14042951327315741302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A068068 (2 * n + 1)).toNat * A141766 (n + 1)

end

end A141767.P14042951327315741302

/-! ## A141767.P4625084426584630034

`A068068(A020639(2*n+1))*A141766(n+1)`
-/

namespace A141767.P4625084426584630034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (A020639 (2 * n + 1)).toNat * A141766 (n + 1)

end

end A141767.P4625084426584630034

/-! ## A141767.P15099938530722441016

`A020639(A141766(A001370(n)))*A141766(n+1)`
-/

namespace A141767.P15099938530722441016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A141766 (A001370 n).toNat).toNat * A141766 (n + 1)

end

end A141767.P15099938530722441016

/-! ## A141767.P4616916842581241506

`A022998(A141766(n+1))`
-/

namespace A141767.P4616916842581241506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A141766 (n + 1)).toNat

end

end A141767.P4616916842581241506

/-! ## A141767.P4693092388943442184

`A020639(A020639(n+1)*A141766(n+1))*A141766(n+1)`
-/

namespace A141767.P4693092388943442184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 1) * A141766 (n + 1)).toNat * A141766 (n + 1)

end

end A141767.P4693092388943442184

/-!
# A141768: Odd numbers with increasing numbers of bases to which they are strong pseudoprimes.

The programs for A141768, there is no canonical definition to state claims against.
-/

/-! ## A141768.P16505949409498861592

`record[A204903(A073046(n+2))]*A060265(n+2)`
-/

namespace A141768.P16505949409498861592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204903 (A073046 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A060265 (n + 2)

end

end A141768.P16505949409498861592

/-!
# A141769: Beginning of a run of 4 consecutive Niven (or Harshad) numbers.

The programs for A141769, there is no canonical definition to state claims against.
-/

/-! ## A141769.P11327457002339610159

`A154701(lt[Δ[A154701(n+1)], 3]+1)`
-/

namespace A141769.P11327457002339610159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154701 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154701 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A141769.P11327457002339610159

/-! ## A141769.P2556647762989627544

`∩[A154701(n+1), A154701(n+2)-1]`
-/

namespace A141769.P2556647762989627544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154701 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141769.P2556647762989627544

/-! ## A141769.P13752085653710884323

`A154701(eq[1, A154701(n+2)-A154701(n+1)]+1)`
-/

namespace A141769.P13752085653710884323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154701 (n + 2) - A154701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A141769.P13752085653710884323

/-! ## A141769.P14268588107139947092

`∩[A330927(n+1)-2, A330927(n+1)]`
-/

namespace A141769.P14268588107139947092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141769.P14268588107139947092

/-! ## A141769.P585123748941928572

`∩[A371260(n+1)-1, A371260(n+1)]`
-/

namespace A141769.P585123748941928572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371260 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141769.P585123748941928572

/-!
# A141771: Expansion of (1-sqrt(1-4*x))/(2*x) + 8*x^3/((sqrt(1-4*x))*(1+sqrt(1-4*x))^3).

The programs for A141771, the canonical program `A141771.P13541917755099282936` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141771 has offset 0).

The definition of A141771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141771.P13541917755099282936

`A210736(A004275(n))+Δ[A120588(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141771

/-- `A210736(A004275(n))+Δ[A120588(n)]` -/
def P13541917755099282936.Spec : Prop :=
  ∀ n, P13541917755099282936.a n = A141771 n

theorem P13541917755099282936.correct : P13541917755099282936.Spec := by
  intro n
  simp only [A141771]

end A141771

/-! ## A141771.P9950167592310790452

`A001700(n)-Δ[A046223(2*(n+1))]`
-/

namespace A141771.P9950167592310790452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - (f1 (n + 1) - f1 n)

end

end A141771.P9950167592310790452

namespace A141771

/-- `A001700(n)-Δ[A046223(2*(n+1))]` -/
def P9950167592310790452.Spec : Prop :=
  ∀ n, P9950167592310790452.a n = A141771 n

end A141771

/-! ## A141771.P17046768917748395703

`A001405(2*n+1)-Δ[A046223(2*(n+1))]`
-/

namespace A141771.P17046768917748395703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A141771.P17046768917748395703

namespace A141771

/-- `A001405(2*n+1)-Δ[A046223(2*(n+1))]` -/
def P17046768917748395703.Spec : Prop :=
  ∀ n, P17046768917748395703.a n = A141771 n

end A141771

/-! ## A141771.P6358153083890803921

`A037952(2*n+1)-Δ[A046223(2*(n+1))]`
-/

namespace A141771.P6358153083890803921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A141771.P6358153083890803921

namespace A141771

/-- `A037952(2*n+1)-Δ[A046223(2*(n+1))]` -/
def P6358153083890803921.Spec : Prop :=
  ∀ n, P6358153083890803921.a n = A141771 n

end A141771

/-! ## A141771.P17613327905776572751

`A138364(2*n+1)-Δ[A046223(2*(n+1))]`
-/

namespace A141771.P17613327905776572751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A141771.P17613327905776572751

namespace A141771

/-- `A138364(2*n+1)-Δ[A046223(2*(n+1))]` -/
def P17613327905776572751.Spec : Prop :=
  ∀ n, P17613327905776572751.a n = A141771 n

end A141771

/-!
# A141772: Primes of the form 3*x^2 + 5*x*y - 5*y^2 (as well as of the form 7*x^2 + 13*x*y + 3*y^2).

The programs for A141772, there is no canonical definition to state claims against.
-/

/-! ## A141772.P2021799590123798251

`∩[A038971(n+1), A042993(n+1)]`
-/

namespace A141772.P2021799590123798251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141772.P2021799590123798251

/-! ## A141772.P11774149682568755295

`∩[A038971(n+1), A140971(n+1)]`
-/

namespace A141772.P11774149682568755295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141772.P11774149682568755295

/-! ## A141772.P133392464286971104

`∩[A038971(n+1), A063241(n+1)]`
-/

namespace A141772.P133392464286971104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141772.P133392464286971104

/-! ## A141772.P12234919719845915342

`∩[A038971(n+1), A260181(n+1)]`
-/

namespace A141772.P12234919719845915342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141772.P12234919719845915342

/-! ## A141772.P2007723715883678099

`∩[A038971(n+1), A047222(n+1)]`
-/

namespace A141772.P2007723715883678099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141772.P2007723715883678099

/-!
# A141773: Primes of the form x^2 + 9*x*y - y^2 (as well as of the form 9*x^2 + 11*x*y + y^2).

The programs for A141773, there is no canonical definition to state claims against.
-/

/-! ## A141773.P6342928042764560310

`∩[A038872(n+1), A296938(n+1)]`
-/

namespace A141773.P6342928042764560310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P6342928042764560310

/-! ## A141773.P2409411377657448848

`∩[A045468(n+1), A296938(n+1)]`
-/

namespace A141773.P2409411377657448848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P2409411377657448848

/-! ## A141773.P5078026059238201672

`∩[A038872(n+1), A038889(n+1)]`
-/

namespace A141773.P5078026059238201672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P5078026059238201672

/-! ## A141773.P4517540330440247501

`∩[A038889(n+1), A045468(n+1)]`
-/

namespace A141773.P4517540330440247501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P4517540330440247501

/-! ## A141773.P7574395353643390138

`∩[A038971(n+1), A045468(n+1)]`
-/

namespace A141773.P7574395353643390138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P7574395353643390138

/-! ## A141773.P11745011193056806177

`∩[A038971(n+1), A064739(n+1)]`
-/

namespace A141773.P11745011193056806177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P11745011193056806177

/-! ## A141773.P15420778261016543271

`∩[A038971(n+1), A296938(n+1)]`
-/

namespace A141773.P15420778261016543271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P15420778261016543271

/-! ## A141773.P15547088516375618901

`∩[A038971(n+1), A076518(n+1)]`
-/

namespace A141773.P15547088516375618901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P15547088516375618901

/-! ## A141773.P12997209805396852111

`∩[A038889(n+1), A219612(n+1)]`
-/

namespace A141773.P12997209805396852111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P12997209805396852111

/-! ## A141773.P13982644857519737026

`∩[A038971(n+1), A219612(n+1)]`
-/

namespace A141773.P13982644857519737026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P13982644857519737026

/-! ## A141773.P939746228600574806

`∩[A023173(n+1), A038971(n+1)]`
-/

namespace A141773.P939746228600574806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P939746228600574806

/-! ## A141773.P4821908163144756945

`∩[A038889(n+1), A057538(n+1)]`
-/

namespace A141773.P4821908163144756945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P4821908163144756945

/-! ## A141773.P140988589817223038

`∩[A038971(n+1), A057538(n+1)]`
-/

namespace A141773.P140988589817223038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P140988589817223038

/-! ## A141773.P4027495403497725975

`∩[A057538(n+1), A296938(n+1)]`
-/

namespace A141773.P4027495403497725975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P4027495403497725975

/-! ## A141773.P11839580373049578369

`∩[A031363(n+1), A038889(n+1)]`
-/

namespace A141773.P11839580373049578369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P11839580373049578369

/-! ## A141773.P4532569247834173052

`∩[A031363(n+1), A296938(n+1)]`
-/

namespace A141773.P4532569247834173052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P4532569247834173052

/-! ## A141773.P11027251709801412797

`∩[A038889(n+1), A090771(n+1)]`
-/

namespace A141773.P11027251709801412797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P11027251709801412797

/-! ## A141773.P10150114841957256623

`∩[A038971(n+1), A090771(n+1)]`
-/

namespace A141773.P10150114841957256623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P10150114841957256623

/-! ## A141773.P4335851727527813780

`∩[A090771(n+1), A296938(n+1)]`
-/

namespace A141773.P4335851727527813780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P4335851727527813780

/-! ## A141773.P7177912437413874145

`∩[A035258(n+1), A038872(n+1)]`
-/

namespace A141773.P7177912437413874145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141773.P7177912437413874145

/-!
# A141774: Numbers k such that 2*11^k + 1 is prime.

The programs for A141774, there is no canonical definition to state claims against.
-/

/-! ## A141774.P9612481309787894412

`A059998(A264229(n+1)+A047783(2*n+5))`
-/

namespace A141774.P9612481309787894412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059998 (A264229 (n + 1) + A047783 (2 * n + 5)).toNat

end

end A141774.P9612481309787894412

/-! ## A141774.P15211130026684022081

`A348955(2^A348941(2*n+1))-A042951(2*A001316(n+1))`
-/

namespace A141774.P15211130026684022081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348955 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A348941 (2 * n + 1) : ℤ))).toNat - A042951 (2 * A001316 (n + 1)).toNat

end

end A141774.P15211130026684022081

/-!
# A141775: Binomial transform of (1, 2, 0, 1, 2, 0, 1, 2, 0, ...).

The programs for A141775, the canonical program `A141775.P9075392520975591745` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141775 has offset 0).

The definition of A141775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141775.P12388491231488591877

`2^n+2*sin(π*n/3)/sqrt(3)`
-/

namespace A141775.P12388491231488591877
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) + 2 * Real.sin (Real.pi * (n : ℝ) / 3) / Real.sqrt (3 : ℝ)

end

end A141775.P12388491231488591877

namespace A141775

/-- `2^n+2*sin(π*n/3)/sqrt(3)` -/
def P12388491231488591877.Spec : Prop :=
  ∀ n, P12388491231488591877.a n = (A141775 n : ℝ)

end A141775

/-! ## A141775.P9075392520975591745

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A141775

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P9075392520975591745.Spec : Prop :=
  ∀ n, P9075392520975591745.a n = A141775 n

theorem P9075392520975591745.correct : P9075392520975591745.Spec := by
  intro n
  simp only [A141775]

end A141775

/-! ## A141775.P16263266043342306064

`ogf((1-x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A141775.P16263266043342306064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -3, 3, -2] n

end

end A141775.P16263266043342306064

namespace A141775

/-- `ogf((1-x^2)/(1-3x+3x^2-2x^3))` -/
def P16263266043342306064.Spec : Prop :=
  ∀ n, P16263266043342306064.a n = A141775 n

end A141775

/-! ## A141775.P12249688673173641722

`A128834(n)+2^n`
-/

namespace A141775.P12249688673173641722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (2 ^ n : ℤ)

end

end A141775.P12249688673173641722

namespace A141775

/-- `A128834(n)+2^n` -/
def P12249688673173641722.Spec : Prop :=
  ∀ n, P12249688673173641722.a n = A141775 n

end A141775

/-! ## A141775.P3143281191274023224

`2^n-A010892(n+2)`
-/

namespace A141775.P3143281191274023224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A010892 (n + 2)

end

end A141775.P3143281191274023224

namespace A141775

/-- `2^n-A010892(n+2)` -/
def P3143281191274023224.Spec : Prop :=
  ∀ n, P3143281191274023224.a n = A141775 n

end A141775

/-! ## A141775.P15901917454753117113

`A163810(n+3)+2^n`
-/

namespace A141775.P15901917454753117113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (n + 3) + (2 ^ n : ℤ)

end

end A141775.P15901917454753117113

namespace A141775

/-- `A163810(n+3)+2^n` -/
def P15901917454753117113.Spec : Prop :=
  ∀ n, P15901917454753117113.a n = A141775 n

end A141775

/-! ## A141775.P4970286150950950305

`2^n-A163806(n+3)`
-/

namespace A141775.P4970286150950950305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A163806 (n + 3)

end

end A141775.P4970286150950950305

namespace A141775

/-- `2^n-A163806(n+3)` -/
def P4970286150950950305.Spec : Prop :=
  ∀ n, P4970286150950950305.a n = A141775 n

end A141775

/-! ## A141775.P15941684561060572884

`A010892(n+5)+2^n`
-/

namespace A141775.P15941684561060572884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 5) + (2 ^ n : ℤ)

end

end A141775.P15941684561060572884

namespace A141775

/-- `A010892(n+5)+2^n` -/
def P15941684561060572884.Spec : Prop :=
  ∀ n, P15941684561060572884.a n = A141775 n

end A141775

/-! ## A141775.P11979261043301024551

`A087204(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A141775.P11979261043301024551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087204 n + 2 * a (n - 1)

end

end A141775.P11979261043301024551

namespace A141775

/-- `A087204(n)+2*a(n-1)` -/
def P11979261043301024551.Spec : Prop :=
  ∀ n, P11979261043301024551.a n = A141775 n

end A141775

/-! ## A141775.P12152966391945435081

`a(n-1)+A100051(n)+a(n-1)` with `a(0)=1`
-/

namespace A141775.P12152966391945435081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A100051 n + a (n - 1))

end

end A141775.P12152966391945435081

namespace A141775

/-- `a(n-1)+A100051(n)+a(n-1)` -/
def P12152966391945435081.Spec : Prop :=
  ∀ n, P12152966391945435081.a n = A141775 n

end A141775

/-! ## A141775.P6654639231086143361

`A164965(n)+A000225(n)`
-/

namespace A141775.P6654639231086143361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 n + A000225 n

end

end A141775.P6654639231086143361

namespace A141775

/-- `A164965(n)+A000225(n)` -/
def P6654639231086143361.Spec : Prop :=
  ∀ n, P6654639231086143361.a n = A141775 n

end A141775

/-! ## A141775.P10518822128318952679

`A130759(n)+A111927(n)`
-/

namespace A141775.P10518822128318952679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130759 n + A111927 n

end

end A141775.P10518822128318952679

namespace A141775

/-- `A130759(n)+A111927(n)` -/
def P10518822128318952679.Spec : Prop :=
  ∀ n, P10518822128318952679.a n = A141775 n

end A141775

/-! ## A141775.P8582149414551372759

`A166956(n)+A134977(n)`
-/

namespace A141775.P8582149414551372759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166956 n + A134977 n

end

end A141775.P8582149414551372759

namespace A141775

/-- `A166956(n)+A134977(n)` -/
def P8582149414551372759.Spec : Prop :=
  ∀ n, P8582149414551372759.a n = A141775 n

end A141775

/-! ## A141775.P1426760491268253161

`A163806(n)+A155559(n)`
-/

namespace A141775.P1426760491268253161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 n + A155559 n

end

end A141775.P1426760491268253161

namespace A141775

/-- `A163806(n)+A155559(n)` -/
def P1426760491268253161.Spec : Prop :=
  ∀ n, P1426760491268253161.a n = A141775 n

end A141775

/-! ## A141775.P13888624765553706116

`A005126(n)-A030118(n)`
-/

namespace A141775.P13888624765553706116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n - A030118 n

end

end A141775.P13888624765553706116

namespace A141775

/-- `A005126(n)-A030118(n)` -/
def P13888624765553706116.Spec : Prop :=
  ∀ n, P13888624765553706116.a n = A141775 n

end A141775

/-! ## A141775.P16522185768433443247

`A000225(n)+A128834(n)+1`
-/

namespace A141775.P16522185768433443247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A128834 n + 1)

end

end A141775.P16522185768433443247

namespace A141775

/-- `A000225(n)+A128834(n)+1` -/
def P16522185768433443247.Spec : Prop :=
  ∀ n, P16522185768433443247.a n = A141775 n

end A141775

/-! ## A141775.P7603872447739161878

`A130707(n)+A024495(n+1)`
-/

namespace A141775.P7603872447739161878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n + A024495 (n + 1)

end

end A141775.P7603872447739161878

namespace A141775

/-- `A130707(n)+A024495(n+1)` -/
def P7603872447739161878.Spec : Prop :=
  ∀ n, P7603872447739161878.a n = A141775 n

end A141775

/-! ## A141775.P15525989093220553403

`A131708(n)+A024494(n+1)`
-/

namespace A141775.P15525989093220553403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n + A024494 (n + 1)

end

end A141775.P15525989093220553403

namespace A141775

/-- `A131708(n)+A024494(n+1)` -/
def P15525989093220553403.Spec : Prop :=
  ∀ n, P15525989093220553403.a n = A141775 n

end A141775

/-! ## A141775.P17752304135725041929

`A131577(n+1)+A128834(n)`
-/

namespace A141775.P17752304135725041929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + A128834 n

end

end A141775.P17752304135725041929

namespace A141775

/-- `A131577(n+1)+A128834(n)` -/
def P17752304135725041929.Spec : Prop :=
  ∀ n, P17752304135725041929.a n = A141775 n

end A141775

/-! ## A141775.P60010579666328342

`A131708(n+1)+A131708(n)`
-/

namespace A141775.P60010579666328342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (n + 1) + A131708 n

end

end A141775.P60010579666328342

namespace A141775

/-- `A131708(n+1)+A131708(n)` -/
def P60010579666328342.Spec : Prop :=
  ∀ n, P60010579666328342.a n = A141775 n

end A141775

/-!
# A141776: Primes of the form 3*x^2 + 4*x*y - 6*y^2 (as well as of the form 3*x^2 + 10*x*y + y^2).

The programs for A141776, there is no canonical definition to state claims against.
-/

/-! ## A141776.P1345436802536003572

`∩[A033200(n+1), A038895(n+1)]`
-/

namespace A141776.P1345436802536003572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P1345436802536003572

/-! ## A141776.P165589013647476553

`∩[A033200(n+1), A056874(n+1)]`
-/

namespace A141776.P165589013647476553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P165589013647476553

/-! ## A141776.P6748280196365793891

`∩[A033203(n+1), A056874(n+1)]`
-/

namespace A141776.P6748280196365793891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P6748280196365793891

/-! ## A141776.P5644781740795881077

`∩[A038895(n+1), A056874(n+1)]`
-/

namespace A141776.P5644781740795881077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P5644781740795881077

/-! ## A141776.P18143790102259982291

`∩[A056874(n+1), A341784(n+1)]`
-/

namespace A141776.P18143790102259982291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P18143790102259982291

/-! ## A141776.P16081264567089102178

`∩[A033200(n+1), A341785(n+1)]`
-/

namespace A141776.P16081264567089102178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P16081264567089102178

/-! ## A141776.P14548700039343465315

`∩[A033203(n+1), A341785(n+1)]`
-/

namespace A141776.P14548700039343465315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P14548700039343465315

/-! ## A141776.P11929925165587317820

`∩[A038895(n+1), A341785(n+1)]`
-/

namespace A141776.P11929925165587317820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P11929925165587317820

/-! ## A141776.P9548800163163675022

`∩[A038895(n+1), A365082(n+1)]`
-/

namespace A141776.P9548800163163675022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P9548800163163675022

/-! ## A141776.P17600271550504546203

`∩[A056874(n+1), A365082(n+1)]`
-/

namespace A141776.P17600271550504546203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P17600271550504546203

/-! ## A141776.P421646064270210170

`∩[A034031(n+1), A056874(n+1)]`
-/

namespace A141776.P421646064270210170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P421646064270210170

/-! ## A141776.P17062106073244221340

`∩[A034031(n+1), A341785(n+1)]`
-/

namespace A141776.P17062106073244221340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P17062106073244221340

/-! ## A141776.P638242674062281942

`∩[A056874(n+1), A057127(n+1)]`
-/

namespace A141776.P638242674062281942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P638242674062281942

/-! ## A141776.P8186333431468267797

`∩[A033200(n+1), A035247(n+1)]`
-/

namespace A141776.P8186333431468267797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P8186333431468267797

/-! ## A141776.P15632913040859314787

`∩[A033203(n+1), A035247(n+1)]`
-/

namespace A141776.P15632913040859314787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P15632913040859314787

/-! ## A141776.P7344603980932609639

`∩[A035247(n+1), A038895(n+1)]`
-/

namespace A141776.P7344603980932609639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P7344603980932609639

/-! ## A141776.P14114399010317570973

`∩[A038895(n+1), A047471(n+1)]`
-/

namespace A141776.P14114399010317570973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P14114399010317570973

/-! ## A141776.P18168217975699387964

`∩[A047471(n+1), A056874(n+1)]`
-/

namespace A141776.P18168217975699387964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P18168217975699387964

/-! ## A141776.P15756497079024731635

`∩[A034034(n+1), A056874(n+1)]`
-/

namespace A141776.P15756497079024731635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P15756497079024731635

/-! ## A141776.P17399988675188213507

`∩[A038895(n+1), A154777(n+1)]`
-/

namespace A141776.P17399988675188213507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141776.P17399988675188213507

/-!
# A141777: Primes of the form -3*x^2 + 4*x*y + 6*y^2 (as well as of the form 7*x^2 + 12*x*y + 2*y^2).

The programs for A141777, the canonical program `A141777.P6795889752722178215` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141777 has offset 1).

The definition of A141777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141777.P1184603472261006844

`∩[A038895(n+1), A191060(n+1)]`
-/

namespace A141777.P1184603472261006844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P1184603472261006844

namespace A141777

/-- `∩[A038895(n+1), A191060(n+1)]` -/
def P1184603472261006844.Spec : Prop :=
  ∀ n, (P1184603472261006844.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P13818977884132417375

`∩[A038895(n+1), A045355(n+1)]`
-/

namespace A141777.P13818977884132417375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P13818977884132417375

namespace A141777

/-- `∩[A038895(n+1), A045355(n+1)]` -/
def P13818977884132417375.Spec : Prop :=
  ∀ n, (P13818977884132417375.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P6795889752722178215

`∩[A045355(n+1), A191060(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141777

/-- `∩[A045355(n+1), A191060(n+1)]` -/
def P6795889752722178215.Spec : Prop :=
  ∀ n, (P6795889752722178215.a n : ℤ) = A141777 (n + 1)

theorem P6795889752722178215.correct : P6795889752722178215.Spec := by
  intro n
  simp only [A141777, Nat.add_sub_cancel]

end A141777

/-! ## A141777.P9517686578343095285

`∩[A038895(n+1), A047480(n+1)]`
-/

namespace A141777.P9517686578343095285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P9517686578343095285

namespace A141777

/-- `∩[A038895(n+1), A047480(n+1)]` -/
def P9517686578343095285.Spec : Prop :=
  ∀ n, (P9517686578343095285.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P12229649374191917153

`∩[A047480(n+1), A191060(n+1)]`
-/

namespace A141777.P12229649374191917153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P12229649374191917153

namespace A141777

/-- `∩[A047480(n+1), A191060(n+1)]` -/
def P12229649374191917153.Spec : Prop :=
  ∀ n, (P12229649374191917153.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P10195105608312276376

`∩[A038895(n+1), A267541(n)]`
-/

namespace A141777.P10195105608312276376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P10195105608312276376

namespace A141777

/-- `∩[A038895(n+1), A267541(n)]` -/
def P10195105608312276376.Spec : Prop :=
  ∀ n, (P10195105608312276376.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P10602699384938775690

`∩[A045355(n+1), A267541(n)]`
-/

namespace A141777.P10602699384938775690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P10602699384938775690

namespace A141777

/-- `∩[A045355(n+1), A267541(n)]` -/
def P10602699384938775690.Spec : Prop :=
  ∀ n, (P10602699384938775690.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P297106035751989417

`∩[A038895(n+1), A047481(n+1)]`
-/

namespace A141777.P297106035751989417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P297106035751989417

namespace A141777

/-- `∩[A038895(n+1), A047481(n+1)]` -/
def P297106035751989417.Spec : Prop :=
  ∀ n, (P297106035751989417.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P5716164144113374514

`∩[A038895(n+1), A047495(n+1)]`
-/

namespace A141777.P5716164144113374514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P5716164144113374514

namespace A141777

/-- `∩[A038895(n+1), A047495(n+1)]` -/
def P5716164144113374514.Spec : Prop :=
  ∀ n, (P5716164144113374514.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P4349058466501572918

`∩[A038895(n+1), A047578(n+1)]`
-/

namespace A141777.P4349058466501572918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P4349058466501572918

namespace A141777

/-- `∩[A038895(n+1), A047578(n+1)]` -/
def P4349058466501572918.Spec : Prop :=
  ∀ n, (P4349058466501572918.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P3063743671185459355

`∩[A047481(n+1), A191060(n+1)]`
-/

namespace A141777.P3063743671185459355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P3063743671185459355

namespace A141777

/-- `∩[A047481(n+1), A191060(n+1)]` -/
def P3063743671185459355.Spec : Prop :=
  ∀ n, (P3063743671185459355.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P18308612516560156399

`∩[A047495(n+1), A191060(n+1)]`
-/

namespace A141777.P18308612516560156399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P18308612516560156399

namespace A141777

/-- `∩[A047495(n+1), A191060(n+1)]` -/
def P18308612516560156399.Spec : Prop :=
  ∀ n, (P18308612516560156399.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P3533557878038147073

`∩[A047578(n+1), A191060(n+1)]`
-/

namespace A141777.P3533557878038147073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P3533557878038147073

namespace A141777

/-- `∩[A047578(n+1), A191060(n+1)]` -/
def P3533557878038147073.Spec : Prop :=
  ∀ n, (P3533557878038147073.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P7815920372139274171

`∩[A038895(n+1), A047415(n+1)+1]`
-/

namespace A141777.P7815920372139274171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047415 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P7815920372139274171

namespace A141777

/-- `∩[A038895(n+1), A047415(n+1)+1]` -/
def P7815920372139274171.Spec : Prop :=
  ∀ n, (P7815920372139274171.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P9339343035171196825

`∩[A038895(n+1), A047401(n+1)-1]`
-/

namespace A141777.P9339343035171196825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047401 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P9339343035171196825

namespace A141777

/-- `∩[A038895(n+1), A047401(n+1)-1]` -/
def P9339343035171196825.Spec : Prop :=
  ∀ n, (P9339343035171196825.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P6749041605334906971

`∩[A038895(n+1), A047496(n+1)]`
-/

namespace A141777.P6749041605334906971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P6749041605334906971

namespace A141777

/-- `∩[A038895(n+1), A047496(n+1)]` -/
def P6749041605334906971.Spec : Prop :=
  ∀ n, (P6749041605334906971.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P7382585249881207477

`∩[A038895(n+1), A047570(n+1)]`
-/

namespace A141777.P7382585249881207477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P7382585249881207477

namespace A141777

/-- `∩[A038895(n+1), A047570(n+1)]` -/
def P7382585249881207477.Spec : Prop :=
  ∀ n, (P7382585249881207477.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P18378354258463861405

`∩[A038895(n+1), A047579(n+1)]`
-/

namespace A141777.P18378354258463861405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P18378354258463861405

namespace A141777

/-- `∩[A038895(n+1), A047579(n+1)]` -/
def P18378354258463861405.Spec : Prop :=
  ∀ n, (P18378354258463861405.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P7858104025916872793

`∩[A047496(n+1), A191060(n+1)]`
-/

namespace A141777.P7858104025916872793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P7858104025916872793

namespace A141777

/-- `∩[A047496(n+1), A191060(n+1)]` -/
def P7858104025916872793.Spec : Prop :=
  ∀ n, (P7858104025916872793.a n : ℤ) = A141777 (n + 1)

end A141777

/-! ## A141777.P5750341373708211114

`∩[A047570(n+1), A191060(n+1)]`
-/

namespace A141777.P5750341373708211114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P5750341373708211114

namespace A141777

/-- `∩[A047570(n+1), A191060(n+1)]` -/
def P5750341373708211114.Spec : Prop :=
  ∀ n, (P5750341373708211114.a n : ℤ) = A141777 (n + 1)

end A141777

/-!
# A141780: Numbers n such that A120292(n) is prime.

The programs for A141780, there is no canonical definition to state claims against.
-/

/-! ## A141780.P5776485078889231978

`eq[1, A015710(A120292(n+1))]+1`
-/

namespace A141780.P5776485078889231978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A120292 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A141780.P5776485078889231978

/-! ## A141780.P16395654847243964270

`lt[A010684(A207537(n+1)), A120292(A028310(n))]`
-/

namespace A141780.P16395654847243964270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A207537 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120292 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141780.P16395654847243964270

/-! ## A141780.P9534261442531481507

`lt[A010684(A084938(n+2)), A120292(A028310(n))]`
-/

namespace A141780.P9534261442531481507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A084938 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120292 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141780.P9534261442531481507

/-! ## A141780.P6611247423168443425

`lt[2, A090930(A120292(n+1)+1)]+1`
-/

namespace A141780.P6611247423168443425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A120292 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A141780.P6611247423168443425

/-!
# A141782: Number of connected graphs with one cycle of length m = n-4 and n nodes.

The programs for A141782, the canonical program `A141782.P92115349010775407` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141782 has offset 7).

The definition of A141782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141782.P92115349010775407

`A005232(n+7)-(A028242(n)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A141782

/-- `A005232(n+7)-(A028242(n)+1)` -/
def P92115349010775407.Spec : Prop :=
  ∀ n, P92115349010775407.a n = A141782 (n + 7)

theorem P92115349010775407.correct : P92115349010775407.Spec := by
  intro n
  simp only [A141782, Nat.add_sub_cancel]

end A141782

/-! ## A141782.P15373298298895477709

`A005232(n+7)-(A008611(A032766(n))+1)`
-/

namespace A141782.P15373298298895477709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (n + 7) - (A008611 (A032766 n).toNat + 1)

end

end A141782.P15373298298895477709

namespace A141782

/-- `A005232(n+7)-(A008611(A032766(n))+1)` -/
def P15373298298895477709.Spec : Prop :=
  ∀ n, P15373298298895477709.a n = A141782 (n + 7)

end A141782

/-! ## A141782.P6622640809099146652

`A005232(n+7)-A110658(A008574(n+2))`
-/

namespace A141782.P6622640809099146652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (n + 7) - A110658 (A008574 (n + 2)).toNat

end

end A141782.P6622640809099146652

namespace A141782

/-- `A005232(n+7)-A110658(A008574(n+2))` -/
def P6622640809099146652.Spec : Prop :=
  ∀ n, P6622640809099146652.a n = A141782 (n + 7)

end A141782

/-! ## A141782.P6654068250961644257

`A217781(A046691(n+5))`
-/

namespace A141782.P6654068250961644257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217781 (A046691 (n + 5)).toNat

end

end A141782.P6654068250961644257

namespace A141782

/-- `A217781(A046691(n+5))` -/
def P6654068250961644257.Spec : Prop :=
  ∀ n, P6654068250961644257.a n = A141782 (n + 7)

end A141782

/-! ## A141782.P9959202315003184157

`A217781(eq[4, A105821(n+1)])`
-/

namespace A141782.P9959202315003184157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141782.P9959202315003184157

namespace A141782

/-- `A217781(eq[4, A105821(n+1)])` -/
def P9959202315003184157.Spec : Prop :=
  ∀ n, P9959202315003184157.a n = A141782 (n + 7)

end A141782

/-!
# A141783: Number of bracelets (turn over necklaces) with n beads: 1 blue, 12 green, and r = n - 13 red.

The programs for A141783, the canonical program `A141783.P14871538789144292961` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141783 has offset 13).

The definition of A141783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141783.P14871538789144292961

`(C(floor(n/2)+6, 6)+C(n+12, 12))/2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A141783

/-- `(C(floor(n/2)+6, 6)+C(n+12, 12))/2` -/
def P14871538789144292961.Spec : Prop :=
  ∀ n, P14871538789144292961.a n = (A141783 (n + 13) : ℚ)

end A141783

/-! ## A141783.P11627167064848498991

`∑[A062136(n)]`
-/

namespace A141783.P11627167064848498991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141783.P11627167064848498991

namespace A141783

/-- `∑[A062136(n)]` -/
def P11627167064848498991.Spec : Prop :=
  ∀ n, P11627167064848498991.a n = A141783 (n + 13)

end A141783

/-! ## A141783.P10617068290913788120

`∑[A299338(n)+∑[A282078(n)]]`
-/

namespace A141783.P10617068290913788120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141783.P10617068290913788120

namespace A141783

/-- `∑[A299338(n)+∑[A282078(n)]]` -/
def P10617068290913788120.Spec : Prop :=
  ∀ n, P10617068290913788120.a n = A141783 (n + 13)

end A141783

/-! ## A141783.P10064647027336975945

`A034851(eq[12, A002262(n)])`
-/

namespace A141783.P10064647027336975945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141783.P10064647027336975945

namespace A141783

/-- `A034851(eq[12, A002262(n)])` -/
def P10064647027336975945.Spec : Prop :=
  ∀ n, P10064647027336975945.a n = A141783 (n + 13)

end A141783

/-! ## A141783.P9762123090919105541

`A034851(eq[12, A025581(n)])`
-/

namespace A141783.P9762123090919105541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141783.P9762123090919105541

namespace A141783

/-- `A034851(eq[12, A025581(n)])` -/
def P9762123090919105541.Spec : Prop :=
  ∀ n, P9762123090919105541.a n = A141783 (n + 13)

end A141783

/-! ## A141783.P630286413896549067

`A034851(eq[13, A193739(n)])`
-/

namespace A141783.P630286413896549067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141783.P630286413896549067

namespace A141783

/-- `A034851(eq[13, A193739(n)])` -/
def P630286413896549067.Spec : Prop :=
  ∀ n, P630286413896549067.a n = A141783 (n + 13)

end A141783

/-!
# A141784: Primes of the form A141468(n)-n, where A141468(n)=n-th nonprime.

The programs for A141784, the canonical program `A141784.P8518960646770701231` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141784 has offset 1).

The definition of A141784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141784.P8518960646770701231

`p?[A018252(n+1)-(n+2)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141784

/-- `p?[A018252(n+1)-(n+2)]` -/
def P8518960646770701231.Spec : Prop :=
  ∀ n, P8518960646770701231.a n = A141784 (n + 1)

theorem P8518960646770701231.correct : P8518960646770701231.Spec := by
  intro n
  simp only [A141784, Nat.add_sub_cancel]

end A141784

/-! ## A141784.P6814550425048920618

`p?[A018252(n+2)%(n+3)]`
-/

namespace A141784.P6814550425048920618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 2)) (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P6814550425048920618

namespace A141784

/-- `p?[A018252(n+2)%(n+3)]` -/
def P6814550425048920618.Spec : Prop :=
  ∀ n, P6814550425048920618.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P1758431233901259773

`p?[A018252(ceil(abs(γ-n)))-1-n]`
-/

namespace A141784.P1758431233901259773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat - 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P1758431233901259773

namespace A141784

/-- `p?[A018252(ceil(abs(γ-n)))-1-n]` -/
def P1758431233901259773.Spec : Prop :=
  ∀ n, P1758431233901259773.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P16533323996558173862

`p?[abs(A018252(2*n-(n-1))-1-n)-1]`
-/

namespace A141784.P16533323996558173862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A018252 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - 1 - (n : ℤ)| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P16533323996558173862

namespace A141784

/-- `p?[abs(A018252(2*n-(n-1))-1-n)-1]` -/
def P16533323996558173862.Spec : Prop :=
  ∀ n, P16533323996558173862.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P11397547353763603250

`p?[A000720(A002808(n+1))-1]`
-/

namespace A141784.P11397547353763603250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002808 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P11397547353763603250

namespace A141784

/-- `p?[A000720(A002808(n+1))-1]` -/
def P11397547353763603250.Spec : Prop :=
  ∀ n, P11397547353763603250.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P5955839001154610150

`p?[A000720(A018252(n+1))-1]`
-/

namespace A141784.P5955839001154610150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A018252 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P5955839001154610150

namespace A141784

/-- `p?[A000720(A018252(n+1))-1]` -/
def P5955839001154610150.Spec : Prop :=
  ∀ n, P5955839001154610150.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P15817209989046190640

`p?[A073425(n)-1]`
-/

namespace A141784.P15817209989046190640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P15817209989046190640

namespace A141784

/-- `p?[A073425(n)-1]` -/
def P15817209989046190640.Spec : Prop :=
  ∀ n, P15817209989046190640.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P2730886290138566650

`p?[A173073(n+1)-1]`
-/

namespace A141784.P2730886290138566650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173073 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P2730886290138566650

namespace A141784

/-- `p?[A173073(n+1)-1]` -/
def P2730886290138566650.Spec : Prop :=
  ∀ n, P2730886290138566650.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P2444092698267399375

`p?[A073169(n+1)-2]`
-/

namespace A141784.P2444092698267399375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P2444092698267399375

namespace A141784

/-- `p?[A073169(n+1)-2]` -/
def P2444092698267399375.Spec : Prop :=
  ∀ n, P2444092698267399375.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P17134424484977599661

`p?[A164028(n+1)-n]`
-/

namespace A141784.P17134424484977599661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P17134424484977599661

namespace A141784

/-- `p?[A164028(n+1)-n]` -/
def P17134424484977599661.Spec : Prop :=
  ∀ n, P17134424484977599661.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P16199579579695874922

`p?[A173905(n+2)-n]`
-/

namespace A141784.P16199579579695874922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P16199579579695874922

namespace A141784

/-- `p?[A173905(n+2)-n]` -/
def P16199579579695874922.Spec : Prop :=
  ∀ n, P16199579579695874922.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P1598699999515452069

`p?[A000720(A060462(n+1))-1]`
-/

namespace A141784.P1598699999515452069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A060462 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P1598699999515452069

namespace A141784

/-- `p?[A000720(A060462(n+1))-1]` -/
def P1598699999515452069.Spec : Prop :=
  ∀ n, P1598699999515452069.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P1399776514623142721

`p?[A000720(A072668(n+1))-1]`
-/

namespace A141784.P1399776514623142721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A072668 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P1399776514623142721

namespace A141784

/-- `p?[A000720(A072668(n+1))-1]` -/
def P1399776514623142721.Spec : Prop :=
  ∀ n, P1399776514623142721.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P827905296422538388

`p?[A000720(A079696(n+1))-1]`
-/

namespace A141784.P827905296422538388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A079696 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P827905296422538388

namespace A141784

/-- `p?[A000720(A079696(n+1))-1]` -/
def P827905296422538388.Spec : Prop :=
  ∀ n, P827905296422538388.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P4564034106126888098

`p?[A000720(A122825(n+1))-1]`
-/

namespace A141784.P4564034106126888098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A122825 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P4564034106126888098

namespace A141784

/-- `p?[A000720(A122825(n+1))-1]` -/
def P4564034106126888098.Spec : Prop :=
  ∀ n, P4564034106126888098.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P17611158739611072158

`p?[A063084(n+1)-1]`
-/

namespace A141784.P17611158739611072158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P17611158739611072158

namespace A141784

/-- `p?[A063084(n+1)-1]` -/
def P17611158739611072158.Spec : Prop :=
  ∀ n, P17611158739611072158.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P10862356716292874854

`p?[A242096(2*n+1)-A089026(n+2)]`
-/

namespace A141784.P10862356716292874854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (2 * n + 1) - A089026 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P10862356716292874854

namespace A141784

/-- `p?[A242096(2*n+1)-A089026(n+2)]` -/
def P10862356716292874854.Spec : Prop :=
  ∀ n, P10862356716292874854.a n = A141784 (n + 1)

end A141784

/-! ## A141784.P15438249272952692798

`p?[A233583(A060462(n+1))-A233583(n+1)]`
-/

namespace A141784.P15438249272952692798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A060462 (n + 1)).toNat - A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P15438249272952692798

namespace A141784

/-- `p?[A233583(A060462(n+1))-A233583(n+1)]` -/
def P15438249272952692798.Spec : Prop :=
  ∀ n, P15438249272952692798.a n = A141784 (n + 1)

end A141784

/-!
# A141785: Primes of the form -x^2 + 5*x*y + 5*y^2 (as well as of the form 9*x^2 + 15*x*y + 5*y^2).

The programs for A141785, the canonical program `A141785.P1888123605156918245` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141785 has offset 1).

The definition of A141785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141785.P1888123605156918245

`p?[3*ceil(5*n/3)-1]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A141785

/-- `p?[3*ceil(5*n/3)-1]` -/
def P1888123605156918245.Spec : Prop :=
  ∀ n, P1888123605156918245.a n = A141785 (n + 1)

theorem P1888123605156918245.correct : P1888123605156918245.Spec := by
  intro n
  simp only [A141785, Nat.add_sub_cancel]

end A141785

/-! ## A141785.P15945183992283746410

`∪[A107151(n+1), A141302(n+1)]`
-/

namespace A141785.P15945183992283746410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P15945183992283746410

namespace A141785

/-- `∪[A107151(n+1), A141302(n+1)]` -/
def P15945183992283746410.Spec : Prop :=
  ∀ n, (P15945183992283746410.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P11030692976457242262

`∩[A007528(n+1), A038872(n+1)]`
-/

namespace A141785.P11030692976457242262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P11030692976457242262

namespace A141785

/-- `∩[A007528(n+1), A038872(n+1)]` -/
def P11030692976457242262.Spec : Prop :=
  ∀ n, (P11030692976457242262.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P7329180068171809299

`∩[A003627(n+1), A038872(n+1)]`
-/

namespace A141785.P7329180068171809299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P7329180068171809299

namespace A141785

/-- `∩[A003627(n+1), A038872(n+1)]` -/
def P7329180068171809299.Spec : Prop :=
  ∀ n, (P7329180068171809299.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P15462627667934379854

`∩[A038872(n+1), A045309(n+1)]`
-/

namespace A141785.P15462627667934379854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P15462627667934379854

namespace A141785

/-- `∩[A038872(n+1), A045309(n+1)]` -/
def P15462627667934379854.Spec : Prop :=
  ∀ n, (P15462627667934379854.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P11164910022956194511

`∩[A038872(n+1), A045410(n+1)]`
-/

namespace A141785.P11164910022956194511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P11164910022956194511

namespace A141785

/-- `∩[A038872(n+1), A045410(n+1)]` -/
def P11164910022956194511.Spec : Prop :=
  ∀ n, (P11164910022956194511.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P4539656984801823459

`∩[A003627(n+1), A341783(n+1)]`
-/

namespace A141785.P4539656984801823459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P4539656984801823459

namespace A141785

/-- `∩[A003627(n+1), A341783(n+1)]` -/
def P4539656984801823459.Spec : Prop :=
  ∀ n, (P4539656984801823459.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P18347476616926999371

`∩[A007528(n+1), A040998(n+1)]`
-/

namespace A141785.P18347476616926999371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P18347476616926999371

namespace A141785

/-- `∩[A007528(n+1), A040998(n+1)]` -/
def P18347476616926999371.Spec : Prop :=
  ∀ n, (P18347476616926999371.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P8293359495781710171

`∩[A040998(n+1), A045410(n+1)]`
-/

namespace A141785.P8293359495781710171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P8293359495781710171

namespace A141785

/-- `∩[A040998(n+1), A045410(n+1)]` -/
def P8293359495781710171.Spec : Prop :=
  ∀ n, (P8293359495781710171.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P10302253513232083288

`∩[A066501(n+1), A038872(n+1)]`
-/

namespace A141785.P10302253513232083288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P10302253513232083288

namespace A141785

/-- `∩[A066501(n+1), A038872(n+1)]` -/
def P10302253513232083288.Spec : Prop :=
  ∀ n, (P10302253513232083288.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P3274038523396937889

`∩[A038872(n+1), A259548(n+1)]`
-/

namespace A141785.P3274038523396937889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P3274038523396937889

namespace A141785

/-- `∩[A038872(n+1), A259548(n+1)]` -/
def P3274038523396937889.Spec : Prop :=
  ∀ n, (P3274038523396937889.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P12628776850489798558

`∩[A038872(n+1), A082406(n+1)]`
-/

namespace A141785.P12628776850489798558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P12628776850489798558

namespace A141785

/-- `∩[A038872(n+1), A082406(n+1)]` -/
def P12628776850489798558.Spec : Prop :=
  ∀ n, (P12628776850489798558.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P7152481170560524515

`∩[A007528(n+1), A078345(n+1)]`
-/

namespace A141785.P7152481170560524515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P7152481170560524515

namespace A141785

/-- `∩[A007528(n+1), A078345(n+1)]` -/
def P7152481170560524515.Spec : Prop :=
  ∀ n, (P7152481170560524515.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P2939628422462641154

`∩[A045410(n+1), A078345(n+1)]`
-/

namespace A141785.P2939628422462641154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P2939628422462641154

namespace A141785

/-- `∩[A045410(n+1), A078345(n+1)]` -/
def P2939628422462641154.Spec : Prop :=
  ∀ n, (P2939628422462641154.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P15983657948530916306

`∩[A003627(n+1), A031363(n+1)]`
-/

namespace A141785.P15983657948530916306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P15983657948530916306

namespace A141785

/-- `∩[A003627(n+1), A031363(n+1)]` -/
def P15983657948530916306.Spec : Prop :=
  ∀ n, (P15983657948530916306.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P13885068792188627084

`∩[A007528(n+1), A031363(n+1)]`
-/

namespace A141785.P13885068792188627084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P13885068792188627084

namespace A141785

/-- `∩[A007528(n+1), A031363(n+1)]` -/
def P13885068792188627084.Spec : Prop :=
  ∀ n, (P13885068792188627084.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P795657265112299009

`∩[A031363(n+1), A045309(n+1)]`
-/

namespace A141785.P795657265112299009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P795657265112299009

namespace A141785

/-- `∩[A031363(n+1), A045309(n+1)]` -/
def P795657265112299009.Spec : Prop :=
  ∀ n, (P795657265112299009.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P13769734817838812702

`∩[A031363(n+1), A045410(n+1)]`
-/

namespace A141785.P13769734817838812702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P13769734817838812702

namespace A141785

/-- `∩[A031363(n+1), A045410(n+1)]` -/
def P13769734817838812702.Spec : Prop :=
  ∀ n, (P13769734817838812702.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P4602831797337092056

`∩[A031363(n+1), A056955(n+1)]`
-/

namespace A141785.P4602831797337092056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P4602831797337092056

namespace A141785

/-- `∩[A031363(n+1), A056955(n+1)]` -/
def P4602831797337092056.Spec : Prop :=
  ∀ n, (P4602831797337092056.a n : ℤ) = A141785 (n + 1)

end A141785

/-! ## A141785.P14587132392833451493

`∩[A038872(n+1), A016969(n)]`
-/

namespace A141785.P14587132392833451493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141785.P14587132392833451493

namespace A141785

/-- `∩[A038872(n+1), A016969(n)]` -/
def P14587132392833451493.Spec : Prop :=
  ∀ n, (P14587132392833451493.a n : ℤ) = A141785 (n + 1)

end A141785

/-!
# A141786: Counts of Kekulean pericondensed planar benzenoid hydrocarbons C_{4n}H_{2n+2}.

The programs for A141786, there is no canonical definition to state claims against.
-/

/-! ## A141786.P5187390342741684571

`A088462(A030192(n)+A005001(n))`
-/

namespace A141786.P5187390342741684571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A030192 n + A005001 n).toNat

end

end A141786.P5187390342741684571

/-! ## A141786.P10637512855355878690

`or(A047583(n+1), A065033(A086347(n)))`
-/

namespace A141786.P10637512855355878690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047583 (n + 1)) (A065033 (A086347 n).toNat)

end

end A141786.P10637512855355878690

/-!
# A141791: Primes of the form c(n)-n, where c(n)=n-th composite.

The programs for A141791, the canonical program `A141791.P18036711199778843654` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141791 has offset 1).

The definition of A141791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141791.P18036711199778843654

`p?[A073169(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141791

/-- `p?[A073169(n+1)]` -/
def P18036711199778843654.Spec : Prop :=
  ∀ n, P18036711199778843654.a n = A141791 (n + 1)

theorem P18036711199778843654.correct : P18036711199778843654.Spec := by
  intro n
  simp only [A141791, Nat.add_sub_cancel]

end A141791

/-! ## A141791.P7962795861597646829

`p?[A073425(n)+1]`
-/

namespace A141791.P7962795861597646829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P7962795861597646829

namespace A141791

/-- `p?[A073425(n)+1]` -/
def P7962795861597646829.Spec : Prop :=
  ∀ n, P7962795861597646829.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P1152732389122711026

`p?[A063084(n+1)+1]`
-/

namespace A141791.P1152732389122711026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P1152732389122711026

namespace A141791

/-- `p?[A063084(n+1)+1]` -/
def P1152732389122711026.Spec : Prop :=
  ∀ n, P1152732389122711026.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P8482070087818509780

`p?[A173073(n+1)+1]`
-/

namespace A141791.P8482070087818509780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173073 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P8482070087818509780

namespace A141791

/-- `p?[A173073(n+1)+1]` -/
def P8482070087818509780.Spec : Prop :=
  ∀ n, P8482070087818509780.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P7424021226434590799

`p?[A018252(n+1)-n]`
-/

namespace A141791.P7424021226434590799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P7424021226434590799

namespace A141791

/-- `p?[A018252(n+1)-n]` -/
def P7424021226434590799.Spec : Prop :=
  ∀ n, P7424021226434590799.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P14968817666953650570

`p?[A072668(n+1)-n]`
-/

namespace A141791.P14968817666953650570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P14968817666953650570

namespace A141791

/-- `p?[A072668(n+1)-n]` -/
def P14968817666953650570.Spec : Prop :=
  ∀ n, P14968817666953650570.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P1373056083485224685

`p?[A179620(n+1)-n]`
-/

namespace A141791.P1373056083485224685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179620 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P1373056083485224685

namespace A141791

/-- `p?[A179620(n+1)-n]` -/
def P1373056083485224685.Spec : Prop :=
  ∀ n, P1373056083485224685.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P7866984153390247664

`p?[A060462(n+2)-n]`
-/

namespace A141791.P7866984153390247664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P7866984153390247664

namespace A141791

/-- `p?[A060462(n+2)-n]` -/
def P7866984153390247664.Spec : Prop :=
  ∀ n, P7866984153390247664.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P11146985892080698233

`p?[A141468(n+2)-n]`
-/

namespace A141791.P11146985892080698233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P11146985892080698233

namespace A141791

/-- `p?[A141468(n+2)-n]` -/
def P11146985892080698233.Spec : Prop :=
  ∀ n, P11146985892080698233.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P11653667808710720637

`p?[A002808(n+1)-(n+1)]`
-/

namespace A141791.P11653667808710720637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P11653667808710720637

namespace A141791

/-- `p?[A002808(n+1)-(n+1)]` -/
def P11653667808710720637.Spec : Prop :=
  ∀ n, P11653667808710720637.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P2665335438075501110

`p?[A079696(n+1)-(n+2)]`
-/

namespace A141791.P2665335438075501110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P2665335438075501110

namespace A141791

/-- `p?[A079696(n+1)-(n+2)]` -/
def P2665335438075501110.Spec : Prop :=
  ∀ n, P2665335438075501110.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P6554406773226187850

`p?[A164028(n+1)+2-n]`
-/

namespace A141791.P6554406773226187850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1) + (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P6554406773226187850

namespace A141791

/-- `p?[A164028(n+1)+2-n]` -/
def P6554406773226187850.Spec : Prop :=
  ∀ n, P6554406773226187850.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P5736775432553992227

`p?[A222307(2*n+1)-n]`
-/

namespace A141791.P5736775432553992227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P5736775432553992227

namespace A141791

/-- `p?[A222307(2*n+1)-n]` -/
def P5736775432553992227.Spec : Prop :=
  ∀ n, P5736775432553992227.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P3249557724810615781

`p?[A173905(n+5)-1-n]`
-/

namespace A141791.P3249557724810615781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 5) - 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P3249557724810615781

namespace A141791

/-- `p?[A173905(n+5)-1-n]` -/
def P3249557724810615781.Spec : Prop :=
  ∀ n, P3249557724810615781.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P10416035371424117182

`p?[A036234(A002808(n+1))]`
-/

namespace A141791.P10416035371424117182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P10416035371424117182

namespace A141791

/-- `p?[A036234(A002808(n+1))]` -/
def P10416035371424117182.Spec : Prop :=
  ∀ n, P10416035371424117182.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P8956893939285418684

`p?[A036234(A018252(n+1))]`
-/

namespace A141791.P8956893939285418684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P8956893939285418684

namespace A141791

/-- `p?[A036234(A018252(n+1))]` -/
def P8956893939285418684.Spec : Prop :=
  ∀ n, P8956893939285418684.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P17848284221468897741

`p?[A036234(A072668(n+1))]`
-/

namespace A141791.P17848284221468897741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A072668 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P17848284221468897741

namespace A141791

/-- `p?[A036234(A072668(n+1))]` -/
def P17848284221468897741.Spec : Prop :=
  ∀ n, P17848284221468897741.a n = A141791 (n + 1)

end A141791

/-! ## A141791.P1014211058885487474

`p?[A000720(A060462(n+1))+1]`
-/

namespace A141791.P1014211058885487474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A060462 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P1014211058885487474

namespace A141791

/-- `p?[A000720(A060462(n+1))+1]` -/
def P1014211058885487474.Spec : Prop :=
  ∀ n, P1014211058885487474.a n = A141791 (n + 1)

end A141791

/-!
# A141792: Primes of the form A018252(n)-n, where A018252(n)=n-th nonprime.

The programs for A141792, the canonical program `A141792.P16182169028404405002` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141792 has offset 1).

The definition of A141792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141792.P9640787725950490800

`p?[A141468(n+1)-n]`
-/

namespace A141792.P9640787725950490800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P9640787725950490800

namespace A141792

/-- `p?[A141468(n+1)-n]` -/
def P9640787725950490800.Spec : Prop :=
  ∀ n, P9640787725950490800.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P16182169028404405002

`p?[A018252(n+1)-(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141792

/-- `p?[A018252(n+1)-(n+1)]` -/
def P16182169028404405002.Spec : Prop :=
  ∀ n, P16182169028404405002.a n = A141792 (n + 1)

theorem P16182169028404405002.correct : P16182169028404405002.Spec := by
  intro n
  simp only [A141792, Nat.add_sub_cancel]

end A141792

/-! ## A141792.P6231784451548498237

`p?[(A018252(n+2)+1)%(n+3)]`
-/

namespace A141792.P6231784451548498237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 2) + 1) (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P6231784451548498237

namespace A141792

/-- `p?[(A018252(n+2)+1)%(n+3)]` -/
def P6231784451548498237.Spec : Prop :=
  ∀ n, P6231784451548498237.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P4220314598786649306

`p?[A000720(A002808(n+1))]`
-/

namespace A141792.P4220314598786649306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P4220314598786649306

namespace A141792

/-- `p?[A000720(A002808(n+1))]` -/
def P4220314598786649306.Spec : Prop :=
  ∀ n, P4220314598786649306.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P9443931818909357720

`p?[A000720(A018252(n+1))]`
-/

namespace A141792.P9443931818909357720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P9443931818909357720

namespace A141792

/-- `p?[A000720(A018252(n+1))]` -/
def P9443931818909357720.Spec : Prop :=
  ∀ n, P9443931818909357720.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P2269230951825794337

`p?[A000720(A141468(n+2))]`
-/

namespace A141792.P2269230951825794337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A141468 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P2269230951825794337

namespace A141792

/-- `p?[A000720(A141468(n+2))]` -/
def P2269230951825794337.Spec : Prop :=
  ∀ n, P2269230951825794337.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P10359775340402329372

`p?[A023443(A018252(n+1)-n)]`
-/

namespace A141792.P10359775340402329372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A018252 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P10359775340402329372

namespace A141792

/-- `p?[A023443(A018252(n+1)-n)]` -/
def P10359775340402329372.Spec : Prop :=
  ∀ n, P10359775340402329372.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P7366726598040087887

`p?[A073169(n+1)-1]`
-/

namespace A141792.P7366726598040087887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P7366726598040087887

namespace A141792

/-- `p?[A073169(n+1)-1]` -/
def P7366726598040087887.Spec : Prop :=
  ∀ n, P7366726598040087887.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P3636762899080790818

`p?[A000720(A072668(n+1))]`
-/

namespace A141792.P3636762899080790818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A072668 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P3636762899080790818

namespace A141792

/-- `p?[A000720(A072668(n+1))]` -/
def P3636762899080790818.Spec : Prop :=
  ∀ n, P3636762899080790818.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P3932271974759514077

`p?[A000720(A079696(n+1)-1)]`
-/

namespace A141792.P3932271974759514077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A079696 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P3932271974759514077

namespace A141792

/-- `p?[A000720(A079696(n+1)-1)]` -/
def P3932271974759514077.Spec : Prop :=
  ∀ n, P3932271974759514077.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P5930999183807850900

`p?[A073425(n)]`
-/

namespace A141792.P5930999183807850900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P5930999183807850900

namespace A141792

/-- `p?[A073425(n)]` -/
def P5930999183807850900.Spec : Prop :=
  ∀ n, P5930999183807850900.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P12311412249792933738

`p?[A060462(n+1)-n]`
-/

namespace A141792.P12311412249792933738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P12311412249792933738

namespace A141792

/-- `p?[A060462(n+1)-n]` -/
def P12311412249792933738.Spec : Prop :=
  ∀ n, P12311412249792933738.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P15476601865938772015

`p?[A000720(A060462(n+1))]`
-/

namespace A141792.P15476601865938772015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A060462 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P15476601865938772015

namespace A141792

/-- `p?[A000720(A060462(n+1))]` -/
def P15476601865938772015.Spec : Prop :=
  ∀ n, P15476601865938772015.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P3594358461000370706

`p?[A173073(n+1)]`
-/

namespace A141792.P3594358461000370706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P3594358461000370706

namespace A141792

/-- `p?[A173073(n+1)]` -/
def P3594358461000370706.Spec : Prop :=
  ∀ n, P3594358461000370706.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P17691166823683540765

`p?[A065090(n+1)-n]`
-/

namespace A141792.P17691166823683540765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P17691166823683540765

namespace A141792

/-- `p?[A065090(n+1)-n]` -/
def P17691166823683540765.Spec : Prop :=
  ∀ n, P17691166823683540765.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P14539417661102275943

`p?[A000720(A122825(n+1))]`
-/

namespace A141792.P14539417661102275943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A122825 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P14539417661102275943

namespace A141792

/-- `p?[A000720(A122825(n+1))]` -/
def P14539417661102275943.Spec : Prop :=
  ∀ n, P14539417661102275943.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P11761630690208149736

`p?[A063084(n+1)]`
-/

namespace A141792.P11761630690208149736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P11761630690208149736

namespace A141792

/-- `p?[A063084(n+1)]` -/
def P11761630690208149736.Spec : Prop :=
  ∀ n, P11761630690208149736.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P666359095542196414

`p?[A230980(n)-A055671(n)]`
-/

namespace A141792.P666359095542196414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P666359095542196414

namespace A141792

/-- `p?[A230980(n)-A055671(n)]` -/
def P666359095542196414.Spec : Prop :=
  ∀ n, P666359095542196414.a n = A141792 (n + 1)

end A141792

/-! ## A141792.P13996328468947139763

`p?[A230980(A079696(n+1)-1)]`
-/

namespace A141792.P13996328468947139763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A079696 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P13996328468947139763

namespace A141792

/-- `p?[A230980(A079696(n+1)-1)]` -/
def P13996328468947139763.Spec : Prop :=
  ∀ n, P13996328468947139763.a n = A141792 (n + 1)

end A141792

/-!
# A141794: Primes of the form n/(2*(prime(n+2) - prime(n+1))).

The programs for A141794, there is no canonical definition to state claims against.
-/

/-! ## A141794.P16340540634113811563

`p?[A006370(A141793(n+1))]`
-/

namespace A141794.P16340540634113811563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A141793 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141794.P16340540634113811563

/-! ## A141794.P185890409943773629

`p?[A029578(A141793(n+2))]`
-/

namespace A141794.P185890409943773629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A141793 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141794.P185890409943773629

/-! ## A141794.P17785787206392156534

`p?[A001057(A141793(n+1)-1)]`
-/

namespace A141794.P17785787206392156534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A141793 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141794.P17785787206392156534

/-!
# A141798: Numbers n such that 2*23^n + 1 is prime.

The programs for A141798, there is no canonical definition to state claims against.
-/

/-! ## A141798.P12131172041784441729

`and(p?[A289844(n)], 277)`
-/

namespace A141798.P12131172041784441729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 277

end

end A141798.P12131172041784441729

/-!
# A141799: Number of repeated integer partitions of n.

The programs for A141799, there is no canonical definition to state claims against.
-/

/-! ## A141799.P17450101690839304399

`xor(n-gcd(n, ∑[n]), A339658(2^n))`
-/

namespace A141799.P17450101690839304399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)) (A339658 (2 ^ n))

end

end A141799.P17450101690839304399

/-! ## A141799.P771350110077650878

`A136147(a(n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A141799.P771350110077650878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A136147 (a (n - 1)).toNat + 2 * a (n - 1)

end

end A141799.P771350110077650878

