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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A103101: Numbers n such that 9*10^n + 5*R_n - 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103101, there is no canonical definition to state claims against.
-/

/-! ## A103101.P6346344214670523895

`A251607(A008090(n))`
-/

namespace A103101.P6346344214670523895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251607 (A008090 n).toNat

end

end A103101.P6346344214670523895

/-!
# A103102: Numbers n such that 9*10^n + 5*R_n + 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103102, there is no canonical definition to state claims against.
-/

/-! ## A103102.P1084573341520990144

`A101011(A028310(n))+ceil(sin(n)²)`
-/

namespace A103102.P1084573341520990144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101011 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A103102.P1084573341520990144

/-! ## A103102.P14255604687346870702

`A101011(A028310(n))+A057427(n)`
-/

namespace A103102.P14255604687346870702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101011 (A028310 n).toNat + A057427 n

end

end A103102.P14255604687346870702

/-!
# A103103: Numbers n such that 9*10^n + 6*R_n - 5 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103103, there is no canonical definition to state claims against.
-/

/-! ## A103103.P4519238266759193625

`A101012(n+1)+1`
-/

namespace A103103.P4519238266759193625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101012 (n + 1) + 1

end

end A103103.P4519238266759193625

/-! ## A103103.P11487598619576962288

`A020725(A101012(n+1))`
-/

namespace A103103.P11487598619576962288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101012 (n + 1)).toNat

end

end A103103.P11487598619576962288

/-!
# A103104: Numbers n such that 9*10^n + 6*R_n + 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103104, there is no canonical definition to state claims against.
-/

/-! ## A103104.P214765369285820433

`A101013(n+1)+1`
-/

namespace A103104.P214765369285820433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101013 (n + 1) + 1

end

end A103104.P214765369285820433

/-!
# A103106: Numbers n such that 9*10^n + 7*R_n - 4 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103106, there is no canonical definition to state claims against.
-/

/-! ## A103106.P2693542854390740775

`∪[A101015(n+1)+1, A262509(n)]`
-/

namespace A103106.P2693542854390740775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101015 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103106.P2693542854390740775

/-!
# A103107: Numbers n such that 9*10^n + 8*R_n - 7 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103107, there is no canonical definition to state claims against.
-/

/-! ## A103107.P7089638007223935131

`∩[A008585(n), A294662(n)]`
-/

namespace A103107.P7089638007223935131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294662 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103107.P7089638007223935131

/-!
# A103108: Numbers n such that 9*10^n + 8*R_n - 5 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103108, there is no canonical definition to state claims against.
-/

/-! ## A103108.P1331297795271984765

`A101017(n+1)+1`
-/

namespace A103108.P1331297795271984765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101017 (n + 1) + 1

end

end A103108.P1331297795271984765

/-!
# A103109: Numbers n such that 9*10^n + 8*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A103109, there is no canonical definition to state claims against.
-/

/-! ## A103109.P2258221708120571967

`A101018(n+1)+1`
-/

namespace A103109.P2258221708120571967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101018 (n + 1) + 1

end

end A103109.P2258221708120571967

/-!
# A103110: Numbers n such that (58*100^n - 157)/99 is prime.

The programs for A103110, there is no canonical definition to state claims against.
-/

/-! ## A103110.P16968252897297187167

`A092683(A119714(n+2))+n`
-/

namespace A103110.P16968252897297187167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092683 (A119714 (n + 2)).toNat + (n : ℤ)

end

end A103110.P16968252897297187167

/-!
# A103111: Smallest natural number m such that n^n^n + m is prime.

The programs for A103111, there is no canonical definition to state claims against.
-/

/-! ## A103111.P3997543748078821350

`A287567(A330040(n+1)+A096008(n+1))`
-/

namespace A103111.P3997543748078821350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287567 (A330040 (n + 1) + A096008 (n + 1)).toNat

end

end A103111.P3997543748078821350

/-!
# A103114: a(n) = abs( f(Fibonacci(n)) - Fibonacci(f(n)) ), where f(n) = n-2 if (n mod 3) = 0, f(n) = n+2 if (n mod 3) = 1, otherwise f(n) = n.

The programs for A103114, the canonical program `A103114.P15093904350537325420` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103114 has offset 1).

The definition of A103114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103114.P15093904350537325420

`abs(A000045(A113655(n+1))-A102905(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103114

/-- `abs(A000045(A113655(n+1))-A102905(n))` -/
def P15093904350537325420.Spec : Prop :=
  ∀ n, P15093904350537325420.a n = A103114 (n + 1)

theorem P15093904350537325420.correct : P15093904350537325420.Spec := by
  intro n
  simp only [A103114, Nat.add_sub_cancel]

end A103114

/-!
# A103115: a(n) = 6*n*(n-1) - 1.

The programs for A103115, the canonical program `A103115.P154341310521204469` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103115 has offset 0).

The definition of A103115 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n*(n-1)-1` (program `A103115.P154341310521204469`, by `A103115.P154341310521204469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103115.P154341310521204469

`6*n*(n-1)-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103115

/-- `6*n*(n-1)-1` -/
def P154341310521204469.Spec : Prop :=
  ∀ n, P154341310521204469.a n = A103115 n

theorem P154341310521204469.correct : P154341310521204469.Spec := by
  intro n
  simp only [A103115]

end A103115

/-! ## A103115.P4878224728080874973

`∑[a(n-1)+12]` with `a(0)=-1, a(1)=0`
-/

namespace A103115.P4878224728080874973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103115.P4878224728080874973

namespace A103115

/-- `∑[a(n-1)+12]` -/
def P4878224728080874973.Spec : Prop :=
  ∀ n, P4878224728080874973.a n = A103115 n

end A103115

/-! ## A103115.P2169045039745235901

`(A064200(n)-2)/2`
-/

namespace A103115.P2169045039745235901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064200 n - 2 : ℚ) / 2

end

end A103115.P2169045039745235901

namespace A103115

/-- `(A064200(n)-2)/2` -/
def P2169045039745235901.Spec : Prop :=
  ∀ n, P2169045039745235901.a n = (A103115 n : ℚ)

end A103115

/-! ## A103115.P14221235085835101999

`(A255185(n)-(n+2))/2`
-/

namespace A103115.P14221235085835101999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255185 n - (n + 2 : ℤ) : ℚ) / 2

end

end A103115.P14221235085835101999

namespace A103115

/-- `(A255185(n)-(n+2))/2` -/
def P14221235085835101999.Spec : Prop :=
  ∀ n, P14221235085835101999.a n = (A103115 n : ℚ)

end A103115

/-! ## A103115.P11557736745106649025

`(A282850(n)-(n+3))/3`
-/

namespace A103115.P11557736745106649025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282850 n - (n + 3 : ℤ) : ℚ) / 3

end

end A103115.P11557736745106649025

namespace A103115

/-- `(A282850(n)-(n+3))/3` -/
def P11557736745106649025.Spec : Prop :=
  ∀ n, P11557736745106649025.a n = (A103115 n : ℚ)

end A103115

/-! ## A103115.P17828267117190915068

`floor(A033568(n)-1-(ϕ²-(ϕ-n)))`
-/

namespace A103115.P17828267117190915068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033568 n - 1 : ℝ) - (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))⌋

end

end A103115.P17828267117190915068

namespace A103115

/-- `floor(A033568(n)-1-(ϕ²-(ϕ-n)))` -/
def P17828267117190915068.Spec : Prop :=
  ∀ n, P17828267117190915068.a n = A103115 n

end A103115

/-! ## A103115.P17702589701990013204

`Δ[A280058(n)-n]`
-/

namespace A103115.P17702589701990013204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280058 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103115.P17702589701990013204

namespace A103115

/-- `Δ[A280058(n)-n]` -/
def P17702589701990013204.Spec : Prop :=
  ∀ n, P17702589701990013204.a n = A103115 n

end A103115

/-! ## A103115.P15065385513038362795

`Δ[2*A007531(n)-n]`
-/

namespace A103115.P15065385513038362795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007531 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103115.P15065385513038362795

namespace A103115

/-- `Δ[2*A007531(n)-n]` -/
def P15065385513038362795.Spec : Prop :=
  ∀ n, P15065385513038362795.a n = A103115 n

end A103115

/-! ## A103115.P11414018577695230867

`Δ[(n-3)*A093328(n)]`
-/

namespace A103115.P11414018577695230867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * A093328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103115.P11414018577695230867

namespace A103115

/-- `Δ[(n-3)*A093328(n)]` -/
def P11414018577695230867.Spec : Prop :=
  ∀ n, P11414018577695230867.a n = A103115 n

end A103115

/-! ## A103115.P9126840932675776790

`Δ[A015243(n)+A003215(n)]`
-/

namespace A103115.P9126840932675776790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015243 n + A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103115.P9126840932675776790

namespace A103115

/-- `Δ[A015243(n)+A003215(n)]` -/
def P9126840932675776790.Spec : Prop :=
  ∀ n, P9126840932675776790.a n = A103115 n

end A103115

/-! ## A103115.P18125791656867999551

`Δ[A028896(n)+A015243(n)]`
-/

namespace A103115.P18125791656867999551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n + A015243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103115.P18125791656867999551

namespace A103115

/-- `Δ[A028896(n)+A015243(n)]` -/
def P18125791656867999551.Spec : Prop :=
  ∀ n, P18125791656867999551.a n = A103115 n

end A103115

/-! ## A103115.P12936263750091503688

`Δ[∑[A005897(n)]-A016766(n)]`
-/

namespace A103115.P12936263750091503688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A016766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103115.P12936263750091503688

namespace A103115

/-- `Δ[∑[A005897(n)]-A016766(n)]` -/
def P12936263750091503688.Spec : Prop :=
  ∀ n, P12936263750091503688.a n = A103115 n

end A103115

/-! ## A103115.P1465913360663437450

`Δ[A033562(n+1)-A063436(n)]`
-/

namespace A103115.P1465913360663437450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (n + 1) - A063436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103115.P1465913360663437450

namespace A103115

/-- `Δ[A033562(n+1)-A063436(n)]` -/
def P1465913360663437450.Spec : Prop :=
  ∀ n, P1465913360663437450.a n = A103115 n

end A103115

/-!
# A103116: a(n) = Sum_{i=1..n} (n-i+1)*phi(i).

The programs for A103116, the canonical program `A103116.P13446593034198861880` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103116 has offset 0).

The definition of A103116 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005598, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A103116.P13446593034198861880

`A005598(n)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A103116

/-- `A005598(n)-1` -/
def P13446593034198861880.Spec : Prop :=
  ∀ n, P13446593034198861880.a n = A103116 n

theorem P13446593034198861880.correct : P13446593034198861880.Spec := by
  intro n
  simp only [A103116]

end A103116

/-! ## A103116.P6026219986087155127

`∑[A002088(n)]`
-/

namespace A103116.P6026219986087155127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103116.P6026219986087155127

namespace A103116

/-- `∑[A002088(n)]` -/
def P6026219986087155127.Spec : Prop :=
  ∀ n, P6026219986087155127.a n = A103116 n

end A103116

/-! ## A103116.P84335449302098308

`A049688(n)-n`
-/

namespace A103116.P84335449302098308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n - (n : ℤ)

end

end A103116.P84335449302098308

namespace A103116

/-- `A049688(n)-n` -/
def P84335449302098308.Spec : Prop :=
  ∀ n, P84335449302098308.a n = A103116 n

end A103116

/-! ## A103116.P11961087263628460136

`∑[A005728(n)-1]`
-/

namespace A103116.P11961087263628460136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103116.P11961087263628460136

namespace A103116

/-- `∑[A005728(n)-1]` -/
def P11961087263628460136.Spec : Prop :=
  ∀ n, P11961087263628460136.a n = A103116 n

end A103116

/-! ## A103116.P15546909209487905930

`∑[A049696(n)/2]`
-/

namespace A103116.P15546909209487905930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049696 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103116.P15546909209487905930

namespace A103116

/-- `∑[A049696(n)/2]` -/
def P15546909209487905930.Spec : Prop :=
  ∀ n, P15546909209487905930.a n = (A103116 n : ℚ)

end A103116

/-! ## A103116.P17656879186570231642

`∑[A140466(n)/4]`
-/

namespace A103116.P17656879186570231642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140466 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103116.P17656879186570231642

namespace A103116

/-- `∑[A140466(n)/4]` -/
def P17656879186570231642.Spec : Prop :=
  ∀ n, P17656879186570231642.a n = (A103116 n : ℚ)

end A103116

/-! ## A103116.P10734072143873879334

`∑[A049643(n)]-n`
-/

namespace A103116.P10734072143873879334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A103116.P10734072143873879334

namespace A103116

/-- `∑[A049643(n)]-n` -/
def P10734072143873879334.Spec : Prop :=
  ∀ n, P10734072143873879334.a n = A103116 n

end A103116

/-! ## A103116.P5492127050222953627

`(A274008(n)-1)/2`
-/

namespace A103116.P5492127050222953627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274008 n - 1 : ℚ) / 2

end

end A103116.P5492127050222953627

namespace A103116

/-- `(A274008(n)-1)/2` -/
def P5492127050222953627.Spec : Prop :=
  ∀ n, P5492127050222953627.a n = (A103116 n : ℚ)

end A103116

/-! ## A103116.P8476386699752248905

`∑[A000010(n)+a(n-1)]` with `a(0)=0`
-/

namespace A103116.P8476386699752248905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000010 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103116.P8476386699752248905

namespace A103116

/-- `∑[A000010(n)+a(n-1)]` -/
def P8476386699752248905.Spec : Prop :=
  ∀ n, P8476386699752248905.a n = A103116 n

end A103116

/-! ## A103116.P6901818972710544200

`a(n-1)+A015614(n)+1` with `a(0)=0`
-/

namespace A103116.P6901818972710544200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A015614 n + 1)

end

end A103116.P6901818972710544200

namespace A103116

/-- `a(n-1)+A015614(n)+1` -/
def P6901818972710544200.Spec : Prop :=
  ∀ n, P6901818972710544200.a n = A103116 n

end A103116

/-! ## A103116.P16134827705593662256

`a(n-1)+A015613(n)+n` with `a(0)=0`
-/

namespace A103116.P16134827705593662256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A015613 n + (n : ℤ))

end

end A103116.P16134827705593662256

namespace A103116

/-- `a(n-1)+A015613(n)+n` -/
def P16134827705593662256.Spec : Prop :=
  ∀ n, P16134827705593662256.a n = A103116 n

end A103116

/-! ## A103116.P6867221508585411062

`A274008(n)%A005598(n)`
-/

namespace A103116.P6867221508585411062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274008 n) (A005598 n)

end

end A103116.P6867221508585411062

namespace A103116

/-- `A274008(n)%A005598(n)` -/
def P6867221508585411062.Spec : Prop :=
  ∀ n, P6867221508585411062.a n = A103116 n

end A103116

/-! ## A103116.P6996878188765261922

`∑[A015614(A028310(n))]+n`
-/

namespace A103116.P6996878188765261922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A103116.P6996878188765261922

namespace A103116

/-- `∑[A015614(A028310(n))]+n` -/
def P6996878188765261922.Spec : Prop :=
  ∀ n, P6996878188765261922.a n = A103116 n

end A103116

/-! ## A103116.P1783076288798834787

`A143270(n+1)%A011755(n+1)`
-/

namespace A103116.P1783076288798834787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143270 (n + 1)) (A011755 (n + 1))

end

end A103116.P1783076288798834787

namespace A103116

/-- `A143270(n+1)%A011755(n+1)` -/
def P1783076288798834787.Spec : Prop :=
  ∀ n, P1783076288798834787.a n = A103116 n

end A103116

/-! ## A103116.P6867342725893096989

`∑[∑[A000010(n+1)]-A000010(n+1)]`
-/

namespace A103116.P6867342725893096989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103116.P6867342725893096989

namespace A103116

/-- `∑[∑[A000010(n+1)]-A000010(n+1)]` -/
def P6867342725893096989.Spec : Prop :=
  ∀ n, P6867342725893096989.a n = A103116 n

end A103116

/-! ## A103116.P776253586675812532

`∑[A015613(n+1)+n]-A015613(n+1)`
-/

namespace A103116.P776253586675812532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015613 (n + 1)

end

end A103116.P776253586675812532

namespace A103116

/-- `∑[A015613(n+1)+n]-A015613(n+1)` -/
def P776253586675812532.Spec : Prop :=
  ∀ n, P776253586675812532.a n = A103116 n

end A103116

/-! ## A103116.P4670556699057280513

`∑[A015614(n+1)]-A015614(n+1)+n`
-/

namespace A103116.P4670556699057280513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015614 (n + 1) + (n : ℤ)

end

end A103116.P4670556699057280513

namespace A103116

/-- `∑[A015614(n+1)]-A015614(n+1)+n` -/
def P4670556699057280513.Spec : Prop :=
  ∀ n, P4670556699057280513.a n = A103116 n

end A103116

/-! ## A103116.P18445474450211949587

`A057428(n+1)+A005598(n)`
-/

namespace A103116.P18445474450211949587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A005598 n

end

end A103116.P18445474450211949587

namespace A103116

/-- `A057428(n+1)+A005598(n)` -/
def P18445474450211949587.Spec : Prop :=
  ∀ n, P18445474450211949587.a n = A103116 n

end A103116

/-! ## A103116.P717949372734043488

`A001057(2*n)+∑[A049643(n)]`
-/

namespace A103116.P717949372734043488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103116.P717949372734043488

namespace A103116

/-- `A001057(2*n)+∑[A049643(n)]` -/
def P717949372734043488.Spec : Prop :=
  ∀ n, P717949372734043488.a n = A103116 n

end A103116

/-!
# A103118: Numbers k such that 100*k + 57 is prime.

The programs for A103118, the canonical program `A103118.P10702072525714284161` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103118 has offset 1).

The definition of A103118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103118.P10702072525714284161

`lt[A001222(50*(2*n+1)+7), 2]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A103118

/-- `lt[A001222(50*(2*n+1)+7), 2]` -/
def P10702072525714284161.Spec : Prop :=
  ∀ n, (P10702072525714284161.a n : ℤ) = A103118 (n + 1)

theorem P10702072525714284161.correct : P10702072525714284161.Spec := by
  intro n
  simp only [A103118, Nat.add_sub_cancel]

end A103118

/-! ## A103118.P15253879770689306544

`eq[1, A001222(A045805(4*n+2))]`
-/

namespace A103118.P15253879770689306544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045805 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103118.P15253879770689306544

namespace A103118

/-- `eq[1, A001222(A045805(4*n+2))]` -/
def P15253879770689306544.Spec : Prop :=
  ∀ n, (P15253879770689306544.a n : ℤ) = A103118 (n + 1)

end A103118

/-! ## A103118.P14274787845461147073

`eq[2, A000005(A017353(A017329(n)))]`
-/

namespace A103118.P14274787845461147073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017353 (A017329 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103118.P14274787845461147073

namespace A103118

/-- `eq[2, A000005(A017353(A017329(n)))]` -/
def P14274787845461147073.Spec : Prop :=
  ∀ n, (P14274787845461147073.a n : ℤ) = A103118 (n + 1)

end A103118

/-! ## A103118.P12789728178162864879

`eq[A036453(n+1), A304103(A045805(4*n+2))]`
-/

namespace A103118.P12789728178162864879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304103 (A045805 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103118.P12789728178162864879

namespace A103118

/-- `eq[A036453(n+1), A304103(A045805(4*n+2))]` -/
def P12789728178162864879.Spec : Prop :=
  ∀ n, (P12789728178162864879.a n : ℤ) = A103118 (n + 1)

end A103118

/-! ## A103118.P14918646264623354612

`∑[gcd(A121739(n+1), A350911(n))]`
-/

namespace A103118.P14918646264623354612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121739 (n + 1)) (A350911 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103118.P14918646264623354612

namespace A103118

/-- `∑[gcd(A121739(n+1), A350911(n))]` -/
def P14918646264623354612.Spec : Prop :=
  ∀ n, (P14918646264623354612.a n : ℤ) = A103118 (n + 1)

end A103118

/-!
# A103120: Floor(2(1-cos(n))).

The programs for A103120, the canonical program `A103120.P8684703641784279343` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103120 has offset 1).

The definition of A103120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*(1-cos(n+1)))` (program `A103120.P8684703641784279343`, by `A103120.P8684703641784279343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103120.P8684703641784279343

`floor(2*(1-cos(n+1)))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103120

/-- `floor(2*(1-cos(n+1)))` -/
def P8684703641784279343.Spec : Prop :=
  ∀ n, P8684703641784279343.a n = A103120 (n + 1)

theorem P8684703641784279343.correct : P8684703641784279343.Spec := by
  intro n
  simp only [A103120, Nat.add_sub_cancel]

end A103120

/-!
# A103121: Ceiling(2(1-cos(n))).

The programs for A103121, the canonical program `A103121.P17887294485608823602` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103121 has offset 1).

The definition of A103121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(2*(1-cos(n+1)))` (program `A103121.P17887294485608823602`, by `A103121.P17887294485608823602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103121.P17887294485608823602

`ceil(2*(1-cos(n+1)))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103121

/-- `ceil(2*(1-cos(n+1)))` -/
def P17887294485608823602.Spec : Prop :=
  ∀ n, P17887294485608823602.a n = A103121 (n + 1)

theorem P17887294485608823602.correct : P17887294485608823602.Spec := by
  intro n
  simp only [A103121, Nat.add_sub_cancel]

end A103121

/-!
# A103122: Define a 1-1 correspondence between the integers Z and the nonnegative integers N by f(n) = A102370(n) if n >= 0, f(n) = A102371(-n) if n < 0; sequence gives a(n) = f^(-1)(n) for n >= 0.

The programs for A103122, there is no canonical definition to state claims against.
-/

/-! ## A103122.P17034219159451256867

`n-A105023(A105034(n+2))`
-/

namespace A103122.P17034219159451256867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105023 (A105034 (n + 2)).toNat

end

end A103122.P17034219159451256867

/-! ## A103122.P6386465680508708275

`A001222(A000079(n))-A105023(A159966(n))`
-/

namespace A103122.P6386465680508708275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000079 n).toNat - A105023 (A159966 n).toNat

end

end A103122.P6386465680508708275

/-!
# A103127: Numbers congruent to {-1, 1, 3, 5} mod 16.

The programs for A103127, the canonical program `A103127.P13877220852697103135` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103127 has offset 1).

The definition of A103127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103127.P13877220852697103135

`record[abs(or(9, n)-10)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103127

/-- `record[abs(or(9, n)-10)]` -/
def P13877220852697103135.Spec : Prop :=
  ∀ n, P13877220852697103135.a n = A103127 (n + 1)

theorem P13877220852697103135.correct : P13877220852697103135.Spec := by
  intro n
  simp only [A103127, Nat.add_sub_cancel]

end A103127

/-! ## A103127.P17004789047410668553

`record[or(9, n-5)+6]`
-/

namespace A103127.P17004789047410668553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 ((n : ℤ) - 5) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103127.P17004789047410668553

namespace A103127

/-- `record[or(9, n-5)+6]` -/
def P17004789047410668553.Spec : Prop :=
  ∀ n, P17004789047410668553.a n = A103127 (n + 1)

end A103127

/-! ## A103127.P1441908098458858369

`record[xor(9, n+2)-10]`
-/

namespace A103127.P1441908098458858369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 9 (n + 2) : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103127.P1441908098458858369

namespace A103127

/-- `record[xor(9, n+2)-10]` -/
def P1441908098458858369.Spec : Prop :=
  ∀ n, P1441908098458858369.a n = A103127 (n + 1)

end A103127

/-! ## A103127.P7307229428233869171

`record[and(9, 5-n)+n]`
-/

namespace A103127.P7307229428233869171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 9 (5 - (n : ℤ)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103127.P7307229428233869171

namespace A103127

/-- `record[and(9, 5-n)+n]` -/
def P7307229428233869171.Spec : Prop :=
  ∀ n, P7307229428233869171.a n = A103127 (n + 1)

end A103127

/-! ## A103127.P9613095590505947969

`lt[n, and(n+1, -10)]`
-/

namespace A103127.P9613095590505947969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A103127.P9613095590505947969

namespace A103127

/-- `lt[n, and(n+1, -10)]` -/
def P9613095590505947969.Spec : Prop :=
  ∀ n, (P9613095590505947969.a n : ℤ) = A103127 (n + 1)

end A103127

/-! ## A103127.P16007378780294505420

`∑[Δ[or(2, n)]²]+n`
-/

namespace A103127.P16007378780294505420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A103127.P16007378780294505420

namespace A103127

/-- `∑[Δ[or(2, n)]²]+n` -/
def P16007378780294505420.Spec : Prop :=
  ∀ n, P16007378780294505420.a n = A103127 (n + 1)

end A103127

/-! ## A103127.P2943617902399458745

`eq[1, n^and(9, n+1)]`
-/

namespace A103127.P2943617902399458745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 9 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103127.P2943617902399458745

namespace A103127

/-- `eq[1, n^and(9, n+1)]` -/
def P2943617902399458745.Spec : Prop :=
  ∀ n, (P2943617902399458745.a n : ℤ) = A103127 (n + 1)

end A103127

/-! ## A103127.P5828431369809764323

`lt[n+8, xor(9, n+1)]`
-/

namespace A103127.P5828431369809764323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 9 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103127.P5828431369809764323

namespace A103127

/-- `lt[n+8, xor(9, n+1)]` -/
def P5828431369809764323.Spec : Prop :=
  ∀ n, (P5828431369809764323.a n : ℤ) = A103127 (n + 1)

end A103127

/-! ## A103127.P5946086788853161687

`lt[n+9, or(9, n+1)]`
-/

namespace A103127.P5946086788853161687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 9 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103127.P5946086788853161687

namespace A103127

/-- `lt[n+9, or(9, n+1)]` -/
def P5946086788853161687.Spec : Prop :=
  ∀ n, (P5946086788853161687.a n : ℤ) = A103127 (n + 1)

end A103127

/-! ## A103127.P5880093585163789787

`eq[n+10, or(9, n+1)]`
-/

namespace A103127.P5880093585163789787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 9 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103127.P5880093585163789787

namespace A103127

/-- `eq[n+10, or(9, n+1)]` -/
def P5880093585163789787.Spec : Prop :=
  ∀ n, (P5880093585163789787.a n : ℤ) = A103127 (n + 1)

end A103127

/-! ## A103127.P3285521611697126486

`eq[9, xor(n+1, n+10)]`
-/

namespace A103127.P3285521611697126486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103127.P3285521611697126486

namespace A103127

/-- `eq[9, xor(n+1, n+10)]` -/
def P3285521611697126486.Spec : Prop :=
  ∀ n, (P3285521611697126486.a n : ℤ) = A103127 (n + 1)

end A103127

/-! ## A103127.P12979754576133785670

`∑[Δ[xor(3, n)]+3]-1`
-/

namespace A103127.P12979754576133785670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A103127.P12979754576133785670

namespace A103127

/-- `∑[Δ[xor(3, n)]+3]-1` -/
def P12979754576133785670.Spec : Prop :=
  ∀ n, P12979754576133785670.a n = A103127 (n + 1)

end A103127

/-! ## A103127.P1017513144486262820

`eq[n, and(9, n+1)+n]`
-/

namespace A103127.P1017513144486262820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 9 (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103127.P1017513144486262820

namespace A103127

/-- `eq[n, and(9, n+1)+n]` -/
def P1017513144486262820.Spec : Prop :=
  ∀ n, (P1017513144486262820.a n : ℤ) = A103127 (n + 1)

end A103127

/-! ## A103127.P6186650208074327032

`lt[n*and(9, n+1), n]`
-/

namespace A103127.P6186650208074327032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 9 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103127.P6186650208074327032

namespace A103127

/-- `lt[n*and(9, n+1), n]` -/
def P6186650208074327032.Spec : Prop :=
  ∀ n, (P6186650208074327032.a n : ℤ) = A103127 (n + 1)

end A103127

/-! ## A103127.P2284327434596328297

`a(n-4)+16` with `a(0)=1, a(1)=3, a(2)=5, a(3)=15`
-/

namespace A103127.P2284327434596328297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 15] fun n a =>
  a (n - 4) + 16

end

end A103127.P2284327434596328297

namespace A103127

/-- `a(n-4)+16` -/
def P2284327434596328297.Spec : Prop :=
  ∀ n, (P2284327434596328297.a n : ℤ) = A103127 (n + 1)

end A103127

/-! ## A103127.P3032854548752780823

`2*comp[or(4, n)-1]+1`
-/

namespace A103127.P3032854548752780823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A103127.P3032854548752780823

namespace A103127

/-- `2*comp[or(4, n)-1]+1` -/
def P3032854548752780823.Spec : Prop :=
  ∀ n, (P3032854548752780823.a n : ℤ) = A103127 (n + 1)

end A103127

/-! ## A103127.P17635091715835313742

`record[gcd(n-2, and(9, n-1))]`
-/

namespace A103127.P17635091715835313742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 2) (Int.land 9 ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103127.P17635091715835313742

namespace A103127

/-- `record[gcd(n-2, and(9, n-1))]` -/
def P17635091715835313742.Spec : Prop :=
  ∀ n, (P17635091715835313742.a n : ℤ) = A103127 (n + 1)

end A103127

/-! ## A103127.P3289336881389337636

`lt[and(9, n+1), acot(n-1)]`
-/

namespace A103127.P3289336881389337636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 9 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A103127.P3289336881389337636

namespace A103127

/-- `lt[and(9, n+1), acot(n-1)]` -/
def P3289336881389337636.Spec : Prop :=
  ∀ n, (P3289336881389337636.a n : ℤ) = A103127 (n + 1)

end A103127

/-! ## A103127.P760279480144429044

`Δ[or(5, (1-n)²)+n²]`
-/

namespace A103127.P760279480144429044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((1 - (n : ℤ)) ^ 2) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103127.P760279480144429044

namespace A103127

/-- `Δ[or(5, (1-n)²)+n²]` -/
def P760279480144429044.Spec : Prop :=
  ∀ n, P760279480144429044.a n = A103127 (n + 1)

end A103127

/-! ## A103127.P2451163632596996400

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=10, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A103127.P2451163632596996400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 10, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103127.P2451163632596996400

namespace A103127

/-- `∑[floor(a(n-4))]` -/
def P2451163632596996400.Spec : Prop :=
  ∀ n, (P2451163632596996400.a n : ℤ) = A103127 (n + 1)

end A103127

/-!
# A103128: a(n) = floor(sqrt(2n-1)).

The programs for A103128, the canonical program `A103128.P4877455138761684955` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103128 has offset 1).

The definition of A103128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*(n+1)-1))` (program `A103128.P4877455138761684955`, by `A103128.P4877455138761684955.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103128.P4877455138761684955

`floor(sqrt(2*(n+1)-1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103128

/-- `floor(sqrt(2*(n+1)-1))` -/
def P4877455138761684955.Spec : Prop :=
  ∀ n, P4877455138761684955.a n = A103128 (n + 1)

theorem P4877455138761684955.correct : P4877455138761684955.Spec := by
  intro n
  simp only [A103128, Nat.add_sub_cancel]

end A103128

/-! ## A103128.P17264017403607856856

`∑[char[∑[and(n, -2)]]]`
-/

namespace A103128.P17264017403607856856
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103128.P17264017403607856856

namespace A103128

/-- `∑[char[∑[and(n, -2)]]]` -/
def P17264017403607856856.Spec : Prop :=
  ∀ n, (P17264017403607856856.a n : ℤ) = A103128 (n + 1)

end A103128

/-! ## A103128.P11893709672073540580

`ceil(record[sqrt(or(2, n))])-1`
-/

namespace A103128.P11893709672073540580
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lor 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ - 1

end

end A103128.P11893709672073540580

namespace A103128

/-- `ceil(record[sqrt(or(2, n))])-1` -/
def P11893709672073540580.Spec : Prop :=
  ∀ n, P11893709672073540580.a n = A103128 (n + 1)

end A103128

/-! ## A103128.P14215976432272250042

`∑[char[∑[or(1, n)-1]]]`
-/

namespace A103128.P14215976432272250042
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103128.P14215976432272250042

namespace A103128

/-- `∑[char[∑[or(1, n)-1]]]` -/
def P14215976432272250042.Spec : Prop :=
  ∀ n, (P14215976432272250042.a n : ℤ) = A103128 (n + 1)

end A103128

/-! ## A103128.P15029454576304336279

`∑[char[∑[n%2+n]]]`
-/

namespace A103128.P15029454576304336279
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103128.P15029454576304336279

namespace A103128

/-- `∑[char[∑[n%2+n]]]` -/
def P15029454576304336279.Spec : Prop :=
  ∀ n, (P15029454576304336279.a n : ℤ) = A103128 (n + 1)

end A103128

/-! ## A103128.P14802204921846231862

`ceil(sqrt(2*or(1, n)))-1`
-/

namespace A103128.P14802204921846231862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * Nat.lor 1 n : ℝ)⌉ - 1

end

end A103128.P14802204921846231862

namespace A103128

/-- `ceil(sqrt(2*or(1, n)))-1` -/
def P14802204921846231862.Spec : Prop :=
  ∀ n, P14802204921846231862.a n = A103128 (n + 1)

end A103128

/-! ## A103128.P7945004181419730994

`round(sqrt(∑[2-char[C(n, 2)]]))`
-/

namespace A103128.P7945004181419730994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A103128.P7945004181419730994

namespace A103128

/-- `round(sqrt(∑[2-char[C(n, 2)]]))` -/
def P7945004181419730994.Spec : Prop :=
  ∀ n, P7945004181419730994.a n = A103128 (n + 1)

end A103128

/-! ## A103128.P2732018678299958261

`or(floor(sqrt(2*n+1)), char[1])`
-/

namespace A103128.P2732018678299958261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.sqrt (2 * n + 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A103128.P2732018678299958261

namespace A103128

/-- `or(floor(sqrt(2*n+1)), char[1])` -/
def P2732018678299958261.Spec : Prop :=
  ∀ n, (P2732018678299958261.a n : ℤ) = A103128 (n + 1)

end A103128

/-! ## A103128.P2313195699172659463

`ceil(log(cosh(floor(sqrt(2*n+1)))))`
-/

namespace A103128.P2313195699172659463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.cosh (Nat.sqrt (2 * n + 1) : ℝ))⌉

end

end A103128.P2313195699172659463

namespace A103128

/-- `ceil(log(cosh(floor(sqrt(2*n+1)))))` -/
def P2313195699172659463.Spec : Prop :=
  ∀ n, P2313195699172659463.a n = A103128 (n + 1)

end A103128

/-! ## A103128.P11852911401040396752

`ceil(log(sinh(floor(sqrt(2*n+1)))))`
-/

namespace A103128.P11852911401040396752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.sinh (Nat.sqrt (2 * n + 1) : ℝ))⌉

end

end A103128.P11852911401040396752

namespace A103128

/-- `ceil(log(sinh(floor(sqrt(2*n+1)))))` -/
def P11852911401040396752.Spec : Prop :=
  ∀ n, P11852911401040396752.a n = A103128 (n + 1)

end A103128

/-! ## A103128.P13726195830251764136

`abs(floor(cot(Δ[sqrt(2*n+1)])))`
-/

namespace A103128.P13726195830251764136
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.cot (f1 (n + 1) - f1 n)⌋|

end

end A103128.P13726195830251764136

namespace A103128

/-- `abs(floor(cot(Δ[sqrt(2*n+1)])))` -/
def P13726195830251764136.Spec : Prop :=
  ∀ n, P13726195830251764136.a n = A103128 (n + 1)

end A103128

/-! ## A103128.P1333823288547074867

`∑[char[∑[a(n-2)+2]]]` with `a(0)=0, a(1)=0`
-/

namespace A103128.P1333823288547074867
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f3 =>
  f3 (n - 2) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103128.P1333823288547074867

namespace A103128

/-- `∑[char[∑[a(n-2)+2]]]` -/
def P1333823288547074867.Spec : Prop :=
  ∀ n, (P1333823288547074867.a n : ℤ) = A103128 (n + 1)

end A103128

/-! ## A103128.P3757458276379578078

`∑[char[∑[∑[2-a(n-1)]]]]` with `a(0)=0`
-/

namespace A103128.P3757458276379578078
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f4 =>
  2 - f4 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103128.P3757458276379578078

namespace A103128

/-- `∑[char[∑[∑[2-a(n-1)]]]]` -/
def P3757458276379578078.Spec : Prop :=
  ∀ n, (P3757458276379578078.a n : ℤ) = A103128 (n + 1)

end A103128

/-! ## A103128.P13868525946877109437

`∑[char[∑[n+1-gcd(2, n+1)]]]`
-/

namespace A103128.P13868525946877109437
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.gcd 2 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103128.P13868525946877109437

namespace A103128

/-- `∑[char[∑[n+1-gcd(2, n+1)]]]` -/
def P13868525946877109437.Spec : Prop :=
  ∀ n, (P13868525946877109437.a n : ℤ) = A103128 (n + 1)

end A103128

/-! ## A103128.P12224481563368103852

`∑[char[∑[∑[∑[ogf(2x^2/(1+x))]]]]]`
-/

namespace A103128.P12224481563368103852
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, 1] n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103128.P12224481563368103852

namespace A103128

/-- `∑[char[∑[∑[∑[ogf(2x^2/(1+x))]]]]]` -/
def P12224481563368103852.Spec : Prop :=
  ∀ n, (P12224481563368103852.a n : ℤ) = A103128 (n + 1)

end A103128

/-! ## A103128.P4342314632703629350

`round(sqrt(2*n+1-a(n-1)))` with `a(0)=1`
-/

namespace A103128.P4342314632703629350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 * n + 1 : ℤ) - a (n - 1) : ℝ))

end

end A103128.P4342314632703629350

namespace A103128

/-- `round(sqrt(2*n+1-a(n-1)))` -/
def P4342314632703629350.Spec : Prop :=
  ∀ n, P4342314632703629350.a n = A103128 (n + 1)

end A103128

/-! ## A103128.P14973483835129536507

`floor(sqrt(2*n+1))%((n+2)^10)`
-/

namespace A103128.P14973483835129536507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n + 1) % (n + 2) ^ 10

end

end A103128.P14973483835129536507

namespace A103128

/-- `floor(sqrt(2*n+1))%((n+2)^10)` -/
def P14973483835129536507.Spec : Prop :=
  ∀ n, (P14973483835129536507.a n : ℤ) = A103128 (n + 1)

end A103128

/-! ## A103128.P423392735663725788

`floor(n/(n/(a(n-1)+2)+1))+1` with `a(0)=1`
-/

namespace A103128.P423392735663725788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / ((n : ℚ) / (a (n - 1) + 2 : ℚ) + 1)⌋ + 1

end

end A103128.P423392735663725788

namespace A103128

/-- `floor(n/(n/(a(n-1)+2)+1))+1` -/
def P423392735663725788.Spec : Prop :=
  ∀ n, P423392735663725788.a n = A103128 (n + 1)

end A103128

/-! ## A103128.P3651645576323222736

`A102515(n)-1`
-/

namespace A103128.P3651645576323222736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102515 n - 1

end

end A103128.P3651645576323222736

namespace A103128

/-- `A102515(n)-1` -/
def P3651645576323222736.Spec : Prop :=
  ∀ n, P3651645576323222736.a n = A103128 (n + 1)

end A103128

/-! ## A103128.P5162316318801180409

`A172471(or(1, n))`
-/

namespace A103128.P5162316318801180409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Nat.lor 1 n)

end

end A103128.P5162316318801180409

namespace A103128

/-- `A172471(or(1, n))` -/
def P5162316318801180409.Spec : Prop :=
  ∀ n, P5162316318801180409.a n = A103128 (n + 1)

end A103128

/-!
# A103129: Least k such that 10^n + k - 1 is the first of a pair of twin primes.

The programs for A103129, there is no canonical definition to state claims against.
-/

/-! ## A103129.P17138470813490095303

`A124001(n+1)+1`
-/

namespace A103129.P17138470813490095303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124001 (n + 1) + 1

end

end A103129.P17138470813490095303

/-! ## A103129.P15598825023271444247

`3-∑[-Δ[A124001(n)]]`
-/

namespace A103129.P15598825023271444247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103129.P15598825023271444247

/-! ## A103129.P307755822336489049

`A092245(n+2)-A002283(n+1)`
-/

namespace A103129.P307755822336489049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092245 (n + 2) - A002283 (n + 1)

end

end A103129.P307755822336489049

/-! ## A103129.P16175478757329020022

`A092245(n+2)+1-A011557(n+1)`
-/

namespace A103129.P16175478757329020022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092245 (n + 2) + (1 - A011557 (n + 1))

end

end A103129.P16175478757329020022

/-! ## A103129.P5782483789819153555

`A092486(A124001(n+1))`
-/

namespace A103129.P5782483789819153555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A124001 (n + 1)).toNat

end

end A103129.P5782483789819153555

/-!
# A103131: The product of the residues in [1,n] relatively prime to n, taken modulo n.

The programs for A103131, the canonical program `A103131.P5239793970225112123` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103131 has offset 1).

The definition of A103131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103131.P1501014294458702742

`C(2, A160377(n+1)²)-1`
-/

namespace A103131.P1501014294458702742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A160377 (n + 1) ^ 2).toNat : ℤ) - 1

end

end A103131.P1501014294458702742

namespace A103131

/-- `C(2, A160377(n+1)²)-1` -/
def P1501014294458702742.Spec : Prop :=
  ∀ n, P1501014294458702742.a n = A103131 (n + 1)

end A103131

/-! ## A103131.P14178377215450070961

`A134824(A160377(n+1))`
-/

namespace A103131.P14178377215450070961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A160377 (n + 1)).toNat

end

end A103131.P14178377215450070961

namespace A103131

/-- `A134824(A160377(n+1))` -/
def P14178377215450070961.Spec : Prop :=
  ∀ n, P14178377215450070961.a n = A103131 (n + 1)

end A103131

/-! ## A103131.P7891816663636103396

`A005590(A060594(n+1)%(n+1)+3)`
-/

namespace A103131.P7891816663636103396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (Int.tmod (A060594 (n + 1)) (n + 1 : ℤ) + 3).toNat

end

end A103131.P7891816663636103396

namespace A103131

/-- `A005590(A060594(n+1)%(n+1)+3)` -/
def P7891816663636103396.Spec : Prop :=
  ∀ n, P7891816663636103396.a n = A103131 (n + 1)

end A103131

/-! ## A103131.P13225241570679467720

`((-1)^A157230(n+1))%A305800(n+1)`
-/

namespace A103131.P13225241570679467720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A157230 (n + 1) : ℤ))) (A305800 (n + 1))

end

end A103131.P13225241570679467720

namespace A103131

/-- `((-1)^A157230(n+1))%A305800(n+1)` -/
def P13225241570679467720.Spec : Prop :=
  ∀ n, P13225241570679467720.a n = A103131 (n + 1)

end A103131

/-! ## A103131.P8979891657924393832

`A319993(ceil((A215653(n+1)+2)/(n+1)))`
-/

namespace A103131.P8979891657924393832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319993 ⌈(A215653 (n + 1) + 2 : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A103131.P8979891657924393832

namespace A103131

/-- `A319993(ceil((A215653(n+1)+2)/(n+1)))` -/
def P8979891657924393832.Spec : Prop :=
  ∀ n, P8979891657924393832.a n = A103131 (n + 1)

end A103131

/-! ## A103131.P5239793970225112123

`A057427(n)-A136521(A060594(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A103131

/-- `A057427(n)-A136521(A060594(n+1))` -/
def P5239793970225112123.Spec : Prop :=
  ∀ n, P5239793970225112123.a n = A103131 (n + 1)

theorem P5239793970225112123.correct : P5239793970225112123.Spec := by
  intro n
  simp only [A103131, Nat.add_sub_cancel]

end A103131

/-! ## A103131.P4115631667601388368

`A130706(n)-A153881(A034380(n+1))`
-/

namespace A103131.P4115631667601388368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n - A153881 (A034380 (n + 1)).toNat

end

end A103131.P4115631667601388368

namespace A103131

/-- `A130706(n)-A153881(A034380(n+1))` -/
def P4115631667601388368.Spec : Prop :=
  ∀ n, P4115631667601388368.a n = A103131 (n + 1)

end A103131

/-! ## A103131.P13553603037555599521

`A057427(n)-A136521(2^val(A319100(n+1), 2))`
-/

namespace A103131.P13553603037555599521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A136521 (2 ^ SequenceMachineLib.valuation (A319100 (n + 1)).toNat 2)

end

end A103131.P13553603037555599521

namespace A103131

/-- `A057427(n)-A136521(2^val(A319100(n+1), 2))` -/
def P13553603037555599521.Spec : Prop :=
  ∀ n, P13553603037555599521.a n = A103131 (n + 1)

end A103131

/-! ## A103131.P14205887843448205517

`A211487(A160377(n+1)+1)-and(2, A060594(n+1))`
-/

namespace A103131.P14205887843448205517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (A160377 (n + 1) + 1).toNat - Int.land 2 (A060594 (n + 1))

end

end A103131.P14205887843448205517

namespace A103131

/-- `A211487(A160377(n+1)+1)-and(2, A060594(n+1))` -/
def P14205887843448205517.Spec : Prop :=
  ∀ n, P14205887843448205517.a n = A103131 (n + 1)

end A103131

/-! ## A103131.P9557278750565974090

`A057427(n)-A136521((A109606(n+1)+1)/A046073(n+1))`
-/

namespace A103131.P9557278750565974090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A136521 (SequenceMachineLib.roundAway ((A109606 (n + 1) + 1 : ℚ) / (A046073 (n + 1) : ℚ))).toNat

end

end A103131.P9557278750565974090

namespace A103131

/-- `A057427(n)-A136521((A109606(n+1)+1)/A046073(n+1))` -/
def P9557278750565974090.Spec : Prop :=
  ∀ n, P9557278750565974090.a n = A103131 (n + 1)

end A103131

/-! ## A103131.P11467907867809024983

`A057427(n)-A136521((A039649(n+1)-1)/A046073(n+1))`
-/

namespace A103131.P11467907867809024983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A136521 (SequenceMachineLib.roundAway ((A039649 (n + 1) - 1 : ℚ) / (A046073 (n + 1) : ℚ))).toNat

end

end A103131.P11467907867809024983

namespace A103131

/-- `A057427(n)-A136521((A039649(n+1)-1)/A046073(n+1))` -/
def P11467907867809024983.Spec : Prop :=
  ∀ n, P11467907867809024983.a n = A103131 (n + 1)

end A103131

/-! ## A103131.P14169327506960985648

`A057427(n)-A136521((n-A219428(n+1))/A046073(n+1))`
-/

namespace A103131.P14169327506960985648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A136521 (SequenceMachineLib.roundAway (((n : ℤ) - A219428 (n + 1) : ℚ) / (A046073 (n + 1) : ℚ))).toNat

end

end A103131.P14169327506960985648

namespace A103131

/-- `A057427(n)-A136521((n-A219428(n+1))/A046073(n+1))` -/
def P14169327506960985648.Spec : Prop :=
  ∀ n, P14169327506960985648.a n = A103131 (n + 1)

end A103131

/-! ## A103131.P16407287871121757745

`1-and(A014963(A060594(n+2)), A060594(n+1))`
-/

namespace A103131.P16407287871121757745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A014963 (A060594 (n + 2)).toNat) (A060594 (n + 1))

end

end A103131.P16407287871121757745

namespace A103131

/-- `1-and(A014963(A060594(n+2)), A060594(n+1))` -/
def P16407287871121757745.Spec : Prop :=
  ∀ n, P16407287871121757745.a n = A103131 (n + 1)

end A103131

/-!
# A103134: a(n) = Fibonacci(6n+4).

The programs for A103134, the canonical program `A103134.P8097438780566091472` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103134 has offset 0).

The definition of A103134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103134.P8097438780566091472

`18*a(n-1)-a(n-2)` with `a(0)=3, a(1)=55`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103134

/-- `18*a(n-1)-a(n-2)` -/
def P8097438780566091472.Spec : Prop :=
  ∀ n, P8097438780566091472.a n = A103134 n

theorem P8097438780566091472.correct : P8097438780566091472.Spec := by
  intro n
  simp only [A103134]

end A103134

/-! ## A103134.P12870399531906520836

`A007805(n)+A075796(n+1)`
-/

namespace A103134.P12870399531906520836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007805 n + A075796 (n + 1)

end

end A103134.P12870399531906520836

namespace A103134

/-- `A007805(n)+A075796(n+1)` -/
def P12870399531906520836.Spec : Prop :=
  ∀ n, P12870399531906520836.a n = A103134 n

end A103134

/-! ## A103134.P2729132821299635128

`ogf((3+x)/(1-18x+x^2))`
-/

namespace A103134.P2729132821299635128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -18, 1] n

end

end A103134.P2729132821299635128

namespace A103134

/-- `ogf((3+x)/(1-18x+x^2))` -/
def P2729132821299635128.Spec : Prop :=
  ∀ n, P2729132821299635128.a n = A103134 n

end A103134

/-! ## A103134.P9187461269619919266

`or(1, ceil(ϕ^6*a(n-1)))` with `a(0)=3`
-/

namespace A103134.P9187461269619919266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 1 ⌈Real.goldenRatio ^ 6 * (a (n - 1) : ℝ)⌉

end

end A103134.P9187461269619919266

namespace A103134

/-- `or(1, ceil(ϕ^6*a(n-1)))` -/
def P9187461269619919266.Spec : Prop :=
  ∀ n, P9187461269619919266.a n = A103134 n

end A103134

/-! ## A103134.P4396666856227510058

`Δ[A049661(n)]`
-/

namespace A103134.P4396666856227510058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103134.P4396666856227510058

namespace A103134

/-- `Δ[A049661(n)]` -/
def P4396666856227510058.Spec : Prop :=
  ∀ n, P4396666856227510058.a n = A103134 n

end A103134

/-! ## A103134.P14039380018970153673

`A020701(6*n)`
-/

namespace A103134.P14039380018970153673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (6 * n)

end

end A103134.P14039380018970153673

namespace A103134

/-- `A020701(6*n)` -/
def P14039380018970153673.Spec : Prop :=
  ∀ n, P14039380018970153673.a n = A103134 n

end A103134

/-! ## A103134.P9460241257049692592

`A033887(Δ[n²])`
-/

namespace A103134.P9460241257049692592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A103134.P9460241257049692592

namespace A103134

/-- `A033887(Δ[n²])` -/
def P9460241257049692592.Spec : Prop :=
  ∀ n, P9460241257049692592.a n = A103134 n

end A103134

/-! ## A103134.P15914333804476979578

`Δ[A110526(2*n)]`
-/

namespace A103134.P15914333804476979578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110526 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103134.P15914333804476979578

namespace A103134

/-- `Δ[A110526(2*n)]` -/
def P15914333804476979578.Spec : Prop :=
  ∀ n, P15914333804476979578.a n = A103134 n

end A103134

/-! ## A103134.P6670459529651537573

`A001906(3*n+2)`
-/

namespace A103134.P6670459529651537573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (3 * n + 2)

end

end A103134.P6670459529651537573

namespace A103134

/-- `A001906(3*n+2)` -/
def P6670459529651537573.Spec : Prop :=
  ∀ n, P6670459529651537573.a n = A103134 n

end A103134

/-! ## A103134.P1436038954777388613

`A088305(3*n+2)`
-/

namespace A103134.P1436038954777388613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (3 * n + 2)

end

end A103134.P1436038954777388613

namespace A103134

/-- `A088305(3*n+2)` -/
def P1436038954777388613.Spec : Prop :=
  ∀ n, P1436038954777388613.a n = A103134 n

end A103134

/-!
# A103135: Expansion of (-3*x^3-18*x^2+14*x-1)/(3*x^4-5*x^2+4*x-1).

The programs for A103135, the canonical program `A103135.P12609101712290547573` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103135 has offset 0).

The definition of A103135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-14x+18x^2+3x^3)/(1-4x+5x^2-3x^4))` (program `A103135.P12609101712290547573`, by `A103135.P12609101712290547573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103135.P12609101712290547573

`ogf((1-14x+18x^2+3x^3)/(1-4x+5x^2-3x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103135

/-- `ogf((1-14x+18x^2+3x^3)/(1-4x+5x^2-3x^4))` -/
def P12609101712290547573.Spec : Prop :=
  ∀ n, P12609101712290547573.a n = A103135 n

theorem P12609101712290547573.correct : P12609101712290547573.Spec := by
  intro n
  simp only [A103135]

end A103135

/-! ## A103135.P2670573452590677588

`4*a(n-1)-5*a(n-2)+3*a(n-4)` with `a(0)=1, a(1)=-10, a(2)=-27, a(3)=-55`
-/

namespace A103135.P2670573452590677588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -10, -27, -55] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 3 * a (n - 4)

end

end A103135.P2670573452590677588

namespace A103135

/-- `4*a(n-1)-5*a(n-2)+3*a(n-4)` -/
def P2670573452590677588.Spec : Prop :=
  ∀ n, P2670573452590677588.a n = A103135 n

end A103135

/-!
# A103136: Inverse of the Delannoy triangle.

The programs for A103136, there is no canonical definition to state claims against.
-/

/-! ## A103136.P17040117445448061453

`(and(2, comp[∑[n]]+n)-1)*A132372(n)`
-/

namespace A103136.P17040117445448061453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A132372 n

end

end A103136.P17040117445448061453

/-! ## A103136.P13729695679154671947

`(and(2, comp[∑[n]]+n)-1)*A033878(∑[2*n]%comp[∑[n]])`
-/

namespace A103136.P13729695679154671947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A033878 ((∑ j ∈ Finset.range (n + 1), f3 j) % SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A103136.P13729695679154671947

/-! ## A103136.P14806950393674497952

`A097807(n)*A132372(n)`
-/

namespace A103136.P14806950393674497952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A132372 n

end

end A103136.P14806950393674497952

/-! ## A103136.P17148923877267266007

`A033878(A061579(n))*A097807(n)`
-/

namespace A103136.P17148923877267266007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (A061579 n).toNat * A097807 n

end

end A103136.P17148923877267266007

/-! ## A103136.P10386936531924421191

`A033999(A051162(n))*A132372(n)`
-/

namespace A103136.P10386936531924421191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A132372 n

end

end A103136.P10386936531924421191

/-! ## A103136.P14165119732515194521

`A009531(A099375(n))*A132372(n)`
-/

namespace A103136.P14165119732515194521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A132372 n

end

end A103136.P14165119732515194521

/-! ## A103136.P3561160989424832301

`A112477(comp[∑[n]])`
-/

namespace A103136.P3561160989424832301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112477 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A103136.P3561160989424832301

/-! ## A103136.P6116756375950395734

`A033999(A069011(n))*A132372(n)`
-/

namespace A103136.P6116756375950395734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A069011 n).toNat * A132372 n

end

end A103136.P6116756375950395734

/-! ## A103136.P18361872227013211518

`A132372(n)*A154269(A130321(n))`
-/

namespace A103136.P18361872227013211518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 n * A154269 (A130321 n).toNat

end

end A103136.P18361872227013211518

/-!
# A103137: First column of inverse of Delannoy triangle.

The programs for A103137, the canonical program `A103137.P5406980823153393288` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103137 has offset 0).

The definition of A103137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103137.P1301706836681469157

`A103136(∑[n])`
-/

namespace A103137.P1301706836681469157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103136 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103137.P1301706836681469157

namespace A103137

/-- `A103136(∑[n])` -/
def P1301706836681469157.Spec : Prop :=
  ∀ n, P1301706836681469157.a n = A103137 n

end A103137

/-! ## A103137.P6191951348656952165

`A155069(n)/(-1)^n`
-/

namespace A103137.P6191951348656952165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155069 n : ℚ) / ((-1) ^ n : ℚ)

end

end A103137.P6191951348656952165

namespace A103137

/-- `A155069(n)/(-1)^n` -/
def P6191951348656952165.Spec : Prop :=
  ∀ n, P6191951348656952165.a n = (A103137 n : ℚ)

end A103137

/-! ## A103137.P5353175560000418172

`A033999(n)*A155069(n)`
-/

namespace A103137.P5353175560000418172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A155069 n

end

end A103137.P5353175560000418172

namespace A103137

/-- `A033999(n)*A155069(n)` -/
def P5353175560000418172.Spec : Prop :=
  ∀ n, P5353175560000418172.a n = A103137 n

end A103137

/-! ## A103137.P5406980823153393288

`A086456(n)*A165326(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A103137

/-- `A086456(n)*A165326(n)` -/
def P5406980823153393288.Spec : Prop :=
  ∀ n, P5406980823153393288.a n = A103137 n

theorem P5406980823153393288.correct : P5406980823153393288.Spec := by
  intro n
  simp only [A103137]

end A103137

/-! ## A103137.P13810814281119626887

`abs(A086456(n))*A033999(n)`
-/

namespace A103137.P13810814281119626887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086456 n| * A033999 n

end

end A103137.P13810814281119626887

namespace A103137

/-- `abs(A086456(n))*A033999(n)` -/
def P13810814281119626887.Spec : Prop :=
  ∀ n, P13810814281119626887.a n = A103137 n

end A103137

/-! ## A103137.P1938848993016230625

`∑[A280560(n)]*A155069(n)`
-/

namespace A103137.P1938848993016230625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A155069 n

end

end A103137.P1938848993016230625

namespace A103137

/-- `∑[A280560(n)]*A155069(n)` -/
def P1938848993016230625.Spec : Prop :=
  ∀ n, P1938848993016230625.a n = A103137 n

end A103137

/-! ## A103137.P9252727373245817584

`A033322(n+1)-A112478(n)`
-/

namespace A103137.P9252727373245817584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1) - A112478 n

end

end A103137.P9252727373245817584

namespace A103137

/-- `A033322(n+1)-A112478(n)` -/
def P9252727373245817584.Spec : Prop :=
  ∀ n, P9252727373245817584.a n = A103137 n

end A103137

/-! ## A103137.P11079308022509304129

`A009001(2*n)*A155069(n)`
-/

namespace A103137.P11079308022509304129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A155069 n

end

end A103137.P11079308022509304129

namespace A103137

/-- `A009001(2*n)*A155069(n)` -/
def P11079308022509304129.Spec : Prop :=
  ∀ n, P11079308022509304129.a n = A103137 n

end A103137

/-! ## A103137.P15825864318464600342

`A009531(2*n+1)*A155069(n)`
-/

namespace A103137.P15825864318464600342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A155069 n

end

end A103137.P15825864318464600342

namespace A103137

/-- `A009531(2*n+1)*A155069(n)` -/
def P15825864318464600342.Spec : Prop :=
  ∀ n, P15825864318464600342.a n = A103137 n

end A103137

/-! ## A103137.P5268409789749071085

`A034947(2*n+1)*A155069(n)`
-/

namespace A103137.P5268409789749071085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A155069 n

end

end A103137.P5268409789749071085

namespace A103137

/-- `A034947(2*n+1)*A155069(n)` -/
def P5268409789749071085.Spec : Prop :=
  ∀ n, P5268409789749071085.a n = A103137 n

end A103137

/-! ## A103137.P3364067664897814063

`A010892(A008486(n))*A155069(n)`
-/

namespace A103137.P3364067664897814063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 n).toNat * A155069 n

end

end A103137.P3364067664897814063

namespace A103137

/-- `A010892(A008486(n))*A155069(n)` -/
def P3364067664897814063.Spec : Prop :=
  ∀ n, P3364067664897814063.a n = A103137 n

end A103137

/-! ## A103137.P17822153944226572775

`A081729(A008585(n))*A155069(n)`
-/

namespace A103137.P17822153944226572775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A008585 n).toNat * A155069 n

end

end A103137.P17822153944226572775

namespace A103137

/-- `A081729(A008585(n))*A155069(n)` -/
def P17822153944226572775.Spec : Prop :=
  ∀ n, P17822153944226572775.a n = A103137 n

end A103137

/-! ## A103137.P3131364743020533008

`A085403(n)/A112478(n)*A155069(n)`
-/

namespace A103137.P3131364743020533008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085403 n : ℚ) / (A112478 n : ℚ) * (A155069 n : ℚ)

end

end A103137.P3131364743020533008

namespace A103137

/-- `A085403(n)/A112478(n)*A155069(n)` -/
def P3131364743020533008.Spec : Prop :=
  ∀ n, P3131364743020533008.a n = (A103137 n : ℚ)

end A103137

/-! ## A103137.P13627910981426797880

`A080243(n)/abs(A080243(n))*A155069(n)`
-/

namespace A103137.P13627910981426797880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080243 n : ℚ) / (|A080243 n| : ℚ) * (A155069 n : ℚ)

end

end A103137.P13627910981426797880

namespace A103137

/-- `A080243(n)/abs(A080243(n))*A155069(n)` -/
def P13627910981426797880.Spec : Prop :=
  ∀ n, P13627910981426797880.a n = (A103137 n : ℚ)

end A103137

/-! ## A103137.P7312036412606445178

`A112477(∑[n+1]+1)`
-/

namespace A103137.P7312036412606445178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112477 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A103137.P7312036412606445178

namespace A103137

/-- `A112477(∑[n+1]+1)` -/
def P7312036412606445178.Spec : Prop :=
  ∀ n, P7312036412606445178.a n = A103137 n

end A103137

/-!
# A103138: Second column of inverse of Delannoy triangle.

The programs for A103138, there is no canonical definition to state claims against.
-/

/-! ## A103138.P4252151822810686873

`A062157(n)*A132372(A000124(n))`
-/

namespace A103138.P4252151822810686873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A132372 (A000124 n).toNat

end

end A103138.P4252151822810686873

/-! ## A103138.P2135338422602101629

`A103137(n)-A110271(∑[n])`
-/

namespace A103138.P2135338422602101629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103137 n - A110271 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103138.P2135338422602101629

/-! ## A103138.P10423457545037576370

`Δ[A054726(n)]/A123344(n)`
-/

namespace A103138.P10423457545037576370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054726 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A123344 n : ℚ)

end

end A103138.P10423457545037576370

/-! ## A103138.P12554997161124923562

`Δ[A326290(n)/2^n]/A123344(n)`
-/

namespace A103138.P12554997161124923562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326290 n : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / (A123344 n : ℚ)

end

end A103138.P12554997161124923562

/-!
# A103139: Woolbright sequence: the maximum number of kings on an n X n chessboard such that every single king is attacking a number of other kings that is smaller or equal to the number of empty spaces around it.

The programs for A103139, there is no canonical definition to state claims against.
-/

/-! ## A103139.P15886969033391404330

`∑[A324758(n+1)+A283308(n+5)]`
-/

namespace A103139.P15886969033391404330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (n + 1) + A283308 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103139.P15886969033391404330

/-! ## A103139.P6713791949220485537

`∑[A324849(n+1)+A283308(n+5)]`
-/

namespace A103139.P6713791949220485537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324849 (n + 1) + A283308 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103139.P6713791949220485537

/-! ## A103139.P15062888152418429661

`A342383(A000096(n))+A187950(n+1)`
-/

namespace A103139.P15062888152418429661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (A000096 n).toNat + A187950 (n + 1)

end

end A103139.P15062888152418429661

/-! ## A103139.P15914736111639211854

`A347520(A000096(n))+A060086(n)`
-/

namespace A103139.P15914736111639211854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A000096 n).toNat + A060086 n

end

end A103139.P15914736111639211854

/-! ## A103139.P10211060162070401725

`A347520(A000096(n))+A064045(n)`
-/

namespace A103139.P10211060162070401725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A000096 n).toNat + A064045 n

end

end A103139.P10211060162070401725

/-!
# A103140: Number of 3-noncrossing restricted RNA structures with n vertices.

The programs for A103140, there is no canonical definition to state claims against.
-/

/-! ## A103140.P1962383432586272832

`A054404(A218551(n)+2)`
-/

namespace A103140.P1962383432586272832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A218551 n + 2).toNat

end

end A103140.P1962383432586272832

/-! ## A103140.P6176288474122493989

`ceil(A020722(Δ[3^n])/37)`
-/

namespace A103140.P6176288474122493989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020722 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 37⌉

end

end A103140.P6176288474122493989

/-! ## A103140.P10232453898890783117

`A135304(A148140(n))`
-/

namespace A103140.P10232453898890783117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A148140 n).toNat

end

end A103140.P10232453898890783117

/-! ## A103140.P641419024676021388

`A342517(A025197(n+2))`
-/

namespace A103140.P641419024676021388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (A025197 (n + 2)).toNat

end

end A103140.P641419024676021388

/-!
# A103141: Riordan array (1/(1-x), x*(1 + x + x^2 + x^3)/(1-x)).

The programs for A103141, there is no canonical definition to state claims against.
-/

/-! ## A103141.P2474495146613187575

`A085478(n)-A016389(A060637(n))`
-/

namespace A103141.P2474495146613187575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n - A016389 (A060637 n).toNat

end

end A103141.P2474495146613187575

/-! ## A103141.P13027285351208605967

`A085478(n)-A054907(A155586(n))`
-/

namespace A103141.P13027285351208605967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n - A054907 (A155586 n).toNat

end

end A103141.P13027285351208605967

/-! ## A103141.P17540207070075774916

`A085478(n)-A225099(A084938(n))`
-/

namespace A103141.P17540207070075774916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n - A225099 (A084938 n).toNat

end

end A103141.P17540207070075774916

/-! ## A103141.P17935403201143955541

`A085478(n)-A185044(A141020(n))`
-/

namespace A103141.P17935403201143955541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n - A185044 (A141020 n).toNat

end

end A103141.P17935403201143955541

/-! ## A103141.P7331397005473235957

`A085478(n)-A186734(A186740(n))`
-/

namespace A103141.P7331397005473235957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n - A186734 (A186740 n).toNat

end

end A103141.P7331397005473235957

/-!
# A103142: a(n) = 2*a(n-1) + a(n-2) + a(n-3) + a(n-4), with a(0)=1, a(1)=2, a(3)=5, a(4)=13.

The programs for A103142, the canonical program `A103142.P4207788630229083339` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103142 has offset 0).

The definition of A103142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)+a(n-3)+a(n-4)` (program `A103142.P4207788630229083339`, by `A103142.P4207788630229083339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103142.P4207788630229083339

`2*a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=13`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103142

/-- `2*a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P4207788630229083339.Spec : Prop :=
  ∀ n, (P4207788630229083339.a n : ℤ) = A103142 n

theorem P4207788630229083339.correct : P4207788630229083339.Spec := by
  intro n
  simp only [A103142]

end A103142

/-! ## A103142.P17969063472133691739

`ogf(-1/(-1+2x+x^2+x^3+x^4))`
-/

namespace A103142.P17969063472133691739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -1, -1, -1] n

end

end A103142.P17969063472133691739

namespace A103142

/-- `ogf(-1/(-1+2x+x^2+x^3+x^4))` -/
def P17969063472133691739.Spec : Prop :=
  ∀ n, P17969063472133691739.a n = A103142 n

end A103142

/-! ## A103142.P12305694764662934097

`∑[A190139(n)]`
-/

namespace A103142.P12305694764662934097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103142.P12305694764662934097

namespace A103142

/-- `∑[A190139(n)]` -/
def P12305694764662934097.Spec : Prop :=
  ∀ n, P12305694764662934097.a n = A103142 n

end A103142

/-! ## A103142.P1258601520385618131

`A004525(A023442(2*(n+2))-A000032(2*n+1))`
-/

namespace A103142.P1258601520385618131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A023442 (2 * (n + 2)) - A000032 (2 * n + 1)).toNat

end

end A103142.P1258601520385618131

namespace A103142

/-- `A004525(A023442(2*(n+2))-A000032(2*n+1))` -/
def P1258601520385618131.Spec : Prop :=
  ∀ n, P1258601520385618131.a n = A103142 n

end A103142

/-!
# A103143: a(n) = a(n-1) + a(n-2) + 3*a(n-3), with a(0) = 1, a(1) = 0, a(2) = 1.

The programs for A103143, the canonical program `A103143.P10835030255810402304` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103143 has offset 0).

The definition of A103143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+3*a(n-3)` (program `A103143.P10835030255810402304`, by `A103143.P10835030255810402304.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103143.P10835030255810402304

`a(n-1)+a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103143

/-- `a(n-1)+a(n-2)+3*a(n-3)` -/
def P10835030255810402304.Spec : Prop :=
  ∀ n, (P10835030255810402304.a n : ℤ) = A103143 n

theorem P10835030255810402304.correct : P10835030255810402304.Spec := by
  intro n
  simp only [A103143]

end A103143

/-! ## A103143.P15787666633480441330

`ogf(-x^2/(-1+x+x^2+3x^3))`
-/

namespace A103143.P15787666633480441330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -1, -1, -3] n

end

end A103143.P15787666633480441330

namespace A103143

/-- `ogf(-x^2/(-1+x+x^2+3x^3))` -/
def P15787666633480441330.Spec : Prop :=
  ∀ n, P15787666633480441330.a n = A103143 n

end A103143

/-! ## A103143.P7805453763411613764

`∑[A123102(n)]-A099213(n)`
-/

namespace A103143.P7805453763411613764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099213 n

end

end A103143.P7805453763411613764

namespace A103143

/-- `∑[A123102(n)]-A099213(n)` -/
def P7805453763411613764.Spec : Prop :=
  ∀ n, P7805453763411613764.a n = A103143 n

end A103143

/-! ## A103143.P9531717836682475063

`Δ[A099213(n)/4]`
-/

namespace A103143.P9531717836682475063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099213 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103143.P9531717836682475063

namespace A103143

/-- `Δ[A099213(n)/4]` -/
def P9531717836682475063.Spec : Prop :=
  ∀ n, P9531717836682475063.a n = (A103143 n : ℚ)

end A103143

/-! ## A103143.P13044588057418019382

`(A247594(n)-∑[A099213(n)])/2`
-/

namespace A103143.P13044588057418019382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099213 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A247594 n - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A103143.P13044588057418019382

namespace A103143

/-- `(A247594(n)-∑[A099213(n)])/2` -/
def P13044588057418019382.Spec : Prop :=
  ∀ n, P13044588057418019382.a n = (A103143 n : ℚ)

end A103143

/-! ## A103143.P14314279987524296950

`Δ[(A288260(n+1)/2)%A288260(n)]`
-/

namespace A103143.P14314279987524296950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A288260 (n + 1) : ℚ) / 2)) (A288260 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103143.P14314279987524296950

namespace A103143

/-- `Δ[(A288260(n+1)/2)%A288260(n)]` -/
def P14314279987524296950.Spec : Prop :=
  ∀ n, P14314279987524296950.a n = A103143 n

end A103143

/-!
# A103144: Decimal primes whose decimal representation in hex is also prime.

The programs for A103144, there is no canonical definition to state claims against.
-/

/-! ## A103144.P8706895533664793462

`A057946(A089968(n+1))`
-/

namespace A103144.P8706895533664793462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057946 (A089968 (n + 1)).toNat

end

end A103144.P8706895533664793462

/-! ## A103144.P11043863790787015574

`A000040(lt[A101908(2*n+1), A000079(n)])`
-/

namespace A103144.P11043863790787015574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101908 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103144.P11043863790787015574

/-! ## A103144.P640916333512728950

`A000040(lt[A101908(2*n+1), A007504(n)])`
-/

namespace A103144.P640916333512728950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101908 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103144.P640916333512728950

/-! ## A103144.P5240574930455306124

`A000040(lt[A101908(2*n+1), A045623(n)])`
-/

namespace A103144.P5240574930455306124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101908 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103144.P5240574930455306124

/-! ## A103144.P15828446335803884699

`A000040(lt[A101908(2*n+1), A101881(n)])`
-/

namespace A103144.P15828446335803884699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101908 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103144.P15828446335803884699

/-!
# A103145: a(n) = (1/6)*(n^3 + 21*n^2 + 74*n + 18).

The programs for A103145, the canonical program `A103145.P16075610415504686204` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103145 has offset 0).

The definition of A103145 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/6*(n^3+21*n²+74*n+18)` (program `A103145.P466118878331928061`, by `A103145.P466118878331928061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103145.P5077605762609214132

`(n^3+21*n²+74*n+18)/6`
-/

namespace A103145.P5077605762609214132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 + 21 * n ^ 2 + 74 * n + 18 : ℚ) / 6

end

end A103145.P5077605762609214132

namespace A103145

/-- `(n^3+21*n²+74*n+18)/6` -/
def P5077605762609214132.Spec : Prop :=
  ∀ n, P5077605762609214132.a n = (A103145 n : ℚ)

theorem P5077605762609214132.correct : P5077605762609214132.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A103145, Nat.add_sub_cancel, A103145.P5077605762609214132.a, A103145.P16075610415504686204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A103145, Nat.add_sub_cancel, A103145.P5077605762609214132.a, A103145.P16075610415504686204.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A103145

/-! ## A103145.P466118878331928061

`1/6*(n^3+21*n²+74*n+18)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A103145.P466118878331928061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (n ^ 3 + 21 * n ^ 2 + 74 * n + 18 : ℚ)

end

end A103145.P466118878331928061

namespace A103145

/-- `1/6*(n^3+21*n²+74*n+18)` -/
def P466118878331928061.Spec : Prop :=
  ∀ n, P466118878331928061.a n = (A103145 n : ℚ)

theorem P466118878331928061.correct : P466118878331928061.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A103145, Nat.add_sub_cancel, A103145.P466118878331928061.a, A103145.P16075610415504686204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A103145, Nat.add_sub_cancel, A103145.P466118878331928061.a, A103145.P16075610415504686204.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A103145

/-! ## A103145.P16075610415504686204

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=19, a(2)=43, a(3)=76`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103145

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16075610415504686204.Spec : Prop :=
  ∀ n, P16075610415504686204.a n = A103145 n

theorem P16075610415504686204.correct : P16075610415504686204.Spec := by
  intro n
  simp only [A103145]

end A103145

/-! ## A103145.P4472348381375640627

`abs(2-(A078371(n)+C(n, 3)))`
-/

namespace A103145.P4472348381375640627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A078371 n + (Nat.choose n 3 : ℤ))|

end

end A103145.P4472348381375640627

namespace A103145

/-- `abs(2-(A078371(n)+C(n, 3)))` -/
def P4472348381375640627.Spec : Prop :=
  ∀ n, P4472348381375640627.a n = A103145 n

end A103145

/-! ## A103145.P9154766222780535671

`A394185(n)+A056115(n)`
-/

namespace A103145.P9154766222780535671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394185 n + A056115 n

end

end A103145.P9154766222780535671

namespace A103145

/-- `A394185(n)+A056115(n)` -/
def P9154766222780535671.Spec : Prop :=
  ∀ n, P9154766222780535671.a n = A103145 n

end A103145

/-! ## A103145.P8698010773483473918

`A166830(n+1)+A161532(n)`
-/

namespace A103145.P8698010773483473918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166830 (n + 1) + A161532 n

end

end A103145.P8698010773483473918

namespace A103145

/-- `A166830(n+1)+A161532(n)` -/
def P8698010773483473918.Spec : Prop :=
  ∀ n, P8698010773483473918.a n = A103145 n

end A103145

/-! ## A103145.P18302118559943970203

`A271625(n+1)+A092286(n)`
-/

namespace A103145.P18302118559943970203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271625 (n + 1) + A092286 n

end

end A103145.P18302118559943970203

namespace A103145

/-- `A271625(n+1)+A092286(n)` -/
def P18302118559943970203.Spec : Prop :=
  ∀ n, P18302118559943970203.a n = A103145 n

end A103145

/-! ## A103145.P2459558018583845033

`A238806(n+1)+A140677(n)`
-/

namespace A103145.P2459558018583845033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238806 (n + 1) + A140677 n

end

end A103145.P2459558018583845033

namespace A103145

/-- `A238806(n+1)+A140677(n)` -/
def P2459558018583845033.Spec : Prop :=
  ∀ n, P2459558018583845033.a n = A103145 n

end A103145

/-! ## A103145.P16462122111063393716

`A201975(n+1)-A082108(n)`
-/

namespace A103145.P16462122111063393716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201975 (n + 1) - A082108 n

end

end A103145.P16462122111063393716

namespace A103145

/-- `A201975(n+1)-A082108(n)` -/
def P16462122111063393716.Spec : Prop :=
  ∀ n, P16462122111063393716.a n = A103145 n

end A103145

/-! ## A103145.P8975171822578498346

`A051939(n+6)+A008588(n)`
-/

namespace A103145.P8975171822578498346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051939 (n + 6) + A008588 n

end

end A103145.P8975171822578498346

namespace A103145

/-- `A051939(n+6)+A008588(n)` -/
def P8975171822578498346.Spec : Prop :=
  ∀ n, P8975171822578498346.a n = A103145 n

end A103145

/-! ## A103145.P5488473775348583398

`A180415(n+1)+A166154(n+1)`
-/

namespace A103145.P5488473775348583398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) + A166154 (n + 1)

end

end A103145.P5488473775348583398

namespace A103145

/-- `A180415(n+1)+A166154(n+1)` -/
def P5488473775348583398.Spec : Prop :=
  ∀ n, P5488473775348583398.a n = A103145 n

end A103145

/-! ## A103145.P9616814188919585575

`a(n-1)+A155212(n)+A020742(n)` with `a(0)=3`
-/

namespace A103145.P9616814188919585575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A155212 n + A020742 n)

end

end A103145.P9616814188919585575

namespace A103145

/-- `a(n-1)+A155212(n)+A020742(n)` -/
def P9616814188919585575.Spec : Prop :=
  ∀ n, P9616814188919585575.a n = A103145 n

end A103145

/-! ## A103145.P17695486786045166892

`a(n-1)+A167499(n)+A016885(n)` with `a(0)=3`
-/

namespace A103145.P17695486786045166892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A167499 n + A016885 n)

end

end A103145.P17695486786045166892

namespace A103145

/-- `a(n-1)+A167499(n)+A016885(n)` -/
def P17695486786045166892.Spec : Prop :=
  ∀ n, P17695486786045166892.a n = A103145 n

end A103145

/-! ## A103145.P17065951465960656300

`∑[(A167499(n)+A016885(n))%A023545(n+1)]`
-/

namespace A103145.P17065951465960656300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167499 n + A016885 n) (A023545 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103145.P17065951465960656300

namespace A103145

/-- `∑[(A167499(n)+A016885(n))%A023545(n+1)]` -/
def P17065951465960656300.Spec : Prop :=
  ∀ n, P17065951465960656300.a n = A103145 n

end A103145

/-! ## A103145.P13683137414649117495

`A051936(n+4)+A051937(n+4)+A051936(n+4)`
-/

namespace A103145.P13683137414649117495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051936 (n + 4) + (A051937 (n + 4) + A051936 (n + 4))

end

end A103145.P13683137414649117495

namespace A103145

/-- `A051936(n+4)+A051937(n+4)+A051936(n+4)` -/
def P13683137414649117495.Spec : Prop :=
  ∀ n, P13683137414649117495.a n = A103145 n

end A103145

/-! ## A103145.P16814392388930554991

`A140673(n)+A006503(n+1)`
-/

namespace A103145.P16814392388930554991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 n + A006503 (n + 1)

end

end A103145.P16814392388930554991

namespace A103145

/-- `A140673(n)+A006503(n+1)` -/
def P16814392388930554991.Spec : Prop :=
  ∀ n, P16814392388930554991.a n = A103145 n

end A103145

/-! ## A103145.P18194942003522878923

`∑[A056000(A065475(n+1))-2]`
-/

namespace A103145.P18194942003522878923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 (A065475 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103145.P18194942003522878923

namespace A103145

/-- `∑[A056000(A065475(n+1))-2]` -/
def P18194942003522878923.Spec : Prop :=
  ∀ n, P18194942003522878923.a n = A103145 n

end A103145

/-! ## A103145.P8141936455360091032

`A026057(n+3)-7`
-/

namespace A103145.P8141936455360091032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026057 (n + 3) - 7

end

end A103145.P8141936455360091032

namespace A103145

/-- `A026057(n+3)-7` -/
def P8141936455360091032.Spec : Prop :=
  ∀ n, P8141936455360091032.a n = A103145 n

end A103145

/-! ## A103145.P8814248289388453445

`∑[A046691(A009005(n+1))-8]`
-/

namespace A103145.P8814248289388453445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (A009005 (n + 1)).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103145.P8814248289388453445

namespace A103145

/-- `∑[A046691(A009005(n+1))-8]` -/
def P8814248289388453445.Spec : Prop :=
  ∀ n, P8814248289388453445.a n = A103145 n

end A103145

/-!
# A103146: Primes that can be represented in the form | 2^m +/ - 3^n |.

The programs for A103146, there is no canonical definition to state claims against.
-/

/-! ## A103146.P6993764956567293670

`p?[A014122(n+1)]`
-/

namespace A103146.P6993764956567293670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103146.P6993764956567293670

/-! ## A103146.P2152573100075734481

`filter[A014122(n+2), A010051(#)]`
-/

namespace A103146.P2152573100075734481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A103146.P2152573100075734481

/-! ## A103146.P7184347804282820740

`filter[A014122(n+2), A327861(#)]`
-/

namespace A103146.P7184347804282820740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A103146.P7184347804282820740

/-! ## A103146.P12381375011068749462

`filter[A014122(n+3), A080339(#)]`
-/

namespace A103146.P12381375011068749462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014122 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A103146.P12381375011068749462

/-! ## A103146.P18230426102410158809

`∩[A000040(n+1), A014122(n+1)]`
-/

namespace A103146.P18230426102410158809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103146.P18230426102410158809

/-!
# A103147: Least k such that k+n and k-n are both prime but k-m and k+m are not both prime for any 0 <= m < n.

The programs for A103147, there is no canonical definition to state claims against.
-/

/-! ## A103147.P3333682642152860620

`A107926(n)/2`
-/

namespace A103147.P3333682642152860620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107926 n : ℚ) / 2

end

end A103147.P3333682642152860620

/-! ## A103147.P2672461220483220263

`A155766(n)+n`
-/

namespace A103147.P2672461220483220263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155766 n + (n : ℤ)

end

end A103147.P2672461220483220263

/-! ## A103147.P17571486663168036741

`A155767(n)-n`
-/

namespace A103147.P17571486663168036741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155767 n - (n : ℤ)

end

end A103147.P17571486663168036741

/-! ## A103147.P14229408897090997338

`A005843(n)-(n-A155766(n))`
-/

namespace A103147.P14229408897090997338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A155766 n)

end

end A103147.P14229408897090997338

/-! ## A103147.P2000466536552047101

`A107926(n)-A155766(n)-n`
-/

namespace A103147.P2000466536552047101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107926 n - A155766 n - (n : ℤ)

end

end A103147.P2000466536552047101

/-! ## A103147.P6887418481793442059

`record[A014681(n)]-(n-A155766(n))`
-/

namespace A103147.P6887418481793442059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - A155766 n)

end

end A103147.P6887418481793442059

/-! ## A103147.P933431077081856801

`A014682(A107926(n))`
-/

namespace A103147.P933431077081856801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A107926 n).toNat

end

end A103147.P933431077081856801

/-! ## A103147.P17952300262616419552

`A249122(A107926(n)+1)`
-/

namespace A103147.P17952300262616419552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A107926 n + 1).toNat

end

end A103147.P17952300262616419552

/-! ## A103147.P15460896618612266383

`A001281(A107926(n)+2)-1`
-/

namespace A103147.P15460896618612266383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A107926 n + 2).toNat - 1

end

end A103147.P15460896618612266383

/-! ## A103147.P6066137286863519440

`A001281(2*A107926(n)-A107926(n))`
-/

namespace A103147.P6066137286863519440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A107926 n - A107926 n).toNat

end

end A103147.P6066137286863519440

/-!
# A103148: Numbers n such that 2^n+25229 is prime.

The programs for A103148, there is no canonical definition to state claims against.
-/

/-! ## A103148.P2120586682844655351

`record[A254760(A321648(n+1))-2]`
-/

namespace A103148.P2120586682844655351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254760 (A321648 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103148.P2120586682844655351

/-! ## A103148.P9996475964910707311

`A141213(A058602(n+1))`
-/

namespace A103148.P9996475964910707311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A058602 (n + 1)).toNat

end

end A103148.P9996475964910707311

/-! ## A103148.P10811708020137266169

`A335074(A053184(n+2))`
-/

namespace A103148.P10811708020137266169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335074 (A053184 (n + 2)).toNat

end

end A103148.P10811708020137266169

/-! ## A103148.P9096710909691902897

`∑[A034444(A001672(n))]+2`
-/

namespace A103148.P9096710909691902897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A001672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A103148.P9096710909691902897

/-! ## A103148.P17392954627464370825

`∑[A000005(or(4, A324621(n)))]`
-/

namespace A103148.P17392954627464370825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor 4 (A324621 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103148.P17392954627464370825

/-!
# A103149: a(1)=3, a(n) = A000040(A130972(n)).

The programs for A103149, there is no canonical definition to state claims against.
-/

/-! ## A103149.P18441246872127543155

`or(1, A000040(A130972(n+1)))`
-/

namespace A103149.P18441246872127543155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 (A130972 (n + 1)).toNat)

end

end A103149.P18441246872127543155

/-! ## A103149.P13867890831279739965

`A000040(floor(A130972(n+1)+acot(n)))`
-/

namespace A103149.P13867890831279739965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(A130972 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A103149.P13867890831279739965

/-! ## A103149.P12611515883151941048

`A000040(A130972(n+1)+C(2, n+2))`
-/

namespace A103149.P12611515883151941048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A130972 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A103149.P12611515883151941048

/-! ## A103149.P15858417985546025359

`A006530(3*A000040(A130972(n+1)))`
-/

namespace A103149.P15858417985546025359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * A000040 (A130972 (n + 1)).toNat).toNat

end

end A103149.P15858417985546025359

/-! ## A103149.P10285803040664614996

`A006530(lcm(3, A000040(A130972(n+1))))`
-/

namespace A103149.P10285803040664614996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 3 (A000040 (A130972 (n + 1)).toNat))

end

end A103149.P10285803040664614996

/-! ## A103149.P1477321751273877158

`A000040(A130972(n+1)+A000007(n))`
-/

namespace A103149.P1477321751273877158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A130972 (n + 1) + A000007 n).toNat

end

end A103149.P1477321751273877158

/-! ## A103149.P17168197763828867808

`A000040(A054977(n)*A130972(n+1))`
-/

namespace A103149.P17168197763828867808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A054977 n * A130972 (n + 1)).toNat

end

end A103149.P17168197763828867808

/-! ## A103149.P1432387705109460264

`A000040(A130972(n+1)+A054977(n)-1)`
-/

namespace A103149.P1432387705109460264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A130972 (n + 1) + (A054977 n - 1)).toNat

end

end A103149.P1432387705109460264

/-! ## A103149.P13011682119403239759

`A036987(2*n)+A000040(A130972(n+1))`
-/

namespace A103149.P13011682119403239759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + A000040 (A130972 (n + 1)).toNat

end

end A103149.P13011682119403239759

/-! ## A103149.P4594870600195054443

`A001222(ceil(2/(n+1)))+A000040(A130972(n+1))`
-/

namespace A103149.P4594870600195054443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈2 / (n + 1 : ℚ)⌉.toNat + A000040 (A130972 (n + 1)).toNat

end

end A103149.P4594870600195054443

/-!
# A103150: Record values in A130971.

The programs for A103150, there is no canonical definition to state claims against.
-/

/-! ## A103150.P1524118511537813014

`A130971(A130972(n+1))`
-/

namespace A103150.P1524118511537813014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130971 (A130972 (n + 1)).toNat

end

end A103150.P1524118511537813014

/-! ## A103150.P7281565606341025835

`record[A130971(n+1)]`
-/

namespace A103150.P7281565606341025835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103150.P7281565606341025835

/-! ## A103150.P11232166938117757797

`record[A130971(ϕ²-(ϕ-n))]*char[A028898(n)]`
-/

namespace A103150.P11232166938117757797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130971 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103150.P11232166938117757797

/-! ## A103150.P7733069829185063253

`record[A130971(ϕ²-(ϕ-n))/A000041(C(2, n))]`
-/

namespace A103150.P7733069829185063253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130971 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / (A000041 (Nat.choose 2 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103150.P7733069829185063253

/-! ## A103150.P17694359077320761633

`record[A130971(A020915(n))]-A000035(2*n)`
-/

namespace A103150.P17694359077320761633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130971 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000035 (2 * n)

end

end A103150.P17694359077320761633

/-! ## A103150.P17119397505943573544

`record[A130971(A020915(n))]*A000034(2*n)`
-/

namespace A103150.P17119397505943573544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130971 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000034 (2 * n)

end

end A103150.P17119397505943573544

/-! ## A103150.P9465485001355564330

`record[A130971(A020915(n))]*A266591(2*n)`
-/

namespace A103150.P9465485001355564330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130971 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A266591 (2 * n)

end

end A103150.P9465485001355564330

/-! ## A103150.P8242028296639490177

`(A007318(n)%2)!*record[A130971(A020915(n))]`
-/

namespace A103150.P8242028296639490177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130971 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103150.P8242028296639490177

/-! ## A103150.P16190895082099579942

`record[A130971(A020915(n))]*A005349(((-1)^n)²)`
-/

namespace A103150.P16190895082099579942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130971 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A005349 (((-1) ^ n) ^ 2).toNat

end

end A103150.P16190895082099579942

/-! ## A103150.P11770739896039327606

`p?[record[A130971(ϕ²-(ϕ-n))]]`
-/

namespace A103150.P11770739896039327606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130971 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103150.P11770739896039327606

/-!
# A103151: Number of decompositions of 2n+1 into 2p+q, where p and q are both odd primes (A065091).

The programs for A103151, there is no canonical definition to state claims against.
-/

/-! ## A103151.P701370373252827934

`A007963(n+1)-A102605(n+1)`
-/

namespace A103151.P701370373252827934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007963 (n + 1) - A102605 (n + 1)

end

end A103151.P701370373252827934

/-! ## A103151.P14327461930979859982

`2*A288574(n+1)-A087916(n+1)`
-/

namespace A103151.P14327461930979859982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288574 (n + 1) - A087916 (n + 1)

end

end A103151.P14327461930979859982

/-! ## A103151.P15849733173894455758

`A046927(n+1)-A061358(2*n+1)`
-/

namespace A103151.P15849733173894455758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 (n + 1) - A061358 (2 * n + 1)

end

end A103151.P15849733173894455758

/-! ## A103151.P9635911298849736329

`A046927(n+1)-A117929(2*n+1)`
-/

namespace A103151.P9635911298849736329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 (n + 1) - A117929 (2 * n + 1)

end

end A103151.P9635911298849736329

/-! ## A103151.P17693953008373046586

`A007963(n+1)-A125688(2*n+3)`
-/

namespace A103151.P17693953008373046586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007963 (n + 1) - A125688 (2 * n + 3)

end

end A103151.P17693953008373046586

/-!
# A103153: a(n) is the smallest odd prime p such that 2*n+1 = 2*p + A000040(k) for some k>1, or 0 if no such prime exists.

The programs for A103153, there is no canonical definition to state claims against.
-/

/-! ## A103153.P13229114634727794120

`A020483(A348960(n))%A259153(A011782(n))`
-/

namespace A103153.P13229114634727794120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020483 (A348960 n).toNat) (A259153 (A011782 n).toNat)

end

end A103153.P13229114634727794120

/-!
# A103157: Number of ways to choose 4 distinct points from an (n+1) X (n+1) X (n+1) lattice cube.

The programs for A103157, the canonical program `A103157.P2570444409845672690` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103157 has offset 1).

The definition of A103157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103157.P2570444409845672690

`C((n+2)^3, 4)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103157

/-- `C((n+2)^3, 4)` -/
def P2570444409845672690.Spec : Prop :=
  ∀ n, (P2570444409845672690.a n : ℤ) = A103157 (n + 1)

theorem P2570444409845672690.correct : P2570444409845672690.Spec := by
  intro n
  simp only [A103157, Nat.add_sub_cancel]

end A103157

/-! ## A103157.P8196078576685401496

`lcm(n+2, C((n+2)*(n+2)², 4))`
-/

namespace A103157.P8196078576685401496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (Nat.choose ((n + 2) * (n + 2) ^ 2) 4)

end

end A103157.P8196078576685401496

namespace A103157

/-- `lcm(n+2, C((n+2)*(n+2)², 4))` -/
def P8196078576685401496.Spec : Prop :=
  ∀ n, (P8196078576685401496.a n : ℤ) = A103157 (n + 1)

end A103157

/-! ## A103157.P13173690348419175505

`C((n+2)*record[(n-2)²], 4)*A000034(2*n)`
-/

namespace A103157.P13173690348419175505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 4 : ℤ) * A000034 (2 * n)

end

end A103157.P13173690348419175505

namespace A103157

/-- `C((n+2)*record[(n-2)²], 4)*A000034(2*n)` -/
def P13173690348419175505.Spec : Prop :=
  ∀ n, P13173690348419175505.a n = A103157 (n + 1)

end A103157

/-! ## A103157.P1100660287852326428

`record[C(A118880(n+2), 4)]`
-/

namespace A103157.P1100660287852326428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A118880 (n + 2)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103157.P1100660287852326428

namespace A103157

/-- `record[C(A118880(n+2), 4)]` -/
def P1100660287852326428.Spec : Prop :=
  ∀ n, (P1100660287852326428.a n : ℤ) = A103157 (n + 1)

end A103157

/-! ## A103157.P3458691358433279871

`record[C(A259603(n+1), 4)]`
-/

namespace A103157.P3458691358433279871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A259603 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103157.P3458691358433279871

namespace A103157

/-- `record[C(A259603(n+1), 4)]` -/
def P3458691358433279871.Spec : Prop :=
  ∀ n, (P3458691358433279871.a n : ℤ) = A103157 (n + 1)

end A103157

/-!
# A103158: (1/2)*number of regular tetrahedra that can be formed using the points in an (n+1) X (n+1) X (n+1) lattice cube.

The programs for A103158, there is no canonical definition to state claims against.
-/

/-! ## A103158.P8841881948112080788

`A092364(n+1)+A000120(A004188(3*n+1))`
-/

namespace A103158.P8841881948112080788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092364 (n + 1) + A000120 (A004188 (3 * n + 1)).toNat

end

end A103158.P8841881948112080788

/-!
# A103159: a(n) = GCD(reverse(n), reversed(n+1)).

The programs for A103159, there is no canonical definition to state claims against.
-/

/-! ## A103159.P7578662532786806295

`gcd(A004086(n+1), A004086(n+2))`
-/

namespace A103159.P7578662532786806295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004086 (n + 1)) (A004086 (n + 2))

end

end A103159.P7578662532786806295

/-! ## A103159.P10449796447735425067

`gcd(Δ[A135020(2*(n+1))], A135020(2*(n+1)))`
-/

namespace A103159.P10449796447735425067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A135020 (2 * (n + 1)))

end

end A103159.P10449796447735425067

/-! ## A103159.P2792279256956484694

`gcd(A135020(2*(n+1)), A135020(A103517(n+1)))`
-/

namespace A103159.P2792279256956484694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135020 (2 * (n + 1))) (A135020 (A103517 (n + 1)).toNat)

end

end A103159.P2792279256956484694

/-! ## A103159.P10488821998714087385

`gcd(dr(A087121(n+1)), A086862(n+1))`
-/

namespace A103159.P10488821998714087385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.digitalRoot (A087121 (n + 1)) : ℤ) (A086862 (n + 1))

end

end A103159.P10488821998714087385

/-! ## A103159.P12579457754027410226

`gcd(A028310(A056525(n+1)), A056525(n+2))`
-/

namespace A103159.P12579457754027410226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A056525 (n + 1)).toNat) (A056525 (n + 2))

end

end A103159.P12579457754027410226

/-! ## A103159.P1873098159233725335

`gcd(A020485(A056525(n+1)), A082216(n+2))`
-/

namespace A103159.P1873098159233725335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020485 (A056525 (n + 1)).toNat) (A082216 (n + 2))

end

end A103159.P1873098159233725335

/-! ## A103159.P15005604820572577695

`gcd(A004093(A008587(n+1)), A347400(n+2))`
-/

namespace A103159.P15005604820572577695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004093 (A008587 (n + 1)).toNat) (A347400 (n + 2))

end

end A103159.P15005604820572577695

/-!
# A103160: a(n) = GCD(reverse(n!), reverse((n+1)!)).

The programs for A103160, there is no canonical definition to state claims against.
-/

/-! ## A103160.P10042921015796842936

`gcd(A004153(n+1), A004153(n+2))`
-/

namespace A103160.P10042921015796842936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004153 (n + 1)) (A004153 (n + 2))

end

end A103160.P10042921015796842936

/-!
# A103161: GCD of reverse(2^n) and reverse(2^(n+1)), where reverse(k) = A004086(k), the decimal representation of k read backwards.

The programs for A103161, there is no canonical definition to state claims against.
-/

/-! ## A103161.P7812459470349292343

`gcd(A004094(n+1), A004094(n+2))`
-/

namespace A103161.P7812459470349292343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004094 (n + 1)) (A004094 (n + 2))

end

end A103161.P7812459470349292343

/-! ## A103161.P15337411857258240154

`gcd(A341718(n+1)+1, Δ[A341718(n+1)])`
-/

namespace A103161.P15337411857258240154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341718 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A103161.P15337411857258240154

/-! ## A103161.P5985768446330796760

`C(A004094(n+1), A145006(A154293(n+1)))`
-/

namespace A103161.P5985768446330796760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004094 (n + 1)).toNat (A145006 (A154293 (n + 1)).toNat).toNat

end

end A103161.P5985768446330796760

/-!
# A103162: GCD of reverse(3^n) and reverse(3^(n+1)).

The programs for A103162, there is no canonical definition to state claims against.
-/

/-! ## A103162.P8612157092234354552

`gcd(A004167(n+1), A004167(n+2))`
-/

namespace A103162.P8612157092234354552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004167 (n + 1)) (A004167 (n + 2))

end

end A103162.P8612157092234354552

/-!
# A103163: a(n) = gcd(reverse(prime(n)), reverse(prime(n+1))).

The programs for A103163, there is no canonical definition to state claims against.
-/

/-! ## A103163.P2814492182202756882

`gcd(A004087(n+2), A004087(n+1))`
-/

namespace A103163.P2814492182202756882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004087 (n + 2)) (A004087 (n + 1))

end

end A103163.P2814492182202756882

/-!
# A103164: Integers but with the primes squared.

The programs for A103164, the canonical program `A103164.P6788878018473161368` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103164 has offset 0).

The definition of A103164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103164.P7623859904960796589

`n^C(2, ∑{e}[n, #])!`
-/

namespace A103164.P7623859904960796589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A103164.P7623859904960796589

namespace A103164

/-- `n^C(2, ∑{e}[n, #])!` -/
def P7623859904960796589.Spec : Prop :=
  ∀ n, (P7623859904960796589.a n : ℤ) = A103164 n

end A103164

/-! ## A103164.P10374323509919340554

`n^∏{p}[n, ceil(#/(n-1))]`
-/

namespace A103164.P10374323509919340554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), ⌈(p : ℚ) / ((n : ℤ) - 1 : ℚ)⌉ : ℤ)

end

end A103164.P10374323509919340554

namespace A103164

/-- `n^∏{p}[n, ceil(#/(n-1))]` -/
def P10374323509919340554.Spec : Prop :=
  ∀ n, P10374323509919340554.a n = (A103164 n : ℚ)

end A103164

/-! ## A103164.P5387252149833298217

`sqrt(n*A282462(n))`
-/

namespace A103164.P5387252149833298217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n : ℤ) * A282462 n : ℝ)

end

end A103164.P5387252149833298217

namespace A103164

/-- `sqrt(n*A282462(n))` -/
def P5387252149833298217.Spec : Prop :=
  ∀ n, P5387252149833298217.a n = (A103164 n : ℝ)

end A103164

/-! ## A103164.P15100582032183290610

`n*gcd(n, A007918(n))`
-/

namespace A103164.P15100582032183290610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (n : ℤ) (A007918 n)

end

end A103164.P15100582032183290610

namespace A103164

/-- `n*gcd(n, A007918(n))` -/
def P15100582032183290610.Spec : Prop :=
  ∀ n, (P15100582032183290610.a n : ℤ) = A103164 n

end A103164

/-! ## A103164.P13986696730297747516

`n^(char[A151800(n)]+1)`
-/

namespace A103164.P13986696730297747516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A103164.P13986696730297747516

namespace A103164

/-- `n^(char[A151800(n)]+1)` -/
def P13986696730297747516.Spec : Prop :=
  ∀ n, (P13986696730297747516.a n : ℤ) = A103164 n

end A103164

/-! ## A103164.P3859191330905065264

`n^(n+1-A113638(n))`
-/

namespace A103164.P3859191330905065264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n + 1 : ℤ) - A113638 n : ℤ)

end

end A103164.P3859191330905065264

namespace A103164

/-- `n^(n+1-A113638(n))` -/
def P3859191330905065264.Spec : Prop :=
  ∀ n, P3859191330905065264.a n = (A103164 n : ℚ)

end A103164

/-! ## A103164.P3389338513091656778

`n*A089026(abs(1-n)+1)`
-/

namespace A103164.P3389338513091656778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A089026 (|1 - (n : ℤ)| + 1).toNat

end

end A103164.P3389338513091656778

namespace A103164

/-- `n*A089026(abs(1-n)+1)` -/
def P3389338513091656778.Spec : Prop :=
  ∀ n, P3389338513091656778.a n = A103164 n

end A103164

/-! ## A103164.P6788878018473161368

`∑[2*n]-A103390(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103164

/-- `∑[2*n]-A103390(n+1)` -/
def P6788878018473161368.Spec : Prop :=
  ∀ n, P6788878018473161368.a n = A103164 n

theorem P6788878018473161368.correct : P6788878018473161368.Spec := by
  intro n
  simp only [A103164]

end A103164

/-! ## A103164.P31202332396187773

`n^(char[A000040(n+1)]+1)`
-/

namespace A103164.P31202332396187773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A103164.P31202332396187773

namespace A103164

/-- `n^(char[A000040(n+1)]+1)` -/
def P31202332396187773.Spec : Prop :=
  ∀ n, (P31202332396187773.a n : ℤ) = A103164 n

end A103164

/-! ## A103164.P1033908267359616180

`n^(char[A006530(n+1)]+1)`
-/

namespace A103164.P1033908267359616180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A103164.P1033908267359616180

namespace A103164

/-- `n^(char[A006530(n+1)]+1)` -/
def P1033908267359616180.Spec : Prop :=
  ∀ n, (P1033908267359616180.a n : ℤ) = A103164 n

end A103164

/-! ## A103164.P11368881756457860052

`n^(char[A008578(n+1)]+1)`
-/

namespace A103164.P11368881756457860052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A103164.P11368881756457860052

namespace A103164

/-- `n^(char[A008578(n+1)]+1)` -/
def P11368881756457860052.Spec : Prop :=
  ∀ n, (P11368881756457860052.a n : ℤ) = A103164 n

end A103164

/-! ## A103164.P6348965232061969007

`n^(char[A014963(n+1)]+1)`
-/

namespace A103164.P6348965232061969007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A103164.P6348965232061969007

namespace A103164

/-- `n^(char[A014963(n+1)]+1)` -/
def P6348965232061969007.Spec : Prop :=
  ∀ n, (P6348965232061969007.a n : ℤ) = A103164 n

end A103164

/-! ## A103164.P16981326518081400526

`n^(char[A020639(n+1)]+1)`
-/

namespace A103164.P16981326518081400526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A103164.P16981326518081400526

namespace A103164

/-- `n^(char[A020639(n+1)]+1)` -/
def P16981326518081400526.Spec : Prop :=
  ∀ n, (P16981326518081400526.a n : ℤ) = A103164 n

end A103164

/-! ## A103164.P17276768905047707832

`n^(char[A158611(n+1)]+1)`
-/

namespace A103164.P17276768905047707832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A103164.P17276768905047707832

namespace A103164

/-- `n^(char[A158611(n+1)]+1)` -/
def P17276768905047707832.Spec : Prop :=
  ∀ n, (P17276768905047707832.a n : ℤ) = A103164 n

end A103164

/-! ## A103164.P5179464127969294969

`n^(2-char[A018252(n+1)])`
-/

namespace A103164.P5179464127969294969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A103164.P5179464127969294969

namespace A103164

/-- `n^(2-char[A018252(n+1)])` -/
def P5179464127969294969.Spec : Prop :=
  ∀ n, P5179464127969294969.a n = (A103164 n : ℚ)

end A103164

/-! ## A103164.P6794031940198024697

`lcm(n, A014963(C(2, n+2)+n)²)`
-/

namespace A103164.P6794031940198024697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A014963 (Nat.choose 2 (n + 2) + n) ^ 2)

end

end A103164.P6794031940198024697

namespace A103164

/-- `lcm(n, A014963(C(2, n+2)+n)²)` -/
def P6794031940198024697.Spec : Prop :=
  ∀ n, (P6794031940198024697.a n : ℤ) = A103164 n

end A103164

/-! ## A103164.P5087437103401172771

`n^(char[eq[2, A303809(n+1)]+1]+1)`
-/

namespace A103164.P5087437103401172771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303809 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A103164.P5087437103401172771

namespace A103164

/-- `n^(char[eq[2, A303809(n+1)]+1]+1)` -/
def P5087437103401172771.Spec : Prop :=
  ∀ n, (P5087437103401172771.a n : ℤ) = A103164 n

end A103164

/-! ## A103164.P11072869156924598434

`gcd(A000290(n), A282462(n))`
-/

namespace A103164.P11072869156924598434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 n) (A282462 n)

end

end A103164.P11072869156924598434

namespace A103164

/-- `gcd(A000290(n), A282462(n))` -/
def P11072869156924598434.Spec : Prop :=
  ∀ n, (P11072869156924598434.a n : ℤ) = A103164 n

end A103164

/-! ## A103164.P11302246170935470483

`n*(A097141(A055672(n))+1)`
-/

namespace A103164.P11302246170935470483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A097141 (A055672 n).toNat + 1)

end

end A103164.P11302246170935470483

namespace A103164

/-- `n*(A097141(A055672(n))+1)` -/
def P11302246170935470483.Spec : Prop :=
  ∀ n, P11302246170935470483.a n = A103164 n

end A103164

/-! ## A103164.P8770881694470838953

`xor(A103390(n+1), A169810(n))`
-/

namespace A103164.P8770881694470838953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103390 (n + 1)) (A169810 n)

end

end A103164.P8770881694470838953

namespace A103164

/-- `xor(A103390(n+1), A169810(n))` -/
def P8770881694470838953.Spec : Prop :=
  ∀ n, P8770881694470838953.a n = A103164 n

end A103164

/-!
# A103166: a(n) = reverse(2^n) mod 2^n.

The programs for A103166, there is no canonical definition to state claims against.
-/

/-! ## A103166.P10781432511655847949

`A103168(2^(n+1))`
-/

namespace A103166.P10781432511655847949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (2 ^ (n + 1))

end

end A103166.P10781432511655847949

/-! ## A103166.P14002723664384055888

`and(A004094(n+1), A126646(n))`
-/

namespace A103166.P14002723664384055888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004094 (n + 1)) (A126646 n)

end

end A103166.P14002723664384055888

/-! ## A103166.P5000931535737164544

`and(∑[A000079(n)], A004094(n+1))`
-/

namespace A103166.P5000931535737164544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A004094 (n + 1))

end

end A103166.P5000931535737164544

/-! ## A103166.P856443593308019333

`and(record[A094024(n)], A004094(n+1))`
-/

namespace A103166.P856443593308019333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A004094 (n + 1))

end

end A103166.P856443593308019333

/-! ## A103166.P16678453128205321635

`A004094(n+1)%A000079(n+1)`
-/

namespace A103166.P16678453128205321635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004094 (n + 1)) (A000079 (n + 1))

end

end A103166.P16678453128205321635

/-! ## A103166.P6599980477474627133

`and(A004094(n+1), A094024(2*n+1))`
-/

namespace A103166.P6599980477474627133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004094 (n + 1)) (A094024 (2 * n + 1))

end

end A103166.P6599980477474627133

/-! ## A103166.P16357746159861972666

`A004094(n+1)%Δ[A048578(n)]`
-/

namespace A103166.P16357746159861972666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004094 (n + 1)) (f1 (n + 1) - f1 n)

end

end A103166.P16357746159861972666

/-!
# A103167: a(n) = 2^n mod reverse(2^n).

The programs for A103167, there is no canonical definition to state claims against.
-/

/-! ## A103167.P13693466461050787513

`record[A135530(n)]%A004094(n+1)`
-/

namespace A103167.P13693466461050787513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A004094 (n + 1))

end

end A103167.P13693466461050787513

/-! ## A103167.P9477358791421805345

`A000079(n+1)%A004094(n+1)`
-/

namespace A103167.P9477358791421805345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 1)) (A004094 (n + 1))

end

end A103167.P9477358791421805345

/-! ## A103167.P14152452437637222621

`Δ[A048578(n)]%A004094(n+1)`
-/

namespace A103167.P14152452437637222621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A004094 (n + 1))

end

end A103167.P14152452437637222621

/-! ## A103167.P129796795391959253

`Δ[A126646(n)]%A004094(n+1)`
-/

namespace A103167.P129796795391959253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A004094 (n + 1))

end

end A103167.P129796795391959253

/-! ## A103167.P6644127130936103719

`A188843(A000124(n))%A004094(n+1)`
-/

namespace A103167.P6644127130936103719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188843 (A000124 n).toNat) (A004094 (n + 1))

end

end A103167.P6644127130936103719

/-!
# A103168: a(n) is the remainder when (n written backwards) is divided by n.

The programs for A103168, there is no canonical definition to state claims against.
-/

/-! ## A103168.P4410339065449425944

`A004086(n+1)%(n+1)`
-/

namespace A103168.P4410339065449425944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (n + 1)) (n + 1 : ℤ)

end

end A103168.P4410339065449425944

/-! ## A103168.P14046957930209610052

`A056524(n+1)%(n+1)`
-/

namespace A103168.P14046957930209610052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056524 (n + 1)) (n + 1 : ℤ)

end

end A103168.P14046957930209610052

/-! ## A103168.P3763692943477407791

`A056964(n+1)%(n+1)`
-/

namespace A103168.P3763692943477407791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 (n + 1)) (n + 1 : ℤ)

end

end A103168.P3763692943477407791

/-! ## A103168.P3435901980191760329

`(1-A056965(n+1)+n)%(n+1)`
-/

namespace A103168.P3435901980191760329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A056965 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A103168.P3435901980191760329

/-! ## A103168.P15915067015290647385

`A160929(n+2)%(n+1)`
-/

namespace A103168.P15915067015290647385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160929 (n + 2)) (n + 1 : ℤ)

end

end A103168.P15915067015290647385

/-! ## A103168.P16274981530326614445

`A135020(2*(n+1))%(n+1)`
-/

namespace A103168.P16274981530326614445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135020 (2 * (n + 1))) (n + 1 : ℤ)

end

end A103168.P16274981530326614445

/-!
# A103171: Start of nine consecutive primes whose digit reversals are also prime.

The programs for A103171, there is no canonical definition to state claims against.
-/

/-! ## A103171.P9260204814986818254

`A103170(A103061(n+1)+2)`
-/

namespace A103171.P9260204814986818254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103170 (A103061 (n + 1) + 2).toNat

end

end A103171.P9260204814986818254

/-!
# A103172: Start of ten consecutive primes whose digit reversals are also prime.

The programs for A103172, there is no canonical definition to state claims against.
-/

/-! ## A103172.P7828283886755172849

`A103171(A033188(n+1)+A027897(n+1))`
-/

namespace A103172.P7828283886755172849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103171 (A033188 (n + 1) + A027897 (n + 1)).toNat

end

end A103172.P7828283886755172849

/-!
# A103175: A001787 written in base 2.

The programs for A103175, there is no canonical definition to state claims against.
-/

/-! ## A103175.P8393094309265317980

`A007088(n)/10*10^n`
-/

namespace A103175.P8393094309265317980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 n : ℚ) / 10 * (10 ^ n : ℚ)

end

end A103175.P8393094309265317980

/-! ## A103175.P1404430771564601929

`A007088(n)*A178501(n)`
-/

namespace A103175.P1404430771564601929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n * A178501 n

end

end A103175.P1404430771564601929

/-! ## A103175.P4226401875337659444

`record[A182979(n+1)]*A007088(n)`
-/

namespace A103175.P4226401875337659444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A007088 n

end

end A103175.P4226401875337659444

/-! ## A103175.P4870645949938819187

`A007088(n)*A286507(abs(1-2*n))`
-/

namespace A103175.P4870645949938819187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n * A286507 |1 - (2 * n : ℤ)|.toNat

end

end A103175.P4870645949938819187

/-! ## A103175.P7999108684185057329

`A204093(n)/6*record[A054841(n+1)]`
-/

namespace A103175.P7999108684185057329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 n : ℚ) / 6 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A103175.P7999108684185057329

/-! ## A103175.P8978558898529452320

`(A228071(n)+n)*record[A054841(n+1)]`
-/

namespace A103175.P8978558898529452320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A228071 n + (n : ℤ)) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103175.P8978558898529452320

/-!
# A103176: Let p = prime(sigma(n)) and q = prime(phi(n)), then p is in the sequence if p-q = 6.

The programs for A103176, there is no canonical definition to state claims against.
-/

/-! ## A103176.P16724438304734341160

`∩[A072677(n+1), A098415(n+1)]`
-/

namespace A103176.P16724438304734341160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103176.P16724438304734341160

/-! ## A103176.P2575693466026425639

`p?[A175220(A006093(n+1))-1]`
-/

namespace A103176.P2575693466026425639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175220 (A006093 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103176.P2575693466026425639

/-! ## A103176.P16911066088441898796

`p?[A175220(A000040(n+1)-1)-1]`
-/

namespace A103176.P16911066088441898796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175220 (A000040 (n + 1) - 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103176.P16911066088441898796

/-! ## A103176.P13958350202078901903

`p?[A175220(record[A014963(n+2)]-1)-1]`
-/

namespace A103176.P13958350202078901903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175220 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103176.P13958350202078901903

/-! ## A103176.P6948070771462997711

`A065091(p?[A000720(A098414(n+1))])`
-/

namespace A103176.P6948070771462997711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A098414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103176.P6948070771462997711

/-! ## A103176.P17372210347898923283

`∩[A000040(A000040(n+1)+1), A098415(n+1)]`
-/

namespace A103176.P17372210347898923283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103176.P17372210347898923283

/-!
# A103177: a(n) = (7*3^n + 2n + 5)/4.

The programs for A103177, the canonical program `A103177.P11141601484557505012` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103177 has offset 0).

The definition of A103177 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*3^n+2*n+5)/4` (program `A103177.P10393528435455507006`, by `A103177.P10393528435455507006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103177.P10810679802992553972

`2*A007051(n)+A047926(n)`
-/

namespace A103177.P10810679802992553972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007051 n + A047926 n

end

end A103177.P10810679802992553972

namespace A103177

/-- `2*A007051(n)+A047926(n)` -/
def P10810679802992553972.Spec : Prop :=
  ∀ n, P10810679802992553972.a n = A103177 n

end A103177

/-! ## A103177.P11141601484557505012

`5*a(n-1)-7*a(n-2)+3*a(n-3)` with `a(0)=3, a(1)=7, a(2)=18`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103177

/-- `5*a(n-1)-7*a(n-2)+3*a(n-3)` -/
def P11141601484557505012.Spec : Prop :=
  ∀ n, P11141601484557505012.a n = A103177 n

theorem P11141601484557505012.correct : P11141601484557505012.Spec := by
  intro n
  simp only [A103177]

end A103177

/-! ## A103177.P10393528435455507006

`(7*3^n+2*n+5)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A103177.P10393528435455507006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * 3 ^ n + 2 * n + 5 : ℚ) / 4

end

end A103177.P10393528435455507006

namespace A103177

/-- `(7*3^n+2*n+5)/4` -/
def P10393528435455507006.Spec : Prop :=
  ∀ n, P10393528435455507006.a n = (A103177 n : ℚ)

theorem P10393528435455507006.correct : P10393528435455507006.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A103177, Nat.add_sub_cancel, A103177.P10393528435455507006.a, A103177.P11141601484557505012.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A103177, Nat.add_sub_cancel, A103177.P10393528435455507006.a, A103177.P11141601484557505012.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A103177

/-! ## A103177.P11675699976254614849

`∑[ogf((3-8x+4x^2)/(1-4x+3x^2))]`
-/

namespace A103177.P11675699976254614849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 4] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103177.P11675699976254614849

namespace A103177

/-- `∑[ogf((3-8x+4x^2)/(1-4x+3x^2))]` -/
def P11675699976254614849.Spec : Prop :=
  ∀ n, P11675699976254614849.a n = A103177 n

end A103177

/-! ## A103177.P14015947204485157156

`ogf((3-8x+4x^2)/(1-5x+7x^2-3x^3))`
-/

namespace A103177.P14015947204485157156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 4] [1, -5, 7, -3] n

end

end A103177.P14015947204485157156

namespace A103177

/-- `ogf((3-8x+4x^2)/(1-5x+7x^2-3x^3))` -/
def P14015947204485157156.Spec : Prop :=
  ∀ n, P14015947204485157156.a n = A103177 n

end A103177

/-! ## A103177.P3787488723296218258

`∑[3*a(n-1)-1]` with `a(0)=3, a(1)=4`
-/

namespace A103177.P3787488723296218258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  3 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103177.P3787488723296218258

namespace A103177

/-- `∑[3*a(n-1)-1]` -/
def P3787488723296218258.Spec : Prop :=
  ∀ n, P3787488723296218258.a n = A103177 n

end A103177

/-! ## A103177.P18011017253184892494

`∑[lcm(3, a(n-1))-1]` with `a(0)=3, a(1)=4`
-/

namespace A103177.P18011017253184892494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  (Int.lcm 3 (f1 (n - 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103177.P18011017253184892494

namespace A103177

/-- `∑[lcm(3, a(n-1))-1]` -/
def P18011017253184892494.Spec : Prop :=
  ∀ n, P18011017253184892494.a n = A103177 n

end A103177

/-! ## A103177.P12320432391592304065

`3*a(n-1)-(n+1)` with `a(0)=3`
-/

namespace A103177.P12320432391592304065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) - (n + 1 : ℤ)

end

end A103177.P12320432391592304065

namespace A103177

/-- `3*a(n-1)-(n+1)` -/
def P12320432391592304065.Spec : Prop :=
  ∀ n, P12320432391592304065.a n = A103177 n

end A103177

/-! ## A103177.P8552660527971791748

`3*a(n-1)-1-n` with `a(0)=3`
-/

namespace A103177.P8552660527971791748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) - 1 - (n : ℤ)

end

end A103177.P8552660527971791748

namespace A103177

/-- `3*a(n-1)-1-n` -/
def P8552660527971791748.Spec : Prop :=
  ∀ n, P8552660527971791748.a n = A103177 n

end A103177

/-! ## A103177.P17263052955916675744

`∑[a(n-1)/cot(atan(3))-1]` with `a(0)=3, a(1)=4`
-/

namespace A103177.P17263052955916675744
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) / Real.cot (Real.arctan (3 : ℝ)) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103177.P17263052955916675744

namespace A103177

/-- `∑[a(n-1)/cot(atan(3))-1]` -/
def P17263052955916675744.Spec : Prop :=
  ∀ n, P17263052955916675744.a n = (A103177 n : ℝ)

end A103177

/-! ## A103177.P5199437787863908226

`a(n-1)/cot(atan(3))-(n+1)` with `a(0)=3`
-/

namespace A103177.P5199437787863908226
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ)) - (n + 1 : ℝ)

end

end A103177.P5199437787863908226

namespace A103177

/-- `a(n-1)/cot(atan(3))-(n+1)` -/
def P5199437787863908226.Spec : Prop :=
  ∀ n, P5199437787863908226.a n = (A103177 n : ℝ)

end A103177

/-! ## A103177.P14415814185977774230

`a(n-1)/sqrt(1/9)-(n+1)` with `a(0)=3`
-/

namespace A103177.P14415814185977774230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ) - (n + 1 : ℝ)

end

end A103177.P14415814185977774230

namespace A103177

/-- `a(n-1)/sqrt(1/9)-(n+1)` -/
def P14415814185977774230.Spec : Prop :=
  ∀ n, P14415814185977774230.a n = (A103177 n : ℝ)

end A103177

/-! ## A103177.P9254109313163318648

`∑[a(n-1)+a(n-1)+a(n-1)-1]` with `a(0)=3, a(1)=4`
-/

namespace A103177.P9254109313163318648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103177.P9254109313163318648

namespace A103177

/-- `∑[a(n-1)+a(n-1)+a(n-1)-1]` -/
def P9254109313163318648.Spec : Prop :=
  ∀ n, P9254109313163318648.a n = A103177 n

end A103177

/-! ## A103177.P13760872055696951997

`∑[a(n-1)-(1-a(n-1)-a(n-1))]` with `a(0)=3, a(1)=4`
-/

namespace A103177.P13760872055696951997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103177.P13760872055696951997

namespace A103177

/-- `∑[a(n-1)-(1-a(n-1)-a(n-1))]` -/
def P13760872055696951997.Spec : Prop :=
  ∀ n, P13760872055696951997.a n = A103177 n

end A103177

/-! ## A103177.P4581059833295819979

`a(n-1)+a(n-1)+a(n-1)-(n+1)` with `a(0)=3`
-/

namespace A103177.P4581059833295819979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - (n + 1 : ℤ)))

end

end A103177.P4581059833295819979

namespace A103177

/-- `a(n-1)+a(n-1)+a(n-1)-(n+1)` -/
def P4581059833295819979.Spec : Prop :=
  ∀ n, P4581059833295819979.a n = A103177 n

end A103177

/-! ## A103177.P18077262723873688423

`a(n-1)-(1-(a(n-1)-(n-a(n-1))))` with `a(0)=3`
-/

namespace A103177.P18077262723873688423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (1 - (a (n - 1) - ((n : ℤ) - a (n - 1))))

end

end A103177.P18077262723873688423

namespace A103177

/-- `a(n-1)-(1-(a(n-1)-(n-a(n-1))))` -/
def P18077262723873688423.Spec : Prop :=
  ∀ n, P18077262723873688423.a n = A103177 n

end A103177

/-! ## A103177.P15114965414779477411

`A108765(n)+2+n`
-/

namespace A103177.P15114965414779477411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108765 n + 2 + (n : ℤ)

end

end A103177.P15114965414779477411

namespace A103177

/-- `A108765(n)+2+n` -/
def P15114965414779477411.Spec : Prop :=
  ∀ n, P15114965414779477411.a n = A103177 n

end A103177

/-! ## A103177.P5394316815414786923

`A164039(n+1)+3^n`
-/

namespace A103177.P5394316815414786923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164039 (n + 1) + (3 ^ n : ℤ)

end

end A103177.P5394316815414786923

namespace A103177

/-- `A164039(n+1)+3^n` -/
def P5394316815414786923.Spec : Prop :=
  ∀ n, P5394316815414786923.a n = A103177 n

end A103177

/-! ## A103177.P17607368194111489314

`A047926(n)+A034472(n)`
-/

namespace A103177.P17607368194111489314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047926 n + A034472 n

end

end A103177.P17607368194111489314

namespace A103177

/-- `A047926(n)+A034472(n)` -/
def P17607368194111489314.Spec : Prop :=
  ∀ n, P17607368194111489314.a n = A103177 n

end A103177

/-! ## A103177.P6961427583829855887

`A263622(n)+A001550(n)`
-/

namespace A103177.P6961427583829855887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263622 n + A001550 n

end

end A103177.P6961427583829855887

namespace A103177

/-- `A263622(n)+A001550(n)` -/
def P6961427583829855887.Spec : Prop :=
  ∀ n, P6961427583829855887.a n = A103177 n

end A103177

/-!
# A103178: Number of divisors of the decimal concatenation of the first n primes.

The programs for A103178, there is no canonical definition to state claims against.
-/

/-! ## A103178.P10100939130024633126

`A277561(A288414(n))`
-/

namespace A103178.P10100939130024633126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 (A288414 n).toNat

end

end A103178.P10100939130024633126

/-! ## A103178.P4245997202135553849

`A366438(A203176(n+1))`
-/

namespace A103178.P4245997202135553849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366438 (A203176 (n + 1)).toNat

end

end A103178.P4245997202135553849

/-! ## A103178.P1252128071757308291

`A277561(A211795(n)+6)`
-/

namespace A103178.P1252128071757308291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 (A211795 n + 6).toNat

end

end A103178.P1252128071757308291

/-! ## A103178.P647363732539861467

`A001316(p?[A191530(n)]²)`
-/

namespace A103178.P647363732539861467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A103178.P647363732539861467

/-! ## A103178.P4048249387688929032

`A139560(A007693(n+1)+1)`
-/

namespace A103178.P4048249387688929032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139560 (A007693 (n + 1) + 1).toNat

end

end A103178.P4048249387688929032

/-!
# A103179: Row sums of A102416.

The programs for A103179, there is no canonical definition to state claims against.
-/

/-! ## A103179.P15060722412754527254

`xor(A115991(n), A172240(ceil(2^(n-1))))`
-/

namespace A103179.P15060722412754527254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A115991 n) (A172240 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A103179.P15060722412754527254

/-! ## A103179.P15659899244037659514

`A146861(n+5)+A146829(A146869(n+1))`
-/

namespace A103179.P15659899244037659514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146861 (n + 5) + A146829 (A146869 (n + 1)).toNat

end

end A103179.P15659899244037659514

/-! ## A103179.P1260221726998194490

`A351415(A000219(n))-A000120(3*(n+1))`
-/

namespace A103179.P1260221726998194490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351415 (A000219 n).toNat - A000120 (3 * (n + 1))

end

end A103179.P1260221726998194490

/-!
# A103180: Floor(2(1-cos(2n))), a bisection of A103120.

The programs for A103180, the canonical program `A103180.P970087919518997459` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103180 has offset 1).

The definition of A103180 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*(1-cos(2*(n+1))))` (program `A103180.P970087919518997459`, by `A103180.P970087919518997459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103180.P970087919518997459

`floor(2*(1-cos(2*(n+1))))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103180

/-- `floor(2*(1-cos(2*(n+1))))` -/
def P970087919518997459.Spec : Prop :=
  ∀ n, P970087919518997459.a n = A103180 (n + 1)

theorem P970087919518997459.correct : P970087919518997459.Spec := by
  intro n
  simp only [A103180, Nat.add_sub_cancel]

end A103180

/-!
# A103181: In decimal representation of n: replace all even digits with 0 and all odd digits with 1.

The programs for A103181, there is no canonical definition to state claims against.
-/

/-! ## A103181.P2074325575894557499

`A059628(n)/5`
-/

namespace A103181.P2074325575894557499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059628 n : ℚ) / 5

end

end A103181.P2074325575894557499

/-!
# A103182: Sliding numbers: totals, including repetitions, of sums r + s, r >= s, such that 1/r + 1/s = (r + s)/10^k for some k >= 0.

The programs for A103182, there is no canonical definition to state claims against.
-/

/-! ## A103182.P14977307674645397330

`A358703(A077168(n))`
-/

namespace A103182.P14977307674645397330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (A077168 n).toNat

end

end A103182.P14977307674645397330

/-! ## A103182.P15295346198756015462

`A358703(A264490(∑[n]+1)+n)`
-/

namespace A103182.P15295346198756015462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (A264490 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n : ℤ)).toNat

end

end A103182.P15295346198756015462

/-! ## A103182.P7658254716628757776

`A049773(2^n)*A358703(n+1)`
-/

namespace A103182.P7658254716628757776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (2 ^ n) * A358703 (n + 1)

end

end A103182.P7658254716628757776

/-! ## A103182.P8640839890386046213

`A358703(n+1)%A358707(n+2)`
-/

namespace A103182.P8640839890386046213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358703 (n + 1)) (A358707 (n + 2))

end

end A103182.P8640839890386046213

/-! ## A103182.P10513016421716136309

`A358703(n+1)+A000007(A008713(n))`
-/

namespace A103182.P10513016421716136309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1) + A000007 (A008713 n).toNat

end

end A103182.P10513016421716136309

/-!
# A103183: Values of k corresponding to terms in A103182.

The programs for A103183, there is no canonical definition to state claims against.
-/

/-! ## A103183.P4228388874734039059

`A001221(A001221(n+2)*A002512(n))`
-/

namespace A103183.P4228388874734039059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001221 (n + 2) * A002512 n).toNat

end

end A103183.P4228388874734039059

/-! ## A103183.P16635949934125746853

`A001221(lcm(A001221(n+2), A002512(n)))`
-/

namespace A103183.P16635949934125746853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A001221 (n + 2)) (A002512 n))

end

end A103183.P16635949934125746853

/-! ## A103183.P1487144823522349211

`A001221(A002512(n)*A132272(n))`
-/

namespace A103183.P1487144823522349211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002512 n * A132272 n).toNat

end

end A103183.P1487144823522349211

/-! ## A103183.P15953463386914861979

`A001221(lcm(A002512(n), A132272(n)))`
-/

namespace A103183.P15953463386914861979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A002512 n) (A132272 n))

end

end A103183.P15953463386914861979

/-! ## A103183.P12953244058863375423

`A069010(A002415(n+1)+A000447(n))`
-/

namespace A103183.P12953244058863375423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A002415 (n + 1) + A000447 n).toNat

end

end A103183.P12953244058863375423

/-!
# A103184: Primitive sliding numbers (excludes multiples of 10): totals, including repetitions, of sums r + s, r >= s, such that 1/r + 1/s = (r + s)/10^k for some k >= 0.

The programs for A103184, there is no canonical definition to state claims against.
-/

/-! ## A103184.P11874186391369346825

`filter[A103182(n+1), A168184(#)]`
-/

namespace A103184.P11874186391369346825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A103184.P11874186391369346825

/-! ## A103184.P7567773929551493167

`filter[A103182(n+1), A147781(#)]`
-/

namespace A103184.P7567773929551493167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A147781 (f1 j).toNat = 1) n)

end

end A103184.P7567773929551493167

/-! ## A103184.P17123274853876704172

`filter[A103182(n+1), A165556(#)]`
-/

namespace A103184.P17123274853876704172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165556 (f1 j).toNat = 1) n)

end

end A103184.P17123274853876704172

/-! ## A103184.P13651242066702840926

`filter[A358703(n+1), A147781(#)]`
-/

namespace A103184.P13651242066702840926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A147781 (f1 j).toNat = 1) n)

end

end A103184.P13651242066702840926

/-!
# A103185: a(n) = Sum_{ k >= 0 such that n + k == 0 mod 2^k } 2^(k-1).

The programs for A103185, there is no canonical definition to state claims against.
-/

/-! ## A103185.P4920598906156803954

`(A102370(n)-n)/2`
-/

namespace A103185.P4920598906156803954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102370 n - (n : ℤ) : ℚ) / 2

end

end A103185.P4920598906156803954

/-! ## A103185.P14639705587731550137

`A105023(n)/2`
-/

namespace A103185.P14639705587731550137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105023 n : ℚ) / 2

end

end A103185.P14639705587731550137

/-! ## A103185.P9978209468194088551

`and(n, A102370(n+1)-n)`
-/

namespace A103185.P9978209468194088551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A102370 (n + 1) - (n : ℤ))

end

end A103185.P9978209468194088551

/-! ## A103185.P9957304208376811223

`(A105228(n+1)-(n+1))/2`
-/

namespace A103185.P9957304208376811223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105228 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A103185.P9957304208376811223

/-! ## A103185.P7985825130161613764

`A001281(A105023(n))`
-/

namespace A103185.P7985825130161613764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A105023 n).toNat

end

end A103185.P7985825130161613764

/-! ## A103185.P17913556169712756696

`A004525(A102370(n)-n)`
-/

namespace A103185.P17913556169712756696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A102370 n - (n : ℤ)).toNat

end

end A103185.P17913556169712756696

/-! ## A103185.P18325486210210229206

`A004526(A102370(n)-n)`
-/

namespace A103185.P18325486210210229206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102370 n - (n : ℤ)).toNat

end

end A103185.P18325486210210229206

/-! ## A103185.P5085981507839721695

`A026741(A102370(n)-n)`
-/

namespace A103185.P5085981507839721695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A102370 n - (n : ℤ)).toNat

end

end A103185.P5085981507839721695

/-! ## A103185.P17021927433361000328

`abs(A001057(A102370(n)-n))`
-/

namespace A103185.P17021927433361000328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A102370 n - (n : ℤ)).toNat|

end

end A103185.P17021927433361000328

/-! ## A103185.P4788968130003358528

`A028242(A102370(n)+1-n)`
-/

namespace A103185.P4788968130003358528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A102370 n + (1 - (n : ℤ))).toNat

end

end A103185.P4788968130003358528

/-! ## A103185.P12020038601771990318

`A008619(A102370(n)-n)-1`
-/

namespace A103185.P12020038601771990318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A102370 n - (n : ℤ)).toNat - 1

end

end A103185.P12020038601771990318

/-! ## A103185.P14337920171464130056

`A028242(1-(n-A102370(n)))`
-/

namespace A103185.P14337920171464130056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (1 - ((n : ℤ) - A102370 n)).toNat

end

end A103185.P14337920171464130056

/-! ## A103185.P1547057820257303269

`A023443(A105228(n+1)-n)/2`
-/

namespace A103185.P1547057820257303269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023443 (A105228 (n + 1) - (n : ℤ)).toNat : ℚ) / 2

end

end A103185.P1547057820257303269

/-! ## A103185.P13597692324490964909

`or(A102370(n+1), A102370(n))-A102370(n+1)`
-/

namespace A103185.P13597692324490964909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102370 (n + 1)) (A102370 n) - A102370 (n + 1)

end

end A103185.P13597692324490964909

/-! ## A103185.P4888963171415911483

`A002265(2*(A102370(n)-n))`
-/

namespace A103185.P4888963171415911483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A102370 n - (n : ℤ))).toNat

end

end A103185.P4888963171415911483

/-! ## A103185.P9222671312209785577

`A008619(A102370(n))-A008619(n)`
-/

namespace A103185.P9222671312209785577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A102370 n).toNat - A008619 n

end

end A103185.P9222671312209785577

/-! ## A103185.P11299339874601489590

`A028242(A102370(n))-A028242(n)`
-/

namespace A103185.P11299339874601489590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A102370 n).toNat - A028242 n

end

end A103185.P11299339874601489590

/-! ## A103185.P4388633930721716571

`A103528(A010078(n+1)+1)`
-/

namespace A103185.P4388633930721716571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103528 (A010078 (n + 1) + 1).toNat

end

end A103185.P4388633930721716571

/-! ## A103185.P10478316269598215199

`A102370(n)+A001057(A102370(n)+n)`
-/

namespace A103185.P10478316269598215199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n + A001057 (A102370 n + (n : ℤ)).toNat

end

end A103185.P10478316269598215199

/-!
# A103187: a(n) = second term in continued fraction of n-th harmonic number.

The programs for A103187, there is no canonical definition to state claims against.
-/

/-! ## A103187.P11393317935552915082

`A100398(A139001(n+1)+2)`
-/

namespace A103187.P11393317935552915082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100398 (A139001 (n + 1) + 2).toNat

end

end A103187.P11393317935552915082

/-! ## A103187.P478030828071949965

`A100398(∑[A055573(n+1)]+2)`
-/

namespace A103187.P478030828071949965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100398 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A103187.P478030828071949965

/-!
# A103189: Number of divisors of prime p concatenated p times.

The programs for A103189, there is no canonical definition to state claims against.
-/

/-! ## A103189.P1522512447668568094

`A110758(p?[comp[n²]])`
-/

namespace A103189.P1522512447668568094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110758 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A103189.P1522512447668568094

/-! ## A103189.P433520002022397434

`A110758(eq[1, ∑{e}[n, #]])`
-/

namespace A103189.P433520002022397434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110758 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A103189.P433520002022397434

/-! ## A103189.P13999771187032285116

`A110758(A255483(∑[n]))`
-/

namespace A103189.P13999771187032285116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110758 (A255483 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A103189.P13999771187032285116

/-! ## A103189.P6357380383578869570

`A110758(Δ[A007504(n)])`
-/

namespace A103189.P6357380383578869570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110758 (f1 (n + 1) - f1 n).toNat

end

end A103189.P6357380383578869570

/-! ## A103189.P9955935282040093251

`A110758(A000040(n+1))`
-/

namespace A103189.P9955935282040093251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110758 (A000040 (n + 1)).toNat

end

end A103189.P9955935282040093251

/-!
# A103190: Numbers k such that k29 is prime.

The programs for A103190, the canonical program `A103190.P4046247394355433449` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103190 has offset 1).

The definition of A103190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103190.P10590768778653778166

`eq[1, A001222(10*10*n+29)]`
-/

namespace A103190.P10590768778653778166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * (10 * n) + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103190.P10590768778653778166

namespace A103190

/-- `eq[1, A001222(10*10*n+29)]` -/
def P10590768778653778166.Spec : Prop :=
  ∀ n, (P10590768778653778166.a n : ℤ) = A103190 (n + 1)

end A103190

/-! ## A103190.P6553438939247746049

`eq[2, A000005(10*10*n+29)]`
-/

namespace A103190.P6553438939247746049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (10 * n) + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103190.P6553438939247746049

namespace A103190

/-- `eq[2, A000005(10*10*n+29)]` -/
def P6553438939247746049.Spec : Prop :=
  ∀ n, (P6553438939247746049.a n : ℤ) = A103190 (n + 1)

end A103190

/-! ## A103190.P4046247394355433449

`eq[10*10*n+29, A006530(10*10*n+29)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A103190

/-- `eq[10*10*n+29, A006530(10*10*n+29)]` -/
def P4046247394355433449.Spec : Prop :=
  ∀ n, (P4046247394355433449.a n : ℤ) = A103190 (n + 1)

theorem P4046247394355433449.correct : P4046247394355433449.Spec := by
  intro n
  simp only [A103190, Nat.add_sub_cancel]

end A103190

/-! ## A103190.P4665571323827458326

`eq[10*10*n+29, A020639(10*10*n+29)]`
-/

namespace A103190.P4665571323827458326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * (10 * n) + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103190.P4665571323827458326

namespace A103190

/-- `eq[10*10*n+29, A020639(10*10*n+29)]` -/
def P4665571323827458326.Spec : Prop :=
  ∀ n, (P4665571323827458326.a n : ℤ) = A103190 (n + 1)

end A103190

/-! ## A103190.P18169894690855571499

`eq[1, A069850(A017281(n)+1)]`
-/

namespace A103190.P18169894690855571499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069850 (A017281 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103190.P18169894690855571499

namespace A103190

/-- `eq[1, A069850(A017281(n)+1)]` -/
def P18169894690855571499.Spec : Prop :=
  ∀ n, (P18169894690855571499.a n : ℤ) = A103190 (n + 1)

end A103190

/-! ## A103190.P5750335686718369453

`lt[A001222(A053742(2*n)+4), 2]`
-/

namespace A103190.P5750335686718369453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053742 (2 * n) + 4).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A103190.P5750335686718369453

namespace A103190

/-- `lt[A001222(A053742(2*n)+4), 2]` -/
def P5750335686718369453.Spec : Prop :=
  ∀ n, (P5750335686718369453.a n : ℤ) = A103190 (n + 1)

end A103190

/-!
# A103192: 

The programs for A103192, there is no canonical definition to state claims against.
-/

/-! ## A103192.P5747639092866525324

`A102370(a(n-1))` with `a(0)=1`
-/

namespace A103192.P5747639092866525324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102370 (a (n - 1)).toNat

end

end A103192.P5747639092866525324

/-! ## A103192.P16818827119492803280

`A105228(a(n-1)+1)-1` with `a(0)=1`
-/

namespace A103192.P16818827119492803280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105228 (a (n - 1) + 1).toNat - 1

end

end A103192.P16818827119492803280

/-! ## A103192.P5197951674746713086

`A102370(A000007(n)+a(A140106(2*n)))` with `a(0)=1`
-/

namespace A103192.P5197951674746713086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102370 (A000007 n + a (A140106 (2 * n)).toNat).toNat

end

end A103192.P5197951674746713086

/-! ## A103192.P913264578687607597

`and(A103127(n+1), A375155(n+1))`
-/

namespace A103192.P913264578687607597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103127 (n + 1)) (A375155 (n + 1))

end

end A103192.P913264578687607597

/-! ## A103192.P11122044135317508522

`A103127(n+1)%A004733(n)`
-/

namespace A103192.P11122044135317508522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103127 (n + 1)) (A004733 n)

end

end A103192.P11122044135317508522

/-! ## A103192.P10216015483274378604

`and(A003261(n+1), A103127(n+1))`
-/

namespace A103192.P10216015483274378604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A103127 (n + 1))

end

end A103192.P10216015483274378604

/-! ## A103192.P12288691615434210470

`and(A103127(n+1), A163383(n+1))`
-/

namespace A103192.P12288691615434210470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103127 (n + 1)) (A163383 (n + 1))

end

end A103192.P12288691615434210470

/-! ## A103192.P8767099504021368063

`and(A055580(n), A103127(n+1))`
-/

namespace A103192.P8767099504021368063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A103127 (n + 1))

end

end A103192.P8767099504021368063

/-! ## A103192.P11580123463298273617

`and(A103127(n+1), A107392(n))`
-/

namespace A103192.P11580123463298273617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103127 (n + 1)) (A107392 n)

end

end A103192.P11580123463298273617

/-! ## A103192.P897049084553940577

`and(A103127(n+1), A107464(n))`
-/

namespace A103192.P897049084553940577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103127 (n + 1)) (A107464 n)

end

end A103192.P897049084553940577

/-! ## A103192.P9221058719282556044

`and(A103127(n+1), A107953(n))`
-/

namespace A103192.P9221058719282556044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103127 (n + 1)) (A107953 n)

end

end A103192.P9221058719282556044

/-! ## A103192.P11645582032367909708

`and(A103127(n+1), A211386(n))`
-/

namespace A103192.P11645582032367909708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103127 (n + 1)) (A211386 n)

end

end A103192.P11645582032367909708

/-! ## A103192.P17066243302855038856

`and(A103127(n+1), A107954(n))`
-/

namespace A103192.P17066243302855038856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103127 (n + 1)) (A107954 n)

end

end A103192.P17066243302855038856

/-! ## A103192.P2121707106278314805

`and(A103127(n+1), A107955(n))`
-/

namespace A103192.P2121707106278314805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103127 (n + 1)) (A107955 n)

end

end A103192.P2121707106278314805

/-! ## A103192.P762770618249683994

`filter[A103127(n+1), A179775(#)]`
-/

namespace A103192.P762770618249683994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A103192.P762770618249683994

/-! ## A103192.P2999433002314766472

`and(A018886(n+1), A103127(n+1))`
-/

namespace A103192.P2999433002314766472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A103127 (n + 1))

end

end A103192.P2999433002314766472

/-! ## A103192.P17583127962193787933

`and(A060160(n+1), A103127(n+1))`
-/

namespace A103192.P17583127962193787933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A103127 (n + 1))

end

end A103192.P17583127962193787933

/-! ## A103192.P12277092941062355928

`and(A103127(n+1), A103454(n))`
-/

namespace A103192.P12277092941062355928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103127 (n + 1)) (A103454 n)

end

end A103192.P12277092941062355928

/-! ## A103192.P10740918407860331661

`and(A103127(n+1), A263806(n))`
-/

namespace A103192.P10740918407860331661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103127 (n + 1)) (A263806 n)

end

end A103192.P10740918407860331661

/-! ## A103192.P4522747564613568669

`and(A083420(n), A103127(n+1))`
-/

namespace A103192.P4522747564613568669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083420 n) (A103127 (n + 1))

end

end A103192.P4522747564613568669

/-!
# A103194: LAH transform of squares.

The programs for A103194, the canonical program `A103194.P3023715330219934413` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103194 has offset 0).

The definition of A103194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103194.P3023715330219934413

`n*A000262(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103194

/-- `n*A000262(n)` -/
def P3023715330219934413.Spec : Prop :=
  ∀ n, P3023715330219934413.a n = A103194 n

theorem P3023715330219934413.correct : P3023715330219934413.Spec := by
  intro n
  simp only [A103194]

end A103194

/-! ## A103194.P12865185781408742158

`lcm(n, A293125(n))`
-/

namespace A103194.P12865185781408742158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A293125 n)

end

end A103194.P12865185781408742158

namespace A103194

/-- `lcm(n, A293125(n))` -/
def P12865185781408742158.Spec : Prop :=
  ∀ n, (P12865185781408742158.a n : ℤ) = A103194 n

end A103194

/-! ## A103194.P1774976581545571374

`n*A059110(∑[n])`
-/

namespace A103194.P1774976581545571374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103194.P1774976581545571374

namespace A103194

/-- `n*A059110(∑[n])` -/
def P1774976581545571374.Spec : Prop :=
  ∀ n, P1774976581545571374.a n = A103194 n

end A103194

/-! ## A103194.P13455998883388469643

`n*A129652(∑[n])`
-/

namespace A103194.P13455998883388469643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A129652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103194.P13455998883388469643

namespace A103194

/-- `n*A129652(∑[n])` -/
def P13455998883388469643.Spec : Prop :=
  ∀ n, P13455998883388469643.a n = A103194 n

end A103194

/-! ## A103194.P10762986253866620579

`n*A206703(∑[n])`
-/

namespace A103194.P10762986253866620579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A206703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103194.P10762986253866620579

namespace A103194

/-- `n*A206703(∑[n])` -/
def P10762986253866620579.Spec : Prop :=
  ∀ n, P10762986253866620579.a n = A103194 n

end A103194

/-! ## A103194.P16106121917342795303

`n*A216294(∑[n])`
-/

namespace A103194.P16106121917342795303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A216294 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103194.P16106121917342795303

namespace A103194

/-- `n*A216294(∑[n])` -/
def P16106121917342795303.Spec : Prop :=
  ∀ n, P16106121917342795303.a n = A103194 n

end A103194

/-! ## A103194.P5591115892881634052

`A341200(∑[n+1]+n)`
-/

namespace A103194.P5591115892881634052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341200 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A103194.P5591115892881634052

namespace A103194

/-- `A341200(∑[n+1]+n)` -/
def P5591115892881634052.Spec : Prop :=
  ∀ n, P5591115892881634052.a n = A103194 n

end A103194

/-! ## A103194.P4974891337763086973

`n*A261764(∑[n]+n)`
-/

namespace A103194.P4974891337763086973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261764 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A103194.P4974891337763086973

namespace A103194

/-- `n*A261764(∑[n]+n)` -/
def P4974891337763086973.Spec : Prop :=
  ∀ n, P4974891337763086973.a n = A103194 n

end A103194

/-! ## A103194.P14789673139608024555

`n*A293985(∑[n]+n)`
-/

namespace A103194.P14789673139608024555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A293985 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A103194.P14789673139608024555

namespace A103194

/-- `n*A293985(∑[n]+n)` -/
def P14789673139608024555.Spec : Prop :=
  ∀ n, P14789673139608024555.a n = A103194 n

end A103194

/-! ## A103194.P16216184951892065446

`abs(n*A293134(∑[n]+n))`
-/

namespace A103194.P16216184951892065446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A293134 (∑ j ∈ Finset.range (n + 1), f1 j + n)|

end

end A103194.P16216184951892065446

namespace A103194

/-- `abs(n*A293134(∑[n]+n))` -/
def P16216184951892065446.Spec : Prop :=
  ∀ n, P16216184951892065446.a n = A103194 n

end A103194

/-!
# A103195: Concatenations of pairs of primes that differ by four.

The programs for A103195, there is no canonical definition to state claims against.
-/

/-! ## A103195.P17284209200726006118

`A032609(A015913(n+1))`
-/

namespace A103195.P17284209200726006118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (A015913 (n + 1)).toNat

end

end A103195.P17284209200726006118

/-! ## A103195.P531640850127060208

`A032609(A172238(n+2))`
-/

namespace A103195.P531640850127060208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (A172238 (n + 2)).toNat

end

end A103195.P531640850127060208

/-! ## A103195.P13362596202347901533

`A032609(p?[A056772(n+1)])`
-/

namespace A103195.P13362596202347901533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103195.P13362596202347901533

/-! ## A103195.P3143409800343449666

`A032609(p?[A172367(n+1)])`
-/

namespace A103195.P3143409800343449666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103195.P3143409800343449666

/-! ## A103195.P1130881799999075467

`A032609(p?[A282354(n+1)])`
-/

namespace A103195.P1130881799999075467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103195.P1130881799999075467

/-!
# A103196: a(n) = (1/9)(2^(n+3)-(-1)^n(3n-1)).

The programs for A103196, the canonical program `A103196.P2661514774158666851` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103196 has offset 0).

The definition of A103196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103196.P2661514774158666851

`A113954(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103196

/-- `A113954(n+2)` -/
def P2661514774158666851.Spec : Prop :=
  ∀ n, P2661514774158666851.a n = A103196 n

theorem P2661514774158666851.correct : P2661514774158666851.Spec := by
  intro n
  simp only [A103196]

end A103196

/-! ## A103196.P17037129114866298277

`ogf((1+2x)/(1-3x^2-2x^3))`
-/

namespace A103196.P17037129114866298277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -3, -2] n

end

end A103196.P17037129114866298277

namespace A103196

/-- `ogf((1+2x)/(1-3x^2-2x^3))` -/
def P17037129114866298277.Spec : Prop :=
  ∀ n, P17037129114866298277.a n = A103196 n

end A103196

/-! ## A103196.P1958318638468878804

`∑[abs(∑[∑[(-2)^n]]-n)]`
-/

namespace A103196.P1958318638468878804
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103196.P1958318638468878804

namespace A103196

/-- `∑[abs(∑[∑[(-2)^n]]-n)]` -/
def P1958318638468878804.Spec : Prop :=
  ∀ n, P1958318638468878804.a n = A103196 n

end A103196

/-! ## A103196.P3555036846173104235

`xor(-n, (-1)^n)+2*a(n-1)` with `a(0)=1`
-/

namespace A103196.P3555036846173104235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (-(n : ℤ)) ((-1) ^ n) + 2 * a (n - 1)

end

end A103196.P3555036846173104235

namespace A103196

/-- `xor(-n, (-1)^n)+2*a(n-1)` -/
def P3555036846173104235.Spec : Prop :=
  ∀ n, P3555036846173104235.a n = A103196 n

end A103196

/-! ## A103196.P14547363320606531586

`2*a(n-3)+3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A103196.P14547363320606531586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * a (n - 3) + 3 * a (n - 2)

end

end A103196.P14547363320606531586

namespace A103196

/-- `2*a(n-3)+3*a(n-2)` -/
def P14547363320606531586.Spec : Prop :=
  ∀ n, (P14547363320606531586.a n : ℤ) = A103196 n

end A103196

/-! ## A103196.P14285578089042324312

`2*a(n-2)-xor(1, -a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A103196.P14285578089042324312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 2) - Int.xor 1 (-a (n - 1))

end

end A103196.P14285578089042324312

namespace A103196

/-- `2*a(n-2)-xor(1, -a(n-1))` -/
def P14285578089042324312.Spec : Prop :=
  ∀ n, P14285578089042324312.a n = A103196 n

end A103196

/-! ## A103196.P16824008549255532919

`record[A113954(n)]`
-/

namespace A103196.P16824008549255532919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103196.P16824008549255532919

namespace A103196

/-- `record[A113954(n)]` -/
def P16824008549255532919.Spec : Prop :=
  ∀ n, P16824008549255532919.a n = A103196 n

end A103196

/-! ## A103196.P1246346745363502615

`A133993(n+1)-1`
-/

namespace A103196.P1246346745363502615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133993 (n + 1) - 1

end

end A103196.P1246346745363502615

namespace A103196

/-- `A133993(n+1)-1` -/
def P1246346745363502615.Spec : Prop :=
  ∀ n, P1246346745363502615.a n = A103196 n

end A103196

/-! ## A103196.P14416120756955185879

`xor(1, A053088(n+1))`
-/

namespace A103196.P14416120756955185879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A053088 (n + 1))

end

end A103196.P14416120756955185879

namespace A103196

/-- `xor(1, A053088(n+1))` -/
def P14416120756955185879.Spec : Prop :=
  ∀ n, P14416120756955185879.a n = A103196 n

end A103196

/-! ## A103196.P574614319647305760

`abs(1-A077898(n+1))`
-/

namespace A103196.P574614319647305760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A077898 (n + 1)|

end

end A103196.P574614319647305760

namespace A103196

/-- `abs(1-A077898(n+1))` -/
def P574614319647305760.Spec : Prop :=
  ∀ n, P574614319647305760.a n = A103196 n

end A103196

/-! ## A103196.P15717659505735211378

`A095342(n)+a(n-1)` with `a(0)=1`
-/

namespace A103196.P15717659505735211378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095342 n + a (n - 1)

end

end A103196.P15717659505735211378

namespace A103196

/-- `A095342(n)+a(n-1)` -/
def P15717659505735211378.Spec : Prop :=
  ∀ n, P15717659505735211378.a n = A103196 n

end A103196

/-! ## A103196.P4274380182860878430

`A034299(n)+A001057(n)`
-/

namespace A103196.P4274380182860878430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034299 n + A001057 n

end

end A103196.P4274380182860878430

namespace A103196

/-- `A034299(n)+A001057(n)` -/
def P4274380182860878430.Spec : Prop :=
  ∀ n, P4274380182860878430.a n = A103196 n

end A103196

/-! ## A103196.P3633982930432643875

`A172285(n)+A078008(n)`
-/

namespace A103196.P3633982930432643875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172285 n + A078008 n

end

end A103196.P3633982930432643875

namespace A103196

/-- `A172285(n)+A078008(n)` -/
def P3633982930432643875.Spec : Prop :=
  ∀ n, P3633982930432643875.a n = A103196 n

end A103196

/-! ## A103196.P11447303260811162977

`A034299(n)-A130472(n)`
-/

namespace A103196.P11447303260811162977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034299 n - A130472 n

end

end A103196.P11447303260811162977

namespace A103196

/-- `A034299(n)-A130472(n)` -/
def P11447303260811162977.Spec : Prop :=
  ∀ n, P11447303260811162977.a n = A103196 n

end A103196

/-! ## A103196.P11746934246394027618

`A053088(n+1)+A033999(n)`
-/

namespace A103196.P11746934246394027618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 (n + 1) + A033999 n

end

end A103196.P11746934246394027618

namespace A103196

/-- `A053088(n+1)+A033999(n)` -/
def P11746934246394027618.Spec : Prop :=
  ∀ n, P11746934246394027618.a n = A103196 n

end A103196

/-! ## A103196.P5082495107518509706

`A181983(n)+A095342(n+1)`
-/

namespace A103196.P5082495107518509706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n + A095342 (n + 1)

end

end A103196.P5082495107518509706

namespace A103196

/-- `A181983(n)+A095342(n+1)` -/
def P5082495107518509706.Spec : Prop :=
  ∀ n, P5082495107518509706.a n = A103196 n

end A103196

/-! ## A103196.P7826606300118003031

`A095342(n+1)-A038608(n)`
-/

namespace A103196.P7826606300118003031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095342 (n + 1) - A038608 n

end

end A103196.P7826606300118003031

namespace A103196

/-- `A095342(n+1)-A038608(n)` -/
def P7826606300118003031.Spec : Prop :=
  ∀ n, P7826606300118003031.a n = A103196 n

end A103196

/-! ## A103196.P1389524433251217011

`A056594(2*n)+A053088(n+1)`
-/

namespace A103196.P1389524433251217011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) + A053088 (n + 1)

end

end A103196.P1389524433251217011

namespace A103196

/-- `A056594(2*n)+A053088(n+1)` -/
def P1389524433251217011.Spec : Prop :=
  ∀ n, P1389524433251217011.a n = A103196 n

end A103196

/-! ## A103196.P4816994941721652076

`A010673(n+1)+A053088(n+1)-1`
-/

namespace A103196.P4816994941721652076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1) + (A053088 (n + 1) - 1)

end

end A103196.P4816994941721652076

namespace A103196

/-- `A010673(n+1)+A053088(n+1)-1` -/
def P4816994941721652076.Spec : Prop :=
  ∀ n, P4816994941721652076.a n = A103196 n

end A103196

/-! ## A103196.P2311568242286535190

`(A077898(n+1)-1)*A033999(n+1)`
-/

namespace A103196.P2311568242286535190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077898 (n + 1) - 1) * A033999 (n + 1)

end

end A103196.P2311568242286535190

namespace A103196

/-- `(A077898(n+1)-1)*A033999(n+1)` -/
def P2311568242286535190.Spec : Prop :=
  ∀ n, P2311568242286535190.a n = A103196 n

end A103196

/-!
# A103197: Number of compositions of n into Fibonacci number of parts.

The programs for A103197, there is no canonical definition to state claims against.
-/

/-! ## A103197.P2131301382383648962

`∑[A002024(A148339(n))]`
-/

namespace A103197.P2131301382383648962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A148339 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103197.P2131301382383648962

/-! ## A103197.P1079952821626351525

`A000006(A081124(n+1))`
-/

namespace A103197.P1079952821626351525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A081124 (n + 1)).toNat

end

end A103197.P1079952821626351525

/-! ## A103197.P5163267949661221490

`A000006(round(sqrt(A113992(n))))`
-/

namespace A103197.P5163267949661221490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (SequenceMachineLib.roundAway (Real.sqrt (A113992 n : ℝ))).toNat

end

end A103197.P5163267949661221490

/-! ## A103197.P4429764350004358305

`∑[A000194(∑[A148564(n)])]`
-/

namespace A103197.P4429764350004358305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148564 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103197.P4429764350004358305

/-! ## A103197.P2127259915231684764

`∑[A103128(∑[A148107(n)])]`
-/

namespace A103197.P2127259915231684764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148107 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103197.P2127259915231684764

/-!
# A103198: Number of compositions of n into a square number of parts.

The programs for A103198, there is no canonical definition to state claims against.
-/

/-! ## A103198.P8339252553398171999

`abs(Δ[A003099(abs(1-n))])`
-/

namespace A103198.P8339252553398171999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003099 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A103198.P8339252553398171999

/-! ## A103198.P3745993315452861773

`lcm(2, A307522(n))/2`
-/

namespace A103198.P3745993315452861773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A307522 n) : ℚ) / 2

end

end A103198.P3745993315452861773

/-! ## A103198.P17037378108121338091

`A307522(n)/A280560(n)`
-/

namespace A103198.P17037378108121338091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307522 n : ℚ) / (A280560 n : ℚ)

end

end A103198.P17037378108121338091

/-! ## A103198.P5737953254331437313

`A307522(n)/A002448(n²)`
-/

namespace A103198.P5737953254331437313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307522 n : ℚ) / (A002448 (n ^ 2) : ℚ)

end

end A103198.P5737953254331437313

/-! ## A103198.P7091381842100739844

`A014682(lcm(2, A307522(n)))`
-/

namespace A103198.P7091381842100739844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A307522 n))

end

end A103198.P7091381842100739844

/-!
# A103199: Primes p such that p-1 has more divisors than any smaller prime-1.

The programs for A103199, there is no canonical definition to state claims against.
-/

/-! ## A103199.P1808882553515777515

`A372092(n+1)+1`
-/

namespace A103199.P1808882553515777515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372092 (n + 1) + 1

end

end A103199.P1808882553515777515

/-! ## A103199.P2526212123169759345

`A151800(A372092(n+1))`
-/

namespace A103199.P2526212123169759345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A372092 (n + 1)).toNat

end

end A103199.P2526212123169759345

/-! ## A103199.P12322112476496004948

`A067573(∑[A196017(n+1)!!])`
-/

namespace A103199.P12322112476496004948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (A196017 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067573 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103199.P12322112476496004948

/-! ## A103199.P7698194729020160760

`p?[A299905(n)!*A067573(n+1)]`
-/

namespace A103199.P7698194729020160760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A299905 n).toNat : ℤ) * A067573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103199.P7698194729020160760

/-! ## A103199.P4664274808476597643

`A019554(A067573(∑[A196017(n+1)]))`
-/

namespace A103199.P4664274808476597643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A067573 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A103199.P4664274808476597643

