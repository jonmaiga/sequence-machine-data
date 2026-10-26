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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A281200: Number of n X 3 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281200, the canonical program `A281200.P17871408107867168491` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281200 has offset 1).

The definition of A281200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281200.P802328848454949501

`ogf((1+10x+4x^2)/(1-4x+4x^2))`
-/

namespace A281200.P802328848454949501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 4] [1, -4, 4] n

end

end A281200.P802328848454949501

namespace A281200

/-- `ogf((1+10x+4x^2)/(1-4x+4x^2))` -/
def P802328848454949501.Spec : Prop :=
  ∀ n, P802328848454949501.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P17871408107867168491

`(A004277(3*n)+n)*2^n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A281200

/-- `(A004277(3*n)+n)*2^n` -/
def P17871408107867168491.Spec : Prop :=
  ∀ n, P17871408107867168491.a n = A281200 (n + 1)

theorem P17871408107867168491.correct : P17871408107867168491.Spec := by
  intro n
  simp only [A281200, Nat.add_sub_cancel]

end A281200

/-! ## A281200.P14957560404653092384

`ceil(2^(n-1))*A314848(3*n)`
-/

namespace A281200.P14957560404653092384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A314848 (3 * n)

end

end A281200.P14957560404653092384

namespace A281200

/-- `ceil(2^(n-1))*A314848(3*n)` -/
def P14957560404653092384.Spec : Prop :=
  ∀ n, P14957560404653092384.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P3117131118288715632

`val(A000040(n+1), 2)+7*n*2^n`
-/

namespace A281200.P3117131118288715632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 + 7 * n * 2 ^ n

end

end A281200.P3117131118288715632

namespace A281200

/-- `val(A000040(n+1), 2)+7*n*2^n` -/
def P3117131118288715632.Spec : Prop :=
  ∀ n, (P3117131118288715632.a n : ℤ) = A281200 (n + 1)

end A281200

/-! ## A281200.P17666441664596200304

`A004277(n)*A135092(n)`
-/

namespace A281200.P17666441664596200304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A135092 n

end

end A281200.P17666441664596200304

namespace A281200

/-- `A004277(n)*A135092(n)` -/
def P17666441664596200304.Spec : Prop :=
  ∀ n, P17666441664596200304.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P13482470480027094047

`A004277(7*n)*A011782(n)`
-/

namespace A281200.P13482470480027094047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (7 * n) * A011782 n

end

end A281200.P13482470480027094047

namespace A281200

/-- `A004277(7*n)*A011782(n)` -/
def P13482470480027094047.Spec : Prop :=
  ∀ n, P13482470480027094047.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P10838395491204347669

`A000007(n)+n*A005009(n)`
-/

namespace A281200.P10838395491204347669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A005009 n

end

end A281200.P10838395491204347669

namespace A281200

/-- `A000007(n)+n*A005009(n)` -/
def P10838395491204347669.Spec : Prop :=
  ∀ n, P10838395491204347669.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P12108306664818849581

`(A008458(n)+n)*A000079(n)`
-/

namespace A281200.P12108306664818849581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008458 n + (n : ℤ)) * A000079 n

end

end A281200.P12108306664818849581

namespace A281200

/-- `(A008458(n)+n)*A000079(n)` -/
def P12108306664818849581.Spec : Prop :=
  ∀ n, P12108306664818849581.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P12109725465140328696

`(A022144(n)-n)*A000079(n)`
-/

namespace A281200.P12109725465140328696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022144 n - (n : ℤ)) * A000079 n

end

end A281200.P12109725465140328696

namespace A281200

/-- `(A022144(n)-n)*A000079(n)` -/
def P12109725465140328696.Spec : Prop :=
  ∀ n, P12109725465140328696.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P4342527353786443563

`(A022144(n)-n)*∑[A011782(n)]`
-/

namespace A281200.P4342527353786443563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022144 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281200.P4342527353786443563

namespace A281200

/-- `(A022144(n)-n)*∑[A011782(n)]` -/
def P4342527353786443563.Spec : Prop :=
  ∀ n, P4342527353786443563.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P3414320556801412950

`(A008458(n)+n)*record[A077957(n)]`
-/

namespace A281200.P3414320556801412950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008458 n + (n : ℤ)) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281200.P3414320556801412950

namespace A281200

/-- `(A008458(n)+n)*record[A077957(n)]` -/
def P3414320556801412950.Spec : Prop :=
  ∀ n, P3414320556801412950.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P8301706548481969988

`(A008458(n)+n)*A131577(n+1)`
-/

namespace A281200.P8301706548481969988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008458 n + (n : ℤ)) * A131577 (n + 1)

end

end A281200.P8301706548481969988

namespace A281200

/-- `(A008458(n)+n)*A131577(n+1)` -/
def P8301706548481969988.Spec : Prop :=
  ∀ n, P8301706548481969988.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P13430843688607282244

`(A008486(2*n)+n)*A011782(n+1)`
-/

namespace A281200.P13430843688607282244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008486 (2 * n) + (n : ℤ)) * A011782 (n + 1)

end

end A281200.P13430843688607282244

namespace A281200

/-- `(A008486(2*n)+n)*A011782(n+1)` -/
def P13430843688607282244.Spec : Prop :=
  ∀ n, P13430843688607282244.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P9044553217789220311

`(A008486(2*n)+n)*A131577(n+1)`
-/

namespace A281200.P9044553217789220311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008486 (2 * n) + (n : ℤ)) * A131577 (n + 1)

end

end A281200.P9044553217789220311

namespace A281200

/-- `(A008486(2*n)+n)*A131577(n+1)` -/
def P9044553217789220311.Spec : Prop :=
  ∀ n, P9044553217789220311.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P2290322054043225596

`(A008574(2*n)-n)*A011782(n+1)`
-/

namespace A281200.P2290322054043225596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 (2 * n) - (n : ℤ)) * A011782 (n + 1)

end

end A281200.P2290322054043225596

namespace A281200

/-- `(A008574(2*n)-n)*A011782(n+1)` -/
def P2290322054043225596.Spec : Prop :=
  ∀ n, P2290322054043225596.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P10437907970981901153

`(A008574(2*n)-n)*A131577(n+1)`
-/

namespace A281200.P10437907970981901153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 (2 * n) - (n : ℤ)) * A131577 (n + 1)

end

end A281200.P10437907970981901153

namespace A281200

/-- `(A008574(2*n)-n)*A131577(n+1)` -/
def P10437907970981901153.Spec : Prop :=
  ∀ n, P10437907970981901153.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P12269087495192226507

`(A008486(2*n)+n)*A016116(2*n)`
-/

namespace A281200.P12269087495192226507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008486 (2 * n) + (n : ℤ)) * A016116 (2 * n)

end

end A281200.P12269087495192226507

namespace A281200

/-- `(A008486(2*n)+n)*A016116(2*n)` -/
def P12269087495192226507.Spec : Prop :=
  ∀ n, P12269087495192226507.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P3470497105687276712

`(A008486(2*n)+n)*A017910(2*n)`
-/

namespace A281200.P3470497105687276712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008486 (2 * n) + (n : ℤ)) * A017910 (2 * n)

end

end A281200.P3470497105687276712

namespace A281200

/-- `(A008486(2*n)+n)*A017910(2*n)` -/
def P3470497105687276712.Spec : Prop :=
  ∀ n, P3470497105687276712.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P2280973422191802772

`(A008486(2*n)+n)*A017911(2*n)`
-/

namespace A281200.P2280973422191802772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008486 (2 * n) + (n : ℤ)) * A017911 (2 * n)

end

end A281200.P2280973422191802772

namespace A281200

/-- `(A008486(2*n)+n)*A017911(2*n)` -/
def P2280973422191802772.Spec : Prop :=
  ∀ n, P2280973422191802772.a n = A281200 (n + 1)

end A281200

/-! ## A281200.P10895518343387795413

`2*A048478(n)-A319352(A020639(n+1))`
-/

namespace A281200.P10895518343387795413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048478 n - A319352 (A020639 (n + 1)).toNat

end

end A281200.P10895518343387795413

namespace A281200

/-- `2*A048478(n)-A319352(A020639(n+1))` -/
def P10895518343387795413.Spec : Prop :=
  ∀ n, P10895518343387795413.a n = A281200 (n + 1)

end A281200

/-!
# A281201: Number of n X 4 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281201, there is no canonical definition to state claims against.
-/

/-! ## A281201.P44155928442035265

`A281205(∑[n+4]+3)`
-/

namespace A281201.P44155928442035265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A281201.P44155928442035265

/-! ## A281201.P8232763696165122978

`lcm(2, A281205(A141214(n+1)))`
-/

namespace A281201.P8232763696165122978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281205 (A141214 (n + 1)).toNat)

end

end A281201.P8232763696165122978

/-! ## A281201.P4365950375775782820

`lcm(A054977(n), A281205(A055998(n+2)))`
-/

namespace A281201.P4365950375775782820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A281205 (A055998 (n + 2)).toNat)

end

end A281201.P4365950375775782820

/-! ## A281201.P16817795489854282392

`A054977(n+1)*A281205(A141214(n+1))`
-/

namespace A281201.P16817795489854282392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A281205 (A141214 (n + 1)).toNat

end

end A281201.P16817795489854282392

/-! ## A281201.P17983426707451135575

`A007318(C(2, n))*A281205(A055998(n+2))`
-/

namespace A281201.P17983426707451135575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A281205 (A055998 (n + 2)).toNat

end

end A281201.P17983426707451135575

/-!
# A281202: Number of n X 5 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281202, there is no canonical definition to state claims against.
-/

/-! ## A281202.P9058040193107450463

`A281205(∑[n+5]+6)`
-/

namespace A281202.P9058040193107450463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A281202.P9058040193107450463

/-! ## A281202.P5296382535053455235

`A007318(C(2, n))*A281205(A046691(n+3))`
-/

namespace A281202.P5296382535053455235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A281205 (A046691 (n + 3)).toNat

end

end A281202.P5296382535053455235

/-! ## A281202.P3414469758144082704

`A000041(C(n, n²))*A281205(A046691(n+3))`
-/

namespace A281202.P3414469758144082704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A281205 (A046691 (n + 3)).toNat

end

end A281202.P3414469758144082704

/-! ## A281202.P7176779157580734046

`A014963(12*(n+1))*A281205(A046691(n+3))`
-/

namespace A281202.P7176779157580734046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A281205 (A046691 (n + 3)).toNat

end

end A281202.P7176779157580734046

/-! ## A281202.P10429323226658740595

`A281205(A046691(n+3))/A007318(C(2, n+1))`
-/

namespace A281202.P10429323226658740595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281205 (A046691 (n + 3)).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 1)) : ℚ)

end

end A281202.P10429323226658740595

/-!
# A281203: Number of n X 6 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281203, there is no canonical definition to state claims against.
-/

/-! ## A281203.P3211449686214453595

`A281205(A052905(n+3))`
-/

namespace A281203.P3211449686214453595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A052905 (n + 3)).toNat

end

end A281203.P3211449686214453595

/-! ## A281203.P14875573850413928934

`A281205(A302537(n)+15)`
-/

namespace A281203.P14875573850413928934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A302537 n + 15).toNat

end

end A281203.P14875573850413928934

/-! ## A281203.P17585124323151561518

`A281205(A056119(n)+16)`
-/

namespace A281203.P17585124323151561518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A056119 n + 16).toNat

end

end A281203.P17585124323151561518

/-! ## A281203.P5809195994124327326

`A281205(eq[3, A219347(n)])`
-/

namespace A281203.P5809195994124327326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281203.P5809195994124327326

/-! ## A281203.P2450173063304798104

`A281205(A055999(n+3)+1)`
-/

namespace A281203.P2450173063304798104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A055999 (n + 3) + 1).toNat

end

end A281203.P2450173063304798104

/-!
# A281204: Number of n X 7 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281204, there is no canonical definition to state claims against.
-/

/-! ## A281204.P7168743018029792349

`A281205(A055999(n+4))`
-/

namespace A281204.P7168743018029792349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A055999 (n + 4)).toNat

end

end A281204.P7168743018029792349

/-! ## A281204.P4180356450039580382

`A281205(eq[4, A219347(n)])`
-/

namespace A281204.P4180356450039580382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281204.P4180356450039580382

/-! ## A281204.P10588863273060389782

`A281205(Δ[A023551(n+2)])`
-/

namespace A281204.P10588863273060389782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (f1 (n + 1) - f1 n).toNat

end

end A281204.P10588863273060389782

/-! ## A281204.P14240358840479302399

`A281205(A000096(n+6)-5)`
-/

namespace A281204.P14240358840479302399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A000096 (n + 6) - 5).toNat

end

end A281204.P14240358840479302399

/-! ## A281204.P7958802979140793951

`A281205(A000217(n+7)-6)`
-/

namespace A281204.P7958802979140793951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A000217 (n + 7) - 6).toNat

end

end A281204.P7958802979140793951

/-!
# A281206: Number of 2 X n 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281206, the canonical program `A281206.P5937654758335153391` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281206 has offset 1).

The definition of A281206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281206.P5937654758335153391

`2*(A029907((n+1)%(n^4+1))+A001911(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A281206

/-- `2*(A029907((n+1)%(n^4+1))+A001911(n))` -/
def P5937654758335153391.Spec : Prop :=
  ∀ n, P5937654758335153391.a n = A281206 (n + 1)

theorem P5937654758335153391.correct : P5937654758335153391.Spec := by
  intro n
  simp only [A281206, Nat.add_sub_cancel]

end A281206

/-! ## A281206.P7176058707351912135

`3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=14, a(3)=28, a(4)=52, a(5)=94, a(6)=166`
-/

namespace A281206.P7176058707351912135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 14, 28, 52, 94, 166] fun n a =>
  3 * a (n - 1) - a (n - 2) - 3 * a (n - 3) + a (n - 4) + a (n - 5)

end

end A281206.P7176058707351912135

namespace A281206

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` -/
def P7176058707351912135.Spec : Prop :=
  ∀ n, P7176058707351912135.a n = A281206 (n + 1)

end A281206

/-! ## A281206.P12603966161574299499

`A281205(∑[n+1]+2)`
-/

namespace A281206.P12603966161574299499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281206.P12603966161574299499

namespace A281206

/-- `A281205(∑[n+1]+2)` -/
def P12603966161574299499.Spec : Prop :=
  ∀ n, P12603966161574299499.a n = A281206 (n + 1)

end A281206

/-! ## A281206.P9826186014164995769

`record[A281205(A025796(n)+2)]`
-/

namespace A281206.P9826186014164995769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A025796 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281206.P9826186014164995769

namespace A281206

/-- `record[A281205(A025796(n)+2)]` -/
def P9826186014164995769.Spec : Prop :=
  ∀ n, P9826186014164995769.a n = A281206 (n + 1)

end A281206

/-! ## A281206.P14404462744295339750

`lcm(2, A281205(A167487(n)-5))`
-/

namespace A281206.P14404462744295339750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281205 (A167487 n - 5).toNat)

end

end A281206.P14404462744295339750

namespace A281206

/-- `lcm(2, A281205(A167487(n)-5))` -/
def P14404462744295339750.Spec : Prop :=
  ∀ n, (P14404462744295339750.a n : ℤ) = A281206 (n + 1)

end A281206

/-!
# A281207: Number of 3 X n 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281207, the canonical program `A281207.P14696740761886933465` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281207 has offset 1).

The definition of A281207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281207.P14696740761886933465

`3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=10, a(2)=56, a(3)=98, a(4)=176, a(5)=310, a(6)=537, a(7)=922`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281207

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` -/
def P14696740761886933465.Spec : Prop :=
  ∀ n, P14696740761886933465.a n = A281207 (n + 1)

theorem P14696740761886933465.correct : P14696740761886933465.Spec := by
  intro n
  simp only [A281207, Nat.add_sub_cancel]

end A281207

/-! ## A281207.P6959240927993776139

`A281205(∑[n+2]+4)`
-/

namespace A281207.P6959240927993776139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281207.P6959240927993776139

namespace A281207

/-- `A281205(∑[n+2]+4)` -/
def P6959240927993776139.Spec : Prop :=
  ∀ n, P6959240927993776139.a n = A281207 (n + 1)

end A281207

/-! ## A281207.P919181142969446393

`or(char[6], A281205(A046691(n)+7))`
-/

namespace A281207.P919181142969446393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281205 (A046691 n + 7).toNat)

end

end A281207.P919181142969446393

namespace A281207

/-- `or(char[6], A281205(A046691(n)+7))` -/
def P919181142969446393.Spec : Prop :=
  ∀ n, P919181142969446393.a n = A281207 (n + 1)

end A281207

/-! ## A281207.P17640986408260496990

`lcm((-1)^n, A281205(A167614(n+1)))`
-/

namespace A281207.P17640986408260496990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A281205 (A167614 (n + 1)).toNat)

end

end A281207.P17640986408260496990

namespace A281207

/-- `lcm((-1)^n, A281205(A167614(n+1)))` -/
def P17640986408260496990.Spec : Prop :=
  ∀ n, (P17640986408260496990.a n : ℤ) = A281207 (n + 1)

end A281207

/-! ## A281207.P15101768768348031994

`A281205(A167614(n+1))+A025469(n)`
-/

namespace A281207.P15101768768348031994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A167614 (n + 1)).toNat + A025469 n

end

end A281207.P15101768768348031994

namespace A281207

/-- `A281205(A167614(n+1))+A025469(n)` -/
def P15101768768348031994.Spec : Prop :=
  ∀ n, P15101768768348031994.a n = A281207 (n + 1)

end A281207

/-!
# A281208: Number of 4 X n 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281208, there is no canonical definition to state claims against.
-/

/-! ## A281208.P11498207266888408392

`A281205(∑[n+3]+7)`
-/

namespace A281208.P11498207266888408392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281208.P11498207266888408392

/-!
# A281209: Number of 5 X n 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281209, there is no canonical definition to state claims against.
-/

/-! ## A281209.P7995749778358822681

`A281205(A167499(n+3))`
-/

namespace A281209.P7995749778358822681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A167499 (n + 3)).toNat

end

end A281209.P7995749778358822681

/-! ## A281209.P18159630262829459854

`A281205(A077169(n+5))`
-/

namespace A281209.P18159630262829459854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A077169 (n + 5)).toNat

end

end A281209.P18159630262829459854

/-! ## A281209.P2550083646172130741

`A281205(A155212(n)+13)`
-/

namespace A281209.P2550083646172130741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A155212 n + 13).toNat

end

end A281209.P2550083646172130741

/-! ## A281209.P1601621388677207894

`A281205(A056000(n)+15)`
-/

namespace A281209.P1601621388677207894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A056000 n + 15).toNat

end

end A281209.P1601621388677207894

/-!
# A281210: Number of 6 X n 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281210, there is no canonical definition to state claims against.
-/

/-! ## A281210.P5255234985707789547

`A281205(∑[n+5]+16)`
-/

namespace A281210.P5255234985707789547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A281210.P5255234985707789547

/-! ## A281210.P2527882859604314212

`lcm(2, A281205(A056115(n)+21))`
-/

namespace A281210.P2527882859604314212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281205 (A056115 n + 21).toNat)

end

end A281210.P2527882859604314212

/-! ## A281210.P13102555994829605712

`A281205(A000124(n+5)+5)+char[28]`
-/

namespace A281210.P13102555994829605712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A000124 (n + 5) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281210.P13102555994829605712

/-! ## A281210.P4804885429578324487

`A007318(C(2, n))*A281205(A000124(n+5)+5)`
-/

namespace A281210.P4804885429578324487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A281205 (A000124 (n + 5) + 5).toNat

end

end A281210.P4804885429578324487

/-! ## A281210.P5067004397964857071

`A281205(A000217(n+5)+6)%A130436(3*n+1)`
-/

namespace A281210.P5067004397964857071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281205 (A000217 (n + 5) + 6).toNat) (A130436 (3 * n + 1))

end

end A281210.P5067004397964857071

/-!
# A281211: Number of 7 X n 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281211, there is no canonical definition to state claims against.
-/

/-! ## A281211.P17102014280974959820

`A281205(A056119(n)+28)`
-/

namespace A281211.P17102014280974959820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A056119 n + 28).toNat

end

end A281211.P17102014280974959820

/-! ## A281211.P3249370624169512960

`A281205(A167499(n+5)+2)`
-/

namespace A281211.P3249370624169512960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A167499 (n + 5) + 2).toNat

end

end A281211.P3249370624169512960

/-! ## A281211.P12834403129402889453

`A281205(A000124(n+6)+6)`
-/

namespace A281211.P12834403129402889453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A000124 (n + 6) + 6).toNat

end

end A281211.P12834403129402889453

/-! ## A281211.P11830652879665755548

`A281205(A000096(n+5)+8)`
-/

namespace A281211.P11830652879665755548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A000096 (n + 5) + 8).toNat

end

end A281211.P11830652879665755548

/-! ## A281211.P7309415425869687106

`A281205(A000217(n+6)+7)`
-/

namespace A281211.P7309415425869687106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A000217 (n + 6) + 7).toNat

end

end A281211.P7309415425869687106

/-!
# A281212: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 334", based on the 5-celled von Neumann neighborhood.

The programs for A281212, there is no canonical definition to state claims against.
-/

/-! ## A281212.P14354143553377791264

`∑[A000079(n+1)-Δ[A283059(n)]]`
-/

namespace A281212.P14354143553377791264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281212.P14354143553377791264

/-! ## A281212.P15795634496196241944

`∑[A198633(n)]-A283059(n+1)`
-/

namespace A281212.P15795634496196241944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283059 (n + 1)

end

end A281212.P15795634496196241944

/-! ## A281212.P334784766547672528

`A000225(n+2)-A283059(n+1)`
-/

namespace A281212.P334784766547672528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A283059 (n + 1)

end

end A281212.P334784766547672528

/-! ## A281212.P11757772948602853803

`A255047(n+2)-A283059(n+1)`
-/

namespace A281212.P11757772948602853803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (n + 2) - A283059 (n + 1)

end

end A281212.P11757772948602853803

/-! ## A281212.P3709284285594100907

`A198633(n+1)-(A283059(n+1)+1)`
-/

namespace A281212.P3709284285594100907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (n + 1) - (A283059 (n + 1) + 1)

end

end A281212.P3709284285594100907

/-! ## A281212.P6526030743981217718

`A052551(A005843(n+1))-A283059(n+1)`
-/

namespace A281212.P6526030743981217718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A005843 (n + 1)).toNat - A283059 (n + 1)

end

end A281212.P6526030743981217718

/-! ## A281212.P17608340326445451984

`Δ[A000325(n+2)]-A283059(n+1)`
-/

namespace A281212.P17608340326445451984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A283059 (n + 1)

end

end A281212.P17608340326445451984

/-!
# A281213: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 334", based on the 5-celled von Neumann neighborhood.

The programs for A281213, there is no canonical definition to state claims against.
-/

/-! ## A281213.P8643178050384804849

`A325401(A281212(n))`
-/

namespace A281213.P8643178050384804849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A281212 n).toNat

end

end A281213.P8643178050384804849

/-! ## A281213.P2728807212461900089

`A325401(∑[A198633(n)]-A283059(n+1))`
-/

namespace A281213.P2728807212461900089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (∑ j ∈ Finset.range (n + 1), f1 j - A283059 (n + 1)).toNat

end

end A281213.P2728807212461900089

/-! ## A281213.P17598351147211238211

`A325401(A000225(n+2)-A283059(n+1))`
-/

namespace A281213.P17598351147211238211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A000225 (n + 2) - A283059 (n + 1)).toNat

end

end A281213.P17598351147211238211

/-! ## A281213.P10909248647554208387

`A325401(A255047(n+2)-A283059(n+1))`
-/

namespace A281213.P10909248647554208387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A255047 (n + 2) - A283059 (n + 1)).toNat

end

end A281213.P10909248647554208387

/-! ## A281213.P6893248966186601577

`A325401(Δ[A000325(n+2)]-A283059(n+1))`
-/

namespace A281213.P6893248966186601577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (f1 (n + 1) - f1 n - A283059 (n + 1)).toNat

end

end A281213.P6893248966186601577

/-!
# A281214: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

The programs for A281214, there is no canonical definition to state claims against.
-/

/-! ## A281214.P12302102673365549822

`floor(A118109(n)/A011557(n))`
-/

namespace A281214.P12302102673365549822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118109 n : ℚ) / (A011557 n : ℚ)⌋

end

end A281214.P12302102673365549822

/-! ## A281214.P18383314277650011027

`A007088(A281216(n))`
-/

namespace A281214.P18383314277650011027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281216 n).toNat

end

end A281214.P18383314277650011027

/-! ## A281214.P11589119969441239403

`A007088(floor(A118108(n)/A000079(n)))`
-/

namespace A281214.P11589119969441239403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A118108 n : ℚ) / (A000079 n : ℚ)⌋.toNat

end

end A281214.P11589119969441239403

/-! ## A281214.P487792428219411756

`A185544(2*A281216(n))`
-/

namespace A281214.P487792428219411756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281216 n).toNat

end

end A281214.P487792428219411756

/-! ## A281214.P11669179865011624160

`A185544(A281216(n)+A281216(n))`
-/

namespace A281214.P11669179865011624160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A281216 n + A281216 n).toNat

end

end A281214.P11669179865011624160

/-!
# A281215: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

The programs for A281215, there is no canonical definition to state claims against.
-/

/-! ## A281215.P82246501638046454

`A118109(n)%Δ[A002279(n)]`
-/

namespace A281215.P82246501638046454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118109 n) (f1 (n + 1) - f1 n)

end

end A281215.P82246501638046454

/-! ## A281215.P6728786598135347924

`A007088(A281217(n))`
-/

namespace A281215.P6728786598135347924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281217 n).toNat

end

end A281215.P6728786598135347924

/-! ## A281215.P5525711183771353989

`A007088(and(∑[2^n], A118108(n)))`
-/

namespace A281215.P5525711183771353989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A118108 n)).toNat

end

end A281215.P5525711183771353989

/-! ## A281215.P2993077227791253384

`A007088(A118108(n)%-2^(n+1))`
-/

namespace A281215.P2993077227791253384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A118108 n) (-(2 ^ (n + 1) : ℤ))).toNat

end

end A281215.P2993077227791253384

/-! ## A281215.P1390728255766956441

`A007088(and(A118108(n), A118173(n)))`
-/

namespace A281215.P1390728255766956441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A118108 n) (A118173 n)).toNat

end

end A281215.P1390728255766956441

/-!
# A281216: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

The programs for A281216, the canonical program `A281216.P14237770664857951209` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281216 has offset 0).

The definition of A281216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281216.P16677899624394900708

`and(3, 1-a(n-2))+4*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A281216.P16677899624394900708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.land 3 (1 - a (n - 2)) + 4 * a (n - 2)

end

end A281216.P16677899624394900708

namespace A281216

/-- `and(3, 1-a(n-2))+4*a(n-2)` -/
def P16677899624394900708.Spec : Prop :=
  ∀ n, P16677899624394900708.a n = A281216 n

end A281216

/-! ## A281216.P4500090613038034827

`or(4*a(n-2), and(3, 1-a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A281216.P4500090613038034827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lor (4 * a (n - 2)) (Int.land 3 (1 - a (n - 2)))

end

end A281216.P4500090613038034827

namespace A281216

/-- `or(4*a(n-2), and(3, 1-a(n-2)))` -/
def P4500090613038034827.Spec : Prop :=
  ∀ n, P4500090613038034827.a n = A281216 n

end A281216

/-! ## A281216.P14038716990850027107

`xor(2, or(3, a(n-2))+3*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A281216.P14038716990850027107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 2 (Nat.lor 3 (a (n - 2)) + 3 * a (n - 2))

end

end A281216.P14038716990850027107

namespace A281216

/-- `xor(2, or(3, a(n-2))+3*a(n-2))` -/
def P14038716990850027107.Spec : Prop :=
  ∀ n, (P14038716990850027107.a n : ℤ) = A281216 n

end A281216

/-! ## A281216.P14237770664857951209

`4*a(n-2)+a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=14, a(4)=17, a(5)=59`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281216

/-- `4*a(n-2)+a(n-4)-4*a(n-6)` -/
def P14237770664857951209.Spec : Prop :=
  ∀ n, P14237770664857951209.a n = A281216 n

theorem P14237770664857951209.correct : P14237770664857951209.Spec := by
  intro n
  simp only [A281216]

end A281216

/-! ## A281216.P4830867471076323141

`xor(or(2*a(n-1), floor(a(n-1)/2)), a(n-1))` with `a(0)=1`
-/

namespace A281216.P4830867471076323141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (Int.lor (2 * a (n - 1)) ⌊(a (n - 1) : ℚ) / 2⌋) (a (n - 1))

end

end A281216.P4830867471076323141

namespace A281216

/-- `xor(or(2*a(n-1), floor(a(n-1)/2)), a(n-1))` -/
def P4830867471076323141.Spec : Prop :=
  ∀ n, P4830867471076323141.a n = A281216 n

end A281216

/-! ## A281216.P7770130710129579113

`xor(a(n-1), A084184(n+1))` with `a(0)=1`
-/

namespace A281216.P7770130710129579113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A084184 (n + 1))

end

end A281216.P7770130710129579113

namespace A281216

/-- `xor(a(n-1), A084184(n+1))` -/
def P7770130710129579113.Spec : Prop :=
  ∀ n, P7770130710129579113.a n = A281216 n

end A281216

/-! ## A281216.P15310039460093656535

`xor(a(n-1), A282799(xor(1, n+1)))` with `a(0)=1`
-/

namespace A281216.P15310039460093656535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A282799 (Nat.xor 1 (n + 1)))

end

end A281216.P15310039460093656535

namespace A281216

/-- `xor(a(n-1), A282799(xor(1, n+1)))` -/
def P15310039460093656535.Spec : Prop :=
  ∀ n, P15310039460093656535.a n = A281216 n

end A281216

/-! ## A281216.P2597911499428750636

`floor(A118108(n)/A000079(n))`
-/

namespace A281216.P2597911499428750636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118108 n : ℚ) / (A000079 n : ℚ)⌋

end

end A281216.P2597911499428750636

namespace A281216

/-- `floor(A118108(n)/A000079(n))` -/
def P2597911499428750636.Spec : Prop :=
  ∀ n, P2597911499428750636.a n = A281216 n

end A281216

/-!
# A281217: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

The programs for A281217, the canonical program `A281217.P4722299089049354569` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281217 has offset 0).

The definition of A281217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281217.P4722299089049354569

`(A126646(n+1)-A283217(n+1))/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281217

/-- `(A126646(n+1)-A283217(n+1))/2` -/
def P4722299089049354569.Spec : Prop :=
  ∀ n, P4722299089049354569.a n = (A281217 n : ℚ)

end A281217

/-! ## A281217.P2213219678501120851

`and(∑[2^n], A118108(n))`
-/

namespace A281217.P2213219678501120851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A118108 n)

end

end A281217.P2213219678501120851

namespace A281217

/-- `and(∑[2^n], A118108(n))` -/
def P2213219678501120851.Spec : Prop :=
  ∀ n, P2213219678501120851.a n = A281217 n

end A281217

/-! ## A281217.P14694273054105220925

`A118108(n)%A198633(n)`
-/

namespace A281217.P14694273054105220925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118108 n) (A198633 n)

end

end A281217.P14694273054105220925

namespace A281217

/-- `A118108(n)%A198633(n)` -/
def P14694273054105220925.Spec : Prop :=
  ∀ n, P14694273054105220925.a n = A281217 n

end A281217

/-! ## A281217.P8553367295943246007

`and(A118108(n), A118173(n))`
-/

namespace A281217.P8553367295943246007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118108 n) (A118173 n)

end

end A281217.P8553367295943246007

namespace A281217

/-- `and(A118108(n), A118173(n))` -/
def P8553367295943246007.Spec : Prop :=
  ∀ n, P8553367295943246007.a n = A281217 n

end A281217

/-! ## A281217.P9170104991164831571

`and(A118108(n), A126646(n))`
-/

namespace A281217.P9170104991164831571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118108 n) (A126646 n)

end

end A281217.P9170104991164831571

namespace A281217

/-- `and(A118108(n), A126646(n))` -/
def P9170104991164831571.Spec : Prop :=
  ∀ n, P9170104991164831571.a n = A281217 n

end A281217

/-! ## A281217.P3176432003913294325

`and(A118108(n), A283606(n))`
-/

namespace A281217.P3176432003913294325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118108 n) (A283606 n)

end

end A281217.P3176432003913294325

namespace A281217

/-- `and(A118108(n), A283606(n))` -/
def P3176432003913294325.Spec : Prop :=
  ∀ n, P3176432003913294325.a n = A281217 n

end A281217

/-! ## A281217.P15446045370729165856

`and(A118108(n), A284031(n))`
-/

namespace A281217.P15446045370729165856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118108 n) (A284031 n)

end

end A281217.P15446045370729165856

namespace A281217

/-- `and(A118108(n), A284031(n))` -/
def P15446045370729165856.Spec : Prop :=
  ∀ n, P15446045370729165856.a n = A281217 n

end A281217

/-! ## A281217.P16687663675560437578

`and(A118108(n), A284090(n))`
-/

namespace A281217.P16687663675560437578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118108 n) (A284090 n)

end

end A281217.P16687663675560437578

namespace A281217

/-- `and(A118108(n), A284090(n))` -/
def P16687663675560437578.Spec : Prop :=
  ∀ n, P16687663675560437578.a n = A281217 n

end A281217

/-! ## A281217.P6873897607013033229

`and(A118108(n), A284482(n))`
-/

namespace A281217.P6873897607013033229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118108 n) (A284482 n)

end

end A281217.P6873897607013033229

namespace A281217

/-- `and(A118108(n), A284482(n))` -/
def P6873897607013033229.Spec : Prop :=
  ∀ n, P6873897607013033229.a n = A281217 n

end A281217

/-! ## A281217.P4885004808015302675

`and(A118108(n), A286521(n))`
-/

namespace A281217.P4885004808015302675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118108 n) (A286521 n)

end

end A281217.P4885004808015302675

namespace A281217

/-- `and(A118108(n), A286521(n))` -/
def P4885004808015302675.Spec : Prop :=
  ∀ n, P4885004808015302675.a n = A281217 n

end A281217

/-! ## A281217.P5952812993600229723

`and(A118108(n), A290662(n))`
-/

namespace A281217.P5952812993600229723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118108 n) (A290662 n)

end

end A281217.P5952812993600229723

namespace A281217

/-- `and(A118108(n), A290662(n))` -/
def P5952812993600229723.Spec : Prop :=
  ∀ n, P5952812993600229723.a n = A281217 n

end A281217

/-! ## A281217.P14237579257419183670

`and(A118108(n), A281482(n))`
-/

namespace A281217.P14237579257419183670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118108 n) (A281482 n)

end

end A281217.P14237579257419183670

namespace A281217

/-- `and(A118108(n), A281482(n))` -/
def P14237579257419183670.Spec : Prop :=
  ∀ n, P14237579257419183670.a n = A281217 n

end A281217

/-!
# A281218: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 345", based on the 5-celled von Neumann neighborhood.

The programs for A281218, there is no canonical definition to state claims against.
-/

/-! ## A281218.P10541316145439437684

`A007088(A281220(n))`
-/

namespace A281218.P10541316145439437684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281220 n).toNat

end

end A281218.P10541316145439437684

/-! ## A281218.P12415061289700470827

`A185544(2*A281220(n))`
-/

namespace A281218.P12415061289700470827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281220 n).toNat

end

end A281218.P12415061289700470827

/-!
# A281219: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 345", based on the 5-celled von Neumann neighborhood.

The programs for A281219, there is no canonical definition to state claims against.
-/

/-! ## A281219.P3392138159871273894

`A007088(A281221(n))`
-/

namespace A281219.P3392138159871273894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281221 n).toNat

end

end A281219.P3392138159871273894

/-! ## A281219.P18381021096904920141

`A185544(2*A281221(n))`
-/

namespace A281219.P18381021096904920141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281221 n).toNat

end

end A281219.P18381021096904920141

/-!
# A281220: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 345", based on the 5-celled von Neumann neighborhood.

The programs for A281220, there is no canonical definition to state claims against.
-/

/-! ## A281220.P13700911293214063388

`A281174(n)+A184946(A015898(n+1))`
-/

namespace A281220.P13700911293214063388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281174 n + A184946 (A015898 (n + 1)).toNat

end

end A281220.P13700911293214063388

/-! ## A281220.P3357121296274884951

`A281174(n)+A184946(A239851(n+1))`
-/

namespace A281220.P3357121296274884951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281174 n + A184946 (A239851 (n + 1)).toNat

end

end A281220.P3357121296274884951

/-!
# A281222: Products of 10 distinct primes (squarefree 10-almost primes).

The programs for A281222, there is no canonical definition to state claims against.
-/

/-! ## A281222.P1894542097055141713

`A374785(n+4)+A066760(A145354(n+1))`
-/

namespace A281222.P1894542097055141713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374785 (n + 4) + A066760 (A145354 (n + 1)).toNat

end

end A281222.P1894542097055141713

/-! ## A281222.P16560945886375392424

`lcm(A010704(A067323(n)), A374785(n+4))`
-/

namespace A281222.P16560945886375392424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010704 (A067323 n).toNat) (A374785 (n + 4))

end

end A281222.P16560945886375392424

/-! ## A281222.P15568753104330765003

`A001221(A051362(n+1))*A374785(n+4)`
-/

namespace A281222.P15568753104330765003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A051362 (n + 1)).toNat * A374785 (n + 4)

end

end A281222.P15568753104330765003

/-! ## A281222.P3425045250474518032

`A374785(n+4)+A000007(A317087(n+1))`
-/

namespace A281222.P3425045250474518032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374785 (n + 4) + A000007 (A317087 (n + 1)).toNat

end

end A281222.P3425045250474518032

/-! ## A281222.P14770763483252493245

`A374785(n+4)^A263159(A326541(n))`
-/

namespace A281222.P14770763483252493245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374785 (n + 4) : ℚ) ^ (A263159 (A326541 n).toNat : ℤ)

end

end A281222.P14770763483252493245

/-!
# A281223: The decimal representation of the Elias omega code for n (A281193(n)).

The programs for A281223, there is no canonical definition to state claims against.
-/

/-! ## A281223.P11235572147261148234

`A000225(A072464(n+1))-A281377(n+1)`
-/

namespace A281223.P11235572147261148234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A072464 (n + 1)).toNat - A281377 (n + 1)

end

end A281223.P11235572147261148234

/-! ## A281223.P13289720979432527055

`A000225(∑[A255308(n+1)])-A281377(n+1)`
-/

namespace A281223.P13289720979432527055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A281377 (n + 1)

end

end A281223.P13289720979432527055

/-! ## A281223.P6403888854865827069

`A000225(∑[A293668(n+1)-1])-A281377(n+1)`
-/

namespace A281223.P6403888854865827069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A281377 (n + 1)

end

end A281223.P6403888854865827069

/-! ## A281223.P1473222177353678757

`A000225(A292046(n+2)-(n+2))-A281377(n+1)`
-/

namespace A281223.P1473222177353678757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A292046 (n + 2) - (n + 2 : ℤ)).toNat - A281377 (n + 1)

end

end A281223.P1473222177353678757

/-! ## A281223.P10792369780005538315

`A006257(A028423(n+1))-1`
-/

namespace A281223.P10792369780005538315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A028423 (n + 1)).toNat - 1

end

end A281223.P10792369780005538315

/-! ## A281223.P7182357790162915831

`A028423(n+1)-A008619(A281377(n+1))`
-/

namespace A281223.P7182357790162915831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028423 (n + 1) - A008619 (A281377 (n + 1)).toNat

end

end A281223.P7182357790162915831

/-! ## A281223.P5718794939715819680

`A057889(A057889(A028423(n+1))-A006519(n+1))`
-/

namespace A281223.P5718794939715819680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A057889 (A028423 (n + 1)).toNat - A006519 (n + 1)).toNat

end

end A281223.P5718794939715819680

/-! ## A281223.P5847786588262967258

`A053645(2*A028423(n+1))`
-/

namespace A281223.P5847786588262967258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (2 * A028423 (n + 1)).toNat

end

end A281223.P5847786588262967258

/-! ## A281223.P5696368386011466340

`A277267(2*A028423(n+1))`
-/

namespace A281223.P5696368386011466340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277267 (2 * A028423 (n + 1)).toNat

end

end A281223.P5696368386011466340

/-! ## A281223.P14929427406374560149

`A277267(A028423(n+1)/sqrt(1/4))`
-/

namespace A281223.P14929427406374560149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277267 (SequenceMachineLib.roundAway ((A028423 (n + 1) : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ))).toNat

end

end A281223.P14929427406374560149

/-!
# A281224: Integer c such that (a^3 + b^3 - c^3)^2 = 1 where a,b,c are integers greater than 2.

The programs for A281224, there is no canonical definition to state claims against.
-/

/-! ## A281224.P3901808911692151535

`∪[A050787(n+1), A050791(n+1)]`
-/

namespace A281224.P3901808911692151535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A281224.P3901808911692151535

/-!
# A281225: The decimal representation of the Elias delta code for n (A281150(n)).

The programs for A281225, there is no canonical definition to state claims against.
-/

/-! ## A281225.P4430042875947761959

`A000225(A140341(n+1))-A281313(n+1)`
-/

namespace A281225.P4430042875947761959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A140341 (n + 1)).toNat - A281313 (n + 1)

end

end A281225.P4430042875947761959

/-! ## A281225.P6361980064272194796

`A000225(∑{digits}[A281150(n+1), #!])-A281313(n+1)`
-/

namespace A281225.P6361980064272194796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum - A281313 (n + 1)

end

end A281225.P6361980064272194796

/-!
# A281226: Primes p where largest digit of p minus sum of all other digits is equal to 1.

The programs for A281226, there is no canonical definition to state claims against.
-/

/-! ## A281226.P17810152402035463119

`∩[A156979(n+1), A280915(n+1)]`
-/

namespace A281226.P17810152402035463119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281226.P17810152402035463119

/-! ## A281226.P2792491703787039007

`∩[A119450(n+1), A280915(n+1)]`
-/

namespace A281226.P2792491703787039007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281226.P2792491703787039007

/-! ## A281226.P4538505983836319115

`∩[A084424(n+1), A280915(n+1)]`
-/

namespace A281226.P4538505983836319115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281226.P4538505983836319115

/-! ## A281226.P6705043965573308065

`∩[A179085(n+1), A280915(n+1)]`
-/

namespace A281226.P6705043965573308065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281226.P6705043965573308065

/-! ## A281226.P5657152395533046892

`∩[A054684(n+1), A280915(n+1)]`
-/

namespace A281226.P5657152395533046892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281226.P5657152395533046892

/-! ## A281226.P7652551315608319796

`filter[A280915(n+1), A179081(#)]`
-/

namespace A281226.P7652551315608319796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A281226.P7652551315608319796

/-!
# A281228: Expansion of (Sum_{k>=0} x^(3^k))^2 [even terms only].

The programs for A281228, the canonical program `A281228.P6416532092371050258` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281228 has offset 0).

The definition of A281228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281228.P6416532092371050258

`floor(C(3*n, n)/3)%3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281228

/-- `floor(C(3*n, n)/3)%3` -/
def P6416532092371050258.Spec : Prop :=
  ∀ n, P6416532092371050258.a n = A281228 n

theorem P6416532092371050258.correct : P6416532092371050258.Spec := by
  intro n
  simp only [A281228]

end A281228

/-! ## A281228.P180676780136966329

`A025174(n)%3`
-/

namespace A281228.P180676780136966329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025174 n) 3

end

end A281228.P180676780136966329

namespace A281228

/-- `A025174(n)%3` -/
def P180676780136966329.Spec : Prop :=
  ∀ n, P180676780136966329.a n = A281228 n

theorem P180676780136966329.correct : P180676780136966329.Spec := by
  intro n
  simp only [A281228, Nat.add_sub_cancel, A281228.P180676780136966329.a, A281228.P6416532092371050258.a, A025174, A025174.P11497073020642724255.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A281228

/-! ## A281228.P321307152885510307

`floor(A165817(n)/2)%3`
-/

namespace A281228.P321307152885510307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A165817 n : ℚ) / 2⌋ 3

end

end A281228.P321307152885510307

namespace A281228

/-- `floor(A165817(n)/2)%3` -/
def P321307152885510307.Spec : Prop :=
  ∀ n, P321307152885510307.a n = A281228 n

end A281228

/-! ## A281228.P9390890064594325202

`floor(A090816(n)/3)%3`
-/

namespace A281228.P9390890064594325202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A090816 n : ℚ) / 3⌋ 3

end

end A281228.P9390890064594325202

namespace A281228

/-- `floor(A090816(n)/3)%3` -/
def P9390890064594325202.Spec : Prop :=
  ∀ n, P9390890064594325202.a n = A281228 n

end A281228

/-! ## A281228.P12537957077426085862

`floor(A227726(n)/4)%3`
-/

namespace A281228.P12537957077426085862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A227726 n : ℚ) / 4⌋ 3

end

end A281228.P12537957077426085862

namespace A281228

/-- `floor(A227726(n)/4)%3` -/
def P12537957077426085862.Spec : Prop :=
  ∀ n, P12537957077426085862.a n = A281228 n

end A281228

/-! ## A281228.P2189211353887019401

`(5%A331279(2*n))%5`
-/

namespace A281228.P2189211353887019401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod 5 (A331279 (2 * n))) 5

end

end A281228.P2189211353887019401

namespace A281228

/-- `(5%A331279(2*n))%5` -/
def P2189211353887019401.Spec : Prop :=
  ∀ n, P2189211353887019401.a n = A281228 n

end A281228

/-! ## A281228.P11090488723749182315

`A061007(A006047(2*n))`
-/

namespace A281228.P11090488723749182315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (A006047 (2 * n)).toNat

end

end A281228.P11090488723749182315

namespace A281228

/-- `A061007(A006047(2*n))` -/
def P11090488723749182315.Spec : Prop :=
  ∀ n, P11090488723749182315.a n = A281228 n

end A281228

/-! ## A281228.P1396645411749534039

`A053603(A038574(2*n))`
-/

namespace A281228.P1396645411749534039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 (A038574 (2 * n)).toNat

end

end A281228.P1396645411749534039

namespace A281228

/-- `A053603(A038574(2*n))` -/
def P1396645411749534039.Spec : Prop :=
  ∀ n, P1396645411749534039.a n = A281228 n

end A281228

/-! ## A281228.P10074994167989630916

`(A005809(n)-A165817(n))%3`
-/

namespace A281228.P10074994167989630916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005809 n - A165817 n) 3

end

end A281228.P10074994167989630916

namespace A281228

/-- `(A005809(n)-A165817(n))%3` -/
def P10074994167989630916.Spec : Prop :=
  ∀ n, P10074994167989630916.a n = A281228 n

end A281228

/-! ## A281228.P4109696824958064085

`A092037(A051638(2*n))-A092037(n)`
-/

namespace A281228.P4109696824958064085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092037 (A051638 (2 * n)).toNat - A092037 n

end

end A281228.P4109696824958064085

namespace A281228

/-- `A092037(A051638(2*n))-A092037(n)` -/
def P4109696824958064085.Spec : Prop :=
  ∀ n, P4109696824958064085.a n = A281228 n

end A281228

/-! ## A281228.P14952229160702338709

`and(A105700(A120879(2*n)), A120879(n))`
-/

namespace A281228.P14952229160702338709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105700 (A120879 (2 * n)).toNat) (A120879 n)

end

end A281228.P14952229160702338709

namespace A281228

/-- `and(A105700(A120879(2*n)), A120879(n))` -/
def P14952229160702338709.Spec : Prop :=
  ∀ n, P14952229160702338709.a n = A281228 n

end A281228

/-! ## A281228.P11648741854529814208

`A105700(2^A126792(n))`
-/

namespace A281228.P11648741854529814208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A126792 n : ℤ))).toNat

end

end A281228.P11648741854529814208

namespace A281228

/-- `A105700(2^A126792(n))` -/
def P11648741854529814208.Spec : Prop :=
  ∀ n, P11648741854529814208.a n = A281228 n

end A281228

/-! ## A281228.P3317317740622284522

`A006996(A126792(n)+11)`
-/

namespace A281228.P3317317740622284522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (A126792 n + 11).toNat

end

end A281228.P3317317740622284522

namespace A281228

/-- `A006996(A126792(n)+11)` -/
def P3317317740622284522.Spec : Prop :=
  ∀ n, P3317317740622284522.a n = A281228 n

end A281228

/-! ## A281228.P6806171372946416748

`A006996(29-A126792(n))`
-/

namespace A281228.P6806171372946416748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (29 - A126792 n).toNat

end

end A281228.P6806171372946416748

namespace A281228

/-- `A006996(29-A126792(n))` -/
def P6806171372946416748.Spec : Prop :=
  ∀ n, P6806171372946416748.a n = A281228 n

end A281228

/-! ## A281228.P17059113851838663484

`A105700(A126792(n)+A126792(n)²)`
-/

namespace A281228.P17059113851838663484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A126792 n + A126792 n ^ 2).toNat

end

end A281228.P17059113851838663484

namespace A281228

/-- `A105700(A126792(n)+A126792(n)²)` -/
def P17059113851838663484.Spec : Prop :=
  ∀ n, P17059113851838663484.a n = A281228 n

end A281228

/-! ## A281228.P3430886934980816138

`A105700((A126792(n)+1)*A126792(n))`
-/

namespace A281228.P3430886934980816138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 ((A126792 n + 1) * A126792 n).toNat

end

end A281228.P3430886934980816138

namespace A281228

/-- `A105700((A126792(n)+1)*A126792(n))` -/
def P3430886934980816138.Spec : Prop :=
  ∀ n, P3430886934980816138.a n = A281228 n

end A281228

/-!
# A281229: Smallest number k of the form x^2 + y^2 with 0 <= x <= y such that gcd(x, y) = 1, x + y = n, and k has no other decompositions into a sum of two squares.

The programs for A281229, there is no canonical definition to state claims against.
-/

/-! ## A281229.P532746472133808217

`A020893(record[∑{e}[A112007(n+1), #]])`
-/

namespace A281229.P532746472133808217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A281229.P532746472133808217

/-! ## A281229.P13586977150995644938

`A020893(lt[A086376(n+1), A000005(n+1)])`
-/

namespace A281229.P13586977150995644938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A281229.P13586977150995644938

/-! ## A281229.P7506617269455548114

`A020893(A000961(n+1)%A229028(2*(n+1)))`
-/

namespace A281229.P7506617269455548114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (Int.tmod (A000961 (n + 1)) (A229028 (2 * (n + 1)))).toNat

end

end A281229.P7506617269455548114

/-! ## A281229.P4354312474109242549

`A020893(record[A335458(n)])`
-/

namespace A281229.P4354312474109242549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A281229.P4354312474109242549

/-!
# A281230: Period of the discrete Arnold cat map on an n X n array.

The programs for A281230, there is no canonical definition to state claims against.
-/

/-! ## A281230.P17600431141358787695

`lcm(A001175(n+1), 2)/2`
-/

namespace A281230.P17600431141358787695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001175 (n + 1)) 2 : ℚ) / 2

end

end A281230.P17600431141358787695

/-! ## A281230.P7222763777787504964

`A014682(lcm(2, A001175(n+1)))`
-/

namespace A281230.P7222763777787504964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A001175 (n + 1)))

end

end A281230.P7222763777787504964

/-! ## A281230.P7079611256296053217

`A001175(n+1)/A000032(round(1/(n+1)))`
-/

namespace A281230.P7079611256296053217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 1) : ℚ) / (A000032 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))).toNat : ℚ)

end

end A281230.P7079611256296053217

/-! ## A281230.P14543602562169835393

`A001175(n+1)/A295690(ceil(3/(n+1)))`
-/

namespace A281230.P14543602562169835393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 1) : ℚ) / (A295690 ⌈3 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A281230.P14543602562169835393

/-! ## A281230.P11166258744837829402

`A001175(n+1)/A020639(A000010(n+1))`
-/

namespace A281230.P11166258744837829402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 1) : ℚ) / (A020639 (A000010 (n + 1)).toNat : ℚ)

end

end A281230.P11166258744837829402

/-! ## A281230.P7716088248762437438

`A001175(n+1)/A020639(A002322(n+1))`
-/

namespace A281230.P7716088248762437438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 1) : ℚ) / (A020639 (A002322 (n + 1)).toNat : ℚ)

end

end A281230.P7716088248762437438

/-! ## A281230.P16515391427750449283

`A001175(n+1)/A000056(n+1)*A001766(n+1)`
-/

namespace A281230.P16515391427750449283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 1) : ℚ) / (A000056 (n + 1) : ℚ) * (A001766 (n + 1) : ℚ)

end

end A281230.P16515391427750449283

/-! ## A281230.P13555843680931097727

`A001175(n+1)/gcd(2, A001175(a(n-1)+1))` with `a(0)=1`
-/

namespace A281230.P13555843680931097727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001175 (n + 1) : ℚ) / (Int.gcd 2 (A001175 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat) : ℚ)

end

end A281230.P13555843680931097727

/-! ## A281230.P17827635526621908012

`A026741(A001175(n+1))`
-/

namespace A281230.P17827635526621908012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A001175 (n + 1)).toNat

end

end A281230.P17827635526621908012

/-! ## A281230.P16497587989942886641

`A028242(A096982(n+1))`
-/

namespace A281230.P16497587989942886641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A096982 (n + 1)).toNat

end

end A281230.P16497587989942886641

/-! ## A281230.P11872799803377672992

`A001175(n+1)/A000034(A001175(n+1)+1)`
-/

namespace A281230.P11872799803377672992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 1) : ℚ) / (A000034 (A001175 (n + 1) + 1).toNat : ℚ)

end

end A281230.P11872799803377672992

/-!
# A281231: Exponential transform of the tetrahedral numbers (A000292).

The programs for A281231, there is no canonical definition to state claims against.
-/

/-! ## A281231.P6287491422606318151

`A020912(2*A006595(n))`
-/

namespace A281231.P6287491422606318151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020912 (2 * A006595 n).toNat

end

end A281231.P6287491422606318151

/-! ## A281231.P17797672779236159581

`A123108(A111529(n))+A064856(n)`
-/

namespace A281231.P17797672779236159581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A111529 n).toNat + A064856 n

end

end A281231.P17797672779236159581

/-!
# A281232: Numbers k such that k+2 divides concat(k, k+1).

The programs for A281232, there is no canonical definition to state claims against.
-/

/-! ## A281232.P9038083337931387497

`A088797(n+1)-2`
-/

namespace A281232.P9038083337931387497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088797 (n + 1) - 2

end

end A281232.P9038083337931387497

/-! ## A281232.P2243629062096837011

`A129451(A277515(n+1))+A088797(n+1)`
-/

namespace A281232.P2243629062096837011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129451 (A277515 (n + 1)).toNat + A088797 (n + 1)

end

end A281232.P2243629062096837011

/-! ## A281232.P4048903324933266132

`A113416(A020639(2*(n+1)))+A088797(n+1)`
-/

namespace A281232.P4048903324933266132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113416 (A020639 (2 * (n + 1))).toNat + A088797 (n + 1)

end

end A281232.P4048903324933266132

/-! ## A281232.P12775447277576003037

`A001478(n+1)+A088797(n+1)+A023443(n)`
-/

namespace A281232.P12775447277576003037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A088797 (n + 1) + A023443 n)

end

end A281232.P12775447277576003037

/-! ## A281232.P10449033948553382439

`A104005(A088797(gcd(n, n+1)))+A088797(n+1)`
-/

namespace A281232.P10449033948553382439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104005 (A088797 (Nat.gcd n (n + 1))).toNat + A088797 (n + 1)

end

end A281232.P10449033948553382439

/-!
# A281233: Numbers k such that k-1 | concat(k, k+1).

The programs for A281233, there is no canonical definition to state claims against.
-/

/-! ## A281233.P456563113697343559

`A069860(n+1)+1`
-/

namespace A281233.P456563113697343559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069860 (n + 1) + 1

end

end A281233.P456563113697343559

/-! ## A281233.P17561975440985618450

`lt[A069862(n+1)-1, 2]+2`
-/

namespace A281233.P17561975440985618450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069862 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A281233.P17561975440985618450

/-! ## A281233.P17686034392033945853

`A020725(A069860(n+1))`
-/

namespace A281233.P17686034392033945853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A069860 (n + 1)).toNat

end

end A281233.P17686034392033945853

/-! ## A281233.P15883569611758145094

`record[gcd(A001703(n), A028310(n))+1]`
-/

namespace A281233.P15883569611758145094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001703 n) (A028310 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281233.P15883569611758145094

/-!
# A281234: Solutions y to the negative Pell equation y^2 = 72*x^2 - 288 with x,y >= 0.

The programs for A281234, the canonical program `A281234.P8811782130177641987` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281234 has offset 1).

The definition of A281234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281234.P8811782130177641987

`6*a(n-1)-a(n-2)` with `a(0)=0, a(1)=48`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281234

/-- `6*a(n-1)-a(n-2)` -/
def P8811782130177641987.Spec : Prop :=
  ∀ n, P8811782130177641987.a n = A281234 (n + 1)

theorem P8811782130177641987.correct : P8811782130177641987.Spec := by
  intro n
  simp only [A281234, Nat.add_sub_cancel]

end A281234

/-! ## A281234.P8713570617746700161

`48*A001109(n)`
-/

namespace A281234.P8713570617746700161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * A001109 n

end

end A281234.P8713570617746700161

namespace A281234

/-- `48*A001109(n)` -/
def P8713570617746700161.Spec : Prop :=
  ∀ n, P8713570617746700161.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P11913514663012545988

`6*A081554(n)`
-/

namespace A281234.P11913514663012545988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A081554 n

end

end A281234.P11913514663012545988

namespace A281234

/-- `6*A081554(n)` -/
def P11913514663012545988.Spec : Prop :=
  ∀ n, P11913514663012545988.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P7498325102934965288

`8*A075848(n)`
-/

namespace A281234.P7498325102934965288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A075848 n

end

end A281234.P7498325102934965288

namespace A281234

/-- `8*A075848(n)` -/
def P7498325102934965288.Spec : Prop :=
  ∀ n, P7498325102934965288.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P2344433956583365520

`12*A005319(n)`
-/

namespace A281234.P2344433956583365520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A005319 n

end

end A281234.P2344433956583365520

namespace A281234

/-- `12*A005319(n)` -/
def P2344433956583365520.Spec : Prop :=
  ∀ n, P2344433956583365520.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P5487508375146471490

`4*6*A001542(n)`
-/

namespace A281234.P5487508375146471490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (6 * A001542 n)

end

end A281234.P5487508375146471490

namespace A281234

/-- `4*6*A001542(n)` -/
def P5487508375146471490.Spec : Prop :=
  ∀ n, P5487508375146471490.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P10647819945736742889

`16*A106328(n+1)`
-/

namespace A281234.P10647819945736742889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A106328 (n + 1)

end

end A281234.P10647819945736742889

namespace A281234

/-- `16*A106328(n+1)` -/
def P10647819945736742889.Spec : Prop :=
  ∀ n, P10647819945736742889.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P2024018627236111874

`48*floor(A182189(n)/2)`
-/

namespace A281234.P2024018627236111874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * ⌊(A182189 n : ℚ) / 2⌋

end

end A281234.P2024018627236111874

namespace A281234

/-- `48*floor(A182189(n)/2)` -/
def P2024018627236111874.Spec : Prop :=
  ∀ n, P2024018627236111874.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P14812567102714538207

`4*6*A135153(4*n)`
-/

namespace A281234.P14812567102714538207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (6 * A135153 (4 * n))

end

end A281234.P14812567102714538207

namespace A281234

/-- `4*6*A135153(4*n)` -/
def P14812567102714538207.Spec : Prop :=
  ∀ n, P14812567102714538207.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P16437598825500288721

`24*A000129(A005843(n))`
-/

namespace A281234.P16437598825500288721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000129 (A005843 n).toNat

end

end A281234.P16437598825500288721

namespace A281234

/-- `24*A000129(A005843(n))` -/
def P16437598825500288721.Spec : Prop :=
  ∀ n, P16437598825500288721.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P10326799528449454604

`48*A000129(n)*A001333(n)`
-/

namespace A281234.P10326799528449454604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * (A000129 n * A001333 n)

end

end A281234.P10326799528449454604

namespace A281234

/-- `48*A000129(n)*A001333(n)` -/
def P10326799528449454604.Spec : Prop :=
  ∀ n, P10326799528449454604.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P9453651443509214455

`48*(∑[A001653(A028310(n))]-1)`
-/

namespace A281234.P9453651443509214455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A281234.P9453651443509214455

namespace A281234

/-- `48*(∑[A001653(A028310(n))]-1)` -/
def P9453651443509214455.Spec : Prop :=
  ∀ n, P9453651443509214455.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P5178401514082725319

`48*Δ[A171842(n)]*A001333(n)`
-/

namespace A281234.P5178401514082725319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * ((f1 (n + 1) - f1 n) * A001333 n)

end

end A281234.P5178401514082725319

namespace A281234

/-- `48*Δ[A171842(n)]*A001333(n)` -/
def P5178401514082725319.Spec : Prop :=
  ∀ n, P5178401514082725319.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P16411316724559298394

`48*Δ[A215928(n)]*A215928(n)`
-/

namespace A281234.P16411316724559298394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * ((f1 (n + 1) - f1 n) * A215928 n)

end

end A281234.P16411316724559298394

namespace A281234

/-- `48*Δ[A215928(n)]*A215928(n)` -/
def P16411316724559298394.Spec : Prop :=
  ∀ n, P16411316724559298394.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P18407842038578602656

`48*∑[A001653(n+2)%A002315(n)]`
-/

namespace A281234.P18407842038578602656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001653 (n + 2)) (A002315 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281234.P18407842038578602656

namespace A281234

/-- `48*∑[A001653(n+2)%A002315(n)]` -/
def P18407842038578602656.Spec : Prop :=
  ∀ n, P18407842038578602656.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P9608293539721630907

`(A040214(2*n)-6)*A000129(2*n)`
-/

namespace A281234.P9608293539721630907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040214 (2 * n) - 6) * A000129 (2 * n)

end

end A281234.P9608293539721630907

namespace A281234

/-- `(A040214(2*n)-6)*A000129(2*n)` -/
def P9608293539721630907.Spec : Prop :=
  ∀ n, P9608293539721630907.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P11740826268767531965

`48*Δ[A249576(3*n)]*A249576(3*n)`
-/

namespace A281234.P11740826268767531965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * ((f1 (n + 1) - f1 n) * A249576 (3 * n))

end

end A281234.P11740826268767531965

namespace A281234

/-- `48*Δ[A249576(3*n)]*A249576(3*n)` -/
def P11740826268767531965.Spec : Prop :=
  ∀ n, P11740826268767531965.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P1055713729858499079

`2*(A221175(2*n)+A221174(2*n+1))`
-/

namespace A281234.P1055713729858499079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A221175 (2 * n) + A221174 (2 * n + 1))

end

end A281234.P1055713729858499079

namespace A281234

/-- `2*(A221175(2*n)+A221174(2*n+1))` -/
def P1055713729858499079.Spec : Prop :=
  ∀ n, P1055713729858499079.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P16845982432366340432

`A164303(2*n+1)+A221175(2*n)-A221175(2*n+1)`
-/

namespace A281234.P16845982432366340432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164303 (2 * n + 1) + (A221175 (2 * n) - A221175 (2 * n + 1))

end

end A281234.P16845982432366340432

namespace A281234

/-- `A164303(2*n+1)+A221175(2*n)-A221175(2*n+1)` -/
def P16845982432366340432.Spec : Prop :=
  ∀ n, P16845982432366340432.a n = A281234 (n + 1)

end A281234

/-! ## A281234.P3393228222555182444

`A281238(n+1)/16`
-/

namespace A281234.P3393228222555182444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281238 (n + 1) : ℚ) / 16

end

end A281234.P3393228222555182444

namespace A281234

/-- `A281238(n+1)/16` -/
def P3393228222555182444.Spec : Prop :=
  ∀ n, P3393228222555182444.a n = (A281234 (n + 1) : ℚ)

end A281234

/-!
# A281235: Solutions x to the negative Pell equation y^2 = 72*x^2 - 332928 with x,y >= 0.

The programs for A281235, the canonical program `A281235.P13662576893949643421` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281235 has offset 1).

The definition of A281235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281235.P13662576893949643421

`6*a(n-3)-a(n-6)` with `a(0)=68, a(1)=76, a(2)=132, a(3)=204, a(4)=324, a(5)=716`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281235

/-- `6*a(n-3)-a(n-6)` -/
def P13662576893949643421.Spec : Prop :=
  ∀ n, P13662576893949643421.a n = A281235 (n + 1)

theorem P13662576893949643421.correct : P13662576893949643421.Spec := by
  intro n
  simp only [A281235, Nat.add_sub_cancel]

end A281235

/-! ## A281235.P11216595768987207223

`2*A281239(n+1)`
-/

namespace A281235.P11216595768987207223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281239 (n + 1)

end

end A281235.P11216595768987207223

namespace A281235

/-- `2*A281239(n+1)` -/
def P11216595768987207223.Spec : Prop :=
  ∀ n, P11216595768987207223.a n = A281235 (n + 1)

end A281235

/-! ## A281235.P11008334822266414118

`2*(4*A145820(n+1)+2)`
-/

namespace A281235.P11008334822266414118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A145820 (n + 1) + 2)

end

end A281235.P11008334822266414118

namespace A281235

/-- `2*(4*A145820(n+1)+2)` -/
def P11008334822266414118.Spec : Prop :=
  ∀ n, P11008334822266414118.a n = A281235 (n + 1)

end A281235

/-! ## A281235.P7411770495316532897

`A281239(n+1)+A281239(n+1)%A281239(n+2)`
-/

namespace A281235.P7411770495316532897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281239 (n + 1) + Int.tmod (A281239 (n + 1)) (A281239 (n + 2))

end

end A281235.P7411770495316532897

namespace A281235

/-- `A281239(n+1)+A281239(n+1)%A281239(n+2)` -/
def P7411770495316532897.Spec : Prop :=
  ∀ n, P7411770495316532897.a n = A281235 (n + 1)

end A281235

/-! ## A281235.P11031940600509205914

`A281241(n+1)/2`
-/

namespace A281235.P11031940600509205914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281241 (n + 1) : ℚ) / 2

end

end A281235.P11031940600509205914

namespace A281235

/-- `A281241(n+1)/2` -/
def P11031940600509205914.Spec : Prop :=
  ∀ n, P11031940600509205914.a n = (A281235 (n + 1) : ℚ)

theorem P11031940600509205914.correct : P11031940600509205914.Spec := by
  intro n
  simp only [A281235, Nat.add_sub_cancel, A281235.P11031940600509205914.a, A281235.P13662576893949643421.a, A281241, A281241.P7408969812568458589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281235

/-! ## A281235.P3261116572488414743

`A281241(n+1)-A281239(n+1)-A281239(n+1)`
-/

namespace A281235.P3261116572488414743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281241 (n + 1) - A281239 (n + 1) - A281239 (n + 1)

end

end A281235.P3261116572488414743

namespace A281235

/-- `A281241(n+1)-A281239(n+1)-A281239(n+1)` -/
def P3261116572488414743.Spec : Prop :=
  ∀ n, P3261116572488414743.a n = A281235 (n + 1)

end A281235

/-! ## A281235.P12475945541419001294

`A281239(n+1)²%A281241(n+1)`
-/

namespace A281235.P12475945541419001294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281239 (n + 1) ^ 2) (A281241 (n + 1))

end

end A281235.P12475945541419001294

namespace A281235

/-- `A281239(n+1)²%A281241(n+1)` -/
def P12475945541419001294.Spec : Prop :=
  ∀ n, P12475945541419001294.a n = A281235 (n + 1)

end A281235

/-!
# A281236: Solutions y to the negative Pell equation y^2 = 72*x^2 - 332928 with x,y >= 0.

The programs for A281236, there is no canonical definition to state claims against.
-/

/-! ## A281236.P10469887049006734223

`2*A281240(n+1)`
-/

namespace A281236.P10469887049006734223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281240 (n + 1)

end

end A281236.P10469887049006734223

/-! ## A281236.P10701426686318814968

`A281240(A000007(n+1)+n+1)+A281240(n+1)`
-/

namespace A281236.P10701426686318814968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281240 (A000007 (n + 1) + (n + 1 : ℤ)).toNat + A281240 (n + 1)

end

end A281236.P10701426686318814968

/-! ## A281236.P3503086468450053181

`A281240(n+1)+A281240(n+1)%A281240(n+2)`
-/

namespace A281236.P3503086468450053181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281240 (n + 1) + Int.tmod (A281240 (n + 1)) (A281240 (n + 2))

end

end A281236.P3503086468450053181

/-! ## A281236.P10549635761728270912

`A281242(n+1)/2`
-/

namespace A281236.P10549635761728270912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281242 (n + 1) : ℚ) / 2

end

end A281236.P10549635761728270912

/-! ## A281236.P14571750464309331927

`A281242(n+1)-(A281240(n+1)+A281240(n+1))`
-/

namespace A281236.P14571750464309331927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281242 (n + 1) - (A281240 (n + 1) + A281240 (n + 1))

end

end A281236.P14571750464309331927

/-!
# A281237: Solutions x to the negative Pell equation y^2 = 72*x^2 - 73728 with x,y >= 0.

The programs for A281237, the canonical program `A281237.P6925293099890499685` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281237 has offset 1).

The definition of A281237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281237.P6925293099890499685

`6*a(n-1)-a(n-2)` with `a(0)=32, a(1)=96`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281237

/-- `6*a(n-1)-a(n-2)` -/
def P6925293099890499685.Spec : Prop :=
  ∀ n, P6925293099890499685.a n = A281237 (n + 1)

theorem P6925293099890499685.correct : P6925293099890499685.Spec := by
  intro n
  simp only [A281237, Nat.add_sub_cancel]

end A281237

/-! ## A281237.P16686874343595704239

`16*A003499(n)`
-/

namespace A281237.P16686874343595704239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A003499 n

end

end A281237.P16686874343595704239

namespace A281237

/-- `16*A003499(n)` -/
def P16686874343595704239.Spec : Prop :=
  ∀ n, P16686874343595704239.a n = A281237 (n + 1)

end A281237

/-! ## A281237.P9371933825682680698

`32*A001541(n)`
-/

namespace A281237.P9371933825682680698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A001541 n

end

end A281237.P9371933825682680698

namespace A281237

/-- `32*A001541(n)` -/
def P9371933825682680698.Spec : Prop :=
  ∀ n, P9371933825682680698.a n = A281237 (n + 1)

end A281237

/-! ## A281237.P17659447792131609492

`record[32*A123335(n)]`
-/

namespace A281237.P17659447792131609492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A123335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281237.P17659447792131609492

namespace A281237

/-- `record[32*A123335(n)]` -/
def P17659447792131609492.Spec : Prop :=
  ∀ n, P17659447792131609492.a n = A281237 (n + 1)

end A281237

/-! ## A281237.P18008673597775552289

`32*A001333(2*n)`
-/

namespace A281237.P18008673597775552289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A001333 (2 * n)

end

end A281237.P18008673597775552289

namespace A281237

/-- `32*A001333(2*n)` -/
def P18008673597775552289.Spec : Prop :=
  ∀ n, P18008673597775552289.a n = A281237 (n + 1)

end A281237

/-! ## A281237.P4328348609992709533

`4*4*A002203(2*n)`
-/

namespace A281237.P4328348609992709533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A002203 (2 * n))

end

end A281237.P4328348609992709533

namespace A281237

/-- `4*4*A002203(2*n)` -/
def P4328348609992709533.Spec : Prop :=
  ∀ n, P4328348609992709533.a n = A281237 (n + 1)

end A281237

/-! ## A281237.P16136097082660868328

`16*2*(A082639(n+1)+1)`
-/

namespace A281237.P16136097082660868328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (2 * (A082639 (n + 1) + 1))

end

end A281237.P16136097082660868328

namespace A281237

/-- `16*2*(A082639(n+1)+1)` -/
def P16136097082660868328.Spec : Prop :=
  ∀ n, P16136097082660868328.a n = A281237 (n + 1)

end A281237

/-! ## A281237.P14149458560976313879

`16*2*A204514(2*(n+1))`
-/

namespace A281237.P14149458560976313879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (2 * A204514 (2 * (n + 1)))

end

end A281237.P14149458560976313879

namespace A281237

/-- `16*2*A204514(2*(n+1))` -/
def P14149458560976313879.Spec : Prop :=
  ∀ n, P14149458560976313879.a n = A281237 (n + 1)

end A281237

/-!
# A281238: Solutions y to the negative Pell equation y^2 = 72*x^2 - 73728 with x,y >= 0.

The programs for A281238, the canonical program `A281238.P4766567934191490888` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281238 has offset 1).

The definition of A281238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281238.P4766567934191490888

`6*a(n-1)-a(n-2)` with `a(0)=0, a(1)=768`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281238

/-- `6*a(n-1)-a(n-2)` -/
def P4766567934191490888.Spec : Prop :=
  ∀ n, P4766567934191490888.a n = A281238 (n + 1)

theorem P4766567934191490888.correct : P4766567934191490888.Spec := by
  intro n
  simp only [A281238, Nat.add_sub_cancel]

end A281238

/-! ## A281238.P17185446131212838426

`16*A281234(n+1)`
-/

namespace A281238.P17185446131212838426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A281234 (n + 1)

end

end A281238.P17185446131212838426

namespace A281238

/-- `16*A281234(n+1)` -/
def P17185446131212838426.Spec : Prop :=
  ∀ n, P17185446131212838426.a n = A281238 (n + 1)

end A281238

/-! ## A281238.P1142600887412576994

`8*12*A081554(n)`
-/

namespace A281238.P1142600887412576994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (12 * A081554 n)

end

end A281238.P1142600887412576994

namespace A281238

/-- `8*12*A081554(n)` -/
def P1142600887412576994.Spec : Prop :=
  ∀ n, P1142600887412576994.a n = A281238 (n + 1)

end A281238

/-! ## A281238.P3706189443315985381

`12*16*A005319(n)`
-/

namespace A281238.P3706189443315985381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (16 * A005319 n)

end

end A281238.P3706189443315985381

namespace A281238

/-- `12*16*A005319(n)` -/
def P3706189443315985381.Spec : Prop :=
  ∀ n, P3706189443315985381.a n = A281238 (n + 1)

end A281238

/-! ## A281238.P15939204593228054465

`4*32*A075848(n)`
-/

namespace A281238.P15939204593228054465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (32 * A075848 n)

end

end A281238.P15939204593228054465

namespace A281238

/-- `4*32*A075848(n)` -/
def P15939204593228054465.Spec : Prop :=
  ∀ n, P15939204593228054465.a n = A281238 (n + 1)

end A281238

/-! ## A281238.P9539735502446611234

`6*64*A001542(n)`
-/

namespace A281238.P9539735502446611234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (64 * A001542 n)

end

end A281238.P9539735502446611234

namespace A281238

/-- `6*64*A001542(n)` -/
def P9539735502446611234.Spec : Prop :=
  ∀ n, P9539735502446611234.a n = A281238 (n + 1)

end A281238

/-! ## A281238.P16215236067123586833

`record[Δ[Δ[A281242(n+2)]]]`
-/

namespace A281238.P16215236067123586833
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281242 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281238.P16215236067123586833

namespace A281238

/-- `record[Δ[Δ[A281242(n+2)]]]` -/
def P16215236067123586833.Spec : Prop :=
  ∀ n, P16215236067123586833.a n = A281238 (n + 1)

end A281238

/-!
# A281239: Solutions x to the negative Pell equation y^2 = 72*x^2 - 83232 with x,y >= 0.

The programs for A281239, the canonical program `A281239.P8802931668144336599` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281239 has offset 1).

The definition of A281239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281239.P8802931668144336599

`6*a(n-3)-a(n-6)` with `a(0)=34, a(1)=38, a(2)=66, a(3)=102, a(4)=162, a(5)=358`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281239

/-- `6*a(n-3)-a(n-6)` -/
def P8802931668144336599.Spec : Prop :=
  ∀ n, P8802931668144336599.a n = A281239 (n + 1)

theorem P8802931668144336599.correct : P8802931668144336599.Spec := by
  intro n
  simp only [A281239, Nat.add_sub_cancel]

end A281239

/-! ## A281239.P4569178366363700619

`4*A145820(n+1)+2`
-/

namespace A281239.P4569178366363700619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A145820 (n + 1) + 2

end

end A281239.P4569178366363700619

namespace A281239

/-- `4*A145820(n+1)+2` -/
def P4569178366363700619.Spec : Prop :=
  ∀ n, P4569178366363700619.a n = A281239 (n + 1)

end A281239

/-! ## A281239.P15030748795977891687

`A281235(n+1)/2`
-/

namespace A281239.P15030748795977891687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281235 (n + 1) : ℚ) / 2

end

end A281239.P15030748795977891687

namespace A281239

/-- `A281235(n+1)/2` -/
def P15030748795977891687.Spec : Prop :=
  ∀ n, P15030748795977891687.a n = (A281239 (n + 1) : ℚ)

end A281239

/-! ## A281239.P5133650080185455891

`record[A281235(A065648(n))/2]`
-/

namespace A281239.P5133650080185455891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281235 (A065648 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281239.P5133650080185455891

namespace A281239

/-- `record[A281235(A065648(n))/2]` -/
def P5133650080185455891.Spec : Prop :=
  ∀ n, P5133650080185455891.a n = (A281239 (n + 1) : ℚ)

end A281239

/-! ## A281239.P6423996917278354693

`2^A008683(A020483(n))*A281235(n+1)`
-/

namespace A281239.P6423996917278354693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A281235 (n + 1) : ℚ)

end

end A281239.P6423996917278354693

namespace A281239

/-- `2^A008683(A020483(n))*A281235(n+1)` -/
def P6423996917278354693.Spec : Prop :=
  ∀ n, P6423996917278354693.a n = (A281239 (n + 1) : ℚ)

end A281239

/-! ## A281239.P15407957859955717823

`A281241(n+1)/4`
-/

namespace A281239.P15407957859955717823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281241 (n + 1) : ℚ) / 4

end

end A281239.P15407957859955717823

namespace A281239

/-- `A281241(n+1)/4` -/
def P15407957859955717823.Spec : Prop :=
  ∀ n, P15407957859955717823.a n = (A281239 (n + 1) : ℚ)

end A281239

/-!
# A281240: Solutions y to the negative Pell equation y^2 = 72*x^2 - 83232 with x,y >= 0.

The programs for A281240, there is no canonical definition to state claims against.
-/

/-! ## A281240.P50327984181656274

`A281236(n+1)/2`
-/

namespace A281240.P50327984181656274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281236 (n + 1) : ℚ) / 2

end

end A281240.P50327984181656274

/-! ## A281240.P16532655875752100784

`2^A008683(Δ[A007504(n)])*A281236(n+1)`
-/

namespace A281240.P16532655875752100784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (f1 (n + 1) - f1 n).toNat : ℤ) * (A281236 (n + 1) : ℚ)

end

end A281240.P16532655875752100784

/-! ## A281240.P4164995123832582992

`2^A008683(A001914(n+1))*A281236(n+1)`
-/

namespace A281240.P4164995123832582992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A001914 (n + 1)).toNat : ℤ) * (A281236 (n + 1) : ℚ)

end

end A281240.P4164995123832582992

/-! ## A281240.P1069434323993327248

`A281242(n+1)/4`
-/

namespace A281240.P1069434323993327248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281242 (n + 1) : ℚ) / 4

end

end A281240.P1069434323993327248

/-! ## A281240.P4623109347876694919

`2^A008683(A098413(n+1))*A281236(n+1)`
-/

namespace A281240.P4623109347876694919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A098413 (n + 1)).toNat : ℤ) * (A281236 (n + 1) : ℚ)

end

end A281240.P4623109347876694919

/-!
# A281241: Solutions x to the negative Pell equation y^2 = 72*x^2 - 1331712 with x,y >= 0.

The programs for A281241, the canonical program `A281241.P7408969812568458589` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281241 has offset 1).

The definition of A281241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281241.P7408969812568458589

`2*A281235(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281241

/-- `2*A281235(n+1)` -/
def P7408969812568458589.Spec : Prop :=
  ∀ n, P7408969812568458589.a n = A281241 (n + 1)

theorem P7408969812568458589.correct : P7408969812568458589.Spec := by
  intro n
  simp only [A281241, Nat.add_sub_cancel]

end A281241

/-! ## A281241.P11000173095814032634

`4*A281239(n+1)`
-/

namespace A281241.P11000173095814032634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A281239 (n + 1)

end

end A281241.P11000173095814032634

namespace A281241

/-- `4*A281239(n+1)` -/
def P11000173095814032634.Spec : Prop :=
  ∀ n, P11000173095814032634.a n = A281241 (n + 1)

end A281241

/-! ## A281241.P12630204345201528724

`4*(4*A145820(n+1)+2)`
-/

namespace A281241.P12630204345201528724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A145820 (n + 1) + 2)

end

end A281241.P12630204345201528724

namespace A281241

/-- `4*(4*A145820(n+1)+2)` -/
def P12630204345201528724.Spec : Prop :=
  ∀ n, P12630204345201528724.a n = A281241 (n + 1)

end A281241

/-! ## A281241.P16918773537853416582

`record[2*A281235(A065648(n))]`
-/

namespace A281241.P16918773537853416582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281235 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281241.P16918773537853416582

namespace A281241

/-- `record[2*A281235(A065648(n))]` -/
def P16918773537853416582.Spec : Prop :=
  ∀ n, P16918773537853416582.a n = A281241 (n + 1)

end A281241

/-! ## A281241.P11800940677437681849

`A281235(xor(2, xor(2, n+1)))+A281235(n+1)`
-/

namespace A281241.P11800940677437681849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281235 (Nat.xor 2 (Nat.xor 2 (n + 1))) + A281235 (n + 1)

end

end A281241.P11800940677437681849

namespace A281241

/-- `A281235(xor(2, xor(2, n+1)))+A281235(n+1)` -/
def P11800940677437681849.Spec : Prop :=
  ∀ n, P11800940677437681849.a n = A281241 (n + 1)

theorem P11800940677437681849.correct : P11800940677437681849.Spec := by
  intro n
  simp only [A281241, Nat.add_sub_cancel, A281241.P11800940677437681849.a, A281241.P7408969812568458589.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A281241

/-! ## A281241.P14137570630169266500

`A281235(n+1)+record[A281235(A065648(n))]`
-/

namespace A281241.P14137570630169266500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281235 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281235 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281241.P14137570630169266500

namespace A281241

/-- `A281235(n+1)+record[A281235(A065648(n))]` -/
def P14137570630169266500.Spec : Prop :=
  ∀ n, P14137570630169266500.a n = A281241 (n + 1)

end A281241

/-! ## A281241.P10332531531328937643

`A281235(n+1)+A281239(n+1)+A281239(n+1)`
-/

namespace A281241.P10332531531328937643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281235 (n + 1) + (A281239 (n + 1) + A281239 (n + 1))

end

end A281241.P10332531531328937643

namespace A281241

/-- `A281235(n+1)+A281239(n+1)+A281239(n+1)` -/
def P10332531531328937643.Spec : Prop :=
  ∀ n, P10332531531328937643.a n = A281241 (n + 1)

end A281241

/-! ## A281241.P12101387106905605425

`A281235(n+1)+A281235((n+1)%A045358(n+1))`
-/

namespace A281241.P12101387106905605425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281235 (n + 1) + A281235 (Int.tmod (n + 1 : ℤ) (A045358 (n + 1))).toNat

end

end A281241.P12101387106905605425

namespace A281241

/-- `A281235(n+1)+A281235((n+1)%A045358(n+1))` -/
def P12101387106905605425.Spec : Prop :=
  ∀ n, P12101387106905605425.a n = A281241 (n + 1)

end A281241

/-! ## A281241.P3115634790305565441

`A281235(n+1)²/A281239(n+1)`
-/

namespace A281241.P3115634790305565441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281235 (n + 1) ^ 2 : ℚ) / (A281239 (n + 1) : ℚ)

end

end A281241.P3115634790305565441

namespace A281241

/-- `A281235(n+1)²/A281239(n+1)` -/
def P3115634790305565441.Spec : Prop :=
  ∀ n, P3115634790305565441.a n = (A281241 (n + 1) : ℚ)

end A281241

/-!
# A281242: Solutions y to the negative Pell equation y^2 = 72*x^2 - 1331712 with x,y >= 0.

The programs for A281242, there is no canonical definition to state claims against.
-/

/-! ## A281242.P7398605614988302149

`2*A281236(n+1)`
-/

namespace A281242.P7398605614988302149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281236 (n + 1)

end

end A281242.P7398605614988302149

/-! ## A281242.P11316400926928818428

`4*A281240(n+1)`
-/

namespace A281242.P11316400926928818428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A281240 (n + 1)

end

end A281242.P11316400926928818428

/-! ## A281242.P18034751692813803288

`A281236(xor(2, xor(2, n+1)))+A281236(n+1)`
-/

namespace A281242.P18034751692813803288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281236 (Nat.xor 2 (Nat.xor 2 (n + 1))) + A281236 (n + 1)

end

end A281242.P18034751692813803288

/-! ## A281242.P10461047954950657524

`A281236(n+1)+A281240(n+1)+A281240(n+1)`
-/

namespace A281242.P10461047954950657524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281236 (n + 1) + (A281240 (n + 1) + A281240 (n + 1))

end

end A281242.P10461047954950657524

/-! ## A281242.P17973132161852396679

`A281236(n+1)+A281236(n+1)%A281236(n+2)`
-/

namespace A281242.P17973132161852396679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281236 (n + 1) + Int.tmod (A281236 (n + 1)) (A281236 (n + 2))

end

end A281242.P17973132161852396679

/-!
# A281243: Expansion of Product_{k>=1} (1 + x^(5*k-1)).

The programs for A281243, there is no canonical definition to state claims against.
-/

/-! ## A281243.P13097923925168844846

`gcd(A000038(A195860(n+1)), A284317(n))`
-/

namespace A281243.P13097923925168844846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A195860 (n + 1)).toNat) (A284317 n)

end

end A281243.P13097923925168844846

/-! ## A281243.P18370776985864143402

`abs(A284317(n)%A284284(2*n+3))`
-/

namespace A281243.P18370776985864143402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284317 n) (A284284 (2 * n + 3))|

end

end A281243.P18370776985864143402

/-! ## A281243.P7974970445858882835

`lcm(A006519(A028387(n)), A284317(n))`
-/

namespace A281243.P7974970445858882835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (A028387 n).toNat) (A284317 n)

end

end A281243.P7974970445858882835

/-! ## A281243.P3684562764830650562

`abs(A284317(n)%A124416(n+3))`
-/

namespace A281243.P3684562764830650562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284317 n) (A124416 (n + 3))|

end

end A281243.P3684562764830650562

/-! ## A281243.P13971691393189754654

`abs(A284317(n)%A016825(A007504(n)))`
-/

namespace A281243.P13971691393189754654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284317 n) (A016825 (A007504 n).toNat)|

end

end A281243.P13971691393189754654

/-! ## A281243.P16610686465539423222

`A000038(A130330(n))+abs(A284317(n))`
-/

namespace A281243.P16610686465539423222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A130330 n).toNat + |A284317 n|

end

end A281243.P16610686465539423222

/-! ## A281243.P1941193662610768040

`gcd(A284317(n), A339087(n))`
-/

namespace A281243.P1941193662610768040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284317 n) (A339087 n)

end

end A281243.P1941193662610768040

/-!
# A281244: Expansion of Product_{k>=1} (1 + x^(6*k-1)).

The programs for A281244, there is no canonical definition to state claims against.
-/

/-! ## A281244.P123462842016949125

`abs(A284586(n))`
-/

namespace A281244.P123462842016949125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284586 n|

end

end A281244.P123462842016949125

/-! ## A281244.P16525897562899162585

`A033999(n)*A284586(n)`
-/

namespace A281244.P16525897562899162585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284586 n

end

end A281244.P16525897562899162585

/-! ## A281244.P933664589082632731

`gcd(A000038(n), A284586(n))`
-/

namespace A281244.P933664589082632731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A284586 n)

end

end A281244.P933664589082632731

/-! ## A281244.P7687485030978733660

`lcm(A020985(n), A284586(n))`
-/

namespace A281244.P7687485030978733660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A284586 n)

end

end A281244.P7687485030978733660

/-! ## A281244.P11946644026330708219

`A284586(n)/A033999(A008585(n))`
-/

namespace A281244.P11946644026330708219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284586 n : ℚ) / (A033999 (A008585 n).toNat : ℚ)

end

end A281244.P11946644026330708219

/-! ## A281244.P14428147709537484264

`∑{d}[A284586(n), A000010(#)]`
-/

namespace A281244.P14428147709537484264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A281244.P14428147709537484264

/-! ## A281244.P3596673806378062078

`A281245(A047306(n+1))%p?[A267874(n)]`
-/

namespace A281244.P3596673806378062078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281245 (A047306 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A281244.P3596673806378062078

/-! ## A281244.P8888051573828221555

`A042974(A043003(n+1))*A281245(A047306(n+1))`
-/

namespace A281244.P8888051573828221555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042974 (A043003 (n + 1)).toNat * A281245 (A047306 (n + 1)).toNat

end

end A281244.P8888051573828221555

/-! ## A281244.P3196612124000068348

`A020500(A121030(n+1))*A281245(A047306(n+1))`
-/

namespace A281244.P3196612124000068348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (A121030 (n + 1)).toNat * A281245 (A047306 (n + 1)).toNat

end

end A281244.P3196612124000068348

/-! ## A281244.P13348745536443867411

`A281245(A047306(n+1))+A081221(A019565(n))`
-/

namespace A281244.P13348745536443867411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281245 (A047306 (n + 1)).toNat + A081221 (A019565 n).toNat

end

end A281244.P13348745536443867411

/-! ## A281244.P14838098974167275288

`A004718(A059268(n))²*A281245(A047306(n+1))`
-/

namespace A281244.P14838098974167275288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A059268 n).toNat ^ 2 * A281245 (A047306 (n + 1)).toNat

end

end A281244.P14838098974167275288

/-! ## A281244.P4944053783316193334

`A009531(A107171(n+1))*A281245(A047306(n+1))`
-/

namespace A281244.P4944053783316193334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A107171 (n + 1)).toNat * A281245 (A047306 (n + 1)).toNat

end

end A281244.P4944053783316193334

/-! ## A281244.P15954698714504838544

`A281245(A047306(n+1))*A304042(A320748(n+1))`
-/

namespace A281244.P15954698714504838544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281245 (A047306 (n + 1)).toNat * A304042 (A320748 (n + 1)).toNat

end

end A281244.P15954698714504838544

/-! ## A281244.P9000574516168795712

`A053381(A053415(n))*A281245(A047306(n+1))`
-/

namespace A281244.P9000574516168795712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 (A053415 n).toNat * A281245 (A047306 (n + 1)).toNat

end

end A281244.P9000574516168795712

/-! ## A281244.P8391898983589022942

`A281245(A047306(n+1))*A336722(A242190(n+1))`
-/

namespace A281244.P8391898983589022942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281245 (A047306 (n + 1)).toNat * A336722 (A242190 (n + 1)).toNat

end

end A281244.P8391898983589022942

/-! ## A281244.P11193316578489814843

`A000120(A056672(n+1))*A281245(A047306(n+1))`
-/

namespace A281244.P11193316578489814843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A056672 (n + 1)).toNat * A281245 (A047306 (n + 1)).toNat

end

end A281244.P11193316578489814843

/-!
# A281245: Expansion of Product_{k>=1} (1 + x^(7*k-1)).

The programs for A281245, there is no canonical definition to state claims against.
-/

/-! ## A281245.P14222973024174474984

`gcd(A000038(A043198(n+1)), A284504(n))`
-/

namespace A281245.P14222973024174474984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A043198 (n + 1)).toNat) (A284504 n)

end

end A281245.P14222973024174474984

/-! ## A281245.P15169676735545798479

`gcd(A000038(A236343(n)), A284504(n))`
-/

namespace A281245.P15169676735545798479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A236343 n).toNat) (A284504 n)

end

end A281245.P15169676735545798479

/-! ## A281245.P6626158393272139110

`lcm(A020985(A109702(n)), A284504(n))`
-/

namespace A281245.P6626158393272139110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 (A109702 n).toNat) (A284504 n)

end

end A281245.P6626158393272139110

/-! ## A281245.P10312698859565191679

`A000038(A236343(n+1))+abs(A284504(n))`
-/

namespace A281245.P10312698859565191679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A236343 (n + 1)).toNat + |A284504 n|

end

end A281245.P10312698859565191679

/-! ## A281245.P5282360625386025419

`abs(A284504(n)%A250755(n+1))`
-/

namespace A281245.P5282360625386025419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284504 n) (A250755 (n + 1))|

end

end A281245.P5282360625386025419

/-! ## A281245.P1402300431741858449

`A018851(A284504(n)²)`
-/

namespace A281245.P1402300431741858449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A284504 n ^ 2).toNat

end

end A281245.P1402300431741858449

/-! ## A281245.P15463808376700953166

`A018851(A284504(n)^2)`
-/

namespace A281245.P15463808376700953166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A284504 n ^ 2).toNat

end

end A281245.P15463808376700953166

/-! ## A281245.P2416678696523526632

`abs(A001222(A233265(n+1))*A284504(n))`
-/

namespace A281245.P2416678696523526632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001222 (A233265 (n + 1)).toNat * A284504 n|

end

end A281245.P2416678696523526632

/-! ## A281245.P9720661483049513768

`A000194(A284504(n)²)`
-/

namespace A281245.P9720661483049513768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A284504 n ^ 2).toNat

end

end A281245.P9720661483049513768

/-! ## A281245.P6882293105356958450

`A000196(A284504(n)²)`
-/

namespace A281245.P6882293105356958450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A284504 n ^ 2).toNat

end

end A281245.P6882293105356958450

/-! ## A281245.P14334206775856803197

`A037213(A284504(n)²)`
-/

namespace A281245.P14334206775856803197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A284504 n ^ 2).toNat

end

end A281245.P14334206775856803197

/-! ## A281245.P5415888859591497237

`A178786(A284504(n)²)`
-/

namespace A281245.P5415888859591497237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A284504 n ^ 2).toNat

end

end A281245.P5415888859591497237

/-! ## A281245.P3300689923786672563

`A000196(A284504(n)^ceil(atan(n)))`
-/

namespace A281245.P3300689923786672563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A284504 n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

end

end A281245.P3300689923786672563

/-! ## A281245.P14235550993913594319

`A002262(2*A284504(n)²)`
-/

namespace A281245.P14235550993913594319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A284504 n ^ 2).toNat

end

end A281245.P14235550993913594319

/-! ## A281245.P9721467101170795368

`A002262(2*A284504(n)*A284504(n))`
-/

namespace A281245.P9721467101170795368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A284504 n * A284504 n).toNat

end

end A281245.P9721467101170795368

/-! ## A281245.P8155796815309066403

`A007966(A284504(n)²)`
-/

namespace A281245.P8155796815309066403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A284504 n ^ 2).toNat

end

end A281245.P8155796815309066403

/-!
# A281246: Least positive odd number m such that numerator of zeta(-m) are divisible by A000928(n).

The programs for A281246, there is no canonical definition to state claims against.
-/

/-! ## A281246.P7479821785918944258

`A035112(n+1)-1`
-/

namespace A281246.P7479821785918944258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035112 (n + 1) - 1

end

end A281246.P7479821785918944258

/-! ## A281246.P16380624305457021443

`A014681(A035112(n+1))`
-/

namespace A281246.P16380624305457021443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A035112 (n + 1)).toNat

end

end A281246.P16380624305457021443

/-! ## A281246.P17551238211100827701

`A023444(A035112(n+1)+1)`
-/

namespace A281246.P17551238211100827701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A035112 (n + 1) + 1).toNat

end

end A281246.P17551238211100827701

/-! ## A281246.P13890871091549404243

`A097062(A035112(n+1)+1)`
-/

namespace A281246.P13890871091549404243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (A035112 (n + 1) + 1).toNat

end

end A281246.P13890871091549404243

/-! ## A281246.P4530678990134114266

`A267458(A035112(n+1)+1)`
-/

namespace A281246.P4530678990134114266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A035112 (n + 1) + 1).toNat

end

end A281246.P4530678990134114266

/-! ## A281246.P2527864142526115031

`A289207(A035112(n+1)+1)`
-/

namespace A281246.P2527864142526115031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A035112 (n + 1) + 1).toNat

end

end A281246.P2527864142526115031

/-! ## A281246.P10647524268665171877

`A140106(2*A035112(n+1))`
-/

namespace A281246.P10647524268665171877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A035112 (n + 1)).toNat

end

end A281246.P10647524268665171877

/-! ## A281246.P1766573799357922

`A004273(A035112(n+1)/2)`
-/

namespace A281246.P1766573799357922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A035112 (n + 1) : ℚ) / 2)).toNat

end

end A281246.P1766573799357922

/-! ## A281246.P8472143295506864682

`A023451(A035112(n+1)+8)`
-/

namespace A281246.P8472143295506864682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A035112 (n + 1) + 8).toNat

end

end A281246.P8472143295506864682

/-! ## A281246.P12433124808344966375

`A028310(A035112(n+1)+log2(1/2))`
-/

namespace A281246.P12433124808344966375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A035112 (n + 1) : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A281246.P12433124808344966375

/-!
# A281247: Number of nX2 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281247, there is no canonical definition to state claims against.
-/

/-! ## A281247.P1198691302997214259

`A281251(∑[n+1]+2)`
-/

namespace A281247.P1198691302997214259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281247.P1198691302997214259

/-! ## A281247.P16279958051169894963

`A281251(A133263(n+1))+A011739(n)`
-/

namespace A281247.P16279958051169894963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A133263 (n + 1)).toNat + A011739 n

end

end A281247.P16279958051169894963

/-! ## A281247.P15855680553902324784

`A281251(A133263(n+1))%A182608(n)`
-/

namespace A281247.P15855680553902324784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281251 (A133263 (n + 1)).toNat) (A182608 n)

end

end A281247.P15855680553902324784

/-! ## A281247.P14014475893059734796

`A281251(A133263(n+1))+A000035(2*n)`
-/

namespace A281247.P14014475893059734796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A281247.P14014475893059734796

/-! ## A281247.P739143078396415905

`A281251(A000096(n+1))+A011739(n)`
-/

namespace A281247.P739143078396415905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A000096 (n + 1)).toNat + A011739 n

end

end A281247.P739143078396415905

/-!
# A281248: Number of nX3 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281248, there is no canonical definition to state claims against.
-/

/-! ## A281248.P11428649563407808838

`A281251(∑[n+2]+4)`
-/

namespace A281248.P11428649563407808838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281248.P11428649563407808838

/-! ## A281248.P12969216516130532416

`or(char[2], A281251(A167614(n+1)))`
-/

namespace A281248.P12969216516130532416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281251 (A167614 (n + 1)).toNat)

end

end A281248.P12969216516130532416

/-! ## A281248.P6488764192412562541

`A281251(A167614(n+1))+A011739(n)`
-/

namespace A281248.P6488764192412562541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A167614 (n + 1)).toNat + A011739 n

end

end A281248.P6488764192412562541

/-! ## A281248.P8660931472984024938

`A054977(n)*A281251(A167614(n+1))`
-/

namespace A281248.P8660931472984024938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A281251 (A167614 (n + 1)).toNat

end

end A281248.P8660931472984024938

/-! ## A281248.P11825640089582848496

`A057427(n)*A281251(A167614(n+1))`
-/

namespace A281248.P11825640089582848496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A281251 (A167614 (n + 1)).toNat

end

end A281248.P11825640089582848496

/-!
# A281249: Number of nX4 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281249, there is no canonical definition to state claims against.
-/

/-! ## A281249.P4475060807409555294

`A281251(∑[round(1/acot(n))+3]+6)`
-/

namespace A281249.P4475060807409555294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A281249.P4475060807409555294

/-! ## A281249.P4164228895576345361

`A281251(A374004(n+1))`
-/

namespace A281249.P4164228895576345361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A374004 (n + 1)).toNat

end

end A281249.P4164228895576345361

/-! ## A281249.P4741796413825170867

`A281251(A141214(n)+7)`
-/

namespace A281249.P4741796413825170867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A141214 n + 7).toNat

end

end A281249.P4741796413825170867

/-! ## A281249.P17810302277126456515

`A281251(A052905(n)+9)`
-/

namespace A281249.P17810302277126456515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A052905 n + 9).toNat

end

end A281249.P17810302277126456515

/-! ## A281249.P3215662153890242780

`A281251(A055999(n)+10)`
-/

namespace A281249.P3215662153890242780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A055999 n + 10).toNat

end

end A281249.P3215662153890242780

/-!
# A281250: Number of nX5 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281250, there is no canonical definition to state claims against.
-/

/-! ## A281250.P1635779503803986260

`A281251(A374005(n+1))`
-/

namespace A281250.P1635779503803986260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A374005 (n + 1)).toNat

end

end A281250.P1635779503803986260

/-! ## A281250.P15231082168446116516

`A281251(A167499(n+3))`
-/

namespace A281250.P15231082168446116516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A167499 (n + 3)).toNat

end

end A281250.P15231082168446116516

/-! ## A281250.P14796187887911448089

`A281251(A077169(n+5))`
-/

namespace A281250.P14796187887911448089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A077169 (n + 5)).toNat

end

end A281250.P14796187887911448089

/-! ## A281250.P10745654375726980183

`A281251(A155212(n)+13)`
-/

namespace A281250.P10745654375726980183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A155212 n + 13).toNat

end

end A281250.P10745654375726980183

/-! ## A281250.P14144573014690096021

`A281251(A056000(n)+15)`
-/

namespace A281250.P14144573014690096021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281251 (A056000 n + 15).toNat

end

end A281250.P14144573014690096021

/-!
# A281252: Numbers whose septenary, octal and nonary representations are prime when read in decimal.

The programs for A281252, there is no canonical definition to state claims against.
-/

/-! ## A281252.P13298820900451552364

`record[gcd(∑[n]+n², A001772(n+1))]`
-/

namespace A281252.P13298820900451552364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2 : ℕ) : ℤ) (A001772 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281252.P13298820900451552364

/-!
# A281253: Alternately concatenate the decimal digits from front to back 1...n such that n is always to the right.

The programs for A281253, there is no canonical definition to state claims against.
-/

/-! ## A281253.P17350558222588782917

`A281254(n+2)-Δ[A052246(n+1)/10]`
-/

namespace A281253.P17350558222588782917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052246 (n + 1) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281254 (n + 2) : ℚ) - (f1 (n + 1) - f1 n)

end

end A281253.P17350558222588782917

/-! ## A281253.P5189397134455745674

`A000422(n+1)+A281254(n+2)-A000422(n+2)`
-/

namespace A281253.P5189397134455745674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) + (A281254 (n + 2) - A000422 (n + 2))

end

end A281253.P5189397134455745674

/-! ## A281253.P1520371342885966786

`A281254(n+2)-Δ[A252043(A058183(n+1))+A019566(n+1)]`
-/

namespace A281253.P1520371342885966786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A058183 (n + 1)).toNat + A019566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281254 (n + 2) - (f1 (n + 1) - f1 n)

end

end A281253.P1520371342885966786

/-! ## A281253.P1673307232168973898

`A281254(n+2)-Δ[A252043(record[∑[A044932(n+1)]])+A019566(n+1)]`
-/

namespace A281253.P1673307232168973898
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat + A019566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281254 (n + 2) - (f1 (n + 1) - f1 n)

end

end A281253.P1673307232168973898

/-! ## A281253.P2158245013280970237

`A281254(n+2)-Δ[A019566(n+1)+record[A322762(n+1)]]`
-/

namespace A281253.P2158245013280970237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322762 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019566 (n + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281254 (n + 2) - (f1 (n + 1) - f1 n)

end

end A281253.P2158245013280970237

/-!
# A281254: Concatenate the decimal numbers n n-2 n-4 ...5 3 1 2 4 ... n-5 n-3 n-1 if n is odd, or n n-2 n-4 ... 6 4 2 1 3 5 ... n-5 n-3 n-1 if n is even.

The programs for A281254, there is no canonical definition to state claims against.
-/

/-! ## A281254.P842969990265471416

`A004086(10*a(n-1)+1+n)` with `a(0)=1`
-/

namespace A281254.P842969990265471416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (10 * a (n - 1) + 1 + (n : ℤ)).toNat

end

end A281254.P842969990265471416

/-!
# A281258: Digital root of n*(n+1)*(n+2)/2.

The programs for A281258, the canonical program `A281258.P1065485608924679115` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281258 has offset 0).

The definition of A281258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281258.P1065485608924679115

`a(n-1)-a(n-3)+a(n-4)-a(n-6)+a(n-7)` with `a(0)=0, a(1)=3, a(2)=3, a(3)=3, a(4)=6, a(5)=6, a(6)=6, a(7)=9`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281258

/-- `a(n-1)-a(n-3)+a(n-4)-a(n-6)+a(n-7)` -/
def P1065485608924679115.Spec : Prop :=
  ∀ n, P1065485608924679115.a n = A281258 n

theorem P1065485608924679115.correct : P1065485608924679115.Spec := by
  intro n
  simp only [A281258]

end A281258

/-!
# A281259: Number of elements of S_n with strategic pile of size 6.

The programs for A281259, there is no canonical definition to state claims against.
-/

/-! ## A281259.P13361369614484574438

`27*A317844(A004110(n)+1)`
-/

namespace A281259.P13361369614484574438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A317844 (A004110 n + 1).toNat

end

end A281259.P13361369614484574438

/-! ## A281259.P15572375758130426314

`A002265(A029574(n))*A004442(n)`
-/

namespace A281259.P15572375758130426314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A029574 n).toNat * A004442 n

end

end A281259.P15572375758130426314

/-! ## A281259.P2782653700764321681

`A002265(A053497(n))*A004442(n)`
-/

namespace A281259.P2782653700764321681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A053497 n).toNat * A004442 n

end

end A281259.P2782653700764321681

/-! ## A281259.P442528266320128794

`A008611(n)*A057353(A029574(n))`
-/

namespace A281259.P442528266320128794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A057353 (A029574 n).toNat

end

end A281259.P442528266320128794

/-! ## A281259.P18095652713271549633

`A001222(A309861(n))*A073055(n)`
-/

namespace A281259.P18095652713271549633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A309861 n).toNat * A073055 n

end

end A281259.P18095652713271549633

/-!
# A281260: Triangular array of generalized Narayana numbers T(n,k) = 2*binomial(n+1,k)* binomial(n-2,k-1)/(n+1) for n >= 1 and 0 <= k <= n-1, read by rows.

The programs for A281260, there is no canonical definition to state claims against.
-/

/-! ## A281260.P2274452736670346002

`A097805(n)*A325678(A336574(n))`
-/

namespace A281260.P2274452736670346002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A325678 (A336574 n).toNat

end

end A281260.P2274452736670346002

/-! ## A281260.P14622130295333336930

`A089857(A131818(n+1)*A265170(n+1))`
-/

namespace A281260.P14622130295333336930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089857 (A131818 (n + 1) * A265170 (n + 1)).toNat

end

end A281260.P14622130295333336930

/-! ## A281260.P2611660729140280808

`A126013(A182406(n+1))`
-/

namespace A281260.P2611660729140280808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126013 (A182406 (n + 1)).toNat

end

end A281260.P2611660729140280808

/-! ## A281260.P6317329946962977378

`A390159(A004896(n+2))`
-/

namespace A281260.P6317329946962977378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390159 (A004896 (n + 2)).toNat

end

end A281260.P6317329946962977378

/-! ## A281260.P11261791326763800670

`A390159(A004907(n+2))`
-/

namespace A281260.P11261791326763800670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390159 (A004907 (n + 2)).toNat

end

end A281260.P11261791326763800670

/-!
# A281262: Number of permutations of [2n] with exactly n fixed points.

The programs for A281262, the canonical program `A281262.P16614927319612418992` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281262 has offset 0).

The definition of A281262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281262.P16614927319612418992

`C(2*n, n)*A000166(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281262

/-- `C(2*n, n)*A000166(n)` -/
def P16614927319612418992.Spec : Prop :=
  ∀ n, P16614927319612418992.a n = A281262 n

theorem P16614927319612418992.correct : P16614927319612418992.Spec := by
  intro n
  simp only [A281262]

end A281262

/-! ## A281262.P14143204425647741794

`(4*n-2)*((n-1)*a(n-1)+(4*n-6)*a(n-2))/n` with `a(0)=1, a(1)=0`
-/

namespace A281262.P14143204425647741794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((4 * n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * a (n - 1) + ((4 * n : ℤ) - 6 : ℚ) * a (n - 2)) / (n : ℚ)

end

end A281262.P14143204425647741794

namespace A281262

/-- `(4*n-2)*((n-1)*a(n-1)+(4*n-6)*a(n-2))/n` -/
def P14143204425647741794.Spec : Prop :=
  ∀ n, P14143204425647741794.a n = (A281262 n : ℚ)

end A281262

/-! ## A281262.P5824467269246607841

`abs(A182386(n))*C(2*n, n)`
-/

namespace A281262.P5824467269246607841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| * (Nat.choose (2 * n) n : ℤ)

end

end A281262.P5824467269246607841

namespace A281262

/-- `abs(A182386(n))*C(2*n, n)` -/
def P5824467269246607841.Spec : Prop :=
  ∀ n, P5824467269246607841.a n = A281262 n

end A281262

/-! ## A281262.P5004852199762086034

`A000166(n)*A000984(n)`
-/

namespace A281262.P5004852199762086034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A000984 n

end

end A281262.P5004852199762086034

namespace A281262

/-- `A000166(n)*A000984(n)` -/
def P5004852199762086034.Spec : Prop :=
  ∀ n, P5004852199762086034.a n = A281262 n

theorem P5004852199762086034.correct : P5004852199762086034.Spec := by
  intro n
  simp only [A281262, Nat.add_sub_cancel, A281262.P5004852199762086034.a, A281262.P16614927319612418992.a, A000166, A000166.P17301805902585999237.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A281262

/-! ## A281262.P17074000680112560446

`abs(A000984(n)*A182386(n))`
-/

namespace A281262.P17074000680112560446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000984 n * A182386 n|

end

end A281262.P17074000680112560446

namespace A281262

/-- `abs(A000984(n)*A182386(n))` -/
def P17074000680112560446.Spec : Prop :=
  ∀ n, P17074000680112560446.a n = A281262 n

end A281262

/-! ## A281262.P11460766800370994603

`record[A126869(n)]*A000166(n)`
-/

namespace A281262.P11460766800370994603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000166 n

end

end A281262.P11460766800370994603

namespace A281262

/-- `record[A126869(n)]*A000166(n)` -/
def P11460766800370994603.Spec : Prop :=
  ∀ n, P11460766800370994603.a n = A281262 n

end A281262

/-! ## A281262.P10585709351332240643

`record[A126930(n)]*A000166(n)`
-/

namespace A281262.P10585709351332240643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000166 n

end

end A281262.P10585709351332240643

namespace A281262

/-- `record[A126930(n)]*A000166(n)` -/
def P10585709351332240643.Spec : Prop :=
  ∀ n, P10585709351332240643.a n = A281262 n

end A281262

/-! ## A281262.P3529294522658541604

`A000108(n)*A000240(n+1)`
-/

namespace A281262.P3529294522658541604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000240 (n + 1)

end

end A281262.P3529294522658541604

namespace A281262

/-- `A000108(n)*A000240(n+1)` -/
def P3529294522658541604.Spec : Prop :=
  ∀ n, P3529294522658541604.a n = A281262 n

end A281262

/-! ## A281262.P10189309432176367038

`A000166(n)*A056040(2*n)`
-/

namespace A281262.P10189309432176367038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A056040 (2 * n)

end

end A281262.P10189309432176367038

namespace A281262

/-- `A000166(n)*A056040(2*n)` -/
def P10189309432176367038.Spec : Prop :=
  ∀ n, P10189309432176367038.a n = A281262 n

end A281262

/-! ## A281262.P5640866247269437460

`A000166(n)*A126869(2*n)`
-/

namespace A281262.P5640866247269437460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A126869 (2 * n)

end

end A281262.P5640866247269437460

namespace A281262

/-- `A000166(n)*A126869(2*n)` -/
def P5640866247269437460.Spec : Prop :=
  ∀ n, P5640866247269437460.a n = A281262 n

end A281262

/-!
# A281263: Number of ordered pairs (G,S), where G is a simple labeled graph on n nodes and S is a subset of the vertices of G, such that G[S], the subgraph of G induced by S, is connected.

The programs for A281263, there is no canonical definition to state claims against.
-/

/-! ## A281263.P14957658914439248575

`A066824(A289843(n))`
-/

namespace A281263.P14957658914439248575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066824 (A289843 n).toNat

end

end A281263.P14957658914439248575

/-!
# A281264: Base-2 logarithm of denominator of (Sum_{k=0..n^2-1} (-1)^k*sqrt(Pi)/(Gamma(1/2-k)*Gamma(1+k))) - n.

The programs for A281264, there is no canonical definition to state claims against.
-/

/-! ## A281264.P14491880392117142704

`A005187(n*(n+2))`
-/

namespace A281264.P14491880392117142704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n * (n + 2))

end

end A281264.P14491880392117142704

/-! ## A281264.P10211285189260591811

`A101925(n*(n+2))-1`
-/

namespace A281264.P10211285189260591811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 (n * (n + 2)) - 1

end

end A281264.P10211285189260591811

/-! ## A281264.P6507688075990290042

`A011371(2*n*(n+2))`
-/

namespace A281264.P6507688075990290042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * (n * (n + 2)))

end

end A281264.P6507688075990290042

/-! ## A281264.P14205864625314232473

`A227361(2*(n+1)²-1)`
-/

namespace A281264.P14205864625314232473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227361 (2 * (n + 1) ^ 2 - 1)

end

end A281264.P14205864625314232473

/-! ## A281264.P2998866013216056001

`A285406(n+1)-val(n+1, 2)`
-/

namespace A281264.P2998866013216056001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285406 (n + 1) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A281264.P2998866013216056001

/-! ## A281264.P10851887628041902360

`A004134(n*(n+2))-n*(n+2)`
-/

namespace A281264.P10851887628041902360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 (n * (n + 2)) - (n * (n + 2) : ℤ)

end

end A281264.P10851887628041902360

/-! ## A281264.P5575995928693117661

`A288933(2*(n+1)²)-(2*(n+1))²`
-/

namespace A281264.P5575995928693117661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288933 (2 * (n + 1) ^ 2) - ((2 * (n + 1)) ^ 2 : ℤ)

end

end A281264.P5575995928693117661

/-! ## A281264.P9562854867910767940

`2*n*(n+2)-A000120(2*n*(n+2))`
-/

namespace A281264.P9562854867910767940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n * (n + 2)) : ℤ) - A000120 (2 * (n * (n + 2)))

end

end A281264.P9562854867910767940

/-! ## A281264.P3506447932266810137

`2*n*(n+2)-A048881(2*n*(n+2))`
-/

namespace A281264.P3506447932266810137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n * (n + 2)) : ℤ) - A048881 (2 * (n * (n + 2)))

end

end A281264.P3506447932266810137

/-! ## A281264.P5012065053652393065

`A274716(A060626(n))`
-/

namespace A281264.P5012065053652393065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274716 (A060626 n).toNat

end

end A281264.P5012065053652393065

/-!
# A281266: Main diagonal of A279928.

The programs for A281266, there is no canonical definition to state claims against.
-/

/-! ## A281266.P1171481393779421323

`A279928(∑[4*n])`
-/

namespace A281266.P1171481393779421323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281266.P1171481393779421323

/-! ## A281266.P16037238673175767250

`A279928(A046092(n))+C(n, n+1)`
-/

namespace A281266.P16037238673175767250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A046092 n).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A281266.P16037238673175767250

/-! ## A281266.P14001265271923328345

`A279928(A046092(n))%A232999(n)`
-/

namespace A281266.P14001265271923328345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279928 (A046092 n).toNat) (A232999 n)

end

end A281266.P14001265271923328345

/-! ## A281266.P8567316720857804627

`or(A000007(n), A279928(A046092(n)))`
-/

namespace A281266.P8567316720857804627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A279928 (A046092 n).toNat)

end

end A281266.P8567316720857804627

/-! ## A281266.P16396447367681409663

`or(A151933(n), A279928(A046092(n)))`
-/

namespace A281266.P16396447367681409663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A279928 (A046092 n).toNat)

end

end A281266.P16396447367681409663

/-! ## A281266.P6597966839554697871

`A007318(A085856(n))*A279928(A046092(n))`
-/

namespace A281266.P6597966839554697871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A085856 n).toNat * A279928 (A046092 n).toNat

end

end A281266.P6597966839554697871

/-! ## A281266.P11404840440827859203

`A007318(A307597(n))*A279928(A046092(n))`
-/

namespace A281266.P11404840440827859203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A307597 n).toNat * A279928 (A046092 n).toNat

end

end A281266.P11404840440827859203

/-! ## A281266.P11562572644363846637

`A350139(A006530(n+1))+A279928(A046092(n))`
-/

namespace A281266.P11562572644363846637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (A006530 (n + 1)).toNat + A279928 (A046092 n).toNat

end

end A281266.P11562572644363846637

/-!
# A281267: Main diagonal of A276554.

The programs for A281267, there is no canonical definition to state claims against.
-/

/-! ## A281267.P8594112983478729608

`A276554(∑[4*n])`
-/

namespace A281267.P8594112983478729608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281267.P8594112983478729608

/-! ## A281267.P6644667996642212126

`xor(1, xor(1, A276554(A046092(n))))`
-/

namespace A281267.P6644667996642212126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A276554 (A046092 n).toNat))

end

end A281267.P6644667996642212126

/-! ## A281267.P18159471136151103507

`or(A000007(n), A276554(A046092(n)))`
-/

namespace A281267.P18159471136151103507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A276554 (A046092 n).toNat)

end

end A281267.P18159471136151103507

/-! ## A281267.P16170276131025411549

`A276554(A046092(n))+A000007(n+1)`
-/

namespace A281267.P16170276131025411549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (A046092 n).toNat + A000007 (n + 1)

end

end A281267.P16170276131025411549

/-! ## A281267.P11098066273060728711

`A276554(A046092(n))+A000038(n+1)`
-/

namespace A281267.P11098066273060728711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (A046092 n).toNat + A000038 (n + 1)

end

end A281267.P11098066273060728711

/-! ## A281267.P9400127703472039598

`A286996(A163822(n+1))+A276554(A046092(n))`
-/

namespace A281267.P9400127703472039598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286996 (A163822 (n + 1)).toNat + A276554 (A046092 n).toNat

end

end A281267.P9400127703472039598

/-! ## A281267.P5716312580831660784

`A286990(A286991(n+1))+A276554(A046092(n))`
-/

namespace A281267.P5716312580831660784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286990 (A286991 (n + 1)).toNat + A276554 (A046092 n).toNat

end

end A281267.P5716312580831660784

/-! ## A281267.P10688833233139652491

`A286993(A286994(n+1))+A276554(A046092(n))`
-/

namespace A281267.P10688833233139652491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286993 (A286994 (n + 1)).toNat + A276554 (A046092 n).toNat

end

end A281267.P10688833233139652491

/-!
# A281268: Main diagonal of A284993.

The programs for A281268, there is no canonical definition to state claims against.
-/

/-! ## A281268.P13402864031873429236

`A284993(∑[4*n])`
-/

namespace A281268.P13402864031873429236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281268.P13402864031873429236

/-! ## A281268.P3069448834009501032

`A284993(A046092(n))/A007318(∑[n])`
-/

namespace A281268.P3069448834009501032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284993 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A281268.P3069448834009501032

/-! ## A281268.P18173716475083701052

`A284993(A046092(n))^A007318(∑[n+2])`
-/

namespace A281268.P18173716475083701052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284993 (A046092 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A281268.P18173716475083701052

/-! ## A281268.P7218732500210247492

`gcd(2, A000040(n+2))*A284993(A046092(n))`
-/

namespace A281268.P7218732500210247492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A284993 (A046092 n).toNat

end

end A281268.P7218732500210247492

/-! ## A281268.P12018193131526917469

`A014963(12*n+6)*A284993(A046092(n))`
-/

namespace A281268.P12018193131526917469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A284993 (A046092 n).toNat

end

end A281268.P12018193131526917469

/-!
# A281269: Triangle read by rows: T(n,k) is the number of minimal edge covers of the complete labeled graph on n nodes that have exactly k edges, n>=2, 1<=k<=n-1.

The programs for A281269, there is no canonical definition to state claims against.
-/

/-! ## A281269.P9198548507378171288

`A258140(A076196(n+1))*A361353(n+1)`
-/

namespace A281269.P9198548507378171288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258140 (A076196 (n + 1)).toNat * A361353 (n + 1)

end

end A281269.P9198548507378171288

/-!
# A281270: a(n) is the number of closed BCK (a.k.a. affine) lambda terms of size n.

The programs for A281270, there is no canonical definition to state claims against.
-/

/-! ## A281270.P1051879995284044504

`A287030(floor((n/2)²+n))`
-/

namespace A281270.P1051879995284044504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287030 ⌊((n : ℚ) / 2) ^ 2 + (n : ℚ)⌋.toNat

end

end A281270.P1051879995284044504

/-!
# A281271: Expansion of Product_{k>=1} (1 + x^(5*k-2)).

The programs for A281271, there is no canonical definition to state claims against.
-/

/-! ## A281271.P1142654434424125700

`abs(A284320(n)%A048225(A048224(n+1)))`
-/

namespace A281271.P1142654434424125700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284320 n) (A048225 (A048224 (n + 1)).toNat)|

end

end A281271.P1142654434424125700

/-! ## A281271.P17097360149087464467

`gcd(A000122(A105444(n+1)), A284320(n))`
-/

namespace A281271.P17097360149087464467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A105444 (n + 1)).toNat) (A284320 n)

end

end A281271.P17097360149087464467

/-! ## A281271.P15848665612691707489

`lcm(A151878(n)!, A284320(n))`
-/

namespace A281271.P15848665612691707489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A151878 n).toNat : ℤ) (A284320 n)

end

end A281271.P15848665612691707489

/-! ## A281271.P14133015585125445334

`abs(A284320(n)%A138919(n+1))`
-/

namespace A281271.P14133015585125445334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284320 n) (A138919 (n + 1))|

end

end A281271.P14133015585125445334

/-! ## A281271.P10737681833679241851

`abs(A020985(A130330(n))*A284320(n))`
-/

namespace A281271.P10737681833679241851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 (A130330 n).toNat * A284320 n|

end

end A281271.P10737681833679241851

/-! ## A281271.P15483535203738082336

`abs(A155040(n)*A284320(n))`
-/

namespace A281271.P15483535203738082336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155040 n * A284320 n|

end

end A281271.P15483535203738082336

/-! ## A281271.P10736121450093500313

`A007966(A284320(n)²)`
-/

namespace A281271.P10736121450093500313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A284320 n ^ 2).toNat

end

end A281271.P10736121450093500313

/-!
# A281272: Expansion of Product_{k>=1} (1 + x^(5*k-3)).

The programs for A281272, there is no canonical definition to state claims against.
-/

/-! ## A281272.P12507245962879778566

`abs(A155040(n)*A284319(n))`
-/

namespace A281272.P12507245962879778566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155040 n * A284319 n|

end

end A281272.P12507245962879778566

/-! ## A281272.P12557688550243693021

`abs(A284319(n)%A023096(n+5))`
-/

namespace A281272.P12557688550243693021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284319 n) (A023096 (n + 5))|

end

end A281272.P12557688550243693021

/-! ## A281272.P9916926810076684652

`gcd(A233473(A151909(n)), A284319(n))`
-/

namespace A281272.P9916926810076684652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233473 (A151909 n).toNat) (A284319 n)

end

end A281272.P9916926810076684652

/-! ## A281272.P12852789365993885364

`abs(A284319(n))%A233980(n+1)`
-/

namespace A281272.P12852789365993885364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A284319 n| (A233980 (n + 1))

end

end A281272.P12852789365993885364

/-! ## A281272.P18118454940676624481

`A007966(A284319(n)²)`
-/

namespace A281272.P18118454940676624481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A284319 n ^ 2).toNat

end

end A281272.P18118454940676624481

/-! ## A281272.P13821320159588522618

`A007967(A284319(n)²)`
-/

namespace A281272.P13821320159588522618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A284319 n ^ 2).toNat

end

end A281272.P13821320159588522618

/-!
# A281274: Expansion of Product_{j>=1} (1 + x^(Sum_{i=1..j} prime(i))).

The programs for A281274, there is no canonical definition to state claims against.
-/

/-! ## A281274.P2259372555516117770

`A279278(2*n+1)%A337691(n+3)`
-/

namespace A281274.P2259372555516117770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279278 (2 * n + 1)) (A337691 (n + 3))

end

end A281274.P2259372555516117770

/-! ## A281274.P6096577227840085651

`A279278(2*n+1)+A000007(A005897(n))`
-/

namespace A281274.P6096577227840085651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279278 (2 * n + 1) + A000007 (A005897 n).toNat

end

end A281274.P6096577227840085651

/-! ## A281274.P11806151789712422116

`A279278(2*n+1)+A000007(A227776(n))`
-/

namespace A281274.P11806151789712422116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279278 (2 * n + 1) + A000007 (A227776 n).toNat

end

end A281274.P11806151789712422116

/-! ## A281274.P2703429631130216165

`A279278(2*n+1)^A007947(A098233(n))`
-/

namespace A281274.P2703429631130216165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279278 (2 * n + 1) : ℚ) ^ (A007947 (A098233 n).toNat : ℤ)

end

end A281274.P2703429631130216165

/-! ## A281274.P9317684464845436466

`A279278(2*n+1)^A321744(A100881(n))`
-/

namespace A281274.P9317684464845436466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279278 (2 * n + 1) : ℚ) ^ (A321744 (A100881 n).toNat : ℤ)

end

end A281274.P9317684464845436466

/-!
# A281275: Numbers k such that (19*10^k + 467)/9 is prime.

The programs for A281275, there is no canonical definition to state claims against.
-/

/-! ## A281275.P16925139823078429587

`∑[A109649(∑[A071894(n+1)])]`
-/

namespace A281275.P16925139823078429587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109649 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281275.P16925139823078429587

/-! ## A281275.P16533107840194535953

`∑[A351092(record[A162154(n+1)])]`
-/

namespace A281275.P16533107840194535953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162154 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351092 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281275.P16533107840194535953

/-! ## A281275.P10035637000119026834

`A294937(Δ[3*3^(n-1)])+A294916(n+1)`
-/

namespace A281275.P10035637000119026834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat + A294916 (n + 1)

end

end A281275.P10035637000119026834

/-! ## A281275.P11077308213299513723

`A157846(record[A278222(n)]-A004247(n))`
-/

namespace A281275.P11077308213299513723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004247 n).toNat

end

end A281275.P11077308213299513723

/-! ## A281275.P16655897895821889522

`A294916(n+1)+A157928(A084509(n))`
-/

namespace A281275.P16655897895821889522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294916 (n + 1) + A157928 (A084509 n).toNat

end

end A281275.P16655897895821889522

/-!
# A281276: Numbers k such that (2*10^k + 457)/9 is prime.

The programs for A281276, there is no canonical definition to state claims against.
-/

/-! ## A281276.P14849456350086246831

`record[A170958(n)+A123262(n)]`
-/

namespace A281276.P14849456350086246831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170958 n + A123262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281276.P14849456350086246831

/-! ## A281276.P11750060718067347073

`A001651(eq[A000720(n+1), A117119(n+1)])`
-/

namespace A281276.P11750060718067347073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A281276.P11750060718067347073

/-!
# A281277: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 347", based on the 5-celled von Neumann neighborhood.

The programs for A281277, there is no canonical definition to state claims against.
-/

/-! ## A281277.P13446913272019981239

`A007088(A281279(n))`
-/

namespace A281277.P13446913272019981239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281279 n).toNat

end

end A281277.P13446913272019981239

/-! ## A281277.P11398401929240869965

`A185544(2*A281279(n))`
-/

namespace A281277.P11398401929240869965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281279 n).toNat

end

end A281277.P11398401929240869965

/-! ## A281277.P12930121957142309530

`A185544(A281279(n)+A281279(n))`
-/

namespace A281277.P12930121957142309530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A281279 n + A281279 n).toNat

end

end A281277.P12930121957142309530

/-!
# A281278: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 347", based on the 5-celled von Neumann neighborhood.

The programs for A281278, there is no canonical definition to state claims against.
-/

/-! ## A281278.P15092244153564525448

`A007088(A281280(n))`
-/

namespace A281278.P15092244153564525448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281280 n).toNat

end

end A281278.P15092244153564525448

/-! ## A281278.P9459031076655909169

`A185544(2*A281280(n))`
-/

namespace A281278.P9459031076655909169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281280 n).toNat

end

end A281278.P9459031076655909169

/-!
# A281280: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 347", based on the 5-celled von Neumann neighborhood.

The programs for A281280, there is no canonical definition to state claims against.
-/

/-! ## A281280.P896678679910127652

`or(A028614(A322365(n)), A280530(n))`
-/

namespace A281280.P896678679910127652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028614 (A322365 n).toNat) (A280530 n)

end

end A281280.P896678679910127652

/-! ## A281280.P9663943676701636593

`A280530(A004891(n+1))`
-/

namespace A281280.P9663943676701636593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280530 (A004891 (n + 1)).toNat

end

end A281280.P9663943676701636593

/-! ## A281280.P17859853275915814678

`A280530(A004902(n+1))`
-/

namespace A281280.P17859853275915814678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280530 (A004902 (n + 1)).toNat

end

end A281280.P17859853275915814678

/-! ## A281280.P4185631063268032676

`A280530(A004913(n+1))`
-/

namespace A281280.P4185631063268032676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280530 (A004913 (n + 1)).toNat

end

end A281280.P4185631063268032676

/-!
# A281281: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 350", based on the 5-celled von Neumann neighborhood.

The programs for A281281, there is no canonical definition to state claims against.
-/

/-! ## A281281.P16080405907083267202

`A007088(A281283(n))`
-/

namespace A281281.P16080405907083267202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281283 n).toNat

end

end A281281.P16080405907083267202

/-! ## A281281.P11598762862115416936

`A007088(A000225(n+2)-A282956(n+1))`
-/

namespace A281281.P11598762862115416936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A282956 (n + 1)).toNat

end

end A281281.P11598762862115416936

/-! ## A281281.P10804488613052717732

`A007088(A000203(2^(n+1))-A282956(n+1))`
-/

namespace A281281.P10804488613052717732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000203 (2 ^ (n + 1)) - A282956 (n + 1)).toNat

end

end A281281.P10804488613052717732

/-! ## A281281.P682912260831328041

`A256078(A282956(n+1))`
-/

namespace A281281.P682912260831328041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A282956 (n + 1)).toNat

end

end A281281.P682912260831328041

/-! ## A281281.P14965044618328949776

`A185544(2*A281283(n))`
-/

namespace A281281.P14965044618328949776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281283 n).toNat

end

end A281281.P14965044618328949776

/-!
# A281282: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 350", based on the 5-celled von Neumann neighborhood.

The programs for A281282, there is no canonical definition to state claims against.
-/

/-! ## A281282.P13473682016957855539

`A007088(A281284(n))`
-/

namespace A281282.P13473682016957855539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281284 n).toNat

end

end A281282.P13473682016957855539

/-! ## A281282.P7186720496821123380

`A185544(2*A281284(n))`
-/

namespace A281282.P7186720496821123380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281284 n).toNat

end

end A281282.P7186720496821123380

/-! ## A281282.P12142985323768456747

`A185544(lcm(2, A281284(n)))`
-/

namespace A281282.P12142985323768456747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A281284 n))

end

end A281282.P12142985323768456747

/-! ## A281282.P1626917326011576010

`A305989(A281283(n))`
-/

namespace A281282.P1626917326011576010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A281283 n).toNat

end

end A281282.P1626917326011576010

/-! ## A281282.P789966705123578273

`A305989(A000225(n+2)-A282956(n+1))`
-/

namespace A281282.P789966705123578273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A000225 (n + 2) - A282956 (n + 1)).toNat

end

end A281282.P789966705123578273

/-!
# A281283: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 350", based on the 5-celled von Neumann neighborhood.

The programs for A281283, there is no canonical definition to state claims against.
-/

/-! ## A281283.P4236322313759215919

`A000225(n+2)-A282956(n+1)`
-/

namespace A281283.P4236322313759215919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A282956 (n + 1)

end

end A281283.P4236322313759215919

/-! ## A281283.P14962692307283226569

`∑[A000079(n+1)-Δ[A282956(n)]]`
-/

namespace A281283.P14962692307283226569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282956 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281283.P14962692307283226569

/-! ## A281283.P15272709503675998370

`A000225(A065475(n+1))%A282956(n+1)`
-/

namespace A281283.P15272709503675998370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A065475 (n + 1)).toNat) (A282956 (n + 1))

end

end A281283.P15272709503675998370

/-! ## A281283.P604210937848168787

`A000225(A028310(n)+2)%A282956(n+1)`
-/

namespace A281283.P604210937848168787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A028310 n + 2).toNat) (A282956 (n + 1))

end

end A281283.P604210937848168787

/-! ## A281283.P3475717417313016195

`A000225(A078898(2*(n+2)))%A282956(n+1)`
-/

namespace A281283.P3475717417313016195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A078898 (2 * (n + 2))).toNat) (A282956 (n + 1))

end

end A281283.P3475717417313016195

/-!
# A281284: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 350", based on the 5-celled von Neumann neighborhood.

The programs for A281284, there is no canonical definition to state claims against.
-/

/-! ## A281284.P8649915802708572012

`A325401(lcm(2, A281283(n)))`
-/

namespace A281284.P8649915802708572012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A281283 n))

end

end A281284.P8649915802708572012

/-! ## A281284.P3895371564759350221

`A325401(A177704(n)*A281283(n))`
-/

namespace A281284.P3895371564759350221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A177704 n * A281283 n).toNat

end

end A281284.P3895371564759350221

/-! ## A281284.P13128221581115568662

`A325401(A281283(n)*A318191(n))`
-/

namespace A281284.P13128221581115568662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A281283 n * A318191 n).toNat

end

end A281284.P13128221581115568662

/-! ## A281284.P2625037517562844205

`A325401(A160467(n+1)*A281283(n))`
-/

namespace A281284.P2625037517562844205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A160467 (n + 1) * A281283 n).toNat

end

end A281284.P2625037517562844205

/-! ## A281284.P17142353790167509668

`A325401(A275215(n+1)*A281283(n))`
-/

namespace A281284.P17142353790167509668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A275215 (n + 1) * A281283 n).toNat

end

end A281284.P17142353790167509668

/-!
# A281290: Primes p where the difference between the largest digit of p and sum of all other digits equals 4.

The programs for A281290, there is no canonical definition to state claims against.
-/

/-! ## A281290.P7318172672753712851

`A130570(A292576(A086341(n+3)+2*n))`
-/

namespace A281290.P7318172672753712851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130570 (A292576 (A086341 (n + 3) + (2 * n : ℤ)).toNat).toNat

end

end A281290.P7318172672753712851

/-! ## A281290.P2144408686660645537

`A280915(∩[A191918(n+1), A309739(n+1)])`
-/

namespace A281290.P2144408686660645537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309739 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280915 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A281290.P2144408686660645537

/-!
# A281291: Numbers k such that 2*k! is not a refactorable number.

The programs for A281291, there is no canonical definition to state claims against.
-/

/-! ## A281291.P5620391363304313642

`2^a(n-2)` with `a(0)=2, a(1)=4, a(2)=8`
-/

namespace A281291.P5620391363304313642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 8] fun n a =>
  2 ^ a (n - 2)

end

end A281291.P5620391363304313642

/-!
# A281292: Squarefree numbers that are the sum of two squares in exactly one way.

The programs for A281292, the canonical program `A281292.P10672042603538441158` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281292 has offset 1).

The definition of A281292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281292.P10672042603538441158

`∪[2*A280084(n+1), A280084(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A281292

/-- `∪[2*A280084(n+1), A280084(n+1)]` -/
def P10672042603538441158.Spec : Prop :=
  ∀ n, (P10672042603538441158.a n : ℤ) = A281292 (n + 1)

theorem P10672042603538441158.correct : P10672042603538441158.Spec := by
  intro n
  simp only [A281292, Nat.add_sub_cancel]

end A281292

/-! ## A281292.P5709814278363276593

`record[∏{p}[A143575(n+1), #]]`
-/

namespace A281292.P5709814278363276593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281292.P5709814278363276593

namespace A281292

/-- `record[∏{p}[A143575(n+1), #]]` -/
def P5709814278363276593.Spec : Prop :=
  ∀ n, (P5709814278363276593.a n : ℤ) = A281292 (n + 1)

end A281292

/-! ## A281292.P9870076793837667190

`record[∏{p}[A125022(n+1), #]]`
-/

namespace A281292.P9870076793837667190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281292.P9870076793837667190

namespace A281292

/-- `record[∏{p}[A125022(n+1), #]]` -/
def P9870076793837667190.Spec : Prop :=
  ∀ n, (P9870076793837667190.a n : ℤ) = A281292 (n + 1)

end A281292

/-! ## A281292.P12666192916504590190

`filter[A125022(n+2), A008966(#)]`
-/

namespace A281292.P12666192916504590190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A281292.P12666192916504590190

namespace A281292

/-- `filter[A125022(n+2), A008966(#)]` -/
def P12666192916504590190.Spec : Prop :=
  ∀ n, P12666192916504590190.a n = A281292 (n + 1)

end A281292

/-! ## A281292.P16739575476553436513

`filter[A125022(n+2), A359377(#)]`
-/

namespace A281292.P16739575476553436513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A281292.P16739575476553436513

namespace A281292

/-- `filter[A125022(n+2), A359377(#)]` -/
def P16739575476553436513.Spec : Prop :=
  ∀ n, P16739575476553436513.a n = A281292 (n + 1)

end A281292

/-! ## A281292.P13051065356767066512

`∩[A005117(n+1), A125022(n+1)]`
-/

namespace A281292.P13051065356767066512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281292.P13051065356767066512

namespace A281292

/-- `∩[A005117(n+1), A125022(n+1)]` -/
def P13051065356767066512.Spec : Prop :=
  ∀ n, (P13051065356767066512.a n : ℤ) = A281292 (n + 1)

end A281292

/-! ## A281292.P9960207285499341469

`filter[A020893(n+1), A354923(#)]`
-/

namespace A281292.P9960207285499341469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A281292.P9960207285499341469

namespace A281292

/-- `filter[A020893(n+1), A354923(#)]` -/
def P9960207285499341469.Spec : Prop :=
  ∀ n, P9960207285499341469.a n = A281292 (n + 1)

end A281292

/-! ## A281292.P15486484117496088669

`filter[A020893(n+1), A354924(#)]`
-/

namespace A281292.P15486484117496088669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A281292.P15486484117496088669

namespace A281292

/-- `filter[A020893(n+1), A354924(#)]` -/
def P15486484117496088669.Spec : Prop :=
  ∀ n, P15486484117496088669.a n = A281292 (n + 1)

end A281292

/-! ## A281292.P14539416399965422511

`filter[A020893(n+1), A365716(#)]`
-/

namespace A281292.P14539416399965422511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A281292.P14539416399965422511

namespace A281292

/-- `filter[A020893(n+1), A365716(#)]` -/
def P14539416399965422511.Spec : Prop :=
  ∀ n, P14539416399965422511.a n = A281292 (n + 1)

end A281292

/-! ## A281292.P12588867599063214989

`∩[A020893(n+1), A125022(n+1)]`
-/

namespace A281292.P12588867599063214989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281292.P12588867599063214989

namespace A281292

/-- `∩[A020893(n+1), A125022(n+1)]` -/
def P12588867599063214989.Spec : Prop :=
  ∀ n, (P12588867599063214989.a n : ℤ) = A281292 (n + 1)

end A281292

/-! ## A281292.P9217892100837132584

`∩[A020893(n+1), A235050(n+1)]`
-/

namespace A281292.P9217892100837132584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281292.P9217892100837132584

namespace A281292

/-- `∩[A020893(n+1), A235050(n+1)]` -/
def P9217892100837132584.Spec : Prop :=
  ∀ n, (P9217892100837132584.a n : ℤ) = A281292 (n + 1)

end A281292

/-! ## A281292.P18156140886308985475

`filter[A008784(n+1), A365716(#)]`
-/

namespace A281292.P18156140886308985475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A281292.P18156140886308985475

namespace A281292

/-- `filter[A008784(n+1), A365716(#)]` -/
def P18156140886308985475.Spec : Prop :=
  ∀ n, P18156140886308985475.a n = A281292 (n + 1)

end A281292

/-! ## A281292.P15980308631686267225

`∩[A008784(n+1), A125022(n+1)]`
-/

namespace A281292.P15980308631686267225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281292.P15980308631686267225

namespace A281292

/-- `∩[A008784(n+1), A125022(n+1)]` -/
def P15980308631686267225.Spec : Prop :=
  ∀ n, (P15980308631686267225.a n : ℤ) = A281292 (n + 1)

end A281292

/-! ## A281292.P15874819890763908192

`∩[A008784(n+1), A235050(n+1)]`
-/

namespace A281292.P15874819890763908192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281292.P15874819890763908192

namespace A281292

/-- `∩[A008784(n+1), A235050(n+1)]` -/
def P15874819890763908192.Spec : Prop :=
  ∀ n, (P15874819890763908192.a n : ℤ) = A281292 (n + 1)

end A281292

/-! ## A281292.P14638258109885838168

`filter[A008784(n+1), A340371(#)]`
-/

namespace A281292.P14638258109885838168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A281292.P14638258109885838168

namespace A281292

/-- `filter[A008784(n+1), A340371(#)]` -/
def P14638258109885838168.Spec : Prop :=
  ∀ n, P14638258109885838168.a n = A281292 (n + 1)

end A281292

/-! ## A281292.P6944120574990318588

`filter[A020893(n+1), A340363(#)]`
-/

namespace A281292.P6944120574990318588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A281292.P6944120574990318588

namespace A281292

/-- `filter[A020893(n+1), A340363(#)]` -/
def P6944120574990318588.Spec : Prop :=
  ∀ n, P6944120574990318588.a n = A281292 (n + 1)

end A281292

/-! ## A281292.P16361228438561226592

`filter[A020893(n+1), A340371(#)]`
-/

namespace A281292.P16361228438561226592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A281292.P16361228438561226592

namespace A281292

/-- `filter[A020893(n+1), A340371(#)]` -/
def P16361228438561226592.Spec : Prop :=
  ∀ n, P16361228438561226592.a n = A281292 (n + 1)

end A281292

/-! ## A281292.P18024021180655790365

`filter[A020893(n+1), A340372(#)]`
-/

namespace A281292.P18024021180655790365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A281292.P18024021180655790365

namespace A281292

/-- `filter[A020893(n+1), A340372(#)]` -/
def P18024021180655790365.Spec : Prop :=
  ∀ n, P18024021180655790365.a n = A281292 (n + 1)

end A281292

/-! ## A281292.P12512269654698056020

`filter[A235050(n+1), A229062(#)]`
-/

namespace A281292.P12512269654698056020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A281292.P12512269654698056020

namespace A281292

/-- `filter[A235050(n+1), A229062(#)]` -/
def P12512269654698056020.Spec : Prop :=
  ∀ n, P12512269654698056020.a n = A281292 (n + 1)

end A281292

/-! ## A281292.P8366082845512296087

`filter[A125022(n+2), A323154(#)]`
-/

namespace A281292.P8366082845512296087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A281292.P8366082845512296087

namespace A281292

/-- `filter[A125022(n+2), A323154(#)]` -/
def P8366082845512296087.Spec : Prop :=
  ∀ n, P8366082845512296087.a n = A281292 (n + 1)

end A281292

/-!
# A281293: Triangular array of generalized Narayana Numbers T(n,k) = 3*binomial(n+1,k)* binomial(n-3,k-1)/(n+1) for n >= 2 and 0 <= k <= n-2, read by rows.

The programs for A281293, there is no canonical definition to state claims against.
-/

/-! ## A281293.P11719317084021958237

`A086810(n)*A110569(A138960(n+1))`
-/

namespace A281293.P11719317084021958237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n * A110569 (A138960 (n + 1)).toNat

end

end A281293.P11719317084021958237

/-! ## A281293.P17771924319419593349

`or(A001222(A022186(n)), A194485(n+1))`
-/

namespace A281293.P17771924319419593349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A022186 n).toNat) (A194485 (n + 1))

end

end A281293.P17771924319419593349

/-! ## A281293.P15630308237486392616

`or(A001222(A022186(n)), A194492(n+1))`
-/

namespace A281293.P15630308237486392616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A022186 n).toNat) (A194492 (n + 1))

end

end A281293.P15630308237486392616

/-!
# A281295: Primes which cannot be written as x^2 + 11*y^2, where x, y > 0.

The programs for A281295, there is no canonical definition to state claims against.
-/

/-! ## A281295.P13927263739883096612

`record[A000040(n+1)%A106302(n+1)]`
-/

namespace A281295.P13927263739883096612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A106302 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281295.P13927263739883096612

/-! ## A281295.P4679559902360572938

`eq[A003415(n), A152189(A033723(n))]`
-/

namespace A281295.P4679559902360572938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152189 (A033723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281295.P4679559902360572938

/-! ## A281295.P1491961201660793523

`eq[A032741(n), A213091(A033723(n))]`
-/

namespace A281295.P1491961201660793523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213091 (A033723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281295.P1491961201660793523

/-! ## A281295.P1921497899928360123

`record[A216883(n+1)%A046737(A216883(n+1))]`
-/

namespace A281295.P1921497899928360123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216883 (n + 1)) (A046737 (A216883 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281295.P1921497899928360123

/-!
# A281296: Numbers k such that (68*10^k + 1)/3 is prime.

The programs for A281296, there is no canonical definition to state claims against.
-/

/-! ## A281296.P3963944894369407319

`eq[C(A308451(n+2), 2), A308451(n+2)]`
-/

namespace A281296.P3963944894369407319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A308451 (n + 2)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308451 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281296.P3963944894369407319

/-! ## A281296.P2300370020959204561

`record[A087207(3*n+4)%A174231(3*n+1)]`
-/

namespace A281296.P2300370020959204561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087207 (3 * n + 4)) (A174231 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281296.P2300370020959204561

/-! ## A281296.P8091295732165514051

`eq[A122923(n), A281773(A284556(n))]`
-/

namespace A281296.P8091295732165514051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281773 (A284556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281296.P8091295732165514051

/-! ## A281296.P5080958981522554090

`eq[A046926(A056761(n+1)), A109606(n+1)]`
-/

namespace A281296.P5080958981522554090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A056761 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281296.P5080958981522554090

/-!
# A281298: a(n) is the n-th decimal digit from the right in n^n.

The programs for A281298, the canonical program `A281298.P11648243705684211318` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281298 has offset 1).

The definition of A281298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281298.P11648243705684211318

`floor(A086756(n+1)/A000533(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A281298

/-- `floor(A086756(n+1)/A000533(n))` -/
def P11648243705684211318.Spec : Prop :=
  ∀ n, P11648243705684211318.a n = A281298 (n + 1)

theorem P11648243705684211318.correct : P11648243705684211318.Spec := by
  intro n
  simp only [A281298, Nat.add_sub_cancel]

end A281298

/-! ## A281298.P9660020880090707003

`floor(A086756(n+1)/A011557(n))`
-/

namespace A281298.P9660020880090707003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086756 (n + 1) : ℚ) / (A011557 n : ℚ)⌋

end

end A281298.P9660020880090707003

namespace A281298

/-- `floor(A086756(n+1)/A011557(n))` -/
def P9660020880090707003.Spec : Prop :=
  ∀ n, P9660020880090707003.a n = A281298 (n + 1)

end A281298

/-! ## A281298.P2969355197085965540

`floor(A086756(n+1)/A024119(n))`
-/

namespace A281298.P2969355197085965540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086756 (n + 1) : ℚ) / (A024119 n : ℚ)⌋

end

end A281298.P2969355197085965540

namespace A281298

/-- `floor(A086756(n+1)/A024119(n))` -/
def P2969355197085965540.Spec : Prop :=
  ∀ n, P2969355197085965540.a n = A281298 (n + 1)

end A281298

/-! ## A281298.P14572548375565767455

`floor(A086756(n+1)/A004663(2*n))`
-/

namespace A281298.P14572548375565767455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086756 (n + 1) : ℚ) / (A004663 (2 * n) : ℚ)⌋

end

end A281298.P14572548375565767455

namespace A281298

/-- `floor(A086756(n+1)/A004663(2*n))` -/
def P14572548375565767455.Spec : Prop :=
  ∀ n, P14572548375565767455.a n = A281298 (n + 1)

end A281298

