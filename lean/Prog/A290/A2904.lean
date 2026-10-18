import SequenceMachineLib
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A290400: Primes p such that Diophantine equation x + y + z = p with x*y*z = k^3 (0 < x <= y <= z) has a unique solution.

The programs for A290400, there is no canonical definition to state claims against.
-/

/-! ## A290400.P5496777808176915374

`eq[A143862(n), A375580(n)]`
-/

namespace A290400.P5496777808176915374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290400.P5496777808176915374

/-! ## A290400.P6908559505898323350

`eq[A217668(n), A375580(n)]`
-/

namespace A290400.P6908559505898323350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290400.P6908559505898323350

/-! ## A290400.P11438290804739896379

`eq[A327642(n), A375580(n)]`
-/

namespace A290400.P11438290804739896379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290400.P11438290804739896379

/-! ## A290400.P15263618343139029574

`A065091(eq[1, A290399(n+1)])`
-/

namespace A290400.P15263618343139029574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290400.P15263618343139029574

/-! ## A290400.P439878144113782973

`eq[A331991(n+1), A375580(n)]`
-/

namespace A290400.P439878144113782973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290400.P439878144113782973

/-!
# A290401: Smallest prime p such that the Diophantine equation x + y + z = p with x*y*z = k^3 (0 < x <= y <= z) has exactly n solutions.

The programs for A290401, there is no canonical definition to state claims against.
-/

/-! ## A290401.P2327050931333133679

`p?[A276625(Δ[A008227(n)])]`
-/

namespace A290401.P2327050931333133679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008227 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290401.P2327050931333133679

/-! ## A290401.P11553549817280738559

`p?[A324855(n+1)%A318187(n+1)]`
-/

namespace A290401.P11553549817280738559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324855 (n + 1)) (A318187 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290401.P11553549817280738559

/-!
# A290402: Primes congruent to {7, 17} mod 24.

The programs for A290402, the canonical program `A290402.P15446028365487765602` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290402 has offset 1).

The definition of A290402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290402.P15446028365487765602

`p?[xor(6*n, n%4)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A290402

/-- `p?[xor(6*n, n%4)]` -/
def P15446028365487765602.Spec : Prop :=
  ∀ n, (P15446028365487765602.a n : ℤ) = A290402 (n + 1)

theorem P15446028365487765602.correct : P15446028365487765602.Spec := by
  intro n
  simp only [A290402, Nat.add_sub_cancel]

end A290402

/-! ## A290402.P6110480588431508883

`p?[xor(6*n, and(3, n))]`
-/

namespace A290402.P6110480588431508883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (6 * n) (Nat.land 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A290402.P6110480588431508883

namespace A290402

/-- `p?[xor(6*n, and(3, n))]` -/
def P6110480588431508883.Spec : Prop :=
  ∀ n, (P6110480588431508883.a n : ℤ) = A290402 (n + 1)

end A290402

/-! ## A290402.P5088572685815314474

`p?[a(n-2)+24]` with `a(0)=7, a(1)=17`
-/

namespace A290402.P5088572685815314474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 17] fun n f1 =>
  f1 (n - 2) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A290402.P5088572685815314474

namespace A290402

/-- `p?[a(n-2)+24]` -/
def P5088572685815314474.Spec : Prop :=
  ∀ n, (P5088572685815314474.a n : ℤ) = A290402 (n + 1)

end A290402

/-! ## A290402.P16475533444621627815

`p?[8*n+1-(n+1)%3]`
-/

namespace A290402.P16475533444621627815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℤ) - (((n + 1) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290402.P16475533444621627815

namespace A290402

/-- `p?[8*n+1-(n+1)%3]` -/
def P16475533444621627815.Spec : Prop :=
  ∀ n, P16475533444621627815.a n = A290402 (n + 1)

end A290402

/-! ## A290402.P7009698249376450248

`p?[ogf((1+2x+x^3+8x^4)/(1-2x+2x^2-2x^3+x^4))]`
-/

namespace A290402.P7009698249376450248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 1, 8] [1, -2, 2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290402.P7009698249376450248

namespace A290402

/-- `p?[ogf((1+2x+x^3+8x^4)/(1-2x+2x^2-2x^3+x^4))]` -/
def P7009698249376450248.Spec : Prop :=
  ∀ n, P7009698249376450248.a n = A290402 (n + 1)

end A290402

/-! ## A290402.P1331852131497842163

`p?[or(3, 3*n)+3*(n+1)+1]`
-/

namespace A290402.P1331852131497842163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (3 * n) + 3 * (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A290402.P1331852131497842163

namespace A290402

/-- `p?[or(3, 3*n)+3*(n+1)+1]` -/
def P1331852131497842163.Spec : Prop :=
  ∀ n, (P1331852131497842163.a n : ℤ) = A290402 (n + 1)

end A290402

/-! ## A290402.P9485049952106327856

`p?[(11*n+7)%4+2*n+3*n+4+n]`
-/

namespace A290402.P9485049952106327856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n + 7) % 4 + 2 * n + (3 * n + 4) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A290402.P9485049952106327856

namespace A290402

/-- `p?[(11*n+7)%4+2*n+3*n+4+n]` -/
def P9485049952106327856.Spec : Prop :=
  ∀ n, (P9485049952106327856.a n : ℤ) = A290402 (n + 1)

end A290402

/-! ## A290402.P13257981713892896747

`p?[xor(6*n, A010873(n))]`
-/

namespace A290402.P13257981713892896747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (6 * n : ℤ) (A010873 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290402.P13257981713892896747

namespace A290402

/-- `p?[xor(6*n, A010873(n))]` -/
def P13257981713892896747.Spec : Prop :=
  ∀ n, P13257981713892896747.a n = A290402 (n + 1)

end A290402

/-! ## A290402.P16955743484632951558

`p?[floor(24*n/7)+4]`
-/

namespace A290402.P16955743484632951558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊24 * ((n : ℚ) / 7)⌋ + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290402.P16955743484632951558

namespace A290402

/-- `p?[floor(24*n/7)+4]` -/
def P16955743484632951558.Spec : Prop :=
  ∀ n, P16955743484632951558.a n = A290402 (n + 1)

end A290402

/-! ## A290402.P16739908345949951302

`∩[A001132(n+1), A003630(n+1)]`
-/

namespace A290402.P16739908345949951302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290402.P16739908345949951302

namespace A290402

/-- `∩[A001132(n+1), A003630(n+1)]` -/
def P16739908345949951302.Spec : Prop :=
  ∀ n, (P16739908345949951302.a n : ℤ) = A290402 (n + 1)

end A290402

/-! ## A290402.P6643014316535702852

`∩[A003630(n+1), A025021(n+1)]`
-/

namespace A290402.P6643014316535702852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290402.P6643014316535702852

namespace A290402

/-- `∩[A003630(n+1), A025021(n+1)]` -/
def P6643014316535702852.Spec : Prop :=
  ∀ n, (P6643014316535702852.a n : ℤ) = A290402 (n + 1)

end A290402

/-! ## A290402.P4895078630936465475

`∩[A000040(n+1), A025021(n+1)]`
-/

namespace A290402.P4895078630936465475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290402.P4895078630936465475

namespace A290402

/-- `∩[A000040(n+1), A025021(n+1)]` -/
def P4895078630936465475.Spec : Prop :=
  ∀ n, (P4895078630936465475.a n : ℤ) = A290402 (n + 1)

end A290402

/-! ## A290402.P3391608268354969975

`∩[A006005(n+1), A025021(n+1)]`
-/

namespace A290402.P3391608268354969975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290402.P3391608268354969975

namespace A290402

/-- `∩[A006005(n+1), A025021(n+1)]` -/
def P3391608268354969975.Spec : Prop :=
  ∀ n, (P3391608268354969975.a n : ℤ) = A290402 (n + 1)

end A290402

/-! ## A290402.P8495127901030528235

`∩[A025021(n+1), A033946(n+1)]`
-/

namespace A290402.P8495127901030528235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290402.P8495127901030528235

namespace A290402

/-- `∩[A025021(n+1), A033946(n+1)]` -/
def P8495127901030528235.Spec : Prop :=
  ∀ n, (P8495127901030528235.a n : ℤ) = A290402 (n + 1)

end A290402

/-! ## A290402.P10129442833989667555

`∩[A025021(n+1), A067126(n+1)]`
-/

namespace A290402.P10129442833989667555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290402.P10129442833989667555

namespace A290402

/-- `∩[A025021(n+1), A067126(n+1)]` -/
def P10129442833989667555.Spec : Prop :=
  ∀ n, (P10129442833989667555.a n : ℤ) = A290402 (n + 1)

end A290402

/-! ## A290402.P14770505839208264022

`∩[A025021(n+1), A055977(n+1)]`
-/

namespace A290402.P14770505839208264022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290402.P14770505839208264022

namespace A290402

/-- `∩[A025021(n+1), A055977(n+1)]` -/
def P14770505839208264022.Spec : Prop :=
  ∀ n, (P14770505839208264022.a n : ℤ) = A290402 (n + 1)

end A290402

/-! ## A290402.P701854495671453081

`record[A006530(A025021(n+1))]`
-/

namespace A290402.P701854495671453081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A025021 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290402.P701854495671453081

namespace A290402

/-- `record[A006530(A025021(n+1))]` -/
def P701854495671453081.Spec : Prop :=
  ∀ n, P701854495671453081.a n = A290402 (n + 1)

end A290402

/-! ## A290402.P17734828214989262469

`filter[A025021(n+1), A010051(#)]`
-/

namespace A290402.P17734828214989262469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A290402.P17734828214989262469

namespace A290402

/-- `filter[A025021(n+1), A010051(#)]` -/
def P17734828214989262469.Spec : Prop :=
  ∀ n, P17734828214989262469.a n = A290402 (n + 1)

end A290402

/-! ## A290402.P4277602976906399685

`∩[A025021(n+1), A396594(n+1)]`
-/

namespace A290402.P4277602976906399685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290402.P4277602976906399685

namespace A290402

/-- `∩[A025021(n+1), A396594(n+1)]` -/
def P4277602976906399685.Spec : Prop :=
  ∀ n, (P4277602976906399685.a n : ℤ) = A290402 (n + 1)

end A290402

/-! ## A290402.P6647965627358660039

`∩[A025021(n+1), A231878(n+1)]`
-/

namespace A290402.P6647965627358660039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290402.P6647965627358660039

namespace A290402

/-- `∩[A025021(n+1), A231878(n+1)]` -/
def P6647965627358660039.Spec : Prop :=
  ∀ n, (P6647965627358660039.a n : ℤ) = A290402 (n + 1)

end A290402

/-!
# A290405: Expansion of (a(q) / b(q))^3 in powers of q where a(), b() are cubic AGM theta functions.

The programs for A290405, there is no canonical definition to state claims against.
-/

/-! ## A290405.P10261994450298268131

`A121589(A008486(n))*A122553(n)`
-/

namespace A290405.P10261994450298268131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121589 (A008486 n).toNat * A122553 n

end

end A290405.P10261994450298268131

/-!
# A290406: Number of minimal dominating sets in the n-hypercube graph.

The programs for A290406, there is no canonical definition to state claims against.
-/

/-! ## A290406.P15734405933179963801

`(n+1)*A354721(n!)`
-/

namespace A290406.P15734405933179963801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354721 (Nat.factorial n)

end

end A290406.P15734405933179963801

/-!
# A290407: Primes obtained from other primes by prefixing an 8.

The programs for A290407, there is no canonical definition to state claims against.
-/

/-! ## A290407.P2636836781723838676

`p?[A080695(2*A001749(n+1))]`
-/

namespace A290407.P2636836781723838676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (2 * A001749 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290407.P2636836781723838676

/-! ## A290407.P1922690879713421317

`p?[A080695(A083251(n+1)/2)]`
-/

namespace A290407.P1922690879713421317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (SequenceMachineLib.roundAway ((A083251 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290407.P1922690879713421317

/-! ## A290407.P15706313702242855159

`p?[A080695(4*A073582(n+1))]`
-/

namespace A290407.P15706313702242855159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (4 * A073582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290407.P15706313702242855159

/-! ## A290407.P9502209590233981850

`p?[A080695(4*A100484(n+1))]`
-/

namespace A290407.P9502209590233981850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (4 * A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290407.P9502209590233981850

/-! ## A290407.P6053641143747590118

`p?[A080695(A004525(A083251(n+1)))]`
-/

namespace A290407.P6053641143747590118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (A004525 (A083251 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290407.P6053641143747590118

/-!
# A290412: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 785", based on the 5-celled von Neumann neighborhood.

The programs for A290412, there is no canonical definition to state claims against.
-/

/-! ## A290412.P5638677440748887111

`xor(A008437(A130249(n)), A290525(n))`
-/

namespace A290412.P5638677440748887111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008437 (A130249 n).toNat) (A290525 n)

end

end A290412.P5638677440748887111

/-! ## A290412.P2725189709252129352

`xor(A185014(A240116(n+5)), A290525(n))`
-/

namespace A290412.P2725189709252129352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185014 (A240116 (n + 5)).toNat) (A290525 n)

end

end A290412.P2725189709252129352

/-! ## A290412.P1861614694451413100

`A290414(n)+A290525(n)-A290527(n)`
-/

namespace A290412.P1861614694451413100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290414 n + (A290525 n - A290527 n)

end

end A290412.P1861614694451413100

/-! ## A290412.P13286456936457963870

`xor(A178333(A105098(n+1)), A290525(n))`
-/

namespace A290412.P13286456936457963870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178333 (A105098 (n + 1)).toNat) (A290525 n)

end

end A290412.P13286456936457963870

/-! ## A290412.P744443754494030622

`xor(A178333(A126726(n)), A290525(n))`
-/

namespace A290412.P744443754494030622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178333 (A126726 n).toNat) (A290525 n)

end

end A290412.P744443754494030622

/-!
# A290413: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 785", based on the 5-celled von Neumann neighborhood.

The programs for A290413, there is no canonical definition to state claims against.
-/

/-! ## A290413.P3556574773384162142

`A007088(A290415(n))`
-/

namespace A290413.P3556574773384162142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290415 n).toNat

end

end A290413.P3556574773384162142

/-! ## A290413.P6587690094251126492

`A305989(A290414(n))`
-/

namespace A290413.P6587690094251126492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A290414 n).toNat

end

end A290413.P6587690094251126492

/-! ## A290413.P4712405959727042393

`A185544(2*A290415(n))`
-/

namespace A290413.P4712405959727042393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290415 n).toNat

end

end A290413.P4712405959727042393

/-! ## A290413.P7906039475482803666

`A185544(lcm(2, A290415(n)))`
-/

namespace A290413.P7906039475482803666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290415 n))

end

end A290413.P7906039475482803666

/-! ## A290413.P5225878257413462628

`A185544(A290415(n)+A290415(n))`
-/

namespace A290413.P5225878257413462628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A290415 n + A290415 n).toNat

end

end A290413.P5225878257413462628

/-!
# A290414: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 785", based on the 5-celled von Neumann neighborhood.

The programs for A290414, there is no canonical definition to state claims against.
-/

/-! ## A290414.P8371563177903418188

`xor(A008437(A130249(n)), A290527(n))`
-/

namespace A290414.P8371563177903418188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008437 (A130249 n).toNat) (A290527 n)

end

end A290414.P8371563177903418188

/-! ## A290414.P9082516524398612699

`xor(A001343(A151800(n)), A290527(n))`
-/

namespace A290414.P9082516524398612699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001343 (A151800 n).toNat) (A290527 n)

end

end A290414.P9082516524398612699

/-! ## A290414.P11270984424696172812

`xor(A185014(A240116(n+5)), A290527(n))`
-/

namespace A290414.P11270984424696172812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185014 (A240116 (n + 5)).toNat) (A290527 n)

end

end A290414.P11270984424696172812

/-! ## A290414.P17097865751165275837

`xor(A290527(n), A320003(A030664(n)))`
-/

namespace A290414.P17097865751165275837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A290527 n) (A320003 (A030664 n).toNat)

end

end A290414.P17097865751165275837

/-! ## A290414.P10175558813740871792

`A290412(n)+A290527(n)-A290525(n)`
-/

namespace A290414.P10175558813740871792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290412 n + (A290527 n - A290525 n)

end

end A290414.P10175558813740871792

/-!
# A290415: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 785", based on the 5-celled von Neumann neighborhood.

The programs for A290415, the canonical program `A290415.P13294576493658578083` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290415 has offset 0).

The definition of A290415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290415.P13294576493658578083

`xor(or(n²+1, A000225(n)), A014236(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290415

/-- `xor(or(n²+1, A000225(n)), A014236(n))` -/
def P13294576493658578083.Spec : Prop :=
  ∀ n, P13294576493658578083.a n = A290415 n

theorem P13294576493658578083.correct : P13294576493658578083.Spec := by
  intro n
  simp only [A290415]

end A290415

/-! ## A290415.P8281846921521771313

`A057889(A000265(A290414(n)))`
-/

namespace A290415.P8281846921521771313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A000265 (A290414 n).toNat).toNat

end

end A290415.P8281846921521771313

namespace A290415

/-- `A057889(A000265(A290414(n)))` -/
def P8281846921521771313.Spec : Prop :=
  ∀ n, P8281846921521771313.a n = A290415 n

end A290415

/-! ## A290415.P3072773552900114787

`A325401(A290414(n))`
-/

namespace A290415.P3072773552900114787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A290414 n).toNat

end

end A290415.P3072773552900114787

namespace A290415

/-- `A325401(A290414(n))` -/
def P3072773552900114787.Spec : Prop :=
  ∀ n, P3072773552900114787.a n = A290415 n

end A290415

/-! ## A290415.P8166797800074671208

`A325401(A290412(n)+A290527(n)-A290525(n))`
-/

namespace A290415.P8166797800074671208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A290412 n + (A290527 n - A290525 n)).toNat

end

end A290415.P8166797800074671208

namespace A290415

/-- `A325401(A290412(n)+A290527(n)-A290525(n))` -/
def P8166797800074671208.Spec : Prop :=
  ∀ n, P8166797800074671208.a n = A290415 n

end A290415

/-! ## A290415.P9443121145442029383

`A325401(A290412(n)-(A290525(n)-A290527(n)))`
-/

namespace A290415.P9443121145442029383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A290412 n - (A290525 n - A290527 n)).toNat

end

end A290415.P9443121145442029383

namespace A290415

/-- `A325401(A290412(n)-(A290525(n)-A290527(n)))` -/
def P9443121145442029383.Spec : Prop :=
  ∀ n, P9443121145442029383.a n = A290415 n

end A290415

/-!
# A290416: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

The programs for A290416, there is no canonical definition to state claims against.
-/

/-! ## A290416.P14151843323324238348

`A007088(A290418(n))`
-/

namespace A290416.P14151843323324238348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290418 n).toNat

end

end A290416.P14151843323324238348

/-! ## A290416.P13439947957443976659

`A007088(or(A285943(n), A290422(n)))`
-/

namespace A290416.P13439947957443976659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A285943 n) (A290422 n)).toNat

end

end A290416.P13439947957443976659

/-! ## A290416.P15895082002364729691

`A007088(or(A287744(n), A290422(n)))`
-/

namespace A290416.P15895082002364729691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A287744 n) (A290422 n)).toNat

end

end A290416.P15895082002364729691

/-! ## A290416.P10377632936960591366

`A007088(and(A052551(n), A290230(n+1)))`
-/

namespace A290416.P10377632936960591366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A052551 n) (A290230 (n + 1))).toNat

end

end A290416.P10377632936960591366

/-! ## A290416.P11774721295998393133

`A007088(A052551(n+1)-A285773(n+1))`
-/

namespace A290416.P11774721295998393133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A052551 (n + 1) - A285773 (n + 1)).toNat

end

end A290416.P11774721295998393133

/-!
# A290417: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

The programs for A290417, there is no canonical definition to state claims against.
-/

/-! ## A290417.P18026961991674398825

`A007088(A290419(n))`
-/

namespace A290417.P18026961991674398825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290419 n).toNat

end

end A290417.P18026961991674398825

/-! ## A290417.P8237583128515153460

`A007088(or(A285944(n), A290423(n)))`
-/

namespace A290417.P8237583128515153460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A285944 n) (A290423 n)).toNat

end

end A290417.P8237583128515153460

/-! ## A290417.P17329453421332780129

`A007088(or(A287745(n), A290423(n)))`
-/

namespace A290417.P17329453421332780129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A287745 n) (A290423 n)).toNat

end

end A290417.P17329453421332780129

/-! ## A290417.P11058044212066322352

`A185544(2*A290419(n))`
-/

namespace A290417.P11058044212066322352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290419 n).toNat

end

end A290417.P11058044212066322352

/-! ## A290417.P10538276587258928928

`A185544(2*or(A285944(n), A290423(n)))`
-/

namespace A290417.P10538276587258928928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Int.lor (A285944 n) (A290423 n)).toNat

end

end A290417.P10538276587258928928

/-!
# A290418: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

The programs for A290418, the canonical program `A290418.P2473438558105985708` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290418 has offset 0).

The definition of A290418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290418.P15019372283654916518

`or(A285943(n), A290422(n))`
-/

namespace A290418.P15019372283654916518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285943 n) (A290422 n)

end

end A290418.P15019372283654916518

namespace A290418

/-- `or(A285943(n), A290422(n))` -/
def P15019372283654916518.Spec : Prop :=
  ∀ n, P15019372283654916518.a n = A290418 n

end A290418

/-! ## A290418.P3349373425271943055

`or(A287744(n), A290422(n))`
-/

namespace A290418.P3349373425271943055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A287744 n) (A290422 n)

end

end A290418.P3349373425271943055

namespace A290418

/-- `or(A287744(n), A290422(n))` -/
def P3349373425271943055.Spec : Prop :=
  ∀ n, P3349373425271943055.a n = A290418 n

end A290418

/-! ## A290418.P3340019490356050538

`or(A001045(A103391(n+1)), A290422(n))`
-/

namespace A290418.P3340019490356050538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 (A103391 (n + 1)).toNat) (A290422 n)

end

end A290418.P3340019490356050538

namespace A290418

/-- `or(A001045(A103391(n+1)), A290422(n))` -/
def P3340019490356050538.Spec : Prop :=
  ∀ n, P3340019490356050538.a n = A290418 n

end A290418

/-! ## A290418.P2473438558105985708

`A052551(n+1)-A285773(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A290418

/-- `A052551(n+1)-A285773(n+1)` -/
def P2473438558105985708.Spec : Prop :=
  ∀ n, P2473438558105985708.a n = A290418 n

theorem P2473438558105985708.correct : P2473438558105985708.Spec := by
  intro n
  simp only [A290418]

end A290418

/-! ## A290418.P16147148126864514647

`A126646(A123108(n+1))-A285773(n+1)`
-/

namespace A290418.P16147148126864514647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A123108 (n + 1)).toNat - A285773 (n + 1)

end

end A290418.P16147148126864514647

namespace A290418

/-- `A126646(A123108(n+1))-A285773(n+1)` -/
def P16147148126864514647.Spec : Prop :=
  ∀ n, P16147148126864514647.a n = A290418 n

end A290418

/-! ## A290418.P15672817241725934764

`and(A052551(n), A290230(n+1))`
-/

namespace A290418.P15672817241725934764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 n) (A290230 (n + 1))

end

end A290418.P15672817241725934764

namespace A290418

/-- `and(A052551(n), A290230(n+1))` -/
def P15672817241725934764.Spec : Prop :=
  ∀ n, P15672817241725934764.a n = A290418 n

end A290418

/-!
# A290419: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

The programs for A290419, there is no canonical definition to state claims against.
-/

/-! ## A290419.P10269665538425531883

`or(A285944(n), A290423(n))`
-/

namespace A290419.P10269665538425531883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285944 n) (A290423 n)

end

end A290419.P10269665538425531883

/-! ## A290419.P7619986029401932302

`or(A287745(n), A290423(n))`
-/

namespace A290419.P7619986029401932302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A287745 n) (A290423 n)

end

end A290419.P7619986029401932302

/-! ## A290419.P8866444214831912613

`2^ceil(n/2)*A030101(A290418(n))`
-/

namespace A290419.P8866444214831912613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) * (A030101 (A290418 n).toNat : ℚ)

end

end A290419.P8866444214831912613

/-! ## A290419.P5406093065193097565

`A030109(A290418(2*n)+A290418(n)+1)`
-/

namespace A290419.P5406093065193097565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A290418 (2 * n) + A290418 n + 1).toNat

end

end A290419.P5406093065193097565

/-! ## A290419.P2719822518199406458

`A290674(n)%Δ[2^eq[1, ∑{digits}[2^n, #%2]]]`
-/

namespace A290419.P2719822518199406458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x % 2).sum

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290674 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A290419.P2719822518199406458

/-!
# A290420: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood.

The programs for A290420, there is no canonical definition to state claims against.
-/

/-! ## A290420.P8639116454677933030

`A007088(A290422(n))`
-/

namespace A290420.P8639116454677933030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290422 n).toNat

end

end A290420.P8639116454677933030

/-! ## A290420.P13383229653913296895

`A007088(and(A052551(n), A290296(n+1)))`
-/

namespace A290420.P13383229653913296895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A052551 n) (A290296 (n + 1))).toNat

end

end A290420.P13383229653913296895

/-! ## A290420.P10333134453148235919

`A007088(A052551(n+1)-A285479(n+1))`
-/

namespace A290420.P10333134453148235919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A052551 (n + 1) - A285479 (n + 1)).toNat

end

end A290420.P10333134453148235919

/-! ## A290420.P15775566889784837577

`A007088(A290296(n+1)%A152166(n+1))`
-/

namespace A290420.P15775566889784837577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A290296 (n + 1)) (A152166 (n + 1))).toNat

end

end A290420.P15775566889784837577

/-! ## A290420.P203231426434686948

`A305989(abs(A290423(n)/A152166(n)))`
-/

namespace A290420.P203231426434686948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway |(A290423 n : ℚ) / (A152166 n : ℚ)|).toNat

end

end A290420.P203231426434686948

/-!
# A290421: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood.

The programs for A290421, there is no canonical definition to state claims against.
-/

/-! ## A290421.P3218249175803126537

`A007088(A290423(n))`
-/

namespace A290421.P3218249175803126537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290423 n).toNat

end

end A290421.P3218249175803126537

/-! ## A290421.P9785479505869811689

`A185544(2*A290423(n))`
-/

namespace A290421.P9785479505869811689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290423 n).toNat

end

end A290421.P9785479505869811689

/-! ## A290421.P1769059064074867468

`A290677(A324680(n)+n)`
-/

namespace A290421.P1769059064074867468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290677 (A324680 n + (n : ℤ)).toNat

end

end A290421.P1769059064074867468

/-!
# A290422: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood.

The programs for A290422, there is no canonical definition to state claims against.
-/

/-! ## A290422.P7134472891465882138

`A052551(n+1)-A285479(n+1)`
-/

namespace A290422.P7134472891465882138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (n + 1) - A285479 (n + 1)

end

end A290422.P7134472891465882138

/-! ## A290422.P5401004444484365131

`xor(A052551(char[1]+1+n), A285479(n+1))`
-/

namespace A290422.P5401004444484365131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052551 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (A285479 (n + 1))

end

end A290422.P5401004444484365131

/-! ## A290422.P11397679639064205156

`and(A052551(n), A290296(n+1))`
-/

namespace A290422.P11397679639064205156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 n) (A290296 (n + 1))

end

end A290422.P11397679639064205156

/-! ## A290422.P3877131350458077123

`A290296(n+1)%A152166(n+1)`
-/

namespace A290422.P3877131350458077123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290296 (n + 1)) (A152166 (n + 1))

end

end A290422.P3877131350458077123

/-! ## A290422.P10873564429454336102

`A325401(abs(A290423(n)/A152166(n)))`
-/

namespace A290422.P10873564429454336102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway |(A290423 n : ℚ) / (A152166 n : ℚ)|).toNat

end

end A290422.P10873564429454336102

/-!
# A290423: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood.

The programs for A290423, there is no canonical definition to state claims against.
-/

/-! ## A290423.P8680606159034530885

`A036044(A290422(2*n)-A290422(n))`
-/

namespace A290423.P8680606159034530885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A290422 (2 * n) - A290422 n).toNat

end

end A290423.P8680606159034530885

/-! ## A290423.P9204056849163941432

`or(record[A193562(n)], A290679(n))`
-/

namespace A290423.P9204056849163941432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A290679 n)

end

end A290423.P9204056849163941432

/-! ## A290423.P1057224056685967456

`record[Δ[A048896(A001611(n))]]`
-/

namespace A290423.P1057224056685967456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A001611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290423.P1057224056685967456

/-! ## A290423.P13859958114561675123

`record[Δ[A048896(A048577(n))]]`
-/

namespace A290423.P13859958114561675123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A048577 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290423.P13859958114561675123

/-!
# A290428: Array read by antidiagonals: T(n,k) is the number of graphs with n edges and k vertices, allowing loops and multi-edges.

The programs for A290428, there is no canonical definition to state claims against.
-/

/-! ## A290428.P8144740218762625696

`A257564(5*A138107(n))`
-/

namespace A290428.P8144740218762625696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (5 * A138107 n).toNat

end

end A290428.P8144740218762625696

/-! ## A290428.P4313700627954513771

`A241216(2^A138352(n))`
-/

namespace A290428.P4313700627954513771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241216 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A138352 n : ℤ))).toNat

end

end A290428.P4313700627954513771

/-! ## A290428.P10430865271990759826

`A241216(2^A277239(n))`
-/

namespace A290428.P10430865271990759826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241216 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A277239 n : ℤ))).toNat

end

end A290428.P10430865271990759826

/-! ## A290428.P7912620654612727209

`∑{e}[A007582(A119339(n)), #]`
-/

namespace A290428.P7912620654612727209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (A119339 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A290428.P7912620654612727209

/-! ## A290428.P3965410082691477316

`A136868(n)-A178798(A035607(n))`
-/

namespace A290428.P3965410082691477316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136868 n - A178798 (A035607 n).toNat

end

end A290428.P3965410082691477316

/-!
# A290429: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of (Sum_{j>=0} x^(j*(j+1)*(j+2)/6))^k.

The programs for A290429, there is no canonical definition to state claims against.
-/

/-! ## A290429.P5465457708490374959

`A000161(A222639(n))*A045847(n)`
-/

namespace A290429.P5465457708490374959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A222639 n).toNat * A045847 n

end

end A290429.P5465457708490374959

/-! ## A290429.P5559385994327585899

`A045847(n)-A139797(A002654(A162375(n+1)))`
-/

namespace A290429.P5559385994327585899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 n - A139797 (A002654 (A162375 (n + 1)).toNat).toNat

end

end A290429.P5559385994327585899

/-! ## A290429.P14438259493606705052

`A045847(n)-A025439(A308629(n+1))`
-/

namespace A290429.P14438259493606705052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 n - A025439 (A308629 (n + 1)).toNat

end

end A290429.P14438259493606705052

/-! ## A290429.P8483065788065563424

`A045847(n)%(A151510(n)+1)`
-/

namespace A290429.P8483065788065563424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045847 n) (A151510 n + 1)

end

end A290429.P8483065788065563424

/-! ## A290429.P4028358068314007831

`A045847(n)*A132823(A140334(n))`
-/

namespace A290429.P4028358068314007831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 n * A132823 (A140334 n).toNat

end

end A290429.P4028358068314007831

/-!
# A290430: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of (Sum_{j>=0} x^(j*(j+1)*(2*j+1)/6))^k.

The programs for A290430, there is no canonical definition to state claims against.
-/

/-! ## A290430.P11342436925555342033

`A290054(n)+A090750(A361239(n))`
-/

namespace A290430.P11342436925555342033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 n + A090750 (A361239 n).toNat

end

end A290430.P11342436925555342033

/-! ## A290430.P128013816800059815

`A052553(n)^A252648(A119900(n))`
-/

namespace A290430.P128013816800059815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052553 n : ℚ) ^ (A252648 (A119900 n).toNat : ℤ)

end

end A290430.P128013816800059815

/-! ## A290430.P6885486272889641852

`A290054(n)^A252648(A119900(n))`
-/

namespace A290430.P6885486272889641852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290054 n : ℚ) ^ (A252648 (A119900 n).toNat : ℤ)

end

end A290430.P6885486272889641852

/-! ## A290430.P13379625160500800

`or(A052553(n), A079979(A102480(n)))`
-/

namespace A290430.P13379625160500800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052553 n) (A079979 (A102480 n).toNat)

end

end A290430.P13379625160500800

/-! ## A290430.P7838548833995356470

`or(A079979(A102480(n)), A290054(n))`
-/

namespace A290430.P7838548833995356470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079979 (A102480 n).toNat) (A290054 n)

end

end A290430.P7838548833995356470

/-!
# A290431: Numbers k such that (73*10^k + 413)/9 is prime.

The programs for A290431, there is no canonical definition to state claims against.
-/

/-! ## A290431.P1973943881851791418

`record[A193739(A222548(n+1)%A090035(n))]`
-/

namespace A290431.P1973943881851791418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (Int.tmod (A222548 (n + 1)) (A090035 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290431.P1973943881851791418

/-!
# A290432: Numbers k such that 9*10^k + 59 is prime.

The programs for A290432, there is no canonical definition to state claims against.
-/

/-! ## A290432.P12382062963688104423

`eq[A019586(n+1), A305385(n+1)]`
-/

namespace A290432.P12382062963688104423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305385 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290432.P12382062963688104423

/-! ## A290432.P1940418360969610420

`A277903(A007097(n))+A065770(n+2)`
-/

namespace A290432.P1940418360969610420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A007097 n).toNat + A065770 (n + 2)

end

end A290432.P1940418360969610420

/-! ## A290432.P18097099516044541186

`A317143(A008965(n+1))+A194548(n+1)`
-/

namespace A290432.P18097099516044541186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317143 (A008965 (n + 1)).toNat + A194548 (n + 1)

end

end A290432.P18097099516044541186

/-!
# A290434: Semiprimes of the form pq such that p+q+1 is prime.

The programs for A290434, the canonical program `A290434.P16415859728572519795` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290434 has offset 1).

The definition of A290434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2727 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290434.P16415859728572519795

`eq[A000010(A001414(n+1)+1), A288654(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A290434

/-- `eq[A000010(A001414(n+1)+1), A288654(n+1)]+1` -/
def P16415859728572519795.Spec : Prop :=
  ∀ n, (P16415859728572519795.a n : ℤ) = A290434 (n + 1)

theorem P16415859728572519795.correct : P16415859728572519795.Spec := by
  intro n
  simp only [A290434, Nat.add_sub_cancel]

end A290434

/-! ## A290434.P1211208925627671978

`eq[A001222(A344753(n+2)), A051709(n+2)]+2`
-/

namespace A290434.P1211208925627671978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A344753 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A290434.P1211208925627671978

namespace A290434

/-- `eq[A001222(A344753(n+2)), A051709(n+2)]+2` -/
def P1211208925627671978.Spec : Prop :=
  ∀ n, (P1211208925627671978.a n : ℤ) = A290434 (n + 1)

end A290434

/-! ## A290434.P8754785589774864156

`lt[A013632(A107463(n)), A105700(n)]`
-/

namespace A290434.P8754785589774864156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A107463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290434.P8754785589774864156

namespace A290434

/-- `lt[A013632(A107463(n)), A105700(n)]` -/
def P8754785589774864156.Spec : Prop :=
  ∀ n, (P8754785589774864156.a n : ℤ) = A290434 (n + 1)

end A290434

/-! ## A290434.P6226708870737788445

`eq[A000005(A003415(n)+1), A105700(n)]`
-/

namespace A290434.P6226708870737788445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003415 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290434.P6226708870737788445

namespace A290434

/-- `eq[A000005(A003415(n)+1), A105700(n)]` -/
def P6226708870737788445.Spec : Prop :=
  ∀ n, (P6226708870737788445.a n : ℤ) = A290434 (n + 1)

end A290434

/-! ## A290434.P4900469504955812597

`eq[A105700(n), A181819(A107463(n)+1)]`
-/

namespace A290434.P4900469504955812597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A107463 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290434.P4900469504955812597

namespace A290434

/-- `eq[A105700(n), A181819(A107463(n)+1)]` -/
def P4900469504955812597.Spec : Prop :=
  ∀ n, (P4900469504955812597.a n : ℤ) = A290434 (n + 1)

end A290434

/-! ## A290434.P12924891768464929106

`lt[A107463(A107463(n)+1), A105700(n)]`
-/

namespace A290434.P12924891768464929106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A107463 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290434.P12924891768464929106

namespace A290434

/-- `lt[A107463(A107463(n)+1), A105700(n)]` -/
def P12924891768464929106.Spec : Prop :=
  ∀ n, (P12924891768464929106.a n : ℤ) = A290434 (n + 1)

end A290434

/-! ## A290434.P17496379922497773874

`lt[A013632(A003415(n)), A105700(n)]`
-/

namespace A290434.P17496379922497773874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290434.P17496379922497773874

namespace A290434

/-- `lt[A013632(A003415(n)), A105700(n)]` -/
def P17496379922497773874.Spec : Prop :=
  ∀ n, (P17496379922497773874.a n : ℤ) = A290434 (n + 1)

end A290434

/-! ## A290434.P3513483410671652618

`lt[A003415(A003415(n)+1), A105700(n)]`
-/

namespace A290434.P3513483410671652618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290434.P3513483410671652618

namespace A290434

/-- `lt[A003415(A003415(n)+1), A105700(n)]` -/
def P3513483410671652618.Spec : Prop :=
  ∀ n, (P3513483410671652618.a n : ℤ) = A290434 (n + 1)

end A290434

/-!
# A290435: Semiprimes of the form pq where p < q and p+q+1 is prime.

The programs for A290435, there is no canonical definition to state claims against.
-/

/-! ## A290435.P4168911179005597324

`A291319(n+1)/2`
-/

namespace A290435.P4168911179005597324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291319 (n + 1) : ℚ) / 2

end

end A290435.P4168911179005597324

/-! ## A290435.P14578192317551146754

`filter[A290434(n+1), A008966(#)]`
-/

namespace A290435.P14578192317551146754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A290435.P14578192317551146754

/-! ## A290435.P11643509853166332425

`filter[A290434(n+1), A324903(#)]`
-/

namespace A290435.P11643509853166332425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A290435.P11643509853166332425

/-! ## A290435.P2389984794568774250

`filter[A037020(n+3), A359828(#)]`
-/

namespace A290435.P2389984794568774250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A290435.P2389984794568774250

/-! ## A290435.P16711339522198835374

`filter[A037020(n+3), A374128(#)]`
-/

namespace A290435.P16711339522198835374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A290435.P16711339522198835374

/-! ## A290435.P7668062273067800237

`filter[A308150(n+3), A374128(#)]`
-/

namespace A290435.P7668062273067800237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308150 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A290435.P7668062273067800237

/-! ## A290435.P12610812576548638830

`filter[A037020(n+1), A280710(#)]`
-/

namespace A290435.P12610812576548638830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A290435.P12610812576548638830

/-! ## A290435.P5442740678831582170

`filter[A290434(n+1), A049240(#)]`
-/

namespace A290435.P5442740678831582170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A290435.P5442740678831582170

/-! ## A290435.P2738433353500781369

`filter[A037020(n+1), A340370(#)]`
-/

namespace A290435.P2738433353500781369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A290435.P2738433353500781369

/-! ## A290435.P11457202952467553256

`filter[A037020(n+1), A353471(#)]`
-/

namespace A290435.P11457202952467553256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A290435.P11457202952467553256

/-! ## A290435.P3670420139039011690

`filter[A037020(n+1), A353480(#)]`
-/

namespace A290435.P3670420139039011690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A290435.P3670420139039011690

/-! ## A290435.P4248082132236595892

`filter[A037020(n+1), A353481(#)]`
-/

namespace A290435.P4248082132236595892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A290435.P4248082132236595892

/-! ## A290435.P1904255944140891430

`filter[A290434(n+1), A181183(#)]`
-/

namespace A290435.P1904255944140891430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A290435.P1904255944140891430

/-! ## A290435.P4678358425035805557

`filter[A290434(n+1), A262684(#)]`
-/

namespace A290435.P4678358425035805557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A290435.P4678358425035805557

/-! ## A290435.P14276914583588257628

`filter[A290434(n+1), A280710(#)]`
-/

namespace A290435.P14276914583588257628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A290435.P14276914583588257628

/-! ## A290435.P15868178779736457880

`filter[A290434(n+1), A295316(#)]`
-/

namespace A290435.P15868178779736457880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A290435.P15868178779736457880

/-! ## A290435.P12533361385128187839

`filter[A308150(n+1), A280710(#)]`
-/

namespace A290435.P12533361385128187839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A290435.P12533361385128187839

/-! ## A290435.P17709337895891222585

`filter[A290434(n+1), A323154(#)]`
-/

namespace A290435.P17709337895891222585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A290435.P17709337895891222585

/-! ## A290435.P15417777192799504387

`filter[A290434(n+1), A323239(#)]`
-/

namespace A290435.P15417777192799504387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A290435.P15417777192799504387

/-! ## A290435.P3365079547921119428

`filter[A290434(n+1), A324908(#)]`
-/

namespace A290435.P3365079547921119428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A290435.P3365079547921119428

/-!
# A290436: a(n) = A289676(3*n+1).

The programs for A290436, there is no canonical definition to state claims against.
-/

/-! ## A290436.P13285724669506317663

`A289676(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290436.P13285724669506317663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289676 (3 * n + 1)

end

end A290436.P13285724669506317663

/-! ## A290436.P12244725127651892008

`2^(n+1)-A290439(n)`
-/

namespace A290436.P12244725127651892008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A290439 n

end

end A290436.P12244725127651892008

/-! ## A290436.P18048116466942730466

`2^(n+1)-A289677(3*n+1)`
-/

namespace A290436.P18048116466942730466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A289677 (3 * n + 1)

end

end A290436.P18048116466942730466

/-! ## A290436.P4455574248787581878

`A048578(n)-(A290439(n)+1)`
-/

namespace A290436.P4455574248787581878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (A290439 n + 1)

end

end A290436.P4455574248787581878

/-! ## A290436.P1253162106107165992

`A126646(n)+1-A290439(n)`
-/

namespace A290436.P1253162106107165992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (1 - A290439 n)

end

end A290436.P1253162106107165992

/-!
# A290437: a(n) = A289676(3*n+2).

The programs for A290437, there is no canonical definition to state claims against.
-/

/-! ## A290437.P4813127426584150719

`A289676(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290437.P4813127426584150719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289676 (3 * n + 2)

end

end A290437.P4813127426584150719

/-! ## A290437.P13864723930772338656

`2^(n+1)-A290440(n)`
-/

namespace A290437.P13864723930772338656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A290440 n

end

end A290437.P13864723930772338656

/-! ## A290437.P10604617885922529338

`A289676(A016789(n))+char[25]`
-/

namespace A290437.P10604617885922529338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289676 (A016789 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A290437.P10604617885922529338

/-! ## A290437.P15220001028176954742

`and(-A290440(n), A126646(n))`
-/

namespace A290437.P15220001028176954742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A290440 n) (A126646 n)

end

end A290437.P15220001028176954742

/-! ## A290437.P12277976999745320384

`A000079(n+1)-A289677(3*n+2)`
-/

namespace A290437.P12277976999745320384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A289677 (3 * n + 2)

end

end A290437.P12277976999745320384

/-!
# A290438: a(n) = A289676(3*n).

The programs for A290438, there is no canonical definition to state claims against.
-/

/-! ## A290438.P10028113020532795895

`A289676(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290438.P10028113020532795895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289676 (3 * (n + 1))

end

end A290438.P10028113020532795895

/-! ## A290438.P16286735612331612855

`2^(n+1)-A290441(n+1)`
-/

namespace A290438.P16286735612331612855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A290441 (n + 1)

end

end A290438.P16286735612331612855

/-! ## A290438.P8525712398220992678

`and(-A290441(n+1), A126646(n))`
-/

namespace A290438.P8525712398220992678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A290441 (n + 1)) (A126646 n)

end

end A290438.P8525712398220992678

/-! ## A290438.P11051203952876625169

`abs(A000079(n+1)-A290441(n+1))`
-/

namespace A290438.P11051203952876625169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) - A290441 (n + 1)|

end

end A290438.P11051203952876625169

/-! ## A290438.P5721683721254820295

`and(-A289677(3*(n+1)), A126646(n))`
-/

namespace A290438.P5721683721254820295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A289677 (3 * (n + 1))) (A126646 n)

end

end A290438.P5721683721254820295

/-!
# A290439: a(n) = A289677(3*n+1).

The programs for A290439, there is no canonical definition to state claims against.
-/

/-! ## A290439.P12782425158091288435

`A289677(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290439.P12782425158091288435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289677 (3 * n + 1)

end

end A290439.P12782425158091288435

/-! ## A290439.P1691587119265970518

`2^(n+1)-A290436(n)`
-/

namespace A290439.P1691587119265970518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A290436 n

end

end A290439.P1691587119265970518

/-! ## A290439.P2214828487069659557

`record[A289677(A087507(n))]`
-/

namespace A290439.P2214828487069659557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289677 (A087507 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290439.P2214828487069659557

/-! ## A290439.P9214420651259470242

`record[A289677(A074066(n+1))]`
-/

namespace A290439.P9214420651259470242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289677 (A074066 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290439.P9214420651259470242

/-! ## A290439.P6373150926465284644

`record[A289677(A123684(n+1))]`
-/

namespace A290439.P6373150926465284644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289677 (A123684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290439.P6373150926465284644

/-!
# A290440: a(n) = A289677(3*n+2).

The programs for A290440, there is no canonical definition to state claims against.
-/

/-! ## A290440.P9375021462880103026

`A289677(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290440.P9375021462880103026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289677 (3 * n + 2)

end

end A290440.P9375021462880103026

/-! ## A290440.P7590244280896680633

`2^(n+1)-A290437(n)`
-/

namespace A290440.P7590244280896680633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A290437 n

end

end A290440.P7590244280896680633

/-! ## A290440.P7666235820407586142

`abs(∏[-a(n-1)])-A289676(3*n+2)` with `a(0)=-2`
-/

namespace A290440.P7666235820407586142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j| - A289676 (3 * n + 2)

end

end A290440.P7666235820407586142

/-! ## A290440.P852484371393641323

`record[A289677(A014682(n+1))]`
-/

namespace A290440.P852484371393641323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289677 (A014682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290440.P852484371393641323

/-! ## A290440.P9641884555205962163

`A289677(A016789(n))+char[30]`
-/

namespace A290440.P9641884555205962163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289677 (A016789 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A290440.P9641884555205962163

/-!
# A290441: a(n) = A289677(3*n).

The programs for A290441, there is no canonical definition to state claims against.
-/

/-! ## A290441.P11792737296791130595

`A289677(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290441.P11792737296791130595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289677 (3 * (n + 1))

end

end A290441.P11792737296791130595

/-! ## A290441.P8696000703326900685

`2^(n+1)-A290438(n+1)`
-/

namespace A290441.P8696000703326900685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A290438 (n + 1)

end

end A290441.P8696000703326900685

/-! ## A290441.P3158695825813563841

`record[A289677(A160943(n+1))]`
-/

namespace A290441.P3158695825813563841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289677 (A160943 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290441.P3158695825813563841

/-! ## A290441.P18040549175909619698

`record[A289677(A257502(n)+2)]`
-/

namespace A290441.P18040549175909619698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289677 (A257502 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290441.P18040549175909619698

/-! ## A290441.P3840032373647883815

`record[A289677(Δ[A031940(n+1)])]`
-/

namespace A290441.P3840032373647883815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289677 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290441.P3840032373647883815

/-!
# A290442: a(n) = Catalan(n-1)*Motzkin(n).

The programs for A290442, there is no canonical definition to state claims against.
-/

/-! ## A290442.P17086267573748869918

`Δ[A086615(n)]*A000108(n)`
-/

namespace A290442.P17086267573748869918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000108 n

end

end A290442.P17086267573748869918

/-! ## A290442.P11336292741596606127

`A000108(n)*record[A064645(n)]`
-/

namespace A290442.P11336292741596606127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290442.P11336292741596606127

/-! ## A290442.P3075831883018104887

`A000108(n)*record[A168049(n)]`
-/

namespace A290442.P3075831883018104887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290442.P3075831883018104887

/-! ## A290442.P8112647737738889373

`A000108(n)*record[A247364(n)]`
-/

namespace A290442.P8112647737738889373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290442.P8112647737738889373

/-! ## A290442.P5339008582753233969

`A000108(n)*record[A258709(n)]`
-/

namespace A290442.P5339008582753233969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290442.P5339008582753233969

/-! ## A290442.P4150420522066189628

`A000108(n)*A001006(n+1)`
-/

namespace A290442.P4150420522066189628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001006 (n + 1)

end

end A290442.P4150420522066189628

/-! ## A290442.P9787900901001498710

`abs(A001006(n+1)*A168491(n))`
-/

namespace A290442.P9787900901001498710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001006 (n + 1) * A168491 n|

end

end A290442.P9787900901001498710

/-! ## A290442.P12962981073870473267

`(∑[A002026(n)]+1)*A000108(n)`
-/

namespace A290442.P12962981073870473267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A000108 n

end

end A290442.P12962981073870473267

/-! ## A290442.P6464064579252401746

`A001006(n+1)*A039599(∑[n])`
-/

namespace A290442.P6464064579252401746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290442.P6464064579252401746

/-! ## A290442.P2318391956770428048

`A001006(n+1)*A085880(∑[n])`
-/

namespace A290442.P2318391956770428048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) * A085880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290442.P2318391956770428048

/-!
# A290443: a(n) = Catalan(n)*Motzkin(n-1).

The programs for A290443, there is no canonical definition to state claims against.
-/

/-! ## A290443.P11621594066000001363

`∑[A071724(n)]*A001006(n)`
-/

namespace A290443.P11621594066000001363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001006 n

end

end A290443.P11621594066000001363

/-! ## A290443.P3270504427456507817

`record[A097331(n)]*A001006(n)`
-/

namespace A290443.P3270504427456507817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001006 n

end

end A290443.P3270504427456507817

/-! ## A290443.P2784981674336738178

`record[A126120(n)]*A001006(n)`
-/

namespace A290443.P2784981674336738178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001006 n

end

end A290443.P2784981674336738178

/-! ## A290443.P332953660822463307

`record[A120588(n)*A168049(n)]`
-/

namespace A290443.P332953660822463307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A168049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290443.P332953660822463307

/-! ## A290443.P2981630174693276479

`A000108(n+1)*A001006(n)`
-/

namespace A290443.P2981630174693276479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A001006 n

end

end A290443.P2981630174693276479

/-! ## A290443.P3010290291510321488

`A001006(n)*A026008(2*n)`
-/

namespace A290443.P3010290291510321488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A026008 (2 * n)

end

end A290443.P3010290291510321488

/-! ## A290443.P16213925996223031249

`A000108(n+1)*A086246(n+2)`
-/

namespace A290443.P16213925996223031249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A086246 (n + 2)

end

end A290443.P16213925996223031249

/-! ## A290443.P1801626007418125009

`A000108(n+1)*A168049(n+2)`
-/

namespace A290443.P1801626007418125009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A168049 (n + 2)

end

end A290443.P1801626007418125009

/-! ## A290443.P6570738686353375016

`abs(A000108(n+1)*A166587(n+1))`
-/

namespace A290443.P6570738686353375016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 (n + 1) * A166587 (n + 1)|

end

end A290443.P6570738686353375016

/-! ## A290443.P399881273792101698

`abs(A166587(n+1)*A168491(n+1))`
-/

namespace A290443.P399881273792101698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1) * A168491 (n + 1)|

end

end A290443.P399881273792101698

/-!
# A290444: a(n) = Bell(n)*Motzkin(n).

The programs for A290444, there is no canonical definition to state claims against.
-/

/-! ## A290444.P93068751057450183

`A000110(n)*A001006(n)`
-/

namespace A290444.P93068751057450183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A001006 n

end

end A290444.P93068751057450183

/-! ## A290444.P12499389123203062993

`A001006(n)*A011971(∑[n])`
-/

namespace A290444.P12499389123203062993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290444.P12499389123203062993

/-! ## A290444.P13575252912583174199

`A001006(n)*A033306(∑[n])`
-/

namespace A290444.P13575252912583174199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A033306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290444.P13575252912583174199

/-! ## A290444.P9173069259345073738

`A000110(n)*A064189(∑[n])`
-/

namespace A290444.P9173069259345073738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A064189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290444.P9173069259345073738

/-! ## A290444.P16565348402186299212

`A000110(n)*A064645(∑[n])`
-/

namespace A290444.P16565348402186299212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A064645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290444.P16565348402186299212

/-!
# A290445: a(n) = Bell(n-1)*Motzkin(n).

The programs for A290445, there is no canonical definition to state claims against.
-/

/-! ## A290445.P14867820962206380370

`Δ[A086615(n)]*A000110(n)`
-/

namespace A290445.P14867820962206380370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000110 n

end

end A290445.P14867820962206380370

/-! ## A290445.P4559918453102807432

`record[A064645(n)]*A000110(n)`
-/

namespace A290445.P4559918453102807432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000110 n

end

end A290445.P4559918453102807432

/-! ## A290445.P8182516231140409612

`A000110(n)*A001006(n+1)`
-/

namespace A290445.P8182516231140409612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A001006 (n + 1)

end

end A290445.P8182516231140409612

/-! ## A290445.P11821841439294469561

`abs(record[A258709(n)]*A292935(n))`
-/

namespace A290445.P11821841439294469561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A292935 n|

end

end A290445.P11821841439294469561

/-! ## A290445.P14851111236642051063

`Δ[A086615(n)]*A011971(∑[n])`
-/

namespace A290445.P14851111236642051063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086615 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011971 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A290445.P14851111236642051063

/-!
# A290446: a(n) = Bell(n)*Motzkin(n-1).

The programs for A290446, there is no canonical definition to state claims against.
-/

/-! ## A290446.P11841212071278295109

`A001006(n)*A011972(∑[n])`
-/

namespace A290446.P11841212071278295109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A011972 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290446.P11841212071278295109

/-! ## A290446.P14578619243122806188

`record[A095149(n)]*A001006(n)`
-/

namespace A290446.P14578619243122806188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001006 n

end

end A290446.P14578619243122806188

/-! ## A290446.P16244776943892156866

`record[A205574(n)]*A001006(n)`
-/

namespace A290446.P16244776943892156866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001006 n

end

end A290446.P16244776943892156866

/-! ## A290446.P11907252086631963323

`A000110(n+1)*A001006(n)`
-/

namespace A290446.P11907252086631963323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) * A001006 n

end

end A290446.P11907252086631963323

/-! ## A290446.P6826460411675792452

`A000110(n+1)*A064189(∑[n])`
-/

namespace A290446.P6826460411675792452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) * A064189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290446.P6826460411675792452

/-!
# A290447: Consider n equally spaced points along a line and join every pair of points by a semicircle above the line; a(n) is the number of intersection points.

The programs for A290447, there is no canonical definition to state claims against.
-/

/-! ## A290447.P15003335718214412992

`C(n+1, 4)-A290461(n+1)`
-/

namespace A290447.P15003335718214412992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 4 : ℤ) - A290461 (n + 1)

end

end A290447.P15003335718214412992

/-! ## A290447.P3679055653955973711

`A000332(n+1)-A290461(n+1)`
-/

namespace A290447.P3679055653955973711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) - A290461 (n + 1)

end

end A290447.P3679055653955973711

/-! ## A290447.P5501625769142224306

`A050534(n)/3-A290461(n+1)`
-/

namespace A290447.P5501625769142224306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050534 n : ℚ) / 3 - (A290461 (n + 1) : ℚ)

end

end A290447.P5501625769142224306

/-! ## A290447.P16726223916943569411

`Δ[A000389(n+1)]-A290461(n+1)`
-/

namespace A290447.P16726223916943569411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A290461 (n + 1)

end

end A290447.P16726223916943569411

/-! ## A290447.P864780642126312279

`A000127(n+1)-(A290461(n+1)+A000124(n))`
-/

namespace A290447.P864780642126312279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) - (A290461 (n + 1) + A000124 n)

end

end A290447.P864780642126312279

/-! ## A290447.P18423346844695201176

`A290866(n+1)-A290865(n+1)`
-/

namespace A290447.P18423346844695201176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290866 (n + 1) - A290865 (n + 1)

end

end A290447.P18423346844695201176

/-! ## A290447.P13852056192920918582

`A290866(n+1)%(A290865(n+1)+A000038(n))`
-/

namespace A290447.P13852056192920918582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290866 (n + 1)) (A290865 (n + 1) + A000038 n)

end

end A290447.P13852056192920918582

/-! ## A290447.P11849160587363715541

`A006561(n+1)-A290465(n+1)`
-/

namespace A290447.P11849160587363715541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 1) - A290465 (n + 1)

end

end A290447.P11849160587363715541

/-! ## A290447.P13033658449101944490

`A007569(n+1)-(A290465(n+1)+n+1)`
-/

namespace A290447.P13033658449101944490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007569 (n + 1) - (A290465 (n + 1) + (n + 1 : ℤ))

end

end A290447.P13033658449101944490

/-!
# A290448: Triangle read by rows: T(n,k) = (Eulerian(n+1,k)-binomial(n,k))/2, for 0 <= k <= n.

The programs for A290448, there is no canonical definition to state claims against.
-/

/-! ## A290448.P7491466255583086115

`A141689(n+1)-A007318(n)`
-/

namespace A290448.P7491466255583086115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) - A007318 n

end

end A290448.P7491466255583086115

/-! ## A290448.P9826875098413269701

`A008292(n+1)-A141689(n+1)`
-/

namespace A290448.P9826875098413269701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) - A141689 (n + 1)

end

end A290448.P9826875098413269701

/-! ## A290448.P14304622659887658149

`A168517(n)-A060187(n+1)`
-/

namespace A290448.P14304622659887658149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168517 n - A060187 (n + 1)

end

end A290448.P14304622659887658149

/-! ## A290448.P10457230168667217947

`A060187(n+1)-A168551(n)`
-/

namespace A290448.P10457230168667217947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) - A168551 n

end

end A290448.P10457230168667217947

/-! ## A290448.P1505252647103659633

`(A168517(n)-A168551(n))/2`
-/

namespace A290448.P1505252647103659633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168517 n - A168551 n : ℚ) / 2

end

end A290448.P1505252647103659633

/-! ## A290448.P12979973434278293578

`(A168551(n)-A168552(n))/2`
-/

namespace A290448.P12979973434278293578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168551 n - A168552 n : ℚ) / 2

end

end A290448.P12979973434278293578

/-! ## A290448.P3140271925044352361

`A168523(n)-A168517(n)`
-/

namespace A290448.P3140271925044352361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168523 n - A168517 n

end

end A290448.P3140271925044352361

/-! ## A290448.P11858222793391385049

`A168517(n)%A138076(n)`
-/

namespace A290448.P11858222793391385049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168517 n) (A138076 n)

end

end A290448.P11858222793391385049

/-! ## A290448.P9523605699786064254

`abs(A138076(n))-A168551(n)`
-/

namespace A290448.P9523605699786064254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138076 n| - A168551 n

end

end A290448.P9523605699786064254

/-! ## A290448.P18123872266874701887

`(A168524(n)-A168523(n))/2`
-/

namespace A290448.P18123872266874701887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168524 n - A168523 n : ℚ) / 2

end

end A290448.P18123872266874701887

/-! ## A290448.P2357312792967660604

`A154334(n)-A147565(n)`
-/

namespace A290448.P2357312792967660604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154334 n - A147565 n

end

end A290448.P2357312792967660604

/-!
# A290449: Square roots of terms in A238237.

The programs for A290449, there is no canonical definition to state claims against.
-/

/-! ## A290449.P17666051895823110901

`sqrt(A238237(n+1))`
-/

namespace A290449.P17666051895823110901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A238237 (n + 1) : ℝ)

end

end A290449.P17666051895823110901

/-! ## A290449.P12599421731341476779

`root(A238237(n+1), lcm(2, A033999(n)))`
-/

namespace A290449.P12599421731341476779
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238237 (n + 1) : ℝ) ^ (1 / (Int.lcm 2 (A033999 n) : ℝ))

end

end A290449.P12599421731341476779

/-! ## A290449.P16730221730900072005

`root(A238237(n+1), A001316(A001316(n)))`
-/

namespace A290449.P16730221730900072005
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238237 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A290449.P16730221730900072005

/-! ## A290449.P2568933186411889087

`root(A238237(n+1), 2%A118938(n+1))`
-/

namespace A290449.P2568933186411889087
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238237 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A118938 (n + 1)) : ℝ))

end

end A290449.P2568933186411889087

/-! ## A290449.P12664292952192958416

`root(A238237(n+1), ratio[A000079(n)])`
-/

namespace A290449.P12664292952192958416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238237 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A290449.P12664292952192958416

/-!
# A290450: Primes with property that the next prime has the same last digit.

The programs for A290450, the canonical program `A290450.P10399462195155768375` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290450 has offset 1).

The definition of A290450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290450.P7665135461230287538

`A000040(A107730(n+1))`
-/

namespace A290450.P7665135461230287538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107730 (n + 1)).toNat

end

end A290450.P7665135461230287538

namespace A290450

/-- `A000040(A107730(n+1))` -/
def P7665135461230287538.Spec : Prop :=
  ∀ n, P7665135461230287538.a n = A290450 (n + 1)

end A290450

/-! ## A290450.P8482413565610622980

`A000040(eq[5, gcd(5, A001223(n+1))]+1)`
-/

namespace A290450.P8482413565610622980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A001223 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A290450.P8482413565610622980

namespace A290450

/-- `A000040(eq[5, gcd(5, A001223(n+1))]+1)` -/
def P8482413565610622980.Spec : Prop :=
  ∀ n, P8482413565610622980.a n = A290450 (n + 1)

end A290450

/-! ## A290450.P10399462195155768375

`p?[A076368(n+2)%5*A000040(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A290450

/-- `p?[A076368(n+2)%5*A000040(n+1)]` -/
def P10399462195155768375.Spec : Prop :=
  ∀ n, P10399462195155768375.a n = A290450 (n + 1)

theorem P10399462195155768375.correct : P10399462195155768375.Spec := by
  intro n
  simp only [A290450, Nat.add_sub_cancel]

end A290450

/-! ## A290450.P4594372988122363281

`p?[A000040(n+1)*A079998(A001223(n+1))]`
-/

namespace A290450.P4594372988122363281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A079998 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290450.P4594372988122363281

namespace A290450

/-- `p?[A000040(n+1)*A079998(A001223(n+1))]` -/
def P4594372988122363281.Spec : Prop :=
  ∀ n, P4594372988122363281.a n = A290450 (n + 1)

end A290450

/-! ## A290450.P16102014310658455822

`A000040(eq[A007652(n+2), A007652(n+1)]+1)`
-/

namespace A290450.P16102014310658455822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A290450.P16102014310658455822

namespace A290450

/-- `A000040(eq[A007652(n+2), A007652(n+1)]+1)` -/
def P16102014310658455822.Spec : Prop :=
  ∀ n, P16102014310658455822.a n = A290450 (n + 1)

end A290450

/-!
# A290451: Irregular triangle read by rows: row n (n>=1) lists the distinct areas of integer-sided triangles whose area equals n times their perimeter.

The programs for A290451, there is no canonical definition to state claims against.
-/

/-! ## A290451.P13591030720749663542

`∩[A031193(n+1), A333946(n+1)]`
-/

namespace A290451.P13591030720749663542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290451.P13591030720749663542

/-! ## A290451.P6630123673457410971

`∩[A193767(n+1), A333946(n+1)]`
-/

namespace A290451.P6630123673457410971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290451.P6630123673457410971

/-! ## A290451.P16663459624776931717

`∩[A047264(n+1)+1, A333946(n+1)]`
-/

namespace A290451.P16663459624776931717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047264 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290451.P16663459624776931717

/-! ## A290451.P3019067625980789719

`∩[A333946(n+1), A080712(A080712(n))]`
-/

namespace A290451.P3019067625980789719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080712 (A080712 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290451.P3019067625980789719

/-! ## A290451.P1885050936591153911

`∩[A000720(A000040(3*(n+1))), A333946(n+1)]`
-/

namespace A290451.P1885050936591153911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290451.P1885050936591153911

/-!
# A290452: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 2.

The programs for A290452, the canonical program `A290452.P1449433213042397141` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290452 has offset 0).

The definition of A290452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290452.P3688155150907491001

`A008949(n)%2`
-/

namespace A290452.P3688155150907491001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008949 n) 2

end

end A290452.P3688155150907491001

namespace A290452

/-- `A008949(n)%2` -/
def P3688155150907491001.Spec : Prop :=
  ∀ n, P3688155150907491001.a n = A290452 n

end A290452

/-! ## A290452.P16028666069542688846

`A029618(n)%2`
-/

namespace A290452.P16028666069542688846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029618 n) 2

end

end A290452.P16028666069542688846

namespace A290452

/-- `A029618(n)%2` -/
def P16028666069542688846.Spec : Prop :=
  ∀ n, P16028666069542688846.a n = A290452 n

end A290452

/-! ## A290452.P6952703867204486270

`A071919(n)%2`
-/

namespace A290452.P6952703867204486270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071919 n) 2

end

end A290452.P6952703867204486270

namespace A290452

/-- `A071919(n)%2` -/
def P6952703867204486270.Spec : Prop :=
  ∀ n, P6952703867204486270.a n = A290452 n

end A290452

/-! ## A290452.P17895974341238584164

`A193722(n)%2`
-/

namespace A290452.P17895974341238584164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193722 n) 2

end

end A290452.P17895974341238584164

namespace A290452

/-- `A193722(n)%2` -/
def P17895974341238584164.Spec : Prop :=
  ∀ n, P17895974341238584164.a n = A290452 n

end A290452

/-! ## A290452.P13602275164778350924

`A290454(n)%2`
-/

namespace A290452.P13602275164778350924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290454 n) 2

end

end A290452.P13602275164778350924

namespace A290452

/-- `A290454(n)%2` -/
def P13602275164778350924.Spec : Prop :=
  ∀ n, P13602275164778350924.a n = A290452 n

end A290452

/-! ## A290452.P18270904365141546577

`A290458(n)%2`
-/

namespace A290452.P18270904365141546577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290458 n) 2

end

end A290452.P18270904365141546577

namespace A290452

/-- `A290458(n)%2` -/
def P18270904365141546577.Spec : Prop :=
  ∀ n, P18270904365141546577.a n = A290452 n

end A290452

/-! ## A290452.P5234111727124359029

`A290460(n)%2`
-/

namespace A290452.P5234111727124359029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290460 n) 2

end

end A290452.P5234111727124359029

namespace A290452

/-- `A290460(n)%2` -/
def P5234111727124359029.Spec : Prop :=
  ∀ n, P5234111727124359029.a n = A290452 n

end A290452

/-! ## A290452.P16313557907520756634

`and(1, A110555(n))`
-/

namespace A290452.P16313557907520756634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A110555 n)

end

end A290452.P16313557907520756634

namespace A290452

/-- `and(1, A110555(n))` -/
def P16313557907520756634.Spec : Prop :=
  ∀ n, P16313557907520756634.a n = A290452 n

end A290452

/-! ## A290452.P6498982902752764959

`A204201(n+1)%2`
-/

namespace A290452.P6498982902752764959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204201 (n + 1)) 2

end

end A290452.P6498982902752764959

namespace A290452

/-- `A204201(n+1)%2` -/
def P6498982902752764959.Spec : Prop :=
  ∀ n, P6498982902752764959.a n = A290452 n

end A290452

/-! ## A290452.P10879816828077467579

`A204205(n+1)%2`
-/

namespace A290452.P10879816828077467579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204205 (n + 1)) 2

end

end A290452.P10879816828077467579

namespace A290452

/-- `A204205(n+1)%2` -/
def P10879816828077467579.Spec : Prop :=
  ∀ n, P10879816828077467579.a n = A290452 n

end A290452

/-! ## A290452.P8826270975475811253

`2-gcd(2, A293600(n+1))`
-/

namespace A290452.P8826270975475811253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A293600 (n + 1)) : ℤ)

end

end A290452.P8826270975475811253

namespace A290452

/-- `2-gcd(2, A293600(n+1))` -/
def P8826270975475811253.Spec : Prop :=
  ∀ n, P8826270975475811253.a n = A290452 n

end A290452

/-! ## A290452.P13948059191422066151

`A166279(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A290452.P13948059191422066151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A166279 n - a (n - 1)

end

end A290452.P13948059191422066151

namespace A290452

/-- `A166279(n)-a(n-1)` -/
def P13948059191422066151.Spec : Prop :=
  ∀ n, P13948059191422066151.a n = A290452 n

end A290452

/-! ## A290452.P5264604021289664666

`char[(n+1)*∑[A007318(n+1)]%2]`
-/

namespace A290452.P5264604021289664666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A290452.P5264604021289664666

namespace A290452

/-- `char[(n+1)*∑[A007318(n+1)]%2]` -/
def P5264604021289664666.Spec : Prop :=
  ∀ n, (P5264604021289664666.a n : ℤ) = A290452 n

end A290452

/-! ## A290452.P1449433213042397141

`A135528(A268234(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A290452

/-- `A135528(A268234(n))` -/
def P1449433213042397141.Spec : Prop :=
  ∀ n, P1449433213042397141.a n = A290452 n

theorem P1449433213042397141.correct : P1449433213042397141.Spec := by
  intro n
  simp only [A290452]

end A290452

/-! ## A290452.P9117412572737407903

`and(A051340(n), A071919(n))`
-/

namespace A290452.P9117412572737407903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051340 n) (A071919 n)

end

end A290452.P9117412572737407903

namespace A290452

/-- `and(A051340(n), A071919(n))` -/
def P9117412572737407903.Spec : Prop :=
  ∀ n, P9117412572737407903.a n = A290452 n

end A290452

/-! ## A290452.P11485972747774171580

`and(A008379(n), A290454(n))`
-/

namespace A290452.P11485972747774171580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008379 n) (A290454 n)

end

end A290452.P11485972747774171580

namespace A290452

/-- `and(A008379(n), A290454(n))` -/
def P11485972747774171580.Spec : Prop :=
  ∀ n, P11485972747774171580.a n = A290452 n

end A290452

/-! ## A290452.P1562637759784889125

`and(A016760(n), A290454(n))`
-/

namespace A290452.P1562637759784889125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A290454 n)

end

end A290452.P1562637759784889125

namespace A290452

/-- `and(A016760(n), A290454(n))` -/
def P1562637759784889125.Spec : Prop :=
  ∀ n, P1562637759784889125.a n = A290452 n

end A290452

/-! ## A290452.P14531392856952480765

`and(A016760(n), A290458(n))`
-/

namespace A290452.P14531392856952480765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A290458 n)

end

end A290452.P14531392856952480765

namespace A290452

/-- `and(A016760(n), A290458(n))` -/
def P14531392856952480765.Spec : Prop :=
  ∀ n, P14531392856952480765.a n = A290452 n

end A290452

/-! ## A290452.P5372127539805818687

`and(A016760(n), A290460(n))`
-/

namespace A290452.P5372127539805818687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A290460 n)

end

end A290452.P5372127539805818687

namespace A290452

/-- `and(A016760(n), A290460(n))` -/
def P5372127539805818687.Spec : Prop :=
  ∀ n, P5372127539805818687.a n = A290452 n

end A290452

/-! ## A290452.P3366951090025625596

`and(A017358(n), A290454(n))`
-/

namespace A290452.P3366951090025625596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017358 n) (A290454 n)

end

end A290452.P3366951090025625596

namespace A290452

/-- `and(A017358(n), A290454(n))` -/
def P3366951090025625596.Spec : Prop :=
  ∀ n, P3366951090025625596.a n = A290452 n

end A290452

/-!
# A290453: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 3.

The programs for A290453, there is no canonical definition to state claims against.
-/

/-! ## A290453.P13870644117649241153

`A123149(n)%3`
-/

namespace A290453.P13870644117649241153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123149 n) 3

end

end A290453.P13870644117649241153

/-! ## A290453.P7648058750055748036

`A290459(n)%3`
-/

namespace A290453.P7648058750055748036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290459 n) 3

end

end A290453.P7648058750055748036

/-! ## A290453.P3416414866694357408

`A173018(n)%3`
-/

namespace A290453.P3416414866694357408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 n) 3

end

end A290453.P3416414866694357408

/-! ## A290453.P12456138133493080396

`(A008518(n)-a(n-1))%3` with `a(0)=1, a(1)=1`
-/

namespace A290453.P12456138133493080396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (A008518 n - a (n - 1)) 3

end

end A290453.P12456138133493080396

/-! ## A290453.P4052319908513363843

`A123125(2-(1-n)%(n+1))%3`
-/

namespace A290453.P4052319908513363843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (2 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat) 3

end

end A290453.P4052319908513363843

/-! ## A290453.P2902755323747709416

`A010872(∑{digits}[A173018(n), #])`
-/

namespace A290453.P2902755323747709416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A290453.P2902755323747709416

/-! ## A290453.P17393660688412466498

`(A123125(n+1)+A000007(n))%3`
-/

namespace A290453.P17393660688412466498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (n + 1) + A000007 n) 3

end

end A290453.P17393660688412466498

/-! ## A290453.P3251728869499769928

`A123125(A061579(n))%3`
-/

namespace A290453.P3251728869499769928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A061579 n).toNat) 3

end

end A290453.P3251728869499769928

/-! ## A290453.P13380604829898207587

`A144697(n+3)%3`
-/

namespace A290453.P13380604829898207587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144697 (n + 3)) 3

end

end A290453.P13380604829898207587

/-! ## A290453.P9201776517573849626

`A010872(A123149(n))`
-/

namespace A290453.P9201776517573849626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A123149 n).toNat

end

end A290453.P9201776517573849626

/-! ## A290453.P9055465400145940516

`A123125(comp[A000108(n²)²])%3`
-/

namespace A290453.P9055465400145940516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) 3

end

end A290453.P9055465400145940516

/-!
# A290454: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 4.

The programs for A290454, there is no canonical definition to state claims against.
-/

/-! ## A290454.P12451423406474746362

`A290458(n)%4`
-/

namespace A290454.P12451423406474746362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290458 n) 4

end

end A290454.P12451423406474746362

/-! ## A290454.P3241823980517554335

`and(3, A290458(A028310(n)))`
-/

namespace A290454.P3241823980517554335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A290458 (A028310 n).toNat)

end

end A290454.P3241823980517554335

/-! ## A290454.P1046278544140583266

`and(A001538(n), A290458(n))`
-/

namespace A290454.P1046278544140583266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001538 n) (A290458 n)

end

end A290454.P1046278544140583266

/-! ## A290454.P10241314250717950451

`and(A001539(n), A290458(n))`
-/

namespace A290454.P10241314250717950451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001539 n) (A290458 n)

end

end A290454.P10241314250717950451

/-! ## A290454.P10543870228117832526

`and(A002148(n), A290458(n))`
-/

namespace A290454.P10543870228117832526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002148 n) (A290458 n)

end

end A290454.P10543870228117832526

/-! ## A290454.P15498417424673774362

`and(A004769(n), A290458(n))`
-/

namespace A290454.P15498417424673774362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004769 n) (A290458 n)

end

end A290454.P15498417424673774362

/-! ## A290454.P1556155029466177195

`and(A017101(n), A290458(n))`
-/

namespace A290454.P1556155029466177195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017101 n) (A290458 n)

end

end A290454.P1556155029466177195

/-! ## A290454.P929171065544424442

`and(A017103(n), A290458(n))`
-/

namespace A290454.P929171065544424442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017103 n) (A290458 n)

end

end A290454.P929171065544424442

/-! ## A290454.P10807935327644561655

`and(A017105(n), A290458(n))`
-/

namespace A290454.P10807935327644561655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017105 n) (A290458 n)

end

end A290454.P10807935327644561655

/-! ## A290454.P3765076700431123541

`and(A066322(n), A290458(n))`
-/

namespace A290454.P3765076700431123541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066322 n) (A290458 n)

end

end A290454.P3765076700431123541

/-! ## A290454.P10240868878977357817

`and(A086760(n), A290458(n))`
-/

namespace A290454.P10240868878977357817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086760 n) (A290458 n)

end

end A290454.P10240868878977357817

/-! ## A290454.P4006489667755129604

`and(A094200(n), A290458(n))`
-/

namespace A290454.P4006489667755129604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094200 n) (A290458 n)

end

end A290454.P4006489667755129604

/-! ## A290454.P11453755590544501832

`and(A007520(n+1), A290458(n))`
-/

namespace A290454.P11453755590544501832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007520 (n + 1)) (A290458 n)

end

end A290454.P11453755590544501832

/-! ## A290454.P4956571987162021547

`and(A028880(n+1), A290458(n))`
-/

namespace A290454.P4956571987162021547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028880 (n + 1)) (A290458 n)

end

end A290454.P4956571987162021547

/-! ## A290454.P842228816948898341

`and(A043023(n+1), A290458(n))`
-/

namespace A290454.P842228816948898341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043023 (n + 1)) (A290458 n)

end

end A290454.P842228816948898341

/-! ## A290454.P2115039391704286606

`and(A044072(n+1), A290458(n))`
-/

namespace A290454.P2115039391704286606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044072 (n + 1)) (A290458 n)

end

end A290454.P2115039391704286606

/-! ## A290454.P11979707885750095378

`and(A290458(n), A321509(n+1))`
-/

namespace A290454.P11979707885750095378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290458 n) (A321509 (n + 1))

end

end A290454.P11979707885750095378

/-! ## A290454.P13820213695652985175

`and(A016760(n)+2, A290458(n))`
-/

namespace A290454.P13820213695652985175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n + 2) (A290458 n)

end

end A290454.P13820213695652985175

/-! ## A290454.P3232999089313332506

`and(A044571(n+1)²+2, A290458(n))`
-/

namespace A290454.P3232999089313332506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044571 (n + 1) ^ 2 + 2) (A290458 n)

end

end A290454.P3232999089313332506

/-! ## A290454.P11199303316428142576

`A085852(A061579(n))%4`
-/

namespace A290454.P11199303316428142576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085852 (A061579 n).toNat) 4

end

end A290454.P11199303316428142576

/-!
# A290455: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 5.

The programs for A290455, there is no canonical definition to state claims against.
-/

/-! ## A290455.P17047082452876889100

`A290460(n)%5`
-/

namespace A290455.P17047082452876889100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290460 n) 5

end

end A290455.P17047082452876889100

/-! ## A290455.P15853565560870049431

`A173018(n)%5`
-/

namespace A290455.P15853565560870049431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 n) 5

end

end A290455.P15853565560870049431

/-! ## A290455.P5374395401583905530

`(A008518(n)-a(n-1))%5` with `a(0)=1, a(1)=1`
-/

namespace A290455.P5374395401583905530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (A008518 n - a (n - 1)) 5

end

end A290455.P5374395401583905530

/-! ## A290455.P1501724734712520401

`A123125(2-(1-n)%(n+1))%5`
-/

namespace A290455.P1501724734712520401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (2 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat) 5

end

end A290455.P1501724734712520401

/-! ## A290455.P1910583921716230389

`(A123125(n+1)+A000007(n))%5`
-/

namespace A290455.P1910583921716230389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (n + 1) + A000007 n) 5

end

end A290455.P1910583921716230389

/-! ## A290455.P10156971852425862597

`A123125(A004526(A103517(n)))%5`
-/

namespace A290455.P10156971852425862597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A004526 (A103517 n).toNat).toNat) 5

end

end A290455.P10156971852425862597

/-! ## A290455.P9993950495470136572

`A123125(A061579(n))%5`
-/

namespace A290455.P9993950495470136572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A061579 n).toNat) 5

end

end A290455.P9993950495470136572

/-! ## A290455.P14929756014306527118

`A144699(n+5)%5`
-/

namespace A290455.P14929756014306527118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144699 (n + 5)) 5

end

end A290455.P14929756014306527118

/-!
# A290456: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 6.

The programs for A290456, there is no canonical definition to state claims against.
-/

/-! ## A290456.P12058870170085394085

`A173018(n)%6`
-/

namespace A290456.P12058870170085394085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 n) 6

end

end A290456.P12058870170085394085

/-! ## A290456.P13428925826813849923

`(A008518(n)-a(n-1))%6` with `a(0)=1, a(1)=1`
-/

namespace A290456.P13428925826813849923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (A008518 n - a (n - 1)) 6

end

end A290456.P13428925826813849923

/-! ## A290456.P15381633038639102438

`A123125(2-(1-n)%(n+1))%6`
-/

namespace A290456.P15381633038639102438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (2 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat) 6

end

end A290456.P15381633038639102438

/-! ## A290456.P14016649018927427638

`A123125((n+1)%(2*n+1))%6`
-/

namespace A290456.P14016649018927427638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 ((n + 1) % (2 * n + 1))) 6

end

end A290456.P14016649018927427638

/-! ## A290456.P4727291477238440490

`A123125(A061579(n))%6`
-/

namespace A290456.P4727291477238440490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A061579 n).toNat) 6

end

end A290456.P4727291477238440490

/-! ## A290456.P17520693571793815344

`A123125(A254667(n+1))%6`
-/

namespace A290456.P17520693571793815344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A254667 (n + 1)).toNat) 6

end

end A290456.P17520693571793815344

/-! ## A290456.P4185659384318566979

`A123125(A114327(n)+n)%6`
-/

namespace A290456.P4185659384318566979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A114327 n + (n : ℤ)).toNat) 6

end

end A290456.P4185659384318566979

/-! ## A290456.P8760626221487439584

`A123125(comp[A000108(n²)²])%6`
-/

namespace A290456.P8760626221487439584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) 6

end

end A290456.P8760626221487439584

/-! ## A290456.P17556708233866313102

`(A123125(n+1)+A000007(n))%6`
-/

namespace A290456.P17556708233866313102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (n + 1) + A000007 n) 6

end

end A290456.P17556708233866313102

/-! ## A290456.P9297089457477569321

`(A123125(n+1)+A020793(n))%6`
-/

namespace A290456.P9297089457477569321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (n + 1) + A020793 n) 6

end

end A290456.P9297089457477569321

/-!
# A290457: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 7.

The programs for A290457, there is no canonical definition to state claims against.
-/

/-! ## A290457.P5839014515991801953

`A173018(n)%7`
-/

namespace A290457.P5839014515991801953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 n) 7

end

end A290457.P5839014515991801953

/-! ## A290457.P6075753918247122225

`(A008518(n)-a(n-1))%7` with `a(0)=1, a(1)=1`
-/

namespace A290457.P6075753918247122225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (A008518 n - a (n - 1)) 7

end

end A290457.P6075753918247122225

/-! ## A290457.P8600996069444040829

`A123125(2-(1-n)%(n+1))%7`
-/

namespace A290457.P8600996069444040829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (2 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat) 7

end

end A290457.P8600996069444040829

/-! ## A290457.P15772131163661013559

`A123125(A254667(n+1))%7`
-/

namespace A290457.P15772131163661013559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A254667 (n + 1)).toNat) 7

end

end A290457.P15772131163661013559

/-! ## A290457.P4634606259566616761

`(A123125(n+1)+A000007(n))%7`
-/

namespace A290457.P4634606259566616761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (n + 1) + A000007 n) 7

end

end A290457.P4634606259566616761

/-! ## A290457.P6147076222153828413

`A123125(A061579(n))%7`
-/

namespace A290457.P6147076222153828413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A061579 n).toNat) 7

end

end A290457.P6147076222153828413

/-! ## A290457.P12550019736257982679

`A123125(A114327(n)+n)%7`
-/

namespace A290457.P12550019736257982679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A114327 n + (n : ℤ)).toNat) 7

end

end A290457.P12550019736257982679

/-! ## A290457.P11066452565541574037

`A123125(A233583(n+2))%7`
-/

namespace A290457.P11066452565541574037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A233583 (n + 2)).toNat) 7

end

end A290457.P11066452565541574037

/-!
# A290458: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 8.

The programs for A290458, there is no canonical definition to state claims against.
-/

/-! ## A290458.P8498796915718944344

`A173018(n)%8`
-/

namespace A290458.P8498796915718944344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 n) 8

end

end A290458.P8498796915718944344

/-! ## A290458.P9888965182649881593

`(A008518(n)-a(n-1))%8` with `a(0)=1, a(1)=1`
-/

namespace A290458.P9888965182649881593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (A008518 n - a (n - 1)) 8

end

end A290458.P9888965182649881593

/-! ## A290458.P10892627337957849701

`and(7, A173018(sqrt(A000290(n))))`
-/

namespace A290458.P10892627337957849701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A173018 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat)

end

end A290458.P10892627337957849701

/-! ## A290458.P13779388421275389539

`and(7, A173018(A000007(n)+n))`
-/

namespace A290458.P13779388421275389539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A173018 (A000007 n + (n : ℤ)).toNat)

end

end A290458.P13779388421275389539

/-! ## A290458.P7838906448851946451

`and(7, or(A000007(n), A173018(n)))`
-/

namespace A290458.P7838906448851946451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (Int.lor (A000007 n) (A173018 n))

end

end A290458.P7838906448851946451

/-! ## A290458.P1875077297111781289

`and(A122553(n)²-2, A173018(n))`
-/

namespace A290458.P1875077297111781289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n ^ 2 - 2) (A173018 n)

end

end A290458.P1875077297111781289

/-! ## A290458.P13185758383401796562

`(A123125(n+1)+A000007(n))%8`
-/

namespace A290458.P13185758383401796562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (n + 1) + A000007 n) 8

end

end A290458.P13185758383401796562

/-! ## A290458.P7662030569934535150

`A123125(A061579(n))%8`
-/

namespace A290458.P7662030569934535150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A061579 n).toNat) 8

end

end A290458.P7662030569934535150

/-! ## A290458.P12457595036643819546

`A123125(A114327(n)+n)%8`
-/

namespace A290458.P12457595036643819546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A114327 n + (n : ℤ)).toNat) 8

end

end A290458.P12457595036643819546

/-! ## A290458.P11231517670426489476

`and(A147596(n+1), A173018(n))`
-/

namespace A290458.P11231517670426489476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147596 (n + 1)) (A173018 n)

end

end A290458.P11231517670426489476

/-! ## A290458.P11329626876299241183

`and(A173018(n), A184041(n+1))`
-/

namespace A290458.P11329626876299241183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173018 n) (A184041 (n + 1))

end

end A290458.P11329626876299241183

/-! ## A290458.P9514362452433248757

`and(A173018(n), A196655(n))`
-/

namespace A290458.P9514362452433248757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173018 n) (A196655 n)

end

end A290458.P9514362452433248757

/-! ## A290458.P3906636406297357538

`and(A173018(n), A193579(n))`
-/

namespace A290458.P3906636406297357538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173018 n) (A193579 n)

end

end A290458.P3906636406297357538

/-! ## A290458.P16191754653331371839

`and(A173018(n), A195463(n))`
-/

namespace A290458.P16191754653331371839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173018 n) (A195463 n)

end

end A290458.P16191754653331371839

/-! ## A290458.P7595640672854874790

`and(A147597(n+1), A173018(n))`
-/

namespace A290458.P7595640672854874790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147597 (n + 1)) (A173018 n)

end

end A290458.P7595640672854874790

/-! ## A290458.P10043390985439775998

`and(A147595(n+1)²-2, A173018(n))`
-/

namespace A290458.P10043390985439775998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147595 (n + 1) ^ 2 - 2) (A173018 n)

end

end A290458.P10043390985439775998

/-! ## A290458.P10998071043437523278

`and(A169727(n), A173018(n))`
-/

namespace A290458.P10998071043437523278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169727 n) (A173018 n)

end

end A290458.P10998071043437523278

/-!
# A290459: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 9.

The programs for A290459, there is no canonical definition to state claims against.
-/

/-! ## A290459.P5517131721737423274

`A173018(n)%9`
-/

namespace A290459.P5517131721737423274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 n) 9

end

end A290459.P5517131721737423274

/-! ## A290459.P4810408942156974577

`(A008518(n)-a(n-1))%9` with `a(0)=1, a(1)=1`
-/

namespace A290459.P4810408942156974577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (A008518 n - a (n - 1)) 9

end

end A290459.P4810408942156974577

/-! ## A290459.P16535276235177351130

`A123125(2-(1-n)%(n+1))%9`
-/

namespace A290459.P16535276235177351130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (2 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat) 9

end

end A290459.P16535276235177351130

/-! ## A290459.P5872948977283195630

`A010878(∑{digits}[A173018(n), #])`
-/

namespace A290459.P5872948977283195630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A290459.P5872948977283195630

/-! ## A290459.P1161575576894092943

`(A123125(n+1)+A000007(n))%9`
-/

namespace A290459.P1161575576894092943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (n + 1) + A000007 n) 9

end

end A290459.P1161575576894092943

/-! ## A290459.P3063687042595305388

`A123125(A004526(A103517(n)))%9`
-/

namespace A290459.P3063687042595305388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A004526 (A103517 n).toNat).toNat) 9

end

end A290459.P3063687042595305388

/-! ## A290459.P17999007828962265322

`A123125(A061579(n))%9`
-/

namespace A290459.P17999007828962265322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A061579 n).toNat) 9

end

end A290459.P17999007828962265322

/-!
# A290460: Triangle formed by reading the triangle of Eulerian numbers (A173018) mod 10.

The programs for A290460, there is no canonical definition to state claims against.
-/

/-! ## A290460.P9106278451944246098

`A173018(n)%10`
-/

namespace A290460.P9106278451944246098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 n) 10

end

end A290460.P9106278451944246098

/-! ## A290460.P10650592129445973910

`A123125(A254667(n+1))%10`
-/

namespace A290460.P10650592129445973910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A254667 (n + 1)).toNat) 10

end

end A290460.P10650592129445973910

/-! ## A290460.P11603718850465687935

`(A123125(n+1)+A000007(n))%10`
-/

namespace A290460.P11603718850465687935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (n + 1) + A000007 n) 10

end

end A290460.P11603718850465687935

/-! ## A290460.P3939039738937658934

`A123125(A061579(n))%10`
-/

namespace A290460.P3939039738937658934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A061579 n).toNat) 10

end

end A290460.P3939039738937658934

/-! ## A290460.P1820753504226043269

`A123125(A114327(n)+n)%10`
-/

namespace A290460.P1820753504226043269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A114327 n + (n : ℤ)).toNat) 10

end

end A290460.P1820753504226043269

/-! ## A290460.P13305272549449335294

`A123125(A233583(n+2))%10`
-/

namespace A290460.P13305272549449335294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (A233583 (n + 2)).toNat) 10

end

end A290460.P13305272549449335294

/-!
# A290461: Binomial(n,4) - A290447(n).

The programs for A290461, there is no canonical definition to state claims against.
-/

/-! ## A290461.P2837022259473918170

`C(n+1, 4)-A290447(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290461.P2837022259473918170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 4 : ℤ) - A290447 (n + 1)

end

end A290461.P2837022259473918170

/-! ## A290461.P2596858261342114319

`A000332(n+1)-A290447(n+1)`
-/

namespace A290461.P2596858261342114319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) - A290447 (n + 1)

end

end A290461.P2596858261342114319

/-! ## A290461.P11247088494994228988

`A050534(n)/3-A290447(n+1)`
-/

namespace A290461.P11247088494994228988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050534 n : ℚ) / 3 - (A290447 (n + 1) : ℚ)

end

end A290461.P11247088494994228988

/-! ## A290461.P5038385216924872071

`Δ[A000389(n+1)]-A290447(n+1)`
-/

namespace A290461.P5038385216924872071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A290447 (n + 1)

end

end A290461.P5038385216924872071

/-! ## A290461.P8713425151376569608

`A000127(n+1)-(A290447(n+1)+A000124(n))`
-/

namespace A290461.P8713425151376569608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) - (A290447 (n + 1) + A000124 n)

end

end A290461.P8713425151376569608

/-! ## A290461.P4402066920849878595

`A000332(n+1)+A290865(n+1)-A290866(n+1)`
-/

namespace A290461.P4402066920849878595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + (A290865 (n + 1) - A290866 (n + 1))

end

end A290461.P4402066920849878595

/-! ## A290461.P6359904737356765330

`A000332(n+1)+A290465(n+1)-A006561(n+1)`
-/

namespace A290461.P6359904737356765330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + (A290465 (n + 1) - A006561 (n + 1))

end

end A290461.P6359904737356765330

/-!
# A290463: Consider decimal fractions r = abc/def with b != 0, d != 0 such that r = ac/df, sorted first by def and then by abc; sequence gives the denominators def.

The programs for A290463, there is no canonical definition to state claims against.
-/

/-! ## A290463.P9922273797696661648

`xor(A025332(2*n+5), A122340(A072827(n+1)))`
-/

namespace A290463.P9922273797696661648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025332 (2 * n + 5)) (A122340 (A072827 (n + 1)).toNat)

end

end A290463.P9922273797696661648

/-!
# A290465: a(n) = A006561(n) - A290447(n).

The programs for A290465, there is no canonical definition to state claims against.
-/

/-! ## A290465.P9684246201968073288

`A006561(n+1)-A290447(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290465.P9684246201968073288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 1) - A290447 (n + 1)

end

end A290465.P9684246201968073288

/-! ## A290465.P15677873235861633607

`A007569(n+1)-(A290447(n+1)+1+n)`
-/

namespace A290465.P15677873235861633607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007569 (n + 1) - (A290447 (n + 1) + 1 + (n : ℤ))

end

end A290465.P15677873235861633607

/-! ## A290465.P12038973695793034466

`A006561(n+1)-(C(n+1, 4)-A290461(n+1))`
-/

namespace A290465.P12038973695793034466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 1) - ((Nat.choose (n + 1) 4 : ℤ) - A290461 (n + 1))

end

end A290465.P12038973695793034466

/-! ## A290465.P698085827765715320

`A007569(n+1)-(n+1)-(C(n+1, 4)-A290461(n+1))`
-/

namespace A290465.P698085827765715320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007569 (n + 1) - (n + 1 : ℤ) - ((Nat.choose (n + 1) 4 : ℤ) - A290461 (n + 1))

end

end A290465.P698085827765715320

/-! ## A290465.P13904939949351045226

`A006561(n+1)+A260196(n)*A290447(n+1)`
-/

namespace A290465.P13904939949351045226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 1) + A260196 n * A290447 (n + 1)

end

end A290465.P13904939949351045226

/-! ## A290465.P11974836620710631137

`A006561(n+1)+A290461(n+1)-A000332(n+1)`
-/

namespace A290465.P11974836620710631137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 1) + (A290461 (n + 1) - A000332 (n + 1))

end

end A290465.P11974836620710631137

/-! ## A290465.P10317296605655620951

`A006561(n+1)+A290865(n+1)-A290866(n+1)`
-/

namespace A290465.P10317296605655620951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 1) + (A290865 (n + 1) - A290866 (n + 1))

end

end A290465.P10317296605655620951

/-!
# A290466: Unitary Zumkeller numbers: numbers k whose unitary divisors can be partitioned into two disjoint subsets whose sums are both usigma(k)/2.

The programs for A290466, there is no canonical definition to state claims against.
-/

/-! ## A290466.P5391218092766704848

`lt[1, A129468(A233583(n+1))+2]`
-/

namespace A290466.P5391218092766704848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (A233583 (n + 1)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A290466.P5391218092766704848

/-! ## A290466.P16718879453464265844

`lt[A057428(n), A129468(A233583(n+1))]`
-/

namespace A290466.P16718879453464265844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290466.P16718879453464265844

/-! ## A290466.P3922856056864761882

`lt[A134824(n), A129468(A233583(n+1))]`
-/

namespace A290466.P3922856056864761882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290466.P3922856056864761882

/-! ## A290466.P1347356118357956962

`A181569(lt[A233583(n+1), A034460(n+1)])`
-/

namespace A290466.P1347356118357956962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A290466.P1347356118357956962

/-! ## A290466.P2101479019665035823

`∩[A069116(n+1), A206292(n+1)]`
-/

namespace A290466.P2101479019665035823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290466.P2101479019665035823

/-!
# A290469: Numbers x such that x = Sum_{i=1..k} (x mod d_(x+i)) for some k, where d_(x+i) is the aliquot parts of (x+i).

The programs for A290469, there is no canonical definition to state claims against.
-/

/-! ## A290469.P6182565435679890588

`A292364(n+1)+A152803(n+2)!`
-/

namespace A290469.P6182565435679890588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292364 (n + 1) + (Nat.factorial (A152803 (n + 2)).toNat : ℤ)

end

end A290469.P6182565435679890588

/-! ## A290469.P3413194352218562614

`A292364(n+1)+A085486(A002965(n))`
-/

namespace A290469.P3413194352218562614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292364 (n + 1) + A085486 (A002965 n).toNat

end

end A290469.P3413194352218562614

/-!
# A290470: Number of minimal edge covers in the n-Moebius ladder.

The programs for A290470, there is no canonical definition to state claims against.
-/

/-! ## A290470.P10413915822679167544

`or(A003961(n+1), A220520(A037082(n+1)))`
-/

namespace A290470.P10413915822679167544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003961 (n + 1)) (A220520 (A037082 (n + 1)).toNat)

end

end A290470.P10413915822679167544

/-! ## A290470.P2271572346673350020

`or(A139826(A023603(n+1)), A189703(n+1))`
-/

namespace A290470.P2271572346673350020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A139826 (A023603 (n + 1)).toNat) (A189703 (n + 1))

end

end A290470.P2271572346673350020

/-!
# A290472: Number of ways to write 6*n+1 as x^2 + 3*y^2 + 7*z^2, where x is a positive integer, and y and z are nonnegative integers.

The programs for A290472, there is no canonical definition to state claims against.
-/

/-! ## A290472.P16301017285502211543

`A260056(∑{e}[A008781(n+1), #])`
-/

namespace A290472.P16301017285502211543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A290472.P16301017285502211543

/-! ## A290472.P12907114645135904649

`A096601(A036838(p?[2*n+1]))`
-/

namespace A290472.P12907114645135904649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096601 (A036838 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A290472.P12907114645135904649

/-! ## A290472.P10332243938890137979

`A211097(C(A048409(n), ∑{e}[n+1, #]))`
-/

namespace A290472.P10332243938890137979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (Nat.choose (A048409 n).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A290472.P10332243938890137979

/-! ## A290472.P5848687347931900085

`A007318(and(or(1, n+1), A155402(n+5)))`
-/

namespace A290472.P5848687347931900085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land (Nat.lor 1 (n + 1) : ℤ) (A155402 (n + 5))).toNat

end

end A290472.P5848687347931900085

/-! ## A290472.P8909530103530396489

`A139549(A006949(n)*A139524(n))`
-/

namespace A290472.P8909530103530396489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139549 (A006949 n * A139524 n).toNat

end

end A290472.P8909530103530396489

/-!
# A290474: Number of fractional partitions of n where each element of a partition is a rational number r/s such that r < s, s <= n, and gcd(r,s) = 1.

The programs for A290474, there is no canonical definition to state claims against.
-/

/-! ## A290474.P7708769121158130555

`(n+1)*3^3^a(n-2)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A290474.P7708769121158130555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (n + 1) * 3 ^ 3 ^ a (n - 2)

end

end A290474.P7708769121158130555

/-!
# A290477: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,4,1,5 (the first five digits of Pi).

The programs for A290477, there is no canonical definition to state claims against.
-/

/-! ## A290477.P16365844336282475041

`or(A003417(n), A246439(A164369(n)))`
-/

namespace A290477.P16365844336282475041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003417 n) (A246439 (A164369 n).toNat)

end

end A290477.P16365844336282475041

/-!
# A290478: Triangle read by rows in which row n lists the sum of the divisors of each divisor of n.

The programs for A290478, there is no canonical definition to state claims against.
-/

/-! ## A290478.P16560677939073218771

`∑{d}[A027750(n+1), #]`
-/

namespace A290478.P16560677939073218771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290478.P16560677939073218771

/-! ## A290478.P2988283292426748259

`∑{d}[A233773(n+1), #]`
-/

namespace A290478.P2988283292426748259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290478.P2988283292426748259

/-! ## A290478.P11008963339933524746

`A000203(A027750(1+n))`
-/

namespace A290478.P11008963339933524746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A027750 (1 + n)).toNat

end

end A290478.P11008963339933524746

/-! ## A290478.P17379365091961295698

`A000203(abs(A233773(n+1)))`
-/

namespace A290478.P17379365091961295698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 |A233773 (n + 1)|.toNat

end

end A290478.P17379365091961295698

/-! ## A290478.P3210243085619555190

`A000203(A263730(n+2)+1)`
-/

namespace A290478.P3210243085619555190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A263730 (n + 2) + 1).toNat

end

end A290478.P3210243085619555190

/-! ## A290478.P7795428997306504902

`∑{d}[A002260(A056534(n+1)), #]`
-/

namespace A290478.P7795428997306504902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A056534 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290478.P7795428997306504902

/-! ## A290478.P11970408477734932512

`A245093(A056534(n+1))`
-/

namespace A290478.P11970408477734932512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (A056534 (n + 1)).toNat

end

end A290478.P11970408477734932512

/-! ## A290478.P4699780087763076999

`A069290(A027750(n+1)²)`
-/

namespace A290478.P4699780087763076999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A027750 (n + 1) ^ 2).toNat

end

end A290478.P4699780087763076999

/-! ## A290478.P17279951214106789182

`A069290(A027750(n+1)*A027750(n+1))`
-/

namespace A290478.P17279951214106789182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A027750 (n + 1) * A027750 (n + 1)).toNat

end

end A290478.P17279951214106789182

/-! ## A290478.P13954565540580492771

`∑{d}[A046641(A168017(n+1)), #]`
-/

namespace A290478.P13954565540580492771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (A168017 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290478.P13954565540580492771

/-!
# A290479: Product of nonprime squarefree divisors of n.

The programs for A290479, the canonical program `A290479.P14131532051956969420` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290479 has offset 1).

The definition of A290479 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A078599, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290479.P14131532051956969420

`A078599(n+1)/A007947(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A290479

/-- `A078599(n+1)/A007947(n+1)` -/
def P14131532051956969420.Spec : Prop :=
  ∀ n, P14131532051956969420.a n = (A290479 (n + 1) : ℚ)

end A290479

/-! ## A290479.P1491694210113888391

`∏{d}[∏{p}[n+1, #], #]/∏{p}[n+1, #]`
-/

namespace A290479.P1491694210113888391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

end

end A290479.P1491694210113888391

namespace A290479

/-- `∏{d}[∏{p}[n+1, #], #]/∏{p}[n+1, #]` -/
def P1491694210113888391.Spec : Prop :=
  ∀ n, P1491694210113888391.a n = (A290479 (n + 1) : ℚ)

end A290479

/-! ## A290479.P1728858379061448936

`A290480(∏{p}[n+1, #])`
-/

namespace A290479.P1728858379061448936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A290479.P1728858379061448936

namespace A290479

/-- `A290480(∏{p}[n+1, #])` -/
def P1728858379061448936.Spec : Prop :=
  ∀ n, P1728858379061448936.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P3424598174965830978

`A290480(A007947(n+1))`
-/

namespace A290479.P3424598174965830978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (A007947 (n + 1)).toNat

end

end A290479.P3424598174965830978

namespace A290479

/-- `A290480(A007947(n+1))` -/
def P3424598174965830978.Spec : Prop :=
  ∀ n, P3424598174965830978.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P2312039101498345870

`∏{d}[A340679(n+1), A048671(#)]`
-/

namespace A290479.P2312039101498345870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A048671 d

end

end A290479.P2312039101498345870

namespace A290479

/-- `∏{d}[A340679(n+1), A048671(#)]` -/
def P2312039101498345870.Spec : Prop :=
  ∀ n, P2312039101498345870.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P17432764665237316619

`∏{d}[A340679(n+1), A340679(#)]`
-/

namespace A290479.P17432764665237316619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A340679 d

end

end A290479.P17432764665237316619

namespace A290479

/-- `∏{d}[A340679(n+1), A340679(#)]` -/
def P17432764665237316619.Spec : Prop :=
  ∀ n, P17432764665237316619.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P3891702164374675806

`∏{d}[A062953(n+1), #/A014963(#)]`
-/

namespace A290479.P3891702164374675806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A014963 d : ℚ)

end

end A290479.P3891702164374675806

namespace A290479

/-- `∏{d}[A062953(n+1), #/A014963(#)]` -/
def P3891702164374675806.Spec : Prop :=
  ∀ n, P3891702164374675806.a n = (A290479 (n + 1) : ℚ)

end A290479

/-! ## A290479.P8490635628521598987

`A378689(∏{p}[n+1, #])`
-/

namespace A290479.P8490635628521598987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378689 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A290479.P8490635628521598987

namespace A290479

/-- `A378689(∏{p}[n+1, #])` -/
def P8490635628521598987.Spec : Prop :=
  ∀ n, P8490635628521598987.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P9140527191931008603

`A378689(A064549(n+1)/(n+1))`
-/

namespace A290479.P9140527191931008603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378689 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A290479.P9140527191931008603

namespace A290479

/-- `A378689(A064549(n+1)/(n+1))` -/
def P9140527191931008603.Spec : Prop :=
  ∀ n, P9140527191931008603.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P15590853245678883403

`A378689(A007947(2*n+1-n))`
-/

namespace A290479.P15590853245678883403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378689 (A007947 (2 * n + 1 - n)).toNat

end

end A290479.P15590853245678883403

namespace A290479

/-- `A378689(A007947(2*n+1-n))` -/
def P15590853245678883403.Spec : Prop :=
  ∀ n, P15590853245678883403.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P13572837742890573079

`A160199(∏{p}[n+1, #])`
-/

namespace A290479.P13572837742890573079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160199 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A290479.P13572837742890573079

namespace A290479

/-- `A160199(∏{p}[n+1, #])` -/
def P13572837742890573079.Spec : Prop :=
  ∀ n, P13572837742890573079.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P3592531095428732222

`A007956(∏{p}[n+1, #])`
-/

namespace A290479.P3592531095428732222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A290479.P3592531095428732222

namespace A290479

/-- `A007956(∏{p}[n+1, #])` -/
def P3592531095428732222.Spec : Prop :=
  ∀ n, P3592531095428732222.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P9014167776329619903

`A087652(∏{p}[n+1, #])`
-/

namespace A290479.P9014167776329619903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087652 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A290479.P9014167776329619903

namespace A290479

/-- `A087652(∏{p}[n+1, #])` -/
def P9014167776329619903.Spec : Prop :=
  ∀ n, P9014167776329619903.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P14157876715499689442

`A183092(∏{p}[n+1, #])`
-/

namespace A290479.P14157876715499689442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183092 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A290479.P14157876715499689442

namespace A290479

/-- `A183092(∏{p}[n+1, #])` -/
def P14157876715499689442.Spec : Prop :=
  ∀ n, P14157876715499689442.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P10206488171303498453

`A007956(A334085(n+1))`
-/

namespace A290479.P10206488171303498453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (A334085 (n + 1)).toNat

end

end A290479.P10206488171303498453

namespace A290479

/-- `A007956(A334085(n+1))` -/
def P10206488171303498453.Spec : Prop :=
  ∀ n, P10206488171303498453.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P5113217974637580607

`A007956(A340679(n+1))`
-/

namespace A290479.P5113217974637580607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (A340679 (n + 1)).toNat

end

end A290479.P5113217974637580607

namespace A290479

/-- `A007956(A340679(n+1))` -/
def P5113217974637580607.Spec : Prop :=
  ∀ n, P5113217974637580607.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P9322836985756215444

`A007956((n+1)/A003557(n+1))`
-/

namespace A290479.P9322836985756215444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A290479.P9322836985756215444

namespace A290479

/-- `A007956((n+1)/A003557(n+1))` -/
def P9322836985756215444.Spec : Prop :=
  ∀ n, P9322836985756215444.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P7050707529526571268

`A087652(n+1)/A178649(n+1)`
-/

namespace A290479.P7050707529526571268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087652 (n + 1) : ℚ) / (A178649 (n + 1) : ℚ)

end

end A290479.P7050707529526571268

namespace A290479

/-- `A087652(n+1)/A178649(n+1)` -/
def P7050707529526571268.Spec : Prop :=
  ∀ n, P7050707529526571268.a n = (A290479 (n + 1) : ℚ)

end A290479

/-! ## A290479.P1695490073493951162

`A183092(gcd(A144845(n), A183092(n+1)))`
-/

namespace A290479.P1695490073493951162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183092 (Int.gcd (A144845 n) (A183092 (n + 1)))

end

end A290479.P1695490073493951162

namespace A290479

/-- `A183092(gcd(A144845(n), A183092(n+1)))` -/
def P1695490073493951162.Spec : Prop :=
  ∀ n, P1695490073493951162.a n = A290479 (n + 1)

end A290479

/-! ## A290479.P12211700301670140155

`A007956(A007955(n+1)/A087652(n+1))`
-/

namespace A290479.P12211700301670140155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (SequenceMachineLib.roundAway ((A007955 (n + 1) : ℚ) / (A087652 (n + 1) : ℚ))).toNat

end

end A290479.P12211700301670140155

namespace A290479

/-- `A007956(A007955(n+1)/A087652(n+1))` -/
def P12211700301670140155.Spec : Prop :=
  ∀ n, P12211700301670140155.a n = A290479 (n + 1)

end A290479

/-!
# A290480: Product of proper unitary divisors of n.

The programs for A290480, the canonical program `A290480.P5828358060988426572` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290480 has offset 1).

The definition of A290480 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061537, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290480.P5828358060988426572

`A061537(n+1)/(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A290480

/-- `A061537(n+1)/(n+1)` -/
def P5828358060988426572.Spec : Prop :=
  ∀ n, P5828358060988426572.a n = (A290480 (n + 1) : ℚ)

end A290480

/-! ## A290480.P10744347289595901802

`(n+1)^(A007875(n+1)-1)`
-/

namespace A290480.P10744347289595901802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A007875 (n + 1) - 1 : ℤ)

end

end A290480.P10744347289595901802

namespace A290480

/-- `(n+1)^(A007875(n+1)-1)` -/
def P10744347289595901802.Spec : Prop :=
  ∀ n, P10744347289595901802.a n = (A290480 (n + 1) : ℚ)

end A290480

/-! ## A290480.P6464175558024615990

`(n+1)^(A087893(n+1)/2)`
-/

namespace A290480.P6464175558024615990
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A087893 (n + 1) : ℚ) / 2 : ℝ)

end

end A290480.P6464175558024615990

namespace A290480

/-- `(n+1)^(A087893(n+1)/2)` -/
def P6464175558024615990.Spec : Prop :=
  ∀ n, P6464175558024615990.a n = (A290480 (n + 1) : ℝ)

end A290480

/-! ## A290480.P2542621204100488999

`A062513(n+1)*A304404(n+1)`
-/

namespace A290480.P2542621204100488999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1) * A304404 (n + 1)

end

end A290480.P2542621204100488999

namespace A290480

/-- `A062513(n+1)*A304404(n+1)` -/
def P2542621204100488999.Spec : Prop :=
  ∀ n, P2542621204100488999.a n = A290480 (n + 1)

end A290480

/-! ## A290480.P16869795395076216129

`A384716(n+1)/A000010(n+1)`
-/

namespace A290480.P16869795395076216129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384716 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A290480.P16869795395076216129

namespace A290480

/-- `A384716(n+1)/A000010(n+1)` -/
def P16869795395076216129.Spec : Prop :=
  ∀ n, P16869795395076216129.a n = (A290480 (n + 1) : ℚ)

end A290480

/-! ## A290480.P18021021562801478294

`A014683(n+1)^A054024(A007875(n+1))`
-/

namespace A290480.P18021021562801478294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014683 (n + 1) : ℚ) ^ (A054024 (A007875 (n + 1)).toNat : ℤ)

end

end A290480.P18021021562801478294

namespace A290480

/-- `A014683(n+1)^A054024(A007875(n+1))` -/
def P18021021562801478294.Spec : Prop :=
  ∀ n, P18021021562801478294.a n = (A290480 (n + 1) : ℚ)

end A290480

/-! ## A290480.P15972022644624427319

`(A010051(n+1)+n+1)^A054024(A007875(n+1))`
-/

namespace A290480.P15972022644624427319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) + (n + 1 : ℤ) : ℚ) ^ (A054024 (A007875 (n + 1)).toNat : ℤ)

end

end A290480.P15972022644624427319

namespace A290480

/-- `(A010051(n+1)+n+1)^A054024(A007875(n+1))` -/
def P15972022644624427319.Spec : Prop :=
  ∀ n, P15972022644624427319.a n = (A290480 (n + 1) : ℚ)

end A290480

/-! ## A290480.P17637768098955226208

`(char[A006093(n+1)]+n+1)^A054024(A007875(n+1))`
-/

namespace A290480.P17637768098955226208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (n + 1) : ℕ) : ℚ) ^ (A054024 (A007875 (n + 1)).toNat : ℤ)

end

end A290480.P17637768098955226208

namespace A290480

/-- `(char[A006093(n+1)]+n+1)^A054024(A007875(n+1))` -/
def P17637768098955226208.Spec : Prop :=
  ∀ n, P17637768098955226208.a n = (A290480 (n + 1) : ℚ)

end A290480

/-! ## A290480.P3398818081477857497

`(Δ[A095117(n)]+n)^A054024(A007875(n+1))`
-/

namespace A290480.P3398818081477857497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ) : ℚ) ^ (A054024 (A007875 (n + 1)).toNat : ℤ)

end

end A290480.P3398818081477857497

namespace A290480

/-- `(Δ[A095117(n)]+n)^A054024(A007875(n+1))` -/
def P3398818081477857497.Spec : Prop :=
  ∀ n, P3398818081477857497.a n = (A290480 (n + 1) : ℚ)

end A290480

/-! ## A290480.P5213287249289816478

`A007956(n+1)/A061538(n+1)`
-/

namespace A290480.P5213287249289816478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (n + 1) : ℚ) / (A061538 (n + 1) : ℚ)

end

end A290480.P5213287249289816478

namespace A290480

/-- `A007956(n+1)/A061538(n+1)` -/
def P5213287249289816478.Spec : Prop :=
  ∀ n, P5213287249289816478.a n = (A290480 (n + 1) : ℚ)

end A290480

/-! ## A290480.P6869265132512987346

`sqrt((n+1)^A087893(n+1))`
-/

namespace A290480.P6869265132512987346
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) ^ (A087893 (n + 1) : ℤ) : ℝ)

end

end A290480.P6869265132512987346

namespace A290480

/-- `sqrt((n+1)^A087893(n+1))` -/
def P6869265132512987346.Spec : Prop :=
  ∀ n, P6869265132512987346.a n = (A290480 (n + 1) : ℝ)

end A290480

/-! ## A290480.P11007015767594917210

`(A061007(A003961(n+1))+n+1)^A054024(A007875(n+1))`
-/

namespace A290480.P11007015767594917210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061007 (A003961 (n + 1)).toNat + (n + 1 : ℤ) : ℚ) ^ (A054024 (A007875 (n + 1)).toNat : ℤ)

end

end A290480.P11007015767594917210

namespace A290480

/-- `(A061007(A003961(n+1))+n+1)^A054024(A007875(n+1))` -/
def P11007015767594917210.Spec : Prop :=
  ∀ n, P11007015767594917210.a n = (A290480 (n + 1) : ℚ)

end A290480

/-! ## A290480.P658153522400337257

`(n+1)^A333153(A333175(n+1))`
-/

namespace A290480.P658153522400337257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A333153 (A333175 (n + 1)).toNat : ℤ)

end

end A290480.P658153522400337257

namespace A290480

/-- `(n+1)^A333153(A333175(n+1))` -/
def P658153522400337257.Spec : Prop :=
  ∀ n, P658153522400337257.a n = (A290480 (n + 1) : ℚ)

end A290480

/-!
# A290484: Odd prime numbers that are factors of only one 3-Carmichael number.

The programs for A290484, there is no canonical definition to state claims against.
-/

/-! ## A290484.P4972137665009944638

`A364920(A169583(n+1))`
-/

namespace A290484.P4972137665009944638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364920 (A169583 (n + 1)).toNat

end

end A290484.P4972137665009944638

/-!
# A290485: The largest 3-Carmichael number that is divisible by the n-th odd prime.

The programs for A290485, there is no canonical definition to state claims against.
-/

/-! ## A290485.P9827029230281616575

`A141706((n+1)%(A141706(n+2)+n)+1)`
-/

namespace A290485.P9827029230281616575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141706 (Int.tmod (n + 1 : ℤ) (A141706 (n + 2) + (n : ℤ)) + 1).toNat

end

end A290485.P9827029230281616575

/-!
# A290487: Prime numbers p such that q = p^2+p-1 and r = (p^3+p^2-p+1)/2 are also primes, and thus p*q*r is an extreme 3-Carmichael number.

The programs for A290487, there is no canonical definition to state claims against.
-/

/-! ## A290487.P12197629338707909515

`A383712(A215356(n+2))`
-/

namespace A290487.P12197629338707909515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383712 (A215356 (n + 2)).toNat

end

end A290487.P12197629338707909515

/-! ## A290487.P10594360241958464294

`A000040(A172552(n+1)+A090707(n+1))`
-/

namespace A290487.P10594360241958464294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A172552 (n + 1) + A090707 (n + 1)).toNat

end

end A290487.P10594360241958464294

/-!
# A290488: Lower ends of record gaps between numbers that are either prime or twice a prime.

The programs for A290488, there is no canonical definition to state claims against.
-/

/-! ## A290488.P1532561526426463257

`A290489(n+1)-A290541(n+1)`
-/

namespace A290488.P1532561526426463257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290489 (n + 1) - A290541 (n + 1)

end

end A290488.P1532561526426463257

/-! ## A290488.P13328005534847048069

`A290572(A290541(n+1))`
-/

namespace A290488.P13328005534847048069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290572 (A290541 (n + 1)).toNat

end

end A290488.P13328005534847048069

/-! ## A290488.P9886653238019481442

`A290572(record[A290496(n+1)])`
-/

namespace A290488.P9886653238019481442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290572 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A290488.P9886653238019481442

/-! ## A290488.P11509161174960344739

`A290489(n+1)-record[A290496(n+1)]`
-/

namespace A290488.P11509161174960344739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290489 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290488.P11509161174960344739

/-! ## A290488.P9229005554872933484

`A035031(A290489(n+1))`
-/

namespace A290488.P9229005554872933484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A290489 (n + 1)).toNat

end

end A290488.P9229005554872933484

/-!
# A290489: Upper ends of record gaps between numbers that are either prime or twice a prime.

The programs for A290489, there is no canonical definition to state claims against.
-/

/-! ## A290489.P18301981042048842730

`A290488(n+1)+A290541(n+1)`
-/

namespace A290489.P18301981042048842730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290488 (n + 1) + A290541 (n + 1)

end

end A290489.P18301981042048842730

/-! ## A290489.P1712024929692906005

`A290488(n+1)+record[A290496(n+1)]`
-/

namespace A290489.P1712024929692906005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290488 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290489.P1712024929692906005

/-! ## A290489.P6760695723903580571

`A290488(n+1)+record[A001751(n+2)-A001751(n+1)]`
-/

namespace A290489.P6760695723903580571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 2) - A001751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290488 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290489.P6760695723903580571

/-! ## A290489.P10113711097091933824

`A290541(n+1)+A290488(A077168(n))`
-/

namespace A290489.P10113711097091933824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290541 (n + 1) + A290488 (A077168 n).toNat

end

end A290489.P10113711097091933824

/-!
# A290490: Numbers k such that (sum of proper unitary divisors of k) > (sum of proper unitary divisors of m) for all m < k.

The programs for A290490, there is no canonical definition to state claims against.
-/

/-! ## A290490.P18054547457826107662

`record[A294492(A137734(n))%A220010(n+1)]`
-/

namespace A290490.P18054547457826107662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294492 (A137734 n).toNat) (A220010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290490.P18054547457826107662

/-! ## A290490.P13214098751235959342

`lt[∑{d}[n+1, #], 1-a(n-2)]` with `a(0)=1, a(1)=4, a(2)=48`
-/

namespace A290490.P13214098751235959342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 48] fun n f3 =>
  1 - f3 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A290490.P13214098751235959342

/-! ## A290490.P9002052383509463946

`∑[A004018(A102123(n)²)]`
-/

namespace A290490.P9002052383509463946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A102123 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290490.P9002052383509463946

/-! ## A290490.P14002391120700540161

`∑[A131089(A245879(n+1))]`
-/

namespace A290490.P14002391120700540161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131089 (A245879 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290490.P14002391120700540161

/-! ## A290490.P11496552794784173873

`∑[A321030(A127520(n+1))]`
-/

namespace A290490.P11496552794784173873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321030 (A127520 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290490.P11496552794784173873

/-!
# A290491: Number of ways to write 12*n+1 as x^2 + 4*y^2 + 8*z^4, where x and y are positive integers and z is a nonnegative integer.

The programs for A290491, there is no canonical definition to state claims against.
-/

/-! ## A290491.P7602279686605233780

`A000120(A192590(A094270(n+1))+1)`
-/

namespace A290491.P7602279686605233780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A192590 (A094270 (n + 1)).toNat + 1).toNat

end

end A290491.P7602279686605233780

/-! ## A290491.P11190042009015987801

`A001221(A130245(n)+A056376(n+5))`
-/

namespace A290491.P11190042009015987801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A130245 n + A056376 (n + 5)).toNat

end

end A290491.P11190042009015987801

/-!
# A290493: Number of irredundant sets in the n-cycle graph.

The programs for A290493, the canonical program `A290493.P11472420597459271084` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290493 has offset 1).

The definition of A290493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290493.P11472420597459271084

`a(n-1)+a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=11, a(4)=16, a(5)=24`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A290493

/-- `a(n-1)+a(n-2)+a(n-4)-a(n-6)` -/
def P11472420597459271084.Spec : Prop :=
  ∀ n, P11472420597459271084.a n = A290493 (n + 1)

theorem P11472420597459271084.correct : P11472420597459271084.Spec := by
  intro n
  simp only [A290493, Nat.add_sub_cancel]

end A290493

/-! ## A290493.P636857582131210508

`floor(sqrt(A391917(n+1)))`
-/

namespace A290493.P636857582131210508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A391917 (n + 1))

end

end A290493.P636857582131210508

namespace A290493

/-- `floor(sqrt(A391917(n+1)))` -/
def P636857582131210508.Spec : Prop :=
  ∀ n, P636857582131210508.a n = A290493 (n + 1)

end A290493

/-! ## A290493.P3099052361450931629

`A262689(A391917(n+1))`
-/

namespace A290493.P3099052361450931629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A391917 (n + 1)).toNat

end

end A290493.P3099052361450931629

namespace A290493

/-- `A262689(A391917(n+1))` -/
def P3099052361450931629.Spec : Prop :=
  ∀ n, P3099052361450931629.a n = A290493 (n + 1)

end A290493

/-!
# A290494: Number of irredundant sets in the n-wheel graph.

The programs for A290494, the canonical program `A290494.P17552935995491197680` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290494 has offset 4).

The definition of A290494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290494.P17552935995491197680

`2*a(n-1)-a(n-3)+a(n-4)-a(n-5)-a(n-6)+a(n-7)` with `a(0)=5, a(1)=12, a(2)=17, a(3)=25, a(4)=44, a(5)=76, a(6)=131`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A290494

/-- `2*a(n-1)-a(n-3)+a(n-4)-a(n-5)-a(n-6)+a(n-7)` -/
def P17552935995491197680.Spec : Prop :=
  ∀ n, P17552935995491197680.a n = A290494 (n + 4)

theorem P17552935995491197680.correct : P17552935995491197680.Spec := by
  intro n
  simp only [A290494, Nat.add_sub_cancel]

end A290494

/-! ## A290494.P13824602949229132638

`A290493(n+3)+1`
-/

namespace A290494.P13824602949229132638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290493 (n + 3) + 1

end

end A290494.P13824602949229132638

namespace A290494

/-- `A290493(n+3)+1` -/
def P13824602949229132638.Spec : Prop :=
  ∀ n, P13824602949229132638.a n = A290494 (n + 4)

end A290494

/-! ## A290494.P12532134433170926998

`ceil(sqrt(A391917(n+3)))`
-/

namespace A290494.P12532134433170926998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A391917 (n + 3) : ℝ)⌉

end

end A290494.P12532134433170926998

namespace A290494

/-- `ceil(sqrt(A391917(n+3)))` -/
def P12532134433170926998.Spec : Prop :=
  ∀ n, P12532134433170926998.a n = A290494 (n + 4)

end A290494

/-!
# A290495: The number of self-inverse Boolean functions of n variables.

The programs for A290495, the canonical program `A290495.P13877558376664980538` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290495 has offset 0).

The definition of A290495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290495.P13877558376664980538

`A000085(2^n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290495

/-- `A000085(2^n)` -/
def P13877558376664980538.Spec : Prop :=
  ∀ n, P13877558376664980538.a n = A290495 n

theorem P13877558376664980538.correct : P13877558376664980538.Spec := by
  intro n
  simp only [A290495]

end A290495

/-! ## A290495.P5778147112520196757

`sqrt(A111883(2^n))`
-/

namespace A290495.P5778147112520196757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A111883 (2 ^ n) : ℝ)

end

end A290495.P5778147112520196757

namespace A290495

/-- `sqrt(A111883(2^n))` -/
def P5778147112520196757.Spec : Prop :=
  ∀ n, P5778147112520196757.a n = (A290495 n : ℝ)

end A290495

/-! ## A290495.P6035731395553426266

`A001189(2^n)+1`
-/

namespace A290495.P6035731395553426266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (2 ^ n) + 1

end

end A290495.P6035731395553426266

namespace A290495

/-- `A001189(2^n)+1` -/
def P6035731395553426266.Spec : Prop :=
  ∀ n, P6035731395553426266.a n = A290495 n

end A290495

/-!
# A290496: First differences of A001751.

The programs for A290496, the canonical program `A290496.P16609234457206249099` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290496 has offset 1).

The definition of A290496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290496.P16609234457206249099

`Δ[∪[A000040(n+1), A100484(n+1)]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A290496

/-- `Δ[∪[A000040(n+1), A100484(n+1)]]` -/
def P16609234457206249099.Spec : Prop :=
  ∀ n, P16609234457206249099.a n = A290496 (n + 1)

theorem P16609234457206249099.correct : P16609234457206249099.Spec := by
  intro n
  simp only [A290496, Nat.add_sub_cancel]

end A290496

/-! ## A290496.P8468265673406083163

`Δ[∪[A006093(n+1)+1, A100484(n+1)]]`
-/

namespace A290496.P8468265673406083163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P8468265673406083163

namespace A290496

/-- `Δ[∪[A006093(n+1)+1, A100484(n+1)]]` -/
def P8468265673406083163.Spec : Prop :=
  ∀ n, P8468265673406083163.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P2951629143257243954

`Δ[∪[A008864(n+1)-1, A100484(n+1)]]`
-/

namespace A290496.P2951629143257243954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P2951629143257243954

namespace A290496

/-- `Δ[∪[A008864(n+1)-1, A100484(n+1)]]` -/
def P2951629143257243954.Spec : Prop :=
  ∀ n, P2951629143257243954.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P12039549152686654278

`Δ[∪[A040976(n+1)+2, A100484(n+1)]]`
-/

namespace A290496.P12039549152686654278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P12039549152686654278

namespace A290496

/-- `Δ[∪[A040976(n+1)+2, A100484(n+1)]]` -/
def P12039549152686654278.Spec : Prop :=
  ∀ n, P12039549152686654278.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P18272650953459538625

`Δ[∪[A052147(n+1)-2, A100484(n+1)]]`
-/

namespace A290496.P18272650953459538625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P18272650953459538625

namespace A290496

/-- `Δ[∪[A052147(n+1)-2, A100484(n+1)]]` -/
def P18272650953459538625.Spec : Prop :=
  ∀ n, P18272650953459538625.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P8052485104085018520

`Δ[∪[A100484(n+1), A113935(n+1)-3]]`
-/

namespace A290496.P8052485104085018520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P8052485104085018520

namespace A290496

/-- `Δ[∪[A100484(n+1), A113935(n+1)-3]]` -/
def P8052485104085018520.Spec : Prop :=
  ∀ n, P8052485104085018520.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P11095388463542108612

`Δ[∪[A014688(n+1)-(n+1), A100484(n+1)]]`
-/

namespace A290496.P11095388463542108612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n + 1 : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P11095388463542108612

namespace A290496

/-- `Δ[∪[A014688(n+1)-(n+1), A100484(n+1)]]` -/
def P11095388463542108612.Spec : Prop :=
  ∀ n, P11095388463542108612.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P3544604609910070199

`Δ[A001751(n+1)]`
-/

namespace A290496.P3544604609910070199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290496.P3544604609910070199

namespace A290496

/-- `Δ[A001751(n+1)]` -/
def P3544604609910070199.Spec : Prop :=
  ∀ n, P3544604609910070199.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P371028747188668159

`A001751(n+2)-A001751(n+1)`
-/

namespace A290496.P371028747188668159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 2) - A001751 (n + 1)

end

end A290496.P371028747188668159

namespace A290496

/-- `A001751(n+2)-A001751(n+1)` -/
def P371028747188668159.Spec : Prop :=
  ∀ n, P371028747188668159.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P13559920003915884391

`Δ[record[A001222(n+2)*A006530(n+2)]]`
-/

namespace A290496.P13559920003915884391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2) * A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290496.P13559920003915884391

namespace A290496

/-- `Δ[record[A001222(n+2)*A006530(n+2)]]` -/
def P13559920003915884391.Spec : Prop :=
  ∀ n, P13559920003915884391.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P9654294289653720568

`Δ[lt[A046079(n+2), 2]]`
-/

namespace A290496.P9654294289653720568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P9654294289653720568

namespace A290496

/-- `Δ[lt[A046079(n+2), 2]]` -/
def P9654294289653720568.Spec : Prop :=
  ∀ n, P9654294289653720568.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P15876106989108407876

`Δ[lt[A241534(n+2), 3]]`
-/

namespace A290496.P15876106989108407876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241534 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P15876106989108407876

namespace A290496

/-- `Δ[lt[A241534(n+2), 3]]` -/
def P15876106989108407876.Spec : Prop :=
  ∀ n, P15876106989108407876.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P4290851358675396459

`Δ[lt[n-a(n-1), A006530(n+1)]]` with `a(0)=1`
-/

namespace A290496.P4290851358675396459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P4290851358675396459

namespace A290496

/-- `Δ[lt[n-a(n-1), A006530(n+1)]]` -/
def P4290851358675396459.Spec : Prop :=
  ∀ n, P4290851358675396459.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P7369232241728183260

`Δ[eq[n+1, A001222(n+1)*A006530(n+1)]]`
-/

namespace A290496.P7369232241728183260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A006530 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P7369232241728183260

namespace A290496

/-- `Δ[eq[n+1, A001222(n+1)*A006530(n+1)]]` -/
def P7369232241728183260.Spec : Prop :=
  ∀ n, P7369232241728183260.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P9493321350953774483

`Δ[lt[A305790(2*(n+2)), 8]]`
-/

namespace A290496.P9493321350953774483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305790 (2 * (n + 2))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P9493321350953774483

namespace A290496

/-- `Δ[lt[A305790(2*(n+2)), 8]]` -/
def P9493321350953774483.Spec : Prop :=
  ∀ n, P9493321350953774483.a n = A290496 (n + 1)

end A290496

/-! ## A290496.P12090283151798074735

`Δ[lt[A305891(2*(n+2)), 9]]`
-/

namespace A290496.P12090283151798074735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305891 (2 * (n + 2))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290496.P12090283151798074735

namespace A290496

/-- `Δ[lt[A305891(2*(n+2)), 9]]` -/
def P12090283151798074735.Spec : Prop :=
  ∀ n, P12090283151798074735.a n = A290496 (n + 1)

end A290496

/-!
# A290498: Numbers m such that the set of distinct prime divisors of the number of divisors of Fibonacci(m) is equal to the set of distinct prime divisors of m.

The programs for A290498, there is no canonical definition to state claims against.
-/

/-! ## A290498.P9069729982314617477

`A051953(A225530((2*(n+1))²))`
-/

namespace A290498.P9069729982314617477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A225530 ((2 * (n + 1)) ^ 2)).toNat

end

end A290498.P9069729982314617477

/-! ## A290498.P12033764167105597568

`A070556((2*(n+1))²^A047996(n+2))`
-/

namespace A290498.P12033764167105597568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (SequenceMachineLib.roundAway (((2 * (n + 1)) ^ 2 : ℚ) ^ (A047996 (n + 2) : ℤ))).toNat

end

end A290498.P12033764167105597568

/-! ## A290498.P6337549830262190212

`record[gcd(A034974(n+2), A046074(2*n+1))]`
-/

namespace A290498.P6337549830262190212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034974 (n + 2)) (A046074 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290498.P6337549830262190212

/-! ## A290498.P4599178914951426837

`A051953(A002618(2*(n+1))^A055642(n))`
-/

namespace A290498.P4599178914951426837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (SequenceMachineLib.roundAway ((A002618 (2 * (n + 1)) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A290498.P4599178914951426837

/-! ## A290498.P4242796927834035663

`∩[A047602(n+1), A025487(A137292(n+1))]`
-/

namespace A290498.P4242796927834035663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A137292 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290498.P4242796927834035663

/-!
# A290499: Hypotenuses for which there exist exactly 8 distinct integer triangles.

The programs for A290499, there is no canonical definition to state claims against.
-/

/-! ## A290499.P16837486319585550069

`A290501(n+1)/A216125(A216770(n+1))`
-/

namespace A290499.P16837486319585550069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290501 (n + 1) : ℚ) / (A216125 (A216770 (n + 1)).toNat : ℚ)

end

end A290499.P16837486319585550069

/-! ## A290499.P8562802692242008780

`A290500(n+1)/A061200(A029743(n+1))`
-/

namespace A290499.P8562802692242008780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290500 (n + 1) : ℚ) / (A061200 (A029743 (n + 1)).toNat : ℚ)

end

end A290499.P8562802692242008780

/-! ## A290499.P6394497055214684411

`A290500(n+1)/A165826(A002313(n+1))`
-/

namespace A290499.P6394497055214684411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290500 (n + 1) : ℚ) / (A165826 (A002313 (n + 1)).toNat : ℚ)

end

end A290499.P6394497055214684411

/-! ## A290499.P743256519310939879

`A290500(n+1)/A094473(A005408(n))`
-/

namespace A290499.P743256519310939879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290500 (n + 1) : ℚ) / (A094473 (A005408 n).toNat : ℚ)

end

end A290499.P743256519310939879

/-! ## A290499.P13705429295639265811

`A290500(n+1)/A256452(A084646(n+1))`
-/

namespace A290499.P13705429295639265811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290500 (n + 1) : ℚ) / (A256452 (A084646 (n + 1)).toNat : ℚ)

end

end A290499.P13705429295639265811

/-! ## A290499.P18434071071114935768

`A290500(n+1)/dr(A092440(A093178(n)))`
-/

namespace A290499.P18434071071114935768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290500 (n + 1) : ℚ) / (SequenceMachineLib.digitalRoot (A092440 (A093178 n).toNat) : ℚ)

end

end A290499.P18434071071114935768

/-! ## A290499.P7134373724868945810

`A290500(n+1)/A001221(A046391(n+1))`
-/

namespace A290499.P7134373724868945810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290500 (n + 1) : ℚ) / (A001221 (A046391 (n + 1)).toNat : ℚ)

end

end A290499.P7134373724868945810

/-! ## A290499.P2668437488558836385

`A290500(n+1)/A010686(A351377(n+1))`
-/

namespace A290499.P2668437488558836385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290500 (n + 1) : ℚ) / (A010686 (A351377 (n + 1)).toNat : ℚ)

end

end A290499.P2668437488558836385

/-! ## A290499.P17822486300535377288

`A010676(A246685(n))²*A097219(n+1)`
-/

namespace A290499.P17822486300535377288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 (A246685 n).toNat ^ 2 * A097219 (n + 1)

end

end A290499.P17822486300535377288

/-! ## A290499.P1639622011738979549

`A010676(A165826(n+1))²*A097219(n+1)`
-/

namespace A290499.P1639622011738979549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 (A165826 (n + 1)).toNat ^ 2 * A097219 (n + 1)

end

end A290499.P1639622011738979549

