import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A037900: a(n) = (greatest base 6 digit of n) - (least base 6 digit of n).

The programs for A037900, the canonical program `A037900.P16575293136556555985` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037900 has offset 0).

The definition of A037900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037900.P3791861485192376025

`A037901(A020657(n+1))`
-/

namespace A037900.P3791861485192376025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037901 (A020657 (n + 1)).toNat

end

end A037900.P3791861485192376025

namespace A037900

/-- `A037901(A020657(n+1))` -/
def P3791861485192376025.Spec : Prop :=
  ∀ n, P3791861485192376025.a n = A037900 n

end A037900

/-! ## A037900.P16575293136556555985

`A037902(A037471(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A037900

/-- `A037902(A037471(n))` -/
def P16575293136556555985.Spec : Prop :=
  ∀ n, P16575293136556555985.a n = A037900 n

theorem P16575293136556555985.correct : P16575293136556555985.Spec := by
  intro n
  simp only [A037900]

end A037900

/-! ## A037900.P9176106605820169508

`A037903(A037472(n))`
-/

namespace A037900.P9176106605820169508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037903 (A037472 n).toNat

end

end A037900.P9176106605820169508

namespace A037900

/-- `A037903(A037472(n))` -/
def P9176106605820169508.Spec : Prop :=
  ∀ n, P9176106605820169508.a n = A037900 n

end A037900

/-! ## A037900.P7750901005977612968

`A165052(n)%6`
-/

namespace A037900.P7750901005977612968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165052 n) 6

end

end A037900.P7750901005977612968

namespace A037900

/-- `A165052(n)%6` -/
def P7750901005977612968.Spec : Prop :=
  ∀ n, P7750901005977612968.a n = A037900 n

end A037900

/-! ## A037900.P10608358927421091295

`A010875(A165052(n))`
-/

namespace A037900.P10608358927421091295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A165052 n).toNat

end

end A037900.P10608358927421091295

namespace A037900

/-- `A010875(A165052(n))` -/
def P10608358927421091295.Spec : Prop :=
  ∀ n, P10608358927421091295.a n = A037900 n

end A037900

/-!
# A037901: a(n) = (greatest base 7 digit of n) - (least base 7 digit of n).

The programs for A037901, the canonical program `A037901.P168157209653283931` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037901 has offset 0).

The definition of A037901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037901.P11198363111230474260

`A037902(A037474(n))`
-/

namespace A037901.P11198363111230474260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037902 (A037474 n).toNat

end

end A037901.P11198363111230474260

namespace A037901

/-- `A037902(A037474(n))` -/
def P11198363111230474260.Spec : Prop :=
  ∀ n, P11198363111230474260.a n = A037901 n

end A037901

/-! ## A037901.P168157209653283931

`A037903(A037475(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A037901

/-- `A037903(A037475(n))` -/
def P168157209653283931.Spec : Prop :=
  ∀ n, P168157209653283931.a n = A037901 n

theorem P168157209653283931.correct : P168157209653283931.Spec := by
  intro n
  simp only [A037901]

end A037901

/-! ## A037901.P5894979382764768462

`A165072(n)%7`
-/

namespace A037901.P5894979382764768462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165072 n) 7

end

end A037901.P5894979382764768462

namespace A037901

/-- `A165072(n)%7` -/
def P5894979382764768462.Spec : Prop :=
  ∀ n, P5894979382764768462.a n = A037901 n

end A037901

/-! ## A037901.P15361685790552072199

`A010876(A165072(n))`
-/

namespace A037901.P15361685790552072199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A165072 n).toNat

end

end A037901.P15361685790552072199

namespace A037901

/-- `A010876(A165072(n))` -/
def P15361685790552072199.Spec : Prop :=
  ∀ n, P15361685790552072199.a n = A037901 n

end A037901

/-! ## A037901.P17846629936246887415

`A130103(A165071(n))%7`
-/

namespace A037901.P17846629936246887415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130103 (A165071 n).toNat) 7

end

end A037901.P17846629936246887415

namespace A037901

/-- `A130103(A165071(n))%7` -/
def P17846629936246887415.Spec : Prop :=
  ∀ n, P17846629936246887415.a n = A037901 n

end A037901

/-! ## A037901.P3213691088501907617

`A064834(A171596(n))`
-/

namespace A037901.P3213691088501907617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A171596 n).toNat

end

end A037901.P3213691088501907617

namespace A037901

/-- `A064834(A171596(n))` -/
def P3213691088501907617.Spec : Prop :=
  ∀ n, P3213691088501907617.a n = A037901 n

end A037901

/-!
# A037902: a(n) = (greatest base 8 digit of n) - (least base 8 digit of n).

The programs for A037902, the canonical program `A037902.P1383739155493034329` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037902 has offset 0).

The definition of A037902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037902.P1383739155493034329

`A037903(A037477(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A037902

/-- `A037903(A037477(n))` -/
def P1383739155493034329.Spec : Prop :=
  ∀ n, P1383739155493034329.a n = A037902 n

theorem P1383739155493034329.correct : P1383739155493034329.Spec := by
  intro n
  simp only [A037902]

end A037902

/-! ## A037902.P16543852702172879324

`A165091(n)%8`
-/

namespace A037902.P16543852702172879324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165091 n) 8

end

end A037902.P16543852702172879324

namespace A037902

/-- `A165091(n)%8` -/
def P16543852702172879324.Spec : Prop :=
  ∀ n, P16543852702172879324.a n = A037902 n

end A037902

/-!
# A037903: a(n) = (greatest base 9 digit of n) - (least base 9 digit of n).

The programs for A037903, the canonical program `A037903.P7439451824534172886` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037903 has offset 0).

The definition of A037903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037903.P1196057698607373746

`A165111(n)%9`
-/

namespace A037903.P1196057698607373746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165111 n) 9

end

end A037903.P1196057698607373746

namespace A037903

/-- `A165111(n)%9` -/
def P1196057698607373746.Spec : Prop :=
  ∀ n, P1196057698607373746.a n = A037903 n

end A037903

/-! ## A037903.P7439451824534172886

`A037904(A007095(n)+floor(1/(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A037903

/-- `A037904(A007095(n)+floor(1/(n+1)))` -/
def P7439451824534172886.Spec : Prop :=
  ∀ n, P7439451824534172886.a n = A037903 n

theorem P7439451824534172886.correct : P7439451824534172886.Spec := by
  intro n
  simp only [A037903]

end A037903

/-! ## A037903.P2428574434936386914

`A037904(A007095(A000007(n)+n))`
-/

namespace A037903.P2428574434936386914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A007095 (A000007 n + (n : ℤ)).toNat).toNat

end

end A037903.P2428574434936386914

namespace A037903

/-- `A037904(A007095(A000007(n)+n))` -/
def P2428574434936386914.Spec : Prop :=
  ∀ n, P2428574434936386914.a n = A037903 n

end A037903

/-! ## A037903.P6527154747388582261

`A037904(xor(A000007(n), A007095(n)))`
-/

namespace A037903.P6527154747388582261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (Int.xor (A000007 n) (A007095 n)).toNat

end

end A037903.P6527154747388582261

namespace A037903

/-- `A037904(xor(A000007(n), A007095(n)))` -/
def P6527154747388582261.Spec : Prop :=
  ∀ n, P6527154747388582261.a n = A037903 n

end A037903

/-! ## A037903.P9373814346425985139

`A010888(98*A165110(n))`
-/

namespace A037903.P9373814346425985139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (98 * A165110 n).toNat

end

end A037903.P9373814346425985139

namespace A037903

/-- `A010888(98*A165110(n))` -/
def P9373814346425985139.Spec : Prop :=
  ∀ n, P9373814346425985139.a n = A037903 n

end A037903

/-! ## A037903.P11545097438581992326

`A265556(n)-A319726(n)`
-/

namespace A037903.P11545097438581992326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n - A319726 n

end

end A037903.P11545097438581992326

namespace A037903

/-- `A265556(n)-A319726(n)` -/
def P11545097438581992326.Spec : Prop :=
  ∀ n, P11545097438581992326.a n = A037903 n

end A037903

/-!
# A037904: Greatest digit of n - least digit of n.

The programs for A037904, the canonical program `A037904.P3734509193850289562` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037904 has offset 1).

The definition of A037904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037904.P3365546786012025066

`A037860(A004186(n+1))`
-/

namespace A037904.P3365546786012025066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A004186 (n + 1)).toNat

end

end A037904.P3365546786012025066

namespace A037904

/-- `A037860(A004186(n+1))` -/
def P3365546786012025066.Spec : Prop :=
  ∀ n, P3365546786012025066.a n = A037904 (n + 1)

end A037904

/-! ## A037904.P17093805479443652809

`A037860(A073730(n+1))`
-/

namespace A037904.P17093805479443652809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A073730 (n + 1)).toNat

end

end A037904.P17093805479443652809

namespace A037904

/-- `A037860(A073730(n+1))` -/
def P17093805479443652809.Spec : Prop :=
  ∀ n, P17093805479443652809.a n = A037904 (n + 1)

end A037904

/-! ## A037904.P1199190623811554138

`A037860(A227362(n+1))`
-/

namespace A037904.P1199190623811554138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A227362 (n + 1)).toNat

end

end A037904.P1199190623811554138

namespace A037904

/-- `A037860(A227362(n+1))` -/
def P1199190623811554138.Spec : Prop :=
  ∀ n, P1199190623811554138.a n = A037904 (n + 1)

end A037904

/-! ## A037904.P3734509193850289562

`A054055(n+1)-A054054(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A037904

/-- `A054055(n+1)-A054054(n+1)` -/
def P3734509193850289562.Spec : Prop :=
  ∀ n, P3734509193850289562.a n = A037904 (n + 1)

theorem P3734509193850289562.correct : P3734509193850289562.Spec := by
  intro n
  simp only [A037904, Nat.add_sub_cancel]

end A037904

/-! ## A037904.P11016341073691136842

`A095815(n+1)-(A054054(n+1)+n+1)`
-/

namespace A037904.P11016341073691136842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095815 (n + 1) - (A054054 (n + 1) + (n + 1 : ℤ))

end

end A037904.P11016341073691136842

namespace A037904

/-- `A095815(n+1)-(A054054(n+1)+n+1)` -/
def P11016341073691136842.Spec : Prop :=
  ∀ n, P11016341073691136842.a n = A037904 (n + 1)

end A037904

/-! ## A037904.P9811036471420459133

`A007954(A095815(n+1)%(A054054(n+1)+n+1))`
-/

namespace A037904.P9811036471420459133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Int.tmod (A095815 (n + 1)) (A054054 (n + 1) + (n + 1 : ℤ))).toNat

end

end A037904.P9811036471420459133

namespace A037904

/-- `A007954(A095815(n+1)%(A054054(n+1)+n+1))` -/
def P9811036471420459133.Spec : Prop :=
  ∀ n, P9811036471420459133.a n = A037904 (n + 1)

end A037904

/-! ## A037904.P10616963031679833284

`A000030(A347689(n+1))`
-/

namespace A037904.P10616963031679833284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A347689 (n + 1)).toNat

end

end A037904.P10616963031679833284

namespace A037904

/-- `A000030(A347689(n+1))` -/
def P10616963031679833284.Spec : Prop :=
  ∀ n, P10616963031679833284.a n = A037904 (n + 1)

end A037904

/-! ## A037904.P15326957219416417898

`A037851(A056544(n+1))`
-/

namespace A037904.P15326957219416417898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A056544 (n + 1)).toNat

end

end A037904.P15326957219416417898

namespace A037904

/-- `A037851(A056544(n+1))` -/
def P15326957219416417898.Spec : Prop :=
  ∀ n, P15326957219416417898.a n = A037904 (n + 1)

end A037904

/-! ## A037904.P8930152897335215459

`A037851(A082216(n+1))`
-/

namespace A037904.P8930152897335215459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A082216 (n + 1)).toNat

end

end A037904.P8930152897335215459

namespace A037904

/-- `A037851(A082216(n+1))` -/
def P8930152897335215459.Spec : Prop :=
  ∀ n, P8930152897335215459.a n = A037904 (n + 1)

end A037904

/-!
# A037905: a(n) = 9 - (floor(n*Pi) mod 9).

The programs for A037905, the canonical program `A037905.P4128562081083518101` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037905 has offset 1).

The definition of A037905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9-floor((n+1)*π)%9` (program `A037905.P4128562081083518101`, by `A037905.P4128562081083518101.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037905.P4128562081083518101

`9-floor((n+1)*π)%9`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037905

/-- `9-floor((n+1)*π)%9` -/
def P4128562081083518101.Spec : Prop :=
  ∀ n, P4128562081083518101.a n = A037905 (n + 1)

theorem P4128562081083518101.correct : P4128562081083518101.Spec := by
  intro n
  simp only [A037905, Nat.add_sub_cancel]

end A037905

/-!
# A037906: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*3^i is the base-3 representation of n.

The programs for A037906, there is no canonical definition to state claims against.
-/

/-! ## A037906.P4562606483134711773

`A037907(A023717(n+1))`
-/

namespace A037906.P4562606483134711773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037907 (A023717 (n + 1)).toNat

end

end A037906.P4562606483134711773

/-! ## A037906.P14837669459864639865

`A037908(A037453(n+1))`
-/

namespace A037906.P14837669459864639865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037908 (A037453 (n + 1)).toNat

end

end A037906.P14837669459864639865

/-! ## A037906.P5231348358905888415

`A037909(A037454(n+1))`
-/

namespace A037906.P5231348358905888415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037909 (A037454 (n + 1)).toNat

end

end A037906.P5231348358905888415

/-! ## A037906.P5190292066929459152

`A037910(A037455(n+1))`
-/

namespace A037906.P5190292066929459152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037910 (A037455 (n + 1)).toNat

end

end A037906.P5190292066929459152

/-! ## A037906.P13312382945090724599

`A037911(A037456(n+1))`
-/

namespace A037906.P13312382945090724599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037911 (A037456 (n + 1)).toNat

end

end A037906.P13312382945090724599

/-! ## A037906.P685993669246722403

`A037912(A037314(n+1))`
-/

namespace A037906.P685993669246722403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (A037314 (n + 1)).toNat

end

end A037906.P685993669246722403

/-! ## A037906.P3710557457370775306

`A037913(A007089(n+1))`
-/

namespace A037906.P3710557457370775306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A007089 (n + 1)).toNat

end

end A037906.P3710557457370775306

/-! ## A037906.P3364767386322341603

`A037912(A163344(n+1))`
-/

namespace A037906.P3364767386322341603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (A163344 (n + 1)).toNat

end

end A037906.P3364767386322341603

/-!
# A037907: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*4^i is the base-4 representation of n.

The programs for A037907, there is no canonical definition to state claims against.
-/

/-! ## A037907.P16170884797963859652

`A037908(A037459(n+1))`
-/

namespace A037907.P16170884797963859652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037908 (A037459 (n + 1)).toNat

end

end A037907.P16170884797963859652

/-! ## A037907.P14309898947789727515

`A037908(A020654(n+2))`
-/

namespace A037907.P14309898947789727515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037908 (A020654 (n + 2)).toNat

end

end A037907.P14309898947789727515

/-! ## A037907.P3239002617911183397

`A037909(A037460(n+1))`
-/

namespace A037907.P3239002617911183397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037909 (A037460 (n + 1)).toNat

end

end A037907.P3239002617911183397

/-! ## A037907.P15882822144390023543

`A037910(A037461(n+1))`
-/

namespace A037907.P15882822144390023543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037910 (A037461 (n + 1)).toNat

end

end A037907.P15882822144390023543

/-! ## A037907.P7240102050202654779

`A037911(A037462(n+1))`
-/

namespace A037907.P7240102050202654779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037911 (A037462 (n + 1)).toNat

end

end A037907.P7240102050202654779

/-! ## A037907.P9326808133759513631

`A037912(A037463(n+1))`
-/

namespace A037907.P9326808133759513631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (A037463 (n + 1)).toNat

end

end A037907.P9326808133759513631

/-! ## A037907.P12827850336909371168

`A037913(A007090(n+1))`
-/

namespace A037907.P12827850336909371168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A007090 (n + 1)).toNat

end

end A037907.P12827850336909371168

/-!
# A037908: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*5^i is the base-5 representation of n.

The programs for A037908, the canonical program `A037908.P7520379956918158935` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037908 has offset 1).

The definition of A037908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2654 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037908.P17655334735936709383

`A037909(A037465(n+1))`
-/

namespace A037908.P17655334735936709383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037909 (A037465 (n + 1)).toNat

end

end A037908.P17655334735936709383

namespace A037908

/-- `A037909(A037465(n+1))` -/
def P17655334735936709383.Spec : Prop :=
  ∀ n, P17655334735936709383.a n = A037908 (n + 1)

end A037908

/-! ## A037908.P7520379956918158935

`A037910(A037466(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A037908

/-- `A037910(A037466(n+1))` -/
def P7520379956918158935.Spec : Prop :=
  ∀ n, P7520379956918158935.a n = A037908 (n + 1)

theorem P7520379956918158935.correct : P7520379956918158935.Spec := by
  intro n
  simp only [A037908, Nat.add_sub_cancel]

end A037908

/-! ## A037908.P17225845751661918413

`A037911(A037467(n+1))`
-/

namespace A037908.P17225845751661918413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037911 (A037467 (n + 1)).toNat

end

end A037908.P17225845751661918413

namespace A037908

/-- `A037911(A037467(n+1))` -/
def P17225845751661918413.Spec : Prop :=
  ∀ n, P17225845751661918413.a n = A037908 (n + 1)

end A037908

/-! ## A037908.P1039161118041344200

`A037912(A037468(n+1))`
-/

namespace A037908.P1039161118041344200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (A037468 (n + 1)).toNat

end

end A037908.P1039161118041344200

namespace A037908

/-- `A037912(A037468(n+1))` -/
def P1039161118041344200.Spec : Prop :=
  ∀ n, P1039161118041344200.a n = A037908 (n + 1)

end A037908

/-! ## A037908.P4335483880429690904

`A037913(A007091(n+1))`
-/

namespace A037908.P4335483880429690904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A007091 (n + 1)).toNat

end

end A037908.P4335483880429690904

namespace A037908

/-- `A037913(A007091(n+1))` -/
def P4335483880429690904.Spec : Prop :=
  ∀ n, P4335483880429690904.a n = A037908 (n + 1)

end A037908

/-!
# A037909: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*6^i is the base-6 representation of n.

The programs for A037909, the canonical program `A037909.P10473967481418289923` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037909 has offset 1).

The definition of A037909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3396 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037909.P7909938121008990433

`A037910(A020657(n+2))`
-/

namespace A037909.P7909938121008990433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037910 (A020657 (n + 2)).toNat

end

end A037909.P7909938121008990433

namespace A037909

/-- `A037910(A020657(n+2))` -/
def P7909938121008990433.Spec : Prop :=
  ∀ n, P7909938121008990433.a n = A037909 (n + 1)

end A037909

/-! ## A037909.P10473967481418289923

`A037911(A037471(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A037909

/-- `A037911(A037471(n+1))` -/
def P10473967481418289923.Spec : Prop :=
  ∀ n, P10473967481418289923.a n = A037909 (n + 1)

theorem P10473967481418289923.correct : P10473967481418289923.Spec := by
  intro n
  simp only [A037909, Nat.add_sub_cancel]

end A037909

/-! ## A037909.P146602102198205325

`A037912(A037472(n+1))`
-/

namespace A037909.P146602102198205325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (A037472 (n + 1)).toNat

end

end A037909.P146602102198205325

namespace A037909

/-- `A037912(A037472(n+1))` -/
def P146602102198205325.Spec : Prop :=
  ∀ n, P146602102198205325.a n = A037909 (n + 1)

end A037909

/-! ## A037909.P4713943327202287156

`A037913(A007092(n+1))`
-/

namespace A037909.P4713943327202287156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A007092 (n + 1)).toNat

end

end A037909.P4713943327202287156

namespace A037909

/-- `A037913(A007092(n+1))` -/
def P4713943327202287156.Spec : Prop :=
  ∀ n, P4713943327202287156.a n = A037909 (n + 1)

end A037909

/-! ## A037909.P12820493663647457059

`val(∑[A160642(2*(n+1))], 7)`
-/

namespace A037909.P12820493663647457059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160642 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 7

end

end A037909.P12820493663647457059

namespace A037909

/-- `val(∑[A160642(2*(n+1))], 7)` -/
def P12820493663647457059.Spec : Prop :=
  ∀ n, (P12820493663647457059.a n : ℤ) = A037909 (n + 1)

end A037909

/-!
# A037910: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*7^i is the base-7 representation of n.

The programs for A037910, the canonical program `A037910.P17653679277540927855` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037910 has offset 1).

The definition of A037910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037910.P17653679277540927855

`A037911(A037474(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A037910

/-- `A037911(A037474(n+1))` -/
def P17653679277540927855.Spec : Prop :=
  ∀ n, P17653679277540927855.a n = A037910 (n + 1)

theorem P17653679277540927855.correct : P17653679277540927855.Spec := by
  intro n
  simp only [A037910, Nat.add_sub_cancel]

end A037910

/-! ## A037910.P2020457304421135165

`A037912(A037475(n+1))`
-/

namespace A037910.P2020457304421135165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (A037475 (n + 1)).toNat

end

end A037910.P2020457304421135165

namespace A037910

/-- `A037912(A037475(n+1))` -/
def P2020457304421135165.Spec : Prop :=
  ∀ n, P2020457304421135165.a n = A037910 (n + 1)

end A037910

/-! ## A037910.P3110681899127243397

`A037913(A007093(n+1))`
-/

namespace A037910.P3110681899127243397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A007093 (n + 1)).toNat

end

end A037910.P3110681899127243397

namespace A037910

/-- `A037913(A007093(n+1))` -/
def P3110681899127243397.Spec : Prop :=
  ∀ n, P3110681899127243397.a n = A037910 (n + 1)

end A037910

/-! ## A037910.P12709965708688484962

`A037913(eq[A061397(2*(n+1)), A102679(n)])`
-/

namespace A037910.P12709965708688484962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037910.P12709965708688484962

namespace A037910

/-- `A037913(eq[A061397(2*(n+1)), A102679(n)])` -/
def P12709965708688484962.Spec : Prop :=
  ∀ n, P12709965708688484962.a n = A037910 (n + 1)

end A037910

/-! ## A037910.P12046347392138338346

`A037912(A072957(n+1))`
-/

namespace A037910.P12046347392138338346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (A072957 (n + 1)).toNat

end

end A037910.P12046347392138338346

namespace A037910

/-- `A037912(A072957(n+1))` -/
def P12046347392138338346.Spec : Prop :=
  ∀ n, P12046347392138338346.a n = A037910 (n + 1)

end A037910

/-! ## A037910.P6875817863865222540

`Δ[A253171(n+3)]%A276502(2*(n+1))`
-/

namespace A037910.P6875817863865222540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253171 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A276502 (2 * (n + 1)))

end

end A037910.P6875817863865222540

namespace A037910

/-- `Δ[A253171(n+3)]%A276502(2*(n+1))` -/
def P6875817863865222540.Spec : Prop :=
  ∀ n, P6875817863865222540.a n = A037910 (n + 1)

end A037910

/-!
# A037911: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*8^i is the base-8 representation of n.

The programs for A037911, the canonical program `A037911.P18019407288265882149` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037911 has offset 1).

The definition of A037911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037911.P13016288753126769596

`A037912(A037477(n+1))`
-/

namespace A037911.P13016288753126769596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (A037477 (n + 1)).toNat

end

end A037911.P13016288753126769596

namespace A037911

/-- `A037912(A037477(n+1))` -/
def P13016288753126769596.Spec : Prop :=
  ∀ n, P13016288753126769596.a n = A037911 (n + 1)

end A037911

/-! ## A037911.P18019407288265882149

`A037913(A007094(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037911

/-- `A037913(A007094(n+1))` -/
def P18019407288265882149.Spec : Prop :=
  ∀ n, P18019407288265882149.a n = A037911 (n + 1)

theorem P18019407288265882149.correct : P18019407288265882149.Spec := by
  intro n
  simp only [A037911, Nat.add_sub_cancel]

end A037911

/-! ## A037911.P14264808798683630184

`A037912(record[A256299(n+1)])`
-/

namespace A037911.P14264808798683630184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037911.P14264808798683630184

namespace A037911

/-- `A037912(record[A256299(n+1)])` -/
def P14264808798683630184.Spec : Prop :=
  ∀ n, P14264808798683630184.a n = A037911 (n + 1)

end A037911

/-! ## A037911.P17378189311177282239

`A037913(eq[n, A222254(A028310(n))])`
-/

namespace A037911.P17378189311177282239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037911.P17378189311177282239

namespace A037911

/-- `A037913(eq[n, A222254(A028310(n))])` -/
def P17378189311177282239.Spec : Prop :=
  ∀ n, P17378189311177282239.a n = A037911 (n + 1)

end A037911

/-! ## A037911.P6875859256064210251

`val(∏{p}[A265367(A047289((n+1)²)), #], 3)`
-/

namespace A037911.P6875859256064210251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265367 (A047289 ((n + 1) ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) 3

end

end A037911.P6875859256064210251

namespace A037911

/-- `val(∏{p}[A265367(A047289((n+1)²)), #], 3)` -/
def P6875859256064210251.Spec : Prop :=
  ∀ n, (P6875859256064210251.a n : ℤ) = A037911 (n + 1)

end A037911

/-! ## A037911.P9673025455499709025

`A147650(n+1)%A147658(A008253(n))`
-/

namespace A037911.P9673025455499709025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147650 (n + 1)) (A147658 (A008253 n).toNat)

end

end A037911.P9673025455499709025

namespace A037911

/-- `A147650(n+1)%A147658(A008253(n))` -/
def P9673025455499709025.Spec : Prop :=
  ∀ n, P9673025455499709025.a n = A037911 (n + 1)

end A037911

/-! ## A037911.P13183385394944317308

`char[A268227(∑[n+3])]`
-/

namespace A037911.P13183385394944317308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268227 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A037911.P13183385394944317308

namespace A037911

/-- `char[A268227(∑[n+3])]` -/
def P13183385394944317308.Spec : Prop :=
  ∀ n, (P13183385394944317308.a n : ℤ) = A037911 (n + 1)

end A037911

/-!
# A037912: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*9^i is the base-9 representation of n.

The programs for A037912, the canonical program `A037912.P2162404746786536408` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037912 has offset 1).

The definition of A037912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037912.P2162404746786536408

`A037913(A007095(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037912

/-- `A037913(A007095(n+1))` -/
def P2162404746786536408.Spec : Prop :=
  ∀ n, P2162404746786536408.a n = A037912 (n + 1)

theorem P2162404746786536408.correct : P2162404746786536408.Spec := by
  intro n
  simp only [A037912, Nat.add_sub_cancel]

end A037912

/-! ## A037912.P12224891190904567310

`A037913(A037479(n+1))`
-/

namespace A037912.P12224891190904567310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A037479 (n + 1)).toNat

end

end A037912.P12224891190904567310

namespace A037912

/-- `A037913(A037479(n+1))` -/
def P12224891190904567310.Spec : Prop :=
  ∀ n, P12224891190904567310.a n = A037912 (n + 1)

end A037912

/-! ## A037912.P17667374452703020870

`A037913(record[A048379(n+1)])`
-/

namespace A037912.P17667374452703020870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037912.P17667374452703020870

namespace A037912

/-- `A037913(record[A048379(n+1)])` -/
def P17667374452703020870.Spec : Prop :=
  ∀ n, P17667374452703020870.a n = A037912 (n + 1)

end A037912

/-! ## A037912.P16045111613714845428

`A037913(record[A235049(n+2)])`
-/

namespace A037912.P16045111613714845428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037912.P16045111613714845428

namespace A037912

/-- `A037913(record[A235049(n+2)])` -/
def P16045111613714845428.Spec : Prop :=
  ∀ n, P16045111613714845428.a n = A037912 (n + 1)

end A037912

/-! ## A037912.P2510556842682319060

`A144597(∑[∑[6-a(n-1)]]-(n-1))` with `a(0)=7, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A037912.P2510556842682319060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 0, 1, 4] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144597 (∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1)).toNat

end

end A037912.P2510556842682319060

namespace A037912

/-- `A144597(∑[∑[6-a(n-1)]]-(n-1))` -/
def P2510556842682319060.Spec : Prop :=
  ∀ n, P2510556842682319060.a n = A037912 (n + 1)

end A037912

/-! ## A037912.P8985863344885573098

`val(A010164(A067725(n)), 18)`
-/

namespace A037912.P8985863344885573098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A010164 (A067725 n).toNat).toNat 18

end

end A037912.P8985863344885573098

namespace A037912

/-- `val(A010164(A067725(n)), 18)` -/
def P8985863344885573098.Spec : Prop :=
  ∀ n, (P8985863344885573098.a n : ℤ) = A037912 (n + 1)

end A037912

/-! ## A037912.P9035078309699569432

`val(A213483(A184533(n+1)), 5)`
-/

namespace A037912.P9035078309699569432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A213483 (A184533 (n + 1)).toNat).toNat 5

end

end A037912.P9035078309699569432

namespace A037912

/-- `val(A213483(A184533(n+1)), 5)` -/
def P9035078309699569432.Spec : Prop :=
  ∀ n, (P9035078309699569432.a n : ℤ) = A037912 (n + 1)

end A037912

/-! ## A037912.P1595603634734796512

`and(A004754(n+1), A059841(A047486((n+1)²)))`
-/

namespace A037912.P1595603634734796512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004754 (n + 1)) (A059841 (A047486 ((n + 1) ^ 2)).toNat)

end

end A037912.P1595603634734796512

namespace A037912

/-- `and(A004754(n+1), A059841(A047486((n+1)²)))` -/
def P1595603634734796512.Spec : Prop :=
  ∀ n, P1595603634734796512.a n = A037912 (n + 1)

end A037912

/-! ## A037912.P12527683317459398006

`val(A008458(A000384(n)), 20)`
-/

namespace A037912.P12527683317459398006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008458 (A000384 n).toNat).toNat 20

end

end A037912.P12527683317459398006

namespace A037912

/-- `val(A008458(A000384(n)), 20)` -/
def P12527683317459398006.Spec : Prop :=
  ∀ n, (P12527683317459398006.a n : ℤ) = A037912 (n + 1)

end A037912

/-! ## A037912.P3519042948460231719

`and(A232990(n), A339269(n+1))`
-/

namespace A037912.P3519042948460231719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A232990 n) (A339269 (n + 1))

end

end A037912.P3519042948460231719

namespace A037912

/-- `and(A232990(n), A339269(n+1))` -/
def P3519042948460231719.Spec : Prop :=
  ∀ n, P3519042948460231719.a n = A037912 (n + 1)

end A037912

/-!
# A037913: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*10^i is the base-10 representation of n.

The programs for A037913, the canonical program `A037913.P14316961981388322772` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037913 has offset 1).

The definition of A037913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037913.P10356982566066642111

`A178401(n+1)%A276502(n+1)`
-/

namespace A037913.P10356982566066642111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178401 (n + 1)) (A276502 (n + 1))

end

end A037913.P10356982566066642111

namespace A037913

/-- `A178401(n+1)%A276502(n+1)` -/
def P10356982566066642111.Spec : Prop :=
  ∀ n, P10356982566066642111.a n = A037913 (n + 1)

end A037913

/-! ## A037913.P15588963093680839546

`A037851(A082216(n+1))*A178401(n+1)`
-/

namespace A037913.P15588963093680839546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A082216 (n + 1)).toNat * A178401 (n + 1)

end

end A037913.P15588963093680839546

namespace A037913

/-- `A037851(A082216(n+1))*A178401(n+1)` -/
def P15588963093680839546.Spec : Prop :=
  ∀ n, P15588963093680839546.a n = A037913 (n + 1)

end A037913

/-! ## A037913.P13282254212504961225

`val(∏{p}[n^3, #], 11)^((10*10*(n+1)+1)%11)`
-/

namespace A037913.P13282254212504961225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 ^ ((10 * (10 * (n + 1)) + 1) % 11)

end

end A037913.P13282254212504961225

namespace A037913

/-- `val(∏{p}[n^3, #], 11)^((10*10*(n+1)+1)%11)` -/
def P13282254212504961225.Spec : Prop :=
  ∀ n, (P13282254212504961225.a n : ℤ) = A037913 (n + 1)

end A037913

/-! ## A037913.P10884109009660826496

`val(A138153((n+1)²), 11)`
-/

namespace A037913.P10884109009660826496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A138153 ((n + 1) ^ 2)).toNat 11

end

end A037913.P10884109009660826496

namespace A037913

/-- `val(A138153((n+1)²), 11)` -/
def P10884109009660826496.Spec : Prop :=
  ∀ n, (P10884109009660826496.a n : ℤ) = A037913 (n + 1)

end A037913

/-! ## A037913.P14316961981388322772

`val(A143051((n+1)²), 11)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037913

/-- `val(A143051((n+1)²), 11)` -/
def P14316961981388322772.Spec : Prop :=
  ∀ n, (P14316961981388322772.a n : ℤ) = A037913 (n + 1)

theorem P14316961981388322772.correct : P14316961981388322772.Spec := by
  intro n
  simp only [A037913, Nat.add_sub_cancel]

end A037913

/-! ## A037913.P185770907936068249

`val(A183570(∑[2*n]), 11)`
-/

namespace A037913.P185770907936068249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A183570 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 11

end

end A037913.P185770907936068249

namespace A037913

/-- `val(A183570(∑[2*n]), 11)` -/
def P185770907936068249.Spec : Prop :=
  ∀ n, (P185770907936068249.a n : ℤ) = A037913 (n + 1)

end A037913

/-! ## A037913.P15429478694347939098

`val(A008458(n*(n+2)), 11)`
-/

namespace A037913.P15429478694347939098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008458 (n * (n + 2))).toNat 11

end

end A037913.P15429478694347939098

namespace A037913

/-- `val(A008458(n*(n+2)), 11)` -/
def P15429478694347939098.Spec : Prop :=
  ∀ n, (P15429478694347939098.a n : ℤ) = A037913 (n + 1)

end A037913

/-! ## A037913.P207426132025512171

`val(A008486(n*(n+2)), 11)`
-/

namespace A037913.P207426132025512171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008486 (n * (n + 2))).toNat 11

end

end A037913.P207426132025512171

namespace A037913

/-- `val(A008486(n*(n+2)), 11)` -/
def P207426132025512171.Spec : Prop :=
  ∀ n, (P207426132025512171.a n : ℤ) = A037913 (n + 1)

end A037913

/-! ## A037913.P1524526867959241577

`val(A008574(n*(n+2)), 11)`
-/

namespace A037913.P1524526867959241577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008574 (n * (n + 2))).toNat 11

end

end A037913.P1524526867959241577

namespace A037913

/-- `val(A008574(n*(n+2)), 11)` -/
def P1524526867959241577.Spec : Prop :=
  ∀ n, (P1524526867959241577.a n : ℤ) = A037913 (n + 1)

end A037913

/-! ## A037913.P14532469127068890344

`val(A008706(n*(n+2)), 11)`
-/

namespace A037913.P14532469127068890344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008706 (n * (n + 2))).toNat 11

end

end A037913.P14532469127068890344

namespace A037913

/-- `val(A008706(n*(n+2)), 11)` -/
def P14532469127068890344.Spec : Prop :=
  ∀ n, (P14532469127068890344.a n : ℤ) = A037913 (n + 1)

end A037913

/-! ## A037913.P625989420950193504

`val(A022144(n*(n+2)), 11)`
-/

namespace A037913.P625989420950193504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A022144 (n * (n + 2))).toNat 11

end

end A037913.P625989420950193504

namespace A037913

/-- `val(A022144(n*(n+2)), 11)` -/
def P625989420950193504.Spec : Prop :=
  ∀ n, (P625989420950193504.a n : ℤ) = A037913 (n + 1)

end A037913

/-! ## A037913.P3886997217650436715

`val(A028310(n*(n+2)), 11)`
-/

namespace A037913.P3886997217650436715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 (n * (n + 2))).toNat 11

end

end A037913.P3886997217650436715

namespace A037913

/-- `val(A028310(n*(n+2)), 11)` -/
def P3886997217650436715.Spec : Prop :=
  ∀ n, (P3886997217650436715.a n : ℤ) = A037913 (n + 1)

end A037913

/-! ## A037913.P4016707254599436556

`val(A006564(floor((n+2)/acot(n))), 11)`
-/

namespace A037913.P4016707254599436556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006564 ⌊(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat 11

end

end A037913.P4016707254599436556

namespace A037913

/-- `val(A006564(floor((n+2)/acot(n))), 11)` -/
def P4016707254599436556.Spec : Prop :=
  ∀ n, (P4016707254599436556.a n : ℤ) = A037913 (n + 1)

end A037913

/-! ## A037913.P2954329120712870987

`val(A015053(floor((n+2)/acot(n))), 11)`
-/

namespace A037913.P2954329120712870987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A015053 ⌊(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat 11

end

end A037913.P2954329120712870987

namespace A037913

/-- `val(A015053(floor((n+2)/acot(n))), 11)` -/
def P2954329120712870987.Spec : Prop :=
  ∀ n, (P2954329120712870987.a n : ℤ) = A037913 (n + 1)

end A037913

/-! ## A037913.P18085065825444034837

`val(A004277(A005563(n)), 11)`
-/

namespace A037913.P18085065825444034837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 (A005563 n).toNat).toNat 11

end

end A037913.P18085065825444034837

namespace A037913

/-- `val(A004277(A005563(n)), 11)` -/
def P18085065825444034837.Spec : Prop :=
  ∀ n, (P18085065825444034837.a n : ℤ) = A037913 (n + 1)

end A037913

/-!
# A037914: a(n) is the least base b>=2 such that the number of distinct digits in the base b representation of n is maximized.

The programs for A037914, there is no canonical definition to state claims against.
-/

/-! ## A037914.P4352368749639603861

`A001511(A188134(A282282(n+1))+2)`
-/

namespace A037914.P4352368749639603861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A188134 (A282282 (n + 1)).toNat + 2).toNat

end

end A037914.P4352368749639603861

/-! ## A037914.P2227618513823621736

`A091787(A326843(3*n+4)-1)`
-/

namespace A037914.P2227618513823621736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091787 (A326843 (3 * n + 4) - 1).toNat

end

end A037914.P2227618513823621736

/-! ## A037914.P16622304365928261250

`∑{d}[A293733(gcd(n+4, A000010(n+1))+3)+1, #%2]`
-/

namespace A037914.P16622304365928261250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293733 (Int.gcd (n + 4 : ℤ) (A000010 (n + 1)) + 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A037914.P16622304365928261250

/-! ## A037914.P4127092398995222920

`A007605(gcd(A196991(n+1)+n, A000124(n)))`
-/

namespace A037914.P4127092398995222920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (Int.gcd (A196991 (n + 1) + (n : ℤ)) (A000124 n))

end

end A037914.P4127092398995222920

/-! ## A037914.P10512960162010666505

`gcd(A001227(n+1), A007504(A002531(n)+1))+1`
-/

namespace A037914.P10512960162010666505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001227 (n + 1)) (A007504 (A002531 n + 1).toNat) + 1

end

end A037914.P10512960162010666505

/-!
# A037915: a(n) = floor((3*n + 4)/4).

The programs for A037915, the canonical program `A037915.P13608085277289321676` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037915 has offset 0).

The definition of A037915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3*n+4)/4)` (program `A037915.P13608085277289321676`, by `A037915.P13608085277289321676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037915.P10712185040488560369

`1+floor(3*n/4)`
-/

namespace A037915.P10712185040488560369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(3 * n : ℚ) / 4⌋

end

end A037915.P10712185040488560369

namespace A037915

/-- `1+floor(3*n/4)` -/
def P10712185040488560369.Spec : Prop :=
  ∀ n, P10712185040488560369.a n = A037915 n

end A037915

/-! ## A037915.P13608085277289321676

`floor((3*n+4)/4)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037915

/-- `floor((3*n+4)/4)` -/
def P13608085277289321676.Spec : Prop :=
  ∀ n, P13608085277289321676.a n = A037915 n

theorem P13608085277289321676.correct : P13608085277289321676.Spec := by
  intro n
  simp only [A037915]

end A037915

/-! ## A037915.P5743740567353622843

`ceil(3/(4*acot(n)))`
-/

namespace A037915.P5743740567353622843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (4 * SequenceMachineLib.acot (n : ℝ))⌉

end

end A037915.P5743740567353622843

namespace A037915

/-- `ceil(3/(4*acot(n)))` -/
def P5743740567353622843.Spec : Prop :=
  ∀ n, P5743740567353622843.a n = A037915 n

end A037915

/-! ## A037915.P1398174183245179081

`round(or(2, 3*n)/4)`
-/

namespace A037915.P1398174183245179081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (3 * n) : ℚ) / 4)

end

end A037915.P1398174183245179081

namespace A037915

/-- `round(or(2, 3*n)/4)` -/
def P1398174183245179081.Spec : Prop :=
  ∀ n, P1398174183245179081.a n = A037915 n

end A037915

/-! ## A037915.P13325666527576149987

`∑[floor(sqrt((n+3)%4))]`
-/

namespace A037915.P13325666527576149987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((n + 3) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P13325666527576149987

namespace A037915

/-- `∑[floor(sqrt((n+3)%4))]` -/
def P13325666527576149987.Spec : Prop :=
  ∀ n, (P13325666527576149987.a n : ℤ) = A037915 n

end A037915

/-! ## A037915.P16182246146883899753

`∑[floor(sqrt(and(3, n-1)))]`
-/

namespace A037915.P16182246146883899753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.land 3 ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P16182246146883899753

namespace A037915

/-- `∑[floor(sqrt(and(3, n-1)))]` -/
def P16182246146883899753.Spec : Prop :=
  ∀ n, P16182246146883899753.a n = A037915 n

end A037915

/-! ## A037915.P17878728383317648707

`∑[(∑[∑[n]]+1)%2]`
-/

namespace A037915.P17878728383317648707
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P17878728383317648707

namespace A037915

/-- `∑[(∑[∑[n]]+1)%2]` -/
def P17878728383317648707.Spec : Prop :=
  ∀ n, (P17878728383317648707.a n : ℤ) = A037915 n

end A037915

/-! ## A037915.P14964558080055732797

`∑[1-∑[∑[n]]%2]`
-/

namespace A037915.P14964558080055732797
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P14964558080055732797

namespace A037915

/-- `∑[1-∑[∑[n]]%2]` -/
def P14964558080055732797.Spec : Prop :=
  ∀ n, P14964558080055732797.a n = A037915 n

end A037915

/-! ## A037915.P11050563829048668023

`∑[and(1, ∑[∑[n]]+1)]`
-/

namespace A037915.P11050563829048668023
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P11050563829048668023

namespace A037915

/-- `∑[and(1, ∑[∑[n]]+1)]` -/
def P11050563829048668023.Spec : Prop :=
  ∀ n, (P11050563829048668023.a n : ℤ) = A037915 n

end A037915

/-! ## A037915.P16285461453681902428

`∑[floor(ratio[or(5, 2*n)])]`
-/

namespace A037915.P16285461453681902428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P16285461453681902428

namespace A037915

/-- `∑[floor(ratio[or(5, 2*n)])]` -/
def P16285461453681902428.Spec : Prop :=
  ∀ n, P16285461453681902428.a n = A037915 n

end A037915

/-! ## A037915.P14549333207409211625

`∑[ceil(sin(gcd(4, 1-n)))]`
-/

namespace A037915.P14549333207409211625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Int.gcd 4 (1 - (n : ℤ)) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P14549333207409211625

namespace A037915

/-- `∑[ceil(sin(gcd(4, 1-n)))]` -/
def P14549333207409211625.Spec : Prop :=
  ∀ n, P14549333207409211625.a n = A037915 n

end A037915

/-! ## A037915.P16103864761131269180

`∑[ceil(sin(and(3, n-1)))]`
-/

namespace A037915.P16103864761131269180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Int.land 3 ((n : ℤ) - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P16103864761131269180

namespace A037915

/-- `∑[ceil(sin(and(3, n-1)))]` -/
def P16103864761131269180.Spec : Prop :=
  ∀ n, P16103864761131269180.a n = A037915 n

end A037915

/-! ## A037915.P2479673895277467545

`∑[val(or(2, ∑[∑[n]]), 2)]`
-/

namespace A037915.P2479673895277467545
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f2 j)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P2479673895277467545

namespace A037915

/-- `∑[val(or(2, ∑[∑[n]]), 2)]` -/
def P2479673895277467545.Spec : Prop :=
  ∀ n, (P2479673895277467545.a n : ℤ) = A037915 n

end A037915

/-! ## A037915.P2933731140830511955

`∑[xor(1, and(1, ∑[∑[n]]))]`
-/

namespace A037915.P2933731140830511955
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P2933731140830511955

namespace A037915

/-- `∑[xor(1, and(1, ∑[∑[n]]))]` -/
def P2933731140830511955.Spec : Prop :=
  ∀ n, (P2933731140830511955.a n : ℤ) = A037915 n

end A037915

/-! ## A037915.P9527994546465730053

`∑[round(atan(and(3, n-1)))]`
-/

namespace A037915.P9527994546465730053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Int.land 3 ((n : ℤ) - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P9527994546465730053

namespace A037915

/-- `∑[round(atan(and(3, n-1)))]` -/
def P9527994546465730053.Spec : Prop :=
  ∀ n, P9527994546465730053.a n = A037915 n

end A037915

/-! ## A037915.P7777973158544960276

`∑[ceil(tanh(and(3, n-1)))]`
-/

namespace A037915.P7777973158544960276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (Int.land 3 ((n : ℤ) - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P7777973158544960276

namespace A037915

/-- `∑[ceil(tanh(and(3, n-1)))]` -/
def P7777973158544960276.Spec : Prop :=
  ∀ n, P7777973158544960276.a n = A037915 n

end A037915

/-! ## A037915.P17829792560630917868

`∑[floor(acot(val(n+3, 4)))]`
-/

namespace A037915.P17829792560630917868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.valuation (n + 3) 4 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P17829792560630917868

namespace A037915

/-- `∑[floor(acot(val(n+3, 4)))]` -/
def P17829792560630917868.Spec : Prop :=
  ∀ n, P17829792560630917868.a n = A037915 n

end A037915

/-! ## A037915.P3411433971954473906

`∑[round(tanh(and(3, n-1)))]`
-/

namespace A037915.P3411433971954473906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (Int.land 3 ((n : ℤ) - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P3411433971954473906

namespace A037915

/-- `∑[round(tanh(and(3, n-1)))]` -/
def P3411433971954473906.Spec : Prop :=
  ∀ n, P3411433971954473906.a n = A037915 n

end A037915

/-! ## A037915.P7767200318041009847

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A037915.P7767200318041009847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P7767200318041009847

namespace A037915

/-- `∑[abs(a(n-4))]` -/
def P7767200318041009847.Spec : Prop :=
  ∀ n, (P7767200318041009847.a n : ℤ) = A037915 n

end A037915

/-! ## A037915.P1427288329079414682

`∑[a(n-4)²]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A037915.P1427288329079414682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  f1 (n - 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037915.P1427288329079414682

namespace A037915

/-- `∑[a(n-4)²]` -/
def P1427288329079414682.Spec : Prop :=
  ∀ n, (P1427288329079414682.a n : ℤ) = A037915 n

end A037915

/-!
# A037916: Concatenate exponents in prime factorization of n.

The programs for A037916, there is no canonical definition to state claims against.
-/

/-! ## A037916.P7276856859247416551

`A372960(A048673(n+1))`
-/

namespace A037916.P7276856859247416551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372960 (A048673 (n + 1)).toNat

end

end A037916.P7276856859247416551

/-! ## A037916.P2694440188804211226

`A056967(A334027(n+1))`
-/

namespace A037916.P2694440188804211226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A334027 (n + 1)).toNat

end

end A037916.P2694440188804211226

/-! ## A037916.P4745642937747114465

`A261300(A334032(A348717(n+1)))`
-/

namespace A037916.P4745642937747114465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A334032 (A348717 (n + 1)).toNat).toNat

end

end A037916.P4745642937747114465

/-! ## A037916.P131348793402301230

`A261300(A334032(n+1))`
-/

namespace A037916.P131348793402301230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A334032 (n + 1)).toNat

end

end A037916.P131348793402301230

/-! ## A037916.P6279194130531958644

`A054841(A331580(n+1))`
-/

namespace A037916.P6279194130531958644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A331580 (n + 1)).toNat

end

end A037916.P6279194130531958644

/-!
# A037917: Numbers n such that the Fibonacci number F(n) is divisible by a square.

The programs for A037917, the canonical program `A037917.P2836793027716772773` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037917 has offset 1).

The definition of A037917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037917.P2836793027716772773

`eq[0, A174340(n+2)]+2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037917

/-- `eq[0, A174340(n+2)]+2` -/
def P2836793027716772773.Spec : Prop :=
  ∀ n, (P2836793027716772773.a n : ℤ) = A037917 (n + 1)

theorem P2836793027716772773.correct : P2836793027716772773.Spec := by
  intro n
  simp only [A037917, Nat.add_sub_cancel]

end A037917

/-! ## A037917.P3423296144420100991

`eq[0, A174340(A028310(n))]`
-/

namespace A037917.P3423296144420100991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037917.P3423296144420100991

namespace A037917

/-- `eq[0, A174340(A028310(n))]` -/
def P3423296144420100991.Spec : Prop :=
  ∀ n, (P3423296144420100991.a n : ℤ) = A037917 (n + 1)

end A037917

/-! ## A037917.P5721633389214333907

`A061767(eq[0, A174340(n+1)])`
-/

namespace A037917.P5721633389214333907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037917.P5721633389214333907

namespace A037917

/-- `A061767(eq[0, A174340(n+1)])` -/
def P5721633389214333907.Spec : Prop :=
  ∀ n, P5721633389214333907.a n = A037917 (n + 1)

end A037917

/-! ## A037917.P15351913918973972729

`A153152(eq[0, A174340(n+1)])`
-/

namespace A037917.P15351913918973972729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037917.P15351913918973972729

namespace A037917

/-- `A153152(eq[0, A174340(n+1)])` -/
def P15351913918973972729.Spec : Prop :=
  ∀ n, P15351913918973972729.a n = A037917 (n + 1)

end A037917

/-! ## A037917.P17248899824302533047

`eq[0, A174340(A123108(2*n))]`
-/

namespace A037917.P17248899824302533047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037917.P17248899824302533047

namespace A037917

/-- `eq[0, A174340(A123108(2*n))]` -/
def P17248899824302533047.Spec : Prop :=
  ∀ n, (P17248899824302533047.a n : ℤ) = A037917 (n + 1)

end A037917

/-! ## A037917.P212260916425354198

`eq[0, A174340(A000007(n)+n)]`
-/

namespace A037917.P212260916425354198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037917.P212260916425354198

namespace A037917

/-- `eq[0, A174340(A000007(n)+n)]` -/
def P212260916425354198.Spec : Prop :=
  ∀ n, (P212260916425354198.a n : ℤ) = A037917 (n + 1)

end A037917

/-! ## A037917.P12069265632857119942

`eq[0, A174340(A000038(n)+n)]`
-/

namespace A037917.P12069265632857119942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037917.P12069265632857119942

namespace A037917

/-- `eq[0, A174340(A000038(n)+n)]` -/
def P12069265632857119942.Spec : Prop :=
  ∀ n, (P12069265632857119942.a n : ℤ) = A037917 (n + 1)

end A037917

/-! ## A037917.P8801545797594709139

`eq[0, A174340(xor(n, A000038(n)))]`
-/

namespace A037917.P8801545797594709139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037917.P8801545797594709139

namespace A037917

/-- `eq[0, A174340(xor(n, A000038(n)))]` -/
def P8801545797594709139.Spec : Prop :=
  ∀ n, (P8801545797594709139.a n : ℤ) = A037917 (n + 1)

end A037917

/-! ## A037917.P7417034530450282390

`eq[0, A174340(A008619(A004273(n)))]`
-/

namespace A037917.P7417034530450282390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037917.P7417034530450282390

namespace A037917

/-- `eq[0, A174340(A008619(A004273(n)))]` -/
def P7417034530450282390.Spec : Prop :=
  ∀ n, (P7417034530450282390.a n : ℤ) = A037917 (n + 1)

end A037917

/-! ## A037917.P12822787541419373525

`∪[A119588(n+1), A175130(n+1)]`
-/

namespace A037917.P12822787541419373525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A037917.P12822787541419373525

namespace A037917

/-- `∪[A119588(n+1), A175130(n+1)]` -/
def P12822787541419373525.Spec : Prop :=
  ∀ n, (P12822787541419373525.a n : ℤ) = A037917 (n + 1)

end A037917

/-! ## A037917.P5576488697723438492

`A113484(eq[0, A174340(n+1)])`
-/

namespace A037917.P5576488697723438492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037917.P5576488697723438492

namespace A037917

/-- `A113484(eq[0, A174340(n+1)])` -/
def P5576488697723438492.Spec : Prop :=
  ∀ n, P5576488697723438492.a n = A037917 (n + 1)

end A037917

/-! ## A037917.P4660113892159035188

`eq[0, A174340(A233583(n+1))]`
-/

namespace A037917.P4660113892159035188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037917.P4660113892159035188

namespace A037917

/-- `eq[0, A174340(A233583(n+1))]` -/
def P4660113892159035188.Spec : Prop :=
  ∀ n, (P4660113892159035188.a n : ℤ) = A037917 (n + 1)

end A037917

/-! ## A037917.P14171781866016974625

`eq[0, A174340(A060000(n+1))]`
-/

namespace A037917.P14171781866016974625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037917.P14171781866016974625

namespace A037917

/-- `eq[0, A174340(A060000(n+1))]` -/
def P14171781866016974625.Spec : Prop :=
  ∀ n, (P14171781866016974625.a n : ℤ) = A037917 (n + 1)

end A037917

/-!
# A037918: Numbers n such that the Fibonacci number F(n) is squarefree.

The programs for A037918, the canonical program `A037918.P7428307511424955456` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037918 has offset 1).

The definition of A037918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1091 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037918.P4758290452205877020

`∑[A107038(abs(1-n))]`
-/

namespace A037918.P4758290452205877020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107038 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037918.P4758290452205877020

namespace A037918

/-- `∑[A107038(abs(1-n))]` -/
def P4758290452205877020.Spec : Prop :=
  ∀ n, P4758290452205877020.a n = A037918 (n + 1)

end A037918

/-! ## A037918.P480128123125693850

`comp[A037917(n+1)-1]+1`
-/

namespace A037918.P480128123125693850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037917 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A037918.P480128123125693850

namespace A037918

/-- `comp[A037917(n+1)-1]+1` -/
def P480128123125693850.Spec : Prop :=
  ∀ n, (P480128123125693850.a n : ℤ) = A037918 (n + 1)

end A037918

/-! ## A037918.P9664374721325051451

`eq[1, abs(A174340(n+1))]+1`
-/

namespace A037918.P9664374721325051451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174340 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037918.P9664374721325051451

namespace A037918

/-- `eq[1, abs(A174340(n+1))]+1` -/
def P9664374721325051451.Spec : Prop :=
  ∀ n, (P9664374721325051451.a n : ℤ) = A037918 (n + 1)

end A037918

/-! ## A037918.P4532626836175379969

`A107038(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A037918.P4532626836175379969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107038 (n - 1) + a (n - 1)

end

end A037918.P4532626836175379969

namespace A037918

/-- `A107038(n-1)+a(n-1)` -/
def P4532626836175379969.Spec : Prop :=
  ∀ n, P4532626836175379969.a n = A037918 (n + 1)

end A037918

/-! ## A037918.P7428307511424955456

`eq[A104714(n), A109009(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037918

/-- `eq[A104714(n), A109009(n)]` -/
def P7428307511424955456.Spec : Prop :=
  ∀ n, (P7428307511424955456.a n : ℤ) = A037918 (n + 1)

theorem P7428307511424955456.correct : P7428307511424955456.Spec := by
  intro n
  simp only [A037918, Nat.add_sub_cancel]

end A037918

/-! ## A037918.P7596255826089356561

`eq[A022307(n+1), A038575(n+1)]+1`
-/

namespace A037918.P7596255826089356561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037918.P7596255826089356561

namespace A037918

/-- `eq[A022307(n+1), A038575(n+1)]+1` -/
def P7596255826089356561.Spec : Prop :=
  ∀ n, (P7596255826089356561.a n : ℤ) = A037918 (n + 1)

end A037918

/-! ## A037918.P11916321442098043074

`eq[A174340(n+1), A174351(n+1)]+1`
-/

namespace A037918.P11916321442098043074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174351 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037918.P11916321442098043074

namespace A037918

/-- `eq[A174340(n+1), A174351(n+1)]+1` -/
def P11916321442098043074.Spec : Prop :=
  ∀ n, (P11916321442098043074.a n : ℤ) = A037918 (n + 1)

end A037918

/-! ## A037918.P6276864049442404056

`∑[A107038(n)]+1-A107038(n)`
-/

namespace A037918.P6276864049442404056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A107038 n)

end

end A037918.P6276864049442404056

namespace A037918

/-- `∑[A107038(n)]+1-A107038(n)` -/
def P6276864049442404056.Spec : Prop :=
  ∀ n, P6276864049442404056.a n = A037918 (n + 1)

end A037918

/-! ## A037918.P10512789732116607237

`eq[gcd(5, n), gcd(n, A000045(n))]`
-/

namespace A037918.P10512789732116607237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000045 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037918.P10512789732116607237

namespace A037918

/-- `eq[gcd(5, n), gcd(n, A000045(n))]` -/
def P10512789732116607237.Spec : Prop :=
  ∀ n, (P10512789732116607237.a n : ℤ) = A037918 (n + 1)

end A037918

/-!
# A037919: Trajectory of 4 under prime factor concatenation procedure.

The programs for A037919, there is no canonical definition to state claims against.
-/

/-! ## A037919.P420930934229022085

`∏{p}[(a(n-1)+n)²+n, #]+1` with `a(0)=3, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A037919.P420930934229022085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 1, 0] fun n f1 =>
  (f1 (n - 1) + n) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p + 1

end

end A037919.P420930934229022085

/-!
# A037921: Trajectory of 9 under prime factor concatenation procedure.

The programs for A037921, there is no canonical definition to state claims against.
-/

/-! ## A037921.P4458289040221023089

`or(A003056(n), A077442(A248049(n)))`
-/

namespace A037921.P4458289040221023089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 n) (A077442 (A248049 n).toNat)

end

end A037921.P4458289040221023089

/-!
# A037925: Trajectory of 16 under prime factor concatenation procedure.

The programs for A037925, there is no canonical definition to state claims against.
-/

/-! ## A037925.P12659027343029349722

`A088050(A088050(n)+a(n-1))` with `a(0)=16, a(1)=2`
-/

namespace A037925.P12659027343029349722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 2] fun n a =>
  A088050 (A088050 n + a (n - 1)).toNat

end

end A037925.P12659027343029349722

/-!
# A037928: Trajectory of 25 under prime factor concatenation procedure.

The programs for A037928, there is no canonical definition to state claims against.
-/

/-! ## A037928.P8685636393913221559

`A001222(A037932(n))*A037922(n+2)`
-/

namespace A037928.P8685636393913221559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037932 n).toNat * A037922 (n + 2)

end

end A037928.P8685636393913221559

/-! ## A037928.P2295233795135930791

`A001222(A037941(n))*A037922(n+2)`
-/

namespace A037928.P2295233795135930791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037941 n).toNat * A037922 (n + 2)

end

end A037928.P2295233795135930791

/-! ## A037928.P7969476765773524522

`A037922(n+2)^A001222(A037922(n))`
-/

namespace A037928.P7969476765773524522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037922 (n + 2) : ℚ) ^ (A001222 (A037922 n).toNat : ℤ)

end

end A037928.P7969476765773524522

/-! ## A037928.P15553220856681573706

`A037922(n+2)^A001221(A037923(n))`
-/

namespace A037928.P15553220856681573706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037922 (n + 2) : ℚ) ^ (A001221 (A037923 n).toNat : ℤ)

end

end A037928.P15553220856681573706

/-!
# A037942: Numbers of the form x^2 + y^2 with x >= 0, y >= 0, gcd(x,y)=1, with multiplicity.

The programs for A037942, there is no canonical definition to state claims against.
-/

/-! ## A037942.P17332556239209091195

`A279782(n+1)²+A279783(n+1)²`
-/

namespace A037942.P17332556239209091195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279782 (n + 1) ^ 2 + A279783 (n + 1) ^ 2

end

end A037942.P17332556239209091195

/-! ## A037942.P17009123881417706790

`A008784(n+1)-A326542(A343095(n))`
-/

namespace A037942.P17009123881417706790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1) - A326542 (A343095 n).toNat

end

end A037942.P17009123881417706790

/-!
# A037943: Smallest Fibonacci number that has n as a factor, divided by n.

The programs for A037943, there is no canonical definition to state claims against.
-/

/-! ## A037943.P10246286094767029639

`A047930(n+1)/(n+1)`
-/

namespace A037943.P10246286094767029639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047930 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A037943.P10246286094767029639

/-! ## A037943.P17837879530826054707

`A000045(A001177(n+1))/(n+1)`
-/

namespace A037943.P17837879530826054707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A001177 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A037943.P17837879530826054707

/-! ## A037943.P7477757429070786310

`A212804(A001177(n+1)+1)/(n+1)`
-/

namespace A037943.P7477757429070786310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (A001177 (n + 1) + 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A037943.P7477757429070786310

/-! ## A037943.P8211891892164563190

`A000045(A001175(n+1)/A001176(n+1))/(n+1)`
-/

namespace A037943.P8211891892164563190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (SequenceMachineLib.roundAway ((A001175 (n + 1) : ℚ) / (A001176 (n + 1) : ℚ))).toNat : ℚ) / (n + 1 : ℚ)

end

end A037943.P8211891892164563190

/-!
# A037950: Primes at which cusp form Delta_20 is not ordinary.

The programs for A037950, there is no canonical definition to state claims against.
-/

/-! ## A037950.P9026650548365489500

`A352584(A141769(n+1))`
-/

namespace A037950.P9026650548365489500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352584 (A141769 (n + 1)).toNat

end

end A037950.P9026650548365489500

/-!
# A037951: a(n) = binomial(n, floor((n-3)/2)).

The programs for A037951, the canonical program `A037951.P17813764047485560527` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037951 has offset 0).

The definition of A037951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037951.P17813764047485560527

`A001405(n)-A208355(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037951

/-- `A001405(n)-A208355(n+1)` -/
def P17813764047485560527.Spec : Prop :=
  ∀ n, P17813764047485560527.a n = A037951 n

theorem P17813764047485560527.correct : P17813764047485560527.Spec := by
  intro n
  simp only [A037951]

end A037951

/-! ## A037951.P7404692048938545144

`A001405(n)-A000108(floor(n/2)+1)`
-/

namespace A037951.P7404692048938545144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A000108 (⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A037951.P7404692048938545144

namespace A037951

/-- `A001405(n)-A000108(floor(n/2)+1)` -/
def P7404692048938545144.Spec : Prop :=
  ∀ n, P7404692048938545144.a n = A037951 n

end A037951

/-! ## A037951.P14105095505587275070

`A116385(n)-A037955(n)`
-/

namespace A037951.P14105095505587275070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 n - A037955 n

end

end A037951.P14105095505587275070

namespace A037951

/-- `A116385(n)-A037955(n)` -/
def P14105095505587275070.Spec : Prop :=
  ∀ n, P14105095505587275070.a n = A037951 n

end A037951

/-! ## A037951.P10639678606389270667

`A037955(n+1)-A037952(n)`
-/

namespace A037951.P10639678606389270667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) - A037952 n

end

end A037951.P10639678606389270667

namespace A037951

/-- `A037955(n+1)-A037952(n)` -/
def P10639678606389270667.Spec : Prop :=
  ∀ n, P10639678606389270667.a n = A037951 n

end A037951

/-! ## A037951.P15488252067485877722

`A037956(n+1)-A037953(n)`
-/

namespace A037951.P15488252067485877722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 (n + 1) - A037953 n

end

end A037951.P15488252067485877722

namespace A037951

/-- `A037956(n+1)-A037953(n)` -/
def P15488252067485877722.Spec : Prop :=
  ∀ n, P15488252067485877722.a n = A037951 n

end A037951

/-! ## A037951.P8636666682448989081

`A047182(n+1)-A047171(n)`
-/

namespace A037951.P8636666682448989081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047182 (n + 1) - A047171 n

end

end A037951.P8636666682448989081

namespace A037951

/-- `A047182(n+1)-A047171(n)` -/
def P8636666682448989081.Spec : Prop :=
  ∀ n, P8636666682448989081.a n = A037951 n

end A037951

/-! ## A037951.P6302914121209425039

`A037955(n+1)-Δ[A001405(n)]`
-/

namespace A037951.P6302914121209425039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) - (f1 (n + 1) - f1 n)

end

end A037951.P6302914121209425039

namespace A037951

/-- `A037955(n+1)-Δ[A001405(n)]` -/
def P6302914121209425039.Spec : Prop :=
  ∀ n, P6302914121209425039.a n = A037951 n

theorem P6302914121209425039.correct : P6302914121209425039.Spec := by
  intro n
  simp only [A037951, Nat.add_sub_cancel, A037951.P6302914121209425039.f1, A037951.P6302914121209425039.a, A037951.P17813764047485560527.a, A001405, A001405.P5205018418992951678.a, A037955, A037955.P15366265065769254851.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037951

/-! ## A037951.P10063718363792586858

`A037955(n+1)-Δ[A051920(n)]`
-/

namespace A037951.P10063718363792586858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) - (f1 (n + 1) - f1 n)

end

end A037951.P10063718363792586858

namespace A037951

/-- `A037955(n+1)-Δ[A051920(n)]` -/
def P10063718363792586858.Spec : Prop :=
  ∀ n, P10063718363792586858.a n = A037951 n

theorem P10063718363792586858.correct : P10063718363792586858.Spec := by
  intro n
  simp only [A037951, Nat.add_sub_cancel, A037951.P10063718363792586858.f1, A037951.P10063718363792586858.a, A037951.P17813764047485560527.a, A001405, A001405.P5205018418992951678.a, A037955, A037955.P15366265065769254851.a, A051920, A051920.P2707849764288868979.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037951

/-! ## A037951.P11558777547726815438

`A063886(n+1)/2-A208355(n+1)`
-/

namespace A037951.P11558777547726815438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (n + 1) : ℚ) / 2 - (A208355 (n + 1) : ℚ)

end

end A037951.P11558777547726815438

namespace A037951

/-- `A063886(n+1)/2-A208355(n+1)` -/
def P11558777547726815438.Spec : Prop :=
  ∀ n, P11558777547726815438.a n = (A037951 n : ℚ)

end A037951

/-! ## A037951.P285170680313479695

`A037955(n+1)+A001405(n)-A001405(n+1)`
-/

namespace A037951.P285170680313479695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) + (A001405 n - A001405 (n + 1))

end

end A037951.P285170680313479695

namespace A037951

/-- `A037955(n+1)+A001405(n)-A001405(n+1)` -/
def P285170680313479695.Spec : Prop :=
  ∀ n, P285170680313479695.a n = A037951 n

theorem P285170680313479695.correct : P285170680313479695.Spec := by
  intro n
  simp only [A037951, Nat.add_sub_cancel, A037951.P285170680313479695.a, A037951.P17813764047485560527.a, A001405, A001405.P5205018418992951678.a, A037955, A037955.P15366265065769254851.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037951

/-! ## A037951.P14920965340378680826

`A037956(n+1)+A037954(n)-A037957(n+1)`
-/

namespace A037951.P14920965340378680826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 (n + 1) + (A037954 n - A037957 (n + 1))

end

end A037951.P14920965340378680826

namespace A037951

/-- `A037956(n+1)+A037954(n)-A037957(n+1)` -/
def P14920965340378680826.Spec : Prop :=
  ∀ n, P14920965340378680826.a n = A037951 n

end A037951

/-! ## A037951.P14603486155468700923

`A037955(n+1)+A051920(n)-A051920(n+1)`
-/

namespace A037951.P14603486155468700923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) + (A051920 n - A051920 (n + 1))

end

end A037951.P14603486155468700923

namespace A037951

/-- `A037955(n+1)+A051920(n)-A051920(n+1)` -/
def P14603486155468700923.Spec : Prop :=
  ∀ n, P14603486155468700923.a n = A037951 n

theorem P14603486155468700923.correct : P14603486155468700923.Spec := by
  intro n
  simp only [A037951, Nat.add_sub_cancel, A037951.P14603486155468700923.a, A037951.P17813764047485560527.a, A001405, A001405.P5205018418992951678.a, A037955, A037955.P15366265065769254851.a, A051920, A051920.P2707849764288868979.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037951

/-! ## A037951.P17495594039230244697

`A000034(n)*A037955(A109613(n))-A037955(n)`
-/

namespace A037951.P17495594039230244697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A037955 (A109613 n).toNat - A037955 n

end

end A037951.P17495594039230244697

namespace A037951

/-- `A000034(n)*A037955(A109613(n))-A037955(n)` -/
def P17495594039230244697.Spec : Prop :=
  ∀ n, P17495594039230244697.a n = A037951 n

end A037951

/-! ## A037951.P15262394025095585430

`A026023(n)-A026010(n)`
-/

namespace A037951.P15262394025095585430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 n - A026010 n

end

end A037951.P15262394025095585430

namespace A037951

/-- `A026023(n)-A026010(n)` -/
def P15262394025095585430.Spec : Prop :=
  ∀ n, P15262394025095585430.a n = A037951 n

end A037951

/-! ## A037951.P486770752971130615

`Δ[∑[A037955(n)]-A051920(n)]`
-/

namespace A037951.P486770752971130615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A051920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037951.P486770752971130615

namespace A037951

/-- `Δ[∑[A037955(n)]-A051920(n)]` -/
def P486770752971130615.Spec : Prop :=
  ∀ n, P486770752971130615.a n = A037951 n

end A037951

/-! ## A037951.P14355478009215635688

`Δ[A026010(n)]-A001405(n+1)`
-/

namespace A037951.P14355478009215635688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001405 (n + 1)

end

end A037951.P14355478009215635688

namespace A037951

/-- `Δ[A026010(n)]-A001405(n+1)` -/
def P14355478009215635688.Spec : Prop :=
  ∀ n, P14355478009215635688.a n = A037951 n

end A037951

/-! ## A037951.P4969628456482982824

`Δ[A026010(n)-A001405(n)]-A001405(n)`
-/

namespace A037951.P4969628456482982824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n - A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001405 n

end

end A037951.P4969628456482982824

namespace A037951

/-- `Δ[A026010(n)-A001405(n)]-A001405(n)` -/
def P4969628456482982824.Spec : Prop :=
  ∀ n, P4969628456482982824.a n = A037951 n

end A037951

/-! ## A037951.P5357108190805749287

`A191307(n+1)-(A191307(n)+A037952(n))`
-/

namespace A037951.P5357108190805749287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191307 (n + 1) - (A191307 n + A037952 n)

end

end A037951.P5357108190805749287

namespace A037951

/-- `A191307(n+1)-(A191307(n)+A037952(n))` -/
def P5357108190805749287.Spec : Prop :=
  ∀ n, P5357108190805749287.a n = A037951 n

end A037951

/-! ## A037951.P6147573267321061747

`A026010(n+1)-(A026010(n)+A001405(n+1))`
-/

namespace A037951.P6147573267321061747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (n + 1) - (A026010 n + A001405 (n + 1))

end

end A037951.P6147573267321061747

namespace A037951

/-- `A026010(n+1)-(A026010(n)+A001405(n+1))` -/
def P6147573267321061747.Spec : Prop :=
  ∀ n, P6147573267321061747.a n = A037951 n

end A037951

/-! ## A037951.P3106486403831228229

`A191782(n+1)-(A026010(n)+A014495(n+1))`
-/

namespace A037951.P3106486403831228229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191782 (n + 1) - (A026010 n + A014495 (n + 1))

end

end A037951.P3106486403831228229

namespace A037951

/-- `A191782(n+1)-(A026010(n)+A014495(n+1))` -/
def P3106486403831228229.Spec : Prop :=
  ∀ n, P3106486403831228229.a n = A037951 n

end A037951

/-!
# A037952: a(n) = binomial(n, floor((n-1)/2)).

The programs for A037952, the canonical program `A037952.P12527518621144432041` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037952 has offset 0).

The definition of A037952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037952.P12527518621144432041

`∑[A191529(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037952

/-- `∑[A191529(n+1)]` -/
def P12527518621144432041.Spec : Prop :=
  ∀ n, P12527518621144432041.a n = A037952 n

theorem P12527518621144432041.correct : P12527518621144432041.Spec := by
  intro n
  simp only [A037952]

end A037952

/-! ## A037952.P5793733501690235361

`n/2*A089408(n+1)`
-/

namespace A037952.P5793733501690235361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A089408 (n + 1) : ℚ)

end

end A037952.P5793733501690235361

namespace A037952

/-- `n/2*A089408(n+1)` -/
def P5793733501690235361.Spec : Prop :=
  ∀ n, P5793733501690235361.a n = (A037952 n : ℚ)

end A037952

/-! ## A037952.P16421061650894754503

`n*A047074(n+1)/(n+2)`
-/

namespace A037952.P16421061650894754503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A047074 (n + 1) : ℚ) / (n + 2 : ℚ))

end

end A037952.P16421061650894754503

namespace A037952

/-- `n*A047074(n+1)/(n+2)` -/
def P16421061650894754503.Spec : Prop :=
  ∀ n, P16421061650894754503.a n = (A037952 n : ℚ)

end A037952

/-! ## A037952.P13558415067148278022

`A057427(n)+A047171(n)`
-/

namespace A037952.P13558415067148278022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A047171 n

end

end A037952.P13558415067148278022

namespace A037952

/-- `A057427(n)+A047171(n)` -/
def P13558415067148278022.Spec : Prop :=
  ∀ n, P13558415067148278022.a n = A037952 n

theorem P13558415067148278022.correct : P13558415067148278022.Spec := by
  intro n
  simp only [A037952, Nat.add_sub_cancel, A037952.P13558415067148278022.a, A037952.P12527518621144432041.f1, A037952.P12527518621144432041.a, A047171, A047171.P3617621157085985974.a, A057427, A057427.P3058147525557661423.a, A191529, A191529.P15028808747650929508.f2, A191529.P15028808747650929508.f1, A191529.P15028808747650929508.a, A000007, A000007.P6599383543502402472.a, A001405, A001405.P5205018418992951678.a, A057428, A057428.P2999489532230392221.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037952

/-! ## A037952.P13793376338474440459

`A047171(n)-A057428(n)`
-/

namespace A037952.P13793376338474440459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 n - A057428 n

end

end A037952.P13793376338474440459

namespace A037952

/-- `A047171(n)-A057428(n)` -/
def P13793376338474440459.Spec : Prop :=
  ∀ n, P13793376338474440459.a n = A037952 n

theorem P13793376338474440459.correct : P13793376338474440459.Spec := by
  intro n
  simp only [A037952, Nat.add_sub_cancel, A037952.P13793376338474440459.a, A037952.P12527518621144432041.f1, A037952.P12527518621144432041.a, A047171, A047171.P3617621157085985974.a, A057428, A057428.P2999489532230392221.a, A191529, A191529.P15028808747650929508.f2, A191529.P15028808747650929508.f1, A191529.P15028808747650929508.a, A001405, A001405.P5205018418992951678.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037952

/-! ## A037952.P7833980182074503471

`A001405(n)-A126120(n)`
-/

namespace A037952.P7833980182074503471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A126120 n

end

end A037952.P7833980182074503471

namespace A037952

/-- `A001405(n)-A126120(n)` -/
def P7833980182074503471.Spec : Prop :=
  ∀ n, P7833980182074503471.a n = A037952 n

end A037952

/-! ## A037952.P17738840288366424617

`A210628(n+1)+A001405(n)`
-/

namespace A037952.P17738840288366424617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 1) + A001405 n

end

end A037952.P17738840288366424617

namespace A037952

/-- `A210628(n+1)+A001405(n)` -/
def P17738840288366424617.Spec : Prop :=
  ∀ n, P17738840288366424617.a n = A037952 n

end A037952

/-! ## A037952.P8294942722066948891

`A001405(n)-A097331(n+1)`
-/

namespace A037952.P8294942722066948891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A097331 (n + 1)

end

end A037952.P8294942722066948891

namespace A037952

/-- `A001405(n)-A097331(n+1)` -/
def P8294942722066948891.Spec : Prop :=
  ∀ n, P8294942722066948891.a n = A037952 n

end A037952

/-! ## A037952.P7097551168593586435

`A072100(n+1)-A110199(n)`
-/

namespace A037952.P7097551168593586435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 1) - A110199 n

end

end A037952.P7097551168593586435

namespace A037952

/-- `A072100(n+1)-A110199(n)` -/
def P7097551168593586435.Spec : Prop :=
  ∀ n, P7097551168593586435.a n = A037952 n

end A037952

/-! ## A037952.P3882491531273958984

`A210736(n+1)-A126120(n)`
-/

namespace A037952.P3882491531273958984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - A126120 n

end

end A037952.P3882491531273958984

namespace A037952

/-- `A210736(n+1)-A126120(n)` -/
def P3882491531273958984.Spec : Prop :=
  ∀ n, P3882491531273958984.a n = A037952 n

end A037952

/-! ## A037952.P11562621293045044378

`A037955(n)-A210628(n+2)`
-/

namespace A037952.P11562621293045044378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n - A210628 (n + 2)

end

end A037952.P11562621293045044378

namespace A037952

/-- `A037955(n)-A210628(n+2)` -/
def P11562621293045044378.Spec : Prop :=
  ∀ n, P11562621293045044378.a n = A037952 n

end A037952

/-! ## A037952.P2719444566304076040

`floor(A047171(n)+n/A008619(n))`
-/

namespace A037952.P2719444566304076040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047171 n : ℚ) + (n : ℚ) / (A008619 n : ℚ)⌋

end

end A037952.P2719444566304076040

namespace A037952

/-- `floor(A047171(n)+n/A008619(n))` -/
def P2719444566304076040.Spec : Prop :=
  ∀ n, P2719444566304076040.a n = A037952 n

end A037952

/-! ## A037952.P6499614868804938403

`A210736(n+1)+A210628(n+1)`
-/

namespace A037952.P6499614868804938403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) + A210628 (n + 1)

end

end A037952.P6499614868804938403

namespace A037952

/-- `A210736(n+1)+A210628(n+1)` -/
def P6499614868804938403.Spec : Prop :=
  ∀ n, P6499614868804938403.a n = A037952 n

end A037952

/-! ## A037952.P6510454880274024003

`A210736(n+1)-A097331(n+1)`
-/

namespace A037952.P6510454880274024003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - A097331 (n + 1)

end

end A037952.P6510454880274024003

namespace A037952

/-- `A210736(n+1)-A097331(n+1)` -/
def P6510454880274024003.Spec : Prop :=
  ∀ n, P6510454880274024003.a n = A037952 n

end A037952

/-! ## A037952.P9136565940647354727

`A001405(n)+A138364(n)-A057977(n)`
-/

namespace A037952.P9136565940647354727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A138364 n - A057977 n)

end

end A037952.P9136565940647354727

namespace A037952

/-- `A001405(n)+A138364(n)-A057977(n)` -/
def P9136565940647354727.Spec : Prop :=
  ∀ n, P9136565940647354727.a n = A037952 n

end A037952

/-! ## A037952.P15046707174886267013

`A126869(n)+A138364(n)-A126120(n)`
-/

namespace A037952.P15046707174886267013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + (A138364 n - A126120 n)

end

end A037952.P15046707174886267013

namespace A037952

/-- `A126869(n)+A138364(n)-A126120(n)` -/
def P15046707174886267013.Spec : Prop :=
  ∀ n, P15046707174886267013.a n = A037952 n

end A037952

/-! ## A037952.P15743714475754926330

`A126869(n+1)+A126869(n)-A057977(n)`
-/

namespace A037952.P15743714475754926330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (n + 1) + (A126869 n - A057977 n)

end

end A037952.P15743714475754926330

namespace A037952

/-- `A126869(n+1)+A126869(n)-A057977(n)` -/
def P15743714475754926330.Spec : Prop :=
  ∀ n, P15743714475754926330.a n = A037952 n

end A037952

/-! ## A037952.P5836809525851791815

`A001405(n)+A087960(n)*A105523(n+1)`
-/

namespace A037952.P5836809525851791815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + A087960 n * A105523 (n + 1)

end

end A037952.P5836809525851791815

namespace A037952

/-- `A001405(n)+A087960(n)*A105523(n+1)` -/
def P5836809525851791815.Spec : Prop :=
  ∀ n, P5836809525851791815.a n = A037952 n

end A037952

/-! ## A037952.P2919432811558922587

`A001405(n)/A110654(n+1)*A110654(n)`
-/

namespace A037952.P2919432811558922587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A110654 (n + 1) : ℚ) * (A110654 n : ℚ)

end

end A037952.P2919432811558922587

namespace A037952

/-- `A001405(n)/A110654(n+1)*A110654(n)` -/
def P2919432811558922587.Spec : Prop :=
  ∀ n, P2919432811558922587.a n = (A037952 n : ℚ)

end A037952

/-! ## A037952.P11281882282305078468

`A001405(n)+A090192(n+1)/A087960(n+1)`
-/

namespace A037952.P11281882282305078468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) + (A090192 (n + 1) : ℚ) / (A087960 (n + 1) : ℚ)

end

end A037952.P11281882282305078468

namespace A037952

/-- `A001405(n)+A090192(n+1)/A087960(n+1)` -/
def P11281882282305078468.Spec : Prop :=
  ∀ n, P11281882282305078468.a n = (A037952 n : ℚ)

end A037952

/-!
# A037953: a(n) = binomial(n, floor((n-5)/2)).

The programs for A037953, the canonical program `A037953.P4840713921781047894` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037953 has offset 0).

The definition of A037953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037953.P4840713921781047894

`A037955(n)-A099376(floor(n/2))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037953

/-- `A037955(n)-A099376(floor(n/2))` -/
def P4840713921781047894.Spec : Prop :=
  ∀ n, P4840713921781047894.a n = A037953 n

theorem P4840713921781047894.correct : P4840713921781047894.Spec := by
  intro n
  simp only [A037953]

end A037953

/-! ## A037953.P869002421925612078

`A037956(n+1)-A037951(n)`
-/

namespace A037953.P869002421925612078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 (n + 1) - A037951 n

end

end A037953.P869002421925612078

namespace A037953

/-- `A037956(n+1)-A037951(n)` -/
def P869002421925612078.Spec : Prop :=
  ∀ n, P869002421925612078.a n = A037953 n

end A037953

/-! ## A037953.P17475591530216387852

`A037957(n+1)-A037954(n)`
-/

namespace A037953.P17475591530216387852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037957 (n + 1) - A037954 n

end

end A037953.P17475591530216387852

namespace A037953

/-- `A037957(n+1)-A037954(n)` -/
def P17475591530216387852.Spec : Prop :=
  ∀ n, P17475591530216387852.a n = A037953 n

theorem P17475591530216387852.correct : P17475591530216387852.Spec := by
  intro n
  simp only [A037953, Nat.add_sub_cancel, A037953.P17475591530216387852.a, A037953.P4840713921781047894.a, A037954, A037954.P15656623579345578521.a, A037955, A037955.P15366265065769254851.a, A037957, A037957.P523599438952609535.a, A099376, A099376.P5902379968883628035.a, A000108, A000108.P17551949696095299361.a, A001405, A001405.P5205018418992951678.a, A026021, A026021.P624873047912347274.f1, A026021.P624873047912347274.a, A208355, A208355.P6360215552861429744.a, A026016, A026016.P4489379988257310928.a, A065033, A065033.P13150710762287634520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037953

/-! ## A037953.P15719271095139468844

`A037956(n+1)+A037952(n)-A037955(n+1)`
-/

namespace A037953.P15719271095139468844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 (n + 1) + (A037952 n - A037955 (n + 1))

end

end A037953.P15719271095139468844

namespace A037953

/-- `A037956(n+1)+A037952(n)-A037955(n+1)` -/
def P15719271095139468844.Spec : Prop :=
  ∀ n, P15719271095139468844.a n = A037953 n

end A037953

/-! ## A037953.P16144725815836150602

`C(n, 3+floor(n/2))`
-/

namespace A037953.P16144725815836150602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (3 + ⌊(n : ℚ) / 2⌋).toNat

end

end A037953.P16144725815836150602

namespace A037953

/-- `C(n, 3+floor(n/2))` -/
def P16144725815836150602.Spec : Prop :=
  ∀ n, (P16144725815836150602.a n : ℤ) = A037953 n

end A037953

/-! ## A037953.P15588171415417316558

`A163259(A105343(n+1))`
-/

namespace A037953.P15588171415417316558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163259 (A105343 (n + 1)).toNat

end

end A037953.P15588171415417316558

namespace A037953

/-- `A163259(A105343(n+1))` -/
def P15588171415417316558.Spec : Prop :=
  ∀ n, P15588171415417316558.a n = A037953 n

end A037953

/-! ## A037953.P3367124911970853563

`A163259(A330357(n+1))`
-/

namespace A037953.P3367124911970853563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163259 (A330357 (n + 1)).toNat

end

end A037953.P3367124911970853563

namespace A037953

/-- `A163259(A330357(n+1))` -/
def P3367124911970853563.Spec : Prop :=
  ∀ n, P3367124911970853563.a n = A037953 n

end A037953

/-! ## A037953.P6694543732896816642

`A144225(A183575(n+2))`
-/

namespace A037953.P6694543732896816642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (A183575 (n + 2)).toNat

end

end A037953.P6694543732896816642

namespace A037953

/-- `A144225(A183575(n+2))` -/
def P6694543732896816642.Spec : Prop :=
  ∀ n, P6694543732896816642.a n = A037953 n

end A037953

/-! ## A037953.P513134046361797528

`A144225(A047838(n+3)-1)`
-/

namespace A037953.P513134046361797528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (A047838 (n + 3) - 1).toNat

end

end A037953.P513134046361797528

namespace A037953

/-- `A144225(A047838(n+3)-1)` -/
def P513134046361797528.Spec : Prop :=
  ∀ n, P513134046361797528.a n = A037953 n

end A037953

/-! ## A037953.P4984231942530469459

`A144225(A116940(n)+2+n)`
-/

namespace A037953.P4984231942530469459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (A116940 n + 2 + (n : ℤ)).toNat

end

end A037953.P4984231942530469459

namespace A037953

/-- `A144225(A116940(n)+2+n)` -/
def P4984231942530469459.Spec : Prop :=
  ∀ n, P4984231942530469459.a n = A037953 n

end A037953

/-! ## A037953.P4781647584463597353

`A144225(A074148(n+1)+1+n)`
-/

namespace A037953.P4781647584463597353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (A074148 (n + 1) + 1 + (n : ℤ)).toNat

end

end A037953.P4781647584463597353

namespace A037953

/-- `A144225(A074148(n+1)+1+n)` -/
def P4781647584463597353.Spec : Prop :=
  ∀ n, P4781647584463597353.a n = A037953 n

end A037953

/-! ## A037953.P259445303809517856

`A323211(A074148(n+1)+n)-1`
-/

namespace A037953.P259445303809517856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 (A074148 (n + 1) + (n : ℤ)).toNat - 1

end

end A037953.P259445303809517856

namespace A037953

/-- `A323211(A074148(n+1)+n)-1` -/
def P259445303809517856.Spec : Prop :=
  ∀ n, P259445303809517856.a n = A037953 n

end A037953

/-!
# A037954: a(n) = binomial(n, floor((n-7)/2)).

The programs for A037954, the canonical program `A037954.P15656623579345578521` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037954 has offset 0).

The definition of A037954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037954.P6838682154148548672

`abs(A037958(n)-A037958(A133265(n)))`
-/

namespace A037954.P6838682154148548672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037958 n - A037958 (A133265 n).toNat|

end

end A037954.P6838682154148548672

namespace A037954

/-- `abs(A037958(n)-A037958(A133265(n)))` -/
def P6838682154148548672.Spec : Prop :=
  ∀ n, P6838682154148548672.a n = A037954 n

end A037954

/-! ## A037954.P15656623579345578521

`A037957(n+1)-A037953(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037954

/-- `A037957(n+1)-A037953(n)` -/
def P15656623579345578521.Spec : Prop :=
  ∀ n, P15656623579345578521.a n = A037954 n

theorem P15656623579345578521.correct : P15656623579345578521.Spec := by
  intro n
  simp only [A037954]

end A037954

/-! ## A037954.P17537081530173595727

`abs(A037957(n)-A037957(A141310(n)))`
-/

namespace A037954.P17537081530173595727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037957 n - A037957 (A141310 n).toNat|

end

end A037954.P17537081530173595727

namespace A037954

/-- `abs(A037957(n)-A037957(A141310(n)))` -/
def P17537081530173595727.Spec : Prop :=
  ∀ n, P17537081530173595727.a n = A037954 n

end A037954

/-! ## A037954.P8827065014646622572

`A037957(n+1)+A037951(n)-A037956(n+1)`
-/

namespace A037954.P8827065014646622572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037957 (n + 1) + (A037951 n - A037956 (n + 1))

end

end A037954.P8827065014646622572

namespace A037954

/-- `A037957(n+1)+A037951(n)-A037956(n+1)` -/
def P8827065014646622572.Spec : Prop :=
  ∀ n, P8827065014646622572.a n = A037954 n

end A037954

/-! ## A037954.P11193908087973223765

`C(n, 4+floor(n/2))`
-/

namespace A037954.P11193908087973223765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (4 + ⌊(n : ℚ) / 2⌋).toNat

end

end A037954.P11193908087973223765

namespace A037954

/-- `C(n, 4+floor(n/2))` -/
def P11193908087973223765.Spec : Prop :=
  ∀ n, (P11193908087973223765.a n : ℤ) = A037954 n

end A037954

/-!
# A037955: a(n) = binomial(n, floor(n/2)-1).

The programs for A037955, the canonical program `A037955.P15366265065769254851` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037955 has offset 0).

The definition of A037955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037955.P15366265065769254851

`A001405(n)-A208355(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037955

/-- `A001405(n)-A208355(n)` -/
def P15366265065769254851.Spec : Prop :=
  ∀ n, P15366265065769254851.a n = A037955 n

theorem P15366265065769254851.correct : P15366265065769254851.Spec := by
  intro n
  simp only [A037955]

end A037955

/-! ## A037955.P13993515222078442952

`A037952(n)-A126120(n+1)`
-/

namespace A037955.P13993515222078442952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n - A126120 (n + 1)

end

end A037955.P13993515222078442952

namespace A037955

/-- `A037952(n)-A126120(n+1)` -/
def P13993515222078442952.Spec : Prop :=
  ∀ n, P13993515222078442952.a n = A037955 n

end A037955

/-! ## A037955.P10053500735795142887

`A210628(n+2)+A037952(n)`
-/

namespace A037955.P10053500735795142887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 2) + A037952 n

end

end A037955.P10053500735795142887

namespace A037955

/-- `A210628(n+2)+A037952(n)` -/
def P10053500735795142887.Spec : Prop :=
  ∀ n, P10053500735795142887.a n = A037955 n

end A037955

/-! ## A037955.P17573043427920684033

`A072100(n+1)-A110199(n+1)`
-/

namespace A037955.P17573043427920684033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 1) - A110199 (n + 1)

end

end A037955.P17573043427920684033

namespace A037955

/-- `A072100(n+1)-A110199(n+1)` -/
def P17573043427920684033.Spec : Prop :=
  ∀ n, P17573043427920684033.a n = A037955 n

end A037955

/-! ## A037955.P10387470361886493458

`A210628(n+1)+A191529(n+2)`
-/

namespace A037955.P10387470361886493458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 1) + A191529 (n + 2)

end

end A037955.P10387470361886493458

namespace A037955

/-- `A210628(n+1)+A191529(n+2)` -/
def P10387470361886493458.Spec : Prop :=
  ∀ n, P10387470361886493458.a n = A037955 n

end A037955

/-! ## A037955.P6318234546512293248

`A001405(n)-A000108(A004526(n+1))`
-/

namespace A037955.P6318234546512293248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A000108 (A004526 (n + 1)).toNat

end

end A037955.P6318234546512293248

namespace A037955

/-- `A001405(n)-A000108(A004526(n+1))` -/
def P6318234546512293248.Spec : Prop :=
  ∀ n, P6318234546512293248.a n = A037955 n

theorem P6318234546512293248.correct : P6318234546512293248.Spec := by
  intro n
  simp only [A037955, Nat.add_sub_cancel, A037955.P6318234546512293248.a, A037955.P15366265065769254851.a, A000108, A000108.P17551949696095299361.a, A001405, A001405.P5205018418992951678.a, A004526, A004526.P10084182425416171735.a, A208355, A208355.P6360215552861429744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037955

/-! ## A037955.P8635840209463437041

`A001405(n)-(A126120(n+1)+A126120(n))`
-/

namespace A037955.P8635840209463437041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - (A126120 (n + 1) + A126120 n)

end

end A037955.P8635840209463437041

namespace A037955

/-- `A001405(n)-(A126120(n+1)+A126120(n))` -/
def P8635840209463437041.Spec : Prop :=
  ∀ n, P8635840209463437041.a n = A037955 n

end A037955

/-! ## A037955.P12381973754613447782

`A037952(n)/A133622(n+1)*A057979(n)`
-/

namespace A037955.P12381973754613447782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037952 n : ℚ) / (A133622 (n + 1) : ℚ) * (A057979 n : ℚ)

end

end A037955.P12381973754613447782

namespace A037955

/-- `A037952(n)/A133622(n+1)*A057979(n)` -/
def P12381973754613447782.Spec : Prop :=
  ∀ n, P12381973754613447782.a n = (A037955 n : ℚ)

end A037955

/-! ## A037955.P17536632103486363174

`A210736(n+1)-(A126120(n+1)+A126120(n))`
-/

namespace A037955.P17536632103486363174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - (A126120 (n + 1) + A126120 n)

end

end A037955.P17536632103486363174

namespace A037955

/-- `A210736(n+1)-(A126120(n+1)+A126120(n))` -/
def P17536632103486363174.Spec : Prop :=
  ∀ n, P17536632103486363174.a n = A037955 n

end A037955

/-! ## A037955.P8854639398918466383

`Δ[A191307(abs(1-n))]`
-/

namespace A037955.P8854639398918466383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191307 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037955.P8854639398918466383

namespace A037955

/-- `Δ[A191307(abs(1-n))]` -/
def P8854639398918466383.Spec : Prop :=
  ∀ n, P8854639398918466383.a n = A037955 n

end A037955

/-! ## A037955.P12952737518026800738

`A116385(n)-A037951(n)`
-/

namespace A037955.P12952737518026800738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 n - A037951 n

end

end A037955.P12952737518026800738

namespace A037955

/-- `A116385(n)-A037951(n)` -/
def P12952737518026800738.Spec : Prop :=
  ∀ n, P12952737518026800738.a n = A037955 n

end A037955

/-! ## A037955.P8868243512855820464

`A026010(n)%A128015(n)`
-/

namespace A037955.P8868243512855820464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026010 n) (A128015 n)

end

end A037955.P8868243512855820464

namespace A037955

/-- `A026010(n)%A128015(n)` -/
def P8868243512855820464.Spec : Prop :=
  ∀ n, P8868243512855820464.a n = A037955 n

end A037955

/-! ## A037955.P13467494869814321360

`Δ[A037952(n)]-A126120(n)`
-/

namespace A037955.P13467494869814321360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A126120 n

end

end A037955.P13467494869814321360

namespace A037955

/-- `Δ[A037952(n)]-A126120(n)` -/
def P13467494869814321360.Spec : Prop :=
  ∀ n, P13467494869814321360.a n = A037955 n

end A037955

/-! ## A037955.P3541923566737194256

`A026010(n)-A001405(n+1)`
-/

namespace A037955.P3541923566737194256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n - A001405 (n + 1)

end

end A037955.P3541923566737194256

namespace A037955

/-- `A026010(n)-A001405(n+1)` -/
def P3541923566737194256.Spec : Prop :=
  ∀ n, P3541923566737194256.a n = A037955 n

theorem P3541923566737194256.correct : P3541923566737194256.Spec := by
  intro n
  simp only [A037955, Nat.add_sub_cancel, A037955.P3541923566737194256.a, A037955.P15366265065769254851.a, A001405, A001405.P5205018418992951678.a, A026010, A026010.P1065645250072885556.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, A208976, A208976.P11107744502091880902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037955

/-! ## A037955.P2223149774740973954

`A037952(n+1)-A001405(n)`
-/

namespace A037955.P2223149774740973954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) - A001405 n

end

end A037955.P2223149774740973954

namespace A037955

/-- `A037952(n+1)-A001405(n)` -/
def P2223149774740973954.Spec : Prop :=
  ∀ n, P2223149774740973954.a n = A037955 n

end A037955

/-! ## A037955.P4449995181352277680

`A047171(n+1)-A014495(n)`
-/

namespace A037955.P4449995181352277680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 (n + 1) - A014495 n

end

end A037955.P4449995181352277680

namespace A037955

/-- `A047171(n+1)-A014495(n)` -/
def P4449995181352277680.Spec : Prop :=
  ∀ n, P4449995181352277680.a n = A037955 n

end A037955

/-! ## A037955.P647039473238263037

`A037951(n+1)-A037956(n)`
-/

namespace A037955.P647039473238263037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (n + 1) - A037956 n

end

end A037955.P647039473238263037

namespace A037955

/-- `A037951(n+1)-A037956(n)` -/
def P647039473238263037.Spec : Prop :=
  ∀ n, P647039473238263037.a n = A037955 n

end A037955

/-! ## A037955.P10747082428122877460

`A026010(n)-A210736(n+2)`
-/

namespace A037955.P10747082428122877460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n - A210736 (n + 2)

end

end A037955.P10747082428122877460

namespace A037955

/-- `A026010(n)-A210736(n+2)` -/
def P10747082428122877460.Spec : Prop :=
  ∀ n, P10747082428122877460.a n = A037955 n

end A037955

/-! ## A037955.P11857681528526395095

`A007007(n+1)%A001405(n)`
-/

namespace A037955.P11857681528526395095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007007 (n + 1)) (A001405 n)

end

end A037955.P11857681528526395095

namespace A037955

/-- `A007007(n+1)%A001405(n)` -/
def P11857681528526395095.Spec : Prop :=
  ∀ n, P11857681528526395095.a n = A037955 n

end A037955

/-! ## A037955.P17009752158849015333

`A037952(n+1)-A210736(n+1)`
-/

namespace A037955.P17009752158849015333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) - A210736 (n + 1)

end

end A037955.P17009752158849015333

namespace A037955

/-- `A037952(n+1)-A210736(n+1)` -/
def P17009752158849015333.Spec : Prop :=
  ∀ n, P17009752158849015333.a n = A037955 n

end A037955

/-!
# A037956: a(n) = binomial(n, floor((n-4)/2)).

The programs for A037956, the canonical program `A037956.P945758566745438306` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037956 has offset 0).

The definition of A037956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037956.P945758566745438306

`A001405(n)-A026008(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037956

/-- `A001405(n)-A026008(n)` -/
def P945758566745438306.Spec : Prop :=
  ∀ n, P945758566745438306.a n = A037956 n

theorem P945758566745438306.correct : P945758566745438306.Spec := by
  intro n
  simp only [A037956]

end A037956

/-! ## A037956.P9639538227524286289

`A037951(n+1)-A037955(n)`
-/

namespace A037956.P9639538227524286289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (n + 1) - A037955 n

end

end A037956.P9639538227524286289

namespace A037956

/-- `A037951(n+1)-A037955(n)` -/
def P9639538227524286289.Spec : Prop :=
  ∀ n, P9639538227524286289.a n = A037956 n

end A037956

/-! ## A037956.P14724766241374664727

`A037953(n+1)-A037957(n)`
-/

namespace A037956.P14724766241374664727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037953 (n + 1) - A037957 n

end

end A037956.P14724766241374664727

namespace A037956

/-- `A037953(n+1)-A037957(n)` -/
def P14724766241374664727.Spec : Prop :=
  ∀ n, P14724766241374664727.a n = A037956 n

end A037956

/-! ## A037956.P17404801421317768071

`Δ[A001405(n)-A059348(n+2)]`
-/

namespace A037956.P17404801421317768071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A059348 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037956.P17404801421317768071

namespace A037956

/-- `Δ[A001405(n)-A059348(n+2)]` -/
def P17404801421317768071.Spec : Prop :=
  ∀ n, P17404801421317768071.a n = A037956 n

end A037956

/-! ## A037956.P2207556156419484099

`A037951(n+1)+A001405(n)-A037952(n+1)`
-/

namespace A037956.P2207556156419484099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (n + 1) + (A001405 n - A037952 (n + 1))

end

end A037956.P2207556156419484099

namespace A037956

/-- `A037951(n+1)+A001405(n)-A037952(n+1)` -/
def P2207556156419484099.Spec : Prop :=
  ∀ n, P2207556156419484099.a n = A037956 n

end A037956

/-! ## A037956.P11998776972438410497

`A037953(n+1)+A037958(n)-A037954(n+1)`
-/

namespace A037956.P11998776972438410497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037953 (n + 1) + (A037958 n - A037954 (n + 1))

end

end A037956.P11998776972438410497

namespace A037956

/-- `A037953(n+1)+A037958(n)-A037954(n+1)` -/
def P11998776972438410497.Spec : Prop :=
  ∀ n, P11998776972438410497.a n = A037956 n

end A037956

/-! ## A037956.P3965601486042427263

`Δ[A116385(n)-A001405(n)]`
-/

namespace A037956.P3965601486042427263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 n - A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037956.P3965601486042427263

namespace A037956

/-- `Δ[A116385(n)-A001405(n)]` -/
def P3965601486042427263.Spec : Prop :=
  ∀ n, P3965601486042427263.a n = A037956 n

end A037956

/-! ## A037956.P5624510088615777886

`A116385(n+1)-(A116385(n)+A037952(n))`
-/

namespace A037956.P5624510088615777886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 (n + 1) - (A116385 n + A037952 n)

end

end A037956.P5624510088615777886

namespace A037956

/-- `A116385(n+1)-(A116385(n)+A037952(n))` -/
def P5624510088615777886.Spec : Prop :=
  ∀ n, P5624510088615777886.a n = A037956 n

end A037956

/-! ## A037956.P18131509276897087226

`Δ[A026023(n)]-A026010(n)`
-/

namespace A037956.P18131509276897087226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026010 n

end

end A037956.P18131509276897087226

namespace A037956

/-- `Δ[A026023(n)]-A026010(n)` -/
def P18131509276897087226.Spec : Prop :=
  ∀ n, P18131509276897087226.a n = A037956 n

end A037956

/-! ## A037956.P11506521156056608801

`A026023(n+1)-(A026023(n)+A026010(n))`
-/

namespace A037956.P11506521156056608801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 (n + 1) - (A026023 n + A026010 n)

end

end A037956.P11506521156056608801

namespace A037956

/-- `A026023(n+1)-(A026023(n)+A026010(n))` -/
def P11506521156056608801.Spec : Prop :=
  ∀ n, P11506521156056608801.a n = A037956 n

end A037956

/-! ## A037956.P3296185224899995309

`C(n, 2+ceil(n/2))`
-/

namespace A037956.P3296185224899995309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 + ⌈(n : ℚ) / 2⌉).toNat

end

end A037956.P3296185224899995309

namespace A037956

/-- `C(n, 2+ceil(n/2))` -/
def P3296185224899995309.Spec : Prop :=
  ∀ n, (P3296185224899995309.a n : ℤ) = A037956 n

end A037956

/-! ## A037956.P11044105227824145883

`A163259(A333574(n+2))`
-/

namespace A037956.P11044105227824145883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163259 (A333574 (n + 2)).toNat

end

end A037956.P11044105227824145883

namespace A037956

/-- `A163259(A333574(n+2))` -/
def P11044105227824145883.Spec : Prop :=
  ∀ n, P11044105227824145883.a n = A037956 n

end A037956

/-! ## A037956.P16589202134519341668

`A163259(A105343(n)+n)`
-/

namespace A037956.P16589202134519341668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163259 (A105343 n + (n : ℤ)).toNat

end

end A037956.P16589202134519341668

namespace A037956

/-- `A163259(A105343(n)+n)` -/
def P16589202134519341668.Spec : Prop :=
  ∀ n, P16589202134519341668.a n = A037956 n

end A037956

/-! ## A037956.P1429507349816928716

`A163259(A330357(n)+n)`
-/

namespace A037956.P1429507349816928716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163259 (A330357 n + (n : ℤ)).toNat

end

end A037956.P1429507349816928716

namespace A037956

/-- `A163259(A330357(n)+n)` -/
def P1429507349816928716.Spec : Prop :=
  ∀ n, P1429507349816928716.a n = A037956 n

end A037956

/-! ## A037956.P674176978360859733

`A061554(∑[n])-A026008(n)`
-/

namespace A037956.P674176978360859733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (∑ j ∈ Finset.range (n + 1), f1 j) - A026008 n

end

end A037956.P674176978360859733

namespace A037956

/-- `A061554(∑[n])-A026008(n)` -/
def P674176978360859733.Spec : Prop :=
  ∀ n, P674176978360859733.a n = A037956 n

end A037956

/-! ## A037956.P11465429083668161895

`A097805(A001972(2*n+1))-A026008(n)`
-/

namespace A037956.P11465429083668161895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A001972 (2 * n + 1)).toNat - A026008 n

end

end A037956.P11465429083668161895

namespace A037956

/-- `A097805(A001972(2*n+1))-A026008(n)` -/
def P11465429083668161895.Spec : Prop :=
  ∀ n, P11465429083668161895.a n = A037956 n

end A037956

/-! ## A037956.P17723671663102377847

`A144225(A116940(n+1))`
-/

namespace A037956.P17723671663102377847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (A116940 (n + 1)).toNat

end

end A037956.P17723671663102377847

namespace A037956

/-- `A144225(A116940(n+1))` -/
def P17723671663102377847.Spec : Prop :=
  ∀ n, P17723671663102377847.a n = A037956 n

end A037956

/-! ## A037956.P15251235400192987035

`A144225(A074148(n+2)-1)`
-/

namespace A037956.P15251235400192987035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (A074148 (n + 2) - 1).toNat

end

end A037956.P15251235400192987035

namespace A037956

/-- `A144225(A074148(n+2)-1)` -/
def P15251235400192987035.Spec : Prop :=
  ∀ n, P15251235400192987035.a n = A037956 n

end A037956

/-! ## A037956.P16257589290954254592

`A144225(A047838(n+2)+2+n)`
-/

namespace A037956.P16257589290954254592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (A047838 (n + 2) + 2 + (n : ℤ)).toNat

end

end A037956.P16257589290954254592

namespace A037956

/-- `A144225(A047838(n+2)+2+n)` -/
def P16257589290954254592.Spec : Prop :=
  ∀ n, P16257589290954254592.a n = A037956 n

end A037956

/-! ## A037956.P10711598441326961220

`A159854(A047838(n+2)+2+n)`
-/

namespace A037956.P10711598441326961220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (A047838 (n + 2) + 2 + (n : ℤ)).toNat

end

end A037956.P10711598441326961220

namespace A037956

/-- `A159854(A047838(n+2)+2+n)` -/
def P10711598441326961220.Spec : Prop :=
  ∀ n, P10711598441326961220.a n = A037956 n

end A037956

/-!
# A037957: a(n) = binomial(n, floor((n-6)/2)).

The programs for A037957, the canonical program `A037957.P523599438952609535` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037957 has offset 0).

The definition of A037957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037957.P523599438952609535

`A001405(n)-A026021(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037957

/-- `A001405(n)-A026021(n)` -/
def P523599438952609535.Spec : Prop :=
  ∀ n, P523599438952609535.a n = A037957 n

theorem P523599438952609535.correct : P523599438952609535.Spec := by
  intro n
  simp only [A037957]

end A037957

/-! ## A037957.P6498379876530516692

`A037953(n+1)-A037956(n)`
-/

namespace A037957.P6498379876530516692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037953 (n + 1) - A037956 n

end

end A037957.P6498379876530516692

namespace A037957

/-- `A037953(n+1)-A037956(n)` -/
def P6498379876530516692.Spec : Prop :=
  ∀ n, P6498379876530516692.a n = A037957 n

end A037957

/-! ## A037957.P14142308547704448460

`A037954(n+1)-A037958(n)`
-/

namespace A037957.P14142308547704448460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037954 (n + 1) - A037958 n

end

end A037957.P14142308547704448460

namespace A037957

/-- `A037954(n+1)-A037958(n)` -/
def P14142308547704448460.Spec : Prop :=
  ∀ n, P14142308547704448460.a n = A037957 n

theorem P14142308547704448460.correct : P14142308547704448460.Spec := by
  intro n
  simp only [A037957, Nat.add_sub_cancel, A037957.P14142308547704448460.a, A037957.P523599438952609535.a, A001405, A001405.P5205018418992951678.a, A026021, A026021.P624873047912347274.f1, A026021.P624873047912347274.a, A037954, A037954.P15656623579345578521.a, A037958, A037958.P1538083685878928086.a, A026016, A026016.P4489379988257310928.a, A037953, A037953.P4840713921781047894.a, A065033, A065033.P13150710762287634520.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, A037955, A037955.P15366265065769254851.a, A099376, A099376.P5902379968883628035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037957

/-! ## A037957.P10615617763258822601

`A037953(n+1)+A037955(n)-A037951(n+1)`
-/

namespace A037957.P10615617763258822601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037953 (n + 1) + (A037955 n - A037951 (n + 1))

end

end A037957.P10615617763258822601

namespace A037957

/-- `A037953(n+1)+A037955(n)-A037951(n+1)` -/
def P10615617763258822601.Spec : Prop :=
  ∀ n, P10615617763258822601.a n = A037957 n

end A037957

/-! ## A037957.P5415095197337113009

`C(n, 3+ceil(n/2))`
-/

namespace A037957.P5415095197337113009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (3 + ⌈(n : ℚ) / 2⌉).toNat

end

end A037957.P5415095197337113009

namespace A037957

/-- `C(n, 3+ceil(n/2))` -/
def P5415095197337113009.Spec : Prop :=
  ∀ n, (P5415095197337113009.a n : ℤ) = A037957 n

end A037957

/-! ## A037957.P3806764666497783026

`A061554(∑[n])-A026021(n)`
-/

namespace A037957.P3806764666497783026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (∑ j ∈ Finset.range (n + 1), f1 j) - A026021 n

end

end A037957.P3806764666497783026

namespace A037957

/-- `A061554(∑[n])-A026021(n)` -/
def P3806764666497783026.Spec : Prop :=
  ∀ n, P3806764666497783026.a n = A037957 n

end A037957

/-! ## A037957.P1532855549675936049

`A097805(A001972(2*n+1))-A026021(n)`
-/

namespace A037957.P1532855549675936049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A001972 (2 * n + 1)).toNat - A026021 n

end

end A037957.P1532855549675936049

namespace A037957

/-- `A097805(A001972(2*n+1))-A026021(n)` -/
def P1532855549675936049.Spec : Prop :=
  ∀ n, P1532855549675936049.a n = A037957 n

end A037957

/-! ## A037957.P13127263124469990180

`∑[A163259(A052938(A010000(n)))]`
-/

namespace A037957.P13127263124469990180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163259 (A052938 (A010000 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037957.P13127263124469990180

namespace A037957

/-- `∑[A163259(A052938(A010000(n)))]` -/
def P13127263124469990180.Spec : Prop :=
  ∀ n, P13127263124469990180.a n = A037957 n

end A037957

/-!
# A037958: a(n) = binomial(n, floor((n-8)/2)).

The programs for A037958, the canonical program `A037958.P1538083685878928086` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037958 has offset 0).

The definition of A037958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037958.P16612193860468183539

`A001405(n)-A026034(n)`
-/

namespace A037958.P16612193860468183539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A026034 n

end

end A037958.P16612193860468183539

namespace A037958

/-- `A001405(n)-A026034(n)` -/
def P16612193860468183539.Spec : Prop :=
  ∀ n, P16612193860468183539.a n = A037958 n

theorem P16612193860468183539.correct : P16612193860468183539.Spec := by
  intro n
  simp only [A037958, Nat.add_sub_cancel, A037958.P16612193860468183539.a, A037958.P1538083685878928086.a, A001405, A001405.P5205018418992951678.a, A026034, A026034.P10503130599749257734.a, A037954, A037954.P15656623579345578521.a, A037957, A037957.P523599438952609535.a, A026021, A026021.P624873047912347274.f1, A026021.P624873047912347274.a, A037953, A037953.P4840713921781047894.a, A026016, A026016.P4489379988257310928.a, A037955, A037955.P15366265065769254851.a, A065033, A065033.P13150710762287634520.a, A099376, A099376.P5902379968883628035.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037958

/-! ## A037958.P17194855075298735742

`A210736(n+1)-A026034(n)`
-/

namespace A037958.P17194855075298735742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - A026034 n

end

end A037958.P17194855075298735742

namespace A037958

/-- `A210736(n+1)-A026034(n)` -/
def P17194855075298735742.Spec : Prop :=
  ∀ n, P17194855075298735742.a n = A037958 n

end A037958

/-! ## A037958.P1538083685878928086

`A037954(n+1)-A037957(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A037958

/-- `A037954(n+1)-A037957(n)` -/
def P1538083685878928086.Spec : Prop :=
  ∀ n, P1538083685878928086.a n = A037958 n

theorem P1538083685878928086.correct : P1538083685878928086.Spec := by
  intro n
  simp only [A037958]

end A037958

/-! ## A037958.P9190666534007705099

`A037954(n+1)+A037956(n)-A037953(n+1)`
-/

namespace A037958.P9190666534007705099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037954 (n + 1) + (A037956 n - A037953 (n + 1))

end

end A037958.P9190666534007705099

namespace A037958

/-- `A037954(n+1)+A037956(n)-A037953(n+1)` -/
def P9190666534007705099.Spec : Prop :=
  ∀ n, P9190666534007705099.a n = A037958 n

end A037958

/-! ## A037958.P6024445293887069618

`C(n, 4+ceil(n/2))`
-/

namespace A037958.P6024445293887069618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (4 + ⌈(n : ℚ) / 2⌉).toNat

end

end A037958.P6024445293887069618

namespace A037958

/-- `C(n, 4+ceil(n/2))` -/
def P6024445293887069618.Spec : Prop :=
  ∀ n, (P6024445293887069618.a n : ℤ) = A037958 n

end A037958

/-! ## A037958.P12675394200864308590

`A097805(A001972(2*n+1))-A026034(n)`
-/

namespace A037958.P12675394200864308590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A001972 (2 * n + 1)).toNat - A026034 n

end

end A037958.P12675394200864308590

namespace A037958

/-- `A097805(A001972(2*n+1))-A026034(n)` -/
def P12675394200864308590.Spec : Prop :=
  ∀ n, P12675394200864308590.a n = A037958 n

end A037958

/-!
# A037959: a(n) = n^2*(n+1)*(n+2)!/48.

The programs for A037959, the canonical program `A037959.P6444191580139124184` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037959 has offset 2).

The definition of A037959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037959.P6444191580139124184

`(n+2)²*(n+3)*(n+4)!/48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037959

/-- `(n+2)²*(n+3)*(n+4)!/48` -/
def P6444191580139124184.Spec : Prop :=
  ∀ n, P6444191580139124184.a n = (A037959 (n + 2) : ℚ)

end A037959

/-! ## A037959.P8422716639635587637

`A037961(n+2)/(n+5)`
-/

namespace A037959.P8422716639635587637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037961 (n + 2) : ℚ) / (n + 5 : ℚ)

end

end A037959.P8422716639635587637

namespace A037959

/-- `A037961(n+2)/(n+5)` -/
def P8422716639635587637.Spec : Prop :=
  ∀ n, P8422716639635587637.a n = (A037959 (n + 2) : ℚ)

end A037959

/-! ## A037959.P11722482269345153011

`∑[(n+1)/4]*∏[n+4]*ratio[(n+1)!*∑[n+1]]`
-/

namespace A037959.P11722482269345153011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * (∑ j ∈ Finset.range (n + 1), f4 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) * ((f3 (n + 1) : ℚ) / (f3 n : ℚ))

end

end A037959.P11722482269345153011

namespace A037959

/-- `∑[(n+1)/4]*∏[n+4]*ratio[(n+1)!*∑[n+1]]` -/
def P11722482269345153011.Spec : Prop :=
  ∀ n, P11722482269345153011.a n = (A037959 (n + 2) : ℚ)

end A037959

/-! ## A037959.P7570146601981749217

`A001720(n+4)*A002411(n+2)`
-/

namespace A037959.P7570146601981749217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001720 (n + 4) * A002411 (n + 2)

end

end A037959.P7570146601981749217

namespace A037959

/-- `A001720(n+4)*A002411(n+2)` -/
def P7570146601981749217.Spec : Prop :=
  ∀ n, P7570146601981749217.a n = A037959 (n + 2)

end A037959

/-! ## A037959.P4181304996467493896

`ratio[A001286(n+2)]*A005461(n+1)`
-/

namespace A037959.P4181304996467493896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001286 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A005461 (n + 1) : ℚ)

end

end A037959.P4181304996467493896

namespace A037959

/-- `ratio[A001286(n+2)]*A005461(n+1)` -/
def P4181304996467493896.Spec : Prop :=
  ∀ n, P4181304996467493896.a n = (A037959 (n + 2) : ℚ)

end A037959

/-! ## A037959.P4698814523398164411

`A061206(n+1)/A001563(n+1)*A001286(n+3)`
-/

namespace A037959.P4698814523398164411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061206 (n + 1) : ℚ) / (A001563 (n + 1) : ℚ) * (A001286 (n + 3) : ℚ)

end

end A037959.P4698814523398164411

namespace A037959

/-- `A061206(n+1)/A001563(n+1)*A001286(n+3)` -/
def P4698814523398164411.Spec : Prop :=
  ∀ n, P4698814523398164411.a n = (A037959 (n + 2) : ℚ)

end A037959

/-!
# A037960: a(n) = n*(3*n+1)*(n+2)!/24.

The programs for A037960, the canonical program `A037960.P13915048637891699170` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037960 has offset 0).

The definition of A037960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037960.P13915048637891699170

`(n+2)!*n*(3*n+1)/24`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037960

/-- `(n+2)!*n*(3*n+1)/24` -/
def P13915048637891699170.Spec : Prop :=
  ∀ n, P13915048637891699170.a n = (A037960 n : ℚ)

end A037960

/-! ## A037960.P9410149460442906501

`n*(3*n+1)*(n+2)!/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037960.P9410149460442906501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (3 * n + 1) * Nat.factorial (n + 2) : ℚ) / 24

end

end A037960.P9410149460442906501

namespace A037960

/-- `n*(3*n+1)*(n+2)!/24` -/
def P9410149460442906501.Spec : Prop :=
  ∀ n, P9410149460442906501.a n = (A037960 n : ℚ)

end A037960

/-! ## A037960.P6883585279160347128

`n!*∑[n*∑[n]]`
-/

namespace A037960.P6883585279160347128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037960.P6883585279160347128

namespace A037960

/-- `n!*∑[n*∑[n]]` -/
def P6883585279160347128.Spec : Prop :=
  ∀ n, (P6883585279160347128.a n : ℤ) = A037960 n

end A037960

/-! ## A037960.P5956332606486775187

`∑[n*∑[n]]*A000142(n)`
-/

namespace A037960.P5956332606486775187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000142 n

end

end A037960.P5956332606486775187

namespace A037960

/-- `∑[n*∑[n]]*A000142(n)` -/
def P5956332606486775187.Spec : Prop :=
  ∀ n, P5956332606486775187.a n = A037960 n

end A037960

/-! ## A037960.P18159276997658731898

`n*(A180119(n)+a(n-1))` with `a(0)=0`
-/

namespace A037960.P18159276997658731898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A180119 n + a (n - 1))

end

end A037960.P18159276997658731898

namespace A037960

/-- `n*(A180119(n)+a(n-1))` -/
def P18159276997658731898.Spec : Prop :=
  ∀ n, P18159276997658731898.a n = A037960 n

end A037960

/-! ## A037960.P15704936351704881987

`A000142(n)*A001296(n)`
-/

namespace A037960.P15704936351704881987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001296 n

end

end A037960.P15704936351704881987

namespace A037960

/-- `A000142(n)*A001296(n)` -/
def P15704936351704881987.Spec : Prop :=
  ∀ n, P15704936351704881987.a n = A037960 n

end A037960

/-! ## A037960.P1689943691955249822

`∏[A028310(n)]*A001296(n)`
-/

namespace A037960.P1689943691955249822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001296 n

end

end A037960.P1689943691955249822

namespace A037960

/-- `∏[A028310(n)]*A001296(n)` -/
def P1689943691955249822.Spec : Prop :=
  ∀ n, P1689943691955249822.a n = A037960 n

end A037960

/-! ## A037960.P13916995440919691936

`A005460(n)-A001286(n+2)`
-/

namespace A037960.P13916995440919691936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005460 n - A001286 (n + 2)

end

end A037960.P13916995440919691936

namespace A037960

/-- `A005460(n)-A001286(n+2)` -/
def P13916995440919691936.Spec : Prop :=
  ∀ n, P13916995440919691936.a n = A037960 n

end A037960

/-! ## A037960.P4236599783475197107

`A001296(n)*A130534(A000217(n))`
-/

namespace A037960.P4236599783475197107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n * A130534 (A000217 n).toNat

end

end A037960.P4236599783475197107

namespace A037960

/-- `A001296(n)*A130534(A000217(n))` -/
def P4236599783475197107.Spec : Prop :=
  ∀ n, P4236599783475197107.a n = A037960 n

end A037960

/-! ## A037960.P13202348935957674512

`A001296(n)/A001296(n+1)*A005460(n)`
-/

namespace A037960.P13202348935957674512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001296 n : ℚ) / (A001296 (n + 1) : ℚ) * (A005460 n : ℚ)

end

end A037960.P13202348935957674512

namespace A037960

/-- `A001296(n)/A001296(n+1)*A005460(n)` -/
def P13202348935957674512.Spec : Prop :=
  ∀ n, P13202348935957674512.a n = (A037960 n : ℚ)

end A037960

/-!
# A037961: a(n) = n^2*(n+1)*(n+3)!/48.

The programs for A037961, the canonical program `A037961.P16852343252226929747` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037961 has offset 0).

The definition of A037961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037961.P16852343252226929747

`(n+3)!*n²*(n+1)/48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037961

/-- `(n+3)!*n²*(n+1)/48` -/
def P16852343252226929747.Spec : Prop :=
  ∀ n, P16852343252226929747.a n = (A037961 n : ℚ)

end A037961

/-! ## A037961.P4470763405499156393

`n²*(n+1)*(n+3)!/48`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037961.P4470763405499156393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (n + 1) * Nat.factorial (n + 3) : ℚ) / 48

end

end A037961.P4470763405499156393

namespace A037961

/-- `n²*(n+1)*(n+3)!/48` -/
def P4470763405499156393.Spec : Prop :=
  ∀ n, P4470763405499156393.a n = (A037961 n : ℚ)

end A037961

/-! ## A037961.P5520314051002909992

`∑[n]*∑[∑[∑[n]]]*n!`
-/

namespace A037961.P5520314051002909992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j) * Nat.factorial n

end

end A037961.P5520314051002909992

namespace A037961

/-- `∑[n]*∑[∑[∑[n]]]*n!` -/
def P5520314051002909992.Spec : Prop :=
  ∀ n, (P5520314051002909992.a n : ℤ) = A037961 n

end A037961

/-! ## A037961.P4776520917749390696

`n!*A001297(n)`
-/

namespace A037961.P4776520917749390696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001297 n

end

end A037961.P4776520917749390696

namespace A037961

/-- `n!*A001297(n)` -/
def P4776520917749390696.Spec : Prop :=
  ∀ n, P4776520917749390696.a n = A037961 n

end A037961

/-! ## A037961.P11143846097203164280

`∑[∑[∑[n]]]*A180119(n)`
-/

namespace A037961.P11143846097203164280
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A180119 n

end

end A037961.P11143846097203164280

namespace A037961

/-- `∑[∑[∑[n]]]*A180119(n)` -/
def P11143846097203164280.Spec : Prop :=
  ∀ n, P11143846097203164280.a n = A037961 n

end A037961

/-! ## A037961.P9222397622856476596

`n*A005461(round(sqrt(n²+1)))`
-/

namespace A037961.P9222397622856476596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005461 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A037961.P9222397622856476596

namespace A037961

/-- `n*A005461(round(sqrt(n²+1)))` -/
def P9222397622856476596.Spec : Prop :=
  ∀ n, P9222397622856476596.a n = A037961 n

end A037961

/-! ## A037961.P11899647175561026085

`∑[∑[n²]]*A138772(n+1)`
-/

namespace A037961.P11899647175561026085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A138772 (n + 1)

end

end A037961.P11899647175561026085

namespace A037961

/-- `∑[∑[n²]]*A138772(n+1)` -/
def P11899647175561026085.Spec : Prop :=
  ∀ n, P11899647175561026085.a n = A037961 n

end A037961

/-! ## A037961.P10484703421939067696

`n*(A037960(n)+a(n-1))` with `a(0)=0`
-/

namespace A037961.P10484703421939067696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A037960 n + a (n - 1))

end

end A037961.P10484703421939067696

namespace A037961

/-- `n*(A037960(n)+a(n-1))` -/
def P10484703421939067696.Spec : Prop :=
  ∀ n, P10484703421939067696.a n = A037961 n

end A037961

/-! ## A037961.P976941127859885535

`A000142(n)*A001297(n)`
-/

namespace A037961.P976941127859885535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001297 n

end

end A037961.P976941127859885535

namespace A037961

/-- `A000142(n)*A001297(n)` -/
def P976941127859885535.Spec : Prop :=
  ∀ n, P976941127859885535.a n = A037961 n

end A037961

/-!
# A037962: a(n) = n*(15*n^3 + 30*n^2 + 5*n - 2)*(n+4)!/5760.

The programs for A037962, there is no canonical definition to state claims against.
-/

/-! ## A037962.P9205809449418656833

`n!*∑[n*∑[n]*∑[∑[∑[n]]]]`
-/

namespace A037962.P9205809449418656833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((∑ j ∈ Finset.range (n + 1), f2 j) * (∑ j ∈ Finset.range (n + 1), f3 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037962.P9205809449418656833

/-! ## A037962.P18265140280645300154

`n*(A037961(n)+a(n-1))` with `a(0)=0`
-/

namespace A037962.P18265140280645300154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A037961 n + a (n - 1))

end

end A037962.P18265140280645300154

/-! ## A037962.P10253900307669229316

`A000142(n)*A001298(n)`
-/

namespace A037962.P10253900307669229316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001298 n

end

end A037962.P10253900307669229316

/-! ## A037962.P9260306288478157534

`∏[A028310(n)]*A001298(n)`
-/

namespace A037962.P9260306288478157534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001298 n

end

end A037962.P9260306288478157534

/-! ## A037962.P2977135147167810489

`∏[A000007(n)+n]*A001298(n)`
-/

namespace A037962.P2977135147167810489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001298 n

end

end A037962.P2977135147167810489

/-! ## A037962.P6091823310909272681

`∏[A003056(A000124(n))]*A001298(n)`
-/

namespace A037962.P6091823310909272681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001298 n

end

end A037962.P6091823310909272681

/-! ## A037962.P17716902209943355931

`(∑[A259455(n+1)]-A259455(n+1))*A000142(n)`
-/

namespace A037962.P17716902209943355931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A259455 (n + 1)) * A000142 n

end

end A037962.P17716902209943355931

/-! ## A037962.P561530673255980386

`A005463(n+4)/A112494(n+6)*A001298(n)`
-/

namespace A037962.P561530673255980386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005463 (n + 4) : ℚ) / (A112494 (n + 6) : ℚ) * (A001298 n : ℚ)

end

end A037962.P561530673255980386

/-! ## A037962.P7630653155883511150

`A131689(A052905(n+2))`
-/

namespace A037962.P7630653155883511150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A052905 (n + 2)).toNat

end

end A037962.P7630653155883511150

/-! ## A037962.P10566332387566660436

`A131689(A056115(n)+10)`
-/

namespace A037962.P10566332387566660436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A056115 n + 10).toNat

end

end A037962.P10566332387566660436

/-!
# A037963: a(n) = n^2*(n+1)*(3*n^2 + 7*n - 2)*(n+5)!/11520.

The programs for A037963, there is no canonical definition to state claims against.
-/

/-! ## A037963.P9657445753270648863

`n!*∑[n*A001298(n)]`
-/

namespace A037963.P9657445753270648863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037963.P9657445753270648863

/-! ## A037963.P9944787998751284855

`n*(A037962(n)+a(n-1))` with `a(0)=0`
-/

namespace A037963.P9944787998751284855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A037962 n + a (n - 1))

end

end A037963.P9944787998751284855

/-! ## A037963.P9905585506344115210

`A131689(A055999(n+3))`
-/

namespace A037963.P9905585506344115210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A055999 (n + 3)).toNat

end

end A037963.P9905585506344115210

/-! ## A037963.P5154310916621161720

`A131689(eq[5, A025581(n)])`
-/

namespace A037963.P5154310916621161720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037963.P5154310916621161720

/-! ## A037963.P11116161072076956397

`A131689(eq[6, A195663(n)])`
-/

namespace A037963.P11116161072076956397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037963.P11116161072076956397

/-! ## A037963.P2380972311675837434

`A131689(Δ[A023551(n+1)])`
-/

namespace A037963.P2380972311675837434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (f1 (n + 1) - f1 n).toNat

end

end A037963.P2380972311675837434

/-! ## A037963.P5240823187096635385

`A131689(A000217(n+6)-6)`
-/

namespace A037963.P5240823187096635385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A000217 (n + 6) - 6).toNat

end

end A037963.P5240823187096635385

/-! ## A037963.P5489674979308911085

`A131689(eq[6, A004736(n+1)])`
-/

namespace A037963.P5489674979308911085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037963.P5489674979308911085

/-!
# A037964: a(n) = (1/2)*(binomial(4*n, 2*n) - (-1)^n*binomial(2*n,n)).

The programs for A037964, the canonical program `A037964.P9357622847062793927` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037964 has offset 0).

The definition of A037964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037964.P9357622847062793927

`1/2*(A001448(n)-(-1)^n*A000984(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037964

/-- `1/2*(A001448(n)-(-1)^n*A000984(n))` -/
def P9357622847062793927.Spec : Prop :=
  ∀ n, P9357622847062793927.a n = (A037964 n : ℚ)

end A037964

/-! ## A037964.P8537369712197327273

`1/2*((2*n+1)*A000108(2*n)-(-1)^n*(n+1)*A000108(n))`
-/

namespace A037964.P8537369712197327273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((2 * n + 1 : ℤ) * A000108 (2 * n) - (-1) ^ n * (n + 1 : ℤ) * A000108 n : ℚ)

end

end A037964.P8537369712197327273

namespace A037964

/-- `1/2*((2*n+1)*A000108(2*n)-(-1)^n*(n+1)*A000108(n))` -/
def P8537369712197327273.Spec : Prop :=
  ∀ n, P8537369712197327273.a n = (A037964 n : ℚ)

end A037964

/-! ## A037964.P8426217437396252138

`1/2*(C(4*n, 2*n)-(-1)^n*C(2*n, n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037964.P8426217437396252138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((Nat.choose (4 * n) (2 * n) : ℤ) - (-1) ^ n * (Nat.choose (2 * n) n : ℤ) : ℚ)

end

end A037964.P8426217437396252138

namespace A037964

/-- `1/2*(C(4*n, 2*n)-(-1)^n*C(2*n, n))` -/
def P8426217437396252138.Spec : Prop :=
  ∀ n, P8426217437396252138.a n = (A037964 n : ℚ)

end A037964

/-! ## A037964.P1342968308990296504

`A110145(2*n)`
-/

namespace A037964.P1342968308990296504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110145 (2 * n)

end

end A037964.P1342968308990296504

namespace A037964

/-- `A110145(2*n)` -/
def P1342968308990296504.Spec : Prop :=
  ∀ n, P1342968308990296504.a n = A037964 n

end A037964

/-! ## A037964.P10084682292434812161

`record[A110145(A014681(n))]`
-/

namespace A037964.P10084682292434812161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110145 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037964.P10084682292434812161

namespace A037964

/-- `record[A110145(A014681(n))]` -/
def P10084682292434812161.Spec : Prop :=
  ∀ n, P10084682292434812161.a n = A037964 n

end A037964

/-! ## A037964.P7609875453875457188

`record[A110145(A083220(n))]`
-/

namespace A037964.P7609875453875457188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110145 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037964.P7609875453875457188

namespace A037964

/-- `record[A110145(A083220(n))]` -/
def P7609875453875457188.Spec : Prop :=
  ∀ n, P7609875453875457188.a n = A037964 n

end A037964

/-! ## A037964.P11636401376496479024

`A259557(n)-A110556(n)`
-/

namespace A037964.P11636401376496479024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259557 n - A110556 n

end

end A037964.P11636401376496479024

namespace A037964

/-- `A259557(n)-A110556(n)` -/
def P11636401376496479024.Spec : Prop :=
  ∀ n, P11636401376496479024.a n = A037964 n

end A037964

/-! ## A037964.P16881600925279614726

`record[A110145(A065423(n+1))]`
-/

namespace A037964.P16881600925279614726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110145 (A065423 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037964.P16881600925279614726

namespace A037964

/-- `record[A110145(A065423(n+1))]` -/
def P16881600925279614726.Spec : Prop :=
  ∀ n, P16881600925279614726.a n = A037964 n

end A037964

/-! ## A037964.P12113397383249960274

`A000984(2*n)-A098772(n)`
-/

namespace A037964.P12113397383249960274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) - A098772 n

end

end A037964.P12113397383249960274

namespace A037964

/-- `A000984(2*n)-A098772(n)` -/
def P12113397383249960274.Spec : Prop :=
  ∀ n, P12113397383249960274.a n = A037964 n

end A037964

/-! ## A037964.P9113930275674825403

`A088218(2*n)-A110556(n)`
-/

namespace A037964.P9113930275674825403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (2 * n) - A110556 n

end

end A037964.P9113930275674825403

namespace A037964

/-- `A088218(2*n)-A110556(n)` -/
def P9113930275674825403.Spec : Prop :=
  ∀ n, P9113930275674825403.a n = A037964 n

end A037964

/-!
# A037965: a(n) = n*binomial(2*n-2, n-1).

The programs for A037965, the canonical program `A037965.P8440344184167601472` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037965 has offset 0).

The definition of A037965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037965.P6370831472868813738

`n*record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A037965.P6370831472868813738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037965.P6370831472868813738

namespace A037965

/-- `n*record[a(n-1)/(floor(n/2)/n-1)]` -/
def P6370831472868813738.Spec : Prop :=
  ∀ n, P6370831472868813738.a n = (A037965 n : ℚ)

end A037965

/-! ## A037965.P161881131958437807

`n²*A120588(n)`
-/

namespace A037965.P161881131958437807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A120588 n

end

end A037965.P161881131958437807

namespace A037965

/-- `n²*A120588(n)` -/
def P161881131958437807.Spec : Prop :=
  ∀ n, P161881131958437807.a n = A037965 n

end A037965

/-! ## A037965.P8440344184167601472

`n*(A323230(n)-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037965

/-- `n*(A323230(n)-1)` -/
def P8440344184167601472.Spec : Prop :=
  ∀ n, P8440344184167601472.a n = A037965 n

theorem P8440344184167601472.correct : P8440344184167601472.Spec := by
  intro n
  simp only [A037965]

end A037965

/-! ## A037965.P17270364505475299367

`n*A191529(2*n)`
-/

namespace A037965.P17270364505475299367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A191529 (2 * n)

end

end A037965.P17270364505475299367

namespace A037965

/-- `n*A191529(2*n)` -/
def P17270364505475299367.Spec : Prop :=
  ∀ n, P17270364505475299367.a n = A037965 n

end A037965

/-! ## A037965.P10187022555086585255

`abs(n²*A115140(n))`
-/

namespace A037965.P10187022555086585255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A115140 n|

end

end A037965.P10187022555086585255

namespace A037965

/-- `abs(n²*A115140(n))` -/
def P10187022555086585255.Spec : Prop :=
  ∀ n, P10187022555086585255.a n = A037965 n

end A037965

/-! ## A037965.P698199468908089610

`∑{d}[n, n*A134764(#)]`
-/

namespace A037965.P698199468908089610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A134764 d

end

end A037965.P698199468908089610

namespace A037965

/-- `∑{d}[n, n*A134764(#)]` -/
def P698199468908089610.Spec : Prop :=
  ∀ n, P698199468908089610.a n = A037965 n

end A037965

/-! ## A037965.P16768836787050897217

`n*A000984(abs(1-n))`
-/

namespace A037965.P16768836787050897217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000984 |1 - (n : ℤ)|.toNat

end

end A037965.P16768836787050897217

namespace A037965

/-- `n*A000984(abs(1-n))` -/
def P16768836787050897217.Spec : Prop :=
  ∀ n, P16768836787050897217.a n = A037965 n

end A037965

/-! ## A037965.P3219044226712077382

`n*A182027(2*n)/2`
-/

namespace A037965.P3219044226712077382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A182027 (2 * n) : ℚ) / 2)

end

end A037965.P3219044226712077382

namespace A037965

/-- `n*A182027(2*n)/2` -/
def P3219044226712077382.Spec : Prop :=
  ∀ n, P3219044226712077382.a n = (A037965 n : ℚ)

end A037965

/-! ## A037965.P3224159123202184621

`A000108(abs(1-n))*n²`
-/

namespace A037965.P3224159123202184621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 |1 - (n : ℤ)|.toNat * (n ^ 2 : ℤ)

end

end A037965.P3224159123202184621

namespace A037965

/-- `A000108(abs(1-n))*n²` -/
def P3224159123202184621.Spec : Prop :=
  ∀ n, P3224159123202184621.a n = A037965 n

end A037965

/-! ## A037965.P3229754319000669170

`n*n*A000108(abs(n-1))`
-/

namespace A037965.P3229754319000669170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A000108 |(n : ℤ) - 1|.toNat)

end

end A037965.P3229754319000669170

namespace A037965

/-- `n*n*A000108(abs(n-1))` -/
def P3229754319000669170.Spec : Prop :=
  ∀ n, P3229754319000669170.a n = A037965 n

end A037965

/-! ## A037965.P13552624064338730950

`n*A001405(A004275(n))`
-/

namespace A037965.P13552624064338730950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 (A004275 n).toNat

end

end A037965.P13552624064338730950

namespace A037965

/-- `n*A001405(A004275(n))` -/
def P13552624064338730950.Spec : Prop :=
  ∀ n, P13552624064338730950.a n = A037965 n

end A037965

/-! ## A037965.P14383079452546612840

`n²*A089408(A004273(n))`
-/

namespace A037965.P14383079452546612840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A089408 (A004273 n).toNat

end

end A037965.P14383079452546612840

namespace A037965

/-- `n²*A089408(A004273(n))` -/
def P14383079452546612840.Spec : Prop :=
  ∀ n, P14383079452546612840.a n = A037965 n

end A037965

/-! ## A037965.P15638011711686386188

`n²*A094876(A092899(n))`
-/

namespace A037965.P15638011711686386188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A094876 (A092899 n).toNat

end

end A037965.P15638011711686386188

namespace A037965

/-- `n²*A094876(A092899(n))` -/
def P15638011711686386188.Spec : Prop :=
  ∀ n, P15638011711686386188.a n = A037965 n

end A037965

/-! ## A037965.P10418906836218723793

`n²*A208355(A004274(n))`
-/

namespace A037965.P10418906836218723793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A208355 (A004274 n).toNat

end

end A037965.P10418906836218723793

namespace A037965

/-- `n²*A208355(A004274(n))` -/
def P10418906836218723793.Spec : Prop :=
  ∀ n, P10418906836218723793.a n = A037965 n

end A037965

/-! ## A037965.P6668268451934941027

`n*A001405(record[A097141(n)])`
-/

namespace A037965.P6668268451934941027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037965.P6668268451934941027

namespace A037965

/-- `n*A001405(record[A097141(n)])` -/
def P6668268451934941027.Spec : Prop :=
  ∀ n, P6668268451934941027.a n = A037965 n

end A037965

/-! ## A037965.P3371680083656048144

`n*record[A126869(A004442(n))]`
-/

namespace A037965.P3371680083656048144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037965.P3371680083656048144

namespace A037965

/-- `n*record[A126869(A004442(n))]` -/
def P3371680083656048144.Spec : Prop :=
  ∀ n, P3371680083656048144.a n = A037965 n

end A037965

/-! ## A037965.P12131602549279995976

`n*record[A126869(A165754(n))]`
-/

namespace A037965.P12131602549279995976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A165754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037965.P12131602549279995976

namespace A037965

/-- `n*record[A126869(A165754(n))]` -/
def P12131602549279995976.Spec : Prop :=
  ∀ n, P12131602549279995976.a n = A037965 n

end A037965

/-! ## A037965.P15460071873241244992

`n*A001405(A097141(2*n))`
-/

namespace A037965.P15460071873241244992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 (A097141 (2 * n)).toNat

end

end A037965.P15460071873241244992

namespace A037965

/-- `n*A001405(A097141(2*n))` -/
def P15460071873241244992.Spec : Prop :=
  ∀ n, P15460071873241244992.a n = A037965 n

end A037965

/-! ## A037965.P4979283873359208058

`n*A001405(A289207(2*n))`
-/

namespace A037965.P4979283873359208058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 (A289207 (2 * n)).toNat

end

end A037965.P4979283873359208058

namespace A037965

/-- `n*A001405(A289207(2*n))` -/
def P4979283873359208058.Spec : Prop :=
  ∀ n, P4979283873359208058.a n = A037965 n

end A037965

/-!
# A037966: a(n) = n^2*binomial(2*n-2, n-1).

The programs for A037966, the canonical program `A037966.P12715331042476464578` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037966 has offset 0).

The definition of A037966 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037965, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037966.P12715331042476464578

`n*A037965(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037966

/-- `n*A037965(n)` -/
def P12715331042476464578.Spec : Prop :=
  ∀ n, P12715331042476464578.a n = A037966 n

theorem P12715331042476464578.correct : P12715331042476464578.Spec := by
  intro n
  simp only [A037966]

end A037966

/-! ## A037966.P9374586768732909207

`n^3*A120588(n)`
-/

namespace A037966.P9374586768732909207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A120588 n

end

end A037966.P9374586768732909207

namespace A037966

/-- `n^3*A120588(n)` -/
def P9374586768732909207.Spec : Prop :=
  ∀ n, P9374586768732909207.a n = A037966 n

end A037966

/-! ## A037966.P6616246808025726175

`(A323230(n)-1)*n²`
-/

namespace A037966.P6616246808025726175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A323230 n - 1) * (n ^ 2 : ℤ)

end

end A037966.P6616246808025726175

namespace A037966

/-- `(A323230(n)-1)*n²` -/
def P6616246808025726175.Spec : Prop :=
  ∀ n, P6616246808025726175.a n = A037966 n

theorem P6616246808025726175.correct : P6616246808025726175.Spec := by
  intro n
  simp only [A037966, Nat.add_sub_cancel, A037966.P6616246808025726175.a, A037966.P12715331042476464578.a, A037965, A037965.P8440344184167601472.a, A323230, A323230.P7973305166393127570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037966

/-! ## A037966.P5161399826715709121

`n²*A191529(2*n)`
-/

namespace A037966.P5161399826715709121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A191529 (2 * n)

end

end A037966.P5161399826715709121

namespace A037966

/-- `n²*A191529(2*n)` -/
def P5161399826715709121.Spec : Prop :=
  ∀ n, P5161399826715709121.a n = A037966 n

end A037966

/-! ## A037966.P8413888302950388424

`n^3*A000108(abs(1-n))`
-/

namespace A037966.P8413888302950388424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A000108 |1 - (n : ℤ)|.toNat

end

end A037966.P8413888302950388424

namespace A037966

/-- `n^3*A000108(abs(1-n))` -/
def P8413888302950388424.Spec : Prop :=
  ∀ n, P8413888302950388424.a n = A037966 n

end A037966

/-! ## A037966.P11196218675690794266

`n*n*A182027(2*n)/2`
-/

namespace A037966.P11196218675690794266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) * ((A182027 (2 * n) : ℚ) / 2))

end

end A037966.P11196218675690794266

namespace A037966

/-- `n*n*A182027(2*n)/2` -/
def P11196218675690794266.Spec : Prop :=
  ∀ n, P11196218675690794266.a n = (A037966 n : ℚ)

end A037966

/-! ## A037966.P12711974164630974957

`n*A000108(abs(n-1))*n²`
-/

namespace A037966.P12711974164630974957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000108 |(n : ℤ) - 1|.toNat * (n ^ 2 : ℤ)

end

end A037966.P12711974164630974957

namespace A037966

/-- `n*A000108(abs(n-1))*n²` -/
def P12711974164630974957.Spec : Prop :=
  ∀ n, P12711974164630974957.a n = A037966 n

end A037966

/-! ## A037966.P1522122373328815089

`abs(A000578(n)*A115140(n))`
-/

namespace A037966.P1522122373328815089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n * A115140 n|

end

end A037966.P1522122373328815089

namespace A037966

/-- `abs(A000578(n)*A115140(n))` -/
def P1522122373328815089.Spec : Prop :=
  ∀ n, P1522122373328815089.a n = A037966 n

end A037966

/-! ## A037966.P7451171661000244667

`n²*A001405(A004275(n))`
-/

namespace A037966.P7451171661000244667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A001405 (A004275 n).toNat

end

end A037966.P7451171661000244667

namespace A037966

/-- `n²*A001405(A004275(n))` -/
def P7451171661000244667.Spec : Prop :=
  ∀ n, P7451171661000244667.a n = A037966 n

end A037966

/-! ## A037966.P2498873442010683621

`n²*A001405(record[A097141(n)])`
-/

namespace A037966.P2498873442010683621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A001405 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037966.P2498873442010683621

namespace A037966

/-- `n²*A001405(record[A097141(n)])` -/
def P2498873442010683621.Spec : Prop :=
  ∀ n, P2498873442010683621.a n = A037966 n

end A037966

/-! ## A037966.P15746337461117055233

`n²*record[A126869(A004442(n))]`
-/

namespace A037966.P15746337461117055233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037966.P15746337461117055233

namespace A037966

/-- `n²*record[A126869(A004442(n))]` -/
def P15746337461117055233.Spec : Prop :=
  ∀ n, P15746337461117055233.a n = A037966 n

end A037966

/-! ## A037966.P6185557058080152631

`n²*record[A126869(A165754(n))]`
-/

namespace A037966.P6185557058080152631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A165754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037966.P6185557058080152631

namespace A037966

/-- `n²*record[A126869(A165754(n))]` -/
def P6185557058080152631.Spec : Prop :=
  ∀ n, P6185557058080152631.a n = A037966 n

end A037966

/-! ## A037966.P2581135606347855640

`A000108(abs(1-n))*A000578(n)`
-/

namespace A037966.P2581135606347855640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 |1 - (n : ℤ)|.toNat * A000578 n

end

end A037966.P2581135606347855640

namespace A037966

/-- `A000108(abs(1-n))*A000578(n)` -/
def P2581135606347855640.Spec : Prop :=
  ∀ n, P2581135606347855640.a n = A037966 n

end A037966

/-! ## A037966.P14683901586305624867

`n²*A001405(A097141(2*n))`
-/

namespace A037966.P14683901586305624867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A001405 (A097141 (2 * n)).toNat

end

end A037966.P14683901586305624867

namespace A037966

/-- `n²*A001405(A097141(2*n))` -/
def P14683901586305624867.Spec : Prop :=
  ∀ n, P14683901586305624867.a n = A037966 n

end A037966

/-! ## A037966.P3174098875081274520

`n²*A001405(A289207(2*n))`
-/

namespace A037966.P3174098875081274520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A001405 (A289207 (2 * n)).toNat

end

end A037966.P3174098875081274520

namespace A037966

/-- `n²*A001405(A289207(2*n))` -/
def P3174098875081274520.Spec : Prop :=
  ∀ n, P3174098875081274520.a n = A037966 n

end A037966

/-! ## A037966.P11156522805271310669

`(A028270(n)-A000984(n))*n²`
-/

namespace A037966.P11156522805271310669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028270 n - A000984 n) * (n ^ 2 : ℤ)

end

end A037966.P11156522805271310669

namespace A037966

/-- `(A028270(n)-A000984(n))*n²` -/
def P11156522805271310669.Spec : Prop :=
  ∀ n, P11156522805271310669.a n = A037966 n

theorem P11156522805271310669.correct : P11156522805271310669.Spec := by
  intro n
  simp only [A037966, Nat.add_sub_cancel, A037966.P11156522805271310669.a, A037966.P12715331042476464578.a, A000984, A000984.P7946844122574426130.a, A028270, A028270.P16565106357147895899.a, A037965, A037965.P8440344184167601472.a, A323230, A323230.P7973305166393127570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037966

/-! ## A037966.P12600561760907367942

`n²*A210736(A289207(2*n+1))`
-/

namespace A037966.P12600561760907367942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A210736 (A289207 (2 * n + 1)).toNat

end

end A037966.P12600561760907367942

namespace A037966

/-- `n²*A210736(A289207(2*n+1))` -/
def P12600561760907367942.Spec : Prop :=
  ∀ n, P12600561760907367942.a n = A037966 n

end A037966

/-! ## A037966.P11245184956898666725

`A000578(n)*A089408(A004273(n))`
-/

namespace A037966.P11245184956898666725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A089408 (A004273 n).toNat

end

end A037966.P11245184956898666725

namespace A037966

/-- `A000578(n)*A089408(A004273(n))` -/
def P11245184956898666725.Spec : Prop :=
  ∀ n, P11245184956898666725.a n = A037966 n

end A037966

/-! ## A037966.P7750919448897446115

`2/(n+1)*A037972(n)`
-/

namespace A037966.P7750919448897446115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A037972 n : ℚ)

end

end A037966.P7750919448897446115

namespace A037966

/-- `2/(n+1)*A037972(n)` -/
def P7750919448897446115.Spec : Prop :=
  ∀ n, P7750919448897446115.a n = (A037966 n : ℚ)

end A037966

/-!
# A037967: a(n) = (binomial(2*n, n)^2 + binomial(2*n, n))/2.

The programs for A037967, the canonical program `A037967.P14716872253266186912` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037967 has offset 0).

The definition of A037967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037967.P15405436947868333415

`(C(2*n, n)²+C(2*n, n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037967.P15405436947868333415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 + Nat.choose (2 * n) n : ℚ) / 2

end

end A037967.P15405436947868333415

namespace A037967

/-- `(C(2*n, n)²+C(2*n, n))/2` -/
def P15405436947868333415.Spec : Prop :=
  ∀ n, P15405436947868333415.a n = (A037967 n : ℚ)

end A037967

/-! ## A037967.P8452634434723047067

`C(C(2*n, n)+1, 2)`
-/

namespace A037967.P8452634434723047067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (2 * n) n + 1) 2

end

end A037967.P8452634434723047067

namespace A037967

/-- `C(C(2*n, n)+1, 2)` -/
def P8452634434723047067.Spec : Prop :=
  ∀ n, (P8452634434723047067.a n : ℤ) = A037967 n

end A037967

/-! ## A037967.P14716872253266186912

`A000217(A000984(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037967

/-- `A000217(A000984(n))` -/
def P14716872253266186912.Spec : Prop :=
  ∀ n, P14716872253266186912.a n = A037967 n

theorem P14716872253266186912.correct : P14716872253266186912.Spec := by
  intro n
  simp only [A037967]

end A037967

/-! ## A037967.P15560073459711728134

`sqrt(ceil((C(2*n, n)/2)²))*A244174(n)`
-/

namespace A037967.P15560073459711728134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (⌈((Nat.choose (2 * n) n : ℚ) / 2) ^ 2⌉ : ℝ) * (A244174 n : ℝ)

end

end A037967.P15560073459711728134

namespace A037967

/-- `sqrt(ceil((C(2*n, n)/2)²))*A244174(n)` -/
def P15560073459711728134.Spec : Prop :=
  ∀ n, P15560073459711728134.a n = (A037967 n : ℝ)

end A037967

/-! ## A037967.P136645508215521303

`A088218(n)*A244174(n)`
-/

namespace A037967.P136645508215521303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A244174 n

end

end A037967.P136645508215521303

namespace A037967

/-- `A088218(n)*A244174(n)` -/
def P136645508215521303.Spec : Prop :=
  ∀ n, P136645508215521303.a n = A037967 n

end A037967

/-! ## A037967.P17880129822378589943

`lcm(A110556(n), A244174(n))`
-/

namespace A037967.P17880129822378589943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110556 n) (A244174 n)

end

end A037967.P17880129822378589943

namespace A037967

/-- `lcm(A110556(n), A244174(n))` -/
def P17880129822378589943.Spec : Prop :=
  ∀ n, (P17880129822378589943.a n : ℤ) = A037967 n

end A037967

/-! ## A037967.P2684715117132999120

`(A260878(n)-1)*A244174(n)`
-/

namespace A037967.P2684715117132999120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A260878 n - 1) * A244174 n

end

end A037967.P2684715117132999120

namespace A037967

/-- `(A260878(n)-1)*A244174(n)` -/
def P2684715117132999120.Spec : Prop :=
  ∀ n, P2684715117132999120.a n = A037967 n

end A037967

/-! ## A037967.P11755827305255308939

`(A002894(n)+A000984(n))/2`
-/

namespace A037967.P11755827305255308939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002894 n + A000984 n : ℚ) / 2

end

end A037967.P11755827305255308939

namespace A037967

/-- `(A002894(n)+A000984(n))/2` -/
def P11755827305255308939.Spec : Prop :=
  ∀ n, P11755827305255308939.a n = (A037967 n : ℚ)

end A037967

/-! ## A037967.P10486356545213069783

`or(1, A000984(n))*A088218(n)`
-/

namespace A037967.P10486356545213069783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000984 n) * A088218 n

end

end A037967.P10486356545213069783

namespace A037967

/-- `or(1, A000984(n))*A088218(n)` -/
def P10486356545213069783.Spec : Prop :=
  ∀ n, P10486356545213069783.a n = A037967 n

end A037967

/-! ## A037967.P6744604793835329434

`ceil(sqrt(A002894(n))/2)*A244174(n)`
-/

namespace A037967.P6744604793835329434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002894 n : ℝ) / 2⌉ * A244174 n

end

end A037967.P6744604793835329434

namespace A037967

/-- `ceil(sqrt(A002894(n))/2)*A244174(n)` -/
def P6744604793835329434.Spec : Prop :=
  ∀ n, P6744604793835329434.a n = A037967 n

end A037967

/-!
# A037968: Greatest number of distinct digits of n in any base b>=2.

The programs for A037968, there is no canonical definition to state claims against.
-/

/-! ## A037968.P9880519600855450756

`A072491(∑[A007504(or(1, n))])`
-/

namespace A037968.P9880519600855450756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037968.P9880519600855450756

/-! ## A037968.P11850577961965144480

`A072491(∑[A007504(A109613(n))])`
-/

namespace A037968.P11850577961965144480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037968.P11850577961965144480

/-! ## A037968.P9943694736906462432

`A261675(A086598(3*n+4)*A242771(3*n+5))`
-/

namespace A037968.P9943694736906462432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 (A086598 (3 * n + 4) * A242771 (3 * n + 5)).toNat

end

end A037968.P9943694736906462432

/-! ## A037968.P2388593069749767482

`A257990(A039956(2*(n+2))*A061345(n))`
-/

namespace A037968.P2388593069749767482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A039956 (2 * (n + 2)) * A061345 n).toNat

end

end A037968.P2388593069749767482

/-! ## A037968.P1212618744937295145

`A080942(∑[∑[A256999(3*n+2)]])`
-/

namespace A037968.P1212618744937295145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037968.P1212618744937295145

/-!
# A037969: Numbers whose maximal base-2 run length is 2.

The programs for A037969, the canonical program `A037969.P13277308523517604353` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037969 has offset 1).

The definition of A037969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037969.P13066843274038635744

`eq[2, A284559(n)]`
-/

namespace A037969.P13066843274038635744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037969.P13066843274038635744

namespace A037969

/-- `eq[2, A284559(n)]` -/
def P13066843274038635744.Spec : Prop :=
  ∀ n, (P13066843274038635744.a n : ℤ) = A037969 (n + 1)

end A037969

/-! ## A037969.P13277308523517604353

`eq[2, A043276(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037969

/-- `eq[2, A043276(n+1)]+1` -/
def P13277308523517604353.Spec : Prop :=
  ∀ n, (P13277308523517604353.a n : ℤ) = A037969 (n + 1)

theorem P13277308523517604353.correct : P13277308523517604353.Spec := by
  intro n
  simp only [A037969, Nat.add_sub_cancel]

end A037969

/-! ## A037969.P11825933238835281648

`eq[2, A043276(A028310(n))]`
-/

namespace A037969.P11825933238835281648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037969.P11825933238835281648

namespace A037969

/-- `eq[2, A043276(A028310(n))]` -/
def P11825933238835281648.Spec : Prop :=
  ∀ n, (P11825933238835281648.a n : ℤ) = A037969 (n + 1)

end A037969

/-! ## A037969.P13126988800378948283

`eq[2, A043276(A000007(n)+n)]`
-/

namespace A037969.P13126988800378948283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037969.P13126988800378948283

namespace A037969

/-- `eq[2, A043276(A000007(n)+n)]` -/
def P13126988800378948283.Spec : Prop :=
  ∀ n, (P13126988800378948283.a n : ℤ) = A037969 (n + 1)

end A037969

/-! ## A037969.P7343057813595917387

`∩[A063037(n+1), A107907(n+1)]`
-/

namespace A037969.P7343057813595917387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037969.P7343057813595917387

namespace A037969

/-- `∩[A063037(n+1), A107907(n+1)]` -/
def P7343057813595917387.Spec : Prop :=
  ∀ n, (P7343057813595917387.a n : ℤ) = A037969 (n + 1)

end A037969

/-! ## A037969.P11655169563951606486

`eq[2, A090996(A335835(n))]`
-/

namespace A037969.P11655169563951606486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A335835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037969.P11655169563951606486

namespace A037969

/-- `eq[2, A090996(A335835(n))]` -/
def P11655169563951606486.Spec : Prop :=
  ∀ n, (P11655169563951606486.a n : ℤ) = A037969 (n + 1)

end A037969

/-! ## A037969.P8004011631501576788

`eq[2, A136480(A335834(n))]`
-/

namespace A037969.P8004011631501576788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A335834 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037969.P8004011631501576788

namespace A037969

/-- `eq[2, A136480(A335834(n))]` -/
def P8004011631501576788.Spec : Prop :=
  ∀ n, (P8004011631501576788.a n : ℤ) = A037969 (n + 1)

end A037969

/-! ## A037969.P1163510287853545754

`eq[3, A261461(A281499(n))]`
-/

namespace A037969.P1163510287853545754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (A281499 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037969.P1163510287853545754

namespace A037969

/-- `eq[3, A261461(A281499(n))]` -/
def P1163510287853545754.Spec : Prop :=
  ∀ n, (P1163510287853545754.a n : ℤ) = A037969 (n + 1)

end A037969

/-! ## A037969.P17314567946948791075

`eq[2, A043276(A339597(n))]`
-/

namespace A037969.P17314567946948791075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A339597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037969.P17314567946948791075

namespace A037969

/-- `eq[2, A043276(A339597(n))]` -/
def P17314567946948791075.Spec : Prop :=
  ∀ n, (P17314567946948791075.a n : ℤ) = A037969 (n + 1)

end A037969

/-! ## A037969.P8911395727913364797

`eq[2, A043276(A042963(n+1))]`
-/

namespace A037969.P8911395727913364797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A042963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037969.P8911395727913364797

namespace A037969

/-- `eq[2, A043276(A042963(n+1))]` -/
def P8911395727913364797.Spec : Prop :=
  ∀ n, (P8911395727913364797.a n : ℤ) = A037969 (n + 1)

end A037969

/-! ## A037969.P7027592000541589839

`eq[2, A043276(A065033(2*n))]`
-/

namespace A037969.P7027592000541589839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037969.P7027592000541589839

namespace A037969

/-- `eq[2, A043276(A065033(2*n))]` -/
def P7027592000541589839.Spec : Prop :=
  ∀ n, (P7027592000541589839.a n : ℤ) = A037969 (n + 1)

end A037969

/-! ## A037969.P12703887211186334464

`eq[2, A043276(A123108(2*n))]`
-/

namespace A037969.P12703887211186334464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037969.P12703887211186334464

namespace A037969

/-- `eq[2, A043276(A123108(2*n))]` -/
def P12703887211186334464.Spec : Prop :=
  ∀ n, (P12703887211186334464.a n : ℤ) = A037969 (n + 1)

end A037969

/-! ## A037969.P869870371837226758

`eq[2, A043276(A010078(n+1))]`
-/

namespace A037969.P869870371837226758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037969.P869870371837226758

namespace A037969

/-- `eq[2, A043276(A010078(n+1))]` -/
def P869870371837226758.Spec : Prop :=
  ∀ n, (P869870371837226758.a n : ℤ) = A037969 (n + 1)

end A037969

/-! ## A037969.P15044426612814619109

`eq[2, A043276(A233583(n+1))]`
-/

namespace A037969.P15044426612814619109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037969.P15044426612814619109

namespace A037969

/-- `eq[2, A043276(A233583(n+1))]` -/
def P15044426612814619109.Spec : Prop :=
  ∀ n, (P15044426612814619109.a n : ℤ) = A037969 (n + 1)

end A037969

/-!
# A037970: Numbers whose maximal base-2 run length is 3.

The programs for A037970, the canonical program `A037970.P12455733482499786748` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037970 has offset 1).

The definition of A037970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037970.P12544811310622342787

`∩[A136037(n+1), A166535(n+1)]`
-/

namespace A037970.P12544811310622342787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037970.P12544811310622342787

namespace A037970

/-- `∩[A136037(n+1), A166535(n+1)]` -/
def P12544811310622342787.Spec : Prop :=
  ∀ n, (P12544811310622342787.a n : ℤ) = A037970 (n + 1)

end A037970

/-! ## A037970.P12455733482499786748

`eq[3, A043276(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037970

/-- `eq[3, A043276(n+1)]+1` -/
def P12455733482499786748.Spec : Prop :=
  ∀ n, (P12455733482499786748.a n : ℤ) = A037970 (n + 1)

theorem P12455733482499786748.correct : P12455733482499786748.Spec := by
  intro n
  simp only [A037970, Nat.add_sub_cancel]

end A037970

/-! ## A037970.P8761597085406267852

`eq[1, A043276(A028310(n))-2]`
-/

namespace A037970.P8761597085406267852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037970.P8761597085406267852

namespace A037970

/-- `eq[1, A043276(A028310(n))-2]` -/
def P8761597085406267852.Spec : Prop :=
  ∀ n, (P8761597085406267852.a n : ℤ) = A037970 (n + 1)

end A037970

/-! ## A037970.P10684598666479813611

`eq[2, A087117(A003188(n))]`
-/

namespace A037970.P10684598666479813611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037970.P10684598666479813611

namespace A037970

/-- `eq[2, A087117(A003188(n))]` -/
def P10684598666479813611.Spec : Prop :=
  ∀ n, (P10684598666479813611.a n : ℤ) = A037970 (n + 1)

end A037970

/-! ## A037970.P10927329733898722863

`eq[2, A087117(A341915(n))]`
-/

namespace A037970.P10927329733898722863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A341915 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037970.P10927329733898722863

namespace A037970

/-- `eq[2, A087117(A341915(n))]` -/
def P10927329733898722863.Spec : Prop :=
  ∀ n, (P10927329733898722863.a n : ℤ) = A037970 (n + 1)

end A037970

/-! ## A037970.P12665685859739827104

`eq[1, A090996(A335835(n))-2]`
-/

namespace A037970.P12665685859739827104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A335835 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037970.P12665685859739827104

namespace A037970

/-- `eq[1, A090996(A335835(n))-2]` -/
def P12665685859739827104.Spec : Prop :=
  ∀ n, (P12665685859739827104.a n : ℤ) = A037970 (n + 1)

end A037970

/-! ## A037970.P12994332219607969654

`eq[1, A136480(A335834(n))-2]`
-/

namespace A037970.P12994332219607969654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A335834 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037970.P12994332219607969654

namespace A037970

/-- `eq[1, A136480(A335834(n))-2]` -/
def P12994332219607969654.Spec : Prop :=
  ∀ n, (P12994332219607969654.a n : ℤ) = A037970 (n + 1)

end A037970

/-! ## A037970.P11817682385634477628

`eq[3, A043276(A042963(n+1))]`
-/

namespace A037970.P11817682385634477628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A042963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037970.P11817682385634477628

namespace A037970

/-- `eq[3, A043276(A042963(n+1))]` -/
def P11817682385634477628.Spec : Prop :=
  ∀ n, (P11817682385634477628.a n : ℤ) = A037970 (n + 1)

end A037970

/-! ## A037970.P3884553200068979752

`eq[1, A043276(A339597(n))-2]`
-/

namespace A037970.P3884553200068979752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A339597 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037970.P3884553200068979752

namespace A037970

/-- `eq[1, A043276(A339597(n))-2]` -/
def P3884553200068979752.Spec : Prop :=
  ∀ n, (P3884553200068979752.a n : ℤ) = A037970 (n + 1)

end A037970

/-! ## A037970.P2387523600295055924

`eq[3, A043276(A010078(n+1))]`
-/

namespace A037970.P2387523600295055924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037970.P2387523600295055924

namespace A037970

/-- `eq[3, A043276(A010078(n+1))]` -/
def P2387523600295055924.Spec : Prop :=
  ∀ n, (P2387523600295055924.a n : ℤ) = A037970 (n + 1)

end A037970

/-! ## A037970.P15256605458320978501

`eq[3, A043276(A272100(n+1))]`
-/

namespace A037970.P15256605458320978501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A272100 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037970.P15256605458320978501

namespace A037970

/-- `eq[3, A043276(A272100(n+1))]` -/
def P15256605458320978501.Spec : Prop :=
  ∀ n, (P15256605458320978501.a n : ℤ) = A037970 (n + 1)

end A037970

/-!
# A037971: Numbers whose maximal base-2 run length is 4.

The programs for A037971, the canonical program `A037971.P292331101411672502` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037971 has offset 1).

The definition of A037971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037971.P6258023421297375474

`eq[4, A043276(n+1)]+1`
-/

namespace A037971.P6258023421297375474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037971.P6258023421297375474

namespace A037971

/-- `eq[4, A043276(n+1)]+1` -/
def P6258023421297375474.Spec : Prop :=
  ∀ n, (P6258023421297375474.a n : ℤ) = A037971 (n + 1)

end A037971

/-! ## A037971.P8736127361203240224

`eq[4, A043276(A028310(n))]`
-/

namespace A037971.P8736127361203240224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037971.P8736127361203240224

namespace A037971

/-- `eq[4, A043276(A028310(n))]` -/
def P8736127361203240224.Spec : Prop :=
  ∀ n, (P8736127361203240224.a n : ℤ) = A037971 (n + 1)

end A037971

/-! ## A037971.P292331101411672502

`eq[3, A087117(xor(n, floor(n/2)))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037971

/-- `eq[3, A087117(xor(n, floor(n/2)))]` -/
def P292331101411672502.Spec : Prop :=
  ∀ n, (P292331101411672502.a n : ℤ) = A037971 (n + 1)

theorem P292331101411672502.correct : P292331101411672502.Spec := by
  intro n
  simp only [A037971, Nat.add_sub_cancel]

end A037971

/-! ## A037971.P5356226991609334959

`eq[3, A087117(A003188(n))]`
-/

namespace A037971.P5356226991609334959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037971.P5356226991609334959

namespace A037971

/-- `eq[3, A087117(A003188(n))]` -/
def P5356226991609334959.Spec : Prop :=
  ∀ n, (P5356226991609334959.a n : ℤ) = A037971 (n + 1)

end A037971

/-! ## A037971.P1422841235780567118

`eq[1, A087117(A341915(n))-2]`
-/

namespace A037971.P1422841235780567118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A341915 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037971.P1422841235780567118

namespace A037971

/-- `eq[1, A087117(A341915(n))-2]` -/
def P1422841235780567118.Spec : Prop :=
  ∀ n, (P1422841235780567118.a n : ℤ) = A037971 (n + 1)

end A037971

/-! ## A037971.P11830163832498042461

`eq[2, A090996(A335835(n))-2]`
-/

namespace A037971.P11830163832498042461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A335835 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037971.P11830163832498042461

namespace A037971

/-- `eq[2, A090996(A335835(n))-2]` -/
def P11830163832498042461.Spec : Prop :=
  ∀ n, (P11830163832498042461.a n : ℤ) = A037971 (n + 1)

end A037971

/-! ## A037971.P16145744135168318251

`eq[2, A136480(A335834(n))-2]`
-/

namespace A037971.P16145744135168318251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A335834 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037971.P16145744135168318251

namespace A037971

/-- `eq[2, A136480(A335834(n))-2]` -/
def P16145744135168318251.Spec : Prop :=
  ∀ n, (P16145744135168318251.a n : ℤ) = A037971 (n + 1)

end A037971

/-! ## A037971.P2925046557125107972

`eq[2, A043276(A339597(n))-2]`
-/

namespace A037971.P2925046557125107972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A339597 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037971.P2925046557125107972

namespace A037971

/-- `eq[2, A043276(A339597(n))-2]` -/
def P2925046557125107972.Spec : Prop :=
  ∀ n, (P2925046557125107972.a n : ℤ) = A037971 (n + 1)

end A037971

/-! ## A037971.P11358421087737402333

`eq[4, A043276(A010078(n+1))]`
-/

namespace A037971.P11358421087737402333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037971.P11358421087737402333

namespace A037971

/-- `eq[4, A043276(A010078(n+1))]` -/
def P11358421087737402333.Spec : Prop :=
  ∀ n, (P11358421087737402333.a n : ℤ) = A037971 (n + 1)

end A037971

/-! ## A037971.P4888371544244949766

`eq[4, A043276(A233583(n+1))]`
-/

namespace A037971.P4888371544244949766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037971.P4888371544244949766

namespace A037971

/-- `eq[4, A043276(A233583(n+1))]` -/
def P4888371544244949766.Spec : Prop :=
  ∀ n, (P4888371544244949766.a n : ℤ) = A037971 (n + 1)

end A037971

/-! ## A037971.P3866431776562079090

`eq[4, A043276(A272100(n+1))]`
-/

namespace A037971.P3866431776562079090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A272100 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037971.P3866431776562079090

namespace A037971

/-- `eq[4, A043276(A272100(n+1))]` -/
def P3866431776562079090.Spec : Prop :=
  ∀ n, (P3866431776562079090.a n : ℤ) = A037971 (n + 1)

end A037971

/-!
# A037972: a(n) = n^2*(n+1)*binomial(2*n-2, n-1)/2.

The programs for A037972, the canonical program `A037972.P11514362699655504355` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037972 has offset 0).

The definition of A037972 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037965, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037972.P11514362699655504355

`A000217(n)*A037965(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037972

/-- `A000217(n)*A037965(n)` -/
def P11514362699655504355.Spec : Prop :=
  ∀ n, P11514362699655504355.a n = A037972 n

theorem P11514362699655504355.correct : P11514362699655504355.Spec := by
  intro n
  simp only [A037972]

end A037972

/-! ## A037972.P3453926904916690390

`(n+1)/2*A037966(n)`
-/

namespace A037972.P3453926904916690390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A037966 n : ℚ)

end

end A037972.P3453926904916690390

namespace A037972

/-- `(n+1)/2*A037966(n)` -/
def P3453926904916690390.Spec : Prop :=
  ∀ n, P3453926904916690390.a n = (A037972 n : ℚ)

end A037972

/-! ## A037972.P12128804270964185708

`n*A182027(2*n)/2*∑[n]`
-/

namespace A037972.P12128804270964185708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A182027 (2 * n) : ℚ) / 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A037972.P12128804270964185708

namespace A037972

/-- `n*A182027(2*n)/2*∑[n]` -/
def P12128804270964185708.Spec : Prop :=
  ∀ n, P12128804270964185708.a n = (A037972 n : ℚ)

end A037972

/-! ## A037972.P16610727419217050129

`A037965(n)*A179865(n+1)`
-/

namespace A037972.P16610727419217050129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037965 n * A179865 (n + 1)

end

end A037972.P16610727419217050129

namespace A037972

/-- `A037965(n)*A179865(n+1)` -/
def P16610727419217050129.Spec : Prop :=
  ∀ n, P16610727419217050129.a n = A037972 n

end A037972

/-! ## A037972.P11744425966506037435

`(A323230(n)-1)*A002411(n)`
-/

namespace A037972.P11744425966506037435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A323230 n - 1) * A002411 n

end

end A037972.P11744425966506037435

namespace A037972

/-- `(A323230(n)-1)*A002411(n)` -/
def P11744425966506037435.Spec : Prop :=
  ∀ n, P11744425966506037435.a n = A037972 n

end A037972

/-! ## A037972.P7671458314378384195

`n*A002411(n)*A120588(n)`
-/

namespace A037972.P7671458314378384195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002411 n * A120588 n)

end

end A037972.P7671458314378384195

namespace A037972

/-- `n*A002411(n)*A120588(n)` -/
def P7671458314378384195.Spec : Prop :=
  ∀ n, P7671458314378384195.a n = A037972 n

end A037972

/-! ## A037972.P9089765912852724083

`(A088218(n)+A002740(n))*n²`
-/

namespace A037972.P9089765912852724083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088218 n + A002740 n) * (n ^ 2 : ℤ)

end

end A037972.P9089765912852724083

namespace A037972

/-- `(A088218(n)+A002740(n))*n²` -/
def P9089765912852724083.Spec : Prop :=
  ∀ n, P9089765912852724083.a n = A037972 n

end A037972

/-! ## A037972.P14022212436731796280

`n²*A000217(n)*A120588(n)`
-/

namespace A037972.P14022212436731796280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000217 n * A120588 n

end

end A037972.P14022212436731796280

namespace A037972

/-- `n²*A000217(n)*A120588(n)` -/
def P14022212436731796280.Spec : Prop :=
  ∀ n, P14022212436731796280.a n = A037972 n

end A037972

/-! ## A037972.P5796893798045704349

`n²*A179865(n+1)*A120588(n)`
-/

namespace A037972.P5796893798045704349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A179865 (n + 1) * A120588 n

end

end A037972.P5796893798045704349

namespace A037972

/-- `n²*A179865(n+1)*A120588(n)` -/
def P5796893798045704349.Spec : Prop :=
  ∀ n, P5796893798045704349.a n = A037972 n

end A037972

/-! ## A037972.P7716415649875764609

`A001405(A004275(n))*A002411(n)`
-/

namespace A037972.P7716415649875764609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A004275 n).toNat * A002411 n

end

end A037972.P7716415649875764609

namespace A037972

/-- `A001405(A004275(n))*A002411(n)` -/
def P7716415649875764609.Spec : Prop :=
  ∀ n, P7716415649875764609.a n = A037972 n

end A037972

/-! ## A037972.P17229442599715766452

`A001405(record[A097141(n)])*A002411(n)`
-/

namespace A037972.P17229442599715766452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A002411 n

end

end A037972.P17229442599715766452

namespace A037972

/-- `A001405(record[A097141(n)])*A002411(n)` -/
def P17229442599715766452.Spec : Prop :=
  ∀ n, P17229442599715766452.a n = A037972 n

end A037972

/-! ## A037972.P9218744912464755903

`A001405(A097141(2*n))*A002411(n)`
-/

namespace A037972.P9218744912464755903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A097141 (2 * n)).toNat * A002411 n

end

end A037972.P9218744912464755903

namespace A037972

/-- `A001405(A097141(2*n))*A002411(n)` -/
def P9218744912464755903.Spec : Prop :=
  ∀ n, P9218744912464755903.a n = A037972 n

end A037972

/-! ## A037972.P6008847143565479193

`∑[n]*A117852(∑[n]+1)`
-/

namespace A037972.P6008847143565479193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A117852 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A037972.P6008847143565479193

namespace A037972

/-- `∑[n]*A117852(∑[n]+1)` -/
def P6008847143565479193.Spec : Prop :=
  ∀ n, P6008847143565479193.a n = A037972 n

end A037972

/-! ## A037972.P12225598930623284449

`A002411(n)*A100100(A000124(n))`
-/

namespace A037972.P12225598930623284449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n * A100100 (A000124 n).toNat

end

end A037972.P12225598930623284449

namespace A037972

/-- `A002411(n)*A100100(A000124(n))` -/
def P12225598930623284449.Spec : Prop :=
  ∀ n, P12225598930623284449.a n = A037972 n

end A037972

/-! ## A037972.P5355739817025558813

`n*A098473(A027379(n))`
-/

namespace A037972.P5355739817025558813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A098473 (A027379 n).toNat

end

end A037972.P5355739817025558813

namespace A037972

/-- `n*A098473(A027379(n))` -/
def P5355739817025558813.Spec : Prop :=
  ∀ n, P5355739817025558813.a n = A037972 n

end A037972

/-! ## A037972.P1907229983804174602

`n*A098473(A055998(n))`
-/

namespace A037972.P1907229983804174602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A098473 (A055998 n).toNat

end

end A037972.P1907229983804174602

namespace A037972

/-- `n*A098473(A055998(n))` -/
def P1907229983804174602.Spec : Prop :=
  ∀ n, P1907229983804174602.a n = A037972 n

end A037972

/-!
# A037973: Numbers whose maximal base 3 run length is 2.

The programs for A037973, the canonical program `A037973.P9289720797582114111` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037973 has offset 1).

The definition of A037973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037973.P9289720797582114111

`eq[2, A043277(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037973

/-- `eq[2, A043277(n+1)]+1` -/
def P9289720797582114111.Spec : Prop :=
  ∀ n, (P9289720797582114111.a n : ℤ) = A037973 (n + 1)

theorem P9289720797582114111.correct : P9289720797582114111.Spec := by
  intro n
  simp only [A037973, Nat.add_sub_cancel]

end A037973

/-! ## A037973.P293348955109979566

`eq[2, A043277(A028310(n))]`
-/

namespace A037973.P293348955109979566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037973.P293348955109979566

namespace A037973

/-- `eq[2, A043277(A028310(n))]` -/
def P293348955109979566.Spec : Prop :=
  ∀ n, (P293348955109979566.a n : ℤ) = A037973 (n + 1)

end A037973

/-! ## A037973.P3177953636243611497

`A020725(eq[2, A043277(n+1)])`
-/

namespace A037973.P3177953636243611497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037973.P3177953636243611497

namespace A037973

/-- `A020725(eq[2, A043277(n+1)])` -/
def P3177953636243611497.Spec : Prop :=
  ∀ n, P3177953636243611497.a n = A037973 (n + 1)

end A037973

/-! ## A037973.P12850145405035208588

`eq[2, A043277(A065033(2*n))]`
-/

namespace A037973.P12850145405035208588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037973.P12850145405035208588

namespace A037973

/-- `eq[2, A043277(A065033(2*n))]` -/
def P12850145405035208588.Spec : Prop :=
  ∀ n, (P12850145405035208588.a n : ℤ) = A037973 (n + 1)

end A037973

/-! ## A037973.P1316295455021699628

`eq[2, A043277(A123108(2*n))]`
-/

namespace A037973.P1316295455021699628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037973.P1316295455021699628

namespace A037973

/-- `eq[2, A043277(A123108(2*n))]` -/
def P1316295455021699628.Spec : Prop :=
  ∀ n, (P1316295455021699628.a n : ℤ) = A037973 (n + 1)

end A037973

/-! ## A037973.P463186433642969826

`eq[2, A043277(A233583(n+1))]`
-/

namespace A037973.P463186433642969826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037973.P463186433642969826

namespace A037973

/-- `eq[2, A043277(A233583(n+1))]` -/
def P463186433642969826.Spec : Prop :=
  ∀ n, (P463186433642969826.a n : ℤ) = A037973 (n + 1)

end A037973

/-! ## A037973.P3882489112434936678

`eq[2, A043277(A328902(A000217(n)))]`
-/

namespace A037973.P3882489112434936678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A328902 (A000217 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037973.P3882489112434936678

namespace A037973

/-- `eq[2, A043277(A328902(A000217(n)))]` -/
def P3882489112434936678.Spec : Prop :=
  ∀ n, (P3882489112434936678.a n : ℤ) = A037973 (n + 1)

end A037973

/-!
# A037974: Numbers whose maximal base-3 run length is 3.

The programs for A037974, the canonical program `A037974.P4320292893126030488` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037974 has offset 1).

The definition of A037974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3019 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037974.P4320292893126030488

`eq[3, A043277(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037974

/-- `eq[3, A043277(n+1)]+1` -/
def P4320292893126030488.Spec : Prop :=
  ∀ n, (P4320292893126030488.a n : ℤ) = A037974 (n + 1)

theorem P4320292893126030488.correct : P4320292893126030488.Spec := by
  intro n
  simp only [A037974, Nat.add_sub_cancel]

end A037974

/-! ## A037974.P7586149322418334492

`eq[3, A043277(A028310(n))]`
-/

namespace A037974.P7586149322418334492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037974.P7586149322418334492

namespace A037974

/-- `eq[3, A043277(A028310(n))]` -/
def P7586149322418334492.Spec : Prop :=
  ∀ n, (P7586149322418334492.a n : ℤ) = A037974 (n + 1)

end A037974

/-! ## A037974.P16705505562515486337

`A020725(eq[3, A043277(n+1)])`
-/

namespace A037974.P16705505562515486337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037974.P16705505562515486337

namespace A037974

/-- `A020725(eq[3, A043277(n+1)])` -/
def P16705505562515486337.Spec : Prop :=
  ∀ n, P16705505562515486337.a n = A037974 (n + 1)

end A037974

/-! ## A037974.P15026259547407636458

`eq[3, A043277(A065033(2*n))]`
-/

namespace A037974.P15026259547407636458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037974.P15026259547407636458

namespace A037974

/-- `eq[3, A043277(A065033(2*n))]` -/
def P15026259547407636458.Spec : Prop :=
  ∀ n, (P15026259547407636458.a n : ℤ) = A037974 (n + 1)

end A037974

/-! ## A037974.P4444783050329578018

`eq[3, A043277(A123108(2*n))]`
-/

namespace A037974.P4444783050329578018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037974.P4444783050329578018

namespace A037974

/-- `eq[3, A043277(A123108(2*n))]` -/
def P4444783050329578018.Spec : Prop :=
  ∀ n, (P4444783050329578018.a n : ℤ) = A037974 (n + 1)

end A037974

/-! ## A037974.P15331179580709982452

`eq[3, A043277(A233583(n+1))]`
-/

namespace A037974.P15331179580709982452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037974.P15331179580709982452

namespace A037974

/-- `eq[3, A043277(A233583(n+1))]` -/
def P15331179580709982452.Spec : Prop :=
  ∀ n, (P15331179580709982452.a n : ℤ) = A037974 (n + 1)

end A037974

/-!
# A037975: Maximal base 3 run length is 4.

The programs for A037975, the canonical program `A037975.P15275550205582230109` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037975 has offset 1).

The definition of A037975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1042 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037975.P15275550205582230109

`eq[4, A043277(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037975

/-- `eq[4, A043277(n+1)]+1` -/
def P15275550205582230109.Spec : Prop :=
  ∀ n, (P15275550205582230109.a n : ℤ) = A037975 (n + 1)

theorem P15275550205582230109.correct : P15275550205582230109.Spec := by
  intro n
  simp only [A037975, Nat.add_sub_cancel]

end A037975

/-! ## A037975.P3554631327373058224

`eq[4, A043277(A028310(n))]`
-/

namespace A037975.P3554631327373058224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037975.P3554631327373058224

namespace A037975

/-- `eq[4, A043277(A028310(n))]` -/
def P3554631327373058224.Spec : Prop :=
  ∀ n, (P3554631327373058224.a n : ℤ) = A037975 (n + 1)

end A037975

/-! ## A037975.P3603314126333894997

`A020725(eq[4, A043277(n+1)])`
-/

namespace A037975.P3603314126333894997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037975.P3603314126333894997

namespace A037975

/-- `A020725(eq[4, A043277(n+1)])` -/
def P3603314126333894997.Spec : Prop :=
  ∀ n, P3603314126333894997.a n = A037975 (n + 1)

end A037975

/-! ## A037975.P3768014947825927333

`eq[4, A043277(A065033(2*n))]`
-/

namespace A037975.P3768014947825927333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037975.P3768014947825927333

namespace A037975

/-- `eq[4, A043277(A065033(2*n))]` -/
def P3768014947825927333.Spec : Prop :=
  ∀ n, (P3768014947825927333.a n : ℤ) = A037975 (n + 1)

end A037975

/-! ## A037975.P619011930098527401

`eq[4, A043277(A123108(2*n))]`
-/

namespace A037975.P619011930098527401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037975.P619011930098527401

namespace A037975

/-- `eq[4, A043277(A123108(2*n))]` -/
def P619011930098527401.Spec : Prop :=
  ∀ n, (P619011930098527401.a n : ℤ) = A037975 (n + 1)

end A037975

/-! ## A037975.P5898357844083870034

`eq[4, A043277(A233583(n+1))]`
-/

namespace A037975.P5898357844083870034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037975.P5898357844083870034

namespace A037975

/-- `eq[4, A043277(A233583(n+1))]` -/
def P5898357844083870034.Spec : Prop :=
  ∀ n, (P5898357844083870034.a n : ℤ) = A037975 (n + 1)

end A037975

/-!
# A037976: a(n) = (1/4)*(binomial(4*n, 2*n) - (-1)^n*binomial(2*n, n) + (1-(-1)^n)*binomial(2*n, n)^2).

The programs for A037976, there is no canonical definition to state claims against.
-/

/-! ## A037976.P7794967130404510175

`4*A037980(n)`
-/

namespace A037976.P7794967130404510175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A037980 n

end

end A037976.P7794967130404510175

/-! ## A037976.P2401648647509293384

`A037980(n)/4^A008683(A151800(n))`
-/

namespace A037976.P2401648647509293384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037980 n : ℚ) / (4 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ)

end

end A037976.P2401648647509293384

/-!
# A037977: Numbers whose maximal base 4 run length is 2.

The programs for A037977, the canonical program `A037977.P12673998109897903617` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037977 has offset 1).

The definition of A037977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5650 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037977.P12673998109897903617

`eq[2, A043278(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037977

/-- `eq[2, A043278(n+1)]+1` -/
def P12673998109897903617.Spec : Prop :=
  ∀ n, (P12673998109897903617.a n : ℤ) = A037977 (n + 1)

theorem P12673998109897903617.correct : P12673998109897903617.Spec := by
  intro n
  simp only [A037977, Nat.add_sub_cancel]

end A037977

/-! ## A037977.P6150218973053713775

`eq[2, A043278(A028310(n))]`
-/

namespace A037977.P6150218973053713775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037977.P6150218973053713775

namespace A037977

/-- `eq[2, A043278(A028310(n))]` -/
def P6150218973053713775.Spec : Prop :=
  ∀ n, (P6150218973053713775.a n : ℤ) = A037977 (n + 1)

end A037977

/-! ## A037977.P14097678080951165358

`A020725(eq[2, A043278(n+1)])`
-/

namespace A037977.P14097678080951165358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037977.P14097678080951165358

namespace A037977

/-- `A020725(eq[2, A043278(n+1)])` -/
def P14097678080951165358.Spec : Prop :=
  ∀ n, P14097678080951165358.a n = A037977 (n + 1)

end A037977

/-! ## A037977.P1813996100784925595

`A065475(eq[2, A043278(n+1)])`
-/

namespace A037977.P1813996100784925595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037977.P1813996100784925595

namespace A037977

/-- `A065475(eq[2, A043278(n+1)])` -/
def P1813996100784925595.Spec : Prop :=
  ∀ n, P1813996100784925595.a n = A037977 (n + 1)

end A037977

/-! ## A037977.P16206226481806808099

`eq[2, A043278(A065033(2*n))]`
-/

namespace A037977.P16206226481806808099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037977.P16206226481806808099

namespace A037977

/-- `eq[2, A043278(A065033(2*n))]` -/
def P16206226481806808099.Spec : Prop :=
  ∀ n, (P16206226481806808099.a n : ℤ) = A037977 (n + 1)

end A037977

/-! ## A037977.P5143279662533134718

`eq[2, A043278(A123108(2*n))]`
-/

namespace A037977.P5143279662533134718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037977.P5143279662533134718

namespace A037977

/-- `eq[2, A043278(A123108(2*n))]` -/
def P5143279662533134718.Spec : Prop :=
  ∀ n, (P5143279662533134718.a n : ℤ) = A037977 (n + 1)

end A037977

/-! ## A037977.P3681822715560248786

`eq[2, A043278(A233583(n+1))]`
-/

namespace A037977.P3681822715560248786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037977.P3681822715560248786

namespace A037977

/-- `eq[2, A043278(A233583(n+1))]` -/
def P3681822715560248786.Spec : Prop :=
  ∀ n, (P3681822715560248786.a n : ℤ) = A037977 (n + 1)

end A037977

/-!
# A037978: Numbers whose maximal base 4 run length is 3.

The programs for A037978, the canonical program `A037978.P6901928628612569768` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037978 has offset 1).

The definition of A037978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1698 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037978.P6901928628612569768

`eq[3, A043278(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037978

/-- `eq[3, A043278(n+1)]+1` -/
def P6901928628612569768.Spec : Prop :=
  ∀ n, (P6901928628612569768.a n : ℤ) = A037978 (n + 1)

theorem P6901928628612569768.correct : P6901928628612569768.Spec := by
  intro n
  simp only [A037978, Nat.add_sub_cancel]

end A037978

/-! ## A037978.P6912163922735996002

`eq[3, A043278(A028310(n))]`
-/

namespace A037978.P6912163922735996002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037978.P6912163922735996002

namespace A037978

/-- `eq[3, A043278(A028310(n))]` -/
def P6912163922735996002.Spec : Prop :=
  ∀ n, (P6912163922735996002.a n : ℤ) = A037978 (n + 1)

end A037978

/-! ## A037978.P17305949584898320093

`A020725(eq[3, A043278(n+1)])`
-/

namespace A037978.P17305949584898320093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037978.P17305949584898320093

namespace A037978

/-- `A020725(eq[3, A043278(n+1)])` -/
def P17305949584898320093.Spec : Prop :=
  ∀ n, P17305949584898320093.a n = A037978 (n + 1)

end A037978

/-! ## A037978.P14290498385070015864

`eq[3, A043278(A065033(2*n))]`
-/

namespace A037978.P14290498385070015864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037978.P14290498385070015864

namespace A037978

/-- `eq[3, A043278(A065033(2*n))]` -/
def P14290498385070015864.Spec : Prop :=
  ∀ n, (P14290498385070015864.a n : ℤ) = A037978 (n + 1)

end A037978

/-! ## A037978.P6257866018493546645

`eq[3, A043278(A123108(2*n))]`
-/

namespace A037978.P6257866018493546645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037978.P6257866018493546645

namespace A037978

/-- `eq[3, A043278(A123108(2*n))]` -/
def P6257866018493546645.Spec : Prop :=
  ∀ n, (P6257866018493546645.a n : ℤ) = A037978 (n + 1)

end A037978

/-! ## A037978.P7729069296231049660

`eq[3, A043278(A233583(n+1))]`
-/

namespace A037978.P7729069296231049660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037978.P7729069296231049660

namespace A037978

/-- `eq[3, A043278(A233583(n+1))]` -/
def P7729069296231049660.Spec : Prop :=
  ∀ n, (P7729069296231049660.a n : ℤ) = A037978 (n + 1)

end A037978

/-!
# A037979: Numbers whose maximal base-4 run length is 4.

The programs for A037979, the canonical program `A037979.P3421549748128704397` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037979 has offset 1).

The definition of A037979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037979.P3421549748128704397

`eq[4, A043278(A028310(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037979

/-- `eq[4, A043278(A028310(n))]` -/
def P3421549748128704397.Spec : Prop :=
  ∀ n, (P3421549748128704397.a n : ℤ) = A037979 (n + 1)

theorem P3421549748128704397.correct : P3421549748128704397.Spec := by
  intro n
  simp only [A037979, Nat.add_sub_cancel]

end A037979

/-! ## A037979.P5454995232356743823

`A020725(eq[4, A043278(n+1)])`
-/

namespace A037979.P5454995232356743823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037979.P5454995232356743823

namespace A037979

/-- `A020725(eq[4, A043278(n+1)])` -/
def P5454995232356743823.Spec : Prop :=
  ∀ n, P5454995232356743823.a n = A037979 (n + 1)

end A037979

/-! ## A037979.P432827332068729204

`A065475(eq[4, A043278(n+1)])`
-/

namespace A037979.P432827332068729204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037979.P432827332068729204

namespace A037979

/-- `A065475(eq[4, A043278(n+1)])` -/
def P432827332068729204.Spec : Prop :=
  ∀ n, P432827332068729204.a n = A037979 (n + 1)

end A037979

/-! ## A037979.P3798154708971444914

`eq[4, A043278(A233583(n+1))]`
-/

namespace A037979.P3798154708971444914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037979.P3798154708971444914

namespace A037979

/-- `eq[4, A043278(A233583(n+1))]` -/
def P3798154708971444914.Spec : Prop :=
  ∀ n, (P3798154708971444914.a n : ℤ) = A037979 (n + 1)

end A037979

/-!
# A037980: a(n) = (1/16)*( binomial(4*n, 2*n) - (-1)^n*binomial(2*n, n) + (1-(-1)^n)*binomial(2*n, n)^2 ).

The programs for A037980, there is no canonical definition to state claims against.
-/

/-! ## A037980.P14441459405415080405

`A037976(n)/4`
-/

namespace A037980.P14441459405415080405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037976 n : ℚ) / 4

end

end A037980.P14441459405415080405

/-!
# A037981: Maximal base 5 run length is 2.

The programs for A037981, the canonical program `A037981.P14513050706358077236` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037981 has offset 1).

The definition of A037981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037981.P14513050706358077236

`eq[2, A043279(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037981

/-- `eq[2, A043279(n+1)]+1` -/
def P14513050706358077236.Spec : Prop :=
  ∀ n, (P14513050706358077236.a n : ℤ) = A037981 (n + 1)

theorem P14513050706358077236.correct : P14513050706358077236.Spec := by
  intro n
  simp only [A037981, Nat.add_sub_cancel]

end A037981

/-! ## A037981.P7199931065307511198

`eq[2, A043279(A028310(n))]`
-/

namespace A037981.P7199931065307511198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037981.P7199931065307511198

namespace A037981

/-- `eq[2, A043279(A028310(n))]` -/
def P7199931065307511198.Spec : Prop :=
  ∀ n, (P7199931065307511198.a n : ℤ) = A037981 (n + 1)

end A037981

/-! ## A037981.P13127169707577956891

`A020725(eq[2, A043279(n+1)])`
-/

namespace A037981.P13127169707577956891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037981.P13127169707577956891

namespace A037981

/-- `A020725(eq[2, A043279(n+1)])` -/
def P13127169707577956891.Spec : Prop :=
  ∀ n, P13127169707577956891.a n = A037981 (n + 1)

end A037981

/-! ## A037981.P1868601276799560942

`A114637(eq[2, A043279(n+1)])`
-/

namespace A037981.P1868601276799560942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037981.P1868601276799560942

namespace A037981

/-- `A114637(eq[2, A043279(n+1)])` -/
def P1868601276799560942.Spec : Prop :=
  ∀ n, P1868601276799560942.a n = A037981 (n + 1)

end A037981

/-! ## A037981.P18120312065472218469

`eq[2, A043279(A000007(n)+n)]`
-/

namespace A037981.P18120312065472218469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037981.P18120312065472218469

namespace A037981

/-- `eq[2, A043279(A000007(n)+n)]` -/
def P18120312065472218469.Spec : Prop :=
  ∀ n, (P18120312065472218469.a n : ℤ) = A037981 (n + 1)

end A037981

/-! ## A037981.P5458290326516137324

`eq[2, A043279(A065033(2*n))]`
-/

namespace A037981.P5458290326516137324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037981.P5458290326516137324

namespace A037981

/-- `eq[2, A043279(A065033(2*n))]` -/
def P5458290326516137324.Spec : Prop :=
  ∀ n, (P5458290326516137324.a n : ℤ) = A037981 (n + 1)

end A037981

/-! ## A037981.P4671867898645474590

`eq[2, A043279(A123108(2*n))]`
-/

namespace A037981.P4671867898645474590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037981.P4671867898645474590

namespace A037981

/-- `eq[2, A043279(A123108(2*n))]` -/
def P4671867898645474590.Spec : Prop :=
  ∀ n, (P4671867898645474590.a n : ℤ) = A037981 (n + 1)

end A037981

/-! ## A037981.P17950739834243129877

`eq[2, A043279(A233583(n+1))]`
-/

namespace A037981.P17950739834243129877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037981.P17950739834243129877

namespace A037981

/-- `eq[2, A043279(A233583(n+1))]` -/
def P17950739834243129877.Spec : Prop :=
  ∀ n, (P17950739834243129877.a n : ℤ) = A037981 (n + 1)

end A037981

/-!
# A037982: Numbers whose maximal base 5 run length is 3.

The programs for A037982, the canonical program `A037982.P17252086828544893324` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037982 has offset 1).

The definition of A037982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037982.P17252086828544893324

`eq[3, A043279(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037982

/-- `eq[3, A043279(n+1)]+1` -/
def P17252086828544893324.Spec : Prop :=
  ∀ n, (P17252086828544893324.a n : ℤ) = A037982 (n + 1)

theorem P17252086828544893324.correct : P17252086828544893324.Spec := by
  intro n
  simp only [A037982, Nat.add_sub_cancel]

end A037982

/-! ## A037982.P17612790592806779836

`eq[3, A043279(A028310(n))]`
-/

namespace A037982.P17612790592806779836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037982.P17612790592806779836

namespace A037982

/-- `eq[3, A043279(A028310(n))]` -/
def P17612790592806779836.Spec : Prop :=
  ∀ n, (P17612790592806779836.a n : ℤ) = A037982 (n + 1)

end A037982

/-! ## A037982.P5972758876550669264

`A114637(eq[3, A043279(n+1)])`
-/

namespace A037982.P5972758876550669264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037982.P5972758876550669264

namespace A037982

/-- `A114637(eq[3, A043279(n+1)])` -/
def P5972758876550669264.Spec : Prop :=
  ∀ n, P5972758876550669264.a n = A037982 (n + 1)

end A037982

/-! ## A037982.P5770114782098528125

`eq[3, A043279(A000007(n)+n)]`
-/

namespace A037982.P5770114782098528125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037982.P5770114782098528125

namespace A037982

/-- `eq[3, A043279(A000007(n)+n)]` -/
def P5770114782098528125.Spec : Prop :=
  ∀ n, (P5770114782098528125.a n : ℤ) = A037982 (n + 1)

end A037982

/-! ## A037982.P4244510808343154480

`eq[3, A043279(A065033(2*n))]`
-/

namespace A037982.P4244510808343154480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037982.P4244510808343154480

namespace A037982

/-- `eq[3, A043279(A065033(2*n))]` -/
def P4244510808343154480.Spec : Prop :=
  ∀ n, (P4244510808343154480.a n : ℤ) = A037982 (n + 1)

end A037982

/-! ## A037982.P14614431133901916243

`eq[3, A043279(A123108(2*n))]`
-/

namespace A037982.P14614431133901916243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037982.P14614431133901916243

namespace A037982

/-- `eq[3, A043279(A123108(2*n))]` -/
def P14614431133901916243.Spec : Prop :=
  ∀ n, (P14614431133901916243.a n : ℤ) = A037982 (n + 1)

end A037982

/-! ## A037982.P7090194849210396115

`eq[3, A043279(A233583(n+1))]`
-/

namespace A037982.P7090194849210396115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037982.P7090194849210396115

namespace A037982

/-- `eq[3, A043279(A233583(n+1))]` -/
def P7090194849210396115.Spec : Prop :=
  ∀ n, (P7090194849210396115.a n : ℤ) = A037982 (n + 1)

end A037982

/-!
# A037983: Maximal base 5 run length is 4.

The programs for A037983, the canonical program `A037983.P3966973048164960492` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037983 has offset 1).

The definition of A037983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037983.P3966973048164960492

`eq[4, A043279(A028310(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037983

/-- `eq[4, A043279(A028310(n))]` -/
def P3966973048164960492.Spec : Prop :=
  ∀ n, (P3966973048164960492.a n : ℤ) = A037983 (n + 1)

theorem P3966973048164960492.correct : P3966973048164960492.Spec := by
  intro n
  simp only [A037983, Nat.add_sub_cancel]

end A037983

/-! ## A037983.P16206026957311244948

`eq[4, A043279(A233583(n+1))]`
-/

namespace A037983.P16206026957311244948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037983.P16206026957311244948

namespace A037983

/-- `eq[4, A043279(A233583(n+1))]` -/
def P16206026957311244948.Spec : Prop :=
  ∀ n, (P16206026957311244948.a n : ℤ) = A037983 (n + 1)

end A037983

/-!
# A037984: Maximum number of trapezoids that can be formed by n lines in plane.

The programs for A037984, there is no canonical definition to state claims against.
-/

/-! ## A037984.P7040694054098122328

`A276881(∑[∏{e}[n, #+1]]+2^n-1)`
-/

namespace A037984.P7040694054098122328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276881 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((2 ^ n : ℤ) - 1)).toNat

end

end A037984.P7040694054098122328

/-! ## A037984.P18177433284253884459

`A317709(A009867(n))`
-/

namespace A037984.P18177433284253884459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (A009867 n).toNat

end

end A037984.P18177433284253884459

/-!
# A037985: Numbers whose maximal base 6 run length is 2.

The programs for A037985, the canonical program `A037985.P10741941929081350306` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037985 has offset 1).

The definition of A037985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4583 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037985.P10741941929081350306

`eq[2, A043280(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A037985

/-- `eq[2, A043280(n+1)]+1` -/
def P10741941929081350306.Spec : Prop :=
  ∀ n, (P10741941929081350306.a n : ℤ) = A037985 (n + 1)

theorem P10741941929081350306.correct : P10741941929081350306.Spec := by
  intro n
  simp only [A037985, Nat.add_sub_cancel]

end A037985

/-! ## A037985.P5129795615767867039

`eq[2, A043280(A028310(n))]`
-/

namespace A037985.P5129795615767867039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037985.P5129795615767867039

namespace A037985

/-- `eq[2, A043280(A028310(n))]` -/
def P5129795615767867039.Spec : Prop :=
  ∀ n, (P5129795615767867039.a n : ℤ) = A037985 (n + 1)

end A037985

/-! ## A037985.P12789597518908241654

`A114637(eq[2, A043280(n+1)])`
-/

namespace A037985.P12789597518908241654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037985.P12789597518908241654

namespace A037985

/-- `A114637(eq[2, A043280(n+1)])` -/
def P12789597518908241654.Spec : Prop :=
  ∀ n, P12789597518908241654.a n = A037985 (n + 1)

end A037985

/-! ## A037985.P3329387062482678848

`eq[2, A043280(1-(n-A004273(n)))]`
-/

namespace A037985.P3329387062482678848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (1 - ((n : ℤ) - A004273 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037985.P3329387062482678848

namespace A037985

/-- `eq[2, A043280(1-(n-A004273(n)))]` -/
def P3329387062482678848.Spec : Prop :=
  ∀ n, (P3329387062482678848.a n : ℤ) = A037985 (n + 1)

end A037985

/-! ## A037985.P3998813331426373271

`eq[2, A043280(A123108(2*n))]`
-/

namespace A037985.P3998813331426373271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037985.P3998813331426373271

namespace A037985

/-- `eq[2, A043280(A123108(2*n))]` -/
def P3998813331426373271.Spec : Prop :=
  ∀ n, (P3998813331426373271.a n : ℤ) = A037985 (n + 1)

end A037985

/-! ## A037985.P7735288387076766538

`eq[2, A043280(A233583(n+1))]`
-/

namespace A037985.P7735288387076766538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037985.P7735288387076766538

namespace A037985

/-- `eq[2, A043280(A233583(n+1))]` -/
def P7735288387076766538.Spec : Prop :=
  ∀ n, (P7735288387076766538.a n : ℤ) = A037985 (n + 1)

end A037985

/-!
# A037986: Numbers whose maximal base 6 run length is 3.

The programs for A037986, the canonical program `A037986.P14038763237978430914` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037986 has offset 1).

The definition of A037986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 777 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037986.P14038763237978430914

`eq[3, A043280(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A037986

/-- `eq[3, A043280(n+1)]+1` -/
def P14038763237978430914.Spec : Prop :=
  ∀ n, (P14038763237978430914.a n : ℤ) = A037986 (n + 1)

theorem P14038763237978430914.correct : P14038763237978430914.Spec := by
  intro n
  simp only [A037986, Nat.add_sub_cancel]

end A037986

/-! ## A037986.P2553860480125556453

`eq[3, A043280(A028310(n))]`
-/

namespace A037986.P2553860480125556453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037986.P2553860480125556453

namespace A037986

/-- `eq[3, A043280(A028310(n))]` -/
def P2553860480125556453.Spec : Prop :=
  ∀ n, (P2553860480125556453.a n : ℤ) = A037986 (n + 1)

end A037986

/-! ## A037986.P13750816934922185494

`A153152(eq[3, A043280(n+1)])`
-/

namespace A037986.P13750816934922185494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037986.P13750816934922185494

namespace A037986

/-- `A153152(eq[3, A043280(n+1)])` -/
def P13750816934922185494.Spec : Prop :=
  ∀ n, P13750816934922185494.a n = A037986 (n + 1)

end A037986

/-! ## A037986.P10213759302086519302

`eq[3, A043280(1-(n-A004273(n)))]`
-/

namespace A037986.P10213759302086519302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (1 - ((n : ℤ) - A004273 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037986.P10213759302086519302

namespace A037986

/-- `eq[3, A043280(1-(n-A004273(n)))]` -/
def P10213759302086519302.Spec : Prop :=
  ∀ n, (P10213759302086519302.a n : ℤ) = A037986 (n + 1)

end A037986

/-! ## A037986.P299427469929763695

`eq[3, A043280(A233583(n+1))]`
-/

namespace A037986.P299427469929763695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037986.P299427469929763695

namespace A037986

/-- `eq[3, A043280(A233583(n+1))]` -/
def P299427469929763695.Spec : Prop :=
  ∀ n, (P299427469929763695.a n : ℤ) = A037986 (n + 1)

end A037986

/-!
# A037987: Numbers whose maximal base-6 run length is 4.

The programs for A037987, there is no canonical definition to state claims against.
-/

/-! ## A037987.P7086973187978054654

`eq[4, A043280(A028310(n))]`
-/

namespace A037987.P7086973187978054654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037987.P7086973187978054654

/-! ## A037987.P12994287239493192532

`lt[2, A100910(A007092(n))]`
-/

namespace A037987.P12994287239493192532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037987.P12994287239493192532

/-!
# A037988: Critical values in Conway's game of one-dimensional phutball.

The programs for A037988, there is no canonical definition to state claims against.
-/

/-! ## A037988.P16370777316124748379

`∑[A272729(n+1)]`
-/

namespace A037988.P16370777316124748379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037988.P16370777316124748379

/-! ## A037988.P16227255403573571666

`∑[abs(Δ[A094591(n)])]`
-/

namespace A037988.P16227255403573571666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094591 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037988.P16227255403573571666

/-! ## A037988.P1417947037986879125

`A094591(n+1)-1`
-/

namespace A037988.P1417947037986879125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094591 (n + 1) - 1

end

end A037988.P1417947037986879125

/-! ## A037988.P16729192495084802113

`A359807(n+1)+1+n`
-/

namespace A037988.P16729192495084802113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359807 (n + 1) + 1 + (n : ℤ)

end

end A037988.P16729192495084802113

/-! ## A037988.P16854677780538006004

`∑[A000027(Δ[A094591(n)])]`
-/

namespace A037988.P16854677780538006004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094591 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037988.P16854677780538006004

/-! ## A037988.P12404544670626893850

`∑[A002377(Δ[A094591(n)])]`
-/

namespace A037988.P12404544670626893850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094591 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037988.P12404544670626893850

/-! ## A037988.P6310791382005560853

`A359807(A094591(n+1))`
-/

namespace A037988.P6310791382005560853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359807 (A094591 (n + 1)).toNat

end

end A037988.P6310791382005560853

/-! ## A037988.P2021110579196945331

`lt[1, A037278(A272729(n+1)²)²]`
-/

namespace A037988.P2021110579196945331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (A272729 (n + 1) ^ 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037988.P2021110579196945331

/-! ## A037988.P8435968782044143652

`lt[A043279(n+1), A037278(A272729(n+1))]`
-/

namespace A037988.P8435968782044143652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (A272729 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037988.P8435968782044143652

/-! ## A037988.P16341566867474572099

`lt[A272729(2*n+1), A272729(n+1)]`
-/

namespace A037988.P16341566867474572099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037988.P16341566867474572099

/-! ## A037988.P1279145920221772419

`A008619(record[gcd(n, A272728(n+2))])`
-/

namespace A037988.P1279145920221772419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A272728 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A037988.P1279145920221772419

/-! ## A037988.P11478402382868150865

`lt[A001221(A029743(n+1)), A272729(n+1)]`
-/

namespace A037988.P11478402382868150865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A029743 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037988.P11478402382868150865

/-! ## A037988.P9402198324164219440

`lt[A001221(A243461(n+1)), A272729(n+1)]`
-/

namespace A037988.P9402198324164219440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A243461 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037988.P9402198324164219440

/-!
# A037989: Numbers whose maximal base-7 run length is 2.

The programs for A037989, the canonical program `A037989.P17780582745811707290` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037989 has offset 1).

The definition of A037989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3809 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037989.P17780582745811707290

`eq[2, A043281(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A037989

/-- `eq[2, A043281(n+1)]+1` -/
def P17780582745811707290.Spec : Prop :=
  ∀ n, (P17780582745811707290.a n : ℤ) = A037989 (n + 1)

theorem P17780582745811707290.correct : P17780582745811707290.Spec := by
  intro n
  simp only [A037989, Nat.add_sub_cancel]

end A037989

/-! ## A037989.P2300441314442875190

`eq[2, A043281(A028310(n))]`
-/

namespace A037989.P2300441314442875190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037989.P2300441314442875190

namespace A037989

/-- `eq[2, A043281(A028310(n))]` -/
def P2300441314442875190.Spec : Prop :=
  ∀ n, (P2300441314442875190.a n : ℤ) = A037989 (n + 1)

end A037989

/-! ## A037989.P11937069859820420287

`A020725(eq[2, A043281(n+1)])`
-/

namespace A037989.P11937069859820420287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037989.P11937069859820420287

namespace A037989

/-- `A020725(eq[2, A043281(n+1)])` -/
def P11937069859820420287.Spec : Prop :=
  ∀ n, P11937069859820420287.a n = A037989 (n + 1)

end A037989

/-! ## A037989.P1961712705353001683

`eq[2, A043281(gcd(n, A008574(n)))]`
-/

namespace A037989.P1961712705353001683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037989.P1961712705353001683

namespace A037989

/-- `eq[2, A043281(gcd(n, A008574(n)))]` -/
def P1961712705353001683.Spec : Prop :=
  ∀ n, (P1961712705353001683.a n : ℤ) = A037989 (n + 1)

end A037989

/-! ## A037989.P11105645712431766463

`eq[2, A043281(A065033(2*n))]`
-/

namespace A037989.P11105645712431766463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037989.P11105645712431766463

namespace A037989

/-- `eq[2, A043281(A065033(2*n))]` -/
def P11105645712431766463.Spec : Prop :=
  ∀ n, (P11105645712431766463.a n : ℤ) = A037989 (n + 1)

end A037989

/-! ## A037989.P15801146112062656128

`eq[2, A043281(A123108(2*n))]`
-/

namespace A037989.P15801146112062656128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037989.P15801146112062656128

namespace A037989

/-- `eq[2, A043281(A123108(2*n))]` -/
def P15801146112062656128.Spec : Prop :=
  ∀ n, (P15801146112062656128.a n : ℤ) = A037989 (n + 1)

end A037989

/-! ## A037989.P18242077966432510290

`eq[2, A043281(A008619(A004275(n)))]`
-/

namespace A037989.P18242077966432510290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037989.P18242077966432510290

namespace A037989

/-- `eq[2, A043281(A008619(A004275(n)))]` -/
def P18242077966432510290.Spec : Prop :=
  ∀ n, (P18242077966432510290.a n : ℤ) = A037989 (n + 1)

end A037989

/-! ## A037989.P16435451768433547915

`eq[2, A043281(A233583(n+1))]`
-/

namespace A037989.P16435451768433547915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037989.P16435451768433547915

namespace A037989

/-- `eq[2, A043281(A233583(n+1))]` -/
def P16435451768433547915.Spec : Prop :=
  ∀ n, (P16435451768433547915.a n : ℤ) = A037989 (n + 1)

end A037989

/-! ## A037989.P4285341100336303185

`A044848(n+1)%A044830(A044837(n+1))`
-/

namespace A037989.P4285341100336303185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044848 (n + 1)) (A044830 (A044837 (n + 1)).toNat)

end

end A037989.P4285341100336303185

namespace A037989

/-- `A044848(n+1)%A044830(A044837(n+1))` -/
def P4285341100336303185.Spec : Prop :=
  ∀ n, P4285341100336303185.a n = A037989 (n + 1)

end A037989

/-!
# A037990: Numbers whose maximal base 7 run length is 3.

The programs for A037990, the canonical program `A037990.P11351931847742958778` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037990 has offset 1).

The definition of A037990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037990.P11351931847742958778

`eq[3, A043281(A028310(n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A037990

/-- `eq[3, A043281(A028310(n))]` -/
def P11351931847742958778.Spec : Prop :=
  ∀ n, (P11351931847742958778.a n : ℤ) = A037990 (n + 1)

theorem P11351931847742958778.correct : P11351931847742958778.Spec := by
  intro n
  simp only [A037990, Nat.add_sub_cancel]

end A037990

/-! ## A037990.P15986264027165028431

`A020725(eq[3, A043281(n+1)])`
-/

namespace A037990.P15986264027165028431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037990.P15986264027165028431

namespace A037990

/-- `A020725(eq[3, A043281(n+1)])` -/
def P15986264027165028431.Spec : Prop :=
  ∀ n, P15986264027165028431.a n = A037990 (n + 1)

end A037990

/-! ## A037990.P12881693321805463383

`A153152(eq[3, A043281(n+1)])`
-/

namespace A037990.P12881693321805463383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037990.P12881693321805463383

namespace A037990

/-- `A153152(eq[3, A043281(n+1)])` -/
def P12881693321805463383.Spec : Prop :=
  ∀ n, P12881693321805463383.a n = A037990 (n + 1)

end A037990

/-!
# A037992: Smallest number with 2^n divisors.

The programs for A037992, there is no canonical definition to state claims against.
-/

/-! ## A037992.P13733574647659235704

`A052330(2^n-1)`
-/

namespace A037992.P13733574647659235704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (2 ^ n - 1)

end

end A037992.P13733574647659235704

/-! ## A037992.P10519476998507226211

`A005179(2^n)`
-/

namespace A037992.P10519476998507226211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (2 ^ n)

end

end A037992.P10519476998507226211

/-! ## A037992.P3829515594939813338

`∏[A084400(n+1)]`
-/

namespace A037992.P3829515594939813338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A037992.P3829515594939813338

/-! ## A037992.P14046122428567328336

`∏[record[A213925(n+1)]]`
-/

namespace A037992.P14046122428567328336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213925 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A037992.P14046122428567328336

/-! ## A037992.P6864991571545915778

`∏[record[A223490(n+1)]]`
-/

namespace A037992.P6864991571545915778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A037992.P6864991571545915778

/-! ## A037992.P1525148359528461561

`∏[record[A223491(n+1)]]`
-/

namespace A037992.P1525148359528461561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A037992.P1525148359528461561

/-! ## A037992.P2091323043573839340

`∏[record[A300840(n+1)]]`
-/

namespace A037992.P2091323043573839340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A037992.P2091323043573839340

/-! ## A037992.P5508139236824958664

`a(n-1)*A050376(n)` with `a(0)=1`
-/

namespace A037992.P5508139236824958664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A050376 n

end

end A037992.P5508139236824958664

/-! ## A037992.P16892414787935539362

`A066616(record[A213925(n+1)])`
-/

namespace A037992.P16892414787935539362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066616 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037992.P16892414787935539362

/-! ## A037992.P5645985576063909030

`A066616(A050376(n+1)-1)`
-/

namespace A037992.P5645985576063909030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066616 (A050376 (n + 1) - 1).toNat

end

end A037992.P5645985576063909030

/-!
# A037993: Numbers whose maximal base-8 run length is 2.

The programs for A037993, the canonical program `A037993.P5476900089345289950` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037993 has offset 1).

The definition of A037993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037993.P5476900089345289950

`eq[2, A043282(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A037993

/-- `eq[2, A043282(n+1)]+1` -/
def P5476900089345289950.Spec : Prop :=
  ∀ n, (P5476900089345289950.a n : ℤ) = A037993 (n + 1)

theorem P5476900089345289950.correct : P5476900089345289950.Spec := by
  intro n
  simp only [A037993, Nat.add_sub_cancel]

end A037993

/-! ## A037993.P1363784975080141806

`eq[2, A043282(A028310(n))]`
-/

namespace A037993.P1363784975080141806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037993.P1363784975080141806

namespace A037993

/-- `eq[2, A043282(A028310(n))]` -/
def P1363784975080141806.Spec : Prop :=
  ∀ n, (P1363784975080141806.a n : ℤ) = A037993 (n + 1)

end A037993

/-! ## A037993.P7183852493431669584

`eq[2, A043282(A008619(A004273(n)))]`
-/

namespace A037993.P7183852493431669584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037993.P7183852493431669584

namespace A037993

/-- `eq[2, A043282(A008619(A004273(n)))]` -/
def P7183852493431669584.Spec : Prop :=
  ∀ n, (P7183852493431669584.a n : ℤ) = A037993 (n + 1)

end A037993

/-! ## A037993.P12294057996445571448

`eq[2, A043282(A065033(2*n))]`
-/

namespace A037993.P12294057996445571448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037993.P12294057996445571448

namespace A037993

/-- `eq[2, A043282(A065033(2*n))]` -/
def P12294057996445571448.Spec : Prop :=
  ∀ n, (P12294057996445571448.a n : ℤ) = A037993 (n + 1)

end A037993

/-! ## A037993.P7139673380017208408

`eq[2, A043282(A123108(2*n))]`
-/

namespace A037993.P7139673380017208408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037993.P7139673380017208408

namespace A037993

/-- `eq[2, A043282(A123108(2*n))]` -/
def P7139673380017208408.Spec : Prop :=
  ∀ n, (P7139673380017208408.a n : ℤ) = A037993 (n + 1)

end A037993

/-! ## A037993.P14521033177776931544

`eq[2, A043282(A134965(n+1))]`
-/

namespace A037993.P14521033177776931544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A134965 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037993.P14521033177776931544

namespace A037993

/-- `eq[2, A043282(A134965(n+1))]` -/
def P14521033177776931544.Spec : Prop :=
  ∀ n, (P14521033177776931544.a n : ℤ) = A037993 (n + 1)

end A037993

/-! ## A037993.P3395389919091057586

`eq[2, A043282(A233583(n+1))]`
-/

namespace A037993.P3395389919091057586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037993.P3395389919091057586

namespace A037993

/-- `eq[2, A043282(A233583(n+1))]` -/
def P3395389919091057586.Spec : Prop :=
  ∀ n, (P3395389919091057586.a n : ℤ) = A037993 (n + 1)

end A037993

/-! ## A037993.P6126649055288651615

`A044849(n+1)%A153260(n²)`
-/

namespace A037993.P6126649055288651615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044849 (n + 1)) (A153260 (n ^ 2))

end

end A037993.P6126649055288651615

namespace A037993

/-- `A044849(n+1)%A153260(n²)` -/
def P6126649055288651615.Spec : Prop :=
  ∀ n, P6126649055288651615.a n = A037993 (n + 1)

end A037993

/-! ## A037993.P4585224755026780392

`A044849(n+1)+A000007((n+1)²)`
-/

namespace A037993.P4585224755026780392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044849 (n + 1) + A000007 ((n + 1) ^ 2)

end

end A037993.P4585224755026780392

namespace A037993

/-- `A044849(n+1)+A000007((n+1)²)` -/
def P4585224755026780392.Spec : Prop :=
  ∀ n, P4585224755026780392.a n = A037993 (n + 1)

end A037993

/-! ## A037993.P678612801084746801

`A044849(n+1)%A002189(n)`
-/

namespace A037993.P678612801084746801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044849 (n + 1)) (A002189 n)

end

end A037993.P678612801084746801

namespace A037993

/-- `A044849(n+1)%A002189(n)` -/
def P678612801084746801.Spec : Prop :=
  ∀ n, P678612801084746801.a n = A037993 (n + 1)

end A037993

/-!
# A037997: Numbers whose maximal base-9 run length is 2.

The programs for A037997, the canonical program `A037997.P5303989114763957412` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037997 has offset 1).

The definition of A037997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037997.P5303989114763957412

`eq[2, A043283(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037997

/-- `eq[2, A043283(n+1)]+1` -/
def P5303989114763957412.Spec : Prop :=
  ∀ n, (P5303989114763957412.a n : ℤ) = A037997 (n + 1)

theorem P5303989114763957412.correct : P5303989114763957412.Spec := by
  intro n
  simp only [A037997, Nat.add_sub_cancel]

end A037997

/-! ## A037997.P1046225331917783919

`eq[2, A043283(A028310(n))]`
-/

namespace A037997.P1046225331917783919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037997.P1046225331917783919

namespace A037997

/-- `eq[2, A043283(A028310(n))]` -/
def P1046225331917783919.Spec : Prop :=
  ∀ n, (P1046225331917783919.a n : ℤ) = A037997 (n + 1)

end A037997

/-! ## A037997.P7538384025945106757

`A020725(eq[2, A043283(n+1)])`
-/

namespace A037997.P7538384025945106757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037997.P7538384025945106757

namespace A037997

/-- `A020725(eq[2, A043283(n+1)])` -/
def P7538384025945106757.Spec : Prop :=
  ∀ n, P7538384025945106757.a n = A037997 (n + 1)

end A037997

/-! ## A037997.P16785276402678785426

`eq[2, A043283(A123108(2*n))]`
-/

namespace A037997.P16785276402678785426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037997.P16785276402678785426

namespace A037997

/-- `eq[2, A043283(A123108(2*n))]` -/
def P16785276402678785426.Spec : Prop :=
  ∀ n, (P16785276402678785426.a n : ℤ) = A037997 (n + 1)

end A037997

/-! ## A037997.P16145891612637142005

`eq[2, A043283(A233583(n+1))]`
-/

namespace A037997.P16145891612637142005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037997.P16145891612637142005

namespace A037997

/-- `eq[2, A043283(A233583(n+1))]` -/
def P16145891612637142005.Spec : Prop :=
  ∀ n, (P16145891612637142005.a n : ℤ) = A037997 (n + 1)

end A037997

/-!
# A037998: Numbers whose maximal base-9 run length is 3.

The programs for A037998, the canonical program `A037998.P10736495446636954267` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037998 has offset 1).

The definition of A037998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037998.P10736495446636954267

`eq[3, A043283(A028310(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037998

/-- `eq[3, A043283(A028310(n))]` -/
def P10736495446636954267.Spec : Prop :=
  ∀ n, (P10736495446636954267.a n : ℤ) = A037998 (n + 1)

theorem P10736495446636954267.correct : P10736495446636954267.Spec := by
  intro n
  simp only [A037998, Nat.add_sub_cancel]

end A037998

/-! ## A037998.P6875741371591030736

`A020725(eq[3, A043283(n+1)])`
-/

namespace A037998.P6875741371591030736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037998.P6875741371591030736

namespace A037998

/-- `A020725(eq[3, A043283(n+1)])` -/
def P6875741371591030736.Spec : Prop :=
  ∀ n, P6875741371591030736.a n = A037998 (n + 1)

end A037998

/-! ## A037998.P1742877435334161196

`eq[3, A043283(A233583(n+1))]`
-/

namespace A037998.P1742877435334161196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037998.P1742877435334161196

namespace A037998

/-- `eq[3, A043283(A233583(n+1))]` -/
def P1742877435334161196.Spec : Prop :=
  ∀ n, (P1742877435334161196.a n : ℤ) = A037998 (n + 1)

end A037998

/-! ## A037998.P4255981777112119417

`lt[A043561(n), A044931(A233583(n+1))]`
-/

namespace A037998.P4255981777112119417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037998.P4255981777112119417

namespace A037998

/-- `lt[A043561(n), A044931(A233583(n+1))]` -/
def P4255981777112119417.Spec : Prop :=
  ∀ n, (P4255981777112119417.a n : ℤ) = A037998 (n + 1)

end A037998

