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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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

/-!
# A129400: Number of walks of length n on one 60-degree wedge of the equilateral triangular lattice. The walk can go along the walls of the wedge, but cannot cross the walls.

The programs for A129400, the canonical program `A129400.P6392400552746080250` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129400 has offset 0).

The definition of A129400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129400.P6392400552746080250

`2^n*A001006(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129400

/-- `2^n*A001006(n)` -/
def P6392400552746080250.Spec : Prop :=
  ∀ n, P6392400552746080250.a n = A129400 n

theorem P6392400552746080250.correct : P6392400552746080250.Spec := by
  intro n
  simp only [A129400]

end A129400

/-! ## A129400.P9338931892246569844

`A201641(∑[n])`
-/

namespace A129400.P9338931892246569844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201641 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129400.P9338931892246569844

namespace A129400

/-- `A201641(∑[n])` -/
def P9338931892246569844.Spec : Prop :=
  ∀ n, P9338931892246569844.a n = A129400 n

end A129400

/-! ## A129400.P7640985985785125181

`record[A201641(n)]`
-/

namespace A129400.P7640985985785125181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129400.P7640985985785125181

namespace A129400

/-- `record[A201641(n)]` -/
def P7640985985785125181.Spec : Prop :=
  ∀ n, P7640985985785125181.a n = A129400 n

end A129400

/-! ## A129400.P8048601807615020096

`2^n*A064189(∑[n])`
-/

namespace A129400.P8048601807615020096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A064189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129400.P8048601807615020096

namespace A129400

/-- `2^n*A064189(∑[n])` -/
def P8048601807615020096.Spec : Prop :=
  ∀ n, P8048601807615020096.a n = A129400 n

end A129400

/-! ## A129400.P5123302203008606584

`2^n*Δ[A097332(n)]`
-/

namespace A129400.P5123302203008606584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A129400.P5123302203008606584

namespace A129400

/-- `2^n*Δ[A097332(n)]` -/
def P5123302203008606584.Spec : Prop :=
  ∀ n, P5123302203008606584.a n = A129400 n

end A129400

/-! ## A129400.P7545871253996686463

`2^n*A086246(n+2)`
-/

namespace A129400.P7545871253996686463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A086246 (n + 2)

end

end A129400.P7545871253996686463

namespace A129400

/-- `2^n*A086246(n+2)` -/
def P7545871253996686463.Spec : Prop :=
  ∀ n, P7545871253996686463.a n = A129400 n

end A129400

/-! ## A129400.P3341927655100889933

`2^n*A168049(n+2)`
-/

namespace A129400.P3341927655100889933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A168049 (n + 2)

end

end A129400.P3341927655100889933

namespace A129400

/-- `2^n*A168049(n+2)` -/
def P3341927655100889933.Spec : Prop :=
  ∀ n, P3341927655100889933.a n = A129400 n

end A129400

/-! ## A129400.P17677220934619502013

`abs(A166587(n+1))*2^n`
-/

namespace A129400.P17677220934619502013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)| * (2 ^ n : ℤ)

end

end A129400.P17677220934619502013

namespace A129400

/-- `abs(A166587(n+1))*2^n` -/
def P17677220934619502013.Spec : Prop :=
  ∀ n, P17677220934619502013.a n = A129400 n

end A129400

/-! ## A129400.P12089088581082969327

`2^n*∏[abs(ratio[A166587(n)])]`
-/

namespace A129400.P12089088581082969327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A129400.P12089088581082969327

namespace A129400

/-- `2^n*∏[abs(ratio[A166587(n)])]` -/
def P12089088581082969327.Spec : Prop :=
  ∀ n, P12089088581082969327.a n = (A129400 n : ℚ)

end A129400

/-! ## A129400.P7708465435712593743

`2^(n-1)*A007971(n+2)`
-/

namespace A129400.P7708465435712593743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A007971 (n + 2) : ℚ)

end

end A129400.P7708465435712593743

namespace A129400

/-- `2^(n-1)*A007971(n+2)` -/
def P7708465435712593743.Spec : Prop :=
  ∀ n, P7708465435712593743.a n = (A129400 n : ℚ)

end A129400

/-! ## A129400.P277455715451583147

`2^(n-1)*A126068(n+2)`
-/

namespace A129400.P277455715451583147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A126068 (n + 2) : ℚ)

end

end A129400.P277455715451583147

namespace A129400

/-- `2^(n-1)*A126068(n+2)` -/
def P277455715451583147.Spec : Prop :=
  ∀ n, P277455715451583147.a n = (A129400 n : ℚ)

end A129400

/-! ## A129400.P11675800207959583545

`2^(n-1)*A168055(n+2)`
-/

namespace A129400.P11675800207959583545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A168055 (n + 2) : ℚ)

end

end A129400.P11675800207959583545

namespace A129400

/-- `2^(n-1)*A168055(n+2)` -/
def P11675800207959583545.Spec : Prop :=
  ∀ n, P11675800207959583545.a n = (A129400 n : ℚ)

end A129400

/-! ## A129400.P250023509473879486

`A000079(n)*A064645(∑[n])`
-/

namespace A129400.P250023509473879486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A064645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129400.P250023509473879486

namespace A129400

/-- `A000079(n)*A064645(∑[n])` -/
def P250023509473879486.Spec : Prop :=
  ∀ n, P250023509473879486.a n = A129400 n

end A129400

/-! ## A129400.P8745446497580955150

`Δ[A097332(n)]*A000079(n)`
-/

namespace A129400.P8745446497580955150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A129400.P8745446497580955150

namespace A129400

/-- `Δ[A097332(n)]*A000079(n)` -/
def P8745446497580955150.Spec : Prop :=
  ∀ n, P8745446497580955150.a n = A129400 n

end A129400

/-! ## A129400.P6229601751491209216

`record[A168055(n)]*A011782(n)`
-/

namespace A129400.P6229601751491209216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A011782 n

end

end A129400.P6229601751491209216

namespace A129400

/-- `record[A168055(n)]*A011782(n)` -/
def P6229601751491209216.Spec : Prop :=
  ∀ n, P6229601751491209216.a n = A129400 n

end A129400

/-! ## A129400.P14711776167080268651

`A001006(n)*A011782(n+1)`
-/

namespace A129400.P14711776167080268651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A011782 (n + 1)

end

end A129400.P14711776167080268651

namespace A129400

/-- `A001006(n)*A011782(n+1)` -/
def P14711776167080268651.Spec : Prop :=
  ∀ n, P14711776167080268651.a n = A129400 n

end A129400

/-! ## A129400.P9120734116719040796

`A001006(n)*A131577(n+1)`
-/

namespace A129400.P9120734116719040796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A131577 (n + 1)

end

end A129400.P9120734116719040796

namespace A129400

/-- `A001006(n)*A131577(n+1)` -/
def P9120734116719040796.Spec : Prop :=
  ∀ n, P9120734116719040796.a n = A129400 n

end A129400

/-! ## A129400.P4322908431548899550

`A001006(n)*A034008(n+2)`
-/

namespace A129400.P4322908431548899550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A034008 (n + 2)

end

end A129400.P4322908431548899550

namespace A129400

/-- `A001006(n)*A034008(n+2)` -/
def P4322908431548899550.Spec : Prop :=
  ∀ n, P4322908431548899550.a n = A129400 n

end A129400

/-! ## A129400.P880452017149670950

`A001006(n)*A016116(2*n)`
-/

namespace A129400.P880452017149670950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A016116 (2 * n)

end

end A129400.P880452017149670950

namespace A129400

/-- `A001006(n)*A016116(2*n)` -/
def P880452017149670950.Spec : Prop :=
  ∀ n, P880452017149670950.a n = A129400 n

end A129400

/-! ## A129400.P2827992274721492850

`A001006(n)*A060546(2*n)`
-/

namespace A129400.P2827992274721492850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A060546 (2 * n)

end

end A129400.P2827992274721492850

namespace A129400

/-- `A001006(n)*A060546(2*n)` -/
def P2827992274721492850.Spec : Prop :=
  ∀ n, P2827992274721492850.a n = A129400 n

end A129400

/-!
# A129401: a(n) is the result of replacing with its successor prime each prime in the factorization of the n-th composite number.

The programs for A129401, the canonical program `A129401.P2039178088440736280` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129401 has offset 1).

The definition of A129401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129401.P2039178088440736280

`A336853(A002808(n+1))+A002808(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A129401

/-- `A336853(A002808(n+1))+A002808(n+1)` -/
def P2039178088440736280.Spec : Prop :=
  ∀ n, P2039178088440736280.a n = A129401 (n + 1)

theorem P2039178088440736280.correct : P2039178088440736280.Spec := by
  intro n
  simp only [A129401, Nat.add_sub_cancel]

end A129401

/-! ## A129401.P728430509734618120

`A243501(A002808(n+1))-1`
-/

namespace A129401.P728430509734618120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (A002808 (n + 1)).toNat - 1

end

end A129401.P728430509734618120

namespace A129401

/-- `A243501(A002808(n+1))-1` -/
def P728430509734618120.Spec : Prop :=
  ∀ n, P728430509734618120.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P6857549019797243656

`A243501(A018252(n+2))-1`
-/

namespace A129401.P6857549019797243656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (A018252 (n + 2)).toNat - 1

end

end A129401.P6857549019797243656

namespace A129401

/-- `A243501(A018252(n+2))-1` -/
def P6857549019797243656.Spec : Prop :=
  ∀ n, P6857549019797243656.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P14794656026694963863

`A243501(A141468(n+3))-1`
-/

namespace A129401.P14794656026694963863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (A141468 (n + 3)).toNat - 1

end

end A129401.P14794656026694963863

namespace A129401

/-- `A243501(A141468(n+3))-1` -/
def P14794656026694963863.Spec : Prop :=
  ∀ n, P14794656026694963863.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P5869157162914365547

`A243501(lt[0, A082023(n)])-1`
-/

namespace A129401.P5869157162914365547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A129401.P5869157162914365547

namespace A129401

/-- `A243501(lt[0, A082023(n)])-1` -/
def P5869157162914365547.Spec : Prop :=
  ∀ n, P5869157162914365547.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P686097769158565144

`A243501(lt[1, A107286(n)])-1`
-/

namespace A129401.P686097769158565144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A129401.P686097769158565144

namespace A129401

/-- `A243501(lt[1, A107286(n)])-1` -/
def P686097769158565144.Spec : Prop :=
  ∀ n, P686097769158565144.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P16944447348415004115

`A243501(lt[1, A175126(n)])-1`
-/

namespace A129401.P16944447348415004115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A129401.P16944447348415004115

namespace A129401

/-- `A243501(lt[1, A175126(n)])-1` -/
def P16944447348415004115.Spec : Prop :=
  ∀ n, P16944447348415004115.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P9227422918869006657

`A003961(Δ[A053767(n)])`
-/

namespace A129401.P9227422918869006657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (n + 1) - f1 n).toNat

end

end A129401.P9227422918869006657

namespace A129401

/-- `A003961(Δ[A053767(n)])` -/
def P9227422918869006657.Spec : Prop :=
  ∀ n, P9227422918869006657.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P15322032131307177429

`A003961(A002808(n+1))`
-/

namespace A129401.P15322032131307177429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A002808 (n + 1)).toNat

end

end A129401.P15322032131307177429

namespace A129401

/-- `A003961(A002808(n+1))` -/
def P15322032131307177429.Spec : Prop :=
  ∀ n, P15322032131307177429.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P9426164771064714288

`A003961(A018252(n+2))`
-/

namespace A129401.P9426164771064714288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018252 (n + 2)).toNat

end

end A129401.P9426164771064714288

namespace A129401

/-- `A003961(A018252(n+2))` -/
def P9426164771064714288.Spec : Prop :=
  ∀ n, P9426164771064714288.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P8689534063541475160

`A003961(A065090(n+3))`
-/

namespace A129401.P8689534063541475160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A065090 (n + 3)).toNat

end

end A129401.P8689534063541475160

namespace A129401

/-- `A003961(A065090(n+3))` -/
def P8689534063541475160.Spec : Prop :=
  ∀ n, P8689534063541475160.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P1448225588188870437

`A003961(A141468(n+3))`
-/

namespace A129401.P1448225588188870437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A141468 (n + 3)).toNat

end

end A129401.P1448225588188870437

namespace A129401

/-- `A003961(A141468(n+3))` -/
def P1448225588188870437.Spec : Prop :=
  ∀ n, P1448225588188870437.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P17675458280745803398

`A003961(lt[1, A003415(n)])`
-/

namespace A129401.P17675458280745803398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129401.P17675458280745803398

namespace A129401

/-- `A003961(lt[1, A003415(n)])` -/
def P17675458280745803398.Spec : Prop :=
  ∀ n, P17675458280745803398.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P5074820578273466117

`A003961(lt[1, A032741(n)])`
-/

namespace A129401.P5074820578273466117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129401.P5074820578273466117

namespace A129401

/-- `A003961(lt[1, A032741(n)])` -/
def P5074820578273466117.Spec : Prop :=
  ∀ n, P5074820578273466117.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P14950106730399440172

`A003961(lt[1, A078898(n)])`
-/

namespace A129401.P14950106730399440172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129401.P14950106730399440172

namespace A129401

/-- `A003961(lt[1, A078898(n)])` -/
def P14950106730399440172.Spec : Prop :=
  ∀ n, P14950106730399440172.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P4663028600880558479

`A003961(A072668(n+1)+1)`
-/

namespace A129401.P4663028600880558479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A072668 (n + 1) + 1).toNat

end

end A129401.P4663028600880558479

namespace A129401

/-- `A003961(A072668(n+1)+1)` -/
def P4663028600880558479.Spec : Prop :=
  ∀ n, P4663028600880558479.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P4010010587522934224

`A003961(A060462(n+2)+1)`
-/

namespace A129401.P4010010587522934224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A060462 (n + 2) + 1).toNat

end

end A129401.P4010010587522934224

namespace A129401

/-- `A003961(A060462(n+2)+1)` -/
def P4010010587522934224.Spec : Prop :=
  ∀ n, P4010010587522934224.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P15427318479403878348

`A003961(lt[1, A001065(n+1)]+1)`
-/

namespace A129401.P15427318479403878348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A129401.P15427318479403878348

namespace A129401

/-- `A003961(lt[1, A001065(n+1)]+1)` -/
def P15427318479403878348.Spec : Prop :=
  ∀ n, P15427318479403878348.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P10183092806311385947

`A003961(lt[2, A000005(n+1)]+1)`
-/

namespace A129401.P10183092806311385947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A129401.P10183092806311385947

namespace A129401

/-- `A003961(lt[2, A000005(n+1)]+1)` -/
def P10183092806311385947.Spec : Prop :=
  ∀ n, P10183092806311385947.a n = A129401 (n + 1)

end A129401

/-! ## A129401.P5224846310498281464

`A045965(A002808(2*n+1-n))`
-/

namespace A129401.P5224846310498281464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A002808 (2 * n + 1 - n)).toNat

end

end A129401.P5224846310498281464

namespace A129401

/-- `A045965(A002808(2*n+1-n))` -/
def P5224846310498281464.Spec : Prop :=
  ∀ n, P5224846310498281464.a n = A129401 (n + 1)

end A129401

/-!
# A129402: Expansion of phi(x^3) * psi(x^4) + x * phi(x) * psi(x^12) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A129402, there is no canonical definition to state claims against.
-/

/-! ## A129402.P6825417197658849833

`(-1)^n*A190615(n)`
-/

namespace A129402.P6825417197658849833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A190615 n

end

end A129402.P6825417197658849833

/-! ## A129402.P17637043452296471958

`(-1)^floor((n+1)/2)*A128580(n)`
-/

namespace A129402.P17637043452296471958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (A128580 n : ℚ)

end

end A129402.P17637043452296471958

/-! ## A129402.P17023160629255680060

`A000377(2*n+1)`
-/

namespace A129402.P17023160629255680060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (2 * n + 1)

end

end A129402.P17023160629255680060

/-! ## A129402.P18328852909412866834

`-A261122(4*n+2)`
-/

namespace A129402.P18328852909412866834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A261122 (4 * n + 2)

end

end A129402.P18328852909412866834

/-! ## A129402.P9611898280382307626

`abs(A128580(n))`
-/

namespace A129402.P9611898280382307626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128580 n|

end

end A129402.P9611898280382307626

/-! ## A129402.P3356068836107731138

`abs(A134177(n))`
-/

namespace A129402.P3356068836107731138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134177 n|

end

end A129402.P3356068836107731138

/-! ## A129402.P5800343503936399845

`abs(A190615(n))`
-/

namespace A129402.P5800343503936399845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190615 n|

end

end A129402.P5800343503936399845

/-! ## A129402.P278399880571992330

`A000196(A134177(n)²)`
-/

namespace A129402.P278399880571992330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A134177 n ^ 2).toNat

end

end A129402.P278399880571992330

/-! ## A129402.P6562317064194319066

`A053615(A128580(n)²)`
-/

namespace A129402.P6562317064194319066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A128580 n ^ 2).toNat

end

end A129402.P6562317064194319066

/-! ## A129402.P2353167047154630849

`A000196(A190615(n)²)`
-/

namespace A129402.P2353167047154630849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A190615 n ^ 2).toNat

end

end A129402.P2353167047154630849

/-! ## A129402.P6568109782023026436

`A057077(n)*A134177(n)`
-/

namespace A129402.P6568109782023026436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A134177 n

end

end A129402.P6568109782023026436

/-! ## A129402.P16740009556262458366

`gcd(A000038(n), A128580(n))`
-/

namespace A129402.P16740009556262458366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A128580 n)

end

end A129402.P16740009556262458366

/-! ## A129402.P12645408367315831861

`gcd(A130706(n), A134177(n))`
-/

namespace A129402.P12645408367315831861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A134177 n)

end

end A129402.P12645408367315831861

/-! ## A129402.P6755016868955012709

`gcd(A130779(n), A190615(n))`
-/

namespace A129402.P6755016868955012709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130779 n) (A190615 n)

end

end A129402.P6755016868955012709

/-! ## A129402.P15440841592727014022

`lcm(A020985(n), A128580(n))`
-/

namespace A129402.P15440841592727014022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A128580 n)

end

end A129402.P15440841592727014022

/-! ## A129402.P9181716361925514083

`lcm(A029884(n), A134177(n))`
-/

namespace A129402.P9181716361925514083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029884 n) (A134177 n)

end

end A129402.P9181716361925514083

/-! ## A129402.P17287841204402336324

`lcm(A057077(n), A190615(n))`
-/

namespace A129402.P17287841204402336324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A190615 n)

end

end A129402.P17287841204402336324

/-! ## A129402.P6595046161135755993

`∑{d}[A128580(n), A000010(#)]`
-/

namespace A129402.P6595046161135755993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A129402.P6595046161135755993

/-! ## A129402.P9756218694117968771

`∑{d}[A134177(n), A000010(#)]`
-/

namespace A129402.P9756218694117968771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A129402.P9756218694117968771

/-! ## A129402.P11129166693232502994

`A261119(A071045(n))`
-/

namespace A129402.P11129166693232502994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261119 (A071045 n).toNat

end

end A129402.P11129166693232502994

/-!
# A129403: Minimal number of edges in e-free non-deterministic finite automata (NFA) for regular expression c_1?c_2?...c_n?.

The programs for A129403, there is no canonical definition to state claims against.
-/

/-! ## A129403.P2513745049466205810

`∑[∑[char[∪[n²+1, n²]]]]`
-/

namespace A129403.P2513745049466205810
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f4 j = x) ∨ ∃ j, f5 j = x) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129403.P2513745049466205810

/-! ## A129403.P10722112301238648149

`∑[∑[char[ceil((n+1)/2)²-n]]]`
-/

namespace A129403.P10722112301238648149
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉ ^ 2 - (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129403.P10722112301238648149

/-! ## A129403.P16564390452247716068

`∑[comp[a(n-2)+7]]-∑[n]` with `a(0)=4, a(1)=0, a(2)=2`
-/

namespace A129403.P16564390452247716068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 0, 2] fun n f2 =>
  f2 (n - 2) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A129403.P16564390452247716068

/-! ## A129403.P8563211478755208779

`floor(ratio[A385057(n)])`
-/

namespace A129403.P8563211478755208779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A129403.P8563211478755208779

/-! ## A129403.P3949334840734937359

`floor(∑[sqrt(A313362(n))])`
-/

namespace A129403.P3949334840734937359
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A313362 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A129403.P3949334840734937359

/-!
# A129405: Expansion of L(3, chi3) in base 2, where L(s, chi3) is the Dirichlet L-function for the non-principal character modulo 3.

The programs for A129405, there is no canonical definition to state claims against.
-/

/-! ## A129405.P2336533438660589563

`A159638(xor(A103517(n), A130081(n+1)))`
-/

namespace A129405.P2336533438660589563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159638 (Int.xor (A103517 n) (A130081 (n + 1))).toNat

end

end A129405.P2336533438660589563

/-! ## A129405.P7549525708129893068

`A010054(gcd(A102470(2*n+5), A102495(n+1)))`
-/

namespace A129405.P7549525708129893068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.gcd (A102470 (2 * n + 5)) (A102495 (n + 1)))

end

end A129405.P7549525708129893068

/-! ## A129405.P6779005637840451823

`A030190(or(n, A352886(n+4)))`
-/

namespace A129405.P6779005637840451823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (Int.lor (n : ℤ) (A352886 (n + 4))).toNat

end

end A129405.P6779005637840451823

/-! ## A129405.P6868793218446020835

`A008966(or(A321782(n+1), A322170(n+1)))`
-/

namespace A129405.P6868793218446020835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (Int.lor (A321782 (n + 1)) (A322170 (n + 1))).toNat

end

end A129405.P6868793218446020835

/-! ## A129405.P6142675428430494806

`A008683(or(A321782(n+1), A322170(n+1)))²`
-/

namespace A129405.P6142675428430494806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (A321782 (n + 1)) (A322170 (n + 1))).toNat ^ 2

end

end A129405.P6142675428430494806

/-!
# A129406: Expansion of L(3, chi3) in base 3, where L(s, chi3) is the Dirichlet L-function for the non-principal character modulo 3.

The programs for A129406, there is no canonical definition to state claims against.
-/

/-! ## A129406.P10930500505250982522

`A156129(A155100(n))%A068985(n)`
-/

namespace A129406.P10930500505250982522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156129 (A155100 n).toNat) (A068985 n)

end

end A129406.P10930500505250982522

/-! ## A129406.P11428059516773839164

`A190427(or(A063696(n), A200838(n+1)))`
-/

namespace A129406.P11428059516773839164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (Int.lor (A063696 n) (A200838 (n + 1))).toNat

end

end A129406.P11428059516773839164

/-! ## A129406.P6078496484614222521

`A004594(A299286(n)-A000120(n))`
-/

namespace A129406.P6078496484614222521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004594 (A299286 n - A000120 n).toNat

end

end A129406.P6078496484614222521

/-! ## A129406.P11499441702493929336

`A127919(A033898(n+1))%3`
-/

namespace A129406.P11499441702493929336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127919 (A033898 (n + 1)).toNat) 3

end

end A129406.P11499441702493929336

/-! ## A129406.P3344833171405449489

`A204423(A242093(n)+A204378(n+1))`
-/

namespace A129406.P3344833171405449489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204423 (A242093 n + A204378 (n + 1)).toNat

end

end A129406.P3344833171405449489

/-!
# A129407: Balanced ternary expansion of L(3, chi3), where L(s, chi3) is the Dirichlet L-function for the non-principal character modulo 3.

The programs for A129407, there is no canonical definition to state claims against.
-/

/-! ## A129407.P1220060699524328453

`A008683(A166087(3*n+4))^A000041(n+1)`
-/

namespace A129407.P1220060699524328453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A166087 (3 * n + 4)).toNat : ℚ) ^ (A000041 (n + 1) : ℤ)

end

end A129407.P1220060699524328453

/-! ## A129407.P16587165156388618393

`A008683(A166087(3*n+4))^A014963(n+1)`
-/

namespace A129407.P16587165156388618393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A166087 (3 * n + 4)).toNat : ℚ) ^ (A014963 (n + 1) : ℤ)

end

end A129407.P16587165156388618393

/-! ## A129407.P12914542476207015745

`A008683(A166087(3*n+4))^A000045(n+2)`
-/

namespace A129407.P12914542476207015745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A166087 (3 * n + 4)).toNat : ℚ) ^ (A000045 (n + 2) : ℤ)

end

end A129407.P12914542476207015745

/-! ## A129407.P12020543897967376677

`A008683(A166087(3*n+4))^A007318(n+4)`
-/

namespace A129407.P12020543897967376677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A166087 (3 * n + 4)).toNat : ℚ) ^ (A007318 (n + 4) : ℤ)

end

end A129407.P12020543897967376677

/-! ## A129407.P12215870876812424410

`A008683(A166087(3*n+4))^A216645(2*n+1)`
-/

namespace A129407.P12215870876812424410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A166087 (3 * n + 4)).toNat : ℚ) ^ (A216645 (2 * n + 1) : ℤ)

end

end A129407.P12215870876812424410

/-!
# A129409: Engel expansion of L(3, chi3), where L(s, chi3) is the Dirichlet L-function for the non-principal character modulo 3.

The programs for A129409, there is no canonical definition to state claims against.
-/

/-! ## A129409.P17335995916806292774

`ratio[A129661(n)]%A306522(n+1)`
-/

namespace A129409.P17335995916806292774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))) (A306522 (n + 1))

end

end A129409.P17335995916806292774

/-! ## A129409.P11375244528099682166

`ratio[A129661(n)^A216645(2*n+1)]`
-/

namespace A129409.P11375244528099682166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129661 n : ℚ) ^ (A216645 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) / f1 n

end

end A129409.P11375244528099682166

/-!
# A129412: Numbers k such that mean of 7 consecutive squares starting with k^2 is prime.

The programs for A129412, there is no canonical definition to state claims against.
-/

/-! ## A129412.P11391347983517265344

`ceil(sqrt(A098062(n+1)))-4`
-/

namespace A129412.P11391347983517265344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A098062 (n + 1) : ℝ)⌉ - 4

end

end A129412.P11391347983517265344

/-! ## A129412.P1190563472348425252

`A007591(n+2)-3`
-/

namespace A129412.P1190563472348425252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 2) - 3

end

end A129412.P1190563472348425252

/-! ## A129412.P9047533330670650426

`∑[Δ[A007591(n+1)]%A009860(n)]`
-/

namespace A129412.P9047533330670650426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A009860 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129412.P9047533330670650426

/-! ## A129412.P16286721684252146553

`∑[A007591(n+2)%A007591(n+1)]`
-/

namespace A129412.P16286721684252146553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007591 (n + 2)) (A007591 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129412.P16286721684252146553

/-! ## A129412.P899336607274517700

`A089747(n+3)-4`
-/

namespace A129412.P899336607274517700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089747 (n + 3) - 4

end

end A129412.P899336607274517700

/-! ## A129412.P18308309611020691281

`eq[2, A069003(n+3)]`
-/

namespace A129412.P18308309611020691281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129412.P18308309611020691281

/-! ## A129412.P5183460605378782588

`A023445(A007591(n+2))`
-/

namespace A129412.P5183460605378782588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A007591 (n + 2)).toNat

end

end A129412.P5183460605378782588

/-! ## A129412.P5684837217882354246

`record[A000265(n+1)-A124408(A069003(n+1))]`
-/

namespace A129412.P5684837217882354246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) - A124408 (A069003 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129412.P5684837217882354246

/-! ## A129412.P16037719148973745957

`eq[1, ∑{e}[(n+3)²+4, #]]`
-/

namespace A129412.P16037719148973745957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129412.P16037719148973745957

/-! ## A129412.P9537433895736465408

`lt[∑{e}[(n+3)²+4, #], 2]`
-/

namespace A129412.P9537433895736465408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A129412.P9537433895736465408

/-!
# A129414: Records in A127913.

The programs for A129414, there is no canonical definition to state claims against.
-/

/-! ## A129414.P14953401378387398034

`record[A127913(n+1)]`
-/

namespace A129414.P14953401378387398034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129414.P14953401378387398034

/-! ## A129414.P8457628954105695764

`A127913(A129415(n+1))`
-/

namespace A129414.P8457628954105695764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127913 (A129415 (n + 1)).toNat

end

end A129414.P8457628954105695764

/-!
# A129416: Number of isomorphism classes of 3-regular loopless multigraphs of order 2n.

The programs for A129416, there is no canonical definition to state claims against.
-/

/-! ## A129416.P16248751746936196259

`record[A333330(abs(A046691(n)))]`
-/

namespace A129416.P16248751746936196259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129416.P16248751746936196259

/-! ## A129416.P1097230794529797870

`record[A333330(A046691(n+1))]`
-/

namespace A129416.P1097230794529797870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (A046691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129416.P1097230794529797870

/-! ## A129416.P9543576025043732212

`record[A333330(A027379(n)-1)]`
-/

namespace A129416.P9543576025043732212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129416.P9543576025043732212

/-! ## A129416.P3815432722445081347

`record[A333330(A055999(n)+2)]`
-/

namespace A129416.P3815432722445081347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (A055999 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129416.P3815432722445081347

/-! ## A129416.P16647675609520611079

`record[A333330(eq[3, A025581(n)])]`
-/

namespace A129416.P16647675609520611079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129416.P16647675609520611079

/-!
# A129417: Number of isomorphism classes of connected 4-regular loopless multigraphs of order n.

The programs for A129417, there is no canonical definition to state claims against.
-/

/-! ## A129417.P1909506459303974507

`A328682(A052905(n+2))`
-/

namespace A129417.P1909506459303974507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A052905 (n + 2)).toNat

end

end A129417.P1909506459303974507

/-! ## A129417.P6009023063648161559

`A328682(eq[4, A025581(n)])`
-/

namespace A129417.P6009023063648161559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129417.P6009023063648161559

/-! ## A129417.P5954984692180911111

`A328682(A055998(n+3)-2)`
-/

namespace A129417.P5954984692180911111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A055998 (n + 3) - 2).toNat

end

end A129417.P5954984692180911111

/-! ## A129417.P4611644830691845265

`A328682(A000217(n+5)-5)`
-/

namespace A129417.P4611644830691845265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A000217 (n + 5) - 5).toNat

end

end A129417.P4611644830691845265

/-! ## A129417.P18031735477821743726

`A328682(A000124(n+5)-6)`
-/

namespace A129417.P18031735477821743726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A000124 (n + 5) - 6).toNat

end

end A129417.P18031735477821743726

/-!
# A129418: Number of isomorphism classes of 4-regular loopless multigraphs of order n.

The programs for A129418, there is no canonical definition to state claims against.
-/

/-! ## A129418.P13732443372165650206

`A333330(A052905(n+2))`
-/

namespace A129418.P13732443372165650206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (A052905 (n + 2)).toNat

end

end A129418.P13732443372165650206

/-! ## A129418.P15373523379927770546

`A333330(eq[5, A193739(n)])`
-/

namespace A129418.P15373523379927770546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129418.P15373523379927770546

/-! ## A129418.P3742601344900344494

`A333330(A000096(n+4)-4)`
-/

namespace A129418.P3742601344900344494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (A000096 (n + 4) - 4).toNat

end

end A129418.P3742601344900344494

/-! ## A129418.P3421425751838393685

`A333330(A000217(n+5)-5)`
-/

namespace A129418.P3421425751838393685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (A000217 (n + 5) - 5).toNat

end

end A129418.P3421425751838393685

/-! ## A129418.P2252006436794163913

`A333330(A167499(n+4)-10)`
-/

namespace A129418.P2252006436794163913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (A167499 (n + 4) - 10).toNat

end

end A129418.P2252006436794163913

/-!
# A129419: Number of isomorphism classes of connected 5-regular loopless multigraphs of order 2n.

The programs for A129419, there is no canonical definition to state claims against.
-/

/-! ## A129419.P6542731063393129340

`record[A328682(A055999(n))]`
-/

namespace A129419.P6542731063393129340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129419.P6542731063393129340

/-! ## A129419.P14931315536596828759

`record[A328682(∑[A266595(n)])]`
-/

namespace A129419.P14931315536596828759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266595 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129419.P14931315536596828759

/-! ## A129419.P17341914415468553683

`record[A328682(A027379(n)+n)]`
-/

namespace A129419.P17341914415468553683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129419.P17341914415468553683

/-! ## A129419.P16142792772787011103

`record[A328682(abs(2-A046691(n)))]`
-/

namespace A129419.P16142792772787011103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129419.P16142792772787011103

/-! ## A129419.P15402339221557734790

`record[A328682(Δ[A023551(n+1)])]`
-/

namespace A129419.P15402339221557734790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129419.P15402339221557734790

/-!
# A129420: Number of isomorphism classes of 5-regular loopless multigraphs of order 2n.

The programs for A129420, there is no canonical definition to state claims against.
-/

/-! ## A129420.P7033856184320180280

`record[A333330(A055999(n))]`
-/

namespace A129420.P7033856184320180280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129420.P7033856184320180280

/-! ## A129420.P1493355885179578340

`record[A333330(∑[A266595(n)])]`
-/

namespace A129420.P1493355885179578340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266595 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129420.P1493355885179578340

/-! ## A129420.P13082469224688415929

`record[A333330(A027379(n)+n)]`
-/

namespace A129420.P13082469224688415929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129420.P13082469224688415929

/-! ## A129420.P4074518250711820684

`record[A333330(abs(2-A046691(n)))]`
-/

namespace A129420.P4074518250711820684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129420.P4074518250711820684

/-! ## A129420.P6443095394438547432

`record[A333330(Δ[A023551(n+1)])]`
-/

namespace A129420.P6443095394438547432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129420.P6443095394438547432

/-!
# A129421: Number of isomorphism classes of connected 6-regular loopless multigraphs of order n.

The programs for A129421, there is no canonical definition to state claims against.
-/

/-! ## A129421.P6177560703963178329

`A328682(eq[5, A219347(n)])`
-/

namespace A129421.P6177560703963178329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129421.P6177560703963178329

/-! ## A129421.P1690106033289526706

`A328682(eq[7, A193592(n)])`
-/

namespace A129421.P1690106033289526706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129421.P1690106033289526706

/-! ## A129421.P8287632206644992893

`A328682(A152950(n+9)-10)`
-/

namespace A129421.P8287632206644992893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A152950 (n + 9) - 10).toNat

end

end A129421.P8287632206644992893

/-! ## A129421.P17726352922421130442

`A328682(eq[12, A185782(n+1)])`
-/

namespace A129421.P17726352922421130442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129421.P17726352922421130442

/-! ## A129421.P10339973082292572898

`A328682(eq[64, A057728(n+1)])`
-/

namespace A129421.P10339973082292572898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129421.P10339973082292572898

/-!
# A129422: Number of isomorphism classes of 6-regular loopless multigraphs of order n.

The programs for A129422, there is no canonical definition to state claims against.
-/

/-! ## A129422.P11353304006363860415

`A333330(eq[5, A219347(n)])`
-/

namespace A129422.P11353304006363860415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129422.P11353304006363860415

/-! ## A129422.P713624320714559994

`A333330(eq[7, A193592(n)])`
-/

namespace A129422.P713624320714559994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129422.P713624320714559994

/-! ## A129422.P12914859369884382593

`A333330(A055998(n+6)-4)`
-/

namespace A129422.P12914859369884382593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (A055998 (n + 6) - 4).toNat

end

end A129422.P12914859369884382593

/-! ## A129422.P12179262613479969964

`A333330(eq[7, A025581(n)]+1)`
-/

namespace A129422.P12179262613479969964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A129422.P12179262613479969964

/-! ## A129422.P18420820884523499207

`A333330(eq[12, A185782(n+1)])`
-/

namespace A129422.P18420820884523499207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129422.P18420820884523499207

/-!
# A129423: Number of isomorphism classes of connected 7-regular loopless multigraphs of order 2n.

The programs for A129423, there is no canonical definition to state claims against.
-/

/-! ## A129423.P4046269773064999910

`record[A328682(A155212(n))]`
-/

namespace A129423.P4046269773064999910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129423.P4046269773064999910

/-! ## A129423.P6660590565391886465

`record[A328682(eq[7, A025581(n)])]`
-/

namespace A129423.P6660590565391886465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129423.P6660590565391886465

/-! ## A129423.P16152134505581766973

`record[A320841(n)*A328682(n)]`
-/

namespace A129423.P16152134505581766973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 n * A328682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129423.P16152134505581766973

/-!
# A129424: Number of isomorphism classes of 7-regular loopless multigraphs of order 2n.

The programs for A129424, there is no canonical definition to state claims against.
-/

/-! ## A129424.P14789978649848580950

`record[A333330(A155212(n))]`
-/

namespace A129424.P14789978649848580950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129424.P14789978649848580950

/-! ## A129424.P9588339837985825240

`record[A333330(eq[7, A025581(n)])]`
-/

namespace A129424.P9588339837985825240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129424.P9588339837985825240

/-!
# A129425: Number of isomorphism classes of connected 8-regular loopless multigraphs of order n.

The programs for A129425, there is no canonical definition to state claims against.
-/

/-! ## A129425.P15405804356974217143

`A328682(eq[8, A219347(n)])`
-/

namespace A129425.P15405804356974217143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129425.P15405804356974217143

/-! ## A129425.P13614486957007985020

`A328682(eq[9, A193592(n)])`
-/

namespace A129425.P13614486957007985020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129425.P13614486957007985020

/-! ## A129425.P17864419090253159294

`A328682(A000124(n+10)-10)`
-/

namespace A129425.P17864419090253159294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A000124 (n + 10) - 10).toNat

end

end A129425.P17864419090253159294

/-! ## A129425.P13662952216294541629

`A328682(eq[9, A025581(n)]+1)`
-/

namespace A129425.P13662952216294541629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A129425.P13662952216294541629

/-! ## A129425.P1420089148533124220

`A328682(eq[16, A185782(n+1)])`
-/

namespace A129425.P1420089148533124220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129425.P1420089148533124220

/-!
# A129426: Number of isomorphism classes of 8-regular loopless multigraphs of order n.

The programs for A129426, there is no canonical definition to state claims against.
-/

/-! ## A129426.P9616435609595950288

`A333330(eq[8, A219347(n)])`
-/

namespace A129426.P9616435609595950288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129426.P9616435609595950288

/-! ## A129426.P17371710957611944097

`A333330(eq[9, A193592(n)])`
-/

namespace A129426.P17371710957611944097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129426.P17371710957611944097

/-! ## A129426.P10186933502275718011

`A333330(A000124(n+10)-10)`
-/

namespace A129426.P10186933502275718011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (A000124 (n + 10) - 10).toNat

end

end A129426.P10186933502275718011

/-! ## A129426.P273412607910298246

`A333330(eq[9, A025581(n)]+1)`
-/

namespace A129426.P273412607910298246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A129426.P273412607910298246

/-! ## A129426.P5067224805005630364

`A333330(eq[16, A185782(n+1)])`
-/

namespace A129426.P5067224805005630364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129426.P5067224805005630364

/-!
# A129427: Number of isomorphism classes of 3-regular multigraphs of order 2n, loops allowed.

The programs for A129427, there is no canonical definition to state claims against.
-/

/-! ## A129427.P14642214885932280980

`record[A167625(∑[A031285(n)])]`
-/

namespace A129427.P14642214885932280980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129427.P14642214885932280980

/-! ## A129427.P5098247456989155221

`record[A167625(A167499(n)-1)]`
-/

namespace A129427.P5098247456989155221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129427.P5098247456989155221

/-! ## A129427.P6958111475318265855

`A167625(A014105(n+1)+4)`
-/

namespace A129427.P6958111475318265855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A014105 (n + 1) + 4).toNat

end

end A129427.P6958111475318265855

/-! ## A129427.P6438798334921630095

`record[A167625(A167614(n+1)+1)]`
-/

namespace A129427.P6438798334921630095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A167614 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129427.P6438798334921630095

/-! ## A129427.P12520859489898612306

`A167625(A167614(2*n+1)+1)`
-/

namespace A129427.P12520859489898612306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A167614 (2 * n + 1) + 1).toNat

end

end A129427.P12520859489898612306

/-!
# A129428: Centered 47-gonal numbers.

The programs for A129428, the canonical program `A129428.P15635651372403521230` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129428 has offset 0).

The definition of A129428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129428.P15635651372403521230

`47*n*(n+1)/2+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129428

/-- `47*n*(n+1)/2+1` -/
def P15635651372403521230.Spec : Prop :=
  ∀ n, P15635651372403521230.a n = (A129428 n : ℚ)

end A129428

/-! ## A129428.P1006214129994151976

`∑[a(n-1)+47]` with `a(0)=1, a(1)=47`
-/

namespace A129428.P1006214129994151976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 47] fun n f1 =>
  f1 (n - 1) + 47

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129428.P1006214129994151976

namespace A129428

/-- `∑[a(n-1)+47]` -/
def P1006214129994151976.Spec : Prop :=
  ∀ n, (P1006214129994151976.a n : ℤ) = A129428 n

end A129428

/-! ## A129428.P17416498829076082966

`∑[or(47*n, A000007(n))]`
-/

namespace A129428.P17416498829076082966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (47 * n : ℤ) (A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129428.P17416498829076082966

namespace A129428

/-- `∑[or(47*n, A000007(n))]` -/
def P17416498829076082966.Spec : Prop :=
  ∀ n, P17416498829076082966.a n = A129428 n

end A129428

/-! ## A129428.P13274776518171014272

`∑[or(47*n, A036987(n))]`
-/

namespace A129428.P13274776518171014272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (47 * n : ℤ) (A036987 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129428.P13274776518171014272

namespace A129428

/-- `∑[or(47*n, A036987(n))]` -/
def P13274776518171014272.Spec : Prop :=
  ∀ n, P13274776518171014272.a n = A129428 n

end A129428

/-! ## A129428.P15066059805385981864

`∑[A250120(A008592(n))-n]`
-/

namespace A129428.P15066059805385981864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A008592 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129428.P15066059805385981864

namespace A129428

/-- `∑[A250120(A008592(n))-n]` -/
def P15066059805385981864.Spec : Prop :=
  ∀ n, P15066059805385981864.a n = A129428 n

end A129428

/-!
# A129429: Number of isomorphism classes of 4-regular multigraphs of order n, loops allowed.

The programs for A129429, there is no canonical definition to state claims against.
-/

/-! ## A129429.P11399854112925451921

`record[A167625(A167499(n))]`
-/

namespace A129429.P11399854112925451921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129429.P11399854112925451921

/-! ## A129429.P13684535861776934901

`A167625(A167499(n+3))`
-/

namespace A129429.P13684535861776934901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A167499 (n + 3)).toNat

end

end A129429.P13684535861776934901

/-! ## A129429.P14665854717688932077

`record[A167625(A000096(n)+6)]`
-/

namespace A129429.P14665854717688932077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A000096 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129429.P14665854717688932077

/-! ## A129429.P7437457674162519801

`A167625(A167614(n+3)+2)`
-/

namespace A129429.P7437457674162519801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A167614 (n + 3) + 2).toNat

end

end A129429.P7437457674162519801

/-! ## A129429.P2241940685549696307

`record[A167625(∑[A031285(n)]+1)]`
-/

namespace A129429.P2241940685549696307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129429.P2241940685549696307

/-!
# A129430: Number of isomorphism classes of connected 5-regular multigraphs of order 2n, loops allowed.

The programs for A129430, there is no canonical definition to state claims against.
-/

/-! ## A129430.P3673551510188883390

`A333397(A055999(2*n+5))`
-/

namespace A129430.P3673551510188883390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (A055999 (2 * n + 5)).toNat

end

end A129430.P3673551510188883390

/-! ## A129430.P17930989743514257727

`A333397(A014105(n+4)-6)`
-/

namespace A129430.P17930989743514257727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (A014105 (n + 4) - 6).toNat

end

end A129430.P17930989743514257727

/-!
# A129431: Number of isomorphism classes of 5-regular multigraphs of order 2n, loops allowed.

The programs for A129431, there is no canonical definition to state claims against.
-/

/-! ## A129431.P9970239708411737231

`A167625(A014105(n+3)+6)`
-/

namespace A129431.P9970239708411737231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A014105 (n + 3) + 6).toNat

end

end A129431.P9970239708411737231

/-! ## A129431.P8459049538272848333

`record[A167625(A000124(n+6)+5)]`
-/

namespace A129431.P8459049538272848333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A000124 (n + 6) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129431.P8459049538272848333

/-! ## A129431.P17450847239705277630

`A167625(A167614(2*n+5)+3)`
-/

namespace A129431.P17450847239705277630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A167614 (2 * n + 5) + 3).toNat

end

end A129431.P17450847239705277630

/-! ## A129431.P8181011647127303672

`A167625(A141214(2*n+3)+9)`
-/

namespace A129431.P8181011647127303672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A141214 (2 * n + 3) + 9).toNat

end

end A129431.P8181011647127303672

/-!
# A129432: Number of isomorphism classes of connected 6-regular multigraphs of order n, loops allowed.

The programs for A129432, there is no canonical definition to state claims against.
-/

/-! ## A129432.P15976979783615000230

`record[A333397(∑[n+4]-1)]`
-/

namespace A129432.P15976979783615000230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129432.P15976979783615000230

/-! ## A129432.P4849477263504933346

`A333397(eq[5, A219347(n)])`
-/

namespace A129432.P4849477263504933346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129432.P4849477263504933346

/-! ## A129432.P2593056532568980625

`A333397(eq[7, A193592(n)])`
-/

namespace A129432.P2593056532568980625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129432.P2593056532568980625

/-! ## A129432.P11782851040207702798

`A333397(A152950(n+9)-10)`
-/

namespace A129432.P11782851040207702798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (A152950 (n + 9) - 10).toNat

end

end A129432.P11782851040207702798

/-! ## A129432.P13739584836379318946

`A333397(eq[7, A025581(n)]+1)`
-/

namespace A129432.P13739584836379318946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A129432.P13739584836379318946

/-!
# A129433: Number of isomorphism classes of 6-regular multigraphs of order n, loops allowed.

The programs for A129433, there is no canonical definition to state claims against.
-/

/-! ## A129433.P16283036247400980716

`A167625(A056119(n)+28)`
-/

namespace A129433.P16283036247400980716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A056119 n + 28).toNat

end

end A129433.P16283036247400980716

/-! ## A129433.P1330581453184912164

`A167625(eq[11, A066657(n)])`
-/

namespace A129433.P1330581453184912164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129433.P1330581453184912164

/-! ## A129433.P11045601799097242351

`A167625(A000217(n+6)+7)`
-/

namespace A129433.P11045601799097242351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A000217 (n + 6) + 7).toNat

end

end A129433.P11045601799097242351

/-! ## A129433.P14402153588761120385

`A167625(eq[8, A131818(n+1)])`
-/

namespace A129433.P14402153588761120385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129433.P14402153588761120385

/-! ## A129433.P9251849210935955315

`A167625(eq[6, A144328(n+1)]+1)`
-/

namespace A129433.P9251849210935955315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A129433.P9251849210935955315

/-!
# A129435: Number of isomorphism classes of 7-regular multigraphs of order 2n, loops allowed.

The programs for A129435, there is no canonical definition to state claims against.
-/

/-! ## A129435.P16885384649932386374

`A167625(A255842(n+4)+n)`
-/

namespace A129435.P16885384649932386374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (A255842 (n + 4) + (n : ℤ)).toNat

end

end A129435.P16885384649932386374

/-!
# A129436: Number of isomorphism classes of connected 8-regular multigraphs of order n, loops allowed.

The programs for A129436, there is no canonical definition to state claims against.
-/

/-! ## A129436.P10593355608011539260

`record[A333397(∑[n+4]-3)]`
-/

namespace A129436.P10593355608011539260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (∑ j ∈ Finset.range (n + 1), f2 j - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129436.P10593355608011539260

/-! ## A129436.P9758043640267179622

`A333397(eq[8, A219347(n)])`
-/

namespace A129436.P9758043640267179622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129436.P9758043640267179622

/-! ## A129436.P10217046274348682558

`A333397(eq[9, A193592(n)])`
-/

namespace A129436.P10217046274348682558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129436.P10217046274348682558

/-! ## A129436.P16275197906703262886

`A333397(eq[9, A025581(n)]+1)`
-/

namespace A129436.P16275197906703262886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A129436.P16275197906703262886

/-! ## A129436.P5655505305610379703

`A333397(eq[16, A185782(n+1)])`
-/

namespace A129436.P5655505305610379703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129436.P5655505305610379703

/-!
# A129437: Number of isomorphism classes of 8-regular multigraphs of order n, loops allowed.

The programs for A129437, there is no canonical definition to state claims against.
-/

/-! ## A129437.P4290202255395010406

`A167625(eq[17, A066657(n)])`
-/

namespace A129437.P4290202255395010406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129437.P4290202255395010406

/-! ## A129437.P4765188754664042446

`A167625(eq[8, A002262(n)]+1)`
-/

namespace A129437.P4765188754664042446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A129437.P4765188754664042446

/-! ## A129437.P8894766258725306137

`A167625(eq[10, A131818(n+1)])`
-/

namespace A129437.P8894766258725306137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129437.P8894766258725306137

/-!
# A129438: Expansion of (phi(q) * phi(q^2) + phi(-q^2) * phi(q^4)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A129438, the canonical program `A129438.P16505802994344033545` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129438 has offset 0).

The definition of A129438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129438.P16505802994344033545

`A125096(A028310(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A129438

/-- `A125096(A028310(n))` -/
def P16505802994344033545.Spec : Prop :=
  ∀ n, P16505802994344033545.a n = A129438 n

theorem P16505802994344033545.correct : P16505802994344033545.Spec := by
  intro n
  simp only [A129438]

end A129438

/-! ## A129438.P14924907308947691562

`A125096(A000007(n)+n)`
-/

namespace A129438.P14924907308947691562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A000007 n + (n : ℤ)).toNat

end

end A129438.P14924907308947691562

namespace A129438

/-- `A125096(A000007(n)+n)` -/
def P14924907308947691562.Spec : Prop :=
  ∀ n, P14924907308947691562.a n = A129438 n

end A129438

/-! ## A129438.P9464566571252868453

`A125096(gcd(n, A008486(n)))`
-/

namespace A129438.P9464566571252868453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (Int.gcd (n : ℤ) (A008486 n))

end

end A129438.P9464566571252868453

namespace A129438

/-- `A125096(gcd(n, A008486(n)))` -/
def P9464566571252868453.Spec : Prop :=
  ∀ n, P9464566571252868453.a n = A129438 n

end A129438

/-! ## A129438.P6348572029684851594

`A125096(or(n, A000007(n)))`
-/

namespace A129438.P6348572029684851594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A129438.P6348572029684851594

namespace A129438

/-- `A125096(or(n, A000007(n)))` -/
def P6348572029684851594.Spec : Prop :=
  ∀ n, P6348572029684851594.a n = A129438 n

end A129438

/-! ## A129438.P1140354283728255985

`A125096(xor(n, A000007(n)))`
-/

namespace A129438.P1140354283728255985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A129438.P1140354283728255985

namespace A129438

/-- `A125096(xor(n, A000007(n)))` -/
def P1140354283728255985.Spec : Prop :=
  ∀ n, P1140354283728255985.a n = A129438 n

end A129438

/-! ## A129438.P4203409547071558146

`A125096(floor(sqrt(A002522(n))))`
-/

namespace A129438.P4203409547071558146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (Int.sqrt (A002522 n)).toNat

end

end A129438.P4203409547071558146

namespace A129438

/-- `A125096(floor(sqrt(A002522(n))))` -/
def P4203409547071558146.Spec : Prop :=
  ∀ n, P4203409547071558146.a n = A129438 n

end A129438

/-! ## A129438.P6971564096760206003

`A125096(A004275(n+1)-n)`
-/

namespace A129438.P6971564096760206003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A004275 (n + 1) - (n : ℤ)).toNat

end

end A129438.P6971564096760206003

namespace A129438

/-- `A125096(A004275(n+1)-n)` -/
def P6971564096760206003.Spec : Prop :=
  ∀ n, P6971564096760206003.a n = A129438 n

end A129438

/-! ## A129438.P8057318475142622616

`A125096(A004273(n)+1-n)`
-/

namespace A129438.P8057318475142622616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A004273 n + (1 - (n : ℤ))).toNat

end

end A129438.P8057318475142622616

namespace A129438

/-- `A125096(A004273(n)+1-n)` -/
def P8057318475142622616.Spec : Prop :=
  ∀ n, P8057318475142622616.a n = A129438 n

end A129438

/-! ## A129438.P3944080327582208456

`A125096(1-(n-A004273(n)))`
-/

namespace A129438.P3944080327582208456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (1 - ((n : ℤ) - A004273 n)).toNat

end

end A129438.P3944080327582208456

namespace A129438

/-- `A125096(1-(n-A004273(n)))` -/
def P3944080327582208456.Spec : Prop :=
  ∀ n, P3944080327582208456.a n = A129438 n

end A129438

/-! ## A129438.P8909294435222788381

`A125096(A008486(n)-2*n)`
-/

namespace A129438.P8909294435222788381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A008486 n - (2 * n : ℤ)).toNat

end

end A129438.P8909294435222788381

namespace A129438

/-- `A125096(A008486(n)-2*n)` -/
def P8909294435222788381.Spec : Prop :=
  ∀ n, P8909294435222788381.a n = A129438 n

end A129438

/-! ## A129438.P5513420327548784976

`(A226225(n)+A028572(n))/2`
-/

namespace A129438.P5513420327548784976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226225 n + A028572 n : ℚ) / 2

end

end A129438.P5513420327548784976

namespace A129438

/-- `(A226225(n)+A028572(n))/2` -/
def P5513420327548784976.Spec : Prop :=
  ∀ n, P5513420327548784976.a n = (A129438 n : ℚ)

end A129438

/-! ## A129438.P16643187519588876632

`A125096(A022144(n)-7*n)`
-/

namespace A129438.P16643187519588876632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A022144 n - (7 * n : ℤ)).toNat

end

end A129438.P16643187519588876632

namespace A129438

/-- `A125096(A022144(n)-7*n)` -/
def P16643187519588876632.Spec : Prop :=
  ∀ n, P16643187519588876632.a n = A129438 n

end A129438

/-! ## A129438.P14090830662780210917

`A125096(A008486(n)-n-n)`
-/

namespace A129438.P14090830662780210917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A008486 n - (n : ℤ) - (n : ℤ)).toNat

end

end A129438.P14090830662780210917

namespace A129438

/-- `A125096(A008486(n)-n-n)` -/
def P14090830662780210917.Spec : Prop :=
  ∀ n, P14090830662780210917.a n = A129438 n

end A129438

/-! ## A129438.P16356129892967325487

`A002265(A245572(n)+A033715(n))`
-/

namespace A129438.P16356129892967325487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A245572 n + A033715 n).toNat

end

end A129438.P16356129892967325487

namespace A129438

/-- `A002265(A245572(n)+A033715(n))` -/
def P16356129892967325487.Spec : Prop :=
  ∀ n, P16356129892967325487.a n = A129438 n

end A129438

/-! ## A129438.P17754608887823701988

`A110655(A245572(n)+A033715(n))`
-/

namespace A129438.P17754608887823701988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A245572 n + A033715 n).toNat

end

end A129438.P17754608887823701988

namespace A129438

/-- `A110655(A245572(n)+A033715(n))` -/
def P17754608887823701988.Spec : Prop :=
  ∀ n, P17754608887823701988.a n = A129438 n

end A129438

/-! ## A129438.P18244566237592929654

`A131508(A245572(n)+A033715(n))`
-/

namespace A129438.P18244566237592929654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A245572 n + A033715 n).toNat

end

end A129438.P18244566237592929654

namespace A129438

/-- `A131508(A245572(n)+A033715(n))` -/
def P18244566237592929654.Spec : Prop :=
  ∀ n, P18244566237592929654.a n = A129438 n

end A129438

/-! ## A129438.P6328986888986532193

`A255589(A245572(n)+A033715(n))`
-/

namespace A129438.P6328986888986532193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 (A245572 n + A033715 n).toNat

end

end A129438.P6328986888986532193

namespace A129438

/-- `A255589(A245572(n)+A033715(n))` -/
def P6328986888986532193.Spec : Prop :=
  ∀ n, P6328986888986532193.a n = A129438 n

end A129438

/-! ## A129438.P17597325972565777174

`A255589(A245572(n)+abs(A133692(n)))`
-/

namespace A129438.P17597325972565777174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 (A245572 n + |A133692 n|).toNat

end

end A129438.P17597325972565777174

namespace A129438

/-- `A255589(A245572(n)+abs(A133692(n)))` -/
def P17597325972565777174.Spec : Prop :=
  ∀ n, P17597325972565777174.a n = A129438 n

end A129438

/-! ## A129438.P12412726761067051943

`A125096(A008619(A004275(n)))`
-/

namespace A129438.P12412726761067051943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A008619 (A004275 n).toNat).toNat

end

end A129438.P12412726761067051943

namespace A129438

/-- `A125096(A008619(A004275(n)))` -/
def P12412726761067051943.Spec : Prop :=
  ∀ n, P12412726761067051943.a n = A129438 n

end A129438

/-! ## A129438.P573153297955931380

`A125096(A008619(A004273(n)))`
-/

namespace A129438.P573153297955931380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A008619 (A004273 n).toNat).toNat

end

end A129438.P573153297955931380

namespace A129438

/-- `A125096(A008619(A004273(n)))` -/
def P573153297955931380.Spec : Prop :=
  ∀ n, P573153297955931380.a n = A129438 n

end A129438

/-!
# A129439: An analog of Pascal's triangle: T(n,k) = A092143(n)/(A092143(n-k)*A092143(k)), 0 <= k <= n.

The programs for A129439, there is no canonical definition to state claims against.
-/

/-! ## A129439.P10006684900891429183

`gcd(A022998(A129453(n)), A178821(n))`
-/

namespace A129439.P10006684900891429183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022998 (A129453 n).toNat) (A178821 n)

end

end A129439.P10006684900891429183

/-! ## A129439.P11196381500119187433

`gcd(A176427(n)!, A008459(n))`
-/

namespace A129439.P11196381500119187433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A176427 n).toNat : ℤ) (A008459 n)

end

end A129439.P11196381500119187433

/-! ## A129439.P5199580054113270166

`A007318(n)*A166974(A022166(n))`
-/

namespace A129439.P5199580054113270166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A166974 (A022166 n).toNat

end

end A129439.P5199580054113270166

/-! ## A129439.P8446544315253521283

`A095144(n)*A166974(A022166(n))`
-/

namespace A129439.P8446544315253521283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095144 n * A166974 (A022166 n).toNat

end

end A129439.P8446544315253521283

/-! ## A129439.P15833927759650860313

`A188462(A129455(n))`
-/

namespace A129439.P15833927759650860313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A129455 n).toNat

end

end A129439.P15833927759650860313

/-!
# A129440: a(0)=0, a(1)=1, a(2)=5 and for n>2: a(n) = a(n-1)*(a(n-1) + 1)*(2*a(n-1) + 1)/6.

The programs for A129440, the canonical program `A129440.P18351390808562085210` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129440 has offset 0).

The definition of A129440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129440.P18351390808562085210

`a(n-1)*(a(n-1)+1)*(2*a(n-1)+1)/6` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129440

/-- `a(n-1)*(a(n-1)+1)*(2*a(n-1)+1)/6` -/
def P18351390808562085210.Spec : Prop :=
  ∀ n, P18351390808562085210.a n = (A129440 n : ℚ)

end A129440

/-!
# A129441: Expansion of g.f. (1-x^2-x^3)/((1+x+x^2)*(1-2*x-x^2-x^3+x^4)).

The programs for A129441, the canonical program `A129441.P9736927506808620387` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129441 has offset 0).

The definition of A129441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129441.P9736927506808620387

`a(n-1)+2*a(n-2)+4*a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7, a(4)=16, a(5)=39`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129441

/-- `a(n-1)+2*a(n-2)+4*a(n-3)+a(n-4)-a(n-6)` -/
def P9736927506808620387.Spec : Prop :=
  ∀ n, P9736927506808620387.a n = A129441 n

theorem P9736927506808620387.correct : P9736927506808620387.Spec := by
  intro n
  simp only [A129441]

end A129441

/-! ## A129441.P17189714719754434112

`A083382(A132965(n+3)+A059769(n+3))`
-/

namespace A129441.P17189714719754434112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A132965 (n + 3) + A059769 (n + 3)).toNat

end

end A129441.P17189714719754434112

namespace A129441

/-- `A083382(A132965(n+3)+A059769(n+3))` -/
def P17189714719754434112.Spec : Prop :=
  ∀ n, P17189714719754434112.a n = A129441 n

end A129441

/-!
# A129442: Expansion of c(x)*c(x*c(x)) where c(x) is the g.f. of A000108.

The programs for A129442, there is no canonical definition to state claims against.
-/

/-! ## A129442.P6404261277550143600

`A121988(n+1)`
-/

namespace A129442.P6404261277550143600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121988 (n + 1)

end

end A129442.P6404261277550143600

/-! ## A129442.P6942757867173466778

`∑[abs(Δ[A121988(n)])]`
-/

namespace A129442.P6942757867173466778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129442.P6942757867173466778

/-! ## A129442.P5797502698281138300

`record[A121988(abs(1-n))]`
-/

namespace A129442.P5797502698281138300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121988 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129442.P5797502698281138300

/-! ## A129442.P15807763939321807748

`A308726(n)+A001791(n)`
-/

namespace A129442.P15807763939321807748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308726 n + A001791 n

end

end A129442.P15807763939321807748

/-! ## A129442.P13870813152288037149

`A127632(n+1)+A000108(n)-A130655(n)`
-/

namespace A129442.P13870813152288037149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127632 (n + 1) + (A000108 n - A130655 n)

end

end A129442.P13870813152288037149

/-! ## A129442.P2501154211554683398

`A293490(n)/(n+1)`
-/

namespace A129442.P2501154211554683398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293490 n : ℚ) / (n + 1 : ℚ)

end

end A129442.P2501154211554683398

/-! ## A129442.P6723019593725952179

`A000108(n)/A000984(n)*A293490(n)`
-/

namespace A129442.P6723019593725952179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A000984 n : ℚ) * (A293490 n : ℚ)

end

end A129442.P6723019593725952179

/-! ## A129442.P14270138243681958847

`record[A127631(n)]`
-/

namespace A129442.P14270138243681958847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129442.P14270138243681958847

/-! ## A129442.P8288031143968164122

`A127631(∑[n+1]+1)`
-/

namespace A129442.P8288031143968164122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127631 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A129442.P8288031143968164122

/-!
# A129443: Expansion of (1 - 4*x^2 - 8*x^3)/((1 + 2*x + 4*x^2)*(1 - x - 2*x - 4*x^2 - 4*x^3 + 16*x^4)).

The programs for A129443, there is no canonical definition to state claims against.
-/

/-! ## A129443.P17204224049428219580

`or(1, A243185(A307105(n)))`
-/

namespace A129443.P17204224049428219580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A243185 (A307105 n).toNat)

end

end A129443.P17204224049428219580

/-! ## A129443.P13462021137122778213

`∑[A176541(A299162(n)+2-C(2, n))]`
-/

namespace A129443.P13462021137122778213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176541 (A299162 n + 2 - (Nat.choose 2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129443.P13462021137122778213

/-!
# A129444: Numbers k such that the centered triangular number A005448(k) = 3*k*(k-1)/2 + 1 is a perfect square.

The programs for A129444, the canonical program `A129444.P9566826332152955817` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129444 has offset 1).

The definition of A129444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129444.P9566826332152955817

`11*(a(n-2)-a(n-4))+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7, a(4)=16, a(5)=65`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129444

/-- `11*(a(n-2)-a(n-4))+a(n-6)` -/
def P9566826332152955817.Spec : Prop :=
  ∀ n, P9566826332152955817.a n = A129444 (n + 1)

theorem P9566826332152955817.correct : P9566826332152955817.Spec := by
  intro n
  simp only [A129444, Nat.add_sub_cancel]

end A129444

/-! ## A129444.P6384597120301157999

`∑[10*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5, a(4)=9`
-/

namespace A129444.P6384597120301157999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 5, 9] fun n f1 =>
  10 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129444.P6384597120301157999

namespace A129444

/-- `∑[10*a(n-2)-a(n-4)]` -/
def P6384597120301157999.Spec : Prop :=
  ∀ n, P6384597120301157999.a n = A129444 (n + 1)

end A129444

/-! ## A129444.P15104620348035702502

`∑[A080872(abs(1-n))]-1`
-/

namespace A129444.P15104620348035702502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A129444.P15104620348035702502

namespace A129444

/-- `∑[A080872(abs(1-n))]-1` -/
def P15104620348035702502.Spec : Prop :=
  ∀ n, P15104620348035702502.a n = A129444 (n + 1)

end A129444

/-! ## A129444.P1981045365507187357

`A233450(C(2, n+2)+n)+A057427(n)`
-/

namespace A129444.P1981045365507187357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (Nat.choose 2 (n + 2) + n) + A057427 n

end

end A129444.P1981045365507187357

namespace A129444

/-- `A233450(C(2, n+2)+n)+A057427(n)` -/
def P1981045365507187357.Spec : Prop :=
  ∀ n, P1981045365507187357.a n = A129444 (n + 1)

end A129444

/-! ## A129444.P7503155500396405847

`A233450(A028310(n))+A057427(n)`
-/

namespace A129444.P7503155500396405847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (A028310 n).toNat + A057427 n

end

end A129444.P7503155500396405847

namespace A129444

/-- `A233450(A028310(n))+A057427(n)` -/
def P7503155500396405847.Spec : Prop :=
  ∀ n, P7503155500396405847.a n = A129444 (n + 1)

end A129444

/-! ## A129444.P16647238639151148373

`A136331(n)/3`
-/

namespace A129444.P16647238639151148373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136331 n : ℚ) / 3

end

end A129444.P16647238639151148373

namespace A129444

/-- `A136331(n)/3` -/
def P16647238639151148373.Spec : Prop :=
  ∀ n, P16647238639151148373.a n = (A129444 (n + 1) : ℚ)

end A129444

/-! ## A129444.P964155157157604073

`A233450(n+1)+1-A080872(n)`
-/

namespace A129444.P964155157157604073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (n + 1) + (1 - A080872 n)

end

end A129444.P964155157157604073

namespace A129444

/-- `A233450(n+1)+1-A080872(n)` -/
def P964155157157604073.Spec : Prop :=
  ∀ n, P964155157157604073.a n = A129444 (n + 1)

end A129444

/-! ## A129444.P14684661904124798432

`A077291(n)-2*A077288(n)`
-/

namespace A129444.P14684661904124798432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077291 n - 2 * A077288 n

end

end A129444.P14684661904124798432

namespace A129444

/-- `A077291(n)-2*A077288(n)` -/
def P14684661904124798432.Spec : Prop :=
  ∀ n, P14684661904124798432.a n = A129444 (n + 1)

end A129444

/-! ## A129444.P14239437809947287454

`(A180483(n)-1)%A181442(n)`
-/

namespace A129444.P14239437809947287454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180483 n - 1) (A181442 n)

end

end A129444.P14239437809947287454

namespace A129444

/-- `(A180483(n)-1)%A181442(n)` -/
def P14239437809947287454.Spec : Prop :=
  ∀ n, P14239437809947287454.a n = A129444 (n + 1)

end A129444

/-! ## A129444.P13332379242530065975

`A077291(n)+1-A080806(n+1)`
-/

namespace A129444.P13332379242530065975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077291 n + (1 - A080806 (n + 1))

end

end A129444.P13332379242530065975

namespace A129444

/-- `A077291(n)+1-A080806(n+1)` -/
def P13332379242530065975.Spec : Prop :=
  ∀ n, P13332379242530065975.a n = A129444 (n + 1)

end A129444

/-! ## A129444.P13306789070676213837

`2*A077291(n)-A165517(n+1)`
-/

namespace A129444.P13306789070676213837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077291 n - A165517 (n + 1)

end

end A129444.P13306789070676213837

namespace A129444

/-- `2*A077291(n)-A165517(n+1)` -/
def P13306789070676213837.Spec : Prop :=
  ∀ n, P13306789070676213837.a n = A129444 (n + 1)

end A129444

/-!
# A129445: Numbers k > 0 such that k^2 is a centered triangular number.

The programs for A129445, the canonical program `A129445.P7630243299878493607` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129445 has offset 1).

The definition of A129445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129445.P7630243299878493607

`10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=19`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129445

/-- `10*a(n-2)-a(n-4)` -/
def P7630243299878493607.Spec : Prop :=
  ∀ n, P7630243299878493607.a n = A129445 (n + 1)

theorem P7630243299878493607.correct : P7630243299878493607.Spec := by
  intro n
  simp only [A129445, Nat.add_sub_cancel]

end A129445

/-! ## A129445.P4800323181333176171

`A041007(n)-A004189(floor(n/2))`
-/

namespace A129445.P4800323181333176171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 n - A004189 ⌊(n : ℚ) / 2⌋.toNat

end

end A129445.P4800323181333176171

namespace A129445

/-- `A041007(n)-A004189(floor(n/2))` -/
def P4800323181333176171.Spec : Prop :=
  ∀ n, P4800323181333176171.a n = A129445 (n + 1)

end A129445

/-! ## A129445.P10200526696628379343

`∪[A080874(2*n+1), A140781(n+1)]`
-/

namespace A129445.P10200526696628379343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129445.P10200526696628379343

namespace A129445

/-- `∪[A080874(2*n+1), A140781(n+1)]` -/
def P10200526696628379343.Spec : Prop :=
  ∀ n, (P10200526696628379343.a n : ℤ) = A129445 (n + 1)

end A129445

/-! ## A129445.P15074203653212596323

`∪[A140781(n+1), A080874(A005408(n))]`
-/

namespace A129445.P15074203653212596323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 (A005408 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129445.P15074203653212596323

namespace A129445

/-- `∪[A140781(n+1), A080874(A005408(n))]` -/
def P15074203653212596323.Spec : Prop :=
  ∀ n, (P15074203653212596323.a n : ℤ) = A129445 (n + 1)

end A129445

/-! ## A129445.P8427324397114958942

`∑[A080872(n)+A080872(n)%A080873(n)]`
-/

namespace A129445.P8427324397114958942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 n + Int.tmod (A080872 n) (A080873 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129445.P8427324397114958942

namespace A129445

/-- `∑[A080872(n)+A080872(n)%A080873(n)]` -/
def P8427324397114958942.Spec : Prop :=
  ∀ n, P8427324397114958942.a n = A129445 (n + 1)

end A129445

/-! ## A129445.P13118625771355731358

`A077288(n+1)-A233450(n+1)`
-/

namespace A129445.P13118625771355731358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 (n + 1) - A233450 (n + 1)

end

end A129445.P13118625771355731358

namespace A129445

/-- `A077288(n+1)-A233450(n+1)` -/
def P13118625771355731358.Spec : Prop :=
  ∀ n, P13118625771355731358.a n = A129445 (n + 1)

end A129445

/-! ## A129445.P16324969803490944559

`A181442(n+1)-A129444(n+2)`
-/

namespace A129445.P16324969803490944559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181442 (n + 1) - A129444 (n + 2)

end

end A129445.P16324969803490944559

namespace A129445

/-- `A181442(n+1)-A129444(n+2)` -/
def P16324969803490944559.Spec : Prop :=
  ∀ n, P16324969803490944559.a n = A129445 (n + 1)

end A129445

/-! ## A129445.P225200329261256218

`2*A080806(n+1)-A074061(n)`
-/

namespace A129445.P225200329261256218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080806 (n + 1) - A074061 n

end

end A129445.P225200329261256218

namespace A129445

/-- `2*A080806(n+1)-A074061(n)` -/
def P225200329261256218.Spec : Prop :=
  ∀ n, P225200329261256218.a n = A129445 (n + 1)

end A129445

/-! ## A129445.P746355702052661748

`(A080806(n+1)+A072256(A008619(n)))/2`
-/

namespace A129445.P746355702052661748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080806 (n + 1) + A072256 (A008619 n).toNat : ℚ) / 2

end

end A129445.P746355702052661748

namespace A129445

/-- `(A080806(n+1)+A072256(A008619(n)))/2` -/
def P746355702052661748.Spec : Prop :=
  ∀ n, P746355702052661748.a n = (A129445 (n + 1) : ℚ)

end A129445

/-! ## A129445.P4367726273637586607

`(A080806(n+1)+A041007(A052928(n)))/2`
-/

namespace A129445.P4367726273637586607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080806 (n + 1) + A041007 (A052928 n).toNat : ℚ) / 2

end

end A129445.P4367726273637586607

namespace A129445

/-- `(A080806(n+1)+A041007(A052928(n)))/2` -/
def P4367726273637586607.Spec : Prop :=
  ∀ n, P4367726273637586607.a n = (A129445 (n + 1) : ℚ)

end A129445

/-! ## A129445.P5368011812620077539

`(A138288(A004526(n))+A080806(n+1))/2`
-/

namespace A129445.P5368011812620077539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138288 (A004526 n).toNat + A080806 (n + 1) : ℚ) / 2

end

end A129445.P5368011812620077539

namespace A129445

/-- `(A138288(A004526(n))+A080806(n+1))/2` -/
def P5368011812620077539.Spec : Prop :=
  ∀ n, P5368011812620077539.a n = (A129445 (n + 1) : ℚ)

end A129445

/-! ## A129445.P14801830946045229223

`(A080872(A109613(n))+A080806(n+1))/2`
-/

namespace A129445.P14801830946045229223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080872 (A109613 n).toNat + A080806 (n + 1) : ℚ) / 2

end

end A129445.P14801830946045229223

namespace A129445

/-- `(A080872(A109613(n))+A080806(n+1))/2` -/
def P14801830946045229223.Spec : Prop :=
  ∀ n, P14801830946045229223.a n = (A129445 (n + 1) : ℚ)

end A129445

/-! ## A129445.P16259651801958055257

`Δ[A080873(n+2)%A080874(n+1)]`
-/

namespace A129445.P16259651801958055257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080873 (n + 2)) (A080874 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129445.P16259651801958055257

namespace A129445

/-- `Δ[A080873(n+2)%A080874(n+1)]` -/
def P16259651801958055257.Spec : Prop :=
  ∀ n, P16259651801958055257.a n = A129445 (n + 1)

end A129445

/-! ## A129445.P11621388715146739473

`A077288(n+1)+A080806(n+2)-A077291(n+1)`
-/

namespace A129445.P11621388715146739473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 (n + 1) + (A080806 (n + 2) - A077291 (n + 1))

end

end A129445.P11621388715146739473

namespace A129445

/-- `A077288(n+1)+A080806(n+2)-A077291(n+1)` -/
def P11621388715146739473.Spec : Prop :=
  ∀ n, P11621388715146739473.a n = A129445 (n + 1)

end A129445

/-! ## A129445.P7938837461449846097

`A181442(n+1)+A080806(n+2)-A179934(n+1)`
-/

namespace A129445.P7938837461449846097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181442 (n + 1) + (A080806 (n + 2) - A179934 (n + 1))

end

end A129445.P7938837461449846097

namespace A129445

/-- `A181442(n+1)+A080806(n+2)-A179934(n+1)` -/
def P7938837461449846097.Spec : Prop :=
  ∀ n, P7938837461449846097.a n = A129445 (n + 1)

end A129445

/-! ## A129445.P2246402566188014351

`sqrt(A249483(n+1))`
-/

namespace A129445.P2246402566188014351
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A249483 (n + 1) : ℝ)

end

end A129445.P2246402566188014351

namespace A129445

/-- `sqrt(A249483(n+1))` -/
def P2246402566188014351.Spec : Prop :=
  ∀ n, P2246402566188014351.a n = (A129445 (n + 1) : ℝ)

end A129445

/-! ## A129445.P6737960266602734349

`∑[gcd(A004291(n), A087125(n))]`
-/

namespace A129445.P6737960266602734349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004291 n) (A087125 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129445.P6737960266602734349

namespace A129445

/-- `∑[gcd(A004291(n), A087125(n))]` -/
def P6737960266602734349.Spec : Prop :=
  ∀ n, (P6737960266602734349.a n : ℤ) = A129445 (n + 1)

end A129445

/-!
# A129446: Primes p such that p^2 is a centered triangular number; or primes in A129445.

The programs for A129446, there is no canonical definition to state claims against.
-/

/-! ## A129446.P1635806721111683801

`A129445(A122553(n)+A056441(n+1))`
-/

namespace A129446.P1635806721111683801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (A122553 n + A056441 (n + 1)).toNat

end

end A129446.P1635806721111683801

/-!
# A129447: Expansion of psi(q) * psi(q^3) * phi(q^3) / phi(q) in powers of q where psi(), phi() are Ramanujan theta functions.

The programs for A129447, the canonical program `A129447.P14635424549236213191` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129447 has offset 0).

The definition of A129447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129447.P14635424549236213191

`A033999(n)*A125079(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A129447

/-- `A033999(n)*A125079(n)` -/
def P14635424549236213191.Spec : Prop :=
  ∀ n, P14635424549236213191.a n = A129447 n

theorem P14635424549236213191.correct : P14635424549236213191.Spec := by
  intro n
  simp only [A129447]

end A129447

/-! ## A129447.P9207951300718111304

`A116604(n)/A010684(n)`
-/

namespace A129447.P9207951300718111304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116604 n : ℚ) / (A010684 n : ℚ)

end

end A129447.P9207951300718111304

namespace A129447

/-- `A116604(n)/A010684(n)` -/
def P9207951300718111304.Spec : Prop :=
  ∀ n, P9207951300718111304.a n = (A129447 n : ℚ)

end A129447

/-! ## A129447.P5982377639876525335

`A116604(n)/A073575(n+1)`
-/

namespace A129447.P5982377639876525335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116604 n : ℚ) / (A073575 (n + 1) : ℚ)

end

end A129447.P5982377639876525335

namespace A129447

/-- `A116604(n)/A073575(n+1)` -/
def P5982377639876525335.Spec : Prop :=
  ∀ n, P5982377639876525335.a n = (A129447 n : ℚ)

end A129447

/-! ## A129447.P12649852477642204574

`(2-A010684(n))*A125079(n)`
-/

namespace A129447.P12649852477642204574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A125079 n

end

end A129447.P12649852477642204574

namespace A129447

/-- `(2-A010684(n))*A125079(n)` -/
def P12649852477642204574.Spec : Prop :=
  ∀ n, P12649852477642204574.a n = A129447 n

end A129447

/-! ## A129447.P1156066055574826551

`(A125079(n)+A116604(n))/2`
-/

namespace A129447.P1156066055574826551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125079 n + A116604 n : ℚ) / 2

end

end A129447.P1156066055574826551

namespace A129447

/-- `(A125079(n)+A116604(n))/2` -/
def P1156066055574826551.Spec : Prop :=
  ∀ n, P1156066055574826551.a n = (A129447 n : ℚ)

end A129447

/-! ## A129447.P7106896084713796799

`2*A125079(n)-A138741(n)`
-/

namespace A129447.P7106896084713796799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125079 n - A138741 n

end

end A129447.P7106896084713796799

namespace A129447

/-- `2*A125079(n)-A138741(n)` -/
def P7106896084713796799.Spec : Prop :=
  ∀ n, P7106896084713796799.a n = A129447 n

end A129447

/-! ## A129447.P1980319221343974153

`A116604(n)/(2-A033999(n))`
-/

namespace A129447.P1980319221343974153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116604 n : ℚ) / (2 - A033999 n : ℚ)

end

end A129447.P1980319221343974153

namespace A129447

/-- `A116604(n)/(2-A033999(n))` -/
def P1980319221343974153.Spec : Prop :=
  ∀ n, P1980319221343974153.a n = (A129447 n : ℚ)

end A129447

/-! ## A129447.P9370823571370139114

`(2-A073575(n+1))*A125079(n)`
-/

namespace A129447.P9370823571370139114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A073575 (n + 1)) * A125079 n

end

end A129447.P9370823571370139114

namespace A129447

/-- `(2-A073575(n+1))*A125079(n)` -/
def P9370823571370139114.Spec : Prop :=
  ∀ n, P9370823571370139114.a n = A129447 n

end A129447

/-! ## A129447.P4618202375176085856

`A116604(n)+A138741(n)-A125079(n)`
-/

namespace A129447.P4618202375176085856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 n + (A138741 n - A125079 n)

end

end A129447.P4618202375176085856

namespace A129447

/-- `A116604(n)+A138741(n)-A125079(n)` -/
def P4618202375176085856.Spec : Prop :=
  ∀ n, P4618202375176085856.a n = A129447 n

end A129447

/-! ## A129447.P2199776039973991386

`A113446(Δ[n²])`
-/

namespace A129447.P2199776039973991386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129447.P2199776039973991386

namespace A129447

/-- `A113446(Δ[n²])` -/
def P2199776039973991386.Spec : Prop :=
  ∀ n, P2199776039973991386.a n = A129447 n

end A129447

/-! ## A129447.P13572055184934307275

`A121450(Δ[n²])`
-/

namespace A129447.P13572055184934307275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129447.P13572055184934307275

namespace A129447

/-- `A121450(Δ[n²])` -/
def P13572055184934307275.Spec : Prop :=
  ∀ n, P13572055184934307275.a n = A129447 n

end A129447

/-! ## A129447.P10327350834206715478

`A113446(2*n+1)%(n+2)`
-/

namespace A129447.P10327350834206715478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113446 (2 * n + 1)) (n + 2 : ℤ)

end

end A129447.P10327350834206715478

namespace A129447

/-- `A113446(2*n+1)%(n+2)` -/
def P10327350834206715478.Spec : Prop :=
  ∀ n, P10327350834206715478.a n = A129447 n

end A129447

/-! ## A129447.P4973295487712150850

`A033999(n)*A035154(2*n+1)`
-/

namespace A129447.P4973295487712150850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A035154 (2 * n + 1)

end

end A129447.P4973295487712150850

namespace A129447

/-- `A033999(n)*A035154(2*n+1)` -/
def P4973295487712150850.Spec : Prop :=
  ∀ n, P4973295487712150850.a n = A129447 n

end A129447

/-! ## A129447.P15247685135570018069

`A033999(n)*A132004(2*n+1)`
-/

namespace A129447.P15247685135570018069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132004 (2 * n + 1)

end

end A129447.P15247685135570018069

namespace A129447

/-- `A033999(n)*A132004(2*n+1)` -/
def P15247685135570018069.Spec : Prop :=
  ∀ n, P15247685135570018069.a n = A129447 n

end A129447

/-! ## A129447.P11028294320630829043

`A122864(2*n+1)/A131713(n)`
-/

namespace A129447.P11028294320630829043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122864 (2 * n + 1) : ℚ) / (A131713 n : ℚ)

end

end A129447.P11028294320630829043

namespace A129447

/-- `A122864(2*n+1)/A131713(n)` -/
def P11028294320630829043.Spec : Prop :=
  ∀ n, P11028294320630829043.a n = (A129447 n : ℚ)

end A129447

/-! ## A129447.P14117209403009030579

`A248394(2*n)+A113446(2*n+1)`
-/

namespace A129447.P14117209403009030579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (2 * n) + A113446 (2 * n + 1)

end

end A129447.P14117209403009030579

namespace A129447

/-- `A248394(2*n)+A113446(2*n+1)` -/
def P14117209403009030579.Spec : Prop :=
  ∀ n, P14117209403009030579.a n = A129447 n

end A129447

/-! ## A129447.P15807783502496234741

`A122864(2*n+1)/A061347(n+2)`
-/

namespace A129447.P15807783502496234741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122864 (2 * n + 1) : ℚ) / (A061347 (n + 2) : ℚ)

end

end A129447.P15807783502496234741

namespace A129447

/-- `A122864(2*n+1)/A061347(n+2)` -/
def P15807783502496234741.Spec : Prop :=
  ∀ n, P15807783502496234741.a n = (A129447 n : ℚ)

end A129447

/-! ## A129447.P18346512544480253383

`A138950(2*n+1)/(2-A033999(n))`
-/

namespace A129447.P18346512544480253383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138950 (2 * n + 1) : ℚ) / (2 - A033999 n : ℚ)

end

end A129447.P18346512544480253383

namespace A129447

/-- `A138950(2*n+1)/(2-A033999(n))` -/
def P18346512544480253383.Spec : Prop :=
  ∀ n, P18346512544480253383.a n = (A129447 n : ℚ)

end A129447

/-! ## A129447.P17560703922012608761

`A138952(2*n+1)/(2-A033999(n))`
-/

namespace A129447.P17560703922012608761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138952 (2 * n + 1) : ℚ) / (2 - A033999 n : ℚ)

end

end A129447.P17560703922012608761

namespace A129447

/-- `A138952(2*n+1)/(2-A033999(n))` -/
def P17560703922012608761.Spec : Prop :=
  ∀ n, P17560703922012608761.a n = (A129447 n : ℚ)

end A129447

/-! ## A129447.P7542118068201867654

`A057077(2*n)*A132004(2*n+1)`
-/

namespace A129447.P7542118068201867654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A132004 (2 * n + 1)

end

end A129447.P7542118068201867654

namespace A129447

/-- `A057077(2*n)*A132004(2*n+1)` -/
def P7542118068201867654.Spec : Prop :=
  ∀ n, P7542118068201867654.a n = A129447 n

end A129447

/-!
# A129448: Expansion of q * psi(-q) * chi(q^3)^2 * psi(-q^9) in powers of q where psi(), chi() are Ramanujan theta functions.

The programs for A129448, the canonical program `A129448.P6699059258803862870` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129448 has offset 1).

The definition of A129448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129448.P2059232105625300252

`∑[(-2)^(∑[n]%3)]*A002654(n+1)`
-/

namespace A129448.P2059232105625300252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002654 (n + 1)

end

end A129448.P2059232105625300252

namespace A129448

/-- `∑[(-2)^(∑[n]%3)]*A002654(n+1)` -/
def P2059232105625300252.Spec : Prop :=
  ∀ n, P2059232105625300252.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P6699059258803862870

`A002654(n+1)*A049347(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A129448

/-- `A002654(n+1)*A049347(n)` -/
def P6699059258803862870.Spec : Prop :=
  ∀ n, P6699059258803862870.a n = A129448 (n + 1)

theorem P6699059258803862870.correct : P6699059258803862870.Spec := by
  intro n
  simp only [A129448, Nat.add_sub_cancel]

end A129448

/-! ## A129448.P1825394834743092903

`A035154(n+1)*A049347(n)`
-/

namespace A129448.P1825394834743092903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) * A049347 n

end

end A129448.P1825394834743092903

namespace A129448

/-- `A035154(n+1)*A049347(n)` -/
def P1825394834743092903.Spec : Prop :=
  ∀ n, P1825394834743092903.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P16710473110055487920

`A010892(n)*A113652(n+1)`
-/

namespace A129448.P16710473110055487920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A113652 (n + 1)

end

end A129448.P16710473110055487920

namespace A129448

/-- `A010892(n)*A113652(n+1)` -/
def P16710473110055487920.Spec : Prop :=
  ∀ n, P16710473110055487920.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P7417108031856303555

`A010892(n)*A121450(n+1)`
-/

namespace A129448.P7417108031856303555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A121450 (n + 1)

end

end A129448.P7417108031856303555

namespace A129448

/-- `A010892(n)*A121450(n+1)` -/
def P7417108031856303555.Spec : Prop :=
  ∀ n, P7417108031856303555.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P8278994296028022637

`A010892(n)*A132004(n+1)`
-/

namespace A129448.P8278994296028022637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A132004 (n + 1)

end

end A129448.P8278994296028022637

namespace A129448

/-- `A010892(n)*A132004(n+1)` -/
def P8278994296028022637.Spec : Prop :=
  ∀ n, P8278994296028022637.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P1083043189154079285

`A010892(n)*A138746(n+1)`
-/

namespace A129448.P1083043189154079285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A138746 (n + 1)

end

end A129448.P1083043189154079285

namespace A129448

/-- `A010892(n)*A138746(n+1)` -/
def P1083043189154079285.Spec : Prop :=
  ∀ n, P1083043189154079285.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P10114537510432442222

`A010892(n)*A138952(n+1)`
-/

namespace A129448.P10114537510432442222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A138952 (n + 1)

end

end A129448.P10114537510432442222

namespace A129448

/-- `A010892(n)*A138952(n+1)` -/
def P10114537510432442222.Spec : Prop :=
  ∀ n, P10114537510432442222.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P9892514292162998515

`A049347(n)*A113446(n+1)`
-/

namespace A129448.P9892514292162998515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A113446 (n + 1)

end

end A129448.P9892514292162998515

namespace A129448

/-- `A049347(n)*A113446(n+1)` -/
def P9892514292162998515.Spec : Prop :=
  ∀ n, P9892514292162998515.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P14799000307271998928

`A049347(n)*A122864(n+1)`
-/

namespace A129448.P14799000307271998928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A122864 (n + 1)

end

end A129448.P14799000307271998928

namespace A129448

/-- `A049347(n)*A122864(n+1)` -/
def P14799000307271998928.Spec : Prop :=
  ∀ n, P14799000307271998928.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P13583384763673375007

`A049347(n)*A138950(n+1)`
-/

namespace A129448.P13583384763673375007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A138950 (n + 1)

end

end A129448.P13583384763673375007

namespace A129448

/-- `A049347(n)*A138950(n+1)` -/
def P13583384763673375007.Spec : Prop :=
  ∀ n, P13583384763673375007.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P6281500412393013132

`A049347(n)*A163746(n+1)`
-/

namespace A129448.P6281500412393013132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A163746 (n + 1)

end

end A129448.P6281500412393013132

namespace A129448

/-- `A049347(n)*A163746(n+1)` -/
def P6281500412393013132.Spec : Prop :=
  ∀ n, P6281500412393013132.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P3305645198683453572

`A010892(n)*A257900(n+1)`
-/

namespace A129448.P3305645198683453572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A257900 (n + 1)

end

end A129448.P3305645198683453572

namespace A129448

/-- `A010892(n)*A257900(n+1)` -/
def P3305645198683453572.Spec : Prop :=
  ∀ n, P3305645198683453572.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P4403891172872902622

`A256276(n+1)/A131713(n)`
-/

namespace A129448.P4403891172872902622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256276 (n + 1) : ℚ) / (A131713 n : ℚ)

end

end A129448.P4403891172872902622

namespace A129448

/-- `A256276(n+1)/A131713(n)` -/
def P4403891172872902622.Spec : Prop :=
  ∀ n, P4403891172872902622.a n = (A129448 (n + 1) : ℚ)

end A129448

/-! ## A129448.P13104952261669380614

`A002654(n+1)*A091338(n+1)`
-/

namespace A129448.P13104952261669380614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A091338 (n + 1)

end

end A129448.P13104952261669380614

namespace A129448

/-- `A002654(n+1)*A091338(n+1)` -/
def P13104952261669380614.Spec : Prop :=
  ∀ n, P13104952261669380614.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P10087657225353120388

`A035154(n+1)*A091338(n+1)`
-/

namespace A129448.P10087657225353120388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) * A091338 (n + 1)

end

end A129448.P10087657225353120388

namespace A129448

/-- `A035154(n+1)*A091338(n+1)` -/
def P10087657225353120388.Spec : Prop :=
  ∀ n, P10087657225353120388.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P7993147775595865680

`A091338(n+1)*A113446(n+1)`
-/

namespace A129448.P7993147775595865680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (n + 1) * A113446 (n + 1)

end

end A129448.P7993147775595865680

namespace A129448

/-- `A091338(n+1)*A113446(n+1)` -/
def P7993147775595865680.Spec : Prop :=
  ∀ n, P7993147775595865680.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P12154833562178758252

`A091338(n+1)*A122864(n+1)`
-/

namespace A129448.P12154833562178758252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (n + 1) * A122864 (n + 1)

end

end A129448.P12154833562178758252

namespace A129448

/-- `A091338(n+1)*A122864(n+1)` -/
def P12154833562178758252.Spec : Prop :=
  ∀ n, P12154833562178758252.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P11300195053550927596

`A091338(n+1)*A138950(n+1)`
-/

namespace A129448.P11300195053550927596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (n + 1) * A138950 (n + 1)

end

end A129448.P11300195053550927596

namespace A129448

/-- `A091338(n+1)*A138950(n+1)` -/
def P11300195053550927596.Spec : Prop :=
  ∀ n, P11300195053550927596.a n = A129448 (n + 1)

end A129448

/-! ## A129448.P7038413796382787538

`A091338(n+1)*A163746(n+1)`
-/

namespace A129448.P7038413796382787538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (n + 1) * A163746 (n + 1)

end

end A129448.P7038413796382787538

namespace A129448

/-- `A091338(n+1)*A163746(n+1)` -/
def P7038413796382787538.Spec : Prop :=
  ∀ n, P7038413796382787538.a n = A129448 (n + 1)

end A129448

/-!
# A129449: Expansion of psi(-x) * psi(-x^3) in powers of x where psi() is a Ramanujan theta function.

The programs for A129449, the canonical program `A129449.P16811369951284374443` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129449 has offset 0).

The definition of A129449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129449.P16811369951284374443

`(-1)^n*A033762(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129449

/-- `(-1)^n*A033762(n)` -/
def P16811369951284374443.Spec : Prop :=
  ∀ n, P16811369951284374443.a n = A129449 n

theorem P16811369951284374443.correct : P16811369951284374443.Spec := by
  intro n
  simp only [A129449]

end A129449

/-! ## A129449.P14091994229923874586

`A033762(n)*A033999(n)`
-/

namespace A129449.P14091994229923874586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 n * A033999 n

end

end A129449.P14091994229923874586

namespace A129449

/-- `A033762(n)*A033999(n)` -/
def P14091994229923874586.Spec : Prop :=
  ∀ n, P14091994229923874586.a n = A129449 n

end A129449

/-! ## A129449.P1675437973017376496

`A087960(n)*A262780(n)`
-/

namespace A129449.P1675437973017376496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A262780 n

end

end A129449.P1675437973017376496

namespace A129449

/-- `A087960(n)*A262780(n)` -/
def P1675437973017376496.Spec : Prop :=
  ∀ n, P1675437973017376496.a n = A129449 n

end A129449

/-! ## A129449.P1004566237407172946

`A123530(n)/A057079(n)`
-/

namespace A129449.P1004566237407172946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123530 n : ℚ) / (A057079 n : ℚ)

end

end A129449.P1004566237407172946

namespace A129449

/-- `A123530(n)/A057079(n)` -/
def P1004566237407172946.Spec : Prop :=
  ∀ n, P1004566237407172946.a n = (A129449 n : ℚ)

end A129449

/-! ## A129449.P10543385947260014688

`A123530(n)/A132954(n)`
-/

namespace A129449.P10543385947260014688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123530 n : ℚ) / (A132954 n : ℚ)

end

end A129449.P10543385947260014688

namespace A129449

/-- `A123530(n)/A132954(n)` -/
def P10543385947260014688.Spec : Prop :=
  ∀ n, P10543385947260014688.a n = (A129449 n : ℚ)

end A129449

/-! ## A129449.P10621865681873888294

`A033999(n)*A096936(2*n+1)`
-/

namespace A129449.P10621865681873888294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A096936 (2 * n + 1)

end

end A129449.P10621865681873888294

namespace A129449

/-- `A033999(n)*A096936(2*n+1)` -/
def P10621865681873888294.Spec : Prop :=
  ∀ n, P10621865681873888294.a n = A129449 n

end A129449

/-! ## A129449.P14446797178818183217

`A033999(n)*A115979(2*n+1)`
-/

namespace A129449.P14446797178818183217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A115979 (2 * n + 1)

end

end A129449.P14446797178818183217

namespace A129449

/-- `A033999(n)*A115979(2*n+1)` -/
def P14446797178818183217.Spec : Prop :=
  ∀ n, P14446797178818183217.a n = A129449 n

end A129449

/-! ## A129449.P4126683113972860865

`A057077(n+1)*A262780(n)`
-/

namespace A129449.P4126683113972860865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A262780 n

end

end A129449.P4126683113972860865

namespace A129449

/-- `A057077(n+1)*A262780(n)` -/
def P4126683113972860865.Spec : Prop :=
  ∀ n, P4126683113972860865.a n = A129449 n

end A129449

/-! ## A129449.P8637862968464501702

`A033762(n)*A097197(n)/A139135(n)`
-/

namespace A129449.P8637862968464501702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033762 n * A097197 n : ℚ) / (A139135 n : ℚ)

end

end A129449.P8637862968464501702

namespace A129449

/-- `A033762(n)*A097197(n)/A139135(n)` -/
def P8637862968464501702.Spec : Prop :=
  ∀ n, P8637862968464501702.a n = (A129449 n : ℚ)

end A129449

/-! ## A129449.P126631036887974579

`A164272(Δ[n²])/2`
-/

namespace A129449.P126631036887974579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164272 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A129449.P126631036887974579

namespace A129449

/-- `A164272(Δ[n²])/2` -/
def P126631036887974579.Spec : Prop :=
  ∀ n, P126631036887974579.a n = (A129449 n : ℚ)

end A129449

/-! ## A129449.P9257847904172082128

`A033762(n)*A057077(2*n)`
-/

namespace A129449.P9257847904172082128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 n * A057077 (2 * n)

end

end A129449.P9257847904172082128

namespace A129449

/-- `A033762(n)*A057077(2*n)` -/
def P9257847904172082128.Spec : Prop :=
  ∀ n, P9257847904172082128.a n = A129449 n

end A129449

/-! ## A129449.P165818690711926062

`A033999(n)*A035178(2*n+1)`
-/

namespace A129449.P165818690711926062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A035178 (2 * n + 1)

end

end A129449.P165818690711926062

namespace A129449

/-- `A033999(n)*A035178(2*n+1)` -/
def P165818690711926062.Spec : Prop :=
  ∀ n, P165818690711926062.a n = A129449 n

end A129449

/-! ## A129449.P3799693287832001797

`A033999(n)*A093829(2*n+1)`
-/

namespace A129449.P3799693287832001797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A093829 (2 * n + 1)

end

end A129449.P3799693287832001797

namespace A129449

/-- `A033999(n)*A093829(2*n+1)` -/
def P3799693287832001797.Spec : Prop :=
  ∀ n, P3799693287832001797.a n = A129449 n

end A129449

/-! ## A129449.P5670403331872259936

`A033999(n)*A112298(2*n+1)`
-/

namespace A129449.P5670403331872259936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112298 (2 * n + 1)

end

end A129449.P5670403331872259936

namespace A129449

/-- `A033999(n)*A112298(2*n+1)` -/
def P5670403331872259936.Spec : Prop :=
  ∀ n, P5670403331872259936.a n = A129449 n

end A129449

/-! ## A129449.P14320257779615566157

`A033999(n)*A113447(2*n+1)`
-/

namespace A129449.P14320257779615566157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113447 (2 * n + 1)

end

end A129449.P14320257779615566157

namespace A129449

/-- `A033999(n)*A113447(2*n+1)` -/
def P14320257779615566157.Spec : Prop :=
  ∀ n, P14320257779615566157.a n = A129449 n

end A129449

/-! ## A129449.P10238824653520206056

`A033999(n)*A113661(2*n+1)`
-/

namespace A129449.P10238824653520206056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113661 (2 * n + 1)

end

end A129449.P10238824653520206056

namespace A129449

/-- `A033999(n)*A113661(2*n+1)` -/
def P10238824653520206056.Spec : Prop :=
  ∀ n, P10238824653520206056.a n = A129449 n

end A129449

/-! ## A129449.P4374273147813856052

`A033999(n)*A122860(2*n+1)`
-/

namespace A129449.P4374273147813856052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A122860 (2 * n + 1)

end

end A129449.P4374273147813856052

namespace A129449

/-- `A033999(n)*A122860(2*n+1)` -/
def P4374273147813856052.Spec : Prop :=
  ∀ n, P4374273147813856052.a n = A129449 n

end A129449

/-! ## A129449.P4382285338188630035

`A033999(n)*A123331(2*n+1)`
-/

namespace A129449.P4382285338188630035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A123331 (2 * n + 1)

end

end A129449.P4382285338188630035

namespace A129449

/-- `A033999(n)*A123331(2*n+1)` -/
def P4382285338188630035.Spec : Prop :=
  ∀ n, P4382285338188630035.a n = A129449 n

end A129449

/-! ## A129449.P11706238723112776326

`A033999(n)*A137608(2*n+1)`
-/

namespace A129449.P11706238723112776326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A137608 (2 * n + 1)

end

end A129449.P11706238723112776326

namespace A129449

/-- `A033999(n)*A137608(2*n+1)` -/
def P11706238723112776326.Spec : Prop :=
  ∀ n, P11706238723112776326.a n = A129449 n

end A129449

/-! ## A129449.P8282075403954919111

`A010892(n)*A261884(2*n+1)`
-/

namespace A129449.P8282075403954919111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A261884 (2 * n + 1)

end

end A129449.P8282075403954919111

namespace A129449

/-- `A010892(n)*A261884(2*n+1)` -/
def P8282075403954919111.Spec : Prop :=
  ∀ n, P8282075403954919111.a n = A129449 n

end A129449

/-!
# A129451: Expansion of f(-x, -x^3) f(-x, x^2) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A129451, the canonical program `A129451.P17433401477157295441` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129451 has offset 0).

The definition of A129451 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129449, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129451.P17433401477157295441

`A129449(3*n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129451

/-- `A129449(3*n)` -/
def P17433401477157295441.Spec : Prop :=
  ∀ n, P17433401477157295441.a n = A129451 n

theorem P17433401477157295441.correct : P17433401477157295441.Spec := by
  intro n
  simp only [A129451]

end A129451

/-! ## A129451.P2854723809311738108

`(-1)^n*A097195(n)`
-/

namespace A129451.P2854723809311738108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A097195 n

end

end A129451.P2854723809311738108

namespace A129451

/-- `(-1)^n*A097195(n)` -/
def P2854723809311738108.Spec : Prop :=
  ∀ n, P2854723809311738108.a n = A129451 n

end A129451

/-! ## A129451.P11200844679534594008

`A097195(n)/A033999(n)`
-/

namespace A129451.P11200844679534594008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097195 n : ℚ) / (A033999 n : ℚ)

end

end A129451.P11200844679534594008

namespace A129451

/-- `A097195(n)/A033999(n)` -/
def P11200844679534594008.Spec : Prop :=
  ∀ n, P11200844679534594008.a n = (A129451 n : ℚ)

end A129451

/-! ## A129451.P11886808960420693303

`A097195(n)/A062157(n+1)`
-/

namespace A129451.P11886808960420693303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097195 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A129451.P11886808960420693303

namespace A129451

/-- `A097195(n)/A062157(n+1)` -/
def P11886808960420693303.Spec : Prop :=
  ∀ n, P11886808960420693303.a n = (A129451 n : ℚ)

end A129451

/-! ## A129451.P13509095375968127309

`A033716(A016921(n))/2*A309873(A327937(n+1))`
-/

namespace A129451.P13509095375968127309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 (A016921 n).toNat : ℚ) / 2 * (A309873 (A327937 (n + 1)).toNat : ℚ)

end

end A129451.P13509095375968127309

namespace A129451

/-- `A033716(A016921(n))/2*A309873(A327937(n+1))` -/
def P13509095375968127309.Spec : Prop :=
  ∀ n, P13509095375968127309.a n = (A129451 n : ℚ)

end A129451

/-! ## A129451.P5527842138738602062

`A033687(2*n)/(-1)^n`
-/

namespace A129451.P5527842138738602062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033687 (2 * n) : ℚ) / ((-1) ^ n : ℚ)

end

end A129451.P5527842138738602062

namespace A129451

/-- `A033687(2*n)/(-1)^n` -/
def P5527842138738602062.Spec : Prop :=
  ∀ n, P5527842138738602062.a n = (A129451 n : ℚ)

end A129451

/-! ## A129451.P14728407002946334920

`A033687(2*n)*A033999(n)`
-/

namespace A129451.P14728407002946334920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (2 * n) * A033999 n

end

end A129451.P14728407002946334920

namespace A129451

/-- `A033687(2*n)*A033999(n)` -/
def P14728407002946334920.Spec : Prop :=
  ∀ n, P14728407002946334920.a n = A129451 n

end A129451

/-! ## A129451.P16421883210656442156

`A005882(2*n)/A174971(n)`
-/

namespace A129451.P16421883210656442156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005882 (2 * n) : ℚ) / (A174971 n : ℚ)

end

end A129451.P16421883210656442156

namespace A129451

/-- `A005882(2*n)/A174971(n)` -/
def P16421883210656442156.Spec : Prop :=
  ∀ n, P16421883210656442156.a n = (A129451 n : ℚ)

end A129451

/-! ## A129451.P4595476665570515830

`(2-A010684(n))*A033687(2*n)`
-/

namespace A129451.P4595476665570515830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A033687 (2 * n)

end

end A129451.P4595476665570515830

namespace A129451

/-- `(2-A010684(n))*A033687(2*n)` -/
def P4595476665570515830.Spec : Prop :=
  ∀ n, P4595476665570515830.a n = A129451 n

end A129451

/-! ## A129451.P5253889299197177019

`A246650(2*n)`
-/

namespace A129451.P5253889299197177019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246650 (2 * n)

end

end A129451.P5253889299197177019

namespace A129451

/-- `A246650(2*n)` -/
def P5253889299197177019.Spec : Prop :=
  ∀ n, P5253889299197177019.a n = A129451 n

end A129451

/-! ## A129451.P4753130110072318780

`A246752(2*n)`
-/

namespace A129451.P4753130110072318780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246752 (2 * n)

end

end A129451.P4753130110072318780

namespace A129451

/-- `A246752(2*n)` -/
def P4753130110072318780.Spec : Prop :=
  ∀ n, P4753130110072318780.a n = A129451 n

end A129451

/-! ## A129451.P17896507011054660009

`A033999(n)*A122861(2*n)`
-/

namespace A129451.P17896507011054660009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A122861 (2 * n)

end

end A129451.P17896507011054660009

namespace A129451

/-- `A033999(n)*A122861(2*n)` -/
def P17896507011054660009.Spec : Prop :=
  ∀ n, P17896507011054660009.a n = A129451 n

end A129451

/-! ## A129451.P1534969001913897702

`A033999(n)*A129576(2*n)`
-/

namespace A129451.P1534969001913897702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A129576 (2 * n)

end

end A129451.P1534969001913897702

namespace A129451

/-- `A033999(n)*A129576(2*n)` -/
def P1534969001913897702.Spec : Prop :=
  ∀ n, P1534969001913897702.a n = A129451 n

end A129451

/-! ## A129451.P17558579992763397338

`A033999(n)*A227696(2*n)`
-/

namespace A129451.P17558579992763397338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A227696 (2 * n)

end

end A129451.P17558579992763397338

namespace A129451

/-- `A033999(n)*A227696(2*n)` -/
def P17558579992763397338.Spec : Prop :=
  ∀ n, P17558579992763397338.a n = A129451 n

end A129451

/-! ## A129451.P4522317576184567452

`(2-A010684(n))*A122861(2*n)`
-/

namespace A129451.P4522317576184567452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A122861 (2 * n)

end

end A129451.P4522317576184567452

namespace A129451

/-- `(2-A010684(n))*A122861(2*n)` -/
def P4522317576184567452.Spec : Prop :=
  ∀ n, P4522317576184567452.a n = A129451 n

end A129451

/-! ## A129451.P6835991839346485759

`(2-A010684(n))*A227696(2*n)`
-/

namespace A129451.P6835991839346485759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A227696 (2 * n)

end

end A129451.P6835991839346485759

namespace A129451

/-- `(2-A010684(n))*A227696(2*n)` -/
def P6835991839346485759.Spec : Prop :=
  ∀ n, P6835991839346485759.a n = A129451 n

end A129451

/-! ## A129451.P17409520479275267562

`(A176040(n)-2)*A129576(2*n)`
-/

namespace A129451.P17409520479275267562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176040 n - 2) * A129576 (2 * n)

end

end A129451.P17409520479275267562

namespace A129451

/-- `(A176040(n)-2)*A129576(2*n)` -/
def P17409520479275267562.Spec : Prop :=
  ∀ n, P17409520479275267562.a n = A129451 n

end A129451

/-! ## A129451.P6435950429593974469

`A033687(2*n)*A057077(2*n)`
-/

namespace A129451.P6435950429593974469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (2 * n) * A057077 (2 * n)

end

end A129451.P6435950429593974469

namespace A129451

/-- `A033687(2*n)*A057077(2*n)` -/
def P6435950429593974469.Spec : Prop :=
  ∀ n, P6435950429593974469.a n = A129451 n

end A129451

/-! ## A129451.P7980496609832529816

`A246650(n+n)%A003057(n+2)`
-/

namespace A129451.P7980496609832529816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246650 (n + n)) (A003057 (n + 2))

end

end A129451.P7980496609832529816

namespace A129451

/-- `A246650(n+n)%A003057(n+2)` -/
def P7980496609832529816.Spec : Prop :=
  ∀ n, P7980496609832529816.a n = A129451 n

end A129451

/-! ## A129451.P3039089805846167746

`(1-8/2)*A227696(2*n)/A174971(n+1)`
-/

namespace A129451.P3039089805846167746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (8 : ℚ) / 2) * (A227696 (2 * n) : ℚ) / (A174971 (n + 1) : ℚ)

end

end A129451.P3039089805846167746

namespace A129451

/-- `(1-8/2)*A227696(2*n)/A174971(n+1)` -/
def P3039089805846167746.Spec : Prop :=
  ∀ n, P3039089805846167746.a n = (A129451 n : ℚ)

end A129451

/-!
# A129452: Expansion of (1-9*x^2-27*x^3)/((1+3*x+9*x^2)*(1-4*x-9*x^2-9*x^3+81*x^4)).

The programs for A129452, there is no canonical definition to state claims against.
-/

/-! ## A129452.P15623232079295844102

`A051724((sqrt(2-and(1, n))*comp[6*n])^n-n)`
-/

namespace A129452.P15623232079295844102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway ((Real.sqrt (2 - (Nat.land 1 n : ℤ) : ℝ) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)) ^ n - (n : ℝ))).toNat

end

end A129452.P15623232079295844102

/-!
# A129453: An analog of Pascal's triangle based on A092287. T(n,k) = A092287(n)/(A092287(n-k)*A092287(k)), 0 <= k <= n.

The programs for A129453, there is no canonical definition to state claims against.
-/

/-! ## A129453.P11995103287156252871

`gcd(A064549(A141686(n+1)), A129455(n))`
-/

namespace A129453.P11995103287156252871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064549 (A141686 (n + 1)).toNat) (A129455 n)

end

end A129453.P11995103287156252871

/-! ## A129453.P1968425248699881100

`A337223(A129455(n))`
-/

namespace A129453.P1968425248699881100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 (A129455 n).toNat

end

end A129453.P1968425248699881100

/-! ## A129453.P3514738200484827949

`A000188(A129439(n)^3)`
-/

namespace A129453.P3514738200484827949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A129439 n ^ 3).toNat

end

end A129453.P3514738200484827949

/-! ## A129453.P13706437430838812805

`filter[A364812(n), A228813(#)]`
-/

namespace A129453.P13706437430838812805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228813 (f1 j).toNat = 1) n)

end

end A129453.P13706437430838812805

/-! ## A129453.P14464892942759082901

`filter[A364812(n), A255887(#)]`
-/

namespace A129453.P14464892942759082901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255887 (f1 j).toNat = 1) n)

end

end A129453.P14464892942759082901

/-!
# A129454: a(n) = Product{i=1..n-1} Product{j=1..n-1} Product{k=1..n-1} gcd(i,j,k).

The programs for A129454, there is no canonical definition to state claims against.
-/

/-! ## A129454.P2139366012925480740

`∏[A129455(A152947(n+1))]`
-/

namespace A129454.P2139366012925480740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129455 (A152947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129454.P2139366012925480740

/-! ## A129454.P2895752514756312176

`∏[A129455(A186752(n+1))]`
-/

namespace A129454.P2895752514756312176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129455 (A186752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129454.P2895752514756312176

/-! ## A129454.P11651701277845222741

`∏[A225546(A319559(n))]`
-/

namespace A129454.P11651701277845222741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A319559 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129454.P11651701277845222741

/-!
# A129455: An analog of Pascal's triangle based on A129454. T(n, k) = A129454(n+1)/(A129454(n-k+1)*A129454(k+1)).

The programs for A129455, there is no canonical definition to state claims against.
-/

/-! ## A129455.P3254483117928295339

`A202818(A008459(n))`
-/

namespace A129455.P3254483117928295339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202818 (A008459 n).toNat

end

end A129455.P3254483117928295339

/-! ## A129455.P3877523031679048210

`A135086(A128592(n))`
-/

namespace A129455.P3877523031679048210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135086 (A128592 n).toNat

end

end A129455.P3877523031679048210

/-! ## A129455.P4834759652952623903

`A202818(A082043(n))`
-/

namespace A129455.P4834759652952623903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202818 (A082043 n).toNat

end

end A129455.P4834759652952623903

/-! ## A129455.P10109275433293243771

`A102101(A187617(n))`
-/

namespace A129455.P10109275433293243771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102101 (A187617 n).toNat

end

end A129455.P10109275433293243771

/-!
# A129457: a(1)=1; a(n) = number of earlier terms of the sequence that are coprime to (n+a(n-1)).

The programs for A129457, there is no canonical definition to state claims against.
-/

/-! ## A129457.P5059566320622908246

`A164555(A319002(2*n+3))+A071178(A236291(n))`
-/

namespace A129457.P5059566320622908246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 (A319002 (2 * n + 3)).toNat + A071178 (A236291 n).toNat

end

end A129457.P5059566320622908246

/-! ## A129457.P15730315277895152993

`A305079(A280140(n))+1`
-/

namespace A129457.P15730315277895152993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A280140 n).toNat + 1

end

end A129457.P15730315277895152993

/-! ## A129457.P6460859290034710214

`A305079(2*A280140(n))`
-/

namespace A129457.P6460859290034710214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (2 * A280140 n).toNat

end

end A129457.P6460859290034710214

/-! ## A129457.P15155170215804464907

`A318874(or(A001511(n+1), A136108(n)))`
-/

namespace A129457.P15155170215804464907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (Int.lor (A001511 (n + 1)) (A136108 n)).toNat

end

end A129457.P15155170215804464907

/-! ## A129457.P4611136486841473193

`A099766(A135405(n))`
-/

namespace A129457.P4611136486841473193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099766 (A135405 n).toNat

end

end A129457.P4611136486841473193

/-!
# A129458: Row sums of triangle A129065 (v=1 member of a family).

The programs for A129458, there is no canonical definition to state claims against.
-/

/-! ## A129458.P12634475499781407352

`A241068(∑[2^n])`
-/

namespace A129458.P12634475499781407352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241068 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129458.P12634475499781407352

/-!
# A129459: Slowest increasing sequence that starts with 0 and has property that multiplying two consecutive terms gives a number which shares at least one digit with at least one of the terms.

The programs for A129459, there is no canonical definition to state claims against.
-/

/-! ## A129459.P7601896959461947876

`comp[A375211(n+1)]`
-/

namespace A129459.P7601896959461947876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A129459.P7601896959461947876

/-! ## A129459.P15449052119418368299

`eq[char[A375211(n+1)], A000007(n+1)]`
-/

namespace A129459.P15449052119418368299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375211 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A129459.P15449052119418368299

/-!
# A129460: Third column (m=2) of triangle A129065.

The programs for A129460, there is no canonical definition to state claims against.
-/

/-! ## A129460.P5987070473916238233

`(n+1)!*A001705(n+1)`
-/

namespace A129460.P5987070473916238233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A001705 (n + 1)

end

end A129460.P5987070473916238233

/-! ## A129460.P17137228856563696706

`A129065(A167614(n+1)-1)`
-/

namespace A129460.P17137228856563696706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129065 (A167614 (n + 1) - 1).toNat

end

end A129460.P17137228856563696706

/-! ## A129460.P9287665039868511179

`A129065(A000217(n+2)+2)`
-/

namespace A129460.P9287665039868511179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129065 (A000217 (n + 2) + 2).toNat

end

end A129460.P9287665039868511179

/-! ## A129460.P18393432190520228105

`Δ[A007489(n)]*A001705(n+1)`
-/

namespace A129460.P18393432190520228105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001705 (n + 1)

end

end A129460.P18393432190520228105

/-! ## A129460.P3626359245135640404

`A000142(n+1)*A001705(n+1)`
-/

namespace A129460.P3626359245135640404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A001705 (n + 1)

end

end A129460.P3626359245135640404

/-!
# A129461: Fourth column (m=3) of triangle A129065.

The programs for A129461, there is no canonical definition to state claims against.
-/

/-! ## A129461.P14687168991131140223

`A129065(∑[n+3]+6)`
-/

namespace A129461.P14687168991131140223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129065 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A129461.P14687168991131140223

/-! ## A129461.P1247135621039253022

`A358842(3*n+2)+A129065(A167614(n+2))`
-/

namespace A129461.P1247135621039253022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358842 (3 * n + 2) + A129065 (A167614 (n + 2)).toNat

end

end A129461.P1247135621039253022

/-!
# A129463: Row sums of triangle A129462 (v=2 member of a certain family).

The programs for A129463, there is no canonical definition to state claims against.
-/

/-! ## A129463.P16106127030664238775

`1-A008624(∑[A275829(n)])`
-/

namespace A129463.P16106127030664238775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008624 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129463.P16106127030664238775

/-! ## A129463.P11059707748548217100

`A055641(n)-A007514(A123165(n+1))`
-/

namespace A129463.P11059707748548217100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n - A007514 (A123165 (n + 1)).toNat

end

end A129463.P11059707748548217100

/-!
# A129464: Second column (m=1) of triangle A129462 (v=2 member of a certain family).

The programs for A129464, there is no canonical definition to state claims against.
-/

/-! ## A129464.P15357385498697201658

`∏[floor(1/(γ-n))+n²]`
-/

namespace A129464.P15357385498697201658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129464.P15357385498697201658

/-! ## A129464.P17781083411475064462

`a(n-1)*(n²-1)` with `a(0)=1, a(1)=-2`
-/

namespace A129464.P17781083411475064462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 1) * ((n ^ 2 : ℤ) - 1)

end

end A129464.P17781083411475064462

/-! ## A129464.P5186273499991457336

`a(n-1)/(n²-1)^(-1)` with `a(0)=1, a(1)=-2`
-/

namespace A129464.P5186273499991457336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 1) / ((n ^ 2 : ℤ) - 1 : ℚ) ^ (-1 : ℤ)

end

end A129464.P5186273499991457336

/-! ## A129464.P12870203278078886942

`(n+1)*(n-1)*a(n-1)` with `a(0)=1, a(1)=-2`
-/

namespace A129464.P12870203278078886942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  (n + 1 : ℤ) * (((n : ℤ) - 1) * a (n - 1))

end

end A129464.P12870203278078886942

/-! ## A129464.P4621521397095033897

`A129462(∑[n+1]+1)`
-/

namespace A129464.P4621521397095033897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129462 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A129464.P4621521397095033897

/-!
# A129465: Third column (m=2) sequence of triangle A129462 (v=2 member of a certain family).

The programs for A129465, there is no canonical definition to state claims against.
-/

/-! ## A129465.P8508405282530084558

`(n+2)*n*a(n-1)-A010790(n)` with `a(0)=1`
-/

namespace A129465.P8508405282530084558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) * ((n : ℤ) * a (n - 1)) - A010790 n

end

end A129465.P8508405282530084558

/-! ## A129465.P17037957704014390515

`A129462(A167614(n+1)-1)`
-/

namespace A129465.P17037957704014390515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129462 (A167614 (n + 1) - 1).toNat

end

end A129465.P17037957704014390515

/-! ## A129465.P12433241142391931093

`A129462(A000217(n+2)+2)`
-/

namespace A129465.P12433241142391931093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129462 (A000217 (n + 2) + 2).toNat

end

end A129465.P12433241142391931093

/-! ## A129465.P11348284290508442646

`a(n-1)*A005563(n)-A010790(n)` with `a(0)=1`
-/

namespace A129465.P11348284290508442646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A005563 n - A010790 n

end

end A129465.P11348284290508442646

/-! ## A129465.P16935775835181188309

`a(n-1)*A132411(n+1)-A010790(n)` with `a(0)=1`
-/

namespace A129465.P16935775835181188309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A132411 (n + 1) - A010790 n

end

end A129465.P16935775835181188309

/-!
# A129466: Fourth column (m=3) sequence of triangle A129462 (v=2 member of a certain family).

The programs for A129466, there is no canonical definition to state claims against.
-/

/-! ## A129466.P3669587502572660302

`A129462(∑[n+3]+6)`
-/

namespace A129466.P3669587502572660302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129462 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A129466.P3669587502572660302

/-! ## A129466.P1983624264838476203

`record[A129462(n)]%A235982(2*n+3)`
-/

namespace A129466.P1983624264838476203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A235982 (2 * n + 3))

end

end A129466.P1983624264838476203

/-! ## A129466.P717670553600464248

`record[A129462(A248333(n))]`
-/

namespace A129466.P717670553600464248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129462 (A248333 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129466.P717670553600464248

/-! ## A129466.P8651533861818922027

`record[A129462(A091246(n+1))]`
-/

namespace A129466.P8651533861818922027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129462 (A091246 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129466.P8651533861818922027

/-!
# A129467: Orthogonal polynomials with all zeros integers from 2*A000217.

The programs for A129467, there is no canonical definition to state claims against.
-/

/-! ## A129467.P17608689958669504250

`A191936(∑[char[∑[n]]]²-n)`
-/

namespace A129467.P17608689958669504250
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191936 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A129467.P17608689958669504250

/-! ## A129467.P12731591863677364482

`or(A000007(n), A191936(A038722(n+1)))`
-/

namespace A129467.P12731591863677364482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A191936 (A038722 (n + 1)).toNat)

end

end A129467.P12731591863677364482

/-! ## A129467.P4366624210684423915

`A191936(A038722(n+1))+A000007(2*(n+2))`
-/

namespace A129467.P4366624210684423915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191936 (A038722 (n + 1)).toNat + A000007 (2 * (n + 2))

end

end A129467.P4366624210684423915

/-! ## A129467.P8941802409652647110

`A194186(A095791(n))+A191936(A038722(n+1))`
-/

namespace A129467.P8941802409652647110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (A095791 n).toNat + A191936 (A038722 (n + 1)).toNat

end

end A129467.P8941802409652647110

/-! ## A129467.P3379015241822984976

`A191936(A038722(n+1))%A011782(n+3)`
-/

namespace A129467.P3379015241822984976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191936 (A038722 (n + 1)).toNat) (A011782 (n + 3))

end

end A129467.P3379015241822984976

/-!
# A129468: Unitary abundance of n.

The programs for A129468, the canonical program `A129468.P11362039589036067826` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129468 has offset 1).

The definition of A129468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129468.P11362039589036067826

`A034460(n+1)-(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A129468

/-- `A034460(n+1)-(n+1)` -/
def P11362039589036067826.Spec : Prop :=
  ∀ n, P11362039589036067826.a n = A129468 (n + 1)

theorem P11362039589036067826.correct : P11362039589036067826.Spec := by
  intro n
  simp only [A129468, Nat.add_sub_cancel]

end A129468

/-! ## A129468.P394699128906115647

`A345451(n+1)-Δ[n²]`
-/

namespace A129468.P394699128906115647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A129468.P394699128906115647

namespace A129468

/-- `A345451(n+1)-Δ[n²]` -/
def P394699128906115647.Spec : Prop :=
  ∀ n, P394699128906115647.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P13134634296537959944

`A034448(n+1)-2*(n+1)`
-/

namespace A129468.P13134634296537959944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (2 * (n + 1) : ℤ)

end

end A129468.P13134634296537959944

namespace A129468

/-- `A034448(n+1)-2*(n+1)` -/
def P13134634296537959944.Spec : Prop :=
  ∀ n, P13134634296537959944.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P7294973097201379896

`(A063919(n+1)-n)%(n+1)-1`
-/

namespace A129468.P7294973097201379896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063919 (n + 1) - (n : ℤ)) (n + 1 : ℤ) - 1

end

end A129468.P7294973097201379896

namespace A129468

/-- `(A063919(n+1)-n)%(n+1)-1` -/
def P7294973097201379896.Spec : Prop :=
  ∀ n, P7294973097201379896.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P5284423656036926313

`A064971(n+1)/(n+1)-2*(n+1)`
-/

namespace A129468.P5284423656036926313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (n + 1 : ℚ) - (2 * (n + 1) : ℚ)

end

end A129468.P5284423656036926313

namespace A129468

/-- `A064971(n+1)/(n+1)-2*(n+1)` -/
def P5284423656036926313.Spec : Prop :=
  ∀ n, P5284423656036926313.a n = (A129468 (n + 1) : ℚ)

end A129468

/-! ## A129468.P15541691184063764299

`A033880(n+1)-A048146(n+1)`
-/

namespace A129468.P15541691184063764299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) - A048146 (n + 1)

end

end A129468.P15541691184063764299

namespace A129468

/-- `A033880(n+1)-A048146(n+1)` -/
def P15541691184063764299.Spec : Prop :=
  ∀ n, P15541691184063764299.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P10688694025807560326

`A063919(n+1)-(A028310(n)+1)`
-/

namespace A129468.P10688694025807560326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1) - (A028310 n + 1)

end

end A129468.P10688694025807560326

namespace A129468

/-- `A063919(n+1)-(A028310(n)+1)` -/
def P10688694025807560326.Spec : Prop :=
  ∀ n, P10688694025807560326.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P10227272641136273522

`A098189(n+1)-A053158(n+1)`
-/

namespace A129468.P10227272641136273522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098189 (n + 1) - A053158 (n + 1)

end

end A129468.P10227272641136273522

namespace A129468

/-- `A098189(n+1)-A053158(n+1)` -/
def P10227272641136273522.Spec : Prop :=
  ∀ n, P10227272641136273522.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P8867633622440520271

`A064212(n+1)-A224880(n+1)`
-/

namespace A129468.P8867633622440520271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064212 (n + 1) - A224880 (n + 1)

end

end A129468.P8867633622440520271

namespace A129468

/-- `A064212(n+1)-A224880(n+1)` -/
def P8867633622440520271.Spec : Prop :=
  ∀ n, P8867633622440520271.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P14004937056084748843

`A348508(n+1)-A348732(n+1)`
-/

namespace A129468.P14004937056084748843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348508 (n + 1) - A348732 (n + 1)

end

end A129468.P14004937056084748843

namespace A129468

/-- `A348508(n+1)-A348732(n+1)` -/
def P14004937056084748843.Spec : Prop :=
  ∀ n, P14004937056084748843.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P16438289220644533920

`-(A048146(n+1)+A033879(n+1))`
-/

namespace A129468.P16438289220644533920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A048146 (n + 1) + A033879 (n + 1))

end

end A129468.P16438289220644533920

namespace A129468

/-- `-(A048146(n+1)+A033879(n+1))` -/
def P16438289220644533920.Spec : Prop :=
  ∀ n, P16438289220644533920.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P1830540059843883105

`A237588(n+1)-(A048146(n+1)+1)`
-/

namespace A129468.P1830540059843883105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) - (A048146 (n + 1) + 1)

end

end A129468.P1830540059843883105

namespace A129468

/-- `A237588(n+1)-(A048146(n+1)+1)` -/
def P1830540059843883105.Spec : Prop :=
  ∀ n, P1830540059843883105.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P11459562976951173703

`2*A325977(n+1)-A048250(n+1)`
-/

namespace A129468.P11459562976951173703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325977 (n + 1) - A048250 (n + 1)

end

end A129468.P11459562976951173703

namespace A129468

/-- `2*A325977(n+1)-A048250(n+1)` -/
def P11459562976951173703.Spec : Prop :=
  ∀ n, P11459562976951173703.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P16449581045585680786

`A001065(n+1)-(A048146(n+1)+n+1)`
-/

namespace A129468.P16449581045585680786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (A048146 (n + 1) + (n + 1 : ℤ))

end

end A129468.P16449581045585680786

namespace A129468

/-- `A001065(n+1)-(A048146(n+1)+n+1)` -/
def P16449581045585680786.Spec : Prop :=
  ∀ n, P16449581045585680786.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P2411548526461531037

`A325977(n+1)-(A325978(n+1)+A048146(n+1))`
-/

namespace A129468.P2411548526461531037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) - (A325978 (n + 1) + A048146 (n + 1))

end

end A129468.P2411548526461531037

namespace A129468

/-- `A325977(n+1)-(A325978(n+1)+A048146(n+1))` -/
def P2411548526461531037.Spec : Prop :=
  ∀ n, P2411548526461531037.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P12007527424334584345

`A063919(n+1)-A254667(n+1)`
-/

namespace A129468.P12007527424334584345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1) - A254667 (n + 1)

end

end A129468.P12007527424334584345

namespace A129468

/-- `A063919(n+1)-A254667(n+1)` -/
def P12007527424334584345.Spec : Prop :=
  ∀ n, P12007527424334584345.a n = A129468 (n + 1)

end A129468

/-! ## A129468.P4955728218371691837

`A028310(A034448(n+1))-A004277(n+1)`
-/

namespace A129468.P4955728218371691837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A034448 (n + 1)).toNat - A004277 (n + 1)

end

end A129468.P4955728218371691837

namespace A129468

/-- `A028310(A034448(n+1))-A004277(n+1)` -/
def P4955728218371691837.Spec : Prop :=
  ∀ n, P4955728218371691837.a n = A129468 (n + 1)

end A129468

/-!
# A129470: Primes p such that the largest prime factor of p+1 has Erdős-Selfridge class+ < N-1 if p is of class N+.

The programs for A129470, there is no canonical definition to state claims against.
-/

/-! ## A129470.P13181062829447145891

`∪[A129471(n+1), A129472(n+1)]`
-/

namespace A129470.P13181062829447145891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129470.P13181062829447145891

/-! ## A129470.P9691711201460312857

`∪[A129471(n+1), A129469(n+3)]%A129473(3*(n+1))`
-/

namespace A129470.P9691711201460312857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129469 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A129473 (3 * (n + 1)))

end

end A129470.P9691711201460312857

/-! ## A129470.P8843717356552685703

`∪[A129469(n+3), A129471(n+1)]%A129477(2*n+5)`
-/

namespace A129470.P8843717356552685703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129469 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129471 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A129477 (2 * n + 5))

end

end A129470.P8843717356552685703

/-!
# A129471: Primes p of Erdős-Selfridge class 3+ with largest prime factor of p+1 not of class 2+.

The programs for A129471, there is no canonical definition to state claims against.
-/

/-! ## A129471.P177960816463033722

`A129470(record[A014499(n+2)-1])`
-/

namespace A129471.P177960816463033722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129470 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A129471.P177960816463033722

/-! ## A129471.P15804015718767171310

`A129470(∑[A266303(floor((n²-n)/7))])`
-/

namespace A129471.P15804015718767171310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 7⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129470 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129471.P15804015718767171310

/-! ## A129471.P7971816959791649676

`p?[A129470(n+1)-A129467(A129455(n))]`
-/

namespace A129471.P7971816959791649676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129470 (n + 1) - A129467 (A129455 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129471.P7971816959791649676

/-! ## A129471.P1786016734373725075

`p?[A129455(A129455(n)²)*A129470(n+1)]`
-/

namespace A129471.P1786016734373725075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129455 (A129455 n ^ 2).toNat * A129470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129471.P1786016734373725075

/-!
# A129472: Primes p of Erdős-Selfridge class 4+ with largest prime factor of p+1 not of class 3+.

The programs for A129472, there is no canonical definition to state claims against.
-/

/-! ## A129472.P1564819133594302466

`∩[A129470(n+1), A142145(n+1)]`
-/

namespace A129472.P1564819133594302466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129472.P1564819133594302466

/-!
# A129476: a(n) is the concatenation in increasing order of all single-digit divisors of n.

The programs for A129476, there is no canonical definition to state claims against.
-/

/-! ## A129476.P9688639415800200585

`A004185(A256824(A009995(n+2)))`
-/

namespace A129476.P9688639415800200585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A256824 (A009995 (n + 2)).toNat).toNat

end

end A129476.P9688639415800200585

/-!
# A129479: Triangle read by rows: A054523 * A097806 as infinite lower triangular matrices.

The programs for A129479, the canonical program `A129479.P1918562767807399019` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129479 has offset 1).

The definition of A129479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129479.P1918562767807399019

`A054523(n+1)+A054523(n+2)*A349317(n+2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A129479

/-- `A054523(n+1)+A054523(n+2)*A349317(n+2)` -/
def P1918562767807399019.Spec : Prop :=
  ∀ n, P1918562767807399019.a n = A129479 (n + 1)

theorem P1918562767807399019.correct : P1918562767807399019.Spec := by
  intro n
  simp only [A129479, Nat.add_sub_cancel]

end A129479

/-! ## A129479.P12739245554155764191

`A054523(n+1)+A054523(n+2)%A004736(n+1)`
-/

namespace A129479.P12739245554155764191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) + Int.tmod (A054523 (n + 2)) (A004736 (n + 1))

end

end A129479.P12739245554155764191

namespace A129479

/-- `A054523(n+1)+A054523(n+2)%A004736(n+1)` -/
def P12739245554155764191.Spec : Prop :=
  ∀ n, P12739245554155764191.a n = A129479 (n + 1)

end A129479

/-! ## A129479.P5591754825568362104

`C(A271824(2*n+1), A185335(A321964(n)))`
-/

namespace A129479.P5591754825568362104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A271824 (2 * n + 1)).toNat (A185335 (A321964 n).toNat).toNat

end

end A129479.P5591754825568362104

namespace A129479

/-- `C(A271824(2*n+1), A185335(A321964(n)))` -/
def P5591754825568362104.Spec : Prop :=
  ∀ n, (P5591754825568362104.a n : ℤ) = A129479 (n + 1)

end A129479

/-! ## A129479.P17776440485504785035

`A010766(n+1)-A004197(A187829(n+1))`
-/

namespace A129479.P17776440485504785035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - A004197 (A187829 (n + 1)).toNat

end

end A129479.P17776440485504785035

namespace A129479

/-- `A010766(n+1)-A004197(A187829(n+1))` -/
def P17776440485504785035.Spec : Prop :=
  ∀ n, P17776440485504785035.a n = A129479 (n + 1)

end A129479

/-! ## A129479.P11418288044808385412

`A010766(n+1)-A082858(A175068(n+1))`
-/

namespace A129479.P11418288044808385412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - A082858 (A175068 (n + 1)).toNat

end

end A129479.P11418288044808385412

namespace A129479

/-- `A010766(n+1)-A082858(A175068(n+1))` -/
def P11418288044808385412.Spec : Prop :=
  ∀ n, P11418288044808385412.a n = A129479 (n + 1)

end A129479

/-!
# A129480: a(n) = Prime(17*n).

The programs for A129480, the canonical program `A129480.P12919160068811475760` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129480 has offset 1).

The definition of A129480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129480.P12919160068811475760

`A000040(17*(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129480

/-- `A000040(17*(n+1))` -/
def P12919160068811475760.Spec : Prop :=
  ∀ n, P12919160068811475760.a n = A129480 (n + 1)

theorem P12919160068811475760.correct : P12919160068811475760.Spec := by
  intro n
  simp only [A129480, Nat.add_sub_cancel]

end A129480

/-! ## A129480.P1145148096388204389

`A065091(4*4*(n+1)+n)`
-/

namespace A129480.P1145148096388204389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (4 * (4 * (n + 1)) + n)

end

end A129480.P1145148096388204389

namespace A129480

/-- `A065091(4*4*(n+1)+n)` -/
def P1145148096388204389.Spec : Prop :=
  ∀ n, P1145148096388204389.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P9170449909745992423

`A008578(3*6*(n+1)-n)`
-/

namespace A129480.P9170449909745992423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (3 * (6 * (n + 1)) - n)

end

end A129480.P9170449909745992423

namespace A129480

/-- `A008578(3*6*(n+1)-n)` -/
def P9170449909745992423.Spec : Prop :=
  ∀ n, P9170449909745992423.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P9052063389823540245

`xor(1, A040976(17*(n+1))+2)+1`
-/

namespace A129480.P9052063389823540245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A040976 (17 * (n + 1)) + 2) + 1

end

end A129480.P9052063389823540245

namespace A129480

/-- `xor(1, A040976(17*(n+1))+2)+1` -/
def P9052063389823540245.Spec : Prop :=
  ∀ n, P9052063389823540245.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P17120147500787523073

`A040976(((8/2)²+1)*(n+1))+2`
-/

namespace A129480.P17120147500787523073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.roundAway ((((8 : ℚ) / 2) ^ 2 + 1) * (n + 1 : ℚ))).toNat + 2

end

end A129480.P17120147500787523073

namespace A129480

/-- `A040976(((8/2)²+1)*(n+1))+2` -/
def P17120147500787523073.Spec : Prop :=
  ∀ n, P17120147500787523073.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P7850549914678914451

`A006093(19*(n+1)-2*(n+1))+1`
-/

namespace A129480.P7850549914678914451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (19 * (n + 1) - 2 * (n + 1)) + 1

end

end A129480.P7850549914678914451

namespace A129480

/-- `A006093(19*(n+1)-2*(n+1))+1` -/
def P7850549914678914451.Spec : Prop :=
  ∀ n, P7850549914678914451.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P3400663558369705479

`A045319(A361692(n+1))`
-/

namespace A129480.P3400663558369705479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A361692 (n + 1)).toNat

end

end A129480.P3400663558369705479

namespace A129480

/-- `A045319(A361692(n+1))` -/
def P3400663558369705479.Spec : Prop :=
  ∀ n, P3400663558369705479.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P332854504917177126

`record[A000040(A317317(n+2))]`
-/

namespace A129480.P332854504917177126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A317317 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129480.P332854504917177126

namespace A129480

/-- `record[A000040(A317317(n+2))]` -/
def P332854504917177126.Spec : Prop :=
  ∀ n, P332854504917177126.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P2638871416201458496

`A006005(A361692(n+1)+1)`
-/

namespace A129480.P2638871416201458496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A361692 (n + 1) + 1).toNat

end

end A129480.P2638871416201458496

namespace A129480

/-- `A006005(A361692(n+1)+1)` -/
def P2638871416201458496.Spec : Prop :=
  ∀ n, P2638871416201458496.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P14656426038128676945

`A004139(A361692(n+1)-1)`
-/

namespace A129480.P14656426038128676945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A361692 (n + 1) - 1).toNat

end

end A129480.P14656426038128676945

namespace A129480

/-- `A004139(A361692(n+1)-1)` -/
def P14656426038128676945.Spec : Prop :=
  ∀ n, P14656426038128676945.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P4166431731144993133

`A045319(A125169(n)+1+n)`
-/

namespace A129480.P4166431731144993133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A125169 n + 1 + (n : ℤ)).toNat

end

end A129480.P4166431731144993133

namespace A129480

/-- `A045319(A125169(n)+1+n)` -/
def P4166431731144993133.Spec : Prop :=
  ∀ n, P4166431731144993133.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P18172566952347823555

`A157996(A106839(n)+1+n)`
-/

namespace A129480.P18172566952347823555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A106839 n + 1 + (n : ℤ)).toNat

end

end A129480.P18172566952347823555

namespace A129480

/-- `A157996(A106839(n)+1+n)` -/
def P18172566952347823555.Spec : Prop :=
  ∀ n, P18172566952347823555.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P7016897136121670354

`A045319(2*A017257(n)-n)`
-/

namespace A129480.P7016897136121670354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (2 * A017257 n - (n : ℤ)).toNat

end

end A129480.P7016897136121670354

namespace A129480

/-- `A045319(2*A017257(n)-n)` -/
def P7016897136121670354.Spec : Prop :=
  ∀ n, P7016897136121670354.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P14244015428556385095

`A004139(A239129(n+1)-(n+2))`
-/

namespace A129480.P14244015428556385095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A239129 (n + 1) - (n + 2 : ℤ)).toNat

end

end A129480.P14244015428556385095

namespace A129480

/-- `A004139(A239129(n+1)-(n+2))` -/
def P14244015428556385095.Spec : Prop :=
  ∀ n, P14244015428556385095.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P13330286705137285492

`A004139(A017233(2*n+1)-n)`
-/

namespace A129480.P13330286705137285492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A017233 (2 * n + 1) - (n : ℤ)).toNat

end

end A129480.P13330286705137285492

namespace A129480

/-- `A004139(A017233(2*n+1)-n)` -/
def P13330286705137285492.Spec : Prop :=
  ∀ n, P13330286705137285492.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P8498027851700116347

`A045319(A017245(2*n+1)-n)`
-/

namespace A129480.P8498027851700116347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017245 (2 * n + 1) - (n : ℤ)).toNat

end

end A129480.P8498027851700116347

namespace A129480

/-- `A045319(A017245(2*n+1)-n)` -/
def P8498027851700116347.Spec : Prop :=
  ∀ n, P8498027851700116347.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P18263783152346107814

`A071621(A017185(2*n+1)-n)`
-/

namespace A129480.P18263783152346107814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A017185 (2 * n + 1) - (n : ℤ)).toNat

end

end A129480.P18263783152346107814

namespace A129480

/-- `A071621(A017185(2*n+1)-n)` -/
def P18263783152346107814.Spec : Prop :=
  ∀ n, P18263783152346107814.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P18037812114828328443

`A108719(A017221(2*n+1)-n)`
-/

namespace A129480.P18037812114828328443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017221 (2 * n + 1) - (n : ℤ)).toNat

end

end A129480.P18037812114828328443

namespace A129480

/-- `A108719(A017221(2*n+1)-n)` -/
def P18037812114828328443.Spec : Prop :=
  ∀ n, P18037812114828328443.a n = A129480 (n + 1)

end A129480

/-! ## A129480.P10057122670913705544

`A157996(A017197(2*n+1)-n)`
-/

namespace A129480.P10057122670913705544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A017197 (2 * n + 1) - (n : ℤ)).toNat

end

end A129480.P10057122670913705544

namespace A129480

/-- `A157996(A017197(2*n+1)-n)` -/
def P10057122670913705544.Spec : Prop :=
  ∀ n, P10057122670913705544.a n = A129480 (n + 1)

end A129480

/-!
# A129481: a(n) = coefficient of x^n in n!*Product_{k=0..n} [Sum_{j=0..k} x^j/j! ].

The programs for A129481, there is no canonical definition to state claims against.
-/

/-! ## A129481.P18108373787604353227

`A098240(∏[a(n-1)+3])` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A129481.P18108373787604353227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 6] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098240 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A129481.P18108373787604353227

/-! ## A129481.P4894129312682991754

`A172528(A261631(n))`
-/

namespace A129481.P4894129312682991754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172528 (A261631 n).toNat

end

end A129481.P4894129312682991754

/-!
# A129482: E.g.f.: A(x) = Product_{n>=0} [1 + Sum_{k>=n+1} C(k-1,n)*x^k/k! ].

The programs for A129482, there is no canonical definition to state claims against.
-/

/-! ## A129482.P9336030861214962067

`A214568(A001844(n)^A034799(n))`
-/

namespace A129482.P9336030861214962067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214568 (SequenceMachineLib.roundAway ((A001844 n : ℚ) ^ (A034799 n : ℤ))).toNat

end

end A129482.P9336030861214962067

/-! ## A129482.P8861667297186859080

`A214568(A001844(n)^A047120(n))`
-/

namespace A129482.P8861667297186859080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214568 (SequenceMachineLib.roundAway ((A001844 n : ℚ) ^ (A047120 n : ℤ))).toNat

end

end A129482.P8861667297186859080

/-! ## A129482.P12525631996595842093

`A214568(A001844(n)^A294783(n))`
-/

namespace A129482.P12525631996595842093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214568 (SequenceMachineLib.roundAway ((A001844 n : ℚ) ^ (A294783 n : ℤ))).toNat

end

end A129482.P12525631996595842093

/-!
# A129483: E.g.f.: A(x) = Product_{n>=0} { exp(x)*[Sum_{k=0..n} (-x)^k/k! ] }.

The programs for A129483, there is no canonical definition to state claims against.
-/

/-! ## A129483.P5428834897773392049

`2-A371968(A000669(n+1))`
-/

namespace A129483.P5428834897773392049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A371968 (A000669 (n + 1)).toNat

end

end A129483.P5428834897773392049

/-! ## A129483.P7169276182501910609

`A323504(A334281(n))-A164863(n)`
-/

namespace A129483.P7169276182501910609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323504 (A334281 n).toNat - A164863 n

end

end A129483.P7169276182501910609

/-! ## A129483.P6691876405165378226

`A179750(A020330(n+1))-A000295(n)`
-/

namespace A129483.P6691876405165378226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179750 (A020330 (n + 1)).toNat - A000295 n

end

end A129483.P6691876405165378226

/-!
# A129484: Primes of the form 17k + 1.

The programs for A129484, the canonical program `A129484.P11226626540148171832` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129484 has offset 1).

The definition of A129484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129484.P11226626540148171832

`∪[A142476(n+1), A142497(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129484

/-- `∪[A142476(n+1), A142497(n+1)]` -/
def P11226626540148171832.Spec : Prop :=
  ∀ n, (P11226626540148171832.a n : ℤ) = A129484 (n + 1)

theorem P11226626540148171832.correct : P11226626540148171832.Spec := by
  intro n
  simp only [A129484, Nat.add_sub_cancel]

end A129484

/-! ## A129484.P15439382528156075338

`∩[A215165(n+1), A215392(n+1)]`
-/

namespace A129484.P15439382528156075338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129484.P15439382528156075338

namespace A129484

/-- `∩[A215165(n+1), A215392(n+1)]` -/
def P15439382528156075338.Spec : Prop :=
  ∀ n, (P15439382528156075338.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P10545055685453884305

`p?[17*n+1]`
-/

namespace A129484.P10545055685453884305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129484.P10545055685453884305

namespace A129484

/-- `p?[17*n+1]` -/
def P10545055685453884305.Spec : Prop :=
  ∀ n, (P10545055685453884305.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P9481114174404088823

`or(1, p?[a(n-1)+17])` with `a(0)=1`
-/

namespace A129484.P9481114174404088823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A129484.P9481114174404088823

namespace A129484

/-- `or(1, p?[a(n-1)+17])` -/
def P9481114174404088823.Spec : Prop :=
  ∀ n, (P9481114174404088823.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P1950738042453729592

`∏{d}[p?[a(n-1)+17], #]` with `a(0)=1`
-/

namespace A129484.P1950738042453729592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 17

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A129484.P1950738042453729592

namespace A129484

/-- `∏{d}[p?[a(n-1)+17], #]` -/
def P1950738042453729592.Spec : Prop :=
  ∀ n, (P1950738042453729592.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P9029406103564283714

`∑{p}[p?[a(n-1)+17], #]` with `a(0)=1`
-/

namespace A129484.P9029406103564283714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 17

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A129484.P9029406103564283714

namespace A129484

/-- `∑{p}[p?[a(n-1)+17], #]` -/
def P9029406103564283714.Spec : Prop :=
  ∀ n, (P9029406103564283714.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P9822704608487267037

`∏{p}[p?[a(n-1)+17], #]` with `a(0)=1`
-/

namespace A129484.P9822704608487267037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 17

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A129484.P9822704608487267037

namespace A129484

/-- `∏{p}[p?[a(n-1)+17], #]` -/
def P9822704608487267037.Spec : Prop :=
  ∀ n, (P9822704608487267037.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P16114110191283793363

`∏{p}[p?[2*(9*n-8)-n], #]`
-/

namespace A129484.P16114110191283793363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((9 * n : ℤ) - 8) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A129484.P16114110191283793363

namespace A129484

/-- `∏{p}[p?[2*(9*n-8)-n], #]` -/
def P16114110191283793363.Spec : Prop :=
  ∀ n, (P16114110191283793363.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P15406325723999141934

`∩[A215153(n+1), A215165(n+1)]`
-/

namespace A129484.P15406325723999141934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129484.P15406325723999141934

namespace A129484

/-- `∩[A215153(n+1), A215165(n+1)]` -/
def P15406325723999141934.Spec : Prop :=
  ∀ n, (P15406325723999141934.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P9049014116122189816

`∩[A215165(n+1), A215380(n+1)]`
-/

namespace A129484.P9049014116122189816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129484.P9049014116122189816

namespace A129484

/-- `∩[A215165(n+1), A215380(n+1)]` -/
def P9049014116122189816.Spec : Prop :=
  ∀ n, (P9049014116122189816.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P9232493980185151494

`∩[A215165(n+1), A215273(n+1)]`
-/

namespace A129484.P9232493980185151494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129484.P9232493980185151494

namespace A129484

/-- `∩[A215165(n+1), A215273(n+1)]` -/
def P9232493980185151494.Spec : Prop :=
  ∀ n, (P9232493980185151494.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P13326528793091856352

`∩[A215165(n+1), A215308(n+1)]`
-/

namespace A129484.P13326528793091856352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129484.P13326528793091856352

namespace A129484

/-- `∩[A215165(n+1), A215308(n+1)]` -/
def P13326528793091856352.Spec : Prop :=
  ∀ n, (P13326528793091856352.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P10591708333914378727

`∩[A215165(n+1), A215384(n+1)]`
-/

namespace A129484.P10591708333914378727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129484.P10591708333914378727

namespace A129484

/-- `∩[A215165(n+1), A215384(n+1)]` -/
def P10591708333914378727.Spec : Prop :=
  ∀ n, (P10591708333914378727.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P15536311817505815645

`∩[A215165(n+1), A215320(n+1)]`
-/

namespace A129484.P15536311817505815645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129484.P15536311817505815645

namespace A129484

/-- `∩[A215165(n+1), A215320(n+1)]` -/
def P15536311817505815645.Spec : Prop :=
  ∀ n, (P15536311817505815645.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P12383661751966390999

`or(1, p?[A215137(n)])`
-/

namespace A129484.P12383661751966390999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A129484.P12383661751966390999

namespace A129484

/-- `or(1, p?[A215137(n)])` -/
def P12383661751966390999.Spec : Prop :=
  ∀ n, P12383661751966390999.a n = A129484 (n + 1)

end A129484

/-! ## A129484.P15169701728584246866

`A215137(A124127(n+1))`
-/

namespace A129484.P15169701728584246866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (A124127 (n + 1)).toNat

end

end A129484.P15169701728584246866

namespace A129484

/-- `A215137(A124127(n+1))` -/
def P15169701728584246866.Spec : Prop :=
  ∀ n, P15169701728584246866.a n = A129484 (n + 1)

end A129484

/-! ## A129484.P4144504896717539188

`∩[A038889(n+1), A215137(n)]`
-/

namespace A129484.P4144504896717539188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129484.P4144504896717539188

namespace A129484

/-- `∩[A038889(n+1), A215137(n)]` -/
def P4144504896717539188.Spec : Prop :=
  ∀ n, (P4144504896717539188.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P12611841264105256771

`∩[A215153(n+1), A215137(n)]`
-/

namespace A129484.P12611841264105256771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129484.P12611841264105256771

namespace A129484

/-- `∩[A215153(n+1), A215137(n)]` -/
def P12611841264105256771.Spec : Prop :=
  ∀ n, (P12611841264105256771.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P5765793468697884676

`∩[A215165(n+1), A215137(n)]`
-/

namespace A129484.P5765793468697884676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129484.P5765793468697884676

namespace A129484

/-- `∩[A215165(n+1), A215137(n)]` -/
def P5765793468697884676.Spec : Prop :=
  ∀ n, (P5765793468697884676.a n : ℤ) = A129484 (n + 1)

end A129484

/-! ## A129484.P1063206471017517280

`∩[A215273(n+1), A215137(n)]`
-/

namespace A129484.P1063206471017517280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129484.P1063206471017517280

namespace A129484

/-- `∩[A215273(n+1), A215137(n)]` -/
def P1063206471017517280.Spec : Prop :=
  ∀ n, (P1063206471017517280.a n : ℤ) = A129484 (n + 1)

end A129484

/-!
# A129485: Odd unitary abundant numbers.

The programs for A129485, there is no canonical definition to state claims against.
-/

/-! ## A129485.P8292508484686762171

`∪[A112643(n+1), A129486(n+1)]`
-/

namespace A129485.P8292508484686762171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129485.P8292508484686762171

/-! ## A129485.P8998041344614428105

`A285615(n+1)/2`
-/

namespace A129485.P8998041344614428105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285615 (n + 1) : ℚ) / 2

end

end A129485.P8998041344614428105

/-! ## A129485.P6235633070996756406

`A000027(∩[A293186(n+1), A339938(n+1)])`
-/

namespace A129485.P6235633070996756406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339938 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A129485.P6235633070996756406

/-!
# A129487: Unitary deficient numbers.

The programs for A129487, the canonical program `A129487.P5016934466193962312` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129487 has offset 1).

The definition of A129487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129487.P5016934466193962312

`lt[A034460(n+1), n+1]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A129487

/-- `lt[A034460(n+1), n+1]+1` -/
def P5016934466193962312.Spec : Prop :=
  ∀ n, (P5016934466193962312.a n : ℤ) = A129487 (n + 1)

theorem P5016934466193962312.correct : P5016934466193962312.Spec := by
  intro n
  simp only [A129487, Nat.add_sub_cancel]

end A129487

/-! ## A129487.P16526960577281166238

`lt[A034448(n+1), 2*(n+1)]+1`
-/

namespace A129487.P16526960577281166238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A129487.P16526960577281166238

namespace A129487

/-- `lt[A034448(n+1), 2*(n+1)]+1` -/
def P16526960577281166238.Spec : Prop :=
  ∀ n, (P16526960577281166238.a n : ℤ) = A129487 (n + 1)

end A129487

/-! ## A129487.P6675887487407351386

`lt[A034460(A028310(n)), n]`
-/

namespace A129487.P6675887487407351386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A129487.P6675887487407351386

namespace A129487

/-- `lt[A034460(A028310(n)), n]` -/
def P6675887487407351386.Spec : Prop :=
  ∀ n, (P6675887487407351386.a n : ℤ) = A129487 (n + 1)

end A129487

/-! ## A129487.P8500376904678921064

`lt[A034448(abs(1-n)+1), A004277(n)]`
-/

namespace A129487.P8500376904678921064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129487.P8500376904678921064

namespace A129487

/-- `lt[A034448(abs(1-n)+1), A004277(n)]` -/
def P8500376904678921064.Spec : Prop :=
  ∀ n, (P8500376904678921064.a n : ℤ) = A129487 (n + 1)

end A129487

/-! ## A129487.P4113982483252900430

`lt[A034448(A028310(n)), A005843(n)]`
-/

namespace A129487.P4113982483252900430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129487.P4113982483252900430

namespace A129487

/-- `lt[A034448(A028310(n)), A005843(n)]` -/
def P4113982483252900430.Spec : Prop :=
  ∀ n, (P4113982483252900430.a n : ℤ) = A129487 (n + 1)

end A129487

/-! ## A129487.P8057236592028496378

`lt[A345451(A028310(n)), A004273(n)]`
-/

namespace A129487.P8057236592028496378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129487.P8057236592028496378

namespace A129487

/-- `lt[A345451(A028310(n)), A004273(n)]` -/
def P8057236592028496378.Spec : Prop :=
  ∀ n, (P8057236592028496378.a n : ℤ) = A129487 (n + 1)

end A129487

/-! ## A129487.P14104509428896341033

`lt[A063919(A028310(n)), A254667(n)]`
-/

namespace A129487.P14104509428896341033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129487.P14104509428896341033

namespace A129487

/-- `lt[A063919(A028310(n)), A254667(n)]` -/
def P14104509428896341033.Spec : Prop :=
  ∀ n, (P14104509428896341033.a n : ℤ) = A129487 (n + 1)

end A129487

/-! ## A129487.P1376536098622307283

`lt[A129468(n+1), A129448(2*(n+2))]+1`
-/

namespace A129487.P1376536098622307283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129448 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A129487.P1376536098622307283

namespace A129487

/-- `lt[A129468(n+1), A129448(2*(n+2))]+1` -/
def P1376536098622307283.Spec : Prop :=
  ∀ n, (P1376536098622307283.a n : ℤ) = A129487 (n + 1)

end A129487

/-! ## A129487.P3503385128971551647

`lt[A001221(n+1), A126302(A126302(n+1))]+1`
-/

namespace A129487.P3503385128971551647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (A126302 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A129487.P3503385128971551647

namespace A129487

/-- `lt[A001221(n+1), A126302(A126302(n+1))]+1` -/
def P3503385128971551647.Spec : Prop :=
  ∀ n, (P3503385128971551647.a n : ℤ) = A129487 (n + 1)

end A129487

/-! ## A129487.P7231022278979230620

`lt[A101941(n+1), 2]+1`
-/

namespace A129487.P7231022278979230620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101941 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A129487.P7231022278979230620

namespace A129487

/-- `lt[A101941(n+1), 2]+1` -/
def P7231022278979230620.Spec : Prop :=
  ∀ n, (P7231022278979230620.a n : ℤ) = A129487 (n + 1)

end A129487

/-!
# A129490: Number of digits in the decimal expansion of the number of partitions of 2^n.

The programs for A129490, there is no canonical definition to state claims against.
-/

/-! ## A129490.P9850381650899069972

`A295866(2^n)`
-/

namespace A129490.P9850381650899069972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (2 ^ n)

end

end A129490.P9850381650899069972

/-! ## A129490.P3639692615809417248

`A000194(A108469(n))`
-/

namespace A129490.P3639692615809417248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A108469 n).toNat

end

end A129490.P3639692615809417248

/-! ## A129490.P7244539849496552191

`A111654(A391600(n)+A000045(n))`
-/

namespace A129490.P7244539849496552191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A391600 n + A000045 n).toNat

end

end A129490.P7244539849496552191

/-! ## A129490.P14161771605473872113

`A232746(A000975(n)-A023443(n))`
-/

namespace A129490.P14161771605473872113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A000975 n - A023443 n).toNat

end

end A129490.P14161771605473872113

/-! ## A129490.P3489543345920718722

`A295884(n+1)+A295866(A000225(n))`
-/

namespace A129490.P3489543345920718722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (n + 1) + A295866 (A000225 n).toNat

end

end A129490.P3489543345920718722

/-!
# A129491: Digital sum of the 2^n-th partition number.

The programs for A129491, there is no canonical definition to state claims against.
-/

/-! ## A129491.P7748775005502970086

`A004088(2^n)`
-/

namespace A129491.P7748775005502970086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004088 (2 ^ n)

end

end A129491.P7748775005502970086

/-! ## A129491.P61683343739181508

`∑{digits}[A068413(n), #]`
-/

namespace A129491.P61683343739181508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A129491.P61683343739181508

/-! ## A129491.P9699406454255825432

`∑{digits}[A000041(2^n), #]`
-/

namespace A129491.P9699406454255825432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A129491.P9699406454255825432

/-! ## A129491.P16223582976009388733

`∑{digits}[record[A000041(A001316(n))], #]`
-/

namespace A129491.P16223582976009388733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A001316 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A129491.P16223582976009388733

/-! ## A129491.P130104051973897041

`∑{digits}[record[A000041(A130321(n))], #]`
-/

namespace A129491.P130104051973897041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A130321 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A129491.P130104051973897041

/-!
# A129492: Composite numbers k such that 2^k mod k is a power of 2.

The programs for A129492, the canonical program `A129492.P1594792937777551858` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129492 has offset 1).

The definition of A129492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129492.P1594792937777551858

`∩[A002808(n+1), comp[A226221(n+1)]]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129492

/-- `∩[A002808(n+1), comp[A226221(n+1)]]` -/
def P1594792937777551858.Spec : Prop :=
  ∀ n, (P1594792937777551858.a n : ℤ) = A129492 (n + 1)

theorem P1594792937777551858.correct : P1594792937777551858.Spec := by
  intro n
  simp only [A129492, Nat.add_sub_cancel]

end A129492

/-! ## A129492.P9755453375779585428

`∩[A065090(n+1), comp[A226221(n+1)]]`
-/

namespace A129492.P9755453375779585428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226221 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A129492.P9755453375779585428

namespace A129492

/-- `∩[A065090(n+1), comp[A226221(n+1)]]` -/
def P9755453375779585428.Spec : Prop :=
  ∀ n, (P9755453375779585428.a n : ℤ) = A129492 (n + 1)

end A129492

/-! ## A129492.P14808580874637954849

`eq[1, a((2^n)%n)+1]` with `a(0)=-1, a(1)=0, a(2)=2`
-/

namespace A129492.P14808580874637954849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 2] fun n f2 =>
  f2 (2 ^ n % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129492.P14808580874637954849

namespace A129492

/-- `eq[1, a((2^n)%n)+1]` -/
def P14808580874637954849.Spec : Prop :=
  ∀ n, (P14808580874637954849.a n : ℤ) = A129492 (n + 1)

end A129492

/-!
# A129493: Composite numbers k such that 3^k mod k is a power of 3.

The programs for A129493, there is no canonical definition to state claims against.
-/

/-! ## A129493.P17055206312518784520

`eq[A040001(A225652(n+1)), A102640(n+1)]`
-/

namespace A129493.P17055206312518784520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A225652 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129493.P17055206312518784520

/-! ## A129493.P7677890902132836200

`lt[A010694(n), A156235(A359270(2*n+3))]`
-/

namespace A129493.P7677890902132836200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156235 (A359270 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129493.P7677890902132836200

/-! ## A129493.P16430298329284016990

`lt[A255869(n+2), A228167(A309025(3*n))]`
-/

namespace A129493.P16430298329284016990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255869 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228167 (A309025 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129493.P16430298329284016990

/-! ## A129493.P3124257695314329132

`A144222(A002808(n+2))+n`
-/

namespace A129493.P3124257695314329132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144222 (A002808 (n + 2)).toNat + (n : ℤ)

end

end A129493.P3124257695314329132

/-! ## A129493.P16321395672431278288

`A144222(A367226(n+4))+n`
-/

namespace A129493.P16321395672431278288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144222 (A367226 (n + 4)).toNat + (n : ℤ)

end

end A129493.P16321395672431278288

/-!
# A129494: Composite numbers k such that 4^k mod k is a power of 4 greater than 1.

The programs for A129494, there is no canonical definition to state claims against.
-/

/-! ## A129494.P16984815548128054791

`eq[2, A318652(A331925(n))]`
-/

namespace A129494.P16984815548128054791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318652 (A331925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129494.P16984815548128054791

/-! ## A129494.P15839946781730457128

`lt[n+1, A324185(A134950(n+1))]`
-/

namespace A129494.P15839946781730457128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324185 (A134950 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A129494.P15839946781730457128

/-! ## A129494.P8286328369236548690

`A361102(lt[(n%2)^n, A195805(3*n+2)])`
-/

namespace A129494.P8286328369236548690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129494.P8286328369236548690

/-! ## A129494.P13018055503283975126

`A024619(lt[A037273(3*n+2), A026741(n)])`
-/

namespace A129494.P13018055503283975126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037273 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129494.P13018055503283975126

/-!
# A129498: Unitary abundancy of n-th unitary abundant number: usigma(k)-2k if this is > 0.

The programs for A129498, there is no canonical definition to state claims against.
-/

/-! ## A129498.P7318340996572011736

`A034460(A034683(n+1))-A034683(n+1)`
-/

namespace A129498.P7318340996572011736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A034683 (n + 1)).toNat - A034683 (n + 1)

end

end A129498.P7318340996572011736

/-! ## A129498.P6615780429639781178

`A129468(A034683(n+1))`
-/

namespace A129498.P6615780429639781178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (A034683 (n + 1)).toNat

end

end A129498.P6615780429639781178

/-! ## A129498.P6856481598171154343

`A034448(lcm(2, A034683(n+1)))%A034683(n+1)`
-/

namespace A129498.P6856481598171154343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (Int.lcm 2 (A034683 (n + 1)))) (A034683 (n + 1))

end

end A129498.P6856481598171154343

/-! ## A129498.P6875471799618844320

`A034448(A034683(n+1))%A034683(A000027(n+1))`
-/

namespace A129498.P6875471799618844320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (A034683 (n + 1)).toNat) (A034683 (A000027 (n + 1)).toNat)

end

end A129498.P6875471799618844320

/-! ## A129498.P5238191588229862710

`A034448(A034683(n+1)%A023197(n+1))%A034683(n+1)`
-/

namespace A129498.P5238191588229862710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (Int.tmod (A034683 (n + 1)) (A023197 (n + 1))).toNat) (A034683 (n + 1))

end

end A129498.P5238191588229862710

/-!
# A129499: Records for unitary abundant numbers, i.e., those integers which set a record for having a greater unitary abundance than any of their predecessors.

The programs for A129499, there is no canonical definition to state claims against.
-/

/-! ## A129499.P18098622588368036449

`record[lcm(30, A227108(n))]`
-/

namespace A129499.P18098622588368036449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 30 (A227108 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129499.P18098622588368036449

/-! ## A129499.P12136101257553902537

`A007775(n+1)*A040210(A006498(n))`
-/

namespace A129499.P12136101257553902537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1) * A040210 (A006498 n).toNat

end

end A129499.P12136101257553902537

/-! ## A129499.P16580029995821425353

`A007775(n+1)*A040210(A057479(2*n+1))`
-/

namespace A129499.P16580029995821425353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1) * A040210 (A057479 (2 * n + 1)).toNat

end

end A129499.P16580029995821425353

/-! ## A129499.P9776160395015382956

`30*A007775(n+1)%A053676(n+1)`
-/

namespace A129499.P9776160395015382956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * Int.tmod (A007775 (n + 1)) (A053676 (n + 1))

end

end A129499.P9776160395015382956

/-! ## A129499.P5885394231215111356

`record[A079208(3*n+1)+A070293(n+1)]`
-/

namespace A129499.P5885394231215111356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079208 (3 * n + 1) + A070293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129499.P5885394231215111356

