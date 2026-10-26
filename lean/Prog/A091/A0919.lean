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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A091901: Values of n for which sigma(n) < e^gamma * n * log(log(n)).

The programs for A091901, there is no canonical definition to state claims against.
-/

/-! ## A091901.P13543157758078521616

`lt[4, A241972(n+1)]+1`
-/

namespace A091901.P13543157758078521616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091901.P13543157758078521616

/-! ## A091901.P16755677077565530545

`comp[A067698(n+1)-2]+2`
-/

namespace A091901.P16755677077565530545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067698 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A091901.P16755677077565530545

/-! ## A091901.P14177842499184376664

`lt[(A223135(n)+1)²+1, n]`
-/

namespace A091901.P14177842499184376664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A223135 n + 1) ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091901.P14177842499184376664

/-! ## A091901.P12585939910358864399

`lt[A137849(n+1)+1, n-2]+1`
-/

namespace A091901.P12585939910358864399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137849 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091901.P12585939910358864399

/-! ## A091901.P914493333488250547

`lt[4, A241972(A028310(n))]`
-/

namespace A091901.P914493333488250547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241972 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091901.P914493333488250547

/-! ## A091901.P4410650051375027492

`lt[A056000(A223135(n)), n]`
-/

namespace A091901.P4410650051375027492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 (A223135 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091901.P4410650051375027492

/-! ## A091901.P17593246274888694837

`lt[A052905(A226378(n)), n]`
-/

namespace A091901.P17593246274888694837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (A226378 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091901.P17593246274888694837

/-! ## A091901.P15931153497076203599

`A020725(lt[4, A241972(n+1)])`
-/

namespace A091901.P15931153497076203599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A091901.P15931153497076203599

/-! ## A091901.P1106965696164798305

`lt[A036035(A032741(n)), floor(n/2)]`
-/

namespace A091901.P1106965696164798305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091901.P1106965696164798305

/-! ## A091901.P3563920496169005272

`lt[A022487(A000005(n+1)+1), n]+1`
-/

namespace A091901.P3563920496169005272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022487 (A000005 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091901.P3563920496169005272

/-!
# A091903: Expansion of x/((1+5*x)*(1-10*x)).

The programs for A091903, the canonical program `A091903.P296305502625969321` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091903 has offset 0).

The definition of A091903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-5x-50x^2))` (program `A091903.P296305502625969321`, by `A091903.P296305502625969321.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091903.P296305502625969321

`ogf(x/(1-5x-50x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091903

/-- `ogf(x/(1-5x-50x^2))` -/
def P296305502625969321.Spec : Prop :=
  ∀ n, P296305502625969321.a n = A091903 n

theorem P296305502625969321.correct : P296305502625969321.Spec := by
  intro n
  simp only [A091903]

end A091903

/-! ## A091903.P11418465112878245536

`5*a(n-1)+50*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A091903.P11418465112878245536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 * a (n - 1) + 50 * a (n - 2)

end

end A091903.P11418465112878245536

namespace A091903

/-- `5*a(n-1)+50*a(n-2)` -/
def P11418465112878245536.Spec : Prop :=
  ∀ n, (P11418465112878245536.a n : ℤ) = A091903 n

end A091903

/-! ## A091903.P10883117365231238048

`5^(n-1)*A001045(n)`
-/

namespace A091903.P10883117365231238048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001045 n : ℚ)

end

end A091903.P10883117365231238048

namespace A091903

/-- `5^(n-1)*A001045(n)` -/
def P10883117365231238048.Spec : Prop :=
  ∀ n, P10883117365231238048.a n = (A091903 n : ℚ)

end A091903

/-! ## A091903.P11914410415896184028

`10^n/15-(-5)^n/15`
-/

namespace A091903.P11914410415896184028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) / 15 - ((-5) ^ n : ℚ) / 15

end

end A091903.P11914410415896184028

namespace A091903

/-- `10^n/15-(-5)^n/15` -/
def P11914410415896184028.Spec : Prop :=
  ∀ n, P11914410415896184028.a n = (A091903 n : ℚ)

end A091903

/-! ## A091903.P1096451406816458752

`A091883(n+1)/50`
-/

namespace A091903.P1096451406816458752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091883 (n + 1) : ℚ) / 50

end

end A091903.P1096451406816458752

namespace A091903

/-- `A091883(n+1)/50` -/
def P1096451406816458752.Spec : Prop :=
  ∀ n, P1096451406816458752.a n = (A091903 n : ℚ)

end A091903

/-! ## A091903.P17036108247612723545

`5^(n-1)*ceil(A000225(n)/3)`
-/

namespace A091903.P17036108247612723545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (⌈(A000225 n : ℚ) / 3⌉ : ℚ)

end

end A091903.P17036108247612723545

namespace A091903

/-- `5^(n-1)*ceil(A000225(n)/3)` -/
def P17036108247612723545.Spec : Prop :=
  ∀ n, P17036108247612723545.a n = (A091903 n : ℚ)

end A091903

/-! ## A091903.P2875405878335523018

`A001045(n)/2*A020699(n)`
-/

namespace A091903.P2875405878335523018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 n : ℚ) / 2 * (A020699 n : ℚ)

end

end A091903.P2875405878335523018

namespace A091903

/-- `A001045(n)/2*A020699(n)` -/
def P2875405878335523018.Spec : Prop :=
  ∀ n, P2875405878335523018.a n = (A091903 n : ℚ)

end A091903

/-! ## A091903.P15848902351570273743

`A001045(n)/6*A003948(n)`
-/

namespace A091903.P15848902351570273743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 n : ℚ) / 6 * (A003948 n : ℚ)

end

end A091903.P15848902351570273743

namespace A091903

/-- `A001045(n)/6*A003948(n)` -/
def P15848902351570273743.Spec : Prop :=
  ∀ n, P15848902351570273743.a n = (A091903 n : ℚ)

end A091903

/-! ## A091903.P13832764674226841792

`A001045(n)*A098615(A004273(n))`
-/

namespace A091903.P13832764674226841792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A098615 (A004273 n).toNat

end

end A091903.P13832764674226841792

namespace A091903

/-- `A001045(n)*A098615(A004273(n))` -/
def P13832764674226841792.Spec : Prop :=
  ∀ n, P13832764674226841792.a n = A091903 n

end A091903

/-! ## A091903.P10448126724326454803

`A001045(n)*A074872(A004280(n+1))`
-/

namespace A091903.P10448126724326454803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A074872 (A004280 (n + 1)).toNat

end

end A091903.P10448126724326454803

namespace A091903

/-- `A001045(n)*A074872(A004280(n+1))` -/
def P10448126724326454803.Spec : Prop :=
  ∀ n, P10448126724326454803.a n = A091903 n

end A091903

/-! ## A091903.P13055004013563150921

`A093136(n)/(A000225(n+1)+1)*A014113(n)`
-/

namespace A091903.P13055004013563150921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093136 n : ℚ) / (A000225 (n + 1) + 1 : ℚ) * (A014113 n : ℚ)

end

end A091903.P13055004013563150921

namespace A091903

/-- `A093136(n)/(A000225(n+1)+1)*A014113(n)` -/
def P13055004013563150921.Spec : Prop :=
  ∀ n, P13055004013563150921.a n = (A091903 n : ℚ)

end A091903

/-!
# A091904: Expansion of x/((1+4*x)*(1-8*x)).

The programs for A091904, the canonical program `A091904.P755681524714239175` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091904 has offset 0).

The definition of A091904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-4x-32x^2))` (program `A091904.P755681524714239175`, by `A091904.P755681524714239175.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091904.P755681524714239175

`ogf(x/(1-4x-32x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091904

/-- `ogf(x/(1-4x-32x^2))` -/
def P755681524714239175.Spec : Prop :=
  ∀ n, P755681524714239175.a n = A091904 n

theorem P755681524714239175.correct : P755681524714239175.Spec := by
  intro n
  simp only [A091904]

end A091904

/-! ## A091904.P2293839561425048230

`4*a(n-1)+32*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A091904.P2293839561425048230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 1) + 32 * a (n - 2)

end

end A091904.P2293839561425048230

namespace A091904

/-- `4*a(n-1)+32*a(n-2)` -/
def P2293839561425048230.Spec : Prop :=
  ∀ n, (P2293839561425048230.a n : ℤ) = A091904 n

end A091904

/-! ## A091904.P4551429134803034786

`4^(n-1)*A001045(n)`
-/

namespace A091904.P4551429134803034786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001045 n : ℚ)

end

end A091904.P4551429134803034786

namespace A091904

/-- `4^(n-1)*A001045(n)` -/
def P4551429134803034786.Spec : Prop :=
  ∀ n, P4551429134803034786.a n = (A091904 n : ℚ)

end A091904

/-! ## A091904.P15558874771272420907

`8^n/12-(-4)^n/12`
-/

namespace A091904.P15558874771272420907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℚ) / 12 - ((-4) ^ n : ℚ) / 12

end

end A091904.P15558874771272420907

namespace A091904

/-- `8^n/12-(-4)^n/12` -/
def P15558874771272420907.Spec : Prop :=
  ∀ n, P15558874771272420907.a n = (A091904 n : ℚ)

end A091904

/-! ## A091904.P8618986542490767666

`A091905(n+1)/32`
-/

namespace A091904.P8618986542490767666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091905 (n + 1) : ℚ) / 32

end

end A091904.P8618986542490767666

namespace A091904

/-- `A091905(n+1)/32` -/
def P8618986542490767666.Spec : Prop :=
  ∀ n, P8618986542490767666.a n = (A091904 n : ℚ)

end A091904

/-! ## A091904.P4301737684403364769

`lcm(floor(2^(n-1))², round(2^n/3))`
-/

namespace A091904.P4301737684403364769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2) (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3))

end

end A091904.P4301737684403364769

namespace A091904

/-- `lcm(floor(2^(n-1))², round(2^n/3))` -/
def P4301737684403364769.Spec : Prop :=
  ∀ n, (P4301737684403364769.a n : ℤ) = A091904 n

end A091904

/-! ## A091904.P2099016496716363723

`A003683(n)*A011782(n)`
-/

namespace A091904.P2099016496716363723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n * A011782 n

end

end A091904.P2099016496716363723

namespace A091904

/-- `A003683(n)*A011782(n)` -/
def P2099016496716363723.Spec : Prop :=
  ∀ n, P2099016496716363723.a n = A091904 n

end A091904

/-! ## A091904.P1466937323743668775

`A003683(n)*A131577(n)`
-/

namespace A091904.P1466937323743668775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n * A131577 n

end

end A091904.P1466937323743668775

namespace A091904

/-- `A003683(n)*A131577(n)` -/
def P1466937323743668775.Spec : Prop :=
  ∀ n, P1466937323743668775.a n = A091904 n

end A091904

/-! ## A091904.P7007917166679374403

`A003683(n)*A158780(2*n)`
-/

namespace A091904.P7007917166679374403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n * A158780 (2 * n)

end

end A091904.P7007917166679374403

namespace A091904

/-- `A003683(n)*A158780(2*n)` -/
def P7007917166679374403.Spec : Prop :=
  ∀ n, P7007917166679374403.a n = A091904 n

end A091904

/-! ## A091904.P13647334681614725980

`A001045(n)*A166444(2*n)`
-/

namespace A091904.P13647334681614725980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A166444 (2 * n)

end

end A091904.P13647334681614725980

namespace A091904

/-- `A001045(n)*A166444(2*n)` -/
def P13647334681614725980.Spec : Prop :=
  ∀ n, P13647334681614725980.a n = A091904 n

end A091904

/-! ## A091904.P6958781520441848825

`A166444(2*n)*A167167(n)`
-/

namespace A091904.P6958781520441848825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (2 * n) * A167167 n

end

end A091904.P6958781520441848825

namespace A091904

/-- `A166444(2*n)*A167167(n)` -/
def P6958781520441848825.Spec : Prop :=
  ∀ n, P6958781520441848825.a n = A091904 n

end A091904

/-! ## A091904.P12399870997551466559

`A001045(n)*A011782(n)*A011782(n)`
-/

namespace A091904.P12399870997551466559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A011782 n * A011782 n

end

end A091904.P12399870997551466559

namespace A091904

/-- `A001045(n)*A011782(n)*A011782(n)` -/
def P12399870997551466559.Spec : Prop :=
  ∀ n, P12399870997551466559.a n = A091904 n

end A091904

/-! ## A091904.P1066731301793378249

`A001045(n)*A131577(n)*A131577(n)`
-/

namespace A091904.P1066731301793378249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A131577 n * A131577 n

end

end A091904.P1066731301793378249

namespace A091904

/-- `A001045(n)*A131577(n)*A131577(n)` -/
def P1066731301793378249.Spec : Prop :=
  ∀ n, P1066731301793378249.a n = A091904 n

end A091904

/-! ## A091904.P10083624596587930888

`A003683(n)/A062092(n)*A370627(n)`
-/

namespace A091904.P10083624596587930888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003683 n : ℚ) / (A062092 n : ℚ) * (A370627 n : ℚ)

end

end A091904.P10083624596587930888

namespace A091904

/-- `A003683(n)/A062092(n)*A370627(n)` -/
def P10083624596587930888.Spec : Prop :=
  ∀ n, P10083624596587930888.a n = (A091904 n : ℚ)

end A091904

/-! ## A091904.P3151720660773875087

`A000302(n)/A000079(n+1)*A003683(n)`
-/

namespace A091904.P3151720660773875087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n : ℚ) / (A000079 (n + 1) : ℚ) * (A003683 n : ℚ)

end

end A091904.P3151720660773875087

namespace A091904

/-- `A000302(n)/A000079(n+1)*A003683(n)` -/
def P3151720660773875087.Spec : Prop :=
  ∀ n, P3151720660773875087.a n = (A091904 n : ℚ)

end A091904

/-! ## A091904.P1426246522799232444

`A159277(n+1)/8`
-/

namespace A091904.P1426246522799232444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159277 (n + 1) : ℚ) / 8

end

end A091904.P1426246522799232444

namespace A091904

/-- `A159277(n+1)/8` -/
def P1426246522799232444.Spec : Prop :=
  ∀ n, P1426246522799232444.a n = (A091904 n : ℚ)

end A091904

/-!
# A091905: Expansion of (1-4*x)/((1+4*x)*(1-8*x)).

The programs for A091905, the canonical program `A091905.P15952121349238191406` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091905 has offset 0).

The definition of A091905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x)/(1-4x-32x^2))` (program `A091905.P15952121349238191406`, by `A091905.P15952121349238191406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091905.P15952121349238191406

`ogf((1-4x)/(1-4x-32x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091905

/-- `ogf((1-4x)/(1-4x-32x^2))` -/
def P15952121349238191406.Spec : Prop :=
  ∀ n, P15952121349238191406.a n = A091905 n

theorem P15952121349238191406.correct : P15952121349238191406.Spec := by
  intro n
  simp only [A091905]

end A091905

/-! ## A091905.P1730123218682396332

`4^n*A078008(n)`
-/

namespace A091905.P1730123218682396332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A078008 n

end

end A091905.P1730123218682396332

namespace A091905

/-- `4^n*A078008(n)` -/
def P1730123218682396332.Spec : Prop :=
  ∀ n, P1730123218682396332.a n = A091905 n

end A091905

/-! ## A091905.P5808221518667859113

`8^n/3+2*(-4)^n/3`
-/

namespace A091905.P5808221518667859113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℚ) / 3 + (2 * (-4) ^ n : ℚ) / 3

end

end A091905.P5808221518667859113

namespace A091905

/-- `8^n/3+2*(-4)^n/3` -/
def P5808221518667859113.Spec : Prop :=
  ∀ n, P5808221518667859113.a n = (A091905 n : ℚ)

end A091905

/-! ## A091905.P5706534817999422584

`4*(a(n-1)+8*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A091905.P5706534817999422584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * (a (n - 1) + 8 * a (n - 2))

end

end A091905.P5706534817999422584

namespace A091905

/-- `4*(a(n-1)+8*a(n-2))` -/
def P5706534817999422584.Spec : Prop :=
  ∀ n, (P5706534817999422584.a n : ℤ) = A091905 n

end A091905

/-! ## A091905.P6016596758231109990

`abs((xor(1, 2^n)-1)*2^n*ceil((-2)^n/3))`
-/

namespace A091905.P6016596758231109990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.xor 1 (2 ^ n) : ℤ) - 1) * ((2 ^ n : ℤ) * ⌈((-2) ^ n : ℚ) / 3⌉)|

end

end A091905.P6016596758231109990

namespace A091905

/-- `abs((xor(1, 2^n)-1)*2^n*ceil((-2)^n/3))` -/
def P6016596758231109990.Spec : Prop :=
  ∀ n, P6016596758231109990.a n = A091905 n

end A091905

/-! ## A091905.P14901625361518629360

`A054881(n)*A077552(n)`
-/

namespace A091905.P14901625361518629360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054881 n * A077552 n

end

end A091905.P14901625361518629360

namespace A091905

/-- `A054881(n)*A077552(n)` -/
def P14901625361518629360.Spec : Prop :=
  ∀ n, P14901625361518629360.a n = A091905 n

end A091905

/-! ## A091905.P8294145625417265342

`A081294(n)*A097073(n)`
-/

namespace A091905.P8294145625417265342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n * A097073 n

end

end A091905.P8294145625417265342

namespace A091905

/-- `A081294(n)*A097073(n)` -/
def P8294145625417265342.Spec : Prop :=
  ∀ n, P8294145625417265342.a n = A091905 n

end A091905

/-! ## A091905.P15342071576869674450

`A083086(n)*A122803(n)`
-/

namespace A091905.P15342071576869674450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083086 n * A122803 n

end

end A091905.P15342071576869674450

namespace A091905

/-- `A083086(n)*A122803(n)` -/
def P15342071576869674450.Spec : Prop :=
  ∀ n, P15342071576869674450.a n = A091905 n

end A091905

/-! ## A091905.P9105864111807922675

`A151575(n)*A262710(n)`
-/

namespace A091905.P9105864111807922675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n * A262710 n

end

end A091905.P9105864111807922675

namespace A091905

/-- `A151575(n)*A262710(n)` -/
def P9105864111807922675.Spec : Prop :=
  ∀ n, P9105864111807922675.a n = A091905 n

end A091905

/-! ## A091905.P12194785520115314304

`lcm(A054881(n), A081654(n))`
-/

namespace A091905.P12194785520115314304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054881 n) (A081654 n)

end

end A091905.P12194785520115314304

namespace A091905

/-- `lcm(A054881(n), A081654(n))` -/
def P12194785520115314304.Spec : Prop :=
  ∀ n, (P12194785520115314304.a n : ℤ) = A091905 n

end A091905

/-! ## A091905.P4269635317940760295

`abs(A000079(n)*A083086(n))`
-/

namespace A091905.P4269635317940760295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n * A083086 n|

end

end A091905.P4269635317940760295

namespace A091905

/-- `abs(A000079(n)*A083086(n))` -/
def P4269635317940760295.Spec : Prop :=
  ∀ n, P4269635317940760295.a n = A091905 n

end A091905

/-! ## A091905.P10688967263771771041

`A054881(n)*A151821(n+1)`
-/

namespace A091905.P10688967263771771041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054881 n * A151821 (n + 1)

end

end A091905.P10688967263771771041

namespace A091905

/-- `A054881(n)*A151821(n+1)` -/
def P10688967263771771041.Spec : Prop :=
  ∀ n, P10688967263771771041.a n = A091905 n

end A091905

/-! ## A091905.P13328966056692209781

`A078008(n)*A099430(2*n)`
-/

namespace A091905.P13328966056692209781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n * A099430 (2 * n)

end

end A091905.P13328966056692209781

namespace A091905

/-- `A078008(n)*A099430(2*n)` -/
def P13328966056692209781.Spec : Prop :=
  ∀ n, P13328966056692209781.a n = A091905 n

end A091905

/-! ## A091905.P6790451788190039887

`A078008(n)*A199572(2*n)`
-/

namespace A091905.P6790451788190039887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n * A199572 (2 * n)

end

end A091905.P6790451788190039887

namespace A091905

/-- `A078008(n)*A199572(2*n)` -/
def P6790451788190039887.Spec : Prop :=
  ∀ n, P6790451788190039887.a n = A091905 n

end A091905

/-! ## A091905.P1651207246075079699

`A000079(n)²*A230096(2*n)`
-/

namespace A091905.P1651207246075079699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A230096 (2 * n)

end

end A091905.P1651207246075079699

namespace A091905

/-- `A000079(n)²*A230096(2*n)` -/
def P1651207246075079699.Spec : Prop :=
  ∀ n, P1651207246075079699.a n = A091905 n

end A091905

/-! ## A091905.P11416297602148346410

`A078008(n)*A135520(2*n+1)`
-/

namespace A091905.P11416297602148346410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n * A135520 (2 * n + 1)

end

end A091905.P11416297602148346410

namespace A091905

/-- `A078008(n)*A135520(2*n+1)` -/
def P11416297602148346410.Spec : Prop :=
  ∀ n, P11416297602148346410.a n = A091905 n

end A091905

/-! ## A091905.P3010853951188191144

`A000079(2*n)*A230096(2*n)`
-/

namespace A091905.P3010853951188191144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A230096 (2 * n)

end

end A091905.P3010853951188191144

namespace A091905

/-- `A000079(2*n)*A230096(2*n)` -/
def P3010853951188191144.Spec : Prop :=
  ∀ n, P3010853951188191144.a n = A091905 n

end A091905

/-! ## A091905.P11574933738841283902

`abs(A011782(n+1)²*A151575(n))`
-/

namespace A091905.P11574933738841283902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) ^ 2 * A151575 n|

end

end A091905.P11574933738841283902

namespace A091905

/-- `abs(A011782(n+1)²*A151575(n))` -/
def P11574933738841283902.Spec : Prop :=
  ∀ n, P11574933738841283902.a n = A091905 n

end A091905

/-! ## A091905.P15543610725466131285

`abs(A011782(2*n+1)*A151575(n))`
-/

namespace A091905.P15543610725466131285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (2 * n + 1) * A151575 n|

end

end A091905.P15543610725466131285

namespace A091905

/-- `abs(A011782(2*n+1)*A151575(n))` -/
def P15543610725466131285.Spec : Prop :=
  ∀ n, P15543610725466131285.a n = A091905 n

end A091905

/-! ## A091905.P5278489154651154493

`abs(A117575(2*(n+1))²*Δ[A001045(n)])`
-/

namespace A091905.P5278489154651154493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117575 (2 * (n + 1)) ^ 2 * (f1 (n + 1) - f1 n)|

end

end A091905.P5278489154651154493

namespace A091905

/-- `abs(A117575(2*(n+1))²*Δ[A001045(n)])` -/
def P5278489154651154493.Spec : Prop :=
  ∀ n, P5278489154651154493.a n = A091905 n

end A091905

/-!
# A091906: E.g.f.: exp(1-sqrt(3-2*exp(x))).

The programs for A091906, there is no canonical definition to state claims against.
-/

/-! ## A091906.P10125610029370089886

`A136409(A286286(n))+1`
-/

namespace A091906.P10125610029370089886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 (A286286 n).toNat + 1

end

end A091906.P10125610029370089886

/-! ## A091906.P5344315490895703368

`A284000(A320350(n)+2)`
-/

namespace A091906.P5344315490895703368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284000 (A320350 n + 2).toNat

end

end A091906.P5344315490895703368

/-!
# A091908: Number of interior intersection points made by the straight line segments connecting the edges of an equilateral triangle with the n-1 points resulting from a subdivision of the sides into n equal pieces, counting coinciding intersection points only once.

The programs for A091908, there is no canonical definition to state claims against.
-/

/-! ## A091908.P12728716319115487966

`A331782(n+1)-3*(n+1)`
-/

namespace A091908.P12728716319115487966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331782 (n + 1) - (3 * (n + 1) : ℤ)

end

end A091908.P12728716319115487966

/-! ## A091908.P12266290491949559738

`A331782(n+1)-A016789(n)-1`
-/

namespace A091908.P12266290491949559738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331782 (n + 1) - A016789 n - 1

end

end A091908.P12266290491949559738

/-! ## A091908.P10739554863970625041

`A331782(n+1)-A016777(n)-2`
-/

namespace A091908.P10739554863970625041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331782 (n + 1) - A016777 n - 2

end

end A091908.P10739554863970625041

/-! ## A091908.P16608525393784190207

`A033428(n)-2*A331423(n+1)`
-/

namespace A091908.P16608525393784190207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - 2 * A331423 (n + 1)

end

end A091908.P16608525393784190207

/-! ## A091908.P5698780570119560052

`A331782(n+1)+n-A004767(n)`
-/

namespace A091908.P5698780570119560052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331782 (n + 1) + (n : ℤ) - A004767 n

end

end A091908.P5698780570119560052

/-! ## A091908.P11145779066914817066

`A033428(n)-A005843(A331423(n+1))`
-/

namespace A091908.P11145779066914817066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - A005843 (A331423 (n + 1)).toNat

end

end A091908.P11145779066914817066

/-! ## A091908.P11369241307396280118

`A056107(n)-A005408(A331423(n+1))`
-/

namespace A091908.P11369241307396280118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n - A005408 (A331423 (n + 1)).toNat

end

end A091908.P11369241307396280118

/-! ## A091908.P17006452351995564598

`A103517(A332377(n+1))-(n+2)²`
-/

namespace A091908.P17006452351995564598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A332377 (n + 1)).toNat - ((n + 2) ^ 2 : ℤ)

end

end A091908.P17006452351995564598

/-! ## A091908.P5204791292677483550

`A004442(A331782(n+1))-A016789(n)`
-/

namespace A091908.P5204791292677483550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A331782 (n + 1)).toNat - A016789 n

end

end A091908.P5204791292677483550

/-!
# A091911: a(n) = smallest number m such that m*tau(m)/sigma(m) = n, or 0 if no such m exists.

The programs for A091911, there is no canonical definition to state claims against.
-/

/-! ## A091911.P9526671301517937676

`Δ[A268674(∏[A344895(2*n)])]`
-/

namespace A091911.P9526671301517937676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344895 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091911.P9526671301517937676

/-!
# A091912: Numerators of Taylor series for log(tan(x)+1/cos(x)).

The programs for A091912, there is no canonical definition to state claims against.
-/

/-! ## A091912.P16489631385500223600

`A000111(2*n)/gcd(A000111(2*n), A049606(2*n+1))`
-/

namespace A091912.P16489631385500223600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000111 (2 * n) : ℚ) / (Int.gcd (A000111 (2 * n)) (A049606 (2 * n + 1)) : ℚ)

end

end A091912.P16489631385500223600

/-! ## A091912.P4856693953502827831

`gcd(A000364(n), A335257(n+1))`
-/

namespace A091912.P4856693953502827831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000364 n) (A335257 (n + 1))

end

end A091912.P4856693953502827831

/-! ## A091912.P4561547894220794097

`A009843(n)/gcd(A036279(n+1)², A009843(n))`
-/

namespace A091912.P4561547894220794097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009843 n : ℚ) / (Int.gcd (A036279 (n + 1) ^ 2) (A009843 n) : ℚ)

end

end A091912.P4561547894220794097

/-! ## A091912.P617389342359831085

`lcm(A000111(2*n), A279107(2*n+1))/A279107(2*n+1)`
-/

namespace A091912.P617389342359831085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000111 (2 * n)) (A279107 (2 * n + 1)) : ℚ) / (A279107 (2 * n + 1) : ℚ)

end

end A091912.P617389342359831085

/-! ## A091912.P2790234379371460555

`A241601(Δ[n²])`
-/

namespace A091912.P2790234379371460555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241601 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A091912.P2790234379371460555

/-!
# A091914: a(n) = 2*a(n-1) + 12*a(n-2).

The programs for A091914, the canonical program `A091914.P3416506006606031293` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091914 has offset 0).

The definition of A091914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+12*a(n-2)` (program `A091914.P3416506006606031293`, by `A091914.P3416506006606031293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091914.P3416506006606031293

`2*a(n-1)+12*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091914

/-- `2*a(n-1)+12*a(n-2)` -/
def P3416506006606031293.Spec : Prop :=
  ∀ n, (P3416506006606031293.a n : ℤ) = A091914 n

theorem P3416506006606031293.correct : P3416506006606031293.Spec := by
  intro n
  simp only [A091914]

end A091914

/-! ## A091914.P6728515488980279307

`A000079(n)*A006130(n)`
-/

namespace A091914.P6728515488980279307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A006130 n

end

end A091914.P6728515488980279307

namespace A091914

/-- `A000079(n)*A006130(n)` -/
def P6728515488980279307.Spec : Prop :=
  ∀ n, P6728515488980279307.a n = A091914 n

end A091914

/-! ## A091914.P1991812523026442723

`ogf(1/(1-2x-12x^2))`
-/

namespace A091914.P1991812523026442723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -12] n

end

end A091914.P1991812523026442723

namespace A091914

/-- `ogf(1/(1-2x-12x^2))` -/
def P1991812523026442723.Spec : Prop :=
  ∀ n, P1991812523026442723.a n = A091914 n

end A091914

/-! ## A091914.P12826473578182919736

`∑[A125816(n+1)]`
-/

namespace A091914.P12826473578182919736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091914.P12826473578182919736

namespace A091914

/-- `∑[A125816(n+1)]` -/
def P12826473578182919736.Spec : Prop :=
  ∀ n, P12826473578182919736.a n = A091914 n

end A091914

/-! ## A091914.P13959225502546835160

`2^n*∑[A052533(n)]`
-/

namespace A091914.P13959225502546835160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091914.P13959225502546835160

namespace A091914

/-- `2^n*∑[A052533(n)]` -/
def P13959225502546835160.Spec : Prop :=
  ∀ n, P13959225502546835160.a n = A091914 n

end A091914

/-! ## A091914.P16615256905991027595

`abs(2^n*A140167(n+1))`
-/

namespace A091914.P16615256905991027595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) * A140167 (n + 1)|

end

end A091914.P16615256905991027595

namespace A091914

/-- `abs(2^n*A140167(n+1))` -/
def P16615256905991027595.Spec : Prop :=
  ∀ n, P16615256905991027595.a n = A091914 n

end A091914

/-! ## A091914.P8700899596857118734

`2^(n-1)*A228661(n+1)`
-/

namespace A091914.P8700899596857118734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A228661 (n + 1) : ℚ)

end

end A091914.P8700899596857118734

namespace A091914

/-- `2^(n-1)*A228661(n+1)` -/
def P8700899596857118734.Spec : Prop :=
  ∀ n, P8700899596857118734.a n = (A091914 n : ℚ)

end A091914

/-! ## A091914.P328021877321812410

`A006130(n)*A011782(n+1)`
-/

namespace A091914.P328021877321812410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n * A011782 (n + 1)

end

end A091914.P328021877321812410

namespace A091914

/-- `A006130(n)*A011782(n+1)` -/
def P328021877321812410.Spec : Prop :=
  ∀ n, P328021877321812410.a n = A091914 n

end A091914

/-! ## A091914.P14877078244113116988

`A006130(n)*A016116(2*n)`
-/

namespace A091914.P14877078244113116988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n * A016116 (2 * n)

end

end A091914.P14877078244113116988

namespace A091914

/-- `A006130(n)*A016116(2*n)` -/
def P14877078244113116988.Spec : Prop :=
  ∀ n, P14877078244113116988.a n = A091914 n

end A091914

/-! ## A091914.P16561506524620459546

`A006130(n)*A077957(2*n)`
-/

namespace A091914.P16561506524620459546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n * A077957 (2 * n)

end

end A091914.P16561506524620459546

namespace A091914

/-- `A006130(n)*A077957(2*n)` -/
def P16561506524620459546.Spec : Prop :=
  ∀ n, P16561506524620459546.a n = A091914 n

end A091914

/-! ## A091914.P18127472812065451029

`(A000225(n)+1)*abs(A182228(n+1))`
-/

namespace A091914.P18127472812065451029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 1) * |A182228 (n + 1)|

end

end A091914.P18127472812065451029

namespace A091914

/-- `(A000225(n)+1)*abs(A182228(n+1))` -/
def P18127472812065451029.Spec : Prop :=
  ∀ n, P18127472812065451029.a n = A091914 n

end A091914

/-! ## A091914.P682841935906436935

`(A001045(n+1)+A001045(n))*A006130(n)`
-/

namespace A091914.P682841935906436935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) + A001045 n) * A006130 n

end

end A091914.P682841935906436935

namespace A091914

/-- `(A001045(n+1)+A001045(n))*A006130(n)` -/
def P682841935906436935.Spec : Prop :=
  ∀ n, P682841935906436935.a n = A091914 n

end A091914

/-! ## A091914.P122556224095736855

`A162466(n+1)/A074324(n+1)*A006130(n)`
-/

namespace A091914.P122556224095736855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162466 (n + 1) : ℚ) / (A074324 (n + 1) : ℚ) * (A006130 n : ℚ)

end

end A091914.P122556224095736855

namespace A091914

/-- `A162466(n+1)/A074324(n+1)*A006130(n)` -/
def P122556224095736855.Spec : Prop :=
  ∀ n, P122556224095736855.a n = (A091914 n : ℚ)

end A091914

/-! ## A091914.P16875172609822437810

`A162466(n+1)/A166552(n+1)*A006130(n)`
-/

namespace A091914.P16875172609822437810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162466 (n + 1) : ℚ) / (A166552 (n + 1) : ℚ) * (A006130 n : ℚ)

end

end A091914.P16875172609822437810

namespace A091914

/-- `A162466(n+1)/A166552(n+1)*A006130(n)` -/
def P16875172609822437810.Spec : Prop :=
  ∀ n, P16875172609822437810.a n = (A091914 n : ℚ)

end A091914

/-! ## A091914.P11822828442188542015

`∑[A127262(n)/2]`
-/

namespace A091914.P11822828442188542015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127262 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091914.P11822828442188542015

namespace A091914

/-- `∑[A127262(n)/2]` -/
def P11822828442188542015.Spec : Prop :=
  ∀ n, P11822828442188542015.a n = (A091914 n : ℚ)

end A091914

/-!
# A091915: Maximum of even products of partitions of n.

The programs for A091915, there is no canonical definition to state claims against.
-/

/-! ## A091915.P16635921209814663835

`3*a(n-3)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=4, a(4)=6, a(5)=8`
-/

namespace A091915.P16635921209814663835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 4, 6, 8] fun n a =>
  3 * a (n - 3)

end

end A091915.P16635921209814663835

/-! ## A091915.P10429148790352968808

`ogf((2x+2x^2+4x^3+2x^5)/(1-3x^3))`
-/

namespace A091915.P10429148790352968808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 4, 0, 2] [1, 0, 0, -3] n

end

end A091915.P10429148790352968808

/-! ## A091915.P10149735238995496176

`and(-2, A319054(n+1))`
-/

namespace A091915.P10149735238995496176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A319054 (n + 1))

end

end A091915.P10149735238995496176

/-! ## A091915.P4059719798346813212

`2*floor(A000792(n+2)/3)`
-/

namespace A091915.P4059719798346813212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A000792 (n + 2) : ℚ) / 3⌋

end

end A091915.P4059719798346813212

/-! ## A091915.P9294112250053647342

`and(-2, A246080(comp[2*(n+2)]+1))`
-/

namespace A091915.P9294112250053647342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A246080 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1))

end

end A091915.P9294112250053647342

/-!
# A091916: Maximum of odd products of partitions of n.

The programs for A091916, the canonical program `A091916.P11410776714125330594` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091916 has offset 0).

The definition of A091916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091916.P11410776714125330594

`3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3, a(5)=5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091916

/-- `3*a(n-3)` -/
def P11410776714125330594.Spec : Prop :=
  ∀ n, (P11410776714125330594.a n : ℤ) = A091916 n

theorem P11410776714125330594.correct : P11410776714125330594.Spec := by
  intro n
  simp only [A091916]

end A091916

/-! ## A091916.P11485842018028613992

`a(n-3)+a(n-3)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3, a(5)=5`
-/

namespace A091916.P11485842018028613992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 3, 5] fun n a =>
  a (n - 3) + (a (n - 3) + a (n - 3))

end

end A091916.P11485842018028613992

namespace A091916

/-- `a(n-3)+a(n-3)+a(n-3)` -/
def P11485842018028613992.Spec : Prop :=
  ∀ n, (P11485842018028613992.a n : ℤ) = A091916 n

theorem P11485842018028613992.correct : P11485842018028613992.Spec := by
  intro n
  simp only [A091916, Nat.add_sub_cancel, A091916.P11485842018028613992.a, A091916.P11410776714125330594.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091916

/-! ## A091916.P8809074297123303588

`A083658(A004523(n))`
-/

namespace A091916.P8809074297123303588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A004523 n).toNat

end

end A091916.P8809074297123303588

namespace A091916

/-- `A083658(A004523(n))` -/
def P8809074297123303588.Spec : Prop :=
  ∀ n, P8809074297123303588.a n = A091916 n

end A091916

/-! ## A091916.P14036605979532634531

`A083658(A002264(2*n))`
-/

namespace A091916.P14036605979532634531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A002264 (2 * n)).toNat

end

end A091916.P14036605979532634531

namespace A091916

/-- `A083658(A002264(2*n))` -/
def P14036605979532634531.Spec : Prop :=
  ∀ n, P14036605979532634531.a n = A091916 n

end A091916

/-! ## A091916.P14831191698131441508

`A083658(A004526(A004773(n)))`
-/

namespace A091916.P14831191698131441508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A004526 (A004773 n).toNat).toNat

end

end A091916.P14831191698131441508

namespace A091916

/-- `A083658(A004526(A004773(n)))` -/
def P14831191698131441508.Spec : Prop :=
  ∀ n, P14831191698131441508.a n = A091916 n

end A091916

/-! ## A091916.P8821527171613413079

`A083658(A002264(n+1)+A002264(n))`
-/

namespace A091916.P8821527171613413079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A002264 (n + 1) + A002264 n).toNat

end

end A091916.P8821527171613413079

namespace A091916

/-- `A083658(A002264(n+1)+A002264(n))` -/
def P8821527171613413079.Spec : Prop :=
  ∀ n, P8821527171613413079.a n = A091916 n

end A091916

/-! ## A091916.P14987565421222690796

`ogf((1+x+x^2+2x^5)/(1-3x^3))`
-/

namespace A091916.P14987565421222690796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 0, 0, 2] [1, 0, 0, -3] n

end

end A091916.P14987565421222690796

namespace A091916

/-- `ogf((1+x+x^2+2x^5)/(1-3x^3))` -/
def P14987565421222690796.Spec : Prop :=
  ∀ n, P14987565421222690796.a n = A091916 n

end A091916

/-!
# A091917: Coefficient array of polynomials (z-1)^n-1.

The programs for A091917, the canonical program `A091917.P1016281153594701147` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091917 has offset 0).

The definition of A091917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091917.P1016281153594701147

`T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=0, a(4)=-2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091917

/-- `T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` -/
def P1016281153594701147.Spec : Prop :=
  ∀ n, P1016281153594701147.a n = A091917 n

theorem P1016281153594701147.correct : P1016281153594701147.Spec := by
  intro n
  simp only [A091917]

end A091917

/-! ## A091917.P9722617571786096362

`A000007(n)-A140575(n)`
-/

namespace A091917.P9722617571786096362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A140575 n

end

end A091917.P9722617571786096362

namespace A091917

/-- `A000007(n)-A140575(n)` -/
def P9722617571786096362.Spec : Prop :=
  ∀ n, P9722617571786096362.a n = A091917 n

end A091917

/-! ## A091917.P15315211965670174927

`A130595(n)-A073424(n)`
-/

namespace A091917.P15315211965670174927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n - A073424 n

end

end A091917.P15315211965670174927

namespace A091917

/-- `A130595(n)-A073424(n)` -/
def P15315211965670174927.Spec : Prop :=
  ∀ n, P15315211965670174927.a n = A091917 n

end A091917

/-! ## A091917.P1761094324996246191

`A130595(n)-char[A008805(n)]`
-/

namespace A091917.P1761094324996246191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A091917.P1761094324996246191

namespace A091917

/-- `A130595(n)-char[A008805(n)]` -/
def P1761094324996246191.Spec : Prop :=
  ∀ n, P1761094324996246191.a n = A091917 n

end A091917

/-! ## A091917.P4664778318473110740

`2*A119467(n)-A132749(n)`
-/

namespace A091917.P4664778318473110740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119467 n - A132749 n

end

end A091917.P4664778318473110740

namespace A091917

/-- `2*A119467(n)-A132749(n)` -/
def P4664778318473110740.Spec : Prop :=
  ∀ n, P4664778318473110740.a n = A091917 n

end A091917

/-! ## A091917.P14992446200407306022

`A130595(n)-char[Δ[A000292(n)]]`
-/

namespace A091917.P14992446200407306022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A091917.P14992446200407306022

namespace A091917

/-- `A130595(n)-char[Δ[A000292(n)]]` -/
def P14992446200407306022.Spec : Prop :=
  ∀ n, P14992446200407306022.a n = A091917 n

end A091917

/-! ## A091917.P4568672033444447322

`A130595(n)-char[A000217(n+1)]`
-/

namespace A091917.P4568672033444447322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A091917.P4568672033444447322

namespace A091917

/-- `A130595(n)-char[A000217(n+1)]` -/
def P4568672033444447322.Spec : Prop :=
  ∀ n, P4568672033444447322.a n = A091917 n

end A091917

/-! ## A091917.P447764504908637105

`A130595(n)-A007318(n)%A135227(n)`
-/

namespace A091917.P447764504908637105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n - Int.tmod (A007318 n) (A135227 n)

end

end A091917.P447764504908637105

namespace A091917

/-- `A130595(n)-A007318(n)%A135227(n)` -/
def P447764504908637105.Spec : Prop :=
  ∀ n, P447764504908637105.a n = A091917 n

end A091917

/-! ## A091917.P2529733015342484678

`A130595(n)-A014634(n)%A130296(n+1)`
-/

namespace A091917.P2529733015342484678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n - Int.tmod (A014634 n) (A130296 (n + 1))

end

end A091917.P2529733015342484678

namespace A091917

/-- `A130595(n)-A014634(n)%A130296(n+1)` -/
def P2529733015342484678.Spec : Prop :=
  ∀ n, P2529733015342484678.a n = A091917 n

end A091917

/-! ## A091917.P17070598362458333704

`A130595(n)-A055129(n+1)%A130296(n+1)`
-/

namespace A091917.P17070598362458333704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n - Int.tmod (A055129 (n + 1)) (A130296 (n + 1))

end

end A091917.P17070598362458333704

namespace A091917

/-- `A130595(n)-A055129(n+1)%A130296(n+1)` -/
def P17070598362458333704.Spec : Prop :=
  ∀ n, P17070598362458333704.a n = A091917 n

end A091917

/-!
# A091918: Inverse of number triangle A091917.

The programs for A091918, the canonical program `A091918.P5621193398962617937` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091918 has offset 0).

The definition of A091918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091918.P3998534739531958285

`A132749(n)^abs(A167407(n))`
-/

namespace A091918.P3998534739531958285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132749 n : ℚ) ^ (|A167407 n| : ℤ)

end

end A091918.P3998534739531958285

namespace A091918

/-- `A132749(n)^abs(A167407(n))` -/
def P3998534739531958285.Spec : Prop :=
  ∀ n, P3998534739531958285.a n = (A091918 n : ℚ)

end A091918

/-! ## A091918.P11265906564782379947

`A038207(n)/A057728(n+1)`
-/

namespace A091918.P11265906564782379947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A057728 (n + 1) : ℚ)

end

end A091918.P11265906564782379947

namespace A091918

/-- `A038207(n)/A057728(n+1)` -/
def P11265906564782379947.Spec : Prop :=
  ∀ n, P11265906564782379947.a n = (A091918 n : ℚ)

end A091918

/-! ## A091918.P14050965234619097160

`abs(A065109(n)/A057728(n+1))`
-/

namespace A091918.P14050965234619097160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A065109 n : ℚ) / (A057728 (n + 1) : ℚ)|

end

end A091918.P14050965234619097160

namespace A091918

/-- `abs(A065109(n)/A057728(n+1))` -/
def P14050965234619097160.Spec : Prop :=
  ∀ n, P14050965234619097160.a n = (A091918 n : ℚ)

end A091918

/-! ## A091918.P5621193398962617937

`A007318(n)*A038207(n*A010054(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A091918

/-- `A007318(n)*A038207(n*A010054(n))` -/
def P5621193398962617937.Spec : Prop :=
  ∀ n, P5621193398962617937.a n = A091918 n

theorem P5621193398962617937.correct : P5621193398962617937.Spec := by
  intro n
  simp only [A091918]

end A091918

/-! ## A091918.P10758420564383938774

`A038207(n)/Δ[A023758(n+1)]`
-/

namespace A091918.P10758420564383938774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A091918.P10758420564383938774

namespace A091918

/-- `A038207(n)/Δ[A023758(n+1)]` -/
def P10758420564383938774.Spec : Prop :=
  ∀ n, P10758420564383938774.a n = (A091918 n : ℚ)

end A091918

/-! ## A091918.P4878663817219490327

`A193554(comp[∑[n]+1])`
-/

namespace A091918.P4878663817219490327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A091918.P4878663817219490327

namespace A091918

/-- `A193554(comp[∑[n]+1])` -/
def P4878663817219490327.Spec : Prop :=
  ∀ n, P4878663817219490327.a n = A091918 n

end A091918

/-! ## A091918.P1880498607834795187

`gcd(A013621(n), A182042(n))`
-/

namespace A091918.P1880498607834795187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013621 n) (A182042 n)

end

end A091918.P1880498607834795187

namespace A091918

/-- `gcd(A013621(n), A182042(n))` -/
def P1880498607834795187.Spec : Prop :=
  ∀ n, (P1880498607834795187.a n : ℤ) = A091918 n

end A091918

/-! ## A091918.P5441935234204063392

`gcd(A004175(n), A206735(n))`
-/

namespace A091918.P5441935234204063392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004175 n) (A206735 n)

end

end A091918.P5441935234204063392

namespace A091918

/-- `gcd(A004175(n), A206735(n))` -/
def P5441935234204063392.Spec : Prop :=
  ∀ n, (P5441935234204063392.a n : ℤ) = A091918 n

end A091918

/-! ## A091918.P16683397116918092980

`A007318(n)*A006519(A099627(n))`
-/

namespace A091918.P16683397116918092980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A006519 (A099627 n).toNat

end

end A091918.P16683397116918092980

namespace A091918

/-- `A007318(n)*A006519(A099627(n))` -/
def P16683397116918092980.Spec : Prop :=
  ∀ n, P16683397116918092980.a n = A091918 n

end A091918

/-! ## A091918.P5812293320185756716

`A007318(n)*A057979(A018900(n+1))`
-/

namespace A091918.P5812293320185756716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057979 (A018900 (n + 1)).toNat

end

end A091918.P5812293320185756716

namespace A091918

/-- `A007318(n)*A057979(A018900(n+1))` -/
def P5812293320185756716.Spec : Prop :=
  ∀ n, P5812293320185756716.a n = A091918 n

end A091918

/-!
# A091919: Expansion of 1/((1-2*x)*(1-x^2)^2).

The programs for A091919, the canonical program `A091919.P14926463586089378147` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091919 has offset 0).

The definition of A091919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-2x^2+4x^3+x^4-2x^5))` (program `A091919.P14926463586089378147`, by `A091919.P14926463586089378147.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091919.P14926463586089378147

`ogf(1/(1-2x-2x^2+4x^3+x^4-2x^5))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091919

/-- `ogf(1/(1-2x-2x^2+4x^3+x^4-2x^5))` -/
def P14926463586089378147.Spec : Prop :=
  ∀ n, P14926463586089378147.a n = A091919 n

theorem P14926463586089378147.correct : P14926463586089378147.Spec := by
  intro n
  simp only [A091919]

end A091919

/-! ## A091919.P3357567891923854252

`2^(n+4)/9+(3*n+8)*(-1)^n/36-(n+4)/4`
-/

namespace A091919.P3357567891923854252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 4) : ℚ) / 9 + ((3 * n + 8 : ℤ) * (-1) ^ n : ℚ) / 36 - (n + 4 : ℚ) / 4

end

end A091919.P3357567891923854252

namespace A091919

/-- `2^(n+4)/9+(3*n+8)*(-1)^n/36-(n+4)/4` -/
def P3357567891923854252.Spec : Prop :=
  ∀ n, P3357567891923854252.a n = (A091919 n : ℚ)

end A091919

/-! ## A091919.P34793175888088783

`∑[∑[2^n-a(n-1)]-a(n-1)]` with `a(0)=1`
-/

namespace A091919.P34793175888088783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (2 ^ n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091919.P34793175888088783

namespace A091919

/-- `∑[∑[2^n-a(n-1)]-a(n-1)]` -/
def P34793175888088783.Spec : Prop :=
  ∀ n, P34793175888088783.a n = A091919 n

end A091919

/-! ## A091919.P7970274067215245065

`∑[A034299(n)]`
-/

namespace A091919.P7970274067215245065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091919.P7970274067215245065

namespace A091919

/-- `∑[A034299(n)]` -/
def P7970274067215245065.Spec : Prop :=
  ∀ n, P7970274067215245065.a n = A091919 n

end A091919

/-! ## A091919.P4489734096598427524

`∑[∑[A053088(n)]]`
-/

namespace A091919.P4489734096598427524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091919.P4489734096598427524

namespace A091919

/-- `∑[∑[A053088(n)]]` -/
def P4489734096598427524.Spec : Prop :=
  ∀ n, P4489734096598427524.a n = A091919 n

end A091919

/-! ## A091919.P9517479813740289757

`∑[A027656(n)/A000079(n)]*A000079(n)`
-/

namespace A091919.P9517479813740289757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027656 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A091919.P9517479813740289757

namespace A091919

/-- `∑[A027656(n)/A000079(n)]*A000079(n)` -/
def P9517479813740289757.Spec : Prop :=
  ∀ n, P9517479813740289757.a n = (A091919 n : ℚ)

end A091919

/-!
# A091921: Sum of odd proper distinct prime divisors of n. That is, the sum of odd distinct prime divisors of n that are less than n.

The programs for A091921, the canonical program `A091921.P1800414580042850367` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091921 has offset 1).

The definition of A091921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091921.P10269761748711339543

`∑{p}[A171435(n+1), #]`
-/

namespace A091921.P10269761748711339543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A091921.P10269761748711339543

namespace A091921

/-- `∑{p}[A171435(n+1), #]` -/
def P10269761748711339543.Spec : Prop :=
  ∀ n, (P10269761748711339543.a n : ℤ) = A091921 (n + 1)

end A091921

/-! ## A091921.P1800414580042850367

`A005069(n+1)%(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091921

/-- `A005069(n+1)%(n+1)` -/
def P1800414580042850367.Spec : Prop :=
  ∀ n, P1800414580042850367.a n = A091921 (n + 1)

theorem P1800414580042850367.correct : P1800414580042850367.Spec := by
  intro n
  simp only [A091921, Nat.add_sub_cancel]

end A091921

/-! ## A091921.P3951220480075844480

`(A100030(n+1)-2)%(n+1)`
-/

namespace A091921.P3951220480075844480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100030 (n + 1) - 2) (n + 1 : ℤ)

end

end A091921.P3951220480075844480

namespace A091921

/-- `(A100030(n+1)-2)%(n+1)` -/
def P3951220480075844480.Spec : Prop :=
  ∀ n, P3951220480075844480.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P15618743942157057599

`∑{p}[A000265(n+1), #]%(n+1)`
-/

namespace A091921.P15618743942157057599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p) % (n + 1)

end

end A091921.P15618743942157057599

namespace A091921

/-- `∑{p}[A000265(n+1), #]%(n+1)` -/
def P15618743942157057599.Spec : Prop :=
  ∀ n, (P15618743942157057599.a n : ℤ) = A091921 (n + 1)

end A091921

/-! ## A091921.P1666283502482853581

`(A008472(2*(n+1))-2)%(n+1)`
-/

namespace A091921.P1666283502482853581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008472 (2 * (n + 1)) - 2) (n + 1 : ℤ)

end

end A091921.P1666283502482853581

namespace A091921

/-- `(A008472(2*(n+1))-2)%(n+1)` -/
def P1666283502482853581.Spec : Prop :=
  ∀ n, P1666283502482853581.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P4910728418325362071

`A008472((n+1)/and(n+1, -(n+1)))%(n+1)`
-/

namespace A091921.P4910728418325362071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat) (n + 1 : ℤ)

end

end A091921.P4910728418325362071

namespace A091921

/-- `A008472((n+1)/and(n+1, -(n+1)))%(n+1)` -/
def P4910728418325362071.Spec : Prop :=
  ∀ n, P4910728418325362071.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P6993424101140557740

`A005069(A005451(n+1))`
-/

namespace A091921.P6993424101140557740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A005451 (n + 1)).toNat

end

end A091921.P6993424101140557740

namespace A091921

/-- `A005069(A005451(n+1))` -/
def P6993424101140557740.Spec : Prop :=
  ∀ n, P6993424101140557740.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P6900472406652738109

`A005069(A048671(n+1))`
-/

namespace A091921.P6900472406652738109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A048671 (n + 1)).toNat

end

end A091921.P6900472406652738109

namespace A091921

/-- `A005069(A048671(n+1))` -/
def P6900472406652738109.Spec : Prop :=
  ∀ n, P6900472406652738109.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P9526831823403540591

`A005069(A144907(n+1))`
-/

namespace A091921.P9526831823403540591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A144907 (n + 1)).toNat

end

end A091921.P9526831823403540591

namespace A091921

/-- `A005069(A144907(n+1))` -/
def P9526831823403540591.Spec : Prop :=
  ∀ n, P9526831823403540591.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P5519410133056734713

`A005069(A171435(n+1))`
-/

namespace A091921.P5519410133056734713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A171435 (n + 1)).toNat

end

end A091921.P5519410133056734713

namespace A091921

/-- `A005069(A171435(n+1))` -/
def P5519410133056734713.Spec : Prop :=
  ∀ n, P5519410133056734713.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P2984156652060452535

`A005069(A334085(n+1))`
-/

namespace A091921.P2984156652060452535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A334085 (n + 1)).toNat

end

end A091921.P2984156652060452535

namespace A091921

/-- `A005069(A334085(n+1))` -/
def P2984156652060452535.Spec : Prop :=
  ∀ n, P2984156652060452535.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P4141617680352812058

`A008472(2*A005730(n+1))-2`
-/

namespace A091921.P4141617680352812058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * A005730 (n + 1)).toNat - 2

end

end A091921.P4141617680352812058

namespace A091921

/-- `A008472(2*A005730(n+1))-2` -/
def P4141617680352812058.Spec : Prop :=
  ∀ n, P4141617680352812058.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P10151148939745041219

`A008472(2*A048671(n+1))-2`
-/

namespace A091921.P10151148939745041219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * A048671 (n + 1)).toNat - 2

end

end A091921.P10151148939745041219

namespace A091921

/-- `A008472(2*A048671(n+1))-2` -/
def P10151148939745041219.Spec : Prop :=
  ∀ n, P10151148939745041219.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P14643096585337427725

`A008472(2*A144907(n+1))-2`
-/

namespace A091921.P14643096585337427725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * A144907 (n + 1)).toNat - 2

end

end A091921.P14643096585337427725

namespace A091921

/-- `A008472(2*A144907(n+1))-2` -/
def P14643096585337427725.Spec : Prop :=
  ∀ n, P14643096585337427725.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P10772824949177842066

`A005069(n+1)*A005171(n+1)`
-/

namespace A091921.P10772824949177842066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) * A005171 (n + 1)

end

end A091921.P10772824949177842066

namespace A091921

/-- `A005069(n+1)*A005171(n+1)` -/
def P10772824949177842066.Spec : Prop :=
  ∀ n, P10772824949177842066.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P5431021735658231048

`A005069(n+1)*A055976(n+1)`
-/

namespace A091921.P5431021735658231048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) * A055976 (n + 1)

end

end A091921.P5431021735658231048

namespace A091921

/-- `A005069(n+1)*A055976(n+1)` -/
def P5431021735658231048.Spec : Prop :=
  ∀ n, P5431021735658231048.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P11655528150278265241

`A005069(n+1)*A066247(n+1)`
-/

namespace A091921.P11655528150278265241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) * A066247 (n + 1)

end

end A091921.P11655528150278265241

namespace A091921

/-- `A005069(n+1)*A066247(n+1)` -/
def P11655528150278265241.Spec : Prop :=
  ∀ n, P11655528150278265241.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P18175673918082457156

`A005069(n+1)*A202238(n+1)`
-/

namespace A091921.P18175673918082457156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) * A202238 (n + 1)

end

end A091921.P18175673918082457156

namespace A091921

/-- `A005069(n+1)*A202238(n+1)` -/
def P18175673918082457156.Spec : Prop :=
  ∀ n, P18175673918082457156.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P2733673299122351630

`A008472(A000265(n+1))%(n+1)`
-/

namespace A091921.P2733673299122351630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008472 (A000265 (n + 1)).toNat) (n + 1 : ℤ)

end

end A091921.P2733673299122351630

namespace A091921

/-- `A008472(A000265(n+1))%(n+1)` -/
def P2733673299122351630.Spec : Prop :=
  ∀ n, P2733673299122351630.a n = A091921 (n + 1)

end A091921

/-! ## A091921.P11617500039233719908

`∑{d}[n+1, A005069(#)*A157658((n+1)/#)]`
-/

namespace A091921.P11617500039233719908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005069 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091921.P11617500039233719908

namespace A091921

/-- `∑{d}[n+1, A005069(#)*A157658((n+1)/#)]` -/
def P11617500039233719908.Spec : Prop :=
  ∀ n, P11617500039233719908.a n = A091921 (n + 1)

end A091921

/-!
# A091923: Primes whose decimal representations interpreted in base 11 are not prime.

The programs for A091923, there is no canonical definition to state claims against.
-/

/-! ## A091923.P11679883454260770238

`eq[A007920(n), A055671(A171397(n))]`
-/

namespace A091923.P11679883454260770238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091923.P11679883454260770238

/-! ## A091923.P806892953231195578

`eq[A051699(n), A055671(A171397(n))]`
-/

namespace A091923.P806892953231195578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091923.P806892953231195578

/-! ## A091923.P16794962480465170754

`eq[A055671(A171397(n)), A237053(n)]`
-/

namespace A091923.P16794962480465170754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A171397 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091923.P16794962480465170754

/-! ## A091923.P513567126188541962

`eq[A055672(A171397(n)), A325142(n)]`
-/

namespace A091923.P513567126188541962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A171397 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091923.P513567126188541962

/-! ## A091923.P17690717629805802077

`eq[A040081(n+1), A055671(A171397(n))]`
-/

namespace A091923.P17690717629805802077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091923.P17690717629805802077

/-!
# A091924: Primes such that their decimal representations interpreted in base 11 are also prime.

The programs for A091924, there is no canonical definition to state claims against.
-/

/-! ## A091924.P17743938102728580821

`p?[A001489(n)*A107393(A171397(n))]`
-/

namespace A091924.P17743938102728580821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A107393 (A171397 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091924.P17743938102728580821

/-! ## A091924.P3008172276505201674

`p?[n*A032741(A171397(n))]`
-/

namespace A091924.P3008172276505201674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A171397 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091924.P3008172276505201674

/-! ## A091924.P541705269478480500

`lt[A171400(A171397(n))+A171400(n), 1]`
-/

namespace A091924.P541705269478480500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171400 (A171397 n).toNat + A171400 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091924.P541705269478480500

/-! ## A091924.P4192496801503721104

`p?[A057637(n+1)*A074206(A171397(n))]`
-/

namespace A091924.P4192496801503721104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1) * A074206 (A171397 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091924.P4192496801503721104

/-! ## A091924.P16974385963425651777

`p?[A105700(A171397(n))*A233583(n+1)]`
-/

namespace A091924.P16974385963425651777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A171397 n).toNat * A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091924.P16974385963425651777

/-!
# A091926: Least k<=n such that A002487(k)=A002487(n).

The programs for A091926, there is no canonical definition to state claims against.
-/

/-! ## A091926.P3618114537046515584

`A020946(A002487(n+1))`
-/

namespace A091926.P3618114537046515584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A002487 (n + 1)).toNat

end

end A091926.P3618114537046515584

/-! ## A091926.P5403276014688365039

`A020946(A020952(n)-A020951(n))`
-/

namespace A091926.P5403276014688365039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A020952 n - A020951 n).toNat

end

end A091926.P5403276014688365039

/-! ## A091926.P10677433548267507227

`A020946(A007729(n)-A174868(n))`
-/

namespace A091926.P10677433548267507227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A007729 n - A174868 n).toNat

end

end A091926.P10677433548267507227

/-! ## A091926.P17094728945140176290

`A020946(A174868(n+1)-A174868(n))`
-/

namespace A091926.P17094728945140176290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A174868 (n + 1) - A174868 n).toNat

end

end A091926.P17094728945140176290

/-! ## A091926.P7096480891566311968

`A020946(A126606(n+2)/2)`
-/

namespace A091926.P7096480891566311968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (SequenceMachineLib.roundAway ((A126606 (n + 2) : ℚ) / 2)).toNat

end

end A091926.P7096480891566311968

/-! ## A091926.P9812492225143689627

`A020946(A007729(2*n+1)-A007729(2*n))`
-/

namespace A091926.P9812492225143689627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A007729 (2 * n + 1) - A007729 (2 * n)).toNat

end

end A091926.P9812492225143689627

/-! ## A091926.P1125375086363637005

`A020946(A283976(A103517(n)))`
-/

namespace A091926.P1125375086363637005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A283976 (A103517 n).toNat).toNat

end

end A091926.P1125375086363637005

/-! ## A091926.P3973791900210521560

`A020946(A070990(4*n))`
-/

namespace A091926.P3973791900210521560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A070990 (4 * n)).toNat

end

end A091926.P3973791900210521560

/-! ## A091926.P6736346484113267259

`A020950(A002487(4*(n+1)))+1`
-/

namespace A091926.P6736346484113267259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020950 (A002487 (4 * (n + 1))).toNat + 1

end

end A091926.P6736346484113267259

/-! ## A091926.P11806821065257960193

`A091945(A295088(A002487(A295079(n+1))))`
-/

namespace A091926.P11806821065257960193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091945 (A295088 (A002487 (A295079 (n + 1)).toNat).toNat).toNat

end

end A091926.P11806821065257960193

/-! ## A091926.P9045097623079806870

`A091945(A295088(A002487(A385991(A091945(n+1)))))`
-/

namespace A091926.P9045097623079806870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091945 (A295088 (A002487 (A385991 (A091945 (n + 1)).toNat).toNat).toNat).toNat

end

end A091926.P9045097623079806870

/-!
# A091927: Expansion of (1-6*x)/(1-6*x-5*x^2).

The programs for A091927, the canonical program `A091927.P2486546934576425711` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091927 has offset 0).

The definition of A091927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x)/(1-6x-5x^2))` (program `A091927.P2486546934576425711`, by `A091927.P2486546934576425711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091927.P2486546934576425711

`ogf((1-6x)/(1-6x-5x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091927

/-- `ogf((1-6x)/(1-6x-5x^2))` -/
def P2486546934576425711.Spec : Prop :=
  ∀ n, P2486546934576425711.a n = A091927 n

theorem P2486546934576425711.correct : P2486546934576425711.Spec := by
  intro n
  simp only [A091927]

end A091927

/-! ## A091927.P15194469398098884626

`5*(sqrt(14)*(3+sqrt(14))^(n-1)/28-sqrt(14)*(3-sqrt(14))^(n-1)/28)`
-/

namespace A091927.P15194469398098884626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  5 * (Real.sqrt (14 : ℝ) * (3 + Real.sqrt (14 : ℝ)) ^ ((n : ℤ) - 1 : ℤ) / 28 - Real.sqrt (14 : ℝ) * (3 - Real.sqrt (14 : ℝ)) ^ ((n : ℤ) - 1 : ℤ) / 28)

end

end A091927.P15194469398098884626

namespace A091927

/-- `5*(sqrt(14)*(3+sqrt(14))^(n-1)/28-sqrt(14)*(3-sqrt(14))^(n-1)/28)` -/
def P15194469398098884626.Spec : Prop :=
  ∀ n, P15194469398098884626.a n = (A091927 n : ℝ)

end A091927

/-! ## A091927.P8968037748143856323

`5*a(n-2)+6*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A091927.P8968037748143856323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  5 * a (n - 2) + 6 * a (n - 1)

end

end A091927.P8968037748143856323

namespace A091927

/-- `5*a(n-2)+6*a(n-1)` -/
def P8968037748143856323.Spec : Prop :=
  ∀ n, (P8968037748143856323.a n : ℤ) = A091927 n

end A091927

/-! ## A091927.P4123747142641168422

`A091928(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A091927.P4123747142641168422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091928 (n - 1) - a (n - 1)

end

end A091927.P4123747142641168422

namespace A091927

/-- `A091928(n-1)-a(n-1)` -/
def P4123747142641168422.Spec : Prop :=
  ∀ n, P4123747142641168422.a n = A091927 n

end A091927

/-! ## A091927.P10141625154976702372

`A123362(n)-A015551(n)`
-/

namespace A091927.P10141625154976702372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123362 n - A015551 n

end

end A091927.P10141625154976702372

namespace A091927

/-- `A123362(n)-A015551(n)` -/
def P10141625154976702372.Spec : Prop :=
  ∀ n, P10141625154976702372.a n = A091927 n

end A091927

/-! ## A091927.P642216816841369152

`A091928(n)-5*A015551(n)`
-/

namespace A091927.P642216816841369152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091928 n - 5 * A015551 n

end

end A091927.P642216816841369152

namespace A091927

/-- `A091928(n)-5*A015551(n)` -/
def P642216816841369152.Spec : Prop :=
  ∀ n, P642216816841369152.a n = A091927 n

end A091927

/-! ## A091927.P8121378208275453456

`A126528(n)-7*A015551(n)`
-/

namespace A091927.P8121378208275453456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126528 n - 7 * A015551 n

end

end A091927.P8121378208275453456

namespace A091927

/-- `A126528(n)-7*A015551(n)` -/
def P8121378208275453456.Spec : Prop :=
  ∀ n, P8121378208275453456.a n = A091927 n

end A091927

/-! ## A091927.P15977271548652041648

`A091928(n)+A123362(n)-∑[A091928(n)]`
-/

namespace A091927.P15977271548652041648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091928 n + (A123362 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091927.P15977271548652041648

namespace A091927

/-- `A091928(n)+A123362(n)-∑[A091928(n)]` -/
def P15977271548652041648.Spec : Prop :=
  ∀ n, P15977271548652041648.a n = A091927 n

end A091927

/-! ## A091927.P6372911948111327469

`A015551(n+1)%A015551(A233583(n+1))`
-/

namespace A091927.P6372911948111327469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015551 (n + 1)) (A015551 (A233583 (n + 1)).toNat)

end

end A091927.P6372911948111327469

namespace A091927

/-- `A015551(n+1)%A015551(A233583(n+1))` -/
def P6372911948111327469.Spec : Prop :=
  ∀ n, P6372911948111327469.a n = A091927 n

end A091927

/-!
# A091928: a(0)=1, a(1)=5; a(n) = 6*a(n-1) + 5*a(n-2) for n > 1.

The programs for A091928, the canonical program `A091928.P10440083912217444863` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091928 has offset 0).

The definition of A091928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+5*a(n-2)` (program `A091928.P10440083912217444863`, by `A091928.P10440083912217444863.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091928.P10440083912217444863

`6*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091928

/-- `6*a(n-1)+5*a(n-2)` -/
def P10440083912217444863.Spec : Prop :=
  ∀ n, (P10440083912217444863.a n : ℤ) = A091928 n

theorem P10440083912217444863.correct : P10440083912217444863.Spec := by
  intro n
  simp only [A091928]

end A091928

/-! ## A091928.P17927344339457658118

`ogf((-1+x)/(-1+6x+5x^2))`
-/

namespace A091928.P17927344339457658118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, -5] n

end

end A091928.P17927344339457658118

namespace A091928

/-- `ogf((-1+x)/(-1+6x+5x^2))` -/
def P17927344339457658118.Spec : Prop :=
  ∀ n, P17927344339457658118.a n = A091928 n

end A091928

/-! ## A091928.P5461383564996378039

`Δ[A015551(n)]`
-/

namespace A091928.P5461383564996378039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091928.P5461383564996378039

namespace A091928

/-- `Δ[A015551(n)]` -/
def P5461383564996378039.Spec : Prop :=
  ∀ n, P5461383564996378039.a n = A091928 n

end A091928

/-! ## A091928.P4011921900924661205

`Δ[A123362(n)-A091927(n)]`
-/

namespace A091928.P4011921900924661205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123362 n - A091927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091928.P4011921900924661205

namespace A091928

/-- `Δ[A123362(n)-A091927(n)]` -/
def P4011921900924661205.Spec : Prop :=
  ∀ n, P4011921900924661205.a n = A091928 n

end A091928

/-! ## A091928.P2047009038172292600

`A091927(n+1)+A091927(n)`
-/

namespace A091928.P2047009038172292600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091927 (n + 1) + A091927 n

end

end A091928.P2047009038172292600

namespace A091928

/-- `A091927(n+1)+A091927(n)` -/
def P2047009038172292600.Spec : Prop :=
  ∀ n, P2047009038172292600.a n = A091928 n

end A091928

/-! ## A091928.P4302245957793334172

`A015551(n+1)-A015551(n)`
-/

namespace A091928.P4302245957793334172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015551 (n + 1) - A015551 n

end

end A091928.P4302245957793334172

namespace A091928

/-- `A015551(n+1)-A015551(n)` -/
def P4302245957793334172.Spec : Prop :=
  ∀ n, P4302245957793334172.a n = A091928 n

end A091928

/-! ## A091928.P6895990927332977841

`A126528(n)-2*A015551(n)`
-/

namespace A091928.P6895990927332977841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126528 n - 2 * A015551 n

end

end A091928.P6895990927332977841

namespace A091928

/-- `A126528(n)-2*A015551(n)` -/
def P6895990927332977841.Spec : Prop :=
  ∀ n, P6895990927332977841.a n = A091928 n

end A091928

/-!
# A091929: Expansion of (1-6*x)/(1-6*x-11*x^2).

The programs for A091929, the canonical program `A091929.P11008631244716149711` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091929 has offset 0).

The definition of A091929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x)/(1-6x-11x^2))` (program `A091929.P11008631244716149711`, by `A091929.P11008631244716149711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091929.P11008631244716149711

`ogf((1-6x)/(1-6x-11x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091929

/-- `ogf((1-6x)/(1-6x-11x^2))` -/
def P11008631244716149711.Spec : Prop :=
  ∀ n, P11008631244716149711.a n = A091929 n

theorem P11008631244716149711.correct : P11008631244716149711.Spec := by
  intro n
  simp only [A091929]

end A091929

/-! ## A091929.P9860458244585272042

`6*a(n-1)+11*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A091929.P9860458244585272042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  6 * a (n - 1) + 11 * a (n - 2)

end

end A091929.P9860458244585272042

namespace A091929

/-- `6*a(n-1)+11*a(n-2)` -/
def P9860458244585272042.Spec : Prop :=
  ∀ n, (P9860458244585272042.a n : ℤ) = A091929 n

end A091929

/-! ## A091929.P13451216702399332870

`6*(a(n-1)-(a(n-2)-3*a(n-2)))-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A091929.P13451216702399332870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  6 * (a (n - 1) - (a (n - 2) - 3 * a (n - 2))) - a (n - 2)

end

end A091929.P13451216702399332870

namespace A091929

/-- `6*(a(n-1)-(a(n-2)-3*a(n-2)))-a(n-2)` -/
def P13451216702399332870.Spec : Prop :=
  ∀ n, P13451216702399332870.a n = A091929 n

end A091929

/-!
# A091931: Change the first bit to 0 in binary notation for the n-th prime.

The programs for A091931, the canonical program `A091931.P13188532409164898325` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091931 has offset 1).

The definition of A091931 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091931.P13188532409164898325

`A000040(n+1)-2^(A035100(n+1)-1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A091931

/-- `A000040(n+1)-2^(A035100(n+1)-1)` -/
def P13188532409164898325.Spec : Prop :=
  ∀ n, P13188532409164898325.a n = (A091931 (n + 1) : ℚ)

end A091931

/-! ## A091931.P1981466375477368375

`floor(A088147(n+1)/2)`
-/

namespace A091931.P1981466375477368375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088147 (n + 1) : ℚ) / 2⌋

end

end A091931.P1981466375477368375

namespace A091931

/-- `floor(A088147(n+1)/2)` -/
def P1981466375477368375.Spec : Prop :=
  ∀ n, P1981466375477368375.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P3365773228738811342

`A006257(A102781(n+1))`
-/

namespace A091931.P3365773228738811342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A102781 (n + 1)).toNat

end

end A091931.P3365773228738811342

namespace A091931

/-- `A006257(A102781(n+1))` -/
def P3365773228738811342.Spec : Prop :=
  ∀ n, P3365773228738811342.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P5505520443033399449

`A006257((A006005(n+1)-1)/2)`
-/

namespace A091931.P5505520443033399449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.roundAway ((A006005 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A091931.P5505520443033399449

namespace A091931

/-- `A006257((A006005(n+1)-1)/2)` -/
def P5505520443033399449.Spec : Prop :=
  ∀ n, P5505520443033399449.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P8417126666791063023

`A000040(n+1)%(A014689(n)-a(n-1)+n)` with `a(0)=0`
-/

namespace A091931.P8417126666791063023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A000040 (n + 1)) (A014689 n - a (n - 1) + (n : ℤ))

end

end A091931.P8417126666791063023

namespace A091931

/-- `A000040(n+1)%(A014689(n)-a(n-1)+n)` -/
def P8417126666791063023.Spec : Prop :=
  ∀ n, P8417126666791063023.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P12735212468795510020

`A000040(n+1)-A011782(A035100(n+1))`
-/

namespace A091931.P12735212468795510020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A011782 (A035100 (n + 1)).toNat

end

end A091931.P12735212468795510020

namespace A091931

/-- `A000040(n+1)-A011782(A035100(n+1))` -/
def P12735212468795510020.Spec : Prop :=
  ∀ n, P12735212468795510020.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P18252300047783996425

`A000040(n+1)-A000079(A098388(n+1))`
-/

namespace A091931.P18252300047783996425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000079 (A098388 (n + 1)).toNat

end

end A091931.P18252300047783996425

namespace A091931

/-- `A000040(n+1)-A000079(A098388(n+1))` -/
def P18252300047783996425.Spec : Prop :=
  ∀ n, P18252300047783996425.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P7922327587581156173

`(A006257(A000040(n+1))-1)/2`
-/

namespace A091931.P7922327587581156173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006257 (A000040 (n + 1)).toNat - 1 : ℚ) / 2

end

end A091931.P7922327587581156173

namespace A091931

/-- `(A006257(A000040(n+1))-1)/2` -/
def P7922327587581156173.Spec : Prop :=
  ∀ n, P7922327587581156173.a n = (A091931 (n + 1) : ℚ)

end A091931

/-! ## A091931.P4532589477018787917

`floor(A006257(record[A000010(n+1)]+1)/2)`
-/

namespace A091931.P4532589477018787917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006257 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat : ℚ) / 2⌋

end

end A091931.P4532589477018787917

namespace A091931

/-- `floor(A006257(record[A000010(n+1)]+1)/2)` -/
def P4532589477018787917.Spec : Prop :=
  ∀ n, P4532589477018787917.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P11459910882463686788

`A300725(A000040(n+1))`
-/

namespace A091931.P11459910882463686788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300725 (A000040 (n + 1)).toNat

end

end A091931.P11459910882463686788

namespace A091931

/-- `A300725(A000040(n+1))` -/
def P11459910882463686788.Spec : Prop :=
  ∀ n, P11459910882463686788.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P17078051532435437907

`A300725(record[A006530(n+2)])`
-/

namespace A091931.P17078051532435437907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300725 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091931.P17078051532435437907

namespace A091931

/-- `A300725(record[A006530(n+2)])` -/
def P17078051532435437907.Spec : Prop :=
  ∀ n, P17078051532435437907.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P14401035707927792651

`A300725(record[A020639(n+2)])`
-/

namespace A091931.P14401035707927792651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300725 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091931.P14401035707927792651

namespace A091931

/-- `A300725(record[A020639(n+2)])` -/
def P14401035707927792651.Spec : Prop :=
  ∀ n, P14401035707927792651.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P11656097529431840752

`A300725(record[A000010(n+1)+1])`
-/

namespace A091931.P11656097529431840752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300725 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091931.P11656097529431840752

namespace A091931

/-- `A300725(record[A000010(n+1)+1])` -/
def P11656097529431840752.Spec : Prop :=
  ∀ n, P11656097529431840752.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P6282521451321327816

`A038572(A088147(n+1)-1)`
-/

namespace A091931.P6282521451321327816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A088147 (n + 1) - 1).toNat

end

end A091931.P6282521451321327816

namespace A091931

/-- `A038572(A088147(n+1)-1)` -/
def P6282521451321327816.Spec : Prop :=
  ∀ n, P6282521451321327816.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P7835633981362168199

`A119608(A098957(n+1))`
-/

namespace A091931.P7835633981362168199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (A098957 (n + 1)).toNat

end

end A091931.P7835633981362168199

namespace A091931

/-- `A119608(A098957(n+1))` -/
def P7835633981362168199.Spec : Prop :=
  ∀ n, P7835633981362168199.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P4042722953118148245

`A004524(A088147(n+1))`
-/

namespace A091931.P4042722953118148245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A088147 (n + 1)).toNat

end

end A091931.P4042722953118148245

namespace A091931

/-- `A004524(A088147(n+1))` -/
def P4042722953118148245.Spec : Prop :=
  ∀ n, P4042722953118148245.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P11193219942971105593

`A004526(A088146(n+1)-A088162(n+1))`
-/

namespace A091931.P11193219942971105593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A088146 (n + 1) - A088162 (n + 1)).toNat

end

end A091931.P11193219942971105593

namespace A091931

/-- `A004526(A088146(n+1)-A088162(n+1))` -/
def P11193219942971105593.Spec : Prop :=
  ∀ n, P11193219942971105593.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P7781006524025749774

`A266539(p?[comp[n²]])`
-/

namespace A091931.P7781006524025749774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266539 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A091931.P7781006524025749774

namespace A091931

/-- `A266539(p?[comp[n²]])` -/
def P7781006524025749774.Spec : Prop :=
  ∀ n, P7781006524025749774.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P5354846829069997918

`A053645(eq[1, ∑{e}[n, #]])`
-/

namespace A091931.P5354846829069997918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091931.P5354846829069997918

namespace A091931

/-- `A053645(eq[1, ∑{e}[n, #]])` -/
def P5354846829069997918.Spec : Prop :=
  ∀ n, P5354846829069997918.a n = A091931 (n + 1)

end A091931

/-! ## A091931.P12339470685941941771

`A053645(Δ[A007504(n)])`
-/

namespace A091931.P12339470685941941771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (f1 (n + 1) - f1 n).toNat

end

end A091931.P12339470685941941771

namespace A091931

/-- `A053645(Δ[A007504(n)])` -/
def P12339470685941941771.Spec : Prop :=
  ∀ n, P12339470685941941771.a n = A091931 (n + 1)

end A091931

/-!
# A091932: Primes that remain prime when their leading digit in binary representation is replaced by 0.

The programs for A091932, the canonical program `A091932.P4688759596569628977` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091932 has offset 1).

The definition of A091932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091932.P4688759596569628977

`p?[A005408(n)*A069283(A006257(n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091932

/-- `p?[A005408(n)*A069283(A006257(n))]` -/
def P4688759596569628977.Spec : Prop :=
  ∀ n, P4688759596569628977.a n = A091932 (n + 1)

theorem P4688759596569628977.correct : P4688759596569628977.Spec := by
  intro n
  simp only [A091932, Nat.add_sub_cancel]

end A091932

/-! ## A091932.P13622313374428413999

`p?[A105700(A006257(n))*A267873(n)]`
-/

namespace A091932.P13622313374428413999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A006257 n).toNat * A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091932.P13622313374428413999

namespace A091932

/-- `p?[A105700(A006257(n))*A267873(n)]` -/
def P13622313374428413999.Spec : Prop :=
  ∀ n, P13622313374428413999.a n = A091932 (n + 1)

end A091932

/-! ## A091932.P16740572164974746291

`p?[A004273(n+1)*A105700(A006257(n))]`
-/

namespace A091932.P16740572164974746291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) * A105700 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091932.P16740572164974746291

namespace A091932

/-- `p?[A004273(n+1)*A105700(A006257(n))]` -/
def P16740572164974746291.Spec : Prop :=
  ∀ n, P16740572164974746291.a n = A091932 (n + 1)

end A091932

/-! ## A091932.P15246116863562903401

`p?[A000040(n+1)*A107279(A091931(n+1))]`
-/

namespace A091932.P15246116863562903401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A107279 (A091931 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091932.P15246116863562903401

namespace A091932

/-- `p?[A000040(n+1)*A107279(A091931(n+1))]` -/
def P15246116863562903401.Spec : Prop :=
  ∀ n, P15246116863562903401.a n = A091932 (n + 1)

end A091932

/-! ## A091932.P2556472481435064373

`p?[(n+1)*A001222(1-A053644(n)+n)]`
-/

namespace A091932.P2556472481435064373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (1 - A053644 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091932.P2556472481435064373

namespace A091932

/-- `p?[(n+1)*A001222(1-A053644(n)+n)]` -/
def P2556472481435064373.Spec : Prop :=
  ∀ n, P2556472481435064373.a n = A091932 (n + 1)

end A091932

/-! ## A091932.P17412864903976573661

`p?[A004442(n)*A107279(A053645(n+1))]`
-/

namespace A091932.P17412864903976573661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n * A107279 (A053645 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091932.P17412864903976573661

namespace A091932

/-- `p?[A004442(n)*A107279(A053645(n+1))]` -/
def P17412864903976573661.Spec : Prop :=
  ∀ n, P17412864903976573661.a n = A091932 (n + 1)

end A091932

/-! ## A091932.P12653411673176774692

`p?[A107279(A053645(n+1))*A153152(n)]`
-/

namespace A091932.P12653411673176774692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A053645 (n + 1)).toNat * A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091932.P12653411673176774692

namespace A091932

/-- `p?[A107279(A053645(n+1))*A153152(n)]` -/
def P12653411673176774692.Spec : Prop :=
  ∀ n, P12653411673176774692.a n = A091932 (n + 1)

end A091932

/-! ## A091932.P8816899310812926357

`p?[A004442(2*n)*A105700(A006257(n))]`
-/

namespace A091932.P8816899310812926357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * n) * A105700 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091932.P8816899310812926357

namespace A091932

/-- `p?[A004442(2*n)*A105700(A006257(n))]` -/
def P8816899310812926357.Spec : Prop :=
  ∀ n, P8816899310812926357.a n = A091932 (n + 1)

end A091932

/-! ## A091932.P1973343489649026524

`p?[(n+1)*A001065(1-A053644(n)+n)]`
-/

namespace A091932.P1973343489649026524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001065 (1 - A053644 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091932.P1973343489649026524

namespace A091932

/-- `p?[(n+1)*A001065(1-A053644(n)+n)]` -/
def P1973343489649026524.Spec : Prop :=
  ∀ n, P1973343489649026524.a n = A091932 (n + 1)

end A091932

/-! ## A091932.P15015123070291833865

`p?[n*A003415(A164089(2*n+1))]`
-/

namespace A091932.P15015123070291833865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003415 (A164089 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091932.P15015123070291833865

namespace A091932

/-- `p?[n*A003415(A164089(2*n+1))]` -/
def P15015123070291833865.Spec : Prop :=
  ∀ n, P15015123070291833865.a n = A091932 (n + 1)

end A091932

/-!
# A091934: Number of dual isomorphisms on [ n,n* ].

The programs for A091934, there is no canonical definition to state claims against.
-/

/-! ## A091934.P7442126948562184195

`A082325(A206580(n+2))`
-/

namespace A091934.P7442126948562184195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082325 (A206580 (n + 2)).toNat

end

end A091934.P7442126948562184195

/-! ## A091934.P17639577159323833797

`∑[A167969(A166526(n+1))]`
-/

namespace A091934.P17639577159323833797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (A166526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091934.P17639577159323833797

/-! ## A091934.P3844057127538422896

`∑[A263017(n+1)-A257684(n)]`
-/

namespace A091934.P3844057127538422896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (n + 1) - A257684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091934.P3844057127538422896

/-! ## A091934.P1789140975185060681

`∑[A263017(n+1)-A328615(n)]`
-/

namespace A091934.P1789140975185060681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (n + 1) - A328615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091934.P1789140975185060681

/-! ## A091934.P7291818211669995057

`∑[gcd(A081905(n), A230411(n+1))]`
-/

namespace A091934.P7291818211669995057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081905 n) (A230411 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091934.P7291818211669995057

/-!
# A091935: Smallest number of 1's in binary representations of primes between 2^n and 2^(n+1).

The programs for A091935, there is no canonical definition to state claims against.
-/

/-! ## A091935.P18007516148112644409

`A201219(n+1)+A119335(n)!!`
-/

namespace A091935.P18007516148112644409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201219 (n + 1) + (Nat.factorial (Nat.factorial (A119335 n).toNat) : ℤ)

end

end A091935.P18007516148112644409

/-! ## A091935.P3488413926555063323

`A201219(n+1)+A035214(A049598(n+10))`
-/

namespace A091935.P3488413926555063323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201219 (n + 1) + A035214 (A049598 (n + 10)).toNat

end

end A091935.P3488413926555063323

/-! ## A091935.P2119755211166618059

`A297382(A081381(2*(n+2)))+A201219(n+1)`
-/

namespace A091935.P2119755211166618059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (A081381 (2 * (n + 2))).toNat + A201219 (n + 1)

end

end A091935.P2119755211166618059

/-! ## A091935.P14437740494840553351

`A320410(A320410(n))+A037870(A318934(n+1))`
-/

namespace A091935.P14437740494840553351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320410 (A320410 n).toNat + A037870 (A318934 (n + 1)).toNat

end

end A091935.P14437740494840553351

/-! ## A091935.P898175859638408472

`A257990(A133900(n+1))+1`
-/

namespace A091935.P898175859638408472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A133900 (n + 1)).toNat + 1

end

end A091935.P898175859638408472

/-!
# A091936: Smallest prime between 2^n and 2^(n+1), having a minimal number of 1's in binary representation.

The programs for A091936, there is no canonical definition to state claims against.
-/

/-! ## A091936.P695290727452408632

`A092099(n+1)+2^(n+1)`
-/

namespace A091936.P695290727452408632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092099 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A091936.P695290727452408632

/-! ## A091936.P3181683863024650193

`or(A000079(n+1), A092099(n+1))`
-/

namespace A091936.P3181683863024650193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (n + 1)) (A092099 (n + 1))

end

end A091936.P3181683863024650193

/-! ## A091936.P11883213275644233258

`A164090(2*n+1)+A092099(n+1)`
-/

namespace A091936.P11883213275644233258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (2 * n + 1) + A092099 (n + 1)

end

end A091936.P11883213275644233258

/-! ## A091936.P8584946281399934473

`2*(A000079(n)+A092099(n+1)/2)`
-/

namespace A091936.P8584946281399934473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000079 n : ℚ) + (A092099 (n + 1) : ℚ) / 2)

end

end A091936.P8584946281399934473

/-! ## A091936.P7558846645171979909

`xor(A077957(2*(n+1)), A092099(n+1))`
-/

namespace A091936.P7558846645171979909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077957 (2 * (n + 1))) (A092099 (n + 1))

end

end A091936.P7558846645171979909

/-! ## A091936.P5262946592335388515

`A181821(A000040(n+1))+A092099(n+1)`
-/

namespace A091936.P5262946592335388515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A000040 (n + 1)).toNat + A092099 (n + 1)

end

end A091936.P5262946592335388515

/-! ## A091936.P6958335031456399530

`A000079(n)+A092099(n+1)+A000079(n)`
-/

namespace A091936.P6958335031456399530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A092099 (n + 1) + A000079 n)

end

end A091936.P6958335031456399530

/-! ## A091936.P3682017138335133650

`A181821(p?[A093641(n+1)])+A092099(n+1)`
-/

namespace A091936.P3682017138335133650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A092099 (n + 1)

end

end A091936.P3682017138335133650

/-!
# A091937: Greatest number of 1's in binary representations of primes between 2^n and 2^(n+1).

The programs for A091937, there is no canonical definition to state claims against.
-/

/-! ## A091937.P17599618361031509650

`2-A092111(n+1)+n`
-/

namespace A091937.P17599618361031509650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A092111 (n + 1) + (n : ℤ)

end

end A091937.P17599618361031509650

/-! ## A091937.P9534296432298656364

`A017245(n)%(A092111(n+1)+A004770(n+1))`
-/

namespace A091937.P9534296432298656364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017245 n) (A092111 (n + 1) + A004770 (n + 1))

end

end A091937.P9534296432298656364

/-! ## A091937.P3684278205695845624

`A008683(A040154(n+1))*A092111(n+1)+n+2`
-/

namespace A091937.P3684278205695845624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A040154 (n + 1)).toNat * A092111 (n + 1) + (n + 2 : ℤ)

end

end A091937.P3684278205695845624

/-! ## A091937.P9273998624759394145

`A008683(A059310(n+1))*A092111(n+1)+n+2`
-/

namespace A091937.P9273998624759394145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A059310 (n + 1)).toNat * A092111 (n + 1) + (n + 2 : ℤ)

end

end A091937.P9273998624759394145

/-! ## A091937.P94487152825157528

`A008683(A251549(n+1))*A092111(n+1)+n+2`
-/

namespace A091937.P94487152825157528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A251549 (n + 1)).toNat * A092111 (n + 1) + (n + 2 : ℤ)

end

end A091937.P94487152825157528

/-! ## A091937.P11353439046377206291

`A092111(n+1)/A008683(A240710(n+2))+n+2`
-/

namespace A091937.P11353439046377206291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092111 (n + 1) : ℚ) / (A008683 (A240710 (n + 2)).toNat : ℚ) + (n + 2 : ℚ)

end

end A091937.P11353439046377206291

/-!
# A091938: Smallest prime between 2^n and 2^(n+1), having a maximal number of 1's in binary representation.

The programs for A091938, there is no canonical definition to state claims against.
-/

/-! ## A091938.P1637657565749363187

`record[p?[A171429(n+1)]]`
-/

namespace A091938.P1637657565749363187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171429 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091938.P1637657565749363187

/-! ## A091938.P7897021290939040473

`record[A171429(2*(n+1))]`
-/

namespace A091938.P7897021290939040473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171429 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091938.P7897021290939040473

/-! ## A091938.P9904892545760308904

`or(3*2^n-1, A237643(round(6^(n/3))))`
-/

namespace A091938.P9904892545760308904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((3 * 2 ^ n : ℤ) - 1) (A237643 (SequenceMachineLib.roundAway ((6 : ℝ) ^ ((n : ℚ) / 3 : ℝ))).toNat)

end

end A091938.P9904892545760308904

/-! ## A091938.P5787379025436602398

`filter[A171429(2*(n+1)), A079261(#)]`
-/

namespace A091938.P5787379025436602398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171429 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079261 (f1 j).toNat = 1) n)

end

end A091938.P5787379025436602398

/-!
# A091939: Prime numbers with prime sum of any two digits.

The programs for A091939, there is no canonical definition to state claims against.
-/

/-! ## A091939.P4688577520754685672

`∩[A030291(n+1), A221699(n+1)]`
-/

namespace A091939.P4688577520754685672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091939.P4688577520754685672

/-! ## A091939.P14833055525430894220

`∩[A086244(n+1), A221699(n+1)]`
-/

namespace A091939.P14833055525430894220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091939.P14833055525430894220

/-! ## A091939.P1983834153312079872

`p?[A221699(n+1)]`
-/

namespace A091939.P1983834153312079872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091939.P1983834153312079872

/-! ## A091939.P14230915656823596592

`p?[record[A221699(A052938(n))]]`
-/

namespace A091939.P14230915656823596592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221699 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091939.P14230915656823596592

/-! ## A091939.P17782914558691405427

`p?[record[A221699(A106466(n))]]`
-/

namespace A091939.P17782914558691405427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221699 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091939.P17782914558691405427

/-!
# A091940: Given n colors, sequence gives number of ways to color the vertices of a square such that no edge has the same color on both of its vertices.

The programs for A091940, the canonical program `A091940.P5886628268545826088` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091940 has offset 1).

The definition of A091940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091940.P5886628268545826088

`n^4+n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091940

/-- `n^4+n` -/
def P5886628268545826088.Spec : Prop :=
  ∀ n, (P5886628268545826088.a n : ℤ) = A091940 (n + 1)

theorem P5886628268545826088.correct : P5886628268545826088.Spec := by
  intro n
  simp only [A091940, Nat.add_sub_cancel]

end A091940

/-!
# A091941: a(n) equals the least k that produces the maximum number of partial quotients in the simple continued fraction expansion of (1/n + 1/k).

The programs for A091941, there is no canonical definition to state claims against.
-/

/-! ## A091941.P9196619047167574563

`A091943(∑[n]+1)`
-/

namespace A091941.P9196619047167574563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091943 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A091941.P9196619047167574563

/-! ## A091941.P1413042269012027300

`record[A091943(∑[A057979(n)])]`
-/

namespace A091941.P1413042269012027300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091943 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091941.P1413042269012027300

/-! ## A091941.P17092178049308443702

`and(-1, A091943(A000124(n)))`
-/

namespace A091941.P17092178049308443702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A091943 (A000124 n).toNat)

end

end A091941.P17092178049308443702

/-! ## A091941.P14806152384225916744

`record[A091943(A257504(n+1))]`
-/

namespace A091941.P14806152384225916744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091943 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091941.P14806152384225916744

/-! ## A091941.P13542111907569765233

`record[A010054(n)*A091943(n+1)]`
-/

namespace A091941.P13542111907569765233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A091943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091941.P13542111907569765233

/-!
# A091945: Numbers n such that there is no k, 0 <= k < n, satisfying A002487(k) = A002487(n).

The programs for A091945, there is no canonical definition to state claims against.
-/

/-! ## A091945.P5694160860053902799

`A020946(A295087(n+1))`
-/

namespace A091945.P5694160860053902799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A295087 (n + 1)).toNat

end

end A091945.P5694160860053902799

/-! ## A091945.P2777795069621994651

`eq[1, A091948(n)]`
-/

namespace A091945.P2777795069621994651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091948 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091945.P2777795069621994651

/-! ## A091945.P6248113784312066481

`record[A020946(A002487(n))]`
-/

namespace A091945.P6248113784312066481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A002487 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091945.P6248113784312066481

/-! ## A091945.P6275057232474444200

`eq[A028310(n), A091926(A028310(n))]`
-/

namespace A091945.P6275057232474444200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091926 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091945.P6275057232474444200

/-! ## A091945.P9093436922975990761

`eq[n, n*char[A091926(n+1)]]`
-/

namespace A091945.P9093436922975990761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091926 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091945.P9093436922975990761

/-! ## A091945.P16002665930939271445

`eq[A091926(A004277(n))+n, A004277(n)]`
-/

namespace A091945.P16002665930939271445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091926 (A004277 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091945.P16002665930939271445

/-! ## A091945.P8127718865855659279

`record[A020946(A007306(2*n+1)-A007306(n+1))]`
-/

namespace A091945.P8127718865855659279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A007306 (2 * n + 1) - A007306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091945.P8127718865855659279

/-! ## A091945.P14434866889503680062

`comp[A295079(n+1)]`
-/

namespace A091945.P14434866889503680062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091945.P14434866889503680062

/-! ## A091945.P16909951023745190134

`record[A020946(A020951(n+1))]`
-/

namespace A091945.P16909951023745190134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A020951 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091945.P16909951023745190134

/-!
# A091946: a(n) = floor(11^n/10^n).

The programs for A091946, there is no canonical definition to state claims against.
-/

/-! ## A091946.P5751530767451626086

`floor((A108851(A105222(p?[2*n+1]))/10)^n)`
-/

namespace A091946.P5751530767451626086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A108851 (A105222 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat : ℚ) / 10) ^ n⌋

end

end A091946.P5751530767451626086

/-! ## A091946.P1428355499886412637

`floor(A204590(2*n)/A204590(n))`
-/

namespace A091946.P1428355499886412637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204590 (2 * n) : ℚ) / (A204590 n : ℚ)⌋

end

end A091946.P1428355499886412637

/-! ## A091946.P7497219755579199538

`floor(A094993(n)/A094992(n))`
-/

namespace A091946.P7497219755579199538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094993 n : ℚ) / (A094992 n : ℚ)⌋

end

end A091946.P7497219755579199538

/-! ## A091946.P10416720760121199746

`floor(A094978(n)/A094977(n))`
-/

namespace A091946.P10416720760121199746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094978 n : ℚ) / (A094977 n : ℚ)⌋

end

end A091946.P10416720760121199746

/-! ## A091946.P16377801473907707383

`floor(11^n/10^n)`
-/

namespace A091946.P16377801473907707383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 ^ n : ℚ) / (10 ^ n : ℚ)⌋

end

end A091946.P16377801473907707383

/-! ## A091946.P12630285303079363530

`ceil(A155674(n)/10^n)`
-/

namespace A091946.P12630285303079363530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155674 n : ℚ) / (10 ^ n : ℚ)⌉

end

end A091946.P12630285303079363530

/-!
# A091947: (Fractional part of 1.1^n) * 10^n.

The programs for A091947, there is no canonical definition to state claims against.
-/

/-! ## A091947.P16591957703144137957

`(11^n)%(10^n)`
-/

namespace A091947.P16591957703144137957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n % 10 ^ n

end

end A091947.P16591957703144137957

/-! ## A091947.P7789125123357221688

`A226737(n)%A011557(n)-n`
-/

namespace A091947.P7789125123357221688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226737 n) (A011557 n) - (n : ℤ)

end

end A091947.P7789125123357221688

/-! ## A091947.P9132079670986037852

`n²+A024129(n)%A011557(n)`
-/

namespace A091947.P9132079670986037852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + Int.tmod (A024129 n) (A011557 n)

end

end A091947.P9132079670986037852

/-! ## A091947.P2663976159369281502

`A001020(n)-A011557(n)*A091946(n)`
-/

namespace A091947.P2663976159369281502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n - A011557 n * A091946 n

end

end A091947.P2663976159369281502

/-! ## A091947.P10332232418344725929

`A009966(n)%A009964(n)/A000079(n)`
-/

namespace A091947.P10332232418344725929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A009966 n) (A009964 n) : ℚ) / (A000079 n : ℚ)

end

end A091947.P10332232418344725929

/-!
# A091948: Number of values of k, 0 <= k <= n, satisfying A002487(k) = A002487(n).

The programs for A091948, there is no canonical definition to state claims against.
-/

/-! ## A091948.P12480213658552484397

`A211100(n)-A320655(A000051(n))`
-/

namespace A091948.P12480213658552484397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 n - A320655 (A000051 n).toNat

end

end A091948.P12480213658552484397

/-! ## A091948.P15490696297164180576

`∑{e}[A013632(n+1)-A160715(2*n+3)+1, #]`
-/

namespace A091948.P15490696297164180576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1) - A160715 (2 * n + 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A091948.P15490696297164180576

/-! ## A091948.P15617499567162387836

`A083888(A208960(n+1))+A064918(n+2)`
-/

namespace A091948.P15617499567162387836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (A208960 (n + 1)).toNat + A064918 (n + 2)

end

end A091948.P15617499567162387836

/-! ## A091948.P3249301469718571648

`A323165(A187829(n+1)+1)`
-/

namespace A091948.P3249301469718571648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323165 (A187829 (n + 1) + 1).toNat

end

end A091948.P3249301469718571648

/-! ## A091948.P8962539878404171524

`A323165(n+2)+A083927(A242128(n+1))`
-/

namespace A091948.P8962539878404171524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323165 (n + 2) + A083927 (A242128 (n + 1)).toNat

end

end A091948.P8962539878404171524

/-!
# A091949: a(n) = A087659(n) mod 2.

The programs for A091949, the canonical program `A091949.P5047733930992451112` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091949 has offset 0).

The definition of A091949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091949.P13726313686527211106

`(A324468(n+1)+∑[n])%2`
-/

namespace A091949.P13726313686527211106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324468 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) 2

end

end A091949.P13726313686527211106

namespace A091949

/-- `(A324468(n+1)+∑[n])%2` -/
def P13726313686527211106.Spec : Prop :=
  ∀ n, P13726313686527211106.a n = A091949 n

end A091949

/-! ## A091949.P17238278496919397486

`A030300(xor(n, or(2, n+3))+1)`
-/

namespace A091949.P17238278496919397486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (Nat.xor n (Nat.lor 2 (n + 3)) + 1)

end

end A091949.P17238278496919397486

namespace A091949

/-- `A030300(xor(n, or(2, n+3))+1)` -/
def P17238278496919397486.Spec : Prop :=
  ∀ n, P17238278496919397486.a n = A091949 n

end A091949

/-! ## A091949.P15920773684490424426

`A277614(A050604(n))%2`
-/

namespace A091949.P15920773684490424426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277614 (A050604 n).toNat) 2

end

end A091949.P15920773684490424426

namespace A091949

/-- `A277614(A050604(n))%2` -/
def P15920773684490424426.Spec : Prop :=
  ∀ n, P15920773684490424426.a n = A091949 n

end A091949

/-! ## A091949.P11437445883440037829

`A324468(A098181(n))%2`
-/

namespace A091949.P11437445883440037829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324468 (A098181 n).toNat) 2

end

end A091949.P11437445883440037829

namespace A091949

/-- `A324468(A098181(n))%2` -/
def P11437445883440037829.Spec : Prop :=
  ∀ n, P11437445883440037829.a n = A091949 n

end A091949

/-! ## A091949.P475457229745243079

`A324468(A116966(n))%2`
-/

namespace A091949.P475457229745243079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324468 (A116966 n).toNat) 2

end

end A091949.P475457229745243079

namespace A091949

/-- `A324468(A116966(n))%2` -/
def P475457229745243079.Spec : Prop :=
  ∀ n, P475457229745243079.a n = A091949 n

end A091949

/-! ## A091949.P5047733930992451112

`abs(Δ[A001285(A212831(n))])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A091949

/-- `abs(Δ[A001285(A212831(n))])` -/
def P5047733930992451112.Spec : Prop :=
  ∀ n, P5047733930992451112.a n = A091949 n

theorem P5047733930992451112.correct : P5047733930992451112.Spec := by
  intro n
  simp only [A091949]

end A091949

/-! ## A091949.P7790947868609598196

`char[A080412(A161579(n+1))]`
-/

namespace A091949.P7790947868609598196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A161579 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A091949.P7790947868609598196

namespace A091949

/-- `char[A080412(A161579(n+1))]` -/
def P7790947868609598196.Spec : Prop :=
  ∀ n, (P7790947868609598196.a n : ℤ) = A091949 n

end A091949

/-! ## A091949.P6949169445015681678

`A010060(xor(n, A083219(n+1)))`
-/

namespace A091949.P6949169445015681678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor (n : ℤ) (A083219 (n + 1))).toNat

end

end A091949.P6949169445015681678

namespace A091949

/-- `A010060(xor(n, A083219(n+1)))` -/
def P6949169445015681678.Spec : Prop :=
  ∀ n, P6949169445015681678.a n = A091949 n

end A091949

/-! ## A091949.P17811048478943898668

`A010059(xor(A004526(n), A110655(n)))`
-/

namespace A091949.P17811048478943898668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Int.xor (A004526 n) (A110655 n)).toNat

end

end A091949.P17811048478943898668

namespace A091949

/-- `A010059(xor(A004526(n), A110655(n)))` -/
def P17811048478943898668.Spec : Prop :=
  ∀ n, P17811048478943898668.a n = A091949 n

end A091949

/-! ## A091949.P9882175091177383382

`(A010060(n)-A010060(A083219(n+1)))²`
-/

namespace A091949.P9882175091177383382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010060 n - A010060 (A083219 (n + 1)).toNat) ^ 2

end

end A091949.P9882175091177383382

namespace A091949

/-- `(A010060(n)-A010060(A083219(n+1)))²` -/
def P9882175091177383382.Spec : Prop :=
  ∀ n, P9882175091177383382.a n = A091949 n

end A091949

/-! ## A091949.P4631160782499256951

`A010060(xor(n, A187180(n+2)))`
-/

namespace A091949.P4631160782499256951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor (n : ℤ) (A187180 (n + 2))).toNat

end

end A091949.P4631160782499256951

namespace A091949

/-- `A010060(xor(n, A187180(n+2)))` -/
def P4631160782499256951.Spec : Prop :=
  ∀ n, P4631160782499256951.a n = A091949 n

end A091949

/-! ## A091949.P13319200604955318084

`abs(A010060(n)-A010060(A187180(n+2)))`
-/

namespace A091949.P13319200604955318084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010060 n - A010060 (A187180 (n + 2)).toNat|

end

end A091949.P13319200604955318084

namespace A091949

/-- `abs(A010060(n)-A010060(A187180(n+2)))` -/
def P13319200604955318084.Spec : Prop :=
  ∀ n, P13319200604955318084.a n = A091949 n

end A091949

/-! ## A091949.P6229093123168637661

`A010060(xor(n, A116966(n+2)))`
-/

namespace A091949.P6229093123168637661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor (n : ℤ) (A116966 (n + 2))).toNat

end

end A091949.P6229093123168637661

namespace A091949

/-- `A010060(xor(n, A116966(n+2)))` -/
def P6229093123168637661.Spec : Prop :=
  ∀ n, P6229093123168637661.a n = A091949 n

end A091949

/-! ## A091949.P3503342918067047689

`A010060(A010060(A083219(n+1))+2*n)`
-/

namespace A091949.P3503342918067047689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A010060 (A083219 (n + 1)).toNat + (2 * n : ℤ)).toNat

end

end A091949.P3503342918067047689

namespace A091949

/-- `A010060(A010060(A083219(n+1))+2*n)` -/
def P3503342918067047689.Spec : Prop :=
  ∀ n, P3503342918067047689.a n = A091949 n

end A091949

/-! ## A091949.P16624656347780991184

`A010060(A010060(A106249(n+2))+2*n)`
-/

namespace A091949.P16624656347780991184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A010060 (A106249 (n + 2)).toNat + (2 * n : ℤ)).toNat

end

end A091949.P16624656347780991184

namespace A091949

/-- `A010060(A010060(A106249(n+2))+2*n)` -/
def P16624656347780991184.Spec : Prop :=
  ∀ n, P16624656347780991184.a n = A091949 n

end A091949

/-! ## A091949.P4355148752274901060

`A010060(A010060(A187180(n+2))+2*n)`
-/

namespace A091949.P4355148752274901060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A010060 (A187180 (n + 2)).toNat + (2 * n : ℤ)).toNat

end

end A091949.P4355148752274901060

namespace A091949

/-- `A010060(A010060(A187180(n+2))+2*n)` -/
def P4355148752274901060.Spec : Prop :=
  ∀ n, P4355148752274901060.a n = A091949 n

end A091949

/-! ## A091949.P10787835478023368526

`A010060(or(2, A048724(n+1)-3))`
-/

namespace A091949.P10787835478023368526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.lor 2 (A048724 (n + 1) - 3)).toNat

end

end A091949.P10787835478023368526

namespace A091949

/-- `A010060(or(2, A048724(n+1)-3))` -/
def P10787835478023368526.Spec : Prop :=
  ∀ n, P10787835478023368526.a n = A091949 n

end A091949

/-! ## A091949.P7907115017301390703

`A010059(xor(n, or(2, n+3)))`
-/

namespace A091949.P7907115017301390703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Nat.xor n (Nat.lor 2 (n + 3)))

end

end A091949.P7907115017301390703

namespace A091949

/-- `A010059(xor(n, or(2, n+3)))` -/
def P7907115017301390703.Spec : Prop :=
  ∀ n, P7907115017301390703.a n = A091949 n

end A091949

/-! ## A091949.P4961771476326189855

`A010059(xor(n+3, floor(n/4)))`
-/

namespace A091949.P4961771476326189855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Int.xor (n + 3 : ℤ) ⌊(n : ℚ) / 4⌋).toNat

end

end A091949.P4961771476326189855

namespace A091949

/-- `A010059(xor(n+3, floor(n/4)))` -/
def P4961771476326189855.Spec : Prop :=
  ∀ n, P4961771476326189855.a n = A091949 n

end A091949

/-! ## A091949.P14248844674070304475

`val(A006068(xor(n, or(2, n+3))), 2)`
-/

namespace A091949.P14248844674070304475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006068 (Nat.xor n (Nat.lor 2 (n + 3)))).toNat 2

end

end A091949.P14248844674070304475

namespace A091949

/-- `val(A006068(xor(n, or(2, n+3))), 2)` -/
def P14248844674070304475.Spec : Prop :=
  ∀ n, (P14248844674070304475.a n : ℤ) = A091949 n

end A091949

/-!
# A091950: a(n) = A087659(n) mod 3.

The programs for A091950, there is no canonical definition to state claims against.
-/

/-! ## A091950.P13770433930701819642

`A087659(n)%3`
-/

namespace A091950.P13770433930701819642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087659 n) 3

end

end A091950.P13770433930701819642

/-! ## A091950.P10834396328849250219

`1-A176416(A097564(2*n))`
-/

namespace A091950.P10834396328849250219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A176416 (A097564 (2 * n)).toNat

end

end A091950.P10834396328849250219

/-! ## A091950.P5240000349854592798

`A073204(n)%A124474(A124475(n+1))`
-/

namespace A091950.P5240000349854592798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073204 n) (A124474 (A124475 (n + 1)).toNat)

end

end A091950.P5240000349854592798

/-! ## A091950.P13186333500749861027

`A078650(n+1)+A078650(A102831(n+1))`
-/

namespace A091950.P13186333500749861027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078650 (n + 1) + A078650 (A102831 (n + 1)).toNat

end

end A091950.P13186333500749861027

/-! ## A091950.P16938627092925763260

`A049705(A102831(n+1))-A123594(n+3)`
-/

namespace A091950.P16938627092925763260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (A102831 (n + 1)).toNat - A123594 (n + 3)

end

end A091950.P16938627092925763260

/-!
# A091952: a(1)=1, a(2n)=(a(n)+1) mod 2; a(2n+1)=2*a(2n).

The programs for A091952, the canonical program `A091952.P6345344479906099150` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091952 has offset 1).

The definition of A091952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091952.P6345344479906099150

`and(a(lcm(2, 1-n)/2)+1, ∑[10*n-7]+9)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091952

/-- `and(a(lcm(2, 1-n)/2)+1, ∑[10*n-7]+9)` -/
def P6345344479906099150.Spec : Prop :=
  ∀ n, P6345344479906099150.a n = A091952 (n + 1)

theorem P6345344479906099150.correct : P6345344479906099150.Spec := by
  intro n
  simp only [A091952, Nat.add_sub_cancel]

end A091952

/-! ## A091952.P18314364992276266792

`A082560(n+1)%(2*gcd(2, n))`
-/

namespace A091952.P18314364992276266792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082560 (n + 1)) (2 * Nat.gcd 2 n : ℤ)

end

end A091952.P18314364992276266792

namespace A091952

/-- `A082560(n+1)%(2*gcd(2, n))` -/
def P18314364992276266792.Spec : Prop :=
  ∀ n, P18314364992276266792.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P17867584590470621493

`A082560(n+1)%A040003(n)`
-/

namespace A091952.P17867584590470621493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082560 (n + 1)) (A040003 n)

end

end A091952.P17867584590470621493

namespace A091952

/-- `A082560(n+1)%A040003(n)` -/
def P17867584590470621493.Spec : Prop :=
  ∀ n, P17867584590470621493.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P7021950069889655683

`and(A040001(n), A082560(n+1))`
-/

namespace A091952.P7021950069889655683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040001 n) (A082560 (n + 1))

end

end A091952.P7021950069889655683

namespace A091952

/-- `and(A040001(n), A082560(n+1))` -/
def P7021950069889655683.Spec : Prop :=
  ∀ n, P7021950069889655683.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P7786875958016314797

`and(A082560(n+1), A176040(n))`
-/

namespace A091952.P7786875958016314797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082560 (n + 1)) (A176040 n)

end

end A091952.P7786875958016314797

namespace A091952

/-- `and(A082560(n+1), A176040(n))` -/
def P7786875958016314797.Spec : Prop :=
  ∀ n, P7786875958016314797.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P8094572748112521440

`and(A082560(n+1), A153284(n+1))`
-/

namespace A091952.P8094572748112521440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082560 (n + 1)) (A153284 (n + 1))

end

end A091952.P8094572748112521440

namespace A091952

/-- `and(A082560(n+1), A153284(n+1))` -/
def P8094572748112521440.Spec : Prop :=
  ∀ n, P8094572748112521440.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P15559824457188984678

`and(A135529(n+1)+2, A040001(n))`
-/

namespace A091952.P15559824457188984678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135529 (n + 1) + 2) (A040001 n)

end

end A091952.P15559824457188984678

namespace A091952

/-- `and(A135529(n+1)+2, A040001(n))` -/
def P15559824457188984678.Spec : Prop :=
  ∀ n, P15559824457188984678.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P7623427150244685176

`and(A004443(A135529(n+1)), A040001(n))`
-/

namespace A091952.P7623427150244685176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004443 (A135529 (n + 1)).toNat) (A040001 n)

end

end A091952.P7623427150244685176

namespace A091952

/-- `and(A004443(A135529(n+1)), A040001(n))` -/
def P7623427150244685176.Spec : Prop :=
  ∀ n, P7623427150244685176.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P8515237405238588392

`and(A082560(n+1), A204217(A020639(n+1)))`
-/

namespace A091952.P8515237405238588392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082560 (n + 1)) (A204217 (A020639 (n + 1)).toNat)

end

end A091952.P8515237405238588392

namespace A091952

/-- `and(A082560(n+1), A204217(A020639(n+1)))` -/
def P8515237405238588392.Spec : Prop :=
  ∀ n, P8515237405238588392.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P18439163868763609566

`and(Δ[A014601(n)], A082560(n+1))`
-/

namespace A091952.P18439163868763609566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A082560 (n + 1))

end

end A091952.P18439163868763609566

namespace A091952

/-- `and(Δ[A014601(n)], A082560(n+1))` -/
def P18439163868763609566.Spec : Prop :=
  ∀ n, P18439163868763609566.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P11159151480930112516

`and(A082560(n+1), A135561(A135561(n+1)))`
-/

namespace A091952.P11159151480930112516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082560 (n + 1)) (A135561 (A135561 (n + 1)).toNat)

end

end A091952.P11159151480930112516

namespace A091952

/-- `and(A082560(n+1), A135561(A135561(n+1)))` -/
def P11159151480930112516.Spec : Prop :=
  ∀ n, P11159151480930112516.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P7675120665025291429

`and(A082560(n+1), A288699(n))`
-/

namespace A091952.P7675120665025291429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082560 (n + 1)) (A288699 n)

end

end A091952.P7675120665025291429

namespace A091952

/-- `and(A082560(n+1), A288699(n))` -/
def P7675120665025291429.Spec : Prop :=
  ∀ n, P7675120665025291429.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P14224130277647274233

`A026765(n)%A040003(n)`
-/

namespace A091952.P14224130277647274233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026765 n) (A040003 n)

end

end A091952.P14224130277647274233

namespace A091952

/-- `A026765(n)%A040003(n)` -/
def P14224130277647274233.Spec : Prop :=
  ∀ n, P14224130277647274233.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P7864729591701061178

`and(A026765(n), A040001(n))`
-/

namespace A091952.P7864729591701061178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026765 n) (A040001 n)

end

end A091952.P7864729591701061178

namespace A091952

/-- `and(A026765(n), A040001(n))` -/
def P7864729591701061178.Spec : Prop :=
  ∀ n, P7864729591701061178.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P238058740806101718

`and(A026765(n), A176040(n))`
-/

namespace A091952.P238058740806101718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026765 n) (A176040 n)

end

end A091952.P238058740806101718

namespace A091952

/-- `and(A026765(n), A176040(n))` -/
def P238058740806101718.Spec : Prop :=
  ∀ n, P238058740806101718.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P9544942335008712990

`and(A026765(n), A288699(n))`
-/

namespace A091952.P9544942335008712990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026765 n) (A288699 n)

end

end A091952.P9544942335008712990

namespace A091952

/-- `and(A026765(n), A288699(n))` -/
def P9544942335008712990.Spec : Prop :=
  ∀ n, P9544942335008712990.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P15551706200503035932

`and(Δ[A014601(n)], A026765(n))`
-/

namespace A091952.P15551706200503035932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A026765 n)

end

end A091952.P15551706200503035932

namespace A091952

/-- `and(Δ[A014601(n)], A026765(n))` -/
def P15551706200503035932.Spec : Prop :=
  ∀ n, P15551706200503035932.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P2279894267333174837

`and(A026765(n), A153284(n+1))`
-/

namespace A091952.P2279894267333174837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026765 n) (A153284 (n + 1))

end

end A091952.P2279894267333174837

namespace A091952

/-- `and(A026765(n), A153284(n+1))` -/
def P2279894267333174837.Spec : Prop :=
  ∀ n, P2279894267333174837.a n = A091952 (n + 1)

end A091952

/-! ## A091952.P15314773867285711355

`and(A007455(n)%4, A026765(n))`
-/

namespace A091952.P15314773867285711355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A007455 n) 4) (A026765 n)

end

end A091952.P15314773867285711355

namespace A091952

/-- `and(A007455(n)%4, A026765(n))` -/
def P15314773867285711355.Spec : Prop :=
  ∀ n, P15314773867285711355.a n = A091952 (n + 1)

end A091952

/-!
# A091953: a(1)=1, a(2n)=1+a(n)(mod 2); a(2n+1)=2*a(2n)+1.

The programs for A091953, the canonical program `A091953.P10332148221094495781` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091953 has offset 1).

The definition of A091953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091953.P5287386171876975803

`A039710(and(1, A007913(n+1))*a(n-1)+1)` with `a(0)=1`
-/

namespace A091953.P5287386171876975803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039710 (Int.land 1 (A007913 (n + 1)) * a (n - 1) + 1).toNat

end

end A091953.P5287386171876975803

namespace A091953

/-- `A039710(and(1, A007913(n+1))*a(n-1)+1)` -/
def P5287386171876975803.Spec : Prop :=
  ∀ n, P5287386171876975803.a n = A091953 (n + 1)

end A091953

/-! ## A091953.P10332148221094495781

`A014963(A061393(A007814(n+1))+A061393(a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A091953

/-- `A014963(A061393(A007814(n+1))+A061393(a(n-1)))` -/
def P10332148221094495781.Spec : Prop :=
  ∀ n, P10332148221094495781.a n = A091953 (n + 1)

theorem P10332148221094495781.correct : P10332148221094495781.Spec := by
  intro n
  simp only [A091953, Nat.add_sub_cancel]

end A091953

/-! ## A091953.P3119850119095998814

`A014963(A001511(A001511(n+1)+1)+A000225(a(n-1)))` with `a(0)=1`
-/

namespace A091953.P3119850119095998814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (A001511 (A001511 (n + 1) + 1).toNat + A000225 (a (n - 1)).toNat).toNat

end

end A091953.P3119850119095998814

namespace A091953

/-- `A014963(A001511(A001511(n+1)+1)+A000225(a(n-1)))` -/
def P3119850119095998814.Spec : Prop :=
  ∀ n, P3119850119095998814.a n = A091953 (n + 1)

end A091953

/-! ## A091953.P3906768320393696264

`A014963(A007814(A001511(n+1)+1)+A000079(a(n-1)))` with `a(0)=1`
-/

namespace A091953.P3906768320393696264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (A007814 (A001511 (n + 1) + 1).toNat + A000079 (a (n - 1)).toNat).toNat

end

end A091953.P3906768320393696264

namespace A091953

/-- `A014963(A007814(A001511(n+1)+1)+A000079(a(n-1)))` -/
def P3906768320393696264.Spec : Prop :=
  ∀ n, P3906768320393696264.a n = A091953 (n + 1)

end A091953

/-! ## A091953.P15633187246313917271

`A153284(n+1)+A101674(A166404(n))`
-/

namespace A091953.P15633187246313917271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) + A101674 (A166404 n).toNat

end

end A091953.P15633187246313917271

namespace A091953

/-- `A153284(n+1)+A101674(A166404(n))` -/
def P15633187246313917271.Spec : Prop :=
  ∀ n, P15633187246313917271.a n = A091953 (n + 1)

end A091953

/-!
# A091954: Number of odd proper divisors of n. That is, the number of odd divisors of n that are less than n.

The programs for A091954, the canonical program `A091954.P3013811461556753393` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091954 has offset 1).

The definition of A091954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091954.P3013811461556753393

`A001227(n+1)-A000035(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091954

/-- `A001227(n+1)-A000035(n+1)` -/
def P3013811461556753393.Spec : Prop :=
  ∀ n, P3013811461556753393.a n = A091954 (n + 1)

theorem P3013811461556753393.correct : P3013811461556753393.Spec := by
  intro n
  simp only [A091954, Nat.add_sub_cancel]

end A091954

/-! ## A091954.P928095315761273907

`A007814(A293214(n+1))`
-/

namespace A091954.P928095315761273907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A293214 (n + 1)).toNat

end

end A091954.P928095315761273907

namespace A091954

/-- `A007814(A293214(n+1))` -/
def P928095315761273907.Spec : Prop :=
  ∀ n, P928095315761273907.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P5025080698596598570

`A007814(A293216(n+1))`
-/

namespace A091954.P5025080698596598570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A293216 (n + 1)).toNat

end

end A091954.P5025080698596598570

namespace A091954

/-- `A007814(A293216(n+1))` -/
def P5025080698596598570.Spec : Prop :=
  ∀ n, P5025080698596598570.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P1490199046094009650

`∑{d}[n+1, (#%(n+1))%2]`
-/

namespace A091954.P1490199046094009650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % (n + 1) % 2

end

end A091954.P1490199046094009650

namespace A091954

/-- `∑{d}[n+1, (#%(n+1))%2]` -/
def P1490199046094009650.Spec : Prop :=
  ∀ n, (P1490199046094009650.a n : ℤ) = A091954 (n + 1)

end A091954

/-! ## A091954.P9948085202265111597

`A320003(3*(n+1))`
-/

namespace A091954.P9948085202265111597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (3 * (n + 1))

end

end A091954.P9948085202265111597

namespace A091954

/-- `A320003(3*(n+1))` -/
def P9948085202265111597.Spec : Prop :=
  ∀ n, P9948085202265111597.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P6526941512350237874

`∑{d}[n+1, A296066(#)]`
-/

namespace A091954.P6526941512350237874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296066 d

end

end A091954.P6526941512350237874

namespace A091954

/-- `∑{d}[n+1, A296066(#)]` -/
def P6526941512350237874.Spec : Prop :=
  ∀ n, P6526941512350237874.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P3292197133941877528

`round(A032741(n+1)/(val(n+1, 2)+1))`
-/

namespace A091954.P3292197133941877528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032741 (n + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ))

end

end A091954.P3292197133941877528

namespace A091954

/-- `round(A032741(n+1)/(val(n+1, 2)+1))` -/
def P3292197133941877528.Spec : Prop :=
  ∀ n, P3292197133941877528.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P5437442933413656804

`A000035(n)+Δ[A248517(n)]`
-/

namespace A091954.P5437442933413656804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (f1 (n + 1) - f1 n)

end

end A091954.P5437442933413656804

namespace A091954

/-- `A000035(n)+Δ[A248517(n)]` -/
def P5437442933413656804.Spec : Prop :=
  ∀ n, P5437442933413656804.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P13243979569797935780

`Δ[A248517(n)+A008619(n)]`
-/

namespace A091954.P13243979569797935780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n + A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091954.P13243979569797935780

namespace A091954

/-- `Δ[A248517(n)+A008619(n)]` -/
def P13243979569797935780.Spec : Prop :=
  ∀ n, P13243979569797935780.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P987653500860991312

`A069283(n+1)+A000035(n)`
-/

namespace A091954.P987653500860991312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1) + A000035 n

end

end A091954.P987653500860991312

namespace A091954

/-- `A069283(n+1)+A000035(n)` -/
def P987653500860991312.Spec : Prop :=
  ∀ n, P987653500860991312.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P11841329798353982960

`A111775(n+1)+A057427(n)`
-/

namespace A091954.P11841329798353982960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (n + 1) + A057427 n

end

end A091954.P11841329798353982960

namespace A091954

/-- `A111775(n+1)+A057427(n)` -/
def P11841329798353982960.Spec : Prop :=
  ∀ n, P11841329798353982960.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P6743659302515232334

`A001227(n+1)-A059841(n)`
-/

namespace A091954.P6743659302515232334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A059841 n

end

end A091954.P6743659302515232334

namespace A091954

/-- `A001227(n+1)-A059841(n)` -/
def P6743659302515232334.Spec : Prop :=
  ∀ n, P6743659302515232334.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P2881391185780144184

`A111775(n+1)-A057428(n)`
-/

namespace A091954.P2881391185780144184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (n + 1) - A057428 n

end

end A091954.P2881391185780144184

namespace A091954

/-- `A111775(n+1)-A057428(n)` -/
def P2881391185780144184.Spec : Prop :=
  ∀ n, P2881391185780144184.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P7248549263295001657

`A069283(n+1)+A134452(n)²`
-/

namespace A091954.P7248549263295001657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1) + A134452 n ^ 2

end

end A091954.P7248549263295001657

namespace A091954

/-- `A069283(n+1)+A134452(n)²` -/
def P7248549263295001657.Spec : Prop :=
  ∀ n, P7248549263295001657.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P2640419324435981401

`A069283(n+1)+Δ[A008619(n)]`
-/

namespace A091954.P2640419324435981401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1) + (f1 (n + 1) - f1 n)

end

end A091954.P2640419324435981401

namespace A091954

/-- `A069283(n+1)+Δ[A008619(n)]` -/
def P2640419324435981401.Spec : Prop :=
  ∀ n, P2640419324435981401.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P2878040882622414474

`A293513(n+1)+A293451(n+1)`
-/

namespace A091954.P2878040882622414474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (n + 1) + A293451 (n + 1)

end

end A091954.P2878040882622414474

namespace A091954

/-- `A293513(n+1)+A293451(n+1)` -/
def P2878040882622414474.Spec : Prop :=
  ∀ n, P2878040882622414474.a n = A091954 (n + 1)

theorem P2878040882622414474.correct : P2878040882622414474.Spec := by
  intro n
  simp only [A091954, Nat.add_sub_cancel, A091954.P2878040882622414474.a, A091954.P3013811461556753393.a, A000035, A000035.P2023072528413494694.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A293451, A293451.P7933704041420674484.a, A293513, A293513.P2913360707613170259.a, A001826, A001826.P1518250824516108745.a, A121262, A121262.P5808261376347758400.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A091954

/-! ## A091954.P7472988936455983289

`A320015(n+1)+A320003(n+1)`
-/

namespace A091954.P7472988936455983289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (n + 1) + A320003 (n + 1)

end

end A091954.P7472988936455983289

namespace A091954

/-- `A320015(n+1)+A320003(n+1)` -/
def P7472988936455983289.Spec : Prop :=
  ∀ n, P7472988936455983289.a n = A091954 (n + 1)

theorem P7472988936455983289.correct : P7472988936455983289.Spec := by
  intro n
  simp only [A091954, Nat.add_sub_cancel, A091954.P7472988936455983289.a, A091954.P3013811461556753393.a, A000035, A000035.P2023072528413494694.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A320003, A320003.P14814290166151194418.a, A320015, A320015.P7908202895752596579.a, A320001, A320001.P12998613339711541630.a, A320005, A320005.P17788538960493926001.f1, A320005.P17788538960493926001.a, A079979, A079979.P15116196827675478457.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A279060, A279060.P16013489652105091246.f1, A279060.P16013489652105091246.a, A319995, A319995.P426129462257340288.a, A035218, A035218.P251444375763395184.f1, A035218.P251444375763395184.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091954

/-! ## A091954.P15596861631572284807

`A368684(n+1)+A335021(n+1)`
-/

namespace A091954.P15596861631572284807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368684 (n + 1) + A335021 (n + 1)

end

end A091954.P15596861631572284807

namespace A091954

/-- `A368684(n+1)+A335021(n+1)` -/
def P15596861631572284807.Spec : Prop :=
  ∀ n, P15596861631572284807.a n = A091954 (n + 1)

theorem P15596861631572284807.correct : P15596861631572284807.Spec := by
  intro n
  simp only [A091954, Nat.add_sub_cancel, A091954.P15596861631572284807.a, A091954.P3013811461556753393.a, A000035, A000035.P2023072528413494694.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A335021, A335021.P18155568080400955392.a, A368684, A368684.P17029386363666908636.a, A028310, A028310.P18130301328277559831.a, A325937, A325937.P7515168000438611485.a, A048272, A048272.P6639145440777643207.a, A183063, A183063.P14549643650991336837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091954

/-! ## A091954.P1154109547680347649

`A069930(n+1)-A023645(n+1)`
-/

namespace A091954.P1154109547680347649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 1) - A023645 (n + 1)

end

end A091954.P1154109547680347649

namespace A091954

/-- `A069930(n+1)-A023645(n+1)` -/
def P1154109547680347649.Spec : Prop :=
  ∀ n, P1154109547680347649.a n = A091954 (n + 1)

end A091954

/-! ## A091954.P17575439262602894175

`A111775(n+1)+1-A000007(n)`
-/

namespace A091954.P17575439262602894175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (n + 1) + (1 - A000007 n)

end

end A091954.P17575439262602894175

namespace A091954

/-- `A111775(n+1)+1-A000007(n)` -/
def P17575439262602894175.Spec : Prop :=
  ∀ n, P17575439262602894175.a n = A091954 (n + 1)

end A091954

/-!
# A091955: Number of increasing subsequences that can be made from the sequence of successive numbers.

The programs for A091955, there is no canonical definition to state claims against.
-/

/-! ## A091955.P7664073773118007384

`record[A207779(∏{p}[n+1, #])]-(n+1)/10^val(n+1, 10)`
-/

namespace A091955.P7664073773118007384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207779 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)

end

end A091955.P7664073773118007384

/-! ## A091955.P146944422595235472

`A167976(A091584(n+2))`
-/

namespace A091955.P146944422595235472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167976 (A091584 (n + 2)).toNat

end

end A091955.P146944422595235472

/-! ## A091955.P3177953164216964170

`A342591(A239882(n))+n`
-/

namespace A091955.P3177953164216964170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (A239882 n).toNat + (n : ℤ)

end

end A091955.P3177953164216964170

/-! ## A091955.P1490909765024103638

`record[A238877(∑[A086066(n)])]`
-/

namespace A091955.P1490909765024103638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091955.P1490909765024103638

/-! ## A091955.P9046417700166853374

`A217152(A347445(n))+A000041(n+1)`
-/

namespace A091955.P9046417700166853374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217152 (A347445 n).toNat + A000041 (n + 1)

end

end A091955.P9046417700166853374

/-!
# A091956: Number of increasing subsequences that can be made from the sequence of successive primes.

The programs for A091956, there is no canonical definition to state claims against.
-/

/-! ## A091956.P14531472855637722163

`A328369(Δ[round(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A091956.P14531472855637722163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (f1 (n + 1) - f1 n).toNat

end

end A091956.P14531472855637722163

/-! ## A091956.P7948650832894306247

`A328369(A209434(∑[n]))`
-/

namespace A091956.P7948650832894306247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (A209434 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A091956.P7948650832894306247

/-! ## A091956.P4370192774100752712

`A328369(record[A209434(n)])`
-/

namespace A091956.P4370192774100752712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091956.P4370192774100752712

/-! ## A091956.P9058998954376312675

`A328369(A005181(n+1))`
-/

namespace A091956.P9058998954376312675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (A005181 (n + 1)).toNat

end

end A091956.P9058998954376312675

/-!
# A091957: a(1)=0, a(2)=1, a(n)=A000217(a(n-1)) + A000217(a(n-2)).

The programs for A091957, the canonical program `A091957.P2065705541895436327` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091957 has offset 1).

The definition of A091957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(a(n-1))+A000217(a(n-2))` (program `A091957.P2065705541895436327`, by `A091957.P2065705541895436327.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091957.P2065705541895436327

`A000217(a(n-1))+A000217(a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091957

/-- `A000217(a(n-1))+A000217(a(n-2))` -/
def P2065705541895436327.Spec : Prop :=
  ∀ n, P2065705541895436327.a n = A091957 (n + 1)

theorem P2065705541895436327.correct : P2065705541895436327.Spec := by
  intro n
  simp only [A091957, Nat.add_sub_cancel]

end A091957

/-! ## A091957.P16573885906034859808

`floor(sqrt(2*A225505(n)))`
-/

namespace A091957.P16573885906034859808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A225505 n)

end

end A091957.P16573885906034859808

namespace A091957

/-- `floor(sqrt(2*A225505(n)))` -/
def P16573885906034859808.Spec : Prop :=
  ∀ n, P16573885906034859808.a n = A091957 (n + 1)

end A091957

/-! ## A091957.P10691425631708315629

`A299097(2*a(n-1))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A091957.P10691425631708315629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A299097 (2 * a (n - 1)).toNat

end

end A091957.P10691425631708315629

namespace A091957

/-- `A299097(2*a(n-1))` -/
def P10691425631708315629.Spec : Prop :=
  ∀ n, P10691425631708315629.a n = A091957 (n + 1)

end A091957

/-!
# A091959: a(1)=1, a(2n)=(a(n)+1) mod 2, a(2n+1)=2*a(2n)+1.

The programs for A091959, the canonical program `A091959.P16535470042393817180` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091959 has offset 1).

The definition of A091959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091959.P16535470042393817180

`C(Δ[val(n+1, 2)%2]+2, 2*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091959

/-- `C(Δ[val(n+1, 2)%2]+2, 2*a(n-1))` -/
def P16535470042393817180.Spec : Prop :=
  ∀ n, (P16535470042393817180.a n : ℤ) = A091959 (n + 1)

theorem P16535470042393817180.correct : P16535470042393817180.Spec := by
  intro n
  simp only [A091959, Nat.add_sub_cancel]

end A091959

/-! ## A091959.P12540561060165041727

`C(3, ((a(n-1)+n%2)*a(floor(n/2)))²)` with `a(0)=1`
-/

namespace A091959.P12540561060165041727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose 3 (((a (n - 1) + n % 2) * a ⌊(n : ℚ) / 2⌋.toNat) ^ 2)

end

end A091959.P12540561060165041727

namespace A091959

/-- `C(3, ((a(n-1)+n%2)*a(floor(n/2)))²)` -/
def P12540561060165041727.Spec : Prop :=
  ∀ n, (P12540561060165041727.a n : ℤ) = A091959 (n + 1)

end A091959

/-! ## A091959.P9160939916039627476

`val(A091953(n+1)+5, 2)`
-/

namespace A091959.P9160939916039627476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A091953 (n + 1) + 5).toNat 2

end

end A091959.P9160939916039627476

namespace A091959

/-- `val(A091953(n+1)+5, 2)` -/
def P9160939916039627476.Spec : Prop :=
  ∀ n, (P9160939916039627476.a n : ℤ) = A091959 (n + 1)

end A091959

/-! ## A091959.P12543969692381239979

`A028242(Δ[or(2, A026491(n))])`
-/

namespace A091959.P12543969692381239979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A026491 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (n + 1) - f1 n).toNat

end

end A091959.P12543969692381239979

namespace A091959

/-- `A028242(Δ[or(2, A026491(n))])` -/
def P12543969692381239979.Spec : Prop :=
  ∀ n, P12543969692381239979.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P6381984560339184013

`A091953(n+1)%A040003(n)`
-/

namespace A091959.P6381984560339184013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091953 (n + 1)) (A040003 n)

end

end A091959.P6381984560339184013

namespace A091959

/-- `A091953(n+1)%A040003(n)` -/
def P6381984560339184013.Spec : Prop :=
  ∀ n, P6381984560339184013.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P11121777950323224868

`and(A010703(n), A091953(n+1))`
-/

namespace A091959.P11121777950323224868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010703 n) (A091953 (n + 1))

end

end A091959.P11121777950323224868

namespace A091959

/-- `and(A010703(n), A091953(n+1))` -/
def P11121777950323224868.Spec : Prop :=
  ∀ n, P11121777950323224868.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P1626838524538490582

`and(A010707(n), A091953(n+1))`
-/

namespace A091959.P1626838524538490582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010707 n) (A091953 (n + 1))

end

end A091959.P1626838524538490582

namespace A091959

/-- `and(A010707(n), A091953(n+1))` -/
def P1626838524538490582.Spec : Prop :=
  ∀ n, P1626838524538490582.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P18101735973237755150

`and(A091953(n+1), A093328(n))`
-/

namespace A091959.P18101735973237755150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091953 (n + 1)) (A093328 n)

end

end A091959.P18101735973237755150

namespace A091959

/-- `and(A091953(n+1), A093328(n))` -/
def P18101735973237755150.Spec : Prop :=
  ∀ n, P18101735973237755150.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P17794044486167946438

`and(A091953(n+1), A097803(n))`
-/

namespace A091959.P17794044486167946438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091953 (n + 1)) (A097803 n)

end

end A091959.P17794044486167946438

namespace A091959

/-- `and(A091953(n+1), A097803(n))` -/
def P17794044486167946438.Spec : Prop :=
  ∀ n, P17794044486167946438.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P10874033143192208286

`and(A091953(n+1), A115716(n))`
-/

namespace A091959.P10874033143192208286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091953 (n + 1)) (A115716 n)

end

end A091959.P10874033143192208286

namespace A091959

/-- `and(A091953(n+1), A115716(n))` -/
def P10874033143192208286.Spec : Prop :=
  ∀ n, P10874033143192208286.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P2486796616116700896

`and(A091953(n+1), A147568(n))`
-/

namespace A091959.P2486796616116700896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091953 (n + 1)) (A147568 n)

end

end A091959.P2486796616116700896

namespace A091959

/-- `and(A091953(n+1), A147568(n))` -/
def P2486796616116700896.Spec : Prop :=
  ∀ n, P2486796616116700896.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P10002490097203170994

`and(A091953(n+1), A151568(n))`
-/

namespace A091959.P10002490097203170994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091953 (n + 1)) (A151568 n)

end

end A091959.P10002490097203170994

namespace A091959

/-- `and(A091953(n+1), A151568(n))` -/
def P10002490097203170994.Spec : Prop :=
  ∀ n, P10002490097203170994.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P6138474288538654152

`and(A091953(n+1), A154359(n))`
-/

namespace A091959.P6138474288538654152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091953 (n + 1)) (A154359 n)

end

end A091959.P6138474288538654152

namespace A091959

/-- `and(A091953(n+1), A154359(n))` -/
def P6138474288538654152.Spec : Prop :=
  ∀ n, P6138474288538654152.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P7479261505167193628

`and(A091953(n+1), A174971(n))`
-/

namespace A091959.P7479261505167193628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091953 (n + 1)) (A174971 n)

end

end A091959.P7479261505167193628

namespace A091959

/-- `and(A091953(n+1), A174971(n))` -/
def P7479261505167193628.Spec : Prop :=
  ∀ n, P7479261505167193628.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P10595411746958188517

`and(A091953(n+1), A176040(n))`
-/

namespace A091959.P10595411746958188517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091953 (n + 1)) (A176040 n)

end

end A091959.P10595411746958188517

namespace A091959

/-- `and(A091953(n+1), A176040(n))` -/
def P10595411746958188517.Spec : Prop :=
  ∀ n, P10595411746958188517.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P15679981303311040666

`and(A091953(n+1), A211773(n))`
-/

namespace A091959.P15679981303311040666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091953 (n + 1)) (A211773 n)

end

end A091959.P15679981303311040666

namespace A091959

/-- `and(A091953(n+1), A211773(n))` -/
def P15679981303311040666.Spec : Prop :=
  ∀ n, P15679981303311040666.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P8775116569762741938

`and(A091953(n+1), A211775(n))`
-/

namespace A091959.P8775116569762741938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091953 (n + 1)) (A211775 n)

end

end A091959.P8775116569762741938

namespace A091959

/-- `and(A091953(n+1), A211775(n))` -/
def P8775116569762741938.Spec : Prop :=
  ∀ n, P8775116569762741938.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P15924870116188126337

`and(A091953(n+1), A216876(n))`
-/

namespace A091959.P15924870116188126337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091953 (n + 1)) (A216876 n)

end

end A091959.P15924870116188126337

namespace A091959

/-- `and(A091953(n+1), A216876(n))` -/
def P15924870116188126337.Spec : Prop :=
  ∀ n, P15924870116188126337.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P6739972934839352880

`and(2*n+3, A005680(xor(n, floor(n/2))+1))`
-/

namespace A091959.P6739972934839352880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 3 : ℤ) (A005680 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat)

end

end A091959.P6739972934839352880

namespace A091959

/-- `and(2*n+3, A005680(xor(n, floor(n/2))+1))` -/
def P6739972934839352880.Spec : Prop :=
  ∀ n, P6739972934839352880.a n = A091959 (n + 1)

end A091959

/-! ## A091959.P17446685481848182922

`or((((n+1)%8)%7)%2, A091297(∏{p}[n, #^val(2*n, #)]))`
-/

namespace A091959.P17446685481848182922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((n + 1) % 8 % 7 % 2 : ℕ) : ℤ) (A091297 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (2 * n) p))

end

end A091959.P17446685481848182922

namespace A091959

/-- `or((((n+1)%8)%7)%2, A091297(∏{p}[n, #^val(2*n, #)]))` -/
def P17446685481848182922.Spec : Prop :=
  ∀ n, P17446685481848182922.a n = A091959 (n + 1)

end A091959

/-!
# A091960: a(1)=1, a(2n)=a(2n-1)+(a(n)mod 2), a(2n+1)=a(2n)+1.

The programs for A091960, the canonical program `A091960.P18192591898842962700` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091960 has offset 1).

The definition of A091960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091960.P18192591898842962700

`∑[abs(A253414(n))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091960

/-- `∑[abs(A253414(n))]` -/
def P18192591898842962700.Spec : Prop :=
  ∀ n, P18192591898842962700.a n = A091960 (n + 1)

theorem P18192591898842962700.correct : P18192591898842962700.Spec := by
  intro n
  simp only [A091960, Nat.add_sub_cancel]

end A091960

/-! ## A091960.P7820889337715554260

`∑[A253414(-xor(n, C(n, n²)-2))²]`
-/

namespace A091960.P7820889337715554260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 (-Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P7820889337715554260

namespace A091960

/-- `∑[A253414(-xor(n, C(n, n²)-2))²]` -/
def P7820889337715554260.Spec : Prop :=
  ∀ n, P7820889337715554260.a n = A091960 (n + 1)

end A091960

/-! ## A091960.P4944237217886211251

`∑[A253414(n)^A002378(n)]`
-/

namespace A091960.P4944237217886211251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253414 n : ℚ) ^ (A002378 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P4944237217886211251

namespace A091960

/-- `∑[A253414(n)^A002378(n)]` -/
def P4944237217886211251.Spec : Prop :=
  ∀ n, P4944237217886211251.a n = (A091960 (n + 1) : ℚ)

end A091960

/-! ## A091960.P1292788277609988592

`∑[A253414(n)^A004277(n)]`
-/

namespace A091960.P1292788277609988592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253414 n : ℚ) ^ (A004277 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P1292788277609988592

namespace A091960

/-- `∑[A253414(n)^A004277(n)]` -/
def P1292788277609988592.Spec : Prop :=
  ∀ n, P1292788277609988592.a n = (A091960 (n + 1) : ℚ)

end A091960

/-! ## A091960.P7359746269496359179

`∑[A253414(n)^A040063(n)]`
-/

namespace A091960.P7359746269496359179
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253414 n : ℚ) ^ (A040063 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P7359746269496359179

namespace A091960

/-- `∑[A253414(n)^A040063(n)]` -/
def P7359746269496359179.Spec : Prop :=
  ∀ n, P7359746269496359179.a n = (A091960 (n + 1) : ℚ)

end A091960

/-! ## A091960.P2470233324199867684

`∑[A253414(n)^A243499(n)]`
-/

namespace A091960.P2470233324199867684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253414 n : ℚ) ^ (A243499 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P2470233324199867684

namespace A091960

/-- `∑[A253414(n)^A243499(n)]` -/
def P2470233324199867684.Spec : Prop :=
  ∀ n, P2470233324199867684.a n = (A091960 (n + 1) : ℚ)

end A091960

/-! ## A091960.P1596099747398032725

`∑[A253414(n)²^A050932(n)]`
-/

namespace A091960.P1596099747398032725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253414 n ^ 2 : ℚ) ^ (A050932 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P1596099747398032725

namespace A091960

/-- `∑[A253414(n)²^A050932(n)]` -/
def P1596099747398032725.Spec : Prop :=
  ∀ n, P1596099747398032725.a n = (A091960 (n + 1) : ℚ)

end A091960

/-! ## A091960.P13888973146217082437

`∑[A253414(n)^A112772(n+1)]`
-/

namespace A091960.P13888973146217082437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253414 n : ℚ) ^ (A112772 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P13888973146217082437

namespace A091960

/-- `∑[A253414(n)^A112772(n+1)]` -/
def P13888973146217082437.Spec : Prop :=
  ∀ n, P13888973146217082437.a n = (A091960 (n + 1) : ℚ)

end A091960

/-! ## A091960.P12657590671187355221

`∑[A253414(n)^A213850(n+1)]`
-/

namespace A091960.P12657590671187355221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253414 n : ℚ) ^ (A213850 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P12657590671187355221

namespace A091960

/-- `∑[A253414(n)^A213850(n+1)]` -/
def P12657590671187355221.Spec : Prop :=
  ∀ n, P12657590671187355221.a n = (A091960 (n + 1) : ℚ)

end A091960

/-! ## A091960.P1723613140819699247

`∑[A253414(n)^A337386(n+1)]`
-/

namespace A091960.P1723613140819699247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253414 n : ℚ) ^ (A337386 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P1723613140819699247

namespace A091960

/-- `∑[A253414(n)^A337386(n+1)]` -/
def P1723613140819699247.Spec : Prop :=
  ∀ n, P1723613140819699247.a n = (A091960 (n + 1) : ℚ)

end A091960

/-! ## A091960.P5430248652104383366

`∑[(A253414(n)^A272349(n+1))^(n-2)]`
-/

namespace A091960.P5430248652104383366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A253414 n : ℚ) ^ (A272349 (n + 1) : ℤ)) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P5430248652104383366

namespace A091960

/-- `∑[(A253414(n)^A272349(n+1))^(n-2)]` -/
def P5430248652104383366.Spec : Prop :=
  ∀ n, P5430248652104383366.a n = (A091960 (n + 1) : ℚ)

end A091960

/-! ## A091960.P5360880068823744961

`∑[A191652(n)%2]`
-/

namespace A091960.P5360880068823744961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191652 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P5360880068823744961

namespace A091960

/-- `∑[A191652(n)%2]` -/
def P5360880068823744961.Spec : Prop :=
  ∀ n, P5360880068823744961.a n = A091960 (n + 1)

end A091960

/-! ## A091960.P12296014215527492409

`∑[A082582(n)%2]`
-/

namespace A091960.P12296014215527492409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082582 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P12296014215527492409

namespace A091960

/-- `∑[A082582(n)%2]` -/
def P12296014215527492409.Spec : Prop :=
  ∀ n, P12296014215527492409.a n = A091960 (n + 1)

end A091960

/-! ## A091960.P11913401473525799550

`∑[A143330(n)%2]`
-/

namespace A091960.P11913401473525799550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143330 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P11913401473525799550

namespace A091960

/-- `∑[A143330(n)%2]` -/
def P11913401473525799550.Spec : Prop :=
  ∀ n, P11913401473525799550.a n = A091960 (n + 1)

end A091960

/-! ## A091960.P13715581708052841071

`∑[A007400(n²+1)²%3]`
-/

namespace A091960.P13715581708052841071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007400 (n ^ 2 + 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P13715581708052841071

namespace A091960

/-- `∑[A007400(n²+1)²%3]` -/
def P13715581708052841071.Spec : Prop :=
  ∀ n, P13715581708052841071.a n = A091960 (n + 1)

end A091960

/-! ## A091960.P16099611044459471803

`∑[A162477(n)%2]`
-/

namespace A091960.P16099611044459471803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162477 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P16099611044459471803

namespace A091960

/-- `∑[A162477(n)%2]` -/
def P16099611044459471803.Spec : Prop :=
  ∀ n, P16099611044459471803.a n = A091960 (n + 1)

end A091960

/-! ## A091960.P15624236675319770478

`∑[A253414(n²)]`
-/

namespace A091960.P15624236675319770478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P15624236675319770478

namespace A091960

/-- `∑[A253414(n²)]` -/
def P15624236675319770478.Spec : Prop :=
  ∀ n, P15624236675319770478.a n = A091960 (n + 1)

end A091960

/-! ## A091960.P17839830904844279289

`∑[A193296(n+1)%2]`
-/

namespace A091960.P17839830904844279289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193296 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P17839830904844279289

namespace A091960

/-- `∑[A193296(n+1)%2]` -/
def P17839830904844279289.Spec : Prop :=
  ∀ n, P17839830904844279289.a n = A091960 (n + 1)

end A091960

/-! ## A091960.P5149432752171537472

`A253414(n*n)+a(n-1)` with `a(0)=1`
-/

namespace A091960.P5149432752171537472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253414 (n * n) + a (n - 1)

end

end A091960.P5149432752171537472

namespace A091960

/-- `A253414(n*n)+a(n-1)` -/
def P5149432752171537472.Spec : Prop :=
  ∀ n, P5149432752171537472.a n = A091960 (n + 1)

end A091960

/-! ## A091960.P14911404288632436125

`∑[(A301849(n)^(n-1))²]`
-/

namespace A091960.P14911404288632436125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A301849 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P14911404288632436125

namespace A091960

/-- `∑[(A301849(n)^(n-1))²]` -/
def P14911404288632436125.Spec : Prop :=
  ∀ n, P14911404288632436125.a n = (A091960 (n + 1) : ℚ)

end A091960

/-!
# A091962: From enumerating paths in the plane.

The programs for A091962, the canonical program `A091962.P10944044888975475074` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091962 has offset 0).

The definition of A091962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091962.P10944044888975475074

`C(2*n+4, 3)*C(2*n+6, 7)/160`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091962

/-- `C(2*n+4, 3)*C(2*n+6, 7)/160` -/
def P10944044888975475074.Spec : Prop :=
  ∀ n, P10944044888975475074.a n = (A091962 n : ℚ)

end A091962

/-! ## A091962.P17659381817101596693

`A133111(2*n+3)/16`
-/

namespace A091962.P17659381817101596693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133111 (2 * n + 3) : ℚ) / 16

end

end A091962.P17659381817101596693

namespace A091962

/-- `A133111(2*n+3)/16` -/
def P17659381817101596693.Spec : Prop :=
  ∀ n, P17659381817101596693.a n = (A091962 n : ℚ)

end A091962

/-! ## A091962.P6812419120274730789

`floor(A133111(n+3+n)/16)`
-/

namespace A091962.P6812419120274730789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133111 (n + 3 + n) : ℚ) / 16⌋

end

end A091962.P6812419120274730789

namespace A091962

/-- `floor(A133111(n+3+n)/16)` -/
def P6812419120274730789.Spec : Prop :=
  ∀ n, P6812419120274730789.a n = A091962 n

end A091962

/-! ## A091962.P17416506742726970535

`record[A133111(A093178(n))/16]`
-/

namespace A091962.P17416506742726970535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133111 (A093178 n).toNat : ℚ) / 16

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091962.P17416506742726970535

namespace A091962

/-- `record[A133111(A093178(n))/16]` -/
def P17416506742726970535.Spec : Prop :=
  ∀ n, P17416506742726970535.a n = (A091962 n : ℚ)

end A091962

/-! ## A091962.P17456814515264068027

`record[A133111(A000265(n+1))/16]`
-/

namespace A091962.P17456814515264068027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133111 (A000265 (n + 1)).toNat : ℚ) / 16

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091962.P17456814515264068027

namespace A091962

/-- `record[A133111(A000265(n+1))/16]` -/
def P17456814515264068027.Spec : Prop :=
  ∀ n, P17456814515264068027.a n = (A091962 n : ℚ)

end A091962

/-! ## A091962.P9617589148210798776

`ceil(A133111(A000265(Δ[n²]+2))/16)`
-/

namespace A091962.P9617589148210798776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133111 (A000265 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat).toNat : ℚ) / 16⌉

end

end A091962.P9617589148210798776

namespace A091962

/-- `ceil(A133111(A000265(Δ[n²]+2))/16)` -/
def P9617589148210798776.Spec : Prop :=
  ∀ n, P9617589148210798776.a n = A091962 n

end A091962

/-!
# A091963: a(n) is the smallest gcd of two interior numbers on row n of Pascal's triangle ("interior" means that the 1's at the ends of the rows are excluded).

The programs for A091963, there is no canonical definition to state claims against.
-/

/-! ## A091963.P12377991324301192844

`A034684(A088387(n+2)*A290480(n+2))`
-/

namespace A091963.P12377991324301192844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A088387 (n + 2) * A290480 (n + 2)).toNat

end

end A091963.P12377991324301192844

/-! ## A091963.P8378363872233080904

`A034684(A052410(n+2))%A092461(3*n+5)`
-/

namespace A091963.P8378363872233080904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034684 (A052410 (n + 2)).toNat) (A092461 (3 * n + 5))

end

end A091963.P8378363872233080904

/-! ## A091963.P6770818143265226742

`A034684(A052410(∏{d}[n+2, #]))`
-/

namespace A091963.P6770818143265226742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A052410 (∏ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A091963.P6770818143265226742

/-! ## A091963.P17791193947905314876

`A223490((n+2)*A063718(n+2))`
-/

namespace A091963.P17791193947905314876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 ((n + 2 : ℤ) * A063718 (n + 2)).toNat

end

end A091963.P17791193947905314876

/-! ## A091963.P10999032898879773185

`A067695(n+2)-A185284(A067695(2*n+1))`
-/

namespace A091963.P10999032898879773185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (n + 2) - A185284 (A067695 (2 * n + 1)).toNat

end

end A091963.P10999032898879773185

/-!
# A091964: Number of left factors of peakless Motzkin paths of length n.

The programs for A091964, there is no canonical definition to state claims against.
-/

/-! ## A091964.P9094567033726822623

`A088518(Δ[n²])`
-/

namespace A091964.P9094567033726822623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A091964.P9094567033726822623

/-! ## A091964.P5848932542089294160

`A329703(Δ[n²])`
-/

namespace A091964.P5848932542089294160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329703 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A091964.P5848932542089294160

/-! ## A091964.P13017923324380232738

`∑[A088518(2*n)]`
-/

namespace A091964.P13017923324380232738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091964.P13017923324380232738

/-! ## A091964.P6811989556583974759

`(n%2)!*A088518(2*n+1)`
-/

namespace A091964.P6811989556583974759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A088518 (2 * n + 1)

end

end A091964.P6811989556583974759

/-! ## A091964.P2429770043640372308

`record[A329703(A026741(n))]`
-/

namespace A091964.P2429770043640372308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329703 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091964.P2429770043640372308

/-! ## A091964.P11869189396320350218

`A325919(n)+A325917(n)`
-/

namespace A091964.P11869189396320350218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325919 n + A325917 n

end

end A091964.P11869189396320350218

/-! ## A091964.P2575641381399756029

`record[A088518(A088491(n+2))]`
-/

namespace A091964.P2575641381399756029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (A088491 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091964.P2575641381399756029

/-! ## A091964.P1578146627080008907

`2*A051286(n)-A166300(n)`
-/

namespace A091964.P1578146627080008907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051286 n - A166300 n

end

end A091964.P1578146627080008907

/-! ## A091964.P13014092644060078247

`record[A088518(n+1)/A000034(n)]`
-/

namespace A091964.P13014092644060078247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088518 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091964.P13014092644060078247

/-! ## A091964.P7631193921406252179

`A088518(2*n+1)+A000007(n+1)`
-/

namespace A091964.P7631193921406252179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n + 1) + A000007 (n + 1)

end

end A091964.P7631193921406252179

/-! ## A091964.P15259505655610946367

`A078678(n+1)/2`
-/

namespace A091964.P15259505655610946367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078678 (n + 1) : ℚ) / 2

end

end A091964.P15259505655610946367

/-! ## A091964.P16229971719234946407

`A125267(n)-a(n-1)` with `a(0)=1`
-/

namespace A091964.P16229971719234946407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A125267 n - a (n - 1)

end

end A091964.P16229971719234946407

/-! ## A091964.P8296973715818933356

`Δ[∑[A051286(n)]-A166287(n)]`
-/

namespace A091964.P8296973715818933356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A166287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091964.P8296973715818933356

/-! ## A091964.P2226540333118857967

`A051286(n+1)-Δ[A166287(n)]`
-/

namespace A091964.P2226540333118857967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (n + 1) - (f1 (n + 1) - f1 n)

end

end A091964.P2226540333118857967

/-! ## A091964.P3706031747243899473

`A081207(n+1)-A203611(n+1)`
-/

namespace A091964.P3706031747243899473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081207 (n + 1) - A203611 (n + 1)

end

end A091964.P3706031747243899473

/-! ## A091964.P10385066707210587641

`A078678(n+1)-A088518(2*n+1)`
-/

namespace A091964.P10385066707210587641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078678 (n + 1) - A088518 (2 * n + 1)

end

end A091964.P10385066707210587641

/-! ## A091964.P12822461627239461388

`A078678(n+1)-A329703(2*n+1)`
-/

namespace A091964.P12822461627239461388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078678 (n + 1) - A329703 (2 * n + 1)

end

end A091964.P12822461627239461388

/-! ## A091964.P10013591512481291026

`2*A088518(2*n+1)/A020639(2*(n+1))`
-/

namespace A091964.P10013591512481291026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A088518 (2 * n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A091964.P10013591512481291026

/-! ## A091964.P3856126883366818469

`A110236(n+1)+A004148(n)-A203611(n)`
-/

namespace A091964.P3856126883366818469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110236 (n + 1) + (A004148 n - A203611 n)

end

end A091964.P3856126883366818469

/-!
# A091965: Triangle read by rows: T(n,k) = number of lattice paths from (0,0) to (n,k) that do not go below the line y=0 and consist of steps U=(1,1), D=(1,-1) and three types of steps H=(1,0) (left factors of 3-Motzkin steps).

The programs for A091965, the canonical program `A091965.P11327072405225623467` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091965 has offset 0).

The definition of A091965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091965.P11327072405225623467

`T(n-1,k-1)+3*T(n-1,k)+T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091965

/-- `T(n-1,k-1)+3*T(n-1,k)+T(n-1,k+1)` -/
def P11327072405225623467.Spec : Prop :=
  ∀ n, (P11327072405225623467.a n : ℤ) = A091965 n

theorem P11327072405225623467.correct : P11327072405225623467.Spec := by
  intro n
  simp only [A091965]

end A091965

/-! ## A091965.P8655568861782209892

`A126791(n)-A126791(n+1)%A126791(n)`
-/

namespace A091965.P8655568861782209892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126791 n - Int.tmod (A126791 (n + 1)) (A126791 n)

end

end A091965.P8655568861782209892

namespace A091965

/-- `A126791(n)-A126791(n+1)%A126791(n)` -/
def P8655568861782209892.Spec : Prop :=
  ∀ n, P8655568861782209892.a n = A091965 n

end A091965

/-! ## A091965.P13974081886165096226

`A084536(∑[2*n]%comp[∑[n]])`
-/

namespace A091965.P13974081886165096226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084536 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A091965.P13974081886165096226

namespace A091965

/-- `A084536(∑[2*n]%comp[∑[n]])` -/
def P13974081886165096226.Spec : Prop :=
  ∀ n, P13974081886165096226.a n = A091965 n

end A091965

/-! ## A091965.P7681847718486239192

`A084536(∑[char[∑[n]]]²-n-1)`
-/

namespace A091965.P7681847718486239192
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084536 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A091965.P7681847718486239192

namespace A091965

/-- `A084536(∑[char[∑[n]]]²-n-1)` -/
def P7681847718486239192.Spec : Prop :=
  ∀ n, P7681847718486239192.a n = A091965 n

end A091965

/-! ## A091965.P14824735623165824830

`lcm(A057077(n), A084536(A061579(n)))`
-/

namespace A091965.P14824735623165824830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A084536 (A061579 n).toNat)

end

end A091965.P14824735623165824830

namespace A091965

/-- `lcm(A057077(n), A084536(A061579(n)))` -/
def P14824735623165824830.Spec : Prop :=
  ∀ n, (P14824735623165824830.a n : ℤ) = A091965 n

end A091965

/-! ## A091965.P3267110321470409133

`A084536(A061579(n))%A019481(n)`
-/

namespace A091965.P3267110321470409133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084536 (A061579 n).toNat) (A019481 n)

end

end A091965.P3267110321470409133

namespace A091965

/-- `A084536(A061579(n))%A019481(n)` -/
def P3267110321470409133.Spec : Prop :=
  ∀ n, P3267110321470409133.a n = A091965 n

end A091965

/-!
# A091967: a(n) is the n-th term of sequence A_n, ignoring the offset, or -1 if A_n has fewer than n terms.

The programs for A091967, there is no canonical definition to state claims against.
-/

/-! ## A091967.P16040600748314877798

`A102288(n+1)-1`
-/

namespace A091967.P16040600748314877798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102288 (n + 1) - 1

end

end A091967.P16040600748314877798

/-! ## A091967.P17209965249485077839

`A260196(n+2)+A102288(n+1)`
-/

namespace A091967.P17209965249485077839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A102288 (n + 1)

end

end A091967.P17209965249485077839

/-! ## A091967.P17484896554684964746

`A165326(18*(n+1))+A102288(n+1)`
-/

namespace A091967.P17484896554684964746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (18 * (n + 1)) + A102288 (n + 1)

end

end A091967.P17484896554684964746

/-! ## A091967.P762936529177198879

`A250221(A053169(n+1))+A102288(n+1)`
-/

namespace A091967.P762936529177198879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250221 (A053169 (n + 1)).toNat + A102288 (n + 1)

end

end A091967.P762936529177198879

/-!
# A091968: Primes congruent to 3 (mod 16).

The programs for A091968, the canonical program `A091968.P18410516703109936838` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091968 has offset 1).

The definition of A091968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9838 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091968.P18410516703109936838

`p?[16*n+3]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091968

/-- `p?[16*n+3]` -/
def P18410516703109936838.Spec : Prop :=
  ∀ n, (P18410516703109936838.a n : ℤ) = A091968 (n + 1)

theorem P18410516703109936838.correct : P18410516703109936838.Spec := by
  intro n
  simp only [A091968, Nat.add_sub_cancel]

end A091968

/-! ## A091968.P2456467764825809402

`A001748(A093012(n+1))/3`
-/

namespace A091968.P2456467764825809402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A093012 (n + 1)).toNat : ℚ) / 3

end

end A091968.P2456467764825809402

namespace A091968

/-- `A001748(A093012(n+1))/3` -/
def P2456467764825809402.Spec : Prop :=
  ∀ n, P2456467764825809402.a n = (A091968 (n + 1) : ℚ)

end A091968

/-! ## A091968.P8767496883284999381

`∩[A007520(n+1), A214588(n+1)]`
-/

namespace A091968.P8767496883284999381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P8767496883284999381

namespace A091968

/-- `∩[A007520(n+1), A214588(n+1)]` -/
def P8767496883284999381.Spec : Prop :=
  ∀ n, (P8767496883284999381.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P17202329661249532860

`∩[A192717(n+1), A214588(n+1)]`
-/

namespace A091968.P17202329661249532860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P17202329661249532860

namespace A091968

/-- `∩[A192717(n+1), A214588(n+1)]` -/
def P17202329661249532860.Spec : Prop :=
  ∀ n, (P17202329661249532860.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P5945548012811675863

`∩[A214588(n+1), A332446(n+1)]`
-/

namespace A091968.P5945548012811675863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P5945548012811675863

namespace A091968

/-- `∩[A214588(n+1), A332446(n+1)]` -/
def P5945548012811675863.Spec : Prop :=
  ∀ n, (P5945548012811675863.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P9051853613042039450

`∩[A007520(n+1), A228228(n+1)]`
-/

namespace A091968.P9051853613042039450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P9051853613042039450

namespace A091968

/-- `∩[A007520(n+1), A228228(n+1)]` -/
def P9051853613042039450.Spec : Prop :=
  ∀ n, (P9051853613042039450.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P13410474894646984415

`∩[A033200(n+1), A228228(n+1)]`
-/

namespace A091968.P13410474894646984415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P13410474894646984415

namespace A091968

/-- `∩[A033200(n+1), A228228(n+1)]` -/
def P13410474894646984415.Spec : Prop :=
  ∀ n, (P13410474894646984415.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P704956455052886211

`∩[A033203(n+1), A228228(n+1)]`
-/

namespace A091968.P704956455052886211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P704956455052886211

namespace A091968

/-- `∩[A033203(n+1), A228228(n+1)]` -/
def P704956455052886211.Spec : Prop :=
  ∀ n, (P704956455052886211.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P6882330762730406346

`∩[A045339(n+1), A228228(n+1)]`
-/

namespace A091968.P6882330762730406346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P6882330762730406346

namespace A091968

/-- `∩[A045339(n+1), A228228(n+1)]` -/
def P6882330762730406346.Spec : Prop :=
  ∀ n, (P6882330762730406346.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P13437031289499427696

`∩[A051071(n+1), A228228(n+1)]`
-/

namespace A091968.P13437031289499427696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P13437031289499427696

namespace A091968

/-- `∩[A051071(n+1), A228228(n+1)]` -/
def P13437031289499427696.Spec : Prop :=
  ∀ n, (P13437031289499427696.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P5672635124551362855

`∩[A051073(n+1), A228228(n+1)]`
-/

namespace A091968.P5672635124551362855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P5672635124551362855

namespace A091968

/-- `∩[A051073(n+1), A228228(n+1)]` -/
def P5672635124551362855.Spec : Prop :=
  ∀ n, (P5672635124551362855.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P2008999647822029460

`∩[A163183(n+1), A228228(n+1)]`
-/

namespace A091968.P2008999647822029460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P2008999647822029460

namespace A091968

/-- `∩[A163183(n+1), A228228(n+1)]` -/
def P2008999647822029460.Spec : Prop :=
  ∀ n, (P2008999647822029460.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P5707913748873364481

`∩[A192717(n+1), A228228(n+1)]`
-/

namespace A091968.P5707913748873364481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P5707913748873364481

namespace A091968

/-- `∩[A192717(n+1), A228228(n+1)]` -/
def P5707913748873364481.Spec : Prop :=
  ∀ n, (P5707913748873364481.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P5210533784149009451

`∩[A228228(n+1), A332446(n+1)]`
-/

namespace A091968.P5210533784149009451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P5210533784149009451

namespace A091968

/-- `∩[A228228(n+1), A332446(n+1)]` -/
def P5210533784149009451.Spec : Prop :=
  ∀ n, (P5210533784149009451.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P8202339266522743273

`∩[A228228(n+1), A341784(n+1)]`
-/

namespace A091968.P8202339266522743273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P8202339266522743273

namespace A091968

/-- `∩[A228228(n+1), A341784(n+1)]` -/
def P8202339266522743273.Spec : Prop :=
  ∀ n, (P8202339266522743273.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P17667983929767603049

`∩[A365082(n+1), A228228(n+1)]`
-/

namespace A091968.P17667983929767603049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P17667983929767603049

namespace A091968

/-- `∩[A365082(n+1), A228228(n+1)]` -/
def P17667983929767603049.Spec : Prop :=
  ∀ n, (P17667983929767603049.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P9251977285560683999

`∩[A004626(n+1), A214588(n+1)]`
-/

namespace A091968.P9251977285560683999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P9251977285560683999

namespace A091968

/-- `∩[A004626(n+1), A214588(n+1)]` -/
def P9251977285560683999.Spec : Prop :=
  ∀ n, (P9251977285560683999.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P15395834315484124317

`∩[A004626(n+1), A228228(n+1)]`
-/

namespace A091968.P15395834315484124317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P15395834315484124317

namespace A091968

/-- `∩[A004626(n+1), A228228(n+1)]` -/
def P15395834315484124317.Spec : Prop :=
  ∀ n, (P15395834315484124317.a n : ℤ) = A091968 (n + 1)

end A091968

/-! ## A091968.P3116044459940012105

`∩[A051077(n+1), A228228(n+1)]`
-/

namespace A091968.P3116044459940012105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091968.P3116044459940012105

namespace A091968

/-- `∩[A051077(n+1), A228228(n+1)]` -/
def P3116044459940012105.Spec : Prop :=
  ∀ n, (P3116044459940012105.a n : ℤ) = A091968 (n + 1)

end A091968

/-!
# A091969: Related to Gray codes: see Comments lines.

The programs for A091969, there is no canonical definition to state claims against.
-/

/-! ## A091969.P1624059173838485421

`A143266(∑[n+1])`
-/

namespace A091969.P1624059173838485421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143266 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091969.P1624059173838485421

/-! ## A091969.P9780828736362106856

`A143266(A025747(n))+C(n, 64)`
-/

namespace A091969.P9780828736362106856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143266 (A025747 n).toNat + (Nat.choose n 64 : ℤ)

end

end A091969.P9780828736362106856

/-! ## A091969.P14614920462581787458

`A143266(A025747(n))%A275546(n)`
-/

namespace A091969.P14614920462581787458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143266 (A025747 n).toNat) (A275546 n)

end

end A091969.P14614920462581787458

/-! ## A091969.P5881827521897475144

`A143266(A025747(n))*A322391(n+1)`
-/

namespace A091969.P5881827521897475144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143266 (A025747 n).toNat * A322391 (n + 1)

end

end A091969.P5881827521897475144

/-! ## A091969.P17524806965560781603

`A143266(A025747(n))-A000045(C(n, 64))`
-/

namespace A091969.P17524806965560781603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143266 (A025747 n).toNat - A000045 (Nat.choose n 64)

end

end A091969.P17524806965560781603

/-!
# A091970: a(1) = 0; for n>1, find largest integer k such that the word a(1)a(2)...a(n-1) is of the form xy^k for words x and y (where y has positive length), i.e., k = the maximal number of repeating blocks at the end of the sequence so far; then a(n) = floor(k/2).

The programs for A091970, there is no canonical definition to state claims against.
-/

/-! ## A091970.P13569919368596111831

`A093955(A350843(3*n+1)+1)`
-/

namespace A091970.P13569919368596111831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093955 (A350843 (3 * n + 1) + 1).toNat

end

end A091970.P13569919368596111831

/-! ## A091970.P4973660928026869842

`A081603(∑[A103582(A330447(n))])`
-/

namespace A091970.P4973660928026869842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103582 (A330447 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091970.P4973660928026869842

/-! ## A091970.P14230623533520067265

`A061197(A287267(n+1)^A087207(n+1))`
-/

namespace A091970.P14230623533520067265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061197 (SequenceMachineLib.roundAway ((A287267 (n + 1) : ℚ) ^ (A087207 (n + 1) : ℤ))).toNat

end

end A091970.P14230623533520067265

/-! ## A091970.P12110476226163786909

`A330168(A029915(n)%(A101823(n+1)+1))`
-/

namespace A091970.P12110476226163786909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330168 (Int.tmod (A029915 n) (A101823 (n + 1) + 1)).toNat

end

end A091970.P12110476226163786909

/-!
# A091971: G.f.: (1+x^3)*(1+x^5)*(1+x^6)/((1-x^4)*(1-x^5)*(1-x^6)).

The programs for A091971, the canonical program `A091971.P3439782580531750982` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091971 has offset 0).

The definition of A091971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091971.P3439782580531750982

`∑[A004277(A047263(n+1))-A047342(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A091971

/-- `∑[A004277(A047263(n+1))-A047342(n+1)]` -/
def P3439782580531750982.Spec : Prop :=
  ∀ n, P3439782580531750982.a n = A091971 n

theorem P3439782580531750982.correct : P3439782580531750982.Spec := by
  intro n
  simp only [A091971]

end A091971

/-! ## A091971.P5276755816889172433

`A254011(4*n)+A211524(n)`
-/

namespace A091971.P5276755816889172433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (4 * n) + A211524 n

end

end A091971.P5276755816889172433

namespace A091971

/-- `A254011(4*n)+A211524(n)` -/
def P5276755816889172433.Spec : Prop :=
  ∀ n, P5276755816889172433.a n = A091971 n

end A091971

/-! ## A091971.P10230316885895085125

`A008672(n)-A254011(4*n+2)`
-/

namespace A091971.P10230316885895085125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 n - A254011 (4 * n + 2)

end

end A091971.P10230316885895085125

namespace A091971

/-- `A008672(n)-A254011(4*n+2)` -/
def P10230316885895085125.Spec : Prop :=
  ∀ n, P10230316885895085125.a n = A091971 n

end A091971

/-! ## A091971.P15545514067276318604

`A008612(round(A051890(n+1)/10))`
-/

namespace A091971.P15545514067276318604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (SequenceMachineLib.roundAway ((A051890 (n + 1) : ℚ) / 10)).toNat

end

end A091971.P15545514067276318604

namespace A091971

/-- `A008612(round(A051890(n+1)/10))` -/
def P15545514067276318604.Spec : Prop :=
  ∀ n, P15545514067276318604.a n = A091971 n

end A091971

/-! ## A091971.P9926983737258853330

`A008612(A057354(n+2)+A011858(n))`
-/

namespace A091971.P9926983737258853330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A057354 (n + 2) + A011858 n).toNat

end

end A091971.P9926983737258853330

namespace A091971

/-- `A008612(A057354(n+2)+A011858(n))` -/
def P9926983737258853330.Spec : Prop :=
  ∀ n, P9926983737258853330.a n = A091971 n

end A091971

/-! ## A091971.P10304719470893205598

`A254011(∑[n])`
-/

namespace A091971.P10304719470893205598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091971.P10304719470893205598

namespace A091971

/-- `A254011(∑[n])` -/
def P10304719470893205598.Spec : Prop :=
  ∀ n, P10304719470893205598.a n = A091971 n

end A091971

/-! ## A091971.P14699177275167128445

`or(char[3], A254011(A000217(n)))`
-/

namespace A091971.P14699177275167128445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254011 (A000217 n).toNat)

end

end A091971.P14699177275167128445

namespace A091971

/-- `or(char[3], A254011(A000217(n)))` -/
def P14699177275167128445.Spec : Prop :=
  ∀ n, P14699177275167128445.a n = A091971 n

end A091971

/-! ## A091971.P9926128250590446169

`A208994(n)-A286717(∑[n])`
-/

namespace A091971.P9926128250590446169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 n - A286717 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091971.P9926128250590446169

namespace A091971

/-- `A208994(n)-A286717(∑[n])` -/
def P9926128250590446169.Spec : Prop :=
  ∀ n, P9926128250590446169.a n = A091971 n

end A091971

/-! ## A091971.P10441179663629710964

`-A001489(A254011(A000217(n)))`
-/

namespace A091971.P10441179663629710964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (A254011 (A000217 n).toNat).toNat

end

end A091971.P10441179663629710964

namespace A091971

/-- `-A001489(A254011(A000217(n)))` -/
def P10441179663629710964.Spec : Prop :=
  ∀ n, P10441179663629710964.a n = A091971 n

end A091971

/-! ## A091971.P2716796103503708776

`A254011(A000217(n))%A000032(n)`
-/

namespace A091971.P2716796103503708776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254011 (A000217 n).toNat) (A000032 n)

end

end A091971.P2716796103503708776

namespace A091971

/-- `A254011(A000217(n))%A000032(n)` -/
def P2716796103503708776.Spec : Prop :=
  ∀ n, P2716796103503708776.a n = A091971 n

end A091971

/-!
# A091972: Expansion of g.f. (1 + x^5 ) / ( (1-x^3)*(1-x^4)).

The programs for A091972, the canonical program `A091972.P7547192796357520503` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091972 has offset 0).

The definition of A091972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^5)/(1-x^3-x^4+x^7))` (program `A091972.P7547192796357520503`, by `A091972.P7547192796357520503.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091972.P7547192796357520503

`ogf((1+x^5)/(1-x^3-x^4+x^7))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091972

/-- `ogf((1+x^5)/(1-x^3-x^4+x^7))` -/
def P7547192796357520503.Spec : Prop :=
  ∀ n, P7547192796357520503.a n = A091972 n

theorem P7547192796357520503.correct : P7547192796357520503.Spec := by
  intro n
  simp only [A091972]

end A091972

/-! ## A091972.P10965752536211351726

`a(n-1)-a(n-2)+2*a(n-3)-a(n-4)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A091972.P10965752536211351726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 1] fun n a =>
  a (n - 1) - a (n - 2) + 2 * a (n - 3) - a (n - 4) + a (n - 5) - a (n - 6)

end

end A091972.P10965752536211351726

namespace A091972

/-- `a(n-1)-a(n-2)+2*a(n-3)-a(n-4)+a(n-5)-a(n-6)` -/
def P10965752536211351726.Spec : Prop :=
  ∀ n, P10965752536211351726.a n = A091972 n

end A091972

/-! ## A091972.P2641348052405365284

`Δ[ceil((n²+n)/12)]`
-/

namespace A091972.P2641348052405365284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 + n : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091972.P2641348052405365284

namespace A091972

/-- `Δ[ceil((n²+n)/12)]` -/
def P2641348052405365284.Spec : Prop :=
  ∀ n, P2641348052405365284.a n = A091972 n

end A091972

/-! ## A091972.P16118995871435779154

`floor((gcd(6, ∑[n])+n)/6)`
-/

namespace A091972.P16118995871435779154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 6 (∑ j ∈ Finset.range (n + 1), f1 j) + n : ℚ) / 6⌋

end

end A091972.P16118995871435779154

namespace A091972

/-- `floor((gcd(6, ∑[n])+n)/6)` -/
def P16118995871435779154.Spec : Prop :=
  ∀ n, P16118995871435779154.a n = A091972 n

end A091972

/-! ## A091972.P14683640125282704371

`∑[1-xor(3, ∑[n]²)%3]`
-/

namespace A091972.P14683640125282704371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.xor 3 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091972.P14683640125282704371

namespace A091972

/-- `∑[1-xor(3, ∑[n]²)%3]` -/
def P14683640125282704371.Spec : Prop :=
  ∀ n, P14683640125282704371.a n = A091972 n

end A091972

/-! ## A091972.P1628995083183280187

`round(n/3-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A091972.P1628995083183280187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3 - (a (n - 2) : ℚ))

end

end A091972.P1628995083183280187

namespace A091972

/-- `round(n/3-a(n-2))` -/
def P1628995083183280187.Spec : Prop :=
  ∀ n, P1628995083183280187.a n = A091972 n

end A091972

/-! ## A091972.P9523433963006140615

`a(and(2, n))+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A091972.P9523433963006140615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (Nat.land 2 n) + a (n - 3)

end

end A091972.P9523433963006140615

namespace A091972

/-- `a(and(2, n))+a(n-3)` -/
def P9523433963006140615.Spec : Prop :=
  ∀ n, (P9523433963006140615.a n : ℤ) = A091972 n

end A091972

/-! ## A091972.P17591835527449565400

`∑[xor(2, n*(n+1))%3-1]`
-/

namespace A091972.P17591835527449565400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 2 (n * (n + 1)) % 3 : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091972.P17591835527449565400

namespace A091972

/-- `∑[xor(2, n*(n+1))%3-1]` -/
def P17591835527449565400.Spec : Prop :=
  ∀ n, P17591835527449565400.a n = A091972 n

end A091972

/-! ## A091972.P6331770087805321882

`floor((n+1)/3-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A091972.P6331770087805321882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌊(n + 1 : ℚ) / 3 - (a (n - 2) : ℚ)⌋

end

end A091972.P6331770087805321882

namespace A091972

/-- `floor((n+1)/3-a(n-2))` -/
def P6331770087805321882.Spec : Prop :=
  ∀ n, P6331770087805321882.a n = A091972 n

end A091972

/-! ## A091972.P2876652725256936454

`ceil((n-1)/3-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A091972.P2876652725256936454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌈((n : ℤ) - 1 : ℚ) / 3 - (a (n - 2) : ℚ)⌉

end

end A091972.P2876652725256936454

namespace A091972

/-- `ceil((n-1)/3-a(n-2))` -/
def P2876652725256936454.Spec : Prop :=
  ∀ n, P2876652725256936454.a n = A091972 n

end A091972

/-! ## A091972.P5287252146684955651

`floor(∑[1-a(n-2)]/3)` with `a(0)=3, a(1)=-1, a(2)=-1`
-/

namespace A091972.P5287252146684955651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1] fun n f1 =>
  1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A091972.P5287252146684955651

namespace A091972

/-- `floor(∑[1-a(n-2)]/3)` -/
def P5287252146684955651.Spec : Prop :=
  ∀ n, P5287252146684955651.a n = A091972 n

end A091972

/-! ## A091972.P3475507858931727401

`a(n-3)+∑[n+1]%2` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A091972.P3475507858931727401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) + (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A091972.P3475507858931727401

namespace A091972

/-- `a(n-3)+∑[n+1]%2` -/
def P3475507858931727401.Spec : Prop :=
  ∀ n, (P3475507858931727401.a n : ℤ) = A091972 n

end A091972

/-! ## A091972.P16516430601277335562

`A133872(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A091972.P16516430601277335562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A133872 n + a (n - 3)

end

end A091972.P16516430601277335562

namespace A091972

/-- `A133872(n)+a(n-3)` -/
def P16516430601277335562.Spec : Prop :=
  ∀ n, P16516430601277335562.a n = A091972 n

end A091972

/-! ## A091972.P1611092059091111571

`A212988(n)-A211519(n+1)`
-/

namespace A091972.P1611092059091111571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212988 n - A211519 (n + 1)

end

end A091972.P1611092059091111571

namespace A091972

/-- `A212988(n)-A211519(n+1)` -/
def P1611092059091111571.Spec : Prop :=
  ∀ n, P1611092059091111571.a n = A091972 n

end A091972

/-! ## A091972.P14001317117592445199

`(A056594(n)+A008611(n))/2`
-/

namespace A091972.P14001317117592445199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056594 n + A008611 n : ℚ) / 2

end

end A091972.P14001317117592445199

namespace A091972

/-- `(A056594(n)+A008611(n))/2` -/
def P14001317117592445199.Spec : Prop :=
  ∀ n, P14001317117592445199.a n = (A091972 n : ℚ)

end A091972

/-! ## A091972.P13205661142169447576

`A047255(n+1)-A004772(n+1)`
-/

namespace A091972.P13205661142169447576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1) - A004772 (n + 1)

end

end A091972.P13205661142169447576

namespace A091972

/-- `A047255(n+1)-A004772(n+1)` -/
def P13205661142169447576.Spec : Prop :=
  ∀ n, P13205661142169447576.a n = A091972 n

end A091972

/-! ## A091972.P7520877932076886679

`A032793(n+1)-A047262(n+1)`
-/

namespace A091972.P7520877932076886679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (n + 1) - A047262 (n + 1)

end

end A091972.P7520877932076886679

namespace A091972

/-- `A032793(n+1)-A047262(n+1)` -/
def P7520877932076886679.Spec : Prop :=
  ∀ n, P7520877932076886679.a n = A091972 n

end A091972

/-! ## A091972.P16358527384151848329

`A069813(n+3)-A212864(n+1)`
-/

namespace A091972.P16358527384151848329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (n + 3) - A212864 (n + 1)

end

end A091972.P16358527384151848329

namespace A091972

/-- `A069813(n+3)-A212864(n+1)` -/
def P16358527384151848329.Spec : Prop :=
  ∀ n, P16358527384151848329.a n = A091972 n

end A091972

/-! ## A091972.P2486881208063036912

`A006370(A056594(n)+A008611(n))`
-/

namespace A091972.P2486881208063036912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A056594 n + A008611 n).toNat

end

end A091972.P2486881208063036912

namespace A091972

/-- `A006370(A056594(n)+A008611(n))` -/
def P2486881208063036912.Spec : Prop :=
  ∀ n, P2486881208063036912.a n = A091972 n

end A091972

/-! ## A091972.P10893316135382473578

`A002265(n)+1-A103221(A028242(n))`
-/

namespace A091972.P10893316135382473578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + (1 - A103221 (A028242 n).toNat)

end

end A091972.P10893316135382473578

namespace A091972

/-- `A002265(n)+1-A103221(A028242(n))` -/
def P10893316135382473578.Spec : Prop :=
  ∀ n, P10893316135382473578.a n = A091972 n

end A091972

/-!
# A091973: Poincaré series [or Poincare series] (or Molien series) for a certain three-dimensional group of order 1344.

The programs for A091973, the canonical program `A091973.P9091652725003456893` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091973 has offset 0).

The definition of A091973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091973.P9091652725003456893

`floor(A008625(n)+A008742(2*n)/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091973

/-- `floor(A008625(n)+A008742(2*n)/2)` -/
def P9091652725003456893.Spec : Prop :=
  ∀ n, P9091652725003456893.a n = A091973 n

theorem P9091652725003456893.correct : P9091652725003456893.Spec := by
  intro n
  simp only [A091973]

end A091973

/-! ## A091973.P13539983826389376653

`A008625(n)+A004526(A008742(2*n))`
-/

namespace A091973.P13539983826389376653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n + A004526 (A008742 (2 * n)).toNat

end

end A091973.P13539983826389376653

namespace A091973

/-- `A008625(n)+A004526(A008742(2*n))` -/
def P13539983826389376653.Spec : Prop :=
  ∀ n, P13539983826389376653.a n = A091973 n

end A091973

/-! ## A091973.P16613098065654744221

`A008625(n)+A008615(∑[n+1])`
-/

namespace A091973.P16613098065654744221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n + A008615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091973.P16613098065654744221

namespace A091973

/-- `A008625(n)+A008615(∑[n+1])` -/
def P16613098065654744221.Spec : Prop :=
  ∀ n, P16613098065654744221.a n = A091973 n

end A091973

/-! ## A091973.P12341333341299265032

`A008614(A008590(n))-A008615(A000096(n))`
-/

namespace A091973.P12341333341299265032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008614 (A008590 n).toNat - A008615 (A000096 n).toNat

end

end A091973.P12341333341299265032

namespace A091973

/-- `A008614(A008590(n))-A008615(A000096(n))` -/
def P12341333341299265032.Spec : Prop :=
  ∀ n, P12341333341299265032.a n = A091973 n

end A091973

/-!
# A091975: a(1) = 1; for n>1, a(n) = largest integer k such that the word a(1)a(2)...a(n-1) is of is of the form xy^(k_1)Y^(k_2)y^(k_3)Y^(k_4)...y^(k_(m-1))Y^(k_m) where y has positive length and Y=reverse(y) and k_1+k_2+k_3+...+k_m = k.

The programs for A091975, there is no canonical definition to state claims against.
-/

/-! ## A091975.P18060970931461529705

`A090822(lt[A199363(n+1), A187813(n+1)])`
-/

namespace A091975.P18060970931461529705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091975.P18060970931461529705

/-! ## A091975.P35291770036640700

`A090822(lt[A215959(n+1), A302796(n+1)])`
-/

namespace A091975.P35291770036640700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091975.P35291770036640700

/-! ## A091975.P11589496941593235356

`A090822(lt[A231343(n+1), A128470(n)])`
-/

namespace A091975.P11589496941593235356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091975.P11589496941593235356

/-! ## A091975.P2696172101952052412

`A090822(lt[A132439(n+1), A228155(n+1)])`
-/

namespace A091975.P2696172101952052412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091975.P2696172101952052412

/-! ## A091975.P2339460761687959235

`A090822(lt[A305954(n+1), A316430(n+1)])`
-/

namespace A091975.P2339460761687959235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091975.P2339460761687959235

/-!
# A091976: a(1)=1; for n>1, a(n) = largest integer k such that the word a(1)a(2)a(3)...a(n-1) is of the form x(y_1)(y_2)...(y_k) where each y_i is of positive length and any y_i and y_j are related by y_i=P(y_j) for some permutation P.

The programs for A091976, there is no canonical definition to state claims against.
-/

/-! ## A091976.P4004970278087516410

`A090822(∑[A007318(A136572(n))])`
-/

namespace A091976.P4004970278087516410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A136572 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091976.P4004970278087516410

/-! ## A091976.P15323882145721597994

`A090822(∑[A193554(A057856(n+1))])`
-/

namespace A091976.P15323882145721597994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (A057856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091976.P15323882145721597994

/-! ## A091976.P2526909577798215381

`A090822(A130764(n+1)+2)`
-/

namespace A091976.P2526909577798215381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A130764 (n + 1) + 2).toNat

end

end A091976.P2526909577798215381

/-! ## A091976.P13202259849673468684

`A090822(∑[A166863(A269162(n)!)])`
-/

namespace A091976.P13202259849673468684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166863 (Nat.factorial (A269162 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091976.P13202259849673468684

/-! ## A091976.P1462151870615251940

`A057427(A184945(n))+Δ[A091413(n)]`
-/

namespace A091976.P1462151870615251940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A184945 n).toNat + (f1 (n + 1) - f1 n)

end

end A091976.P1462151870615251940

/-!
# A091977: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k exterior pairs.

The programs for A091977, there is no canonical definition to state claims against.
-/

/-! ## A091977.P15199348596517166917

`A178798(A001399(2*n+3))+A127529(n)`
-/

namespace A091977.P15199348596517166917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A001399 (2 * n + 3)).toNat + A127529 n

end

end A091977.P15199348596517166917

/-! ## A091977.P12452891011361516879

`A127529(n)-A178798(A144677(n+1))`
-/

namespace A091977.P12452891011361516879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127529 n - A178798 (A144677 (n + 1)).toNat

end

end A091977.P12452891011361516879

/-!
# A091979: Number of odd proper distinct prime divisors of n. That is, the number of odd distinct prime divisors of n that are less than n.

The programs for A091979, the canonical program `A091979.P1284534958730999777` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091979 has offset 1).

The definition of A091979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091979.P1284534958730999777

`∑{p}[n+1, (#%(n+1))%2]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091979

/-- `∑{p}[n+1, (#%(n+1))%2]` -/
def P1284534958730999777.Spec : Prop :=
  ∀ n, (P1284534958730999777.a n : ℤ) = A091979 (n + 1)

theorem P1284534958730999777.correct : P1284534958730999777.Spec := by
  intro n
  simp only [A091979, Nat.add_sub_cancel]

end A091979

/-! ## A091979.P14136263384928941924

`A005087(A005451(n+1))`
-/

namespace A091979.P14136263384928941924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A005451 (n + 1)).toNat

end

end A091979.P14136263384928941924

namespace A091979

/-- `A005087(A005451(n+1))` -/
def P14136263384928941924.Spec : Prop :=
  ∀ n, P14136263384928941924.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P10521190178812799889

`A005087(A048671(n+1))`
-/

namespace A091979.P10521190178812799889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A048671 (n + 1)).toNat

end

end A091979.P10521190178812799889

namespace A091979

/-- `A005087(A048671(n+1))` -/
def P10521190178812799889.Spec : Prop :=
  ∀ n, P10521190178812799889.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P5388412084336794545

`A005087(A144907(n+1))`
-/

namespace A091979.P5388412084336794545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A144907 (n + 1)).toNat

end

end A091979.P5388412084336794545

namespace A091979

/-- `A005087(A144907(n+1))` -/
def P5388412084336794545.Spec : Prop :=
  ∀ n, P5388412084336794545.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P5210213312034679121

`A001221(A171435(n+1))`
-/

namespace A091979.P5210213312034679121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A171435 (n + 1)).toNat

end

end A091979.P5210213312034679121

namespace A091979

/-- `A001221(A171435(n+1))` -/
def P5210213312034679121.Spec : Prop :=
  ∀ n, P5210213312034679121.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P16667395755269697315

`A005087(A334085(n+1))`
-/

namespace A091979.P16667395755269697315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A334085 (n + 1)).toNat

end

end A091979.P16667395755269697315

namespace A091979

/-- `A005087(A334085(n+1))` -/
def P16667395755269697315.Spec : Prop :=
  ∀ n, P16667395755269697315.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P17994903600670397505

`∑{p}[A171435(n+1), A171435(#)]`
-/

namespace A091979.P17994903600670397505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A171435 p

end

end A091979.P17994903600670397505

namespace A091979

/-- `∑{p}[A171435(n+1), A171435(#)]` -/
def P17994903600670397505.Spec : Prop :=
  ∀ n, P17994903600670397505.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P5627623594046181575

`A001222(∏{p}[A171435(n+1), #])`
-/

namespace A091979.P5627623594046181575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A091979.P5627623594046181575

namespace A091979

/-- `A001222(∏{p}[A171435(n+1), #])` -/
def P5627623594046181575.Spec : Prop :=
  ∀ n, P5627623594046181575.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P10541209418763298815

`A001221(2*A005730(n+1))-1`
-/

namespace A091979.P10541209418763298815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A005730 (n + 1)).toNat - 1

end

end A091979.P10541209418763298815

namespace A091979

/-- `A001221(2*A005730(n+1))-1` -/
def P10541209418763298815.Spec : Prop :=
  ∀ n, P10541209418763298815.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P9908022589603820380

`A001221(2*A048671(n+1))-1`
-/

namespace A091979.P9908022589603820380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A048671 (n + 1)).toNat - 1

end

end A091979.P9908022589603820380

namespace A091979

/-- `A001221(2*A048671(n+1))-1` -/
def P9908022589603820380.Spec : Prop :=
  ∀ n, P9908022589603820380.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P2363014625064368987

`A001221(2*A144907(n+1))-1`
-/

namespace A091979.P2363014625064368987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A144907 (n + 1)).toNat - 1

end

end A091979.P2363014625064368987

namespace A091979

/-- `A001221(2*A144907(n+1))-1` -/
def P2363014625064368987.Spec : Prop :=
  ∀ n, P2363014625064368987.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P16950150446637715427

`A005087(n+1)*A005171(n+1)`
-/

namespace A091979.P16950150446637715427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) * A005171 (n + 1)

end

end A091979.P16950150446637715427

namespace A091979

/-- `A005087(n+1)*A005171(n+1)` -/
def P16950150446637715427.Spec : Prop :=
  ∀ n, P16950150446637715427.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P16475759173149049553

`A005087(n+1)*A055976(n+1)`
-/

namespace A091979.P16475759173149049553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) * A055976 (n + 1)

end

end A091979.P16475759173149049553

namespace A091979

/-- `A005087(n+1)*A055976(n+1)` -/
def P16475759173149049553.Spec : Prop :=
  ∀ n, P16475759173149049553.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P2336051481287614927

`A005087(n+1)*A066247(n+1)`
-/

namespace A091979.P2336051481287614927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) * A066247 (n + 1)

end

end A091979.P2336051481287614927

namespace A091979

/-- `A005087(n+1)*A066247(n+1)` -/
def P2336051481287614927.Spec : Prop :=
  ∀ n, P2336051481287614927.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P8787193176131632508

`A005087(n+1)*A202238(n+1)`
-/

namespace A091979.P8787193176131632508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) * A202238 (n + 1)

end

end A091979.P8787193176131632508

namespace A091979

/-- `A005087(n+1)*A202238(n+1)` -/
def P8787193176131632508.Spec : Prop :=
  ∀ n, P8787193176131632508.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P2845870313496643180

`A005087((n+1)/A014963(n+1))`
-/

namespace A091979.P2845870313496643180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

end

end A091979.P2845870313496643180

namespace A091979

/-- `A005087((n+1)/A014963(n+1))` -/
def P2845870313496643180.Spec : Prop :=
  ∀ n, P2845870313496643180.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P5653014442320053351

`(A014684(n+1)-n)*A005087(n+1)`
-/

namespace A091979.P5653014442320053351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014684 (n + 1) - (n : ℤ)) * A005087 (n + 1)

end

end A091979.P5653014442320053351

namespace A091979

/-- `(A014684(n+1)-n)*A005087(n+1)` -/
def P5653014442320053351.Spec : Prop :=
  ∀ n, P5653014442320053351.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P17529110259141612405

`∑{d}[n+1, A005087(#)*A157658((n+1)/#)]`
-/

namespace A091979.P17529110259141612405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005087 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091979.P17529110259141612405

namespace A091979

/-- `∑{d}[n+1, A005087(#)*A157658((n+1)/#)]` -/
def P17529110259141612405.Spec : Prop :=
  ∀ n, P17529110259141612405.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P15037422221210587876

`∑{d}[n+1, A296066(#)*A353670((n+1)/#)]`
-/

namespace A091979.P15037422221210587876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296066 d * A353670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091979.P15037422221210587876

namespace A091979

/-- `∑{d}[n+1, A296066(#)*A353670((n+1)/#)]` -/
def P15037422221210587876.Spec : Prop :=
  ∀ n, P15037422221210587876.a n = A091979 (n + 1)

end A091979

/-! ## A091979.P2663345708253411446

`A001221(gcd((n+1)/and(n+1, -(n+1)), A166260(n+1)))`
-/

namespace A091979.P2663345708253411446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (A166260 (n + 1)))

end

end A091979.P2663345708253411446

namespace A091979

/-- `A001221(gcd((n+1)/and(n+1, -(n+1)), A166260(n+1)))` -/
def P2663345708253411446.Spec : Prop :=
  ∀ n, P2663345708253411446.a n = A091979 (n + 1)

end A091979

/-!
# A091980: Recursive sequence; one more than maximum of products of pairs of previous terms with indices summing to current index.

The programs for A091980, there is no canonical definition to state claims against.
-/

/-! ## A091980.P2962087998269434764

`∑[A168542(n)]`
-/

namespace A091980.P2962087998269434764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091980.P2962087998269434764

/-! ## A091980.P8624008321352707544

`A168542(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A091980.P8624008321352707544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168542 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A091980.P8624008321352707544

/-! ## A091980.P4800477387842645656

`a(n-1)+A168542(n)%A173435(n)` with `a(0)=1, a(1)=2`
-/

namespace A091980.P4800477387842645656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.tmod (A168542 n) (A173435 n)

end

end A091980.P4800477387842645656

/-! ## A091980.P18394583386591150149

`a(n-1)+A168542(n)%A007051(n)` with `a(0)=1`
-/

namespace A091980.P18394583386591150149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A168542 n) (A007051 n)

end

end A091980.P18394583386591150149

/-! ## A091980.P6562046996532016805

`A373449(∑[n+3])`
-/

namespace A091980.P6562046996532016805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091980.P6562046996532016805

/-!
# A091981: Poincaré series [or Poincare series] (or Molien series) for GL_2(4):2.

The programs for A091981, there is no canonical definition to state claims against.
-/

/-! ## A091981.P17134676020734042109

`A008676(A006218(n))-A005614(A108296(n))`
-/

namespace A091981.P17134676020734042109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A006218 n).toNat - A005614 (A108296 n).toNat

end

end A091981.P17134676020734042109

/-!
# A091982: Nonprimes k such that Mod(k,4) == 1 and denominator(Fibonacci((k-1)/4)/k) = 1.

The programs for A091982, there is no canonical definition to state claims against.
-/

/-! ## A091982.P12672236044679983681

`A094401(A084925(n+1))^A352038(n+1)`
-/

namespace A091982.P12672236044679983681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094401 (A084925 (n + 1)).toNat : ℚ) ^ (A352038 (n + 1) : ℤ)

end

end A091982.P12672236044679983681

/-!
# A091983: a(0) = 1, a(n) = 20*sigma[3](n).

The programs for A091983, there is no canonical definition to state claims against.
-/

/-! ## A091983.P14479590020630250621

`ceil(A004009(n)/12)`
-/

namespace A091983.P14479590020630250621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004009 n : ℚ) / 12⌉

end

end A091983.P14479590020630250621

/-! ## A091983.P6018240401824460321

`ceil(A023920(9*n)/12)`
-/

namespace A091983.P6018240401824460321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023920 (9 * n) : ℚ) / 12⌉

end

end A091983.P6018240401824460321

/-! ## A091983.P11959796491390899736

`ceil(A072839(18*n)/12)`
-/

namespace A091983.P11959796491390899736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072839 (18 * n) : ℚ) / 12⌉

end

end A091983.P11959796491390899736

/-! ## A091983.P15242660128991104247

`ceil(A028579(16*n)/12)`
-/

namespace A091983.P15242660128991104247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028579 (16 * n) : ℚ) / 12⌉

end

end A091983.P15242660128991104247

/-! ## A091983.P9777780213902185805

`ceil(A028585(32*n)/12)`
-/

namespace A091983.P9777780213902185805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028585 (32 * n) : ℚ) / 12⌉

end

end A091983.P9777780213902185805

/-!
# A091984: Number of steps required for initial p = 10^n to reach 1 in the recurrence p = floor(Li(p)).

The programs for A091984, there is no canonical definition to state claims against.
-/

/-! ## A091984.P3331321362430630907

`A000196(xor(A005041(n), A333614(2*n+3)))`
-/

namespace A091984.P3331321362430630907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A005041 n) (A333614 (2 * n + 3))).toNat

end

end A091984.P3331321362430630907

/-! ## A091984.P336185218493920403

`A134914(abs(n*(n-3)-A195026(n)-1))+3`
-/

namespace A091984.P336185218493920403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 |(n : ℤ) * ((n : ℤ) - 3) - A195026 n - 1|.toNat + 3

end

end A091984.P336185218493920403

/-! ## A091984.P11870030693269279314

`A130245(A278355(n)+A000040(3*(n+1)))`
-/

namespace A091984.P11870030693269279314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A278355 n + A000040 (3 * (n + 1))).toNat

end

end A091984.P11870030693269279314

/-! ## A091984.P11952006675016466474

`A060207(A311253(n)+1-n)`
-/

namespace A091984.P11952006675016466474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060207 (A311253 n + (1 - (n : ℤ))).toNat

end

end A091984.P11952006675016466474

/-! ## A091984.P640960665181591399

`A060207(1-(n-A311253(n)))`
-/

namespace A091984.P640960665181591399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060207 (1 - ((n : ℤ) - A311253 n)).toNat

end

end A091984.P640960665181591399

/-!
# A091985: Number of steps required for the initial value p = 10^n to reach 0 in the recurrence p = pi(p).

The programs for A091985, there is no canonical definition to state claims against.
-/

/-! ## A091985.P5593741499177260535

`floor(sqrt(∑{d}[n+1, #+1]+19*n))`
-/

namespace A091985.P5593741499177260535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ d ∈ Nat.divisors (f1 n), (d + 1) + 19 * n)

end

end A091985.P5593741499177260535

/-! ## A091985.P1762947664169214354

`floor(log(3)^n-log2(log(log(3)))*log2(n+1))`
-/

namespace A091985.P1762947664169214354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (3 : ℝ) ^ n - Real.logb 2 (Real.log (Real.log (3 : ℝ))) * Real.logb 2 (n + 1 : ℝ)⌋

end

end A091985.P1762947664169214354

/-! ## A091985.P9808268339137602527

`∏{e}[2^n, A091984(#)]`
-/

namespace A091985.P9808268339137602527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A091984 (Nat.factorization (f1 n) p)

end

end A091985.P9808268339137602527

/-! ## A091985.P7649554351158195036

`ceil(A017401(n)^acot(ϕ))`
-/

namespace A091985.P7649554351158195036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017401 n : ℝ) ^ (SequenceMachineLib.acot Real.goldenRatio)⌉

end

end A091985.P7649554351158195036

/-! ## A091985.P17124652831637496035

`A003056(and(1, n)+11*n+2)`
-/

namespace A091985.P17124652831637496035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.land 1 n + (11 * n + 2))

end

end A091985.P17124652831637496035

/-!
# A091986: a(0)=1, a(n) = sigma_3(2n).

The programs for A091986, the canonical program `A091986.P17090900409684234079` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091986 has offset 0).

The definition of A091986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091986.P10547790763387365950

`∑{d}[2*n, #^3]+floor(acot(n))`
-/

namespace A091986.P10547790763387365950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A091986.P10547790763387365950

namespace A091986

/-- `∑{d}[2*n, #^3]+floor(acot(n))` -/
def P10547790763387365950.Spec : Prop :=
  ∀ n, P10547790763387365950.a n = A091986 n

end A091986

/-! ## A091986.P6935979896937818154

`∑{d}[2*n-floor(acot(n)), #^3]`
-/

namespace A091986.P6935979896937818154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A091986.P6935979896937818154

namespace A091986

/-- `∑{d}[2*n-floor(acot(n)), #^3]` -/
def P6935979896937818154.Spec : Prop :=
  ∀ n, (P6935979896937818154.a n : ℤ) = A091986 n

end A091986

/-! ## A091986.P9379283227423883391

`∑{d}[round(1/acot(n))+n, #^3]`
-/

namespace A091986.P9379283227423883391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A091986.P9379283227423883391

namespace A091986

/-- `∑{d}[round(1/acot(n))+n, #^3]` -/
def P9379283227423883391.Spec : Prop :=
  ∀ n, (P9379283227423883391.a n : ℤ) = A091986 n

end A091986

/-! ## A091986.P7130227807077796339

`∑{d}[floor(3/acot(n))-n, #^3]`
-/

namespace A091986.P7130227807077796339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A091986.P7130227807077796339

namespace A091986

/-- `∑{d}[floor(3/acot(n))-n, #^3]` -/
def P7130227807077796339.Spec : Prop :=
  ∀ n, (P7130227807077796339.a n : ℤ) = A091986 n

end A091986

/-! ## A091986.P15963377463081455906

`gcd(floor(acot(n)), ∑{d}[2*n, #^3])`
-/

namespace A091986.P15963377463081455906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ)

end

end A091986.P15963377463081455906

namespace A091986

/-- `gcd(floor(acot(n)), ∑{d}[2*n, #^3])` -/
def P15963377463081455906.Spec : Prop :=
  ∀ n, (P15963377463081455906.a n : ℤ) = A091986 n

end A091986

/-! ## A091986.P17090900409684234079

`∑{d}[record[xor(n, -n)+n]+1, #^3]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091986

/-- `∑{d}[record[xor(n, -n)+n]+1, #^3]` -/
def P17090900409684234079.Spec : Prop :=
  ∀ n, (P17090900409684234079.a n : ℤ) = A091986 n

theorem P17090900409684234079.correct : P17090900409684234079.Spec := by
  intro n
  simp only [A091986]

end A091986

/-! ## A091986.P16260130364283876399

`∑{d}[A028310(n)+n, #^3]`
-/

namespace A091986.P16260130364283876399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A091986.P16260130364283876399

namespace A091986

/-- `∑{d}[A028310(n)+n, #^3]` -/
def P16260130364283876399.Spec : Prop :=
  ∀ n, (P16260130364283876399.a n : ℤ) = A091986 n

end A091986

/-! ## A091986.P15727218052237447747

`∑{d}[A028310(2*n), #^3]`
-/

namespace A091986.P15727218052237447747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A091986.P15727218052237447747

namespace A091986

/-- `∑{d}[A028310(2*n), #^3]` -/
def P15727218052237447747.Spec : Prop :=
  ∀ n, (P15727218052237447747.a n : ℤ) = A091986 n

end A091986

/-! ## A091986.P419097838864743486

`A001158(A004277(n))`
-/

namespace A091986.P419097838864743486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A004277 n).toNat

end

end A091986.P419097838864743486

namespace A091986

/-- `A001158(A004277(n))` -/
def P419097838864743486.Spec : Prop :=
  ∀ n, P419097838864743486.a n = A091986 n

end A091986

/-! ## A091986.P15380566863649887192

`A001158(A004275(n+1))`
-/

namespace A091986.P15380566863649887192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A004275 (n + 1)).toNat

end

end A091986.P15380566863649887192

namespace A091986

/-- `A001158(A004275(n+1))` -/
def P15380566863649887192.Spec : Prop :=
  ∀ n, P15380566863649887192.a n = A091986 n

end A091986

/-! ## A091986.P12957820002596457809

`A001158(A028310(2*n))`
-/

namespace A091986.P12957820002596457809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A028310 (2 * n)).toNat

end

end A091986.P12957820002596457809

namespace A091986

/-- `A001158(A028310(2*n))` -/
def P12957820002596457809.Spec : Prop :=
  ∀ n, P12957820002596457809.a n = A091986 n

end A091986

/-! ## A091986.P9039348823436538462

`A001158(A028310(n)+n)`
-/

namespace A091986.P9039348823436538462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A028310 n + (n : ℤ)).toNat

end

end A091986.P9039348823436538462

namespace A091986

/-- `A001158(A028310(n)+n)` -/
def P9039348823436538462.Spec : Prop :=
  ∀ n, P9039348823436538462.a n = A091986 n

end A091986

/-! ## A091986.P677993575916379210

`A001158(A008486(n)-n)`
-/

namespace A091986.P677993575916379210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A008486 n - (n : ℤ)).toNat

end

end A091986.P677993575916379210

namespace A091986

/-- `A001158(A008486(n)-n)` -/
def P677993575916379210.Spec : Prop :=
  ∀ n, P677993575916379210.a n = A091986 n

end A091986

/-! ## A091986.P16858215952194165900

`A001158(eq[n+1, A029578(n+2)]+1)`
-/

namespace A091986.P16858215952194165900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A091986.P16858215952194165900

namespace A091986

/-- `A001158(eq[n+1, A029578(n+2)]+1)` -/
def P16858215952194165900.Spec : Prop :=
  ∀ n, P16858215952194165900.a n = A091986 n

end A091986

/-!
# A091987: Number of steps required for initial p = 2^n to reach 0 in the recurrence p = pi(p).

The programs for A091987, there is no canonical definition to state claims against.
-/

/-! ## A091987.P14217088643141741668

`A060207(n)-1`
-/

namespace A091987.P14217088643141741668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060207 n - 1

end

end A091987.P14217088643141741668

/-! ## A091987.P16355961213999759100

`∑[char[A071682(n+2)]]`
-/

namespace A091987.P16355961213999759100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071682 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091987.P16355961213999759100

/-! ## A091987.P3926242533267576893

`A002837(A060207(n))`
-/

namespace A091987.P3926242533267576893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A060207 n).toNat

end

end A091987.P3926242533267576893

/-! ## A091987.P11209880786203086472

`A057918(A060207(n)²)`
-/

namespace A091987.P11209880786203086472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A060207 n ^ 2).toNat

end

end A091987.P11209880786203086472

/-! ## A091987.P4681639236734442701

`A086520(A060207(n)²)`
-/

namespace A091987.P4681639236734442701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A060207 n ^ 2).toNat

end

end A091987.P4681639236734442701

/-! ## A091987.P9253489920606738499

`A214526(A060207(n)²)`
-/

namespace A091987.P9253489920606738499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A060207 n ^ 2).toNat

end

end A091987.P9253489920606738499

/-! ## A091987.P4627562610565821231

`A023444(A060207(n)+1)`
-/

namespace A091987.P4627562610565821231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A060207 n + 1).toNat

end

end A091987.P4627562610565821231

/-! ## A091987.P10588296657432721151

`A067099(6*A060207(n))`
-/

namespace A091987.P10588296657432721151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067099 (6 * A060207 n).toNat

end

end A091987.P10588296657432721151

/-! ## A091987.P4323082569138210133

`A025581(C(A060207(n), 2))`
-/

namespace A091987.P4323082569138210133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A060207 n).toNat 2)

end

end A091987.P4323082569138210133

/-! ## A091987.P4791706923322053518

`A051162(C(A060207(n), 2))`
-/

namespace A091987.P4791706923322053518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (Nat.choose (A060207 n).toNat 2)

end

end A091987.P4791706923322053518

/-!
# A091988: Number of steps required for initial p = 2^n to reach 1 in the recurrence p = floor(Li(p)).

The programs for A091988, there is no canonical definition to state claims against.
-/

/-! ## A091988.P9127644620840147206

`A055086(A248564(n+1)%A108657(n+1))`
-/

namespace A091988.P9127644620840147206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.tmod (A248564 (n + 1)) (A108657 (n + 1))).toNat

end

end A091988.P9127644620840147206

/-! ## A091988.P17430489904404327467

`round(sqrt(A267872(n)+A175230(n+1)))`
-/

namespace A091988.P17430489904404327467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A267872 n + A175230 (n + 1) : ℝ))

end

end A091988.P17430489904404327467

/-! ## A091988.P5246061229758395667

`A000194(A267872(n)+A175230(n+1))`
-/

namespace A091988.P5246061229758395667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A267872 n + A175230 (n + 1)).toNat

end

end A091988.P5246061229758395667

/-! ## A091988.P6119694844249278032

`A000267(A265428(2*(n+1))%A173561(n+1))`
-/

namespace A091988.P6119694844249278032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Int.tmod (A265428 (2 * (n + 1))) (A173561 (n + 1))).toNat

end

end A091988.P6119694844249278032

/-! ## A091988.P8730161231283647869

`A000267(A065033(3*n+4)%A348555(n+1))`
-/

namespace A091988.P8730161231283647869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Int.tmod (A065033 (3 * n + 4)) (A348555 (n + 1))).toNat

end

end A091988.P8730161231283647869

/-!
# A091990: Number of reduced magic borders of order n (these extend magic squares of order n-2 to order n).

The programs for A091990, there is no canonical definition to state claims against.
-/

/-! ## A091990.P6937009459088804600

`A014643(A198445(n+1))`
-/

namespace A091990.P6937009459088804600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014643 (A198445 (n + 1)).toNat

end

end A091990.P6937009459088804600

/-!
# A091991: Minimal number of 1's that must be inserted into the binary representation of n to get a prime.

The programs for A091991, there is no canonical definition to state claims against.
-/

/-! ## A091991.P11156990169785658176

`A005171(n+1)*A294883(A249812(2*(n+1)))`
-/

namespace A091991.P11156990169785658176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A294883 (A249812 (2 * (n + 1))).toNat

end

end A091991.P11156990169785658176

/-! ## A091991.P13406842405512624901

`A171400(7^A231820(n+2))`
-/

namespace A091991.P13406842405512624901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171400 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A231820 (n + 2) : ℤ))).toNat

end

end A091991.P13406842405512624901

/-! ## A091991.P15225884959379711658

`2-A231734(A231820(n+2)!²)`
-/

namespace A091991.P15225884959379711658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A231734 (Nat.factorial (A231820 (n + 2)).toNat ^ 2)

end

end A091991.P15225884959379711658

/-! ## A091991.P3101507568093546200

`A230410(A040081(n+2)^A224783(n))`
-/

namespace A091991.P3101507568093546200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230410 (SequenceMachineLib.roundAway ((A040081 (n + 2) : ℚ) ^ (A224783 n : ℤ))).toNat

end

end A091991.P3101507568093546200

/-! ## A091991.P1514738767087088894

`A046698(A108234(n+1)^A000177(3*n+4))`
-/

namespace A091991.P1514738767087088894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (SequenceMachineLib.roundAway ((A108234 (n + 1) : ℚ) ^ (A000177 (3 * n + 4) : ℤ))).toNat

end

end A091991.P1514738767087088894

/-!
# A091992: Numbers n such that 5*n-3 and 5*n+3 are both primes.

The programs for A091992, the canonical program `A091992.P14038494647915660999` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091992 has offset 1).

The definition of A091992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091992.P10237059690322048675

`2*A093013(n+1)`
-/

namespace A091992.P10237059690322048675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093013 (n + 1)

end

end A091992.P10237059690322048675

namespace A091992

/-- `2*A093013(n+1)` -/
def P10237059690322048675.Spec : Prop :=
  ∀ n, P10237059690322048675.a n = A091992 (n + 1)

end A091992

/-! ## A091992.P15084535300496715079

`A093013(n+1)+A093013(gcd(n, n+1)+n)`
-/

namespace A091992.P15084535300496715079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1) + A093013 (Nat.gcd n (n + 1) + n)

end

end A091992.P15084535300496715079

namespace A091992

/-- `A093013(n+1)+A093013(gcd(n, n+1)+n)` -/
def P15084535300496715079.Spec : Prop :=
  ∀ n, P15084535300496715079.a n = A091992 (n + 1)

end A091992

/-! ## A091992.P6244003354363026842

`A093013(A000027(n+1))+A093013(n+1)`
-/

namespace A091992.P6244003354363026842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (A000027 (n + 1)).toNat + A093013 (n + 1)

end

end A091992.P6244003354363026842

namespace A091992

/-- `A093013(A000027(n+1))+A093013(n+1)` -/
def P6244003354363026842.Spec : Prop :=
  ∀ n, P6244003354363026842.a n = A091992 (n + 1)

end A091992

/-! ## A091992.P16290289977281804985

`A093013(n+1)+record[A093013(A117358(n+1))]`
-/

namespace A091992.P16290289977281804985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (A117358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091992.P16290289977281804985

namespace A091992

/-- `A093013(n+1)+record[A093013(A117358(n+1))]` -/
def P16290289977281804985.Spec : Prop :=
  ∀ n, P16290289977281804985.a n = A091992 (n + 1)

end A091992

/-! ## A091992.P14038494647915660999

`∩[A024895(n+1), A087505(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091992

/-- `∩[A024895(n+1), A087505(n+1)]` -/
def P14038494647915660999.Spec : Prop :=
  ∀ n, (P14038494647915660999.a n : ℤ) = A091992 (n + 1)

theorem P14038494647915660999.correct : P14038494647915660999.Spec := by
  intro n
  simp only [A091992, Nat.add_sub_cancel]

end A091992

/-! ## A091992.P7942608282205345400

`2*∩[A024914(n+1), A102338(n+1)]`
-/

namespace A091992.P7942608282205345400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091992.P7942608282205345400

namespace A091992

/-- `2*∩[A024914(n+1), A102338(n+1)]` -/
def P7942608282205345400.Spec : Prop :=
  ∀ n, (P7942608282205345400.a n : ℤ) = A091992 (n + 1)

end A091992

/-! ## A091992.P4429644774818189824

`A004277(A093013(n+1))`
-/

namespace A091992.P4429644774818189824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A093013 (n + 1)).toNat

end

end A091992.P4429644774818189824

namespace A091992

/-- `A004277(A093013(n+1))` -/
def P4429644774818189824.Spec : Prop :=
  ∀ n, P4429644774818189824.a n = A091992 (n + 1)

end A091992

/-! ## A091992.P12009665823536681647

`A005843(A093013(n+1)%∑[n+3])`
-/

namespace A091992.P12009665823536681647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A093013 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A091992.P12009665823536681647

namespace A091992

/-- `A005843(A093013(n+1)%∑[n+3])` -/
def P12009665823536681647.Spec : Prop :=
  ∀ n, P12009665823536681647.a n = A091992 (n + 1)

end A091992

/-! ## A091992.P6076578442156595958

`A029578(A093013(n+1)+A093013(n+1)+1)`
-/

namespace A091992.P6076578442156595958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A093013 (n + 1) + (A093013 (n + 1) + 1)).toNat

end

end A091992.P6076578442156595958

namespace A091992

/-- `A029578(A093013(n+1)+A093013(n+1)+1)` -/
def P6076578442156595958.Spec : Prop :=
  ∀ n, P6076578442156595958.a n = A091992 (n + 1)

end A091992

/-! ## A091992.P2783122707141903644

`A004396(lcm(3, A093013(n+1)))`
-/

namespace A091992.P2783122707141903644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.lcm 3 (A093013 (n + 1)))

end

end A091992.P2783122707141903644

namespace A091992

/-- `A004396(lcm(3, A093013(n+1)))` -/
def P2783122707141903644.Spec : Prop :=
  ∀ n, P2783122707141903644.a n = A091992 (n + 1)

end A091992

/-! ## A091992.P17544656707886631220

`eq[5, A325142(5*n)+2]`
-/

namespace A091992.P17544656707886631220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (5 * n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091992.P17544656707886631220

namespace A091992

/-- `eq[5, A325142(5*n)+2]` -/
def P17544656707886631220.Spec : Prop :=
  ∀ n, (P17544656707886631220.a n : ℤ) = A091992 (n + 1)

end A091992

/-! ## A091992.P3029913069719493083

`eq[3, A325142(A008706(n))]`
-/

namespace A091992.P3029913069719493083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091992.P3029913069719493083

namespace A091992

/-- `eq[3, A325142(A008706(n))]` -/
def P3029913069719493083.Spec : Prop :=
  ∀ n, (P3029913069719493083.a n : ℤ) = A091992 (n + 1)

end A091992

/-!
# A091995: Permutation of the natural numbers.

The programs for A091995, the canonical program `A091995.P16558306300262697301` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091995 has offset 1).

The definition of A091995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091995.P16558306300262697301

`A161680(A322832(n))+A000267(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091995

/-- `A161680(A322832(n))+A000267(n)` -/
def P16558306300262697301.Spec : Prop :=
  ∀ n, P16558306300262697301.a n = A091995 (n + 1)

theorem P16558306300262697301.correct : P16558306300262697301.Spec := by
  intro n
  simp only [A091995, Nat.add_sub_cancel]

end A091995

/-! ## A091995.P2541766870657447087

`A056536(A122196(n+1)+A028391(n))`
-/

namespace A091995.P2541766870657447087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (A122196 (n + 1) + A028391 n).toNat

end

end A091995.P2541766870657447087

namespace A091995

/-- `A056536(A122196(n+1)+A028391(n))` -/
def P2541766870657447087.Spec : Prop :=
  ∀ n, P2541766870657447087.a n = A091995 (n + 1)

end A091995

/-! ## A091995.P9330342718094581202

`A285723(A274428(n+1))`
-/

namespace A091995.P9330342718094581202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285723 (A274428 (n + 1)).toNat

end

end A091995.P9330342718094581202

namespace A091995

/-- `A285723(A274428(n+1))` -/
def P9330342718094581202.Spec : Prop :=
  ∀ n, P9330342718094581202.a n = A091995 (n + 1)

end A091995

/-! ## A091995.P9994094884468606761

`A285733(A274428(n+1)%A001538(n))`
-/

namespace A091995.P9994094884468606761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285733 (Int.tmod (A274428 (n + 1)) (A001538 n)).toNat

end

end A091995.P9994094884468606761

namespace A091995

/-- `A285733(A274428(n+1)%A001538(n))` -/
def P9994094884468606761.Spec : Prop :=
  ∀ n, P9994094884468606761.a n = A091995 (n + 1)

end A091995

/-! ## A091995.P793184945582075084

`A000124(A138099(n+1))-A167430(n+1)`
-/

namespace A091995.P793184945582075084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A138099 (n + 1)).toNat - A167430 (n + 1)

end

end A091995.P793184945582075084

namespace A091995

/-- `A000124(A138099(n+1))-A167430(n+1)` -/
def P793184945582075084.Spec : Prop :=
  ∀ n, P793184945582075084.a n = A091995 (n + 1)

end A091995

/-! ## A091995.P8385015190788259773

`A090894(n)+1`
-/

namespace A091995.P8385015190788259773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090894 n + 1

end

end A091995.P8385015190788259773

namespace A091995

/-- `A090894(n)+1` -/
def P8385015190788259773.Spec : Prop :=
  ∀ n, P8385015190788259773.a n = A091995 (n + 1)

theorem P8385015190788259773.correct : P8385015190788259773.Spec := by
  intro n
  simp only [A091995, Nat.add_sub_cancel, A091995.P8385015190788259773.a, A091995.P16558306300262697301.a, A000267, A000267.P8737011026442136894.a, A090894, A090894.P5043155219363739056.a, A161680, A161680.P17206074215489759881.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A091995

/-! ## A091995.P5003999700129940004

`A008619(2*A090894(n))`
-/

namespace A091995.P5003999700129940004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A090894 n).toNat

end

end A091995.P5003999700129940004

namespace A091995

/-- `A008619(2*A090894(n))` -/
def P5003999700129940004.Spec : Prop :=
  ∀ n, P5003999700129940004.a n = A091995 (n + 1)

end A091995

/-! ## A091995.P3120813693048259593

`A008611(3*A090894(n))`
-/

namespace A091995.P3120813693048259593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A090894 n).toNat

end

end A091995.P3120813693048259593

namespace A091995

/-- `A008611(3*A090894(n))` -/
def P3120813693048259593.Spec : Prop :=
  ∀ n, P3120813693048259593.a n = A091995 (n + 1)

end A091995

/-! ## A091995.P11287649970737942222

`A056536(A271647(n+1))`
-/

namespace A091995.P11287649970737942222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (A271647 (n + 1)).toNat

end

end A091995.P11287649970737942222

namespace A091995

/-- `A056536(A271647(n+1))` -/
def P11287649970737942222.Spec : Prop :=
  ∀ n, P11287649970737942222.a n = A091995 (n + 1)

end A091995

/-!
# A091996: Numbers n such that 9*2^(2*n-1) - 1 is prime.

The programs for A091996, there is no canonical definition to state claims against.
-/

/-! ## A091996.P6621240167487426057

`ceil(A002236(n+1)/2)`
-/

namespace A091996.P6621240167487426057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002236 (n + 1) : ℚ) / 2⌉

end

end A091996.P6621240167487426057

/-! ## A091996.P11063058151239694423

`round((A010054(n)+A002236(n+1))/2)`
-/

namespace A091996.P11063058151239694423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010054 n + A002236 (n + 1) : ℚ) / 2)

end

end A091996.P11063058151239694423

/-! ## A091996.P10256430984199435190

`(A002236(n+1)-A260196(n+2))/2`
-/

namespace A091996.P10256430984199435190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002236 (n + 1) - A260196 (n + 2) : ℚ) / 2

end

end A091996.P10256430984199435190

/-! ## A091996.P10816711557737147249

`(A057427(n+4)+A002236(n+1))/2`
-/

namespace A091996.P10816711557737147249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 (n + 4) + A002236 (n + 1) : ℚ) / 2

end

end A091996.P10816711557737147249

/-!
# A091997: Numbers n such that 3*2^(n-1) - 1 is prime.

The programs for A091997, there is no canonical definition to state claims against.
-/

/-! ## A091997.P16524661914391814608

`A002235(n+1)+1`
-/

namespace A091997.P16524661914391814608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002235 (n + 1) + 1

end

end A091997.P16524661914391814608

/-! ## A091997.P12914485027501143335

`A164523(A028310(n))+n+1-floor(n²/(n+1))`
-/

namespace A091997.P12914485027501143335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164523 (A028310 n).toNat + ((n + 1 : ℤ) - ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋)

end

end A091997.P12914485027501143335

/-! ## A091997.P13359227812482912933

`a(A025458(A025458(n)))+A164523(n)+1` with `a(0)=1`
-/

namespace A091997.P13359227812482912933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A025458 (A025458 n).toNat).toNat + (A164523 n + 1)

end

end A091997.P13359227812482912933

/-! ## A091997.P11286049657724928985

`eq[3, A126715(n)]+1`
-/

namespace A091997.P11286049657724928985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091997.P11286049657724928985

/-! ## A091997.P12658908027818343511

`record[(n+1)/A210651(A028310(n))]`
-/

namespace A091997.P12658908027818343511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A210651 (A028310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091997.P12658908027818343511

/-!
# A091998: Numbers that are congruent to {1, 11} mod 12.

The programs for A091998, the canonical program `A091998.P7604830975372506493` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091998 has offset 1).

The definition of A091998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091998.P7604830975372506493

`a(n-2)+12` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091998

/-- `a(n-2)+12` -/
def P7604830975372506493.Spec : Prop :=
  ∀ n, (P7604830975372506493.a n : ℤ) = A091998 (n + 1)

theorem P7604830975372506493.correct : P7604830975372506493.Spec := by
  intro n
  simp only [A091998, Nat.add_sub_cancel]

end A091998

/-! ## A091998.P6991795322737903156

`12*n-a(n-1)` with `a(0)=1`
-/

namespace A091998.P6991795322737903156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (12 * n : ℤ) - a (n - 1)

end

end A091998.P6991795322737903156

namespace A091998

/-- `12*n-a(n-1)` -/
def P6991795322737903156.Spec : Prop :=
  ∀ n, P6991795322737903156.a n = A091998 (n + 1)

end A091998

/-! ## A091998.P1634349941468585700

`6*(n+1)+2*(-1)^(n+1)-3`
-/

namespace A091998.P1634349941468585700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) + 2 * (-1) ^ (n + 1) - 3

end

end A091998.P1634349941468585700

namespace A091998

/-- `6*(n+1)+2*(-1)^(n+1)-3` -/
def P1634349941468585700.Spec : Prop :=
  ∀ n, P1634349941468585700.a n = A091998 (n + 1)

theorem P1634349941468585700.correct : P1634349941468585700.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A091998, Nat.add_sub_cancel, A091998.P1634349941468585700.a, A091998.P7604830975372506493.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A091998, Nat.add_sub_cancel, A091998.P1634349941468585700.a, A091998.P7604830975372506493.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A091998

/-! ## A091998.P17828592328130576860

`xor(2, 6*n+3)`
-/

namespace A091998.P17828592328130576860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n + 3)

end

end A091998.P17828592328130576860

namespace A091998

/-- `xor(2, 6*n+3)` -/
def P17828592328130576860.Spec : Prop :=
  ∀ n, (P17828592328130576860.a n : ℤ) = A091998 (n + 1)

end A091998

/-! ## A091998.P13889625573140780007

`Δ[xor(1, 3*n²)]`
-/

namespace A091998.P13889625573140780007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091998.P13889625573140780007

namespace A091998

/-- `Δ[xor(1, 3*n²)]` -/
def P13889625573140780007.Spec : Prop :=
  ∀ n, P13889625573140780007.a n = A091998 (n + 1)

end A091998

/-! ## A091998.P14983826222068665432

`Δ[or(2, 3*n²)]`
-/

namespace A091998.P14983826222068665432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (3 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091998.P14983826222068665432

namespace A091998

/-- `Δ[or(2, 3*n²)]` -/
def P14983826222068665432.Spec : Prop :=
  ∀ n, P14983826222068665432.a n = A091998 (n + 1)

end A091998

/-! ## A091998.P8096566916061515493

`Δ[and(3*n², -3)]`
-/

namespace A091998.P8096566916061515493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n ^ 2 : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091998.P8096566916061515493

namespace A091998

/-- `Δ[and(3*n², -3)]` -/
def P8096566916061515493.Spec : Prop :=
  ∀ n, P8096566916061515493.a n = A091998 (n + 1)

end A091998

/-! ## A091998.P2459562070490896093

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=10, a(2)=2`
-/

namespace A091998.P2459562070490896093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091998.P2459562070490896093

namespace A091998

/-- `∑[abs(a(n-2))]` -/
def P2459562070490896093.Spec : Prop :=
  ∀ n, (P2459562070490896093.a n : ℤ) = A091998 (n + 1)

end A091998

/-! ## A091998.P12463347358870341215

`∑[12-a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A091998.P12463347358870341215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091998.P12463347358870341215

namespace A091998

/-- `∑[12-a(n-1)]` -/
def P12463347358870341215.Spec : Prop :=
  ∀ n, P12463347358870341215.a n = A091998 (n + 1)

end A091998

/-! ## A091998.P12189247526300811369

`∑[∑[ogf((1+10x+x^2)/(1+x))]]`
-/

namespace A091998.P12189247526300811369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091998.P12189247526300811369

namespace A091998

/-- `∑[∑[ogf((1+10x+x^2)/(1+x))]]` -/
def P12189247526300811369.Spec : Prop :=
  ∀ n, P12189247526300811369.a n = A091998 (n + 1)

end A091998

/-! ## A091998.P16171254936112027721

`ogf((1+10x+x^2)/(1-x-x^2+x^3))`
-/

namespace A091998.P16171254936112027721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 1] [1, -1, -1, 1] n

end

end A091998.P16171254936112027721

namespace A091998

/-- `ogf((1+10x+x^2)/(1-x-x^2+x^3))` -/
def P16171254936112027721.Spec : Prop :=
  ∀ n, P16171254936112027721.a n = A091998 (n + 1)

end A091998

/-! ## A091998.P7091806238000693035

`Δ[A195143(n)]`
-/

namespace A091998.P7091806238000693035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091998.P7091806238000693035

namespace A091998

/-- `Δ[A195143(n)]` -/
def P7091806238000693035.Spec : Prop :=
  ∀ n, P7091806238000693035.a n = A091998 (n + 1)

theorem P7091806238000693035.correct : P7091806238000693035.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A091998, Nat.add_sub_cancel, A091998.P7091806238000693035.f1, A091998.P7091806238000693035.a, A091998.P7604830975372506493.a, A195143, A195143.P2466939833330599990.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A091998, Nat.add_sub_cancel, A091998.P7091806238000693035.f1, A091998.P7091806238000693035.a, A091998.P7604830975372506493.a, A195143, A195143.P2466939833330599990.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A091998

/-! ## A091998.P4300319953853506717

`∑[A010014(n)%16]`
-/

namespace A091998.P4300319953853506717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010014 n) 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091998.P4300319953853506717

namespace A091998

/-- `∑[A010014(n)%16]` -/
def P4300319953853506717.Spec : Prop :=
  ∀ n, P4300319953853506717.a n = A091998 (n + 1)

end A091998

/-! ## A091998.P227154204900272563

`Δ[A275543(n)+n²]`
-/

namespace A091998.P227154204900272563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091998.P227154204900272563

namespace A091998

/-- `Δ[A275543(n)+n²]` -/
def P227154204900272563.Spec : Prop :=
  ∀ n, P227154204900272563.a n = A091998 (n + 1)

theorem P227154204900272563.correct : P227154204900272563.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A091998, Nat.add_sub_cancel, A091998.P227154204900272563.f1, A091998.P227154204900272563.a, A091998.P7604830975372506493.a, A275543, A275543.P10676769887343348769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A091998, Nat.add_sub_cancel, A091998.P227154204900272563.f1, A091998.P227154204900272563.a, A091998.P7604830975372506493.a, A275543, A275543.P10676769887343348769.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A091998

/-! ## A091998.P4040173229207826906

`∪[A017533(n), A017653(n)]`
-/

namespace A091998.P4040173229207826906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091998.P4040173229207826906

namespace A091998

/-- `∪[A017533(n), A017653(n)]` -/
def P4040173229207826906.Spec : Prop :=
  ∀ n, (P4040173229207826906.a n : ℤ) = A091998 (n + 1)

end A091998

/-! ## A091998.P16056689989026929011

`A051062(n)%A067870(n+1)`
-/

namespace A091998.P16056689989026929011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051062 n) (A067870 (n + 1))

end

end A091998.P16056689989026929011

namespace A091998

/-- `A051062(n)%A067870(n+1)` -/
def P16056689989026929011.Spec : Prop :=
  ∀ n, P16056689989026929011.a n = A091998 (n + 1)

end A091998

/-! ## A091998.P915807485279729307

`A053742(n)%A166959(n+1)`
-/

namespace A091998.P915807485279729307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053742 n) (A166959 (n + 1))

end

end A091998.P915807485279729307

namespace A091998

/-- `A053742(n)%A166959(n+1)` -/
def P915807485279729307.Spec : Prop :=
  ∀ n, P915807485279729307.a n = A091998 (n + 1)

end A091998

/-! ## A091998.P4220174433879513628

`A231002(n+1)%A017113(n)`
-/

namespace A091998.P4220174433879513628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231002 (n + 1)) (A017113 n)

end

end A091998.P4220174433879513628

namespace A091998

/-- `A231002(n+1)%A017113(n)` -/
def P4220174433879513628.Spec : Prop :=
  ∀ n, P4220174433879513628.a n = A091998 (n + 1)

end A091998

/-! ## A091998.P8015413852957246235

`A081275(n)%A259755(n+1)`
-/

namespace A091998.P8015413852957246235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081275 n) (A259755 (n + 1))

end

end A091998.P8015413852957246235

namespace A091998

/-- `A081275(n)%A259755(n+1)` -/
def P8015413852957246235.Spec : Prop :=
  ∀ n, P8015413852957246235.a n = A091998 (n + 1)

end A091998

/-! ## A091998.P7290870333211611049

`gcd(A001513(n), A128880(n+1))`
-/

namespace A091998.P7290870333211611049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001513 n) (A128880 (n + 1))

end

end A091998.P7290870333211611049

namespace A091998

/-- `gcd(A001513(n), A128880(n+1))` -/
def P7290870333211611049.Spec : Prop :=
  ∀ n, (P7290870333211611049.a n : ℤ) = A091998 (n + 1)

end A091998

/-!
# A091999: Numbers that are congruent to {2, 10} mod 12.

The programs for A091999, the canonical program `A091999.P607186116855953643` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091999 has offset 1).

The definition of A091999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091999.P607186116855953643

`12*n-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091999

/-- `12*n-a(n-1)` -/
def P607186116855953643.Spec : Prop :=
  ∀ n, P607186116855953643.a n = A091999 (n + 1)

theorem P607186116855953643.correct : P607186116855953643.Spec := by
  intro n
  simp only [A091999, Nat.add_sub_cancel]

end A091999

/-! ## A091999.P15399568865204872396

`6*(n+1)-3+(-1)^(n+1)`
-/

namespace A091999.P15399568865204872396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - 3 + (-1) ^ (n + 1)

end

end A091999.P15399568865204872396

namespace A091999

/-- `6*(n+1)-3+(-1)^(n+1)` -/
def P15399568865204872396.Spec : Prop :=
  ∀ n, P15399568865204872396.a n = A091999 (n + 1)

theorem P15399568865204872396.correct : P15399568865204872396.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A091999, Nat.add_sub_cancel, A091999.P15399568865204872396.a, A091999.P607186116855953643.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A091999, Nat.add_sub_cancel, A091999.P15399568865204872396.a, A091999.P607186116855953643.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A091999

/-! ## A091999.P12472342005539678669

`2*A007310(n+1)`
-/

namespace A091999.P12472342005539678669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007310 (n + 1)

end

end A091999.P12472342005539678669

namespace A091999

/-- `2*A007310(n+1)` -/
def P12472342005539678669.Spec : Prop :=
  ∀ n, P12472342005539678669.a n = A091999 (n + 1)

end A091999

/-! ## A091999.P3513786142746000577

`or(2, 6*n+2)`
-/

namespace A091999.P3513786142746000577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (6 * n + 2)

end

end A091999.P3513786142746000577

namespace A091999

/-- `or(2, 6*n+2)` -/
def P3513786142746000577.Spec : Prop :=
  ∀ n, (P3513786142746000577.a n : ℤ) = A091999 (n + 1)

end A091999

/-! ## A091999.P2458518722565281032

`Δ[or(1, 3*n²)]`
-/

namespace A091999.P2458518722565281032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091999.P2458518722565281032

namespace A091999

/-- `Δ[or(1, 3*n²)]` -/
def P2458518722565281032.Spec : Prop :=
  ∀ n, P2458518722565281032.a n = A091999 (n + 1)

end A091999

/-! ## A091999.P884878192490472986

`Δ[and(3*n², -2)]`
-/

namespace A091999.P884878192490472986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n ^ 2 : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091999.P884878192490472986

namespace A091999

/-- `Δ[and(3*n², -2)]` -/
def P884878192490472986.Spec : Prop :=
  ∀ n, P884878192490472986.a n = A091999 (n + 1)

end A091999

/-! ## A091999.P13000116313784842387

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=8, a(2)=4`
-/

namespace A091999.P13000116313784842387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091999.P13000116313784842387

namespace A091999

/-- `∑[abs(a(n-2))]` -/
def P13000116313784842387.Spec : Prop :=
  ∀ n, (P13000116313784842387.a n : ℤ) = A091999 (n + 1)

end A091999

/-! ## A091999.P11913867877958621305

`∑[12-a(n-1)]` with `a(0)=2, a(1)=8`
-/

namespace A091999.P11913867877958621305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091999.P11913867877958621305

namespace A091999

/-- `∑[12-a(n-1)]` -/
def P11913867877958621305.Spec : Prop :=
  ∀ n, P11913867877958621305.a n = A091999 (n + 1)

end A091999

/-! ## A091999.P13549554877051232731

`∑[∑[ogf((2+8x+2x^2)/(1+x))]]`
-/

namespace A091999.P13549554877051232731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091999.P13549554877051232731

namespace A091999

/-- `∑[∑[ogf((2+8x+2x^2)/(1+x))]]` -/
def P13549554877051232731.Spec : Prop :=
  ∀ n, P13549554877051232731.a n = A091999 (n + 1)

end A091999

/-! ## A091999.P7247585217052933658

`ogf((2+8x+2x^2)/(1-x-x^2+x^3))`
-/

namespace A091999.P7247585217052933658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, 2] [1, -1, -1, 1] n

end

end A091999.P7247585217052933658

namespace A091999

/-- `ogf((2+8x+2x^2)/(1-x-x^2+x^3))` -/
def P7247585217052933658.Spec : Prop :=
  ∀ n, P7247585217052933658.a n = A091999 (n + 1)

end A091999

/-! ## A091999.P13510785619064258146

`record[lcm(6, 2*n+1)/3]`
-/

namespace A091999.P13510785619064258146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 (2 * n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091999.P13510785619064258146

namespace A091999

/-- `record[lcm(6, 2*n+1)/3]` -/
def P13510785619064258146.Spec : Prop :=
  ∀ n, P13510785619064258146.a n = (A091999 (n + 1) : ℚ)

end A091999

/-! ## A091999.P15464841223844754006

`record[lcm(3, n+2)-4+n]`
-/

namespace A091999.P15464841223844754006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 2) : ℤ) - 4 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091999.P15464841223844754006

namespace A091999

/-- `record[lcm(3, n+2)-4+n]` -/
def P15464841223844754006.Spec : Prop :=
  ∀ n, P15464841223844754006.a n = A091999 (n + 1)

end A091999

/-! ## A091999.P1304217344689913322

`2*(3*n+n%2+1)`
-/

namespace A091999.P1304217344689913322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (3 * n + (n % 2 + 1))

end

end A091999.P1304217344689913322

namespace A091999

/-- `2*(3*n+n%2+1)` -/
def P1304217344689913322.Spec : Prop :=
  ∀ n, (P1304217344689913322.a n : ℤ) = A091999 (n + 1)

end A091999

/-! ## A091999.P14869506433482530391

`2*(gcd(2, n+1)+3*n)`
-/

namespace A091999.P14869506433482530391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.gcd 2 (n + 1) + 3 * n)

end

end A091999.P14869506433482530391

namespace A091999

/-- `2*(gcd(2, n+1)+3*n)` -/
def P14869506433482530391.Spec : Prop :=
  ∀ n, (P14869506433482530391.a n : ℤ) = A091999 (n + 1)

end A091999

/-! ## A091999.P17083360099509443579

`2*(∑[and(3, 2*n+1)]+n)`
-/

namespace A091999.P17083360099509443579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A091999.P17083360099509443579

namespace A091999

/-- `2*(∑[and(3, 2*n+1)]+n)` -/
def P17083360099509443579.Spec : Prop :=
  ∀ n, (P17083360099509443579.a n : ℤ) = A091999 (n + 1)

end A091999

/-! ## A091999.P12538589728173929090

`∑[dr(A040384(n))]`
-/

namespace A091999.P12538589728173929090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040384 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091999.P12538589728173929090

namespace A091999

/-- `∑[dr(A040384(n))]` -/
def P12538589728173929090.Spec : Prop :=
  ∀ n, (P12538589728173929090.a n : ℤ) = A091999 (n + 1)

end A091999

/-! ## A091999.P7392482622398187713

`∑[2*A382713(n)]`
-/

namespace A091999.P7392482622398187713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A382713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091999.P7392482622398187713

namespace A091999

/-- `∑[2*A382713(n)]` -/
def P7392482622398187713.Spec : Prop :=
  ∀ n, P7392482622398187713.a n = A091999 (n + 1)

end A091999

/-! ## A091999.P12121575687595196840

`Δ[2*A032528(n)]`
-/

namespace A091999.P12121575687595196840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091999.P12121575687595196840

namespace A091999

/-- `Δ[2*A032528(n)]` -/
def P12121575687595196840.Spec : Prop :=
  ∀ n, P12121575687595196840.a n = A091999 (n + 1)

end A091999

/-! ## A091999.P12033932660352366105

`A259755(n+1)/2`
-/

namespace A091999.P12033932660352366105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259755 (n + 1) : ℚ) / 2

end

end A091999.P12033932660352366105

namespace A091999

/-- `A259755(n+1)/2` -/
def P12033932660352366105.Spec : Prop :=
  ∀ n, P12033932660352366105.a n = (A091999 (n + 1) : ℚ)

theorem P12033932660352366105.correct : P12033932660352366105.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A091999, Nat.add_sub_cancel, A091999.P12033932660352366105.a, A091999.P607186116855953643.a, A259755, A259755.P4631213340866640928.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A091999, Nat.add_sub_cancel, A091999.P12033932660352366105.a, A091999.P607186116855953643.a, A259755, A259755.P4631213340866640928.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A091999

/-! ## A091999.P2119709401541395123

`∑[A086396(a(n-1))]` with `a(0)=2`
-/

namespace A091999.P2119709401541395123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A086396 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091999.P2119709401541395123

namespace A091999

/-- `∑[A086396(a(n-1))]` -/
def P2119709401541395123.Spec : Prop :=
  ∀ n, P2119709401541395123.a n = A091999 (n + 1)

end A091999

