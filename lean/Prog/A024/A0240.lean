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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A024000: a(n) = 1 - n.

The programs for A024000, the canonical program `A024000.P8748414335487061084` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024000 has offset 0).

The definition of A024000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n` (program `A024000.P8748414335487061084`, by `A024000.P8748414335487061084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024000.P8748414335487061084

`1-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024000

/-- `1-n` -/
def P8748414335487061084.Spec : Prop :=
  ∀ n, P8748414335487061084.a n = A024000 n

theorem P8748414335487061084.correct : P8748414335487061084.Spec := by
  intro n
  simp only [A024000]

end A024000

/-!
# A024001: a(n) = 1 - n^3.

The programs for A024001, the canonical program `A024001.P5407789940977000596` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024001 has offset 0).

The definition of A024001 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n^3` (program `A024001.P5407789940977000596`, by `A024001.P5407789940977000596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024001.P5407789940977000596

`1-n^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024001

/-- `1-n^3` -/
def P5407789940977000596.Spec : Prop :=
  ∀ n, P5407789940977000596.a n = A024001 n

theorem P5407789940977000596.correct : P5407789940977000596.Spec := by
  intro n
  simp only [A024001]

end A024001

/-!
# A024002: a(n) = 1 - n^4.

The programs for A024002, the canonical program `A024002.P17733923598411083701` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024002 has offset 0).

The definition of A024002 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n^4` (program `A024002.P17733923598411083701`, by `A024002.P17733923598411083701.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024002.P17733923598411083701

`1-n^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024002

/-- `1-n^4` -/
def P17733923598411083701.Spec : Prop :=
  ∀ n, P17733923598411083701.a n = A024002 n

theorem P17733923598411083701.correct : P17733923598411083701.Spec := by
  intro n
  simp only [A024002]

end A024002

/-!
# A024003: a(n) = 1 - n^5.

The programs for A024003, the canonical program `A024003.P9184774219160180946` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024003 has offset 0).

The definition of A024003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n^5` (program `A024003.P9184774219160180946`, by `A024003.P9184774219160180946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024003.P9184774219160180946

`1-n^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024003

/-- `1-n^5` -/
def P9184774219160180946.Spec : Prop :=
  ∀ n, P9184774219160180946.a n = A024003 n

theorem P9184774219160180946.correct : P9184774219160180946.Spec := by
  intro n
  simp only [A024003]

end A024003

/-!
# A024004: a(n) = 1 - n^6.

The programs for A024004, the canonical program `A024004.P15699754415325832181` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024004 has offset 0).

The definition of A024004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n^6` (program `A024004.P15699754415325832181`, by `A024004.P15699754415325832181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024004.P15699754415325832181

`1-n^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024004

/-- `1-n^6` -/
def P15699754415325832181.Spec : Prop :=
  ∀ n, P15699754415325832181.a n = A024004 n

theorem P15699754415325832181.correct : P15699754415325832181.Spec := by
  intro n
  simp only [A024004]

end A024004

/-!
# A024005: a(n) = 1 - n^7.

The programs for A024005, the canonical program `A024005.P8923362675459539356` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024005 has offset 0).

The definition of A024005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n^7` (program `A024005.P8923362675459539356`, by `A024005.P8923362675459539356.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024005.P8923362675459539356

`1-n^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024005

/-- `1-n^7` -/
def P8923362675459539356.Spec : Prop :=
  ∀ n, P8923362675459539356.a n = A024005 n

theorem P8923362675459539356.correct : P8923362675459539356.Spec := by
  intro n
  simp only [A024005]

end A024005

/-!
# A024006: a(n) = 1 - n^8.

The programs for A024006, the canonical program `A024006.P17069346260229546843` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024006 has offset 0).

The definition of A024006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n^8` (program `A024006.P17069346260229546843`, by `A024006.P17069346260229546843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024006.P17069346260229546843

`1-n^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024006

/-- `1-n^8` -/
def P17069346260229546843.Spec : Prop :=
  ∀ n, P17069346260229546843.a n = A024006 n

theorem P17069346260229546843.correct : P17069346260229546843.Spec := by
  intro n
  simp only [A024006]

end A024006

/-!
# A024007: a(n) = 1 - n^9.

The programs for A024007, the canonical program `A024007.P2019830728715847895` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024007 has offset 0).

The definition of A024007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n^9` (program `A024007.P2019830728715847895`, by `A024007.P2019830728715847895.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024007.P2019830728715847895

`1-n^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024007

/-- `1-n^9` -/
def P2019830728715847895.Spec : Prop :=
  ∀ n, P2019830728715847895.a n = A024007 n

theorem P2019830728715847895.correct : P2019830728715847895.Spec := by
  intro n
  simp only [A024007]

end A024007

/-!
# A024008: a(n) = 1 - n^10.

The programs for A024008, the canonical program `A024008.P2340546623145863810` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024008 has offset 0).

The definition of A024008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n^10` (program `A024008.P2340546623145863810`, by `A024008.P2340546623145863810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024008.P2340546623145863810

`1-n^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024008

/-- `1-n^10` -/
def P2340546623145863810.Spec : Prop :=
  ∀ n, P2340546623145863810.a n = A024008 n

theorem P2340546623145863810.correct : P2340546623145863810.Spec := by
  intro n
  simp only [A024008]

end A024008

/-!
# A024009: a(n) = 1 - n^11.

The programs for A024009, the canonical program `A024009.P3068937921533904823` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024009 has offset 0).

The definition of A024009 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n^11` (program `A024009.P3068937921533904823`, by `A024009.P3068937921533904823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024009.P3068937921533904823

`1-n^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024009

/-- `1-n^11` -/
def P3068937921533904823.Spec : Prop :=
  ∀ n, P3068937921533904823.a n = A024009 n

theorem P3068937921533904823.correct : P3068937921533904823.Spec := by
  intro n
  simp only [A024009]

end A024009

/-!
# A024010: a(n) = 1 - n^12.

The programs for A024010, the canonical program `A024010.P1201866457356709084` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024010 has offset 0).

The definition of A024010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n^12` (program `A024010.P1201866457356709084`, by `A024010.P1201866457356709084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024010.P1201866457356709084

`1-n^12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024010

/-- `1-n^12` -/
def P1201866457356709084.Spec : Prop :=
  ∀ n, P1201866457356709084.a n = A024010 n

theorem P1201866457356709084.correct : P1201866457356709084.Spec := by
  intro n
  simp only [A024010]

end A024010

/-!
# A024012: a(n) = 2^n - n^2.

The programs for A024012, the canonical program `A024012.P5170461396986632698` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024012 has offset 0).

The definition of A024012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n²` (program `A024012.P5170461396986632698`, by `A024012.P5170461396986632698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024012.P5170461396986632698

`2^n-n²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024012

/-- `2^n-n²` -/
def P5170461396986632698.Spec : Prop :=
  ∀ n, P5170461396986632698.a n = A024012 n

theorem P5170461396986632698.correct : P5170461396986632698.Spec := by
  intro n
  simp only [A024012]

end A024012

/-! ## A024012.P3903892049843382081

`∑[2*(a(n-1)+n)-5]` with `a(0)=1, a(1)=0`
-/

namespace A024012.P3903892049843382081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * (f1 (n - 1) + (n : ℤ)) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024012.P3903892049843382081

namespace A024012

/-- `∑[2*(a(n-1)+n)-5]` -/
def P3903892049843382081.Spec : Prop :=
  ∀ n, P3903892049843382081.a n = A024012 n

end A024012

/-! ## A024012.P4649261569963674831

`floor(∑[2*a(n-1)]-n²)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A024012.P4649261569963674831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A024012.P4649261569963674831

namespace A024012

/-- `floor(∑[2*a(n-1)]-n²)` -/
def P4649261569963674831.Spec : Prop :=
  ∀ n, P4649261569963674831.a n = A024012 n

end A024012

/-! ## A024012.P13457839214459234224

`∑[∑[∑[2*a(n-1)]]]` with `a(0)=1, a(1)=-2, a(2)=0, a(3)=1`
-/

namespace A024012.P13457839214459234224
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0, 1] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024012.P13457839214459234224

namespace A024012

/-- `∑[∑[∑[2*a(n-1)]]]` -/
def P13457839214459234224.Spec : Prop :=
  ∀ n, P13457839214459234224.a n = A024012 n

end A024012

/-! ## A024012.P16570300292675486529

`∑[floor(2^(n-1))-or(1, 2*n)+2]`
-/

namespace A024012.P16570300292675486529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - (Nat.lor 1 (2 * n) : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024012.P16570300292675486529

namespace A024012

/-- `∑[floor(2^(n-1))-or(1, 2*n)+2]` -/
def P16570300292675486529.Spec : Prop :=
  ∀ n, P16570300292675486529.a n = A024012 n

end A024012

/-! ## A024012.P3715277016323044030

`∑[∑[a(n-1)+a(n-1)+2]]` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A024012.P3715277016323044030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024012.P3715277016323044030

namespace A024012

/-- `∑[∑[a(n-1)+a(n-1)+2]]` -/
def P3715277016323044030.Spec : Prop :=
  ∀ n, P3715277016323044030.a n = A024012 n

end A024012

/-! ## A024012.P17768725758451887815

`∑[A094373(n)-2*n]`
-/

namespace A024012.P17768725758451887815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024012.P17768725758451887815

namespace A024012

/-- `∑[A094373(n)-2*n]` -/
def P17768725758451887815.Spec : Prop :=
  ∀ n, P17768725758451887815.a n = A024012 n

end A024012

/-! ## A024012.P13282507526719035144

`∑[A056469(n)-Δ[n²]]`
-/

namespace A024012.P13282507526719035144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024012.P13282507526719035144

namespace A024012

/-- `∑[A056469(n)-Δ[n²]]` -/
def P13282507526719035144.Spec : Prop :=
  ∀ n, P13282507526719035144.a n = A024012 n

end A024012

/-! ## A024012.P8013390899540122824

`-(n²-A000051(n)+1)`
-/

namespace A024012.P8013390899540122824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n ^ 2 : ℤ) - A000051 n + 1)

end

end A024012.P8013390899540122824

namespace A024012

/-- `-(n²-A000051(n)+1)` -/
def P8013390899540122824.Spec : Prop :=
  ∀ n, P8013390899540122824.a n = A024012 n

end A024012

/-! ## A024012.P15828579220170207641

`∑[A131577(n)+1-2*n]`
-/

namespace A024012.P15828579220170207641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + 1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024012.P15828579220170207641

namespace A024012

/-- `∑[A131577(n)+1-2*n]` -/
def P15828579220170207641.Spec : Prop :=
  ∀ n, P15828579220170207641.a n = A024012 n

end A024012

/-! ## A024012.P3016096406988394

`∑[A228693(2*n)-2*n]`
-/

namespace A024012.P3016096406988394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (2 * n) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024012.P3016096406988394

namespace A024012

/-- `∑[A228693(2*n)-2*n]` -/
def P3016096406988394.Spec : Prop :=
  ∀ n, P3016096406988394.a n = A024012 n

end A024012

/-! ## A024012.P12686366584150192937

`∑[A034008(n+1)-n-(n-1)]`
-/

namespace A024012.P12686366584150192937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) - (n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024012.P12686366584150192937

namespace A024012

/-- `∑[A034008(n+1)-n-(n-1)]` -/
def P12686366584150192937.Spec : Prop :=
  ∀ n, P12686366584150192937.a n = A024012 n

end A024012

/-! ## A024012.P4239222638967354007

`∑[Δ[ceil(2^(n-1))-A000290(n)]+2]`
-/

namespace A024012.P4239222638967354007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A000290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024012.P4239222638967354007

namespace A024012

/-- `∑[Δ[ceil(2^(n-1))-A000290(n)]+2]` -/
def P4239222638967354007.Spec : Prop :=
  ∀ n, P4239222638967354007.a n = A024012 n

end A024012

/-! ## A024012.P17925995401855782750

`∑[A011782(n)-A004273(n)]`
-/

namespace A024012.P17925995401855782750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024012.P17925995401855782750

namespace A024012

/-- `∑[A011782(n)-A004273(n)]` -/
def P17925995401855782750.Spec : Prop :=
  ∀ n, P17925995401855782750.a n = A024012 n

end A024012

/-! ## A024012.P18048091650187164320

`∑[A011782(n)-record[A006257(n)]]`
-/

namespace A024012.P18048091650187164320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024012.P18048091650187164320

namespace A024012

/-- `∑[A011782(n)-record[A006257(n)]]` -/
def P18048091650187164320.Spec : Prop :=
  ∀ n, P18048091650187164320.a n = A024012 n

end A024012

/-! ## A024012.P2029512378063624644

`floor(Δ[2*a(n-1)]-n²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A024012.P2029512378063624644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n ^ 2 : ℤ)

end

end A024012.P2029512378063624644

namespace A024012

/-- `floor(Δ[2*a(n-1)]-n²)` -/
def P2029512378063624644.Spec : Prop :=
  ∀ n, P2029512378063624644.a n = A024012 n

end A024012

/-! ## A024012.P15021371802382526317

`floor(sqrt(A052539(n))-n²)`
-/

namespace A024012.P15021371802382526317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A052539 n : ℝ) - (n ^ 2 : ℝ)⌋

end

end A024012.P15021371802382526317

namespace A024012

/-- `floor(sqrt(A052539(n))-n²)` -/
def P15021371802382526317.Spec : Prop :=
  ∀ n, P15021371802382526317.a n = A024012 n

end A024012

/-! ## A024012.P3730901661033783312

`A024040(n)/A001580(n)`
-/

namespace A024012.P3730901661033783312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024040 n : ℚ) / (A001580 n : ℚ)

end

end A024012.P3730901661033783312

namespace A024012

/-- `A024040(n)/A001580(n)` -/
def P3730901661033783312.Spec : Prop :=
  ∀ n, P3730901661033783312.a n = (A024012 n : ℚ)

end A024012

/-! ## A024012.P633515205201787835

`A024040(n)/(A000079(n)+n²)`
-/

namespace A024012.P633515205201787835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024040 n : ℚ) / (A000079 n + (n ^ 2 : ℤ) : ℚ)

end

end A024012.P633515205201787835

namespace A024012

/-- `A024040(n)/(A000079(n)+n²)` -/
def P633515205201787835.Spec : Prop :=
  ∀ n, P633515205201787835.a n = (A024012 n : ℚ)

end A024012

/-!
# A024013: a(n) = 2^n - n^3.

The programs for A024013, the canonical program `A024013.P13345601047456800814` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024013 has offset 0).

The definition of A024013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n^3` (program `A024013.P13345601047456800814`, by `A024013.P13345601047456800814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024013.P13345601047456800814

`2^n-n^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024013

/-- `2^n-n^3` -/
def P13345601047456800814.Spec : Prop :=
  ∀ n, P13345601047456800814.a n = A024013 n

theorem P13345601047456800814.correct : P13345601047456800814.Spec := by
  intro n
  simp only [A024013]

end A024013

/-! ## A024013.P17302846662760812108

`Δ[A000079(n)-C(n, 2)²]`
-/

namespace A024013.P17302846662760812108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (Nat.choose n 2 ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024013.P17302846662760812108

namespace A024013

/-- `Δ[A000079(n)-C(n, 2)²]` -/
def P17302846662760812108.Spec : Prop :=
  ∀ n, P17302846662760812108.a n = A024013 n

end A024013

/-! ## A024013.P11918007159640992695

`Δ[A000051(n)-(n-∑[n])²]`
-/

namespace A024013.P11918007159640992695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024013.P11918007159640992695

namespace A024013

/-- `Δ[A000051(n)-(n-∑[n])²]` -/
def P11918007159640992695.Spec : Prop :=
  ∀ n, P11918007159640992695.a n = A024013 n

end A024013

/-! ## A024013.P224534777545296538

`Δ[A000079(n)-A161680(n)²]`
-/

namespace A024013.P224534777545296538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A161680 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024013.P224534777545296538

namespace A024013

/-- `Δ[A000079(n)-A161680(n)²]` -/
def P224534777545296538.Spec : Prop :=
  ∀ n, P224534777545296538.a n = A024013 n

end A024013

/-! ## A024013.P12174059761969404023

`(A000079(n)-A000578(n))%A242238(n+1)`
-/

namespace A024013.P12174059761969404023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n - A000578 n) (A242238 (n + 1))

end

end A024013.P12174059761969404023

namespace A024013

/-- `(A000079(n)-A000578(n))%A242238(n+1)` -/
def P12174059761969404023.Spec : Prop :=
  ∀ n, P12174059761969404023.a n = A024013 n

end A024013

/-! ## A024013.P16392878604196931099

`A024042(n)/A097339(n)`
-/

namespace A024013.P16392878604196931099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024042 n : ℚ) / (A097339 n : ℚ)

end

end A024013.P16392878604196931099

namespace A024013

/-- `A024042(n)/A097339(n)` -/
def P16392878604196931099.Spec : Prop :=
  ∀ n, P16392878604196931099.a n = (A024013 n : ℚ)

end A024013

/-! ## A024013.P2301482226936476981

`(A000079(n)²-A128789(n))/A000079(n)`
-/

namespace A024013.P2301482226936476981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 - A128789 n : ℚ) / (A000079 n : ℚ)

end

end A024013.P2301482226936476981

namespace A024013

/-- `(A000079(n)²-A128789(n))/A000079(n)` -/
def P2301482226936476981.Spec : Prop :=
  ∀ n, P2301482226936476981.a n = (A024013 n : ℚ)

end A024013

/-!
# A024014: a(n) = 2^n-n^4.

The programs for A024014, the canonical program `A024014.P6196241844735021532` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024014 has offset 0).

The definition of A024014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n^4` (program `A024014.P6196241844735021532`, by `A024014.P6196241844735021532.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024014.P6196241844735021532

`2^n-n^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024014

/-- `2^n-n^4` -/
def P6196241844735021532.Spec : Prop :=
  ∀ n, P6196241844735021532.a n = A024014 n

theorem P6196241844735021532.correct : P6196241844735021532.Spec := by
  intro n
  simp only [A024014]

end A024014

/-! ## A024014.P1216262330703452239

`floor(A000079(n)-sqrt(A001016(n)))`
-/

namespace A024014.P1216262330703452239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n : ℝ) - Real.sqrt (A001016 n : ℝ)⌋

end

end A024014.P1216262330703452239

namespace A024014

/-- `floor(A000079(n)-sqrt(A001016(n)))` -/
def P1216262330703452239.Spec : Prop :=
  ∀ n, P1216262330703452239.a n = A024014 n

end A024014

/-! ## A024014.P1591856154359174874

`∑[A094373(n)-A060354(2*n)]`
-/

namespace A024014.P1591856154359174874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A060354 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024014.P1591856154359174874

namespace A024014

/-- `∑[A094373(n)-A060354(2*n)]` -/
def P1591856154359174874.Spec : Prop :=
  ∀ n, P1591856154359174874.a n = A024014 n

end A024014

/-! ## A024014.P3138654494452351626

`floor(A011782(n+1)-sqrt(A001016(n)))`
-/

namespace A024014.P3138654494452351626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011782 (n + 1) : ℝ) - Real.sqrt (A001016 n : ℝ)⌋

end

end A024014.P3138654494452351626

namespace A024014

/-- `floor(A011782(n+1)-sqrt(A001016(n)))` -/
def P3138654494452351626.Spec : Prop :=
  ∀ n, P3138654494452351626.a n = A024014 n

end A024014

/-! ## A024014.P10203184021773595074

`Δ[A000051(n)-A267691(n)]`
-/

namespace A024014.P10203184021773595074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A267691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024014.P10203184021773595074

namespace A024014

/-- `Δ[A000051(n)-A267691(n)]` -/
def P10203184021773595074.Spec : Prop :=
  ∀ n, P10203184021773595074.a n = A024014 n

end A024014

/-! ## A024014.P659451925535573260

`Δ[A000079(n)-A267691(n)]`
-/

namespace A024014.P659451925535573260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A267691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024014.P659451925535573260

namespace A024014

/-- `Δ[A000079(n)-A267691(n)]` -/
def P659451925535573260.Spec : Prop :=
  ∀ n, P659451925535573260.a n = A024014 n

end A024014

/-! ## A024014.P11456556616809069903

`Δ[A000225(n)-A267691(n)]`
-/

namespace A024014.P11456556616809069903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A267691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024014.P11456556616809069903

namespace A024014

/-- `Δ[A000225(n)-A267691(n)]` -/
def P11456556616809069903.Spec : Prop :=
  ∀ n, P11456556616809069903.a n = A024014 n

end A024014

/-! ## A024014.P10559336582470026428

`Δ[A000918(n)-A267691(n)]`
-/

namespace A024014.P10559336582470026428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - A267691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024014.P10559336582470026428

namespace A024014

/-- `Δ[A000918(n)-A267691(n)]` -/
def P10559336582470026428.Spec : Prop :=
  ∀ n, P10559336582470026428.a n = A024014 n

end A024014

/-! ## A024014.P6622284624875197054

`Δ[A062709(n)-A267691(n)]`
-/

namespace A024014.P6622284624875197054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 n - A267691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024014.P6622284624875197054

namespace A024014

/-- `Δ[A062709(n)-A267691(n)]` -/
def P6622284624875197054.Spec : Prop :=
  ∀ n, P6622284624875197054.a n = A024014 n

end A024014

/-! ## A024014.P1435770297663017128

`floor(A007283(n)/3-n²²)`
-/

namespace A024014.P1435770297663017128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007283 n : ℚ) / 3 - ((n ^ 2) ^ 2 : ℚ)⌋

end

end A024014.P1435770297663017128

namespace A024014

/-- `floor(A007283(n)/3-n²²)` -/
def P1435770297663017128.Spec : Prop :=
  ∀ n, P1435770297663017128.a n = A024014 n

end A024014

/-! ## A024014.P1896015091781008806

`(A000079(n)-n²²)%A252111(n+1)`
-/

namespace A024014.P1896015091781008806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n - ((n ^ 2) ^ 2 : ℤ)) (A252111 (n + 1))

end

end A024014.P1896015091781008806

namespace A024014

/-- `(A000079(n)-n²²)%A252111(n+1)` -/
def P1896015091781008806.Spec : Prop :=
  ∀ n, P1896015091781008806.a n = A024014 n

end A024014

/-! ## A024014.P5772713747354989431

`(A000079(n)-A000583(n))%A179754(n+1)`
-/

namespace A024014.P5772713747354989431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n - A000583 n) (A179754 (n + 1))

end

end A024014.P5772713747354989431

namespace A024014

/-- `(A000079(n)-A000583(n))%A179754(n+1)` -/
def P5772713747354989431.Spec : Prop :=
  ∀ n, P5772713747354989431.a n = A024014 n

end A024014

/-!
# A024015: a(n) = 2^n-n^5.

The programs for A024015, the canonical program `A024015.P6793099841329249991` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024015 has offset 0).

The definition of A024015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n^5` (program `A024015.P6793099841329249991`, by `A024015.P6793099841329249991.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024015.P6793099841329249991

`2^n-n^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024015

/-- `2^n-n^5` -/
def P6793099841329249991.Spec : Prop :=
  ∀ n, P6793099841329249991.a n = A024015 n

theorem P6793099841329249991.correct : P6793099841329249991.Spec := by
  intro n
  simp only [A024015]

end A024015

/-! ## A024015.P10436507821215068229

`-(A154589(n+1)+A000584(n))`
-/

namespace A024015.P10436507821215068229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A154589 (n + 1) + A000584 n)

end

end A024015.P10436507821215068229

namespace A024015

/-- `-(A154589(n+1)+A000584(n))` -/
def P10436507821215068229.Spec : Prop :=
  ∀ n, P10436507821215068229.a n = A024015 n

end A024015

/-! ## A024015.P7122029358434599174

`Δ[A000051(n)-A263689(n)]`
-/

namespace A024015.P7122029358434599174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024015.P7122029358434599174

namespace A024015

/-- `Δ[A000051(n)-A263689(n)]` -/
def P7122029358434599174.Spec : Prop :=
  ∀ n, P7122029358434599174.a n = A024015 n

end A024015

/-! ## A024015.P9264476741694661643

`Δ[A000079(n)-A263689(n)]`
-/

namespace A024015.P9264476741694661643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024015.P9264476741694661643

namespace A024015

/-- `Δ[A000079(n)-A263689(n)]` -/
def P9264476741694661643.Spec : Prop :=
  ∀ n, P9264476741694661643.a n = A024015 n

end A024015

/-! ## A024015.P14692130518371947363

`Δ[A000225(n)-A263689(n)]`
-/

namespace A024015.P14692130518371947363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024015.P14692130518371947363

namespace A024015

/-- `Δ[A000225(n)-A263689(n)]` -/
def P14692130518371947363.Spec : Prop :=
  ∀ n, P14692130518371947363.a n = A024015 n

end A024015

/-! ## A024015.P1614910627460144013

`Δ[A094373(n+1)-A263689(n)]`
-/

namespace A024015.P1614910627460144013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (n + 1) - A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024015.P1614910627460144013

namespace A024015

/-- `Δ[A094373(n+1)-A263689(n)]` -/
def P1614910627460144013.Spec : Prop :=
  ∀ n, P1614910627460144013.a n = A024015 n

end A024015

/-! ## A024015.P6634393181314583780

`Δ[A017912(2*n)-A263689(n)]`
-/

namespace A024015.P6634393181314583780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (2 * n) - A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024015.P6634393181314583780

namespace A024015

/-- `Δ[A017912(2*n)-A263689(n)]` -/
def P6634393181314583780.Spec : Prop :=
  ∀ n, P6634393181314583780.a n = A024015 n

end A024015

/-! ## A024015.P17335154278334826669

`Δ[A131572(2*n+1)-A263689(n)]`
-/

namespace A024015.P17335154278334826669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (2 * n + 1) - A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024015.P17335154278334826669

namespace A024015

/-- `Δ[A131572(2*n+1)-A263689(n)]` -/
def P17335154278334826669.Spec : Prop :=
  ∀ n, P17335154278334826669.a n = A024015 n

end A024015

/-! ## A024015.P13728654343910814885

`(A000079(n)-A000584(n))*A098725(A098717(n+1))`
-/

namespace A024015.P13728654343910814885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A000584 n) * A098725 (A098717 (n + 1)).toNat

end

end A024015.P13728654343910814885

namespace A024015

/-- `(A000079(n)-A000584(n))*A098725(A098717(n+1))` -/
def P13728654343910814885.Spec : Prop :=
  ∀ n, P13728654343910814885.a n = A024015 n

end A024015

/-!
# A024016: a(n) = 2^n-n^6.

The programs for A024016, the canonical program `A024016.P7013909999497740285` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024016 has offset 0).

The definition of A024016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n^6` (program `A024016.P7013909999497740285`, by `A024016.P7013909999497740285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024016.P7013909999497740285

`2^n-n^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024016

/-- `2^n-n^6` -/
def P7013909999497740285.Spec : Prop :=
  ∀ n, P7013909999497740285.a n = A024016 n

theorem P7013909999497740285.correct : P7013909999497740285.Spec := by
  intro n
  simp only [A024016]

end A024016

/-! ## A024016.P8534062943940399553

`(A001014(n)-A011782(n+1))*(1-4/2)`
-/

namespace A024016.P8534062943940399553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001014 n - A011782 (n + 1) : ℚ) * (1 - (4 : ℚ) / 2)

end

end A024016.P8534062943940399553

namespace A024016

/-- `(A001014(n)-A011782(n+1))*(1-4/2)` -/
def P8534062943940399553.Spec : Prop :=
  ∀ n, P8534062943940399553.a n = (A024016 n : ℚ)

end A024016

/-! ## A024016.P13402222302701683700

`(A000079(n)-A000578(n)²)*A173441(A034444(n+1))`
-/

namespace A024016.P13402222302701683700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A000578 n ^ 2) * A173441 (A034444 (n + 1)).toNat

end

end A024016.P13402222302701683700

namespace A024016

/-- `(A000079(n)-A000578(n)²)*A173441(A034444(n+1))` -/
def P13402222302701683700.Spec : Prop :=
  ∀ n, P13402222302701683700.a n = A024016 n

end A024016

/-! ## A024016.P17764875440813587750

`round(sqrt(A000302(n))-A001014(n))`
-/

namespace A024016.P17764875440813587750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000302 n : ℝ) - (A001014 n : ℝ))

end

end A024016.P17764875440813587750

namespace A024016

/-- `round(sqrt(A000302(n))-A001014(n))` -/
def P17764875440813587750.Spec : Prop :=
  ∀ n, P17764875440813587750.a n = A024016 n

end A024016

/-! ## A024016.P17698567084331384010

`(A000079(n)-(n*n²)²)/A007318(A000217(n+4))`
-/

namespace A024016.P17698567084331384010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n - ((n * n ^ 2) ^ 2 : ℤ) : ℚ) / (A007318 (A000217 (n + 4)).toNat : ℚ)

end

end A024016.P17698567084331384010

namespace A024016

/-- `(A000079(n)-(n*n²)²)/A007318(A000217(n+4))` -/
def P17698567084331384010.Spec : Prop :=
  ∀ n, P17698567084331384010.a n = (A024016 n : ℚ)

end A024016

/-!
# A024017: a(n) = 2^n - n^7.

The programs for A024017, the canonical program `A024017.P18293945699125323036` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024017 has offset 0).

The definition of A024017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n^7` (program `A024017.P18293945699125323036`, by `A024017.P18293945699125323036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024017.P18293945699125323036

`2^n-n^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024017

/-- `2^n-n^7` -/
def P18293945699125323036.Spec : Prop :=
  ∀ n, P18293945699125323036.a n = A024017 n

theorem P18293945699125323036.correct : P18293945699125323036.Spec := by
  intro n
  simp only [A024017]

end A024017

/-! ## A024017.P609532601689529332

`-(A001015(n)+1-A000051(n))`
-/

namespace A024017.P609532601689529332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001015 n + (1 - A000051 n))

end

end A024017.P609532601689529332

namespace A024017

/-- `-(A001015(n)+1-A000051(n))` -/
def P609532601689529332.Spec : Prop :=
  ∀ n, P609532601689529332.a n = A024017 n

end A024017

/-! ## A024017.P1343586374162608392

`(A000079(n)-A001015(n))*A033999(n)²`
-/

namespace A024017.P1343586374162608392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A001015 n) * A033999 n ^ 2

end

end A024017.P1343586374162608392

namespace A024017

/-- `(A000079(n)-A001015(n))*A033999(n)²` -/
def P1343586374162608392.Spec : Prop :=
  ∀ n, P1343586374162608392.a n = A024017 n

end A024017

/-! ## A024017.P14802183027152718171

`(A024005(n)+A000225(n))*char[A006368(n)]`
-/

namespace A024017.P14802183027152718171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024005 n + A000225 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024017.P14802183027152718171

namespace A024017

/-- `(A024005(n)+A000225(n))*char[A006368(n)]` -/
def P14802183027152718171.Spec : Prop :=
  ∀ n, P14802183027152718171.a n = A024017 n

end A024017

/-! ## A024017.P14630778785909225433

`(A024005(n)+A000225(n))/A007318(and(3, -n)!)`
-/

namespace A024017.P14630778785909225433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024005 n + A000225 n : ℚ) / (A007318 (Nat.factorial (Int.land 3 (-(n : ℤ))).toNat) : ℚ)

end

end A024017.P14630778785909225433

namespace A024017

/-- `(A024005(n)+A000225(n))/A007318(and(3, -n)!)` -/
def P14630778785909225433.Spec : Prop :=
  ∀ n, P14630778785909225433.a n = (A024017 n : ℚ)

end A024017

/-! ## A024017.P9196964175771635645

`(A024005(n)+A000225(n))%A305880(n+1)`
-/

namespace A024017.P9196964175771635645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024005 n + A000225 n) (A305880 (n + 1))

end

end A024017.P9196964175771635645

namespace A024017

/-- `(A024005(n)+A000225(n))%A305880(n+1)` -/
def P9196964175771635645.Spec : Prop :=
  ∀ n, P9196964175771635645.a n = A024017 n

end A024017

/-! ## A024017.P3019132382308349379

`(A024005(n)+A000225(n))*A007318(∑[n])`
-/

namespace A024017.P3019132382308349379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024005 n + A000225 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024017.P3019132382308349379

namespace A024017

/-- `(A024005(n)+A000225(n))*A007318(∑[n])` -/
def P3019132382308349379.Spec : Prop :=
  ∀ n, P3019132382308349379.a n = A024017 n

end A024017

/-!
# A024018: a(n) = 2^n-n^8.

The programs for A024018, the canonical program `A024018.P18312102503780693228` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024018 has offset 0).

The definition of A024018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n^8` (program `A024018.P18312102503780693228`, by `A024018.P18312102503780693228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024018.P18312102503780693228

`2^n-n^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024018

/-- `2^n-n^8` -/
def P18312102503780693228.Spec : Prop :=
  ∀ n, P18312102503780693228.a n = A024018 n

theorem P18312102503780693228.correct : P18312102503780693228.Spec := by
  intro n
  simp only [A024018]

end A024018

/-! ## A024018.P16338703866025370783

`-(A154589(n+1)+A001016(n))`
-/

namespace A024018.P16338703866025370783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A154589 (n + 1) + A001016 n)

end

end A024018.P16338703866025370783

namespace A024018

/-- `-(A154589(n+1)+A001016(n))` -/
def P16338703866025370783.Spec : Prop :=
  ∀ n, P16338703866025370783.a n = A024018 n

end A024018

/-! ## A024018.P12489453875608918599

`(A011782(n+1)-n²²²)*(A004442(n)-n)²`
-/

namespace A024018.P12489453875608918599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) - (((n ^ 2) ^ 2) ^ 2 : ℤ)) * (A004442 n - (n : ℤ)) ^ 2

end

end A024018.P12489453875608918599

namespace A024018

/-- `(A011782(n+1)-n²²²)*(A004442(n)-n)²` -/
def P12489453875608918599.Spec : Prop :=
  ∀ n, P12489453875608918599.a n = A024018 n

end A024018

/-! ## A024018.P3961496655964161751

`or(A000079(n)-A001016(n), A000035(n))`
-/

namespace A024018.P3961496655964161751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n - A001016 n) (A000035 n)

end

end A024018.P3961496655964161751

namespace A024018

/-- `or(A000079(n)-A001016(n), A000035(n))` -/
def P3961496655964161751.Spec : Prop :=
  ∀ n, P3961496655964161751.a n = A024018 n

end A024018

/-! ## A024018.P10958530073760139361

`(A000079(n)-A001016(n))*A033273(A027862(n+1))`
-/

namespace A024018.P10958530073760139361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A001016 n) * A033273 (A027862 (n + 1)).toNat

end

end A024018.P10958530073760139361

namespace A024018

/-- `(A000079(n)-A001016(n))*A033273(A027862(n+1))` -/
def P10958530073760139361.Spec : Prop :=
  ∀ n, P10958530073760139361.a n = A024018 n

end A024018

/-!
# A024019: a(n) = 2^n-n^9.

The programs for A024019, the canonical program `A024019.P6288368681626362244` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024019 has offset 0).

The definition of A024019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n^9` (program `A024019.P6288368681626362244`, by `A024019.P6288368681626362244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024019.P6288368681626362244

`2^n-n^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024019

/-- `2^n-n^9` -/
def P6288368681626362244.Spec : Prop :=
  ∀ n, P6288368681626362244.a n = A024019 n

theorem P6288368681626362244.correct : P6288368681626362244.Spec := by
  intro n
  simp only [A024019]

end A024019

/-! ## A024019.P10265255880260770641

`floor(sqrt(A000302(n))-A001017(n))`
-/

namespace A024019.P10265255880260770641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000302 n : ℝ) - (A001017 n : ℝ)⌋

end

end A024019.P10265255880260770641

namespace A024019

/-- `floor(sqrt(A000302(n))-A001017(n))` -/
def P10265255880260770641.Spec : Prop :=
  ∀ n, P10265255880260770641.a n = A024019 n

end A024019

/-! ## A024019.P8966018809133943531

`floor(sqrt(A052539(n))-A001017(n))`
-/

namespace A024019.P8966018809133943531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A052539 n : ℝ) - (A001017 n : ℝ)⌋

end

end A024019.P8966018809133943531

namespace A024019

/-- `floor(sqrt(A052539(n))-A001017(n))` -/
def P8966018809133943531.Spec : Prop :=
  ∀ n, P8966018809133943531.a n = A024019 n

end A024019

/-! ## A024019.P4848279607397787633

`floor(sqrt(A024036(n)+1)-A001017(n))`
-/

namespace A024019.P4848279607397787633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A024036 n + 1 : ℝ) - (A001017 n : ℝ)⌋

end

end A024019.P4848279607397787633

namespace A024019

/-- `floor(sqrt(A024036(n)+1)-A001017(n))` -/
def P4848279607397787633.Spec : Prop :=
  ∀ n, P4848279607397787633.a n = A024019 n

end A024019

/-! ## A024019.P2515022178940911578

`(sqrt(A000302(n))-A001017(n))*A176563(2*n)`
-/

namespace A024019.P2515022178940911578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A000302 n : ℝ) - (A001017 n : ℝ)) * (A176563 (2 * n) : ℝ)

end

end A024019.P2515022178940911578

namespace A024019

/-- `(sqrt(A000302(n))-A001017(n))*A176563(2*n)` -/
def P2515022178940911578.Spec : Prop :=
  ∀ n, P2515022178940911578.a n = (A024019 n : ℝ)

end A024019

/-! ## A024019.P15667461395968377869

`(sqrt(A000302(n))-A001017(n))%A207504(n+2)`
-/

namespace A024019.P15667461395968377869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A000302 n : ℝ) - (A001017 n : ℝ))) (A207504 (n + 2))

end

end A024019.P15667461395968377869

namespace A024019

/-- `(sqrt(A000302(n))-A001017(n))%A207504(n+2)` -/
def P15667461395968377869.Spec : Prop :=
  ∀ n, P15667461395968377869.a n = A024019 n

end A024019

/-! ## A024019.P17509220416294196751

`(sqrt(A000302(n))-A001017(n))*A006450(n+1)%2`
-/

namespace A024019.P17509220416294196751
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A000302 n : ℝ) - (A001017 n : ℝ)) * (Int.tmod (A006450 (n + 1)) 2 : ℝ)

end

end A024019.P17509220416294196751

namespace A024019

/-- `(sqrt(A000302(n))-A001017(n))*A006450(n+1)%2` -/
def P17509220416294196751.Spec : Prop :=
  ∀ n, P17509220416294196751.a n = (A024019 n : ℝ)

end A024019

/-! ## A024019.P12664411409276922211

`(sqrt(A000302(n))-A001017(n))*A207517(n+1)%2`
-/

namespace A024019.P12664411409276922211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A000302 n : ℝ) - (A001017 n : ℝ)) * (Int.tmod (A207517 (n + 1)) 2 : ℝ)

end

end A024019.P12664411409276922211

namespace A024019

/-- `(sqrt(A000302(n))-A001017(n))*A207517(n+1)%2` -/
def P12664411409276922211.Spec : Prop :=
  ∀ n, P12664411409276922211.a n = (A024019 n : ℝ)

end A024019

/-!
# A024020: a(n) = 2^n - n^10.

The programs for A024020, the canonical program `A024020.P17437305833303013958` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024020 has offset 0).

The definition of A024020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n^10` (program `A024020.P17437305833303013958`, by `A024020.P17437305833303013958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024020.P17437305833303013958

`2^n-n^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024020

/-- `2^n-n^10` -/
def P17437305833303013958.Spec : Prop :=
  ∀ n, P17437305833303013958.a n = A024020 n

theorem P17437305833303013958.correct : P17437305833303013958.Spec := by
  intro n
  simp only [A024020]

end A024020

/-! ## A024020.P2903667958251620752

`(A000079(n)-A008454(n))*A000010(C(2, n)!)`
-/

namespace A024020.P2903667958251620752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A008454 n) * A000010 (Nat.factorial (Nat.choose 2 n))

end

end A024020.P2903667958251620752

namespace A024020

/-- `(A000079(n)-A008454(n))*A000010(C(2, n)!)` -/
def P2903667958251620752.Spec : Prop :=
  ∀ n, P2903667958251620752.a n = A024020 n

end A024020

/-! ## A024020.P12496785100318498849

`(A000079(n)-A008454(n))*a(A057427(n)-1)` with `a(0)=1`
-/

namespace A024020.P12496785100318498849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000079 n - A008454 n) * a (A057427 n - 1).toNat

end

end A024020.P12496785100318498849

namespace A024020

/-- `(A000079(n)-A008454(n))*a(A057427(n)-1)` -/
def P12496785100318498849.Spec : Prop :=
  ∀ n, P12496785100318498849.a n = A024020 n

end A024020

/-! ## A024020.P2583787111348309910

`(A000079(n)-A008454(n))*A266898(C(2, n)%(n+1))`
-/

namespace A024020.P2583787111348309910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A008454 n) * A266898 (Nat.choose 2 n % (n + 1))

end

end A024020.P2583787111348309910

namespace A024020

/-- `(A000079(n)-A008454(n))*A266898(C(2, n)%(n+1))` -/
def P2583787111348309910.Spec : Prop :=
  ∀ n, P2583787111348309910.a n = A024020 n

end A024020

/-! ## A024020.P1333335930208184814

`(A000079(n)-A008454(n))*A266898((n+1)²%(n+1))`
-/

namespace A024020.P1333335930208184814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A008454 n) * A266898 ((n + 1) ^ 2 % (n + 1))

end

end A024020.P1333335930208184814

namespace A024020

/-- `(A000079(n)-A008454(n))*A266898((n+1)²%(n+1))` -/
def P1333335930208184814.Spec : Prop :=
  ∀ n, P1333335930208184814.a n = A024020 n

end A024020

/-! ## A024020.P17388735108278275584

`(A000079(n)-A008454(n))%A037746(2*n+1)`
-/

namespace A024020.P17388735108278275584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n - A008454 n) (A037746 (2 * n + 1))

end

end A024020.P17388735108278275584

namespace A024020

/-- `(A000079(n)-A008454(n))%A037746(2*n+1)` -/
def P17388735108278275584.Spec : Prop :=
  ∀ n, P17388735108278275584.a n = A024020 n

end A024020

/-!
# A024021: a(n) = 2^n-n^11.

The programs for A024021, the canonical program `A024021.P5227984534501085068` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024021 has offset 0).

The definition of A024021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n^11` (program `A024021.P5227984534501085068`, by `A024021.P5227984534501085068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024021.P5227984534501085068

`2^n-n^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024021

/-- `2^n-n^11` -/
def P5227984534501085068.Spec : Prop :=
  ∀ n, P5227984534501085068.a n = A024021 n

theorem P5227984534501085068.correct : P5227984534501085068.Spec := by
  intro n
  simp only [A024021]

end A024021

/-! ## A024021.P1225159108715749449

`(A008455(n)-A000079(n))*(1-4/2)`
-/

namespace A024021.P1225159108715749449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008455 n - A000079 n : ℚ) * (1 - (4 : ℚ) / 2)

end

end A024021.P1225159108715749449

namespace A024021

/-- `(A008455(n)-A000079(n))*(1-4/2)` -/
def P1225159108715749449.Spec : Prop :=
  ∀ n, P1225159108715749449.a n = (A024021 n : ℚ)

end A024021

/-! ## A024021.P16951591298413067652

`(A075497(A000124(n))-A008455(n))*A033999(n)²`
-/

namespace A024021.P16951591298413067652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075497 (A000124 n).toNat - A008455 n) * A033999 n ^ 2

end

end A024021.P16951591298413067652

namespace A024021

/-- `(A075497(A000124(n))-A008455(n))*A033999(n)²` -/
def P16951591298413067652.Spec : Prop :=
  ∀ n, P16951591298413067652.a n = A024021 n

end A024021

/-! ## A024021.P4920730119185548596

`(A075497(A000124(n))-A008455(n))*A006519(2*n+1)`
-/

namespace A024021.P4920730119185548596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075497 (A000124 n).toNat - A008455 n) * A006519 (2 * n + 1)

end

end A024021.P4920730119185548596

namespace A024021

/-- `(A075497(A000124(n))-A008455(n))*A006519(2*n+1)` -/
def P4920730119185548596.Spec : Prop :=
  ∀ n, P4920730119185548596.a n = A024021 n

end A024021

/-! ## A024021.P14328865151261875322

`(A075497(A000124(n))-A008455(n))*A233562(n+1)%2`
-/

namespace A024021.P14328865151261875322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075497 (A000124 n).toNat - A008455 n) * Int.tmod (A233562 (n + 1)) 2

end

end A024021.P14328865151261875322

namespace A024021

/-- `(A075497(A000124(n))-A008455(n))*A233562(n+1)%2` -/
def P14328865151261875322.Spec : Prop :=
  ∀ n, P14328865151261875322.a n = A024021 n

end A024021

/-!
# A024022: a(n) = 2^n - n^12.

The programs for A024022, the canonical program `A024022.P2947346492276621710` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024022 has offset 0).

The definition of A024022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n^12` (program `A024022.P2947346492276621710`, by `A024022.P2947346492276621710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024022.P2947346492276621710

`2^n-n^12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024022

/-- `2^n-n^12` -/
def P2947346492276621710.Spec : Prop :=
  ∀ n, P2947346492276621710.a n = A024022 n

theorem P2947346492276621710.correct : P2947346492276621710.Spec := by
  intro n
  simp only [A024022]

end A024022

/-!
# A024023: a(n) = 3^n - 1.

The programs for A024023, the canonical program `A024023.P3457506902639293536` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024023 has offset 0).

The definition of A024023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-1` (program `A024023.P3457506902639293536`, by `A024023.P3457506902639293536.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024023.P3457506902639293536

`3^n-1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024023

/-- `3^n-1` -/
def P3457506902639293536.Spec : Prop :=
  ∀ n, P3457506902639293536.a n = A024023 n

theorem P3457506902639293536.correct : P3457506902639293536.Spec := by
  intro n
  simp only [A024023]

end A024023

/-!
# A024024: a(n) = 3^n - n.

The programs for A024024, the canonical program `A024024.P10852439479803095698` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024024 has offset 0).

The definition of A024024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n` (program `A024024.P10852439479803095698`, by `A024024.P10852439479803095698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024024.P10852439479803095698

`3^n-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024024

/-- `3^n-n` -/
def P10852439479803095698.Spec : Prop :=
  ∀ n, P10852439479803095698.a n = A024024 n

theorem P10852439479803095698.correct : P10852439479803095698.Spec := by
  intro n
  simp only [A024024]

end A024024

/-!
# A024025: a(n) = 3^n - n^2.

The programs for A024025, the canonical program `A024025.P3177298670684259826` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024025 has offset 0).

The definition of A024025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n²` (program `A024025.P3177298670684259826`, by `A024025.P3177298670684259826.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024025.P3177298670684259826

`3^n-n²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024025

/-- `3^n-n²` -/
def P3177298670684259826.Spec : Prop :=
  ∀ n, P3177298670684259826.a n = A024025 n

theorem P3177298670684259826.correct : P3177298670684259826.Spec := by
  intro n
  simp only [A024025]

end A024025

/-! ## A024025.P12112820143952225805

`-(xor(-2, 3^n)+n²)`
-/

namespace A024025.P12112820143952225805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-2) (3 ^ n : ℤ) + (n ^ 2 : ℤ))

end

end A024025.P12112820143952225805

namespace A024025

/-- `-(xor(-2, 3^n)+n²)` -/
def P12112820143952225805.Spec : Prop :=
  ∀ n, P12112820143952225805.a n = A024025 n

end A024025

/-! ## A024025.P14234794261708269495

`∑[∑[3*a(n-1)+4]]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A024025.P14234794261708269495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  3 * f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024025.P14234794261708269495

namespace A024025

/-- `∑[∑[3*a(n-1)+4]]` -/
def P14234794261708269495.Spec : Prop :=
  ∀ n, (P14234794261708269495.a n : ℤ) = A024025 n

end A024025

/-! ## A024025.P13985279806648701146

`floor(∑[3*a(n-1)]-n²)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A024025.P13985279806648701146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A024025.P13985279806648701146

namespace A024025

/-- `floor(∑[3*a(n-1)]-n²)` -/
def P13985279806648701146.Spec : Prop :=
  ∀ n, P13985279806648701146.a n = A024025 n

end A024025

/-! ## A024025.P15312280107022636580

`abs(n²-A000244(n))`
-/

namespace A024025.P15312280107022636580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000244 n|

end

end A024025.P15312280107022636580

namespace A024025

/-- `abs(n²-A000244(n))` -/
def P15312280107022636580.Spec : Prop :=
  ∀ n, P15312280107022636580.a n = A024025 n

end A024025

/-! ## A024025.P5954774856751501010

`abs(3^n-A000290(n))`
-/

namespace A024025.P5954774856751501010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A000290 n|

end

end A024025.P5954774856751501010

namespace A024025

/-- `abs(3^n-A000290(n))` -/
def P5954774856751501010.Spec : Prop :=
  ∀ n, P5954774856751501010.a n = A024025 n

end A024025

/-! ## A024025.P9665704709083331393

`xor(1, A105723(n)-n²)`
-/

namespace A024025.P9665704709083331393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A105723 n - (n ^ 2 : ℤ))

end

end A024025.P9665704709083331393

namespace A024025

/-- `xor(1, A105723(n)-n²)` -/
def P9665704709083331393.Spec : Prop :=
  ∀ n, P9665704709083331393.a n = A024025 n

end A024025

/-! ## A024025.P9032335677345913864

`∑[A100702(n)-2*n]`
-/

namespace A024025.P9032335677345913864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024025.P9032335677345913864

namespace A024025

/-- `∑[A100702(n)-2*n]` -/
def P9032335677345913864.Spec : Prop :=
  ∀ n, P9032335677345913864.a n = A024025 n

end A024025

/-! ## A024025.P3212343753073278305

`∑[A025192(n)-A004273(n)]`
-/

namespace A024025.P3212343753073278305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024025.P3212343753073278305

namespace A024025

/-- `∑[A025192(n)-A004273(n)]` -/
def P3212343753073278305.Spec : Prop :=
  ∀ n, P3212343753073278305.a n = A024025 n

end A024025

/-! ## A024025.P15306581406616255756

`(A038754(2*n+1)-2*n²)/2`
-/

namespace A024025.P15306581406616255756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038754 (2 * n + 1) - (2 * n ^ 2 : ℤ) : ℚ) / 2

end

end A024025.P15306581406616255756

namespace A024025

/-- `(A038754(2*n+1)-2*n²)/2` -/
def P15306581406616255756.Spec : Prop :=
  ∀ n, P15306581406616255756.a n = (A024025 n : ℚ)

end A024025

/-! ## A024025.P9341579205305912617

`A003486(n)%A034472(n)`
-/

namespace A024025.P9341579205305912617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003486 n) (A034472 n)

end

end A024025.P9341579205305912617

namespace A024025

/-- `A003486(n)%A034472(n)` -/
def P9341579205305912617.Spec : Prop :=
  ∀ n, P9341579205305912617.a n = A024025 n

end A024025

/-! ## A024025.P10741765402531851105

`floor(sqrt(A034513(n))-n²)`
-/

namespace A024025.P10741765402531851105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A034513 n : ℝ) - (n ^ 2 : ℝ)⌋

end

end A024025.P10741765402531851105

namespace A024025

/-- `floor(sqrt(A034513(n))-n²)` -/
def P10741765402531851105.Spec : Prop :=
  ∀ n, P10741765402531851105.a n = A024025 n

end A024025

/-! ## A024025.P7015066758665040613

`floor(sqrt(A062396(n))-n²)`
-/

namespace A024025.P7015066758665040613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A062396 n : ℝ) - (n ^ 2 : ℝ)⌋

end

end A024025.P7015066758665040613

namespace A024025

/-- `floor(sqrt(A062396(n))-n²)` -/
def P7015066758665040613.Spec : Prop :=
  ∀ n, P7015066758665040613.a n = A024025 n

end A024025

/-! ## A024025.P6222927433218337743

`floor(sqrt(A074610(n))-n²)`
-/

namespace A024025.P6222927433218337743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A074610 n : ℝ) - (n ^ 2 : ℝ)⌋

end

end A024025.P6222927433218337743

namespace A024025

/-- `floor(sqrt(A074610(n))-n²)` -/
def P6222927433218337743.Spec : Prop :=
  ∀ n, P6222927433218337743.a n = A024025 n

end A024025

/-! ## A024025.P4216753176107090104

`ceil(sqrt(A001019(n))-n²)`
-/

namespace A024025.P4216753176107090104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001019 n : ℝ) - (n ^ 2 : ℝ)⌉

end

end A024025.P4216753176107090104

namespace A024025

/-- `ceil(sqrt(A001019(n))-n²)` -/
def P4216753176107090104.Spec : Prop :=
  ∀ n, P4216753176107090104.a n = A024025 n

end A024025

/-! ## A024025.P16992698420719506590

`(A000244(n)²-A127960(n))/A000244(n)`
-/

namespace A024025.P16992698420719506590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 - A127960 n : ℚ) / (A000244 n : ℚ)

end

end A024025.P16992698420719506590

namespace A024025

/-- `(A000244(n)²-A127960(n))/A000244(n)` -/
def P16992698420719506590.Spec : Prop :=
  ∀ n, P16992698420719506590.a n = (A024025 n : ℚ)

end A024025

/-!
# A024026: a(n) = 3^n - n^3.

The programs for A024026, the canonical program `A024026.P4420491483714638126` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024026 has offset 0).

The definition of A024026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n^3` (program `A024026.P4420491483714638126`, by `A024026.P4420491483714638126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024026.P4420491483714638126

`3^n-n^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024026

/-- `3^n-n^3` -/
def P4420491483714638126.Spec : Prop :=
  ∀ n, P4420491483714638126.a n = A024026 n

theorem P4420491483714638126.correct : P4420491483714638126.Spec := by
  intro n
  simp only [A024026]

end A024026

/-! ## A024026.P4357304448101639638

`abs(A000244(n)-A000578(n))`
-/

namespace A024026.P4357304448101639638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A000578 n|

end

end A024026.P4357304448101639638

namespace A024026

/-- `abs(A000244(n)-A000578(n))` -/
def P4357304448101639638.Spec : Prop :=
  ∀ n, P4357304448101639638.a n = A024026 n

end A024026

/-! ## A024026.P12791168574059045705

`Δ[A003462(n)-A161680(n)²]`
-/

namespace A024026.P12791168574059045705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A161680 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024026.P12791168574059045705

namespace A024026

/-- `Δ[A003462(n)-A161680(n)²]` -/
def P12791168574059045705.Spec : Prop :=
  ∀ n, P12791168574059045705.a n = A024026 n

end A024026

/-! ## A024026.P5086753759175916968

`abs(A017914(2*n)-A000578(n))`
-/

namespace A024026.P5086753759175916968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017914 (2 * n) - A000578 n|

end

end A024026.P5086753759175916968

namespace A024026

/-- `abs(A017914(2*n)-A000578(n))` -/
def P5086753759175916968.Spec : Prop :=
  ∀ n, P5086753759175916968.a n = A024026 n

end A024026

/-! ## A024026.P15504508672729547040

`abs(A056449(2*n)-A000578(n))`
-/

namespace A024026.P15504508672729547040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056449 (2 * n) - A000578 n|

end

end A024026.P15504508672729547040

namespace A024026

/-- `abs(A056449(2*n)-A000578(n))` -/
def P15504508672729547040.Spec : Prop :=
  ∀ n, P15504508672729547040.a n = A024026 n

end A024026

/-! ## A024026.P18361599987123613051

`abs(A108411(2*n)-A000578(n))`
-/

namespace A024026.P18361599987123613051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108411 (2 * n) - A000578 n|

end

end A024026.P18361599987123613051

namespace A024026

/-- `abs(A108411(2*n)-A000578(n))` -/
def P18361599987123613051.Spec : Prop :=
  ∀ n, P18361599987123613051.a n = A024026 n

end A024026

/-! ## A024026.P10485218496418160570

`(A000244(n)-A000578(n))%A104088(n+1)`
-/

namespace A024026.P10485218496418160570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n - A000578 n) (A104088 (n + 1))

end

end A024026.P10485218496418160570

namespace A024026

/-- `(A000244(n)-A000578(n))%A104088(n+1)` -/
def P10485218496418160570.Spec : Prop :=
  ∀ n, P10485218496418160570.a n = A024026 n

end A024026

/-! ## A024026.P5441145064526178034

`(A000244(n)-A000578(n))*A000265(A059268(n))`
-/

namespace A024026.P5441145064526178034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A000578 n) * A000265 (A059268 n).toNat

end

end A024026.P5441145064526178034

namespace A024026

/-- `(A000244(n)-A000578(n))*A000265(A059268(n))` -/
def P5441145064526178034.Spec : Prop :=
  ∀ n, P5441145064526178034.a n = A024026 n

end A024026

/-! ## A024026.P9876120942607110845

`A024104(n)%Δ[A034472(n)]`
-/

namespace A024026.P9876120942607110845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024104 n) (f1 (n + 1) - f1 n)

end

end A024026.P9876120942607110845

namespace A024026

/-- `A024104(n)%Δ[A034472(n)]` -/
def P9876120942607110845.Spec : Prop :=
  ∀ n, P9876120942607110845.a n = A024026 n

end A024026

/-! ## A024026.P5799745190226422572

`-A055651(A167614(n+2))`
-/

namespace A024026.P5799745190226422572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A055651 (A167614 (n + 2)).toNat

end

end A024026.P5799745190226422572

namespace A024026

/-- `-A055651(A167614(n+2))` -/
def P5799745190226422572.Spec : Prop :=
  ∀ n, P5799745190226422572.a n = A024026 n

end A024026

/-!
# A024027: a(n) = 3^n - n^4.

The programs for A024027, the canonical program `A024027.P12576232162035161899` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024027 has offset 0).

The definition of A024027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n^4` (program `A024027.P12576232162035161899`, by `A024027.P12576232162035161899.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024027.P12576232162035161899

`3^n-n^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024027

/-- `3^n-n^4` -/
def P12576232162035161899.Spec : Prop :=
  ∀ n, P12576232162035161899.a n = A024027 n

theorem P12576232162035161899.correct : P12576232162035161899.Spec := by
  intro n
  simp only [A024027]

end A024027

/-! ## A024027.P16732362246600796882

`and(A000244(n)-n²², -5)`
-/

namespace A024027.P16732362246600796882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000244 n - ((n ^ 2) ^ 2 : ℤ)) (-5)

end

end A024027.P16732362246600796882

namespace A024027

/-- `and(A000244(n)-n²², -5)` -/
def P16732362246600796882.Spec : Prop :=
  ∀ n, P16732362246600796882.a n = A024027 n

end A024027

/-! ## A024027.P10155342382761578709

`or(A000244(n)-n²², A000007(n))`
-/

namespace A024027.P10155342382761578709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 n - ((n ^ 2) ^ 2 : ℤ)) (A000007 n)

end

end A024027.P10155342382761578709

namespace A024027

/-- `or(A000244(n)-n²², A000007(n))` -/
def P10155342382761578709.Spec : Prop :=
  ∀ n, P10155342382761578709.a n = A024027 n

end A024027

/-! ## A024027.P18238594535781998125

`(A000244(n)-n²²)*A033999(n)²`
-/

namespace A024027.P18238594535781998125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * A033999 n ^ 2

end

end A024027.P18238594535781998125

namespace A024027

/-- `(A000244(n)-n²²)*A033999(n)²` -/
def P18238594535781998125.Spec : Prop :=
  ∀ n, P18238594535781998125.a n = A024027 n

end A024027

/-! ## A024027.P1938713957861479289

`(A000244(n)-n²²)*char[A001057(n)]`
-/

namespace A024027.P1938713957861479289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024027.P1938713957861479289

namespace A024027

/-- `(A000244(n)-n²²)*char[A001057(n)]` -/
def P1938713957861479289.Spec : Prop :=
  ∀ n, P1938713957861479289.a n = A024027 n

end A024027

/-! ## A024027.P15474577834908379354

`(A000244(n)-n²²)*char[A026741(n)]`
-/

namespace A024027.P15474577834908379354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024027.P15474577834908379354

namespace A024027

/-- `(A000244(n)-n²²)*char[A026741(n)]` -/
def P15474577834908379354.Spec : Prop :=
  ∀ n, P15474577834908379354.a n = A024027 n

end A024027

/-! ## A024027.P12294112762585135517

`(A000244(n)-n²²)*char[A061579(n)]`
-/

namespace A024027.P12294112762585135517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024027.P12294112762585135517

namespace A024027

/-- `(A000244(n)-n²²)*char[A061579(n)]` -/
def P12294112762585135517.Spec : Prop :=
  ∀ n, P12294112762585135517.a n = A024027 n

end A024027

/-! ## A024027.P11678206462263662354

`(A000244(n)-n²²)*char[A074679(n)]`
-/

namespace A024027.P11678206462263662354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024027.P11678206462263662354

namespace A024027

/-- `(A000244(n)-n²²)*char[A074679(n)]` -/
def P11678206462263662354.Spec : Prop :=
  ∀ n, P11678206462263662354.a n = A024027 n

end A024027

/-! ## A024027.P10682301814653104075

`(A000244(n)-n²²)*char[A259153(n)]`
-/

namespace A024027.P10682301814653104075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024027.P10682301814653104075

namespace A024027

/-- `(A000244(n)-n²²)*char[A259153(n)]` -/
def P10682301814653104075.Spec : Prop :=
  ∀ n, P10682301814653104075.a n = A024027 n

end A024027

/-! ## A024027.P2717121763503620817

`(A000244(n)-n²²)*A057427(n+1)`
-/

namespace A024027.P2717121763503620817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * A057427 (n + 1)

end

end A024027.P2717121763503620817

namespace A024027

/-- `(A000244(n)-n²²)*A057427(n+1)` -/
def P2717121763503620817.Spec : Prop :=
  ∀ n, P2717121763503620817.a n = A024027 n

end A024027

/-! ## A024027.P18078096715015617175

`(A000244(n)-n²²)*A124625(2*n)`
-/

namespace A024027.P18078096715015617175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * A124625 (2 * n)

end

end A024027.P18078096715015617175

namespace A024027

/-- `(A000244(n)-n²²)*A124625(2*n)` -/
def P18078096715015617175.Spec : Prop :=
  ∀ n, P18078096715015617175.a n = A024027 n

end A024027

/-! ## A024027.P1826013496980404305

`xor(A000244(n)-n²², A000007(n+1))`
-/

namespace A024027.P1826013496980404305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000244 n - ((n ^ 2) ^ 2 : ℤ)) (A000007 (n + 1))

end

end A024027.P1826013496980404305

namespace A024027

/-- `xor(A000244(n)-n²², A000007(n+1))` -/
def P1826013496980404305.Spec : Prop :=
  ∀ n, P1826013496980404305.a n = A024027 n

end A024027

/-! ## A024027.P1572300567077616280

`(A000244(n)-n²²)/A033999(n+1)²`
-/

namespace A024027.P1572300567077616280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ) : ℚ) / (A033999 (n + 1) ^ 2 : ℚ)

end

end A024027.P1572300567077616280

namespace A024027

/-- `(A000244(n)-n²²)/A033999(n+1)²` -/
def P1572300567077616280.Spec : Prop :=
  ∀ n, P1572300567077616280.a n = (A024027 n : ℚ)

end A024027

/-! ## A024027.P8943629084750962749

`(A000244(n)-n²²)*A000035(A005408(n))`
-/

namespace A024027.P8943629084750962749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * A000035 (A005408 n).toNat

end

end A024027.P8943629084750962749

namespace A024027

/-- `(A000244(n)-n²²)*A000035(A005408(n))` -/
def P8943629084750962749.Spec : Prop :=
  ∀ n, P8943629084750962749.a n = A024027 n

end A024027

/-! ## A024027.P5561320081345292282

`(A000244(n)-n²²)*A035115(A087133(n+1))`
-/

namespace A024027.P5561320081345292282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * A035115 (A087133 (n + 1)).toNat

end

end A024027.P5561320081345292282

namespace A024027

/-- `(A000244(n)-n²²)*A035115(A087133(n+1))` -/
def P5561320081345292282.Spec : Prop :=
  ∀ n, P5561320081345292282.a n = A024027 n

end A024027

/-! ## A024027.P3614198814775271568

`(A000244(n)-n²²)*A001222(A194581(n+1))`
-/

namespace A024027.P3614198814775271568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * A001222 (A194581 (n + 1)).toNat

end

end A024027.P3614198814775271568

namespace A024027

/-- `(A000244(n)-n²²)*A001222(A194581(n+1))` -/
def P3614198814775271568.Spec : Prop :=
  ∀ n, P3614198814775271568.a n = A024027 n

end A024027

/-! ## A024027.P2545773648299685584

`(A000244(n)-n²²)*A001221(A147853(n+2))`
-/

namespace A024027.P2545773648299685584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * A001221 (A147853 (n + 2)).toNat

end

end A024027.P2545773648299685584

namespace A024027

/-- `(A000244(n)-n²²)*A001221(A147853(n+2))` -/
def P2545773648299685584.Spec : Prop :=
  ∀ n, P2545773648299685584.a n = A024027 n

end A024027

/-! ## A024027.P17919279404833952034

`(A000244(n)-n²²)/A342017(A006530(n+1))`
-/

namespace A024027.P17919279404833952034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ) : ℚ) / (A342017 (A006530 (n + 1)).toNat : ℚ)

end

end A024027.P17919279404833952034

namespace A024027

/-- `(A000244(n)-n²²)/A342017(A006530(n+1))` -/
def P17919279404833952034.Spec : Prop :=
  ∀ n, P17919279404833952034.a n = (A024027 n : ℚ)

end A024027

/-! ## A024027.P4883389320169440162

`(A000244(n)-n²²)*A107910(A020639(2*(n+1)))`
-/

namespace A024027.P4883389320169440162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - ((n ^ 2) ^ 2 : ℤ)) * A107910 (A020639 (2 * (n + 1))).toNat

end

end A024027.P4883389320169440162

namespace A024027

/-- `(A000244(n)-n²²)*A107910(A020639(2*(n+1)))` -/
def P4883389320169440162.Spec : Prop :=
  ∀ n, P4883389320169440162.a n = A024027 n

end A024027

/-!
# A024028: a(n) = 3^n - n^5.

The programs for A024028, the canonical program `A024028.P6414944086266601071` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024028 has offset 0).

The definition of A024028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n^5` (program `A024028.P6414944086266601071`, by `A024028.P6414944086266601071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024028.P6414944086266601071

`3^n-n^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024028

/-- `3^n-n^5` -/
def P6414944086266601071.Spec : Prop :=
  ∀ n, P6414944086266601071.a n = A024028 n

theorem P6414944086266601071.correct : P6414944086266601071.Spec := by
  intro n
  simp only [A024028]

end A024028

/-! ## A024028.P10455661277382867614

`Δ[A003462(n)-A263689(n)]`
-/

namespace A024028.P10455661277382867614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024028.P10455661277382867614

namespace A024028

/-- `Δ[A003462(n)-A263689(n)]` -/
def P10455661277382867614.Spec : Prop :=
  ∀ n, P10455661277382867614.a n = A024028 n

end A024028

/-! ## A024028.P17050118691479554011

`Δ[A007051(n)-A263689(n)]`
-/

namespace A024028.P17050118691479554011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024028.P17050118691479554011

namespace A024028

/-- `Δ[A007051(n)-A263689(n)]` -/
def P17050118691479554011.Spec : Prop :=
  ∀ n, P17050118691479554011.a n = A024028 n

end A024028

/-! ## A024028.P5185009582741397046

`(A024023(n)+A024003(n))*(A005408(n)-A005843(n))`
-/

namespace A024028.P5185009582741397046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + A024003 n) * (A005408 n - A005843 n)

end

end A024028.P5185009582741397046

namespace A024028

/-- `(A024023(n)+A024003(n))*(A005408(n)-A005843(n))` -/
def P5185009582741397046.Spec : Prop :=
  ∀ n, P5185009582741397046.a n = A024028 n

end A024028

/-! ## A024028.P14291299136548729670

`(A000244(n)-A000584(n))%A221899(n+1)`
-/

namespace A024028.P14291299136548729670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n - A000584 n) (A221899 (n + 1))

end

end A024028.P14291299136548729670

namespace A024028

/-- `(A000244(n)-A000584(n))%A221899(n+1)` -/
def P14291299136548729670.Spec : Prop :=
  ∀ n, P14291299136548729670.a n = A024028 n

end A024028

/-!
# A024029: a(n) = 3^n - n^6.

The programs for A024029, the canonical program `A024029.P7599974094186693312` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024029 has offset 0).

The definition of A024029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n^6` (program `A024029.P7599974094186693312`, by `A024029.P7599974094186693312.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024029.P7599974094186693312

`3^n-n^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024029

/-- `3^n-n^6` -/
def P7599974094186693312.Spec : Prop :=
  ∀ n, P7599974094186693312.a n = A024029 n

theorem P7599974094186693312.correct : P7599974094186693312.Spec := by
  intro n
  simp only [A024029]

end A024029

/-! ## A024029.P14192902178681604331

`(A000244(n)-A001014(n))*A001222(A007918(n))`
-/

namespace A024029.P14192902178681604331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001014 n) * A001222 (A007918 n).toNat

end

end A024029.P14192902178681604331

namespace A024029

/-- `(A000244(n)-A001014(n))*A001222(A007918(n))` -/
def P14192902178681604331.Spec : Prop :=
  ∀ n, P14192902178681604331.a n = A024029 n

end A024029

/-! ## A024029.P8452462630524247420

`(A000244(n)-A001014(n))*A001222(A190911(n+1))`
-/

namespace A024029.P8452462630524247420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001014 n) * A001222 (A190911 (n + 1)).toNat

end

end A024029.P8452462630524247420

namespace A024029

/-- `(A000244(n)-A001014(n))*A001222(A190911(n+1))` -/
def P8452462630524247420.Spec : Prop :=
  ∀ n, P8452462630524247420.a n = A024029 n

end A024029

/-! ## A024029.P11814019354781926909

`(A000244(n)-A001014(n))*A007318(∑[n])`
-/

namespace A024029.P11814019354781926909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001014 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024029.P11814019354781926909

namespace A024029

/-- `(A000244(n)-A001014(n))*A007318(∑[n])` -/
def P11814019354781926909.Spec : Prop :=
  ∀ n, P11814019354781926909.a n = A024029 n

end A024029

/-! ## A024029.P5431798441337292334

`(A000244(n)-A001014(n))%A186817(n+1)`
-/

namespace A024029.P5431798441337292334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n - A001014 n) (A186817 (n + 1))

end

end A024029.P5431798441337292334

namespace A024029

/-- `(A000244(n)-A001014(n))%A186817(n+1)` -/
def P5431798441337292334.Spec : Prop :=
  ∀ n, P5431798441337292334.a n = A024029 n

end A024029

/-! ## A024029.P8179298844063125571

`floor(sqrt(A034730(2*n+1))-A001014(n))`
-/

namespace A024029.P8179298844063125571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A034730 (2 * n + 1) : ℝ) - (A001014 n : ℝ)⌋

end

end A024029.P8179298844063125571

namespace A024029

/-- `floor(sqrt(A034730(2*n+1))-A001014(n))` -/
def P8179298844063125571.Spec : Prop :=
  ∀ n, P8179298844063125571.a n = A024029 n

end A024029

/-! ## A024029.P14731666703511920745

`(A000244(n)-A001014(n))*A151935(n)!`
-/

namespace A024029.P14731666703511920745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001014 n) * (Nat.factorial (A151935 n).toNat : ℤ)

end

end A024029.P14731666703511920745

namespace A024029

/-- `(A000244(n)-A001014(n))*A151935(n)!` -/
def P14731666703511920745.Spec : Prop :=
  ∀ n, P14731666703511920745.a n = A024029 n

end A024029

/-!
# A024030: a(n) = 3^n - n^7.

The programs for A024030, the canonical program `A024030.P18420601165189020889` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024030 has offset 0).

The definition of A024030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n^7` (program `A024030.P18420601165189020889`, by `A024030.P18420601165189020889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024030.P18420601165189020889

`3^n-n^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024030

/-- `3^n-n^7` -/
def P18420601165189020889.Spec : Prop :=
  ∀ n, P18420601165189020889.a n = A024030 n

theorem P18420601165189020889.correct : P18420601165189020889.Spec := by
  intro n
  simp only [A024030]

end A024030

/-! ## A024030.P5639886550265410620

`-(A001015(n)+1-A034472(n))`
-/

namespace A024030.P5639886550265410620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001015 n + (1 - A034472 n))

end

end A024030.P5639886550265410620

namespace A024030

/-- `-(A001015(n)+1-A034472(n))` -/
def P5639886550265410620.Spec : Prop :=
  ∀ n, P5639886550265410620.a n = A024030 n

end A024030

/-! ## A024030.P16649561338971595919

`or(A000244(n)-A001015(n), A000007(n))`
-/

namespace A024030.P16649561338971595919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 n - A001015 n) (A000007 n)

end

end A024030.P16649561338971595919

namespace A024030

/-- `or(A000244(n)-A001015(n), A000007(n))` -/
def P16649561338971595919.Spec : Prop :=
  ∀ n, P16649561338971595919.a n = A024030 n

end A024030

/-! ## A024030.P17542194191332700974

`(A000244(n)-A001015(n))*abs(A165326(n))`
-/

namespace A024030.P17542194191332700974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001015 n) * |A165326 n|

end

end A024030.P17542194191332700974

namespace A024030

/-- `(A000244(n)-A001015(n))*abs(A165326(n))` -/
def P17542194191332700974.Spec : Prop :=
  ∀ n, P17542194191332700974.a n = A024030 n

end A024030

/-! ## A024030.P11214098344982310587

`(A000244(n)-A001015(n))*char[A004442(n)]`
-/

namespace A024030.P11214098344982310587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001015 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024030.P11214098344982310587

namespace A024030

/-- `(A000244(n)-A001015(n))*char[A004442(n)]` -/
def P11214098344982310587.Spec : Prop :=
  ∀ n, P11214098344982310587.a n = A024030 n

end A024030

/-! ## A024030.P11136826710236346673

`(A000244(n)-A001015(n))*A010684(2*n)`
-/

namespace A024030.P11136826710236346673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001015 n) * A010684 (2 * n)

end

end A024030.P11136826710236346673

namespace A024030

/-- `(A000244(n)-A001015(n))*A010684(2*n)` -/
def P11136826710236346673.Spec : Prop :=
  ∀ n, P11136826710236346673.a n = A024030 n

end A024030

/-! ## A024030.P1148632254893025145

`or(A000244(n)-A001015(n), A010673(2*n))`
-/

namespace A024030.P1148632254893025145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 n - A001015 n) (A010673 (2 * n))

end

end A024030.P1148632254893025145

namespace A024030

/-- `or(A000244(n)-A001015(n), A010673(2*n))` -/
def P1148632254893025145.Spec : Prop :=
  ∀ n, P1148632254893025145.a n = A024030 n

end A024030

/-! ## A024030.P15148992925585630753

`(A000244(n)-A001015(n))*A000035(2*n+1)`
-/

namespace A024030.P15148992925585630753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001015 n) * A000035 (2 * n + 1)

end

end A024030.P15148992925585630753

namespace A024030

/-- `(A000244(n)-A001015(n))*A000035(2*n+1)` -/
def P15148992925585630753.Spec : Prop :=
  ∀ n, P15148992925585630753.a n = A024030 n

end A024030

/-! ## A024030.P14464322792300498632

`(A000244(n)-A001015(n))*A001222(A284290(n+1))`
-/

namespace A024030.P14464322792300498632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001015 n) * A001222 (A284290 (n + 1)).toNat

end

end A024030.P14464322792300498632

namespace A024030

/-- `(A000244(n)-A001015(n))*A001222(A284290(n+1))` -/
def P14464322792300498632.Spec : Prop :=
  ∀ n, P14464322792300498632.a n = A024030 n

end A024030

/-! ## A024030.P8815309500842152427

`(A000244(n)-A001015(n))*A165326(A035497(n+1))`
-/

namespace A024030.P8815309500842152427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001015 n) * A165326 (A035497 (n + 1)).toNat

end

end A024030.P8815309500842152427

namespace A024030

/-- `(A000244(n)-A001015(n))*A165326(A035497(n+1))` -/
def P8815309500842152427.Spec : Prop :=
  ∀ n, P8815309500842152427.a n = A024030 n

end A024030

/-! ## A024030.P645009150273137315

`(A000244(n)-A001015(n))*A047089(C(n+2, 2))`
-/

namespace A024030.P645009150273137315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001015 n) * A047089 (Nat.choose (n + 2) 2)

end

end A024030.P645009150273137315

namespace A024030

/-- `(A000244(n)-A001015(n))*A047089(C(n+2, 2))` -/
def P645009150273137315.Spec : Prop :=
  ∀ n, P645009150273137315.a n = A024030 n

end A024030

/-! ## A024030.P15003897119520791983

`(A000244(n)-A001015(n))*A011655(∑[n+1]+1)`
-/

namespace A024030.P15003897119520791983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001015 n) * A011655 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A024030.P15003897119520791983

namespace A024030

/-- `(A000244(n)-A001015(n))*A011655(∑[n+1]+1)` -/
def P15003897119520791983.Spec : Prop :=
  ∀ n, P15003897119520791983.a n = A024030 n

end A024030

/-!
# A024031: a(n) = 3^n - n^8.

The programs for A024031, the canonical program `A024031.P18328482014603714074` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024031 has offset 0).

The definition of A024031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n^8` (program `A024031.P18328482014603714074`, by `A024031.P18328482014603714074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024031.P18328482014603714074

`3^n-n^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024031

/-- `3^n-n^8` -/
def P18328482014603714074.Spec : Prop :=
  ∀ n, P18328482014603714074.a n = A024031 n

theorem P18328482014603714074.correct : P18328482014603714074.Spec := by
  intro n
  simp only [A024031]

end A024031

/-! ## A024031.P12904956443496948843

`-(xor(-2, 3^n)+n²²²)`
-/

namespace A024031.P12904956443496948843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-2) (3 ^ n : ℤ) + (((n ^ 2) ^ 2) ^ 2 : ℤ))

end

end A024031.P12904956443496948843

namespace A024031

/-- `-(xor(-2, 3^n)+n²²²)` -/
def P12904956443496948843.Spec : Prop :=
  ∀ n, P12904956443496948843.a n = A024031 n

end A024031

/-! ## A024031.P13875593731524549523

`(A024023(n)+A024006(n))*char[A014681(n)]`
-/

namespace A024031.P13875593731524549523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + A024006 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024031.P13875593731524549523

namespace A024031

/-- `(A024023(n)+A024006(n))*char[A014681(n)]` -/
def P13875593731524549523.Spec : Prop :=
  ∀ n, P13875593731524549523.a n = A024031 n

end A024031

/-! ## A024031.P12217090244265411896

`(A024023(n)+A024006(n))*char[A028242(n)]`
-/

namespace A024031.P12217090244265411896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + A024006 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024031.P12217090244265411896

namespace A024031

/-- `(A024023(n)+A024006(n))*char[A028242(n)]` -/
def P12217090244265411896.Spec : Prop :=
  ∀ n, P12217090244265411896.a n = A024031 n

end A024031

/-! ## A024031.P18201997096115425906

`(A024023(n)+A024006(n))*A014963(A008458(n))`
-/

namespace A024031.P18201997096115425906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + A024006 n) * A014963 (A008458 n).toNat

end

end A024031.P18201997096115425906

namespace A024031

/-- `(A024023(n)+A024006(n))*A014963(A008458(n))` -/
def P18201997096115425906.Spec : Prop :=
  ∀ n, P18201997096115425906.a n = A024031 n

end A024031

/-! ## A024031.P4050291537467751949

`(A024023(n)+A024006(n))*(A005408(n)-A005843(n))`
-/

namespace A024031.P4050291537467751949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + A024006 n) * (A005408 n - A005843 n)

end

end A024031.P4050291537467751949

namespace A024031

/-- `(A024023(n)+A024006(n))*(A005408(n)-A005843(n))` -/
def P4050291537467751949.Spec : Prop :=
  ∀ n, P4050291537467751949.a n = A024031 n

end A024031

/-! ## A024031.P2308015273113018909

`(A024023(n)+A024006(n))*A014963(A000217(n+5))`
-/

namespace A024031.P2308015273113018909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + A024006 n) * A014963 (A000217 (n + 5)).toNat

end

end A024031.P2308015273113018909

namespace A024031

/-- `(A024023(n)+A024006(n))*A014963(A000217(n+5))` -/
def P2308015273113018909.Spec : Prop :=
  ∀ n, P2308015273113018909.a n = A024031 n

end A024031

/-! ## A024031.P9640647562921253703

`(A024023(n)+A024006(n))*A008683(A006094(n+1))`
-/

namespace A024031.P9640647562921253703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + A024006 n) * A008683 (A006094 (n + 1)).toNat

end

end A024031.P9640647562921253703

namespace A024031

/-- `(A024023(n)+A024006(n))*A008683(A006094(n+1))` -/
def P9640647562921253703.Spec : Prop :=
  ∀ n, P9640647562921253703.a n = A024031 n

end A024031

/-!
# A024032: a(n) = 3^n - n^9.

The programs for A024032, the canonical program `A024032.P9692390471251337074` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024032 has offset 0).

The definition of A024032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n^9` (program `A024032.P9692390471251337074`, by `A024032.P9692390471251337074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024032.P9692390471251337074

`3^n-n^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024032

/-- `3^n-n^9` -/
def P9692390471251337074.Spec : Prop :=
  ∀ n, P9692390471251337074.a n = A024032 n

theorem P9692390471251337074.correct : P9692390471251337074.Spec := by
  intro n
  simp only [A024032]

end A024032

/-! ## A024032.P2833653899958840463

`floor(A024058(n)-2/3*A226511(n))`
-/

namespace A024032.P2833653899958840463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024058 n : ℚ) - (2 : ℚ) / 3 * (A226511 n : ℚ)⌋

end

end A024032.P2833653899958840463

namespace A024032

/-- `floor(A024058(n)-2/3*A226511(n))` -/
def P2833653899958840463.Spec : Prop :=
  ∀ n, P2833653899958840463.a n = A024032 n

end A024032

/-! ## A024032.P10348073326451872753

`floor(A024058(n)-(A093138(n+1)-A169604(n))/A007283(n))`
-/

namespace A024032.P10348073326451872753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024058 n : ℚ) - (A093138 (n + 1) - A169604 n : ℚ) / (A007283 n : ℚ)⌋

end

end A024032.P10348073326451872753

namespace A024032

/-- `floor(A024058(n)-(A093138(n+1)-A169604(n))/A007283(n))` -/
def P10348073326451872753.Spec : Prop :=
  ∀ n, P10348073326451872753.a n = A024032 n

end A024032

/-! ## A024032.P14856418809971503916

`(A000244(n)-A001017(n))%A263056(n+1)`
-/

namespace A024032.P14856418809971503916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n - A001017 n) (A263056 (n + 1))

end

end A024032.P14856418809971503916

namespace A024032

/-- `(A000244(n)-A001017(n))%A263056(n+1)` -/
def P14856418809971503916.Spec : Prop :=
  ∀ n, P14856418809971503916.a n = A024032 n

end A024032

/-!
# A024033: a(n) = 3^n - n^10.

The programs for A024033, the canonical program `A024033.P12850229815279166640` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024033 has offset 0).

The definition of A024033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n^10` (program `A024033.P12850229815279166640`, by `A024033.P12850229815279166640.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024033.P12850229815279166640

`3^n-n^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024033

/-- `3^n-n^10` -/
def P12850229815279166640.Spec : Prop :=
  ∀ n, P12850229815279166640.a n = A024033 n

theorem P12850229815279166640.correct : P12850229815279166640.Spec := by
  intro n
  simp only [A024033]

end A024033

/-! ## A024033.P3111193697013630427

`floor(sqrt(A001019(n))-A008454(n))`
-/

namespace A024033.P3111193697013630427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A001019 n : ℝ) - (A008454 n : ℝ)⌋

end

end A024033.P3111193697013630427

namespace A024033

/-- `floor(sqrt(A001019(n))-A008454(n))` -/
def P3111193697013630427.Spec : Prop :=
  ∀ n, P3111193697013630427.a n = A024033 n

end A024033

/-! ## A024033.P18043599007811701734

`(sqrt(A001019(n))-A008454(n))*A343785(n+1)²`
-/

namespace A024033.P18043599007811701734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A001019 n : ℝ) - (A008454 n : ℝ)) * (A343785 (n + 1) ^ 2 : ℝ)

end

end A024033.P18043599007811701734

namespace A024033

/-- `(sqrt(A001019(n))-A008454(n))*A343785(n+1)²` -/
def P18043599007811701734.Spec : Prop :=
  ∀ n, P18043599007811701734.a n = (A024033 n : ℝ)

end A024033

/-! ## A024033.P4435704705623117663

`(sqrt(A001019(n))-A008454(n))*(2-A010684(n))²`
-/

namespace A024033.P4435704705623117663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A001019 n : ℝ) - (A008454 n : ℝ)) * ((2 - A010684 n) ^ 2 : ℝ)

end

end A024033.P4435704705623117663

namespace A024033

/-- `(sqrt(A001019(n))-A008454(n))*(2-A010684(n))²` -/
def P4435704705623117663.Spec : Prop :=
  ∀ n, P4435704705623117663.a n = (A024033 n : ℝ)

end A024033

/-! ## A024033.P7929162542804466936

`(sqrt(A001019(n))-A008454(n))%A026628(n+2)²`
-/

namespace A024033.P7929162542804466936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001019 n : ℝ) - (A008454 n : ℝ))) (A026628 (n + 2) ^ 2)

end

end A024033.P7929162542804466936

namespace A024033

/-- `(sqrt(A001019(n))-A008454(n))%A026628(n+2)²` -/
def P7929162542804466936.Spec : Prop :=
  ∀ n, P7929162542804466936.a n = A024033 n

end A024033

/-!
# A024034: a(n) = 3^n - n^11.

The programs for A024034, the canonical program `A024034.P14766183334970759809` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024034 has offset 0).

The definition of A024034 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n^11` (program `A024034.P14766183334970759809`, by `A024034.P14766183334970759809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024034.P14766183334970759809

`3^n-n^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024034

/-- `3^n-n^11` -/
def P14766183334970759809.Spec : Prop :=
  ∀ n, P14766183334970759809.a n = A024034 n

theorem P14766183334970759809.correct : P14766183334970759809.Spec := by
  intro n
  simp only [A024034]

end A024034

/-! ## A024034.P14714662893916031618

`(A024023(n)+A024009(n))*A000010(ceil(2/(n+1)))`
-/

namespace A024034.P14714662893916031618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + A024009 n) * A000010 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A024034.P14714662893916031618

namespace A024034

/-- `(A024023(n)+A024009(n))*A000010(ceil(2/(n+1)))` -/
def P14714662893916031618.Spec : Prop :=
  ∀ n, P14714662893916031618.a n = A024034 n

end A024034

/-! ## A024034.P17435450176433509872

`(A024023(n)+A024009(n))^A000045(round(n/(n+1)))`
-/

namespace A024034.P17435450176433509872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024023 n + A024009 n : ℚ) ^ (A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A024034.P17435450176433509872

namespace A024034

/-- `(A024023(n)+A024009(n))^A000045(round(n/(n+1)))` -/
def P17435450176433509872.Spec : Prop :=
  ∀ n, P17435450176433509872.a n = (A024034 n : ℚ)

end A024034

/-! ## A024034.P17809281801184056029

`(A024023(n)+A024009(n))*A057428(A000267(n))²`
-/

namespace A024034.P17809281801184056029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + A024009 n) * A057428 (A000267 n).toNat ^ 2

end

end A024034.P17809281801184056029

namespace A024034

/-- `(A024023(n)+A024009(n))*A057428(A000267(n))²` -/
def P17809281801184056029.Spec : Prop :=
  ∀ n, P17809281801184056029.a n = A024034 n

end A024034

/-! ## A024034.P3784361044509917328

`(A024023(n)+A024009(n))^A001221(A000961(n+1))`
-/

namespace A024034.P3784361044509917328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024023 n + A024009 n : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A024034.P3784361044509917328

namespace A024034

/-- `(A024023(n)+A024009(n))^A001221(A000961(n+1))` -/
def P3784361044509917328.Spec : Prop :=
  ∀ n, P3784361044509917328.a n = (A024034 n : ℚ)

end A024034

/-! ## A024034.P10036403690383979595

`(A024023(n)+A024009(n))*(A005408(n)-A005843(n))`
-/

namespace A024034.P10036403690383979595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + A024009 n) * (A005408 n - A005843 n)

end

end A024034.P10036403690383979595

namespace A024034

/-- `(A024023(n)+A024009(n))*(A005408(n)-A005843(n))` -/
def P10036403690383979595.Spec : Prop :=
  ∀ n, P10036403690383979595.a n = A024034 n

end A024034

/-! ## A024034.P8292702059994382685

`(A024023(n)+A024009(n))%A000108(n+13)`
-/

namespace A024034.P8292702059994382685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024023 n + A024009 n) (A000108 (n + 13))

end

end A024034.P8292702059994382685

namespace A024034

/-- `(A024023(n)+A024009(n))%A000108(n+13)` -/
def P8292702059994382685.Spec : Prop :=
  ∀ n, P8292702059994382685.a n = A024034 n

end A024034

/-!
# A024035: a(n) = 3^n - n^12.

The programs for A024035, the canonical program `A024035.P8957724524168389876` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024035 has offset 0).

The definition of A024035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-n^12` (program `A024035.P8957724524168389876`, by `A024035.P8957724524168389876.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024035.P8957724524168389876

`3^n-n^12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024035

/-- `3^n-n^12` -/
def P8957724524168389876.Spec : Prop :=
  ∀ n, P8957724524168389876.a n = A024035 n

theorem P8957724524168389876.correct : P8957724524168389876.Spec := by
  intro n
  simp only [A024035]

end A024035

/-!
# A024036: a(n) = 4^n - 1.

The programs for A024036, the canonical program `A024036.P9245189437657330470` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024036 has offset 0).

The definition of A024036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-1` (program `A024036.P9245189437657330470`, by `A024036.P9245189437657330470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024036.P9245189437657330470

`4^n-1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024036

/-- `4^n-1` -/
def P9245189437657330470.Spec : Prop :=
  ∀ n, P9245189437657330470.a n = A024036 n

theorem P9245189437657330470.correct : P9245189437657330470.Spec := by
  intro n
  simp only [A024036]

end A024036

/-!
# A024037: a(n) = 4^n - n.

The programs for A024037, the canonical program `A024037.P7380461457287617195` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024037 has offset 0).

The definition of A024037 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n` (program `A024037.P7380461457287617195`, by `A024037.P7380461457287617195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024037.P7380461457287617195

`4^n-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024037

/-- `4^n-n` -/
def P7380461457287617195.Spec : Prop :=
  ∀ n, P7380461457287617195.a n = A024037 n

theorem P7380461457287617195.correct : P7380461457287617195.Spec := by
  intro n
  simp only [A024037]

end A024037

/-!
# A024038: a(n) = 4^n - n^2.

The programs for A024038, the canonical program `A024038.P11088490618402720470` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024038 has offset 0).

The definition of A024038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n²` (program `A024038.P11088490618402720470`, by `A024038.P11088490618402720470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024038.P11088490618402720470

`4^n-n²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024038

/-- `4^n-n²` -/
def P11088490618402720470.Spec : Prop :=
  ∀ n, P11088490618402720470.a n = A024038 n

theorem P11088490618402720470.correct : P11088490618402720470.Spec := by
  intro n
  simp only [A024038]

end A024038

/-! ## A024038.P4244083082958489965

`A000325(n)*A006127(n)`
-/

namespace A024038.P4244083082958489965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n * A006127 n

end

end A024038.P4244083082958489965

namespace A024038

/-- `A000325(n)*A006127(n)` -/
def P4244083082958489965.Spec : Prop :=
  ∀ n, P4244083082958489965.a n = A024038 n

end A024038

/-! ## A024038.P10844596323777389381

`abs(or(-4^n, n²))`
-/

namespace A024038.P10844596323777389381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-(4 ^ n : ℤ)) (n ^ 2 : ℤ)|

end

end A024038.P10844596323777389381

namespace A024038

/-- `abs(or(-4^n, n²))` -/
def P10844596323777389381.Spec : Prop :=
  ∀ n, P10844596323777389381.a n = A024038 n

end A024038

/-! ## A024038.P12120063965037563641

`-or(-4^n, n²)`
-/

namespace A024038.P12120063965037563641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-(4 ^ n : ℤ)) (n ^ 2 : ℤ)

end

end A024038.P12120063965037563641

namespace A024038

/-- `-or(-4^n, n²)` -/
def P12120063965037563641.Spec : Prop :=
  ∀ n, P12120063965037563641.a n = A024038 n

end A024038

/-! ## A024038.P15225303141365424443

`abs(xor(-4^n, n²))`
-/

namespace A024038.P15225303141365424443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-(4 ^ n : ℤ)) (n ^ 2 : ℤ)|

end

end A024038.P15225303141365424443

namespace A024038

/-- `abs(xor(-4^n, n²))` -/
def P15225303141365424443.Spec : Prop :=
  ∀ n, P15225303141365424443.a n = A024038 n

end A024038

/-! ## A024038.P12605358631732283125

`-xor(-4^n, n²)`
-/

namespace A024038.P12605358631732283125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-(4 ^ n : ℤ)) (n ^ 2 : ℤ)

end

end A024038.P12605358631732283125

namespace A024038

/-- `-xor(-4^n, n²)` -/
def P12605358631732283125.Spec : Prop :=
  ∀ n, P12605358631732283125.a n = A024038 n

end A024038

/-! ## A024038.P9704063211096637455

`floor(∑[4*a(n-1)]-n²)` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A024038.P9704063211096637455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A024038.P9704063211096637455

namespace A024038

/-- `floor(∑[4*a(n-1)]-n²)` -/
def P9704063211096637455.Spec : Prop :=
  ∀ n, P9704063211096637455.a n = A024038 n

end A024038

/-! ## A024038.P14231047745441437955

`abs(n²-A000302(n))`
-/

namespace A024038.P14231047745441437955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000302 n|

end

end A024038.P14231047745441437955

namespace A024038

/-- `abs(n²-A000302(n))` -/
def P14231047745441437955.Spec : Prop :=
  ∀ n, P14231047745441437955.a n = A024038 n

end A024038

/-! ## A024038.P14226547851890257929

`abs(n²-A000079(n)²)`
-/

namespace A024038.P14226547851890257929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000079 n ^ 2|

end

end A024038.P14226547851890257929

namespace A024038

/-- `abs(n²-A000079(n)²)` -/
def P14226547851890257929.Spec : Prop :=
  ∀ n, P14226547851890257929.a n = A024038 n

end A024038

/-! ## A024038.P2553444102178941667

`abs((A000225(n)+1)²-n²)`
-/

namespace A024038.P2553444102178941667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000225 n + 1) ^ 2 - (n ^ 2 : ℤ)|

end

end A024038.P2553444102178941667

namespace A024038

/-- `abs((A000225(n)+1)²-n²)` -/
def P2553444102178941667.Spec : Prop :=
  ∀ n, P2553444102178941667.a n = A024038 n

end A024038

/-! ## A024038.P13396884376368189827

`abs(n²-A011782(n+1)²)`
-/

namespace A024038.P13396884376368189827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A011782 (n + 1) ^ 2|

end

end A024038.P13396884376368189827

namespace A024038

/-- `abs(n²-A011782(n+1)²)` -/
def P13396884376368189827.Spec : Prop :=
  ∀ n, P13396884376368189827.a n = A024038 n

end A024038

/-! ## A024038.P6779047213470244790

`abs(n²-A000225(2*n)-1)`
-/

namespace A024038.P6779047213470244790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000225 (2 * n) - 1|

end

end A024038.P6779047213470244790

namespace A024038

/-- `abs(n²-A000225(2*n)-1)` -/
def P6779047213470244790.Spec : Prop :=
  ∀ n, P6779047213470244790.a n = A024038 n

end A024038

/-! ## A024038.P3301599887023060893

`xor(A132411(n), A267596(n))`
-/

namespace A024038.P3301599887023060893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A132411 n) (A267596 n)

end

end A024038.P3301599887023060893

namespace A024038

/-- `xor(A132411(n), A267596(n))` -/
def P3301599887023060893.Spec : Prop :=
  ∀ n, P3301599887023060893.a n = A024038 n

end A024038

/-! ## A024038.P11990384775911215838

`A000325(n)*A188917(2*n)`
-/

namespace A024038.P11990384775911215838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n * A188917 (2 * n)

end

end A024038.P11990384775911215838

namespace A024038

/-- `A000325(n)*A188917(2*n)` -/
def P11990384775911215838.Spec : Prop :=
  ∀ n, P11990384775911215838.a n = A024038 n

end A024038

/-! ## A024038.P3062872928863464314

`(A000079(n+1)-A000325(n))*A000325(n)`
-/

namespace A024038.P3062872928863464314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A000325 n) * A000325 n

end

end A024038.P3062872928863464314

namespace A024038

/-- `(A000079(n+1)-A000325(n))*A000325(n)` -/
def P3062872928863464314.Spec : Prop :=
  ∀ n, P3062872928863464314.a n = A024038 n

end A024038

/-! ## A024038.P6535036023364957074

`(A000225(n+1)-A000295(n))*A000325(n)`
-/

namespace A024038.P6535036023364957074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) - A000295 n) * A000325 n

end

end A024038.P6535036023364957074

namespace A024038

/-- `(A000225(n+1)-A000295(n))*A000325(n)` -/
def P6535036023364957074.Spec : Prop :=
  ∀ n, P6535036023364957074.a n = A024038 n

end A024038

/-! ## A024038.P6621548616843407523

`(A000295(n+1)-A000918(n))*A006127(n)`
-/

namespace A024038.P6621548616843407523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000295 (n + 1) - A000918 n) * A006127 n

end

end A024038.P6621548616843407523

namespace A024038

/-- `(A000295(n+1)-A000918(n))*A006127(n)` -/
def P6621548616843407523.Spec : Prop :=
  ∀ n, P6621548616843407523.a n = A024038 n

end A024038

/-! ## A024038.P9289781319214076217

`(A000079(n+1)-A006127(n))*A006127(n)`
-/

namespace A024038.P9289781319214076217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A006127 n) * A006127 n

end

end A024038.P9289781319214076217

namespace A024038

/-- `(A000079(n+1)-A006127(n))*A006127(n)` -/
def P9289781319214076217.Spec : Prop :=
  ∀ n, P9289781319214076217.a n = A024038 n

end A024038

/-! ## A024038.P4647491375573092152

`abs(n²-Δ[A002450(n)])`
-/

namespace A024038.P4647491375573092152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - (f1 (n + 1) - f1 n)|

end

end A024038.P4647491375573092152

namespace A024038

/-- `abs(n²-Δ[A002450(n)])` -/
def P4647491375573092152.Spec : Prop :=
  ∀ n, P4647491375573092152.a n = A024038 n

end A024038

/-! ## A024038.P12417995255851677122

`A243860(2*n+1)/4`
-/

namespace A024038.P12417995255851677122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243860 (2 * n + 1) : ℚ) / 4

end

end A024038.P12417995255851677122

namespace A024038

/-- `A243860(2*n+1)/4` -/
def P12417995255851677122.Spec : Prop :=
  ∀ n, P12417995255851677122.a n = (A024038 n : ℚ)

end A024038

/-!
# A024039: a(n) = 4^n - n^3.

The programs for A024039, the canonical program `A024039.P6240977099627935155` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024039 has offset 0).

The definition of A024039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n^3` (program `A024039.P6240977099627935155`, by `A024039.P6240977099627935155.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024039.P6240977099627935155

`4^n-n^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024039

/-- `4^n-n^3` -/
def P6240977099627935155.Spec : Prop :=
  ∀ n, P6240977099627935155.a n = A024039 n

theorem P6240977099627935155.correct : P6240977099627935155.Spec := by
  intro n
  simp only [A024039]

end A024039

/-! ## A024039.P2552773768930891722

`abs(or(n*n², -4^n))`
-/

namespace A024039.P2552773768930891722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n * n ^ 2 : ℤ) (-(4 ^ n : ℤ))|

end

end A024039.P2552773768930891722

namespace A024039

/-- `abs(or(n*n², -4^n))` -/
def P2552773768930891722.Spec : Prop :=
  ∀ n, P2552773768930891722.a n = A024039 n

end A024039

/-! ## A024039.P7875924813958457317

`-or(n*n², -4^n)`
-/

namespace A024039.P7875924813958457317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n * n ^ 2 : ℤ) (-(4 ^ n : ℤ))

end

end A024039.P7875924813958457317

namespace A024039

/-- `-or(n*n², -4^n)` -/
def P7875924813958457317.Spec : Prop :=
  ∀ n, P7875924813958457317.a n = A024039 n

end A024039

/-! ## A024039.P7179751727252051398

`abs(A000302(n)-n*n²)`
-/

namespace A024039.P7179751727252051398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 n - (n * n ^ 2 : ℤ)|

end

end A024039.P7179751727252051398

namespace A024039

/-- `abs(A000302(n)-n*n²)` -/
def P7179751727252051398.Spec : Prop :=
  ∀ n, P7179751727252051398.a n = A024039 n

end A024039

/-! ## A024039.P8225674006617267008

`abs(n*n²-A000079(n)²)`
-/

namespace A024039.P8225674006617267008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * n ^ 2 : ℤ) - A000079 n ^ 2|

end

end A024039.P8225674006617267008

namespace A024039

/-- `abs(n*n²-A000079(n)²)` -/
def P8225674006617267008.Spec : Prop :=
  ∀ n, P8225674006617267008.a n = A024039 n

end A024039

/-! ## A024039.P14641679932139942901

`abs((n-1)*n²-A024038(n))`
-/

namespace A024039.P14641679932139942901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * (n ^ 2 : ℤ) - A024038 n|

end

end A024039.P14641679932139942901

namespace A024039

/-- `abs((n-1)*n²-A024038(n))` -/
def P14641679932139942901.Spec : Prop :=
  ∀ n, P14641679932139942901.a n = A024039 n

end A024039

/-! ## A024039.P3956386790452353503

`abs((A000225(n)+1)²-n*n²)`
-/

namespace A024039.P3956386790452353503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000225 n + 1) ^ 2 - (n * n ^ 2 : ℤ)|

end

end A024039.P3956386790452353503

namespace A024039

/-- `abs((A000225(n)+1)²-n*n²)` -/
def P3956386790452353503.Spec : Prop :=
  ∀ n, P3956386790452353503.a n = A024039 n

end A024039

/-! ## A024039.P11349241295484173433

`abs(A027306(2*n+1)-n*n²)`
-/

namespace A024039.P11349241295484173433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027306 (2 * n + 1) - (n * n ^ 2 : ℤ)|

end

end A024039.P11349241295484173433

namespace A024039

/-- `abs(A027306(2*n+1)-n*n²)` -/
def P11349241295484173433.Spec : Prop :=
  ∀ n, P11349241295484173433.a n = A024039 n

end A024039

/-! ## A024039.P11515272158425919234

`abs(A000079(n)²-A000578(n))`
-/

namespace A024039.P11515272158425919234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n ^ 2 - A000578 n|

end

end A024039.P11515272158425919234

namespace A024039

/-- `abs(A000079(n)²-A000578(n))` -/
def P11515272158425919234.Spec : Prop :=
  ∀ n, P11515272158425919234.a n = A024039 n

end A024039

/-! ## A024039.P15526651782434715694

`round(A000302(n)-sqrt(A001014(n)))`
-/

namespace A024039.P15526651782434715694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000302 n : ℝ) - Real.sqrt (A001014 n : ℝ))

end

end A024039.P15526651782434715694

namespace A024039

/-- `round(A000302(n)-sqrt(A001014(n)))` -/
def P15526651782434715694.Spec : Prop :=
  ∀ n, P15526651782434715694.a n = A024039 n

end A024039

/-! ## A024039.P15241727117752354635

`abs(A000079(2*n)-A000578(n))`
-/

namespace A024039.P15241727117752354635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (2 * n) - A000578 n|

end

end A024039.P15241727117752354635

namespace A024039

/-- `abs(A000079(2*n)-A000578(n))` -/
def P15241727117752354635.Spec : Prop :=
  ∀ n, P15241727117752354635.a n = A024039 n

end A024039

/-! ## A024039.P3139025407116508075

`floor(A000302(n)-A033431(n)/2)`
-/

namespace A024039.P3139025407116508075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000302 n : ℚ) - (A033431 n : ℚ) / 2⌋

end

end A024039.P3139025407116508075

namespace A024039

/-- `floor(A000302(n)-A033431(n)/2)` -/
def P3139025407116508075.Spec : Prop :=
  ∀ n, P3139025407116508075.a n = A024039 n

end A024039

/-! ## A024039.P7054835761240125083

`abs(A011782(n+1)²-A000578(n))`
-/

namespace A024039.P7054835761240125083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) ^ 2 - A000578 n|

end

end A024039.P7054835761240125083

namespace A024039

/-- `abs(A011782(n+1)²-A000578(n))` -/
def P7054835761240125083.Spec : Prop :=
  ∀ n, P7054835761240125083.a n = A024039 n

end A024039

/-!
# A024040: a(n) = 4^n - n^4.

The programs for A024040, the canonical program `A024040.P11949217247610370625` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024040 has offset 0).

The definition of A024040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n^4` (program `A024040.P11949217247610370625`, by `A024040.P11949217247610370625.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024040.P11949217247610370625

`4^n-n^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024040

/-- `4^n-n^4` -/
def P11949217247610370625.Spec : Prop :=
  ∀ n, P11949217247610370625.a n = A024040 n

theorem P11949217247610370625.correct : P11949217247610370625.Spec := by
  intro n
  simp only [A024040]

end A024040

/-! ## A024040.P4367176623202603478

`A001580(n)*A024012(n)`
-/

namespace A024040.P4367176623202603478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001580 n * A024012 n

end

end A024040.P4367176623202603478

namespace A024040

/-- `A001580(n)*A024012(n)` -/
def P4367176623202603478.Spec : Prop :=
  ∀ n, P4367176623202603478.a n = A024040 n

end A024040

/-! ## A024040.P15723048632975667952

`(A030110(n)-1)*A001580(n)`
-/

namespace A024040.P15723048632975667952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030110 n - 1) * A001580 n

end

end A024040.P15723048632975667952

namespace A024040

/-- `(A030110(n)-1)*A001580(n)` -/
def P15723048632975667952.Spec : Prop :=
  ∀ n, P15723048632975667952.a n = A024040 n

end A024040

/-! ## A024040.P4543996737528806590

`(A220588(n)+n)*A001580(n)`
-/

namespace A024040.P4543996737528806590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A220588 n + (n : ℤ)) * A001580 n

end

end A024040.P4543996737528806590

namespace A024040

/-- `(A220588(n)+n)*A001580(n)` -/
def P4543996737528806590.Spec : Prop :=
  ∀ n, P4543996737528806590.a n = A024040 n

end A024040

/-! ## A024040.P10879240440459098561

`(A000079(n)+n²)*A024012(n)`
-/

namespace A024040.P10879240440459098561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n + (n ^ 2 : ℤ)) * A024012 n

end

end A024040.P10879240440459098561

namespace A024040

/-- `(A000079(n)+n²)*A024012(n)` -/
def P10879240440459098561.Spec : Prop :=
  ∀ n, P10879240440459098561.a n = A024040 n

end A024040

/-! ## A024040.P14262466746063119744

`(A000079(n)-n²)*A001580(n)`
-/

namespace A024040.P14262466746063119744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - (n ^ 2 : ℤ)) * A001580 n

end

end A024040.P14262466746063119744

namespace A024040

/-- `(A000079(n)-n²)*A001580(n)` -/
def P14262466746063119744.Spec : Prop :=
  ∀ n, P14262466746063119744.a n = A024040 n

end A024040

/-! ## A024040.P11794953439853256711

`A055651(eq[4, A025581(n)])`
-/

namespace A024040.P11794953439853256711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024040.P11794953439853256711

namespace A024040

/-- `A055651(eq[4, A025581(n)])` -/
def P11794953439853256711.Spec : Prop :=
  ∀ n, P11794953439853256711.a n = A024040 n

end A024040

/-! ## A024040.P16730239893767133588

`A055651(eq[2, A144257(n+1)-2])`
-/

namespace A024040.P16730239893767133588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024040.P16730239893767133588

namespace A024040

/-- `A055651(eq[2, A144257(n+1)-2])` -/
def P16730239893767133588.Spec : Prop :=
  ∀ n, P16730239893767133588.a n = A024040 n

end A024040

/-! ## A024040.P3630554072948381494

`A055651(eq[2, A144257(n+1)/2])`
-/

namespace A024040.P3630554072948381494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144257 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A024040.P3630554072948381494

namespace A024040

/-- `A055651(eq[2, A144257(n+1)/2])` -/
def P3630554072948381494.Spec : Prop :=
  ∀ n, P3630554072948381494.a n = A024040 n

end A024040

/-!
# A024041: a(n) = 4^n - n^5.

The programs for A024041, the canonical program `A024041.P3679412600687701785` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024041 has offset 0).

The definition of A024041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n^5` (program `A024041.P3679412600687701785`, by `A024041.P3679412600687701785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024041.P3679412600687701785

`4^n-n^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024041

/-- `4^n-n^5` -/
def P3679412600687701785.Spec : Prop :=
  ∀ n, P3679412600687701785.a n = A024041 n

theorem P3679412600687701785.correct : P3679412600687701785.Spec := by
  intro n
  simp only [A024041]

end A024041

/-! ## A024041.P12542061547300424322

`(A000079(2*n)-n*n²²)*or(n, -1)²`
-/

namespace A024041.P12542061547300424322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) - (n * (n ^ 2) ^ 2 : ℤ)) * Int.lor (n : ℤ) (-1) ^ 2

end

end A024041.P12542061547300424322

namespace A024041

/-- `(A000079(2*n)-n*n²²)*or(n, -1)²` -/
def P12542061547300424322.Spec : Prop :=
  ∀ n, P12542061547300424322.a n = A024041 n

end A024041

/-! ## A024041.P6315553946007637042

`-(A154589(A005408(n))+A000584(n))`
-/

namespace A024041.P6315553946007637042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A154589 (A005408 n).toNat + A000584 n)

end

end A024041.P6315553946007637042

namespace A024041

/-- `-(A154589(A005408(n))+A000584(n))` -/
def P6315553946007637042.Spec : Prop :=
  ∀ n, P6315553946007637042.a n = A024041 n

end A024041

/-! ## A024041.P4415888057966019703

`Δ[A002450(n)-A263689(n)]`
-/

namespace A024041.P4415888057966019703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n - A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024041.P4415888057966019703

namespace A024041

/-- `Δ[A002450(n)-A263689(n)]` -/
def P4415888057966019703.Spec : Prop :=
  ∀ n, P4415888057966019703.a n = A024041 n

end A024041

/-! ## A024041.P15324759503956314218

`(A000079(n)²-A000584(n))%A183848(n+1)`
-/

namespace A024041.P15324759503956314218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n ^ 2 - A000584 n) (A183848 (n + 1))

end

end A024041.P15324759503956314218

namespace A024041

/-- `(A000079(n)²-A000584(n))%A183848(n+1)` -/
def P15324759503956314218.Spec : Prop :=
  ∀ n, P15324759503956314218.a n = A024041 n

end A024041

/-! ## A024041.P13091467689164757977

`(A000079(n)²-A000584(n))%A074545(n)`
-/

namespace A024041.P13091467689164757977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n ^ 2 - A000584 n) (A074545 n)

end

end A024041.P13091467689164757977

namespace A024041

/-- `(A000079(n)²-A000584(n))%A074545(n)` -/
def P13091467689164757977.Spec : Prop :=
  ∀ n, P13091467689164757977.a n = A024041 n

end A024041

/-!
# A024042: a(n) = 4^n - n^6.

The programs for A024042, the canonical program `A024042.P12206410416008276399` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024042 has offset 0).

The definition of A024042 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n^6` (program `A024042.P12206410416008276399`, by `A024042.P12206410416008276399.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024042.P12206410416008276399

`4^n-n^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024042

/-- `4^n-n^6` -/
def P12206410416008276399.Spec : Prop :=
  ∀ n, P12206410416008276399.a n = A024042 n

theorem P12206410416008276399.correct : P12206410416008276399.Spec := by
  intro n
  simp only [A024042]

end A024042

/-! ## A024042.P9777723266532161151

`A024013(n)*A097339(n)`
-/

namespace A024042.P9777723266532161151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024013 n * A097339 n

end

end A024042.P9777723266532161151

namespace A024042

/-- `A024013(n)*A097339(n)` -/
def P9777723266532161151.Spec : Prop :=
  ∀ n, P9777723266532161151.a n = A024042 n

end A024042

/-! ## A024042.P6123624696678259468

`(A033431(n)+A024013(n))*A024013(n)`
-/

namespace A024042.P6123624696678259468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033431 n + A024013 n) * A024013 n

end

end A024042.P6123624696678259468

namespace A024042

/-- `(A033431(n)+A024013(n))*A024013(n)` -/
def P6123624696678259468.Spec : Prop :=
  ∀ n, P6123624696678259468.a n = A024042 n

end A024042

/-! ## A024042.P12226207967345388040

`(A000079(n+1)-A024013(n))*A024013(n)`
-/

namespace A024042.P12226207967345388040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A024013 n) * A024013 n

end

end A024042.P12226207967345388040

namespace A024042

/-- `(A000079(n+1)-A024013(n))*A024013(n)` -/
def P12226207967345388040.Spec : Prop :=
  ∀ n, P12226207967345388040.a n = A024042 n

end A024042

/-! ## A024042.P13506857175294110955

`(A000079(n+1)-A097339(n))*A097339(n)`
-/

namespace A024042.P13506857175294110955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A097339 n) * A097339 n

end

end A024042.P13506857175294110955

namespace A024042

/-- `(A000079(n+1)-A097339(n))*A097339(n)` -/
def P13506857175294110955.Spec : Prop :=
  ∀ n, P13506857175294110955.a n = A024042 n

end A024042

/-!
# A024043: a(n) = 4^n - n^7.

The programs for A024043, the canonical program `A024043.P1840779117037446934` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024043 has offset 0).

The definition of A024043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n^7` (program `A024043.P1840779117037446934`, by `A024043.P1840779117037446934.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024043.P1840779117037446934

`4^n-n^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024043

/-- `4^n-n^7` -/
def P1840779117037446934.Spec : Prop :=
  ∀ n, P1840779117037446934.a n = A024043 n

theorem P1840779117037446934.correct : P1840779117037446934.Spec := by
  intro n
  simp only [A024043]

end A024043

/-! ## A024043.P7104770985328297927

`floor(A004171(n)/2-A001015(n))`
-/

namespace A024043.P7104770985328297927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004171 n : ℚ) / 2 - (A001015 n : ℚ)⌋

end

end A024043.P7104770985328297927

namespace A024043

/-- `floor(A004171(n)/2-A001015(n))` -/
def P7104770985328297927.Spec : Prop :=
  ∀ n, P7104770985328297927.a n = A024043 n

end A024043

/-! ## A024043.P9528286130623723180

`or(A004171(n)/2-A001015(n), A000007(n))`
-/

namespace A024043.P9528286130623723180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A004171 n : ℚ) / 2 - (A001015 n : ℚ))) (A000007 n)

end

end A024043.P9528286130623723180

namespace A024043

/-- `or(A004171(n)/2-A001015(n), A000007(n))` -/
def P9528286130623723180.Spec : Prop :=
  ∀ n, P9528286130623723180.a n = A024043 n

end A024043

/-! ## A024043.P8084950453638727191

`(A011782(2*n+1)-A001015(n))*A000035(A002061(n))`
-/

namespace A024043.P8084950453638727191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n + 1) - A001015 n) * A000035 (A002061 n).toNat

end

end A024043.P8084950453638727191

namespace A024043

/-- `(A011782(2*n+1)-A001015(n))*A000035(A002061(n))` -/
def P8084950453638727191.Spec : Prop :=
  ∀ n, P8084950453638727191.a n = A024043 n

end A024043

/-! ## A024043.P11717126659780256514

`(A011782(A005408(n))-A001015(n))%A241877(n)`
-/

namespace A024043.P11717126659780256514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (A005408 n).toNat - A001015 n) (A241877 (n + 12))

end

end A024043.P11717126659780256514

namespace A024043

/-- `(A011782(A005408(n))-A001015(n))%A241877(n)` -/
def P11717126659780256514.Spec : Prop :=
  ∀ n, P11717126659780256514.a n = A024043 n

end A024043

/-!
# A024044: a(n) = 4^n - n^8.

The programs for A024044, the canonical program `A024044.P7047766660382497046` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024044 has offset 0).

The definition of A024044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n^8` (program `A024044.P7047766660382497046`, by `A024044.P7047766660382497046.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024044.P7047766660382497046

`4^n-n^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024044

/-- `4^n-n^8` -/
def P7047766660382497046.Spec : Prop :=
  ∀ n, P7047766660382497046.a n = A024044 n

theorem P7047766660382497046.correct : P7047766660382497046.Spec := by
  intro n
  simp only [A024044]

end A024044

/-! ## A024044.P15006844629663639520

`(A000583(n)+A000079(n))*A024014(n)`
-/

namespace A024044.P15006844629663639520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n + A000079 n) * A024014 n

end

end A024044.P15006844629663639520

namespace A024044

/-- `(A000583(n)+A000079(n))*A024014(n)` -/
def P15006844629663639520.Spec : Prop :=
  ∀ n, P15006844629663639520.a n = A024044 n

end A024044

/-! ## A024044.P8467208514006869281

`(A000079(n+1)-A024014(n))*A024014(n)`
-/

namespace A024044.P8467208514006869281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A024014 n) * A024014 n

end

end A024044.P8467208514006869281

namespace A024044

/-- `(A000079(n+1)-A024014(n))*A024014(n)` -/
def P8467208514006869281.Spec : Prop :=
  ∀ n, P8467208514006869281.a n = A024044 n

end A024044

/-! ## A024044.P4887835147358736939

`(A000302(n)-A001016(n))*A007318(C(2, n))`
-/

namespace A024044.P4887835147358736939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 n - A001016 n) * A007318 (Nat.choose 2 n)

end

end A024044.P4887835147358736939

namespace A024044

/-- `(A000302(n)-A001016(n))*A007318(C(2, n))` -/
def P4887835147358736939.Spec : Prop :=
  ∀ n, P4887835147358736939.a n = A024044 n

end A024044

/-! ## A024044.P8946118522192577038

`(A000302(n)-A001016(n))*A114099(A114099(n))!`
-/

namespace A024044.P8946118522192577038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 n - A001016 n) * (Nat.factorial (A114099 (A114099 n).toNat).toNat : ℤ)

end

end A024044.P8946118522192577038

namespace A024044

/-- `(A000302(n)-A001016(n))*A114099(A114099(n))!` -/
def P8946118522192577038.Spec : Prop :=
  ∀ n, P8946118522192577038.a n = A024044 n

end A024044

/-!
# A024045: a(n) = 4^n-n^9.

The programs for A024045, the canonical program `A024045.P9049984292668528055` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024045 has offset 0).

The definition of A024045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n^9` (program `A024045.P9049984292668528055`, by `A024045.P9049984292668528055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024045.P9049984292668528055

`4^n-n^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024045

/-- `4^n-n^9` -/
def P9049984292668528055.Spec : Prop :=
  ∀ n, P9049984292668528055.a n = A024045 n

theorem P9049984292668528055.correct : P9049984292668528055.Spec := by
  intro n
  simp only [A024045]

end A024045

/-! ## A024045.P12324483388605880141

`(A000302(n)-A001017(n))*A057077(n)²`
-/

namespace A024045.P12324483388605880141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 n - A001017 n) * A057077 n ^ 2

end

end A024045.P12324483388605880141

namespace A024045

/-- `(A000302(n)-A001017(n))*A057077(n)²` -/
def P12324483388605880141.Spec : Prop :=
  ∀ n, P12324483388605880141.a n = A024045 n

end A024045

/-! ## A024045.P7919570795374043048

`(A000302(n)-A001017(n))*gcd(2, A191106(n+1))`
-/

namespace A024045.P7919570795374043048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 n - A001017 n) * (Int.gcd 2 (A191106 (n + 1)) : ℤ)

end

end A024045.P7919570795374043048

namespace A024045

/-- `(A000302(n)-A001017(n))*gcd(2, A191106(n+1))` -/
def P7919570795374043048.Spec : Prop :=
  ∀ n, P7919570795374043048.a n = A024045 n

end A024045

/-! ## A024045.P16736202712632612722

`(A000302(n)-A001017(n))*A007318(val(n+1, 4))`
-/

namespace A024045.P16736202712632612722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 n - A001017 n) * A007318 (SequenceMachineLib.valuation (n + 1) 4)

end

end A024045.P16736202712632612722

namespace A024045

/-- `(A000302(n)-A001017(n))*A007318(val(n+1, 4))` -/
def P16736202712632612722.Spec : Prop :=
  ∀ n, P16736202712632612722.a n = A024045 n

end A024045

/-! ## A024045.P5272827521197064741

`(A000302(n)-A001017(n))*A001221(A005383(n+1))`
-/

namespace A024045.P5272827521197064741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 n - A001017 n) * A001221 (A005383 (n + 1)).toNat

end

end A024045.P5272827521197064741

namespace A024045

/-- `(A000302(n)-A001017(n))*A001221(A005383(n+1))` -/
def P5272827521197064741.Spec : Prop :=
  ∀ n, P5272827521197064741.a n = A024045 n

end A024045

/-! ## A024045.P15355371213029217587

`(A000302(n)-A001017(n))*A085478(∑[n])`
-/

namespace A024045.P15355371213029217587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 n - A001017 n) * A085478 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024045.P15355371213029217587

namespace A024045

/-- `(A000302(n)-A001017(n))*A085478(∑[n])` -/
def P15355371213029217587.Spec : Prop :=
  ∀ n, P15355371213029217587.a n = A024045 n

end A024045

/-!
# A024046: a(n) = 4^n - n^10.

The programs for A024046, the canonical program `A024046.P4164765710998688204` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024046 has offset 0).

The definition of A024046 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n^10` (program `A024046.P4164765710998688204`, by `A024046.P4164765710998688204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024046.P4164765710998688204

`4^n-n^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024046

/-- `4^n-n^10` -/
def P4164765710998688204.Spec : Prop :=
  ∀ n, P4164765710998688204.a n = A024046 n

theorem P4164765710998688204.correct : P4164765710998688204.Spec := by
  intro n
  simp only [A024046]

end A024046

/-! ## A024046.P5008381104365103062

`-(A154589(2*n+1)+A008454(n))`
-/

namespace A024046.P5008381104365103062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A154589 (2 * n + 1) + A008454 n)

end

end A024046.P5008381104365103062

namespace A024046

/-- `-(A154589(2*n+1)+A008454(n))` -/
def P5008381104365103062.Spec : Prop :=
  ∀ n, P5008381104365103062.a n = A024046 n

end A024046

/-! ## A024046.P17171534635020664393

`(A000584(n)+A000079(n))*A024015(n)`
-/

namespace A024046.P17171534635020664393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000584 n + A000079 n) * A024015 n

end

end A024046.P17171534635020664393

namespace A024046

/-- `(A000584(n)+A000079(n))*A024015(n)` -/
def P17171534635020664393.Spec : Prop :=
  ∀ n, P17171534635020664393.a n = A024046 n

end A024046

/-! ## A024046.P5786538530904739613

`(A000079(n)²-A008454(n))*a(n-A028310(n))` with `a(0)=1`
-/

namespace A024046.P5786538530904739613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000079 n ^ 2 - A008454 n) * a ((n : ℤ) - A028310 n).toNat

end

end A024046.P5786538530904739613

namespace A024046

/-- `(A000079(n)²-A008454(n))*a(n-A028310(n))` -/
def P5786538530904739613.Spec : Prop :=
  ∀ n, P5786538530904739613.a n = A024046 n

end A024046

/-! ## A024046.P5320663140427018421

`(A000079(2*n)-A008454(n))*a(n-A028310(n))` with `a(0)=1`
-/

namespace A024046.P5320663140427018421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000079 (2 * n) - A008454 n) * a ((n : ℤ) - A028310 n).toNat

end

end A024046.P5320663140427018421

namespace A024046

/-- `(A000079(2*n)-A008454(n))*a(n-A028310(n))` -/
def P5320663140427018421.Spec : Prop :=
  ∀ n, P5320663140427018421.a n = A024046 n

end A024046

/-!
# A024047: a(n) = 4^n - n^11.

The programs for A024047, the canonical program `A024047.P1624699388845127248` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024047 has offset 0).

The definition of A024047 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n^11` (program `A024047.P1624699388845127248`, by `A024047.P1624699388845127248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024047.P1624699388845127248

`4^n-n^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024047

/-- `4^n-n^11` -/
def P1624699388845127248.Spec : Prop :=
  ∀ n, P1624699388845127248.a n = A024047 n

theorem P1624699388845127248.correct : P1624699388845127248.Spec := by
  intro n
  simp only [A024047]

end A024047

/-! ## A024047.P4814577675815362486

`(A122803(n)²-A008455(n))*A033999(n)²`
-/

namespace A024047.P4814577675815362486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122803 n ^ 2 - A008455 n) * A033999 n ^ 2

end

end A024047.P4814577675815362486

namespace A024047

/-- `(A122803(n)²-A008455(n))*A033999(n)²` -/
def P4814577675815362486.Spec : Prop :=
  ∀ n, P4814577675815362486.a n = A024047 n

end A024047

/-! ## A024047.P9411042008738739840

`(A122803(n)²-A008455(n))*∏{p}[n, A001221(#)]`
-/

namespace A024047.P9411042008738739840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122803 n ^ 2 - A008455 n) * (∏ p ∈ Nat.primeFactors (f1 n), A001221 p)

end

end A024047.P9411042008738739840

namespace A024047

/-- `(A122803(n)²-A008455(n))*∏{p}[n, A001221(#)]` -/
def P9411042008738739840.Spec : Prop :=
  ∀ n, P9411042008738739840.a n = A024047 n

end A024047

/-! ## A024047.P10384413654029714304

`(A122803(n)²-A008455(n))*A178792(n)%2`
-/

namespace A024047.P10384413654029714304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122803 n ^ 2 - A008455 n) * Int.tmod (A178792 n) 2

end

end A024047.P10384413654029714304

namespace A024047

/-- `(A122803(n)²-A008455(n))*A178792(n)%2` -/
def P10384413654029714304.Spec : Prop :=
  ∀ n, P10384413654029714304.a n = A024047 n

end A024047

/-! ## A024047.P5338598243428807048

`(A122803(n)²-A008455(n))%A024475(A000124(n+5)+1)`
-/

namespace A024047.P5338598243428807048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122803 n ^ 2 - A008455 n) (A024475 (A000124 (n + 5) + 1).toNat)

end

end A024047.P5338598243428807048

namespace A024047

/-- `(A122803(n)²-A008455(n))%A024475(A000124(n+5)+1)` -/
def P5338598243428807048.Spec : Prop :=
  ∀ n, P5338598243428807048.a n = A024047 n

end A024047

/-!
# A024048: a(n) = 4^n - n^12.

The programs for A024048, the canonical program `A024048.P16649905196011276521` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024048 has offset 0).

The definition of A024048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n^12` (program `A024048.P16649905196011276521`, by `A024048.P16649905196011276521.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024048.P16649905196011276521

`4^n-n^12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024048

/-- `4^n-n^12` -/
def P16649905196011276521.Spec : Prop :=
  ∀ n, P16649905196011276521.a n = A024048 n

theorem P16649905196011276521.correct : P16649905196011276521.Spec := by
  intro n
  simp only [A024048]

end A024048

/-! ## A024048.P12459190996289707888

`(2^n+n^6)*A024016(n)`
-/

namespace A024048.P12459190996289707888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + n ^ 6 : ℤ) * A024016 n

end

end A024048.P12459190996289707888

namespace A024048

/-- `(2^n+n^6)*A024016(n)` -/
def P12459190996289707888.Spec : Prop :=
  ∀ n, P12459190996289707888.a n = A024048 n

end A024048

/-!
# A024049: a(n) = 5^n - 1.

The programs for A024049, the canonical program `A024049.P18010332611898517157` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024049 has offset 0).

The definition of A024049 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-1` (program `A024049.P18010332611898517157`, by `A024049.P18010332611898517157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024049.P18010332611898517157

`5^n-1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024049

/-- `5^n-1` -/
def P18010332611898517157.Spec : Prop :=
  ∀ n, P18010332611898517157.a n = A024049 n

theorem P18010332611898517157.correct : P18010332611898517157.Spec := by
  intro n
  simp only [A024049]

end A024049

/-!
# A024050: a(n) = 5^n - n.

The programs for A024050, the canonical program `A024050.P1402703180244237776` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024050 has offset 0).

The definition of A024050 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-n` (program `A024050.P1402703180244237776`, by `A024050.P1402703180244237776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024050.P1402703180244237776

`5^n-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024050

/-- `5^n-n` -/
def P1402703180244237776.Spec : Prop :=
  ∀ n, P1402703180244237776.a n = A024050 n

theorem P1402703180244237776.correct : P1402703180244237776.Spec := by
  intro n
  simp only [A024050]

end A024050

/-!
# A024051: a(n) = 5^n - n^2.

The programs for A024051, the canonical program `A024051.P13633731919369444947` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024051 has offset 0).

The definition of A024051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-n²` (program `A024051.P13633731919369444947`, by `A024051.P13633731919369444947.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024051.P13633731919369444947

`5^n-n²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024051

/-- `5^n-n²` -/
def P13633731919369444947.Spec : Prop :=
  ∀ n, P13633731919369444947.a n = A024051 n

theorem P13633731919369444947.correct : P13633731919369444947.Spec := by
  intro n
  simp only [A024051]

end A024051

/-! ## A024051.P1500052695416376924

`floor(∑[5*a(n-1)]-n²)` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A024051.P1500052695416376924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A024051.P1500052695416376924

namespace A024051

/-- `floor(∑[5*a(n-1)]-n²)` -/
def P1500052695416376924.Spec : Prop :=
  ∀ n, P1500052695416376924.a n = A024051 n

end A024051

/-! ## A024051.P6047018051070132890

`abs(n²-A000351(n))`
-/

namespace A024051.P6047018051070132890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000351 n|

end

end A024051.P6047018051070132890

namespace A024051

/-- `abs(n²-A000351(n))` -/
def P6047018051070132890.Spec : Prop :=
  ∀ n, P6047018051070132890.a n = A024051 n

end A024051

/-! ## A024051.P650885201049400822

`abs(5^n-A000290(n))`
-/

namespace A024051.P650885201049400822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - A000290 n|

end

end A024051.P650885201049400822

namespace A024051

/-- `abs(5^n-A000290(n))` -/
def P650885201049400822.Spec : Prop :=
  ∀ n, P650885201049400822.a n = A024051 n

end A024051

/-! ## A024051.P15578654298003757458

`xor(1, A274072(n)-n²)`
-/

namespace A024051.P15578654298003757458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A274072 n - (n ^ 2 : ℤ))

end

end A024051.P15578654298003757458

namespace A024051

/-- `xor(1, A274072(n)-n²)` -/
def P15578654298003757458.Spec : Prop :=
  ∀ n, P15578654298003757458.a n = A024051 n

end A024051

/-! ## A024051.P9444928504466467564

`abs(A104745(n)-n²-n)`
-/

namespace A024051.P9444928504466467564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104745 n - (n ^ 2 : ℤ) - (n : ℤ)|

end

end A024051.P9444928504466467564

namespace A024051

/-- `abs(A104745(n)-n²-n)` -/
def P9444928504466467564.Spec : Prop :=
  ∀ n, P9444928504466467564.a n = A024051 n

end A024051

/-! ## A024051.P17042921714577092435

`∑[A005054(n)-A004273(n)]`
-/

namespace A024051.P17042921714577092435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024051.P17042921714577092435

namespace A024051

/-- `∑[A005054(n)-A004273(n)]` -/
def P17042921714577092435.Spec : Prop :=
  ∀ n, P17042921714577092435.a n = A024051 n

end A024051

/-! ## A024051.P14121617473925138712

`record[A074872(n+1)-A002620(n)]`
-/

namespace A024051.P14121617473925138712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1) - A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024051.P14121617473925138712

namespace A024051

/-- `record[A074872(n+1)-A002620(n)]` -/
def P14121617473925138712.Spec : Prop :=
  ∀ n, P14121617473925138712.a n = A024051 n

end A024051

/-! ## A024051.P11993588396959047082

`record[A074872(n+1)-A211521(n)]`
-/

namespace A024051.P11993588396959047082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1) - A211521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024051.P11993588396959047082

namespace A024051

/-- `record[A074872(n+1)-A211521(n)]` -/
def P11993588396959047082.Spec : Prop :=
  ∀ n, P11993588396959047082.a n = A024051 n

end A024051

/-!
# A024052: a(n) = 5^n - n^3.

The programs for A024052, the canonical program `A024052.P12276298760815568966` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024052 has offset 0).

The definition of A024052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-n^3` (program `A024052.P12276298760815568966`, by `A024052.P12276298760815568966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024052.P12276298760815568966

`5^n-n^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024052

/-- `5^n-n^3` -/
def P12276298760815568966.Spec : Prop :=
  ∀ n, P12276298760815568966.a n = A024052 n

theorem P12276298760815568966.correct : P12276298760815568966.Spec := by
  intro n
  simp only [A024052]

end A024052

/-! ## A024052.P6470726598180613448

`abs(A000351(n)-A000578(n))`
-/

namespace A024052.P6470726598180613448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A000578 n|

end

end A024052.P6470726598180613448

namespace A024052

/-- `abs(A000351(n)-A000578(n))` -/
def P6470726598180613448.Spec : Prop :=
  ∀ n, P6470726598180613448.a n = A024052 n

end A024052

/-! ## A024052.P11583686020535910494

`record[A056451(n)-A109900(n)]`
-/

namespace A024052.P11583686020535910494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 n - A109900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024052.P11583686020535910494

namespace A024052

/-- `record[A056451(n)-A109900(n)]` -/
def P11583686020535910494.Spec : Prop :=
  ∀ n, P11583686020535910494.a n = A024052 n

end A024052

/-! ## A024052.P13211630551077604523

`abs(A000351(n)+n-A034262(n))`
-/

namespace A024052.P13211630551077604523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n + (n : ℤ) - A034262 n|

end

end A024052.P13211630551077604523

namespace A024052

/-- `abs(A000351(n)+n-A034262(n))` -/
def P13211630551077604523.Spec : Prop :=
  ∀ n, P13211630551077604523.a n = A024052 n

end A024052

/-! ## A024052.P10941232189300936605

`(A000351(n)+n-A034262(n))*A014963(2*A001748(n+1))`
-/

namespace A024052.P10941232189300936605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000351 n + (n : ℤ) - A034262 n) * A014963 (2 * A001748 (n + 1)).toNat

end

end A024052.P10941232189300936605

namespace A024052

/-- `(A000351(n)+n-A034262(n))*A014963(2*A001748(n+1))` -/
def P10941232189300936605.Spec : Prop :=
  ∀ n, P10941232189300936605.a n = A024052 n

end A024052

/-! ## A024052.P13475705400651632491

`Δ[A003463(n)-C(n, 2)²]`
-/

namespace A024052.P13475705400651632491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - (Nat.choose n 2 ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024052.P13475705400651632491

namespace A024052

/-- `Δ[A003463(n)-C(n, 2)²]` -/
def P13475705400651632491.Spec : Prop :=
  ∀ n, P13475705400651632491.a n = A024052 n

end A024052

/-! ## A024052.P6254268906869017594

`abs(A005062(n)-A024065(n))`
-/

namespace A024052.P6254268906869017594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005062 n - A024065 n|

end

end A024052.P6254268906869017594

namespace A024052

/-- `abs(A005062(n)-A024065(n))` -/
def P6254268906869017594.Spec : Prop :=
  ∀ n, P6254268906869017594.a n = A024052 n

end A024052

/-!
# A024053: a(n) = 5^n - n^4.

The programs for A024053, the canonical program `A024053.P4658988691541194682` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024053 has offset 0).

The definition of A024053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-n^4` (program `A024053.P4658988691541194682`, by `A024053.P4658988691541194682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024053.P4658988691541194682

`5^n-n^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024053

/-- `5^n-n^4` -/
def P4658988691541194682.Spec : Prop :=
  ∀ n, P4658988691541194682.a n = A024053 n

theorem P4658988691541194682.correct : P4658988691541194682.Spec := by
  intro n
  simp only [A024053]

end A024053

/-! ## A024053.P6585614771250320668

`abs(n²²-A000351(n))`
-/

namespace A024053.P6585614771250320668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) - A000351 n|

end

end A024053.P6585614771250320668

namespace A024053

/-- `abs(n²²-A000351(n))` -/
def P6585614771250320668.Spec : Prop :=
  ∀ n, P6585614771250320668.a n = A024053 n

end A024053

/-! ## A024053.P16424834376275779696

`abs(A024027(n)+A005058(n))`
-/

namespace A024053.P16424834376275779696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024027 n + A005058 n|

end

end A024053.P16424834376275779696

namespace A024053

/-- `abs(A024027(n)+A005058(n))` -/
def P16424834376275779696.Spec : Prop :=
  ∀ n, P16424834376275779696.a n = A024053 n

end A024053

/-! ## A024053.P4501767882714348318

`abs(A000351(n)-A000583(n))`
-/

namespace A024053.P4501767882714348318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A000583 n|

end

end A024053.P4501767882714348318

namespace A024053

/-- `abs(A000351(n)-A000583(n))` -/
def P4501767882714348318.Spec : Prop :=
  ∀ n, P4501767882714348318.a n = A024053 n

end A024053

/-! ## A024053.P15327594671914696233

`record[A074872(n+1)-A002620(n)²]`
-/

namespace A024053.P15327594671914696233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1) - A002620 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024053.P15327594671914696233

namespace A024053

/-- `record[A074872(n+1)-A002620(n)²]` -/
def P15327594671914696233.Spec : Prop :=
  ∀ n, P15327594671914696233.a n = A024053 n

end A024053

/-! ## A024053.P4089089164808689941

`record[A074872(n+1)-A211521(n)²]`
-/

namespace A024053.P4089089164808689941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1) - A211521 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024053.P4089089164808689941

namespace A024053

/-- `record[A074872(n+1)-A211521(n)²]` -/
def P4089089164808689941.Spec : Prop :=
  ∀ n, P4089089164808689941.a n = A024053 n

end A024053

/-! ## A024053.P5851201401032112101

`or(A000351(n)-A000583(n), A000007(n))`
-/

namespace A024053.P5851201401032112101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000351 n - A000583 n) (A000007 n)

end

end A024053.P5851201401032112101

namespace A024053

/-- `or(A000351(n)-A000583(n), A000007(n))` -/
def P5851201401032112101.Spec : Prop :=
  ∀ n, P5851201401032112101.a n = A024053 n

end A024053

/-! ## A024053.P5743942150976532724

`(A000351(n)-A000583(n))*A093178(2*n)`
-/

namespace A024053.P5743942150976532724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000351 n - A000583 n) * A093178 (2 * n)

end

end A024053.P5743942150976532724

namespace A024053

/-- `(A000351(n)-A000583(n))*A093178(2*n)` -/
def P5743942150976532724.Spec : Prop :=
  ∀ n, P5743942150976532724.a n = A024053 n

end A024053

/-! ## A024053.P11552082818891562293

`or(A000351(n)-A000583(n), A056594(2*n+1))`
-/

namespace A024053.P11552082818891562293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000351 n - A000583 n) (A056594 (2 * n + 1))

end

end A024053.P11552082818891562293

namespace A024053

/-- `or(A000351(n)-A000583(n), A056594(2*n+1))` -/
def P11552082818891562293.Spec : Prop :=
  ∀ n, P11552082818891562293.a n = A024053 n

end A024053

/-! ## A024053.P3894616372642924473

`(A000351(n)-A000583(n))*A000002(A268354(n+1))`
-/

namespace A024053.P3894616372642924473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000351 n - A000583 n) * A000002 (A268354 (n + 1)).toNat

end

end A024053.P3894616372642924473

namespace A024053

/-- `(A000351(n)-A000583(n))*A000002(A268354(n+1))` -/
def P3894616372642924473.Spec : Prop :=
  ∀ n, P3894616372642924473.a n = A024053 n

end A024053

/-! ## A024053.P6044806262901177228

`abs(A024079(n)-A121213(n))`
-/

namespace A024053.P6044806262901177228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024079 n - A121213 n|

end

end A024053.P6044806262901177228

namespace A024053

/-- `abs(A024079(n)-A121213(n))` -/
def P6044806262901177228.Spec : Prop :=
  ∀ n, P6044806262901177228.a n = A024053 n

end A024053

/-! ## A024053.P16774742153339761858

`(A024079(n)-A121213(n))*A103451(∑[n])`
-/

namespace A024053.P16774742153339761858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024079 n - A121213 n) * A103451 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024053.P16774742153339761858

namespace A024053

/-- `(A024079(n)-A121213(n))*A103451(∑[n])` -/
def P16774742153339761858.Spec : Prop :=
  ∀ n, P16774742153339761858.a n = A024053 n

end A024053

/-! ## A024053.P12083089467614117539

`xor(A024079(n)-A121213(n), A000007(n+1))`
-/

namespace A024053.P12083089467614117539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024079 n - A121213 n) (A000007 (n + 1))

end

end A024053.P12083089467614117539

namespace A024053

/-- `xor(A024079(n)-A121213(n), A000007(n+1))` -/
def P12083089467614117539.Spec : Prop :=
  ∀ n, P12083089467614117539.a n = A024053 n

end A024053

/-! ## A024053.P13730998607389234771

`xor(A024079(n)-A121213(n), A000035(2*n))`
-/

namespace A024053.P13730998607389234771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024079 n - A121213 n) (A000035 (2 * n))

end

end A024053.P13730998607389234771

namespace A024053

/-- `xor(A024079(n)-A121213(n), A000035(2*n))` -/
def P13730998607389234771.Spec : Prop :=
  ∀ n, P13730998607389234771.a n = A024053 n

end A024053

/-! ## A024053.P17475328346622373182

`(A024079(n)-A121213(n))*A001221(A045380(n+1))`
-/

namespace A024053.P17475328346622373182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024079 n - A121213 n) * A001221 (A045380 (n + 1)).toNat

end

end A024053.P17475328346622373182

namespace A024053

/-- `(A024079(n)-A121213(n))*A001221(A045380(n+1))` -/
def P17475328346622373182.Spec : Prop :=
  ∀ n, P17475328346622373182.a n = A024053 n

end A024053

/-! ## A024053.P18416321563278168777

`(A024079(n)-A121213(n))*A001221(A060254(n+1))`
-/

namespace A024053.P18416321563278168777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024079 n - A121213 n) * A001221 (A060254 (n + 1)).toNat

end

end A024053.P18416321563278168777

namespace A024053

/-- `(A024079(n)-A121213(n))*A001221(A060254(n+1))` -/
def P18416321563278168777.Spec : Prop :=
  ∀ n, P18416321563278168777.a n = A024053 n

end A024053

/-! ## A024053.P11330459973697640947

`(A024079(n)-A121213(n))%A270386(n+1)`
-/

namespace A024053.P11330459973697640947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024079 n - A121213 n) (A270386 (n + 1))

end

end A024053.P11330459973697640947

namespace A024053

/-- `(A024079(n)-A121213(n))%A270386(n+1)` -/
def P11330459973697640947.Spec : Prop :=
  ∀ n, P11330459973697640947.a n = A024053 n

end A024053

/-! ## A024053.P6317858222074690738

`(A024079(n)-A121213(n))%A051426(A005408(n))`
-/

namespace A024053.P6317858222074690738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024079 n - A121213 n) (A051426 (A005408 n).toNat)

end

end A024053.P6317858222074690738

namespace A024053

/-- `(A024079(n)-A121213(n))%A051426(A005408(n))` -/
def P6317858222074690738.Spec : Prop :=
  ∀ n, P6317858222074690738.a n = A024053 n

end A024053

/-!
# A024054: a(n) = 5^n - n^5.

The programs for A024054, the canonical program `A024054.P8687601740147051981` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024054 has offset 0).

The definition of A024054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-n^5` (program `A024054.P8687601740147051981`, by `A024054.P8687601740147051981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024054.P8687601740147051981

`5^n-n^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024054

/-- `5^n-n^5` -/
def P8687601740147051981.Spec : Prop :=
  ∀ n, P8687601740147051981.a n = A024054 n

theorem P8687601740147051981.correct : P8687601740147051981.Spec := by
  intro n
  simp only [A024054]

end A024054

/-! ## A024054.P8054741013114843658

`(A024049(n)+A024003(n))%A001764(n+3)`
-/

namespace A024054.P8054741013114843658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024049 n + A024003 n) (A001764 (n + 3))

end

end A024054.P8054741013114843658

namespace A024054

/-- `(A024049(n)+A024003(n))%A001764(n+3)` -/
def P8054741013114843658.Spec : Prop :=
  ∀ n, P8054741013114843658.a n = A024054 n

end A024054

/-! ## A024054.P2309958978603224710

`(A024049(n)+A024003(n))%A067771(n)²`
-/

namespace A024054.P2309958978603224710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024049 n + A024003 n) (A067771 n ^ 2)

end

end A024054.P2309958978603224710

namespace A024054

/-- `(A024049(n)+A024003(n))%A067771(n)²` -/
def P2309958978603224710.Spec : Prop :=
  ∀ n, P2309958978603224710.a n = A024054 n

end A024054

/-! ## A024054.P580588890889737812

`A055651(A055999(n+3))`
-/

namespace A024054.P580588890889737812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A055999 (n + 3)).toNat

end

end A024054.P580588890889737812

namespace A024054

/-- `A055651(A055999(n+3))` -/
def P580588890889737812.Spec : Prop :=
  ∀ n, P580588890889737812.a n = A024054 n

end A024054

/-! ## A024054.P6509544025336853864

`A055651(eq[5, A025581(n)])`
-/

namespace A024054.P6509544025336853864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024054.P6509544025336853864

namespace A024054

/-- `A055651(eq[5, A025581(n)])` -/
def P6509544025336853864.Spec : Prop :=
  ∀ n, P6509544025336853864.a n = A024054 n

end A024054

/-! ## A024054.P8637135005024801319

`A055651(Δ[Δ[A095667(n)]])`
-/

namespace A024054.P8637135005024801319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (f1 (n + 1) - f1 n).toNat

end

end A024054.P8637135005024801319

namespace A024054

/-- `A055651(Δ[Δ[A095667(n)]])` -/
def P8637135005024801319.Spec : Prop :=
  ∀ n, P8637135005024801319.a n = A024054 n

end A024054

/-! ## A024054.P10678508520656857286

`A055651(Δ[A023551(n+1)])`
-/

namespace A024054.P10678508520656857286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (f1 (n + 1) - f1 n).toNat

end

end A024054.P10678508520656857286

namespace A024054

/-- `A055651(Δ[A023551(n+1)])` -/
def P10678508520656857286.Spec : Prop :=
  ∀ n, P10678508520656857286.a n = A024054 n

end A024054

/-! ## A024054.P15505283224230058156

`A055651(A056000(n+2)+4)`
-/

namespace A024054.P15505283224230058156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A056000 (n + 2) + 4).toNat

end

end A024054.P15505283224230058156

namespace A024054

/-- `A055651(A056000(n+2)+4)` -/
def P15505283224230058156.Spec : Prop :=
  ∀ n, P15505283224230058156.a n = A024054 n

end A024054

/-! ## A024054.P11271704860458843572

`A055651(A000096(n+5)-5)`
-/

namespace A024054.P11271704860458843572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A000096 (n + 5) - 5).toNat

end

end A024054.P11271704860458843572

namespace A024054

/-- `A055651(A000096(n+5)-5)` -/
def P11271704860458843572.Spec : Prop :=
  ∀ n, P11271704860458843572.a n = A024054 n

end A024054

/-!
# A024055: a(n) = 5^n - n^6.

The programs for A024055, the canonical program `A024055.P1604579607081494214` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024055 has offset 0).

The definition of A024055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-n^6` (program `A024055.P1604579607081494214`, by `A024055.P1604579607081494214.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024055.P1604579607081494214

`5^n-n^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024055

/-- `5^n-n^6` -/
def P1604579607081494214.Spec : Prop :=
  ∀ n, P1604579607081494214.a n = A024055 n

theorem P1604579607081494214.correct : P1604579607081494214.Spec := by
  intro n
  simp only [A024055]

end A024055

/-! ## A024055.P16225062658675698671

`and(A024016(n)+A005057(n), abs(1-n)-n)`
-/

namespace A024055.P16225062658675698671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024016 n + A005057 n) (|1 - (n : ℤ)| - (n : ℤ))

end

end A024055.P16225062658675698671

namespace A024055

/-- `and(A024016(n)+A005057(n), abs(1-n)-n)` -/
def P16225062658675698671.Spec : Prop :=
  ∀ n, P16225062658675698671.a n = A024055 n

end A024055

/-! ## A024055.P3983193384334206983

`(A024016(n)+A005057(n))/A025469(n)!`
-/

namespace A024055.P3983193384334206983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024016 n + A005057 n : ℚ) / (Nat.factorial (A025469 n).toNat : ℚ)

end

end A024055.P3983193384334206983

namespace A024055

/-- `(A024016(n)+A005057(n))/A025469(n)!` -/
def P3983193384334206983.Spec : Prop :=
  ∀ n, P3983193384334206983.a n = (A024055 n : ℚ)

end A024055

/-! ## A024055.P444264360185033924

`(A024016(n)+A005057(n))^(A000038(n)+1)`
-/

namespace A024055.P444264360185033924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024016 n + A005057 n : ℚ) ^ (A000038 n + 1 : ℤ)

end

end A024055.P444264360185033924

namespace A024055

/-- `(A024016(n)+A005057(n))^(A000038(n)+1)` -/
def P444264360185033924.Spec : Prop :=
  ∀ n, P444264360185033924.a n = (A024055 n : ℚ)

end A024055

/-! ## A024055.P1578531674008730203

`(A024016(n)+A005057(n))*A008683(-or(2*n+1, -2))`
-/

namespace A024055.P1578531674008730203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024016 n + A005057 n) * A008683 (-Int.lor (2 * n + 1 : ℤ) (-2)).toNat

end

end A024055.P1578531674008730203

namespace A024055

/-- `(A024016(n)+A005057(n))*A008683(-or(2*n+1, -2))` -/
def P1578531674008730203.Spec : Prop :=
  ∀ n, P1578531674008730203.a n = A024055 n

end A024055

/-! ## A024055.P6181717001805511270

`(A024016(n)+A005057(n))/A033273(A005385(n+1))`
-/

namespace A024055.P6181717001805511270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024016 n + A005057 n : ℚ) / (A033273 (A005385 (n + 1)).toNat : ℚ)

end

end A024055.P6181717001805511270

namespace A024055

/-- `(A024016(n)+A005057(n))/A033273(A005385(n+1))` -/
def P6181717001805511270.Spec : Prop :=
  ∀ n, P6181717001805511270.a n = (A024055 n : ℚ)

end A024055

/-! ## A024055.P15185038258087902968

`(A024016(n)+A005057(n))^(A008683(A060264(n))+2)`
-/

namespace A024055.P15185038258087902968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024016 n + A005057 n : ℚ) ^ (A008683 (A060264 n).toNat + 2 : ℤ)

end

end A024055.P15185038258087902968

namespace A024055

/-- `(A024016(n)+A005057(n))^(A008683(A060264(n))+2)` -/
def P15185038258087902968.Spec : Prop :=
  ∀ n, P15185038258087902968.a n = (A024055 n : ℚ)

end A024055

/-! ## A024055.P4577390085752193427

`(A024016(n)+A005057(n))%A126109(n)`
-/

namespace A024055.P4577390085752193427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024016 n + A005057 n) (A126109 n)

end

end A024055.P4577390085752193427

namespace A024055

/-- `(A024016(n)+A005057(n))%A126109(n)` -/
def P4577390085752193427.Spec : Prop :=
  ∀ n, P4577390085752193427.a n = A024055 n

end A024055

/-!
# A024056: a(n) = 5^n - n^7.

The programs for A024056, the canonical program `A024056.P15041479063919427648` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024056 has offset 0).

The definition of A024056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-n^7` (program `A024056.P15041479063919427648`, by `A024056.P15041479063919427648.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024056.P15041479063919427648

`5^n-n^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024056

/-- `5^n-n^7` -/
def P15041479063919427648.Spec : Prop :=
  ∀ n, P15041479063919427648.a n = A024056 n

theorem P15041479063919427648.correct : P15041479063919427648.Spec := by
  intro n
  simp only [A024056]

end A024056

/-! ## A024056.P14996282405767124334

`(1-A024005(n)-A000351(n))*or(n, -1)`
-/

namespace A024056.P14996282405767124334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A024005 n - A000351 n) * Int.lor (n : ℤ) (-1)

end

end A024056.P14996282405767124334

namespace A024056

/-- `(1-A024005(n)-A000351(n))*or(n, -1)` -/
def P14996282405767124334.Spec : Prop :=
  ∀ n, P14996282405767124334.a n = A024056 n

end A024056

/-! ## A024056.P2626522885804585426

`(1-A024005(n)-A000351(n))*(A007318(C(3, n))-2)`
-/

namespace A024056.P2626522885804585426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A024005 n - A000351 n) * (A007318 (Nat.choose 3 n) - 2)

end

end A024056.P2626522885804585426

namespace A024056

/-- `(1-A024005(n)-A000351(n))*(A007318(C(3, n))-2)` -/
def P2626522885804585426.Spec : Prop :=
  ∀ n, P2626522885804585426.a n = A024056 n

end A024056

/-! ## A024056.P4364520924637112913

`(1-A024005(n)-A000351(n))*(2*n-A005408(n))`
-/

namespace A024056.P4364520924637112913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A024005 n - A000351 n) * ((2 * n : ℤ) - A005408 n)

end

end A024056.P4364520924637112913

namespace A024056

/-- `(1-A024005(n)-A000351(n))*(2*n-A005408(n))` -/
def P4364520924637112913.Spec : Prop :=
  ∀ n, P4364520924637112913.a n = A024056 n

end A024056

/-! ## A024056.P7838523816508038385

`(1-A024005(n)-A000351(n))*(A006093(n+1)-A000040(n+1))`
-/

namespace A024056.P7838523816508038385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A024005 n - A000351 n) * (A006093 (n + 1) - A000040 (n + 1))

end

end A024056.P7838523816508038385

namespace A024056

/-- `(1-A024005(n)-A000351(n))*(A006093(n+1)-A000040(n+1))` -/
def P7838523816508038385.Spec : Prop :=
  ∀ n, P7838523816508038385.a n = A024056 n

end A024056

/-!
# A024057: a(n) = 5^n - n^8.

The programs for A024057, the canonical program `A024057.P7618029844017451059` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024057 has offset 0).

The definition of A024057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-n^8` (program `A024057.P7618029844017451059`, by `A024057.P7618029844017451059.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024057.P7618029844017451059

`5^n-n^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024057

/-- `5^n-n^8` -/
def P7618029844017451059.Spec : Prop :=
  ∀ n, P7618029844017451059.a n = A024057 n

theorem P7618029844017451059.correct : P7618029844017451059.Spec := by
  intro n
  simp only [A024057]

end A024057

/-! ## A024057.P3585106078639857877

`-(n²²²-A034474(n)+1)`
-/

namespace A024057.P3585106078639857877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((((n ^ 2) ^ 2) ^ 2 : ℤ) - A034474 n + 1)

end

end A024057.P3585106078639857877

namespace A024057

/-- `-(n²²²-A034474(n)+1)` -/
def P3585106078639857877.Spec : Prop :=
  ∀ n, P3585106078639857877.a n = A024057 n

end A024057

/-!
# A024058: a(n) = 5^n - n^9.

The programs for A024058, the canonical program `A024058.P18156841119391137784` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024058 has offset 0).

The definition of A024058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-n^9` (program `A024058.P18156841119391137784`, by `A024058.P18156841119391137784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024058.P18156841119391137784

`5^n-n^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024058

/-- `5^n-n^9` -/
def P18156841119391137784.Spec : Prop :=
  ∀ n, P18156841119391137784.a n = A024058 n

theorem P18156841119391137784.correct : P18156841119391137784.Spec := by
  intro n
  simp only [A024058]

end A024058

/-! ## A024058.P3253106099439218422

`floor(A024032(n)+2/3*A226511(n))`
-/

namespace A024058.P3253106099439218422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024032 n : ℚ) + (2 : ℚ) / 3 * (A226511 n : ℚ)⌋

end

end A024058.P3253106099439218422

namespace A024058

/-- `floor(A024032(n)+2/3*A226511(n))` -/
def P3253106099439218422.Spec : Prop :=
  ∀ n, P3253106099439218422.a n = A024058 n

end A024058

/-! ## A024058.P10662858847366807855

`floor(A024032(n)+(A093138(n+1)-A169604(n))/A007283(n))`
-/

namespace A024058.P10662858847366807855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024032 n : ℚ) + (A093138 (n + 1) - A169604 n : ℚ) / (A007283 n : ℚ)⌋

end

end A024058.P10662858847366807855

namespace A024058

/-- `floor(A024032(n)+(A093138(n+1)-A169604(n))/A007283(n))` -/
def P10662858847366807855.Spec : Prop :=
  ∀ n, P10662858847366807855.a n = A024058 n

end A024058

/-! ## A024058.P8223958348206137971

`(A000351(n)-A001017(n))%A007106(n+2)`
-/

namespace A024058.P8223958348206137971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n - A001017 n) (A007106 (n + 2))

end

end A024058.P8223958348206137971

namespace A024058

/-- `(A000351(n)-A001017(n))%A007106(n+2)` -/
def P8223958348206137971.Spec : Prop :=
  ∀ n, P8223958348206137971.a n = A024058 n

end A024058

/-!
# A024059: a(n) = 5^n - n^10.

The programs for A024059, the canonical program `A024059.P13121082423918042443` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024059 has offset 0).

The definition of A024059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-n^10` (program `A024059.P13121082423918042443`, by `A024059.P13121082423918042443.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024059.P13121082423918042443

`5^n-n^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024059

/-- `5^n-n^10` -/
def P13121082423918042443.Spec : Prop :=
  ∀ n, P13121082423918042443.a n = A024059 n

theorem P13121082423918042443.correct : P13121082423918042443.Spec := by
  intro n
  simp only [A024059]

end A024059

/-! ## A024059.P152785624944955642

`-(A000584(n)²-A034474(n)+1)`
-/

namespace A024059.P152785624944955642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000584 n ^ 2 - A034474 n + 1)

end

end A024059.P152785624944955642

namespace A024059

/-- `-(A000584(n)²-A034474(n)+1)` -/
def P152785624944955642.Spec : Prop :=
  ∀ n, P152785624944955642.a n = A024059 n

end A024059

/-!
# A024060: a(n) = 5^n - n^11.

The programs for A024060, the canonical program `A024060.P9185303420365050212` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024060 has offset 0).

The definition of A024060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-n^11` (program `A024060.P9185303420365050212`, by `A024060.P9185303420365050212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024060.P9185303420365050212

`5^n-n^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024060

/-- `5^n-n^11` -/
def P9185303420365050212.Spec : Prop :=
  ∀ n, P9185303420365050212.a n = A024060 n

theorem P9185303420365050212.correct : P9185303420365050212.Spec := by
  intro n
  simp only [A024060]

end A024060

/-!
# A024061: a(n) = 5^n - n^12.

The programs for A024061, the canonical program `A024061.P8855617220394322635` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024061 has offset 0).

The definition of A024061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-n^12` (program `A024061.P8855617220394322635`, by `A024061.P8855617220394322635.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024061.P8855617220394322635

`5^n-n^12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024061

/-- `5^n-n^12` -/
def P8855617220394322635.Spec : Prop :=
  ∀ n, P8855617220394322635.a n = A024061 n

theorem P8855617220394322635.correct : P8855617220394322635.Spec := by
  intro n
  simp only [A024061]

end A024061

/-!
# A024062: a(n) = 6^n - 1.

The programs for A024062, the canonical program `A024062.P10607984613619163046` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024062 has offset 0).

The definition of A024062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-1` (program `A024062.P10607984613619163046`, by `A024062.P10607984613619163046.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024062.P10607984613619163046

`6^n-1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024062

/-- `6^n-1` -/
def P10607984613619163046.Spec : Prop :=
  ∀ n, P10607984613619163046.a n = A024062 n

theorem P10607984613619163046.correct : P10607984613619163046.Spec := by
  intro n
  simp only [A024062]

end A024062

/-!
# A024063: a(n) = 6^n - n.

The programs for A024063, the canonical program `A024063.P17550921909940400575` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024063 has offset 0).

The definition of A024063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-n` (program `A024063.P17550921909940400575`, by `A024063.P17550921909940400575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024063.P17550921909940400575

`6^n-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024063

/-- `6^n-n` -/
def P17550921909940400575.Spec : Prop :=
  ∀ n, P17550921909940400575.a n = A024063 n

theorem P17550921909940400575.correct : P17550921909940400575.Spec := by
  intro n
  simp only [A024063]

end A024063

/-!
# A024064: a(n) = 6^n - n^2.

The programs for A024064, the canonical program `A024064.P1670580411880066676` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024064 has offset 0).

The definition of A024064 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-n²` (program `A024064.P1670580411880066676`, by `A024064.P1670580411880066676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024064.P1670580411880066676

`6^n-n²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024064

/-- `6^n-n²` -/
def P1670580411880066676.Spec : Prop :=
  ∀ n, P1670580411880066676.a n = A024064 n

theorem P1670580411880066676.correct : P1670580411880066676.Spec := by
  intro n
  simp only [A024064]

end A024064

/-! ## A024064.P7801366505848581839

`abs(6^n-C(n, 2)-C(n, 2)-n)`
-/

namespace A024064.P7801366505848581839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - (Nat.choose n 2 : ℤ) - (Nat.choose n 2 : ℤ) - (n : ℤ)|

end

end A024064.P7801366505848581839

namespace A024064

/-- `abs(6^n-C(n, 2)-C(n, 2)-n)` -/
def P7801366505848581839.Spec : Prop :=
  ∀ n, P7801366505848581839.a n = A024064 n

end A024064

/-! ## A024064.P13045617037113820497

`abs(n²-A000400(n))`
-/

namespace A024064.P13045617037113820497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000400 n|

end

end A024064.P13045617037113820497

namespace A024064

/-- `abs(n²-A000400(n))` -/
def P13045617037113820497.Spec : Prop :=
  ∀ n, P13045617037113820497.a n = A024064 n

end A024064

/-! ## A024064.P7008033560074620123

`abs(6^n-A000290(n))`
-/

namespace A024064.P7008033560074620123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - A000290 n|

end

end A024064.P7008033560074620123

namespace A024064

/-- `abs(6^n-A000290(n))` -/
def P7008033560074620123.Spec : Prop :=
  ∀ n, P7008033560074620123.a n = A024064 n

end A024064

/-! ## A024064.P15689586080990171108

`-(n²+1-A062394(n))`
-/

namespace A024064.P15689586080990171108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n ^ 2 : ℤ) + (1 - A062394 n))

end

end A024064.P15689586080990171108

namespace A024064

/-- `-(n²+1-A062394(n))` -/
def P15689586080990171108.Spec : Prop :=
  ∀ n, P15689586080990171108.a n = A024064 n

end A024064

/-! ## A024064.P18438615846897607159

`abs(A026549(2*n)-n²)`
-/

namespace A024064.P18438615846897607159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026549 (2 * n) - (n ^ 2 : ℤ)|

end

end A024064.P18438615846897607159

namespace A024064

/-- `abs(A026549(2*n)-n²)` -/
def P18438615846897607159.Spec : Prop :=
  ∀ n, P18438615846897607159.a n = A024064 n

end A024064

/-! ## A024064.P12703750555452321578

`abs(6^n-record[A123596(n)])`
-/

namespace A024064.P12703750555452321578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A024064.P12703750555452321578

namespace A024064

/-- `abs(6^n-record[A123596(n)])` -/
def P12703750555452321578.Spec : Prop :=
  ∀ n, P12703750555452321578.a n = A024064 n

end A024064

/-! ## A024064.P17728105092805905220

`abs(A002522(n)-A062394(n))`
-/

namespace A024064.P17728105092805905220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002522 n - A062394 n|

end

end A024064.P17728105092805905220

namespace A024064

/-- `abs(A002522(n)-A062394(n))` -/
def P17728105092805905220.Spec : Prop :=
  ∀ n, P17728105092805905220.a n = A024064 n

end A024064

/-! ## A024064.P3753505820126277214

`∑[A052934(n)-A004273(n)]`
-/

namespace A024064.P3753505820126277214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024064.P3753505820126277214

namespace A024064

/-- `∑[A052934(n)-A004273(n)]` -/
def P3753505820126277214.Spec : Prop :=
  ∀ n, P3753505820126277214.a n = A024064 n

end A024064

/-! ## A024064.P6042554584881736799

`abs(n²-A000079(n)*A000244(n))`
-/

namespace A024064.P6042554584881736799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000079 n * A000244 n|

end

end A024064.P6042554584881736799

namespace A024064

/-- `abs(n²-A000079(n)*A000244(n))` -/
def P6042554584881736799.Spec : Prop :=
  ∀ n, P6042554584881736799.a n = A024064 n

end A024064

/-! ## A024064.P1886450706925694191

`(A000400(n)-n²)%A199682(n)`
-/

namespace A024064.P1886450706925694191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000400 n - (n ^ 2 : ℤ)) (A199682 n)

end

end A024064.P1886450706925694191

namespace A024064

/-- `(A000400(n)-n²)%A199682(n)` -/
def P1886450706925694191.Spec : Prop :=
  ∀ n, P1886450706925694191.a n = A024064 n

end A024064

/-!
# A024065: a(n) = 6^n - n^3.

The programs for A024065, the canonical program `A024065.P16853610426172295363` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024065 has offset 0).

The definition of A024065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-n^3` (program `A024065.P16853610426172295363`, by `A024065.P16853610426172295363.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024065.P16853610426172295363

`6^n-n^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024065

/-- `6^n-n^3` -/
def P16853610426172295363.Spec : Prop :=
  ∀ n, P16853610426172295363.a n = A024065 n

theorem P16853610426172295363.correct : P16853610426172295363.Spec := by
  intro n
  simp only [A024065]

end A024065

/-! ## A024065.P4197361362392946485

`abs(n*n²-A000400(n))`
-/

namespace A024065.P4197361362392946485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * n ^ 2 : ℤ) - A000400 n|

end

end A024065.P4197361362392946485

namespace A024065

/-- `abs(n*n²-A000400(n))` -/
def P4197361362392946485.Spec : Prop :=
  ∀ n, P4197361362392946485.a n = A024065 n

end A024065

/-! ## A024065.P10666725830412298615

`abs(A000400(n)-A000578(n))`
-/

namespace A024065.P10666725830412298615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000400 n - A000578 n|

end

end A024065.P10666725830412298615

namespace A024065

/-- `abs(A000400(n)-A000578(n))` -/
def P10666725830412298615.Spec : Prop :=
  ∀ n, P10666725830412298615.a n = A024065 n

end A024065

/-! ## A024065.P8868454514668612223

`(A000400(n)-A000578(n))*A143453(∑[n])`
-/

namespace A024065.P8868454514668612223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A000578 n) * A143453 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024065.P8868454514668612223

namespace A024065

/-- `(A000400(n)-A000578(n))*A143453(∑[n])` -/
def P8868454514668612223.Spec : Prop :=
  ∀ n, P8868454514668612223.a n = A024065 n

end A024065

/-! ## A024065.P5820949833273962382

`(A000400(n)-A000578(n))*char[A268931(n+1)]`
-/

namespace A024065.P5820949833273962382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268931 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A000578 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024065.P5820949833273962382

namespace A024065

/-- `(A000400(n)-A000578(n))*char[A268931(n+1)]` -/
def P5820949833273962382.Spec : Prop :=
  ∀ n, P5820949833273962382.a n = A024065 n

end A024065

/-! ## A024065.P9373298088361240882

`(A000400(n)-A000578(n))*A092505(A092505(n+1))`
-/

namespace A024065.P9373298088361240882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A000578 n) * A092505 (A092505 (n + 1)).toNat

end

end A024065.P9373298088361240882

namespace A024065

/-- `(A000400(n)-A000578(n))*A092505(A092505(n+1))` -/
def P9373298088361240882.Spec : Prop :=
  ∀ n, P9373298088361240882.a n = A024065 n

end A024065

/-! ## A024065.P16193943636604007368

`(A000400(n)-A000578(n))*A190698(A190700(n+1))`
-/

namespace A024065.P16193943636604007368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A000578 n) * A190698 (A190700 (n + 1)).toNat

end

end A024065.P16193943636604007368

namespace A024065

/-- `(A000400(n)-A000578(n))*A190698(A190700(n+1))` -/
def P16193943636604007368.Spec : Prop :=
  ∀ n, P16193943636604007368.a n = A024065 n

end A024065

/-! ## A024065.P291499876044788772

`(A000400(n)-A000578(n))*A190683(A190706(n+1))`
-/

namespace A024065.P291499876044788772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A000578 n) * A190683 (A190706 (n + 1)).toNat

end

end A024065.P291499876044788772

namespace A024065

/-- `(A000400(n)-A000578(n))*A190683(A190706(n+1))` -/
def P291499876044788772.Spec : Prop :=
  ∀ n, P291499876044788772.a n = A024065 n

end A024065

/-! ## A024065.P13924096268457229510

`(A000400(n)-A000578(n))*A290106(A092520(n+1))`
-/

namespace A024065.P13924096268457229510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A000578 n) * A290106 (A092520 (n + 1)).toNat

end

end A024065.P13924096268457229510

namespace A024065

/-- `(A000400(n)-A000578(n))*A290106(A092520(n+1))` -/
def P13924096268457229510.Spec : Prop :=
  ∀ n, P13924096268457229510.a n = A024065 n

end A024065

/-! ## A024065.P15022613937612391588

`(A000400(n)-A000578(n))%A199682(n)`
-/

namespace A024065.P15022613937612391588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000400 n - A000578 n) (A199682 n)

end

end A024065.P15022613937612391588

namespace A024065

/-- `(A000400(n)-A000578(n))%A199682(n)` -/
def P15022613937612391588.Spec : Prop :=
  ∀ n, P15022613937612391588.a n = A024065 n

end A024065

/-!
# A024066: a(n) = 6^n - n^4.

The programs for A024066, the canonical program `A024066.P5880964251882726803` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024066 has offset 0).

The definition of A024066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-n^4` (program `A024066.P5880964251882726803`, by `A024066.P5880964251882726803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024066.P5880964251882726803

`6^n-n^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024066

/-- `6^n-n^4` -/
def P5880964251882726803.Spec : Prop :=
  ∀ n, P5880964251882726803.a n = A024066 n

theorem P5880964251882726803.correct : P5880964251882726803.Spec := by
  intro n
  simp only [A024066]

end A024066

/-! ## A024066.P14083495624856982175

`abs(n²²-A000400(n))`
-/

namespace A024066.P14083495624856982175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) - A000400 n|

end

end A024066.P14083495624856982175

namespace A024066

/-- `abs(n²²-A000400(n))` -/
def P14083495624856982175.Spec : Prop :=
  ∀ n, P14083495624856982175.a n = A024066 n

end A024066

/-! ## A024066.P3769454992282490094

`abs(A000400(n)-A000583(n))`
-/

namespace A024066.P3769454992282490094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000400 n - A000583 n|

end

end A024066.P3769454992282490094

namespace A024066

/-- `abs(A000400(n)-A000583(n))` -/
def P3769454992282490094.Spec : Prop :=
  ∀ n, P3769454992282490094.a n = A024066 n

end A024066

/-! ## A024066.P4757649585713615724

`or(A000400(n)-A000583(n), A000007(n))`
-/

namespace A024066.P4757649585713615724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000400 n - A000583 n) (A000007 n)

end

end A024066.P4757649585713615724

namespace A024066

/-- `or(A000400(n)-A000583(n), A000007(n))` -/
def P4757649585713615724.Spec : Prop :=
  ∀ n, P4757649585713615724.a n = A024066 n

end A024066

/-! ## A024066.P14237576954663664367

`(A000400(n)-A000583(n))*char[A228074(n)]`
-/

namespace A024066.P14237576954663664367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A000583 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024066.P14237576954663664367

namespace A024066

/-- `(A000400(n)-A000583(n))*char[A228074(n)]` -/
def P14237576954663664367.Spec : Prop :=
  ∀ n, P14237576954663664367.a n = A024066 n

end A024066

/-! ## A024066.P14593101861210243620

`xor(A000400(n)-A000583(n), A000007(n+1))`
-/

namespace A024066.P14593101861210243620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000400 n - A000583 n) (A000007 (n + 1))

end

end A024066.P14593101861210243620

namespace A024066

/-- `xor(A000400(n)-A000583(n), A000007(n+1))` -/
def P14593101861210243620.Spec : Prop :=
  ∀ n, P14593101861210243620.a n = A024066 n

end A024066

/-! ## A024066.P9699532128829829138

`(n²²-A000400(n))*A325142(A112316(n))`
-/

namespace A024066.P9699532128829829138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) - A000400 n) * A325142 (A112316 n).toNat

end

end A024066.P9699532128829829138

namespace A024066

/-- `(n²²-A000400(n))*A325142(A112316(n))` -/
def P9699532128829829138.Spec : Prop :=
  ∀ n, P9699532128829829138.a n = A024066 n

end A024066

/-! ## A024066.P18418028389539767965

`gcd(A000400(n)-A000583(n), A008683(4*(n+1)))`
-/

namespace A024066.P18418028389539767965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000400 n - A000583 n) (A008683 (4 * (n + 1)))

end

end A024066.P18418028389539767965

namespace A024066

/-- `gcd(A000400(n)-A000583(n), A008683(4*(n+1)))` -/
def P18418028389539767965.Spec : Prop :=
  ∀ n, (P18418028389539767965.a n : ℤ) = A024066 n

end A024066

/-! ## A024066.P15842084002096731987

`(A000400(n)-A000583(n))*(A143073(n+1)%2)!`
-/

namespace A024066.P15842084002096731987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A000583 n) * (Nat.factorial (Int.tmod (A143073 (n + 1)) 2).toNat : ℤ)

end

end A024066.P15842084002096731987

namespace A024066

/-- `(A000400(n)-A000583(n))*(A143073(n+1)%2)!` -/
def P15842084002096731987.Spec : Prop :=
  ∀ n, P15842084002096731987.a n = A024066 n

end A024066

/-!
# A024067: a(n) = 6^n - n^5.

The programs for A024067, the canonical program `A024067.P17117584417047096974` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024067 has offset 0).

The definition of A024067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-n^5` (program `A024067.P17117584417047096974`, by `A024067.P17117584417047096974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024067.P17117584417047096974

`6^n-n^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024067

/-- `6^n-n^5` -/
def P17117584417047096974.Spec : Prop :=
  ∀ n, P17117584417047096974.a n = A024067 n

theorem P17117584417047096974.correct : P17117584417047096974.Spec := by
  intro n
  simp only [A024067]

end A024067

/-! ## A024067.P629148965930138981

`floor(A024028(n)+3^n*∑[and(-2, 2^n)/2])`
-/

namespace A024067.P629148965930138981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (2 ^ n : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024028 n : ℚ) + (3 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A024067.P629148965930138981

namespace A024067

/-- `floor(A024028(n)+3^n*∑[and(-2, 2^n)/2])` -/
def P629148965930138981.Spec : Prop :=
  ∀ n, P629148965930138981.a n = A024067 n

end A024067

/-! ## A024067.P290787013815851842

`floor(A024028(n)+3/2*A060589(n))`
-/

namespace A024067.P290787013815851842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024028 n : ℚ) + (3 : ℚ) / 2 * (A060589 n : ℚ)⌋

end

end A024067.P290787013815851842

namespace A024067

/-- `floor(A024028(n)+3/2*A060589(n))` -/
def P290787013815851842.Spec : Prop :=
  ∀ n, P290787013815851842.a n = A024067 n

end A024067

/-! ## A024067.P895859895476578162

`floor(A024015(n)+(A049294(n)-1)/3)`
-/

namespace A024067.P895859895476578162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024015 n : ℚ) + (A049294 n - 1 : ℚ) / 3⌋

end

end A024067.P895859895476578162

namespace A024067

/-- `floor(A024015(n)+(A049294(n)-1)/3)` -/
def P895859895476578162.Spec : Prop :=
  ∀ n, P895859895476578162.a n = A024067 n

end A024067

/-! ## A024067.P5836497502479973953

`floor(A024015(n)+A066406(n+1)/6)`
-/

namespace A024067.P5836497502479973953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024015 n : ℚ) + (A066406 (n + 1) : ℚ) / 6⌋

end

end A024067.P5836497502479973953

namespace A024067

/-- `floor(A024015(n)+A066406(n+1)/6)` -/
def P5836497502479973953.Spec : Prop :=
  ∀ n, P5836497502479973953.a n = A024067 n

end A024067

/-!
# A024068: a(n) = 6^n - n^6.

The programs for A024068, the canonical program `A024068.P14166673997179448953` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024068 has offset 0).

The definition of A024068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-n^6` (program `A024068.P14166673997179448953`, by `A024068.P14166673997179448953.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024068.P14166673997179448953

`6^n-n^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024068

/-- `6^n-n^6` -/
def P14166673997179448953.Spec : Prop :=
  ∀ n, P14166673997179448953.a n = A024068 n

theorem P14166673997179448953.correct : P14166673997179448953.Spec := by
  intro n
  simp only [A024068]

end A024068

/-! ## A024068.P2439970613508698453

`A055651(eq[6, A025581(n)])`
-/

namespace A024068.P2439970613508698453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024068.P2439970613508698453

namespace A024068

/-- `A055651(eq[6, A025581(n)])` -/
def P2439970613508698453.Spec : Prop :=
  ∀ n, P2439970613508698453.a n = A024068 n

end A024068

/-! ## A024068.P9552467383822212630

`A055651(A000217(n+7)-7)`
-/

namespace A024068.P9552467383822212630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A000217 (n + 7) - 7).toNat

end

end A024068.P9552467383822212630

namespace A024068

/-- `A055651(A000217(n+7)-7)` -/
def P9552467383822212630.Spec : Prop :=
  ∀ n, P9552467383822212630.a n = A024068 n

end A024068

/-! ## A024068.P7457160938344012724

`A055651(A133263(n+7)-9)`
-/

namespace A024068.P7457160938344012724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A133263 (n + 7) - 9).toNat

end

end A024068.P7457160938344012724

namespace A024068

/-- `A055651(A133263(n+7)-9)` -/
def P7457160938344012724.Spec : Prop :=
  ∀ n, P7457160938344012724.a n = A024068 n

end A024068

/-! ## A024068.P3189566742146640572

`A055651(eq[7, A004736(n+1)])`
-/

namespace A024068.P3189566742146640572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024068.P3189566742146640572

namespace A024068

/-- `A055651(eq[7, A004736(n+1)])` -/
def P3189566742146640572.Spec : Prop :=
  ∀ n, P3189566742146640572.a n = A024068 n

end A024068

/-! ## A024068.P10667321224359770082

`A055651(Δ[A023551(n+2)]-1)`
-/

namespace A024068.P10667321224359770082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (f1 (n + 1) - f1 n - 1).toNat

end

end A024068.P10667321224359770082

namespace A024068

/-- `A055651(Δ[A023551(n+2)]-1)` -/
def P10667321224359770082.Spec : Prop :=
  ∀ n, P10667321224359770082.a n = A024068 n

end A024068

/-! ## A024068.P1092400446942361122

`A055651(A000096(n+5)+n+1)`
-/

namespace A024068.P1092400446942361122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A024068.P1092400446942361122

namespace A024068

/-- `A055651(A000096(n+5)+n+1)` -/
def P1092400446942361122.Spec : Prop :=
  ∀ n, P1092400446942361122.a n = A024068 n

end A024068

/-! ## A024068.P8843251584668143569

`A220417(A052905(n+2)%A095667(n))`
-/

namespace A024068.P8843251584668143569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220417 (Int.tmod (A052905 (n + 2)) (A095667 n)).toNat

end

end A024068.P8843251584668143569

namespace A024068

/-- `A220417(A052905(n+2)%A095667(n))` -/
def P8843251584668143569.Spec : Prop :=
  ∀ n, P8843251584668143569.a n = A024068 n

end A024068

/-! ## A024068.P17016393359999841348

`A220417((A000217(n+5)-5)%A220436(n))`
-/

namespace A024068.P17016393359999841348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220417 (Int.tmod (A000217 (n + 5) - 5) (A220436 n)).toNat

end

end A024068.P17016393359999841348

namespace A024068

/-- `A220417((A000217(n+5)-5)%A220436(n))` -/
def P17016393359999841348.Spec : Prop :=
  ∀ n, P17016393359999841348.a n = A024068 n

end A024068

/-!
# A024069: a(n) = 6^n - n^7.

The programs for A024069, the canonical program `A024069.P10995243660040009372` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024069 has offset 0).

The definition of A024069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-n^7` (program `A024069.P10995243660040009372`, by `A024069.P10995243660040009372.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024069.P10995243660040009372

`6^n-n^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024069

/-- `6^n-n^7` -/
def P10995243660040009372.Spec : Prop :=
  ∀ n, P10995243660040009372.a n = A024069 n

theorem P10995243660040009372.correct : P10995243660040009372.Spec := by
  intro n
  simp only [A024069]

end A024069

/-! ## A024069.P15337784264015281202

`(A000400(n)-A001015(n))*char[xor(3, n)]`
-/

namespace A024069.P15337784264015281202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A001015 n) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A024069.P15337784264015281202

namespace A024069

/-- `(A000400(n)-A001015(n))*char[xor(3, n)]` -/
def P15337784264015281202.Spec : Prop :=
  ∀ n, P15337784264015281202.a n = A024069 n

end A024069

/-! ## A024069.P17191893111689525122

`xor(A000400(n)-A001015(n), A008683(4*(n+1)))`
-/

namespace A024069.P17191893111689525122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000400 n - A001015 n) (A008683 (4 * (n + 1)))

end

end A024069.P17191893111689525122

namespace A024069

/-- `xor(A000400(n)-A001015(n), A008683(4*(n+1)))` -/
def P17191893111689525122.Spec : Prop :=
  ∀ n, P17191893111689525122.a n = A024069 n

end A024069

/-! ## A024069.P2862230597327682320

`(A000400(n)-A001015(n))*(1-A001489(n)-n)`
-/

namespace A024069.P2862230597327682320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A001015 n) * (1 - A001489 n - (n : ℤ))

end

end A024069.P2862230597327682320

namespace A024069

/-- `(A000400(n)-A001015(n))*(1-A001489(n)-n)` -/
def P2862230597327682320.Spec : Prop :=
  ∀ n, P2862230597327682320.a n = A024069 n

end A024069

/-! ## A024069.P224165755706980720

`(A000400(n)-A001015(n))%A026330(n+2)`
-/

namespace A024069.P224165755706980720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000400 n - A001015 n) (A026330 (n + 2))

end

end A024069.P224165755706980720

namespace A024069

/-- `(A000400(n)-A001015(n))%A026330(n+2)` -/
def P224165755706980720.Spec : Prop :=
  ∀ n, P224165755706980720.a n = A024069 n

end A024069

/-!
# A024070: a(n) = 6^n-n^8.

The programs for A024070, the canonical program `A024070.P16962079099913620174` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024070 has offset 0).

The definition of A024070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-n^8` (program `A024070.P16962079099913620174`, by `A024070.P16962079099913620174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024070.P16962079099913620174

`6^n-n^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024070

/-- `6^n-n^8` -/
def P16962079099913620174.Spec : Prop :=
  ∀ n, P16962079099913620174.a n = A024070 n

theorem P16962079099913620174.correct : P16962079099913620174.Spec := by
  intro n
  simp only [A024070]

end A024070

/-! ## A024070.P12962151125368133816

`(A248225(n)+A024031(n))*char[A130361(n)]`
-/

namespace A024070.P12962151125368133816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130361 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A248225 n + A024031 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024070.P12962151125368133816

namespace A024070

/-- `(A248225(n)+A024031(n))*char[A130361(n)]` -/
def P12962151125368133816.Spec : Prop :=
  ∀ n, P12962151125368133816.a n = A024070 n

end A024070

/-! ## A024070.P8632299243528930668

`(A248225(n)+A024031(n))*A000108(C(2, n+2))`
-/

namespace A024070.P8632299243528930668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A248225 n + A024031 n) * A000108 (Nat.choose 2 (n + 2))

end

end A024070.P8632299243528930668

namespace A024070

/-- `(A248225(n)+A024031(n))*A000108(C(2, n+2))` -/
def P8632299243528930668.Spec : Prop :=
  ∀ n, P8632299243528930668.a n = A024070 n

end A024070

/-! ## A024070.P15885387858672941680

`(A248225(n)+A024031(n))*A000009(n)^A151934(n)`
-/

namespace A024070.P15885387858672941680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248225 n + A024031 n : ℚ) * (A000009 n : ℚ) ^ (A151934 n : ℤ)

end

end A024070.P15885387858672941680

namespace A024070

/-- `(A248225(n)+A024031(n))*A000009(n)^A151934(n)` -/
def P15885387858672941680.Spec : Prop :=
  ∀ n, P15885387858672941680.a n = (A024070 n : ℚ)

end A024070

/-! ## A024070.P8264259601946347612

`(A248225(n)+A024031(n))%A121823(n+1)`
-/

namespace A024070.P8264259601946347612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248225 n + A024031 n) (A121823 (n + 1))

end

end A024070.P8264259601946347612

namespace A024070

/-- `(A248225(n)+A024031(n))%A121823(n+1)` -/
def P8264259601946347612.Spec : Prop :=
  ∀ n, P8264259601946347612.a n = A024070 n

end A024070

/-!
# A024071: a(n) = 6^n - n^9.

The programs for A024071, the canonical program `A024071.P12192302105162558439` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024071 has offset 0).

The definition of A024071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-n^9` (program `A024071.P12192302105162558439`, by `A024071.P12192302105162558439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024071.P12192302105162558439

`6^n-n^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024071

/-- `6^n-n^9` -/
def P12192302105162558439.Spec : Prop :=
  ∀ n, P12192302105162558439.a n = A024071 n

theorem P12192302105162558439.correct : P12192302105162558439.Spec := by
  intro n
  simp only [A024071]

end A024071

/-! ## A024071.P3687699439275250418

`or(A024136(n)-A139744(n), A000035(n))`
-/

namespace A024071.P3687699439275250418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024136 n - A139744 n) (A000035 n)

end

end A024071.P3687699439275250418

namespace A024071

/-- `or(A024136(n)-A139744(n), A000035(n))` -/
def P3687699439275250418.Spec : Prop :=
  ∀ n, P3687699439275250418.a n = A024071 n

end A024071

/-! ## A024071.P18335704718953282388

`or(A024136(n)-A139744(n), A228495(n))`
-/

namespace A024071.P18335704718953282388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024136 n - A139744 n) (A228495 n)

end

end A024071.P18335704718953282388

namespace A024071

/-- `or(A024136(n)-A139744(n), A228495(n))` -/
def P18335704718953282388.Spec : Prop :=
  ∀ n, P18335704718953282388.a n = A024071 n

end A024071

/-! ## A024071.P5773939557243497998

`(A024136(n)-A139744(n))*A242179(n)²`
-/

namespace A024071.P5773939557243497998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024136 n - A139744 n) * A242179 n ^ 2

end

end A024071.P5773939557243497998

namespace A024071

/-- `(A024136(n)-A139744(n))*A242179(n)²` -/
def P5773939557243497998.Spec : Prop :=
  ∀ n, P5773939557243497998.a n = A024071 n

end A024071

/-! ## A024071.P2115799280981790637

`(A024136(n)-A139744(n))*A001222(A078497(n+3))`
-/

namespace A024071.P2115799280981790637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024136 n - A139744 n) * A001222 (A078497 (n + 3)).toNat

end

end A024071.P2115799280981790637

namespace A024071

/-- `(A024136(n)-A139744(n))*A001222(A078497(n+3))` -/
def P2115799280981790637.Spec : Prop :=
  ∀ n, P2115799280981790637.a n = A024071 n

end A024071

/-!
# A024072: a(n) = 6^n - n^10.

The programs for A024072, the canonical program `A024072.P2498601876091659946` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024072 has offset 0).

The definition of A024072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-n^10` (program `A024072.P2498601876091659946`, by `A024072.P2498601876091659946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024072.P2498601876091659946

`6^n-n^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024072

/-- `6^n-n^10` -/
def P2498601876091659946.Spec : Prop :=
  ∀ n, P2498601876091659946.a n = A024072 n

theorem P2498601876091659946.correct : P2498601876091659946.Spec := by
  intro n
  simp only [A024072]

end A024072

/-! ## A024072.P4059558255262844778

`(A000400(n)-A008454(n))*dr(A186039(n))`
-/

namespace A024072.P4059558255262844778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A008454 n) * (SequenceMachineLib.digitalRoot (A186039 n) : ℤ)

end

end A024072.P4059558255262844778

namespace A024072

/-- `(A000400(n)-A008454(n))*dr(A186039(n))` -/
def P4059558255262844778.Spec : Prop :=
  ∀ n, P4059558255262844778.a n = A024072 n

end A024072

/-! ## A024072.P5285571397170779315

`(A000400(n)-A008454(n))*A013610(∑[n])`
-/

namespace A024072.P5285571397170779315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A008454 n) * A013610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024072.P5285571397170779315

namespace A024072

/-- `(A000400(n)-A008454(n))*A013610(∑[n])` -/
def P5285571397170779315.Spec : Prop :=
  ∀ n, P5285571397170779315.a n = A024072 n

end A024072

/-! ## A024072.P9109878939846317434

`(A000400(n)-A008454(n))*A001055(A007918(n))`
-/

namespace A024072.P9109878939846317434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A008454 n) * A001055 (A007918 n).toNat

end

end A024072.P9109878939846317434

namespace A024072

/-- `(A000400(n)-A008454(n))*A001055(A007918(n))` -/
def P9109878939846317434.Spec : Prop :=
  ∀ n, P9109878939846317434.a n = A024072 n

end A024072

/-! ## A024072.P12217660639336461029

`(A000400(n)-A008454(n))*A001055(A020639(n+1))`
-/

namespace A024072.P12217660639336461029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A008454 n) * A001055 (A020639 (n + 1)).toNat

end

end A024072.P12217660639336461029

namespace A024072

/-- `(A000400(n)-A008454(n))*A001055(A020639(n+1))` -/
def P12217660639336461029.Spec : Prop :=
  ∀ n, P12217660639336461029.a n = A024072 n

end A024072

/-! ## A024072.P8033306197720735517

`(A000400(n)-A008454(n))*A344879(A344879(n+1)+1)`
-/

namespace A024072.P8033306197720735517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A008454 n) * A344879 (A344879 (n + 1) + 1).toNat

end

end A024072.P8033306197720735517

namespace A024072

/-- `(A000400(n)-A008454(n))*A344879(A344879(n+1)+1)` -/
def P8033306197720735517.Spec : Prop :=
  ∀ n, P8033306197720735517.a n = A024072 n

end A024072

/-! ## A024072.P14554881873148349785

`(A000400(n)-A008454(n))%A054490(n+4)`
-/

namespace A024072.P14554881873148349785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000400 n - A008454 n) (A054490 (n + 4))

end

end A024072.P14554881873148349785

namespace A024072

/-- `(A000400(n)-A008454(n))%A054490(n+4)` -/
def P14554881873148349785.Spec : Prop :=
  ∀ n, P14554881873148349785.a n = A024072 n

end A024072

/-!
# A024073: a(n) = 6^n - n^11.

The programs for A024073, the canonical program `A024073.P752823812284466160` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024073 has offset 0).

The definition of A024073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-n^11` (program `A024073.P752823812284466160`, by `A024073.P752823812284466160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024073.P752823812284466160

`6^n-n^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024073

/-- `6^n-n^11` -/
def P752823812284466160.Spec : Prop :=
  ∀ n, P752823812284466160.a n = A024073 n

theorem P752823812284466160.correct : P752823812284466160.Spec := by
  intro n
  simp only [A024073]

end A024073

/-!
# A024074: a(n) = 6^n - n^12.

The programs for A024074, the canonical program `A024074.P15847795178163276029` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024074 has offset 0).

The definition of A024074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-n^12` (program `A024074.P15847795178163276029`, by `A024074.P15847795178163276029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024074.P15847795178163276029

`6^n-n^12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024074

/-- `6^n-n^12` -/
def P15847795178163276029.Spec : Prop :=
  ∀ n, P15847795178163276029.a n = A024074 n

theorem P15847795178163276029.correct : P15847795178163276029.Spec := by
  intro n
  simp only [A024074]

end A024074

/-!
# A024075: a(n) = 7^n-1.

The programs for A024075, the canonical program `A024075.P909197775632093808` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024075 has offset 0).

The definition of A024075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-1` (program `A024075.P909197775632093808`, by `A024075.P909197775632093808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024075.P909197775632093808

`7^n-1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024075

/-- `7^n-1` -/
def P909197775632093808.Spec : Prop :=
  ∀ n, P909197775632093808.a n = A024075 n

theorem P909197775632093808.correct : P909197775632093808.Spec := by
  intro n
  simp only [A024075]

end A024075

/-!
# A024076: a(n) = 7^n - n.

The programs for A024076, the canonical program `A024076.P9801853497852515405` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024076 has offset 0).

The definition of A024076 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-n` (program `A024076.P9801853497852515405`, by `A024076.P9801853497852515405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024076.P9801853497852515405

`7^n-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024076

/-- `7^n-n` -/
def P9801853497852515405.Spec : Prop :=
  ∀ n, P9801853497852515405.a n = A024076 n

theorem P9801853497852515405.correct : P9801853497852515405.Spec := by
  intro n
  simp only [A024076]

end A024076

/-!
# A024077: a(n) = 7^n - n^2.

The programs for A024077, the canonical program `A024077.P6476527426204777502` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024077 has offset 0).

The definition of A024077 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-n²` (program `A024077.P6476527426204777502`, by `A024077.P6476527426204777502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024077.P6476527426204777502

`7^n-n²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024077

/-- `7^n-n²` -/
def P6476527426204777502.Spec : Prop :=
  ∀ n, P6476527426204777502.a n = A024077 n

theorem P6476527426204777502.correct : P6476527426204777502.Spec := by
  intro n
  simp only [A024077]

end A024077

/-! ## A024077.P9254684450787803627

`abs(n²-A000420(n))`
-/

namespace A024077.P9254684450787803627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000420 n|

end

end A024077.P9254684450787803627

namespace A024077

/-- `abs(n²-A000420(n))` -/
def P9254684450787803627.Spec : Prop :=
  ∀ n, P9254684450787803627.a n = A024077 n

end A024077

/-! ## A024077.P18306670624577771635

`abs(7^n-A000290(n))`
-/

namespace A024077.P18306670624577771635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 ^ n : ℤ) - A000290 n|

end

end A024077.P18306670624577771635

namespace A024077

/-- `abs(7^n-A000290(n))` -/
def P18306670624577771635.Spec : Prop :=
  ∀ n, P18306670624577771635.a n = A024077 n

end A024077

/-! ## A024077.P2382725648571415572

`∑[A055272(n)-comp[2*(n+1)]]`
-/

namespace A024077.P2382725648571415572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024077.P2382725648571415572

namespace A024077

/-- `∑[A055272(n)-comp[2*(n+1)]]` -/
def P2382725648571415572.Spec : Prop :=
  ∀ n, P2382725648571415572.a n = A024077 n

end A024077

/-! ## A024077.P13144807762956862806

`abs(n²-A017925(A005843(n)))`
-/

namespace A024077.P13144807762956862806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A017925 (A005843 n).toNat|

end

end A024077.P13144807762956862806

namespace A024077

/-- `abs(n²-A017925(A005843(n)))` -/
def P13144807762956862806.Spec : Prop :=
  ∀ n, P13144807762956862806.a n = A024077 n

end A024077

/-! ## A024077.P9304025549280743849

`gcd(7^n-A000290(n), A000038(n))`
-/

namespace A024077.P9304025549280743849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((7 ^ n : ℤ) - A000290 n) (A000038 n)

end

end A024077.P9304025549280743849

namespace A024077

/-- `gcd(7^n-A000290(n), A000038(n))` -/
def P9304025549280743849.Spec : Prop :=
  ∀ n, (P9304025549280743849.a n : ℤ) = A024077 n

end A024077

/-! ## A024077.P11559784391085816974

`lcm(7^n-A000290(n), A000034(n))`
-/

namespace A024077.P11559784391085816974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((7 ^ n : ℤ) - A000290 n) (A000034 n)

end

end A024077.P11559784391085816974

namespace A024077

/-- `lcm(7^n-A000290(n), A000034(n))` -/
def P11559784391085816974.Spec : Prop :=
  ∀ n, (P11559784391085816974.a n : ℤ) = A024077 n

end A024077

/-! ## A024077.P11582600777128311911

`(7^n-A000290(n))*A003415(A006530(n+2))`
-/

namespace A024077.P11582600777128311911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) - A000290 n) * A003415 (A006530 (n + 2)).toNat

end

end A024077.P11582600777128311911

namespace A024077

/-- `(7^n-A000290(n))*A003415(A006530(n+2))` -/
def P11582600777128311911.Spec : Prop :=
  ∀ n, P11582600777128311911.a n = A024077 n

end A024077

/-! ## A024077.P14045889614838258705

`abs(n²+A208704(n+1)-A193577(n))`
-/

namespace A024077.P14045889614838258705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) + (A208704 (n + 1) - A193577 n)|

end

end A024077.P14045889614838258705

namespace A024077

/-- `abs(n²+A208704(n+1)-A193577(n))` -/
def P14045889614838258705.Spec : Prop :=
  ∀ n, P14045889614838258705.a n = A024077 n

end A024077

/-! ## A024077.P14522813430755472593

`(A000420(n)-n²)%A125908(n+1)`
-/

namespace A024077.P14522813430755472593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000420 n - (n ^ 2 : ℤ)) (A125908 (n + 1))

end

end A024077.P14522813430755472593

namespace A024077

/-- `(A000420(n)-n²)%A125908(n+1)` -/
def P14522813430755472593.Spec : Prop :=
  ∀ n, P14522813430755472593.a n = A024077 n

end A024077

/-! ## A024077.P5022539381960191140

`abs(n²-A027466(∑[n]))`
-/

namespace A024077.P5022539381960191140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A027466 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A024077.P5022539381960191140

namespace A024077

/-- `abs(n²-A027466(∑[n]))` -/
def P5022539381960191140.Spec : Prop :=
  ∀ n, P5022539381960191140.a n = A024077 n

end A024077

/-!
# A024078: a(n) = 7^n - n^3.

The programs for A024078, the canonical program `A024078.P11824714732810366504` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024078 has offset 0).

The definition of A024078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-n^3` (program `A024078.P11824714732810366504`, by `A024078.P11824714732810366504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024078.P11824714732810366504

`7^n-n^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024078

/-- `7^n-n^3` -/
def P11824714732810366504.Spec : Prop :=
  ∀ n, P11824714732810366504.a n = A024078 n

theorem P11824714732810366504.correct : P11824714732810366504.Spec := by
  intro n
  simp only [A024078]

end A024078

/-! ## A024078.P12110790042440424313

`abs(n*(n²+1)-A226199(n))`
-/

namespace A024078.P12110790042440424313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * (n ^ 2 + 1) : ℤ) - A226199 n|

end

end A024078.P12110790042440424313

namespace A024078

/-- `abs(n*(n²+1)-A226199(n))` -/
def P12110790042440424313.Spec : Prop :=
  ∀ n, P12110790042440424313.a n = A024078 n

end A024078

/-! ## A024078.P12040515987593378289

`abs(A000420(n)-A000578(n))`
-/

namespace A024078.P12040515987593378289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A000578 n|

end

end A024078.P12040515987593378289

namespace A024078

/-- `abs(A000420(n)-A000578(n))` -/
def P12040515987593378289.Spec : Prop :=
  ∀ n, P12040515987593378289.a n = A024078 n

end A024078

/-! ## A024078.P13942219846343774790

`(A000420(n)-A000578(n))/A057077(n)²`
-/

namespace A024078.P13942219846343774790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n - A000578 n : ℚ) / (A057077 n ^ 2 : ℚ)

end

end A024078.P13942219846343774790

namespace A024078

/-- `(A000420(n)-A000578(n))/A057077(n)²` -/
def P13942219846343774790.Spec : Prop :=
  ∀ n, P13942219846343774790.a n = (A024078 n : ℚ)

end A024078

/-! ## A024078.P5351352112760268756

`(A000420(n)-A000578(n))/and(1, A000040(n+1))!`
-/

namespace A024078.P5351352112760268756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n - A000578 n : ℚ) / (Nat.factorial (Int.land 1 (A000040 (n + 1))).toNat : ℚ)

end

end A024078.P5351352112760268756

namespace A024078

/-- `(A000420(n)-A000578(n))/and(1, A000040(n+1))!` -/
def P5351352112760268756.Spec : Prop :=
  ∀ n, P5351352112760268756.a n = (A024078 n : ℚ)

end A024078

/-! ## A024078.P13933431899194340552

`(A000420(n)-A000578(n))*A239286(A102376(n))`
-/

namespace A024078.P13933431899194340552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A000578 n) * A239286 (A102376 n).toNat

end

end A024078.P13933431899194340552

namespace A024078

/-- `(A000420(n)-A000578(n))*A239286(A102376(n))` -/
def P13933431899194340552.Spec : Prop :=
  ∀ n, P13933431899194340552.a n = A024078 n

end A024078

/-! ## A024078.P6024712163842596340

`(A000420(n)-A000578(n))*A057077(A002262(n))²`
-/

namespace A024078.P6024712163842596340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A000578 n) * A057077 (A002262 n).toNat ^ 2

end

end A024078.P6024712163842596340

namespace A024078

/-- `(A000420(n)-A000578(n))*A057077(A002262(n))²` -/
def P6024712163842596340.Spec : Prop :=
  ∀ n, P6024712163842596340.a n = A024078 n

end A024078

/-! ## A024078.P16306330982397772460

`(A000420(n)-A000578(n))*A165330(A035504(n+1))`
-/

namespace A024078.P16306330982397772460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A000578 n) * A165330 (A035504 (n + 1)).toNat

end

end A024078.P16306330982397772460

namespace A024078

/-- `(A000420(n)-A000578(n))*A165330(A035504(n+1))` -/
def P16306330982397772460.Spec : Prop :=
  ∀ n, P16306330982397772460.a n = A024078 n

end A024078

/-! ## A024078.P8606037689050510391

`(A000420(n)-A000578(n))*A001221(A001248(n+1))`
-/

namespace A024078.P8606037689050510391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A000578 n) * A001221 (A001248 (n + 1)).toNat

end

end A024078.P8606037689050510391

namespace A024078

/-- `(A000420(n)-A000578(n))*A001221(A001248(n+1))` -/
def P8606037689050510391.Spec : Prop :=
  ∀ n, P8606037689050510391.a n = A024078 n

end A024078

/-!
# A024079: a(n) = 7^n - n^4.

The programs for A024079, the canonical program `A024079.P4363615963173718157` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024079 has offset 0).

The definition of A024079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-n^4` (program `A024079.P4363615963173718157`, by `A024079.P4363615963173718157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024079.P4363615963173718157

`7^n-n^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024079

/-- `7^n-n^4` -/
def P4363615963173718157.Spec : Prop :=
  ∀ n, P4363615963173718157.a n = A024079 n

theorem P4363615963173718157.correct : P4363615963173718157.Spec := by
  intro n
  simp only [A024079]

end A024079

/-! ## A024079.P9960565986086435551

`abs(n²²-A000420(n))`
-/

namespace A024079.P9960565986086435551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) - A000420 n|

end

end A024079.P9960565986086435551

namespace A024079

/-- `abs(n²²-A000420(n))` -/
def P9960565986086435551.Spec : Prop :=
  ∀ n, P9960565986086435551.a n = A024079 n

end A024079

/-! ## A024079.P15494603597997028230

`abs(A000420(n)-A000583(n))`
-/

namespace A024079.P15494603597997028230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A000583 n|

end

end A024079.P15494603597997028230

namespace A024079

/-- `abs(A000420(n)-A000583(n))` -/
def P15494603597997028230.Spec : Prop :=
  ∀ n, P15494603597997028230.a n = A024079 n

end A024079

/-! ## A024079.P3829369993151181317

`(A000420(n)-A000583(n))*gcd(2, A002426(n))`
-/

namespace A024079.P3829369993151181317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A000583 n) * (Int.gcd 2 (A002426 n) : ℤ)

end

end A024079.P3829369993151181317

namespace A024079

/-- `(A000420(n)-A000583(n))*gcd(2, A002426(n))` -/
def P3829369993151181317.Spec : Prop :=
  ∀ n, P3829369993151181317.a n = A024079 n

end A024079

/-! ## A024079.P10031412993953081771

`(A000420(n)-A000583(n))*gcd(3, 2*A001316(n))`
-/

namespace A024079.P10031412993953081771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A000583 n) * (Int.gcd 3 (2 * A001316 n) : ℤ)

end

end A024079.P10031412993953081771

namespace A024079

/-- `(A000420(n)-A000583(n))*gcd(3, 2*A001316(n))` -/
def P10031412993953081771.Spec : Prop :=
  ∀ n, P10031412993953081771.a n = A024079 n

end A024079

/-!
# A024080: a(n) = 7^n - n^5.

The programs for A024080, the canonical program `A024080.P18081778931613494054` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024080 has offset 0).

The definition of A024080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-n^5` (program `A024080.P18081778931613494054`, by `A024080.P18081778931613494054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024080.P18081778931613494054

`7^n-n^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024080

/-- `7^n-n^5` -/
def P18081778931613494054.Spec : Prop :=
  ∀ n, P18081778931613494054.a n = A024080 n

theorem P18081778931613494054.correct : P18081778931613494054.Spec := by
  intro n
  simp only [A024080]

end A024080

/-! ## A024080.P8141745672685095704

`abs(A024067(n)+A016169(n))`
-/

namespace A024080.P8141745672685095704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024067 n + A016169 n|

end

end A024080.P8141745672685095704

namespace A024080

/-- `abs(A024067(n)+A016169(n))` -/
def P8141745672685095704.Spec : Prop :=
  ∀ n, P8141745672685095704.a n = A024080 n

end A024080

/-! ## A024080.P12663842353109375910

`abs(A121213(n)+A024054(n))`
-/

namespace A024080.P12663842353109375910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121213 n + A024054 n|

end

end A024080.P12663842353109375910

namespace A024080

/-- `abs(A121213(n)+A024054(n))` -/
def P12663842353109375910.Spec : Prop :=
  ∀ n, P12663842353109375910.a n = A024080 n

end A024080

/-! ## A024080.P3765070644676571323

`abs(A000420(n)-A000584(n))`
-/

namespace A024080.P3765070644676571323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A000584 n|

end

end A024080.P3765070644676571323

namespace A024080

/-- `abs(A000420(n)-A000584(n))` -/
def P3765070644676571323.Spec : Prop :=
  ∀ n, P3765070644676571323.a n = A024080 n

end A024080

/-! ## A024080.P6276493075967898688

`abs(A024078(n)-(A133070(n)+n²))`
-/

namespace A024080.P6276493075967898688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024078 n - (A133070 n + (n ^ 2 : ℤ))|

end

end A024080.P6276493075967898688

namespace A024080

/-- `abs(A024078(n)-(A133070(n)+n²))` -/
def P6276493075967898688.Spec : Prop :=
  ∀ n, P6276493075967898688.a n = A024080 n

end A024080

/-! ## A024080.P16235457249737682677

`(A000420(n)-A000584(n))*A007318(∑[n])`
-/

namespace A024080.P16235457249737682677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A000584 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024080.P16235457249737682677

namespace A024080

/-- `(A000420(n)-A000584(n))*A007318(∑[n])` -/
def P16235457249737682677.Spec : Prop :=
  ∀ n, P16235457249737682677.a n = A024080 n

end A024080

/-! ## A024080.P551875440238726617

`(A000420(n)-A000584(n))*A000108(gcd(n, n+1))`
-/

namespace A024080.P551875440238726617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A000584 n) * A000108 (Nat.gcd n (n + 1))

end

end A024080.P551875440238726617

namespace A024080

/-- `(A000420(n)-A000584(n))*A000108(gcd(n, n+1))` -/
def P551875440238726617.Spec : Prop :=
  ∀ n, P551875440238726617.a n = A024080 n

end A024080

/-! ## A024080.P8911585516101366776

`(A000420(n)-A000584(n))*A208342(A000124(n))`
-/

namespace A024080.P8911585516101366776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A000584 n) * A208342 (A000124 n).toNat

end

end A024080.P8911585516101366776

namespace A024080

/-- `(A000420(n)-A000584(n))*A208342(A000124(n))` -/
def P8911585516101366776.Spec : Prop :=
  ∀ n, P8911585516101366776.a n = A024080 n

end A024080

/-! ## A024080.P17061941868953690152

`abs(A024119(n)-A248341(n))`
-/

namespace A024080.P17061941868953690152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024119 n - A248341 n|

end

end A024080.P17061941868953690152

namespace A024080

/-- `abs(A024119(n)-A248341(n))` -/
def P17061941868953690152.Spec : Prop :=
  ∀ n, P17061941868953690152.a n = A024080 n

end A024080

/-!
# A024081: a(n) = 7^n - n^6.

The programs for A024081, the canonical program `A024081.P12773103204112800631` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024081 has offset 0).

The definition of A024081 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-n^6` (program `A024081.P12773103204112800631`, by `A024081.P12773103204112800631.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024081.P12773103204112800631

`7^n-n^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024081

/-- `7^n-n^6` -/
def P12773103204112800631.Spec : Prop :=
  ∀ n, P12773103204112800631.a n = A024081 n

theorem P12773103204112800631.correct : P12773103204112800631.Spec := by
  intro n
  simp only [A024081]

end A024081

/-!
# A024082: a(n) = 7^n - n^7.

The programs for A024082, the canonical program `A024082.P15340472064905873487` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024082 has offset 0).

The definition of A024082 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-n^7` (program `A024082.P15340472064905873487`, by `A024082.P15340472064905873487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024082.P15340472064905873487

`7^n-n^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024082

/-- `7^n-n^7` -/
def P15340472064905873487.Spec : Prop :=
  ∀ n, P15340472064905873487.a n = A024082 n

theorem P15340472064905873487.correct : P15340472064905873487.Spec := by
  intro n
  simp only [A024082]

end A024082

/-! ## A024082.P10808180151084793468

`ceil(A109808(n+1)/2-A001015(n))`
-/

namespace A024082.P10808180151084793468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109808 (n + 1) : ℚ) / 2 - (A001015 n : ℚ)⌉

end

end A024082.P10808180151084793468

namespace A024082

/-- `ceil(A109808(n+1)/2-A001015(n))` -/
def P10808180151084793468.Spec : Prop :=
  ∀ n, P10808180151084793468.a n = A024082 n

end A024082

/-! ## A024082.P13071367986624981330

`A055651(eq[7, A025581(n)])`
-/

namespace A024082.P13071367986624981330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024082.P13071367986624981330

namespace A024082

/-- `A055651(eq[7, A025581(n)])` -/
def P13071367986624981330.Spec : Prop :=
  ∀ n, P13071367986624981330.a n = A024082 n

end A024082

/-! ## A024082.P16334493634809652960

`A055651(A000096(n+7)-7)`
-/

namespace A024082.P16334493634809652960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A000096 (n + 7) - 7).toNat

end

end A024082.P16334493634809652960

namespace A024082

/-- `A055651(A000096(n+7)-7)` -/
def P16334493634809652960.Spec : Prop :=
  ∀ n, P16334493634809652960.a n = A024082 n

end A024082

/-! ## A024082.P14693854779222699460

`A055651(eq[8, A004736(n+1)])`
-/

namespace A024082.P14693854779222699460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024082.P14693854779222699460

namespace A024082

/-- `A055651(eq[8, A004736(n+1)])` -/
def P14693854779222699460.Spec : Prop :=
  ∀ n, P14693854779222699460.a n = A024082 n

end A024082

/-! ## A024082.P12708276710844851176

`A055651(eq[8, sqrt(A055461(n+1))])`
-/

namespace A024082.P12708276710844851176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A024082.P12708276710844851176

namespace A024082

/-- `A055651(eq[8, sqrt(A055461(n+1))])` -/
def P12708276710844851176.Spec : Prop :=
  ∀ n, P12708276710844851176.a n = A024082 n

end A024082

/-! ## A024082.P12044220018051088904

`A055651(A000124(n+7)+n-1)`
-/

namespace A024082.P12044220018051088904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A024082.P12044220018051088904

namespace A024082

/-- `A055651(A000124(n+7)+n-1)` -/
def P12044220018051088904.Spec : Prop :=
  ∀ n, P12044220018051088904.a n = A024082 n

end A024082

/-! ## A024082.P7638342005273781445

`A055651(2*n+A000096(n+5)+8)`
-/

namespace A024082.P7638342005273781445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 ((2 * n : ℤ) + (A000096 (n + 5) + 8)).toNat

end

end A024082.P7638342005273781445

namespace A024082

/-- `A055651(2*n+A000096(n+5)+8)` -/
def P7638342005273781445.Spec : Prop :=
  ∀ n, P7638342005273781445.a n = A024082 n

end A024082

/-! ## A024082.P8327761399238660190

`A055651(A023443(n)+A000124(n+7))`
-/

namespace A024082.P8327761399238660190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A023443 n + A000124 (n + 7)).toNat

end

end A024082.P8327761399238660190

namespace A024082

/-- `A055651(A023443(n)+A000124(n+7))` -/
def P8327761399238660190.Spec : Prop :=
  ∀ n, P8327761399238660190.a n = A024082 n

end A024082

/-!
# A024083: a(n) = 7^n - n^8.

The programs for A024083, the canonical program `A024083.P1960822575801936859` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024083 has offset 0).

The definition of A024083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-n^8` (program `A024083.P1960822575801936859`, by `A024083.P1960822575801936859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024083.P1960822575801936859

`7^n-n^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024083

/-- `7^n-n^8` -/
def P1960822575801936859.Spec : Prop :=
  ∀ n, P1960822575801936859.a n = A024083 n

theorem P1960822575801936859.correct : P1960822575801936859.Spec := by
  intro n
  simp only [A024083]

end A024083

/-!
# A024084: a(n) = 7^n - n^9.

The programs for A024084, the canonical program `A024084.P462180284772606099` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024084 has offset 0).

The definition of A024084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-n^9` (program `A024084.P462180284772606099`, by `A024084.P462180284772606099.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024084.P462180284772606099

`7^n-n^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024084

/-- `7^n-n^9` -/
def P462180284772606099.Spec : Prop :=
  ∀ n, P462180284772606099.a n = A024084 n

theorem P462180284772606099.correct : P462180284772606099.Spec := by
  intro n
  simp only [A024084]

end A024084

/-! ## A024084.P9501179548191108158

`round(A024032(n)+Δ[A109021(n)/2])`
-/

namespace A024084.P9501179548191108158
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109021 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024032 n : ℚ) + (f1 (n + 1) - f1 n))

end

end A024084.P9501179548191108158

namespace A024084

/-- `round(A024032(n)+Δ[A109021(n)/2])` -/
def P9501179548191108158.Spec : Prop :=
  ∀ n, P9501179548191108158.a n = A024084 n

end A024084

/-!
# A024085: a(n) = 7^n - n^10.

The programs for A024085, the canonical program `A024085.P8059400302017359576` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024085 has offset 0).

The definition of A024085 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-n^10` (program `A024085.P8059400302017359576`, by `A024085.P8059400302017359576.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024085.P8059400302017359576

`7^n-n^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024085

/-- `7^n-n^10` -/
def P8059400302017359576.Spec : Prop :=
  ∀ n, P8059400302017359576.a n = A024085 n

theorem P8059400302017359576.correct : P8059400302017359576.Spec := by
  intro n
  simp only [A024085]

end A024085

/-! ## A024085.P11333522189816273616

`or(A000420(n)-A008454(n), A005369(n))`
-/

namespace A024085.P11333522189816273616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000420 n - A008454 n) (A005369 n)

end

end A024085.P11333522189816273616

namespace A024085

/-- `or(A000420(n)-A008454(n), A005369(n))` -/
def P11333522189816273616.Spec : Prop :=
  ∀ n, P11333522189816273616.a n = A024085 n

end A024085

/-! ## A024085.P13924891208536005573

`(A000420(n)-A008454(n))*A007318(C(2, n+2))`
-/

namespace A024085.P13924891208536005573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A008454 n) * A007318 (Nat.choose 2 (n + 2))

end

end A024085.P13924891208536005573

namespace A024085

/-- `(A000420(n)-A008454(n))*A007318(C(2, n+2))` -/
def P13924891208536005573.Spec : Prop :=
  ∀ n, P13924891208536005573.a n = A024085 n

end A024085

/-! ## A024085.P250979990524515674

`xor(A000420(n)-A008454(n), A008683(12*n+4))`
-/

namespace A024085.P250979990524515674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000420 n - A008454 n) (A008683 (12 * n + 4))

end

end A024085.P250979990524515674

namespace A024085

/-- `xor(A000420(n)-A008454(n), A008683(12*n+4))` -/
def P250979990524515674.Spec : Prop :=
  ∀ n, P250979990524515674.a n = A024085 n

end A024085

/-! ## A024085.P9021584167351765973

`(A000420(n)-A008454(n))*A000010(gcd(n, n+1))`
-/

namespace A024085.P9021584167351765973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A008454 n) * A000010 (Nat.gcd n (n + 1))

end

end A024085.P9021584167351765973

namespace A024085

/-- `(A000420(n)-A008454(n))*A000010(gcd(n, n+1))` -/
def P9021584167351765973.Spec : Prop :=
  ∀ n, P9021584167351765973.a n = A024085 n

end A024085

/-! ## A024085.P10441967950368774021

`(A000420(n)-A008454(n))*A353742(A349991(n)+1)`
-/

namespace A024085.P10441967950368774021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A008454 n) * A353742 (A349991 n + 1).toNat

end

end A024085.P10441967950368774021

namespace A024085

/-- `(A000420(n)-A008454(n))*A353742(A349991(n)+1)` -/
def P10441967950368774021.Spec : Prop :=
  ∀ n, P10441967950368774021.a n = A024085 n

end A024085

/-! ## A024085.P13598955605266677853

`(A000420(n)-A008454(n))*A033999(A001844(n))²`
-/

namespace A024085.P13598955605266677853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A008454 n) * A033999 (A001844 n).toNat ^ 2

end

end A024085.P13598955605266677853

namespace A024085

/-- `(A000420(n)-A008454(n))*A033999(A001844(n))²` -/
def P13598955605266677853.Spec : Prop :=
  ∀ n, P13598955605266677853.a n = A024085 n

end A024085

/-!
# A024086: a(n) = 7^n - n^11.

The programs for A024086, the canonical program `A024086.P17053606440816417213` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024086 has offset 0).

The definition of A024086 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-n^11` (program `A024086.P17053606440816417213`, by `A024086.P17053606440816417213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024086.P17053606440816417213

`7^n-n^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024086

/-- `7^n-n^11` -/
def P17053606440816417213.Spec : Prop :=
  ∀ n, P17053606440816417213.a n = A024086 n

theorem P17053606440816417213.correct : P17053606440816417213.Spec := by
  intro n
  simp only [A024086]

end A024086

/-! ## A024086.P13929717074202865361

`floor(A109808(n+1)/2-A008455(n))`
-/

namespace A024086.P13929717074202865361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A109808 (n + 1) : ℚ) / 2 - (A008455 n : ℚ)⌋

end

end A024086.P13929717074202865361

namespace A024086

/-- `floor(A109808(n+1)/2-A008455(n))` -/
def P13929717074202865361.Spec : Prop :=
  ∀ n, P13929717074202865361.a n = A024086 n

end A024086

/-! ## A024086.P3876363304857900419

`or(A109808(n+1)/2-A008455(n), A164292(n+1))`
-/

namespace A024086.P3876363304857900419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A109808 (n + 1) : ℚ) / 2 - (A008455 n : ℚ))) (A164292 (n + 1))

end

end A024086.P3876363304857900419

namespace A024086

/-- `or(A109808(n+1)/2-A008455(n), A164292(n+1))` -/
def P3876363304857900419.Spec : Prop :=
  ∀ n, P3876363304857900419.a n = A024086 n

end A024086

/-! ## A024086.P3116879972274627459

`(A109808(n+1)/2-A008455(n))*a(A057427(n)-1)` with `a(0)=1`
-/

namespace A024086.P3116879972274627459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A109808 (n + 1) : ℚ) / 2 - (A008455 n : ℚ)) * a (A057427 n - 1).toNat

end

end A024086.P3116879972274627459

namespace A024086

/-- `(A109808(n+1)/2-A008455(n))*a(A057427(n)-1)` -/
def P3116879972274627459.Spec : Prop :=
  ∀ n, P3116879972274627459.a n = (A024086 n : ℚ)

end A024086

/-! ## A024086.P11899371027093931832

`(A109808(n+1)/2-A008455(n))%A222840(n+1)`
-/

namespace A024086.P11899371027093931832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A109808 (n + 1) : ℚ) / 2 - (A008455 n : ℚ))) (A222840 (n + 1))

end

end A024086.P11899371027093931832

namespace A024086

/-- `(A109808(n+1)/2-A008455(n))%A222840(n+1)` -/
def P11899371027093931832.Spec : Prop :=
  ∀ n, P11899371027093931832.a n = A024086 n

end A024086

/-!
# A024087: a(n) = 7^n - n^12.

The programs for A024087, the canonical program `A024087.P18429535570230088833` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024087 has offset 0).

The definition of A024087 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-n^12` (program `A024087.P18429535570230088833`, by `A024087.P18429535570230088833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024087.P18429535570230088833

`7^n-n^12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024087

/-- `7^n-n^12` -/
def P18429535570230088833.Spec : Prop :=
  ∀ n, P18429535570230088833.a n = A024087 n

theorem P18429535570230088833.correct : P18429535570230088833.Spec := by
  intro n
  simp only [A024087]

end A024087

/-!
# A024088: a(n) = 8^n - 1.

The programs for A024088, the canonical program `A024088.P4916598862229937563` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024088 has offset 0).

The definition of A024088 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-1` (program `A024088.P4916598862229937563`, by `A024088.P4916598862229937563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024088.P4916598862229937563

`8^n-1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024088

/-- `8^n-1` -/
def P4916598862229937563.Spec : Prop :=
  ∀ n, P4916598862229937563.a n = A024088 n

theorem P4916598862229937563.correct : P4916598862229937563.Spec := by
  intro n
  simp only [A024088]

end A024088

/-!
# A024089: a(n) = 8^n - n.

The programs for A024089, the canonical program `A024089.P6271714123966524924` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024089 has offset 0).

The definition of A024089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-n` (program `A024089.P6271714123966524924`, by `A024089.P6271714123966524924.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024089.P6271714123966524924

`8^n-n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024089

/-- `8^n-n` -/
def P6271714123966524924.Spec : Prop :=
  ∀ n, P6271714123966524924.a n = A024089 n

theorem P6271714123966524924.correct : P6271714123966524924.Spec := by
  intro n
  simp only [A024089]

end A024089

/-!
# A024090: a(n) = 8^n-n^2.

The programs for A024090, the canonical program `A024090.P2966414660364504331` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024090 has offset 0).

The definition of A024090 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-n²` (program `A024090.P2966414660364504331`, by `A024090.P2966414660364504331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024090.P2966414660364504331

`8^n-n²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024090

/-- `8^n-n²` -/
def P2966414660364504331.Spec : Prop :=
  ∀ n, P2966414660364504331.a n = A024090 n

theorem P2966414660364504331.correct : P2966414660364504331.Spec := by
  intro n
  simp only [A024090]

end A024090

/-! ## A024090.P18086541618734648570

`-xor(-8^n, n²)`
-/

namespace A024090.P18086541618734648570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-(8 ^ n : ℤ)) (n ^ 2 : ℤ)

end

end A024090.P18086541618734648570

namespace A024090

/-- `-xor(-8^n, n²)` -/
def P18086541618734648570.Spec : Prop :=
  ∀ n, P18086541618734648570.a n = A024090 n

end A024090

/-! ## A024090.P17669986494670708633

`abs(n²-A001018(n))`
-/

namespace A024090.P17669986494670708633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A001018 n|

end

end A024090.P17669986494670708633

namespace A024090

/-- `abs(n²-A001018(n))` -/
def P17669986494670708633.Spec : Prop :=
  ∀ n, P17669986494670708633.a n = A024090 n

end A024090

/-! ## A024090.P818179338865093336

`abs(8^n-A000290(n))`
-/

namespace A024090.P818179338865093336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 ^ n : ℤ) - A000290 n|

end

end A024090.P818179338865093336

namespace A024090

/-- `abs(8^n-A000290(n))` -/
def P818179338865093336.Spec : Prop :=
  ∀ n, P818179338865093336.a n = A024090 n

end A024090

/-! ## A024090.P11182306617728850440

`abs(A000079(3*n)-n²)`
-/

namespace A024090.P11182306617728850440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (3 * n) - (n ^ 2 : ℤ)|

end

end A024090.P11182306617728850440

namespace A024090

/-- `abs(A000079(3*n)-n²)` -/
def P11182306617728850440.Spec : Prop :=
  ∀ n, P11182306617728850440.a n = A024090 n

end A024090

/-! ## A024090.P5841606660644973415

`∑[A055274(n)-A004273(n)]`
-/

namespace A024090.P5841606660644973415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024090.P5841606660644973415

namespace A024090

/-- `∑[A055274(n)-A004273(n)]` -/
def P5841606660644973415.Spec : Prop :=
  ∀ n, P5841606660644973415.a n = A024090 n

end A024090

/-! ## A024090.P10646686563838991019

`record[A094014(n)-A002620(n)]`
-/

namespace A024090.P10646686563838991019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n - A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024090.P10646686563838991019

namespace A024090

/-- `record[A094014(n)-A002620(n)]` -/
def P10646686563838991019.Spec : Prop :=
  ∀ n, P10646686563838991019.a n = A024090 n

end A024090

/-! ## A024090.P5689611312965702490

`abs(A000290(n)-A000079(3*n))`
-/

namespace A024090.P5689611312965702490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n - A000079 (3 * n)|

end

end A024090.P5689611312965702490

namespace A024090

/-- `abs(A000290(n)-A000079(3*n))` -/
def P5689611312965702490.Spec : Prop :=
  ∀ n, P5689611312965702490.a n = A024090 n

end A024090

/-! ## A024090.P17693454527396120989

`abs(n^A014963(A001316(n))-8^n)`
-/

namespace A024090.P17693454527396120989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) ^ (A014963 (A001316 n).toNat : ℤ) - (8 ^ n : ℚ)|

end

end A024090.P17693454527396120989

namespace A024090

/-- `abs(n^A014963(A001316(n))-8^n)` -/
def P17693454527396120989.Spec : Prop :=
  ∀ n, P17693454527396120989.a n = (A024090 n : ℚ)

end A024090

/-!
# A024091: a(n) = 8^n - n^3.

The programs for A024091, the canonical program `A024091.P12919735006082843414` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024091 has offset 0).

The definition of A024091 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-n^3` (program `A024091.P12919735006082843414`, by `A024091.P12919735006082843414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024091.P12919735006082843414

`8^n-n^3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024091

/-- `8^n-n^3` -/
def P12919735006082843414.Spec : Prop :=
  ∀ n, P12919735006082843414.a n = A024091 n

theorem P12919735006082843414.correct : P12919735006082843414.Spec := by
  intro n
  simp only [A024091]

end A024091

/-! ## A024091.P800310401378902787

`abs(n*n²-A001018(n))`
-/

namespace A024091.P800310401378902787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * n ^ 2 : ℤ) - A001018 n|

end

end A024091.P800310401378902787

namespace A024091

/-- `abs(n*n²-A001018(n))` -/
def P800310401378902787.Spec : Prop :=
  ∀ n, P800310401378902787.a n = A024091 n

end A024091

/-! ## A024091.P15494881496963874609

`abs(A001018(n)-A000578(n))`
-/

namespace A024091.P15494881496963874609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001018 n - A000578 n|

end

end A024091.P15494881496963874609

namespace A024091

/-- `abs(A001018(n)-A000578(n))` -/
def P15494881496963874609.Spec : Prop :=
  ∀ n, P15494881496963874609.a n = A024091 n

end A024091

/-! ## A024091.P17491097801060932580

`abs(A000578(n)-A013730(n)/2)`
-/

namespace A024091.P17491097801060932580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A000578 n : ℚ) - (A013730 n : ℚ) / 2|

end

end A024091.P17491097801060932580

namespace A024091

/-- `abs(A000578(n)-A013730(n)/2)` -/
def P17491097801060932580.Spec : Prop :=
  ∀ n, P17491097801060932580.a n = (A024091 n : ℚ)

end A024091

/-! ## A024091.P7345909750249567358

`abs(A024093(n)+A133070(n)+n²)`
-/

namespace A024091.P7345909750249567358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024093 n + (A133070 n + (n ^ 2 : ℤ))|

end

end A024091.P7345909750249567358

namespace A024091

/-- `abs(A024093(n)+A133070(n)+n²)` -/
def P7345909750249567358.Spec : Prop :=
  ∀ n, P7345909750249567358.a n = A024091 n

end A024091

/-! ## A024091.P5746686419010743867

`gcd(n*n²-A001018(n), A008683(A016814(n)))`
-/

namespace A024091.P5746686419010743867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n * n ^ 2 : ℤ) - A001018 n) (A008683 (A016814 n).toNat)

end

end A024091.P5746686419010743867

namespace A024091

/-- `gcd(n*n²-A001018(n), A008683(A016814(n)))` -/
def P5746686419010743867.Spec : Prop :=
  ∀ n, (P5746686419010743867.a n : ℤ) = A024091 n

end A024091

/-!
# A024092: a(n) = 8^n - n^4.

The programs for A024092, the canonical program `A024092.P450069344864279862` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024092 has offset 0).

The definition of A024092 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-n^4` (program `A024092.P450069344864279862`, by `A024092.P450069344864279862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024092.P450069344864279862

`8^n-n^4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024092

/-- `8^n-n^4` -/
def P450069344864279862.Spec : Prop :=
  ∀ n, P450069344864279862.a n = A024092 n

theorem P450069344864279862.correct : P450069344864279862.Spec := by
  intro n
  simp only [A024092]

end A024092

/-! ## A024092.P12264646326083932019

`abs(n²²-A001018(n))`
-/

namespace A024092.P12264646326083932019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) - A001018 n|

end

end A024092.P12264646326083932019

namespace A024092

/-- `abs(n²²-A001018(n))` -/
def P12264646326083932019.Spec : Prop :=
  ∀ n, P12264646326083932019.a n = A024092 n

end A024092

/-! ## A024092.P8559528756369433063

`floor(A001018(n)-sqrt(A001016(n)))`
-/

namespace A024092.P8559528756369433063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001018 n : ℝ) - Real.sqrt (A001016 n : ℝ)⌋

end

end A024092.P8559528756369433063

namespace A024092

/-- `floor(A001018(n)-sqrt(A001016(n)))` -/
def P8559528756369433063.Spec : Prop :=
  ∀ n, P8559528756369433063.a n = A024092 n

end A024092

/-! ## A024092.P8957749402028942764

`record[A094014(n)-A002620(n)²]`
-/

namespace A024092.P8957749402028942764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n - A002620 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024092.P8957749402028942764

namespace A024092

/-- `record[A094014(n)-A002620(n)²]` -/
def P8957749402028942764.Spec : Prop :=
  ∀ n, P8957749402028942764.a n = A024092 n

end A024092

/-! ## A024092.P9935319818033342169

`(A001018(n)-sqrt(A001016(n)))*A033999(n)²`
-/

namespace A024092.P9935319818033342169
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A001018 n : ℝ) - Real.sqrt (A001016 n : ℝ)) * (A033999 n ^ 2 : ℝ)

end

end A024092.P9935319818033342169

namespace A024092

/-- `(A001018(n)-sqrt(A001016(n)))*A033999(n)²` -/
def P9935319818033342169.Spec : Prop :=
  ∀ n, P9935319818033342169.a n = (A024092 n : ℝ)

end A024092

/-! ## A024092.P15430285771537930623

`(A001018(n)-n²²)%A199109(2*n)`
-/

namespace A024092.P15430285771537930623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001018 n - ((n ^ 2) ^ 2 : ℤ)) (A199109 (2 * n))

end

end A024092.P15430285771537930623

namespace A024092

/-- `(A001018(n)-n²²)%A199109(2*n)` -/
def P15430285771537930623.Spec : Prop :=
  ∀ n, P15430285771537930623.a n = A024092 n

end A024092

/-! ## A024092.P13724888994216852734

`(A001018(n)-n²²)%A199109(n)²`
-/

namespace A024092.P13724888994216852734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001018 n - ((n ^ 2) ^ 2 : ℤ)) (A199109 n ^ 2)

end

end A024092.P13724888994216852734

namespace A024092

/-- `(A001018(n)-n²²)%A199109(n)²` -/
def P13724888994216852734.Spec : Prop :=
  ∀ n, P13724888994216852734.a n = A024092 n

end A024092

/-!
# A024093: a(n) = 8^n - n^5.

The programs for A024093, the canonical program `A024093.P5053209640138573960` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024093 has offset 0).

The definition of A024093 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-n^5` (program `A024093.P5053209640138573960`, by `A024093.P5053209640138573960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024093.P5053209640138573960

`8^n-n^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024093

/-- `8^n-n^5` -/
def P5053209640138573960.Spec : Prop :=
  ∀ n, P5053209640138573960.a n = A024093 n

theorem P5053209640138573960.correct : P5053209640138573960.Spec := by
  intro n
  simp only [A024093]

end A024093

/-! ## A024093.P2663904922919871001

`abs(A024088(n)+A024003(n))`
-/

namespace A024093.P2663904922919871001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024088 n + A024003 n|

end

end A024093.P2663904922919871001

namespace A024093

/-- `abs(A024088(n)+A024003(n))` -/
def P2663904922919871001.Spec : Prop :=
  ∀ n, P2663904922919871001.a n = A024093 n

end A024093

/-! ## A024093.P14293681580775802468

`abs(A000584(n)-A001018(n))`
-/

namespace A024093.P14293681580775802468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000584 n - A001018 n|

end

end A024093.P14293681580775802468

namespace A024093

/-- `abs(A000584(n)-A001018(n))` -/
def P14293681580775802468.Spec : Prop :=
  ∀ n, P14293681580775802468.a n = A024093 n

end A024093

/-! ## A024093.P4407920036171157013

`Δ[A023001(n)-A263689(n)]`
-/

namespace A024093.P4407920036171157013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n - A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024093.P4407920036171157013

namespace A024093

/-- `Δ[A023001(n)-A263689(n)]` -/
def P4407920036171157013.Spec : Prop :=
  ∀ n, P4407920036171157013.a n = A024093 n

end A024093

/-! ## A024093.P7752319616068103211

`abs(A024054(n)+A155641(n)-1)`
-/

namespace A024093.P7752319616068103211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024054 n + (A155641 n - 1)|

end

end A024093.P7752319616068103211

namespace A024093

/-- `abs(A024054(n)+A155641(n)-1)` -/
def P7752319616068103211.Spec : Prop :=
  ∀ n, P7752319616068103211.a n = A024093 n

end A024093

/-! ## A024093.P7599604265018411892

`abs(A024091(n)-(A133070(n)+n²))`
-/

namespace A024093.P7599604265018411892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024091 n - (A133070 n + (n ^ 2 : ℤ))|

end

end A024093.P7599604265018411892

namespace A024093

/-- `abs(A024091(n)-(A133070(n)+n²))` -/
def P7599604265018411892.Spec : Prop :=
  ∀ n, P7599604265018411892.a n = A024093 n

end A024093

/-! ## A024093.P4818123522089865115

`(A074525(n)+A024067(n))%A074522(n)`
-/

namespace A024093.P4818123522089865115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074525 n + A024067 n) (A074522 n)

end

end A024093.P4818123522089865115

namespace A024093

/-- `(A074525(n)+A024067(n))%A074522(n)` -/
def P4818123522089865115.Spec : Prop :=
  ∀ n, P4818123522089865115.a n = A024093 n

end A024093

/-!
# A024094: a(n) = 8^n-n^6.

The programs for A024094, the canonical program `A024094.P8675570654741397852` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024094 has offset 0).

The definition of A024094 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-n^6` (program `A024094.P8675570654741397852`, by `A024094.P8675570654741397852.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024094.P8675570654741397852

`8^n-n^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024094

/-- `8^n-n^6` -/
def P8675570654741397852.Spec : Prop :=
  ∀ n, P8675570654741397852.a n = A024094 n

theorem P8675570654741397852.correct : P8675570654741397852.Spec := by
  intro n
  simp only [A024094]

end A024094

/-! ## A024094.P9321925748650999099

`(A062395(n)-A002604(n))*gcd(n, n+1)`
-/

namespace A024094.P9321925748650999099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062395 n - A002604 n) * (Nat.gcd n (n + 1) : ℤ)

end

end A024094.P9321925748650999099

namespace A024094

/-- `(A062395(n)-A002604(n))*gcd(n, n+1)` -/
def P9321925748650999099.Spec : Prop :=
  ∀ n, P9321925748650999099.a n = A024094 n

end A024094

/-! ## A024094.P13398511630778036834

`(A062395(n)-A002604(n))%A062395(n)`
-/

namespace A024094.P13398511630778036834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062395 n - A002604 n) (A062395 n)

end

end A024094.P13398511630778036834

namespace A024094

/-- `(A062395(n)-A002604(n))%A062395(n)` -/
def P13398511630778036834.Spec : Prop :=
  ∀ n, P13398511630778036834.a n = A024094 n

end A024094

/-! ## A024094.P16793603232718608360

`(A062395(n)-A002604(n))*A057077(n)²`
-/

namespace A024094.P16793603232718608360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062395 n - A002604 n) * A057077 n ^ 2

end

end A024094.P16793603232718608360

namespace A024094

/-- `(A062395(n)-A002604(n))*A057077(n)²` -/
def P16793603232718608360.Spec : Prop :=
  ∀ n, P16793603232718608360.a n = A024094 n

end A024094

/-! ## A024094.P10531823749252804931

`(A062395(n)-A002604(n))*A007318(C(2, n))`
-/

namespace A024094.P10531823749252804931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062395 n - A002604 n) * A007318 (Nat.choose 2 n)

end

end A024094.P10531823749252804931

namespace A024094

/-- `(A062395(n)-A002604(n))*A007318(C(2, n))` -/
def P10531823749252804931.Spec : Prop :=
  ∀ n, P10531823749252804931.a n = A024094 n

end A024094

/-! ## A024094.P2594403155418658332

`(A000035(2*n)+1)*(A062395(n)-A002604(n))`
-/

namespace A024094.P2594403155418658332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (2 * n) + 1) * (A062395 n - A002604 n)

end

end A024094.P2594403155418658332

namespace A024094

/-- `(A000035(2*n)+1)*(A062395(n)-A002604(n))` -/
def P2594403155418658332.Spec : Prop :=
  ∀ n, P2594403155418658332.a n = A024094 n

end A024094

/-! ## A024094.P3430046069830760880

`xor(A062395(n)-A002604(n), A008683(4*(n+10)))`
-/

namespace A024094.P3430046069830760880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062395 n - A002604 n) (A008683 (4 * (n + 10)))

end

end A024094.P3430046069830760880

namespace A024094

/-- `xor(A062395(n)-A002604(n), A008683(4*(n+10)))` -/
def P3430046069830760880.Spec : Prop :=
  ∀ n, P3430046069830760880.a n = A024094 n

end A024094

/-! ## A024094.P18123977848248045195

`(A062395(n)-A002604(n))*C(2, A000203(n+2))!`
-/

namespace A024094.P18123977848248045195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062395 n - A002604 n) * (Nat.factorial (Nat.choose 2 (A000203 (n + 2)).toNat) : ℤ)

end

end A024094.P18123977848248045195

namespace A024094

/-- `(A062395(n)-A002604(n))*C(2, A000203(n+2))!` -/
def P18123977848248045195.Spec : Prop :=
  ∀ n, P18123977848248045195.a n = A024094 n

end A024094

/-! ## A024094.P13907100520261773807

`(A062395(n)-A002604(n))*A178637(A020639(n+2))`
-/

namespace A024094.P13907100520261773807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062395 n - A002604 n) * A178637 (A020639 (n + 2)).toNat

end

end A024094.P13907100520261773807

namespace A024094

/-- `(A062395(n)-A002604(n))*A178637(A020639(n+2))` -/
def P13907100520261773807.Spec : Prop :=
  ∀ n, P13907100520261773807.a n = A024094 n

end A024094

/-! ## A024094.P9514331761198837212

`(A062395(n)-A002604(n))*A007318(A151878(n))`
-/

namespace A024094.P9514331761198837212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062395 n - A002604 n) * A007318 (A151878 n).toNat

end

end A024094.P9514331761198837212

namespace A024094

/-- `(A062395(n)-A002604(n))*A007318(A151878(n))` -/
def P9514331761198837212.Spec : Prop :=
  ∀ n, P9514331761198837212.a n = A024094 n

end A024094

/-!
# A024095: a(n) = 8^n - n^7.

The programs for A024095, the canonical program `A024095.P6747026426927842255` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024095 has offset 0).

The definition of A024095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-n^7` (program `A024095.P6747026426927842255`, by `A024095.P6747026426927842255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024095.P6747026426927842255

`8^n-n^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024095

/-- `8^n-n^7` -/
def P6747026426927842255.Spec : Prop :=
  ∀ n, P6747026426927842255.a n = A024095 n

theorem P6747026426927842255.correct : P6747026426927842255.Spec := by
  intro n
  simp only [A024095]

end A024095

/-! ## A024095.P6659367073425658550

`(A000079(3*n)-A001015(n))*A130296(3*(n+1))`
-/

namespace A024095.P6659367073425658550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (3 * n) - A001015 n) * A130296 (3 * (n + 1))

end

end A024095.P6659367073425658550

namespace A024095

/-- `(A000079(3*n)-A001015(n))*A130296(3*(n+1))` -/
def P6659367073425658550.Spec : Prop :=
  ∀ n, P6659367073425658550.a n = A024095 n

end A024095

/-! ## A024095.P10172008030349513659

`(A024005(n)+A000225(3*n))%A024017(3*(n+1))`
-/

namespace A024095.P10172008030349513659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024005 n + A000225 (3 * n)) (A024017 (3 * (n + 1)))

end

end A024095.P10172008030349513659

namespace A024095

/-- `(A024005(n)+A000225(3*n))%A024017(3*(n+1))` -/
def P10172008030349513659.Spec : Prop :=
  ∀ n, P10172008030349513659.a n = A024095 n

end A024095

/-!
# A024096: a(n) = 8^n - n^8.

The programs for A024096, the canonical program `A024096.P9192083389690480226` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024096 has offset 0).

The definition of A024096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-n^8` (program `A024096.P9192083389690480226`, by `A024096.P9192083389690480226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024096.P9192083389690480226

`8^n-n^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024096

/-- `8^n-n^8` -/
def P9192083389690480226.Spec : Prop :=
  ∀ n, P9192083389690480226.a n = A024096 n

theorem P9192083389690480226.correct : P9192083389690480226.Spec := by
  intro n
  simp only [A024096]

end A024096

/-! ## A024096.P11613974451579051296

`A055651(A000217(n+9)-9)`
-/

namespace A024096.P11613974451579051296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A000217 (n + 9) - 9).toNat

end

end A024096.P11613974451579051296

namespace A024096

/-- `A055651(A000217(n+9)-9)` -/
def P11613974451579051296.Spec : Prop :=
  ∀ n, P11613974451579051296.a n = A024096 n

end A024096

/-! ## A024096.P11815055251359715509

`A055651(A000096(n+7)+n+1)`
-/

namespace A024096.P11815055251359715509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A024096.P11815055251359715509

namespace A024096

/-- `A055651(A000096(n+7)+n+1)` -/
def P11815055251359715509.Spec : Prop :=
  ∀ n, P11815055251359715509.a n = A024096 n

end A024096

/-! ## A024096.P2258109158534467585

`A055651(A000124(n+8)+n-1)`
-/

namespace A024096.P2258109158534467585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A024096.P2258109158534467585

namespace A024096

/-- `A055651(A000124(n+8)+n-1)` -/
def P2258109158534467585.Spec : Prop :=
  ∀ n, P2258109158534467585.a n = A024096 n

end A024096

/-! ## A024096.P17984436731161024712

`A220417((A000096(n+6)-6)%A220414(n+1))`
-/

namespace A024096.P17984436731161024712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220417 (Int.tmod (A000096 (n + 6) - 6) (A220414 (n + 1))).toNat

end

end A024096.P17984436731161024712

namespace A024096

/-- `A220417((A000096(n+6)-6)%A220414(n+1))` -/
def P17984436731161024712.Spec : Prop :=
  ∀ n, P17984436731161024712.a n = A024096 n

end A024096

/-!
# A024097: a(n) = 8^n - n^9.

The programs for A024097, the canonical program `A024097.P7256960196230568237` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024097 has offset 0).

The definition of A024097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-n^9` (program `A024097.P7256960196230568237`, by `A024097.P7256960196230568237.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024097.P7256960196230568237

`8^n-n^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024097

/-- `8^n-n^9` -/
def P7256960196230568237.Spec : Prop :=
  ∀ n, P7256960196230568237.a n = A024097 n

theorem P7256960196230568237.correct : P7256960196230568237.Spec := by
  intro n
  simp only [A024097]

end A024097

/-! ## A024097.P14407520961365185210

`ceil(sqrt(A089357(n))-A001017(n))`
-/

namespace A024097.P14407520961365185210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A089357 n : ℝ) - (A001017 n : ℝ)⌉

end

end A024097.P14407520961365185210

namespace A024097

/-- `ceil(sqrt(A089357(n))-A001017(n))` -/
def P14407520961365185210.Spec : Prop :=
  ∀ n, P14407520961365185210.a n = A024097 n

end A024097

/-! ## A024097.P16592722393178031145

`floor(sqrt(A000302(3*n))-A001017(n))`
-/

namespace A024097.P16592722393178031145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000302 (3 * n) : ℝ) - (A001017 n : ℝ)⌋

end

end A024097.P16592722393178031145

namespace A024097

/-- `floor(sqrt(A000302(3*n))-A001017(n))` -/
def P16592722393178031145.Spec : Prop :=
  ∀ n, P16592722393178031145.a n = A024097 n

end A024097

/-! ## A024097.P14325449665238191746

`(sqrt(A089357(n))-A001017(n))%A067415(n+1)`
-/

namespace A024097.P14325449665238191746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A089357 n : ℝ) - (A001017 n : ℝ))) (A067415 (n + 1))

end

end A024097.P14325449665238191746

namespace A024097

/-- `(sqrt(A089357(n))-A001017(n))%A067415(n+1)` -/
def P14325449665238191746.Spec : Prop :=
  ∀ n, P14325449665238191746.a n = A024097 n

end A024097

/-! ## A024097.P5474467904951399251

`(sqrt(A089357(n))-A001017(n))%A099373(n)`
-/

namespace A024097.P5474467904951399251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A089357 n : ℝ) - (A001017 n : ℝ))) (A099373 n)

end

end A024097.P5474467904951399251

namespace A024097

/-- `(sqrt(A089357(n))-A001017(n))%A099373(n)` -/
def P5474467904951399251.Spec : Prop :=
  ∀ n, P5474467904951399251.a n = A024097 n

end A024097

/-!
# A024098: a(n) = 8^n - n^10.

The programs for A024098, the canonical program `A024098.P2128010527647480762` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024098 has offset 0).

The definition of A024098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-n^10` (program `A024098.P2128010527647480762`, by `A024098.P2128010527647480762.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024098.P2128010527647480762

`8^n-n^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024098

/-- `8^n-n^10` -/
def P2128010527647480762.Spec : Prop :=
  ∀ n, P2128010527647480762.a n = A024098 n

theorem P2128010527647480762.correct : P2128010527647480762.Spec := by
  intro n
  simp only [A024098]

end A024098

/-! ## A024098.P16321137218639573482

`-(A154589(3*n+1)+A000584(n)²)`
-/

namespace A024098.P16321137218639573482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A154589 (3 * n + 1) + A000584 n ^ 2)

end

end A024098.P16321137218639573482

namespace A024098

/-- `-(A154589(3*n+1)+A000584(n)²)` -/
def P16321137218639573482.Spec : Prop :=
  ∀ n, P16321137218639573482.a n = A024098 n

end A024098

/-! ## A024098.P8826826720154033050

`(A000079(3*n)-A008454(n))%A038833(2*n+3)`
-/

namespace A024098.P8826826720154033050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (3 * n) - A008454 n) (A038833 (2 * n + 3))

end

end A024098.P8826826720154033050

namespace A024098

/-- `(A000079(3*n)-A008454(n))%A038833(2*n+3)` -/
def P8826826720154033050.Spec : Prop :=
  ∀ n, P8826826720154033050.a n = A024098 n

end A024098

/-!
# A024099: a(n) = 8^n - n^11.

The programs for A024099, the canonical program `A024099.P5530469029066638896` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024099 has offset 0).

The definition of A024099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-n^11` (program `A024099.P5530469029066638896`, by `A024099.P5530469029066638896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024099.P5530469029066638896

`8^n-n^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024099

/-- `8^n-n^11` -/
def P5530469029066638896.Spec : Prop :=
  ∀ n, P5530469029066638896.a n = A024099 n

theorem P5530469029066638896.correct : P5530469029066638896.Spec := by
  intro n
  simp only [A024099]

end A024099

/-! ## A024099.P18037963214059587958

`(A000079(3*n)-A008455(n))*A007318(∑[n])`
-/

namespace A024099.P18037963214059587958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (3 * n) - A008455 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024099.P18037963214059587958

namespace A024099

/-- `(A000079(3*n)-A008455(n))*A007318(∑[n])` -/
def P18037963214059587958.Spec : Prop :=
  ∀ n, P18037963214059587958.a n = A024099 n

end A024099

/-! ## A024099.P9959302602187638101

`(A000079(3*n+1)-A008455(n)-A008455(n))/2`
-/

namespace A024099.P9959302602187638101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (3 * n + 1) - A008455 n - A008455 n : ℚ) / 2

end

end A024099.P9959302602187638101

namespace A024099

/-- `(A000079(3*n+1)-A008455(n)-A008455(n))/2` -/
def P9959302602187638101.Spec : Prop :=
  ∀ n, P9959302602187638101.a n = (A024099 n : ℚ)

end A024099

/-! ## A024099.P15388674164122148519

`(A161342(A000079(n))-A008455(n))*A033999(n)²`
-/

namespace A024099.P15388674164122148519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161342 (A000079 n).toNat - A008455 n) * A033999 n ^ 2

end

end A024099.P15388674164122148519

namespace A024099

/-- `(A161342(A000079(n))-A008455(n))*A033999(n)²` -/
def P15388674164122148519.Spec : Prop :=
  ∀ n, P15388674164122148519.a n = A024099 n

end A024099

