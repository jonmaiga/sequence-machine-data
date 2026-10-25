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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A090000: Length of longest contiguous block of 1's in binary expansion of n-th prime.

The programs for A090000, the canonical program `A090000.P9572383938386539689` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090000 has offset 1).

The definition of A090000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090000.P9572383938386539689

`val(A278222(A000040(n+1)), 2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A090000

/-- `val(A278222(A000040(n+1)), 2)` -/
def P9572383938386539689.Spec : Prop :=
  ∀ n, (P9572383938386539689.a n : ℤ) = A090000 (n + 1)

theorem P9572383938386539689.correct : P9572383938386539689.Spec := by
  intro n
  simp only [A090000, Nat.add_sub_cancel]

end A090000

/-! ## A090000.P15835491933522572075

`val(A278222(record[A006530(n+2)]), 2)`
-/

namespace A090000.P15835491933522572075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat 2

end

end A090000.P15835491933522572075

namespace A090000

/-- `val(A278222(record[A006530(n+2)]), 2)` -/
def P15835491933522572075.Spec : Prop :=
  ∀ n, (P15835491933522572075.a n : ℤ) = A090000 (n + 1)

end A090000

/-! ## A090000.P12373854241126370309

`val(A278222(record[A020639(n+2)]), 2)`
-/

namespace A090000.P12373854241126370309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat 2

end

end A090000.P12373854241126370309

namespace A090000

/-- `val(A278222(record[A020639(n+2)]), 2)` -/
def P12373854241126370309.Spec : Prop :=
  ∀ n, (P12373854241126370309.a n : ℤ) = A090000 (n + 1)

end A090000

/-! ## A090000.P16220848484010010024

`val(A278222(A040976(n+1)+2), 2)`
-/

namespace A090000.P16220848484010010024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (A040976 (n + 1) + 2).toNat).toNat 2

end

end A090000.P16220848484010010024

namespace A090000

/-- `val(A278222(A040976(n+1)+2), 2)` -/
def P16220848484010010024.Spec : Prop :=
  ∀ n, (P16220848484010010024.a n : ℤ) = A090000 (n + 1)

theorem P16220848484010010024.correct : P16220848484010010024.Spec := by
  intro n
  simp only [A090000, Nat.add_sub_cancel, A090000.P16220848484010010024.a, A090000.P9572383938386539689.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A278222, A278222.P17157169249717672707.a, A124859, A124859.P14397477856790736102.a, A278159, A278159.P1523932836907847359.a, A005940, A005940.P5942875842694471387.a, A108951, A108951.P1294613322156543690.a, A181819, A181819.P15090535388863431201.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P3695549317124564486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090000

/-! ## A090000.P14735025611061971174

`val(A278222(A100484(n+1)/2), 2)`
-/

namespace A090000.P14735025611061971174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat).toNat 2

end

end A090000.P14735025611061971174

namespace A090000

/-- `val(A278222(A100484(n+1)/2), 2)` -/
def P14735025611061971174.Spec : Prop :=
  ∀ n, (P14735025611061971174.a n : ℤ) = A090000 (n + 1)

end A090000

/-! ## A090000.P9669481177948821711

`val(A278222(record[A000010(n+1)+1]), 2)`
-/

namespace A090000.P9669481177948821711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat 2

end

end A090000.P9669481177948821711

namespace A090000

/-- `val(A278222(record[A000010(n+1)+1]), 2)` -/
def P9669481177948821711.Spec : Prop :=
  ∀ n, (P9669481177948821711.a n : ℤ) = A090000 (n + 1)

end A090000

/-! ## A090000.P17964857444557418984

`val(A278222(eq[1, A001222(n+1)]+1), 2)`
-/

namespace A090000.P17964857444557418984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat 2

end

end A090000.P17964857444557418984

namespace A090000

/-- `val(A278222(eq[1, A001222(n+1)]+1), 2)` -/
def P17964857444557418984.Spec : Prop :=
  ∀ n, (P17964857444557418984.a n : ℤ) = A090000 (n + 1)

end A090000

/-! ## A090000.P8624440278943156362

`val(A278222(eq[2, A000005(n+1)]+1), 2)`
-/

namespace A090000.P8624440278943156362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat 2

end

end A090000.P8624440278943156362

namespace A090000

/-- `val(A278222(eq[2, A000005(n+1)]+1), 2)` -/
def P8624440278943156362.Spec : Prop :=
  ∀ n, (P8624440278943156362.a n : ℤ) = A090000 (n + 1)

end A090000

/-! ## A090000.P3073507412446370072

`val(A278222(lt[A001222(n+2), 2]+2), 2)`
-/

namespace A090000.P3073507412446370072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)).toNat 2

end

end A090000.P3073507412446370072

namespace A090000

/-- `val(A278222(lt[A001222(n+2), 2]+2), 2)` -/
def P3073507412446370072.Spec : Prop :=
  ∀ n, (P3073507412446370072.a n : ℤ) = A090000 (n + 1)

end A090000

/-! ## A090000.P13923852986796673664

`val(A278222(lt[A000005(n+2), 3]+2), 2)`
-/

namespace A090000.P13923852986796673664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)).toNat 2

end

end A090000.P13923852986796673664

namespace A090000

/-- `val(A278222(lt[A000005(n+2), 3]+2), 2)` -/
def P13923852986796673664.Spec : Prop :=
  ∀ n, (P13923852986796673664.a n : ℤ) = A090000 (n + 1)

end A090000

/-! ## A090000.P1606254374589657431

`val(A278222(lt[n, A000010(n+2)]+2), 2)`
-/

namespace A090000.P1606254374589657431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)).toNat 2

end

end A090000.P1606254374589657431

namespace A090000

/-- `val(A278222(lt[n, A000010(n+2)]+2), 2)` -/
def P1606254374589657431.Spec : Prop :=
  ∀ n, (P1606254374589657431.a n : ℤ) = A090000 (n + 1)

end A090000

/-! ## A090000.P16137389054223116687

`val(A278222(A100484(n+1)), 2)`
-/

namespace A090000.P16137389054223116687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (A100484 (n + 1)).toNat).toNat 2

end

end A090000.P16137389054223116687

namespace A090000

/-- `val(A278222(A100484(n+1)), 2)` -/
def P16137389054223116687.Spec : Prop :=
  ∀ n, (P16137389054223116687.a n : ℤ) = A090000 (n + 1)

end A090000

/-! ## A090000.P17511962887679304281

`A038374(A000040(n+1))`
-/

namespace A090000.P17511962887679304281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A000040 (n + 1)).toNat

end

end A090000.P17511962887679304281

namespace A090000

/-- `A038374(A000040(n+1))` -/
def P17511962887679304281.Spec : Prop :=
  ∀ n, P17511962887679304281.a n = A090000 (n + 1)

end A090000

/-! ## A090000.P6746729545372673766

`A038374(A006005(n+1))`
-/

namespace A090000.P6746729545372673766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A006005 (n + 1)).toNat

end

end A090000.P6746729545372673766

namespace A090000

/-- `A038374(A006005(n+1))` -/
def P6746729545372673766.Spec : Prop :=
  ∀ n, P6746729545372673766.a n = A090000 (n + 1)

end A090000

/-! ## A090000.P2661559008166155460

`A038374(A161847(n+1))`
-/

namespace A090000.P2661559008166155460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A161847 (n + 1)).toNat

end

end A090000.P2661559008166155460

namespace A090000

/-- `A038374(A161847(n+1))` -/
def P2661559008166155460.Spec : Prop :=
  ∀ n, P2661559008166155460.a n = A090000 (n + 1)

end A090000

/-! ## A090000.P17994427994946609260

`A038374(A008578(n+2))`
-/

namespace A090000.P17994427994946609260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A008578 (n + 2)).toNat

end

end A090000.P17994427994946609260

namespace A090000

/-- `A038374(A008578(n+2))` -/
def P17994427994946609260.Spec : Prop :=
  ∀ n, P17994427994946609260.a n = A090000 (n + 1)

end A090000

/-! ## A090000.P5331095885320525611

`A038374(record[A006530(n+2)])`
-/

namespace A090000.P5331095885320525611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090000.P5331095885320525611

namespace A090000

/-- `A038374(record[A006530(n+2)])` -/
def P5331095885320525611.Spec : Prop :=
  ∀ n, P5331095885320525611.a n = A090000 (n + 1)

end A090000

/-! ## A090000.P8745198268004754349

`A038374(record[A020639(n+2)])`
-/

namespace A090000.P8745198268004754349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090000.P8745198268004754349

namespace A090000

/-- `A038374(record[A020639(n+2)])` -/
def P8745198268004754349.Spec : Prop :=
  ∀ n, P8745198268004754349.a n = A090000 (n + 1)

end A090000

/-! ## A090000.P6215335777363801550

`A038374(A100484(n+1)/2)`
-/

namespace A090000.P6215335777363801550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A090000.P6215335777363801550

namespace A090000

/-- `A038374(A100484(n+1)/2)` -/
def P6215335777363801550.Spec : Prop :=
  ∀ n, P6215335777363801550.a n = A090000 (n + 1)

end A090000

/-! ## A090000.P5982518025809938774

`A038374(A001747(n+2)/2)`
-/

namespace A090000.P5982518025809938774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A090000.P5982518025809938774

namespace A090000

/-- `A038374(A001747(n+2)/2)` -/
def P5982518025809938774.Spec : Prop :=
  ∀ n, P5982518025809938774.a n = A090000 (n + 1)

end A090000

/-!
# A090001: Length of longest contiguous block of 1's in binary expansion of n^2.

The programs for A090001, the canonical program `A090001.P13538661981448324381` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090001 has offset 0).

The definition of A090001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090001.P13538661981448324381

`val(A286374(n), 2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A090001

/-- `val(A286374(n), 2)` -/
def P13538661981448324381.Spec : Prop :=
  ∀ n, (P13538661981448324381.a n : ℤ) = A090001 n

theorem P13538661981448324381.correct : P13538661981448324381.Spec := by
  intro n
  simp only [A090001]

end A090001

/-! ## A090001.P18022071246320918564

`A051903(gcd(A140513(n), A286374(n)))`
-/

namespace A090001.P18022071246320918564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.gcd (A140513 n) (A286374 n))

end

end A090001.P18022071246320918564

namespace A090001

/-- `A051903(gcd(A140513(n), A286374(n)))` -/
def P18022071246320918564.Spec : Prop :=
  ∀ n, P18022071246320918564.a n = A090001 n

end A090001

/-! ## A090001.P12366117051092439949

`A001222(and(-A286374(n), A286374(n)))`
-/

namespace A090001.P12366117051092439949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A286374 n) (A286374 n)).toNat

end

end A090001.P12366117051092439949

namespace A090001

/-- `A001222(and(-A286374(n), A286374(n)))` -/
def P12366117051092439949.Spec : Prop :=
  ∀ n, P12366117051092439949.a n = A090001 n

end A090001

/-! ## A090001.P1415973987016103273

`val(A278222(∑[A267458(n+1)]-1), 2)`
-/

namespace A090001.P1415973987016103273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat).toNat 2

end

end A090001.P1415973987016103273

namespace A090001

/-- `val(A278222(∑[A267458(n+1)]-1), 2)` -/
def P1415973987016103273.Spec : Prop :=
  ∀ n, (P1415973987016103273.a n : ℤ) = A090001 n

end A090001

/-! ## A090001.P8309990827273934767

`val(A278222(n²), 2)`
-/

namespace A090001.P8309990827273934767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (n ^ 2)).toNat 2

end

end A090001.P8309990827273934767

namespace A090001

/-- `val(A278222(n²), 2)` -/
def P8309990827273934767.Spec : Prop :=
  ∀ n, (P8309990827273934767.a n : ℤ) = A090001 n

end A090001

/-! ## A090001.P17235429351029625958

`A051903(A286374(n))`
-/

namespace A090001.P17235429351029625958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A286374 n).toNat

end

end A090001.P17235429351029625958

namespace A090001

/-- `A051903(A286374(n))` -/
def P17235429351029625958.Spec : Prop :=
  ∀ n, P17235429351029625958.a n = A090001 n

end A090001

/-! ## A090001.P14847107120204901225

`A051903(A278222(n²))`
-/

namespace A090001.P14847107120204901225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278222 (n ^ 2)).toNat

end

end A090001.P14847107120204901225

namespace A090001

/-- `A051903(A278222(n²))` -/
def P14847107120204901225.Spec : Prop :=
  ∀ n, P14847107120204901225.a n = A090001 n

end A090001

/-! ## A090001.P929486273423936554

`A038374(n²+1)%(n+1)`
-/

namespace A090001.P929486273423936554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038374 (n ^ 2 + 1)) (n + 1 : ℤ)

end

end A090001.P929486273423936554

namespace A090001

/-- `A038374(n²+1)%(n+1)` -/
def P929486273423936554.Spec : Prop :=
  ∀ n, P929486273423936554.a n = A090001 n

end A090001

/-! ## A090001.P9501221033701376348

`A061395(A246029(n²))`
-/

namespace A090001.P9501221033701376348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A246029 (n ^ 2)).toNat

end

end A090001.P9501221033701376348

namespace A090001

/-- `A061395(A246029(n²))` -/
def P9501221033701376348.Spec : Prop :=
  ∀ n, P9501221033701376348.a n = A090001 n

end A090001

/-! ## A090001.P1667541790196193767

`A007814(A286374(2*n))`
-/

namespace A090001.P1667541790196193767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A286374 (2 * n)).toNat

end

end A090001.P1667541790196193767

namespace A090001

/-- `A007814(A286374(2*n))` -/
def P1667541790196193767.Spec : Prop :=
  ∀ n, P1667541790196193767.a n = A090001 n

end A090001

/-!
# A090002: Length of longest contiguous block of 1's in binary expansion of n-th triangular number.

The programs for A090002, the canonical program `A090002.P5610306916460533914` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090002 has offset 0).

The definition of A090002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090002.P5610306916460533914

`A090001(2*n+1)%(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A090002

/-- `A090001(2*n+1)%(n+1)` -/
def P5610306916460533914.Spec : Prop :=
  ∀ n, P5610306916460533914.a n = A090002 n

theorem P5610306916460533914.correct : P5610306916460533914.Spec := by
  intro n
  simp only [A090002]

end A090002

/-! ## A090002.P7213602500195413821

`(A090001(n+1+n)+n+1)%(n+1)`
-/

namespace A090002.P7213602500195413821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090001 (n + 1 + n) + (n + 1 : ℤ)) (n + 1 : ℤ)

end

end A090002.P7213602500195413821

namespace A090002

/-- `(A090001(n+1+n)+n+1)%(n+1)` -/
def P7213602500195413821.Spec : Prop :=
  ∀ n, P7213602500195413821.a n = A090002 n

end A090002

/-! ## A090002.P7563020280309337535

`A090001(A130773(n))`
-/

namespace A090002.P7563020280309337535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (A130773 n).toNat

end

end A090002.P7563020280309337535

namespace A090002

/-- `A090001(A130773(n))` -/
def P7563020280309337535.Spec : Prop :=
  ∀ n, P7563020280309337535.a n = A090002 n

end A090002

/-! ## A090002.P17703517651161252337

`A090001(xor(1, A004277(n)))`
-/

namespace A090002.P17703517651161252337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (Int.xor 1 (A004277 n)).toNat

end

end A090002.P17703517651161252337

namespace A090002

/-- `A090001(xor(1, A004277(n)))` -/
def P17703517651161252337.Spec : Prop :=
  ∀ n, P17703517651161252337.a n = A090002 n

end A090002

/-! ## A090002.P8420211994497852299

`A057427(n)*A090001(2*n+1)`
-/

namespace A090002.P8420211994497852299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A090001 (2 * n + 1)

end

end A090002.P8420211994497852299

namespace A090002

/-- `A057427(n)*A090001(2*n+1)` -/
def P8420211994497852299.Spec : Prop :=
  ∀ n, P8420211994497852299.a n = A090002 n

end A090002

/-! ## A090002.P4853935558760717975

`A112347(n)²*A090001(2*n+1)`
-/

namespace A090002.P4853935558760717975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n ^ 2 * A090001 (2 * n + 1)

end

end A090002.P4853935558760717975

namespace A090002

/-- `A112347(n)²*A090001(2*n+1)` -/
def P4853935558760717975.Spec : Prop :=
  ∀ n, P4853935558760717975.a n = A090002 n

end A090002

/-! ## A090002.P3865471424197078059

`(2*n+1-A028310(2*n))*A090001(2*n+1)`
-/

namespace A090002.P3865471424197078059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A028310 (2 * n)) * A090001 (2 * n + 1)

end

end A090002.P3865471424197078059

namespace A090002

/-- `(2*n+1-A028310(2*n))*A090001(2*n+1)` -/
def P3865471424197078059.Spec : Prop :=
  ∀ n, P3865471424197078059.a n = A090002 n

end A090002

/-! ## A090002.P12774833224892955798

`A089309(A089309(2*n)²)*A090001(2*n+1)`
-/

namespace A090002.P12774833224892955798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A089309 (2 * n) ^ 2).toNat * A090001 (2 * n + 1)

end

end A090002.P12774833224892955798

namespace A090002

/-- `A089309(A089309(2*n)²)*A090001(2*n+1)` -/
def P12774833224892955798.Spec : Prop :=
  ∀ n, P12774833224892955798.a n = A090002 n

end A090002

/-! ## A090002.P10751737606538292404

`A090001(2*n+1)*A112347(2*n)*A112347(2*n)`
-/

namespace A090002.P10751737606538292404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (2 * n + 1) * A112347 (2 * n) * A112347 (2 * n)

end

end A090002.P10751737606538292404

namespace A090002

/-- `A090001(2*n+1)*A112347(2*n)*A112347(2*n)` -/
def P10751737606538292404.Spec : Prop :=
  ∀ n, P10751737606538292404.a n = A090002 n

end A090002

/-! ## A090002.P9489921035695826849

`A090001(2*n+1)-A093709(n)*A093709(3*n)`
-/

namespace A090002.P9489921035695826849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (2 * n + 1) - A093709 n * A093709 (3 * n)

end

end A090002.P9489921035695826849

namespace A090002

/-- `A090001(2*n+1)-A093709(n)*A093709(3*n)` -/
def P9489921035695826849.Spec : Prop :=
  ∀ n, P9489921035695826849.a n = A090002 n

end A090002

/-! ## A090002.P1826334715456476094

`val(A278222(∑[n]), 2)`
-/

namespace A090002.P1826334715456476094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A090002.P1826334715456476094

namespace A090002

/-- `val(A278222(∑[n]), 2)` -/
def P1826334715456476094.Spec : Prop :=
  ∀ n, (P1826334715456476094.a n : ℤ) = A090002 n

end A090002

/-! ## A090002.P13464881709183878901

`A089309(n²)*A090001(2*n+1)`
-/

namespace A090002.P13464881709183878901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (n ^ 2) * A090001 (2 * n + 1)

end

end A090002.P13464881709183878901

namespace A090002

/-- `A089309(n²)*A090001(2*n+1)` -/
def P13464881709183878901.Spec : Prop :=
  ∀ n, P13464881709183878901.a n = A090002 n

end A090002

/-!
# A090003: Length of longest contiguous block of 1's in binary expansion of n^3.

The programs for A090003, the canonical program `A090003.P4383366296457470224` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090003 has offset 0).

The definition of A090003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090003.P4383366296457470224

`val(A286375(n), 2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A090003

/-- `val(A286375(n), 2)` -/
def P4383366296457470224.Spec : Prop :=
  ∀ n, (P4383366296457470224.a n : ℤ) = A090003 n

theorem P4383366296457470224.correct : P4383366296457470224.Spec := by
  intro n
  simp only [A090003]

end A090003

/-! ## A090003.P15017821298598766059

`A001222(and(-A286375(n), A286375(n)))`
-/

namespace A090003.P15017821298598766059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A286375 n) (A286375 n)).toNat

end

end A090003.P15017821298598766059

namespace A090003

/-- `A001222(and(-A286375(n), A286375(n)))` -/
def P15017821298598766059.Spec : Prop :=
  ∀ n, P15017821298598766059.a n = A090003 n

end A090003

/-! ## A090003.P2990098753109439869

`A000523(and(-A286375(n), A286375(n)))`
-/

namespace A090003.P2990098753109439869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.land (-A286375 n) (A286375 n)).toNat

end

end A090003.P2990098753109439869

namespace A090003

/-- `A000523(and(-A286375(n), A286375(n)))` -/
def P2990098753109439869.Spec : Prop :=
  ∀ n, P2990098753109439869.a n = A090003 n

end A090003

/-! ## A090003.P143934867616371119

`A023416(and(-A286375(n), A286375(n)))`
-/

namespace A090003.P143934867616371119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.land (-A286375 n) (A286375 n)).toNat

end

end A090003.P143934867616371119

namespace A090003

/-- `A023416(and(-A286375(n), A286375(n)))` -/
def P143934867616371119.Spec : Prop :=
  ∀ n, P143934867616371119.a n = A090003 n

end A090003

/-! ## A090003.P11237466630659132847

`log2(gcd(A000079(n), A286375(n)))`
-/

namespace A090003.P11237466630659132847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 n) (A286375 n) : ℝ)

end

end A090003.P11237466630659132847

namespace A090003

/-- `log2(gcd(A000079(n), A286375(n)))` -/
def P11237466630659132847.Spec : Prop :=
  ∀ n, P11237466630659132847.a n = (A090003 n : ℝ)

end A090003

/-!
# A090010: Permanent of (0,1)-matrix of size n X (n+d) with d=6 and n zeros not on a line.

The programs for A090010, the canonical program `A090010.P5276567566268034178` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090010 has offset 1).

The definition of A090010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090010.P5276567566268034178

`(n+6)*a(n-1)+n*a(n-2)` with `a(0)=6, a(1)=43`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090010

/-- `(n+6)*a(n-1)+n*a(n-2)` -/
def P5276567566268034178.Spec : Prop :=
  ∀ n, (P5276567566268034178.a n : ℤ) = A090010 (n + 1)

theorem P5276567566268034178.correct : P5276567566268034178.Spec := by
  intro n
  simp only [A090010, Nat.add_sub_cancel]

end A090010

/-! ## A090010.P9516345920556386636

`A176732(n+1)`
-/

namespace A090010.P9516345920556386636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176732 (n + 1)

end

end A090010.P9516345920556386636

namespace A090010

/-- `A176732(n+1)` -/
def P9516345920556386636.Spec : Prop :=
  ∀ n, P9516345920556386636.a n = A090010 (n + 1)

end A090010

/-! ## A090010.P5387814980666027158

`A090015(n+2)/6`
-/

namespace A090010.P5387814980666027158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090015 (n + 2) : ℚ) / 6

end

end A090010.P5387814980666027158

namespace A090010

/-- `A090015(n+2)/6` -/
def P5387814980666027158.Spec : Prop :=
  ∀ n, P5387814980666027158.a n = (A090010 (n + 1) : ℚ)

end A090010

/-! ## A090010.P12808871566197780389

`record[A176732(abs(1-n))]`
-/

namespace A090010.P12808871566197780389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176732 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090010.P12808871566197780389

namespace A090010

/-- `record[A176732(abs(1-n))]` -/
def P12808871566197780389.Spec : Prop :=
  ∀ n, P12808871566197780389.a n = A090010 (n + 1)

end A090010

/-! ## A090010.P9041501258421125914

`A090016(n+1)-a(n-1)` with `a(0)=6`
-/

namespace A090010.P9041501258421125914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A090016 (n + 1) - a (n - 1)

end

end A090010.P9041501258421125914

namespace A090010

/-- `A090016(n+1)-a(n-1)` -/
def P9041501258421125914.Spec : Prop :=
  ∀ n, P9041501258421125914.a n = A090010 (n + 1)

end A090010

/-! ## A090010.P17071055130657079479

`ratio[A176732(n)]*A176732(n)`
-/

namespace A090010.P17071055130657079479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176732 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A176732 n : ℚ)

end

end A090010.P17071055130657079479

namespace A090010

/-- `ratio[A176732(n)]*A176732(n)` -/
def P17071055130657079479.Spec : Prop :=
  ∀ n, P17071055130657079479.a n = (A090010 (n + 1) : ℚ)

end A090010

/-! ## A090010.P17385437852616507498

`A060475(A000217(n+7)+n+1)`
-/

namespace A090010.P17385437852616507498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A090010.P17385437852616507498

namespace A090010

/-- `A060475(A000217(n+7)+n+1)` -/
def P17385437852616507498.Spec : Prop :=
  ∀ n, P17385437852616507498.a n = A090010 (n + 1)

end A090010

/-!
# A090011: T(n,k) = number of partitions of binomial(n,k), 0<=k<=n, triangular array read by rows.

The programs for A090011, there is no canonical definition to state claims against.
-/

/-! ## A090011.P9083293164538979482

`A000041(A007318(n))`
-/

namespace A090011.P9083293164538979482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A007318 n).toNat

end

end A090011.P9083293164538979482

/-! ## A090011.P6744988923394877199

`A000041(A206735(n))`
-/

namespace A090011.P6744988923394877199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A206735 n).toNat

end

end A090011.P6744988923394877199

/-! ## A090011.P4831535787173868078

`A000041(abs(A108086(n)))`
-/

namespace A090011.P4831535787173868078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |A108086 n|.toNat

end

end A090011.P4831535787173868078

/-! ## A090011.P18381145974716762907

`A000041(abs(A117440(n)))`
-/

namespace A090011.P18381145974716762907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |A117440 n|.toNat

end

end A090011.P18381145974716762907

/-! ## A090011.P4065555211905454420

`A000041(abs(A130595(n)))`
-/

namespace A090011.P4065555211905454420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |A130595 n|.toNat

end

end A090011.P4065555211905454420

/-! ## A090011.P6093374370097604377

`A000041(sqrt(A008459(n)))`
-/

namespace A090011.P6093374370097604377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A090011.P6093374370097604377

/-! ## A090011.P1057072542262741731

`A000041(Δ[A102363(n)])`
-/

namespace A090011.P1057072542262741731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A090011.P1057072542262741731

/-! ## A090011.P475560977060971688

`A000041(A014473(n)+1)`
-/

namespace A090011.P475560977060971688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A014473 n + 1).toNat

end

end A090011.P475560977060971688

/-! ## A090011.P7869904735820251230

`A000041(A198321(n+1))`
-/

namespace A090011.P7869904735820251230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A198321 (n + 1)).toNat

end

end A090011.P7869904735820251230

/-! ## A090011.P11265418852286277976

`A000041(A132735(n)-1)`
-/

namespace A090011.P11265418852286277976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A132735 n - 1).toNat

end

end A090011.P11265418852286277976

/-! ## A090011.P6388338982477563963

`A000041(A028326(n)/2)`
-/

namespace A090011.P6388338982477563963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A090011.P6388338982477563963

/-! ## A090011.P9744961473477338053

`A000041(root(A008459(n), 2))`
-/

namespace A090011.P9744961473477338053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A008459 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A090011.P9744961473477338053

/-! ## A090011.P16023685830065822773

`∑{d}[A007318(n), A000837(#)]`
-/

namespace A090011.P16023685830065822773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A090011.P16023685830065822773

/-! ## A090011.P14345446803909193331

`A000041(A199011(abs(1-n)))`
-/

namespace A090011.P14345446803909193331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A199011 |1 - (n : ℤ)|.toNat).toNat

end

end A090011.P14345446803909193331

/-! ## A090011.P140880170224187264

`A000041(A038572(A028326(n)))`
-/

namespace A090011.P140880170224187264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A038572 (A028326 n).toNat).toNat

end

end A090011.P140880170224187264

/-! ## A090011.P1581474403923054367

`A000041(A124928(n)-A124927(n))`
-/

namespace A090011.P1581474403923054367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A124928 n - A124927 n).toNat

end

end A090011.P1581474403923054367

/-! ## A090011.P242292649010002015

`A000041(A134060(n)-A124927(n))`
-/

namespace A090011.P242292649010002015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A134060 n - A124927 n).toNat

end

end A090011.P242292649010002015

/-! ## A090011.P8896907291842395615

`A000041(A144405(n)/A144404(n))`
-/

namespace A090011.P8896907291842395615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A144405 n : ℚ) / (A144404 n : ℚ))).toNat

end

end A090011.P8896907291842395615

/-! ## A090011.P362451035115639467

`A000041(A176348(n)/A176346(n))`
-/

namespace A090011.P362451035115639467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A176348 n : ℚ) / (A176346 n : ℚ))).toNat

end

end A090011.P362451035115639467

/-! ## A090011.P9740079708656162943

`A000041(A124928(n)%A124927(n))`
-/

namespace A090011.P9740079708656162943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.tmod (A124928 n) (A124927 n)).toNat

end

end A090011.P9740079708656162943

/-!
# A090012: Permanent of (0,1)-matrix of size n X (n+d) with d=2 and n-1 zeros not on a line.

The programs for A090012, the canonical program `A090012.P2983554061721569160` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090012 has offset 1).

The definition of A090012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090012.P2983554061721569160

`(n+2)*a(n-1)+(n-1)*a(n-2)` with `a(0)=3, a(1)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090012

/-- `(n+2)*a(n-1)+(n-1)*a(n-2)` -/
def P2983554061721569160.Spec : Prop :=
  ∀ n, P2983554061721569160.a n = A090012 (n + 1)

theorem P2983554061721569160.correct : P2983554061721569160.Spec := by
  intro n
  simp only [A090012, Nat.add_sub_cancel]

end A090012

/-! ## A090012.P3357321252797734132

`∏[(n-1)/a(n-1)+n+2]` with `a(0)=3`
-/

namespace A090012.P3357321252797734132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090012.P3357321252797734132

namespace A090012

/-- `∏[(n-1)/a(n-1)+n+2]` -/
def P3357321252797734132.Spec : Prop :=
  ∀ n, P3357321252797734132.a n = (A090012 (n + 1) : ℚ)

end A090012

/-! ## A090012.P2604043895948577875

`3*A000261(n+2)`
-/

namespace A090012.P2604043895948577875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000261 (n + 2)

end

end A090012.P2604043895948577875

namespace A090012

/-- `3*A000261(n+2)` -/
def P2604043895948577875.Spec : Prop :=
  ∀ n, P2604043895948577875.a n = A090012 (n + 1)

end A090012

/-! ## A090012.P4938082378224659048

`A277609(n+3)/2`
-/

namespace A090012.P4938082378224659048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277609 (n + 3) : ℚ) / 2

end

end A090012.P4938082378224659048

namespace A090012

/-- `A277609(n+3)/2` -/
def P4938082378224659048.Spec : Prop :=
  ∀ n, P4938082378224659048.a n = (A090012 (n + 1) : ℚ)

end A090012

/-! ## A090012.P5008069447902916214

`∑[lcm(3, Δ[A000261(n+1)])]`
-/

namespace A090012.P5008069447902916214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000261 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090012.P5008069447902916214

namespace A090012

/-- `∑[lcm(3, Δ[A000261(n+1)])]` -/
def P5008069447902916214.Spec : Prop :=
  ∀ n, (P5008069447902916214.a n : ℤ) = A090012 (n + 1)

end A090012

/-! ## A090012.P6937971639408790440

`A116853(A167614(n+1))/2`
-/

namespace A090012.P6937971639408790440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116853 (A167614 (n + 1)).toNat : ℚ) / 2

end

end A090012.P6937971639408790440

namespace A090012

/-- `A116853(A167614(n+1))/2` -/
def P6937971639408790440.Spec : Prop :=
  ∀ n, P6937971639408790440.a n = (A090012 (n + 1) : ℚ)

end A090012

/-! ## A090012.P2820338555665405440

`A068106(A167614(n+2))/2`
-/

namespace A090012.P2820338555665405440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068106 (A167614 (n + 2)).toNat : ℚ) / 2

end

end A090012.P2820338555665405440

namespace A090012

/-- `A068106(A167614(n+2))/2` -/
def P2820338555665405440.Spec : Prop :=
  ∀ n, P2820338555665405440.a n = (A090012 (n + 1) : ℚ)

end A090012

/-! ## A090012.P12727636792764176767

`A000153(n+1)+A000153(n+2)`
-/

namespace A090012.P12727636792764176767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000153 (n + 1) + A000153 (n + 2)

end

end A090012.P12727636792764176767

namespace A090012

/-- `A000153(n+1)+A000153(n+2)` -/
def P12727636792764176767.Spec : Prop :=
  ∀ n, P12727636792764176767.a n = A090012 (n + 1)

end A090012

/-!
# A090013: Permanent of (0,1)-matrix of size n X (n+d) with d=3 and n-1 zeros not on a line.

The programs for A090013, the canonical program `A090013.P8738004345642654919` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090013 has offset 1).

The definition of A090013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090013.P8738004345642654919

`(n+3)*a(n-1)+(n-1)*a(n-2)` with `a(0)=4, a(1)=16`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090013

/-- `(n+3)*a(n-1)+(n-1)*a(n-2)` -/
def P8738004345642654919.Spec : Prop :=
  ∀ n, P8738004345642654919.a n = A090013 (n + 1)

theorem P8738004345642654919.correct : P8738004345642654919.Spec := by
  intro n
  simp only [A090013, Nat.add_sub_cancel]

end A090013

/-! ## A090013.P13046265648461143615

`4*A001909(n+3)`
-/

namespace A090013.P13046265648461143615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001909 (n + 3)

end

end A090013.P13046265648461143615

namespace A090013

/-- `4*A001909(n+3)` -/
def P13046265648461143615.Spec : Prop :=
  ∀ n, P13046265648461143615.a n = A090013 (n + 1)

end A090013

/-! ## A090013.P11434546330094196477

`∏[(n-1)/a(n-1)+n+3]` with `a(0)=4`
-/

namespace A090013.P11434546330094196477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + (n + 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090013.P11434546330094196477

namespace A090013

/-- `∏[(n-1)/a(n-1)+n+3]` -/
def P11434546330094196477.Spec : Prop :=
  ∀ n, P11434546330094196477.a n = (A090013 (n + 1) : ℚ)

end A090013

/-! ## A090013.P189226286233688816

`A277563(n+4)/6`
-/

namespace A090013.P189226286233688816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277563 (n + 4) : ℚ) / 6

end

end A090013.P189226286233688816

namespace A090013

/-- `A277563(n+4)/6` -/
def P189226286233688816.Spec : Prop :=
  ∀ n, P189226286233688816.a n = (A090013 (n + 1) : ℚ)

end A090013

/-! ## A090013.P1373881823230552021

`∑[lcm(4, Δ[A001909(n+2)])]`
-/

namespace A090013.P1373881823230552021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001909 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090013.P1373881823230552021

namespace A090013

/-- `∑[lcm(4, Δ[A001909(n+2)])]` -/
def P1373881823230552021.Spec : Prop :=
  ∀ n, (P1373881823230552021.a n : ℤ) = A090013 (n + 1)

end A090013

/-! ## A090013.P10340884774210499374

`4*A060475(A052905(n+2))`
-/

namespace A090013.P10340884774210499374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A060475 (A052905 (n + 2)).toNat

end

end A090013.P10340884774210499374

namespace A090013

/-- `4*A060475(A052905(n+2))` -/
def P10340884774210499374.Spec : Prop :=
  ∀ n, P10340884774210499374.a n = A090013 (n + 1)

end A090013

/-! ## A090013.P5932261644332545039

`A116853(Δ[A008778(n)]+6)/6`
-/

namespace A090013.P5932261644332545039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116853 (f1 (n + 1) - f1 n + 6).toNat : ℚ) / 6

end

end A090013.P5932261644332545039

namespace A090013

/-- `A116853(Δ[A008778(n)]+6)/6` -/
def P5932261644332545039.Spec : Prop :=
  ∀ n, P5932261644332545039.a n = (A090013 (n + 1) : ℚ)

end A090013

/-! ## A090013.P9628372001989668857

`4*A060475(A000217(n+5)-5)`
-/

namespace A090013.P9628372001989668857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A060475 (A000217 (n + 5) - 5).toNat

end

end A090013.P9628372001989668857

namespace A090013

/-- `4*A060475(A000217(n+5)-5)` -/
def P9628372001989668857.Spec : Prop :=
  ∀ n, P9628372001989668857.a n = A090013 (n + 1)

end A090013

/-! ## A090013.P1257638695273724656

`A000261(n+2)+A000261(n+3)`
-/

namespace A090013.P1257638695273724656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000261 (n + 2) + A000261 (n + 3)

end

end A090013.P1257638695273724656

namespace A090013

/-- `A000261(n+2)+A000261(n+3)` -/
def P1257638695273724656.Spec : Prop :=
  ∀ n, P1257638695273724656.a n = A090013 (n + 1)

end A090013

/-!
# A090014: Permanent of (0,1)-matrix of size n X (n+d) with d=4 and n-1 zeros not on a line.

The programs for A090014, the canonical program `A090014.P10928892397383861000` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090014 has offset 1).

The definition of A090014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090014.P10928892397383861000

`(n+4)*a(n-1)+(n-1)*a(n-2)` with `a(0)=5, a(1)=25`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090014

/-- `(n+4)*a(n-1)+(n-1)*a(n-2)` -/
def P10928892397383861000.Spec : Prop :=
  ∀ n, P10928892397383861000.a n = A090014 (n + 1)

theorem P10928892397383861000.correct : P10928892397383861000.Spec := by
  intro n
  simp only [A090014, Nat.add_sub_cancel]

end A090014

/-! ## A090014.P10681309095700784408

`5*A001910(n+4)`
-/

namespace A090014.P10681309095700784408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001910 (n + 4)

end

end A090014.P10681309095700784408

namespace A090014

/-- `5*A001910(n+4)` -/
def P10681309095700784408.Spec : Prop :=
  ∀ n, P10681309095700784408.a n = A090014 (n + 1)

end A090014

/-! ## A090014.P1674081718377065793

`5*A060475(A055999(n+3))`
-/

namespace A090014.P1674081718377065793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A060475 (A055999 (n + 3)).toNat

end

end A090014.P1674081718377065793

namespace A090014

/-- `5*A060475(A055999(n+3))` -/
def P1674081718377065793.Spec : Prop :=
  ∀ n, P1674081718377065793.a n = A090014 (n + 1)

end A090014

/-! ## A090014.P16641594914600511172

`5*A060475(A056119(n)+15)`
-/

namespace A090014.P16641594914600511172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A060475 (A056119 n + 15).toNat

end

end A090014.P16641594914600511172

namespace A090014

/-- `5*A060475(A056119(n)+15)` -/
def P16641594914600511172.Spec : Prop :=
  ∀ n, P16641594914600511172.a n = A090014 (n + 1)

end A090014

/-! ## A090014.P473787714359355171

`5*A060475(Δ[A023551(n+1)])`
-/

namespace A090014.P473787714359355171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A060475 (f1 (n + 1) - f1 n).toNat

end

end A090014.P473787714359355171

namespace A090014

/-- `5*A060475(Δ[A023551(n+1)])` -/
def P473787714359355171.Spec : Prop :=
  ∀ n, P473787714359355171.a n = A090014 (n + 1)

end A090014

/-! ## A090014.P8304684888965520850

`5*A060475(A000217(n+6)-6)`
-/

namespace A090014.P8304684888965520850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A060475 (A000217 (n + 6) - 6).toNat

end

end A090014.P8304684888965520850

namespace A090014

/-- `5*A060475(A000217(n+6)-6)` -/
def P8304684888965520850.Spec : Prop :=
  ∀ n, P8304684888965520850.a n = A090014 (n + 1)

end A090014

/-! ## A090014.P3878712093839727253

`5*A060475(A161680(n+7)-6)`
-/

namespace A090014.P3878712093839727253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A060475 (A161680 (n + 7) - 6).toNat

end

end A090014.P3878712093839727253

namespace A090014

/-- `5*A060475(A161680(n+7)-6)` -/
def P3878712093839727253.Spec : Prop :=
  ∀ n, P3878712093839727253.a n = A090014 (n + 1)

end A090014

/-! ## A090014.P4123307474674726495

`A001909(n+3)+A001909(n+4)`
-/

namespace A090014.P4123307474674726495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001909 (n + 3) + A001909 (n + 4)

end

end A090014.P4123307474674726495

namespace A090014

/-- `A001909(n+3)+A001909(n+4)` -/
def P4123307474674726495.Spec : Prop :=
  ∀ n, P4123307474674726495.a n = A090014 (n + 1)

end A090014

/-!
# A090015: Permanent of (0,1)-matrix of size n X (n+d) with d=5 and n-1 zeros not on a line.

The programs for A090015, the canonical program `A090015.P1707451172740521135` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090015 has offset 1).

The definition of A090015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090015.P1707451172740521135

`(n+5)*a(n-1)+(n-1)*a(n-2)` with `a(0)=6, a(1)=36`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090015

/-- `(n+5)*a(n-1)+(n-1)*a(n-2)` -/
def P1707451172740521135.Spec : Prop :=
  ∀ n, P1707451172740521135.a n = A090015 (n + 1)

theorem P1707451172740521135.correct : P1707451172740521135.Spec := by
  intro n
  simp only [A090015, Nat.add_sub_cancel]

end A090015

/-! ## A090015.P7289509593188023659

`6*A176732(n)`
-/

namespace A090015.P7289509593188023659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A176732 n

end

end A090015.P7289509593188023659

namespace A090015

/-- `6*A176732(n)` -/
def P7289509593188023659.Spec : Prop :=
  ∀ n, P7289509593188023659.a n = A090015 (n + 1)

end A090015

/-! ## A090015.P9311022440701279409

`6*A060475(A000217(n+7)-7)`
-/

namespace A090015.P9311022440701279409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A060475 (A000217 (n + 7) - 7).toNat

end

end A090015.P9311022440701279409

namespace A090015

/-- `6*A060475(A000217(n+7)-7)` -/
def P9311022440701279409.Spec : Prop :=
  ∀ n, P9311022440701279409.a n = A090015 (n + 1)

end A090015

/-! ## A090015.P15979532220814093323

`6*A060475(eq[7, A004736(n+1)])`
-/

namespace A090015.P15979532220814093323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090015.P15979532220814093323

namespace A090015

/-- `6*A060475(eq[7, A004736(n+1)])` -/
def P15979532220814093323.Spec : Prop :=
  ∀ n, P15979532220814093323.a n = A090015 (n + 1)

end A090015

/-! ## A090015.P11532539121398775039

`A001910(n+4)+A001910(n+5)`
-/

namespace A090015.P11532539121398775039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001910 (n + 4) + A001910 (n + 5)

end

end A090015.P11532539121398775039

namespace A090015

/-- `A001910(n+4)+A001910(n+5)` -/
def P11532539121398775039.Spec : Prop :=
  ∀ n, P11532539121398775039.a n = A090015 (n + 1)

end A090015

/-! ## A090015.P380081617307156448

`6*(A090016(n+1)-A090010(n+1))`
-/

namespace A090015.P380081617307156448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A090016 (n + 1) - A090010 (n + 1))

end

end A090015.P380081617307156448

namespace A090015

/-- `6*(A090016(n+1)-A090010(n+1))` -/
def P380081617307156448.Spec : Prop :=
  ∀ n, P380081617307156448.a n = A090015 (n + 1)

end A090015

/-!
# A090016: Permanent of (0,1)-matrix of size n X (n+d) with d=6 and n-1 zeros not on a line.

The programs for A090016, the canonical program `A090016.P7741865948052560039` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090016 has offset 1).

The definition of A090016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090016.P7741865948052560039

`(n+6)*a(n-1)+(n-1)*a(n-2)` with `a(0)=7, a(1)=49`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090016

/-- `(n+6)*a(n-1)+(n-1)*a(n-2)` -/
def P7741865948052560039.Spec : Prop :=
  ∀ n, P7741865948052560039.a n = A090016 (n + 1)

theorem P7741865948052560039.correct : P7741865948052560039.Spec := by
  intro n
  simp only [A090016, Nat.add_sub_cancel]

end A090016

/-! ## A090016.P6158592351039635597

`7*A176733(n)`
-/

namespace A090016.P6158592351039635597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A176733 n

end

end A090016.P6158592351039635597

namespace A090016

/-- `7*A176733(n)` -/
def P6158592351039635597.Spec : Prop :=
  ∀ n, P6158592351039635597.a n = A090016 (n + 1)

end A090016

/-! ## A090016.P7087838541295948845

`7*A060475(eq[7, A025581(n)])`
-/

namespace A090016.P7087838541295948845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090016.P7087838541295948845

namespace A090016

/-- `7*A060475(eq[7, A025581(n)])` -/
def P7087838541295948845.Spec : Prop :=
  ∀ n, P7087838541295948845.a n = A090016 (n + 1)

end A090016

/-! ## A090016.P11918279461963846480

`A176732(n+1)+A176732(n)`
-/

namespace A090016.P11918279461963846480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176732 (n + 1) + A176732 n

end

end A090016.P11918279461963846480

namespace A090016

/-- `A176732(n+1)+A176732(n)` -/
def P11918279461963846480.Spec : Prop :=
  ∀ n, P11918279461963846480.a n = A090016 (n + 1)

end A090016

/-! ## A090016.P10462656433646575087

`7*A060475(A000217(n+8)-8)`
-/

namespace A090016.P10462656433646575087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A060475 (A000217 (n + 8) - 8).toNat

end

end A090016.P10462656433646575087

namespace A090016

/-- `7*A060475(A000217(n+8)-8)` -/
def P10462656433646575087.Spec : Prop :=
  ∀ n, P10462656433646575087.a n = A090016 (n + 1)

end A090016

/-! ## A090016.P2445410734848421143

`A090010(n+1)+A090015(n+1)/6`
-/

namespace A090016.P2445410734848421143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090010 (n + 1) : ℚ) + (A090015 (n + 1) : ℚ) / 6

end

end A090016.P2445410734848421143

namespace A090016

/-- `A090010(n+1)+A090015(n+1)/6` -/
def P2445410734848421143.Spec : Prop :=
  ∀ n, P2445410734848421143.a n = (A090016 (n + 1) : ℚ)

end A090016

/-!
# A090017: a(n) = 4*a(n-1) + 2*a(n-2) for n>1, a(0)=0, a(1)=1.

The programs for A090017, the canonical program `A090017.P17248760716616252540` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090017 has offset 0).

The definition of A090017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+2*a(n-2)` (program `A090017.P17248760716616252540`, by `A090017.P17248760716616252540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090017.P17248760716616252540

`4*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090017

/-- `4*a(n-1)+2*a(n-2)` -/
def P17248760716616252540.Spec : Prop :=
  ∀ n, (P17248760716616252540.a n : ℤ) = A090017 n

theorem P17248760716616252540.correct : P17248760716616252540.Spec := by
  intro n
  simp only [A090017]

end A090017

/-! ## A090017.P1822065786019830863

`((2+sqrt(6))^n-(2-sqrt(6))^n)/(2*sqrt(6))`
-/

namespace A090017.P1822065786019830863
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (6 : ℝ)) ^ n - (2 - Real.sqrt (6 : ℝ)) ^ n) / (2 * Real.sqrt (6 : ℝ))

end

end A090017.P1822065786019830863

namespace A090017

/-- `((2+sqrt(6))^n-(2-sqrt(6))^n)/(2*sqrt(6))` -/
def P1822065786019830863.Spec : Prop :=
  ∀ n, P1822065786019830863.a n = (A090017 n : ℝ)

theorem P1822065786019830863.correct : P1822065786019830863.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090017, Nat.add_sub_cancel, A090017.P1822065786019830863.a, A090017.P17248760716616252540.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090017, Nat.add_sub_cancel, A090017.P1822065786019830863.a, A090017.P17248760716616252540.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090017

/-! ## A090017.P2823241647871180999

`ogf(x/(1-4x-2x^2))`
-/

namespace A090017.P2823241647871180999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, -2] n

end

end A090017.P2823241647871180999

namespace A090017

/-- `ogf(x/(1-4x-2x^2))` -/
def P2823241647871180999.Spec : Prop :=
  ∀ n, P2823241647871180999.a n = A090017 n

end A090017

/-! ## A090017.P12857165983823188997

`2-2*(1-2*a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A090017.P12857165983823188997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - 2 * (1 - 2 * a (n - 1) - a (n - 2))

end

end A090017.P12857165983823188997

namespace A090017

/-- `2-2*(1-2*a(n-1)-a(n-2))` -/
def P12857165983823188997.Spec : Prop :=
  ∀ n, P12857165983823188997.a n = A090017 n

end A090017

/-! ## A090017.P2719051482200538933

`a(n-1)+a(n-1)+a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A090017.P2719051482200538933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2)))))

end

end A090017.P2719051482200538933

namespace A090017

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P2719051482200538933.Spec : Prop :=
  ∀ n, (P2719051482200538933.a n : ℤ) = A090017 n

theorem P2719051482200538933.correct : P2719051482200538933.Spec := by
  intro n
  simp only [A090017, Nat.add_sub_cancel, A090017.P2719051482200538933.a, A090017.P17248760716616252540.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A090017

/-! ## A090017.P17416429038554180019

`A164549(n)-A123347(n)`
-/

namespace A090017.P17416429038554180019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164549 n - A123347 n

end

end A090017.P17416429038554180019

namespace A090017

/-- `A164549(n)-A123347(n)` -/
def P17416429038554180019.Spec : Prop :=
  ∀ n, P17416429038554180019.a n = A090017 n

end A090017

/-! ## A090017.P5932902147483166735

`A164549(n)-A026655(2*n)`
-/

namespace A090017.P5932902147483166735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164549 n - A026655 (2 * n)

end

end A090017.P5932902147483166735

namespace A090017

/-- `A164549(n)-A026655(2*n)` -/
def P5932902147483166735.Spec : Prop :=
  ∀ n, P5932902147483166735.a n = A090017 n

end A090017

/-! ## A090017.P1612588028592993033

`A123347(n)-A016116(n+1)*A041007(n)`
-/

namespace A090017.P1612588028592993033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123347 n - A016116 (n + 1) * A041007 n

end

end A090017.P1612588028592993033

namespace A090017

/-- `A123347(n)-A016116(n+1)*A041007(n)` -/
def P1612588028592993033.Spec : Prop :=
  ∀ n, P1612588028592993033.a n = A090017 n

end A090017

/-! ## A090017.P12220947036318942870

`A084059(n+1)-A021001(n)`
-/

namespace A090017.P12220947036318942870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 (n + 1) - A021001 n

end

end A090017.P12220947036318942870

namespace A090017

/-- `A084059(n+1)-A021001(n)` -/
def P12220947036318942870.Spec : Prop :=
  ∀ n, P12220947036318942870.a n = A090017 n

end A090017

/-! ## A090017.P10772012680655455006

`A021001(n)-A084059(n)-A164549(n)`
-/

namespace A090017.P10772012680655455006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021001 n - A084059 n - A164549 n

end

end A090017.P10772012680655455006

namespace A090017

/-- `A021001(n)-A084059(n)-A164549(n)` -/
def P10772012680655455006.Spec : Prop :=
  ∀ n, P10772012680655455006.a n = A090017 n

end A090017

/-!
# A090018: a(n) = 6*a(n-1) + 3*a(n-2) for n > 2, a(0)=1, a(1)=6.

The programs for A090018, the canonical program `A090018.P16083146126330674656` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090018 has offset 0).

The definition of A090018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+3*a(n-2)` (program `A090018.P16083146126330674656`, by `A090018.P16083146126330674656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090018.P16083146126330674656

`6*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090018

/-- `6*a(n-1)+3*a(n-2)` -/
def P16083146126330674656.Spec : Prop :=
  ∀ n, (P16083146126330674656.a n : ℤ) = A090018 n

theorem P16083146126330674656.correct : P16083146126330674656.Spec := by
  intro n
  simp only [A090018]

end A090018

/-! ## A090018.P8095724133624553568

`ogf(1/(1-6x-3x^2))`
-/

namespace A090018.P8095724133624553568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, -3] n

end

end A090018.P8095724133624553568

namespace A090018

/-- `ogf(1/(1-6x-3x^2))` -/
def P8095724133624553568.Spec : Prop :=
  ∀ n, P8095724133624553568.a n = A090018 n

end A090018

/-! ## A090018.P17082772125043357751

`abs(∑[A099842(n)])`
-/

namespace A090018.P17082772125043357751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A090018.P17082772125043357751

namespace A090018

/-- `abs(∑[A099842(n)])` -/
def P17082772125043357751.Spec : Prop :=
  ∀ n, P17082772125043357751.a n = A090018 n

end A090018

/-! ## A090018.P16887465847724825174

`round(A027153(2*n)/2)`
-/

namespace A090018.P16887465847724825174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A027153 (2 * n) : ℚ) / 2)

end

end A090018.P16887465847724825174

namespace A090018

/-- `round(A027153(2*n)/2)` -/
def P16887465847724825174.Spec : Prop :=
  ∀ n, P16887465847724825174.a n = A090018 n

end A090018

/-! ## A090018.P13214770740493659072

`A287811(n)-a(n-1)` with `a(0)=1`
-/

namespace A090018.P13214770740493659072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287811 n - a (n - 1)

end

end A090018.P13214770740493659072

namespace A090018

/-- `A287811(n)-a(n-1)` -/
def P13214770740493659072.Spec : Prop :=
  ∀ n, P13214770740493659072.a n = A090018 n

end A090018

/-! ## A090018.P1223054816433011570

`A027151(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A090018.P1223054816433011570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027151 (2 * n) - a (n - 1)

end

end A090018.P1223054816433011570

namespace A090018

/-- `A027151(2*n)-a(n-1)` -/
def P1223054816433011570.Spec : Prop :=
  ∀ n, P1223054816433011570.a n = A090018 n

end A090018

/-! ## A090018.P15387809096581438740

`A141041(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A090018.P15387809096581438740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A141041 n + 3 * a (n - 1)

end

end A090018.P15387809096581438740

namespace A090018

/-- `A141041(n)+3*a(n-1)` -/
def P15387809096581438740.Spec : Prop :=
  ∀ n, P15387809096581438740.a n = A090018 n

end A090018

/-! ## A090018.P1679270420504935561

`A041017(n)*A056449(n)`
-/

namespace A090018.P1679270420504935561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041017 n * A056449 n

end

end A090018.P1679270420504935561

namespace A090018

/-- `A041017(n)*A056449(n)` -/
def P1679270420504935561.Spec : Prop :=
  ∀ n, P1679270420504935561.a n = A090018 n

end A090018

/-! ## A090018.P9856372069099097578

`A041083(n)*A166450(n+1)`
-/

namespace A090018.P9856372069099097578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041083 n * A166450 (n + 1)

end

end A090018.P9856372069099097578

namespace A090018

/-- `A041083(n)*A166450(n+1)` -/
def P9856372069099097578.Spec : Prop :=
  ∀ n, P9856372069099097578.a n = A090018 n

end A090018

/-! ## A090018.P15631528893927116758

`∑[A099842(n)]*ratio[A057077(n)]`
-/

namespace A090018.P15631528893927116758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A090018.P15631528893927116758

namespace A090018

/-- `∑[A099842(n)]*ratio[A057077(n)]` -/
def P15631528893927116758.Spec : Prop :=
  ∀ n, P15631528893927116758.a n = (A090018 n : ℚ)

end A090018

/-! ## A090018.P2258147410133586801

`∑[A099842(n)]*A057077(2*n)`
-/

namespace A090018.P2258147410133586801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A090018.P2258147410133586801

namespace A090018

/-- `∑[A099842(n)]*A057077(2*n)` -/
def P2258147410133586801.Spec : Prop :=
  ∀ n, P2258147410133586801.a n = A090018 n

end A090018

/-! ## A090018.P10278964701910969579

`Δ[A180028(n)/8]`
-/

namespace A090018.P10278964701910969579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180028 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090018.P10278964701910969579

namespace A090018

/-- `Δ[A180028(n)/8]` -/
def P10278964701910969579.Spec : Prop :=
  ∀ n, P10278964701910969579.a n = (A090018 n : ℚ)

end A090018

/-! ## A090018.P8657939758545177610

`(A027164(2*n+1)-A027164(2*n))/2`
-/

namespace A090018.P8657939758545177610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027164 (2 * n + 1) - A027164 (2 * n) : ℚ) / 2

end

end A090018.P8657939758545177610

namespace A090018

/-- `(A027164(2*n+1)-A027164(2*n))/2` -/
def P8657939758545177610.Spec : Prop :=
  ∀ n, P8657939758545177610.a n = (A090018 n : ℚ)

end A090018

/-!
# A090019: a(n) = (3*10^n + 2*0^n)/5.

The programs for A090019, the canonical program `A090019.P1651966097368188131` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090019 has offset 0).

The definition of A090019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*10^n+2*0^n)/5` (program `A090019.P5963741773363223307`, by `A090019.P5963741773363223307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090019.P5963741773363223307

`(3*10^n+2*0^n)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090019.P5963741773363223307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 10 ^ n + 2 * 0 ^ n : ℚ) / 5

end

end A090019.P5963741773363223307

namespace A090019

/-- `(3*10^n+2*0^n)/5` -/
def P5963741773363223307.Spec : Prop :=
  ∀ n, P5963741773363223307.a n = (A090019 n : ℚ)

theorem P5963741773363223307.correct : P5963741773363223307.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090019, Nat.add_sub_cancel, A090019.P5963741773363223307.a, A090019.P1651966097368188131.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A090019, Nat.add_sub_cancel, A090019.P5963741773363223307.a, A090019.P1651966097368188131.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A090019

/-! ## A090019.P15065496884073856144

`ogf((1-4x)/(1-10x))`
-/

namespace A090019.P15065496884073856144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -10] n

end

end A090019.P15065496884073856144

namespace A090019

/-- `ogf((1-4x)/(1-10x))` -/
def P15065496884073856144.Spec : Prop :=
  ∀ n, P15065496884073856144.a n = A090019 n

end A090019

/-! ## A090019.P1651966097368188131

`10*a(n-1)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090019

/-- `10*a(n-1)` -/
def P1651966097368188131.Spec : Prop :=
  ∀ n, (P1651966097368188131.a n : ℤ) = A090019 n

theorem P1651966097368188131.correct : P1651966097368188131.Spec := by
  intro n
  simp only [A090019]

end A090019

/-! ## A090019.P5353710312518948171

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=6, a(2)=10`
-/

namespace A090019.P5353710312518948171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A090019.P5353710312518948171

namespace A090019

/-- `abs(∏[-a(n-1)])` -/
def P5353710312518948171.Spec : Prop :=
  ∀ n, P5353710312518948171.a n = A090019 n

end A090019

/-! ## A090019.P11481882946934689894

`lcm(5^(n-1), a(n-1))+a(n-1)/(1-4/5)` with `a(0)=1`
-/

namespace A090019.P11481882946934689894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A090019.P11481882946934689894

namespace A090019

/-- `lcm(5^(n-1), a(n-1))+a(n-1)/(1-4/5)` -/
def P11481882946934689894.Spec : Prop :=
  ∀ n, P11481882946934689894.a n = (A090019 n : ℚ)

end A090019

/-! ## A090019.P10403002615200435324

`Δ[A067275(n)]`
-/

namespace A090019.P10403002615200435324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090019.P10403002615200435324

namespace A090019

/-- `Δ[A067275(n)]` -/
def P10403002615200435324.Spec : Prop :=
  ∀ n, P10403002615200435324.a n = A090019 n

end A090019

/-! ## A090019.P9779876746125021021

`lcm(2^n, A003948(n))`
-/

namespace A090019.P9779876746125021021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A003948 n)

end

end A090019.P9779876746125021021

namespace A090019

/-- `lcm(2^n, A003948(n))` -/
def P9779876746125021021.Spec : Prop :=
  ∀ n, (P9779876746125021021.a n : ℤ) = A090019 n

end A090019

/-! ## A090019.P967043889783007369

`A037124(A122709(n))`
-/

namespace A090019.P967043889783007369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A122709 n).toNat

end

end A090019.P967043889783007369

namespace A090019

/-- `A037124(A122709(n))` -/
def P967043889783007369.Spec : Prop :=
  ∀ n, P967043889783007369.a n = A090019 n

end A090019

/-! ## A090019.P16577734673377558851

`A000079(n)*A005053(n)`
-/

namespace A090019.P16577734673377558851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005053 n

end

end A090019.P16577734673377558851

namespace A090019

/-- `A000079(n)*A005053(n)` -/
def P16577734673377558851.Spec : Prop :=
  ∀ n, P16577734673377558851.a n = A090019 n

end A090019

/-! ## A090019.P809163837017551446

`lcm(A093136(n), A093138(n))`
-/

namespace A090019.P809163837017551446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093136 n) (A093138 n)

end

end A090019.P809163837017551446

namespace A090019

/-- `lcm(A093136(n), A093138(n))` -/
def P809163837017551446.Spec : Prop :=
  ∀ n, (P809163837017551446.a n : ℤ) = A090019 n

end A090019

/-! ## A090019.P8609026083072594668

`A051885(A122709(n)-1)+1`
-/

namespace A090019.P8609026083072594668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A122709 n - 1).toNat + 1

end

end A090019.P8609026083072594668

namespace A090019

/-- `A051885(A122709(n)-1)+1` -/
def P8609026083072594668.Spec : Prop :=
  ∀ n, P8609026083072594668.a n = A090019 n

end A090019

/-! ## A090019.P9900040764592247878

`A067275(n+1)-A067275(n)`
-/

namespace A090019.P9900040764592247878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 (n + 1) - A067275 n

end

end A090019.P9900040764592247878

namespace A090019

/-- `A067275(n+1)-A067275(n)` -/
def P9900040764592247878.Spec : Prop :=
  ∀ n, P9900040764592247878.a n = A090019 n

end A090019

/-! ## A090019.P9991328935209032597

`(A000225(n)+1)*A005053(n)`
-/

namespace A090019.P9991328935209032597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 1) * A005053 n

end

end A090019.P9991328935209032597

namespace A090019

/-- `(A000225(n)+1)*A005053(n)` -/
def P9991328935209032597.Spec : Prop :=
  ∀ n, P9991328935209032597.a n = A090019 n

end A090019

/-! ## A090019.P18416532940646207225

`(A000051(n)-1)*A005053(n)`
-/

namespace A090019.P18416532940646207225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000051 n - 1) * A005053 n

end

end A090019.P18416532940646207225

namespace A090019

/-- `(A000051(n)-1)*A005053(n)` -/
def P18416532940646207225.Spec : Prop :=
  ∀ n, P18416532940646207225.a n = A090019 n

end A090019

/-! ## A090019.P17873085418099745533

`2*A093143(n)-A093141(n)`
-/

namespace A090019.P17873085418099745533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093143 n - A093141 n

end

end A090019.P17873085418099745533

namespace A090019

/-- `2*A093143(n)-A093141(n)` -/
def P17873085418099745533.Spec : Prop :=
  ∀ n, P17873085418099745533.a n = A090019 n

end A090019

/-! ## A090019.P17672979834651852794

`lcm(2, A011557(n))-A093141(n)`
-/

namespace A090019.P17672979834651852794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A011557 n) : ℤ) - A093141 n

end

end A090019.P17672979834651852794

namespace A090019

/-- `lcm(2, A011557(n))-A093141(n)` -/
def P17672979834651852794.Spec : Prop :=
  ∀ n, P17672979834651852794.a n = A090019 n

end A090019

/-! ## A090019.P10994526726371901951

`∩[A025629(n+1), A180412(n+1)]`
-/

namespace A090019.P10994526726371901951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090019.P10994526726371901951

namespace A090019

/-- `∩[A025629(n+1), A180412(n+1)]` -/
def P10994526726371901951.Spec : Prop :=
  ∀ n, (P10994526726371901951.a n : ℤ) = A090019 n

end A090019

/-! ## A090019.P14861847542903652531

`A346178(n)+A346178(n)-A011557(n)`
-/

namespace A090019.P14861847542903652531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346178 n + (A346178 n - A011557 n)

end

end A090019.P14861847542903652531

namespace A090019

/-- `A346178(n)+A346178(n)-A011557(n)` -/
def P14861847542903652531.Spec : Prop :=
  ∀ n, P14861847542903652531.a n = A090019 n

end A090019

/-! ## A090019.P13763167047510744258

`A196662(n)+A196662(n)-A346178(n)`
-/

namespace A090019.P13763167047510744258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196662 n + (A196662 n - A346178 n)

end

end A090019.P13763167047510744258

namespace A090019

/-- `A196662(n)+A196662(n)-A346178(n)` -/
def P13763167047510744258.Spec : Prop :=
  ∀ n, P13763167047510744258.a n = A090019 n

end A090019

/-! ## A090019.P16378095886292257898

`A002275(n)-(A067275(n)-A093142(n))`
-/

namespace A090019.P16378095886292257898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n - (A067275 n - A093142 n)

end

end A090019.P16378095886292257898

namespace A090019

/-- `A002275(n)-(A067275(n)-A093142(n))` -/
def P16378095886292257898.Spec : Prop :=
  ∀ n, P16378095886292257898.a n = A090019 n

end A090019

/-!
# A090020: Number of distinct lines through the origin in the n-dimensional lattice of side length 4.

The programs for A090020, the canonical program `A090020.P17386054524980595896` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090020 has offset 0).

The definition of A090020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090020.P17386054524980595896

`5^n-3^n-2^n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090020

/-- `5^n-3^n-2^n+1` -/
def P17386054524980595896.Spec : Prop :=
  ∀ n, P17386054524980595896.a n = A090020 n

theorem P17386054524980595896.correct : P17386054524980595896.Spec := by
  intro n
  simp only [A090020]

end A090020

/-! ## A090020.P5178426533531644908

`abs(A135158(n)+1)`
-/

namespace A090020.P5178426533531644908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135158 n + 1|

end

end A090020.P5178426533531644908

namespace A090020

/-- `abs(A135158(n)+1)` -/
def P5178426533531644908.Spec : Prop :=
  ∀ n, P5178426533531644908.a n = A090020 n

end A090020

/-! ## A090020.P15925926683439077360

`abs(A155610(n)-2^n)`
-/

namespace A090020.P15925926683439077360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155610 n - (2 ^ n : ℤ)|

end

end A090020.P15925926683439077360

namespace A090020

/-- `abs(A155610(n)-2^n)` -/
def P15925926683439077360.Spec : Prop :=
  ∀ n, P15925926683439077360.a n = A090020 n

end A090020

/-! ## A090020.P16252538406754795092

`abs(5^n-3^n-A000225(n))`
-/

namespace A090020.P16252538406754795092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - (3 ^ n : ℤ) - A000225 n|

end

end A090020.P16252538406754795092

namespace A090020

/-- `abs(5^n-3^n-A000225(n))` -/
def P16252538406754795092.Spec : Prop :=
  ∀ n, P16252538406754795092.a n = A090020 n

end A090020

/-! ## A090020.P6356259800037280461

`abs(A000225(n)-A005058(n))`
-/

namespace A090020.P6356259800037280461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A005058 n|

end

end A090020.P6356259800037280461

namespace A090020

/-- `abs(A000225(n)-A005058(n))` -/
def P6356259800037280461.Spec : Prop :=
  ∀ n, P6356259800037280461.a n = A090020 n

end A090020

/-! ## A090020.P12359613332063859181

`abs(A007689(n)-A034474(n))`
-/

namespace A090020.P12359613332063859181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007689 n - A034474 n|

end

end A090020.P12359613332063859181

namespace A090020

/-- `abs(A007689(n)-A034474(n))` -/
def P12359613332063859181.Spec : Prop :=
  ∀ n, P12359613332063859181.a n = A090020 n

end A090020

/-! ## A090020.P14422613809278398690

`abs(A074511(n)-A074526(n))`
-/

namespace A090020.P14422613809278398690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074511 n - A074526 n|

end

end A090020.P14422613809278398690

namespace A090020

/-- `abs(A074511(n)-A074526(n))` -/
def P14422613809278398690.Spec : Prop :=
  ∀ n, P14422613809278398690.a n = A090020 n

end A090020

/-! ## A090020.P16154477106629543840

`Δ[A007798(n)-A000079(n)+n]`
-/

namespace A090020.P16154477106629543840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n - A000079 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090020.P16154477106629543840

namespace A090020

/-- `Δ[A007798(n)-A000079(n)+n]` -/
def P16154477106629543840.Spec : Prop :=
  ∀ n, P16154477106629543840.a n = A090020 n

end A090020

/-! ## A090020.P3706433702978501843

`(A034474(n)-A007689(n))%A011557(n)`
-/

namespace A090020.P3706433702978501843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034474 n - A007689 n) (A011557 n)

end

end A090020.P3706433702978501843

namespace A090020

/-- `(A034474(n)-A007689(n))%A011557(n)` -/
def P3706433702978501843.Spec : Prop :=
  ∀ n, P3706433702978501843.a n = A090020 n

end A090020

/-! ## A090020.P15255214375501199055

`(A050621(n+1)-A007689(n))%A034474(n)`
-/

namespace A090020.P15255214375501199055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050621 (n + 1) - A007689 n) (A034474 n)

end

end A090020.P15255214375501199055

namespace A090020

/-- `(A050621(n+1)-A007689(n))%A034474(n)` -/
def P15255214375501199055.Spec : Prop :=
  ∀ n, P15255214375501199055.a n = A090020 n

end A090020

/-!
# A090021: Number of distinct lines through the origin in the n-dimensional lattice of side length 5.

The programs for A090021, the canonical program `A090021.P3948784081199003552` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090021 has offset 0).

The definition of A090021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090021.P3948784081199003552

`6^n-3^n-2*2^n+2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090021

/-- `6^n-3^n-2*2^n+2` -/
def P3948784081199003552.Spec : Prop :=
  ∀ n, P3948784081199003552.a n = A090021 n

theorem P3948784081199003552.correct : P3948784081199003552.Spec := by
  intro n
  simp only [A090021]

end A090021

/-! ## A090021.P3535893692173003383

`A168589(n)*A225883(n)`
-/

namespace A090021.P3535893692173003383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168589 n * A225883 n

end

end A090021.P3535893692173003383

namespace A090021

/-- `A168589(n)*A225883(n)` -/
def P3535893692173003383.Spec : Prop :=
  ∀ n, P3535893692173003383.a n = A090021 n

end A090021

/-! ## A090021.P13107867915791096461

`(A024023(n)-1)*A000225(n)`
-/

namespace A090021.P13107867915791096461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n - 1) * A000225 n

end

end A090021.P13107867915791096461

namespace A090021

/-- `(A024023(n)-1)*A000225(n)` -/
def P13107867915791096461.Spec : Prop :=
  ∀ n, P13107867915791096461.a n = A090021 n

end A090021

/-! ## A090021.P536431954742266011

`record[(A140303(n)-2)*A173787(n)]`
-/

namespace A090021.P536431954742266011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140303 n - 2) * A173787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090021.P536431954742266011

namespace A090021

/-- `record[(A140303(n)-2)*A173787(n)]` -/
def P536431954742266011.Spec : Prop :=
  ∀ n, P536431954742266011.a n = A090021 n

end A090021

/-! ## A090021.P4084498556600823178

`lcm(A000225(n)*A168589(n), A000225(n))`
-/

namespace A090021.P4084498556600823178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000225 n * A168589 n) (A000225 n)

end

end A090021.P4084498556600823178

namespace A090021

/-- `lcm(A000225(n)*A168589(n), A000225(n))` -/
def P4084498556600823178.Spec : Prop :=
  ∀ n, (P4084498556600823178.a n : ℤ) = A090021 n

end A090021

/-!
# A090022: Number of distinct lines through the origin in the n-dimensional lattice of side length 6.

The programs for A090022, the canonical program `A090022.P15869501940427212116` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090022 has offset 0).

The definition of A090022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090022.P15869501940427212116

`7^n-4^n-3^n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090022

/-- `7^n-4^n-3^n+1` -/
def P15869501940427212116.Spec : Prop :=
  ∀ n, P15869501940427212116.a n = A090022 n

theorem P15869501940427212116.correct : P15869501940427212116.Spec := by
  intro n
  simp only [A090022]

end A090022

/-! ## A090022.P4555146122013303149

`abs(A155628(n)-3^n)`
-/

namespace A090022.P4555146122013303149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155628 n - (3 ^ n : ℤ)|

end

end A090022.P4555146122013303149

namespace A090022

/-- `abs(A155628(n)-3^n)` -/
def P4555146122013303149.Spec : Prop :=
  ∀ n, P4555146122013303149.a n = A090022 n

end A090022

/-! ## A090022.P8358750091509898881

`abs(A155612(n)-4^n)`
-/

namespace A090022.P8358750091509898881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155612 n - (4 ^ n : ℤ)|

end

end A090022.P8358750091509898881

namespace A090022

/-- `abs(A155612(n)-4^n)` -/
def P8358750091509898881.Spec : Prop :=
  ∀ n, P8358750091509898881.a n = A090022 n

end A090022

/-! ## A090022.P14660500857575239905

`abs(A034491(n)-A074605(n))`
-/

namespace A090022.P14660500857575239905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034491 n - A074605 n|

end

end A090022.P14660500857575239905

namespace A090022

/-- `abs(A034491(n)-A074605(n))` -/
def P14660500857575239905.Spec : Prop :=
  ∀ n, P14660500857575239905.a n = A090022 n

end A090022

/-! ## A090022.P13793663787930532046

`abs(A074503(n)-A074526(n))`
-/

namespace A090022.P13793663787930532046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074503 n - A074526 n|

end

end A090022.P13793663787930532046

namespace A090022

/-- `abs(A074503(n)-A074526(n))` -/
def P13793663787930532046.Spec : Prop :=
  ∀ n, P13793663787930532046.a n = A090022 n

end A090022

/-! ## A090022.P12977942460806936608

`abs(A000244(n)-A155628(n))`
-/

namespace A090022.P12977942460806936608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A155628 n|

end

end A090022.P12977942460806936608

namespace A090022

/-- `abs(A000244(n)-A155628(n))` -/
def P12977942460806936608.Spec : Prop :=
  ∀ n, P12977942460806936608.a n = A090022 n

end A090022

/-! ## A090022.P12099395866089324228

`abs(A000420(n)-A155602(n))`
-/

namespace A090022.P12099395866089324228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A155602 n|

end

end A090022.P12099395866089324228

namespace A090022

/-- `abs(A000420(n)-A155602(n))` -/
def P12099395866089324228.Spec : Prop :=
  ∀ n, P12099395866089324228.a n = A090022 n

end A090022

/-! ## A090022.P16093013354367556888

`abs(A024036(n)-A190541(n))`
-/

namespace A090022.P16093013354367556888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024036 n - A190541 n|

end

end A090022.P16093013354367556888

namespace A090022

/-- `abs(A024036(n)-A190541(n))` -/
def P16093013354367556888.Spec : Prop :=
  ∀ n, P16093013354367556888.a n = A090022 n

end A090022

/-!
# A090023: Number of distinct lines through the origin in the n-dimensional lattice of side length 7.

The programs for A090023, the canonical program `A090023.P789509451518306862` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090023 has offset 0).

The definition of A090023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090023.P789509451518306862

`8^n-4^n-3^n-2^n+2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090023

/-- `8^n-4^n-3^n-2^n+2` -/
def P789509451518306862.Spec : Prop :=
  ∀ n, P789509451518306862.a n = A090023 n

theorem P789509451518306862.correct : P789509451518306862.Spec := by
  intro n
  simp only [A090023]

end A090023

/-! ## A090023.P4495287982613529309

`abs(A155599(n)-A155602(n))`
-/

namespace A090023.P4495287982613529309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155599 n - A155602 n|

end

end A090023.P4495287982613529309

namespace A090023

/-- `abs(A155599(n)-A155602(n))` -/
def P4495287982613529309.Spec : Prop :=
  ∀ n, P4495287982613529309.a n = A090023 n

end A090023

/-! ## A090023.P6526002809728022496

`(A155613(n)+A062395(n))%A074535(n)`
-/

namespace A090023.P6526002809728022496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155613 n + A062395 n) (A074535 n)

end

end A090023.P6526002809728022496

namespace A090023

/-- `(A155613(n)+A062395(n))%A074535(n)` -/
def P6526002809728022496.Spec : Prop :=
  ∀ n, P6526002809728022496.a n = A090023 n

end A090023

/-! ## A090023.P13652861926334724257

`(A155599(n)-A155602(n))%A155592(n)`
-/

namespace A090023.P13652861926334724257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155599 n - A155602 n) (A155592 n)

end

end A090023.P13652861926334724257

namespace A090023

/-- `(A155599(n)-A155602(n))%A155592(n)` -/
def P13652861926334724257.Spec : Prop :=
  ∀ n, P13652861926334724257.a n = A090023 n

end A090023

/-! ## A090023.P8995786732502776949

`(A155599(n)-A155602(n))*A016974(n)%2`
-/

namespace A090023.P8995786732502776949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155599 n - A155602 n) * Int.tmod (A016974 n) 2

end

end A090023.P8995786732502776949

namespace A090023

/-- `(A155599(n)-A155602(n))*A016974(n)%2` -/
def P8995786732502776949.Spec : Prop :=
  ∀ n, P8995786732502776949.a n = A090023 n

end A090023

/-! ## A090023.P5068892386543620650

`(A155599(n)-A155602(n))*and(1, A027180(n))`
-/

namespace A090023.P5068892386543620650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155599 n - A155602 n) * Int.land 1 (A027180 n)

end

end A090023.P5068892386543620650

namespace A090023

/-- `(A155599(n)-A155602(n))*and(1, A027180(n))` -/
def P5068892386543620650.Spec : Prop :=
  ∀ n, P5068892386543620650.a n = A090023 n

end A090023

/-! ## A090023.P2400109291825775223

`(A155599(n)-A155602(n))*A000040(n+1)%2`
-/

namespace A090023.P2400109291825775223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155599 n - A155602 n) * Int.tmod (A000040 (n + 1)) 2

end

end A090023.P2400109291825775223

namespace A090023

/-- `(A155599(n)-A155602(n))*A000040(n+1)%2` -/
def P2400109291825775223.Spec : Prop :=
  ∀ n, P2400109291825775223.a n = A090023 n

end A090023

/-! ## A090023.P958942249424302866

`(A155599(n)-A155602(n))/A000040(n+2)%2`
-/

namespace A090023.P958942249424302866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155599 n - A155602 n : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A090023.P958942249424302866

namespace A090023

/-- `(A155599(n)-A155602(n))/A000040(n+2)%2` -/
def P958942249424302866.Spec : Prop :=
  ∀ n, P958942249424302866.a n = (A090023 n : ℚ)

end A090023

/-! ## A090023.P18239181018064305984

`(A005408(n)-2*n)*(A155599(n)-A155602(n))`
-/

namespace A090023.P18239181018064305984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (2 * n : ℤ)) * (A155599 n - A155602 n)

end

end A090023.P18239181018064305984

namespace A090023

/-- `(A005408(n)-2*n)*(A155599(n)-A155602(n))` -/
def P18239181018064305984.Spec : Prop :=
  ∀ n, P18239181018064305984.a n = A090023 n

theorem P18239181018064305984.correct : P18239181018064305984.Spec := by
  intro n
  simp only [A090023, Nat.add_sub_cancel, A090023.P18239181018064305984.a, A090023.P789509451518306862.a, A005408, A005408.P17437947328870227736.a, A155599, A155599.P14257603641218183126.a, A155602, A155602.P2314691985141275640.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090023

/-! ## A090023.P6755338008995909358

`(A155599(n)-A155602(n))*C(2, A007318(n)+1)!`
-/

namespace A090023.P6755338008995909358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155599 n - A155602 n) * (Nat.factorial (Nat.choose 2 (A007318 n + 1).toNat) : ℤ)

end

end A090023.P6755338008995909358

namespace A090023

/-- `(A155599(n)-A155602(n))*C(2, A007318(n)+1)!` -/
def P6755338008995909358.Spec : Prop :=
  ∀ n, P6755338008995909358.a n = A090023 n

end A090023

/-! ## A090023.P3103420112411224032

`(A155599(n)-A155602(n))*A007318(n²%(n+1))`
-/

namespace A090023.P3103420112411224032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155599 n - A155602 n) * A007318 (n ^ 2 % (n + 1))

end

end A090023.P3103420112411224032

namespace A090023

/-- `(A155599(n)-A155602(n))*A007318(n²%(n+1))` -/
def P3103420112411224032.Spec : Prop :=
  ∀ n, P3103420112411224032.a n = A090023 n

end A090023

/-! ## A090023.P4624090513664324331

`(A155599(n)-A155602(n))*(A009005(n+1)-1)%(n+2)`
-/

namespace A090023.P4624090513664324331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155599 n - A155602 n) * Int.tmod (A009005 (n + 1) - 1) (n + 2 : ℤ)

end

end A090023.P4624090513664324331

namespace A090023

/-- `(A155599(n)-A155602(n))*(A009005(n+1)-1)%(n+2)` -/
def P4624090513664324331.Spec : Prop :=
  ∀ n, P4624090513664324331.a n = A090023 n

end A090023

/-! ## A090023.P5451177738654080614

`(A155599(n)-A155602(n))*A001222(A007528(n+1))`
-/

namespace A090023.P5451177738654080614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155599 n - A155602 n) * A001222 (A007528 (n + 1)).toNat

end

end A090023.P5451177738654080614

namespace A090023

/-- `(A155599(n)-A155602(n))*A001222(A007528(n+1))` -/
def P5451177738654080614.Spec : Prop :=
  ∀ n, P5451177738654080614.a n = A090023 n

end A090023

/-! ## A090023.P11354053934381864192

`(A155599(n)-A155602(n))*A001222(A007821(n+1))`
-/

namespace A090023.P11354053934381864192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155599 n - A155602 n) * A001222 (A007821 (n + 1)).toNat

end

end A090023.P11354053934381864192

namespace A090023

/-- `(A155599(n)-A155602(n))*A001222(A007821(n+1))` -/
def P11354053934381864192.Spec : Prop :=
  ∀ n, P11354053934381864192.a n = A090023 n

end A090023

/-! ## A090023.P4623687772295781782

`(A155599(n)-A155602(n))*A001222(A080359(n+1))`
-/

namespace A090023.P4623687772295781782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155599 n - A155602 n) * A001222 (A080359 (n + 1)).toNat

end

end A090023.P4623687772295781782

namespace A090023

/-- `(A155599(n)-A155602(n))*A001222(A080359(n+1))` -/
def P4623687772295781782.Spec : Prop :=
  ∀ n, P4623687772295781782.a n = A090023 n

end A090023

/-! ## A090023.P3223822047151825940

`(A110514(A016813(n))+2)*(A155599(n)-A155602(n))`
-/

namespace A090023.P3223822047151825940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110514 (A016813 n).toNat + 2) * (A155599 n - A155602 n)

end

end A090023.P3223822047151825940

namespace A090023

/-- `(A110514(A016813(n))+2)*(A155599(n)-A155602(n))` -/
def P3223822047151825940.Spec : Prop :=
  ∀ n, P3223822047151825940.a n = A090023 n

end A090023

/-!
# A090024: Number of distinct lines through the origin in the n-dimensional lattice of side length 8.

The programs for A090024, the canonical program `A090024.P5608712160326319223` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090024 has offset 0).

The definition of A090024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090024.P5608712160326319223

`9^n-5^n-3^n-2^n+2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090024

/-- `9^n-5^n-3^n-2^n+2` -/
def P5608712160326319223.Spec : Prop :=
  ∀ n, P5608712160326319223.a n = A090024 n

theorem P5608712160326319223.correct : P5608712160326319223.Spec := by
  intro n
  simp only [A090024]

end A090024

/-! ## A090024.P11578226956369531785

`abs(A155588(n)-A155614(n))`
-/

namespace A090024.P11578226956369531785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155588 n - A155614 n|

end

end A090024.P11578226956369531785

namespace A090024

/-- `abs(A155588(n)-A155614(n))` -/
def P11578226956369531785.Spec : Prop :=
  ∀ n, P11578226956369531785.a n = A090024 n

end A090024

/-! ## A090024.P3600545455641964359

`abs(A155600(n)-A155603(n))`
-/

namespace A090024.P3600545455641964359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155600 n - A155603 n|

end

end A090024.P3600545455641964359

namespace A090024

/-- `abs(A155600(n)-A155603(n))` -/
def P3600545455641964359.Spec : Prop :=
  ∀ n, P3600545455641964359.a n = A090024 n

end A090024

/-! ## A090024.P13406202390942611318

`(A155603(n)-A155600(n))*A057428(n)`
-/

namespace A090024.P13406202390942611318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155603 n - A155600 n) * A057428 n

end

end A090024.P13406202390942611318

namespace A090024

/-- `(A155603(n)-A155600(n))*A057428(n)` -/
def P13406202390942611318.Spec : Prop :=
  ∀ n, P13406202390942611318.a n = A090024 n

end A090024

/-! ## A090024.P2594607198945162571

`(A155600(n)-A155603(n))%A155593(n)`
-/

namespace A090024.P2594607198945162571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155600 n - A155603 n) (A155593 n)

end

end A090024.P2594607198945162571

namespace A090024

/-- `(A155600(n)-A155603(n))%A155593(n)` -/
def P2594607198945162571.Spec : Prop :=
  ∀ n, P2594607198945162571.a n = A090024 n

end A090024

/-! ## A090024.P6138387687115030772

`lcm(A155600(n)-A155603(n), A020985(n))`
-/

namespace A090024.P6138387687115030772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155600 n - A155603 n) (A020985 n)

end

end A090024.P6138387687115030772

namespace A090024

/-- `lcm(A155600(n)-A155603(n), A020985(n))` -/
def P6138387687115030772.Spec : Prop :=
  ∀ n, (P6138387687115030772.a n : ℤ) = A090024 n

end A090024

/-! ## A090024.P14940202515079256029

`(A000038(n)-1)*(A155588(n)-A155614(n))`
-/

namespace A090024.P14940202515079256029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) * (A155588 n - A155614 n)

end

end A090024.P14940202515079256029

namespace A090024

/-- `(A000038(n)-1)*(A155588(n)-A155614(n))` -/
def P14940202515079256029.Spec : Prop :=
  ∀ n, P14940202515079256029.a n = A090024 n

end A090024

/-! ## A090024.P11029305828444143891

`gcd(A155588(n)-A155614(n), A000038(n+1))`
-/

namespace A090024.P11029305828444143891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155588 n - A155614 n) (A000038 (n + 1))

end

end A090024.P11029305828444143891

namespace A090024

/-- `gcd(A155588(n)-A155614(n), A000038(n+1))` -/
def P11029305828444143891.Spec : Prop :=
  ∀ n, (P11029305828444143891.a n : ℤ) = A090024 n

end A090024

/-! ## A090024.P6437532450107470141

`(A155588(n)-A155614(n))*A008683(A040144(n+1))`
-/

namespace A090024.P6437532450107470141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155588 n - A155614 n) * A008683 (A040144 (n + 1)).toNat

end

end A090024.P6437532450107470141

namespace A090024

/-- `(A155588(n)-A155614(n))*A008683(A040144(n+1))` -/
def P6437532450107470141.Spec : Prop :=
  ∀ n, P6437532450107470141.a n = A090024 n

end A090024

/-! ## A090024.P7803911211645332112

`(A155588(n)-A155614(n))*A008683(A040172(n+1))`
-/

namespace A090024.P7803911211645332112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155588 n - A155614 n) * A008683 (A040172 (n + 1)).toNat

end

end A090024.P7803911211645332112

namespace A090024

/-- `(A155588(n)-A155614(n))*A008683(A040172(n+1))` -/
def P7803911211645332112.Spec : Prop :=
  ∀ n, P7803911211645332112.a n = A090024 n

end A090024

/-! ## A090024.P9574081546760283124

`(A155588(n)-A155614(n))*A008683(A142109(n+1))`
-/

namespace A090024.P9574081546760283124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155588 n - A155614 n) * A008683 (A142109 (n + 1)).toNat

end

end A090024.P9574081546760283124

namespace A090024

/-- `(A155588(n)-A155614(n))*A008683(A142109(n+1))` -/
def P9574081546760283124.Spec : Prop :=
  ∀ n, P9574081546760283124.a n = A090024 n

end A090024

/-!
# A090025: Number of distinct lines through the origin in 3-dimensional cube of side length n.

The programs for A090025, there is no canonical definition to state claims against.
-/

/-! ## A090025.P7480540141400621118

`A004273(A048134(n))+2*A321879(n)`
-/

namespace A090025.P7480540141400621118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A048134 n).toNat + 2 * A321879 n

end

end A090025.P7480540141400621118

/-! ## A090025.P16168769944752130611

`A004273(A321879(n)+A048134(n))`
-/

namespace A090025.P16168769944752130611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A321879 n + A048134 n).toNat

end

end A090025.P16168769944752130611

/-! ## A090025.P18320337497984749397

`A163985(A321879(n)+A048134(n))`
-/

namespace A090025.P18320337497984749397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A321879 n + A048134 n).toNat

end

end A090025.P18320337497984749397

/-! ## A090025.P4951855469489186837

`A090030(∑[n+3]+6)`
-/

namespace A090025.P4951855469489186837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A090025.P4951855469489186837

/-! ## A090025.P1071409582566824974

`∑[A090225(A167614(n+2))]`
-/

namespace A090025.P1071409582566824974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090225 (A167614 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090025.P1071409582566824974

/-!
# A090026: Number of distinct lines through the origin in 4-dimensional cube of side length n.

The programs for A090026, there is no canonical definition to state claims against.
-/

/-! ## A090026.P17533096854823052902

`A090030(eq[4, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A090026.P17533096854823052902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090026.P17533096854823052902

/-! ## A090026.P7586467205235169172

`A090030(A155212(n)+12)`
-/

namespace A090026.P7586467205235169172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (A155212 n + 12).toNat

end

end A090026.P7586467205235169172

/-! ## A090026.P6045673686781722671

`A090030(eq[3, A141169(n)])`
-/

namespace A090026.P6045673686781722671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090026.P6045673686781722671

/-! ## A090026.P14256537369972108504

`A090030(eq[4, A002262(n)])`
-/

namespace A090026.P14256537369972108504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090026.P14256537369972108504

/-!
# A090027: Number of distinct lines through the origin in 5-dimensional cube of side length n.

The programs for A090027, there is no canonical definition to state claims against.
-/

/-! ## A090027.P8254322562980636795

`A090030(A167499(n+4))`
-/

namespace A090027.P8254322562980636795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (A167499 (n + 4)).toNat

end

end A090027.P8254322562980636795

/-! ## A090027.P5584073011669216038

`A090030(A056115(n)+20)`
-/

namespace A090027.P5584073011669216038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (A056115 n + 20).toNat

end

end A090027.P5584073011669216038

/-! ## A090027.P9542214539150134971

`A090030(eq[5, A002262(n)])`
-/

namespace A090027.P9542214539150134971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090027.P9542214539150134971

/-!
# A090028: Number of distinct lines through the origin in 6-dimensional cube of side length n.

The programs for A090028, there is no canonical definition to state claims against.
-/

/-! ## A090028.P4128422856701990197

`A090030(eq[6, A002262(n)])`
-/

namespace A090028.P4128422856701990197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090028.P4128422856701990197

/-! ## A090028.P6990953607009886002

`A090030(eq[8, A141169(n)])`
-/

namespace A090028.P6990953607009886002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090028.P6990953607009886002

/-!
# A090029: Number of distinct lines through the origin in 7-dimensional cube of side length n.

The programs for A090029, there is no canonical definition to state claims against.
-/

/-! ## A090029.P4811900864098531131

`A090030(eq[7, A002262(n)])`
-/

namespace A090029.P4811900864098531131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090029.P4811900864098531131

/-!
# A090030: Triangle read by rows: T(n,k) = number of distinct lines through the origin in the n-dimensional cubic lattice of side length k with one corner at the origin.

The programs for A090030, there is no canonical definition to state claims against.
-/

/-! ## A090030.P2177533119914356131

`A218862(A180378(n+1))%A309010(n)`
-/

namespace A090030.P2177533119914356131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218862 (A180378 (n + 1)).toNat) (A309010 n)

end

end A090030.P2177533119914356131

/-! ## A090030.P1115271042791988434

`(A309010(n)-A000034(32*A000096(n+2)))%A197655(n)`
-/

namespace A090030.P1115271042791988434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309010 n - A000034 (32 * A000096 (n + 2)).toNat) (A197655 n)

end

end A090030.P1115271042791988434

/-! ## A090030.P8892469840252294158

`A141025(n)%A031874(A141021(n))`
-/

namespace A090030.P8892469840252294158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141025 n) (A031874 (A141021 n).toNat)

end

end A090030.P8892469840252294158

/-! ## A090030.P14214396146550841571

`A077727(A293785(n))%A131060(n)`
-/

namespace A090030.P14214396146550841571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077727 (A293785 n).toNat) (A131060 n)

end

end A090030.P14214396146550841571

/-! ## A090030.P2438719083359281584

`A178638(A156953(n+1))`
-/

namespace A090030.P2438719083359281584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178638 (A156953 (n + 1)).toNat

end

end A090030.P2438719083359281584

/-!
# A090031: Number of configurations of the 5 X 5 variant of sliding block 15-puzzle ("24-puzzle") that require a minimum of n moves to be reached, starting with the empty square in one of the corners.

The programs for A090031, there is no canonical definition to state claims against.
-/

/-! ## A090031.P13372337180014711659

`A111439(A150840(n))`
-/

namespace A090031.P13372337180014711659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A150840 n).toNat

end

end A090031.P13372337180014711659

/-! ## A090031.P11242835645107681182

`A111439(A296227(n))`
-/

namespace A090031.P11242835645107681182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A296227 n).toNat

end

end A090031.P11242835645107681182

/-! ## A090031.P16706694219749209477

`A172471(A371770(n))`
-/

namespace A090031.P16706694219749209477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A371770 n).toNat

end

end A090031.P16706694219749209477

/-!
# A090032: Number of configurations of the 6 X 6 variant of Sam Loyd's sliding block 15-puzzle ("35-puzzle") that require a minimum of n moves to be reached, starting with the empty square in one of the corners.

The programs for A090032, there is no canonical definition to state claims against.
-/

/-! ## A090032.P4555302814465005904

`A367467(A264442(n)+A087124(n))`
-/

namespace A090032.P4555302814465005904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367467 (A264442 n + A087124 n).toNat

end

end A090032.P4555302814465005904

/-! ## A090032.P13922277847173332885

`A187188(A001519(n+3))+A026816(2*(n+2))`
-/

namespace A090032.P13922277847173332885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A001519 (n + 3)).toNat + A026816 (2 * (n + 2))

end

end A090032.P13922277847173332885

/-! ## A090032.P15708661215494556687

`round(root(A107596(3*n+1), 7))`
-/

namespace A090032.P15708661215494556687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A107596 (3 * n + 1) : ℝ) ^ (1 / (7 : ℝ)))

end

end A090032.P15708661215494556687

/-!
# A090035: Number of configurations of the 4 X 2 variant of Sam Loyd's sliding block 15-puzzle that require a minimum of n moves to be reached, starting with the empty square in one of the corners.

The programs for A090035, there is no canonical definition to state claims against.
-/

/-! ## A090035.P7467627331775776651

`A295832(n)+record[A166865(n+1)]`
-/

namespace A090035.P7467627331775776651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295832 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090035.P7467627331775776651

/-! ## A090035.P7344808342775458867

`lt[A048983(n+1), gcd(4, 1-n)]+1`
-/

namespace A090035.P7344808342775458867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048983 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A090035.P7344808342775458867

/-! ## A090035.P7721416392301822088

`A196393(A014848(n)+1)`
-/

namespace A090035.P7721416392301822088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196393 (A014848 n + 1).toNat

end

end A090035.P7721416392301822088

/-! ## A090035.P4001636827079934268

`A092982(∑[∑[A008300(n)]])`
-/

namespace A090035.P4001636827079934268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090035.P4001636827079934268

/-!
# A090036: Number of configurations of the 5 X 2 variant of Sam Loyd's sliding block 15-puzzle that require a minimum of n moves to be reached, starting with the empty square in one of the corners.

The programs for A090036, there is no canonical definition to state claims against.
-/

/-! ## A090036.P1490123116886064466

`A132329(A259393(n))`
-/

namespace A090036.P1490123116886064466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132329 (A259393 n).toNat

end

end A090036.P1490123116886064466

/-! ## A090036.P17263981991825173242

`A306202(∑[A357644(n)])`
-/

namespace A090036.P17263981991825173242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090036.P17263981991825173242

/-! ## A090036.P11489195894000950071

`A329990(∑[A023358(2*(n+1))])`
-/

namespace A090036.P11489195894000950071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329990 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090036.P11489195894000950071

/-! ## A090036.P10961002699232228449

`A265069(n)-A001221(A083424(n))`
-/

namespace A090036.P10961002699232228449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265069 n - A001221 (A083424 n).toNat

end

end A090036.P10961002699232228449

/-! ## A090036.P8889193255602317230

`A084618(A358101(n+1))+A000045(n)`
-/

namespace A090036.P8889193255602317230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (A358101 (n + 1)).toNat + A000045 n

end

end A090036.P8889193255602317230

/-!
# A090037: Number of tetramagic (4-multimagic) series for squares of order n.

The programs for A090037, there is no canonical definition to state claims against.
-/

/-! ## A090037.P11333566700993539010

`A077773(C(A000009(n), A357004(n+1)))`
-/

namespace A090037.P11333566700993539010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (Nat.choose (A000009 n).toNat (A357004 (n + 1)).toNat)

end

end A090037.P11333566700993539010

/-! ## A090037.P17352260502956120608

`A132440(∑[(a(floor(n/2))+n)²])` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A090037.P17352260502956120608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  (f1 ⌊(n : ℚ) / 2⌋.toNat + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090037.P17352260502956120608

/-! ## A090037.P8451410018465799732

`A007094(C(∑{digits}[n, #]^3, ∑{digits}[n, #^3+#]))`
-/

namespace A090037.P8451410018465799732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Nat.choose (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 3) ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 3 + x).sum)

end

end A090037.P8451410018465799732

/-! ## A090037.P13380506278218473138

`A154771(C(record[1-(2*n-C(n, 2))], 8*n))`
-/

namespace A090037.P13380506278218473138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * n : ℤ) - (Nat.choose n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154771 (Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat (8 * n))

end

end A090037.P13380506278218473138

/-! ## A090037.P5254837059340329434

`A051022((∑{digits}[n, #]²-∑{digits}[n, #²])^∑{digits}[n, #]²)`
-/

namespace A090037.P5254837059340329434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 ((((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ)) ^ ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum ^ 2).toNat

end

end A090037.P5254837059340329434

/-!
# A090039: a(1) = 1, otherwise a(n) = floor(e^(n+1)/(e^2 + 1)).

The programs for A090039, the canonical program `A090039.P6927019244680041018` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090039 has offset 0).

The definition of A090039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090039.P6927019244680041018

`floor(cosh(n)/cosh(1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090039

/-- `floor(cosh(n)/cosh(1))` -/
def P6927019244680041018.Spec : Prop :=
  ∀ n, P6927019244680041018.a n = A090039 n

theorem P6927019244680041018.correct : P6927019244680041018.Spec := by
  intro n
  simp only [A090039]

end A090039

/-! ## A090039.P14206096207226974289

`A002265(Δ[Δ[A153582(n)]])`
-/

namespace A090039.P14206096207226974289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A090039.P14206096207226974289

namespace A090039

/-- `A002265(Δ[Δ[A153582(n)]])` -/
def P14206096207226974289.Spec : Prop :=
  ∀ n, P14206096207226974289.a n = A090039 n

end A090039

/-! ## A090039.P15143545822686873374

`A054404(A182197(n+1))`
-/

namespace A090039.P15143545822686873374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A182197 (n + 1)).toNat

end

end A090039.P15143545822686873374

namespace A090039

/-- `A054404(A182197(n+1))` -/
def P15143545822686873374.Spec : Prop :=
  ∀ n, P15143545822686873374.a n = A090039 n

end A090039

/-!
# A090040: a(n) = (3*6^n + 2^n)/4.

The programs for A090040, the canonical program `A090040.P9425816279052235155` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090040 has offset 0).

The definition of A090040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090040.P9425816279052235155

`6*a(n-1)-2^(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090040

/-- `6*a(n-1)-2^(n-1)` -/
def P9425816279052235155.Spec : Prop :=
  ∀ n, P9425816279052235155.a n = (A090040 n : ℚ)

end A090040

/-! ## A090040.P1740946298377351095

`(3*6^n+2^n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090040.P1740946298377351095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 6 ^ n + 2 ^ n : ℚ) / 4

end

end A090040.P1740946298377351095

namespace A090040

/-- `(3*6^n+2^n)/4` -/
def P1740946298377351095.Spec : Prop :=
  ∀ n, P1740946298377351095.a n = (A090040 n : ℚ)

end A090040

/-! ## A090040.P91197397465373473

`ogf((1-3x)/(1-8x+12x^2))`
-/

namespace A090040.P91197397465373473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -8, 12] n

end

end A090040.P91197397465373473

namespace A090040

/-- `ogf((1-3x)/(1-8x+12x^2))` -/
def P91197397465373473.Spec : Prop :=
  ∀ n, P91197397465373473.a n = A090040 n

end A090040

/-! ## A090040.P11958878281305137684

`2^(n-1)*A124302(n+2)`
-/

namespace A090040.P11958878281305137684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A124302 (n + 2) : ℚ)

end

end A090040.P11958878281305137684

namespace A090040

/-- `2^(n-1)*A124302(n+2)` -/
def P11958878281305137684.Spec : Prop :=
  ∀ n, P11958878281305137684.a n = (A090040 n : ℚ)

end A090040

/-! ## A090040.P13983365478691217731

`a(n-1)+A081341(n)+a(n-1)` with `a(0)=1`
-/

namespace A090040.P13983365478691217731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A081341 n + a (n - 1))

end

end A090040.P13983365478691217731

namespace A090040

/-- `a(n-1)+A081341(n)+a(n-1)` -/
def P13983365478691217731.Spec : Prop :=
  ∀ n, P13983365478691217731.a n = A090040 n

end A090040

/-! ## A090040.P1529205852142780811

`A074601(n)-A092803(n)`
-/

namespace A090040.P1529205852142780811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074601 n - A092803 n

end

end A090040.P1529205852142780811

namespace A090040

/-- `A074601(n)-A092803(n)` -/
def P1529205852142780811.Spec : Prop :=
  ∀ n, P1529205852142780811.a n = A090040 n

end A090040

/-! ## A090040.P4083500357711199930

`record[A007051(n)*A034008(n)]`
-/

namespace A090040.P4083500357711199930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n * A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090040.P4083500357711199930

namespace A090040

/-- `record[A007051(n)*A034008(n)]` -/
def P4083500357711199930.Spec : Prop :=
  ∀ n, P4083500357711199930.a n = A090040 n

end A090040

/-! ## A090040.P12577588742603774450

`A074502(n)-(A092803(n)+1)`
-/

namespace A090040.P12577588742603774450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074502 n - (A092803 n + 1)

end

end A090040.P12577588742603774450

namespace A090040

/-- `A074502(n)-(A092803(n)+1)` -/
def P12577588742603774450.Spec : Prop :=
  ∀ n, P12577588742603774450.a n = A090040 n

end A090040

/-! ## A090040.P17298712601769440621

`A154407(n)/2-A000079(n)`
-/

namespace A090040.P17298712601769440621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154407 n : ℚ) / 2 - (A000079 n : ℚ)

end

end A090040.P17298712601769440621

namespace A090040

/-- `A154407(n)/2-A000079(n)` -/
def P17298712601769440621.Spec : Prop :=
  ∀ n, P17298712601769440621.a n = (A090040 n : ℚ)

end A090040

/-! ## A090040.P6563867401828633994

`A016283(n+1)+A000079(n)²`
-/

namespace A090040.P6563867401828633994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016283 (n + 1) + A000079 n ^ 2

end

end A090040.P6563867401828633994

namespace A090040

/-- `A016283(n+1)+A000079(n)²` -/
def P6563867401828633994.Spec : Prop :=
  ∀ n, P6563867401828633994.a n = A090040 n

end A090040

/-! ## A090040.P16994158214462541975

`A016283(n+1)+A000079(2*n)`
-/

namespace A090040.P16994158214462541975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016283 (n + 1) + A000079 (2 * n)

end

end A090040.P16994158214462541975

namespace A090040

/-- `A016283(n+1)+A000079(2*n)` -/
def P16994158214462541975.Spec : Prop :=
  ∀ n, P16994158214462541975.a n = A090040 n

end A090040

/-! ## A090040.P5604731216413616745

`A026549(2*n)-A248216(n)/4`
-/

namespace A090040.P5604731216413616745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026549 (2 * n) : ℚ) - (A248216 n : ℚ) / 4

end

end A090040.P5604731216413616745

namespace A090040

/-- `A026549(2*n)-A248216(n)/4` -/
def P5604731216413616745.Spec : Prop :=
  ∀ n, P5604731216413616745.a n = (A090040 n : ℚ)

end A090040

/-! ## A090040.P16601595917997082066

`A000079(n)+A003462(n)*A003945(n)`
-/

namespace A090040.P16601595917997082066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A003462 n * A003945 n

end

end A090040.P16601595917997082066

namespace A090040

/-- `A000079(n)+A003462(n)*A003945(n)` -/
def P16601595917997082066.Spec : Prop :=
  ∀ n, P16601595917997082066.a n = A090040 n

end A090040

/-! ## A090040.P10363346883549561934

`A011782(n+1)+A003462(n)*A003945(n)`
-/

namespace A090040.P10363346883549561934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + A003462 n * A003945 n

end

end A090040.P10363346883549561934

namespace A090040

/-- `A011782(n+1)+A003462(n)*A003945(n)` -/
def P10363346883549561934.Spec : Prop :=
  ∀ n, P10363346883549561934.a n = A090040 n

end A090040

/-! ## A090040.P14179830011402447947

`A007051(n+1)/A004119(n+1)*A049775(n+2)`
-/

namespace A090040.P14179830011402447947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007051 (n + 1) : ℚ) / (A004119 (n + 1) : ℚ) * (A049775 (n + 2) : ℚ)

end

end A090040.P14179830011402447947

namespace A090040

/-- `A007051(n+1)/A004119(n+1)*A049775(n+2)` -/
def P14179830011402447947.Spec : Prop :=
  ∀ n, P14179830011402447947.a n = (A090040 n : ℚ)

end A090040

/-!
# A090041: a(n) = 10*a(n-1) - 20*a(n-2), a(0)=1, a(1)=6.

The programs for A090041, the canonical program `A090041.P3331398878837081460` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090041 has offset 0).

The definition of A090041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-20*a(n-2)` (program `A090041.P3331398878837081460`, by `A090041.P3331398878837081460.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090041.P3331398878837081460

`10*a(n-1)-20*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090041

/-- `10*a(n-1)-20*a(n-2)` -/
def P3331398878837081460.Spec : Prop :=
  ∀ n, P3331398878837081460.a n = A090041 n

theorem P3331398878837081460.correct : P3331398878837081460.Spec := by
  intro n
  simp only [A090041]

end A090041

/-! ## A090041.P2524139012542155670

`((1+sqrt(5))*(5+sqrt(5))^n-(1-sqrt(5))*(5-sqrt(5))^n)/(2*sqrt(5))`
-/

namespace A090041.P2524139012542155670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) * (5 + Real.sqrt (5 : ℝ)) ^ n - (1 - Real.sqrt (5 : ℝ)) * (5 - Real.sqrt (5 : ℝ)) ^ n) / (2 * Real.sqrt (5 : ℝ))

end

end A090041.P2524139012542155670

namespace A090041

/-- `((1+sqrt(5))*(5+sqrt(5))^n-(1-sqrt(5))*(5-sqrt(5))^n)/(2*sqrt(5))` -/
def P2524139012542155670.Spec : Prop :=
  ∀ n, P2524139012542155670.a n = (A090041 n : ℝ)

theorem P2524139012542155670.correct : P2524139012542155670.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090041, Nat.add_sub_cancel, A090041.P2524139012542155670.a, A090041.P3331398878837081460.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090041, Nat.add_sub_cancel, A090041.P2524139012542155670.a, A090041.P3331398878837081460.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090041

/-! ## A090041.P17082259558499326648

`ogf((1-4x)/(1-10x+20x^2))`
-/

namespace A090041.P17082259558499326648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -10, 20] n

end

end A090041.P17082259558499326648

namespace A090041

/-- `ogf((1-4x)/(1-10x+20x^2))` -/
def P17082259558499326648.Spec : Prop :=
  ∀ n, P17082259558499326648.a n = A090041 n

end A090041

/-! ## A090041.P11910551638563941263

`2^n*A081567(n)`
-/

namespace A090041.P11910551638563941263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081567 n

end

end A090041.P11910551638563941263

namespace A090041

/-- `2^n*A081567(n)` -/
def P11910551638563941263.Spec : Prop :=
  ∀ n, P11910551638563941263.a n = A090041 n

end A090041

/-! ## A090041.P2483762486300237444

`2^n*∑[A052936(n)]`
-/

namespace A090041.P2483762486300237444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090041.P2483762486300237444

namespace A090041

/-- `2^n*∑[A052936(n)]` -/
def P2483762486300237444.Spec : Prop :=
  ∀ n, P2483762486300237444.a n = A090041 n

end A090041

/-! ## A090041.P12366898776221721257

`2^(n-1)*A147748(n+1)`
-/

namespace A090041.P12366898776221721257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A147748 (n + 1) : ℚ)

end

end A090041.P12366898776221721257

namespace A090041

/-- `2^(n-1)*A147748(n+1)` -/
def P12366898776221721257.Spec : Prop :=
  ∀ n, P12366898776221721257.a n = (A090041 n : ℚ)

end A090041

/-! ## A090041.P8544115586896657004

`A093130(n)+A093123(n)`
-/

namespace A090041.P8544115586896657004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093130 n + A093123 n

end

end A090041.P8544115586896657004

namespace A090041

/-- `A093130(n)+A093123(n)` -/
def P8544115586896657004.Spec : Prop :=
  ∀ n, P8544115586896657004.a n = A090041 n

end A090041

/-! ## A090041.P4999604866554107531

`A093132(n)-A093130(n)`
-/

namespace A090041.P4999604866554107531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093132 n - A093130 n

end

end A090041.P4999604866554107531

namespace A090041

/-- `A093132(n)-A093130(n)` -/
def P4999604866554107531.Spec : Prop :=
  ∀ n, P4999604866554107531.a n = A090041 n

end A090041

/-! ## A090041.P12816019006557764936

`lcm(A081567(n), A128018(n))`
-/

namespace A090041.P12816019006557764936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081567 n) (A128018 n)

end

end A090041.P12816019006557764936

namespace A090041

/-- `lcm(A081567(n), A128018(n))` -/
def P12816019006557764936.Spec : Prop :=
  ∀ n, (P12816019006557764936.a n : ℤ) = A090041 n

end A090041

/-! ## A090041.P11098346005065673367

`∑[A052936(n)]*A000079(n)`
-/

namespace A090041.P11098346005065673367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A090041.P11098346005065673367

namespace A090041

/-- `∑[A052936(n)]*A000079(n)` -/
def P11098346005065673367.Spec : Prop :=
  ∀ n, P11098346005065673367.a n = A090041 n

end A090041

/-! ## A090041.P12251732109879552392

`A093123(n)+2*A093145(n)`
-/

namespace A090041.P12251732109879552392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093123 n + 2 * A093145 n

end

end A090041.P12251732109879552392

namespace A090041

/-- `A093123(n)+2*A093145(n)` -/
def P12251732109879552392.Spec : Prop :=
  ∀ n, P12251732109879552392.a n = A090041 n

end A090041

/-! ## A090041.P6318440411831816257

`2*A090139(n)-A093123(n)`
-/

namespace A090041.P6318440411831816257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090139 n - A093123 n

end

end A090041.P6318440411831816257

namespace A090041

/-- `2*A090139(n)-A093123(n)` -/
def P6318440411831816257.Spec : Prop :=
  ∀ n, P6318440411831816257.a n = A090041 n

end A090041

/-! ## A090041.P6462243387271687455

`A090139(n)+A093130(n)/2`
-/

namespace A090041.P6462243387271687455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090139 n : ℚ) + (A093130 n : ℚ) / 2

end

end A090041.P6462243387271687455

namespace A090041

/-- `A090139(n)+A093130(n)/2` -/
def P6462243387271687455.Spec : Prop :=
  ∀ n, P6462243387271687455.a n = (A090041 n : ℚ)

end A090041

/-! ## A090041.P6027103620374288368

`A093132(n)-2*A093145(n)`
-/

namespace A090041.P6027103620374288368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093132 n - 2 * A093145 n

end

end A090041.P6027103620374288368

namespace A090041

/-- `A093132(n)-2*A093145(n)` -/
def P6027103620374288368.Spec : Prop :=
  ∀ n, P6027103620374288368.a n = A090041 n

end A090041

/-! ## A090041.P11184596555024611657

`Δ[Δ[A260304(n)]]*A000079(n)`
-/

namespace A090041.P11184596555024611657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260304 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A090041.P11184596555024611657

namespace A090041

/-- `Δ[Δ[A260304(n)]]*A000079(n)` -/
def P11184596555024611657.Spec : Prop :=
  ∀ n, P11184596555024611657.a n = A090041 n

end A090041

/-! ## A090041.P2321935635258056502

`A000079(n)*A178381(2*n+1)`
-/

namespace A090041.P2321935635258056502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A178381 (2 * n + 1)

end

end A090041.P2321935635258056502

namespace A090041

/-- `A000079(n)*A178381(2*n+1)` -/
def P2321935635258056502.Spec : Prop :=
  ∀ n, P2321935635258056502.a n = A090041 n

end A090041

/-! ## A090041.P5846073186450304829

`A016116(2*n)*A178381(2*n+1)`
-/

namespace A090041.P5846073186450304829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) * A178381 (2 * n + 1)

end

end A090041.P5846073186450304829

namespace A090041

/-- `A016116(2*n)*A178381(2*n+1)` -/
def P5846073186450304829.Spec : Prop :=
  ∀ n, P5846073186450304829.a n = A090041 n

end A090041

/-! ## A090041.P45141468903497734

`A152166(2*n)*A178381(2*n+1)`
-/

namespace A090041.P45141468903497734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 (2 * n) * A178381 (2 * n + 1)

end

end A090041.P45141468903497734

namespace A090041

/-- `A152166(2*n)*A178381(2*n+1)` -/
def P45141468903497734.Spec : Prop :=
  ∀ n, P45141468903497734.a n = A090041 n

end A090041

/-! ## A090041.P11561698579507987702

`A131572(2*n+1)*A178381(2*n+1)`
-/

namespace A090041.P11561698579507987702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (2 * n + 1) * A178381 (2 * n + 1)

end

end A090041.P11561698579507987702

namespace A090041

/-- `A131572(2*n+1)*A178381(2*n+1)` -/
def P11561698579507987702.Spec : Prop :=
  ∀ n, P11561698579507987702.a n = A090041 n

end A090041

/-! ## A090041.P16273603325518328061

`A093130(n)+A093145(n)+A093133(n)`
-/

namespace A090041.P16273603325518328061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093130 n + (A093145 n + A093133 n)

end

end A090041.P16273603325518328061

namespace A090041

/-- `A093130(n)+A093145(n)+A093133(n)` -/
def P16273603325518328061.Spec : Prop :=
  ∀ n, P16273603325518328061.a n = A090041 n

end A090041

/-!
# A090042: a(n) = 2*a(n-1) + 11*a(n-2) for n > 1, a(0) = a(1) = 1.

The programs for A090042, the canonical program `A090042.P15456412300657316624` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090042 has offset 0).

The definition of A090042 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+11*a(n-2)` (program `A090042.P15456412300657316624`, by `A090042.P15456412300657316624.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090042.P15456412300657316624

`2*a(n-1)+11*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090042

/-- `2*a(n-1)+11*a(n-2)` -/
def P15456412300657316624.Spec : Prop :=
  ∀ n, (P15456412300657316624.a n : ℤ) = A090042 n

theorem P15456412300657316624.correct : P15456412300657316624.Spec := by
  intro n
  simp only [A090042]

end A090042

/-! ## A090042.P9818765816505061313

`ogf((-1+x)/(-1+2x+11x^2))`
-/

namespace A090042.P9818765816505061313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -11] n

end

end A090042.P9818765816505061313

namespace A090042

/-- `ogf((-1+x)/(-1+2x+11x^2))` -/
def P9818765816505061313.Spec : Prop :=
  ∀ n, P9818765816505061313.a n = A090042 n

end A090042

/-! ## A090042.P10453380844281553208

`Δ[A015520(n)]`
-/

namespace A090042.P10453380844281553208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090042.P10453380844281553208

namespace A090042

/-- `Δ[A015520(n)]` -/
def P10453380844281553208.Spec : Prop :=
  ∀ n, P10453380844281553208.a n = A090042 n

end A090042

/-! ## A090042.P4634104162981366539

`A015520(n+1)-A015520(n)`
-/

namespace A090042.P4634104162981366539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015520 (n + 1) - A015520 n

end

end A090042.P4634104162981366539

namespace A090042

/-- `A015520(n+1)-A015520(n)` -/
def P4634104162981366539.Spec : Prop :=
  ∀ n, P4634104162981366539.a n = A090042 n

end A090042

/-! ## A090042.P16494400692771566057

`record[A015520(A123108(n))]-A015520(n)`
-/

namespace A090042.P16494400692771566057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015520 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A015520 n

end

end A090042.P16494400692771566057

namespace A090042

/-- `record[A015520(A123108(n))]-A015520(n)` -/
def P16494400692771566057.Spec : Prop :=
  ∀ n, P16494400692771566057.a n = A090042 n

end A090042

/-! ## A090042.P13069742340477384502

`((1+2*sqrt(3))^n+(1-2*sqrt(3))^n)/2`
-/

namespace A090042.P13069742340477384502
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 2 * Real.sqrt (3 : ℝ)) ^ n + (1 - 2 * Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A090042.P13069742340477384502

namespace A090042

/-- `((1+2*sqrt(3))^n+(1-2*sqrt(3))^n)/2` -/
def P13069742340477384502.Spec : Prop :=
  ∀ n, P13069742340477384502.a n = (A090042 n : ℝ)

theorem P13069742340477384502.correct : P13069742340477384502.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090042, Nat.add_sub_cancel, A090042.P13069742340477384502.a, A090042.P15456412300657316624.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090042, Nat.add_sub_cancel, A090042.P13069742340477384502.a, A090042.P15456412300657316624.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090042

/-!
# A090044: Triangle read by rows: T(n,k) = A083093 with 1's and 2's interchanged.

The programs for A090044, the canonical program `A090044.P6143622814753573684` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090044 has offset 0).

The definition of A090044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090044.P6143622814753573684

`A028326(n)%3`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A090044

/-- `A028326(n)%3` -/
def P6143622814753573684.Spec : Prop :=
  ∀ n, P6143622814753573684.a n = A090044 n

theorem P6143622814753573684.correct : P6143622814753573684.Spec := by
  intro n
  simp only [A090044]

end A090044

/-! ## A090044.P4589614473532011524

`abs(ceil(tan(A117947(n))))`
-/

namespace A090044.P4589614473532011524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.tan (A117947 n : ℝ)⌉|

end

end A090044.P4589614473532011524

namespace A090044

/-- `abs(ceil(tan(A117947(n))))` -/
def P4589614473532011524.Spec : Prop :=
  ∀ n, P4589614473532011524.a n = A090044 n

end A090044

/-! ## A090044.P13666795666134732485

`round(tan(A083093(n)²))`
-/

namespace A090044.P13666795666134732485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (A083093 n ^ 2 : ℝ))

end

end A090044.P13666795666134732485

namespace A090044

/-- `round(tan(A083093(n)²))` -/
def P13666795666134732485.Spec : Prop :=
  ∀ n, P13666795666134732485.a n = A090044 n

end A090044

/-! ## A090044.P12636192718236416780

`(A109128(n)+1)%3`
-/

namespace A090044.P12636192718236416780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109128 n + 1) 3

end

end A090044.P12636192718236416780

namespace A090044

/-- `(A109128(n)+1)%3` -/
def P12636192718236416780.Spec : Prop :=
  ∀ n, P12636192718236416780.a n = A090044 n

theorem P12636192718236416780.correct : P12636192718236416780.Spec := by
  intro n
  simp only [A090044, Nat.add_sub_cancel, A090044.P12636192718236416780.a, A090044.P6143622814753573684.a, A028326, A028326.P16610217584664895500.a, A109128, A109128.P11896187039746255515.a, A007318, A007318.P302227728145965961.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090044

/-! ## A090044.P6906035503913605056

`(A131063(n)+1)%3`
-/

namespace A090044.P6906035503913605056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131063 n + 1) 3

end

end A090044.P6906035503913605056

namespace A090044

/-- `(A131063(n)+1)%3` -/
def P6906035503913605056.Spec : Prop :=
  ∀ n, P6906035503913605056.a n = A090044 n

end A090044

/-! ## A090044.P4001939897634171407

`A204202(n+1)%3`
-/

namespace A090044.P4001939897634171407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204202 (n + 1)) 3

end

end A090044.P4001939897634171407

namespace A090044

/-- `A204202(n+1)%3` -/
def P4001939897634171407.Spec : Prop :=
  ∀ n, P4001939897634171407.a n = A090044 n

end A090044

/-! ## A090044.P6216200009733882328

`(2*A007318(n))%3`
-/

namespace A090044.P6216200009733882328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A007318 n) 3

end

end A090044.P6216200009733882328

namespace A090044

/-- `(2*A007318(n))%3` -/
def P6216200009733882328.Spec : Prop :=
  ∀ n, P6216200009733882328.a n = A090044 n

end A090044

/-! ## A090044.P8768419612593113034

`A080425(A095145(n))`
-/

namespace A090044.P8768419612593113034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A095145 n).toNat

end

end A090044.P8768419612593113034

namespace A090044

/-- `A080425(A095145(n))` -/
def P8768419612593113034.Spec : Prop :=
  ∀ n, P8768419612593113034.a n = A090044 n

end A090044

/-! ## A090044.P7063075768713528891

`A080425(A096145(n))`
-/

namespace A090044.P7063075768713528891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A096145 n).toNat

end

end A090044.P7063075768713528891

namespace A090044

/-- `A080425(A096145(n))` -/
def P7063075768713528891.Spec : Prop :=
  ∀ n, P7063075768713528891.a n = A090044 n

end A090044

/-! ## A090044.P8852586628114160388

`A117947(n)+A083093(n)`
-/

namespace A090044.P8852586628114160388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117947 n + A083093 n

end

end A090044.P8852586628114160388

namespace A090044

/-- `A117947(n)+A083093(n)` -/
def P8852586628114160388.Spec : Prop :=
  ∀ n, P8852586628114160388.a n = A090044 n

end A090044

/-! ## A090044.P53558325960985479

`A029603(n+1)%3`
-/

namespace A090044.P53558325960985479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029603 (n + 1)) 3

end

end A090044.P53558325960985479

namespace A090044

/-- `A029603(n+1)%3` -/
def P53558325960985479.Spec : Prop :=
  ∀ n, P53558325960985479.a n = A090044 n

end A090044

/-! ## A090044.P1907915852304152951

`A029621(n+1)%3`
-/

namespace A090044.P1907915852304152951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029621 (n + 1)) 3

end

end A090044.P1907915852304152951

namespace A090044

/-- `A029621(n+1)%3` -/
def P1907915852304152951.Spec : Prop :=
  ∀ n, P1907915852304152951.a n = A090044 n

end A090044

/-! ## A090044.P864778149879265935

`A153648(n+1)%3`
-/

namespace A090044.P864778149879265935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153648 (n + 1)) 3

end

end A090044.P864778149879265935

namespace A090044

/-- `A153648(n+1)%3` -/
def P864778149879265935.Spec : Prop :=
  ∀ n, P864778149879265935.a n = A090044 n

end A090044

/-! ## A090044.P10713209811927761475

`A153650(n+1)%3`
-/

namespace A090044.P10713209811927761475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153650 (n + 1)) 3

end

end A090044.P10713209811927761475

namespace A090044

/-- `A153650(n+1)%3` -/
def P10713209811927761475.Spec : Prop :=
  ∀ n, P10713209811927761475.a n = A090044 n

end A090044

/-! ## A090044.P11676795361747520643

`A153652(n+1)%3`
-/

namespace A090044.P11676795361747520643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153652 (n + 1)) 3

end

end A090044.P11676795361747520643

namespace A090044

/-- `A153652(n+1)%3` -/
def P11676795361747520643.Spec : Prop :=
  ∀ n, P11676795361747520643.a n = A090044 n

end A090044

/-! ## A090044.P7082352546751961132

`A153655(n+1)%3`
-/

namespace A090044.P7082352546751961132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153655 (n + 1)) 3

end

end A090044.P7082352546751961132

namespace A090044

/-- `A153655(n+1)%3` -/
def P7082352546751961132.Spec : Prop :=
  ∀ n, P7082352546751961132.a n = A090044 n

end A090044

/-! ## A090044.P17879203763787689003

`A153656(n+1)%3`
-/

namespace A090044.P17879203763787689003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153656 (n + 1)) 3

end

end A090044.P17879203763787689003

namespace A090044

/-- `A153656(n+1)%3` -/
def P17879203763787689003.Spec : Prop :=
  ∀ n, P17879203763787689003.a n = A090044 n

end A090044

/-! ## A090044.P4742005809602831826

`A153657(n+1)%3`
-/

namespace A090044.P4742005809602831826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153657 (n + 1)) 3

end

end A090044.P4742005809602831826

namespace A090044

/-- `A153657(n+1)%3` -/
def P4742005809602831826.Spec : Prop :=
  ∀ n, P4742005809602831826.a n = A090044 n

end A090044

/-! ## A090044.P11419508443473909449

`A080425(A007318(n))`
-/

namespace A090044.P11419508443473909449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A007318 n).toNat

end

end A090044.P11419508443473909449

namespace A090044

/-- `A080425(A007318(n))` -/
def P11419508443473909449.Spec : Prop :=
  ∀ n, P11419508443473909449.a n = A090044 n

end A090044

/-! ## A090044.P8293878794816475474

`A080425(A028313(n))`
-/

namespace A090044.P8293878794816475474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A028313 n).toNat

end

end A090044.P8293878794816475474

namespace A090044

/-- `A080425(A028313(n))` -/
def P8293878794816475474.Spec : Prop :=
  ∀ n, P8293878794816475474.a n = A090044 n

end A090044

/-!
# A090046: Length of longest contiguous block of 0's in binary expansion of n-th prime.

The programs for A090046, the canonical program `A090046.P2636261645082277617` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090046 has offset 1).

The definition of A090046 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090046.P2636261645082277617

`A087117(A000040(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A090046

/-- `A087117(A000040(n+1))` -/
def P2636261645082277617.Spec : Prop :=
  ∀ n, P2636261645082277617.a n = A090046 (n + 1)

theorem P2636261645082277617.correct : P2636261645082277617.Spec := by
  intro n
  simp only [A090046, Nat.add_sub_cancel]

end A090046

/-! ## A090046.P15513433167237200566

`val(A278222(A000040(n+1)-A088147(n+1)), 2)`
-/

namespace A090046.P15513433167237200566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (A000040 (n + 1) - A088147 (n + 1)).toNat).toNat 2

end

end A090046.P15513433167237200566

namespace A090046

/-- `val(A278222(A000040(n+1)-A088147(n+1)), 2)` -/
def P15513433167237200566.Spec : Prop :=
  ∀ n, (P15513433167237200566.a n : ℤ) = A090046 (n + 1)

end A090046

/-! ## A090046.P14943040338221314147

`A087117(A102781(n+1))`
-/

namespace A090046.P14943040338221314147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A102781 (n + 1)).toNat

end

end A090046.P14943040338221314147

namespace A090046

/-- `A087117(A102781(n+1))` -/
def P14943040338221314147.Spec : Prop :=
  ∀ n, P14943040338221314147.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P8940149422077335526

`A087117(lt[n, A006530(2*n+1)])`
-/

namespace A090046.P8940149422077335526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A090046.P8940149422077335526

namespace A090046

/-- `A087117(lt[n, A006530(2*n+1)])` -/
def P8940149422077335526.Spec : Prop :=
  ∀ n, P8940149422077335526.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P6826701056181882387

`A087117(eq[A001222(2*n+1)², A001222(2*n+1)])`
-/

namespace A090046.P6826701056181882387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090046.P6826701056181882387

namespace A090046

/-- `A087117(eq[A001222(2*n+1)², A001222(2*n+1)])` -/
def P6826701056181882387.Spec : Prop :=
  ∀ n, P6826701056181882387.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P17350137027479554760

`A087117(Δ[A007504(n)])`
-/

namespace A090046.P17350137027479554760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (f1 (n + 1) - f1 n).toNat

end

end A090046.P17350137027479554760

namespace A090046

/-- `A087117(Δ[A007504(n)])` -/
def P17350137027479554760.Spec : Prop :=
  ∀ n, P17350137027479554760.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P9223769569342049706

`A087117(record[A051698(n)])`
-/

namespace A090046.P9223769569342049706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090046.P9223769569342049706

namespace A090046

/-- `A087117(record[A051698(n)])` -/
def P9223769569342049706.Spec : Prop :=
  ∀ n, P9223769569342049706.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P16917785882704877596

`A087117(A171577(n+1))`
-/

namespace A090046.P16917785882704877596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A171577 (n + 1)).toNat

end

end A090046.P16917785882704877596

namespace A090046

/-- `A087117(A171577(n+1))` -/
def P16917785882704877596.Spec : Prop :=
  ∀ n, P16917785882704877596.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P11768172939165233771

`A087117(A008578(n+2))`
-/

namespace A090046.P11768172939165233771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A008578 (n + 2)).toNat

end

end A090046.P11768172939165233771

namespace A090046

/-- `A087117(A008578(n+2))` -/
def P11768172939165233771.Spec : Prop :=
  ∀ n, P11768172939165233771.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P255846572229638321

`A087117(A182986(n+2))`
-/

namespace A090046.P255846572229638321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A182986 (n + 2)).toNat

end

end A090046.P255846572229638321

namespace A090046

/-- `A087117(A182986(n+2))` -/
def P255846572229638321.Spec : Prop :=
  ∀ n, P255846572229638321.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P7109991006042194113

`A087117(eq[1, A003415(n)])`
-/

namespace A090046.P7109991006042194113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090046.P7109991006042194113

namespace A090046

/-- `A087117(eq[1, A003415(n)])` -/
def P7109991006042194113.Spec : Prop :=
  ∀ n, P7109991006042194113.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P11983097850709137711

`A087117(eq[1, A032741(n)])`
-/

namespace A090046.P11983097850709137711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090046.P11983097850709137711

namespace A090046

/-- `A087117(eq[1, A032741(n)])` -/
def P11983097850709137711.Spec : Prop :=
  ∀ n, P11983097850709137711.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P14667584816340886023

`A087117(record[A006530(n+2)])`
-/

namespace A090046.P14667584816340886023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090046.P14667584816340886023

namespace A090046

/-- `A087117(record[A006530(n+2)])` -/
def P14667584816340886023.Spec : Prop :=
  ∀ n, P14667584816340886023.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P6390632411253316512

`A087117(record[A014963(n+2)])`
-/

namespace A090046.P6390632411253316512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090046.P6390632411253316512

namespace A090046

/-- `A087117(record[A014963(n+2)])` -/
def P6390632411253316512.Spec : Prop :=
  ∀ n, P6390632411253316512.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P8648794900203820678

`A087117(record[A020639(n+2)])`
-/

namespace A090046.P8648794900203820678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090046.P8648794900203820678

namespace A090046

/-- `A087117(record[A020639(n+2)])` -/
def P8648794900203820678.Spec : Prop :=
  ∀ n, P8648794900203820678.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P16844817131306154090

`A087117(A006093(n+1)+1)`
-/

namespace A090046.P16844817131306154090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A006093 (n + 1) + 1).toNat

end

end A090046.P16844817131306154090

namespace A090046

/-- `A087117(A006093(n+1)+1)` -/
def P16844817131306154090.Spec : Prop :=
  ∀ n, P16844817131306154090.a n = A090046 (n + 1)

theorem P16844817131306154090.correct : P16844817131306154090.Spec := by
  intro n
  simp only [A090046, Nat.add_sub_cancel, A090046.P16844817131306154090.a, A090046.P2636261645082277617.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A087117, A087117.P11496041561774747190.a, A035327, A035327.P258997810375859489.a, A278222, A278222.P17157169249717672707.a, A053644, A053644.P1707366427427647095.a, A124859, A124859.P14397477856790736102.a, A278159, A278159.P1523932836907847359.a, A005940, A005940.P5942875842694471387.a, A108951, A108951.P1294613322156543690.a, A181819, A181819.P15090535388863431201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090046

/-! ## A090046.P844777281246407237

`A087117(A001750(n+1)/5)`
-/

namespace A090046.P844777281246407237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (SequenceMachineLib.roundAway ((A001750 (n + 1) : ℚ) / 5)).toNat

end

end A090046.P844777281246407237

namespace A090046

/-- `A087117(A001750(n+1)/5)` -/
def P844777281246407237.Spec : Prop :=
  ∀ n, P844777281246407237.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P13348677342030026979

`A087117(record[A000010(n+1)+1])`
-/

namespace A090046.P13348677342030026979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090046.P13348677342030026979

namespace A090046

/-- `A087117(record[A000010(n+1)+1])` -/
def P13348677342030026979.Spec : Prop :=
  ∀ n, P13348677342030026979.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P664286106896661255

`A087117((A072055(n+1)-1)/2)`
-/

namespace A090046.P664286106896661255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (SequenceMachineLib.roundAway ((A072055 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A090046.P664286106896661255

namespace A090046

/-- `A087117((A072055(n+1)-1)/2)` -/
def P664286106896661255.Spec : Prop :=
  ∀ n, P664286106896661255.a n = A090046 (n + 1)

end A090046

/-! ## A090046.P16412544063187678223

`A087117(eq[1, A001222(n+1)]+1)`
-/

namespace A090046.P16412544063187678223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A090046.P16412544063187678223

namespace A090046

/-- `A087117(eq[1, A001222(n+1)]+1)` -/
def P16412544063187678223.Spec : Prop :=
  ∀ n, P16412544063187678223.a n = A090046 (n + 1)

end A090046

/-!
# A090047: Length of longest contiguous block of 0's in binary expansion of n^2.

The programs for A090047, the canonical program `A090047.P14351702566741572221` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090047 has offset 0).

The definition of A090047 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090047.P14351702566741572221

`A087117(A000290(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A090047

/-- `A087117(A000290(n))` -/
def P14351702566741572221.Spec : Prop :=
  ∀ n, P14351702566741572221.a n = A090047 n

theorem P14351702566741572221.correct : P14351702566741572221.Spec := by
  intro n
  simp only [A090047]

end A090047

/-! ## A090047.P18178427702935798930

`val(A278222(A334042(n)), 2)`
-/

namespace A090047.P18178427702935798930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (A334042 n).toNat).toNat 2

end

end A090047.P18178427702935798930

namespace A090047

/-- `val(A278222(A334042(n)), 2)` -/
def P18178427702935798930.Spec : Prop :=
  ∀ n, (P18178427702935798930.a n : ℤ) = A090047 n

end A090047

/-! ## A090047.P2355167496541251316

`A087117(A057889(n²))`
-/

namespace A090047.P2355167496541251316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A057889 (n ^ 2)).toNat

end

end A090047.P2355167496541251316

namespace A090047

/-- `A087117(A057889(n²))` -/
def P2355167496541251316.Spec : Prop :=
  ∀ n, P2355167496541251316.a n = A090047 n

end A090047

/-! ## A090047.P6575406937340261509

`A087117(A331166(n²))`
-/

namespace A090047.P6575406937340261509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A331166 (n ^ 2)).toNat

end

end A090047.P6575406937340261509

namespace A090047

/-- `A087117(A331166(n²))` -/
def P6575406937340261509.Spec : Prop :=
  ∀ n, P6575406937340261509.a n = A090047 n

end A090047

/-! ## A090047.P4062856716286700068

`A087117(n²)`
-/

namespace A090047.P4062856716286700068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (n ^ 2)

end

end A090047.P4062856716286700068

namespace A090047

/-- `A087117(n²)` -/
def P4062856716286700068.Spec : Prop :=
  ∀ n, P4062856716286700068.a n = A090047 n

end A090047

/-! ## A090047.P12634263317237512699

`A087117(n^2)%13`
-/

namespace A090047.P12634263317237512699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087117 (n ^ 2)) 13

end

end A090047.P12634263317237512699

namespace A090047

/-- `A087117(n^2)%13` -/
def P12634263317237512699.Spec : Prop :=
  ∀ n, P12634263317237512699.a n = A090047 n

end A090047

/-! ## A090047.P11789093805702838217

`A032513(A087117(n*n))`
-/

namespace A090047.P11789093805702838217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032513 (A087117 (n * n)).toNat

end

end A090047.P11789093805702838217

namespace A090047

/-- `A032513(A087117(n*n))` -/
def P11789093805702838217.Spec : Prop :=
  ∀ n, P11789093805702838217.a n = A090047 n

end A090047

/-! ## A090047.P10384714171551297118

`val(A278222(A035327(n²)), 2)`
-/

namespace A090047.P10384714171551297118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (A035327 (n ^ 2)).toNat).toNat 2

end

end A090047.P10384714171551297118

namespace A090047

/-- `val(A278222(A035327(n²)), 2)` -/
def P10384714171551297118.Spec : Prop :=
  ∀ n, (P10384714171551297118.a n : ℤ) = A090047 n

end A090047

/-! ## A090047.P16885956340369310740

`val(A278222(A036044(n²)), 2)`
-/

namespace A090047.P16885956340369310740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (A036044 (n ^ 2)).toNat).toNat 2

end

end A090047.P16885956340369310740

namespace A090047

/-- `val(A278222(A036044(n²)), 2)` -/
def P16885956340369310740.Spec : Prop :=
  ∀ n, (P16885956340369310740.a n : ℤ) = A090047 n

end A090047

/-! ## A090047.P17574232609047047626

`A004526(2*A087117(n^2))`
-/

namespace A090047.P17574232609047047626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A087117 (n ^ 2)).toNat

end

end A090047.P17574232609047047626

namespace A090047

/-- `A004526(2*A087117(n^2))` -/
def P17574232609047047626.Spec : Prop :=
  ∀ n, P17574232609047047626.a n = A090047 n

end A090047

/-! ## A090047.P12158731265748908764

`A001222(2^A087117(n^2))`
-/

namespace A090047.P12158731265748908764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A087117 (n ^ 2) : ℤ))).toNat

end

end A090047.P12158731265748908764

namespace A090047

/-- `A001222(2^A087117(n^2))` -/
def P12158731265748908764.Spec : Prop :=
  ∀ n, P12158731265748908764.a n = A090047 n

end A090047

/-! ## A090047.P12690661162993029606

`A023416(2^A087117(n^2))`
-/

namespace A090047.P12690661162993029606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A087117 (n ^ 2) : ℤ))).toNat

end

end A090047.P12690661162993029606

namespace A090047

/-- `A023416(2^A087117(n^2))` -/
def P12690661162993029606.Spec : Prop :=
  ∀ n, P12690661162993029606.a n = A090047 n

end A090047

/-! ## A090047.P2544439125204616355

`A004907(A087117(n*n)+1)`
-/

namespace A090047.P2544439125204616355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (A087117 (n * n) + 1).toNat

end

end A090047.P2544439125204616355

namespace A090047

/-- `A004907(A087117(n*n)+1)` -/
def P2544439125204616355.Spec : Prop :=
  ∀ n, P2544439125204616355.a n = A090047 n

end A090047

/-! ## A090047.P13166186088184554133

`A004525(2*A087117(n*n))`
-/

namespace A090047.P13166186088184554133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A087117 (n * n)).toNat

end

end A090047.P13166186088184554133

namespace A090047

/-- `A004525(2*A087117(n*n))` -/
def P13166186088184554133.Spec : Prop :=
  ∀ n, P13166186088184554133.a n = A090047 n

end A090047

/-! ## A090047.P9615080007243436260

`∑{d}[A087117(n^2), A000010(#)]`
-/

namespace A090047.P9615080007243436260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A090047.P9615080007243436260

namespace A090047

/-- `∑{d}[A087117(n^2), A000010(#)]` -/
def P9615080007243436260.Spec : Prop :=
  ∀ n, P9615080007243436260.a n = A090047 n

end A090047

/-!
# A090048: Length of longest contiguous block of 0's in binary expansion of n-th triangular number.

The programs for A090048, the canonical program `A090048.P13148415241224507545` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090048 has offset 0).

The definition of A090048 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090048.P13148415241224507545

`A087117(A000217(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A090048

/-- `A087117(A000217(n))` -/
def P13148415241224507545.Spec : Prop :=
  ∀ n, P13148415241224507545.a n = A090048 n

theorem P13148415241224507545.correct : P13148415241224507545.Spec := by
  intro n
  simp only [A090048]

end A090048

/-! ## A090048.P13826057797475970649

`A087117(∑[n])`
-/

namespace A090048.P13826057797475970649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090048.P13826057797475970649

namespace A090048

/-- `A087117(∑[n])` -/
def P13826057797475970649.Spec : Prop :=
  ∀ n, P13826057797475970649.a n = A090048 n

end A090048

/-! ## A090048.P867919254801116403

`dr(A087117(C(n+1, 2)))`
-/

namespace A090048.P867919254801116403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A087117 (Nat.choose (n + 1) 2))

end

end A090048.P867919254801116403

namespace A090048

/-- `dr(A087117(C(n+1, 2)))` -/
def P867919254801116403.Spec : Prop :=
  ∀ n, (P867919254801116403.a n : ℤ) = A090048 n

end A090048

/-! ## A090048.P17048921581920610381

`dr(A087117((n²+n)/2))`
-/

namespace A090048.P17048921581920610381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A087117 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A090048.P17048921581920610381

namespace A090048

/-- `dr(A087117((n²+n)/2))` -/
def P17048921581920610381.Spec : Prop :=
  ∀ n, (P17048921581920610381.a n : ℤ) = A090048 n

end A090048

/-! ## A090048.P11322880664231814376

`A087117(n²-C(n, 2))%9`
-/

namespace A090048.P11322880664231814376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087117 (n ^ 2 - Nat.choose n 2)) 9

end

end A090048.P11322880664231814376

namespace A090048

/-- `A087117(n²-C(n, 2))%9` -/
def P11322880664231814376.Spec : Prop :=
  ∀ n, P11322880664231814376.a n = A090048 n

end A090048

/-! ## A090048.P15907490801399478418

`A087117(lcm(n, n+1)/2)%11`
-/

namespace A090048.P15907490801399478418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087117 (SequenceMachineLib.roundAway ((Nat.lcm n (n + 1) : ℚ) / 2)).toNat) 11

end

end A090048.P15907490801399478418

namespace A090048

/-- `A087117(lcm(n, n+1)/2)%11` -/
def P15907490801399478418.Spec : Prop :=
  ∀ n, P15907490801399478418.a n = A090048 n

end A090048

/-! ## A090048.P17010987348205563177

`A001222(2^A087117(C(n+1, 2)))`
-/

namespace A090048.P17010987348205563177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A087117 (Nat.choose (n + 1) 2) : ℤ))).toNat

end

end A090048.P17010987348205563177

namespace A090048

/-- `A001222(2^A087117(C(n+1, 2)))` -/
def P17010987348205563177.Spec : Prop :=
  ∀ n, P17010987348205563177.a n = A090048 n

end A090048

/-! ## A090048.P5853984031055203178

`A001222(2^A087117((n²+n)/2))`
-/

namespace A090048.P5853984031055203178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A087117 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat : ℤ))).toNat

end

end A090048.P5853984031055203178

namespace A090048

/-- `A001222(2^A087117((n²+n)/2))` -/
def P5853984031055203178.Spec : Prop :=
  ∀ n, P5853984031055203178.a n = A090048 n

end A090048

/-! ## A090048.P4310101536306686363

`∑{d}[A087117((n²+n)/2), A000010(#)]`
-/

namespace A090048.P4310101536306686363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A090048.P4310101536306686363

namespace A090048

/-- `∑{d}[A087117((n²+n)/2), A000010(#)]` -/
def P4310101536306686363.Spec : Prop :=
  ∀ n, P4310101536306686363.a n = A090048 n

end A090048

/-! ## A090048.P5386837895321927185

`A004913(A087117((n+1)*n/2)+1)`
-/

namespace A090048.P5386837895321927185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (A087117 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n : ℚ) / 2))).toNat + 1).toNat

end

end A090048.P5386837895321927185

namespace A090048

/-- `A004913(A087117((n+1)*n/2)+1)` -/
def P5386837895321927185.Spec : Prop :=
  ∀ n, P5386837895321927185.a n = A090048 n

end A090048

/-! ## A090048.P9118603043901354150

`A087117((n²+n)/2)%A000041(n+2)`
-/

namespace A090048.P9118603043901354150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087117 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat) (A000041 (n + 2))

end

end A090048.P9118603043901354150

namespace A090048

/-- `A087117((n²+n)/2)%A000041(n+2)` -/
def P9118603043901354150.Spec : Prop :=
  ∀ n, P9118603043901354150.a n = A090048 n

end A090048

/-! ## A090048.P10356119665560734811

`A000041(C(2, n))*A087117((n²+n)/2)`
-/

namespace A090048.P10356119665560734811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A087117 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A090048.P10356119665560734811

namespace A090048

/-- `A000041(C(2, n))*A087117((n²+n)/2)` -/
def P10356119665560734811.Spec : Prop :=
  ∀ n, P10356119665560734811.a n = A090048 n

end A090048

/-! ## A090048.P14135401409931264553

`A007318(and(1, -n))*A087117((n²+n)/2)`
-/

namespace A090048.P14135401409931264553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A087117 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A090048.P14135401409931264553

namespace A090048

/-- `A007318(and(1, -n))*A087117((n²+n)/2)` -/
def P14135401409931264553.Spec : Prop :=
  ∀ n, P14135401409931264553.a n = A090048 n

end A090048

/-! ## A090048.P6344809730155054112

`A007318(C(2, n+2))*A087117((n²+n)/2)`
-/

namespace A090048.P6344809730155054112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A087117 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A090048.P6344809730155054112

namespace A090048

/-- `A007318(C(2, n+2))*A087117((n²+n)/2)` -/
def P6344809730155054112.Spec : Prop :=
  ∀ n, P6344809730155054112.a n = A090048 n

end A090048

/-! ## A090048.P17898299547108251825

`A000040(n+1)+A087117((n²+n)/2)-record[A014963(n+2)]`
-/

namespace A090048.P17898299547108251825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A087117 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A090048.P17898299547108251825

namespace A090048

/-- `A000040(n+1)+A087117((n²+n)/2)-record[A014963(n+2)]` -/
def P17898299547108251825.Spec : Prop :=
  ∀ n, P17898299547108251825.a n = A090048 n

end A090048

/-! ## A090048.P15819089321396049496

`A014963(C(n+5, 2))*A087117((n²+n)/2)`
-/

namespace A090048.P15819089321396049496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 5) 2) * A087117 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A090048.P15819089321396049496

namespace A090048

/-- `A014963(C(n+5, 2))*A087117((n²+n)/2)` -/
def P15819089321396049496.Spec : Prop :=
  ∀ n, P15819089321396049496.a n = A090048 n

end A090048

/-!
# A090049: Length of longest contiguous block of 0's in binary expansion of n^3.

The programs for A090049, the canonical program `A090049.P12650764323955169334` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090049 has offset 0).

The definition of A090049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090049.P12650764323955169334

`A087117(A000578(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A090049

/-- `A087117(A000578(n))` -/
def P12650764323955169334.Spec : Prop :=
  ∀ n, P12650764323955169334.a n = A090049 n

theorem P12650764323955169334.correct : P12650764323955169334.Spec := by
  intro n
  simp only [A090049]

end A090049

/-! ## A090049.P2321291903105416714

`A087117(A216972(n)^3)`
-/

namespace A090049.P2321291903105416714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A216972 n ^ 3).toNat

end

end A090049.P2321291903105416714

namespace A090049

/-- `A087117(A216972(n)^3)` -/
def P2321291903105416714.Spec : Prop :=
  ∀ n, P2321291903105416714.a n = A090049 n

end A090049

/-! ## A090049.P5612623883066792953

`A087117(n*A106612(n²))`
-/

namespace A090049.P5612623883066792953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 ((n : ℤ) * A106612 (n ^ 2)).toNat

end

end A090049.P5612623883066792953

namespace A090049

/-- `A087117(n*A106612(n²))` -/
def P5612623883066792953.Spec : Prop :=
  ∀ n, P5612623883066792953.a n = A090049 n

end A090049

/-! ## A090049.P7024098600419672691

`A087117(n²*A137564(n))`
-/

namespace A090049.P7024098600419672691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 ((n ^ 2 : ℤ) * A137564 n).toNat

end

end A090049.P7024098600419672691

namespace A090049

/-- `A087117(n²*A137564(n))` -/
def P7024098600419672691.Spec : Prop :=
  ∀ n, P7024098600419672691.a n = A090049 n

end A090049

/-! ## A090049.P329418002038661236

`A087117(n*A216972(n)²)`
-/

namespace A090049.P329418002038661236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 ((n : ℤ) * A216972 n ^ 2).toNat

end

end A090049.P329418002038661236

namespace A090049

/-- `A087117(n*A216972(n)²)` -/
def P329418002038661236.Spec : Prop :=
  ∀ n, P329418002038661236.a n = A090049 n

end A090049

/-!
# A090050: Numbers having equal length of longest contiguous block of zeros and ones in binary expansion.

The programs for A090050, the canonical program `A090050.P13123530974981238689` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090050 has offset 1).

The definition of A090050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1977 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090050.P13123530974981238689

`eq[2*A087117(n), A330036(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A090050

/-- `eq[2*A087117(n), A330036(n)]` -/
def P13123530974981238689.Spec : Prop :=
  ∀ n, (P13123530974981238689.a n : ℤ) = A090050 (n + 1)

theorem P13123530974981238689.correct : P13123530974981238689.Spec := by
  intro n
  simp only [A090050, Nat.add_sub_cancel]

end A090050

/-! ## A090050.P5037232265515276346

`eq[A038374(n+1), A087117(n+1)]+1`
-/

namespace A090050.P5037232265515276346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A090050.P5037232265515276346

namespace A090050

/-- `eq[A038374(n+1), A087117(n+1)]+1` -/
def P5037232265515276346.Spec : Prop :=
  ∀ n, (P5037232265515276346.a n : ℤ) = A090050 (n + 1)

end A090050

/-! ## A090050.P8098036924946218781

`eq[A061395(A246029(n)), A087117(n)]`
-/

namespace A090050.P8098036924946218781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A246029 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090050.P8098036924946218781

namespace A090050

/-- `eq[A061395(A246029(n)), A087117(n)]` -/
def P8098036924946218781.Spec : Prop :=
  ∀ n, (P8098036924946218781.a n : ℤ) = A090050 (n + 1)

end A090050

/-! ## A090050.P12609971278055083945

`eq[A051903(A278222(n)), A087117(n)]`
-/

namespace A090050.P12609971278055083945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090050.P12609971278055083945

namespace A090050

/-- `eq[A051903(A278222(n)), A087117(n)]` -/
def P12609971278055083945.Spec : Prop :=
  ∀ n, (P12609971278055083945.a n : ℤ) = A090050 (n + 1)

end A090050

/-! ## A090050.P14418580403068412622

`eq[A087117(A010078(n+1)), A087117(n)]`
-/

namespace A090050.P14418580403068412622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A010078 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090050.P14418580403068412622

namespace A090050

/-- `eq[A087117(A010078(n+1)), A087117(n)]` -/
def P14418580403068412622.Spec : Prop :=
  ∀ n, (P14418580403068412622.a n : ℤ) = A090050 (n + 1)

end A090050

/-! ## A090050.P16499756668614754085

`eq[A051903(A005940(n+1)), A087117(n)]`
-/

namespace A090050.P16499756668614754085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090050.P16499756668614754085

namespace A090050

/-- `eq[A051903(A005940(n+1)), A087117(n)]` -/
def P16499756668614754085.Spec : Prop :=
  ∀ n, (P16499756668614754085.a n : ℤ) = A090050 (n + 1)

end A090050

/-!
# A090052: Group-abundant numbers: n such that the number of groups of order n (A000001) exceeds n.

The programs for A090052, there is no canonical definition to state claims against.
-/

/-! ## A090052.P920441049812905135

`lt[n, A000001(n)]`
-/

namespace A090052.P920441049812905135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A090052.P920441049812905135

/-! ## A090052.P10392894752878801165

`lt[n², A297420(n)]`
-/

namespace A090052.P10392894752878801165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A090052.P10392894752878801165

/-! ## A090052.P11982235197408104309

`A028310(lt[n, sqrt(A297420(n))])`
-/

namespace A090052.P11982235197408104309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A090052.P11982235197408104309

/-! ## A090052.P15272385691025579599

`lt[A056699(n+1), sqrt(A297420(n))]`
-/

namespace A090052.P15272385691025579599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A090052.P15272385691025579599

/-! ## A090052.P2160818360466350444

`2*lt[A016754(n+1), A297420(2*n)]`
-/

namespace A090052.P2160818360466350444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090052.P2160818360466350444

/-!
# A090053: Numbers divisible by the number formed when their digits are sorted in ascending order, excluding trivial cases.

The programs for A090053, there is no canonical definition to state claims against.
-/

/-! ## A090053.P17520007669870609875

`A090055(∑[(A090058(n+1)%3)!])`
-/

namespace A090053.P17520007669870609875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A090058 (n + 1)) 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090055 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090053.P17520007669870609875

/-! ## A090053.P8883193936508673849

`record[gcd(A090055(n+1), A172537(n+1))]`
-/

namespace A090053.P8883193936508673849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090055 (n + 1)) (A172537 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090053.P8883193936508673849

/-! ## A090053.P10334959389576640752

`A090055(∑[A101910(A320606(n+1))])`
-/

namespace A090053.P10334959389576640752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101910 (A320606 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090055 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090053.P10334959389576640752

/-! ## A090053.P14139129922692125444

`record[A090055(n+1)/A320606(n+1)!]`
-/

namespace A090053.P14139129922692125444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090055 (n + 1) : ℚ) / (Nat.factorial (A320606 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090053.P14139129922692125444

/-! ## A090053.P12016738459881218288

`record[A053981(A047920(2*n+3))*A090055(n+1)]`
-/

namespace A090053.P12016738459881218288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (A047920 (2 * n + 3)).toNat * A090055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090053.P12016738459881218288

/-!
# A090055: Numbers k divisible by at least one nontrivial permutation (rearrangement) of the digits of k.

The programs for A090055, there is no canonical definition to state claims against.
-/

/-! ## A090055.P16110300439982620588

`A090053(A043318(n+1))`
-/

namespace A090055.P16110300439982620588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090053 (A043318 (n + 1)).toNat

end

end A090055.P16110300439982620588

/-! ## A090055.P9089069234324756819

`A090053(A044915(n+1))`
-/

namespace A090055.P9089069234324756819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090053 (A044915 (n + 1)).toNat

end

end A090055.P9089069234324756819

/-! ## A090055.P10179213137777180575

`A090053(A055647(n+1))`
-/

namespace A090055.P10179213137777180575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090053 (A055647 (n + 1)).toNat

end

end A090055.P10179213137777180575

/-! ## A090055.P8720739106342018796

`A090053(A055648(n)+1)`
-/

namespace A090055.P8720739106342018796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090053 (A055648 n + 1).toNat

end

end A090055.P8720739106342018796

/-! ## A090055.P15710438057092641027

`A090053(A057846(n+1))`
-/

namespace A090055.P15710438057092641027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090053 (A057846 (n + 1)).toNat

end

end A090055.P15710438057092641027

/-!
# A090063: Numbers n such that there are (presumably) two palindromes in the Reverse and Add! trajectory of n.

The programs for A090063, there is no canonical definition to state claims against.
-/

/-! ## A090063.P6485092431645225443

`eq[2, A065001(n+1)]+1`
-/

namespace A090063.P6485092431645225443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090063.P6485092431645225443

/-! ## A090063.P1272279918404032933

`eq[2, A065001(A028310(n))]`
-/

namespace A090063.P1272279918404032933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090063.P1272279918404032933

/-! ## A090063.P15726239877617346424

`A011760(eq[2, A065001(n+1)])`
-/

namespace A090063.P15726239877617346424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090063.P15726239877617346424

/-! ## A090063.P192909329458086772

`A020725(eq[2, A065001(n+1)])`
-/

namespace A090063.P192909329458086772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090063.P192909329458086772

/-! ## A090063.P15129541950323861783

`A065475(eq[2, A065001(n+1)])`
-/

namespace A090063.P15129541950323861783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090063.P15129541950323861783

/-! ## A090063.P2203569426014577

`A153152(eq[2, A065001(n+1)])`
-/

namespace A090063.P2203569426014577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090063.P2203569426014577

/-! ## A090063.P5420192739383826368

`eq[2, A065001(A233583(n+1))]`
-/

namespace A090063.P5420192739383826368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090063.P5420192739383826368

/-!
# A090064: Numbers n such that there are (presumably) three palindromes in the Reverse and Add! trajectory of n.

The programs for A090064, there is no canonical definition to state claims against.
-/

/-! ## A090064.P15860941256899517513

`eq[3, A065001(n+1)]+1`
-/

namespace A090064.P15860941256899517513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090064.P15860941256899517513

/-! ## A090064.P4909080750000238306

`eq[3, A065001(A028310(n))]`
-/

namespace A090064.P4909080750000238306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090064.P4909080750000238306

/-! ## A090064.P693565403028240360

`A114612(A077168(n)+1)`
-/

namespace A090064.P693565403028240360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114612 (A077168 n + 1).toNat

end

end A090064.P693565403028240360

/-! ## A090064.P5317914948433348898

`A114612(A043320(n+2))`
-/

namespace A090064.P5317914948433348898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114612 (A043320 (n + 2)).toNat

end

end A090064.P5317914948433348898

/-! ## A090064.P6561613472589588327

`A114612(A044917(n+2))`
-/

namespace A090064.P6561613472589588327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114612 (A044917 (n + 2)).toNat

end

end A090064.P6561613472589588327

/-!
# A090065: Numbers n such that there are (presumably) four palindromes in the Reverse and Add! trajectory of n.

The programs for A090065, there is no canonical definition to state claims against.
-/

/-! ## A090065.P12562712966504031848

`eq[4, A065001(n+1)]+1`
-/

namespace A090065.P12562712966504031848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090065.P12562712966504031848

/-! ## A090065.P1337842556333069652

`eq[4, A065001(A028310(n))]`
-/

namespace A090065.P1337842556333069652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090065.P1337842556333069652

/-! ## A090065.P11054578690812148543

`A020725(eq[4, A065001(n+1)])`
-/

namespace A090065.P11054578690812148543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090065.P11054578690812148543

/-! ## A090065.P3468444108636447656

`A065475(eq[4, A065001(n+1)])`
-/

namespace A090065.P3468444108636447656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090065.P3468444108636447656

/-! ## A090065.P15075908306922691976

`eq[4, A065001(A233583(n+1))]`
-/

namespace A090065.P15075908306922691976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090065.P15075908306922691976

/-!
# A090066: Numbers n such that there are (presumably) five palindromes in the Reverse and Add! trajectory of n.

The programs for A090066, there is no canonical definition to state claims against.
-/

/-! ## A090066.P5108257342165153763

`eq[5, A065001(n+1)]+1`
-/

namespace A090066.P5108257342165153763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090066.P5108257342165153763

/-! ## A090066.P11126416535377589677

`eq[5, A065001(A028310(n))]`
-/

namespace A090066.P11126416535377589677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090066.P11126416535377589677

/-! ## A090066.P17255015527263838110

`A011760(eq[5, A065001(n+1)])`
-/

namespace A090066.P17255015527263838110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090066.P17255015527263838110

/-! ## A090066.P3251233637676974315

`A020725(eq[5, A065001(n+1)])`
-/

namespace A090066.P3251233637676974315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090066.P3251233637676974315

/-! ## A090066.P12773473585856721574

`A065475(eq[5, A065001(n+1)])`
-/

namespace A090066.P12773473585856721574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090066.P12773473585856721574

/-!
# A090067: Numbers n such that there are (presumably) six palindromes in the Reverse and Add! trajectory of n.

The programs for A090067, there is no canonical definition to state claims against.
-/

/-! ## A090067.P11137751952295456115

`eq[6, A065001(n+1)]+1`
-/

namespace A090067.P11137751952295456115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090067.P11137751952295456115

/-! ## A090067.P1069590811259444116

`eq[6, A065001(A028310(n))]`
-/

namespace A090067.P1069590811259444116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090067.P1069590811259444116

/-! ## A090067.P9410292573926617442

`A020725(eq[6, A065001(n+1)])`
-/

namespace A090067.P9410292573926617442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090067.P9410292573926617442

/-! ## A090067.P18097722954388796356

`A065475(eq[6, A065001(n+1)])`
-/

namespace A090067.P18097722954388796356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090067.P18097722954388796356

/-! ## A090067.P6831125092222985075

`A153152(eq[6, A065001(n+1)])`
-/

namespace A090067.P6831125092222985075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090067.P6831125092222985075

/-!
# A090068: Numbers n such that there are (presumably) seven palindromes in the Reverse and Add! trajectory of n.

The programs for A090068, there is no canonical definition to state claims against.
-/

/-! ## A090068.P4301181279615599070

`eq[7, A065001(n+1)]+1`
-/

namespace A090068.P4301181279615599070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090068.P4301181279615599070

/-! ## A090068.P12215235608269308384

`eq[7, A065001(A028310(n))]`
-/

namespace A090068.P12215235608269308384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090068.P12215235608269308384

/-! ## A090068.P4992293773230036186

`A020725(eq[7, A065001(n+1)])`
-/

namespace A090068.P4992293773230036186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090068.P4992293773230036186

/-! ## A090068.P2571465878752410501

`eq[7, A065001(A060000(n+1))]`
-/

namespace A090068.P2571465878752410501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090068.P2571465878752410501

/-! ## A090068.P16548020409970612813

`A065475(eq[7, A065001(n+1)])`
-/

namespace A090068.P16548020409970612813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090068.P16548020409970612813

/-!
# A090069: Numbers n such that there are (presumably) eight palindromes in the Reverse and Add! trajectory of n.

The programs for A090069, there is no canonical definition to state claims against.
-/

/-! ## A090069.P2197853173698988614

`eq[8, A065001(n+1)]+1`
-/

namespace A090069.P2197853173698988614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090069.P2197853173698988614

/-! ## A090069.P4247290463306669004

`eq[8, A065001(A028310(n))]`
-/

namespace A090069.P4247290463306669004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065001 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090069.P4247290463306669004

/-!
# A090076: a(n) = prime(n)*prime(n+2).

The programs for A090076, the canonical program `A090076.P14041092475761084439` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090076 has offset 1).

The definition of A090076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090076.P9270920945538629414

`sqrt(sqrt(A096968(n+1)))`
-/

namespace A090076.P9270920945538629414
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A096968 (n + 1) : ℝ))

end

end A090076.P9270920945538629414

namespace A090076

/-- `sqrt(sqrt(A096968(n+1)))` -/
def P9270920945538629414.Spec : Prop :=
  ∀ n, P9270920945538629414.a n = (A090076 (n + 1) : ℝ)

end A090076

/-! ## A090076.P6007783654457064254

`Δ[A007504(n)]*A215848(n+1)`
-/

namespace A090076.P6007783654457064254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A215848 (n + 1)

end

end A090076.P6007783654457064254

namespace A090076

/-- `Δ[A007504(n)]*A215848(n+1)` -/
def P6007783654457064254.Spec : Prop :=
  ∀ n, P6007783654457064254.a n = A090076 (n + 1)

end A090076

/-! ## A090076.P14041092475761084439

`A205955(n+1)+A006094(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A090076

/-- `A205955(n+1)+A006094(n+1)` -/
def P14041092475761084439.Spec : Prop :=
  ∀ n, P14041092475761084439.a n = A090076 (n + 1)

theorem P14041092475761084439.correct : P14041092475761084439.Spec := by
  intro n
  simp only [A090076, Nat.add_sub_cancel]

end A090076

/-! ## A090076.P4277082653477442394

`A152530(n+1)+A065091(n+1)`
-/

namespace A090076.P4277082653477442394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1) + A065091 (n + 1)

end

end A090076.P4277082653477442394

namespace A090076

/-- `A152530(n+1)+A065091(n+1)` -/
def P4277082653477442394.Spec : Prop :=
  ∀ n, P4277082653477442394.a n = A090076 (n + 1)

theorem P4277082653477442394.correct : P4277082653477442394.Spec := by
  intro n
  simp only [A090076, Nat.add_sub_cancel, A090076.P4277082653477442394.a, A090076.P14041092475761084439.a, A006094, A006094.P10257567645245129766.a, A065091, A065091.P6971844946592549357.a, A152530, A152530.P2848620170226851519.a, A205955, A205955.P11019694915119694483.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096379, A096379.P11420595779051591420.a, A152532, A152532.P13496120299689407045.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090076

/-! ## A090076.P14568050281179450957

`A324795(n+1)+A056221(n+1)`
-/

namespace A090076.P14568050281179450957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324795 (n + 1) + A056221 (n + 1)

end

end A090076.P14568050281179450957

namespace A090076

/-- `A324795(n+1)+A056221(n+1)` -/
def P14568050281179450957.Spec : Prop :=
  ∀ n, P14568050281179450957.a n = A090076 (n + 1)

theorem P14568050281179450957.correct : P14568050281179450957.Spec := by
  intro n
  simp only [A090076, Nat.add_sub_cancel, A090076.P14568050281179450957.a, A090076.P14041092475761084439.a, A006094, A006094.P10257567645245129766.a, A056221, A056221.P18096132233236866898.a, A205955, A205955.P11019694915119694483.a, A324795, A324795.P1691509728636329575.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, A048852, A048852.P731177147256561861.f1, A048852.P731177147256561861.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, A028310, A028310.P18130301328277559831.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090076

/-! ## A090076.P13947381813202245381

`A000040(n+1)*A215848(n+1)`
-/

namespace A090076.P13947381813202245381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A215848 (n + 1)

end

end A090076.P13947381813202245381

namespace A090076

/-- `A000040(n+1)*A215848(n+1)` -/
def P13947381813202245381.Spec : Prop :=
  ∀ n, P13947381813202245381.a n = A090076 (n + 1)

theorem P13947381813202245381.correct : P13947381813202245381.Spec := by
  intro n
  simp only [A090076, Nat.add_sub_cancel, A090076.P13947381813202245381.a, A090076.P14041092475761084439.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A215848, A215848.P17068717743202425727.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090076

/-! ## A090076.P63685661792535863

`A127345(n+1)-A357679(n+2)`
-/

namespace A090076.P63685661792535863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 1) - A357679 (n + 2)

end

end A090076.P63685661792535863

namespace A090076

/-- `A127345(n+1)-A357679(n+2)` -/
def P63685661792535863.Spec : Prop :=
  ∀ n, P63685661792535863.a n = A090076 (n + 1)

theorem P63685661792535863.correct : P63685661792535863.Spec := by
  intro n
  simp only [A090076, Nat.add_sub_cancel, A090076.P63685661792535863.a, A090076.P14041092475761084439.a, A006094, A006094.P10257567645245129766.a, A127345, A127345.P18035437064499472931.a, A205955, A205955.P11019694915119694483.a, A357679, A357679.P3047207656668672575.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090076

/-! ## A090076.P10106412382052488273

`A046301(n+1)/A065091(n+1)`
-/

namespace A090076.P10106412382052488273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)

end

end A090076.P10106412382052488273

namespace A090076

/-- `A046301(n+1)/A065091(n+1)` -/
def P10106412382052488273.Spec : Prop :=
  ∀ n, P10106412382052488273.a n = (A090076 (n + 1) : ℚ)

end A090076

/-! ## A090076.P4826931392882461792

`Δ[A007504(n+2)]*Δ[A007504(n)]`
-/

namespace A090076.P4826931392882461792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A090076.P4826931392882461792

namespace A090076

/-- `Δ[A007504(n+2)]*Δ[A007504(n)]` -/
def P4826931392882461792.Spec : Prop :=
  ∀ n, P4826931392882461792.a n = A090076 (n + 1)

end A090076

/-! ## A090076.P10630273524804919797

`sqrt(A001248(n+1))*A215848(n+1)`
-/

namespace A090076.P10630273524804919797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A215848 (n + 1) : ℝ)

end

end A090076.P10630273524804919797

namespace A090076

/-- `sqrt(A001248(n+1))*A215848(n+1)` -/
def P10630273524804919797.Spec : Prop :=
  ∀ n, P10630273524804919797.a n = (A090076 (n + 1) : ℝ)

end A090076

/-! ## A090076.P14617511715397487700

`A066116(n+3)/A065091(n+1)²`
-/

namespace A090076.P14617511715397487700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066116 (n + 3) : ℚ) / (A065091 (n + 1) ^ 2 : ℚ)

end

end A090076.P14617511715397487700

namespace A090076

/-- `A066116(n+3)/A065091(n+1)²` -/
def P14617511715397487700.Spec : Prop :=
  ∀ n, P14617511715397487700.a n = (A090076 (n + 1) : ℚ)

end A090076

/-! ## A090076.P9633000371438166910

`A152530(n+1)+A000040(n+2)`
-/

namespace A090076.P9633000371438166910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1) + A000040 (n + 2)

end

end A090076.P9633000371438166910

namespace A090076

/-- `A152530(n+1)+A000040(n+2)` -/
def P9633000371438166910.Spec : Prop :=
  ∀ n, P9633000371438166910.a n = A090076 (n + 1)

theorem P9633000371438166910.correct : P9633000371438166910.Spec := by
  intro n
  simp only [A090076, Nat.add_sub_cancel, A090076.P9633000371438166910.a, A090076.P14041092475761084439.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A152530, A152530.P2848620170226851519.a, A205955, A205955.P11019694915119694483.a, A065091, A065091.P6971844946592549357.a, A096379, A096379.P11420595779051591420.a, A152532, A152532.P13496120299689407045.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090076

/-! ## A090076.P8869929809626085902

`A152532(n+1)+A100484(n+2)`
-/

namespace A090076.P8869929809626085902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152532 (n + 1) + A100484 (n + 2)

end

end A090076.P8869929809626085902

namespace A090076

/-- `A152532(n+1)+A100484(n+2)` -/
def P8869929809626085902.Spec : Prop :=
  ∀ n, P8869929809626085902.a n = A090076 (n + 1)

theorem P8869929809626085902.correct : P8869929809626085902.Spec := by
  intro n
  simp only [A090076, Nat.add_sub_cancel, A090076.P8869929809626085902.a, A090076.P14041092475761084439.a, A006094, A006094.P10257567645245129766.a, A100484, A100484.P9678625670825099636.a, A152532, A152532.P13496120299689407045.a, A205955, A205955.P11019694915119694483.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090076

/-! ## A090076.P265124629607251381

`A001248(n+2)-A056221(n+1)`
-/

namespace A090076.P265124629607251381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) - A056221 (n + 1)

end

end A090076.P265124629607251381

namespace A090076

/-- `A001248(n+2)-A056221(n+1)` -/
def P265124629607251381.Spec : Prop :=
  ∀ n, P265124629607251381.a n = A090076 (n + 1)

end A090076

/-! ## A090076.P7240721039316075293

`A000040(n+1)*A045344(n+2)`
-/

namespace A090076.P7240721039316075293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A045344 (n + 2)

end

end A090076.P7240721039316075293

namespace A090076

/-- `A000040(n+1)*A045344(n+2)` -/
def P7240721039316075293.Spec : Prop :=
  ∀ n, P7240721039316075293.a n = A090076 (n + 1)

end A090076

/-! ## A090076.P13451058903592900902

`A000040(n+1)*A065091(n+2)`
-/

namespace A090076.P13451058903592900902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A065091 (n + 2)

end

end A090076.P13451058903592900902

namespace A090076

/-- `A000040(n+1)*A065091(n+2)` -/
def P13451058903592900902.Spec : Prop :=
  ∀ n, P13451058903592900902.a n = A090076 (n + 1)

theorem P13451058903592900902.correct : P13451058903592900902.Spec := by
  intro n
  simp only [A090076, Nat.add_sub_cancel, A090076.P13451058903592900902.a, A090076.P14041092475761084439.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A065091, A065091.P6971844946592549357.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090076

/-! ## A090076.P14673484221919352624

`A046301(n+1)/A000040(n+2)`
-/

namespace A090076.P14673484221919352624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A090076.P14673484221919352624

namespace A090076

/-- `A046301(n+1)/A000040(n+2)` -/
def P14673484221919352624.Spec : Prop :=
  ∀ n, P14673484221919352624.a n = (A090076 (n + 1) : ℚ)

end A090076

/-! ## A090076.P6731313770063306546

`A008578(n+2)*A045344(n+2)`
-/

namespace A090076.P6731313770063306546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A045344 (n + 2)

end

end A090076.P6731313770063306546

namespace A090076

/-- `A008578(n+2)*A045344(n+2)` -/
def P6731313770063306546.Spec : Prop :=
  ∀ n, P6731313770063306546.a n = A090076 (n + 1)

end A090076

/-! ## A090076.P8373265224414129304

`A008578(n+2)*A065091(n+2)`
-/

namespace A090076.P8373265224414129304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A065091 (n + 2)

end

end A090076.P8373265224414129304

namespace A090076

/-- `A008578(n+2)*A065091(n+2)` -/
def P8373265224414129304.Spec : Prop :=
  ∀ n, P8373265224414129304.a n = A090076 (n + 1)

end A090076

/-! ## A090076.P5291302970037145573

`A045344(n+2)*A182986(n+2)`
-/

namespace A090076.P5291302970037145573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) * A182986 (n + 2)

end

end A090076.P5291302970037145573

namespace A090076

/-- `A045344(n+2)*A182986(n+2)` -/
def P5291302970037145573.Spec : Prop :=
  ∀ n, P5291302970037145573.a n = A090076 (n + 1)

end A090076

/-!
# A090077: In binary expansion of n: reduce contiguous blocks of 1's to 1.

The programs for A090077, the canonical program `A090077.P7628171309376731176` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090077 has offset 0).

The definition of A090077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090077.P8027138558281259708

`A332816(∏{p}[A332815(n), #])`
-/

namespace A090077.P8027138558281259708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332816 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A090077.P8027138558281259708

namespace A090077

/-- `A332816(∏{p}[A332815(n), #])` -/
def P8027138558281259708.Spec : Prop :=
  ∀ n, P8027138558281259708.a n = A090077 n

end A090077

/-! ## A090077.P7628171309376731176

`A156552(∏{p}[A005940(n+1), #])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A090077

/-- `A156552(∏{p}[A005940(n+1), #])` -/
def P7628171309376731176.Spec : Prop :=
  ∀ n, P7628171309376731176.a n = A090077 n

theorem P7628171309376731176.correct : P7628171309376731176.Spec := by
  intro n
  simp only [A090077]

end A090077

/-! ## A090077.P10085303510134770682

`A156552(A108548(∏{p}[A332815(n), #]))`
-/

namespace A090077.P10085303510134770682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A108548 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat

end

end A090077.P10085303510134770682

namespace A090077

/-- `A156552(A108548(∏{p}[A332815(n), #]))` -/
def P10085303510134770682.Spec : Prop :=
  ∀ n, P10085303510134770682.a n = A090077 n

end A090077

/-! ## A090077.P3079934523526719543

`A156552(A332808(∏{p}[A332815(n), #]))`
-/

namespace A090077.P3079934523526719543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A332808 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat

end

end A090077.P3079934523526719543

namespace A090077

/-- `A156552(A332808(∏{p}[A332815(n), #]))` -/
def P3079934523526719543.Spec : Prop :=
  ∀ n, P3079934523526719543.a n = A090077 n

end A090077

/-! ## A090077.P3459930151762792511

`A292382(∏{p}[A005940(n+1), #])`
-/

namespace A090077.P3459930151762792511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292382 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A090077.P3459930151762792511

namespace A090077

/-- `A292382(∏{p}[A005940(n+1), #])` -/
def P3459930151762792511.Spec : Prop :=
  ∀ n, P3459930151762792511.a n = A090077 n

end A090077

/-! ## A090077.P7521719003978783367

`A156552(gcd(A005940(n+1), A034386(n+1)))`
-/

namespace A090077.P7521719003978783367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.gcd (A005940 (n + 1)) (A034386 (n + 1)))

end

end A090077.P7521719003978783367

namespace A090077

/-- `A156552(gcd(A005940(n+1), A034386(n+1)))` -/
def P7521719003978783367.Spec : Prop :=
  ∀ n, P7521719003978783367.a n = A090077 n

end A090077

/-!
# A090078: In binary expansion of n, reduce contiguous blocks of 0's to 0.

The programs for A090078, there is no canonical definition to state claims against.
-/

/-! ## A090078.P17153579683819742135

`1-A001051(A143926(n))+n`
-/

namespace A090078.P17153579683819742135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001051 (A143926 n).toNat + (n : ℤ)

end

end A090078.P17153579683819742135

/-! ## A090078.P2969606424141404971

`A005408(n)-n-A001051(A143926(n))`
-/

namespace A090078.P2969606424141404971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) - A001051 (A143926 n).toNat

end

end A090078.P2969606424141404971

/-! ## A090078.P17081204219988269535

`A005843(n)-(n-(1-A001051(A143926(n))))`
-/

namespace A090078.P17081204219988269535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - (1 - A001051 (A143926 n).toNat))

end

end A090078.P17081204219988269535

/-! ## A090078.P17121733022124502098

`A118917(A068043(n))+∏{p}[n, #]%A273112(n)`
-/

namespace A090078.P17121733022124502098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (A068043 n).toNat + Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A273112 n)

end

end A090078.P17121733022124502098

/-!
# A090079: In binary expansion of n: reduce contiguous blocks of 0's to 0 and contiguous blocks of 1's to 1.

The programs for A090079, the canonical program `A090079.P4814076796393068128` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090079 has offset 0).

The definition of A090079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090079.P4814076796393068128

`n%2+2*a(and(n, Δ[-n²])-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090079

/-- `n%2+2*a(and(n, Δ[-n²])-1)` -/
def P4814076796393068128.Spec : Prop :=
  ∀ n, (P4814076796393068128.a n : ℤ) = A090079 n

theorem P4814076796393068128.correct : P4814076796393068128.Spec := by
  intro n
  simp only [A090079]

end A090079

/-! ## A090079.P12510287553363739652

`(2^(A005811(n)+1)+(1-(-1)^n)/2-2)/3`
-/

namespace A090079.P12510287553363739652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A005811 n + 1 : ℤ) + (1 - (-1) ^ n : ℚ) / 2 - 2) / 3

end

end A090079.P12510287553363739652

namespace A090079

/-- `(2^(A005811(n)+1)+(1-(-1)^n)/2-2)/3` -/
def P12510287553363739652.Spec : Prop :=
  ∀ n, P12510287553363739652.a n = (A090079 n : ℚ)

end A090079

/-! ## A090079.P6865209797403766487

`A000975(A005811(n))`
-/

namespace A090079.P6865209797403766487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A005811 n).toNat

end

end A090079.P6865209797403766487

namespace A090079

/-- `A000975(A005811(n))` -/
def P6865209797403766487.Spec : Prop :=
  ∀ n, P6865209797403766487.a n = A090079 n

end A090079

/-! ## A090079.P7898710687177835748

`A090078(A090077(n))`
-/

namespace A090079.P7898710687177835748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090078 (A090077 n).toNat

end

end A090079.P7898710687177835748

namespace A090079

/-- `A090078(A090077(n))` -/
def P7898710687177835748.Spec : Prop :=
  ∀ n, P7898710687177835748.a n = A090079 n

end A090079

/-! ## A090079.P8049624345358277561

`A090078(A229763(n))`
-/

namespace A090079.P8049624345358277561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090078 (A229763 n).toNat

end

end A090079.P8049624345358277561

namespace A090079

/-- `A090078(A229763(n))` -/
def P8049624345358277561.Spec : Prop :=
  ∀ n, P8049624345358277561.a n = A090079 n

end A090079

/-! ## A090079.P13351161932628579042

`A000975(A088748(n)-1)`
-/

namespace A090079.P13351161932628579042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A088748 n - 1).toNat

end

end A090079.P13351161932628579042

namespace A090079

/-- `A000975(A088748(n)-1)` -/
def P13351161932628579042.Spec : Prop :=
  ∀ n, P13351161932628579042.a n = A090079 n

end A090079

/-! ## A090079.P17678606221518058153

`A000975(n-A236840(n))`
-/

namespace A090079.P17678606221518058153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 ((n : ℤ) - A236840 n).toNat

end

end A090079.P17678606221518058153

namespace A090079

/-- `A000975(n-A236840(n))` -/
def P17678606221518058153.Spec : Prop :=
  ∀ n, P17678606221518058153.a n = A090079 n

end A090079

/-! ## A090079.P15574243216751849975

`A000975(∑[A121238(n)]-1)`
-/

namespace A090079.P15574243216751849975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A090079.P15574243216751849975

namespace A090079

/-- `A000975(∑[A121238(n)]-1)` -/
def P15574243216751849975.Spec : Prop :=
  ∀ n, P15574243216751849975.a n = A090079 n

end A090079

/-! ## A090079.P10769180749462212560

`A000975(∑[A034947(n+1)]-A034947(n+1))`
-/

namespace A090079.P10769180749462212560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (∑ j ∈ Finset.range (n + 1), f1 j - A034947 (n + 1)).toNat

end

end A090079.P10769180749462212560

namespace A090079

/-- `A000975(∑[A034947(n+1)]-A034947(n+1))` -/
def P10769180749462212560.Spec : Prop :=
  ∀ n, P10769180749462212560.a n = A090079 n

end A090079

/-! ## A090079.P12861031523060508917

`A006068(A000225(A000120(A003188(n))))`
-/

namespace A090079.P12861031523060508917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A000225 (A000120 (A003188 n).toNat).toNat).toNat

end

end A090079.P12861031523060508917

namespace A090079

/-- `A006068(A000225(A000120(A003188(n))))` -/
def P12861031523060508917.Spec : Prop :=
  ∀ n, P12861031523060508917.a n = A090079 n

end A090079

/-! ## A090079.P16742526595051144872

`A002264(A277561(2*n+1)*A277561(n))`
-/

namespace A090079.P16742526595051144872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A277561 (2 * n + 1) * A277561 n).toNat

end

end A090079.P16742526595051144872

namespace A090079

/-- `A002264(A277561(2*n+1)*A277561(n))` -/
def P16742526595051144872.Spec : Prop :=
  ∀ n, P16742526595051144872.a n = A090079 n

end A090079

/-! ## A090079.P7062867275751493260

`A000975(A001222(A278219(n)))`
-/

namespace A090079.P7062867275751493260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A001222 (A278219 n).toNat).toNat

end

end A090079.P7062867275751493260

namespace A090079

/-- `A000975(A001222(A278219(n)))` -/
def P7062867275751493260.Spec : Prop :=
  ∀ n, P7062867275751493260.a n = A090079 n

end A090079

/-!
# A090080: In binary expansion of n-th prime: reduce contiguous blocks of 0's to 0 and contiguous blocks of 1's to 1.

The programs for A090080, the canonical program `A090080.P8358327826318951583` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090080 has offset 1).

The definition of A090080 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090079, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090080.P8358327826318951583

`A090079(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090080

/-- `A090079(A000040(n+1))` -/
def P8358327826318951583.Spec : Prop :=
  ∀ n, P8358327826318951583.a n = A090080 (n + 1)

theorem P8358327826318951583.correct : P8358327826318951583.Spec := by
  intro n
  simp only [A090080, Nat.add_sub_cancel]

end A090080

/-! ## A090080.P13768087238841024546

`A000975(A100714(n+1))`
-/

namespace A090080.P13768087238841024546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A100714 (n + 1)).toNat

end

end A090080.P13768087238841024546

namespace A090080

/-- `A000975(A100714(n+1))` -/
def P13768087238841024546.Spec : Prop :=
  ∀ n, P13768087238841024546.a n = A090080 (n + 1)

end A090080

/-! ## A090080.P7880867133254031793

`A090079(and(p?[round(8*n/7)]+1, -1)-1)`
-/

namespace A090080.P7880867133254031793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) (-1) - 1).toNat

end

end A090080.P7880867133254031793

namespace A090080

/-- `A090079(and(p?[round(8*n/7)]+1, -1)-1)` -/
def P7880867133254031793.Spec : Prop :=
  ∀ n, P7880867133254031793.a n = A090080 (n + 1)

end A090080

/-! ## A090080.P548329686657587744

`A090079(Δ[A007504(n)])`
-/

namespace A090080.P548329686657587744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (f1 (n + 1) - f1 n).toNat

end

end A090080.P548329686657587744

namespace A090080

/-- `A090079(Δ[A007504(n)])` -/
def P548329686657587744.Spec : Prop :=
  ∀ n, P548329686657587744.a n = A090080 (n + 1)

end A090080

/-! ## A090080.P4049567953906846556

`A090079(record[A162753(n)])`
-/

namespace A090080.P4049567953906846556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090080.P4049567953906846556

namespace A090080

/-- `A090079(record[A162753(n)])` -/
def P4049567953906846556.Spec : Prop :=
  ∀ n, P4049567953906846556.a n = A090080 (n + 1)

end A090080

/-! ## A090080.P9930758491111120802

`A090079(A063884(n+1))`
-/

namespace A090080.P9930758491111120802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A063884 (n + 1)).toNat

end

end A090080.P9930758491111120802

namespace A090080

/-- `A090079(A063884(n+1))` -/
def P9930758491111120802.Spec : Prop :=
  ∀ n, P9930758491111120802.a n = A090080 (n + 1)

end A090080

/-! ## A090080.P10285970977992671296

`A090079(A008578(n+2))`
-/

namespace A090080.P10285970977992671296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A008578 (n + 2)).toNat

end

end A090080.P10285970977992671296

namespace A090080

/-- `A090079(A008578(n+2))` -/
def P10285970977992671296.Spec : Prop :=
  ∀ n, P10285970977992671296.a n = A090080 (n + 1)

end A090080

/-! ## A090080.P7915975235167261887

`A090079(A182986(n+2))`
-/

namespace A090080.P7915975235167261887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A182986 (n + 2)).toNat

end

end A090080.P7915975235167261887

namespace A090080

/-- `A090079(A182986(n+2))` -/
def P7915975235167261887.Spec : Prop :=
  ∀ n, P7915975235167261887.a n = A090080 (n + 1)

end A090080

/-! ## A090080.P17113492192217823707

`A090079(eq[1, A032741(n)])`
-/

namespace A090080.P17113492192217823707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090080.P17113492192217823707

namespace A090080

/-- `A090079(eq[1, A032741(n)])` -/
def P17113492192217823707.Spec : Prop :=
  ∀ n, P17113492192217823707.a n = A090080 (n + 1)

end A090080

/-! ## A090080.P10217739521545663335

`A090079(A166496(n+1))`
-/

namespace A090080.P10217739521545663335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A166496 (n + 1)).toNat

end

end A090080.P10217739521545663335

namespace A090080

/-- `A090079(A166496(n+1))` -/
def P10217739521545663335.Spec : Prop :=
  ∀ n, P10217739521545663335.a n = A090080 (n + 1)

end A090080

/-! ## A090080.P7029121143237244747

`A090079(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A090080.P7029121143237244747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A090080.P7029121143237244747

namespace A090080

/-- `A090079(∑{p}[p?[round(8*n/7)]², #])` -/
def P7029121143237244747.Spec : Prop :=
  ∀ n, P7029121143237244747.a n = A090080 (n + 1)

end A090080

/-! ## A090080.P3358094728969879985

`A090079(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A090080.P3358094728969879985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A090080.P3358094728969879985

namespace A090080

/-- `A090079(∏{p}[p?[round(8*n/7)]², #])` -/
def P3358094728969879985.Spec : Prop :=
  ∀ n, P3358094728969879985.a n = A090080 (n + 1)

end A090080

/-!
# A090081: Cube root-smooth numbers: numbers k whose largest prime factor does not exceed the cube root of k.

The programs for A090081, the canonical program `A090081.P3944922333172897926` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090081 has offset 1).

The definition of A090081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090081.P3944922333172897926

`lt[A006530(n+1)^3, n+2]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A090081

/-- `lt[A006530(n+1)^3, n+2]+1` -/
def P3944922333172897926.Spec : Prop :=
  ∀ n, (P3944922333172897926.a n : ℤ) = A090081 (n + 1)

theorem P3944922333172897926.correct : P3944922333172897926.Spec := by
  intro n
  simp only [A090081, Nat.add_sub_cancel]

end A090081

/-! ## A090081.P4377891899964962647

`lt[A006530(abs(1-n)+1), root(n+1, 3)]`
-/

namespace A090081.P4377891899964962647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A090081.P4377891899964962647

namespace A090081

/-- `lt[A006530(abs(1-n)+1), root(n+1, 3)]` -/
def P4377891899964962647.Spec : Prop :=
  ∀ n, (P4377891899964962647.a n : ℤ) = A090081 (n + 1)

end A090081

/-! ## A090081.P4936869786122680284

`lt[A100196(n), A052126(n+1)]+1`
-/

namespace A090081.P4936869786122680284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A090081.P4936869786122680284

namespace A090081

/-- `lt[A100196(n), A052126(n+1)]+1` -/
def P4936869786122680284.Spec : Prop :=
  ∀ n, (P4936869786122680284.a n : ℤ) = A090081 (n + 1)

end A090081

/-! ## A090081.P8532405949424144626

`lt[A006530(A028310(n))^3, n+1]`
-/

namespace A090081.P8532405949424144626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090081.P8532405949424144626

namespace A090081

/-- `lt[A006530(A028310(n))^3, n+1]` -/
def P8532405949424144626.Spec : Prop :=
  ∀ n, (P8532405949424144626.a n : ℤ) = A090081 (n + 1)

end A090081

/-! ## A090081.P15480332845826516013

`lt[A056555(A006530(abs(1-n)+1)), n+2]`
-/

namespace A090081.P15480332845826516013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (A006530 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090081.P15480332845826516013

namespace A090081

/-- `lt[A056555(A006530(abs(1-n)+1)), n+2]` -/
def P15480332845826516013.Spec : Prop :=
  ∀ n, (P15480332845826516013.a n : ℤ) = A090081 (n + 1)

end A090081

/-!
# A090082: Even pseudoprimes to base 5.

The programs for A090082, there is no canonical definition to state claims against.
-/

/-! ## A090082.P16093907369382653103

`record[A005936(n+1)%or(1, A005936(n+1))]`
-/

namespace A090082.P16093907369382653103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005936 (n + 1)) (Int.lor 1 (A005936 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090082.P16093907369382653103

/-! ## A090082.P844080209889817581

`A005936(eq[0, A005936(n+1)%2]+1)`
-/

namespace A090082.P844080209889817581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005936 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A090082.P844080209889817581

/-!
# A090083: Even pseudoprimes to base 9.

The programs for A090083, there is no canonical definition to state claims against.
-/

/-! ## A090083.P2243813131549827325

`∩[2*n, A020138(n+1)]`
-/

namespace A090083.P2243813131549827325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090083.P2243813131549827325

/-! ## A090083.P11353294218599377910

`filter[A020138(n+1), A120325(#)]`
-/

namespace A090083.P11353294218599377910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A090083.P11353294218599377910

/-! ## A090083.P16263671832396644040

`filter[A122786(n+1), A120325(#)]`
-/

namespace A090083.P16263671832396644040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A090083.P16263671832396644040

/-! ## A090083.P9203615684677694221

`filter[A020138(n+1), A373252(#)]`
-/

namespace A090083.P9203615684677694221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A090083.P9203615684677694221

/-! ## A090083.P10099446658916061183

`filter[A020138(n+1), A353525(#)]`
-/

namespace A090083.P10099446658916061183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A090083.P10099446658916061183

/-!
# A090084: Even pseudoprimes to base 11.

The programs for A090084, there is no canonical definition to state claims against.
-/

/-! ## A090084.P11388069803194815213

`filter[A020139(n+1), A120325(#)]`
-/

namespace A090084.P11388069803194815213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A090084.P11388069803194815213

/-! ## A090084.P8181914443248947070

`filter[A020139(n+1), A373252(#)]`
-/

namespace A090084.P8181914443248947070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A090084.P8181914443248947070

/-! ## A090084.P9903948419202924402

`filter[A020139(n+1), A373260(#)]`
-/

namespace A090084.P9903948419202924402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A090084.P9903948419202924402

/-! ## A090084.P9044953829437681237

`filter[A020139(n+1), A217586(#)]`
-/

namespace A090084.P9044953829437681237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A090084.P9044953829437681237

/-! ## A090084.P224181271694641172

`filter[A020139(n+1), A323170(#)]`
-/

namespace A090084.P224181271694641172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A090084.P224181271694641172

/-!
# A090085: Smallest odd pseudoprimes to base n exceeding n (like A007535 but with smallest odd terms instead of few even ones).

The programs for A090085, there is no canonical definition to state claims against.
-/

/-! ## A090085.P11282151219285439663

`A090087(A032559(n+1)%A030078(n+1))`
-/

namespace A090085.P11282151219285439663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090087 (Int.tmod (A032559 (n + 1)) (A030078 (n + 1))).toNat

end

end A090085.P11282151219285439663

/-! ## A090085.P17136328750289239001

`A326614(A069747(n+1)²%A048950(n+1))`
-/

namespace A090085.P17136328750289239001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326614 (Int.tmod (A069747 (n + 1) ^ 2) (A048950 (n + 1))).toNat

end

end A090085.P17136328750289239001

/-! ## A090085.P16957365247271418047

`A090087(A032555(n+1))`
-/

namespace A090085.P16957365247271418047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090087 (A032555 (n + 1)).toNat

end

end A090085.P16957365247271418047

/-! ## A090085.P4229302534870517426

`A090087(A032559(n+1))`
-/

namespace A090085.P4229302534870517426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090087 (A032559 (n + 1)).toNat

end

end A090085.P4229302534870517426

/-! ## A090085.P16654537405804829766

`A090087(A077739(n+1))`
-/

namespace A090085.P16654537405804829766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090087 (A077739 (n + 1)).toNat

end

end A090085.P16654537405804829766

/-!
# A090087: Smallest odd pseudoprimes to base n, not necessarily exceeding n. Compare with A007535 and A090086.

The programs for A090087, there is no canonical definition to state claims against.
-/

/-! ## A090087.P13415153222807551744

`A326614(((n+1)%(3*A326614(n+1)))²)`
-/

namespace A090087.P13415153222807551744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326614 (Int.tmod (n + 1 : ℤ) (3 * A326614 (n + 1)) ^ 2).toNat

end

end A090087.P13415153222807551744

/-! ## A090087.P6588789368732312358

`A326614((n+1)²)`
-/

namespace A090087.P6588789368732312358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326614 ((n + 1) ^ 2)

end

end A090087.P6588789368732312358

/-! ## A090087.P12620925443923448759

`or(1, A326614(∑[2*n+1]))`
-/

namespace A090087.P12620925443923448759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A326614 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A090087.P12620925443923448759

/-! ## A090087.P18246858537670819181

`A000027(A326614(∑[2*n+1]))`
-/

namespace A090087.P18246858537670819181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A326614 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A090087.P18246858537670819181

/-! ## A090087.P8722565602759522293

`A142149(A326614(∑[n+1+n]))`
-/

namespace A090087.P8722565602759522293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142149 (A326614 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A090087.P8722565602759522293

/-! ## A090087.P8130846838240319580

`A029578(2*A326614(∑[2*n+1]))`
-/

namespace A090087.P8130846838240319580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (2 * A326614 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A090087.P8130846838240319580

/-! ## A090087.P5344396894462954144

`A002264(3*A326614(∑[2*n+1]))`
-/

namespace A090087.P5344396894462954144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A326614 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A090087.P5344396894462954144

/-! ## A090087.P15211784883384586318

`∑{d}[A326614(∑[2*n+1]), A000010(#)]`
-/

namespace A090087.P15211784883384586318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326614 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A090087.P15211784883384586318

/-! ## A090087.P646361387212681140

`∏{d}[A326614(∑[2*n+1]), A014963(#)]`
-/

namespace A090087.P646361387212681140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326614 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A090087.P646361387212681140

/-! ## A090087.P12813763524543461978

`A326614(∑[n+1+n])+A000007(n+1)`
-/

namespace A090087.P12813763524543461978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326614 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 (n + 1)

end

end A090087.P12813763524543461978

/-!
# A090089: Smallest even pseudoprimes to odd base=4n-1, not necessarily exceeding n.

The programs for A090089, there is no canonical definition to state claims against.
-/

/-! ## A090089.P9691427456182039823

`A090088(A090368(n+1)+1)`
-/

namespace A090089.P9691427456182039823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (A090368 (n + 1) + 1).toNat

end

end A090089.P9691427456182039823

/-! ## A090089.P748411221436649678

`A090088(2*(n+1))`
-/

namespace A090089.P748411221436649678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (2 * (n + 1))

end

end A090089.P748411221436649678

/-! ## A090089.P14437397405427999686

`or(2, A090088(n+2+n))`
-/

namespace A090089.P14437397405427999686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A090088 (n + 2 + n))

end

end A090089.P14437397405427999686

/-! ## A090089.P11987251677705235966

`lcm(2, A090088(Δ[A002378(n)]))`
-/

namespace A090089.P11987251677705235966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A090088 (f1 (n + 1) - f1 n).toNat)

end

end A090089.P11987251677705235966

/-! ## A090089.P11872233696524407613

`filter[A090088(n+1), A008966(#)]`
-/

namespace A090089.P11872233696524407613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A090089.P11872233696524407613

/-! ## A090089.P616173510285249577

`filter[A090088(n+1), A049240(#)]`
-/

namespace A090089.P616173510285249577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A090089.P616173510285249577

/-! ## A090089.P7237653792874995592

`filter[A090088(n+1), A105597(#)]`
-/

namespace A090089.P7237653792874995592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A090089.P7237653792874995592

/-! ## A090089.P18024272006093705776

`filter[A090088(n+1), A166486(#)]`
-/

namespace A090089.P18024272006093705776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A090089.P18024272006093705776

/-! ## A090089.P15385392092529492944

`filter[A090088(n+1), A181183(#)]`
-/

namespace A090089.P15385392092529492944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A090089.P15385392092529492944

/-! ## A090089.P10397271356511740342

`filter[A090088(n+1), A202238(#)]`
-/

namespace A090089.P10397271356511740342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A090089.P10397271356511740342

/-! ## A090089.P5278783995070753011

`A254503(A090088(n+2+n))`
-/

namespace A090089.P5278783995070753011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (A090088 (n + 2 + n)).toNat

end

end A090089.P5278783995070753011

/-! ## A090089.P10461023654674608931

`filter[A090088(n+1), A014707(#)]`
-/

namespace A090089.P10461023654674608931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014707 (f1 j).toNat = 1) n)

end

end A090089.P10461023654674608931

/-! ## A090089.P10413598014848288947

`filter[A090088(n+1), A021913(#)]`
-/

namespace A090089.P10413598014848288947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A090089.P10413598014848288947

/-! ## A090089.P924895124384780248

`filter[A090088(n+1), A059125(#)]`
-/

namespace A090089.P924895124384780248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059125 (f1 j).toNat = 1) n)

end

end A090089.P924895124384780248

/-! ## A090089.P7180492540027156929

`filter[A090088(n+1), A082410(#)]`
-/

namespace A090089.P7180492540027156929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082410 (f1 j).toNat = 1) n)

end

end A090089.P7180492540027156929

/-! ## A090089.P6154536873239951794

`filter[A090088(n+1), A095792(#)]`
-/

namespace A090089.P6154536873239951794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095792 (f1 j).toNat = 1) n)

end

end A090089.P6154536873239951794

/-! ## A090089.P5360354138667066770

`filter[A090088(n+1), A132350(#)]`
-/

namespace A090089.P5360354138667066770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A090089.P5360354138667066770

/-! ## A090089.P10985493371813978953

`filter[A090088(n+1), A143731(#)]`
-/

namespace A090089.P10985493371813978953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A090089.P10985493371813978953

/-! ## A090089.P3528687924754251625

`filter[A090088(n+1), A165560(#)]`
-/

namespace A090089.P3528687924754251625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A090089.P3528687924754251625

/-! ## A090089.P13621757308261786052

`filter[A090088(n+1), A241979(#)]`
-/

namespace A090089.P13621757308261786052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A241979 (f1 j).toNat = 1) n)

end

end A090089.P13621757308261786052

/-!
# A090090: a(n) = prime(n)*prime(n+3).

The programs for A090090, the canonical program `A090090.P16547710281115840405` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090090 has offset 1).

The definition of A090090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090090.P2707767739912185494

`p?[2*n+7]*p?[ceil(2/acot(n))]`
-/

namespace A090090.P2707767739912185494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A090090.P2707767739912185494

namespace A090090

/-- `p?[2*n+7]*p?[ceil(2/acot(n))]` -/
def P2707767739912185494.Spec : Prop :=
  ∀ n, P2707767739912185494.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P16547710281115840405

`p?[2*n+7]*p?[round(4*2*n/7)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090090

/-- `p?[2*n+7]*p?[round(4*2*n/7)]` -/
def P16547710281115840405.Spec : Prop :=
  ∀ n, P16547710281115840405.a n = A090090 (n + 1)

theorem P16547710281115840405.correct : P16547710281115840405.Spec := by
  intro n
  simp only [A090090, Nat.add_sub_cancel]

end A090090

/-! ## A090090.P10245768235428383403

`(A031165(n+1)+A000040(n+1))*A000040(n+1)`
-/

namespace A090090.P10245768235428383403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A031165 (n + 1) + A000040 (n + 1)) * A000040 (n + 1)

end

end A090090.P10245768235428383403

namespace A090090

/-- `(A031165(n+1)+A000040(n+1))*A000040(n+1)` -/
def P10245768235428383403.Spec : Prop :=
  ∀ n, P10245768235428383403.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P11098266666228939170

`(A375097(n+2)+A024675(n+1))*A000040(n+1)`
-/

namespace A090090.P11098266666228939170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A375097 (n + 2) + A024675 (n + 1)) * A000040 (n + 1)

end

end A090090.P11098266666228939170

namespace A090090

/-- `(A375097(n+2)+A024675(n+1))*A000040(n+1)` -/
def P11098266666228939170.Spec : Prop :=
  ∀ n, P11098266666228939170.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P13286038840609566901

`p?[A259153(n)]*A004139(n+2)`
-/

namespace A090090.P13286038840609566901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A004139 (n + 2)

end

end A090090.P13286038840609566901

namespace A090090

/-- `p?[A259153(n)]*A004139(n+2)` -/
def P13286038840609566901.Spec : Prop :=
  ∀ n, P13286038840609566901.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P8375239873904378246

`A117301(n+1)+A006094(n+2)`
-/

namespace A090090.P8375239873904378246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117301 (n + 1) + A006094 (n + 2)

end

end A090090.P8375239873904378246

namespace A090090

/-- `A117301(n+1)+A006094(n+2)` -/
def P8375239873904378246.Spec : Prop :=
  ∀ n, P8375239873904378246.a n = A090090 (n + 1)

theorem P8375239873904378246.correct : P8375239873904378246.Spec := by
  intro n
  simp only [A090090, Nat.add_sub_cancel, A090090.P8375239873904378246.a, A090090.P16547710281115840405.f1, A090090.P16547710281115840405.f2, A090090.P16547710281115840405.a, A006094, A006094.P10257567645245129766.a, A117301, A117301.P971532255739246842.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090090

/-! ## A090090.P10991967343906033973

`A000040(n+1)*A004139(n+2)`
-/

namespace A090090.P10991967343906033973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A004139 (n + 2)

end

end A090090.P10991967343906033973

namespace A090090

/-- `A000040(n+1)*A004139(n+2)` -/
def P10991967343906033973.Spec : Prop :=
  ∀ n, P10991967343906033973.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P5275650615162648632

`A000040(n+1)*A215848(n+2)`
-/

namespace A090090.P5275650615162648632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A215848 (n + 2)

end

end A090090.P5275650615162648632

namespace A090090

/-- `A000040(n+1)*A215848(n+2)` -/
def P5275650615162648632.Spec : Prop :=
  ∀ n, P5275650615162648632.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P4210136293231155592

`A004139(n+2)*A008578(n+2)`
-/

namespace A090090.P4210136293231155592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2) * A008578 (n + 2)

end

end A090090.P4210136293231155592

namespace A090090

/-- `A004139(n+2)*A008578(n+2)` -/
def P4210136293231155592.Spec : Prop :=
  ∀ n, P4210136293231155592.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P2502803093078780269

`A046302(n+1)/A006094(n+2)`
-/

namespace A090090.P2502803093078780269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046302 (n + 1) : ℚ) / (A006094 (n + 2) : ℚ)

end

end A090090.P2502803093078780269

namespace A090090

/-- `A046302(n+1)/A006094(n+2)` -/
def P2502803093078780269.Spec : Prop :=
  ∀ n, P2502803093078780269.a n = (A090090 (n + 1) : ℚ)

end A090090

/-! ## A090090.P3207096001084241169

`A008578(n+2)*A215848(n+2)`
-/

namespace A090090.P3207096001084241169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A215848 (n + 2)

end

end A090090.P3207096001084241169

namespace A090090

/-- `A008578(n+2)*A215848(n+2)` -/
def P3207096001084241169.Spec : Prop :=
  ∀ n, P3207096001084241169.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P6731053738621675515

`A117301(n+1)+A065091(n+1)*A065091(n+2)`
-/

namespace A090090.P6731053738621675515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117301 (n + 1) + A065091 (n + 1) * A065091 (n + 2)

end

end A090090.P6731053738621675515

namespace A090090

/-- `A117301(n+1)+A065091(n+1)*A065091(n+2)` -/
def P6731053738621675515.Spec : Prop :=
  ∀ n, P6731053738621675515.a n = A090090 (n + 1)

theorem P6731053738621675515.correct : P6731053738621675515.Spec := by
  intro n
  simp only [A090090, Nat.add_sub_cancel, A090090.P6731053738621675515.a, A090090.P16547710281115840405.f1, A090090.P16547710281115840405.f2, A090090.P16547710281115840405.a, A065091, A065091.P6971844946592549357.a, A117301, A117301.P971532255739246842.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090090

/-! ## A090090.P13211646001328995473

`(A031131(n+2)+A000040(n+2))*A000040(n+1)`
-/

namespace A090090.P13211646001328995473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A031131 (n + 2) + A000040 (n + 2)) * A000040 (n + 1)

end

end A090090.P13211646001328995473

namespace A090090

/-- `(A031131(n+2)+A000040(n+2))*A000040(n+1)` -/
def P13211646001328995473.Spec : Prop :=
  ∀ n, P13211646001328995473.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P11532512181597563126

`(A093667(n+2)+A001223(n+2))*A000040(n+1)`
-/

namespace A090090.P11532512181597563126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093667 (n + 2) + A001223 (n + 2)) * A000040 (n + 1)

end

end A090090.P11532512181597563126

namespace A090090

/-- `(A093667(n+2)+A001223(n+2))*A000040(n+1)` -/
def P11532512181597563126.Spec : Prop :=
  ∀ n, P11532512181597563126.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P11407949614854896823

`(A210497(n+2)+A036263(n+2))*A000040(n+1)`
-/

namespace A090090.P11407949614854896823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A210497 (n + 2) + A036263 (n + 2)) * A000040 (n + 1)

end

end A090090.P11407949614854896823

namespace A090090

/-- `(A210497(n+2)+A036263(n+2))*A000040(n+1)` -/
def P11407949614854896823.Spec : Prop :=
  ∀ n, P11407949614854896823.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P187108821184167429

`(A211280(n+2)+A036263(n+2))*A000040(n+1)`
-/

namespace A090090.P187108821184167429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211280 (n + 2) + A036263 (n + 2)) * A000040 (n + 1)

end

end A090090.P187108821184167429

namespace A090090

/-- `(A211280(n+2)+A036263(n+2))*A000040(n+1)` -/
def P187108821184167429.Spec : Prop :=
  ∀ n, P187108821184167429.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P17825707645299114503

`(A034961(n+2)-A001043(n+2))*A000040(n+1)`
-/

namespace A090090.P17825707645299114503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034961 (n + 2) - A001043 (n + 2)) * A000040 (n + 1)

end

end A090090.P17825707645299114503

namespace A090090

/-- `(A034961(n+2)-A001043(n+2))*A000040(n+1)` -/
def P17825707645299114503.Spec : Prop :=
  ∀ n, P17825707645299114503.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P746702994213779442

`(A028334(n+3)+A024675(n+2))*A000040(n+1)`
-/

namespace A090090.P746702994213779442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028334 (n + 3) + A024675 (n + 2)) * A000040 (n + 1)

end

end A090090.P746702994213779442

namespace A090090

/-- `(A028334(n+3)+A024675(n+2))*A000040(n+1)` -/
def P746702994213779442.Spec : Prop :=
  ∀ n, P746702994213779442.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P11852526255048942575

`A000040(n+1)*A045319(n+3)`
-/

namespace A090090.P11852526255048942575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A045319 (n + 3)

end

end A090090.P11852526255048942575

namespace A090090

/-- `A000040(n+1)*A045319(n+3)` -/
def P11852526255048942575.Spec : Prop :=
  ∀ n, P11852526255048942575.a n = A090090 (n + 1)

end A090090

/-! ## A090090.P14333939443560632830

`A000040(n+1)*A045344(n+3)`
-/

namespace A090090.P14333939443560632830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A045344 (n + 3)

end

end A090090.P14333939443560632830

namespace A090090

/-- `A000040(n+1)*A045344(n+3)` -/
def P14333939443560632830.Spec : Prop :=
  ∀ n, P14333939443560632830.a n = A090090 (n + 1)

end A090090

/-!
# A090091: Number of groups of order 3^n.

The programs for A090091, there is no canonical definition to state claims against.
-/

/-! ## A090091.P16373921535771353172

`A000001(3^n)`
-/

namespace A090091.P16373921535771353172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (3 ^ n)

end

end A090091.P16373921535771353172

/-! ## A090091.P14084619519069859909

`A319171(∑[n+1]+1)`
-/

namespace A090091.P14084619519069859909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319171 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A090091.P14084619519069859909

/-! ## A090091.P15674226314536199746

`A319171(A134869(n+1))+floor(n/10)`
-/

namespace A090091.P15674226314536199746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319171 (A134869 (n + 1)).toNat + ⌊(n : ℚ) / 10⌋

end

end A090091.P15674226314536199746

/-! ## A090091.P10811428403366449882

`A319171(A134869(n+1))^A178334(n)`
-/

namespace A090091.P10811428403366449882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319171 (A134869 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A090091.P10811428403366449882

/-! ## A090091.P4401291098878642149

`A319171(A134869(n+1))%A016845(n)`
-/

namespace A090091.P4401291098878642149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319171 (A134869 (n + 1)).toNat) (A016845 n)

end

end A090091.P4401291098878642149

/-!
# A090092: a(n) is the smallest composite number coprime to n, n+1 and n+2.

The programs for A090092, there is no canonical definition to state claims against.
-/

/-! ## A090092.P11021607939685528217

`A053671(n+1)²`
-/

namespace A090092.P11021607939685528217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053671 (n + 1) ^ 2

end

end A090092.P11021607939685528217

/-! ## A090092.P5084813543151506608

`A002620(2*A053671(n+1))`
-/

namespace A090092.P5084813543151506608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A053671 (n + 1)).toNat

end

end A090092.P5084813543151506608

/-! ## A090092.P12859102805147087795

`A000290(or(1, A053671(n+1)))`
-/

namespace A090092.P12859102805147087795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A053671 (n + 1))).toNat

end

end A090092.P12859102805147087795

/-! ## A090092.P6960724249694156204

`∏{p}[A053671(n+1), #*A006530(#)]`
-/

namespace A090092.P6960724249694156204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A006530 p

end

end A090092.P6960724249694156204

/-! ## A090092.P8191226957521002904

`A053671(n+1)^A020639(2*(n+1))`
-/

namespace A090092.P8191226957521002904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053671 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A090092.P8191226957521002904

/-! ## A090092.P7091306885835174435

`A017666((A053671(n+1)^-2)^-1)`
-/

namespace A090092.P7091306885835174435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (SequenceMachineLib.roundAway (((A053671 (n + 1) : ℚ) ^ (-2 : ℤ)) ^ (-1 : ℤ))).toNat

end

end A090092.P7091306885835174435

/-! ## A090092.P10673379517550913693

`A053671(n+1)^A000040(gcd(n, n+1))`
-/

namespace A090092.P10673379517550913693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053671 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A090092.P10673379517550913693

/-! ## A090092.P34686082317993968

`or(A053671(n+1)^2, char[A000203(n+1)])`
-/

namespace A090092.P34686082317993968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053671 (n + 1) ^ 2) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090092.P34686082317993968

/-! ## A090092.P13572248518049167428

`A053641(A053671(n+1)*A053671(n+1))`
-/

namespace A090092.P13572248518049167428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053641 (A053671 (n + 1) * A053671 (n + 1)).toNat

end

end A090092.P13572248518049167428

/-! ## A090092.P16132952448808732869

`A089091((n+1)*(n+3))`
-/

namespace A090092.P16132952448808732869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089091 ((n + 1) * (n + 3))

end

end A090092.P16132952448808732869

/-!
# A090093: a(n) is the smallest composite number coprime to n, n+1, n+2, n+3.

The programs for A090093, there is no canonical definition to state claims against.
-/

/-! ## A090093.P8988934419099057075

`A053672(n+1)²`
-/

namespace A090093.P8988934419099057075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053672 (n + 1) ^ 2

end

end A090093.P8988934419099057075

/-! ## A090093.P3444562410362665361

`A053672(Δ[n²]-n)^2`
-/

namespace A090093.P3444562410362665361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053672 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A090093.P3444562410362665361

/-! ## A090093.P4043318438507836158

`A000290(p?[A053672(n+1)])`
-/

namespace A090093.P4043318438507836158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090093.P4043318438507836158

/-! ## A090093.P1441863465978015124

`A002620(2*A053672(n+1))`
-/

namespace A090093.P1441863465978015124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A053672 (n + 1)).toNat

end

end A090093.P1441863465978015124

/-! ## A090093.P8367757443848679665

`A000027(A053672(n+1)^2)`
-/

namespace A090093.P8367757443848679665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A053672 (n + 1) ^ 2).toNat

end

end A090093.P8367757443848679665

/-! ## A090093.P6665835589419612768

`A000290(or(1, A053672(n+1)))`
-/

namespace A090093.P6665835589419612768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A053672 (n + 1))).toNat

end

end A090093.P6665835589419612768

/-! ## A090093.P6179229093448835423

`A000290(∏{p}[A053672(n+1), #])`
-/

namespace A090093.P6179229093448835423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A090093.P6179229093448835423

/-! ## A090093.P5820319145628140011

`A020639(A053672(n-log2(1/2)))²`
-/

namespace A090093.P5820319145628140011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053672 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat ^ 2

end

end A090093.P5820319145628140011

/-! ## A090093.P6986503564195126298

`A053672(A000027(n+1))*A053672(n+1)`
-/

namespace A090093.P6986503564195126298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053672 (A000027 (n + 1)).toNat * A053672 (n + 1)

end

end A090093.P6986503564195126298

/-! ## A090093.P7299808794923968168

`A051953(A053672(n+1)^3)`
-/

namespace A090093.P7299808794923968168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A053672 (n + 1) ^ 3).toNat

end

end A090093.P7299808794923968168

/-! ## A090093.P9810573098388159107

`A089091(∑[n+2])`
-/

namespace A090093.P9810573098388159107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089091 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090093.P9810573098388159107

/-! ## A090093.P7746144228588768798

`A053670(∑[n+2])²`
-/

namespace A090093.P7746144228588768798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A090093.P7746144228588768798

/-!
# A090094: a(n) is the smallest composite number coprime to n, n+1, n+2, n+3 and n+4.

The programs for A090094, there is no canonical definition to state claims against.
-/

/-! ## A090094.P4308049391346995754

`A053673(n+1)²`
-/

namespace A090094.P4308049391346995754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053673 (n + 1) ^ 2

end

end A090094.P4308049391346995754

/-! ## A090094.P12700443609551905903

`A053673(Δ[n²]-n)^2`
-/

namespace A090094.P12700443609551905903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053673 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A090094.P12700443609551905903

/-! ## A090094.P5741953829103019366

`A000290(p?[A053673(n+1)])`
-/

namespace A090094.P5741953829103019366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090094.P5741953829103019366

/-! ## A090094.P16417866052240468061

`A002620(2*A053673(n+1))`
-/

namespace A090094.P16417866052240468061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A053673 (n + 1)).toNat

end

end A090094.P16417866052240468061

/-! ## A090094.P12481599388010639130

`A000027(A053673(n+1)^2)`
-/

namespace A090094.P12481599388010639130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A053673 (n + 1) ^ 2).toNat

end

end A090094.P12481599388010639130

/-! ## A090094.P11170437070084582904

`A020639(A053673(n-log2(1/2)))²`
-/

namespace A090094.P11170437070084582904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053673 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat ^ 2

end

end A090094.P11170437070084582904

/-! ## A090094.P1690856549482344715

`A053673(n+1)^2*A000010(C(2, n)!)`
-/

namespace A090094.P1690856549482344715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053673 (n + 1) ^ 2 * A000010 (Nat.factorial (Nat.choose 2 n))

end

end A090094.P1690856549482344715

/-! ## A090094.P10033405682884039904

`p?[A053673(n+1)]^A020639(lcm(2, n+2))`
-/

namespace A090094.P10033405682884039904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053673 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A020639 (Nat.lcm 2 (n + 2)) : ℤ)

end

end A090094.P10033405682884039904

/-! ## A090094.P2095436317907714777

`A053673(A000027(n+1))*A053673(n+1)`
-/

namespace A090094.P2095436317907714777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053673 (A000027 (n + 1)).toNat * A053673 (n + 1)

end

end A090094.P2095436317907714777

/-! ## A090094.P18336619956741569010

`A020639(p?[A053673(n+1)])*A053673(n+1)`
-/

namespace A090094.P18336619956741569010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A053673 (n + 1)

end

end A090094.P18336619956741569010

/-! ## A090094.P17127723430915674950

`or(A053673(n+1)^2, char[A014963(n+1)-1])`
-/

namespace A090094.P17127723430915674950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053673 (n + 1) ^ 2) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090094.P17127723430915674950

/-! ## A090094.P14992534445605227563

`(A053673(n+1)^2)%A000045(n+10)`
-/

namespace A090094.P14992534445605227563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053673 (n + 1) ^ 2) (A000045 (n + 10))

end

end A090094.P14992534445605227563

/-! ## A090094.P2795424188619142360

`A053673(n+1)^2*A007318(∑[n])`
-/

namespace A090094.P2795424188619142360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053673 (n + 1) ^ 2 * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090094.P2795424188619142360

/-!
# A090095: a(n) is the smallest composite number coprime to n, n+1, n+2, n+3, n+4 and n+5.

The programs for A090095, there is no canonical definition to state claims against.
-/

/-! ## A090095.P14359244343400745747

`A053674(n+1)²`
-/

namespace A090095.P14359244343400745747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053674 (n + 1) ^ 2

end

end A090095.P14359244343400745747

/-! ## A090095.P7153585526696415513

`A053674(2*(n+1)-(n+1))^2`
-/

namespace A090095.P7153585526696415513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053674 (2 * (n + 1) - (n + 1)) ^ 2

end

end A090095.P7153585526696415513

/-! ## A090095.P17703378155811445351

`A002620(2*A053674(n+1))`
-/

namespace A090095.P17703378155811445351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A053674 (n + 1)).toNat

end

end A090095.P17703378155811445351

/-! ## A090095.P4902448622743552525

`A008794(2*A053674(n+1))`
-/

namespace A090095.P4902448622743552525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A053674 (n + 1)).toNat

end

end A090095.P4902448622743552525

/-! ## A090095.P1383090841014046640

`A069799(A053674(n+1)^2)`
-/

namespace A090095.P1383090841014046640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A053674 (n + 1) ^ 2).toNat

end

end A090095.P1383090841014046640

/-! ## A090095.P13809608923548663098

`A008833(A053674(n+1)^3)`
-/

namespace A090095.P13809608923548663098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A053674 (n + 1) ^ 3).toNat

end

end A090095.P13809608923548663098

/-! ## A090095.P9351786339685631265

`A000290(or(1, A053674(n+1)))`
-/

namespace A090095.P9351786339685631265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A053674 (n + 1))).toNat

end

end A090095.P9351786339685631265

/-! ## A090095.P6388424348328670688

`A053674(char[1]+1+n)*A053674(n+1)`
-/

namespace A090095.P6388424348328670688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053674 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) * A053674 (n + 1)

end

end A090095.P6388424348328670688

/-! ## A090095.P7012474920237049346

`A002620(A053674(n+1)+A053674(n+1))`
-/

namespace A090095.P7012474920237049346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A053674 (n + 1) + A053674 (n + 1)).toNat

end

end A090095.P7012474920237049346

/-! ## A090095.P1026197580309037763

`A006530(2*A053674(n+1))*A053674(n+1)`
-/

namespace A090095.P1026197580309037763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A053674 (n + 1)).toNat * A053674 (n + 1)

end

end A090095.P1026197580309037763

/-!
# A090096: Least n-pseudoprime which is a power of a prime number; smallest prime-power pseudoprime to base n.

The programs for A090096, there is no canonical definition to state claims against.
-/

/-! ## A090096.P9314016765037448529

`A039951(n+1)²`
-/

namespace A090096.P9314016765037448529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (n + 1) ^ 2

end

end A090096.P9314016765037448529

/-! ## A090096.P768311513614558105

`A039951(n+1)^A020639(2*(n+1))`
-/

namespace A090096.P768311513614558105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039951 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A090096.P768311513614558105

/-! ## A090096.P16256660747142151573

`A039951(n+1)^A000005(A000355(n+1))`
-/

namespace A090096.P16256660747142151573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039951 (n + 1) : ℚ) ^ (A000005 (A000355 (n + 1)).toNat : ℤ)

end

end A090096.P16256660747142151573

/-! ## A090096.P2910484178742638872

`A039951(n+1)^A000005(A008578(n+2))`
-/

namespace A090096.P2910484178742638872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039951 (n + 1) : ℚ) ^ (A000005 (A008578 (n + 2)).toNat : ℤ)

end

end A090096.P2910484178742638872

/-! ## A090096.P15934642189763986418

`A039951(n+1)^A000005(A002374(n+3))`
-/

namespace A090096.P15934642189763986418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039951 (n + 1) : ℚ) ^ (A000005 (A002374 (n + 3)).toNat : ℤ)

end

end A090096.P15934642189763986418

/-!
# A090097: Bases n such that the smallest prime-power-pseudoprime to base n is 9.

The programs for A090097, the canonical program `A090097.P13166210499176410012` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090097 has offset 1).

The definition of A090097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090097.P1443957599199130446

`∑[A156552(a(n-3)+1)]+n` with `a(0)=8, a(1)=1, a(2)=8`
-/

namespace A090097.P1443957599199130446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 1, 8] fun n f1 =>
  A156552 (f1 (n - 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A090097.P1443957599199130446

namespace A090097

/-- `∑[A156552(a(n-3)+1)]+n` -/
def P1443957599199130446.Spec : Prop :=
  ∀ n, P1443957599199130446.a n = A090097 (n + 1)

end A090097

/-! ## A090097.P13166210499176410012

`A056020(A047587(n+2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090097

/-- `A056020(A047587(n+2))` -/
def P13166210499176410012.Spec : Prop :=
  ∀ n, P13166210499176410012.a n = A090097 (n + 1)

theorem P13166210499176410012.correct : P13166210499176410012.Spec := by
  intro n
  simp only [A090097, Nat.add_sub_cancel]

end A090097

/-! ## A090097.P12667155619552269397

`A056020(A047572(n+1)+1)`
-/

namespace A090097.P12667155619552269397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A047572 (n + 1) + 1).toNat

end

end A090097.P12667155619552269397

namespace A090097

/-- `A056020(A047572(n+1)+1)` -/
def P12667155619552269397.Spec : Prop :=
  ∀ n, P12667155619552269397.a n = A090097 (n + 1)

end A090097

/-! ## A090097.P9604182205243201553

`A056020(A047428(n+1)+2)`
-/

namespace A090097.P9604182205243201553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A047428 (n + 1) + 2).toNat

end

end A090097.P9604182205243201553

namespace A090097

/-- `A056020(A047428(n+1)+2)` -/
def P9604182205243201553.Spec : Prop :=
  ∀ n, P9604182205243201553.a n = A090097 (n + 1)

end A090097

/-! ## A090097.P10777796749337127948

`A042963(A080782(n+2)+1)+A042963(A042963(n+1)+1)`
-/

namespace A090097.P10777796749337127948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A080782 (n + 2) + 1).toNat + A042963 (A042963 (n + 1) + 1).toNat

end

end A090097.P10777796749337127948

namespace A090097

/-- `A042963(A080782(n+2)+1)+A042963(A042963(n+1)+1)` -/
def P10777796749337127948.Spec : Prop :=
  ∀ n, P10777796749337127948.a n = A090097 (n + 1)

end A090097

/-! ## A090097.P4349052439728853179

`A166517(A016777(A047572(n+1)))`
-/

namespace A090097.P4349052439728853179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (A016777 (A047572 (n + 1)).toNat).toNat

end

end A090097.P4349052439728853179

namespace A090097

/-- `A166517(A016777(A047572(n+1)))` -/
def P4349052439728853179.Spec : Prop :=
  ∀ n, P4349052439728853179.a n = A090097 (n + 1)

end A090097

/-! ## A090097.P12110643153751435039

`∩[A004772(n+1), A056020(n+1)]`
-/

namespace A090097.P12110643153751435039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090097.P12110643153751435039

namespace A090097

/-- `∩[A004772(n+1), A056020(n+1)]` -/
def P12110643153751435039.Spec : Prop :=
  ∀ n, (P12110643153751435039.a n : ℤ) = A090097 (n + 1)

end A090097

/-! ## A090097.P1392454597321511563

`eq[A070650(n), A263845(n)]`
-/

namespace A090097.P1392454597321511563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090097.P1392454597321511563

namespace A090097

/-- `eq[A070650(n), A263845(n)]` -/
def P1392454597321511563.Spec : Prop :=
  ∀ n, (P1392454597321511563.a n : ℤ) = A090097 (n + 1)

end A090097

/-! ## A090097.P15156970532375027571

`eq[A070433(n)², A263845(n)]`
-/

namespace A090097.P15156970532375027571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070433 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090097.P15156970532375027571

namespace A090097

/-- `eq[A070433(n)², A263845(n)]` -/
def P15156970532375027571.Spec : Prop :=
  ∀ n, (P15156970532375027571.a n : ℤ) = A090097 (n + 1)

end A090097

/-! ## A090097.P14836280770235325889

`eq[A070433(n), A263845(n*A070433(n))]`
-/

namespace A090097.P14836280770235325889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 ((n : ℤ) * A070433 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090097.P14836280770235325889

namespace A090097

/-- `eq[A070433(n), A263845(n*A070433(n))]` -/
def P14836280770235325889.Spec : Prop :=
  ∀ n, (P14836280770235325889.a n : ℤ) = A090097 (n + 1)

end A090097

