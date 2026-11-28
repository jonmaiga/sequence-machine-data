import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A206000: Inverse Euler transform of 2 - A195981.

The programs for A206000, there is no canonical definition to state claims against.
-/

/-! ## A206000.P15778080578490920759

`A008617(A026150(n)-A244121(n))`
-/

namespace A206000.P15778080578490920759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A026150 n - A244121 n).toNat

end

end A206000.P15778080578490920759

/-! ## A206000.P13054569597668479445

`A008618(A216616(n+2)+A008651(n))`
-/

namespace A206000.P13054569597668479445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A216616 (n + 2) + A008651 n).toNat

end

end A206000.P13054569597668479445

/-!
# A206002: Number of (n+1) X (n+1) 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one, and every 2 X 2 determinant nonzero.

The programs for A206002, there is no canonical definition to state claims against.
-/

/-! ## A206002.P7822892863556026615

`A206010(∑[4*n]+1)`
-/

namespace A206002.P7822892863556026615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206002.P7822892863556026615

/-! ## A206002.P8920208978736850556

`record[root(A206010(n+1), A143182(n))]`
-/

namespace A206002.P8920208978736850556
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206010 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206002.P8920208978736850556

/-! ## A206002.P7187709806032573027

`record[gcd(A049581(n), A206010(n+1))]`
-/

namespace A206002.P7187709806032573027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A206010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206002.P7187709806032573027

/-!
# A206003: Number of (n+1) X 2 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one, and every 2 X 2 determinant nonzero.

The programs for A206003, the canonical program `A206003.P10202196685214396585` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206003 has offset 1).

The definition of A206003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206003.P1978990749825306181

`ogf((24+78x+36x^2+2x^3)/(1-8x^2-4x^3))`
-/

namespace A206003.P1978990749825306181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [24, 78, 36, 2] [1, 0, -8, -4] n

end

end A206003.P1978990749825306181

namespace A206003

/-- `ogf((24+78x+36x^2+2x^3)/(1-8x^2-4x^3))` -/
def P1978990749825306181.Spec : Prop :=
  ∀ n, P1978990749825306181.a n = A206003 (n + 1)

end A206003

/-! ## A206003.P10202196685214396585

`8*a(n-2)+4*a(n-3)` with `a(0)=24, a(1)=78, a(2)=228, a(3)=722`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206003

/-- `8*a(n-2)+4*a(n-3)` -/
def P10202196685214396585.Spec : Prop :=
  ∀ n, (P10202196685214396585.a n : ℤ) = A206003 (n + 1)

theorem P10202196685214396585.correct : P10202196685214396585.Spec := by
  intro n
  simp only [A206003, Nat.add_sub_cancel]

end A206003

/-! ## A206003.P6534029160628976339

`A206121(n+1)-A205991(n+1)`
-/

namespace A206003.P6534029160628976339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206121 (n + 1) - A205991 (n + 1)

end

end A206003.P6534029160628976339

namespace A206003

/-- `A206121(n+1)-A205991(n+1)` -/
def P6534029160628976339.Spec : Prop :=
  ∀ n, P6534029160628976339.a n = A206003 (n + 1)

theorem P6534029160628976339.correct : P6534029160628976339.Spec := by
  intro n
  simp only [A206003, Nat.add_sub_cancel, A206003.P6534029160628976339.a, A206003.P10202196685214396585.a, A205991, A205991.P16586373180839732019.a, A206121, A206121.P2348071454579118727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A206003

/-! ## A206003.P16987949755650298807

`A206121(C(n+1, n))%A205991(n+1)`
-/

namespace A206003.P16987949755650298807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206121 (Nat.choose (n + 1) n)) (A205991 (n + 1))

end

end A206003.P16987949755650298807

namespace A206003

/-- `A206121(C(n+1, n))%A205991(n+1)` -/
def P16987949755650298807.Spec : Prop :=
  ∀ n, P16987949755650298807.a n = A206003 (n + 1)

end A206003

/-! ## A206003.P15730545453081584171

`A206121(A000027(n+1))%A205991(n+1)`
-/

namespace A206003.P15730545453081584171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206121 (A000027 (n + 1)).toNat) (A205991 (n + 1))

end

end A206003.P15730545453081584171

namespace A206003

/-- `A206121(A000027(n+1))%A205991(n+1)` -/
def P15730545453081584171.Spec : Prop :=
  ∀ n, P15730545453081584171.a n = A206003 (n + 1)

end A206003

/-! ## A206003.P4476648882382055249

`A206121(n+1)%or(A000038(n), A205991(n+1))`
-/

namespace A206003.P4476648882382055249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206121 (n + 1)) (Int.lor (A000038 n) (A205991 (n + 1)))

end

end A206003.P4476648882382055249

namespace A206003

/-- `A206121(n+1)%or(A000038(n), A205991(n+1))` -/
def P4476648882382055249.Spec : Prop :=
  ∀ n, P4476648882382055249.a n = A206003 (n + 1)

end A206003

/-!
# A206004: Number of (n+1) X 3 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one, and every 2 X 2 determinant nonzero.

The programs for A206004, the canonical program `A206004.P9977212888652984235` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206004 has offset 1).

The definition of A206004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206004.P9977212888652984235

`ogf((78+144x-634x^2-828x^3-96x^4+586x^5+2x^6-96x^7+26x^8)/(1-2x-13x^2+17x^3+34x^4+9x^5-23x^6-x^7+4x^8-x^9))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206004

/-- `ogf((78+144x-634x^2-828x^3-96x^4+586x^5+2x^6-96x^7+26x^8)/(1-2x-13x^2+17x^3+34x^4+9x^5-23x^6-x^7+4x^8-x^9))` -/
def P9977212888652984235.Spec : Prop :=
  ∀ n, P9977212888652984235.a n = A206004 (n + 1)

theorem P9977212888652984235.correct : P9977212888652984235.Spec := by
  intro n
  simp only [A206004, Nat.add_sub_cancel]

end A206004

/-! ## A206004.P2700765631875889307

`A206122(n+1)-A205992(n+1)`
-/

namespace A206004.P2700765631875889307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206122 (n + 1) - A205992 (n + 1)

end

end A206004.P2700765631875889307

namespace A206004

/-- `A206122(n+1)-A205992(n+1)` -/
def P2700765631875889307.Spec : Prop :=
  ∀ n, P2700765631875889307.a n = A206004 (n + 1)

end A206004

/-! ## A206004.P15254597264299487822

`A206010(∑[n+1]+2)`
-/

namespace A206004.P15254597264299487822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206004.P15254597264299487822

namespace A206004

/-- `A206010(∑[n+1]+2)` -/
def P15254597264299487822.Spec : Prop :=
  ∀ n, P15254597264299487822.a n = A206004 (n + 1)

end A206004

/-! ## A206004.P16867456467991995800

`record[A206010(A133263(abs(1-n)))]`
-/

namespace A206004.P16867456467991995800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206004.P16867456467991995800

namespace A206004

/-- `record[A206010(A133263(abs(1-n)))]` -/
def P16867456467991995800.Spec : Prop :=
  ∀ n, P16867456467991995800.a n = A206004 (n + 1)

end A206004

/-! ## A206004.P11182392544954240608

`A206122(n+1)-A205998(∑[n+1]+2)`
-/

namespace A206004.P11182392544954240608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206122 (n + 1) - A205998 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206004.P11182392544954240608

namespace A206004

/-- `A206122(n+1)-A205998(∑[n+1]+2)` -/
def P11182392544954240608.Spec : Prop :=
  ∀ n, P11182392544954240608.a n = A206004 (n + 1)

end A206004

/-!
# A206005: Number of (n+1)X4 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A206005, there is no canonical definition to state claims against.
-/

/-! ## A206005.P7595279790608191603

`A206123(n+1)-A205993(n+1)`
-/

namespace A206005.P7595279790608191603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206123 (n + 1) - A205993 (n + 1)

end

end A206005.P7595279790608191603

/-! ## A206005.P8679693908624981484

`A206123(A000027(n+1))%A205993(n+1)`
-/

namespace A206005.P8679693908624981484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206123 (A000027 (n + 1)).toNat) (A205993 (n + 1))

end

end A206005.P8679693908624981484

/-! ## A206005.P7769173877867905670

`A206010(∑[n+2]+4)`
-/

namespace A206005.P7769173877867905670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206005.P7769173877867905670

/-!
# A206006: Number of (n+1) X 5 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one, and every 2 X 2 determinant nonzero.

The programs for A206006, there is no canonical definition to state claims against.
-/

/-! ## A206006.P10991254233981637938

`A206010(A374004(n+1))`
-/

namespace A206006.P10991254233981637938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A374004 (n + 1)).toNat

end

end A206006.P10991254233981637938

/-! ## A206006.P17827792827139441441

`A206010(A141214(n+1))`
-/

namespace A206006.P17827792827139441441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A141214 (n + 1)).toNat

end

end A206006.P17827792827139441441

/-!
# A206007: Number of (n+1)X6 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A206007, there is no canonical definition to state claims against.
-/

/-! ## A206007.P5723975437014022352

`A206125(n+1)-A205995(n+1)`
-/

namespace A206007.P5723975437014022352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206125 (n + 1) - A205995 (n + 1)

end

end A206007.P5723975437014022352

/-! ## A206007.P11456670789738420635

`A206010(A374005(n+1))`
-/

namespace A206007.P11456670789738420635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A374005 (n + 1)).toNat

end

end A206007.P11456670789738420635

/-!
# A206008: Number of (n+1)X7 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A206008, there is no canonical definition to state claims against.
-/

/-! ## A206008.P3817373488014321461

`A206010(A374007(n+1))`
-/

namespace A206008.P3817373488014321461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A374007 (n + 1)).toNat

end

end A206008.P3817373488014321461

/-!
# A206009: Number of (n+1)X8 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A206009, there is no canonical definition to state claims against.
-/

/-! ## A206009.P17066710787343199168

`A206010(A374008(n+1))`
-/

namespace A206009.P17066710787343199168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A374008 (n + 1)).toNat

end

end A206009.P17066710787343199168

/-!
# A206010: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A206010, there is no canonical definition to state claims against.
-/

/-! ## A206010.P10445181326920163799

`A206128(n+1)-A205998(n+1)`
-/

namespace A206010.P10445181326920163799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (n + 1) - A205998 (n + 1)

end

end A206010.P10445181326920163799

/-! ## A206010.P13288893072340048156

`A206128(1+n)%A205998(n+1)`
-/

namespace A206010.P13288893072340048156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206128 (1 + n)) (A205998 (n + 1))

end

end A206010.P13288893072340048156

/-!
# A206011: The n-th semiprime minus its sum of digits.

The programs for A206011, the canonical program `A206011.P2170435228936468391` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206011 has offset 1).

The definition of A206011 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206011.P2170435228936468391

`A001358(n+1)-A007953(A001358(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A206011

/-- `A001358(n+1)-A007953(A001358(n+1))` -/
def P2170435228936468391.Spec : Prop :=
  ∀ n, P2170435228936468391.a n = A206011 (n + 1)

theorem P2170435228936468391.correct : P2170435228936468391.Spec := by
  intro n
  simp only [A206011, Nat.add_sub_cancel]

end A206011

/-! ## A206011.P9383123836717078949

`A001358(n+1)-A175013(n+1)`
-/

namespace A206011.P9383123836717078949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - A175013 (n + 1)

end

end A206011.P9383123836717078949

namespace A206011

/-- `A001358(n+1)-A175013(n+1)` -/
def P9383123836717078949.Spec : Prop :=
  ∀ n, P9383123836717078949.a n = A206011 (n + 1)

end A206011

/-! ## A206011.P10806914436782049430

`A066568(A001358(1+n))`
-/

namespace A206011.P10806914436782049430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A001358 (1 + n)).toNat

end

end A206011.P10806914436782049430

namespace A206011

/-- `A066568(A001358(1+n))` -/
def P10806914436782049430.Spec : Prop :=
  ∀ n, P10806914436782049430.a n = A206011 (n + 1)

end A206011

/-!
# A206013: Number of (n+1) X (n+1) 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206013, there is no canonical definition to state claims against.
-/

/-! ## A206013.P8467026886363493382

`A206021(∑[4*n]+1)`
-/

namespace A206013.P8467026886363493382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206013.P8467026886363493382

/-!
# A206014: Number of (n+1) X 2 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206014, the canonical program `A206014.P16381730356713681256` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206014 has offset 1).

The definition of A206014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206014.P9172422803811301936

`ogf((104+160x)/(1-5x-10x^2))`
-/

namespace A206014.P9172422803811301936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [104, 160] [1, -5, -10] n

end

end A206014.P9172422803811301936

namespace A206014

/-- `ogf((104+160x)/(1-5x-10x^2))` -/
def P9172422803811301936.Spec : Prop :=
  ∀ n, P9172422803811301936.a n = A206014 (n + 1)

end A206014

/-! ## A206014.P16381730356713681256

`5*a(n-1)+10*a(n-2)` with `a(0)=104, a(1)=680`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206014

/-- `5*a(n-1)+10*a(n-2)` -/
def P16381730356713681256.Spec : Prop :=
  ∀ n, (P16381730356713681256.a n : ℤ) = A206014 (n + 1)

theorem P16381730356713681256.correct : P16381730356713681256.Spec := by
  intro n
  simp only [A206014, Nat.add_sub_cancel]

end A206014

/-! ## A206014.P3718832464566653261

`A206021(∑[n]+1)`
-/

namespace A206014.P3718832464566653261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206014.P3718832464566653261

namespace A206014

/-- `A206021(∑[n]+1)` -/
def P3718832464566653261.Spec : Prop :=
  ∀ n, P3718832464566653261.a n = A206014 (n + 1)

end A206014

/-! ## A206014.P3412221067275267154

`record[A206021(n+1)/A022167(n)]`
-/

namespace A206014.P3412221067275267154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206021 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206014.P3412221067275267154

namespace A206014

/-- `record[A206021(n+1)/A022167(n)]` -/
def P3412221067275267154.Spec : Prop :=
  ∀ n, P3412221067275267154.a n = (A206014 (n + 1) : ℚ)

end A206014

/-!
# A206015: Number of (n+1) X 3 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206015, there is no canonical definition to state claims against.
-/

/-! ## A206015.P7210577598387834875

`A206021(∑[n+1]+2)`
-/

namespace A206015.P7210577598387834875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206015.P7210577598387834875

/-! ## A206015.P15645286333475551042

`record[root(A206021(n+2), A013613(n))]`
-/

namespace A206015.P15645286333475551042
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206021 (n + 2) : ℝ) ^ (1 / (A013613 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206015.P15645286333475551042

/-!
# A206016: Number of (n+1) X 4 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206016, there is no canonical definition to state claims against.
-/

/-! ## A206016.P4125588069814101234

`A206021(∑[n+2]+4)`
-/

namespace A206016.P4125588069814101234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206016.P4125588069814101234

/-!
# A206017: Number of (n+1) X 5 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206017, there is no canonical definition to state claims against.
-/

/-! ## A206017.P12698234834143486235

`A206021(A374004(n+1))`
-/

namespace A206017.P12698234834143486235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A374004 (n + 1)).toNat

end

end A206017.P12698234834143486235

/-! ## A206017.P4862374768157947690

`A206021(A141214(n+1))`
-/

namespace A206017.P4862374768157947690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A141214 (n + 1)).toNat

end

end A206017.P4862374768157947690

/-!
# A206018: Number of (n+1) X 6 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206018, there is no canonical definition to state claims against.
-/

/-! ## A206018.P18245911779091051058

`A206021(A374005(n+1))`
-/

namespace A206018.P18245911779091051058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A374005 (n + 1)).toNat

end

end A206018.P18245911779091051058

/-! ## A206018.P13431928847231306689

`A206021(Δ[A264443(n)])`
-/

namespace A206018.P13431928847231306689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (f1 (n + 1) - f1 n).toNat

end

end A206018.P13431928847231306689

/-!
# A206019: Number of (n+1) X 7 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206019, there is no canonical definition to state claims against.
-/

/-! ## A206019.P10534546462363044855

`A206021(A374007(n+1))`
-/

namespace A206019.P10534546462363044855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (A374007 (n + 1)).toNat

end

end A206019.P10534546462363044855

/-!
# A206020: Number of (n+1) X 8 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock unequal to the number of counterclockwise edge increases.

The programs for A206020, there is no canonical definition to state claims against.
-/

/-! ## A206020.P9304109193591777399

`A206021(eq[8, A131818(n+1)])`
-/

namespace A206020.P9304109193591777399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206020.P9304109193591777399

/-! ## A206020.P6410282664850628229

`A206021(eq[4, A219347(n)])`
-/

namespace A206020.P6410282664850628229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206020.P6410282664850628229

/-!
# A206022: Riordan array (1, x*exp(arcsinh(-2*x))).

The programs for A206022, there is no canonical definition to state claims against.
-/

/-! ## A206022.P9902358340328264972

`A104558(n)%(A068952(n+1)-3)`
-/

namespace A206022.P9902358340328264972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104558 n) (A068952 (n + 1) - 3)

end

end A206022.P9902358340328264972

/-! ## A206022.P15032909406301101355

`A109970(n)+A010051(A111962(n))`
-/

namespace A206022.P15032909406301101355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109970 n + A010051 (A111962 n).toNat

end

end A206022.P15032909406301101355

/-! ## A206022.P17124535592317203029

`A104558(n)+A000007(A187306(n))`
-/

namespace A206022.P17124535592317203029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104558 n + A000007 (A187306 n).toNat

end

end A206022.P17124535592317203029

/-! ## A206022.P3780275737446349582

`A104558(n)+A036987(A206371(n))`
-/

namespace A206022.P3780275737446349582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104558 n + A036987 (A206371 n).toNat

end

end A206022.P3780275737446349582

/-! ## A206022.P4182003499021107164

`A104558(n)+A010051(A303307(n))`
-/

namespace A206022.P4182003499021107164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104558 n + A010051 (A303307 n).toNat

end

end A206022.P4182003499021107164

/-!
# A206023: 2^n == 3n+2 (mod n^2-2n).

The programs for A206023, the canonical program `A206023.P1386977352654447418` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206023 has offset 1).

The definition of A206023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206023.P1386977352654447418

`∩[A015919(n+1)+2, A015919(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A206023

/-- `∩[A015919(n+1)+2, A015919(n+1)]` -/
def P1386977352654447418.Spec : Prop :=
  ∀ n, (P1386977352654447418.a n : ℤ) = A206023 (n + 1)

theorem P1386977352654447418.correct : P1386977352654447418.Spec := by
  intro n
  simp only [A206023, Nat.add_sub_cancel]

end A206023

/-! ## A206023.P13564447626729051333

`∩[A176997(n+1)+2, A176997(n+1)]`
-/

namespace A206023.P13564447626729051333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206023.P13564447626729051333

namespace A206023

/-- `∩[A176997(n+1)+2, A176997(n+1)]` -/
def P13564447626729051333.Spec : Prop :=
  ∀ n, (P13564447626729051333.a n : ℤ) = A206023 (n + 1)

end A206023

/-! ## A206023.P468906035949789267

`record[A176997(n+2)%(A176997(n+1)+4)]`
-/

namespace A206023.P468906035949789267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176997 (n + 2)) (A176997 (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206023.P468906035949789267

namespace A206023

/-- `record[A176997(n+2)%(A176997(n+1)+4)]` -/
def P468906035949789267.Spec : Prop :=
  ∀ n, P468906035949789267.a n = A206023 (n + 1)

end A206023

/-! ## A206023.P2684765311503813754

`record[A214606(A015919(n+1)+2)]`
-/

namespace A206023.P2684765311503813754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (A015919 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206023.P2684765311503813754

namespace A206023

/-- `record[A214606(A015919(n+1)+2)]` -/
def P2684765311503813754.Spec : Prop :=
  ∀ n, P2684765311503813754.a n = A206023 (n + 1)

end A206023

/-! ## A206023.P6888543217375504209

`record[A214606(A176176(n+1)+2)]`
-/

namespace A206023.P6888543217375504209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (A176176 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206023.P6888543217375504209

namespace A206023

/-- `record[A214606(A176176(n+1)+2)]` -/
def P6888543217375504209.Spec : Prop :=
  ∀ n, P6888543217375504209.a n = A206023 (n + 1)

end A206023

/-! ## A206023.P15654167246047761913

`record[A214606(A176997(n+1)+2)]`
-/

namespace A206023.P15654167246047761913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (A176997 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206023.P15654167246047761913

namespace A206023

/-- `record[A214606(A176997(n+1)+2)]` -/
def P15654167246047761913.Spec : Prop :=
  ∀ n, P15654167246047761913.a n = A206023 (n + 1)

end A206023

/-! ## A206023.P2901635871132553407

`record[A214606(A214606(2*n+1)+2)]`
-/

namespace A206023.P2901635871132553407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (A214606 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206023.P2901635871132553407

namespace A206023

/-- `record[A214606(A214606(2*n+1)+2)]` -/
def P2901635871132553407.Spec : Prop :=
  ∀ n, P2901635871132553407.a n = A206023 (n + 1)

end A206023

/-!
# A206024: Numbers k such that 6k+1, 12k+1, 18k+1 and 36k+1 are all primes.

The programs for A206024, there is no canonical definition to state claims against.
-/

/-! ## A206024.P14644353170406339582

`∩[A046025(n+1), A293625(n+1)]`
-/

namespace A206024.P14644353170406339582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206024.P14644353170406339582

/-! ## A206024.P3972723615940721933

`∩[A293625(n+1), A033503(n)+a(n-1)]` with `a(0)=1`
-/

namespace A206024.P3972723615940721933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A033503 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206024.P3972723615940721933

/-! ## A206024.P17454736353159794798

`∩[A024899(n+1), A293625(n+1)]`
-/

namespace A206024.P17454736353159794798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206024.P17454736353159794798

/-!
# A206025: Triangular numbers k whose divisors can be partitioned into three disjoint sets whose sums are all sigma(k)/3.

The programs for A206025, there is no canonical definition to state claims against.
-/

/-! ## A206025.P3797765590858638184

`∩[A204830(n+1), A000217(n)]`
-/

namespace A206025.P3797765590858638184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206025.P3797765590858638184

/-! ## A206025.P14941080921536684688

`∩[A204830(n+1), A014494(n)]`
-/

namespace A206025.P14941080921536684688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206025.P14941080921536684688

/-! ## A206025.P6241244125483387453

`∩[A204830(n+1), A116996(n)]`
-/

namespace A206025.P6241244125483387453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116996 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206025.P6241244125483387453

/-! ## A206025.P12545045150028295041

`∩[A204830(n+1), A253145(n)]`
-/

namespace A206025.P12545045150028295041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206025.P12545045150028295041

/-! ## A206025.P1929560797866702176

`∩[A134519(n+1), A204830(n+1)]`
-/

namespace A206025.P1929560797866702176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206025.P1929560797866702176

/-!
# A206026: a(n) = smallest number m such that sigma(k) = m has at least n positive solutions k.

The programs for A206026, there is no canonical definition to state claims against.
-/

/-! ## A206026.P2242184313436805375

`A145899(∑[A219866(n)^and(n, -2)])`
-/

namespace A206026.P2242184313436805375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219866 n : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145899 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A206026.P2242184313436805375

/-! ## A206026.P15928115897713093357

`A007368(gcd(A334443(n+1), A355246(n))+n)`
-/

namespace A206026.P15928115897713093357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007368 (Int.gcd (A334443 (n + 1)) (A355246 n) + n)

end

end A206026.P15928115897713093357

/-! ## A206026.P5747236945980842961

`A145899(∑[A362394(2*n)²])`
-/

namespace A206026.P5747236945980842961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362394 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145899 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206026.P5747236945980842961

/-! ## A206026.P15253661926357415524

`A007368(A032559(n+1)+char[3])`
-/

namespace A206026.P15253661926357415524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007368 (A032559 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A206026.P15253661926357415524

/-!
# A206027: a(n) = the number of solutions to sigma(x) = A145899(n).

The programs for A206027, there is no canonical definition to state claims against.
-/

/-! ## A206027.P2280980719366933296

`A054973(A145899(n+1))`
-/

namespace A206027.P2280980719366933296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A145899 (n + 1)).toNat

end

end A206027.P2280980719366933296

/-! ## A206027.P12570431381682397387

`∑[runs[A206026(n+1)]]`
-/

namespace A206027.P12570431381682397387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206026 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206027.P12570431381682397387

/-! ## A206027.P16661806640216055402

`record[A283486(A085126(n+1))]`
-/

namespace A206027.P16661806640216055402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283486 (A085126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206027.P16661806640216055402

/-! ## A206027.P11673428703865790058

`record[A054973(A035877(n))]`
-/

namespace A206027.P11673428703865790058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A035877 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206027.P11673428703865790058

/-! ## A206027.P15344438877918576543

`record[A054973(A301730(n))]`
-/

namespace A206027.P15344438877918576543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A301730 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206027.P15344438877918576543

/-!
# A206029: a(n) = sum of numbers k <= sigma(n) such that k is not equal to sigma(d) for any divisor d of n where sigma = A000203.

The programs for A206029, there is no canonical definition to state claims against.
-/

/-! ## A206029.P16470832045293978209

`C(∑{d}[n+1, #], 2)-A211779(n+1)`
-/

namespace A206029.P16470832045293978209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) 2 : ℤ) - A211779 (n + 1)

end

end A206029.P16470832045293978209

/-! ## A206029.P1536379136995226838

`A369338(1+n)+A119616(n+1)`
-/

namespace A206029.P1536379136995226838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369338 (1 + n) + A119616 (n + 1)

end

end A206029.P1536379136995226838

/-! ## A206029.P16942471134285615015

`A184387(n+1)-A007429(n+1)`
-/

namespace A206029.P16942471134285615015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - A007429 (n + 1)

end

end A206029.P16942471134285615015

/-! ## A206029.P17905116131446212560

`A184387(n+1)-A206028(n+1)`
-/

namespace A206029.P17905116131446212560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - A206028 (n + 1)

end

end A206029.P17905116131446212560

/-! ## A206029.P3538621470039124497

`C(A000203(n+1), 2)-A211779(n+1)`
-/

namespace A206029.P3538621470039124497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000203 (n + 1)).toNat 2 : ℤ) - A211779 (n + 1)

end

end A206029.P3538621470039124497

/-! ## A206029.P2254147783493132628

`A119616(n+1)+∑{d}[n+1, A024816(#)]`
-/

namespace A206029.P2254147783493132628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119616 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A024816 d

end

end A206029.P2254147783493132628

/-! ## A206029.P4273720378555378218

`A000217(∑{d}[n+1, #])-A007429(n+1)`
-/

namespace A206029.P4273720378555378218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ d ∈ Nat.divisors (f1 n), d) - A007429 (n + 1)

end

end A206029.P4273720378555378218

/-! ## A206029.P9742634940283853900

`A184387(n+1)-∑{d}[n+1, A000203(#)]`
-/

namespace A206029.P9742634940283853900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A000203 d

end

end A206029.P9742634940283853900

/-! ## A206029.P9319502807652762817

`C(A000203(n+1)+1, 2)-A007429(n+1)`
-/

namespace A206029.P9319502807652762817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000203 (n + 1) + 1).toNat 2 : ℤ) - A007429 (n + 1)

end

end A206029.P9319502807652762817

/-! ## A206029.P9903995066864866882

`C(A000203(n+1)+1, 2)-A206028(n+1)`
-/

namespace A206029.P9903995066864866882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000203 (n + 1) + 1).toNat 2 : ℤ) - A206028 (n + 1)

end

end A206029.P9903995066864866882

/-!
# A206030: Numbers m with at least two divisors d with the same sigma(d).

The programs for A206030, there is no canonical definition to state claims against.
-/

/-! ## A206030.P13083008328394774810

`lt[A184395(n+1), A000005(n+1)]+1`
-/

namespace A206030.P13083008328394774810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A206030.P13083008328394774810

/-! ## A206030.P10719630573277746455

`lt[A206028(n+1), A007429(n+1)]+1`
-/

namespace A206030.P10719630573277746455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A206030.P10719630573277746455

/-! ## A206030.P1902772596998876091

`lt[A065608(n+1), A184396(n+1)]+1`
-/

namespace A206030.P1902772596998876091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A206030.P1902772596998876091

/-! ## A206030.P17521812624570129760

`A065475(lt[A184395(n+1), A000005(n+1)])`
-/

namespace A206030.P17521812624570129760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A206030.P17521812624570129760

/-!
# A206032: a(n) = Product_{d|n} sigma(d) where sigma = A000203.

The programs for A206032, the canonical program `A206032.P15818663996432524408` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206032 has offset 1).

The definition of A206032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206032.P3968595173838274976

`∏{d}[1+n, A000203(#)]`
-/

namespace A206032.P3968595173838274976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000203 d

end

end A206032.P3968595173838274976

namespace A206032

/-- `∏{d}[1+n, A000203(#)]` -/
def P3968595173838274976.Spec : Prop :=
  ∀ n, P3968595173838274976.a n = A206032 (n + 1)

end A206032

/-! ## A206032.P12669340355121893315

`∏{d}[1+n, sqrt(A072861(#))]`
-/

namespace A206032.P12669340355121893315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Real.sqrt (A072861 d : ℝ)

end

end A206032.P12669340355121893315

namespace A206032

/-- `∏{d}[1+n, sqrt(A072861(#))]` -/
def P12669340355121893315.Spec : Prop :=
  ∀ n, P12669340355121893315.a n = (A206032 (n + 1) : ℝ)

end A206032

/-! ## A206032.P15818663996432524408

`∏{d}[n+1, A001065(#)+#]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A206032

/-- `∏{d}[n+1, A001065(#)+#]` -/
def P15818663996432524408.Spec : Prop :=
  ∀ n, P15818663996432524408.a n = A206032 (n + 1)

theorem P15818663996432524408.correct : P15818663996432524408.Spec := by
  intro n
  simp only [A206032, Nat.add_sub_cancel]

end A206032

/-! ## A206032.P912866732662189095

`∏{d}[n+1, A064987(#)/#]`
-/

namespace A206032.P912866732662189095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A064987 d : ℚ) / (d : ℚ)

end

end A206032.P912866732662189095

namespace A206032

/-- `∏{d}[n+1, A064987(#)/#]` -/
def P912866732662189095.Spec : Prop :=
  ∀ n, P912866732662189095.a n = (A206032 (n + 1) : ℚ)

end A206032

/-! ## A206032.P1183939169697351192

`A324987(n+1)/A211776(n+1)`
-/

namespace A206032.P1183939169697351192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324987 (n + 1) : ℚ) / (A211776 (n + 1) : ℚ)

end

end A206032.P1183939169697351192

namespace A206032

/-- `A324987(n+1)/A211776(n+1)` -/
def P1183939169697351192.Spec : Prop :=
  ∀ n, P1183939169697351192.a n = (A206032 (n + 1) : ℚ)

end A206032

/-! ## A206032.P16153419231262159252

`A334491(n+1)/A007955(n+1)*A334805(n+1)`
-/

namespace A206032.P16153419231262159252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334491 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) * (A334805 (n + 1) : ℚ)

end

end A206032.P16153419231262159252

namespace A206032

/-- `A334491(n+1)/A007955(n+1)*A334805(n+1)` -/
def P16153419231262159252.Spec : Prop :=
  ∀ n, P16153419231262159252.a n = (A206032 (n + 1) : ℚ)

end A206032

/-! ## A206032.P8670993091245191966

`A324980(n+1)/A007955(n+1)`
-/

namespace A206032.P8670993091245191966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324980 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A206032.P8670993091245191966

namespace A206032

/-- `A324980(n+1)/A007955(n+1)` -/
def P8670993091245191966.Spec : Prop :=
  ∀ n, P8670993091245191966.a n = (A206032 (n + 1) : ℚ)

end A206032

/-! ## A206032.P14115873314353225822

`A325030(n+1)/A266265(n+1)`
-/

namespace A206032.P14115873314353225822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (A266265 (n + 1) : ℚ)

end

end A206032.P14115873314353225822

namespace A206032

/-- `A325030(n+1)/A266265(n+1)` -/
def P14115873314353225822.Spec : Prop :=
  ∀ n, P14115873314353225822.a n = (A206032 (n + 1) : ℚ)

end A206032

/-!
# A206033: a(1) =1; for n>=1: a(n) = product of numbers k <= sigma(n) such that k is not equal to sigma(d) for any divisor d of n where sigma = A000203.

The programs for A206033, there is no canonical definition to state claims against.
-/

/-! ## A206033.P14750929162661124879

`A184388(n+1)/A206031(n+1)`
-/

namespace A206033.P14750929162661124879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184388 (n + 1) : ℚ) / (A206031 (n + 1) : ℚ)

end

end A206033.P14750929162661124879

/-! ## A206033.P12429973332079196751

`A184388(n+1)/A206032(n+1)`
-/

namespace A206033.P12429973332079196751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184388 (n + 1) : ℚ) / (A206032 (n + 1) : ℚ)

end

end A206033.P12429973332079196751

/-! ## A206033.P5852688066471020135

`A097012(n+1)!/A206032(n+1)`
-/

namespace A206033.P5852688066471020135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A097012 (n + 1)).toNat : ℚ) / (A206032 (n + 1) : ℚ)

end

end A206033.P5852688066471020135

/-! ## A206033.P18091083848344724849

`abs(A143348(n+1))!/A206032(n+1)`
-/

namespace A206033.P18091083848344724849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |A143348 (n + 1)|.toNat : ℚ) / (A206032 (n + 1) : ℚ)

end

end A206033.P18091083848344724849

/-! ## A206033.P11226795454513716985

`A245092(A005408(n))!/A206032(n+1)`
-/

namespace A206033.P11226795454513716985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A245092 (A005408 n).toNat).toNat : ℚ) / (A206032 (n + 1) : ℚ)

end

end A206033.P11226795454513716985

/-!
# A206034: a(n) is the last defined element in the sequence n, f(n), f(f(n)), ..., where f(t) = lcm(t,(b+c)/2) with b < c smallest consecutive divisors of t with c - b > 1 and f(t) is undefined if such b, c do not exist or b + c is odd.

The programs for A206034, there is no canonical definition to state claims against.
-/

/-! ## A206034.P9502565593939193825

`A053608(A227796(n+1)+A227784(n+1))`
-/

namespace A206034.P9502565593939193825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053608 (A227796 (n + 1) + A227784 (n + 1)).toNat

end

end A206034.P9502565593939193825

/-! ## A206034.P2077595935266599195

`A056604(lcm(A300973(n+1), A324383(2*n+3)))`
-/

namespace A206034.P2077595935266599195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056604 (Int.lcm (A300973 (n + 1)) (A324383 (2 * n + 3)))

end

end A206034.P2077595935266599195

/-!
# A206035: a(n) = floor(10*(A064413(n) - n)/n).

The programs for A206035, there is no canonical definition to state claims against.
-/

/-! ## A206035.P10915859579195147037

`floor(10*(A064413(n+1)-(n+1))/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A206035.P10915859579195147037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 * (A064413 (n + 1) - (n + 1 : ℤ)) : ℚ) / (n + 1 : ℚ)⌋

end

end A206035.P10915859579195147037

/-!
# A206036: Numbers m such that sigma(m) = sigma(k) has solution for distinct numbers m and k.

The programs for A206036, the canonical program `A206036.P10851375619231835458` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206036 has offset 1).

The definition of A206036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206036.P10851375619231835458

`lt[1, A070242(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A206036

/-- `lt[1, A070242(n+1)]+1` -/
def P10851375619231835458.Spec : Prop :=
  ∀ n, (P10851375619231835458.a n : ℤ) = A206036 (n + 1)

theorem P10851375619231835458.correct : P10851375619231835458.Spec := by
  intro n
  simp only [A206036, Nat.add_sub_cancel]

end A206036

/-! ## A206036.P1766571379063613777

`lt[A241479(1+n), n]+1`
-/

namespace A206036.P1766571379063613777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A206036.P1766571379063613777

namespace A206036

/-- `lt[A241479(1+n), n]+1` -/
def P1766571379063613777.Spec : Prop :=
  ∀ n, (P1766571379063613777.a n : ℤ) = A206036 (n + 1)

end A206036

/-! ## A206036.P15782753497308490894

`comp[A211656(1+n)-1]+1`
-/

namespace A206036.P15782753497308490894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206036.P15782753497308490894

namespace A206036

/-- `comp[A211656(1+n)-1]+1` -/
def P15782753497308490894.Spec : Prop :=
  ∀ n, (P15782753497308490894.a n : ℤ) = A206036 (n + 1)

end A206036

/-! ## A206036.P17312233090662351743

`comp[A308098(n+1)-1]+1`
-/

namespace A206036.P17312233090662351743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308098 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206036.P17312233090662351743

namespace A206036

/-- `comp[A308098(n+1)-1]+1` -/
def P17312233090662351743.Spec : Prop :=
  ∀ n, (P17312233090662351743.a n : ℤ) = A206036 (n + 1)

end A206036

/-! ## A206036.P1497482721937978257

`comp[C(A241479(n+1), n)]`
-/

namespace A206036.P1497482721937978257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A241479 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A206036.P1497482721937978257

namespace A206036

/-- `comp[C(A241479(n+1), n)]` -/
def P1497482721937978257.Spec : Prop :=
  ∀ n, (P1497482721937978257.a n : ℤ) = A206036 (n + 1)

end A206036

/-! ## A206036.P2427145760489189831

`record[(n+6)%A325652(n+6)]`
-/

namespace A206036.P2427145760489189831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 6 : ℤ) (A325652 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206036.P2427145760489189831

namespace A206036

/-- `record[(n+6)%A325652(n+6)]` -/
def P2427145760489189831.Spec : Prop :=
  ∀ n, P2427145760489189831.a n = A206036 (n + 1)

end A206036

/-! ## A206036.P17020741915766428321

`lt[A241479(A028310(n)), n]`
-/

namespace A206036.P17020741915766428321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A206036.P17020741915766428321

namespace A206036

/-- `lt[A241479(A028310(n)), n]` -/
def P17020741915766428321.Spec : Prop :=
  ∀ n, (P17020741915766428321.a n : ℤ) = A206036 (n + 1)

end A206036

/-! ## A206036.P15904617332920548657

`lt[1, A054973(∑{d}[n+1, #])]+1`
-/

namespace A206036.P15904617332920548657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A206036.P15904617332920548657

namespace A206036

/-- `lt[1, A054973(∑{d}[n+1, #])]+1` -/
def P15904617332920548657.Spec : Prop :=
  ∀ n, (P15904617332920548657.a n : ℤ) = A206036 (n + 1)

end A206036

/-! ## A206036.P5267507808935091224

`comp[A240667(n+1)]`
-/

namespace A206036.P5267507808935091224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A206036.P5267507808935091224

namespace A206036

/-- `comp[A240667(n+1)]` -/
def P5267507808935091224.Spec : Prop :=
  ∀ n, (P5267507808935091224.a n : ℤ) = A206036 (n + 1)

end A206036

/-! ## A206036.P9196258624351320991

`eq[1, A256596(n+1)]+1`
-/

namespace A206036.P9196258624351320991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206036.P9196258624351320991

namespace A206036

/-- `eq[1, A256596(n+1)]+1` -/
def P9196258624351320991.Spec : Prop :=
  ∀ n, (P9196258624351320991.a n : ℤ) = A206036 (n + 1)

end A206036

/-!
# A206037: Values of the difference d for 3 primes in arithmetic progression with the minimal start sequence {3 + j*d}, j = 0 to 2.

The programs for A206037, the canonical program `A206037.P3562682260624956117` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206037 has offset 1).

The definition of A206037 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115334, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206037.P3562682260624956117

`2*A115334(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A206037

/-- `2*A115334(n+1)` -/
def P3562682260624956117.Spec : Prop :=
  ∀ n, P3562682260624956117.a n = A206037 (n + 1)

theorem P3562682260624956117.correct : P3562682260624956117.Spec := by
  intro n
  simp only [A206037, Nat.add_sub_cancel]

end A206037

/-! ## A206037.P5571898798539832728

`A115334(A000027(n+1))+A115334(n+1)`
-/

namespace A206037.P5571898798539832728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (A000027 (n + 1)).toNat + A115334 (n + 1)

end

end A206037.P5571898798539832728

namespace A206037

/-- `A115334(A000027(n+1))+A115334(n+1)` -/
def P5571898798539832728.Spec : Prop :=
  ∀ n, P5571898798539832728.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P11088621845194132448

`A063908(2+n)-3`
-/

namespace A206037.P11088621845194132448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (2 + n) - 3

end

end A206037.P11088621845194132448

namespace A206037

/-- `A063908(2+n)-3` -/
def P11088621845194132448.Spec : Prop :=
  ∀ n, P11088621845194132448.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P2648583894550301937

`∑[abs(Δ[A063908(n+1)])]`
-/

namespace A206037.P2648583894550301937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206037.P2648583894550301937

namespace A206037

/-- `∑[abs(Δ[A063908(n+1)])]` -/
def P2648583894550301937.Spec : Prop :=
  ∀ n, P2648583894550301937.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P15687348082520583100

`(A092109(n+2)-3)/2`
-/

namespace A206037.P15687348082520583100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092109 (n + 2) - 3 : ℚ) / 2

end

end A206037.P15687348082520583100

namespace A206037

/-- `(A092109(n+2)-3)/2` -/
def P15687348082520583100.Spec : Prop :=
  ∀ n, P15687348082520583100.a n = (A206037 (n + 1) : ℚ)

end A206037

/-! ## A206037.P16130424183376899901

`2*((A241817(n+2)+2)/4-2)`
-/

namespace A206037.P16130424183376899901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A241817 (n + 2) + 2 : ℚ) / 4 - 2)

end

end A206037.P16130424183376899901

namespace A206037

/-- `2*((A241817(n+2)+2)/4-2)` -/
def P16130424183376899901.Spec : Prop :=
  ∀ n, P16130424183376899901.a n = (A206037 (n + 1) : ℚ)

end A206037

/-! ## A206037.P4602385838015515296

`∑[A000027(Δ[A063908(n+1)])]`
-/

namespace A206037.P4602385838015515296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206037.P4602385838015515296

namespace A206037

/-- `∑[A000027(Δ[A063908(n+1)])]` -/
def P4602385838015515296.Spec : Prop :=
  ∀ n, P4602385838015515296.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P13694825481639385982

`∑[A038608(Δ[A063908(n+1)])]`
-/

namespace A206037.P13694825481639385982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206037.P13694825481639385982

namespace A206037

/-- `∑[A038608(Δ[A063908(n+1)])]` -/
def P13694825481639385982.Spec : Prop :=
  ∀ n, P13694825481639385982.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P17009980334801001343

`A092109(n+2)%A063908(n+2)`
-/

namespace A206037.P17009980334801001343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092109 (n + 2)) (A063908 (n + 2))

end

end A206037.P17009980334801001343

namespace A206037

/-- `A092109(n+2)%A063908(n+2)` -/
def P17009980334801001343.Spec : Prop :=
  ∀ n, P17009980334801001343.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P7539665577376085729

`∑[A063908(n+2)%A063908(n+1)]`
-/

namespace A206037.P7539665577376085729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063908 (n + 2)) (A063908 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206037.P7539665577376085729

namespace A206037

/-- `∑[A063908(n+2)%A063908(n+1)]` -/
def P7539665577376085729.Spec : Prop :=
  ∀ n, P7539665577376085729.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P634475795337512101

`filter[A104197(n+1), A120325(#)]`
-/

namespace A206037.P634475795337512101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A206037.P634475795337512101

namespace A206037

/-- `filter[A104197(n+1), A120325(#)]` -/
def P634475795337512101.Spec : Prop :=
  ∀ n, P634475795337512101.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P12568332779861994059

`record[A023576(n+1)-3]`
-/

namespace A206037.P12568332779861994059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023576 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206037.P12568332779861994059

namespace A206037

/-- `record[A023576(n+1)-3]` -/
def P12568332779861994059.Spec : Prop :=
  ∀ n, P12568332779861994059.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P2230080773048416874

`record[A023578(n+1)-3]`
-/

namespace A206037.P2230080773048416874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023578 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206037.P2230080773048416874

namespace A206037

/-- `record[A023578(n+1)-3]` -/
def P2230080773048416874.Spec : Prop :=
  ∀ n, P2230080773048416874.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P14163925638267990325

`p?[A098090(n+2)]-3`
-/

namespace A206037.P14163925638267990325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3

end

end A206037.P14163925638267990325

namespace A206037

/-- `p?[A098090(n+2)]-3` -/
def P14163925638267990325.Spec : Prop :=
  ∀ n, P14163925638267990325.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P8632722743181312715

`record[abs(A000010(A098090(n+1))-3)+1]`
-/

namespace A206037.P8632722743181312715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 (A098090 (n + 1)).toNat - 3| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206037.P8632722743181312715

namespace A206037

/-- `record[abs(A000010(A098090(n+1))-3)+1]` -/
def P8632722743181312715.Spec : Prop :=
  ∀ n, P8632722743181312715.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P7831278514108757401

`∩[2*A067076(n+2), A067076(n+2)]`
-/

namespace A206037.P7831278514108757401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067076 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206037.P7831278514108757401

namespace A206037

/-- `∩[2*A067076(n+2), A067076(n+2)]` -/
def P7831278514108757401.Spec : Prop :=
  ∀ n, (P7831278514108757401.a n : ℤ) = A206037 (n + 1)

end A206037

/-! ## A206037.P14013514688382065363

`filter[A098807(n+1), A120325(#)]`
-/

namespace A206037.P14013514688382065363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A206037.P14013514688382065363

namespace A206037

/-- `filter[A098807(n+1), A120325(#)]` -/
def P14013514688382065363.Spec : Prop :=
  ∀ n, P14013514688382065363.a n = A206037 (n + 1)

end A206037

/-! ## A206037.P13291627843024047661

`∩[A067076(n+1), A098807(n+1)]`
-/

namespace A206037.P13291627843024047661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206037.P13291627843024047661

namespace A206037

/-- `∩[A067076(n+1), A098807(n+1)]` -/
def P13291627843024047661.Spec : Prop :=
  ∀ n, (P13291627843024047661.a n : ℤ) = A206037 (n + 1)

end A206037

/-! ## A206037.P14294904060072862089

`∩[A086801(n+1), A098807(n+1)]`
-/

namespace A206037.P14294904060072862089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206037.P14294904060072862089

namespace A206037

/-- `∩[A086801(n+1), A098807(n+1)]` -/
def P14294904060072862089.Spec : Prop :=
  ∀ n, (P14294904060072862089.a n : ℤ) = A206037 (n + 1)

end A206037

/-!
# A206038: Values of the difference d for 4 primes in arithmetic progression with the minimal start sequence {5 + j*d}, j = 0 to 3.

The programs for A206038, there is no canonical definition to state claims against.
-/

/-! ## A206038.P16642901062015020679

`∩[A342339(n+1), A005835(A351650(n+1))]`
-/

namespace A206038.P16642901062015020679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (A351650 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206038.P16642901062015020679

/-!
# A206039: Values of the difference d for 5 primes in arithmetic progression with the minimal start sequence {5 + j*d}, j = 0 to 4.

The programs for A206039, there is no canonical definition to state claims against.
-/

/-! ## A206039.P7240662736288643551

`2*A210504(n+1)`
-/

namespace A206039.P7240662736288643551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210504 (n + 1)

end

end A206039.P7240662736288643551

/-! ## A206039.P13942781089642581808

`Δ[2*∑[A210504(n)]]`
-/

namespace A206039.P13942781089642581808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206039.P13942781089642581808

/-! ## A206039.P3083740987577067358

`record[2*A210504(abs(n-1))]`
-/

namespace A206039.P3083740987577067358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210504 |(n : ℤ) - 1|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206039.P3083740987577067358

/-! ## A206039.P2184064433927529935

`A210504(n+1)+A210504((n+1)%A139013(n+1))`
-/

namespace A206039.P2184064433927529935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210504 (n + 1) + A210504 (Int.tmod (n + 1 : ℤ) (A139013 (n + 1))).toNat

end

end A206039.P2184064433927529935

/-! ## A206039.P14065575337493130254

`∑[A004277(Δ[A210504(n)])]`
-/

namespace A206039.P14065575337493130254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206039.P14065575337493130254

/-! ## A206039.P7937218366291425175

`∑[A005843(Δ[A210504(n)])]`
-/

namespace A206039.P7937218366291425175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206039.P7937218366291425175

/-! ## A206039.P7781387212786842155

`∩[A111215(n+1), A206038(n+1)]`
-/

namespace A206039.P7781387212786842155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206039.P7781387212786842155

/-! ## A206039.P12545343583009506306

`A004277(A210504(n+1))`
-/

namespace A206039.P12545343583009506306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210504 (n + 1)).toNat

end

end A206039.P12545343583009506306

/-!
# A206041: Values of the difference d for 7 primes in arithmetic progression with the minimal start sequence {7 + j*d}, j = 0 to 6.

The programs for A206041, there is no canonical definition to state claims against.
-/

/-! ## A206041.P10694172117841147047

`2*A210505(1+n)`
-/

namespace A206041.P10694172117841147047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210505 (1 + n)

end

end A206041.P10694172117841147047

/-! ## A206041.P4447289870723680596

`Δ[2*∑[A210505(n)]]`
-/

namespace A206041.P4447289870723680596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206041.P4447289870723680596

/-! ## A206041.P2927859643708244131

`record[2*A210505(A028242(n))]`
-/

namespace A206041.P2927859643708244131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210505 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206041.P2927859643708244131

/-! ## A206041.P755833533564607199

`4*A210505(A028242(2*n))/2`
-/

namespace A206041.P755833533564607199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A210505 (A028242 (2 * n)).toNat : ℚ) / 2

end

end A206041.P755833533564607199

/-! ## A206041.P10480302044420968942

`A210505(n+1)+A210505(n+1)`
-/

namespace A206041.P10480302044420968942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210505 (n + 1) + A210505 (n + 1)

end

end A206041.P10480302044420968942

/-!
# A206046: Number of (n+1)X(n+1) 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206046, there is no canonical definition to state claims against.
-/

/-! ## A206046.P9339409261810165012

`A206054(∑[4*n]+1)`
-/

namespace A206046.P9339409261810165012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206046.P9339409261810165012

/-!
# A206047: Number of (n+1) X 2 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one.

The programs for A206047, the canonical program `A206047.P2171402364946433663` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206047 has offset 1).

The definition of A206047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206047.P2171402364946433663

`ogf((48+63x-18x^2)/(1-4x-7x^2+2x^3))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206047

/-- `ogf((48+63x-18x^2)/(1-4x-7x^2+2x^3))` -/
def P2171402364946433663.Spec : Prop :=
  ∀ n, P2171402364946433663.a n = A206047 (n + 1)

theorem P2171402364946433663.correct : P2171402364946433663.Spec := by
  intro n
  simp only [A206047, Nat.add_sub_cancel]

end A206047

/-! ## A206047.P1583287243371618776

`A206054(∑[n]+1)`
-/

namespace A206047.P1583287243371618776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206047.P1583287243371618776

namespace A206047

/-- `A206054(∑[n]+1)` -/
def P1583287243371618776.Spec : Prop :=
  ∀ n, P1583287243371618776.a n = A206047 (n + 1)

end A206047

/-! ## A206047.P13609041366789217112

`record[A103451(n)*A206054(n+1)]`
-/

namespace A206047.P13609041366789217112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A206054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206047.P13609041366789217112

namespace A206047

/-- `record[A103451(n)*A206054(n+1)]` -/
def P13609041366789217112.Spec : Prop :=
  ∀ n, P13609041366789217112.a n = A206047 (n + 1)

end A206047

/-! ## A206047.P15496658507063388772

`record[root(A206054(n+1), A007318(n))]`
-/

namespace A206047.P15496658507063388772
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206054 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206047.P15496658507063388772

namespace A206047

/-- `record[root(A206054(n+1), A007318(n))]` -/
def P15496658507063388772.Spec : Prop :=
  ∀ n, P15496658507063388772.a n = (A206047 (n + 1) : ℝ)

end A206047

/-!
# A206048: Number of (n+1) X 3 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one.

The programs for A206048, the canonical program `A206048.P2286782045260679921` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206048 has offset 1).

The definition of A206048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206048.P2286782045260679921

`ogf((255+15x-645x^2+405x^3-162x^4+108x^5)/(1-9x-x^2+24x^3-15x^4+6x^5-4x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206048

/-- `ogf((255+15x-645x^2+405x^3-162x^4+108x^5)/(1-9x-x^2+24x^3-15x^4+6x^5-4x^6))` -/
def P2286782045260679921.Spec : Prop :=
  ∀ n, P2286782045260679921.a n = A206048 (n + 1)

theorem P2286782045260679921.correct : P2286782045260679921.Spec := by
  intro n
  simp only [A206048, Nat.add_sub_cancel]

end A206048

/-! ## A206048.P2435739922650766748

`A206054(∑[n+1]+2)`
-/

namespace A206048.P2435739922650766748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206048.P2435739922650766748

namespace A206048

/-- `A206054(∑[n+1]+2)` -/
def P2435739922650766748.Spec : Prop :=
  ∀ n, P2435739922650766748.a n = A206048 (n + 1)

end A206048

/-!
# A206049: Number of (n+1)X4 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206049, there is no canonical definition to state claims against.
-/

/-! ## A206049.P7614648141858066878

`A206054(∑[n+2]+4)`
-/

namespace A206049.P7614648141858066878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206049.P7614648141858066878

/-!
# A206050: Number of (n+1)X5 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206050, there is no canonical definition to state claims against.
-/

/-! ## A206050.P2940591540655123366

`A206054(A374004(n+1))`
-/

namespace A206050.P2940591540655123366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A374004 (n + 1)).toNat

end

end A206050.P2940591540655123366

/-! ## A206050.P12085921869685590588

`A206054(A141214(n+1))`
-/

namespace A206050.P12085921869685590588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A141214 (n + 1)).toNat

end

end A206050.P12085921869685590588

/-!
# A206051: Number of (n+1)X6 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206051, there is no canonical definition to state claims against.
-/

/-! ## A206051.P16514633383354151852

`A206054(11+∑[n+4])`
-/

namespace A206051.P16514633383354151852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (11 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206051.P16514633383354151852

/-!
# A206052: Number of (n+1)X7 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206052, there is no canonical definition to state claims against.
-/

/-! ## A206052.P3896122380105977797

`A206054(A374007(n+1))`
-/

namespace A206052.P3896122380105977797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A374007 (n + 1)).toNat

end

end A206052.P3896122380105977797

/-!
# A206053: Number of (n+1)X8 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206053, there is no canonical definition to state claims against.
-/

/-! ## A206053.P9857021323778853525

`A206054(A374008(n+1))`
-/

namespace A206053.P9857021323778853525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206054 (A374008 (n + 1)).toNat

end

end A206053.P9857021323778853525

/-!
# A206054: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206054, there is no canonical definition to state claims against.
-/

/-! ## A206054.P17559143634130528425

`A205909(n+1)-(A205836(n+1)+3)`
-/

namespace A206054.P17559143634130528425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (n + 1) - (A205836 (n + 1) + 3)

end

end A206054.P17559143634130528425

/-! ## A206054.P16479198845716482823

`A205917(n+1)+A006983(A218698(3*(n+1)))-(A205836(n+1)+3)`
-/

namespace A206054.P16479198845716482823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (n + 1) + A006983 (A218698 (3 * (n + 1))).toNat - (A205836 (n + 1) + 3)

end

end A206054.P16479198845716482823

/-!
# A206055: Number of (n+1)X(n+1) 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206055, there is no canonical definition to state claims against.
-/

/-! ## A206055.P4250945380248821141

`A206063(∑[4*n]+1)`
-/

namespace A206055.P4250945380248821141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206055.P4250945380248821141

/-! ## A206055.P8571427471507107297

`record[A003982(n)*A206063(n+1)]`
-/

namespace A206055.P8571427471507107297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206055.P8571427471507107297

/-! ## A206055.P1143106644981848172

`record[gcd(A114327(n), A206063(n+1))]`
-/

namespace A206055.P1143106644981848172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A206063 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206055.P1143106644981848172

/-!
# A206056: Number of (n+1)X2 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206056, there is no canonical definition to state claims against.
-/

/-! ## A206056.P12436688139568243476

`A206063(∑[n]+1)`
-/

namespace A206056.P12436688139568243476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206056.P12436688139568243476

/-! ## A206056.P7842124522787889344

`record[A206063(n+1)/A118185(n)]`
-/

namespace A206056.P7842124522787889344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206063 (n + 1) : ℚ) / (A118185 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206056.P7842124522787889344

/-! ## A206056.P3644702962310531657

`record[root(A206063(n+1), A059268(n))]`
-/

namespace A206056.P3644702962310531657
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206063 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206056.P3644702962310531657

/-! ## A206056.P12302050269397485194

`record[gcd(A002262(n), A206063(n+1))]`
-/

namespace A206056.P12302050269397485194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206063 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206056.P12302050269397485194

/-!
# A206057: Number of (n+1)X3 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206057, there is no canonical definition to state claims against.
-/

/-! ## A206057.P739805611113561457

`A206063(∑[n+1]+2)`
-/

namespace A206057.P739805611113561457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206057.P739805611113561457

/-! ## A206057.P3377372790087822192

`record[root(A206063(n+2), A059268(n))]`
-/

namespace A206057.P3377372790087822192
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206063 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206057.P3377372790087822192

/-! ## A206057.P10688918385621329140

`record[gcd(A002262(n), A206063(n+2))]`
-/

namespace A206057.P10688918385621329140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206063 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206057.P10688918385621329140

/-!
# A206058: Number of (n+1)X4 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206058, there is no canonical definition to state claims against.
-/

/-! ## A206058.P2073380263681356838

`A206063(∑[n+2]+4)`
-/

namespace A206058.P2073380263681356838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206058.P2073380263681356838

/-! ## A206058.P15619373007488190308

`record[A206063(A167499(n)-A016789(n))]`
-/

namespace A206058.P15619373007488190308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A167499 n - A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206058.P15619373007488190308

/-!
# A206059: Number of (n+1)X5 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206059, there is no canonical definition to state claims against.
-/

/-! ## A206059.P13734684746555377120

`A206063(A374004(n+1))`
-/

namespace A206059.P13734684746555377120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A374004 (n + 1)).toNat

end

end A206059.P13734684746555377120

/-! ## A206059.P1650260912124601428

`A206063(A141214(n+1))`
-/

namespace A206059.P1650260912124601428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A141214 (n + 1)).toNat

end

end A206059.P1650260912124601428

/-!
# A206060: Number of (n+1)X6 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206060, there is no canonical definition to state claims against.
-/

/-! ## A206060.P7333813496761595583

`A206063(A374005(n+1))`
-/

namespace A206060.P7333813496761595583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A374005 (n + 1)).toNat

end

end A206060.P7333813496761595583

/-! ## A206060.P8113260767515517388

`A206063(Δ[A264443(n)])`
-/

namespace A206060.P8113260767515517388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (f1 (n + 1) - f1 n).toNat

end

end A206060.P8113260767515517388

/-!
# A206061: Number of (n+1)X7 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206061, there is no canonical definition to state claims against.
-/

/-! ## A206061.P3069843781195181666

`A206063(A374007(n+1))`
-/

namespace A206061.P3069843781195181666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A374007 (n + 1)).toNat

end

end A206061.P3069843781195181666

/-!
# A206062: Number of (n+1)X8 0..3 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A206062, there is no canonical definition to state claims against.
-/

/-! ## A206062.P3033409180699655781

`A206063(A374008(n+1))`
-/

namespace A206062.P3033409180699655781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (A374008 (n + 1)).toNat

end

end A206062.P3033409180699655781

/-!
# A206064: Number of (n+1)X(n+1) 0..2 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206064, there is no canonical definition to state claims against.
-/

/-! ## A206064.P1822050335781618088

`A206072(∑[4*n]+1)`
-/

namespace A206064.P1822050335781618088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206064.P1822050335781618088

/-! ## A206064.P17351511868711412785

`record[gcd(A003987(n), A206072(n+1))]`
-/

namespace A206064.P17351511868711412785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A206072 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206064.P17351511868711412785

/-!
# A206065: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three clockwise edge increases.

The programs for A206065, the canonical program `A206065.P16866720423402712761` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206065 has offset 1).

The definition of A206065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206065.P16866720423402712761

`ogf((81-174x+18x^2+54x^3+45x^4)/(1-4x+x^2-2x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206065

/-- `ogf((81-174x+18x^2+54x^3+45x^4)/(1-4x+x^2-2x^4))` -/
def P16866720423402712761.Spec : Prop :=
  ∀ n, P16866720423402712761.a n = A206065 (n + 1)

theorem P16866720423402712761.correct : P16866720423402712761.Spec := by
  intro n
  simp only [A206065, Nat.add_sub_cancel]

end A206065

/-! ## A206065.P439572053334357927

`A206072(∑[n]+1)`
-/

namespace A206065.P439572053334357927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206065.P439572053334357927

namespace A206065

/-- `A206072(∑[n]+1)` -/
def P439572053334357927.Spec : Prop :=
  ∀ n, P439572053334357927.a n = A206065 (n + 1)

end A206065

/-! ## A206065.P1651092741231591739

`record[A206072(A254052(n+1))]`
-/

namespace A206065.P1651092741231591739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206065.P1651092741231591739

namespace A206065

/-- `record[A206072(A254052(n+1))]` -/
def P1651092741231591739.Spec : Prop :=
  ∀ n, P1651092741231591739.a n = A206065 (n + 1)

end A206065

/-! ## A206065.P7234474639220414580

`record[A010054(n)*A206072(n+1)]`
-/

namespace A206065.P7234474639220414580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206065.P7234474639220414580

namespace A206065

/-- `record[A010054(n)*A206072(n+1)]` -/
def P7234474639220414580.Spec : Prop :=
  ∀ n, P7234474639220414580.a n = A206065 (n + 1)

end A206065

/-! ## A206065.P9908219073036766976

`record[root(A206072(n+1), A059268(n))]`
-/

namespace A206065.P9908219073036766976
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206072 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206065.P9908219073036766976

namespace A206065

/-- `record[root(A206072(n+1), A059268(n))]` -/
def P9908219073036766976.Spec : Prop :=
  ∀ n, P9908219073036766976.a n = (A206065 (n + 1) : ℝ)

end A206065

/-!
# A206066: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three clockwise edge increases.

The programs for A206066, the canonical program `A206066.P11835253786034595768` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206066 has offset 1).

The definition of A206066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206066.P11835253786034595768

`ogf((150-444x+288x^2+72x^3+96x^4+96x^5)/(1-7x+8x^2))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206066

/-- `ogf((150-444x+288x^2+72x^3+96x^4+96x^5)/(1-7x+8x^2))` -/
def P11835253786034595768.Spec : Prop :=
  ∀ n, P11835253786034595768.a n = A206066 (n + 1)

theorem P11835253786034595768.correct : P11835253786034595768.Spec := by
  intro n
  simp only [A206066, Nat.add_sub_cancel]

end A206066

/-! ## A206066.P6248595021020412109

`A206072(∑[n+1]+2)`
-/

namespace A206066.P6248595021020412109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206066.P6248595021020412109

namespace A206066

/-- `A206072(∑[n+1]+2)` -/
def P6248595021020412109.Spec : Prop :=
  ∀ n, P6248595021020412109.a n = A206066 (n + 1)

end A206066

/-! ## A206066.P6255340152970431664

`record[A010054(n)*A206072(n+2)]`
-/

namespace A206066.P6255340152970431664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206072 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206066.P6255340152970431664

namespace A206066

/-- `record[A010054(n)*A206072(n+2)]` -/
def P6255340152970431664.Spec : Prop :=
  ∀ n, P6255340152970431664.a n = A206066 (n + 1)

end A206066

/-! ## A206066.P1572930347881346304

`record[root(A206072(n+2), A059268(n))]`
-/

namespace A206066.P1572930347881346304
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206072 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206066.P1572930347881346304

namespace A206066

/-- `record[root(A206072(n+2), A059268(n))]` -/
def P1572930347881346304.Spec : Prop :=
  ∀ n, P1572930347881346304.a n = (A206066 (n + 1) : ℝ)

end A206066

/-! ## A206066.P8697824522007416379

`record[A206072(A101881(n)+1)]`
-/

namespace A206066.P8697824522007416379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206066.P8697824522007416379

namespace A206066

/-- `record[A206072(A101881(n)+1)]` -/
def P8697824522007416379.Spec : Prop :=
  ∀ n, P8697824522007416379.a n = A206066 (n + 1)

end A206066

/-!
# A206067: Number of (n+1) X 4 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three clockwise edge increases.

The programs for A206067, there is no canonical definition to state claims against.
-/

/-! ## A206067.P13175494842931022505

`A206072(∑[n+2]+4)`
-/

namespace A206067.P13175494842931022505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206067.P13175494842931022505

/-!
# A206068: Number of (n+1)X5 0..2 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206068, there is no canonical definition to state claims against.
-/

/-! ## A206068.P4598890130955481047

`A206072(A374004(n+1))`
-/

namespace A206068.P4598890130955481047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A374004 (n + 1)).toNat

end

end A206068.P4598890130955481047

/-! ## A206068.P16062110868017004404

`A206072(A141214(n+1))`
-/

namespace A206068.P16062110868017004404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A141214 (n + 1)).toNat

end

end A206068.P16062110868017004404

/-!
# A206069: Number of (n+1)X6 0..2 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206069, there is no canonical definition to state claims against.
-/

/-! ## A206069.P73249913852244445

`A206072(A374005(n+1))`
-/

namespace A206069.P73249913852244445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A374005 (n + 1)).toNat

end

end A206069.P73249913852244445

/-! ## A206069.P4460637753948000785

`A206072(Δ[A264443(n)])`
-/

namespace A206069.P4460637753948000785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (f1 (n + 1) - f1 n).toNat

end

end A206069.P4460637753948000785

/-!
# A206070: Number of (n+1)X7 0..2 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206070, there is no canonical definition to state claims against.
-/

/-! ## A206070.P1664385746257170381

`A206072(A374007(n+1))`
-/

namespace A206070.P1664385746257170381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A374007 (n + 1)).toNat

end

end A206070.P1664385746257170381

/-!
# A206071: Number of (n+1)X8 0..2 arrays with every 2X3 or 3X2 subblock having exactly three clockwise edge increases.

The programs for A206071, there is no canonical definition to state claims against.
-/

/-! ## A206071.P16454033734423075023

`A206072(A374008(n+1))`
-/

namespace A206071.P16454033734423075023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206072 (A374008 (n + 1)).toNat

end

end A206071.P16454033734423075023

/-!
# A206073: Binary numbers that represent irreducible polynomials over the rationals with coefficients restricted to {0,1}.

The programs for A206073, there is no canonical definition to state claims against.
-/

/-! ## A206073.P16503204256492095440

`A004284(A152021(n+1))`
-/

namespace A206073.P16503204256492095440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004284 (A152021 (n + 1)).toNat

end

end A206073.P16503204256492095440

/-! ## A206073.P6041566304232310651

`A007090(A152021(1+n))`
-/

namespace A206073.P6041566304232310651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A152021 (1 + n)).toNat

end

end A206073.P6041566304232310651

/-! ## A206073.P3085411409156068871

`A007088(A206074(n+1))`
-/

namespace A206073.P3085411409156068871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A206074 (n + 1)).toNat

end

end A206073.P3085411409156068871

/-!
# A206074: n-th irreducible polynomial over Q (with coefficients 0 or 1) evaluated at x=2.

The programs for A206074, there is no canonical definition to state claims against.
-/

/-! ## A206074.P11030047683426842282

`fp[A255574(n)]`
-/

namespace A206074.P11030047683426842282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A206074.P11030047683426842282

/-! ## A206074.P9722463457789939365

`lt[0, A257000(n)]`
-/

namespace A206074.P9722463457789939365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A206074.P9722463457789939365

/-! ## A206074.P16540531302636757765

`eq[1, A257000(1+n)]+1`
-/

namespace A206074.P16540531302636757765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206074.P16540531302636757765

/-! ## A206074.P5426763609332417967

`eq[2, A304751(1+n)]+1`
-/

namespace A206074.P5426763609332417967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304751 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206074.P5426763609332417967

/-! ## A206074.P17369551401399349226

`∪[A014580(n+1), A260427(n+1)]`
-/

namespace A206074.P17369551401399349226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206074.P17369551401399349226

/-! ## A206074.P2990634389990604518

`filter[A205006(2*n+1), A257000(#)]`
-/

namespace A206074.P2990634389990604518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P2990634389990604518

/-! ## A206074.P12488851329325791561

`A305430(a(n-1))` with `a(0)=2`
-/

namespace A206074.P12488851329325791561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A305430 (a (n - 1)).toNat

end

end A206074.P12488851329325791561

/-! ## A206074.P675741744473995522

`∑[runs[A305429(n+1)]]`
-/

namespace A206074.P675741744473995522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305429 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206074.P675741744473995522

/-! ## A206074.P7629221143549067998

`filter[A391247(n+1), A257000(#)]`
-/

namespace A206074.P7629221143549067998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P7629221143549067998

/-! ## A206074.P11781991865158948061

`eq[A010121(n), A257000(n)]`
-/

namespace A206074.P11781991865158948061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206074.P11781991865158948061

/-! ## A206074.P7951380605057270734

`eq[A010130(n), A257000(n)]`
-/

namespace A206074.P7951380605057270734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206074.P7951380605057270734

/-! ## A206074.P11911764246539972799

`eq[A010153(n), A257000(n)]`
-/

namespace A206074.P11911764246539972799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206074.P11911764246539972799

/-! ## A206074.P779355154515499421

`eq[A040037(n), A257000(n)]`
-/

namespace A206074.P779355154515499421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206074.P779355154515499421

/-! ## A206074.P17656122806752704387

`filter[A004280(n+1), A257000(#)]`
-/

namespace A206074.P17656122806752704387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P17656122806752704387

/-! ## A206074.P11538838280676208963

`filter[A004274(n), A257000(#)]`
-/

namespace A206074.P11538838280676208963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P11538838280676208963

/-! ## A206074.P17599734745865954533

`filter[A004276(n), A257000(#)]`
-/

namespace A206074.P17599734745865954533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P17599734745865954533

/-! ## A206074.P7590591471283587855

`filter[A004281(n), A257000(#)]`
-/

namespace A206074.P7590591471283587855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P7590591471283587855

/-! ## A206074.P15275272941821930841

`filter[A088948(n+1), A257000(#)]`
-/

namespace A206074.P15275272941821930841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P15275272941821930841

/-! ## A206074.P2130892869232156141

`filter[A053460(n+1), A257000(#)]`
-/

namespace A206074.P2130892869232156141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P2130892869232156141

/-! ## A206074.P2799211968373856593

`filter[A293205(n+1), A257000(#)]`
-/

namespace A206074.P2799211968373856593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A206074.P2799211968373856593

/-!
# A206075: Nonprimes in A206074 (a coding of irreducible polynomials).

The programs for A206075, there is no canonical definition to state claims against.
-/

/-! ## A206075.P18221882188499048819

`record[A305821(n+1)*n+1]`
-/

namespace A206075.P18221882188499048819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305821 (n + 1) * (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206075.P18221882188499048819

/-! ## A206075.P9573612846778463168

`record[A305430(2*(n+1))%A007918(2*(n+1))]`
-/

namespace A206075.P9573612846778463168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305430 (2 * (n + 1))) (A007918 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206075.P9573612846778463168

/-! ## A206075.P263115959638222487

`eq[n, A103164(A305429(n+1))]`
-/

namespace A206075.P263115959638222487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (A305429 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206075.P263115959638222487

/-! ## A206075.P12642949772611167219

`eq[A282462(n), A305429(n+1)]`
-/

namespace A206075.P12642949772611167219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206075.P12642949772611167219

/-! ## A206075.P15524477411067607113

`record[A093178(A113646(A206074(n+1)))]`
-/

namespace A206075.P15524477411067607113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A113646 (A206074 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206075.P15524477411067607113

/-! ## A206075.P3944563780108294947

`eq[A113520(n+1), A305429(n+1)]`
-/

namespace A206075.P3944563780108294947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206075.P3944563780108294947

/-!
# A206076: Numerator of p(n,-1/2), where p(n,x) is the polynomial given by A205073.

The programs for A206076, there is no canonical definition to state claims against.
-/

/-! ## A206076.P11419129437958967892

`A129594(2*(n+1))-A064707(A053644(2*(n+1)))`
-/

namespace A206076.P11419129437958967892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (2 * (n + 1)) - A064707 (A053644 (2 * (n + 1))).toNat

end

end A206076.P11419129437958967892

/-!
# A206077: Number of (n+1)X(n+1) 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206077, there is no canonical definition to state claims against.
-/

/-! ## A206077.P17920109041978092061

`A206085((n+1)²+n²)`
-/

namespace A206077.P17920109041978092061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 ((n + 1) ^ 2 + n ^ 2)

end

end A206077.P17920109041978092061

/-!
# A206078: Number of (n+1) X 2 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one.

The programs for A206078, the canonical program `A206078.P15720824958803013906` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206078 has offset 1).

The definition of A206078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206078.P15720824958803013906

`ogf((124+216x-64x^2+32x^3)/(1-6x-13x^2+4x^3-2x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206078

/-- `ogf((124+216x-64x^2+32x^3)/(1-6x-13x^2+4x^3-2x^4))` -/
def P15720824958803013906.Spec : Prop :=
  ∀ n, P15720824958803013906.a n = A206078 (n + 1)

theorem P15720824958803013906.correct : P15720824958803013906.Spec := by
  intro n
  simp only [A206078, Nat.add_sub_cancel]

end A206078

/-! ## A206078.P16326744281527416366

`A206085(∑[n]+1)`
-/

namespace A206078.P16326744281527416366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206078.P16326744281527416366

namespace A206078

/-- `A206085(∑[n]+1)` -/
def P16326744281527416366.Spec : Prop :=
  ∀ n, P16326744281527416366.a n = A206078 (n + 1)

end A206078

/-! ## A206078.P8034251852208995492

`record[A010054(n)*A206085(n+1)]`
-/

namespace A206078.P8034251852208995492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206078.P8034251852208995492

namespace A206078

/-- `record[A010054(n)*A206085(n+1)]` -/
def P8034251852208995492.Spec : Prop :=
  ∀ n, P8034251852208995492.a n = A206078 (n + 1)

end A206078

/-! ## A206078.P10396256598554114093

`record[root(A206085(n+1), A056588(n))]`
-/

namespace A206078.P10396256598554114093
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206085 (n + 1) : ℝ) ^ (1 / (A056588 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206078.P10396256598554114093

namespace A206078

/-- `record[root(A206085(n+1), A056588(n))]` -/
def P10396256598554114093.Spec : Prop :=
  ∀ n, P10396256598554114093.a n = (A206078 (n + 1) : ℝ)

end A206078

/-!
# A206079: Number of (n+1)X3 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206079, there is no canonical definition to state claims against.
-/

/-! ## A206079.P6299199669460471536

`A206085(∑[n+1]+2)`
-/

namespace A206079.P6299199669460471536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206079.P6299199669460471536

/-! ## A206079.P16700085890693100864

`record[A010054(n)*A206085(n+2)]`
-/

namespace A206079.P16700085890693100864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206085 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206079.P16700085890693100864

/-! ## A206079.P5291115190246092662

`record[gcd(A002262(n), A206085(n+2))]`
-/

namespace A206079.P5291115190246092662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206085 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206079.P5291115190246092662

/-! ## A206079.P937145947134379701

`record[A206085(record[A338434(3*n+5)])]`
-/

namespace A206079.P937145947134379701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338434 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206079.P937145947134379701

/-! ## A206079.P2805392057436411587

`record[A206085(A198453(n+1))]`
-/

namespace A206079.P2805392057436411587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206079.P2805392057436411587

/-!
# A206080: Number of (n+1)X4 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206080, there is no canonical definition to state claims against.
-/

/-! ## A206080.P15116621874650832976

`A206085(∑[n+2]+4)`
-/

namespace A206080.P15116621874650832976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206080.P15116621874650832976

/-!
# A206081: Number of (n+1)X5 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206081, there is no canonical definition to state claims against.
-/

/-! ## A206081.P8170700959905336069

`A206085(A374004(n+1))`
-/

namespace A206081.P8170700959905336069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A374004 (n + 1)).toNat

end

end A206081.P8170700959905336069

/-! ## A206081.P2104065835937465443

`A206085(A141214(n+1))`
-/

namespace A206081.P2104065835937465443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A141214 (n + 1)).toNat

end

end A206081.P2104065835937465443

/-!
# A206082: Number of (n+1)X6 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206082, there is no canonical definition to state claims against.
-/

/-! ## A206082.P14460704384264467481

`A206085(A374005(n+1))`
-/

namespace A206082.P14460704384264467481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A374005 (n + 1)).toNat

end

end A206082.P14460704384264467481

/-! ## A206082.P8837258865460152865

`A206085(Δ[A264443(n)])`
-/

namespace A206082.P8837258865460152865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (f1 (n + 1) - f1 n).toNat

end

end A206082.P8837258865460152865

/-!
# A206083: Number of (n+1)X7 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one.

The programs for A206083, there is no canonical definition to state claims against.
-/

/-! ## A206083.P9734302878083158427

`A206085(A374007(n+1))`
-/

namespace A206083.P9734302878083158427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206085 (A374007 (n + 1)).toNat

end

end A206083.P9734302878083158427

/-!
# A206086: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206086, there is no canonical definition to state claims against.
-/

/-! ## A206086.P18006971463789512935

`A206094((n+1)²+n²)`
-/

namespace A206086.P18006971463789512935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 ((n + 1) ^ 2 + n ^ 2)

end

end A206086.P18006971463789512935

/-! ## A206086.P714815253038053174

`record[A206094(A152271(n²))]`
-/

namespace A206086.P714815253038053174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206086.P714815253038053174

/-! ## A206086.P14659768894068522580

`record[A206094(A330613(n+1))]`
-/

namespace A206086.P14659768894068522580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206086.P14659768894068522580

/-! ## A206086.P4976646271004565836

`record[A003982(n)*A206094(n+1)]`
-/

namespace A206086.P4976646271004565836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206086.P4976646271004565836

/-!
# A206087: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206087, there is no canonical definition to state claims against.
-/

/-! ## A206087.P9168656372244213939

`A206094(∑[n]+1)`
-/

namespace A206087.P9168656372244213939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206087.P9168656372244213939

/-! ## A206087.P8458442660968897420

`record[A206094(n+1)/A155495(n)]`
-/

namespace A206087.P8458442660968897420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206094 (n + 1) : ℚ) / (A155495 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206087.P8458442660968897420

/-! ## A206087.P16782642947280098661

`record[root(A206094(n+1), A290824(n))]`
-/

namespace A206087.P16782642947280098661
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206094 (n + 1) : ℝ) ^ (1 / (A290824 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206087.P16782642947280098661

/-! ## A206087.P3569938698300701158

`record[gcd(A002262(n), A206094(n+1))]`
-/

namespace A206087.P3569938698300701158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206094 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206087.P3569938698300701158

/-!
# A206088: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206088, the canonical program `A206088.P7924064160311186642` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206088 has offset 1).

The definition of A206088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206088.P7924064160311186642

`6*A206209(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A206088

/-- `6*A206209(n+1)` -/
def P7924064160311186642.Spec : Prop :=
  ∀ n, P7924064160311186642.a n = A206088 (n + 1)

theorem P7924064160311186642.correct : P7924064160311186642.Spec := by
  intro n
  simp only [A206088, Nat.add_sub_cancel]

end A206088

/-! ## A206088.P18153205584607844776

`A206094(∑[n+1]+2)`
-/

namespace A206088.P18153205584607844776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206088.P18153205584607844776

namespace A206088

/-- `A206094(∑[n+1]+2)` -/
def P18153205584607844776.Spec : Prop :=
  ∀ n, P18153205584607844776.a n = A206088 (n + 1)

end A206088

/-! ## A206088.P14725906198443286160

`6*A206215(∑[n+1]+2)`
-/

namespace A206088.P14725906198443286160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206215 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206088.P14725906198443286160

namespace A206088

/-- `6*A206215(∑[n+1]+2)` -/
def P14725906198443286160.Spec : Prop :=
  ∀ n, P14725906198443286160.a n = A206088 (n + 1)

end A206088

/-! ## A206088.P7135546153947045948

`record[gcd(A002262(n), A206094(n+2))]`
-/

namespace A206088.P7135546153947045948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206094 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206088.P7135546153947045948

namespace A206088

/-- `record[gcd(A002262(n), A206094(n+2))]` -/
def P7135546153947045948.Spec : Prop :=
  ∀ n, (P7135546153947045948.a n : ℤ) = A206088 (n + 1)

end A206088

/-!
# A206089: Number of (n+1) X 4 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206089, there is no canonical definition to state claims against.
-/

/-! ## A206089.P10734477098659756936

`6*A206210(n+1)`
-/

namespace A206089.P10734477098659756936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206210 (n + 1)

end

end A206089.P10734477098659756936

/-! ## A206089.P4977800255650815387

`A206094(∑[n+2]+4)`
-/

namespace A206089.P4977800255650815387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206089.P4977800255650815387

/-! ## A206089.P7159248804551904575

`6*A206215(A167614(n+1))`
-/

namespace A206089.P7159248804551904575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206215 (A167614 (n + 1)).toNat

end

end A206089.P7159248804551904575

/-!
# A206090: Number of (n+1) X 5 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206090, there is no canonical definition to state claims against.
-/

/-! ## A206090.P9529766456884398290

`6*A206211(1+n)`
-/

namespace A206090.P9529766456884398290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206211 (1 + n)

end

end A206090.P9529766456884398290

/-! ## A206090.P7697219094211775227

`A206094(A374004(n+1))`
-/

namespace A206090.P7697219094211775227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A374004 (n + 1)).toNat

end

end A206090.P7697219094211775227

/-!
# A206091: Number of (n+1) X 6 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206091, there is no canonical definition to state claims against.
-/

/-! ## A206091.P5407425174405621293

`6*A206212(n+1)`
-/

namespace A206091.P5407425174405621293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206212 (n + 1)

end

end A206091.P5407425174405621293

/-! ## A206091.P10492656776203546498

`A206094(A374005(n+1))`
-/

namespace A206091.P10492656776203546498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A374005 (n + 1)).toNat

end

end A206091.P10492656776203546498

/-! ## A206091.P6425625134165759883

`6*A206215(A167614(n+3)+2)`
-/

namespace A206091.P6425625134165759883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206215 (A167614 (n + 3) + 2).toNat

end

end A206091.P6425625134165759883

/-!
# A206092: Number of (n+1) X 7 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206092, there is no canonical definition to state claims against.
-/

/-! ## A206092.P16253272293312048011

`6*A206213(n+1)`
-/

namespace A206092.P16253272293312048011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206213 (n + 1)

end

end A206092.P16253272293312048011

/-! ## A206092.P11342686779099256652

`A206094(A374007(n+1))`
-/

namespace A206092.P11342686779099256652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A374007 (n + 1)).toNat

end

end A206092.P11342686779099256652

/-!
# A206093: Number of (n+1) X 8 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206093, there is no canonical definition to state claims against.
-/

/-! ## A206093.P14028504531780390739

`6*A206214(n+1)`
-/

namespace A206093.P14028504531780390739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206214 (n + 1)

end

end A206093.P14028504531780390739

/-! ## A206093.P16162390931517253971

`A206094(A374008(n+1))`
-/

namespace A206093.P16162390931517253971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206094 (A374008 (n + 1)).toNat

end

end A206093.P16162390931517253971

/-! ## A206093.P12756433577967930971

`6*A206215(A167499(n+5)+2)`
-/

namespace A206093.P12756433577967930971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206215 (A167499 (n + 5) + 2).toNat

end

end A206093.P12756433577967930971

/-! ## A206093.P3419654871105803606

`6*A206215(A055998(n+4)+10)`
-/

namespace A206093.P3419654871105803606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A206215 (A055998 (n + 4) + 10).toNat

end

end A206093.P3419654871105803606

/-!
# A206095: a(n) = smallest number congruent to a quadratic non-residue modulo each of the first n odd primes.

The programs for A206095, there is no canonical definition to state claims against.
-/

/-! ## A206095.P5849704312307317529

`A237437(n+1)%A000040(A038623(n+1))`
-/

namespace A206095.P5849704312307317529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237437 (n + 1)) (A000040 (A038623 (n + 1)).toNat)

end

end A206095.P5849704312307317529

/-! ## A206095.P13422242049496153762

`A237437(n+1)%A001359(A002110(n))`
-/

namespace A206095.P13422242049496153762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237437 (n + 1)) (A001359 (A002110 n).toNat)

end

end A206095.P13422242049496153762

/-! ## A206095.P13944898067620773714

`A392775(A241896(n+1))%A007097(A000040(n+1))`
-/

namespace A206095.P13944898067620773714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392775 (A241896 (n + 1)).toNat) (A007097 (A000040 (n + 1)).toNat)

end

end A206095.P13944898067620773714

/-!
# A206096: Fibonacci numbers with 4 distinct prime divisors, each of multiplicity 1.

The programs for A206096, there is no canonical definition to state claims against.
-/

/-! ## A206096.P6095656573737974011

`A000045(A114813(n+1))`
-/

namespace A206096.P6095656573737974011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A114813 (n + 1)).toNat

end

end A206096.P6095656573737974011

/-! ## A206096.P17958932139535928511

`A069110(eq[4, A038575(n)])`
-/

namespace A206096.P17958932139535928511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206096.P17958932139535928511

/-! ## A206096.P15170927043062021259

`A053602(2*A114813(n+1))`
-/

namespace A206096.P15170927043062021259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A114813 (n + 1)).toNat

end

end A206096.P15170927043062021259

/-! ## A206096.P17737458179310951197

`A303216(A141214(n+1))`
-/

namespace A206096.P17737458179310951197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303216 (A141214 (n + 1)).toNat

end

end A206096.P17737458179310951197

/-!
# A206097: Fibonacci numbers F that are squarefree semiprimes such that F+2 or F-2 is also a squarefree semiprime.

The programs for A206097, there is no canonical definition to state claims against.
-/

/-! ## A206097.P8839226020654742455

`A053409(comp[floor(2^(n-1))])`
-/

namespace A206097.P8839226020654742455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053409 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A206097.P8839226020654742455

