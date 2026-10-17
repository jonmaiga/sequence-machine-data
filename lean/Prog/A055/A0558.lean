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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A055800: Triangle T read by rows: T(i,0)=1 for i >= 0; T(i,i)=0 for i >= 1; T(i,j) = Sum_{k=1..floor(i/2)} T(i-2k,j-2k+1) for 1 <= j <= i-1, where T(m,n) := 0 if m < 0 or n < 0.

The programs for A055800, there is no canonical definition to state claims against.
-/

/-! ## A055800.P836017567906038806

`A165034(∑{d}[A304482(n), A304482(#)])`
-/

namespace A055800.P836017567906038806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 (∑ d ∈ Nat.divisors (f1 n).natAbs, A304482 d).toNat

end

end A055800.P836017567906038806

/-! ## A055800.P6526844277144660504

`A124766(A000120(n+1)*A304482(n))`
-/

namespace A055800.P6526844277144660504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A000120 (n + 1) * A304482 n).toNat

end

end A055800.P6526844277144660504

/-! ## A055800.P7391132024784126195

`gcd(A070936(n), A243148(A058710(n)))`
-/

namespace A055800.P7391132024784126195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070936 n) (A243148 (A058710 n).toNat)

end

end A055800.P7391132024784126195

/-! ## A055800.P12691891806329665814

`gcd(A154782(A165253(n)), A291678(n))`
-/

namespace A055800.P12691891806329665814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154782 (A165253 n).toNat) (A291678 n)

end

end A055800.P12691891806329665814

/-! ## A055800.P11130407417858309808

`A070936(n)+A070109(A005253(n))`
-/

namespace A055800.P11130407417858309808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 n + A070109 (A005253 n).toNat

end

end A055800.P11130407417858309808

/-!
# A055801: Triangle T read by rows: T(i,0)=T(i,i)=1, T(i,j) = Sum_{k=1..floor(n/2)} T(i-2k, j-2k+1) for 1<=j<=i-1, where T(m,n) := 0 if m

The programs for A055801, there is no canonical definition to state claims against.
-/

/-! ## A055801.P9484880934643462910

`A208245(A056943(n)+1)`
-/

namespace A055801.P9484880934643462910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A056943 n + 1).toNat

end

end A055801.P9484880934643462910

/-! ## A055801.P5610290160736383912

`A208245(A038722(n+1)-A003056(n))`
-/

namespace A055801.P5610290160736383912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A038722 (n + 1) - A003056 n).toNat

end

end A055801.P5610290160736383912

/-! ## A055801.P7723918758877161962

`ceil(A185422(n+1)/A185420(n+1))`
-/

namespace A055801.P7723918758877161962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185422 (n + 1) : ℚ) / (A185420 (n + 1) : ℚ)⌉

end

end A055801.P7723918758877161962

/-! ## A055801.P10956655157417191031

`A390256(A303694(n))`
-/

namespace A055801.P10956655157417191031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390256 (A303694 n).toNat

end

end A055801.P10956655157417191031

/-! ## A055801.P13677316697866482440

`A138033(A152977(n)+1)`
-/

namespace A055801.P13677316697866482440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A152977 n + 1).toNat

end

end A055801.P13677316697866482440

/-!
# A055802: a(n) = T(n,n-2), array T as in A055801.

The programs for A055802, the canonical program `A055802.P3816379844816123006` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055802 has offset 2).

The definition of A055802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055802.P3816379844816123006

`floor(a(n-2)+n/2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055802

/-- `floor(a(n-2)+n/2)` -/
def P3816379844816123006.Spec : Prop :=
  ∀ n, P3816379844816123006.a n = A055802 (n + 2)

theorem P3816379844816123006.correct : P3816379844816123006.Spec := by
  intro n
  simp only [A055802, Nat.add_sub_cancel]

end A055802

/-! ## A055802.P2154328604383530271

`∑[floor(n/2-a(n-1))]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A055802.P2154328604383530271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  ⌊(n : ℚ) / 2 - (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055802.P2154328604383530271

namespace A055802

/-- `∑[floor(n/2-a(n-1))]` -/
def P2154328604383530271.Spec : Prop :=
  ∀ n, P2154328604383530271.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P15690703968148053948

`∑[(n-a(n-1))%∑[n%2]]` with `a(0)=1`
-/

namespace A055802.P15690703968148053948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod ((n : ℤ) - f1 (n - 1)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055802.P15690703968148053948

namespace A055802

/-- `∑[(n-a(n-1))%∑[n%2]]` -/
def P15690703968148053948.Spec : Prop :=
  ∀ n, P15690703968148053948.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P6240817152753695359

`a(n-2)-floor((1-n)/2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A055802.P6240817152753695359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) - ⌊(1 - (n : ℤ) : ℚ) / 2⌋

end

end A055802.P6240817152753695359

namespace A055802

/-- `a(n-2)-floor((1-n)/2)` -/
def P6240817152753695359.Spec : Prop :=
  ∀ n, P6240817152753695359.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P14284824308372810214

`∑[gcd(a(n-2)+1, n-2)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A055802.P14284824308372810214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  Int.gcd (f1 (n - 2) + 1 : ℤ) ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055802.P14284824308372810214

namespace A055802

/-- `∑[gcd(a(n-2)+1, n-2)]` -/
def P14284824308372810214.Spec : Prop :=
  ∀ n, (P14284824308372810214.a n : ℤ) = A055802 (n + 2)

end A055802

/-! ## A055802.P4378741579990779448

`∑[a(n-2)+1]-(a(n-1)+n)` with `a(0)=1, a(1)=1`
-/

namespace A055802.P4378741579990779448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + (n : ℤ))

end

end A055802.P4378741579990779448

namespace A055802

/-- `∑[a(n-2)+1]-(a(n-1)+n)` -/
def P4378741579990779448.Spec : Prop :=
  ∀ n, P4378741579990779448.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P4120878497157636201

`Δ[a(n-2)+n-2]+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A055802.P4120878497157636201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 2) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 2)

end

end A055802.P4120878497157636201

namespace A055802

/-- `Δ[a(n-2)+n-2]+a(n-2)` -/
def P4120878497157636201.Spec : Prop :=
  ∀ n, P4120878497157636201.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P13875311360247687246

`A033638(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A055802.P13875311360247687246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A033638 n - a (n - 1)

end

end A055802.P13875311360247687246

namespace A055802

/-- `A033638(n)-a(n-1)` -/
def P13875311360247687246.Spec : Prop :=
  ∀ n, P13875311360247687246.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P18270832345566874034

`ceil((A152919(n+1)-n)/2)`
-/

namespace A055802.P18270832345566874034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A152919 (n + 1) - (n : ℤ) : ℚ) / 2⌉

end

end A055802.P18270832345566874034

namespace A055802

/-- `ceil((A152919(n+1)-n)/2)` -/
def P18270832345566874034.Spec : Prop :=
  ∀ n, P18270832345566874034.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P2040699820541902397

`A004526(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A055802.P2040699820541902397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A004526 n + a (n - 2)

end

end A055802.P2040699820541902397

namespace A055802

/-- `A004526(n)+a(n-2)` -/
def P2040699820541902397.Spec : Prop :=
  ∀ n, P2040699820541902397.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P2510726263393977452

`A123108(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A055802.P2510726263393977452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A123108 n + a (n - 2)

end

end A055802.P2510726263393977452

namespace A055802

/-- `A123108(n)+a(n-2)` -/
def P2510726263393977452.Spec : Prop :=
  ∀ n, P2510726263393977452.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P16759031733779468817

`A076921(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A055802.P16759031733779468817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076921 n + (1 - a (n - 1))

end

end A055802.P16759031733779468817

namespace A055802

/-- `A076921(n)+1-a(n-1)` -/
def P16759031733779468817.Spec : Prop :=
  ∀ n, P16759031733779468817.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P12109565420914163457

`∑[floor(A266449(n)/4)+1]-n`
-/

namespace A055802.P12109565420914163457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266449 n : ℚ) / 4⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A055802.P12109565420914163457

namespace A055802

/-- `∑[floor(A266449(n)/4)+1]-n` -/
def P12109565420914163457.Spec : Prop :=
  ∀ n, P12109565420914163457.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P4606265543192450182

`A057979(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A055802.P4606265543192450182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A057979 (n - 1) + a (n - 1)

end

end A055802.P4606265543192450182

namespace A055802

/-- `A057979(n-1)+a(n-1)` -/
def P4606265543192450182.Spec : Prop :=
  ∀ n, P4606265543192450182.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P3698992561157776052

`A258087(n)-A078126(n)`
-/

namespace A055802.P3698992561157776052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258087 n - A078126 n

end

end A055802.P3698992561157776052

namespace A055802

/-- `A258087(n)-A078126(n)` -/
def P3698992561157776052.Spec : Prop :=
  ∀ n, P3698992561157776052.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P7840209319183902746

`A212342(n)-A272058(n)`
-/

namespace A055802.P7840209319183902746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 n - A272058 n

end

end A055802.P7840209319183902746

namespace A055802

/-- `A212342(n)-A272058(n)` -/
def P7840209319183902746.Spec : Prop :=
  ∀ n, P7840209319183902746.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P1798434027274866574

`A134519(A004275(n)+1-n)`
-/

namespace A055802.P1798434027274866574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (A004275 n + (1 - (n : ℤ))).toNat

end

end A055802.P1798434027274866574

namespace A055802

/-- `A134519(A004275(n)+1-n)` -/
def P1798434027274866574.Spec : Prop :=
  ∀ n, P1798434027274866574.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P1763666918207678616

`A101881(n)-A063196(n+1)`
-/

namespace A055802.P1763666918207678616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n - A063196 (n + 1)

end

end A055802.P1763666918207678616

namespace A055802

/-- `A101881(n)-A063196(n+1)` -/
def P1763666918207678616.Spec : Prop :=
  ∀ n, P1763666918207678616.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P5106369612075835163

`A152919(n+1)-A165157(n)`
-/

namespace A055802.P5106369612075835163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152919 (n + 1) - A165157 n

end

end A055802.P5106369612075835163

namespace A055802

/-- `A152919(n+1)-A165157(n)` -/
def P5106369612075835163.Spec : Prop :=
  ∀ n, P5106369612075835163.a n = A055802 (n + 2)

end A055802

/-! ## A055802.P14795029859334374382

`A134519(1-(n-A004275(n)))`
-/

namespace A055802.P14795029859334374382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (1 - ((n : ℤ) - A004275 n)).toNat

end

end A055802.P14795029859334374382

namespace A055802

/-- `A134519(1-(n-A004275(n)))` -/
def P14795029859334374382.Spec : Prop :=
  ∀ n, P14795029859334374382.a n = A055802 (n + 2)

end A055802

/-!
# A055803: a(n) = T(n,n-3), array T as in A055801.

The programs for A055803, the canonical program `A055803.P12309034414500423932` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055803 has offset 3).

The definition of A055803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055803.P12309034414500423932

`A114220(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055803

/-- `A114220(n)+a(n-2)` -/
def P12309034414500423932.Spec : Prop :=
  ∀ n, P12309034414500423932.a n = A055803 (n + 3)

theorem P12309034414500423932.correct : P12309034414500423932.Spec := by
  intro n
  simp only [A055803, Nat.add_sub_cancel]

end A055803

/-! ## A055803.P649129884891234357

`A055804(n+4)-A000332(A008619(n))`
-/

namespace A055803.P649129884891234357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055804 (n + 4) - A000332 (A008619 n).toNat

end

end A055803.P649129884891234357

namespace A055803

/-- `A055804(n+4)-A000332(A008619(n))` -/
def P649129884891234357.Spec : Prop :=
  ∀ n, P649129884891234357.a n = A055803 (n + 3)

end A055803

/-! ## A055803.P1375185588759364502

`A000125(A065033(n))-A133265(n)/2`
-/

namespace A055803.P1375185588759364502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000125 (A065033 n).toNat : ℚ) - (A133265 n : ℚ) / 2

end

end A055803.P1375185588759364502

namespace A055803

/-- `A000125(A065033(n))-A133265(n)/2` -/
def P1375185588759364502.Spec : Prop :=
  ∀ n, P1375185588759364502.a n = (A055803 (n + 3) : ℚ)

end A055803

/-! ## A055803.P2289295031290166696

`A055804(n+4)-A000332(A004526(n)+1)`
-/

namespace A055803.P2289295031290166696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055804 (n + 4) - A000332 (A004526 n + 1).toNat

end

end A055803.P2289295031290166696

namespace A055803

/-- `A055804(n+4)-A000332(A004526(n)+1)` -/
def P2289295031290166696.Spec : Prop :=
  ∀ n, P2289295031290166696.a n = A055803 (n + 3)

end A055803

/-! ## A055803.P5583091907189406067

`A000125(A065033(n))-A065033(A093178(n))`
-/

namespace A055803.P5583091907189406067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A065033 n).toNat - A065033 (A093178 n).toNat

end

end A055803.P5583091907189406067

namespace A055803

/-- `A000125(A065033(n))-A065033(A093178(n))` -/
def P5583091907189406067.Spec : Prop :=
  ∀ n, P5583091907189406067.a n = A055803 (n + 3)

end A055803

/-! ## A055803.P6089420260336033319

`A000125(A065033(n))-A065033(A133265(n))`
-/

namespace A055803.P6089420260336033319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A065033 n).toNat - A065033 (A133265 n).toNat

end

end A055803.P6089420260336033319

namespace A055803

/-- `A000125(A065033(n))-A065033(A133265(n))` -/
def P6089420260336033319.Spec : Prop :=
  ∀ n, P6089420260336033319.a n = A055803 (n + 3)

end A055803

/-! ## A055803.P9786071846240923500

`A000125(A065033(n))-A057979(n+2)`
-/

namespace A055803.P9786071846240923500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A065033 n).toNat - A057979 (n + 2)

end

end A055803.P9786071846240923500

namespace A055803

/-- `A000125(A065033(n))-A057979(n+2)` -/
def P9786071846240923500.Spec : Prop :=
  ∀ n, P9786071846240923500.a n = A055803 (n + 3)

end A055803

/-! ## A055803.P1003588680427647962

`A079487(A167614(n+1))-A004526(n)`
-/

namespace A055803.P1003588680427647962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A167614 (n + 1)).toNat - A004526 n

end

end A055803.P1003588680427647962

namespace A055803

/-- `A079487(A167614(n+1))-A004526(n)` -/
def P1003588680427647962.Spec : Prop :=
  ∀ n, P1003588680427647962.a n = A055803 (n + 3)

end A055803

/-! ## A055803.P8333951320624402290

`A055801(∑[n+3]+n+3)`
-/

namespace A055803.P8333951320624402290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A055803.P8333951320624402290

namespace A055803

/-- `A055801(∑[n+3]+n+3)` -/
def P8333951320624402290.Spec : Prop :=
  ∀ n, P8333951320624402290.a n = A055803 (n + 3)

end A055803

/-! ## A055803.P2031404047658688666

`A208245(∑[n+2]+5)`
-/

namespace A055803.P2031404047658688666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A055803.P2031404047658688666

namespace A055803

/-- `A208245(∑[n+2]+5)` -/
def P2031404047658688666.Spec : Prop :=
  ∀ n, P2031404047658688666.a n = A055803 (n + 3)

end A055803

/-!
# A055804: a(n) = T(n,n-4), array T as in A055801.

The programs for A055804, the canonical program `A055804.P6044844288458468299` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055804 has offset 4).

The definition of A055804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055804.P6044844288458468299

`A175686(n-2)+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055804

/-- `A175686(n-2)+a(n-1)` -/
def P6044844288458468299.Spec : Prop :=
  ∀ n, P6044844288458468299.a n = A055804 (n + 4)

theorem P6044844288458468299.correct : P6044844288458468299.Spec := by
  intro n
  simp only [A055804, Nat.add_sub_cancel]

end A055804

/-! ## A055804.P13521016837023353220

`A055803(n+3)+A000332(A008619(n))`
-/

namespace A055804.P13521016837023353220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055803 (n + 3) + A000332 (A008619 n).toNat

end

end A055804.P13521016837023353220

namespace A055804

/-- `A055803(n+3)+A000332(A008619(n))` -/
def P13521016837023353220.Spec : Prop :=
  ∀ n, P13521016837023353220.a n = A055804 (n + 4)

end A055804

/-! ## A055804.P10423266076363364327

`A055803(n+3)+A000332(A004526(n)+1)`
-/

namespace A055804.P10423266076363364327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055803 (n + 3) + A000332 (A004526 n + 1).toNat

end

end A055804.P10423266076363364327

namespace A055804

/-- `A055803(n+3)+A000332(A004526(n)+1)` -/
def P10423266076363364327.Spec : Prop :=
  ∀ n, P10423266076363364327.a n = A055804 (n + 4)

end A055804

/-! ## A055804.P1697321458373205744

`A055803(n+3)+A000332(A123108(n)+1)`
-/

namespace A055804.P1697321458373205744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055803 (n + 3) + A000332 (A123108 n + 1).toNat

end

end A055804.P1697321458373205744

namespace A055804

/-- `A055803(n+3)+A000332(A123108(n)+1)` -/
def P1697321458373205744.Spec : Prop :=
  ∀ n, P1697321458373205744.a n = A055804 (n + 4)

end A055804

/-! ## A055804.P13209884260569384285

`∑[A055800(A052905(n-char[2]))]`
-/

namespace A055804.P13209884260569384285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055800 (A052905 (n - (if ∃ j, f2 j = n then 1 else 0))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055804.P13209884260569384285

namespace A055804

/-- `∑[A055800(A052905(n-char[2]))]` -/
def P13209884260569384285.Spec : Prop :=
  ∀ n, P13209884260569384285.a n = A055804 (n + 4)

end A055804

/-! ## A055804.P2306038767072412754

`A055801(∑[n+5]+5)`
-/

namespace A055804.P2306038767072412754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A055804.P2306038767072412754

namespace A055804

/-- `A055801(∑[n+5]+5)` -/
def P2306038767072412754.Spec : Prop :=
  ∀ n, P2306038767072412754.a n = A055804 (n + 4)

end A055804

/-! ## A055804.P13592870737393978767

`A208245(A052905(n)+10)`
-/

namespace A055804.P13592870737393978767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A052905 n + 10).toNat

end

end A055804.P13592870737393978767

namespace A055804

/-- `A208245(A052905(n)+10)` -/
def P13592870737393978767.Spec : Prop :=
  ∀ n, P13592870737393978767.a n = A055804 (n + 4)

end A055804

/-! ## A055804.P7011341609741955568

`A208245(A055999(n)+11)`
-/

namespace A055804.P7011341609741955568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A055999 n + 11).toNat

end

end A055804.P7011341609741955568

namespace A055804

/-- `A208245(A055999(n)+11)` -/
def P7011341609741955568.Spec : Prop :=
  ∀ n, P7011341609741955568.a n = A055804 (n + 4)

end A055804

/-!
# A055805: a(n) = T(n,n-5), array T as in A055801.

The programs for A055805, there is no canonical definition to state claims against.
-/

/-! ## A055805.P2267345853638179021

`A055801(A055999(n+3))`
-/

namespace A055805.P2267345853638179021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A055999 (n + 3)).toNat

end

end A055805.P2267345853638179021

/-! ## A055805.P11763381640177832467

`A055801(Δ[A023551(n+1)])`
-/

namespace A055805.P11763381640177832467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (f1 (n + 1) - f1 n).toNat

end

end A055805.P11763381640177832467

/-! ## A055805.P1157215433400419970

`A055801(A052905(n+3)-1)`
-/

namespace A055805.P1157215433400419970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A052905 (n + 3) - 1).toNat

end

end A055805.P1157215433400419970

/-! ## A055805.P13999840587140080720

`A055801(A046691(n+4)-2)`
-/

namespace A055805.P13999840587140080720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A046691 (n + 4) - 2).toNat

end

end A055805.P13999840587140080720

/-! ## A055805.P14491058944500826200

`A055801(A000096(n+5)-5)`
-/

namespace A055805.P14491058944500826200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A000096 (n + 5) - 5).toNat

end

end A055805.P14491058944500826200

/-! ## A055805.P6546743924483168497

`A055801(A000217(n+6)-6)`
-/

namespace A055805.P6546743924483168497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A000217 (n + 6) - 6).toNat

end

end A055805.P6546743924483168497

/-! ## A055805.P10142148073638056325

`A055801(A034856(n+4)+n+2)`
-/

namespace A055805.P10142148073638056325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A034856 (n + 4) + (n + 2 : ℤ)).toNat

end

end A055805.P10142148073638056325

/-! ## A055805.P8721739225509596265

`A055801(A055998(n+3)+n+3)`
-/

namespace A055805.P8721739225509596265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A055998 (n + 3) + (n + 3 : ℤ)).toNat

end

end A055805.P8721739225509596265

/-! ## A055805.P240786155102207605

`A208245(A155212(n)+14)`
-/

namespace A055805.P240786155102207605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A155212 n + 14).toNat

end

end A055805.P240786155102207605

/-! ## A055805.P11421450665186832750

`A208245(A056000(n)+16)`
-/

namespace A055805.P11421450665186832750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A056000 n + 16).toNat

end

end A055805.P11421450665186832750

/-!
# A055806: a(n) = T(n,n-6), array T as in A055801.

The programs for A055806, there is no canonical definition to state claims against.
-/

/-! ## A055806.P8451568927073657172

`A055801(A055999(n+4)-1)`
-/

namespace A055806.P8451568927073657172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A055999 (n + 4) - 1).toNat

end

end A055806.P8451568927073657172

/-! ## A055806.P15140616515653124349

`A055801(A052905(n+4)-2)`
-/

namespace A055806.P15140616515653124349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A052905 (n + 4) - 2).toNat

end

end A055806.P15140616515653124349

/-! ## A055806.P11595557230000337138

`A055801(A027379(n+5)-4)`
-/

namespace A055806.P11595557230000337138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A027379 (n + 5) - 4).toNat

end

end A055806.P11595557230000337138

/-! ## A055806.P14878385437968784377

`A055801(A055998(n+5)-4)`
-/

namespace A055806.P14878385437968784377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A055998 (n + 5) - 4).toNat

end

end A055806.P14878385437968784377

/-! ## A055806.P5304659577635396123

`A055801(A034856(n+6)-5)`
-/

namespace A055806.P5304659577635396123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A034856 (n + 6) - 5).toNat

end

end A055806.P5304659577635396123

/-! ## A055806.P10191322627041593473

`A055801(A000096(n+6)-6)`
-/

namespace A055806.P10191322627041593473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A000096 (n + 6) - 6).toNat

end

end A055806.P10191322627041593473

/-! ## A055806.P9230752605102406661

`A055801(A000217(n+7)-7)`
-/

namespace A055806.P9230752605102406661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A000217 (n + 7) - 7).toNat

end

end A055806.P9230752605102406661

/-! ## A055806.P17893947303142417089

`A055801(A000124(n+7)-8)`
-/

namespace A055806.P17893947303142417089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A000124 (n + 7) - 8).toNat

end

end A055806.P17893947303142417089

/-! ## A055806.P10847926875574827385

`A055801(Δ[A023551(n+2)]-1)`
-/

namespace A055806.P10847926875574827385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (f1 (n + 1) - f1 n - 1).toNat

end

end A055806.P10847926875574827385

/-! ## A055806.P545966262289637055

`A208245(A000217(n+5)+7)`
-/

namespace A055806.P545966262289637055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A000217 (n + 5) + 7).toNat

end

end A055806.P545966262289637055

/-!
# A055807: Triangle T read by rows: T(i,j) = R(i-j,j), where R(i,0) = 1 for i >= 0, R(0,j) = 0 for j >= 1, and R(i,j) = Sum_{h=0..i-1, k=0..j} R(h,k) for i >= 1 and j >= 1.

The programs for A055807, there is no canonical definition to state claims against.
-/

/-! ## A055807.P1963424001596650241

`A055818(n)-A062110(A028310(n))`
-/

namespace A055807.P1963424001596650241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 n - A062110 (A028310 n).toNat

end

end A055807.P1963424001596650241

/-! ## A055807.P17613693243734159287

`A050143(gcd(A038722(n+1), A198954(n)))`
-/

namespace A055807.P17613693243734159287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050143 (Int.gcd (A038722 (n + 1)) (A198954 n))

end

end A055807.P17613693243734159287

/-! ## A055807.P13253045759636863416

`A050143(A038722(n+1))`
-/

namespace A055807.P13253045759636863416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050143 (A038722 (n + 1)).toNat

end

end A055807.P13253045759636863416

/-! ## A055807.P7674801516110424179

`A050143(A061579(n)+1)`
-/

namespace A055807.P7674801516110424179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050143 (A061579 n + 1).toNat

end

end A055807.P7674801516110424179

/-! ## A055807.P13124202214526860873

`A050143(∑[A010054(n)]²-n)`
-/

namespace A055807.P13124202214526860873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050143 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat

end

end A055807.P13124202214526860873

/-! ## A055807.P8899471895883786014

`A055818(n)-A062110(n)%A000711(n)`
-/

namespace A055807.P8899471895883786014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 n - Int.tmod (A062110 n) (A000711 n)

end

end A055807.P8899471895883786014

/-!
# A055808: a(n) and floor(a(n)/4) are both squares; i.e., squares that remain squares when written in base 4 and last digit is removed.

The programs for A055808, the canonical program `A055808.P13325420301427280520` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055808 has offset 0).

The definition of A055808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055808.P13325420301427280520

`floor(2*n²/(1+n))²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055808

/-- `floor(2*n²/(1+n))²` -/
def P13325420301427280520.Spec : Prop :=
  ∀ n, P13325420301427280520.a n = A055808 n

theorem P13325420301427280520.correct : P13325420301427280520.Spec := by
  intro n
  simp only [A055808]

end A055808

/-! ## A055808.P14479567839855120893

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=16, a(4)=36`
-/

namespace A055808.P14479567839855120893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 16, 36] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A055808.P14479567839855120893

namespace A055808

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P14479567839855120893.Spec : Prop :=
  ∀ n, P14479567839855120893.a n = A055808 n

end A055808

/-! ## A055808.P9179026206440071079

`record[n^gcd(2, n)]`
-/

namespace A055808.P9179026206440071079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055808.P9179026206440071079

namespace A055808

/-- `record[n^gcd(2, n)]` -/
def P9179026206440071079.Spec : Prop :=
  ∀ n, (P9179026206440071079.a n : ℤ) = A055808 n

end A055808

/-! ## A055808.P14766803282330682763

`record[xor(1, 1-n)²]`
-/

namespace A055808.P14766803282330682763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055808.P14766803282330682763

namespace A055808

/-- `record[xor(1, 1-n)²]` -/
def P14766803282330682763.Spec : Prop :=
  ∀ n, P14766803282330682763.a n = A055808 n

end A055808

/-! ## A055808.P17328499540639313247

`record[n²^(-1)^n]`
-/

namespace A055808.P17328499540639313247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055808.P17328499540639313247

namespace A055808

/-- `record[n²^(-1)^n]` -/
def P17328499540639313247.Spec : Prop :=
  ∀ n, P17328499540639313247.a n = (A055808 n : ℚ)

end A055808

/-! ## A055808.P7413604936515673895

`comp[lcm(2, n)+3]^2`
-/

namespace A055808.P7413604936515673895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A055808.P7413604936515673895

namespace A055808

/-- `comp[lcm(2, n)+3]^2` -/
def P7413604936515673895.Spec : Prop :=
  ∀ n, (P7413604936515673895.a n : ℤ) = A055808 n

end A055808

/-! ## A055808.P4888864413461579708

`∩[ceil((2*n/3)²), n²]`
-/

namespace A055808.P4888864413461579708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 3) ^ 2⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A055808.P4888864413461579708

namespace A055808

/-- `∩[ceil((2*n/3)²), n²]` -/
def P4888864413461579708.Spec : Prop :=
  ∀ n, (P4888864413461579708.a n : ℤ) = A055808 n

end A055808

/-! ## A055808.P7785139820055967515

`xor((2*(1-n))², C(4, n+3))`
-/

namespace A055808.P7785139820055967515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * (1 - (n : ℤ))) ^ 2) (Nat.choose 4 (n + 3) : ℤ)

end

end A055808.P7785139820055967515

namespace A055808

/-- `xor((2*(1-n))², C(4, n+3))` -/
def P7785139820055967515.Spec : Prop :=
  ∀ n, P7785139820055967515.a n = A055808 n

end A055808

/-! ## A055808.P14766155495254097122

`record[((n-2)*2*n)²]/(n+1)²`
-/

namespace A055808.P14766155495254097122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * (2 * n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A055808.P14766155495254097122

namespace A055808

/-- `record[((n-2)*2*n)²]/(n+1)²` -/
def P14766155495254097122.Spec : Prop :=
  ∀ n, P14766155495254097122.a n = (A055808 n : ℚ)

end A055808

/-! ## A055808.P18245793165589848183

`∪[(1-A000040(n+1))², (2*n)²]`
-/

namespace A055808.P18245793165589848183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000040 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A055808.P18245793165589848183

namespace A055808

/-- `∪[(1-A000040(n+1))², (2*n)²]` -/
def P18245793165589848183.Spec : Prop :=
  ∀ n, (P18245793165589848183.a n : ℤ) = A055808 n

end A055808

/-! ## A055808.P16846563564238101735

`A004275(n)*A004275(n)`
-/

namespace A055808.P16846563564238101735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n * A004275 n

end

end A055808.P16846563564238101735

namespace A055808

/-- `A004275(n)*A004275(n)` -/
def P16846563564238101735.Spec : Prop :=
  ∀ n, P16846563564238101735.a n = A055808 n

end A055808

/-! ## A055808.P3044169376336522141

`∪[A051470(n+1), A016742(n)]`
-/

namespace A055808.P3044169376336522141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055808.P3044169376336522141

namespace A055808

/-- `∪[A051470(n+1), A016742(n)]` -/
def P3044169376336522141.Spec : Prop :=
  ∀ n, (P3044169376336522141.a n : ℤ) = A055808 n

end A055808

/-! ## A055808.P8448042155875532008

`∪[A166721(n+1), A016742(n)]`
-/

namespace A055808.P8448042155875532008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055808.P8448042155875532008

namespace A055808

/-- `∪[A166721(n+1), A016742(n)]` -/
def P8448042155875532008.Spec : Prop :=
  ∀ n, (P8448042155875532008.a n : ℤ) = A055808 n

end A055808

/-! ## A055808.P4570749506451991299

`A378212(2*n+1)*A378212(2*n+1)`
-/

namespace A055808.P4570749506451991299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378212 (2 * n + 1) * A378212 (2 * n + 1)

end

end A055808.P4570749506451991299

namespace A055808

/-- `A378212(2*n+1)*A378212(2*n+1)` -/
def P4570749506451991299.Spec : Prop :=
  ∀ n, P4570749506451991299.a n = A055808 n

end A055808

/-! ## A055808.P2097626016051125832

`A000290(comp[2*n+3])`
-/

namespace A055808.P2097626016051125832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A055808.P2097626016051125832

namespace A055808

/-- `A000290(comp[2*n+3])` -/
def P2097626016051125832.Spec : Prop :=
  ∀ n, P2097626016051125832.a n = A055808 n

end A055808

/-! ## A055808.P18023543510612780963

`A174595(A004274(n+1))`
-/

namespace A055808.P18023543510612780963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174595 (A004274 (n + 1)).toNat

end

end A055808.P18023543510612780963

namespace A055808

/-- `A174595(A004274(n+1))` -/
def P18023543510612780963.Spec : Prop :=
  ∀ n, P18023543510612780963.a n = A055808 n

end A055808

/-! ## A055808.P2174092316535263260

`A174595(A004280(n+1))`
-/

namespace A055808.P2174092316535263260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174595 (A004280 (n + 1)).toNat

end

end A055808.P2174092316535263260

namespace A055808

/-- `A174595(A004280(n+1))` -/
def P2174092316535263260.Spec : Prop :=
  ∀ n, P2174092316535263260.a n = A055808 n

end A055808

/-! ## A055808.P11319093179942145416

`A002620(A004275(n)+A004275(n))`
-/

namespace A055808.P11319093179942145416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004275 n + A004275 n).toNat

end

end A055808.P11319093179942145416

namespace A055808

/-- `A002620(A004275(n)+A004275(n))` -/
def P11319093179942145416.Spec : Prop :=
  ∀ n, P11319093179942145416.a n = A055808 n

end A055808

/-! ## A055808.P7989524426457949434

`A008794(A113127(n)-1)`
-/

namespace A055808.P7989524426457949434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A113127 n - 1).toNat

end

end A055808.P7989524426457949434

namespace A055808

/-- `A008794(A113127(n)-1)` -/
def P7989524426457949434.Spec : Prop :=
  ∀ n, P7989524426457949434.a n = A055808 n

end A055808

/-! ## A055808.P16442266811669759487

`A174679(A139544(n+2))`
-/

namespace A055808.P16442266811669759487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174679 (A139544 (n + 2)).toNat

end

end A055808.P16442266811669759487

namespace A055808

/-- `A174679(A139544(n+2))` -/
def P16442266811669759487.Spec : Prop :=
  ∀ n, P16442266811669759487.a n = A055808 n

end A055808

/-!
# A055809: a(n) = T(n,n-4), array T as in A055807.

The programs for A055809, the canonical program `A055809.P12051760453213614527` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055809 has offset 4).

The definition of A055809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055809.P4653344468819383154

`A264443(n)+A123932(n)`
-/

namespace A055809.P4653344468819383154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + A123932 n

end

end A055809.P4653344468819383154

namespace A055809

/-- `A264443(n)+A123932(n)` -/
def P4653344468819383154.Spec : Prop :=
  ∀ n, P4653344468819383154.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P12051760453213614527

`A264443(n)+(2-A000007(n))²`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055809

/-- `A264443(n)+(2-A000007(n))²` -/
def P12051760453213614527.Spec : Prop :=
  ∀ n, P12051760453213614527.a n = A055809 (n + 4)

theorem P12051760453213614527.correct : P12051760453213614527.Spec := by
  intro n
  simp only [A055809, Nat.add_sub_cancel]

end A055809

/-! ## A055809.P7637637524472182285

`A023545(n+1)/A054977(n)-2`
-/

namespace A055809.P7637637524472182285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023545 (n + 1) : ℚ) / (A054977 n : ℚ) - 2

end

end A055809.P7637637524472182285

namespace A055809

/-- `A023545(n+1)/A054977(n)-2` -/
def P7637637524472182285.Spec : Prop :=
  ∀ n, P7637637524472182285.a n = (A055809 (n + 4) : ℚ)

end A055809

/-! ## A055809.P7615399110192533732

`A264443(n)+4%A033163(n+1)`
-/

namespace A055809.P7615399110192533732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + Int.tmod 4 (A033163 (n + 1))

end

end A055809.P7615399110192533732

namespace A055809

/-- `A264443(n)+4%A033163(n+1)` -/
def P7615399110192533732.Spec : Prop :=
  ∀ n, P7615399110192533732.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P17060953867148868924

`A264443(n)+gcd(2, A000010(n+2))²`
-/

namespace A055809.P17060953867148868924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + (Int.gcd 2 (A000010 (n + 2)) ^ 2 : ℤ)

end

end A055809.P17060953867148868924

namespace A055809

/-- `A264443(n)+gcd(2, A000010(n+2))²` -/
def P17060953867148868924.Spec : Prop :=
  ∀ n, P17060953867148868924.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P11395625497733743918

`A023545(n+1)-A040024(A003817(n))`
-/

namespace A055809.P11395625497733743918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - A040024 (A003817 n).toNat

end

end A055809.P11395625497733743918

namespace A055809

/-- `A023545(n+1)-A040024(A003817(n))` -/
def P11395625497733743918.Spec : Prop :=
  ∀ n, P11395625497733743918.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P5435250273327636997

`A264443(n)+A008574(n/A028310(n))`
-/

namespace A055809.P5435250273327636997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + A008574 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat

end

end A055809.P5435250273327636997

namespace A055809

/-- `A264443(n)+A008574(n/A028310(n))` -/
def P5435250273327636997.Spec : Prop :=
  ∀ n, P5435250273327636997.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P16553470801142138479

`A023545(n+1)-A020639(A001043(n+1))`
-/

namespace A055809.P16553470801142138479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - A020639 (A001043 (n + 1)).toNat

end

end A055809.P16553470801142138479

namespace A055809

/-- `A023545(n+1)-A020639(A001043(n+1))` -/
def P16553470801142138479.Spec : Prop :=
  ∀ n, P16553470801142138479.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P16847739537979035593

`A264443(n)+A020639(A000118(n))²`
-/

namespace A055809.P16847739537979035593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + A020639 (A000118 n).toNat ^ 2

end

end A055809.P16847739537979035593

namespace A055809

/-- `A264443(n)+A020639(A000118(n))²` -/
def P16847739537979035593.Spec : Prop :=
  ∀ n, P16847739537979035593.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P16586311188391688974

`A023545(n+1)-A078311(A000040(n+1))`
-/

namespace A055809.P16586311188391688974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - A078311 (A000040 (n + 1)).toNat

end

end A055809.P16586311188391688974

namespace A055809

/-- `A023545(n+1)-A078311(A000040(n+1))` -/
def P16586311188391688974.Spec : Prop :=
  ∀ n, P16586311188391688974.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P14173262968375573304

`A023545(n+1)-A020639(A069482(n+1))`
-/

namespace A055809.P14173262968375573304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - A020639 (A069482 (n + 1)).toNat

end

end A055809.P14173262968375573304

namespace A055809

/-- `A023545(n+1)-A020639(A069482(n+1))` -/
def P14173262968375573304.Spec : Prop :=
  ∀ n, P14173262968375573304.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P4451810510221082237

`A059481(A167614(n+1))+A028347(n+2)`
-/

namespace A055809.P4451810510221082237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A167614 (n + 1)).toNat + A028347 (n + 2)

end

end A055809.P4451810510221082237

namespace A055809

/-- `A059481(A167614(n+1))+A028347(n+2)` -/
def P4451810510221082237.Spec : Prop :=
  ∀ n, P4451810510221082237.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P14877087434888411363

`A210038(∑[n+3])`
-/

namespace A055809.P14877087434888411363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210038 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055809.P14877087434888411363

namespace A055809

/-- `A210038(∑[n+3])` -/
def P14877087434888411363.Spec : Prop :=
  ∀ n, P14877087434888411363.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P16216098964417546121

`A135856(∑[n+3])+2*n`
-/

namespace A055809.P16216098964417546121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135856 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n : ℤ)

end

end A055809.P16216098964417546121

namespace A055809

/-- `A135856(∑[n+3])+2*n` -/
def P16216098964417546121.Spec : Prop :=
  ∀ n, P16216098964417546121.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P18052106307407595577

`record[A055807(A055999(n)+1)]`
-/

namespace A055809.P18052106307407595577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055809.P18052106307407595577

namespace A055809

/-- `record[A055807(A055999(n)+1)]` -/
def P18052106307407595577.Spec : Prop :=
  ∀ n, P18052106307407595577.a n = A055809 (n + 4)

end A055809

/-! ## A055809.P7080150751944198268

`record[A055807(A027379(n+1)-2)]`
-/

namespace A055809.P7080150751944198268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055809.P7080150751944198268

namespace A055809

/-- `record[A055807(A027379(n+1)-2)]` -/
def P7080150751944198268.Spec : Prop :=
  ∀ n, P7080150751944198268.a n = A055809 (n + 4)

end A055809

/-!
# A055810: a(n) = T(n,n-5), array T as in A055807.

The programs for A055810, the canonical program `A055810.P3913804122985795468` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055810 has offset 5).

The definition of A055810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055810.P3913804122985795468

`A006416(n+2)+A055821(n+4)*A057427(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055810

/-- `A006416(n+2)+A055821(n+4)*A057427(n)` -/
def P3913804122985795468.Spec : Prop :=
  ∀ n, P3913804122985795468.a n = A055810 (n + 5)

theorem P3913804122985795468.correct : P3913804122985795468.Spec := by
  intro n
  simp only [A055810, Nat.add_sub_cancel]

end A055810

/-! ## A055810.P6926856874291708232

`A055809(n+4)+A055811(n+6)-A055822(n+5)`
-/

namespace A055810.P6926856874291708232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055809 (n + 4) + (A055811 (n + 6) - A055822 (n + 5))

end

end A055810.P6926856874291708232

namespace A055810

/-- `A055809(n+4)+A055811(n+6)-A055822(n+5)` -/
def P6926856874291708232.Spec : Prop :=
  ∀ n, P6926856874291708232.a n = A055810 (n + 5)

end A055810

/-! ## A055810.P5927380222107024299

`A210038(∑[n+3]+n+3)`
-/

namespace A055810.P5927380222107024299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210038 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A055810.P5927380222107024299

namespace A055810

/-- `A210038(∑[n+3]+n+3)` -/
def P5927380222107024299.Spec : Prop :=
  ∀ n, P5927380222107024299.a n = A055810 (n + 5)

end A055810

/-! ## A055810.P5546714498106183684

`record[A055807(A055999(n))]`
-/

namespace A055810.P5546714498106183684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055810.P5546714498106183684

namespace A055810

/-- `record[A055807(A055999(n))]` -/
def P5546714498106183684.Spec : Prop :=
  ∀ n, P5546714498106183684.a n = A055810 (n + 5)

end A055810

/-! ## A055810.P8229366975168565131

`A055807(A055999(n+3))`
-/

namespace A055810.P8229366975168565131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A055999 (n + 3)).toNat

end

end A055810.P8229366975168565131

namespace A055810

/-- `A055807(A055999(n+3))` -/
def P8229366975168565131.Spec : Prop :=
  ∀ n, P8229366975168565131.a n = A055810 (n + 5)

end A055810

/-! ## A055810.P7083547678650229248

`record[A055807(A155212(n)+2)]`
-/

namespace A055810.P7083547678650229248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A155212 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055810.P7083547678650229248

namespace A055810

/-- `record[A055807(A155212(n)+2)]` -/
def P7083547678650229248.Spec : Prop :=
  ∀ n, P7083547678650229248.a n = A055810 (n + 5)

end A055810

/-! ## A055810.P2676516994488747540

`record[A055807(A027379(n)+n)]`
-/

namespace A055810.P2676516994488747540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055810.P2676516994488747540

namespace A055810

/-- `record[A055807(A027379(n)+n)]` -/
def P2676516994488747540.Spec : Prop :=
  ∀ n, P2676516994488747540.a n = A055810 (n + 5)

end A055810

/-! ## A055810.P13536651794564957102

`A055807(Δ[A055809(n+5)]-2)`
-/

namespace A055810.P13536651794564957102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055809 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (f1 (n + 1) - f1 n - 2).toNat

end

end A055810.P13536651794564957102

namespace A055810

/-- `A055807(Δ[A055809(n+5)]-2)` -/
def P13536651794564957102.Spec : Prop :=
  ∀ n, P13536651794564957102.a n = A055810 (n + 5)

end A055810

/-!
# A055811: a(n) = T(n,n-6), array T as in A055807.

The programs for A055811, there is no canonical definition to state claims against.
-/

/-! ## A055811.P6128080056446916889

`A055810(n+5)+A055822(n+5)-A055809(n+4)`
-/

namespace A055811.P6128080056446916889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055810 (n + 5) + (A055822 (n + 5) - A055809 (n + 4))

end

end A055811.P6128080056446916889

/-! ## A055811.P12582545833360443105

`record[A055807(A155212(n)+1)]`
-/

namespace A055811.P12582545833360443105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A155212 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055811.P12582545833360443105

/-! ## A055811.P7693848586329185042

`A055807(A000217(n+7)-7)`
-/

namespace A055811.P7693848586329185042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A000217 (n + 7) - 7).toNat

end

end A055811.P7693848586329185042

/-! ## A055811.P8018612072452973884

`record[A055807(A055999(n+1)-1)]`
-/

namespace A055811.P8018612072452973884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A055999 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055811.P8018612072452973884

/-! ## A055811.P3246984674742329683

`record[A055807(A027379(n+2)-4)]`
-/

namespace A055811.P3246984674742329683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A027379 (n + 2) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055811.P3246984674742329683

/-! ## A055811.P4464983737013347422

`A055807(A005408(n+2)+A000124(n+5))`
-/

namespace A055811.P4464983737013347422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A005408 (n + 2) + A000124 (n + 5)).toNat

end

end A055811.P4464983737013347422

/-! ## A055811.P6559605951588723888

`A055807(A167499(n)+A008486(2*n+5))`
-/

namespace A055811.P6559605951588723888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A167499 n + A008486 (2 * n + 5)).toNat

end

end A055811.P6559605951588723888

/-!
# A055812: a(n) and floor(a(n)/5) are both squares; i.e., squares which remain squares when written in base 5 and last digit is removed.

The programs for A055812, there is no canonical definition to state claims against.
-/

/-! ## A055812.P39669775750771142

`A204520(n+1)²`
-/

namespace A055812.P39669775750771142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204520 (n + 1) ^ 2

end

end A055812.P39669775750771142

/-! ## A055812.P2434240872308128410

`A204520(-xor(n, -1))^2`
-/

namespace A055812.P2434240872308128410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204520 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

end

end A055812.P2434240872308128410

/-! ## A055812.P4388854511212971063

`record[A204520(A133310(n))²]`
-/

namespace A055812.P4388854511212971063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204520 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055812.P4388854511212971063

/-! ## A055812.P12260167772482964004

`record[A204520(A286378(n))²]`
-/

namespace A055812.P12260167772482964004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204520 (A286378 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055812.P12260167772482964004

/-! ## A055812.P12098856530059399778

`record[A204520(A286543(n))²]`
-/

namespace A055812.P12098856530059399778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204520 (A286543 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055812.P12098856530059399778

/-!
# A055813: Primes arising in A064205.

The programs for A055813, there is no canonical definition to state claims against.
-/

/-! ## A055813.P17996208018818216958

`p?[∑{d}[ceil((n+1)²/2), #+1]]`
-/

namespace A055813.P17996208018818216958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / 2⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A055813.P17996208018818216958

/-! ## A055813.P8523403881267231157

`∑{d}[A064205(n+1), #+1]`
-/

namespace A055813.P8523403881267231157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d + 1)

end

end A055813.P8523403881267231157

/-! ## A055813.P6095327677900079197

`∑{d}[floor(A272060(n+1)/2), #+1]`
-/

namespace A055813.P6095327677900079197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A272060 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d + 1)

end

end A055813.P6095327677900079197

/-! ## A055813.P6320531862856774110

`p?[A086293(n+1)+A086292(n+1)]`
-/

namespace A055813.P6320531862856774110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086293 (n + 1) + A086292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055813.P6320531862856774110

/-! ## A055813.P261121523841670743

`∑{d}[(A272060(n+1)-ceil(A257023(3*n+2)/6))/2, #+1]`
-/

namespace A055813.P261121523841670743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272060 (n + 1) - ⌈(A257023 (3 * n + 2) : ℚ) / 6⌉ : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, (d + 1)

end

end A055813.P261121523841670743

/-!
# A055814: Expansion of e.g.f.: exp(x^3/3 + x^2/2).

The programs for A055814, the canonical program `A055814.P9471605740663001905` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055814 has offset 0).

The definition of A055814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055814.P9471605740663001905

`(n-1)*a(n-2)+(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055814

/-- `(n-1)*a(n-2)+(n-1)*(n-2)*a(n-3)` -/
def P9471605740663001905.Spec : Prop :=
  ∀ n, P9471605740663001905.a n = A055814 n

theorem P9471605740663001905.correct : P9471605740663001905.Spec := by
  intro n
  simp only [A055814]

end A055814

/-! ## A055814.P4095591249185226918

`A211880(n)+A123023(n)`
-/

namespace A055814.P4095591249185226918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211880 n + A123023 n

end

end A055814.P4095591249185226918

namespace A055814

/-- `A211880(n)+A123023(n)` -/
def P4095591249185226918.Spec : Prop :=
  ∀ n, P4095591249185226918.a n = A055814 n

end A055814

/-! ## A055814.P4003301040184848469

`A211880(n)+A144299(A092530(n))`
-/

namespace A055814.P4003301040184848469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211880 n + A144299 (A092530 n).toNat

end

end A055814.P4003301040184848469

namespace A055814

/-- `A211880(n)+A144299(A092530(n))` -/
def P4003301040184848469.Spec : Prop :=
  ∀ n, P4003301040184848469.a n = A055814 n

end A055814

/-! ## A055814.P14911443745504334983

`A211880(n)+A144331(A135276(n))`
-/

namespace A055814.P14911443745504334983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211880 n + A144331 (A135276 n).toNat

end

end A055814.P14911443745504334983

namespace A055814

/-- `A211880(n)+A144331(A135276(n))` -/
def P14911443745504334983.Spec : Prop :=
  ∀ n, P14911443745504334983.a n = A055814 n

end A055814

/-! ## A055814.P3440115404085724780

`A211880(n)+A144331(A024206(n+1))`
-/

namespace A055814.P3440115404085724780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211880 n + A144331 (A024206 (n + 1)).toNat

end

end A055814.P3440115404085724780

namespace A055814

/-- `A211880(n)+A144331(A024206(n+1))` -/
def P3440115404085724780.Spec : Prop :=
  ∀ n, P3440115404085724780.a n = A055814 n

end A055814

/-! ## A055814.P12769776237897152753

`A211880(n)+A059841(n)*A133221(n)`
-/

namespace A055814.P12769776237897152753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211880 n + A059841 n * A133221 n

end

end A055814.P12769776237897152753

namespace A055814

/-- `A211880(n)+A059841(n)*A133221(n)` -/
def P12769776237897152753.Spec : Prop :=
  ∀ n, P12769776237897152753.a n = A055814 n

end A055814

/-!
# A055816: a(n) = T(2*n+4,n), array T as in A055807.

The programs for A055816, there is no canonical definition to state claims against.
-/

/-! ## A055816.P14889574882458302148

`A210038(A132209(n+1))`
-/

namespace A055816.P14889574882458302148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210038 (A132209 (n + 1)).toNat

end

end A055816.P14889574882458302148

/-! ## A055816.P12291181596069442901

`A210038(A142463(n+1))`
-/

namespace A055816.P12291181596069442901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210038 (A142463 (n + 1)).toNat

end

end A055816.P12291181596069442901

/-! ## A055816.P1100164712859469311

`A055807(∑[record[lcm(2, n)+10]])`
-/

namespace A055816.P1100164712859469311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055816.P1100164712859469311

/-! ## A055816.P2318836547015409413

`A055807(A090288(n+1))`
-/

namespace A055816.P2318836547015409413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A090288 (n + 1)).toNat

end

end A055816.P2318836547015409413

/-! ## A055816.P11893728086394249370

`A050143(A001844(n+2)+2)`
-/

namespace A055816.P11893728086394249370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050143 (A001844 (n + 2) + 2).toNat

end

end A055816.P11893728086394249370

/-! ## A055816.P18015630537736205981

`A055807(Δ[A037237(n)+n²])`
-/

namespace A055816.P18015630537736205981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037237 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (f1 (n + 1) - f1 n).toNat

end

end A055816.P18015630537736205981

/-! ## A055816.P17808847038777974107

`record[A055807(A111284(A000124(n)))]`
-/

namespace A055816.P17808847038777974107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A111284 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055816.P17808847038777974107

/-! ## A055816.P1720139024053379400

`record[A055807(A004396(A211441(n)))]`
-/

namespace A055816.P1720139024053379400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A004396 (A211441 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055816.P1720139024053379400

/-!
# A055817: a(n) = T(2n+5,n), array T as in A055807.

The programs for A055817, there is no canonical definition to state claims against.
-/

/-! ## A055817.P11300498318875930882

`A210038(2*(n+1)*(n+3))`
-/

namespace A055817.P11300498318875930882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210038 (2 * ((n + 1) * (n + 3)))

end

end A055817.P11300498318875930882

/-! ## A055817.P13371683668217431891

`A055807(A268581(n+1))`
-/

namespace A055817.P13371683668217431891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A268581 (n + 1)).toNat

end

end A055817.P13371683668217431891

/-! ## A055817.P8746139500394178303

`record[A055807(A004274(n²))]`
-/

namespace A055817.P8746139500394178303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A004274 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055817.P8746139500394178303

/-! ## A055817.P7847296982038626003

`A055807(A004280((n+3)²))`
-/

namespace A055817.P7847296982038626003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A004280 ((n + 3) ^ 2)).toNat

end

end A055817.P7847296982038626003

/-! ## A055817.P6587223008304389857

`record[A055807(A004273(A005563(n)))]`
-/

namespace A055817.P6587223008304389857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A004273 (A005563 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055817.P6587223008304389857

/-!
# A055818: Triangle T read by rows: T(i,j) = R(i-j,j), where R(i,0) = R(0,i) = 1 for i >= 0, R(i,j) = Sum_{h=0..i-1} Sum_{m=0..j} R(h,m) for i >= 1, j >= 1.

The programs for A055818, there is no canonical definition to state claims against.
-/

/-! ## A055818.P12445884770749292632

`A062110(A028310(n))+A055807(n)`
-/

namespace A055818.P12445884770749292632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A028310 n).toNat + A055807 n

end

end A055818.P12445884770749292632

/-! ## A055818.P8863847807855832038

`A062110(A000007(n)+n)+A055807(n)`
-/

namespace A055818.P8863847807855832038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A000007 n + (n : ℤ)).toNat + A055807 n

end

end A055818.P8863847807855832038

/-! ## A055818.P12493903775255440608

`A055807(n)+A062110(n)*A157928(n)`
-/

namespace A055818.P12493903775255440608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 n + A062110 n * A157928 n

end

end A055818.P12493903775255440608

/-! ## A055818.P1987806705422244785

`A062110(n)+A055807(n)%A000711(n)`
-/

namespace A055818.P1987806705422244785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 n + Int.tmod (A055807 n) (A000711 n)

end

end A055818.P1987806705422244785

/-! ## A055818.P17683720758043519311

`A055807(n)+A062110(n)%A058396(n)`
-/

namespace A055818.P17683720758043519311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 n + Int.tmod (A062110 n) (A058396 n)

end

end A055818.P17683720758043519311

/-!
# A055819: Row sums of array T in A055818; twice the odd-indexed Fibonacci numbers after initial term.

The programs for A055819, the canonical program `A055819.P12981652433304694164` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055819 has offset 0).

The definition of A055819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055819.P12981652433304694164

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055819

/-- `3*a(n-1)-a(n-2)` -/
def P12981652433304694164.Spec : Prop :=
  ∀ n, P12981652433304694164.a n = A055819 n

theorem P12981652433304694164.correct : P12981652433304694164.Spec := by
  intro n
  simp only [A055819]

end A055819

/-! ## A055819.P1917973950438279020

`floor(ϕ²*a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A055819.P1917973950438279020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋

end

end A055819.P1917973950438279020

namespace A055819

/-- `floor(ϕ²*a(n-1))` -/
def P1917973950438279020.Spec : Prop :=
  ∀ n, P1917973950438279020.a n = A055819 n

end A055819

/-! ## A055819.P1641219085470698675

`round(ϕ²*a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A055819.P1641219085470698675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))

end

end A055819.P1641219085470698675

namespace A055819

/-- `round(ϕ²*a(n-1))` -/
def P1641219085470698675.Spec : Prop :=
  ∀ n, P1641219085470698675.a n = A055819 n

end A055819

/-! ## A055819.P4454975682142885658

`round(a(n-1)/(2-ϕ))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A055819.P4454975682142885658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (2 - Real.goldenRatio))

end

end A055819.P4454975682142885658

namespace A055819

/-- `round(a(n-1)/(2-ϕ))` -/
def P4454975682142885658.Spec : Prop :=
  ∀ n, P4454975682142885658.a n = A055819 n

end A055819

/-! ## A055819.P15081956265517638265

`∑[ceil(a(n-1)/(2-ϕ))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A055819.P15081956265517638265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  ⌈(f1 (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055819.P15081956265517638265

namespace A055819

/-- `∑[ceil(a(n-1)/(2-ϕ))]` -/
def P15081956265517638265.Spec : Prop :=
  ∀ n, P15081956265517638265.a n = A055819 n

end A055819

/-! ## A055819.P5303405934395383279

`record[a(n-2)-a(n-1)]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A055819.P5303405934395383279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055819.P5303405934395383279

namespace A055819

/-- `record[a(n-2)-a(n-1)]` -/
def P5303405934395383279.Spec : Prop :=
  ∀ n, P5303405934395383279.a n = A055819 n

end A055819

/-! ## A055819.P1686724675488127317

`lcm(3, a(n-1))-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A055819.P1686724675488127317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - a (n - 2)

end

end A055819.P1686724675488127317

namespace A055819

/-- `lcm(3, a(n-1))-a(n-2)` -/
def P1686724675488127317.Spec : Prop :=
  ∀ n, P1686724675488127317.a n = A055819 n

end A055819

/-! ## A055819.P15529145774781578596

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A055819.P15529145774781578596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A055819.P15529145774781578596

namespace A055819

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P15529145774781578596.Spec : Prop :=
  ∀ n, P15529145774781578596.a n = A055819 n

theorem P15529145774781578596.correct : P15529145774781578596.Spec := by
  intro n
  simp only [A055819, Nat.add_sub_cancel, A055819.P15529145774781578596.a, A055819.P12981652433304694164.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055819

/-! ## A055819.P7365010879073972738

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A055819.P7365010879073972738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A055819.P7365010879073972738

namespace A055819

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P7365010879073972738.Spec : Prop :=
  ∀ n, P7365010879073972738.a n = A055819 n

theorem P7365010879073972738.correct : P7365010879073972738.Spec := by
  intro n
  simp only [A055819, Nat.add_sub_cancel, A055819.P7365010879073972738.a, A055819.P12981652433304694164.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055819

/-! ## A055819.P2377845665918961608

`A006355(2*n)`
-/

namespace A055819.P2377845665918961608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (2 * n)

end

end A055819.P2377845665918961608

namespace A055819

/-- `A006355(2*n)` -/
def P2377845665918961608.Spec : Prop :=
  ∀ n, P2377845665918961608.a n = A055819 n

end A055819

/-! ## A055819.P17326000059082426951

`A173388(4*n)`
-/

namespace A055819.P17326000059082426951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173388 (4 * n)

end

end A055819.P17326000059082426951

namespace A055819

/-- `A173388(4*n)` -/
def P17326000059082426951.Spec : Prop :=
  ∀ n, P17326000059082426951.a n = A055819 n

end A055819

/-! ## A055819.P4316791411554717879

`A163733(Δ[n²])`
-/

namespace A055819.P4316791411554717879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A055819.P4316791411554717879

namespace A055819

/-- `A163733(Δ[n²])` -/
def P4316791411554717879.Spec : Prop :=
  ∀ n, P4316791411554717879.a n = A055819 n

end A055819

/-! ## A055819.P4456182560213881453

`(A236340(2*n)+1)/2`
-/

namespace A055819.P4456182560213881453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236340 (2 * n) + 1 : ℚ) / 2

end

end A055819.P4456182560213881453

namespace A055819

/-- `(A236340(2*n)+1)/2` -/
def P4456182560213881453.Spec : Prop :=
  ∀ n, P4456182560213881453.a n = (A055819 n : ℚ)

end A055819

/-! ## A055819.P7664514712729429031

`A111282(n)+a(n-1)` with `a(0)=1`
-/

namespace A055819.P7664514712729429031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111282 n + a (n - 1)

end

end A055819.P7664514712729429031

namespace A055819

/-- `A111282(n)+a(n-1)` -/
def P7664514712729429031.Spec : Prop :=
  ∀ n, P7664514712729429031.a n = A055819 n

end A055819

/-! ## A055819.P4760638238295218878

`record[(2*A000045(n))^(n%2)]`
-/

namespace A055819.P4760638238295218878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000045 n) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055819.P4760638238295218878

namespace A055819

/-- `record[(2*A000045(n))^(n%2)]` -/
def P4760638238295218878.Spec : Prop :=
  ∀ n, P4760638238295218878.a n = A055819 n

end A055819

/-! ## A055819.P8356479055750237621

`ceil((ϕ^n)²-A000045(2*n))`
-/

namespace A055819.P8356479055750237621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio ^ n) ^ 2 - (A000045 (2 * n) : ℝ)⌉

end

end A055819.P8356479055750237621

namespace A055819

/-- `ceil((ϕ^n)²-A000045(2*n))` -/
def P8356479055750237621.Spec : Prop :=
  ∀ n, P8356479055750237621.a n = A055819 n

end A055819

/-! ## A055819.P712982147759279839

`ceil(2*A000045(2*n+1)/ϕ²)`
-/

namespace A055819.P712982147759279839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A000045 (2 * n + 1) : ℝ) / Real.goldenRatio ^ 2)⌉

end

end A055819.P712982147759279839

namespace A055819

/-- `ceil(2*A000045(2*n+1)/ϕ²)` -/
def P712982147759279839.Spec : Prop :=
  ∀ n, P712982147759279839.a n = A055819 n

end A055819

/-! ## A055819.P4188095131435994444

`A055389(A004273(n))`
-/

namespace A055819.P4188095131435994444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (A004273 n).toNat

end

end A055819.P4188095131435994444

namespace A055819

/-- `A055389(A004273(n))` -/
def P4188095131435994444.Spec : Prop :=
  ∀ n, P4188095131435994444.a n = A055819 n

end A055819

/-! ## A055819.P11234807999415516783

`A295686(A004277(n))`
-/

namespace A055819.P11234807999415516783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295686 (A004277 n).toNat

end

end A055819.P11234807999415516783

namespace A055819

/-- `A295686(A004277(n))` -/
def P11234807999415516783.Spec : Prop :=
  ∀ n, P11234807999415516783.a n = A055819 n

end A055819

/-!
# A055820: a(n) = T(n,n-3), array T as in A055818.

The programs for A055820, the canonical program `A055820.P17773709423616929156` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055820 has offset 3).

The definition of A055820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055820.P17773709423616929156

`∑[∑[n+3]]-C(2, 2*n+1)+n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055820

/-- `∑[∑[n+3]]-C(2, 2*n+1)+n` -/
def P17773709423616929156.Spec : Prop :=
  ∀ n, P17773709423616929156.a n = A055820 (n + 3)

theorem P17773709423616929156.correct : P17773709423616929156.Spec := by
  intro n
  simp only [A055820, Nat.add_sub_cancel]

end A055820

/-! ## A055820.P2661793221778193548

`∑[∑[n+3]]^((n*(2*n+1))%(n+1))+n`
-/

namespace A055820.P2661793221778193548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n * (2 * n + 1) % (n + 1)) + n

end

end A055820.P2661793221778193548

namespace A055820

/-- `∑[∑[n+3]]^((n*(2*n+1))%(n+1))+n` -/
def P2661793221778193548.Spec : Prop :=
  ∀ n, (P2661793221778193548.a n : ℤ) = A055820 (n + 3)

end A055820

/-! ## A055820.P2549445149809126863

`(∑[∑[n+3]]+n)%A090453(n)`
-/

namespace A055820.P2549445149809126863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) (A090453 n)

end

end A055820.P2549445149809126863

namespace A055820

/-- `(∑[∑[n+3]]+n)%A090453(n)` -/
def P2549445149809126863.Spec : Prop :=
  ∀ n, P2549445149809126863.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P6601586281042536763

`A323221(n)+2-A000038(n)`
-/

namespace A055820.P6601586281042536763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 n + (2 - A000038 n)

end

end A055820.P6601586281042536763

namespace A055820

/-- `A323221(n)+2-A000038(n)` -/
def P6601586281042536763.Spec : Prop :=
  ∀ n, P6601586281042536763.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P2110935857410815238

`A323221(n)+2*A057427(n)`
-/

namespace A055820.P2110935857410815238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 n + 2 * A057427 n

end

end A055820.P2110935857410815238

namespace A055820

/-- `A323221(n)+2*A057427(n)` -/
def P2110935857410815238.Spec : Prop :=
  ∀ n, P2110935857410815238.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P2154586967385907508

`A275874(n+4)+A122553(n)`
-/

namespace A055820.P2154586967385907508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275874 (n + 4) + A122553 n

end

end A055820.P2154586967385907508

namespace A055820

/-- `A275874(n+4)+A122553(n)` -/
def P2154586967385907508.Spec : Prop :=
  ∀ n, P2154586967385907508.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P4568492938303801161

`A323221(n)-2*A057428(n)`
-/

namespace A055820.P4568492938303801161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 n - 2 * A057428 n

end

end A055820.P4568492938303801161

namespace A055820

/-- `A323221(n)-2*A057428(n)` -/
def P4568492938303801161.Spec : Prop :=
  ∀ n, P4568492938303801161.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P14108924594895508653

`A114637(n+1)+A006416(n+2)`
-/

namespace A055820.P14108924594895508653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (n + 1) + A006416 (n + 2)

end

end A055820.P14108924594895508653

namespace A055820

/-- `A114637(n+1)+A006416(n+2)` -/
def P14108924594895508653.Spec : Prop :=
  ∀ n, P14108924594895508653.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P11491151422088767539

`A008778(n+1)-(A000038(n)+2)`
-/

namespace A055820.P11491151422088767539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1) - (A000038 n + 2)

end

end A055820.P11491151422088767539

namespace A055820

/-- `A008778(n+1)-(A000038(n)+2)` -/
def P11491151422088767539.Spec : Prop :=
  ∀ n, P11491151422088767539.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P5464776738043303367

`A008778(n+1)-2*A054977(n)`
-/

namespace A055820.P5464776738043303367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1) - 2 * A054977 n

end

end A055820.P5464776738043303367

namespace A055820

/-- `A008778(n+1)-2*A054977(n)` -/
def P5464776738043303367.Spec : Prop :=
  ∀ n, P5464776738043303367.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P14126206064367532470

`abs(2-A008778((n+1)%A008574(n)))`
-/

namespace A055820.P14126206064367532470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A008778 (Int.tmod (n + 1 : ℤ) (A008574 n)).toNat|

end

end A055820.P14126206064367532470

namespace A055820

/-- `abs(2-A008778((n+1)%A008574(n)))` -/
def P14126206064367532470.Spec : Prop :=
  ∀ n, P14126206064367532470.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P17791350955302986942

`(A008778(n+1)-2)^A066882(A001316(n))`
-/

namespace A055820.P17791350955302986942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008778 (n + 1) - 2 : ℚ) ^ (A066882 (A001316 n).toNat : ℤ)

end

end A055820.P17791350955302986942

namespace A055820

/-- `(A008778(n+1)-2)^A066882(A001316(n))` -/
def P17791350955302986942.Spec : Prop :=
  ∀ n, P17791350955302986942.a n = (A055820 (n + 3) : ℚ)

end A055820

/-! ## A055820.P11729415798668668744

`A323221(n)+A000038(A000038(n)*A323221(n))`
-/

namespace A055820.P11729415798668668744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 n + A000038 (A000038 n * A323221 n).toNat

end

end A055820.P11729415798668668744

namespace A055820

/-- `A323221(n)+A000038(A000038(n)*A323221(n))` -/
def P11729415798668668744.Spec : Prop :=
  ∀ n, P11729415798668668744.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P254819754218121031

`A323221(n)+A000038(A000038(n)/A323221(n))`
-/

namespace A055820.P254819754218121031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 n + A000038 (SequenceMachineLib.roundAway ((A000038 n : ℚ) / (A323221 n : ℚ))).toNat

end

end A055820.P254819754218121031

namespace A055820

/-- `A323221(n)+A000038(A000038(n)/A323221(n))` -/
def P254819754218121031.Spec : Prop :=
  ∀ n, P254819754218121031.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P13409546741696107512

`∑[A034856(n+2)+C(2, a(n-1))]` with `a(0)=1`
-/

namespace A055820.P13409546741696107512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A034856 (n + 2) + (Nat.choose 2 (f1 (n - 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055820.P13409546741696107512

namespace A055820

/-- `∑[A034856(n+2)+C(2, a(n-1))]` -/
def P13409546741696107512.Spec : Prop :=
  ∀ n, P13409546741696107512.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P3934897225896289190

`A006503(n+1)-A000038(n)+n`
-/

namespace A055820.P3934897225896289190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1) - A000038 n + (n : ℤ)

end

end A055820.P3934897225896289190

namespace A055820

/-- `A006503(n+1)-A000038(n)+n` -/
def P3934897225896289190.Spec : Prop :=
  ∀ n, P3934897225896289190.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P13015182806979053179

`A171463(A171463(n+1))+A323221(n)-A171463(n+1)`
-/

namespace A055820.P13015182806979053179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (A171463 (n + 1)).toNat + (A323221 n - A171463 (n + 1))

end

end A055820.P13015182806979053179

namespace A055820

/-- `A171463(A171463(n+1))+A323221(n)-A171463(n+1)` -/
def P13015182806979053179.Spec : Prop :=
  ∀ n, P13015182806979053179.a n = A055820 (n + 3)

end A055820

/-! ## A055820.P12033330627288861011

`A074764(A074764(n+1))+A137742(n+1)-A074764(n+1)`
-/

namespace A055820.P12033330627288861011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (A074764 (n + 1)).toNat + (A137742 (n + 1) - A074764 (n + 1))

end

end A055820.P12033330627288861011

namespace A055820

/-- `A074764(A074764(n+1))+A137742(n+1)-A074764(n+1)` -/
def P12033330627288861011.Spec : Prop :=
  ∀ n, P12033330627288861011.a n = A055820 (n + 3)

end A055820

/-!
# A055821: a(n) = T(n,n-4), array T as in A055818.

The programs for A055821, the canonical program `A055821.P13778445394197928995` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055821 has offset 4).

The definition of A055821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055821.P13778445394197928995

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=23, a(2)=60, a(3)=122, a(4)=217, a(5)=354`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055821

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13778445394197928995.Spec : Prop :=
  ∀ n, P13778445394197928995.a n = A055821 (n + 4)

theorem P13778445394197928995.correct : P13778445394197928995.Spec := by
  intro n
  simp only [A055821, Nat.add_sub_cancel]

end A055821

/-! ## A055821.P3706065416081640458

`A055820(n+3)+∑[A055820(n+3)]%A055822(n+5)`
-/

namespace A055821.P3706065416081640458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055820 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055820 (n + 3) + Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A055822 (n + 5))

end

end A055821.P3706065416081640458

namespace A055821

/-- `A055820(n+3)+∑[A055820(n+3)]%A055822(n+5)` -/
def P3706065416081640458.Spec : Prop :=
  ∀ n, P3706065416081640458.a n = A055821 (n + 4)

end A055821

/-! ## A055821.P209573249802450061

`A055818(∑[n+5]+5)`
-/

namespace A055821.P209573249802450061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A055821.P209573249802450061

namespace A055821

/-- `A055818(∑[n+5]+5)` -/
def P209573249802450061.Spec : Prop :=
  ∀ n, P209573249802450061.a n = A055821 (n + 4)

end A055821

/-! ## A055821.P16850702185430004352

`record[A055818(A052905(A028242(n)))]`
-/

namespace A055821.P16850702185430004352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A052905 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055821.P16850702185430004352

namespace A055821

/-- `record[A055818(A052905(A028242(n)))]` -/
def P16850702185430004352.Spec : Prop :=
  ∀ n, P16850702185430004352.a n = A055821 (n + 4)

end A055821

/-! ## A055821.P15188732259338550379

`record[A055818(A052905(A103221(n)))]`
-/

namespace A055821.P15188732259338550379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A052905 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055821.P15188732259338550379

namespace A055821

/-- `record[A055818(A052905(A103221(n)))]` -/
def P15188732259338550379.Spec : Prop :=
  ∀ n, P15188732259338550379.a n = A055821 (n + 4)

end A055821

/-! ## A055821.P8190952413582836624

`record[A055818(A052905(A133310(n)))]`
-/

namespace A055821.P8190952413582836624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A052905 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055821.P8190952413582836624

namespace A055821

/-- `record[A055818(A052905(A133310(n)))]` -/
def P8190952413582836624.Spec : Prop :=
  ∀ n, P8190952413582836624.a n = A055821 (n + 4)

end A055821

/-! ## A055821.P2141802413909525917

`record[A055818(A052905(A141256(n)))]`
-/

namespace A055821.P2141802413909525917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A052905 (A141256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055821.P2141802413909525917

namespace A055821

/-- `record[A055818(A052905(A141256(n)))]` -/
def P2141802413909525917.Spec : Prop :=
  ∀ n, P2141802413909525917.a n = A055821 (n + 4)

end A055821

/-! ## A055821.P9270692128523503364

`record[A055818(A052905(A286552(n)))]`
-/

namespace A055821.P9270692128523503364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A052905 (A286552 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055821.P9270692128523503364

namespace A055821

/-- `record[A055818(A052905(A286552(n)))]` -/
def P9270692128523503364.Spec : Prop :=
  ∀ n, P9270692128523503364.a n = A055821 (n + 4)

end A055821

/-!
# A055822: a(n) = T(n, n-5), array T as in A055818.

The programs for A055822, there is no canonical definition to state claims against.
-/

/-! ## A055822.P18265061227267720988

`A055809(n+4)+A055811(n+6)-A055810(n+5)`
-/

namespace A055822.P18265061227267720988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055809 (n + 4) + (A055811 (n + 6) - A055810 (n + 5))

end

end A055822.P18265061227267720988

/-! ## A055822.P17479007300756461280

`A055818(∑[n+6]+9)`
-/

namespace A055822.P17479007300756461280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A055822.P17479007300756461280

/-! ## A055822.P12607460902323387586

`A055818(eq[5, A025581(n)])%A017429(n)`
-/

namespace A055822.P12607460902323387586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A017429 n)

end

end A055822.P12607460902323387586

/-! ## A055822.P7063727731884213467

`lcm(A020985(n), A055818(A046691(n+4)-2))`
-/

namespace A055822.P7063727731884213467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A055818 (A046691 (n + 4) - 2).toNat)

end

end A055822.P7063727731884213467

/-! ## A055822.P5711284049051574535

`abs(A055818(A046691(n+4)-2)-A000038(n))`
-/

namespace A055822.P5711284049051574535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055818 (A046691 (n + 4) - 2).toNat - A000038 n|

end

end A055822.P5711284049051574535

/-! ## A055822.P6139969407538980105

`A014963(xor(42, n)+n)*A055818(A046691(n+4)-2)`
-/

namespace A055822.P6139969407538980105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.xor 42 n + n) * A055818 (A046691 (n + 4) - 2).toNat

end

end A055822.P6139969407538980105

/-! ## A055822.P11283371628956115551

`A014963(A016825(n+1))*A055818(A046691(n+4)-2)`
-/

namespace A055822.P11283371628956115551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 (n + 1)).toNat * A055818 (A046691 (n + 4) - 2).toNat

end

end A055822.P11283371628956115551

/-! ## A055822.P9375374479281474854

`A014963(A000217(n+5))*A055818(A046691(n+4)-2)`
-/

namespace A055822.P9375374479281474854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 5)).toNat * A055818 (A046691 (n + 4) - 2).toNat

end

end A055822.P9375374479281474854

/-!
# A055823: a(n) = T(n,n-6), array T as in A055818.

The programs for A055823, there is no canonical definition to state claims against.
-/

/-! ## A055823.P8639068938423359877

`A055811(n+6)+∑[A055811(n+6)-A055810(n+5)]`
-/

namespace A055823.P8639068938423359877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055811 (n + 6) - A055810 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055811 (n + 6) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055823.P8639068938423359877

/-! ## A055823.P8832394724054681248

`A055818(eq[7, A193739(n)])`
-/

namespace A055823.P8832394724054681248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055823.P8832394724054681248

/-! ## A055823.P10637900307834618860

`A055818(A055999(n+4)-1)`
-/

namespace A055823.P10637900307834618860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A055999 (n + 4) - 1).toNat

end

end A055823.P10637900307834618860

/-! ## A055823.P14438804780108640957

`A055818(A052905(n+4)-2)`
-/

namespace A055823.P14438804780108640957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A052905 (n + 4) - 2).toNat

end

end A055823.P14438804780108640957

/-! ## A055823.P10314098861686239392

`A055818(A161680(n+8)-7)`
-/

namespace A055823.P10314098861686239392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A161680 (n + 8) - 7).toNat

end

end A055823.P10314098861686239392

/-! ## A055823.P3746048501349848196

`A055818(A000124(n+6)+n-1)`
-/

namespace A055823.P3746048501349848196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A055823.P3746048501349848196

/-!
# A055824: a(n) = T(2*n,n), array T as in A055818.

The programs for A055824, the canonical program `A055824.P786412163102531384` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055824 has offset 0).

The definition of A055824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055824.P786412163102531384

`A050146(n)+A002002(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A055824

/-- `A050146(n)+A002002(n)` -/
def P786412163102531384.Spec : Prop :=
  ∀ n, P786412163102531384.a n = A055824 n

theorem P786412163102531384.correct : P786412163102531384.Spec := by
  intro n
  simp only [A055824]

end A055824

/-! ## A055824.P5599263464189316425

`A050146(n)+A262607(n)-A006318(n)`
-/

namespace A055824.P5599263464189316425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n + (A262607 n - A006318 n)

end

end A055824.P5599263464189316425

namespace A055824

/-- `A050146(n)+A262607(n)-A006318(n)` -/
def P5599263464189316425.Spec : Prop :=
  ∀ n, P5599263464189316425.a n = A055824 n

end A055824

/-! ## A055824.P17266446975237214341

`A050146(n+1)+A050146(n)-A001850(n)`
-/

namespace A055824.P17266446975237214341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) + (A050146 n - A001850 n)

end

end A055824.P17266446975237214341

namespace A055824

/-- `A050146(n+1)+A050146(n)-A001850(n)` -/
def P17266446975237214341.Spec : Prop :=
  ∀ n, P17266446975237214341.a n = A055824 n

end A055824

/-! ## A055824.P1965857833157516691

`A050146(n)+A050146(n+1)-A026003(2*n)`
-/

namespace A055824.P1965857833157516691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n + (A050146 (n + 1) - A026003 (2 * n))

end

end A055824.P1965857833157516691

namespace A055824

/-- `A050146(n)+A050146(n+1)-A026003(2*n)` -/
def P1965857833157516691.Spec : Prop :=
  ∀ n, P1965857833157516691.a n = A055824 n

end A055824

/-! ## A055824.P3110652518677314062

`A055818(∑[4*n])`
-/

namespace A055824.P3110652518677314062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055824.P3110652518677314062

namespace A055824

/-- `A055818(∑[4*n])` -/
def P3110652518677314062.Spec : Prop :=
  ∀ n, P3110652518677314062.a n = A055824 n

end A055824

/-! ## A055824.P12335011759992964818

`record[A055818(n*A008619(n))]`
-/

namespace A055824.P12335011759992964818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055824.P12335011759992964818

namespace A055824

/-- `record[A055818(n*A008619(n))]` -/
def P12335011759992964818.Spec : Prop :=
  ∀ n, P12335011759992964818.a n = A055824 n

end A055824

/-! ## A055824.P3876953986193689327

`record[gcd(A037012(n), A055818(n))]`
-/

namespace A055824.P3876953986193689327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A055818 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055824.P3876953986193689327

namespace A055824

/-- `record[gcd(A037012(n), A055818(n))]` -/
def P3876953986193689327.Spec : Prop :=
  ∀ n, (P3876953986193689327.a n : ℤ) = A055824 n

end A055824

/-! ## A055824.P16789004528223544032

`record[A055818(gcd(n, A061579(n)))]`
-/

namespace A055824.P16789004528223544032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (Int.gcd (n : ℤ) (A061579 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055824.P16789004528223544032

namespace A055824

/-- `record[A055818(gcd(n, A061579(n)))]` -/
def P16789004528223544032.Spec : Prop :=
  ∀ n, P16789004528223544032.a n = A055824 n

end A055824

/-! ## A055824.P10355444931696668084

`record[A055818(n*A110654(n+1))]`
-/

namespace A055824.P10355444931696668084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 ((n : ℤ) * A110654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055824.P10355444931696668084

namespace A055824

/-- `record[A055818(n*A110654(n+1))]` -/
def P10355444931696668084.Spec : Prop :=
  ∀ n, P10355444931696668084.a n = A055824 n

end A055824

/-! ## A055824.P101912025264068103

`record[A055818(A028242(n²))]`
-/

namespace A055824.P101912025264068103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A028242 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055824.P101912025264068103

namespace A055824

/-- `record[A055818(A028242(n²))]` -/
def P101912025264068103.Spec : Prop :=
  ∀ n, P101912025264068103.a n = A055824 n

end A055824

/-!
# A055825: a(n) = T(2n+1,n), array T as in A055818.

The programs for A055825, the canonical program `A055825.P5370810076605827676` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055825 has offset 0).

The definition of A055825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055825.P5370810076605827676

`Δ[A002002(n)]+n*A155069(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A055825

/-- `Δ[A002002(n)]+n*A155069(n)` -/
def P5370810076605827676.Spec : Prop :=
  ∀ n, P5370810076605827676.a n = A055825 n

theorem P5370810076605827676.correct : P5370810076605827676.Spec := by
  intro n
  simp only [A055825]

end A055825

/-! ## A055825.P14236484848104378088

`Δ[A002002(n)]-n*A086456(n)`
-/

namespace A055825.P14236484848104378088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) * A086456 n

end

end A055825.P14236484848104378088

namespace A055825

/-- `Δ[A002002(n)]-n*A086456(n)` -/
def P14236484848104378088.Spec : Prop :=
  ∀ n, P14236484848104378088.a n = A055825 n

end A055825

/-! ## A055825.P5202119255475556831

`A104550(n+1)+n*A155069(n)`
-/

namespace A055825.P5202119255475556831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104550 (n + 1) + (n : ℤ) * A155069 n

end

end A055825.P5202119255475556831

namespace A055825

/-- `A104550(n+1)+n*A155069(n)` -/
def P5202119255475556831.Spec : Prop :=
  ∀ n, P5202119255475556831.a n = A055825 n

end A055825

/-! ## A055825.P14647872241905209212

`Δ[A002003(n)]-(A086456(n)+A002003(n))`
-/

namespace A055825.P14647872241905209212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A086456 n + A002003 n)

end

end A055825.P14647872241905209212

namespace A055825

/-- `Δ[A002003(n)]-(A086456(n)+A002003(n))` -/
def P14647872241905209212.Spec : Prop :=
  ∀ n, P14647872241905209212.a n = A055825 n

end A055825

/-! ## A055825.P11582372993043785239

`A104550(n+1)+A050146(n)-A000007(n)`
-/

namespace A055825.P11582372993043785239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104550 (n + 1) + (A050146 n - A000007 n)

end

end A055825.P11582372993043785239

namespace A055825

/-- `A104550(n+1)+A050146(n)-A000007(n)` -/
def P11582372993043785239.Spec : Prop :=
  ∀ n, P11582372993043785239.a n = A055825 n

end A055825

/-! ## A055825.P2196618402912999833

`A050148(n+2)+A050146(n)-A050147(n+1)`
-/

namespace A055825.P2196618402912999833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050148 (n + 2) + (A050146 n - A050147 (n + 1))

end

end A055825.P2196618402912999833

namespace A055825

/-- `A050148(n+2)+A050146(n)-A050147(n+1)` -/
def P2196618402912999833.Spec : Prop :=
  ∀ n, P2196618402912999833.a n = A055825 n

end A055825

/-! ## A055825.P14597360720505636224

`A055818(2*(n+1)²-1)`
-/

namespace A055825.P14597360720505636224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (2 * (n + 1) ^ 2 - 1)

end

end A055825.P14597360720505636224

namespace A055825

/-- `A055818(2*(n+1)²-1)` -/
def P14597360720505636224.Spec : Prop :=
  ∀ n, P14597360720505636224.a n = A055825 n

end A055825

/-! ## A055825.P3028523627216916361

`record[A055818(A079326(n+2))]`
-/

namespace A055825.P3028523627216916361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A079326 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055825.P3028523627216916361

namespace A055825

/-- `record[A055818(A079326(n+2))]` -/
def P3028523627216916361.Spec : Prop :=
  ∀ n, P3028523627216916361.a n = A055825 n

end A055825

/-! ## A055825.P13316570606037994587

`record[A055818(gcd(1-n, A061579(n)))]`
-/

namespace A055825.P13316570606037994587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (Int.gcd (1 - (n : ℤ)) (A061579 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055825.P13316570606037994587

namespace A055825

/-- `record[A055818(gcd(1-n, A061579(n)))]` -/
def P13316570606037994587.Spec : Prop :=
  ∀ n, P13316570606037994587.a n = A055825 n

end A055825

/-!
# A055826: a(n) = T(2n+2,n), array T as in A055818.

The programs for A055826, the canonical program `A055826.P15083806696418632290` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055826 has offset 0).

The definition of A055826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055826.P15083806696418632290

`A050147(n+1)+A050149(n+3)-A050148(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A055826

/-- `A050147(n+1)+A050149(n+3)-A050148(n+2)` -/
def P15083806696418632290.Spec : Prop :=
  ∀ n, P15083806696418632290.a n = A055826 n

theorem P15083806696418632290.correct : P15083806696418632290.Spec := by
  intro n
  simp only [A055826]

end A055826

/-! ## A055826.P8750921658776546337

`A055818(A090288(n)+1)`
-/

namespace A055826.P8750921658776546337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A090288 n + 1).toNat

end

end A055826.P8750921658776546337

namespace A055826

/-- `A055818(A090288(n)+1)` -/
def P8750921658776546337.Spec : Prop :=
  ∀ n, P8750921658776546337.a n = A055826 n

end A055826

/-! ## A055826.P15328669522409642025

`A055818(A132209(n+1))`
-/

namespace A055826.P15328669522409642025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A132209 (n + 1)).toNat

end

end A055826.P15328669522409642025

namespace A055826

/-- `A055818(A132209(n+1))` -/
def P15328669522409642025.Spec : Prop :=
  ∀ n, P15328669522409642025.a n = A055826 n

end A055826

/-! ## A055826.P10269304855899772367

`A055818(A142463(n+1))`
-/

namespace A055826.P10269304855899772367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A142463 (n + 1)).toNat

end

end A055826.P10269304855899772367

namespace A055826

/-- `A055818(A142463(n+1))` -/
def P10269304855899772367.Spec : Prop :=
  ∀ n, P10269304855899772367.a n = A055826 n

end A055826

/-! ## A055826.P13977555916442046946

`A055818(or(1, A090288(n)))`
-/

namespace A055826.P13977555916442046946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (Int.lor 1 (A090288 n)).toNat

end

end A055826.P13977555916442046946

namespace A055826

/-- `A055818(or(1, A090288(n)))` -/
def P13977555916442046946.Spec : Prop :=
  ∀ n, P13977555916442046946.a n = A055826 n

end A055826

/-! ## A055826.P9882671448808682633

`A055818(xor(1, A090288(n)))`
-/

namespace A055826.P9882671448808682633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (Int.xor 1 (A090288 n)).toNat

end

end A055826.P9882671448808682633

namespace A055826

/-- `A055818(xor(1, A090288(n)))` -/
def P9882671448808682633.Spec : Prop :=
  ∀ n, P9882671448808682633.a n = A055826 n

end A055826

/-! ## A055826.P5682272154798300885

`A055818(Δ[A006331(n)+n²])`
-/

namespace A055826.P5682272154798300885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (f1 (n + 1) - f1 n).toNat

end

end A055826.P5682272154798300885

namespace A055826

/-- `A055818(Δ[A006331(n)+n²])` -/
def P5682272154798300885.Spec : Prop :=
  ∀ n, P5682272154798300885.a n = A055826 n

end A055826

/-! ## A055826.P8155756199836537107

`A055818(∑[A059558(n+1)]-1)`
-/

namespace A055826.P8155756199836537107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A055826.P8155756199836537107

namespace A055826

/-- `A055818(∑[A059558(n+1)]-1)` -/
def P8155756199836537107.Spec : Prop :=
  ∀ n, P8155756199836537107.a n = A055826 n

end A055826

/-! ## A055826.P8525131581966921612

`A055818(∑[A103517(2*n)+2])`
-/

namespace A055826.P8525131581966921612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A055826.P8525131581966921612

namespace A055826

/-- `A055818(∑[A103517(2*n)+2])` -/
def P8525131581966921612.Spec : Prop :=
  ∀ n, P8525131581966921612.a n = A055826 n

end A055826

/-! ## A055826.P11357849324195586332

`record[gcd(A037012(n+1), A055818(n))]`
-/

namespace A055826.P11357849324195586332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 (n + 1)) (A055818 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055826.P11357849324195586332

namespace A055826

/-- `record[gcd(A037012(n+1), A055818(n))]` -/
def P11357849324195586332.Spec : Prop :=
  ∀ n, (P11357849324195586332.a n : ℤ) = A055826 n

end A055826

/-!
# A055827: a(n) = T(2n+3,n), array T as in A055818.

The programs for A055827, there is no canonical definition to state claims against.
-/

/-! ## A055827.P17903987743823082965

`A055818(∑[4*n+6])`
-/

namespace A055827.P17903987743823082965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055827.P17903987743823082965

/-! ## A055827.P15140057306525019076

`record[A055818((n+1)*A052938(n))]`
-/

namespace A055827.P15140057306525019076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 ((n + 1 : ℤ) * A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055827.P15140057306525019076

/-! ## A055827.P15969181021327565684

`record[A055818((n+3)*A123108(n))]`
-/

namespace A055827.P15969181021327565684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 ((n + 3 : ℤ) * A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055827.P15969181021327565684

/-!
# A055828: a(n) = T(2n+4,n), array T as in A055818.

The programs for A055828, there is no canonical definition to state claims against.
-/

/-! ## A055828.P8701949598107735804

`A055818(A090288(n+1))`
-/

namespace A055828.P8701949598107735804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A090288 (n + 1)).toNat

end

end A055828.P8701949598107735804

/-! ## A055828.P11854965768166624716

`A055818(A016825(∑[n+2]))`
-/

namespace A055828.P11854965768166624716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A055828.P11854965768166624716

/-! ## A055828.P206105729942939121

`A055818(∑[A059558(n+2)]+2)`
-/

namespace A055828.P206105729942939121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059558 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A055828.P206105729942939121

/-! ## A055828.P11768715193547065832

`A055818(A074148(2*(n+2))-2)`
-/

namespace A055828.P11768715193547065832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A074148 (2 * (n + 2)) - 2).toNat

end

end A055828.P11768715193547065832

/-! ## A055828.P18392430928626917090

`A055818(A000217(2*(n+2))+n)`
-/

namespace A055828.P18392430928626917090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A000217 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A055828.P18392430928626917090

/-! ## A055828.P2652169220964226222

`A055818(A005893(n+2)+2*n)`
-/

namespace A055828.P2652169220964226222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A005893 (n + 2) + (2 * n : ℤ)).toNat

end

end A055828.P2652169220964226222

/-! ## A055828.P12346524499602119566

`A055818(A268581(n)+2*n+5)`
-/

namespace A055828.P12346524499602119566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A268581 n + (2 * n + 5 : ℤ)).toNat

end

end A055828.P12346524499602119566

/-!
# A055829: a(n) = T(2n+5,n), array T as in A055818.

The programs for A055829, there is no canonical definition to state claims against.
-/

/-! ## A055829.P11716284480449166671

`A055818(A268581(n+1))`
-/

namespace A055829.P11716284480449166671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A268581 (n + 1)).toNat

end

end A055829.P11716284480449166671

/-! ## A055829.P6937765575714574558

`A055818(A001105(n+3)-3)`
-/

namespace A055829.P6937765575714574558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A001105 (n + 3) - 3).toNat

end

end A055829.P6937765575714574558

/-! ## A055829.P16733095415293916871

`A055818(A253145(2*(n+2))+n)`
-/

namespace A055829.P16733095415293916871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A253145 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A055829.P16733095415293916871

/-! ## A055829.P7479237261291431079

`A055818(A194274(2*(n+2))+2*n+3)`
-/

namespace A055829.P7479237261291431079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A194274 (2 * (n + 2)) + (2 * n + 3 : ℤ)).toNat

end

end A055829.P7479237261291431079

/-! ## A055829.P15263230445355921505

`A055818(A000124(2*(n+2))-A001489(3*n+4))`
-/

namespace A055829.P15263230445355921505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (A000124 (2 * (n + 2)) - A001489 (3 * n + 4)).toNat

end

end A055829.P15263230445355921505

/-!
# A055830: Triangle T read by rows: diagonal differences of triangle A037027.

The programs for A055830, there is no canonical definition to state claims against.
-/

/-! ## A055830.P10526938854402215726

`A037027(n)-A155161(A028310(n))`
-/

namespace A055830.P10526938854402215726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n - A155161 (A028310 n).toNat

end

end A055830.P10526938854402215726

/-! ## A055830.P2224641524737782435

`A000007(n)+A037027(n)-A155161(n)`
-/

namespace A055830.P2224641524737782435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A037027 n - A155161 n)

end

end A055830.P2224641524737782435

/-! ## A055830.P6878289856050887446

`A038137(A061579(n))-A155161(A028310(n))`
-/

namespace A055830.P6878289856050887446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A061579 n).toNat - A155161 (A028310 n).toNat

end

end A055830.P6878289856050887446

/-! ## A055830.P8789828845902323817

`A037027(n)-A155161(A066182(n+1))`
-/

namespace A055830.P8789828845902323817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n - A155161 (A066182 (n + 1)).toNat

end

end A055830.P8789828845902323817

/-! ## A055830.P12763172009877447993

`A038137(A061579(n))-A155161(A066182(n+1))`
-/

namespace A055830.P12763172009877447993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A061579 n).toNat - A155161 (A066182 (n + 1)).toNat

end

end A055830.P12763172009877447993

/-! ## A055830.P5237849358232402936

`A155161(A014132(n+1))-A155161(A066182(n+1))`
-/

namespace A055830.P5237849358232402936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A014132 (n + 1)).toNat - A155161 (A066182 (n + 1)).toNat

end

end A055830.P5237849358232402936

/-! ## A055830.P10870786696775412164

`A037027(n)-A155161(n)%A000079(n)`
-/

namespace A055830.P10870786696775412164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n - Int.tmod (A155161 n) (A000079 n)

end

end A055830.P10870786696775412164

/-! ## A055830.P7194404496554265208

`A122075(n)-A193737(n)%A187829(n+1)`
-/

namespace A055830.P7194404496554265208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 n - Int.tmod (A193737 n) (A187829 (n + 1))

end

end A055830.P7194404496554265208

/-!
# A055831: T(n,n-4), where T is the array in A055830.

The programs for A055831, the canonical program `A055831.P4434412550341541245` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055831 has offset 4).

The definition of A055831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055831.P4434412550341541245

`∑[∑[n+4]+1]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055831

/-- `∑[∑[n+4]+1]` -/
def P4434412550341541245.Spec : Prop :=
  ∀ n, (P4434412550341541245.a n : ℤ) = A055831 (n + 4)

theorem P4434412550341541245.correct : P4434412550341541245.Spec := by
  intro n
  simp only [A055831, Nat.add_sub_cancel]

end A055831

/-! ## A055831.P10115567137010654444

`record[C(n+2, 3)-5*(n-1)]`
-/

namespace A055831.P10115567137010654444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 : ℤ) - 5 * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055831.P10115567137010654444

namespace A055831

/-- `record[C(n+2, 3)-5*(n-1)]` -/
def P10115567137010654444.Spec : Prop :=
  ∀ n, P10115567137010654444.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P16308457518864515905

`floor(∑[1-∑[a(n-1)-1]])` with `a(0)=-4`

`floor` is left out, it is the identity on integers.
-/

namespace A055831.P16308457518864515905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f2 =>
  f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055831.P16308457518864515905

namespace A055831

/-- `floor(∑[1-∑[a(n-1)-1]])` -/
def P16308457518864515905.Spec : Prop :=
  ∀ n, P16308457518864515905.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P5510358599832951084

`a(n-1)-(∑[n-5]-n²)` with `a(0)=5`
-/

namespace A055831.P5510358599832951084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - (∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ))

end

end A055831.P5510358599832951084

namespace A055831

/-- `a(n-1)-(∑[n-5]-n²)` -/
def P5510358599832951084.Spec : Prop :=
  ∀ n, P5510358599832951084.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P3870046457815394061

`record[2*a(n-1)+n-a(n-2)]` with `a(0)=5, a(1)=1`
-/

namespace A055831.P3870046457815394061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  2 * f1 (n - 1) + (n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055831.P3870046457815394061

namespace A055831

/-- `record[2*a(n-1)+n-a(n-2)]` -/
def P3870046457815394061.Spec : Prop :=
  ∀ n, P3870046457815394061.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P16131611440685796926

`A096941(n)-∑[n]`
-/

namespace A055831.P16131611440685796926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096941 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A055831.P16131611440685796926

namespace A055831

/-- `A096941(n)-∑[n]` -/
def P16131611440685796926.Spec : Prop :=
  ∀ n, P16131611440685796926.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P4276397240886028329

`A264443(n)+5-n`
-/

namespace A055831.P4276397240886028329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + (5 - (n : ℤ))

end

end A055831.P4276397240886028329

namespace A055831

/-- `A264443(n)+5-n` -/
def P4276397240886028329.Spec : Prop :=
  ∀ n, P4276397240886028329.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P8077382653704645640

`A005286(n)+(n+2)²`
-/

namespace A055831.P8077382653704645640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n + ((n + 2) ^ 2 : ℤ)

end

end A055831.P8077382653704645640

namespace A055831

/-- `A005286(n)+(n+2)²` -/
def P8077382653704645640.Spec : Prop :=
  ∀ n, P8077382653704645640.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P18111671731552479075

`A096957(n)-(n+1)²`
-/

namespace A055831.P18111671731552479075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n - ((n + 1) ^ 2 : ℤ)

end

end A055831.P18111671731552479075

namespace A055831

/-- `A096957(n)-(n+1)²` -/
def P18111671731552479075.Spec : Prop :=
  ∀ n, P18111671731552479075.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P6051439469757136566

`Δ[A387204(n)]-(n+1)`
-/

namespace A055831.P6051439469757136566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A055831.P6051439469757136566

namespace A055831

/-- `Δ[A387204(n)]-(n+1)` -/
def P6051439469757136566.Spec : Prop :=
  ∀ n, P6051439469757136566.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P4446863707021130848

`A023545(n+1)-(n+1)`
-/

namespace A055831.P4446863707021130848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n + 1 : ℤ)

end

end A055831.P4446863707021130848

namespace A055831

/-- `A023545(n+1)-(n+1)` -/
def P4446863707021130848.Spec : Prop :=
  ∀ n, P4446863707021130848.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P3066847494646088976

`A060488(n+3)+1+n`
-/

namespace A055831.P3066847494646088976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 3) + 1 + (n : ℤ)

end

end A055831.P3066847494646088976

namespace A055831

/-- `A060488(n+3)+1+n` -/
def P3066847494646088976.Spec : Prop :=
  ∀ n, P3066847494646088976.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P11149149661419047742

`A240001(n+1)+n²+n`
-/

namespace A055831.P11149149661419047742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240001 (n + 1) + (n ^ 2 + n : ℤ)

end

end A055831.P11149149661419047742

namespace A055831

/-- `A240001(n+1)+n²+n` -/
def P11149149661419047742.Spec : Prop :=
  ∀ n, P11149149661419047742.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P13119393099508171509

`A268581(n)+A005581(n)`
-/

namespace A055831.P13119393099508171509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n + A005581 n

end

end A055831.P13119393099508171509

namespace A055831

/-- `A268581(n)+A005581(n)` -/
def P13119393099508171509.Spec : Prop :=
  ∀ n, P13119393099508171509.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P4669664720863394237

`A000125(n)+∑[A016897(n)]`
-/

namespace A055831.P4669664720863394237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055831.P4669664720863394237

namespace A055831

/-- `A000125(n)+∑[A016897(n)]` -/
def P4669664720863394237.Spec : Prop :=
  ∀ n, P4669664720863394237.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P8525646595671572054

`A008778(n+1)+A000096(n)`
-/

namespace A055831.P8525646595671572054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1) + A000096 n

end

end A055831.P8525646595671572054

namespace A055831

/-- `A008778(n+1)+A000096(n)` -/
def P8525646595671572054.Spec : Prop :=
  ∀ n, P8525646595671572054.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P11679271419337382920

`A222001(n+1)+A014209(n)`
-/

namespace A055831.P11679271419337382920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222001 (n + 1) + A014209 n

end

end A055831.P11679271419337382920

namespace A055831

/-- `A222001(n+1)+A014209(n)` -/
def P11679271419337382920.Spec : Prop :=
  ∀ n, P11679271419337382920.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P7296306506768411239

`A349417(n)+A271625(n+1)`
-/

namespace A055831.P7296306506768411239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349417 n + A271625 (n + 1)

end

end A055831.P7296306506768411239

namespace A055831

/-- `A349417(n)+A271625(n+1)` -/
def P7296306506768411239.Spec : Prop :=
  ∀ n, P7296306506768411239.a n = A055831 (n + 4)

end A055831

/-! ## A055831.P2680651927652162019

`A087863(n)-A095794(n+1)`
-/

namespace A055831.P2680651927652162019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087863 n - A095794 (n + 1)

end

end A055831.P2680651927652162019

namespace A055831

/-- `A087863(n)-A095794(n+1)` -/
def P2680651927652162019.Spec : Prop :=
  ∀ n, P2680651927652162019.a n = A055831 (n + 4)

end A055831

/-!
# A055832: T(n,n-5), where T is the array in A055830.

The programs for A055832, the canonical program `A055832.P10976263926479162633` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055832 has offset 5).

The definition of A055832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055832.P10976263926479162633

`∑[∑[∑[n+5]+3]]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055832

/-- `∑[∑[∑[n+5]+3]]` -/
def P10976263926479162633.Spec : Prop :=
  ∀ n, (P10976263926479162633.a n : ℤ) = A055832 (n + 5)

theorem P10976263926479162633.correct : P10976263926479162633.Spec := by
  intro n
  simp only [A055832, Nat.add_sub_cancel]

end A055832

/-! ## A055832.P12121242404214804581

`A101854(n+1)+(n+1)*(n+2)`
-/

namespace A055832.P12121242404214804581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) + ((n + 1) * (n + 2) : ℤ)

end

end A055832.P12121242404214804581

namespace A055832

/-- `A101854(n+1)+(n+1)*(n+2)` -/
def P12121242404214804581.Spec : Prop :=
  ∀ n, P12121242404214804581.a n = A055832 (n + 5)

end A055832

/-! ## A055832.P7505506518889744826

`A095667(n)+A060488(n+3)`
-/

namespace A055832.P7505506518889744826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n + A060488 (n + 3)

end

end A055832.P7505506518889744826

namespace A055832

/-- `A095667(n)+A060488(n+3)` -/
def P7505506518889744826.Spec : Prop :=
  ∀ n, P7505506518889744826.a n = A055832 (n + 5)

end A055832

/-! ## A055832.P1771678473234355401

`A167541(n+6)+A096958(n)`
-/

namespace A055832.P1771678473234355401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167541 (n + 6) + A096958 n

end

end A055832.P1771678473234355401

namespace A055832

/-- `A167541(n+6)+A096958(n)` -/
def P1771678473234355401.Spec : Prop :=
  ∀ n, P1771678473234355401.a n = A055832 (n + 5)

end A055832

/-! ## A055832.P15981987392370798189

`Δ[A022816(n+1)]-(n+2)`
-/

namespace A055832.P15981987392370798189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A055832.P15981987392370798189

namespace A055832

/-- `Δ[A022816(n+1)]-(n+2)` -/
def P15981987392370798189.Spec : Prop :=
  ∀ n, P15981987392370798189.a n = A055832 (n + 5)

end A055832

/-! ## A055832.P3242589744204355406

`A006504(n+1)+A006503(n+1)`
-/

namespace A055832.P3242589744204355406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) + A006503 (n + 1)

end

end A055832.P3242589744204355406

namespace A055832

/-- `A006504(n+1)+A006503(n+1)` -/
def P3242589744204355406.Spec : Prop :=
  ∀ n, P3242589744204355406.a n = A055832 (n + 5)

end A055832

/-! ## A055832.P14322843633842794709

`A267370(n+1)+A005582(n+1)`
-/

namespace A055832.P14322843633842794709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 (n + 1) + A005582 (n + 1)

end

end A055832.P14322843633842794709

namespace A055832

/-- `A267370(n+1)+A005582(n+1)` -/
def P14322843633842794709.Spec : Prop :=
  ∀ n, P14322843633842794709.a n = A055832 (n + 5)

end A055832

/-! ## A055832.P18175303846614573707

`A000292(n+1)+A006504(n+1)+A002378(n+1)`
-/

namespace A055832.P18175303846614573707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A006504 (n + 1) + A002378 (n + 1))

end

end A055832.P18175303846614573707

namespace A055832

/-- `A000292(n+1)+A006504(n+1)+A002378(n+1)` -/
def P18175303846614573707.Spec : Prop :=
  ∀ n, P18175303846614573707.a n = A055832 (n + 5)

end A055832

/-! ## A055832.P2478636047197008633

`A387204(n+1)+A005581(n+2)`
-/

namespace A055832.P2478636047197008633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387204 (n + 1) + A005581 (n + 2)

end

end A055832.P2478636047197008633

namespace A055832

/-- `A387204(n+1)+A005581(n+2)` -/
def P2478636047197008633.Spec : Prop :=
  ∀ n, P2478636047197008633.a n = A055832 (n + 5)

end A055832

/-! ## A055832.P5634161666421144157

`A095667(n+1)-A055999(n+2)`
-/

namespace A055832.P5634161666421144157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 (n + 1) - A055999 (n + 2)

end

end A055832.P5634161666421144157

namespace A055832

/-- `A095667(n+1)-A055999(n+2)` -/
def P5634161666421144157.Spec : Prop :=
  ∀ n, P5634161666421144157.a n = A055832 (n + 5)

end A055832

/-!
# A055833: T(n,n-6), where T is the array in A055830.

The programs for A055833, the canonical program `A055833.P12246477899520889012` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055833 has offset 6).

The definition of A055833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055833.P12246477899520889012

`A139798(n+1)+A006504(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055833

/-- `A139798(n+1)+A006504(n+1)` -/
def P12246477899520889012.Spec : Prop :=
  ∀ n, P12246477899520889012.a n = A055833 (n + 6)

theorem P12246477899520889012.correct : P12246477899520889012.Spec := by
  intro n
  simp only [A055833, Nat.add_sub_cancel]

end A055833

/-! ## A055833.P17584459522590494159

`Δ[A022817(n+1)]-1`
-/

namespace A055833.P17584459522590494159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A055833.P17584459522590494159

namespace A055833

/-- `Δ[A022817(n+1)]-1` -/
def P17584459522590494159.Spec : Prop :=
  ∀ n, P17584459522590494159.a n = A055833 (n + 6)

end A055833

/-! ## A055833.P5796961444239949115

`∑[∑[A101853(n+2)-4]-(n+1)]`
-/

namespace A055833.P5796961444239949115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 2) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055833.P5796961444239949115

namespace A055833

/-- `∑[∑[A101853(n+2)-4]-(n+1)]` -/
def P5796961444239949115.Spec : Prop :=
  ∀ n, P5796961444239949115.a n = A055833 (n + 6)

end A055833

/-! ## A055833.P4446360307132231578

`∑[∑[A060488(n+4)+A055999(n)]]`
-/

namespace A055833.P4446360307132231578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 4) + A055999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055833.P4446360307132231578

namespace A055833

/-- `∑[∑[A060488(n+4)+A055999(n)]]` -/
def P4446360307132231578.Spec : Prop :=
  ∀ n, P4446360307132231578.a n = A055833 (n + 6)

end A055833

/-! ## A055833.P2730218155144885642

`A022817(n+2)-(A022817(n+1)+1)`
-/

namespace A055833.P2730218155144885642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022817 (n + 2) - (A022817 (n + 1) + 1)

end

end A055833.P2730218155144885642

namespace A055833

/-- `A022817(n+2)-(A022817(n+1)+1)` -/
def P2730218155144885642.Spec : Prop :=
  ∀ n, P2730218155144885642.a n = A055833 (n + 6)

end A055833

/-! ## A055833.P7484464650777905038

`∑[∑[A051937(n+6)-6]]`
-/

namespace A055833.P7484464650777905038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051937 (n + 6) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055833.P7484464650777905038

namespace A055833

/-- `∑[∑[A051937(n+6)-6]]` -/
def P7484464650777905038.Spec : Prop :=
  ∀ n, P7484464650777905038.a n = A055833 (n + 6)

end A055833

/-! ## A055833.P4291323094761998096

`A209599(A268581(n+1))`
-/

namespace A055833.P4291323094761998096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A268581 (n + 1)).toNat

end

end A055833.P4291323094761998096

namespace A055833

/-- `A209599(A268581(n+1))` -/
def P4291323094761998096.Spec : Prop :=
  ∀ n, P4291323094761998096.a n = A055833 (n + 6)

end A055833

/-!
# A055834: a(n) = T(2n,n), where T is the array in A055830.

The programs for A055834, there is no canonical definition to state claims against.
-/

/-! ## A055834.P8816821777106061828

`ceil(A330793(n)/2)`
-/

namespace A055834.P8816821777106061828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330793 n : ℚ) / 2⌉

end

end A055834.P8816821777106061828

/-! ## A055834.P8596006735648001846

`ceil(A055835(n)/3)`
-/

namespace A055834.P8596006735648001846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055835 n : ℚ) / 3⌉

end

end A055834.P8596006735648001846

/-! ## A055834.P3939866019944891968

`A330793(n)/dr(A010008(n))`
-/

namespace A055834.P3939866019944891968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330793 n : ℚ) / (SequenceMachineLib.digitalRoot (A010008 n) : ℚ)

end

end A055834.P3939866019944891968

/-! ## A055834.P1343744485794740188

`A330793(n)/A036453(n+1)`
-/

namespace A055834.P1343744485794740188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330793 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A055834.P1343744485794740188

/-! ## A055834.P5215131826683580873

`A330793(n)/A020639(A000132(n))`
-/

namespace A055834.P5215131826683580873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330793 n : ℚ) / (A020639 (A000132 n).toNat : ℚ)

end

end A055834.P5215131826683580873

/-! ## A055834.P4359676275420289651

`A330793(n)/A020639(A103517(n))`
-/

namespace A055834.P4359676275420289651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330793 n : ℚ) / (A020639 (A103517 n).toNat : ℚ)

end

end A055834.P4359676275420289651

/-! ## A055834.P7013969361065467791

`A330793(n)/A020639(A013916(n+1))`
-/

namespace A055834.P7013969361065467791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330793 n : ℚ) / (A020639 (A013916 (n + 1)).toNat : ℚ)

end

end A055834.P7013969361065467791

/-! ## A055834.P3414546623145650650

`A330793(n)/A007947(A061142(n+1))`
-/

namespace A055834.P3414546623145650650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330793 n : ℚ) / (A007947 (A061142 (n + 1)).toNat : ℚ)

end

end A055834.P3414546623145650650

/-! ## A055834.P7198884170054311485

`A330793(n)/A130335(A130335(n+1))`
-/

namespace A055834.P7198884170054311485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330793 n : ℚ) / (A130335 (A130335 (n + 1)).toNat : ℚ)

end

end A055834.P7198884170054311485

/-! ## A055834.P4725842921816039835

`A011782(n)/A011782(n+1)*A330793(n)`
-/

namespace A055834.P4725842921816039835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) / (A011782 (n + 1) : ℚ) * (A330793 n : ℚ)

end

end A055834.P4725842921816039835

/-!
# A055835: T(2n+1,n), where T is the array in A055830.

The programs for A055835, there is no canonical definition to state claims against.
-/

/-! ## A055835.P8702440210025195699

`A122075(∑[4*n])`
-/

namespace A055835.P8702440210025195699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055835.P8702440210025195699

/-! ## A055835.P5994180573229331324

`A208337((n+1)²+n²)`
-/

namespace A055835.P5994180573229331324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 ((n + 1) ^ 2 + n ^ 2)

end

end A055835.P5994180573229331324

/-! ## A055835.P4437088577346692754

`xor(2, xor(2, A208337(A001844(n))))`
-/

namespace A055835.P4437088577346692754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A208337 (A001844 n).toNat))

end

end A055835.P4437088577346692754

/-! ## A055835.P13103738300257472262

`A208337(A001844(n))^A178334(n)`
-/

namespace A055835.P13103738300257472262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208337 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A055835.P13103738300257472262

/-! ## A055835.P13672584738199347995

`lcm(A020985(n), A208337(A001844(n)))`
-/

namespace A055835.P13672584738199347995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A208337 (A001844 n).toNat)

end

end A055835.P13672584738199347995

/-! ## A055835.P15210719791694780382

`or(A112316(n), A208337(A001844(n)))`
-/

namespace A055835.P15210719791694780382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112316 n) (A208337 (A001844 n).toNat)

end

end A055835.P15210719791694780382

/-! ## A055835.P17338060926925118146

`A208337(A001844(n))%A206320(n+1)`
-/

namespace A055835.P17338060926925118146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208337 (A001844 n).toNat) (A206320 (n + 1))

end

end A055835.P17338060926925118146

/-! ## A055835.P6866690175113657645

`A055830(A056220(n+1))`
-/

namespace A055835.P6866690175113657645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A056220 (n + 1)).toNat

end

end A055835.P6866690175113657645

/-! ## A055835.P16867848642835458653

`A055830(A253145(2*n)+n)`
-/

namespace A055835.P16867848642835458653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A253145 (2 * n) + (n : ℤ)).toNat

end

end A055835.P16867848642835458653

/-! ## A055835.P8160955716154656374

`A055830(A059993(n)-2*n)`
-/

namespace A055835.P8160955716154656374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A059993 n - (2 * n : ℤ)).toNat

end

end A055835.P8160955716154656374

/-!
# A055836: T(2n+2, n), where T is the array in A055830.

The programs for A055836, there is no canonical definition to state claims against.
-/

/-! ## A055836.P16814004448083224316

`A213684(n+1)+A038112(n)`
-/

namespace A055836.P16814004448083224316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213684 (n + 1) + A038112 n

end

end A055836.P16814004448083224316

/-! ## A055836.P2994262185621950785

`A038112(n+1)+A038112(n)-A055834(n+1)`
-/

namespace A055836.P2994262185621950785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038112 (n + 1) + (A038112 n - A055834 (n + 1))

end

end A055836.P2994262185621950785

/-! ## A055836.P5152475469401317107

`A055830(∑[4*n+3]+n)`
-/

namespace A055836.P5152475469401317107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A055836.P5152475469401317107

/-! ## A055836.P15009500323303536311

`A122075(4*n+2*n²+1)`
-/

namespace A055836.P15009500323303536311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (4 * n + 2 * n ^ 2 + 1)

end

end A055836.P15009500323303536311

/-! ## A055836.P11714557743089408507

`A208337(A058331(n+1))`
-/

namespace A055836.P11714557743089408507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (A058331 (n + 1)).toNat

end

end A055836.P11714557743089408507

/-!
# A055837: T(2n+3,n), where T is the array in A055830.

The programs for A055837, there is no canonical definition to state claims against.
-/

/-! ## A055837.P14729727789352573848

`A122075(A090288(n)+1)`
-/

namespace A055837.P14729727789352573848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (A090288 n + 1).toNat

end

end A055837.P14729727789352573848

/-! ## A055837.P8618839032640842715

`A122075(A132209(n+1))`
-/

namespace A055837.P8618839032640842715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (A132209 (n + 1)).toNat

end

end A055837.P8618839032640842715

/-! ## A055837.P2648623538711061284

`A122075(A142463(n+1))`
-/

namespace A055837.P2648623538711061284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (A142463 (n + 1)).toNat

end

end A055837.P2648623538711061284

/-! ## A055837.P11462409425523134165

`A122075(or(1, A090288(n)))`
-/

namespace A055837.P11462409425523134165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (Int.lor 1 (A090288 n)).toNat

end

end A055837.P11462409425523134165

/-! ## A055837.P10039646114510667966

`A208337(A001844(n+1)+1)`
-/

namespace A055837.P10039646114510667966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (A001844 (n + 1) + 1).toNat

end

end A055837.P10039646114510667966

/-! ## A055837.P4795714764626235212

`A122075(eq[1, A209599(n+1)])`
-/

namespace A055837.P4795714764626235212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055837.P4795714764626235212

/-! ## A055837.P6966056148994710101

`A055830(2*(n+1)*(n+3))`
-/

namespace A055837.P6966056148994710101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (2 * ((n + 1) * (n + 3)))

end

end A055837.P6966056148994710101

/-!
# A055838: T(2n+4,n), where T is the array in A055830.

The programs for A055838, there is no canonical definition to state claims against.
-/

/-! ## A055838.P7519601797264113603

`A122075(2*(n+1)*(n+3))`
-/

namespace A055838.P7519601797264113603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (2 * ((n + 1) * (n + 3)))

end

end A055838.P7519601797264113603

/-! ## A055838.P15022038941340523292

`A208337((n+1)²+(n+3)²)`
-/

namespace A055838.P15022038941340523292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A055838.P15022038941340523292

/-! ## A055838.P8623158556412452788

`A055830(A090288(n+1))`
-/

namespace A055838.P8623158556412452788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A090288 (n + 1)).toNat

end

end A055838.P8623158556412452788

/-! ## A055838.P17496815323841774660

`A055830(A059993(n+1)+1)`
-/

namespace A055838.P17496815323841774660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A059993 (n + 1) + 1).toNat

end

end A055838.P17496815323841774660

/-! ## A055838.P487467470433290557

`A122950(A064226(n+1))`
-/

namespace A055838.P487467470433290557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122950 (A064226 (n + 1)).toNat

end

end A055838.P487467470433290557

/-!
# A055839: T(2n+5,n), where T is the array in A055830.

The programs for A055839, there is no canonical definition to state claims against.
-/

/-! ## A055839.P12242741406169124352

`A122075(A090288(n+1))`
-/

namespace A055839.P12242741406169124352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (A090288 (n + 1)).toNat

end

end A055839.P12242741406169124352

/-! ## A055839.P1531955250305219222

`A055830(A268581(n+1))`
-/

namespace A055839.P1531955250305219222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A268581 (n + 1)).toNat

end

end A055839.P1531955250305219222

/-! ## A055839.P7484371641882243973

`A055830(A000217(2*n+5)+n)`
-/

namespace A055839.P7484371641882243973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A000217 (2 * n + 5) + (n : ℤ)).toNat

end

end A055839.P7484371641882243973

/-! ## A055839.P9332378634994269248

`A236076(A064226(n+1))`
-/

namespace A055839.P9332378634994269248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (A064226 (n + 1)).toNat

end

end A055839.P9332378634994269248

/-! ## A055839.P13384801992054864286

`A122075(A154680(record[A198467(n+1)]))`
-/

namespace A055839.P13384801992054864286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (A154680 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A055839.P13384801992054864286

/-!
# A055840: T(2n+6,n), where T is the array in A055830.

The programs for A055840, there is no canonical definition to state claims against.
-/

/-! ## A055840.P16284737454368492341

`A122075(A268581(n+1))`
-/

namespace A055840.P16284737454368492341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (A268581 (n + 1)).toNat

end

end A055840.P16284737454368492341

/-! ## A055840.P6237329149942169466

`A055830(A059993(n+2))`
-/

namespace A055840.P6237329149942169466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A059993 (n + 2)).toNat

end

end A055840.P6237329149942169466

/-! ## A055840.P13671552282867197614

`A122075(A004274((n+3)²))`
-/

namespace A055840.P13671552282867197614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (A004274 ((n + 3) ^ 2)).toNat

end

end A055840.P13671552282867197614

/-! ## A055840.P18374104844262844550

`A236076(A006137(n+2))`
-/

namespace A055840.P18374104844262844550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (A006137 (n + 2)).toNat

end

end A055840.P18374104844262844550

/-! ## A055840.P2944293449649675127

`A209599(A081270(n+1)-1)`
-/

namespace A055840.P2944293449649675127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A081270 (n + 1) - 1).toNat

end

end A055840.P2944293449649675127

/-!
# A055841: Number of compositions of n into 3*j-1 kinds of j's for all j >= 1.

The programs for A055841, the canonical program `A055841.P13781602304579062682` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055841 has offset 0).

The definition of A055841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055841.P13781602304579062682

`4*a(n-1)` with `a(0)=1, a(1)=2, a(2)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055841

/-- `4*a(n-1)` -/
def P13781602304579062682.Spec : Prop :=
  ∀ n, (P13781602304579062682.a n : ℤ) = A055841 n

theorem P13781602304579062682.correct : P13781602304579062682.Spec := by
  intro n
  simp only [A055841]

end A055841

/-! ## A055841.P17325922436350297344

`round(9*4^(n-2))`
-/

namespace A055841.P17325922436350297344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (9 * (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A055841.P17325922436350297344

namespace A055841

/-- `round(9*4^(n-2))` -/
def P17325922436350297344.Spec : Prop :=
  ∀ n, P17325922436350297344.a n = A055841 n

end A055841

/-! ## A055841.P16973361984200308356

`a(n-1)/(1/2)²` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A055841.P16973361984200308356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 9] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A055841.P16973361984200308356

namespace A055841

/-- `a(n-1)/(1/2)²` -/
def P16973361984200308356.Spec : Prop :=
  ∀ n, P16973361984200308356.a n = (A055841 n : ℚ)

end A055841

/-! ## A055841.P13847750468008663677

`floor(a(n-1))/(1-3/4)` with `a(0)=1, a(1)=2, a(2)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A055841.P13847750468008663677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 9] fun n a =>
  (⌊a (n - 1)⌋ : ℚ) / (1 - (3 : ℚ) / 4)

end

end A055841.P13847750468008663677

namespace A055841

/-- `floor(a(n-1))/(1-3/4)` -/
def P13847750468008663677.Spec : Prop :=
  ∀ n, P13847750468008663677.a n = (A055841 n : ℚ)

end A055841

/-! ## A055841.P5388766418008797858

`∑[A056120(n)]`
-/

namespace A055841.P5388766418008797858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055841.P5388766418008797858

namespace A055841

/-- `∑[A056120(n)]` -/
def P5388766418008797858.Spec : Prop :=
  ∀ n, P5388766418008797858.a n = A055841 n

end A055841

/-! ## A055841.P14931756604066728799

`∑[∑[A118265(n)]]`
-/

namespace A055841.P14931756604066728799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118265 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055841.P14931756604066728799

namespace A055841

/-- `∑[∑[A118265(n)]]` -/
def P14931756604066728799.Spec : Prop :=
  ∀ n, P14931756604066728799.a n = A055841 n

end A055841

/-! ## A055841.P105584336012979426

`floor((A042950(n)/2)²)`
-/

namespace A055841.P105584336012979426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A042950 n : ℚ) / 2) ^ 2⌋

end

end A055841.P105584336012979426

namespace A055841

/-- `floor((A042950(n)/2)²)` -/
def P105584336012979426.Spec : Prop :=
  ∀ n, P105584336012979426.a n = A055841 n

end A055841

/-! ## A055841.P11973284259252204627

`floor(Δ[A003945(n)/2]²)`
-/

namespace A055841.P11973284259252204627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003945 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n) ^ 2⌋

end

end A055841.P11973284259252204627

namespace A055841

/-- `floor(Δ[A003945(n)/2]²)` -/
def P11973284259252204627.Spec : Prop :=
  ∀ n, P11973284259252204627.a n = A055841 n

end A055841

/-! ## A055841.P1083722050891003095

`Δ[Δ[or(n, A166444(n)²)]]`
-/

namespace A055841.P1083722050891003095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A166444 n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055841.P1083722050891003095

namespace A055841

/-- `Δ[Δ[or(n, A166444(n)²)]]` -/
def P1083722050891003095.Spec : Prop :=
  ∀ n, P1083722050891003095.a n = A055841 n

end A055841

/-! ## A055841.P7872710844609988730

`floor((A110164(n+1)/2)²)`
-/

namespace A055841.P7872710844609988730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A110164 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A055841.P7872710844609988730

namespace A055841

/-- `floor((A110164(n+1)/2)²)` -/
def P7872710844609988730.Spec : Prop :=
  ∀ n, P7872710844609988730.a n = A055841 n

end A055841

/-! ## A055841.P1199033680326227394

`char[1]+A122391(n+1)²`
-/

namespace A055841.P1199033680326227394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A122391 (n + 1) ^ 2

end

end A055841.P1199033680326227394

namespace A055841

/-- `char[1]+A122391(n+1)²` -/
def P1199033680326227394.Spec : Prop :=
  ∀ n, P1199033680326227394.a n = A055841 n

end A055841

/-! ## A055841.P15107832252485420216

`Δ[Δ[floor((A131577(n)/2)²)]]`
-/

namespace A055841.P15107832252485420216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A131577 n : ℚ) / 2) ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055841.P15107832252485420216

namespace A055841

/-- `Δ[Δ[floor((A131577(n)/2)²)]]` -/
def P15107832252485420216.Spec : Prop :=
  ∀ n, P15107832252485420216.a n = A055841 n

end A055841

/-! ## A055841.P11491668458996041650

`or(floor(4^(n-2)), A081294(n))`
-/

namespace A055841.P11491668458996041650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(4 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ (A081294 n)

end

end A055841.P11491668458996041650

namespace A055841

/-- `or(floor(4^(n-2)), A081294(n))` -/
def P11491668458996041650.Spec : Prop :=
  ∀ n, P11491668458996041650.a n = A055841 n

end A055841

/-! ## A055841.P145220974576913838

`record[A029744(n+1)^gcd(2, n)]`
-/

namespace A055841.P145220974576913838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) ^ Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055841.P145220974576913838

namespace A055841

/-- `record[A029744(n+1)^gcd(2, n)]` -/
def P145220974576913838.Spec : Prop :=
  ∀ n, P145220974576913838.a n = A055841 n

end A055841

/-! ## A055841.P2177348546532650498

`A131577(2*n)+A034008(n)²`
-/

namespace A055841.P2177348546532650498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * n) + A034008 n ^ 2

end

end A055841.P2177348546532650498

namespace A055841

/-- `A131577(2*n)+A034008(n)²` -/
def P2177348546532650498.Spec : Prop :=
  ∀ n, P2177348546532650498.a n = A055841 n

end A055841

/-! ## A055841.P1117175414211793050

`A110164(n)²-and(2, A290859(n))`
-/

namespace A055841.P1117175414211793050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 n ^ 2 - Int.land 2 (A290859 n)

end

end A055841.P1117175414211793050

namespace A055841

/-- `A110164(n)²-and(2, A290859(n))` -/
def P1117175414211793050.Spec : Prop :=
  ∀ n, P1117175414211793050.a n = A055841 n

end A055841

/-! ## A055841.P14906652771528607999

`∑[A122391(n)]*A122391(n+1)`
-/

namespace A055841.P14906652771528607999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A122391 (n + 1)

end

end A055841.P14906652771528607999

namespace A055841

/-- `∑[A122391(n)]*A122391(n+1)` -/
def P14906652771528607999.Spec : Prop :=
  ∀ n, P14906652771528607999.a n = A055841 n

end A055841

/-! ## A055841.P4422737838087778149

`Δ[Δ[A166444(n*A157928(n))²]]`
-/

namespace A055841.P4422737838087778149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 ((n : ℤ) * A157928 n).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055841.P4422737838087778149

namespace A055841

/-- `Δ[Δ[A166444(n*A157928(n))²]]` -/
def P4422737838087778149.Spec : Prop :=
  ∀ n, P4422737838087778149.a n = A055841 n

end A055841

/-! ## A055841.P4493813876270843956

`A098011(n+2)*A122391(n+1)`
-/

namespace A055841.P4493813876270843956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 2) * A122391 (n + 1)

end

end A055841.P4493813876270843956

namespace A055841

/-- `A098011(n+2)*A122391(n+1)` -/
def P4493813876270843956.Spec : Prop :=
  ∀ n, P4493813876270843956.a n = A055841 n

end A055841

/-!
# A055842: Expansion of (1-x)^2/(1-5*x).

The programs for A055842, the canonical program `A055842.P2009830918531012792` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055842 has offset 0).

The definition of A055842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055842.P2009830918531012792

`5*a(n-1)` with `a(0)=1, a(1)=3, a(2)=16`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055842

/-- `5*a(n-1)` -/
def P2009830918531012792.Spec : Prop :=
  ∀ n, (P2009830918531012792.a n : ℤ) = A055842 n

theorem P2009830918531012792.correct : P2009830918531012792.Spec := by
  intro n
  simp only [A055842]

end A055842

/-! ## A055842.P5458571627146997602

`round(16*5^(n-2))`
-/

namespace A055842.P5458571627146997602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (16 * (5 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A055842.P5458571627146997602

namespace A055842

/-- `round(16*5^(n-2))` -/
def P5458571627146997602.Spec : Prop :=
  ∀ n, P5458571627146997602.a n = A055842 n

end A055842

/-! ## A055842.P7568121256204863446

`abs(Δ[a(n-1)/(1-4/5)])` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A055842.P7568121256204863446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 4] fun n f1 =>
  f1 (n - 1) / (1 - (4 : ℚ) / 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A055842.P7568121256204863446

namespace A055842

/-- `abs(Δ[a(n-1)/(1-4/5)])` -/
def P7568121256204863446.Spec : Prop :=
  ∀ n, P7568121256204863446.a n = (A055842 n : ℚ)

end A055842

/-! ## A055842.P16749224618741945257

`∑[∑[∑[A118266(n)]]]`
-/

namespace A055842.P16749224618741945257
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118266 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055842.P16749224618741945257

namespace A055842

/-- `∑[∑[∑[A118266(n)]]]` -/
def P16749224618741945257.Spec : Prop :=
  ∀ n, P16749224618741945257.a n = A055842 n

end A055842

/-! ## A055842.P7643149613848320096

`A005054(n)-round(A005054(n)/5)`
-/

namespace A055842.P7643149613848320096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n - SequenceMachineLib.roundAway ((A005054 n : ℚ) / 5)

end

end A055842.P7643149613848320096

namespace A055842

/-- `A005054(n)-round(A005054(n)/5)` -/
def P7643149613848320096.Spec : Prop :=
  ∀ n, P7643149613848320096.a n = A055842 n

end A055842

/-! ## A055842.P2018432499647747472

`floor(A005054(n)/A000351(n)*A005054(n))`
-/

namespace A055842.P2018432499647747472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005054 n : ℚ) / (A000351 n : ℚ) * (A005054 n : ℚ)⌋

end

end A055842.P2018432499647747472

namespace A055842

/-- `floor(A005054(n)/A000351(n)*A005054(n))` -/
def P2018432499647747472.Spec : Prop :=
  ∀ n, P2018432499647747472.a n = A055842 n

end A055842

/-! ## A055842.P5035152930638495550

`ceil(A264273(n+1)/16)`
-/

namespace A055842.P5035152930638495550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A264273 (n + 1) : ℚ) / 16⌉

end

end A055842.P5035152930638495550

namespace A055842

/-- `ceil(A264273(n+1)/16)` -/
def P5035152930638495550.Spec : Prop :=
  ∀ n, P5035152930638495550.a n = A055842 n

end A055842

/-! ## A055842.P6655259685649704556

`floor(A005054(n)²/A000351(n))`
-/

namespace A055842.P6655259685649704556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005054 n ^ 2 : ℚ) / (A000351 n : ℚ)⌋

end

end A055842.P6655259685649704556

namespace A055842

/-- `floor(A005054(n)²/A000351(n))` -/
def P6655259685649704556.Spec : Prop :=
  ∀ n, P6655259685649704556.a n = A055842 n

end A055842

/-!
# A055843: Expansion of (1+3*x)/(1-x)^10.

The programs for A055843, the canonical program `A055843.P5882146147000410687` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055843 has offset 0).

The definition of A055843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055843.P1615587751938594462

`∑[C(n+7, 6)*∑[n+1]]/7`
-/

namespace A055843.P1615587751938594462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 6 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7

end

end A055843.P1615587751938594462

namespace A055843

/-- `∑[C(n+7, 6)*∑[n+1]]/7` -/
def P1615587751938594462.Spec : Prop :=
  ∀ n, P1615587751938594462.a n = (A055843 n : ℚ)

end A055843

/-! ## A055843.P5882146147000410687

`∑[∑[∑[∑[∑[(n+1)*C(n+3, 3)]]]]]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055843

/-- `∑[∑[∑[∑[∑[(n+1)*C(n+3, 3)]]]]]` -/
def P5882146147000410687.Spec : Prop :=
  ∀ n, (P5882146147000410687.a n : ℤ) = A055843 n

theorem P5882146147000410687.correct : P5882146147000410687.Spec := by
  intro n
  simp only [A055843]

end A055843

/-! ## A055843.P259586002802308416

`∑[∑[∑[∑[∑[(n+1)*∑[∑[n+1]]]]]]]`
-/

namespace A055843.P259586002802308416
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f6 j)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055843.P259586002802308416

namespace A055843

/-- `∑[∑[∑[∑[∑[(n+1)*∑[∑[n+1]]]]]]]` -/
def P259586002802308416.Spec : Prop :=
  ∀ n, (P259586002802308416.a n : ℤ) = A055843 n

end A055843

/-! ## A055843.P81291607467918242

`∑[7*A052181(n)]/7`
-/

namespace A055843.P81291607467918242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A052181 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 7

end

end A055843.P81291607467918242

namespace A055843

/-- `∑[7*A052181(n)]/7` -/
def P81291607467918242.Spec : Prop :=
  ∀ n, P81291607467918242.a n = (A055843 n : ℚ)

end A055843

/-! ## A055843.P4049572882367735170

`∑[(n+1)/2*A027818(n+1)]/7`
-/

namespace A055843.P4049572882367735170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A027818 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 7

end

end A055843.P4049572882367735170

namespace A055843

/-- `∑[(n+1)/2*A027818(n+1)]/7` -/
def P4049572882367735170.Spec : Prop :=
  ∀ n, P4049572882367735170.a n = (A055843 n : ℚ)

end A055843

/-! ## A055843.P17614801564555329873

`2*A053310(n)-A054333(n)`
-/

namespace A055843.P17614801564555329873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053310 n - A054333 n

end

end A055843.P17614801564555329873

namespace A055843

/-- `2*A053310(n)-A054333(n)` -/
def P17614801564555329873.Spec : Prop :=
  ∀ n, P17614801564555329873.a n = A055843 n

end A055843

/-! ## A055843.P17201667120436753433

`2*A055844(n)-A055848(n)`
-/

namespace A055843.P17201667120436753433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055844 n - A055848 n

end

end A055843.P17201667120436753433

namespace A055843

/-- `2*A055844(n)-A055848(n)` -/
def P17201667120436753433.Spec : Prop :=
  ∀ n, P17201667120436753433.a n = A055843 n

end A055843

/-! ## A055843.P632755295283009609

`2*A054333(n)-A000581(n+8)`
-/

namespace A055843.P632755295283009609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054333 n - A000581 (n + 8)

end

end A055843.P632755295283009609

namespace A055843

/-- `2*A054333(n)-A000581(n+8)` -/
def P632755295283009609.Spec : Prop :=
  ∀ n, P632755295283009609.a n = A055843 n

end A055843

/-! ## A055843.P4170732596036638950

`∑[2*A053347(n)]-A000581(n+8)`
-/

namespace A055843.P4170732596036638950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000581 (n + 8)

end

end A055843.P4170732596036638950

namespace A055843

/-- `∑[2*A053347(n)]-A000581(n+8)` -/
def P4170732596036638950.Spec : Prop :=
  ∀ n, P4170732596036638950.a n = A055843 n

end A055843

/-!
# A055844: a(n) = (5*n + 9)*binomial(n+8, 8)/9.

The programs for A055844, the canonical program `A055844.P2117747079876987675` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055844 has offset 0).

The definition of A055844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055844.P2117747079876987675

`∑[∑[∑[∑[(n+1)*C(n+4, 4)]]]]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055844

/-- `∑[∑[∑[∑[(n+1)*C(n+4, 4)]]]]` -/
def P2117747079876987675.Spec : Prop :=
  ∀ n, (P2117747079876987675.a n : ℤ) = A055844 n

theorem P2117747079876987675.correct : P2117747079876987675.Spec := by
  intro n
  simp only [A055844]

end A055844

/-! ## A055844.P18420583439219673401

`∑[∑[∑[∑[(n+1)*∑[∑[∑[n+1]]]]]]]`
-/

namespace A055844.P18420583439219673401
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f5 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055844.P18420583439219673401

namespace A055844

/-- `∑[∑[∑[∑[(n+1)*∑[∑[∑[n+1]]]]]]]` -/
def P18420583439219673401.Spec : Prop :=
  ∀ n, (P18420583439219673401.a n : ℤ) = A055844 n

end A055844

/-! ## A055844.P8462089331117548307

`A052255(n)+a(n-1)` with `a(0)=1`
-/

namespace A055844.P8462089331117548307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052255 n + a (n - 1)

end

end A055844.P8462089331117548307

namespace A055844

/-- `A052255(n)+a(n-1)` -/
def P8462089331117548307.Spec : Prop :=
  ∀ n, P8462089331117548307.a n = A055844 n

end A055844

/-! ## A055844.P2768291034512331803

`lcm(∑[A052255(n)], A033999(n))`
-/

namespace A055844.P2768291034512331803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A055844.P2768291034512331803

namespace A055844

/-- `lcm(∑[A052255(n)], A033999(n))` -/
def P2768291034512331803.Spec : Prop :=
  ∀ n, (P2768291034512331803.a n : ℤ) = A055844 n

end A055844

/-! ## A055844.P11216810665830257080

`2*A055843(n)-A053310(n)`
-/

namespace A055844.P11216810665830257080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055843 n - A053310 n

end

end A055844.P11216810665830257080

namespace A055844

/-- `2*A055843(n)-A053310(n)` -/
def P11216810665830257080.Spec : Prop :=
  ∀ n, P11216810665830257080.a n = A055844 n

end A055844

/-! ## A055844.P15157160172319916367

`(A055994(n)+A053310(n))/2`
-/

namespace A055844.P15157160172319916367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055994 n + A053310 n : ℚ) / 2

end

end A055844.P15157160172319916367

namespace A055844

/-- `(A055994(n)+A053310(n))/2` -/
def P15157160172319916367.Spec : Prop :=
  ∀ n, P15157160172319916367.a n = (A055844 n : ℚ)

end A055844

/-! ## A055844.P1072095481020025390

`(A055848(n)+A055843(n))/2`
-/

namespace A055844.P1072095481020025390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055848 n + A055843 n : ℚ) / 2

end

end A055844.P1072095481020025390

namespace A055844

/-- `(A055848(n)+A055843(n))/2` -/
def P1072095481020025390.Spec : Prop :=
  ∀ n, P1072095481020025390.a n = (A055844 n : ℚ)

end A055844

/-! ## A055844.P2604175359458939376

`2*A055994(n)-A056003(n)`
-/

namespace A055844.P2604175359458939376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055994 n - A056003 n

end

end A055844.P2604175359458939376

namespace A055844

/-- `2*A055994(n)-A056003(n)` -/
def P2604175359458939376.Spec : Prop :=
  ∀ n, P2604175359458939376.a n = A055844 n

end A055844

/-! ## A055844.P485051639876421839

`(A056003(n)+A000582(n+9))/2`
-/

namespace A055844.P485051639876421839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056003 n + A000582 (n + 9) : ℚ) / 2

end

end A055844.P485051639876421839

namespace A055844

/-- `(A056003(n)+A000582(n+9))/2` -/
def P485051639876421839.Spec : Prop :=
  ∀ n, P485051639876421839.a n = (A055844 n : ℚ)

end A055844

/-! ## A055844.P16413520617476237321

`5*A000582(n+9)-4*A000581(n+8)`
-/

namespace A055844.P16413520617476237321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000582 (n + 9) - 4 * A000581 (n + 8)

end

end A055844.P16413520617476237321

namespace A055844

/-- `5*A000582(n+9)-4*A000581(n+8)` -/
def P16413520617476237321.Spec : Prop :=
  ∀ n, P16413520617476237321.a n = A055844 n

end A055844

/-! ## A055844.P16641562124234008530

`A000007(n+1)+∑[A052255(n)]`
-/

namespace A055844.P16641562124234008530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055844.P16641562124234008530

namespace A055844

/-- `A000007(n+1)+∑[A052255(n)]` -/
def P16641562124234008530.Spec : Prop :=
  ∀ n, P16641562124234008530.a n = A055844 n

end A055844

/-! ## A055844.P4963737228599968286

`∑[A052255(n)]^A001221(A000961(n+1))`
-/

namespace A055844.P4963737228599968286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052255 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A055844.P4963737228599968286

namespace A055844

/-- `∑[A052255(n)]^A001221(A000961(n+1))` -/
def P4963737228599968286.Spec : Prop :=
  ∀ n, P4963737228599968286.a n = (A055844 n : ℚ)

end A055844

/-! ## A055844.P7422631799668133564

`∑[A052255(n)]%A000081(n+8)`
-/

namespace A055844.P7422631799668133564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000081 (n + 8))

end

end A055844.P7422631799668133564

namespace A055844

/-- `∑[A052255(n)]%A000081(n+8)` -/
def P7422631799668133564.Spec : Prop :=
  ∀ n, P7422631799668133564.a n = A055844 n

end A055844

/-! ## A055844.P2677502890161680536

`A093562(A133263(n+10)-(n+3))`
-/

namespace A055844.P2677502890161680536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (A133263 (n + 10) - (n + 3 : ℤ)).toNat

end

end A055844.P2677502890161680536

namespace A055844

/-- `A093562(A133263(n+10)-(n+3))` -/
def P2677502890161680536.Spec : Prop :=
  ∀ n, P2677502890161680536.a n = A055844 n

end A055844

/-! ## A055844.P7287685706910345640

`A093562(char[A001281(n)]+A253145(n+8)+8)`
-/

namespace A055844.P7287685706910345640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A253145 (n + 8) + 8)).toNat

end

end A055844.P7287685706910345640

namespace A055844

/-- `A093562(char[A001281(n)]+A253145(n+8)+8)` -/
def P7287685706910345640.Spec : Prop :=
  ∀ n, P7287685706910345640.a n = A055844 n

end A055844

/-! ## A055844.P14142880861821637726

`A096940(A056000(n+6))`
-/

namespace A055844.P14142880861821637726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A056000 (n + 6)).toNat

end

end A055844.P14142880861821637726

namespace A055844

/-- `A096940(A056000(n+6))` -/
def P14142880861821637726.Spec : Prop :=
  ∀ n, P14142880861821637726.a n = A055844 n

end A055844

/-! ## A055844.P16252382984311255495

`A096940(A000217(n+10)-10)`
-/

namespace A055844.P16252382984311255495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A000217 (n + 10) - 10).toNat

end

end A055844.P16252382984311255495

namespace A055844

/-- `A096940(A000217(n+10)-10)` -/
def P16252382984311255495.Spec : Prop :=
  ∀ n, P16252382984311255495.a n = A055844 n

end A055844

/-!
# A055845: a(n) = 4*a(n-1) - a(n-2) with a(0)=1, a(1)=8.

The programs for A055845, the canonical program `A055845.P16576345818623768086` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055845 has offset 0).

The definition of A055845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A055845.P16576345818623768086`, by `A055845.P16576345818623768086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055845.P16576345818623768086

`4*a(n-1)-a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055845

/-- `4*a(n-1)-a(n-2)` -/
def P16576345818623768086.Spec : Prop :=
  ∀ n, P16576345818623768086.a n = A055845 n

theorem P16576345818623768086.correct : P16576345818623768086.Spec := by
  intro n
  simp only [A055845]

end A055845

/-! ## A055845.P17953130227717885000

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A055845.P17953130227717885000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A055845.P17953130227717885000

namespace A055845

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P17953130227717885000.Spec : Prop :=
  ∀ n, P17953130227717885000.a n = (A055845 n : ℚ)

end A055845

/-! ## A055845.P713991975354705465

`A005320(n)+A001834(n)`
-/

namespace A055845.P713991975354705465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 n + A001834 n

end

end A055845.P713991975354705465

namespace A055845

/-- `A005320(n)+A001834(n)` -/
def P713991975354705465.Spec : Prop :=
  ∀ n, P713991975354705465.a n = A055845 n

end A055845

/-! ## A055845.P15908587365422583298

`A054485(n)+A001353(n)`
-/

namespace A055845.P15908587365422583298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054485 n + A001353 n

end

end A055845.P15908587365422583298

namespace A055845

/-- `A054485(n)+A001353(n)` -/
def P15908587365422583298.Spec : Prop :=
  ∀ n, P15908587365422583298.a n = A055845 n

end A055845

/-! ## A055845.P7757143982198047610

`A054491(n)+A052530(n)`
-/

namespace A055845.P7757143982198047610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054491 n + A052530 n

end

end A055845.P7757143982198047610

namespace A055845

/-- `A054491(n)+A052530(n)` -/
def P7757143982198047610.Spec : Prop :=
  ∀ n, P7757143982198047610.a n = A055845 n

end A055845

/-! ## A055845.P11719626402298547980

`A077234(n)-A001835(n)`
-/

namespace A055845.P11719626402298547980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077234 n - A001835 n

end

end A055845.P11719626402298547980

namespace A055845

/-- `A077234(n)-A001835(n)` -/
def P11719626402298547980.Spec : Prop :=
  ∀ n, P11719626402298547980.a n = A055845 n

end A055845

/-! ## A055845.P10782495954093491996

`A054485(n)-A106707(n)`
-/

namespace A055845.P10782495954093491996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054485 n - A106707 n

end

end A055845.P10782495954093491996

namespace A055845

/-- `A054485(n)-A106707(n)` -/
def P10782495954093491996.Spec : Prop :=
  ∀ n, P10782495954093491996.a n = A055845 n

end A055845

/-! ## A055845.P12579689666655332117

`A231896(n)+A001353(n+1)`
-/

namespace A055845.P12579689666655332117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231896 n + A001353 (n + 1)

end

end A055845.P12579689666655332117

namespace A055845

/-- `A231896(n)+A001353(n+1)` -/
def P12579689666655332117.Spec : Prop :=
  ∀ n, P12579689666655332117.a n = A055845 n

end A055845

/-! ## A055845.P9984665389980092641

`A231896(n)-A106707(n+1)`
-/

namespace A055845.P9984665389980092641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231896 n - A106707 (n + 1)

end

end A055845.P9984665389980092641

namespace A055845

/-- `A231896(n)-A106707(n+1)` -/
def P9984665389980092641.Spec : Prop :=
  ∀ n, P9984665389980092641.a n = A055845 n

end A055845

/-! ## A055845.P7420623201229805860

`A079935(n+2)-A144720(n)`
-/

namespace A055845.P7420623201229805860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 2) - A144720 n

end

end A055845.P7420623201229805860

namespace A055845

/-- `A079935(n+2)-A144720(n)` -/
def P7420623201229805860.Spec : Prop :=
  ∀ n, P7420623201229805860.a n = A055845 n

end A055845

/-! ## A055845.P5815772691097487571

`A001075(n)+2*A005320(n)`
-/

namespace A055845.P5815772691097487571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n + 2 * A005320 n

end

end A055845.P5815772691097487571

namespace A055845

/-- `A001075(n)+2*A005320(n)` -/
def P5815772691097487571.Spec : Prop :=
  ∀ n, P5815772691097487571.a n = A055845 n

end A055845

/-! ## A055845.P7941180189218074083

`A054491(n)+2*A001353(n)`
-/

namespace A055845.P7941180189218074083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054491 n + 2 * A001353 n

end

end A055845.P7941180189218074083

namespace A055845

/-- `A054491(n)+2*A001353(n)` -/
def P7941180189218074083.Spec : Prop :=
  ∀ n, P7941180189218074083.a n = A055845 n

end A055845

/-! ## A055845.P14574067776180418497

`2*A001834(n)-A001075(n)`
-/

namespace A055845.P14574067776180418497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001834 n - A001075 n

end

end A055845.P14574067776180418497

namespace A055845

/-- `2*A001834(n)-A001075(n)` -/
def P14574067776180418497.Spec : Prop :=
  ∀ n, P14574067776180418497.a n = A055845 n

end A055845

/-! ## A055845.P6765042288350362131

`A001834(n)+3*A001353(n)`
-/

namespace A055845.P6765042288350362131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n + 3 * A001353 n

end

end A055845.P6765042288350362131

namespace A055845

/-- `A001834(n)+3*A001353(n)` -/
def P6765042288350362131.Spec : Prop :=
  ∀ n, P6765042288350362131.a n = A055845 n

end A055845

/-! ## A055845.P12984840605272366280

`A054491(n)-2*A106707(n)`
-/

namespace A055845.P12984840605272366280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054491 n - 2 * A106707 n

end

end A055845.P12984840605272366280

namespace A055845

/-- `A054491(n)-2*A106707(n)` -/
def P12984840605272366280.Spec : Prop :=
  ∀ n, P12984840605272366280.a n = A055845 n

end A055845

/-! ## A055845.P15589385553360009079

`A005320(n)+A002531(2*n+1)`
-/

namespace A055845.P15589385553360009079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 n + A002531 (2 * n + 1)

end

end A055845.P15589385553360009079

namespace A055845

/-- `A005320(n)+A002531(2*n+1)` -/
def P15589385553360009079.Spec : Prop :=
  ∀ n, P15589385553360009079.a n = A055845 n

end A055845

/-! ## A055845.P977692358735498024

`A077234(n)-A122573(2*(n+1))`
-/

namespace A055845.P977692358735498024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077234 n - A122573 (2 * (n + 1))

end

end A055845.P977692358735498024

namespace A055845

/-- `A077234(n)-A122573(2*(n+1))` -/
def P977692358735498024.Spec : Prop :=
  ∀ n, P977692358735498024.a n = A055845 n

end A055845

/-! ## A055845.P12465398217857795938

`A321119(2*n+1)-A001075(n)`
-/

namespace A055845.P12465398217857795938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321119 (2 * n + 1) - A001075 n

end

end A055845.P12465398217857795938

namespace A055845

/-- `A321119(2*n+1)-A001075(n)` -/
def P12465398217857795938.Spec : Prop :=
  ∀ n, P12465398217857795938.a n = A055845 n

end A055845

/-! ## A055845.P14977785305600334184

`A001353(n+1)+4*A001353(n)`
-/

namespace A055845.P14977785305600334184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) + 4 * A001353 n

end

end A055845.P14977785305600334184

namespace A055845

/-- `A001353(n+1)+4*A001353(n)` -/
def P14977785305600334184.Spec : Prop :=
  ∀ n, P14977785305600334184.a n = A055845 n

end A055845

/-!
# A055846: a(n) = 25*6^(n-2), with a(0)=1 and a(1)=4.

The programs for A055846, the canonical program `A055846.P6509116479688583169` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055846 has offset 0).

The definition of A055846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055846.P6509116479688583169

`6*a(n-1)` with `a(0)=1, a(1)=4, a(2)=25`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055846

/-- `6*a(n-1)` -/
def P6509116479688583169.Spec : Prop :=
  ∀ n, (P6509116479688583169.a n : ℤ) = A055846 n

theorem P6509116479688583169.correct : P6509116479688583169.Spec := by
  intro n
  simp only [A055846]

end A055846

/-!
# A055847: a(n) = 49*8^(n-2) if n>=2; a(0)=1, a(1)=6.

The programs for A055847, the canonical program `A055847.P7468228781556491487` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055847 has offset 0).

The definition of A055847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055847.P7468228781556491487

`8*a(n-1)` with `a(0)=1, a(1)=6, a(2)=49`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055847

/-- `8*a(n-1)` -/
def P7468228781556491487.Spec : Prop :=
  ∀ n, (P7468228781556491487.a n : ℤ) = A055847 n

theorem P7468228781556491487.correct : P7468228781556491487.Spec := by
  intro n
  simp only [A055847]

end A055847

/-! ## A055847.P1119366195263660516

`Δ[Δ[floor(8^(n-2))]]`
-/

namespace A055847.P1119366195263660516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055847.P1119366195263660516

namespace A055847

/-- `Δ[Δ[floor(8^(n-2))]]` -/
def P1119366195263660516.Spec : Prop :=
  ∀ n, P1119366195263660516.a n = A055847 n

end A055847

/-! ## A055847.P10668861768421146629

`a(n-1)/(1/2)^3` with `a(0)=1, a(1)=6, a(2)=49`
-/

namespace A055847.P10668861768421146629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6, 49] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3

end

end A055847.P10668861768421146629

namespace A055847

/-- `a(n-1)/(1/2)^3` -/
def P10668861768421146629.Spec : Prop :=
  ∀ n, P10668861768421146629.a n = (A055847 n : ℚ)

end A055847

/-! ## A055847.P7266369021938830609

`∑[A365062(n+1)]*A365062(2*n)`
-/

namespace A055847.P7266369021938830609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A365062 (2 * n)

end

end A055847.P7266369021938830609

namespace A055847

/-- `∑[A365062(n+1)]*A365062(2*n)` -/
def P7266369021938830609.Spec : Prop :=
  ∀ n, P7266369021938830609.a n = A055847 n

end A055847

/-! ## A055847.P6745553657666485964

`round(Δ[A055274(n)/8])`
-/

namespace A055847.P6745553657666485964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055274 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A055847.P6745553657666485964

namespace A055847

/-- `round(Δ[A055274(n)/8])` -/
def P6745553657666485964.Spec : Prop :=
  ∀ n, P6745553657666485964.a n = A055847 n

end A055847

/-!
# A055848: Expansion of (1+5*x)/(1-x)^10.

The programs for A055848, the canonical program `A055848.P17890021124380122455` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055848 has offset 0).

The definition of A055848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055848.P17890021124380122455

`∑[∑[∑[(n+1)*C(n+5, 5)]]]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055848

/-- `∑[∑[∑[(n+1)*C(n+5, 5)]]]` -/
def P17890021124380122455.Spec : Prop :=
  ∀ n, (P17890021124380122455.a n : ℤ) = A055848 n

theorem P17890021124380122455.correct : P17890021124380122455.Spec := by
  intro n
  simp only [A055848]

end A055848

/-! ## A055848.P16407193230605705183

`∑[∑[∑[(n+1)*∑[∑[∑[∑[n+1]]]]]]]`
-/

namespace A055848.P16407193230605705183
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055848.P16407193230605705183

namespace A055848

/-- `∑[∑[∑[(n+1)*∑[∑[∑[∑[n+1]]]]]]]` -/
def P16407193230605705183.Spec : Prop :=
  ∀ n, (P16407193230605705183.a n : ℤ) = A055848 n

end A055848

/-! ## A055848.P17717818493231717127

`or(∑[A054487(n)], char[1])`
-/

namespace A055848.P17717818493231717127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054487 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A055848.P17717818493231717127

namespace A055848

/-- `or(∑[A054487(n)], char[1])` -/
def P17717818493231717127.Spec : Prop :=
  ∀ n, P17717818493231717127.a n = A055848 n

end A055848

/-! ## A055848.P3314455586941988234

`(2*n+3)*A000581(n+8)/3`
-/

namespace A055848.P3314455586941988234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) * ((A000581 (n + 8) : ℚ) / 3)

end

end A055848.P3314455586941988234

namespace A055848

/-- `(2*n+3)*A000581(n+8)/3` -/
def P3314455586941988234.Spec : Prop :=
  ∀ n, P3314455586941988234.a n = (A055848 n : ℚ)

end A055848

/-! ## A055848.P2823076572629004949

`2*A055844(n)-A055843(n)`
-/

namespace A055848.P2823076572629004949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055844 n - A055843 n

end

end A055848.P2823076572629004949

namespace A055848

/-- `2*A055844(n)-A055843(n)` -/
def P2823076572629004949.Spec : Prop :=
  ∀ n, P2823076572629004949.a n = A055848 n

end A055848

/-! ## A055848.P6679526134090838208

`2*A053310(n)-A000581(n+8)`
-/

namespace A055848.P6679526134090838208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053310 n - A000581 (n + 8)

end

end A055848.P6679526134090838208

namespace A055848

/-- `2*A053310(n)-A000581(n+8)` -/
def P6679526134090838208.Spec : Prop :=
  ∀ n, P6679526134090838208.a n = A055848 n

end A055848

/-! ## A055848.P12016994206943161972

`A096956(A056000(n+6))`
-/

namespace A055848.P12016994206943161972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 (A056000 (n + 6)).toNat

end

end A055848.P12016994206943161972

namespace A055848

/-- `A096956(A056000(n+6))` -/
def P12016994206943161972.Spec : Prop :=
  ∀ n, P12016994206943161972.a n = A055848 n

end A055848

/-! ## A055848.P14445098396365872782

`A007318(∑[n])*∑[A054487(n)]`
-/

namespace A055848.P14445098396365872782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A055848.P14445098396365872782

namespace A055848

/-- `A007318(∑[n])*∑[A054487(n)]` -/
def P14445098396365872782.Spec : Prop :=
  ∀ n, P14445098396365872782.a n = A055848 n

end A055848

/-!
# A055849: a(n) = 3*a(n-1) - a(n-2) with a(0)=1, a(1)=9.

The programs for A055849, the canonical program `A055849.P9206024204874854685` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055849 has offset 0).

The definition of A055849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)` (program `A055849.P9206024204874854685`, by `A055849.P9206024204874854685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055849.P9206024204874854685

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055849

/-- `3*a(n-1)-a(n-2)` -/
def P9206024204874854685.Spec : Prop :=
  ∀ n, P9206024204874854685.a n = A055849 n

theorem P9206024204874854685.correct : P9206024204874854685.Spec := by
  intro n
  simp only [A055849]

end A055849

/-! ## A055849.P624020365677788994

`A022098(2*n)`
-/

namespace A055849.P624020365677788994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 (2 * n)

end

end A055849.P624020365677788994

namespace A055849

/-- `A022098(2*n)` -/
def P624020365677788994.Spec : Prop :=
  ∀ n, P624020365677788994.a n = A055849 n

end A055849

/-! ## A055849.P18376823531739488898

`A022312(2*n)+1`
-/

namespace A055849.P18376823531739488898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 (2 * n) + 1

end

end A055849.P18376823531739488898

namespace A055849

/-- `A022312(2*n)+1` -/
def P18376823531739488898.Spec : Prop :=
  ∀ n, P18376823531739488898.a n = A055849 n

end A055849

/-! ## A055849.P6565194889384646512

`A022370(2*n)/2`
-/

namespace A055849.P6565194889384646512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022370 (2 * n) : ℚ) / 2

end

end A055849.P6565194889384646512

namespace A055849

/-- `A022370(2*n)/2` -/
def P6565194889384646512.Spec : Prop :=
  ∀ n, P6565194889384646512.a n = (A055849 n : ℚ)

end A055849

/-! ## A055849.P13790097879248721309

`A055273(n)+A001906(n)`
-/

namespace A055849.P13790097879248721309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055273 n + A001906 n

end

end A055849.P13790097879248721309

namespace A055849

/-- `A055273(n)+A001906(n)` -/
def P13790097879248721309.Spec : Prop :=
  ∀ n, P13790097879248721309.a n = A055849 n

end A055849

/-! ## A055849.P12020822208695655018

`A055850(n)-A001906(n)`
-/

namespace A055849.P12020822208695655018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055850 n - A001906 n

end

end A055849.P12020822208695655018

namespace A055849

/-- `A055850(n)-A001906(n)` -/
def P12020822208695655018.Spec : Prop :=
  ∀ n, P12020822208695655018.a n = A055849 n

end A055849

/-! ## A055849.P15494957356158813895

`A201157(n+1)+A002878(n)`
-/

namespace A055849.P15494957356158813895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1) + A002878 n

end

end A055849.P15494957356158813895

namespace A055849

/-- `A201157(n+1)+A002878(n)` -/
def P15494957356158813895.Spec : Prop :=
  ∀ n, P15494957356158813895.a n = A055849 n

end A055849

/-! ## A055849.P6802371726808382169

`A055273(n)+A000045(2*n)`
-/

namespace A055849.P6802371726808382169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055273 n + A000045 (2 * n)

end

end A055849.P6802371726808382169

namespace A055849

/-- `A055273(n)+A000045(2*n)` -/
def P6802371726808382169.Spec : Prop :=
  ∀ n, P6802371726808382169.a n = A055849 n

end A055849

/-! ## A055849.P14926446870017769806

`A055267(n)+2*A001906(n)`
-/

namespace A055849.P14926446870017769806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055267 n + 2 * A001906 n

end

end A055849.P14926446870017769806

namespace A055849

/-- `A055267(n)+2*A001906(n)` -/
def P14926446870017769806.Spec : Prop :=
  ∀ n, P14926446870017769806.a n = A055849 n

end A055849

/-! ## A055849.P12751814156927963080

`A097136(n)+A022309(2*n)`
-/

namespace A055849.P12751814156927963080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097136 n + A022309 (2 * n)

end

end A055849.P12751814156927963080

namespace A055849

/-- `A097136(n)+A022309(2*n)` -/
def P12751814156927963080.Spec : Prop :=
  ∀ n, P12751814156927963080.a n = A055849 n

end A055849

/-! ## A055849.P16129299200316337365

`A203976(2*n)+A002878(n)`
-/

namespace A055849.P16129299200316337365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (2 * n) + A002878 n

end

end A055849.P16129299200316337365

namespace A055849

/-- `A203976(2*n)+A002878(n)` -/
def P16129299200316337365.Spec : Prop :=
  ∀ n, P16129299200316337365.a n = A055849 n

end A055849

/-! ## A055849.P3031155723100417904

`A055850(n)-A000045(2*n)`
-/

namespace A055849.P3031155723100417904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055850 n - A000045 (2 * n)

end

end A055849.P3031155723100417904

namespace A055849

/-- `A055850(n)-A000045(2*n)` -/
def P3031155723100417904.Spec : Prop :=
  ∀ n, P3031155723100417904.a n = A055849 n

end A055849

/-! ## A055849.P1507019200793372854

`2*A054486(n)-A001519(n)`
-/

namespace A055849.P1507019200793372854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054486 n - A001519 n

end

end A055849.P1507019200793372854

namespace A055849

/-- `2*A054486(n)-A001519(n)` -/
def P1507019200793372854.Spec : Prop :=
  ∀ n, P1507019200793372854.a n = A055849 n

end A055849

/-! ## A055849.P1756672537145655340

`A056123(n)-2*A001906(n)`
-/

namespace A055849.P1756672537145655340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056123 n - 2 * A001906 n

end

end A055849.P1756672537145655340

namespace A055849

/-- `A056123(n)-2*A001906(n)` -/
def P1756672537145655340.Spec : Prop :=
  ∀ n, P1756672537145655340.a n = A055849 n

end A055849

/-! ## A055849.P4823974231406071642

`A192908(n+1)+A022310(2*n)`
-/

namespace A055849.P4823974231406071642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192908 (n + 1) + A022310 (2 * n)

end

end A055849.P4823974231406071642

namespace A055849

/-- `A192908(n+1)+A022310(2*n)` -/
def P4823974231406071642.Spec : Prop :=
  ∀ n, P4823974231406071642.a n = A055849 n

end A055849

/-! ## A055849.P7306453583460366112

`A022097(2*n)+A000045(2*n)`
-/

namespace A055849.P7306453583460366112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 (2 * n) + A000045 (2 * n)

end

end A055849.P7306453583460366112

namespace A055849

/-- `A022097(2*n)+A000045(2*n)` -/
def P7306453583460366112.Spec : Prop :=
  ∀ n, P7306453583460366112.a n = A055849 n

end A055849

/-! ## A055849.P9379421120449716524

`A022087(2*n)+A000285(2*n)`
-/

namespace A055849.P9379421120449716524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 (2 * n) + A000285 (2 * n)

end

end A055849.P9379421120449716524

namespace A055849

/-- `A022087(2*n)+A000285(2*n)` -/
def P9379421120449716524.Spec : Prop :=
  ∀ n, P9379421120449716524.a n = A055849 n

end A055849

/-! ## A055849.P12429842419451608993

`A022310(2*n)+A001588(2*n)`
-/

namespace A055849.P12429842419451608993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 (2 * n) + A001588 (2 * n)

end

end A055849.P12429842419451608993

namespace A055849

/-- `A022310(2*n)+A001588(2*n)` -/
def P12429842419451608993.Spec : Prop :=
  ∀ n, P12429842419451608993.a n = A055849 n

end A055849

/-! ## A055849.P1319733449651036469

`A022311(2*n)+A001611(2*n)`
-/

namespace A055849.P1319733449651036469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 (2 * n) + A001611 (2 * n)

end

end A055849.P1319733449651036469

namespace A055849

/-- `A022311(2*n)+A001611(2*n)` -/
def P1319733449651036469.Spec : Prop :=
  ∀ n, P1319733449651036469.a n = A055849 n

end A055849

/-!
# A055850: a(n) = 3*a(n-1) - a(n-2) with a(0)=1, a(1)=10.

The programs for A055850, the canonical program `A055850.P7822503836280289901` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055850 has offset 0).

The definition of A055850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)` (program `A055850.P7822503836280289901`, by `A055850.P7822503836280289901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055850.P7822503836280289901

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055850

/-- `3*a(n-1)-a(n-2)` -/
def P7822503836280289901.Spec : Prop :=
  ∀ n, P7822503836280289901.a n = A055850 n

theorem P7822503836280289901.correct : P7822503836280289901.Spec := by
  intro n
  simp only [A055850]

end A055850

/-! ## A055850.P3169056401015393511

`lcm(3, a(n-1))-a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A055850.P3169056401015393511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - a (n - 2)

end

end A055850.P3169056401015393511

namespace A055850

/-- `lcm(3, a(n-1))-a(n-2)` -/
def P3169056401015393511.Spec : Prop :=
  ∀ n, P3169056401015393511.a n = A055850 n

end A055850

/-! ## A055850.P12454013992039623410

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A055850.P12454013992039623410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A055850.P12454013992039623410

namespace A055850

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P12454013992039623410.Spec : Prop :=
  ∀ n, P12454013992039623410.a n = A055850 n

theorem P12454013992039623410.correct : P12454013992039623410.Spec := by
  intro n
  simp only [A055850, Nat.add_sub_cancel, A055850.P12454013992039623410.a, A055850.P7822503836280289901.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055850

/-! ## A055850.P16551068024702211001

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A055850.P16551068024702211001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A055850.P16551068024702211001

namespace A055850

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P16551068024702211001.Spec : Prop :=
  ∀ n, P16551068024702211001.a n = A055850 n

theorem P16551068024702211001.correct : P16551068024702211001.Spec := by
  intro n
  simp only [A055850, Nat.add_sub_cancel, A055850.P16551068024702211001.a, A055850.P7822503836280289901.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055850

/-! ## A055850.P12930685777902496040

`A022099(2*n)`
-/

namespace A055850.P12930685777902496040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 (2 * n)

end

end A055850.P12930685777902496040

namespace A055850

/-- `A022099(2*n)` -/
def P12930685777902496040.Spec : Prop :=
  ∀ n, P12930685777902496040.a n = A055850 n

end A055850

/-! ## A055850.P16548208765671512476

`A022313(2*n)+1`
-/

namespace A055850.P16548208765671512476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 (2 * n) + 1

end

end A055850.P16548208765671512476

namespace A055850

/-- `A022313(2*n)+1` -/
def P16548208765671512476.Spec : Prop :=
  ∀ n, P16548208765671512476.a n = A055850 n

end A055850

/-! ## A055850.P4184942549540305808

`A022371(2*n)/2`
-/

namespace A055850.P4184942549540305808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022371 (2 * n) : ℚ) / 2

end

end A055850.P4184942549540305808

namespace A055850

/-- `A022371(2*n)/2` -/
def P4184942549540305808.Spec : Prop :=
  ∀ n, P4184942549540305808.a n = (A055850 n : ℚ)

end A055850

/-! ## A055850.P4654817320058010578

`A055849(n)+A001906(n)`
-/

namespace A055850.P4654817320058010578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055849 n + A001906 n

end

end A055850.P4654817320058010578

namespace A055850

/-- `A055849(n)+A001906(n)` -/
def P4654817320058010578.Spec : Prop :=
  ∀ n, P4654817320058010578.a n = A055850 n

end A055850

/-! ## A055850.P15402716642976314666

`A056123(n)-A001906(n)`
-/

namespace A055850.P15402716642976314666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056123 n - A001906 n

end

end A055850.P15402716642976314666

namespace A055850

/-- `A056123(n)-A001906(n)` -/
def P15402716642976314666.Spec : Prop :=
  ∀ n, P15402716642976314666.a n = A055850 n

end A055850

/-! ## A055850.P7183578306728899455

`A201157(n+1)+A054486(n)`
-/

namespace A055850.P7183578306728899455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1) + A054486 n

end

end A055850.P7183578306728899455

namespace A055850

/-- `A201157(n+1)+A054486(n)` -/
def P7183578306728899455.Spec : Prop :=
  ∀ n, P7183578306728899455.a n = A055850 n

end A055850

/-! ## A055850.P3809215916868728235

`A055849(n)+A000045(2*n)`
-/

namespace A055850.P3809215916868728235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055849 n + A000045 (2 * n)

end

end A055850.P3809215916868728235

namespace A055850

/-- `A055849(n)+A000045(2*n)` -/
def P3809215916868728235.Spec : Prop :=
  ∀ n, P3809215916868728235.a n = A055850 n

end A055850

/-! ## A055850.P11196886912515252520

`A055273(n)+2*A001906(n)`
-/

namespace A055850.P11196886912515252520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055273 n + 2 * A001906 n

end

end A055850.P11196886912515252520

namespace A055850

/-- `A055273(n)+2*A001906(n)` -/
def P11196886912515252520.Spec : Prop :=
  ∀ n, P11196886912515252520.a n = A055850 n

end A055850

/-! ## A055850.P12461674639134375926

`A097136(n)+A022310(2*n)`
-/

namespace A055850.P12461674639134375926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097136 n + A022310 (2 * n)

end

end A055850.P12461674639134375926

namespace A055850

/-- `A097136(n)+A022310(2*n)` -/
def P12461674639134375926.Spec : Prop :=
  ∀ n, P12461674639134375926.a n = A055850 n

end A055850

/-! ## A055850.P3304742951493150344

`A022124(2*n)-A025169(n)`
-/

namespace A055850.P3304742951493150344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 (2 * n) - A025169 n

end

end A055850.P3304742951493150344

namespace A055850

/-- `A022124(2*n)-A025169(n)` -/
def P3304742951493150344.Spec : Prop :=
  ∀ n, P3304742951493150344.a n = A055850 n

end A055850

/-! ## A055850.P17418869375124000934

`A056123(n)-A000045(2*n)`
-/

namespace A055850.P17418869375124000934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056123 n - A000045 (2 * n)

end

end A055850.P17418869375124000934

namespace A055850

/-- `A056123(n)-A000045(2*n)` -/
def P17418869375124000934.Spec : Prop :=
  ∀ n, P17418869375124000934.a n = A055850 n

end A055850

/-! ## A055850.P3022246901410797923

`A271359(n)-2*A005248(n)`
-/

namespace A055850.P3022246901410797923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271359 n - 2 * A005248 n

end

end A055850.P3022246901410797923

namespace A055850

/-- `A271359(n)-2*A005248(n)` -/
def P3022246901410797923.Spec : Prop :=
  ∀ n, P3022246901410797923.a n = A055850 n

end A055850

/-! ## A055850.P8973326854106553963

`A192908(n+1)+A022311(2*n)`
-/

namespace A055850.P8973326854106553963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192908 (n + 1) + A022311 (2 * n)

end

end A055850.P8973326854106553963

namespace A055850

/-- `A192908(n+1)+A022311(2*n)` -/
def P8973326854106553963.Spec : Prop :=
  ∀ n, P8973326854106553963.a n = A055850 n

end A055850

/-! ## A055850.P2022636321804107987

`A022098(2*n)+A000045(2*n)`
-/

namespace A055850.P2022636321804107987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 (2 * n) + A000045 (2 * n)

end

end A055850.P2022636321804107987

namespace A055850

/-- `A022098(2*n)+A000045(2*n)` -/
def P2022636321804107987.Spec : Prop :=
  ∀ n, P2022636321804107987.a n = A055850 n

end A055850

/-! ## A055850.P5342434301569875327

`A022088(2*n)+A000285(2*n)`
-/

namespace A055850.P5342434301569875327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (2 * n) + A000285 (2 * n)

end

end A055850.P5342434301569875327

namespace A055850

/-- `A022088(2*n)+A000285(2*n)` -/
def P5342434301569875327.Spec : Prop :=
  ∀ n, P5342434301569875327.a n = A055850 n

end A055850

/-!
# A055851: a(n) and floor(a(n)/6) are both squares; i.e., squares that remain squares when written in base 6 and last digit is removed.

The programs for A055851, the canonical program `A055851.P9279442280682401618` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055851 has offset 1).

The definition of A055851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055851.P9279442280682401618

`A204518(n+1)²`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055851

/-- `A204518(n+1)²` -/
def P9279442280682401618.Spec : Prop :=
  ∀ n, P9279442280682401618.a n = A055851 (n + 1)

theorem P9279442280682401618.correct : P9279442280682401618.Spec := by
  intro n
  simp only [A055851, Nat.add_sub_cancel]

end A055851

/-! ## A055851.P17428997595132554071

`A204518(n+1)^A000034(2*n+1)`
-/

namespace A055851.P17428997595132554071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204518 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A055851.P17428997595132554071

namespace A055851

/-- `A204518(n+1)^A000034(2*n+1)` -/
def P17428997595132554071.Spec : Prop :=
  ∀ n, P17428997595132554071.a n = (A055851 (n + 1) : ℚ)

end A055851

/-! ## A055851.P6340491642878829036

`A204518(n+1)^A020639(A004277(n))`
-/

namespace A055851.P6340491642878829036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204518 (n + 1) : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A055851.P6340491642878829036

namespace A055851

/-- `A204518(n+1)^A020639(A004277(n))` -/
def P6340491642878829036.Spec : Prop :=
  ∀ n, P6340491642878829036.a n = (A055851 (n + 1) : ℚ)

end A055851

/-! ## A055851.P7341314702113534168

`A204518(n+1)^A000005(A126715(n))`
-/

namespace A055851.P7341314702113534168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204518 (n + 1) : ℚ) ^ (A000005 (A126715 n).toNat : ℤ)

end

end A055851.P7341314702113534168

namespace A055851

/-- `A204518(n+1)^A000005(A126715(n))` -/
def P7341314702113534168.Spec : Prop :=
  ∀ n, P7341314702113534168.a n = (A055851 (n + 1) : ℚ)

end A055851

/-! ## A055851.P15776622674325901392

`A204518(n+1)^A020639(A004273(n)+1)`
-/

namespace A055851.P15776622674325901392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204518 (n + 1) : ℚ) ^ (A020639 (A004273 n + 1).toNat : ℤ)

end

end A055851.P15776622674325901392

namespace A055851

/-- `A204518(n+1)^A020639(A004273(n)+1)` -/
def P15776622674325901392.Spec : Prop :=
  ∀ n, P15776622674325901392.a n = (A055851 (n + 1) : ℚ)

end A055851

/-! ## A055851.P17870774727740388264

`A204518(n+1)^A000005(A257244(2*n+1))`
-/

namespace A055851.P17870774727740388264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204518 (n + 1) : ℚ) ^ (A000005 (A257244 (2 * n + 1)).toNat : ℤ)

end

end A055851.P17870774727740388264

namespace A055851

/-- `A204518(n+1)^A000005(A257244(2*n+1))` -/
def P17870774727740388264.Spec : Prop :=
  ∀ n, P17870774727740388264.a n = (A055851 (n + 1) : ℚ)

end A055851

/-! ## A055851.P2869893779153878242

`A204518(n+1)^A001316(A006519(∑[n+1]+1))`
-/

namespace A055851.P2869893779153878242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204518 (n + 1) : ℚ) ^ (A001316 (A006519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat : ℤ)

end

end A055851.P2869893779153878242

namespace A055851

/-- `A204518(n+1)^A001316(A006519(∑[n+1]+1))` -/
def P2869893779153878242.Spec : Prop :=
  ∀ n, P2869893779153878242.a n = (A055851 (n + 1) : ℚ)

end A055851

/-! ## A055851.P725320751504577923

`A204518(n+1)^A014963(∏{digits}[n, 2^#])`
-/

namespace A055851.P725320751504577923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204518 (n + 1) : ℚ) ^ (A014963 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℤ)

end

end A055851.P725320751504577923

namespace A055851

/-- `A204518(n+1)^A014963(∏{digits}[n, 2^#])` -/
def P725320751504577923.Spec : Prop :=
  ∀ n, P725320751504577923.a n = (A055851 (n + 1) : ℚ)

end A055851

/-!
# A055852: Convolution of A055589 with A011782.

The programs for A055852, there is no canonical definition to state claims against.
-/

/-! ## A055852.P10528364190642794885

`A169793(n)-A169792(n)`
-/

namespace A055852.P10528364190642794885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169793 n - A169792 n

end

end A055852.P10528364190642794885

/-! ## A055852.P9560554807504625433

`∑[A169793(n)]-A169793(n%(n+1))`
-/

namespace A055852.P9560554807504625433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A169793 (n % (n + 1))

end

end A055852.P9560554807504625433

/-! ## A055852.P2010501837732011528

`2*A055853(n)-∑[A055853(n)]`
-/

namespace A055852.P2010501837732011528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055853 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055852.P2010501837732011528

/-! ## A055852.P17905196886432076244

`∑[A062110(A166136(n+4))]`
-/

namespace A055852.P17905196886432076244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A166136 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055852.P17905196886432076244

/-! ## A055852.P16319522350603858530

`∑[A062110(A056115(n)+21)]`
-/

namespace A055852.P16319522350603858530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A056115 n + 21).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055852.P16319522350603858530

/-! ## A055852.P13671786564436047686

`∑[A062110(Δ[A264443(n)]+10)]`
-/

namespace A055852.P13671786564436047686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (f2 (n + 1) - f2 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055852.P13671786564436047686

/-! ## A055852.P10248101709229088563

`∑[A062110(A056000(n+1)+16)]`
-/

namespace A055852.P10248101709229088563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A056000 (n + 1) + 16).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055852.P10248101709229088563

/-! ## A055852.P10825168406146433755

`(1-A000007(n))*A106195(A155212(n)+13)`
-/

namespace A055852.P10825168406146433755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A106195 (A155212 n + 13).toNat

end

end A055852.P10825168406146433755

/-! ## A055852.P9858949925071395462

`A049600((n+4)²-∑[n+1])`
-/

namespace A055852.P9858949925071395462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055852.P9858949925071395462

/-! ## A055852.P6072832554454101555

`A049600(A055999(n+3))%A196283(n+1)`
-/

namespace A055852.P6072832554454101555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049600 (A055999 (n + 3)).toNat) (A196283 (n + 1))

end

end A055852.P6072832554454101555

/-! ## A055852.P13547905519997514438

`A049600(A055999(n+3))%A226201(n)`
-/

namespace A055852.P13547905519997514438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049600 (A055999 (n + 3)).toNat) (A226201 n)

end

end A055852.P13547905519997514438

/-!
# A055853: Convolution of A055852 with A011782.

The programs for A055853, there is no canonical definition to state claims against.
-/

/-! ## A055853.P8555987633964613114

`A169794(n)-A169793(n)`
-/

namespace A055853.P8555987633964613114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169794 n - A169793 n

end

end A055853.P8555987633964613114

/-! ## A055853.P4562584107416617954

`2*A055854(n)-∑[A055854(n)]`
-/

namespace A055853.P4562584107416617954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055854 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055853.P4562584107416617954

/-! ## A055853.P2000831751778785919

`∑[A062110(A000096(n+5)+8)]`
-/

namespace A055853.P2000831751778785919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A000096 (n + 5) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055853.P2000831751778785919

/-! ## A055853.P11361712227229111161

`∑[A062110(A000217(n+6)+7)]`
-/

namespace A055853.P11361712227229111161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A000217 (n + 6) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055853.P11361712227229111161

/-! ## A055853.P3336103179264102661

`A049600(A000217(n+7)-7)`
-/

namespace A055853.P3336103179264102661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A000217 (n + 7) - 7).toNat

end

end A055853.P3336103179264102661

/-! ## A055853.P793836991020102617

`A049600(A000124(n+7)-8)`
-/

namespace A055853.P793836991020102617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A000124 (n + 7) - 8).toNat

end

end A055853.P793836991020102617

/-! ## A055853.P15830165426370461728

`A049600(eq[7, A004736(n+1)])`
-/

namespace A055853.P15830165426370461728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055853.P15830165426370461728

/-! ## A055853.P2982502327380851931

`A049600(2*n+A000096(n+4)+7)`
-/

namespace A055853.P2982502327380851931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 ((2 * n : ℤ) + (A000096 (n + 4) + 7)).toNat

end

end A055853.P2982502327380851931

/-!
# A055854: Convolution of A055853 with A011782.

The programs for A055854, there is no canonical definition to state claims against.
-/

/-! ## A055854.P9274498058994177470

`A169795(n)-A169794(n)`
-/

namespace A055854.P9274498058994177470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169795 n - A169794 n

end

end A055854.P9274498058994177470

/-! ## A055854.P15180041257108949563

`2*A055855(n)-∑[A055855(n)]`
-/

namespace A055854.P15180041257108949563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055855 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055854.P15180041257108949563

/-! ## A055854.P9693795773732424316

`A049600(eq[7, A025581(n)])`
-/

namespace A055854.P9693795773732424316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055854.P9693795773732424316

/-! ## A055854.P5959800810415328630

`A049600(A055999(n+5)-2)`
-/

namespace A055854.P5959800810415328630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A055999 (n + 5) - 2).toNat

end

end A055854.P5959800810415328630

/-! ## A055854.P5907027038028253161

`A049600(A000217(n+8)-8)`
-/

namespace A055854.P5907027038028253161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A000217 (n + 8) - 8).toNat

end

end A055854.P5907027038028253161

/-! ## A055854.P17706533625854335277

`A049600(A046691(A020715(n))-4)`
-/

namespace A055854.P17706533625854335277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A046691 (A020715 n).toNat - 4).toNat

end

end A055854.P17706533625854335277

/-!
# A055855: Convolution of A055854 with A011782.

The programs for A055855, there is no canonical definition to state claims against.
-/

/-! ## A055855.P10322185169537738496

`A169796(n)-A169795(n)`
-/

namespace A055855.P10322185169537738496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169796 n - A169795 n

end

end A055855.P10322185169537738496

/-! ## A055855.P14454791030083705407

`A049600(A027379(n+7)-6)`
-/

namespace A055855.P14454791030083705407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A027379 (n + 7) - 6).toNat

end

end A055855.P14454791030083705407

/-! ## A055855.P3766186816483270797

`A049600(A000217(n+9)-9)`
-/

namespace A055855.P3766186816483270797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A000217 (n + 9) - 9).toNat

end

end A055855.P3766186816483270797

/-! ## A055855.P6469968138950843796

`A049600(A052905(n+5)+n+5)`
-/

namespace A055855.P6469968138950843796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A052905 (n + 5) + (n + 5 : ℤ)).toNat

end

end A055855.P6469968138950843796

/-! ## A055855.P15388946690515738830

`A049600(A016777(n+5)+A000096(n+5))`
-/

namespace A055855.P15388946690515738830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A016777 (n + 5) + A000096 (n + 5)).toNat

end

end A055855.P15388946690515738830

/-! ## A055855.P3294266400106913306

`A049600(A000124(n+12)-A086822(n+14))`
-/

namespace A055855.P3294266400106913306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A000124 (n + 12) - A086822 (n + 14)).toNat

end

end A055855.P3294266400106913306

/-!
# A055856: Susceptibility series H_4 for 2-dimensional Ising model (divided by 2).

The programs for A055856, there is no canonical definition to state claims against.
-/

/-! ## A055856.P760023367651381517

`A068385(A007840(n))+A055920(n)`
-/

namespace A055856.P760023367651381517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068385 (A007840 n).toNat + A055920 n

end

end A055856.P760023367651381517

/-! ## A055856.P2821242266999854936

`A068385(A054410(n))+A055920(n)`
-/

namespace A055856.P2821242266999854936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068385 (A054410 n).toNat + A055920 n

end

end A055856.P2821242266999854936

/-!
# A055859: a(n) and floor(a(n)/7) are both squares; i.e., squares which remain squares when written in base 7 and last digit is removed.

The programs for A055859, there is no canonical definition to state claims against.
-/

/-! ## A055859.P1916596322861852179

`A204516(n+1)²`
-/

namespace A055859.P1916596322861852179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204516 (n + 1) ^ 2

end

end A055859.P1916596322861852179

/-! ## A055859.P8983766056118316630

`A204516(n+1)^A020639(2*(n+2))`
-/

namespace A055859.P8983766056118316630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204516 (n + 1) : ℚ) ^ (A020639 (2 * (n + 2)) : ℤ)

end

end A055859.P8983766056118316630

/-! ## A055859.P7320572609240440914

`A204516(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A055859.P7320572609240440914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204516 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A055859.P7320572609240440914

/-! ## A055859.P12451053053310373578

`A204516(n+1)^A000005(record[A000010(n+1)+1])`
-/

namespace A055859.P12451053053310373578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204516 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A055859.P12451053053310373578

/-! ## A055859.P3729083482248162598

`A204516(n+1)^A000005(eq[2, A000005(n+1)]+1)`
-/

namespace A055859.P3729083482248162598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204516 (n + 1) : ℚ) ^ (A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℤ)

end

end A055859.P3729083482248162598

/-!
# A055860: a(n) = A000169(n+1) if n > 0; a(0) = 0.

The programs for A055860, there is no canonical definition to state claims against.
-/

/-! ## A055860.P15781475096166551917

`(n+1)^n*ceil(tanh(n))`
-/

namespace A055860.P15781475096166551917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) * ⌈Real.tanh (n : ℝ)⌉

end

end A055860.P15781475096166551917

/-! ## A055860.P11781835823518402650

`(n+1)^n-floor(acot(n))`
-/

namespace A055860.P11781835823518402650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A055860.P11781835823518402650

/-! ## A055860.P5783205424240775082

`(n+1)^n*round(tanh(n))`
-/

namespace A055860.P5783205424240775082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) * SequenceMachineLib.roundAway (Real.tanh (n : ℝ))

end

end A055860.P5783205424240775082

/-! ## A055860.P11637052761778183192

`ceil((n+1)^n-acot(n))`
-/

namespace A055860.P11637052761778183192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ n : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A055860.P11637052761778183192

/-! ## A055860.P13212299957502973507

`C((n+1)^n, ceil(acot(n)))`
-/

namespace A055860.P13212299957502973507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ n) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A055860.P13212299957502973507

/-! ## A055860.P2107166934840270630

`(n+1)^n-∏{d}[n, log(#)]`
-/

namespace A055860.P2107166934840270630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℝ) - ∏ d ∈ Nat.divisors (f1 n), Real.log (d : ℝ)

end

end A055860.P2107166934840270630

/-! ## A055860.P8952441764488918867

`(n+1)^n-floor(cos(n)²)`
-/

namespace A055860.P8952441764488918867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - ⌊Real.cos (n : ℝ) ^ 2⌋

end

end A055860.P8952441764488918867

/-! ## A055860.P8694952767396429124

`ceil((n+1)^n-cos(n)²)`
-/

namespace A055860.P8694952767396429124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ n : ℝ) - Real.cos (n : ℝ) ^ 2⌉

end

end A055860.P8694952767396429124

/-! ## A055860.P14291966362204513999

`(n+1)^n-C(2, n+2)`
-/

namespace A055860.P14291966362204513999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

end

end A055860.P14291966362204513999

/-!
# A055861: Essentially A053506 but with leading 0 (instead of 1) and offset 0.

The programs for A055861, there is no canonical definition to state claims against.
-/

/-! ## A055861.P9683558318050907812

`and(n*(n+1)^(n-1), -2)`
-/

namespace A055861.P9683558318050907812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (-2)

end

end A055861.P9683558318050907812

/-! ## A055861.P7320763044192456906

`(n-char[1])*(n+1)^(n-1)`
-/

namespace A055861.P7320763044192456906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A055861.P7320763044192456906

/-! ## A055861.P10475287911424297674

`or(1, n*(n+1)^(n-1))-1`
-/

namespace A055861.P10475287911424297674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((n : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) - 1

end

end A055861.P10475287911424297674

/-! ## A055861.P4614223635169719829

`n*(or(1, 2*n)-n)^(n-1)-char[1]`
-/

namespace A055861.P4614223635169719829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.lor 1 (2 * n) : ℤ) - (n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A055861.P4614223635169719829

/-! ## A055861.P17536935288222808088

`A053506(1-char[1]+n)`
-/

namespace A055861.P17536935288222808088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053506 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A055861.P17536935288222808088

/-! ## A055861.P13865086942707740124

`xor(char[1], A053506(n+1))`
-/

namespace A055861.P13865086942707740124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A053506 (n + 1))

end

end A055861.P13865086942707740124

/-! ## A055861.P8888781807534889100

`lcm(A000272(n+1), A199969(n+1))`
-/

namespace A055861.P8888781807534889100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000272 (n + 1)) (A199969 (n + 1))

end

end A055861.P8888781807534889100

/-! ## A055861.P17472036339315504491

`lcm(A000272(n+1), A055865(A028310(n)))`
-/

namespace A055861.P17472036339315504491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000272 (n + 1)) (A055865 (A028310 n).toNat)

end

end A055861.P17472036339315504491

/-!
# A055862: Fourth column of triangle A055858.

The programs for A055862, there is no canonical definition to state claims against.
-/

/-! ## A055862.P11660052293248094283

`(n+1)*A055070(round(acot(n)+n))`
-/

namespace A055862.P11660052293248094283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055070 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A055862.P11660052293248094283

/-! ## A055862.P14585108231839313758

`A055070(abs(1-n)+1)*(n+1)`
-/

namespace A055862.P14585108231839313758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055070 (|1 - (n : ℤ)| + 1).toNat * (n + 1 : ℤ)

end

end A055862.P14585108231839313758

/-! ## A055862.P6604396467425548348

`(n+1)*A055070(round(sqrt(n²+1)))`
-/

namespace A055862.P6604396467425548348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055070 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A055862.P6604396467425548348

/-!
# A055863: Fifth column of triangle A055858.

The programs for A055863, there is no canonical definition to state claims against.
-/

/-! ## A055863.P6021133481544619931

`(n+1)*A055867(round(acot(n)+n))`
-/

namespace A055863.P6021133481544619931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055867 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A055863.P6021133481544619931

/-! ## A055863.P10965570394292491488

`(n+1)*A055867(A028310(n))`
-/

namespace A055863.P10965570394292491488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055867 (A028310 n).toNat

end

end A055863.P10965570394292491488

/-! ## A055863.P7976999064929593252

`A055867(A028310(n))*A326178(n)`
-/

namespace A055863.P7976999064929593252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055867 (A028310 n).toNat * A326178 n

end

end A055863.P7976999064929593252

/-! ## A055863.P14395905242355591953

`A055867(A028310(n))*A059897(A000124(n))`
-/

namespace A055863.P14395905242355591953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055867 (A028310 n).toNat * A059897 (A000124 n).toNat

end

end A055863.P14395905242355591953

/-! ## A055863.P5016168226237193103

`A055858(A145018(n+1))%A101460(n)`
-/

namespace A055863.P5016168226237193103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055858 (A145018 (n + 1)).toNat) (A101460 n)

end

end A055863.P5016168226237193103

/-!
# A055864: Coefficient triangle for certain polynomials.

The programs for A055864, the canonical program `A055864.P3727447162581188383` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055864 has offset 1).

The definition of A055864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055864.P3727447162581188383

`A003057(n+2)^A025581(n)*A076112(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A055864

/-- `A003057(n+2)^A025581(n)*A076112(n+1)` -/
def P3727447162581188383.Spec : Prop :=
  ∀ n, P3727447162581188383.a n = (A055864 (n + 1) : ℚ)

end A055864

/-! ## A055864.P3134785693746440614

`A243060(or(A006503(n), A141214(n)))`
-/

namespace A055864.P3134785693746440614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (Int.lor (A006503 n) (A141214 n)).toNat

end

end A055864.P3134785693746440614

namespace A055864

/-- `A243060(or(A006503(n), A141214(n)))` -/
def P3134785693746440614.Spec : Prop :=
  ∀ n, P3134785693746440614.a n = A055864 (n + 1)

end A055864

/-! ## A055864.P3207396508265311347

`A374756(n+1)+A186733(A018099(n))`
-/

namespace A055864.P3207396508265311347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374756 (n + 1) + A186733 (A018099 n).toNat

end

end A055864.P3207396508265311347

namespace A055864

/-- `A374756(n+1)+A186733(A018099(n))` -/
def P3207396508265311347.Spec : Prop :=
  ∀ n, P3207396508265311347.a n = A055864 (n + 1)

end A055864

/-!
# A055865: Second column of triangle A055864.

The programs for A055865, there is no canonical definition to state claims against.
-/

/-! ## A055865.P4361636195187349837

`floor((n+1)*(n+2)^(n-1))`
-/

namespace A055865.P4361636195187349837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A055865.P4361636195187349837

/-! ## A055865.P8717842287012202566

`lcm(n+1, floor((n+2)^(n-1)))`
-/

namespace A055865.P8717842287012202566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ⌊(n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A055865.P8717842287012202566

/-! ## A055865.P3048305011487808580

`(n+2)^(n-1)*(n+1)%(2*n+1)`
-/

namespace A055865.P3048305011487808580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (((n + 1) % (2 * n + 1) : ℕ) : ℚ)

end

end A055865.P3048305011487808580

/-! ## A055865.P13160397886342522352

`2*A386015(n+1)`
-/

namespace A055865.P13160397886342522352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A386015 (n + 1)

end

end A055865.P13160397886342522352

/-! ## A055865.P5989924074713150972

`(n+2)^(n-1)*A087156(n+1)`
-/

namespace A055865.P5989924074713150972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A087156 (n + 1) : ℚ)

end

end A055865.P5989924074713150972

/-! ## A055865.P14153778903358675848

`(n+2)^(n-1)*A199969(n+2)`
-/

namespace A055865.P14153778903358675848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A199969 (n + 2) : ℚ)

end

end A055865.P14153778903358675848

/-! ## A055865.P7108776668640407996

`A379612(n+1)-A007334(n+2)`
-/

namespace A055865.P7108776668640407996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379612 (n + 1) - A007334 (n + 2)

end

end A055865.P7108776668640407996

/-! ## A055865.P3793690246461322956

`record[A077385(2*(n+1))-A077385(2*n+1)]`
-/

namespace A055865.P3793690246461322956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077385 (2 * (n + 1)) - A077385 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055865.P3793690246461322956

/-!
# A055866: Largest number that has the same number of digits in base 10 and base n, or 0 if no such number exists.

The programs for A055866, there is no canonical definition to state claims against.
-/

/-! ## A055866.P14371588624013119631

`A000027(A235028(n+3)^(A046654(n)+1)-1)`
-/

namespace A055866.P14371588624013119631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A235028 (n + 3) : ℚ) ^ (A046654 n + 1 : ℤ) - 1)).toNat

end

end A055866.P14371588624013119631

/-!
# A055867: Fourth column of triangle A055864.

The programs for A055867, there is no canonical definition to state claims against.
-/

/-! ## A055867.P16665310474515141643

`(n+1)^3*floor((n+2)^(n-3))`
-/

namespace A055867.P16665310474515141643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * ⌊(n + 2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

end

end A055867.P16665310474515141643

/-! ## A055867.P6916845687663204274

`lcm((n+1)^3, floor((n+2)^(n-3)))`
-/

namespace A055867.P6916845687663204274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 3 : ℤ) ⌊(n + 2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

end

end A055867.P6916845687663204274

/-! ## A055867.P4613467777679595660

`A055863(n+1)/(n+2)`
-/

namespace A055867.P4613467777679595660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055863 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A055867.P4613467777679595660

/-!
# A055868: Fifth column of triangle A055864.

The programs for A055868, there is no canonical definition to state claims against.
-/

/-! ## A055868.P996064756684178840

`lcm((n+1)^4, A198315(A001644(n)))`
-/

namespace A055868.P996064756684178840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 4 : ℤ) (A198315 (A001644 n).toNat)

end

end A055868.P996064756684178840

/-! ## A055868.P10289993007963625904

`lcm((n+1)²², A068933(A000272(n)))`
-/

namespace A055868.P10289993007963625904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n + 1) ^ 2) ^ 2 : ℤ) (A068933 (A000272 n).toNat)

end

end A055868.P10289993007963625904

/-!
# A055869: a(n) = (n+1)^n - n^n.

The programs for A055869, there is no canonical definition to state claims against.
-/

/-! ## A055869.P959114105398589619

`(n+2)^(n+1)-(n+1)^(n+1)`
-/

namespace A055869.P959114105398589619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ (n + 1) : ℤ) - ((n + 1) ^ (n + 1) : ℤ)

end

end A055869.P959114105398589619

/-! ## A055869.P10790933125914415930

`A397048(∑[n+1]+1)`
-/

namespace A055869.P10790933125914415930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397048 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055869.P10790933125914415930

/-! ## A055869.P1357723411950245933

`A066275(n+2)/(n+1)`
-/

namespace A055869.P1357723411950245933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066275 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A055869.P1357723411950245933

/-! ## A055869.P1181086934856867801

`A060226(n+2)/(n+2)`
-/

namespace A055869.P1181086934856867801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060226 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A055869.P1181086934856867801

/-! ## A055869.P10605525671446960425

`Δ[A060946(n+1)-A001923(n)]`
-/

namespace A055869.P10605525671446960425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060946 (n + 1) - A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055869.P10605525671446960425

/-! ## A055869.P7614097770062415160

`record[A095888(n+2)-A071207(n+1)]`
-/

namespace A055869.P7614097770062415160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (n + 2) - A071207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055869.P7614097770062415160

/-! ## A055869.P7907882271774267989

`record[A095890(n+2)-A071207(n+1)]`
-/

namespace A055869.P7907882271774267989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095890 (n + 2) - A071207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055869.P7907882271774267989

/-!
# A055870: Signed Fibonomial triangle.

The programs for A055870, there is no canonical definition to state claims against.
-/

/-! ## A055870.P11071839480704240607

`A010048(n)*A087960(A002262(n))`
-/

namespace A055870.P11071839480704240607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 n * A087960 (A002262 n).toNat

end

end A055870.P11071839480704240607

/-! ## A055870.P6032622364583939673

`A010048(n)*A033999(A112367(n))`
-/

namespace A055870.P6032622364583939673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 n * A033999 (A112367 n).toNat

end

end A055870.P6032622364583939673

/-! ## A055870.P4033521982131783167

`A010048(n)*A057077(A002260(n+1))`
-/

namespace A055870.P4033521982131783167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 n * A057077 (A002260 (n + 1)).toNat

end

end A055870.P4033521982131783167

/-! ## A055870.P4594777815186155778

`A010048(n)*A087960(2*A112367(n))`
-/

namespace A055870.P4594777815186155778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 n * A087960 (2 * A112367 n).toNat

end

end A055870.P4594777815186155778

/-! ## A055870.P16272635864134998099

`A010048(abs(1-n)+1)/A057077(A002260(n+1))`
-/

namespace A055870.P16272635864134998099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010048 (|1 - (n : ℤ)| + 1).toNat : ℚ) / (A057077 (A002260 (n + 1)).toNat : ℚ)

end

end A055870.P16272635864134998099

/-! ## A055870.P9865196448117651950

`A010048(n)/A087960(A002262(n))^A000040(n+1)`
-/

namespace A055870.P9865196448117651950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010048 n : ℚ) / (A087960 (A002262 n).toNat : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A055870.P9865196448117651950

/-! ## A055870.P17609514345832258314

`A010048(n)/A087960(A002262(n))^A127990(n+1)`
-/

namespace A055870.P17609514345832258314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010048 n : ℚ) / (A087960 (A002262 n).toNat : ℚ) ^ (A127990 (n + 1) : ℤ)

end

end A055870.P17609514345832258314

/-! ## A055870.P7463211010088514157

`A010048(n)*A087960(A112367(n)²)`
-/

namespace A055870.P7463211010088514157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 n * A087960 (A112367 n ^ 2).toNat

end

end A055870.P7463211010088514157

/-! ## A055870.P15630370831154011397

`A010048(n)/A033999(A112367(n)²)`
-/

namespace A055870.P15630370831154011397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010048 n : ℚ) / (A033999 (A112367 n ^ 2).toNat : ℚ)

end

end A055870.P15630370831154011397

/-! ## A055870.P1221905877008938802

`A010048(n)*A056588(n)/A126770(n)`
-/

namespace A055870.P1221905877008938802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010048 n * A056588 n : ℚ) / (A126770 n : ℚ)

end

end A055870.P1221905877008938802

/-!
# A055872: a(n) and floor(a(n)/8) are both squares; i.e., squares that remain squares when written in base 8 and last digit is removed.

The programs for A055872, the canonical program `A055872.P16500589934089061797` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055872 has offset 1).

The definition of A055872 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204514, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055872.P16500589934089061797

`A204514(n+1)²`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055872

/-- `A204514(n+1)²` -/
def P16500589934089061797.Spec : Prop :=
  ∀ n, P16500589934089061797.a n = A055872 (n + 1)

theorem P16500589934089061797.correct : P16500589934089061797.Spec := by
  intro n
  simp only [A055872, Nat.add_sub_cancel]

end A055872

/-! ## A055872.P14195532378326623876

`A204514(n+1)^(A000007(n)+2)`
-/

namespace A055872.P14195532378326623876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204514 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A055872.P14195532378326623876

namespace A055872

/-- `A204514(n+1)^(A000007(n)+2)` -/
def P14195532378326623876.Spec : Prop :=
  ∀ n, P14195532378326623876.a n = (A055872 (n + 1) : ℚ)

end A055872

/-! ## A055872.P18098922215790247408

`A204514(n+1)^A141310(2*n+1)`
-/

namespace A055872.P18098922215790247408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204514 (n + 1) : ℚ) ^ (A141310 (2 * n + 1) : ℤ)

end

end A055872.P18098922215790247408

namespace A055872

/-- `A204514(n+1)^A141310(2*n+1)` -/
def P18098922215790247408.Spec : Prop :=
  ∀ n, P18098922215790247408.a n = (A055872 (n + 1) : ℚ)

end A055872

/-! ## A055872.P708946763691641385

`A204514(n+1)^A020639(13*26*(n+1))`
-/

namespace A055872.P708946763691641385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204514 (n + 1) : ℚ) ^ (A020639 (13 * (26 * (n + 1))) : ℤ)

end

end A055872.P708946763691641385

namespace A055872

/-- `A204514(n+1)^A020639(13*26*(n+1))` -/
def P708946763691641385.Spec : Prop :=
  ∀ n, P708946763691641385.a n = (A055872 (n + 1) : ℚ)

end A055872

/-! ## A055872.P9812688549677749851

`A204514(n+1)^A000005(A126715(n))`
-/

namespace A055872.P9812688549677749851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204514 (n + 1) : ℚ) ^ (A000005 (A126715 n).toNat : ℤ)

end

end A055872.P9812688549677749851

namespace A055872

/-- `A204514(n+1)^A000005(A126715(n))` -/
def P9812688549677749851.Spec : Prop :=
  ∀ n, P9812688549677749851.a n = (A055872 (n + 1) : ℚ)

end A055872

/-! ## A055872.P3608205372482909457

`A204514(n+1)^A000005(A257244(2*n+1))`
-/

namespace A055872.P3608205372482909457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204514 (n + 1) : ℚ) ^ (A000005 (A257244 (2 * n + 1)).toNat : ℤ)

end

end A055872.P3608205372482909457

namespace A055872

/-- `A204514(n+1)^A000005(A257244(2*n+1))` -/
def P3608205372482909457.Spec : Prop :=
  ∀ n, P3608205372482909457.a n = (A055872 (n + 1) : ℚ)

end A055872

/-! ## A055872.P4209456836483741043

`A204514(n+1)^A001316(A006519(∑[n+1]+1))`
-/

namespace A055872.P4209456836483741043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204514 (n + 1) : ℚ) ^ (A001316 (A006519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat : ℤ)

end

end A055872.P4209456836483741043

namespace A055872

/-- `A204514(n+1)^A001316(A006519(∑[n+1]+1))` -/
def P4209456836483741043.Spec : Prop :=
  ∀ n, P4209456836483741043.a n = (A055872 (n + 1) : ℚ)

end A055872

/-!
# A055873: a(0) = 1; a(n) = sum_{k=1 to d(n)} [a(n-k)] where d(n) is number of positive divisors of n.

The programs for A055873, there is no canonical definition to state claims against.
-/

/-! ## A055873.P840047809961059093

`A005555(A168470(n+1))`
-/

namespace A055873.P840047809961059093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A168470 (n + 1)).toNat

end

end A055873.P840047809961059093

/-! ## A055873.P11650408042763033431

`A128559(A112837(n)+A066739(n))`
-/

namespace A055873.P11650408042763033431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (A112837 n + A066739 n).toNat

end

end A055873.P11650408042763033431

/-! ## A055873.P11438676114226719778

`A128559(A182269(n)+A112837(n))`
-/

namespace A055873.P11438676114226719778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (A182269 n + A112837 n).toNat

end

end A055873.P11438676114226719778

/-! ## A055873.P6631089127029430452

`A122282(A351018(n)+A072707(n))`
-/

namespace A055873.P6631089127029430452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A351018 n + A072707 n).toNat

end

end A055873.P6631089127029430452

/-!
# A055874: a(n) = largest m such that 1, 2, ..., m divide n.

The programs for A055874, there is no canonical definition to state claims against.
-/

/-! ## A055874.P10972658023908356716

`A007978(n+1)-1`
-/

namespace A055874.P10972658023908356716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (n + 1) - 1

end

end A055874.P10972658023908356716

/-! ## A055874.P14827819215618376392

`A346563(n+1)-(n+2)`
-/

namespace A055874.P14827819215618376392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346563 (n + 1) - (n + 2 : ℤ)

end

end A055874.P14827819215618376392

/-! ## A055874.P15972900679204043321

`(n+1)/A350509(n+1)`
-/

namespace A055874.P15972900679204043321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A350509 (n + 1) : ℚ)

end

end A055874.P15972900679204043321

/-! ## A055874.P13457872756994888708

`A071222(n)-A061853(n+1)`
-/

namespace A055874.P13457872756994888708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n - A061853 (n + 1)

end

end A055874.P13457872756994888708

/-! ## A055874.P2490377053612688982

`A350509(n+1)-A350576(n+1)`
-/

namespace A055874.P2490377053612688982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350509 (n + 1) - A350576 (n + 1)

end

end A055874.P2490377053612688982

/-! ## A055874.P1002077370975241453

`A053669(n+1)-(A061853(n+1)+1)`
-/

namespace A055874.P1002077370975241453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) - (A061853 (n + 1) + 1)

end

end A055874.P1002077370975241453

/-! ## A055874.P14518202303937951808

`A058197(n+1)%A007978(n+1)`
-/

namespace A055874.P14518202303937951808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A007978 (n + 1))

end

end A055874.P14518202303937951808

/-! ## A055874.P490532930546382819

`A199968(A008593(n+1))-1`
-/

namespace A055874.P490532930546382819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A008593 (n + 1)).toNat - 1

end

end A055874.P490532930546382819

/-! ## A055874.P13429833366929074578

`A199968(A109052(n+1))-1`
-/

namespace A055874.P13429833366929074578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A109052 (n + 1)).toNat - 1

end

end A055874.P13429833366929074578

/-! ## A055874.P3337614526442526362

`A199968(A008595(n+1))-1`
-/

namespace A055874.P3337614526442526362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A008595 (n + 1)).toNat - 1

end

end A055874.P3337614526442526362

/-! ## A055874.P12219380185041833278

`A199968(A008599(n+1))-1`
-/

namespace A055874.P12219380185041833278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A008599 (n + 1)).toNat - 1

end

end A055874.P12219380185041833278

/-! ## A055874.P11167572928439633555

`A199968(A008601(n+1))-1`
-/

namespace A055874.P11167572928439633555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A008601 (n + 1)).toNat - 1

end

end A055874.P11167572928439633555

/-! ## A055874.P3730736026757073706

`A199968(A008605(n+1))-1`
-/

namespace A055874.P3730736026757073706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A008605 (n + 1)).toNat - 1

end

end A055874.P3730736026757073706

/-! ## A055874.P11167103423764274052

`val(A034729(n+1)+1, 2)`
-/

namespace A055874.P11167103423764274052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034729 (n + 1) + 1).toNat 2

end

end A055874.P11167103423764274052

/-! ## A055874.P15891132592221712222

`A166118(n+1)%A007978(n+1)`
-/

namespace A055874.P15891132592221712222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166118 (n + 1)) (A007978 (n + 1))

end

end A055874.P15891132592221712222

/-!
# A055875: a(0)=1, a(n) = prime(n^3).

The programs for A055875, there is no canonical definition to state claims against.
-/

/-! ## A055875.P970247052087060840

`A008578(n^3+1)`
-/

namespace A055875.P970247052087060840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n ^ 3 + 1)

end

end A055875.P970247052087060840

/-! ## A055875.P194803700095186244

`A075639(n^3+1)`
-/

namespace A055875.P194803700095186244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075639 (n ^ 3 + 1)

end

end A055875.P194803700095186244

/-! ## A055875.P2666634963942556122

`A028815(n^3)-1`
-/

namespace A055875.P2666634963942556122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n ^ 3) - 1

end

end A055875.P2666634963942556122

/-! ## A055875.P9831533567373140741

`A158611(n^3+2)`
-/

namespace A055875.P9831533567373140741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n ^ 3 + 2)

end

end A055875.P9831533567373140741

/-! ## A055875.P11295591705093328176

`A335402(n^3+2)`
-/

namespace A055875.P11295591705093328176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n ^ 3 + 2)

end

end A055875.P11295591705093328176

/-!
# A055876: a(n) = round( 1 + e^(n-2) ).

The programs for A055876, the canonical program `A055876.P10520984365672987521` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055876 has offset 1).

The definition of A055876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055876.P10520984365672987521

`round(exp(n-1))+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055876

/-- `round(exp(n-1))+1` -/
def P10520984365672987521.Spec : Prop :=
  ∀ n, P10520984365672987521.a n = A055876 (n + 1)

theorem P10520984365672987521.correct : P10520984365672987521.Spec := by
  intro n
  simp only [A055876, Nat.add_sub_cancel]

end A055876

/-! ## A055876.P8107969652147573997

`record[A056926(n)+A000227(A226005(n))]`
-/

namespace A055876.P8107969652147573997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n + A000227 (A226005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055876.P8107969652147573997

namespace A055876

/-- `record[A056926(n)+A000227(A226005(n))]` -/
def P8107969652147573997.Spec : Prop :=
  ∀ n, P8107969652147573997.a n = A055876 (n + 1)

end A055876

/-! ## A055876.P3313196835302359645

`record[A057427(n)+A000227(A226005(n))]`
-/

namespace A055876.P3313196835302359645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000227 (A226005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055876.P3313196835302359645

namespace A055876

/-- `record[A057427(n)+A000227(A226005(n))]` -/
def P3313196835302359645.Spec : Prop :=
  ∀ n, P3313196835302359645.a n = A055876 (n + 1)

end A055876

/-! ## A055876.P8743190228231104167

`record[A166486(n)+A000227(A226005(n))]`
-/

namespace A055876.P8743190228231104167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A000227 (A226005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055876.P8743190228231104167

namespace A055876

/-- `record[A166486(n)+A000227(A226005(n))]` -/
def P8743190228231104167.Spec : Prop :=
  ∀ n, P8743190228231104167.a n = A055876 (n + 1)

end A055876

/-! ## A055876.P15728724857253518999

`record[A000227(A226005(n))-A057428(n)]`
-/

namespace A055876.P15728724857253518999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000227 (A226005 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055876.P15728724857253518999

namespace A055876

/-- `record[A000227(A226005(n))-A057428(n)]` -/
def P15728724857253518999.Spec : Prop :=
  ∀ n, P15728724857253518999.a n = A055876 (n + 1)

end A055876

/-! ## A055876.P15992672230857601037

`record[A267084(n+1)+A000227(A226005(n))]`
-/

namespace A055876.P15992672230857601037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1) + A000227 (A226005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055876.P15992672230857601037

namespace A055876

/-- `record[A267084(n+1)+A000227(A226005(n))]` -/
def P15992672230857601037.Spec : Prop :=
  ∀ n, P15992672230857601037.a n = A055876 (n + 1)

end A055876

/-!
# A055878: Least positive sequence with Hankel transform {1,1,1,1,1,...}.

The programs for A055878, there is no canonical definition to state claims against.
-/

/-! ## A055878.P797970255939056407

`A055564(n-gcd(n, ∑[n])+1)`
-/

namespace A055878.P797970255939056407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055564 ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + 1).toNat

end

end A055878.P797970255939056407

/-! ## A055878.P4484383087511020612

`A055564(gcd(n+2, ∑[char[2*n]]))`
-/

namespace A055878.P4484383087511020612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055564 (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A055878.P4484383087511020612

/-! ## A055878.P8341837577303242640

`A055564(A158416(n))`
-/

namespace A055878.P8341837577303242640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055564 (A158416 n).toNat

end

end A055878.P8341837577303242640

/-! ## A055878.P13096802085066254135

`A055564(A142150(n)+1)`
-/

namespace A055878.P13096802085066254135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055564 (A142150 n + 1).toNat

end

end A055878.P13096802085066254135

/-!
# A055879: Least nondecreasing sequence with a(1) = 1 and Hankel transform {1,1,1,1,...}.

The programs for A055879, the canonical program `A055879.P6759021124133317183` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055879 has offset 1).

The definition of A055879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055879.P1733550684111738817

`A007317(∑[char[2*n]])`
-/

namespace A055879.P1733550684111738817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055879.P1733550684111738817

namespace A055879

/-- `A007317(∑[char[2*n]])` -/
def P1733550684111738817.Spec : Prop :=
  ∀ n, P1733550684111738817.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P18009604454857401536

`A181768(∑[char[2*n]])`
-/

namespace A055879.P18009604454857401536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055879.P18009604454857401536

namespace A055879

/-- `A181768(∑[char[2*n]])` -/
def P18009604454857401536.Spec : Prop :=
  ∀ n, P18009604454857401536.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P6759021124133317183

`A039658(n)+2-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055879

/-- `A039658(n)+2-a(n-1)` -/
def P6759021124133317183.Spec : Prop :=
  ∀ n, P6759021124133317183.a n = A055879 (n + 1)

theorem P6759021124133317183.correct : P6759021124133317183.Spec := by
  intro n
  simp only [A055879, Nat.add_sub_cancel]

end A055879

/-! ## A055879.P14165984737313843852

`A039658(A109613(n))/2+1`
-/

namespace A055879.P14165984737313843852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039658 (A109613 n).toNat : ℚ) / 2 + 1

end

end A055879.P14165984737313843852

namespace A055879

/-- `A039658(A109613(n))/2+1` -/
def P14165984737313843852.Spec : Prop :=
  ∀ n, P14165984737313843852.a n = (A055879 (n + 1) : ℚ)

end A055879

/-! ## A055879.P3499850460458738616

`A104259(∑[n-gcd(n, ∑[n])])`
-/

namespace A055879.P3499850460458738616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104259 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A055879.P3499850460458738616

namespace A055879

/-- `A104259(∑[n-gcd(n, ∑[n])])` -/
def P3499850460458738616.Spec : Prop :=
  ∀ n, P3499850460458738616.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P1679658381557456633

`A104259(A000217(A004526(n)))`
-/

namespace A055879.P1679658381557456633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104259 (A000217 (A004526 n).toNat).toNat

end

end A055879.P1679658381557456633

namespace A055879

/-- `A104259(A000217(A004526(n)))` -/
def P1679658381557456633.Spec : Prop :=
  ∀ n, P1679658381557456633.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P17127739626040689160

`A007317(A008619(n))%A292482(n)`
-/

namespace A055879.P17127739626040689160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007317 (A008619 n).toNat) (A292482 n)

end

end A055879.P17127739626040689160

namespace A055879

/-- `A007317(A008619(n))%A292482(n)` -/
def P17127739626040689160.Spec : Prop :=
  ∀ n, P17127739626040689160.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P5595559868844894962

`∑[A045868(n)-2*A045908(n)]`
-/

namespace A055879.P5595559868844894962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n - 2 * A045908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055879.P5595559868844894962

namespace A055879

/-- `∑[A045868(n)-2*A045908(n)]` -/
def P5595559868844894962.Spec : Prop :=
  ∀ n, P5595559868844894962.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P4315246457886729626

`A046697(n+1)-A024311(n+1)`
-/

namespace A055879.P4315246457886729626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046697 (n + 1) - A024311 (n + 1)

end

end A055879.P4315246457886729626

namespace A055879

/-- `A046697(n+1)-A024311(n+1)` -/
def P4315246457886729626.Spec : Prop :=
  ∀ n, P4315246457886729626.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P12909934094568673618

`A044045(n+1)-A030529(n+3)`
-/

namespace A055879.P12909934094568673618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (n + 1) - A030529 (n + 3)

end

end A055879.P12909934094568673618

namespace A055879

/-- `A044045(n+1)-A030529(n+3)` -/
def P12909934094568673618.Spec : Prop :=
  ∀ n, P12909934094568673618.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P1147053366515484117

`A038392(n+2)-A030529(n+3)`
-/

namespace A055879.P1147053366515484117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 2) - A030529 (n + 3)

end

end A055879.P1147053366515484117

namespace A055879

/-- `A038392(n+2)-A030529(n+3)` -/
def P1147053366515484117.Spec : Prop :=
  ∀ n, P1147053366515484117.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P17002716745704608325

`2*A044045(n+1)-A002212(n+1)`
-/

namespace A055879.P17002716745704608325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044045 (n + 1) - A002212 (n + 1)

end

end A055879.P17002716745704608325

namespace A055879

/-- `2*A044045(n+1)-A002212(n+1)` -/
def P17002716745704608325.Spec : Prop :=
  ∀ n, P17002716745704608325.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P10179327589755385731

`2*A038392(n+2)-A002212(n+1)`
-/

namespace A055879.P10179327589755385731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038392 (n + 2) - A002212 (n + 1)

end

end A055879.P10179327589755385731

namespace A055879

/-- `2*A038392(n+2)-A002212(n+1)` -/
def P10179327589755385731.Spec : Prop :=
  ∀ n, P10179327589755385731.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P6463041776037226448

`2*A044045(n+1)-A025238(n+2)`
-/

namespace A055879.P6463041776037226448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044045 (n + 1) - A025238 (n + 2)

end

end A055879.P6463041776037226448

namespace A055879

/-- `2*A044045(n+1)-A025238(n+2)` -/
def P6463041776037226448.Spec : Prop :=
  ∀ n, P6463041776037226448.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P13744007546858882448

`A002212(n+1)-2*A030529(n+3)`
-/

namespace A055879.P13744007546858882448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) - 2 * A030529 (n + 3)

end

end A055879.P13744007546858882448

namespace A055879

/-- `A002212(n+1)-2*A030529(n+3)` -/
def P13744007546858882448.Spec : Prop :=
  ∀ n, P13744007546858882448.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P6438791146297568181

`2*A038392(n+2)-A025238(n+2)`
-/

namespace A055879.P6438791146297568181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038392 (n + 2) - A025238 (n + 2)

end

end A055879.P6438791146297568181

namespace A055879

/-- `2*A038392(n+2)-A025238(n+2)` -/
def P6438791146297568181.Spec : Prop :=
  ∀ n, P6438791146297568181.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P4767523523029450302

`A038392(n+1)+A044046(n)-A024311(n+1)`
-/

namespace A055879.P4767523523029450302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) + (A044046 n - A024311 (n + 1))

end

end A055879.P4767523523029450302

namespace A055879

/-- `A038392(n+1)+A044046(n)-A024311(n+1)` -/
def P4767523523029450302.Spec : Prop :=
  ∀ n, P4767523523029450302.a n = A055879 (n + 1)

end A055879

/-! ## A055879.P6095952015857174864

`A106534(∑[(n+1)%∑[(n+1)%2]])`
-/

namespace A055879.P6095952015857174864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106534 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055879.P6095952015857174864

namespace A055879

/-- `A106534(∑[(n+1)%∑[(n+1)%2]])` -/
def P6095952015857174864.Spec : Prop :=
  ∀ n, P6095952015857174864.a n = A055879 (n + 1)

end A055879

/-!
# A055880: Quotients arising from sequence A053317.

The programs for A055880, there is no canonical definition to state claims against.
-/

/-! ## A055880.P18224941042179166594

`A053317(n+1)/Δ[A126646(n)]`
-/

namespace A055880.P18224941042179166594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053317 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A055880.P18224941042179166594

/-! ## A055880.P11330234899409661105

`A053317(n+1)/A000079(n+1)`
-/

namespace A055880.P11330234899409661105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053317 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A055880.P11330234899409661105

/-! ## A055880.P1452891996569356743

`A053317(n+1)/record[A077957(n+2)]`
-/

namespace A055880.P1452891996569356743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053317 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A055880.P1452891996569356743

/-! ## A055880.P3915131975537499789

`A053317(n+1)/A181821(Δ[A007504(n)])`
-/

namespace A055880.P3915131975537499789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053317 (n + 1) : ℚ) / (A181821 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A055880.P3915131975537499789

/-! ## A055880.P9636886466579278151

`A053317(n+1)/(A000225(n)+A000051(n))`
-/

namespace A055880.P9636886466579278151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053317 (n + 1) : ℚ) / (A000225 n + A000051 n : ℚ)

end

end A055880.P9636886466579278151

/-! ## A055880.P12044146303567116509

`A053317(n+1)/A050621(n+1)*A034478(n)`
-/

namespace A055880.P12044146303567116509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053317 (n + 1) : ℚ) / (A050621 (n + 1) : ℚ) * (A034478 n : ℚ)

end

end A055880.P12044146303567116509

/-! ## A055880.P5748061886937281736

`A050620(n+1)/A035014(n+1)*A053317(n+1)`
-/

namespace A055880.P5748061886937281736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050620 (n + 1) : ℚ) / (A035014 (n + 1) : ℚ) * (A053317 (n + 1) : ℚ)

end

end A055880.P5748061886937281736

/-!
# A055881: a(n) = largest m such that m! divides n.

The programs for A055881, the canonical program `A055881.P16218723346386416985` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055881 has offset 1).

The definition of A055881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055881.P9620654462052039471

`A230403(n+1)+1`
-/

namespace A055881.P9620654462052039471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (n + 1) + 1

end

end A055881.P9620654462052039471

namespace A055881

/-- `A230403(n+1)+1` -/
def P9620654462052039471.Spec : Prop :=
  ∀ n, P9620654462052039471.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P4329232390065037316

`ceil(ratio[A304036(n)])`
-/

namespace A055881.P4329232390065037316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A055881.P4329232390065037316

namespace A055881

/-- `ceil(ratio[A304036(n)])` -/
def P4329232390065037316.Spec : Prop :=
  ∀ n, P4329232390065037316.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P16218723346386416985

`∑{d}[n+1, A012245(#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055881

/-- `∑{d}[n+1, A012245(#)]` -/
def P16218723346386416985.Spec : Prop :=
  ∀ n, P16218723346386416985.a n = A055881 (n + 1)

theorem P16218723346386416985.correct : P16218723346386416985.Spec := by
  intro n
  simp only [A055881, Nat.add_sub_cancel]

end A055881

/-! ## A055881.P2414831721709754345

`∑{d}[n+1, A316341(#)]`
-/

namespace A055881.P2414831721709754345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316341 d

end

end A055881.P2414831721709754345

namespace A055881

/-- `∑{d}[n+1, A316341(#)]` -/
def P2414831721709754345.Spec : Prop :=
  ∀ n, P2414831721709754345.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P16232117400900697667

`A060502(A073575(n+1))`
-/

namespace A055881.P16232117400900697667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A073575 (n + 1)).toNat

end

end A055881.P16232117400900697667

namespace A055881

/-- `A060502(A073575(n+1))` -/
def P16232117400900697667.Spec : Prop :=
  ∀ n, P16232117400900697667.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P12760808930916376701

`A001511(A275727(n+1))`
-/

namespace A055881.P12760808930916376701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A275727 (n + 1)).toNat

end

end A055881.P12760808930916376701

namespace A055881

/-- `A001511(A275727(n+1))` -/
def P12760808930916376701.Spec : Prop :=
  ∀ n, P12760808930916376701.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P9385480242771998503

`Δ[A060832(n)]`
-/

namespace A055881.P9385480242771998503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055881.P9385480242771998503

namespace A055881

/-- `Δ[A060832(n)]` -/
def P9385480242771998503.Spec : Prop :=
  ∀ n, P9385480242771998503.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P2049398709105631455

`A060832(n+1)-A060832(n)`
-/

namespace A055881.P2049398709105631455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060832 (n + 1) - A060832 n

end

end A055881.P2049398709105631455

namespace A055881

/-- `A060832(n+1)-A060832(n)` -/
def P2049398709105631455.Spec : Prop :=
  ∀ n, P2049398709105631455.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P5380565795229249444

`A275832(Δ[lt[A275832(n), 2]])`
-/

namespace A055881.P5380565795229249444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A055881.P5380565795229249444

namespace A055881

/-- `A275832(Δ[lt[A275832(n), 2]])` -/
def P5380565795229249444.Spec : Prop :=
  ∀ n, P5380565795229249444.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P1752644231169108078

`A246359(A225901(n+1)+n)`
-/

namespace A055881.P1752644231169108078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A225901 (n + 1) + (n : ℤ)).toNat

end

end A055881.P1752644231169108078

namespace A055881

/-- `A246359(A225901(n+1)+n)` -/
def P1752644231169108078.Spec : Prop :=
  ∀ n, P1752644231169108078.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P10126979627823124711

`A275806(A225901(n+1)+n)`
-/

namespace A055881.P10126979627823124711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A225901 (n + 1) + (n : ℤ)).toNat

end

end A055881.P10126979627823124711

namespace A055881

/-- `A275806(A225901(n+1)+n)` -/
def P10126979627823124711.Spec : Prop :=
  ∀ n, P10126979627823124711.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P14919171061230623248

`A275811(A225901(n+1)+n)`
-/

namespace A055881.P14919171061230623248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 (A225901 (n + 1) + (n : ℤ)).toNat

end

end A055881.P14919171061230623248

namespace A055881

/-- `A275811(A225901(n+1)+n)` -/
def P14919171061230623248.Spec : Prop :=
  ∀ n, P14919171061230623248.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P10185443629155701862

`A230404(A153880(n+1)/2)`
-/

namespace A055881.P10185443629155701862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230404 (SequenceMachineLib.roundAway ((A153880 (n + 1) : ℚ) / 2)).toNat

end

end A055881.P10185443629155701862

namespace A055881

/-- `A230404(A153880(n+1)/2)` -/
def P10185443629155701862.Spec : Prop :=
  ∀ n, P10185443629155701862.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P1138732042062632462

`A230403(A153880(n+1))`
-/

namespace A055881.P1138732042062632462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (A153880 (n + 1)).toNat

end

end A055881.P1138732042062632462

namespace A055881

/-- `A230403(A153880(n+1))` -/
def P1138732042062632462.Spec : Prop :=
  ∀ n, P1138732042062632462.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P445072173107921237

`A055396(A275733(n+1))`
-/

namespace A055881.P445072173107921237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A275733 (n + 1)).toNat

end

end A055881.P445072173107921237

namespace A055881

/-- `A055396(A275733(n+1))` -/
def P445072173107921237.Spec : Prop :=
  ∀ n, P445072173107921237.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P7529815344788919939

`A230403(A255411(n+1))`
-/

namespace A055881.P7529815344788919939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (A255411 (n + 1)).toNat

end

end A055881.P7529815344788919939

namespace A055881

/-- `A230403(A255411(n+1))` -/
def P7529815344788919939.Spec : Prop :=
  ∀ n, P7529815344788919939.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P17469976454264054672

`A257510(A231720(n)+1)`
-/

namespace A055881.P17469976454264054672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257510 (A231720 n + 1).toNat

end

end A055881.P17469976454264054672

namespace A055881

/-- `A257510(A231720(n)+1)` -/
def P17469976454264054672.Spec : Prop :=
  ∀ n, P17469976454264054672.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P3722381365102057721

`A001511(A277012(n+1))`
-/

namespace A055881.P3722381365102057721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A277012 (n + 1)).toNat

end

end A055881.P3722381365102057721

namespace A055881

/-- `A001511(A277012(n+1))` -/
def P3722381365102057721.Spec : Prop :=
  ∀ n, P3722381365102057721.a n = A055881 (n + 1)

end A055881

/-! ## A055881.P3499984813746662739

`A002260(A286143(n+1))`
-/

namespace A055881.P3499984813746662739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286143 (n + 1)).toNat

end

end A055881.P3499984813746662739

namespace A055881

/-- `A002260(A286143(n+1))` -/
def P3499984813746662739.Spec : Prop :=
  ∀ n, P3499984813746662739.a n = A055881 (n + 1)

end A055881

/-!
# A055882: a(n) = 2^n*Bell(n). E.g.f.: exp(exp(2*x)-1).

The programs for A055882, there is no canonical definition to state claims against.
-/

/-! ## A055882.P13829815799360593127

`2^n*A000110(n)`
-/

namespace A055882.P13829815799360593127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000110 n

end

end A055882.P13829815799360593127

/-! ## A055882.P2222958714693791752

`abs(A292935(n))*2^n`
-/

namespace A055882.P2222958714693791752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| * (2 ^ n : ℤ)

end

end A055882.P2222958714693791752

/-! ## A055882.P17342222437151611685

`2^n*A011971(∑[n])`
-/

namespace A055882.P17342222437151611685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055882.P17342222437151611685

/-! ## A055882.P12811367625484091748

`2^n*A033306(∑[n])`
-/

namespace A055882.P12811367625484091748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A033306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055882.P12811367625484091748

/-! ## A055882.P13383026173692753090

`2^n*A049020(∑[n])`
-/

namespace A055882.P13383026173692753090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A049020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055882.P13383026173692753090

/-! ## A055882.P11577274230311407682

`2^n*A095149(∑[n])`
-/

namespace A055882.P11577274230311407682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055882.P11577274230311407682

/-! ## A055882.P1446671225579978625

`2^n*A108087(∑[n])`
-/

namespace A055882.P1446671225579978625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055882.P1446671225579978625

/-! ## A055882.P6467576063022741198

`2^n*A123081(∑[n])`
-/

namespace A055882.P6467576063022741198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055882.P6467576063022741198

/-! ## A055882.P17418877444709752236

`2^n*A186020(∑[n])`
-/

namespace A055882.P17418877444709752236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A186020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055882.P17418877444709752236

/-! ## A055882.P3374269279893801999

`2^n*A259691(∑[n])`
-/

namespace A055882.P3374269279893801999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A259691 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055882.P3374269279893801999

/-!
# A055883: Exponential transform of Pascal's triangle A007318.

The programs for A055883, there is no canonical definition to state claims against.
-/

/-! ## A055883.P10191354759219384319

`A007318(n)*A123081(n)`
-/

namespace A055883.P10191354759219384319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A123081 n

end

end A055883.P10191354759219384319

/-! ## A055883.P7490016454653707545

`sqrt(A008459(n))*A123081(n)`
-/

namespace A055883.P7490016454653707545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A123081 n : ℝ)

end

end A055883.P7490016454653707545

/-! ## A055883.P12096291727393109109

`A000110(A003056(n))*A007318(n)`
-/

namespace A055883.P12096291727393109109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A003056 n).toNat * A007318 n

end

end A055883.P12096291727393109109

/-! ## A055883.P2891748403554368264

`A007318(n)*A011971(A057944(n))`
-/

namespace A055883.P2891748403554368264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011971 (A057944 n).toNat

end

end A055883.P2891748403554368264

/-! ## A055883.P3369717399420315335

`A007318(n)*A293024(A025581(n)+n)`
-/

namespace A055883.P3369717399420315335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A293024 (A025581 n + (n : ℤ)).toNat

end

end A055883.P3369717399420315335

/-! ## A055883.P1942405569412370790

`A000110(A002024(n+1)-1)*A007318(n)`
-/

namespace A055883.P1942405569412370790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002024 (n + 1) - 1).toNat * A007318 n

end

end A055883.P1942405569412370790

/-!
# A055884: Euler transform of partition triangle A008284.

The programs for A055884, there is no canonical definition to state claims against.
-/

/-! ## A055884.P17817368676210591881

`A055889(n+1)-A067898(A269479(n+1))`
-/

namespace A055884.P17817368676210591881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055889 (n + 1) - A067898 (A269479 (n + 1)).toNat

end

end A055884.P17817368676210591881

/-! ## A055884.P3293071046327424975

`A055889(n+1)-A307598(A309651(n+1))`
-/

namespace A055884.P3293071046327424975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055889 (n + 1) - A307598 (A309651 (n + 1)).toNat

end

end A055884.P3293071046327424975

/-! ## A055884.P17500126218286565411

`A055889(n+1)-A000007(A145373(2*n+3))`
-/

namespace A055884.P17500126218286565411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055889 (n + 1) - A000007 (A145373 (2 * n + 3)).toNat

end

end A055884.P17500126218286565411

/-! ## A055884.P6525560311265220018

`A364912(lt[1, A063853(n+3)])`
-/

namespace A055884.P6525560311265220018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063853 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A055884.P6525560311265220018

/-! ## A055884.P385631531548002813

`A364912(comp[∑[n]]%A272770(2*n+3))`
-/

namespace A055884.P385631531548002813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A272770 (2 * n + 3))).toNat

end

end A055884.P385631531548002813

/-!
# A055885: Euler transform applied twice to partition triangle A008284.

The programs for A055885, there is no canonical definition to state claims against.
-/

/-! ## A055885.P425389463910619840

`round((A091438(n+1)%p?[A159284(n)])^ϕ)`
-/

namespace A055885.P425389463910619840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.tmod (A091438 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℝ) ^ Real.goldenRatio)

end

end A055885.P425389463910619840

/-! ## A055885.P9091369348528675987

`round((A185284(A091434(n))+A091438(n+1))^ϕ)`
-/

namespace A055885.P9091369348528675987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185284 (A091434 n).toNat + A091438 (n + 1) : ℝ) ^ Real.goldenRatio)

end

end A055885.P9091369348528675987

/-! ## A055885.P13879062136318390062

`round(A091438(n+1)^A061603(A171435(n+1))^ϕ)`
-/

namespace A055885.P13879062136318390062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A091438 (n + 1) : ℚ) ^ (A061603 (A171435 (n + 1)).toNat : ℤ) : ℝ) ^ Real.goldenRatio)

end

end A055885.P13879062136318390062

/-! ## A055885.P14617710902567192152

`round(A091438(n+1)^A061603(A303325(n+1))^ϕ)`
-/

namespace A055885.P14617710902567192152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A091438 (n + 1) : ℚ) ^ (A061603 (A303325 (n + 1)).toNat : ℤ) : ℝ) ^ Real.goldenRatio)

end

end A055885.P14617710902567192152

/-! ## A055885.P433882024077702034

`round(A001222(7^A091438(n+1))^ϕ)`
-/

namespace A055885.P433882024077702034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001222 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A091438 (n + 1) : ℤ))).toNat : ℝ) ^ Real.goldenRatio)

end

end A055885.P433882024077702034

/-!
# A055887: Number of ordered partitions of partitions.

The programs for A055887, there is no canonical definition to state claims against.
-/

/-! ## A055887.P11021195367764038369

`A143141(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A055887.P11021195367764038369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A143141 n + a (n - 1)

end

end A055887.P11021195367764038369

/-! ## A055887.P4561404527521561299

`A329385(2^n)`
-/

namespace A055887.P4561404527521561299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329385 (2 ^ n)

end

end A055887.P4561404527521561299

/-! ## A055887.P16658196978630052939

`A329385(A000079(n))+char[17]`
-/

namespace A055887.P16658196978630052939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329385 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A055887.P16658196978630052939

/-! ## A055887.P6474899135406730067

`A329385(Δ[A000051(n)])+char[29]`
-/

namespace A055887.P6474899135406730067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329385 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A055887.P6474899135406730067

/-! ## A055887.P14484035875345937593

`gcd(A000038(n), A329385(A000079(n)))`
-/

namespace A055887.P14484035875345937593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A329385 (A000079 n).toNat)

end

end A055887.P14484035875345937593

/-!
# A055888: Invert transform of partition triangle A008284.

The programs for A055888, there is no canonical definition to state claims against.
-/

/-! ## A055888.P7117288981893441240

`A208341(n)+A124764(A039755(n))`
-/

namespace A055888.P7117288981893441240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n + A124764 (A039755 n).toNat

end

end A055888.P7117288981893441240

/-! ## A055888.P18086221540987209815

`A062575(A248670(n+1))`
-/

namespace A055888.P18086221540987209815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062575 (A248670 (n + 1)).toNat

end

end A055888.P18086221540987209815

/-! ## A055888.P12056755064897817720

`A072649(A360434(n)^A172236(n+1))`
-/

namespace A055888.P12056755064897817720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (SequenceMachineLib.roundAway ((A360434 n : ℚ) ^ (A172236 (n + 1) : ℤ))).toNat

end

end A055888.P12056755064897817720

/-! ## A055888.P615448219689862999

`A039836(A261763(n))`
-/

namespace A055888.P615448219689862999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039836 (A261763 n).toNat

end

end A055888.P615448219689862999

/-! ## A055888.P13298719123043244299

`A062571(A260613(n))`
-/

namespace A055888.P13298719123043244299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062571 (A260613 n).toNat

end

end A055888.P13298719123043244299

/-!
# A055889: CIK transform of partition triangle A008284.

The programs for A055889, there is no canonical definition to state claims against.
-/

/-! ## A055889.P534410141795658683

`A003056(A003056(∑{d}[A144698(n+4), #]))`
-/

namespace A055889.P534410141795658683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144698 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003056 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)).toNat

end

end A055889.P534410141795658683

/-! ## A055889.P1074103426760977112

`A067898(A269479(n+1))+A055884(n+1)`
-/

namespace A055889.P1074103426760977112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A269479 (n + 1)).toNat + A055884 (n + 1)

end

end A055889.P1074103426760977112

/-! ## A055889.P5480453171726274642

`A307598(A309651(n+1))+A055884(n+1)`
-/

namespace A055889.P5480453171726274642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A309651 (n + 1)).toNat + A055884 (n + 1)

end

end A055889.P5480453171726274642

/-! ## A055889.P13490457763621502957

`A210790(n+1)-A037824(A235605(n+1))`
-/

namespace A055889.P13490457763621502957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210790 (n + 1) - A037824 (A235605 (n + 1)).toNat

end

end A055889.P13490457763621502957

/-! ## A055889.P9214885584505867717

`A185284(A013609(n))+A055884(n+1)`
-/

namespace A055889.P9214885584505867717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A013609 n).toNat + A055884 (n + 1)

end

end A055889.P9214885584505867717

/-!
# A055890: CIK transform of partition numbers A000041.

The programs for A055890, there is no canonical definition to state claims against.
-/

/-! ## A055890.P4388456315219438788

`∑{d}[A028310(n), A095975(#)]`
-/

namespace A055890.P4388456315219438788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A095975 d

end

end A055890.P4388456315219438788

/-! ## A055890.P14836376606384980969

`A000007(n)+∑{d}[n, A095975(#)]`
-/

namespace A055890.P14836376606384980969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A095975 d

end

end A055890.P14836376606384980969

/-! ## A055890.P15470219613814021092

`∑{d}[A008619(A004273(n)), A095975(#)]`
-/

namespace A055890.P15470219613814021092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A095975 d

end

end A055890.P15470219613814021092

/-! ## A055890.P11505732996345721449

`∑{d}[A001057(A004275(n+1)), A095975(#)]`
-/

namespace A055890.P11505732996345721449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A004275 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A095975 d

end

end A055890.P11505732996345721449

/-! ## A055890.P6722258097125935629

`∑{d}[2-A000122(n²)+n, A095975(#)]`
-/

namespace A055890.P6722258097125935629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000122 (n ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A095975 d

end

end A055890.P6722258097125935629

/-!
# A055891: CIK (necklace, indistinct, unlabeled) transform of powers of 2.

The programs for A055891, there is no canonical definition to state claims against.
-/

/-! ## A055891.P6273223883581567031

`lcm(2, A001868(n))-A000031(n)`
-/

namespace A055891.P6273223883581567031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A001868 n) : ℤ) - A000031 n

end

end A055891.P6273223883581567031

/-! ## A055891.P2647702390112481760

`abs(A001868(n)-A000031(A028310(n)))`
-/

namespace A055891.P2647702390112481760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001868 n - A000031 (A028310 n).toNat|

end

end A055891.P2647702390112481760

/-! ## A055891.P11636307516612521263

`A001868(n)-A000031(n)*A057427(n)`
-/

namespace A055891.P11636307516612521263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 n - A000031 n * A057427 n

end

end A055891.P11636307516612521263

/-! ## A055891.P15065825798041550531

`A000038(n)+A001868(n)-A000031(A028310(n))`
-/

namespace A055891.P15065825798041550531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A001868 n - A000031 (A028310 n).toNat)

end

end A055891.P15065825798041550531

/-! ## A055891.P6805062337575334562

`A001868(A028310(n))-A000031(n)-A000038(n)`
-/

namespace A055891.P6805062337575334562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (A028310 n).toNat - A000031 n - A000038 n

end

end A055891.P6805062337575334562

/-! ## A055891.P11537824052985798805

`A001868(n)-A000031(n)%A001692(n)`
-/

namespace A055891.P11537824052985798805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 n - Int.tmod (A000031 n) (A001692 n)

end

end A055891.P11537824052985798805

/-!
# A055892: Also aperiodic partitions of n into k parts.

The programs for A055892, there is no canonical definition to state claims against.
-/

/-! ## A055892.P17501225116949828933

`A317624(A058710(n))+A152815(n)`
-/

namespace A055892.P17501225116949828933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317624 (A058710 n).toNat + A152815 n

end

end A055892.P17501225116949828933

/-! ## A055892.P10880175792608232941

`A123149(n)-A088951(A299905(n))`
-/

namespace A055892.P10880175792608232941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 n - A088951 (A299905 n).toNat

end

end A055892.P10880175792608232941

/-! ## A055892.P15523794978009119456

`A123149(n)-A282355(A346061(n))`
-/

namespace A055892.P15523794978009119456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 n - A282355 (A346061 n).toNat

end

end A055892.P15523794978009119456

/-! ## A055892.P2195929032727141956

`A185700(n+1)-A088951(A299905(n))`
-/

namespace A055892.P2195929032727141956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185700 (n + 1) - A088951 (A299905 n).toNat

end

end A055892.P2195929032727141956

/-! ## A055892.P16390734636774651664

`A185700(n+1)-A282355(A346061(n))`
-/

namespace A055892.P16390734636774651664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185700 (n + 1) - A282355 (A346061 n).toNat

end

end A055892.P16390734636774651664

/-!
# A055893: Inverse Moebius transform of partition triangle A008284.

The programs for A055893, there is no canonical definition to state claims against.
-/

/-! ## A055893.P11987061924458516631

`A089242(A090170(n+2))`
-/

namespace A055893.P11987061924458516631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089242 (A090170 (n + 2)).toNat

end

end A055893.P11987061924458516631

/-! ## A055893.P11739975719206959734

`A051194(n+1)+A001221(A347811(n))`
-/

namespace A055893.P11739975719206959734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (n + 1) + A001221 (A347811 n).toNat

end

end A055893.P11739975719206959734

/-! ## A055893.P6497219696935714508

`A331083(A330982(n+1)^A331039(n))`
-/

namespace A055893.P6497219696935714508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (SequenceMachineLib.roundAway ((A330982 (n + 1) : ℚ) ^ (A331039 n : ℤ))).toNat

end

end A055893.P6497219696935714508

/-! ## A055893.P14953734295948865600

`A000005(A002024(n+1))^A293298(A173018(n))`
-/

namespace A055893.P14953734295948865600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A002024 (n + 1)).toNat : ℚ) ^ (A293298 (A173018 n).toNat : ℤ)

end

end A055893.P14953734295948865600

/-! ## A055893.P14007508753143148839

`A115622(A026034(n+1))`
-/

namespace A055893.P14007508753143148839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115622 (A026034 (n + 1)).toNat

end

end A055893.P14007508753143148839

/-!
# A055894: Inverse Moebius transform of Pascal's triangle A007318.

The programs for A055894, there is no canonical definition to state claims against.
-/

/-! ## A055894.P14581219847960053406

`A000120(A002264(A203330(n+1)))`
-/

namespace A055894.P14581219847960053406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002264 (A203330 (n + 1)).toNat).toNat

end

end A055894.P14581219847960053406

/-! ## A055894.P11950696792997144572

`A000120(A263424(n+1)+A219585(n))`
-/

namespace A055894.P11950696792997144572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A263424 (n + 1) + A219585 n).toNat

end

end A055894.P11950696792997144572

/-! ## A055894.P10540721730137350183

`A000120(A263424(n+1)+A243631(n))`
-/

namespace A055894.P10540721730137350183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A263424 (n + 1) + A243631 n).toNat

end

end A055894.P10540721730137350183

/-! ## A055894.P1090302119503428071

`A245760(A003156(n+1)+2*A174410(n))`
-/

namespace A055894.P1090302119503428071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245760 (A003156 (n + 1) + 2 * A174410 n).toNat

end

end A055894.P1090302119503428071

/-!
# A055895: Inverse Moebius transform of powers of 2.

The programs for A055895, the canonical program `A055895.P2077075893561003355` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055895 has offset 0).

The definition of A055895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055895.P15305010586208181424

`∑{d}[n, A151821(#)]+1`
-/

namespace A055895.P15305010586208181424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A151821 d + 1

end

end A055895.P15305010586208181424

namespace A055895

/-- `∑{d}[n, A151821(#)]+1` -/
def P15305010586208181424.Spec : Prop :=
  ∀ n, P15305010586208181424.a n = A055895 n

end A055895

/-! ## A055895.P12757172432140192707

`or(∑{d}[n, 2^#], A000122(n))`
-/

namespace A055895.P12757172432140192707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ d ∈ Nat.divisors (f1 n), 2 ^ d : ℕ) : ℤ) (A000122 n)

end

end A055895.P12757172432140192707

namespace A055895

/-- `or(∑{d}[n, 2^#], A000122(n))` -/
def P12757172432140192707.Spec : Prop :=
  ∀ n, P12757172432140192707.a n = A055895 n

end A055895

/-! ## A055895.P2077075893561003355

`or(∑{d}[n, 2^#], A011782(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055895

/-- `or(∑{d}[n, 2^#], A011782(n+1))` -/
def P2077075893561003355.Spec : Prop :=
  ∀ n, P2077075893561003355.a n = A055895 n

theorem P2077075893561003355.correct : P2077075893561003355.Spec := by
  intro n
  simp only [A055895]

end A055895

/-! ## A055895.P16019926891495965362

`∑{d}[n, 2^#]-(n-1)*A000007(n)`
-/

namespace A055895.P16019926891495965362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 2 ^ d : ℕ) : ℤ) - ((n : ℤ) - 1) * A000007 n

end

end A055895.P16019926891495965362

namespace A055895

/-- `∑{d}[n, 2^#]-(n-1)*A000007(n)` -/
def P16019926891495965362.Spec : Prop :=
  ∀ n, P16019926891495965362.a n = A055895 n

end A055895

/-! ## A055895.P2067506234730149400

`A000007(n)+∑{d}[n, A000079(#)]`
-/

namespace A055895.P2067506234730149400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A000079 d

end

end A055895.P2067506234730149400

namespace A055895

/-- `A000007(n)+∑{d}[n, A000079(#)]` -/
def P2067506234730149400.Spec : Prop :=
  ∀ n, P2067506234730149400.a n = A055895 n

end A055895

/-! ## A055895.P6476999895081114383

`or(∑{d}[n, A000079(#)], A000079(n))`
-/

namespace A055895.P6476999895081114383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ d ∈ Nat.divisors (f1 n), A000079 d) (A000079 n)

end

end A055895.P6476999895081114383

namespace A055895

/-- `or(∑{d}[n, A000079(#)], A000079(n))` -/
def P6476999895081114383.Spec : Prop :=
  ∀ n, P6476999895081114383.a n = A055895 n

end A055895

/-! ## A055895.P6759507683000092794

`∑{d}[n, 2^#]-A000007(n)/A008705(A005408(n))`
-/

namespace A055895.P6759507683000092794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 2 ^ d : ℕ) : ℚ) - (A000007 n : ℚ) / (A008705 (A005408 n).toNat : ℚ)

end

end A055895.P6759507683000092794

namespace A055895

/-- `∑{d}[n, 2^#]-A000007(n)/A008705(A005408(n))` -/
def P6759507683000092794.Spec : Prop :=
  ∀ n, P6759507683000092794.a n = (A055895 n : ℚ)

end A055895

/-! ## A055895.P4856592645695606923

`A130123(∑[n])+∑{d}[n, A000079(#)]`
-/

namespace A055895.P4856592645695606923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 (∑ j ∈ Finset.range (n + 1), f1 j) + ∑ d ∈ Nat.divisors (f2 n), A000079 d

end

end A055895.P4856592645695606923

namespace A055895

/-- `A130123(∑[n])+∑{d}[n, A000079(#)]` -/
def P4856592645695606923.Spec : Prop :=
  ∀ n, P4856592645695606923.a n = A055895 n

end A055895

/-!
# A055896: Exponential transform of Stirling2 triangle A008277.

The programs for A055896, there is no canonical definition to state claims against.
-/

/-! ## A055896.P15882139145517776173

`A008277(n+1)*A011972(A112367(n))`
-/

namespace A055896.P15882139145517776173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A011972 (A112367 n).toNat

end

end A055896.P15882139145517776173

/-! ## A055896.P8820403017075279631

`A000110(A002260(n+1))*A008277(n+1)`
-/

namespace A055896.P8820403017075279631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002260 (n + 1)).toNat * A008277 (n + 1)

end

end A055896.P8820403017075279631

/-! ## A055896.P16892416721979082790

`A000110(A002262(n)+1)*A008277(n+1)`
-/

namespace A055896.P16892416721979082790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002262 n + 1).toNat * A008277 (n + 1)

end

end A055896.P16892416721979082790

/-! ## A055896.P15127109287722955382

`A008277(n+1)*A285013(A158405(n+1))`
-/

namespace A055896.P15127109287722955382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A285013 (A158405 (n + 1)).toNat

end

end A055896.P15127109287722955382

/-! ## A055896.P12492164683957536203

`A000110(A349520(2*n+1))*A008277(n+1)`
-/

namespace A055896.P12492164683957536203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A349520 (2 * n + 1)).toNat * A008277 (n + 1)

end

end A055896.P12492164683957536203

/-! ## A055896.P18297897555735086115

`A000110(A002260(n+1))*A048993(A014132(n+1))`
-/

namespace A055896.P18297897555735086115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002260 (n + 1)).toNat * A048993 (A014132 (n + 1)).toNat

end

end A055896.P18297897555735086115

/-! ## A055896.P16569227601649714851

`A000110(A002260(n+1))/A002260(n+1)*A321331(n)`
-/

namespace A055896.P16569227601649714851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 (A002260 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ) * (A321331 n : ℚ)

end

end A055896.P16569227601649714851

/-! ## A055896.P4281719807273918204

`A019538(n+1)/A166350(n+1)*A000110(A002260(n+1))`
-/

namespace A055896.P4281719807273918204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ) * (A000110 (A002260 (n + 1)).toNat : ℚ)

end

end A055896.P4281719807273918204

/-! ## A055896.P14558377382071281819

`A008277(n+1)*A050315(A099627(n))`
-/

namespace A055896.P14558377382071281819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A050315 (A099627 n).toNat

end

end A055896.P14558377382071281819

/-!
# A055897: a(n) = n*(n-1)^(n-1).

The programs for A055897, there is no canonical definition to state claims against.
-/

/-! ## A055897.P15855458032712343485

`(n+1)*n^n`
-/

namespace A055897.P15855458032712343485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * n ^ n

end

end A055897.P15855458032712343485

/-! ## A055897.P2038629226810212887

`lcm(n+1, n^n)`
-/

namespace A055897.P2038629226810212887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n ^ n)

end

end A055897.P2038629226810212887

/-! ## A055897.P6810590734881390692

`∏{digits}[10^n, #+n]`
-/

namespace A055897.P6810590734881390692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + n).prod

end

end A055897.P6810590734881390692

/-! ## A055897.P5559138864601947233

`abs(n^n*xor(n, -1))`
-/

namespace A055897.P5559138864601947233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ n : ℤ) * Int.xor (n : ℤ) (-1)|

end

end A055897.P5559138864601947233

/-! ## A055897.P2556012040129153606

`(n+1)/tan(acot(n^n))`
-/

namespace A055897.P2556012040129153606
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot (n ^ n : ℝ))

end

end A055897.P2556012040129153606

/-! ## A055897.P16665973427432254531

`n^n/cot(atan(n+1))`
-/

namespace A055897.P16665973427432254531
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A055897.P16665973427432254531

/-! ## A055897.P9783484780944092405

`record[ceil((n-2)*(n-3)^(n-3))]`
-/

namespace A055897.P9783484780944092405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 2 : ℚ) * ((n : ℤ) - 3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055897.P9783484780944092405

/-! ## A055897.P14117821513547812748

`n^(n%(n+1))+n^(n+1)`
-/

namespace A055897.P14117821513547812748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % (n + 1)) + n ^ (n + 1)

end

end A055897.P14117821513547812748

/-! ## A055897.P4042003895433326575

`n^(n+1)+gcd(n, a(n-1))^n` with `a(0)=1`
-/

namespace A055897.P4042003895433326575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ (n + 1) + Nat.gcd n (a (n - 1)) ^ n

end

end A055897.P4042003895433326575

/-! ## A055897.P15260459516559735949

`A066320(∑[n+1])`
-/

namespace A055897.P15260459516559735949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066320 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055897.P15260459516559735949

/-!
# A055898: Triangle: Number of directed site animals on a square lattice with n+1 total sites and k sites supported in one particular way.

The programs for A055898, there is no canonical definition to state claims against.
-/

/-! ## A055898.P5779467296348276938

`A145904(n)-A102683(A080249(n))`
-/

namespace A055898.P5779467296348276938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145904 n - A102683 (A080249 n).toNat

end

end A055898.P5779467296348276938

/-! ## A055898.P15541681906881462490

`A145904(n)-A294219(A098568(n))`
-/

namespace A055898.P15541681906881462490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145904 n - A294219 (A098568 n).toNat

end

end A055898.P15541681906881462490

/-! ## A055898.P9927784476721181473

`A145904(n)-A107846(A331568(n))`
-/

namespace A055898.P9927784476721181473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145904 n - A107846 (A331568 n).toNat

end

end A055898.P9927784476721181473

/-! ## A055898.P6115139563898544621

`A145904(n)-A107846(A066121(n+1))`
-/

namespace A055898.P6115139563898544621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145904 n - A107846 (A066121 (n + 1)).toNat

end

end A055898.P6115139563898544621

/-! ## A055898.P3040176276720252164

`A120565(A214398(n+1))`
-/

namespace A055898.P3040176276720252164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A214398 (n + 1)).toNat

end

end A055898.P3040176276720252164

/-!
# A055899: Column 3 of triangle A055898.

The programs for A055899, the canonical program `A055899.P13502261593080570486` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055899 has offset 3).

The definition of A055899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055899.P4349503443456243921

`∑[∑[∑[A212578(n+1)]]]`
-/

namespace A055899.P4349503443456243921
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055899.P4349503443456243921

namespace A055899

/-- `∑[∑[∑[A212578(n+1)]]]` -/
def P4349503443456243921.Spec : Prop :=
  ∀ n, P4349503443456243921.a n = A055899 (n + 3)

end A055899

/-! ## A055899.P13502261593080570486

`∑[A004652(n+2)*A005993(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055899

/-- `∑[A004652(n+2)*A005993(n)]` -/
def P13502261593080570486.Spec : Prop :=
  ∀ n, P13502261593080570486.a n = A055899 (n + 3)

theorem P13502261593080570486.correct : P13502261593080570486.Spec := by
  intro n
  simp only [A055899, Nat.add_sub_cancel]

end A055899

/-! ## A055899.P6712823635018862104

`∑[∑[A212573(n+2)/2]]`
-/

namespace A055899.P6712823635018862104
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212573 (n + 2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055899.P6712823635018862104

namespace A055899

/-- `∑[∑[A212573(n+2)/2]]` -/
def P6712823635018862104.Spec : Prop :=
  ∀ n, P6712823635018862104.a n = (A055899 (n + 3) : ℚ)

end A055899

/-! ## A055899.P10989047014938993691

`∑[A005993(n)*A080513(A116940(n))]`
-/

namespace A055899.P10989047014938993691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n * A080513 (A116940 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055899.P10989047014938993691

namespace A055899

/-- `∑[A005993(n)*A080513(A116940(n))]` -/
def P10989047014938993691.Spec : Prop :=
  ∀ n, P10989047014938993691.a n = A055899 (n + 3)

end A055899

/-! ## A055899.P6383425565380306624

`A055898(A167614(n+2))`
-/

namespace A055899.P6383425565380306624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (A167614 (n + 2)).toNat

end

end A055899.P6383425565380306624

namespace A055899

/-- `A055898(A167614(n+2))` -/
def P6383425565380306624.Spec : Prop :=
  ∀ n, P6383425565380306624.a n = A055899 (n + 3)

end A055899

/-! ## A055899.P4069739209882445336

`A055898(eq[3, A002262(n)])`
-/

namespace A055899.P4069739209882445336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055899.P4069739209882445336

namespace A055899

/-- `A055898(eq[3, A002262(n)])` -/
def P4069739209882445336.Spec : Prop :=
  ∀ n, P4069739209882445336.a n = A055899 (n + 3)

end A055899

/-! ## A055899.P9663324389708985728

`A055898(eq[1, A144328(n+1)-2])`
-/

namespace A055899.P9663324389708985728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055899.P9663324389708985728

namespace A055899

/-- `A055898(eq[1, A144328(n+1)-2])` -/
def P9663324389708985728.Spec : Prop :=
  ∀ n, P9663324389708985728.a n = A055899 (n + 3)

end A055899

/-! ## A055899.P8336560554358518315

`A055898(eq[2, A002260(n+1)-2])`
-/

namespace A055899.P8336560554358518315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055899.P8336560554358518315

namespace A055899

/-- `A055898(eq[2, A002260(n+1)-2])` -/
def P8336560554358518315.Spec : Prop :=
  ∀ n, P8336560554358518315.a n = A055899 (n + 3)

end A055899

/-! ## A055899.P15735617352985696136

`A055898(eq[2, A002260(n+1)/2])`
-/

namespace A055899.P15735617352985696136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A055899.P15735617352985696136

namespace A055899

/-- `A055898(eq[2, A002260(n+1)/2])` -/
def P15735617352985696136.Spec : Prop :=
  ∀ n, P15735617352985696136.a n = A055899 (n + 3)

end A055899

