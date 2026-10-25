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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
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
# A277800: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1", based on the 5-celled von Neumann neighborhood.

The programs for A277800, the canonical program `A277800.P17841282104543833248` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277800 has offset 0).

The definition of A277800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277800.P2482874576710305623

`2^(n-and(1, n))-and(1, n)`
-/

namespace A277800.P2482874576710305623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.land 1 n : ℤ) : ℤ) - (Nat.land 1 n : ℚ)

end

end A277800.P2482874576710305623

namespace A277800

/-- `2^(n-and(1, n))-and(1, n)` -/
def P2482874576710305623.Spec : Prop :=
  ∀ n, P2482874576710305623.a n = (A277800 n : ℚ)

end A277800

/-! ## A277800.P2415659359648372006

`(2^floor(n/2))²-n%2`
-/

namespace A277800.P2415659359648372006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) ^ 2 - ((n % 2 : ℕ) : ℚ)

end

end A277800.P2415659359648372006

namespace A277800

/-- `(2^floor(n/2))²-n%2` -/
def P2415659359648372006.Spec : Prop :=
  ∀ n, P2415659359648372006.a n = (A277800 n : ℚ)

end A277800

/-! ## A277800.P17841282104543833248

`ogf((1-x^2+3x^3)/(1-5x^2+4x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277800

/-- `ogf((1-x^2+3x^3)/(1-5x^2+4x^4))` -/
def P17841282104543833248.Spec : Prop :=
  ∀ n, P17841282104543833248.a n = A277800 n

theorem P17841282104543833248.correct : P17841282104543833248.Spec := by
  intro n
  simp only [A277800]

end A277800

/-! ## A277800.P4724347002417625645

`2^floor(n/2)*2^floor(n/2)-Δ[floor(n/2)]`
-/

namespace A277800.P4724347002417625645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (f1 (n + 1) - f1 n : ℚ)

end

end A277800.P4724347002417625645

namespace A277800

/-- `2^floor(n/2)*2^floor(n/2)-Δ[floor(n/2)]` -/
def P4724347002417625645.Spec : Prop :=
  ∀ n, P4724347002417625645.a n = (A277800 n : ℚ)

end A277800

/-! ## A277800.P426912415076223773

`A106624(A042948(n))`
-/

namespace A277800.P426912415076223773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A042948 n).toNat

end

end A277800.P426912415076223773

namespace A277800

/-- `A106624(A042948(n))` -/
def P426912415076223773.Spec : Prop :=
  ∀ n, P426912415076223773.a n = A277800 n

end A277800

/-! ## A277800.P17058567173937802149

`A060576(n)*A287199(n)`
-/

namespace A277800.P17058567173937802149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A287199 n

end

end A277800.P17058567173937802149

namespace A277800

/-- `A060576(n)*A287199(n)` -/
def P17058567173937802149.Spec : Prop :=
  ∀ n, P17058567173937802149.a n = A277800 n

end A277800

/-! ## A277800.P15537968284126578763

`lcm(A081729(n), A287199(n))`
-/

namespace A277800.P15537968284126578763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081729 n) (A287199 n)

end

end A277800.P15537968284126578763

namespace A277800

/-- `lcm(A081729(n), A287199(n))` -/
def P15537968284126578763.Spec : Prop :=
  ∀ n, (P15537968284126578763.a n : ℤ) = A277800 n

end A277800

/-! ## A277800.P11969459859620371676

`A106624(A042963(n+1)-1)`
-/

namespace A277800.P11969459859620371676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A042963 (n + 1) - 1).toNat

end

end A277800.P11969459859620371676

namespace A277800

/-- `A106624(A042963(n+1)-1)` -/
def P11969459859620371676.Spec : Prop :=
  ∀ n, P11969459859620371676.a n = A277800 n

end A277800

/-! ## A277800.P7184777009427176935

`A106624(A014601(n+1)-3)`
-/

namespace A277800.P7184777009427176935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A014601 (n + 1) - 3).toNat

end

end A277800.P7184777009427176935

namespace A277800

/-- `A106624(A014601(n+1)-3)` -/
def P7184777009427176935.Spec : Prop :=
  ∀ n, P7184777009427176935.a n = A277800 n

end A277800

/-! ## A277800.P14669260061818283089

`A106624(xor(1, A014601(n))-1)`
-/

namespace A277800.P14669260061818283089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (Int.xor 1 (A014601 n) - 1).toNat

end

end A277800.P14669260061818283089

namespace A277800

/-- `A106624(xor(1, A014601(n))-1)` -/
def P14669260061818283089.Spec : Prop :=
  ∀ n, P14669260061818283089.a n = A277800 n

end A277800

/-! ## A277800.P18004739178769159201

`(A052950(n)-1)*A040001(n)`
-/

namespace A277800.P18004739178769159201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052950 n - 1) * A040001 n

end

end A277800.P18004739178769159201

namespace A277800

/-- `(A052950(n)-1)*A040001(n)` -/
def P18004739178769159201.Spec : Prop :=
  ∀ n, P18004739178769159201.a n = A277800 n

end A277800

/-! ## A277800.P15229913252433357543

`A106624(2*n-A000035(n))`
-/

namespace A277800.P15229913252433357543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 ((2 * n : ℤ) - A000035 n).toNat

end

end A277800.P15229913252433357543

namespace A277800

/-- `A106624(2*n-A000035(n))` -/
def P15229913252433357543.Spec : Prop :=
  ∀ n, P15229913252433357543.a n = A277800 n

end A277800

/-! ## A277800.P15897987789266621208

`abs(A135528(n+1)-A131572(n)²)`
-/

namespace A277800.P15897987789266621208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135528 (n + 1) - A131572 n ^ 2|

end

end A277800.P15897987789266621208

namespace A277800

/-- `abs(A135528(n+1)-A131572(n)²)` -/
def P15897987789266621208.Spec : Prop :=
  ∀ n, P15897987789266621208.a n = A277800 n

end A277800

/-! ## A277800.P18050176054537013762

`(A016116(n)+A000035(n))*A106624(n)`
-/

namespace A277800.P18050176054537013762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016116 n + A000035 n) * A106624 n

end

end A277800.P18050176054537013762

namespace A277800

/-- `(A016116(n)+A000035(n))*A106624(n)` -/
def P18050176054537013762.Spec : Prop :=
  ∀ n, P18050176054537013762.a n = A277800 n

end A277800

/-! ## A277800.P10678055089101192174

`A099430(n)/A000034(n)`
-/

namespace A277800.P10678055089101192174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099430 n : ℚ) / (A000034 n : ℚ)

end

end A277800.P10678055089101192174

namespace A277800

/-- `A099430(n)/A000034(n)` -/
def P10678055089101192174.Spec : Prop :=
  ∀ n, P10678055089101192174.a n = (A277800 n : ℚ)

end A277800

/-! ## A277800.P4165047311131240163

`A099430(n)/A084642(n)`
-/

namespace A277800.P4165047311131240163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099430 n : ℚ) / (A084642 n : ℚ)

end

end A277800.P4165047311131240163

namespace A277800

/-- `A099430(n)/A084642(n)` -/
def P4165047311131240163.Spec : Prop :=
  ∀ n, P4165047311131240163.a n = (A277800 n : ℚ)

end A277800

/-! ## A277800.P2288175289838736161

`A084221(n)%A000051(n)`
-/

namespace A277800.P2288175289838736161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084221 n) (A000051 n)

end

end A277800.P2288175289838736161

namespace A277800

/-- `A084221(n)%A000051(n)` -/
def P2288175289838736161.Spec : Prop :=
  ∀ n, P2288175289838736161.a n = A277800 n

end A277800

/-! ## A277800.P14302282970342917427

`A287199(n)%A000051(n)`
-/

namespace A277800.P14302282970342917427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287199 n) (A000051 n)

end

end A277800.P14302282970342917427

namespace A277800

/-- `A287199(n)%A000051(n)` -/
def P14302282970342917427.Spec : Prop :=
  ∀ n, P14302282970342917427.a n = A277800 n

end A277800

/-! ## A277800.P3859834681287822165

`A277867(n)%A052531(n)`
-/

namespace A277800.P3859834681287822165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277867 n) (A052531 n)

end

end A277800.P3859834681287822165

namespace A277800

/-- `A277867(n)%A052531(n)` -/
def P3859834681287822165.Spec : Prop :=
  ∀ n, P3859834681287822165.a n = A277800 n

end A277800

/-! ## A277800.P7857945444336958845

`and(A051049(n), A277867(n))`
-/

namespace A277800.P7857945444336958845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051049 n) (A277867 n)

end

end A277800.P7857945444336958845

namespace A277800

/-- `and(A051049(n), A277867(n))` -/
def P7857945444336958845.Spec : Prop :=
  ∀ n, P7857945444336958845.a n = A277800 n

end A277800

/-!
# A277801: a(n) = 2^(n - 1) - prime(n).

The programs for A277801, the canonical program `A277801.P12034611323886834373` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277801 has offset 1).

The definition of A277801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277801.P4344870573403901466

`2^n-p?[comp[n²]]`
-/

namespace A277801.P4344870573403901466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A277801.P4344870573403901466

namespace A277801

/-- `2^n-p?[comp[n²]]` -/
def P4344870573403901466.Spec : Prop :=
  ∀ n, P4344870573403901466.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P12034611323886834373

`2^n-record[∑{p}[n+2, #]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277801

/-- `2^n-record[∑{p}[n+2, #]]` -/
def P12034611323886834373.Spec : Prop :=
  ∀ n, P12034611323886834373.a n = A277801 (n + 1)

theorem P12034611323886834373.correct : P12034611323886834373.Spec := by
  intro n
  simp only [A277801, Nat.add_sub_cancel]

end A277801

/-! ## A277801.P14165007150963403048

`2^n-A000040(n+1)`
-/

namespace A277801.P14165007150963403048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000040 (n + 1)

end

end A277801.P14165007150963403048

namespace A277801

/-- `2^n-A000040(n+1)` -/
def P14165007150963403048.Spec : Prop :=
  ∀ n, P14165007150963403048.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P17719329989753634698

`2^n-A008578(n+2)`
-/

namespace A277801.P17719329989753634698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A008578 (n + 2)

end

end A277801.P17719329989753634698

namespace A277801

/-- `2^n-A008578(n+2)` -/
def P17719329989753634698.Spec : Prop :=
  ∀ n, P17719329989753634698.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P13161554328465972517

`2^n-A158611(n+3)`
-/

namespace A277801.P13161554328465972517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A158611 (n + 3)

end

end A277801.P13161554328465972517

namespace A277801

/-- `2^n-A158611(n+3)` -/
def P13161554328465972517.Spec : Prop :=
  ∀ n, P13161554328465972517.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P17480853313031001511

`2^n-record[A006530(n+2)]`
-/

namespace A277801.P17480853313031001511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277801.P17480853313031001511

namespace A277801

/-- `2^n-record[A006530(n+2)]` -/
def P17480853313031001511.Spec : Prop :=
  ∀ n, P17480853313031001511.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P2630336857987580653

`2^n-record[A014963(n+2)]`
-/

namespace A277801.P2630336857987580653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277801.P2630336857987580653

namespace A277801

/-- `2^n-record[A014963(n+2)]` -/
def P2630336857987580653.Spec : Prop :=
  ∀ n, P2630336857987580653.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P15677226990365575341

`2^n-record[A020639(n+2)]`
-/

namespace A277801.P15677226990365575341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277801.P15677226990365575341

namespace A277801

/-- `2^n-record[A020639(n+2)]` -/
def P15677226990365575341.Spec : Prop :=
  ∀ n, P15677226990365575341.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P14118989169001917506

`2^n-record[A000010(n+1)+1]`
-/

namespace A277801.P14118989169001917506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277801.P14118989169001917506

namespace A277801

/-- `2^n-record[A000010(n+1)+1]` -/
def P14118989169001917506.Spec : Prop :=
  ∀ n, P14118989169001917506.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P8735447792791209246

`A100700(n+1)+A027934(n)`
-/

namespace A277801.P8735447792791209246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100700 (n + 1) + A027934 n

end

end A277801.P8735447792791209246

namespace A277801

/-- `A100700(n+1)+A027934(n)` -/
def P8735447792791209246.Spec : Prop :=
  ∀ n, P8735447792791209246.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P3061368455341490784

`A000225(n)-A006093(n+1)`
-/

namespace A277801.P3061368455341490784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A006093 (n + 1)

end

end A277801.P3061368455341490784

namespace A277801

/-- `A000225(n)-A006093(n+1)` -/
def P3061368455341490784.Spec : Prop :=
  ∀ n, P3061368455341490784.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P11246670028141033473

`A000051(n)-A008864(n+1)`
-/

namespace A277801.P11246670028141033473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A008864 (n + 1)

end

end A277801.P11246670028141033473

namespace A277801

/-- `A000051(n)-A008864(n+1)` -/
def P11246670028141033473.Spec : Prop :=
  ∀ n, P11246670028141033473.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P10286077623515378753

`A000295(n)-A014689(n+1)`
-/

namespace A277801.P10286077623515378753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - A014689 (n + 1)

end

end A277801.P10286077623515378753

namespace A277801

/-- `A000295(n)-A014689(n+1)` -/
def P10286077623515378753.Spec : Prop :=
  ∀ n, P10286077623515378753.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P16512282035919062477

`A000325(n)-A014692(n+1)`
-/

namespace A277801.P16512282035919062477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A014692 (n + 1)

end

end A277801.P16512282035919062477

namespace A277801

/-- `A000325(n)-A014692(n+1)` -/
def P16512282035919062477.Spec : Prop :=
  ∀ n, P16512282035919062477.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P201393723780534423

`A005126(n)-A014688(n+1)`
-/

namespace A277801.P201393723780534423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n - A014688 (n + 1)

end

end A277801.P201393723780534423

namespace A277801

/-- `A005126(n)-A014688(n+1)` -/
def P201393723780534423.Spec : Prop :=
  ∀ n, P201393723780534423.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P15017564432018544648

`A000051(n)-A028815(n+1)`
-/

namespace A277801.P15017564432018544648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A028815 (n + 1)

end

end A277801.P15017564432018544648

namespace A277801

/-- `A000051(n)-A028815(n+1)` -/
def P15017564432018544648.Spec : Prop :=
  ∀ n, P15017564432018544648.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P1107775123397961759

`A014551(n)-A014686(n+1)`
-/

namespace A277801.P1107775123397961759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n - A014686 (n + 1)

end

end A277801.P1107775123397961759

namespace A277801

/-- `A014551(n)-A014686(n+1)` -/
def P1107775123397961759.Spec : Prop :=
  ∀ n, P1107775123397961759.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P7651974040620081529

`A000918(n)-A040976(n+1)`
-/

namespace A277801.P7651974040620081529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - A040976 (n + 1)

end

end A277801.P7651974040620081529

namespace A277801

/-- `A000918(n)-A040976(n+1)` -/
def P7651974040620081529.Spec : Prop :=
  ∀ n, P7651974040620081529.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P6795489960083211994

`A052956(n)-A004397(n+1)`
-/

namespace A277801.P6795489960083211994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052956 n - A004397 (n + 1)

end

end A277801.P6795489960083211994

namespace A277801

/-- `A052956(n)-A004397(n+1)` -/
def P6795489960083211994.Spec : Prop :=
  ∀ n, P6795489960083211994.a n = A277801 (n + 1)

end A277801

/-! ## A277801.P10967523379297652688

`A006127(n)-A095116(n+1)`
-/

namespace A277801.P10967523379297652688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n - A095116 (n + 1)

end

end A277801.P10967523379297652688

namespace A277801

/-- `A006127(n)-A095116(n+1)` -/
def P10967523379297652688.Spec : Prop :=
  ∀ n, P10967523379297652688.a n = A277801 (n + 1)

end A277801

/-!
# A277802: The least k > 0 such that k*A004709(n) is a cube.

The programs for A277802, the canonical program `A277802.P17096893089026203100` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277802 has offset 1).

The definition of A277802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A048798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277802.P17096893089026203100

`A048798(A004709(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A277802

/-- `A048798(A004709(n+1))` -/
def P17096893089026203100.Spec : Prop :=
  ∀ n, P17096893089026203100.a n = A277802 (n + 1)

theorem P17096893089026203100.correct : P17096893089026203100.Spec := by
  intro n
  simp only [A277802, Nat.add_sub_cancel]

end A277802

/-! ## A277802.P2705654204001919099

`A382888(n+1)*A382891(n+1)`
-/

namespace A277802.P2705654204001919099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382888 (n + 1) * A382891 (n + 1)

end

end A277802.P2705654204001919099

namespace A277802

/-- `A382888(n+1)*A382891(n+1)` -/
def P2705654204001919099.Spec : Prop :=
  ∀ n, P2705654204001919099.a n = A277802 (n + 1)

end A277802

/-! ## A277802.P195162711954746456

`A007947(A004709(n+1))*A382891(n+1)`
-/

namespace A277802.P195162711954746456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A004709 (n + 1)).toNat * A382891 (n + 1)

end

end A277802.P195162711954746456

namespace A277802

/-- `A007947(A004709(n+1))*A382891(n+1)` -/
def P195162711954746456.Spec : Prop :=
  ∀ n, P195162711954746456.a n = A277802 (n + 1)

end A277802

/-! ## A277802.P3674008219996455312

`A382890(n+1)*A382891(n+1)*A382891(n+1)`
-/

namespace A277802.P3674008219996455312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382890 (n + 1) * A382891 (n + 1) * A382891 (n + 1)

end

end A277802.P3674008219996455312

namespace A277802

/-- `A382890(n+1)*A382891(n+1)*A382891(n+1)` -/
def P3674008219996455312.Spec : Prop :=
  ∀ n, P3674008219996455312.a n = A277802 (n + 1)

end A277802

/-! ## A277802.P2385404946136055907

`A004709(n+1)*A382888(n+1)/A382889(n+1)`
-/

namespace A277802.P2385404946136055907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004709 (n + 1) * A382888 (n + 1) : ℚ) / (A382889 (n + 1) : ℚ)

end

end A277802.P2385404946136055907

namespace A277802

/-- `A004709(n+1)*A382888(n+1)/A382889(n+1)` -/
def P2385404946136055907.Spec : Prop :=
  ∀ n, P2385404946136055907.a n = (A277802 (n + 1) : ℚ)

end A277802

/-! ## A277802.P7257110857640384030

`A382888(n+1)*A382888(n+1)/A382890(n+1)`
-/

namespace A277802.P7257110857640384030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382888 (n + 1) * A382888 (n + 1) : ℚ) / (A382890 (n + 1) : ℚ)

end

end A277802.P7257110857640384030

namespace A277802

/-- `A382888(n+1)*A382888(n+1)/A382890(n+1)` -/
def P7257110857640384030.Spec : Prop :=
  ∀ n, P7257110857640384030.a n = (A277802 (n + 1) : ℚ)

end A277802

/-! ## A277802.P16510779509989611610

`A011262(record[A050985(n+1)])`
-/

namespace A277802.P16510779509989611610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277802.P16510779509989611610

namespace A277802

/-- `A011262(record[A050985(n+1)])` -/
def P16510779509989611610.Spec : Prop :=
  ∀ n, P16510779509989611610.a n = A277802 (n + 1)

end A277802

/-! ## A277802.P10147076580682245286

`A048798(record[A050985(n+1)])`
-/

namespace A277802.P10147076580682245286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277802.P10147076580682245286

namespace A277802

/-- `A048798(record[A050985(n+1)])` -/
def P10147076580682245286.Spec : Prop :=
  ∀ n, P10147076580682245286.a n = A277802 (n + 1)

end A277802

/-! ## A277802.P13328576868656951782

`A048798(eq[1, A008834(n+1)]+1)`
-/

namespace A277802.P13328576868656951782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277802.P13328576868656951782

namespace A277802

/-- `A048798(eq[1, A008834(n+1)]+1)` -/
def P13328576868656951782.Spec : Prop :=
  ∀ n, P13328576868656951782.a n = A277802 (n + 1)

end A277802

/-! ## A277802.P7513799011190870565

`A048798(eq[1, A053150(n+1)]+1)`
-/

namespace A277802.P7513799011190870565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277802.P7513799011190870565

namespace A277802

/-- `A048798(eq[1, A053150(n+1)]+1)` -/
def P7513799011190870565.Spec : Prop :=
  ∀ n, P7513799011190870565.a n = A277802 (n + 1)

end A277802

/-! ## A277802.P6009958271248654697

`A360541(A004709(2*n+1-n))`
-/

namespace A277802.P6009958271248654697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360541 (A004709 (2 * n + 1 - n)).toNat

end

end A277802.P6009958271248654697

namespace A277802

/-- `A360541(A004709(2*n+1-n))` -/
def P6009958271248654697.Spec : Prop :=
  ∀ n, P6009958271248654697.a n = A277802 (n + 1)

end A277802

/-! ## A277802.P7329347609727375364

`A011262(lt[n, A050985(n+1)]+1)`
-/

namespace A277802.P7329347609727375364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A277802.P7329347609727375364

namespace A277802

/-- `A011262(lt[n, A050985(n+1)]+1)` -/
def P7329347609727375364.Spec : Prop :=
  ∀ n, P7329347609727375364.a n = A277802 (n + 1)

end A277802

/-! ## A277802.P3595125868697075933

`A053149(A277803(n+1))/A004709(n+1)`
-/

namespace A277802.P3595125868697075933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (A277803 (n + 1)).toNat : ℚ) / (A004709 (n + 1) : ℚ)

end

end A277802.P3595125868697075933

namespace A277802

/-- `A053149(A277803(n+1))/A004709(n+1)` -/
def P3595125868697075933.Spec : Prop :=
  ∀ n, P3595125868697075933.a n = (A277802 (n + 1) : ℚ)

end A277802

/-! ## A277802.P17597706476936182787

`filter[A011262(n+1), A212793(#)]`
-/

namespace A277802.P17597706476936182787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A277802.P17597706476936182787

namespace A277802

/-- `filter[A011262(n+1), A212793(#)]` -/
def P17597706476936182787.Spec : Prop :=
  ∀ n, P17597706476936182787.a n = A277802 (n + 1)

end A277802

/-! ## A277802.P8854703908836330776

`filter[A159253(n+1), A212793(#)]`
-/

namespace A277802.P8854703908836330776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A277802.P8854703908836330776

namespace A277802

/-- `filter[A159253(n+1), A212793(#)]` -/
def P8854703908836330776.Spec : Prop :=
  ∀ n, P8854703908836330776.a n = A277802 (n + 1)

end A277802

/-!
# A277804: Numbers n such that first digit of n divides n, last digit of n divides n, number of divisors of n divides n and phi(n) divides n, where phi(n) is the Euler totient function.

The programs for A277804, there is no canonical definition to state claims against.
-/

/-! ## A277804.P1150082917181265201

`∩[A235353(n+1), A337184(n+1)]`
-/

namespace A277804.P1150082917181265201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277804.P1150082917181265201

/-! ## A277804.P4896203354572463217

`A177500(record[Δ[A257690(n+1)]])`
-/

namespace A277804.P4896203354572463217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257690 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177500 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277804.P4896203354572463217

/-! ## A277804.P122872553812384065

`∩[A235353(n+1), A331072(n+1)]`
-/

namespace A277804.P122872553812384065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277804.P122872553812384065

/-!
# A277805: Nonsquares in A277699 listed in the order of their appearance.

The programs for A277805, there is no canonical definition to state claims against.
-/

/-! ## A277805.P14285787007975183746

`A277699(A277706(n+1))`
-/

namespace A277805.P14285787007975183746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277699 (A277706 (n + 1)).toNat

end

end A277805.P14285787007975183746

/-! ## A277805.P7148169109897768422

`A277699(comp[A277704(n+1)-1]+1)`
-/

namespace A277805.P7148169109897768422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277704 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277699 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A277805.P7148169109897768422

/-! ## A277805.P2305141937994802304

`filter[A277699(n+1), A049240(#)]`
-/

namespace A277805.P2305141937994802304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A277805.P2305141937994802304

/-! ## A277805.P17920694347636951408

`A277699(A101082(n+1))+A066035(A140356(n))`
-/

namespace A277805.P17920694347636951408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277699 (A101082 (n + 1)).toNat + A066035 (A140356 n).toNat

end

end A277805.P17920694347636951408

/-! ## A277805.P8757670080477341563

`A057427(A008250(n))*A277699(A101082(n+1))`
-/

namespace A277805.P8757670080477341563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008250 n).toNat * A277699 (A101082 (n + 1)).toNat

end

end A277805.P8757670080477341563

/-! ## A277805.P8994792794286481838

`A057427(A057304(n))*A277699(A101082(n+1))`
-/

namespace A277805.P8994792794286481838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A057304 n).toNat * A277699 (A101082 (n + 1)).toNat

end

end A277805.P8994792794286481838

/-! ## A277805.P8914547148295360698

`A277699(A101082(n+1)%p?[A277699(n+1)])`
-/

namespace A277805.P8914547148295360698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277699 (Int.tmod (A101082 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A277805.P8914547148295360698

/-!
# A277807: Numbers n such that A048720(n, A065621(n)) is a perfect square, but n is not in A023758.

The programs for A277807, there is no canonical definition to state claims against.
-/

/-! ## A277807.P2810985815691958361

`∩[A050321(n), A277704(n+1)]`
-/

namespace A277807.P2810985815691958361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050321 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277807.P2810985815691958361

/-!
# A277808: a(n) = number of iterations of map k -> A003188(A006068(k)/2) that are required (when starting from k = n) until k is an odious number.

The programs for A277808, the canonical program `A277808.P4452036695971771112` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277808 has offset 1).

The definition of A277808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277808.P4452036695971771112

`A010059(n+1)*A001511(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A277808

/-- `A010059(n+1)*A001511(n+1)` -/
def P4452036695971771112.Spec : Prop :=
  ∀ n, P4452036695971771112.a n = A277808 (n + 1)

theorem P4452036695971771112.correct : P4452036695971771112.Spec := by
  intro n
  simp only [A277808, Nat.add_sub_cancel]

end A277808

/-! ## A277808.P6137816057270517440

`A277822(n+1)-1`
-/

namespace A277808.P6137816057270517440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (n + 1) - 1

end

end A277808.P6137816057270517440

namespace A277808

/-- `A277822(n+1)-1` -/
def P6137816057270517440.Spec : Prop :=
  ∀ n, P6137816057270517440.a n = A277808 (n + 1)

end A277808

/-! ## A277808.P812063301222985888

`val(A292601(n+1), 2)`
-/

namespace A277808.P812063301222985888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A292601 (n + 1)).toNat 2

end

end A277808.P812063301222985888

namespace A277808

/-- `val(A292601(n+1), 2)` -/
def P812063301222985888.Spec : Prop :=
  ∀ n, (P812063301222985888.a n : ℤ) = A277808 (n + 1)

end A277808

/-! ## A277808.P8028859139290272426

`val(A074939(n+1), 3)`
-/

namespace A277808.P8028859139290272426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074939 (n + 1)).toNat 3

end

end A277808.P8028859139290272426

namespace A277808

/-- `val(A074939(n+1), 3)` -/
def P8028859139290272426.Spec : Prop :=
  ∀ n, (P8028859139290272426.a n : ℤ) = A277808 (n + 1)

end A277808

/-! ## A277808.P1108718902938732028

`val(A385663(n+2), 2)`
-/

namespace A277808.P1108718902938732028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A385663 (n + 2)).toNat 2

end

end A277808.P1108718902938732028

namespace A277808

/-- `val(A385663(n+2), 2)` -/
def P1108718902938732028.Spec : Prop :=
  ∀ n, (P1108718902938732028.a n : ℤ) = A277808 (n + 1)

end A277808

/-! ## A277808.P16023969271923866665

`A007814(A292601(n+1))`
-/

namespace A277808.P16023969271923866665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A292601 (n + 1)).toNat

end

end A277808.P16023969271923866665

namespace A277808

/-- `A007814(A292601(n+1))` -/
def P16023969271923866665.Spec : Prop :=
  ∀ n, P16023969271923866665.a n = A277808 (n + 1)

end A277808

/-! ## A277808.P7465416465332491444

`A268726(A053645(n+1))`
-/

namespace A277808.P7465416465332491444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (A053645 (n + 1)).toNat

end

end A277808.P7465416465332491444

namespace A277808

/-- `A268726(A053645(n+1))` -/
def P7465416465332491444.Spec : Prop :=
  ∀ n, P7465416465332491444.a n = A277808 (n + 1)

end A277808

/-! ## A277808.P17579438162738527079

`A268389(A277901(n+1))`
-/

namespace A277808.P17579438162738527079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (A277901 (n + 1)).toNat

end

end A277808.P17579438162738527079

namespace A277808

/-- `A268389(A277901(n+1))` -/
def P17579438162738527079.Spec : Prop :=
  ∀ n, P17579438162738527079.a n = A277808 (n + 1)

end A277808

/-! ## A277808.P3177376890003780937

`A091090(n)*A092436(n+1)`
-/

namespace A277808.P3177376890003780937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n * A092436 (n + 1)

end

end A277808.P3177376890003780937

namespace A277808

/-- `A091090(n)*A092436(n+1)` -/
def P3177376890003780937.Spec : Prop :=
  ∀ n, P3177376890003780937.a n = A277808 (n + 1)

end A277808

/-! ## A277808.P10168943253655395778

`A001511(n+1)-A268726(n+1)`
-/

namespace A277808.P10168943253655395778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - A268726 (n + 1)

end

end A277808.P10168943253655395778

namespace A277808

/-- `A001511(n+1)-A268726(n+1)` -/
def P10168943253655395778.Spec : Prop :=
  ∀ n, P10168943253655395778.a n = A277808 (n + 1)

end A277808

/-! ## A277808.P17061926237035606714

`A001511(n+1)*A092436(n+1)`
-/

namespace A277808.P17061926237035606714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A092436 (n + 1)

end

end A277808.P17061926237035606714

namespace A277808

/-- `A001511(n+1)*A092436(n+1)` -/
def P17061926237035606714.Spec : Prop :=
  ∀ n, P17061926237035606714.a n = A277808 (n + 1)

theorem P17061926237035606714.correct : P17061926237035606714.Spec := by
  intro n
  simp only [A277808, Nat.add_sub_cancel, A277808.P17061926237035606714.a, A277808.P4452036695971771112.a, A001511, A001511.P17146462531039486101.a, A010059, A010059.P6338678923093357896.a, A092436, A092436.P18053594016097437094.a, A006519, A006519.P10435570611646570274.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A171977, A171977.P14092944863121073856.a, A005187, A005187.P3874015513960485494.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277808

/-! ## A277808.P17086266469677059656

`A092436(n+1)*A135560(n+1)`
-/

namespace A277808.P17086266469677059656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092436 (n + 1) * A135560 (n + 1)

end

end A277808.P17086266469677059656

namespace A277808

/-- `A092436(n+1)*A135560(n+1)` -/
def P17086266469677059656.Spec : Prop :=
  ∀ n, P17086266469677059656.a n = A277808 (n + 1)

end A277808

/-! ## A277808.P15770554999503615424

`A092436(n+1)*A241235(n+1)`
-/

namespace A277808.P15770554999503615424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092436 (n + 1) * A241235 (n + 1)

end

end A277808.P15770554999503615424

namespace A277808

/-- `A092436(n+1)*A241235(n+1)` -/
def P15770554999503615424.Spec : Prop :=
  ∀ n, P15770554999503615424.a n = A277808 (n + 1)

end A277808

/-! ## A277808.P2276416471872124680

`∑{d}[n+1, A087003(#)*A356018((n+1)/#)]`
-/

namespace A277808.P2276416471872124680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A356018 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A277808.P2276416471872124680

namespace A277808

/-- `∑{d}[n+1, A087003(#)*A356018((n+1)/#)]` -/
def P2276416471872124680.Spec : Prop :=
  ∀ n, P2276416471872124680.a n = A277808 (n + 1)

end A277808

/-! ## A277808.P10160892590142536058

`∑{d}[n+1, A036987(#-1)*A092436((n+1)/#)]`
-/

namespace A277808.P10160892590142536058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A092436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A277808.P10160892590142536058

namespace A277808

/-- `∑{d}[n+1, A036987(#-1)*A092436((n+1)/#)]` -/
def P10160892590142536058.Spec : Prop :=
  ∀ n, P10160892590142536058.a n = A277808 (n + 1)

end A277808

/-! ## A277808.P18195207112120243089

`∑{d}[n+1, A104117(#)*A254379((n+1)/#-1)]`
-/

namespace A277808.P18195207112120243089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A104117 d * A254379 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A277808.P18195207112120243089

namespace A277808

/-- `∑{d}[n+1, A104117(#)*A254379((n+1)/#-1)]` -/
def P18195207112120243089.Spec : Prop :=
  ∀ n, P18195207112120243089.a n = A277808 (n + 1)

end A277808

/-! ## A277808.P17460220180356756521

`val(A006068(n+1), 2)`
-/

namespace A277808.P17460220180356756521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006068 (n + 1)).toNat 2

end

end A277808.P17460220180356756521

namespace A277808

/-- `val(A006068(n+1), 2)` -/
def P17460220180356756521.Spec : Prop :=
  ∀ n, (P17460220180356756521.a n : ℤ) = A277808 (n + 1)

end A277808

/-! ## A277808.P15977958358698266389

`val(A001969(n+2), 2)`
-/

namespace A277808.P15977958358698266389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001969 (n + 2)).toNat 2

end

end A277808.P15977958358698266389

namespace A277808

/-- `val(A001969(n+2), 2)` -/
def P15977958358698266389.Spec : Prop :=
  ∀ n, (P15977958358698266389.a n : ℤ) = A277808 (n + 1)

end A277808

/-! ## A277808.P14558503618162304919

`A268389(A234612(n+1))`
-/

namespace A277808.P14558503618162304919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (A234612 (n + 1)).toNat

end

end A277808.P14558503618162304919

namespace A277808

/-- `A268389(A234612(n+1))` -/
def P14558503618162304919.Spec : Prop :=
  ∀ n, P14558503618162304919.a n = A277808 (n + 1)

end A277808

/-! ## A277808.P9619062950667269519

`A089263(A125592(n+2))`
-/

namespace A277808.P9619062950667269519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A125592 (n + 2)).toNat

end

end A277808.P9619062950667269519

namespace A277808

/-- `A089263(A125592(n+2))` -/
def P9619062950667269519.Spec : Prop :=
  ∀ n, P9619062950667269519.a n = A277808 (n + 1)

end A277808

/-!
# A277809: Transpose of square array A277810.

The programs for A277809, there is no canonical definition to state claims against.
-/

/-! ## A277809.P9429430252057696315

`A277810(A038722(n+1))`
-/

namespace A277809.P9429430252057696315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277810 (A038722 (n + 1)).toNat

end

end A277809.P9429430252057696315

/-! ## A277809.P11247444537856835544

`A277810(A061579(n)+1)`
-/

namespace A277809.P11247444537856835544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277810 (A061579 n + 1).toNat

end

end A277809.P11247444537856835544

/-! ## A277809.P11704355063485855868

`A277810(∑[A198954(n)]-n)`
-/

namespace A277809.P11704355063485855868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277810 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A277809.P11704355063485855868

/-! ## A277809.P7621620777480613173

`A277810(A114327(n)+1+n)`
-/

namespace A277809.P7621620777480613173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277810 (A114327 n + 1 + (n : ℤ)).toNat

end

end A277809.P7621620777480613173

/-! ## A277809.P15875114172077688945

`A277810(A093995(n+1)-n)`
-/

namespace A277809.P15875114172077688945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277810 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A277809.P15875114172077688945

/-! ## A277809.P2462306589209649589

`A277810(A002024(n+1)²-n)`
-/

namespace A277809.P2462306589209649589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277810 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A277809.P2462306589209649589

/-! ## A277809.P6469115701380576883

`A277810(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A277809.P6469115701380576883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277810 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A277809.P6469115701380576883

/-! ## A277809.P7088037861849468898

`A277810(A277821(A277819(n+1)))`
-/

namespace A277809.P7088037861849468898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277810 (A277821 (A277819 (n + 1)).toNat).toNat

end

end A277809.P7088037861849468898

/-! ## A277809.P3867866119173141169

`A019565(A277819(n+1))`
-/

namespace A277809.P3867866119173141169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A277819 (n + 1)).toNat

end

end A277809.P3867866119173141169

/-!
# A277810: Square array A(r,c) = A019565(A277820(r,c)), read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A277810, there is no canonical definition to state claims against.
-/

/-! ## A277810.P12721675444579849125

`A277809(A038722(n+1))`
-/

namespace A277810.P12721675444579849125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277809 (A038722 (n + 1)).toNat

end

end A277810.P12721675444579849125

/-! ## A277810.P12223430413535794545

`A277809(A061579(n)+1)`
-/

namespace A277810.P12223430413535794545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277809 (A061579 n + 1).toNat

end

end A277810.P12223430413535794545

/-! ## A277810.P11758690809700770615

`A277809(A114327(n)+1+n)`
-/

namespace A277810.P11758690809700770615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277809 (A114327 n + 1 + (n : ℤ)).toNat

end

end A277810.P11758690809700770615

/-! ## A277810.P11872864399313280910

`A277809(A002024(n+1)²-n)`
-/

namespace A277810.P11872864399313280910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277809 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A277810.P11872864399313280910

/-! ## A277810.P3562598226178914695

`A277809(A057944(n)+A004736(n+1))`
-/

namespace A277810.P3562598226178914695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277809 (A057944 n + A004736 (n + 1)).toNat

end

end A277810.P3562598226178914695

/-! ## A277810.P8673563226567038643

`A277809(A004202(n+1)-A132118(n+1))`
-/

namespace A277810.P8673563226567038643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277809 (A004202 (n + 1) - A132118 (n + 1)).toNat

end

end A277810.P8673563226567038643

/-! ## A277810.P5297840413769689625

`A277809(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A277810.P5297840413769689625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277809 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A277810.P5297840413769689625

/-! ## A277810.P9617663966908272569

`A277809(A277821(A277819(n+1)))`
-/

namespace A277810.P9617663966908272569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277809 (A277821 (A277819 (n + 1)).toNat).toNat

end

end A277810.P9617663966908272569

/-! ## A277810.P15728288907720560952

`A019565(A277820(n+1))`
-/

namespace A277810.P15728288907720560952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A277820 (n + 1)).toNat

end

end A277810.P15728288907720560952

/-!
# A277811: Column 1 of A277810: a(n) = A019565(A065621(n)).

The programs for A277811, there is no canonical definition to state claims against.
-/

/-! ## A277811.P9030091015095084713

`A019565(A065621(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277811.P9030091015095084713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A065621 (n + 1)).toNat

end

end A277811.P9030091015095084713

/-! ## A277811.P15512211471390878256

`A302033(Δ[n²])`
-/

namespace A277811.P15512211471390878256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A277811.P15512211471390878256

/-! ## A277811.P10104190182421707410

`A365810(A234613(2*n+1))`
-/

namespace A277811.P10104190182421707410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365810 (A234613 (2 * n + 1)).toNat

end

end A277811.P10104190182421707410

/-! ## A277811.P4983237436148085734

`A302033(2*n+1)%∑[A278911(2*n+1)]`
-/

namespace A277811.P4983237436148085734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278911 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302033 (2 * n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277811.P4983237436148085734

/-! ## A277811.P10044214182009047700

`A302033(2*n+1)+A010052(A026424(n+1))`
-/

namespace A277811.P10044214182009047700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (2 * n + 1) + A010052 (A026424 (n + 1)).toNat

end

end A277811.P10044214182009047700

/-! ## A277811.P16199219521433242106

`A302033(2*n+1)%A213646(A003059(n+1))`
-/

namespace A277811.P16199219521433242106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302033 (2 * n + 1)) (A213646 (A003059 (n + 1)).toNat)

end

end A277811.P16199219521433242106

/-! ## A277811.P361191472658150934

`A019565(xor(n, Δ[n²]))`
-/

namespace A277811.P361191472658150934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.xor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A277811.P361191472658150934

/-! ## A277811.P11982328396857067781

`A019565(A003188(Δ[n²]))`
-/

namespace A277811.P11982328396857067781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A003188 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A277811.P11982328396857067781

/-! ## A277811.P12377641770617070211

`A284003(A064706(2*n+1))`
-/

namespace A277811.P12377641770617070211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A064706 (2 * n + 1)).toNat

end

end A277811.P12377641770617070211

/-! ## A277811.P15040192195592766567

`A284003(A003188(xor(n, comp[2*n])))`
-/

namespace A277811.P15040192195592766567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A003188 (Nat.xor n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))).toNat

end

end A277811.P15040192195592766567

/-! ## A277811.P16875983708649333540

`A019565(A105081(2*(n+1))-1)`
-/

namespace A277811.P16875983708649333540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A105081 (2 * (n + 1)) - 1).toNat

end

end A277811.P16875983708649333540

/-! ## A277811.P3760770363862757289

`A019565(A028310(xor(n, 2*n+1)))`
-/

namespace A277811.P3760770363862757289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A028310 (Nat.xor n (2 * n + 1))).toNat

end

end A277811.P3760770363862757289

/-! ## A277811.P10020402392449124617

`A019565(A004277(and(2*n+1, -(n+1)))-(n+1))`
-/

namespace A277811.P10020402392449124617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A004277 (Int.land (2 * n + 1 : ℤ) (-(n + 1 : ℤ))).toNat - (n + 1 : ℤ)).toNat

end

end A277811.P10020402392449124617

/-! ## A277811.P13229564368860704934

`A019565(A000007(n+2)+xor(2*n+1, n+1)+1)`
-/

namespace A277811.P13229564368860704934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A000007 (n + 2) + (Nat.xor (2 * n + 1) (n + 1) + 1 : ℤ)).toNat

end

end A277811.P13229564368860704934

/-! ## A277811.P13439991312776792717

`A284003(A003188(A003188(2*n+1)))`
-/

namespace A277811.P13439991312776792717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A003188 (A003188 (2 * n + 1)).toNat).toNat

end

end A277811.P13439991312776792717

/-! ## A277811.P11377794747894328249

`A019565(A057300(A300838(2*n+1)))`
-/

namespace A277811.P11377794747894328249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A057300 (A300838 (2 * n + 1)).toNat).toNat

end

end A277811.P11377794747894328249

/-! ## A277811.P10162672460830678769

`A019565(A302846(A302843(2*n+1)))`
-/

namespace A277811.P10162672460830678769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A302846 (A302843 (2 * n + 1)).toNat).toNat

end

end A277811.P10162672460830678769

/-! ## A277811.P4051473410563113801

`A019565(A053644(2*n+1)+A038554(2*n+1))`
-/

namespace A277811.P4051473410563113801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A053644 (2 * n + 1) + A038554 (2 * n + 1)).toNat

end

end A277811.P4051473410563113801

/-! ## A277811.P682105728797432857

`A277006(A227352(2*n+1))`
-/

namespace A277811.P682105728797432857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A227352 (2 * n + 1)).toNat

end

end A277811.P682105728797432857

/-!
# A277812: a(n) = the first odious number encountered when starting from k = n and iterating the map k -> A003188(A006068(k)/2).

The programs for A277812, the canonical program `A277812.P16669805082078659615` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277812 has offset 1).

The definition of A277812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277812.P8558568909300737997

`A000069(A277813(n+1))`
-/

namespace A277812.P8558568909300737997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A277813 (n + 1)).toNat

end

end A277812.P8558568909300737997

namespace A277812

/-- `A000069(A277813(n+1))` -/
def P8558568909300737997.Spec : Prop :=
  ∀ n, P8558568909300737997.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P13083600487708369116

`(A000265(A001969(n+2))-1)/2`
-/

namespace A277812.P13083600487708369116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A001969 (n + 2)).toNat - 1 : ℚ) / 2

end

end A277812.P13083600487708369116

namespace A277812

/-- `(A000265(A001969(n+2))-1)/2` -/
def P13083600487708369116.Spec : Prop :=
  ∀ n, P13083600487708369116.a n = (A277812 (n + 1) : ℚ)

end A277812

/-! ## A277812.P16669805082078659615

`A003188(A000265(A006068(n+1)))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A277812

/-- `A003188(A000265(A006068(n+1)))` -/
def P16669805082078659615.Spec : Prop :=
  ∀ n, P16669805082078659615.a n = A277812 (n + 1)

theorem P16669805082078659615.correct : P16669805082078659615.Spec := by
  intro n
  simp only [A277812, Nat.add_sub_cancel]

end A277812

/-! ## A277812.P1629567071757487036

`A277902(A065621(A268671(A277901(n+1))))`
-/

namespace A277812.P1629567071757487036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277902 (A065621 (A268671 (A277901 (n + 1)).toNat).toNat).toNat

end

end A277812.P1629567071757487036

namespace A277812

/-- `A277902(A065621(A268671(A277901(n+1))))` -/
def P1629567071757487036.Spec : Prop :=
  ∀ n, P1629567071757487036.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P8535170334568130630

`A003188(A000265(A341916(A059893(n+1))))`
-/

namespace A277812.P8535170334568130630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A000265 (A341916 (A059893 (n + 1)).toNat).toNat).toNat

end

end A277812.P8535170334568130630

namespace A277812

/-- `A003188(A000265(A341916(A059893(n+1))))` -/
def P8535170334568130630.Spec : Prop :=
  ∀ n, P8535170334568130630.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P5380065708684572632

`filter[A131987(n+1), A010060(#)]`
-/

namespace A277812.P5380065708684572632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A277812.P5380065708684572632

namespace A277812

/-- `filter[A131987(n+1), A010060(#)]` -/
def P5380065708684572632.Spec : Prop :=
  ∀ n, P5380065708684572632.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P7893423554820120808

`A025480(comp[xor(n+1, 2*n+1)])`
-/

namespace A277812.P7893423554820120808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A277812.P7893423554820120808

namespace A277812

/-- `A025480(comp[xor(n+1, 2*n+1)])` -/
def P7893423554820120808.Spec : Prop :=
  ∀ n, P7893423554820120808.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P13742036776741751361

`filter[A025480(n+1), A010060(#)]`
-/

namespace A277812.P13742036776741751361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A277812.P13742036776741751361

namespace A277812

/-- `filter[A025480(n+1), A010060(#)]` -/
def P13742036776741751361.Spec : Prop :=
  ∀ n, P13742036776741751361.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P9036154127401653427

`A025480(A001285(n+1)+2*n)`
-/

namespace A277812.P9036154127401653427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A001285 (n + 1) + (2 * n : ℤ)).toNat

end

end A277812.P9036154127401653427

namespace A277812

/-- `A025480(A001285(n+1)+2*n)` -/
def P9036154127401653427.Spec : Prop :=
  ∀ n, P9036154127401653427.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P6091633055706259107

`A025480(A010060(n+1)+2*n+1)`
-/

namespace A277812.P6091633055706259107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A010060 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A277812.P6091633055706259107

namespace A277812

/-- `A025480(A010060(n+1)+2*n+1)` -/
def P6091633055706259107.Spec : Prop :=
  ∀ n, P6091633055706259107.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P18400289986342217163

`A101279(A001969(n+2))`
-/

namespace A277812.P18400289986342217163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A001969 (n + 2)).toNat

end

end A277812.P18400289986342217163

namespace A277812

/-- `A101279(A001969(n+2))` -/
def P18400289986342217163.Spec : Prop :=
  ∀ n, P18400289986342217163.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P11876209044317128346

`A101279(A125592(n+2)/2)`
-/

namespace A277812.P11876209044317128346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (SequenceMachineLib.roundAway ((A125592 (n + 2) : ℚ) / 2)).toNat

end

end A277812.P11876209044317128346

namespace A277812

/-- `A101279(A125592(n+2)/2)` -/
def P11876209044317128346.Spec : Prop :=
  ∀ n, P11876209044317128346.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P4796936336852250836

`filter[A110962(2*n), A010060(#)]`
-/

namespace A277812.P4796936336852250836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A277812.P4796936336852250836

namespace A277812

/-- `filter[A110962(2*n), A010060(#)]` -/
def P4796936336852250836.Spec : Prop :=
  ∀ n, P4796936336852250836.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P4548734485804919767

`A101279(A125592(n+2))`
-/

namespace A277812.P4548734485804919767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A125592 (n + 2)).toNat

end

end A277812.P4548734485804919767

namespace A277812

/-- `A101279(A125592(n+2))` -/
def P4548734485804919767.Spec : Prop :=
  ∀ n, P4548734485804919767.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P7567677404456449984

`A000069(A004736(A277883(n+1)))`
-/

namespace A277812.P7567677404456449984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A004736 (A277883 (n + 1)).toNat).toNat

end

end A277812.P7567677404456449984

namespace A277812

/-- `A000069(A004736(A277883(n+1)))` -/
def P7567677404456449984.Spec : Prop :=
  ∀ n, P7567677404456449984.a n = A277812 (n + 1)

end A277812

/-! ## A277812.P17414620116946050467

`A277880(A000217(A277813(A115384(2*n+1))))`
-/

namespace A277812.P17414620116946050467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277880 (A000217 (A277813 (A115384 (2 * n + 1)).toNat).toNat).toNat

end

end A277812.P17414620116946050467

namespace A277812

/-- `A277880(A000217(A277813(A115384(2*n+1))))` -/
def P17414620116946050467.Spec : Prop :=
  ∀ n, P17414620116946050467.a n = A277812 (n + 1)

end A277812

/-!
# A277813: a(n) = A115384(A277812(n)) = index of the row where n is located in array A277880.

The programs for A277813, the canonical program `A277813.P6365018661829255093` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277813 has offset 1).

The definition of A277813 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277812, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277813.P6365018661829255093

`A115384(A277812(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A277813

/-- `A115384(A277812(n+1))` -/
def P6365018661829255093.Spec : Prop :=
  ∀ n, P6365018661829255093.a n = A277813 (n + 1)

theorem P6365018661829255093.correct : P6365018661829255093.Spec := by
  intro n
  simp only [A277813, Nat.add_sub_cancel]

end A277813

/-! ## A277813.P16512088304701830208

`A277812(n+1)-A004526(A277812(n+1)-1)`
-/

namespace A277813.P16512088304701830208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277812 (n + 1) - A004526 (A277812 (n + 1) - 1).toNat

end

end A277813.P16512088304701830208

namespace A277813

/-- `A277812(n+1)-A004526(A277812(n+1)-1)` -/
def P16512088304701830208.Spec : Prop :=
  ∀ n, P16512088304701830208.a n = A277813 (n + 1)

end A277813

/-! ## A277813.P7136795576485443103

`A115384(A003188(A000265(A006068(n+1))))`
-/

namespace A277813.P7136795576485443103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A003188 (A000265 (A006068 (n + 1)).toNat).toNat).toNat

end

end A277813.P7136795576485443103

namespace A277813

/-- `A115384(A003188(A000265(A006068(n+1))))` -/
def P7136795576485443103.Spec : Prop :=
  ∀ n, P7136795576485443103.a n = A277813 (n + 1)

end A277813

/-! ## A277813.P11358080574906560129

`A004526(A277812(n+1)+2)`
-/

namespace A277813.P11358080574906560129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A277812 (n + 1) + 2).toNat

end

end A277813.P11358080574906560129

namespace A277813

/-- `A004526(A277812(n+1)+2)` -/
def P11358080574906560129.Spec : Prop :=
  ∀ n, P11358080574906560129.a n = A277813 (n + 1)

end A277813

/-! ## A277813.P6895751622005398621

`A268671(A277901(n+1))`
-/

namespace A277813.P6895751622005398621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268671 (A277901 (n + 1)).toNat

end

end A277813.P6895751622005398621

namespace A277813

/-- `A268671(A277901(n+1))` -/
def P6895751622005398621.Spec : Prop :=
  ∀ n, P6895751622005398621.a n = A277813 (n + 1)

end A277813

/-! ## A277813.P15807499800650295676

`A277822(n+1)+A277881(n+1)-A277883(n+1)`
-/

namespace A277813.P15807499800650295676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (n + 1) + (A277881 (n + 1) - A277883 (n + 1))

end

end A277813.P15807499800650295676

namespace A277813

/-- `A277822(n+1)+A277881(n+1)-A277883(n+1)` -/
def P15807499800650295676.Spec : Prop :=
  ∀ n, P15807499800650295676.a n = A277813 (n + 1)

end A277813

/-! ## A277813.P13618862555663378506

`A002260(A277881(n+1))`
-/

namespace A277813.P13618862555663378506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A277881 (n + 1)).toNat

end

end A277813.P13618862555663378506

namespace A277813

/-- `A002260(A277881(n+1))` -/
def P13618862555663378506.Spec : Prop :=
  ∀ n, P13618862555663378506.a n = A277813 (n + 1)

end A277813

/-! ## A277813.P6191167622835529535

`A004736(A277883(n+1))`
-/

namespace A277813.P6191167622835529535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A277883 (n + 1)).toNat

end

end A277813.P6191167622835529535

namespace A277813

/-- `A004736(A277883(n+1))` -/
def P6191167622835529535.Spec : Prop :=
  ∀ n, P6191167622835529535.a n = A277813 (n + 1)

end A277813

/-! ## A277813.P11984594663059639669

`A248514(A268718(n+1))`
-/

namespace A277813.P11984594663059639669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248514 (A268718 (n + 1)).toNat

end

end A277813.P11984594663059639669

namespace A277813

/-- `A248514(A268718(n+1))` -/
def P11984594663059639669.Spec : Prop :=
  ∀ n, P11984594663059639669.a n = A277813 (n + 1)

end A277813

/-!
# A277814: a(n) = number of zeros in A277815[0..n].

The programs for A277814, there is no canonical definition to state claims against.
-/

/-! ## A277814.P8129179151673681375

`∑[char[comp[A277816(n)]]]`
-/

namespace A277814.P8129179151673681375
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277816 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277814.P8129179151673681375

/-! ## A277814.P12217760683222365032

`∑[char[A277817(n+1)]]`
-/

namespace A277814.P12217760683222365032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277817 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277814.P12217760683222365032

/-! ## A277814.P2270349991261237085

`∑[char[A277826(n+1)]]`
-/

namespace A277814.P2270349991261237085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277814.P2270349991261237085

/-! ## A277814.P15326768357282638285

`∑[char[A277817(n)]]-1`
-/

namespace A277814.P15326768357282638285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277817 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A277814.P15326768357282638285

/-! ## A277814.P7996876617311670596

`∑[char[A277826(n)]]-1`
-/

namespace A277814.P7996876617311670596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A277814.P7996876617311670596

/-! ## A277814.P9336177506454086250

`n-∑[and(1, A000040(A277815(n)+1))]`
-/

namespace A277814.P9336177506454086250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (A277815 n + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277814.P9336177506454086250

/-! ## A277814.P2177636944720586257

`∑[char[A277711(n+1)]]`
-/

namespace A277814.P2177636944720586257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277711 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277814.P2177636944720586257

/-!
# A277817: Positions of zeros in A277815; sequence A277711 sorted into ascending order.

The programs for A277817, there is no canonical definition to state claims against.
-/

/-! ## A277817.P4053230364221966127

`record[A277826(n)]`
-/

namespace A277817.P4053230364221966127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277817.P4053230364221966127

/-! ## A277817.P4546855684217486454

`record[n-A277815(n)]`
-/

namespace A277817.P4546855684217486454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A277815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277817.P4546855684217486454

/-! ## A277817.P3029985797267210067

`eq[0, A277815(n)]`
-/

namespace A277817.P3029985797267210067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277817.P3029985797267210067

/-! ## A277817.P2393580030555321139

`lt[A277824(n), 2]`
-/

namespace A277817.P2393580030555321139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277824 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A277817.P2393580030555321139

/-! ## A277817.P16810801094255934667

`A277826(eq[n, A277826(n)])`
-/

namespace A277817.P16810801094255934667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277817.P16810801094255934667

/-! ## A277817.P10873346160606464621

`eq[A277824(n), A277824(A277824(n)²)]`
-/

namespace A277817.P10873346160606464621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277824 (A277824 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277817.P10873346160606464621

/-! ## A277817.P15072952735397557880

`eq[A135685(A277824(n)+1), A277824(n)]`
-/

namespace A277817.P15072952735397557880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135685 (A277824 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277817.P15072952735397557880

/-! ## A277817.P13845489283559600958

`eq[A267084(A277824(n)+1), A277824(n)]`
-/

namespace A277817.P13845489283559600958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (A277824 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277817.P13845489283559600958

/-! ## A277817.P11347552018304374260

`comp[A277816(n+1)]`
-/

namespace A277817.P11347552018304374260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277817.P11347552018304374260

/-! ## A277817.P12258018094226539007

`eq[A267084(n+1), A277824(n)]`
-/

namespace A277817.P12258018094226539007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277817.P12258018094226539007

/-! ## A277817.P155233505797517794

`eq[A057427(n), A277824(n)]`
-/

namespace A277817.P155233505797517794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277817.P155233505797517794

/-! ## A277817.P6285013072745386470

`record[A277711(A264977(n))]`
-/

namespace A277817.P6285013072745386470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277711 (A264977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277817.P6285013072745386470

/-!
# A277818: Index of the column where n is located in array A277820: a(n) = 1 + A268389(n).

The programs for A277818, there is no canonical definition to state claims against.
-/

/-! ## A277818.P8483856314918274174

`1+A268389(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277818.P8483856314918274174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A268389 (n + 1)

end

end A277818.P8483856314918274174

/-! ## A277818.P13601221682330366085

`Δ[A268395(n)]+1`
-/

namespace A277818.P13601221682330366085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A277818.P13601221682330366085

/-! ## A277818.P3400500537240231453

`2-Δ[A268672(n)]`
-/

namespace A277818.P3400500537240231453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A277818.P3400500537240231453

/-! ## A277818.P1797135763930392703

`val(A305422(n+1), 2)+1`
-/

namespace A277818.P1797135763930392703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305422 (n + 1)).toNat 2 + 1

end

end A277818.P1797135763930392703

/-! ## A277818.P7608168038586795527

`A268679(xor(n, 2*(n+1))+1)`
-/

namespace A277818.P7608168038586795527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268679 (Nat.xor n (2 * (n + 1)) + 1)

end

end A277818.P7608168038586795527

/-! ## A277818.P18065400287285174904

`A268679(A003188(n+1))`
-/

namespace A277818.P18065400287285174904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268679 (A003188 (n + 1)).toNat

end

end A277818.P18065400287285174904

/-! ## A277818.P14397704212174512237

`A277822(A277902(n+1))`
-/

namespace A277818.P14397704212174512237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A277902 (n + 1)).toNat

end

end A277818.P14397704212174512237

/-! ## A277818.P11196851212042094348

`A092436(n+1)*A268679(n+1)+1`
-/

namespace A277818.P11196851212042094348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092436 (n + 1) * A268679 (n + 1) + 1

end

end A277818.P11196851212042094348

/-! ## A277818.P7898179259501852739

`val(A193231(n+1), 2)+1`
-/

namespace A277818.P7898179259501852739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A193231 (n + 1)).toNat 2 + 1

end

end A277818.P7898179259501852739

/-! ## A277818.P2037944442894415332

`A268389(A048724(n+1))`
-/

namespace A277818.P2037944442894415332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (A048724 (n + 1)).toNat

end

end A277818.P2037944442894415332

/-! ## A277818.P6189299801722311349

`A268389(A048726(n+1))`
-/

namespace A277818.P6189299801722311349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (A048726 (n + 1)).toNat

end

end A277818.P6189299801722311349

/-! ## A277818.P9180747688729830749

`A277822(A234612(n+1))`
-/

namespace A277818.P9180747688729830749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A234612 (n + 1)).toNat

end

end A277818.P9180747688729830749

/-! ## A277818.P16189040821208191417

`A277822(A003188(A003188(A234613(n+1))))`
-/

namespace A277818.P16189040821208191417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A003188 (A003188 (A234613 (n + 1)).toNat).toNat).toNat

end

end A277818.P16189040821208191417

/-! ## A277818.P11418225599750285114

`A136480(A234613(n+1))`
-/

namespace A277818.P11418225599750285114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A234613 (n + 1)).toNat

end

end A277818.P11418225599750285114

/-! ## A277818.P9671759263343408448

`val(A091203(n+1), 3)+1`
-/

namespace A277818.P9671759263343408448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A091203 (n + 1)).toNat 3 + 1

end

end A277818.P9671759263343408448

/-! ## A277818.P17887453790624365825

`A001511(A305422(n+1))`
-/

namespace A277818.P17887453790624365825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A305422 (n + 1)).toNat

end

end A277818.P17887453790624365825

/-! ## A277818.P7256818473950609504

`A001511(A193231(n+1))`
-/

namespace A277818.P7256818473950609504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A193231 (n + 1)).toNat

end

end A277818.P7256818473950609504

/-! ## A277818.P7583817837359819368

`A091090(A234025(n+1))`
-/

namespace A277818.P7583817837359819368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A234025 (n + 1)).toNat

end

end A277818.P7583817837359819368

/-! ## A277818.P10028258198969059412

`A001511(A379471(n+1))`
-/

namespace A277818.P10028258198969059412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A379471 (n + 1)).toNat

end

end A277818.P10028258198969059412

/-! ## A277818.P8285149847299008616

`A001511(A379472(n+1))`
-/

namespace A277818.P8285149847299008616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A379472 (n + 1)).toNat

end

end A277818.P8285149847299008616

/-!
# A277819: Transpose of square array A277820.

The programs for A277819, there is no canonical definition to state claims against.
-/

/-! ## A277819.P11180613482058280406

`A277820(A038722(n+1))`
-/

namespace A277819.P11180613482058280406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277820 (A038722 (n + 1)).toNat

end

end A277819.P11180613482058280406

/-! ## A277819.P8812964417330985154

`A277820(A061579(n)+1)`
-/

namespace A277819.P8812964417330985154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277820 (A061579 n + 1).toNat

end

end A277819.P8812964417330985154

/-! ## A277819.P3361987676653010374

`A277820(A093995(n+1)-n)`
-/

namespace A277819.P3361987676653010374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277820 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A277819.P3361987676653010374

/-! ## A277819.P6755655075196442067

`A277820(A002024(n+1)²-n)`
-/

namespace A277819.P6755655075196442067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277820 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A277819.P6755655075196442067

/-! ## A277819.P8020596953951496655

`A277820(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A277819.P8020596953951496655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277820 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A277819.P8020596953951496655

/-! ## A277819.P3867656754146923320

`A277901(A277882(n+1))`
-/

namespace A277819.P3867656754146923320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277901 (A277882 (n + 1)).toNat

end

end A277819.P3867656754146923320

/-! ## A277819.P9159692901796383370

`A277820(A277883(A277880(n+1)))`
-/

namespace A277819.P9159692901796383370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277820 (A277883 (A277880 (n + 1)).toNat).toNat

end

end A277819.P9159692901796383370

/-!
# A277820: Square array: A(r,1) = A065621(r); for c > 1, A(r,c) = A048724(A(r,c-1)), read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A277820, there is no canonical definition to state claims against.
-/

/-! ## A277820.P3301967900451025996

`A277901(A277880(n+1))`
-/

namespace A277820.P3301967900451025996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277901 (A277880 (n + 1)).toNat

end

end A277820.P3301967900451025996

/-! ## A277820.P18002918268784940488

`A277819(A038722(n+1))`
-/

namespace A277820.P18002918268784940488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (A038722 (n + 1)).toNat

end

end A277820.P18002918268784940488

/-! ## A277820.P2881339620117589671

`A277819(A061579(n)+1)`
-/

namespace A277820.P2881339620117589671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (A061579 n + 1).toNat

end

end A277820.P2881339620117589671

/-! ## A277820.P954182033847969774

`A277819(A093995(n+1)-n)`
-/

namespace A277820.P954182033847969774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A277820.P954182033847969774

/-! ## A277820.P6653802328164361602

`A277819(A002024(n+1)²-n)`
-/

namespace A277820.P6653802328164361602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A277820.P6653802328164361602

/-! ## A277820.P12000425536026323393

`A277819(A002024(n+1)*A002024(n+1)-n)`
-/

namespace A277820.P12000425536026323393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (A002024 (n + 1) * A002024 (n + 1) - (n : ℤ)).toNat

end

end A277820.P12000425536026323393

/-! ## A277820.P15714478811892184518

`A277819(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A277820.P15714478811892184518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A277820.P15714478811892184518

/-! ## A277820.P14417509167407377944

`A277819(A277821(A277819(n+1)))`
-/

namespace A277820.P14417509167407377944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277819 (A277821 (A277819 (n + 1)).toNat).toNat

end

end A277820.P14417509167407377944

/-! ## A277820.P15946532348850270218

`A277901(A277882(A277881(A277882(n+1))))`
-/

namespace A277820.P15946532348850270218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277901 (A277882 (A277881 (A277882 (n + 1)).toNat).toNat).toNat

end

end A277820.P15946532348850270218

/-!
# A277821: Inverse permutation to A277820.

The programs for A277821, there is no canonical definition to state claims against.
-/

/-! ## A277821.P18230155058107601472

`A277881(A277902(n+1))`
-/

namespace A277821.P18230155058107601472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277881 (A277902 (n + 1)).toNat

end

end A277821.P18230155058107601472

/-!
# A277822: a(n) = index of the column where n is located in array A277880.

The programs for A277822, the canonical program `A277822.P8229571769565338857` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277822 has offset 0).

The definition of A277822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277822.P16181506980602709365

`∑{d}[A292601(n), A036987(#-1)]`
-/

namespace A277822.P16181506980602709365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A036987 (d - 1)

end

end A277822.P16181506980602709365

namespace A277822

/-- `∑{d}[A292601(n), A036987(#-1)]` -/
def P16181506980602709365.Spec : Prop :=
  ∀ n, P16181506980602709365.a n = A277822 n

end A277822

/-! ## A277822.P8229571769565338857

`A268726(and(A001969(n+1), A006257(n)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A277822

/-- `A268726(and(A001969(n+1), A006257(n)))` -/
def P8229571769565338857.Spec : Prop :=
  ∀ n, P8229571769565338857.a n = A277822 n

theorem P8229571769565338857.correct : P8229571769565338857.Spec := by
  intro n
  simp only [A277822]

end A277822

/-! ## A277822.P8503992677428429672

`A091090(A233279(n))-A000007(n)`
-/

namespace A277822.P8503992677428429672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A233279 n).toNat - A000007 n

end

end A277822.P8503992677428429672

namespace A277822

/-- `A091090(A233279(n))-A000007(n)` -/
def P8503992677428429672.Spec : Prop :=
  ∀ n, P8503992677428429672.a n = A277822 n

end A277822

/-! ## A277822.P15611416492773448476

`A277808(A004277(n))+A010060(n)`
-/

namespace A277822.P15611416492773448476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277808 (A004277 n).toNat + A010060 n

end

end A277822.P15611416492773448476

namespace A277822

/-- `A277808(A004277(n))+A010060(n)` -/
def P15611416492773448476.Spec : Prop :=
  ∀ n, P15611416492773448476.a n = A277822 n

end A277822

/-! ## A277822.P14539093332342838374

`val(A004277(A006068(n)), 2)`
-/

namespace A277822.P14539093332342838374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 (A006068 n).toNat).toNat 2

end

end A277822.P14539093332342838374

namespace A277822

/-- `val(A004277(A006068(n)), 2)` -/
def P14539093332342838374.Spec : Prop :=
  ∀ n, (P14539093332342838374.a n : ℤ) = A277822 n

end A277822

/-! ## A277822.P12847355684328460653

`A089263(2*A125592(n+1))`
-/

namespace A277822.P12847355684328460653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (2 * A125592 (n + 1)).toNat

end

end A277822.P12847355684328460653

namespace A277822

/-- `A089263(2*A125592(n+1))` -/
def P12847355684328460653.Spec : Prop :=
  ∀ n, P12847355684328460653.a n = A277822 n

end A277822

/-! ## A277822.P13757966490848970923

`A277808(A277808(2*n+1)+A004277(n))`
-/

namespace A277822.P13757966490848970923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277808 (A277808 (2 * n + 1) + A004277 n).toNat

end

end A277822.P13757966490848970923

namespace A277822

/-- `A277808(A277808(2*n+1)+A004277(n))` -/
def P13757966490848970923.Spec : Prop :=
  ∀ n, P13757966490848970923.a n = A277822 n

end A277822

/-! ## A277822.P17995770535797654366

`val(A255177(comp[xor(n, 2*n)]-1), 2)`
-/

namespace A277822.P17995770535797654366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255177 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - 1)).toNat 2

end

end A277822.P17995770535797654366

namespace A277822

/-- `val(A255177(comp[xor(n, 2*n)]-1), 2)` -/
def P17995770535797654366.Spec : Prop :=
  ∀ n, (P17995770535797654366.a n : ℤ) = A277822 n

end A277822

/-! ## A277822.P5214770781527151481

`val(A004277(comp[xor(n, 2*n+1)]), 2)`
-/

namespace A277822.P5214770781527151481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat 2

end

end A277822.P5214770781527151481

namespace A277822

/-- `val(A004277(comp[xor(n, 2*n+1)]), 2)` -/
def P5214770781527151481.Spec : Prop :=
  ∀ n, (P5214770781527151481.a n : ℤ) = A277822 n

end A277822

/-! ## A277822.P6537088897756456190

`val(A004277(char[xor(n, 2*n+1)]+2*n), 2)`
-/

namespace A277822.P6537088897756456190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n)).toNat 2

end

end A277822.P6537088897756456190

namespace A277822

/-- `val(A004277(char[xor(n, 2*n+1)]+2*n), 2)` -/
def P6537088897756456190.Spec : Prop :=
  ∀ n, (P6537088897756456190.a n : ℤ) = A277822 n

end A277822

/-! ## A277822.P14019585548483416966

`val(A255177(A010060(n)+2*n), 2)`
-/

namespace A277822.P14019585548483416966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255177 (A010060 n + (2 * n : ℤ)).toNat).toNat 2

end

end A277822.P14019585548483416966

namespace A277822

/-- `val(A255177(A010060(n)+2*n), 2)` -/
def P14019585548483416966.Spec : Prop :=
  ∀ n, (P14019585548483416966.a n : ℤ) = A277822 n

end A277822

/-! ## A277822.P1616240910570366340

`A001222(A207790(comp[xor(n, 2*n)]))`
-/

namespace A277822.P1616240910570366340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A207790 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A277822.P1616240910570366340

namespace A277822

/-- `A001222(A207790(comp[xor(n, 2*n)]))` -/
def P1616240910570366340.Spec : Prop :=
  ∀ n, P1616240910570366340.a n = A277822 n

end A277822

/-! ## A277822.P9065429789559597825

`A001222(A207790(char[xor(n, 2*n)]+2*n))`
-/

namespace A277822.P9065429789559597825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A207790 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n)).toNat

end

end A277822.P9065429789559597825

namespace A277822

/-- `A001222(A207790(char[xor(n, 2*n)]+2*n))` -/
def P9065429789559597825.Spec : Prop :=
  ∀ n, P9065429789559597825.a n = A277822 n

end A277822

/-! ## A277822.P868292439616365243

`A327491(A268716(n))`
-/

namespace A277822.P868292439616365243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327491 (A268716 n).toNat

end

end A277822.P868292439616365243

namespace A277822

/-- `A327491(A268716(n))` -/
def P868292439616365243.Spec : Prop :=
  ∀ n, P868292439616365243.a n = A277822 n

end A277822

/-! ## A277822.P6616149341481807714

`A285099(2*A000069(n+1)-1)`
-/

namespace A277822.P6616149341481807714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (2 * A000069 (n + 1) - 1).toNat

end

end A277822.P6616149341481807714

namespace A277822

/-- `A285099(2*A000069(n+1)-1)` -/
def P6616149341481807714.Spec : Prop :=
  ∀ n, P6616149341481807714.a n = A277822 n

end A277822

/-! ## A277822.P4178939162208446928

`A088705(2*n)-(3-A001285(n))*A088705(4*n)`
-/

namespace A277822.P4178939162208446928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (2 * n) - (3 - A001285 n) * A088705 (4 * n)

end

end A277822.P4178939162208446928

namespace A277822

/-- `A088705(2*n)-(3-A001285(n))*A088705(4*n)` -/
def P4178939162208446928.Spec : Prop :=
  ∀ n, P4178939162208446928.a n = A277822 n

end A277822

/-! ## A277822.P3408008687148675603

`A327491(A125592(n+1))`
-/

namespace A277822.P3408008687148675603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327491 (A125592 (n + 1)).toNat

end

end A277822.P3408008687148675603

namespace A277822

/-- `A327491(A125592(n+1))` -/
def P3408008687148675603.Spec : Prop :=
  ∀ n, P3408008687148675603.a n = A277822 n

end A277822

/-! ## A277822.P3989308706925427176

`A285099(A000069(2*(n+1)))`
-/

namespace A277822.P3989308706925427176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A000069 (2 * (n + 1))).toNat

end

end A277822.P3989308706925427176

namespace A277822

/-- `A285099(A000069(2*(n+1)))` -/
def P3989308706925427176.Spec : Prop :=
  ∀ n, P3989308706925427176.a n = A277822 n

end A277822

/-! ## A277822.P6011858901198356929

`A285097(2*comp[xor(n-1, 2*n)]+1)`
-/

namespace A277822.P6011858901198356929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (2 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A277822.P6011858901198356929

namespace A277822

/-- `A285097(2*comp[xor(n-1, 2*n)]+1)` -/
def P6011858901198356929.Spec : Prop :=
  ∀ n, P6011858901198356929.a n = A277822 n

end A277822

/-! ## A277822.P12969110256165016510

`A285097(A129771(n+1)-2)`
-/

namespace A277822.P12969110256165016510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A129771 (n + 1) - 2).toNat

end

end A277822.P12969110256165016510

namespace A277822

/-- `A285097(A129771(n+1)-2)` -/
def P12969110256165016510.Spec : Prop :=
  ∀ n, P12969110256165016510.a n = A277822 n

end A277822

/-!
# A277823: a(n) = A048724(A065621(n)).

The programs for A277823, the canonical program `A277823.P16868301371846557949` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277823 has offset 1).

The definition of A277823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277823.P16868301371846557949

`A048724(A065621(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A277823

/-- `A048724(A065621(n+1))` -/
def P16868301371846557949.Spec : Prop :=
  ∀ n, P16868301371846557949.a n = A277823 (n + 1)

theorem P16868301371846557949.correct : P16868301371846557949.Spec := by
  intro n
  simp only [A277823, Nat.add_sub_cancel]

end A277823

/-! ## A277823.P7206146760498956187

`xor(n, record[xor(3, n)])`
-/

namespace A277823.P7206146760498956187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A277823.P7206146760498956187

namespace A277823

/-- `xor(n, record[xor(3, n)])` -/
def P7206146760498956187.Spec : Prop :=
  ∀ n, (P7206146760498956187.a n : ℤ) = A277823 (n + 1)

end A277823

/-! ## A277823.P3287265971135056845

`xor(n, 4*n+3)`
-/

namespace A277823.P3287265971135056845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (4 * n + 3)

end

end A277823.P3287265971135056845

namespace A277823

/-- `xor(n, 4*n+3)` -/
def P3287265971135056845.Spec : Prop :=
  ∀ n, (P3287265971135056845.a n : ℤ) = A277823 (n + 1)

end A277823

/-! ## A277823.P2510504000141472750

`abs(xor(n+1, n²-(n+2)²))`
-/

namespace A277823.P2510504000141472750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n + 1 : ℤ) ((n ^ 2 : ℤ) - ((n + 2) ^ 2 : ℤ))|

end

end A277823.P2510504000141472750

namespace A277823

/-- `abs(xor(n+1, n²-(n+2)²))` -/
def P2510504000141472750.Spec : Prop :=
  ∀ n, P2510504000141472750.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P9204939826801658196

`-xor(n+1, n²-(n+2)²)`
-/

namespace A277823.P9204939826801658196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n + 1 : ℤ) ((n ^ 2 : ℤ) - ((n + 2) ^ 2 : ℤ))

end

end A277823.P9204939826801658196

namespace A277823

/-- `-xor(n+1, n²-(n+2)²)` -/
def P9204939826801658196.Spec : Prop :=
  ∀ n, P9204939826801658196.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P16508857541024965068

`xor(n+1, A004767(n))+1`
-/

namespace A277823.P16508857541024965068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A004767 n) + 1

end

end A277823.P16508857541024965068

namespace A277823

/-- `xor(n+1, A004767(n))+1` -/
def P16508857541024965068.Spec : Prop :=
  ∀ n, P16508857541024965068.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P9363915809576016933

`A132429(n)+A048725(n)`
-/

namespace A277823.P9363915809576016933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 n + A048725 n

end

end A277823.P9363915809576016933

namespace A277823

/-- `A132429(n)+A048725(n)` -/
def P9363915809576016933.Spec : Prop :=
  ∀ n, P9363915809576016933.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P8792980344608398433

`A003188(A003188(4*n+3))`
-/

namespace A277823.P8792980344608398433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (4 * n + 3)).toNat

end

end A277823.P8792980344608398433

namespace A277823

/-- `A003188(A003188(4*n+3))` -/
def P8792980344608398433.Spec : Prop :=
  ∀ n, P8792980344608398433.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P5029480047211050564

`A003188(A128309(A003188(n)+1))`
-/

namespace A277823.P5029480047211050564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A128309 (A003188 n + 1).toNat).toNat

end

end A277823.P5029480047211050564

namespace A277823

/-- `A003188(A128309(A003188(n)+1))` -/
def P5029480047211050564.Spec : Prop :=
  ∀ n, P5029480047211050564.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P3820462225696773183

`A003188(A065621(n+1)+A065621(n+1))`
-/

namespace A277823.P3820462225696773183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A065621 (n + 1) + A065621 (n + 1)).toNat

end

end A277823.P3820462225696773183

namespace A277823

/-- `A003188(A065621(n+1)+A065621(n+1))` -/
def P3820462225696773183.Spec : Prop :=
  ∀ n, P3820462225696773183.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P11834982305105293460

`A277901(A129771(n+1))`
-/

namespace A277823.P11834982305105293460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277901 (A129771 (n + 1)).toNat

end

end A277823.P11834982305105293460

namespace A277823

/-- `A277901(A129771(n+1))` -/
def P11834982305105293460.Spec : Prop :=
  ∀ n, P11834982305105293460.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P622931217577162821

`A048724(xor(1, A048724(n)))`
-/

namespace A277823.P622931217577162821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (Int.xor 1 (A048724 n)).toNat

end

end A277823.P622931217577162821

namespace A277823

/-- `A048724(xor(1, A048724(n)))` -/
def P622931217577162821.Spec : Prop :=
  ∀ n, P622931217577162821.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P16853955817082044248

`A004443(xor(n, A016813(n)))`
-/

namespace A277823.P16853955817082044248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.xor (n : ℤ) (A016813 n)).toNat

end

end A277823.P16853955817082044248

namespace A277823

/-- `A004443(xor(n, A016813(n)))` -/
def P16853955817082044248.Spec : Prop :=
  ∀ n, P16853955817082044248.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P16420688151790856682

`A277901(A128309(n+1)+1)`
-/

namespace A277823.P16420688151790856682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277901 (A128309 (n + 1) + 1).toNat

end

end A277823.P16420688151790856682

namespace A277823

/-- `A277901(A128309(n+1)+1)` -/
def P16420688151790856682.Spec : Prop :=
  ∀ n, P16420688151790856682.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P4713161966803721256

`A048724(A003188(n+1+n))`
-/

namespace A277823.P4713161966803721256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (A003188 (n + 1 + n)).toNat

end

end A277823.P4713161966803721256

namespace A277823

/-- `A048724(A003188(n+1+n))` -/
def P4713161966803721256.Spec : Prop :=
  ∀ n, P4713161966803721256.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P6364429777629556559

`A004443(xor(n, A016825(n)-1))`
-/

namespace A277823.P6364429777629556559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.xor (n : ℤ) (A016825 n - 1)).toNat

end

end A277823.P6364429777629556559

namespace A277823

/-- `A004443(xor(n, A016825(n)-1))` -/
def P6364429777629556559.Spec : Prop :=
  ∀ n, P6364429777629556559.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P15218465454590760586

`A004443(xor(n, A017089(n)/2))`
-/

namespace A277823.P15218465454590760586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((A017089 n : ℚ) / 2))).toNat

end

end A277823.P15218465454590760586

namespace A277823

/-- `A004443(xor(n, A017089(n)/2))` -/
def P15218465454590760586.Spec : Prop :=
  ∀ n, P15218465454590760586.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P4926765373050837807

`A001969(A064706(2*n+1)+1)`
-/

namespace A277823.P4926765373050837807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A064706 (2 * n + 1) + 1).toNat

end

end A277823.P4926765373050837807

namespace A277823

/-- `A001969(A064706(2*n+1)+1)` -/
def P4926765373050837807.Spec : Prop :=
  ∀ n, P4926765373050837807.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P4202672154143217270

`A277901(2*A000069(n+1)+1)`
-/

namespace A277823.P4202672154143217270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277901 (2 * A000069 (n + 1) + 1).toNat

end

end A277823.P4202672154143217270

namespace A277823

/-- `A277901(2*A000069(n+1)+1)` -/
def P4202672154143217270.Spec : Prop :=
  ∀ n, P4202672154143217270.a n = A277823 (n + 1)

end A277823

/-! ## A277823.P16979971431979000328

`A106409(A048724(2*n+1)-1)`
-/

namespace A277823.P16979971431979000328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106409 (A048724 (2 * n + 1) - 1).toNat

end

end A277823.P16979971431979000328

namespace A277823

/-- `A106409(A048724(2*n+1)-1)` -/
def P16979971431979000328.Spec : Prop :=
  ∀ n, P16979971431979000328.a n = A277823 (n + 1)

end A277823

/-!
# A277824: a(0) = 0; for n >= 1, a(n) = 1 + a(A277815(n)); index of the column where n is located in array A277710.

The programs for A277824, there is no canonical definition to state claims against.
-/

/-! ## A277824.P13268600017511673690

`1+a(A277815(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277824.P13268600017511673690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A277815 n).toNat

end

end A277824.P13268600017511673690

/-! ## A277824.P2116377869053945520

`a(A277815(n))+1` with `a(0)=0`
-/

namespace A277824.P2116377869053945520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A277815 n).toNat + 1

end

end A277824.P2116377869053945520

/-! ## A277824.P203469559743432960

`A080513(2*a(A277815(n)))` with `a(0)=0`
-/

namespace A277824.P203469559743432960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A080513 (2 * a (A277815 n).toNat).toNat

end

end A277824.P203469559743432960

/-! ## A277824.P10125449434628317291

`a(A277815(n))-xor(n, -1)-A028310(n)` with `a(0)=0`
-/

namespace A277824.P10125449434628317291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A277815 n).toNat - Int.xor (n : ℤ) (-1) - A028310 n

end

end A277824.P10125449434628317291

/-! ## A277824.P2385186848295027041

`A000005(A000079(a(A277815(n))))` with `a(0)=0`
-/

namespace A277824.P2385186848295027041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000005 (A000079 (a (A277815 n).toNat).toNat).toNat

end

end A277824.P2385186848295027041

/-! ## A277824.P14146814111782531489

`∑{e}[A008585(a(A277815(n))), #]` with `a(0)=1, a(1)=2`
-/

namespace A277824.P14146814111782531489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A008585 (f1 (A277815 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A277824.P14146814111782531489

/-!
# A277825: a(n) = A048725(A065621(n)) = A048720(A065621(n),5).

The programs for A277825, the canonical program `A277825.P4005437013768950350` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277825 has offset 1).

The definition of A277825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277825.P4005437013768950350

`A048725(A065621(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A277825

/-- `A048725(A065621(n+1))` -/
def P4005437013768950350.Spec : Prop :=
  ∀ n, P4005437013768950350.a n = A277825 (n + 1)

theorem P4005437013768950350.correct : P4005437013768950350.Spec := by
  intro n
  simp only [A277825, Nat.add_sub_cancel]

end A277825

/-! ## A277825.P17601038732543739989

`A048724(A277823(n+1))`
-/

namespace A277825.P17601038732543739989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (A277823 (n + 1)).toNat

end

end A277825.P17601038732543739989

namespace A277825

/-- `A048724(A277823(n+1))` -/
def P17601038732543739989.Spec : Prop :=
  ∀ n, P17601038732543739989.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P14127889577162756156

`xor(A004770(n+1), A048727(n))`
-/

namespace A277825.P14127889577162756156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004770 (n + 1)) (A048727 n)

end

end A277825.P14127889577162756156

namespace A277825

/-- `xor(A004770(n+1), A048727(n))` -/
def P14127889577162756156.Spec : Prop :=
  ∀ n, P14127889577162756156.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P14186820977981082379

`A048725(xor(n, Δ[n²]))`
-/

namespace A277825.P14186820977981082379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 (Int.xor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A277825.P14186820977981082379

namespace A277825

/-- `A048725(xor(n, Δ[n²]))` -/
def P14186820977981082379.Spec : Prop :=
  ∀ n, P14186820977981082379.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P4360466244044400534

`A048725(A003188(Δ[n²]))`
-/

namespace A277825.P4360466244044400534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 (A003188 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A277825.P4360466244044400534

namespace A277825

/-- `A048725(A003188(Δ[n²]))` -/
def P4360466244044400534.Spec : Prop :=
  ∀ n, P4360466244044400534.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P15365595404642467158

`A048725(A277901(comp[xor(n, 2*n)]))`
-/

namespace A277825.P15365595404642467158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 (A277901 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A277825.P15365595404642467158

namespace A277825

/-- `A048725(A277901(comp[xor(n, 2*n)]))` -/
def P15365595404642467158.Spec : Prop :=
  ∀ n, P15365595404642467158.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P1065737509269242819

`xor(A048725(2*n+1), A048725(n))`
-/

namespace A277825.P1065737509269242819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048725 (2 * n + 1)) (A048725 n)

end

end A277825.P1065737509269242819

namespace A277825

/-- `xor(A048725(2*n+1), A048725(n))` -/
def P1065737509269242819.Spec : Prop :=
  ∀ n, P1065737509269242819.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P2330453166292049199

`A048725(A277901(A000069(n+1)))`
-/

namespace A277825.P2330453166292049199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 (A277901 (A000069 (n + 1)).toNat).toNat

end

end A277825.P2330453166292049199

namespace A277825

/-- `A048725(A277901(A000069(n+1)))` -/
def P2330453166292049199.Spec : Prop :=
  ∀ n, P2330453166292049199.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P7182727803523403187

`A048725(A004277(and(2*n+1, -(n+1)))-(n+1))`
-/

namespace A277825.P7182727803523403187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 (A004277 (Int.land (2 * n + 1 : ℤ) (-(n + 1 : ℤ))).toNat - (n + 1 : ℤ)).toNat

end

end A277825.P7182727803523403187

namespace A277825

/-- `A048725(A004277(and(2*n+1, -(n+1)))-(n+1))` -/
def P7182727803523403187.Spec : Prop :=
  ∀ n, P7182727803523403187.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P5998472046069530307

`xor(2, xor(n, A048727(2*n+1)))`
-/

namespace A277825.P5998472046069530307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor (n : ℤ) (A048727 (2 * n + 1)))

end

end A277825.P5998472046069530307

namespace A277825

/-- `xor(2, xor(n, A048727(2*n+1)))` -/
def P5998472046069530307.Spec : Prop :=
  ∀ n, P5998472046069530307.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P3969502101765899487

`xor(n, xor(8*n+7, A065621(2*(n+1))))`
-/

namespace A277825.P3969502101765899487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (8 * n + 7 : ℤ) (A065621 (2 * (n + 1))))

end

end A277825.P3969502101765899487

namespace A277825

/-- `xor(n, xor(8*n+7, A065621(2*(n+1))))` -/
def P3969502101765899487.Spec : Prop :=
  ∀ n, P3969502101765899487.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P13216625001189879836

`A048725(A229763(2*n+1)+n)`
-/

namespace A277825.P13216625001189879836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 (A229763 (2 * n + 1) + (n : ℤ)).toNat

end

end A277825.P13216625001189879836

namespace A277825

/-- `A048725(A229763(2*n+1)+n)` -/
def P13216625001189879836.Spec : Prop :=
  ∀ n, P13216625001189879836.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P15149773665896601561

`A048725(A213064(2*n+1)-(n+1))`
-/

namespace A277825.P15149773665896601561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 (A213064 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A277825.P15149773665896601561

namespace A277825

/-- `A048725(A213064(2*n+1)-(n+1))` -/
def P15149773665896601561.Spec : Prop :=
  ∀ n, P15149773665896601561.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P15468427027868697068

`xor(A277823(2*(n+1)), A277823(n+1))`
-/

namespace A277825.P15468427027868697068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A277823 (2 * (n + 1))) (A277823 (n + 1))

end

end A277825.P15468427027868697068

namespace A277825

/-- `xor(A277823(2*(n+1)), A277823(n+1))` -/
def P15468427027868697068.Spec : Prop :=
  ∀ n, P15468427027868697068.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P17676296048839524510

`A003188(A277823(2*(n+1)))`
-/

namespace A277825.P17676296048839524510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A277823 (2 * (n + 1))).toNat

end

end A277825.P17676296048839524510

namespace A277825

/-- `A003188(A277823(2*(n+1)))` -/
def P17676296048839524510.Spec : Prop :=
  ∀ n, P17676296048839524510.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P3105826348262298072

`A003188(A048726(A003188(2*n+1)))`
-/

namespace A277825.P3105826348262298072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A048726 (A003188 (2 * n + 1)).toNat).toNat

end

end A277825.P3105826348262298072

namespace A277825

/-- `A003188(A048726(A003188(2*n+1)))` -/
def P3105826348262298072.Spec : Prop :=
  ∀ n, P3105826348262298072.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P3003384243882862750

`A003188(A003188(A003188(8*n+7)))`
-/

namespace A277825.P3003384243882862750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (A003188 (8 * n + 7)).toNat).toNat

end

end A277825.P3003384243882862750

namespace A277825

/-- `A003188(A003188(A003188(8*n+7)))` -/
def P3003384243882862750.Spec : Prop :=
  ∀ n, P3003384243882862750.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P12607706219988484973

`xor(A065621(n+1), A065621(A004767(n)+1))`
-/

namespace A277825.P12607706219988484973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A065621 (n + 1)) (A065621 (A004767 n + 1).toNat)

end

end A277825.P12607706219988484973

namespace A277825

/-- `xor(A065621(n+1), A065621(A004767(n)+1))` -/
def P12607706219988484973.Spec : Prop :=
  ∀ n, P12607706219988484973.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P18000419544412985198

`A277901(2*A129771(n+1))`
-/

namespace A277825.P18000419544412985198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277901 (2 * A129771 (n + 1)).toNat

end

end A277825.P18000419544412985198

namespace A277825

/-- `A277901(2*A129771(n+1))` -/
def P18000419544412985198.Spec : Prop :=
  ∀ n, P18000419544412985198.a n = A277825 (n + 1)

end A277825

/-! ## A277825.P2816174083411767048

`A277901(lcm(2, A129771(n+1)))`
-/

namespace A277825.P2816174083411767048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277901 (Int.lcm 2 (A129771 (n + 1)))

end

end A277825.P2816174083411767048

namespace A277825

/-- `A277901(lcm(2, A129771(n+1)))` -/
def P2816174083411767048.Spec : Prop :=
  ∀ n, P2816174083411767048.a n = A277825 (n + 1)

end A277825

/-!
# A277826: a(n) = the least k for which A264977(k) = A264977(n).

The programs for A277826, there is no canonical definition to state claims against.
-/

/-! ## A277826.P14756798869547767907

`A277817(A277884(n))`
-/

namespace A277826.P14756798869547767907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277817 (A277884 n).toNat

end

end A277826.P14756798869547767907

/-! ## A277826.P12962479731070608805

`A277711(A264977(n))`
-/

namespace A277826.P12962479731070608805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277711 (A264977 n).toNat

end

end A277826.P12962479731070608805

/-! ## A277826.P9273894395442242744

`A277711(n-A265397(n))`
-/

namespace A277826.P9273894395442242744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277711 ((n : ℤ) - A265397 n).toNat

end

end A277826.P9273894395442242744

/-! ## A277826.P9430377968888160098

`A277711(xor(n, A283979(4*n)))`
-/

namespace A277826.P9430377968888160098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277711 (Int.xor (n : ℤ) (A283979 (4 * n))).toNat

end

end A277826.P9430377968888160098

/-! ## A277826.P10041456608661540467

`A277711(∑{p}[A277330(n), A156552(#)])`
-/

namespace A277826.P10041456608661540467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277711 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p).toNat

end

end A277826.P10041456608661540467

/-! ## A277826.P9183977763803514741

`A277711(∑{p}[A277330(n), A297108(#)])`
-/

namespace A277826.P9183977763803514741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277711 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p).toNat

end

end A277826.P9183977763803514741

/-!
# A277827: Digits that appear twice consecutively in the decimal expansion of Pi, in order of appearance.

The programs for A277827, there is no canonical definition to state claims against.
-/

/-! ## A277827.P14995878426554753543

`A000796(A049514(n+1))`
-/

namespace A277827.P14995878426554753543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A049514 (n + 1)).toNat + 1)

end

end A277827.P14995878426554753543

/-! ## A277827.P15165187333862064357

`A123152(A049514(n+1)+1)-1`
-/

namespace A277827.P15165187333862064357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (A049514 (n + 1) + 1).toNat - 1

end

end A277827.P15165187333862064357

/-! ## A277827.P12986462974979609676

`A000796(eq[A000796(n+1), A000796(n)])`
-/

namespace A277827.P12986462974979609676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A277827.P12986462974979609676

/-! ## A277827.P9333091115639650668

`A166931(n+1)%A123152(A049514(n+1))`
-/

namespace A277827.P9333091115639650668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A123152 (A049514 (n + 1)).toNat)

end

end A277827.P9333091115639650668

/-! ## A277827.P3776038980060890702

`A000796(eq[0, A095916(n+1)])`
-/

namespace A277827.P3776038980060890702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277827.P3776038980060890702

/-! ## A277827.P13384966058005753473

`A000796(eq[A030644(n), A153799(n)])`
-/

namespace A277827.P13384966058005753473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A277827.P13384966058005753473

/-!
# A277828: Least number of tosses of a fair coin needed to have an even chance or better of getting a run of at least m consecutive heads or consecutive tails.

The programs for A277828, there is no canonical definition to state claims against.
-/

/-! ## A277828.P6696196015885736552

`A002265(A202805(n+2)-2)`
-/

namespace A277828.P6696196015885736552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A202805 (n + 2) - 2).toNat

end

end A277828.P6696196015885736552

/-! ## A277828.P3137074039449330193

`A110655(A202805(n+2)-5)`
-/

namespace A277828.P3137074039449330193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A202805 (n + 2) - 5).toNat

end

end A277828.P3137074039449330193

/-! ## A277828.P15045450155075228298

`A008621(A202805(n+2)-6)`
-/

namespace A277828.P15045450155075228298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A202805 (n + 2) - 6).toNat

end

end A277828.P15045450155075228298

/-! ## A277828.P1889887083821740085

`A248186(A134522(n+1))`
-/

namespace A277828.P1889887083821740085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248186 (A134522 (n + 1)).toNat

end

end A277828.P1889887083821740085

/-! ## A277828.P15482350259421488685

`A329361(n)+A115721(A145128(n))`
-/

namespace A277828.P15482350259421488685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329361 n + A115721 (A145128 n).toNat

end

end A277828.P15482350259421488685

/-!
# A277830: Number of digits '0' in the set of all numbers from 0 to A014824(n) = Sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

The programs for A277830, the canonical program `A277830.P11318479144716426685` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277830 has offset 0).

The definition of A277830 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061217, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277830.P11318479144716426685

`1+A061217(A014824(n)+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A277830

/-- `1+A061217(A014824(n)+1)` -/
def P11318479144716426685.Spec : Prop :=
  ∀ n, P11318479144716426685.a n = A277830 n

theorem P11318479144716426685.correct : P11318479144716426685.Spec := by
  intro n
  simp only [A277830]

end A277830

/-! ## A277830.P18376110793662562628

`A277849(n)-∑[A320893(3*n+5)]%3+1`
-/

namespace A277830.P18376110793662562628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320893 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277849 n - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3 + 1

end

end A277830.P18376110793662562628

namespace A277830

/-- `A277849(n)-∑[A320893(3*n+5)]%3+1` -/
def P18376110793662562628.Spec : Prop :=
  ∀ n, P18376110793662562628.a n = A277830 n

end A277830

/-! ## A277830.P14521472706403627951

`A277849(n)+A127236(A059020(n))`
-/

namespace A277830.P14521472706403627951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277849 n + A127236 (A059020 n).toNat

end

end A277830.P14521472706403627951

namespace A277830

/-- `A277849(n)+A127236(A059020(n))` -/
def P14521472706403627951.Spec : Prop :=
  ∀ n, P14521472706403627951.a n = A277830 n

end A277830

/-! ## A277830.P7927564974208161895

`A350112(A205568(n+1))+A277849(n)`
-/

namespace A277830.P7927564974208161895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350112 (A205568 (n + 1)).toNat + A277849 n

end

end A277830.P7927564974208161895

namespace A277830

/-- `A350112(A205568(n+1))+A277849(n)` -/
def P7927564974208161895.Spec : Prop :=
  ∀ n, P7927564974208161895.a n = A277830 n

end A277830

/-! ## A277830.P17849231861810292991

`A277849(n)-A316441(A003681(n+1))`
-/

namespace A277830.P17849231861810292991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277849 n - A316441 (A003681 (n + 1)).toNat

end

end A277830.P17849231861810292991

namespace A277830

/-- `A277849(n)-A316441(A003681(n+1))` -/
def P17849231861810292991.Spec : Prop :=
  ∀ n, P17849231861810292991.a n = A277830 n

end A277830

/-!
# A277831: Number of '1' digits in the set of all numbers from 0 to A014824(n) = Sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

The programs for A277831, there is no canonical definition to state claims against.
-/

/-! ## A277831.P9782956411174881536

`A265351(C(p?[2*n+1], (p?[2*n+1]+5)/2))`
-/

namespace A277831.P9782956411174881536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (SequenceMachineLib.roundAway ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 5 : ℚ) / 2)).toNat)

end

end A277831.P9782956411174881536

/-!
# A277832: Number of '2' digits in the set of all numbers from 0 to A014824(n) = Sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

The programs for A277832, there is no canonical definition to state claims against.
-/

/-! ## A277832.P4222182462117842494

`A244797(A319551(n+1))+A081138(n)`
-/

namespace A277832.P4222182462117842494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244797 (A319551 (n + 1)).toNat + A081138 n

end

end A277832.P4222182462117842494

/-!
# A277833: Number of '3' digits in the set of all numbers from 0 to A014824(n) = Sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

The programs for A277833, there is no canonical definition to state claims against.
-/

/-! ## A277833.P5046865839368317505

`xor(A003958(A193209(n+1)+1), A193206(n+1))`
-/

namespace A277833.P5046865839368317505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003958 (A193209 (n + 1) + 1).toNat) (A193206 (n + 1))

end

end A277833.P5046865839368317505

/-! ## A277833.P2490979580606346698

`A128548(A128568(n))%A128562(A128550(n+1))`
-/

namespace A277833.P2490979580606346698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128548 (A128568 n).toNat) (A128562 (A128550 (n + 1)).toNat)

end

end A277833.P2490979580606346698

/-!
# A277834: Number of '4' digits in the set of all numbers from 0 to A014824(n) = Sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

The programs for A277834, there is no canonical definition to state claims against.
-/

/-! ## A277834.P3288096963302901968

`A277837(n)+A241063(A001519(n))`
-/

namespace A277834.P3288096963302901968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277837 n + A241063 (A001519 n).toNat

end

end A277834.P3288096963302901968

/-! ## A277834.P10278548142110641352

`A277838(n)+A241063(A001519(n))`
-/

namespace A277834.P10278548142110641352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277838 n + A241063 (A001519 n).toNat

end

end A277834.P10278548142110641352

/-!
# A277835: Number of '5' digits in the set of all numbers from 0 to A014824(n) = Sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

The programs for A277835, there is no canonical definition to state claims against.
-/

/-! ## A277835.P16446280709839822451

`A277836(n)+A185354(A000837(n))`
-/

namespace A277835.P16446280709839822451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277836 n + A185354 (A000837 n).toNat

end

end A277835.P16446280709839822451

/-! ## A277835.P15979207393797609540

`A277838(n)+A238451(A003266(n))`
-/

namespace A277835.P15979207393797609540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277838 n + A238451 (A003266 n).toNat

end

end A277835.P15979207393797609540

/-! ## A277835.P14431378278743846625

`A277838(n)+A181153(A049407(n+1))`
-/

namespace A277835.P14431378278743846625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277838 n + A181153 (A049407 (n + 1)).toNat

end

end A277835.P14431378278743846625

/-!
# A277836: Number of '6' digits in the set of all numbers from 0 to A014824(n) = Sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

The programs for A277836, there is no canonical definition to state claims against.
-/

/-! ## A277836.P5122612659767700673

`A277849(n)+A055641(A000759(n))`
-/

namespace A277836.P5122612659767700673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277849 n + A055641 (A000759 n).toNat

end

end A277836.P5122612659767700673

/-! ## A277836.P11690253664809046922

`A277837(n)+A024360(A327214(n))`
-/

namespace A277836.P11690253664809046922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277837 n + A024360 (A327214 n).toNat

end

end A277836.P11690253664809046922

/-! ## A277836.P10071034997735894471

`A277837(n)+A217152(A104427(n+1))`
-/

namespace A277836.P10071034997735894471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277837 n + A217152 (A104427 (n + 1)).toNat

end

end A277836.P10071034997735894471

/-!
# A277837: Number of '7' digits in the set of all numbers from 0 to A014824(n) = Sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

The programs for A277837, there is no canonical definition to state claims against.
-/

/-! ## A277837.P3665829871974203143

`∑{e}[2^n, A277635(#)]`
-/

namespace A277837.P3665829871974203143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A277635 (Nat.factorization (f1 n) p)

end

end A277837.P3665829871974203143

/-! ## A277837.P6357057344002783948

`A277635(floor(acot(n)+n))`
-/

namespace A277837.P6357057344002783948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277635 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A277837.P6357057344002783948

/-! ## A277837.P6291991032892833507

`A277635(or(n, floor(acot(n))))`
-/

namespace A277837.P6291991032892833507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277635 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A277837.P6291991032892833507

/-! ## A277837.P701760147517958102

`A277635(xor(n, floor(acot(n))))`
-/

namespace A277837.P701760147517958102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277635 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A277837.P701760147517958102

/-! ## A277837.P892890831678847412

`A277635(round(sqrt(n²+1)))`
-/

namespace A277837.P892890831678847412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277635 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A277837.P892890831678847412

/-!
# A277838: Number of '8' digits in the set of all numbers from 0 to A014824(n) = Sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

The programs for A277838, there is no canonical definition to state claims against.
-/

/-! ## A277838.P7111691923778431621

`char[8]+∑[A007623(n!-1)]`
-/

namespace A277838.P7111691923778431621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (Nat.factorial n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A277838.P7111691923778431621

/-! ## A277838.P5331415586764800350

`char[8]+∑[A007623(xor(-1, -n!))]`
-/

namespace A277838.P5331415586764800350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (Int.xor (-1) (-(Nat.factorial n : ℤ))).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A277838.P5331415586764800350

/-! ## A277838.P4863770234661426910

`char[8]+∑[A007623(cos(-π)+n!)]`
-/

namespace A277838.P4863770234661426910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.roundAway (Real.cos (-Real.pi) + (Nat.factorial n : ℝ))).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A277838.P4863770234661426910

/-! ## A277838.P16861354929706421661

`char[8]+∑[A007623(or(n, -1)+n!)]`
-/

namespace A277838.P16861354929706421661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (Int.lor (n : ℤ) (-1) + (Nat.factorial n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A277838.P16861354929706421661

/-! ## A277838.P368488397996948625

`A277849(A004881(n+1))+char[8]`
-/

namespace A277838.P368488397996948625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277849 (A004881 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A277838.P368488397996948625

/-!
# A277839: Number of finite automata with n states, n input symbols and one output symbol.

The programs for A277839, there is no canonical definition to state claims against.
-/

/-! ## A277839.P8773566812797505582

`A362897(∑[4*(n+1)])`
-/

namespace A277839.P8773566812797505582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362897 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277839.P8773566812797505582

/-!
# A277845: The digits of the absolute difference |a(n+1)-a(n)| are a subsequence of the digits of a(n): Lexicographically first infinite sequence with this property and without negative or repeated terms.

The programs for A277845, there is no canonical definition to state claims against.
-/

/-! ## A277845.P15121766326550412627

`A277858(A291179(n+1)+1)`
-/

namespace A277845.P15121766326550412627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277858 (A291179 (n + 1) + 1).toNat

end

end A277845.P15121766326550412627

/-! ## A277845.P10284687441186464140

`gcd(A151878(n), A277858(n+1))`
-/

namespace A277845.P10284687441186464140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A277858 (n + 1))

end

end A277845.P10284687441186464140

/-! ## A277845.P13513116650545138820

`or(∑[A240328(n)], A277858(n+1))`
-/

namespace A277845.P13513116650545138820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A277858 (n + 1))

end

end A277845.P13513116650545138820

/-! ## A277845.P13403987924973355417

`A277858(comp[89*n])%A000230(n)`
-/

namespace A277845.P13403987924973355417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  89 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277858 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A000230 n)

end

end A277845.P13403987924973355417

/-! ## A277845.P7043501463669692242

`A340184(floor(sqrt(n)))+A277858(n+1)`
-/

namespace A277845.P7043501463669692242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340184 (Nat.sqrt n) + A277858 (n + 1)

end

end A277845.P7043501463669692242

/-! ## A277845.P14489097782752748179

`A277858(n+1)+char[A023197(n+1)]`
-/

namespace A277845.P14489097782752748179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023197 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277858 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277845.P14489097782752748179

/-! ## A277845.P14968755396682075358

`A277858(n+1)+char[A096214(n+1)]`
-/

namespace A277845.P14968755396682075358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096214 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277858 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277845.P14968755396682075358

/-! ## A277845.P12689725403222075754

`A277858(n+1)+char[A162164(n+1)]`
-/

namespace A277845.P12689725403222075754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162164 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277858 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277845.P12689725403222075754

/-! ## A277845.P3233046534625065052

`A277858(n+1)+char[A185534(n+1)]`
-/

namespace A277845.P3233046534625065052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277858 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277845.P3233046534625065052

/-! ## A277845.P8386479283373044100

`A277858(n+1)+char[A239720(n+1)]`
-/

namespace A277845.P8386479283373044100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239720 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277858 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277845.P8386479283373044100

/-!
# A277847: Size of the largest subset of Z/nZ fixed by x -> x^2.

The programs for A277847, there is no canonical definition to state claims against.
-/

/-! ## A277847.P8232565589539140332

`Δ[lt[A381348(n+1), 1]]`
-/

namespace A277847.P8232565589539140332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381348 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A277847.P8232565589539140332

/-! ## A277847.P10225564937458837414

`and(A085311(n+1), A160738(A062383(n)))`
-/

namespace A277847.P10225564937458837414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085311 (n + 1)) (A160738 (A062383 n).toNat)

end

end A277847.P10225564937458837414

/-! ## A277847.P11169072876540251962

`and(A085311(n+1), A219196(n))`
-/

namespace A277847.P11169072876540251962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085311 (n + 1)) (A219196 n)

end

end A277847.P11169072876540251962

/-! ## A277847.P7615432345671501524

`and(A219196(n), A234586(A052273(n+1)))`
-/

namespace A277847.P7615432345671501524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A219196 n) (A234586 (A052273 (n + 1)).toNat)

end

end A277847.P7615432345671501524

/-! ## A277847.P7877664789211112953

`and(A085311(n+1), A366058(n))`
-/

namespace A277847.P7877664789211112953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085311 (n + 1)) (A366058 n)

end

end A277847.P7877664789211112953

/-!
# A277849: Number of digits '9' in the set of all numbers from 0 to A014824(n) = sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

The programs for A277849, the canonical program `A277849.P10272640155293857379` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277849 has offset 0).

The definition of A277849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102684, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277849.P10272640155293857379

`A102684(A014824(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A277849

/-- `A102684(A014824(n))` -/
def P10272640155293857379.Spec : Prop :=
  ∀ n, P10272640155293857379.a n = A277849 n

theorem P10272640155293857379.correct : P10272640155293857379.Spec := by
  intro n
  simp only [A277849]

end A277849

/-! ## A277849.P706214315320262813

`A277830(n)-A035263(A070428(n))`
-/

namespace A277849.P706214315320262813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277830 n - A035263 (A070428 n).toNat

end

end A277849.P706214315320262813

namespace A277849

/-- `A277830(n)-A035263(A070428(n))` -/
def P706214315320262813.Spec : Prop :=
  ∀ n, P706214315320262813.a n = A277849 n

end A277849

/-! ## A277849.P9688106446958098371

`A277830(n)-A261516(A185163(n))`
-/

namespace A277849.P9688106446958098371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277830 n - A261516 (A185163 n).toNat

end

end A277849.P9688106446958098371

namespace A277849

/-- `A277830(n)-A261516(A185163(n))` -/
def P9688106446958098371.Spec : Prop :=
  ∀ n, P9688106446958098371.a n = A277849 n

end A277849

/-! ## A277849.P7930039724581223676

`A277830(n)-A359511(A242534(n+1))`
-/

namespace A277849.P7930039724581223676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277830 n - A359511 (A242534 (n + 1)).toNat

end

end A277849.P7930039724581223676

namespace A277849

/-- `A277830(n)-A359511(A242534(n+1))` -/
def P7930039724581223676.Spec : Prop :=
  ∀ n, P7930039724581223676.a n = A277849 n

end A277849

/-! ## A277849.P8390720200631475982

`A277830(n)-A127236(A182747(2*n+1))`
-/

namespace A277849.P8390720200631475982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277830 n - A127236 (A182747 (2 * n + 1)).toNat

end

end A277849.P8390720200631475982

namespace A277849

/-- `A277830(n)-A127236(A182747(2*n+1))` -/
def P8390720200631475982.Spec : Prop :=
  ∀ n, P8390720200631475982.a n = A277849 n

end A277849

/-!
# A277851: Numbers not occurring in A075771 (= q(n) + r(n), with n^2 = prime(n)*q(n) + r(n), 0 <= r(n) < prime(n)).

The programs for A277851, there is no canonical definition to state claims against.
-/

/-! ## A277851.P13657010189897226763

`comp[A075771(n+1)-1]+1`
-/

namespace A277851.P13657010189897226763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075771 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A277851.P13657010189897226763

/-! ## A277851.P8757144266013850436

`comp[A075771(n+1)%A270716(n)]`
-/

namespace A277851.P8757144266013850436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075771 (n + 1)) (A270716 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277851.P8757144266013850436

/-! ## A277851.P17070802175062291037

`eq[char[A075771(n+1)], A000007(n)]`
-/

namespace A277851.P17070802175062291037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075771 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A277851.P17070802175062291037

/-! ## A277851.P15307088748288548576

`eq[char[A075771(n+1)], A000038(n)]`
-/

namespace A277851.P15307088748288548576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075771 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A277851.P15307088748288548576

/-! ## A277851.P5440263953476765596

`eq[char[A075771(n+1)], A063667(n)]`
-/

namespace A277851.P5440263953476765596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075771 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A277851.P5440263953476765596

/-! ## A277851.P12528903605162138765

`eq[char[A075771(n+1)], A084099(2*n)]`
-/

namespace A277851.P12528903605162138765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075771 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A277851.P12528903605162138765

/-! ## A277851.P9379197802853931872

`eq[n, A028310(n)-char[A075771(n+1)]]`
-/

namespace A277851.P9379197802853931872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075771 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277851.P9379197802853931872

/-!
# A277852: "Late birds" (values a(n) < a(k) for all k > n) in A075771 = quotient + remainder of Euclidean division of n^2 by prime(n).

The programs for A277852, there is no canonical definition to state claims against.
-/

/-! ## A277852.P8385275278500218183

`A075771(A277853(n+1))`
-/

namespace A277852.P8385275278500218183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075771 (A277853 (n + 1)).toNat

end

end A277852.P8385275278500218183

/-! ## A277852.P8424197217454444625

`A328594(∑[A256061(n)])+1+n`
-/

namespace A277852.P8424197217454444625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1 + (n : ℤ)

end

end A277852.P8424197217454444625

/-! ## A277852.P7634950894029738622

`∑[A268472(n+1)-A025465(A001353(n))]`
-/

namespace A277852.P7634950894029738622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (n + 1) - A025465 (A001353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277852.P7634950894029738622

/-! ## A277852.P261357592291070190

`A200976(2*(n+1))+A195828(A036052(n))`
-/

namespace A277852.P261357592291070190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 (2 * (n + 1)) + A195828 (A036052 n).toNat

end

end A277852.P261357592291070190

/-! ## A277852.P6606245819043077331

`∑[A268472(n+1)-A025456(A056254(n+1))]`
-/

namespace A277852.P6606245819043077331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268472 (n + 1) - A025456 (A056254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277852.P6606245819043077331

/-!
# A277855: Irregular triangle read by rows: T(n,k) is the maximum length of the longest common subsequence of k distinct permutations of n items with n>=1 and 1<=k<=n!

The programs for A277855, the canonical program `A277855.P13714581098425057374` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277855 has offset 1).

The definition of A277855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277855.P13714581098425057374

`A055881(eq[A099563(n+1), A265893(n)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A277855

/-- `A055881(eq[A099563(n+1), A265893(n)])` -/
def P13714581098425057374.Spec : Prop :=
  ∀ n, P13714581098425057374.a n = A277855 (n + 1)

theorem P13714581098425057374.correct : P13714581098425057374.Spec := by
  intro n
  simp only [A277855, Nat.add_sub_cancel]

end A277855

/-!
# A277857: Numbers that are the sum of 2 squares with a unique partition and also the sum of 3 nonnegative cubes with a unique partition.

The programs for A277857, there is no canonical definition to state claims against.
-/

/-! ## A277857.P11659235900150412280

`lt[A011973(A286744(n)), A051343(n)]`
-/

namespace A277857.P11659235900150412280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A286744 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277857.P11659235900150412280

/-! ## A277857.P3745389995582805537

`eq[A272011(n+1), A294783(A111808(n+1))]`
-/

namespace A277857.P3745389995582805537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294783 (A111808 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277857.P3745389995582805537

/-!
# A277858: The absolute difference between a(n) and a(n+1) is visible in a(n).

The programs for A277858, there is no canonical definition to state claims against.
-/

/-! ## A277858.P8714358873910950877

`A277845(n+1)`
-/

namespace A277858.P8714358873910950877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277845 (n + 1)

end

end A277858.P8714358873910950877

/-! ## A277858.P12109563259300038719

`A277846(n+1)%p?[A273059(n)]`
-/

namespace A277858.P12109563259300038719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277846 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A277858.P12109563259300038719

/-! ## A277858.P1546929656000326876

`A072411(A019565(n))*A277846(n+1)`
-/

namespace A277858.P1546929656000326876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A019565 n).toNat * A277846 (n + 1)

end

end A277858.P1546929656000326876

/-! ## A277858.P272584454987552058

`or(A000007(A175826(n)), A277846(n+1))`
-/

namespace A277858.P272584454987552058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A175826 n).toNat) (A277846 (n + 1))

end

end A277858.P272584454987552058

/-! ## A277858.P452067906679206109

`A072411(A019565(n+1))+A277846(n+1)-1`
-/

namespace A277858.P452067906679206109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A019565 (n + 1)).toNat + (A277846 (n + 1) - 1)

end

end A277858.P452067906679206109

/-! ## A277858.P7210471260423720563

`A130853(A066509(3*n+5))*A277846(n+1)`
-/

namespace A277858.P7210471260423720563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130853 (A066509 (3 * n + 5)).toNat * A277846 (n + 1)

end

end A277858.P7210471260423720563

/-! ## A277858.P16353692960053783896

`A277846(n+1)+A036987(A345171(n+1))`
-/

namespace A277858.P16353692960053783896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277846 (n + 1) + A036987 (A345171 (n + 1)).toNat

end

end A277858.P16353692960053783896

/-! ## A277858.P15200427252158393827

`A277885(A277878(n+2))+A277846(n+1)`
-/

namespace A277858.P15200427252158393827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A277878 (n + 2)).toNat + A277846 (n + 1)

end

end A277858.P15200427252158393827

/-! ## A277858.P5999734735053342109

`A277846(n+1)+A054973(A217045(n+1))`
-/

namespace A277858.P5999734735053342109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277846 (n + 1) + A054973 (A217045 (n + 1)).toNat

end

end A277858.P5999734735053342109

/-!
# A277859: Least k > 1 such that 1^(k-1) + 2^(k-1) + 3^(k-1) + ... + (k-1)^(k-1) - n == 0 (mod k).

The programs for A277859, there is no canonical definition to state claims against.
-/

/-! ## A277859.P17472723946697996477

`A163169(A061779(n+1)-2+n)`
-/

namespace A277859.P17472723946697996477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (A061779 (n + 1) - 2 + (n : ℤ)).toNat

end

end A277859.P17472723946697996477

/-! ## A277859.P9792067870575124083

`A339749(A290556(n+1)+n)`
-/

namespace A277859.P9792067870575124083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339749 (A290556 (n + 1) + (n : ℤ)).toNat

end

end A277859.P9792067870575124083

/-! ## A277859.P13775743792512170033

`and(A020639(n+2), A327262(A039957(n+1)))`
-/

namespace A277859.P13775743792512170033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (n + 2)) (A327262 (A039957 (n + 1)).toNat)

end

end A277859.P13775743792512170033

/-! ## A277859.P13120996694467673029

`A020639(A248373(n+2))%A248375(2*(n+2))`
-/

namespace A277859.P13120996694467673029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A248373 (n + 2)).toNat) (A248375 (2 * (n + 2)))

end

end A277859.P13120996694467673029

/-!
# A277862: Number of connected, unlabeled, unrooted distance-hereditary graphs on n vertices.

The programs for A277862, there is no canonical definition to state claims against.
-/

/-! ## A277862.P12097676989930164166

`ceil(A323789(n+1)/(3*(n+1)))`
-/

namespace A277862.P12097676989930164166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A323789 (n + 1) : ℚ) / (3 * (n + 1) : ℚ)⌉

end

end A277862.P12097676989930164166

/-! ## A277862.P1858923648860487836

`A050296(A192455(n)+A000045(n))`
-/

namespace A277862.P1858923648860487836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A192455 n + A000045 n).toNat

end

end A277862.P1858923648860487836

/-! ## A277862.P108381886858963253

`A050296(A192455(n)+A107480(n))`
-/

namespace A277862.P108381886858963253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A192455 n + A107480 n).toNat

end

end A277862.P108381886858963253

/-!
# A277863: Number of connected, unlabeled, unrooted 3-leaf power graphs on n vertices.

The programs for A277863, there is no canonical definition to state claims against.
-/

/-! ## A277863.P17171598980840005438

`A036250(n+1)-ceil(n/2)`
-/

namespace A277863.P17171598980840005438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036250 (n + 1) - ⌈(n : ℚ) / 2⌉

end

end A277863.P17171598980840005438

/-! ## A277863.P4839370757702199706

`Δ[∑[A036250(n)]-A002620(n)]`
-/

namespace A277863.P4839370757702199706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277863.P4839370757702199706

/-! ## A277863.P7689076767145873949

`A036251(floor(atan(n)+n))-A110654(n)`
-/

namespace A277863.P7689076767145873949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036251 ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋.toNat - A110654 n

end

end A277863.P7689076767145873949

/-! ## A277863.P18380338040757912360

`abs(A004526(n+1)-A036250(n+1))`
-/

namespace A277863.P18380338040757912360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004526 (n + 1) - A036250 (n + 1)|

end

end A277863.P18380338040757912360

/-!
# A277864: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

The programs for A277864, the canonical program `A277864.P4378495412895518711` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277864 has offset 0).

The definition of A277864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277864.P4378495412895518711

`or(1, A277797(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A277864

/-- `or(1, A277797(n))` -/
def P4378495412895518711.Spec : Prop :=
  ∀ n, P4378495412895518711.a n = A277864 n

theorem P4378495412895518711.correct : P4378495412895518711.Spec := by
  intro n
  simp only [A277864]

end A277864

/-! ## A277864.P3725249912283820449

`A284351(A093178(n))`
-/

namespace A277864.P3725249912283820449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284351 (A093178 n).toNat

end

end A277864.P3725249912283820449

namespace A277864

/-- `A284351(A093178(n))` -/
def P3725249912283820449.Spec : Prop :=
  ∀ n, P3725249912283820449.a n = A277864 n

end A277864

/-! ## A277864.P4611219043511048515

`A000042(A133265(n))-10`
-/

namespace A277864.P4611219043511048515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A133265 n).toNat - 10

end

end A277864.P4611219043511048515

namespace A277864

/-- `A000042(A133265(n))-10` -/
def P4611219043511048515.Spec : Prop :=
  ∀ n, P4611219043511048515.a n = A277864 n

end A277864

/-! ## A277864.P15193680928765198385

`or(1, A287194(A254667(n)))`
-/

namespace A277864.P15193680928765198385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A287194 (A254667 n).toNat)

end

end A277864.P15193680928765198385

namespace A277864

/-- `or(1, A287194(A254667(n)))` -/
def P15193680928765198385.Spec : Prop :=
  ∀ n, P15193680928765198385.a n = A277864 n

end A277864

/-! ## A277864.P2353717168970262274

`A277797(n)+A000035(n)`
-/

namespace A277864.P2353717168970262274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277797 n + A000035 n

end

end A277864.P2353717168970262274

namespace A277864

/-- `A277797(n)+A000035(n)` -/
def P2353717168970262274.Spec : Prop :=
  ∀ n, P2353717168970262274.a n = A277864 n

end A277864

/-! ## A277864.P14109025042292953348

`A284351(n*A000035(n))`
-/

namespace A277864.P14109025042292953348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284351 ((n : ℤ) * A000035 n).toNat

end

end A277864.P14109025042292953348

namespace A277864

/-- `A284351(n*A000035(n))` -/
def P14109025042292953348.Spec : Prop :=
  ∀ n, P14109025042292953348.a n = A277864 n

end A277864

/-! ## A277864.P12587677791742958203

`A277797(n)+Δ[A008619(n)]`
-/

namespace A277864.P12587677791742958203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277797 n + (f1 (n + 1) - f1 n)

end

end A277864.P12587677791742958203

namespace A277864

/-- `A277797(n)+Δ[A008619(n)]` -/
def P12587677791742958203.Spec : Prop :=
  ∀ n, P12587677791742958203.a n = A277864 n

end A277864

/-! ## A277864.P9475818652778660181

`A277797(n)+char[A060747(n)]`
-/

namespace A277864.P9475818652778660181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277797 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277864.P9475818652778660181

namespace A277864

/-- `A277797(n)+char[A060747(n)]` -/
def P9475818652778660181.Spec : Prop :=
  ∀ n, P9475818652778660181.a n = A277864 n

end A277864

/-! ## A277864.P13727100238203504154

`A290111(n*char[A005408(n+1)])`
-/

namespace A277864.P13727100238203504154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290111 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A277864.P13727100238203504154

namespace A277864

/-- `A290111(n*char[A005408(n+1)])` -/
def P13727100238203504154.Spec : Prop :=
  ∀ n, P13727100238203504154.a n = A277864 n

end A277864

/-! ## A277864.P2415327696909924174

`A283504(n*A000035(n))+A000035(n)`
-/

namespace A277864.P2415327696909924174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283504 ((n : ℤ) * A000035 n).toNat + A000035 n

end

end A277864.P2415327696909924174

namespace A277864

/-- `A283504(n*A000035(n))+A000035(n)` -/
def P2415327696909924174.Spec : Prop :=
  ∀ n, P2415327696909924174.a n = A277864 n

end A277864

/-! ## A277864.P16815216691172233744

`or(1, A277798(n)+A287194(n)-A287196(n))`
-/

namespace A277864.P16815216691172233744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A277798 n + (A287194 n - A287196 n))

end

end A277864.P16815216691172233744

namespace A277864

/-- `or(1, A277798(n)+A287194(n)-A287196(n))` -/
def P16815216691172233744.Spec : Prop :=
  ∀ n, P16815216691172233744.a n = A277864 n

end A277864

/-! ## A277864.P10087680839962329585

`A000035(n)*A283504(n)+1`
-/

namespace A277864.P10087680839962329585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A283504 n + 1

end

end A277864.P10087680839962329585

namespace A277864

/-- `A000035(n)*A283504(n)+1` -/
def P10087680839962329585.Spec : Prop :=
  ∀ n, P10087680839962329585.a n = A277864 n

end A277864

/-! ## A277864.P652258956725001197

`Δ[A004526(n)]*A283504(n)+1`
-/

namespace A277864.P652258956725001197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A283504 n + 1

end

end A277864.P652258956725001197

namespace A277864

/-- `Δ[A004526(n)]*A283504(n)+1` -/
def P652258956725001197.Spec : Prop :=
  ∀ n, P652258956725001197.a n = A277864 n

end A277864

/-! ## A277864.P8900426917613815960

`A000042(n+1)+1-A000042(A141310(n))`
-/

namespace A277864.P8900426917613815960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (1 - A000042 (A141310 n).toNat)

end

end A277864.P8900426917613815960

namespace A277864

/-- `A000042(n+1)+1-A000042(A141310(n))` -/
def P8900426917613815960.Spec : Prop :=
  ∀ n, P8900426917613815960.a n = A277864 n

end A277864

/-!
# A277865: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

The programs for A277865, the canonical program `A277865.P11330922218210656486` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277865 has offset 0).

The definition of A277865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277865.P10274449156658858698

`A277798(A093178(n))+A011557(n)`
-/

namespace A277865.P10274449156658858698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 (A093178 n).toNat + A011557 n

end

end A277865.P10274449156658858698

namespace A277865

/-- `A277798(A093178(n))+A011557(n)` -/
def P10274449156658858698.Spec : Prop :=
  ∀ n, P10274449156658858698.a n = A277865 n

end A277865

/-! ## A277865.P11330922218210656486

`A284352(A093178(n))^A124625(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A277865

/-- `A284352(A093178(n))^A124625(n+1)` -/
def P11330922218210656486.Spec : Prop :=
  ∀ n, P11330922218210656486.a n = (A277865 n : ℚ)

end A277865

/-! ## A277865.P1003208329291177375

`A011557(n)+A277798(n)%A011557(n)`
-/

namespace A277865.P1003208329291177375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + Int.tmod (A277798 n) (A011557 n)

end

end A277865.P1003208329291177375

namespace A277865

/-- `A011557(n)+A277798(n)%A011557(n)` -/
def P1003208329291177375.Spec : Prop :=
  ∀ n, P1003208329291177375.a n = A277865 n

end A277865

/-! ## A277865.P8966638456345531509

`A277798(A093178(n))+Δ[A002275(n)]`
-/

namespace A277865.P8966638456345531509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 (A093178 n).toNat + (f1 (n + 1) - f1 n)

end

end A277865.P8966638456345531509

namespace A277865

/-- `A277798(A093178(n))+Δ[A002275(n)]` -/
def P8966638456345531509.Spec : Prop :=
  ∀ n, P8966638456345531509.a n = A277865 n

end A277865

/-! ## A277865.P2907135595379654061

`A000042(n+1)-A277798(A004442(n))`
-/

namespace A277865.P2907135595379654061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A277798 (A004442 n).toNat

end

end A277865.P2907135595379654061

namespace A277865

/-- `A000042(n+1)-A277798(A004442(n))` -/
def P2907135595379654061.Spec : Prop :=
  ∀ n, P2907135595379654061.a n = A277865 n

end A277865

/-! ## A277865.P4083422782660714123

`A284352(n)-A277798(A093178(n+1))`
-/

namespace A277865.P4083422782660714123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284352 n - A277798 (A093178 (n + 1)).toNat

end

end A277865.P4083422782660714123

namespace A277865

/-- `A284352(n)-A277798(A093178(n+1))` -/
def P4083422782660714123.Spec : Prop :=
  ∀ n, P4083422782660714123.a n = A277865 n

end A277865

/-! ## A277865.P260261577469030653

`A284352(n)-A282411(n)%A280411(n)`
-/

namespace A277865.P260261577469030653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284352 n - Int.tmod (A282411 n) (A280411 n)

end

end A277865.P260261577469030653

namespace A277865

/-- `A284352(n)-A282411(n)%A280411(n)` -/
def P260261577469030653.Spec : Prop :=
  ∀ n, P260261577469030653.a n = A277865 n

end A277865

/-!
# A277866: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

The programs for A277866, the canonical program `A277866.P11591149950344806624` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277866 has offset 0).

The definition of A277866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277866.P3097030971343779270

`∑[ogf((1+x-4x^2+8x^3)/(1+x-4x^2-4x^3))]`
-/

namespace A277866.P3097030971343779270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4, 8] [1, 1, -4, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277866.P3097030971343779270

namespace A277866

/-- `∑[ogf((1+x-4x^2+8x^3)/(1+x-4x^2-4x^3))]` -/
def P3097030971343779270.Spec : Prop :=
  ∀ n, P3097030971343779270.a n = A277866 n

end A277866

/-! ## A277866.P3434628893209282936

`4^gcd(n+1, ∑[gcd(2, n)])-3`
-/

namespace A277866.P3434628893209282936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 3

end

end A277866.P3434628893209282936

namespace A277866

/-- `4^gcd(n+1, ∑[gcd(2, n)])-3` -/
def P3434628893209282936.Spec : Prop :=
  ∀ n, P3434628893209282936.a n = A277866 n

end A277866

/-! ## A277866.P11591149950344806624

`Δ[4*a(n-2)]+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277866

/-- `Δ[4*a(n-2)]+a(n-2)` -/
def P11591149950344806624.Spec : Prop :=
  ∀ n, P11591149950344806624.a n = A277866 n

theorem P11591149950344806624.correct : P11591149950344806624.Spec := by
  intro n
  simp only [A277866]

end A277866

/-! ## A277866.P2709830501994748429

`or(a(n-2), Δ[4*a(n-2)])` with `a(0)=1, a(1)=1`
-/

namespace A277866.P2709830501994748429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor (a (n - 2)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A277866.P2709830501994748429

namespace A277866

/-- `or(a(n-2), Δ[4*a(n-2)])` -/
def P2709830501994748429.Spec : Prop :=
  ∀ n, P2709830501994748429.a n = A277866 n

end A277866

/-! ## A277866.P5105247634778635671

`xor(a(n-2), Δ[4*a(n-2)])` with `a(0)=1, a(1)=1`
-/

namespace A277866.P5105247634778635671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor (a (n - 2)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A277866.P5105247634778635671

namespace A277866

/-- `xor(a(n-2), Δ[4*a(n-2)])` -/
def P5105247634778635671.Spec : Prop :=
  ∀ n, P5105247634778635671.a n = A277866 n

end A277866

/-! ## A277866.P3835577873059984621

`or(1, A277799(n))`
-/

namespace A277866.P3835577873059984621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A277799 n)

end

end A277866.P3835577873059984621

namespace A277866

/-- `or(1, A277799(n))` -/
def P3835577873059984621.Spec : Prop :=
  ∀ n, P3835577873059984621.a n = A277866 n

end A277866

/-! ## A277866.P9398164833561308430

`2^A133265(n)-3`
-/

namespace A277866.P9398164833561308430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A133265 n : ℤ) - 3

end

end A277866.P9398164833561308430

namespace A277866

/-- `2^A133265(n)-3` -/
def P9398164833561308430.Spec : Prop :=
  ∀ n, P9398164833561308430.a n = (A277866 n : ℚ)

end A277866

/-! ## A277866.P4070844764747725244

`lcm(2, A280412(n))-1`
-/

namespace A277866.P4070844764747725244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A280412 n) : ℤ) - 1

end

end A277866.P4070844764747725244

namespace A277866

/-- `lcm(2, A280412(n))-1` -/
def P4070844764747725244.Spec : Prop :=
  ∀ n, P4070844764747725244.a n = A277866 n

end A277866

/-! ## A277866.P5640075722028816338

`A284353(n*and(1, n))`
-/

namespace A277866.P5640075722028816338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284353 (n * Nat.land 1 n)

end

end A277866.P5640075722028816338

namespace A277866

/-- `A284353(n*and(1, n))` -/
def P5640075722028816338.Spec : Prop :=
  ∀ n, P5640075722028816338.a n = A277866 n

end A277866

/-! ## A277866.P6805713918559890327

`abs(2*n%2*A000225(n)-1)`
-/

namespace A277866.P6805713918559890327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (((n % 2 : ℕ) : ℤ) * A000225 n) - 1|

end

end A277866.P6805713918559890327

namespace A277866

/-- `abs(2*n%2*A000225(n)-1)` -/
def P6805713918559890327.Spec : Prop :=
  ∀ n, P6805713918559890327.a n = A277866 n

end A277866

/-! ## A277866.P9492684626146645295

`A036563(A133265(n))`
-/

namespace A277866.P9492684626146645295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (A133265 n).toNat

end

end A277866.P9492684626146645295

namespace A277866

/-- `A036563(A133265(n))` -/
def P9492684626146645295.Spec : Prop :=
  ∀ n, P9492684626146645295.a n = A277866 n

end A277866

/-! ## A277866.P2426494318843302842

`A101622(A093178(n))`
-/

namespace A277866.P2426494318843302842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 (A093178 n).toNat

end

end A277866.P2426494318843302842

namespace A277866

/-- `A101622(A093178(n))` -/
def P2426494318843302842.Spec : Prop :=
  ∀ n, P2426494318843302842.a n = A277866 n

end A277866

/-! ## A277866.P9734606197105577562

`A354788(A266072(n))`
-/

namespace A277866.P9734606197105577562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 (A266072 n).toNat

end

end A277866.P9734606197105577562

namespace A277866

/-- `A354788(A266072(n))` -/
def P9734606197105577562.Spec : Prop :=
  ∀ n, P9734606197105577562.a n = A277866 n

end A277866

/-! ## A277866.P1312367082777299078

`A284353(xor(1, A124625(n)))`
-/

namespace A277866.P1312367082777299078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284353 (Int.xor 1 (A124625 n)).toNat

end

end A277866.P1312367082777299078

namespace A277866

/-- `A284353(xor(1, A124625(n)))` -/
def P1312367082777299078.Spec : Prop :=
  ∀ n, P1312367082777299078.a n = A277866 n

end A277866

/-! ## A277866.P155904562513573179

`A277799(n)+A000035(n)`
-/

namespace A277866.P155904562513573179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277799 n + A000035 n

end

end A277866.P155904562513573179

namespace A277866

/-- `A277799(n)+A000035(n)` -/
def P155904562513573179.Spec : Prop :=
  ∀ n, P155904562513573179.a n = A277866 n

end A277866

/-! ## A277866.P5517479983431437742

`A225883(n)+A099430(n)`
-/

namespace A277866.P5517479983431437742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225883 n + A099430 n

end

end A277866.P5517479983431437742

namespace A277866

/-- `A225883(n)+A099430(n)` -/
def P5517479983431437742.Spec : Prop :=
  ∀ n, P5517479983431437742.a n = A277866 n

end A277866

/-! ## A277866.P13704861528177242369

`A280412(n)-A000035(n)`
-/

namespace A277866.P13704861528177242369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280412 n - A000035 n

end

end A277866.P13704861528177242369

namespace A277866

/-- `A280412(n)-A000035(n)` -/
def P13704861528177242369.Spec : Prop :=
  ∀ n, P13704861528177242369.a n = A277866 n

end A277866

/-! ## A277866.P3905145826043617220

`A269019(n)-A122803(n)`
-/

namespace A277866.P3905145826043617220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269019 n - A122803 n

end

end A277866.P3905145826043617220

namespace A277866

/-- `A269019(n)-A122803(n)` -/
def P3905145826043617220.Spec : Prop :=
  ∀ n, P3905145826043617220.a n = A277866 n

end A277866

/-! ## A277866.P17917787164178553944

`A282004(n)-A134451(n)`
-/

namespace A277866.P17917787164178553944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282004 n - A134451 n

end

end A277866.P17917787164178553944

namespace A277866

/-- `A282004(n)-A134451(n)` -/
def P17917787164178553944.Spec : Prop :=
  ∀ n, P17917787164178553944.a n = A277866 n

theorem P17917787164178553944.correct : P17917787164178553944.Spec := by
  intro n
  simp only [A277866, Nat.add_sub_cancel, A277866.P17917787164178553944.a, A277866.P11591149950344806624.f1, A277866.P11591149950344806624.a, A134451, A134451.P12605129592745265341.a, A282004, A282004.P11991646138547053131.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277866

/-! ## A277866.P14382101995589052348

`A284353(n*A000035(n))`
-/

namespace A277866.P14382101995589052348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284353 ((n : ℤ) * A000035 n).toNat

end

end A277866.P14382101995589052348

namespace A277866

/-- `A284353(n*A000035(n))` -/
def P14382101995589052348.Spec : Prop :=
  ∀ n, P14382101995589052348.a n = A277866 n

end A277866

/-!
# A277867: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

The programs for A277867, the canonical program `A277867.P5110611722335540943` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277867 has offset 0).

The definition of A277867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277867.P12210684236976140439

`ogf((1+2x-x^2+x^3)/(1-5x^2+4x^4))`
-/

namespace A277867.P12210684236976140439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, 1] [1, 0, -5, 0, 4] n

end

end A277867.P12210684236976140439

namespace A277867

/-- `ogf((1+2x-x^2+x^3)/(1-5x^2+4x^4))` -/
def P12210684236976140439.Spec : Prop :=
  ∀ n, P12210684236976140439.a n = A277867 n

end A277867

/-! ## A277867.P5110611722335540943

`3*n%2+4*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277867

/-- `3*n%2+4*a(n-2)` -/
def P5110611722335540943.Spec : Prop :=
  ∀ n, (P5110611722335540943.a n : ℤ) = A277867 n

theorem P5110611722335540943.correct : P5110611722335540943.Spec := by
  intro n
  simp only [A277867]

end A277867

/-! ## A277867.P36903226019702135

`A084221(n)-and(1, n)`
-/

namespace A277867.P36903226019702135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n - (Nat.land 1 n : ℤ)

end

end A277867.P36903226019702135

namespace A277867

/-- `A084221(n)-and(1, n)` -/
def P36903226019702135.Spec : Prop :=
  ∀ n, P36903226019702135.a n = A277867 n

end A277867

/-! ## A277867.P1339225497177050747

`A094360(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A277867.P1339225497177050747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094360 (n - 1) + a (n - 1)

end

end A277867.P1339225497177050747

namespace A277867

/-- `A094360(n-1)+a(n-1)` -/
def P1339225497177050747.Spec : Prop :=
  ∀ n, P1339225497177050747.a n = A277867 n

end A277867

/-! ## A277867.P18323669709777274259

`A084221(n)-A000035(n)`
-/

namespace A277867.P18323669709777274259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n - A000035 n

end

end A277867.P18323669709777274259

namespace A277867

/-- `A084221(n)-A000035(n)` -/
def P18323669709777274259.Spec : Prop :=
  ∀ n, P18323669709777274259.a n = A277867 n

end A277867

/-! ## A277867.P1421122739023774338

`A084221(n)+1-A000034(n)`
-/

namespace A277867.P1421122739023774338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n + (1 - A000034 n)

end

end A277867.P1421122739023774338

namespace A277867

/-- `A084221(n)+1-A000034(n)` -/
def P1421122739023774338.Spec : Prop :=
  ∀ n, P1421122739023774338.a n = A277867 n

end A277867

/-! ## A277867.P3651988394153170894

`A059841(n)+A084221(n)-1`
-/

namespace A277867.P3651988394153170894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + (A084221 n - 1)

end

end A277867.P3651988394153170894

namespace A277867

/-- `A059841(n)+A084221(n)-1` -/
def P3651988394153170894.Spec : Prop :=
  ∀ n, P3651988394153170894.a n = A277867 n

end A277867

/-! ## A277867.P13195005191058383726

`or(A011782(n+1), A277800(n))`
-/

namespace A277867.P13195005191058383726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 (n + 1)) (A277800 n)

end

end A277867.P13195005191058383726

namespace A277867

/-- `or(A011782(n+1), A277800(n))` -/
def P13195005191058383726.Spec : Prop :=
  ∀ n, P13195005191058383726.a n = A277867 n

end A277867

/-! ## A277867.P7776360081716035305

`or(A052548(n)-2, A277800(n))`
-/

namespace A277867.P7776360081716035305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052548 n - 2) (A277800 n)

end

end A277867.P7776360081716035305

namespace A277867

/-- `or(A052548(n)-2, A277800(n))` -/
def P7776360081716035305.Spec : Prop :=
  ∀ n, P7776360081716035305.a n = A277867 n

end A277867

/-! ## A277867.P2249572191654588888

`A136324(n+1)+A061547(n+1)`
-/

namespace A277867.P2249572191654588888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136324 (n + 1) + A061547 (n + 1)

end

end A277867.P2249572191654588888

namespace A277867

/-- `A136324(n+1)+A061547(n+1)` -/
def P2249572191654588888.Spec : Prop :=
  ∀ n, P2249572191654588888.a n = A277867 n

end A277867

/-! ## A277867.P1036912541753906912

`A102560(2*n+1)+A084221(n)`
-/

namespace A277867.P1036912541753906912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 (2 * n + 1) + A084221 n

end

end A277867.P1036912541753906912

namespace A277867

/-- `A102560(2*n+1)+A084221(n)` -/
def P1036912541753906912.Spec : Prop :=
  ∀ n, P1036912541753906912.a n = A277867 n

end A277867

/-! ## A277867.P6586276770122802172

`A000225(n)+A176895(2*n)^(n-1)`
-/

namespace A277867.P6586276770122802172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n : ℚ) + (A176895 (2 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A277867.P6586276770122802172

namespace A277867

/-- `A000225(n)+A176895(2*n)^(n-1)` -/
def P6586276770122802172.Spec : Prop :=
  ∀ n, P6586276770122802172.a n = (A277867 n : ℚ)

end A277867

/-! ## A277867.P7636921178622186908

`A000079(n)+A131577(A093178(n))-1`
-/

namespace A277867.P7636921178622186908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A131577 (A093178 n).toNat - 1)

end

end A277867.P7636921178622186908

namespace A277867

/-- `A000079(n)+A131577(A093178(n))-1` -/
def P7636921178622186908.Spec : Prop :=
  ∀ n, P7636921178622186908.a n = A277867 n

end A277867

/-! ## A277867.P10357554021417861333

`A277800(n)+2*A277800(A124625(n))`
-/

namespace A277867.P10357554021417861333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277800 n + 2 * A277800 (A124625 n).toNat

end

end A277867.P10357554021417861333

namespace A277867

/-- `A277800(n)+2*A277800(A124625(n))` -/
def P10357554021417861333.Spec : Prop :=
  ∀ n, P10357554021417861333.a n = A277867 n

end A277867

/-! ## A277867.P3707966434170873092

`A004526(n)+A084221(n)-A004526(n+1)`
-/

namespace A277867.P3707966434170873092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A084221 n - A004526 (n + 1))

end

end A277867.P3707966434170873092

namespace A277867

/-- `A004526(n)+A084221(n)-A004526(n+1)` -/
def P3707966434170873092.Spec : Prop :=
  ∀ n, P3707966434170873092.a n = A277867 n

end A277867

/-! ## A277867.P11528921548595531276

`A094359(n+1)+A094359(n)-A000035(n)`
-/

namespace A277867.P11528921548595531276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 (n + 1) + (A094359 n - A000035 n)

end

end A277867.P11528921548595531276

namespace A277867

/-- `A094359(n+1)+A094359(n)-A000035(n)` -/
def P11528921548595531276.Spec : Prop :=
  ∀ n, P11528921548595531276.a n = A277867 n

end A277867

/-! ## A277867.P313245886963932093

`A140505(n+1)+A140505(n)-A000035(n)`
-/

namespace A277867.P313245886963932093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140505 (n + 1) + (A140505 n - A000035 n)

end

end A277867.P313245886963932093

namespace A277867

/-- `A140505(n+1)+A140505(n)-A000035(n)` -/
def P313245886963932093.Spec : Prop :=
  ∀ n, P313245886963932093.a n = A277867 n

end A277867

/-! ## A277867.P6962454869807609490

`A282453(n)+A225883(n)`
-/

namespace A277867.P6962454869807609490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282453 n + A225883 n

end

end A277867.P6962454869807609490

namespace A277867

/-- `A282453(n)+A225883(n)` -/
def P6962454869807609490.Spec : Prop :=
  ∀ n, P6962454869807609490.a n = A277867 n

end A277867

/-! ## A277867.P15550434288008538257

`A277954(n)-A193652(n)`
-/

namespace A277867.P15550434288008538257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277954 n - A193652 n

end

end A277867.P15550434288008538257

namespace A277867

/-- `A277954(n)-A193652(n)` -/
def P15550434288008538257.Spec : Prop :=
  ∀ n, P15550434288008538257.a n = A277867 n

end A277867

/-! ## A277867.P11443152368792330635

`and(A083329(n), A285475(n))`
-/

namespace A277867.P11443152368792330635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083329 n) (A285475 n)

end

end A277867.P11443152368792330635

namespace A277867

/-- `and(A083329(n), A285475(n))` -/
def P11443152368792330635.Spec : Prop :=
  ∀ n, P11443152368792330635.a n = A277867 n

end A277867

/-!
# A277868: Number of connected, labeled, unrooted 3-leaf power graphs on n vertices.

The programs for A277868, there is no canonical definition to state claims against.
-/

/-! ## A277868.P2616433996371358546

`A038052(n+1)-A000225(n)`
-/

namespace A277868.P2616433996371358546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038052 (n + 1) - A000225 n

end

end A277868.P2616433996371358546

/-! ## A277868.P12711006452609866515

`A050351(n)-A233544(A050351(n))`
-/

namespace A277868.P12711006452609866515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050351 n - A233544 (A050351 n).toNat

end

end A277868.P12711006452609866515

/-!
# A277869: Number of connected, labeled, unrooted distance-hereditary graphs on n vertices.

The programs for A277869, there is no canonical definition to state claims against.
-/

/-! ## A277869.P2222589589376424821

`and(A138214(A007661(n)), A138214(n))`
-/

namespace A277869.P2222589589376424821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138214 (A007661 n).toNat) (A138214 n)

end

end A277869.P2222589589376424821

/-!
# A277870: Ordered number of unit edges needed to build every 4-orthotope from hypercubes.

The programs for A277870, there is no canonical definition to state claims against.
-/

/-! ## A277870.P8428765282496027434

`lt[A066877(n+1)+A040658(n), A055212(3*n+4)]`
-/

namespace A277870.P8428765282496027434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066877 (n + 1) + A040658 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277870.P8428765282496027434

/-! ## A277870.P1323520075003089740

`A191677(A071904(n+1)%A308963(n+1))`
-/

namespace A277870.P1323520075003089740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (Int.tmod (A071904 (n + 1)) (A308963 (n + 1))).toNat

end

end A277870.P1323520075003089740

/-! ## A277870.P18221714230046587249

`∩[A191677(A014076(n+1)), A133012(n+1)]`
-/

namespace A277870.P18221714230046587249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (A014076 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277870.P18221714230046587249

/-!
# A277871: a(n) = Sum_{i=0..n+1} binomial(2*n-i,n-i+1)*Catalan(i).

The programs for A277871, there is no canonical definition to state claims against.
-/

/-! ## A277871.P8659559412481532580

`A125177(2*(n+1)²-1)`
-/

namespace A277871.P8659559412481532580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 (2 * (n + 1) ^ 2 - 1)

end

end A277871.P8659559412481532580

/-! ## A277871.P17332352319154517924

`A226896(A103821(n))`
-/

namespace A277871.P17332352319154517924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226896 (A103821 n).toNat

end

end A277871.P17332352319154517924

/-!
# A277872: Number of ways of writing n as a sum of powers of 4, each power being used at most four times.

The programs for A277872, there is no canonical definition to state claims against.
-/

/-! ## A277872.P8447970519570507940

`A303827(or(A006015(n), A006257(n)))`
-/

namespace A277872.P8447970519570507940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (Int.lor (A006015 n) (A006257 n)).toNat

end

end A277872.P8447970519570507940

/-! ## A277872.P4824868087151707345

`A303827(or(A005408(n), A006015(n)))`
-/

namespace A277872.P4824868087151707345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (Int.lor (A005408 n) (A006015 n)).toNat

end

end A277872.P4824868087151707345

/-! ## A277872.P609922315368300716

`A303827(or(A005843(n), A006015(n)))`
-/

namespace A277872.P609922315368300716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (Int.lor (A005843 n) (A006015 n)).toNat

end

end A277872.P609922315368300716

/-! ## A277872.P16020862646329628306

`A303828(A023725(n+1))`
-/

namespace A277872.P16020862646329628306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 (A023725 (n + 1)).toNat

end

end A277872.P16020862646329628306

/-! ## A277872.P9536181243056340068

`A277873(A020654(n+1))`
-/

namespace A277872.P9536181243056340068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 (A020654 (n + 1)).toNat

end

end A277872.P9536181243056340068

/-! ## A277872.P18309432649054146854

`A277873(A020655(n+1)-1)`
-/

namespace A277872.P18309432649054146854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 (A020655 (n + 1) - 1).toNat

end

end A277872.P18309432649054146854

/-! ## A277872.P11933808942771353461

`A277873(A023733(n+1))`
-/

namespace A277872.P11933808942771353461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 (A023733 (n + 1)).toNat

end

end A277872.P11933808942771353461

/-! ## A277872.P11054823683223955956

`A277873(A023729(n+1))`
-/

namespace A277872.P11054823683223955956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 (A023729 (n + 1)).toNat

end

end A277872.P11054823683223955956

/-! ## A277872.P2387585865950917440

`A303824(A037460(n))`
-/

namespace A277872.P2387585865950917440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 (A037460 n).toNat

end

end A277872.P2387585865950917440

/-!
# A277873: Number of ways of writing n as a sum of powers of 5, each power being used at most five times.

The programs for A277873, there is no canonical definition to state claims against.
-/

/-! ## A277873.P16616275230852852181

`A303824(A037465(n))`
-/

namespace A277873.P16616275230852852181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 (A037465 n).toNat

end

end A277873.P16616275230852852181

/-! ## A277873.P15748558841320973613

`A303825(A037466(n))`
-/

namespace A277873.P15748558841320973613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 (A037466 n).toNat

end

end A277873.P15748558841320973613

/-! ## A277873.P9054096475022738773

`A303824(lt[A180476(n+3), A180456(n+1)])`
-/

namespace A277873.P9054096475022738773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180476 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277873.P9054096475022738773

/-! ## A277873.P1960689075459494359

`A303824(A020654(n+1)%A357861(2*(n+1)))`
-/

namespace A277873.P1960689075459494359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 (Int.tmod (A020654 (n + 1)) (A357861 (2 * (n + 1)))).toNat

end

end A277873.P1960689075459494359

/-! ## A277873.P14086534719768310941

`A046698(A345042(n+3))-A345009(n)`
-/

namespace A277873.P14086534719768310941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A345042 (n + 3)).toNat - A345009 n

end

end A277873.P14086534719768310941

/-!
# A277874: a(n) is the last number in the (2n+1)-element alternating sequence of x/2 and (3x+1) iterations starting with A277215(n).

The programs for A277874, there is no canonical definition to state claims against.
-/

/-! ## A277874.P10449007002083120405

`A008776(n)*A277875(n)-2`
-/

namespace A277874.P10449007002083120405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n * A277875 n - 2

end

end A277874.P10449007002083120405

/-! ## A277874.P5807251068834153642

`A023444(A008776(n)*A277875(n))`
-/

namespace A277874.P5807251068834153642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A008776 n * A277875 n).toNat

end

end A277874.P5807251068834153642

/-!
# A277875: a(n) is the odd multiplier q in the expressions 2*(q*2^n - 1) and 2*(q*3^n - 1) of numbers A277215(n) and A277874(n), respectively.

The programs for A277875, there is no canonical definition to state claims against.
-/

/-! ## A277875.P13496601501087690509

`(A277874(n)+2)/Δ[3^n]`
-/

namespace A277875.P13496601501087690509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277874 n + 2 : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A277875.P13496601501087690509

/-!
# A277876: a(n) = n!/(m*(n-m)) with m = floor(n/2).

The programs for A277876, the canonical program `A277876.P3634810570934472193` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277876 has offset 2).

The definition of A277876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277876.P3634810570934472193

`(n+2)!/(floor((n+2)/2)*(n+2-floor((n+2)/2)))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277876

/-- `(n+2)!/(floor((n+2)/2)*(n+2-floor((n+2)/2)))` -/
def P3634810570934472193.Spec : Prop :=
  ∀ n, P3634810570934472193.a n = (A277876 (n + 2) : ℚ)

end A277876

/-! ## A277876.P665076765025957760

`A001405(n+2)*A010551(n)`
-/

namespace A277876.P665076765025957760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 2) * A010551 n

end

end A277876.P665076765025957760

namespace A277876

/-- `A001405(n+2)*A010551(n)` -/
def P665076765025957760.Spec : Prop :=
  ∀ n, P665076765025957760.a n = A277876 (n + 2)

end A277876

/-! ## A277876.P7385579721671535195

`A256881(n+1)+A107991(n+2)`
-/

namespace A277876.P7385579721671535195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256881 (n + 1) + A107991 (n + 2)

end

end A277876.P7385579721671535195

namespace A277876

/-- `A256881(n+1)+A107991(n+2)` -/
def P7385579721671535195.Spec : Prop :=
  ∀ n, P7385579721671535195.a n = A277876 (n + 2)

end A277876

/-! ## A277876.P15280340299518096156

`A256881(n+2)/A010551(n+1)*A010551(n)`
-/

namespace A277876.P15280340299518096156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256881 (n + 2) : ℚ) / (A010551 (n + 1) : ℚ) * (A010551 n : ℚ)

end

end A277876.P15280340299518096156

namespace A277876

/-- `A256881(n+2)/A010551(n+1)*A010551(n)` -/
def P15280340299518096156.Spec : Prop :=
  ∀ n, P15280340299518096156.a n = (A277876 (n + 2) : ℚ)

end A277876

/-! ## A277876.P6085766002608338271

`∏[n+2]/∑[∑[char[2*n]]]`
-/

namespace A277876.P6085766002608338271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A277876.P6085766002608338271

namespace A277876

/-- `∏[n+2]/∑[∑[char[2*n]]]` -/
def P6085766002608338271.Spec : Prop :=
  ∀ n, P6085766002608338271.a n = (A277876 (n + 2) : ℚ)

end A277876

/-! ## A277876.P7596500660544020938

`1/∑[∑[log2(gcd(2, n))]]*(n+2)!`
-/

namespace A277876.P7596500660544020938
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / (∑ j ∈ Finset.range (n + 1), f1 j) * (Nat.factorial (n + 2) : ℝ)

end

end A277876.P7596500660544020938

namespace A277876

/-- `1/∑[∑[log2(gcd(2, n))]]*(n+2)!` -/
def P7596500660544020938.Spec : Prop :=
  ∀ n, P7596500660544020938.a n = (A277876 (n + 2) : ℝ)

end A277876

/-! ## A277876.P3006495902874540867

`floor((n+2)!/A087811(n+1))`
-/

namespace A277876.P3006495902874540867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 2) : ℚ) / (A087811 (n + 1) : ℚ)⌋

end

end A277876.P3006495902874540867

namespace A277876

/-- `floor((n+2)!/A087811(n+1))` -/
def P3006495902874540867.Spec : Prop :=
  ∀ n, P3006495902874540867.a n = A277876 (n + 2)

end A277876

/-!
# A277878: Smallest prime q with q > r such that p = (q + r + 1)/r, where p = prime(n) and r = A277879(n).

The programs for A277878, there is no canonical definition to state claims against.
-/

/-! ## A277878.P10449020400012618776

`A088732(A118759(∑[A001223(n+1)]))`
-/

namespace A277878.P10449020400012618776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (A118759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A277878.P10449020400012618776

/-!
# A277879: Smallest prime r such that p = (q + r + 1)/r, where p = prime(n) and q = A277878(n).

The programs for A277879, there is no canonical definition to state claims against.
-/

/-! ## A277879.P9346445244584357285

`ceil(A277878(n+2)/A045344(n+1))`
-/

namespace A277879.P9346445244584357285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A277878 (n + 2) : ℚ) / (A045344 (n + 1) : ℚ)⌉

end

end A277879.P9346445244584357285

/-! ## A277879.P14793314273331412343

`(A277878(n+2)+1)/A006093(n+2)`
-/

namespace A277879.P14793314273331412343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277878 (n + 2) + 1 : ℚ) / (A006093 (n + 2) : ℚ)

end

end A277879.P14793314273331412343

/-! ## A277879.P15654012040297645900

`floor((A277878(n+2)+1)/Δ[A007504(n)])`
-/

namespace A277879.P15654012040297645900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277878 (n + 2) + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A277879.P15654012040297645900

/-! ## A277879.P12289943222771831538

`floor((A277878(n+2)+1)/p?[A271439(n)])`
-/

namespace A277879.P12289943222771831538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277878 (n + 2) + 1 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A277879.P12289943222771831538

/-! ## A277879.P3266052987211236616

`floor((A277878(n+2)+1)/A000040(n+1))`
-/

namespace A277879.P3266052987211236616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277878 (n + 2) + 1 : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A277879.P3266052987211236616

/-! ## A277879.P13625345221862224598

`floor((A277878(n+2)+1)/A008578(n+2))`
-/

namespace A277879.P13625345221862224598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277878 (n + 2) + 1 : ℚ) / (A008578 (n + 2) : ℚ)⌋

end

end A277879.P13625345221862224598

/-! ## A277879.P6188240643321354435

`ceil((A277878(n+2)+1)/A000040(n+2))`
-/

namespace A277879.P6188240643321354435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A277878 (n + 2) + 1 : ℚ) / (A000040 (n + 2) : ℚ)⌉

end

end A277879.P6188240643321354435

/-! ## A277879.P9667422875932786735

`floor((A277878(n+2)+1)/record[A014963(n+2)])`
-/

namespace A277879.P9667422875932786735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277878 (n + 2) + 1 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A277879.P9667422875932786735

/-! ## A277879.P13023930680880402038

`A006530((A277878(n+2)+1)/record[A023022(n+2)])`
-/

namespace A277879.P13023930680880402038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A277878 (n + 2) + 1 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ))).toNat

end

end A277879.P13023930680880402038

/-! ## A277879.P17028903782343679035

`(A277878(n+2)+1)/∑{p}[A000040(n+2), A000010(#)]`
-/

namespace A277879.P17028903782343679035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277878 (n + 2) + 1 : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p : ℤ) : ℚ)

end

end A277879.P17028903782343679035

/-!
# A277880: Dispersion of evil numbers: Square array A(r,c) with A(r,1) = A000069(r); and for c > 1, A(r,c) = A001969(1+(A(r,c-1))), read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A277880, there is no canonical definition to state claims against.
-/

/-! ## A277880.P10375377055458264976

`A277902(A277820(n+1))`
-/

namespace A277880.P10375377055458264976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277902 (A277820 (n + 1)).toNat

end

end A277880.P10375377055458264976

/-! ## A277880.P5691790131269126338

`A277882(A038722(n+1))`
-/

namespace A277880.P5691790131269126338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277882 (A038722 (n + 1)).toNat

end

end A277880.P5691790131269126338

/-! ## A277880.P7228882787122124740

`A277882(A061579(n)+1)`
-/

namespace A277880.P7228882787122124740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277882 (A061579 n + 1).toNat

end

end A277880.P7228882787122124740

/-! ## A277880.P14296896326870839350

`A277882(∑[A198954(n)]-n)`
-/

namespace A277880.P14296896326870839350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277882 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A277880.P14296896326870839350

/-! ## A277880.P14618384052870033773

`A277882(A025581(n)+A057944(n)+1)`
-/

namespace A277880.P14618384052870033773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277882 (A025581 n + (A057944 n + 1)).toNat

end

end A277880.P14618384052870033773

/-! ## A277880.P3059694354650095939

`A277882(n+1-(A002260(n+1)-A004736(n+1)))`
-/

namespace A277880.P3059694354650095939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277882 ((n + 1 : ℤ) - (A002260 (n + 1) - A004736 (n + 1))).toNat

end

end A277880.P3059694354650095939

/-! ## A277880.P3774070140849166304

`A277882(A277881(A277882(n+1)))`
-/

namespace A277880.P3774070140849166304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277882 (A277881 (A277882 (n + 1)).toNat).toNat

end

end A277880.P3774070140849166304

/-! ## A277880.P8402058200234730092

`A277902(A277819(A277821(A277819(n+1))))`
-/

namespace A277880.P8402058200234730092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277902 (A277819 (A277821 (A277819 (n + 1)).toNat).toNat).toNat

end

end A277880.P8402058200234730092

/-! ## A277880.P10816015134667517460

`A268717(A248513(n+1))`
-/

namespace A277880.P10816015134667517460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268717 (A248513 (n + 1)).toNat

end

end A277880.P10816015134667517460

/-!
# A277881: Inverse permutation to A277880.

The programs for A277881, there is no canonical definition to state claims against.
-/

/-! ## A277881.P8337616074507572134

`A277821(A277901(n+1))`
-/

namespace A277881.P8337616074507572134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277821 (A277901 (n + 1)).toNat

end

end A277881.P8337616074507572134

/-! ## A277881.P7938453021819051091

`A277813(n+1)+A277883(n+1)-A277822(n+1)`
-/

namespace A277881.P7938453021819051091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277813 (n + 1) + (A277883 (n + 1) - A277822 (n + 1))

end

end A277881.P7938453021819051091

/-! ## A277881.P5287710012350673543

`A038722(A277883(n+1))`
-/

namespace A277881.P5287710012350673543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A277883 (n + 1)).toNat

end

end A277881.P5287710012350673543

/-! ## A277881.P13515597752575394846

`A277883(A277880(A277883(A277822(A003945(n)))))`
-/

namespace A277881.P13515597752575394846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277883 (A277880 (A277883 (A277822 (A003945 n).toNat).toNat).toNat).toNat

end

end A277881.P13515597752575394846

/-!
# A277882: Dispersion of evil numbers, array transposed.

The programs for A277882, there is no canonical definition to state claims against.
-/

/-! ## A277882.P7085496684794260707

`A277880(∑[char[∑[n]]]²-n)`
-/

namespace A277882.P7085496684794260707
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277880 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A277882.P7085496684794260707

/-! ## A277882.P11976927379016529094

`A277902(A277819(n+1))`
-/

namespace A277882.P11976927379016529094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277902 (A277819 (n + 1)).toNat

end

end A277882.P11976927379016529094

/-!
# A277883: Inverse permutation to A277882.

The programs for A277883, there is no canonical definition to state claims against.
-/

/-! ## A277883.P725905836836734124

`A277822(n+1)+A277881(n+1)-A277813(n+1)`
-/

namespace A277883.P725905836836734124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (n + 1) + (A277881 (n + 1) - A277813 (n + 1))

end

end A277883.P725905836836734124

/-! ## A277883.P6781434056400425732

`A038722(A277881(n+1))`
-/

namespace A277883.P6781434056400425732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A277881 (n + 1)).toNat

end

end A277883.P6781434056400425732

/-! ## A277883.P14255617110672108761

`A061579(A277881(n+1)-1)+1`
-/

namespace A277883.P14255617110672108761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A277881 (n + 1) - 1).toNat + 1

end

end A277883.P14255617110672108761

/-!
# A277884: a(n) = A277814(A277826(n)).

The programs for A277884, there is no canonical definition to state claims against.
-/

/-! ## A277884.P5768508784286006002

`A277814(A277826(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277884.P5768508784286006002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277814 (A277826 n).toNat

end

end A277884.P5768508784286006002

/-! ## A277884.P1745328471821187003

`A277814(A277711(A264977(n)))`
-/

namespace A277884.P1745328471821187003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277814 (A277711 (A264977 n).toNat).toNat

end

end A277884.P1745328471821187003

/-!
# A277885: a(n) = index of the least non-unitary prime divisor of n or 0 if no such prime-divisor exists.

The programs for A277885, there is no canonical definition to state claims against.
-/

/-! ## A277885.P14837881381031612029

`A055396((n+1)/∏{p}[n+1, #])`
-/

namespace A277885.P14837881381031612029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A277885.P14837881381031612029

/-! ## A277885.P17165428920388980981

`A055396(A000188(n+1))`
-/

namespace A277885.P17165428920388980981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A000188 (n + 1)).toNat

end

end A277885.P17165428920388980981

/-! ## A277885.P6383393021587550677

`A055396(A000189(n+1))`
-/

namespace A277885.P6383393021587550677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A000189 (n + 1)).toNat

end

end A277885.P6383393021587550677

/-! ## A277885.P7297956980911693494

`A055396(A000190(n+1))`
-/

namespace A277885.P7297956980911693494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A000190 (n + 1)).toNat

end

end A277885.P7297956980911693494

/-! ## A277885.P10478873481242032755

`A055396(A003557(n+1))`
-/

namespace A277885.P10478873481242032755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A003557 (n + 1)).toNat

end

end A277885.P10478873481242032755

/-! ## A277885.P16796608579409125496

`A055396(A008833(n+1))`
-/

namespace A277885.P16796608579409125496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A008833 (n + 1)).toNat

end

end A277885.P16796608579409125496

/-! ## A277885.P568267416618140755

`A055396(A057521(n+1))`
-/

namespace A277885.P568267416618140755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A057521 (n + 1)).toNat

end

end A277885.P568267416618140755

/-! ## A277885.P16799713941346733284

`A055396(A085731(n+1))`
-/

namespace A277885.P16799713941346733284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A085731 (n + 1)).toNat

end

end A277885.P16799713941346733284

/-! ## A277885.P10699651014836985198

`A000720(A249739(n+1))`
-/

namespace A277885.P10699651014836985198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A249739 (n + 1)).toNat

end

end A277885.P10699651014836985198

/-! ## A277885.P2575995119563839285

`A055396(A308993(n+1))`
-/

namespace A277885.P2575995119563839285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A308993 (n + 1)).toNat

end

end A277885.P2575995119563839285

/-! ## A277885.P1535343317982339991

`A055396(A249739(n+1)²)`
-/

namespace A277885.P1535343317982339991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A249739 (n + 1) ^ 2).toNat

end

end A277885.P1535343317982339991

/-! ## A277885.P13515801026185446630

`A066328(A249739(n+1)²)`
-/

namespace A277885.P13515801026185446630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A249739 (n + 1) ^ 2).toNat

end

end A277885.P13515801026185446630

/-! ## A277885.P13307330774886204544

`A333842(A249739(n+1)²)`
-/

namespace A277885.P13307330774886204544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 (A249739 (n + 1) ^ 2).toNat

end

end A277885.P13307330774886204544

/-! ## A277885.P16888775171642465428

`A055396((n+1)/A007913(n+1))`
-/

namespace A277885.P16888775171642465428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A277885.P16888775171642465428

/-! ## A277885.P1600728590240351764

`A055396((n+1)/A007947(n+1))`
-/

namespace A277885.P1600728590240351764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A277885.P1600728590240351764

/-! ## A277885.P8022742786868990322

`A241917(A249739(2*n+1-n))`
-/

namespace A277885.P8022742786868990322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A249739 (2 * n + 1 - n)).toNat

end

end A277885.P8022742786868990322

/-! ## A277885.P2878275362213549469

`A000720(A020639((n+1)/∏{p}[n+1, #]))`
-/

namespace A277885.P2878275362213549469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A277885.P2878275362213549469

/-! ## A277885.P100735003439002967

`A061395(A020639((n+1)/∏{p}[n+1, #])²)`
-/

namespace A277885.P100735003439002967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat ^ 2).toNat

end

end A277885.P100735003439002967

/-! ## A277885.P7308259771633652615

`A061395(A020639(floor((n+1)/∏{p}[n+1, #])))`
-/

namespace A277885.P7308259771633652615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020639 ⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋.toNat).toNat

end

end A277885.P7308259771633652615

/-! ## A277885.P13267005620889483097

`A061395(A020639(ceil((n+1)/∏{p}[n+1, #])))`
-/

namespace A277885.P13267005620889483097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020639 ⌈(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌉.toNat).toNat

end

end A277885.P13267005620889483097

/-!
# A277886: If n is squarefree, a(n) = n, else a(n) = A000040(1+A277885(n)) * (n/(A249739(n)^2)).

The programs for A277886, there is no canonical definition to state claims against.
-/

/-! ## A277886.P12078538477436128108

`xor(A097246(n+1), A244606(A169589(n)))`
-/

namespace A277886.P12078538477436128108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A097246 (n + 1)) (A244606 (A169589 n).toNat)

end

end A277886.P12078538477436128108

/-! ## A277886.P15345255542928395403

`A244606(A169589(n)+1)+A097246(n+1)`
-/

namespace A277886.P15345255542928395403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244606 (A169589 n + 1).toNat + A097246 (n + 1)

end

end A277886.P15345255542928395403

/-! ## A277886.P10309707385916485405

`A000196(or(A059870(n+1), A304203(n+1)))`
-/

namespace A277886.P10309707385916485405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (A059870 (n + 1)) (A304203 (n + 1))).toNat

end

end A277886.P10309707385916485405

/-! ## A277886.P14234210542579478881

`A325335(A288323(n))+A097246(n+1)`
-/

namespace A277886.P14234210542579478881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325335 (A288323 n).toNat + A097246 (n + 1)

end

end A277886.P14234210542579478881

/-!
# A277887: Positions of primes in A276573, the infinite trunk of least squares beanstalk.

The programs for A277887, there is no canonical definition to state claims against.
-/

/-! ## A277887.P14014451819705143984

`eq[2, A278497(n+1)]+1`
-/

namespace A277887.P14014451819705143984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278497 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277887.P14014451819705143984

/-! ## A277887.P3321879811240669696

`record[gcd(n+1, A318471(A278497(n+1)-1))]`
-/

namespace A277887.P3321879811240669696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A318471 (A278497 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277887.P3321879811240669696

/-! ## A277887.P13509475230358222579

`A260731(p?[A276573(n)])`
-/

namespace A277887.P13509475230358222579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A277887.P13509475230358222579

/-! ## A277887.P6435657243850411615

`A260731(A277888(n+1))`
-/

namespace A277887.P6435657243850411615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A277888 (n + 1)).toNat

end

end A277887.P6435657243850411615

/-! ## A277887.P14328990267145359510

`eq[2, A330241(A276573(n)+2)]`
-/

namespace A277887.P14328990267145359510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330241 (A276573 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277887.P14328990267145359510

/-! ## A277887.P3966848452197071842

`eq[A014963(A276573(n+1)), A276573(n+1)]+1`
-/

namespace A277887.P3966848452197071842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A276573 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277887.P3966848452197071842

/-!
# A277888: Primes in A276573, the infinite trunk of least squares beanstalk.

The programs for A277888, there is no canonical definition to state claims against.
-/

/-! ## A277888.P2525030899859832332

`A276573(A277887(n+1))`
-/

namespace A277888.P2525030899859832332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (A277887 (n + 1)).toNat

end

end A277888.P2525030899859832332

/-! ## A277888.P5689472244006807981

`p?[A276573(n)]`
-/

namespace A277888.P5689472244006807981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277888.P5689472244006807981

/-! ## A277888.P14598159546717299833

`p?[A276574(A276572(n))]`
-/

namespace A277888.P14598159546717299833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (A276572 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277888.P14598159546717299833

/-! ## A277888.P2003051947453956725

`record[A020639(A276573(n+1))]`
-/

namespace A277888.P2003051947453956725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A276573 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277888.P2003051947453956725

/-! ## A277888.P3807266218068219434

`p?[A278521(n)+A278517(n)]`
-/

namespace A277888.P3807266218068219434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278521 n + A278517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277888.P3807266218068219434

/-! ## A277888.P15657239939787698225

`p?[A278519(n)-A278522(n)]`
-/

namespace A277888.P15657239939787698225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n - A278522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277888.P15657239939787698225

/-! ## A277888.P13987663056749477497

`∩[A000040(n+1), A276573(n)]`
-/

namespace A277888.P13987663056749477497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P13987663056749477497

/-! ## A277888.P15681240188430690050

`∩[A004139(n+1), A276573(n)]`
-/

namespace A277888.P15681240188430690050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P15681240188430690050

/-! ## A277888.P10741923453882237011

`∩[A006005(n+1), A276573(n)]`
-/

namespace A277888.P10741923453882237011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P10741923453882237011

/-! ## A277888.P8037550439506622490

`∩[A008578(n+1), A276573(n)]`
-/

namespace A277888.P8037550439506622490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P8037550439506622490

/-! ## A277888.P12041121972402839649

`∩[A033946(n+1), A276573(n)]`
-/

namespace A277888.P12041121972402839649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P12041121972402839649

/-! ## A277888.P4204540973329493575

`∩[A045319(n+1), A276573(n)]`
-/

namespace A277888.P4204540973329493575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P4204540973329493575

/-! ## A277888.P5711901208278809822

`∩[A046022(n+1), A276573(n)]`
-/

namespace A277888.P5711901208278809822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P5711901208278809822

/-! ## A277888.P8759747541990826983

`∩[A065091(n+1), A276573(n)]`
-/

namespace A277888.P8759747541990826983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P8759747541990826983

/-! ## A277888.P16810525281226800156

`∩[A065396(n+1), A276573(n)]`
-/

namespace A277888.P16810525281226800156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P16810525281226800156

/-! ## A277888.P12329939238077405399

`∩[A066050(n+1), A276573(n)]`
-/

namespace A277888.P12329939238077405399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P12329939238077405399

/-! ## A277888.P17284043735111412390

`∩[A067126(n+1), A276573(n)]`
-/

namespace A277888.P17284043735111412390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P17284043735111412390

/-! ## A277888.P18206159849869423244

`∩[A070303(n+1), A276573(n)]`
-/

namespace A277888.P18206159849869423244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P18206159849869423244

/-! ## A277888.P18111241510285141219

`∩[A175787(n+1), A276573(n)]`
-/

namespace A277888.P18111241510285141219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277888.P18111241510285141219

/-! ## A277888.P16247353371536439853

`p?[∑[A276575(n)]]`
-/

namespace A277888.P16247353371536439853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277888.P16247353371536439853

/-!
# A277889: After zero, excess of the odd terms in A276573 (the infinite trunk of least squares beanstalk) over the even terms.

The programs for A277889, there is no canonical definition to state claims against.
-/

/-! ## A277889.P18237709291179780613

`a(n-1)-(-1)^A276573(n)` with `a(0)=0, a(1)=1`
-/

namespace A277889.P18237709291179780613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (-1 : ℚ) ^ (A276573 n : ℤ)

end

end A277889.P18237709291179780613

/-! ## A277889.P1650892380184541723

`1-∑[(-1)^A276573(n)]`
-/

namespace A277889.P1650892380184541723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A276573 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277889.P1650892380184541723

/-! ## A277889.P9214149647611161341

`∑[A062157(A276573(n)-2*n)]`
-/

namespace A277889.P9214149647611161341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A276573 n - (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277889.P9214149647611161341

/-! ## A277889.P16113999743107256261

`∑[(-1)^A276573(n)*A057428(n)]`
-/

namespace A277889.P16113999743107256261
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A276573 n : ℤ) * (A057428 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277889.P16113999743107256261

/-! ## A277889.P14266935647140137753

`∑[A062157(A276573(n))]`
-/

namespace A277889.P14266935647140137753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A276573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277889.P14266935647140137753

/-! ## A277889.P16607984664263000075

`∑[A062157(∑[A276575(n)])]`
-/

namespace A277889.P16607984664263000075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277889.P16607984664263000075

/-! ## A277889.P3651180104509071149

`∑[A010673(A278521(n)+A278517(n))]-n`
-/

namespace A277889.P3651180104509071149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A278521 n + A278517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A277889.P3651180104509071149

/-!
# A277890: Number of even numbers encountered before (n^2)-1 is reached when starting from k = ((n+1)^2)-1 and iterating map k -> k - A002828(k).

The programs for A277890, there is no canonical definition to state claims against.
-/

/-! ## A277890.P16725745686778453067

`A260734(n+1)-A277891(n+1)`
-/

namespace A277890.P16725745686778453067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (n + 1) - A277891 (n + 1)

end

end A277890.P16725745686778453067

/-! ## A277890.P4303167002741577836

`Δ[A260732(n+1)]-A277891(n+1)`
-/

namespace A277890.P4303167002741577836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277891 (n + 1)

end

end A277890.P4303167002741577836

/-! ## A277890.P4368317742637697449

`Δ[A260733(n+1)]-A277891(n+1)`
-/

namespace A277890.P4368317742637697449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277891 (n + 1)

end

end A277890.P4368317742637697449

/-! ## A277890.P4947324480174070794

`A260733(n+2)-(A277891(n+1)+A260733(n+1))`
-/

namespace A277890.P4947324480174070794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (n + 2) - (A277891 (n + 1) + A260733 (n + 1))

end

end A277890.P4947324480174070794

/-! ## A277890.P3213615629510071062

`A260732(n+2)-A260732(n+1)-A277891(n+1)`
-/

namespace A277890.P3213615629510071062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (n + 2) - A260732 (n + 1) - A277891 (n + 1)

end

end A277890.P3213615629510071062

/-! ## A277890.P9611556443736235578

`Δ[record[A276572(n)]]-A277891(n+1)`
-/

namespace A277890.P9611556443736235578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277891 (n + 1)

end

end A277890.P9611556443736235578

/-! ## A277890.P16544072083812784064

`Δ[A276572(A260732(n))]-A277891(n+1)`
-/

namespace A277890.P16544072083812784064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (A260732 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277891 (n + 1)

end

end A277890.P16544072083812784064

/-! ## A277890.P13742829242148410697

`Δ[A260731(A005563(n))]-A277891(n+1)`
-/

namespace A277890.P13742829242148410697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A005563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277891 (n + 1)

end

end A277890.P13742829242148410697

/-!
# A277891: a(n) = number of odd numbers encountered before reaching (n^2)-1 when starting from k = ((n+1)^2)-1 and iterating map k -> k - A002828(k).

The programs for A277891, there is no canonical definition to state claims against.
-/

/-! ## A277891.P18369100530698012333

`A260734(n+1)-A277890(n+1)`
-/

namespace A277891.P18369100530698012333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (n + 1) - A277890 (n + 1)

end

end A277891.P18369100530698012333

/-! ## A277891.P4896619362616738742

`Δ[A260732(n+1)]-A277890(n+1)`
-/

namespace A277891.P4896619362616738742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277890 (n + 1)

end

end A277891.P4896619362616738742

/-! ## A277891.P9200327390571338443

`Δ[A260733(n+1)]-A277890(n+1)`
-/

namespace A277891.P9200327390571338443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277890 (n + 1)

end

end A277891.P9200327390571338443

/-! ## A277891.P3752378613555310816

`A260732(n+2)-A260732(n+1)-A277890(n+1)`
-/

namespace A277891.P3752378613555310816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (n + 2) - A260732 (n + 1) - A277890 (n + 1)

end

end A277891.P3752378613555310816

/-! ## A277891.P8131211073851920510

`A260733(n+2)-A260733(n+1)-A277890(n+1)`
-/

namespace A277891.P8131211073851920510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (n + 2) - A260733 (n + 1) - A277890 (n + 1)

end

end A277891.P8131211073851920510

/-! ## A277891.P16200157454377390456

`Δ[record[A276572(n)]]-A277890(n+1)`
-/

namespace A277891.P16200157454377390456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277890 (n + 1)

end

end A277891.P16200157454377390456

/-! ## A277891.P11601599121111442687

`Δ[A276572(A260732(n))]-A277890(n+1)`
-/

namespace A277891.P11601599121111442687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 (A260732 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277890 (n + 1)

end

end A277891.P11601599121111442687

/-! ## A277891.P5051890545283914469

`Δ[A260731(A080335(n))]-A277890(n+1)`
-/

namespace A277891.P5051890545283914469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A080335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277890 (n + 1)

end

end A277891.P5051890545283914469

/-!
# A277892: a(n) = A001222(A048675(n)).

The programs for A277892, the canonical program `A277892.P15975992819171420890` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277892 has offset 2).

The definition of A277892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277892.P15975992819171420890

`A001222(A048675(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A277892

/-- `A001222(A048675(n+2))` -/
def P15975992819171420890.Spec : Prop :=
  ∀ n, P15975992819171420890.a n = A277892 (n + 2)

theorem P15975992819171420890.correct : P15975992819171420890.Spec := by
  intro n
  simp only [A277892, Nat.add_sub_cancel]

end A277892

/-! ## A277892.P4822695583831727985

`∑{e}[Δ[A336415(n+1)], #]`
-/

namespace A277892.P4822695583831727985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336415 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A277892.P4822695583831727985

namespace A277892

/-- `∑{e}[Δ[A336415(n+1)], #]` -/
def P4822695583831727985.Spec : Prop :=
  ∀ n, (P4822695583831727985.a n : ℤ) = A277892 (n + 2)

end A277892

/-! ## A277892.P2665884960773233659

`∑{e}[∑{d}[n+2, A297108(#)], #]`
-/

namespace A277892.P2665884960773233659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A297108 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A277892.P2665884960773233659

namespace A277892

/-- `∑{e}[∑{d}[n+2, A297108(#)], #]` -/
def P2665884960773233659.Spec : Prop :=
  ∀ n, (P2665884960773233659.a n : ℤ) = A277892 (n + 2)

end A277892

/-! ## A277892.P16511593891480970835

`∑{e}[A304735(A064664(n+2)), #]`
-/

namespace A277892.P16511593891480970835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304735 (A064664 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A277892.P16511593891480970835

namespace A277892

/-- `∑{e}[A304735(A064664(n+2)), #]` -/
def P16511593891480970835.Spec : Prop :=
  ∀ n, (P16511593891480970835.a n : ℤ) = A277892 (n + 2)

end A277892

/-! ## A277892.P11599330221739345302

`∑{e}[A048672(A322815(n+2)), #]`
-/

namespace A277892.P11599330221739345302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048672 (A322815 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A277892.P11599330221739345302

namespace A277892

/-- `∑{e}[A048672(A322815(n+2)), #]` -/
def P11599330221739345302.Spec : Prop :=
  ∀ n, (P11599330221739345302.a n : ℤ) = A277892 (n + 2)

end A277892

/-! ## A277892.P8816195260771798256

`A048675(∏{e}[A048675(n+2), A019565(#)])`
-/

namespace A277892.P8816195260771798256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A019565 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A277892.P8816195260771798256

namespace A277892

/-- `A048675(∏{e}[A048675(n+2), A019565(#)])` -/
def P8816195260771798256.Spec : Prop :=
  ∀ n, P8816195260771798256.a n = A277892 (n + 2)

end A277892

/-! ## A277892.P12837863597926299704

`A001222(Δ[A336415(n+1)])`
-/

namespace A277892.P12837863597926299704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A277892.P12837863597926299704

namespace A277892

/-- `A001222(Δ[A336415(n+1)])` -/
def P12837863597926299704.Spec : Prop :=
  ∀ n, P12837863597926299704.a n = A277892 (n + 2)

end A277892

/-!
# A277894: a(n) = the largest k < n for which A277892(k) = A277892(n), 0 if no such number exists, a(0) = a(1) = 0.

The programs for A277894, there is no canonical definition to state claims against.
-/

/-! ## A277894.P2494535315622562990

`A107782(n)+A023416(A284234(n))`
-/

namespace A277894.P2494535315622562990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 n + A023416 (A284234 n).toNat

end

end A277894.P2494535315622562990

/-! ## A277894.P2746022419683088622

`and(A061288(n+1), A274462(A001935(n)))`
-/

namespace A277894.P2746022419683088622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061288 (n + 1)) (A274462 (A001935 n).toNat)

end

end A277894.P2746022419683088622

/-!
# A277895: a(n) is the index of the column where n is located in array A277898, a(2) = 0.

The programs for A277895, there is no canonical definition to state claims against.
-/

/-! ## A277895.P419925190280067306

`A334032(A346599(n+1))`
-/

namespace A277895.P419925190280067306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (A346599 (n + 1)).toNat

end

end A277895.P419925190280067306

/-! ## A277895.P8409474058022048328

`A124768(A076186(n+1)+n)`
-/

namespace A277895.P8409474058022048328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A076186 (n + 1) + (n : ℤ)).toNat

end

end A277895.P8409474058022048328

/-! ## A277895.P10246874028909535364

`A001222(A023184(n)+2^n)`
-/

namespace A277895.P10246874028909535364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A023184 n + (2 ^ n : ℤ)).toNat

end

end A277895.P10246874028909535364

/-! ## A277895.P16681557741228526654

`A048881(or(7, A304660(3*n+4)))`
-/

namespace A277895.P16681557741228526654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.lor 7 (A304660 (3 * n + 4))).toNat

end

end A277895.P16681557741228526654

/-!
# A277897: Transpose of square array A277898.

The programs for A277897, there is no canonical definition to state claims against.
-/

/-! ## A277897.P12912032595015127220

`A277898(A061579(n)+3)`
-/

namespace A277897.P12912032595015127220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277898 (A061579 n + 3).toNat

end

end A277897.P12912032595015127220

/-! ## A277897.P14398717042476679992

`A277898(A038722(n+1)+2)`
-/

namespace A277897.P14398717042476679992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277898 (A038722 (n + 1) + 2).toNat

end

end A277897.P14398717042476679992

/-! ## A277897.P5357974966072232543

`A277898(A114327(n)+3+n)`
-/

namespace A277897.P5357974966072232543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277898 (A114327 n + 3 + (n : ℤ)).toNat

end

end A277897.P5357974966072232543

/-! ## A277897.P3944967938062995234

`A277898(∑[A198954(n)-1]+3)`
-/

namespace A277897.P3944967938062995234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277898 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A277897.P3944967938062995234

/-! ## A277897.P4262430254422250827

`A277898(A093995(n+1)+2-n)`
-/

namespace A277897.P4262430254422250827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277898 (A093995 (n + 1) + (2 - (n : ℤ))).toNat

end

end A277897.P4262430254422250827

/-!
# A277898: Square array A(r,c), where each row r lists all numbers k for which A277892(k) = r, read by downwards antidiagonals: A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A277898, there is no canonical definition to state claims against.
-/

/-! ## A277898.P13286568581951671582

`A277897(A061579(n)+3)`
-/

namespace A277898.P13286568581951671582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277897 (A061579 n + 3).toNat

end

end A277898.P13286568581951671582

/-! ## A277898.P8915879359316683837

`A277897(A038722(n+1)+2)`
-/

namespace A277898.P8915879359316683837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277897 (A038722 (n + 1) + 2).toNat

end

end A277898.P8915879359316683837

/-! ## A277898.P12815125819750189682

`A277897(A114327(n)+3+n)`
-/

namespace A277898.P12815125819750189682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277897 (A114327 n + 3 + (n : ℤ)).toNat

end

end A277898.P12815125819750189682

/-! ## A277898.P12711502050671342504

`A277897(∑[A198954(n)-1]+3)`
-/

namespace A277898.P12711502050671342504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277897 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A277898.P12711502050671342504

/-! ## A277898.P13160888724490428825

`A277897(A093995(n+1)+2-n)`
-/

namespace A277898.P13160888724490428825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277897 (A093995 (n + 1) + (2 - (n : ℤ))).toNat

end

end A277898.P13160888724490428825

/-!
# A277899: a(n) = A097249(A260443(n)).

The programs for A277899, there is no canonical definition to state claims against.
-/

/-! ## A277899.P10942615462710207290

`A097249(A260443(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277899.P10942615462710207290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097249 (A260443 n).toNat

end

end A277899.P10942615462710207290

/-! ## A277899.P9971260941783083948

`A341510(A124772(2*n))-A124778(n)`
-/

namespace A277899.P9971260941783083948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341510 (A124772 (2 * n)).toNat - A124778 n

end

end A277899.P9971260941783083948

/-! ## A277899.P4010426441907386429

`A119387(A030101(n)%A372337(3*n+1))`
-/

namespace A277899.P4010426441907386429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (Int.tmod (A030101 n) (A372337 (3 * n + 1))).toNat

end

end A277899.P4010426441907386429

/-! ## A277899.P17160636615886006031

`A319688(A319650(n))%A319675(3*(n+1))`
-/

namespace A277899.P17160636615886006031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319688 (A319650 n).toNat) (A319675 (3 * (n + 1)))

end

end A277899.P17160636615886006031

/-! ## A277899.P16341256115141610722

`A319688(A319650(n%A319646(n)))`
-/

namespace A277899.P16341256115141610722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319688 (A319650 (Int.tmod (n : ℤ) (A319646 n)).toNat).toNat

end

end A277899.P16341256115141610722

