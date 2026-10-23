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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A337101: Number of partitions of n into two positive parts (s,t), s <= t, such that the harmonic mean of s and t is an integer.

The programs for A337101, the canonical program `A337101.P14807229277713174019` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337101 has offset 1).

The definition of A337101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337101.P4981685074449742148

`A004526(n+1)-A337102(n+1)`
-/

namespace A337101.P4981685074449742148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A337102 (n + 1)

end

end A337101.P4981685074449742148

namespace A337101

/-- `A004526(n+1)-A337102(n+1)` -/
def P4981685074449742148.Spec : Prop :=
  ∀ n, P4981685074449742148.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P14285939810645981909

`A057554(A008833(2*(n+1)))`
-/

namespace A337101.P14285939810645981909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A008833 (2 * (n + 1))).toNat

end

end A337101.P14285939810645981909

namespace A337101

/-- `A057554(A008833(2*(n+1)))` -/
def P14285939810645981909.Spec : Prop :=
  ∀ n, P14285939810645981909.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P8022213693448078968

`A110654(n)-A337102(n+1)`
-/

namespace A337101.P8022213693448078968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A337102 (n + 1)

end

end A337101.P8022213693448078968

namespace A337101

/-- `A110654(n)-A337102(n+1)` -/
def P8022213693448078968.Spec : Prop :=
  ∀ n, P8022213693448078968.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P14807229277713174019

`A064727(A022998(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A337101

/-- `A064727(A022998(n+1))` -/
def P14807229277713174019.Spec : Prop :=
  ∀ n, P14807229277713174019.a n = A337101 (n + 1)

theorem P14807229277713174019.correct : P14807229277713174019.Spec := by
  intro n
  simp only [A337101, Nat.add_sub_cancel]

end A337101

/-! ## A337101.P8761563335078307442

`A064727(A059029(n)+1)`
-/

namespace A337101.P8761563335078307442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A059029 n + 1).toNat

end

end A337101.P8761563335078307442

namespace A337101

/-- `A064727(A059029(n)+1)` -/
def P8761563335078307442.Spec : Prop :=
  ∀ n, P8761563335078307442.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P17180441219828558246

`A064727(A257088(n+1))`
-/

namespace A337101.P17180441219828558246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A257088 (n + 1)).toNat

end

end A337101.P17180441219828558246

namespace A337101

/-- `A064727(A257088(n+1))` -/
def P17180441219828558246.Spec : Prop :=
  ∀ n, P17180441219828558246.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P14626284853748170741

`A064727(2*(n+1))`
-/

namespace A337101.P14626284853748170741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (2 * (n + 1))

end

end A337101.P14626284853748170741

namespace A337101

/-- `A064727(2*(n+1))` -/
def P14626284853748170741.Spec : Prop :=
  ∀ n, P14626284853748170741.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P10322502242713496075

`floor(A000188(2*(n+1))/2)`
-/

namespace A337101.P10322502242713496075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000188 (2 * (n + 1)) : ℚ) / 2⌋

end

end A337101.P10322502242713496075

namespace A337101

/-- `floor(A000188(2*(n+1))/2)` -/
def P10322502242713496075.Spec : Prop :=
  ∀ n, P10322502242713496075.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P3720266284896817291

`ceil(A057918(2*(n+1))/2)`
-/

namespace A337101.P3720266284896817291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057918 (2 * (n + 1)) : ℚ) / 2⌉

end

end A337101.P3720266284896817291

namespace A337101

/-- `ceil(A057918(2*(n+1))/2)` -/
def P3720266284896817291.Spec : Prop :=
  ∀ n, P3720266284896817291.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P9313134068627078774

`round(n/A019554(2*(n+1)))`
-/

namespace A337101.P9313134068627078774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A019554 (2 * (n + 1)) : ℚ))

end

end A337101.P9313134068627078774

namespace A337101

/-- `round(n/A019554(2*(n+1)))` -/
def P9313134068627078774.Spec : Prop :=
  ∀ n, P9313134068627078774.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P894955895605281920

`A004526(A000188(2*(n+1)))`
-/

namespace A337101.P894955895605281920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000188 (2 * (n + 1))).toNat

end

end A337101.P894955895605281920

namespace A337101

/-- `A004526(A000188(2*(n+1)))` -/
def P894955895605281920.Spec : Prop :=
  ∀ n, P894955895605281920.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P8315694515598316844

`A057554(A000188(2*(n+1))²)`
-/

namespace A337101.P8315694515598316844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A000188 (2 * (n + 1)) ^ 2).toNat

end

end A337101.P8315694515598316844

namespace A337101

/-- `A057554(A000188(2*(n+1))²)` -/
def P8315694515598316844.Spec : Prop :=
  ∀ n, P8315694515598316844.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P17459192836560013478

`A004526(A057918(2*(n+1))+1)`
-/

namespace A337101.P17459192836560013478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057918 (2 * (n + 1)) + 1).toNat

end

end A337101.P17459192836560013478

namespace A337101

/-- `A004526(A057918(2*(n+1))+1)` -/
def P17459192836560013478.Spec : Prop :=
  ∀ n, P17459192836560013478.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P4616367728765520062

`A002265(2*A000188(2*(n+1)))`
-/

namespace A337101.P4616367728765520062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A000188 (2 * (n + 1))).toNat

end

end A337101.P4616367728765520062

namespace A337101

/-- `A002265(2*A000188(2*(n+1)))` -/
def P4616367728765520062.Spec : Prop :=
  ∀ n, P4616367728765520062.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P12161566463297686991

`A110655(2*A057918(2*(n+1)))`
-/

namespace A337101.P12161566463297686991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A057918 (2 * (n + 1))).toNat

end

end A337101.P12161566463297686991

namespace A337101

/-- `A110655(2*A057918(2*(n+1)))` -/
def P12161566463297686991.Spec : Prop :=
  ∀ n, P12161566463297686991.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P5461382882552217553

`(A000188(2*(n+1))-A000035(n+1))/2`
-/

namespace A337101.P5461382882552217553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (2 * (n + 1)) - A000035 (n + 1) : ℚ) / 2

end

end A337101.P5461382882552217553

namespace A337101

/-- `(A000188(2*(n+1))-A000035(n+1))/2` -/
def P5461382882552217553.Spec : Prop :=
  ∀ n, P5461382882552217553.a n = (A337101 (n + 1) : ℚ)

end A337101

/-! ## A337101.P9671241505676211729

`A004526(A003557(2*(n+1))/A295657(2*(n+1)))`
-/

namespace A337101.P9671241505676211729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A003557 (2 * (n + 1)) : ℚ) / (A295657 (2 * (n + 1)) : ℚ))).toNat

end

end A337101.P9671241505676211729

namespace A337101

/-- `A004526(A003557(2*(n+1))/A295657(2*(n+1)))` -/
def P9671241505676211729.Spec : Prop :=
  ∀ n, P9671241505676211729.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P563024024790626675

`round((n+1)/A193800(n+1))`
-/

namespace A337101.P563024024790626675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A193800 (n + 1) : ℚ))

end

end A337101.P563024024790626675

namespace A337101

/-- `round((n+1)/A193800(n+1))` -/
def P563024024790626675.Spec : Prop :=
  ∀ n, P563024024790626675.a n = A337101 (n + 1)

end A337101

/-! ## A337101.P16092324707481222223

`A309395(n+1)+A000035(n)`
-/

namespace A337101.P16092324707481222223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (n + 1) + A000035 n

end

end A337101.P16092324707481222223

namespace A337101

/-- `A309395(n+1)+A000035(n)` -/
def P16092324707481222223.Spec : Prop :=
  ∀ n, P16092324707481222223.a n = A337101 (n + 1)

end A337101

/-!
# A337102: Number of partitions of n into two positive integer parts (s,t), s<=t, such that the harmonic mean of the smallest and largest part is not an integer.

The programs for A337102, the canonical program `A337102.P13055801540794420481` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337102 has offset 1).

The definition of A337102 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337102.P13055801540794420481

`A004526(n+1)-A337101(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337102

/-- `A004526(n+1)-A337101(n+1)` -/
def P13055801540794420481.Spec : Prop :=
  ∀ n, P13055801540794420481.a n = A337102 (n + 1)

theorem P13055801540794420481.correct : P13055801540794420481.Spec := by
  intro n
  simp only [A337102, Nat.add_sub_cancel]

end A337102

/-! ## A337102.P4043905811139675362

`A110654(n)-A337101(n+1)`
-/

namespace A337102.P4043905811139675362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A337101 (n + 1)

end

end A337102.P4043905811139675362

namespace A337102

/-- `A110654(n)-A337101(n+1)` -/
def P4043905811139675362.Spec : Prop :=
  ∀ n, P4043905811139675362.a n = A337102 (n + 1)

end A337102

/-! ## A337102.P15866190500947120281

`(n-A057918(2*(n+1)))/2`
-/

namespace A337102.P15866190500947120281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A057918 (2 * (n + 1)) : ℚ) / 2

end

end A337102.P15866190500947120281

namespace A337102

/-- `(n-A057918(2*(n+1)))/2` -/
def P15866190500947120281.Spec : Prop :=
  ∀ n, P15866190500947120281.a n = (A337102 (n + 1) : ℚ)

end A337102

/-! ## A337102.P17929019356011004045

`floor(n/2)-A070139(2*(n+1))`
-/

namespace A337102.P17929019356011004045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - A070139 (2 * (n + 1))

end

end A337102.P17929019356011004045

namespace A337102

/-- `floor(n/2)-A070139(2*(n+1))` -/
def P17929019356011004045.Spec : Prop :=
  ∀ n, P17929019356011004045.a n = A337102 (n + 1)

end A337102

/-! ## A337102.P5310770609158706374

`ceil((n-A000188(2*(n+1)))/2)`
-/

namespace A337102.P5310770609158706374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A000188 (2 * (n + 1)) : ℚ) / 2⌉

end

end A337102.P5310770609158706374

namespace A337102

/-- `ceil((n-A000188(2*(n+1)))/2)` -/
def P5310770609158706374.Spec : Prop :=
  ∀ n, P5310770609158706374.a n = A337102 (n + 1)

end A337102

/-! ## A337102.P2056047736345416827

`A004526(n-A057918(2*(n+1)))`
-/

namespace A337102.P2056047736345416827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A057918 (2 * (n + 1))).toNat

end

end A337102.P2056047736345416827

namespace A337102

/-- `A004526(n-A057918(2*(n+1)))` -/
def P2056047736345416827.Spec : Prop :=
  ∀ n, P2056047736345416827.a n = A337102 (n + 1)

end A337102

/-! ## A337102.P8727954509697642156

`A004526(n+1)-A004526(A000188(2*(n+1)))`
-/

namespace A337102.P8727954509697642156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A004526 (A000188 (2 * (n + 1))).toNat

end

end A337102.P8727954509697642156

namespace A337102

/-- `A004526(n+1)-A004526(A000188(2*(n+1)))` -/
def P8727954509697642156.Spec : Prop :=
  ∀ n, P8727954509697642156.a n = A337102 (n + 1)

end A337102

/-! ## A337102.P2797755586879344593

`A008619(n+1)-A008619(A000188(2*(n+1)))`
-/

namespace A337102.P2797755586879344593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) - A008619 (A000188 (2 * (n + 1))).toNat

end

end A337102.P2797755586879344593

namespace A337102

/-- `A008619(n+1)-A008619(A000188(2*(n+1)))` -/
def P2797755586879344593.Spec : Prop :=
  ∀ n, P2797755586879344593.a n = A337102 (n + 1)

end A337102

/-! ## A337102.P10183847913661905755

`A028242(n+1)-A028242(A000188(2*(n+1)))`
-/

namespace A337102.P10183847913661905755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (n + 1) - A028242 (A000188 (2 * (n + 1))).toNat

end

end A337102.P10183847913661905755

namespace A337102

/-- `A028242(n+1)-A028242(A000188(2*(n+1)))` -/
def P10183847913661905755.Spec : Prop :=
  ∀ n, P10183847913661905755.a n = A337102 (n + 1)

end A337102

/-! ## A337102.P16114488949507928370

`A052938(n+1)-A052938(A000188(2*(n+1)))`
-/

namespace A337102.P16114488949507928370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (n + 1) - A052938 (A000188 (2 * (n + 1))).toNat

end

end A337102.P16114488949507928370

namespace A337102

/-- `A052938(n+1)-A052938(A000188(2*(n+1)))` -/
def P16114488949507928370.Spec : Prop :=
  ∀ n, P16114488949507928370.a n = A337102 (n + 1)

end A337102

/-! ## A337102.P11881391361645620886

`floor(n/2-A309395(n+1))`
-/

namespace A337102.P11881391361645620886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 - (A309395 (n + 1) : ℚ)⌋

end

end A337102.P11881391361645620886

namespace A337102

/-- `floor(n/2-A309395(n+1))` -/
def P11881391361645620886.Spec : Prop :=
  ∀ n, P11881391361645620886.a n = A337102 (n + 1)

end A337102

/-! ## A337102.P10829932991886852231

`A004526(n)-A309395(n+1)`
-/

namespace A337102.P10829932991886852231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A309395 (n + 1)

end

end A337102.P10829932991886852231

namespace A337102

/-- `A004526(n)-A309395(n+1)` -/
def P10829932991886852231.Spec : Prop :=
  ∀ n, P10829932991886852231.a n = A337102 (n + 1)

end A337102

/-! ## A337102.P2439773764726574678

`A337101((n+1)²)-A337101(n+1)`
-/

namespace A337102.P2439773764726574678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 ((n + 1) ^ 2) - A337101 (n + 1)

end

end A337102.P2439773764726574678

namespace A337102

/-- `A337101((n+1)²)-A337101(n+1)` -/
def P2439773764726574678.Spec : Prop :=
  ∀ n, P2439773764726574678.a n = A337102 (n + 1)

end A337102

/-!
# A337104: Number of strict chains of divisors from n! to 1 using terms of A130091 (numbers with distinct prime multiplicities).

The programs for A337104, there is no canonical definition to state claims against.
-/

/-! ## A337104.P3563134668574138887

`ceil(A337074(n)/2)`
-/

namespace A337104.P3563134668574138887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337074 n : ℚ) / 2⌉

end

end A337104.P3563134668574138887

/-!
# A337105: Number of strict chains of divisors from n! to 1.

The programs for A337105, there is no canonical definition to state claims against.
-/

/-! ## A337105.P14178493552412627755

`A074206(n!)`
-/

namespace A337105.P14178493552412627755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (Nat.factorial n)

end

end A337105.P14178493552412627755

/-! ## A337105.P4011830099600363410

`ceil(A337071(n)/2)`
-/

namespace A337105.P4011830099600363410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337071 n : ℚ) / 2⌉

end

end A337105.P4011830099600363410

/-! ## A337105.P5620169324862738916

`A337071(n)/A020639(A027423(n))`
-/

namespace A337105.P5620169324862738916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337071 n : ℚ) / (A020639 (A027423 n).toNat : ℚ)

end

end A337105.P5620169324862738916

/-! ## A337105.P7706967093972006909

`A337071(n)/A020639(A210108(n))`
-/

namespace A337105.P7706967093972006909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337071 n : ℚ) / (A020639 (A210108 n).toNat : ℚ)

end

end A337105.P7706967093972006909

/-!
# A337106: Number of nontrivial divisors of n!.

The programs for A337106, the canonical program `A337106.P11641309545225411868` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337106 has offset 0).

The definition of A337106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337106.P11641309545225411868

`A153823(n)-A157928(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A337106

/-- `A153823(n)-A157928(n)` -/
def P11641309545225411868.Spec : Prop :=
  ∀ n, P11641309545225411868.a n = A337106 n

theorem P11641309545225411868.correct : P11641309545225411868.Spec := by
  intro n
  simp only [A337106]

end A337106

/-! ## A337106.P4481476677763990148

`and(A113679(n), A153823(n))`
-/

namespace A337106.P4481476677763990148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113679 n) (A153823 n)

end

end A337106.P4481476677763990148

namespace A337106

/-- `and(A113679(n), A153823(n))` -/
def P4481476677763990148.Spec : Prop :=
  ∀ n, P4481476677763990148.a n = A337106 n

end A337106

/-! ## A337106.P12584864459277027105

`and(A000918(n), A153823(n))`
-/

namespace A337106.P12584864459277027105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000918 n) (A153823 n)

end

end A337106.P12584864459277027105

namespace A337106

/-- `and(A000918(n), A153823(n))` -/
def P12584864459277027105.Spec : Prop :=
  ∀ n, P12584864459277027105.a n = A337106 n

end A337106

/-! ## A337106.P5726160062844229218

`and(A153823(n), A296965(n))`
-/

namespace A337106.P5726160062844229218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153823 n) (A296965 n)

end

end A337106.P5726160062844229218

namespace A337106

/-- `and(A153823(n), A296965(n))` -/
def P5726160062844229218.Spec : Prop :=
  ∀ n, P5726160062844229218.a n = A337106 n

end A337106

/-! ## A337106.P11415421674779510903

`and(A095121(n), A153823(n))`
-/

namespace A337106.P11415421674779510903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095121 n) (A153823 n)

end

end A337106.P11415421674779510903

namespace A337106

/-- `and(A095121(n), A153823(n))` -/
def P11415421674779510903.Spec : Prop :=
  ∀ n, P11415421674779510903.a n = A337106 n

end A337106

/-! ## A337106.P4245166944289906351

`and(A153823(n), A296953(n))`
-/

namespace A337106.P4245166944289906351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153823 n) (A296953 n)

end

end A337106.P4245166944289906351

namespace A337106

/-- `and(A153823(n), A296953(n))` -/
def P4245166944289906351.Spec : Prop :=
  ∀ n, P4245166944289906351.a n = A337106 n

end A337106

/-! ## A337106.P5798856711528621603

`and(A153823(n), A369491(n))`
-/

namespace A337106.P5798856711528621603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153823 n) (A369491 n)

end

end A337106.P5798856711528621603

namespace A337106

/-- `and(A153823(n), A369491(n))` -/
def P5798856711528621603.Spec : Prop :=
  ∀ n, P5798856711528621603.a n = A337106 n

end A337106

/-! ## A337106.P9130055243035952390

`and(A033484(n), A153823(n))`
-/

namespace A337106.P9130055243035952390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033484 n) (A153823 n)

end

end A337106.P9130055243035952390

namespace A337106

/-- `and(A033484(n), A153823(n))` -/
def P9130055243035952390.Spec : Prop :=
  ∀ n, P9130055243035952390.a n = A337106 n

end A337106

/-! ## A337106.P15032828918572903528

`and(A134067(n), A153823(n))`
-/

namespace A337106.P15032828918572903528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134067 n) (A153823 n)

end

end A337106.P15032828918572903528

namespace A337106

/-- `and(A134067(n), A153823(n))` -/
def P15032828918572903528.Spec : Prop :=
  ∀ n, P15032828918572903528.a n = A337106 n

end A337106

/-! ## A337106.P14861040234672604542

`and(A131051(n+1), A153823(n))`
-/

namespace A337106.P14861040234672604542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131051 (n + 1)) (A153823 n)

end

end A337106.P14861040234672604542

namespace A337106

/-- `and(A131051(n+1), A153823(n))` -/
def P14861040234672604542.Spec : Prop :=
  ∀ n, P14861040234672604542.a n = A337106 n

end A337106

/-! ## A337106.P2775310145007701737

`and(A153823(n), A307457(n+1))`
-/

namespace A337106.P2775310145007701737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153823 n) (A307457 (n + 1))

end

end A337106.P2775310145007701737

namespace A337106

/-- `and(A153823(n), A307457(n+1))` -/
def P2775310145007701737.Spec : Prop :=
  ∀ n, P2775310145007701737.a n = A337106 n

end A337106

/-! ## A337106.P14730080313819230116

`and(A051633(n), A153823(n))`
-/

namespace A337106.P14730080313819230116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051633 n) (A153823 n)

end

end A337106.P14730080313819230116

namespace A337106

/-- `and(A051633(n), A153823(n))` -/
def P14730080313819230116.Spec : Prop :=
  ∀ n, P14730080313819230116.a n = A337106 n

end A337106

/-! ## A337106.P11499999857993406206

`and(A134062(n), A153823(n))`
-/

namespace A337106.P11499999857993406206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134062 n) (A153823 n)

end

end A337106.P11499999857993406206

namespace A337106

/-- `and(A134062(n), A153823(n))` -/
def P11499999857993406206.Spec : Prop :=
  ∀ n, P11499999857993406206.a n = A337106 n

end A337106

/-! ## A337106.P17299948660818627175

`and(A153823(n), A176448(n))`
-/

namespace A337106.P17299948660818627175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153823 n) (A176448 n)

end

end A337106.P17299948660818627175

namespace A337106

/-- `and(A153823(n), A176448(n))` -/
def P17299948660818627175.Spec : Prop :=
  ∀ n, P17299948660818627175.a n = A337106 n

end A337106

/-! ## A337106.P9117620242645574910

`and(A153823(n), A176449(n))`
-/

namespace A337106.P9117620242645574910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153823 n) (A176449 n)

end

end A337106.P9117620242645574910

namespace A337106

/-- `and(A153823(n), A176449(n))` -/
def P9117620242645574910.Spec : Prop :=
  ∀ n, P9117620242645574910.a n = A337106 n

end A337106

/-! ## A337106.P8479445321108553196

`and(A117863(n+1), A153823(n))`
-/

namespace A337106.P8479445321108553196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117863 (n + 1)) (A153823 n)

end

end A337106.P8479445321108553196

namespace A337106

/-- `and(A117863(n+1), A153823(n))` -/
def P8479445321108553196.Spec : Prop :=
  ∀ n, P8479445321108553196.a n = A337106 n

end A337106

/-! ## A337106.P8152058556396769563

`and(A047860(n), A153823(n))`
-/

namespace A337106.P8152058556396769563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047860 n) (A153823 n)

end

end A337106.P8152058556396769563

namespace A337106

/-- `and(A047860(n), A153823(n))` -/
def P8152058556396769563.Spec : Prop :=
  ∀ n, P8152058556396769563.a n = A337106 n

end A337106

/-! ## A337106.P9738937984223296729

`and(A153823(n), A328890(n+1))`
-/

namespace A337106.P9738937984223296729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153823 n) (A328890 (n + 1))

end

end A337106.P9738937984223296729

namespace A337106

/-- `and(A153823(n), A328890(n+1))` -/
def P9738937984223296729.Spec : Prop :=
  ∀ n, P9738937984223296729.a n = A337106 n

end A337106

/-! ## A337106.P11820317553287179961

`and(A058966(n+3), A153823(n))`
-/

namespace A337106.P11820317553287179961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058966 (n + 3)) (A153823 n)

end

end A337106.P11820317553287179961

namespace A337106

/-- `and(A058966(n+3), A153823(n))` -/
def P11820317553287179961.Spec : Prop :=
  ∀ n, P11820317553287179961.a n = A337106 n

end A337106

/-! ## A337106.P6362111847623598219

`and(A153823(n), A217528(n+1))`
-/

namespace A337106.P6362111847623598219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153823 n) (A217528 (n + 1))

end

end A337106.P6362111847623598219

namespace A337106

/-- `and(A153823(n), A217528(n+1))` -/
def P6362111847623598219.Spec : Prop :=
  ∀ n, P6362111847623598219.a n = A337106 n

end A337106

/-!
# A337108: Square spiral constructed by greedy algorithm, so that each diagonal and antidiagonal contains distinct numbers.

The programs for A337108, there is no canonical definition to state claims against.
-/

/-! ## A337108.P15626212786503193636

`A319514(∑[A274450(2*n+1)])`
-/

namespace A337108.P15626212786503193636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274450 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337108.P15626212786503193636

/-! ## A337108.P7719745879064884829

`A289016(n+1)+A160380(A022359(n))`
-/

namespace A337108.P7719745879064884829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289016 (n + 1) + A160380 (A022359 n).toNat

end

end A337108.P7719745879064884829

/-! ## A337108.P12920224697389464986

`A262257(or(A023172(n+1), A293353(n)))`
-/

namespace A337108.P12920224697389464986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262257 (Int.lor (A023172 (n + 1)) (A293353 n)).toNat

end

end A337108.P12920224697389464986

/-! ## A337108.P3747663576241514102

`A302242(∑[A020639(A322390(n+1)!)])`
-/

namespace A337108.P3747663576241514102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A322390 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337108.P3747663576241514102

/-! ## A337108.P13012175222925054934

`A084657(n+1)%A080342(A000040(n+1))`
-/

namespace A337108.P13012175222925054934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084657 (n + 1)) (A080342 (A000040 (n + 1)).toNat)

end

end A337108.P13012175222925054934

/-!
# A337110: Number of length three 1..n vectors that contain their geometric mean.

The programs for A337110, the canonical program `A337110.P12482005991552372209` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337110 has offset 1).

The definition of A337110 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337110.P12482005991552372209

`a(n-1)+1+6*A057918(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A337110

/-- `a(n-1)+1+6*A057918(n+1)` -/
def P12482005991552372209.Spec : Prop :=
  ∀ n, P12482005991552372209.a n = A337110 (n + 1)

theorem P12482005991552372209.correct : P12482005991552372209.Spec := by
  intro n
  simp only [A337110, Nat.add_sub_cancel]

end A337110

/-! ## A337110.P8599624565236149854

`∑[6*∏{p}[n+1, #^val(n+1, #²)]-5]`
-/

namespace A337110.P8599624565236149854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) : ℕ) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337110.P8599624565236149854

namespace A337110

/-- `∑[6*∏{p}[n+1, #^val(n+1, #²)]-5]` -/
def P8599624565236149854.Spec : Prop :=
  ∀ n, P8599624565236149854.a n = A337110 (n + 1)

end A337110

/-! ## A337110.P7406093677081680903

`∑[6*A057918(n+1)+1]`
-/

namespace A337110.P7406093677081680903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A057918 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337110.P7406093677081680903

namespace A337110

/-- `∑[6*A057918(n+1)+1]` -/
def P7406093677081680903.Spec : Prop :=
  ∀ n, P7406093677081680903.a n = A337110 (n + 1)

end A337110

/-! ## A337110.P5348044550721917325

`∑[6*A000188(n+1)-5]`
-/

namespace A337110.P5348044550721917325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000188 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337110.P5348044550721917325

namespace A337110

/-- `∑[6*A000188(n+1)-5]` -/
def P5348044550721917325.Spec : Prop :=
  ∀ n, P5348044550721917325.a n = A337110 (n + 1)

end A337110

/-! ## A337110.P10325046864434130498

`3*A132189(n+1)+1+n`
-/

namespace A337110.P10325046864434130498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A132189 (n + 1) + 1 + (n : ℤ)

end

end A337110.P10325046864434130498

namespace A337110

/-- `3*A132189(n+1)+1+n` -/
def P10325046864434130498.Spec : Prop :=
  ∀ n, P10325046864434130498.a n = A337110 (n + 1)

end A337110

/-! ## A337110.P10068107676684923274

`6*A132345(n+1)+1+n`
-/

namespace A337110.P10068107676684923274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A132345 (n + 1) + 1 + (n : ℤ)

end

end A337110.P10068107676684923274

namespace A337110

/-- `6*A132345(n+1)+1+n` -/
def P10068107676684923274.Spec : Prop :=
  ∀ n, P10068107676684923274.a n = A337110 (n + 1)

end A337110

/-! ## A337110.P5777150970686383775

`∑[A008458(∏{p}[n+1, #^val(n+1, #²)])-5]`
-/

namespace A337110.P5777150970686383775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337110.P5777150970686383775

namespace A337110

/-- `∑[A008458(∏{p}[n+1, #^val(n+1, #²)])-5]` -/
def P5777150970686383775.Spec : Prop :=
  ∀ n, P5777150970686383775.a n = A337110 (n + 1)

end A337110

/-! ## A337110.P10136606590989033285

`∑[A016921(A057918(n+1))]`
-/

namespace A337110.P10136606590989033285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A057918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337110.P10136606590989033285

namespace A337110

/-- `∑[A016921(A057918(n+1))]` -/
def P10136606590989033285.Spec : Prop :=
  ∀ n, P10136606590989033285.a n = A337110 (n + 1)

end A337110

/-! ## A337110.P7476212534481205134

`A016777(A132189(n+1))+n`
-/

namespace A337110.P7476212534481205134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A132189 (n + 1)).toNat + (n : ℤ)

end

end A337110.P7476212534481205134

namespace A337110

/-- `A016777(A132189(n+1))+n` -/
def P7476212534481205134.Spec : Prop :=
  ∀ n, P7476212534481205134.a n = A337110 (n + 1)

end A337110

/-! ## A337110.P14452624631810456951

`∑[A016921(A000188(n+1)-1)]`
-/

namespace A337110.P14452624631810456951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A000188 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337110.P14452624631810456951

namespace A337110

/-- `∑[A016921(A000188(n+1)-1)]` -/
def P14452624631810456951.Spec : Prop :=
  ∀ n, P14452624631810456951.a n = A337110 (n + 1)

end A337110

/-!
# A337112: Smallest term of A337081 that has exactly n prime factors, or 0 if no such term exists.

The programs for A337112, there is no canonical definition to state claims against.
-/

/-! ## A337112.P10807888717592892526

`xor(lcm(2, 3*n+2)/2, A048147(A112940(n)))`
-/

namespace A337112.P10807888717592892526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((Nat.lcm 2 (3 * n + 2) : ℚ) / 2)) (A048147 (A112940 n).toNat)

end

end A337112.P10807888717592892526

/-!
# A337114: Number of distinct node-partitions of n-vertex trees.

The programs for A337114, there is no canonical definition to state claims against.
-/

/-! ## A337114.P8940961328459832118

`A000119(A390567(n)²)`
-/

namespace A337114.P8940961328459832118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A390567 n ^ 2).toNat

end

end A337114.P8940961328459832118

/-! ## A337114.P9196798367739940348

`A193592(A196469(n)+A193592(n))`
-/

namespace A337114.P9196798367739940348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A196469 n + A193592 n).toNat

end

end A337114.P9196798367739940348

/-! ## A337114.P7651828098148690991

`A347623(A025047(n)-A063260(n))`
-/

namespace A337114.P7651828098148690991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347623 (A025047 n - A063260 n).toNat

end

end A337114.P7651828098148690991

/-! ## A337114.P2741596958337762034

`A342591(or(A153036(n), A167934(n)))`
-/

namespace A337114.P2741596958337762034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (Int.lor (A153036 n) (A167934 n)).toNat

end

end A337114.P2741596958337762034

/-! ## A337114.P1869485712672544152

`A342591(or(A026921(n+1), A167934(n)))`
-/

namespace A337114.P1869485712672544152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (Int.lor (A026921 (n + 1)) (A167934 n)).toNat

end

end A337114.P1869485712672544152

/-!
# A337116: Spiral on a 2D square lattice, one term per cell, starting at the origin with 0; the four integers forming any 2 X 2 square add up to a prime.

The programs for A337116, there is no canonical definition to state claims against.
-/

/-! ## A337116.P7267562657427577773

`A072062(n+1)-A000005(A309864(n))`
-/

namespace A337116.P7267562657427577773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072062 (n + 1) - A000005 (A309864 n).toNat

end

end A337116.P7267562657427577773

/-! ## A337116.P7271157595834321057

`A255558(n+1)-A195805(A198155(n+1))`
-/

namespace A337116.P7271157595834321057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255558 (n + 1) - A195805 (A198155 (n + 1)).toNat

end

end A337116.P7271157595834321057

/-!
# A337119: Primes p such that b^(p-1) == 1 (mod p-1) for all b coprime to p-1.

The programs for A337119, the canonical program `A337119.P17283470140549926217` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337119 has offset 1).

The definition of A337119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337119.P17283470140549926217

`p?[A124240(n+1)+1]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A337119

/-- `p?[A124240(n+1)+1]` -/
def P17283470140549926217.Spec : Prop :=
  ∀ n, P17283470140549926217.a n = A337119 (n + 1)

theorem P17283470140549926217.correct : P17283470140549926217.Spec := by
  intro n
  simp only [A337119, Nat.add_sub_cancel]

end A337119

/-! ## A337119.P15720332737739648779

`record[A001414(A124240(n+1)+1)]`
-/

namespace A337119.P15720332737739648779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A124240 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337119.P15720332737739648779

namespace A337119

/-- `record[A001414(A124240(n+1)+1)]` -/
def P15720332737739648779.Spec : Prop :=
  ∀ n, P15720332737739648779.a n = A337119 (n + 1)

end A337119

/-! ## A337119.P13041100745308680791

`record[A006530(A124240(n+1)+1)]`
-/

namespace A337119.P13041100745308680791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124240 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337119.P13041100745308680791

namespace A337119

/-- `record[A006530(A124240(n+1)+1)]` -/
def P13041100745308680791.Spec : Prop :=
  ∀ n, P13041100745308680791.a n = A337119 (n + 1)

end A337119

/-! ## A337119.P6771259471723588388

`record[A008472(A124240(n+1)+1)]`
-/

namespace A337119.P6771259471723588388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A124240 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337119.P6771259471723588388

namespace A337119

/-- `record[A008472(A124240(n+1)+1)]` -/
def P6771259471723588388.Spec : Prop :=
  ∀ n, P6771259471723588388.a n = A337119 (n + 1)

end A337119

/-! ## A337119.P17052737050365716029

`record[A020639(A124240(n+1)+1)]`
-/

namespace A337119.P17052737050365716029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124240 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337119.P17052737050365716029

namespace A337119

/-- `record[A020639(A124240(n+1)+1)]` -/
def P17052737050365716029.Spec : Prop :=
  ∀ n, P17052737050365716029.a n = A337119 (n + 1)

end A337119

/-! ## A337119.P12199592849003627867

`p?[A141310(A124240(n+1))]`
-/

namespace A337119.P12199592849003627867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A124240 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337119.P12199592849003627867

namespace A337119

/-- `p?[A141310(A124240(n+1))]` -/
def P12199592849003627867.Spec : Prop :=
  ∀ n, P12199592849003627867.a n = A337119 (n + 1)

end A337119

/-! ## A337119.P687855132068157003

`record[A323071(A124240(n+1)+1)]`
-/

namespace A337119.P687855132068157003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323071 (A124240 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337119.P687855132068157003

namespace A337119

/-- `record[A323071(A124240(n+1)+1)]` -/
def P687855132068157003.Spec : Prop :=
  ∀ n, P687855132068157003.a n = A337119 (n + 1)

end A337119

/-! ## A337119.P11872532692562376333

`record[ratio[A174824(n+1)]]`
-/

namespace A337119.P11872532692562376333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174824 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337119.P11872532692562376333

namespace A337119

/-- `record[ratio[A174824(n+1)]]` -/
def P11872532692562376333.Spec : Prop :=
  ∀ n, P11872532692562376333.a n = (A337119 (n + 1) : ℚ)

end A337119

/-! ## A337119.P10786789635558040576

`record[A014963(A124240(n+1)+1)]`
-/

namespace A337119.P10786789635558040576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A124240 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337119.P10786789635558040576

namespace A337119

/-- `record[A014963(A124240(n+1)+1)]` -/
def P10786789635558040576.Spec : Prop :=
  ∀ n, P10786789635558040576.a n = A337119 (n + 1)

end A337119

/-! ## A337119.P13180463225157454628

`p?[A300330(n+1)+1+n]`
-/

namespace A337119.P13180463225157454628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300330 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337119.P13180463225157454628

namespace A337119

/-- `p?[A300330(n+1)+1+n]` -/
def P13180463225157454628.Spec : Prop :=
  ∀ n, P13180463225157454628.a n = A337119 (n + 1)

end A337119

/-!
# A337120: Factor complexity (number of subwords of length n) of the regular paperfolding sequence (A014577), and all generalized paperfolding sequences.

The programs for A337120, the canonical program `A337120.P5845869188737322209` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337120 has offset 0).

The definition of A337120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337120.P5845869188737322209

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=12, a(5)=18, a(6)=23, a(7)=28, a(8)=32`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337120

/-- `2*a(n-1)-a(n-2)` -/
def P5845869188737322209.Spec : Prop :=
  ∀ n, P5845869188737322209.a n = A337120 n

theorem P5845869188737322209.correct : P5845869188737322209.Spec := by
  intro n
  simp only [A337120]

end A337120

/-!
# A337121: a(n) is the number of ways the n-th prime number prime(n) can be represented as sum of two smaller odd prime numbers p1, p2 with prime(n) > p1 > (p2 minus the maximum odd prime factor of (p1-p2)).

The programs for A337121, there is no canonical definition to state claims against.
-/

/-! ## A337121.P5473734317037299982

`A319447(lcm(A056857(2*n+1), A263273(n+2)))`
-/

namespace A337121.P5473734317037299982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319447 (Int.lcm (A056857 (2 * n + 1)) (A263273 (n + 2)))

end

end A337121.P5473734317037299982

/-! ## A337121.P11904230205186786108

`A137266(∑[∏[A256608(n+1)]])`
-/

namespace A337121.P11904230205186786108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137266 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337121.P11904230205186786108

/-! ## A337121.P12271426880279883946

`A061394(A002496(n+1)+2^n)`
-/

namespace A337121.P12271426880279883946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (A002496 (n + 1) + (2 ^ n : ℤ)).toNat

end

end A337121.P12271426880279883946

/-! ## A337121.P17876682415021030775

`∑{e}[A000108(A360179(2*n+3)), #]`
-/

namespace A337121.P17876682415021030775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A360179 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A337121.P17876682415021030775

/-! ## A337121.P1872562574361571305

`A232551(A040028(n+1)+eq[n², n^∑{e}[n, #]])`
-/

namespace A337121.P1872562574361571305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232551 (A040028 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)).toNat

end

end A337121.P1872562574361571305

/-!
# A337122: a(n) is the smallest positive integer k for which the mod-k Collatz orbit has the same length as the ordinary Collatz orbit.

The programs for A337122, there is no canonical definition to state claims against.
-/

/-! ## A337122.P5495402827398906519

`A267922(A000129(n))+A056959(n+1)`
-/

namespace A337122.P5495402827398906519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267922 (A000129 n).toNat + A056959 (n + 1)

end

end A337122.P5495402827398906519

/-! ## A337122.P7820713196055588464

`A123110(A002780(n+1))+A056959(n+1)`
-/

namespace A337122.P7820713196055588464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 (A002780 (n + 1)).toNat + A056959 (n + 1)

end

end A337122.P7820713196055588464

/-! ## A337122.P6111270004676729392

`A267922(A274063(n+1))+A056959(n+1)`
-/

namespace A337122.P6111270004676729392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267922 (A274063 (n + 1)).toNat + A056959 (n + 1)

end

end A337122.P6111270004676729392

/-! ## A337122.P3870668588040815741

`A056959(n+1)+A013595(A046736(n+2))`
-/

namespace A337122.P3870668588040815741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056959 (n + 1) + A013595 (A046736 (n + 2)).toNat

end

end A337122.P3870668588040815741

/-! ## A337122.P6881242265934288254

`A056959(n+1)+A000035(A007097(n))`
-/

namespace A337122.P6881242265934288254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056959 (n + 1) + A000035 (A007097 n).toNat

end

end A337122.P6881242265934288254

/-!
# A337125: Length of the longest simple path in the divisor graph of {1,...,n}.

The programs for A337125, there is no canonical definition to state claims against.
-/

/-! ## A337125.P6455170576330664786

`1-A347698(n+1)+n`
-/

namespace A337125.P6455170576330664786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A347698 (n + 1) + (n : ℤ)

end

end A337125.P6455170576330664786

/-! ## A337125.P2932718253090919745

`1-(A347698(n-or(n, -1))-n)`
-/

namespace A337125.P2932718253090919745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A347698 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat - (n : ℤ))

end

end A337125.P2932718253090919745

/-! ## A337125.P8176012711587512348

`1-(A347698(ϕ²-(ϕ-n))-n)`
-/

namespace A337125.P8176012711587512348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A347698 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - (n : ℤ))

end

end A337125.P8176012711587512348

/-! ## A337125.P16731891219702324058

`A024000(A347698(n+1))+n`
-/

namespace A337125.P16731891219702324058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A347698 (n + 1)).toNat + (n : ℤ)

end

end A337125.P16731891219702324058

/-! ## A337125.P6522033117537203377

`abs(A347698(n+1)+A001478(n+1))`
-/

namespace A337125.P6522033117537203377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A347698 (n + 1) + A001478 (n + 1)|

end

end A337125.P6522033117537203377

/-! ## A337125.P16903744552134022952

`(∑[n+1]+2)%(A347698(n+1)+A000124(n)+1)`
-/

namespace A337125.P16903744552134022952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) (A347698 (n + 1) + A000124 n + 1)

end

end A337125.P16903744552134022952

/-! ## A337125.P779178047651046425

`A004736(A347698(n+1)+A000124(n))`
-/

namespace A337125.P779178047651046425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A347698 (n + 1) + A000124 n).toNat

end

end A337125.P779178047651046425

/-!
# A337126: Irregular triangular array read by rows. T(n,k) is the number of permutations of {1,2,...,n} with descent set {1,3,5,...,m} (where m is the greatest odd integer less than n) that have exactly k inversions, n=0, k=0, or n>0, 0<=k<=ceiling((n-1)^2/2).

The programs for A337126, there is no canonical definition to state claims against.
-/

/-! ## A337126.P15642081426168436471

`A002260(n+1)%A274821(A078760(n))`
-/

namespace A337126.P15642081426168436471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (A274821 (A078760 n).toNat)

end

end A337126.P15642081426168436471

/-! ## A337126.P15260430778168598295

`and(A284254(A227376(n)), A342149(n+1))`
-/

namespace A337126.P15260430778168598295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284254 (A227376 n).toNat) (A342149 (n + 1))

end

end A337126.P15260430778168598295

/-! ## A337126.P4728003654736533136

`and(A003983(n+1), A047201(A079474(n+1)))`
-/

namespace A337126.P4728003654736533136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003983 (n + 1)) (A047201 (A079474 (n + 1)).toNat)

end

end A337126.P4728003654736533136

/-! ## A337126.P11213645712175743938

`and(A016945(A029494(n+1)), A342149(n+1))`
-/

namespace A337126.P11213645712175743938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016945 (A029494 (n + 1)).toNat) (A342149 (n + 1))

end

end A337126.P11213645712175743938

/-! ## A337126.P15191068127046048723

`and(A047201(A079474(n+1)), A322057(n+1))`
-/

namespace A337126.P15191068127046048723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047201 (A079474 (n + 1)).toNat) (A322057 (n + 1))

end

end A337126.P15191068127046048723

/-!
# A337127: Table with 10 columns read by rows: T(n, k) is the number of n-digit positive integers with exactly k distinct base 10 digits (0 < k <= 10).

The programs for A337127, there is no canonical definition to state claims against.
-/

/-! ## A337127.P1415833422643819683

`9*A126085(C(a(n-1), 18)+n)` with `a(0)=9`
-/

namespace A337127.P1415833422643819683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  9 * A126085 (Nat.choose (a (n - 1)).toNat 18 + n)

end

end A337127.P1415833422643819683

/-! ## A337127.P10239663050033441747

`A243703(A243745(n)+1)`
-/

namespace A337127.P10239663050033441747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243703 (A243745 (n + 10) + 1).toNat

end

end A337127.P10239663050033441747

/-! ## A337127.P5095205659283216885

`A016766(A324436(n))%A016766(n+3)`
-/

namespace A337127.P5095205659283216885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016766 (A324436 n).toNat) (A016766 (n + 3))

end

end A337127.P5095205659283216885

/-! ## A337127.P8510412221623073289

`A117940(xor(A001222(3*n+2), A128366(n+1)))`
-/

namespace A337127.P8510412221623073289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117940 (Int.xor (A001222 (3 * n + 2)) (A128366 (n + 1))).toNat

end

end A337127.P8510412221623073289

/-!
# A337129: Triangular array read by rows: T(n,0) = 2^n, T(n,k) = Sum_{i=n-k..n, j=0..i-n+k, i<>n or j<>k} T(i,j) for k > 0.

The programs for A337129, there is no canonical definition to state claims against.
-/

/-! ## A337129.P11364420107192709436

`A018635(A174349(n+1)-1)`
-/

namespace A337129.P11364420107192709436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018635 (A174349 (n + 1) - 1).toNat

end

end A337129.P11364420107192709436

/-! ## A337129.P9371574709984957421

`A269303(n+1)+A027623(A113405(n))`
-/

namespace A337129.P9371574709984957421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (n + 1) + A027623 (A113405 n).toNat

end

end A337129.P9371574709984957421

/-! ## A337129.P8646065022659636848

`A374738(A374736(n)+A307638(n+1))`
-/

namespace A337129.P8646065022659636848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374738 (A374736 n + A307638 (n + 1)).toNat

end

end A337129.P8646065022659636848

/-! ## A337129.P16234576413986850351

`A122111(A097937(n+2)+A035506(n))`
-/

namespace A337129.P16234576413986850351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A097937 (n + 2) + A035506 n).toNat

end

end A337129.P16234576413986850351

/-! ## A337129.P5613001932013830158

`A000005(A080608(n+1)-A362324(n))`
-/

namespace A337129.P5613001932013830158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A080608 (n + 1) - A362324 n).toNat

end

end A337129.P5613001932013830158

/-!
# A337130: a(n) is the sum of all products of pairs of numbers joined by the diagonals of an n-gon when its vertices are numbered from 1 to n in order.

The programs for A337130, the canonical program `A337130.P15680688818461421505` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337130 has offset 1).

The definition of A337130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337130.P15680688818461421505

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=11, a(4)=40, a(5)=99, a(6)=203`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337130

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15680688818461421505.Spec : Prop :=
  ∀ n, P15680688818461421505.a n = A337130 (n + 1)

theorem P15680688818461421505.correct : P15680688818461421505.Spec := by
  intro n
  simp only [A337130, Nat.add_sub_cancel]

end A337130

/-! ## A337130.P13246951576262003302

`abs(C(∑[n], 2)-A028310(n))-1`
-/

namespace A337130.P13246951576262003302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - A028310 n| - 1

end

end A337130.P13246951576262003302

namespace A337130

/-- `abs(C(∑[n], 2)-A028310(n))-1` -/
def P13246951576262003302.Spec : Prop :=
  ∀ n, P13246951576262003302.a n = A337130 (n + 1)

end A337130

/-! ## A337130.P17783437156010237163

`C(∑[n], 2)-(n+1)%A000124(n)`
-/

namespace A337130.P17783437156010237163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - Int.tmod (n + 1 : ℤ) (A000124 n)

end

end A337130.P17783437156010237163

namespace A337130

/-- `C(∑[n], 2)-(n+1)%A000124(n)` -/
def P17783437156010237163.Spec : Prop :=
  ∀ n, P17783437156010237163.a n = A337130 (n + 1)

end A337130

/-! ## A337130.P13776748954820216903

`A002817(n)-A000217(A184985(n+1))`
-/

namespace A337130.P13776748954820216903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - A000217 (A184985 (n + 1)).toNat

end

end A337130.P13776748954820216903

namespace A337130

/-- `A002817(n)-A000217(A184985(n+1))` -/
def P13776748954820216903.Spec : Prop :=
  ∀ n, P13776748954820216903.a n = A337130 (n + 1)

end A337130

/-! ## A337130.P9051937648465718666

`(A176145(n+3)-A140139(n+1))*A157928(n)`
-/

namespace A337130.P9051937648465718666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176145 (n + 3) - A140139 (n + 1)) * A157928 n

end

end A337130.P9051937648465718666

namespace A337130

/-- `(A176145(n+3)-A140139(n+1))*A157928(n)` -/
def P9051937648465718666.Spec : Prop :=
  ∀ n, P9051937648465718666.a n = A337130 (n + 1)

end A337130

/-! ## A337130.P17605620652872085105

`A050534(n+1)-(A005408(n)-n)%A046691(n)`
-/

namespace A337130.P17605620652872085105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (n + 1) - Int.tmod (A005408 n - (n : ℤ)) (A046691 n)

end

end A337130.P17605620652872085105

namespace A337130

/-- `A050534(n+1)-(A005408(n)-n)%A046691(n)` -/
def P17605620652872085105.Spec : Prop :=
  ∀ n, P17605620652872085105.a n = A337130 (n + 1)

end A337130

/-! ## A337130.P18267131205910769214

`(C(n, 2)*A000124(n+1))%(A002817(n)+1)`
-/

namespace A337130.P18267131205910769214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose n 2 : ℤ) * A000124 (n + 1)) (A002817 n + 1)

end

end A337130.P18267131205910769214

namespace A337130

/-- `(C(n, 2)*A000124(n+1))%(A002817(n)+1)` -/
def P18267131205910769214.Spec : Prop :=
  ∀ n, P18267131205910769214.a n = A337130 (n + 1)

end A337130

/-! ## A337130.P10210967245128880790

`A000217(record[A254047(n+1)])-∑[n+1]`
-/

namespace A337130.P10210967245128880790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254047 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A337130.P10210967245128880790

namespace A337130

/-- `A000217(record[A254047(n+1)])-∑[n+1]` -/
def P10210967245128880790.Spec : Prop :=
  ∀ n, P10210967245128880790.a n = A337130 (n + 1)

end A337130

/-! ## A337130.P3837418399685438951

`A000217(∑[n])-A000217(A184985(n+1))`
-/

namespace A337130.P3837418399685438951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j) - A000217 (A184985 (n + 1)).toNat

end

end A337130.P3837418399685438951

namespace A337130

/-- `A000217(∑[n])-A000217(A184985(n+1))` -/
def P3837418399685438951.Spec : Prop :=
  ∀ n, P3837418399685438951.a n = A337130 (n + 1)

end A337130

/-! ## A337130.P9113528656896956251

`A167499(∑[n-char[2]])-A167499(n)`
-/

namespace A337130.P9113528656896956251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A167499 n

end

end A337130.P9113528656896956251

namespace A337130

/-- `A167499(∑[n-char[2]])-A167499(n)` -/
def P9113528656896956251.Spec : Prop :=
  ∀ n, P9113528656896956251.a n = A337130 (n + 1)

end A337130

/-! ## A337130.P13496836573547753682

`record[A167499(n)/A256193(n)]-A167499(n)`
-/

namespace A337130.P13496836573547753682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167499 n : ℚ) / (A256193 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A167499 n : ℚ)

end

end A337130.P13496836573547753682

namespace A337130

/-- `record[A167499(n)/A256193(n)]-A167499(n)` -/
def P13496836573547753682.Spec : Prop :=
  ∀ n, P13496836573547753682.a n = (A337130 (n + 1) : ℚ)

end A337130

/-! ## A337130.P1058262921079173521

`C(∑[n], 2)-A173541(A034856(n+2))`
-/

namespace A337130.P1058262921079173521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - A173541 (A034856 (n + 2)).toNat

end

end A337130.P1058262921079173521

namespace A337130

/-- `C(∑[n], 2)-A173541(A034856(n+2))` -/
def P1058262921079173521.Spec : Prop :=
  ∀ n, P1058262921079173521.a n = A337130 (n + 1)

end A337130

/-!
# A337131: Row lengths of irregular triangle A335967.

The programs for A337131, there is no canonical definition to state claims against.
-/

/-! ## A337131.P9048042754558078637

`A245195(A038554(n+1))`
-/

namespace A337131.P9048042754558078637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245195 (A038554 (n + 1)).toNat

end

end A337131.P9048042754558078637

/-! ## A337131.P9810544551751089000

`2^(A056979(n+1)+A056976(n+1))`
-/

namespace A337131.P9810544551751089000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056979 (n + 1) + A056976 (n + 1) : ℤ)

end

end A337131.P9810544551751089000

/-! ## A337131.P18048369848586578982

`A245195(xor(A004526(n), A246591(n)))`
-/

namespace A337131.P18048369848586578982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245195 (Int.xor (A004526 n) (A246591 n)).toNat

end

end A337131.P18048369848586578982

/-! ## A337131.P15862799424490147842

`A245195(xor(A004754(n+1), A110654(n)))`
-/

namespace A337131.P15862799424490147842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245195 (Int.xor (A004754 (n + 1)) (A110654 n)).toNat

end

end A337131.P15862799424490147842

/-! ## A337131.P6494373594358952739

`A245195(xor(A053645(n+1), A065033(n)))`
-/

namespace A337131.P6494373594358952739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245195 (Int.xor (A053645 (n + 1)) (A065033 n)).toNat

end

end A337131.P6494373594358952739

/-! ## A337131.P17895967761517712172

`A245195(xor(A053645(n+1), A110654(n)))`
-/

namespace A337131.P17895967761517712172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245195 (Int.xor (A053645 (n + 1)) (A110654 n)).toNat

end

end A337131.P17895967761517712172

/-! ## A337131.P7818157915313258539

`2^(A014081(A038554(n+1))+A000045(C(n, n+1)))`
-/

namespace A337131.P7818157915313258539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A014081 (A038554 (n + 1)).toNat + A000045 (Nat.choose n (n + 1)) : ℤ)

end

end A337131.P7818157915313258539

/-! ## A337131.P2366754948275700285

`A020639(A000010(n+1))^A014081(A038554(n+1))`
-/

namespace A337131.P2366754948275700285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A000010 (n + 1)).toNat : ℚ) ^ (A014081 (A038554 (n + 1)).toNat : ℤ)

end

end A337131.P2366754948275700285

/-!
# A337132: a(n) is the number of squares at distance n from the central square of a Vicsek fractal.

The programs for A337132, the canonical program `A337132.P808422596746096956` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337132 has offset 0).

The definition of A337132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337132.P808422596746096956

`A147582(A343228(n)+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A337132

/-- `A147582(A343228(n)+1)` -/
def P808422596746096956.Spec : Prop :=
  ∀ n, P808422596746096956.a n = A337132 n

theorem P808422596746096956.correct : P808422596746096956.Spec := by
  intro n
  simp only [A337132]

end A337132

/-! ## A337132.P3301510158408700146

`A046109(A283059(n)-1)`
-/

namespace A337132.P3301510158408700146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (A283059 n - 1).toNat

end

end A337132.P3301510158408700146

namespace A337132

/-- `A046109(A283059(n)-1)` -/
def P3301510158408700146.Spec : Prop :=
  ∀ n, P3301510158408700146.a n = A337132 n

end A337132

/-!
# A337133: Numbers of the form x^2+2*y^3+3*z^4 for nonnegative x, y, z.

The programs for A337133, there is no canonical definition to state claims against.
-/

/-! ## A337133.P10748378483793470138

`comp[A203322(n+1)]`
-/

namespace A337133.P10748378483793470138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337133.P10748378483793470138

/-! ## A337133.P17200282010329077446

`eq[char[A203322(n+1)], A106510(3*(n+1))]`
-/

namespace A337133.P17200282010329077446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203322 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A337133.P17200282010329077446

/-!
# A337134: a(n) = Sum_{k=1..n} floor(sqrt(2k-1)).

The programs for A337134, the canonical program `A337134.P730667571061519595` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337134 has offset 1).

The definition of A337134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337134.P730667571061519595

`∑[floor(sqrt(Δ[n²]))]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337134

/-- `∑[floor(sqrt(Δ[n²]))]` -/
def P730667571061519595.Spec : Prop :=
  ∀ n, P730667571061519595.a n = A337134 (n + 1)

theorem P730667571061519595.correct : P730667571061519595.Spec := by
  intro n
  simp only [A337134, Nat.add_sub_cancel]

end A337134

/-! ## A337134.P7510342451930587967

`floor(a(n-1)+sqrt(2*n+1))` with `a(0)=1`
-/

namespace A337134.P7510342451930587967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.sqrt (2 * n + 1 : ℝ)⌋

end

end A337134.P7510342451930587967

namespace A337134

/-- `floor(a(n-1)+sqrt(2*n+1))` -/
def P7510342451930587967.Spec : Prop :=
  ∀ n, P7510342451930587967.a n = A337134 (n + 1)

end A337134

/-! ## A337134.P18264796358634062897

`∑[A000267(A123108(n))]-1`
-/

namespace A337134.P18264796358634062897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A337134.P18264796358634062897

namespace A337134

/-- `∑[A000267(A123108(n))]-1` -/
def P18264796358634062897.Spec : Prop :=
  ∀ n, P18264796358634062897.a n = A337134 (n + 1)

end A337134

/-! ## A337134.P13203257284164612533

`A176615(n+1)+A022554(n+1)`
-/

namespace A337134.P13203257284164612533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176615 (n + 1) + A022554 (n + 1)

end

end A337134.P13203257284164612533

namespace A337134

/-- `A176615(n+1)+A022554(n+1)` -/
def P13203257284164612533.Spec : Prop :=
  ∀ n, P13203257284164612533.a n = A337134 (n + 1)

end A337134

/-! ## A337134.P5628802453741775381

`A000027(∑[A000196(Δ[n²])])`
-/

namespace A337134.P5628802453741775381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337134.P5628802453741775381

namespace A337134

/-- `A000027(∑[A000196(Δ[n²])])` -/
def P5628802453741775381.Spec : Prop :=
  ∀ n, P5628802453741775381.a n = A337134 (n + 1)

end A337134

/-!
# A337135: a(1) = 1; for n > 1, a(n) = Sum_{d|n, d <= sqrt(n)} a(d).

The programs for A337135, the canonical program `A337135.P2317708887760458389` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337135 has offset 1).

The definition of A337135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337135.P2317708887760458389

`A349326(A338506(n+1))-A063962(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337135

/-- `A349326(A338506(n+1))-A063962(n+1)` -/
def P2317708887760458389.Spec : Prop :=
  ∀ n, P2317708887760458389.a n = A337135 (n + 1)

theorem P2317708887760458389.correct : P2317708887760458389.Spec := by
  intro n
  simp only [A337135, Nat.add_sub_cancel]

end A337135

/-! ## A337135.P12680354887992735028

`A001222(A042988(n)*A072499(n+1))`
-/

namespace A337135.P12680354887992735028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A042988 n * A072499 (n + 1)).toNat

end

end A337135.P12680354887992735028

namespace A337135

/-- `A001222(A042988(n)*A072499(n+1))` -/
def P12680354887992735028.Spec : Prop :=
  ∀ n, P12680354887992735028.a n = A337135 (n + 1)

end A337135

/-! ## A337135.P7214458426499326214

`A001222(A000040(n+1)*A072499(n+1))`
-/

namespace A337135.P7214458426499326214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) * A072499 (n + 1)).toNat

end

end A337135.P7214458426499326214

namespace A337135

/-- `A001222(A000040(n+1)*A072499(n+1))` -/
def P7214458426499326214.Spec : Prop :=
  ∀ n, P7214458426499326214.a n = A337135 (n + 1)

end A337135

/-! ## A337135.P16191776733411653850

`A001222(A000705(n+1)*A072499(n+1))`
-/

namespace A337135.P16191776733411653850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000705 (n + 1) * A072499 (n + 1)).toNat

end

end A337135.P16191776733411653850

namespace A337135

/-- `A001222(A000705(n+1)*A072499(n+1))` -/
def P16191776733411653850.Spec : Prop :=
  ∀ n, P16191776733411653850.a n = A337135 (n + 1)

end A337135

/-! ## A337135.P13269341486330880450

`A001222(A002144(n+1)*A072499(n+1))`
-/

namespace A337135.P13269341486330880450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002144 (n + 1) * A072499 (n + 1)).toNat

end

end A337135.P13269341486330880450

namespace A337135

/-- `A001222(A002144(n+1)*A072499(n+1))` -/
def P13269341486330880450.Spec : Prop :=
  ∀ n, P13269341486330880450.a n = A337135 (n + 1)

end A337135

/-! ## A337135.P7381127205010022617

`A001222(A004139(n+1)*A072499(n+1))`
-/

namespace A337135.P7381127205010022617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004139 (n + 1) * A072499 (n + 1)).toNat

end

end A337135.P7381127205010022617

namespace A337135

/-- `A001222(A004139(n+1)*A072499(n+1))` -/
def P7381127205010022617.Spec : Prop :=
  ∀ n, P7381127205010022617.a n = A337135 (n + 1)

end A337135

/-! ## A337135.P10857506798601838268

`A001222(A027699(n+1)*A072499(n+1))`
-/

namespace A337135.P10857506798601838268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027699 (n + 1) * A072499 (n + 1)).toNat

end

end A337135.P10857506798601838268

namespace A337135

/-- `A001222(A027699(n+1)*A072499(n+1))` -/
def P10857506798601838268.Spec : Prop :=
  ∀ n, P10857506798601838268.a n = A337135 (n + 1)

end A337135

/-! ## A337135.P4760389682882578521

`A001222(A038134(n+1)*A072499(n+1))`
-/

namespace A337135.P4760389682882578521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038134 (n + 1) * A072499 (n + 1)).toNat

end

end A337135.P4760389682882578521

namespace A337135

/-- `A001222(A038134(n+1)*A072499(n+1))` -/
def P4760389682882578521.Spec : Prop :=
  ∀ n, P4760389682882578521.a n = A337135 (n + 1)

end A337135

/-! ## A337135.P10414996694800549958

`A001222(A038604(n+1)*A072499(n+1))`
-/

namespace A337135.P10414996694800549958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038604 (n + 1) * A072499 (n + 1)).toNat

end

end A337135.P10414996694800549958

namespace A337135

/-- `A001222(A038604(n+1)*A072499(n+1))` -/
def P10414996694800549958.Spec : Prop :=
  ∀ n, P10414996694800549958.a n = A337135 (n + 1)

end A337135

/-! ## A337135.P3874990658639199906

`A001222(A049543(n+1)*A072499(n+1))`
-/

namespace A337135.P3874990658639199906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A049543 (n + 1) * A072499 (n + 1)).toNat

end

end A337135.P3874990658639199906

namespace A337135

/-- `A001222(A049543(n+1)*A072499(n+1))` -/
def P3874990658639199906.Spec : Prop :=
  ∀ n, P3874990658639199906.a n = A337135 (n + 1)

end A337135

/-!
# A337136: a(1) = 1, a(2) = 2; for n > 1, a(n) = smallest positive number which has not yet appeared which has a common factor with a(n-2) + a(n-1).

The programs for A337136, there is no canonical definition to state claims against.
-/

/-! ## A337136.P2056050617133275788

`A366473(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A337136.P2056050617133275788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366473 (n + 1) - a (n - 1)

end

end A337136.P2056050617133275788

/-! ## A337136.P15722391513561177258

`A361314(n+1+A010894(2*n+1))`
-/

namespace A337136.P15722391513561177258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361314 ((n + 1 : ℤ) + A010894 (2 * n + 1 + 21)).toNat

end

end A337136.P15722391513561177258

/-! ## A337136.P7403893571669415075

`A361314(n+1)%A353356(3*n+5)`
-/

namespace A337136.P7403893571669415075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361314 (n + 1)) (A353356 (3 * n + 5))

end

end A337136.P7403893571669415075

/-! ## A337136.P18024463679817424587

`A361314(n+1)%A006094(A005252(n))`
-/

namespace A337136.P18024463679817424587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361314 (n + 1)) (A006094 (A005252 n).toNat)

end

end A337136.P18024463679817424587

/-! ## A337136.P14143854527576993868

`A361314(n+1)+A000122(A075769(n+1))`
-/

namespace A337136.P14143854527576993868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361314 (n + 1) + A000122 (A075769 (n + 1)).toNat

end

end A337136.P14143854527576993868

/-!
# A337137: Variant of A332563 - binary version of Recamán concatenation sequence.

The programs for A337137, there is no canonical definition to state claims against.
-/

/-! ## A337137.P11876353126429954043

`A161906(A288474(n+5)+A000079(n+2))`
-/

namespace A337137.P11876353126429954043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (A288474 (n + 5) + A000079 (n + 2)).toNat

end

end A337137.P11876353126429954043

/-!
# A337138: Numbers that cannot be written as the sum of 5 or less squares of composite numbers, allowing repetitions (complement of A055075).

The programs for A337138, there is no canonical definition to state claims against.
-/

/-! ## A337138.P11664168749665013032

`record[gcd(n+1, Δ[A097876(n)])]`
-/

namespace A337138.P11664168749665013032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337138.P11664168749665013032

/-! ## A337138.P4292055553615464025

`lt[A112172(3*n), A111620(n+1)]`
-/

namespace A337138.P4292055553615464025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337138.P4292055553615464025

/-! ## A337138.P10855991117049858190

`lt[A126760(A008434(n)), A225837(n+1)]`
-/

namespace A337138.P10855991117049858190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A008434 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225837 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337138.P10855991117049858190

/-!
# A337139: Indices m of repunits R_m that are not Colombian (or self) numbers.

The programs for A337139, there is no canonical definition to state claims against.
-/

/-! ## A337139.P16853306753477765640

`comp[A337208(n+1)-1]+1`
-/

namespace A337139.P16853306753477765640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337208 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A337139.P16853306753477765640

/-! ## A337139.P7357282448826980245

`lt[A134894(2*(n+1)), A134893((n+2)²)]`
-/

namespace A337139.P7357282448826980245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134894 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134893 ((n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337139.P7357282448826980245

/-! ## A337139.P17931119300419474518

`comp[∑[11%A130969(n)]]`
-/

namespace A337139.P17931119300419474518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A130969 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337139.P17931119300419474518

/-! ## A337139.P14295356311489577526

`lt[A196169(A055483(n+5)), A070939(3*n+2)]`
-/

namespace A337139.P14295356311489577526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (A055483 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337139.P14295356311489577526

/-! ## A337139.P3103972081543916083

`lt[Δ[A262223(n+4)], A262216(n+2)]`
-/

namespace A337139.P3103972081543916083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262223 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262216 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A337139.P3103972081543916083

/-! ## A337139.P16766540825739649396

`lt[A121373(A003114(n+2)), A103168(n+5)]`
-/

namespace A337139.P16766540825739649396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A003114 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337139.P16766540825739649396

/-! ## A337139.P7220984457539156688

`lt[A347180(n+5), A087798(A047726(n+5))]`
-/

namespace A337139.P7220984457539156688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347180 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087798 (A047726 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337139.P7220984457539156688

/-! ## A337139.P965160475882409663

`lt[A109844(A109848(n+5)), A109874(n+2)]`
-/

namespace A337139.P965160475882409663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109844 (A109848 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109874 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337139.P965160475882409663

/-!
# A337140: Numbers m = a + b with a and b positive integers whose product a*b = k^2 is a square.

The programs for A337140, the canonical program `A337140.P18050210650349249115` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337140 has offset 1).

The definition of A337140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337140.P18050210650349249115

`∪[A009003(n+1), A065502(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A337140

/-- `∪[A009003(n+1), A065502(n+1)]` -/
def P18050210650349249115.Spec : Prop :=
  ∀ n, (P18050210650349249115.a n : ℤ) = A337140 (n + 1)

theorem P18050210650349249115.correct : P18050210650349249115.Spec := by
  intro n
  simp only [A337140, Nat.add_sub_cancel]

end A337140

/-! ## A337140.P7487633111230883893

`∪[A009003(n+1), A081354(n+1)]`
-/

namespace A337140.P7487633111230883893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337140.P7487633111230883893

namespace A337140

/-- `∪[A009003(n+1), A081354(n+1)]` -/
def P7487633111230883893.Spec : Prop :=
  ∀ n, (P7487633111230883893.a n : ℤ) = A337140 (n + 1)

end A337140

/-! ## A337140.P5514547761915714616

`∪[A009003(n+1), A217562(n+1)]`
-/

namespace A337140.P5514547761915714616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337140.P5514547761915714616

namespace A337140

/-- `∪[A009003(n+1), A217562(n+1)]` -/
def P5514547761915714616.Spec : Prop :=
  ∀ n, (P5514547761915714616.a n : ℤ) = A337140 (n + 1)

end A337140

/-! ## A337140.P958745585068251006

`∪[A309812(n+1), A065502(n+1)]`
-/

namespace A337140.P958745585068251006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337140.P958745585068251006

namespace A337140

/-- `∪[A309812(n+1), A065502(n+1)]` -/
def P958745585068251006.Spec : Prop :=
  ∀ n, (P958745585068251006.a n : ℤ) = A337140 (n + 1)

end A337140

/-! ## A337140.P6504410995356156087

`A071903(a(n-1))+n+1` with `a(0)=2`
-/

namespace A337140.P6504410995356156087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A071903 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A337140.P6504410995356156087

namespace A337140

/-- `A071903(a(n-1))+n+1` -/
def P6504410995356156087.Spec : Prop :=
  ∀ n, P6504410995356156087.a n = A337140 (n + 1)

end A337140

/-! ## A337140.P13176670567404714349

`lt[0, A078909(n+1)]+1`
-/

namespace A337140.P13176670567404714349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337140.P13176670567404714349

namespace A337140

/-- `lt[0, A078909(n+1)]+1` -/
def P13176670567404714349.Spec : Prop :=
  ∀ n, (P13176670567404714349.a n : ℤ) = A337140 (n + 1)

end A337140

/-! ## A337140.P6977745830910595534

`lt[1, A072436(n+1)]+1`
-/

namespace A337140.P6977745830910595534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337140.P6977745830910595534

namespace A337140

/-- `lt[1, A072436(n+1)]+1` -/
def P6977745830910595534.Spec : Prop :=
  ∀ n, (P6977745830910595534.a n : ℤ) = A337140 (n + 1)

end A337140

/-! ## A337140.P12687685218867144632

`eq[1, A000010(a(A103223(n)))]` with `a(0)=3`
-/

namespace A337140.P12687685218867144632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A103223 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337140.P12687685218867144632

namespace A337140

/-- `eq[1, A000010(a(A103223(n)))]` -/
def P12687685218867144632.Spec : Prop :=
  ∀ n, (P12687685218867144632.a n : ℤ) = A337140 (n + 1)

end A337140

/-! ## A337140.P7522348998271898380

`lt[0, A099380(n)]`
-/

namespace A337140.P7522348998271898380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337140.P7522348998271898380

namespace A337140

/-- `lt[0, A099380(n)]` -/
def P7522348998271898380.Spec : Prop :=
  ∀ n, (P7522348998271898380.a n : ℤ) = A337140 (n + 1)

end A337140

/-! ## A337140.P8913930946692298044

`lt[0, A078911(n+1)]+1`
-/

namespace A337140.P8913930946692298044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337140.P8913930946692298044

namespace A337140

/-- `lt[0, A078911(n+1)]+1` -/
def P8913930946692298044.Spec : Prop :=
  ∀ n, (P8913930946692298044.a n : ℤ) = A337140 (n + 1)

end A337140

/-!
# A337141: Numbers having at least one 6 in their representation in base 7.

The programs for A337141, there is no canonical definition to state claims against.
-/

/-! ## A337141.P12924372942475486948

`comp[A020657(n+1)]`
-/

namespace A337141.P12924372942475486948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337141.P12924372942475486948

/-! ## A337141.P1760588948038922068

`comp[A020658(n+1)-1]`
-/

namespace A337141.P1760588948038922068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337141.P1760588948038922068

/-! ## A337141.P14427379045029847223

`lt[5, A190596(n)]`
-/

namespace A337141.P14427379045029847223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337141.P14427379045029847223

/-! ## A337141.P16118764514424643312

`eq[7, A270032(n+1)]+1`
-/

namespace A337141.P16118764514424643312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337141.P16118764514424643312

/-! ## A337141.P10676130552515796044

`eq[A040006(n), A190596(n)]`
-/

namespace A337141.P10676130552515796044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337141.P10676130552515796044

/-! ## A337141.P6460562290117154250

`eq[A063808(n), A190596(n)]`
-/

namespace A337141.P6460562290117154250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063808 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337141.P6460562290117154250

/-! ## A337141.P17342638902706992879

`eq[A113975(n), A190596(n)]`
-/

namespace A337141.P17342638902706992879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337141.P17342638902706992879

/-! ## A337141.P12566724954860471141

`eq[A190596(n), A329502(n)]`
-/

namespace A337141.P12566724954860471141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337141.P12566724954860471141

/-! ## A337141.P10675185785612450412

`eq[A190596(n), A329506(n)]`
-/

namespace A337141.P10675185785612450412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337141.P10675185785612450412

/-! ## A337141.P6235288005582563939

`eq[A190596(n), A329510(n)]`
-/

namespace A337141.P6235288005582563939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329510 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337141.P6235288005582563939

/-! ## A337141.P4114263476840375934

`eq[A190596(n), A329516(n)]`
-/

namespace A337141.P4114263476840375934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337141.P4114263476840375934

/-! ## A337141.P12944049137988235582

`eq[A094325(n+1), A190596(n)]`
-/

namespace A337141.P12944049137988235582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337141.P12944049137988235582

/-! ## A337141.P521300837976331129

`eq[A101101(n+1), A190596(n)]`
-/

namespace A337141.P521300837976331129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337141.P521300837976331129

/-! ## A337141.P7543834320623740370

`eq[A101272(n+1), A190596(n)]`
-/

namespace A337141.P7543834320623740370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337141.P7543834320623740370

/-! ## A337141.P15050342332839683533

`eq[A134201(n+1), A190596(n)]`
-/

namespace A337141.P15050342332839683533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337141.P15050342332839683533

/-! ## A337141.P1271719109635258118

`eq[A071279(n+3), A190596(n)]`
-/

namespace A337141.P1271719109635258118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071279 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337141.P1271719109635258118

/-! ## A337141.P5470680300127385858

`eq[7, A270032(A065033(2*n))]`
-/

namespace A337141.P5470680300127385858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270032 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337141.P5470680300127385858

/-! ## A337141.P15695937427738249947

`A068505(A283609(n+1))`
-/

namespace A337141.P15695937427738249947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A283609 (n + 1)).toNat

end

end A337141.P15695937427738249947

/-! ## A337141.P17175385184784484847

`lt[5, A054055(A007093(n))]`
-/

namespace A337141.P17175385184784484847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337141.P17175385184784484847

/-! ## A337141.P8655213094872143760

`lt[5, A054055(lt[A054055(n), 7])]`
-/

namespace A337141.P8655213094872143760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337141.P8655213094872143760

/-!
# A337142: a(n) is the number of words of length n over the alphabet {0,1,2} with at least two 1's and exactly one occurrence of the subword 22.

The programs for A337142, the canonical program `A337142.P4860253720312348756` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337142 has offset 0).

The definition of A337142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337142.P4860253720312348756

`(n-3)*((n+1)*(n+2)*A000045(n)+3*(n-3)*n*A000045(n+1))/50`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A337142

/-- `(n-3)*((n+1)*(n+2)*A000045(n)+3*(n-3)*n*A000045(n+1))/50` -/
def P4860253720312348756.Spec : Prop :=
  ∀ n, P4860253720312348756.a n = (A337142 n : ℚ)

end A337142

/-! ## A337142.P11567981531907409005

`3*A276581(A056330(n+2))`
-/

namespace A337142.P11567981531907409005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A276581 (A056330 (n + 2)).toNat

end

end A337142.P11567981531907409005

namespace A337142

/-- `3*A276581(A056330(n+2))` -/
def P11567981531907409005.Spec : Prop :=
  ∀ n, P11567981531907409005.a n = A337142 n

end A337142

/-! ## A337142.P15838100546028738234

`A281660(3*n+2)%A276682(A000142(n))`
-/

namespace A337142.P15838100546028738234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281660 (3 * n + 2)) (A276682 (A000142 n).toNat)

end

end A337142.P15838100546028738234

namespace A337142

/-- `A281660(3*n+2)%A276682(A000142(n))` -/
def P15838100546028738234.Spec : Prop :=
  ∀ n, P15838100546028738234.a n = A337142 n

end A337142

/-!
# A337143: Numbers k for which there are only 3 bases b (2, k+1 and another one) in which the digits of k contain the digit b-1.

The programs for A337143, there is no canonical definition to state claims against.
-/

/-! ## A337143.P5453694895950710534

`eq[3, A337496(n)]`
-/

namespace A337143.P5453694895950710534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337143.P5453694895950710534

/-! ## A337143.P5689920835636713961

`lt[A281411(A337496(n+1)), A337496(n)]+1`
-/

namespace A337143.P5689920835636713961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281411 (A337496 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337143.P5689920835636713961

/-! ## A337143.P15385976026060549645

`lt[A337470(A337496(n)²), A337496(n)]`
-/

namespace A337143.P15385976026060549645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337470 (A337496 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337143.P15385976026060549645

/-! ## A337143.P1614755176917912670

`lt[A337472(A337496(n)²), A337496(n)]`
-/

namespace A337143.P1614755176917912670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337472 (A337496 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337143.P1614755176917912670

/-!
# A337144: n is the a(n)-th positive integer which takes its number of steps to reach 1 in the Collatz (or 3x+1) problem.

The programs for A337144, there is no canonical definition to state claims against.
-/

/-! ## A337144.P18027734113270640664

`A327103(A226048(n)+n+1+n)`
-/

namespace A337144.P18027734113270640664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A226048 n + (n + 1 : ℤ) + (n : ℤ)).toNat

end

end A337144.P18027734113270640664

/-! ## A337144.P14325143411014426255

`gcd(A131132(A029416(n)), A131139(n))`
-/

namespace A337144.P14325143411014426255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131132 (A029416 n).toNat) (A131139 n)

end

end A337144.P14325143411014426255

/-! ## A337144.P16246883919839355899

`A079700(A233442(n+1)+A225087(n+5))`
-/

namespace A337144.P16246883919839355899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079700 (A233442 (n + 1) + A225087 (n + 5)).toNat

end

end A337144.P16246883919839355899

/-! ## A337144.P6425473698861496976

`A309004(A172400(n+3)+A025427(3*n+1))`
-/

namespace A337144.P6425473698861496976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (A172400 (n + 3) + A025427 (3 * n + 1)).toNat

end

end A337144.P6425473698861496976

/-! ## A337144.P9280257048220054390

`A309004(A172400(n+3)+A005614(3*n+2))`
-/

namespace A337144.P9280257048220054390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (A172400 (n + 3) + A005614 (3 * n + 2)).toNat

end

end A337144.P9280257048220054390

/-!
# A337147: Primes abs(A337145(k))/8 for k in A337146.

The programs for A337147, there is no canonical definition to state claims against.
-/

/-! ## A337147.P4640884770262416253

`A337145(A337146(n+1))/8`
-/

namespace A337147.P4640884770262416253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337145 (A337146 (n + 1)).toNat : ℚ) / 8

end

end A337147.P4640884770262416253

/-!
# A337149: Positive integers k such that the number of steps it takes to reach 1 in the '3x+1' problem is different for all j < k.

The programs for A337149, there is no canonical definition to state claims against.
-/

/-! ## A337149.P11248505224738312394

`A033491(A337150(n+1))`
-/

namespace A337149.P11248505224738312394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (A337150 (n + 1)).toNat

end

end A337149.P11248505224738312394

/-! ## A337149.P1740685102105588145

`eq[1, A337144(n+1)]+1`
-/

namespace A337149.P1740685102105588145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337144 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337149.P1740685102105588145

/-! ## A337149.P14807938144471809344

`eq[1, char[A033491(n)]]`
-/

namespace A337149.P14807938144471809344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337149.P14807938144471809344

/-! ## A337149.P10917630443456522349

`record[A033491(A222597(n+1)+A076228(n+1))]`
-/

namespace A337149.P10917630443456522349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (A222597 (n + 1) + A076228 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337149.P10917630443456522349

/-! ## A337149.P7808579335756878367

`record[A033491(A087225(n+1)+A222641(n+1)-1)]`
-/

namespace A337149.P7808579335756878367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (A087225 (n + 1) + (A222641 (n + 1) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337149.P7808579335756878367

/-!
# A337150: Nonnegative integers in the order in which they appear first in A006577.

The programs for A337150, there is no canonical definition to state claims against.
-/

/-! ## A337150.P6115853651701521001

`A006577(A337149(n+1))`
-/

namespace A337150.P6115853651701521001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A337149 (n + 1)).toNat

end

end A337150.P6115853651701521001

/-! ## A337150.P938236798412567274

`A008908(A337149(C(n+1, n)))-1`
-/

namespace A337150.P938236798412567274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A337149 (Nat.choose (n + 1) n)).toNat - 1

end

end A337150.P938236798412567274

/-! ## A337150.P1606556735883824665

`A008908(A337149(abs(xor(n, -1))))-1`
-/

namespace A337150.P1606556735883824665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A337149 |Int.xor (n : ℤ) (-1)|.toNat).toNat - 1

end

end A337150.P1606556735883824665

/-! ## A337150.P9715156412898230796

`A008908(A337149(Δ[n²]-n))-1`
-/

namespace A337150.P9715156412898230796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A337149 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1

end

end A337150.P9715156412898230796

/-! ## A337150.P8172312541830619335

`A006577(record[(n+1)/A337144(n+1)])`
-/

namespace A337150.P8172312541830619335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A337144 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A337150.P8172312541830619335

/-! ## A337150.P2449411570468489883

`A001489(n+1)+A008908(A337149(n+1))+n`
-/

namespace A337150.P2449411570468489883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A008908 (A337149 (n + 1)).toNat + (n : ℤ))

end

end A337150.P2449411570468489883

/-!
# A337151: a(n) = (n!)^2 * Sum_{k=0..n} (-1)^(n-k) * (k+1) / ((n-k)!)^2.

The programs for A337151, there is no canonical definition to state claims against.
-/

/-! ## A337151.P16864407859590951572

`A155935(n²*a(n-1))` with `a(0)=1`
-/

namespace A337151.P16864407859590951572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155935 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A337151.P16864407859590951572

/-!
# A337152: a(n) = 2^n * (n!)^2 * Sum_{k=0..n} 1 / ((-2)^k * (k!)^2).

The programs for A337152, the canonical program `A337152.P14082586000267725857` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337152 has offset 0).

The definition of A337152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337152.P14082586000267725857

`2*n²*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337152

/-- `2*n²*a(n-1)+(-1)^n` -/
def P14082586000267725857.Spec : Prop :=
  ∀ n, P14082586000267725857.a n = A337152 n

theorem P14082586000267725857.correct : P14082586000267725857.Spec := by
  intro n
  simp only [A337152]

end A337152

/-! ## A337152.P8351910951306068590

`and(2*n²*a(n-1)+1, -3)` with `a(0)=1`
-/

namespace A337152.P8351910951306068590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (2 * ((n ^ 2 : ℤ) * a (n - 1)) + 1) (-3)

end

end A337152.P8351910951306068590

namespace A337152

/-- `and(2*n²*a(n-1)+1, -3)` -/
def P8351910951306068590.Spec : Prop :=
  ∀ n, P8351910951306068590.a n = A337152 n

end A337152

/-! ## A337152.P3896801867484488248

`or(2, n*a(n-1)*2*n)-1` with `a(0)=1, a(1)=1`
-/

namespace A337152.P3896801867484488248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 2 ((n : ℤ) * a (n - 1) * (2 * n : ℤ)) - 1

end

end A337152.P3896801867484488248

namespace A337152

/-- `or(2, n*a(n-1)*2*n)-1` -/
def P3896801867484488248.Spec : Prop :=
  ∀ n, P3896801867484488248.a n = A337152 n

end A337152

/-! ## A337152.P4664592024708171056

`2*a(n-1)*n²+A004442(n)-n` with `a(0)=1`
-/

namespace A337152.P4664592024708171056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * (n ^ 2 : ℤ) + (A004442 n - (n : ℤ))

end

end A337152.P4664592024708171056

namespace A337152

/-- `2*a(n-1)*n²+A004442(n)-n` -/
def P4664592024708171056.Spec : Prop :=
  ∀ n, P4664592024708171056.a n = A337152 n

end A337152

/-! ## A337152.P4545979344512138183

`n*a(n-1)*2*n+1-A010673(n)` with `a(0)=1`
-/

namespace A337152.P4545979344512138183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) * (2 * n : ℤ) + (1 - A010673 n)

end

end A337152.P4545979344512138183

namespace A337152

/-- `n*a(n-1)*2*n+1-A010673(n)` -/
def P4545979344512138183.Spec : Prop :=
  ∀ n, P4545979344512138183.a n = A337152 n

end A337152

/-!
# A337153: a(n) = 3^n * (n!)^2 * Sum_{k=0..n} 1 / ((-3)^k * (k!)^2).

The programs for A337153, the canonical program `A337153.P17972568815545697143` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337153 has offset 0).

The definition of A337153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337153.P17972568815545697143

`3*n²*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337153

/-- `3*n²*a(n-1)+(-1)^n` -/
def P17972568815545697143.Spec : Prop :=
  ∀ n, P17972568815545697143.a n = A337153 n

theorem P17972568815545697143.correct : P17972568815545697143.Spec := by
  intro n
  simp only [A337153]

end A337153

/-! ## A337153.P3502563575802149161

`xor(1, 3*a(n-1)*n²)` with `a(0)=1`
-/

namespace A337153.P3502563575802149161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (3 * a (n - 1) * n ^ 2)

end

end A337153.P3502563575802149161

namespace A337153

/-- `xor(1, 3*a(n-1)*n²)` -/
def P3502563575802149161.Spec : Prop :=
  ∀ n, (P3502563575802149161.a n : ℤ) = A337153 n

end A337153

/-! ## A337153.P16266507723184277535

`xor(1, a(n-1)*A033428(n))` with `a(0)=1`
-/

namespace A337153.P16266507723184277535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (a (n - 1) * A033428 n)

end

end A337153.P16266507723184277535

namespace A337153

/-- `xor(1, a(n-1)*A033428(n))` -/
def P16266507723184277535.Spec : Prop :=
  ∀ n, P16266507723184277535.a n = A337153 n

end A337153

/-! ## A337153.P5256791413369781735

`a(n-1)*A033428(n)+1-A010673(n)` with `a(0)=1`
-/

namespace A337153.P5256791413369781735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A033428 n + 1 - A010673 n

end

end A337153.P5256791413369781735

namespace A337153

/-- `a(n-1)*A033428(n)+1-A010673(n)` -/
def P5256791413369781735.Spec : Prop :=
  ∀ n, P5256791413369781735.a n = A337153 n

end A337153

/-! ## A337153.P14894666522555994607

`a(n-1)*A008486(n²)+A004442(n)-n` with `a(0)=1`
-/

namespace A337153.P14894666522555994607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008486 (n ^ 2) + (A004442 n - (n : ℤ))

end

end A337153.P14894666522555994607

namespace A337153

/-- `a(n-1)*A008486(n²)+A004442(n)-n` -/
def P14894666522555994607.Spec : Prop :=
  ∀ n, P14894666522555994607.a n = A337153 n

end A337153

/-!
# A337154: a(n) = 4^n * (n!)^2 * Sum_{k=0..n} 1 / ((-4)^k * (k!)^2).

The programs for A337154, the canonical program `A337154.P4444233036671185412` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337154 has offset 0).

The definition of A337154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337154.P4444233036671185412

`4*n²*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337154

/-- `4*n²*a(n-1)+(-1)^n` -/
def P4444233036671185412.Spec : Prop :=
  ∀ n, P4444233036671185412.a n = A337154 n

theorem P4444233036671185412.correct : P4444233036671185412.Spec := by
  intro n
  simp only [A337154]

end A337154

/-! ## A337154.P4735446072300946523

`(-1)^n+4*n*n*a(n-1)` with `a(0)=1`
-/

namespace A337154.P4735446072300946523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n + (4 * n : ℤ) * ((n : ℤ) * a (n - 1))

end

end A337154.P4735446072300946523

namespace A337154

/-- `(-1)^n+4*n*n*a(n-1)` -/
def P4735446072300946523.Spec : Prop :=
  ∀ n, P4735446072300946523.a n = A337154 n

theorem P4735446072300946523.correct : P4735446072300946523.Spec := by
  intro n
  simp only [A337154, Nat.add_sub_cancel, A337154.P4735446072300946523.a, A337154.P4444233036671185412.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A337154

/-! ## A337154.P12207852642203810725

`A033999(n)+(2*n)²*a(n-1)` with `a(0)=1`
-/

namespace A337154.P12207852642203810725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033999 n + ((2 * n) ^ 2 : ℤ) * a (n - 1)

end

end A337154.P12207852642203810725

namespace A337154

/-- `A033999(n)+(2*n)²*a(n-1)` -/
def P12207852642203810725.Spec : Prop :=
  ∀ n, P12207852642203810725.a n = A337154 n

end A337154

/-! ## A337154.P8697070427587941169

`n*a(n-1)*4*n-A165326(n)` with `a(0)=1`
-/

namespace A337154.P8697070427587941169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) * (4 * n : ℤ) - A165326 n

end

end A337154.P8697070427587941169

namespace A337154

/-- `n*a(n-1)*4*n-A165326(n)` -/
def P8697070427587941169.Spec : Prop :=
  ∀ n, P8697070427587941169.a n = A337154 n

end A337154

/-! ## A337154.P1317940056019687409

`A062157(n+1)+(2*n)²*a(n-1)` with `a(0)=1`
-/

namespace A337154.P1317940056019687409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062157 (n + 1) + ((2 * n) ^ 2 : ℤ) * a (n - 1)

end

end A337154.P1317940056019687409

namespace A337154

/-- `A062157(n+1)+(2*n)²*a(n-1)` -/
def P1317940056019687409.Spec : Prop :=
  ∀ n, P1317940056019687409.a n = A337154 n

end A337154

/-!
# A337155: a(n) = 5^n * (n!)^2 * Sum_{k=0..n} 1 / ((-5)^k * (k!)^2).

The programs for A337155, the canonical program `A337155.P9487552668937940899` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337155 has offset 0).

The definition of A337155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337155.P9487552668937940899

`5*n²*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337155

/-- `5*n²*a(n-1)+(-1)^n` -/
def P9487552668937940899.Spec : Prop :=
  ∀ n, P9487552668937940899.a n = A337155 n

theorem P9487552668937940899.correct : P9487552668937940899.Spec := by
  intro n
  simp only [A337155]

end A337155

/-! ## A337155.P11498494219116376447

`xor(1, 5*a(n-1)*n²)` with `a(0)=1`
-/

namespace A337155.P11498494219116376447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (5 * a (n - 1) * n ^ 2)

end

end A337155.P11498494219116376447

namespace A337155

/-- `xor(1, 5*a(n-1)*n²)` -/
def P11498494219116376447.Spec : Prop :=
  ∀ n, (P11498494219116376447.a n : ℤ) = A337155 n

end A337155

/-! ## A337155.P6765060825965250384

`xor(1, a(n-1)*A033429(n))` with `a(0)=1`
-/

namespace A337155.P6765060825965250384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (a (n - 1) * A033429 n)

end

end A337155.P6765060825965250384

namespace A337155

/-- `xor(1, a(n-1)*A033429(n))` -/
def P6765060825965250384.Spec : Prop :=
  ∀ n, P6765060825965250384.a n = A337155 n

end A337155

/-! ## A337155.P8343522319584479187

`xor(1, n*A047208(2*n+1)*a(n-1))` with `a(0)=1`
-/

namespace A337155.P8343522319584479187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 ((n : ℤ) * A047208 (2 * n + 1) * a (n - 1))

end

end A337155.P8343522319584479187

namespace A337155

/-- `xor(1, n*A047208(2*n+1)*a(n-1))` -/
def P8343522319584479187.Spec : Prop :=
  ∀ n, P8343522319584479187.a n = A337155 n

end A337155

/-! ## A337155.P8154284321813572839

`5*a(n-1)*n²+1-2*A000035(n)` with `a(0)=1`
-/

namespace A337155.P8154284321813572839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) * (n ^ 2 : ℤ) + (1 - 2 * A000035 n)

end

end A337155.P8154284321813572839

namespace A337155

/-- `5*a(n-1)*n²+1-2*A000035(n)` -/
def P8154284321813572839.Spec : Prop :=
  ∀ n, P8154284321813572839.a n = A337155 n

end A337155

/-!
# A337156: Numbers k such that the k-th triangular number has all its prime factors congruent to 1 mod 4.

The programs for A337156, the canonical program `A337156.P7925351017222445069` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337156 has offset 1).

The definition of A337156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337156.P1614257271920940540

`∩[A008784(n+1)-1, A008784(n+1)]`
-/

namespace A337156.P1614257271920940540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337156.P1614257271920940540

namespace A337156

/-- `∩[A008784(n+1)-1, A008784(n+1)]` -/
def P1614257271920940540.Spec : Prop :=
  ∀ n, (P1614257271920940540.a n : ℤ) = A337156 (n + 1)

end A337156

/-! ## A337156.P7925351017222445069

`A008784(eq[1, A008784(n+2)-A008784(n+1)]+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A337156

/-- `A008784(eq[1, A008784(n+2)-A008784(n+1)]+1)` -/
def P7925351017222445069.Spec : Prop :=
  ∀ n, P7925351017222445069.a n = A337156 (n + 1)

theorem P7925351017222445069.correct : P7925351017222445069.Spec := by
  intro n
  simp only [A337156, Nat.add_sub_cancel]

end A337156

/-! ## A337156.P16132572700552131946

`∩[A008784(n+1), A004273(A008784(n+1))]`
-/

namespace A337156.P16132572700552131946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A008784 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337156.P16132572700552131946

namespace A337156

/-- `∩[A008784(n+1), A004273(A008784(n+1))]` -/
def P16132572700552131946.Spec : Prop :=
  ∀ n, (P16132572700552131946.a n : ℤ) = A337156 (n + 1)

end A337156

/-! ## A337156.P18330216911126113666

`∩[A057129(n+1), A004273(A057129(n+1))]`
-/

namespace A337156.P18330216911126113666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A057129 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337156.P18330216911126113666

namespace A337156

/-- `∩[A057129(n+1), A004273(A057129(n+1))]` -/
def P18330216911126113666.Spec : Prop :=
  ∀ n, (P18330216911126113666.a n : ℤ) = A337156 (n + 1)

end A337156

/-! ## A337156.P7900984237540210069

`∩[A072437(n+1), A004273(A072437(n+1))]`
-/

namespace A337156.P7900984237540210069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A072437 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337156.P7900984237540210069

namespace A337156

/-- `∩[A072437(n+1), A004273(A072437(n+1))]` -/
def P7900984237540210069.Spec : Prop :=
  ∀ n, (P7900984237540210069.a n : ℤ) = A337156 (n + 1)

end A337156

/-! ## A337156.P14943486295115718825

`∩[A004613(n+1), A372771(n+1)]`
-/

namespace A337156.P14943486295115718825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337156.P14943486295115718825

namespace A337156

/-- `∩[A004613(n+1), A372771(n+1)]` -/
def P14943486295115718825.Spec : Prop :=
  ∀ n, (P14943486295115718825.a n : ℤ) = A337156 (n + 1)

end A337156

/-! ## A337156.P3426240468457347707

`record[A072436(A157075(n+1)-1)]`
-/

namespace A337156.P3426240468457347707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A157075 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337156.P3426240468457347707

namespace A337156

/-- `record[A072436(A157075(n+1)-1)]` -/
def P3426240468457347707.Spec : Prop :=
  ∀ n, P3426240468457347707.a n = A337156 (n + 1)

end A337156

/-! ## A337156.P15240181412173476556

`record[A170818(A157075(n+1)-1)]`
-/

namespace A337156.P15240181412173476556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A157075 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337156.P15240181412173476556

namespace A337156

/-- `record[A170818(A157075(n+1)-1)]` -/
def P15240181412173476556.Spec : Prop :=
  ∀ n, P15240181412173476556.a n = A337156 (n + 1)

end A337156

/-! ## A337156.P11161381318037000544

`record[A170818(A170818(n+1)+n)]`
-/

namespace A337156.P11161381318037000544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A170818 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337156.P11161381318037000544

namespace A337156

/-- `record[A170818(A170818(n+1)+n)]` -/
def P11161381318037000544.Spec : Prop :=
  ∀ n, P11161381318037000544.a n = A337156 (n + 1)

end A337156

/-! ## A337156.P12497145066530102533

`record[A072436(A072436(4*n+2)-1)]`
-/

namespace A337156.P12497145066530102533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A072436 (4 * n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337156.P12497145066530102533

namespace A337156

/-- `record[A072436(A072436(4*n+2)-1)]` -/
def P12497145066530102533.Spec : Prop :=
  ∀ n, P12497145066530102533.a n = A337156 (n + 1)

end A337156

/-! ## A337156.P9485930589556210966

`record[A072436(A004273(A008846(n+1)))]`
-/

namespace A337156.P9485930589556210966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A004273 (A008846 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337156.P9485930589556210966

namespace A337156

/-- `record[A072436(A004273(A008846(n+1)))]` -/
def P9485930589556210966.Spec : Prop :=
  ∀ n, P9485930589556210966.a n = A337156 (n + 1)

end A337156

/-! ## A337156.P13922381057492068068

`eq[A000038(A001842(n)), A072438(n+1)]`
-/

namespace A337156.P13922381057492068068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A001842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337156.P13922381057492068068

namespace A337156

/-- `eq[A000038(A001842(n)), A072438(n+1)]` -/
def P13922381057492068068.Spec : Prop :=
  ∀ n, (P13922381057492068068.a n : ℤ) = A337156 (n + 1)

end A337156

/-!
# A337157: a(n) is the smallest m such that A054024(m) = prime(n), where A054024(m) is A000203(m) mod m, or -1 if there is no such m.

The programs for A337157, there is no canonical definition to state claims against.
-/

/-! ## A337157.P1769389867602475291

`A076495(A000040(n+1))-char[2]`
-/

namespace A337157.P1769389867602475291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076495 (A000040 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A337157.P1769389867602475291

/-! ## A337157.P539563931867349958

`A076495(record[A006530(n+2)])-char[2]`
-/

namespace A337157.P539563931867349958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076495 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A337157.P539563931867349958

/-!
# A337158: a(n) is the start m of first run of n consecutive numbers with periodic sequence of values of number of divisors [tau(m), tau(m+1), tau(m), tau(m+1), tau(m), ...] where tau(m) != tau(m+1).

The programs for A337158, there is no canonical definition to state claims against.
-/

/-! ## A337158.P18124920478768954878

`∑{d}[A067048(n+1), A213275(#)]`
-/

namespace A337158.P18124920478768954878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A213275 d

end

end A337158.P18124920478768954878

/-! ## A337158.P9919124895552887295

`∏{p}[A004525(A144820(n+1)), #]`
-/

namespace A337158.P9919124895552887295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A144820 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A337158.P9919124895552887295

/-!
# A337160: Primes p such that the 3 X 3 matrix with components (row by row) prime(k+m), 0 <= m <= 8 has zero determinant, where p = prime(k).

The programs for A337160, there is no canonical definition to state claims against.
-/

/-! ## A337160.P6328675851076721707

`A001749(A117345(n+1))/4`
-/

namespace A337160.P6328675851076721707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A117345 (n + 1)).toNat : ℚ) / 4

end

end A337160.P6328675851076721707

/-! ## A337160.P5218521537022043947

`A000040(A117345(n+1))`
-/

namespace A337160.P5218521537022043947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A117345 (n + 1)).toNat

end

end A337160.P5218521537022043947

/-! ## A337160.P6152961213275118558

`A008578(A117345(n+1)+1)`
-/

namespace A337160.P6152961213275118558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A117345 (n + 1) + 1).toNat

end

end A337160.P6152961213275118558

/-! ## A337160.P10847416244167524607

`A075639(A117345(n+1)+1)`
-/

namespace A337160.P10847416244167524607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075639 (A117345 (n + 1) + 1).toNat

end

end A337160.P10847416244167524607

/-! ## A337160.P7917653393286466033

`A045319(A117345(n+1)-1)`
-/

namespace A337160.P7917653393286466033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A117345 (n + 1) - 1).toNat

end

end A337160.P7917653393286466033

/-!
# A337161: Square array read by antidiagonals: T(n,k) is the number of simple labeled graphs G with vertex set V(G) = {v_1,...,v_n} along with a (coloring) function C:V(G) ->[k] such that v_i adjacent to v_j implies C(v_i) != C(v_j) and i=0, k>=0.

The programs for A337161, there is no canonical definition to state claims against.
-/

/-! ## A337161.P11707744611281442843

`A033886(A208673(n))+A003992(n)`
-/

namespace A337161.P11707744611281442843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033886 (A208673 n).toNat + A003992 n

end

end A337161.P11707744611281442843

/-! ## A337161.P10863556079444079733

`A058343(A309010(n))+A003992(n)`
-/

namespace A337161.P10863556079444079733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 (A309010 n).toNat + A003992 n

end

end A337161.P10863556079444079733

/-! ## A337161.P4507412831550475460

`A281155(A343097(n))+A071921(n)`
-/

namespace A337161.P4507412831550475460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 (A343097 n).toNat + A071921 n

end

end A337161.P4507412831550475460

/-! ## A337161.P13243580377023579895

`A048766(A007318(n)*A294118(n))`
-/

namespace A337161.P13243580377023579895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A007318 n * A294118 n).toNat

end

end A337161.P13243580377023579895

/-! ## A337161.P3584894387511420260

`A005136(A213027(n))*A213276(n)`
-/

namespace A337161.P3584894387511420260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A213027 n).toNat * A213276 n

end

end A337161.P3584894387511420260

/-!
# A337163: Numbers divisible by their individual digits, but not by the product of their digits.

The programs for A337163, there is no canonical definition to state claims against.
-/

/-! ## A337163.P10163476505401812765

`∩[A034838(n+1), A342445(n+1)]`
-/

namespace A337163.P10163476505401812765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337163.P10163476505401812765

/-! ## A337163.P17795389528471659281

`∩[A285271(n+1), A342445(n+1)]`
-/

namespace A337163.P17795389528471659281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337163.P17795389528471659281

/-! ## A337163.P10293138545315103656

`∩[A330982(n+1), A342445(n+1)]`
-/

namespace A337163.P10293138545315103656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337163.P10293138545315103656

/-! ## A337163.P6354383969308194967

`∩[A259315(n+1), A342445(n+1)]`
-/

namespace A337163.P6354383969308194967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337163.P6354383969308194967

/-! ## A337163.P3437509026670690256

`∩[A052382(n+1), A342445(n+1)]`
-/

namespace A337163.P3437509026670690256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337163.P3437509026670690256

/-! ## A337163.P14071688717479406802

`filter[A342445(n+1), A168046(#)]`
-/

namespace A337163.P14071688717479406802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A337163.P14071688717479406802

/-! ## A337163.P12373328021817835375

`∩[A034838(n+1), A188643(n+1)]`
-/

namespace A337163.P12373328021817835375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337163.P12373328021817835375

/-! ## A337163.P3874186706200116729

`∩[A034838(n+1), A346657(n+1)]`
-/

namespace A337163.P3874186706200116729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337163.P3874186706200116729

/-! ## A337163.P2542085056741527725

`∩[A285271(n+1), A346657(n+1)]`
-/

namespace A337163.P2542085056741527725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337163.P2542085056741527725

/-! ## A337163.P1181961128253143125

`eq[A347323(n)+A055641(n), A188642(n)]`
-/

namespace A337163.P1181961128253143125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337163.P1181961128253143125

/-!
# A337165: Number T(n,k) of compositions of n into k nonzero squares; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A337165, there is no canonical definition to state claims against.
-/

/-! ## A337165.P14876498734625459485

`(A112519(n)*A243148(n))%A085089(A014442(8*n+3))`
-/

namespace A337165.P14876498734625459485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112519 n * A243148 n) (A085089 (A014442 (8 * n + 3)).toNat)

end

end A337165.P14876498734625459485

/-! ## A337165.P2422761171238104139

`(A112519(n)*A243148(n))%A277249(A233543(n))`
-/

namespace A337165.P2422761171238104139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112519 n * A243148 n) (A277249 (A233543 n).toNat)

end

end A337165.P2422761171238104139

/-! ## A337165.P12477925321315253431

`A351726((comp[∑[n-2]]+1)%A353699(n+1))`
-/

namespace A337165.P12477925321315253431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351726 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) (A353699 (n + 1))).toNat

end

end A337165.P12477925321315253431

/-! ## A337165.P14042942474751276835

`A005361(A078121(n))*A243148(n)`
-/

namespace A337165.P14042942474751276835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A078121 n).toNat * A243148 n

end

end A337165.P14042942474751276835

/-! ## A337165.P16250671683574478352

`A000164(A103324(n+3))*A243148(n)`
-/

namespace A337165.P16250671683574478352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A103324 (n + 3)).toNat * A243148 n

end

end A337165.P16250671683574478352

/-!
# A337167: a(n) = 1 + 3 * Sum_{k=0..n-1} a(k) * a(n-k-1).

The programs for A337167, there is no canonical definition to state claims against.
-/

/-! ## A337167.P11211453035897668479

`A383951(n)/(n+1)`
-/

namespace A337167.P11211453035897668479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383951 n : ℚ) / (n + 1 : ℚ)

end

end A337167.P11211453035897668479

/-! ## A337167.P7897821226672145397

`∑[A340973(n)]/(n+1)`
-/

namespace A337167.P7897821226672145397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340973 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A337167.P7897821226672145397

/-! ## A337167.P16722916845611033023

`∑[∑[A085364(n)]]/(n+1)`
-/

namespace A337167.P16722916845611033023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A337167.P16722916845611033023

/-! ## A337167.P1535566972554140135

`A340968(∑[n+3]+n+3)`
-/

namespace A337167.P1535566972554140135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340968 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A337167.P1535566972554140135

/-! ## A337167.P10461153019771998396

`record[A340968(A046691(A028920(n)))]`
-/

namespace A337167.P10461153019771998396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340968 (A046691 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337167.P10461153019771998396

/-!
# A337168: a(n) = (-1)^n + 2 * Sum_{k=0..n-1} a(k) * a(n-k-1).

The programs for A337168, there is no canonical definition to state claims against.
-/

/-! ## A337168.P12577671224212527941

`A383947(n)/(n+1)`
-/

namespace A337168.P12577671224212527941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383947 n : ℚ) / (n + 1 : ℚ)

end

end A337168.P12577671224212527941

/-! ## A337168.P9985504424505285454

`A130497(A008486(n*A279571(n)))`
-/

namespace A337168.P9985504424505285454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (A008486 ((n : ℤ) * A279571 n).toNat).toNat

end

end A337168.P9985504424505285454

/-!
# A337169: a(n) = (-1)^n + 3 * Sum_{k=0..n-1} a(k) * a(n-k-1).

The programs for A337169, there is no canonical definition to state claims against.
-/

/-! ## A337169.P1733253402790312601

`A188666(A007613(n))`
-/

namespace A337169.P1733253402790312601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (A007613 n).toNat

end

end A337169.P1733253402790312601

/-!
# A337171: a(n) = A004186(n) mod n.

The programs for A337171, there is no canonical definition to state claims against.
-/

/-! ## A337171.P999756241363694395

`A004186(n+1)%(n+1)`
-/

namespace A337171.P999756241363694395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 (n + 1)) (n + 1 : ℤ)

end

end A337171.P999756241363694395

/-! ## A337171.P2457906913015967794

`A108782(n+1)%(n+1)`
-/

namespace A337171.P2457906913015967794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108782 (n + 1)) (n + 1 : ℤ)

end

end A337171.P2457906913015967794

/-! ## A337171.P14185576306878649798

`A194233(n+1)%(n+1)`
-/

namespace A337171.P14185576306878649798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194233 (n + 1)) (n + 1 : ℤ)

end

end A337171.P14185576306878649798

/-! ## A337171.P1403564940421840852

`A333659(A328447(n+1))%(n+1)`
-/

namespace A337171.P1403564940421840852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333659 (A328447 (n + 1)).toNat) (n + 1 : ℤ)

end

end A337171.P1403564940421840852

/-! ## A337171.P2010215552586874475

`A193581(A061601(n+1))%(n+1)`
-/

namespace A337171.P2010215552586874475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193581 (A061601 (n + 1)).toNat) (n + 1 : ℤ)

end

end A337171.P2010215552586874475

/-! ## A337171.P5136461844193595615

`A056967(A244112(n+1))%(n+1)`
-/

namespace A337171.P5136461844193595615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056967 (A244112 (n + 1)).toNat) (n + 1 : ℤ)

end

end A337171.P5136461844193595615

/-! ## A337171.P6298153397192803795

`A068637(n+1)%A000196((n+1)²)`
-/

namespace A337171.P6298153397192803795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068637 (n + 1)) (A000196 ((n + 1) ^ 2))

end

end A337171.P6298153397192803795

/-! ## A337171.P16275402623025839387

`A068637(n+1)%A033677(Δ[A056520(n)])`
-/

namespace A337171.P16275402623025839387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068637 (n + 1)) (A033677 (f1 (n + 1) - f1 n).toNat)

end

end A337171.P16275402623025839387

/-! ## A337171.P2075554861814383402

`A068636(A044332(n+1))%A068636(n+1)`
-/

namespace A337171.P2075554861814383402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068636 (A044332 (n + 1)).toNat) (A068636 (n + 1))

end

end A337171.P2075554861814383402

/-! ## A337171.P545082367827573293

`A103168(n+1)%A103168(A044332(n+1))`
-/

namespace A337171.P545082367827573293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103168 (n + 1)) (A103168 (A044332 (n + 1)).toNat)

end

end A337171.P545082367827573293

/-!
# A337173: a(n) = Sum_{k=1..floor(n/2)} k^2 * (n-k)^2.

The programs for A337173, there is no canonical definition to state claims against.
-/

/-! ## A337173.P5152508469589056413

`A213505(∑[or(1, n)]-n)%A192459(n)`
-/

namespace A337173.P5152508469589056413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213505 (∑ j ∈ Finset.range (n + 1), f1 j - n)) (A192459 n)

end

end A337173.P5152508469589056413

/-! ## A337173.P10771680660191009569

`A213505(A007590(n)+1)%A181377(n+1)`
-/

namespace A337173.P10771680660191009569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213505 (A007590 n + 1).toNat) (A181377 (n + 1))

end

end A337173.P10771680660191009569

/-!
# A337174: Number of pairs of divisors of n (d1,d2) such that d1 <= d2 and d1*d2 >= n.

The programs for A337174, the canonical program `A337174.P2886231547188506159` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337174 has offset 1).

The definition of A337174 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337174.P2886231547188506159

`floor((A000005(n+1)+1)²/4)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337174

/-- `floor((A000005(n+1)+1)²/4)` -/
def P2886231547188506159.Spec : Prop :=
  ∀ n, P2886231547188506159.a n = A337174 (n + 1)

theorem P2886231547188506159.correct : P2886231547188506159.Spec := by
  intro n
  simp only [A337174, Nat.add_sub_cancel]

end A337174

/-! ## A337174.P14832554469343274517

`A002620(A000005(n+1)+1)`
-/

namespace A337174.P14832554469343274517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A000005 (n + 1) + 1).toNat

end

end A337174.P14832554469343274517

namespace A337174

/-- `A002620(A000005(n+1)+1)` -/
def P14832554469343274517.Spec : Prop :=
  ∀ n, P14832554469343274517.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P11536894025031068972

`A337175(n+1)+A038548(n+1)`
-/

namespace A337174.P11536894025031068972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337175 (n + 1) + A038548 (n + 1)

end

end A337174.P11536894025031068972

namespace A337174

/-- `A337175(n+1)+A038548(n+1)` -/
def P11536894025031068972.Spec : Prop :=
  ∀ n, P11536894025031068972.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P9205481116659216236

`floor((∑{d}[n+1, ceil(2/#)]/2)²)`
-/

namespace A337174.P9205481116659216236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉ : ℤ) : ℚ) / 2) ^ 2⌋

end

end A337174.P9205481116659216236

namespace A337174

/-- `floor((∑{d}[n+1, ceil(2/#)]/2)²)` -/
def P9205481116659216236.Spec : Prop :=
  ∀ n, P9205481116659216236.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P10242354281943711749

`round((∑{d}[n+1, ceil(2/#)]/2)²)`
-/

namespace A337174.P10242354281943711749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉ : ℤ) : ℚ) / 2) ^ 2)

end

end A337174.P10242354281943711749

namespace A337174

/-- `round((∑{d}[n+1, ceil(2/#)]/2)²)` -/
def P10242354281943711749.Spec : Prop :=
  ∀ n, P10242354281943711749.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P1053349744853039092

`floor(((∏{e}[n+1, #+1]+1)/2)²)`
-/

namespace A337174.P1053349744853039092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 : ℕ) : ℚ) / 2) ^ 2⌋

end

end A337174.P1053349744853039092

namespace A337174

/-- `floor(((∏{e}[n+1, #+1]+1)/2)²)` -/
def P1053349744853039092.Spec : Prop :=
  ∀ n, P1053349744853039092.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P9449427577283363865

`round(((∏{e}[n+1, #+1]+1)/2)²)`
-/

namespace A337174.P9449427577283363865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 : ℕ) : ℚ) / 2) ^ 2)

end

end A337174.P9449427577283363865

namespace A337174

/-- `round(((∏{e}[n+1, #+1]+1)/2)²)` -/
def P9449427577283363865.Spec : Prop :=
  ∀ n, P9449427577283363865.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P16390994659085019912

`floor(cosh(log(∏{e}[n+1, #+1]+1))²)`
-/

namespace A337174.P16390994659085019912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 : ℕ) : ℝ)) ^ 2⌋

end

end A337174.P16390994659085019912

namespace A337174

/-- `floor(cosh(log(∏{e}[n+1, #+1]+1))²)` -/
def P16390994659085019912.Spec : Prop :=
  ∀ n, P16390994659085019912.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P3655571744757010309

`round((A000005(C(n+1, n))+1)²/4)`
-/

namespace A337174.P3655571744757010309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000005 (Nat.choose (n + 1) n) + 1) ^ 2 : ℚ) / 4)

end

end A337174.P3655571744757010309

namespace A337174

/-- `round((A000005(C(n+1, n))+1)²/4)` -/
def P3655571744757010309.Spec : Prop :=
  ∀ n, P3655571744757010309.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P5780425434571778839

`A087811(A000005(n+1))`
-/

namespace A337174.P5780425434571778839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (A000005 (n + 1)).toNat

end

end A337174.P5780425434571778839

namespace A337174

/-- `A087811(A000005(n+1))` -/
def P5780425434571778839.Spec : Prop :=
  ∀ n, P5780425434571778839.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P14085156438363105936

`A008642(A086369(n+1))`
-/

namespace A337174.P14085156438363105936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A086369 (n + 1)).toNat

end

end A337174.P14085156438363105936

namespace A337174

/-- `A008642(A086369(n+1))` -/
def P14085156438363105936.Spec : Prop :=
  ∀ n, P14085156438363105936.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P11641281073088211832

`A008642(A114003(n+1))`
-/

namespace A337174.P11641281073088211832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A114003 (n + 1)).toNat

end

end A337174.P11641281073088211832

namespace A337174

/-- `A008642(A114003(n+1))` -/
def P11641281073088211832.Spec : Prop :=
  ∀ n, P11641281073088211832.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P4139302440746834351

`A115237(A066446(n+1))`
-/

namespace A337174.P4139302440746834351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115237 (A066446 (n + 1)).toNat

end

end A337174.P4139302440746834351

namespace A337174

/-- `A115237(A066446(n+1))` -/
def P4139302440746834351.Spec : Prop :=
  ∀ n, P4139302440746834351.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P6152486368781539867

`A002620(A334954(n+1))`
-/

namespace A337174.P6152486368781539867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A334954 (n + 1)).toNat

end

end A337174.P6152486368781539867

namespace A337174

/-- `A002620(A334954(n+1))` -/
def P6152486368781539867.Spec : Prop :=
  ∀ n, P6152486368781539867.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P4740797339175674184

`A008238(A062011(n+1)+2)`
-/

namespace A337174.P4740797339175674184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A062011 (n + 1) + 2).toNat

end

end A337174.P4740797339175674184

namespace A337174

/-- `A008238(A062011(n+1)+2)` -/
def P4740797339175674184.Spec : Prop :=
  ∀ n, P4740797339175674184.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P15387142273974614891

`A008733(A114003(n+1)-1)`
-/

namespace A337174.P15387142273974614891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (A114003 (n + 1) - 1).toNat

end

end A337174.P15387142273974614891

namespace A337174

/-- `A008733(A114003(n+1)-1)` -/
def P15387142273974614891.Spec : Prop :=
  ∀ n, P15387142273974614891.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P8318307309891600982

`A002265((A000005(n+1)+1)²)`
-/

namespace A337174.P8318307309891600982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((A000005 (n + 1) + 1) ^ 2).toNat

end

end A337174.P8318307309891600982

namespace A337174

/-- `A002265((A000005(n+1)+1)²)` -/
def P8318307309891600982.Spec : Prop :=
  ∀ n, P8318307309891600982.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P15231384823955708418

`A026922((A000005(n+1)+1)²)`
-/

namespace A337174.P15231384823955708418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 ((A000005 (n + 1) + 1) ^ 2).toNat

end

end A337174.P15231384823955708418

namespace A337174

/-- `A026922((A000005(n+1)+1)²)` -/
def P15231384823955708418.Spec : Prop :=
  ∀ n, P15231384823955708418.a n = A337174 (n + 1)

end A337174

/-! ## A337174.P923853168528522029

`A246552((A000005(n+1)+1)²)`
-/

namespace A337174.P923853168528522029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 ((A000005 (n + 1) + 1) ^ 2).toNat

end

end A337174.P923853168528522029

namespace A337174

/-- `A246552((A000005(n+1)+1)²)` -/
def P923853168528522029.Spec : Prop :=
  ∀ n, P923853168528522029.a n = A337174 (n + 1)

end A337174

/-!
# A337175: Number of pairs of divisors of n, (d1,d2), such that d1 <= d2 and d1*d2 < n.

The programs for A337175, the canonical program `A337175.P3535412205708800651` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337175 has offset 1).

The definition of A337175 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, A337174, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337175.P2253859516664212798

`floor(A000005(n+1)²/4)`
-/

namespace A337175.P2253859516664212798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 1) ^ 2 : ℚ) / 4⌋

end

end A337175.P2253859516664212798

namespace A337175

/-- `floor(A000005(n+1)²/4)` -/
def P2253859516664212798.Spec : Prop :=
  ∀ n, P2253859516664212798.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P10709637695189536082

`A002620(A000005(n+1))`
-/

namespace A337175.P10709637695189536082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A000005 (n + 1)).toNat

end

end A337175.P10709637695189536082

namespace A337175

/-- `A002620(A000005(n+1))` -/
def P10709637695189536082.Spec : Prop :=
  ∀ n, P10709637695189536082.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P3535412205708800651

`A337174(n+1)-A038548(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A337175

/-- `A337174(n+1)-A038548(n+1)` -/
def P3535412205708800651.Spec : Prop :=
  ∀ n, P3535412205708800651.a n = A337175 (n + 1)

theorem P3535412205708800651.correct : P3535412205708800651.Spec := by
  intro n
  simp only [A337175, Nat.add_sub_cancel]

end A337175

/-! ## A337175.P9020217874348483069

`(A035116(n+1)-A010052(n+1))/4`
-/

namespace A337175.P9020217874348483069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035116 (n + 1) - A010052 (n + 1) : ℚ) / 4

end

end A337175.P9020217874348483069

namespace A337175

/-- `(A035116(n+1)-A010052(n+1))/4` -/
def P9020217874348483069.Spec : Prop :=
  ∀ n, P9020217874348483069.a n = (A337175 (n + 1) : ℚ)

end A337175

/-! ## A337175.P15277135832516977427

`floor((∏{e}[n+1, #+1]/2)²)`
-/

namespace A337175.P15277135832516977427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2) ^ 2⌋

end

end A337175.P15277135832516977427

namespace A337175

/-- `floor((∏{e}[n+1, #+1]/2)²)` -/
def P15277135832516977427.Spec : Prop :=
  ∀ n, P15277135832516977427.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P2628533519300663695

`round((∏{e}[n+1, #+1]/2)²)`
-/

namespace A337175.P2628533519300663695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2) ^ 2)

end

end A337175.P2628533519300663695

namespace A337175

/-- `round((∏{e}[n+1, #+1]/2)²)` -/
def P2628533519300663695.Spec : Prop :=
  ∀ n, P2628533519300663695.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P11813497488217568012

`floor((∑{d}[n+1, gcd(n, #)]/2)²)`
-/

namespace A337175.P11813497488217568012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℚ) / 2) ^ 2⌋

end

end A337175.P11813497488217568012

namespace A337175

/-- `floor((∑{d}[n+1, gcd(n, #)]/2)²)` -/
def P11813497488217568012.Spec : Prop :=
  ∀ n, P11813497488217568012.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P10955430220879237878

`floor((∑{d}[n+1, ceil(1/#)]/2)²)`
-/

namespace A337175.P10955430220879237878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ : ℤ) : ℚ) / 2) ^ 2⌋

end

end A337175.P10955430220879237878

namespace A337175

/-- `floor((∑{d}[n+1, ceil(1/#)]/2)²)` -/
def P10955430220879237878.Spec : Prop :=
  ∀ n, P10955430220879237878.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P10440572214454658472

`floor(∑{d}[n+1, or(#, -1)]²/4)`
-/

namespace A337175.P10440572214454658472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1)) ^ 2 : ℤ) : ℚ) / 4⌋

end

end A337175.P10440572214454658472

namespace A337175

/-- `floor(∑{d}[n+1, or(#, -1)]²/4)` -/
def P10440572214454658472.Spec : Prop :=
  ∀ n, P10440572214454658472.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P7601324972262297951

`round((2^∑{e}[n+1, log2(#+1)]/2)²)`
-/

namespace A337175.P7601324972262297951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ)) / 2) ^ 2)

end

end A337175.P7601324972262297951

namespace A337175

/-- `round((2^∑{e}[n+1, log2(#+1)]/2)²)` -/
def P7601324972262297951.Spec : Prop :=
  ∀ n, P7601324972262297951.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P14142354419900591041

`floor(((∑{d}[n+1, C(2, #)!]-1)/2)²)`
-/

namespace A337175.P14142354419900591041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.choose 2 d) : ℕ) : ℤ) - 1 : ℚ) / 2) ^ 2⌋

end

end A337175.P14142354419900591041

namespace A337175

/-- `floor(((∑{d}[n+1, C(2, #)!]-1)/2)²)` -/
def P14142354419900591041.Spec : Prop :=
  ∀ n, P14142354419900591041.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P12135277230949322757

`floor((round(∑{d}[n+1, root(#, 2*n+1)])/2)²)`
-/

namespace A337175.P12135277230949322757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / (2 * n + 1 : ℝ))) : ℚ) / 2) ^ 2⌋

end

end A337175.P12135277230949322757

namespace A337175

/-- `floor((round(∑{d}[n+1, root(#, 2*n+1)])/2)²)` -/
def P12135277230949322757.Spec : Prop :=
  ∀ n, P12135277230949322757.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P3458729243843341109

`floor(∏{e}[n+1, #+1]/2)*ceil(∏{e}[n+1, #+1]/2)`
-/

namespace A337175.P3458729243843341109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋ * ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉

end

end A337175.P3458729243843341109

namespace A337175

/-- `floor(∏{e}[n+1, #+1]/2)*ceil(∏{e}[n+1, #+1]/2)` -/
def P3458729243843341109.Spec : Prop :=
  ∀ n, P3458729243843341109.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P2189747707689790882

`A002265(A035116(n+1))`
-/

namespace A337175.P2189747707689790882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A035116 (n + 1)).toNat

end

end A337175.P2189747707689790882

namespace A337175

/-- `A002265(A035116(n+1))` -/
def P2189747707689790882.Spec : Prop :=
  ∀ n, P2189747707689790882.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P10326683687492523290

`A008238(A062011(n+1))`
-/

namespace A337175.P10326683687492523290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A062011 (n + 1)).toNat

end

end A337175.P10326683687492523290

namespace A337175

/-- `A008238(A062011(n+1))` -/
def P10326683687492523290.Spec : Prop :=
  ∀ n, P10326683687492523290.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P3586444052188841952

`A008733(A114003(n+1))`
-/

namespace A337175.P3586444052188841952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (A114003 (n + 1)).toNat

end

end A337175.P3586444052188841952

namespace A337175

/-- `A008733(A114003(n+1))` -/
def P3586444052188841952.Spec : Prop :=
  ∀ n, P3586444052188841952.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P14137273539707141968

`A008238(A131089(n+1))`
-/

namespace A337175.P14137273539707141968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A131089 (n + 1)).toNat

end

end A337175.P14137273539707141968

namespace A337175

/-- `A008238(A131089(n+1))` -/
def P14137273539707141968.Spec : Prop :=
  ∀ n, P14137273539707141968.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P2398575432976744712

`A008838(A145154(n+1))`
-/

namespace A337175.P2398575432976744712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A145154 (n + 1)).toNat

end

end A337175.P2398575432976744712

namespace A337175

/-- `A008838(A145154(n+1))` -/
def P2398575432976744712.Spec : Prop :=
  ∀ n, P2398575432976744712.a n = A337175 (n + 1)

end A337175

/-! ## A337175.P1672302646119531224

`A028391(A337174(n+1))`
-/

namespace A337175.P1672302646119531224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A337174 (n + 1)).toNat

end

end A337175.P1672302646119531224

namespace A337175

/-- `A028391(A337174(n+1))` -/
def P1672302646119531224.Spec : Prop :=
  ∀ n, P1672302646119531224.a n = A337175 (n + 1)

end A337175

/-!
# A337176: Number of pairs of divisors of n, (d1,d2), such that d1 <= d2 and d1*d2 < sqrt(n).

The programs for A337176, there is no canonical definition to state claims against.
-/

/-! ## A337176.P705417158985741575

`A339890(n+1)+A008618(A290480(n+1))`
-/

namespace A337176.P705417158985741575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (n + 1) + A008618 (A290480 (n + 1)).toNat

end

end A337176.P705417158985741575

/-! ## A337176.P2344594597935967919

`A347708(n+1)+A008618(A290480(n+1))`
-/

namespace A337176.P2344594597935967919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347708 (n + 1) + A008618 (A290480 (n + 1)).toNat

end

end A337176.P2344594597935967919

/-! ## A337176.P11372036668288840868

`A107846(3^A053470(n+1))+A004526(∏{e}[n+1, #+1])`
-/

namespace A337176.P11372036668288840868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A053470 (n + 1) : ℤ))).toNat + A004526 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A337176.P11372036668288840868

/-! ## A337176.P17838962349033366469

`ceil(A334097(A293216(n+1))/5)`
-/

namespace A337176.P17838962349033366469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334097 (A293216 (n + 1)).toNat : ℚ) / 5⌉

end

end A337176.P17838962349033366469

/-! ## A337176.P18210488197609265250

`A103921(A211263(2*n+3)^A303297(2*n+1))`
-/

namespace A337176.P18210488197609265250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (SequenceMachineLib.roundAway ((A211263 (2 * n + 3) : ℚ) ^ (A303297 (2 * n + 1) : ℤ))).toNat

end

end A337176.P18210488197609265250

/-!
# A337177: Sum of the divisors d of n such that d is not equal to n/d.

The programs for A337177, the canonical program `A337177.P864505517445255177` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337177 has offset 1).

The definition of A337177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337177.P864505517445255177

`∑{d}[n+1, #%xor(n, -#²)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337177

/-- `∑{d}[n+1, #%xor(n, -#²)]` -/
def P864505517445255177.Spec : Prop :=
  ∀ n, P864505517445255177.a n = A337177 (n + 1)

theorem P864505517445255177.correct : P864505517445255177.Spec := by
  intro n
  simp only [A337177, Nat.add_sub_cancel]

end A337177

/-! ## A337177.P2027954122320718610

`∑{d}[n+1, #]-A037213(n+1)`
-/

namespace A337177.P2027954122320718610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A037213 (n + 1)

end

end A337177.P2027954122320718610

namespace A337177

/-- `∑{d}[n+1, #]-A037213(n+1)` -/
def P2027954122320718610.Spec : Prop :=
  ∀ n, P2027954122320718610.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P4087409960989416507

`Δ[A160664(n)]-A037213(n+1)`
-/

namespace A337177.P4087409960989416507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A037213 (n + 1)

end

end A337177.P4087409960989416507

namespace A337177

/-- `Δ[A160664(n)]-A037213(n+1)` -/
def P4087409960989416507.Spec : Prop :=
  ∀ n, P4087409960989416507.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P17654500702513911051

`A238535(n+1)+A070039(n+1)`
-/

namespace A337177.P17654500702513911051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238535 (n + 1) + A070039 (n + 1)

end

end A337177.P17654500702513911051

namespace A337177

/-- `A238535(n+1)+A070039(n+1)` -/
def P17654500702513911051.Spec : Prop :=
  ∀ n, P17654500702513911051.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P8469730324832837897

`A000203(n+1)-A037213(n+1)`
-/

namespace A337177.P8469730324832837897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A037213 (n + 1)

end

end A337177.P8469730324832837897

namespace A337177

/-- `A000203(n+1)-A037213(n+1)` -/
def P8469730324832837897.Spec : Prop :=
  ∀ n, P8469730324832837897.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P3453529146738641382

`A074400(n+1)-A060866(n+1)`
-/

namespace A337177.P3453529146738641382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A060866 (n + 1)

end

end A337177.P3453529146738641382

namespace A337177

/-- `A074400(n+1)-A060866(n+1)` -/
def P3453529146738641382.Spec : Prop :=
  ∀ n, P3453529146738641382.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P1785680394538671885

`A079667(n+1)+2*A070039(n+1)`
-/

namespace A337177.P1785680394538671885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + 2 * A070039 (n + 1)

end

end A337177.P1785680394538671885

namespace A337177

/-- `A079667(n+1)+2*A070039(n+1)` -/
def P1785680394538671885.Spec : Prop :=
  ∀ n, P1785680394538671885.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P15439333351129545625

`A318460(n+1)+2*A318463(n+1)`
-/

namespace A337177.P15439333351129545625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318460 (n + 1) + 2 * A318463 (n + 1)

end

end A337177.P15439333351129545625

namespace A337177

/-- `A318460(n+1)+2*A318463(n+1)` -/
def P15439333351129545625.Spec : Prop :=
  ∀ n, P15439333351129545625.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P9403068201048290525

`2*A000203(n+1)-A060866(n+1)`
-/

namespace A337177.P9403068201048290525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A060866 (n + 1)

end

end A337177.P9403068201048290525

namespace A337177

/-- `2*A000203(n+1)-A060866(n+1)` -/
def P9403068201048290525.Spec : Prop :=
  ∀ n, P9403068201048290525.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P1147292528723287370

`2*A238535(n+1)-A079667(n+1)`
-/

namespace A337177.P1147292528723287370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238535 (n + 1) - A079667 (n + 1)

end

end A337177.P1147292528723287370

namespace A337177

/-- `2*A238535(n+1)-A079667(n+1)` -/
def P1147292528723287370.Spec : Prop :=
  ∀ n, P1147292528723287370.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P3361596040248384977

`∑{d}[n+1, A178450(#)*A337297((n+1)/#)]`
-/

namespace A337177.P3361596040248384977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178450 d * A337297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337177.P3361596040248384977

namespace A337177

/-- `∑{d}[n+1, A178450(#)*A337297((n+1)/#)]` -/
def P3361596040248384977.Spec : Prop :=
  ∀ n, P3361596040248384977.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P4675566313464354808

`A000203(n+1)-Δ[A000217(A000196(n))]`
-/

namespace A337177.P4675566313464354808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A337177.P4675566313464354808

namespace A337177

/-- `A000203(n+1)-Δ[A000217(A000196(n))]` -/
def P4675566313464354808.Spec : Prop :=
  ∀ n, P4675566313464354808.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P10516282467707809756

`A000203(n+1)+A070039(n+1)-A066839(n+1)`
-/

namespace A337177.P10516282467707809756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A070039 (n + 1) - A066839 (n + 1))

end

end A337177.P10516282467707809756

namespace A337177

/-- `A000203(n+1)+A070039(n+1)-A066839(n+1)` -/
def P10516282467707809756.Spec : Prop :=
  ∀ n, P10516282467707809756.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P5018128813147157872

`A117003(n+1)+A117004(n+1)-A060866(n+1)`
-/

namespace A337177.P5018128813147157872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117003 (n + 1) + (A117004 (n + 1) - A060866 (n + 1))

end

end A337177.P5018128813147157872

namespace A337177

/-- `A117003(n+1)+A117004(n+1)-A060866(n+1)` -/
def P5018128813147157872.Spec : Prop :=
  ∀ n, P5018128813147157872.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P909176106339703418

`A000203(n+1)+A318460(n+1)-A318462(n+1)`
-/

namespace A337177.P909176106339703418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A318460 (n + 1) - A318462 (n + 1))

end

end A337177.P909176106339703418

namespace A337177

/-- `A000203(n+1)+A318460(n+1)-A318462(n+1)` -/
def P909176106339703418.Spec : Prop :=
  ∀ n, P909176106339703418.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P4697829418598943731

`A318461(n+1)+A318463(n+1)-A037213(n+1)`
-/

namespace A337177.P4697829418598943731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318461 (n + 1) + (A318463 (n + 1) - A037213 (n + 1))

end

end A337177.P4697829418598943731

namespace A337177

/-- `A318461(n+1)+A318463(n+1)-A037213(n+1)` -/
def P4697829418598943731.Spec : Prop :=
  ∀ n, P4697829418598943731.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P11432854090780222834

`A060866(n+1)-A037213(n+1)-A037213(n+1)`
-/

namespace A337177.P11432854090780222834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - A037213 (n + 1) - A037213 (n + 1)

end

end A337177.P11432854090780222834

namespace A337177

/-- `A060866(n+1)-A037213(n+1)-A037213(n+1)` -/
def P11432854090780222834.Spec : Prop :=
  ∀ n, P11432854090780222834.a n = A337177 (n + 1)

end A337177

/-! ## A337177.P2765435256078038463

`A000203(n+1)-A224777(A000124(n))`
-/

namespace A337177.P2765435256078038463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A224777 (A000124 n).toNat

end

end A337177.P2765435256078038463

namespace A337177

/-- `A000203(n+1)-A224777(A000124(n))` -/
def P2765435256078038463.Spec : Prop :=
  ∀ n, P2765435256078038463.a n = A337177 (n + 1)

end A337177

/-!
# A337178: Number of biconnected geodetic graphs with n unlabeled vertices.

The programs for A337178, there is no canonical definition to state claims against.
-/

/-! ## A337178.P13803688079617870280

`A071461(A216566(n+1))`
-/

namespace A337178.P13803688079617870280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071461 (A216566 (n + 1)).toNat

end

end A337178.P13803688079617870280

/-! ## A337178.P5552330547457293133

`A001222(∑[A073357(n)]+1)`
-/

namespace A337178.P5552330547457293133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A337178.P5552330547457293133

/-! ## A337178.P12493653109690145762

`A001222(A115390(n+1)+1)`
-/

namespace A337178.P12493653109690145762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A115390 (n + 1) + 1).toNat

end

end A337178.P12493653109690145762

/-! ## A337178.P10415230180758921366

`∑{e}[A117334(A353834(n+1))+1, #]`
-/

namespace A337178.P10415230180758921366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117334 (A353834 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A337178.P10415230180758921366

/-!
# A337179: Number of geodetic graphs with n unlabeled vertices.

The programs for A337179, there is no canonical definition to state claims against.
-/

/-! ## A337179.P15014951474288941674

`A049125(n+1)-A076142(A351050(n))`
-/

namespace A337179.P15014951474288941674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049125 (n + 1) - A076142 (A351050 n).toNat

end

end A337179.P15014951474288941674

/-!
# A337180: a(n) = Sum_{d|n} d * gcd(d,n/d).

The programs for A337180, the canonical program `A337180.P4262326454073710627` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337180 has offset 1).

The definition of A337180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337180.P4262326454073710627

`∑{d}[n+1, gcd(n+1, #²)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337180

/-- `∑{d}[n+1, gcd(n+1, #²)]` -/
def P4262326454073710627.Spec : Prop :=
  ∀ n, (P4262326454073710627.a n : ℤ) = A337180 (n + 1)

theorem P4262326454073710627.correct : P4262326454073710627.Spec := by
  intro n
  simp only [A337180, Nat.add_sub_cancel]

end A337180

/-! ## A337180.P16914770448327394612

`∑{d}[n+1, #*gcd(#, (n+1)/#)]`
-/

namespace A337180.P16914770448327394612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ)))

end

end A337180.P16914770448327394612

namespace A337180

/-- `∑{d}[n+1, #*gcd(#, (n+1)/#)]` -/
def P16914770448327394612.Spec : Prop :=
  ∀ n, (P16914770448327394612.a n : ℤ) = A337180 (n + 1)

end A337180

/-! ## A337180.P7719372899376093955

`∑{d}[n+1, #*A055210((n+1)/#)]`
-/

namespace A337180.P7719372899376093955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A055210 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337180.P7719372899376093955

namespace A337180

/-- `∑{d}[n+1, #*A055210((n+1)/#)]` -/
def P7719372899376093955.Spec : Prop :=
  ∀ n, P7719372899376093955.a n = A337180 (n + 1)

end A337180

/-! ## A337180.P7028850361537370919

`∑{d}[n+1, A064840(#)*A158523((n+1)/#)]`
-/

namespace A337180.P7028850361537370919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064840 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337180.P7028850361537370919

namespace A337180

/-- `∑{d}[n+1, A064840(#)*A158523((n+1)/#)]` -/
def P7028850361537370919.Spec : Prop :=
  ∀ n, P7028850361537370919.a n = A337180 (n + 1)

end A337180

/-! ## A337180.P15865630622565442472

`∑{d}[n+1, A035316(#)*A254503((n+1)/#)]`
-/

namespace A337180.P15865630622565442472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035316 d * A254503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337180.P15865630622565442472

namespace A337180

/-- `∑{d}[n+1, A035316(#)*A254503((n+1)/#)]` -/
def P15865630622565442472.Spec : Prop :=
  ∀ n, P15865630622565442472.a n = A337180 (n + 1)

end A337180

/-! ## A337180.P5530135849964589499

`∑{d}[n+1, A076752(#)*A380162((n+1)/#)]`
-/

namespace A337180.P5530135849964589499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A380162 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337180.P5530135849964589499

namespace A337180

/-- `∑{d}[n+1, A076752(#)*A380162((n+1)/#)]` -/
def P5530135849964589499.Spec : Prop :=
  ∀ n, P5530135849964589499.a n = A337180 (n + 1)

end A337180

/-! ## A337180.P16007955489208332288

`∑{d}[n+1, A328485(#)*A358272((n+1)/#)]`
-/

namespace A337180.P16007955489208332288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328485 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337180.P16007955489208332288

namespace A337180

/-- `∑{d}[n+1, A328485(#)*A358272((n+1)/#)]` -/
def P16007955489208332288.Spec : Prop :=
  ∀ n, P16007955489208332288.a n = A337180 (n + 1)

end A337180

/-!
# A337184: Numbers divisible by their first digit and their last digit.

The programs for A337184, the canonical program `A337184.P5712740499508819035` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337184 has offset 1).

The definition of A337184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337184.P5712740499508819035

`∩[A034709(n+1), A034837(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337184

/-- `∩[A034709(n+1), A034837(n+1)]` -/
def P5712740499508819035.Spec : Prop :=
  ∀ n, (P5712740499508819035.a n : ℤ) = A337184 (n + 1)

theorem P5712740499508819035.correct : P5712740499508819035.Spec := by
  intro n
  simp only [A337184, Nat.add_sub_cancel]

end A337184

/-! ## A337184.P7492510255577600176

`eq[A000007(A067079(n)), A347323(n)]`
-/

namespace A337184.P7492510255577600176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A067079 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337184.P7492510255577600176

namespace A337184

/-- `eq[A000007(A067079(n)), A347323(n)]` -/
def P7492510255577600176.Spec : Prop :=
  ∀ n, (P7492510255577600176.a n : ℤ) = A337184 (n + 1)

end A337184

/-! ## A337184.P9170182282411835335

`A063527(n+1)%A000788(A086305(3*n+2))`
-/

namespace A337184.P9170182282411835335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063527 (n + 1)) (A000788 (A086305 (3 * n + 2)).toNat)

end

end A337184.P9170182282411835335

namespace A337184

/-- `A063527(n+1)%A000788(A086305(3*n+2))` -/
def P9170182282411835335.Spec : Prop :=
  ∀ n, P9170182282411835335.a n = A337184 (n + 1)

end A337184

/-!
# A337185: Composite numbers k such that A337183(k) is prime.

The programs for A337185, there is no canonical definition to state claims against.
-/

/-! ## A337185.P6129977908555958052

`eq[A236506(n+1), A327051(A153287(n))]`
-/

namespace A337185.P6129977908555958052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (A153287 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337185.P6129977908555958052

/-!
# A337186: a(n) = 1 + Sum_{k=0..n-2} binomial(n-2,k) * a(k).

The programs for A337186, there is no canonical definition to state claims against.
-/

/-! ## A337186.P6534934672623900694

`A007476(n)+A000994(round(sqrt(n²+1)))`
-/

namespace A337186.P6534934672623900694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007476 n + A000994 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A337186.P6534934672623900694

/-! ## A337186.P17821240796916327815

`A000994(n)+A007476(n)-A000007(n)`
-/

namespace A337186.P17821240796916327815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000994 n + (A007476 n - A000007 n)

end

end A337186.P17821240796916327815

/-! ## A337186.P13223617691811549033

`A000995(n)+A000994(n)*A036453(n+1)`
-/

namespace A337186.P13223617691811549033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000995 n + A000994 n * A036453 (n + 1)

end

end A337186.P13223617691811549033

/-! ## A337186.P13713571246937165454

`A007476(n)+A000994(n)-A250256(n+1)%2`
-/

namespace A337186.P13713571246937165454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007476 n + (A000994 n - Int.tmod (A250256 (n + 1)) 2)

end

end A337186.P13713571246937165454

/-! ## A337186.P13501643632688508392

`A210545(A212342(n+1))+A000994(A028310(n))`
-/

namespace A337186.P13501643632688508392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A212342 (n + 1)).toNat + A000994 (A028310 n).toNat

end

end A337186.P13501643632688508392

/-!
# A337187: a(n) = 1 + Sum_{k=0..n-2} binomial(n-2,k) * a(k) * a(n-k-2).

The programs for A337187, there is no canonical definition to state claims against.
-/

/-! ## A337187.P14593061571103787606

`∑[A008618(A067052(n+1)+3)]`
-/

namespace A337187.P14593061571103787606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A067052 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337187.P14593061571103787606

/-! ## A337187.P10816861182132712131

`A210357(A279552(n)-A027561(n))`
-/

namespace A337187.P10816861182132712131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A279552 n - A027561 n).toNat

end

end A337187.P10816861182132712131

/-! ## A337187.P4491027276272098412

`or(A048686(A081443(n)), A074909(n))`
-/

namespace A337187.P4491027276272098412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048686 (A081443 n).toNat) (A074909 n)

end

end A337187.P4491027276272098412

/-! ## A337187.P9360502270400064527

`or(A048686(A081443(n)), A214131(n))`
-/

namespace A337187.P9360502270400064527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048686 (A081443 n).toNat) (A214131 n)

end

end A337187.P9360502270400064527

/-!
# A337188: a(n) = determinant([a(n-1), a(n-2); a(n-4), a(n-3)]) for n >= 5, a(n) = n otherwise.

The programs for A337188, the canonical program `A337188.P16431536562909939381` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337188 has offset 1).

The definition of A337188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337188.P16431536562909939381

`a(n-1)*a(n-3)-a(n-2)*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337188

/-- `a(n-1)*a(n-3)-a(n-2)*a(n-4)` -/
def P16431536562909939381.Spec : Prop :=
  ∀ n, P16431536562909939381.a n = A337188 (n + 1)

theorem P16431536562909939381.correct : P16431536562909939381.Spec := by
  intro n
  simp only [A337188, Nat.add_sub_cancel]

end A337188

/-! ## A337188.P13449939795046887399

`∑[A347656(A346051(n))]`
-/

namespace A337188.P13449939795046887399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 (A346051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337188.P13449939795046887399

namespace A337188

/-- `∑[A347656(A346051(n))]` -/
def P13449939795046887399.Spec : Prop :=
  ∀ n, P13449939795046887399.a n = A337188 (n + 1)

end A337188

/-!
# A337190: Numbers k such that A337183(k) and k + A337183(k) are prime.

The programs for A337190, there is no canonical definition to state claims against.
-/

/-! ## A337190.P6195104634881934243

`A366846(2*n²+3)`
-/

namespace A337190.P6195104634881934243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366846 (2 * n ^ 2 + 3)

end

end A337190.P6195104634881934243

/-! ## A337190.P9828272665989762091

`A324705(A324703(n+1)-A244040(n))`
-/

namespace A337190.P9828272665989762091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324705 (A324703 (n + 1) - A244040 n).toNat

end

end A337190.P9828272665989762091

/-!
# A337191: A version of the Josephus problem: a(n) is the surviving integer under the skip-eliminate-eliminate version of the elimination process.

The programs for A337191, the canonical program `A337191.P12768306395332467431` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337191 has offset 1).

The definition of A337191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337191.P12768306395332467431

`(a(n-2)+2)%(n+1)+1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337191

/-- `(a(n-2)+2)%(n+1)+1` -/
def P12768306395332467431.Spec : Prop :=
  ∀ n, (P12768306395332467431.a n : ℤ) = A337191 (n + 1)

theorem P12768306395332467431.correct : P12768306395332467431.Spec := by
  intro n
  simp only [A337191, Nat.add_sub_cancel]

end A337191

/-! ## A337191.P11093170489795364383

`A002260(∑[n]+a(n-2)+3)` with `a(0)=1, a(1)=1`
-/

namespace A337191.P11093170489795364383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002260 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (a (n - 2) + 3)).toNat

end

end A337191.P11093170489795364383

namespace A337191

/-- `A002260(∑[n]+a(n-2)+3)` -/
def P11093170489795364383.Spec : Prop :=
  ∀ n, P11093170489795364383.a n = A337191 (n + 1)

end A337191

/-! ## A337191.P13752701003905598893

`A004736(A000096(n)-(a(n-2)+1))` with `a(0)=1, a(1)=1`
-/

namespace A337191.P13752701003905598893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004736 (A000096 n - (a (n - 2) + 1)).toNat

end

end A337191.P13752701003905598893

namespace A337191

/-- `A004736(A000096(n)-(a(n-2)+1))` -/
def P13752701003905598893.Spec : Prop :=
  ∀ n, P13752701003905598893.a n = A337191 (n + 1)

end A337191

/-! ## A337191.P492685626738920880

`A004736(A000096(n)-1-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A337191.P492685626738920880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004736 (A000096 n - 1 - a (n - 2)).toNat

end

end A337191.P492685626738920880

namespace A337191

/-- `A004736(A000096(n)-1-a(n-2))` -/
def P492685626738920880.Spec : Prop :=
  ∀ n, P492685626738920880.a n = A337191 (n + 1)

end A337191

/-! ## A337191.P15555892002110779583

`A383846(n+1)%(n+1)+1`
-/

namespace A337191.P15555892002110779583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383846 (n + 1)) (n + 1 : ℤ) + 1

end

end A337191.P15555892002110779583

namespace A337191

/-- `A383846(n+1)%(n+1)+1` -/
def P15555892002110779583.Spec : Prop :=
  ∀ n, P15555892002110779583.a n = A337191 (n + 1)

end A337191

/-! ## A337191.P3259768612407371750

`A381051(n+2)-1`
-/

namespace A337191.P3259768612407371750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381051 (n + 2) - 1

end

end A337191.P3259768612407371750

namespace A337191

/-- `A381051(n+2)-1` -/
def P3259768612407371750.Spec : Prop :=
  ∀ n, P3259768612407371750.a n = A337191 (n + 1)

end A337191

/-! ## A337191.P18276740005424988373

`A004483(A381051(n+2))`
-/

namespace A337191.P18276740005424988373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A381051 (n + 2)).toNat

end

end A337191.P18276740005424988373

namespace A337191

/-- `A004483(A381051(n+2))` -/
def P18276740005424988373.Spec : Prop :=
  ∀ n, P18276740005424988373.a n = A337191 (n + 1)

end A337191

/-! ## A337191.P14584087244968121537

`A383846(n+3)-2`
-/

namespace A337191.P14584087244968121537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383846 (n + 3) - 2

end

end A337191.P14584087244968121537

namespace A337191

/-- `A383846(n+3)-2` -/
def P14584087244968121537.Spec : Prop :=
  ∀ n, P14584087244968121537.a n = A337191 (n + 1)

end A337191

/-!
# A337193: Total number of inversions in all permutations of [n] where the descent set equals the subset of odd elements in [n-1].

The programs for A337193, there is no canonical definition to state claims against.
-/

/-! ## A337193.P8754564539109971697

`A390552(A363143(n+1))`
-/

namespace A337193.P8754564539109971697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390552 (A363143 (n + 1)).toNat

end

end A337193.P8754564539109971697

/-! ## A337193.P11041979382450062814

`A204326(n+1)+Δ[A233427(n)]`
-/

namespace A337193.P11041979382450062814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204326 (n + 1) + (f1 (n + 1) - f1 n)

end

end A337193.P11041979382450062814

/-! ## A337193.P12211876405412230448

`A004247(A005651(n)+A003415(n))`
-/

namespace A337193.P12211876405412230448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A005651 n + A003415 n).toNat

end

end A337193.P12211876405412230448

/-!
# A337194: a(n) = 1 + A000265(sigma(n)), where A000265 gives the odd part.

The programs for A337194, the canonical program `A337194.P3771449992322960062` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337194 has offset 1).

The definition of A337194 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336698, A337195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337194.P4155582429332426889

`1+A000265(A000203(n+1))`
-/

namespace A337194.P4155582429332426889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000265 (A000203 (n + 1)).toNat

end

end A337194.P4155582429332426889

namespace A337194

/-- `1+A000265(A000203(n+1))` -/
def P4155582429332426889.Spec : Prop :=
  ∀ n, P4155582429332426889.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P3771449992322960062

`A336698(n+1)*2^A337195(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A337194

/-- `A336698(n+1)*2^A337195(n+1)` -/
def P3771449992322960062.Spec : Prop :=
  ∀ n, P3771449992322960062.a n = (A337194 (n + 1) : ℚ)

end A337194

/-! ## A337194.P113757652041374277

`1+A161942(n+1)`
-/

namespace A337194.P113757652041374277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A161942 (n + 1)

end

end A337194.P113757652041374277

namespace A337194

/-- `1+A161942(n+1)` -/
def P113757652041374277.Spec : Prop :=
  ∀ n, P113757652041374277.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P2235352207774846540

`1+A000265(∑{d}[n+1, #])`
-/

namespace A337194.P2235352207774846540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000265 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A337194.P2235352207774846540

namespace A337194

/-- `1+A000265(∑{d}[n+1, #])` -/
def P2235352207774846540.Spec : Prop :=
  ∀ n, P2235352207774846540.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P3048080166826557834

`A000265(Δ[A160664(n)])+1`
-/

namespace A337194.P3048080166826557834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat + 1

end

end A337194.P3048080166826557834

namespace A337194

/-- `A000265(Δ[A160664(n)])+1` -/
def P3048080166826557834.Spec : Prop :=
  ∀ n, P3048080166826557834.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P10744407313384278686

`A000265(A074400(n+1))+1`
-/

namespace A337194.P10744407313384278686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A074400 (n + 1)).toNat + 1

end

end A337194.P10744407313384278686

namespace A337194

/-- `A000265(A074400(n+1))+1` -/
def P10744407313384278686.Spec : Prop :=
  ∀ n, P10744407313384278686.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P4724829861981490507

`A000265(sqrt(A072861(n+1)))+1`
-/

namespace A337194.P4724829861981490507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat + 1

end

end A337194.P4724829861981490507

namespace A337194

/-- `A000265(sqrt(A072861(n+1)))+1` -/
def P4724829861981490507.Spec : Prop :=
  ∀ n, P4724829861981490507.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P6799290032597542873

`A000265(A002659(n+1)+1)+1`
-/

namespace A337194.P6799290032597542873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002659 (n + 1) + 1).toNat + 1

end

end A337194.P6799290032597542873

namespace A337194

/-- `A000265(A002659(n+1)+1)+1` -/
def P6799290032597542873.Spec : Prop :=
  ∀ n, P6799290032597542873.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P13089962862580723499

`A000265(A088580(n+1)-1)+1`
-/

namespace A337194.P13089962862580723499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A088580 (n + 1) - 1).toNat + 1

end

end A337194.P13089962862580723499

namespace A337194

/-- `A000265(A088580(n+1)-1)+1` -/
def P13089962862580723499.Spec : Prop :=
  ∀ n, P13089962862580723499.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P13139631173266934832

`A171435(2*A000203(n+1))+1`
-/

namespace A337194.P13139631173266934832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A000203 (n + 1)).toNat + 1

end

end A337194.P13139631173266934832

namespace A337194

/-- `A171435(2*A000203(n+1))+1` -/
def P13139631173266934832.Spec : Prop :=
  ∀ n, P13139631173266934832.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P9621326845656652028

`A000265(A245092(2*n+1))+1`
-/

namespace A337194.P9621326845656652028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A245092 (2 * n + 1)).toNat + 1

end

end A337194.P9621326845656652028

namespace A337194

/-- `A000265(A245092(2*n+1))+1` -/
def P9621326845656652028.Spec : Prop :=
  ∀ n, P9621326845656652028.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P14282678652063667103

`A000265(A239050(n+1)/2)+1`
-/

namespace A337194.P14282678652063667103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2)).toNat + 1

end

end A337194.P14282678652063667103

namespace A337194

/-- `A000265(A239050(n+1)/2)+1` -/
def P14282678652063667103.Spec : Prop :=
  ∀ n, P14282678652063667103.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P10059886282327123986

`A000265(A001065(n+1)+n+1)+1`
-/

namespace A337194.P10059886282327123986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001065 (n + 1) + (n + 1 : ℤ)).toNat + 1

end

end A337194.P10059886282327123986

namespace A337194

/-- `A000265(A001065(n+1)+n+1)+1` -/
def P10059886282327123986.Spec : Prop :=
  ∀ n, P10059886282327123986.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P8082203615575099565

`A342671(n+1)*A348992(n+1)+1`
-/

namespace A337194.P8082203615575099565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (n + 1) * A348992 (n + 1) + 1

end

end A337194.P8082203615575099565

namespace A337194

/-- `A342671(n+1)*A348992(n+1)+1` -/
def P8082203615575099565.Spec : Prop :=
  ∀ n, P8082203615575099565.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P11600411626850379413

`A336457(n+1)*A379473(n+1)+1`
-/

namespace A337194.P11600411626850379413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336457 (n + 1) * A379473 (n + 1) + 1

end

end A337194.P11600411626850379413

namespace A337194

/-- `A336457(n+1)*A379473(n+1)+1` -/
def P11600411626850379413.Spec : Prop :=
  ∀ n, P11600411626850379413.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P15552968129557905341

`A000203(n+1)/A082903(n+1)+1`
-/

namespace A337194.P15552968129557905341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A082903 (n + 1) : ℚ) + 1

end

end A337194.P15552968129557905341

namespace A337194

/-- `A000203(n+1)/A082903(n+1)+1` -/
def P15552968129557905341.Spec : Prop :=
  ∀ n, P15552968129557905341.a n = (A337194 (n + 1) : ℚ)

end A337194

/-! ## A337194.P3507573392224706227

`lcm(A348992(n+1), A351544(n+1))+1`
-/

namespace A337194.P3507573392224706227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A348992 (n + 1)) (A351544 (n + 1)) + 1

end

end A337194.P3507573392224706227

namespace A337194

/-- `lcm(A348992(n+1), A351544(n+1))+1` -/
def P3507573392224706227.Spec : Prop :=
  ∀ n, (P3507573392224706227.a n : ℤ) = A337194 (n + 1)

end A337194

/-! ## A337194.P11129926200674847355

`A302044(2*A000203(n+1))+1`
-/

namespace A337194.P11129926200674847355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * A000203 (n + 1)).toNat + 1

end

end A337194.P11129926200674847355

namespace A337194

/-- `A302044(2*A000203(n+1))+1` -/
def P11129926200674847355.Spec : Prop :=
  ∀ n, P11129926200674847355.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P10248821893421060180

`A000265(A239050(n+1))+1`
-/

namespace A337194.P10248821893421060180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A239050 (n + 1)).toNat + 1

end

end A337194.P10248821893421060180

namespace A337194

/-- `A000265(A239050(n+1))+1` -/
def P10248821893421060180.Spec : Prop :=
  ∀ n, P10248821893421060180.a n = A337194 (n + 1)

end A337194

/-! ## A337194.P12673409587851397336

`A000265(A319528(n+1)/2)+1`
-/

namespace A337194.P12673409587851397336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 2)).toNat + 1

end

end A337194.P12673409587851397336

namespace A337194

/-- `A000265(A319528(n+1)/2)+1` -/
def P12673409587851397336.Spec : Prop :=
  ∀ n, P12673409587851397336.a n = A337194 (n + 1)

end A337194

/-!
# A337195: The 2-adic valuation of 1+A000265(sigma(n)), where A000265 gives the odd part.

The programs for A337195, the canonical program `A337195.P206722843149984959` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337195 has offset 1).

The definition of A337195 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337195.P3429255954556558484

`A007814(A337194(n+1))`
-/

namespace A337195.P3429255954556558484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A337194 (n + 1)).toNat

end

end A337195.P3429255954556558484

namespace A337195

/-- `A007814(A337194(n+1))` -/
def P3429255954556558484.Spec : Prop :=
  ∀ n, P3429255954556558484.a n = A337195 (n + 1)

end A337195

/-! ## A337195.P206722843149984959

`A007814(1+A000265(A000203(n+1)))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A337195

/-- `A007814(1+A000265(A000203(n+1)))` -/
def P206722843149984959.Spec : Prop :=
  ∀ n, P206722843149984959.a n = A337195 (n + 1)

theorem P206722843149984959.correct : P206722843149984959.Spec := by
  intro n
  simp only [A337195, Nat.add_sub_cancel]

end A337195

/-! ## A337195.P6694285820487742828

`val(A161942(n+1)+1, 2)`
-/

namespace A337195.P6694285820487742828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A161942 (n + 1) + 1).toNat 2

end

end A337195.P6694285820487742828

namespace A337195

/-- `val(A161942(n+1)+1, 2)` -/
def P6694285820487742828.Spec : Prop :=
  ∀ n, (P6694285820487742828.a n : ℤ) = A337195 (n + 1)

end A337195

/-! ## A337195.P9072276756863858494

`val(A000265(∑{d}[n+1, #])+1, 2)`
-/

namespace A337195.P9072276756863858494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000265 (∑ d ∈ Nat.divisors (f1 n), d) + 1).toNat 2

end

end A337195.P9072276756863858494

namespace A337195

/-- `val(A000265(∑{d}[n+1, #])+1, 2)` -/
def P9072276756863858494.Spec : Prop :=
  ∀ n, (P9072276756863858494.a n : ℤ) = A337195 (n + 1)

end A337195

/-! ## A337195.P2456344035906912562

`A336842(A350073(n+1))`
-/

namespace A337195.P2456344035906912562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336842 (A350073 (n + 1)).toNat

end

end A337195.P2456344035906912562

namespace A337195

/-- `A336842(A350073(n+1))` -/
def P2456344035906912562.Spec : Prop :=
  ∀ n, P2456344035906912562.a n = A337195 (n + 1)

end A337195

/-! ## A337195.P9003032853136455290

`val(A000265(A245092(2*n+1))+1, 2)`
-/

namespace A337195.P9003032853136455290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000265 (A245092 (2 * n + 1)).toNat + 1).toNat 2

end

end A337195.P9003032853136455290

namespace A337195

/-- `val(A000265(A245092(2*n+1))+1, 2)` -/
def P9003032853136455290.Spec : Prop :=
  ∀ n, (P9003032853136455290.a n : ℤ) = A337195 (n + 1)

end A337195

/-! ## A337195.P10874821039936615493

`A175548(n+1)+1-A337199(n+1)`
-/

namespace A337195.P10874821039936615493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175548 (n + 1) + (1 - A337199 (n + 1))

end

end A337195.P10874821039936615493

namespace A337195

/-- `A175548(n+1)+1-A337199(n+1)` -/
def P10874821039936615493.Spec : Prop :=
  ∀ n, P10874821039936615493.a n = A337195 (n + 1)

end A337195

/-! ## A337195.P8612464405168309751

`A336126(2*A000203(n+1))/2`
-/

namespace A337195.P8612464405168309751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336126 (2 * A000203 (n + 1)).toNat : ℚ) / 2

end

end A337195.P8612464405168309751

namespace A337195

/-- `A336126(2*A000203(n+1))/2` -/
def P8612464405168309751.Spec : Prop :=
  ∀ n, P8612464405168309751.a n = (A337195 (n + 1) : ℚ)

end A337195

/-! ## A337195.P10396161411955720575

`A001511((A161942(n+1)+1)/2)`
-/

namespace A337195.P10396161411955720575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A161942 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A337195.P10396161411955720575

namespace A337195

/-- `A001511((A161942(n+1)+1)/2)` -/
def P10396161411955720575.Spec : Prop :=
  ∀ n, P10396161411955720575.a n = A337195 (n + 1)

end A337195

/-! ## A337195.P2557160830086094599

`A089309(A161942(n+1))`
-/

namespace A337195.P2557160830086094599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A161942 (n + 1)).toNat

end

end A337195.P2557160830086094599

namespace A337195

/-- `A089309(A161942(n+1))` -/
def P2557160830086094599.Spec : Prop :=
  ∀ n, P2557160830086094599.a n = A337195 (n + 1)

end A337195

/-! ## A337195.P1520582908523822915

`A089309(∑{d}[n+1, #])`
-/

namespace A337195.P1520582908523822915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A337195.P1520582908523822915

namespace A337195

/-- `A089309(∑{d}[n+1, #])` -/
def P1520582908523822915.Spec : Prop :=
  ∀ n, P1520582908523822915.a n = A337195 (n + 1)

end A337195

/-! ## A337195.P15693089939668047186

`A089309(A000203(n+1))`
-/

namespace A337195.P15693089939668047186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A000203 (n + 1)).toNat

end

end A337195.P15693089939668047186

namespace A337195

/-- `A089309(A000203(n+1))` -/
def P15693089939668047186.Spec : Prop :=
  ∀ n, P15693089939668047186.a n = A337195 (n + 1)

end A337195

/-! ## A337195.P7464023801399916505

`A089309(A074400(n+1)/2)`
-/

namespace A337195.P7464023801399916505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A337195.P7464023801399916505

namespace A337195

/-- `A089309(A074400(n+1)/2)` -/
def P7464023801399916505.Spec : Prop :=
  ∀ n, P7464023801399916505.a n = A337195 (n + 1)

end A337195

/-! ## A337195.P6766995884455825185

`A089309(A001065(n+1)+1+n)`
-/

namespace A337195.P6766995884455825185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A337195.P6766995884455825185

namespace A337195

/-- `A089309(A001065(n+1)+1+n)` -/
def P6766995884455825185.Spec : Prop :=
  ∀ n, P6766995884455825185.a n = A337195 (n + 1)

end A337195

/-! ## A337195.P8737545895460179405

`A089309(A000593(n+1)*A038712(n+1))`
-/

namespace A337195.P8737545895460179405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A000593 (n + 1) * A038712 (n + 1)).toNat

end

end A337195.P8737545895460179405

namespace A337195

/-- `A089309(A000593(n+1)*A038712(n+1))` -/
def P8737545895460179405.Spec : Prop :=
  ∀ n, P8737545895460179405.a n = A337195 (n + 1)

end A337195

/-! ## A337195.P6972891373248992708

`A007814(A161942(n+1)+1)`
-/

namespace A337195.P6972891373248992708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A161942 (n + 1) + 1).toNat

end

end A337195.P6972891373248992708

namespace A337195

/-- `A007814(A161942(n+1)+1)` -/
def P6972891373248992708.Spec : Prop :=
  ∀ n, P6972891373248992708.a n = A337195 (n + 1)

end A337195

/-! ## A337195.P13999492983315222018

`A050603(A161942(n+1)-1)`
-/

namespace A337195.P13999492983315222018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A161942 (n + 1) - 1).toNat

end

end A337195.P13999492983315222018

namespace A337195

/-- `A050603(A161942(n+1)-1)` -/
def P13999492983315222018.Spec : Prop :=
  ∀ n, P13999492983315222018.a n = A337195 (n + 1)

end A337195

/-! ## A337195.P2110041819882659698

`A001511(A161942(n+1)+1)-1`
-/

namespace A337195.P2110041819882659698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A161942 (n + 1) + 1).toNat - 1

end

end A337195.P2110041819882659698

namespace A337195

/-- `A001511(A161942(n+1)+1)-1` -/
def P2110041819882659698.Spec : Prop :=
  ∀ n, P2110041819882659698.a n = A337195 (n + 1)

end A337195

/-!
# A337196: The 3-adic valuation of 1+A000265(sigma(n)), where A000265 gives the odd part.

The programs for A337196, the canonical program `A337196.P4920485684181611942` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337196 has offset 1).

The definition of A337196 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336698, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337196.P4920485684181611942

`A007949(A336698(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A337196

/-- `A007949(A336698(n+1))` -/
def P4920485684181611942.Spec : Prop :=
  ∀ n, P4920485684181611942.a n = A337196 (n + 1)

theorem P4920485684181611942.correct : P4920485684181611942.Spec := by
  intro n
  simp only [A337196, Nat.add_sub_cancel]

end A337196

/-! ## A337196.P13582938970830637379

`A007949(A337194(n+1))`
-/

namespace A337196.P13582938970830637379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A337194 (n + 1)).toNat

end

end A337196.P13582938970830637379

namespace A337196

/-- `A007949(A337194(n+1))` -/
def P13582938970830637379.Spec : Prop :=
  ∀ n, P13582938970830637379.a n = A337196 (n + 1)

end A337196

/-! ## A337196.P12053087139958618686

`A007949(1+A000265(A000203(n+1)))`
-/

namespace A337196.P12053087139958618686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (1 + A000265 (A000203 (n + 1)).toNat).toNat

end

end A337196.P12053087139958618686

namespace A337196

/-- `A007949(1+A000265(A000203(n+1)))` -/
def P12053087139958618686.Spec : Prop :=
  ∀ n, P12053087139958618686.a n = A337196 (n + 1)

end A337196

/-! ## A337196.P13887312146318902341

`val(A161942(n+1)+1, 3)`
-/

namespace A337196.P13887312146318902341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A161942 (n + 1) + 1).toNat 3

end

end A337196.P13887312146318902341

namespace A337196

/-- `val(A161942(n+1)+1, 3)` -/
def P13887312146318902341.Spec : Prop :=
  ∀ n, (P13887312146318902341.a n : ℤ) = A337196 (n + 1)

end A337196

/-! ## A337196.P4007475171941153059

`val(A000265(∑{d}[n+1, #])+1, 3)`
-/

namespace A337196.P4007475171941153059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000265 (∑ d ∈ Nat.divisors (f1 n), d) + 1).toNat 3

end

end A337196.P4007475171941153059

namespace A337196

/-- `val(A000265(∑{d}[n+1, #])+1, 3)` -/
def P4007475171941153059.Spec : Prop :=
  ∀ n, (P4007475171941153059.a n : ℤ) = A337196 (n + 1)

end A337196

/-! ## A337196.P15804845316272003598

`A007949((A161942(n+1)+1)/2)`
-/

namespace A337196.P15804845316272003598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A161942 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A337196.P15804845316272003598

namespace A337196

/-- `A007949((A161942(n+1)+1)/2)` -/
def P15804845316272003598.Spec : Prop :=
  ∀ n, P15804845316272003598.a n = A337196 (n + 1)

end A337196

/-! ## A337196.P16196268025407772329

`A007949(A161942(n+1)+1)`
-/

namespace A337196.P16196268025407772329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A161942 (n + 1) + 1).toNat

end

end A337196.P16196268025407772329

namespace A337196

/-- `A007949(A161942(n+1)+1)` -/
def P16196268025407772329.Spec : Prop :=
  ∀ n, P16196268025407772329.a n = A337196 (n + 1)

end A337196

/-! ## A337196.P5415218450158671510

`A007949(A000265(∑{d}[n+1, #])+1)`
-/

namespace A337196.P5415218450158671510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A000265 (∑ d ∈ Nat.divisors (f1 n), d) + 1).toNat

end

end A337196.P5415218450158671510

namespace A337196

/-- `A007949(A000265(∑{d}[n+1, #])+1)` -/
def P5415218450158671510.Spec : Prop :=
  ∀ n, P5415218450158671510.a n = A337196 (n + 1)

end A337196

/-! ## A337196.P11198701017824430202

`A007949(A354096(n+1)+1)`
-/

namespace A337196.P11198701017824430202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A354096 (n + 1) + 1).toNat

end

end A337196.P11198701017824430202

namespace A337196

/-- `A007949(A354096(n+1)+1)` -/
def P11198701017824430202.Spec : Prop :=
  ∀ n, P11198701017824430202.a n = A337196 (n + 1)

end A337196

/-!
# A337197: Position of the first occurrence of n in A337196, where A337196(x) is the 3-adic valuation of 1+A000265(sigma(x)).

The programs for A337197, there is no canonical definition to state claims against.
-/

/-! ## A337197.P3502347110154027296

`A111698(A036545(n))`
-/

namespace A337197.P3502347110154027296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111698 (A036545 n).toNat

end

end A337197.P3502347110154027296

/-!
# A337198: Number of distinct prime factors in A337194(n) = 1+A000265(sigma(n)), where A000265(k) gives the odd part of k.

The programs for A337198, the canonical program `A337198.P321523627652401232` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337198 has offset 1).

The definition of A337198 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A337194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337198.P321523627652401232

`A001221(A337194(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A337198

/-- `A001221(A337194(n+1))` -/
def P321523627652401232.Spec : Prop :=
  ∀ n, P321523627652401232.a n = A337198 (n + 1)

theorem P321523627652401232.correct : P321523627652401232.Spec := by
  intro n
  simp only [A337198, Nat.add_sub_cancel]

end A337198

/-! ## A337198.P15333623557094013781

`1+A001221(A336698(n+1))`
-/

namespace A337198.P15333623557094013781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001221 (A336698 (n + 1)).toNat

end

end A337198.P15333623557094013781

namespace A337198

/-- `1+A001221(A336698(n+1))` -/
def P15333623557094013781.Spec : Prop :=
  ∀ n, P15333623557094013781.a n = A337198 (n + 1)

end A337198

/-! ## A337198.P12621453749647953224

`A001221(A161942(n+1)+1)`
-/

namespace A337198.P12621453749647953224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A161942 (n + 1) + 1).toNat

end

end A337198.P12621453749647953224

namespace A337198

/-- `A001221(A161942(n+1)+1)` -/
def P12621453749647953224.Spec : Prop :=
  ∀ n, P12621453749647953224.a n = A337198 (n + 1)

end A337198

/-! ## A337198.P5865419627849677764

`A001222(∏{p}[A337194(n+1), #])`
-/

namespace A337198.P5865419627849677764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A337198.P5865419627849677764

namespace A337198

/-- `A001222(∏{p}[A337194(n+1), #])` -/
def P5865419627849677764.Spec : Prop :=
  ∀ n, P5865419627849677764.a n = A337198 (n + 1)

end A337198

/-! ## A337198.P2897146022824745240

`A001221(A000265(A001065(n+1)+n+1)+1)`
-/

namespace A337198.P2897146022824745240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000265 (A001065 (n + 1) + (n : ℤ) + 1).toNat + 1).toNat

end

end A337198.P2897146022824745240

namespace A337198

/-- `A001221(A000265(A001065(n+1)+n+1)+1)` -/
def P2897146022824745240.Spec : Prop :=
  ∀ n, P2897146022824745240.a n = A337198 (n + 1)

end A337198

/-! ## A337198.P5449069604592476097

`A001221(A106247(A161942(n+1)))`
-/

namespace A337198.P5449069604592476097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A106247 (A161942 (n + 1)).toNat).toNat

end

end A337198.P5449069604592476097

namespace A337198

/-- `A001221(A106247(A161942(n+1)))` -/
def P5449069604592476097.Spec : Prop :=
  ∀ n, P5449069604592476097.a n = A337198 (n + 1)

end A337198

/-! ## A337198.P14725593629125708707

`A332900(A337201(n+1)²²)`
-/

namespace A337198.P14725593629125708707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332900 ((A337201 (n + 1) ^ 2) ^ 2).toNat

end

end A337198.P14725593629125708707

namespace A337198

/-- `A332900(A337201(n+1)²²)` -/
def P14725593629125708707.Spec : Prop :=
  ∀ n, P14725593629125708707.a n = A337198 (n + 1)

end A337198

/-! ## A337198.P11063155557427399440

`A293810(∏{p}[A337194(n+1), A078615(#)])`
-/

namespace A337198.P11063155557427399440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A078615 p).toNat

end

end A337198.P11063155557427399440

namespace A337198

/-- `A293810(∏{p}[A337194(n+1), A078615(#)])` -/
def P11063155557427399440.Spec : Prop :=
  ∀ n, P11063155557427399440.a n = A337198 (n + 1)

end A337198

/-! ## A337198.P9212750112040286340

`A020639(A337200(n+1)!)`
-/

namespace A337198.P9212750112040286340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A337200 (n + 1)).toNat)

end

end A337198.P9212750112040286340

namespace A337198

/-- `A020639(A337200(n+1)!)` -/
def P9212750112040286340.Spec : Prop :=
  ∀ n, P9212750112040286340.a n = A337198 (n + 1)

end A337198

/-! ## A337198.P15951535801237661113

`A020639(A337201(n+1)!)`
-/

namespace A337198.P15951535801237661113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A337201 (n + 1)).toNat)

end

end A337198.P15951535801237661113

namespace A337198

/-- `A020639(A337201(n+1)!)` -/
def P15951535801237661113.Spec : Prop :=
  ∀ n, P15951535801237661113.a n = A337198 (n + 1)

end A337198

/-!
# A337199: Binary weight of A337194(n) = 1+A000265(sigma(n)), where A000265(k) gives the odd part of k.

The programs for A337199, the canonical program `A337199.P10254756718090732939` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337199 has offset 1).

The definition of A337199 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336698, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337199.P10254756718090732939

`A000120(A336698(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A337199

/-- `A000120(A336698(n+1))` -/
def P10254756718090732939.Spec : Prop :=
  ∀ n, P10254756718090732939.a n = A337199 (n + 1)

theorem P10254756718090732939.correct : P10254756718090732939.Spec := by
  intro n
  simp only [A337199, Nat.add_sub_cancel]

end A337199

/-! ## A337199.P17794310935852351111

`A000120(A337194(n+1))`
-/

namespace A337199.P17794310935852351111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A337194 (n + 1)).toNat

end

end A337199.P17794310935852351111

namespace A337199

/-- `A000120(A337194(n+1))` -/
def P17794310935852351111.Spec : Prop :=
  ∀ n, P17794310935852351111.a n = A337199 (n + 1)

end A337199

/-! ## A337199.P991407738968672034

`A000120(A000265(A161942(n+1)+1))`
-/

namespace A337199.P991407738968672034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000265 (A161942 (n + 1) + 1).toNat).toNat

end

end A337199.P991407738968672034

namespace A337199

/-- `A000120(A000265(A161942(n+1)+1))` -/
def P991407738968672034.Spec : Prop :=
  ∀ n, P991407738968672034.a n = A337199 (n + 1)

end A337199

/-! ## A337199.P17851753093947903174

`A000120((A161942(n+1)+1)/2)`
-/

namespace A337199.P17851753093947903174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A161942 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A337199.P17851753093947903174

namespace A337199

/-- `A000120((A161942(n+1)+1)/2)` -/
def P17851753093947903174.Spec : Prop :=
  ∀ n, P17851753093947903174.a n = A337199 (n + 1)

end A337199

/-! ## A337199.P8139329888378806687

`A000120(A161942(n+1)+1)`
-/

namespace A337199.P8139329888378806687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A161942 (n + 1) + 1).toNat

end

end A337199.P8139329888378806687

namespace A337199

/-- `A000120(A161942(n+1)+1)` -/
def P8139329888378806687.Spec : Prop :=
  ∀ n, P8139329888378806687.a n = A337199 (n + 1)

end A337199

/-! ## A337199.P5764097313322206702

`A048881(A161942(n+1)+1)`
-/

namespace A337199.P5764097313322206702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A161942 (n + 1) + 1).toNat

end

end A337199.P5764097313322206702

namespace A337199

/-- `A048881(A161942(n+1)+1)` -/
def P5764097313322206702.Spec : Prop :=
  ∀ n, P5764097313322206702.a n = A337199 (n + 1)

end A337199

