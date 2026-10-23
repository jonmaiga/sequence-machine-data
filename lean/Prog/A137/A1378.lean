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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C025

/-!
# A137800: Consider the first run of composites that contains at least two numbers whose largest prime factor is prime(n), n >= 2. a(n) is the second of these numbers.

The programs for A137800, there is no canonical definition to state claims against.
-/

/-! ## A137800.P15787723459672582935

`A137799(n+2)+p?[A004273(n)]`
-/

namespace A137800.P15787723459672582935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137799 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137800.P15787723459672582935

/-! ## A137800.P14057351825794860112

`A137799(n+2)+p?[A005408(n)]`
-/

namespace A137800.P14057351825794860112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137799 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137800.P14057351825794860112

/-! ## A137800.P14394860917954055128

`A137799(n+2)+p?[A022998(n)]`
-/

namespace A137800.P14394860917954055128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137799 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137800.P14394860917954055128

/-! ## A137800.P14031886014225409522

`A137799(n+2)+p?[A093178(n)]`
-/

namespace A137800.P14031886014225409522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137799 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137800.P14031886014225409522

/-! ## A137800.P6714455518390083731

`A137799(n+2)+A065091(n+1)`
-/

namespace A137800.P6714455518390083731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137799 (n + 2) + A065091 (n + 1)

end

end A137800.P6714455518390083731

/-!
# A137801: Number of arrangements of 2n couples into n cars such that each car contains 2 men and 2 women but no couple (cars are labeled).

The programs for A137801, there is no canonical definition to state claims against.
-/

/-! ## A137801.P17417518769328659837

`(n+1)!*A137802(n+1)`
-/

namespace A137801.P17417518769328659837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A137802 (n + 1)

end

end A137801.P17417518769328659837

/-!
# A137802: Number of arrangements of 2n couples into n cars such that each car contains 2 men and 2 women but no couple (cars are unlabeled).

The programs for A137802, there is no canonical definition to state claims against.
-/

/-! ## A137802.P4059833787497927924

`A137801(n+1)/(n+1)!`
-/

namespace A137802.P4059833787497927924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137801 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A137802.P4059833787497927924

/-! ## A137802.P1017915405575254508

`A137801(n+1)/record[A047920(n)]`
-/

namespace A137802.P1017915405575254508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137801 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A137802.P1017915405575254508

/-! ## A137802.P12044159014658503746

`A137801(n+1)/record[A098361(n)]`
-/

namespace A137802.P12044159014658503746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137801 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A137802.P12044159014658503746

/-! ## A137802.P906952445169354466

`A137801(n+1)/∏[A000027(n+1)]`
-/

namespace A137802.P906952445169354466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137801 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A137802.P906952445169354466

/-! ## A137802.P15020533247108462468

`A137801(n+1)/∏[A281873(n+1)]`
-/

namespace A137802.P15020533247108462468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137801 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A137802.P15020533247108462468

/-!
# A137803: a(n) = floor(n*(sqrt(2) + 1/2)).

The programs for A137803, the canonical program `A137803.P16694902827831025866` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137803 has offset 1).

The definition of A137803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(sqrt(2)+1/2))` (program `A137803.P16694902827831025866`, by `A137803.P16694902827831025866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137803.P16694902827831025866

`floor((n+1)*(sqrt(2)+1/2))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137803

/-- `floor((n+1)*(sqrt(2)+1/2))` -/
def P16694902827831025866.Spec : Prop :=
  ∀ n, P16694902827831025866.a n = A137803 (n + 1)

theorem P16694902827831025866.correct : P16694902827831025866.Spec := by
  intro n
  simp only [A137803, Nat.add_sub_cancel]

end A137803

/-! ## A137803.P7332252193429538690

`comp[A137804(n+1)-1]+1`
-/

namespace A137803.P7332252193429538690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A137803.P7332252193429538690

namespace A137803

/-- `comp[A137804(n+1)-1]+1` -/
def P7332252193429538690.Spec : Prop :=
  ∀ n, (P7332252193429538690.a n : ℤ) = A137803 (n + 1)

end A137803

/-! ## A137803.P4067031685625489633

`comp[comp[A190337(2*(n+1))]+n]`
-/

namespace A137803.P4067031685625489633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190337 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A137803.P4067031685625489633

namespace A137803

/-- `comp[comp[A190337(2*(n+1))]+n]` -/
def P4067031685625489633.Spec : Prop :=
  ∀ n, (P4067031685625489633.a n : ℤ) = A137803 (n + 1)

end A137803

/-! ## A137803.P3933324243526127607

`A189459(n+1)-A001952(n+1)`
-/

namespace A137803.P3933324243526127607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189459 (n + 1) - A001952 (n + 1)

end

end A137803.P3933324243526127607

namespace A137803

/-- `A189459(n+1)-A001952(n+1)` -/
def P3933324243526127607.Spec : Prop :=
  ∀ n, P3933324243526127607.a n = A137803 (n + 1)

end A137803

/-! ## A137803.P9969642189606313884

`∪[A356052(n+1), A356054(n+1)]`
-/

namespace A137803.P9969642189606313884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137803.P9969642189606313884

namespace A137803

/-- `∪[A356052(n+1), A356054(n+1)]` -/
def P9969642189606313884.Spec : Prop :=
  ∀ n, (P9969642189606313884.a n : ℤ) = A137803 (n + 1)

end A137803

/-! ## A137803.P837926919182040985

`∪[A356138(n+1), A356140(n+1)]`
-/

namespace A137803.P837926919182040985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137803.P837926919182040985

namespace A137803

/-- `∪[A356138(n+1), A356140(n+1)]` -/
def P837926919182040985.Spec : Prop :=
  ∀ n, (P837926919182040985.a n : ℤ) = A137803 (n + 1)

end A137803

/-! ## A137803.P4706774109500552728

`A189459(n+1)-(A080754(n+1)+n)`
-/

namespace A137803.P4706774109500552728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189459 (n + 1) - (A080754 (n + 1) + (n : ℤ))

end

end A137803.P4706774109500552728

namespace A137803

/-- `A189459(n+1)-(A080754(n+1)+n)` -/
def P4706774109500552728.Spec : Prop :=
  ∀ n, P4706774109500552728.a n = A137803 (n + 1)

end A137803

/-! ## A137803.P8980261925982751922

`A137805(A137804(n+1))`
-/

namespace A137803.P8980261925982751922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A137804 (n + 1)).toNat

end

end A137803.P8980261925982751922

namespace A137803

/-- `A137805(A137804(n+1))` -/
def P8980261925982751922.Spec : Prop :=
  ∀ n, P8980261925982751922.a n = A137803 (n + 1)

end A137803

/-! ## A137803.P12390691405342686435

`A137805(record[A137805(n+1)])`
-/

namespace A137803.P12390691405342686435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137803.P12390691405342686435

namespace A137803

/-- `A137805(record[A137805(n+1)])` -/
def P12390691405342686435.Spec : Prop :=
  ∀ n, P12390691405342686435.a n = A137803 (n + 1)

end A137803

/-! ## A137803.P18284611096937547382

`A026249(A356056(n+1))`
-/

namespace A137803.P18284611096937547382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A356056 (n + 1)).toNat

end

end A137803.P18284611096937547382

namespace A137803

/-- `A026249(A356056(n+1))` -/
def P18284611096937547382.Spec : Prop :=
  ∀ n, P18284611096937547382.a n = A137803 (n + 1)

end A137803

/-! ## A137803.P13604012489799476235

`A049472(A356056(n+1)+1)`
-/

namespace A137803.P13604012489799476235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A356056 (n + 1) + 1).toNat

end

end A137803.P13604012489799476235

namespace A137803

/-- `A049472(A356056(n+1)+1)` -/
def P13604012489799476235.Spec : Prop :=
  ∀ n, P13604012489799476235.a n = A137803 (n + 1)

end A137803

/-! ## A137803.P630861757902146157

`A004526(A198263(n+1)+n)`
-/

namespace A137803.P630861757902146157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198263 (n + 1) + (n : ℤ)).toNat

end

end A137803.P630861757902146157

namespace A137803

/-- `A004526(A198263(n+1)+n)` -/
def P630861757902146157.Spec : Prop :=
  ∀ n, P630861757902146157.a n = A137803 (n + 1)

end A137803

/-! ## A137803.P18424673505000354427

`A004526(A184921(n+1)-n)`
-/

namespace A137803.P18424673505000354427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184921 (n + 1) - (n : ℤ)).toNat

end

end A137803.P18424673505000354427

namespace A137803

/-- `A004526(A184921(n+1)-n)` -/
def P18424673505000354427.Spec : Prop :=
  ∀ n, P18424673505000354427.a n = A137803 (n + 1)

end A137803

/-! ## A137803.P812165681038843646

`A004526(A022842(n+1)+1+n)`
-/

namespace A137803.P812165681038843646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022842 (n + 1) + 1 + (n : ℤ)).toNat

end

end A137803.P812165681038843646

namespace A137803

/-- `A004526(A022842(n+1)+1+n)` -/
def P812165681038843646.Spec : Prop :=
  ∀ n, P812165681038843646.a n = A137803 (n + 1)

end A137803

/-! ## A137803.P837197711815622421

`A008619(A022842(n+1)-1+n)`
-/

namespace A137803.P837197711815622421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022842 (n + 1) - 1 + (n : ℤ)).toNat

end

end A137803.P837197711815622421

namespace A137803

/-- `A008619(A022842(n+1)-1+n)` -/
def P837197711815622421.Spec : Prop :=
  ∀ n, P837197711815622421.a n = A137803 (n + 1)

end A137803

/-! ## A137803.P6121452905241178024

`A004526(A197878(n+1)-(n+1))`
-/

namespace A137803.P6121452905241178024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A197878 (n + 1) - (n + 1 : ℤ)).toNat

end

end A137803.P6121452905241178024

namespace A137803

/-- `A004526(A197878(n+1)-(n+1))` -/
def P6121452905241178024.Spec : Prop :=
  ∀ n, P6121452905241178024.a n = A137803 (n + 1)

end A137803

/-! ## A137803.P5358871696041897078

`A065033(A184921(n+1)-(n+1))`
-/

namespace A137803.P5358871696041897078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A184921 (n + 1) - (n + 1 : ℤ)).toNat

end

end A137803.P5358871696041897078

namespace A137803

/-- `A065033(A184921(n+1)-(n+1))` -/
def P5358871696041897078.Spec : Prop :=
  ∀ n, P5358871696041897078.a n = A137803 (n + 1)

end A137803

/-! ## A137803.P14590206973663187745

`A026249(A356058(n+1))`
-/

namespace A137803.P14590206973663187745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A356058 (n + 1)).toNat

end

end A137803.P14590206973663187745

namespace A137803

/-- `A026249(A356058(n+1))` -/
def P14590206973663187745.Spec : Prop :=
  ∀ n, P14590206973663187745.a n = A137803 (n + 1)

end A137803

/-!
# A137804: a(n) = floor(n*(4*sqrt(2)+9)/7).

The programs for A137804, the canonical program `A137804.P4899214672758810` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137804 has offset 1).

The definition of A137804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(4*sqrt(2)+9)/7)` (program `A137804.P4899214672758810`, by `A137804.P4899214672758810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137804.P4899214672758810

`floor((n+1)*(4*sqrt(2)+9)/7)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137804

/-- `floor((n+1)*(4*sqrt(2)+9)/7)` -/
def P4899214672758810.Spec : Prop :=
  ∀ n, P4899214672758810.a n = A137804 (n + 1)

theorem P4899214672758810.correct : P4899214672758810.Spec := by
  intro n
  simp only [A137804, Nat.add_sub_cancel]

end A137804

/-! ## A137804.P2229983783986798926

`A292641(n+1)-(n+1)`
-/

namespace A137804.P2229983783986798926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292641 (n + 1) - (n + 1 : ℤ)

end

end A137804.P2229983783986798926

namespace A137804

/-- `A292641(n+1)-(n+1)` -/
def P2229983783986798926.Spec : Prop :=
  ∀ n, P2229983783986798926.a n = A137804 (n + 1)

end A137804

/-! ## A137804.P7793635455389959159

`∪[A356053(n+1), A356055(n+1)]`
-/

namespace A137804.P7793635455389959159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137804.P7793635455389959159

namespace A137804

/-- `∪[A356053(n+1), A356055(n+1)]` -/
def P7793635455389959159.Spec : Prop :=
  ∀ n, (P7793635455389959159.a n : ℤ) = A137804 (n + 1)

end A137804

/-! ## A137804.P16258552766262313643

`∪[A356139(n+1), A356141(n+1)]`
-/

namespace A137804.P16258552766262313643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137804.P16258552766262313643

namespace A137804

/-- `∪[A356139(n+1), A356141(n+1)]` -/
def P16258552766262313643.Spec : Prop :=
  ∀ n, (P16258552766262313643.a n : ℤ) = A137804 (n + 1)

end A137804

/-! ## A137804.P116401849331825684

`∩[A137803(n+1)+1, comp[A137803(n+1)]]`
-/

namespace A137804.P116401849331825684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A137804.P116401849331825684

namespace A137804

/-- `∩[A137803(n+1)+1, comp[A137803(n+1)]]` -/
def P116401849331825684.Spec : Prop :=
  ∀ n, (P116401849331825684.a n : ℤ) = A137804 (n + 1)

end A137804

/-! ## A137804.P18021367029153269961

`record[A137805(n+1)]`
-/

namespace A137804.P18021367029153269961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137804.P18021367029153269961

namespace A137804

/-- `record[A137805(n+1)]` -/
def P18021367029153269961.Spec : Prop :=
  ∀ n, P18021367029153269961.a n = A137804 (n + 1)

end A137804

/-! ## A137804.P7262729854178943346

`A137805(A137803(n+1))`
-/

namespace A137804.P7262729854178943346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A137803 (n + 1)).toNat

end

end A137804.P7262729854178943346

namespace A137804

/-- `A137805(A137803(n+1))` -/
def P7262729854178943346.Spec : Prop :=
  ∀ n, P7262729854178943346.a n = A137804 (n + 1)

end A137804

/-! ## A137804.P13427622555940459946

`A137805(comp[comp[A190337(2*(n+1))]+n])`
-/

namespace A137804.P13427622555940459946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190337 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A137804.P13427622555940459946

namespace A137804

/-- `A137805(comp[comp[A190337(2*(n+1))]+n])` -/
def P13427622555940459946.Spec : Prop :=
  ∀ n, P13427622555940459946.a n = A137804 (n + 1)

end A137804

/-! ## A137804.P16829663776874399365

`A286323(2*(n+1))-(n+1)`
-/

namespace A137804.P16829663776874399365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286323 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A137804.P16829663776874399365

namespace A137804

/-- `A286323(2*(n+1))-(n+1)` -/
def P16829663776874399365.Spec : Prop :=
  ∀ n, P16829663776874399365.a n = A137804 (n + 1)

end A137804

/-! ## A137804.P8580167386719140025

`A026249(A356057(n+1))`
-/

namespace A137804.P8580167386719140025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A356057 (n + 1)).toNat

end

end A137804.P8580167386719140025

namespace A137804

/-- `A026249(A356057(n+1))` -/
def P8580167386719140025.Spec : Prop :=
  ∀ n, P8580167386719140025.a n = A137804 (n + 1)

end A137804

/-! ## A137804.P519218412690309128

`A026249(A356059(n+1))`
-/

namespace A137804.P519218412690309128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A356059 (n + 1)).toNat

end

end A137804.P519218412690309128

namespace A137804

/-- `A026249(A356059(n+1))` -/
def P519218412690309128.Spec : Prop :=
  ∀ n, P519218412690309128.a n = A137804 (n + 1)

end A137804

/-!
# A137805: Self-inverse integer permutation induced by Beatty sequences for Sqrt(2)+1/2 and (4*Sqrt(2)+9)/7.

The programs for A137805, there is no canonical definition to state claims against.
-/

/-! ## A137805.P2994306908735518538

`A323909(A058343(n)!)+xor(1, n)`
-/

namespace A137805.P2994306908735518538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323909 (Nat.factorial (A058343 n).toNat) + (Nat.xor 1 n : ℤ)

end

end A137805.P2994306908735518538

/-! ## A137805.P429376769109013096

`A001221(A184945(n)!)+xor(1, n)+1`
-/

namespace A137805.P429376769109013096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A184945 n).toNat) + (Nat.xor 1 n + 1 : ℤ)

end

end A137805.P429376769109013096

/-! ## A137805.P9432122358566405574

`A014681(lt[A226275(n), A060495(n)])`
-/

namespace A137805.P9432122358566405574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137805.P9432122358566405574

/-! ## A137805.P16930866285517277096

`A323909(A058343(n)!)+A004442(n)`
-/

namespace A137805.P16930866285517277096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323909 (Nat.factorial (A058343 n).toNat) + A004442 n

end

end A137805.P16930866285517277096

/-! ## A137805.P12990862670349768418

`A111670(A137795(n+1))+A004442(n)`
-/

namespace A137805.P12990862670349768418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111670 (A137795 (n + 1)).toNat + A004442 n

end

end A137805.P12990862670349768418

/-!
# A137806: Euler transform of 1, 5, 9, 13, 17, 21, 25, 29, 33, ... (A016813).

The programs for A137806, there is no canonical definition to state claims against.
-/

/-! ## A137806.P3644580866057213058

`A001462(C(2*n+7, n))+∑{d}[n+1, #]-(n+1)`
-/

namespace A137806.P3644580866057213058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Nat.choose (2 * n + 7) n) + (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A137806.P3644580866057213058

/-! ## A137806.P12113847221223890448

`A026571(n+3)-A124778(A092176(n))`
-/

namespace A137806.P12113847221223890448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026571 (n + 3) - A124778 (A092176 n).toNat

end

end A137806.P12113847221223890448

/-!
# A137807: Final digit of prime(n)^2.

The programs for A137807, the canonical program `A137807.P2315973697329758852` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137807 has offset 1).

The definition of A137807 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137807.P2315973697329758852

`A010879(A001248(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137807

/-- `A010879(A001248(n+1))` -/
def P2315973697329758852.Spec : Prop :=
  ∀ n, P2315973697329758852.a n = A137807 (n + 1)

theorem P2315973697329758852.correct : P2315973697329758852.Spec := by
  intro n
  simp only [A137807, Nat.add_sub_cancel]

end A137807

/-! ## A137807.P2607739211191525961

`A138693(n+1)%10`
-/

namespace A137807.P2607739211191525961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138693 (n + 1)) 10

end

end A137807.P2607739211191525961

namespace A137807

/-- `A138693(n+1)%10` -/
def P2607739211191525961.Spec : Prop :=
  ∀ n, P2607739211191525961.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P2648747169239863332

`A000040(n+1)²%10`
-/

namespace A137807.P2648747169239863332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2) 10

end

end A137807.P2648747169239863332

namespace A137807

/-- `A000040(n+1)²%10` -/
def P2648747169239863332.Spec : Prop :=
  ∀ n, P2648747169239863332.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P18313877238222083380

`A007652(n+1)²%10`
-/

namespace A137807.P18313877238222083380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007652 (n + 1) ^ 2) 10

end

end A137807.P18313877238222083380

namespace A137807

/-- `A007652(n+1)²%10` -/
def P18313877238222083380.Spec : Prop :=
  ∀ n, P18313877238222083380.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P1515391947808680507

`A072003(n+1)²%10`
-/

namespace A137807.P1515391947808680507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072003 (n + 1) ^ 2) 10

end

end A137807.P1515391947808680507

namespace A137807

/-- `A072003(n+1)²%10` -/
def P1515391947808680507.Spec : Prop :=
  ∀ n, P1515391947808680507.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P1808609621012199782

`A080437(n+1)²%10`
-/

namespace A137807.P1808609621012199782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080437 (n + 1) ^ 2) 10

end

end A137807.P1808609621012199782

namespace A137807

/-- `A080437(n+1)²%10` -/
def P1808609621012199782.Spec : Prop :=
  ∀ n, P1808609621012199782.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P13059772689086686428

`(A006093(n+1)+1)²%10`
-/

namespace A137807.P13059772689086686428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A006093 (n + 1) + 1) ^ 2) 10

end

end A137807.P13059772689086686428

namespace A137807

/-- `(A006093(n+1)+1)²%10` -/
def P13059772689086686428.Spec : Prop :=
  ∀ n, P13059772689086686428.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P17831159226010954335

`A008959(A074972(n+1))`
-/

namespace A137807.P17831159226010954335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008959 (A074972 (n + 1)).toNat

end

end A137807.P17831159226010954335

namespace A137807

/-- `A008959(A074972(n+1))` -/
def P17831159226010954335.Spec : Prop :=
  ∀ n, P17831159226010954335.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P10822926641614137971

`A008959(A095959(n+1))`
-/

namespace A137807.P10822926641614137971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008959 (A095959 (n + 1)).toNat

end

end A137807.P10822926641614137971

namespace A137807

/-- `A008959(A095959(n+1))` -/
def P10822926641614137971.Spec : Prop :=
  ∀ n, P10822926641614137971.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P7434054219748971020

`A008959(A110923(n+1))`
-/

namespace A137807.P7434054219748971020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008959 (A110923 (n + 1)).toNat

end

end A137807.P7434054219748971020

namespace A137807

/-- `A008959(A110923(n+1))` -/
def P7434054219748971020.Spec : Prop :=
  ∀ n, P7434054219748971020.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P2734861374312764923

`A008959(A137589(n+1))`
-/

namespace A137807.P2734861374312764923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008959 (A137589 (n + 1)).toNat

end

end A137807.P2734861374312764923

namespace A137807

/-- `A008959(A137589(n+1))` -/
def P2734861374312764923.Spec : Prop :=
  ∀ n, P2734861374312764923.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P13904464449944551234

`A359697(A161625(n+1))`
-/

namespace A137807.P13904464449944551234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359697 (A161625 (n + 1)).toNat

end

end A137807.P13904464449944551234

namespace A137807

/-- `A359697(A161625(n+1))` -/
def P13904464449944551234.Spec : Prop :=
  ∀ n, P13904464449944551234.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P4932918082115970192

`A010879(A095959(n+1)²)`
-/

namespace A137807.P4932918082115970192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A095959 (n + 1) ^ 2).toNat

end

end A137807.P4932918082115970192

namespace A137807

/-- `A010879(A095959(n+1)²)` -/
def P4932918082115970192.Spec : Prop :=
  ∀ n, P4932918082115970192.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P6135754824234093631

`A008960(A110923(n+1)²)`
-/

namespace A137807.P6135754824234093631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A110923 (n + 1) ^ 2).toNat

end

end A137807.P6135754824234093631

namespace A137807

/-- `A008960(A110923(n+1)²)` -/
def P6135754824234093631.Spec : Prop :=
  ∀ n, P6135754824234093631.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P17837370157273356979

`A010879(A110923(n+1)²)`
-/

namespace A137807.P17837370157273356979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A110923 (n + 1) ^ 2).toNat

end

end A137807.P17837370157273356979

namespace A137807

/-- `A010879(A110923(n+1)²)` -/
def P17837370157273356979.Spec : Prop :=
  ∀ n, P17837370157273356979.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P15387473691068518845

`A010879(A137589(n+1)²)`
-/

namespace A137807.P15387473691068518845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A137589 (n + 1) ^ 2).toNat

end

end A137807.P15387473691068518845

namespace A137807

/-- `A010879(A137589(n+1)²)` -/
def P15387473691068518845.Spec : Prop :=
  ∀ n, P15387473691068518845.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P2705079862650356045

`A194642(A137589(n+1)²)`
-/

namespace A137807.P2705079862650356045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194642 (A137589 (n + 1) ^ 2).toNat

end

end A137807.P2705079862650356045

namespace A137807

/-- `A194642(A137589(n+1)²)` -/
def P2705079862650356045.Spec : Prop :=
  ∀ n, P2705079862650356045.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P9426457425552146145

`A001248(n+1)%A040020(n)`
-/

namespace A137807.P9426457425552146145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (A040020 n)

end

end A137807.P9426457425552146145

namespace A137807

/-- `A001248(n+1)%A040020(n)` -/
def P9426457425552146145.Spec : Prop :=
  ∀ n, P9426457425552146145.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P6263057259340570277

`A030516(n+1)%A040020(n)`
-/

namespace A137807.P6263057259340570277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030516 (n + 1)) (A040020 n)

end

end A137807.P6263057259340570277

namespace A137807

/-- `A030516(n+1)%A040020(n)` -/
def P6263057259340570277.Spec : Prop :=
  ∀ n, P6263057259340570277.a n = A137807 (n + 1)

end A137807

/-! ## A137807.P14316057157499854179

`A063482(n+1)%A040020(n)`
-/

namespace A137807.P14316057157499854179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063482 (n + 1)) (A040020 n)

end

end A137807.P14316057157499854179

namespace A137807

/-- `A063482(n+1)%A040020(n)` -/
def P14316057157499854179.Spec : Prop :=
  ∀ n, P14316057157499854179.a n = A137807 (n + 1)

end A137807

/-!
# A137808: a(0) = a(1) = 1. a(n) = a(n-1) + a(n - b(n)), where b(n) is smallest prime dividing n.

The programs for A137808, there is no canonical definition to state claims against.
-/

/-! ## A137808.P14485133914407918747

`A091182(A123029(n+1))+A088887(n)`
-/

namespace A137808.P14485133914407918747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091182 (A123029 (n + 1)).toNat + A088887 n

end

end A137808.P14485133914407918747

/-! ## A137808.P10085761448825280572

`A303639(A179554(n+1))+A057546(n)`
-/

namespace A137808.P10085761448825280572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303639 (A179554 (n + 1)).toNat + A057546 n

end

end A137808.P10085761448825280572

/-!
# A137809: a(0) = a(1) = 1. a(n) = a(n-1) + a(n - b(n)), where b(n) is largest prime dividing n.

The programs for A137809, the canonical program `A137809.P1616324025404386575` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137809 has offset 0).

The definition of A137809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137809.P1616324025404386575

`a(n-1)+a(A076563(n))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A137809

/-- `a(n-1)+a(A076563(n))` -/
def P1616324025404386575.Spec : Prop :=
  ∀ n, (P1616324025404386575.a n : ℤ) = A137809 n

theorem P1616324025404386575.correct : P1616324025404386575.Spec := by
  intro n
  simp only [A137809]

end A137809

/-! ## A137809.P5309147822952469108

`a(n-1)+a(n-A006530(n))` with `a(0)=1, a(1)=1`
-/

namespace A137809.P5309147822952469108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a ((n : ℤ) - A006530 n).toNat

end

end A137809.P5309147822952469108

namespace A137809

/-- `a(n-1)+a(n-A006530(n))` -/
def P5309147822952469108.Spec : Prop :=
  ∀ n, (P5309147822952469108.a n : ℤ) = A137809 n

end A137809

/-! ## A137809.P15446458638884672461

`a(n-A006530(n))+a(A023443(n))` with `a(0)=1, a(1)=1`
-/

namespace A137809.P15446458638884672461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ((n : ℤ) - A006530 n).toNat + a (A023443 n).toNat

end

end A137809.P15446458638884672461

namespace A137809

/-- `a(n-A006530(n))+a(A023443(n))` -/
def P15446458638884672461.Spec : Prop :=
  ∀ n, (P15446458638884672461.a n : ℤ) = A137809 n

end A137809

/-!
# A137810: a(n) = 2^(2^n+n) - 1.

The programs for A137810, the canonical program `A137810.P10625798011929146044` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137810 has offset 0).

The definition of A137810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2^n+n)-1` (program `A137810.P10625798011929146044`, by `A137810.P10625798011929146044.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137810.P10625798011929146044

`2^(2^n+n)-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137810

/-- `2^(2^n+n)-1` -/
def P10625798011929146044.Spec : Prop :=
  ∀ n, P10625798011929146044.a n = A137810 n

theorem P10625798011929146044.correct : P10625798011929146044.Spec := by
  intro n
  simp only [A137810]

end A137810

/-! ## A137810.P9190733673369237505

`or(2^xor(n, 2^n)/2-1, 2^xor(n, 2^n)/2)`
-/

namespace A137810.P9190733673369237505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 ^ Nat.xor n (2 ^ n) : ℚ) / 2 - 1)) (SequenceMachineLib.roundAway ((2 ^ Nat.xor n (2 ^ n) : ℚ) / 2))

end

end A137810.P9190733673369237505

namespace A137810

/-- `or(2^xor(n, 2^n)/2-1, 2^xor(n, 2^n)/2)` -/
def P9190733673369237505.Spec : Prop :=
  ∀ n, P9190733673369237505.a n = A137810 n

end A137810

/-! ## A137810.P4735510884982014307

`xor(2^xor(n, 2^n)/2-1, 2^xor(n, 2^n)/2)`
-/

namespace A137810.P4735510884982014307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 ^ Nat.xor n (2 ^ n) : ℚ) / 2 - 1)) (SequenceMachineLib.roundAway ((2 ^ Nat.xor n (2 ^ n) : ℚ) / 2))

end

end A137810.P4735510884982014307

namespace A137810

/-- `xor(2^xor(n, 2^n)/2-1, 2^xor(n, 2^n)/2)` -/
def P4735510884982014307.Spec : Prop :=
  ∀ n, P4735510884982014307.a n = A137810 n

end A137810

/-! ## A137810.P6261958298283450607

`A003261(2^n)`
-/

namespace A137810.P6261958298283450607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (2 ^ n)

end

end A137810.P6261958298283450607

namespace A137810

/-- `A003261(2^n)` -/
def P6261958298283450607.Spec : Prop :=
  ∀ n, P6261958298283450607.a n = A137810 n

end A137810

/-! ## A137810.P12784289266738971290

`abs(A073113(n)-1)`
-/

namespace A137810.P12784289266738971290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073113 n - 1|

end

end A137810.P12784289266738971290

namespace A137810

/-- `abs(A073113(n)-1)` -/
def P12784289266738971290.Spec : Prop :=
  ∀ n, P12784289266738971290.a n = A137810 n

end A137810

/-!
# A137812: Left- or right-truncatable primes.

The programs for A137812, there is no canonical definition to state claims against.
-/

/-! ## A137812.P1337927164940657570

`record[A004719(A347864(n+1))]`
-/

namespace A137812.P1337927164940657570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A347864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137812.P1337927164940657570

/-! ## A137812.P15823753595859685547

`filter[A347864(n+1), A168046(#)]`
-/

namespace A137812.P15823753595859685547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A137812.P15823753595859685547

/-! ## A137812.P4520122292109450488

`filter[A347864(n+1), A209929(#)]`
-/

namespace A137812.P4520122292109450488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A137812.P4520122292109450488

/-! ## A137812.P4525138427798303022

`∩[A038618(n+1), A347864(n+1)]`
-/

namespace A137812.P4525138427798303022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137812.P4525138427798303022

/-! ## A137812.P8301969194500538656

`∩[A052382(n+1), A347864(n+1)]`
-/

namespace A137812.P8301969194500538656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137812.P8301969194500538656

/-! ## A137812.P4187419172848551755

`∩[A195943(n+1), A347864(n+1)]`
-/

namespace A137812.P4187419172848551755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137812.P4187419172848551755

/-!
# A137813: Minimal number of points needed to make a topology having n open sets.

The programs for A137813, there is no canonical definition to state claims against.
-/

/-! ## A137813.P1146498216837231234

`A003313(n+1)-A014751(A003294(n+1))`
-/

namespace A137813.P1146498216837231234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (n + 1) - A014751 (A003294 (n + 1)).toNat

end

end A137813.P1146498216837231234

/-! ## A137813.P8682989798301423858

`floor((A128998(n+1)+A014701(n+1))/2)`
-/

namespace A137813.P8682989798301423858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128998 (n + 1) + A014701 (n + 1) : ℚ) / 2⌋

end

end A137813.P8682989798301423858

/-! ## A137813.P5373534822094187790

`A004526(A128998(n+1)+A014701(n+1))`
-/

namespace A137813.P5373534822094187790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A128998 (n + 1) + A014701 (n + 1)).toNat

end

end A137813.P5373534822094187790

/-! ## A137813.P9315559055708203999

`A010815(A337386(3*(n+1)))+A003313(n+1)`
-/

namespace A137813.P9315559055708203999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A337386 (3 * (n + 1))).toNat + A003313 (n + 1)

end

end A137813.P9315559055708203999

/-! ## A137813.P12735330169963610535

`A003313(n+1)-A010051(A383026(3*n+1))`
-/

namespace A137813.P12735330169963610535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (n + 1) - A010051 (A383026 (3 * n + 1)).toNat

end

end A137813.P12735330169963610535

/-!
# A137814: Smallest size of a topology that needs at least n points.

The programs for A137814, there is no canonical definition to state claims against.
-/

/-! ## A137814.P6278830040772897555

`or(and(8, n), A003064(n))`
-/

namespace A137814.P6278830040772897555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 8 n : ℤ) (A003064 n)

end

end A137814.P6278830040772897555

/-! ## A137814.P3598888194217129901

`or(A003064(n), A008763(n))`
-/

namespace A137814.P3598888194217129901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003064 n) (A008763 n)

end

end A137814.P3598888194217129901

/-! ## A137814.P4627371877244336889

`or(A003064(n), A011861(n))`
-/

namespace A137814.P4627371877244336889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003064 n) (A011861 n)

end

end A137814.P4627371877244336889

/-! ## A137814.P16761927827343152872

`or(A003064(n), A059058(n))`
-/

namespace A137814.P16761927827343152872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003064 n) (A059058 n)

end

end A137814.P16761927827343152872

/-! ## A137814.P5264080578082642677

`or(A003064(n), A164884(n))`
-/

namespace A137814.P5264080578082642677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003064 n) (A164884 n)

end

end A137814.P5264080578082642677

/-!
# A137815: Year numbers: numbers n such that phi(n) = 2 phi(sigma(n)).

The programs for A137815, there is no canonical definition to state claims against.
-/

/-! ## A137815.P16012783519639591628

`A114637(eq[A353636(3*(n+1)), A353682(n+1)])`
-/

namespace A137815.P16012783519639591628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A137815.P16012783519639591628

/-!
# A137821: Numbers k such that Sum_{j=1..2k} Catalan(j) == 0 (mod 3).

The programs for A137821, the canonical program `A137821.P1223763434249241311` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137821 has offset 1).

The definition of A137821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107755, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137821.P1223763434249241311

`A107755(n+1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A137821

/-- `A107755(n+1)/2` -/
def P1223763434249241311.Spec : Prop :=
  ∀ n, P1223763434249241311.a n = (A137821 (n + 1) : ℚ)

end A137821

/-! ## A137821.P11761947937311106172

`∑[A137822(n+1)]`
-/

namespace A137821.P11761947937311106172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137821.P11761947937311106172

namespace A137821

/-- `∑[A137822(n+1)]` -/
def P11761947937311106172.Spec : Prop :=
  ∀ n, P11761947937311106172.a n = A137821 (n + 1)

end A137821

/-! ## A137821.P7545078692240529457

`∑[Δ[A074938(n)]/2]`
-/

namespace A137821.P7545078692240529457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137821.P7545078692240529457

namespace A137821

/-- `∑[Δ[A074938(n)]/2]` -/
def P7545078692240529457.Spec : Prop :=
  ∀ n, P7545078692240529457.a n = (A137821 (n + 1) : ℚ)

end A137821

/-! ## A137821.P17223030514223542925

`floor(A074938(n+1)/2)`
-/

namespace A137821.P17223030514223542925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074938 (n + 1) : ℚ) / 2⌋

end

end A137821.P17223030514223542925

namespace A137821

/-- `floor(A074938(n+1)/2)` -/
def P17223030514223542925.Spec : Prop :=
  ∀ n, P17223030514223542925.a n = A137821 (n + 1)

end A137821

/-! ## A137821.P17546360384473136022

`floor(A005836(2*n+3)/2)`
-/

namespace A137821.P17546360384473136022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005836 (2 * n + 3) : ℚ) / 2⌋

end

end A137821.P17546360384473136022

namespace A137821

/-- `floor(A005836(2*n+3)/2)` -/
def P17546360384473136022.Spec : Prop :=
  ∀ n, P17546360384473136022.a n = A137821 (n + 1)

end A137821

/-! ## A137821.P4693460748592599734

`floor(A081868(3*n+4)/6)`
-/

namespace A137821.P4693460748592599734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081868 (3 * n + 4) : ℚ) / 6⌋

end

end A137821.P4693460748592599734

namespace A137821

/-- `floor(A081868(3*n+4)/6)` -/
def P4693460748592599734.Spec : Prop :=
  ∀ n, P4693460748592599734.a n = A137821 (n + 1)

end A137821

/-! ## A137821.P15812123262149970448

`lt[n*A300222(2*n+1), n]`
-/

namespace A137821.P15812123262149970448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A300222 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A137821.P15812123262149970448

namespace A137821

/-- `lt[n*A300222(2*n+1), n]` -/
def P15812123262149970448.Spec : Prop :=
  ∀ n, (P15812123262149970448.a n : ℤ) = A137821 (n + 1)

end A137821

/-! ## A137821.P1498749660394949082

`round(A005836(2*(n+2))/2)-1`
-/

namespace A137821.P1498749660394949082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005836 (2 * (n + 2)) : ℚ) / 2) - 1

end

end A137821.P1498749660394949082

namespace A137821

/-- `round(A005836(2*(n+2))/2)-1` -/
def P1498749660394949082.Spec : Prop :=
  ∀ n, P1498749660394949082.a n = A137821 (n + 1)

end A137821

/-! ## A137821.P6249995479101073602

`A137822(root(n, 2)²+1)+a(n-1)` with `a(0)=1`
-/

namespace A137821.P6249995479101073602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137822 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2 + 1)).toNat + a (n - 1)

end

end A137821.P6249995479101073602

namespace A137821

/-- `A137822(root(n, 2)²+1)+a(n-1)` -/
def P6249995479101073602.Spec : Prop :=
  ∀ n, P6249995479101073602.a n = A137821 (n + 1)

end A137821

/-! ## A137821.P9540660399646528146

`ceil(A005836(Δ[(n+1)²]+1)/2)-1`
-/

namespace A137821.P9540660399646528146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005836 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) / 2⌉ - 1

end

end A137821.P9540660399646528146

namespace A137821

/-- `ceil(A005836(Δ[(n+1)²]+1)/2)-1` -/
def P9540660399646528146.Spec : Prop :=
  ∀ n, P9540660399646528146.a n = A137821 (n + 1)

end A137821

/-! ## A137821.P13694578524081884048

`A032766(A005836(n+2))`
-/

namespace A137821.P13694578524081884048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A005836 (n + 2)).toNat

end

end A137821.P13694578524081884048

namespace A137821

/-- `A032766(A005836(n+2))` -/
def P13694578524081884048.Spec : Prop :=
  ∀ n, P13694578524081884048.a n = A137821 (n + 1)

end A137821

/-! ## A137821.P6980923304785947096

`A032766(A003278(n+2)-1)`
-/

namespace A137821.P6980923304785947096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A003278 (n + 2) - 1).toNat

end

end A137821.P6980923304785947096

namespace A137821

/-- `A032766(A003278(n+2)-1)` -/
def P6980923304785947096.Spec : Prop :=
  ∀ n, P6980923304785947096.a n = A137821 (n + 1)

end A137821

/-! ## A137821.P16032659654594780490

`A336146(A005823(n+2)-1)`
-/

namespace A137821.P16032659654594780490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336146 (A005823 (n + 2) - 1).toNat

end

end A137821.P16032659654594780490

namespace A137821

/-- `A336146(A005823(n+2)-1)` -/
def P16032659654594780490.Spec : Prop :=
  ∀ n, P16032659654594780490.a n = A137821 (n + 1)

end A137821

/-! ## A137821.P13253679940026715901

`record[A004488(n+1)-A008619(n)]`
-/

namespace A137821.P13253679940026715901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (n + 1) - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137821.P13253679940026715901

namespace A137821

/-- `record[A004488(n+1)-A008619(n)]` -/
def P13253679940026715901.Spec : Prop :=
  ∀ n, P13253679940026715901.a n = A137821 (n + 1)

end A137821

/-! ## A137821.P11524289391756728769

`(A092436(n+1)+A089118(n+1))/2`
-/

namespace A137821.P11524289391756728769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092436 (n + 1) + A089118 (n + 1) : ℚ) / 2

end

end A137821.P11524289391756728769

namespace A137821

/-- `(A092436(n+1)+A089118(n+1))/2` -/
def P11524289391756728769.Spec : Prop :=
  ∀ n, P11524289391756728769.a n = (A137821 (n + 1) : ℚ)

end A137821

/-! ## A137821.P13101316472001266275

`A007494(A005836(n+2))-A010060(n+1)`
-/

namespace A137821.P13101316472001266275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A005836 (n + 2)).toNat - A010060 (n + 1)

end

end A137821.P13101316472001266275

namespace A137821

/-- `A007494(A005836(n+2))-A010060(n+1)` -/
def P13101316472001266275.Spec : Prop :=
  ∀ n, P13101316472001266275.a n = A137821 (n + 1)

end A137821

/-! ## A137821.P3277139100384506706

`A038572(A107755(n+1))`
-/

namespace A137821.P3277139100384506706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A107755 (n + 1)).toNat

end

end A137821.P3277139100384506706

namespace A137821

/-- `A038572(A107755(n+1))` -/
def P3277139100384506706.Spec : Prop :=
  ∀ n, P3277139100384506706.a n = A137821 (n + 1)

end A137821

/-!
# A137822: First differences of A137821.

The programs for A137822, the canonical program `A137822.P4516574351647527238` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137822 has offset 1).

The definition of A137822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137822.P9818967131150882406

`Δ[A074938(n)/2]`
-/

namespace A137822.P9818967131150882406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074938 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137822.P9818967131150882406

namespace A137822

/-- `Δ[A074938(n)/2]` -/
def P9818967131150882406.Spec : Prop :=
  ∀ n, P9818967131150882406.a n = (A137822 (n + 1) : ℚ)

end A137822

/-! ## A137822.P4516574351647527238

`Δ[floor(A005836(2*n+1)/2)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137822

/-- `Δ[floor(A005836(2*n+1)/2)]` -/
def P4516574351647527238.Spec : Prop :=
  ∀ n, P4516574351647527238.a n = A137822 (n + 1)

theorem P4516574351647527238.correct : P4516574351647527238.Spec := by
  intro n
  simp only [A137822, Nat.add_sub_cancel]

end A137822

/-! ## A137822.P8151539992453040026

`Δ[ceil(A005836(2*(n+1))/2)]`
-/

namespace A137822.P8151539992453040026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005836 (2 * (n + 1)) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137822.P8151539992453040026

namespace A137822

/-- `Δ[ceil(A005836(2*(n+1))/2)]` -/
def P8151539992453040026.Spec : Prop :=
  ∀ n, P8151539992453040026.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P12561170614601315394

`Δ[record[A117966(2*n+1)/2]]`
-/

namespace A137822.P12561170614601315394
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117966 (2 * n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137822.P12561170614601315394

namespace A137822

/-- `Δ[record[A117966(2*n+1)/2]]` -/
def P12561170614601315394.Spec : Prop :=
  ∀ n, P12561170614601315394.a n = (A137822 (n + 1) : ℚ)

end A137822

/-! ## A137822.P309401411550698485

`A004526(Δ[A074938(n)])`
-/

namespace A137822.P309401411550698485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A137822.P309401411550698485

namespace A137822

/-- `A004526(Δ[A074938(n)])` -/
def P309401411550698485.Spec : Prop :=
  ∀ n, P309401411550698485.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P8112961321925525664

`Δ[A032766(A005836(n+1))]`
-/

namespace A137822.P8112961321925525664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A005836 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137822.P8112961321925525664

namespace A137822

/-- `Δ[A032766(A005836(n+1))]` -/
def P8112961321925525664.Spec : Prop :=
  ∀ n, P8112961321925525664.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P16160387324000356585

`Δ[A007494(A005836(n+1)+1)]`
-/

namespace A137822.P16160387324000356585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A005836 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137822.P16160387324000356585

namespace A137822

/-- `Δ[A007494(A005836(n+1)+1)]` -/
def P16160387324000356585.Spec : Prop :=
  ∀ n, P16160387324000356585.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P10229490137416880434

`Δ[A032766(A003278(n+1)+1)]`
-/

namespace A137822.P10229490137416880434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A003278 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137822.P10229490137416880434

namespace A137822

/-- `Δ[A032766(A003278(n+1)+1)]` -/
def P10229490137416880434.Spec : Prop :=
  ∀ n, P10229490137416880434.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P3533059849030378635

`Δ[round(A005836(A005843(n+1))/2)]`
-/

namespace A137822.P3533059849030378635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005836 (A005843 (n + 1)).toNat : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137822.P3533059849030378635

namespace A137822

/-- `Δ[round(A005836(A005843(n+1))/2)]` -/
def P3533059849030378635.Spec : Prop :=
  ∀ n, P3533059849030378635.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P13535597725971610311

`Δ[A005836(A000069(n+1)+1)]/2`
-/

namespace A137822.P13535597725971610311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A000069 (n + 1) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A137822.P13535597725971610311

namespace A137822

/-- `Δ[A005836(A000069(n+1)+1)]/2` -/
def P13535597725971610311.Spec : Prop :=
  ∀ n, P13535597725971610311.a n = (A137822 (n + 1) : ℚ)

end A137822

/-! ## A137822.P8235838277843071800

`Δ[eq[n, A264991(n)]]`
-/

namespace A137822.P8235838277843071800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264991 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137822.P8235838277843071800

namespace A137822

/-- `Δ[eq[n, A264991(n)]]` -/
def P8235838277843071800.Spec : Prop :=
  ∀ n, P8235838277843071800.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P10206482744745663717

`Δ[eq[0, A273515(2*n+1)]]`
-/

namespace A137822.P10206482744745663717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273515 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137822.P10206482744745663717

namespace A137822

/-- `Δ[eq[0, A273515(2*n+1)]]` -/
def P10206482744745663717.Spec : Prop :=
  ∀ n, P10206482744745663717.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P10275231382582519957

`Δ[eq[1, A290092(2*n+1)]]`
-/

namespace A137822.P10275231382582519957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137822.P10275231382582519957

namespace A137822

/-- `Δ[eq[1, A290092(2*n+1)]]` -/
def P10275231382582519957.Spec : Prop :=
  ∀ n, P10275231382582519957.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P8730117137787371719

`Δ[lt[A273515(2*n+1), A186187(n)]]`
-/

namespace A137822.P8730117137787371719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273515 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186187 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137822.P8730117137787371719

namespace A137822

/-- `Δ[lt[A273515(2*n+1), A186187(n)]]` -/
def P8730117137787371719.Spec : Prop :=
  ∀ n, P8730117137787371719.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P12104523218982345116

`Δ[eq[0, A081603(2*n+1)]]`
-/

namespace A137822.P12104523218982345116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137822.P12104523218982345116

namespace A137822

/-- `Δ[eq[0, A081603(2*n+1)]]` -/
def P12104523218982345116.Spec : Prop :=
  ∀ n, P12104523218982345116.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P4145765669904423920

`Δ[eq[1, A039966(2*n+1)]]`
-/

namespace A137822.P4145765669904423920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137822.P4145765669904423920

namespace A137822

/-- `Δ[eq[1, A039966(2*n+1)]]` -/
def P4145765669904423920.Spec : Prop :=
  ∀ n, P4145765669904423920.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P4802511015590225526

`Δ[A057353(A005823(n+1))]`
-/

namespace A137822.P4802511015590225526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A005823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137822.P4802511015590225526

namespace A137822

/-- `Δ[A057353(A005823(n+1))]` -/
def P4802511015590225526.Spec : Prop :=
  ∀ n, P4802511015590225526.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P7728454781880611258

`Δ[A174257(A191107(n+1))]`
-/

namespace A137822.P7728454781880611258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (A191107 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137822.P7728454781880611258

namespace A137822

/-- `Δ[A174257(A191107(n+1))]` -/
def P7728454781880611258.Spec : Prop :=
  ∀ n, P7728454781880611258.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P15328986847913771884

`Δ[A008619(A005836(Δ[n²]))]`
-/

namespace A137822.P15328986847913771884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005836 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137822.P15328986847913771884

namespace A137822

/-- `Δ[A008619(A005836(Δ[n²]))]` -/
def P15328986847913771884.Spec : Prop :=
  ∀ n, P15328986847913771884.a n = A137822 (n + 1)

end A137822

/-! ## A137822.P16754974937671996164

`Δ[A008619(A003278(2*(n+1)))]`
-/

namespace A137822.P16754974937671996164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003278 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137822.P16754974937671996164

namespace A137822

/-- `Δ[A008619(A003278(2*(n+1)))]` -/
def P16754974937671996164.Spec : Prop :=
  ∀ n, P16754974937671996164.a n = A137822 (n + 1)

end A137822

/-!
# A137823: Numbers occurring in A137822 : first differences of numbers n such that 3 | sum( Catalan(k), k=1..2n).

The programs for A137823, there is no canonical definition to state claims against.
-/

/-! ## A137823.P8077646973049633963

`∑[A140313(Δ[n²])]+1`
-/

namespace A137823.P8077646973049633963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A137823.P8077646973049633963

/-! ## A137823.P13509967445243397476

`∑[A140313(record[xor(1, n+1)])]`
-/

namespace A137823.P13509967445243397476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137823.P13509967445243397476

/-! ## A137823.P13479803249710024309

`∑[A140313(ceil(n/sin(8))+n)]`
-/

namespace A137823.P13479803249710024309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (⌈(n : ℝ) / Real.sin (8 : ℝ)⌉ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137823.P13479803249710024309

/-! ## A137823.P15137815302804777053

`∑[A140313(abs(1-2*n)+2)]`
-/

namespace A137823.P15137815302804777053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (|1 - (2 * n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137823.P15137815302804777053

/-! ## A137823.P8635550410352088843

`∪[A081251(n+1), A015518(n)]+1`
-/

namespace A137823.P8635550410352088843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A137823.P8635550410352088843

/-!
# A137824: Index at which A137823(n) occurs first in A137822 (gaps in numbers m such that 3 | sum( Catalan(k), k=1..2m)).

The programs for A137824, the canonical program `A137824.P15362801502661901337` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137824 has offset 1).

The definition of A137824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137824.P15362801502661901337

`4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137824

/-- `4*a(n-3)` -/
def P15362801502661901337.Spec : Prop :=
  ∀ n, (P15362801502661901337.a n : ℤ) = A137824 (n + 1)

theorem P15362801502661901337.correct : P15362801502661901337.Spec := by
  intro n
  simp only [A137824, Nat.add_sub_cancel]

end A137824

/-! ## A137824.P454605190416634475

`a(n-3)/tan(acot(4))` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A137824.P454605190416634475
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  a (n - 3) / Real.tan (SequenceMachineLib.acot (4 : ℝ))

end

end A137824.P454605190416634475

namespace A137824

/-- `a(n-3)/tan(acot(4))` -/
def P454605190416634475.Spec : Prop :=
  ∀ n, P454605190416634475.a n = (A137824 (n + 1) : ℝ)

end A137824

/-! ## A137824.P18145809792384820180

`a(n-3)/(1/2)²` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A137824.P18145809792384820180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  a (n - 3) / ((1 : ℚ) / 2) ^ 2

end

end A137824.P18145809792384820180

namespace A137824

/-- `a(n-3)/(1/2)²` -/
def P18145809792384820180.Spec : Prop :=
  ∀ n, P18145809792384820180.a n = (A137824 (n + 1) : ℚ)

end A137824

/-! ## A137824.P14760086957772812831

`abs(Δ[A117902(n+1)])`
-/

namespace A137824.P14760086957772812831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A137824.P14760086957772812831

namespace A137824

/-- `abs(Δ[A117902(n+1)])` -/
def P14760086957772812831.Spec : Prop :=
  ∀ n, P14760086957772812831.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P524352503771281051

`A133464(A064429(n))`
-/

namespace A137824.P524352503771281051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133464 (A064429 n).toNat

end

end A137824.P524352503771281051

namespace A137824

/-- `A133464(A064429(n))` -/
def P524352503771281051.Spec : Prop :=
  ∀ n, P524352503771281051.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P12835431882281010864

`lcm(A130784(n), A291778(n))`
-/

namespace A137824.P12835431882281010864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130784 n) (A291778 n)

end

end A137824.P12835431882281010864

namespace A137824

/-- `lcm(A130784(n), A291778(n))` -/
def P12835431882281010864.Spec : Prop :=
  ∀ n, (P12835431882281010864.a n : ℤ) = A137824 (n + 1)

end A137824

/-! ## A137824.P11062930700461473188

`(2-A049347(n))*A173862(n+1)²`
-/

namespace A137824.P11062930700461473188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A049347 n) * A173862 (n + 1) ^ 2

end

end A137824.P11062930700461473188

namespace A137824

/-- `(2-A049347(n))*A173862(n+1)²` -/
def P11062930700461473188.Spec : Prop :=
  ∀ n, P11062930700461473188.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P10854096269723029502

`A168090(2*n)+A168090(2*n+1)/2`
-/

namespace A137824.P10854096269723029502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168090 (2 * n) : ℚ) + (A168090 (2 * n + 1) : ℚ) / 2

end

end A137824.P10854096269723029502

namespace A137824

/-- `A168090(2*n)+A168090(2*n+1)/2` -/
def P10854096269723029502.Spec : Prop :=
  ∀ n, P10854096269723029502.a n = (A137824 (n + 1) : ℚ)

end A137824

/-! ## A137824.P4172284908755728142

`or(A173862(2*n+1), A173862(2*(n+1)))`
-/

namespace A137824.P4172284908755728142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A173862 (2 * n + 1)) (A173862 (2 * (n + 1)))

end

end A137824.P4172284908755728142

namespace A137824

/-- `or(A173862(2*n+1), A173862(2*(n+1)))` -/
def P4172284908755728142.Spec : Prop :=
  ∀ n, P4172284908755728142.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P6346919184067440830

`ogf((1+3x+2x^2)/(1-4x^3))`
-/

namespace A137824.P6346919184067440830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, 0, 0, -4] n

end

end A137824.P6346919184067440830

namespace A137824

/-- `ogf((1+3x+2x^2)/(1-4x^3))` -/
def P6346919184067440830.Spec : Prop :=
  ∀ n, P6346919184067440830.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P7847528993628434331

`lcm(5, a(n-3))-a(n-3)` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A137824.P7847528993628434331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  (Int.lcm 5 (a (n - 3)) : ℤ) - a (n - 3)

end

end A137824.P7847528993628434331

namespace A137824

/-- `lcm(5, a(n-3))-a(n-3)` -/
def P7847528993628434331.Spec : Prop :=
  ∀ n, P7847528993628434331.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P2823538065761836114

`A164073(comp[4*n])`
-/

namespace A137824.P2823538065761836114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A137824.P2823538065761836114

namespace A137824

/-- `A164073(comp[4*n])` -/
def P2823538065761836114.Spec : Prop :=
  ∀ n, P2823538065761836114.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P5434992203838437612

`A074323(A042968(n+1))`
-/

namespace A137824.P5434992203838437612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A042968 (n + 1)).toNat

end

end A137824.P5434992203838437612

namespace A137824

/-- `A074323(A042968(n+1))` -/
def P5434992203838437612.Spec : Prop :=
  ∀ n, P5434992203838437612.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P9305921972435697738

`A074323(A004396(2*n+1))`
-/

namespace A137824.P9305921972435697738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A004396 (2 * n + 1)).toNat

end

end A137824.P9305921972435697738

namespace A137824

/-- `A074323(A004396(2*n+1))` -/
def P9305921972435697738.Spec : Prop :=
  ∀ n, P9305921972435697738.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P5197696840895448720

`A291778(n+2)-A291778(n)`
-/

namespace A137824.P5197696840895448720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291778 (n + 2) - A291778 n

end

end A137824.P5197696840895448720

namespace A137824

/-- `A291778(n+2)-A291778(n)` -/
def P5197696840895448720.Spec : Prop :=
  ∀ n, P5197696840895448720.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P1549841867567273484

`A074323(A004396(n+1)+A004396(n))`
-/

namespace A137824.P1549841867567273484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A004396 (n + 1) + A004396 n).toNat

end

end A137824.P1549841867567273484

namespace A137824

/-- `A074323(A004396(n+1)+A004396(n))` -/
def P1549841867567273484.Spec : Prop :=
  ∀ n, P1549841867567273484.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P10136281162945525839

`Δ[A291778(n+1)+A291778(n)]`
-/

namespace A137824.P10136281162945525839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291778 (n + 1) + A291778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137824.P10136281162945525839

namespace A137824

/-- `Δ[A291778(n+1)+A291778(n)]` -/
def P10136281162945525839.Spec : Prop :=
  ∀ n, P10136281162945525839.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P14742501797727293577

`Δ[A173862(2*(n+1))+A173862(n+2)²]`
-/

namespace A137824.P14742501797727293577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (2 * (n + 1)) + A173862 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137824.P14742501797727293577

namespace A137824

/-- `Δ[A173862(2*(n+1))+A173862(n+2)²]` -/
def P14742501797727293577.Spec : Prop :=
  ∀ n, P14742501797727293577.a n = A137824 (n + 1)

end A137824

/-! ## A137824.P10600303098727464115

`(A060547(2*(n+1))-A078030(2*n+1))/2`
-/

namespace A137824.P10600303098727464115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060547 (2 * (n + 1)) - A078030 (2 * n + 1) : ℚ) / 2

end

end A137824.P10600303098727464115

namespace A137824

/-- `(A060547(2*(n+1))-A078030(2*n+1))/2` -/
def P10600303098727464115.Spec : Prop :=
  ∀ n, P10600303098727464115.a n = (A137824 (n + 1) : ℚ)

end A137824

/-!
# A137825: Least number having the highest abundancy among numbers with exactly n prime factors (counted with multiplicity).

The programs for A137825, there is no canonical definition to state claims against.
-/

/-! ## A137825.P914205923557965720

`a(n-1)*A137826(n)` with `a(0)=1`
-/

namespace A137825.P914205923557965720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A137826 n

end

end A137825.P914205923557965720

/-! ## A137825.P3176829639015215576

`A119312(A018175(n))`
-/

namespace A137825.P3176829639015215576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119312 (A018175 n).toNat

end

end A137825.P3176829639015215576

/-! ## A137825.P18397261828146615831

`A119312(A114347(n))`
-/

namespace A137825.P18397261828146615831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119312 (A114347 n).toNat

end

end A137825.P18397261828146615831

/-!
# A137826: a(n) is the least prime number that maximizes the abundancy of the product of the first n terms.

The programs for A137826, there is no canonical definition to state claims against.
-/

/-! ## A137826.P8027575423652957524

`p?[A007947(A085790(n+1))]`
-/

namespace A137826.P8027575423652957524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A085790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137826.P8027575423652957524

/-! ## A137826.P15977768863182687870

`A052410(p?[A052410(A085790(n+1))])`
-/

namespace A137826.P15977768863182687870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A085790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137826.P15977768863182687870

/-! ## A137826.P1195419660040665806

`p?[A014963(A085790(n+2))]`
-/

namespace A137826.P1195419660040665806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A085790 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137826.P1195419660040665806

/-! ## A137826.P15031679291357819437

`p?[∏{p}[A152454(n+2), #]]`
-/

namespace A137826.P15031679291357819437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152454 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137826.P15031679291357819437

/-! ## A137826.P3059330943900548230

`p?[A007947(A152454(n+2))]`
-/

namespace A137826.P3059330943900548230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A152454 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137826.P3059330943900548230

/-! ## A137826.P754069767629069776

`ratio[A137825(n)]`
-/

namespace A137826.P754069767629069776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137825 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A137826.P754069767629069776

/-! ## A137826.P5824588214455145849

`A137825(n+1)/A137825(n)`
-/

namespace A137826.P5824588214455145849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137825 (n + 1) : ℚ) / (A137825 n : ℚ)

end

end A137826.P5824588214455145849

/-!
# A137827: Prime powers (A246655) congruent to 1 (mod 3).

The programs for A137827, there is no canonical definition to state claims against.
-/

/-! ## A137827.P11135709294424103244

`A354984(n+1)/3`
-/

namespace A137827.P11135709294424103244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354984 (n + 1) : ℚ) / 3

end

end A137827.P11135709294424103244

/-! ## A137827.P17416595330555251731

`record[A008475(3*n+4)]`
-/

namespace A137827.P17416595330555251731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137827.P17416595330555251731

/-! ## A137827.P2334438413938430152

`record[(3*n+4)/A001221(3*n+4)]`
-/

namespace A137827.P2334438413938430152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 4 : ℚ) / (A001221 (3 * n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137827.P2334438413938430152

/-! ## A137827.P14086615836964248724

`filter[A000961(n+1), A354982(#)]`
-/

namespace A137827.P14086615836964248724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P14086615836964248724

/-! ## A137827.P7717904270344255263

`filter[A059046(n+1), A354982(#)]`
-/

namespace A137827.P7717904270344255263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P7717904270344255263

/-! ## A137827.P18084442213362311387

`filter[A072303(n+1), A354982(#)]`
-/

namespace A137827.P18084442213362311387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P18084442213362311387

/-! ## A137827.P14169578267477575490

`filter[A081061(n+1), A354982(#)]`
-/

namespace A137827.P14169578267477575490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P14169578267477575490

/-! ## A137827.P8591017806689450392

`filter[A087441(n+1), A354982(#)]`
-/

namespace A137827.P8591017806689450392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P8591017806689450392

/-! ## A137827.P17041437437187640056

`filter[A133810(n+1), A354982(#)]`
-/

namespace A137827.P17041437437187640056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P17041437437187640056

/-! ## A137827.P16037379442993892393

`filter[A133811(n+1), A354982(#)]`
-/

namespace A137827.P16037379442993892393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P16037379442993892393

/-! ## A137827.P10459300600898918318

`filter[A133813(n+1), A354982(#)]`
-/

namespace A137827.P10459300600898918318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P10459300600898918318

/-! ## A137827.P8793635084292037300

`filter[A141807(n+1), A354982(#)]`
-/

namespace A137827.P8793635084292037300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P8793635084292037300

/-! ## A137827.P14722533822357704670

`filter[A225657(n+1), A354982(#)]`
-/

namespace A137827.P14722533822357704670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P14722533822357704670

/-! ## A137827.P7749516800593636921

`filter[A246655(n+1), A354982(#)]`
-/

namespace A137827.P7749516800593636921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P7749516800593636921

/-! ## A137827.P6764279348802177073

`filter[A274222(n+1), A354982(#)]`
-/

namespace A137827.P6764279348802177073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P6764279348802177073

/-! ## A137827.P13462344463282153144

`filter[A385030(n+1), A354982(#)]`
-/

namespace A137827.P13462344463282153144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P13462344463282153144

/-! ## A137827.P12055974007944507198

`record[A020639(3*n+4)^A001222(3*n+4)]`
-/

namespace A137827.P12055974007944507198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (3 * n + 4) : ℚ) ^ (A001222 (3 * n + 4) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137827.P12055974007944507198

/-! ## A137827.P5837740886356329812

`filter[A133812(n+1), A354982(#)]`
-/

namespace A137827.P5837740886356329812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P5837740886356329812

/-! ## A137827.P16710957939311612314

`filter[A242417(n+1), A354982(#)]`
-/

namespace A137827.P16710957939311612314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P16710957939311612314

/-! ## A137827.P12206443838483776323

`filter[A071139(n+1), A354982(#)]`
-/

namespace A137827.P12206443838483776323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A137827.P12206443838483776323

/-!
# A137828: Expansion of phi(x) / f(-x^4)^2 in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A137828, there is no canonical definition to state claims against.
-/

/-! ## A137828.P9697183882996395799

`abs(A137830(n))`
-/

namespace A137828.P9697183882996395799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137830 n|

end

end A137828.P9697183882996395799

/-! ## A137828.P1347331024871549350

`A033999(n)*A137830(n)`
-/

namespace A137828.P1347331024871549350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A137830 n

end

end A137828.P1347331024871549350

/-! ## A137828.P1141309724627956215

`A087960(n)*A137830(n)`
-/

namespace A137828.P1141309724627956215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A137830 n

end

end A137828.P1141309724627956215

/-! ## A137828.P18210894400066327591

`A094267(n)*A137830(n)`
-/

namespace A137828.P18210894400066327591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A137830 n

end

end A137828.P18210894400066327591

/-! ## A137828.P16399050081945894334

`A137830(n)*A219977(n)`
-/

namespace A137828.P16399050081945894334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137830 n * A219977 n

end

end A137828.P16399050081945894334

/-! ## A137828.P4228034810835136884

`gcd(A000038(n), A137830(n))`
-/

namespace A137828.P4228034810835136884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A137830 n)

end

end A137828.P4228034810835136884

/-! ## A137828.P988126464744493147

`lcm(A000034(n), A137830(n))`
-/

namespace A137828.P988126464744493147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A137830 n)

end

end A137828.P988126464744493147

/-! ## A137828.P2763489413090728355

`A071935(n+1)*A137830(n)`
-/

namespace A137828.P2763489413090728355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A137830 n

end

end A137828.P2763489413090728355

/-! ## A137828.P13717007304380558254

`A137830(n)*A309873(n+1)`
-/

namespace A137828.P13717007304380558254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137830 n * A309873 (n + 1)

end

end A137828.P13717007304380558254

/-!
# A137829: Expansion of psi(q^2) / f(-q)^2 in powers of q where psi(), f() are Ramanujan theta functions.

The programs for A137829, there is no canonical definition to state claims against.
-/

/-! ## A137829.P9222361292939741705

`A201078(n)/2`
-/

namespace A137829.P9222361292939741705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201078 n : ℚ) / 2

end

end A137829.P9222361292939741705

/-! ## A137829.P6760259204497193508

`A137828(4*n+1)/2`
-/

namespace A137829.P6760259204497193508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137828 (4 * n + 1) : ℚ) / 2

end

end A137829.P6760259204497193508

/-! ## A137829.P10386261612176229488

`record[-A137830(n+1)]/2`
-/

namespace A137829.P10386261612176229488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137830 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A137829.P10386261612176229488

/-! ## A137829.P5782988503156249691

`record[A137828(n+1+n)/2]`
-/

namespace A137829.P5782988503156249691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137828 (n + 1 + n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137829.P5782988503156249691

/-! ## A137829.P8918475943818979829

`record[abs(A137830(2*n+1)/2)]`
-/

namespace A137829.P8918475943818979829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A137830 (2 * n + 1) : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137829.P8918475943818979829

/-!
# A137830: Expansion of phi(-x) / f(-x^4)^2 in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A137830, there is no canonical definition to state claims against.
-/

/-! ## A137830.P5838867862307205760

`(-1)^n*A137828(n)`
-/

namespace A137830.P5838867862307205760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A137828 n

end

end A137830.P5838867862307205760

/-! ## A137830.P6996252217902604826

`A137828(n)*A219977(n)`
-/

namespace A137830.P6996252217902604826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137828 n * A219977 n

end

end A137830.P6996252217902604826

/-! ## A137830.P11860393074286228098

`A137828(n)*A309873(n+1)`
-/

namespace A137830.P11860393074286228098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137828 n * A309873 (n + 1)

end

end A137830.P11860393074286228098

/-! ## A137830.P5121199439660146015

`A137828(n)/Δ[A000194(val(n+1, 2))]`
-/

namespace A137830.P5121199439660146015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137828 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A137830.P5121199439660146015

/-! ## A137830.P10532618431397930576

`A137828(n)/Δ[A007814(n+1)]`
-/

namespace A137830.P10532618431397930576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137828 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A137830.P10532618431397930576

/-!
# A137831: a(n) = (prime(n)^2 minus its last digit)/20.

The programs for A137831, the canonical program `A137831.P7284090837143405087` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137831 has offset 1).

The definition of A137831 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A137807, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137831.P7284090837143405087

`(A001248(n+1)-A137807(n+1))/20`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137831

/-- `(A001248(n+1)-A137807(n+1))/20` -/
def P7284090837143405087.Spec : Prop :=
  ∀ n, P7284090837143405087.a n = (A137831 (n + 1) : ℚ)

end A137831

/-! ## A137831.P151884882512510603

`round(A153480(n)/40)`
-/

namespace A137831.P151884882512510603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153480 n : ℚ) / 40)

end

end A137831.P151884882512510603

namespace A137831

/-- `round(A153480(n)/40)` -/
def P151884882512510603.Spec : Prop :=
  ∀ n, P151884882512510603.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P17514274581610375095

`floor(A110494(n+1)/10)`
-/

namespace A137831.P17514274581610375095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110494 (n + 1) : ℚ) / 10⌋

end

end A137831.P17514274581610375095

namespace A137831

/-- `floor(A110494(n+1)/10)` -/
def P17514274581610375095.Spec : Prop :=
  ∀ n, P17514274581610375095.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P7143182594917736584

`floor(A001248(n+1)/20)`
-/

namespace A137831.P7143182594917736584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001248 (n + 1) : ℚ) / 20⌋

end

end A137831.P7143182594917736584

namespace A137831

/-- `floor(A001248(n+1)/20)` -/
def P7143182594917736584.Spec : Prop :=
  ∀ n, P7143182594917736584.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P13475817622184483183

`floor(A000040(n+1)²/20)`
-/

namespace A137831.P13475817622184483183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) ^ 2 : ℚ) / 20⌋

end

end A137831.P13475817622184483183

namespace A137831

/-- `floor(A000040(n+1)²/20)` -/
def P13475817622184483183.Spec : Prop :=
  ∀ n, P13475817622184483183.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P5026323548132125959

`floor(A138451(n+1)/A138419(n+1))`
-/

namespace A137831.P5026323548132125959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138451 (n + 1) : ℚ) / (A138419 (n + 1) : ℚ)⌋

end

end A137831.P5026323548132125959

namespace A137831

/-- `floor(A138451(n+1)/A138419(n+1))` -/
def P5026323548132125959.Spec : Prop :=
  ∀ n, P5026323548132125959.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P4086057679822158548

`floor(p?[xor(1, n)]²/20)`
-/

namespace A137831.P4086057679822158548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℚ) / 20⌋

end

end A137831.P4086057679822158548

namespace A137831

/-- `floor(p?[xor(1, n)]²/20)` -/
def P4086057679822158548.Spec : Prop :=
  ∀ n, P4086057679822158548.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P10028902326431260926

`round(p?[xor(1, n)]²/20)`
-/

namespace A137831.P10028902326431260926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℚ) / 20)

end

end A137831.P10028902326431260926

namespace A137831

/-- `round(p?[xor(1, n)]²/20)` -/
def P10028902326431260926.Spec : Prop :=
  ∀ n, P10028902326431260926.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P13221613066150025417

`floor(record[A006530(n+2)²]/20)`
-/

namespace A137831.P13221613066150025417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 20⌋

end

end A137831.P13221613066150025417

namespace A137831

/-- `floor(record[A006530(n+2)²]/20)` -/
def P13221613066150025417.Spec : Prop :=
  ∀ n, P13221613066150025417.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P5194841111744456411

`floor(record[A020639(n+2)²]/20)`
-/

namespace A137831.P5194841111744456411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 20⌋

end

end A137831.P5194841111744456411

namespace A137831

/-- `floor(record[A020639(n+2)²]/20)` -/
def P5194841111744456411.Spec : Prop :=
  ∀ n, P5194841111744456411.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P8599173831069908610

`A011858(A111333(n+1))`
-/

namespace A137831.P8599173831069908610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (A111333 (n + 1)).toNat

end

end A137831.P8599173831069908610

namespace A137831

/-- `A011858(A111333(n+1))` -/
def P8599173831069908610.Spec : Prop :=
  ∀ n, P8599173831069908610.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P2570133138284044082

`A011858(A130291(n+1))`
-/

namespace A137831.P2570133138284044082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (A130291 (n + 1)).toNat

end

end A137831.P2570133138284044082

namespace A137831

/-- `A011858(A130291(n+1))` -/
def P2570133138284044082.Spec : Prop :=
  ∀ n, P2570133138284044082.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P17678527263924600100

`floor(record[A039649(n+1)²]/20)`
-/

namespace A137831.P17678527263924600100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 20⌋

end

end A137831.P17678527263924600100

namespace A137831

/-- `floor(record[A039649(n+1)²]/20)` -/
def P17678527263924600100.Spec : Prop :=
  ∀ n, P17678527263924600100.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P16814291198713864700

`round((record[A014963(n+2)²]/10-1)/2)`
-/

namespace A137831.P16814291198713864700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 10 - 1) / 2)

end

end A137831.P16814291198713864700

namespace A137831

/-- `round((record[A014963(n+2)²]/10-1)/2)` -/
def P16814291198713864700.Spec : Prop :=
  ∀ n, P16814291198713864700.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P2034537251478145701

`A056865(A000040(n+1))/2`
-/

namespace A137831.P2034537251478145701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056865 (A000040 (n + 1)).toNat : ℚ) / 2

end

end A137831.P2034537251478145701

namespace A137831

/-- `A056865(A000040(n+1))/2` -/
def P2034537251478145701.Spec : Prop :=
  ∀ n, P2034537251478145701.a n = (A137831 (n + 1) : ℚ)

end A137831

/-! ## A137831.P10244398344657211064

`A025802(A131426(n+1))`
-/

namespace A137831.P10244398344657211064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 (A131426 (n + 1)).toNat

end

end A137831.P10244398344657211064

namespace A137831

/-- `A025802(A131426(n+1))` -/
def P10244398344657211064.Spec : Prop :=
  ∀ n, P10244398344657211064.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P4100031821313359717

`A025835(A176003(n+2))`
-/

namespace A137831.P4100031821313359717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 (A176003 (n + 2)).toNat

end

end A137831.P4100031821313359717

namespace A137831

/-- `A025835(A176003(n+2))` -/
def P4100031821313359717.Spec : Prop :=
  ∀ n, P4100031821313359717.a n = A137831 (n + 1)

end A137831

/-! ## A137831.P13276472477736985972

`A025857(A330410(n+1))`
-/

namespace A137831.P13276472477736985972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 (A330410 (n + 1)).toNat

end

end A137831.P13276472477736985972

namespace A137831

/-- `A025857(A330410(n+1))` -/
def P13276472477736985972.Spec : Prop :=
  ∀ n, P13276472477736985972.a n = A137831 (n + 1)

end A137831

/-!
# A137833: Emirps with a prime number of only prime digits.

The programs for A137833, there is no canonical definition to state claims against.
-/

/-! ## A137833.P9533758969236027056

`∩[A124888(n+1), A128388(n+1)]`
-/

namespace A137833.P9533758969236027056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137833.P9533758969236027056

/-! ## A137833.P6335711406902676312

`∪[A137834(n+1), A137835(n+1)]`
-/

namespace A137833.P6335711406902676312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137833.P6335711406902676312

/-!
# A137834: Lesser of emirps (pairs) with a prime number of only prime digits.

The programs for A137834, there is no canonical definition to state claims against.
-/

/-! ## A137834.P7865284935386270217

`∩[A124888(n+1), A133554(n+1)]`
-/

namespace A137834.P7865284935386270217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137834.P7865284935386270217

/-! ## A137834.P15876157891604609644

`∩[A133554(n+1), A137833(n+1)]`
-/

namespace A137834.P15876157891604609644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137834.P15876157891604609644

/-!
# A137835: Larger of emirps (pairs) with a prime number of only prime digits.

The programs for A137835, there is no canonical definition to state claims against.
-/

/-! ## A137835.P11662808166046400060

`∩[A124888(n+1), A133753(n+1)]`
-/

namespace A137835.P11662808166046400060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137835.P11662808166046400060

/-! ## A137835.P2169119508097304773

`∩[A133753(n+1), A137833(n+1)]`
-/

namespace A137835.P2169119508097304773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137835.P2169119508097304773

/-!
# A137836: Emirps using only and all of the prime digits 2,3,5,7.

The programs for A137836, there is no canonical definition to state claims against.
-/

/-! ## A137836.P16122848081558718780

`∩[A108419(n+1), A160748(n+1)]`
-/

namespace A137836.P16122848081558718780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137836.P16122848081558718780

/-!
# A137837: Emirps made up of a prime number of only prime digits including all of 2,3,5,7.

The programs for A137837, there is no canonical definition to state claims against.
-/

/-! ## A137837.P14935200254476686610

`∩[A108419(n+1), A137833(n+1)]`
-/

namespace A137837.P14935200254476686610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137837.P14935200254476686610

/-! ## A137837.P18375891862842634705

`∩[A137833(n+1), A137836(n+1)]`
-/

namespace A137837.P18375891862842634705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137837.P18375891862842634705

/-! ## A137837.P7058975332117499526

`∩[A128388(n+1), A153770(n+1)]`
-/

namespace A137837.P7058975332117499526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137837.P7058975332117499526

/-! ## A137837.P16596345071927738554

`∩[A137833(n+1), A153770(n+1)]`
-/

namespace A137837.P16596345071927738554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137837.P16596345071927738554

/-! ## A137837.P668704162681094902

`A006530(A137836(n+5))`
-/

namespace A137837.P668704162681094902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A137836 (n + 5)).toNat

end

end A137837.P668704162681094902

/-!
# A137842: Number of paths from (0,0) if n is even, or from (2,1) if n is odd, to (3n,0) that stay in first quadrant (but may touch horizontal axis) and where each step is (2,1), (1,2) or (1,-1).

The programs for A137842, there is no canonical definition to state claims against.
-/

/-! ## A137842.P1605521868964614452

`A084078((n-1)%(n+1))`
-/

namespace A137842.P1605521868964614452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A137842.P1605521868964614452

/-! ## A137842.P1205112589544829589

`A084078(A289207(n+1))`
-/

namespace A137842.P1205112589544829589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 (A289207 (n + 1)).toNat

end

end A137842.P1205112589544829589

/-! ## A137842.P2114816936207299452

`A084078(A004273(n)-n)`
-/

namespace A137842.P2114816936207299452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 (A004273 n - (n : ℤ)).toNat

end

end A137842.P2114816936207299452

/-! ## A137842.P12511815689545693624

`A084078(A289207(2*n)/2)`
-/

namespace A137842.P12511815689545693624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A137842.P12511815689545693624

/-! ## A137842.P3311453754096233853

`A084078(n-A160552(n)%2)`
-/

namespace A137842.P3311453754096233853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 ((n : ℤ) - Int.tmod (A160552 n) 2).toNat

end

end A137842.P3311453754096233853

/-! ## A137842.P7502924681784740928

`A121703(n+1)/A036453(n+1)`
-/

namespace A137842.P7502924681784740928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121703 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A137842.P7502924681784740928

/-!
# A137843: Define S(1) = {1}, S(n+1) = S(n) U S(n) if a(n) is even, S(n+1) = S(n) U (n+1) U S(n) if a(n) is odd. Sequence {a(n), n >= 1} is limit as n approaches infinity of S(n). (U represents concatenation.).

The programs for A137843, there is no canonical definition to state claims against.
-/

/-! ## A137843.P13357682627047862848

`A001511(comp[n*4^gcd(4, n)]*A094389(n+1))`
-/

namespace A137843.P13357682627047862848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ Nat.gcd 4 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A094389 (n + 1)).toNat

end

end A137843.P13357682627047862848

/-! ## A137843.P10358394762595645332

`A302778(p?[A223490(A052330(n))])`
-/

namespace A137843.P10358394762595645332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (A052330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302778 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137843.P10358394762595645332

/-! ## A137843.P8679946505792123494

`A302785(p?[A223490(A052330(n))])`
-/

namespace A137843.P8679946505792123494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (A052330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302785 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137843.P8679946505792123494

/-! ## A137843.P14646777305918526464

`A302786(p?[A223490(A052330(n))])`
-/

namespace A137843.P14646777305918526464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (A052330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302786 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137843.P14646777305918526464

/-! ## A137843.P589841100148368948

`val(A213257(n+1), 2)+1`
-/

namespace A137843.P589841100148368948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A213257 (n + 1)).toNat 2 + 1

end

end A137843.P589841100148368948

/-! ## A137843.P8035141355881176392

`A001511(A213257(n+1))`
-/

namespace A137843.P8035141355881176392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A213257 (n + 1)).toNat

end

end A137843.P8035141355881176392

/-!
# A137844: Define S(1) = {1}, S(n+1) = S(n) U S(n) if a(n) is even, S(n+1) = S(n) U n U S(n) if a(n) is odd. Sequence {a(n), n >= 1} is limit as n approaches infinity of S(n). (U represents concatenation.).

The programs for A137844, there is no canonical definition to state claims against.
-/

/-! ## A137844.P3702566559449175456

`filter[A204988(n+1), A089939(#)]`
-/

namespace A137844.P3702566559449175456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089939 (f1 j).toNat = 1) n)

end

end A137844.P3702566559449175456

/-! ## A137844.P5314963343449309288

`floor(p?[A001511(A133265(n)²)]/2)`
-/

namespace A137844.P5314963343449309288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A133265 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A137844.P5314963343449309288

/-! ## A137844.P8300250732112296447

`A004526(p?[A001511(A133265(n)²)])`
-/

namespace A137844.P8300250732112296447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A133265 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137844.P8300250732112296447

/-! ## A137844.P9141979470172869748

`A060755(p?[A001511(A133265(n)²)])`
-/

namespace A137844.P9141979470172869748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A133265 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060755 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137844.P9141979470172869748

/-! ## A137844.P1839945541669533599

`floor(p?[A123725(A330451(n))]/2)`
-/

namespace A137844.P1839945541669533599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123725 (A330451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A137844.P1839945541669533599

/-! ## A137844.P14308317419583104575

`A004526(p?[A123725(A330451(n))])`
-/

namespace A137844.P14308317419583104575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123725 (A330451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137844.P14308317419583104575

/-! ## A137844.P15588429282594707181

`A004526(p?[A001511(lcm(2, (n+1)²))])`
-/

namespace A137844.P15588429282594707181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Nat.lcm 2 ((n + 1) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137844.P15588429282594707181

/-! ## A137844.P4258255463863110937

`A004526(p?[A007814(A008815(n))])`
-/

namespace A137844.P4258255463863110937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A008815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137844.P4258255463863110937

/-!
# A137845: Logarithmically smooth numbers; numbers n whose largest prime factor is less than log(n).

The programs for A137845, the canonical program `A137845.P2059571329476721070` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137845 has offset 1).

The definition of A137845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137845.P2059571329476721070

`lt[A006530(n+1), log(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A137845

/-- `lt[A006530(n+1), log(n+1)]+1` -/
def P2059571329476721070.Spec : Prop :=
  ∀ n, (P2059571329476721070.a n : ℤ) = A137845 (n + 1)

theorem P2059571329476721070.correct : P2059571329476721070.Spec := by
  intro n
  simp only [A137845, Nat.add_sub_cancel]

end A137845

/-! ## A137845.P10206737371846669965

`lt[A006530(A028310(n)), A004233(n+1)]`
-/

namespace A137845.P10206737371846669965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137845.P10206737371846669965

namespace A137845

/-- `lt[A006530(A028310(n)), A004233(n+1)]` -/
def P10206737371846669965.Spec : Prop :=
  ∀ n, (P10206737371846669965.a n : ℤ) = A137845 (n + 1)

end A137845

/-! ## A137845.P18389057162828640847

`lt[A006530(A257088(n)), A004233(n+1)]`
-/

namespace A137845.P18389057162828640847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137845.P18389057162828640847

namespace A137845

/-- `lt[A006530(A257088(n)), A004233(n+1)]` -/
def P18389057162828640847.Spec : Prop :=
  ∀ n, (P18389057162828640847.a n : ℤ) = A137845 (n + 1)

end A137845

/-! ## A137845.P16050404874688979633

`lt[A006530(A233583(n+1)), A130259(n)]`
-/

namespace A137845.P16050404874688979633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137845.P16050404874688979633

namespace A137845

/-- `lt[A006530(A233583(n+1)), A130259(n)]` -/
def P16050404874688979633.Spec : Prop :=
  ∀ n, (P16050404874688979633.a n : ℤ) = A137845 (n + 1)

end A137845

/-! ## A137845.P17766217402421537580

`lt[A006530(A233583(n+1)), A004233(n+1)]`
-/

namespace A137845.P17766217402421537580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137845.P17766217402421537580

namespace A137845

/-- `lt[A006530(A233583(n+1)), A004233(n+1)]` -/
def P17766217402421537580.Spec : Prop :=
  ∀ n, (P17766217402421537580.a n : ℤ) = A137845 (n + 1)

end A137845

/-!
# A137846: Successive structures last number of elements periodic table (Seaborg extended to 32 columns,118 terms or Janet,120). First 87 terms.

The programs for A137846, there is no canonical definition to state claims against.
-/

/-! ## A137846.P4585211907222432569

`A080915(n)-A092573(A273730(n))`
-/

namespace A137846.P4585211907222432569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080915 n - A092573 (A273730 n).toNat

end

end A137846.P4585211907222432569

/-!
# A137847: Smallest number missing in the EKG sequence (A064413) after n terms.

The programs for A137847, there is no canonical definition to state claims against.
-/

/-! ## A137847.P6450954301949662018

`val(∑[2^A064413(n+1)]+2, 2)`
-/

namespace A137847.P6450954301949662018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A064413 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat 2

end

end A137847.P6450954301949662018

/-! ## A137847.P10239979382328761242

`A000040(∑[char[A064423(n+1)]]+1)`
-/

namespace A137847.P10239979382328761242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064423 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A137847.P10239979382328761242

/-! ## A137847.P14456353772841387961

`A000040(∑[char[A064955(n+1)-1]]+1)`
-/

namespace A137847.P14456353772841387961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064955 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A137847.P14456353772841387961

/-! ## A137847.P11135217394006660377

`A392836(∑[char[A064955(n+1)-1]]+1)`
-/

namespace A137847.P11135217394006660377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064955 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392836 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A137847.P11135217394006660377

/-! ## A137847.P17736721223078206504

`A000040(comp[record[A304526(n+1)]+n]-n+1)`
-/

namespace A137847.P17736721223078206504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304526 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat

end

end A137847.P17736721223078206504

/-!
# A137849: Number of integers m from 1 through n inclusive such that d_i(n)<=d_i(m) for 1<=i<=Min(d(n),d(m)) where d_i(n) denotes the i-th smallest divisor of n and d(n) denotes the number of divisors of n (A000005).

The programs for A137849, there is no canonical definition to state claims against.
-/

/-! ## A137849.P12960317479804178330

`A026239(A026239(n+1))-A241972(n+1)`
-/

namespace A137849.P12960317479804178330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A026239 (n + 1)).toNat - A241972 (n + 1)

end

end A137849.P12960317479804178330

/-! ## A137849.P5163969933567053549

`A003963(A006005(n+1))-A241972(n+1)`
-/

namespace A137849.P5163969933567053549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A006005 (n + 1)).toNat - A241972 (n + 1)

end

end A137849.P5163969933567053549

/-! ## A137849.P4361292832939557383

`A056239(A000040(n+1))-A241972(n+1)`
-/

namespace A137849.P4361292832939557383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A000040 (n + 1)).toNat - A241972 (n + 1)

end

end A137849.P4361292832939557383

/-! ## A137849.P16530866296533596909

`A090928(A090928(n+1))-A241972(n+1)`
-/

namespace A137849.P16530866296533596909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A090928 (n + 1)).toNat - A241972 (n + 1)

end

end A137849.P16530866296533596909

/-! ## A137849.P10005331357778964246

`A307266(A307266(n+1))-A241972(n+1)`
-/

namespace A137849.P10005331357778964246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307266 (A307266 (n + 1)).toNat - A241972 (n + 1)

end

end A137849.P10005331357778964246

/-! ## A137849.P9493486033228292559

`A004736(A241972(n+1)+A000124(n))`
-/

namespace A137849.P9493486033228292559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A241972 (n + 1) + A000124 n).toNat

end

end A137849.P9493486033228292559

/-! ## A137849.P14367451269704356558

`A103516(A000217(n))-A241972(n+1)`
-/

namespace A137849.P14367451269704356558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 (A000217 n).toNat - A241972 (n + 1)

end

end A137849.P14367451269704356558

/-! ## A137849.P6684588890564470237

`A004736(A241972(n+1)+A167614(n+1))`
-/

namespace A137849.P6684588890564470237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A241972 (n + 1) + A167614 (n + 1)).toNat

end

end A137849.P6684588890564470237

/-! ## A137849.P7907926991145427432

`A004736(A241972(n+1)+A167487(n+5))`
-/

namespace A137849.P7907926991145427432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A241972 (n + 1) + A167487 (n + 5)).toNat

end

end A137849.P7907926991145427432

/-! ## A137849.P17340187667116857875

`A100617(A000960(n+1))-A241972(n+1)`
-/

namespace A137849.P17340187667116857875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A000960 (n + 1)).toNat - A241972 (n + 1)

end

end A137849.P17340187667116857875

/-! ## A137849.P6767047746428831287

`A196199(A241972(n+1)²)+1+n`
-/

namespace A137849.P6767047746428831287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A241972 (n + 1) ^ 2).toNat + 1 + (n : ℤ)

end

end A137849.P6767047746428831287

/-!
# A137851: a(n) = A054525(n) * A061397(n).

The programs for A137851, the canonical program `A137851.P17236837595214995262` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137851 has offset 1).

The definition of A137851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137851.P16799949131857739032

`∑{p}[n+1, #*A008683((n+1)/#)]`
-/

namespace A137851.P16799949131857739032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A137851.P16799949131857739032

namespace A137851

/-- `∑{p}[n+1, #*A008683((n+1)/#)]` -/
def P16799949131857739032.Spec : Prop :=
  ∀ n, P16799949131857739032.a n = A137851 (n + 1)

end A137851

/-! ## A137851.P4722465802617666819

`∑{d}[n+1, A007427(#)*A008472((n+1)/#)]`
-/

namespace A137851.P4722465802617666819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A008472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A137851.P4722465802617666819

namespace A137851

/-- `∑{d}[n+1, A007427(#)*A008472((n+1)/#)]` -/
def P4722465802617666819.Spec : Prop :=
  ∀ n, P4722465802617666819.a n = A137851 (n + 1)

end A137851

/-! ## A137851.P880214861514492930

`∑{d}[n+1, A008683(#)*A061397((n+1)/#)]`
-/

namespace A137851.P880214861514492930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A137851.P880214861514492930

namespace A137851

/-- `∑{d}[n+1, A008683(#)*A061397((n+1)/#)]` -/
def P880214861514492930.Spec : Prop :=
  ∀ n, P880214861514492930.a n = A137851 (n + 1)

end A137851

/-! ## A137851.P10108002406264763506

`∑{d}[n+1, A007428(#)*A319131((n+1)/#)]`
-/

namespace A137851.P10108002406264763506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A319131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A137851.P10108002406264763506

namespace A137851

/-- `∑{d}[n+1, A007428(#)*A319131((n+1)/#)]` -/
def P10108002406264763506.Spec : Prop :=
  ∀ n, P10108002406264763506.a n = A137851 (n + 1)

end A137851

/-! ## A137851.P17236837595214995262

`∑{d}[n+1, A046692(#)*A328260((n+1)/#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A137851

/-- `∑{d}[n+1, A046692(#)*A328260((n+1)/#)]` -/
def P17236837595214995262.Spec : Prop :=
  ∀ n, P17236837595214995262.a n = A137851 (n + 1)

theorem P17236837595214995262.correct : P17236837595214995262.Spec := by
  intro n
  simp only [A137851, Nat.add_sub_cancel]

end A137851

/-! ## A137851.P700079705370323693

`∑{d}[n+1, A055615(#)*A347104((n+1)/#)]`
-/

namespace A137851.P700079705370323693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A347104 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A137851.P700079705370323693

namespace A137851

/-- `∑{d}[n+1, A055615(#)*A347104((n+1)/#)]` -/
def P700079705370323693.Spec : Prop :=
  ∀ n, P700079705370323693.a n = A137851 (n + 1)

end A137851

/-! ## A137851.P6202786381951995078

`∑{d}[n+1, A300852(#)*A327274((n+1)/#)]`
-/

namespace A137851.P6202786381951995078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300852 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A137851.P6202786381951995078

namespace A137851

/-- `∑{d}[n+1, A300852(#)*A327274((n+1)/#)]` -/
def P6202786381951995078.Spec : Prop :=
  ∀ n, P6202786381951995078.a n = A137851 (n + 1)

end A137851

/-!
# A137852: G.f.: Product_{n>=1} (1 + a(n)*x^n/n!) = exp(x).

The programs for A137852, there is no canonical definition to state claims against.
-/

/-! ## A137852.P9946035563132973835

`floor(acot(n))+A006973(n+1)*A062157(n)`
-/

namespace A137852.P9946035563132973835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + A006973 (n + 1) * A062157 n

end

end A137852.P9946035563132973835

/-! ## A137852.P12955543767712588768

`A000007(n)+A006973(n+1)*A062157(n)`
-/

namespace A137852.P12955543767712588768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A006973 (n + 1) * A062157 n

end

end A137852.P12955543767712588768

/-! ## A137852.P13745094744256504161

`A151909(n)+A006973(n+1)*A062157(n)`
-/

namespace A137852.P13745094744256504161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + A006973 (n + 1) * A062157 n

end

end A137852.P13745094744256504161

/-! ## A137852.P250148427214778435

`A000007(n)-A006973(n+1)*A033999(n)`
-/

namespace A137852.P250148427214778435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A006973 (n + 1) * A033999 n

end

end A137852.P250148427214778435

/-! ## A137852.P7196334550649524126

`A151909(n)-A006973(n+1)*A033999(n)`
-/

namespace A137852.P7196334550649524126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n - A006973 (n + 1) * A033999 n

end

end A137852.P7196334550649524126

/-! ## A137852.P7130940561841473720

`(A006973(n+1)*A062157(n))^A178334(n)`
-/

namespace A137852.P7130940561841473720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006973 (n + 1) * A062157 n : ℚ) ^ (A178334 n : ℤ)

end

end A137852.P7130940561841473720

/-!
# A137853: Triangle read by rows: row sums give natural numbers A000027.

The programs for A137853, there is no canonical definition to state claims against.
-/

/-! ## A137853.P5957266733382329378

`A002260(n+1)*A040051(A105541(n))`
-/

namespace A137853.P5957266733382329378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A040051 (A105541 n).toNat

end

end A137853.P5957266733382329378

/-! ## A137853.P15232895503682307434

`A002260(n+1)%A103517(A140531(A335422(n)))`
-/

namespace A137853.P15232895503682307434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (A103517 (A140531 (A335422 n).toNat).toNat)

end

end A137853.P15232895503682307434

/-! ## A137853.P10895230490160096690

`and(A002260(n+1), A163915(A052973(n)))`
-/

namespace A137853.P10895230490160096690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (n + 1)) (A163915 (A052973 n).toNat)

end

end A137853.P10895230490160096690

/-! ## A137853.P2673694500005387776

`and(A002260(n+1), A005563(A291843(n)))`
-/

namespace A137853.P2673694500005387776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (n + 1)) (A005563 (A291843 n).toNat)

end

end A137853.P2673694500005387776

/-! ## A137853.P11787436537789370424

`A002260(n+1)*A003849(A049964(n+1))`
-/

namespace A137853.P11787436537789370424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A003849 (A049964 (n + 1)).toNat

end

end A137853.P11787436537789370424

/-!
# A137854: Triangle generated from an array: A008277 * A008277(transform).

The programs for A137854, there is no canonical definition to state claims against.
-/

/-! ## A137854.P7274286108430847595

`A110855(lt[1, A094526(n)])`
-/

namespace A137854.P7274286108430847595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137854.P7274286108430847595

/-! ## A137854.P11511294206682881070

`filter[A110855(n+1), A225181(#)]`
-/

namespace A137854.P11511294206682881070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A137854.P11511294206682881070

/-! ## A137854.P11719606633402620094

`A110855(lt[1, A173884(n)])`
-/

namespace A137854.P11719606633402620094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137854.P11719606633402620094

/-! ## A137854.P10537060182266921902

`A175808(A384124(n))`
-/

namespace A137854.P10537060182266921902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175808 (A384124 n).toNat

end

end A137854.P10537060182266921902

/-! ## A137854.P3851903903235736842

`A023130(A209424(n))`
-/

namespace A137854.P3851903903235736842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023130 (A209424 n).toNat

end

end A137854.P3851903903235736842

/-!
# A137855: Triangle read by rows: T(n,k) = Sum_{j=1..n-k+1} Stirling2(k, j).

The programs for A137855, there is no canonical definition to state claims against.
-/

/-! ## A137855.P17862304833280351904

`A203647(A083920(n)+1)`
-/

namespace A137855.P17862304833280351904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A083920 n + 1).toNat

end

end A137855.P17862304833280351904

/-! ## A137855.P11552800165682211844

`A203647(A122797(n+1))`
-/

namespace A137855.P11552800165682211844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A122797 (n + 1)).toNat

end

end A137855.P11552800165682211844

/-! ## A137855.P2435181857370963280

`A203647(A271439(n)+1)`
-/

namespace A137855.P2435181857370963280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A271439 n + 1).toNat

end

end A137855.P2435181857370963280

/-! ## A137855.P17950678919811708859

`A203647(1-A003056(n)+n)`
-/

namespace A137855.P17950678919811708859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (1 - A003056 n + (n : ℤ)).toNat

end

end A137855.P17950678919811708859

/-! ## A137855.P10091228235066257912

`A203647(1-(A003056(n)-n))`
-/

namespace A137855.P10091228235066257912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (1 - (A003056 n - (n : ℤ))).toNat

end

end A137855.P10091228235066257912

/-! ## A137855.P7883774611778710348

`A203647(2-A002024(n+1)+n)`
-/

namespace A137855.P7883774611778710348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (2 - A002024 (n + 1) + (n : ℤ)).toNat

end

end A137855.P7883774611778710348

/-! ## A137855.P9159018029533805007

`A278984(A038722(n+1))`
-/

namespace A137855.P9159018029533805007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (A038722 (n + 1)).toNat

end

end A137855.P9159018029533805007

/-! ## A137855.P17124435240410129249

`A278984(A061579(n)+1)`
-/

namespace A137855.P17124435240410129249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (A061579 n + 1).toNat

end

end A137855.P17124435240410129249

/-! ## A137855.P2884004860053356648

`A278984(A000194(2*(n+1))²-n)`
-/

namespace A137855.P2884004860053356648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (A000194 (2 * (n + 1)) ^ 2 - (n : ℤ)).toNat

end

end A137855.P2884004860053356648

/-! ## A137855.P15105291488773476868

`A305749(n+1)+2*A320751(n+1)`
-/

namespace A137855.P15105291488773476868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305749 (n + 1) + 2 * A320751 (n + 1)

end

end A137855.P15105291488773476868

/-!
# A137856: Row sums of triangle A137855.

The programs for A137856, there is no canonical definition to state claims against.
-/

/-! ## A137856.P11755171608003833587

`∑[A024427(n+1)]`
-/

namespace A137856.P11755171608003833587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137856.P11755171608003833587

/-! ## A137856.P8616547378848650129

`∑[A171367(n+2)]`
-/

namespace A137856.P8616547378848650129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171367 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137856.P8616547378848650129

/-! ## A137856.P15538287365210520944

`A320964(n+2)-1`
-/

namespace A137856.P15538287365210520944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320964 (n + 2) - 1

end

end A137856.P15538287365210520944

/-! ## A137856.P12928303800345773322

`∑[abs(Δ[A320964(n+1)])]`
-/

namespace A137856.P12928303800345773322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320964 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137856.P12928303800345773322

/-! ## A137856.P7501780685445844867

`record[A320964(n)-ceil(sin(n)²)]`
-/

namespace A137856.P7501780685445844867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320964 n - ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137856.P7501780685445844867

/-!
# A137857: Fixed points of A067581.

The programs for A137857, there is no canonical definition to state claims against.
-/

/-! ## A137857.P9087643123945159772

`eq[abs(1-n)+1, A067581(n)]`
-/

namespace A137857.P9087643123945159772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137857.P9087643123945159772

/-! ## A137857.P7724203065621502645

`eq[n, A028310(A067581(n))]`
-/

namespace A137857.P7724203065621502645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A067581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137857.P7724203065621502645

/-! ## A137857.P17072074974335897174

`eq[n, A067581(n)+A000007(n)]`
-/

namespace A137857.P17072074974335897174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067581 n + A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137857.P17072074974335897174

/-! ## A137857.P1282647266377259834

`eq[A008486(n), A008585(A067581(n))]`
-/

namespace A137857.P1282647266377259834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A067581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137857.P1282647266377259834

/-! ## A137857.P8200762143949349779

`eq[n+1, A067581(n)+A014963(4*n+2)]`
-/

namespace A137857.P8200762143949349779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067581 n + A014963 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137857.P8200762143949349779

/-!
# A137858: Number of unlabeled graphs with n nodes and an even sum of nodes and edges.

The programs for A137858, there is no canonical definition to state claims against.
-/

/-! ## A137858.P5519530648567466658

`A000088(n+1)-A137861(n+1)`
-/

namespace A137858.P5519530648567466658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A137861 (n + 1)

end

end A137858.P5519530648567466658

/-! ## A137858.P17285463715700560814

`A007869(n+1)-A000171(A141310(n))`
-/

namespace A137858.P17285463715700560814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007869 (n + 1) - A000171 (A141310 n).toNat

end

end A137858.P17285463715700560814

/-! ## A137858.P11714379869260341436

`A007869(n+1)+A054960(n+1)-A137861(n+1)`
-/

namespace A137858.P11714379869260341436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007869 (n + 1) + (A054960 (n + 1) - A137861 (n + 1))

end

end A137858.P11714379869260341436

/-! ## A137858.P9458420414785920402

`A000171(n+1)+A054960(n+1)-A000171(A141310(n))`
-/

namespace A137858.P9458420414785920402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000171 (n + 1) + (A054960 (n + 1) - A000171 (A141310 n).toNat)

end

end A137858.P9458420414785920402

/-! ## A137858.P12041895930965089597

`A054931(n+1)+A000719(n+1)-A000171(A141310(n))`
-/

namespace A137858.P12041895930965089597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054931 (n + 1) + A000719 (n + 1) - A000171 (A141310 n).toNat

end

end A137858.P12041895930965089597

/-!
# A137859: Number of primes between the n-th squared twin prime pair.

The programs for A137859, the canonical program `A137859.P12570958566388461762` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137859 has offset 1).

The definition of A137859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137859.P12570958566388461762

`A050216(A029707(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A137859

/-- `A050216(A029707(n+1))` -/
def P12570958566388461762.Spec : Prop :=
  ∀ n, P12570958566388461762.a n = A137859 (n + 1)

theorem P12570958566388461762.correct : P12570958566388461762.Spec := by
  intro n
  simp only [A137859, Nat.add_sub_cancel]

end A137859

/-! ## A137859.P12213187390178944674

`A050216(A107770(n+1)-1)`
-/

namespace A137859.P12213187390178944674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (A107770 (n + 1) - 1).toNat

end

end A137859.P12213187390178944674

namespace A137859

/-- `A050216(A107770(n+1)-1)` -/
def P12213187390178944674.Spec : Prop :=
  ∀ n, P12213187390178944674.a n = A137859 (n + 1)

end A137859

/-! ## A137859.P7218140714020118433

`A050216(eq[1, A062301(n+1)])`
-/

namespace A137859.P7218140714020118433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137859.P7218140714020118433

namespace A137859

/-- `A050216(eq[1, A062301(n+1)])` -/
def P7218140714020118433.Spec : Prop :=
  ∀ n, P7218140714020118433.a n = A137859 (n + 1)

end A137859

/-! ## A137859.P13657094958457435415

`A050216(eq[3, A076368(n+1)])`
-/

namespace A137859.P13657094958457435415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137859.P13657094958457435415

namespace A137859

/-- `A050216(eq[3, A076368(n+1)])` -/
def P13657094958457435415.Spec : Prop :=
  ∀ n, P13657094958457435415.a n = A137859 (n + 1)

end A137859

/-! ## A137859.P11154677131891995251

`A050216(A000720(A001359(n+1)))`
-/

namespace A137859.P11154677131891995251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (A000720 (A001359 (n + 1)).toNat).toNat

end

end A137859.P11154677131891995251

namespace A137859

/-- `A050216(A000720(A001359(n+1)))` -/
def P11154677131891995251.Spec : Prop :=
  ∀ n, P11154677131891995251.a n = A137859 (n + 1)

end A137859

/-! ## A137859.P8992442785928730457

`A050216(eq[A048852(n), A100484(n+1)])`
-/

namespace A137859.P8992442785928730457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A137859.P8992442785928730457

namespace A137859

/-- `A050216(eq[A048852(n), A100484(n+1)])` -/
def P8992442785928730457.Spec : Prop :=
  ∀ n, P8992442785928730457.a n = A137859 (n + 1)

end A137859

/-! ## A137859.P15431696682542926614

`A050216(lt[A050216(n), 2*A197911(n)])`
-/

namespace A137859.P15431696682542926614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137859.P15431696682542926614

namespace A137859

/-- `A050216(lt[A050216(n), 2*A197911(n)])` -/
def P15431696682542926614.Spec : Prop :=
  ∀ n, P15431696682542926614.a n = A137859 (n + 1)

end A137859

/-! ## A137859.P5727374046402449829

`A050216(lt[A050216(n)/2, A197911(n)])`
-/

namespace A137859.P5727374046402449829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050216 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A137859.P5727374046402449829

namespace A137859

/-- `A050216(lt[A050216(n)/2, A197911(n)])` -/
def P5727374046402449829.Spec : Prop :=
  ∀ n, P5727374046402449829.a n = A137859 (n + 1)

end A137859

/-! ## A137859.P10454995270869922433

`A089166(A040040(n+1))`
-/

namespace A137859.P10454995270869922433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089166 (A040040 (n + 1)).toNat

end

end A137859.P10454995270869922433

namespace A137859

/-- `A089166(A040040(n+1))` -/
def P10454995270869922433.Spec : Prop :=
  ∀ n, P10454995270869922433.a n = A137859 (n + 1)

end A137859

/-! ## A137859.P11387862977390504137

`A089166(A168497(n+2))`
-/

namespace A137859.P11387862977390504137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089166 (A168497 (n + 2)).toNat

end

end A137859.P11387862977390504137

namespace A137859

/-- `A089166(A168497(n+2))` -/
def P11387862977390504137.Spec : Prop :=
  ∀ n, P11387862977390504137.a n = A137859 (n + 1)

end A137859

/-! ## A137859.P13581345442934287729

`A050216(A033270(A006512(n+1)))`
-/

namespace A137859.P13581345442934287729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (A033270 (A006512 (n + 1)).toNat).toNat

end

end A137859.P13581345442934287729

namespace A137859

/-- `A050216(A033270(A006512(n+1)))` -/
def P13581345442934287729.Spec : Prop :=
  ∀ n, P13581345442934287729.a n = A137859 (n + 1)

end A137859

/-! ## A137859.P5673373100150432862

`A050216(eq[1, A244797(n+1)])`
-/

namespace A137859.P5673373100150432862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137859.P5673373100150432862

namespace A137859

/-- `A050216(eq[1, A244797(n+1)])` -/
def P5673373100150432862.Spec : Prop :=
  ∀ n, P5673373100150432862.a n = A137859 (n + 1)

end A137859

/-!
# A137861: Number of unlabeled graphs with n nodes and an odd sum of nodes and edges.

The programs for A137861, there is no canonical definition to state claims against.
-/

/-! ## A137861.P8609953944074313664

`A000088(n+1)-A137858(n+1)`
-/

namespace A137861.P8609953944074313664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A137858 (n + 1)

end

end A137861.P8609953944074313664

/-! ## A137861.P11413147494916121309

`A054960(n+1)+A000171(A141310(n))`
-/

namespace A137861.P11413147494916121309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054960 (n + 1) + A000171 (A141310 n).toNat

end

end A137861.P11413147494916121309

/-! ## A137861.P940994084694898841

`A007869(n+1)+A054960(n+1)-A137858(n+1)`
-/

namespace A137861.P940994084694898841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007869 (n + 1) + (A054960 (n + 1) - A137858 (n + 1))

end

end A137861.P940994084694898841

/-! ## A137861.P1400807509782987467

`A000171(A141310(n))+A000088(n+1)-A007869(n+1)`
-/

namespace A137861.P1400807509782987467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000171 (A141310 n).toNat + (A000088 (n + 1) - A007869 (n + 1))

end

end A137861.P1400807509782987467

/-! ## A137861.P8261853816430734327

`A007869(n+1)+A000171(A141310(n))-A000171(n+1)`
-/

namespace A137861.P8261853816430734327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007869 (n + 1) + (A000171 (A141310 n).toNat - A000171 (n + 1))

end

end A137861.P8261853816430734327

/-!
# A137863: Orders of simple groups which are non-cyclic and non-alternating.

The programs for A137863, there is no canonical definition to state claims against.
-/

/-! ## A137863.P14221607354962959180

`A001034(comp[∑[A221310(n+1)-1]])`
-/

namespace A137863.P14221607354962959180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221310 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001034 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A137863.P14221607354962959180

/-! ## A137863.P2479153018668929156

`A001034(lt[A126062(2*(n+1)), A063834(n+1)])`
-/

namespace A137863.P2479153018668929156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126062 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001034 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137863.P2479153018668929156

/-! ## A137863.P10411571302020578846

`A001034(A055642(A001034(n+1))+n)`
-/

namespace A137863.P10411571302020578846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001034 (A055642 (A001034 (n + 1)).toNat + (n : ℤ)).toNat

end

end A137863.P10411571302020578846

/-! ## A137863.P14226196994391089828

`A001034(A187829(n+1)+A084558(n+1))`
-/

namespace A137863.P14226196994391089828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001034 (A187829 (n + 1) + A084558 (n + 1)).toNat

end

end A137863.P14226196994391089828

/-!
# A137864: a(n) = n^4 - 10n^3 + 35n^2 - 48n + 23.

The programs for A137864, the canonical program `A137864.P4137354387066839987` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137864 has offset 1).

The definition of A137864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4-10*(n+1)^3+35*(n+1)²-48*(n+1)+23` (program `A137864.P4137354387066839987`, by `A137864.P4137354387066839987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137864.P4137354387066839987

`(n+1)^4-10*(n+1)^3+35*(n+1)²-48*(n+1)+23`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137864

/-- `(n+1)^4-10*(n+1)^3+35*(n+1)²-48*(n+1)+23` -/
def P4137354387066839987.Spec : Prop :=
  ∀ n, P4137354387066839987.a n = A137864 (n + 1)

theorem P4137354387066839987.correct : P4137354387066839987.Spec := by
  intro n
  simp only [A137864, Nat.add_sub_cancel]

end A137864

/-! ## A137864.P14159643892440679607

`xor(1, A001094(n)+n)`
-/

namespace A137864.P14159643892440679607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001094 n + (n : ℤ))

end

end A137864.P14159643892440679607

namespace A137864

/-- `xor(1, A001094(n)+n)` -/
def P14159643892440679607.Spec : Prop :=
  ∀ n, P14159643892440679607.a n = A137864 (n + 1)

end A137864

/-! ## A137864.P15682343727205095471

`abs(A052762(n)+Δ[n²])`
-/

namespace A137864.P15682343727205095471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052762 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A137864.P15682343727205095471

namespace A137864

/-- `abs(A052762(n)+Δ[n²])` -/
def P15682343727205095471.Spec : Prop :=
  ∀ n, P15682343727205095471.a n = A137864 (n + 1)

end A137864

/-! ## A137864.P13428258864804229325

`abs(Δ[n²]+12*A034827(n))`
-/

namespace A137864.P13428258864804229325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + 12 * A034827 n|

end

end A137864.P13428258864804229325

namespace A137864

/-- `abs(Δ[n²]+12*A034827(n))` -/
def P13428258864804229325.Spec : Prop :=
  ∀ n, P13428258864804229325.a n = A137864 (n + 1)

end A137864

/-! ## A137864.P10510787211618860731

`lcm(A052762(n)+Δ[n²], A033999(n))`
-/

namespace A137864.P10510787211618860731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052762 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (A033999 n)

end

end A137864.P10510787211618860731

namespace A137864

/-- `lcm(A052762(n)+Δ[n²], A033999(n))` -/
def P10510787211618860731.Spec : Prop :=
  ∀ n, (P10510787211618860731.a n : ℤ) = A137864 (n + 1)

end A137864

/-! ## A137864.P3209280320447253235

`abs(A007531(n)*A023445(n)+2*n+1)`
-/

namespace A137864.P3209280320447253235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007531 n * A023445 n + (2 * n + 1 : ℤ)|

end

end A137864.P3209280320447253235

namespace A137864

/-- `abs(A007531(n)*A023445(n)+2*n+1)` -/
def P3209280320447253235.Spec : Prop :=
  ∀ n, P3209280320447253235.a n = A137864 (n + 1)

end A137864

/-! ## A137864.P2587811140177443297

`Δ[n²+2*A300847(n)]`
-/

namespace A137864.P2587811140177443297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 2 * A300847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137864.P2587811140177443297

namespace A137864

/-- `Δ[n²+2*A300847(n)]` -/
def P2587811140177443297.Spec : Prop :=
  ∀ n, P2587811140177443297.a n = A137864 (n + 1)

end A137864

/-! ## A137864.P8379359563215066396

`(A185065(n)-A033594(n))%A120089(n+1)²`
-/

namespace A137864.P8379359563215066396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185065 n - A033594 n) (A120089 (n + 1) ^ 2)

end

end A137864.P8379359563215066396

namespace A137864

/-- `(A185065(n)-A033594(n))%A120089(n+1)²` -/
def P8379359563215066396.Spec : Prop :=
  ∀ n, P8379359563215066396.a n = A137864 (n + 1)

end A137864

/-! ## A137864.P13314990612465174285

`(A185065(n)-A033594(n))%A115099(n)`
-/

namespace A137864.P13314990612465174285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185065 n - A033594 n) (A115099 n)

end

end A137864.P13314990612465174285

namespace A137864

/-- `(A185065(n)-A033594(n))%A115099(n)` -/
def P13314990612465174285.Spec : Prop :=
  ∀ n, P13314990612465174285.a n = A137864 (n + 1)

end A137864

/-! ## A137864.P9085108659020061617

`(A001094(n)+1+n)%A198645(n)`
-/

namespace A137864.P9085108659020061617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001094 n + 1 + (n : ℤ)) (A198645 n)

end

end A137864.P9085108659020061617

namespace A137864

/-- `(A001094(n)+1+n)%A198645(n)` -/
def P9085108659020061617.Spec : Prop :=
  ∀ n, P9085108659020061617.a n = A137864 (n + 1)

end A137864

/-! ## A137864.P5921593682470002757

`(A185065(n)-A033594(n))*A051516(A154935(n+1))!`
-/

namespace A137864.P5921593682470002757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A185065 n - A033594 n) * (Nat.factorial (A051516 (A154935 (n + 1)).toNat).toNat : ℤ)

end

end A137864.P5921593682470002757

namespace A137864

/-- `(A185065(n)-A033594(n))*A051516(A154935(n+1))!` -/
def P5921593682470002757.Spec : Prop :=
  ∀ n, P5921593682470002757.a n = A137864 (n + 1)

end A137864

/-!
# A137866: a(1)=0. For n >= 2, a(n) = gcd(a(n-1)+1, n).

The programs for A137866, the canonical program `A137866.P1514823896338491882` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137866 has offset 1).

The definition of A137866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(a(n-1)+1, n+1)` (program `A137866.P1514823896338491882`, by `A137866.P1514823896338491882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137866.P1514823896338491882

`gcd(a(n-1)+1, n+1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137866

/-- `gcd(a(n-1)+1, n+1)` -/
def P1514823896338491882.Spec : Prop :=
  ∀ n, (P1514823896338491882.a n : ℤ) = A137866 (n + 1)

theorem P1514823896338491882.correct : P1514823896338491882.Spec := by
  intro n
  simp only [A137866, Nat.add_sub_cancel]

end A137866

/-! ## A137866.P14450726434626606675

`gcd(n+1, a(n-1)+1)` with `a(0)=0`
-/

namespace A137866.P14450726434626606675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd (n + 1) (a (n - 1) + 1)

end

end A137866.P14450726434626606675

namespace A137866

/-- `gcd(n+1, a(n-1)+1)` -/
def P14450726434626606675.Spec : Prop :=
  ∀ n, (P14450726434626606675.a n : ℤ) = A137866 (n + 1)

end A137866

/-! ## A137866.P529676549461128726

`gcd(1-n*a(n-1), ∑[2*n])` with `a(0)=0`
-/

namespace A137866.P529676549461128726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (1 - (n * a (n - 1) : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A137866.P529676549461128726

namespace A137866

/-- `gcd(1-n*a(n-1), ∑[2*n])` -/
def P529676549461128726.Spec : Prop :=
  ∀ n, (P529676549461128726.a n : ℤ) = A137866 (n + 1)

end A137866

/-! ## A137866.P13462118477762846006

`gcd(1-(n-2*n), n-a(n-1))` with `a(0)=0`
-/

namespace A137866.P13462118477762846006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (1 - ((n : ℤ) - (2 * n : ℤ))) ((n : ℤ) - (a (n - 1) : ℤ))

end

end A137866.P13462118477762846006

namespace A137866

/-- `gcd(1-(n-2*n), n-a(n-1))` -/
def P13462118477762846006.Spec : Prop :=
  ∀ n, (P13462118477762846006.a n : ℤ) = A137866 (n + 1)

end A137866

/-! ## A137866.P8354213668118948296

`A099427(n+1)-1`
-/

namespace A137866.P8354213668118948296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099427 (n + 1) - 1

end

end A137866.P8354213668118948296

namespace A137866

/-- `A099427(n+1)-1` -/
def P8354213668118948296.Spec : Prop :=
  ∀ n, P8354213668118948296.a n = A137866 (n + 1)

end A137866

/-! ## A137866.P18152856116683175830

`1-A124195(n+1)+n`
-/

namespace A137866.P18152856116683175830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A124195 (n + 1) + (n : ℤ)

end

end A137866.P18152856116683175830

namespace A137866

/-- `1-A124195(n+1)+n` -/
def P18152856116683175830.Spec : Prop :=
  ∀ n, P18152856116683175830.a n = A137866 (n + 1)

end A137866

/-! ## A137866.P12555635247976019544

`A200748(n)%A099427(n+1)`
-/

namespace A137866.P12555635247976019544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A099427 (n + 1))

end

end A137866.P12555635247976019544

namespace A137866

/-- `A200748(n)%A099427(n+1)` -/
def P12555635247976019544.Spec : Prop :=
  ∀ n, P12555635247976019544.a n = A137866 (n + 1)

end A137866

/-! ## A137866.P8494096667456258925

`A058197(n+1)%A099427(n+1)`
-/

namespace A137866.P8494096667456258925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A099427 (n + 1))

end

end A137866.P8494096667456258925

namespace A137866

/-- `A058197(n+1)%A099427(n+1)` -/
def P8494096667456258925.Spec : Prop :=
  ∀ n, P8494096667456258925.a n = A137866 (n + 1)

end A137866

/-! ## A137866.P12785105815226128166

`A117010(n+1)%A099427(n+1)`
-/

namespace A137866.P12785105815226128166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A099427 (n + 1))

end

end A137866.P12785105815226128166

namespace A137866

/-- `A117010(n+1)%A099427(n+1)` -/
def P12785105815226128166.Spec : Prop :=
  ∀ n, P12785105815226128166.a n = A137866 (n + 1)

end A137866

/-! ## A137866.P5784978260692380973

`A248877(n+1)%A099427(n+1)`
-/

namespace A137866.P5784978260692380973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248877 (n + 1)) (A099427 (n + 1))

end

end A137866.P5784978260692380973

namespace A137866

/-- `A248877(n+1)%A099427(n+1)` -/
def P5784978260692380973.Spec : Prop :=
  ∀ n, P5784978260692380973.a n = A137866 (n + 1)

end A137866

/-! ## A137866.P10284327331545910557

`A070198(n)%A099427(n+1)`
-/

namespace A137866.P10284327331545910557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A099427 (n + 1))

end

end A137866.P10284327331545910557

namespace A137866

/-- `A070198(n)%A099427(n+1)` -/
def P10284327331545910557.Spec : Prop :=
  ∀ n, P10284327331545910557.a n = A137866 (n + 1)

end A137866

/-! ## A137866.P3573051119604635066

`A079782(n+1)%A099427(n+1)`
-/

namespace A137866.P3573051119604635066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A099427 (n + 1))

end

end A137866.P3573051119604635066

namespace A137866

/-- `A079782(n+1)%A099427(n+1)` -/
def P3573051119604635066.Spec : Prop :=
  ∀ n, P3573051119604635066.a n = A137866 (n + 1)

end A137866

/-! ## A137866.P955228381791839051

`A083685(n+1)%A099427(n+1)`
-/

namespace A137866.P955228381791839051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A099427 (n + 1))

end

end A137866.P955228381791839051

namespace A137866

/-- `A083685(n+1)%A099427(n+1)` -/
def P955228381791839051.Spec : Prop :=
  ∀ n, P955228381791839051.a n = A137866 (n + 1)

end A137866

/-! ## A137866.P7061248335186658157

`A121934(n+1)%A099427(n+1)`
-/

namespace A137866.P7061248335186658157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A099427 (n + 1))

end

end A137866.P7061248335186658157

namespace A137866

/-- `A121934(n+1)%A099427(n+1)` -/
def P7061248335186658157.Spec : Prop :=
  ∀ n, P7061248335186658157.a n = A137866 (n + 1)

end A137866

/-! ## A137866.P13879792453400917668

`A030494(n+1)%A099427(n+1)`
-/

namespace A137866.P13879792453400917668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A099427 (n + 1))

end

end A137866.P13879792453400917668

namespace A137866

/-- `A030494(n+1)%A099427(n+1)` -/
def P13879792453400917668.Spec : Prop :=
  ∀ n, P13879792453400917668.a n = A137866 (n + 1)

end A137866

/-! ## A137866.P7126599135115674021

`A072828(n+1)%A099427(n+1)`
-/

namespace A137866.P7126599135115674021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A099427 (n + 1))

end

end A137866.P7126599135115674021

namespace A137866

/-- `A072828(n+1)%A099427(n+1)` -/
def P7126599135115674021.Spec : Prop :=
  ∀ n, P7126599135115674021.a n = A137866 (n + 1)

end A137866

/-! ## A137866.P3960158837188710084

`A198277(n)%A099427(n+1)`
-/

namespace A137866.P3960158837188710084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A099427 (n + 1))

end

end A137866.P3960158837188710084

namespace A137866

/-- `A198277(n)%A099427(n+1)` -/
def P3960158837188710084.Spec : Prop :=
  ∀ n, P3960158837188710084.a n = A137866 (n + 1)

end A137866

/-!
# A137867: Triangular sequence of coefficients of the Misiurewicz polynomial which are made from the Pc Mandelbrot -Julia polynomials A137560 as: Pc(x,n)-Pc(x,m); n<>m.

The programs for A137867, there is no canonical definition to state claims against.
-/

/-! ## A137867.P4153093540994259324

`A092921(n)-A000035(A192232(n+1))`
-/

namespace A137867.P4153093540994259324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n - A000035 (A192232 (n + 1)).toNat

end

end A137867.P4153093540994259324

/-! ## A137867.P14377614001155817891

`A011671(A011979(n+4))-A011644(n)`
-/

namespace A137867.P14377614001155817891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011671 (A011979 (n + 4)).toNat - A011644 n

end

end A137867.P14377614001155817891

/-! ## A137867.P11556755601947983214

`A011671(A011979(n+4))-A011653(n)`
-/

namespace A137867.P11556755601947983214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011671 (A011979 (n + 4)).toNat - A011653 n

end

end A137867.P11556755601947983214

/-! ## A137867.P13747801317398256629

`A319453(A187829(n+1))-A285076(n+1)`
-/

namespace A137867.P13747801317398256629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (A187829 (n + 1)).toNat - A285076 (n + 1)

end

end A137867.P13747801317398256629

/-! ## A137867.P10802572820018268604

`Δ[A008615(record[A169778(n+4)])]`
-/

namespace A137867.P10802572820018268604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169778 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137867.P10802572820018268604

/-!
# A137868: LCM of two smallest numbers with n divisors.

The programs for A137868, there is no canonical definition to state claims against.
-/

/-! ## A137868.P11203696646258170435

`lcm(A005179(n+2), A161574(n+2))`
-/

namespace A137868.P11203696646258170435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005179 (n + 2)) (A161574 (n + 2))

end

end A137868.P11203696646258170435

/-! ## A137868.P8072507510183380908

`A099315(A070759(n+1)²)`
-/

namespace A137868.P8072507510183380908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099315 (A070759 (n + 1) ^ 2).toNat

end

end A137868.P8072507510183380908

/-!
# A137869: Primes p with property that (p - previous prime) >= 6 and (next prime - p) >= 6.

The programs for A137869, the canonical program `A137869.P2950415357000949362` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137869 has offset 1).

The definition of A137869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7382 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137869.P10658847218777757234

`A167771(n+2)`
-/

namespace A137869.P10658847218777757234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167771 (n + 2)

end

end A137869.P10658847218777757234

namespace A137869

/-- `A167771(n+2)` -/
def P10658847218777757234.Spec : Prop :=
  ∀ n, P10658847218777757234.a n = A137869 (n + 1)

end A137869

/-! ## A137869.P14967737026265196142

`record[A167771(A329048(A329048(n)))]`
-/

namespace A137869.P14967737026265196142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167771 (A329048 (A329048 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137869.P14967737026265196142

namespace A137869

/-- `record[A167771(A329048(A329048(n)))]` -/
def P14967737026265196142.Spec : Prop :=
  ∀ n, P14967737026265196142.a n = A137869 (n + 1)

end A137869

/-! ## A137869.P3951006612552526248

`∩[A083370(n+1), A134100(n+1)]`
-/

namespace A137869.P3951006612552526248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137869.P3951006612552526248

namespace A137869

/-- `∩[A083370(n+1), A134100(n+1)]` -/
def P3951006612552526248.Spec : Prop :=
  ∀ n, (P3951006612552526248.a n : ℤ) = A137869 (n + 1)

end A137869

/-! ## A137869.P2950415357000949362

`p?[gcd(A083370(n+2), A134100(n+1))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A137869

/-- `p?[gcd(A083370(n+2), A134100(n+1))]` -/
def P2950415357000949362.Spec : Prop :=
  ∀ n, (P2950415357000949362.a n : ℤ) = A137869 (n + 1)

theorem P2950415357000949362.correct : P2950415357000949362.Spec := by
  intro n
  simp only [A137869, Nat.add_sub_cancel]

end A137869

/-! ## A137869.P6751175615896062922

`A065091(lt[3, A046929(n+1)])`
-/

namespace A137869.P6751175615896062922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137869.P6751175615896062922

namespace A137869

/-- `A065091(lt[3, A046929(n+1)])` -/
def P6751175615896062922.Spec : Prop :=
  ∀ n, P6751175615896062922.a n = A137869 (n + 1)

end A137869

/-! ## A137869.P11151196057601816972

`A000040(lt[3, A046929(n+1)]+1)`
-/

namespace A137869.P11151196057601816972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A137869.P11151196057601816972

namespace A137869

/-- `A000040(lt[3, A046929(n+1)]+1)` -/
def P11151196057601816972.Spec : Prop :=
  ∀ n, P11151196057601816972.a n = A137869 (n + 1)

end A137869

/-! ## A137869.P9440638765783775913

`A065091(lt[2, A339270(n+1)-2])`
-/

namespace A137869.P9440638765783775913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137869.P9440638765783775913

namespace A137869

/-- `A065091(lt[2, A339270(n+1)-2])` -/
def P9440638765783775913.Spec : Prop :=
  ∀ n, P9440638765783775913.a n = A137869 (n + 1)

end A137869

/-! ## A137869.P10442737623194672842

`A065091(lt[2, A339270(n+1)/2])`
-/

namespace A137869.P10442737623194672842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339270 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A137869.P10442737623194672842

namespace A137869

/-- `A065091(lt[2, A339270(n+1)/2])` -/
def P10442737623194672842.Spec : Prop :=
  ∀ n, P10442737623194672842.a n = A137869 (n + 1)

end A137869

/-! ## A137869.P238534157611541912

`record[A167771(A080513(A093178(n)))]`
-/

namespace A137869.P238534157611541912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167771 (A080513 (A093178 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137869.P238534157611541912

namespace A137869

/-- `record[A167771(A080513(A093178(n)))]` -/
def P238534157611541912.Spec : Prop :=
  ∀ n, P238534157611541912.a n = A137869 (n + 1)

end A137869

/-! ## A137869.P6493770159600189771

`p?[lt[4, A051700(n)]]`
-/

namespace A137869.P6493770159600189771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137869.P6493770159600189771

namespace A137869

/-- `p?[lt[4, A051700(n)]]` -/
def P6493770159600189771.Spec : Prop :=
  ∀ n, (P6493770159600189771.a n : ℤ) = A137869 (n + 1)

end A137869

/-!
# A137870: Prime numbers, isolated from neighboring primes by >6.

The programs for A137870, there is no canonical definition to state claims against.
-/

/-! ## A137870.P12328987388193372787

`A167833(n+2)`
-/

namespace A137870.P12328987388193372787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167833 (n + 2)

end

end A137870.P12328987388193372787

/-! ## A137870.P7490716717590893743

`record[A167833(A323889(A016825(n)))]`
-/

namespace A137870.P7490716717590893743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167833 (A323889 (A016825 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137870.P7490716717590893743

/-! ## A137870.P14184332753234787526

`∩[A137869(n+1), A140546(n+1)]`
-/

namespace A137870.P14184332753234787526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137870.P14184332753234787526

/-! ## A137870.P11499282779202031155

`∩[A140546(n+2), A167771(n+2)]`
-/

namespace A137870.P11499282779202031155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140546 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167771 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137870.P11499282779202031155

/-! ## A137870.P10543626388681057017

`p?[A167833(A084964(2*n))]`
-/

namespace A137870.P10543626388681057017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167833 (A084964 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137870.P10543626388681057017

/-! ## A137870.P11263472989988489636

`A000040(lt[5, A046929(n+1)]+1)`
-/

namespace A137870.P11263472989988489636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A137870.P11263472989988489636

/-! ## A137870.P8237343557462077188

`p?[A000265(A167833(A028310(n)))]`
-/

namespace A137870.P8237343557462077188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A167833 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137870.P8237343557462077188

/-! ## A137870.P1316311326709893524

`record[A167833(A080513(A008611(n)))]`
-/

namespace A137870.P1316311326709893524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167833 (A080513 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137870.P1316311326709893524

/-! ## A137870.P10192950293890892374

`record[A167833(A071797(A092486(n)))]`
-/

namespace A137870.P10192950293890892374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167833 (A071797 (A092486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137870.P10192950293890892374

/-! ## A137870.P17415068404528355008

`record[A167833(A028920(A005408(n)))]`
-/

namespace A137870.P17415068404528355008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167833 (A028920 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137870.P17415068404528355008

/-!
# A137871: Prime numbers, isolated from neighboring primes by >8.

The programs for A137871, there is no canonical definition to state claims against.
-/

/-! ## A137871.P16776387364674572683

`A167838(n+2)`
-/

namespace A137871.P16776387364674572683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167838 (n + 2)

end

end A137871.P16776387364674572683

/-! ## A137871.P9206340546207560581

`A065091(lt[7, A046929(n+1)])`
-/

namespace A137871.P9206340546207560581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137871.P9206340546207560581

/-! ## A137871.P8396612868657566433

`A065091(lt[8, A339270(n+1)])`
-/

namespace A137871.P8396612868657566433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137871.P8396612868657566433

/-! ## A137871.P16401316418496426395

`A000040(lt[7, A046929(n+1)]+1)`
-/

namespace A137871.P16401316418496426395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A137871.P16401316418496426395

/-! ## A137871.P5189194636716655743

`p?[lt[8, A051700(n)]]`
-/

namespace A137871.P5189194636716655743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137871.P5189194636716655743

/-!
# A137872: Prime numbers, isolated from neighboring primes by >10.

The programs for A137872, there is no canonical definition to state claims against.
-/

/-! ## A137872.P13441089590230550359

`A167839(n+2)`
-/

namespace A137872.P13441089590230550359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167839 (n + 2)

end

end A137872.P13441089590230550359

/-!
# A137873: Prime numbers, isolated from neighboring primes by more than 12.

The programs for A137873, there is no canonical definition to state claims against.
-/

/-! ## A137873.P15579958572718203182

`A167840(n+2)`
-/

namespace A137873.P15579958572718203182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167840 (n + 2)

end

end A137873.P15579958572718203182

/-! ## A137873.P10401908940099570488

`A167840(A005408(n)-(n-1))%Δ[A177059(n)]²`
-/

namespace A137873.P10401908940099570488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167840 (A005408 n - ((n : ℤ) - 1)).toNat) ((f1 (n + 1) - f1 n) ^ 2)

end

end A137873.P10401908940099570488

/-! ## A137873.P9127556610890604311

`A167840(A005408(n)-(n-1))-Δ[A014206(n)]%2`
-/

namespace A137873.P9127556610890604311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167840 (A005408 n - ((n : ℤ) - 1)).toNat - Int.tmod (f1 (n + 1) - f1 n) 2

end

end A137873.P9127556610890604311

/-! ## A137873.P9978980062297163854

`A167840(A005408(n)-(n-1))-(2*n)%A004277(n)`
-/

namespace A137873.P9978980062297163854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167840 (A005408 n - ((n : ℤ) - 1)).toNat - Int.tmod (2 * n : ℤ) (A004277 n)

end

end A137873.P9978980062297163854

/-! ## A137873.P7374741386113933936

`A007318(2*A159481(n)-n)*A167840(A005408(n)-(n-1))`
-/

namespace A137873.P7374741386113933936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * A159481 n - (n : ℤ)).toNat * A167840 (A005408 n - ((n : ℤ) - 1)).toNat

end

end A137873.P7374741386113933936

/-! ## A137873.P73671056080373810

`p?[A167840(A005408(n)-(n-1))]`
-/

namespace A137873.P73671056080373810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167840 (A005408 n - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137873.P73671056080373810

/-! ## A137873.P7787370591578848574

`A057077(2*n)²*A167840(A005408(n)-(n-1))`
-/

namespace A137873.P7787370591578848574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) ^ 2 * A167840 (A005408 n - ((n : ℤ) - 1)).toNat

end

end A137873.P7787370591578848574

/-! ## A137873.P1272756143317412973

`∩[A137872(n+1), A240709(n+1)]`
-/

namespace A137873.P1272756143317412973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137873.P1272756143317412973

/-! ## A137873.P14095179036565770227

`∩[A167839(n+2), A240709(n+2)]`
-/

namespace A137873.P14095179036565770227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167839 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240709 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137873.P14095179036565770227

/-! ## A137873.P2230602622266216270

`∑{d}[A167840(A005408(n)-(n-1)), A000010(#)]`
-/

namespace A137873.P2230602622266216270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167840 (A005408 n - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A137873.P2230602622266216270

/-!
# A137874: Prime numbers, isolated from neighboring primes by >14.

The programs for A137874, the canonical program `A137874.P2737740016701994133` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137874 has offset 1).

The definition of A137874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137874.P2737740016701994133

`∩[A124587(n+1), A151800(A124587(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A137874

/-- `∩[A124587(n+1), A151800(A124587(n+1))]` -/
def P2737740016701994133.Spec : Prop :=
  ∀ n, (P2737740016701994133.a n : ℤ) = A137874 (n + 1)

theorem P2737740016701994133.correct : P2737740016701994133.Spec := by
  intro n
  simp only [A137874, Nat.add_sub_cancel]

end A137874

/-! ## A137874.P1330135287292418956

`∩[A003961(A124587(n+1)), A124587(n+2)]`
-/

namespace A137874.P1330135287292418956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A124587 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124587 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137874.P1330135287292418956

namespace A137874

/-- `∩[A003961(A124587(n+1)), A124587(n+2)]` -/
def P1330135287292418956.Spec : Prop :=
  ∀ n, (P1330135287292418956.a n : ℤ) = A137874 (n + 1)

end A137874

/-! ## A137874.P18152396741385883519

`A167840(lt[A167836(3*n+4), A167787(2*n+1)])`
-/

namespace A137874.P18152396741385883519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167836 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167787 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167840 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137874.P18152396741385883519

namespace A137874

/-- `A167840(lt[A167836(3*n+4), A167787(2*n+1)])` -/
def P18152396741385883519.Spec : Prop :=
  ∀ n, P18152396741385883519.a n = A137874 (n + 1)

end A137874

/-!
# A137875: Prime numbers, isolated from neighboring primes by >16.

The programs for A137875, there is no canonical definition to state claims against.
-/

/-! ## A137875.P17856494289899851113

`∩[A137874(n+1), A160058(n+1)]`
-/

namespace A137875.P17856494289899851113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137875.P17856494289899851113

/-! ## A137875.P4987223604980015356

`A280695(A330426(n+2))`
-/

namespace A137875.P4987223604980015356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280695 (A330426 (n + 2)).toNat

end

end A137875.P4987223604980015356

/-! ## A137875.P7713512763601847910

`A330426(A247239(∑[n+1]))`
-/

namespace A137875.P7713512763601847910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330426 (A247239 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A137875.P7713512763601847910

/-! ## A137875.P2596718520772720783

`A330426(A032555(n+1)+1)`
-/

namespace A137875.P2596718520772720783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330426 (A032555 (n + 1) + 1).toNat

end

end A137875.P2596718520772720783

/-! ## A137875.P9326133015713358223

`A330426(A032559(n+1)+1)`
-/

namespace A137875.P9326133015713358223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330426 (A032559 (n + 1) + 1).toNat

end

end A137875.P9326133015713358223

/-!
# A137876: a(n) = (nextprime(18n)-previousprime(18n))/2.

The programs for A137876, the canonical program `A137876.P7056768706059429066` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137876 has offset 1).

The definition of A137876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137876.P7056768706059429066

`A028334(A000720(18*(n+1)))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A137876

/-- `A028334(A000720(18*(n+1)))` -/
def P7056768706059429066.Spec : Prop :=
  ∀ n, P7056768706059429066.a n = A137876 (n + 1)

theorem P7056768706059429066.correct : P7056768706059429066.Spec := by
  intro n
  simp only [A137876, Nat.add_sub_cancel]

end A137876

/-! ## A137876.P15394630902991236071

`A060267(9*(n+1))/2`
-/

namespace A137876.P15394630902991236071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060267 (9 * (n + 1)) : ℚ) / 2

end

end A137876.P15394630902991236071

namespace A137876

/-- `A060267(9*(n+1))/2` -/
def P15394630902991236071.Spec : Prop :=
  ∀ n, P15394630902991236071.a n = (A137876 (n + 1) : ℚ)

end A137876

/-! ## A137876.P13788921768996238642

`A001281(A060267(9*(n+1)))`
-/

namespace A137876.P13788921768996238642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A060267 (9 * (n + 1))).toNat

end

end A137876.P13788921768996238642

namespace A137876

/-- `A001281(A060267(9*(n+1)))` -/
def P13788921768996238642.Spec : Prop :=
  ∀ n, P13788921768996238642.a n = A137876 (n + 1)

end A137876

/-! ## A137876.P8998440138802384847

`A033559(9*2*(n+1))`
-/

namespace A137876.P8998440138802384847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033559 (9 * (2 * (n + 1)))

end

end A137876.P8998440138802384847

namespace A137876

/-- `A033559(9*2*(n+1))` -/
def P8998440138802384847.Spec : Prop :=
  ∀ n, P8998440138802384847.a n = A137876 (n + 1)

end A137876

/-! ## A137876.P13879241384347068507

`A135023(3*(n+1))`
-/

namespace A137876.P13879241384347068507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135023 (3 * (n + 1))

end

end A137876.P13879241384347068507

namespace A137876

/-- `A135023(3*(n+1))` -/
def P13879241384347068507.Spec : Prop :=
  ∀ n, P13879241384347068507.a n = A137876 (n + 1)

end A137876

/-!
# A137877: Numbers k such that 18*k - 1 and 18*k + 1 are twin primes.

The programs for A137877, the canonical program `A137877.P18443067678914737995` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137877 has offset 1).

The definition of A137877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137877.P18443067678914737995

`∩[A111094(n+1), A138918(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137877

/-- `∩[A111094(n+1), A138918(n+1)]` -/
def P18443067678914737995.Spec : Prop :=
  ∀ n, (P18443067678914737995.a n : ℤ) = A137877 (n + 1)

theorem P18443067678914737995.correct : P18443067678914737995.Spec := by
  intro n
  simp only [A137877, Nat.add_sub_cancel]

end A137877

/-! ## A137877.P6996545710000392667

`eq[1, A137876(n+1)]+1`
-/

namespace A137877.P6996545710000392667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137876 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137877.P6996545710000392667

namespace A137877

/-- `eq[1, A137876(n+1)]+1` -/
def P6996545710000392667.Spec : Prop :=
  ∀ n, (P6996545710000392667.a n : ℤ) = A137877 (n + 1)

end A137877

/-! ## A137877.P10376609761556072129

`record[A000027(n+1)/A137876(n+1)]`
-/

namespace A137877.P10376609761556072129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A137876 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137877.P10376609761556072129

namespace A137877

/-- `record[A000027(n+1)/A137876(n+1)]` -/
def P10376609761556072129.Spec : Prop :=
  ∀ n, P10376609761556072129.a n = (A137877 (n + 1) : ℚ)

end A137877

/-! ## A137877.P17522759713415549828

`record[(n+1)/A063983(A137876(n+1)+1)]`
-/

namespace A137877.P17522759713415549828
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A063983 (A137876 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137877.P17522759713415549828

namespace A137877

/-- `record[(n+1)/A063983(A137876(n+1)+1)]` -/
def P17522759713415549828.Spec : Prop :=
  ∀ n, P17522759713415549828.a n = (A137877 (n + 1) : ℚ)

end A137877

/-! ## A137877.P13512170017670440096

`record[A028310(n)/A137876(A028310(n))]`
-/

namespace A137877.P13512170017670440096
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A137876 (A028310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137877.P13512170017670440096

namespace A137877

/-- `record[A028310(n)/A137876(A028310(n))]` -/
def P13512170017670440096.Spec : Prop :=
  ∀ n, P13512170017670440096.a n = (A137877 (n + 1) : ℚ)

end A137877

/-! ## A137877.P17460705029959299161

`record[A008619(n)/A137876(A008619(n))]`
-/

namespace A137877.P17460705029959299161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A137876 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137877.P17460705029959299161

namespace A137877

/-- `record[A008619(n)/A137876(A008619(n))]` -/
def P17460705029959299161.Spec : Prop :=
  ∀ n, P17460705029959299161.a n = (A137877 (n + 1) : ℚ)

end A137877

/-! ## A137877.P15387961555347757996

`record[A029579(2*n)/A137876(n+1)]`
-/

namespace A137877.P15387961555347757996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029579 (2 * n) : ℚ) / (A137876 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137877.P15387961555347757996

namespace A137877

/-- `record[A029579(2*n)/A137876(n+1)]` -/
def P15387961555347757996.Spec : Prop :=
  ∀ n, P15387961555347757996.a n = (A137877 (n + 1) : ℚ)

end A137877

/-! ## A137877.P7299986873257118442

`record[A032742(A004396(A002822(n+1)))]`
-/

namespace A137877.P7299986873257118442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A004396 (A002822 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137877.P7299986873257118442

namespace A137877

/-- `record[A032742(A004396(A002822(n+1)))]` -/
def P7299986873257118442.Spec : Prop :=
  ∀ n, P7299986873257118442.a n = A137877 (n + 1)

end A137877

/-! ## A137877.P11965353870661463086

`A056239(p?[A000040(n+1)*A137876(n+1)])`
-/

namespace A137877.P11965353870661463086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A137876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137877.P11965353870661463086

namespace A137877

/-- `A056239(p?[A000040(n+1)*A137876(n+1)])` -/
def P11965353870661463086.Spec : Prop :=
  ∀ n, P11965353870661463086.a n = A137877 (n + 1)

end A137877

/-! ## A137877.P5950181445490709380

`eq[2, A294185(9*n+1)]`
-/

namespace A137877.P5950181445490709380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (9 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137877.P5950181445490709380

namespace A137877

/-- `eq[2, A294185(9*n+1)]` -/
def P5950181445490709380.Spec : Prop :=
  ∀ n, (P5950181445490709380.a n : ℤ) = A137877 (n + 1)

end A137877

/-!
# A137878: Perfect squares among 17-gonal numbers A051869(k) = k*(15*k - 13)/2.

The programs for A137878, there is no canonical definition to state claims against.
-/

/-! ## A137878.P452933474125573399

`A137879(n+1)²`
-/

namespace A137878.P452933474125573399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137879 (n + 1) ^ 2

end

end A137878.P452933474125573399

/-! ## A137878.P11693125655260795055

`A137879(A032555(n+1))*A137879(n+1)`
-/

namespace A137878.P11693125655260795055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137879 (A032555 (n + 1)).toNat * A137879 (n + 1)

end

end A137878.P11693125655260795055

/-!
# A137879: Numbers k such that k^2 is a 17-gonal number.

The programs for A137879, there is no canonical definition to state claims against.
-/

/-! ## A137879.P13209219218163734373

`sqrt(A137878(n+1))`
-/

namespace A137879.P13209219218163734373
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A137878 (n + 1) : ℝ)

end

end A137879.P13209219218163734373

/-! ## A137879.P8893504048072785987

`root(A137878(n+1), ratio[A000079(n)])`
-/

namespace A137879.P8893504048072785987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A137878 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A137879.P8893504048072785987

/-! ## A137879.P12524768367953313100

`root(A137878(n+1), A020639(n^(n%2)+1))`
-/

namespace A137879.P12524768367953313100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A137878 (n + 1) : ℝ) ^ (1 / (A020639 (n ^ (n % 2) + 1) : ℝ))

end

end A137879.P12524768367953313100

/-! ## A137879.P1541200055645765247

`root(A137878(n+1), A001316(A001316(n)))`
-/

namespace A137879.P1541200055645765247
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A137878 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A137879.P1541200055645765247

/-!
# A137880: Indices k of perfect squares among 17-gonal numbers A051869(k) = k*(15*k - 13)/2.

The programs for A137880, the canonical program `A137880.P9737918691451441773` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137880 has offset 1).

The definition of A137880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137880.P9737918691451441773

`A137881(n+1)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137880

/-- `A137881(n+1)²` -/
def P9737918691451441773.Spec : Prop :=
  ∀ n, P9737918691451441773.a n = A137880 (n + 1)

theorem P9737918691451441773.correct : P9737918691451441773.Spec := by
  intro n
  simp only [A137880, Nat.add_sub_cancel]

end A137880

/-! ## A137880.P9955376094529579178

`A137881(n+1)^(2%A008574(n))`
-/

namespace A137880.P9955376094529579178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137881 (n + 1) : ℚ) ^ (Int.tmod 2 (A008574 n) : ℤ)

end

end A137880.P9955376094529579178

namespace A137880

/-- `A137881(n+1)^(2%A008574(n))` -/
def P9955376094529579178.Spec : Prop :=
  ∀ n, P9955376094529579178.a n = (A137880 (n + 1) : ℚ)

end A137880

/-! ## A137880.P10628120800623743624

`A137881(n+1)^A005811(A137688(n))`
-/

namespace A137880.P10628120800623743624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137881 (n + 1) : ℚ) ^ (A005811 (A137688 n).toNat : ℤ)

end

end A137880.P10628120800623743624

namespace A137880

/-- `A137881(n+1)^A005811(A137688(n))` -/
def P10628120800623743624.Spec : Prop :=
  ∀ n, P10628120800623743624.a n = (A137880 (n + 1) : ℚ)

end A137880

/-! ## A137880.P3731830883303428275

`A137881(n+1)^A000005(A014442(n+1))`
-/

namespace A137880.P3731830883303428275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137881 (n + 1) : ℚ) ^ (A000005 (A014442 (n + 1)).toNat : ℤ)

end

end A137880.P3731830883303428275

namespace A137880

/-- `A137881(n+1)^A000005(A014442(n+1))` -/
def P3731830883303428275.Spec : Prop :=
  ∀ n, P3731830883303428275.a n = (A137880 (n + 1) : ℚ)

end A137880

/-! ## A137880.P5670234697832174344

`A137881(n+1)^A000005(A093074(n+1))`
-/

namespace A137880.P5670234697832174344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137881 (n + 1) : ℚ) ^ (A000005 (A093074 (n + 1)).toNat : ℤ)

end

end A137880.P5670234697832174344

namespace A137880

/-- `A137881(n+1)^A000005(A093074(n+1))` -/
def P5670234697832174344.Spec : Prop :=
  ∀ n, P5670234697832174344.a n = (A137880 (n + 1) : ℚ)

end A137880

/-! ## A137880.P13366865736429557164

`A137881(n+1)^A000005(A137869(n+1))`
-/

namespace A137880.P13366865736429557164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137881 (n + 1) : ℚ) ^ (A000005 (A137869 (n + 1)).toNat : ℤ)

end

end A137880.P13366865736429557164

namespace A137880

/-- `A137881(n+1)^A000005(A137869(n+1))` -/
def P13366865736429557164.Spec : Prop :=
  ∀ n, P13366865736429557164.a n = (A137880 (n + 1) : ℚ)

end A137880

/-! ## A137880.P6119590652795283653

`A137881(n+1)^A000005(A137870(n+1))`
-/

namespace A137880.P6119590652795283653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137881 (n + 1) : ℚ) ^ (A000005 (A137870 (n + 1)).toNat : ℤ)

end

end A137880.P6119590652795283653

namespace A137880

/-- `A137881(n+1)^A000005(A137870(n+1))` -/
def P6119590652795283653.Spec : Prop :=
  ∀ n, P6119590652795283653.a n = (A137880 (n + 1) : ℚ)

end A137880

/-! ## A137880.P10538598829305125608

`A137881(n+1)^A000005(A137873(n+1))`
-/

namespace A137880.P10538598829305125608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137881 (n + 1) : ℚ) ^ (A000005 (A137873 (n + 1)).toNat : ℤ)

end

end A137880.P10538598829305125608

namespace A137880

/-- `A137881(n+1)^A000005(A137873(n+1))` -/
def P10538598829305125608.Spec : Prop :=
  ∀ n, P10538598829305125608.a n = (A137880 (n + 1) : ℚ)

end A137880

/-! ## A137880.P7861274766451988855

`A137881(n+1)^A020639(A137882(n+1))`
-/

namespace A137880.P7861274766451988855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137881 (n + 1) : ℚ) ^ (A020639 (A137882 (n + 1)).toNat : ℤ)

end

end A137880.P7861274766451988855

namespace A137880

/-- `A137881(n+1)^A020639(A137882(n+1))` -/
def P7861274766451988855.Spec : Prop :=
  ∀ n, P7861274766451988855.a n = (A137880 (n + 1) : ℚ)

end A137880

/-! ## A137880.P10673149912800210636

`A137881(A090109(n+1))*A137881(n+1)`
-/

namespace A137880.P10673149912800210636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137881 (A090109 (n + 1)).toNat * A137881 (n + 1)

end

end A137880.P10673149912800210636

namespace A137880

/-- `A137881(A090109(n+1))*A137881(n+1)` -/
def P10673149912800210636.Spec : Prop :=
  ∀ n, P10673149912800210636.a n = A137880 (n + 1)

end A137880

/-!
# A137881: a(n) = sqrt(A137880(n)).

The programs for A137881, the canonical program `A137881.P1222713376170156557` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137881 has offset 1).

The definition of A137881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137881.P1222713376170156557

`22*a(n-2)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=15, a(3)=153`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137881

/-- `22*a(n-2)-a(n-4)` -/
def P1222713376170156557.Spec : Prop :=
  ∀ n, P1222713376170156557.a n = A137881 (n + 1)

theorem P1222713376170156557.correct : P1222713376170156557.Spec := by
  intro n
  simp only [A137881, Nat.add_sub_cancel]

end A137881

/-! ## A137881.P10256733388573963304

`sqrt(A137880(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137881.P10256733388573963304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A137880 (n + 1) : ℝ)

end

end A137881.P10256733388573963304

namespace A137881

/-- `sqrt(A137880(n+1))` -/
def P10256733388573963304.Spec : Prop :=
  ∀ n, P10256733388573963304.a n = (A137881 (n + 1) : ℝ)

end A137881

/-! ## A137881.P14137583387998755518

`2*A103737(n+2)+1`
-/

namespace A137881.P14137583387998755518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103737 (n + 2) + 1

end

end A137881.P14137583387998755518

namespace A137881

/-- `2*A103737(n+2)+1` -/
def P14137583387998755518.Spec : Prop :=
  ∀ n, P14137583387998755518.a n = A137881 (n + 1)

end A137881

/-! ## A137881.P4910221988503561337

`root(A137880(n+1), ratio[A000079(n)])`
-/

namespace A137881.P4910221988503561337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A137880 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A137881.P4910221988503561337

namespace A137881

/-- `root(A137880(n+1), ratio[A000079(n)])` -/
def P4910221988503561337.Spec : Prop :=
  ∀ n, P4910221988503561337.a n = (A137881 (n + 1) : ℝ)

end A137881

/-! ## A137881.P4723549651490605870

`gcd(A137879(n+1), A137880(n+1))`
-/

namespace A137881.P4723549651490605870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137879 (n + 1)) (A137880 (n + 1))

end

end A137881.P4723549651490605870

namespace A137881

/-- `gcd(A137879(n+1), A137880(n+1))` -/
def P4723549651490605870.Spec : Prop :=
  ∀ n, (P4723549651490605870.a n : ℤ) = A137881 (n + 1)

end A137881

/-! ## A137881.P8877740617017256490

`root(A137880(n+1), A133265(A133265(n)))`
-/

namespace A137881.P8877740617017256490
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A137880 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A137881.P8877740617017256490

namespace A137881

/-- `root(A137880(n+1), A133265(A133265(n)))` -/
def P8877740617017256490.Spec : Prop :=
  ∀ n, P8877740617017256490.a n = (A137881 (n + 1) : ℝ)

end A137881

/-! ## A137881.P14347176675824951348

`root(A137880(n+1), A034444(A034444(n+1)))`
-/

namespace A137881.P14347176675824951348
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A137880 (n + 1) : ℝ) ^ (1 / (A034444 (A034444 (n + 1)).toNat : ℝ))

end

end A137881.P14347176675824951348

namespace A137881

/-- `root(A137880(n+1), A034444(A034444(n+1)))` -/
def P14347176675824951348.Spec : Prop :=
  ∀ n, P14347176675824951348.a n = (A137881 (n + 1) : ℝ)

end A137881

/-!
# A137882: Number of (directed) Hamiltonian paths in the n-ladder graph.

The programs for A137882, the canonical program `A137882.P18181495084628047159` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137882 has offset 1).

The definition of A137882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137882.P18181495084628047159

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=8, a(2)=16, a(3)=28`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137882

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P18181495084628047159.Spec : Prop :=
  ∀ n, P18181495084628047159.a n = A137882 (n + 1)

theorem P18181495084628047159.correct : P18181495084628047159.Spec := by
  intro n
  simp only [A137882, Nat.add_sub_cancel]

end A137882

/-! ## A137882.P14121105912803344844

`2*A003682(n+1)`
-/

namespace A137882.P14121105912803344844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003682 (n + 1)

end

end A137882.P14121105912803344844

namespace A137882

/-- `2*A003682(n+1)` -/
def P14121105912803344844.Spec : Prop :=
  ∀ n, P14121105912803344844.a n = A137882 (n + 1)

end A137882

/-! ## A137882.P5705246733454079701

`∑[2*round(2/acot(n))]`
-/

namespace A137882.P5705246733454079701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137882.P5705246733454079701

namespace A137882

/-- `∑[2*round(2/acot(n))]` -/
def P5705246733454079701.Spec : Prop :=
  ∀ n, P5705246733454079701.a n = A137882 (n + 1)

end A137882

/-! ## A137882.P5744019384864374192

`∑[a(n-1)+4]` with `a(0)=2, a(1)=6, a(2)=8`
-/

namespace A137882.P5744019384864374192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 8] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137882.P5744019384864374192

namespace A137882

/-- `∑[a(n-1)+4]` -/
def P5744019384864374192.Spec : Prop :=
  ∀ n, (P5744019384864374192.a n : ℤ) = A137882 (n + 1)

end A137882

/-! ## A137882.P18262058012676415277

`a(n-1)+4*n` with `a(0)=2, a(1)=8`
-/

namespace A137882.P18262058012676415277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 1) + 4 * n

end

end A137882.P18262058012676415277

namespace A137882

/-- `a(n-1)+4*n` -/
def P18262058012676415277.Spec : Prop :=
  ∀ n, (P18262058012676415277.a n : ℤ) = A137882 (n + 1)

end A137882

/-! ## A137882.P35315284222877060

`∑[ogf((2+2x-2x^2+2x^3)/(1-2x+x^2))]`
-/

namespace A137882.P35315284222877060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -2, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137882.P35315284222877060

namespace A137882

/-- `∑[ogf((2+2x-2x^2+2x^3)/(1-2x+x^2))]` -/
def P35315284222877060.Spec : Prop :=
  ∀ n, P35315284222877060.a n = A137882 (n + 1)

end A137882

/-! ## A137882.P7054690514633860554

`ogf((2+2x-2x^2+2x^3)/(1-3x+3x^2-x^3))`
-/

namespace A137882.P7054690514633860554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -2, 2] [1, -3, 3, -1] n

end

end A137882.P7054690514633860554

namespace A137882

/-- `ogf((2+2x-2x^2+2x^3)/(1-3x+3x^2-x^3))` -/
def P7054690514633860554.Spec : Prop :=
  ∀ n, P7054690514633860554.a n = A137882 (n + 1)

end A137882

/-! ## A137882.P7910970892335183154

`2*(∑[char[1]+2*n]+1)`
-/

namespace A137882.P7910970892335183154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A137882.P7910970892335183154

namespace A137882

/-- `2*(∑[char[1]+2*n]+1)` -/
def P7910970892335183154.Spec : Prop :=
  ∀ n, (P7910970892335183154.a n : ℤ) = A137882 (n + 1)

end A137882

/-! ## A137882.P4012036274402077822

`∑[n*4%a(n-1)]` with `a(0)=2, a(1)=6`
-/

namespace A137882.P4012036274402077822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  n * (4 % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137882.P4012036274402077822

namespace A137882

/-- `∑[n*4%a(n-1)]` -/
def P4012036274402077822.Spec : Prop :=
  ∀ n, (P4012036274402077822.a n : ℤ) = A137882 (n + 1)

end A137882

/-! ## A137882.P9240475787656565239

`∑[∪[4*(n+2), (n+2)!]]`
-/

namespace A137882.P9240475787656565239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137882.P9240475787656565239

namespace A137882

/-- `∑[∪[4*(n+2), (n+2)!]]` -/
def P9240475787656565239.Spec : Prop :=
  ∀ n, (P9240475787656565239.a n : ℤ) = A137882 (n + 1)

end A137882

/-! ## A137882.P11799167617515244474

`∑[2*(C(n, n²)+2*n)]`
-/

namespace A137882.P11799167617515244474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose n (n ^ 2) + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137882.P11799167617515244474

namespace A137882

/-- `∑[2*(C(n, n²)+2*n)]` -/
def P11799167617515244474.Spec : Prop :=
  ∀ n, (P11799167617515244474.a n : ℤ) = A137882 (n + 1)

end A137882

/-! ## A137882.P8369637450099591875

`∑[n*gcd(4, a(n-1))]` with `a(0)=2, a(1)=6, a(2)=8`
-/

namespace A137882.P8369637450099591875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 8] fun n f1 =>
  n * Nat.gcd 4 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137882.P8369637450099591875

namespace A137882

/-- `∑[n*gcd(4, a(n-1))]` -/
def P8369637450099591875.Spec : Prop :=
  ∀ n, (P8369637450099591875.a n : ℤ) = A137882 (n + 1)

end A137882

/-! ## A137882.P542046384366640097

`5*n-(n-a(n-1))` with `a(0)=2, a(1)=8`
-/

namespace A137882.P542046384366640097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  (5 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A137882.P542046384366640097

namespace A137882

/-- `5*n-(n-a(n-1))` -/
def P542046384366640097.Spec : Prop :=
  ∀ n, P542046384366640097.a n = A137882 (n + 1)

end A137882

/-! ## A137882.P6043110755953574427

`∑[4*n+2-2%(n+1)]`
-/

namespace A137882.P6043110755953574427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (2 - ((2 % (n + 1) : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137882.P6043110755953574427

namespace A137882

/-- `∑[4*n+2-2%(n+1)]` -/
def P6043110755953574427.Spec : Prop :=
  ∀ n, P6043110755953574427.a n = A137882 (n + 1)

end A137882

/-! ## A137882.P5926989968401001242

`(2*n+1)*(n+1)-(C(2, 2*n+1)+n-3)`
-/

namespace A137882.P5926989968401001242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 1) : ℤ) - ((Nat.choose 2 (2 * n + 1) : ℤ) + ((n : ℤ) - 3))

end

end A137882.P5926989968401001242

namespace A137882

/-- `(2*n+1)*(n+1)-(C(2, 2*n+1)+n-3)` -/
def P5926989968401001242.Spec : Prop :=
  ∀ n, P5926989968401001242.a n = A137882 (n + 1)

end A137882

/-! ## A137882.P4428058962198277243

`∑[2*A092535(n+1)]`
-/

namespace A137882.P4428058962198277243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137882.P4428058962198277243

namespace A137882

/-- `∑[2*A092535(n+1)]` -/
def P4428058962198277243.Spec : Prop :=
  ∀ n, P4428058962198277243.a n = A137882 (n + 1)

end A137882

/-! ## A137882.P8396780995283583903

`∑[A130706(n)+Δ[n²]]+n²`
-/

namespace A137882.P8396780995283583903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A137882.P8396780995283583903

namespace A137882

/-- `∑[A130706(n)+Δ[n²]]+n²` -/
def P8396780995283583903.Spec : Prop :=
  ∀ n, P8396780995283583903.a n = A137882 (n + 1)

end A137882

/-! ## A137882.P14718718535868063196

`∑[2*(and(1, A000010(n+1))+2*n)]`
-/

namespace A137882.P14718718535868063196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (Int.land 1 (A000010 (n + 1)) + (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137882.P14718718535868063196

namespace A137882

/-- `∑[2*(and(1, A000010(n+1))+2*n)]` -/
def P14718718535868063196.Spec : Prop :=
  ∀ n, P14718718535868063196.a n = A137882 (n + 1)

end A137882

/-! ## A137882.P4143359048981953777

`(2*n+1)*(n+2)-lt[A020639(2*n+1), 4]`
-/

namespace A137882.P4143359048981953777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 2) : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A137882.P4143359048981953777

namespace A137882

/-- `(2*n+1)*(n+2)-lt[A020639(2*n+1), 4]` -/
def P4143359048981953777.Spec : Prop :=
  ∀ n, P4143359048981953777.a n = A137882 (n + 1)

end A137882

/-! ## A137882.P17293959651227177931

`A046092(n)+A040002(n)`
-/

namespace A137882.P17293959651227177931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A040002 n

end

end A137882.P17293959651227177931

namespace A137882

/-- `A046092(n)+A040002(n)` -/
def P17293959651227177931.Spec : Prop :=
  ∀ n, P17293959651227177931.a n = A137882 (n + 1)

end A137882

/-!
# A137883: Number of (directed) Hamiltonian paths in the n-Möbius ladder graph.

The programs for A137883, the canonical program `A137883.P12504292286667318474` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137883 has offset 3).

The definition of A137883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137883.P12504292286667318474

`8*A246695(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137883

/-- `8*A246695(n+2)` -/
def P12504292286667318474.Spec : Prop :=
  ∀ n, P12504292286667318474.a n = A137883 (n + 3)

theorem P12504292286667318474.correct : P12504292286667318474.Spec := by
  intro n
  simp only [A137883, Nat.add_sub_cancel]

end A137883

/-! ## A137883.P2787599551269240458

`2*A020875(n+3)`
-/

namespace A137883.P2787599551269240458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020875 (n + 3)

end

end A137883.P2787599551269240458

namespace A137883

/-- `2*A020875(n+3)` -/
def P2787599551269240458.Spec : Prop :=
  ∀ n, P2787599551269240458.a n = A137883 (n + 3)

end A137883

/-! ## A137883.P1523500130669734159

`Δ[8*A307304(n+3)]`
-/

namespace A137883.P1523500130669734159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A307304 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137883.P1523500130669734159

namespace A137883

/-- `Δ[8*A307304(n+3)]` -/
def P1523500130669734159.Spec : Prop :=
  ∀ n, P1523500130669734159.a n = A137883 (n + 3)

end A137883

/-! ## A137883.P12720021075545160648

`4*(n+3)*A061925(n+3)`
-/

namespace A137883.P12720021075545160648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 3 : ℤ) * A061925 (n + 3))

end

end A137883.P12720021075545160648

namespace A137883

/-- `4*(n+3)*A061925(n+3)` -/
def P12720021075545160648.Spec : Prop :=
  ∀ n, P12720021075545160648.a n = A137883 (n + 3)

end A137883

/-! ## A137883.P556742500751935292

`A008574(n+3)*A061925(n+3)`
-/

namespace A137883.P556742500751935292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 3) * A061925 (n + 3)

end

end A137883.P556742500751935292

namespace A137883

/-- `A008574(n+3)*A061925(n+3)` -/
def P556742500751935292.Spec : Prop :=
  ∀ n, P556742500751935292.a n = A137883 (n + 3)

end A137883

/-! ## A137883.P10555882369092109831

`A144433(n+2)*A144433(A000982(n+3))`
-/

namespace A137883.P10555882369092109831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (n + 2) * A144433 (A000982 (n + 3)).toNat

end

end A137883.P10555882369092109831

namespace A137883

/-- `A144433(n+2)*A144433(A000982(n+3))` -/
def P10555882369092109831.Spec : Prop :=
  ∀ n, P10555882369092109831.a n = A137883 (n + 3)

end A137883

/-! ## A137883.P15294274736602348948

`(n+3)*A008586(A098180(A104563(n+3)))`
-/

namespace A137883.P15294274736602348948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A008586 (A098180 (A104563 (n + 3)).toNat).toNat

end

end A137883.P15294274736602348948

namespace A137883

/-- `(n+3)*A008586(A098180(A104563(n+3)))` -/
def P15294274736602348948.Spec : Prop :=
  ∀ n, P15294274736602348948.a n = A137883 (n + 3)

end A137883

/-!
# A137884: Number of (directed) Hamiltonian paths in the n-Andrásfai ladder graph.

The programs for A137884, there is no canonical definition to state claims against.
-/

/-! ## A137884.P11229990565733881908

`2*A307932(n+1)`
-/

namespace A137884.P11229990565733881908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307932 (n + 1)

end

end A137884.P11229990565733881908

/-! ## A137884.P594754994494129691

`A307932(A071785(n+1))+A307932(n+1)`
-/

namespace A137884.P594754994494129691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307932 (A071785 (n + 1)).toNat + A307932 (n + 1)

end

end A137884.P594754994494129691

/-! ## A137884.P5111676616138724761

`A307932(A246084(n+1))+A307932(n+1)`
-/

namespace A137884.P5111676616138724761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307932 (A246084 (n + 1)).toNat + A307932 (n + 1)

end

end A137884.P5111676616138724761

/-! ## A137884.P16865165361354924989

`A307932(n+1)+A307932(A346447(n+1))`
-/

namespace A137884.P16865165361354924989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307932 (n + 1) + A307932 (A346447 (n + 1)).toNat

end

end A137884.P16865165361354924989

/-! ## A137884.P16802382902594850258

`A307932(n+1)+gcd(A000038(n), A307932(n+1))`
-/

namespace A137884.P16802382902594850258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307932 (n + 1) + (Int.gcd (A000038 n) (A307932 (n + 1)) : ℤ)

end

end A137884.P16802382902594850258

/-!
# A137885: Number of directed Hamiltonian paths in the 2n-crossed prism graph.

The programs for A137885, the canonical program `A137885.P12562094174147591560` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137885 has offset 2).

The definition of A137885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137885.P12562094174147591560

`12*2^(n+1)*(n+2)*(n+3)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137885

/-- `12*2^(n+1)*(n+2)*(n+3)` -/
def P12562094174147591560.Spec : Prop :=
  ∀ n, (P12562094174147591560.a n : ℤ) = A137885 (n + 2)

theorem P12562094174147591560.correct : P12562094174147591560.Spec := by
  intro n
  simp only [A137885, Nat.add_sub_cancel]

end A137885

/-! ## A137885.P6922562799419129560

`abs(6*Δ[A196514(n+1)])`
-/

namespace A137885.P6922562799419129560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 * (f1 (n + 1) - f1 n)|

end

end A137885.P6922562799419129560

namespace A137885

/-- `abs(6*Δ[A196514(n+1)])` -/
def P6922562799419129560.Spec : Prop :=
  ∀ n, P6922562799419129560.a n = A137885 (n + 2)

end A137885

/-! ## A137885.P13643528657964274401

`A308136(n+2)+A308136(n+2)`
-/

namespace A137885.P13643528657964274401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308136 (n + 2) + A308136 (n + 2)

end

end A137885.P13643528657964274401

namespace A137885

/-- `A308136(n+2)+A308136(n+2)` -/
def P13643528657964274401.Spec : Prop :=
  ∀ n, P13643528657964274401.a n = A137885 (n + 2)

end A137885

/-! ## A137885.P14314969969183678268

`Δ[24*A055580(n)]`
-/

namespace A137885.P14314969969183678268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A055580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137885.P14314969969183678268

namespace A137885

/-- `Δ[24*A055580(n)]` -/
def P14314969969183678268.Spec : Prop :=
  ∀ n, P14314969969183678268.a n = A137885 (n + 2)

end A137885

/-! ## A137885.P13767162648930353196

`Δ[48*A340257(n)]`
-/

namespace A137885.P13767162648930353196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * A340257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137885.P13767162648930353196

namespace A137885

/-- `Δ[48*A340257(n)]` -/
def P13767162648930353196.Spec : Prop :=
  ∀ n, P13767162648930353196.a n = A137885 (n + 2)

end A137885

/-! ## A137885.P10590724002064620045

`Δ[6*A196514(n+1)]`
-/

namespace A137885.P10590724002064620045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A196514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137885.P10590724002064620045

namespace A137885

/-- `Δ[6*A196514(n+1)]` -/
def P10590724002064620045.Spec : Prop :=
  ∀ n, P10590724002064620045.a n = A137885 (n + 2)

end A137885

/-! ## A137885.P2697892866705765938

`4*A308136(n+2)/2`
-/

namespace A137885.P2697892866705765938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A308136 (n + 2) : ℚ) / 2

end

end A137885.P2697892866705765938

namespace A137885

/-- `4*A308136(n+2)/2` -/
def P2697892866705765938.Spec : Prop :=
  ∀ n, P2697892866705765938.a n = (A137885 (n + 2) : ℚ)

end A137885

/-! ## A137885.P3030201126777330317

`(n+2)*A059162(n+2)/2`
-/

namespace A137885.P3030201126777330317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A059162 (n + 2) : ℚ) / 2

end

end A137885.P3030201126777330317

namespace A137885

/-- `(n+2)*A059162(n+2)/2` -/
def P3030201126777330317.Spec : Prop :=
  ∀ n, P3030201126777330317.a n = (A137885 (n + 2) : ℚ)

end A137885

/-! ## A137885.P1090313851410158814

`Δ[Δ[A182461(n+1)]*A000124(n)]`
-/

namespace A137885.P1090313851410158814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182461 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137885.P1090313851410158814

namespace A137885

/-- `Δ[Δ[A182461(n+1)]*A000124(n)]` -/
def P1090313851410158814.Spec : Prop :=
  ∀ n, P1090313851410158814.a n = A137885 (n + 2)

end A137885

/-! ## A137885.P8178783101172897976

`3*A128985(n+3)/(n+3)`
-/

namespace A137885.P8178783101172897976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A128985 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A137885.P8178783101172897976

namespace A137885

/-- `3*A128985(n+3)/(n+3)` -/
def P8178783101172897976.Spec : Prop :=
  ∀ n, P8178783101172897976.a n = (A137885 (n + 2) : ℚ)

end A137885

/-!
# A137886: Number of (directed) Hamiltonian paths in the n-crown graph.

The programs for A137886, the canonical program `A137886.P14455541681682241129` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137886 has offset 3).

The definition of A137886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137886.P14455541681682241129

`2*(n+3)!*A000271(n+3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137886

/-- `2*(n+3)!*A000271(n+3)` -/
def P14455541681682241129.Spec : Prop :=
  ∀ n, P14455541681682241129.a n = A137886 (n + 3)

theorem P14455541681682241129.correct : P14455541681682241129.Spec := by
  intro n
  simp only [A137886, Nat.add_sub_cancel]

end A137886

/-! ## A137886.P17710664145493408331

`A059375(n+3)+(n+3)*a(n-1)` with `a(0)=12`
-/

namespace A137886.P17710664145493408331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  A059375 (n + 3) + (n + 3 : ℤ) * a (n - 1)

end

end A137886.P17710664145493408331

namespace A137886

/-- `A059375(n+3)+(n+3)*a(n-1)` -/
def P17710664145493408331.Spec : Prop :=
  ∀ n, P17710664145493408331.a n = A137886 (n + 3)

end A137886

/-! ## A137886.P16290980985258970257

`2*(n+3)*A094047(n+3)+(n+3)*a(n-1)` with `a(0)=12`
-/

namespace A137886.P16290980985258970257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  (2 * (n + 3) : ℤ) * A094047 (n + 3) + (n + 3 : ℤ) * a (n - 1)

end

end A137886.P16290980985258970257

namespace A137886

/-- `2*(n+3)*A094047(n+3)+(n+3)*a(n-1)` -/
def P16290980985258970257.Spec : Prop :=
  ∀ n, P16290980985258970257.a n = A137886 (n + 3)

end A137886

/-! ## A137886.P16421130486758356423

`2*A259212(n+4)`
-/

namespace A137886.P16421130486758356423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259212 (n + 4)

end

end A137886.P16421130486758356423

namespace A137886

/-- `2*A259212(n+4)` -/
def P16421130486758356423.Spec : Prop :=
  ∀ n, P16421130486758356423.a n = A137886 (n + 3)

end A137886

/-! ## A137886.P8723845255538806642

`record[A000271(n)]*A098558(n+3)`
-/

namespace A137886.P8723845255538806642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A098558 (n + 3)

end

end A137886.P8723845255538806642

namespace A137886

/-- `record[A000271(n)]*A098558(n+3)` -/
def P8723845255538806642.Spec : Prop :=
  ∀ n, P8723845255538806642.a n = A137886 (n + 3)

end A137886

/-!
# A137887: Number of directed Hamiltonian paths in the n-folded cube graph.

The programs for A137887, there is no canonical definition to state claims against.
-/

/-! ## A137887.P14609467289244620472

`2*A307948(n+2)`
-/

namespace A137887.P14609467289244620472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307948 (n + 2)

end

end A137887.P14609467289244620472

/-!
# A137888: Number of directed Hamiltonian paths in the n-halved cube graph.

The programs for A137888, there is no canonical definition to state claims against.
-/

/-! ## A137888.P18018598776729598143

`2*A308130(n+1)`
-/

namespace A137888.P18018598776729598143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308130 (n + 1)

end

end A137888.P18018598776729598143

/-!
# A137889: Number of directed Hamiltonian paths in the n-Hanoi graph.

The programs for A137889, the canonical program `A137889.P8034579999087538681` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137889 has offset 1).

The definition of A137889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137889.P8034579999087538681

`(208+16*3^(n+3)+13*4^(n+3)+25*16^(n+1))/312`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137889

/-- `(208+16*3^(n+3)+13*4^(n+3)+25*16^(n+1))/312` -/
def P8034579999087538681.Spec : Prop :=
  ∀ n, P8034579999087538681.a n = (A137889 (n + 1) : ℚ)

end A137889

/-! ## A137889.P17245681344672931453

`2*A308134(n+1)`
-/

namespace A137889.P17245681344672931453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308134 (n + 1)

end

end A137889.P17245681344672931453

namespace A137889

/-- `2*A308134(n+1)` -/
def P17245681344672931453.Spec : Prop :=
  ∀ n, P17245681344672931453.a n = A137889 (n + 1)

end A137889

/-! ## A137889.P8475918202550994715

`A308134(C(n+1, n))+A308134(n+1)`
-/

namespace A137889.P8475918202550994715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308134 (Nat.choose (n + 1) n) + A308134 (n + 1)

end

end A137889.P8475918202550994715

namespace A137889

/-- `A308134(C(n+1, n))+A308134(n+1)` -/
def P8475918202550994715.Spec : Prop :=
  ∀ n, P8475918202550994715.a n = A137889 (n + 1)

end A137889

/-! ## A137889.P5368284296329735877

`A308134(A000027(n+1))+A308134(n+1)`
-/

namespace A137889.P5368284296329735877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308134 (A000027 (n + 1)).toNat + A308134 (n + 1)

end

end A137889.P5368284296329735877

namespace A137889

/-- `A308134(A000027(n+1))+A308134(n+1)` -/
def P5368284296329735877.Spec : Prop :=
  ∀ n, P5368284296329735877.a n = A137889 (n + 1)

end A137889

/-!
# A137890: Number of directed Hamiltonian paths in the n-Mycielski graph.

The programs for A137890, there is no canonical definition to state claims against.
-/

/-! ## A137890.P15253448958625206647

`2*A308132(n+1)`
-/

namespace A137890.P15253448958625206647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308132 (n + 1)

end

end A137890.P15253448958625206647

/-!
# A137892: Number of directed Hamiltonian paths in the n-triangular graph.

The programs for A137892, there is no canonical definition to state claims against.
-/

/-! ## A137892.P5711712025394368383

`2*A308142(n+1)`
-/

namespace A137892.P5711712025394368383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308142 (n + 1)

end

end A137892.P5711712025394368383

/-!
# A137893: Fixed point of the morphism 0->100, 1->101, starting from a(1) = 1.

The programs for A137893, the canonical program `A137893.P5279872751976216164` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137893 has offset 1).

The definition of A137893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137893.P16580643716489472531

`2-((n+1)/3^val(n+1, 3))%3`
-/

namespace A137893.P16580643716489472531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) 3

end

end A137893.P16580643716489472531

namespace A137893

/-- `2-((n+1)/3^val(n+1, 3))%3` -/
def P16580643716489472531.Spec : Prop :=
  ∀ n, P16580643716489472531.a n = A137893 (n + 1)

end A137893

/-! ## A137893.P5279872751976216164

`1-A080846(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137893

/-- `1-A080846(n+1)` -/
def P5279872751976216164.Spec : Prop :=
  ∀ n, P5279872751976216164.a n = A137893 (n + 1)

theorem P5279872751976216164.correct : P5279872751976216164.Spec := by
  intro n
  simp only [A137893, Nat.add_sub_cancel]

end A137893

/-! ## A137893.P587912843833587440

`2-A060236(n+1)`
-/

namespace A137893.P587912843833587440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A060236 (n + 1)

end

end A137893.P587912843833587440

namespace A137893

/-- `2-A060236(n+1)` -/
def P587912843833587440.Spec : Prop :=
  ∀ n, P587912843833587440.a n = A137893 (n + 1)

end A137893

/-! ## A137893.P2642948019395998470

`A140316(n+1)%2`
-/

namespace A137893.P2642948019395998470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140316 (n + 1)) 2

end

end A137893.P2642948019395998470

namespace A137893

/-- `A140316(n+1)%2` -/
def P2642948019395998470.Spec : Prop :=
  ∀ n, P2642948019395998470.a n = A137893 (n + 1)

end A137893

/-! ## A137893.P16078146289897687462

`A056789(n+1)%3`
-/

namespace A137893.P16078146289897687462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056789 (n + 1)) 3

end

end A137893.P16078146289897687462

namespace A137893

/-- `A056789(n+1)%3` -/
def P16078146289897687462.Spec : Prop :=
  ∀ n, P16078146289897687462.a n = A137893 (n + 1)

end A137893

/-! ## A137893.P7181693203998003812

`1-abs(Δ[A136690(n)])`
-/

namespace A137893.P7181693203998003812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |f1 (n + 1) - f1 n|

end

end A137893.P7181693203998003812

namespace A137893

/-- `1-abs(Δ[A136690(n)])` -/
def P7181693203998003812.Spec : Prop :=
  ∀ n, P7181693203998003812.a n = A137893 (n + 1)

end A137893

/-! ## A137893.P6626186034389159165

`ceil(1/A134028(n+1))`
-/

namespace A137893.P6626186034389159165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A134028 (n + 1) : ℚ)⌉

end

end A137893.P6626186034389159165

namespace A137893

/-- `ceil(1/A134028(n+1))` -/
def P6626186034389159165.Spec : Prop :=
  ∀ n, P6626186034389159165.a n = A137893 (n + 1)

end A137893

/-! ## A137893.P3346109179415759459

`char[A026140(n+1)-1]`
-/

namespace A137893.P3346109179415759459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A137893.P3346109179415759459

namespace A137893

/-- `char[A026140(n+1)-1]` -/
def P3346109179415759459.Spec : Prop :=
  ∀ n, (P3346109179415759459.a n : ℤ) = A137893 (n + 1)

end A137893

/-! ## A137893.P7943557797433224494

`char[A026225(n+1)-1]`
-/

namespace A137893.P7943557797433224494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A137893.P7943557797433224494

namespace A137893

/-- `char[A026225(n+1)-1]` -/
def P7943557797433224494.Spec : Prop :=
  ∀ n, (P7943557797433224494.a n : ℤ) = A137893 (n + 1)

end A137893

/-! ## A137893.P6257379150207214580

`char[A026138(n+1)-2]`
-/

namespace A137893.P6257379150207214580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A137893.P6257379150207214580

namespace A137893

/-- `char[A026138(n+1)-2]` -/
def P6257379150207214580.Spec : Prop :=
  ∀ n, (P6257379150207214580.a n : ℤ) = A137893 (n + 1)

end A137893

/-! ## A137893.P9817699889166891453

`char[lt[n, A026215(n+1)]]`
-/

namespace A137893.P9817699889166891453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026215 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A137893.P9817699889166891453

namespace A137893

/-- `char[lt[n, A026215(n+1)]]` -/
def P9817699889166891453.Spec : Prop :=
  ∀ n, (P9817699889166891453.a n : ℤ) = A137893 (n + 1)

end A137893

/-! ## A137893.P7192222147100630121

`(A343785(n+1)+1)/2`
-/

namespace A137893.P7192222147100630121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343785 (n + 1) + 1 : ℚ) / 2

end

end A137893.P7192222147100630121

namespace A137893

/-- `(A343785(n+1)+1)/2` -/
def P7192222147100630121.Spec : Prop :=
  ∀ n, P7192222147100630121.a n = (A137893 (n + 1) : ℚ)

end A137893

/-! ## A137893.P3235177205108977181

`and(1, A319444(n+1)+1)`
-/

namespace A137893.P3235177205108977181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A319444 (n + 1) + 1)

end

end A137893.P3235177205108977181

namespace A137893

/-- `and(1, A319444(n+1)+1)` -/
def P3235177205108977181.Spec : Prop :=
  ∀ n, P3235177205108977181.a n = A137893 (n + 1)

end A137893

/-! ## A137893.P15441511192215160352

`char[∑[A026141(n+2)]-1]`
-/

namespace A137893.P15441511192215160352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026141 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A137893.P15441511192215160352

namespace A137893

/-- `char[∑[A026141(n+2)]-1]` -/
def P15441511192215160352.Spec : Prop :=
  ∀ n, (P15441511192215160352.a n : ℤ) = A137893 (n + 1)

end A137893

/-! ## A137893.P4146739228897280609

`char[record[A026178(n+1)-1]]`
-/

namespace A137893.P4146739228897280609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026178 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A137893.P4146739228897280609

namespace A137893

/-- `char[record[A026178(n+1)-1]]` -/
def P4146739228897280609.Spec : Prop :=
  ∀ n, (P4146739228897280609.a n : ℤ) = A137893 (n + 1)

end A137893

/-! ## A137893.P13116141006935658958

`1-A116178(A004488(n))`
-/

namespace A137893.P13116141006935658958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A116178 (A004488 n).toNat

end

end A137893.P13116141006935658958

namespace A137893

/-- `1-A116178(A004488(n))` -/
def P13116141006935658958.Spec : Prop :=
  ∀ n, P13116141006935658958.a n = A137893 (n + 1)

end A137893

/-! ## A137893.P11856934035857883367

`A112149(1-Δ[A062756(n)])`
-/

namespace A137893.P11856934035857883367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112149 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A137893.P11856934035857883367

namespace A137893

/-- `A112149(1-Δ[A062756(n)])` -/
def P11856934035857883367.Spec : Prop :=
  ∀ n, P11856934035857883367.a n = A137893 (n + 1)

end A137893

/-! ## A137893.P7314130336758709003

`A060236(n+1)%A010133(n)`
-/

namespace A137893.P7314130336758709003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060236 (n + 1)) (A010133 n)

end

end A137893.P7314130336758709003

namespace A137893

/-- `A060236(n+1)%A010133(n)` -/
def P7314130336758709003.Spec : Prop :=
  ∀ n, P7314130336758709003.a n = A137893 (n + 1)

end A137893

/-! ## A137893.P7373362668759769192

`and(A000328(n), A060236(n+1))`
-/

namespace A137893.P7373362668759769192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A060236 (n + 1))

end

end A137893.P7373362668759769192

namespace A137893

/-- `and(A000328(n), A060236(n+1))` -/
def P7373362668759769192.Spec : Prop :=
  ∀ n, P7373362668759769192.a n = A137893 (n + 1)

end A137893

/-!
# A137894: Limiting sequence when we start with positive integers (A000027) and at step n >= 1 add to the term at position n + a(n) the value n.

The programs for A137894, there is no canonical definition to state claims against.
-/

/-! ## A137894.P1218458035052486709

`A319864(A029447(n+3))+n`
-/

namespace A137894.P1218458035052486709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319864 (A029447 (n + 3)).toNat + (n : ℤ)

end

end A137894.P1218458035052486709

/-!
# A137895: Products of two or more consecutive numbers that do not have prime gaps in their factorizations.

The programs for A137895, there is no canonical definition to state claims against.
-/

/-! ## A137895.P12090780307891033414

`∩[A045619(n+1), A055932(n+1)]`
-/

namespace A137895.P12090780307891033414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137895.P12090780307891033414

/-! ## A137895.P10675211219134218202

`∩[A045619(n+1), A304450(n+1)]`
-/

namespace A137895.P10675211219134218202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137895.P10675211219134218202

/-! ## A137895.P14686580646070286842

`filter[A045619(n+2), A137794(#)]`
-/

namespace A137895.P14686580646070286842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A137895.P14686580646070286842

/-! ## A137895.P6624249789139239552

`filter[A045619(n+2), A341629(#)]`
-/

namespace A137895.P6624249789139239552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A137895.P6624249789139239552

/-! ## A137895.P2981870814968666692

`∩[A045619(n+1), A066311(n+1)]`
-/

namespace A137895.P2981870814968666692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137895.P2981870814968666692

/-!
# A137896: Numerators of a rational triangle related to 1/sqrt(1-x).

The programs for A137896, there is no canonical definition to state claims against.
-/

/-! ## A137896.P18170367347183323560

`A008459(n)/gcd(A008459(n), A086645(n))`
-/

namespace A137896.P18170367347183323560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008459 n : ℚ) / (Int.gcd (A008459 n) (A086645 n) : ℚ)

end

end A137896.P18170367347183323560

/-! ## A137896.P6058111016514923297

`A117852(n)/gcd(A046521(n), A117852(n))`
-/

namespace A137896.P6058111016514923297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117852 n : ℚ) / (Int.gcd (A046521 n) (A117852 n) : ℚ)

end

end A137896.P6058111016514923297

/-! ## A137896.P5349566304827888515

`lcm(A155495(n), A181543(n))/A155495(n)`
-/

namespace A137896.P5349566304827888515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A155495 n) (A181543 n) : ℚ) / (A155495 n : ℚ)

end

end A137896.P5349566304827888515

/-! ## A137896.P12330244422421131428

`A322261(A180959(n))`
-/

namespace A137896.P12330244422421131428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322261 (A180959 n).toNat

end

end A137896.P12330244422421131428

/-! ## A137896.P16135488824146104653

`A181834(A023936(n))+A007318(n)`
-/

namespace A137896.P16135488824146104653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 (A023936 n).toNat + A007318 n

end

end A137896.P16135488824146104653

/-!
# A137897: Denominators of a rational triangle related to 1/sqrt(1-x).

The programs for A137897, there is no canonical definition to state claims against.
-/

/-! ## A137897.P16068117456997567664

`A086645(n)/A008459(n)*A137896(n)`
-/

namespace A137897.P16068117456997567664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086645 n : ℚ) / (A008459 n : ℚ) * (A137896 n : ℚ)

end

end A137897.P16068117456997567664

/-! ## A137897.P3318942545685794016

`A046521(n)/gcd(A046521(n), A117852(n))`
-/

namespace A137897.P3318942545685794016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046521 n : ℚ) / (Int.gcd (A046521 n) (A117852 n) : ℚ)

end

end A137897.P3318942545685794016

/-! ## A137897.P2848724991819900455

`A086645(n)/gcd(A086645(n), A181543(n))`
-/

namespace A137897.P2848724991819900455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086645 n : ℚ) / (Int.gcd (A086645 n) (A181543 n) : ℚ)

end

end A137897.P2848724991819900455

/-! ## A137897.P6091178617402338976

`A155495(n)/gcd(A155495(n), A219207(n))`
-/

namespace A137897.P6091178617402338976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155495 n : ℚ) / (Int.gcd (A155495 n) (A219207 n) : ℚ)

end

end A137897.P6091178617402338976

/-! ## A137897.P2384061117121533372

`lcm(A155495(n), A181543(n))/A181543(n)`
-/

namespace A137897.P2384061117121533372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A155495 n) (A181543 n) : ℚ) / (A181543 n : ℚ)

end

end A137897.P2384061117121533372

/-!
# A137899: Number of partitions of n into products of at least two consecutive positive integers.

The programs for A137899, there is no canonical definition to state claims against.
-/

/-! ## A137899.P5450047068296450769

`A001222(5^Δ[A349675(n)])`
-/

namespace A137899.P5450047068296450769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A137899.P5450047068296450769

/-! ## A137899.P5979944171884017634

`Δ[A349675(n)]%A019541(n)`
-/

namespace A137899.P5979944171884017634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A019541 n)

end

end A137899.P5979944171884017634

/-! ## A137899.P10177581744680602048

`A000005(5^Δ[A349675(n)])-1`
-/

namespace A137899.P10177581744680602048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat - 1

end

end A137899.P10177581744680602048

/-! ## A137899.P778034969337633122

`Δ[A349675(n)%A240206(2*n+3)]`
-/

namespace A137899.P778034969337633122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349675 n) (A240206 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137899.P778034969337633122

/-! ## A137899.P16788888852771122802

`A000120(A000720(n+1)!*and(1, n))`
-/

namespace A137899.P16788888852771122802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.factorial (A000720 (n + 1)).toNat * Nat.land 1 n)

end

end A137899.P16788888852771122802

