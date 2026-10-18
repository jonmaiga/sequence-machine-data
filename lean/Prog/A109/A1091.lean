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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
# A109100: Numbers k such that k! is the product of exactly 2 smaller factorials (greater than 1).

The programs for A109100, there is no canonical definition to state claims against.
-/

/-! ## A109100.P6224336726055420737

`eq[2, A034876(n+1)]+1`
-/

namespace A109100.P6224336726055420737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109100.P6224336726055420737

/-! ## A109100.P1573118768599784171

`eq[2, A034876(gcd(n, C(2, n²)))]`
-/

namespace A109100.P1573118768599784171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 (Nat.gcd n (Nat.choose 2 (n ^ 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109100.P1573118768599784171

/-! ## A109100.P363307248052020809

`eq[2, A034876(A028310(n))]`
-/

namespace A109100.P363307248052020809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109100.P363307248052020809

/-! ## A109100.P4857493336669629679

`A020725(eq[2, A034876(n+1)])`
-/

namespace A109100.P4857493336669629679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109100.P4857493336669629679

/-! ## A109100.P1802449765340436090

`eq[2, A034876(A000038(n)+n)]`
-/

namespace A109100.P1802449765340436090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109100.P1802449765340436090

/-!
# A109101: Numbers k such that k! is the product of exactly 3 smaller factorials (greater than 1).

The programs for A109101, there is no canonical definition to state claims against.
-/

/-! ## A109101.P10463659852516600244

`A001013(eq[3, A034876(A034878(n+1))])`
-/

namespace A109101.P10463659852516600244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 (A034878 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109101.P10463659852516600244

/-! ## A109101.P5180552626744989737

`A001013(eq[3, A322583(A034878(n+1))])`
-/

namespace A109101.P5180552626744989737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (A034878 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109101.P5180552626744989737

/-! ## A109101.P10689415302495364693

`record[A002246(lcm(57, A158814(n+1)))]`
-/

namespace A109101.P10689415302495364693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002246 (Int.lcm 57 (A158814 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109101.P10689415302495364693

/-!
# A109104: Numbers k such that k! can be expressed as the product of the factorials of prime numbers, repetitions allowed.

The programs for A109104, there is no canonical definition to state claims against.
-/

/-! ## A109104.P16135737194373577252

`∩[A000961(n+1)+1, A034878(n+1)]`
-/

namespace A109104.P16135737194373577252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109104.P16135737194373577252

/-! ## A109104.P7009586290293410805

`∩[record[A062854(2*(n+1))], A034878(n+1)]`
-/

namespace A109104.P7009586290293410805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A109104.P7009586290293410805

/-! ## A109104.P16473590751004693219

`∩[A034878(n+1), A326837(n+1)+1]`
-/

namespace A109104.P16473590751004693219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326837 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109104.P16473590751004693219

/-! ## A109104.P6027206099950694961

`∩[A034878(n+1), A118955(n+1)]`
-/

namespace A109104.P6027206099950694961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109104.P6027206099950694961

/-! ## A109104.P1395766293295761091

`A034878(record[abs(A162201(n+2))])`
-/

namespace A109104.P1395766293295761091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162201 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034878 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109104.P1395766293295761091

/-!
# A109105: a(n) = (8*sqrt(5)/25)((sqrt(5) + 2)((15 + 5*sqrt(5))/2)^n + (sqrt(5) - 2)((15 - 5*sqrt(5))/2)^n).

The programs for A109105, there is no canonical definition to state claims against.
-/

/-! ## A109105.P5892458352144380515

`Δ[5^n]*A055819(n+3)`
-/

namespace A109105.P5892458352144380515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A055819 (n + 3)

end

end A109105.P5892458352144380515

/-! ## A109105.P9795435456152801193

`8*A048575(n+1)*A000351(n)`
-/

namespace A109105.P9795435456152801193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A048575 (n + 1) * A000351 n

end

end A109105.P9795435456152801193

/-! ## A109105.P10682491681163434272

`A020701(Δ[n²])*Δ[A020699(n+1)]`
-/

namespace A109105.P10682491681163434272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * (f2 (n + 1) - f2 n)

end

end A109105.P10682491681163434272

/-! ## A109105.P10961870988039135780

`Δ[A020701(2*n)]*Δ[A020699(n+1)]`
-/

namespace A109105.P10961870988039135780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A109105.P10961870988039135780

/-! ## A109105.P14280848727425971932

`A136775(A005843(n+2))-A093131(A005843(n))`
-/

namespace A109105.P14280848727425971932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136775 (A005843 (n + 2)).toNat - A093131 (A005843 n).toNat

end

end A109105.P14280848727425971932

/-! ## A109105.P14651026139921888941

`A264129(n+1)/2`
-/

namespace A109105.P14651026139921888941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264129 (n + 1) : ℚ) / 2

end

end A109105.P14651026139921888941

/-!
# A109106: a(n) = (1/sqrt(5))*((sqrt(5) + 1)*((15 + 5*sqrt(5))/2)^(n-1) + (sqrt(5) - 1)*((15 - 5*sqrt(5))/2)^(n-1)).

The programs for A109106, the canonical program `A109106.P9669753518214612395` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109106 has offset 1).

The definition of A109106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109106.P9669753518214612395

`A178381(4*n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109106

/-- `A178381(4*n+2)` -/
def P9669753518214612395.Spec : Prop :=
  ∀ n, P9669753518214612395.a n = A109106 (n + 1)

theorem P9669753518214612395.correct : P9669753518214612395.Spec := by
  intro n
  simp only [A109106, Nat.add_sub_cancel]

end A109106

/-! ## A109106.P13853793919072254544

`2*A123358(n)`
-/

namespace A109106.P13853793919072254544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123358 n

end

end A109106.P13853793919072254544

namespace A109106

/-- `2*A123358(n)` -/
def P13853793919072254544.Spec : Prop :=
  ∀ n, P13853793919072254544.a n = A109106 (n + 1)

end A109106

/-! ## A109106.P805417906721249931

`A147748(Δ[n²])`
-/

namespace A109106.P805417906721249931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147748 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A109106.P805417906721249931

namespace A109106

/-- `A147748(Δ[n²])` -/
def P805417906721249931.Spec : Prop :=
  ∀ n, P805417906721249931.a n = A109106 (n + 1)

end A109106

/-! ## A109106.P4222495441939778461

`2*A081567(2*n)`
-/

namespace A109106.P4222495441939778461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081567 (2 * n)

end

end A109106.P4222495441939778461

namespace A109106

/-- `2*A081567(2*n)` -/
def P4222495441939778461.Spec : Prop :=
  ∀ n, P4222495441939778461.a n = A109106 (n + 1)

end A109106

/-! ## A109106.P7024269755636363076

`lcm(2, A147748(2*n+1))`
-/

namespace A109106.P7024269755636363076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A147748 (2 * n + 1))

end

end A109106.P7024269755636363076

namespace A109106

/-- `lcm(2, A147748(2*n+1))` -/
def P7024269755636363076.Spec : Prop :=
  ∀ n, (P7024269755636363076.a n : ℤ) = A109106 (n + 1)

end A109106

/-! ## A109106.P16502213625430343248

`2*5^n*A001519(n+1)`
-/

namespace A109106.P16502213625430343248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 5 ^ n : ℤ) * A001519 (n + 1)

end

end A109106.P16502213625430343248

namespace A109106

/-- `2*5^n*A001519(n+1)` -/
def P16502213625430343248.Spec : Prop :=
  ∀ n, P16502213625430343248.a n = A109106 (n + 1)

end A109106

/-! ## A109106.P1735217352969283206

`2*5^n*A000045(Δ[n²])`
-/

namespace A109106.P1735217352969283206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 5 ^ n : ℤ) * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A109106.P1735217352969283206

namespace A109106

/-- `2*5^n*A000045(Δ[n²])` -/
def P1735217352969283206.Spec : Prop :=
  ∀ n, P1735217352969283206.a n = A109106 (n + 1)

end A109106

/-! ## A109106.P2264295537299596538

`2*Δ[A000045(2*n)]*5^n`
-/

namespace A109106.P2264295537299596538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) * (5 ^ n : ℤ)

end

end A109106.P2264295537299596538

namespace A109106

/-- `2*Δ[A000045(2*n)]*5^n` -/
def P2264295537299596538.Spec : Prop :=
  ∀ n, P2264295537299596538.a n = A109106 (n + 1)

end A109106

/-! ## A109106.P7253728070902252944

`2*A000045(2*n+1)*5^n`
-/

namespace A109106.P7253728070902252944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (2 * n + 1) * (5 ^ n : ℤ)

end

end A109106.P7253728070902252944

namespace A109106

/-- `2*A000045(2*n+1)*5^n` -/
def P7253728070902252944.Spec : Prop :=
  ∀ n, P7253728070902252944.a n = A109106 (n + 1)

end A109106

/-!
# A109107: a(n) = (1/sqrt(26))((5+sqrt(26))^(n+1)-(5-sqrt(26))^(n+1)).

The programs for A109107, the canonical program `A109107.P5899515207578075580` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109107 has offset 0).

The definition of A109107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109107.P5899515207578075580

`1/sqrt(26)*((5+sqrt(26))^(n+1)-(5-sqrt(26))^(n+1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109107

/-- `1/sqrt(26)*((5+sqrt(26))^(n+1)-(5-sqrt(26))^(n+1))` -/
def P5899515207578075580.Spec : Prop :=
  ∀ n, P5899515207578075580.a n = (A109107 n : ℝ)

end A109107

/-! ## A109107.P4419768768165514263

`a(n-2)+10*a(n-1)` with `a(0)=2, a(1)=20`
-/

namespace A109107.P4419768768165514263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 20] fun n a =>
  a (n - 2) + 10 * a (n - 1)

end

end A109107.P4419768768165514263

namespace A109107

/-- `a(n-2)+10*a(n-1)` -/
def P4419768768165514263.Spec : Prop :=
  ∀ n, (P4419768768165514263.a n : ℤ) = A109107 n

end A109107

/-! ## A109107.P7566544520713951140

`∑[2*A109108(n)]`
-/

namespace A109107.P7566544520713951140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109107.P7566544520713951140

namespace A109107

/-- `∑[2*A109108(n)]` -/
def P7566544520713951140.Spec : Prop :=
  ∀ n, P7566544520713951140.a n = A109107 n

end A109107

/-! ## A109107.P3446020819956685987

`A041041(n)+∑[A109108(n)]`
-/

namespace A109107.P3446020819956685987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041041 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109107.P3446020819956685987

namespace A109107

/-- `A041041(n)+∑[A109108(n)]` -/
def P3446020819956685987.Spec : Prop :=
  ∀ n, P3446020819956685987.a n = A109107 n

end A109107

/-! ## A109107.P5018323868927316577

`A086927(n)+Δ[A015456(n)]`
-/

namespace A109107.P5018323868927316577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086927 n + (f1 (n + 1) - f1 n)

end

end A109107.P5018323868927316577

namespace A109107

/-- `A086927(n)+Δ[A015456(n)]` -/
def P5018323868927316577.Spec : Prop :=
  ∀ n, P5018323868927316577.a n = A109107 n

end A109107

/-! ## A109107.P6773369282072738640

`A109108(n)+A015456(n+1)`
-/

namespace A109107.P6773369282072738640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109108 n + A015456 (n + 1)

end

end A109107.P6773369282072738640

namespace A109107

/-- `A109108(n)+A015456(n+1)` -/
def P6773369282072738640.Spec : Prop :=
  ∀ n, P6773369282072738640.a n = A109107 n

end A109107

/-! ## A109107.P8106927211463760913

`(Δ[A041041(n)]-A041040(n))/2`
-/

namespace A109107.P8106927211463760913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041041 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A041040 n : ℚ) / 2

end

end A109107.P8106927211463760913

namespace A109107

/-- `(Δ[A041041(n)]-A041040(n))/2` -/
def P8106927211463760913.Spec : Prop :=
  ∀ n, P8106927211463760913.a n = (A109107 n : ℚ)

end A109107

/-! ## A109107.P3092772753033182004

`(A109108(n+1)-A088320(n+1))/2`
-/

namespace A109107.P3092772753033182004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109108 (n + 1) - A088320 (n + 1) : ℚ) / 2

end

end A109107.P3092772753033182004

namespace A109107

/-- `(A109108(n+1)-A088320(n+1))/2` -/
def P3092772753033182004.Spec : Prop :=
  ∀ n, P3092772753033182004.a n = (A109107 n : ℚ)

end A109107

/-! ## A109107.P7328859291829349021

`A041041(2*n+1)/A041040(n)`
-/

namespace A109107.P7328859291829349021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 (2 * n + 1) : ℚ) / (A041040 n : ℚ)

end

end A109107.P7328859291829349021

namespace A109107

/-- `A041041(2*n+1)/A041040(n)` -/
def P7328859291829349021.Spec : Prop :=
  ∀ n, P7328859291829349021.a n = (A109107 n : ℚ)

end A109107

/-!
# A109108: a(n) = 10a(n-1) + a(n-2), a(0)=1, a(1)=9.

The programs for A109108, the canonical program `A109108.P9287316300867995994` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109108 has offset 0).

The definition of A109108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+a(n-2)` (program `A109108.P9287316300867995994`, by `A109108.P9287316300867995994.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109108.P9287316300867995994

`10*a(n-1)+a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109108

/-- `10*a(n-1)+a(n-2)` -/
def P9287316300867995994.Spec : Prop :=
  ∀ n, (P9287316300867995994.a n : ℤ) = A109108 n

theorem P9287316300867995994.correct : P9287316300867995994.Spec := by
  intro n
  simp only [A109108]

end A109108

/-! ## A109108.P3746423777625006623

`a(n-2)+lcm(10, a(n-1))` with `a(0)=1, a(1)=9`
-/

namespace A109108.P3746423777625006623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 2) + Nat.lcm 10 (a (n - 1))

end

end A109108.P3746423777625006623

namespace A109108

/-- `a(n-2)+lcm(10, a(n-1))` -/
def P3746423777625006623.Spec : Prop :=
  ∀ n, (P3746423777625006623.a n : ℤ) = A109108 n

end A109108

/-! ## A109108.P5772416328775900646

`∑[2*A109109(n)]-1`
-/

namespace A109108.P5772416328775900646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A109108.P5772416328775900646

namespace A109108

/-- `∑[2*A109109(n)]-1` -/
def P5772416328775900646.Spec : Prop :=
  ∀ n, P5772416328775900646.a n = A109108 n

end A109108

/-! ## A109108.P5423984255247569514

`A086927(n)-A015456(n)`
-/

namespace A109108.P5423984255247569514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086927 n - A015456 n

end

end A109108.P5423984255247569514

namespace A109108

/-- `A086927(n)-A015456(n)` -/
def P5423984255247569514.Spec : Prop :=
  ∀ n, P5423984255247569514.a n = A109108 n

end A109108

/-! ## A109108.P7514031926158179524

`A041041(n)+A041041(n)-A015456(n+1)`
-/

namespace A109108.P7514031926158179524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041041 n + (A041041 n - A015456 (n + 1))

end

end A109108.P7514031926158179524

namespace A109108

/-- `A041041(n)+A041041(n)-A015456(n+1)` -/
def P7514031926158179524.Spec : Prop :=
  ∀ n, P7514031926158179524.a n = A109108 n

end A109108

/-! ## A109108.P17885712507460175027

`Δ[A041040(n)%A041041(n)]`
-/

namespace A109108.P17885712507460175027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041040 n) (A041041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109108.P17885712507460175027

namespace A109108

/-- `Δ[A041040(n)%A041041(n)]` -/
def P17885712507460175027.Spec : Prop :=
  ∀ n, P17885712507460175027.a n = A109108 n

end A109108

/-! ## A109108.P4145014546381026583

`Δ[sqrt(A099374(n))]`
-/

namespace A109108.P4145014546381026583
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A099374 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109108.P4145014546381026583

namespace A109108

/-- `Δ[sqrt(A099374(n))]` -/
def P4145014546381026583.Spec : Prop :=
  ∀ n, P4145014546381026583.a n = (A109108 n : ℝ)

end A109108

/-!
# A109109: a(0)=1, a(1)=4, a(n) = 10a(n-1) + a(n-2).

The programs for A109109, the canonical program `A109109.P6067259653215600034` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109109 has offset 0).

The definition of A109109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+a(n-2)` (program `A109109.P6067259653215600034`, by `A109109.P6067259653215600034.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109109.P6067259653215600034

`10*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109109

/-- `10*a(n-1)+a(n-2)` -/
def P6067259653215600034.Spec : Prop :=
  ∀ n, (P6067259653215600034.a n : ℤ) = A109109 n

theorem P6067259653215600034.correct : P6067259653215600034.Spec := by
  intro n
  simp only [A109109]

end A109109

/-! ## A109109.P1269699542404593657

`11*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A109109.P1269699542404593657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  11 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A109109.P1269699542404593657

namespace A109109

/-- `11*a(n-1)-(a(n-1)-a(n-2))` -/
def P1269699542404593657.Spec : Prop :=
  ∀ n, P1269699542404593657.a n = A109109 n

end A109109

/-! ## A109109.P2475714939101307335

`A088320(n)+A109108(n)-A041041(n)`
-/

namespace A109109.P2475714939101307335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088320 n + (A109108 n - A041041 n)

end

end A109109.P2475714939101307335

namespace A109109

/-- `A088320(n)+A109108(n)-A041041(n)` -/
def P2475714939101307335.Spec : Prop :=
  ∀ n, P2475714939101307335.a n = A109109 n

end A109109

/-! ## A109109.P17891333656825431628

`A041041(n)-A041040(n)%A109108(n)`
-/

namespace A109109.P17891333656825431628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041041 n - Int.tmod (A041040 n) (A109108 n)

end

end A109109.P17891333656825431628

namespace A109109

/-- `A041041(n)-A041040(n)%A109108(n)` -/
def P17891333656825431628.Spec : Prop :=
  ∀ n, P17891333656825431628.a n = A109109 n

end A109109

/-! ## A109109.P4457019765697092948

`A088320(n)-A174768(n+1)/A086927(n)`
-/

namespace A109109.P4457019765697092948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088320 n : ℚ) - (A174768 (n + 1) : ℚ) / (A086927 n : ℚ)

end

end A109109.P4457019765697092948

namespace A109109

/-- `A088320(n)-A174768(n+1)/A086927(n)` -/
def P4457019765697092948.Spec : Prop :=
  ∀ n, P4457019765697092948.a n = (A109109 n : ℚ)

end A109109

/-!
# A109110: a(n) = 2a(n-1) + a(n-2) - a(n-3); a(0)=4, a(1)=9, a(2)=20.

The programs for A109110, the canonical program `A109110.P1652708490820209914` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109110 has offset 0).

The definition of A109110 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-a(n-3)` (program `A109110.P1652708490820209914`, by `A109110.P1652708490820209914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109110.P1652708490820209914

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=4, a(1)=9, a(2)=20`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109110

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P1652708490820209914.Spec : Prop :=
  ∀ n, P1652708490820209914.a n = A109110 n

theorem P1652708490820209914.correct : P1652708490820209914.Spec := by
  intro n
  simp only [A109110]

end A109110

/-! ## A109110.P9572090711953162531

`A052534(n+2)`
-/

namespace A109110.P9572090711953162531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 (n + 2)

end

end A109110.P9572090711953162531

namespace A109110

/-- `A052534(n+2)` -/
def P9572090711953162531.Spec : Prop :=
  ∀ n, P9572090711953162531.a n = A109110 n

end A109110

/-! ## A109110.P14942266283342017306

`A077850(n+1)+1`
-/

namespace A109110.P14942266283342017306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077850 (n + 1) + 1

end

end A109110.P14942266283342017306

namespace A109110

/-- `A077850(n+1)+1` -/
def P14942266283342017306.Spec : Prop :=
  ∀ n, P14942266283342017306.a n = A109110 n

end A109110

/-! ## A109110.P15219872208842717792

`A187069(2*n+7)`
-/

namespace A109110.P15219872208842717792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n + 7)

end

end A109110.P15219872208842717792

namespace A109110

/-- `A187069(2*n+7)` -/
def P15219872208842717792.Spec : Prop :=
  ∀ n, P15219872208842717792.a n = A109110 n

end A109110

/-! ## A109110.P16408047435111202332

`record[A052534(abs(2-n))]`
-/

namespace A109110.P16408047435111202332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109110.P16408047435111202332

namespace A109110

/-- `record[A052534(abs(2-n))]` -/
def P16408047435111202332.Spec : Prop :=
  ∀ n, P16408047435111202332.a n = A109110 n

end A109110

/-! ## A109110.P6057260171114352676

`record[Δ[A370377(n+2)]]`
-/

namespace A109110.P6057260171114352676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370377 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109110.P6057260171114352676

namespace A109110

/-- `record[Δ[A370377(n+2)]]` -/
def P6057260171114352676.Spec : Prop :=
  ∀ n, P6057260171114352676.a n = A109110 n

end A109110

/-! ## A109110.P7747467511750491694

`∑[A106805(n+1)]+2`
-/

namespace A109110.P7747467511750491694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A109110.P7747467511750491694

namespace A109110

/-- `∑[A106805(n+1)]+2` -/
def P7747467511750491694.Spec : Prop :=
  ∀ n, P7747467511750491694.a n = A109110 n

end A109110

/-! ## A109110.P8774283276540207707

`∑[A006054(n+3)]+2`
-/

namespace A109110.P8774283276540207707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A109110.P8774283276540207707

namespace A109110

/-- `∑[A006054(n+3)]+2` -/
def P8774283276540207707.Spec : Prop :=
  ∀ n, P8774283276540207707.a n = A109110 n

end A109110

/-! ## A109110.P8280567965550331799

`∑[∑[A006356(n)]]+n+3`
-/

namespace A109110.P8280567965550331799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)

end

end A109110.P8280567965550331799

namespace A109110

/-- `∑[∑[A006356(n)]]+n+3` -/
def P8280567965550331799.Spec : Prop :=
  ∀ n, P8280567965550331799.a n = A109110 n

end A109110

/-! ## A109110.P8793636662411720849

`∑[A271485(2*n+1)]+2`
-/

namespace A109110.P8793636662411720849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271485 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A109110.P8793636662411720849

namespace A109110

/-- `∑[A271485(2*n+1)]+2` -/
def P8793636662411720849.Spec : Prop :=
  ∀ n, P8793636662411720849.a n = A109110 n

end A109110

/-! ## A109110.P899058740666120892

`A286062(n+2)-a(n-1)` with `a(0)=4`
-/

namespace A109110.P899058740666120892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A286062 (n + 2) - a (n - 1)

end

end A109110.P899058740666120892

namespace A109110

/-- `A286062(n+2)-a(n-1)` -/
def P899058740666120892.Spec : Prop :=
  ∀ n, P899058740666120892.a n = A109110 n

end A109110

/-! ## A109110.P15700210134996441225

`A006356(n+1)+A006356(n)`
-/

namespace A109110.P15700210134996441225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (n + 1) + A006356 n

end

end A109110.P15700210134996441225

namespace A109110

/-- `A006356(n+1)+A006356(n)` -/
def P15700210134996441225.Spec : Prop :=
  ∀ n, P15700210134996441225.a n = A109110 n

end A109110

/-! ## A109110.P9386793668917351604

`A219788(n+2)+A077998(n)`
-/

namespace A109110.P9386793668917351604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219788 (n + 2) + A077998 n

end

end A109110.P9386793668917351604

namespace A109110

/-- `A219788(n+2)+A077998(n)` -/
def P9386793668917351604.Spec : Prop :=
  ∀ n, P9386793668917351604.a n = A109110 n

end A109110

/-! ## A109110.P10020259184936053455

`A106805(n+2)-A106805(n)`
-/

namespace A109110.P10020259184936053455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 (n + 2) - A106805 n

end

end A109110.P10020259184936053455

namespace A109110

/-- `A106805(n+2)-A106805(n)` -/
def P10020259184936053455.Spec : Prop :=
  ∀ n, P10020259184936053455.a n = A109110 n

end A109110

/-! ## A109110.P2011126886661502557

`A033303(n)+∑[A033303(n)]+2`
-/

namespace A109110.P2011126886661502557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033303 n + (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A109110.P2011126886661502557

namespace A109110

/-- `A033303(n)+∑[A033303(n)]+2` -/
def P2011126886661502557.Spec : Prop :=
  ∀ n, P2011126886661502557.a n = A109110 n

end A109110

/-! ## A109110.P5931793524965221991

`A106805(n+1)+Δ[A033303(n)]`
-/

namespace A109110.P5931793524965221991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 (n + 1) + (f1 (n + 1) - f1 n)

end

end A109110.P5931793524965221991

namespace A109110

/-- `A106805(n+1)+Δ[A033303(n)]` -/
def P5931793524965221991.Spec : Prop :=
  ∀ n, P5931793524965221991.a n = A109110 n

end A109110

/-! ## A109110.P16135845067777327165

`A286062(n+1)+Δ[A286062(n)]`
-/

namespace A109110.P16135845067777327165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286062 (n + 1) + (f1 (n + 1) - f1 n)

end

end A109110.P16135845067777327165

namespace A109110

/-- `A286062(n+1)+Δ[A286062(n)]` -/
def P16135845067777327165.Spec : Prop :=
  ∀ n, P16135845067777327165.a n = A109110 n

end A109110

/-! ## A109110.P9133850598324951688

`A033304(n+1)-A052994(n+1)`
-/

namespace A109110.P9133850598324951688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033304 (n + 1) - A052994 (n + 1)

end

end A109110.P9133850598324951688

namespace A109110

/-- `A033304(n+1)-A052994(n+1)` -/
def P9133850598324951688.Spec : Prop :=
  ∀ n, P9133850598324951688.a n = A109110 n

end A109110

/-! ## A109110.P10157305060405146228

`A077998(n+1)+A077998(n+2)`
-/

namespace A109110.P10157305060405146228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 (n + 1) + A077998 (n + 2)

end

end A109110.P10157305060405146228

namespace A109110

/-- `A077998(n+1)+A077998(n+2)` -/
def P10157305060405146228.Spec : Prop :=
  ∀ n, P10157305060405146228.a n = A109110 n

end A109110

/-!
# A109111: a(n) = (1/sqrt(595))*((sqrt(595) + 26)*(125 + 5*sqrt(595))^n + (sqrt(595) - 26)*(125 - 5*sqrt(595))^n).

The programs for A109111, the canonical program `A109111.P4265961640432866962` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109111 has offset 0).

The definition of A109111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109111.P4265961640432866962

`1/sqrt(595)*((sqrt(595)+26)*(125+5*sqrt(595))^n+(sqrt(595)-26)*(125-5*sqrt(595))^n)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109111

/-- `1/sqrt(595)*((sqrt(595)+26)*(125+5*sqrt(595))^n+(sqrt(595)-26)*(125-5*sqrt(595))^n)` -/
def P4265961640432866962.Spec : Prop :=
  ∀ n, P4265961640432866962.a n = (A109111 n : ℝ)

end A109111

/-!
# A109112: a(n) = 6*a(n-1) - 3*a(n-2), a(0)=2, a(1)=13.

The programs for A109112, the canonical program `A109112.P10825247783719812752` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109112 has offset 0).

The definition of A109112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-3*a(n-2)` (program `A109112.P10825247783719812752`, by `A109112.P10825247783719812752.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109112.P10825247783719812752

`6*a(n-1)-3*a(n-2)` with `a(0)=2, a(1)=13`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109112

/-- `6*a(n-1)-3*a(n-2)` -/
def P10825247783719812752.Spec : Prop :=
  ∀ n, P10825247783719812752.a n = A109112 n

theorem P10825247783719812752.correct : P10825247783719812752.Spec := by
  intro n
  simp only [A109112]

end A109112

/-! ## A109112.P8036387673841648545

`A164550(n)+∑[A158869(n)]`
-/

namespace A109112.P8036387673841648545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164550 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109112.P8036387673841648545

namespace A109112

/-- `A164550(n)+∑[A158869(n)]` -/
def P8036387673841648545.Spec : Prop :=
  ∀ n, P8036387673841648545.a n = A109112 n

end A109112

/-! ## A109112.P3206551835229524694

`A164550(n)+A138395(n+1)`
-/

namespace A109112.P3206551835229524694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164550 n + A138395 (n + 1)

end

end A109112.P3206551835229524694

namespace A109112

/-- `A164550(n)+A138395(n+1)` -/
def P3206551835229524694.Spec : Prop :=
  ∀ n, P3206551835229524694.a n = A109112 n

end A109112

/-! ## A109112.P11901726983005022303

`3*A138395(n+1)-A158869(n)`
-/

namespace A109112.P11901726983005022303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138395 (n + 1) - A158869 n

end

end A109112.P11901726983005022303

namespace A109112

/-- `3*A138395(n+1)-A158869(n)` -/
def P11901726983005022303.Spec : Prop :=
  ∀ n, P11901726983005022303.a n = A109112 n

end A109112

/-! ## A109112.P273425035867564500

`A164550(n)+∑[A084120(n+1)/3]`
-/

namespace A109112.P273425035867564500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084120 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164550 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109112.P273425035867564500

namespace A109112

/-- `A164550(n)+∑[A084120(n+1)/3]` -/
def P273425035867564500.Spec : Prop :=
  ∀ n, P273425035867564500.a n = (A109112 n : ℚ)

end A109112

/-! ## A109112.P2549822483802143690

`A164550(n)+Δ[A077288(n)]*A056449(n)`
-/

namespace A109112.P2549822483802143690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164550 n + (f1 (n + 1) - f1 n) * A056449 n

end

end A109112.P2549822483802143690

namespace A109112

/-- `A164550(n)+Δ[A077288(n)]*A056449(n)` -/
def P2549822483802143690.Spec : Prop :=
  ∀ n, P2549822483802143690.a n = A109112 n

end A109112

/-!
# A109113: a(n) = 6*a(n-1) + 3*a(n-2), a(0)=2, a(1)=14.

The programs for A109113, the canonical program `A109113.P2288526901597345057` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109113 has offset 0).

The definition of A109113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+3*a(n-2)` (program `A109113.P2288526901597345057`, by `A109113.P2288526901597345057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109113.P2288526901597345057

`6*a(n-1)+3*a(n-2)` with `a(0)=2, a(1)=14`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109113

/-- `6*a(n-1)+3*a(n-2)` -/
def P2288526901597345057.Spec : Prop :=
  ∀ n, (P2288526901597345057.a n : ℤ) = A109113 n

theorem P2288526901597345057.correct : P2288526901597345057.Spec := by
  intro n
  simp only [A109113]

end A109113

/-! ## A109113.P7691582432426962959

`((3+2*sqrt(3))^(n+1)+(3-2*sqrt(3))^(n+1))/3`
-/

namespace A109113.P7691582432426962959
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (3 : ℝ)) ^ (n + 1) + (3 - 2 * Real.sqrt (3 : ℝ)) ^ (n + 1)) / 3

end

end A109113.P7691582432426962959

namespace A109113

/-- `((3+2*sqrt(3))^(n+1)+(3-2*sqrt(3))^(n+1))/3` -/
def P7691582432426962959.Spec : Prop :=
  ∀ n, P7691582432426962959.a n = (A109113 n : ℝ)

end A109113

/-! ## A109113.P10446354316683578772

`2*abs(A099842(n))`
-/

namespace A109113.P10446354316683578772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |A099842 n|

end

end A109113.P10446354316683578772

namespace A109113

/-- `2*abs(A099842(n))` -/
def P10446354316683578772.Spec : Prop :=
  ∀ n, P10446354316683578772.a n = A109113 n

end A109113

/-! ## A109113.P9503989209922336852

`2*A287811(n)`
-/

namespace A109113.P9503989209922336852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287811 n

end

end A109113.P9503989209922336852

namespace A109113

/-- `2*A287811(n)` -/
def P9503989209922336852.Spec : Prop :=
  ∀ n, P9503989209922336852.a n = A109113 n

end A109113

/-! ## A109113.P437224042310758700

`lcm(2, A099842(n))`
-/

namespace A109113.P437224042310758700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A099842 n)

end

end A109113.P437224042310758700

namespace A109113

/-- `lcm(2, A099842(n))` -/
def P437224042310758700.Spec : Prop :=
  ∀ n, (P437224042310758700.a n : ℤ) = A109113 n

end A109113

/-! ## A109113.P271772409365439237

`2*A027151(2*n)`
-/

namespace A109113.P271772409365439237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027151 (2 * n)

end

end A109113.P271772409365439237

namespace A109113

/-- `2*A027151(2*n)` -/
def P271772409365439237.Spec : Prop :=
  ∀ n, P271772409365439237.a n = A109113 n

end A109113

/-! ## A109113.P13943172685540177562

`2/3*A141041(n+1)`
-/

namespace A109113.P13943172685540177562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A141041 (n + 1) : ℚ)

end

end A109113.P13943172685540177562

namespace A109113

/-- `2/3*A141041(n+1)` -/
def P13943172685540177562.Spec : Prop :=
  ∀ n, P13943172685540177562.a n = (A109113 n : ℚ)

end A109113

/-! ## A109113.P7930312785530182451

`A141041(n+1)-A287811(n)`
-/

namespace A109113.P7930312785530182451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141041 (n + 1) - A287811 n

end

end A109113.P7930312785530182451

namespace A109113

/-- `A141041(n+1)-A287811(n)` -/
def P7930312785530182451.Spec : Prop :=
  ∀ n, P7930312785530182451.a n = A109113 n

end A109113

/-! ## A109113.P13669168899055455256

`A141041(n+1)-abs(A099842(n))`
-/

namespace A109113.P13669168899055455256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141041 (n + 1) - |A099842 n|

end

end A109113.P13669168899055455256

namespace A109113

/-- `A141041(n+1)-abs(A099842(n))` -/
def P13669168899055455256.Spec : Prop :=
  ∀ n, P13669168899055455256.a n = A109113 n

end A109113

/-! ## A109113.P2103942785290280823

`2*ratio[A057077(n)]*A099842(n)`
-/

namespace A109113.P2103942785290280823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A099842 n : ℚ))

end

end A109113.P2103942785290280823

namespace A109113

/-- `2*ratio[A057077(n)]*A099842(n)` -/
def P2103942785290280823.Spec : Prop :=
  ∀ n, P2103942785290280823.a n = (A109113 n : ℚ)

end A109113

/-!
# A109114: a(n) = 5*a(n-1) - 3*a(n-2), a(0)=1, a(1)=6.

The programs for A109114, the canonical program `A109114.P6754740154203123611` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109114 has offset 0).

The definition of A109114 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-3*a(n-2)` (program `A109114.P6754740154203123611`, by `A109114.P6754740154203123611.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109114.P6754740154203123611

`5*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109114

/-- `5*a(n-1)-3*a(n-2)` -/
def P6754740154203123611.Spec : Prop :=
  ∀ n, P6754740154203123611.a n = A109114 n

theorem P6754740154203123611.correct : P6754740154203123611.Spec := by
  intro n
  simp only [A109114]

end A109114

/-! ## A109114.P16122354040532876782

`((sqrt(13)+7)*((5+sqrt(13))/2)^n+(sqrt(13)-7)*((5-sqrt(13))/2)^n)/(2*sqrt(13))`
-/

namespace A109114.P16122354040532876782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (13 : ℝ) + 7) * ((5 + Real.sqrt (13 : ℝ)) / 2) ^ n + (Real.sqrt (13 : ℝ) - 7) * ((5 - Real.sqrt (13 : ℝ)) / 2) ^ n) / (2 * Real.sqrt (13 : ℝ))

end

end A109114.P16122354040532876782

namespace A109114

/-- `((sqrt(13)+7)*((5+sqrt(13))/2)^n+(sqrt(13)-7)*((5-sqrt(13))/2)^n)/(2*sqrt(13))` -/
def P16122354040532876782.Spec : Prop :=
  ∀ n, P16122354040532876782.a n = (A109114 n : ℝ)

end A109114

/-! ## A109114.P13372406515562793459

`A188707(n)+a(n-1)` with `a(0)=1`
-/

namespace A109114.P13372406515562793459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188707 n + a (n - 1)

end

end A109114.P13372406515562793459

namespace A109114

/-- `A188707(n)+a(n-1)` -/
def P13372406515562793459.Spec : Prop :=
  ∀ n, P13372406515562793459.a n = A109114 n

end A109114

/-! ## A109114.P12597995128283552622

`A081704(n)-A106732(n)`
-/

namespace A109114.P12597995128283552622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n - A106732 n

end

end A109114.P12597995128283552622

namespace A109114

/-- `A081704(n)-A106732(n)` -/
def P12597995128283552622.Spec : Prop :=
  ∀ n, P12597995128283552622.a n = A109114 n

end A109114

/-! ## A109114.P17716441447265415678

`A095939(n)*A122553(n)`
-/

namespace A109114.P17716441447265415678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 n * A122553 n

end

end A109114.P17716441447265415678

namespace A109114

/-- `A095939(n)*A122553(n)` -/
def P17716441447265415678.Spec : Prop :=
  ∀ n, P17716441447265415678.a n = A109114 n

end A109114

/-! ## A109114.P3193366305637195481

`∑[A095940(n)+A018902(n)]`
-/

namespace A109114.P3193366305637195481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n + A018902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109114.P3193366305637195481

namespace A109114

/-- `∑[A095940(n)+A018902(n)]` -/
def P3193366305637195481.Spec : Prop :=
  ∀ n, P3193366305637195481.a n = A109114 n

end A109114

/-! ## A109114.P17961081238874875857

`A010903(n)-A052961(n+1)`
-/

namespace A109114.P17961081238874875857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010903 n - A052961 (n + 1)

end

end A109114.P17961081238874875857

namespace A109114

/-- `A010903(n)-A052961(n+1)` -/
def P17961081238874875857.Spec : Prop :=
  ∀ n, P17961081238874875857.a n = A109114 n

end A109114

/-! ## A109114.P4666989558076919460

`A095939(n+1)-A081704(n)`
-/

namespace A109114.P4666989558076919460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 (n + 1) - A081704 n

end

end A109114.P4666989558076919460

namespace A109114

/-- `A095939(n+1)-A081704(n)` -/
def P4666989558076919460.Spec : Prop :=
  ∀ n, P4666989558076919460.a n = A109114 n

end A109114

/-! ## A109114.P18210061606490364831

`A228791(n+1)-A095939(n)`
-/

namespace A109114.P18210061606490364831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228791 (n + 1) - A095939 n

end

end A109114.P18210061606490364831

namespace A109114

/-- `A228791(n+1)-A095939(n)` -/
def P18210061606490364831.Spec : Prop :=
  ∀ n, P18210061606490364831.a n = A109114 n

end A109114

/-! ## A109114.P7559531920884620230

`(A040002(n)-1)*A095939(n)`
-/

namespace A109114.P7559531920884620230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040002 n - 1) * A095939 n

end

end A109114.P7559531920884620230

namespace A109114

/-- `(A040002(n)-1)*A095939(n)` -/
def P7559531920884620230.Spec : Prop :=
  ∀ n, P7559531920884620230.a n = A109114 n

end A109114

/-! ## A109114.P18376620126771239503

`2*A018902(n)-A052961(n)`
-/

namespace A109114.P18376620126771239503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018902 n - A052961 n

end

end A109114.P18376620126771239503

namespace A109114

/-- `2*A018902(n)-A052961(n)` -/
def P18376620126771239503.Spec : Prop :=
  ∀ n, P18376620126771239503.a n = A109114 n

end A109114

/-! ## A109114.P5654314745092187313

`2*A116415(n)-A018902(n)`
-/

namespace A109114.P5654314745092187313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116415 n - A018902 n

end

end A109114.P5654314745092187313

namespace A109114

/-- `2*A116415(n)-A018902(n)` -/
def P5654314745092187313.Spec : Prop :=
  ∀ n, P5654314745092187313.a n = A109114 n

end A109114

/-! ## A109114.P3079199466843029996

`∑[A095940(n)+∑[A095934(n)]]`
-/

namespace A109114.P3079199466843029996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109114.P3079199466843029996

namespace A109114

/-- `∑[A095940(n)+∑[A095934(n)]]` -/
def P3079199466843029996.Spec : Prop :=
  ∀ n, P3079199466843029996.a n = A109114 n

end A109114

/-! ## A109114.P3537505822117961069

`∑[A095940(n+1)+A095940(n)]`
-/

namespace A109114.P3537505822117961069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1) + A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109114.P3537505822117961069

namespace A109114

/-- `∑[A095940(n+1)+A095940(n)]` -/
def P3537505822117961069.Spec : Prop :=
  ∀ n, P3537505822117961069.a n = A109114 n

end A109114

/-! ## A109114.P17688454953660927462

`A095939(n+1)-∑[A095939(n)]`
-/

namespace A109114.P17688454953660927462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109114.P17688454953660927462

namespace A109114

/-- `A095939(n+1)-∑[A095939(n)]` -/
def P17688454953660927462.Spec : Prop :=
  ∀ n, P17688454953660927462.a n = A109114 n

end A109114

/-! ## A109114.P7375062706937391868

`A095934(n+1)-A052961(n+1)`
-/

namespace A109114.P7375062706937391868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 (n + 1) - A052961 (n + 1)

end

end A109114.P7375062706937391868

namespace A109114

/-- `A095934(n+1)-A052961(n+1)` -/
def P7375062706937391868.Spec : Prop :=
  ∀ n, P7375062706937391868.a n = A109114 n

end A109114

/-! ## A109114.P17088039862151174466

`A081704(n+1)-2*A081704(n)`
-/

namespace A109114.P17088039862151174466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 (n + 1) - 2 * A081704 n

end

end A109114.P17088039862151174466

namespace A109114

/-- `A081704(n+1)-2*A081704(n)` -/
def P17088039862151174466.Spec : Prop :=
  ∀ n, P17088039862151174466.a n = A109114 n

end A109114

/-! ## A109114.P10641516972543336833

`A014963(A048883(n))*A095939(n)`
-/

namespace A109114.P10641516972543336833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048883 n).toNat * A095939 n

end

end A109114.P10641516972543336833

namespace A109114

/-- `A014963(A048883(n))*A095939(n)` -/
def P10641516972543336833.Spec : Prop :=
  ∀ n, P10641516972543336833.a n = A109114 n

end A109114

/-! ## A109114.P4882554712241662469

`A038573(A035019(n))*A095939(n)`
-/

namespace A109114.P4882554712241662469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A035019 n).toNat * A095939 n

end

end A109114.P4882554712241662469

namespace A109114

/-- `A038573(A035019(n))*A095939(n)` -/
def P4882554712241662469.Spec : Prop :=
  ∀ n, P4882554712241662469.a n = A109114 n

end A109114

/-!
# A109115: a(n) = 4*a(n-1) + 3*a(n-2), a(0)=1, a(1)=6.

The programs for A109115, the canonical program `A109115.P8297353484505165164` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109115 has offset 0).

The definition of A109115 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+3*a(n-2)` (program `A109115.P8297353484505165164`, by `A109115.P8297353484505165164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109115.P8297353484505165164

`4*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109115

/-- `4*a(n-1)+3*a(n-2)` -/
def P8297353484505165164.Spec : Prop :=
  ∀ n, (P8297353484505165164.a n : ℤ) = A109115 n

theorem P8297353484505165164.correct : P8297353484505165164.Spec := by
  intro n
  simp only [A109115]

end A109115

/-! ## A109115.P12341520694883055432

`A015530(n+1)+2*A015530(n)`
-/

namespace A109115.P12341520694883055432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 (n + 1) + 2 * A015530 n

end

end A109115.P12341520694883055432

namespace A109115

/-- `A015530(n+1)+2*A015530(n)` -/
def P12341520694883055432.Spec : Prop :=
  ∀ n, P12341520694883055432.a n = A109115 n

end A109115

/-! ## A109115.P8832622859074401131

`((sqrt(7)+4)*(2+sqrt(7))^n+(sqrt(7)-4)*(2-sqrt(7))^n)/(2*sqrt(7))`
-/

namespace A109115.P8832622859074401131
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (7 : ℝ) + 4) * (2 + Real.sqrt (7 : ℝ)) ^ n + (Real.sqrt (7 : ℝ) - 4) * (2 - Real.sqrt (7 : ℝ)) ^ n) / (2 * Real.sqrt (7 : ℝ))

end

end A109115.P8832622859074401131

namespace A109115

/-- `((sqrt(7)+4)*(2+sqrt(7))^n+(sqrt(7)-4)*(2-sqrt(7))^n)/(2*sqrt(7))` -/
def P8832622859074401131.Spec : Prop :=
  ∀ n, P8832622859074401131.a n = (A109115 n : ℝ)

end A109115

/-! ## A109115.P1267949429853236300

`Δ[A122558(n)/2]`
-/

namespace A109115.P1267949429853236300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122558 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109115.P1267949429853236300

namespace A109115

/-- `Δ[A122558(n)/2]` -/
def P1267949429853236300.Spec : Prop :=
  ∀ n, P1267949429853236300.a n = (A109115 n : ℚ)

end A109115

/-! ## A109115.P3434691390788499173

`A126473(n)+A015530(n)`
-/

namespace A109115.P3434691390788499173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 n + A015530 n

end

end A109115.P3434691390788499173

namespace A109115

/-- `A126473(n)+A015530(n)` -/
def P3434691390788499173.Spec : Prop :=
  ∀ n, P3434691390788499173.a n = A109115 n

end A109115

/-! ## A109115.P5819959010881832264

`A122558(n)+A106570(n)`
-/

namespace A109115.P5819959010881832264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122558 n + A106570 n

end

end A109115.P5819959010881832264

namespace A109115

/-- `A122558(n)+A106570(n)` -/
def P5819959010881832264.Spec : Prop :=
  ∀ n, P5819959010881832264.a n = A109115 n

end A109115

/-! ## A109115.P6563375807730138658

`A106570(n)+Δ[A015530(n)]`
-/

namespace A109115.P6563375807730138658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106570 n + (f1 (n + 1) - f1 n)

end

end A109115.P6563375807730138658

namespace A109115

/-- `A106570(n)+Δ[A015530(n)]` -/
def P6563375807730138658.Spec : Prop :=
  ∀ n, P6563375807730138658.a n = A109115 n

end A109115

/-! ## A109115.P8857798254078511438

`A108851(n+1)-A126473(n)`
-/

namespace A109115.P8857798254078511438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 (n + 1) - A126473 n

end

end A109115.P8857798254078511438

namespace A109115

/-- `A108851(n+1)-A126473(n)` -/
def P8857798254078511438.Spec : Prop :=
  ∀ n, P8857798254078511438.a n = A109115 n

end A109115

/-! ## A109115.P13786835510904218863

`A086901(n+2)-A015530(n)`
-/

namespace A109115.P13786835510904218863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086901 (n + 2) - A015530 n

end

end A109115.P13786835510904218863

namespace A109115

/-- `A086901(n+2)-A015530(n)` -/
def P13786835510904218863.Spec : Prop :=
  ∀ n, P13786835510904218863.a n = A109115 n

end A109115

/-! ## A109115.P13743185975354163356

`A015530(n)+A108851(n)+A106570(n)`
-/

namespace A109115.P13743185975354163356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 n + (A108851 n + A106570 n)

end

end A109115.P13743185975354163356

namespace A109115

/-- `A015530(n)+A108851(n)+A106570(n)` -/
def P13743185975354163356.Spec : Prop :=
  ∀ n, P13743185975354163356.a n = A109115 n

end A109115

/-! ## A109115.P10233830966502789901

`A080042(n)+A106570(n)-A086901(n+1)`
-/

namespace A109115.P10233830966502789901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080042 n + (A106570 n - A086901 (n + 1))

end

end A109115.P10233830966502789901

namespace A109115

/-- `A080042(n)+A106570(n)-A086901(n+1)` -/
def P10233830966502789901.Spec : Prop :=
  ∀ n, P10233830966502789901.a n = A109115 n

end A109115

/-! ## A109115.P6394346477127340304

`A108851(n+1)-(A108851(n)+A106570(n))`
-/

namespace A109115.P6394346477127340304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 (n + 1) - (A108851 n + A106570 n)

end

end A109115.P6394346477127340304

namespace A109115

/-- `A108851(n+1)-(A108851(n)+A106570(n))` -/
def P6394346477127340304.Spec : Prop :=
  ∀ n, P6394346477127340304.a n = A109115 n

end A109115

/-! ## A109115.P7838146553660184208

`A086901(n+1)+A086901(n+2)-A108851(n)`
-/

namespace A109115.P7838146553660184208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086901 (n + 1) + (A086901 (n + 2) - A108851 n)

end

end A109115.P7838146553660184208

namespace A109115

/-- `A086901(n+1)+A086901(n+2)-A108851(n)` -/
def P7838146553660184208.Spec : Prop :=
  ∀ n, P7838146553660184208.a n = A109115 n

end A109115

/-! ## A109115.P275059726963647935

`Δ[A080042(n)/2]-A106570(n)`
-/

namespace A109115.P275059726963647935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080042 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A106570 n : ℚ)

end

end A109115.P275059726963647935

namespace A109115

/-- `Δ[A080042(n)/2]-A106570(n)` -/
def P275059726963647935.Spec : Prop :=
  ∀ n, P275059726963647935.a n = (A109115 n : ℚ)

end A109115

/-! ## A109115.P11861313939152854351

`A126473(n+1)-(A126473(n)+A106570(n+1))`
-/

namespace A109115.P11861313939152854351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 (n + 1) - (A126473 n + A106570 (n + 1))

end

end A109115.P11861313939152854351

namespace A109115

/-- `A126473(n+1)-(A126473(n)+A106570(n+1))` -/
def P11861313939152854351.Spec : Prop :=
  ∀ n, P11861313939152854351.a n = A109115 n

end A109115

/-!
# A109116: a(n) = (n+1)^3*(n+2)^2*(n+5).

The programs for A109116, the canonical program `A109116.P8440730862832983965` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109116 has offset 0).

The definition of A109116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3*(n+2)²*(n+5)` (program `A109116.P8440730862832983965`, by `A109116.P8440730862832983965.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109116.P8440730862832983965

`(n+1)^3*(n+2)²*(n+5)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109116

/-- `(n+1)^3*(n+2)²*(n+5)` -/
def P8440730862832983965.Spec : Prop :=
  ∀ n, (P8440730862832983965.a n : ℤ) = A109116 n

theorem P8440730862832983965.correct : P8440730862832983965.Spec := by
  intro n
  simp only [A109116]

end A109116

/-! ## A109116.P11890383897723594936

`∑[A028896(n+1)]²-A046092(n+1)²`
-/

namespace A109116.P11890383897723594936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A046092 (n + 1) ^ 2

end

end A109116.P11890383897723594936

namespace A109116

/-- `∑[A028896(n+1)]²-A046092(n+1)²` -/
def P11890383897723594936.Spec : Prop :=
  ∀ n, P11890383897723594936.a n = A109116 n

end A109116

/-! ## A109116.P13947785226614047714

`A058794(Δ[n²])+A058794(n)²-2`
-/

namespace A109116.P13947785226614047714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058794 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A058794 n ^ 2 - 2

end

end A109116.P13947785226614047714

namespace A109116

/-- `A058794(Δ[n²])+A058794(n)²-2` -/
def P13947785226614047714.Spec : Prop :=
  ∀ n, P13947785226614047714.a n = A109116 n

end A109116

/-! ## A109116.P12073063007333895107

`A058794(2*n+1)+A058794(n)²-2`
-/

namespace A109116.P12073063007333895107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058794 (2 * n + 1) + (A058794 n ^ 2 - 2)

end

end A109116.P12073063007333895107

namespace A109116

/-- `A058794(2*n+1)+A058794(n)²-2` -/
def P12073063007333895107.Spec : Prop :=
  ∀ n, P12073063007333895107.a n = A109116 n

end A109116

/-! ## A109116.P8120662851185883242

`A058794(2*n+1)+A058794(A028347(n+2))`
-/

namespace A109116.P8120662851185883242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058794 (2 * n + 1) + A058794 (A028347 (n + 2)).toNat

end

end A109116.P8120662851185883242

namespace A109116

/-- `A058794(2*n+1)+A058794(A028347(n+2))` -/
def P8120662851185883242.Spec : Prop :=
  ∀ n, P8120662851185883242.a n = A109116 n

end A109116

/-!
# A109117: a(n) = (n+1)^3*(2n+1)(5n+1).

The programs for A109117, the canonical program `A109117.P13693145344923721311` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109117 has offset 0).

The definition of A109117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3*(2*n+1)*(5*n+1)` (program `A109117.P13693145344923721311`, by `A109117.P13693145344923721311.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109117.P18028217094495900698

`(2*n+1)*(5*n+1)*(n+1)^3`
-/

namespace A109117.P18028217094495900698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((5 * n + 1) * (n + 1) ^ 3)

end

end A109117.P18028217094495900698

namespace A109117

/-- `(2*n+1)*(5*n+1)*(n+1)^3` -/
def P18028217094495900698.Spec : Prop :=
  ∀ n, (P18028217094495900698.a n : ℤ) = A109117 n

theorem P18028217094495900698.correct : P18028217094495900698.Spec := by
  intro n
  simp only [A109117, Nat.add_sub_cancel, A109117.P18028217094495900698.a, A109117.P13693145344923721311.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A109117

/-! ## A109117.P13693145344923721311

`(n+1)^3*(2*n+1)*(5*n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109117

/-- `(n+1)^3*(2*n+1)*(5*n+1)` -/
def P13693145344923721311.Spec : Prop :=
  ∀ n, (P13693145344923721311.a n : ℤ) = A109117 n

theorem P13693145344923721311.correct : P13693145344923721311.Spec := by
  intro n
  simp only [A109117]

end A109117

/-!
# A109118: a(n) = 2*(n^2 + 3*n + 1)^3.

The programs for A109118, the canonical program `A109118.P764154899245515744` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109118 has offset 0).

The definition of A109118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n²+3*n+1)^3` (program `A109118.P764154899245515744`, by `A109118.P764154899245515744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109118.P764154899245515744

`2*(n²+3*n+1)^3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109118

/-- `2*(n²+3*n+1)^3` -/
def P764154899245515744.Spec : Prop :=
  ∀ n, (P764154899245515744.a n : ℤ) = A109118 n

theorem P764154899245515744.correct : P764154899245515744.Spec := by
  intro n
  simp only [A109118]

end A109118

/-! ## A109118.P15212167559469096550

`lcm(2, ((n+1)²+n)^3)`
-/

namespace A109118.P15212167559469096550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (((n + 1) ^ 2 + n) ^ 3)

end

end A109118.P15212167559469096550

namespace A109118

/-- `lcm(2, ((n+1)²+n)^3)` -/
def P15212167559469096550.Spec : Prop :=
  ∀ n, (P15212167559469096550.a n : ℤ) = A109118 n

end A109118

/-! ## A109118.P17500445026427835596

`A090288(n)^3/4`
-/

namespace A109118.P17500445026427835596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090288 n ^ 3 : ℚ) / 4

end

end A109118.P17500445026427835596

namespace A109118

/-- `A090288(n)^3/4` -/
def P17500445026427835596.Spec : Prop :=
  ∀ n, P17500445026427835596.a n = (A109118 n : ℚ)

end A109118

/-! ## A109118.P17281247436802709250

`abs((∑[4*(n+1)]-2)*A062938(n))`
-/

namespace A109118.P17281247436802709250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) * A062938 n|

end

end A109118.P17281247436802709250

namespace A109118

/-- `abs((∑[4*(n+1)]-2)*A062938(n))` -/
def P17281247436802709250.Spec : Prop :=
  ∀ n, P17281247436802709250.a n = A109118 n

end A109118

/-! ## A109118.P3636374884530831751

`((n+1)²+n)²+((n+1)²+n)²*A059993(n)`
-/

namespace A109118.P3636374884530831751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 + n) ^ 2 : ℤ) + (((n + 1) ^ 2 + n) ^ 2 : ℤ) * A059993 n

end

end A109118.P3636374884530831751

namespace A109118

/-- `((n+1)²+n)²+((n+1)²+n)²*A059993(n)` -/
def P3636374884530831751.Spec : Prop :=
  ∀ n, P3636374884530831751.a n = A109118 n

end A109118

/-! ## A109118.P3264329960735296191

`A016827(C(n+2, 2)-1)/4`
-/

namespace A109118.P3264329960735296191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016827 (Nat.choose (n + 2) 2 - 1) : ℚ) / 4

end

end A109118.P3264329960735296191

namespace A109118

/-- `A016827(C(n+2, 2)-1)/4` -/
def P3264329960735296191.Spec : Prop :=
  ∀ n, P3264329960735296191.a n = (A109118 n : ℚ)

end A109118

/-! ## A109118.P9741422195534509456

`A016827(A000096(n))/4`
-/

namespace A109118.P9741422195534509456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016827 (A000096 n).toNat : ℚ) / 4

end

end A109118.P9741422195534509456

namespace A109118

/-- `A016827(A000096(n))/4` -/
def P9741422195534509456.Spec : Prop :=
  ∀ n, P9741422195534509456.a n = (A109118 n : ℚ)

end A109118

/-! ## A109118.P7716989888938054229

`A033431((n+1)²+n)`
-/

namespace A109118.P7716989888938054229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 ((n + 1) ^ 2 + n)

end

end A109118.P7716989888938054229

namespace A109118

/-- `A033431((n+1)²+n)` -/
def P7716989888938054229.Spec : Prop :=
  ∀ n, P7716989888938054229.a n = A109118 n

end A109118

/-! ## A109118.P15222556599995331316

`A007588((n+1)²+n)+(n+1)²+n`
-/

namespace A109118.P15222556599995331316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 ((n + 1) ^ 2 + n) + ((n + 1) ^ 2 + n : ℤ)

end

end A109118.P15222556599995331316

namespace A109118

/-- `A007588((n+1)²+n)+(n+1)²+n` -/
def P15222556599995331316.Spec : Prop :=
  ∀ n, P15222556599995331316.a n = A109118 n

end A109118

/-! ## A109118.P17598637435179362783

`A005996(A059993(n))`
-/

namespace A109118.P17598637435179362783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005996 (A059993 n).toNat

end

end A109118.P17598637435179362783

namespace A109118

/-- `A005996(A059993(n))` -/
def P17598637435179362783.Spec : Prop :=
  ∀ n, P17598637435179362783.a n = A109118 n

end A109118

/-!
# A109119: a(n) = 2(5n^2 + 5n + 1)^3.

The programs for A109119, the canonical program `A109119.P15043757018587635707` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109119 has offset 0).

The definition of A109119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(5*n²+5*n+1)^3` (program `A109119.P15043757018587635707`, by `A109119.P15043757018587635707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109119.P15043757018587635707

`2*(5*n²+5*n+1)^3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109119

/-- `2*(5*n²+5*n+1)^3` -/
def P15043757018587635707.Spec : Prop :=
  ∀ n, (P15043757018587635707.a n : ℤ) = A109119 n

theorem P15043757018587635707.correct : P15043757018587635707.Spec := by
  intro n
  simp only [A109119]

end A109119

/-! ## A109119.P7374124648691112347

`A273366(n)^3/4`
-/

namespace A109119.P7374124648691112347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273366 n ^ 3 : ℚ) / 4

end

end A109119.P7374124648691112347

namespace A109119

/-- `A273366(n)^3/4` -/
def P7374124648691112347.Spec : Prop :=
  ∀ n, P7374124648691112347.a n = (A109119 n : ℚ)

end A109119

/-! ## A109119.P6178830377961318541

`lcm(2, A062786(n+1)^3)`
-/

namespace A109119.P6178830377961318541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A062786 (n + 1) ^ 3)

end

end A109119.P6178830377961318541

namespace A109119

/-- `lcm(2, A062786(n+1)^3)` -/
def P6178830377961318541.Spec : Prop :=
  ∀ n, (P6178830377961318541.a n : ℤ) = A109119 n

end A109119

/-! ## A109119.P15883370062660071911

`ceil(((A001545(n)+1)/5)²*A273366(n))`
-/

namespace A109119.P15883370062660071911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A001545 n + 1 : ℚ) / 5) ^ 2 * (A273366 n : ℚ)⌉

end

end A109119.P15883370062660071911

namespace A109119

/-- `ceil(((A001545(n)+1)/5)²*A273366(n))` -/
def P15883370062660071911.Spec : Prop :=
  ∀ n, P15883370062660071911.a n = A109119 n

end A109119

/-! ## A109119.P10864891751430946323

`ceil((A005904(n)/(2*n+1))²*A273366(n))`
-/

namespace A109119.P10864891751430946323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A005904 n : ℚ) / (2 * n + 1 : ℚ)) ^ 2 * (A273366 n : ℚ)⌉

end

end A109119.P10864891751430946323

namespace A109119

/-- `ceil((A005904(n)/(2*n+1))²*A273366(n))` -/
def P10864891751430946323.Spec : Prop :=
  ∀ n, P10864891751430946323.a n = A109119 n

end A109119

/-! ## A109119.P10536895705591774653

`lcm(2, A017283(∑[n]))`
-/

namespace A109119.P10536895705591774653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A017283 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A109119.P10536895705591774653

namespace A109119

/-- `lcm(2, A017283(∑[n]))` -/
def P10536895705591774653.Spec : Prop :=
  ∀ n, (P10536895705591774653.a n : ℤ) = A109119 n

end A109119

/-! ## A109119.P15969538284749313991

`or(2, 2*A017283(A000217(n)))`
-/

namespace A109119.P15969538284749313991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (2 * A017283 (A000217 n).toNat)

end

end A109119.P15969538284749313991

namespace A109119

/-- `or(2, 2*A017283(A000217(n)))` -/
def P15969538284749313991.Spec : Prop :=
  ∀ n, P15969538284749313991.a n = A109119 n

end A109119

/-! ## A109119.P7866888893298228962

`A017295(∑[2*n])/4`
-/

namespace A109119.P7866888893298228962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017295 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A109119.P7866888893298228962

namespace A109119

/-- `A017295(∑[2*n])/4` -/
def P7866888893298228962.Spec : Prop :=
  ∀ n, P7866888893298228962.a n = (A109119 n : ℚ)

end A109119

/-!
# A109120: a(n) = 10*(n+1)^3*(n+2)*(5*n+7)^2.

The programs for A109120, the canonical program `A109120.P16950611647543865622` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109120 has offset 0).

The definition of A109120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*(n+1)^3*(n+2)*(5*n+7)²` (program `A109120.P16950611647543865622`, by `A109120.P16950611647543865622.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109120.P16950611647543865622

`10*(n+1)^3*(n+2)*(5*n+7)²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109120

/-- `10*(n+1)^3*(n+2)*(5*n+7)²` -/
def P16950611647543865622.Spec : Prop :=
  ∀ n, (P16950611647543865622.a n : ℤ) = A109120 n

theorem P16950611647543865622.correct : P16950611647543865622.Spec := by
  intro n
  simp only [A109120]

end A109120

/-!
# A109121: a(n) = 10(n+1)^3*(2n+1)(7n+5)^2.

The programs for A109121, the canonical program `A109121.P8745601590929156964` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109121 has offset 0).

The definition of A109121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*(n+1)^3*(2*n+1)*(7*n+5)²` (program `A109121.P8745601590929156964`, by `A109121.P8745601590929156964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109121.P8745601590929156964

`10*(n+1)^3*(2*n+1)*(7*n+5)²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109121

/-- `10*(n+1)^3*(2*n+1)*(7*n+5)²` -/
def P8745601590929156964.Spec : Prop :=
  ∀ n, (P8745601590929156964.a n : ℤ) = A109121 n

theorem P8745601590929156964.correct : P8745601590929156964.Spec := by
  intro n
  simp only [A109121]

end A109121

/-!
# A109122: a(n) = 4*(n+1)^2*(3*n+1)^2*(12*n^2+20*n+5).

The programs for A109122, the canonical program `A109122.P7381531395743788721` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109122 has offset 0).

The definition of A109122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²*(3*n+1)²*(12*n²+20*n+5)` (program `A109122.P7381531395743788721`, by `A109122.P7381531395743788721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109122.P7381531395743788721

`4*(n+1)²*(3*n+1)²*(12*n²+20*n+5)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109122

/-- `4*(n+1)²*(3*n+1)²*(12*n²+20*n+5)` -/
def P7381531395743788721.Spec : Prop :=
  ∀ n, (P7381531395743788721.a n : ℤ) = A109122 n

theorem P7381531395743788721.correct : P7381531395743788721.Spec := by
  intro n
  simp only [A109122]

end A109122

/-!
# A109123: a(n) = 4*(n+1)^2*(n+3)^2*(5*n^2 + 20*n + 12).

The programs for A109123, the canonical program `A109123.P2147839522421020477` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109123 has offset 0).

The definition of A109123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²*(n+3)²*(5*n²+20*n+12)` (program `A109123.P2147839522421020477`, by `A109123.P2147839522421020477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109123.P2147839522421020477

`4*(n+1)²*(n+3)²*(5*n²+20*n+12)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109123

/-- `4*(n+1)²*(n+3)²*(5*n²+20*n+12)` -/
def P2147839522421020477.Spec : Prop :=
  ∀ n, (P2147839522421020477.a n : ℤ) = A109123 n

theorem P2147839522421020477.correct : P2147839522421020477.Spec := by
  intro n
  simp only [A109123]

end A109123

/-!
# A109127: Expansion of q^(-1/8) * (eta(q^3) - eta(q)^3) / 3 in powers of q.

The programs for A109127, the canonical program `A109127.P1890116283645381104` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109127 has offset 1).

The definition of A109127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109127.P1890116283645381104

`round(-A010816(n+1)/3)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109127

/-- `round(-A010816(n+1)/3)` -/
def P1890116283645381104.Spec : Prop :=
  ∀ n, P1890116283645381104.a n = A109127 (n + 1)

theorem P1890116283645381104.correct : P1890116283645381104.Spec := by
  intro n
  simp only [A109127, Nat.add_sub_cancel]

end A109127

/-! ## A109127.P14403461582057007237

`floor(Δ[A211394(n+1)]/3)`
-/

namespace A109127.P14403461582057007237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 3⌋

end

end A109127.P14403461582057007237

namespace A109127

/-- `floor(Δ[A211394(n+1)]/3)` -/
def P14403461582057007237.Spec : Prop :=
  ∀ n, P14403461582057007237.a n = A109127 (n + 1)

end A109127

/-! ## A109127.P15275771638410508768

`floor(-∑[Δ[A010816(n)]/3])`
-/

namespace A109127.P15275771638410508768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-(∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A109127.P15275771638410508768

namespace A109127

/-- `floor(-∑[Δ[A010816(n)]/3])` -/
def P15275771638410508768.Spec : Prop :=
  ∀ n, P15275771638410508768.a n = A109127 (n + 1)

end A109127

/-! ## A109127.P13828514587879819459

`floor(Δ[A274093(n+1)+2+n]/3)`
-/

namespace A109127.P13828514587879819459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274093 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 3⌋

end

end A109127.P13828514587879819459

namespace A109127

/-- `floor(Δ[A274093(n+1)+2+n]/3)` -/
def P13828514587879819459.Spec : Prop :=
  ∀ n, P13828514587879819459.a n = A109127 (n + 1)

end A109127

/-! ## A109127.P1845393359820319459

`floor(Δ[A221216(A056023(n+1))]/3)`
-/

namespace A109127.P1845393359820319459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 (A056023 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 3⌋

end

end A109127.P1845393359820319459

namespace A109127

/-- `floor(Δ[A221216(A056023(n+1))]/3)` -/
def P1845393359820319459.Spec : Prop :=
  ∀ n, P1845393359820319459.a n = A109127 (n + 1)

end A109127

/-! ## A109127.P12316206135097889886

`Δ[A201208(n+1)]*A181019(n+1)`
-/

namespace A109127.P12316206135097889886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A181019 (n + 1)

end

end A109127.P12316206135097889886

namespace A109127

/-- `Δ[A201208(n+1)]*A181019(n+1)` -/
def P12316206135097889886.Spec : Prop :=
  ∀ n, P12316206135097889886.a n = A109127 (n + 1)

end A109127

/-! ## A109127.P2015997100985289522

`Δ[A201208(n+1)]*A000196(n+2)`
-/

namespace A109127.P2015997100985289522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000196 (n + 2)

end

end A109127.P2015997100985289522

namespace A109127

/-- `Δ[A201208(n+1)]*A000196(n+2)` -/
def P2015997100985289522.Spec : Prop :=
  ∀ n, P2015997100985289522.a n = A109127 (n + 1)

end A109127

/-! ## A109127.P17142748684688345612

`Δ[A003056(n)%2]*A000196(n+2)`
-/

namespace A109127.P17142748684688345612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000196 (n + 2)

end

end A109127.P17142748684688345612

namespace A109127

/-- `Δ[A003056(n)%2]*A000196(n+2)` -/
def P17142748684688345612.Spec : Prop :=
  ∀ n, P17142748684688345612.a n = A109127 (n + 1)

end A109127

/-! ## A109127.P14221159339305842851

`A000196(n+2)*A213369(A130123(n))`
-/

namespace A109127.P14221159339305842851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 2) * A213369 (A130123 n).toNat

end

end A109127.P14221159339305842851

namespace A109127

/-- `A000196(n+2)*A213369(A130123(n))` -/
def P14221159339305842851.Spec : Prop :=
  ∀ n, P14221159339305842851.a n = A109127 (n + 1)

end A109127

/-! ## A109127.P410820890876331648

`Δ[A000212(A002024(n+1))]*A065109(n)`
-/

namespace A109127.P410820890876331648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A065109 n

end

end A109127.P410820890876331648

namespace A109127

/-- `Δ[A000212(A002024(n+1))]*A065109(n)` -/
def P410820890876331648.Spec : Prop :=
  ∀ n, P410820890876331648.a n = A109127 (n + 1)

end A109127

/-! ## A109127.P1214668185807986296

`Δ[A000212(A002024(n+1))]*A066667(n)`
-/

namespace A109127.P1214668185807986296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A066667 n

end

end A109127.P1214668185807986296

namespace A109127

/-- `Δ[A000212(A002024(n+1))]*A066667(n)` -/
def P1214668185807986296.Spec : Prop :=
  ∀ n, P1214668185807986296.a n = A109127 (n + 1)

end A109127

/-! ## A109127.P13242968244082866381

`A001478(A000196(n+2))*A197870(n+1)`
-/

namespace A109127.P13242968244082866381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A000196 (n + 2)).toNat * A197870 (n + 1)

end

end A109127.P13242968244082866381

namespace A109127

/-- `A001478(A000196(n+2))*A197870(n+1)` -/
def P13242968244082866381.Spec : Prop :=
  ∀ n, P13242968244082866381.a n = A109127 (n + 1)

end A109127

/-!
# A109128: Triangle read by rows: T(n,k) = T(n-1,k-1) + T(n-1,k) + 1 for 0

The programs for A109128, the canonical program `A109128.P11896187039746255515` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109128 has offset 0).

The definition of A109128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109128.P11896187039746255515

`A028326(n)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A109128

/-- `A028326(n)-1` -/
def P11896187039746255515.Spec : Prop :=
  ∀ n, P11896187039746255515.a n = A109128 n

theorem P11896187039746255515.correct : P11896187039746255515.Spec := by
  intro n
  simp only [A109128]

end A109128

/-! ## A109128.P5967557874389506504

`or(1, A132731(n))`
-/

namespace A109128.P5967557874389506504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A132731 n)

end

end A109128.P5967557874389506504

namespace A109128

/-- `or(1, A132731(n))` -/
def P5967557874389506504.Spec : Prop :=
  ∀ n, P5967557874389506504.a n = A109128 n

end A109128

/-! ## A109128.P13318304315999541435

`floor(sqrt(A141596(n)))`
-/

namespace A109128.P13318304315999541435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A141596 n)

end

end A109128.P13318304315999541435

namespace A109128

/-- `floor(sqrt(A141596(n)))` -/
def P13318304315999541435.Spec : Prop :=
  ∀ n, P13318304315999541435.a n = A109128 n

end A109128

/-! ## A109128.P16257635490273691498

`ceil(A131061(n)/2)`
-/

namespace A109128.P16257635490273691498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131061 n : ℚ) / 2⌉

end

end A109128.P16257635490273691498

namespace A109128

/-- `ceil(A131061(n)/2)` -/
def P16257635490273691498.Spec : Prop :=
  ∀ n, P16257635490273691498.a n = A109128 n

end A109128

/-! ## A109128.P10760825457247210348

`ceil(A131065(n)/3)`
-/

namespace A109128.P10760825457247210348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131065 n : ℚ) / 3⌉

end

end A109128.P10760825457247210348

namespace A109128

/-- `ceil(A131065(n)/3)` -/
def P10760825457247210348.Spec : Prop :=
  ∀ n, P10760825457247210348.a n = A109128 n

end A109128

/-! ## A109128.P14000424734913575303

`2*A014473(n)+1`
-/

namespace A109128.P14000424734913575303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014473 n + 1

end

end A109128.P14000424734913575303

namespace A109128

/-- `2*A014473(n)+1` -/
def P14000424734913575303.Spec : Prop :=
  ∀ n, P14000424734913575303.a n = A109128 n

end A109128

/-! ## A109128.P11831197140942236435

`2*A007318(n)-1`
-/

namespace A109128.P11831197140942236435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - 1

end

end A109128.P11831197140942236435

namespace A109128

/-- `2*A007318(n)-1` -/
def P11831197140942236435.Spec : Prop :=
  ∀ n, P11831197140942236435.a n = A109128 n

end A109128

/-! ## A109128.P9677079009310888877

`(A168625(n)+3)/4`
-/

namespace A109128.P9677079009310888877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168625 n + 3 : ℚ) / 4

end

end A109128.P9677079009310888877

namespace A109128

/-- `(A168625(n)+3)/4` -/
def P9677079009310888877.Spec : Prop :=
  ∀ n, P9677079009310888877.a n = (A109128 n : ℚ)

end A109128

/-! ## A109128.P16306605988750596873

`lcm(2, A124927(n))-1`
-/

namespace A109128.P16306605988750596873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A124927 n) : ℤ) - 1

end

end A109128.P16306605988750596873

namespace A109128

/-- `lcm(2, A124927(n))-1` -/
def P16306605988750596873.Spec : Prop :=
  ∀ n, P16306605988750596873.a n = A109128 n

end A109128

/-! ## A109128.P8847549319696338848

`or(1, A131087(n)-1)`
-/

namespace A109128.P8847549319696338848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A131087 n - 1)

end

end A109128.P8847549319696338848

namespace A109128

/-- `or(1, A131087(n)-1)` -/
def P8847549319696338848.Spec : Prop :=
  ∀ n, P8847549319696338848.a n = A109128 n

end A109128

/-! ## A109128.P14782791566457886133

`or(1, A132046(n)-1)`
-/

namespace A109128.P14782791566457886133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A132046 n - 1)

end

end A109128.P14782791566457886133

namespace A109128

/-- `or(1, A132046(n)-1)` -/
def P14782791566457886133.Spec : Prop :=
  ∀ n, P14782791566457886133.a n = A109128 n

end A109128

/-! ## A109128.P10091302253275638092

`or(1, A134058(n)-1)`
-/

namespace A109128.P10091302253275638092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A134058 n - 1)

end

end A109128.P10091302253275638092

namespace A109128

/-- `or(1, A134058(n)-1)` -/
def P10091302253275638092.Spec : Prop :=
  ∀ n, P10091302253275638092.a n = A109128 n

end A109128

/-! ## A109128.P10133190053414927046

`abs(2*A108086(n))-1`
-/

namespace A109128.P10133190053414927046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A108086 n| - 1

end

end A109128.P10133190053414927046

namespace A109128

/-- `abs(2*A108086(n))-1` -/
def P10133190053414927046.Spec : Prop :=
  ∀ n, P10133190053414927046.a n = A109128 n

end A109128

/-! ## A109128.P6156051697245063348

`abs(2*A130595(n))-1`
-/

namespace A109128.P6156051697245063348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A130595 n| - 1

end

end A109128.P6156051697245063348

namespace A109128

/-- `abs(2*A130595(n))-1` -/
def P6156051697245063348.Spec : Prop :=
  ∀ n, P6156051697245063348.a n = A109128 n

end A109128

/-! ## A109128.P8776280904370525858

`2*sqrt(A008459(n))-1`
-/

namespace A109128.P8776280904370525858
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A008459 n : ℝ) - 1

end

end A109128.P8776280904370525858

namespace A109128

/-- `2*sqrt(A008459(n))-1` -/
def P8776280904370525858.Spec : Prop :=
  ∀ n, P8776280904370525858.a n = (A109128 n : ℝ)

end A109128

/-! ## A109128.P4192135403602674089

`Δ[2*A102363(n)]-1`
-/

namespace A109128.P4192135403602674089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A109128.P4192135403602674089

namespace A109128

/-- `Δ[2*A102363(n)]-1` -/
def P4192135403602674089.Spec : Prop :=
  ∀ n, P4192135403602674089.a n = A109128 n

end A109128

/-! ## A109128.P7382551247087615372

`A014473(n)+A007318(n)`
-/

namespace A109128.P7382551247087615372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A007318 n

end

end A109128.P7382551247087615372

namespace A109128

/-- `A014473(n)+A007318(n)` -/
def P7382551247087615372.Spec : Prop :=
  ∀ n, P7382551247087615372.a n = A109128 n

end A109128

/-! ## A109128.P6310942414538510247

`A134058(n)+A057428(n)`
-/

namespace A109128.P6310942414538510247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n + A057428 n

end

end A109128.P6310942414538510247

namespace A109128

/-- `A134058(n)+A057428(n)` -/
def P6310942414538510247.Spec : Prop :=
  ∀ n, P6310942414538510247.a n = A109128 n

end A109128

/-! ## A109128.P18316325002431400368

`A014430(n)-A051601(n)`
-/

namespace A109128.P18316325002431400368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n - A051601 n

end

end A109128.P18316325002431400368

namespace A109128

/-- `A014430(n)-A051601(n)` -/
def P18316325002431400368.Spec : Prop :=
  ∀ n, P18316325002431400368.a n = A109128 n

end A109128

/-! ## A109128.P3743660907377350331

`A131060(n)-A014473(n)`
-/

namespace A109128.P3743660907377350331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n - A014473 n

end

end A109128.P3743660907377350331

namespace A109128

/-- `A131060(n)-A014473(n)` -/
def P3743660907377350331.Spec : Prop :=
  ∀ n, P3743660907377350331.a n = A109128 n

end A109128

/-!
# A109129: Width (i.e., number of non-root vertices having degree 1) of the rooted tree with Matula-Goebel number n.

The programs for A109129, the canonical program `A109129.P9898652550391363242` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109129 has offset 1).

The definition of A109129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109129.P9898652550391363242

`val(A324922(n+1), 2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A109129

/-- `val(A324922(n+1), 2)` -/
def P9898652550391363242.Spec : Prop :=
  ∀ n, (P9898652550391363242.a n : ℤ) = A109129 (n + 1)

theorem P9898652550391363242.correct : P9898652550391363242.Spec := by
  intro n
  simp only [A109129, Nat.add_sub_cancel]

end A109129

/-! ## A109129.P9613187484581504425

`A196050(n+1)-A366388(n+1)`
-/

namespace A109129.P9613187484581504425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) - A366388 (n + 1)

end

end A109129.P9613187484581504425

namespace A109129

/-- `A196050(n+1)-A366388(n+1)` -/
def P9613187484581504425.Spec : Prop :=
  ∀ n, P9613187484581504425.a n = A109129 (n + 1)

end A109129

/-! ## A109129.P11088708480699628031

`(A061775(n+1)-A342507(n+1))%(n+1)`
-/

namespace A109129.P11088708480699628031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061775 (n + 1) - A342507 (n + 1)) (n + 1 : ℤ)

end

end A109129.P11088708480699628031

namespace A109129

/-- `(A061775(n+1)-A342507(n+1))%(n+1)` -/
def P11088708480699628031.Spec : Prop :=
  ∀ n, P11088708480699628031.a n = A109129 (n + 1)

end A109129

/-! ## A109129.P11357696457091661747

`A061775(n+1)-A061775(A198328(n+1))`
-/

namespace A109129.P11357696457091661747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A061775 (A198328 (n + 1)).toNat

end

end A109129.P11357696457091661747

namespace A109129

/-- `A061775(n+1)-A061775(A198328(n+1))` -/
def P11357696457091661747.Spec : Prop :=
  ∀ n, P11357696457091661747.a n = A109129 (n + 1)

end A109129

/-! ## A109129.P16819331188920905979

`A196048(n+1)-A196048(A003963(n+1))`
-/

namespace A109129.P16819331188920905979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (n + 1) - A196048 (A003963 (n + 1)).toNat

end

end A109129.P16819331188920905979

namespace A109129

/-- `A196048(n+1)-A196048(A003963(n+1))` -/
def P16819331188920905979.Spec : Prop :=
  ∀ n, P16819331188920905979.a n = A109129 (n + 1)

end A109129

/-! ## A109129.P15676811349299097510

`A061775(n+1)-A342507(2*(n+1))`
-/

namespace A109129.P15676811349299097510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A342507 (2 * (n + 1))

end

end A109129.P15676811349299097510

namespace A109129

/-- `A061775(n+1)-A342507(2*(n+1))` -/
def P15676811349299097510.Spec : Prop :=
  ∀ n, P15676811349299097510.a n = A109129 (n + 1)

end A109129

/-! ## A109129.P1518829703295648616

`A196050(n+1)+1-A342507(2*(n+1))`
-/

namespace A109129.P1518829703295648616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + 1 - A342507 (2 * (n + 1))

end

end A109129.P1518829703295648616

namespace A109129

/-- `A196050(n+1)+1-A342507(2*(n+1))` -/
def P1518829703295648616.Spec : Prop :=
  ∀ n, P1518829703295648616.a n = A109129 (n + 1)

end A109129

/-! ## A109129.P8640888573133305335

`A358729(2*(n+1))-A358729(A198328(2*(n+1)))`
-/

namespace A109129.P8640888573133305335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (2 * (n + 1)) - A358729 (A198328 (2 * (n + 1))).toNat

end

end A109129.P8640888573133305335

namespace A109129

/-- `A358729(2*(n+1))-A358729(A198328(2*(n+1)))` -/
def P8640888573133305335.Spec : Prop :=
  ∀ n, P8640888573133305335.a n = A109129 (n + 1)

end A109129

/-! ## A109129.P5073028556071519277

`A196067(n+1)-A010051(n+1)`
-/

namespace A109129.P5073028556071519277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196067 (n + 1) - A010051 (n + 1)

end

end A109129.P5073028556071519277

namespace A109129

/-- `A196067(n+1)-A010051(n+1)` -/
def P5073028556071519277.Spec : Prop :=
  ∀ n, P5073028556071519277.a n = A109129 (n + 1)

end A109129

/-! ## A109129.P9792422156182886478

`A051903(A324922(n+1))`
-/

namespace A109129.P9792422156182886478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A324922 (n + 1)).toNat

end

end A109129.P9792422156182886478

namespace A109129

/-- `A051903(A324922(n+1))` -/
def P9792422156182886478.Spec : Prop :=
  ∀ n, P9792422156182886478.a n = A109129 (n + 1)

end A109129

/-!
# A109130: Magic constant of smallest order-n perfect magic cube.

The programs for A109130, the canonical program `A109130.P2980007611023544684` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109130 has offset 1).

The definition of A109130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109130.P2980007611023544684

`A027441((n+1)*A185114(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109130

/-- `A027441((n+1)*A185114(n))` -/
def P2980007611023544684.Spec : Prop :=
  ∀ n, P2980007611023544684.a n = A109130 (n + 1)

theorem P2980007611023544684.correct : P2980007611023544684.Spec := by
  intro n
  simp only [A109130, Nat.add_sub_cancel]

end A109130

/-! ## A109130.P8837929599166233671

`and(-A185114(n), A027441(n+1))`
-/

namespace A109130.P8837929599166233671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A185114 n) (A027441 (n + 1))

end

end A109130.P8837929599166233671

namespace A109130

/-- `and(-A185114(n), A027441(n+1))` -/
def P8837929599166233671.Spec : Prop :=
  ∀ n, P8837929599166233671.a n = A109130 (n + 1)

end A109130

/-! ## A109130.P15670344873518712939

`∑[A212133(n+1)]*A185114(n)`
-/

namespace A109130.P15670344873518712939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A185114 n

end

end A109130.P15670344873518712939

namespace A109130

/-- `∑[A212133(n+1)]*A185114(n)` -/
def P15670344873518712939.Spec : Prop :=
  ∀ n, P15670344873518712939.a n = A109130 (n + 1)

end A109130

/-! ## A109130.P10227596126292541502

`A027441(n+1)%A027441(A000040(n+1)-n)`
-/

namespace A109130.P10227596126292541502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027441 (n + 1)) (A027441 (A000040 (n + 1) - (n : ℤ)).toNat)

end

end A109130.P10227596126292541502

namespace A109130

/-- `A027441(n+1)%A027441(A000040(n+1)-n)` -/
def P10227596126292541502.Spec : Prop :=
  ∀ n, P10227596126292541502.a n = A109130 (n + 1)

end A109130

/-! ## A109130.P16969570323277985281

`A027441(and(n+1, (n+1)%A000032(n)))`
-/

namespace A109130.P16969570323277985281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 (Int.land (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A000032 n))).toNat

end

end A109130.P16969570323277985281

namespace A109130

/-- `A027441(and(n+1, (n+1)%A000032(n)))` -/
def P16969570323277985281.Spec : Prop :=
  ∀ n, P16969570323277985281.a n = A109130 (n + 1)

end A109130

/-!
# A109133: Numbers k such that (sum of digits)*(number of digits) + 1 is prime.

The programs for A109133, the canonical program `A109133.P7922993941714005852` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109133 has offset 1).

The definition of A109133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109133.P7922993941714005852

`eq[1, A001222(A307629(n)+A007953(n)+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A109133

/-- `eq[1, A001222(A307629(n)+A007953(n)+1)]` -/
def P7922993941714005852.Spec : Prop :=
  ∀ n, (P7922993941714005852.a n : ℤ) = A109133 (n + 1)

theorem P7922993941714005852.correct : P7922993941714005852.Spec := by
  intro n
  simp only [A109133, Nat.add_sub_cancel]

end A109133

/-! ## A109133.P15746686113289046384

`eq[2, A000005(A307629(n)+A007953(n)+1)]`
-/

namespace A109133.P15746686113289046384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A307629 n + A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109133.P15746686113289046384

namespace A109133

/-- `eq[2, A000005(A307629(n)+A007953(n)+1)]` -/
def P15746686113289046384.Spec : Prop :=
  ∀ n, (P15746686113289046384.a n : ℤ) = A109133 (n + 1)

end A109133

/-! ## A109133.P11692495944724530441

`eq[1, A001222(A007953(n)*A055642(n)+1)]`
-/

namespace A109133.P11692495944724530441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007953 n * A055642 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109133.P11692495944724530441

namespace A109133

/-- `eq[1, A001222(A007953(n)*A055642(n)+1)]` -/
def P11692495944724530441.Spec : Prop :=
  ∀ n, (P11692495944724530441.a n : ℤ) = A109133 (n + 1)

end A109133

/-! ## A109133.P7104916183974667247

`eq[2, A000005(A007953(n)*A055642(n)+1)]`
-/

namespace A109133.P7104916183974667247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007953 n * A055642 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109133.P7104916183974667247

namespace A109133

/-- `eq[2, A000005(A007953(n)*A055642(n)+1)]` -/
def P7104916183974667247.Spec : Prop :=
  ∀ n, (P7104916183974667247.a n : ℤ) = A109133 (n + 1)

end A109133

/-! ## A109133.P14818348579318932828

`eq[1, A001222(A307629(10*n)+1)]`
-/

namespace A109133.P14818348579318932828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A307629 (10 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109133.P14818348579318932828

namespace A109133

/-- `eq[1, A001222(A307629(10*n)+1)]` -/
def P14818348579318932828.Spec : Prop :=
  ∀ n, (P14818348579318932828.a n : ℤ) = A109133 (n + 1)

end A109133

/-! ## A109133.P14472435708161067841

`eq[2, A000005(A307629(10*n)+1)]`
-/

namespace A109133.P14472435708161067841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A307629 (10 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109133.P14472435708161067841

namespace A109133

/-- `eq[2, A000005(A307629(10*n)+1)]` -/
def P14472435708161067841.Spec : Prop :=
  ∀ n, (P14472435708161067841.a n : ℤ) = A109133 (n + 1)

end A109133

/-!
# A109135: Least number whose n-th power is exclusionary (or 0 if no such n exists). An exclusionary n-th power m^n is one made up of digits not appearing in m, which itself consists of distinct digits.

The programs for A109135, there is no canonical definition to state claims against.
-/

/-! ## A109135.P15122847653288429991

`A001221(A080755(A205318(n+1)))*A098725(n)`
-/

namespace A109135.P15122847653288429991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080755 (A205318 (n + 1)).toNat).toNat * A098725 n

end

end A109135.P15122847653288429991

/-! ## A109135.P4085228408194026723

`A227835(or(3*round(2*n/5)+n, A049479(n+2)))`
-/

namespace A109135.P4085228408194026723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227835 (Int.lor (3 * SequenceMachineLib.roundAway (2 * ((n : ℚ) / 5)) + (n : ℤ)) (A049479 (n + 2))).toNat

end

end A109135.P4085228408194026723

/-! ## A109135.P4920888555867323588

`∑{e}[3-(C(lcm(4, n+1), and(3, n))+1)², #]`
-/

namespace A109135.P4920888555867323588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((Nat.choose (Nat.lcm 4 (n + 1)) (Nat.land 3 n) + 1) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A109135.P4920888555867323588

/-! ## A109135.P676319352542407179

`p?[A144625(2*n+1)]*A098725(n)`
-/

namespace A109135.P676319352542407179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144625 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A098725 n

end

end A109135.P676319352542407179

/-! ## A109135.P14113013559042199369

`p?[A144625(2*n+1)]*A144609(n)`
-/

namespace A109135.P14113013559042199369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144625 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A144609 n

end

end A109135.P14113013559042199369

/-!
# A109136: Even numbers that are not congruent to 1 mod 3 nor are squares nor are the sum of a prime and a square of a prime.

The programs for A109136, there is no canonical definition to state claims against.
-/

/-! ## A109136.P10087745587412884863

`filter[A306394(n+2), A049240(#)]`
-/

namespace A109136.P10087745587412884863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A109136.P10087745587412884863

/-! ## A109136.P9402969126726494215

`filter[A306394(n+2), A380458(#)]`
-/

namespace A109136.P9402969126726494215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A109136.P9402969126726494215

/-! ## A109136.P17789032927642561826

`filter[A306394(n+2), A263804(#)]`
-/

namespace A109136.P17789032927642561826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263804 (f1 j).toNat = 1) n)

end

end A109136.P17789032927642561826

/-! ## A109136.P18033617141533128487

`filter[A306394(n+2), A267594(#)]`
-/

namespace A109136.P18033617141533128487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A109136.P18033617141533128487

/-! ## A109136.P3361458360512131609

`filter[A306394(n+2), A267635(#)]`
-/

namespace A109136.P3361458360512131609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A109136.P3361458360512131609

/-!
# A109137: Numbers k such that k * (10^k - 1) + 1 is prime.

The programs for A109137, there is no canonical definition to state claims against.
-/

/-! ## A109137.P15915101299987571075

`2*A026400(A001160(n+1))`
-/

namespace A109137.P15915101299987571075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026400 (A001160 (n + 1)).toNat

end

end A109137.P15915101299987571075

/-!
# A109138: Numbers n such that 2^n + 2 is an admirable number (A111592).

The programs for A109138, there is no canonical definition to state claims against.
-/

/-! ## A109138.P14160993456367522649

`A000978(n+2)+1`
-/

namespace A109138.P14160993456367522649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 2) + 1

end

end A109138.P14160993456367522649

/-! ## A109138.P8777452162501616689

`A107036(n+3)+1`
-/

namespace A109138.P8777452162501616689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107036 (n + 3) + 1

end

end A109138.P8777452162501616689

/-! ## A109138.P15073420463662701747

`A127965(n+2)+2`
-/

namespace A109138.P15073420463662701747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127965 (n + 2) + 2

end

end A109138.P15073420463662701747

/-! ## A109138.P2806349350215448925

`2*A127963(n+2)`
-/

namespace A109138.P2806349350215448925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127963 (n + 2)

end

end A109138.P2806349350215448925

/-! ## A109138.P8354420813307990977

`Δ[A172296(n+1)]+1`
-/

namespace A109138.P8354420813307990977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A109138.P8354420813307990977

/-!
# A109139: Numerators associated with the continued fraction of the differences of consecutive prime numbers.

The programs for A109139, there is no canonical definition to state claims against.
-/

/-! ## A109139.P10481725265582397400

`a(n-2)+a(n-1)*A001223(n)` with `a(0)=1, a(1)=2`
-/

namespace A109139.P10481725265582397400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A001223 n

end

end A109139.P10481725265582397400

/-! ## A109139.P1345756949229414240

`a(n-2)+a(n-1)*A075526(n)` with `a(0)=1, a(1)=2`
-/

namespace A109139.P1345756949229414240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A075526 n

end

end A109139.P1345756949229414240

/-! ## A109139.P9688576943160152922

`a(n-2)+a(n-1)*A054541(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A109139.P9688576943160152922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A054541 (n + 1)

end

end A109139.P9688576943160152922

/-! ## A109139.P924363639599117946

`a(n-2)+a(n-1)*A125266(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A109139.P924363639599117946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A125266 (n + 1)

end

end A109139.P924363639599117946

/-! ## A109139.P6342377491531563297

`A028310(a(n-2)+2*gcd(2, n)*a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A109139.P6342377491531563297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A028310 (a (n - 2) + 2 * ((Nat.gcd 2 n : ℤ) * a (n - 1))).toNat

end

end A109139.P6342377491531563297

/-!
# A109140: Denominators associated with A109139.

The programs for A109140, there is no canonical definition to state claims against.
-/

/-! ## A109140.P6706337501653285877

`a(n-2)+a(n-1)*A001223(n)` with `a(0)=1, a(1)=1`
-/

namespace A109140.P6706337501653285877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A001223 n

end

end A109140.P6706337501653285877

/-! ## A109140.P9453306710949787394

`a(n-2)+a(n-1)*A075526(n)` with `a(0)=1, a(1)=1`
-/

namespace A109140.P9453306710949787394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A075526 n

end

end A109140.P9453306710949787394

/-! ## A109140.P13361124120236217686

`a(n-2)+a(n-1)*A054541(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A109140.P13361124120236217686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A054541 (n + 1)

end

end A109140.P13361124120236217686

/-! ## A109140.P9028953390626614509

`a(n-2)+a(n-1)*A125266(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A109140.P9028953390626614509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A125266 (n + 1)

end

end A109140.P9028953390626614509

/-!
# A109142: G.f.: 18th root of Hamming weight enumerator of [18,9,8] code over GF(4) (cf. A014487).

The programs for A109142, there is no canonical definition to state claims against.
-/

/-! ## A109142.P8556721105342119857

`A109778(2*n)`
-/

namespace A109142.P8556721105342119857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109778 (2 * n)

end

end A109142.P8556721105342119857

/-! ## A109142.P2879538517216024911

`A109778(n+n)+and(1, A051692(n+1))`
-/

namespace A109142.P2879538517216024911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109778 (n + n) + Int.land 1 (A051692 (n + 1))

end

end A109142.P2879538517216024911

/-! ## A109142.P16527625249181043633

`A109778(n+n)/and(1, A001359(n+1))`
-/

namespace A109142.P16527625249181043633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109778 (n + n) : ℚ) / (Int.land 1 (A001359 (n + 1)) : ℚ)

end

end A109142.P16527625249181043633

/-! ## A109142.P9576200117243635646

`A109778(n+n)/and(1, A045533(n+1))`
-/

namespace A109142.P9576200117243635646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109778 (n + n) : ℚ) / (Int.land 1 (A045533 (n + 1)) : ℚ)

end

end A109142.P9576200117243635646

/-! ## A109142.P13431316583043645156

`A109778(n+n)/(A000027(n+1)-n)`
-/

namespace A109142.P13431316583043645156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109778 (n + n) : ℚ) / (A000027 (n + 1) - (n : ℤ) : ℚ)

end

end A109142.P13431316583043645156

/-! ## A109142.P17822153397871965887

`A109778(n+n)+and(1, (1-A006512(n+1))²)`
-/

namespace A109142.P17822153397871965887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109778 (n + n) + Int.land 1 ((1 - A006512 (n + 1)) ^ 2)

end

end A109142.P17822153397871965887

/-! ## A109142.P11833588693797027434

`A109778(A004277(n))+A000007(n)`
-/

namespace A109142.P11833588693797027434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109778 (A004277 n).toNat + A000007 n

end

end A109142.P11833588693797027434

/-! ## A109142.P12028072656336359547

`A109778(A005843(n))/A014963(∑[n+1])`
-/

namespace A109142.P12028072656336359547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109778 (A005843 n).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A109142.P12028072656336359547

/-! ## A109142.P12970051073037250742

`A109778(n+n)+A000038(A322516(n+1))`
-/

namespace A109142.P12970051073037250742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109778 (n + n) + A000038 (A322516 (n + 1)).toNat

end

end A109142.P12970051073037250742

/-! ## A109142.P1473845153156964923

`A109778(A005843(n))+A003982(A000040(n+1))`
-/

namespace A109142.P1473845153156964923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109778 (A005843 n).toNat + A003982 (A000040 (n + 1)).toNat

end

end A109142.P1473845153156964923

/-! ## A109142.P15852338896481385868

`A109778(A005843(n))+A010673(A001749(n+1)/2)`
-/

namespace A109142.P15852338896481385868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109778 (A005843 n).toNat + A010673 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A109142.P15852338896481385868

/-!
# A109144: G.f.: cube root of theta series of E*_6 lattice (cf. A005129).

The programs for A109144, there is no canonical definition to state claims against.
-/

/-! ## A109144.P6753332928047457095

`(Δ[A324884(A109827(6*n+1))²]-n)*(1-n)^3`
-/

namespace A109144.P6753332928047457095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324884 (A109827 (6 * n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - (n : ℤ)) * (1 - (n : ℤ)) ^ 3

end

end A109144.P6753332928047457095

/-!
# A109145: G.f.: 32nd root of theta series of Quebbemann's 32-dimensional lattice (cf. A002272).

The programs for A109145, there is no canonical definition to state claims against.
-/

/-! ## A109145.P6541498587497143546

`A002272(n)/A071044(A002280(n))`
-/

namespace A109145.P6541498587497143546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002272 n : ℚ) / (A071044 (A002280 n).toNat : ℚ)

end

end A109145.P6541498587497143546

/-!
# A109147: G.f.: 8th root of theta series of lattice in A004673.

The programs for A109147, there is no canonical definition to state claims against.
-/

/-! ## A109147.P6201480172640149863

`A004673(n)/A010076(A004981(n))`
-/

namespace A109147.P6201480172640149863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004673 n : ℚ) / (A010076 (A004981 n).toNat : ℚ)

end

end A109147.P6201480172640149863

/-! ## A109147.P2055151799725625629

`A004673(n)/A000005(A004677(2*n+3))`
-/

namespace A109147.P2055151799725625629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004673 n : ℚ) / (A000005 (A004677 (2 * n + 3)).toNat : ℚ)

end

end A109147.P2055151799725625629

/-!
# A109148: G.f.: 48th root of theta series of lattice in A004672.

The programs for A109148, there is no canonical definition to state claims against.
-/

/-! ## A109148.P2653976750835815205

`A004672(n)/A319719(A355367(n+6))`
-/

namespace A109148.P2653976750835815205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004672 n : ℚ) / (A319719 (A355367 (n + 6)).toNat : ℚ)

end

end A109148.P2653976750835815205

/-!
# A109149: G.f.: square root of weight enumerator of Kerdock code of length 64 (cf. A028238).

The programs for A109149, there is no canonical definition to state claims against.
-/

/-! ## A109149.P6462789140855163201

`A028238(n)/A020639(A007070(n))`
-/

namespace A109149.P6462789140855163201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028238 n : ℚ) / (A020639 (A007070 n).toNat : ℚ)

end

end A109149.P6462789140855163201

/-! ## A109149.P12618771045035196668

`A028238(n)/A020639(A028270(n))`
-/

namespace A109149.P12618771045035196668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028238 n : ℚ) / (A020639 (A028270 n).toNat : ℚ)

end

end A109149.P12618771045035196668

/-! ## A109149.P2679501750816753324

`A028238(n)/A020639(A126368(n))`
-/

namespace A109149.P2679501750816753324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028238 n : ℚ) / (A020639 (A126368 n).toNat : ℚ)

end

end A109149.P2679501750816753324

/-! ## A109149.P12872672364159168179

`A028238(n)/A020639(A225826(n))`
-/

namespace A109149.P12872672364159168179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028238 n : ℚ) / (A020639 (A225826 n).toNat : ℚ)

end

end A109149.P12872672364159168179

/-! ## A109149.P3035427622937588590

`A028238(n)/A020639(A038234(3*n))`
-/

namespace A109149.P3035427622937588590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028238 n : ℚ) / (A020639 (A038234 (3 * n)).toNat : ℚ)

end

end A109149.P3035427622937588590

/-!
# A109150: Numbers k such that the continued fraction sequence of sqrt(k) is not multiplicative.

The programs for A109150, there is no canonical definition to state claims against.
-/

/-! ## A109150.P15347016699909524291

`comp[A109054(n+1)]`
-/

namespace A109150.P15347016699909524291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109150.P15347016699909524291

/-! ## A109150.P7663031380289261956

`comp[∪[A108575(n+1), n²]]`
-/

namespace A109150.P7663031380289261956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108575 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A109150.P7663031380289261956

/-! ## A109150.P14163638499959267144

`comp[record[A109054(A028920(n))]]`
-/

namespace A109150.P14163638499959267144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109150.P14163638499959267144

/-! ## A109150.P18241129299808253225

`comp[record[A109054(A102885(n))]]`
-/

namespace A109150.P18241129299808253225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109150.P18241129299808253225

/-! ## A109150.P13913178778649624690

`comp[record[A109054(A133310(n))]]`
-/

namespace A109150.P13913178778649624690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109150.P13913178778649624690

/-! ## A109150.P12164760082969184999

`comp[record[A109054(A134478(n))]]`
-/

namespace A109150.P12164760082969184999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109150.P12164760082969184999

/-! ## A109150.P7167055701152823244

`comp[record[A109054(A141256(n))]]`
-/

namespace A109150.P7167055701152823244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109150.P7167055701152823244

/-! ## A109150.P15656849592398412222

`comp[record[A109054(A291769(n))]]`
-/

namespace A109150.P15656849592398412222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109054 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109150.P15656849592398412222

/-! ## A109150.P2621695683652564882

`eq[char[A108575(n+1)], A000122(n)]`
-/

namespace A109150.P2621695683652564882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108575 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A109150.P2621695683652564882

/-! ## A109150.P3738198485668355448

`eq[char[A108575(n+1)], A010052(n)]`
-/

namespace A109150.P3738198485668355448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108575 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A109150.P3738198485668355448

/-!
# A109151: G.f.: square root of weight enumerator of Kerdock code of length 256 (cf. A028240).

The programs for A109151, there is no canonical definition to state claims against.
-/

/-! ## A109151.P1365011729528245719

`A028240(n)/(2-A210709(n))`
-/

namespace A109151.P1365011729528245719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028240 n : ℚ) / (2 - A210709 n : ℚ)

end

end A109151.P1365011729528245719

/-! ## A109151.P4312195260506797738

`A028240(n)/A000032(A210709(n))`
-/

namespace A109151.P4312195260506797738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028240 n : ℚ) / (A000032 (A210709 n).toNat : ℚ)

end

end A109151.P4312195260506797738

/-! ## A109151.P14003476129833867887

`A028240(n)/A276327(A183253(n+1))`
-/

namespace A109151.P14003476129833867887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028240 n : ℚ) / (A276327 (A183253 (n + 1)).toNat : ℚ)

end

end A109151.P14003476129833867887

/-! ## A109151.P17672905468360880315

`A028240(n)/A050320(A241086(2*(n+2)))`
-/

namespace A109151.P17672905468360880315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028240 n : ℚ) / (A050320 (A241086 (2 * (n + 2))).toNat : ℚ)

end

end A109151.P17672905468360880315

/-! ## A109151.P6666624024543857606

`A028240(n)/A006530(A011782(n))`
-/

namespace A109151.P6666624024543857606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028240 n : ℚ) / (A006530 (A011782 n).toNat : ℚ)

end

end A109151.P6666624024543857606

/-!
# A109152: Triangle T, read by rows, that satisfies: T(n,k) = [T^2](n-1,k) for n>k+1>=1, with T(n,n) = 1 and T(n+1,n) = n+1 for n>=0, where T^2 is the matrix square of T.

The programs for A109152, there is no canonical definition to state claims against.
-/

/-! ## A109152.P16390378710856838657

`A130514(A130469(n+1))%30`
-/

namespace A109152.P16390378710856838657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130514 (A130469 (n + 1)).toNat) 30

end

end A109152.P16390378710856838657

/-!
# A109153: Column 0 of triangle A109152.

The programs for A109153, there is no canonical definition to state claims against.
-/

/-! ## A109153.P2434517029809649136

`A109152(∑[n])`
-/

namespace A109153.P2434517029809649136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109152 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109153.P2434517029809649136

/-! ## A109153.P11928108005164059526

`lcm(A040001(n), A109152(A000217(n)))`
-/

namespace A109153.P11928108005164059526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A109152 (A000217 n).toNat)

end

end A109153.P11928108005164059526

/-! ## A109153.P5262715390169527726

`char[A130724(n)]*A109152(A000217(n))`
-/

namespace A109153.P5262715390169527726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A109152 (A000217 n).toNat

end

end A109153.P5262715390169527726

/-! ## A109153.P12668361235715205635

`char[A283443(n)]*A109152(A000217(n))`
-/

namespace A109153.P12668361235715205635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A109152 (A000217 n).toNat

end

end A109153.P12668361235715205635

/-!
# A109154: Column 1 of triangle A109152.

The programs for A109154, there is no canonical definition to state claims against.
-/

/-! ## A109154.P2917670035709635512

`A109152(∑[n+1]+1)`
-/

namespace A109154.P2917670035709635512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109152 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A109154.P2917670035709635512

/-! ## A109154.P7741203940457793834

`record[A109152(A014132(n+1))]`
-/

namespace A109154.P7741203940457793834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109152 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109154.P7741203940457793834

/-! ## A109154.P11198731064890870016

`record[A109152(comp[A001263(n+1)])]`
-/

namespace A109154.P11198731064890870016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109152 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109154.P11198731064890870016

/-! ## A109154.P3483934392646507666

`record[gcd(A090181(n), A109152(n+1))]`
-/

namespace A109154.P3483934392646507666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090181 n) (A109152 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109154.P3483934392646507666

/-! ## A109154.P17826808561678964303

`A109152(A000124(n+1))%A074504(n)`
-/

namespace A109154.P17826808561678964303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109152 (A000124 (n + 1)).toNat) (A074504 n)

end

end A109154.P17826808561678964303

/-!
# A109155: Column 2 of triangle A109152.

The programs for A109155, there is no canonical definition to state claims against.
-/

/-! ## A109155.P6160434007563944295

`A109152(∑[n+2]+3)`
-/

namespace A109155.P6160434007563944295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109152 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A109155.P6160434007563944295

/-! ## A109155.P577608279843313455

`record[A109152(gcd(n, A303913(n)))]`
-/

namespace A109155.P577608279843313455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109152 (Int.gcd (n : ℤ) (A303913 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109155.P577608279843313455

/-! ## A109155.P994763157541936089

`record[A109152(n+5)%A109152(n+3)]`
-/

namespace A109155.P994763157541936089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109152 (n + 5)) (A109152 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109155.P994763157541936089

/-!
# A109156: Row sums of triangle A109152.

The programs for A109156, there is no canonical definition to state claims against.
-/

/-! ## A109156.P9570527737511167437

`A157271(A001003(n))+A002104(n)`
-/

namespace A109156.P9570527737511167437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A001003 n).toNat + A002104 n

end

end A109156.P9570527737511167437

/-! ## A109156.P13738928729340218805

`A077773(A371836(n)+A077773(n))`
-/

namespace A109156.P13738928729340218805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A371836 n + A077773 n).toNat

end

end A109156.P13738928729340218805

/-! ## A109156.P6792072250637919201

`A048673(n+1)+A002264(A150732(n))`
-/

namespace A109156.P6792072250637919201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) + A002264 (A150732 n).toNat

end

end A109156.P6792072250637919201

/-!
# A109159: G.f.: 8th root of weight enumerator of Preparata code of length 64 (cf. A028239).

The programs for A109159, there is no canonical definition to state claims against.
-/

/-! ## A109159.P8075659729116964509

`A028239(n)/A046081(A046077(n+1))`
-/

namespace A109159.P8075659729116964509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028239 n : ℚ) / (A046081 (A046077 (n + 1)).toNat : ℚ)

end

end A109159.P8075659729116964509

/-!
# A109160: G.f.: 32nd root of weight enumerator of Preparata code of length 256 (cf. A028241).

The programs for A109160, there is no canonical definition to state claims against.
-/

/-! ## A109160.P8664419021327749584

`A028241(n)/A146089(A124492(n+1))`
-/

namespace A109160.P8664419021327749584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028241 n : ℚ) / (A146089 (A124492 (n + 1)).toNat : ℚ)

end

end A109160.P8664419021327749584

/-!
# A109161: Triangle read by rows: T(n, k) = n*(n+9) + k + 5, with T(0, 0) = 5 and T(1, 0) = 15.

The programs for A109161, the canonical program `A109161.P8958502350347301229` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109161 has offset 1).

The definition of A109161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109161.P8958502350347301229

`A063656(n)+A017221(A003056(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A109161

/-- `A063656(n)+A017221(A003056(n))` -/
def P8958502350347301229.Spec : Prop :=
  ∀ n, P8958502350347301229.a n = A109161 (n + 1)

theorem P8958502350347301229.correct : P8958502350347301229.Spec := by
  intro n
  simp only [A109161, Nat.add_sub_cancel]

end A109161

/-! ## A109161.P15448769918506504998

`A017113(A003056(n))+A004201(n+1)`
-/

namespace A109161.P15448769918506504998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A003056 n).toNat + A004201 (n + 1)

end

end A109161.P15448769918506504998

namespace A109161

/-- `A017113(A003056(n))+A004201(n+1)` -/
def P15448769918506504998.Spec : Prop :=
  ∀ n, P15448769918506504998.a n = A109161 (n + 1)

end A109161

/-! ## A109161.P8260077850032934781

`A008574(A131507(n))+A004201(n+1)`
-/

namespace A109161.P8260077850032934781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A131507 n).toNat + A004201 (n + 1)

end

end A109161.P8260077850032934781

namespace A109161

/-- `A008574(A131507(n))+A004201(n+1)` -/
def P8260077850032934781.Spec : Prop :=
  ∀ n, P8260077850032934781.a n = A109161 (n + 1)

end A109161

/-! ## A109161.P12806692330196521723

`A189151(n+1)+A008587(A003056(n))`
-/

namespace A109161.P12806692330196521723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189151 (n + 1) + A008587 (A003056 n).toNat

end

end A109161.P12806692330196521723

namespace A109161

/-- `A189151(n+1)+A008587(A003056(n))` -/
def P12806692330196521723.Spec : Prop :=
  ∀ n, P12806692330196521723.a n = A109161 (n + 1)

end A109161

/-! ## A109161.P16498758985662904271

`A217575(n+1)+A008486(A131507(n))`
-/

namespace A109161.P16498758985662904271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) + A008486 (A131507 n).toNat

end

end A109161.P16498758985662904271

namespace A109161

/-- `A217575(n+1)+A008486(A131507(n))` -/
def P16498758985662904271.Spec : Prop :=
  ∀ n, P16498758985662904271.a n = A109161 (n + 1)

end A109161

/-! ## A109161.P14435274454015899013

`record[A188134(A000267(n))+n+1]`
-/

namespace A109161.P14435274454015899013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A000267 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109161.P14435274454015899013

namespace A109161

/-- `record[A188134(A000267(n))+n+1]` -/
def P14435274454015899013.Spec : Prop :=
  ∀ n, P14435274454015899013.a n = A109161 (n + 1)

end A109161

/-! ## A109161.P1627305664966339519

`A166021(n+1)+A047471(A111650(n+1))`
-/

namespace A109161.P1627305664966339519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166021 (n + 1) + A047471 (A111650 (n + 1)).toNat

end

end A109161.P1627305664966339519

namespace A109161

/-- `A166021(n+1)+A047471(A111650(n+1))` -/
def P1627305664966339519.Spec : Prop :=
  ∀ n, P1627305664966339519.a n = A109161 (n + 1)

end A109161

/-!
# A109162: a(1) = 1; for n > 1, a(n) = A019565(a(n-1)).

The programs for A109162, there is no canonical definition to state claims against.
-/

/-! ## A109162.P3186651953822347781

`A019565(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109162.P3186651953822347781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019565 (a (n - 1)).toNat

end

end A109162.P3186651953822347781

/-! ## A109162.P5487929386005958144

`A285333(2^n)`
-/

namespace A109162.P5487929386005958144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (2 ^ n)

end

end A109162.P5487929386005958144

/-! ## A109162.P2199806631033599603

`A285332(floor(2^(n-1)))`
-/

namespace A109162.P2199806631033599603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285332 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A109162.P2199806631033599603

/-! ## A109162.P11933850863973850196

`record[A285333(A059268(n))]`
-/

namespace A109162.P11933850863973850196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109162.P11933850863973850196

/-! ## A109162.P6040965508987255272

`record[A285333(A130321(n))]`
-/

namespace A109162.P6040965508987255272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109162.P6040965508987255272

/-!
# A109163: a(n) = A019565(n-th prime).

The programs for A109163, there is no canonical definition to state claims against.
-/

/-! ## A109163.P194031106657819766

`A019565(p?[xor(1, n)+1])`
-/

namespace A109163.P194031106657819766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A109163.P194031106657819766

/-! ## A109163.P5937195245565622780

`A019565(p?[n%3+n])`
-/

namespace A109163.P5937195245565622780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A109163.P5937195245565622780

/-! ## A109163.P5807545323231850679

`A019565(p?[abs(xor(1, -n))])`
-/

namespace A109163.P5807545323231850679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A109163.P5807545323231850679

/-! ## A109163.P5558154886527695139

`A019565(p?[round(sqrt(n)+n)])`
-/

namespace A109163.P5558154886527695139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A109163.P5558154886527695139

/-! ## A109163.P3830849687239054385

`sqrt(A334110(p?[xor(1, n)+1]))`
-/

namespace A109163.P3830849687239054385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A334110 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ)

end

end A109163.P3830849687239054385

/-!
# A109164: a(n) = 4*a(n-1) - 4*a(n-2) + a(n-3), n >= 3; a(0)=1, a(1)=6, a(2)=20.

The programs for A109164, the canonical program `A109164.P1664212255385816464` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109164 has offset 0).

The definition of A109164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-4*a(n-2)+a(n-3)` (program `A109164.P1664212255385816464`, by `A109164.P1664212255385816464.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109164.P1664212255385816464

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=20`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109164

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P1664212255385816464.Spec : Prop :=
  ∀ n, P1664212255385816464.a n = A109164 n

theorem P1664212255385816464.correct : P1664212255385816464.Spec := by
  intro n
  simp only [A109164]

end A109164

/-! ## A109164.P12045728126495533719

`A027941(n+1)+2*A027941(n)`
-/

namespace A109164.P12045728126495533719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 1) + 2 * A027941 n

end

end A109164.P12045728126495533719

namespace A109164

/-- `A027941(n+1)+2*A027941(n)` -/
def P12045728126495533719.Spec : Prop :=
  ∀ n, P12045728126495533719.a n = A109164 n

end A109164

/-! ## A109164.P2769140699612212803

`∑[ceil(ϕ²*a(n-1))]` with `a(0)=1, a(1)=5`
-/

namespace A109164.P2769140699612212803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109164.P2769140699612212803

namespace A109164

/-- `∑[ceil(ϕ²*a(n-1))]` -/
def P2769140699612212803.Spec : Prop :=
  ∀ n, P2769140699612212803.a n = A109164 n

end A109164

/-! ## A109164.P2414094812376660555

`ceil(ϕ²*a(n-1))+4` with `a(0)=1, a(1)=6`
-/

namespace A109164.P2414094812376660555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉ + 4

end

end A109164.P2414094812376660555

namespace A109164

/-- `ceil(ϕ²*a(n-1))+4` -/
def P2414094812376660555.Spec : Prop :=
  ∀ n, P2414094812376660555.a n = A109164 n

end A109164

/-! ## A109164.P5731133796624299187

`∑[ceil(a(n-1)/(2-ϕ))]` with `a(0)=1, a(1)=5`
-/

namespace A109164.P5731133796624299187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  ⌈(f1 (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109164.P5731133796624299187

namespace A109164

/-- `∑[ceil(a(n-1)/(2-ϕ))]` -/
def P5731133796624299187.Spec : Prop :=
  ∀ n, P5731133796624299187.a n = A109164 n

end A109164

/-! ## A109164.P13867293892335003813

`∑[ceil(ϕ*ϕ*a(n-1))]` with `a(0)=1, a(1)=5`
-/

namespace A109164.P13867293892335003813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109164.P13867293892335003813

namespace A109164

/-- `∑[ceil(ϕ*ϕ*a(n-1))]` -/
def P13867293892335003813.Spec : Prop :=
  ∀ n, P13867293892335003813.a n = A109164 n

end A109164

/-! ## A109164.P11152449601775020492

`∑[3*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A109164.P11152449601775020492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109164.P11152449601775020492

namespace A109164

/-- `∑[3*a(n-1)-a(n-2)]` -/
def P11152449601775020492.Spec : Prop :=
  ∀ n, P11152449601775020492.a n = A109164 n

end A109164

/-! ## A109164.P8631077254942932127

`3*(a(n-1)+1)-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A109164.P8631077254942932127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 * (a (n - 1) + 1) - a (n - 2)

end

end A109164.P8631077254942932127

namespace A109164

/-- `3*(a(n-1)+1)-a(n-2)` -/
def P8631077254942932127.Spec : Prop :=
  ∀ n, P8631077254942932127.a n = A109164 n

end A109164

/-! ## A109164.P14885325038492435395

`3*a(n-1)-(a(n-2)-3)` with `a(0)=1, a(1)=6`
-/

namespace A109164.P14885325038492435395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 * a (n - 1) - (a (n - 2) - 3)

end

end A109164.P14885325038492435395

namespace A109164

/-- `3*a(n-1)-(a(n-2)-3)` -/
def P14885325038492435395.Spec : Prop :=
  ∀ n, P14885325038492435395.a n = A109164 n

end A109164

/-! ## A109164.P3444642332206737779

`∑[a(n-1)+a(n-1)+a(n-1)-a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A109164.P3444642332206737779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) - f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109164.P3444642332206737779

namespace A109164

/-- `∑[a(n-1)+a(n-1)+a(n-1)-a(n-2)]` -/
def P3444642332206737779.Spec : Prop :=
  ∀ n, P3444642332206737779.a n = A109164 n

end A109164

/-! ## A109164.P3044563088890557448

`∑[a(n-1)-(a(n-2)-a(n-1)-a(n-1))]` with `a(0)=1, a(1)=5`
-/

namespace A109164.P3044563088890557448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) - (f1 (n - 2) - f1 (n - 1) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109164.P3044563088890557448

namespace A109164

/-- `∑[a(n-1)-(a(n-2)-a(n-1)-a(n-1))]` -/
def P3044563088890557448.Spec : Prop :=
  ∀ n, P3044563088890557448.a n = A109164 n

end A109164

/-! ## A109164.P11862944659664701872

`∑[A054486(n)]`
-/

namespace A109164.P11862944659664701872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109164.P11862944659664701872

namespace A109164

/-- `∑[A054486(n)]` -/
def P11862944659664701872.Spec : Prop :=
  ∀ n, P11862944659664701872.a n = A109164 n

end A109164

/-! ## A109164.P1898726495759336217

`A171516(2*n)`
-/

namespace A109164.P1898726495759336217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 (2 * n)

end

end A109164.P1898726495759336217

namespace A109164

/-- `A171516(2*n)` -/
def P1898726495759336217.Spec : Prop :=
  ∀ n, P1898726495759336217.a n = A109164 n

end A109164

/-! ## A109164.P3365604361513931708

`∑[A000285(2*n)]`
-/

namespace A109164.P3365604361513931708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109164.P3365604361513931708

namespace A109164

/-- `∑[A000285(2*n)]` -/
def P3365604361513931708.Spec : Prop :=
  ∀ n, P3365604361513931708.a n = A109164 n

end A109164

/-! ## A109164.P8607071687351072281

`∑[A295717(2*n)]`
-/

namespace A109164.P8607071687351072281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295717 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109164.P8607071687351072281

namespace A109164

/-- `∑[A295717(2*n)]` -/
def P8607071687351072281.Spec : Prop :=
  ∀ n, P8607071687351072281.a n = A109164 n

end A109164

/-! ## A109164.P15917777652418291763

`∑[A031506(n)]+n`
-/

namespace A109164.P15917777652418291763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A109164.P15917777652418291763

namespace A109164

/-- `∑[A031506(n)]+n` -/
def P15917777652418291763.Spec : Prop :=
  ∀ n, P15917777652418291763.a n = A109164 n

end A109164

/-! ## A109164.P15862519439313516679

`∑[A104449(Δ[n²])]`
-/

namespace A109164.P15862519439313516679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109164.P15862519439313516679

namespace A109164

/-- `∑[A104449(Δ[n²])]` -/
def P15862519439313516679.Spec : Prop :=
  ∀ n, P15862519439313516679.a n = A109164 n

end A109164

/-! ## A109164.P1948026673085116647

`A022308(Δ[n²])-2`
-/

namespace A109164.P1948026673085116647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A109164.P1948026673085116647

namespace A109164

/-- `A022308(Δ[n²])-2` -/
def P1948026673085116647.Spec : Prop :=
  ∀ n, P1948026673085116647.a n = A109164 n

end A109164

/-!
# A109165: a(n) = 5*a(n-2) - 2*a(n-4), n >= 4.

The programs for A109165, the canonical program `A109165.P2396744782670325972` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109165 has offset 0).

The definition of A109165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)-2*a(n-4)` (program `A109165.P2396744782670325972`, by `A109165.P2396744782670325972.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109165.P2396744782670325972

`5*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109165

/-- `5*a(n-2)-2*a(n-4)` -/
def P2396744782670325972.Spec : Prop :=
  ∀ n, P2396744782670325972.a n = A109165 n

theorem P2396744782670325972.correct : P2396744782670325972.Spec := by
  intro n
  simp only [A109165]

end A109165

/-! ## A109165.P15147228795267107149

`∑[A005824(n+1)]`
-/

namespace A109165.P15147228795267107149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109165.P15147228795267107149

namespace A109165

/-- `∑[A005824(n+1)]` -/
def P15147228795267107149.Spec : Prop :=
  ∀ n, P15147228795267107149.a n = A109165 n

end A109165

/-! ## A109165.P14181144129623607572

`∑[A249581(2*(n+1))]`
-/

namespace A109165.P14181144129623607572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249581 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109165.P14181144129623607572

namespace A109165

/-- `∑[A249581(2*(n+1))]` -/
def P14181144129623607572.Spec : Prop :=
  ∀ n, P14181144129623607572.a n = A109165 n

end A109165

/-! ## A109165.P12003348434563695385

`∪[A204091(n+1), A107839(n)]`
-/

namespace A109165.P12003348434563695385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109165.P12003348434563695385

namespace A109165

/-- `∪[A204091(n+1), A107839(n)]` -/
def P12003348434563695385.Spec : Prop :=
  ∀ n, (P12003348434563695385.a n : ℤ) = A109165 n

end A109165

/-! ## A109165.P10669088882032053763

`A000034(n)*A107839(floor(n/2))`
-/

namespace A109165.P10669088882032053763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A107839 ⌊(n : ℚ) / 2⌋.toNat

end

end A109165.P10669088882032053763

namespace A109165

/-- `A000034(n)*A107839(floor(n/2))` -/
def P10669088882032053763.Spec : Prop :=
  ∀ n, P10669088882032053763.a n = A109165 n

end A109165

/-! ## A109165.P3457742847940518

`lcm(A000034(n), A107839(A004526(n)))`
-/

namespace A109165.P3457742847940518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A107839 (A004526 n).toNat)

end

end A109165.P3457742847940518

namespace A109165

/-- `lcm(A000034(n), A107839(A004526(n)))` -/
def P3457742847940518.Spec : Prop :=
  ∀ n, (P3457742847940518.a n : ℤ) = A109165 n

end A109165

/-! ## A109165.P18086865846287850628

`∪[A107839(n), A204091(n)]`
-/

namespace A109165.P18086865846287850628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109165.P18086865846287850628

namespace A109165

/-- `∪[A107839(n), A204091(n)]` -/
def P18086865846287850628.Spec : Prop :=
  ∀ n, (P18086865846287850628.a n : ℤ) = A109165 n

end A109165

/-!
# A109167: a(n) = least nonnegative integer such that n appears a(n) times.

The programs for A109167, there is no canonical definition to state claims against.
-/

/-! ## A109167.P17361051829821047953

`A081316(n+1)-1`
-/

namespace A109167.P17361051829821047953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081316 (n + 1) - 1

end

end A109167.P17361051829821047953

/-! ## A109167.P15071965726101305873

`A023444(A081316(n+1)+1)`
-/

namespace A109167.P15071965726101305873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A081316 (n + 1) + 1).toNat

end

end A109167.P15071965726101305873

/-! ## A109167.P15754318122001371254

`A289207(A081316(n+1)+1)`
-/

namespace A109167.P15754318122001371254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A081316 (n + 1) + 1).toNat

end

end A109167.P15754318122001371254

/-! ## A109167.P10511558109437933058

`A023445(A081316(n+1)+2)`
-/

namespace A109167.P10511558109437933058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A081316 (n + 1) + 2).toNat

end

end A109167.P10511558109437933058

/-! ## A109167.P7220759142210481704

`A023446(A081316(n+1)+3)`
-/

namespace A109167.P7220759142210481704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A081316 (n + 1) + 3).toNat

end

end A109167.P7220759142210481704

/-! ## A109167.P2248139616991898844

`A003056(C(A081316(n+1), 2))`
-/

namespace A109167.P2248139616991898844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A081316 (n + 1)).toNat 2)

end

end A109167.P2248139616991898844

/-! ## A109167.P17170256451861745506

`A057918(A081316(n+1)²)`
-/

namespace A109167.P17170256451861745506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A081316 (n + 1) ^ 2).toNat

end

end A109167.P17170256451861745506

/-! ## A109167.P3450235897888615454

`A259361(A081316(n+1)²)`
-/

namespace A109167.P3450235897888615454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A081316 (n + 1) ^ 2).toNat

end

end A109167.P3450235897888615454

/-! ## A109167.P3195579550192843012

`A053615(A081316(n+1)²+1)`
-/

namespace A109167.P3195579550192843012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A081316 (n + 1) ^ 2 + 1).toNat

end

end A109167.P3195579550192843012

/-!
# A109168: Continued fraction expansion of the constant x (A109169) such that the continued fraction of 2*x yields the continued fraction of x interleaved with the positive even numbers.

The programs for A109168, the canonical program `A109168.P7922441834976635510` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109168 has offset 1).

The definition of A109168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109168.P7922441834976635510

`A140472(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109168

/-- `A140472(n+1)` -/
def P7922441834976635510.Spec : Prop :=
  ∀ n, P7922441834976635510.a n = A109168 (n + 1)

theorem P7922441834976635510.correct : P7922441834976635510.Spec := by
  intro n
  simp only [A109168, Nat.add_sub_cancel]

end A109168

/-! ## A109168.P346335626079915499

`A285326(n+1)/2`
-/

namespace A109168.P346335626079915499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285326 (n + 1) : ℚ) / 2

end

end A109168.P346335626079915499

namespace A109168

/-- `A285326(n+1)/2` -/
def P346335626079915499.Spec : Prop :=
  ∀ n, P346335626079915499.a n = (A109168 (n + 1) : ℚ)

end A109168

/-! ## A109168.P3918900075870764674

`ceil(or(n, n+1)/2)`
-/

namespace A109168.P3918900075870764674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor n (n + 1) : ℚ) / 2⌉

end

end A109168.P3918900075870764674

namespace A109168

/-- `ceil(or(n, n+1)/2)` -/
def P3918900075870764674.Spec : Prop :=
  ∀ n, P3918900075870764674.a n = A109168 (n + 1)

end A109168

/-! ## A109168.P2969444299772159697

`round(or(n, n+1)/2)`
-/

namespace A109168.P2969444299772159697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor n (n + 1) : ℚ) / 2)

end

end A109168.P2969444299772159697

namespace A109168

/-- `round(or(n, n+1)/2)` -/
def P2969444299772159697.Spec : Prop :=
  ∀ n, P2969444299772159697.a n = A109168 (n + 1)

end A109168

/-! ## A109168.P12265423044721800638

`ceil(cosh(log(or(n, n+1))))`
-/

namespace A109168.P12265423044721800638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (Nat.lor n (n + 1) : ℝ))⌉

end

end A109168.P12265423044721800638

namespace A109168

/-- `ceil(cosh(log(or(n, n+1))))` -/
def P12265423044721800638.Spec : Prop :=
  ∀ n, P12265423044721800638.a n = A109168 (n + 1)

end A109168

/-! ## A109168.P3080162671319077075

`round(cosh(log(or(n, n+1))))`
-/

namespace A109168.P3080162671319077075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (Nat.lor n (n + 1) : ℝ)))

end

end A109168.P3080162671319077075

namespace A109168

/-- `round(cosh(log(or(n, n+1))))` -/
def P3080162671319077075.Spec : Prop :=
  ∀ n, P3080162671319077075.a n = A109168 (n + 1)

end A109168

/-! ## A109168.P9447184754394670638

`(or(n, n+1)+1)/2`
-/

namespace A109168.P9447184754394670638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) + 1 : ℚ) / 2

end

end A109168.P9447184754394670638

namespace A109168

/-- `(or(n, n+1)+1)/2` -/
def P9447184754394670638.Spec : Prop :=
  ∀ n, P9447184754394670638.a n = (A109168 (n + 1) : ℚ)

end A109168

/-! ## A109168.P17642898454866289973

`∑[Δ[or(n, n-1)]/2]`
-/

namespace A109168.P17642898454866289973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109168.P17642898454866289973

namespace A109168

/-- `∑[Δ[or(n, n-1)]/2]` -/
def P17642898454866289973.Spec : Prop :=
  ∀ n, P17642898454866289973.a n = (A109168 (n + 1) : ℚ)

end A109168

/-! ## A109168.P5586497388301969754

`1-and(n, n+1)/2+n`
-/

namespace A109168.P5586497388301969754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land n (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A109168.P5586497388301969754

namespace A109168

/-- `1-and(n, n+1)/2+n` -/
def P5586497388301969754.Spec : Prop :=
  ∀ n, P5586497388301969754.a n = (A109168 (n + 1) : ℚ)

end A109168

/-! ## A109168.P16878099100664634731

`∑[1-Δ[and(n, n-1)/2]]`
-/

namespace A109168.P16878099100664634731
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109168.P16878099100664634731

namespace A109168

/-- `∑[1-Δ[and(n, n-1)/2]]` -/
def P16878099100664634731.Spec : Prop :=
  ∀ n, P16878099100664634731.a n = (A109168 (n + 1) : ℚ)

end A109168

/-! ## A109168.P16412727218441575549

`(and(n, -(n+2))+n+2)/2`
-/

namespace A109168.P16412727218441575549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n + 2 : ℤ)) + (n + 2 : ℤ) : ℚ) / 2

end

end A109168.P16412727218441575549

namespace A109168

/-- `(and(n, -(n+2))+n+2)/2` -/
def P16412727218441575549.Spec : Prop :=
  ∀ n, P16412727218441575549.a n = (A109168 (n + 1) : ℚ)

end A109168

/-! ## A109168.P11013645940014633166

`ceil((xor(n, n+1)+2*n)/4)`
-/

namespace A109168.P11013645940014633166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (n + 1) + 2 * n : ℚ) / 4⌉

end

end A109168.P11013645940014633166

namespace A109168

/-- `ceil((xor(n, n+1)+2*n)/4)` -/
def P11013645940014633166.Spec : Prop :=
  ∀ n, P11013645940014633166.a n = A109168 (n + 1)

end A109168

/-! ## A109168.P7001320727813193001

`round((xor(n, n+1)+2*n+1)/4)`
-/

namespace A109168.P7001320727813193001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (n + 1) + (2 * n + 1) : ℚ) / 4)

end

end A109168.P7001320727813193001

namespace A109168

/-- `round((xor(n, n+1)+2*n+1)/4)` -/
def P7001320727813193001.Spec : Prop :=
  ∀ n, P7001320727813193001.a n = A109168 (n + 1)

end A109168

/-! ## A109168.P15860755114873945106

`(gcd(n+1, and(n, n+1))+n+1)/2`
-/

namespace A109168.P15860755114873945106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (Nat.land n (n + 1)) + (n + 1) : ℚ) / 2

end

end A109168.P15860755114873945106

namespace A109168

/-- `(gcd(n+1, and(n, n+1))+n+1)/2` -/
def P15860755114873945106.Spec : Prop :=
  ∀ n, P15860755114873945106.a n = (A109168 (n + 1) : ℚ)

end A109168

/-! ## A109168.P13511568650101947199

`a(floor((n-1)/2))+a(n-a(n-1))` with `a(0)=1`
-/

namespace A109168.P13511568650101947199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - a (n - 1))

end

end A109168.P13511568650101947199

namespace A109168

/-- `a(floor((n-1)/2))+a(n-a(n-1))` -/
def P13511568650101947199.Spec : Prop :=
  ∀ n, (P13511568650101947199.a n : ℤ) = A109168 (n + 1)

end A109168

/-! ## A109168.P14116322497548611377

`∑[A214546(n)]`
-/

namespace A109168.P14116322497548611377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109168.P14116322497548611377

namespace A109168

/-- `∑[A214546(n)]` -/
def P14116322497548611377.Spec : Prop :=
  ∀ n, P14116322497548611377.a n = A109168 (n + 1)

end A109168

/-! ## A109168.P2468731137398564391

`(A341522(n)-n)/2`
-/

namespace A109168.P2468731137398564391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341522 n - (n : ℤ) : ℚ) / 2

end

end A109168.P2468731137398564391

namespace A109168

/-- `(A341522(n)-n)/2` -/
def P2468731137398564391.Spec : Prop :=
  ∀ n, P2468731137398564391.a n = (A109168 (n + 1) : ℚ)

end A109168

/-! ## A109168.P1746980825409344474

`(A086799(n+1)+1)/2`
-/

namespace A109168.P1746980825409344474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086799 (n + 1) + 1 : ℚ) / 2

end

end A109168.P1746980825409344474

namespace A109168

/-- `(A086799(n+1)+1)/2` -/
def P1746980825409344474.Spec : Prop :=
  ∀ n, P1746980825409344474.a n = (A109168 (n + 1) : ℚ)

end A109168

/-! ## A109168.P7604914855029522670

`1-A104594(n+1)+n`
-/

namespace A109168.P7604914855029522670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A104594 (n + 1) + (n : ℤ)

end

end A109168.P7604914855029522670

namespace A109168

/-- `1-A104594(n+1)+n` -/
def P7604914855029522670.Spec : Prop :=
  ∀ n, P7604914855029522670.a n = A109168 (n + 1)

end A109168

/-! ## A109168.P15586245689612912329

`(n+1+A006519(n+1))/2`
-/

namespace A109168.P15586245689612912329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) + A006519 (n + 1) : ℚ) / 2

end

end A109168.P15586245689612912329

namespace A109168

/-- `(n+1+A006519(n+1))/2` -/
def P15586245689612912329.Spec : Prop :=
  ∀ n, P15586245689612912329.a n = (A109168 (n + 1) : ℚ)

end A109168

/-!
# A109170: Continued fraction expansion of 2*x which equals the continued fraction of x (A109168) interleaved with positive even numbers.

The programs for A109170, the canonical program `A109170.P12375664245295773507` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109170 has offset 1).

The definition of A109170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109170.P12728251423917517613

`(or(n, n+1)+1)/(n%2+1)²`
-/

namespace A109170.P12728251423917517613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) + 1 : ℚ) / (((n % 2 + 1) ^ 2 : ℕ) : ℚ)

end

end A109170.P12728251423917517613

namespace A109170

/-- `(or(n, n+1)+1)/(n%2+1)²` -/
def P12728251423917517613.Spec : Prop :=
  ∀ n, P12728251423917517613.a n = (A109170 (n + 1) : ℚ)

end A109170

/-! ## A109170.P18304720626036832466

`(or(n, n+1)+1)/gcd(2, n+1)²`
-/

namespace A109170.P18304720626036832466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) + 1 : ℚ) / (Nat.gcd 2 (n + 1) ^ 2 : ℚ)

end

end A109170.P18304720626036832466

namespace A109170

/-- `(or(n, n+1)+1)/gcd(2, n+1)²` -/
def P18304720626036832466.Spec : Prop :=
  ∀ n, P18304720626036832466.a n = (A109170 (n + 1) : ℚ)

end A109170

/-! ## A109170.P6303317216576635379

`(or(n, n+1)+1)/(and(1, n)+1)²`
-/

namespace A109170.P6303317216576635379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) + 1 : ℚ) / ((Nat.land 1 n + 1) ^ 2 : ℚ)

end

end A109170.P6303317216576635379

namespace A109170

/-- `(or(n, n+1)+1)/(and(1, n)+1)²` -/
def P6303317216576635379.Spec : Prop :=
  ∀ n, P6303317216576635379.a n = (A109170 (n + 1) : ℚ)

end A109170

/-! ## A109170.P4645576797572407762

`2^(-1)^n*ceil(or(n, n+1)/2)`
-/

namespace A109170.P4645576797572407762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((-1) ^ n : ℤ) * (⌈(Nat.lor n (n + 1) : ℚ) / 2⌉ : ℚ)

end

end A109170.P4645576797572407762

namespace A109170

/-- `2^(-1)^n*ceil(or(n, n+1)/2)` -/
def P4645576797572407762.Spec : Prop :=
  ∀ n, P4645576797572407762.a n = (A109170 (n + 1) : ℚ)

end A109170

/-! ## A109170.P1612741768050796004

`(or(n, n+1)+1)/(2-∑[(-1)^n])²`
-/

namespace A109170.P1612741768050796004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) + 1 : ℚ) / (((2 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ)

end

end A109170.P1612741768050796004

namespace A109170

/-- `(or(n, n+1)+1)/(2-∑[(-1)^n])²` -/
def P1612741768050796004.Spec : Prop :=
  ∀ n, P1612741768050796004.a n = (A109170 (n + 1) : ℚ)

end A109170

/-! ## A109170.P603813321042312749

`ratio[n%2+1]*A140472(n+1)`
-/

namespace A109170.P603813321042312749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A140472 (n + 1) : ℚ)

end

end A109170.P603813321042312749

namespace A109170

/-- `ratio[n%2+1]*A140472(n+1)` -/
def P603813321042312749.Spec : Prop :=
  ∀ n, P603813321042312749.a n = (A109170 (n + 1) : ℚ)

end A109170

/-! ## A109170.P12375664245295773507

`floor((or(n, n+1)+1)/A010685(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109170

/-- `floor((or(n, n+1)+1)/A010685(n))` -/
def P12375664245295773507.Spec : Prop :=
  ∀ n, P12375664245295773507.a n = A109170 (n + 1)

theorem P12375664245295773507.correct : P12375664245295773507.Spec := by
  intro n
  simp only [A109170, Nat.add_sub_cancel]

end A109170

/-! ## A109170.P7766948048803276053

`((n+1)/2^val(n+1, 2)+1)/2*A001281(2^val(n+1, 2))`
-/

namespace A109170.P7766948048803276053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2 * (A001281 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A109170.P7766948048803276053

namespace A109170

/-- `((n+1)/2^val(n+1, 2)+1)/2*A001281(2^val(n+1, 2))` -/
def P7766948048803276053.Spec : Prop :=
  ∀ n, P7766948048803276053.a n = (A109170 (n + 1) : ℚ)

end A109170

/-! ## A109170.P9968956492563952376

`A109168(A064680(n+1))`
-/

namespace A109170.P9968956492563952376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A064680 (n + 1)).toNat

end

end A109170.P9968956492563952376

namespace A109170

/-- `A109168(A064680(n+1))` -/
def P9968956492563952376.Spec : Prop :=
  ∀ n, P9968956492563952376.a n = A109170 (n + 1)

end A109170

/-! ## A109170.P4613983640078701674

`A109168(A235800(n+1))`
-/

namespace A109170.P4613983640078701674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A235800 (n + 1)).toNat

end

end A109170.P4613983640078701674

namespace A109170

/-- `A109168(A235800(n+1))` -/
def P4613983640078701674.Spec : Prop :=
  ∀ n, P4613983640078701674.a n = A109170 (n + 1)

end A109170

/-! ## A109170.P1271963958014141763

`A109168(A193356(n+1)+A026741(n+1))`
-/

namespace A109170.P1271963958014141763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A193356 (n + 1) + A026741 (n + 1)).toNat

end

end A109170.P1271963958014141763

namespace A109170

/-- `A109168(A193356(n+1)+A026741(n+1))` -/
def P1271963958014141763.Spec : Prop :=
  ∀ n, P1271963958014141763.a n = A109170 (n + 1)

end A109170

/-! ## A109170.P2139625986117817167

`A001316(Δ[A001316(n)]²)*A003602(n+1)`
-/

namespace A109170.P2139625986117817167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((f1 (n + 1) - f1 n) ^ 2).toNat * A003602 (n + 1)

end

end A109170.P2139625986117817167

namespace A109170

/-- `A001316(Δ[A001316(n)]²)*A003602(n+1)` -/
def P2139625986117817167.Spec : Prop :=
  ∀ n, P2139625986117817167.a n = A109170 (n + 1)

end A109170

/-!
# A109172: Recursive form of A109845 without a(2)=3.

The programs for A109172, there is no canonical definition to state claims against.
-/

/-! ## A109172.P15566263085253897717

`A062157(n)+(A062157(n)+a(n-1))*a(n-1)` with `a(0)=2`
-/

namespace A109172.P15566263085253897717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A062157 n + (A062157 n + a (n - 1)) * a (n - 1)

end

end A109172.P15566263085253897717

/-! ## A109172.P5287126540313853864

`(a(n-1)-A033999(n))*a(n-1)-A033999(n)` with `a(0)=2`
-/

namespace A109172.P5287126540313853864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) - A033999 n) * a (n - 1) - A033999 n

end

end A109172.P5287126540313853864

/-!
# A109173: Recursive form of A109845 but with a(1)=1.

The programs for A109173, there is no canonical definition to state claims against.
-/

/-! ## A109173.P1857762169275944999

`or(1, A109845(n+1)-1)`
-/

namespace A109173.P1857762169275944999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A109845 (n + 1) - 1)

end

end A109173.P1857762169275944999

/-! ## A109173.P11498682496361325182

`A109845(n+1)-A000007(n)`
-/

namespace A109173.P11498682496361325182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109845 (n + 1) - A000007 n

end

end A109173.P11498682496361325182

/-! ## A109173.P13048792861735400596

`A109845(n+1)-A055641(n)`
-/

namespace A109173.P13048792861735400596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109845 (n + 1) - A055641 n

end

end A109173.P13048792861735400596

/-! ## A109173.P11178481201389793403

`A109845(n+1)-A243745(n)`
-/

namespace A109173.P11178481201389793403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109845 (n + 1) - A243745 (n + 10)

end

end A109173.P11178481201389793403

/-! ## A109173.P10348645100743090767

`A109845(n+1)-A321936(n)`
-/

namespace A109173.P10348645100743090767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109845 (n + 1) - A321936 n

end

end A109173.P10348645100743090767

/-!
# A109175: Minimum number of moves to solve the first Panex puzzle of order n of transferring a side tower to the center column.

The programs for A109175, there is no canonical definition to state claims against.
-/

/-! ## A109175.P11096076281727815989

`A048739(n)+A080039(n)-A052542(n)`
-/

namespace A109175.P11096076281727815989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + (A080039 n - A052542 n)

end

end A109175.P11096076281727815989

/-! ## A109175.P3857079235748247365

`A080039(n)+A099425(n)-A171842(n)`
-/

namespace A109175.P3857079235748247365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 n + (A099425 n - A171842 n)

end

end A109175.P3857079235748247365

/-! ## A109175.P4549061936209879581

`A115185(n+1)+A059841(A161952(n+1))`
-/

namespace A109175.P4549061936209879581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115185 (n + 1) + A059841 (A161952 (n + 1)).toNat

end

end A109175.P4549061936209879581

/-! ## A109175.P17023665631339905434

`record[(A115185(n+1)+A000035(n))*A015852(n)]`
-/

namespace A109175.P17023665631339905434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115185 (n + 1) + A000035 n) * A015852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109175.P17023665631339905434

/-! ## A109175.P8463220219413198485

`(A115185(n+1)+A000035(n))^A007318(A083029(n+1))`
-/

namespace A109175.P8463220219413198485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115185 (n + 1) + A000035 n : ℚ) ^ (A007318 (A083029 (n + 1)).toNat : ℤ)

end

end A109175.P8463220219413198485

/-!
# A109176: Five-digit primes which use each of the decimal digits 0 through 4 exactly once.

The programs for A109176, there is no canonical definition to state claims against.
-/

/-! ## A109176.P1138273274674598209

`p?[A187796(n+1)]`
-/

namespace A109176.P1138273274674598209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109176.P1138273274674598209

/-! ## A109176.P13777161673320721175

`p?[A199168(n+1)]`
-/

namespace A109176.P13777161673320721175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109176.P13777161673320721175

/-! ## A109176.P16635562026548463076

`A187796(A005555(n))`
-/

namespace A109176.P16635562026548463076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187796 (A005555 n).toNat

end

end A109176.P16635562026548463076

/-! ## A109176.P16041634403293659014

`A187796(A291769(n))`
-/

namespace A109176.P16041634403293659014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187796 (A291769 n).toNat

end

end A109176.P16041634403293659014

/-! ## A109176.P12600022351057782393

`A187796(A348553(n))`
-/

namespace A109176.P12600022351057782393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187796 (A348553 n).toNat

end

end A109176.P12600022351057782393

/-!
# A109177: Eight-digit primes which use each of 0-to-7 decimal digits exactly once.

The programs for A109177, there is no canonical definition to state claims against.
-/

/-! ## A109177.P17683597071849092532

`A187796(n+17)`
-/

namespace A109177.P17683597071849092532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187796 (n + 17)

end

end A109177.P17683597071849092532

/-!
# A109180: The set N of numbers such that each positive integer can be written in the form F + n, where F is a Fibonacci number and n in N, in an even number of ways.

The programs for A109180, there is no canonical definition to state claims against.
-/

/-! ## A109180.P12832070580682348561

`eq[1, A076739(n)%2]`
-/

namespace A109180.P12832070580682348561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076739 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109180.P12832070580682348561

/-! ## A109180.P12107917158338063768

`eq[1, A000007(val(A076739(n), 2))]`
-/

namespace A109180.P12107917158338063768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A076739 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109180.P12107917158338063768

/-! ## A109180.P1475842393451760923

`lt[1, A054977(val(A076739(n), 2))]`
-/

namespace A109180.P1475842393451760923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (SequenceMachineLib.valuation (A076739 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A109180.P1475842393451760923

/-! ## A109180.P16507240033833761175

`lt[A057427(val(A076739(n), 2)), 1]`
-/

namespace A109180.P16507240033833761175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (SequenceMachineLib.valuation (A076739 n).toNat 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A109180.P16507240033833761175

/-! ## A109180.P1657930040693543319

`eq[1, gcd(A000079(n), A076739(n))]`
-/

namespace A109180.P1657930040693543319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A076739 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109180.P1657930040693543319

/-!
# A109181: a(n) = A003132(A052034(n)).

The programs for A109181, the canonical program `A109181.P10536304723542597617` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109181 has offset 1).

The definition of A109181 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, A052034, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109181.P10536304723542597617

`A003132(A052034(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109181

/-- `A003132(A052034(n+1))` -/
def P10536304723542597617.Spec : Prop :=
  ∀ n, P10536304723542597617.a n = A109181 (n + 1)

theorem P10536304723542597617.correct : P10536304723542597617.Spec := by
  intro n
  simp only [A109181, Nat.add_sub_cancel]

end A109181

/-! ## A109181.P3990282380538919640

`∑{digits}[A052034(n+1), A000290(#)]`
-/

namespace A109181.P3990282380538919640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000290 x).sum

end

end A109181.P3990282380538919640

namespace A109181

/-- `∑{digits}[A052034(n+1), A000290(#)]` -/
def P3990282380538919640.Spec : Prop :=
  ∀ n, P3990282380538919640.a n = A109181 (n + 1)

end A109181

/-! ## A109181.P16878594404767558453

`p?[∑{digits}[p?[2*n+1], #²]]`
-/

namespace A109181.P16878594404767558453
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A109181.P16878594404767558453

namespace A109181

/-- `p?[∑{digits}[p?[2*n+1], #²]]` -/
def P16878594404767558453.Spec : Prop :=
  ∀ n, (P16878594404767558453.a n : ℤ) = A109181 (n + 1)

end A109181

/-! ## A109181.P14731360541611777477

`p?[A376714(n+1)]`
-/

namespace A109181.P14731360541611777477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109181.P14731360541611777477

namespace A109181

/-- `p?[A376714(n+1)]` -/
def P14731360541611777477.Spec : Prop :=
  ∀ n, P14731360541611777477.a n = A109181 (n + 1)

end A109181

/-! ## A109181.P16707184980418682036

`p?[∑{digits}[A000040(n+1), #²]]`
-/

namespace A109181.P16707184980418682036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A109181.P16707184980418682036

namespace A109181

/-- `p?[∑{digits}[A000040(n+1), #²]]` -/
def P16707184980418682036.Spec : Prop :=
  ∀ n, (P16707184980418682036.a n : ℤ) = A109181 (n + 1)

end A109181

/-! ## A109181.P1808552644053890953

`A376714(A177149(n+1))`
-/

namespace A109181.P1808552644053890953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376714 (A177149 (n + 1)).toNat

end

end A109181.P1808552644053890953

namespace A109181

/-- `A376714(A177149(n+1))` -/
def P1808552644053890953.Spec : Prop :=
  ∀ n, P1808552644053890953.a n = A109181 (n + 1)

end A109181

/-! ## A109181.P13560615443362023968

`filter[A376714(n+1), A010051(#)]`
-/

namespace A109181.P13560615443362023968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A109181.P13560615443362023968

namespace A109181

/-- `filter[A376714(n+1), A010051(#)]` -/
def P13560615443362023968.Spec : Prop :=
  ∀ n, P13560615443362023968.a n = A109181 (n + 1)

end A109181

/-! ## A109181.P9204063225235897300

`filter[A376714(n+1), A080339(#)]`
-/

namespace A109181.P9204063225235897300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A109181.P9204063225235897300

namespace A109181

/-- `filter[A376714(n+1), A080339(#)]` -/
def P9204063225235897300.Spec : Prop :=
  ∀ n, P9204063225235897300.a n = A109181 (n + 1)

end A109181

/-! ## A109181.P18192513738584634243

`p?[∑{digits}[A008578(n+1), #²]]`
-/

namespace A109181.P18192513738584634243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A109181.P18192513738584634243

namespace A109181

/-- `p?[∑{digits}[A008578(n+1), #²]]` -/
def P18192513738584634243.Spec : Prop :=
  ∀ n, (P18192513738584634243.a n : ℤ) = A109181 (n + 1)

end A109181

/-! ## A109181.P125350460705937212

`∑{digits}[p?[A108662(n+1)], #²]`
-/

namespace A109181.P125350460705937212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A109181.P125350460705937212

namespace A109181

/-- `∑{digits}[p?[A108662(n+1)], #²]` -/
def P125350460705937212.Spec : Prop :=
  ∀ n, (P125350460705937212.a n : ℤ) = A109181 (n + 1)

end A109181

/-! ## A109181.P11016934364085272322

`p?[A003132(p?[2*n+1])]`
-/

namespace A109181.P11016934364085272322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109181.P11016934364085272322

namespace A109181

/-- `p?[A003132(p?[2*n+1])]` -/
def P11016934364085272322.Spec : Prop :=
  ∀ n, P11016934364085272322.a n = A109181 (n + 1)

end A109181

/-! ## A109181.P502430450630619272

`p?[A003132(A000040(n+1))]`
-/

namespace A109181.P502430450630619272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109181.P502430450630619272

namespace A109181

/-- `p?[A003132(A000040(n+1))]` -/
def P502430450630619272.Spec : Prop :=
  ∀ n, P502430450630619272.a n = A109181 (n + 1)

end A109181

/-! ## A109181.P6674934336741587027

`p?[A003132(A004087(n+1))]`
-/

namespace A109181.P6674934336741587027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A004087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109181.P6674934336741587027

namespace A109181

/-- `p?[A003132(A004087(n+1))]` -/
def P6674934336741587027.Spec : Prop :=
  ∀ n, P6674934336741587027.a n = A109181 (n + 1)

end A109181

/-! ## A109181.P9820721519270468531

`p?[A003132(A028906(n+1))]`
-/

namespace A109181.P9820721519270468531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A028906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109181.P9820721519270468531

namespace A109181

/-- `p?[A003132(A028906(n+1))]` -/
def P9820721519270468531.Spec : Prop :=
  ∀ n, P9820721519270468531.a n = A109181 (n + 1)

end A109181

/-! ## A109181.P14488937845515169986

`p?[A003132(A063884(n+1))]`
-/

namespace A109181.P14488937845515169986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A063884 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109181.P14488937845515169986

namespace A109181

/-- `p?[A003132(A063884(n+1))]` -/
def P14488937845515169986.Spec : Prop :=
  ∀ n, P14488937845515169986.a n = A109181 (n + 1)

end A109181

/-! ## A109181.P5011049618462139501

`p?[A003132(A063904(n+1))]`
-/

namespace A109181.P5011049618462139501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A063904 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109181.P5011049618462139501

namespace A109181

/-- `p?[A003132(A063904(n+1))]` -/
def P5011049618462139501.Spec : Prop :=
  ∀ n, P5011049618462139501.a n = A109181 (n + 1)

end A109181

/-! ## A109181.P1679839353031897022

`p?[A032741(n)²*A003132(n)]`
-/

namespace A109181.P1679839353031897022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n ^ 2 * A003132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109181.P1679839353031897022

namespace A109181

/-- `p?[A032741(n)²*A003132(n)]` -/
def P1679839353031897022.Spec : Prop :=
  ∀ n, P1679839353031897022.a n = A109181 (n + 1)

end A109181

/-! ## A109181.P2252185301081792239

`p?[A105700(n)²*A003132(n)]`
-/

namespace A109181.P2252185301081792239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2 * A003132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109181.P2252185301081792239

namespace A109181

/-- `p?[A105700(n)²*A003132(n)]` -/
def P2252185301081792239.Spec : Prop :=
  ∀ n, P2252185301081792239.a n = A109181 (n + 1)

end A109181

/-!
# A109182: Numbers k such that the k-th and (k+1)-th primes have the same sum of squares of digits.

The programs for A109182, there is no canonical definition to state claims against.
-/

/-! ## A109182.P16938994832089238212

`A342874(n+1)-A342854(∑[A342854(n)])`
-/

namespace A109182.P16938994832089238212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342874 (n + 1) - A342854 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109182.P16938994832089238212

/-! ## A109182.P5272449630000508135

`A342874(A292125(n+1))`
-/

namespace A109182.P5272449630000508135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342874 (A292125 (n + 1)).toNat

end

end A109182.P5272449630000508135

/-!
# A109186: Number of hierarchical orderings of n unlabeled elements where levels are clustered. Labeled analog of A104525.

The programs for A109186, there is no canonical definition to state claims against.
-/

/-! ## A109186.P15882164676156105491

`A005843(A083071(n))-A181082(n)`
-/

namespace A109186.P15882164676156105491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A083071 n).toNat - A181082 n

end

end A109186.P15882164676156105491

/-!
# A109187: Triangle read by rows: T(n,k) is number of Grand Motzkin paths of length n having k (1,0)-steps.

The programs for A109187, the canonical program `A109187.P2341051230272957120` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109187 has offset 0).

The definition of A109187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109187.P668171293643003615

`A046854(n)*A108044(n)`
-/

namespace A109187.P668171293643003615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A108044 n

end

end A109187.P668171293643003615

namespace A109187

/-- `A046854(n)*A108044(n)` -/
def P668171293643003615.Spec : Prop :=
  ∀ n, P668171293643003615.a n = A109187 n

end A109187

/-! ## A109187.P12600108891490755148

`A061554(n)*A168561(n)`
-/

namespace A109187.P12600108891490755148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n * A168561 n

end

end A109187.P12600108891490755148

namespace A109187

/-- `A061554(n)*A168561(n)` -/
def P12600108891490755148.Spec : Prop :=
  ∀ n, P12600108891490755148.a n = A109187 n

end A109187

/-! ## A109187.P13796423439478884902

`A108044(n)*A134513(n)`
-/

namespace A109187.P13796423439478884902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 n * A134513 n

end

end A109187.P13796423439478884902

namespace A109187

/-- `A108044(n)*A134513(n)` -/
def P13796423439478884902.Spec : Prop :=
  ∀ n, P13796423439478884902.a n = A109187 n

end A109187

/-! ## A109187.P13897990901679742168

`A108044(n)*A168561(n)`
-/

namespace A109187.P13897990901679742168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 n * A168561 n

end

end A109187.P13897990901679742168

namespace A109187

/-- `A108044(n)*A168561(n)` -/
def P13897990901679742168.Spec : Prop :=
  ∀ n, P13897990901679742168.a n = A109187 n

end A109187

/-! ## A109187.P8081518811017214256

`lcm(A049310(n), A107230(n))`
-/

namespace A109187.P8081518811017214256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049310 n) (A107230 n)

end

end A109187.P8081518811017214256

namespace A109187

/-- `lcm(A049310(n), A107230(n))` -/
def P8081518811017214256.Spec : Prop :=
  ∀ n, (P8081518811017214256.a n : ℤ) = A109187 n

end A109187

/-! ## A109187.P6354058148653617360

`A030111(n+1)*A053121(n)`
-/

namespace A109187.P6354058148653617360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (n + 1) * A053121 n

end

end A109187.P6354058148653617360

namespace A109187

/-- `A030111(n+1)*A053121(n)` -/
def P6354058148653617360.Spec : Prop :=
  ∀ n, P6354058148653617360.a n = A109187 n

end A109187

/-! ## A109187.P2341051230272957120

`A097610(n)*A115514(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A109187

/-- `A097610(n)*A115514(n+1)` -/
def P2341051230272957120.Spec : Prop :=
  ∀ n, P2341051230272957120.a n = A109187 n

theorem P2341051230272957120.correct : P2341051230272957120.Spec := by
  intro n
  simp only [A109187]

end A109187

/-! ## A109187.P2251119352906420633

`A107230(n)*A128174(n+1)`
-/

namespace A109187.P2251119352906420633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 n * A128174 (n + 1)

end

end A109187.P2251119352906420633

namespace A109187

/-- `A107230(n)*A128174(n+1)` -/
def P2251119352906420633.Spec : Prop :=
  ∀ n, P2251119352906420633.a n = A109187 n

end A109187

/-! ## A109187.P17971977569213130124

`A108044(n)*A134505(n+1)`
-/

namespace A109187.P17971977569213130124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 n * A134505 (n + 1)

end

end A109187.P17971977569213130124

namespace A109187

/-- `A108044(n)*A134505(n+1)` -/
def P17971977569213130124.Spec : Prop :=
  ∀ n, P17971977569213130124.a n = A109187 n

end A109187

/-! ## A109187.P13881627801004960129

`A097610(n)*A158944(n+1)`
-/

namespace A109187.P13881627801004960129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n * A158944 (n + 1)

end

end A109187.P13881627801004960129

namespace A109187

/-- `A097610(n)*A158944(n+1)` -/
def P13881627801004960129.Spec : Prop :=
  ∀ n, P13881627801004960129.a n = A109187 n

end A109187

/-! ## A109187.P1977311736125542191

`A097610(n)*A209278(n+1)`
-/

namespace A109187.P1977311736125542191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n * A209278 (n + 1)

end

end A109187.P1977311736125542191

namespace A109187

/-- `A097610(n)*A209278(n+1)` -/
def P1977311736125542191.Spec : Prop :=
  ∀ n, P1977311736125542191.a n = A109187 n

end A109187

/-! ## A109187.P3420583945003965413

`A097610(n)*A135840(n+1)`
-/

namespace A109187.P3420583945003965413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n * A135840 (n + 1)

end

end A109187.P3420583945003965413

namespace A109187

/-- `A097610(n)*A135840(n+1)` -/
def P3420583945003965413.Spec : Prop :=
  ∀ n, P3420583945003965413.a n = A109187 n

end A109187

/-! ## A109187.P14243535064161707448

`sqrt(sqrt(A008459(n))*A282252(n))`
-/

namespace A109187.P14243535064161707448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A008459 n : ℝ) * (A282252 n : ℝ))

end

end A109187.P14243535064161707448

namespace A109187

/-- `sqrt(sqrt(A008459(n))*A282252(n))` -/
def P14243535064161707448.Spec : Prop :=
  ∀ n, P14243535064161707448.a n = (A109187 n : ℝ)

end A109187

/-!
# A109188: Number of (1,0) steps in all Grand Motzkin paths of length n.

The programs for A109188, the canonical program `A109188.P13095165544596426662` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109188 has offset 1).

The definition of A109188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109188.P13095165544596426662

`(n+1)*A002426(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109188

/-- `(n+1)*A002426(n)` -/
def P13095165544596426662.Spec : Prop :=
  ∀ n, P13095165544596426662.a n = A109188 (n + 1)

theorem P13095165544596426662.correct : P13095165544596426662.Spec := by
  intro n
  simp only [A109188, Nat.add_sub_cancel]

end A109188

/-! ## A109188.P2443413669718948693

`Δ[A102839(n)]`
-/

namespace A109188.P2443413669718948693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109188.P2443413669718948693

namespace A109188

/-- `Δ[A102839(n)]` -/
def P2443413669718948693.Spec : Prop :=
  ∀ n, P2443413669718948693.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P17380744488474803443

`A005213(2*n)*(n+1)`
-/

namespace A109188.P17380744488474803443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n) * (n + 1 : ℤ)

end

end A109188.P17380744488474803443

namespace A109188

/-- `A005213(2*n)*(n+1)` -/
def P17380744488474803443.Spec : Prop :=
  ∀ n, P17380744488474803443.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P13672536564874091624

`Δ[∑[n]*A086246(n+1)]`
-/

namespace A109188.P13672536564874091624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A086246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109188.P13672536564874091624

namespace A109188

/-- `Δ[∑[n]*A086246(n+1)]` -/
def P13672536564874091624.Spec : Prop :=
  ∀ n, P13672536564874091624.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P3242434599871963908

`(2*A097861(n)+1)*(n+1)`
-/

namespace A109188.P3242434599871963908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A097861 n + 1) * (n + 1 : ℤ)

end

end A109188.P3242434599871963908

namespace A109188

/-- `(2*A097861(n)+1)*(n+1)` -/
def P3242434599871963908.Spec : Prop :=
  ∀ n, P3242434599871963908.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P799694746986143489

`(n+1)*(2*A257520(n)-1)`
-/

namespace A109188.P799694746986143489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 * A257520 n - 1)

end

end A109188.P799694746986143489

namespace A109188

/-- `(n+1)*(2*A257520(n)-1)` -/
def P799694746986143489.Spec : Prop :=
  ∀ n, P799694746986143489.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P16013288586232664161

`A134757(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A109188.P16013288586232664161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134757 (n + 1) - a (n - 1)

end

end A109188.P16013288586232664161

namespace A109188

/-- `A134757(n+1)-a(n-1)` -/
def P16013288586232664161.Spec : Prop :=
  ∀ n, P16013288586232664161.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P10348200684290472409

`(n+1)*abs(Δ[n*A099323(n)])`
-/

namespace A109188.P10348200684290472409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |f1 (n + 1) - f1 n|

end

end A109188.P10348200684290472409

namespace A109188

/-- `(n+1)*abs(Δ[n*A099323(n)])` -/
def P10348200684290472409.Spec : Prop :=
  ∀ n, P10348200684290472409.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P3727316733146258188

`A391990(n)+A132894(n)`
-/

namespace A109188.P3727316733146258188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391990 n + A132894 n

end

end A109188.P3727316733146258188

namespace A109188

/-- `A391990(n)+A132894(n)` -/
def P3727316733146258188.Spec : Prop :=
  ∀ n, P3727316733146258188.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P3995440759658805244

`record[A005213(n)*A008619(n)]`
-/

namespace A109188.P3995440759658805244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 n * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109188.P3995440759658805244

namespace A109188

/-- `record[A005213(n)*A008619(n)]` -/
def P3995440759658805244.Spec : Prop :=
  ∀ n, P3995440759658805244.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P4024909361226249442

`A102839(n+1)-A102839(n)`
-/

namespace A109188.P4024909361226249442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102839 (n + 1) - A102839 n

end

end A109188.P4024909361226249442

namespace A109188

/-- `A102839(n+1)-A102839(n)` -/
def P4024909361226249442.Spec : Prop :=
  ∀ n, P4024909361226249442.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P621349154277668842

`A002426(n)*A008619(2*n)`
-/

namespace A109188.P621349154277668842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n * A008619 (2 * n)

end

end A109188.P621349154277668842

namespace A109188

/-- `A002426(n)*A008619(2*n)` -/
def P621349154277668842.Spec : Prop :=
  ∀ n, P621349154277668842.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P5003003888661888787

`A163865(n+1)-A002426(n+1)`
-/

namespace A109188.P5003003888661888787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163865 (n + 1) - A002426 (n + 1)

end

end A109188.P5003003888661888787

namespace A109188

/-- `A163865(n+1)-A002426(n+1)` -/
def P5003003888661888787.Spec : Prop :=
  ∀ n, P5003003888661888787.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P14171503688203953894

`(n+1)*A305161(∑[n+3])`
-/

namespace A109188.P14171503688203953894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A305161 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109188.P14171503688203953894

namespace A109188

/-- `(n+1)*A305161(∑[n+3])` -/
def P14171503688203953894.Spec : Prop :=
  ∀ n, P14171503688203953894.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P7166868240385993706

`(n+1)*A094531(∑[n])`
-/

namespace A109188.P7166868240385993706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A094531 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109188.P7166868240385993706

namespace A109188

/-- `(n+1)*A094531(∑[n])` -/
def P7166868240385993706.Spec : Prop :=
  ∀ n, P7166868240385993706.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P4120717702565662419

`(n+1)*A111960(∑[n])`
-/

namespace A109188.P4120717702565662419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A111960 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109188.P4120717702565662419

namespace A109188

/-- `(n+1)*A111960(∑[n])` -/
def P4120717702565662419.Spec : Prop :=
  ∀ n, P4120717702565662419.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P16685482576887848732

`(n+1)*A114422(∑[n])`
-/

namespace A109188.P16685482576887848732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A114422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109188.P16685482576887848732

namespace A109188

/-- `(n+1)*A114422(∑[n])` -/
def P16685482576887848732.Spec : Prop :=
  ∀ n, P16685482576887848732.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P9122267386405201597

`(n+1)*A115990(∑[n])`
-/

namespace A109188.P9122267386405201597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A115990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109188.P9122267386405201597

namespace A109188

/-- `(n+1)*A115990(∑[n])` -/
def P9122267386405201597.Spec : Prop :=
  ∀ n, P9122267386405201597.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P8528121359121543925

`(n+1)*A158793(∑[n])`
-/

namespace A109188.P8528121359121543925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158793 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109188.P8528121359121543925

namespace A109188

/-- `(n+1)*A158793(∑[n])` -/
def P8528121359121543925.Spec : Prop :=
  ∀ n, P8528121359121543925.a n = A109188 (n + 1)

end A109188

/-! ## A109188.P7506404949274417829

`(n+1)*A171128(∑[n])`
-/

namespace A109188.P7506404949274417829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A171128 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109188.P7506404949274417829

namespace A109188

/-- `(n+1)*A171128(∑[n])` -/
def P7506404949274417829.Spec : Prop :=
  ∀ n, P7506404949274417829.a n = A109188 (n + 1)

end A109188

/-!
# A109189: Triangle read by rows: T(n,k) is number of Grand Motzkin paths of length n having k (1,0)-steps at level zero. (A Grand Motzkin path is a path in the half-plane x>=0, starting at (0,0), ending at (n,0) and consisting of steps u=(1,1), d=(1,-1) and h=(1,0).).

The programs for A109189, there is no canonical definition to state claims against.
-/

/-! ## A109189.P16749341320336015522

`A000120(ceil(xor(1, n)/2)*A350212(n))`
-/

namespace A109189.P16749341320336015522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (⌈(Nat.xor 1 n : ℚ) / 2⌉ * A350212 n).toNat

end

end A109189.P16749341320336015522

/-! ## A109189.P18311385120594615623

`A000120(A028242(n)*A350212(n))`
-/

namespace A109189.P18311385120594615623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A028242 n * A350212 n).toNat

end

end A109189.P18311385120594615623

/-! ## A109189.P12830946972376951208

`A105422(n)*A269624(A119502(n))`
-/

namespace A109189.P12830946972376951208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n * A269624 (A119502 n).toNat

end

end A109189.P12830946972376951208

/-! ## A109189.P8246486500411282816

`A028930(A025581(n)^A106249(n))`
-/

namespace A109189.P8246486500411282816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (A106249 n : ℤ))).toNat

end

end A109189.P8246486500411282816

/-!
# A109190: Number of (1,0)-steps at level zero in all Grand Motzkin paths of length n.

The programs for A109190, there is no canonical definition to state claims against.
-/

/-! ## A109190.P17894053808168281911

`A111961(n)-A103435(n)`
-/

namespace A109190.P17894053808168281911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111961 n - A103435 n

end

end A109190.P17894053808168281911

/-! ## A109190.P3849829273364408757

`A111961(n)-A000045(n)*A000079(n)`
-/

namespace A109190.P3849829273364408757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111961 n - A000045 n * A000079 n

end

end A109190.P3849829273364408757

/-! ## A109190.P14851594772882582939

`A109189(∑[n])`
-/

namespace A109190.P14851594772882582939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109190.P14851594772882582939

/-! ## A109190.P7927167165166406887

`A109189(A000217(n))%A028329(n)`
-/

namespace A109190.P7927167165166406887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109189 (A000217 n).toNat) (A028329 n)

end

end A109190.P7927167165166406887

/-! ## A109190.P11026898010227283599

`lcm(A040001(n), A109189(A000217(n)))`
-/

namespace A109190.P11026898010227283599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A109189 (A000217 n).toNat)

end

end A109190.P11026898010227283599

/-! ## A109190.P9499142311150722902

`or(A000007(n), A109189(A000217(n)))`
-/

namespace A109190.P9499142311150722902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A109189 (A000217 n).toNat)

end

end A109190.P9499142311150722902

/-!
# A109192: Number of Grand Motzkin paths of length n and having no hills (i.e., no ud's starting at level 0). (A Grand Motzkin path of length n is a path in the half-plane x >= 0, starting at (0,0), ending at (n,0) and consisting of steps u=(1,1), d=(1,-1) and h=(1,0).)

The programs for A109192, there is no canonical definition to state claims against.
-/

/-! ## A109192.P662872408850120289

`A109191(∑[ceil(n/2)])`
-/

namespace A109192.P662872408850120289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109191 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109192.P662872408850120289

/-! ## A109192.P8861962114762545149

`A109191(A076921(n+1))+char[15]`
-/

namespace A109192.P8861962114762545149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109191 (A076921 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A109192.P8861962114762545149

/-! ## A109192.P4173172599244272942

`A007318(∑[n])*A109191(A076921(n+1))`
-/

namespace A109192.P4173172599244272942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A109191 (A076921 (n + 1)).toNat

end

end A109192.P4173172599244272942

/-! ## A109192.P16224451509723246765

`A109191(A076921(n+1))%A000108(n+2)`
-/

namespace A109192.P16224451509723246765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109191 (A076921 (n + 1)).toNat) (A000108 (n + 2))

end

end A109192.P16224451509723246765

/-! ## A109192.P7054061558800988810

`A109191(A076921(n+1))/A007318(C(2, n))`
-/

namespace A109192.P7054061558800988810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109191 (A076921 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A109192.P7054061558800988810

/-!
# A109193: Triangle read by rows: T(n,k) is number of Grand Motzkin paths of length n having k returns to the x-axis (i.e., d or u steps hitting the x-axis).

The programs for A109193, there is no canonical definition to state claims against.
-/

/-! ## A109193.P10019808311051609544

`A000079(A055087(n))*A097612(n)`
-/

namespace A109193.P10019808311051609544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055087 n).toNat * A097612 n

end

end A109193.P10019808311051609544

/-! ## A109193.P10000597123338175988

`A059268(A091018(n))*A097612(n)`
-/

namespace A109193.P10000597123338175988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A097612 n

end

end A109193.P10000597123338175988

/-!
# A109194: Number of returns to the x-axis (i.e., d or u steps hitting the x-axis) in all Grand Motzkin paths of length n. (A Grand Motzkin path of length n is a path in the half-plane x>=0, starting at (0,0), ending at (n,0) and consisting of steps u=(1,1), d=(1,-1) and h=(1,0).).

The programs for A109194, the canonical program `A109194.P15180095982522545927` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109194 has offset 2).

The definition of A109194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109194.P2392276351490338337

`2*A109196(n+2)`
-/

namespace A109194.P2392276351490338337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109196 (n + 2)

end

end A109194.P2392276351490338337

namespace A109194

/-- `2*A109196(n+2)` -/
def P2392276351490338337.Spec : Prop :=
  ∀ n, P2392276351490338337.a n = A109194 (n + 2)

end A109194

/-! ## A109194.P15180095982522545927

`A275289(n+3)+A055218(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A109194

/-- `A275289(n+3)+A055218(n)` -/
def P15180095982522545927.Spec : Prop :=
  ∀ n, P15180095982522545927.a n = A109194 (n + 2)

theorem P15180095982522545927.correct : P15180095982522545927.Spec := by
  intro n
  simp only [A109194, Nat.add_sub_cancel]

end A109194

/-! ## A109194.P17538215075882665941

`A046717(n+2)-A002426(n+2)`
-/

namespace A109194.P17538215075882665941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (n + 2) - A002426 (n + 2)

end

end A109194.P17538215075882665941

namespace A109194

/-- `A046717(n+2)-A002426(n+2)` -/
def P17538215075882665941.Spec : Prop :=
  ∀ n, P17538215075882665941.a n = A109194 (n + 2)

end A109194

/-! ## A109194.P12239525669434427117

`2*(A055218(n)-A057585(n+1))`
-/

namespace A109194.P12239525669434427117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A055218 n - A057585 (n + 1))

end

end A109194.P12239525669434427117

namespace A109194

/-- `2*(A055218(n)-A057585(n+1))` -/
def P12239525669434427117.Spec : Prop :=
  ∀ n, P12239525669434427117.a n = A109194 (n + 2)

end A109194

/-! ## A109194.P8947934076328862143

`2*(A275289(n+3)+A057585(n+1))`
-/

namespace A109194.P8947934076328862143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A275289 (n + 3) + A057585 (n + 1))

end

end A109194.P8947934076328862143

namespace A109194

/-- `2*(A275289(n+3)+A057585(n+1))` -/
def P8947934076328862143.Spec : Prop :=
  ∀ n, P8947934076328862143.a n = A109194 (n + 2)

end A109194

/-! ## A109194.P8199547118991278144

`2*(A081251(n+1)-∑[A005717(n+1)])`
-/

namespace A109194.P8199547118991278144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081251 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109194.P8199547118991278144

namespace A109194

/-- `2*(A081251(n+1)-∑[A005717(n+1)])` -/
def P8199547118991278144.Spec : Prop :=
  ∀ n, P8199547118991278144.a n = A109194 (n + 2)

end A109194

/-!
# A109195: Triangle read by rows: T(n,k) is number of Grand Motzkin paths of length n having k returns to the x-axis from above (i.e., d steps hitting the x-axis).

The programs for A109195, there is no canonical definition to state claims against.
-/

/-! ## A109195.P12635361535732012495

`A122896(comp[n²]+n)`
-/

namespace A109195.P12635361535732012495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122896 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A109195.P12635361535732012495

/-! ## A109195.P8921293671129138043

`A064189(2*n-floor(sqrt(n)))`
-/

namespace A109195.P8921293671129138043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (2 * n - Nat.sqrt n)

end

end A109195.P8921293671129138043

/-! ## A109195.P1002632914243691436

`A026300(A056943(comp[n²]+n))`
-/

namespace A109195.P1002632914243691436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A056943 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)).toNat

end

end A109195.P1002632914243691436

/-!
# A109196: Number of returns to the x-axis from above (i.e., d steps hitting the x-axis) in all Grand Motzkin paths of length n.

The programs for A109196, the canonical program `A109196.P10916885654328462370` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109196 has offset 2).

The definition of A109196 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109194, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109196.P10916885654328462370

`1/2*A109194(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A109196

/-- `1/2*A109194(n+2)` -/
def P10916885654328462370.Spec : Prop :=
  ∀ n, P10916885654328462370.a n = (A109196 (n + 2) : ℚ)

end A109196

/-! ## A109196.P4468071802258101332

`A109194(n+2)/2`
-/

namespace A109196.P4468071802258101332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109194 (n + 2) : ℚ) / 2

end

end A109196.P4468071802258101332

namespace A109196

/-- `A109194(n+2)/2` -/
def P4468071802258101332.Spec : Prop :=
  ∀ n, P4468071802258101332.a n = (A109196 (n + 2) : ℚ)

end A109196

/-! ## A109196.P4158175258236666262

`A330796(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A109196.P4158175258236666262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A330796 (n + 1) - a (n - 1)

end

end A109196.P4158175258236666262

namespace A109196

/-- `A330796(n+1)-a(n-1)` -/
def P4158175258236666262.Spec : Prop :=
  ∀ n, P4158175258236666262.a n = A109196 (n + 2)

end A109196

/-! ## A109196.P8869745210968474476

`A055218(n)-A057585(n+1)`
-/

namespace A109196.P8869745210968474476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055218 n - A057585 (n + 1)

end

end A109196.P8869745210968474476

namespace A109196

/-- `A055218(n)-A057585(n+1)` -/
def P8869745210968474476.Spec : Prop :=
  ∀ n, P8869745210968474476.a n = A109196 (n + 2)

end A109196

/-! ## A109196.P11351790187997728466

`A015518(n+2)-A113682(n+1)`
-/

namespace A109196.P11351790187997728466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 2) - A113682 (n + 1)

end

end A109196.P11351790187997728466

namespace A109196

/-- `A015518(n+2)-A113682(n+1)` -/
def P11351790187997728466.Spec : Prop :=
  ∀ n, P11351790187997728466.a n = A109196 (n + 2)

end A109196

/-! ## A109196.P9183990771071248603

`A275289(n+3)+A057585(n+1)`
-/

namespace A109196.P9183990771071248603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275289 (n + 3) + A057585 (n + 1)

end

end A109196.P9183990771071248603

namespace A109196

/-- `A275289(n+3)+A057585(n+1)` -/
def P9183990771071248603.Spec : Prop :=
  ∀ n, P9183990771071248603.a n = A109196 (n + 2)

end A109196

/-! ## A109196.P8937599433390151420

`(A275289(n+3)+A055218(n))/2`
-/

namespace A109196.P8937599433390151420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275289 (n + 3) + A055218 n : ℚ) / 2

end

end A109196.P8937599433390151420

namespace A109196

/-- `(A275289(n+3)+A055218(n))/2` -/
def P8937599433390151420.Spec : Prop :=
  ∀ n, P8937599433390151420.a n = (A109196 (n + 2) : ℚ)

end A109196

/-! ## A109196.P13167439430087876704

`A081251(n+1)-∑[A005717(n+1)]`
-/

namespace A109196.P13167439430087876704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081251 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109196.P13167439430087876704

namespace A109196

/-- `A081251(n+1)-∑[A005717(n+1)]` -/
def P13167439430087876704.Spec : Prop :=
  ∀ n, P13167439430087876704.a n = A109196 (n + 2)

end A109196

/-! ## A109196.P1502015004932419640

`A102839(n+1)-A178834(n)`
-/

namespace A109196.P1502015004932419640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102839 (n + 1) - A178834 n

end

end A109196.P1502015004932419640

namespace A109196

/-- `A102839(n+1)-A178834(n)` -/
def P1502015004932419640.Spec : Prop :=
  ∀ n, P1502015004932419640.a n = A109196 (n + 2)

end A109196

