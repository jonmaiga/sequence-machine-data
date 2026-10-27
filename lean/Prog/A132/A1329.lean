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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A132900: Colored Motzkin paths where each of the steps has three possible colors.

The programs for A132900, the canonical program `A132900.P17952565946066696786` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132900 has offset 0).

The definition of A132900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132900.P17952565946066696786

`3^n*A001006(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132900

/-- `3^n*A001006(n)` -/
def P17952565946066696786.Spec : Prop :=
  ∀ n, P17952565946066696786.a n = A132900 n

theorem P17952565946066696786.correct : P17952565946066696786.Spec := by
  intro n
  simp only [A132900]

end A132900

/-! ## A132900.P14955140373814341326

`3^n*Δ[A097332(n)]`
-/

namespace A132900.P14955140373814341326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A132900.P14955140373814341326

namespace A132900

/-- `3^n*Δ[A097332(n)]` -/
def P14955140373814341326.Spec : Prop :=
  ∀ n, P14955140373814341326.a n = A132900 n

end A132900

/-! ## A132900.P16027854447840374224

`3^n*A086246(n+2)`
-/

namespace A132900.P16027854447840374224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A086246 (n + 2)

end

end A132900.P16027854447840374224

namespace A132900

/-- `3^n*A086246(n+2)` -/
def P16027854447840374224.Spec : Prop :=
  ∀ n, P16027854447840374224.a n = A132900 n

end A132900

/-! ## A132900.P14981493186859497908

`3^n*A168049(n+2)`
-/

namespace A132900.P14981493186859497908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A168049 (n + 2)

end

end A132900.P14981493186859497908

namespace A132900

/-- `3^n*A168049(n+2)` -/
def P14981493186859497908.Spec : Prop :=
  ∀ n, P14981493186859497908.a n = A132900 n

end A132900

/-! ## A132900.P14194970518762023087

`(-3)^n*A166587(n+1)`
-/

namespace A132900.P14194970518762023087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n * A166587 (n + 1)

end

end A132900.P14194970518762023087

namespace A132900

/-- `(-3)^n*A166587(n+1)` -/
def P14194970518762023087.Spec : Prop :=
  ∀ n, P14194970518762023087.a n = A132900 n

end A132900

/-! ## A132900.P4023490800988554047

`3^(n-1)*A168073(n+2)`
-/

namespace A132900.P4023490800988554047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A168073 (n + 2) : ℚ)

end

end A132900.P4023490800988554047

namespace A132900

/-- `3^(n-1)*A168073(n+2)` -/
def P4023490800988554047.Spec : Prop :=
  ∀ n, P4023490800988554047.a n = (A132900 n : ℚ)

end A132900

/-! ## A132900.P11252855991193232827

`xor(-2, 3^n)*A168051(n+2)`
-/

namespace A132900.P11252855991193232827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-2) (3 ^ n : ℤ) * A168051 (n + 2)

end

end A132900.P11252855991193232827

namespace A132900

/-- `xor(-2, 3^n)*A168051(n+2)` -/
def P11252855991193232827.Spec : Prop :=
  ∀ n, P11252855991193232827.a n = A132900 n

end A132900

/-! ## A132900.P17025420995922983748

`Δ[A097332(n)]*A000244(n)`
-/

namespace A132900.P17025420995922983748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000244 n

end

end A132900.P17025420995922983748

namespace A132900

/-- `Δ[A097332(n)]*A000244(n)` -/
def P17025420995922983748.Spec : Prop :=
  ∀ n, P17025420995922983748.a n = A132900 n

end A132900

/-! ## A132900.P3721030517351977312

`A001006(n)*A017914(2*n)`
-/

namespace A132900.P3721030517351977312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A017914 (2 * n)

end

end A132900.P3721030517351977312

namespace A132900

/-- `A001006(n)*A017914(2*n)` -/
def P3721030517351977312.Spec : Prop :=
  ∀ n, P3721030517351977312.a n = A132900 n

end A132900

/-! ## A132900.P13241878567536779708

`A001006(n)*A038754(2*n)`
-/

namespace A132900.P13241878567536779708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A038754 (2 * n)

end

end A132900.P13241878567536779708

namespace A132900

/-- `A001006(n)*A038754(2*n)` -/
def P13241878567536779708.Spec : Prop :=
  ∀ n, P13241878567536779708.a n = A132900 n

end A132900

/-! ## A132900.P2527102201533693266

`A001006(n)*A056449(2*n)`
-/

namespace A132900.P2527102201533693266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A056449 (2 * n)

end

end A132900.P2527102201533693266

namespace A132900

/-- `A001006(n)*A056449(2*n)` -/
def P2527102201533693266.Spec : Prop :=
  ∀ n, P2527102201533693266.a n = A132900 n

end A132900

/-! ## A132900.P11189905584359396492

`A001006(n)*A108411(2*n)`
-/

namespace A132900.P11189905584359396492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A108411 (2 * n)

end

end A132900.P11189905584359396492

namespace A132900

/-- `A001006(n)*A108411(2*n)` -/
def P11189905584359396492.Spec : Prop :=
  ∀ n, P11189905584359396492.a n = A132900 n

end A132900

/-! ## A132900.P12096058738445036191

`A001006(n)*A254006(2*n)`
-/

namespace A132900.P12096058738445036191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A254006 (2 * n)

end

end A132900.P12096058738445036191

namespace A132900

/-- `A001006(n)*A254006(2*n)` -/
def P12096058738445036191.Spec : Prop :=
  ∀ n, P12096058738445036191.a n = A132900 n

end A132900

/-! ## A132900.P11592964110419347063

`A001006(n)*A030439(2*n+1)`
-/

namespace A132900.P11592964110419347063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A030439 (2 * n + 1)

end

end A132900.P11592964110419347063

namespace A132900

/-- `A001006(n)*A030439(2*n+1)` -/
def P11592964110419347063.Spec : Prop :=
  ∀ n, P11592964110419347063.a n = A132900 n

end A132900

/-! ## A132900.P1790851732061091264

`A001006(n)*A074324(2*n+1)`
-/

namespace A132900.P1790851732061091264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A074324 (2 * n + 1)

end

end A132900.P1790851732061091264

namespace A132900

/-- `A001006(n)*A074324(2*n+1)` -/
def P1790851732061091264.Spec : Prop :=
  ∀ n, P1790851732061091264.a n = A132900 n

end A132900

/-! ## A132900.P8544407356019888140

`A001006(n)*A130599(2*n+1)`
-/

namespace A132900.P8544407356019888140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A130599 (2 * n + 1)

end

end A132900.P8544407356019888140

namespace A132900

/-- `A001006(n)*A130599(2*n+1)` -/
def P8544407356019888140.Spec : Prop :=
  ∀ n, P8544407356019888140.a n = A132900 n

end A132900

/-! ## A132900.P17710082093651531000

`A001006(n)*A166450(2*n+1)`
-/

namespace A132900.P17710082093651531000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A166450 (2 * n + 1)

end

end A132900.P17710082093651531000

namespace A132900

/-- `A001006(n)*A166450(2*n+1)` -/
def P17710082093651531000.Spec : Prop :=
  ∀ n, P17710082093651531000.a n = A132900 n

end A132900

/-! ## A132900.P882687317550648161

`A001006(n)*A166465(2*n+1)`
-/

namespace A132900.P882687317550648161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A166465 (2 * n + 1)

end

end A132900.P882687317550648161

namespace A132900

/-- `A001006(n)*A166465(2*n+1)` -/
def P882687317550648161.Spec : Prop :=
  ∀ n, P882687317550648161.a n = A132900 n

end A132900

/-! ## A132900.P983505932015493214

`A001006(n)*A166481(2*n+1)`
-/

namespace A132900.P983505932015493214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A166481 (2 * n + 1)

end

end A132900.P983505932015493214

namespace A132900

/-- `A001006(n)*A166481(2*n+1)` -/
def P983505932015493214.Spec : Prop :=
  ∀ n, P983505932015493214.a n = A132900 n

end A132900

/-! ## A132900.P17327629258475705946

`A001006(n)*A166552(2*n+1)`
-/

namespace A132900.P17327629258475705946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A166552 (2 * n + 1)

end

end A132900.P17327629258475705946

namespace A132900

/-- `A001006(n)*A166552(2*n+1)` -/
def P17327629258475705946.Spec : Prop :=
  ∀ n, P17327629258475705946.a n = A132900 n

end A132900

/-!
# A132903: Numbers formed by concatenating 3 consecutive prime numbers.

The programs for A132903, there is no canonical definition to state claims against.
-/

/-! ## A132903.P3263541620031623659

`A049857(p?[2*n+1])`
-/

namespace A132903.P3263541620031623659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A132903.P3263541620031623659

/-! ## A132903.P3991274824484915471

`A049857(A065091(n+1))`
-/

namespace A132903.P3991274824484915471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (A065091 (n + 1)).toNat

end

end A132903.P3991274824484915471

/-! ## A132903.P9963305653083970614

`A049857(A000040(n+2))`
-/

namespace A132903.P9963305653083970614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (A000040 (n + 2)).toNat

end

end A132903.P9963305653083970614

/-! ## A132903.P14721510635998060196

`A049857(A006005(n+2))`
-/

namespace A132903.P14721510635998060196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (A006005 (n + 2)).toNat

end

end A132903.P14721510635998060196

/-! ## A132903.P15963426176356794999

`A049857(record[A006530(n+3)])`
-/

namespace A132903.P15963426176356794999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132903.P15963426176356794999

/-! ## A132903.P2872223719789385942

`A049857(record[A014963(n+3)])`
-/

namespace A132903.P2872223719789385942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132903.P2872223719789385942

/-! ## A132903.P9404441532972199954

`A049857(record[A020639(n+3)])`
-/

namespace A132903.P9404441532972199954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132903.P9404441532972199954

/-! ## A132903.P17136348092696682135

`A049857(A006093(n+2)+1)`
-/

namespace A132903.P17136348092696682135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (A006093 (n + 2) + 1).toNat

end

end A132903.P17136348092696682135

/-! ## A132903.P7202299277185705278

`A049857(A008864(n+2)-1)`
-/

namespace A132903.P7202299277185705278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (A008864 (n + 2) - 1).toNat

end

end A132903.P7202299277185705278

/-! ## A132903.P9680733950385638996

`A049857(A040976(n+2)+2)`
-/

namespace A132903.P9680733950385638996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (A040976 (n + 2) + 2).toNat

end

end A132903.P9680733950385638996

/-! ## A132903.P7984730705208113918

`A049857(or(1, p?[A003159(n+1)]))`
-/

namespace A132903.P7984730705208113918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A132903.P7984730705208113918

/-! ## A132903.P671996948945141005

`A049857(A000265(p?[n+1+n]))`
-/

namespace A132903.P671996948945141005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A132903.P671996948945141005

/-!
# A132904: Numbers formed by concatenating 4 consecutive prime numbers.

The programs for A132904, there is no canonical definition to state claims against.
-/

/-! ## A132904.P2602513289719564889

`A048380(A279204(n+1))`
-/

namespace A132904.P2602513289719564889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 (A279204 (n + 1)).toNat

end

end A132904.P2602513289719564889

/-!
# A132911: a(n) = (n+1)*(2*n)!/2^n.

The programs for A132911, the canonical program `A132911.P14234696419678953874` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132911 has offset 0).

The definition of A132911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132911.P14234696419678953874

`(n+1)*(2*n-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132911

/-- `(n+1)*(2*n-1)*a(n-1)` -/
def P14234696419678953874.Spec : Prop :=
  ∀ n, P14234696419678953874.a n = A132911 n

theorem P14234696419678953874.correct : P14234696419678953874.Spec := by
  intro n
  simp only [A132911]

end A132911

/-! ## A132911.P6579601649526666764

`(n+1)*(2*n)!/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132911.P6579601649526666764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.factorial (2 * n) : ℚ) / (2 ^ n : ℚ)

end

end A132911.P6579601649526666764

namespace A132911

/-- `(n+1)*(2*n)!/2^n` -/
def P6579601649526666764.Spec : Prop :=
  ∀ n, P6579601649526666764.a n = (A132911 n : ℚ)

end A132911

/-! ## A132911.P6369651030751317231

`-∏[∑[4*n-1]]`
-/

namespace A132911.P6369651030751317231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A132911.P6369651030751317231

namespace A132911

/-- `-∏[∑[4*n-1]]` -/
def P6369651030751317231.Spec : Prop :=
  ∀ n, P6369651030751317231.a n = A132911 n

end A132911

/-! ## A132911.P3081370134927370694

`∏[abs(∑[a(n-1)+4])]` with `a(0)=-1`
-/

namespace A132911.P3081370134927370694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132911.P3081370134927370694

namespace A132911

/-- `∏[abs(∑[a(n-1)+4])]` -/
def P3081370134927370694.Spec : Prop :=
  ∀ n, P3081370134927370694.a n = A132911 n

end A132911

/-! ## A132911.P7078784033699259048

`abs(∏[1-C(2*n+1, 2)])`
-/

namespace A132911.P7078784033699259048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (2 * n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A132911.P7078784033699259048

namespace A132911

/-- `abs(∏[1-C(2*n+1, 2)])` -/
def P7078784033699259048.Spec : Prop :=
  ∀ n, P7078784033699259048.a n = A132911 n

end A132911

/-!
# A132912: a(n) = C(n+2,2)*(2*n)!/2^n.

The programs for A132912, the canonical program `A132912.P5749448875647937577` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132912 has offset 0).

The definition of A132912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132912.P5749448875647937577

`(n+2)*(2*n-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132912

/-- `(n+2)*(2*n-1)*a(n-1)` -/
def P5749448875647937577.Spec : Prop :=
  ∀ n, P5749448875647937577.a n = A132912 n

theorem P5749448875647937577.correct : P5749448875647937577.Spec := by
  intro n
  simp only [A132912]

end A132912

/-! ## A132912.P13811083320282926189

`C(n+2, 2)*(2*n)!/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132912.P13811083320282926189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 * Nat.factorial (2 * n) : ℚ) / (2 ^ n : ℚ)

end

end A132912.P13811083320282926189

namespace A132912

/-- `C(n+2, 2)*(2*n)!/2^n` -/
def P13811083320282926189.Spec : Prop :=
  ∀ n, P13811083320282926189.a n = (A132912 n : ℚ)

end A132912

/-! ## A132912.P8823986578889751614

`∏[a(n-1)+4*n+1]` with `a(0)=1, a(1)=3`
-/

namespace A132912.P8823986578889751614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132912.P8823986578889751614

namespace A132912

/-- `∏[a(n-1)+4*n+1]` -/
def P8823986578889751614.Spec : Prop :=
  ∀ n, (P8823986578889751614.a n : ℤ) = A132912 n

end A132912

/-! ## A132912.P14520739243766970920

`∏[floor(abs(4*n-ϕ))+C(2*n, 2)]`
-/

namespace A132912.P14520739243766970920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋ + (Nat.choose (2 * n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132912.P14520739243766970920

namespace A132912

/-- `∏[floor(abs(4*n-ϕ))+C(2*n, 2)]` -/
def P14520739243766970920.Spec : Prop :=
  ∀ n, P14520739243766970920.a n = A132912 n

end A132912

/-! ## A132912.P15312007655875650592

`A000217(n+1)*A000680(n)`
-/

namespace A132912.P15312007655875650592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A000680 n

end

end A132912.P15312007655875650592

namespace A132912

/-- `A000217(n+1)*A000680(n)` -/
def P15312007655875650592.Spec : Prop :=
  ∀ n, P15312007655875650592.a n = A132912 n

end A132912

/-!
# A132913: a(n) = ceiling(sqrt(n) + n^(1/3)).

The programs for A132913, the canonical program `A132913.P4541698373876955789` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132913 has offset 1).

The definition of A132913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(n+1)+(n+1)^(1/3))` (program `A132913.P4541698373876955789`, by `A132913.P4541698373876955789.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132913.P4541698373876955789

`ceil(sqrt(n+1)+(n+1)^(1/3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132913

/-- `ceil(sqrt(n+1)+(n+1)^(1/3))` -/
def P4541698373876955789.Spec : Prop :=
  ∀ n, P4541698373876955789.a n = A132913 (n + 1)

theorem P4541698373876955789.correct : P4541698373876955789.Spec := by
  intro n
  simp only [A132913, Nat.add_sub_cancel]

end A132913

/-! ## A132913.P12629979877733245031

`A132914(n+1)+A135660(n+1)-A135661(n+1)`
-/

namespace A132913.P12629979877733245031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132914 (n + 1) + (A135660 (n + 1) - A135661 (n + 1))

end

end A132913.P12629979877733245031

namespace A132913

/-- `A132914(n+1)+A135660(n+1)-A135661(n+1)` -/
def P12629979877733245031.Spec : Prop :=
  ∀ n, P12629979877733245031.a n = A132913 (n + 1)

end A132913

/-! ## A132913.P13733373058652448104

`A000523(∑[A080036(A254858(n))])`
-/

namespace A132913.P13733373058652448104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (A254858 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132913.P13733373058652448104

namespace A132913

/-- `A000523(∑[A080036(A254858(n))])` -/
def P13733373058652448104.Spec : Prop :=
  ∀ n, P13733373058652448104.a n = A132913 (n + 1)

end A132913

/-! ## A132913.P15692738436824016936

`A003057(A175140(n+1)-A059995(n))`
-/

namespace A132913.P15692738436824016936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A175140 (n + 1) - A059995 n).toNat

end

end A132913.P15692738436824016936

namespace A132913

/-- `A003057(A175140(n+1)-A059995(n))` -/
def P15692738436824016936.Spec : Prop :=
  ∀ n, P15692738436824016936.a n = A132913 (n + 1)

end A132913

/-! ## A132913.P4549577108963105281

`A132914(n+1)+A014306(A082522(n+1))`
-/

namespace A132913.P4549577108963105281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132914 (n + 1) + A014306 (A082522 (n + 1)).toNat

end

end A132913.P4549577108963105281

namespace A132913

/-- `A132914(n+1)+A014306(A082522(n+1))` -/
def P4549577108963105281.Spec : Prop :=
  ∀ n, P4549577108963105281.a n = A132913 (n + 1)

end A132913

/-! ## A132913.P346249515141721598

`A259361(A183987(n+1))+A103517(n)/(n+1)`
-/

namespace A132913.P346249515141721598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259361 (A183987 (n + 1)).toNat : ℚ) + (A103517 n : ℚ) / (n + 1 : ℚ)

end

end A132913.P346249515141721598

namespace A132913

/-- `A259361(A183987(n+1))+A103517(n)/(n+1)` -/
def P346249515141721598.Spec : Prop :=
  ∀ n, P346249515141721598.a n = (A132913 (n + 1) : ℚ)

end A132913

/-! ## A132913.P10525978835577661792

`A130256(A281615(n+2))`
-/

namespace A132913.P10525978835577661792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130256 (A281615 (n + 2)).toNat

end

end A132913.P10525978835577661792

namespace A132913

/-- `A130256(A281615(n+2))` -/
def P10525978835577661792.Spec : Prop :=
  ∀ n, P10525978835577661792.a n = A132913 (n + 1)

end A132913

/-!
# A132914: a(n) = floor(sqrt(n) + n^(1/3)).

The programs for A132914, the canonical program `A132914.P3294770777966209826` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132914 has offset 1).

The definition of A132914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(n+1)+(n+1)^(1/3))` (program `A132914.P3294770777966209826`, by `A132914.P3294770777966209826.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132914.P3294770777966209826

`floor(sqrt(n+1)+(n+1)^(1/3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132914

/-- `floor(sqrt(n+1)+(n+1)^(1/3))` -/
def P3294770777966209826.Spec : Prop :=
  ∀ n, P3294770777966209826.a n = A132914 (n + 1)

theorem P3294770777966209826.correct : P3294770777966209826.Spec := by
  intro n
  simp only [A132914, Nat.add_sub_cancel]

end A132914

/-! ## A132914.P7330756726151339066

`A132913(n+1)+A135661(n+1)-A135660(n+1)`
-/

namespace A132914.P7330756726151339066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132913 (n + 1) + (A135661 (n + 1) - A135660 (n + 1))

end

end A132914.P7330756726151339066

namespace A132914

/-- `A132913(n+1)+A135661(n+1)-A135660(n+1)` -/
def P7330756726151339066.Spec : Prop :=
  ∀ n, P7330756726151339066.a n = A132914 (n + 1)

end A132914

/-! ## A132914.P9235928840822935327

`round(sqrt(A359902(n+4)+A000027(2*n+3)+1))`
-/

namespace A132914.P9235928840822935327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A359902 (n + 4) + A000027 (2 * n + 3) + 1 : ℝ))

end

end A132914.P9235928840822935327

namespace A132914

/-- `round(sqrt(A359902(n+4)+A000027(2*n+3)+1))` -/
def P9235928840822935327.Spec : Prop :=
  ∀ n, P9235928840822935327.a n = A132914 (n + 1)

end A132914

/-! ## A132914.P13023407609475142675

`A003056(lt[A020985(n), A261790(n)])`
-/

namespace A132914.P13023407609475142675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A132914.P13023407609475142675

namespace A132914

/-- `A003056(lt[A020985(n), A261790(n)])` -/
def P13023407609475142675.Spec : Prop :=
  ∀ n, P13023407609475142675.a n = A132914 (n + 1)

end A132914

/-! ## A132914.P17110429892855872030

`A002024(lt[A115872(n+1), A329452(n)])`
-/

namespace A132914.P17110429892855872030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A132914.P17110429892855872030

namespace A132914

/-- `A002024(lt[A115872(n+1), A329452(n)])` -/
def P17110429892855872030.Spec : Prop :=
  ∀ n, P17110429892855872030.a n = A132914 (n + 1)

end A132914

/-! ## A132914.P3732461061496934595

`A121900(A315392(2*n+1)+A099649(n+1))`
-/

namespace A132914.P3732461061496934595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A315392 (2 * n + 1) + A099649 (n + 1)).toNat

end

end A132914.P3732461061496934595

namespace A132914

/-- `A121900(A315392(2*n+1)+A099649(n+1))` -/
def P3732461061496934595.Spec : Prop :=
  ∀ n, P3732461061496934595.a n = A132914 (n + 1)

end A132914

/-! ## A132914.P12042396312700042184

`A000196(A134407(n+1)+2+n)`
-/

namespace A132914.P12042396312700042184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A134407 (n + 1) + 2 + (n : ℤ)).toNat

end

end A132914.P12042396312700042184

namespace A132914

/-- `A000196(A134407(n+1)+2+n)` -/
def P12042396312700042184.Spec : Prop :=
  ∀ n, P12042396312700042184.a n = A132914 (n + 1)

end A132914

/-! ## A132914.P13788434003860783752

`A002024(lt[A179978(n+1), A055958(n)])`
-/

namespace A132914.P13788434003860783752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A132914.P13788434003860783752

namespace A132914

/-- `A002024(lt[A179978(n+1), A055958(n)])` -/
def P13788434003860783752.Spec : Prop :=
  ∀ n, P13788434003860783752.a n = A132914 (n + 1)

end A132914

/-! ## A132914.P10817200058270046066

`A259361(A183987(n+1))+1`
-/

namespace A132914.P10817200058270046066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A183987 (n + 1)).toNat + 1

end

end A132914.P10817200058270046066

namespace A132914

/-- `A259361(A183987(n+1))+1` -/
def P10817200058270046066.Spec : Prop :=
  ∀ n, P10817200058270046066.a n = A132914 (n + 1)

end A132914

/-! ## A132914.P13776885699023257047

`ceil(sqrt(A183988(n+2)))`
-/

namespace A132914.P13776885699023257047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A183988 (n + 2) : ℝ)⌉

end

end A132914.P13776885699023257047

namespace A132914

/-- `ceil(sqrt(A183988(n+2)))` -/
def P13776885699023257047.Spec : Prop :=
  ∀ n, P13776885699023257047.a n = A132914 (n + 1)

end A132914

/-!
# A132915: a(0)=0; a(1)=1; a(n) = Sum_{k=1..[sqrt(n)]} a(n-k) for n>=2.

The programs for A132915, there is no canonical definition to state claims against.
-/

/-! ## A132915.P351951638492967986

`A030036(n+2)-A000035(A000079(n))`
-/

namespace A132915.P351951638492967986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030036 (n + 2) - A000035 (A000079 n).toNat

end

end A132915.P351951638492967986

/-! ## A132915.P7895076846892149969

`A030036(n+2)%A068086(A001844(n))`
-/

namespace A132915.P7895076846892149969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030036 (n + 2)) (A068086 (A001844 n).toNat)

end

end A132915.P7895076846892149969

/-! ## A132915.P12173691729052599617

`A030036(n+2)%A216999(n)`
-/

namespace A132915.P12173691729052599617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030036 (n + 2)) (A216999 n)

end

end A132915.P12173691729052599617

/-! ## A132915.P3139424225400320986

`A121373(A019278(2*(n+1)))+A030036(n+2)`
-/

namespace A132915.P3139424225400320986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A019278 (2 * (n + 1))).toNat + A030036 (n + 2)

end

end A132915.P3139424225400320986

/-! ## A132915.P13207450470020016975

`A030036(n+2)*A123110(A000041(3*(n+1)))`
-/

namespace A132915.P13207450470020016975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030036 (n + 2) * A123110 (A000041 (3 * (n + 1))).toNat

end

end A132915.P13207450470020016975

/-!
# A132916: a(0)=0; a(1)=1; a(n) = Sum_{k=1..floor(n^(1/3))} a(n-k) for n >= 2.

The programs for A132916, there is no canonical definition to state claims against.
-/

/-! ## A132916.P4507554481804691497

`A007067(a(n-1))^A161097(n+1)` with `a(0)=0`
-/

namespace A132916.P4507554481804691497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A007067 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A161097 (n + 1) : ℤ)

end

end A132916.P4507554481804691497

/-! ## A132916.P14044029291832915071

`A005206(A000285(n)-A164413(n))`
-/

namespace A132916.P14044029291832915071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A000285 n - A164413 n).toNat

end

end A132916.P14044029291832915071

/-! ## A132916.P10006925799506100005

`A000045(lt[A294922(n), 5]-A064524(n))`
-/

namespace A132916.P10006925799506100005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294922 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - A064524 n).toNat

end

end A132916.P10006925799506100005

/-! ## A132916.P15757237176966669280

`A000045(∑[A031346(n)^A051444(n+1)])`
-/

namespace A132916.P15757237176966669280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031346 n : ℚ) ^ (A051444 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A132916.P15757237176966669280

/-! ## A132916.P16096377142494803363

`A000045(A078510(n+1)%A265408(n))`
-/

namespace A132916.P16096377142494803363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A078510 (n + 1)) (A265408 n)).toNat

end

end A132916.P16096377142494803363

/-!
# A132918: Identity matrix with interpolated zeros.

The programs for A132918, the canonical program `A132918.P11162049490608784263` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132918 has offset 1).

The definition of A132918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132918.P1906624862351702580

`char[∑[4*n]+n]`
-/

namespace A132918.P1906624862351702580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A132918.P1906624862351702580

namespace A132918

/-- `char[∑[4*n]+n]` -/
def P1906624862351702580.Spec : Prop :=
  ∀ n, (P1906624862351702580.a n : ℤ) = A132918 (n + 1)

end A132918

/-! ## A132918.P4313055466804596596

`and(1, char[C(2*n, 2)-1])`
-/

namespace A132918.P4313055466804596596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A132918.P4313055466804596596

namespace A132918

/-- `and(1, char[C(2*n, 2)-1])` -/
def P4313055466804596596.Spec : Prop :=
  ∀ n, (P4313055466804596596.a n : ℤ) = A132918 (n + 1)

end A132918

/-! ## A132918.P17603651352865779893

`and(1, char[n*(2*n+3)])`
-/

namespace A132918.P17603651352865779893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A132918.P17603651352865779893

namespace A132918

/-- `and(1, char[n*(2*n+3)])` -/
def P17603651352865779893.Spec : Prop :=
  ∀ n, (P17603651352865779893.a n : ℤ) = A132918 (n + 1)

end A132918

/-! ## A132918.P16914751849417226286

`ceil(atan(char[n*(2*n+3)]))`
-/

namespace A132918.P16914751849417226286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A132918.P16914751849417226286

namespace A132918

/-- `ceil(atan(char[n*(2*n+3)]))` -/
def P16914751849417226286.Spec : Prop :=
  ∀ n, P16914751849417226286.a n = A132918 (n + 1)

end A132918

/-! ## A132918.P1432256823177257958

`log2(char[C(2*n, 2)-1]+1)`
-/

namespace A132918.P1432256823177257958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℤ) - 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℝ)

end

end A132918.P1432256823177257958

namespace A132918

/-- `log2(char[C(2*n, 2)-1]+1)` -/
def P1432256823177257958.Spec : Prop :=
  ∀ n, P1432256823177257958.a n = (A132918 (n + 1) : ℝ)

end A132918

/-! ## A132918.P13471824208429689159

`∪[2*(n+1), (n+1)²]%2`
-/

namespace A132918.P13471824208429689159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n % 2

end

end A132918.P13471824208429689159

namespace A132918

/-- `∪[2*(n+1), (n+1)²]%2` -/
def P13471824208429689159.Spec : Prop :=
  ∀ n, (P13471824208429689159.a n : ℤ) = A132918 (n + 1)

end A132918

/-! ## A132918.P8476913527956187808

`C((col(n)+1)%2, row(n)-col(n)+1)`
-/

namespace A132918.P8476913527956187808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.triCol n + 1) % 2) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A132918.P8476913527956187808

namespace A132918

/-- `C((col(n)+1)%2, row(n)-col(n)+1)` -/
def P8476913527956187808.Spec : Prop :=
  ∀ n, (P8476913527956187808.a n : ℤ) = A132918 (n + 1)

end A132918

/-! ## A132918.P11162049490608784263

`A127648(n)%2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132918

/-- `A127648(n)%2` -/
def P11162049490608784263.Spec : Prop :=
  ∀ n, P11162049490608784263.a n = A132918 (n + 1)

theorem P11162049490608784263.correct : P11162049490608784263.Spec := by
  intro n
  simp only [A132918, Nat.add_sub_cancel]

end A132918

/-! ## A132918.P11335044883734572976

`A131431(n)%2`
-/

namespace A132918.P11335044883734572976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131431 n) 2

end

end A132918.P11335044883734572976

namespace A132918

/-- `A131431(n)%2` -/
def P11335044883734572976.Spec : Prop :=
  ∀ n, P11335044883734572976.a n = A132918 (n + 1)

end A132918

/-! ## A132918.P8070003730705324929

`A131817(n)%2`
-/

namespace A132918.P8070003730705324929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131817 n) 2

end

end A132918.P8070003730705324929

namespace A132918

/-- `A131817(n)%2` -/
def P8070003730705324929.Spec : Prop :=
  ∀ n, P8070003730705324929.a n = A132918 (n + 1)

end A132918

/-! ## A132918.P8936977564923237914

`A193848(n)%2`
-/

namespace A132918.P8936977564923237914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193848 n) 2

end

end A132918.P8936977564923237914

namespace A132918

/-- `A193848(n)%2` -/
def P8936977564923237914.Spec : Prop :=
  ∀ n, P8936977564923237914.a n = A132918 (n + 1)

end A132918

/-! ## A132918.P3393070387973694942

`A193852(n)%2`
-/

namespace A132918.P3393070387973694942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193852 n) 2

end

end A132918.P3393070387973694942

namespace A132918

/-- `A193852(n)%2` -/
def P3393070387973694942.Spec : Prop :=
  ∀ n, P3393070387973694942.a n = A132918 (n + 1)

end A132918

/-! ## A132918.P16668451300077774405

`A061929(n)%3`
-/

namespace A132918.P16668451300077774405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061929 n) 3

end

end A132918.P16668451300077774405

namespace A132918

/-- `A061929(n)%3` -/
def P16668451300077774405.Spec : Prop :=
  ∀ n, P16668451300077774405.a n = A132918 (n + 1)

end A132918

/-! ## A132918.P14840700736055196619

`A056942(n+1)%2`
-/

namespace A132918.P14840700736055196619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056942 (n + 1)) 2

end

end A132918.P14840700736055196619

namespace A132918

/-- `A056942(n+1)%2` -/
def P14840700736055196619.Spec : Prop :=
  ∀ n, P14840700736055196619.a n = A132918 (n + 1)

end A132918

/-! ## A132918.P14018261219792316593

`A115068(n+1)%2`
-/

namespace A132918.P14018261219792316593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115068 (n + 1)) 2

end

end A132918.P14018261219792316593

namespace A132918

/-- `A115068(n+1)%2` -/
def P14018261219792316593.Spec : Prop :=
  ∀ n, P14018261219792316593.a n = A132918 (n + 1)

end A132918

/-! ## A132918.P17160142648699828803

`A209820(n+1)%2`
-/

namespace A132918.P17160142648699828803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209820 (n + 1)) 2

end

end A132918.P17160142648699828803

namespace A132918

/-- `A209820(n+1)%2` -/
def P17160142648699828803.Spec : Prop :=
  ∀ n, P17160142648699828803.a n = A132918 (n + 1)

end A132918

/-! ## A132918.P11335217436259922812

`2-gcd(2, A053118(n))`
-/

namespace A132918.P11335217436259922812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A053118 n) : ℤ)

end

end A132918.P11335217436259922812

namespace A132918

/-- `2-gcd(2, A053118(n))` -/
def P11335217436259922812.Spec : Prop :=
  ∀ n, P11335217436259922812.a n = A132918 (n + 1)

end A132918

/-! ## A132918.P11444584258367432391

`A000007(A072738(n))`
-/

namespace A132918.P11444584258367432391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A072738 n).toNat

end

end A132918.P11444584258367432391

namespace A132918

/-- `A000007(A072738(n))` -/
def P11444584258367432391.Spec : Prop :=
  ∀ n, P11444584258367432391.a n = A132918 (n + 1)

end A132918

/-! ## A132918.P173604467123870501

`A023531(A072732(n))`
-/

namespace A132918.P173604467123870501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A072732 n).toNat

end

end A132918.P173604467123870501

namespace A132918

/-- `A023531(A072732(n))` -/
def P173604467123870501.Spec : Prop :=
  ∀ n, P173604467123870501.a n = A132918 (n + 1)

end A132918

/-!
# A132919: Triangle read by rows: T(n,k) = Fibonacci(n) + k - 1.

The programs for A132919, the canonical program `A132919.P11040450635636227322` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132919 has offset 1).

The definition of A132919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(row(n)+1)+col(n)` (program `A132919.P11040450635636227322`, by `A132919.P11040450635636227322.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132919.P11040450635636227322

`A000045(row(n)+1)+col(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132919

/-- `A000045(row(n)+1)+col(n)` -/
def P11040450635636227322.Spec : Prop :=
  ∀ n, P11040450635636227322.a n = A132919 (n + 1)

theorem P11040450635636227322.correct : P11040450635636227322.Spec := by
  intro n
  simp only [A132919, Nat.add_sub_cancel]

end A132919

/-! ## A132919.P10860079867040798806

`A000045(row(n)+1)+col(n)+1-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132919.P10860079867040798806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triRow n + 1) + (SequenceMachineLib.triCol n + 1 : ℤ) - 1

end

end A132919.P10860079867040798806

namespace A132919

/-- `A000045(row(n)+1)+col(n)+1-1` -/
def P10860079867040798806.Spec : Prop :=
  ∀ n, P10860079867040798806.a n = A132919 (n + 1)

theorem P10860079867040798806.correct : P10860079867040798806.Spec := by
  intro n
  simp only [A132919, Nat.add_sub_cancel, A132919.P10860079867040798806.a, A132919.P11040450635636227322.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132919

/-! ## A132919.P4593387891919540197

`A131410(n+1)+A002262(n)`
-/

namespace A132919.P4593387891919540197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) + A002262 n

end

end A132919.P4593387891919540197

namespace A132919

/-- `A131410(n+1)+A002262(n)` -/
def P4593387891919540197.Spec : Prop :=
  ∀ n, P4593387891919540197.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P7320515458329354418

`A131410(n+1)+log2(A059268(n))`
-/

namespace A132919.P7320515458329354418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A131410 (n + 1) : ℝ) + Real.logb 2 (A059268 n : ℝ)

end

end A132919.P7320515458329354418

namespace A132919

/-- `A131410(n+1)+log2(A059268(n))` -/
def P7320515458329354418.Spec : Prop :=
  ∀ n, P7320515458329354418.a n = (A132919 (n + 1) : ℝ)

end A132919

/-! ## A132919.P13061893555636574323

`A131410(n+1)+n-A057944(n)`
-/

namespace A132919.P13061893555636574323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) + ((n : ℤ) - A057944 n)

end

end A132919.P13061893555636574323

namespace A132919

/-- `A131410(n+1)+n-A057944(n)` -/
def P13061893555636574323.Spec : Prop :=
  ∀ n, P13061893555636574323.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P18327343345875050150

`A002260(n+1)+A131410(n+1)-1`
-/

namespace A132919.P18327343345875050150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A131410 (n + 1) - 1)

end

end A132919.P18327343345875050150

namespace A132919

/-- `A002260(n+1)+A131410(n+1)-1` -/
def P18327343345875050150.Spec : Prop :=
  ∀ n, P18327343345875050150.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P1187615136329899699

`A002262(n)+A000045(A002024(n+1))`
-/

namespace A132919.P1187615136329899699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000045 (A002024 (n + 1)).toNat

end

end A132919.P1187615136329899699

namespace A132919

/-- `A002262(n)+A000045(A002024(n+1))` -/
def P1187615136329899699.Spec : Prop :=
  ∀ n, P1187615136329899699.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P3413616689945277469

`A002262(n)+A000045(A003056(n)+1)`
-/

namespace A132919.P3413616689945277469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000045 (A003056 n + 1).toNat

end

end A132919.P3413616689945277469

namespace A132919

/-- `A002262(n)+A000045(A003056(n)+1)` -/
def P3413616689945277469.Spec : Prop :=
  ∀ n, P3413616689945277469.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P12230823628374156270

`A103609(A131507(n)+1)+A002262(n)`
-/

namespace A132919.P12230823628374156270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A131507 n + 1).toNat + A002262 n

end

end A132919.P12230823628374156270

namespace A132919

/-- `A103609(A131507(n)+1)+A002262(n)` -/
def P12230823628374156270.Spec : Prop :=
  ∀ n, P12230823628374156270.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P9642166452479842922

`A037027(n-A002262(n))+A002262(n)`
-/

namespace A132919.P9642166452479842922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A132919.P9642166452479842922

namespace A132919

/-- `A037027(n-A002262(n))+A002262(n)` -/
def P9642166452479842922.Spec : Prop :=
  ∀ n, P9642166452479842922.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P9684957298429477979

`A053538(n-A002262(n))+A002262(n)`
-/

namespace A132919.P9684957298429477979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A132919.P9684957298429477979

namespace A132919

/-- `A053538(n-A002262(n))+A002262(n)` -/
def P9684957298429477979.Spec : Prop :=
  ∀ n, P9684957298429477979.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P6679556427806873643

`A055830(n-A002262(n))+A002262(n)`
-/

namespace A132919.P6679556427806873643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A132919.P6679556427806873643

namespace A132919

/-- `A055830(n-A002262(n))+A002262(n)` -/
def P6679556427806873643.Spec : Prop :=
  ∀ n, P6679556427806873643.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P846027415032774556

`A058071(n-A002262(n))+A002262(n)`
-/

namespace A132919.P846027415032774556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A132919.P846027415032774556

namespace A132919

/-- `A058071(n-A002262(n))+A002262(n)` -/
def P846027415032774556.Spec : Prop :=
  ∀ n, P846027415032774556.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P2394942655151125001

`A016095(A057944(n))+n-A057944(n)`
-/

namespace A132919.P2394942655151125001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016095 (A057944 n).toNat + ((n : ℤ) - A057944 n)

end

end A132919.P2394942655151125001

namespace A132919

/-- `A016095(A057944(n))+n-A057944(n)` -/
def P2394942655151125001.Spec : Prop :=
  ∀ n, P2394942655151125001.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P6323995427927864947

`A181974(n-A002262(n))+A002262(n)`
-/

namespace A132919.P6323995427927864947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181974 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A132919.P6323995427927864947

namespace A132919

/-- `A181974(n-A002262(n))+A002262(n)` -/
def P6323995427927864947.Spec : Prop :=
  ∀ n, P6323995427927864947.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P909082636925346814

`A002260(n+1)+A000071(A002024(n+1))`
-/

namespace A132919.P909082636925346814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A000071 (A002024 (n + 1)).toNat

end

end A132919.P909082636925346814

namespace A132919

/-- `A002260(n+1)+A000071(A002024(n+1))` -/
def P909082636925346814.Spec : Prop :=
  ∀ n, P909082636925346814.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P15854811512664416984

`A212804(A002024(n+1)+1)+A002262(n)`
-/

namespace A132919.P15854811512664416984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A002024 (n + 1) + 1).toNat + A002262 n

end

end A132919.P15854811512664416984

namespace A132919

/-- `A212804(A002024(n+1)+1)+A002262(n)` -/
def P15854811512664416984.Spec : Prop :=
  ∀ n, P15854811512664416984.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P11863884694681014291

`A002262(n)+A000045(A003057(n+2)-1)`
-/

namespace A132919.P11863884694681014291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000045 (A003057 (n + 2) - 1).toNat

end

end A132919.P11863884694681014291

namespace A132919

/-- `A002262(n)+A000045(A003057(n+2)-1)` -/
def P11863884694681014291.Spec : Prop :=
  ∀ n, P11863884694681014291.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P14157370676195748699

`A057554(Δ[n²])+A000045(A002024(n+1))`
-/

namespace A132919.P14157370676195748699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000045 (A002024 (n + 1)).toNat

end

end A132919.P14157370676195748699

namespace A132919

/-- `A057554(Δ[n²])+A000045(A002024(n+1))` -/
def P14157370676195748699.Spec : Prop :=
  ∀ n, P14157370676195748699.a n = A132919 (n + 1)

end A132919

/-! ## A132919.P3264954873506592177

`A002262(n)+A000045(A004736(n+1)+A002262(n))`
-/

namespace A132919.P3264954873506592177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000045 (A004736 (n + 1) + A002262 n).toNat

end

end A132919.P3264954873506592177

namespace A132919

/-- `A002262(n)+A000045(A004736(n+1)+A002262(n))` -/
def P3264954873506592177.Spec : Prop :=
  ∀ n, P3264954873506592177.a n = A132919 (n + 1)

end A132919

/-!
# A132920: a(n) = n*Fibonacci(n) + binomial(n, 2).

The programs for A132920, the canonical program `A132920.P7567733041860383944` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132920 has offset 1).

The definition of A132920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000045(n+1)+C(n+1, 2)` (program `A132920.P7567733041860383944`, by `A132920.P7567733041860383944.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132920.P7567733041860383944

`(n+1)*A000045(n+1)+C(n+1, 2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132920

/-- `(n+1)*A000045(n+1)+C(n+1, 2)` -/
def P7567733041860383944.Spec : Prop :=
  ∀ n, P7567733041860383944.a n = A132920 (n + 1)

theorem P7567733041860383944.correct : P7567733041860383944.Spec := by
  intro n
  simp only [A132920, Nat.add_sub_cancel]

end A132920

/-! ## A132920.P11594785840234655789

`∑[Δ[A045925(n)]+n]`
-/

namespace A132920.P11594785840234655789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132920.P11594785840234655789

namespace A132920

/-- `∑[Δ[A045925(n)]+n]` -/
def P11594785840234655789.Spec : Prop :=
  ∀ n, P11594785840234655789.a n = A132920 (n + 1)

end A132920

/-! ## A132920.P2274368538559586761

`A045925(n+1)+∑[n]`
-/

namespace A132920.P2274368538559586761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A132920.P2274368538559586761

namespace A132920

/-- `A045925(n+1)+∑[n]` -/
def P2274368538559586761.Spec : Prop :=
  ∀ n, P2274368538559586761.a n = A132920 (n + 1)

end A132920

/-! ## A132920.P14756828055348168801

`∑[A136391(n+1)+n]`
-/

namespace A132920.P14756828055348168801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132920.P14756828055348168801

namespace A132920

/-- `∑[A136391(n+1)+n]` -/
def P14756828055348168801.Spec : Prop :=
  ∀ n, P14756828055348168801.a n = A132920 (n + 1)

end A132920

/-! ## A132920.P6457112305552539269

`∑[Δ[n*A000045(n)]+n]`
-/

namespace A132920.P6457112305552539269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132920.P6457112305552539269

namespace A132920

/-- `∑[Δ[n*A000045(n)]+n]` -/
def P6457112305552539269.Spec : Prop :=
  ∀ n, P6457112305552539269.a n = A132920 (n + 1)

end A132920

/-! ## A132920.P1721067412281675796

`∑[n]+(n+1)*A000045(n+1)`
-/

namespace A132920.P1721067412281675796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * A000045 (n + 1)

end

end A132920.P1721067412281675796

namespace A132920

/-- `∑[n]+(n+1)*A000045(n+1)` -/
def P1721067412281675796.Spec : Prop :=
  ∀ n, P1721067412281675796.a n = A132920 (n + 1)

end A132920

/-! ## A132920.P12369311689777463666

`(n+1)*(Δ[A000045(n+2)]+n/2)`
-/

namespace A132920.P12369311689777463666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f1 (n + 1) - f1 n : ℚ) + (n : ℚ) / 2)

end

end A132920.P12369311689777463666

namespace A132920

/-- `(n+1)*(Δ[A000045(n+2)]+n/2)` -/
def P12369311689777463666.Spec : Prop :=
  ∀ n, P12369311689777463666.a n = (A132920 (n + 1) : ℚ)

end A132920

/-! ## A132920.P13203877507160776495

`∑[A006490(n+1)+A002062(n)]`
-/

namespace A132920.P13203877507160776495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) + A002062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132920.P13203877507160776495

namespace A132920

/-- `∑[A006490(n+1)+A002062(n)]` -/
def P13203877507160776495.Spec : Prop :=
  ∀ n, P13203877507160776495.a n = A132920 (n + 1)

end A132920

/-! ## A132920.P5485250852637509275

`∑[A006490(n+1)+A000045(n)+n]`
-/

namespace A132920.P5485250852637509275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) + (A000045 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132920.P5485250852637509275

namespace A132920

/-- `∑[A006490(n+1)+A000045(n)+n]` -/
def P5485250852637509275.Spec : Prop :=
  ∀ n, P5485250852637509275.a n = A132920 (n + 1)

end A132920

/-! ## A132920.P6295603991081668873

`A002062(n+1)*(n+1)-A000217(n+1)`
-/

namespace A132920.P6295603991081668873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (n + 1) * (n + 1 : ℤ) - A000217 (n + 1)

end

end A132920.P6295603991081668873

namespace A132920

/-- `A002062(n+1)*(n+1)-A000217(n+1)` -/
def P6295603991081668873.Spec : Prop :=
  ∀ n, P6295603991081668873.a n = A132920 (n + 1)

theorem P6295603991081668873.correct : P6295603991081668873.Spec := by
  intro n
  simp only [A132920, Nat.add_sub_cancel, A132920.P6295603991081668873.a, A132920.P7567733041860383944.a, A000045, A000045.P11838749114346432762.a, A000217, A000217.P10269402890581615239.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132920

/-! ## A132920.P3225925038153372070

`A014286(n+1)+A000217(n)-A014286(n)`
-/

namespace A132920.P3225925038153372070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1) + (A000217 n - A014286 n)

end

end A132920.P3225925038153372070

namespace A132920

/-- `A014286(n+1)+A000217(n)-A014286(n)` -/
def P3225925038153372070.Spec : Prop :=
  ∀ n, P3225925038153372070.a n = A132920 (n + 1)

end A132920

/-!
# A132921: Triangle read by rows: T(n,k) = n + Fibonacci(k) - 1, 1 <= k <= n.

The programs for A132921, the canonical program `A132921.P10762244579609554316` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132921 has offset 1).

The definition of A132921 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)+A000045(col(n)+1)` (program `A132921.P10762244579609554316`, by `A132921.P10762244579609554316.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132921.P10762244579609554316

`row(n)+A000045(col(n)+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132921

/-- `row(n)+A000045(col(n)+1)` -/
def P10762244579609554316.Spec : Prop :=
  ∀ n, P10762244579609554316.a n = A132921 (n + 1)

theorem P10762244579609554316.correct : P10762244579609554316.Spec := by
  intro n
  simp only [A132921, Nat.add_sub_cancel]

end A132921

/-! ## A132921.P1079016990488916749

`row(n)+1+A000045(col(n)+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132921.P1079016990488916749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) + A000045 (SequenceMachineLib.triCol n + 1) - 1

end

end A132921.P1079016990488916749

namespace A132921

/-- `row(n)+1+A000045(col(n)+1)-1` -/
def P1079016990488916749.Spec : Prop :=
  ∀ n, P1079016990488916749.a n = A132921 (n + 1)

theorem P1079016990488916749.correct : P1079016990488916749.Spec := by
  intro n
  simp only [A132921, Nat.add_sub_cancel, A132921.P1079016990488916749.a, A132921.P10762244579609554316.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132921

/-! ## A132921.P3146315177172260146

`A104763(n+1)+A003056(n)`
-/

namespace A132921.P3146315177172260146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + A003056 n

end

end A132921.P3146315177172260146

namespace A132921

/-- `A104763(n+1)+A003056(n)` -/
def P3146315177172260146.Spec : Prop :=
  ∀ n, P3146315177172260146.a n = A132921 (n + 1)

end A132921

/-! ## A132921.P15477612341751470695

`A132923(n+1)+A002262(n)`
-/

namespace A132921.P15477612341751470695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132923 (n + 1) + A002262 n

end

end A132921.P15477612341751470695

namespace A132921

/-- `A132923(n+1)+A002262(n)` -/
def P15477612341751470695.Spec : Prop :=
  ∀ n, P15477612341751470695.a n = A132921 (n + 1)

theorem P15477612341751470695.correct : P15477612341751470695.Spec := by
  intro n
  simp only [A132921, Nat.add_sub_cancel, A132921.P15477612341751470695.a, A132921.P10762244579609554316.a, A000045, A000045.P11838749114346432762.a, A002262, A002262.P17823619022233514403.a, A132923, A132923.P16204547344121714662.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132921

/-! ## A132921.P5787976531112709261

`A002024(n+1)+A104763(n+1)-1`
-/

namespace A132921.P5787976531112709261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A104763 (n + 1) - 1)

end

end A132921.P5787976531112709261

namespace A132921

/-- `A002024(n+1)+A104763(n+1)-1` -/
def P5787976531112709261.Spec : Prop :=
  ∀ n, P5787976531112709261.a n = A132921 (n + 1)

end A132921

/-! ## A132921.P4493811599382079757

`A104763(n+1)+A003057(n+2)-2`
-/

namespace A132921.P4493811599382079757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + (A003057 (n + 2) - 2)

end

end A132921.P4493811599382079757

namespace A132921

/-- `A104763(n+1)+A003057(n+2)-2` -/
def P4493811599382079757.Spec : Prop :=
  ∀ n, P4493811599382079757.a n = A132921 (n + 1)

end A132921

/-! ## A132921.P16458861869139944708

`A003056(n)+A000045(A002260(n+1))`
-/

namespace A132921.P16458861869139944708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A000045 (A002260 (n + 1)).toNat

end

end A132921.P16458861869139944708

namespace A132921

/-- `A003056(n)+A000045(A002260(n+1))` -/
def P16458861869139944708.Spec : Prop :=
  ∀ n, P16458861869139944708.a n = A132921 (n + 1)

end A132921

/-! ## A132921.P15102995939895331351

`A003056(n)+A000045(A002262(n)+1)`
-/

namespace A132921.P15102995939895331351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A000045 (A002262 n + 1).toNat

end

end A132921.P15102995939895331351

namespace A132921

/-- `A003056(n)+A000045(A002262(n)+1)` -/
def P15102995939895331351.Spec : Prop :=
  ∀ n, P15102995939895331351.a n = A132921 (n + 1)

end A132921

/-! ## A132921.P2441263508192453979

`A003056(n)+A000045(A134868(n+1))`
-/

namespace A132921.P2441263508192453979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A000045 (A134868 (n + 1)).toNat

end

end A132921.P2441263508192453979

namespace A132921

/-- `A003056(n)+A000045(A134868(n+1))` -/
def P2441263508192453979.Spec : Prop :=
  ∀ n, P2441263508192453979.a n = A132921 (n + 1)

end A132921

/-! ## A132921.P15773311786743246997

`A002024(n+1)+A000071(A002260(n+1))`
-/

namespace A132921.P15773311786743246997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A000071 (A002260 (n + 1)).toNat

end

end A132921.P15773311786743246997

namespace A132921

/-- `A002024(n+1)+A000071(A002260(n+1))` -/
def P15773311786743246997.Spec : Prop :=
  ∀ n, P15773311786743246997.a n = A132921 (n + 1)

end A132921

/-! ## A132921.P16319024036400979668

`A003056(n)+A000071(A002262(n)+1)+1`
-/

namespace A132921.P16319024036400979668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A000071 (A002262 n + 1).toNat + 1)

end

end A132921.P16319024036400979668

namespace A132921

/-- `A003056(n)+A000071(A002262(n)+1)+1` -/
def P16319024036400979668.Spec : Prop :=
  ∀ n, P16319024036400979668.a n = A132921 (n + 1)

end A132921

/-! ## A132921.P10101831048239378265

`A000045(A002260(n+1))+∑[A010054(n)]-1`
-/

namespace A132921.P10101831048239378265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A132921.P10101831048239378265

namespace A132921

/-- `A000045(A002260(n+1))+∑[A010054(n)]-1` -/
def P10101831048239378265.Spec : Prop :=
  ∀ n, P10101831048239378265.a n = A132921 (n + 1)

end A132921

/-! ## A132921.P15248266086815402492

`A000071(A002260(n+1))+A003057(n+2)-1`
-/

namespace A132921.P15248266086815402492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A002260 (n + 1)).toNat + (A003057 (n + 2) - 1)

end

end A132921.P15248266086815402492

namespace A132921

/-- `A000071(A002260(n+1))+A003057(n+2)-1` -/
def P15248266086815402492.Spec : Prop :=
  ∀ n, P15248266086815402492.a n = A132921 (n + 1)

end A132921

/-! ## A132921.P17666532618221224810

`A002262(n)+A114327(n)+A081659(A002262(n))`
-/

namespace A132921.P17666532618221224810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A114327 n + A081659 (A002262 n).toNat)

end

end A132921.P17666532618221224810

namespace A132921

/-- `A002262(n)+A114327(n)+A081659(A002262(n))` -/
def P17666532618221224810.Spec : Prop :=
  ∀ n, P17666532618221224810.a n = A132921 (n + 1)

end A132921

/-! ## A132921.P12800215765066705371

`A003056(n)+A000045(A057555(2*n+1))`
-/

namespace A132921.P12800215765066705371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A000045 (A057555 (2 * n + 1)).toNat

end

end A132921.P12800215765066705371

namespace A132921

/-- `A003056(n)+A000045(A057555(2*n+1))` -/
def P12800215765066705371.Spec : Prop :=
  ∀ n, P12800215765066705371.a n = A132921 (n + 1)

end A132921

/-!
# A132922: Row sums of triangle A132921.

The programs for A132922, the canonical program `A132922.P13540449084152002223` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132922 has offset 1).

The definition of A132922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132922.P17879844541599678780

`(n+1)*n+A000045(n+3)-1`
-/

namespace A132922.P17879844541599678780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * n : ℤ) + A000045 (n + 3) - 1

end

end A132922.P17879844541599678780

namespace A132922

/-- `(n+1)*n+A000045(n+3)-1` -/
def P17879844541599678780.Spec : Prop :=
  ∀ n, P17879844541599678780.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P13540449084152002223

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=19, a(4)=32`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A132922

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P13540449084152002223.Spec : Prop :=
  ∀ n, P13540449084152002223.a n = A132922 (n + 1)

theorem P13540449084152002223.correct : P13540449084152002223.Spec := by
  intro n
  simp only [A132922, Nat.add_sub_cancel]

end A132922

/-! ## A132922.P10441841372237194252

`∑[ogf((1-x^2-2x^3)/(1-3x+2x^2+x^3-x^4))]`
-/

namespace A132922.P10441841372237194252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -2] [1, -3, 2, 1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P10441841372237194252

namespace A132922

/-- `∑[ogf((1-x^2-2x^3)/(1-3x+2x^2+x^3-x^4))]` -/
def P10441841372237194252.Spec : Prop :=
  ∀ n, P10441841372237194252.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P6679672241866354927

`∑[Δ[floor(ϕ*a(n-1))]+2*n]` with `a(0)=2`
-/

namespace A132922.P6679672241866354927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  ⌊Real.goldenRatio * (f2 (n - 1) : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P6679672241866354927

namespace A132922

/-- `∑[Δ[floor(ϕ*a(n-1))]+2*n]` -/
def P6679672241866354927.Spec : Prop :=
  ∀ n, P6679672241866354927.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P11088391547293581669

`∑[∑[a(n-1)+a(n-2)-2]]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A132922.P11088391547293581669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P11088391547293581669

namespace A132922

/-- `∑[∑[a(n-1)+a(n-2)-2]]` -/
def P11088391547293581669.Spec : Prop :=
  ∀ n, P11088391547293581669.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P6522140565792383624

`∑[∑[a(n-1)-(2-a(n-2))]]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A132922.P6522140565792383624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  f2 (n - 1) - (2 - f2 (n - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P6522140565792383624

namespace A132922

/-- `∑[∑[a(n-1)-(2-a(n-2))]]` -/
def P6522140565792383624.Spec : Prop :=
  ∀ n, P6522140565792383624.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P12067119920362568128

`∑[A129728(n+1)]`
-/

namespace A132922.P12067119920362568128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P12067119920362568128

namespace A132922

/-- `∑[A129728(n+1)]` -/
def P12067119920362568128.Spec : Prop :=
  ∀ n, P12067119920362568128.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P8369133874108383265

`∑[A089061(n)-4]`
-/

namespace A132922.P8369133874108383265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089061 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P8369133874108383265

namespace A132922

/-- `∑[A089061(n)-4]` -/
def P8369133874108383265.Spec : Prop :=
  ∀ n, P8369133874108383265.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P11870181835825772510

`∑[A081659(n)+n]`
-/

namespace A132922.P11870181835825772510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P11870181835825772510

namespace A132922

/-- `∑[A081659(n)+n]` -/
def P11870181835825772510.Spec : Prop :=
  ∀ n, P11870181835825772510.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P2850169934066666553

`A081662(n)+∑[n]`
-/

namespace A132922.P2850169934066666553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081662 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A132922.P2850169934066666553

namespace A132922

/-- `A081662(n)+∑[n]` -/
def P2850169934066666553.Spec : Prop :=
  ∀ n, P2850169934066666553.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P16183811482937917163

`A255875(n+1)+n²`
-/

namespace A132922.P16183811482937917163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255875 (n + 1) + (n ^ 2 : ℤ)

end

end A132922.P16183811482937917163

namespace A132922

/-- `A255875(n+1)+n²` -/
def P16183811482937917163.Spec : Prop :=
  ∀ n, P16183811482937917163.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P12254079458341421914

`∑[∑[A212804(n)]+2*n]`
-/

namespace A132922.P12254079458341421914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P12254079458341421914

namespace A132922

/-- `∑[∑[A212804(n)]+2*n]` -/
def P12254079458341421914.Spec : Prop :=
  ∀ n, P12254079458341421914.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P6651958647633895765

`∑[A002062(n+1)+n-1]`
-/

namespace A132922.P6651958647633895765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (n + 1) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P6651958647633895765

namespace A132922

/-- `∑[A002062(n+1)+n-1]` -/
def P6651958647633895765.Spec : Prop :=
  ∀ n, P6651958647633895765.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P3297348463683563445

`∑[A000045(n+1)+2*n]`
-/

namespace A132922.P3297348463683563445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P3297348463683563445

namespace A132922

/-- `∑[A000045(n+1)+2*n]` -/
def P3297348463683563445.Spec : Prop :=
  ∀ n, P3297348463683563445.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P16512955486655037977

`∑[A324969(n+2)+2*n]`
-/

namespace A132922.P16512955486655037977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P16512955486655037977

namespace A132922

/-- `∑[A324969(n+2)+2*n]` -/
def P16512955486655037977.Spec : Prop :=
  ∀ n, P16512955486655037977.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P17045151344672960699

`∑[A000071(n+1)]+(n+1)²`
-/

namespace A132922.P17045151344672960699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A132922.P17045151344672960699

namespace A132922

/-- `∑[A000071(n+1)]+(n+1)²` -/
def P17045151344672960699.Spec : Prop :=
  ∀ n, P17045151344672960699.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P292290709182651800

`∑[Δ[A000045(n+2)]+n+n]`
-/

namespace A132922.P292290709182651800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P292290709182651800

namespace A132922

/-- `∑[Δ[A000045(n+2)]+n+n]` -/
def P292290709182651800.Spec : Prop :=
  ∀ n, P292290709182651800.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P711298983443450878

`n-1+A000045(n+3)+n²`
-/

namespace A132922.P711298983443450878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (A000045 (n + 3) + (n ^ 2 : ℤ))

end

end A132922.P711298983443450878

namespace A132922

/-- `n-1+A000045(n+3)+n²` -/
def P711298983443450878.Spec : Prop :=
  ∀ n, P711298983443450878.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P16135719890423130088

`∑[A000045(C(n+1, n))+n+n]`
-/

namespace A132922.P16135719890423130088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose (n + 1) n) + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P16135719890423130088

namespace A132922

/-- `∑[A000045(C(n+1, n))+n+n]` -/
def P16135719890423130088.Spec : Prop :=
  ∀ n, P16135719890423130088.a n = A132922 (n + 1)

end A132922

/-! ## A132922.P14377040111416896503

`∑[a(n-1)+A000045(n-1)+2]` with `a(0)=1`
-/

namespace A132922.P14377040111416896503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A000045 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132922.P14377040111416896503

namespace A132922

/-- `∑[a(n-1)+A000045(n-1)+2]` -/
def P14377040111416896503.Spec : Prop :=
  ∀ n, P14377040111416896503.a n = A132922 (n + 1)

end A132922

/-!
# A132923: Triangle read by rows: T(n, k) = Fibonacci(k) + n - k.

The programs for A132923, the canonical program `A132923.P16204547344121714662` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132923 has offset 1).

The definition of A132923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(col(n)+1)+row(n)-col(n)` (program `A132923.P16204547344121714662`, by `A132923.P16204547344121714662.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132923.P16204547344121714662

`A000045(col(n)+1)+row(n)-col(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132923

/-- `A000045(col(n)+1)+row(n)-col(n)` -/
def P16204547344121714662.Spec : Prop :=
  ∀ n, P16204547344121714662.a n = A132923 (n + 1)

theorem P16204547344121714662.correct : P16204547344121714662.Spec := by
  intro n
  simp only [A132923, Nat.add_sub_cancel]

end A132923

/-! ## A132923.P18214185606216142371

`A000045(col(n)+1)+row(n)+1-(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132923.P18214185606216142371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triCol n + 1) + (SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A132923.P18214185606216142371

namespace A132923

/-- `A000045(col(n)+1)+row(n)+1-(col(n)+1)` -/
def P18214185606216142371.Spec : Prop :=
  ∀ n, P18214185606216142371.a n = A132923 (n + 1)

theorem P18214185606216142371.correct : P18214185606216142371.Spec := by
  intro n
  simp only [A132923, Nat.add_sub_cancel, A132923.P18214185606216142371.a, A132923.P16204547344121714662.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132923

/-! ## A132923.P6287835308773771582

`A104763(n+1)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A132923.P6287835308773771582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A132923.P6287835308773771582

namespace A132923

/-- `A104763(n+1)+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P6287835308773771582.Spec : Prop :=
  ∀ n, P6287835308773771582.a n = A132923 (n + 1)

end A132923

/-! ## A132923.P12184969286550850777

`A000071(1-C(∑[char[∑[n]]], 2)+n)+C(comp[∑[n]]-n, 2)-n`
-/

namespace A132923.P12184969286550850777
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A132923.P12184969286550850777

namespace A132923

/-- `A000071(1-C(∑[char[∑[n]]], 2)+n)+C(comp[∑[n]]-n, 2)-n` -/
def P12184969286550850777.Spec : Prop :=
  ∀ n, P12184969286550850777.a n = A132923 (n + 1)

end A132923

/-! ## A132923.P9820904770015958477

`A000045(1-C(∑[char[∑[n]]], 2)+n)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A132923.P9820904770015958477
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A132923.P9820904770015958477

namespace A132923

/-- `A000045(1-C(∑[char[∑[n]]], 2)+n)+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P9820904770015958477.Spec : Prop :=
  ∀ n, P9820904770015958477.a n = A132923 (n + 1)

end A132923

/-! ## A132923.P3855421388949971369

`A125100(n)/A007318(n)`
-/

namespace A132923.P3855421388949971369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125100 n : ℚ) / (A007318 n : ℚ)

end

end A132923.P3855421388949971369

namespace A132923

/-- `A125100(n)/A007318(n)` -/
def P3855421388949971369.Spec : Prop :=
  ∀ n, P3855421388949971369.a n = (A132923 (n + 1) : ℚ)

end A132923

/-! ## A132923.P17938700751564380223

`A104763(n+1)+A025581(n)`
-/

namespace A132923.P17938700751564380223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + A025581 n

end

end A132923.P17938700751564380223

namespace A132923

/-- `A104763(n+1)+A025581(n)` -/
def P17938700751564380223.Spec : Prop :=
  ∀ n, P17938700751564380223.a n = A132923 (n + 1)

theorem P17938700751564380223.correct : P17938700751564380223.Spec := by
  intro n
  simp only [A132923, Nat.add_sub_cancel, A132923.P17938700751564380223.a, A132923.P16204547344121714662.a, A000045, A000045.P11838749114346432762.a, A025581, A025581.P16112744757063613497.a, A104763, A104763.P8153138766110593277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132923

/-! ## A132923.P9214319112741367719

`A132921(n+1)-A002262(n)`
-/

namespace A132923.P9214319112741367719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132921 (n + 1) - A002262 n

end

end A132923.P9214319112741367719

namespace A132923

/-- `A132921(n+1)-A002262(n)` -/
def P9214319112741367719.Spec : Prop :=
  ∀ n, P9214319112741367719.a n = A132923 (n + 1)

theorem P9214319112741367719.correct : P9214319112741367719.Spec := by
  intro n
  simp only [A132923, Nat.add_sub_cancel, A132923.P9214319112741367719.a, A132923.P16204547344121714662.a, A000045, A000045.P11838749114346432762.a, A002262, A002262.P17823619022233514403.a, A132921, A132921.P10762244579609554316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132923

/-! ## A132923.P17030960322714181250

`A004736(n+1)+A104763(n+1)-1`
-/

namespace A132923.P17030960322714181250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A104763 (n + 1) - 1)

end

end A132923.P17030960322714181250

namespace A132923

/-- `A004736(n+1)+A104763(n+1)-1` -/
def P17030960322714181250.Spec : Prop :=
  ∀ n, P17030960322714181250.a n = A132923 (n + 1)

end A132923

/-! ## A132923.P8582886290533769479

`A025581(n)+A000045(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A132923.P8582886290533769479
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A000045 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat

end

end A132923.P8582886290533769479

namespace A132923

/-- `A025581(n)+A000045(1-C(∑[char[∑[n]]], 2)+n)` -/
def P8582886290533769479.Spec : Prop :=
  ∀ n, P8582886290533769479.a n = A132923 (n + 1)

end A132923

/-! ## A132923.P7468031227798709638

`A000045(A002260(n+1))+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A132923.P7468031227798709638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A132923.P7468031227798709638

namespace A132923

/-- `A000045(A002260(n+1))+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P7468031227798709638.Spec : Prop :=
  ∀ n, P7468031227798709638.a n = A132923 (n + 1)

end A132923

/-! ## A132923.P15484875901062048350

`A114327(n)+A081659(A002262(n))`
-/

namespace A132923.P15484875901062048350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + A081659 (A002262 n).toNat

end

end A132923.P15484875901062048350

namespace A132923

/-- `A114327(n)+A081659(A002262(n))` -/
def P15484875901062048350.Spec : Prop :=
  ∀ n, P15484875901062048350.a n = A132923 (n + 1)

end A132923

/-! ## A132923.P6545358444194331981

`A025581(n)+A000045(A002260(n+1))`
-/

namespace A132923.P6545358444194331981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A000045 (A002260 (n + 1)).toNat

end

end A132923.P6545358444194331981

namespace A132923

/-- `A025581(n)+A000045(A002260(n+1))` -/
def P6545358444194331981.Spec : Prop :=
  ∀ n, P6545358444194331981.a n = A132923 (n + 1)

end A132923

/-! ## A132923.P2001480084267493038

`A025581(n)+A000045(A134868(n+1))`
-/

namespace A132923.P2001480084267493038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A000045 (A134868 (n + 1)).toNat

end

end A132923.P2001480084267493038

namespace A132923

/-- `A025581(n)+A000045(A134868(n+1))` -/
def P2001480084267493038.Spec : Prop :=
  ∀ n, P2001480084267493038.a n = A132923 (n + 1)

end A132923

/-! ## A132923.P17501665283018949999

`A025581(n)+A094436(n)/A007318(n)`
-/

namespace A132923.P17501665283018949999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) + (A094436 n : ℚ) / (A007318 n : ℚ)

end

end A132923.P17501665283018949999

namespace A132923

/-- `A025581(n)+A094436(n)/A007318(n)` -/
def P17501665283018949999.Spec : Prop :=
  ∀ n, P17501665283018949999.a n = (A132923 (n + 1) : ℚ)

end A132923

/-! ## A132923.P15980000677125127856

`A141169(comp[∑[n]])+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A132923.P15980000677125127856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A132923.P15980000677125127856

namespace A132923

/-- `A141169(comp[∑[n]])+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P15980000677125127856.Spec : Prop :=
  ∀ n, P15980000677125127856.a n = A132923 (n + 1)

end A132923

/-! ## A132923.P13585728578614217793

`A000045(A349520(2*n+1))+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A132923.P13585728578614217793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A349520 (2 * n + 1)).toNat + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A132923.P13585728578614217793

namespace A132923

/-- `A000045(A349520(2*n+1))+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P13585728578614217793.Spec : Prop :=
  ∀ n, P13585728578614217793.a n = A132923 (n + 1)

end A132923

/-!
# A132924: Triangle read by columns, 2^(n-1) followed by (2^(n-1) + 1), (2^(n-1) + 2), (2^(n-1) + 3), ...

The programs for A132924, there is no canonical definition to state claims against.
-/

/-! ## A132924.P12032594058354031480

`2^col(n)-col(n)+row(n)`
-/

namespace A132924.P12032594058354031480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ)

end

end A132924.P12032594058354031480

/-! ## A132924.P17030797308318884629

`2^(n-C(∑[char[∑[n]]], 2))+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A132924.P17030797308318884629
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ)

end

end A132924.P17030797308318884629

/-! ## A132924.P17176008857105390506

`2^(n-C(∑[char[∑[n]]], 2))-∑[1-round(sqrt(2*(n+1)))*char[∑[n]]]`
-/

namespace A132924.P17176008857105390506
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f5 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℤ) : ℚ)

end

end A132924.P17176008857105390506

/-! ## A132924.P3390607077619497308

`A185738(char[∑[n]]+n)`
-/

namespace A132924.P3390607077619497308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185738 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A132924.P3390607077619497308

/-! ## A132924.P6568060790864547863

`A025581(n)+2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A132924.P6568060790864547863
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) + (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)

end

end A132924.P6568060790864547863

/-! ## A132924.P7783853645576990724

`C(comp[∑[n]]-n, 2)+A059268(n)-(n+1)`
-/

namespace A132924.P7783853645576990724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) + (A059268 n - (n + 1 : ℤ))

end

end A132924.P7783853645576990724

/-! ## A132924.P12127335534976553502

`log2(A130321(n))+2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A132924.P12127335534976553502
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) : ℝ)

end

end A132924.P12127335534976553502

/-! ## A132924.P9910859875669291378

`2^A002262(n)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A132924.P9910859875669291378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ)

end

end A132924.P9910859875669291378

/-! ## A132924.P10984780536598696498

`A061338(A130328(n))`
-/

namespace A132924.P10984780536598696498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 (A130328 n).toNat

end

end A132924.P10984780536598696498

/-!
# A132925: a(n) = 2^n - 1 + n*(n-1)/2.

The programs for A132925, the canonical program `A132925.P9107122607479651301` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132925 has offset 1).

The definition of A132925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)-1+(n+1)*n/2` (program `A132925.P15128069356391281186`, by `A132925.P15128069356391281186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132925.P9107122607479651301

`2^(n+1)+C(n+1, 2)-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A132925

/-- `2^(n+1)+C(n+1, 2)-1` -/
def P9107122607479651301.Spec : Prop :=
  ∀ n, P9107122607479651301.a n = A132925 (n + 1)

theorem P9107122607479651301.correct : P9107122607479651301.Spec := by
  intro n
  simp only [A132925, Nat.add_sub_cancel]

end A132925

/-! ## A132925.P15128069356391281186

`2^(n+1)-1+(n+1)*n/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132925.P15128069356391281186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - 1 : ℚ) + ((n + 1) * n : ℚ) / 2

end

end A132925.P15128069356391281186

namespace A132925

/-- `2^(n+1)-1+(n+1)*n/2` -/
def P15128069356391281186.Spec : Prop :=
  ∀ n, P15128069356391281186.a n = (A132925 (n + 1) : ℚ)

theorem P15128069356391281186.correct : P15128069356391281186.Spec := by
  intro n
  simp only [A132925, Nat.add_sub_cancel, A132925.P15128069356391281186.a, A132925.P9107122607479651301.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132925

/-! ## A132925.P13146375401352191934

`∑[∑[∑[ogf((-1+x+x^2)/(-1+2x))]]]`
-/

namespace A132925.P13146375401352191934
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -2] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P13146375401352191934

namespace A132925

/-- `∑[∑[∑[ogf((-1+x+x^2)/(-1+2x))]]]` -/
def P13146375401352191934.Spec : Prop :=
  ∀ n, P13146375401352191934.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P2234919428481954047

`floor(∑[∑[a(n-1)-(1-a(n-1))]])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A132925.P2234919428481954047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 1) - (1 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P2234919428481954047

namespace A132925

/-- `floor(∑[∑[a(n-1)-(1-a(n-1))]])` -/
def P2234919428481954047.Spec : Prop :=
  ∀ n, P2234919428481954047.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P13780970619529472583

`∑[A006127(n)]`
-/

namespace A132925.P13780970619529472583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P13780970619529472583

namespace A132925

/-- `∑[A006127(n)]` -/
def P13780970619529472583.Spec : Prop :=
  ∀ n, P13780970619529472583.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P5573776179677450603

`∑[∑[A094373(n)]]`
-/

namespace A132925.P5573776179677450603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P5573776179677450603

namespace A132925

/-- `∑[∑[A094373(n)]]` -/
def P5573776179677450603.Spec : Prop :=
  ∀ n, P5573776179677450603.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P16807597111684192333

`∑[A188917(2*n)]`
-/

namespace A132925.P16807597111684192333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P16807597111684192333

namespace A132925

/-- `∑[A188917(2*n)]` -/
def P16807597111684192333.Spec : Prop :=
  ∀ n, P16807597111684192333.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P376884692527259861

`∑[∑[A228693(2*n)]]`
-/

namespace A132925.P376884692527259861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P376884692527259861

namespace A132925

/-- `∑[∑[A228693(2*n)]]` -/
def P376884692527259861.Spec : Prop :=
  ∀ n, P376884692527259861.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P3500276940751246065

`∑[A131520(n+1)]/2`
-/

namespace A132925.P3500276940751246065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131520 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A132925.P3500276940751246065

namespace A132925

/-- `∑[A131520(n+1)]/2` -/
def P3500276940751246065.Spec : Prop :=
  ∀ n, P3500276940751246065.a n = (A132925 (n + 1) : ℚ)

end A132925

/-! ## A132925.P2185735213243934654

`∑[A336996(n²)+n]`
-/

namespace A132925.P2185735213243934654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 (n ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P2185735213243934654

namespace A132925

/-- `∑[A336996(n²)+n]` -/
def P2185735213243934654.Spec : Prop :=
  ∀ n, P2185735213243934654.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P17310570125272076460

`∑[A131415(∑[n])]`
-/

namespace A132925.P17310570125272076460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131415 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P17310570125272076460

namespace A132925

/-- `∑[A131415(∑[n])]` -/
def P17310570125272076460.Spec : Prop :=
  ∀ n, P17310570125272076460.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P4418818044162682578

`∑[A131897(∑[n])]`
-/

namespace A132925.P4418818044162682578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131897 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P4418818044162682578

namespace A132925

/-- `∑[A131897(∑[n])]` -/
def P4418818044162682578.Spec : Prop :=
  ∀ n, P4418818044162682578.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P5877442528445884178

`A131415(A000124(n+1))`
-/

namespace A132925.P5877442528445884178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131415 (A000124 (n + 1)).toNat

end

end A132925.P5877442528445884178

namespace A132925

/-- `A131415(A000124(n+1))` -/
def P5877442528445884178.Spec : Prop :=
  ∀ n, P5877442528445884178.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P6283708517749505648

`∑[A129143(∑[n+1])]`
-/

namespace A132925.P6283708517749505648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129143 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P6283708517749505648

namespace A132925

/-- `∑[A129143(∑[n+1])]` -/
def P6283708517749505648.Spec : Prop :=
  ∀ n, P6283708517749505648.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P11363224782856969625

`∑[A139548(n²)+n]`
-/

namespace A132925.P11363224782856969625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139548 (n ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P11363224782856969625

namespace A132925

/-- `∑[A139548(n²)+n]` -/
def P11363224782856969625.Spec : Prop :=
  ∀ n, P11363224782856969625.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P15627640462549754537

`∑[A194356(n²)+n]`
-/

namespace A132925.P15627640462549754537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194356 (n ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P15627640462549754537

namespace A132925

/-- `∑[A194356(n²)+n]` -/
def P15627640462549754537.Spec : Prop :=
  ∀ n, P15627640462549754537.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P13043575013347891473

`∑[A194357(n²)+n]`
-/

namespace A132925.P13043575013347891473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194357 (n ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P13043575013347891473

namespace A132925

/-- `∑[A194357(n²)+n]` -/
def P13043575013347891473.Spec : Prop :=
  ∀ n, P13043575013347891473.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P2566937231250944202

`∑[A049063((n+1)²)+n]`
-/

namespace A132925.P2566937231250944202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049063 ((n + 1) ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P2566937231250944202

namespace A132925

/-- `∑[A049063((n+1)²)+n]` -/
def P2566937231250944202.Spec : Prop :=
  ∀ n, P2566937231250944202.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P6565562680455887874

`∑[A105070((n+1)²)+n]`
-/

namespace A132925.P6565562680455887874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105070 ((n + 1) ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P6565562680455887874

namespace A132925

/-- `∑[A105070((n+1)²)+n]` -/
def P6565562680455887874.Spec : Prop :=
  ∀ n, P6565562680455887874.a n = A132925 (n + 1)

end A132925

/-! ## A132925.P16633178747981369013

`∑[A207622((n+1)²)+n]`
-/

namespace A132925.P16633178747981369013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207622 ((n + 1) ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132925.P16633178747981369013

namespace A132925

/-- `∑[A207622((n+1)²)+n]` -/
def P16633178747981369013.Spec : Prop :=
  ∀ n, P16633178747981369013.a n = A132925 (n + 1)

end A132925

/-!
# A132926: Concatenation of first n partition numbers.

The programs for A132926, there is no canonical definition to state claims against.
-/

/-! ## A132926.P7280793535371868308

`A094704(sqrt(A000005(10^n)))-char[5]`
-/

namespace A132926.P7280793535371868308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094704 (SequenceMachineLib.roundAway (Real.sqrt (A000005 (10 ^ n) : ℝ))).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132926.P7280793535371868308

/-! ## A132926.P3145190584508016054

`A019523(n+1)-A002487(A051118(n))`
-/

namespace A132926.P3145190584508016054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019523 (n + 1) - A002487 (A051118 n).toNat

end

end A132926.P3145190584508016054

/-!
# A132927: Concatenation of first n elements of the divisor function d(n), where d(n) is the number of divisors of n.

The programs for A132927, there is no canonical definition to state claims against.
-/

/-! ## A132927.P932940494859223431

`A358615(A189624(3*n+2)+A007097(n))`
-/

namespace A132927.P932940494859223431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358615 (A189624 (3 * n + 2) + A007097 n).toNat

end

end A132927.P932940494859223431

/-!
# A132929: Averages of twin primes such that the sum of the lower, average and upper parts of the twin primes are averages of other twin primes.

The programs for A132929, there is no canonical definition to state claims against.
-/

/-! ## A132929.P14923343643966951369

`A177336(n+1)-1`
-/

namespace A132929.P14923343643966951369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177336 (n + 1) - 1

end

end A132929.P14923343643966951369

/-! ## A132929.P3134070615848650819

`A174920(n+1)+1`
-/

namespace A132929.P3134070615848650819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174920 (n + 1) + 1

end

end A132929.P3134070615848650819

/-! ## A132929.P7221164437356596558

`xor(1, A177336(A000027(n+1)))`
-/

namespace A132929.P7221164437356596558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A177336 (A000027 (n + 1)).toNat)

end

end A132929.P7221164437356596558

/-! ## A132929.P14618273443988279398

`xor(abs(A033999(n)), A177336(n+1))`
-/

namespace A132929.P14618273443988279398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A033999 n| (A177336 (n + 1))

end

end A132929.P14618273443988279398

/-! ## A132929.P12798374378290492568

`xor(A177336(n+1), A347447(val(n+1, 2)+2))`
-/

namespace A132929.P12798374378290492568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A177336 (n + 1)) (A347447 (SequenceMachineLib.valuation (n + 1) 2 + 2))

end

end A132929.P12798374378290492568

/-! ## A132929.P15514663458262741716

`xor(A010892(A004016(n)), A177336(n+1))`
-/

namespace A132929.P15514663458262741716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010892 (A004016 n).toNat) (A177336 (n + 1))

end

end A132929.P15514663458262741716

/-! ## A132929.P12958528456722263390

`xor(A033999(2*n), A177336(n+1))`
-/

namespace A132929.P12958528456722263390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 (2 * n)) (A177336 (n + 1))

end

end A132929.P12958528456722263390

/-! ## A132929.P5038312005870731917

`A177335(4*n+1)+1`
-/

namespace A132929.P5038312005870731917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177335 (4 * n + 1) + 1

end

end A132929.P5038312005870731917

/-! ## A132929.P15146507230372647590

`or(1, A177335(A016813(n)))+1`
-/

namespace A132929.P15146507230372647590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A177335 (A016813 n).toNat) + 1

end

end A132929.P15146507230372647590

/-! ## A132929.P6487729359105451280

`xor(A001222(A006512(n+1)), A177336(n+1))`
-/

namespace A132929.P6487729359105451280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A006512 (n + 1)).toNat) (A177336 (n + 1))

end

end A132929.P6487729359105451280

/-! ## A132929.P4465803481010482665

`∩[A001359(n+1), A327700(n+1)]+1`
-/

namespace A132929.P4465803481010482665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A132929.P4465803481010482665

/-! ## A132929.P9854334721415232260

`∩[A174913(n+1), A327700(n+1)]+1`
-/

namespace A132929.P9854334721415232260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A132929.P9854334721415232260

/-! ## A132929.P11069140478968742396

`∩[A174913(n+1), A181848(n+1)]+1`
-/

namespace A132929.P11069140478968742396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A132929.P11069140478968742396

/-! ## A132929.P6734808256328034876

`∩[A054799(n+1), A327700(n+1)]+1`
-/

namespace A132929.P6734808256328034876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A132929.P6734808256328034876

/-! ## A132929.P13482797763291221027

`∩[A063700(n+1), A327700(n+1)]+1`
-/

namespace A132929.P13482797763291221027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A132929.P13482797763291221027

/-! ## A132929.P26385050201774683

`∩[A181747(n+1), A327700(n+1)]+1`
-/

namespace A132929.P26385050201774683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A132929.P26385050201774683

/-! ## A132929.P4743722649704001069

`∩[A280255(n+1), A327700(n+1)]+1`
-/

namespace A132929.P4743722649704001069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A132929.P4743722649704001069

/-! ## A132929.P3670692115536179107

`∩[A063693(n+1), A327700(n+1)]+1`
-/

namespace A132929.P3670692115536179107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A132929.P3670692115536179107

/-! ## A132929.P15917481283904328963

`∩[A280590(n+1), A327700(n+1)]+1`
-/

namespace A132929.P15917481283904328963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A132929.P15917481283904328963

/-!
# A132930: Concatenation of first n elements of the sigma function, where sigma(n) is the sum of divisors of n.

The programs for A132930, there is no canonical definition to state claims against.
-/

/-! ## A132930.P16240084533206390337

`A008592(a(n-1))+∑{d}[n+1, #]` with `a(0)=1`
-/

namespace A132930.P16240084533206390337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008592 (a (n - 1)).toNat + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A132930.P16240084533206390337

/-!
# A132934: Concatenation of first n nonprime numbers.

The programs for A132934, there is no canonical definition to state claims against.
-/

/-! ## A132934.P9364031557856563130

`A084984(∑[∑[6^n]]+1)`
-/

namespace A132934.P9364031557856563130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A132934.P9364031557856563130

/-!
# A132935: Concatenation of first n numbers of the lower Wythoff sequence.

The programs for A132935, there is no canonical definition to state claims against.
-/

/-! ## A132935.P5633640095187934551

`A048794(∑[A000079(floor(ϕ*(n+1))-1)])`
-/

namespace A132935.P5633640095187934551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132935.P5633640095187934551

/-! ## A132935.P613619974888607973

`A000027(floor(2*sqrt(n))+10*a(n-1))+n` with `a(0)=1`
-/

namespace A132935.P613619974888607973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (⌊2 * Real.sqrt (n : ℝ)⌋ + 10 * a (n - 1)).toNat + (n : ℤ)

end

end A132935.P613619974888607973

/-!
# A132938: Concatenation of first n Bell numbers.

The programs for A132938, there is no canonical definition to state claims against.
-/

/-! ## A132938.P9055727768461432536

`A000027(A059996(n))+char[4]`
-/

namespace A132938.P9055727768461432536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A059996 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132938.P9055727768461432536

/-!
# A132939: Concatenate Motzkin numbers (A001006).

The programs for A132939, there is no canonical definition to state claims against.
-/

/-! ## A132939.P14960286755435955691

`A168183(10^n)`
-/

namespace A132939.P14960286755435955691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (10 ^ n)

end

end A132939.P14960286755435955691

/-!
# A132943: Concatenation of first n imperfect numbers.

The programs for A132943, there is no canonical definition to state claims against.
-/

/-! ## A132943.P6845589783089025511

`A048794(∑[∏[A063982(2*n+1)]])`
-/

namespace A132943.P6845589783089025511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132943.P6845589783089025511

/-! ## A132943.P11092355986212894007

`xor(A007908(n+1), A241467(A006498(n)))`
-/

namespace A132943.P11092355986212894007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007908 (n + 1)) (A241467 (A006498 n).toNat)

end

end A132943.P11092355986212894007

/-!
# A132944: a(n) = floor(n^(1/3) + n^(1/4)).

The programs for A132944, the canonical program `A132944.P18406724747108307769` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132944 has offset 1).

The definition of A132944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^(1/3)+(n+1)^(1/4))` (program `A132944.P18406724747108307769`, by `A132944.P18406724747108307769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132944.P18406724747108307769

`floor((n+1)^(1/3)+(n+1)^(1/4))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A132944

/-- `floor((n+1)^(1/3)+(n+1)^(1/4))` -/
def P18406724747108307769.Spec : Prop :=
  ∀ n, P18406724747108307769.a n = A132944 (n + 1)

theorem P18406724747108307769.correct : P18406724747108307769.Spec := by
  intro n
  simp only [A132944, Nat.add_sub_cancel]

end A132944

/-! ## A132944.P2901987470339620012

`A132983(n+1)-A267870(∑[A090529(n)])`
-/

namespace A132944.P2901987470339620012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132983 (n + 1) - A267870 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132944.P2901987470339620012

namespace A132944

/-- `A132983(n+1)-A267870(∑[A090529(n)])` -/
def P2901987470339620012.Spec : Prop :=
  ∀ n, P2901987470339620012.a n = A132944 (n + 1)

end A132944

/-! ## A132944.P17210527211074279772

`A132983(n+1)-A267870(A000040(n+1)+1)`
-/

namespace A132944.P17210527211074279772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132983 (n + 1) - A267870 (A000040 (n + 1) + 1).toNat

end

end A132944.P17210527211074279772

namespace A132944

/-- `A132983(n+1)-A267870(A000040(n+1)+1)` -/
def P17210527211074279772.Spec : Prop :=
  ∀ n, P17210527211074279772.a n = A132944 (n + 1)

end A132944

/-! ## A132944.P4417250531234232426

`A132983(n+1)-A267870(A000040(n+2))`
-/

namespace A132944.P4417250531234232426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132983 (n + 1) - A267870 (A000040 (n + 2)).toNat

end

end A132944.P4417250531234232426

namespace A132944

/-- `A132983(n+1)-A267870(A000040(n+2))` -/
def P4417250531234232426.Spec : Prop :=
  ∀ n, P4417250531234232426.a n = A132944 (n + 1)

end A132944

/-! ## A132944.P5291212029074053904

`A132983(n+1)-A267870(A014320(n+1))`
-/

namespace A132944.P5291212029074053904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132983 (n + 1) - A267870 (A014320 (n + 1)).toNat

end

end A132944.P5291212029074053904

namespace A132944

/-- `A132983(n+1)-A267870(A014320(n+1))` -/
def P5291212029074053904.Spec : Prop :=
  ∀ n, P5291212029074053904.a n = A132944 (n + 1)

end A132944

/-! ## A132944.P11824214064912592714

`A132983(n+1)-A267870(A225154(n+1))`
-/

namespace A132944.P11824214064912592714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132983 (n + 1) - A267870 (A225154 (n + 1)).toNat

end

end A132944.P11824214064912592714

namespace A132944

/-- `A132983(n+1)-A267870(A225154(n+1))` -/
def P11824214064912592714.Spec : Prop :=
  ∀ n, P11824214064912592714.a n = A132944 (n + 1)

end A132944

/-! ## A132944.P6774220417253584353

`A132983(n+1)-A267870(A054799(n+1))`
-/

namespace A132944.P6774220417253584353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132983 (n + 1) - A267870 (A054799 (n + 1)).toNat

end

end A132944.P6774220417253584353

namespace A132944

/-- `A132983(n+1)-A267870(A054799(n+1))` -/
def P6774220417253584353.Spec : Prop :=
  ∀ n, P6774220417253584353.a n = A132944 (n + 1)

end A132944

/-! ## A132944.P9810447265460761340

`A132983(n+1)-A005171(A127118(n+1))`
-/

namespace A132944.P9810447265460761340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132983 (n + 1) - A005171 (A127118 (n + 1)).toNat

end

end A132944.P9810447265460761340

namespace A132944

/-- `A132983(n+1)-A005171(A127118(n+1))` -/
def P9810447265460761340.Spec : Prop :=
  ∀ n, P9810447265460761340.a n = A132944 (n + 1)

end A132944

/-! ## A132944.P11654510372864728721

`A084558(A302833(n)+A090529(n))`
-/

namespace A132944.P11654510372864728721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A302833 n + A090529 n).toNat

end

end A132944.P11654510372864728721

namespace A132944

/-- `A084558(A302833(n)+A090529(n))` -/
def P11654510372864728721.Spec : Prop :=
  ∀ n, P11654510372864728721.a n = A132944 (n + 1)

end A132944

/-! ## A132944.P13345206074132496928

`A084558(A302833(n)+A300402(n))`
-/

namespace A132944.P13345206074132496928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A302833 n + A300402 n).toNat

end

end A132944.P13345206074132496928

namespace A132944

/-- `A084558(A302833(n)+A300402(n))` -/
def P13345206074132496928.Spec : Prop :=
  ∀ n, P13345206074132496928.a n = A132944 (n + 1)

end A132944

/-!
# A132945: Triangle read by rows: T(n,m) = (m+1)^n*m^(n*(n-1)/2).

The programs for A132945, there is no canonical definition to state claims against.
-/

/-! ## A132945.P12917985592420442874

`A238970(A176747(n)^A002262(n))`
-/

namespace A132945.P12917985592420442874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238970 (SequenceMachineLib.roundAway ((A176747 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A132945.P12917985592420442874

/-! ## A132945.P4640939735851260253

`A238970(A176747(n)^A025668(n+1))`
-/

namespace A132945.P4640939735851260253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238970 (SequenceMachineLib.roundAway ((A176747 n : ℚ) ^ (A025668 (n + 1) : ℤ))).toNat

end

end A132945.P4640939735851260253

/-! ## A132945.P2173769146612356228

`A193513(A002262(n)*A132328(2*n+3))`
-/

namespace A132945.P2173769146612356228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193513 (A002262 n * A132328 (2 * n + 3)).toNat

end

end A132945.P2173769146612356228

/-!
# A132946: Trajectory of 13 under map n -> A132948(n).

The programs for A132946, there is no canonical definition to state claims against.
-/

/-! ## A132946.P16300463275964232037

`A132948(a(n-1))` with `a(0)=13`
-/

namespace A132946.P16300463275964232037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A132948 (a (n - 1)).toNat

end

end A132946.P16300463275964232037

/-!
# A132947: Retrograde trajectory of 13 under map n -> A132948(n).

The programs for A132947, there is no canonical definition to state claims against.
-/

/-! ## A132947.P6901060720247232003

`A132949(a(n-1))` with `a(0)=13`
-/

namespace A132947.P6901060720247232003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A132949 (a (n - 1)).toNat

end

end A132947.P6901060720247232003

/-! ## A132947.P7320399634119218063

`A289507(A139317(a(n-1)))` with `a(0)=13`
-/

namespace A132947.P7320399634119218063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A289507 (A139317 (a (n - 1)).toNat).toNat

end

end A132947.P7320399634119218063

/-!
# A132948: a(n) = smallest k not occurring earlier such that k divides prime(n)-1.

The programs for A132948, there is no canonical definition to state claims against.
-/

/-! ## A132948.P16835386803816078344

`A006093(n+1)/A327657(A005195(n))`
-/

namespace A132948.P16835386803816078344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A327657 (A005195 n).toNat : ℚ)

end

end A132948.P16835386803816078344

/-! ## A132948.P10892506140167906990

`eq[1, A013632(n)]/A327657(A005195(n))`
-/

namespace A132948.P10892506140167906990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A327657 (A005195 n).toNat : ℚ)

end

end A132948.P10892506140167906990

/-! ## A132948.P11473103639509578268

`record[A000010(n+1)]/A327657(A005195(n))`
-/

namespace A132948.P11473103639509578268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A327657 (A005195 n).toNat : ℚ)

end

end A132948.P11473103639509578268

/-! ## A132948.P4529495548040852531

`record[A002322(n+1)]/A327657(A005195(n))`
-/

namespace A132948.P4529495548040852531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A327657 (A005195 n).toNat : ℚ)

end

end A132948.P4529495548040852531

/-! ## A132948.P5610509827589758832

`eq[1, A001222(n+1)]/A327657(A005195(n))`
-/

namespace A132948.P5610509827589758832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A327657 (A005195 n).toNat : ℚ)

end

end A132948.P5610509827589758832

/-!
# A132949: Inverse permutation to sequence A132948.

The programs for A132949, there is no canonical definition to state claims against.
-/

/-! ## A132949.P7017727629210087220

`A000720(A139317(n+1))`
-/

namespace A132949.P7017727629210087220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A139317 (n + 1)).toNat

end

end A132949.P7017727629210087220

/-! ## A132949.P1321375157076658585

`A061395(2*A139317(n+1))`
-/

namespace A132949.P1321375157076658585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A139317 (n + 1)).toNat

end

end A132949.P1321375157076658585

/-! ## A132949.P3661712057368272307

`∑{d}[A139317(n+1), A056239(#)]`
-/

namespace A132949.P3661712057368272307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A132949.P3661712057368272307

/-! ## A132949.P12048227789178171221

`∑{d}[A139317(n+1), A075167(#)]`
-/

namespace A132949.P12048227789178171221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A075167 d

end

end A132949.P12048227789178171221

/-! ## A132949.P8506699797273834130

`A026233(A139317(n+1)+char[1])`
-/

namespace A132949.P8506699797273834130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A139317 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A132949.P8506699797273834130

/-! ## A132949.P8560995886679458793

`A049084(2*A139317(n+1)-A139317(n+1))`
-/

namespace A132949.P8560995886679458793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A139317 (n + 1) - A139317 (n + 1)).toNat

end

end A132949.P8560995886679458793

/-! ## A132949.P13142664452112850501

`A055396(2*A139317(n+1)-A139317(n+1))`
-/

namespace A132949.P13142664452112850501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A139317 (n + 1) - A139317 (n + 1)).toNat

end

end A132949.P13142664452112850501

/-! ## A132949.P12543422041337588378

`A056239(2*A139317(n+1)-A139317(n+1))`
-/

namespace A132949.P12543422041337588378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A139317 (n + 1) - A139317 (n + 1)).toNat

end

end A132949.P12543422041337588378

/-! ## A132949.P7729986843902433055

`A075167(2*A139317(n+1)-A139317(n+1))`
-/

namespace A132949.P7729986843902433055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (2 * A139317 (n + 1) - A139317 (n + 1)).toNat

end

end A132949.P7729986843902433055

/-! ## A132949.P8330504788958822960

`A321648(2*A139317(n+1))`
-/

namespace A132949.P8330504788958822960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (2 * A139317 (n + 1)).toNat

end

end A132949.P8330504788958822960

/-! ## A132949.P6339253155203653992

`A156061(2*A139317(n+1))`
-/

namespace A132949.P6339253155203653992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A139317 (n + 1)).toNat

end

end A132949.P6339253155203653992

/-! ## A132949.P6128170090569950627

`A056239(2*A139317(n+1))-1`
-/

namespace A132949.P6128170090569950627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A139317 (n + 1)).toNat - 1

end

end A132949.P6128170090569950627

/-! ## A132949.P6350294546227907228

`A075167(2*A139317(n+1))-1`
-/

namespace A132949.P6350294546227907228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (2 * A139317 (n + 1)).toNat - 1

end

end A132949.P6350294546227907228

/-!
# A132950: Triangle read by rows: t(n,m) = (m+1)^n*m^(n*(n-1)/2).

The programs for A132950, there is no canonical definition to state claims against.
-/

/-! ## A132950.P8162323506183041182

`∑[char[∑[n]]]^(n-C(∑[char[∑[n]]], 2))*A147008(∑[char[∑[n]]]^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A132950.P8162323506183041182
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

open Classical in
def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f11 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ) * (A147008 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f7 j : ℕ) : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f10 j) 2 : ℤ) : ℤ))).toNat : ℚ)

end

end A132950.P8162323506183041182

/-! ## A132950.P7040906152564373705

`A200001(A153189(n)+1)`
-/

namespace A132950.P7040906152564373705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200001 (A153189 n + 1).toNat

end

end A132950.P7040906152564373705

/-! ## A132950.P11012732509897314758

`A115580(A135186(n+1))*A115597(n+2)`
-/

namespace A132950.P11012732509897314758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115580 (A135186 (n + 1)).toNat * A115597 (n + 2)

end

end A132950.P11012732509897314758

/-! ## A132950.P4125385846399961718

`A140271(A036038(n+1)^A106683(n+1))`
-/

namespace A132950.P4125385846399961718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (SequenceMachineLib.roundAway ((A036038 (n + 1) : ℚ) ^ (A106683 (n + 1) : ℤ))).toNat

end

end A132950.P4125385846399961718

/-! ## A132950.P17943384728527419857

`A115573(A299634(3*n+2))*A115597(n+2)`
-/

namespace A132950.P17943384728527419857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115573 (A299634 (3 * n + 2)).toNat * A115597 (n + 2)

end

end A132950.P17943384728527419857

/-!
# A132951: Period 6: repeat [1, 3, 1, -1, -3, -1].

The programs for A132951, the canonical program `A132951.P10696223199587273501` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132951 has offset 0).

The definition of A132951 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A132951.anchor (n : ℕ) : A132951 n = [1, 3, 1, -1, -3, -1].getD (n % 6) 0` in `Proof.A132.A132951`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132951.P10696223199587273501

`-a(n-3)` with `a(0)=1, a(1)=3, a(2)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A132951

/-- `-a(n-3)` -/
def P10696223199587273501.Spec : Prop :=
  ∀ n, P10696223199587273501.a n = A132951 n

theorem P10696223199587273501.correct : P10696223199587273501.Spec := by
  intro n
  simp only [A132951]

end A132951

/-!
# A132952: a(n) is the number of isolated totatives of n.

The programs for A132952, there is no canonical definition to state claims against.
-/

/-! ## A132952.P4879191529005712327

`2/(n+1)*A132953(n+1)`
-/

namespace A132952.P4879191529005712327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A132953 (n + 1) : ℚ)

end

end A132952.P4879191529005712327

/-! ## A132952.P1913107520263511428

`floor(A132953(n+1)/A065033(n))`
-/

namespace A132952.P1913107520263511428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132953 (n + 1) : ℚ) / (A065033 n : ℚ)⌋

end

end A132952.P1913107520263511428

/-! ## A132952.P12791622220655641427

`ceil(A132953(n+1)/A008619(n))`
-/

namespace A132952.P12791622220655641427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132953 (n + 1) : ℚ) / (A008619 n : ℚ)⌉

end

end A132952.P12791622220655641427

/-! ## A132952.P6236746728676283043

`ceil(A132953(n+1)/A080513(n))`
-/

namespace A132952.P6236746728676283043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132953 (n + 1) : ℚ) / (A080513 n : ℚ)⌉

end

end A132952.P6236746728676283043

/-! ## A132952.P8302874835727898777

`ceil(A132953(n+1)/A157271(n+1))`
-/

namespace A132952.P8302874835727898777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132953 (n + 1) : ℚ) / (A157271 (n + 1) : ℚ)⌉

end

end A132952.P8302874835727898777

/-! ## A132952.P15986377720421262668

`A005843(A132953(n+1))/A000027(n+1)`
-/

namespace A132952.P15986377720421262668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A132953 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A132952.P15986377720421262668

/-! ## A132952.P1802877074062248217

`(n*A132953(n+1))%A111618(n+2)`
-/

namespace A132952.P1802877074062248217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A132953 (n + 1)) (A111618 (n + 2))

end

end A132952.P1802877074062248217

/-!
# A132953: a(n) is the sum of the isolated totatives of n.

The programs for A132953, there is no canonical definition to state claims against.
-/

/-! ## A132953.P767768715001305354

`(n+1)/2*A132952(n+1)`
-/

namespace A132953.P767768715001305354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A132952 (n + 1) : ℚ)

end

end A132953.P767768715001305354

/-! ## A132953.P7369272951496307634

`A004525(A132952(n+1))*A014684(n+1)`
-/

namespace A132953.P7369272951496307634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A132952 (n + 1)).toNat * A014684 (n + 1)

end

end A132953.P7369272951496307634

/-! ## A132953.P4657984688588913436

`A273943((n+1)*A132952(n+1))`
-/

namespace A132953.P4657984688588913436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ((n + 1 : ℤ) * A132952 (n + 1)).toNat

end

end A132953.P4657984688588913436

/-! ## A132953.P14545609497946577281

`A014682((n+1)*A132952(n+1))`
-/

namespace A132953.P14545609497946577281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 1 : ℤ) * A132952 (n + 1)).toNat

end

end A132953.P14545609497946577281

/-! ## A132953.P7999508404471865988

`A038572((n+1)*A132952(n+1))`
-/

namespace A132953.P7999508404471865988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 ((n + 1 : ℤ) * A132952 (n + 1)).toNat

end

end A132953.P7999508404471865988

/-! ## A132953.P7643824468710123615

`A175126((n+1)*A132952(n+1))`
-/

namespace A132953.P7643824468710123615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 ((n + 1 : ℤ) * A132952 (n + 1)).toNat

end

end A132953.P7643824468710123615

/-! ## A132953.P14679740687647431130

`A004525((n+1)*A132952(n+1))`
-/

namespace A132953.P14679740687647431130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n + 1 : ℤ) * A132952 (n + 1)).toNat

end

end A132953.P14679740687647431130

/-! ## A132953.P1126736227377534393

`A025480((n+1)*A132952(n+1))`
-/

namespace A132953.P1126736227377534393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ((n + 1 : ℤ) * A132952 (n + 1)).toNat

end

end A132953.P1126736227377534393

/-! ## A132953.P10611075509308069807

`A026741((n+1)*A132952(n+1))`
-/

namespace A132953.P10611075509308069807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 1 : ℤ) * A132952 (n + 1)).toNat

end

end A132953.P10611075509308069807

/-! ## A132953.P11091102255830918519

`A110654((n+1)*A132952(n+1))`
-/

namespace A132953.P11091102255830918519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n + 1 : ℤ) * A132952 (n + 1)).toNat

end

end A132953.P11091102255830918519

/-! ## A132953.P12920228388283173018

`A132952((n+1)²)/2`
-/

namespace A132953.P12920228388283173018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132952 ((n + 1) ^ 2) : ℚ) / 2

end

end A132953.P12920228388283173018

/-! ## A132953.P13466763180452641765

`A004525(A132952((n+1)²))`
-/

namespace A132953.P13466763180452641765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A132952 ((n + 1) ^ 2)).toNat

end

end A132953.P13466763180452641765

/-!
# A132954: Period 6: repeat [1, 2, 4, -1, -2, -4].

The programs for A132954, the canonical program `A132954.P5349872145966730046` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132954 has offset 0).

The definition of A132954 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A132954.anchor (n : ℕ) : A132954 n = [1, 2, 4, -1, -2, -4].getD (n % 6) 0` in `Proof.A132.A132954`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132954.P5349872145966730046

`-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A132954

/-- `-a(n-3)` -/
def P5349872145966730046.Spec : Prop :=
  ∀ n, P5349872145966730046.a n = A132954 n

theorem P5349872145966730046.correct : P5349872145966730046.Spec := by
  intro n
  simp only [A132954]

end A132954

/-!
# A132955: Smallest prime in a sequence of n consecutive primes which add to a perfect square.

The programs for A132955, there is no canonical definition to state claims against.
-/

/-! ## A132955.P7931171567949468288

`A073887(n+2)`
-/

namespace A132955.P7931171567949468288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073887 (n + 2)

end

end A132955.P7931171567949468288

/-! ## A132955.P2059147874615001258

`p?[A073887(A028310(n))]`
-/

namespace A132955.P2059147874615001258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073887 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132955.P2059147874615001258

/-! ## A132955.P15092182772110708049

`p?[A073887(A344180(n))]`
-/

namespace A132955.P15092182772110708049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073887 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132955.P15092182772110708049

/-! ## A132955.P16251702089269151244

`p?[A073887(abs(A157128(n)))]`
-/

namespace A132955.P16251702089269151244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073887 |A157128 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132955.P16251702089269151244

/-! ## A132955.P5895589754077213564

`p?[A073887(A008619(A005408(n)))]`
-/

namespace A132955.P5895589754077213564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073887 (A008619 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132955.P5895589754077213564

/-! ## A132955.P7299861279205359372

`A000040(A230327(n+2))`
-/

namespace A132955.P7299861279205359372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230327 (n + 2)).toNat

end

end A132955.P7299861279205359372

/-! ## A132955.P12941868989000788972

`A008578(A230327(n+2)+1)`
-/

namespace A132955.P12941868989000788972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A230327 (n + 2) + 1).toNat

end

end A132955.P12941868989000788972

/-!
# A132956: The smallest perfect square which is a sum of n consecutive primes.

The programs for A132956, there is no canonical definition to state claims against.
-/

/-! ## A132956.P7415105561581369733

`A132957(n+2)²`
-/

namespace A132956.P7415105561581369733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132957 (n + 2) ^ 2

end

end A132956.P7415105561581369733

/-! ## A132956.P10108329530925079582

`A000463(2*A132957(n+2))`
-/

namespace A132956.P10108329530925079582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A132957 (n + 2)).toNat

end

end A132956.P10108329530925079582

/-! ## A132956.P16543216518923029175

`A002620(2*A132957(n+2))`
-/

namespace A132956.P16543216518923029175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A132957 (n + 2)).toNat

end

end A132956.P16543216518923029175

/-! ## A132956.P6343689755162064362

`A004652(2*A132957(n+2))`
-/

namespace A132956.P6343689755162064362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A132957 (n + 2)).toNat

end

end A132956.P6343689755162064362

/-! ## A132956.P10555893781203064272

`A109594(3*A132957(n+2))`
-/

namespace A132956.P10555893781203064272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (3 * A132957 (n + 2)).toNat

end

end A132956.P10555893781203064272

/-! ## A132956.P1984487998989985842

`A000290(2*A132957(n+2))/4`
-/

namespace A132956.P1984487998989985842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (2 * A132957 (n + 2)).toNat : ℚ) / 4

end

end A132956.P1984487998989985842

/-! ## A132956.P13777968677740881452

`A132957(n+2)^A000034(2*n+1)`
-/

namespace A132956.P13777968677740881452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132957 (n + 2) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A132956.P13777968677740881452

/-! ## A132956.P1074733587882310728

`A132957(n+2)^A020639(2*(n+1))`
-/

namespace A132956.P1074733587882310728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132957 (n + 2) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A132956.P1074733587882310728

/-! ## A132956.P4672352331555687311

`A132957(n+2)^A000005(record[A014963(n+2)])`
-/

namespace A132956.P4672352331555687311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132957 (n + 2) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A132956.P4672352331555687311

/-! ## A132956.P1496338869738215570

`A132957(n+2)^A001222(2*A000040(n+1))`
-/

namespace A132956.P1496338869738215570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132957 (n + 2) : ℚ) ^ (A001222 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A132956.P1496338869738215570

/-!
# A132957: a(n) = sqrt(A132956(n)).

The programs for A132957, there is no canonical definition to state claims against.
-/

/-! ## A132957.P169964611614934920

`sqrt(A132956(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132957.P169964611614934920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A132956 (n + 2) : ℝ)

end

end A132957.P169964611614934920

/-! ## A132957.P3380231587356560119

`root(A132956(2*n-n+2), 2)`
-/

namespace A132957.P3380231587356560119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A132956 ((2 * n : ℤ) - (n : ℤ) + 2).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A132957.P3380231587356560119

/-! ## A132957.P16356000559014915099

`A000027(root(A132956(n+2), 2))`
-/

namespace A132957.P16356000559014915099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A132956 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A132957.P16356000559014915099

/-! ## A132957.P4814293747320265953

`A028310(root(A132956(n+2), 2))`
-/

namespace A132957.P4814293747320265953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A132956 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A132957.P4814293747320265953

/-! ## A132957.P14380592501674520693

`A004526(2*root(A132956(n+2), 2))`
-/

namespace A132957.P14380592501674520693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (2 * (A132956 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A132957.P14380592501674520693

/-! ## A132957.P4393115223625536788

`A026741(2*root(A132956(n+2), 2))`
-/

namespace A132957.P4393115223625536788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway (2 * (A132956 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A132957.P4393115223625536788

/-! ## A132957.P16156875383399655532

`A252463(2*root(A132956(n+2), 2))`
-/

namespace A132957.P16156875383399655532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (SequenceMachineLib.roundAway (2 * (A132956 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A132957.P16156875383399655532

/-! ## A132957.P17306756792140334539

`root(A132956(n+2), 2)%A128642(n+1)`
-/

namespace A132957.P17306756792140334539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A132956 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))) (A128642 (n + 1))

end

end A132957.P17306756792140334539

/-! ## A132957.P13870672151129135927

`root(A132956(n+2), 2)/A007318(C(2, n))`
-/

namespace A132957.P13870672151129135927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A132956 (n + 2) : ℝ) ^ (1 / (2 : ℝ)) / (A007318 (Nat.choose 2 n) : ℝ)

end

end A132957.P13870672151129135927

/-! ## A132957.P7714538320952453453

`root(A132956(n+2), 2)*gcd(2, A000040(n+2))`
-/

namespace A132957.P7714538320952453453
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A132956 (n + 2) : ℝ) ^ (1 / (2 : ℝ)) * (Int.gcd 2 (A000040 (n + 2)) : ℝ)

end

end A132957.P7714538320952453453

/-!
# A132958: a(n) = n!*Sum_{d|n} (-1)^(d+1)/d!.

The programs for A132958, there is no canonical definition to state claims against.
-/

/-! ## A132958.P10033216117985234881

`(n+1)!*∑{d}[n+1, (-1)^(#+1)/#!]`
-/

namespace A132958.P10033216117985234881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ d ∈ Nat.divisors (f1 n), ((-1) ^ (d + 1) : ℚ) / (Nat.factorial d : ℚ))

end

end A132958.P10033216117985234881

/-! ## A132958.P15073852577815916919

`2*A330254(n+1)-A057625(n+1)`
-/

namespace A132958.P15073852577815916919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330254 (n + 1) - A057625 (n + 1)

end

end A132958.P15073852577815916919

/-! ## A132958.P4403859244940348661

`A327243(n+1)%A063552(A000246(n))`
-/

namespace A132958.P4403859244940348661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327243 (n + 1)) (A063552 (A000246 n).toNat)

end

end A132958.P4403859244940348661

/-!
# A132959: Total number of all distinct list sizes in all partitions of [n] into lists, cf. A000262.

The programs for A132959, there is no canonical definition to state claims against.
-/

/-! ## A132959.P3343547231630720708

`n*A057907(A150781(n))+1`
-/

namespace A132959.P3343547231630720708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057907 (A150781 n).toNat + 1

end

end A132959.P3343547231630720708

/-!
# A132960: a(n) = n!*Sum_{d|n} (-1)^(d+1)/(d!*(n/d)^d).

The programs for A132960, there is no canonical definition to state claims against.
-/

/-! ## A132960.P4940018634450375426

`xor(A000142(n), A328592(A038041(n+1)))`
-/

namespace A132960.P4940018634450375426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000142 n) (A328592 (A038041 (n + 1)).toNat)

end

end A132960.P4940018634450375426

/-! ## A132960.P1937910836858422250

`xor(A046035(A330773(n)), A352060(n+1))`
-/

namespace A132960.P1937910836858422250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046035 (A330773 n).toNat) (A352060 (n + 1))

end

end A132960.P1937910836858422250

/-!
# A132961: Total number of all distinct cycle sizes in all permutations of [n].

The programs for A132961, there is no canonical definition to state claims against.
-/

/-! ## A132961.P6857287772481708545

`A132960(n+1)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A132961.P6857287772481708545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132960 (n + 1) + (n + 1 : ℤ) * a (n - 1)

end

end A132961.P6857287772481708545

/-!
# A132963: Total number of distinct block sizes in all partitions of [n].

The programs for A132963, there is no canonical definition to state claims against.
-/

/-! ## A132963.P889151902906658922

`A357638(n)+A175126(A284841(2*n+3))`
-/

namespace A132963.P889151902906658922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357638 n + A175126 (A284841 (2 * n + 3)).toNat

end

end A132963.P889151902906658922

/-! ## A132963.P13386894789926009982

`Δ[A246552(∑[A060719(n)])]`
-/

namespace A132963.P13386894789926009982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060719 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132963.P13386894789926009982

/-!
# A132964: Convolution triangle of A006190.

The programs for A132964, the canonical program `A132964.P14424558574078011549` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132964 has offset 0).

The definition of A132964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132964.P14424558574078011549

`3*T(n-1,k)+T(n-1,k-1)+T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A132964

/-- `3*T(n-1,k)+T(n-1,k-1)+T(n-2,k)` -/
def P14424558574078011549.Spec : Prop :=
  ∀ n, (P14424558574078011549.a n : ℤ) = A132964 n

theorem P14424558574078011549.correct : P14424558574078011549.Spec := by
  intro n
  simp only [A132964]

end A132964

/-! ## A132964.P1050554317545594515

`A112906(A245300(n)+A025581(n))`
-/

namespace A132964.P1050554317545594515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112906 (A245300 n + A025581 n).toNat

end

end A132964.P1050554317545594515

namespace A132964

/-- `A112906(A245300(n)+A025581(n))` -/
def P1050554317545594515.Spec : Prop :=
  ∀ n, P1050554317545594515.a n = A132964 n

end A132964

/-! ## A132964.P17920510274509804318

`A171509(n)-A016389(A106187(n))`
-/

namespace A132964.P17920510274509804318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171509 n - A016389 (A106187 n).toNat

end

end A132964.P17920510274509804318

namespace A132964

/-- `A171509(n)-A016389(A106187(n))` -/
def P17920510274509804318.Spec : Prop :=
  ∀ n, P17920510274509804318.a n = A132964 n

end A132964

/-! ## A132964.P4339544409969738038

`A171509(n)-A016389(A272946(n))`
-/

namespace A132964.P4339544409969738038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171509 n - A016389 (A272946 n).toNat

end

end A132964.P4339544409969738038

namespace A132964

/-- `A171509(n)-A016389(A272946(n))` -/
def P4339544409969738038.Spec : Prop :=
  ∀ n, P4339544409969738038.a n = A132964 n

end A132964

/-! ## A132964.P5664918311309683213

`A171509(n)-A044941(A187829(n+1))`
-/

namespace A132964.P5664918311309683213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171509 n - A044941 (A187829 (n + 1)).toNat

end

end A132964.P5664918311309683213

namespace A132964

/-- `A171509(n)-A044941(A187829(n+1))` -/
def P5664918311309683213.Spec : Prop :=
  ∀ n, P5664918311309683213.a n = A132964 n

end A132964

/-!
# A132967: Expansion of q * chi(-q^3) * chi(-q^5) / ( chi(-q^2) * chi(-q^30) ) in powers of q where chi() is a Ramanujan theta function.

The programs for A132967, there is no canonical definition to state claims against.
-/

/-! ## A132967.P2480296090983399723

`-A132968(n+1)`
-/

namespace A132967.P2480296090983399723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A132968 (n + 1)

end

end A132967.P2480296090983399723

/-! ## A132967.P6043959390843733075

`Δ[a(n-1)-A132968(n)]` with `a(0)=1`
-/

namespace A132967.P6043959390843733075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A132968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132967.P6043959390843733075

/-! ## A132967.P17101355291442476445

`∑[A132968(n)-A132968(n+1)]-1`
-/

namespace A132967.P17101355291442476445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132968 n - A132968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A132967.P17101355291442476445

/-! ## A132967.P8810300660448560809

`and(2, A342892(n+1))-A132968(n+1)`
-/

namespace A132967.P8810300660448560809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A342892 (n + 1)) - A132968 (n + 1)

end

end A132967.P8810300660448560809

/-! ## A132967.P5309107493754588135

`A002262(n-A002262(n))-A132968(n+1)`
-/

namespace A132967.P5309107493754588135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) - A002262 n).toNat - A132968 (n + 1)

end

end A132967.P5309107493754588135

/-! ## A132967.P9957448321596889508

`A143752(n+1)-(A145933(n+1)+A132968(n+1))`
-/

namespace A132967.P9957448321596889508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (n + 1) - (A145933 (n + 1) + A132968 (n + 1))

end

end A132967.P9957448321596889508

/-! ## A132967.P7248215180853519609

`A000007(n+1)-A132968(n+1)`
-/

namespace A132967.P7248215180853519609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A132968 (n + 1)

end

end A132967.P7248215180853519609

/-! ## A132967.P12463844194815876467

`1-(A309873(2*n+1)+A132968(n+1))`
-/

namespace A132967.P12463844194815876467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A309873 (2 * n + 1) + A132968 (n + 1))

end

end A132967.P12463844194815876467

/-! ## A132967.P8558489219974949785

`A132968(n+1)*A309873(A004277(2*n+1))`
-/

namespace A132967.P8558489219974949785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132968 (n + 1) * A309873 (A004277 (2 * n + 1)).toNat

end

end A132967.P8558489219974949785

/-!
# A132968: Expansion of chi(-q) * chi(-q^15) / (chi(-q^6) * chi(-q^10)) in powers of q where chi() is a Ramanujan theta function.

The programs for A132968, there is no canonical definition to state claims against.
-/

/-! ## A132968.P3873523375905613519

`A000038(n)-A132967(A028310(n))`
-/

namespace A132968.P3873523375905613519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A132967 (A028310 n).toNat

end

end A132968.P3873523375905613519

/-! ## A132968.P12961233516634420422

`abs(A132967(A028310(n)))*A033999(n)`
-/

namespace A132968.P12961233516634420422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132967 (A028310 n).toNat| * A033999 n

end

end A132968.P12961233516634420422

/-! ## A132968.P11078064092102748606

`2*A000007(n)-A132967(A028310(n))`
-/

namespace A132968.P11078064092102748606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A132967 (A028310 n).toNat

end

end A132968.P11078064092102748606

/-! ## A132968.P16599843046273996834

`(-A132967(A028310(n)))^A040071(A006257(n))`
-/

namespace A132968.P16599843046273996834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A132967 (A028310 n).toNat : ℚ) ^ (A040071 (A006257 n).toNat : ℤ)

end

end A132968.P16599843046273996834

/-! ## A132968.P5001067213647212979

`A000007(n)-A132967(A028310(n)+A000007(n))`
-/

namespace A132968.P5001067213647212979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A132967 (A028310 n + A000007 n).toNat

end

end A132968.P5001067213647212979

/-! ## A132968.P16138328881406084343

`(-A132967(A028310(n)))^(A121855(n)-A121854(n))`
-/

namespace A132968.P16138328881406084343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A132967 (A028310 n).toNat : ℚ) ^ (A121855 n - A121854 n : ℤ)

end

end A132968.P16138328881406084343

/-! ## A132968.P12880771485329938038

`A106458(Δ[n²])-A132967(A028310(n))`
-/

namespace A132968.P12880771485329938038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A132967 (A028310 n).toNat

end

end A132968.P12880771485329938038

/-! ## A132968.P13913009245023860901

`A000038(n)-A132967(A065033(2*n))`
-/

namespace A132968.P13913009245023860901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A132967 (A065033 (2 * n)).toNat

end

end A132968.P13913009245023860901

/-! ## A132968.P14141293026776483611

`A000038(n)-A132967(A123108(2*n))`
-/

namespace A132968.P14141293026776483611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A132967 (A123108 (2 * n)).toNat

end

end A132968.P14141293026776483611

/-! ## A132968.P8080146219008231032

`A123290(n+2)%4-A132967(A028310(n))`
-/

namespace A132968.P8080146219008231032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123290 (n + 2)) 4 - A132967 (A028310 n).toNat

end

end A132968.P8080146219008231032

/-!
# A132969: Expansion of phi(q) * chi(q) in powers of q where phi(), chi() are Ramanujan theta functions.

The programs for A132969, there is no canonical definition to state claims against.
-/

/-! ## A132969.P18317908734265166581

`(-1)^n*A132970(n)`
-/

namespace A132969.P18317908734265166581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132970 n

end

end A132969.P18317908734265166581

/-! ## A132969.P8453077958798363645

`abs(A132970(n))`
-/

namespace A132969.P8453077958798363645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132970 n|

end

end A132969.P8453077958798363645

/-! ## A132969.P12996753029738530505

`gcd(A000038(n), A132970(n))`
-/

namespace A132969.P12996753029738530505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A132970 n)

end

end A132969.P12996753029738530505

/-! ## A132969.P9879796808916792742

`lcm(A020985(n), A132970(n))`
-/

namespace A132969.P9879796808916792742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A132970 n)

end

end A132969.P9879796808916792742

/-! ## A132969.P15327735371646364002

`lcm(A124226(n), A260196(n))`
-/

namespace A132969.P15327735371646364002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124226 n) (A260196 n)

end

end A132969.P15327735371646364002

/-! ## A132969.P15325912632055518120

`2*A260412(n)-A257657(n)`
-/

namespace A132969.P15325912632055518120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260412 n - A257657 n

end

end A132969.P15325912632055518120

/-! ## A132969.P846811515703400131

`A132970(n)*A213625(n)/A246835(n)`
-/

namespace A132969.P846811515703400131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132970 n * A213625 n : ℚ) / (A246835 n : ℚ)

end

end A132969.P846811515703400131

/-! ## A132969.P14166748239145479227

`gcd(A132970(n)², A132970(n%(n+1)))`
-/

namespace A132969.P14166748239145479227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132970 n ^ 2) (A132970 (n % (n + 1)))

end

end A132969.P14166748239145479227

/-! ## A132969.P12439249882075590047

`A053250(n)+2*A053251(n)`
-/

namespace A132969.P12439249882075590047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053250 n + 2 * A053251 n

end

end A132969.P12439249882075590047

/-! ## A132969.P13117788374307491647

`2*A053250(n)-A260460(n)`
-/

namespace A132969.P13117788374307491647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053250 n - A260460 n

end

end A132969.P13117788374307491647

/-! ## A132969.P1024430959458471254

`A053250(n)+A005843(A053251(n))`
-/

namespace A132969.P1024430959458471254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053250 n + A005843 (A053251 n).toNat

end

end A132969.P1024430959458471254

/-! ## A132969.P14658998981173883244

`A005843(A260412(n))-A257657(n)`
-/

namespace A132969.P14658998981173883244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A260412 n).toNat - A257657 n

end

end A132969.P14658998981173883244

/-!
# A132970: Expansion of phi(-x) * chi(-x) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A132970, there is no canonical definition to state claims against.
-/

/-! ## A132970.P6885112640221511179

`(-1)^n*A132969(n)`
-/

namespace A132970.P6885112640221511179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132969 n

end

end A132970.P6885112640221511179

/-! ## A132970.P14690239372753751099

`A132969(n)/A033999(n)`
-/

namespace A132970.P14690239372753751099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132969 n : ℚ) / (A033999 n : ℚ)

end

end A132970.P14690239372753751099

/-! ## A132970.P12420346042863580185

`and(A124226(n), A260196(n))`
-/

namespace A132970.P12420346042863580185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124226 n) (A260196 n)

end

end A132970.P12420346042863580185

/-! ## A132970.P18005365741883821092

`A132969(n)/(1-A010673(n))`
-/

namespace A132970.P18005365741883821092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132969 n : ℚ) / (1 - A010673 n : ℚ)

end

end A132970.P18005365741883821092

/-! ## A132970.P11097196218384912339

`A132969(n)*A213625(n)/A246835(n)`
-/

namespace A132970.P11097196218384912339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132969 n * A213625 n : ℚ) / (A246835 n : ℚ)

end

end A132970.P11097196218384912339

/-! ## A132970.P4684502718092333255

`A132969(n)/A008683(Δ[A001651(n+1)])`
-/

namespace A132970.P4684502718092333255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132969 n : ℚ) / (A008683 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A132970.P4684502718092333255

/-! ## A132970.P5227037723960495238

`A132969(n)/A132954(3*n)`
-/

namespace A132970.P5227037723960495238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132969 n : ℚ) / (A132954 (3 * n) : ℚ)

end

end A132970.P5227037723960495238

/-! ## A132970.P6405202607028754416

`A000025(n)*A132969(n)/A260460(n)`
-/

namespace A132970.P6405202607028754416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000025 n * A132969 n : ℚ) / (A260460 n : ℚ)

end

end A132970.P6405202607028754416

/-! ## A132970.P6693793284649523248

`A124226(n)*A358692(n+1)`
-/

namespace A132970.P6693793284649523248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124226 n * A358692 (n + 1)

end

end A132970.P6693793284649523248

/-!
# A132971: a(2*n) = a(n), a(4*n+1) = -a(n), a(4*n+3) = 0, with a(0) = 1.

The programs for A132971, the canonical program `A132971.P12003194290902418549` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132971 has offset 0).

The definition of A132971 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132971.P12003194290902418549

`A008683(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A132971

/-- `A008683(A005940(1+n))` -/
def P12003194290902418549.Spec : Prop :=
  ∀ n, P12003194290902418549.a n = A132971 n

theorem P12003194290902418549.correct : P12003194290902418549.Spec := by
  intro n
  simp only [A132971]

end A132971

/-! ## A132971.P2864052798252770921

`(-C(and(n, 3*n), n))^A000120(n)`
-/

namespace A132971.P2864052798252770921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(Nat.choose (Nat.land n (3 * n)) n : ℤ) : ℚ) ^ (A000120 n : ℤ)

end

end A132971.P2864052798252770921

namespace A132971

/-- `(-C(and(n, 3*n), n))^A000120(n)` -/
def P2864052798252770921.Spec : Prop :=
  ∀ n, P2864052798252770921.a n = (A132971 n : ℚ)

end A132971

/-! ## A132971.P11303499476813190075

`(-C(and(n, 3*n), n))^A033042(n)`
-/

namespace A132971.P11303499476813190075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(Nat.choose (Nat.land n (3 * n)) n : ℤ) : ℚ) ^ (A033042 n : ℤ)

end

end A132971.P11303499476813190075

namespace A132971

/-- `(-C(and(n, 3*n), n))^A033042(n)` -/
def P11303499476813190075.Spec : Prop :=
  ∀ n, P11303499476813190075.a n = (A132971 n : ℚ)

end A132971

/-! ## A132971.P6549393248403553289

`(-C(and(n, 3*n), n))^A005836(n+1)`
-/

namespace A132971.P6549393248403553289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(Nat.choose (Nat.land n (3 * n)) n : ℤ) : ℚ) ^ (A005836 (n + 1) : ℤ)

end

end A132971.P6549393248403553289

namespace A132971

/-- `(-C(and(n, 3*n), n))^A005836(n+1)` -/
def P6549393248403553289.Spec : Prop :=
  ∀ n, P6549393248403553289.a n = (A132971 n : ℚ)

end A132971

/-! ## A132971.P2206713944102336228

`A154271(A071053(n))`
-/

namespace A132971.P2206713944102336228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A071053 n).toNat

end

end A132971.P2206713944102336228

namespace A132971

/-- `A154271(A071053(n))` -/
def P2206713944102336228.Spec : Prop :=
  ∀ n, P2206713944102336228.a n = A132971 n

end A132971

/-! ## A132971.P14886207728068098951

`A154271(A246011(n))`
-/

namespace A132971.P14886207728068098951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A246011 n).toNat

end

end A132971.P14886207728068098951

namespace A132971

/-- `A154271(A246011(n))` -/
def P14886207728068098951.Spec : Prop :=
  ∀ n, P14886207728068098951.a n = A132971 n

end A132971

/-! ## A132971.P166290035319155221

`A154269(A246029(n))`
-/

namespace A132971.P166290035319155221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A246029 n).toNat

end

end A132971.P166290035319155221

namespace A132971

/-- `A154269(A246029(n))` -/
def P166290035319155221.Spec : Prop :=
  ∀ n, P166290035319155221.a n = A132971 n

end A132971

/-! ## A132971.P9197609016375066540

`A085357(n)*A106400(n)`
-/

namespace A132971.P9197609016375066540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 n * A106400 n

end

end A132971.P9197609016375066540

namespace A132971

/-- `A085357(n)*A106400(n)` -/
def P9197609016375066540.Spec : Prop :=
  ∀ n, P9197609016375066540.a n = A132971 n

end A132971

/-! ## A132971.P1332830194406618200

`A286576(n)/(2-A286576(n)²)`
-/

namespace A132971.P1332830194406618200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286576 n : ℚ) / (2 - A286576 n ^ 2 : ℚ)

end

end A132971.P1332830194406618200

namespace A132971

/-- `A286576(n)/(2-A286576(n)²)` -/
def P1332830194406618200.Spec : Prop :=
  ∀ n, P1332830194406618200.a n = (A132971 n : ℚ)

end A132971

/-! ## A132971.P9156135175787930125

`(A085357(n)-A268411(n))²-A268411(n)`
-/

namespace A132971.P9156135175787930125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085357 n - A268411 n) ^ 2 - A268411 n

end

end A132971.P9156135175787930125

namespace A132971

/-- `(A085357(n)-A268411(n))²-A268411(n)` -/
def P9156135175787930125.Spec : Prop :=
  ∀ n, P9156135175787930125.a n = A132971 n

end A132971

/-! ## A132971.P7911309177046975329

`(3-A001285(n)-A001285(n))*A085357(n)`
-/

namespace A132971.P7911309177046975329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A001285 n - A001285 n) * A085357 n

end

end A132971.P7911309177046975329

namespace A132971

/-- `(3-A001285(n)-A001285(n))*A085357(n)` -/
def P7911309177046975329.Spec : Prop :=
  ∀ n, P7911309177046975329.a n = A132971 n

end A132971

/-! ## A132971.P18404536256707141378

`A364575(2*n)%2`
-/

namespace A132971.P18404536256707141378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364575 (2 * n)) 2

end

end A132971.P18404536256707141378

namespace A132971

/-- `A364575(2*n)%2` -/
def P18404536256707141378.Spec : Prop :=
  ∀ n, P18404536256707141378.a n = A132971 n

end A132971

/-! ## A132971.P14077969769893004170

`A154269(A245565(n))`
-/

namespace A132971.P14077969769893004170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A245565 n).toNat

end

end A132971.P14077969769893004170

namespace A132971

/-- `A154269(A245565(n))` -/
def P14077969769893004170.Spec : Prop :=
  ∀ n, P14077969769893004170.a n = A132971 n

end A132971

/-! ## A132971.P2803757398656830261

`A302050(A252753(n))`
-/

namespace A132971.P2803757398656830261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A252753 n).toNat

end

end A132971.P2803757398656830261

namespace A132971

/-- `A302050(A252753(n))` -/
def P2803757398656830261.Spec : Prop :=
  ∀ n, P2803757398656830261.a n = A132971 n

end A132971

/-! ## A132971.P9104806976554570085

`A008683(A278222(n))`
-/

namespace A132971.P9104806976554570085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278222 n).toNat

end

end A132971.P9104806976554570085

namespace A132971

/-- `A008683(A278222(n))` -/
def P9104806976554570085.Spec : Prop :=
  ∀ n, P9104806976554570085.a n = A132971 n

end A132971

/-! ## A132971.P9037422115144700872

`A008683(A286588(n))`
-/

namespace A132971.P9037422115144700872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A286588 n).toNat

end

end A132971.P9037422115144700872

namespace A132971

/-- `A008683(A286588(n))` -/
def P9037422115144700872.Spec : Prop :=
  ∀ n, P9037422115144700872.a n = A132971 n

end A132971

/-! ## A132971.P10086371131869800580

`A008683(A278217(A180200(n)))`
-/

namespace A132971.P10086371131869800580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278217 (A180200 n).toNat).toNat

end

end A132971.P10086371131869800580

namespace A132971

/-- `A008683(A278217(A180200(n)))` -/
def P10086371131869800580.Spec : Prop :=
  ∀ n, P10086371131869800580.a n = A132971 n

end A132971

/-! ## A132971.P17439817954271603998

`A008683(A286601(A193231(n)))`
-/

namespace A132971.P17439817954271603998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A286601 (A193231 n).toNat).toNat

end

end A132971.P17439817954271603998

namespace A132971

/-- `A008683(A286601(A193231(n)))` -/
def P17439817954271603998.Spec : Prop :=
  ∀ n, P17439817954271603998.a n = A132971 n

end A132971

/-! ## A132971.P12995265874590471743

`(A006068(2*n+1)-A006068(2*n))*A085405(2*n)`
-/

namespace A132971.P12995265874590471743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006068 (2 * n + 1) - A006068 (2 * n)) * A085405 (2 * n)

end

end A132971.P12995265874590471743

namespace A132971

/-- `(A006068(2*n+1)-A006068(2*n))*A085405(2*n)` -/
def P12995265874590471743.Spec : Prop :=
  ∀ n, P12995265874590471743.a n = A132971 n

end A132971

/-! ## A132971.P6133675474772543762

`A008683(A286598(A153141(n)))`
-/

namespace A132971.P6133675474772543762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A286598 (A153141 n).toNat).toNat

end

end A132971.P6133675474772543762

namespace A132971

/-- `A008683(A286598(A153141(n)))` -/
def P6133675474772543762.Spec : Prop :=
  ∀ n, P6133675474772543762.a n = A132971 n

end A132971

/-!
# A132972: Expansion of chi(q)^3 / chi(q^3) in powers of q where chi() is a Ramanujan theta function.

The programs for A132972, there is no canonical definition to state claims against.
-/

/-! ## A132972.P6392521666617871839

`abs(A141094(n))`
-/

namespace A132972.P6392521666617871839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141094 n|

end

end A132972.P6392521666617871839

/-! ## A132972.P6140785203490544310

`A010684(n)*A132180(n)`
-/

namespace A132972.P6140785203490544310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A132180 n

end

end A132972.P6140785203490544310

/-! ## A132972.P1153248656821495253

`A033999(n)*A141094(n)`
-/

namespace A132972.P1153248656821495253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A141094 n

end

end A132972.P1153248656821495253

/-! ## A132972.P11753547434828119690

`A122553(n)*A213267(n)`
-/

namespace A132972.P11753547434828119690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A213267 n

end

end A132972.P11753547434828119690

/-! ## A132972.P17115963354920672431

`gcd(A000038(n), A141094(n))`
-/

namespace A132972.P17115963354920672431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A141094 n)

end

end A132972.P17115963354920672431

/-! ## A132972.P16653971173261142597

`gcd(A122831(n), A258108(n))`
-/

namespace A132972.P16653971173261142597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122831 n) (A258108 n)

end

end A132972.P16653971173261142597

/-! ## A132972.P12650492944534769112

`lcm(A010684(n), A141094(n))`
-/

namespace A132972.P12650492944534769112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A141094 n)

end

end A132972.P12650492944534769112

/-! ## A132972.P17614569765602738822

`(A004442(n)-n)*A141094(n)`
-/

namespace A132972.P17614569765602738822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A141094 n

end

end A132972.P17614569765602738822

/-! ## A132972.P10514205364369532916

`A137569(Δ[or(1, n)])*A141094(n)`
-/

namespace A132972.P10514205364369532916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137569 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A141094 n

end

end A132972.P10514205364369532916

/-! ## A132972.P59952650757641190

`A132180(n)+A213267(n)-A145977(n)`
-/

namespace A132972.P59952650757641190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132180 n + (A213267 n - A145977 n)

end

end A132972.P59952650757641190

/-! ## A132972.P17549333281914975254

`A141094(n)/A145977(n)*A213267(n)`
-/

namespace A132972.P17549333281914975254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141094 n : ℚ) / (A145977 n : ℚ) * (A213267 n : ℚ)

end

end A132972.P17549333281914975254

/-! ## A132972.P15834392205143228098

`A124243(n+1)/A132975(n+1)*A141094(n)`
-/

namespace A132972.P15834392205143228098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124243 (n + 1) : ℚ) / (A132975 (n + 1) : ℚ) * (A141094 n : ℚ)

end

end A132972.P15834392205143228098

/-! ## A132972.P17675799780608831773

`A132180(n)*A153284(n+2)`
-/

namespace A132972.P17675799780608831773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132180 n * A153284 (n + 2)

end

end A132972.P17675799780608831773

/-! ## A132972.P326332577418492558

`A132180(n+1)/A132975(n+1)*A132180(n)`
-/

namespace A132972.P326332577418492558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132180 (n + 1) : ℚ) / (A132975 (n + 1) : ℚ) * (A132180 n : ℚ)

end

end A132972.P326332577418492558

/-! ## A132972.P17287829880556044538

`A132180(n+1)/A213267(n+1)*A132180(n)`
-/

namespace A132972.P17287829880556044538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132180 (n + 1) : ℚ) / (A213267 (n + 1) : ℚ) * (A132180 n : ℚ)

end

end A132972.P17287829880556044538

/-! ## A132972.P4788527605113244200

`A128128(n)/A294387(n)*A141094(n)`
-/

namespace A132972.P4788527605113244200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128128 n : ℚ) / (A294387 n : ℚ) * (A141094 n : ℚ)

end

end A132972.P4788527605113244200

/-! ## A132972.P15827682981601253141

`A153284(2*n+1)*A213267(n)`
-/

namespace A132972.P15827682981601253141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (2 * n + 1) * A213267 n

end

end A132972.P15827682981601253141

/-!
# A132973: Expansion of psi(-q)^3 / psi(-q^3) in powers of q where psi() is a Ramanujan theta function.

The programs for A132973, there is no canonical definition to state claims against.
-/

/-! ## A132973.P5501811922705221263

`(-1)^n*A107760(n)`
-/

namespace A132973.P5501811922705221263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A107760 n

end

end A132973.P5501811922705221263

/-! ## A132973.P11693327705481192043

`A107760(n)-A217221(n)`
-/

namespace A132973.P11693327705481192043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 n - A217221 n

end

end A132973.P11693327705481192043

/-! ## A132973.P8095257610424867101

`A010684(n)*A253625(n)`
-/

namespace A132973.P8095257610424867101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A253625 n

end

end A132973.P8095257610424867101

/-! ## A132973.P7851564406305619970

`A073575(n+1)*A253625(n)`
-/

namespace A132973.P7851564406305619970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n + 1) * A253625 n

end

end A132973.P7851564406305619970

/-! ## A132973.P7649705601522894325

`(2-A033999(n))*A253625(n)`
-/

namespace A132973.P7649705601522894325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A253625 n

end

end A132973.P7649705601522894325

/-! ## A132973.P2885940560140875847

`2*A253625(n)-A253626(n)`
-/

namespace A132973.P2885940560140875847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253625 n - A253626 n

end

end A132973.P2885940560140875847

/-! ## A132973.P605083760911658590

`A253625(n)*A324889(A001511(or(2, n+1)))`
-/

namespace A132973.P605083760911658590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253625 n * A324889 (A001511 (Nat.lor 2 (n + 1))).toNat

end

end A132973.P605083760911658590

/-! ## A132973.P5771163441613866480

`(A180318(2*n)+A180318(n))/2`
-/

namespace A132973.P5771163441613866480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 (2 * n) + A180318 n : ℚ) / 2

end

end A132973.P5771163441613866480

/-! ## A132973.P12252612919040961691

`A033999(n)*A253625(2*n)`
-/

namespace A132973.P12252612919040961691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A253625 (2 * n)

end

end A132973.P12252612919040961691

/-! ## A132973.P1478818247096159204

`A033999(n)*A253626(2*n)`
-/

namespace A132973.P1478818247096159204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A253626 (2 * n)

end

end A132973.P1478818247096159204

/-! ## A132973.P10653242679447618087

`(2-A010684(n))*A253626(2*n)`
-/

namespace A132973.P10653242679447618087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A253626 (2 * n)

end

end A132973.P10653242679447618087

/-! ## A132973.P15693565589773564223

`A107760(n)/A132974(n)*A132979(n)`
-/

namespace A132973.P15693565589773564223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107760 n : ℚ) / (A132974 n : ℚ) * (A132979 n : ℚ)

end

end A132973.P15693565589773564223

/-! ## A132973.P9688699850214271708

`A205970(n)/A324969(n+1)`
-/

namespace A132973.P9688699850214271708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205970 n : ℚ) / (A324969 (n + 1) : ℚ)

end

end A132973.P9688699850214271708

/-! ## A132973.P12514437317509909975

`A109064(n)/A205882(n)*A205970(n)`
-/

namespace A132973.P12514437317509909975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109064 n : ℚ) / (A205882 n : ℚ) * (A205970 n : ℚ)

end

end A132973.P12514437317509909975

/-! ## A132973.P1110775995874893875

`A034896(n)/A205971(n)*A205970(n)`
-/

namespace A132973.P1110775995874893875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 n : ℚ) / (A205971 n : ℚ) * (A205970 n : ℚ)

end

end A132973.P1110775995874893875

/-! ## A132973.P10256996154213357140

`A209450(n)/A215928(n)`
-/

namespace A132973.P10256996154213357140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209450 n : ℚ) / (A215928 n : ℚ)

end

end A132973.P10256996154213357140

/-! ## A132973.P17346141660602743709

`A034896(n)/A209451(n)*A209450(n)`
-/

namespace A132973.P17346141660602743709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 n : ℚ) / (A209451 n : ℚ) * (A209450 n : ℚ)

end

end A132973.P17346141660602743709

/-!
# A132974: Expansion of psi(-q^3) / psi(-q)^3 in powers of q where psi() is a Ramanujan theta function.

The programs for A132974, there is no canonical definition to state claims against.
-/

/-! ## A132974.P7183225304741480729

`abs(A132979(n))`
-/

namespace A132974.P7183225304741480729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132979 n|

end

end A132974.P7183225304741480729

/-! ## A132974.P9418348089042594184

`A033999(n)*A132979(n)`
-/

namespace A132974.P9418348089042594184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132979 n

end

end A132974.P9418348089042594184

/-! ## A132974.P16878094825891520141

`gcd(A000038(n), A132979(n))`
-/

namespace A132974.P16878094825891520141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A132979 n)

end

end A132974.P16878094825891520141

/-! ## A132974.P14068053807338736330

`lcm(A010684(n), A132979(n))`
-/

namespace A132974.P14068053807338736330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A132979 n)

end

end A132974.P14068053807338736330

/-!
# A132975: Expansion of q * psi(-q^9) / psi(-q) in powers of q where psi() is a Ramanujan theta function.

The programs for A132975, there is no canonical definition to state claims against.
-/

/-! ## A132975.P16258651467902481986

`abs(A124243(n+1))`
-/

namespace A132975.P16258651467902481986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124243 (n + 1)|

end

end A132975.P16258651467902481986

/-! ## A132975.P5552130075440655460

`abs(A141094(n+1)/3)`
-/

namespace A132975.P5552130075440655460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A141094 (n + 1) : ℚ) / 3|

end

end A132975.P5552130075440655460

/-! ## A132975.P2131038873610663510

`A033999(n)*A124243(n+1)`
-/

namespace A132975.P2131038873610663510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A124243 (n + 1)

end

end A132975.P2131038873610663510

/-! ## A132975.P11537644602660966950

`gcd(A000038(n), A124243(n+1))`
-/

namespace A132975.P11537644602660966950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124243 (n + 1))

end

end A132975.P11537644602660966950

/-! ## A132975.P14975072035425067000

`lcm(A020985(n), A124243(n+1))`
-/

namespace A132975.P14975072035425067000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A124243 (n + 1))

end

end A132975.P14975072035425067000

/-! ## A132975.P13997189572628803201

`A213267(n+1)`
-/

namespace A132975.P13997189572628803201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213267 (n + 1)

end

end A132975.P13997189572628803201

/-! ## A132975.P9226288429316312990

`abs(A145977(n+1))`
-/

namespace A132975.P9226288429316312990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145977 (n + 1)|

end

end A132975.P9226288429316312990

/-! ## A132975.P998759638710145975

`A132972(n+1)/3`
-/

namespace A132975.P998759638710145975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132972 (n + 1) : ℚ) / 3

end

end A132975.P998759638710145975

/-! ## A132975.P1811298111113249432

`ratio[A213267(n)]*A213267(n)`
-/

namespace A132975.P1811298111113249432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213267 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A213267 n : ℚ)

end

end A132975.P1811298111113249432

/-! ## A132975.P15301504530960509382

`A132180(n+1)/A010684(n)`
-/

namespace A132975.P15301504530960509382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132180 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A132975.P15301504530960509382

/-! ## A132975.P17422962340713874051

`A033999(n+1)*A145977(n+1)`
-/

namespace A132975.P17422962340713874051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A145977 (n + 1)

end

end A132975.P17422962340713874051

/-! ## A132975.P16751216866392633691

`A132180(n+1)/A153284(n+2)`
-/

namespace A132975.P16751216866392633691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132180 (n + 1) : ℚ) / (A153284 (n + 2) : ℚ)

end

end A132975.P16751216866392633691

/-! ## A132975.P734134422890419360

`lcm(A010684(n+1), A141094(n+1))/3`
-/

namespace A132975.P734134422890419360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A010684 (n + 1)) (A141094 (n + 1)) : ℚ) / 3

end

end A132975.P734134422890419360

/-! ## A132975.P7997342065800300914

`A128129(n+1)*A141094(n+1)/A294387(n+1)`
-/

namespace A132975.P7997342065800300914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128129 (n + 1) * A141094 (n + 1) : ℚ) / (A294387 (n + 1) : ℚ)

end

end A132975.P7997342065800300914

/-! ## A132975.P17132090408718685898

`A004409(n+1)/A319553(n+1)*A145977(n+1)`
-/

namespace A132975.P17132090408718685898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004409 (n + 1) : ℚ) / (A319553 (n + 1) : ℚ) * (A145977 (n + 1) : ℚ)

end

end A132975.P17132090408718685898

/-!
# A132977: Expansion of q^(-1/3) * (eta(q^6)^4 / (eta(q) * eta(q^3) * eta(q^4) * eta(q^12)))^2 in powers of q.

The programs for A132977, there is no canonical definition to state claims against.
-/

/-! ## A132977.P13851775318694873497

`A132975(3*n+1)`
-/

namespace A132977.P13851775318694873497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (3 * n + 1)

end

end A132977.P13851775318694873497

/-! ## A132977.P224786426538459153

`abs(A258099(n))`
-/

namespace A132977.P224786426538459153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258099 n|

end

end A132977.P224786426538459153

/-! ## A132977.P13127105044777577193

`A033999(n)*A258099(n)`
-/

namespace A132977.P13127105044777577193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258099 n

end

end A132977.P13127105044777577193

/-! ## A132977.P8733728477283235271

`gcd(A000038(n), A258099(n))`
-/

namespace A132977.P8733728477283235271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258099 n)

end

end A132977.P8733728477283235271

/-! ## A132977.P13092285993860052446

`lcm(A000034(n), A258099(n))`
-/

namespace A132977.P13092285993860052446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A258099 n)

end

end A132977.P13092285993860052446

/-! ## A132977.P16532107063646415717

`abs(A122830(3*n+1))`
-/

namespace A132977.P16532107063646415717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122830 (3 * n + 1)|

end

end A132977.P16532107063646415717

/-! ## A132977.P14312428475009691488

`abs(A124243(3*n+1))`
-/

namespace A132977.P14312428475009691488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124243 (3 * n + 1)|

end

end A132977.P14312428475009691488

/-! ## A132977.P12595605597508717524

`A020985(2*n+1)*A020985(n)*A124243(3*n+1)`
-/

namespace A132977.P12595605597508717524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A124243 (3 * n + 1)

end

end A132977.P12595605597508717524

/-! ## A132977.P8458539946866063434

`A213267(3*n+1)`
-/

namespace A132977.P8458539946866063434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213267 (3 * n + 1)

end

end A132977.P8458539946866063434

/-! ## A132977.P13489599296912949488

`record[-A164616(n+1)]`
-/

namespace A132977.P13489599296912949488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A164616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132977.P13489599296912949488

/-! ## A132977.P2611802462956443138

`abs(A122831(3*n+1)/3)`
-/

namespace A132977.P2611802462956443138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A122831 (3 * n + 1) : ℚ) / 3|

end

end A132977.P2611802462956443138

/-! ## A132977.P567143852499853483

`gcd(A124243(3*n+1)*A124243(4*n+1), A124243(3*n+1))`
-/

namespace A132977.P567143852499853483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124243 (3 * n + 1) * A124243 (4 * n + 1)) (A124243 (3 * n + 1))

end

end A132977.P567143852499853483

/-!
# A132978: Expansion of q^(-2/3) * (psi(-q^3) / psi(-q)^3) * (c(q^2) / 3) in powers of q where psi() is a Ramanujan theta function and c() is a cubic AGM theta function.

The programs for A132978, there is no canonical definition to state claims against.
-/

/-! ## A132978.P6330230585653167893

`A132975(3*n+2)`
-/

namespace A132978.P6330230585653167893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (3 * n + 2)

end

end A132978.P6330230585653167893

/-! ## A132978.P15669076866088504356

`A213267(3*n+2)`
-/

namespace A132978.P15669076866088504356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213267 (3 * n + 2)

end

end A132978.P15669076866088504356

/-! ## A132978.P16271545058961266985

`abs(A124243(3*n+2))`
-/

namespace A132978.P16271545058961266985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124243 (3 * n + 2)|

end

end A132978.P16271545058961266985

/-! ## A132978.P4132519217802906333

`abs(A145977(3*n+2))`
-/

namespace A132978.P4132519217802906333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145977 (3 * n + 2)|

end

end A132978.P4132519217802906333

/-! ## A132978.P17030429939829278849

`A132972(3*n+2)/3`
-/

namespace A132978.P17030429939829278849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132972 (3 * n + 2) : ℚ) / 3

end

end A132978.P17030429939829278849

/-!
# A132979: Expansion of psi(q^3) / psi(q)^3 in powers of q where psi() is a Ramanujan theta function.

The programs for A132979, there is no canonical definition to state claims against.
-/

/-! ## A132979.P6495226928779701365

`(-1)^n*A132974(n)`
-/

namespace A132979.P6495226928779701365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132974 n

end

end A132979.P6495226928779701365

/-! ## A132979.P11261237420470606838

`A132974(n)/A033999(n)`
-/

namespace A132979.P11261237420470606838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132974 n : ℚ) / (A033999 n : ℚ)

end

end A132979.P11261237420470606838

/-! ## A132979.P8620730007152142112

`A132974(n)/A056594(2*n)`
-/

namespace A132979.P8620730007152142112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132974 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A132979.P8620730007152142112

/-! ## A132979.P5218465019488397045

`A132974(n)/A087960(2*n)`
-/

namespace A132979.P5218465019488397045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132974 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A132979.P5218465019488397045

/-! ## A132979.P1888975429506570920

`A132974(n)*A163806(A016777(n))`
-/

namespace A132979.P1888975429506570920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132974 n * A163806 (A016777 n).toNat

end

end A132979.P1888975429506570920

/-! ## A132979.P6252175895321791366

`A128641(n)*A132974(n)/A164617(n)`
-/

namespace A132979.P6252175895321791366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128641 n * A132974 n : ℚ) / (A164617 n : ℚ)

end

end A132979.P6252175895321791366

/-!
# A132981: Equal sides of isosceles Heronian triangles, ordered.

The programs for A132981, there is no canonical definition to state claims against.
-/

/-! ## A132981.P18198391458748400308

`A020882(∑[log2(gcd(2, n))])`
-/

namespace A132981.P18198391458748400308
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A132981.P18198391458748400308

/-! ## A132981.P15075177634152348089

`A020882(∑[char[2*n]])`
-/

namespace A132981.P15075177634152348089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132981.P15075177634152348089

/-! ## A132981.P3782660134460991523

`or(1, A020882(floor(n/2)+1))`
-/

namespace A132981.P3782660134460991523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020882 (⌊(n : ℚ) / 2⌋ + 1).toNat)

end

end A132981.P3782660134460991523

/-! ## A132981.P12362470725298696737

`A000027(A020882(floor(n/2)+1))`
-/

namespace A132981.P12362470725298696737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A020882 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

end

end A132981.P12362470725298696737

/-! ## A132981.P14981245905409434592

`A020882(floor((n+2)/2))-A007318(C(2, n))+1`
-/

namespace A132981.P14981245905409434592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 ⌊(n + 2 : ℚ) / 2⌋.toNat - A007318 (Nat.choose 2 n) + 1

end

end A132981.P14981245905409434592

/-! ## A132981.P15459665803761272540

`A020882(∑[and(1, n+1)])%A000032(n+4)`
-/

namespace A132981.P15459665803761272540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020882 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000032 (n + 4))

end

end A132981.P15459665803761272540

/-!
# A132982: The non-prime-power "antimutinous" numbers. (Antimutinous numbers are those integers m, m >1, where m/p^k < p, p = largest prime divisor of m, p^k = largest power of p that divides m.)

The programs for A132982, the canonical program `A132982.P12874954252667279513` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132982 has offset 1).

The definition of A132982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132982.P290874328503556111

`∩[A027855(n+1), A085232(n+1)]`
-/

namespace A132982.P290874328503556111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132982.P290874328503556111

namespace A132982

/-- `∩[A027855(n+1), A085232(n+1)]` -/
def P290874328503556111.Spec : Prop :=
  ∀ n, (P290874328503556111.a n : ℤ) = A132982 (n + 1)

end A132982

/-! ## A132982.P15632572151622642333

`∩[A085232(n+1), A132858(n+1)]`
-/

namespace A132982.P15632572151622642333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132982.P15632572151622642333

namespace A132982

/-- `∩[A085232(n+1), A132858(n+1)]` -/
def P15632572151622642333.Spec : Prop :=
  ∀ n, (P15632572151622642333.a n : ℤ) = A132982 (n + 1)

end A132982

/-! ## A132982.P2930166049490079643

`∩[A027855(n+1), A085234(n+1)]`
-/

namespace A132982.P2930166049490079643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132982.P2930166049490079643

namespace A132982

/-- `∩[A027855(n+1), A085234(n+1)]` -/
def P2930166049490079643.Spec : Prop :=
  ∀ n, (P2930166049490079643.a n : ℤ) = A132982 (n + 1)

end A132982

/-! ## A132982.P14543829963414564727

`∩[A085234(n+1), A132858(n+1)]`
-/

namespace A132982.P14543829963414564727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132982.P14543829963414564727

namespace A132982

/-- `∩[A085234(n+1), A132858(n+1)]` -/
def P14543829963414564727.Spec : Prop :=
  ∀ n, (P14543829963414564727.a n : ℤ) = A132982 (n + 1)

end A132982

/-! ## A132982.P1164522953548962650

`∩[A024619(n+1), A027855(n+1)]`
-/

namespace A132982.P1164522953548962650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132982.P1164522953548962650

namespace A132982

/-- `∩[A024619(n+1), A027855(n+1)]` -/
def P1164522953548962650.Spec : Prop :=
  ∀ n, (P1164522953548962650.a n : ℤ) = A132982 (n + 1)

end A132982

/-! ## A132982.P14936485536364748365

`∩[A024619(n+1), A132858(n+1)]`
-/

namespace A132982.P14936485536364748365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132982.P14936485536364748365

namespace A132982

/-- `∩[A024619(n+1), A132858(n+1)]` -/
def P14936485536364748365.Spec : Prop :=
  ∀ n, (P14936485536364748365.a n : ℤ) = A132982 (n + 1)

end A132982

/-! ## A132982.P4563879142329328051

`∩[A027855(n+1), A361102(n+1)]`
-/

namespace A132982.P4563879142329328051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132982.P4563879142329328051

namespace A132982

/-- `∩[A027855(n+1), A361102(n+1)]` -/
def P4563879142329328051.Spec : Prop :=
  ∀ n, (P4563879142329328051.a n : ℤ) = A132982 (n + 1)

end A132982

/-! ## A132982.P2044978047550848407

`∩[A132858(n+1), A361102(n+1)]`
-/

namespace A132982.P2044978047550848407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132982.P2044978047550848407

namespace A132982

/-- `∩[A132858(n+1), A361102(n+1)]` -/
def P2044978047550848407.Spec : Prop :=
  ∀ n, (P2044978047550848407.a n : ℤ) = A132982 (n + 1)

end A132982

/-! ## A132982.P13715076390099597689

`∩[A085971(n+1), A132858(n+1)]`
-/

namespace A132982.P13715076390099597689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132982.P13715076390099597689

namespace A132982

/-- `∩[A085971(n+1), A132858(n+1)]` -/
def P13715076390099597689.Spec : Prop :=
  ∀ n, (P13715076390099597689.a n : ℤ) = A132982 (n + 1)

end A132982

/-! ## A132982.P12874954252667279513

`filter[A027855(n+1), A143731(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A132982

/-- `filter[A027855(n+1), A143731(#)]` -/
def P12874954252667279513.Spec : Prop :=
  ∀ n, P12874954252667279513.a n = A132982 (n + 1)

theorem P12874954252667279513.correct : P12874954252667279513.Spec := by
  intro n
  simp only [A132982, Nat.add_sub_cancel]

end A132982

/-! ## A132982.P15026959869400681342

`filter[A132858(n+1), A143731(#)]`
-/

namespace A132982.P15026959869400681342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A132982.P15026959869400681342

namespace A132982

/-- `filter[A132858(n+1), A143731(#)]` -/
def P15026959869400681342.Spec : Prop :=
  ∀ n, P15026959869400681342.a n = A132982 (n + 1)

end A132982

/-! ## A132982.P8705802981849532252

`lt[A256267(n+1), A074591(n+1)]+1`
-/

namespace A132982.P8705802981849532252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A132982.P8705802981849532252

namespace A132982

/-- `lt[A256267(n+1), A074591(n+1)]+1` -/
def P8705802981849532252.Spec : Prop :=
  ∀ n, (P8705802981849532252.a n : ℤ) = A132982 (n + 1)

end A132982

/-! ## A132982.P2396871862531802310

`lt[A256267(n+1), A243074(n+1)]+1`
-/

namespace A132982.P2396871862531802310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A132982.P2396871862531802310

namespace A132982

/-- `lt[A256267(n+1), A243074(n+1)]+1` -/
def P2396871862531802310.Spec : Prop :=
  ∀ n, (P2396871862531802310.a n : ℤ) = A132982 (n + 1)

end A132982

/-! ## A132982.P11595233465211625711

`A020725(lt[A256267(n+1), A074591(n+1)])`
-/

namespace A132982.P11595233465211625711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A132982.P11595233465211625711

namespace A132982

/-- `A020725(lt[A256267(n+1), A074591(n+1)])` -/
def P11595233465211625711.Spec : Prop :=
  ∀ n, P11595233465211625711.a n = A132982 (n + 1)

end A132982

/-! ## A132982.P9440807092457801375

`A061767(lt[A256267(n+1), A074591(n+1)])`
-/

namespace A132982.P9440807092457801375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A132982.P9440807092457801375

namespace A132982

/-- `A061767(lt[A256267(n+1), A074591(n+1)])` -/
def P9440807092457801375.Spec : Prop :=
  ∀ n, P9440807092457801375.a n = A132982 (n + 1)

end A132982

/-! ## A132982.P9526866389423520598

`A153152(lt[A256267(n+1), A074591(n+1)])`
-/

namespace A132982.P9526866389423520598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A132982.P9526866389423520598

namespace A132982

/-- `A153152(lt[A256267(n+1), A074591(n+1)])` -/
def P9526866389423520598.Spec : Prop :=
  ∀ n, P9526866389423520598.a n = A132982 (n + 1)

end A132982

/-! ## A132982.P16648589240882139291

`A181569(lt[A256267(n+1), A074591(n+1)])`
-/

namespace A132982.P16648589240882139291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A132982.P16648589240882139291

namespace A132982

/-- `A181569(lt[A256267(n+1), A074591(n+1)])` -/
def P16648589240882139291.Spec : Prop :=
  ∀ n, P16648589240882139291.a n = A132982 (n + 1)

end A132982

/-! ## A132982.P16613141211755643137

`A020725(lt[A256267(n+1), A243074(n+1)])`
-/

namespace A132982.P16613141211755643137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A132982.P16613141211755643137

namespace A132982

/-- `A020725(lt[A256267(n+1), A243074(n+1)])` -/
def P16613141211755643137.Spec : Prop :=
  ∀ n, P16613141211755643137.a n = A132982 (n + 1)

end A132982

/-! ## A132982.P10244496556861254162

`record[gcd(A003418(n+3), A027855(n+5))]`
-/

namespace A132982.P10244496556861254162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (n + 3)) (A027855 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132982.P10244496556861254162

namespace A132982

/-- `record[gcd(A003418(n+3), A027855(n+5))]` -/
def P10244496556861254162.Spec : Prop :=
  ∀ n, (P10244496556861254162.a n : ℤ) = A132982 (n + 1)

end A132982

/-!
# A132983: a(n) = ceiling(n^(1/3) + n^(1/4)).

The programs for A132983, the canonical program `A132983.P793348110539268802` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132983 has offset 1).

The definition of A132983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)^(1/3)+(n+1)^(1/4))` (program `A132983.P793348110539268802`, by `A132983.P793348110539268802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132983.P793348110539268802

`ceil((n+1)^(1/3)+(n+1)^(1/4))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A132983

/-- `ceil((n+1)^(1/3)+(n+1)^(1/4))` -/
def P793348110539268802.Spec : Prop :=
  ∀ n, P793348110539268802.a n = A132983 (n + 1)

theorem P793348110539268802.correct : P793348110539268802.Spec := by
  intro n
  simp only [A132983, Nat.add_sub_cancel]

end A132983

/-! ## A132983.P3210113723994438433

`A267870(A312591(n))+A132944(n+1)`
-/

namespace A132983.P3210113723994438433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (A312591 n).toNat + A132944 (n + 1)

end

end A132983.P3210113723994438433

namespace A132983

/-- `A267870(A312591(n))+A132944(n+1)` -/
def P3210113723994438433.Spec : Prop :=
  ∀ n, P3210113723994438433.a n = A132983 (n + 1)

end A132983

/-! ## A132983.P2002025985852318952

`A267870(A133387(n+1))+A132944(n+1)`
-/

namespace A132983.P2002025985852318952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (A133387 (n + 1)).toNat + A132944 (n + 1)

end

end A132983.P2002025985852318952

namespace A132983

/-- `A267870(A133387(n+1))+A132944(n+1)` -/
def P2002025985852318952.Spec : Prop :=
  ∀ n, P2002025985852318952.a n = A132983 (n + 1)

end A132983

/-! ## A132983.P16430067416316588011

`A132944(n+1)+A001065(A008578(n+1))`
-/

namespace A132983.P16430067416316588011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132944 (n + 1) + A001065 (A008578 (n + 1)).toNat

end

end A132983.P16430067416316588011

namespace A132983

/-- `A132944(n+1)+A001065(A008578(n+1))` -/
def P16430067416316588011.Spec : Prop :=
  ∀ n, P16430067416316588011.a n = A132983 (n + 1)

end A132983

/-! ## A132983.P15740986140118649086

`A132944(n+1)+A000035(p?[A080412(n)])`
-/

namespace A132983.P15740986140118649086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132944 (n + 1) + A000035 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A132983.P15740986140118649086

namespace A132983

/-- `A132944(n+1)+A000035(p?[A080412(n)])` -/
def P15740986140118649086.Spec : Prop :=
  ∀ n, P15740986140118649086.a n = A132983 (n + 1)

end A132983

/-! ## A132983.P3641714415475107160

`A132944(n+1)+A000035(A000040(n+1))`
-/

namespace A132983.P3641714415475107160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132944 (n + 1) + A000035 (A000040 (n + 1)).toNat

end

end A132983.P3641714415475107160

namespace A132983

/-- `A132944(n+1)+A000035(A000040(n+1))` -/
def P3641714415475107160.Spec : Prop :=
  ∀ n, P3641714415475107160.a n = A132983 (n + 1)

end A132983

/-! ## A132983.P322466161398166311

`A267870(A048161(n+1))+A132944(n+1)`
-/

namespace A132983.P322466161398166311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (A048161 (n + 1)).toNat + A132944 (n + 1)

end

end A132983.P322466161398166311

namespace A132983

/-- `A267870(A048161(n+1))+A132944(n+1)` -/
def P322466161398166311.Spec : Prop :=
  ∀ n, P322466161398166311.a n = A132983 (n + 1)

end A132983

/-! ## A132983.P17225759983527573057

`A074279(3*A074279((n+1)²)+n)`
-/

namespace A132983.P17225759983527573057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (3 * A074279 ((n + 1) ^ 2) + (n : ℤ)).toNat

end

end A132983.P17225759983527573057

namespace A132983

/-- `A074279(3*A074279((n+1)²)+n)` -/
def P17225759983527573057.Spec : Prop :=
  ∀ n, P17225759983527573057.a n = A132983 (n + 1)

end A132983

/-! ## A132983.P12983695795114113861

`A090529(A302833(n)+A090529(n))`
-/

namespace A132983.P12983695795114113861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (A302833 n + A090529 n).toNat

end

end A132983.P12983695795114113861

namespace A132983

/-- `A090529(A302833(n)+A090529(n))` -/
def P12983695795114113861.Spec : Prop :=
  ∀ n, P12983695795114113861.a n = A132983 (n + 1)

end A132983

/-!
# A132985: Expansion of chi(-q^5) / chi(-q)^5 in powers of q where chi() is a Ramanujan theta function.

The programs for A132985, there is no canonical definition to state claims against.
-/

/-! ## A132985.P11261179891016349281

`ceil(A225701(2*n)/2)`
-/

namespace A132985.P11261179891016349281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A225701 (2 * n) : ℚ) / 2⌉

end

end A132985.P11261179891016349281

/-! ## A132985.P17393220985482366855

`record[ceil(A138521(n)/2)]`
-/

namespace A132985.P17393220985482366855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138521 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132985.P17393220985482366855

/-! ## A132985.P17694505731946632067

`ceil(A138521(2*n)/2)`
-/

namespace A132985.P17694505731946632067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138521 (2 * n) : ℚ) / 2⌉

end

end A132985.P17694505731946632067

/-!
# A132986: Triangle, read by rows, where row n of T = row n-1 of T^n (shift right 1 column) with T(n,0)=T(n,1) for n>0.

The programs for A132986, there is no canonical definition to state claims against.
-/

/-! ## A132986.P9245904512300580338

`A266005(A182222(n))+A221728(A319056(n))`
-/

namespace A132986.P9245904512300580338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266005 (A182222 n).toNat + A221728 (A319056 n).toNat

end

end A132986.P9245904512300580338

/-! ## A132986.P13506559585199137454

`A349269(A302989(n)%A325139(n))`
-/

namespace A132986.P13506559585199137454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349269 (Int.tmod (A302989 n) (A325139 n)).toNat

end

end A132986.P13506559585199137454

/-! ## A132986.P16026231876261073664

`A333978(A182062(n)^A267724(n+1))`
-/

namespace A132986.P16026231876261073664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333978 (SequenceMachineLib.roundAway ((A182062 n : ℚ) ^ (A267724 (n + 1) : ℤ))).toNat

end

end A132986.P16026231876261073664

/-! ## A132986.P14746677546841361704

`A025487(A104557(n)%A254878(n+1))`
-/

namespace A132986.P14746677546841361704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (Int.tmod (A104557 n) (A254878 (n + 1))).toNat

end

end A132986.P14746677546841361704

/-!
# A132987: Column 0 of triangle A132986.

The programs for A132987, there is no canonical definition to state claims against.
-/

/-! ## A132987.P10209999075554643703

`A132986(∑[n])`
-/

namespace A132987.P10209999075554643703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132986 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132987.P10209999075554643703

/-! ## A132987.P6700160547855602241

`and(-1, A132986(A000217(n)))`
-/

namespace A132987.P6700160547855602241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A132986 (A000217 n).toNat)

end

end A132987.P6700160547855602241

/-! ## A132987.P7871356875758875219

`A178780(n)+A132986(A000217(n))`
-/

namespace A132987.P7871356875758875219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 n + A132986 (A000217 n).toNat

end

end A132987.P7871356875758875219

/-! ## A132987.P18023379769164198880

`A184945(n)+A132986(A000217(n))`
-/

namespace A132987.P18023379769164198880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 n + A132986 (A000217 n).toNat

end

end A132987.P18023379769164198880

/-! ## A132987.P16746397402606700305

`A243829(n)+A132986(A000217(n))`
-/

namespace A132987.P16746397402606700305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243829 n + A132986 (A000217 n).toNat

end

end A132987.P16746397402606700305

/-!
# A132990: Trajectory of 11 under map n -> A132988(n).

The programs for A132990, there is no canonical definition to state claims against.
-/

/-! ## A132990.P7194712229283318157

`A132988(a(n-1))` with `a(0)=11`
-/

namespace A132990.P7194712229283318157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A132988 (a (n - 1)).toNat

end

end A132990.P7194712229283318157

/-! ## A132990.P10341098105690775969

`A132988(abs(a(A023443(n))))` with `a(0)=11`
-/

namespace A132990.P10341098105690775969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A132988 |a (A023443 n).toNat|.toNat

end

end A132990.P10341098105690775969

/-!
# A132991: Retrograde trajectory of 11 under map n -> A132988(n).

The programs for A132991, there is no canonical definition to state claims against.
-/

/-! ## A132991.P14747378060877376437

`A132989(a(n-1))` with `a(0)=11`
-/

namespace A132991.P14747378060877376437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A132989 (a (n - 1)).toNat

end

end A132991.P14747378060877376437

/-!
# A132993: Triangle t(n,m) = P(n-m+1) * P(m+1) read by rows, 0<=m<=n, where P=A000041 are the partition numbers.

The programs for A132993, there is no canonical definition to state claims against.
-/

/-! ## A132993.P12603257539312199981

`A000041(C(comp[∑[n]]-n, 2)-n)*A092080(n+1)`
-/

namespace A132993.P12603257539312199981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) * A092080 (n + 1)

end

end A132993.P12603257539312199981

/-! ## A132993.P10811626120210741210

`A000041(A004736(n+1))*A092080(n+1)`
-/

namespace A132993.P10811626120210741210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004736 (n + 1)).toNat * A092080 (n + 1)

end

end A132993.P10811626120210741210

/-! ## A132993.P17476971044565947931

`A000041(A002260(n+1))*A000041(A004736(n+1))`
-/

namespace A132993.P17476971044565947931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002260 (n + 1)).toNat * A000041 (A004736 (n + 1)).toNat

end

end A132993.P17476971044565947931

/-! ## A132993.P6125079600829987565

`A000041(A002260(n+1))*A000041(A025581(n)+1)`
-/

namespace A132993.P6125079600829987565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002260 (n + 1)).toNat * A000041 (A025581 n + 1).toNat

end

end A132993.P6125079600829987565

/-! ## A132993.P2451565685912269874

`A092080(n+1)*A092080(A278818(n))`
-/

namespace A132993.P2451565685912269874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092080 (n + 1) * A092080 (A278818 n).toNat

end

end A132993.P2451565685912269874

/-! ## A132993.P9632368728959457168

`A299200(A073060(n))`
-/

namespace A132993.P9632368728959457168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A073060 n).toNat

end

end A132993.P9632368728959457168

/-! ## A132993.P10214953971983807638

`A299200(A098350(n+1))`
-/

namespace A132993.P10214953971983807638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A098350 (n + 1)).toNat

end

end A132993.P10214953971983807638

/-! ## A132993.P9922781923065528260

`∏{e}[A036561(n), A000041(#+1)]`
-/

namespace A132993.P9922781923065528260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p + 1)

end

end A132993.P9922781923065528260

/-! ## A132993.P3579271113996487138

`∏{e}[A175840(n), A000041(#+1)]`
-/

namespace A132993.P3579271113996487138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p + 1)

end

end A132993.P3579271113996487138

/-! ## A132993.P15629666025914283545

`A003964(A146985(n))`
-/

namespace A132993.P15629666025914283545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A146985 n).toNat

end

end A132993.P15629666025914283545

/-!
# A132994: Partial sums of A078930.

The programs for A132994, there is no canonical definition to state claims against.
-/

/-! ## A132994.P11721018457414845234

`∑[A078930(n+1)]`
-/

namespace A132994.P11721018457414845234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132994.P11721018457414845234

/-! ## A132994.P17599827979590683508

`A078930(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A132994.P17599827979590683508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078930 (n + 1) + a (A023443 n).toNat

end

end A132994.P17599827979590683508

/-! ## A132994.P18431352255488546524

`∑[A078911(n+1)+A078910(n+1)]`
-/

namespace A132994.P18431352255488546524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078911 (n + 1) + A078910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132994.P18431352255488546524

/-! ## A132994.P5648606375318806782

`∑[Δ[A160664(n)]+2*A078911(n+1)]`
-/

namespace A132994.P5648606375318806782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2 * A078911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132994.P5648606375318806782

/-! ## A132994.P18387732158719563217

`∑[A000203(n+1)+2*A078911(n+1)]`
-/

namespace A132994.P18387732158719563217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 2 * A078911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132994.P18387732158719563217

/-!
# A132995: a(n) = gcd(Sum_{k=1..n} prime(k), Product{j=1..n} prime(j)).

The programs for A132995, the canonical program `A132995.P8538436233265635730` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132995 has offset 1).

The definition of A132995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132995.P8538436233265635730

`gcd(A007504(n+1), A002110(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A132995

/-- `gcd(A007504(n+1), A002110(n+1))` -/
def P8538436233265635730.Spec : Prop :=
  ∀ n, (P8538436233265635730.a n : ℤ) = A132995 (n + 1)

theorem P8538436233265635730.correct : P8538436233265635730.Spec := by
  intro n
  simp only [A132995, Nat.add_sub_cancel]

end A132995

/-! ## A132995.P17911355889941159195

`A007504(n+1)/A121755(n+1)`
-/

namespace A132995.P17911355889941159195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A121755 (n + 1) : ℚ)

end

end A132995.P17911355889941159195

namespace A132995

/-- `A007504(n+1)/A121755(n+1)` -/
def P17911355889941159195.Spec : Prop :=
  ∀ n, P17911355889941159195.a n = (A132995 (n + 1) : ℚ)

end A132995

/-! ## A132995.P14441344501370358852

`∑[A000040(n+1)]/A121755(n+1)`
-/

namespace A132995.P14441344501370358852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A121755 (n + 1) : ℚ)

end

end A132995.P14441344501370358852

namespace A132995

/-- `∑[A000040(n+1)]/A121755(n+1)` -/
def P14441344501370358852.Spec : Prop :=
  ∀ n, P14441344501370358852.a n = (A132995 (n + 1) : ℚ)

end A132995

/-! ## A132995.P14475430912682778232

`∑[A008578(n+2)]/A121755(n+1)`
-/

namespace A132995.P14475430912682778232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A121755 (n + 1) : ℚ)

end

end A132995.P14475430912682778232

namespace A132995

/-- `∑[A008578(n+2)]/A121755(n+1)` -/
def P14475430912682778232.Spec : Prop :=
  ∀ n, P14475430912682778232.a n = (A132995 (n + 1) : ℚ)

end A132995

/-! ## A132995.P7368423150775422281

`∑[p?[A123882(n+1)]]/A121755(n+1)`
-/

namespace A132995.P7368423150775422281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A121755 (n + 1) : ℚ)

end

end A132995.P7368423150775422281

namespace A132995

/-- `∑[p?[A123882(n+1)]]/A121755(n+1)` -/
def P7368423150775422281.Spec : Prop :=
  ∀ n, P7368423150775422281.a n = (A132995 (n + 1) : ℚ)

end A132995

/-!
# A132996: a(n) = gcd(Sum_{k=1..n} c(k), Product_{j=1..n} c(j)), where c(k) is the k-th composite.

The programs for A132996, there is no canonical definition to state claims against.
-/

/-! ## A132996.P705611754033181847

`gcd(A053767(n+1), A255383(n+1))`
-/

namespace A132996.P705611754033181847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053767 (n + 1)) (A255383 (n + 1))

end

end A132996.P705611754033181847

/-! ## A132996.P13173453951750739034

`gcd(∑[A002808(n+1)], A036691(n+1))`
-/

namespace A132996.P13173453951750739034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A036691 (n + 1))

end

end A132996.P13173453951750739034

/-!
# A132998: a(n) = n^4 - n^3 - n^2.

The programs for A132998, the canonical program `A132998.P18407272093021045904` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132998 has offset 0).

The definition of A132998 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4-n^3-n²` (program `A132998.P18407272093021045904`, by `A132998.P18407272093021045904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132998.P18407272093021045904

`n^4-n^3-n²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A132998

/-- `n^4-n^3-n²` -/
def P18407272093021045904.Spec : Prop :=
  ∀ n, P18407272093021045904.a n = A132998 n

theorem P18407272093021045904.correct : P18407272093021045904.Spec := by
  intro n
  simp only [A132998]

end A132998

/-! ## A132998.P5618697455753694652

`n*A152015(n)`
-/

namespace A132998.P5618697455753694652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A152015 n

end

end A132998.P5618697455753694652

namespace A132998

/-- `n*A152015(n)` -/
def P5618697455753694652.Spec : Prop :=
  ∀ n, P5618697455753694652.a n = A132998 n

theorem P5618697455753694652.correct : P5618697455753694652.Spec := by
  intro n
  simp only [A132998, Nat.add_sub_cancel, A132998.P5618697455753694652.a, A132998.P18407272093021045904.a, A152015, A152015.P10693124433547333661.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132998

/-! ## A132998.P492044853181608803

`n²*A165900(n)`
-/

namespace A132998.P492044853181608803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A165900 n

end

end A132998.P492044853181608803

namespace A132998

/-- `n²*A165900(n)` -/
def P492044853181608803.Spec : Prop :=
  ∀ n, P492044853181608803.a n = A132998 n

theorem P492044853181608803.correct : P492044853181608803.Spec := by
  intro n
  simp only [A132998, Nat.add_sub_cancel, A132998.P492044853181608803.a, A132998.P18407272093021045904.a, A165900, A165900.P16246243669433487557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132998

/-! ## A132998.P11770595493847679178

`n*(A083074(n)+1)`
-/

namespace A132998.P11770595493847679178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A083074 n + 1)

end

end A132998.P11770595493847679178

namespace A132998

/-- `n*(A083074(n)+1)` -/
def P11770595493847679178.Spec : Prop :=
  ∀ n, P11770595493847679178.a n = A132998 n

theorem P11770595493847679178.correct : P11770595493847679178.Spec := by
  intro n
  simp only [A132998, Nat.add_sub_cancel, A132998.P11770595493847679178.a, A132998.P18407272093021045904.a, A083074, A083074.P14700976878568610308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132998

/-! ## A132998.P3984141875028658059

`n*(A152618(n)-1)`
-/

namespace A132998.P3984141875028658059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152618 n - 1)

end

end A132998.P3984141875028658059

namespace A132998

/-- `n*(A152618(n)-1)` -/
def P3984141875028658059.Spec : Prop :=
  ∀ n, P3984141875028658059.a n = A132998 n

theorem P3984141875028658059.correct : P3984141875028658059.Spec := by
  intro n
  simp only [A132998, Nat.add_sub_cancel, A132998.P3984141875028658059.a, A132998.P18407272093021045904.a, A152618, A152618.P5109371313770539411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132998

/-! ## A132998.P847959758485201796

`n*(A045991(n)-n)`
-/

namespace A132998.P847959758485201796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A045991 n - (n : ℤ))

end

end A132998.P847959758485201796

namespace A132998

/-- `n*(A045991(n)-n)` -/
def P847959758485201796.Spec : Prop :=
  ∀ n, P847959758485201796.a n = A132998 n

theorem P847959758485201796.correct : P847959758485201796.Spec := by
  intro n
  simp only [A132998, Nat.add_sub_cancel, A132998.P847959758485201796.a, A132998.P18407272093021045904.a, A045991, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132998

/-! ## A132998.P11861594276865799935

`n*(A153257(n)+n+1)`
-/

namespace A132998.P11861594276865799935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A153257 n + (n + 1 : ℤ))

end

end A132998.P11861594276865799935

namespace A132998

/-- `n*(A153257(n)+n+1)` -/
def P11861594276865799935.Spec : Prop :=
  ∀ n, P11861594276865799935.a n = A132998 n

theorem P11861594276865799935.correct : P11861594276865799935.Spec := by
  intro n
  simp only [A132998, Nat.add_sub_cancel, A132998.P11861594276865799935.a, A132998.P18407272093021045904.a, A153257, A153257.P10992381773923415324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132998

/-! ## A132998.P13309148493009864820

`n*(A100104(n)-(n+1))`
-/

namespace A132998.P13309148493009864820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A100104 n - (n + 1 : ℤ))

end

end A132998.P13309148493009864820

namespace A132998

/-- `n*(A100104(n)-(n+1))` -/
def P13309148493009864820.Spec : Prop :=
  ∀ n, P13309148493009864820.a n = A132998 n

theorem P13309148493009864820.correct : P13309148493009864820.Spec := by
  intro n
  simp only [A132998, Nat.add_sub_cancel, A132998.P13309148493009864820.a, A132998.P18407272093021045904.a, A100104, A100104.P5986239298925528183.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132998

/-! ## A132998.P9616371253198455367

`n²*Δ[A109620(n)]`
-/

namespace A132998.P9616371253198455367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A132998.P9616371253198455367

namespace A132998

/-- `n²*Δ[A109620(n)]` -/
def P9616371253198455367.Spec : Prop :=
  ∀ n, P9616371253198455367.a n = A132998 n

end A132998

/-!
# A132999: Imperfect numbers: Not equal to sum of proper divisors.

The programs for A132999, the canonical program `A132999.P9364533411470026189` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132999 has offset 1).

The definition of A132999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132999.P8003013575494403159

`lt[0, A318467(n+1)]+1`
-/

namespace A132999.P8003013575494403159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A132999.P8003013575494403159

namespace A132999

/-- `lt[0, A318467(n+1)]+1` -/
def P8003013575494403159.Spec : Prop :=
  ∀ n, (P8003013575494403159.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P18285698425522245586

`lt[n/3, A325959(n+1)]+1`
-/

namespace A132999.P18285698425522245586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A132999.P18285698425522245586

namespace A132999

/-- `lt[n/3, A325959(n+1)]+1` -/
def P18285698425522245586.Spec : Prop :=
  ∀ n, (P18285698425522245586.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P9364533411470026189

`record[(n+1)%(A033879(n+1)²+n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A132999

/-- `record[(n+1)%(A033879(n+1)²+n+1)]` -/
def P9364533411470026189.Spec : Prop :=
  ∀ n, P9364533411470026189.a n = A132999 (n + 1)

theorem P9364533411470026189.correct : P9364533411470026189.Spec := by
  intro n
  simp only [A132999, Nat.add_sub_cancel]

end A132999

/-! ## A132999.P8837529318463744038

`comp[A001599(n+2)*A010052(n)]`
-/

namespace A132999.P8837529318463744038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (n + 2) * A010052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132999.P8837529318463744038

namespace A132999

/-- `comp[A001599(n+2)*A010052(n)]` -/
def P8837529318463744038.Spec : Prop :=
  ∀ n, (P8837529318463744038.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P4912658898728258937

`comp[A336702(n+1)%A276637(n)]`
-/

namespace A132999.P4912658898728258937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336702 (n + 1)) (A276637 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132999.P4912658898728258937

namespace A132999

/-- `comp[A336702(n+1)%A276637(n)]` -/
def P4912658898728258937.Spec : Prop :=
  ∀ n, (P4912658898728258937.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P14553650012162913387

`∪[A005100(n+1), A005101(n+1)]`
-/

namespace A132999.P14553650012162913387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132999.P14553650012162913387

namespace A132999

/-- `∪[A005100(n+1), A005101(n+1)]` -/
def P14553650012162913387.Spec : Prop :=
  ∀ n, (P14553650012162913387.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P7542575981094268175

`comp[A007691(n+1)*A344617(n+1)]`
-/

namespace A132999.P7542575981094268175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1) * A344617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132999.P7542575981094268175

namespace A132999

/-- `comp[A007691(n+1)*A344617(n+1)]` -/
def P7542575981094268175.Spec : Prop :=
  ∀ n, (P7542575981094268175.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P6372577744642354852

`comp[A007691(n+1)*A359158(n+1)]`
-/

namespace A132999.P6372577744642354852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1) * A359158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132999.P6372577744642354852

namespace A132999

/-- `comp[A007691(n+1)*A359158(n+1)]` -/
def P6372577744642354852.Spec : Prop :=
  ∀ n, (P6372577744642354852.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P6510442945274882301

`lt[A325636(n+1), A002808(n+1)]+1`
-/

namespace A132999.P6510442945274882301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A132999.P6510442945274882301

namespace A132999

/-- `lt[A325636(n+1), A002808(n+1)]+1` -/
def P6510442945274882301.Spec : Prop :=
  ∀ n, (P6510442945274882301.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P4471728000744942230

`eq[A060862(n+1)², A060862(n+1)]+1`
-/

namespace A132999.P4471728000744942230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A132999.P4471728000744942230

namespace A132999

/-- `eq[A060862(n+1)², A060862(n+1)]+1` -/
def P4471728000744942230.Spec : Prop :=
  ∀ n, (P4471728000744942230.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P14975568041357237168

`lt[A045775(A325817(n+1))-2*n, 3]+1`
-/

namespace A132999.P14975568041357237168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045775 (A325817 (n + 1)).toNat - (2 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A132999.P14975568041357237168

namespace A132999

/-- `lt[A045775(A325817(n+1))-2*n, 3]+1` -/
def P14975568041357237168.Spec : Prop :=
  ∀ n, (P14975568041357237168.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P13878938569829148160

`∪[lt[A000203(n+1), 2*(n+1)]+1, A005101(n+1)]`
-/

namespace A132999.P13878938569829148160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A132999.P13878938569829148160

namespace A132999

/-- `∪[lt[A000203(n+1), 2*(n+1)]+1, A005101(n+1)]` -/
def P13878938569829148160.Spec : Prop :=
  ∀ n, (P13878938569829148160.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P16183007976821386296

`lt[A001222(n+1), A099377(n+1)]+1`
-/

namespace A132999.P16183007976821386296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A132999.P16183007976821386296

namespace A132999

/-- `lt[A001222(n+1), A099377(n+1)]+1` -/
def P16183007976821386296.Spec : Prop :=
  ∀ n, (P16183007976821386296.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P964656600640016290

`lt[A230287(n+1), A324213(n+1)]+1`
-/

namespace A132999.P964656600640016290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A132999.P964656600640016290

namespace A132999

/-- `lt[A230287(n+1), A324213(n+1)]+1` -/
def P964656600640016290.Spec : Prop :=
  ∀ n, (P964656600640016290.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P16962612388893657661

`lt[0, (2*n-∑{d}[n, #])²]`
-/

namespace A132999.P16962612388893657661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132999.P16962612388893657661

namespace A132999

/-- `lt[0, (2*n-∑{d}[n, #])²]` -/
def P16962612388893657661.Spec : Prop :=
  ∀ n, (P16962612388893657661.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P4749795939539078384

`floor(log(A280230(n+1)))`
-/

namespace A132999.P4749795939539078384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A280230 (n + 1) : ℝ)⌋

end

end A132999.P4749795939539078384

namespace A132999

/-- `floor(log(A280230(n+1)))` -/
def P4749795939539078384.Spec : Prop :=
  ∀ n, P4749795939539078384.a n = A132999 (n + 1)

end A132999

/-! ## A132999.P142275355467239327

`lt[A131186(A131127(n)), A131134(n+1)]`
-/

namespace A132999.P142275355467239327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131186 (A131127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A132999.P142275355467239327

namespace A132999

/-- `lt[A131186(A131127(n)), A131134(n+1)]` -/
def P142275355467239327.Spec : Prop :=
  ∀ n, (P142275355467239327.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P1562053215795387634

`lt[A285374(n+1), A285321(n+1)²]`
-/

namespace A132999.P1562053215795387634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285321 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A132999.P1562053215795387634

namespace A132999

/-- `lt[A285374(n+1), A285321(n+1)²]` -/
def P1562053215795387634.Spec : Prop :=
  ∀ n, (P1562053215795387634.a n : ℤ) = A132999 (n + 1)

end A132999

/-! ## A132999.P4889755545481572802

`∪[2*n+1, A133012(n+1)]`
-/

namespace A132999.P4889755545481572802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132999.P4889755545481572802

namespace A132999

/-- `∪[2*n+1, A133012(n+1)]` -/
def P4889755545481572802.Spec : Prop :=
  ∀ n, (P4889755545481572802.a n : ℤ) = A132999 (n + 1)

end A132999

