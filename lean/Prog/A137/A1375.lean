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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A137500: Binomial transform of b(n) = (0, 0, A007910).

The programs for A137500, the canonical program `A137500.P10173415657923203167` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137500 has offset 0).

The definition of A137500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137500.P10173415657923203167

`3*a(n-1)+A009545(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137500

/-- `3*a(n-1)+A009545(n-1)` -/
def P10173415657923203167.Spec : Prop :=
  ∀ n, P10173415657923203167.a n = A137500 n

theorem P10173415657923203167.correct : P10173415657923203167.Spec := by
  intro n
  simp only [A137500]

end A137500

/-! ## A137500.P8652622366927857139

`5*a(n-1)-8*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A137500.P8652622366927857139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  5 * a (n - 1) - 8 * a (n - 2) + 6 * a (n - 3)

end

end A137500.P8652622366927857139

namespace A137500

/-- `5*a(n-1)-8*a(n-2)+6*a(n-3)` -/
def P8652622366927857139.Spec : Prop :=
  ∀ n, P8652622366927857139.a n = A137500 n

end A137500

/-! ## A137500.P523125174710026085

`ogf(x^2/(1-5x+8x^2-6x^3))`
-/

namespace A137500.P523125174710026085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -5, 8, -6] n

end

end A137500.P523125174710026085

namespace A137500

/-- `ogf(x^2/(1-5x+8x^2-6x^3))` -/
def P523125174710026085.Spec : Prop :=
  ∀ n, P523125174710026085.a n = A137500 n

end A137500

/-! ## A137500.P14072511811070282996

`A005843(A116521(n+1))-∑[A115390(n)]`
-/

namespace A137500.P14072511811070282996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A116521 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137500.P14072511811070282996

namespace A137500

/-- `A005843(A116521(n+1))-∑[A115390(n)]` -/
def P14072511811070282996.Spec : Prop :=
  ∀ n, P14072511811070282996.a n = A137500 n

end A137500

/-! ## A137500.P15615465307126087343

`A005843(A116521(n+1))-(A117189(n)-(A073357(n)+1))`
-/

namespace A137500.P15615465307126087343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A116521 (n + 1)).toNat - (A117189 n - (A073357 n + 1))

end

end A137500.P15615465307126087343

namespace A137500

/-- `A005843(A116521(n+1))-(A117189(n)-(A073357(n)+1))` -/
def P15615465307126087343.Spec : Prop :=
  ∀ n, P15615465307126087343.a n = A137500 n

end A137500

/-!
# A137501: The even numbers repeated, with alternating signs.

The programs for A137501, the canonical program `A137501.P11709509657593621733` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137501 has offset 0).

The definition of A137501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137501.P11709509657593621733

`(-1)^n*2*floor(n/2)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137501

/-- `(-1)^n*2*floor(n/2)` -/
def P11709509657593621733.Spec : Prop :=
  ∀ n, P11709509657593621733.a n = A137501 n

theorem P11709509657593621733.correct : P11709509657593621733.Spec := by
  intro n
  simp only [A137501]

end A137501

/-! ## A137501.P1445894304447660985

`Δ[n^(n%2)]`
-/

namespace A137501.P1445894304447660985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137501.P1445894304447660985

namespace A137501

/-- `Δ[n^(n%2)]` -/
def P1445894304447660985.Spec : Prop :=
  ∀ n, P1445894304447660985.a n = A137501 n

end A137501

/-! ## A137501.P11384633140235862967

`Δ[n^and(1, n)]`
-/

namespace A137501.P11384633140235862967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137501.P11384633140235862967

namespace A137501

/-- `Δ[n^and(1, n)]` -/
def P11384633140235862967.Spec : Prop :=
  ∀ n, P11384633140235862967.a n = A137501 n

end A137501

/-! ## A137501.P14968735343842764512

`Δ[gcd(n, or(1, n))]`
-/

namespace A137501.P14968735343842764512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137501.P14968735343842764512

namespace A137501

/-- `Δ[gcd(n, or(1, n))]` -/
def P14968735343842764512.Spec : Prop :=
  ∀ n, P14968735343842764512.a n = A137501 n

end A137501

/-! ## A137501.P8843102479254619369

`Δ[C(n, and(1, n))]`
-/

namespace A137501.P8843102479254619369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137501.P8843102479254619369

namespace A137501

/-- `Δ[C(n, and(1, n))]` -/
def P8843102479254619369.Spec : Prop :=
  ∀ n, P8843102479254619369.a n = A137501 n

end A137501

/-! ## A137501.P17449904555241193679

`Δ[C(n, n²%2)]`
-/

namespace A137501.P17449904555241193679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2 % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137501.P17449904555241193679

namespace A137501

/-- `Δ[C(n, n²%2)]` -/
def P17449904555241193679.Spec : Prop :=
  ∀ n, P17449904555241193679.a n = A137501 n

end A137501

/-! ## A137501.P11647102854633810422

`Δ[(n-1)*and(1, n)]`
-/

namespace A137501.P11647102854633810422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137501.P11647102854633810422

namespace A137501

/-- `Δ[(n-1)*and(1, n)]` -/
def P11647102854633810422.Spec : Prop :=
  ∀ n, P11647102854633810422.a n = A137501 n

end A137501

/-! ## A137501.P14159348620290730872

`Δ[xor(1, n)%(n+1)]`
-/

namespace A137501.P14159348620290730872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137501.P14159348620290730872

namespace A137501

/-- `Δ[xor(1, n)%(n+1)]` -/
def P14159348620290730872.Spec : Prop :=
  ∀ n, P14159348620290730872.a n = A137501 n

end A137501

/-! ## A137501.P5076660808507142528

`Δ[lcm(1-n, and(1, n))]`
-/

namespace A137501.P5076660808507142528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137501.P5076660808507142528

namespace A137501

/-- `Δ[lcm(1-n, and(1, n))]` -/
def P5076660808507142528.Spec : Prop :=
  ∀ n, P5076660808507142528.a n = A137501 n

end A137501

/-! ## A137501.P12121475532303364986

`-xor(-and(1, n), -n)`
-/

namespace A137501.P12121475532303364986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-(Nat.land 1 n : ℤ)) (-(n : ℤ))

end

end A137501.P12121475532303364986

namespace A137501

/-- `-xor(-and(1, n), -n)` -/
def P12121475532303364986.Spec : Prop :=
  ∀ n, P12121475532303364986.a n = A137501 n

end A137501

/-! ## A137501.P14933358055351204273

`gcd(2*n, and(1, n))-n`
-/

namespace A137501.P14933358055351204273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) (Nat.land 1 n) : ℤ) - (n : ℤ)

end

end A137501.P14933358055351204273

namespace A137501

/-- `gcd(2*n, and(1, n))-n` -/
def P14933358055351204273.Spec : Prop :=
  ∀ n, P14933358055351204273.a n = A137501 n

end A137501

/-! ## A137501.P15380405684593421213

`Δ[(n-1)%or(1, -n)]`
-/

namespace A137501.P15380405684593421213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (Int.lor 1 (-(n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137501.P15380405684593421213

namespace A137501

/-- `Δ[(n-1)%or(1, -n)]` -/
def P15380405684593421213.Spec : Prop :=
  ∀ n, P15380405684593421213.a n = A137501 n

end A137501

/-! ## A137501.P15298932117768621516

`Δ[and(n-1, -n%2)]`
-/

namespace A137501.P15298932117768621516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (Int.tmod (-(n : ℤ)) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137501.P15298932117768621516

namespace A137501

/-- `Δ[and(n-1, -n%2)]` -/
def P15298932117768621516.Spec : Prop :=
  ∀ n, P15298932117768621516.a n = A137501 n

end A137501

/-! ## A137501.P11254468080782751749

`Δ[C(n, 2-gcd(2, n²))]`
-/

namespace A137501.P11254468080782751749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 - (Nat.gcd 2 (n ^ 2) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137501.P11254468080782751749

namespace A137501

/-- `Δ[C(n, 2-gcd(2, n²))]` -/
def P11254468080782751749.Spec : Prop :=
  ∀ n, P11254468080782751749.a n = A137501 n

end A137501

/-! ## A137501.P10374811909598882248

`Δ[and(n, -((2*n)%4))]`
-/

namespace A137501.P10374811909598882248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-((2 * n % 4 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137501.P10374811909598882248

namespace A137501

/-- `Δ[and(n, -((2*n)%4))]` -/
def P10374811909598882248.Spec : Prop :=
  ∀ n, P10374811909598882248.a n = A137501 n

end A137501

/-! ## A137501.P8928937978128409206

`Δ[C(n, 2*floor(n/2))]`
-/

namespace A137501.P8928937978128409206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137501.P8928937978128409206

namespace A137501

/-- `Δ[C(n, 2*floor(n/2))]` -/
def P8928937978128409206.Spec : Prop :=
  ∀ n, P8928937978128409206.a n = A137501 n

end A137501

/-! ## A137501.P3237407697491185602

`∑[ogf(2x^2/(1+2x+x^2))]`
-/

namespace A137501.P3237407697491185602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137501.P3237407697491185602

namespace A137501

/-- `∑[ogf(2x^2/(1+2x+x^2))]` -/
def P3237407697491185602.Spec : Prop :=
  ∀ n, P3237407697491185602.a n = A137501 n

end A137501

/-! ## A137501.P13721160181246265456

`ogf(2x^2/(1+x-x^2-x^3))`
-/

namespace A137501.P13721160181246265456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, 1, -1, -1] n

end

end A137501.P13721160181246265456

namespace A137501

/-- `ogf(2x^2/(1+x-x^2-x^3))` -/
def P13721160181246265456.Spec : Prop :=
  ∀ n, P13721160181246265456.a n = A137501 n

end A137501

/-! ## A137501.P8609207343167432276

`Δ[(n-1)*(n+2)%2]`
-/

namespace A137501.P8609207343167432276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((n + 2) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137501.P8609207343167432276

namespace A137501

/-- `Δ[(n-1)*(n+2)%2]` -/
def P8609207343167432276.Spec : Prop :=
  ∀ n, P8609207343167432276.a n = A137501 n

end A137501

/-! ## A137501.P9800443613220111531

`Δ[lcm(2, lcm(2, n)-(n-1))]`
-/

namespace A137501.P9800443613220111531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((Nat.lcm 2 n : ℤ) - ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137501.P9800443613220111531

namespace A137501

/-- `Δ[lcm(2, lcm(2, n)-(n-1))]` -/
def P9800443613220111531.Spec : Prop :=
  ∀ n, P9800443613220111531.a n = A137501 n

end A137501

/-!
# A137502: Reverse sequence of powers in prime decomposition of n.

The programs for A137502, there is no canonical definition to state claims against.
-/

/-! ## A137502.P3749237753003186725

`A293448(A348717(n+1))`
-/

namespace A137502.P3749237753003186725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293448 (A348717 (n + 1)).toNat

end

end A137502.P3749237753003186725

/-! ## A137502.P11396518782872748944

`(A241916(n+1)+A241916(n+1))/A006530(2*(n+1))`
-/

namespace A137502.P11396518782872748944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241916 (n + 1) + A241916 (n + 1) : ℚ) / (A006530 (2 * (n + 1)) : ℚ)

end

end A137502.P11396518782872748944

/-! ## A137502.P13820753059792206147

`A293448(2*(n+1))/A006530(2*(n+1))`
-/

namespace A137502.P13820753059792206147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293448 (2 * (n + 1)) : ℚ) / (A006530 (2 * (n + 1)) : ℚ)

end

end A137502.P13820753059792206147

/-! ## A137502.P4960711108209368892

`A293448(2*(n+1))/A000040(A061395(2*(n+1)))`
-/

namespace A137502.P4960711108209368892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293448 (2 * (n + 1)) : ℚ) / (A000040 (A061395 (2 * (n + 1))).toNat : ℚ)

end

end A137502.P4960711108209368892

/-! ## A137502.P3548058371683136424

`A293448(2*(n+1))²/A293448(4*(n+1))`
-/

namespace A137502.P3548058371683136424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293448 (2 * (n + 1)) ^ 2 : ℚ) / (A293448 (4 * (n + 1)) : ℚ)

end

end A137502.P3548058371683136424

/-! ## A137502.P7622444017426855904

`A243057(A119416(n+1))/A117366(n+1)`
-/

namespace A137502.P7622444017426855904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243057 (A119416 (n + 1)).toNat : ℚ) / (A117366 (n + 1) : ℚ)

end

end A137502.P7622444017426855904

/-! ## A137502.P2900217188202243963

`A241916(A253560(n+1))/A006530(n+1)`
-/

namespace A137502.P2900217188202243963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241916 (A253560 (n + 1)).toNat : ℚ) / (A006530 (n + 1) : ℚ)

end

end A137502.P2900217188202243963

/-! ## A137502.P789398123091851793

`A241916((n+1)*A006530(n+1))/A006530(n+1)`
-/

namespace A137502.P789398123091851793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241916 ((n + 1 : ℤ) * A006530 (n + 1)).toNat : ℚ) / (A006530 (n + 1) : ℚ)

end

end A137502.P789398123091851793

/-! ## A137502.P10948889140465138925

`A241916((n+1)²)/A241916(n+1)`
-/

namespace A137502.P10948889140465138925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241916 ((n + 1) ^ 2) : ℚ) / (A241916 (n + 1) : ℚ)

end

end A137502.P10948889140465138925

/-! ## A137502.P15833631718766607923

`A052126(2*A241916(n+1))`
-/

namespace A137502.P15833631718766607923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (2 * A241916 (n + 1)).toNat

end

end A137502.P15833631718766607923

/-!
# A137503: Number of Frobenius equivalence classes of size n over GF(2^n) with their trace equal to the trace of their inverse.

The programs for A137503, there is no canonical definition to state claims against.
-/

/-! ## A137503.P14267818449566733404

`A012265((n+1)*A300301(n))`
-/

namespace A137503.P14267818449566733404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 ((n + 1 : ℤ) * A300301 n).toNat

end

end A137503.P14267818449566733404

/-! ## A137503.P736786399835793845

`A001319(A342576(2*n+5))-n`
-/

namespace A137503.P736786399835793845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001319 (A342576 (2 * n + 5)).toNat - (n : ℤ)

end

end A137503.P736786399835793845

/-!
# A137504: Limiting values of A136406: a(n) = A136406(m,m-n) for any m >= 2n.

The programs for A137504, there is no canonical definition to state claims against.
-/

/-! ## A137504.P1994313616090358491

`A136406(A004277(n²))`
-/

namespace A137504.P1994313616090358491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136406 (A004277 (n ^ 2)).toNat

end

end A137504.P1994313616090358491

/-! ## A137504.P2968844134280300804

`A136406(2*A253909(n))`
-/

namespace A137504.P2968844134280300804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136406 (2 * A253909 n).toNat

end

end A137504.P2968844134280300804

/-! ## A137504.P8258097109164484481

`A136406(A065033((2*n)²))`
-/

namespace A137504.P8258097109164484481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136406 (A065033 ((2 * n) ^ 2)).toNat

end

end A137504.P8258097109164484481

/-! ## A137504.P15631350064505891527

`A136406(A253909(n)+n²)`
-/

namespace A137504.P15631350064505891527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136406 (A253909 n + (n ^ 2 : ℤ)).toNat

end

end A137504.P15631350064505891527

/-! ## A137504.P14768182481049652086

`A136406(A106232(n+1)-2*n)`
-/

namespace A137504.P14768182481049652086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136406 (A106232 (n + 1) - (2 * n : ℤ)).toNat

end

end A137504.P14768182481049652086

/-!
# A137505: Inverse binomial transform of A007910.

The programs for A137505, the canonical program `A137505.P7046979023749365477` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137505 has offset 0).

The definition of A137505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137505.P230652170337525921

`∑[ogf((1+2x+x^2)/(1+2x+2x^2))]`
-/

namespace A137505.P230652170337525921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, 2, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137505.P230652170337525921

namespace A137505

/-- `∑[ogf((1+2x+x^2)/(1+2x+2x^2))]` -/
def P230652170337525921.Spec : Prop :=
  ∀ n, P230652170337525921.a n = A137505 n

end A137505

/-! ## A137505.P5932675182532102781

`ogf((1+2x+x^2)/(1+x-2x^3))`
-/

namespace A137505.P5932675182532102781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, 1, 0, -2] n

end

end A137505.P5932675182532102781

namespace A137505

/-- `ogf((1+2x+x^2)/(1+x-2x^3))` -/
def P5932675182532102781.Spec : Prop :=
  ∀ n, P5932675182532102781.a n = A137505 n

end A137505

/-! ## A137505.P7046979023749365477

`4*(1-a(n-4))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137505

/-- `4*(1-a(n-4))` -/
def P7046979023749365477.Spec : Prop :=
  ∀ n, P7046979023749365477.a n = A137505 n

theorem P7046979023749365477.correct : P7046979023749365477.Spec := by
  intro n
  simp only [A137505]

end A137505

/-! ## A137505.P2036324087989429831

`a(n-3)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A137505.P2036324087989429831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 1))

end

end A137505.P2036324087989429831

namespace A137505

/-- `a(n-3)+a(n-3)-a(n-1)` -/
def P2036324087989429831.Spec : Prop :=
  ∀ n, P2036324087989429831.a n = A137505 n

end A137505

/-! ## A137505.P10822982733860345918

`floor(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A137505.P10822982733860345918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3))

end

end A137505.P10822982733860345918

namespace A137505

/-- `floor(a(n-3)-(a(n-1)-a(n-3)))` -/
def P10822982733860345918.Spec : Prop :=
  ∀ n, P10822982733860345918.a n = A137505 n

end A137505

/-! ## A137505.P15190049527763405516

`∑[a(n-3)-(a(n-1)-a(n-3))]` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=2`
-/

namespace A137505.P15190049527763405516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, 2] fun n f1 =>
  f1 (n - 3) - (f1 (n - 1) - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137505.P15190049527763405516

namespace A137505

/-- `∑[a(n-3)-(a(n-1)-a(n-3))]` -/
def P15190049527763405516.Spec : Prop :=
  ∀ n, P15190049527763405516.a n = A137505 n

end A137505

/-! ## A137505.P2002080109735277738

`4-a(n-1)-a(n-1)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A137505.P2002080109735277738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 - a (n - 1) - a (n - 1) - a (n - 2) - a (n - 2)

end

end A137505.P2002080109735277738

namespace A137505

/-- `4-a(n-1)-a(n-1)-a(n-2)-a(n-2)` -/
def P2002080109735277738.Spec : Prop :=
  ∀ n, P2002080109735277738.a n = A137505 n

end A137505

/-! ## A137505.P6896412376714768052

`a(n-1)-A108520(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A137505.P6896412376714768052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - A108520 (n - 2)

end

end A137505.P6896412376714768052

namespace A137505

/-- `a(n-1)-A108520(n-2)` -/
def P6896412376714768052.Spec : Prop :=
  ∀ n, P6896412376714768052.a n = A137505 n

end A137505

/-! ## A137505.P1568329743832122697

`(∑[-A009116(n+1)]+1)/2`
-/

namespace A137505.P1568329743832122697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009116 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A137505.P1568329743832122697

namespace A137505

/-- `(∑[-A009116(n+1)]+1)/2` -/
def P1568329743832122697.Spec : Prop :=
  ∀ n, P1568329743832122697.a n = (A137505 n : ℚ)

end A137505

/-! ## A137505.P15942577556938343215

`A009116(n)+∑[A084102(n)]-1`
-/

namespace A137505.P15942577556938343215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A137505.P15942577556938343215

namespace A137505

/-- `A009116(n)+∑[A084102(n)]-1` -/
def P15942577556938343215.Spec : Prop :=
  ∀ n, P15942577556938343215.a n = A137505 n

end A137505

/-! ## A137505.P16882919780449936564

`A009116(n)+1-∑[A108520(n)]`
-/

namespace A137505.P16882919780449936564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137505.P16882919780449936564

namespace A137505

/-- `A009116(n)+1-∑[A108520(n)]` -/
def P16882919780449936564.Spec : Prop :=
  ∀ n, P16882919780449936564.a n = A137505 n

end A137505

/-! ## A137505.P13212710592119515459

`(A137470(n)+1)/2`
-/

namespace A137505.P13212710592119515459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137470 n + 1 : ℚ) / 2

end

end A137505.P13212710592119515459

namespace A137505

/-- `(A137470(n)+1)/2` -/
def P13212710592119515459.Spec : Prop :=
  ∀ n, P13212710592119515459.a n = (A137505 n : ℚ)

end A137505

/-! ## A137505.P2494500837787986518

`A108520(n+1)/2-∑[A108520(n+1)]`
-/

namespace A137505.P2494500837787986518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108520 (n + 1) : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A137505.P2494500837787986518

namespace A137505

/-- `A108520(n+1)/2-∑[A108520(n+1)]` -/
def P2494500837787986518.Spec : Prop :=
  ∀ n, P2494500837787986518.a n = (A137505 n : ℚ)

end A137505

/-! ## A137505.P17287117179153190828

`(∏[-(2/a(n-1)+2)]+4)/5` with `a(0)=1, a(1)=1`
-/

namespace A137505.P17287117179153190828
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -(2 / f1 (n - 1) + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j + 4) / 5

end

end A137505.P17287117179153190828

namespace A137505

/-- `(∏[-(2/a(n-1)+2)]+4)/5` -/
def P17287117179153190828.Spec : Prop :=
  ∀ n, P17287117179153190828.a n = (A137505 n : ℚ)

end A137505

/-! ## A137505.P4372464770568657541

`(∑[A090132(n)]+1)/2`
-/

namespace A137505.P4372464770568657541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A137505.P4372464770568657541

namespace A137505

/-- `(∑[A090132(n)]+1)/2` -/
def P4372464770568657541.Spec : Prop :=
  ∀ n, P4372464770568657541.a n = (A137505 n : ℚ)

end A137505

/-! ## A137505.P1632452127668704926

`A137470(n+1)+A009116(n)-A137426(n+1)`
-/

namespace A137505.P1632452127668704926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137470 (n + 1) + (A009116 n - A137426 (n + 1))

end

end A137505.P1632452127668704926

namespace A137505

/-- `A137470(n+1)+A009116(n)-A137426(n+1)` -/
def P1632452127668704926.Spec : Prop :=
  ∀ n, P1632452127668704926.a n = A137505 n

end A137505

/-!
# A137506: a(2*n+1) = 141 + 124*n, a(2*n+2) = |a(2*n) - 24| with a(2)=59, thus a(4,6,8,...) = 35,11,13,11,13...

The programs for A137506, the canonical program `A137506.P5169515490967183314` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137506 has offset 1).

The definition of A137506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137506.P5169515490967183314

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=141, a(1)=59, a(2)=265, a(3)=35, a(4)=389, a(5)=11, a(6)=513, a(7)=13, a(8)=637, a(9)=11`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137506

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P5169515490967183314.Spec : Prop :=
  ∀ n, P5169515490967183314.a n = A137506 (n + 1)

theorem P5169515490967183314.correct : P5169515490967183314.Spec := by
  intro n
  simp only [A137506, Nat.add_sub_cancel]

end A137506

/-!
# A137507: a(n) = 100^[n/10] + 2*n*10^[n/10]: inspired by Engel expansion of Pi.

The programs for A137507, the canonical program `A137507.P15363507378294162363` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137507 has offset 0).

The definition of A137507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137507.P15363507378294162363

`(n+10^floor(n/10))²-n²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137507

/-- `(n+10^floor(n/10))²-n²` -/
def P15363507378294162363.Spec : Prop :=
  ∀ n, P15363507378294162363.a n = (A137507 n : ℚ)

end A137507

/-! ## A137507.P10887246593643430065

`record[gcd(A118868(n+1)², ∑[n])]`
-/

namespace A137507.P10887246593643430065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118868 (n + 1) ^ 2) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137507.P10887246593643430065

namespace A137507

/-- `record[gcd(A118868(n+1)², ∑[n])]` -/
def P10887246593643430065.Spec : Prop :=
  ∀ n, (P10887246593643430065.a n : ℤ) = A137507 n

end A137507

/-! ## A137507.P5107356607680587908

`record[gcd(A274846(n+2)², ∑[n+1])]`
-/

namespace A137507.P5107356607680587908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274846 (n + 2) ^ 2) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137507.P5107356607680587908

namespace A137507

/-- `record[gcd(A274846(n+2)², ∑[n+1])]` -/
def P5107356607680587908.Spec : Prop :=
  ∀ n, (P5107356607680587908.a n : ℤ) = A137507 n

end A137507

/-! ## A137507.P15527932674110441813

`Δ[A117707(A277209(n))²]`
-/

namespace A137507.P15527932674110441813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A277209 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137507.P15527932674110441813

namespace A137507

/-- `Δ[A117707(A277209(n))²]` -/
def P15527932674110441813.Spec : Prop :=
  ∀ n, P15527932674110441813.a n = A137507 n

end A137507

/-! ## A137507.P17977715545839603195

`record[Δ[A117707(A092530(n))²]]`
-/

namespace A137507.P17977715545839603195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A092530 n).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137507.P17977715545839603195

namespace A137507

/-- `record[Δ[A117707(A092530(n))²]]` -/
def P17977715545839603195.Spec : Prop :=
  ∀ n, P17977715545839603195.a n = A137507 n

end A137507

/-!
# A137508: Successive structures of alkaline earth metals (periodic table elements from 2nd column).

The programs for A137508, there is no canonical definition to state claims against.
-/

/-! ## A137508.P1717729863443026805

`A168281(n+2)`
-/

namespace A137508.P1717729863443026805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168281 (n + 2)

end

end A137508.P1717729863443026805

/-! ## A137508.P2772552313906939891

`2*A106314(n+2)`
-/

namespace A137508.P2772552313906939891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106314 (n + 2)

end

end A137508.P2772552313906939891

/-! ## A137508.P7572949875430159065

`2*A003983(n+2)²`
-/

namespace A137508.P7572949875430159065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003983 (n + 2) ^ 2

end

end A137508.P7572949875430159065

/-! ## A137508.P12378864686188790172

`2*A087062(n+2)²`
-/

namespace A137508.P12378864686188790172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087062 (n + 2) ^ 2

end

end A137508.P12378864686188790172

/-! ## A137508.P8985356506944330167

`2*(A004197(n+1)+1)²`
-/

namespace A137508.P8985356506944330167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004197 (n + 1) + 1) ^ 2

end

end A137508.P8985356506944330167

/-!
# A137509: a(1)=2. For n >= 2, a(n) = the smallest integer > a(n-1) that has the same multiset of prime-factorization exponents as n has.

The programs for A137509, there is no canonical definition to state claims against.
-/

/-! ## A137509.P8447265765718891199

`A178442(n+1)+A008683(A056450(n))`
-/

namespace A137509.P8447265765718891199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178442 (n + 1) + A008683 (A056450 n).toNat

end

end A137509.P8447265765718891199

/-! ## A137509.P14870486308783805017

`A178442(n+1)+A000045(A091536(n))`
-/

namespace A137509.P14870486308783805017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178442 (n + 1) + A000045 (A091536 n).toNat

end

end A137509.P14870486308783805017

/-! ## A137509.P5700838592398806440

`A178442(n+1)+A010054(A178440(n))`
-/

namespace A137509.P5700838592398806440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178442 (n + 1) + A010054 (A178440 n).toNat

end

end A137509.P5700838592398806440

/-! ## A137509.P3106414701215841415

`A209229(A000716(n))+A178442(n+1)`
-/

namespace A137509.P3106414701215841415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A000716 n).toNat + A178442 (n + 1)

end

end A137509.P3106414701215841415

/-! ## A137509.P4109330789670844450

`A178442(n+1)+A010054(A384175(n))`
-/

namespace A137509.P4109330789670844450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178442 (n + 1) + A010054 (A384175 n).toNat

end

end A137509.P4109330789670844450

/-!
# A137510: Irregular triangle read by rows in which row n lists the divisors of n in the range 1 < d < n; or 0 if there are no such divisors.

The programs for A137510, there is no canonical definition to state claims against.
-/

/-! ## A137510.P15037674399811780005

`A247303(n)%A006530(A080549(n))`
-/

namespace A137510.P15037674399811780005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247303 n) (A006530 (A080549 n).toNat)

end

end A137510.P15037674399811780005

/-! ## A137510.P4584085734344460672

`and(A126052(A076345(n+1)), A247303(n))`
-/

namespace A137510.P4584085734344460672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126052 (A076345 (n + 1)).toNat) (A247303 n)

end

end A137510.P4584085734344460672

/-! ## A137510.P12091091762073460519

`A057078(A157401(2*(n+2)))*A247303(n)`
-/

namespace A137510.P12091091762073460519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A157401 (2 * (n + 2))).toNat * A247303 n

end

end A137510.P12091091762073460519

/-! ## A137510.P10067073777532569256

`and(A247303(n), A285961(A217356(n+1)))`
-/

namespace A137510.P10067073777532569256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A247303 n) (A285961 (A217356 (n + 1)).toNat)

end

end A137510.P10067073777532569256

/-!
# A137512: The number of nodes visible from underneath a binary tree, where the nodes are placed such that the innermost of the two sprouting nodes should be underneath the mother.

The programs for A137512, there is no canonical definition to state claims against.
-/

/-! ## A137512.P5238718616372315159

`round(A346302(n+1)/4)`
-/

namespace A137512.P5238718616372315159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A346302 (n + 1) : ℚ) / 4)

end

end A137512.P5238718616372315159

/-! ## A137512.P8315082578352179990

`∑[A080950(n+1)%2]`
-/

namespace A137512.P8315082578352179990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080950 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137512.P8315082578352179990

/-! ## A137512.P6009270297991697280

`∑[char[A346301(n+2)]]+1`
-/

namespace A137512.P6009270297991697280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346301 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A137512.P6009270297991697280

/-! ## A137512.P11615694737516581564

`floor((n-A079882(n))/2)+2`
-/

namespace A137512.P11615694737516581564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A079882 n : ℚ) / 2⌋ + 2

end

end A137512.P11615694737516581564

/-! ## A137512.P2588376375267643512

`ceil((n-A079944(n))/2)+1`
-/

namespace A137512.P2588376375267643512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A079944 n : ℚ) / 2⌉ + 1

end

end A137512.P2588376375267643512

/-!
# A137513: Triangle read by rows: the coefficients of the Mittag-Leffler polynomials.

The programs for A137513, there is no canonical definition to state claims against.
-/

/-! ## A137513.P737141387232350558

`2^(n-C(∑[char[∑[n]]], 2))*A111594(n)`
-/

namespace A137513.P737141387232350558
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A111594 n : ℚ)

end

end A137513.P737141387232350558

/-! ## A137513.P5816369572828417201

`A059268(n)*A111594(n)`
-/

namespace A137513.P5816369572828417201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A111594 n

end

end A137513.P5816369572828417201

/-! ## A137513.P3714459407697252469

`A111594(n)*A130125(n)`
-/

namespace A137513.P3714459407697252469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111594 n * A130125 n

end

end A137513.P3714459407697252469

/-! ## A137513.P16681969753311035193

`A000079(A002262(n))*A111594(n)`
-/

namespace A137513.P16681969753311035193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A111594 n

end

end A137513.P16681969753311035193

/-! ## A137513.P10376117575171709647

`A003958(A036561(n))*A111594(n)`
-/

namespace A137513.P10376117575171709647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A036561 n).toNat * A111594 n

end

end A137513.P10376117575171709647

/-! ## A137513.P13552821734982034406

`A036561(A112367(n))*A111594(n)`
-/

namespace A137513.P13552821734982034406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A112367 n).toNat * A111594 n

end

end A137513.P13552821734982034406

/-! ## A137513.P17415114831094382750

`A111594(n)*A130321(A061579(n))`
-/

namespace A137513.P17415114831094382750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111594 n * A130321 (A061579 n).toNat

end

end A137513.P17415114831094382750

/-! ## A137513.P9703908632736994873

`A011782(A002260(n+1))*A111594(n)`
-/

namespace A137513.P9703908632736994873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A111594 n

end

end A137513.P9703908632736994873

/-! ## A137513.P835248157285043232

`A013609(n)/A007318(n)*A111594(n)`
-/

namespace A137513.P835248157285043232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ) * (A111594 n : ℚ)

end

end A137513.P835248157285043232

/-!
# A137515: Maximal number of right triangles in n turns of Pythagoras's snail.

The programs for A137515, there is no canonical definition to state claims against.
-/

/-! ## A137515.P5494885357642592594

`A072895(n+1)-1`
-/

namespace A137515.P5494885357642592594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072895 (n + 1) - 1

end

end A137515.P5494885357642592594

/-! ## A137515.P9269457771952854656

`∑[A295338(n+1)]-1`
-/

namespace A137515.P9269457771952854656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A137515.P9269457771952854656

/-! ## A137515.P12174126658191762692

`A066182(A072895(n+1))`
-/

namespace A137515.P12174126658191762692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A072895 (n + 1)).toNat

end

end A137515.P12174126658191762692

/-! ## A137515.P9925312928522749797

`A066182(∑[A295338(n+1)])`
-/

namespace A137515.P9925312928522749797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137515.P9925312928522749797

/-! ## A137515.P13375113733931211595

`record[A072895(A065648(n))-1]`
-/

namespace A137515.P13375113733931211595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072895 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137515.P13375113733931211595

/-!
# A137516: Let 2n = p + q where p and q are primes. Take the p and q that produce the smallest product, then set a(n) = p*q - 2n.

The programs for A137516, there is no canonical definition to state claims against.
-/

/-! ## A137516.P8107952627683329730

`A073046(n+2)-2*(n+2)`
-/

namespace A137516.P8107952627683329730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073046 (n + 2) - (2 * (n + 2) : ℤ)

end

end A137516.P8107952627683329730

/-! ## A137516.P14039078190192932754

`(n+1)²-(A047949(n+2)²+1)`
-/

namespace A137516.P14039078190192932754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A047949 (n + 2) ^ 2 + 1)

end

end A137516.P14039078190192932754

/-! ## A137516.P15581881562600884250

`A005563(n)-A047949(n+2)²`
-/

namespace A137516.P15581881562600884250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - A047949 (n + 2) ^ 2

end

end A137516.P15581881562600884250

/-! ## A137516.P6158038491037096801

`A073046(n+2)-1-A144396(n+1)`
-/

namespace A137516.P6158038491037096801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073046 (n + 2) - 1 - A144396 (n + 1)

end

end A137516.P6158038491037096801

/-! ## A137516.P8403342599687784820

`A073046(n+2)-A049653(n+2)-A060265(n+2)`
-/

namespace A137516.P8403342599687784820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073046 (n + 2) - A049653 (n + 2) - A060265 (n + 2)

end

end A137516.P8403342599687784820

/-! ## A137516.P7661579473207008122

`(n+1)²-(A002620(A303603(n+2))+1)`
-/

namespace A137516.P7661579473207008122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A002620 (A303603 (n + 2)).toNat + 1)

end

end A137516.P7661579473207008122

/-! ## A137516.P11449138854707614244

`A003958(A073046(n+2))-1`
-/

namespace A137516.P11449138854707614244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A073046 (n + 2)).toNat - 1

end

end A137516.P11449138854707614244

/-! ## A137516.P11563670456263361312

`A075255(A073046(n+2))`
-/

namespace A137516.P11563670456263361312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A073046 (n + 2)).toNat

end

end A137516.P11563670456263361312

/-! ## A137516.P14303557763615542374

`A023445(A073046(n+2)-A005408(n))`
-/

namespace A137516.P14303557763615542374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A073046 (n + 2) - A005408 n).toNat

end

end A137516.P14303557763615542374

/-!
# A137517: a(0) = 121; for n>0, a(n) = a(n-1) - n + 1.

The programs for A137517, the canonical program `A137517.P9975030600692947567` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137517 has offset 0).

The definition of A137517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-n+1` (program `A137517.P9975030600692947567`, by `A137517.P9975030600692947567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137517.P9975030600692947567

`a(n-1)-n+1` with `a(0)=121`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137517

/-- `a(n-1)-n+1` -/
def P9975030600692947567.Spec : Prop :=
  ∀ n, P9975030600692947567.a n = A137517 n

theorem P9975030600692947567.correct : P9975030600692947567.Spec := by
  intro n
  simp only [A137517]

end A137517

/-! ## A137517.P961401829681949289

`1/2*(242-n²+n)`
-/

namespace A137517.P961401829681949289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (242 - (n ^ 2 : ℤ) + (n : ℤ) : ℚ)

end

end A137517.P961401829681949289

namespace A137517

/-- `1/2*(242-n²+n)` -/
def P961401829681949289.Spec : Prop :=
  ∀ n, P961401829681949289.a n = (A137517 n : ℚ)

theorem P961401829681949289.correct : P961401829681949289.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A137517, Nat.add_sub_cancel, A137517.P961401829681949289.a, A137517.P9975030600692947567.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A137517, Nat.add_sub_cancel, A137517.P961401829681949289.a, A137517.P9975030600692947567.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A137517

/-! ## A137517.P4818910859867246784

`(22/2)²-C(n, 2)`
-/

namespace A137517.P4818910859867246784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 : ℚ) / 2) ^ 2 - (Nat.choose n 2 : ℚ)

end

end A137517.P4818910859867246784

namespace A137517

/-- `(22/2)²-C(n, 2)` -/
def P4818910859867246784.Spec : Prop :=
  ∀ n, P4818910859867246784.a n = (A137517 n : ℚ)

end A137517

/-! ## A137517.P8093356382630527557

`∑[gcd(11, dr(n))²-n]`
-/

namespace A137517.P8093356382630527557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 11 (SequenceMachineLib.digitalRoot (n : ℤ)) ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137517.P8093356382630527557

namespace A137517

/-- `∑[gcd(11, dr(n))²-n]` -/
def P8093356382630527557.Spec : Prop :=
  ∀ n, P8093356382630527557.a n = A137517 n

end A137517

/-! ## A137517.P14720035898723984933

`∑[gcd(n, A023279(n+1)²)-n]`
-/

namespace A137517.P14720035898723984933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A023279 (n + 1) ^ 2) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137517.P14720035898723984933

namespace A137517

/-- `∑[gcd(n, A023279(n+1)²)-n]` -/
def P14720035898723984933.Spec : Prop :=
  ∀ n, P14720035898723984933.a n = A137517 n

end A137517

/-! ## A137517.P17388280544601400260

`∑[gcd(A001222(n+1), A049048(n+2))-n]`
-/

namespace A137517.P17388280544601400260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A001222 (n + 1)) (A049048 (n + 2)) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137517.P17388280544601400260

namespace A137517

/-- `∑[gcd(A001222(n+1), A049048(n+2))-n]` -/
def P17388280544601400260.Spec : Prop :=
  ∀ n, P17388280544601400260.a n = A137517 n

end A137517

/-! ## A137517.P2554449078028040168

`∑[C((2-n)²², A000032(2*n))-(n-1)]`
-/

namespace A137517.P2554449078028040168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (((2 - (n : ℤ)) ^ 2) ^ 2).toNat (A000032 (2 * n)).toNat : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137517.P2554449078028040168

namespace A137517

/-- `∑[C((2-n)²², A000032(2*n))-(n-1)]` -/
def P2554449078028040168.Spec : Prop :=
  ∀ n, P2554449078028040168.a n = A137517 n

end A137517

/-!
# A137518: a(1)=2. For n>=2, a(n) = smallest integer > a(n-1) that has the same number of divisors as n has.

The programs for A137518, there is no canonical definition to state claims against.
-/

/-! ## A137518.P3991461587277128242

`lt[A210391(A023042(3*n+4)), A299741(2*n)]`
-/

namespace A137518.P3991461587277128242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A023042 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299741 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137518.P3991461587277128242

/-!
# A137519: a(1)=1. a(2)=2. For n>=3, a(n) = the smallest integer > a(n-1) that is coprime to (a(n-1)+1)*(a(n-2)+1).

The programs for A137519, there is no canonical definition to state claims against.
-/

/-! ## A137519.P10897511911311495835

`lt[A003415(n), A363625(A371246(n+1))]`
-/

namespace A137519.P10897511911311495835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363625 (A371246 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137519.P10897511911311495835

/-! ## A137519.P7188335064564711321

`A000040(n+1)-A054054(A179959(n))`
-/

namespace A137519.P7188335064564711321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A054054 (A179959 n).toNat

end

end A137519.P7188335064564711321

/-! ## A137519.P12828630167215950203

`A000040(n+1)-A261517(A023023(n+3))`
-/

namespace A137519.P12828630167215950203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A261517 (A023023 (n + 3)).toNat

end

end A137519.P12828630167215950203

/-! ## A137519.P14346327629044814444

`A000040(n+1)-A035185(A283909(n))`
-/

namespace A137519.P14346327629044814444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A035185 (A283909 n).toNat

end

end A137519.P14346327629044814444

/-! ## A137519.P9390949948829111458

`∪[A095285(n+3), A331747(A231620(2*n))]`
-/

namespace A137519.P9390949948829111458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095285 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331747 (A231620 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137519.P9390949948829111458

/-!
# A137521: Prime numbers concatenated with 45.

The programs for A137521, the canonical program `A137521.P311171472292394913` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137521 has offset 1).

The definition of A137521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137521.P311171472292394913

`50*A100484(n+1)+45`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137521

/-- `50*A100484(n+1)+45` -/
def P311171472292394913.Spec : Prop :=
  ∀ n, P311171472292394913.a n = A137521 (n + 1)

theorem P311171472292394913.correct : P311171472292394913.Spec := by
  intro n
  simp only [A137521, Nat.add_sub_cancel]

end A137521

/-! ## A137521.P7449334696640008414

`50*A089241(n+1)-55`
-/

namespace A137521.P7449334696640008414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  50 * A089241 (n + 1) - 55

end

end A137521.P7449334696640008414

namespace A137521

/-- `50*A089241(n+1)-55` -/
def P7449334696640008414.Spec : Prop :=
  ∀ n, P7449334696640008414.a n = A137521 (n + 1)

theorem P7449334696640008414.correct : P7449334696640008414.Spec := by
  intro n
  simp only [A137521, Nat.add_sub_cancel, A137521.P7449334696640008414.a, A137521.P311171472292394913.a, A089241, A089241.P4698073971912800570.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137521

/-! ## A137521.P10534859629203304057

`5*(20*A000040(n+1)+9)`
-/

namespace A137521.P10534859629203304057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (20 * A000040 (n + 1) + 9)

end

end A137521.P10534859629203304057

namespace A137521

/-- `5*(20*A000040(n+1)+9)` -/
def P10534859629203304057.Spec : Prop :=
  ∀ n, P10534859629203304057.a n = A137521 (n + 1)

theorem P10534859629203304057.correct : P10534859629203304057.Spec := by
  intro n
  simp only [A137521, Nat.add_sub_cancel, A137521.P10534859629203304057.a, A137521.P311171472292394913.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137521

/-! ## A137521.P12661084035975751759

`5*xor(3, 10*(2*p?[abs(xor(n, -2))]+1))`
-/

namespace A137521.P12661084035975751759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.xor 3 (10 * (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1))

end

end A137521.P12661084035975751759

namespace A137521

/-- `5*xor(3, 10*(2*p?[abs(xor(n, -2))]+1))` -/
def P12661084035975751759.Spec : Prop :=
  ∀ n, P12661084035975751759.a n = A137521 (n + 1)

end A137521

/-! ## A137521.P14402674696556064320

`A053743(A000040(n+1))`
-/

namespace A137521.P14402674696556064320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 (A000040 (n + 1)).toNat

end

end A137521.P14402674696556064320

namespace A137521

/-- `A053743(A000040(n+1))` -/
def P14402674696556064320.Spec : Prop :=
  ∀ n, P14402674696556064320.a n = A137521 (n + 1)

end A137521

/-! ## A137521.P14822156312554391102

`A053743(A008578(n+2))`
-/

namespace A137521.P14822156312554391102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 (A008578 (n + 2)).toNat

end

end A137521.P14822156312554391102

namespace A137521

/-- `A053743(A008578(n+2))` -/
def P14822156312554391102.Spec : Prop :=
  ∀ n, P14822156312554391102.a n = A137521 (n + 1)

end A137521

/-! ## A137521.P3945708387083059162

`A053743(A182986(n+2))`
-/

namespace A137521.P3945708387083059162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 (A182986 (n + 2)).toNat

end

end A137521.P3945708387083059162

namespace A137521

/-- `A053743(A182986(n+2))` -/
def P3945708387083059162.Spec : Prop :=
  ∀ n, P3945708387083059162.a n = A137521 (n + 1)

end A137521

/-! ## A137521.P5514725777726013970

`A053743(record[A006530(n+2)])`
-/

namespace A137521.P5514725777726013970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137521.P5514725777726013970

namespace A137521

/-- `A053743(record[A006530(n+2)])` -/
def P5514725777726013970.Spec : Prop :=
  ∀ n, P5514725777726013970.a n = A137521 (n + 1)

end A137521

/-! ## A137521.P1151337499853946766

`A053743(record[A020639(n+2)])`
-/

namespace A137521.P1151337499853946766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137521.P1151337499853946766

namespace A137521

/-- `A053743(record[A020639(n+2)])` -/
def P1151337499853946766.Spec : Prop :=
  ∀ n, P1151337499853946766.a n = A137521 (n + 1)

end A137521

/-!
# A137522: A triangular sequence from an expansion of coefficients of the function: p(x,t)=Exp(x*g*(t))*(1-f(t)^2);f(t)=1/Sqrt[1 - 14*t^4 + t^8];g(t)=t. (Based on the Weierstrass functions of Schwarz's minimal surface which is identified with a cube.)

The programs for A137522, there is no canonical definition to state claims against.
-/

/-! ## A137522.P11814332469219977493

`A321527(lcm(13, A267351(n)))`
-/

namespace A137522.P11814332469219977493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 (Int.lcm 13 (A267351 n))

end

end A137522.P11814332469219977493

/-! ## A137522.P10178880816172087395

`A215585(A300215(n+1))/A156920(n)`
-/

namespace A137522.P10178880816172087395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215585 (A300215 (n + 1)).toNat : ℚ) / (A156920 n : ℚ)

end

end A137522.P10178880816172087395

/-! ## A137522.P3223120169406461718

`A215585(A303456(n+1))/A156920(n)`
-/

namespace A137522.P3223120169406461718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215585 (A303456 (n + 1)).toNat : ℚ) / (A156920 n : ℚ)

end

end A137522.P3223120169406461718

/-!
# A137524: Triangular sequence from coefficients of the umbral calculus expansion of a Golden -Mean Bernoulli function(A001898): p(x,t)=t*phi^(x*t)/(phi^t - 1), where the golden ratio replaces "e".

The programs for A137524, there is no canonical definition to state claims against.
-/

/-! ## A137524.P10205727484254858214

`(comp[∑[n]]-n)*A048998(n)`
-/

namespace A137524.P10205727484254858214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A048998 n

end

end A137524.P10205727484254858214

/-! ## A137524.P894548051962664971

`(comp[∑[n]]-n)*A137777(n)/2`
-/

namespace A137524.P894548051962664971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) * ((A137777 n : ℚ) / 2)

end

end A137524.P894548051962664971

/-! ## A137524.P6392268107383303530

`A003057(n+2)/2*A137777(n)`
-/

namespace A137524.P6392268107383303530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) / 2 * (A137777 n : ℚ)

end

end A137524.P6392268107383303530

/-! ## A137524.P14139866258025099182

`(comp[∑[n]]-n)*A048999(A061579(n))`
-/

namespace A137524.P14139866258025099182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A048999 (A061579 n).toNat

end

end A137524.P14139866258025099182

/-! ## A137524.P10881725345627571628

`(comp[∑[n]]-n)*A080779(n)*A140756(n+1)`
-/

namespace A137524.P10881725345627571628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * (A080779 n * A140756 (n + 1))

end

end A137524.P10881725345627571628

/-! ## A137524.P782972046751219353

`A048998(n)*A058321(A003056(n))`
-/

namespace A137524.P782972046751219353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 n * A058321 (A003056 n).toNat

end

end A137524.P782972046751219353

/-! ## A137524.P17656469631313707194

`A048998(n)*A051597(A127739(n+1))`
-/

namespace A137524.P17656469631313707194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 n * A051597 (A127739 (n + 1)).toNat

end

end A137524.P17656469631313707194

/-! ## A137524.P6325052033157474192

`A048998(n)*A205130(A205128(n+1))`
-/

namespace A137524.P6325052033157474192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 n * A205130 (A205128 (n + 1)).toNat

end

end A137524.P6325052033157474192

/-! ## A137524.P1074271404949650743

`A048998(n)*A205146(A205144(n+1))`
-/

namespace A137524.P1074271404949650743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 n * A205146 (A205144 (n + 1)).toNat

end

end A137524.P1074271404949650743

/-! ## A137524.P9274157504526650573

`A048998(n)+∑[A010054(n)]*A048998(n)`
-/

namespace A137524.P9274157504526650573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 n + (∑ j ∈ Finset.range (n + 1), f1 j) * A048998 n

end

end A137524.P9274157504526650573

/-!
# A137526: A triangular sequence of coefficients based on an expansion of a Enneper like Sheffer expansion function: g(t) = t; f(t) = t; p(x,t) = Exp[x*(t)]*(1 - f(t)2).

The programs for A137526, there is no canonical definition to state claims against.
-/

/-! ## A137526.P13498839173183396602

`char[∑[n-1]]-A132792(n+1)`
-/

namespace A137526.P13498839173183396602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A132792 (n + 1)

end

end A137526.P13498839173183396602

/-! ## A137526.P9642346774268866343

`(2-gcd(2, comp[∑[4*n]]))*A110314(n)`
-/

namespace A137526.P9642346774268866343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) * A110314 n

end

end A137526.P9642346774268866343

/-! ## A137526.P8196487912235711851

`(C(comp[∑[n]]-n, 2)-(n+1))!*A129685(n)`
-/

namespace A137526.P8196487912235711851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A129685 n

end

end A137526.P8196487912235711851

/-! ## A137526.P17195890080964336023

`A132440(n)+A110314(n)`
-/

namespace A137526.P17195890080964336023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 n + A110314 n

end

end A137526.P17195890080964336023

/-! ## A137526.P15361108476745521105

`A067147(n)*A106467(n)`
-/

namespace A137526.P15361108476745521105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 n * A106467 n

end

end A137526.P15361108476745521105

/-! ## A137526.P17749699567584206240

`A079216(n)*A129685(n)`
-/

namespace A137526.P17749699567584206240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079216 n * A129685 n

end

end A137526.P17749699567584206240

/-! ## A137526.P10484040632569214642

`A104974(n)*A110314(n)`
-/

namespace A137526.P10484040632569214642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104974 n * A110314 n

end

end A137526.P10484040632569214642

/-! ## A137526.P905258648906867014

`A104974(n)*A110330(n)`
-/

namespace A137526.P905258648906867014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104974 n * A110330 n

end

end A137526.P905258648906867014

/-! ## A137526.P6882652197579043070

`A106467(n)*A109187(n)`
-/

namespace A137526.P6882652197579043070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106467 n * A109187 n

end

end A137526.P6882652197579043070

/-! ## A137526.P12501201395537492932

`A106468(n)*A112227(n)`
-/

namespace A137526.P12501201395537492932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106468 n * A112227 n

end

end A137526.P12501201395537492932

/-!
# A137527: Lexicographically earliest subset of {0,1,...,13^2+13} that does not contain a nontrivial solution to 2a+b=2c+d (mod 13^2+13+1). Up to affine transformations, it is the unique such set with 11 elements.

The programs for A137527, there is no canonical definition to state claims against.
-/

/-! ## A137527.P1401993122487788432

`record[and(A051242(n+1), A268585(n+1))]`
-/

namespace A137527.P1401993122487788432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051242 (n + 1)) (A268585 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137527.P1401993122487788432

/-! ## A137527.P18021984661174568596

`record[and(A155584(3*n+5), A305495(3*n+4))]`
-/

namespace A137527.P18021984661174568596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A155584 (3 * n + 5)) (A305495 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137527.P18021984661174568596

/-!
# A137529: a(n) = 8*a(n-4).

The programs for A137529, the canonical program `A137529.P4578933752264571110` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137529 has offset 0).

The definition of A137529 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-4)` (program `A137529.P4578933752264571110`, by `A137529.P4578933752264571110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137529.P4578933752264571110

`8*a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137529

/-- `8*a(n-4)` -/
def P4578933752264571110.Spec : Prop :=
  ∀ n, (P4578933752264571110.a n : ℤ) = A137529 n

theorem P4578933752264571110.correct : P4578933752264571110.Spec := by
  intro n
  simp only [A137529]

end A137529

/-! ## A137529.P13744100197051064350

`Δ[A047260(n+1)]*A016116(A047260(n+1))`
-/

namespace A137529.P13744100197051064350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A016116 (A047260 (n + 1)).toNat

end

end A137529.P13744100197051064350

namespace A137529

/-- `Δ[A047260(n+1)]*A016116(A047260(n+1))` -/
def P13744100197051064350.Spec : Prop :=
  ∀ n, P13744100197051064350.a n = A137529 n

end A137529

/-! ## A137529.P14074446404919087176

`A074323(or(char[2*n], A001651(n+1)))`
-/

namespace A137529.P14074446404919087176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001651 (n + 1))).toNat

end

end A137529.P14074446404919087176

namespace A137529

/-- `A074323(or(char[2*n], A001651(n+1)))` -/
def P14074446404919087176.Spec : Prop :=
  ∀ n, P14074446404919087176.a n = A137529 n

end A137529

/-! ## A137529.P9181333100919014223

`A074323(or(A001651(n+1), A059841(n)))`
-/

namespace A137529.P9181333100919014223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (Int.lor (A001651 (n + 1)) (A059841 n)).toNat

end

end A137529.P9181333100919014223

namespace A137529

/-- `A074323(or(A001651(n+1), A059841(n)))` -/
def P9181333100919014223.Spec : Prop :=
  ∀ n, P9181333100919014223.a n = A137529 n

end A137529

/-! ## A137529.P14222049764269390042

`A164073(or(A001651(n+1), A059841(n)))`
-/

namespace A137529.P14222049764269390042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (Int.lor (A001651 (n + 1)) (A059841 n)).toNat

end

end A137529.P14222049764269390042

namespace A137529

/-- `A164073(or(A001651(n+1), A059841(n)))` -/
def P14222049764269390042.Spec : Prop :=
  ∀ n, P14222049764269390042.a n = A137529 n

end A137529

/-!
# A137530: Primes of the form 5k^2 + 1.

The programs for A137530, there is no canonical definition to state claims against.
-/

/-! ## A137530.P18141419531241498416

`A158493(A111147(n+1)/2)`
-/

namespace A137530.P18141419531241498416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158493 (SequenceMachineLib.roundAway ((A111147 (n + 1) : ℚ) / 2)).toNat

end

end A137530.P18141419531241498416

/-! ## A137530.P13120803999268311182

`A158493(3*A138218(n+1))`
-/

namespace A137530.P13120803999268311182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158493 (3 * A138218 (n + 1)).toNat

end

end A137530.P13120803999268311182

/-! ## A137530.P16544611223772308711

`A212656(A111147(n+1))`
-/

namespace A137530.P16544611223772308711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 (A111147 (n + 1)).toNat

end

end A137530.P16544611223772308711

/-! ## A137530.P10132921565511389990

`A212656(6*A138218(n+1))`
-/

namespace A137530.P10132921565511389990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 (6 * A138218 (n + 1)).toNat

end

end A137530.P10132921565511389990

/-! ## A137530.P11043463722422154639

`A010001(A111147(n+1))-A292164(C(n, n+1))`
-/

namespace A137530.P11043463722422154639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 (A111147 (n + 1)).toNat - A292164 (Nat.choose n (n + 1))

end

end A137530.P11043463722422154639

/-! ## A137530.P18247574110830235583

`A010001(A111147(n+1))-A014963(55*(n+1))`
-/

namespace A137530.P18247574110830235583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 (A111147 (n + 1)).toNat - A014963 (55 * (n + 1))

end

end A137530.P18247574110830235583

/-!
# A137531: a(n) = 3*a(n-1) - 2*a(n-2) + a(n-3).

The programs for A137531, the canonical program `A137531.P9638001557659427685` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137531 has offset 0).

The definition of A137531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)+a(n-3)` (program `A137531.P9638001557659427685`, by `A137531.P9638001557659427685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137531.P9638001557659427685

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137531

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P9638001557659427685.Spec : Prop :=
  ∀ n, P9638001557659427685.a n = A137531 n

theorem P9638001557659427685.correct : P9638001557659427685.Spec := by
  intro n
  simp only [A137531]

end A137531

/-! ## A137531.P6954560111847765258

`ogf((1+x)/(1-3x+2x^2-x^3))`
-/

namespace A137531.P6954560111847765258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -3, 2, -1] n

end

end A137531.P6954560111847765258

namespace A137531

/-- `ogf((1+x)/(1-3x+2x^2-x^3))` -/
def P6954560111847765258.Spec : Prop :=
  ∀ n, P6954560111847765258.a n = A137531 n

end A137531

/-! ## A137531.P4417094678753217409

`A159347(n+2)`
-/

namespace A137531.P4417094678753217409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159347 (n + 2)

end

end A137531.P4417094678753217409

namespace A137531

/-- `A159347(n+2)` -/
def P4417094678753217409.Spec : Prop :=
  ∀ n, P4417094678753217409.a n = A137531 n

end A137531

/-! ## A137531.P3351529145438891414

`∑[∑[A135364(n)]]`
-/

namespace A137531.P3351529145438891414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137531.P3351529145438891414

namespace A137531

/-- `∑[∑[A135364(n)]]` -/
def P3351529145438891414.Spec : Prop :=
  ∀ n, P3351529145438891414.a n = A137531 n

end A137531

/-! ## A137531.P8548411543251458111

`∑[A137584(n)]+1`
-/

namespace A137531.P8548411543251458111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A137531.P8548411543251458111

namespace A137531

/-- `∑[A137584(n)]+1` -/
def P8548411543251458111.Spec : Prop :=
  ∀ n, P8548411543251458111.a n = A137531 n

end A137531

/-! ## A137531.P14617153319841040310

`∑[∑[∑[A159347(n)]]]`
-/

namespace A137531.P14617153319841040310
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137531.P14617153319841040310

namespace A137531

/-- `∑[∑[∑[A159347(n)]]]` -/
def P14617153319841040310.Spec : Prop :=
  ∀ n, P14617153319841040310.a n = A137531 n

end A137531

/-! ## A137531.P17860527980000096803

`A007307(3*(n+1))`
-/

namespace A137531.P17860527980000096803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (3 * (n + 1))

end

end A137531.P17860527980000096803

namespace A137531

/-- `A007307(3*(n+1))` -/
def P17860527980000096803.Spec : Prop :=
  ∀ n, P17860527980000096803.a n = A137531 n

end A137531

/-! ## A137531.P17545476573037270583

`A097550(n)+Δ[Δ[A034943(n)]]`
-/

namespace A137531.P17545476573037270583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 n + (f1 (n + 1) - f1 n)

end

end A137531.P17545476573037270583

namespace A137531

/-- `A097550(n)+Δ[Δ[A034943(n)]]` -/
def P17545476573037270583.Spec : Prop :=
  ∀ n, P17545476573037270583.a n = A137531 n

end A137531

/-! ## A137531.P13653489205448414433

`A181984(n+1)-A034943(n+1)`
-/

namespace A137531.P13653489205448414433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (n + 1) - A034943 (n + 1)

end

end A137531.P13653489205448414433

namespace A137531

/-- `A181984(n+1)-A034943(n+1)` -/
def P13653489205448414433.Spec : Prop :=
  ∀ n, P13653489205448414433.a n = A137531 n

end A137531

/-! ## A137531.P6147590236344640435

`A034943(n+3)-A034943(n+1)`
-/

namespace A137531.P6147590236344640435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 3) - A034943 (n + 1)

end

end A137531.P6147590236344640435

namespace A137531

/-- `A034943(n+3)-A034943(n+1)` -/
def P6147590236344640435.Spec : Prop :=
  ∀ n, P6147590236344640435.a n = A137531 n

end A137531

/-! ## A137531.P4800843949648345514

`A181984(n+1)-A181984(A289207(n+1))`
-/

namespace A137531.P4800843949648345514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (n + 1) - A181984 (A289207 (n + 1)).toNat

end

end A137531.P4800843949648345514

namespace A137531

/-- `A181984(n+1)-A181984(A289207(n+1))` -/
def P4800843949648345514.Spec : Prop :=
  ∀ n, P4800843949648345514.a n = A137531 n

end A137531

/-! ## A137531.P548319607222572212

`A095263(n+1)+A095263(n+1)-A052921(n)`
-/

namespace A137531.P548319607222572212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 1) + (A095263 (n + 1) - A052921 n)

end

end A137531.P548319607222572212

namespace A137531

/-- `A095263(n+1)+A095263(n+1)-A052921(n)` -/
def P548319607222572212.Spec : Prop :=
  ∀ n, P548319607222572212.a n = A137531 n

end A137531

/-! ## A137531.P5095327692635371154

`Δ[A135364(n+1)]`
-/

namespace A137531.P5095327692635371154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137531.P5095327692635371154

namespace A137531

/-- `Δ[A135364(n+1)]` -/
def P5095327692635371154.Spec : Prop :=
  ∀ n, P5095327692635371154.a n = A137531 n

end A137531

/-! ## A137531.P17014075441787564107

`A136305(n)-A159328(n)`
-/

namespace A137531.P17014075441787564107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136305 n - A159328 n

end

end A137531.P17014075441787564107

namespace A137531

/-- `A136305(n)-A159328(n)` -/
def P17014075441787564107.Spec : Prop :=
  ∀ n, P17014075441787564107.a n = A137531 n

end A137531

/-! ## A137531.P623197725128778994

`Δ[A097550(n)]-A034943(n)`
-/

namespace A137531.P623197725128778994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034943 n

end

end A137531.P623197725128778994

namespace A137531

/-- `Δ[A097550(n)]-A034943(n)` -/
def P623197725128778994.Spec : Prop :=
  ∀ n, P623197725128778994.a n = A137531 n

end A137531

/-! ## A137531.P12622963814906762961

`A136302(n+1)-A181984(n)`
-/

namespace A137531.P12622963814906762961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) - A181984 n

end

end A137531.P12622963814906762961

namespace A137531

/-- `A136302(n+1)-A181984(n)` -/
def P12622963814906762961.Spec : Prop :=
  ∀ n, P12622963814906762961.a n = A137531 n

end A137531

/-! ## A137531.P8637154705465288573

`A136305(n)-2*A181984(n)`
-/

namespace A137531.P8637154705465288573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136305 n - 2 * A181984 n

end

end A137531.P8637154705465288573

namespace A137531

/-- `A136305(n)-2*A181984(n)` -/
def P8637154705465288573.Spec : Prop :=
  ∀ n, P8637154705465288573.a n = A137531 n

end A137531

/-! ## A137531.P5033248681501371437

`Δ[A007307(Δ[A002378(n)]+n)]`
-/

namespace A137531.P5033248681501371437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137531.P5033248681501371437

namespace A137531

/-- `Δ[A007307(Δ[A002378(n)]+n)]` -/
def P5033248681501371437.Spec : Prop :=
  ∀ n, P5033248681501371437.a n = A137531 n

end A137531

/-! ## A137531.P13346097660664780297

`Δ[A007307(Δ[A014206(n)]+n)]`
-/

namespace A137531.P13346097660664780297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137531.P13346097660664780297

namespace A137531

/-- `Δ[A007307(Δ[A014206(n)]+n)]` -/
def P13346097660664780297.Spec : Prop :=
  ∀ n, P13346097660664780297.a n = A137531 n

end A137531

/-! ## A137531.P1320322975274160009

`Δ[A181984(n)+A034943(n+1)]`
-/

namespace A137531.P1320322975274160009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A034943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137531.P1320322975274160009

namespace A137531

/-- `Δ[A181984(n)+A034943(n+1)]` -/
def P1320322975274160009.Spec : Prop :=
  ∀ n, P1320322975274160009.a n = A137531 n

end A137531

/-!
# A137534: Number of permutations in S_n avoiding 352{bar 4}1 (i.e., every occurrence of 3521 is contained in an occurrence of a 35241).

The programs for A137534, there is no canonical definition to state claims against.
-/

/-! ## A137534.P13147709922256885957

`A117106(n)+A093488(A190661(n))`
-/

namespace A137534.P13147709922256885957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117106 n + A093488 (A190661 n).toNat

end

end A137534.P13147709922256885957

/-! ## A137534.P15575094626518223058

`A117106(n)+A010051(A116316(n+1))`
-/

namespace A137534.P15575094626518223058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117106 n + A010051 (A116316 (n + 1)).toNat

end

end A137534.P15575094626518223058

/-! ## A137534.P3405592075836985133

`A117106(n)+A046080(A117157(n+1))`
-/

namespace A137534.P3405592075836985133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117106 n + A046080 (A117157 (n + 1)).toNat

end

end A137534.P3405592075836985133

/-! ## A137534.P863518762167480894

`A117130(A241458(n+1))+A117106(n)`
-/

namespace A137534.P863518762167480894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117130 (A241458 (n + 1)).toNat + A117106 n

end

end A137534.P863518762167480894

/-!
# A137535: Number of permutations in S_n avoiding 1{bar 4}235 (i.e., every occurrence of 1235 is contained in an occurrence of a 14235).

The programs for A137535, there is no canonical definition to state claims against.
-/

/-! ## A137535.P8342150097136204120

`A004277(A137536(n))-A137541(n)`
-/

namespace A137535.P8342150097136204120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A137536 n).toNat - A137541 n

end

end A137535.P8342150097136204120

/-!
# A137536: Number of permutations in S_n avoiding {bar 4}2153 (i.e., every occurrence of 2153 is contained in an occurrence of a 42153).

The programs for A137536, there is no canonical definition to state claims against.
-/

/-! ## A137536.P15780372502194846795

`A004277(A137537(n))-A137538(n)`
-/

namespace A137536.P15780372502194846795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A137537 n).toNat - A137538 n

end

end A137536.P15780372502194846795

/-! ## A137536.P11011508242139280885

`A137537(n)-A185238(A000642(n+1))`
-/

namespace A137536.P11011508242139280885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137537 n - A185238 (A000642 (n + 1)).toNat

end

end A137536.P11011508242139280885

/-! ## A137536.P4903158409360821756

`A137537(n)-A184963(A034348(n+1))`
-/

namespace A137536.P4903158409360821756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137537 n - A184963 (A034348 (n + 1)).toNat

end

end A137536.P4903158409360821756

/-! ## A137536.P13865057519129171209

`A137537(n)-A185238(A000147(n+3))`
-/

namespace A137536.P13865057519129171209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137537 n - A185238 (A000147 (n + 3)).toNat

end

end A137536.P13865057519129171209

/-!
# A137537: Number of permutations in S_n avoiding 5134{bar 2} (i.e., every occurrence of 5134 is contained in an occurrence of a 51342).

The programs for A137537, there is no canonical definition to state claims against.
-/

/-! ## A137537.P3880645921156041432

`A137536(n)+A103675(A000142(n))`
-/

namespace A137537.P3880645921156041432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137536 n + A103675 (A000142 n).toNat

end

end A137537.P3880645921156041432

/-! ## A137537.P5278116744347716201

`A262028(A026595(n))+A137536(n)`
-/

namespace A137537.P5278116744347716201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262028 (A026595 n).toNat + A137536 n

end

end A137537.P5278116744347716201

/-! ## A137537.P13570674189547962246

`A359100(A137536(n))+A308927(n)`
-/

namespace A137537.P13570674189547962246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359100 (A137536 n).toNat + A308927 n

end

end A137537.P13570674189547962246

/-! ## A137537.P18268247429431301912

`A355447(A367259(n))+A137536(n)`
-/

namespace A137537.P18268247429431301912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (A367259 n).toNat + A137536 n

end

end A137537.P18268247429431301912

/-!
# A137538: Number of permutations in S_n avoiding 25{bar 1}34 (i.e., every occurrence of 2534 is contained in an occurrence of a 25134).

The programs for A137538, there is no canonical definition to state claims against.
-/

/-! ## A137538.P11775422971797694505

`A269249(A137534(n))+A137536(n)`
-/

namespace A137538.P11775422971797694505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269249 (A137534 n).toNat + A137536 n

end

end A137538.P11775422971797694505

/-! ## A137538.P13773275806066879918

`A288257(A137537(n))+A137537(n)`
-/

namespace A137538.P13773275806066879918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (A137537 n).toNat + A137537 n

end

end A137538.P13773275806066879918

/-! ## A137538.P18422025010926736886

`A289439(A137539(n)+A137537(n))`
-/

namespace A137538.P18422025010926736886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A137539 n + A137537 n).toNat

end

end A137538.P18422025010926736886

/-! ## A137538.P7355510503437499157

`A137539(n)-A085982(A005388(n))`
-/

namespace A137538.P7355510503437499157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137539 n - A085982 (A005388 n).toNat

end

end A137538.P7355510503437499157

/-!
# A137539: Number of permutations in S_n avoiding 1{bar 5}324 (i.e., every occurrence of 1324 is contained in an occurrence of a 15324).

The programs for A137539, there is no canonical definition to state claims against.
-/

/-! ## A137539.P7095163081629036693

`A137537(n)+A093569(A137542(n))`
-/

namespace A137539.P7095163081629036693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137537 n + A093569 (A137542 n).toNat

end

end A137539.P7095163081629036693

/-! ## A137539.P6529727707902049705

`A137537(n)+A093569(A137545(n))`
-/

namespace A137539.P6529727707902049705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137537 n + A093569 (A137545 n).toNat

end

end A137539.P6529727707902049705

/-! ## A137539.P1801780503443158487

`A137538(n)+A101605(A137538(n))`
-/

namespace A137539.P1801780503443158487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137538 n + A101605 (A137538 n).toNat

end

end A137539.P1801780503443158487

/-! ## A137539.P17441053256275629221

`A249817(A137538(n))+A011719(n)`
-/

namespace A137539.P17441053256275629221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A137538 n).toNat + A011719 n

end

end A137539.P17441053256275629221

/-!
# A137540: Number of permutations in S_n avoiding {bar 4}1253 (i.e., every occurrence of 1253 is contained in an occurrence of a 41253).

The programs for A137540, there is no canonical definition to state claims against.
-/

/-! ## A137540.P8136063963123398529

`A028310(A137541(n)-A002882(n))`
-/

namespace A137540.P8136063963123398529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A137541 n - A002882 n).toNat

end

end A137540.P8136063963123398529

/-! ## A137540.P890717601848268052

`A137541(n)-A184963(A034348(n+1))`
-/

namespace A137540.P890717601848268052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137541 n - A184963 (A034348 (n + 1)).toNat

end

end A137540.P890717601848268052

/-! ## A137540.P18309177719593223795

`A137541(n)-A373372(A240841(3*(n+1)))`
-/

namespace A137540.P18309177719593223795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137541 n - A373372 (A240841 (3 * (n + 1))).toNat

end

end A137540.P18309177719593223795

/-! ## A137540.P2065262989074222195

`A137541(n)-A117943(A362641(3*n+5))`
-/

namespace A137540.P2065262989074222195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137541 n - A117943 (A362641 (3 * n + 5)).toNat

end

end A137540.P2065262989074222195

/-!
# A137541: Number of permutations in S_n avoiding 1{bar 5}234 (i.e., every occurrence of 1234 is contained in an occurrence of a 15234).

The programs for A137541, there is no canonical definition to state claims against.
-/

/-! ## A137541.P15079309756536535018

`A240467(A001764(n))+A137540(n)`
-/

namespace A137541.P15079309756536535018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A001764 n).toNat + A137540 n

end

end A137541.P15079309756536535018

/-! ## A137541.P4421820986983071567

`or(A137540(n), A238130(A002534(n)))`
-/

namespace A137541.P4421820986983071567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137540 n) (A238130 (A002534 n).toNat)

end

end A137541.P4421820986983071567

/-! ## A137541.P1137879628299437793

`A284075(n+1)+A137540(A303166(n+1))`
-/

namespace A137541.P1137879628299437793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (n + 1) + A137540 (A303166 (n + 1)).toNat

end

end A137541.P1137879628299437793

/-!
# A137542: Number of permutations in S_n avoiding {bar 1}3425 (i.e., every occurrence of 3425 is contained in an occurrence of a 13425).

The programs for A137542, there is no canonical definition to state claims against.
-/

/-! ## A137542.P9158031147198580160

`A004277(A137543(n))-A137546(n)`
-/

namespace A137542.P9158031147198580160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A137543 n).toNat - A137546 n

end

end A137542.P9158031147198580160

/-! ## A137542.P3615744180307282590

`A137541(n^((n+1)/∏{p}[n+1, gcd(n+1, #²)]))`
-/

namespace A137542.P3615744180307282590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137541 (SequenceMachineLib.roundAway ((n : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ) : ℝ))).toNat

end

end A137542.P3615744180307282590

/-! ## A137542.P17861305795938850266

`A137540(n^A010048(n))`
-/

namespace A137542.P17861305795938850266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137540 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A010048 n : ℤ))).toNat

end

end A137542.P17861305795938850266

/-!
# A137543: Number of permutations in S_n avoiding {bar 1}3245 (i.e., every occurrence of 3245 is contained in an occurrence of a 13245).

The programs for A137543, there is no canonical definition to state claims against.
-/

/-! ## A137543.P2387634527456462827

`A137544(n)-A184955(2*n+1)`
-/

namespace A137543.P2387634527456462827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137544 n - A184955 (2 * n + 1)

end

end A137543.P2387634527456462827

/-! ## A137543.P3342633533511874721

`A032742(A137546(n)+A137542(n))`
-/

namespace A137543.P3342633533511874721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A137546 n + A137542 n).toNat

end

end A137543.P3342633533511874721

/-! ## A137543.P4568792200098531062

`A137544(n)-A137579(A324166(n))`
-/

namespace A137543.P4568792200098531062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137544 n - A137579 (A324166 n).toNat

end

end A137543.P4568792200098531062

/-!
# A137544: Number of permutations in S_n avoiding {bar 5}1342 (i.e., every occurrence of 1342 is contained in an occurrence of a 51342).

The programs for A137544, there is no canonical definition to state claims against.
-/

/-! ## A137544.P17675588863020136538

`A184955(2*n+1)+A137543(n)`
-/

namespace A137544.P17675588863020136538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (2 * n + 1) + A137543 n

end

end A137544.P17675588863020136538

/-!
# A137545: Number of permutations in S_n avoiding {bar 5}2143 (i.e., every occurrence of 2143 is contained in an occurrence of a 52143).

The programs for A137545, there is no canonical definition to state claims against.
-/

/-! ## A137545.P17345774993858914023

`A137547(n)-A184955(2*n+1)`
-/

namespace A137545.P17345774993858914023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137547 n - A184955 (2 * n + 1)

end

end A137545.P17345774993858914023

/-! ## A137545.P3414100008856978026

`A137546(n)-A185284(A004148(n))`
-/

namespace A137545.P3414100008856978026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137546 n - A185284 (A004148 n).toNat

end

end A137545.P3414100008856978026

/-! ## A137545.P4505619498814098167

`A053165(A137546(n)-A330549(n))`
-/

namespace A137545.P4505619498814098167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A137546 n - A330549 n).toNat

end

end A137545.P4505619498814098167

/-! ## A137545.P12119857846003801721

`A137547(n)-A137579(A324166(n))`
-/

namespace A137545.P12119857846003801721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137547 n - A137579 (A324166 n).toNat

end

end A137545.P12119857846003801721

/-!
# A137546: Number of permutations in S_n avoiding 5234{bar 1} (i.e., every occurrence of 5234 is contained in an occurrence of a 52341).

The programs for A137546, there is no canonical definition to state claims against.
-/

/-! ## A137546.P11816895245332153894

`A137545(n)+A085982(A005388(n))`
-/

namespace A137546.P11816895245332153894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137545 n + A085982 (A005388 n).toNat

end

end A137546.P11816895245332153894

/-! ## A137546.P404166806269138643

`A226464(A302995(n))+A137545(n)`
-/

namespace A137546.P404166806269138643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (A302995 n).toNat + A137545 n

end

end A137546.P404166806269138643

/-! ## A137546.P14204408359509420439

`A137545(n)+A085982(A057711(n+4))`
-/

namespace A137546.P14204408359509420439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137545 n + A085982 (A057711 (n + 4)).toNat

end

end A137546.P14204408359509420439

/-! ## A137546.P16003165298162185701

`A226464(A014382(2*n))+A137545(n)`
-/

namespace A137546.P16003165298162185701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (A014382 (2 * n)).toNat + A137545 n

end

end A137546.P16003165298162185701

/-!
# A137547: Number of permutations in S_n avoiding {bar 5}1243 (i.e., every occurrence of 1243 is contained in an occurrence of a 51243).

The programs for A137547, there is no canonical definition to state claims against.
-/

/-! ## A137547.P15515349052731178459

`A184955(2*n+1)+A137545(n)`
-/

namespace A137547.P15515349052731178459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (2 * n + 1) + A137545 n

end

end A137547.P15515349052731178459

/-! ## A137547.P11872111145742616386

`A004526(A137548(n)+A137546(n))`
-/

namespace A137547.P11872111145742616386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A137548 n + A137546 n).toNat

end

end A137547.P11872111145742616386

/-! ## A137547.P8125600480529022701

`A137545(n)+A006822(A329430(n))`
-/

namespace A137547.P8125600480529022701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137545 n + A006822 (A329430 n).toNat

end

end A137547.P8125600480529022701

/-! ## A137547.P1448797387600392991

`A289440(A137548(n)+A137546(n))`
-/

namespace A137547.P1448797387600392991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A137548 n + A137546 n).toNat

end

end A137547.P1448797387600392991

/-!
# A137548: Number of permutations in S_n avoiding {bar 5}1234 (i.e., every occurrence of 1234 is contained in an occurrence of a 51234).

The programs for A137548, there is no canonical definition to state claims against.
-/

/-! ## A137548.P4379936759282319381

`A004277(A137547(n))-A137546(n)`
-/

namespace A137548.P4379936759282319381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A137547 n).toNat - A137546 n

end

end A137548.P4379936759282319381

/-! ## A137548.P4401517757129617174

`A028310(A137545(n))+A000579(A000579(n))`
-/

namespace A137548.P4401517757129617174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A137545 n).toNat + A000579 (A000579 n).toNat

end

end A137548.P4401517757129617174

/-!
# A137549: Number of permutations in S_n avoiding 5{bar 1}{bar 2}43 (i.e., every occurrence of 543 is contained in an occurrence of a 51243).

The programs for A137549, there is no canonical definition to state claims against.
-/

/-! ## A137549.P3878175921881758850

`A202060(n)+A185284(A119911(n+1))`
-/

namespace A137549.P3878175921881758850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202060 n + A185284 (A119911 (n + 1)).toNat

end

end A137549.P3878175921881758850

/-! ## A137549.P15175038330142128819

`A202060(n)+A185284(A007494(3*n))`
-/

namespace A137549.P15175038330142128819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202060 n + A185284 (A007494 (3 * n)).toNat

end

end A137549.P15175038330142128819

/-! ## A137549.P13926924909725532725

`or(∏{p}[A249562(n)², #], A202060(n))`
-/

namespace A137549.P13926924909725532725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249562 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (A202060 n)

end

end A137549.P13926924909725532725

/-! ## A137549.P5655051046220138990

`A122841(A051249(n))+A006789(n)`
-/

namespace A137549.P5655051046220138990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A051249 n).toNat + A006789 n

end

end A137549.P5655051046220138990

/-!
# A137551: Number of permutations in S_n avoiding {bar 2}413{bar 5} (i.e., every occurrence of 413 is contained in an occurrence of a 24135).

The programs for A137551, there is no canonical definition to state claims against.
-/

/-! ## A137551.P151769886205960497

`A225545(A363555(n))`
-/

namespace A137551.P151769886205960497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A363555 n).toNat

end

end A137551.P151769886205960497

/-! ## A137551.P18050664647608378202

`A173453(A240444(n+1))+A173437(n+1)`
-/

namespace A137551.P18050664647608378202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173453 (A240444 (n + 1)).toNat + A173437 (n + 1)

end

end A137551.P18050664647608378202

/-! ## A137551.P1083770123557124978

`A137550(A024640(n))`
-/

namespace A137551.P1083770123557124978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137550 (A024640 n).toNat

end

end A137551.P1083770123557124978

/-!
# A137552: Number of permutations in S_n avoiding {bar 1}5{bar 2}43 (i.e., every occurrence of 543 is contained in an occurrence of 15243).

The programs for A137552, there is no canonical definition to state claims against.
-/

/-! ## A137552.P8791107829007046851

`A023193(A149466(n))`
-/

namespace A137552.P8791107829007046851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149466 n).toNat

end

end A137552.P8791107829007046851

/-! ## A137552.P4005953861553616977

`A130446(A137550(n))`
-/

namespace A137552.P4005953861553616977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A137550 n).toNat

end

end A137552.P4005953861553616977

/-! ## A137552.P2274255256886756050

`A280951(A187216(n))`
-/

namespace A137552.P2274255256886756050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (A187216 n).toNat

end

end A137552.P2274255256886756050

/-!
# A137553: Number of permutations in S_n avoiding {bar 5}{bar 4}231 (i.e., every occurrence of 231 is contained in an occurrence of a 54231).

The programs for A137553, there is no canonical definition to state claims against.
-/

/-! ## A137553.P6325258696522234063

`A249624(A020126(n))+A000108(n+1)`
-/

namespace A137553.P6325258696522234063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249624 (A020126 n).toNat + A000108 (n + 1)

end

end A137553.P6325258696522234063

/-! ## A137553.P14335457166330664996

`A233249(n+1)+A022290(A177341(n))`
-/

namespace A137553.P14335457166330664996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (n + 1) + A022290 (A177341 n).toNat

end

end A137553.P14335457166330664996

/-! ## A137553.P9458073060125235928

`A108954(A378932(n+1)+A011968(n+2))`
-/

namespace A137553.P9458073060125235928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A378932 (n + 1) + A011968 (n + 2)).toNat

end

end A137553.P9458073060125235928

/-!
# A137554: Number of permutations in S_n avoiding {bar 5}{bar 4}132 (i.e., every occurrence of 132 is contained in an occurrence of a 54132).

The programs for A137554, there is no canonical definition to state claims against.
-/

/-! ## A137554.P4378265831615513412

`A193832(A000698(n))`
-/

namespace A137554.P4378265831615513412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A000698 n).toNat

end

end A137554.P4378265831615513412

/-! ## A137554.P7340886689396150538

`A051889(A149973(n))`
-/

namespace A137554.P7340886689396150538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A149973 n).toNat

end

end A137554.P7340886689396150538

/-! ## A137554.P5625778825351735644

`A148334(A073788(n))`
-/

namespace A137554.P5625778825351735644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148334 (A073788 n).toNat

end

end A137554.P5625778825351735644

/-!
# A137556: Number of permutations in S_n avoiding {bar 1}432{bar 5} (i.e., every occurrence of 432 is contained in an occurrence of a 14325).

The programs for A137556, there is no canonical definition to state claims against.
-/

/-! ## A137556.P5796757406473592767

`A152467(A230620(n))+A000108(n)`
-/

namespace A137556.P5796757406473592767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A230620 n).toNat + A000108 n

end

end A137556.P5796757406473592767

/-! ## A137556.P11844976815884436095

`A023193(A151488(n))`
-/

namespace A137556.P11844976815884436095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A151488 n).toNat

end

end A137556.P11844976815884436095

/-! ## A137556.P9407094874804106081

`A051889(A149974(n))`
-/

namespace A137556.P9407094874804106081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A149974 n).toNat

end

end A137556.P9407094874804106081

/-!
# A137557: Number of permutations in S_n avoiding 345{bar 2}{bar 1} (i.e., every occurrence of 345 is contained in an occurrence of a 34521).

The programs for A137557, there is no canonical definition to state claims against.
-/

/-! ## A137557.P15088081362207071392

`A106432(A149445(n))`
-/

namespace A137557.P15088081362207071392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A149445 n).toNat

end

end A137557.P15088081362207071392

/-! ## A137557.P14431504929042313724

`A106432(A149446(n))`
-/

namespace A137557.P14431504929042313724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A149446 n).toNat

end

end A137557.P14431504929042313724

/-! ## A137557.P10389417510455021443

`A108141(A219231(n))`
-/

namespace A137557.P10389417510455021443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A219231 n).toNat

end

end A137557.P10389417510455021443

/-!
# A137558: A137521(n)/5.

The programs for A137558, the canonical program `A137558.P15771038239932581240` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137558 has offset 1).

The definition of A137558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137521, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137558.P15771038239932581240

`A137521(n+1)/5`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137558

/-- `A137521(n+1)/5` -/
def P15771038239932581240.Spec : Prop :=
  ∀ n, P15771038239932581240.a n = (A137558 (n + 1) : ℚ)

end A137558

/-! ## A137558.P4948949105130682791

`xor(3, 10*(2*p?[abs(xor(n, -2))]+1))`
-/

namespace A137558.P4948949105130682791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (10 * (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1))

end

end A137558.P4948949105130682791

namespace A137558

/-- `xor(3, 10*(2*p?[abs(xor(n, -2))]+1))` -/
def P4948949105130682791.Spec : Prop :=
  ∀ n, P4948949105130682791.a n = A137558 (n + 1)

end A137558

/-! ## A137558.P9202686854312419460

`5*(4*p?[round(8*n/7)]+2)-1`
-/

namespace A137558.P9202686854312419460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2) - 1

end

end A137558.P9202686854312419460

namespace A137558

/-- `5*(4*p?[round(8*n/7)]+2)-1` -/
def P9202686854312419460.Spec : Prop :=
  ∀ n, P9202686854312419460.a n = A137558 (n + 1)

end A137558

/-! ## A137558.P11858604452256433517

`record[20*A162753(n)]+9`
-/

namespace A137558.P11858604452256433517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 9

end

end A137558.P11858604452256433517

namespace A137558

/-- `record[20*A162753(n)]+9` -/
def P11858604452256433517.Spec : Prop :=
  ∀ n, P11858604452256433517.a n = A137558 (n + 1)

end A137558

/-! ## A137558.P8301280940039288174

`2*A142342(n+1)+9`
-/

namespace A137558.P8301280940039288174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A142342 (n + 1) + 9

end

end A137558.P8301280940039288174

namespace A137558

/-- `2*A142342(n+1)+9` -/
def P8301280940039288174.Spec : Prop :=
  ∀ n, P8301280940039288174.a n = A137558 (n + 1)

end A137558

/-!
# A137560: Let f(z) = z^2 + c, then row k lists the expansion of the n-fold composition f(f(...f(0)...)) in rising powers of c.

The programs for A137560, there is no canonical definition to state claims against.
-/

/-! ## A137560.P4906138679881221542

`A327201(xor(2, A327277(n+1)))`
-/

namespace A137560.P4906138679881221542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327201 (Int.xor 2 (A327277 (n + 1))).toNat

end

end A137560.P4906138679881221542

/-! ## A137560.P15563812825510653072

`A327127(xor(7, A327277(n+1)))`
-/

namespace A137560.P15563812825510653072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327127 (Int.xor 7 (A327277 (n + 1))).toNat

end

end A137560.P15563812825510653072

/-! ## A137560.P6451752195627053893

`A330714(A003277(A138882(n+1)²))`
-/

namespace A137560.P6451752195627053893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (A003277 (A138882 (n + 1) ^ 2).toNat).toNat

end

end A137560.P6451752195627053893

/-! ## A137560.P14944093925029283495

`A136868(A138882(n+1))`
-/

namespace A137560.P14944093925029283495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136868 (A138882 (n + 1)).toNat

end

end A137560.P14944093925029283495

/-! ## A137560.P2422596134856490513

`and(A118914((2*n+n+2)*(C(n+3, n+2)+2*n+1)), A352487(n+1))`
-/

namespace A137560.P2422596134856490513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118914 ((2 * n + (n + 2)) * (Nat.choose (n + 3) (n + 2) + (2 * n + 1)))) (A352487 (n + 1))

end

end A137560.P2422596134856490513

/-!
# A137561: A triangular sequence of coefficients of the fixed point Chebyshev polynomials: p(x,n)=T(x,n)-x:A053120[x,n]-x.

The programs for A137561, there is no canonical definition to state claims against.
-/

/-! ## A137561.P12753336906739149538

`A053120(n)-char[∑[n]+1]`
-/

namespace A137561.P12753336906739149538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A137561.P12753336906739149538

/-! ## A137561.P10437395019015292799

`A039991(A061579(n))-char[∑[n]+1]`
-/

namespace A137561.P10437395019015292799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A061579 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A137561.P10437395019015292799

/-! ## A137561.P13980992165182474134

`floor(A139569(n+1)/2)-char[A000124(n)]`
-/

namespace A137561.P13980992165182474134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139569 (n + 1) : ℚ) / 2⌋ - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137561.P13980992165182474134

/-! ## A137561.P633772897640680491

`A137423(n)-A007318(n)-char[∑[n]+1]`
-/

namespace A137561.P633772897640680491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137423 n - A007318 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A137561.P633772897640680491

/-! ## A137561.P12970348689599755013

`floor(A139569(n+1)/2)-char[A152947(n+1)]`
-/

namespace A137561.P12970348689599755013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139569 (n + 1) : ℚ) / 2⌋ - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137561.P12970348689599755013

/-! ## A137561.P4236200684072954444

`A039991(A114327(n)+n)-char[A000124(n)]`
-/

namespace A137561.P4236200684072954444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A114327 n + (n : ℤ)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137561.P4236200684072954444

/-! ## A137561.P15274662383217388338

`A039991(A038722(n+1)-1)-char[A000124(n)]`
-/

namespace A137561.P15274662383217388338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A038722 (n + 1) - 1).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137561.P15274662383217388338

/-! ## A137561.P7142386736311454368

`A039991(A002024(n+1)²-(n+1))-char[A000124(n)]`
-/

namespace A137561.P7142386736311454368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137561.P7142386736311454368

/-!
# A137563: Fibonacci numbers with three distinct prime divisors.

The programs for A137563, there is no canonical definition to state claims against.
-/

/-! ## A137563.P11970608039784067367

`A000045(A114841(n+1))`
-/

namespace A137563.P11970608039784067367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A114841 (n + 1)).toNat

end

end A137563.P11970608039784067367

/-! ## A137563.P3047011702956349715

`A000045(eq[3, A022307(n)])`
-/

namespace A137563.P3047011702956349715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137563.P3047011702956349715

/-! ## A137563.P3516137046868025528

`A020695(A114841(n+1)-3)`
-/

namespace A137563.P3516137046868025528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A114841 (n + 1) - 3).toNat

end

end A137563.P3516137046868025528

/-! ## A137563.P14811303918551431424

`A053602(2*A114841(n+1))`
-/

namespace A137563.P14811303918551431424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A114841 (n + 1)).toNat

end

end A137563.P14811303918551431424

/-! ## A137563.P3692643714308069268

`∑{d}[A114841(n+1), A007436(#)]`
-/

namespace A137563.P3692643714308069268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007436 d

end

end A137563.P3692643714308069268

/-!
# A137564: a(n) is the number formed by removing from n all duplicate digits except the leftmost copy of each.

The programs for A137564, there is no canonical definition to state claims against.
-/

/-! ## A137564.P9248521766257909944

`A118759(A337864(n))`
-/

namespace A137564.P9248521766257909944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A337864 n).toNat

end

end A137564.P9248521766257909944

/-! ## A137564.P2917266598488220428

`A337864(n)%A004009(n²)`
-/

namespace A137564.P2917266598488220428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337864 n) (A004009 (n ^ 2))

end

end A137564.P2917266598488220428

/-! ## A137564.P4371121220878551148

`A337864(n)+A000007(A045918(n))`
-/

namespace A137564.P4371121220878551148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 n + A000007 (A045918 n).toNat

end

end A137564.P4371121220878551148

/-! ## A137564.P10655132707231683702

`A337864(n)+A321537(A051022(n))`
-/

namespace A137564.P10655132707231683702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 n + A321537 (A051022 n).toNat

end

end A137564.P10655132707231683702

/-! ## A137564.P1353038652957875762

`A000196(A337864(n)*A337864(n))`
-/

namespace A137564.P1353038652957875762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A337864 n * A337864 n).toNat

end

end A137564.P1353038652957875762

/-! ## A137564.P13607641026963983239

`lcm(A040001(A000384(n)), A337864(n))`
-/

namespace A137564.P13607641026963983239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 (A000384 n).toNat) (A337864 n)

end

end A137564.P13607641026963983239

/-!
# A137565: Hankel transform of quadruple factorial numbers A001813.

The programs for A137565, there is no canonical definition to state claims against.
-/

/-! ## A137565.P6931055165370126241

`8^C(n+1, 2)*A000178(n)*A057863(n)`
-/

namespace A137565.P6931055165370126241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ Nat.choose (n + 1) 2 : ℤ) * A000178 n * A057863 n

end

end A137565.P6931055165370126241

/-! ## A137565.P3975418805468592410

`∏[4^n*(2*n)!]`
-/

namespace A137565.P3975418805468592410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.factorial (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137565.P3975418805468592410

/-! ## A137565.P10836805539100191242

`∏[record[-(n*a(n-2))]]` with `a(0)=1, a(1)=0`
-/

namespace A137565.P10836805539100191242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  -((n : ℤ) * f2 (n - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137565.P10836805539100191242

/-! ## A137565.P4950741193520048502

`∏[A067624(n)]`
-/

namespace A137565.P4950741193520048502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137565.P4950741193520048502

/-! ## A137565.P9200176531672439069

`∏[∏[A067239(n)]]`
-/

namespace A137565.P9200176531672439069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067239 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137565.P9200176531672439069

/-!
# A137566: Expansion of f(-x, -x^5) / f(-x^6)^2 in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A137566, there is no canonical definition to state claims against.
-/

/-! ## A137566.P1047362062436747933

`-(A033999(n)*A279479(4*n+1))`
-/

namespace A137566.P1047362062436747933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 n * A279479 (4 * n + 1))

end

end A137566.P1047362062436747933

/-! ## A137566.P14122693563435552255

`A033999(n+1)*A279479(4*n+1)`
-/

namespace A137566.P14122693563435552255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A279479 (4 * n + 1)

end

end A137566.P14122693563435552255

/-! ## A137566.P3234693902198133698

`abs(A279479(4*n+1))*A062157(n+1)`
-/

namespace A137566.P3234693902198133698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279479 (4 * n + 1)| * A062157 (n + 1)

end

end A137566.P3234693902198133698

/-! ## A137566.P7260990710883139559

`-(A010892(A008585(n))*A279479(4*n+1))`
-/

namespace A137566.P7260990710883139559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A010892 (A008585 n).toNat * A279479 (4 * n + 1))

end

end A137566.P7260990710883139559

/-!
# A137567: Number of chromatically nonunique simple graphs on n nodes.

The programs for A137567, there is no canonical definition to state claims against.
-/

/-! ## A137567.P17391099475792111616

`A000088(n+1)-A137568(n+1)`
-/

namespace A137567.P17391099475792111616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A137568 (n + 1)

end

end A137567.P17391099475792111616

/-! ## A137567.P14746147372832251956

`Δ[A006897(n)]-A137568(n+1)`
-/

namespace A137567.P14746147372832251956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A137568 (n + 1)

end

end A137567.P14746147372832251956

/-! ## A137567.P12097387826347515399

`record[A327805(n)]-A137568(n+1)`
-/

namespace A137567.P12097387826347515399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A137568 (n + 1)

end

end A137567.P12097387826347515399

/-!
# A137568: Number of chromatically unique simple graphs on n nodes.

The programs for A137568, there is no canonical definition to state claims against.
-/

/-! ## A137568.P18107556514879149758

`A000088(n+1)-A137567(n+1)`
-/

namespace A137568.P18107556514879149758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A137567 (n + 1)

end

end A137568.P18107556514879149758

/-! ## A137568.P1835019352208053672

`Δ[A006897(n)]-A137567(n+1)`
-/

namespace A137568.P1835019352208053672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A137567 (n + 1)

end

end A137568.P1835019352208053672

/-! ## A137568.P2493792587561645032

`record[A327805(n)]-A137567(n+1)`
-/

namespace A137568.P2493792587561645032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A137567 (n + 1)

end

end A137568.P2493792587561645032

/-!
# A137569: Expansion of f(-x) / f(-x^3) in powers of x where f() is a Ramanujan theta function.

The programs for A137569, there is no canonical definition to state claims against.
-/

/-! ## A137569.P4428830444217678174

`xor(A094363(n+1), A137579(A045674(n)))`
-/

namespace A137569.P4428830444217678174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A094363 (n + 1)) (A137579 (A045674 n).toNat)

end

end A137569.P4428830444217678174

/-! ## A137569.P6827483477196381117

`A094363(n+1)-A185063(A043319(n+1))`
-/

namespace A137569.P6827483477196381117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094363 (n + 1) - A185063 (A043319 (n + 1)).toNat

end

end A137569.P6827483477196381117

/-! ## A137569.P6318434733203077788

`A094363(n+1)-A137579(A185037(2*n))`
-/

namespace A137569.P6318434733203077788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094363 (n + 1) - A137579 (A185037 (2 * n)).toNat

end

end A137569.P6318434733203077788

/-!
# A137570: Square array, read by antidiagonals, where row n+1 equals the partial sums of the previous row after removing the terms in positions {n, n+1} from row n for n>=0, with row 0 equal to all 1's.

The programs for A137570, there is no canonical definition to state claims against.
-/

/-! ## A137570.P1149740360796356866

`A211449(A347811(n))+A007318(n)`
-/

namespace A137570.P1149740360796356866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211449 (A347811 n).toNat + A007318 n

end

end A137570.P1149740360796356866

/-! ## A137570.P232379297166023090

`A304038(A263159(n))+A077028(n)`
-/

namespace A137570.P232379297166023090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304038 (A263159 n).toNat + A077028 n

end

end A137570.P232379297166023090

/-! ## A137570.P7270684382655963457

`A304038(A263159(n))+A196416(n)`
-/

namespace A137570.P7270684382655963457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304038 (A263159 n).toNat + A196416 n

end

end A137570.P7270684382655963457

/-! ## A137570.P194407101584069663

`A275892(or(A008459(n), A028572(n)))`
-/

namespace A137570.P194407101584069663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275892 (Int.lor (A008459 n) (A028572 n)).toNat

end

end A137570.P194407101584069663

/-! ## A137570.P13349337837201414710

`A125749(A110112(n))`
-/

namespace A137570.P13349337837201414710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125749 (A110112 n).toNat

end

end A137570.P13349337837201414710

/-!
# A137571: Main diagonal of square array A137570.

The programs for A137571, there is no canonical definition to state claims against.
-/

/-! ## A137571.P4606776163700434030

`A137570(∑[4*n])`
-/

namespace A137571.P4606776163700434030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137571.P4606776163700434030

/-! ## A137571.P15137700629709363743

`record[A137570(∑[A071045(n)])]`
-/

namespace A137571.P15137700629709363743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137570 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137571.P15137700629709363743

/-!
# A137572: The first upper diagonal of square array A137570; equals the convolution of the main diagonal A137571 with A002293.

The programs for A137572, there is no canonical definition to state claims against.
-/

/-! ## A137572.P17735568732360480891

`A137570(2*(n+1)²)`
-/

namespace A137572.P17735568732360480891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137570 (2 * (n + 1) ^ 2)

end

end A137572.P17735568732360480891

/-! ## A137572.P12189890862354820302

`record[A137570(∑[A014682(n)])]`
-/

namespace A137572.P12189890862354820302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137570 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137572.P12189890862354820302

/-!
# A137573: The first lower diagonal in square array A137570; equals the convolution of the main diagonal A137571 with the Catalan numbers (A000108) and with the square of A002293.

The programs for A137573, there is no canonical definition to state claims against.
-/

/-! ## A137573.P16926335519628902742

`A137570(Δ[n²]+∑[4*n])`
-/

namespace A137573.P16926335519628902742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137570 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A137573.P16926335519628902742

/-! ## A137573.P1864591515281286109

`record[A137570(A342354(n))]`
-/

namespace A137573.P1864591515281286109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137570 (A342354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137573.P1864591515281286109

/-!
# A137574: Fibonacci numbers and their distinct prime divisors having the same number of decimal digits.

The programs for A137574, there is no canonical definition to state claims against.
-/

/-! ## A137574.P2161771746773741302

`∩[A020695(n), A095410(n+1)]`
-/

namespace A137574.P2161771746773741302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137574.P2161771746773741302

/-! ## A137574.P15294879776167350622

`∩[A073958(n+1), A095410(n+1)]`
-/

namespace A137574.P15294879776167350622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137574.P15294879776167350622

/-! ## A137574.P1156215958207592375

`∩[A074317(n+1), A095410(n+1)]`
-/

namespace A137574.P1156215958207592375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137574.P1156215958207592375

/-! ## A137574.P1888271521780087450

`record[A335791(A020695(n))]`
-/

namespace A137574.P1888271521780087450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335791 (A020695 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137574.P1888271521780087450

/-! ## A137574.P17024748708620958270

`A246104(A287025(n+1))`
-/

namespace A137574.P17024748708620958270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (A287025 (n + 1)).toNat

end

end A137574.P17024748708620958270

/-!
# A137575: Successive structures central number of Seaborg's periodic table of the elements (extended to 32 columns) for odd rows.

The programs for A137575, there is no canonical definition to state claims against.
-/

/-! ## A137575.P16084124740205866987

`2*∑[char[∑[2*n²]]]²-floor(acot(n))`
-/

namespace A137575.P16084124740205866987
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A137575.P16084124740205866987

/-! ## A137575.P8985354996074735780

`ceil(2*∑[char[∑[2*n²]]]²-acot(n))`
-/

namespace A137575.P8985354996074735780
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A137575.P8985354996074735780

/-! ## A137575.P16443352637897719403

`2*∑[char[∑[2*n²]]]²/ceil(acot(n))`
-/

namespace A137575.P16443352637897719403
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A137575.P16443352637897719403

/-! ## A137575.P11088958012306529244

`gcd(2*∑[char[∑[2*n²]]]², floor(acot(n)))`
-/

namespace A137575.P11088958012306529244
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A137575.P11088958012306529244

/-! ## A137575.P6105283259690815414

`(2*∑[char[∑[2*n²]]]²)^ceil(n/98)`
-/

namespace A137575.P6105283259690815414
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A137575.P6105283259690815414

/-! ## A137575.P3806270709800273657

`C(2*∑[char[∑[2*n²]]]², ceil(sin(n)²))`
-/

namespace A137575.P3806270709800273657
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ⌈Real.sin (n : ℝ) ^ 2⌉.toNat

end

end A137575.P3806270709800273657

/-! ## A137575.P7369273794056759392

`2*∑[char[∑[2*n²]]]²-C(2, n+2)`
-/

namespace A137575.P7369273794056759392
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

end

end A137575.P7369273794056759392

/-! ## A137575.P17532424598348432468

`gcd(floor(acot(n)), A138102(n+1))`
-/

namespace A137575.P17532424598348432468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A138102 (n + 1))

end

end A137575.P17532424598348432468

/-! ## A137575.P17620231830982991251

`A137904(n)-A137937(n)`
-/

namespace A137575.P17620231830982991251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137904 n - A137937 n

end

end A137575.P17620231830982991251

/-! ## A137575.P5131884094664768899

`A138102(n+1)-A000007(n)`
-/

namespace A137575.P5131884094664768899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138102 (n + 1) - A000007 n

end

end A137575.P5131884094664768899

/-!
# A137576: a(n) = A002326(n) * A006694(n) + 1.

The programs for A137576, there is no canonical definition to state claims against.
-/

/-! ## A137576.P13417738279524266796

`A002326(n)*A006694(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137576.P13417738279524266796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n * A006694 n + 1

end

end A137576.P13417738279524266796

/-! ## A137576.P18118310903616903674

`A000265((A081844(n)-1)*A002326(n)+1)`
-/

namespace A137576.P18118310903616903674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((A081844 n - 1) * A002326 n + 1).toNat

end

end A137576.P18118310903616903674

/-! ## A137576.P3346432884943576079

`A000265((A327551(n+1)-2)*A002326(n)+1)`
-/

namespace A137576.P3346432884943576079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((A327551 (n + 1) - 2) * A002326 n + 1).toNat

end

end A137576.P3346432884943576079

/-! ## A137576.P10164259961569236173

`A006694(n)*A007733(2*n+1)+1`
-/

namespace A137576.P10164259961569236173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n * A007733 (2 * n + 1) + 1

end

end A137576.P10164259961569236173

/-! ## A137576.P11814066666938642399

`(A081844(n)-1)*A007733(2*n+1)%A016777(n+1)+1`
-/

namespace A137576.P11814066666938642399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081844 n - 1) * Int.tmod (A007733 (2 * n + 1)) (A016777 (n + 1)) + 1

end

end A137576.P11814066666938642399

/-! ## A137576.P17358084381595662994

`(A081844(n)-1)*A004525(2*A007733(2*n+1))+1`
-/

namespace A137576.P17358084381595662994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081844 n - 1) * A004525 (2 * A007733 (2 * n + 1)).toNat + 1

end

end A137576.P17358084381595662994

/-! ## A137576.P9732672827757369035

`A004442(A002326(n)*A006694(n))`
-/

namespace A137576.P9732672827757369035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A002326 n * A006694 n).toNat

end

end A137576.P9732672827757369035

/-! ## A137576.P14990598067282639987

`A079097(A002326(n)*A006694(n))`
-/

namespace A137576.P14990598067282639987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (A002326 n * A006694 n).toNat

end

end A137576.P14990598067282639987

/-! ## A137576.P11509889512603002525

`A109613(A002326(n)*A006694(n))`
-/

namespace A137576.P11509889512603002525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A002326 n * A006694 n).toNat

end

end A137576.P11509889512603002525

/-! ## A137576.P10839701388739107882

`(A081844(n)-1)*log2(A352217(n+1))+1`
-/

namespace A137576.P10839701388739107882
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A081844 n - 1 : ℝ) * Real.logb 2 (A352217 (n + 1) : ℝ) + 1

end

end A137576.P10839701388739107882

/-!
# A137578: Smallest of the least frequent digits in decimal representation of n!.

The programs for A137578, there is no canonical definition to state claims against.
-/

/-! ## A137578.P8572822176426948882

`A392010(n)%A373557(A160761(2*n+3))`
-/

namespace A137578.P8572822176426948882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392010 n) (A373557 (A160761 (2 * n + 3)).toNat)

end

end A137578.P8572822176426948882

/-! ## A137578.P6886798824858048539

`A392010(n)%A278447(n+1)`
-/

namespace A137578.P6886798824858048539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392010 n) (A278447 (n + 1))

end

end A137578.P6886798824858048539

/-! ## A137578.P14929112808236150114

`A392010(n)+A381036(A027423(n))`
-/

namespace A137578.P14929112808236150114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392010 n + A381036 (A027423 n).toNat

end

end A137578.P14929112808236150114

/-! ## A137578.P10411703941946722346

`A392010(n)+A392000(A275870(n+1))`
-/

namespace A137578.P10411703941946722346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392010 n + A392000 (A275870 (n + 1)).toNat

end

end A137578.P10411703941946722346

/-! ## A137578.P13926712109527286354

`A091325(A036040(n+1))*A392010(n)`
-/

namespace A137578.P13926712109527286354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091325 (A036040 (n + 1)).toNat * A392010 n

end

end A137578.P13926712109527286354

/-!
# A137579: Frequency of occurrence of the least frequent digits of decimal representation of n!.

The programs for A137579, there is no canonical definition to state claims against.
-/

/-! ## A137579.P11342279999607688899

`and(A006983(A115319(n+1)), A288699(n))`
-/

namespace A137579.P11342279999607688899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006983 (A115319 (n + 1)).toNat) (A288699 n)

end

end A137579.P11342279999607688899

/-! ## A137579.P17693385451260516871

`A023443(A027965(n+2))%A027957(floor(n/10))`
-/

namespace A137579.P17693385451260516871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A027965 (n + 2)).toNat) (A027957 ⌊(n : ℚ) / 10⌋.toNat)

end

end A137579.P17693385451260516871

/-! ## A137579.P12068185610973977566

`(5*n)%A061342(A133500(n+1))`
-/

namespace A137579.P12068185610973977566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * n : ℤ) (A061342 (A133500 (n + 1)).toNat)

end

end A137579.P12068185610973977566

/-! ## A137579.P13071535184117220010

`A036487(n)%A000119(A224850(n+1))`
-/

namespace A137579.P13071535184117220010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036487 n) (A000119 (A224850 (n + 1)).toNat)

end

end A137579.P13071535184117220010

/-! ## A137579.P8083254386223603737

`A185316(n)%A185317(A026801(n+1))`
-/

namespace A137579.P8083254386223603737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185316 n) (A185317 (A026801 (n + 1)).toNat)

end

end A137579.P8083254386223603737

/-!
# A137581: Number of inner zeros in decimal representation of n!.

The programs for A137581, there is no canonical definition to state claims against.
-/

/-! ## A137581.P7308289909796079412

`A027869(n)-A027868(n)`
-/

namespace A137581.P7308289909796079412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027869 n - A027868 n

end

end A137581.P7308289909796079412

/-! ## A137581.P3999035003327759846

`A027869(n)-A191610(n+1)+n`
-/

namespace A137581.P3999035003327759846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027869 n - A191610 (n + 1) + (n : ℤ)

end

end A137581.P3999035003327759846

/-! ## A137581.P11089345887011005009

`A112765(n+1)+A027869(n)-∑[A112765(n+1)]`
-/

namespace A137581.P11089345887011005009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 1) + (A027869 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137581.P11089345887011005009

/-! ## A137581.P15817784530814122167

`A008906(n)-A356758(n)`
-/

namespace A137581.P15817784530814122167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008906 n - A356758 n

end

end A137581.P15817784530814122167

/-! ## A137581.P158483745884839362

`A008906(n)+A027869(n)-A034886(n)`
-/

namespace A137581.P158483745884839362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008906 n + (A027869 n - A034886 n)

end

end A137581.P158483745884839362

/-! ## A137581.P1738059641246147527

`A027869(n)+A008683(A067367(n+1))*A027868(n)`
-/

namespace A137581.P1738059641246147527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027869 n + A008683 (A067367 (n + 1)).toNat * A027868 n

end

end A137581.P1738059641246147527

/-! ## A137581.P15478242461046725048

`(A137577(n)+A027869(n))%(A137577(n)+A027868(n))`
-/

namespace A137581.P15478242461046725048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137577 n + A027869 n) (A137577 n + A027868 n)

end

end A137581.P15478242461046725048

/-!
# A137582: Numbers having no inner zeros in decimal representation of their factorial.

The programs for A137582, there is no canonical definition to state claims against.
-/

/-! ## A137582.P9424018341929445481

`lt[0, ∏{digits}[3-n!, #]]`
-/

namespace A137582.P9424018341929445481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.factorial n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137582.P9424018341929445481

/-! ## A137582.P8761992177918810822

`eq[0, A137581(n)]`
-/

namespace A137582.P8761992177918810822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137582.P8761992177918810822

/-! ## A137582.P4074997462689914322

`lt[A027869(n), a(n-1)+val(n, 5)]` with `a(0)=1`
-/

namespace A137582.P4074997462689914322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027869 n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + SequenceMachineLib.valuation n 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A137582.P4074997462689914322

/-! ## A137582.P14747060287092725963

`lt[A137581(A028310(n)), 1]`
-/

namespace A137582.P14747060287092725963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137581 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A137582.P14747060287092725963

/-! ## A137582.P977270706551085536

`A106614(lt[A137581(n), 1])`
-/

namespace A137582.P977270706551085536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137581 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A137582.P977270706551085536

/-!
# A137584: a(n) = 3*a(n-1) - 2*a(n-2) + a(n-3), n > 3.

The programs for A137584, the canonical program `A137584.P12189240112993728314` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137584 has offset 0).

The definition of A137584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)+a(n-3)` (program `A137584.P12189240112993728314`, by `A137584.P12189240112993728314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137584.P12189240112993728314

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=13`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137584

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P12189240112993728314.Spec : Prop :=
  ∀ n, P12189240112993728314.a n = A137584 n

theorem P12189240112993728314.correct : P12189240112993728314.Spec := by
  intro n
  simp only [A137584]

end A137584

/-! ## A137584.P5020919888494437934

`ogf((3x-3x^2+x^3)/(1-3x+2x^2-x^3))`
-/

namespace A137584.P5020919888494437934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -3, 1] [1, -3, 2, -1] n

end

end A137584.P5020919888494437934

namespace A137584

/-- `ogf((3x-3x^2+x^3)/(1-3x+2x^2-x^3))` -/
def P5020919888494437934.Spec : Prop :=
  ∀ n, P5020919888494437934.a n = A137584 n

end A137584

/-! ## A137584.P7717985548181160714

`Δ[A159347(n+1)]`
-/

namespace A137584.P7717985548181160714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137584.P7717985548181160714

namespace A137584

/-- `Δ[A159347(n+1)]` -/
def P7717985548181160714.Spec : Prop :=
  ∀ n, P7717985548181160714.a n = A137584 n

end A137584

/-! ## A137584.P15603479383844757922

`Δ[A007307(A008486(n))]`
-/

namespace A137584.P15603479383844757922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137584.P15603479383844757922

namespace A137584

/-- `Δ[A007307(A008486(n))]` -/
def P15603479383844757922.Spec : Prop :=
  ∀ n, P15603479383844757922.a n = A137584 n

end A137584

/-! ## A137584.P6498251442462820845

`record[Δ[A159347(A002264(n))]]`
-/

namespace A137584.P6498251442462820845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159347 (A002264 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137584.P6498251442462820845

namespace A137584

/-- `record[Δ[A159347(A002264(n))]]` -/
def P6498251442462820845.Spec : Prop :=
  ∀ n, P6498251442462820845.a n = A137584 n

end A137584

/-! ## A137584.P6314424843808672259

`∑[A135364(n)]-A000007(n)`
-/

namespace A137584.P6314424843808672259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000007 n

end

end A137584.P6314424843808672259

namespace A137584

/-- `∑[A135364(n)]-A000007(n)` -/
def P6314424843808672259.Spec : Prop :=
  ∀ n, P6314424843808672259.a n = A137584 n

end A137584

/-! ## A137584.P409541919210051892

`A007307(A103517(n)-1+n)`
-/

namespace A137584.P409541919210051892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (A103517 n - 1 + (n : ℤ)).toNat

end

end A137584.P409541919210051892

namespace A137584

/-- `A007307(A103517(n)-1+n)` -/
def P409541919210051892.Spec : Prop :=
  ∀ n, P409541919210051892.a n = A137584 n

end A137584

/-! ## A137584.P4609722435968205550

`A137531(n)-A159347(n+1)`
-/

namespace A137584.P4609722435968205550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137531 n - A159347 (n + 1)

end

end A137584.P4609722435968205550

namespace A137584

/-- `A137531(n)-A159347(n+1)` -/
def P4609722435968205550.Spec : Prop :=
  ∀ n, P4609722435968205550.a n = A137584 n

end A137584

/-! ## A137584.P12646365210325725725

`A007307(n-(1-A103517(n)))`
-/

namespace A137584.P12646365210325725725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 ((n : ℤ) - (1 - A103517 n)).toNat

end

end A137584.P12646365210325725725

namespace A137584

/-- `A007307(n-(1-A103517(n)))` -/
def P12646365210325725725.Spec : Prop :=
  ∀ n, P12646365210325725725.a n = A137584 n

end A137584

/-! ## A137584.P7515914366872520097

`Δ[A007307(A004273(n)+1+n)]`
-/

namespace A137584.P7515914366872520097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (A004273 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137584.P7515914366872520097

namespace A137584

/-- `Δ[A007307(A004273(n)+1+n)]` -/
def P7515914366872520097.Spec : Prop :=
  ∀ n, P7515914366872520097.a n = A137584 n

end A137584

/-! ## A137584.P3623314621984925341

`∑[A135364(n)]%A137229(n+1)`
-/

namespace A137584.P3623314621984925341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A137229 (n + 1))

end

end A137584.P3623314621984925341

namespace A137584

/-- `∑[A135364(n)]%A137229(n+1)` -/
def P3623314621984925341.Spec : Prop :=
  ∀ n, P3623314621984925341.a n = A137584 n

end A137584

/-! ## A137584.P16674952593697623156

`A159347(n+2)-A159347(n+1)`
-/

namespace A137584.P16674952593697623156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159347 (n + 2) - A159347 (n + 1)

end

end A137584.P16674952593697623156

namespace A137584

/-- `A159347(n+2)-A159347(n+1)` -/
def P16674952593697623156.Spec : Prop :=
  ∀ n, P16674952593697623156.a n = A137584 n

end A137584

/-! ## A137584.P17882286148067725203

`A007307(3*n+1-A000007(n))`
-/

namespace A137584.P17882286148067725203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 ((3 * n + 1 : ℤ) - A000007 n).toNat

end

end A137584.P17882286148067725203

namespace A137584

/-- `A007307(3*n+1-A000007(n))` -/
def P17882286148067725203.Spec : Prop :=
  ∀ n, P17882286148067725203.a n = A137584 n

end A137584

/-! ## A137584.P16929333675630428752

`A137531(n)-A137531(A289207(n+1))`
-/

namespace A137584.P16929333675630428752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137531 n - A137531 (A289207 (n + 1)).toNat

end

end A137584.P16929333675630428752

namespace A137584

/-- `A137531(n)-A137531(A289207(n+1))` -/
def P16929333675630428752.Spec : Prop :=
  ∀ n, P16929333675630428752.a n = A137584 n

end A137584

/-! ## A137584.P11190648439993012548

`A135364(n)+A137531(n)-A135364(n+1)`
-/

namespace A137584.P11190648439993012548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135364 n + (A137531 n - A135364 (n + 1))

end

end A137584.P11190648439993012548

namespace A137584

/-- `A135364(n)+A137531(n)-A135364(n+1)` -/
def P11190648439993012548.Spec : Prop :=
  ∀ n, P11190648439993012548.a n = A137584 n

end A137584

/-! ## A137584.P7549570536576122670

`Δ[Δ[A135364(n)]]`
-/

namespace A137584.P7549570536576122670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137584.P7549570536576122670

namespace A137584

/-- `Δ[Δ[A135364(n)]]` -/
def P7549570536576122670.Spec : Prop :=
  ∀ n, P7549570536576122670.a n = A137584 n

end A137584

/-! ## A137584.P16381331768240337853

`∑[A135364(n)]%A136303(n)`
-/

namespace A137584.P16381331768240337853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A136303 n)

end

end A137584.P16381331768240337853

namespace A137584

/-- `∑[A135364(n)]%A136303(n)` -/
def P16381331768240337853.Spec : Prop :=
  ∀ n, P16381331768240337853.a n = A137584 n

end A137584

/-! ## A137584.P12003227783748637068

`A097550(n+1)-(A159336(n+1)+A034943(n+1))`
-/

namespace A137584.P12003227783748637068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 (n + 1) - (A159336 (n + 1) + A034943 (n + 1))

end

end A137584.P12003227783748637068

namespace A137584

/-- `A097550(n+1)-(A159336(n+1)+A034943(n+1))` -/
def P12003227783748637068.Spec : Prop :=
  ∀ n, P12003227783748637068.a n = A137584 n

end A137584

/-!
# A137585: Triangle read by rows: A054525 * A026794.

The programs for A137585, there is no canonical definition to state claims against.
-/

/-! ## A137585.P8950410113754668582

`A133732(A120885(n+1))^A062513(n+1)²`
-/

namespace A137585.P8950410113754668582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133732 (A120885 (n + 1)).toNat : ℚ) ^ (A062513 (n + 1) ^ 2 : ℤ)

end

end A137585.P8950410113754668582

/-! ## A137585.P8029473681454023957

`A133732(A120885(n+1))^A014963(A039755(n))`
-/

namespace A137585.P8029473681454023957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133732 (A120885 (n + 1)).toNat : ℚ) ^ (A014963 (A039755 n).toNat : ℤ)

end

end A137585.P8029473681454023957

/-! ## A137585.P8174838489951131513

`A133732(A120885(n+1))^A014963(A139382(n+1))`
-/

namespace A137585.P8174838489951131513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133732 (A120885 (n + 1)).toNat : ℚ) ^ (A014963 (A139382 (n + 1)).toNat : ℤ)

end

end A137585.P8174838489951131513

/-! ## A137585.P6169805665440509796

`A133732(A120885(n+1))^A014963(A304205(n+1))`
-/

namespace A137585.P6169805665440509796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133732 (A120885 (n + 1)).toNat : ℚ) ^ (A014963 (A304205 (n + 1)).toNat : ℤ)

end

end A137585.P6169805665440509796

/-! ## A137585.P16148904959777655947

`A119026(A123163(n+1))`
-/

namespace A137585.P16148904959777655947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (A123163 (n + 1)).toNat

end

end A137585.P16148904959777655947

/-!
# A137586: Triangle read by rows: A026794 * A054525.

The programs for A137586, there is no canonical definition to state claims against.
-/

/-! ## A137586.P11564082539721331241

`A117707(A247255(n+1)+A161363(n+1))`
-/

namespace A137586.P11564082539721331241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A247255 (n + 1) + A161363 (n + 1)).toNat

end

end A137586.P11564082539721331241

/-! ## A137586.P4657433715327397121

`A074220(n+1)%A000005(3^A137585(n+1))`
-/

namespace A137586.P4657433715327397121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074220 (n + 1)) (A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A137585 (n + 1) : ℤ))).toNat)

end

end A137586.P4657433715327397121

/-! ## A137586.P10097647889656645818

`A137585(n+1)-A170980(A005169(A137585(n+1)))`
-/

namespace A137586.P10097647889656645818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137585 (n + 1) - A170980 (A005169 (A137585 (n + 1)).toNat).toNat

end

end A137586.P10097647889656645818

/-! ## A137586.P1695094962934520282

`A038499(A176808(n+1)^A288972(n))`
-/

namespace A137586.P1695094962934520282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038499 (SequenceMachineLib.roundAway ((A176808 (n + 1) : ℚ) ^ (A288972 n : ℤ))).toNat

end

end A137586.P1695094962934520282

/-! ## A137586.P14487265245401423571

`A082861(A123163(n+1))`
-/

namespace A137586.P14487265245401423571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082861 (A123163 (n + 1)).toNat

end

end A137586.P14487265245401423571

/-!
# A137587: Triangle read by rows: A051731 * A026794.

The programs for A137587, there is no canonical definition to state claims against.
-/

/-! ## A137587.P2544699666524139785

`A137639(n+1)-A125005(A186020(n))`
-/

namespace A137587.P2544699666524139785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137639 (n + 1) - A125005 (A186020 n).toNat

end

end A137587.P2544699666524139785

/-! ## A137587.P18055055239739289430

`A168019(A286158(n+1))-A316864(A193384(n))`
-/

namespace A137587.P18055055239739289430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168019 (A286158 (n + 1)).toNat - A316864 (A193384 n).toNat

end

end A137587.P18055055239739289430

/-! ## A137587.P11218103211142298985

`A137639(n+1)-A151667(A295797(n+1))`
-/

namespace A137587.P11218103211142298985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137639 (n + 1) - A151667 (A295797 (n + 1)).toNat

end

end A137587.P11218103211142298985

/-! ## A137587.P7768900739665070756

`A126988(n+1)+A010051(A053739(n))`
-/

namespace A137587.P7768900739665070756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) + A010051 (A053739 n).toNat

end

end A137587.P7768900739665070756

/-! ## A137587.P17615304742008677877

`A126988(n+1)+A086017(A242519(n+1))`
-/

namespace A137587.P17615304742008677877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) + A086017 (A242519 (n + 1)).toNat

end

end A137587.P17615304742008677877

/-!
# A137588: Number of primes not greater than n that are greater than the number of primes not greater than n.

The programs for A137588, the canonical program `A137588.P17954541241361274980` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137588 has offset 1).

The definition of A137588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137588.P17954541241361274980

`∑[char[A007821(n+1)-1]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137588

/-- `∑[char[A007821(n+1)-1]]` -/
def P17954541241361274980.Spec : Prop :=
  ∀ n, (P17954541241361274980.a n : ℤ) = A137588 (n + 1)

theorem P17954541241361274980.correct : P17954541241361274980.Spec := by
  intro n
  simp only [A137588, Nat.add_sub_cancel]

end A137588

/-! ## A137588.P5018022739802425097

`∑[char[A000010(A007821(n+1))]]`
-/

namespace A137588.P5018022739802425097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007821 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137588.P5018022739802425097

namespace A137588

/-- `∑[char[A000010(A007821(n+1))]]` -/
def P5018022739802425097.Spec : Prop :=
  ∀ n, (P5018022739802425097.a n : ℤ) = A137588 (n + 1)

end A137588

/-! ## A137588.P15752103953059258357

`∑[char[A006093(A018252(n+1))]]`
-/

namespace A137588.P15752103953059258357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A018252 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137588.P15752103953059258357

namespace A137588

/-- `∑[char[A006093(A018252(n+1))]]` -/
def P15752103953059258357.Spec : Prop :=
  ∀ n, (P15752103953059258357.a n : ℤ) = A137588 (n + 1)

end A137588

/-! ## A137588.P11992361064847229244

`∑[char[A006093(A143545(n+1))]]`
-/

namespace A137588.P11992361064847229244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A143545 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137588.P11992361064847229244

namespace A137588

/-- `∑[char[A006093(A143545(n+1))]]` -/
def P11992361064847229244.Spec : Prop :=
  ∀ n, (P11992361064847229244.a n : ℤ) = A137588 (n + 1)

end A137588

/-! ## A137588.P4002233082699043445

`∑[char[A006093(A240024(n+1))]]`
-/

namespace A137588.P4002233082699043445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A240024 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137588.P4002233082699043445

namespace A137588

/-- `∑[char[A006093(A240024(n+1))]]` -/
def P4002233082699043445.Spec : Prop :=
  ∀ n, (P4002233082699043445.a n : ℤ) = A137588 (n + 1)

end A137588

/-! ## A137588.P8041280714362212392

`A000720(n+1)-A132090(n+1)`
-/

namespace A137588.P8041280714362212392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A132090 (n + 1)

end

end A137588.P8041280714362212392

namespace A137588

/-- `A000720(n+1)-A132090(n+1)` -/
def P8041280714362212392.Spec : Prop :=
  ∀ n, P8041280714362212392.a n = A137588 (n + 1)

end A137588

/-! ## A137588.P12397472106859820887

`∑[char[A006093(A207790(2*n+1))]]`
-/

namespace A137588.P12397472106859820887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A207790 (2 * n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137588.P12397472106859820887

namespace A137588

/-- `∑[char[A006093(A207790(2*n+1))]]` -/
def P12397472106859820887.Spec : Prop :=
  ∀ n, (P12397472106859820887.a n : ℤ) = A137588 (n + 1)

end A137588

/-! ## A137588.P2534504729297000633

`∑[char[A006093((A010051(n+1)+1)^7+n)]]`
-/

namespace A137588.P2534504729297000633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 ((A010051 (n + 1) + 1) ^ 7 + (n : ℤ)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137588.P2534504729297000633

namespace A137588

/-- `∑[char[A006093((A010051(n+1)+1)^7+n)]]` -/
def P2534504729297000633.Spec : Prop :=
  ∀ n, (P2534504729297000633.a n : ℤ) = A137588 (n + 1)

end A137588

/-! ## A137588.P1843802130622836526

`char[A020639(A320628(n+1))-1]+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A137588.P1843802130622836526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A320628 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A137588.P1843802130622836526

namespace A137588

/-- `char[A020639(A320628(n+1))-1]+a(n-1)` -/
def P1843802130622836526.Spec : Prop :=
  ∀ n, (P1843802130622836526.a n : ℤ) = A137588 (n + 1)

end A137588

/-! ## A137588.P15626744812434760758

`A000720(n+1)-A000720(∑[A080545(n+1)])`
-/

namespace A137588.P15626744812434760758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137588.P15626744812434760758

namespace A137588

/-- `A000720(n+1)-A000720(∑[A080545(n+1)])` -/
def P15626744812434760758.Spec : Prop :=
  ∀ n, P15626744812434760758.a n = A137588 (n + 1)

end A137588

/-! ## A137588.P15186937342582110681

`A000720(n+1)-A000720(A033270(n+1)+1)`
-/

namespace A137588.P15186937342582110681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A033270 (n + 1) + 1).toNat

end

end A137588.P15186937342582110681

namespace A137588

/-- `A000720(n+1)-A000720(A033270(n+1)+1)` -/
def P15186937342582110681.Spec : Prop :=
  ∀ n, P15186937342582110681.a n = A137588 (n + 1)

end A137588

/-! ## A137588.P10182176034706226537

`A036234(n+1)-A036234(A033270(n+1)+1)`
-/

namespace A137588.P10182176034706226537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A036234 (A033270 (n + 1) + 1).toNat

end

end A137588.P10182176034706226537

namespace A137588

/-- `A036234(n+1)-A036234(A033270(n+1)+1)` -/
def P10182176034706226537.Spec : Prop :=
  ∀ n, P10182176034706226537.a n = A137588 (n + 1)

end A137588

/-! ## A137588.P2921934258007508361

`A282029(2*A000720(n+1))-A000720(n+1)`
-/

namespace A137588.P2921934258007508361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282029 (2 * A000720 (n + 1)).toNat - A000720 (n + 1)

end

end A137588.P2921934258007508361

namespace A137588

/-- `A282029(2*A000720(n+1))-A000720(n+1)` -/
def P2921934258007508361.Spec : Prop :=
  ∀ n, P2921934258007508361.a n = A137588 (n + 1)

end A137588

/-! ## A137588.P6644695550897126339

`A000720(n+1)-A000720(A000720(n+1)+A000007(n))`
-/

namespace A137588.P6644695550897126339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A000720 (n + 1) + A000007 n).toNat

end

end A137588.P6644695550897126339

namespace A137588

/-- `A000720(n+1)-A000720(A000720(n+1)+A000007(n))` -/
def P6644695550897126339.Spec : Prop :=
  ∀ n, P6644695550897126339.a n = A137588 (n + 1)

end A137588

/-! ## A137588.P9544349937285309837

`A036234(n+1)-A036234(A036234(n+1)-A057427(n))`
-/

namespace A137588.P9544349937285309837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A036234 (A036234 (n + 1) - A057427 n).toNat

end

end A137588.P9544349937285309837

namespace A137588

/-- `A036234(n+1)-A036234(A036234(n+1)-A057427(n))` -/
def P9544349937285309837.Spec : Prop :=
  ∀ n, P9544349937285309837.a n = A137588 (n + 1)

end A137588

/-! ## A137588.P9463856912661710282

`A230980(n+1)-A132090(n+1)`
-/

namespace A137588.P9463856912661710282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A132090 (n + 1)

end

end A137588.P9463856912661710282

namespace A137588

/-- `A230980(n+1)-A132090(n+1)` -/
def P9463856912661710282.Spec : Prop :=
  ∀ n, P9463856912661710282.a n = A137588 (n + 1)

end A137588

/-! ## A137588.P468271801825324287

`A000720(n+1)-A230980(A230980(n+1))`
-/

namespace A137588.P468271801825324287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A230980 (A230980 (n + 1)).toNat

end

end A137588.P468271801825324287

namespace A137588

/-- `A000720(n+1)-A230980(A230980(n+1))` -/
def P468271801825324287.Spec : Prop :=
  ∀ n, P468271801825324287.a n = A137588 (n + 1)

end A137588

/-! ## A137588.P17982101522392309132

`A230980(n+1)-A230980(A230980(or(1, n)))`
-/

namespace A137588.P17982101522392309132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A230980 (A230980 (Nat.lor 1 n)).toNat

end

end A137588.P17982101522392309132

namespace A137588

/-- `A230980(n+1)-A230980(A230980(or(1, n)))` -/
def P17982101522392309132.Spec : Prop :=
  ∀ n, P17982101522392309132.a n = A137588 (n + 1)

end A137588

/-! ## A137588.P5220924320888486266

`A230980(A028310(n+1))-A230980(A230980(n+1))`
-/

namespace A137588.P5220924320888486266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A028310 (n + 1)).toNat - A230980 (A230980 (n + 1)).toNat

end

end A137588.P5220924320888486266

namespace A137588

/-- `A230980(A028310(n+1))-A230980(A230980(n+1))` -/
def P5220924320888486266.Spec : Prop :=
  ∀ n, P5220924320888486266.a n = A137588 (n + 1)

end A137588

/-! ## A137588.P6254025338812404460

`A230980(A014684(n+2))-A230980(A230980(n+1))`
-/

namespace A137588.P6254025338812404460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A014684 (n + 2)).toNat - A230980 (A230980 (n + 1)).toNat

end

end A137588.P6254025338812404460

namespace A137588

/-- `A230980(A014684(n+2))-A230980(A230980(n+1))` -/
def P6254025338812404460.Spec : Prop :=
  ∀ n, P6254025338812404460.a n = A137588 (n + 1)

end A137588

/-!
# A137589: a(n) is the integer that results after deletion of all digits of n-th prime, except the initial digit and the final digit.

The programs for A137589, the canonical program `A137589.P7831409490653393190` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137589 has offset 1).

The definition of A137589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137589.P7831409490653393190

`A138840(n+1)%A017329(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137589

/-- `A138840(n+1)%A017329(n)` -/
def P7831409490653393190.Spec : Prop :=
  ∀ n, P7831409490653393190.a n = A137589 (n + 1)

theorem P7831409490653393190.correct : P7831409490653393190.Spec := by
  intro n
  simp only [A137589, Nat.add_sub_cancel]

end A137589

/-! ## A137589.P5752101288315416916

`gcd(A073531(2*n+3), A138840(n+1))`
-/

namespace A137589.P5752101288315416916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073531 (2 * n + 3)) (A138840 (n + 1))

end

end A137589.P5752101288315416916

namespace A137589

/-- `gcd(A073531(2*n+3), A138840(n+1))` -/
def P5752101288315416916.Spec : Prop :=
  ∀ n, (P5752101288315416916.a n : ℤ) = A137589 (n + 1)

end A137589

/-! ## A137589.P12845349433486685119

`A138840(A000027(n+1))%A330644(n+4)`
-/

namespace A137589.P12845349433486685119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138840 (A000027 (n + 1)).toNat) (A330644 (n + 4))

end

end A137589.P12845349433486685119

namespace A137589

/-- `A138840(A000027(n+1))%A330644(n+4)` -/
def P12845349433486685119.Spec : Prop :=
  ∀ n, P12845349433486685119.a n = A137589 (n + 1)

end A137589

/-! ## A137589.P18335316306702375456

`A073729(A095320(n+1))%A061645(n+1)`
-/

namespace A137589.P18335316306702375456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073729 (A095320 (n + 1)).toNat) (A061645 (n + 1))

end

end A137589.P18335316306702375456

namespace A137589

/-- `A073729(A095320(n+1))%A061645(n+1)` -/
def P18335316306702375456.Spec : Prop :=
  ∀ n, P18335316306702375456.a n = A137589 (n + 1)

end A137589

/-! ## A137589.P16938720260899868341

`A020639(A007635(n+1)*A138840(n+1))`
-/

namespace A137589.P16938720260899868341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007635 (n + 1) * A138840 (n + 1)).toNat

end

end A137589.P16938720260899868341

namespace A137589

/-- `A020639(A007635(n+1)*A138840(n+1))` -/
def P16938720260899868341.Spec : Prop :=
  ∀ n, P16938720260899868341.a n = A137589 (n + 1)

end A137589

/-!
# A137590: Number of alternating full cycles on n letters.

The programs for A137590, there is no canonical definition to state claims against.
-/

/-! ## A137590.P14972560368922187476

`A062299(A260786(n)+A008281(n))`
-/

namespace A137590.P14972560368922187476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (A260786 n + A008281 n).toNat

end

end A137590.P14972560368922187476

/-! ## A137590.P3883216164460210790

`A081753(A101473(n)+A101461(n))`
-/

namespace A137590.P3883216164460210790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A101473 n + A101461 n).toNat

end

end A137590.P3883216164460210790

/-! ## A137590.P11408576929006065155

`A194640(A112207(n)+A000111(n))`
-/

namespace A137590.P11408576929006065155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A112207 n + A000111 n).toNat

end

end A137590.P11408576929006065155

/-! ## A137590.P16145746733447089660

`A008651(A349458(n))+A008616(n)`
-/

namespace A137590.P16145746733447089660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A349458 n).toNat + A008616 n

end

end A137590.P16145746733447089660

/-!
# A137591: Number of parenthesizings of products formed by n factors assuming nonassociativity and partial commutativity: individual factors commute, but bracketed expressions don't commute with anything.

The programs for A137591, there is no canonical definition to state claims against.
-/

/-! ## A137591.P14258098324492975263

`A036774(n+1)/A071356(n)*A068764(n)`
-/

namespace A137591.P14258098324492975263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036774 (n + 1) : ℚ) / (A071356 n : ℚ) * (A068764 n : ℚ)

end

end A137591.P14258098324492975263

/-! ## A137591.P10708283789060636881

`A357309(n)+A006924(A006924(n))`
-/

namespace A137591.P10708283789060636881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357309 n + A006924 (A006924 n).toNat

end

end A137591.P10708283789060636881

/-!
# A137593: Triangle read by rows: matrix product A000012 * A136717.

The programs for A137593, there is no canonical definition to state claims against.
-/

/-! ## A137593.P11223831800651985237

`A365171(A392337(n))`
-/

namespace A137593.P11223831800651985237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A392337 n).toNat

end

end A137593.P11223831800651985237

/-! ## A137593.P14910539757990714989

`A355911(A248842(n+1))`
-/

namespace A137593.P14910539757990714989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (A248842 (n + 1)).toNat

end

end A137593.P14910539757990714989

/-! ## A137593.P15028325386337938081

`A124859(C(A209518(n), A059268(n)))`
-/

namespace A137593.P15028325386337938081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (Nat.choose (A209518 n).toNat (A059268 n).toNat)

end

end A137593.P15028325386337938081

/-! ## A137593.P1178470377599789182

`A220527(A115597(n+2))`
-/

namespace A137593.P1178470377599789182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220527 (A115597 (n + 2)).toNat

end

end A137593.P1178470377599789182

/-! ## A137593.P16386675542095749184

`A112096(A209765(n+1)+1)`
-/

namespace A137593.P16386675542095749184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112096 (A209765 (n + 1) + 1).toNat

end

end A137593.P16386675542095749184

/-!
# A137594: Triangle read by rows: A007318 * A136717.

The programs for A137594, there is no canonical definition to state claims against.
-/

/-! ## A137594.P3070783298413650394

`A350634(A108767(n+1))`
-/

namespace A137594.P3070783298413650394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350634 (A108767 (n + 1)).toNat

end

end A137594.P3070783298413650394

/-! ## A137594.P2757725541035693748

`A249871(A122670(n))+A123519(n)`
-/

namespace A137594.P2757725541035693748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249871 (A122670 n).toNat + A123519 n

end

end A137594.P2757725541035693748

/-! ## A137594.P11276003851072789541

`A132016(A103881(n+1)*A233543(n))`
-/

namespace A137594.P11276003851072789541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (A103881 (n + 1) * A233543 n).toNat

end

end A137594.P11276003851072789541

/-! ## A137594.P4962155077219746231

`A132016(A133200(n+1)*A233543(n))`
-/

namespace A137594.P4962155077219746231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (A133200 (n + 1) * A233543 n).toNat

end

end A137594.P4962155077219746231

/-!
# A137595: Integers k such that the run lengths of identical digits in their binary expansion are palindromic after the rightmost bit is duplicated.

The programs for A137595, the canonical program `A137595.P2754032097385745944` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137595 has offset 1).

The definition of A137595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137595.P2754032097385745944

`eq[A006257(n), A109613(A056539(n))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A137595

/-- `eq[A006257(n), A109613(A056539(n))]` -/
def P2754032097385745944.Spec : Prop :=
  ∀ n, (P2754032097385745944.a n : ℤ) = A137595 (n + 1)

theorem P2754032097385745944.correct : P2754032097385745944.Spec := by
  intro n
  simp only [A137595, Nat.add_sub_cancel]

end A137595

/-! ## A137595.P15892581602692073334

`eq[A008619(A056539(n)), A060973(n+1)]`
-/

namespace A137595.P15892581602692073334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A056539 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137595.P15892581602692073334

namespace A137595

/-- `eq[A008619(A056539(n)), A060973(n+1)]` -/
def P15892581602692073334.Spec : Prop :=
  ∀ n, (P15892581602692073334.a n : ℤ) = A137595 (n + 1)

end A137595

/-! ## A137595.P5265047009304683261

`eq[A035327(2*n), A119608(n+1)]`
-/

namespace A137595.P5265047009304683261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137595.P5265047009304683261

namespace A137595

/-- `eq[A035327(2*n), A119608(n+1)]` -/
def P5265047009304683261.Spec : Prop :=
  ∀ n, (P5265047009304683261.a n : ℤ) = A137595 (n + 1)

end A137595

/-! ## A137595.P17315134992434506248

`eq[A288003(A145341(n+1)), A295515(n+1)]`
-/

namespace A137595.P17315134992434506248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A145341 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137595.P17315134992434506248

namespace A137595

/-- `eq[A288003(A145341(n+1)), A295515(n+1)]` -/
def P17315134992434506248.Spec : Prop :=
  ∀ n, (P17315134992434506248.a n : ℤ) = A137595 (n + 1)

end A137595

/-! ## A137595.P4798498249359072384

`eq[A114214(n), A324337(A153153(n))]`
-/

namespace A137595.P4798498249359072384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A153153 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137595.P4798498249359072384

namespace A137595

/-- `eq[A114214(n), A324337(A153153(n))]` -/
def P4798498249359072384.Spec : Prop :=
  ∀ n, (P4798498249359072384.a n : ℤ) = A137595 (n + 1)

end A137595

/-!
# A137596: Triangle read by rows: T(n, k) = Sum_{i=0..n} Stirling2(i, k).

The programs for A137596, there is no canonical definition to state claims against.
-/

/-! ## A137596.P653287463123377001

`A137649(A028310(A271439(n)))`
-/

namespace A137596.P653287463123377001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137649 (A028310 (A271439 n).toNat).toNat

end

end A137596.P653287463123377001

/-! ## A137596.P7906686595625929728

`A137649(A198954(n)+A083920(n))`
-/

namespace A137596.P7906686595625929728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137649 (A198954 n + A083920 n).toNat

end

end A137596.P7906686595625929728

/-! ## A137596.P11119886978674863927

`A028310(A321331(n)%A137649(n+1))`
-/

namespace A137596.P11119886978674863927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A321331 n) (A137649 (n + 1))).toNat

end

end A137596.P11119886978674863927

/-! ## A137596.P7160446190724121160

`A111669(n)-A335460(A111669(n))`
-/

namespace A137596.P7160446190724121160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111669 n - A335460 (A111669 n).toNat

end

end A137596.P7160446190724121160

/-! ## A137596.P5315245132068030364

`A111669(n)-A033909(A266854(n+1))`
-/

namespace A137596.P5315245132068030364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111669 n - A033909 (A266854 (n + 1)).toNat

end

end A137596.P5315245132068030364

/-!
# A137597: Triangle read by rows: A008277 * A007318.

The programs for A137597, there is no canonical definition to state claims against.
-/

/-! ## A137597.P17505934789512611353

`A126350(∑[char[∑[n]]]²-n)`
-/

namespace A137597.P17505934789512611353
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126350 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A137597.P17505934789512611353

/-! ## A137597.P2126564663576359015

`or(char[2], A126350(A038722(n+1)))`
-/

namespace A137597.P2126564663576359015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A126350 (A038722 (n + 1)).toNat)

end

end A137597.P2126564663576359015

/-! ## A137597.P12452573359112942562

`A126350(A038722(n+1))+A000007(n+1)`
-/

namespace A137597.P12452573359112942562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126350 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A137597.P12452573359112942562

/-! ## A137597.P5599459727007874808

`A126350(A038722(n+1))+A111787(A002144(n+1))`
-/

namespace A137597.P5599459727007874808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126350 (A038722 (n + 1)).toNat + A111787 (A002144 (n + 1)).toNat

end

end A137597.P5599459727007874808

/-! ## A137597.P5076439379818133861

`A259825(A002144(n+1)+4)+A126350(A038722(n+1))`
-/

namespace A137597.P5076439379818133861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (A002144 (n + 1) + 4).toNat + A126350 (A038722 (n + 1)).toNat

end

end A137597.P5076439379818133861

/-! ## A137597.P10258248421234087097

`A007318(∑[n])*A126350(A038722(n+1))`
-/

namespace A137597.P10258248421234087097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A126350 (A038722 (n + 1)).toNat

end

end A137597.P10258248421234087097

