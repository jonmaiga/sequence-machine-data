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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A014001: Pisot sequence E(7,15), a(n)=[ a(n-1)^2/a(n-2)+1/2 ].

The programs for A014001, the canonical program `A014001.P642232641326234831` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014001 has offset 0).

The definition of A014001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014001.P642232641326234831

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=7, a(1)=15`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014001

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P642232641326234831.Spec : Prop :=
  ∀ n, P642232641326234831.a n = A014001 n

theorem P642232641326234831.correct : P642232641326234831.Spec := by
  intro n
  simp only [A014001]

end A014001

/-! ## A014001.P9692340187134236406

`round(a(n-1)²/a(n-2))` with `a(0)=7, a(1)=15`
-/

namespace A014001.P9692340187134236406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 15] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A014001.P9692340187134236406

namespace A014001

/-- `round(a(n-1)²/a(n-2))` -/
def P9692340187134236406.Spec : Prop :=
  ∀ n, P9692340187134236406.a n = A014001 n

end A014001

/-!
# A014002: Pisot sequence E(8,14), a(n)=[ a(n-1)^2/a(n-2)+1/2 ].

The programs for A014002, the canonical program `A014002.P6171828677105164662` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014002 has offset 0).

The definition of A014002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014002.P6171828677105164662

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=8, a(1)=14`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014002

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P6171828677105164662.Spec : Prop :=
  ∀ n, P6171828677105164662.a n = A014002 n

theorem P6171828677105164662.correct : P6171828677105164662.Spec := by
  intro n
  simp only [A014002]

end A014002

/-! ## A014002.P6297985126886506335

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=8, a(1)=14`
-/

namespace A014002.P6297985126886506335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 14] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A014002.P6297985126886506335

namespace A014002

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P6297985126886506335.Spec : Prop :=
  ∀ n, P6297985126886506335.a n = A014002 n

end A014002

/-! ## A014002.P4259805959447546869

`round(a(n-1)²/a(n-2))` with `a(0)=8, a(1)=14`
-/

namespace A014002.P4259805959447546869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 14] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A014002.P4259805959447546869

namespace A014002

/-- `round(a(n-1)²/a(n-2))` -/
def P4259805959447546869.Spec : Prop :=
  ∀ n, P4259805959447546869.a n = A014002 n

end A014002

/-! ## A014002.P18423605615373655316

`A090995(A077741(n+1))-A287381(n)`
-/

namespace A014002.P18423605615373655316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090995 (A077741 (n + 1)).toNat - A287381 n

end

end A014002.P18423605615373655316

namespace A014002

/-- `A090995(A077741(n+1))-A287381(n)` -/
def P18423605615373655316.Spec : Prop :=
  ∀ n, P18423605615373655316.a n = A014002 n

end A014002

/-! ## A014002.P3596157844570227821

`A090995(A032559(n+1))-A287381(n)`
-/

namespace A014002.P3596157844570227821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090995 (A032559 (n + 1)).toNat - A287381 n

end

end A014002.P3596157844570227821

namespace A014002

/-- `A090995(A032559(n+1))-A287381(n)` -/
def P3596157844570227821.Spec : Prop :=
  ∀ n, P3596157844570227821.a n = A014002 n

end A014002

/-!
# A014003: Pisot sequence E(9,15), a(n) = floor( a(n-1)^2/a(n-2) + 1/2 ).

The programs for A014003, the canonical program `A014003.P14812474714788576136` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014003 has offset 0).

The definition of A014003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A014003.P14812474714788576136`, by `A014003.P14812474714788576136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014003.P14812474714788576136

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=9, a(1)=15`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014003

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P14812474714788576136.Spec : Prop :=
  ∀ n, P14812474714788576136.a n = A014003 n

theorem P14812474714788576136.correct : P14812474714788576136.Spec := by
  intro n
  simp only [A014003]

end A014003

/-! ## A014003.P5374604658231010011

`round(a(n-1)²/a(n-2))` with `a(0)=9, a(1)=15`
-/

namespace A014003.P5374604658231010011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 15] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A014003.P5374604658231010011

namespace A014003

/-- `round(a(n-1)²/a(n-2))` -/
def P5374604658231010011.Spec : Prop :=
  ∀ n, P5374604658231010011.a n = A014003 n

end A014003

/-! ## A014003.P246364903288112318

`ceil(sqrt(3*A299798(n+3)))`
-/

namespace A014003.P246364903288112318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 * A299798 (n + 3) : ℝ)⌉

end

end A014003.P246364903288112318

namespace A014003

/-- `ceil(sqrt(3*A299798(n+3)))` -/
def P246364903288112318.Spec : Prop :=
  ∀ n, P246364903288112318.a n = A014003 n

end A014003

/-! ## A014003.P10090441178176776181

`A104338(A053999(2*n+3))+A034084(n+4)`
-/

namespace A014003.P10090441178176776181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104338 (A053999 (2 * n + 3)).toNat + A034084 (n + 4)

end

end A014003.P10090441178176776181

namespace A014003

/-- `A104338(A053999(2*n+3))+A034084(n+4)` -/
def P10090441178176776181.Spec : Prop :=
  ∀ n, P10090441178176776181.a n = A014003 n

end A014003

/-!
# A014004: Pisot sequence E(9,17), a(n) = floor( a(n-1)^2/a(n-2) + 1/2 ).

The programs for A014004, the canonical program `A014004.P5895830945212216660` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014004 has offset 0).

The definition of A014004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A014004.P5895830945212216660`, by `A014004.P5895830945212216660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014004.P5895830945212216660

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=9, a(1)=17`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014004

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P5895830945212216660.Spec : Prop :=
  ∀ n, P5895830945212216660.a n = A014004 n

theorem P5895830945212216660.correct : P5895830945212216660.Spec := by
  intro n
  simp only [A014004]

end A014004

/-! ## A014004.P10765708842844797928

`round(a(n-1)²/a(n-2))` with `a(0)=9, a(1)=17`
-/

namespace A014004.P10765708842844797928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 17] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A014004.P10765708842844797928

namespace A014004

/-- `round(a(n-1)²/a(n-2))` -/
def P10765708842844797928.Spec : Prop :=
  ∀ n, P10765708842844797928.a n = A014004 n

end A014004

/-! ## A014004.P13552063933742307692

`A297300(A004918(n+1)+5)`
-/

namespace A014004.P13552063933742307692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297300 (A004918 (n + 1) + 5).toNat

end

end A014004.P13552063933742307692

namespace A014004

/-- `A297300(A004918(n+1)+5)` -/
def P13552063933742307692.Spec : Prop :=
  ∀ n, P13552063933742307692.a n = A014004 n

end A014004

/-! ## A014004.P11488453565476021425

`A297300(n+5)%A172465(A065995(n+1))`
-/

namespace A014004.P11488453565476021425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297300 (n + 5)) (A172465 (A065995 (n + 1)).toNat)

end

end A014004.P11488453565476021425

namespace A014004

/-- `A297300(n+5)%A172465(A065995(n+1))` -/
def P11488453565476021425.Spec : Prop :=
  ∀ n, P11488453565476021425.a n = A014004 n

end A014004

/-! ## A014004.P12185821917078392328

`C(A297300(n+5), A318320(A182575(n+1)))`
-/

namespace A014004.P12185821917078392328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A297300 (n + 5)).toNat (A318320 (A182575 (n + 1)).toNat).toNat

end

end A014004.P12185821917078392328

namespace A014004

/-- `C(A297300(n+5), A318320(A182575(n+1)))` -/
def P12185821917078392328.Spec : Prop :=
  ∀ n, (P12185821917078392328.a n : ℤ) = A014004 n

end A014004

/-!
# A014005: Pisot sequence E(9,19), a(n)=[ a(n-1)^2/a(n-2)+1/2 ].

The programs for A014005, the canonical program `A014005.P4405679261828666766` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014005 has offset 0).

The definition of A014005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014005.P4405679261828666766

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=9, a(1)=19`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014005

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P4405679261828666766.Spec : Prop :=
  ∀ n, P4405679261828666766.a n = A014005 n

theorem P4405679261828666766.correct : P4405679261828666766.Spec := by
  intro n
  simp only [A014005]

end A014005

/-! ## A014005.P6892268976051826203

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=9, a(1)=19`
-/

namespace A014005.P6892268976051826203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 19] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A014005.P6892268976051826203

namespace A014005

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P6892268976051826203.Spec : Prop :=
  ∀ n, P6892268976051826203.a n = A014005 n

end A014005

/-! ## A014005.P12165156738651056347

`round(a(n-1)²/a(n-2))` with `a(0)=9, a(1)=19`
-/

namespace A014005.P12165156738651056347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 19] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A014005.P12165156738651056347

namespace A014005

/-- `round(a(n-1)²/a(n-2))` -/
def P12165156738651056347.Spec : Prop :=
  ∀ n, P12165156738651056347.a n = A014005 n

end A014005

/-!
# A014006: Pisot sequence E(10,18), a(n)=[ a(n-1)^2/a(n-2)+1/2 ].

The programs for A014006, the canonical program `A014006.P4499140552250564368` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014006 has offset 0).

The definition of A014006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014006.P4499140552250564368

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=10, a(1)=18`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014006

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P4499140552250564368.Spec : Prop :=
  ∀ n, P4499140552250564368.a n = A014006 n

theorem P4499140552250564368.correct : P4499140552250564368.Spec := by
  intro n
  simp only [A014006]

end A014006

/-! ## A014006.P2163166665264058146

`round(a(n-1)²/a(n-2))` with `a(0)=10, a(1)=18`
-/

namespace A014006.P2163166665264058146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 18] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A014006.P2163166665264058146

namespace A014006

/-- `round(a(n-1)²/a(n-2))` -/
def P2163166665264058146.Spec : Prop :=
  ∀ n, P2163166665264058146.a n = A014006 n

end A014006

/-! ## A014006.P15330470298446318945

`A255122(Δ[A255071(n+5)]+1)`
-/

namespace A014006.P15330470298446318945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255071 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255122 (f1 (n + 1) - f1 n + 1).toNat

end

end A014006.P15330470298446318945

namespace A014006

/-- `A255122(Δ[A255071(n+5)]+1)` -/
def P15330470298446318945.Spec : Prop :=
  ∀ n, P15330470298446318945.a n = A014006 n

end A014006

/-!
# A014007: Pisot sequence E(10,21), a(n) = floor( a(n-1)^2/a(n-2)+1/2 ).

The programs for A014007, the canonical program `A014007.P1668306809995914698` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014007 has offset 0).

The definition of A014007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A014007.P1668306809995914698`, by `A014007.P1668306809995914698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014007.P1668306809995914698

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=10, a(1)=21`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014007

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P1668306809995914698.Spec : Prop :=
  ∀ n, P1668306809995914698.a n = A014007 n

theorem P1668306809995914698.correct : P1668306809995914698.Spec := by
  intro n
  simp only [A014007]

end A014007

/-! ## A014007.P5577926208288205279

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=10, a(1)=21`
-/

namespace A014007.P5577926208288205279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 21] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A014007.P5577926208288205279

namespace A014007

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P5577926208288205279.Spec : Prop :=
  ∀ n, P5577926208288205279.a n = A014007 n

end A014007

/-! ## A014007.P13370764964831392432

`round(a(n-1)²/a(n-2))` with `a(0)=10, a(1)=21`
-/

namespace A014007.P13370764964831392432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 21] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A014007.P13370764964831392432

namespace A014007

/-- `round(a(n-1)²/a(n-2))` -/
def P13370764964831392432.Spec : Prop :=
  ∀ n, P13370764964831392432.a n = A014007 n

end A014007

/-! ## A014007.P13819368305637945142

`A060384(10*a(n-1))` with `a(0)=10`
-/

namespace A014007.P13819368305637945142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A060384 (10 * a (n - 1)).toNat

end

end A014007.P13819368305637945142

namespace A014007

/-- `A060384(10*a(n-1))` -/
def P13819368305637945142.Spec : Prop :=
  ∀ n, P13819368305637945142.a n = A014007 n

end A014007

/-!
# A014008: Pisot sequence E(10,22), a(n) = floor( a(n-1)^2/a(n-2)+1/2 ).

The programs for A014008, the canonical program `A014008.P5221021376703895886` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014008 has offset 0).

The definition of A014008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2)+1/2)` (program `A014008.P5221021376703895886`, by `A014008.P5221021376703895886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014008.P5221021376703895886

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=10, a(1)=22`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014008

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P5221021376703895886.Spec : Prop :=
  ∀ n, P5221021376703895886.a n = A014008 n

theorem P5221021376703895886.correct : P5221021376703895886.Spec := by
  intro n
  simp only [A014008]

end A014008

/-! ## A014008.P1629051464282058614

`round(a(n-1)²/a(n-2))` with `a(0)=10, a(1)=22`
-/

namespace A014008.P1629051464282058614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 22] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A014008.P1629051464282058614

namespace A014008

/-- `round(a(n-1)²/a(n-2))` -/
def P1629051464282058614.Spec : Prop :=
  ∀ n, P1629051464282058614.a n = A014008 n

end A014008

/-! ## A014008.P6023931201143288303

`A020911(5*a(n-1)+1)` with `a(0)=10`
-/

namespace A014008.P6023931201143288303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A020911 (5 * a (n - 1) + 1).toNat

end

end A014008.P6023931201143288303

namespace A014008

/-- `A020911(5*a(n-1)+1)` -/
def P6023931201143288303.Spec : Prop :=
  ∀ n, P6023931201143288303.a n = A014008 n

end A014008

/-! ## A014008.P17056090282717335736

`A020915(A020909(5*a(n-1)))` with `a(0)=10`
-/

namespace A014008.P17056090282717335736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A020915 (A020909 (5 * a (n - 1)).toNat).toNat

end

end A014008.P17056090282717335736

namespace A014008

/-- `A020915(A020909(5*a(n-1)))` -/
def P17056090282717335736.Spec : Prop :=
  ∀ n, P17056090282717335736.a n = A014008 n

end A014008

/-!
# A014009: First differences of Shallit sequence S(3,7) (A020730).

The programs for A014009, the canonical program `A014009.P4228678718295041253` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014009 has offset 0).

The definition of A014009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014009.P4228678718295041253

`Δ[ceil(a(n-1)²/a(n-2))]` with `a(0)=0, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014009

/-- `Δ[ceil(a(n-1)²/a(n-2))]` -/
def P4228678718295041253.Spec : Prop :=
  ∀ n, P4228678718295041253.a n = A014009 n

theorem P4228678718295041253.correct : P4228678718295041253.Spec := by
  intro n
  simp only [A014009]

end A014009

/-! ## A014009.P14373945978360328951

`A029922(4*a(n-1))` with `a(0)=3, a(1)=4`
-/

namespace A014009.P14373945978360328951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  A029922 (4 * a (n - 1)).toNat

end

end A014009.P14373945978360328951

namespace A014009

/-- `A029922(4*a(n-1))` -/
def P14373945978360328951.Spec : Prop :=
  ∀ n, P14373945978360328951.a n = A014009 n

end A014009

/-! ## A014009.P15520176788713796638

`A097508(6*a(n-1)+1)` with `a(0)=3, a(1)=4`
-/

namespace A014009.P15520176788713796638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  A097508 (6 * a (n - 1) + 1).toNat

end

end A014009.P15520176788713796638

namespace A014009

/-- `A097508(6*a(n-1)+1)` -/
def P15520176788713796638.Spec : Prop :=
  ∀ n, P15520176788713796638.a n = A014009 n

end A014009

/-!
# A014010: Linear recursion relative of Shallit sequence S(2,6).

The programs for A014010, the canonical program `A014010.P2138803115856816874` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014010 has offset 0).

The definition of A014010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014010.P2138803115856816874

`3*a(n-1)+a(n-2)-a(n-3)+a(n-4)-3*a(n-5)` with `a(0)=2, a(1)=6, a(2)=19, a(3)=61, a(4)=196`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014010

/-- `3*a(n-1)+a(n-2)-a(n-3)+a(n-4)-3*a(n-5)` -/
def P2138803115856816874.Spec : Prop :=
  ∀ n, P2138803115856816874.a n = A014010 n

theorem P2138803115856816874.correct : P2138803115856816874.Spec := by
  intro n
  simp only [A014010]

end A014010

/-! ## A014010.P3509469545031903838

`A185284(Δ[n²])+A018906(n)`
-/

namespace A014010.P3509469545031903838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A018906 n

end

end A014010.P3509469545031903838

namespace A014010

/-- `A185284(Δ[n²])+A018906(n)` -/
def P3509469545031903838.Spec : Prop :=
  ∀ n, P3509469545031903838.a n = A014010 n

end A014010

/-! ## A014010.P3923036029416520052

`A018906(n)+A185284(2*n+1)²`
-/

namespace A014010.P3923036029416520052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018906 n + A185284 (2 * n + 1) ^ 2

end

end A014010.P3923036029416520052

namespace A014010

/-- `A018906(n)+A185284(2*n+1)²` -/
def P3923036029416520052.Spec : Prop :=
  ∀ n, P3923036029416520052.a n = A014010 n

end A014010

/-! ## A014010.P16491078065753477898

`A018906(n)-A014038(A013915(n))`
-/

namespace A014010.P16491078065753477898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018906 n - A014038 (A013915 n).toNat

end

end A014010.P16491078065753477898

namespace A014010

/-- `A018906(n)-A014038(A013915(n))` -/
def P16491078065753477898.Spec : Prop :=
  ∀ n, P16491078065753477898.a n = A014010 n

end A014010

/-! ## A014010.P84632055088735664

`A100910(A004394(n+1))+A018906(n)`
-/

namespace A014010.P84632055088735664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A004394 (n + 1)).toNat + A018906 n

end

end A014010.P84632055088735664

namespace A014010

/-- `A100910(A004394(n+1))+A018906(n)` -/
def P84632055088735664.Spec : Prop :=
  ∀ n, P84632055088735664.a n = A014010 n

end A014010

/-!
# A014011: Defined by a chi-inequality greedy algorithm.

The programs for A014011, there is no canonical definition to state claims against.
-/

/-! ## A014011.P12845621168473495262

`A226390(n)+a(n-1)` with `a(0)=1`
-/

namespace A014011.P12845621168473495262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226390 n + a (n - 1)

end

end A014011.P12845621168473495262

/-! ## A014011.P921774235956945816

`∑[A226390((n+1)%2+n)]`
-/

namespace A014011.P921774235956945816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 ((n + 1) % 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014011.P921774235956945816

/-! ## A014011.P13544043654925023663

`∑[A226390(2*floor(n/2)+1)]`
-/

namespace A014011.P13544043654925023663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (2 * ⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014011.P13544043654925023663

/-! ## A014011.P18406921748009459339

`∑[A051742(n+1)+1]-A226390(n+1)`
-/

namespace A014011.P18406921748009459339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A226390 (n + 1)

end

end A014011.P18406921748009459339

/-! ## A014011.P15122776326574218462

`A051741(n+1)-(n+3)*A226390(n+1)`
-/

namespace A014011.P15122776326574218462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051741 (n + 1) - (n + 3 : ℤ) * A226390 (n + 1)

end

end A014011.P15122776326574218462

/-! ## A014011.P15074291219825806966

`∑[A227388(n+2)]/(n+2)`
-/

namespace A014011.P15074291219825806966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A014011.P15074291219825806966

/-!
# A014014: Alternating Engel expansion of Pi.

The programs for A014014, there is no canonical definition to state claims against.
-/

/-! ## A014014.P13954937914538912638

`floor(A061233(n)+acot(n)²)`
-/

namespace A014014.P13954937914538912638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061233 n : ℝ) + SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A014014.P13954937914538912638

/-! ## A014014.P8181989857856645255

`A061233(n)+A000038(n)`
-/

namespace A014014.P8181989857856645255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061233 n + A000038 n

end

end A014014.P8181989857856645255

/-! ## A014014.P9743938462154989825

`or(A000038(2*n), A061233(n))`
-/

namespace A014014.P9743938462154989825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (2 * n)) (A061233 n)

end

end A014014.P9743938462154989825

/-! ## A014014.P6033250559929043665

`A000732(C(2, n+2))*A061233(n)`
-/

namespace A014014.P6033250559929043665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000732 (Nat.choose 2 (n + 2)) * A061233 n

end

end A014014.P6033250559929043665

/-! ## A014014.P6264345376525556708

`round(A159075(n)+A061233(n)+acot(n)²)`
-/

namespace A014014.P6264345376525556708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A159075 n : ℝ) + ((A061233 n : ℝ) + SequenceMachineLib.acot (n : ℝ) ^ 2))

end

end A014014.P6264345376525556708

/-! ## A014014.P7151225679064893743

`A061233(n)+C(2, A000732(n))`
-/

namespace A014014.P7151225679064893743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061233 n + (Nat.choose 2 (A000732 n).toNat : ℤ)

end

end A014014.P7151225679064893743

/-!
# A014016: Expansion of inverse of 7th cyclotomic polynomial; period 7: repeat [1, -1, 0, 0, 0, 0, 0].

The programs for A014016, the canonical program `A014016.P1361007777265501712` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014016 has offset 0).

The definition of A014016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014016.P1361007777265501712

`1+floor(n/7)+floor((5+n)/7)-2*floor((6+n)/7)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014016

/-- `1+floor(n/7)+floor((5+n)/7)-2*floor((6+n)/7)` -/
def P1361007777265501712.Spec : Prop :=
  ∀ n, P1361007777265501712.a n = A014016 n

theorem P1361007777265501712.correct : P1361007777265501712.Spec := by
  intro n
  simp only [A014016]

end A014016

/-!
# A014017: Inverse of 8th cyclotomic polynomial.

The programs for A014017, the canonical program `A014017.P16051978919752576119` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014017 has offset 0).

The definition of A014017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014017.P16051978919752576119

`cos(n*acot(char[2*n]))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014017

/-- `cos(n*acot(char[2*n]))` -/
def P16051978919752576119.Spec : Prop :=
  ∀ n, P16051978919752576119.a n = (A014017 n : ℝ)

end A014017

/-!
# A014018: Inverse of 9th cyclotomic polynomial.

The programs for A014018, the canonical program `A014018.P4131505346120317743` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014018 has offset 0).

The definition of A014018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014018.P4131505346120317743

`floor(cos(tan(log2(dr(n+1)))))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014018

/-- `floor(cos(tan(log2(dr(n+1)))))` -/
def P4131505346120317743.Spec : Prop :=
  ∀ n, P4131505346120317743.a n = A014018 n

theorem P4131505346120317743.correct : P4131505346120317743.Spec := by
  intro n
  simp only [A014018]

end A014018

/-!
# A014019: Inverse of 10th cyclotomic polynomial.

The programs for A014019, the canonical program `A014019.P11985016477220557845` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014019 has offset 0).

The definition of A014019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014019.P11985016477220557845

`a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014019

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P11985016477220557845.Spec : Prop :=
  ∀ n, P11985016477220557845.a n = A014019 n

theorem P11985016477220557845.correct : P11985016477220557845.Spec := by
  intro n
  simp only [A014019]

end A014019

/-!
# A014020: Inverse of 11th cyclotomic polynomial.

The programs for A014020, there is no canonical definition to state claims against.
-/

/-! ## A014020.P3120137249826114852

`A014031(n)*A033999(n)`
-/

namespace A014020.P3120137249826114852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014031 n * A033999 n

end

end A014020.P3120137249826114852

/-!
# A014021: Inverse of 12th cyclotomic polynomial.

The programs for A014021, the canonical program `A014021.P9068418944485466028` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014021 has offset 0).

The definition of A014021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014021.P9068418944485466028

`ogf(1/(1-x^2+x^4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014021

/-- `ogf(1/(1-x^2+x^4))` -/
def P9068418944485466028.Spec : Prop :=
  ∀ n, P9068418944485466028.a n = A014021 n

theorem P9068418944485466028.correct : P9068418944485466028.Spec := by
  intro n
  simp only [A014021]

end A014021

/-!
# A014022: Inverse of 13th cyclotomic polynomial.

The programs for A014022, the canonical program `A014022.P13529364460648374080` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014022 has offset 0).

The definition of A014022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014022.P13529364460648374080

`A014035(n)*A033999(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014022

/-- `A014035(n)*A033999(n)` -/
def P13529364460648374080.Spec : Prop :=
  ∀ n, P13529364460648374080.a n = A014022 n

theorem P13529364460648374080.correct : P13529364460648374080.Spec := by
  intro n
  simp only [A014022]

end A014022

/-!
# A014023: Inverse of 14th cyclotomic polynomial.

The programs for A014023, the canonical program `A014023.P8727501565675565317` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014023 has offset 0).

The definition of A014023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014023.P8727501565675565317

`A014016(n)*A033999(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014023

/-- `A014016(n)*A033999(n)` -/
def P8727501565675565317.Spec : Prop :=
  ∀ n, P8727501565675565317.a n = A014023 n

theorem P8727501565675565317.correct : P8727501565675565317.Spec := by
  intro n
  simp only [A014023]

end A014023

/-!
# A014024: Inverse of 15th cyclotomic polynomial.

The programs for A014024, there is no canonical definition to state claims against.
-/

/-! ## A014024.P175189427341530634

`A014039(n)*A033999(n)`
-/

namespace A014024.P175189427341530634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014039 n * A033999 n

end

end A014024.P175189427341530634

/-!
# A014025: Expansion of the inverse of the 16th cyclotomic polynomial.

The programs for A014025, the canonical program `A014025.P12093083570649284138` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014025 has offset 0).

The definition of A014025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014025.P12093083570649284138

`-a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014025

/-- `-a(n-8)` -/
def P12093083570649284138.Spec : Prop :=
  ∀ n, P12093083570649284138.a n = A014025 n

theorem P12093083570649284138.correct : P12093083570649284138.Spec := by
  intro n
  simp only [A014025]

end A014025

/-!
# A014026: Inverse of 17th cyclotomic polynomial.

The programs for A014026, there is no canonical definition to state claims against.
-/

/-! ## A014026.P7797210569953675060

`A014043(n)*A033999(n)`
-/

namespace A014026.P7797210569953675060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014043 n * A033999 n

end

end A014026.P7797210569953675060

/-!
# A014027: Inverse of 18th cyclotomic polynomial.

The programs for A014027, the canonical program `A014027.P2033593308897047608` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014027 has offset 0).

The definition of A014027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014027.P2033593308897047608

`a(n-3)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014027

/-- `a(n-3)-a(n-6)` -/
def P2033593308897047608.Spec : Prop :=
  ∀ n, P2033593308897047608.a n = A014027 n

theorem P2033593308897047608.correct : P2033593308897047608.Spec := by
  intro n
  simp only [A014027]

end A014027

/-!
# A014028: Inverse of 19th cyclotomic polynomial.

The programs for A014028, there is no canonical definition to state claims against.
-/

/-! ## A014028.P10215422084267624927

`A014047(n)*A033999(n)`
-/

namespace A014028.P10215422084267624927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014047 n * A033999 n

end

end A014028.P10215422084267624927

/-!
# A014029: Inverse of 20th cyclotomic polynomial.

The programs for A014029, the canonical program `A014029.P15990451290800491649` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014029 has offset 0).

The definition of A014029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014029.P15990451290800491649

`A056594(n)*A105385(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014029

/-- `A056594(n)*A105385(n)` -/
def P15990451290800491649.Spec : Prop :=
  ∀ n, P15990451290800491649.a n = A014029 n

theorem P15990451290800491649.correct : P15990451290800491649.Spec := by
  intro n
  simp only [A014029]

end A014029

/-!
# A014030: Inverse of 21st cyclotomic polynomial.

The programs for A014030, the canonical program `A014030.P9782131551506662798` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014030 has offset 0).

The definition of A014030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014030.P9782131551506662798

`A014018(A057357(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014030

/-- `A014018(A057357(n))` -/
def P9782131551506662798.Spec : Prop :=
  ∀ n, P9782131551506662798.a n = A014030 n

theorem P9782131551506662798.correct : P9782131551506662798.Spec := by
  intro n
  simp only [A014030]

end A014030

/-!
# A014031: Inverse of 22nd cyclotomic polynomial.

The programs for A014031, there is no canonical definition to state claims against.
-/

/-! ## A014031.P17877461111683205642

`A014020(n)*A033999(n)`
-/

namespace A014031.P17877461111683205642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014020 n * A033999 n

end

end A014031.P17877461111683205642

/-!
# A014032: Inverse of 23rd cyclotomic polynomial.

The programs for A014032, there is no canonical definition to state claims against.
-/

/-! ## A014032.P15667921275865150870

`A014055(n)*A033999(n)`
-/

namespace A014032.P15667921275865150870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014055 n * A033999 n

end

end A014032.P15667921275865150870

/-!
# A014033: Inverse of 24th cyclotomic polynomial.

The programs for A014033, the canonical program `A014033.P6509231531898097959` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014033 has offset 0).

The definition of A014033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014033.P6509231531898097959

`A014021(gcd(n, ∑[n]))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014033

/-- `A014021(gcd(n, ∑[n]))` -/
def P6509231531898097959.Spec : Prop :=
  ∀ n, P6509231531898097959.a n = A014033 n

theorem P6509231531898097959.correct : P6509231531898097959.Spec := by
  intro n
  simp only [A014033]

end A014033

/-!
# A014034: Inverse of 25th cyclotomic polynomial.

The programs for A014034, there is no canonical definition to state claims against.
-/

/-! ## A014034.P16931538848320997577

`A014019(n)*A014059(n)`
-/

namespace A014034.P16931538848320997577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 n * A014059 n

end

end A014034.P16931538848320997577

/-!
# A014035: Inverse of 26th cyclotomic polynomial.

The programs for A014035, the canonical program `A014035.P9043399292843675734` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014035 has offset 0).

The definition of A014035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014035.P9043399292843675734

`A014025(A057363(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014035

/-- `A014025(A057363(n))` -/
def P9043399292843675734.Spec : Prop :=
  ∀ n, P9043399292843675734.a n = A014035 n

theorem P9043399292843675734.correct : P9043399292843675734.Spec := by
  intro n
  simp only [A014035]

end A014035

/-!
# A014036: Inverse of 27th cyclotomic polynomial.

The programs for A014036, the canonical program `A014036.P8056661823149945385` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014036 has offset 0).

The definition of A014036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014036.P8056661823149945385

`A014018(A051176(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014036

/-- `A014018(A051176(n))` -/
def P8056661823149945385.Spec : Prop :=
  ∀ n, P8056661823149945385.a n = A014036 n

theorem P8056661823149945385.correct : P8056661823149945385.Spec := by
  intro n
  simp only [A014036]

end A014036

/-!
# A014037: Inverse of 28th cyclotomic polynomial.

The programs for A014037, the canonical program `A014037.P7779358375219223676` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014037 has offset 0).

The definition of A014037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014037.P7779358375219223676

`(A238469(n+1)-A238470(n))*A056594(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014037

/-- `(A238469(n+1)-A238470(n))*A056594(n)` -/
def P7779358375219223676.Spec : Prop :=
  ∀ n, P7779358375219223676.a n = A014037 n

theorem P7779358375219223676.correct : P7779358375219223676.Spec := by
  intro n
  simp only [A014037]

end A014037

/-!
# A014038: Inverse of 29th cyclotomic polynomial.

The programs for A014038, there is no canonical definition to state claims against.
-/

/-! ## A014038.P5070972829719879250

`A014067(n)*A033999(n)`
-/

namespace A014038.P5070972829719879250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014067 n * A033999 n

end

end A014038.P5070972829719879250

/-!
# A014039: Inverse of 30th cyclotomic polynomial.

The programs for A014039, there is no canonical definition to state claims against.
-/

/-! ## A014039.P787536852041046650

`A014024(n)*A033999(n)`
-/

namespace A014039.P787536852041046650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014024 n * A033999 n

end

end A014039.P787536852041046650

/-!
# A014040: Inverse of 31st cyclotomic polynomial.

The programs for A014040, there is no canonical definition to state claims against.
-/

/-! ## A014040.P7278088118884079005

`A014071(n)*A033999(n)`
-/

namespace A014040.P7278088118884079005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014071 n * A033999 n

end

end A014040.P7278088118884079005

/-!
# A014041: Inverse of 32nd cyclotomic polynomial.

The programs for A014041, the canonical program `A014041.P7274271345307664619` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014041 has offset 0).

The definition of A014041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014041.P7274271345307664619

`A056594(lcm(8, n)/8)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014041

/-- `A056594(lcm(8, n)/8)` -/
def P7274271345307664619.Spec : Prop :=
  ∀ n, P7274271345307664619.a n = A014041 n

theorem P7274271345307664619.correct : P7274271345307664619.Spec := by
  intro n
  simp only [A014041]

end A014041

/-!
# A014042: Inverse of 33rd cyclotomic polynomial.

The programs for A014042, there is no canonical definition to state claims against.
-/

/-! ## A014042.P11577152208091744625

`A014075(n)*A033999(n)`
-/

namespace A014042.P11577152208091744625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014075 n * A033999 n

end

end A014042.P11577152208091744625

/-!
# A014043: Inverse of 34th cyclotomic polynomial.

The programs for A014043, there is no canonical definition to state claims against.
-/

/-! ## A014043.P1402232794533510229

`A014026(n)*A033999(n)`
-/

namespace A014043.P1402232794533510229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014026 n * A033999 n

end

end A014043.P1402232794533510229

/-!
# A014044: Inverse of 35th cyclotomic polynomial.

The programs for A014044, there is no canonical definition to state claims against.
-/

/-! ## A014044.P479807708491196106

`A014079(n)*A033999(n)`
-/

namespace A014044.P479807708491196106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014079 n * A033999 n

end

end A014044.P479807708491196106

/-!
# A014045: Inverse of 36th cyclotomic polynomial.

The programs for A014045, the canonical program `A014045.P814894345440706175` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014045 has offset 0).

The definition of A014045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014045.P814894345440706175

`A014033(A004396(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014045

/-- `A014033(A004396(n))` -/
def P814894345440706175.Spec : Prop :=
  ∀ n, P814894345440706175.a n = A014045 n

theorem P814894345440706175.correct : P814894345440706175.Spec := by
  intro n
  simp only [A014045]

end A014045

/-!
# A014047: Inverse of 38th cyclotomic polynomial.

The programs for A014047, there is no canonical definition to state claims against.
-/

/-! ## A014047.P15042702812957702316

`A014028(n)*A033999(n)`
-/

namespace A014047.P15042702812957702316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014028 n * A033999 n

end

end A014047.P15042702812957702316

/-!
# A014048: Inverse of 39th cyclotomic polynomial.

The programs for A014048, there is no canonical definition to state claims against.
-/

/-! ## A014048.P4011209524093813990

`A014087(n)*A033999(n)`
-/

namespace A014048.P4011209524093813990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014087 n * A033999 n

end

end A014048.P4011209524093813990

/-!
# A014049: Inverse of 40th cyclotomic polynomial.

The programs for A014049, the canonical program `A014049.P6714396449392787227` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014049 has offset 0).

The definition of A014049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014049.P6714396449392787227

`A014029(lcm(2, n)/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014049

/-- `A014029(lcm(2, n)/2)` -/
def P6714396449392787227.Spec : Prop :=
  ∀ n, P6714396449392787227.a n = A014049 n

theorem P6714396449392787227.correct : P6714396449392787227.Spec := by
  intro n
  simp only [A014049]

end A014049

/-!
# A014050: a(n) = (n^2+1)^n.

The programs for A014050, the canonical program `A014050.P7039779300862470690` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014050 has offset 0).

The definition of A014050 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+1)^n` (program `A014050.P7039779300862470690`, by `A014050.P7039779300862470690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014050.P7039779300862470690

`(n²+1)^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014050

/-- `(n²+1)^n` -/
def P7039779300862470690.Spec : Prop :=
  ∀ n, (P7039779300862470690.a n : ℤ) = A014050 n

theorem P7039779300862470690.correct : P7039779300862470690.Spec := by
  intro n
  simp only [A014050]

end A014050

/-! ## A014050.P11442823414295910257

`(cos(atan(n))^-n)²`
-/

namespace A014050.P11442823414295910257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.cos (Real.arctan (n : ℝ)) ^ (-(n : ℤ) : ℤ)) ^ 2

end

end A014050.P11442823414295910257

namespace A014050

/-- `(cos(atan(n))^-n)²` -/
def P11442823414295910257.Spec : Prop :=
  ∀ n, P11442823414295910257.a n = (A014050 n : ℝ)

end A014050

/-! ## A014050.P14555534328424830199

`(sin(acot(n))^-n)²`
-/

namespace A014050.P14555534328424830199
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sin (SequenceMachineLib.acot (n : ℝ)) ^ (-(n : ℤ) : ℤ)) ^ 2

end

end A014050.P14555534328424830199

namespace A014050

/-- `(sin(acot(n))^-n)²` -/
def P14555534328424830199.Spec : Prop :=
  ∀ n, P14555534328424830199.a n = (A014050 n : ℝ)

end A014050

/-! ## A014050.P15479972302076545559

`abs(xor(-1, n²)^n)`
-/

namespace A014050.P15479972302076545559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (n ^ 2 : ℤ) ^ n|

end

end A014050.P15479972302076545559

namespace A014050

/-- `abs(xor(-1, n²)^n)` -/
def P15479972302076545559.Spec : Prop :=
  ∀ n, P15479972302076545559.a n = A014050 n

end A014050

/-! ## A014050.P9405661530083982099

`(1/cos(atan(n))^n)²`
-/

namespace A014050.P9405661530083982099
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / Real.cos (Real.arctan (n : ℝ)) ^ n) ^ 2

end

end A014050.P9405661530083982099

namespace A014050

/-- `(1/cos(atan(n))^n)²` -/
def P9405661530083982099.Spec : Prop :=
  ∀ n, P9405661530083982099.a n = (A014050 n : ℝ)

end A014050

/-!
# A014051: Inverse of 42nd cyclotomic polynomial.

The programs for A014051, the canonical program `A014051.P18181555456456612202` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014051 has offset 0).

The definition of A014051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014051.P18181555456456612202

`A014030(n)*A033999(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014051

/-- `A014030(n)*A033999(n)` -/
def P18181555456456612202.Spec : Prop :=
  ∀ n, P18181555456456612202.a n = A014051 n

theorem P18181555456456612202.correct : P18181555456456612202.Spec := by
  intro n
  simp only [A014051]

end A014051

/-!
# A014052: a(n) = floor((n+1/n)^n).

The programs for A014052, the canonical program `A014052.P12793985293094531398` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014052 has offset 1).

The definition of A014052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1+1/(n+1))^(n+1))` (program `A014052.P12793985293094531398`, by `A014052.P12793985293094531398.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014052.P12793985293094531398

`floor((n+1+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014052

/-- `floor((n+1+1/(n+1))^(n+1))` -/
def P12793985293094531398.Spec : Prop :=
  ∀ n, P12793985293094531398.a n = A014052 (n + 1)

theorem P12793985293094531398.correct : P12793985293094531398.Spec := by
  intro n
  simp only [A014052, Nat.add_sub_cancel]

end A014052

/-! ## A014052.P14844650373773979202

`ceil((ratio[n+1]+n)^(n+1))-ceil(sin(n)²)`
-/

namespace A014052.P14844650373773979202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ (n + 1)⌉ - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A014052.P14844650373773979202

namespace A014052

/-- `ceil((ratio[n+1]+n)^(n+1))-ceil(sin(n)²)` -/
def P14844650373773979202.Spec : Prop :=
  ∀ n, P14844650373773979202.a n = A014052 (n + 1)

end A014052

/-! ## A014052.P17872590193424292465

`A014058(n+1)-n²%(n+1)`
-/

namespace A014052.P17872590193424292465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014058 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A014052.P17872590193424292465

namespace A014052

/-- `A014058(n+1)-n²%(n+1)` -/
def P17872590193424292465.Spec : Prop :=
  ∀ n, P17872590193424292465.a n = A014052 (n + 1)

end A014052

/-! ## A014052.P6001975197816646796

`A057428(n)+ceil((ratio[n+1]+n)^(n+1))`
-/

namespace A014052.P6001975197816646796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ⌈((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ (n + 1)⌉

end

end A014052.P6001975197816646796

namespace A014052

/-- `A057428(n)+ceil((ratio[n+1]+n)^(n+1))` -/
def P6001975197816646796.Spec : Prop :=
  ∀ n, P6001975197816646796.a n = A014052 (n + 1)

end A014052

/-! ## A014052.P11146969813891136066

`ceil((ratio[n+1]+n)^(n+1))-A057427(n)`
-/

namespace A014052.P11146969813891136066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ (n + 1)⌉ - A057427 n

end

end A014052.P11146969813891136066

namespace A014052

/-- `ceil((ratio[n+1]+n)^(n+1))-A057427(n)` -/
def P11146969813891136066.Spec : Prop :=
  ∀ n, P11146969813891136066.a n = A014052 (n + 1)

end A014052

/-! ## A014052.P9034406392417222512

`ceil((ratio[n+1]+n)^(n+1))-char[A064989(n+1)]`
-/

namespace A014052.P9034406392417222512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ (n + 1)⌉ - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A014052.P9034406392417222512

namespace A014052

/-- `ceil((ratio[n+1]+n)^(n+1))-char[A064989(n+1)]` -/
def P9034406392417222512.Spec : Prop :=
  ∀ n, P9034406392417222512.a n = A014052 (n + 1)

end A014052

/-! ## A014052.P18004891206212534485

`A014058(n+1)-A178334(n)`
-/

namespace A014052.P18004891206212534485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014058 (n + 1) - A178334 n

end

end A014052.P18004891206212534485

namespace A014052

/-- `A014058(n+1)-A178334(n)` -/
def P18004891206212534485.Spec : Prop :=
  ∀ n, P18004891206212534485.a n = A014052 (n + 1)

end A014052

/-! ## A014052.P1527659424399806925

`ceil((ratio[n+1]+n)^(n+1))-A001222(A008578(n+1))`
-/

namespace A014052.P1527659424399806925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ (n + 1)⌉ - A001222 (A008578 (n + 1)).toNat

end

end A014052.P1527659424399806925

namespace A014052

/-- `ceil((ratio[n+1]+n)^(n+1))-A001222(A008578(n+1))` -/
def P1527659424399806925.Spec : Prop :=
  ∀ n, P1527659424399806925.a n = A014052 (n + 1)

end A014052

/-! ## A014052.P4575640245280634902

`A014058(n+1)+A197604(n+1)-A197904(n+1)`
-/

namespace A014052.P4575640245280634902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014058 (n + 1) + (A197604 (n + 1) - A197904 (n + 1))

end

end A014052.P4575640245280634902

namespace A014052

/-- `A014058(n+1)+A197604(n+1)-A197904(n+1)` -/
def P4575640245280634902.Spec : Prop :=
  ∀ n, P4575640245280634902.a n = A014052 (n + 1)

end A014052

/-!
# A014053: Inverse of 44th cyclotomic polynomial.

The programs for A014053, there is no canonical definition to state claims against.
-/

/-! ## A014053.P11533572948507191209

`A014031(A026741(n)+A014031(n))`
-/

namespace A014053.P11533572948507191209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014031 (A026741 n + A014031 n).toNat

end

end A014053.P11533572948507191209

/-!
# A014054: Inverse of 45th cyclotomic polynomial.

The programs for A014054, there is no canonical definition to state claims against.
-/

/-! ## A014054.P7030153228615463630

`A010892(n)*A014099(n)`
-/

namespace A014054.P7030153228615463630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A014099 n

end

end A014054.P7030153228615463630

/-!
# A014055: Inverse of 46th cyclotomic polynomial.

The programs for A014055, there is no canonical definition to state claims against.
-/

/-! ## A014055.P14262243227544489745

`A014032(n)*A033999(n)`
-/

namespace A014055.P14262243227544489745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014032 n * A033999 n

end

end A014055.P14262243227544489745

/-!
# A014056: a(n) = round( (n + 1/n)^n ).

The programs for A014056, the canonical program `A014056.P6535286672757630371` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014056 has offset 1).

The definition of A014056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1+1/(n+1))^(n+1))` (program `A014056.P6535286672757630371`, by `A014056.P6535286672757630371.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014056.P6535286672757630371

`round((n+1+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014056

/-- `round((n+1+1/(n+1))^(n+1))` -/
def P6535286672757630371.Spec : Prop :=
  ∀ n, P6535286672757630371.a n = A014056 (n + 1)

theorem P6535286672757630371.correct : P6535286672757630371.Spec := by
  intro n
  simp only [A014056, Nat.add_sub_cancel]

end A014056

/-! ## A014056.P10025692860290432391

`A107846(A129519(n))+A014052(n+1)`
-/

namespace A014056.P10025692860290432391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A129519 n).toNat + A014052 (n + 1)

end

end A014056.P10025692860290432391

namespace A014056

/-- `A107846(A129519(n))+A014052(n+1)` -/
def P10025692860290432391.Spec : Prop :=
  ∀ n, P10025692860290432391.a n = A014056 (n + 1)

end A014056

/-! ## A014056.P15628034520887467141

`A014058(n+1)-A069513(A069557(n+1))`
-/

namespace A014056.P15628034520887467141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014058 (n + 1) - A069513 (A069557 (n + 1)).toNat

end

end A014056.P15628034520887467141

namespace A014056

/-- `A014058(n+1)-A069513(A069557(n+1))` -/
def P15628034520887467141.Spec : Prop :=
  ∀ n, P15628034520887467141.a n = A014056 (n + 1)

end A014056

/-! ## A014056.P6803878112188026925

`A014030(A014006(n))+floor((ratio[n+1]+n)^(n+1))`
-/

namespace A014056.P6803878112188026925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014030 (A014006 n).toNat + ⌊((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ (n + 1)⌋

end

end A014056.P6803878112188026925

namespace A014056

/-- `A014030(A014006(n))+floor((ratio[n+1]+n)^(n+1))` -/
def P6803878112188026925.Spec : Prop :=
  ∀ n, P6803878112188026925.a n = A014056 (n + 1)

end A014056

/-! ## A014056.P16411911326977213217

`A046660(A070933(n))+floor((ratio[n+1]+n)^(n+1))`
-/

namespace A014056.P16411911326977213217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A070933 n).toNat + ⌊((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ (n + 1)⌋

end

end A014056.P16411911326977213217

namespace A014056

/-- `A046660(A070933(n))+floor((ratio[n+1]+n)^(n+1))` -/
def P16411911326977213217.Spec : Prop :=
  ∀ n, P16411911326977213217.a n = A014056 (n + 1)

end A014056

/-!
# A014057: Inverse of 48th cyclotomic polynomial.

The programs for A014057, the canonical program `A014057.P17185432036105878235` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014057 has offset 0).

The definition of A014057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014057.P17185432036105878235

`A014033(gcd(n, ∑[n]))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014057

/-- `A014033(gcd(n, ∑[n]))` -/
def P17185432036105878235.Spec : Prop :=
  ∀ n, P17185432036105878235.a n = A014057 n

theorem P17185432036105878235.correct : P17185432036105878235.Spec := by
  intro n
  simp only [A014057]

end A014057

/-!
# A014058: a(n) = ceiling((n+1/n)^n).

The programs for A014058, the canonical program `A014058.P5997024804329497672` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014058 has offset 1).

The definition of A014058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1+1/(n+1))^(n+1))` (program `A014058.P5997024804329497672`, by `A014058.P5997024804329497672.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014058.P5997024804329497672

`ceil((n+1+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014058

/-- `ceil((n+1+1/(n+1))^(n+1))` -/
def P5997024804329497672.Spec : Prop :=
  ∀ n, P5997024804329497672.a n = A014058 (n + 1)

theorem P5997024804329497672.correct : P5997024804329497672.Spec := by
  intro n
  simp only [A014058, Nat.add_sub_cancel]

end A014058

/-! ## A014058.P16107485084005946461

`A014052(n+1)+ceil(abs(sin(n)))`
-/

namespace A014058.P16107485084005946461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014052 (n + 1) + ⌈|Real.sin (n : ℝ)|⌉

end

end A014058.P16107485084005946461

namespace A014058

/-- `A014052(n+1)+ceil(abs(sin(n)))` -/
def P16107485084005946461.Spec : Prop :=
  ∀ n, P16107485084005946461.a n = A014058 (n + 1)

end A014058

/-! ## A014058.P16563831918574585500

`A178334(n)+floor((ratio[n+1]+n)^(n+1))`
-/

namespace A014058.P16563831918574585500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + ⌊((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ (n + 1)⌋

end

end A014058.P16563831918574585500

namespace A014058

/-- `A178334(n)+floor((ratio[n+1]+n)^(n+1))` -/
def P16563831918574585500.Spec : Prop :=
  ∀ n, P16563831918574585500.a n = A014058 (n + 1)

end A014058

/-! ## A014058.P10053872511445300452

`floor((ratio[n+1]+n)^(n+1))-A057428(n)`
-/

namespace A014058.P10053872511445300452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ (n + 1)⌋ - A057428 n

end

end A014058.P10053872511445300452

namespace A014058

/-- `floor((ratio[n+1]+n)^(n+1))-A057428(n)` -/
def P10053872511445300452.Spec : Prop :=
  ∀ n, P10053872511445300452.a n = A014058 (n + 1)

end A014058

/-! ## A014058.P1975419680619522218

`A057427(n)+A014052(n+1)`
-/

namespace A014058.P1975419680619522218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A014052 (n + 1)

end

end A014058.P1975419680619522218

namespace A014058

/-- `A057427(n)+A014052(n+1)` -/
def P1975419680619522218.Spec : Prop :=
  ∀ n, P1975419680619522218.a n = A014058 (n + 1)

end A014058

/-! ## A014058.P13510285604068306283

`A001222(A008578(n+1))+floor((ratio[n+1]+n)^(n+1))`
-/

namespace A014058.P13510285604068306283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat + ⌊((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ (n + 1)⌋

end

end A014058.P13510285604068306283

namespace A014058

/-- `A001222(A008578(n+1))+floor((ratio[n+1]+n)^(n+1))` -/
def P13510285604068306283.Spec : Prop :=
  ∀ n, P13510285604068306283.a n = A014058 (n + 1)

end A014058

/-! ## A014058.P3668757056705170797

`A014052(n+1)+A001876(A001876(n))`
-/

namespace A014058.P3668757056705170797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014052 (n + 1) + A001876 (A001876 n).toNat

end

end A014058.P3668757056705170797

namespace A014058

/-- `A014052(n+1)+A001876(A001876(n))` -/
def P3668757056705170797.Spec : Prop :=
  ∀ n, P3668757056705170797.a n = A014058 (n + 1)

end A014058

/-! ## A014058.P3533022265052866522

`A014052(n+1)+A001221(A062383(n))`
-/

namespace A014058.P3533022265052866522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014052 (n + 1) + A001221 (A062383 n).toNat

end

end A014058.P3533022265052866522

namespace A014058

/-- `A014052(n+1)+A001221(A062383(n))` -/
def P3533022265052866522.Spec : Prop :=
  ∀ n, P3533022265052866522.a n = A014058 (n + 1)

end A014058

/-! ## A014058.P6332194949483109444

`A014052(n+1)+val(A010000(n), A059100(n))`
-/

namespace A014058.P6332194949483109444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014052 (n + 1) + (SequenceMachineLib.valuation (A010000 n).toNat (A059100 n).toNat : ℤ)

end

end A014058.P6332194949483109444

namespace A014058

/-- `A014052(n+1)+val(A010000(n), A059100(n))` -/
def P6332194949483109444.Spec : Prop :=
  ∀ n, P6332194949483109444.a n = A014058 (n + 1)

end A014058

/-! ## A014058.P4947925557555404834

`A014052(n+1)+A197904(n+1)-A197604(n+1)`
-/

namespace A014058.P4947925557555404834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014052 (n + 1) + (A197904 (n + 1) - A197604 (n + 1))

end

end A014058.P4947925557555404834

namespace A014058

/-- `A014052(n+1)+A197904(n+1)-A197604(n+1)` -/
def P4947925557555404834.Spec : Prop :=
  ∀ n, P4947925557555404834.a n = A014058 (n + 1)

end A014058

/-!
# A014059: Inverse of 50th cyclotomic polynomial.

The programs for A014059, there is no canonical definition to state claims against.
-/

/-! ## A014059.P10321207485902394394

`A014019(n)*A014034(n)`
-/

namespace A014059.P10321207485902394394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 n * A014034 n

end

end A014059.P10321207485902394394

/-!
# A014060: Inverse of 51st cyclotomic polynomial.

The programs for A014060, there is no canonical definition to state claims against.
-/

/-! ## A014060.P17891205227949646984

`A014111(n)*A033999(n)`
-/

namespace A014060.P17891205227949646984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014111 n * A033999 n

end

end A014060.P17891205227949646984

/-!
# A014061: Inverse of 52nd cyclotomic polynomial.

The programs for A014061, the canonical program `A014061.P12385080731141190968` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014061 has offset 0).

The definition of A014061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014061.P12385080731141190968

`A014035(A026741(n)+A014035(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014061

/-- `A014035(A026741(n)+A014035(n))` -/
def P12385080731141190968.Spec : Prop :=
  ∀ n, P12385080731141190968.a n = A014061 n

theorem P12385080731141190968.correct : P12385080731141190968.Spec := by
  intro n
  simp only [A014061]

end A014061

/-!
# A014062: a(n) = binomial(n^2, n).

The programs for A014062, there is no canonical definition to state claims against.
-/

/-! ## A014062.P18046771491226311874

`C(n², n)`
-/

namespace A014062.P18046771491226311874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) n

end

end A014062.P18046771491226311874

/-! ## A014062.P8976735589958108004

`A055789(n²)`
-/

namespace A014062.P8976735589958108004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055789 (n ^ 2)

end

end A014062.P8976735589958108004

/-! ## A014062.P8153780415433051338

`A102366(n²)`
-/

namespace A014062.P8153780415433051338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102366 (n ^ 2)

end

end A014062.P8153780415433051338

/-! ## A014062.P16072375978084923703

`A090642(∑[n]+n)`
-/

namespace A014062.P16072375978084923703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090642 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A014062.P16072375978084923703

/-! ## A014062.P12059878226418623730

`A096130(∑[n]+floor(acot(n)))`
-/

namespace A014062.P12059878226418623730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096130 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A014062.P12059878226418623730

/-!
# A014063: Inverse of 54th cyclotomic polynomial.

The programs for A014063, the canonical program `A014063.P15730385007772296176` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014063 has offset 0).

The definition of A014063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014063.P15730385007772296176

`A014045(round(2*n/3))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014063

/-- `A014045(round(2*n/3))` -/
def P15730385007772296176.Spec : Prop :=
  ∀ n, P15730385007772296176.a n = A014063 n

theorem P15730385007772296176.correct : P15730385007772296176.Spec := by
  intro n
  simp only [A014063]

end A014063

/-!
# A014064: Coefficients of the reciprocal of the 55th cyclotomic polynomial.

The programs for A014064, there is no canonical definition to state claims against.
-/

/-! ## A014064.P4974366269672143067

`A014119(n)*A033999(n)`
-/

namespace A014064.P4974366269672143067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014119 n * A033999 n

end

end A014064.P4974366269672143067

/-!
# A014065: Inverse of 56th cyclotomic polynomial.

The programs for A014065, the canonical program `A014065.P13821590454930267756` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014065 has offset 0).

The definition of A014065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014065.P13821590454930267756

`A014037(n/gcd(2, n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014065

/-- `A014037(n/gcd(2, n))` -/
def P13821590454930267756.Spec : Prop :=
  ∀ n, P13821590454930267756.a n = A014065 n

theorem P13821590454930267756.correct : P13821590454930267756.Spec := by
  intro n
  simp only [A014065]

end A014065

/-!
# A014066: Inverse of 57th cyclotomic polynomial.

The programs for A014066, there is no canonical definition to state claims against.
-/

/-! ## A014066.P6229681882632139583

`A014123(n)*A033999(n)`
-/

namespace A014066.P6229681882632139583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014123 n * A033999 n

end

end A014066.P6229681882632139583

/-!
# A014067: Inverse of 58th cyclotomic polynomial.

The programs for A014067, there is no canonical definition to state claims against.
-/

/-! ## A014067.P6669678087729217794

`A014038(n)*A033999(n)`
-/

namespace A014067.P6669678087729217794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014038 n * A033999 n

end

end A014067.P6669678087729217794

/-!
# A014068: a(n) = binomial(n*(n+1)/2, n).

The programs for A014068, there is no canonical definition to state claims against.
-/

/-! ## A014068.P9070554383013191378

`A107862(∑[n])`
-/

namespace A014068.P9070554383013191378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107862 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014068.P9070554383013191378

/-! ## A014068.P16264960431262182753

`A180272(∑[n])`
-/

namespace A014068.P16264960431262182753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180272 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014068.P16264960431262182753

/-! ## A014068.P3261977165069420876

`record[A107862(n)+A049581(n)]-n`
-/

namespace A014068.P3261977165069420876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107862 n + A049581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A014068.P3261977165069420876

/-! ## A014068.P3342736085455975236

`A189831(n+1)+A000272(n+1)`
-/

namespace A014068.P3342736085455975236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189831 (n + 1) + A000272 (n + 1)

end

end A014068.P3342736085455975236

/-! ## A014068.P11635022844174186359

`C(∑[n], n)`
-/

namespace A014068.P11635022844174186359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A014068.P11635022844174186359

/-! ## A014068.P9085233222096328196

`root(C(C(n+1, 2), n), 2)²`
-/

namespace A014068.P9085233222096328196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (Nat.choose (n + 1) 2) n : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A014068.P9085233222096328196

/-! ## A014068.P14297833886160620888

`2-4/2+C(C(n+1, 2), n)`
-/

namespace A014068.P14297833886160620888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + (Nat.choose (Nat.choose (n + 1) 2) n : ℚ)

end

end A014068.P14297833886160620888

/-! ## A014068.P18348220714305960086

`lcm(C(A000217(n), n), A057077(n+1))`
-/

namespace A014068.P18348220714305960086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.choose (A000217 n).toNat n : ℤ) (A057077 (n + 1))

end

end A014068.P18348220714305960086

/-! ## A014068.P7426364319035989053

`C(A000217(n), n)*A349542(3*n+2)`
-/

namespace A014068.P7426364319035989053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000217 n).toNat n : ℤ) * A349542 (3 * n + 2)

end

end A014068.P7426364319035989053

/-! ## A014068.P15870260400043728795

`A176566(∑[n]+n)`
-/

namespace A014068.P15870260400043728795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176566 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A014068.P15870260400043728795

/-!
# A014069: Inverse of 60th cyclotomic polynomial.

The programs for A014069, there is no canonical definition to state claims against.
-/

/-! ## A014069.P7056817376604322884

`A014099(A006368(n))`
-/

namespace A014069.P7056817376604322884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014099 (A006368 n).toNat

end

end A014069.P7056817376604322884

/-!
# A014070: a(n) = binomial(2^n, n).

The programs for A014070, there is no canonical definition to state claims against.
-/

/-! ## A014070.P14941075198158148012

`C(2^n, n)`
-/

namespace A014070.P14941075198158148012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n) n

end

end A014070.P14941075198158148012

/-! ## A014070.P8859082846650664496

`A136501(∑[4*n])`
-/

namespace A014070.P8859082846650664496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136501 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014070.P8859082846650664496

/-! ## A014070.P10523954565729095384

`A136462(∑[n+2]-1)`
-/

namespace A014070.P10523954565729095384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136462 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A014070.P10523954565729095384

/-! ## A014070.P8246453588797254789

`A136555(∑[n+2]-1)`
-/

namespace A014070.P8246453588797254789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136555 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A014070.P8246453588797254789

/-! ## A014070.P10410490476098467607

`record[C(A077957(n), floor(n/2))]`
-/

namespace A014070.P10410490476098467607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077957 n).toNat ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014070.P10410490476098467607

/-!
# A014071: Inverse of 62nd cyclotomic polynomial.

The programs for A014071, there is no canonical definition to state claims against.
-/

/-! ## A014071.P8598445928249035590

`A014040(n)*A033999(n)`
-/

namespace A014071.P8598445928249035590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014040 n * A033999 n

end

end A014071.P8598445928249035590

/-!
# A014072: Inverse of 63rd cyclotomic polynomial.

The programs for A014072, there is no canonical definition to state claims against.
-/

/-! ## A014072.P7207313023841006037

`A010892(n)*A014135(n)`
-/

namespace A014072.P7207313023841006037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A014135 n

end

end A014072.P7207313023841006037

/-!
# A014073: Number of vectors abcdefg with a,b,... >= 0, a+...+g=n, a>={b,...g}.

The programs for A014073, there is no canonical definition to state claims against.
-/

/-! ## A014073.P15591138001909130554

`A156041(A167487(n+4))`
-/

namespace A014073.P15591138001909130554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (A167487 (n + 4)).toNat

end

end A014073.P15591138001909130554

/-! ## A014073.P13891137069058642850

`A156041(A166136(n+4)+1)`
-/

namespace A014073.P13891137069058642850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (A166136 (n + 4) + 1).toNat

end

end A014073.P13891137069058642850

/-! ## A014073.P15119700900046860217

`A156041(A167499(n+4)+2)`
-/

namespace A014073.P15119700900046860217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (A167499 (n + 4) + 2).toNat

end

end A014073.P15119700900046860217

/-! ## A014073.P2985941764504442444

`A156041(A000124(n+5)+6)`
-/

namespace A014073.P2985941764504442444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (A000124 (n + 5) + 6).toNat

end

end A014073.P2985941764504442444

/-! ## A014073.P6547820694992990229

`A156041(A000217(n+5)+7)`
-/

namespace A014073.P6547820694992990229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (A000217 (n + 5) + 7).toNat

end

end A014073.P6547820694992990229

/-! ## A014073.P10780821303609691374

`A156041(A000096(n+5)-(n-2))`
-/

namespace A014073.P10780821303609691374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (A000096 (n + 5) - ((n : ℤ) - 2)).toNat

end

end A014073.P10780821303609691374

/-! ## A014073.P474657177179172522

`A156041(A055999(n+4)-2*n)`
-/

namespace A014073.P474657177179172522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (A055999 (n + 4) - (2 * n : ℤ)).toNat

end

end A014073.P474657177179172522

/-! ## A014073.P7929844259307291817

`A156041(A052905(n+4)-(2*n+1))`
-/

namespace A014073.P7929844259307291817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (A052905 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A014073.P7929844259307291817

/-!
# A014074: Inverse of 65th cyclotomic polynomial.

The programs for A014074, there is no canonical definition to state claims against.
-/

/-! ## A014074.P9003162915847361976

`A014139(n)*A033999(n)`
-/

namespace A014074.P9003162915847361976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014139 n * A033999 n

end

end A014074.P9003162915847361976

/-!
# A014075: Inverse of 66th cyclotomic polynomial.

The programs for A014075, there is no canonical definition to state claims against.
-/

/-! ## A014075.P12065698396964180449

`A014042(n)*A033999(n)`
-/

namespace A014075.P12065698396964180449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014042 n * A033999 n

end

end A014075.P12065698396964180449

/-!
# A014076: Odd nonprimes.

The programs for A014076, the canonical program `A014076.P11944548580381270581` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014076 has offset 1).

The definition of A014076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014076.P11944548580381270581

`eq[0, A370482(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014076

/-- `eq[0, A370482(n)]` -/
def P11944548580381270581.Spec : Prop :=
  ∀ n, (P11944548580381270581.a n : ℤ) = A014076 (n + 1)

theorem P11944548580381270581.correct : P11944548580381270581.Spec := by
  intro n
  simp only [A014076, Nat.add_sub_cancel]

end A014076

/-! ## A014076.P8394252828585644874

`sqrt(A062532(n+1))`
-/

namespace A014076.P8394252828585644874
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062532 (n + 1) : ℝ)

end

end A014076.P8394252828585644874

namespace A014076

/-- `sqrt(A062532(n+1))` -/
def P8394252828585644874.Spec : Prop :=
  ∀ n, P8394252828585644874.a n = (A014076 (n + 1) : ℝ)

end A014076

/-! ## A014076.P12949258020219796793

`record[A171435(n+7)]`
-/

namespace A014076.P12949258020219796793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014076.P12949258020219796793

namespace A014076

/-- `record[A171435(n+7)]` -/
def P12949258020219796793.Spec : Prop :=
  ∀ n, P12949258020219796793.a n = A014076 (n + 1)

end A014076

/-! ## A014076.P6450122487547448081

`eq[gcd(2, n), A292438(n)]`
-/

namespace A014076.P6450122487547448081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014076.P6450122487547448081

namespace A014076

/-- `eq[gcd(2, n), A292438(n)]` -/
def P6450122487547448081.Spec : Prop :=
  ∀ n, (P6450122487547448081.a n : ℤ) = A014076 (n + 1)

end A014076

/-! ## A014076.P4180190228847757690

`2*A047845(n+1)+1`
-/

namespace A014076.P4180190228847757690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047845 (n + 1) + 1

end

end A014076.P4180190228847757690

namespace A014076

/-- `2*A047845(n+1)+1` -/
def P4180190228847757690.Spec : Prop :=
  ∀ n, P4180190228847757690.a n = A014076 (n + 1)

end A014076

/-! ## A014076.P16293572649176611232

`2*A104275(n+1)-1`
-/

namespace A014076.P16293572649176611232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104275 (n + 1) - 1

end

end A014076.P16293572649176611232

namespace A014076

/-- `2*A104275(n+1)-1` -/
def P16293572649176611232.Spec : Prop :=
  ∀ n, P16293572649176611232.a n = A014076 (n + 1)

end A014076

/-! ## A014076.P6395220990498154824

`2*A153043(n+1)-3`
-/

namespace A014076.P6395220990498154824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153043 (n + 1) - 3

end

end A014076.P6395220990498154824

namespace A014076

/-- `2*A153043(n+1)-3` -/
def P6395220990498154824.Spec : Prop :=
  ∀ n, P6395220990498154824.a n = A014076 (n + 1)

end A014076

/-! ## A014076.P2938154559482685229

`A067970(n)+a(n-1)` with `a(0)=1`
-/

namespace A014076.P2938154559482685229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067970 n + a (n - 1)

end

end A014076.P2938154559482685229

namespace A014076

/-- `A067970(n)+a(n-1)` -/
def P2938154559482685229.Spec : Prop :=
  ∀ n, P2938154559482685229.a n = A014076 (n + 1)

end A014076

/-! ## A014076.P6244927503499343188

`A163506(n+1)/Δ[n²]`
-/

namespace A014076.P6244927503499343188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163506 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A014076.P6244927503499343188

namespace A014076

/-- `A163506(n+1)/Δ[n²]` -/
def P6244927503499343188.Spec : Prop :=
  ∀ n, P6244927503499343188.a n = (A014076 (n + 1) : ℚ)

end A014076

/-! ## A014076.P7895552545231485362

`2*comp[A005097(n+1)]+1`
-/

namespace A014076.P7895552545231485362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A014076.P7895552545231485362

namespace A014076

/-- `2*comp[A005097(n+1)]+1` -/
def P7895552545231485362.Spec : Prop :=
  ∀ n, (P7895552545231485362.a n : ℤ) = A014076 (n + 1)

end A014076

/-! ## A014076.P4006561968334734147

`a(n-1)+2*A196274(n)` with `a(0)=1`
-/

namespace A014076.P4006561968334734147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A196274 n

end

end A014076.P4006561968334734147

namespace A014076

/-- `a(n-1)+2*A196274(n)` -/
def P4006561968334734147.Spec : Prop :=
  ∀ n, P4006561968334734147.a n = A014076 (n + 1)

end A014076

/-! ## A014076.P15155550523601256494

`2*lt[A010051(2*n+1), 1]+1`
-/

namespace A014076.P15155550523601256494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A014076.P15155550523601256494

namespace A014076

/-- `2*lt[A010051(2*n+1), 1]+1` -/
def P15155550523601256494.Spec : Prop :=
  ∀ n, (P15155550523601256494.a n : ℤ) = A014076 (n + 1)

end A014076

/-! ## A014076.P11583411640249653476

`2*lt[A006530(2*n+1), n+2]+1`
-/

namespace A014076.P11583411640249653476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A014076.P11583411640249653476

namespace A014076

/-- `2*lt[A006530(2*n+1), n+2]+1` -/
def P11583411640249653476.Spec : Prop :=
  ∀ n, (P11583411640249653476.a n : ℤ) = A014076 (n + 1)

end A014076

/-! ## A014076.P5091211206644643096

`2*lt[A020639(2*n+1), n+2]+1`
-/

namespace A014076.P5091211206644643096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A014076.P5091211206644643096

namespace A014076

/-- `2*lt[A020639(2*n+1), n+2]+1` -/
def P5091211206644643096.Spec : Prop :=
  ∀ n, (P5091211206644643096.a n : ℤ) = A014076 (n + 1)

end A014076

/-! ## A014076.P9296197206392285988

`sqrt(record[(2*n+1)^(2%A000005(2*n+1))])`
-/

namespace A014076.P9296197206392285988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ (Int.tmod 2 (A000005 (2 * n + 1)) : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A014076.P9296197206392285988

namespace A014076

/-- `sqrt(record[(2*n+1)^(2%A000005(2*n+1))])` -/
def P9296197206392285988.Spec : Prop :=
  ∀ n, P9296197206392285988.a n = (A014076 (n + 1) : ℝ)

end A014076

/-! ## A014076.P16770741135362814103

`eq[A292438(n), A328578(n)]`
-/

namespace A014076.P16770741135362814103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014076.P16770741135362814103

namespace A014076

/-- `eq[A292438(n), A328578(n)]` -/
def P16770741135362814103.Spec : Prop :=
  ∀ n, (P16770741135362814103.a n : ℤ) = A014076 (n + 1)

end A014076

/-! ## A014076.P15314568039806732915

`∪[A005904(n), A071904(n+1)]`
-/

namespace A014076.P15314568039806732915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014076.P15314568039806732915

namespace A014076

/-- `∪[A005904(n), A071904(n+1)]` -/
def P15314568039806732915.Spec : Prop :=
  ∀ n, (P15314568039806732915.a n : ℤ) = A014076 (n + 1)

end A014076

/-! ## A014076.P9538838068294771629

`∪[A007204(n), A071904(n+1)]`
-/

namespace A014076.P9538838068294771629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014076.P9538838068294771629

namespace A014076

/-- `∪[A007204(n), A071904(n+1)]` -/
def P9538838068294771629.Spec : Prop :=
  ∀ n, (P9538838068294771629.a n : ℤ) = A014076 (n + 1)

end A014076

/-! ## A014076.P13636474845859667594

`∪[A008501(n), A071904(n+1)]`
-/

namespace A014076.P13636474845859667594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014076.P13636474845859667594

namespace A014076

/-- `∪[A008501(n), A071904(n+1)]` -/
def P13636474845859667594.Spec : Prop :=
  ∀ n, (P13636474845859667594.a n : ℤ) = A014076 (n + 1)

end A014076

/-! ## A014076.P5557781483957455777

`∪[A008515(n), A071904(n+1)]`
-/

namespace A014076.P5557781483957455777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014076.P5557781483957455777

namespace A014076

/-- `∪[A008515(n), A071904(n+1)]` -/
def P5557781483957455777.Spec : Prop :=
  ∀ n, (P5557781483957455777.a n : ℤ) = A014076 (n + 1)

end A014076

/-!
# A014077: Norm of fundamental unit of real quadratic field with discriminant A003658(n), n >= 2.

The programs for A014077, there is no canonical definition to state claims against.
-/

/-! ## A014077.P2273259857577327936

`A068717(A306300(n+2))`
-/

namespace A014077.P2273259857577327936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068717 (A306300 (n + 2)).toNat

end

end A014077.P2273259857577327936

/-! ## A014077.P15453327562865281636

`A009102(A003646(n+2)/A003652(n+2))`
-/

namespace A014077.P15453327562865281636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009102 (SequenceMachineLib.roundAway ((A003646 (n + 2) : ℚ) / (A003652 (n + 2) : ℚ))).toNat

end

end A014077.P15453327562865281636

/-! ## A014077.P584973799168213770

`A014607(A003646(n+2)/A003652(n+2))`
-/

namespace A014077.P584973799168213770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014607 (SequenceMachineLib.roundAway ((A003646 (n + 2) : ℚ) / (A003652 (n + 2) : ℚ))).toNat

end

end A014077.P584973799168213770

/-! ## A014077.P12482071653130514616

`A015643(A003646(n+2)/A003652(n+2))`
-/

namespace A014077.P12482071653130514616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015643 (SequenceMachineLib.roundAway ((A003646 (n + 2) : ℚ) / (A003652 (n + 2) : ℚ))).toNat

end

end A014077.P12482071653130514616

/-! ## A014077.P8748357091063117198

`A021010(A003646(n+2)/A003652(n+2))`
-/

namespace A014077.P8748357091063117198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 (SequenceMachineLib.roundAway ((A003646 (n + 2) : ℚ) / (A003652 (n + 2) : ℚ))).toNat

end

end A014077.P8748357091063117198

/-! ## A014077.P10390333418700341412

`A033999(A003646(n+2)/A003652(n+2))`
-/

namespace A014077.P10390333418700341412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.roundAway ((A003646 (n + 2) : ℚ) / (A003652 (n + 2) : ℚ))).toNat

end

end A014077.P10390333418700341412

/-! ## A014077.P6611692253589127409

`A051951(A003646(n+2)/A003652(n+2))`
-/

namespace A014077.P6611692253589127409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 (SequenceMachineLib.roundAway ((A003646 (n + 2) : ℚ) / (A003652 (n + 2) : ℚ))).toNat

end

end A014077.P6611692253589127409

/-! ## A014077.P4306671547704234287

`A097807(A003646(n+2)/A003652(n+2))`
-/

namespace A014077.P4306671547704234287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (SequenceMachineLib.roundAway ((A003646 (n + 2) : ℚ) / (A003652 (n + 2) : ℚ))).toNat

end

end A014077.P4306671547704234287

/-! ## A014077.P7658881930468622598

`A103452(A003646(n+2)/A003652(n+2))`
-/

namespace A014077.P7658881930468622598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (SequenceMachineLib.roundAway ((A003646 (n + 2) : ℚ) / (A003652 (n + 2) : ℚ))).toNat

end

end A014077.P7658881930468622598

/-! ## A014077.P5857301137774857831

`-A008683(A003646(n+2)/A003652(n+2))`
-/

namespace A014077.P5857301137774857831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (SequenceMachineLib.roundAway ((A003646 (n + 2) : ℚ) / (A003652 (n + 2) : ℚ))).toNat

end

end A014077.P5857301137774857831

/-! ## A014077.P3599556647378392218

`A008683(2/A003646(n+2)*A003652(n+2))`
-/

namespace A014077.P3599556647378392218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (2 / (A003646 (n + 2) : ℚ) * (A003652 (n + 2) : ℚ))).toNat

end

end A014077.P3599556647378392218

/-! ## A014077.P2139395926337853320

`A008683(A094614(A003646(n+2)/A003652(n+2)))`
-/

namespace A014077.P2139395926337853320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A094614 (SequenceMachineLib.roundAway ((A003646 (n + 2) : ℚ) / (A003652 (n + 2) : ℚ))).toNat).toNat

end

end A014077.P2139395926337853320

/-!
# A014078: Inverse of 69th cyclotomic polynomial.

The programs for A014078, there is no canonical definition to state claims against.
-/

/-! ## A014078.P178053672891787977

`A014147(n)*A033999(n)`
-/

namespace A014078.P178053672891787977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014147 n * A033999 n

end

end A014078.P178053672891787977

/-!
# A014079: Inverse of 70th cyclotomic polynomial.

The programs for A014079, there is no canonical definition to state claims against.
-/

/-! ## A014079.P11224232476884473301

`A014044(n)*A033999(n)`
-/

namespace A014079.P11224232476884473301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n * A033999 n

end

end A014079.P11224232476884473301

/-!
# A014081: a(n) is the number of occurrences of '11' in the binary expansion of n.

The programs for A014081, the canonical program `A014081.P14878370479040452879` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014081 has offset 0).

The definition of A014081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014081.P14878370479040452879

`A000120(n)-A069010(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A014081

/-- `A000120(n)-A069010(n)` -/
def P14878370479040452879.Spec : Prop :=
  ∀ n, P14878370479040452879.a n = A014081 n

theorem P14878370479040452879.correct : P14878370479040452879.Spec := by
  intro n
  simp only [A014081]

end A014081

/-! ## A014081.P7052431494281410728

`log2(A245195(n))`
-/

namespace A014081.P7052431494281410728
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A245195 n : ℝ)

end

end A014081.P7052431494281410728

namespace A014081

/-- `log2(A245195(n))` -/
def P7052431494281410728.Spec : Prop :=
  ∀ n, P7052431494281410728.a n = (A014081 n : ℝ)

end A014081

/-! ## A014081.P17893383786518376548

`∑[A245194(n)]`
-/

namespace A014081.P17893383786518376548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014081.P17893383786518376548

namespace A014081

/-- `∑[A245194(n)]` -/
def P17893383786518376548.Spec : Prop :=
  ∀ n, P17893383786518376548.a n = A014081 n

end A014081

/-! ## A014081.P12657384753310436276

`val(A078828(n), 3)`
-/

namespace A014081.P12657384753310436276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078828 n).toNat 3

end

end A014081.P12657384753310436276

namespace A014081

/-- `val(A078828(n), 3)` -/
def P12657384753310436276.Spec : Prop :=
  ∀ n, (P12657384753310436276.a n : ℤ) = A014081 n

end A014081

/-! ## A014081.P6057462287232351152

`A000120(and(n, 2*n))`
-/

namespace A014081.P6057462287232351152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.land n (2 * n))

end

end A014081.P6057462287232351152

namespace A014081

/-- `A000120(and(n, 2*n))` -/
def P6057462287232351152.Spec : Prop :=
  ∀ n, P6057462287232351152.a n = A014081 n

end A014081

/-! ## A014081.P12790118021685669519

`A048881(and(n, 2*n))`
-/

namespace A014081.P12790118021685669519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Nat.land n (2 * n))

end

end A014081.P12790118021685669519

namespace A014081

/-- `A048881(and(n, 2*n))` -/
def P12790118021685669519.Spec : Prop :=
  ∀ n, P12790118021685669519.a n = A014081 n

end A014081

/-! ## A014081.P62736599027067947

`∑{e}[A278222(n), #-1]`
-/

namespace A014081.P62736599027067947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A014081.P62736599027067947

namespace A014081

/-- `∑{e}[A278222(n), #-1]` -/
def P62736599027067947.Spec : Prop :=
  ∀ n, P62736599027067947.a n = A014081 n

end A014081

/-! ## A014081.P2774054198240231484

`log2(A001316(and(n, 2*n)))`
-/

namespace A014081.P2774054198240231484
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (Nat.land n (2 * n)) : ℝ)

end

end A014081.P2774054198240231484

namespace A014081

/-- `log2(A001316(and(n, 2*n)))` -/
def P2774054198240231484.Spec : Prop :=
  ∀ n, P2774054198240231484.a n = (A014081 n : ℝ)

end A014081

/-! ## A014081.P3673639549755644071

`A000120(A048735(n))`
-/

namespace A014081.P3673639549755644071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048735 n).toNat

end

end A014081.P3673639549755644071

namespace A014081

/-- `A000120(A048735(n))` -/
def P3673639549755644071.Spec : Prop :=
  ∀ n, P3673639549755644071.a n = A014081 n

end A014081

/-! ## A014081.P11578836837473588441

`A092339(A090078(n))`
-/

namespace A014081.P11578836837473588441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (A090078 n).toNat

end

end A014081.P11578836837473588441

namespace A014081

/-- `A092339(A090078(n))` -/
def P11578836837473588441.Spec : Prop :=
  ∀ n, P11578836837473588441.a n = A014081 n

end A014081

/-! ## A014081.P882189280152600399

`A000120(A213370(n))`
-/

namespace A014081.P882189280152600399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A213370 n).toNat

end

end A014081.P882189280152600399

namespace A014081

/-- `A000120(A213370(n))` -/
def P882189280152600399.Spec : Prop :=
  ∀ n, P882189280152600399.a n = A014081 n

end A014081

/-! ## A014081.P8690609689323151054

`A000120(A318921(n))`
-/

namespace A014081.P8690609689323151054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318921 n).toNat

end

end A014081.P8690609689323151054

namespace A014081

/-- `A000120(A318921(n))` -/
def P8690609689323151054.Spec : Prop :=
  ∀ n, P8690609689323151054.a n = A014081 n

end A014081

/-! ## A014081.P651129045106180874

`A000120(A348710(n))`
-/

namespace A014081.P651129045106180874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A348710 n).toNat

end

end A014081.P651129045106180874

namespace A014081

/-- `A000120(A348710(n))` -/
def P651129045106180874.Spec : Prop :=
  ∀ n, P651129045106180874.a n = A014081 n

end A014081

/-! ## A014081.P9669980478789005425

`A000120(A245195(n)-1)`
-/

namespace A014081.P9669980478789005425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A245195 n - 1).toNat

end

end A014081.P9669980478789005425

namespace A014081

/-- `A000120(A245195(n)-1)` -/
def P9669980478789005425.Spec : Prop :=
  ∀ n, P9669980478789005425.a n = A014081 n

end A014081

/-! ## A014081.P1346723394488076765

`A004718(A245195(n)-1)`
-/

namespace A014081.P1346723394488076765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A245195 n - 1).toNat

end

end A014081.P1346723394488076765

namespace A014081

/-- `A004718(A245195(n)-1)` -/
def P1346723394488076765.Spec : Prop :=
  ∀ n, P1346723394488076765.a n = A014081 n

end A014081

/-! ## A014081.P13131921769035041154

`A046660(2*A245195(n))`
-/

namespace A014081.P13131921769035041154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (2 * A245195 n).toNat

end

end A014081.P13131921769035041154

namespace A014081

/-- `A046660(2*A245195(n))` -/
def P13131921769035041154.Spec : Prop :=
  ∀ n, P13131921769035041154.a n = A014081 n

end A014081

/-! ## A014081.P6375799286544919361

`A056973(2*A245195(n))`
-/

namespace A014081.P6375799286544919361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (2 * A245195 n).toNat

end

end A014081.P6375799286544919361

namespace A014081

/-- `A056973(2*A245195(n))` -/
def P6375799286544919361.Spec : Prop :=
  ∀ n, P6375799286544919361.a n = A014081 n

end A014081

/-! ## A014081.P9462897101139645296

`A000120(A048728(n)/2)`
-/

namespace A014081.P9462897101139645296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat

end

end A014081.P9462897101139645296

namespace A014081

/-- `A000120(A048728(n)/2)` -/
def P9462897101139645296.Spec : Prop :=
  ∀ n, P9462897101139645296.a n = A014081 n

end A014081

/-! ## A014081.P11424800989305719050

`A092339(n)-A107782(n)`
-/

namespace A014081.P11424800989305719050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 n - A107782 n

end

end A014081.P11424800989305719050

namespace A014081

/-- `A092339(n)-A107782(n)` -/
def P11424800989305719050.Spec : Prop :=
  ∀ n, P11424800989305719050.a n = A014081 n

end A014081

/-! ## A014081.P10618392707857416076

`A000120(n-A229763(n))`
-/

namespace A014081.P10618392707857416076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A229763 n).toNat

end

end A014081.P10618392707857416076

namespace A014081

/-- `A000120(n-A229763(n))` -/
def P10618392707857416076.Spec : Prop :=
  ∀ n, P10618392707857416076.a n = A014081 n

end A014081

/-!
# A014082: Number of occurrences of '111' in binary expansion of n.

The programs for A014082, the canonical program `A014082.P16446960074050354385` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014082 has offset 0).

The definition of A014082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014082.P446312536631086442

`val(A078828(n), 7)`
-/

namespace A014082.P446312536631086442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078828 n).toNat 7

end

end A014082.P446312536631086442

namespace A014082

/-- `val(A078828(n), 7)` -/
def P446312536631086442.Spec : Prop :=
  ∀ n, (P446312536631086442.a n : ℤ) = A014082 n

end A014082

/-! ## A014082.P16446960074050354385

`A014081(and(n, 2*n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A014082

/-- `A014081(and(n, 2*n))` -/
def P16446960074050354385.Spec : Prop :=
  ∀ n, P16446960074050354385.a n = A014082 n

theorem P16446960074050354385.correct : P16446960074050354385.Spec := by
  intro n
  simp only [A014082]

end A014082

/-! ## A014082.P12433540091764202022

`A014081(n-and(n, Δ[-n²]))`
-/

namespace A014082.P12433540091764202022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 ((n : ℤ) - Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A014082.P12433540091764202022

namespace A014082

/-- `A014081(n-and(n, Δ[-n²]))` -/
def P12433540091764202022.Spec : Prop :=
  ∀ n, P12433540091764202022.a n = A014082 n

end A014082

/-! ## A014082.P341021613925097572

`A014081(xor(n, and(n, Δ[-n²])))`
-/

namespace A014082.P341021613925097572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Int.xor (n : ℤ) (Int.land (n : ℤ) (f1 (n + 1) - f1 n))).toNat

end

end A014082.P341021613925097572

namespace A014082

/-- `A014081(xor(n, and(n, Δ[-n²])))` -/
def P341021613925097572.Spec : Prop :=
  ∀ n, P341021613925097572.a n = A014082 n

end A014082

/-! ## A014082.P2341876057570020730

`A000120(and(n, 2*and(n, 2*n)))`
-/

namespace A014082.P2341876057570020730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.land n (2 * Nat.land n (2 * n)))

end

end A014082.P2341876057570020730

namespace A014082

/-- `A000120(and(n, 2*and(n, 2*n)))` -/
def P2341876057570020730.Spec : Prop :=
  ∀ n, P2341876057570020730.a n = A014082 n

end A014082

/-! ## A014082.P18207692292733489940

`A014081(A048735(n))`
-/

namespace A014082.P18207692292733489940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A048735 n).toNat

end

end A014082.P18207692292733489940

namespace A014082

/-- `A014081(A048735(n))` -/
def P18207692292733489940.Spec : Prop :=
  ∀ n, P18207692292733489940.a n = A014082 n

end A014082

/-! ## A014082.P5641159222199213767

`A014081(A213370(n))`
-/

namespace A014082.P5641159222199213767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A213370 n).toNat

end

end A014082.P5641159222199213767

namespace A014082

/-- `A014081(A213370(n))` -/
def P5641159222199213767.Spec : Prop :=
  ∀ n, P5641159222199213767.a n = A014082 n

end A014082

/-! ## A014082.P8351700941830636446

`A014081(A348710(n))`
-/

namespace A014082.P8351700941830636446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A348710 n).toNat

end

end A014082.P8351700941830636446

namespace A014082

/-- `A014081(A348710(n))` -/
def P8351700941830636446.Spec : Prop :=
  ∀ n, P8351700941830636446.a n = A014082 n

end A014082

/-! ## A014082.P422703862633591464

`A056974(A010078(n+1))`
-/

namespace A014082.P422703862633591464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056974 (A010078 (n + 1)).toNat

end

end A014082.P422703862633591464

namespace A014082

/-- `A056974(A010078(n+1))` -/
def P422703862633591464.Spec : Prop :=
  ∀ n, P422703862633591464.a n = A014082 n

end A014082

/-! ## A014082.P16424451441888401825

`A056974(A354182(n+1))`
-/

namespace A014082.P16424451441888401825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056974 (A354182 (n + 1)).toNat

end

end A014082.P16424451441888401825

namespace A014082

/-- `A056974(A354182(n+1))` -/
def P16424451441888401825.Spec : Prop :=
  ∀ n, P16424451441888401825.a n = A014082 n

end A014082

/-! ## A014082.P297443990440115893

`A014081(A048728(n)/2)`
-/

namespace A014082.P297443990440115893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat

end

end A014082.P297443990440115893

namespace A014082

/-- `A014081(A048728(n)/2)` -/
def P297443990440115893.Spec : Prop :=
  ∀ n, P297443990440115893.a n = A014082 n

end A014082

/-! ## A014082.P8333297722786708064

`A014081(n-A292272(n))`
-/

namespace A014082.P8333297722786708064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 ((n : ℤ) - A292272 n).toNat

end

end A014082.P8333297722786708064

namespace A014082

/-- `A014081(n-A292272(n))` -/
def P8333297722786708064.Spec : Prop :=
  ∀ n, P8333297722786708064.a n = A014082 n

end A014082

/-! ## A014082.P1743670835582075442

`A239904(n)-A239906(n)`
-/

namespace A014082.P1743670835582075442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239904 n - A239906 n

end

end A014082.P1743670835582075442

namespace A014082

/-- `A239904(n)-A239906(n)` -/
def P1743670835582075442.Spec : Prop :=
  ∀ n, P1743670835582075442.a n = A014082 n

end A014082

/-! ## A014082.P7085661429934918491

`A000120(A318921(and(n, 2*n)))`
-/

namespace A014082.P7085661429934918491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318921 (Nat.land n (2 * n))).toNat

end

end A014082.P7085661429934918491

namespace A014082

/-- `A000120(A318921(and(n, 2*n)))` -/
def P7085661429934918491.Spec : Prop :=
  ∀ n, P7085661429934918491.a n = A014082 n

end A014082

/-! ## A014082.P6515574917898270600

`A107782(A385889(n))`
-/

namespace A014082.P6515574917898270600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (A385889 n).toNat

end

end A014082.P6515574917898270600

namespace A014082

/-- `A107782(A385889(n))` -/
def P6515574917898270600.Spec : Prop :=
  ∀ n, P6515574917898270600.a n = A014082 n

end A014082

/-! ## A014082.P6021709657106204461

`A014081(A048728(n))`
-/

namespace A014082.P6021709657106204461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A048728 n).toNat

end

end A014082.P6021709657106204461

namespace A014082

/-- `A014081(A048728(n))` -/
def P6021709657106204461.Spec : Prop :=
  ∀ n, P6021709657106204461.a n = A014082 n

end A014082

/-! ## A014082.P5709383389097222832

`A000120(A348710(A348710(2*n)))`
-/

namespace A014082.P5709383389097222832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A348710 (A348710 (2 * n)).toNat).toNat

end

end A014082.P5709383389097222832

namespace A014082

/-- `A000120(A348710(A348710(2*n)))` -/
def P5709383389097222832.Spec : Prop :=
  ∀ n, P5709383389097222832.a n = A014082 n

end A014082

/-! ## A014082.P6292064760441705595

`A000120(A048735(A048735(2*n)))`
-/

namespace A014082.P6292064760441705595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048735 (A048735 (2 * n)).toNat).toNat

end

end A014082.P6292064760441705595

namespace A014082

/-- `A000120(A048735(A048735(2*n)))` -/
def P6292064760441705595.Spec : Prop :=
  ∀ n, P6292064760441705595.a n = A014082 n

end A014082

/-! ## A014082.P2781984824086052437

`A014081(A265716(n)+1+n)`
-/

namespace A014082.P2781984824086052437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A265716 n + 1 + (n : ℤ)).toNat

end

end A014082.P2781984824086052437

namespace A014082

/-- `A014081(A265716(n)+1+n)` -/
def P2781984824086052437.Spec : Prop :=
  ∀ n, P2781984824086052437.a n = A014082 n

end A014082

/-! ## A014082.P7599759828896137650

`A000120(n)-A000120(A048725(n)-n)`
-/

namespace A014082.P7599759828896137650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000120 (A048725 n - (n : ℤ)).toNat

end

end A014082.P7599759828896137650

namespace A014082

/-- `A000120(n)-A000120(A048725(n)-n)` -/
def P7599759828896137650.Spec : Prop :=
  ∀ n, P7599759828896137650.a n = A014082 n

end A014082

/-!
# A014083: Occurrences of '1111' in binary expansion of n.

The programs for A014083, the canonical program `A014083.P14491156369592575533` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014083 has offset 0).

The definition of A014083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014083.P14491156369592575533

`A014082(and(n, 2*n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A014083

/-- `A014082(and(n, 2*n))` -/
def P14491156369592575533.Spec : Prop :=
  ∀ n, P14491156369592575533.a n = A014083 n

theorem P14491156369592575533.correct : P14491156369592575533.Spec := by
  intro n
  simp only [A014083]

end A014083

/-! ## A014083.P14166182410520261259

`A014081(and(n, 4*n))`
-/

namespace A014083.P14166182410520261259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Nat.land n (4 * n))

end

end A014083.P14166182410520261259

namespace A014083

/-- `A014081(and(n, 4*n))` -/
def P14166182410520261259.Spec : Prop :=
  ∀ n, P14166182410520261259.a n = A014083 n

end A014083

/-! ## A014083.P8223546473912024122

`A014082(A048735(n))`
-/

namespace A014083.P8223546473912024122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A048735 n).toNat

end

end A014083.P8223546473912024122

namespace A014083

/-- `A014082(A048735(n))` -/
def P8223546473912024122.Spec : Prop :=
  ∀ n, P8223546473912024122.a n = A014083 n

end A014083

/-! ## A014083.P13285162494417593708

`A014082(A213370(n))`
-/

namespace A014083.P13285162494417593708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A213370 n).toNat

end

end A014083.P13285162494417593708

namespace A014083

/-- `A014082(A213370(n))` -/
def P13285162494417593708.Spec : Prop :=
  ∀ n, P13285162494417593708.a n = A014083 n

end A014083

/-! ## A014083.P6756562994001885686

`A014082(A348710(n))`
-/

namespace A014083.P6756562994001885686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A348710 n).toNat

end

end A014083.P6756562994001885686

namespace A014083

/-- `A014082(A348710(n))` -/
def P6756562994001885686.Spec : Prop :=
  ∀ n, P6756562994001885686.a n = A014083 n

end A014083

/-! ## A014083.P13695973157753291294

`A014082(A048728(n)/2)`
-/

namespace A014083.P13695973157753291294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat

end

end A014083.P13695973157753291294

namespace A014083

/-- `A014082(A048728(n)/2)` -/
def P13695973157753291294.Spec : Prop :=
  ∀ n, P13695973157753291294.a n = A014083 n

end A014083

/-! ## A014083.P14226759494673513959

`A014081(A048729(n)/2)`
-/

namespace A014083.P14226759494673513959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.roundAway ((A048729 n : ℚ) / 2)).toNat

end

end A014083.P14226759494673513959

namespace A014083

/-- `A014081(A048729(n)/2)` -/
def P14226759494673513959.Spec : Prop :=
  ∀ n, P14226759494673513959.a n = A014083 n

end A014083

/-! ## A014083.P14987765686581873668

`A014082(A048728(n))`
-/

namespace A014083.P14987765686581873668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A048728 n).toNat

end

end A014083.P14987765686581873668

namespace A014083

/-- `A014082(A048728(n))` -/
def P14987765686581873668.Spec : Prop :=
  ∀ n, P14987765686581873668.a n = A014083 n

end A014083

/-! ## A014083.P11065262225576986236

`A014081(A048729(n))`
-/

namespace A014083.P11065262225576986236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A048729 n).toNat

end

end A014083.P11065262225576986236

namespace A014083

/-- `A014081(A048729(n))` -/
def P11065262225576986236.Spec : Prop :=
  ∀ n, P11065262225576986236.a n = A014083 n

end A014083

/-! ## A014083.P14192996158180697906

`A014081(A048735(A048735(2*n)))`
-/

namespace A014083.P14192996158180697906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A048735 (A048735 (2 * n)).toNat).toNat

end

end A014083.P14192996158180697906

namespace A014083

/-- `A014081(A048735(A048735(2*n)))` -/
def P14192996158180697906.Spec : Prop :=
  ∀ n, P14192996158180697906.a n = A014083 n

end A014083

/-! ## A014083.P12746112079880923768

`A342001(A003557(A003557(A003557(A005940(n+1)))))`
-/

namespace A014083.P12746112079880923768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A003557 (A003557 (A003557 (A005940 (n + 1)).toNat).toNat).toNat).toNat

end

end A014083.P12746112079880923768

namespace A014083

/-- `A342001(A003557(A003557(A003557(A005940(n+1)))))` -/
def P12746112079880923768.Spec : Prop :=
  ∀ n, P12746112079880923768.a n = A014083 n

end A014083

/-!
# A014084: Inverse of 75th cyclotomic polynomial.

The programs for A014084, there is no canonical definition to state claims against.
-/

/-! ## A014084.P8141228590586472432

`A014019(n)*A014159(n)`
-/

namespace A014084.P8141228590586472432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 n * A014159 n

end

end A014084.P8141228590586472432

/-!
# A014085: Number of primes between n^2 and (n+1)^2.

The programs for A014085, there is no canonical definition to state claims against.
-/

/-! ## A014085.P4755993435954851404

`Δ[n²]-A161182(n+1)`
-/

namespace A014085.P4755993435954851404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A161182 (n + 1)

end

end A014085.P4755993435954851404

/-! ## A014085.P10111421921993666873

`A000290(n+1)-(A161182(n+1)+A000290(n))`
-/

namespace A014085.P10111421921993666873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A161182 (n + 1) + A000290 n)

end

end A014085.P10111421921993666873

/-! ## A014085.P15645782694205187125

`A263325(n+1)/A000203(n+1)-A038107(n)`
-/

namespace A014085.P15645782694205187125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263325 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) - (A038107 n : ℚ)

end

end A014085.P15645782694205187125

/-! ## A014085.P16548057841874159956

`Δ[A038107(n)]`
-/

namespace A014085.P16548057841874159956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014085.P16548057841874159956

/-! ## A014085.P14485511417447747265

`A038107(n+1)-A038107(n)`
-/

namespace A014085.P14485511417447747265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A038107 n

end

end A014085.P14485511417447747265

/-! ## A014085.P10065044885422413031

`A220492(2*n+1)+A220492(2*n)`
-/

namespace A014085.P10065044885422413031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220492 (2 * n + 1) + A220492 (2 * n)

end

end A014085.P10065044885422413031

/-! ## A014085.P11043656207710003024

`A220506(2*(n+1))-A220506(A004275(n+1))`
-/

namespace A014085.P11043656207710003024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (2 * (n + 1)) - A220506 (A004275 (n + 1)).toNat

end

end A014085.P11043656207710003024

/-! ## A014085.P13072423017769618785

`Δ[A000720(A253909(n))]`
-/

namespace A014085.P13072423017769618785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014085.P13072423017769618785

/-! ## A014085.P4638692014735440545

`Δ[A000720(A028310(n)²)]`
-/

namespace A014085.P4638692014735440545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014085.P4638692014735440545

/-! ## A014085.P7779738102792197583

`Δ[A000720(A151800(n²))]`
-/

namespace A014085.P7779738102792197583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014085.P7779738102792197583

/-! ## A014085.P6447996780071068401

`Δ[A000720((A000007(n)+n)²)]`
-/

namespace A014085.P6447996780071068401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((A000007 n + (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014085.P6447996780071068401

/-! ## A014085.P4485931088422988929

`Δ[A000720((n-A000007(n))²)]`
-/

namespace A014085.P4485931088422988929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (((n : ℤ) - A000007 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014085.P4485931088422988929

/-! ## A014085.P12751782918924608973

`Δ[A084360(A187873(n))]`
-/

namespace A014085.P12751782918924608973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A187873 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014085.P12751782918924608973

/-! ## A014085.P14838454858106038912

`A189025((n+1)²)`
-/

namespace A014085.P14838454858106038912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189025 ((n + 1) ^ 2)

end

end A014085.P14838454858106038912

/-! ## A014085.P14609336687726658109

`Δ[A000720(A007918(n²))]`
-/

namespace A014085.P14609336687726658109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007918 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014085.P14609336687726658109

/-! ## A014085.P16281840659188319162

`Δ[A036234((A000007(n)+n)²)]`
-/

namespace A014085.P16281840659188319162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 ((A000007 n + (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014085.P16281840659188319162

/-! ## A014085.P221353771353787896

`Δ[A036234(A015689(n)+n²)]`
-/

namespace A014085.P221353771353787896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A015689 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014085.P221353771353787896

/-! ## A014085.P10859729104470135638

`Δ[A230980(n²-A120936(n+1))]`
-/

namespace A014085.P10859729104470135638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ((n ^ 2 : ℤ) - A120936 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014085.P10859729104470135638

/-! ## A014085.P2709291630875277610

`A189024(A076921(2*n+1))+A189024((n+1)²)`
-/

namespace A014085.P2709291630875277610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (A076921 (2 * n + 1)).toNat + A189024 ((n + 1) ^ 2)

end

end A014085.P2709291630875277610

/-!
# A014086: Inverse of 77th cyclotomic polynomial.

The programs for A014086, there is no canonical definition to state claims against.
-/

/-! ## A014086.P7614445302771462561

`A014163(n)*A033999(n)`
-/

namespace A014086.P7614445302771462561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014163 n * A033999 n

end

end A014086.P7614445302771462561

/-!
# A014087: Inverse of 78th cyclotomic polynomial.

The programs for A014087, there is no canonical definition to state claims against.
-/

/-! ## A014087.P9245953133978735955

`A014048(n)*A033999(n)`
-/

namespace A014087.P9245953133978735955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014048 n * A033999 n

end

end A014087.P9245953133978735955

/-!
# A014088: Minimal number of people to give a 50% probability of having at least n coincident birthdays in one year.

The programs for A014088, there is no canonical definition to state claims against.
-/

/-! ## A014088.P14563417715932668844

`A050255(n+1)+A037833(A005506(n))`
-/

namespace A014088.P14563417715932668844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050255 (n + 1) + A037833 (A005506 n).toNat

end

end A014088.P14563417715932668844

/-! ## A014088.P4947779322439907686

`A112765(A000142(n))+A050255(n+1)`
-/

namespace A014088.P4947779322439907686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A000142 n).toNat + A050255 (n + 1)

end

end A014088.P4947779322439907686

/-! ## A014088.P14857794502678079275

`A050255(n+1)+A046080(A290279(n))`
-/

namespace A014088.P14857794502678079275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050255 (n + 1) + A046080 (A290279 n).toNat

end

end A014088.P14857794502678079275

/-! ## A014088.P4847668582679109724

`A354820(A203576(n))+A050255(n+1)`
-/

namespace A014088.P4847668582679109724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354820 (A203576 n).toNat + A050255 (n + 1)

end

end A014088.P4847668582679109724

/-!
# A014089: Sum of a square and a prime.

The programs for A014089, there is no canonical definition to state claims against.
-/

/-! ## A014089.P6811314332141945830

`∪[A000040(n+1), A058654(n+1)]`
-/

namespace A014089.P6811314332141945830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014089.P6811314332141945830

/-! ## A014089.P10528964324883763643

`∪[A038618(n+1), A058654(n+1)]`
-/

namespace A014089.P10528964324883763643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014089.P10528964324883763643

/-! ## A014089.P5723384801480886913

`∪[A058654(n+1), A053813(n+1)]`
-/

namespace A014089.P5723384801480886913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014089.P5723384801480886913

/-! ## A014089.P6169733078392167218

`∪[A073770(n+1), A058654(n+1)]`
-/

namespace A014089.P6169733078392167218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014089.P6169733078392167218

/-! ## A014089.P9146511838241295529

`lt[0, A283183(n+1)]+1`
-/

namespace A014089.P9146511838241295529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A014089.P9146511838241295529

/-! ## A014089.P11426963493842567761

`lt[1, A283183(A028310(n))+1]`
-/

namespace A014089.P11426963493842567761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A014089.P11426963493842567761

/-! ## A014089.P17894021678941814742

`eq[1, A178334(A002471(n+1))]+1`
-/

namespace A014089.P17894021678941814742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A002471 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014089.P17894021678941814742

/-! ## A014089.P6868391511967578801

`record[2*A178334(A002471(n+2))+n]`
-/

namespace A014089.P6868391511967578801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178334 (A002471 (n + 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014089.P6868391511967578801

/-! ## A014089.P7682455735298616623

`eq[char[A014090(n+1)], A000007(n)]`
-/

namespace A014089.P7682455735298616623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014090 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A014089.P7682455735298616623

/-! ## A014089.P14847577522774732751

`eq[char[A014090(n+1)], A000038(n)]`
-/

namespace A014089.P14847577522774732751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014090 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A014089.P14847577522774732751

/-! ## A014089.P11083956087463301410

`eq[char[A014090(n+1)], A169585(n)]`
-/

namespace A014089.P11083956087463301410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014090 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A014089.P11083956087463301410

/-! ## A014089.P15420600978362375427

`eq[char[A014090(n+1)], A266591(2*n+1)]`
-/

namespace A014089.P15420600978362375427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014090 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A014089.P15420600978362375427

/-!
# A014090: Numbers that are not the sum of a square and a prime.

The programs for A014090, there is no canonical definition to state claims against.
-/

/-! ## A014090.P12518969488532157119

`filter[A064233(n+1), A005171(#)]`
-/

namespace A014090.P12518969488532157119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A014090.P12518969488532157119

/-! ## A014090.P2665693120080519524

`filter[A064233(n+1), A292438(#)]`
-/

namespace A014090.P2665693120080519524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A014090.P2665693120080519524

/-! ## A014090.P16199338997540001330

`∩[A064233(n+1), A164276(n+1)]`
-/

namespace A014090.P16199338997540001330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014090.P16199338997540001330

/-! ## A014090.P13188167401617213783

`∩[A018252(n+1), A064233(n+1)]`
-/

namespace A014090.P13188167401617213783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014090.P13188167401617213783

/-! ## A014090.P1839122586989835878

`∩[A056653(n+1), A064233(n+1)]`
-/

namespace A014090.P1839122586989835878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014090.P1839122586989835878

/-! ## A014090.P16090316827522370800

`∩[A064233(n+1), A141468(n+1)]`
-/

namespace A014090.P16090316827522370800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014090.P16090316827522370800

/-! ## A014090.P16849402817239075194

`lt[A283183(n+1), 1]+1`
-/

namespace A014090.P16849402817239075194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A014090.P16849402817239075194

/-! ## A014090.P4667973321657940447

`record[A191558(A064233(n+1))]`
-/

namespace A014090.P4667973321657940447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A064233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014090.P4667973321657940447

/-! ## A014090.P16590062011388184210

`lt[n*A283183(A028310(n)), n]`
-/

namespace A014090.P16590062011388184210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A283183 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014090.P16590062011388184210

/-! ## A014090.P10468618744323002866

`record[(n+1)*A000007(A002471(n+1))]`
-/

namespace A014090.P10468618744323002866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000007 (A002471 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014090.P10468618744323002866

/-!
# A014091: Numbers that are the sum of 2 primes.

The programs for A014091, the canonical program `A014091.P7512127898270457705` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014091 has offset 1).

The definition of A014091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014091.P7512127898270457705

`A106092(n+1)+2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A014091

/-- `A106092(n+1)+2` -/
def P7512127898270457705.Spec : Prop :=
  ∀ n, P7512127898270457705.a n = A014091 (n + 1)

theorem P7512127898270457705.correct : P7512127898270457705.Spec := by
  intro n
  simp only [A014091, Nat.add_sub_cancel]

end A014091

/-! ## A014091.P18095764758242959702

`comp[A007921(n+1)]+4`
-/

namespace A014091.P18095764758242959702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4

end

end A014091.P18095764758242959702

namespace A014091

/-- `comp[A007921(n+1)]+4` -/
def P18095764758242959702.Spec : Prop :=
  ∀ n, (P18095764758242959702.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P5245392271544613321

`comp[A014092(n+1)-1]+1`
-/

namespace A014091.P5245392271544613321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A014091.P5245392271544613321

namespace A014091

/-- `comp[A014092(n+1)-1]+1` -/
def P5245392271544613321.Spec : Prop :=
  ∀ n, (P5245392271544613321.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P4709460072186832922

`comp[2*comp[A005097(n+1)]]+3`
-/

namespace A014091.P4709460072186832922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3

end

end A014091.P4709460072186832922

namespace A014091

/-- `comp[2*comp[A005097(n+1)]]+3` -/
def P4709460072186832922.Spec : Prop :=
  ∀ n, (P4709460072186832922.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P7057172398338069641

`∪[2*(n+1), A000040(n+1)]+2`
-/

namespace A014091.P7057172398338069641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A014091.P7057172398338069641

namespace A014091

/-- `∪[2*(n+1), A000040(n+1)]+2` -/
def P7057172398338069641.Spec : Prop :=
  ∀ n, (P7057172398338069641.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P6785542380638560816

`∪[A000040(n+2), n+2+n]+2`
-/

namespace A014091.P6785542380638560816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n + 2

end

end A014091.P6785542380638560816

namespace A014091

/-- `∪[A000040(n+2), n+2+n]+2` -/
def P6785542380638560816.Spec : Prop :=
  ∀ n, (P6785542380638560816.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P4628611658563682036

`∪[A038609(n+1), A027689(n)]`
-/

namespace A014091.P4628611658563682036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P4628611658563682036

namespace A014091

/-- `∪[A038609(n+1), A027689(n)]` -/
def P4628611658563682036.Spec : Prop :=
  ∀ n, (P4628611658563682036.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P2194593558342697013

`∪[A052147(n+1), A020739(n)]`
-/

namespace A014091.P2194593558342697013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P2194593558342697013

namespace A014091

/-- `∪[A052147(n+1), A020739(n)]` -/
def P2194593558342697013.Spec : Prop :=
  ∀ n, (P2194593558342697013.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P6449346479447427348

`∪[A067187(n+1), A020739(n)]`
-/

namespace A014091.P6449346479447427348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P6449346479447427348

namespace A014091

/-- `∪[A067187(n+1), A020739(n)]` -/
def P6449346479447427348.Spec : Prop :=
  ∀ n, (P6449346479447427348.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P15905794337089135473

`∪[A067187(n+1), A020744(n)]`
-/

namespace A014091.P15905794337089135473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P15905794337089135473

namespace A014091

/-- `∪[A067187(n+1), A020744(n)]` -/
def P15905794337089135473.Spec : Prop :=
  ∀ n, (P15905794337089135473.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P9554197970945322909

`∪[A038609(n+1), A136254(n)]`
-/

namespace A014091.P9554197970945322909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136254 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P9554197970945322909

namespace A014091

/-- `∪[A038609(n+1), A136254(n)]` -/
def P9554197970945322909.Spec : Prop :=
  ∀ n, (P9554197970945322909.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P17836910132896082544

`∪[A038609(n+1), A255843(n)]`
-/

namespace A014091.P17836910132896082544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P17836910132896082544

namespace A014091

/-- `∪[A038609(n+1), A255843(n)]` -/
def P17836910132896082544.Spec : Prop :=
  ∀ n, (P17836910132896082544.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P8507548597854447748

`∪[A014574(n+1), A038609(n+1)]`
-/

namespace A014091.P8507548597854447748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P8507548597854447748

namespace A014091

/-- `∪[A014574(n+1), A038609(n+1)]` -/
def P8507548597854447748.Spec : Prop :=
  ∀ n, (P8507548597854447748.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P11136263965356405789

`∪[A006512(n+1), A051035(n+1)]`
-/

namespace A014091.P11136263965356405789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P11136263965356405789

namespace A014091

/-- `∪[A006512(n+1), A051035(n+1)]` -/
def P11136263965356405789.Spec : Prop :=
  ∀ n, (P11136263965356405789.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P2266864434464850178

`∪[A028876(n+1), A038609(n+1)]`
-/

namespace A014091.P2266864434464850178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P2266864434464850178

namespace A014091

/-- `∪[A028876(n+1), A038609(n+1)]` -/
def P2266864434464850178.Spec : Prop :=
  ∀ n, (P2266864434464850178.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P3898290767326854731

`∪[A044858(n+1), A038609(n+1)]`
-/

namespace A014091.P3898290767326854731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P3898290767326854731

namespace A014091

/-- `∪[A044858(n+1), A038609(n+1)]` -/
def P3898290767326854731.Spec : Prop :=
  ∀ n, (P3898290767326854731.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P5006137437751330672

`∪[A045956(n+1), A038609(n+1)]`
-/

namespace A014091.P5006137437751330672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P5006137437751330672

namespace A014091

/-- `∪[A045956(n+1), A038609(n+1)]` -/
def P5006137437751330672.Spec : Prop :=
  ∀ n, (P5006137437751330672.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P2359913963308218676

`∪[A045959(n+1), A038609(n+1)]`
-/

namespace A014091.P2359913963308218676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P2359913963308218676

namespace A014091

/-- `∪[A045959(n+1), A038609(n+1)]` -/
def P2359913963308218676.Spec : Prop :=
  ∀ n, (P2359913963308218676.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P7832378487611197517

`∪[A047406(n+1), A038609(n+1)]`
-/

namespace A014091.P7832378487611197517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P7832378487611197517

namespace A014091

/-- `∪[A047406(n+1), A038609(n+1)]` -/
def P7832378487611197517.Spec : Prop :=
  ∀ n, (P7832378487611197517.a n : ℤ) = A014091 (n + 1)

end A014091

/-! ## A014091.P3581609700609280820

`∪[A051035(n+1), A038609(n+1)]`
-/

namespace A014091.P3581609700609280820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014091.P3581609700609280820

namespace A014091

/-- `∪[A051035(n+1), A038609(n+1)]` -/
def P3581609700609280820.Spec : Prop :=
  ∀ n, (P3581609700609280820.a n : ℤ) = A014091 (n + 1)

end A014091

/-!
# A014092: Numbers that are not the sum of 2 primes.

The programs for A014092, there is no canonical definition to state claims against.
-/

/-! ## A014092.P8930678000364414470

`A152482(n+1)/2`
-/

namespace A014092.P8930678000364414470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152482 (n + 1) : ℚ) / 2

end

end A014092.P8930678000364414470

/-! ## A014092.P8823595314952600727

`record[A171435(n+3)+A107393(n)]`
-/

namespace A014092.P8823595314952600727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 3) + A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014092.P8823595314952600727

/-! ## A014092.P9828641698001673152

`∪[A025583(n+1), A100962(n+1)]`
-/

namespace A014092.P9828641698001673152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P9828641698001673152

/-! ## A014092.P1935309133485611318

`∪[A089268(n+1), A100962(n+1)]`
-/

namespace A014092.P1935309133485611318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P1935309133485611318

/-! ## A014092.P13846988349257398157

`∩[A004280(n+1), A166081(n+1)]`
-/

namespace A014092.P13846988349257398157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P13846988349257398157

/-! ## A014092.P14801321599963216148

`∩[A166081(n+1), A004274(n)]`
-/

namespace A014092.P14801321599963216148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P14801321599963216148

/-! ## A014092.P196469436688248445

`∩[A042996(n+1), A166081(n+1)]`
-/

namespace A014092.P196469436688248445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P196469436688248445

/-! ## A014092.P8358603987057218095

`∩[A166081(n+1), A196499(n+1)]`
-/

namespace A014092.P8358603987057218095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P8358603987057218095

/-! ## A014092.P7122879590407714001

`∩[A047489(n+1), A166081(n+1)]`
-/

namespace A014092.P7122879590407714001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P7122879590407714001

/-! ## A014092.P13729956765702050348

`∩[A047255(n+1), A166081(n+1)]`
-/

namespace A014092.P13729956765702050348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P13729956765702050348

/-! ## A014092.P15636072827117056426

`∩[A053661(n+1), A166081(n+1)]`
-/

namespace A014092.P15636072827117056426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P15636072827117056426

/-! ## A014092.P3892286487016768486

`∩[A166081(n+1), A080587(n)]`
-/

namespace A014092.P3892286487016768486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P3892286487016768486

/-! ## A014092.P12776152349696087913

`∩[A166081(n+1), A186042(n+1)]`
-/

namespace A014092.P12776152349696087913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P12776152349696087913

/-! ## A014092.P17223640626742360464

`∩[A047490(n+1), A166081(n+1)]`
-/

namespace A014092.P17223640626742360464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P17223640626742360464

/-! ## A014092.P14314402784933540413

`∩[A166081(n+1), A329780(n+1)]`
-/

namespace A014092.P14314402784933540413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P14314402784933540413

/-! ## A014092.P12989914463975722648

`∩[A166081(n+1), A360126(n+1)]`
-/

namespace A014092.P12989914463975722648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P12989914463975722648

/-! ## A014092.P6616866206401368329

`∩[A166081(n+1), A228373(n+1)]`
-/

namespace A014092.P6616866206401368329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P6616866206401368329

/-! ## A014092.P2379017133535093054

`∩[A069149(n+1), A166081(n+1)]`
-/

namespace A014092.P2379017133535093054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P2379017133535093054

/-! ## A014092.P8294516050994796345

`∩[A153088(n+1), A166081(n+1)]`
-/

namespace A014092.P8294516050994796345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P8294516050994796345

/-! ## A014092.P14134094907682147027

`lt[A334768(n), n]`
-/

namespace A014092.P14134094907682147027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014092.P14134094907682147027

/-!
# A014093: Inverse of 84th cyclotomic polynomial.

The programs for A014093, there is no canonical definition to state claims against.
-/

/-! ## A014093.P15650504585617469002

`A014135(A006368(n))`
-/

namespace A014093.P15650504585617469002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014135 (A006368 n).toNat

end

end A014093.P15650504585617469002

/-!
# A014094: Inverse of 85th cyclotomic polynomial.

The programs for A014094, there is no canonical definition to state claims against.
-/

/-! ## A014094.P8885833342280782604

`A014179(n)*A033999(n)`
-/

namespace A014094.P8885833342280782604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014179 n * A033999 n

end

end A014094.P8885833342280782604

/-!
# A014095: Molien series for real extraspecial group 2^{1+2*3} of degree 8 and order 128 formed from tensor products of Pauli matrices (0,1, 1,0) and (1,0, 0,-1).

The programs for A014095, there is no canonical definition to state claims against.
-/

/-! ## A014095.P16685099871152274121

`A130446(A178145(n+1))-n`
-/

namespace A014095.P16685099871152274121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A178145 (n + 1)).toNat - (n : ℤ)

end

end A014095.P16685099871152274121

/-!
# A014096: Inverse of 87th cyclotomic polynomial.

The programs for A014096, there is no canonical definition to state claims against.
-/

/-! ## A014096.P7677535829223005080

`A014183(n)*A033999(n)`
-/

namespace A014096.P7677535829223005080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014183 n * A033999 n

end

end A014096.P7677535829223005080

/-!
# A014097: a(n) = a(n-1)+a(n-4).

The programs for A014097, the canonical program `A014097.P8545385940688531700` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014097 has offset 1).

The definition of A014097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-4)` (program `A014097.P8545385940688531700`, by `A014097.P8545385940688531700.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014097.P8545385940688531700

`a(n-1)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014097

/-- `a(n-1)+a(n-4)` -/
def P8545385940688531700.Spec : Prop :=
  ∀ n, (P8545385940688531700.a n : ℤ) = A014097 (n + 1)

theorem P8545385940688531700.correct : P8545385940688531700.Spec := by
  intro n
  simp only [A014097, Nat.add_sub_cancel]

end A014097

/-! ## A014097.P275485386465944287

`ogf((1+4x^3)/(1-x-x^4))`
-/

namespace A014097.P275485386465944287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 4] [1, -1, 0, 0, -1] n

end

end A014097.P275485386465944287

namespace A014097

/-- `ogf((1+4x^3)/(1-x-x^4))` -/
def P275485386465944287.Spec : Prop :=
  ∀ n, P275485386465944287.a n = A014097 (n + 1)

end A014097

/-! ## A014097.P13613673179814382946

`∑{d}[n+1, #*A020999(#-1)]`
-/

namespace A014097.P13613673179814382946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A020999 (d - 1)

end

end A014097.P13613673179814382946

namespace A014097

/-- `∑{d}[n+1, #*A020999(#-1)]` -/
def P13613673179814382946.Spec : Prop :=
  ∀ n, P13613673179814382946.a n = A014097 (n + 1)

end A014097

/-! ## A014097.P14567363272727646723

`∑[A017898(n)]+4*A017898(n+1)`
-/

namespace A014097.P14567363272727646723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * A017898 (n + 1)

end

end A014097.P14567363272727646723

namespace A014097

/-- `∑[A017898(n)]+4*A017898(n+1)` -/
def P14567363272727646723.Spec : Prop :=
  ∀ n, P14567363272727646723.a n = A014097 (n + 1)

end A014097

/-! ## A014097.P3641410282522997726

`A017898(n+5)+3*A017898(n+1)`
-/

namespace A014097.P3641410282522997726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 5) + 3 * A017898 (n + 1)

end

end A014097.P3641410282522997726

namespace A014097

/-- `A017898(n+5)+3*A017898(n+1)` -/
def P3641410282522997726.Spec : Prop :=
  ∀ n, P3641410282522997726.a n = A014097 (n + 1)

end A014097

/-! ## A014097.P16275380778054791104

`A003269(n+1)+4*Δ[A003269(n+1)]`
-/

namespace A014097.P16275380778054791104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 1) + 4 * (f1 (n + 1) - f1 n)

end

end A014097.P16275380778054791104

namespace A014097

/-- `A003269(n+1)+4*Δ[A003269(n+1)]` -/
def P16275380778054791104.Spec : Prop :=
  ∀ n, P16275380778054791104.a n = A014097 (n + 1)

end A014097

/-! ## A014097.P12833617740579113966

`A014101(n)+A014101(n)-A003269(n+1)`
-/

namespace A014097.P12833617740579113966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014101 n + (A014101 n - A003269 (n + 1))

end

end A014097.P12833617740579113966

namespace A014097

/-- `A014101(n)+A014101(n)-A003269(n+1)` -/
def P12833617740579113966.Spec : Prop :=
  ∀ n, P12833617740579113966.a n = A014097 (n + 1)

end A014097

/-! ## A014097.P14097896033423597609

`2*A014101(n)-Δ[A098578(n)]`
-/

namespace A014097.P14097896033423597609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014101 n - (f1 (n + 1) - f1 n)

end

end A014097.P14097896033423597609

namespace A014097

/-- `2*A014101(n)-Δ[A098578(n)]` -/
def P14097896033423597609.Spec : Prop :=
  ∀ n, P14097896033423597609.a n = A014097 (n + 1)

end A014097

/-! ## A014097.P9299107715821032534

`2*A014101(n)-A003269(n+1)`
-/

namespace A014097.P9299107715821032534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014101 n - A003269 (n + 1)

end

end A014097.P9299107715821032534

namespace A014097

/-- `2*A014101(n)-A003269(n+1)` -/
def P9299107715821032534.Spec : Prop :=
  ∀ n, P9299107715821032534.a n = A014097 (n + 1)

end A014097

/-! ## A014097.P6177931395395826890

`Δ[Δ[record[A306351(n)]]]`
-/

namespace A014097.P6177931395395826890
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014097.P6177931395395826890

namespace A014097

/-- `Δ[Δ[record[A306351(n)]]]` -/
def P6177931395395826890.Spec : Prop :=
  ∀ n, P6177931395395826890.a n = A014097 (n + 1)

end A014097

/-!
# A014098: a(n) = a(n-1) + a(n-4).

The programs for A014098, the canonical program `A014098.P13321700169002361588` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014098 has offset 0).

The definition of A014098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-4)` (program `A014098.P13321700169002361588`, by `A014098.P13321700169002361588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014098.P13321700169002361588

`a(n-1)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014098

/-- `a(n-1)+a(n-4)` -/
def P13321700169002361588.Spec : Prop :=
  ∀ n, (P13321700169002361588.a n : ℤ) = A014098 n

theorem P13321700169002361588.correct : P13321700169002361588.Spec := by
  intro n
  simp only [A014098]

end A014098

/-! ## A014098.P14964111597771022201

`ogf((1+3x^3)/(1-x-x^4))`
-/

namespace A014098.P14964111597771022201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 3] [1, -1, 0, 0, -1] n

end

end A014098.P14964111597771022201

namespace A014098

/-- `ogf((1+3x^3)/(1-x-x^4))` -/
def P14964111597771022201.Spec : Prop :=
  ∀ n, P14964111597771022201.a n = A014098 n

end A014098

/-! ## A014098.P3391739772197355742

`A017898(n+1)+A014101(n)`
-/

namespace A014098.P3391739772197355742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 1) + A014101 n

end

end A014098.P3391739772197355742

namespace A014098

/-- `A017898(n+1)+A014101(n)` -/
def P3391739772197355742.Spec : Prop :=
  ∀ n, P3391739772197355742.a n = A014098 n

end A014098

/-! ## A014098.P11591336709514209029

`A014101(n)+Δ[A003269(n+1)]`
-/

namespace A014098.P11591336709514209029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014101 n + (f1 (n + 1) - f1 n)

end

end A014098.P11591336709514209029

namespace A014098

/-- `A014101(n)+Δ[A003269(n+1)]` -/
def P11591336709514209029.Spec : Prop :=
  ∀ n, P11591336709514209029.a n = A014098 n

end A014098

/-! ## A014098.P9694758370875099960

`A014097(n+1)-A017898(n+1)`
-/

namespace A014098.P9694758370875099960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014097 (n + 1) - A017898 (n + 1)

end

end A014098.P9694758370875099960

namespace A014098

/-- `A014097(n+1)-A017898(n+1)` -/
def P9694758370875099960.Spec : Prop :=
  ∀ n, P9694758370875099960.a n = A014098 n

end A014098

/-! ## A014098.P8033589956106582434

`A014097(n+1)+A098578(n)-A168639(n)`
-/

namespace A014098.P8033589956106582434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014097 (n + 1) + (A098578 n - A168639 n)

end

end A014098.P8033589956106582434

namespace A014098

/-- `A014097(n+1)+A098578(n)-A168639(n)` -/
def P8033589956106582434.Spec : Prop :=
  ∀ n, P8033589956106582434.a n = A014098 n

end A014098

/-! ## A014098.P15852223168267243801

`A014101(n)+Δ[Δ[A098578(n)]]`
-/

namespace A014098.P15852223168267243801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014101 n + (f1 (n + 1) - f1 n)

end

end A014098.P15852223168267243801

namespace A014098

/-- `A014101(n)+Δ[Δ[A098578(n)]]` -/
def P15852223168267243801.Spec : Prop :=
  ∀ n, P15852223168267243801.a n = A014098 n

end A014098

/-! ## A014098.P697462606389252153

`(A014101(n)+A014097(n+1))/2`
-/

namespace A014098.P697462606389252153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014101 n + A014097 (n + 1) : ℚ) / 2

end

end A014098.P697462606389252153

namespace A014098

/-- `(A014101(n)+A014097(n+1))/2` -/
def P697462606389252153.Spec : Prop :=
  ∀ n, P697462606389252153.a n = (A014098 n : ℚ)

end A014098

/-!
# A014099: Inverse of 90th cyclotomic polynomial.

The programs for A014099, there is no canonical definition to state claims against.
-/

/-! ## A014099.P6381422534556039759

`A014069(A004396(n))`
-/

namespace A014099.P6381422534556039759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014069 (A004396 n).toNat

end

end A014099.P6381422534556039759

