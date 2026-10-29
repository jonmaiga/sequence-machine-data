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
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A201003: Triangular numbers, T(m), that are four-fifths of another triangular number: T(m) such that 5*T(m) = 4*T(k) for some k.

The programs for A201003, the canonical program `A201003.P15443204175329768226` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201003 has offset 0).

The definition of A201003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201003.P15443204175329768226

`322*a(n-1)-a(n-2)+36` with `a(0)=0, a(1)=36`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201003

/-- `322*a(n-1)-a(n-2)+36` -/
def P15443204175329768226.Spec : Prop :=
  ∀ n, P15443204175329768226.a n = A201003 n

theorem P15443204175329768226.correct : P15443204175329768226.Spec := by
  intro n
  simp only [A201003]

end A201003

/-! ## A201003.P6480703742143337273

`36*A298271(n)`
-/

namespace A201003.P6480703742143337273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A298271 n

end

end A201003.P6480703742143337273

namespace A201003

/-- `36*A298271(n)` -/
def P6480703742143337273.Spec : Prop :=
  ∀ n, P6480703742143337273.a n = A201003 n

end A201003

/-! ## A201003.P9068455937137690360

`C(A246641(n), 2)`
-/

namespace A201003.P9068455937137690360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A246641 n).toNat 2

end

end A201003.P9068455937137690360

namespace A201003

/-- `C(A246641(n), 2)` -/
def P9068455937137690360.Spec : Prop :=
  ∀ n, (P9068455937137690360.a n : ℤ) = A201003 n

end A201003

/-! ## A201003.P15941723962347857166

`∑[A207832(2*n)]`
-/

namespace A201003.P15941723962347857166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207832 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201003.P15941723962347857166

namespace A201003

/-- `∑[A207832(2*n)]` -/
def P15941723962347857166.Spec : Prop :=
  ∀ n, P15941723962347857166.a n = A201003 n

end A201003

/-! ## A201003.P11000730871955387952

`A157459(n+1)/2`
-/

namespace A201003.P11000730871955387952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157459 (n + 1) : ℚ) / 2

end

end A201003.P11000730871955387952

namespace A201003

/-- `A157459(n+1)/2` -/
def P11000730871955387952.Spec : Prop :=
  ∀ n, P11000730871955387952.a n = (A201003 n : ℚ)

theorem P11000730871955387952.correct : P11000730871955387952.Spec := by
  intro n
  simp only [A201003, Nat.add_sub_cancel, A201003.P11000730871955387952.a, A201003.P15443204175329768226.a, A157459, A157459.P11164572467771712150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A201003

/-!
# A201004: Triangular numbers, T(m), that are five-quarters of another triangular number; T(m) such that 4*T(m) = 5*T(k) for some k.

The programs for A201004, the canonical program `A201004.P18406557629316356662` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201004 has offset 0).

The definition of A201004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201004.P18406557629316356662

`322*a(n-1)-a(n-2)+45` with `a(0)=0, a(1)=45`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201004

/-- `322*a(n-1)-a(n-2)+45` -/
def P18406557629316356662.Spec : Prop :=
  ∀ n, P18406557629316356662.a n = A201004 n

theorem P18406557629316356662.correct : P18406557629316356662.Spec := by
  intro n
  simp only [A201004]

end A201004

/-! ## A201004.P14355071387322721814

`45*A298271(n)`
-/

namespace A201004.P14355071387322721814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A298271 n

end

end A201004.P14355071387322721814

namespace A201004

/-- `45*A298271(n)` -/
def P14355071387322721814.Spec : Prop :=
  ∀ n, P14355071387322721814.a n = A201004 n

end A201004

/-! ## A201004.P3300352485779221015

`5/4*A201003(n)`
-/

namespace A201004.P3300352485779221015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A201003 n : ℚ)

end

end A201004.P3300352485779221015

namespace A201004

/-- `5/4*A201003(n)` -/
def P3300352485779221015.Spec : Prop :=
  ∀ n, P3300352485779221015.a n = (A201004 n : ℚ)

end A201004

/-! ## A201004.P1850031077042190374

`5/4*∑[A000045(12*n)/4]`
-/

namespace A201004.P1850031077042190374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (12 * n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201004.P1850031077042190374

namespace A201004

/-- `5/4*∑[A000045(12*n)/4]` -/
def P1850031077042190374.Spec : Prop :=
  ∀ n, P1850031077042190374.a n = (A201004 n : ℚ)

end A201004

/-! ## A201004.P4659727734002750653

`(A119032(n+1)+A119032(n+1)²)/2`
-/

namespace A201004.P4659727734002750653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119032 (n + 1) + A119032 (n + 1) ^ 2 : ℚ) / 2

end

end A201004.P4659727734002750653

namespace A201004

/-- `(A119032(n+1)+A119032(n+1)²)/2` -/
def P4659727734002750653.Spec : Prop :=
  ∀ n, P4659727734002750653.a n = (A201004 n : ℚ)

end A201004

/-!
# A201006: The Isis problem: Array a(i,j) (by antidiagonals) of differences between area and perimeter of rectangle with sides (i,j).

The programs for A201006, the canonical program `A201006.P10506780336559617250` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201006 has offset 1).

The definition of A201006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201006.P10506780336559617250

`A003991(n+1)-2*A003057(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A201006

/-- `A003991(n+1)-2*A003057(n+2)` -/
def P10506780336559617250.Spec : Prop :=
  ∀ n, P10506780336559617250.a n = A201006 (n + 1)

theorem P10506780336559617250.correct : P10506780336559617250.Spec := by
  intro n
  simp only [A201006, Nat.add_sub_cancel]

end A201006

/-! ## A201006.P112380357253578742

`n-(A176270(n)+comp[∑[n]])`
-/

namespace A201006.P112380357253578742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A176270 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A201006.P112380357253578742

namespace A201006

/-- `n-(A176270(n)+comp[∑[n]])` -/
def P112380357253578742.Spec : Prop :=
  ∀ n, P112380357253578742.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P12312616376909246634

`A004247(n)-(∑[char[∑[n]]]+2)`
-/

namespace A201006.P12312616376909246634
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)

end

end A201006.P12312616376909246634

namespace A201006

/-- `A004247(n)-(∑[char[∑[n]]]+2)` -/
def P12312616376909246634.Spec : Prop :=
  ∀ n, P12312616376909246634.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P16796331052996163519

`A077028(n)-(∑[char[∑[n]]]+3)`
-/

namespace A201006.P16796331052996163519
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ)

end

end A201006.P16796331052996163519

namespace A201006

/-- `A077028(n)-(∑[char[∑[n]]]+3)` -/
def P16796331052996163519.Spec : Prop :=
  ∀ n, P16796331052996163519.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P14763010720021318079

`A059036(n)-(∑[2*char[∑[n]]]+1)`
-/

namespace A201006.P14763010720021318079
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A201006.P14763010720021318079

namespace A201006

/-- `A059036(n)-(∑[2*char[∑[n]]]+1)` -/
def P14763010720021318079.Spec : Prop :=
  ∀ n, P14763010720021318079.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P1343337819579742184

`A004247(n)-3-A003056(n)`
-/

namespace A201006.P1343337819579742184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n - 3 - A003056 n

end

end A201006.P1343337819579742184

namespace A201006

/-- `A004247(n)-3-A003056(n)` -/
def P1343337819579742184.Spec : Prop :=
  ∀ n, P1343337819579742184.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P11451420042493021473

`A141432(n+1)-A143971(n+1)`
-/

namespace A201006.P11451420042493021473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141432 (n + 1) - A143971 (n + 1)

end

end A201006.P11451420042493021473

namespace A201006

/-- `A141432(n+1)-A143971(n+1)` -/
def P11451420042493021473.Spec : Prop :=
  ∀ n, P11451420042493021473.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P6809077777623245759

`A129312(n+1)-A173395(n+1)`
-/

namespace A201006.P6809077777623245759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129312 (n + 1) - A173395 (n + 1)

end

end A201006.P6809077777623245759

namespace A201006

/-- `A129312(n+1)-A173395(n+1)` -/
def P6809077777623245759.Spec : Prop :=
  ∀ n, P6809077777623245759.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P5159145988926685298

`A004247(n)-2-A002024(n+1)`
-/

namespace A201006.P5159145988926685298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n - 2 - A002024 (n + 1)

end

end A201006.P5159145988926685298

namespace A201006

/-- `A004247(n)-2-A002024(n+1)` -/
def P5159145988926685298.Spec : Prop :=
  ∀ n, P5159145988926685298.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P10027426315905902234

`A004247(n)-1-A003057(n+2)`
-/

namespace A201006.P10027426315905902234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n - 1 - A003057 (n + 2)

end

end A201006.P10027426315905902234

namespace A201006

/-- `A004247(n)-1-A003057(n+2)` -/
def P10027426315905902234.Spec : Prop :=
  ∀ n, P10027426315905902234.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P14418131563859846135

`A003991(n+1)-∑[2*A073423(n)]`
-/

namespace A201006.P14418131563859846135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201006.P14418131563859846135

namespace A201006

/-- `A003991(n+1)-∑[2*A073423(n)]` -/
def P14418131563859846135.Spec : Prop :=
  ∀ n, P14418131563859846135.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P8492108420527961030

`A003991(n+1)-2*(A003056(n)+2)`
-/

namespace A201006.P8492108420527961030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - 2 * (A003056 n + 2)

end

end A201006.P8492108420527961030

namespace A201006

/-- `A003991(n+1)-2*(A003056(n)+2)` -/
def P8492108420527961030.Spec : Prop :=
  ∀ n, P8492108420527961030.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P17164365201990713682

`A003991(n+1)-A005843(comp[∑[n]]-n)`
-/

namespace A201006.P17164365201990713682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A005843 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A201006.P17164365201990713682

namespace A201006

/-- `A003991(n+1)-A005843(comp[∑[n]]-n)` -/
def P17164365201990713682.Spec : Prop :=
  ∀ n, P17164365201990713682.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P7781182626392422801

`A023445(A004247(n))-A003056(n)`
-/

namespace A201006.P7781182626392422801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A004247 n).toNat - A003056 n

end

end A201006.P7781182626392422801

namespace A201006

/-- `A023445(A004247(n))-A003056(n)` -/
def P7781182626392422801.Spec : Prop :=
  ∀ n, P7781182626392422801.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P12918339845614337287

`A005843(A004247(n))-(A003991(n+1)+2)`
-/

namespace A201006.P12918339845614337287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004247 n).toNat - (A003991 (n + 1) + 2)

end

end A201006.P12918339845614337287

namespace A201006

/-- `A005843(A004247(n))-(A003991(n+1)+2)` -/
def P12918339845614337287.Spec : Prop :=
  ∀ n, P12918339845614337287.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P4743971057264361953

`A003991(n+1)-lt[1, A007318(n)]+n`
-/

namespace A201006.P4743971057264361953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + (n : ℤ)

end

end A201006.P4743971057264361953

namespace A201006

/-- `A003991(n+1)-lt[1, A007318(n)]+n` -/
def P4743971057264361953.Spec : Prop :=
  ∀ n, P4743971057264361953.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P15804771369111399460

`A003991(n+1)-A014132(A014132(n+1))+n`
-/

namespace A201006.P15804771369111399460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A014132 (A014132 (n + 1)).toNat + (n : ℤ)

end

end A201006.P15804771369111399460

namespace A201006

/-- `A003991(n+1)-A014132(A014132(n+1))+n` -/
def P15804771369111399460.Spec : Prop :=
  ∀ n, P15804771369111399460.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P13370684863172376785

`Δ[n²]-A215630(comp[∑[n]]+1)`
-/

namespace A201006.P13370684863172376785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A215630 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A201006.P13370684863172376785

namespace A201006

/-- `Δ[n²]-A215630(comp[∑[n]]+1)` -/
def P13370684863172376785.Spec : Prop :=
  ∀ n, P13370684863172376785.a n = A201006 (n + 1)

end A201006

/-! ## A201006.P7876147988983848837

`A209297(n+1)-(A092283(n+1)+2)`
-/

namespace A201006.P7876147988983848837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209297 (n + 1) - (A092283 (n + 1) + 2)

end

end A201006.P7876147988983848837

namespace A201006

/-- `A209297(n+1)-(A092283(n+1)+2)` -/
def P7876147988983848837.Spec : Prop :=
  ∀ n, P7876147988983848837.a n = A201006 (n + 1)

end A201006

/-!
# A201007: G.f.: 1/(1-x) = Sum_{n>=0} a(n)*x^n / Product_{k=1..n} (1 + n*k*x).

The programs for A201007, there is no canonical definition to state claims against.
-/

/-! ## A201007.P10084978373185649498

`A327047(n)*A327148(A327042(n))`
-/

namespace A201007.P10084978373185649498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327047 n * A327148 (A327042 n).toNat

end

end A201007.P10084978373185649498

/-!
# A201008: Triangular numbers, T(m), that are five-sixths of another triangular number: T(m) such that 6*T(m) = 5*T(k) for some k.

The programs for A201008, the canonical program `A201008.P8240038144861656259` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201008 has offset 0).

The definition of A201008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201008.P8240038144861656259

`482*a(n-1)-a(n-2)+55` with `a(0)=0, a(1)=55`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201008

/-- `482*a(n-1)-a(n-2)+55` -/
def P8240038144861656259.Spec : Prop :=
  ∀ n, P8240038144861656259.a n = A201008 n

theorem P8240038144861656259.correct : P8240038144861656259.Spec := by
  intro n
  simp only [A201008]

end A201008

/-! ## A201008.P4583562774407907207

`((11-2*sqrt(30))^(2*n+1)+(11+2*sqrt(30))^(2*n+1)-22)/192`
-/

namespace A201008.P4583562774407907207
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((11 - 2 * Real.sqrt (30 : ℝ)) ^ (2 * n + 1) + (11 + 2 * Real.sqrt (30 : ℝ)) ^ (2 * n + 1) - 22) / 192

end

end A201008.P4583562774407907207

namespace A201008

/-- `((11-2*sqrt(30))^(2*n+1)+(11+2*sqrt(30))^(2*n+1)-22)/192` -/
def P4583562774407907207.Spec : Prop :=
  ∀ n, P4583562774407907207.a n = (A201008 n : ℝ)

theorem P4583562774407907207.correct : P4583562774407907207.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A201008, Nat.add_sub_cancel, A201008.P4583562774407907207.a, A201008.P8240038144861656259.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A201008, Nat.add_sub_cancel, A201008.P4583562774407907207.a, A201008.P8240038144861656259.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A201008

/-! ## A201008.P7044483038007751427

`C(A254782(n+1), 2)`
-/

namespace A201008.P7044483038007751427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A254782 (n + 1)).toNat 2

end

end A201008.P7044483038007751427

namespace A201008

/-- `C(A254782(n+1), 2)` -/
def P7044483038007751427.Spec : Prop :=
  ∀ n, (P7044483038007751427.a n : ℤ) = A201008 n

end A201008

/-! ## A201008.P8534300227669527690

`floor(A133141(n+1)/6)`
-/

namespace A201008.P8534300227669527690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133141 (n + 1) : ℚ) / 6⌋

end

end A201008.P8534300227669527690

namespace A201008

/-- `floor(A133141(n+1)/6)` -/
def P8534300227669527690.Spec : Prop :=
  ∀ n, P8534300227669527690.a n = A201008 n

end A201008

/-! ## A201008.P10571111645199165650

`ceil(A133141(n+1)/6-A000055(3^C(n, 64)²))`
-/

namespace A201008.P10571111645199165650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133141 (n + 1) : ℚ) / 6 - (A000055 (3 ^ Nat.choose n 64 ^ 2) : ℚ)⌉

end

end A201008.P10571111645199165650

namespace A201008

/-- `ceil(A133141(n+1)/6-A000055(3^C(n, 64)²))` -/
def P10571111645199165650.Spec : Prop :=
  ∀ n, P10571111645199165650.a n = A201008 n

end A201008

/-!
# A201009: Numbers m such that the set of distinct prime divisors of m is equal to the set of distinct prime divisors of the arithmetic derivative m'.

The programs for A201009, there is no canonical definition to state claims against.
-/

/-! ## A201009.P59079016638143836

`A344297(A003528(n+1))`
-/

namespace A201009.P59079016638143836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344297 (A003528 (n + 1)).toNat

end

end A201009.P59079016638143836

/-! ## A201009.P4006734992716767886

`∩[A066862(n+1), A368812(n+1)]`
-/

namespace A201009.P4006734992716767886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201009.P4006734992716767886

/-! ## A201009.P17846199097643948498

`A320922(A074861(n+1)+A006068(n))`
-/

namespace A201009.P17846199097643948498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320922 (A074861 (n + 1) + A006068 n).toNat

end

end A201009.P17846199097643948498

/-!
# A201010: Integers that can be written as the product and/or quotient of Lucas numbers.

The programs for A201010, there is no canonical definition to state claims against.
-/

/-! ## A201010.P9826415318317557188

`eq[char[A201012(n+1)], A000007(n)]`
-/

namespace A201010.P9826415318317557188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201012 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A201010.P9826415318317557188

/-! ## A201010.P8857991672169794788

`eq[char[A201012(n+1)], A000038(n)]`
-/

namespace A201010.P8857991672169794788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201012 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A201010.P8857991672169794788

/-! ## A201010.P2545883926727368161

`eq[1, A178334(n)+char[A201012(n+1)]]`
-/

namespace A201010.P2545883926727368161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201012 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201010.P2545883926727368161

/-! ## A201010.P4606797482791221071

`eq[char[A201012(n+1)], A151933(n)]`
-/

namespace A201010.P4606797482791221071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201012 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A201010.P4606797482791221071

/-! ## A201010.P15639374133747398281

`record[gcd(A274281(n+1), A293137(n))]`
-/

namespace A201010.P15639374133747398281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274281 (n + 1)) (A293137 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201010.P15639374133747398281

/-!
# A201011: Primes that are Lucas primes, or that can be written as the quotient of Lucas numbers.

The programs for A201011, there is no canonical definition to state claims against.
-/

/-! ## A201011.P410180160020490804

`p?[A201010(n+1)]`
-/

namespace A201011.P410180160020490804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201011.P410180160020490804

/-! ## A201011.P5093921299993372270

`p?[record[A201010(A106466(n))]]`
-/

namespace A201011.P5093921299993372270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201011.P5093921299993372270

/-! ## A201011.P1993957617255920168

`∩[A000040(n+1), A201010(n+1)]`
-/

namespace A201011.P1993957617255920168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201011.P1993957617255920168

/-! ## A201011.P3372927609316176647

`∩[A065156(n+1), A178762(n+1)]`
-/

namespace A201011.P3372927609316176647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201011.P3372927609316176647

/-! ## A201011.P1762160969324241290

`∩[A045319(n+1), A201010(n+1)]`
-/

namespace A201011.P1762160969324241290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201011.P1762160969324241290

/-!
# A201012: Integers that cannot be written as the product and/or quotient of Lucas numbers.

The programs for A201012, there is no canonical definition to state claims against.
-/

/-! ## A201012.P5991653921485479396

`eq[char[A201010(n+1)], A000007(n)]`
-/

namespace A201012.P5991653921485479396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A201012.P5991653921485479396

/-! ## A201012.P12223278370330144083

`eq[char[A201010(n+1)], A000038(n)]`
-/

namespace A201012.P12223278370330144083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A201012.P12223278370330144083

/-! ## A201012.P16166756415127999989

`eq[char[A201010(n+1)], A169585(n)]`
-/

namespace A201012.P16166756415127999989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A201012.P16166756415127999989

/-! ## A201012.P15059462447343461096

`eq[n, A028310(n)-char[A201010(n+1)]]`
-/

namespace A201012.P15059462447343461096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201012.P15059462447343461096

/-!
# A201013: Triangular array read by rows: T(n,k) is the number of 2-regular labeled graphs on n nodes that have exactly k connected components (cycles); n>=3, 1<=k<=floor(n/3).

The programs for A201013, there is no canonical definition to state claims against.
-/

/-! ## A201013.P1982623020714095706

`A096115(A073360(n+1))`
-/

namespace A201013.P1982623020714095706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096115 (A073360 (n + 1)).toNat

end

end A201013.P1982623020714095706

/-! ## A201013.P12812704382369196722

`A008480(A108951(2*(2*n+1)))`
-/

namespace A201013.P12812704382369196722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A108951 (2 * (2 * n + 1))).toNat

end

end A201013.P12812704382369196722

/-!
# A201014: Composite numbers (include 0) whose product of digits is 0.

The programs for A201014, the canonical program `A201014.P5854575639799289141` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201014 has offset 1).

The definition of A201014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201014.P18242918182382763470

`∩[A011540(n+1), A141468(n+1)]`
-/

namespace A201014.P18242918182382763470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201014.P18242918182382763470

namespace A201014

/-- `∩[A011540(n+1), A141468(n+1)]` -/
def P18242918182382763470.Spec : Prop :=
  ∀ n, (P18242918182382763470.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P5854575639799289141

`∩[A011540(n+1), A173905(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A201014

/-- `∩[A011540(n+1), A173905(n+1)]` -/
def P5854575639799289141.Spec : Prop :=
  ∀ n, (P5854575639799289141.a n : ℤ) = A201014 (n + 1)

theorem P5854575639799289141.correct : P5854575639799289141.Spec := by
  intro n
  simp only [A201014, Nat.add_sub_cancel]

end A201014

/-! ## A201014.P11884167746921299702

`record[A070565(A089088(n))]`
-/

namespace A201014.P11884167746921299702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (A089088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201014.P11884167746921299702

namespace A201014

/-- `record[A070565(A089088(n))]` -/
def P11884167746921299702.Spec : Prop :=
  ∀ n, P11884167746921299702.a n = A201014 (n + 1)

end A201014

/-! ## A201014.P7888747803982460593

`eq[A004428(n), A055671(n)]`
-/

namespace A201014.P7888747803982460593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P7888747803982460593

namespace A201014

/-- `eq[A004428(n), A055671(n)]` -/
def P7888747803982460593.Spec : Prop :=
  ∀ n, (P7888747803982460593.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P16277592439746185722

`eq[A004428(n), A055672(n)]`
-/

namespace A201014.P16277592439746185722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P16277592439746185722

namespace A201014

/-- `eq[A004428(n), A055672(n)]` -/
def P16277592439746185722.Spec : Prop :=
  ∀ n, (P16277592439746185722.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P8591115222311296821

`eq[A007954(n), A055671(n)]`
-/

namespace A201014.P8591115222311296821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P8591115222311296821

namespace A201014

/-- `eq[A007954(n), A055671(n)]` -/
def P8591115222311296821.Spec : Prop :=
  ∀ n, (P8591115222311296821.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P15513870481570275792

`eq[A007954(n), A055672(n)]`
-/

namespace A201014.P15513870481570275792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P15513870481570275792

namespace A201014

/-- `eq[A007954(n), A055672(n)]` -/
def P15513870481570275792.Spec : Prop :=
  ∀ n, (P15513870481570275792.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P12585363438215387731

`eq[A054054(n), A055671(n)]`
-/

namespace A201014.P12585363438215387731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P12585363438215387731

namespace A201014

/-- `eq[A054054(n), A055671(n)]` -/
def P12585363438215387731.Spec : Prop :=
  ∀ n, (P12585363438215387731.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P653536269609925895

`eq[A054054(n), A055672(n)]`
-/

namespace A201014.P653536269609925895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P653536269609925895

namespace A201014

/-- `eq[A054054(n), A055672(n)]` -/
def P653536269609925895.Spec : Prop :=
  ∀ n, (P653536269609925895.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P16390376948118755410

`eq[A055671(n), A070562(n)]`
-/

namespace A201014.P16390376948118755410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P16390376948118755410

namespace A201014

/-- `eq[A055671(n), A070562(n)]` -/
def P16390376948118755410.Spec : Prop :=
  ∀ n, (P16390376948118755410.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P5664272888400633655

`eq[A055672(n), A070562(n)]`
-/

namespace A201014.P5664272888400633655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P5664272888400633655

namespace A201014

/-- `eq[A055672(n), A070562(n)]` -/
def P5664272888400633655.Spec : Prop :=
  ∀ n, (P5664272888400633655.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P3595467762526036437

`eq[A055671(n), A134778(n)]`
-/

namespace A201014.P3595467762526036437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P3595467762526036437

namespace A201014

/-- `eq[A055671(n), A134778(n)]` -/
def P3595467762526036437.Spec : Prop :=
  ∀ n, (P3595467762526036437.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P3556650807768661171

`filter[A131516(n), A217096(#)]`
-/

namespace A201014.P3556650807768661171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A201014.P3556650807768661171

namespace A201014

/-- `filter[A131516(n), A217096(#)]` -/
def P3556650807768661171.Spec : Prop :=
  ∀ n, P3556650807768661171.a n = A201014 (n + 1)

end A201014

/-! ## A201014.P833437477039804854

`eq[A004429(n), A055671(n)]`
-/

namespace A201014.P833437477039804854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P833437477039804854

namespace A201014

/-- `eq[A004429(n), A055671(n)]` -/
def P833437477039804854.Spec : Prop :=
  ∀ n, (P833437477039804854.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P11259278516822165540

`eq[A004429(n), A055672(n)]`
-/

namespace A201014.P11259278516822165540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P11259278516822165540

namespace A201014

/-- `eq[A004429(n), A055672(n)]` -/
def P11259278516822165540.Spec : Prop :=
  ∀ n, (P11259278516822165540.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P1425901440999816064

`eq[A004430(n), A055671(n)]`
-/

namespace A201014.P1425901440999816064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P1425901440999816064

namespace A201014

/-- `eq[A004430(n), A055671(n)]` -/
def P1425901440999816064.Spec : Prop :=
  ∀ n, (P1425901440999816064.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P16485286954596317838

`eq[A004430(n), A055672(n)]`
-/

namespace A201014.P16485286954596317838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P16485286954596317838

namespace A201014

/-- `eq[A004430(n), A055672(n)]` -/
def P16485286954596317838.Spec : Prop :=
  ∀ n, (P16485286954596317838.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P5629483617983159733

`eq[A009101(n), A103164(n)]`
-/

namespace A201014.P5629483617983159733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P5629483617983159733

namespace A201014

/-- `eq[A009101(n), A103164(n)]` -/
def P5629483617983159733.Spec : Prop :=
  ∀ n, (P5629483617983159733.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P16892998995655580378

`eq[A009101(n), A113638(n)]`
-/

namespace A201014.P16892998995655580378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113638 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P16892998995655580378

namespace A201014

/-- `eq[A009101(n), A113638(n)]` -/
def P16892998995655580378.Spec : Prop :=
  ∀ n, (P16892998995655580378.a n : ℤ) = A201014 (n + 1)

end A201014

/-! ## A201014.P12732971553711321836

`eq[A009101(n), A131516(n)]`
-/

namespace A201014.P12732971553711321836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201014.P12732971553711321836

namespace A201014

/-- `eq[A009101(n), A131516(n)]` -/
def P12732971553711321836.Spec : Prop :=
  ∀ n, (P12732971553711321836.a n : ℤ) = A201014 (n + 1)

end A201014

/-!
# A201015: Composite numbers whose product of digits is 2.

The programs for A201015, there is no canonical definition to state claims against.
-/

/-! ## A201015.P1142562255308860754

`∩[A199981(n+1), A007089(n)]`
-/

namespace A201015.P1142562255308860754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201015.P1142562255308860754

/-! ## A201015.P3275467913124234922

`∩[A199981(n+1), A381579(n)]`
-/

namespace A201015.P3275467913124234922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381579 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201015.P3275467913124234922

/-! ## A201015.P13718173623660073501

`∩[A007931(n+1), A199981(n+1)]`
-/

namespace A201015.P13718173623660073501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201015.P13718173623660073501

/-! ## A201015.P17452278928579284361

`∩[A028842(n+1), A199981(n+1)]`
-/

namespace A201015.P17452278928579284361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201015.P17452278928579284361

/-! ## A201015.P8963337926442813152

`∩[A028846(n+1), A199981(n+1)]`
-/

namespace A201015.P8963337926442813152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201015.P8963337926442813152

/-!
# A201016: Composite numbers whose product of digits is 4.

The programs for A201016, there is no canonical definition to state claims against.
-/

/-! ## A201016.P10936992331569147727

`∩[A050627(n+1), A199984(n+1)]`
-/

namespace A201016.P10936992331569147727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201016.P10936992331569147727

/-! ## A201016.P16185309267008796404

`∩[A199984(n+1), A199987(n+1)]`
-/

namespace A201016.P16185309267008796404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201016.P16185309267008796404

/-! ## A201016.P1388457987551452426

`∩[A199984(n+1), A284323(n)]`
-/

namespace A201016.P1388457987551452426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284323 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201016.P1388457987551452426

/-! ## A201016.P10286706128214399734

`∩[A090274(n+1), A199984(n+1)]`
-/

namespace A201016.P10286706128214399734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201016.P10286706128214399734

/-! ## A201016.P13182012668162800572

`∩[A028846(n+1), A199984(n+1)]`
-/

namespace A201016.P13182012668162800572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201016.P13182012668162800572

/-!
# A201017: Primes whose multiplicative digital root is 5.

The programs for A201017, there is no canonical definition to state claims against.
-/

/-! ## A201017.P17010315492231646591

`∩[A034052(n+1), A117159(n+1)]`
-/

namespace A201017.P17010315492231646591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P17010315492231646591

/-! ## A201017.P9916605658802729731

`∩[A030096(n+1), A034052(n+1)]`
-/

namespace A201017.P9916605658802729731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P9916605658802729731

/-! ## A201017.P15557062763117849520

`∩[A034052(n+1), A155055(n+1)]`
-/

namespace A201017.P15557062763117849520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P15557062763117849520

/-! ## A201017.P13897805801159014635

`∩[A034052(n+1), A257667(n+1)]`
-/

namespace A201017.P13897805801159014635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P13897805801159014635

/-! ## A201017.P18037846890938914982

`∩[A117159(n+1), A257667(n+1)]`
-/

namespace A201017.P18037846890938914982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P18037846890938914982

/-! ## A201017.P2848045260548298468

`∩[A034052(n+1), A338018(n+1)]`
-/

namespace A201017.P2848045260548298468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P2848045260548298468

/-! ## A201017.P6542428640873694813

`p?[A034052(n+1)]`
-/

namespace A201017.P6542428640873694813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201017.P6542428640873694813

/-! ## A201017.P6714139543072331289

`∩[A034052(n+1), A038604(n+1)]`
-/

namespace A201017.P6714139543072331289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P6714139543072331289

/-! ## A201017.P1606492623517458168

`∩[A034052(n+1), A038616(n+1)]`
-/

namespace A201017.P1606492623517458168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P1606492623517458168

/-! ## A201017.P7120918128700907482

`∩[A030475(n+1), A034052(n+1)]`
-/

namespace A201017.P7120918128700907482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P7120918128700907482

/-! ## A201017.P10739677035310812364

`∩[A034052(n+1), A386336(n+1)]`
-/

namespace A201017.P10739677035310812364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P10739677035310812364

/-! ## A201017.P13143306164087083386

`∩[A034052(n+1), A386337(n+1)]`
-/

namespace A201017.P13143306164087083386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P13143306164087083386

/-! ## A201017.P3016954942021637084

`∩[A051807(n+1), A117159(n+1)]`
-/

namespace A201017.P3016954942021637084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P3016954942021637084

/-! ## A201017.P3443004498292915821

`∩[A034052(n+1), A386338(n+1)]`
-/

namespace A201017.P3443004498292915821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P3443004498292915821

/-! ## A201017.P13395997718732053282

`∩[A034052(n+1), A386320(n+1)]`
-/

namespace A201017.P13395997718732053282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P13395997718732053282

/-! ## A201017.P16447113187667310286

`∩[A028843(n+1), A257667(n+1)]`
-/

namespace A201017.P16447113187667310286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P16447113187667310286

/-! ## A201017.P537020644377963407

`∩[A062671(n+1), A117159(n+1)]`
-/

namespace A201017.P537020644377963407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P537020644377963407

/-! ## A201017.P17991237369368437245

`∩[A034052(n+1), A306084(n+1)]`
-/

namespace A201017.P17991237369368437245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P17991237369368437245

/-! ## A201017.P7914945135582108157

`∩[A034052(n+1), A348283(n+1)]`
-/

namespace A201017.P7914945135582108157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P7914945135582108157

/-! ## A201017.P3261413563171949667

`∩[A034052(n+1), A386322(n+1)]`
-/

namespace A201017.P3261413563171949667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201017.P3261413563171949667

/-!
# A201018: Composite numbers whose multiplicative digital root is 5.

The programs for A201018, there is no canonical definition to state claims against.
-/

/-! ## A201018.P58551854523616797

`∩[A034052(n+1), A320062(n+1)]`
-/

namespace A201018.P58551854523616797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P58551854523616797

/-! ## A201018.P459014101723710365

`filter[A034052(n+1), A354108(#)]`
-/

namespace A201018.P459014101723710365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A201018.P459014101723710365

/-! ## A201018.P16109729712006670089

`filter[A034052(n+1), A005171(#)]`
-/

namespace A201018.P16109729712006670089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A201018.P16109729712006670089

/-! ## A201018.P16320475520274073998

`filter[A034052(n+1), A066247(#)]`
-/

namespace A201018.P16320475520274073998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A201018.P16320475520274073998

/-! ## A201018.P7124689811116134484

`filter[A034052(n+1), A202238(#)]`
-/

namespace A201018.P7124689811116134484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A201018.P7124689811116134484

/-! ## A201018.P1516840616486207635

`filter[A034052(n+1), A292438(#)]`
-/

namespace A201018.P1516840616486207635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A201018.P1516840616486207635

/-! ## A201018.P9534129413347847379

`filter[A034052(n+1), A323162(#)]`
-/

namespace A201018.P9534129413347847379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A201018.P9534129413347847379

/-! ## A201018.P7899010310228002546

`filter[A034052(n+1), A174898(#)]`
-/

namespace A201018.P7899010310228002546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A201018.P7899010310228002546

/-! ## A201018.P13995002531389577507

`∩[A002808(n+1), A034052(n+1)]`
-/

namespace A201018.P13995002531389577507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P13995002531389577507

/-! ## A201018.P895110744012144003

`∩[A014076(n+1), A034052(n+1)]`
-/

namespace A201018.P895110744012144003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P895110744012144003

/-! ## A201018.P4068324405581537115

`∩[A018252(n+1), A034052(n+1)]`
-/

namespace A201018.P4068324405581537115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P4068324405581537115

/-! ## A201018.P6525010457243154412

`∩[A034052(n+1), A061346(n+1)]`
-/

namespace A201018.P6525010457243154412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P6525010457243154412

/-! ## A201018.P12931598944557659350

`∩[A034052(n+1), A071904(n+1)]`
-/

namespace A201018.P12931598944557659350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P12931598944557659350

/-! ## A201018.P14548604466887568400

`∩[A034052(n+1), A078505(n+1)]`
-/

namespace A201018.P14548604466887568400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P14548604466887568400

/-! ## A201018.P4331123228421834930

`∩[A034052(n+1), A082686(n+1)]`
-/

namespace A201018.P4331123228421834930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P4331123228421834930

/-! ## A201018.P2397772250032611420

`∩[A034052(n+1), A141468(n+1)]`
-/

namespace A201018.P2397772250032611420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P2397772250032611420

/-! ## A201018.P9099116391119957804

`∩[A034052(n+1), A226025(n+1)]`
-/

namespace A201018.P9099116391119957804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P9099116391119957804

/-! ## A201018.P66510173397973988

`∩[A034052(n+1), A264828(n+1)]`
-/

namespace A201018.P66510173397973988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P66510173397973988

/-! ## A201018.P15821246509526512298

`∩[A034052(n+1), A270574(n+1)]`
-/

namespace A201018.P15821246509526512298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P15821246509526512298

/-! ## A201018.P11035344973227224758

`∩[A034052(n+1), A374476(n+1)]`
-/

namespace A201018.P11035344973227224758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201018.P11035344973227224758

/-!
# A201019: Primes whose multiplicative digital root is 6.

The programs for A201019, there is no canonical definition to state claims against.
-/

/-! ## A201019.P9968299419577510256

`p?[A034053(n+1)]`
-/

namespace A201019.P9968299419577510256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201019.P9968299419577510256

/-! ## A201019.P14382263564844757360

`∩[A034053(n+1), A038613(n+1)]`
-/

namespace A201019.P14382263564844757360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P14382263564844757360

/-! ## A201019.P11586031522514883317

`∩[A034053(n+1), A038618(n+1)]`
-/

namespace A201019.P11586031522514883317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P11586031522514883317

/-! ## A201019.P4769054104994062836

`∩[A034053(n+1), A386323(n+1)]`
-/

namespace A201019.P4769054104994062836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P4769054104994062836

/-! ## A201019.P6460588556008450130

`record[A020639(A034053(n+3))]`
-/

namespace A201019.P6460588556008450130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034053 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201019.P6460588556008450130

/-! ## A201019.P16550556425905604054

`A065091(eq[6, A199975(n+1)])`
-/

namespace A201019.P16550556425905604054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201019.P16550556425905604054

/-! ## A201019.P14460713667940211346

`filter[A034053(n+1), A010051(#)]`
-/

namespace A201019.P14460713667940211346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A201019.P14460713667940211346

/-! ## A201019.P16919984554050877894

`A000040(eq[6, A199975(n+1)]+1)`
-/

namespace A201019.P16919984554050877894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A201019.P16919984554050877894

/-! ## A201019.P940593424151193881

`A008578(eq[6, A199975(n+1)]+2)`
-/

namespace A201019.P940593424151193881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A201019.P940593424151193881

/-! ## A201019.P9655889471312688267

`∩[A000040(n+1), A034053(n+1)]`
-/

namespace A201019.P9655889471312688267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P9655889471312688267

/-! ## A201019.P16919937333561857375

`∩[A004139(n+1), A034053(n+1)]`
-/

namespace A201019.P16919937333561857375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P16919937333561857375

/-! ## A201019.P15881399498508990321

`∩[A006005(n+1), A034053(n+1)]`
-/

namespace A201019.P15881399498508990321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P15881399498508990321

/-! ## A201019.P13036877108026166287

`∩[A008578(n+1), A034053(n+1)]`
-/

namespace A201019.P13036877108026166287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P13036877108026166287

/-! ## A201019.P3945536053744618023

`∩[A033946(n+1), A034053(n+1)]`
-/

namespace A201019.P3945536053744618023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P3945536053744618023

/-! ## A201019.P12761905634824181555

`∩[A034053(n+1), A045319(n+1)]`
-/

namespace A201019.P12761905634824181555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P12761905634824181555

/-! ## A201019.P17886433790485704400

`∩[A034053(n+1), A045344(n+1)]`
-/

namespace A201019.P17886433790485704400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P17886433790485704400

/-! ## A201019.P6420592826047111998

`∩[A034053(n+1), A046022(n+1)]`
-/

namespace A201019.P6420592826047111998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P6420592826047111998

/-! ## A201019.P17350515863748776723

`∩[A034053(n+1), A062972(n+1)]`
-/

namespace A201019.P17350515863748776723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P17350515863748776723

/-! ## A201019.P47614613982449281

`∩[A034053(n+1), A065091(n+1)]`
-/

namespace A201019.P47614613982449281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P47614613982449281

/-! ## A201019.P4909474930332768160

`∩[A034053(n+1), A066050(n+1)]`
-/

namespace A201019.P4909474930332768160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201019.P4909474930332768160

/-!
# A201020: Composite numbers whose multiplicative digital root is 6.

The programs for A201020, there is no canonical definition to state claims against.
-/

/-! ## A201020.P15821919540326424397

`filter[A034053(n+1), A005171(#)]`
-/

namespace A201020.P15821919540326424397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A201020.P15821919540326424397

/-! ## A201020.P15791494367586261993

`filter[A034053(n+1), A066247(#)]`
-/

namespace A201020.P15791494367586261993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A201020.P15791494367586261993

/-! ## A201020.P5428251333273449103

`∩[A002808(n+1), A034053(n+1)]`
-/

namespace A201020.P5428251333273449103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201020.P5428251333273449103

/-! ## A201020.P5340917187344220058

`∩[A018252(n+1), A034053(n+1)]`
-/

namespace A201020.P5340917187344220058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201020.P5340917187344220058

/-! ## A201020.P16150626509056095890

`∩[A034053(n+1), A141468(n+1)]`
-/

namespace A201020.P16150626509056095890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201020.P16150626509056095890

/-! ## A201020.P18131957900053502610

`∩[A034053(n+1), A259315(n+1)]`
-/

namespace A201020.P18131957900053502610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201020.P18131957900053502610

/-! ## A201020.P12340112618732590280

`∩[A034053(n+1), A062973(n+1)]`
-/

namespace A201020.P12340112618732590280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201020.P12340112618732590280

/-! ## A201020.P6767991042385329591

`∩[A034053(n+1), A343311(n+1)]`
-/

namespace A201020.P6767991042385329591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201020.P6767991042385329591

/-! ## A201020.P6535478842014927375

`∩[A034053(n+1), A387319(n+1)]`
-/

namespace A201020.P6535478842014927375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201020.P6535478842014927375

/-! ## A201020.P4912144615472692911

`∩[A034053(n+1), A056653(n+1)]`
-/

namespace A201020.P4912144615472692911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201020.P4912144615472692911

/-! ## A201020.P485246278399387912

`∩[A034053(n+1), A176423(n+1)]`
-/

namespace A201020.P485246278399387912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201020.P485246278399387912

/-! ## A201020.P9758681386972798669

`∩[A034053(n+1), A065090(n+1)]`
-/

namespace A201020.P9758681386972798669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201020.P9758681386972798669

/-! ## A201020.P8692110652469226820

`∩[A034053(n+1), A171581(n+1)]`
-/

namespace A201020.P8692110652469226820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201020.P8692110652469226820

/-! ## A201020.P6134811195308079717

`∩[A034053(n+1), A173905(n+1)]`
-/

namespace A201020.P6134811195308079717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201020.P6134811195308079717

/-! ## A201020.P9176898164211488145

`record[A191558(A034053(n+1))]`
-/

namespace A201020.P9176898164211488145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A034053 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201020.P9176898164211488145

/-! ## A201020.P4590508676569769863

`record[A191558(eq[6, A031347(n)])]`
-/

namespace A201020.P4590508676569769863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201020.P4590508676569769863

/-! ## A201020.P17226787698627079986

`record[A288469(eq[6, A031347(n)])]`
-/

namespace A201020.P17226787698627079986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201020.P17226787698627079986

/-! ## A201020.P18236489215977195012

`eq[A031347(n), A167499(A055672(n))]`
-/

namespace A201020.P18236489215977195012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (A055672 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201020.P18236489215977195012

/-! ## A201020.P13640214751583655104

`record[A288469(A034053(n+1)%A201019(n+1))]`
-/

namespace A201020.P13640214751583655104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (Int.tmod (A034053 (n + 1)) (A201019 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201020.P13640214751583655104

/-!
# A201021: Composite numbers whose multiplicative digital root is 7.

The programs for A201021, there is no canonical definition to state claims against.
-/

/-! ## A201021.P1181006311693427064

`A034054(comp[A179303(n)]+1)`
-/

namespace A201021.P1181006311693427064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179303 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034054 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A201021.P1181006311693427064

/-! ## A201021.P2101761374258815787

`∩[A034054(n+1), A287534(n+1)]`
-/

namespace A201021.P2101761374258815787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201021.P2101761374258815787

/-! ## A201021.P15568503461595541898

`filter[A034054(n+1), A354108(#)]`
-/

namespace A201021.P15568503461595541898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A201021.P15568503461595541898

/-!
# A201022: Primes whose multiplicative digital root is 8.

The programs for A201022, there is no canonical definition to state claims against.
-/

/-! ## A201022.P18280371106633199753

`p?[A034055(n+1)]`
-/

namespace A201022.P18280371106633199753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201022.P18280371106633199753

/-! ## A201022.P2391848422696399431

`∩[A034055(n+1), A038613(n+1)]`
-/

namespace A201022.P2391848422696399431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P2391848422696399431

/-! ## A201022.P9287575964377813245

`∩[A034055(n+1), A038618(n+1)]`
-/

namespace A201022.P9287575964377813245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P9287575964377813245

/-! ## A201022.P5267962977881944872

`record[A006530(A034055(n+4))]`
-/

namespace A201022.P5267962977881944872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034055 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201022.P5267962977881944872

/-! ## A201022.P16935749128544093310

`A065091(eq[8, A199975(n+1)])`
-/

namespace A201022.P16935749128544093310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201022.P16935749128544093310

/-! ## A201022.P5053382695944362365

`filter[A034055(n+1), A010051(#)]`
-/

namespace A201022.P5053382695944362365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A201022.P5053382695944362365

/-! ## A201022.P15052739302302318893

`∩[A000040(n+1), A034055(n+1)]`
-/

namespace A201022.P15052739302302318893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P15052739302302318893

/-! ## A201022.P16265146075586215800

`∩[A004139(n+1), A034055(n+1)]`
-/

namespace A201022.P16265146075586215800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P16265146075586215800

/-! ## A201022.P3286848455821505593

`∩[A006005(n+1), A034055(n+1)]`
-/

namespace A201022.P3286848455821505593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P3286848455821505593

/-! ## A201022.P13297669427342890848

`∩[A008578(n+1), A034055(n+1)]`
-/

namespace A201022.P13297669427342890848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P13297669427342890848

/-! ## A201022.P5100316081910276854

`∩[A033946(n+1), A034055(n+1)]`
-/

namespace A201022.P5100316081910276854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P5100316081910276854

/-! ## A201022.P895350948595201400

`∩[A034055(n+1), A045319(n+1)]`
-/

namespace A201022.P895350948595201400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P895350948595201400

/-! ## A201022.P12625913546884708221

`∩[A034055(n+1), A045344(n+1)]`
-/

namespace A201022.P12625913546884708221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P12625913546884708221

/-! ## A201022.P6024222182927623679

`∩[A034055(n+1), A046022(n+1)]`
-/

namespace A201022.P6024222182927623679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P6024222182927623679

/-! ## A201022.P7165495596681804298

`∩[A034055(n+1), A051948(n+1)]`
-/

namespace A201022.P7165495596681804298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P7165495596681804298

/-! ## A201022.P12914067027419055389

`∩[A034055(n+1), A053813(n+1)]`
-/

namespace A201022.P12914067027419055389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P12914067027419055389

/-! ## A201022.P12365508084576145284

`∩[A034055(n+1), A062972(n+1)]`
-/

namespace A201022.P12365508084576145284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P12365508084576145284

/-! ## A201022.P4413574131248867103

`∩[A034055(n+1), A064728(n+1)]`
-/

namespace A201022.P4413574131248867103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P4413574131248867103

/-! ## A201022.P16407405974413102582

`∩[A034055(n+1), A065091(n+1)]`
-/

namespace A201022.P16407405974413102582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P16407405974413102582

/-! ## A201022.P12549810191909230547

`∩[A034055(n+1), A065396(n+1)]`
-/

namespace A201022.P12549810191909230547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201022.P12549810191909230547

/-!
# A201023: Composite numbers whose multiplicative digital root is 8.

The programs for A201023, there is no canonical definition to state claims against.
-/

/-! ## A201023.P687898672856352833

`filter[A034055(n+1), A005171(#)]`
-/

namespace A201023.P687898672856352833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A201023.P687898672856352833

/-! ## A201023.P12166684354071623844

`filter[A034055(n+1), A066247(#)]`
-/

namespace A201023.P12166684354071623844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A201023.P12166684354071623844

/-! ## A201023.P17753815563483910179

`∩[A002808(n+1), A034055(n+1)]`
-/

namespace A201023.P17753815563483910179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201023.P17753815563483910179

/-! ## A201023.P1963499409170448642

`∩[A018252(n+1), A034055(n+1)]`
-/

namespace A201023.P1963499409170448642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201023.P1963499409170448642

/-! ## A201023.P16909917411048605089

`∩[A034055(n+1), A141468(n+1)]`
-/

namespace A201023.P16909917411048605089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201023.P16909917411048605089

/-! ## A201023.P5840347218248095955

`∩[A034055(n+1), A259315(n+1)]`
-/

namespace A201023.P5840347218248095955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201023.P5840347218248095955

/-! ## A201023.P9187672478529472511

`A002808(eq[8, A199976(n+1)])`
-/

namespace A201023.P9187672478529472511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201023.P9187672478529472511

/-! ## A201023.P14753312378861270320

`A056653(eq[8, A199976(n+1)])`
-/

namespace A201023.P14753312378861270320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201023.P14753312378861270320

/-! ## A201023.P8160529605659488299

`∩[A034055(n+1), A056653(n+1)]`
-/

namespace A201023.P8160529605659488299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201023.P8160529605659488299

/-! ## A201023.P17921349444540781583

`∩[A034055(n+1), A062973(n+1)]`
-/

namespace A201023.P17921349444540781583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201023.P17921349444540781583

/-! ## A201023.P12113132622929187358

`∩[A034055(n+1), A065090(n+1)]`
-/

namespace A201023.P12113132622929187358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201023.P12113132622929187358

/-! ## A201023.P9677041904408579861

`∩[A034055(n+1), A171581(n+1)]`
-/

namespace A201023.P9677041904408579861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201023.P9677041904408579861

/-! ## A201023.P14500803690589890419

`∩[A034055(n+1), A173905(n+1)]`
-/

namespace A201023.P14500803690589890419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201023.P14500803690589890419

/-! ## A201023.P15487732811803016559

`record[A191558(A034055(n+1))]`
-/

namespace A201023.P15487732811803016559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A034055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201023.P15487732811803016559

/-! ## A201023.P11179415113163236696

`record[A191558(eq[8, A031347(n)])]`
-/

namespace A201023.P11179415113163236696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201023.P11179415113163236696

/-! ## A201023.P8171395865562182207

`record[A288469(eq[8, A031347(n)])]`
-/

namespace A201023.P8171395865562182207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201023.P8171395865562182207

/-! ## A201023.P7029061176207612641

`eq[8, A055672(n)+A031347(n)]`
-/

namespace A201023.P7029061176207612641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n + A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201023.P7029061176207612641

/-! ## A201023.P8613750774547444844

`eq[8, gcd(A031347(n), A339579(n+1))]`
-/

namespace A201023.P8613750774547444844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031347 n) (A339579 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201023.P8613750774547444844

/-!
# A201024: Composite numbers whose multiplicative digital root is 9.

The programs for A201024, there is no canonical definition to state claims against.
-/

/-! ## A201024.P4843900889089182975

`∩[A034056(n+1), A287534(n+1)]`
-/

namespace A201024.P4843900889089182975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201024.P4843900889089182975

/-! ## A201024.P13114415884060376196

`∩[A051811(n+1), A287534(n+1)]`
-/

namespace A201024.P13114415884060376196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201024.P13114415884060376196

/-! ## A201024.P9114071890368048540

`∩[A034056(n+1), A320062(n+1)]`
-/

namespace A201024.P9114071890368048540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201024.P9114071890368048540

/-! ## A201024.P2306535075346973850

`record[A171435(A034056(n+1))]`
-/

namespace A201024.P2306535075346973850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A034056 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201024.P2306535075346973850

/-! ## A201024.P12316051666459395961

`filter[A034056(n+1), A005171(#)]`
-/

namespace A201024.P12316051666459395961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A201024.P12316051666459395961

/-!
# A201025: Number of partitions of n such that the number of parts and the smallest part are not coprime.

The programs for A201025, there is no canonical definition to state claims against.
-/

/-! ## A201025.P5946084559723472420

`A000041(n+1)-A200928(n+1)`
-/

namespace A201025.P5946084559723472420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A200928 (n + 1)

end

end A201025.P5946084559723472420

/-! ## A201025.P1450492636509117587

`Δ[A000070(n)]-A200928(n+1)`
-/

namespace A201025.P1450492636509117587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A200928 (n + 1)

end

end A201025.P1450492636509117587

/-! ## A201025.P7682155027581754203

`record[A035363(n)]-A200928(n+1)`
-/

namespace A201025.P7682155027581754203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200928 (n + 1)

end

end A201025.P7682155027581754203

/-! ## A201025.P4825781076757111699

`record[A114099(n)]-A200928(n+1)`
-/

namespace A201025.P4825781076757111699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200928 (n + 1)

end

end A201025.P4825781076757111699

/-! ## A201025.P2997828118304091227

`A000065(n+1)+1-A200928(n+1)`
-/

namespace A201025.P2997828118304091227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A200928 (n + 1))

end

end A201025.P2997828118304091227

/-!
# A201026: Number of n X n 0..4 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201026, there is no canonical definition to state claims against.
-/

/-! ## A201026.P17680016612811060357

`A201033(∑[4*n]+1)`
-/

namespace A201026.P17680016612811060357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201033 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201026.P17680016612811060357

/-!
# A201027: Number of nX2 0..4 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201027, there is no canonical definition to state claims against.
-/

/-! ## A201027.P3002289421324332918

`A201033(∑[n+1]+2)`
-/

namespace A201027.P3002289421324332918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201033 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201027.P3002289421324332918

/-!
# A201028: Number of nX3 0..4 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201028, there is no canonical definition to state claims against.
-/

/-! ## A201028.P9841920203200802772

`A201033(∑[n+2]+4)`
-/

namespace A201028.P9841920203200802772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201033 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201028.P9841920203200802772

/-! ## A201028.P2611465783851028472

`A201033(A167614(n+1))%A050998(n+1)`
-/

namespace A201028.P2611465783851028472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201033 (A167614 (n + 1)).toNat) (A050998 (n + 1))

end

end A201028.P2611465783851028472

/-! ## A201028.P6131335681066735626

`A007318(C(2, n))*A201033(A167614(n+1))`
-/

namespace A201028.P6131335681066735626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A201033 (A167614 (n + 1)).toNat

end

end A201028.P6131335681066735626

/-! ## A201028.P18142022098550682496

`(A000041(n)%2)!*A201033(A167614(n+1))`
-/

namespace A201028.P18142022098550682496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A201033 (A167614 (n + 1)).toNat

end

end A201028.P18142022098550682496

/-! ## A201028.P9840625648010084977

`A000108(C(2, n+2))*A201033(A167614(n+1))`
-/

namespace A201028.P9840625648010084977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A201033 (A167614 (n + 1)).toNat

end

end A201028.P9840625648010084977

/-!
# A201029: Number of nX4 0..4 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201029, there is no canonical definition to state claims against.
-/

/-! ## A201029.P15248657538844649756

`A201033(∑[n+3]+7)`
-/

namespace A201029.P15248657538844649756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201033 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201029.P15248657538844649756

/-! ## A201029.P2399639262990322330

`A201033(A141214(n)+7)/A103181(n)!`
-/

namespace A201029.P2399639262990322330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201033 (A141214 n + 7).toNat : ℚ) / (Nat.factorial (A103181 n).toNat : ℚ)

end

end A201029.P2399639262990322330

/-! ## A201029.P15884160675757427335

`A201033(A141214(n)+7)+and(2, A022144(n))`
-/

namespace A201029.P15884160675757427335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201033 (A141214 n + 7).toNat + Int.land 2 (A022144 n)

end

end A201029.P15884160675757427335

/-! ## A201029.P13946298005257205840

`A201033(A141214(n)+7)/A007318(C(2, n))`
-/

namespace A201029.P13946298005257205840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201033 (A141214 n + 7).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A201029.P13946298005257205840

/-! ## A201029.P15395355069610348794

`A201033(A141214(n)+7)/A154990(n+2)²`
-/

namespace A201029.P15395355069610348794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201033 (A141214 n + 7).toNat : ℚ) / (A154990 (n + 2) ^ 2 : ℚ)

end

end A201029.P15395355069610348794

/-!
# A201030: Number of nX5 0..4 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201030, there is no canonical definition to state claims against.
-/

/-! ## A201030.P4641961498274346732

`A201033(A167499(n+3))`
-/

namespace A201030.P4641961498274346732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201033 (A167499 (n + 3)).toNat

end

end A201030.P4641961498274346732

/-! ## A201030.P1504159233700328706

`A201033(A155212(n)+13)`
-/

namespace A201030.P1504159233700328706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201033 (A155212 n + 13).toNat

end

end A201030.P1504159233700328706

/-! ## A201030.P8644868777339332812

`A201033(A056000(n)+15)`
-/

namespace A201030.P8644868777339332812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201033 (A056000 n + 15).toNat

end

end A201030.P8644868777339332812

/-! ## A201030.P4407972999450862352

`A201033(eq[7, A066657(n)])`
-/

namespace A201030.P4407972999450862352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201030.P4407972999450862352

/-!
# A201031: Number of nX6 0..4 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201031, there is no canonical definition to state claims against.
-/

/-! ## A201031.P7074425555024466122

`A201033(A374007(n+1))`
-/

namespace A201031.P7074425555024466122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201033 (A374007 (n + 1)).toNat

end

end A201031.P7074425555024466122

/-!
# A201032: Number of n X 7 0..4 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201032, there is no canonical definition to state claims against.
-/

/-! ## A201032.P4086574621171796659

`A201033(A374008(n+1))`
-/

namespace A201032.P4086574621171796659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201033 (A374008 (n + 1)).toNat

end

end A201032.P4086574621171796659

/-!
# A201034: Primes of the form 9n^3-8.

The programs for A201034, there is no canonical definition to state claims against.
-/

/-! ## A201034.P8937522954771534089

`p?[9*n^3-8]`
-/

namespace A201034.P8937522954771534089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 3 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201034.P8937522954771534089

/-!
# A201035: Primes of the form 9n^3-10.

The programs for A201035, there is no canonical definition to state claims against.
-/

/-! ## A201035.P5336080095214447820

`p?[9*n^3-10]`
-/

namespace A201035.P5336080095214447820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 3 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201035.P5336080095214447820

/-! ## A201035.P14974437117917281401

`record[A020639(9*A068601(n+3)-1)]`
-/

namespace A201035.P14974437117917281401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * A068601 (n + 3) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201035.P14974437117917281401

/-!
# A201036: Primes of the form 10n^3-1.

The programs for A201036, there is no canonical definition to state claims against.
-/

/-! ## A201036.P12688732640964578998

`p?[10*n^3-1]`
-/

namespace A201036.P12688732640964578998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 3 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201036.P12688732640964578998

/-! ## A201036.P17426369785151819334

`p?[A244729(n)-1]%A017152(n)`
-/

namespace A201036.P17426369785151819334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017152 n)

end

end A201036.P17426369785151819334

/-!
# A201037: Primes of the form 10n^3-3.

The programs for A201037, there is no canonical definition to state claims against.
-/

/-! ## A201037.P10635946516730669704

`p?[10*n^3-3]`
-/

namespace A201037.P10635946516730669704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 3 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201037.P10635946516730669704

/-! ## A201037.P11382927626229144421

`p?[A244729(n)-3]%A017152(n)`
-/

namespace A201037.P11382927626229144421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017152 n)

end

end A201037.P11382927626229144421

/-!
# A201038: Primes of the form 10n^3-7.

The programs for A201038, there is no canonical definition to state claims against.
-/

/-! ## A201038.P5696511045401500419

`p?[10*n^3-7]`
-/

namespace A201038.P5696511045401500419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 3 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201038.P5696511045401500419

/-! ## A201038.P14764941983497921870

`A001068(A200957(n+1))`
-/

namespace A201038.P14764941983497921870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A200957 (n + 1)).toNat

end

end A201038.P14764941983497921870

/-!
# A201039: Primes of the form 10n^3-9.

The programs for A201039, there is no canonical definition to state claims against.
-/

/-! ## A201039.P7291820191284602407

`p?[10*n^3-9]`
-/

namespace A201039.P7291820191284602407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 3 : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201039.P7291820191284602407

/-! ## A201039.P15674034271888252912

`record[A020639(10*((A274640(n)+1)^3-1)+1)]`
-/

namespace A201039.P15674034271888252912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * ((A274640 n + 1) ^ 3 - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201039.P15674034271888252912

/-!
# A201040: Number of -6..6 arrays of n elements with adjacent element differences also in -6..6.

The programs for A201040, there is no canonical definition to state claims against.
-/

/-! ## A201040.P6438264576991640186

`ogf((13-3x-22x^2+4x^3+9x^4-x^5-x^6)/(1-10x-3x^2+18x^3+x^4-8x^5+x^7))`
-/

namespace A201040.P6438264576991640186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -3, -22, 4, 9, -1, -1] [1, -10, -3, 18, 1, -8, 0, 1] n

end

end A201040.P6438264576991640186

/-! ## A201040.P2147277960199896949

`A201042(A052905(n+3))`
-/

namespace A201040.P2147277960199896949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A052905 (n + 3)).toNat

end

end A201040.P2147277960199896949

/-! ## A201040.P6059000701873700245

`A201042(eq[3, A219347(n)])`
-/

namespace A201040.P6059000701873700245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201040.P6059000701873700245

/-! ## A201040.P5229838907657894101

`A201042(A055999(n+3)+1)`
-/

namespace A201040.P5229838907657894101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A055999 (n + 3) + 1).toNat

end

end A201040.P5229838907657894101

/-! ## A201040.P17494263911157077508

`A201042(A046691(n+4)-1)`
-/

namespace A201040.P17494263911157077508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A046691 (n + 4) - 1).toNat

end

end A201040.P17494263911157077508

/-! ## A201040.P14592336739280026949

`A201042(A000096(n+5)-4)`
-/

namespace A201040.P14592336739280026949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A000096 (n + 5) - 4).toNat

end

end A201040.P14592336739280026949

/-! ## A201040.P17655415382878867804

`A201042(A000217(n+6)-5)`
-/

namespace A201040.P17655415382878867804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A000217 (n + 6) - 5).toNat

end

end A201040.P17655415382878867804

/-! ## A201040.P12211118971148269328

`A201042(A000124(n+6)-6)`
-/

namespace A201040.P12211118971148269328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A000124 (n + 6) - 6).toNat

end

end A201040.P12211118971148269328

/-! ## A201040.P7889931901251268080

`A201042(Δ[Δ[A006504(n+1)]])`
-/

namespace A201040.P7889931901251268080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (f1 (n + 1) - f1 n).toNat

end

end A201040.P7889931901251268080

/-! ## A201040.P8616520772087342140

`A201042(A161680(n+6)+n+1)`
-/

namespace A201040.P8616520772087342140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A161680 (n + 6) + (n + 1 : ℤ)).toNat

end

end A201040.P8616520772087342140

/-!
# A201041: Number of -7..7 arrays of n elements with adjacent element differences also in -7..7.

The programs for A201041, there is no canonical definition to state claims against.
-/

/-! ## A201041.P8018479076960708597

`A201042(eq[4, A219347(n)])`
-/

namespace A201041.P8018479076960708597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201041.P8018479076960708597

/-! ## A201041.P8907048707364134281

`A201042(eq[6, A193592(n)])`
-/

namespace A201041.P8907048707364134281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201041.P8907048707364134281

/-! ## A201041.P12942261078839676945

`A201042(eq[6, A195664(n)]+1)`
-/

namespace A201041.P12942261078839676945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A201041.P12942261078839676945

/-! ## A201041.P15597620886344718727

`A201042(eq[10, A185782(n+1)])`
-/

namespace A201041.P15597620886344718727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201041.P15597620886344718727

/-! ## A201041.P13900701281165672436

`A201042(eq[7, A200370(n+1)])`
-/

namespace A201041.P13900701281165672436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201041.P13900701281165672436

/-!
# A201043: Number of -n..n arrays of 4 elements with adjacent element differences also in -n..n.

The programs for A201043, the canonical program `A201043.P15963477748496504032` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201043 has offset 1).

The definition of A201043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201043.P12842917022403626759

`ogf((41+90x+46x^2-4x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A201043.P12842917022403626759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [41, 90, 46, -4, 1] [1, -5, 10, -10, 5, -1] n

end

end A201043.P12842917022403626759

namespace A201043

/-- `ogf((41+90x+46x^2-4x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P12842917022403626759.Spec : Prop :=
  ∀ n, P12842917022403626759.a n = A201043 (n + 1)

end A201043

/-! ## A201043.P15963477748496504032

`29/4*(n+1)^4+29/2*(n+1)^3+51/4*(n+1)²+11/2*(n+1)+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201043

/-- `29/4*(n+1)^4+29/2*(n+1)^3+51/4*(n+1)²+11/2*(n+1)+1` -/
def P15963477748496504032.Spec : Prop :=
  ∀ n, P15963477748496504032.a n = (A201043 (n + 1) : ℚ)

end A201043

/-! ## A201043.P4719848836561650040

`A201042(A055999(n)+10)`
-/

namespace A201043.P4719848836561650040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A055999 n + 10).toNat

end

end A201043.P4719848836561650040

namespace A201043

/-- `A201042(A055999(n)+10)` -/
def P4719848836561650040.Spec : Prop :=
  ∀ n, P4719848836561650040.a n = A201043 (n + 1)

end A201043

/-! ## A201043.P17831085690952351383

`A201042(A167614(n+2)+1)`
-/

namespace A201043.P17831085690952351383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A167614 (n + 2) + 1).toNat

end

end A201043.P17831085690952351383

namespace A201043

/-- `A201042(A167614(n+2)+1)` -/
def P17831085690952351383.Spec : Prop :=
  ∀ n, P17831085690952351383.a n = A201043 (n + 1)

end A201043

/-! ## A201043.P18055705098206354684

`A201042(A167487(n+2)-3)`
-/

namespace A201043.P18055705098206354684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A167487 (n + 2) - 3).toNat

end

end A201043.P18055705098206354684

namespace A201043

/-- `A201042(A167487(n+2)-3)` -/
def P18055705098206354684.Spec : Prop :=
  ∀ n, P18055705098206354684.a n = A201043 (n + 1)

end A201043

/-!
# A201044: Number of -n..n arrays of 5 elements with adjacent element differences also in -n..n.

The programs for A201044, the canonical program `A201044.P4855246329398533956` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201044 has offset 1).

The definition of A201044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201044.P4855246329398533956

`ogf((99+567x+602x^2+78x^3+7x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201044

/-- `ogf((99+567x+602x^2+78x^3+7x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P4855246329398533956.Spec : Prop :=
  ∀ n, P4855246329398533956.a n = A201044 (n + 1)

theorem P4855246329398533956.correct : P4855246329398533956.Spec := by
  intro n
  simp only [A201044, Nat.add_sub_cancel]

end A201044

/-! ## A201044.P1029077033434882570

`A201042(A167499(n+3))`
-/

namespace A201044.P1029077033434882570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A167499 (n + 3)).toNat

end

end A201044.P1029077033434882570

namespace A201044

/-- `A201042(A167499(n+3))` -/
def P1029077033434882570.Spec : Prop :=
  ∀ n, P1029077033434882570.a n = A201044 (n + 1)

end A201044

/-! ## A201044.P17262681776457689550

`A201042(A155212(n)+13)`
-/

namespace A201044.P17262681776457689550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A155212 n + 13).toNat

end

end A201044.P17262681776457689550

namespace A201044

/-- `A201042(A155212(n)+13)` -/
def P17262681776457689550.Spec : Prop :=
  ∀ n, P17262681776457689550.a n = A201044 (n + 1)

end A201044

/-! ## A201044.P1807880608267705529

`A201042(A167614(n+3)+2)`
-/

namespace A201044.P1807880608267705529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A167614 (n + 3) + 2).toNat

end

end A201044.P1807880608267705529

namespace A201044

/-- `A201042(A167614(n+3)+2)` -/
def P1807880608267705529.Spec : Prop :=
  ∀ n, P1807880608267705529.a n = A201044 (n + 1)

end A201044

/-! ## A201044.P6590745178545580332

`A201042(A000217(n+4)+5)`
-/

namespace A201044.P6590745178545580332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A000217 (n + 4) + 5).toNat

end

end A201044.P6590745178545580332

namespace A201044

/-- `A201042(A000217(n+4)+5)` -/
def P6590745178545580332.Spec : Prop :=
  ∀ n, P6590745178545580332.a n = A201044 (n + 1)

end A201044

/-! ## A201044.P15253304630931490880

`A201042(A000124(n+5)+n-(2*n+1))`
-/

namespace A201044.P15253304630931490880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A000124 (n + 5) + (n : ℤ) - (2 * n + 1 : ℤ)).toNat

end

end A201044.P15253304630931490880

namespace A201044

/-- `A201042(A000124(n+5)+n-(2*n+1))` -/
def P15253304630931490880.Spec : Prop :=
  ∀ n, P15253304630931490880.a n = A201044 (n + 1)

end A201044

/-!
# A201045: Number of -n..n arrays of 6 elements with adjacent element differences also in -n..n.

The programs for A201045, there is no canonical definition to state claims against.
-/

/-! ## A201045.P13124289741165539656

`A201042(A167499(n+4)+1)`
-/

namespace A201045.P13124289741165539656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A167499 (n + 4) + 1).toNat

end

end A201045.P13124289741165539656

/-! ## A201045.P11179606650759754603

`A201042(A000217(n+5)+6)`
-/

namespace A201045.P11179606650759754603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A000217 (n + 5) + 6).toNat

end

end A201045.P11179606650759754603

/-! ## A201045.P11416568494692817144

`A201042(A000124(n+6)-(n+1))`
-/

namespace A201045.P11416568494692817144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A201045.P11416568494692817144

/-! ## A201045.P11087708546397810370

`A201042(A055999(n+4)-A005408(n))`
-/

namespace A201045.P11087708546397810370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A055999 (n + 4) - A005408 n).toNat

end

end A201045.P11087708546397810370

/-! ## A201045.P12771642807727780267

`A201042(A055999(n)+A004273(n+11))`
-/

namespace A201045.P12771642807727780267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A055999 n + A004273 (n + 11)).toNat

end

end A201045.P12771642807727780267

/-! ## A201045.P14812659732568257342

`A201042(A046691(n+1)+A004273(n+10))`
-/

namespace A201045.P14812659732568257342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A046691 (n + 1) + A004273 (n + 10)).toNat

end

end A201045.P14812659732568257342

/-!
# A201046: Number of -n..n arrays of 7 elements with adjacent element differences also in -n..n.

The programs for A201046, there is no canonical definition to state claims against.
-/

/-! ## A201046.P14719274303621746795

`A201042(A167487(n+5))`
-/

namespace A201046.P14719274303621746795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A167487 (n + 5)).toNat

end

end A201046.P14719274303621746795

/-! ## A201046.P18340320773291791304

`A201042(A056119(n)+28)`
-/

namespace A201046.P18340320773291791304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A056119 n + 28).toNat

end

end A201046.P18340320773291791304

/-! ## A201046.P4621040404463120002

`A201042(A000217(n+6)+7)`
-/

namespace A201046.P4621040404463120002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A000217 (n + 6) + 7).toNat

end

end A201046.P4621040404463120002

/-! ## A201046.P3180492127701878615

`A201042(A161680(n+7)+7)`
-/

namespace A201046.P3180492127701878615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A161680 (n + 7) + 7).toNat

end

end A201046.P3180492127701878615

/-! ## A201046.P216724857420126821

`A201042(A000124(n+7)-(n+1))`
-/

namespace A201046.P216724857420126821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201042 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A201046.P216724857420126821

/-!
# A201047: Coordinates x of Mordell elliptic curves x^3-y^2 for primary extremal points with quadratic extensions over rationals.

The programs for A201047, there is no canonical definition to state claims against.
-/

/-! ## A201047.P53134020161795806

`(A201268(n+1)+A201269(n+1)²)^(1/3)`
-/

namespace A201047.P53134020161795806
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201268 (n + 1) + A201269 (n + 1) ^ 2 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A201047.P53134020161795806

/-! ## A201047.P9455800515388869649

`round(root(A201269(n+1), 3)²)`
-/

namespace A201047.P9455800515388869649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A201269 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2)

end

end A201047.P9455800515388869649

/-! ## A201047.P16691900583093452018

`filter[A200656(n+1), A212793(#)]`
-/

namespace A201047.P16691900583093452018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A201047.P16691900583093452018

/-! ## A201047.P1973433988771441496

`filter[A200656(n+1), A355823(#)]`
-/

namespace A201047.P1973433988771441496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A201047.P1973433988771441496

/-!
# A201051: Record (maximal) gaps between prime septuplets (p, p+2, p+6, p+8, p+12, p+18, p+20).

The programs for A201051, there is no canonical definition to state claims against.
-/

/-! ## A201051.P5190098851860408960

`A233425(n+1)-A201249(n+1)`
-/

namespace A201051.P5190098851860408960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233425 (n + 1) - A201249 (n + 1)

end

end A201051.P5190098851860408960

/-! ## A201051.P6763235323681602759

`record[Δ[A022009(n+1)]]`
-/

namespace A201051.P6763235323681602759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201051.P6763235323681602759

/-! ## A201051.P11482273356917829323

`record[A022009(n+2)-A022009(n+1)]`
-/

namespace A201051.P11482273356917829323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 2) - A022009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201051.P11482273356917829323

/-!
# A201052: a(n) is the maximal number c of integers that can be chosen from {1,2,...,n} so that all 2^c subsets have distinct sums.

The programs for A201052, the canonical program `A201052.P5452229631530226668` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201052 has offset 1).

The definition of A201052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201052.P5452229631530226668

`∑[char[A005318(n)-1]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A201052

/-- `∑[char[A005318(n)-1]]` -/
def P5452229631530226668.Spec : Prop :=
  ∀ n, (P5452229631530226668.a n : ℤ) = A201052 (n + 1)

theorem P5452229631530226668.correct : P5452229631530226668.Spec := by
  intro n
  simp only [A201052, Nat.add_sub_cancel]

end A201052

/-! ## A201052.P16735436095423516051

`∑[char[A205744(n+1)-1]]`
-/

namespace A201052.P16735436095423516051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205744 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201052.P16735436095423516051

namespace A201052

/-- `∑[char[A205744(n+1)-1]]` -/
def P16735436095423516051.Spec : Prop :=
  ∀ n, (P16735436095423516051.a n : ℤ) = A201052 (n + 1)

end A201052

/-! ## A201052.P7880918526621632103

`∑[char[A349777(n+1)-2]]`
-/

namespace A201052.P7880918526621632103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349777 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201052.P7880918526621632103

namespace A201052

/-- `∑[char[A349777(n+1)-2]]` -/
def P7880918526621632103.Spec : Prop :=
  ∀ n, (P7880918526621632103.a n : ℤ) = A201052 (n + 1)

end A201052

/-! ## A201052.P18026817606325960255

`∑[char[∑[A005230(n+1)]-1]]`
-/

namespace A201052.P18026817606325960255
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201052.P18026817606325960255

namespace A201052

/-- `∑[char[∑[A005230(n+1)]-1]]` -/
def P18026817606325960255.Spec : Prop :=
  ∀ n, (P18026817606325960255.a n : ℤ) = A201052 (n + 1)

end A201052

/-! ## A201052.P11988495619573624273

`∑[char[A057428(n)+A005318(n)]]`
-/

namespace A201052.P11988495619573624273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A005318 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201052.P11988495619573624273

namespace A201052

/-- `∑[char[A057428(n)+A005318(n)]]` -/
def P11988495619573624273.Spec : Prop :=
  ∀ n, (P11988495619573624273.a n : ℤ) = A201052 (n + 1)

end A201052

/-! ## A201052.P11137960181593025180

`∑[char[A096858(n+1)-A096858(n+3)]]`
-/

namespace A201052.P11137960181593025180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096858 (n + 1) - A096858 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201052.P11137960181593025180

namespace A201052

/-- `∑[char[A096858(n+1)-A096858(n+3)]]` -/
def P11137960181593025180.Spec : Prop :=
  ∀ n, (P11137960181593025180.a n : ℤ) = A201052 (n + 1)

end A201052

/-! ## A201052.P12950524483095320334

`char[A276661(n)-1]+a(n-1)` with `a(0)=1`
-/

namespace A201052.P12950524483095320334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276661 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A201052.P12950524483095320334

namespace A201052

/-- `char[A276661(n)-1]+a(n-1)` -/
def P12950524483095320334.Spec : Prop :=
  ∀ n, (P12950524483095320334.a n : ℤ) = A201052 (n + 1)

end A201052

/-! ## A201052.P9798374475276850795

`ceil(log(sqrt(A274320(n+1))))`
-/

namespace A201052.P9798374475276850795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.sqrt (A274320 (n + 1) : ℝ))⌉

end

end A201052.P9798374475276850795

namespace A201052

/-- `ceil(log(sqrt(A274320(n+1))))` -/
def P9798374475276850795.Spec : Prop :=
  ∀ n, P9798374475276850795.a n = A201052 (n + 1)

end A201052

/-! ## A201052.P4986477778636506736

`A000120(A088697(A003726(n+2)))`
-/

namespace A201052.P4986477778636506736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A088697 (A003726 (n + 2)).toNat).toNat

end

end A201052.P4986477778636506736

namespace A201052

/-- `A000120(A088697(A003726(n+2)))` -/
def P4986477778636506736.Spec : Prop :=
  ∀ n, P4986477778636506736.a n = A201052 (n + 1)

end A201052

/-! ## A201052.P1680431245886570009

`ceil(log2(A097904(n+2)))`
-/

namespace A201052.P1680431245886570009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A097904 (n + 2) : ℝ)⌉

end

end A201052.P1680431245886570009

namespace A201052

/-- `ceil(log2(A097904(n+2)))` -/
def P1680431245886570009.Spec : Prop :=
  ∀ n, P1680431245886570009.a n = A201052 (n + 1)

end A201052

/-!
# A201053: Nearest cube.

The programs for A201053, the canonical program `A201053.P12620429159992071055` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201053 has offset 0).

The definition of A201053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201053.P14755545557909131993

`∑[char[∑[3*n²+1]]]^3`
-/

namespace A201053.P14755545557909131993
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A201053.P14755545557909131993

namespace A201053

/-- `∑[char[∑[3*n²+1]]]^3` -/
def P14755545557909131993.Spec : Prop :=
  ∀ n, (P14755545557909131993.a n : ℤ) = A201053 n

end A201053

/-! ## A201053.P12620429159992071055

`A048763(n-A074989(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A201053

/-- `A048763(n-A074989(n))` -/
def P12620429159992071055.Spec : Prop :=
  ∀ n, P12620429159992071055.a n = A201053 n

theorem P12620429159992071055.correct : P12620429159992071055.Spec := by
  intro n
  simp only [A201053]

end A201053

/-! ## A201053.P13414798650460190025

`A000578(∑[char[A081435(n)]])`
-/

namespace A201053.P13414798650460190025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081435 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201053.P13414798650460190025

namespace A201053

/-- `A000578(∑[char[A081435(n)]])` -/
def P13414798650460190025.Spec : Prop :=
  ∀ n, P13414798650460190025.a n = A201053 n

end A201053

/-! ## A201053.P2051965194109232611

`A117642(∑[char[A081435(n)]])/3`
-/

namespace A201053.P2051965194109232611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081435 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117642 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A201053.P2051965194109232611

namespace A201053

/-- `A117642(∑[char[A081435(n)]])/3` -/
def P2051965194109232611.Spec : Prop :=
  ∀ n, P2051965194109232611.a n = (A201053 n : ℚ)

end A201053

/-! ## A201053.P7775457350843396859

`A048762(A074989(n)+n)`
-/

namespace A201053.P7775457350843396859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (A074989 n + (n : ℤ)).toNat

end

end A201053.P7775457350843396859

namespace A201053

/-- `A048762(A074989(n)+n)` -/
def P7775457350843396859.Spec : Prop :=
  ∀ n, P7775457350843396859.a n = A201053 n

end A201053

/-! ## A201053.P10242373991675192738

`A048762(A055400(n)+n)`
-/

namespace A201053.P10242373991675192738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (A055400 n + (n : ℤ)).toNat

end

end A201053.P10242373991675192738

namespace A201053

/-- `A048762(A055400(n)+n)` -/
def P10242373991675192738.Spec : Prop :=
  ∀ n, P10242373991675192738.a n = A201053 n

end A201053

/-! ## A201053.P8653487451716174978

`A048762(2*n-A048762(n))`
-/

namespace A201053.P8653487451716174978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 ((2 * n : ℤ) - A048762 n).toNat

end

end A201053.P8653487451716174978

namespace A201053

/-- `A048762(2*n-A048762(n))` -/
def P8653487451716174978.Spec : Prop :=
  ∀ n, P8653487451716174978.a n = A201053 n

end A201053

/-! ## A201053.P2289775309066007537

`A048762(n-A048762(n)+n)`
-/

namespace A201053.P2289775309066007537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 ((n : ℤ) - A048762 n + (n : ℤ)).toNat

end

end A201053.P2289775309066007537

namespace A201053

/-- `A048762(n-A048762(n)+n)` -/
def P2289775309066007537.Spec : Prop :=
  ∀ n, P2289775309066007537.a n = A201053 n

end A201053

/-! ## A201053.P1626587963750548274

`A048762(n-(A048762(n)-n))`
-/

namespace A201053.P1626587963750548274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 ((n : ℤ) - (A048762 n - (n : ℤ))).toNat

end

end A201053.P1626587963750548274

namespace A201053

/-- `A048762(n-(A048762(n)-n))` -/
def P1626587963750548274.Spec : Prop :=
  ∀ n, P1626587963750548274.a n = A201053 n

end A201053

/-! ## A201053.P14799821440226987739

`A000578(A048766(A055400(n)+n))`
-/

namespace A201053.P14799821440226987739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A048766 (A055400 n + (n : ℤ)).toNat).toNat

end

end A201053.P14799821440226987739

namespace A201053

/-- `A000578(A048766(A055400(n)+n))` -/
def P14799821440226987739.Spec : Prop :=
  ∀ n, P14799821440226987739.a n = A201053 n

end A201053

/-! ## A201053.P7291081390600677212

`A018851(∑[char[A081435(n)]]^6)`
-/

namespace A201053.P7291081390600677212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081435 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 6)

end

end A201053.P7291081390600677212

namespace A201053

/-- `A018851(∑[char[A081435(n)]]^6)` -/
def P7291081390600677212.Spec : Prop :=
  ∀ n, P7291081390600677212.a n = A201053 n

end A201053

/-!
# A201054: Composite numbers whose product of digits is 5.

The programs for A201054, there is no canonical definition to state claims against.
-/

/-! ## A201054.P797023058165928259

`∩[A028842(n+1), A201018(n+1)]`
-/

namespace A201054.P797023058165928259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201054.P797023058165928259

/-! ## A201054.P500225322407497162

`∩[A199985(n+1), A201018(n+1)]`
-/

namespace A201054.P500225322407497162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201054.P500225322407497162

/-! ## A201054.P7201357906032350959

`∩[A201018(n+1), A254621(n+1)]`
-/

namespace A201054.P7201357906032350959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201054.P7201357906032350959

/-! ## A201054.P9530982913123168883

`∩[A201018(n+1), A276037(n+1)]`
-/

namespace A201054.P9530982913123168883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201054.P9530982913123168883

/-! ## A201054.P6151156466236255510

`∩[A201018(n+1), A307714(n+1)]`
-/

namespace A201054.P6151156466236255510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201054.P6151156466236255510

/-!
# A201055: Composite numbers whose product of digits is 6.

The programs for A201055, there is no canonical definition to state claims against.
-/

/-! ## A201055.P8699678892608089467

`∩[A199988(n+1), A201020(n+1)]`
-/

namespace A201055.P8699678892608089467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201055.P8699678892608089467

/-! ## A201055.P11563238954940682439

`∩[A201020(n+1), A245383(n+1)]`
-/

namespace A201055.P11563238954940682439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201055.P11563238954940682439

/-! ## A201055.P659514589012025937

`∩[A201020(n+1), A276038(n+1)]`
-/

namespace A201055.P659514589012025937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201055.P659514589012025937

/-! ## A201055.P11060697729920950232

`filter[A199988(n+1), A005171(#)]`
-/

namespace A201055.P11060697729920950232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A201055.P11060697729920950232

/-! ## A201055.P14246200173742046224

`filter[A199988(n+1), A066247(#)]`
-/

namespace A201055.P14246200173742046224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A201055.P14246200173742046224

/-!
# A201056: Composite numbers whose product of digits is 8.

The programs for A201056, there is no canonical definition to state claims against.
-/

/-! ## A201056.P15281345374761171365

`∩[A028890(n+1), A201023(n+1)]`
-/

namespace A201056.P15281345374761171365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201056.P15281345374761171365

/-! ## A201056.P8705904331446716270

`∩[A199989(n+1), A201023(n+1)]`
-/

namespace A201056.P8705904331446716270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201056.P8705904331446716270

/-! ## A201056.P844702943667983288

`filter[A199989(n+1), A005171(#)]`
-/

namespace A201056.P844702943667983288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A201056.P844702943667983288

/-! ## A201056.P6626852195243215519

`filter[A199989(n+1), A066247(#)]`
-/

namespace A201056.P6626852195243215519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A201056.P6626852195243215519

/-! ## A201056.P489992460882863658

`∩[A002808(n+1), A199989(n+1)]`
-/

namespace A201056.P489992460882863658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201056.P489992460882863658

/-!
# A201057: Composite numbers whose product of digits is 10.

The programs for A201057, there is no canonical definition to state claims against.
-/

/-! ## A201057.P8928720911007932212

`filter[A199990(n+1), A005171(#)]`
-/

namespace A201057.P8928720911007932212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A201057.P8928720911007932212

/-! ## A201057.P1195132401324423695

`filter[A199990(n+1), A066247(#)]`
-/

namespace A201057.P1195132401324423695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A201057.P1195132401324423695

/-! ## A201057.P4783481659524251950

`record[A055032(A199990(n+1))]`
-/

namespace A201057.P4783481659524251950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055032 (A199990 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201057.P4783481659524251950

/-! ## A201057.P7484837829475046593

`record[A288469(A199990(A008619(n)))]`
-/

namespace A201057.P7484837829475046593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A199990 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201057.P7484837829475046593

/-! ## A201057.P4743523249302875187

`record[A288469(A199990(A037915(n)))]`
-/

namespace A201057.P4743523249302875187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A199990 (A037915 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201057.P4743523249302875187

/-!
# A201058: Numerator of binomial(2n,n)/(2n).

The programs for A201058, the canonical program `A201058.P9984270356643551809` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201058 has offset 1).

The definition of A201058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201058.P9984270356643551809

`A001700(n)/A333461(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A201058

/-- `A001700(n)/A333461(n+1)` -/
def P9984270356643551809.Spec : Prop :=
  ∀ n, P9984270356643551809.a n = (A201058 (n + 1) : ℚ)

end A201058

/-! ## A201058.P13482043446127853942

`A000984(n+1)/A058005(n+1)`
-/

namespace A201058.P13482043446127853942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / (A058005 (n + 1) : ℚ)

end

end A201058.P13482043446127853942

namespace A201058

/-- `A000984(n+1)/A058005(n+1)` -/
def P13482043446127853942.Spec : Prop :=
  ∀ n, P13482043446127853942.a n = (A201058 (n + 1) : ℚ)

end A201058

/-! ## A201058.P18330738664699341507

`A001405(2*n+1)/A333461(n+1)`
-/

namespace A201058.P18330738664699341507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n + 1) : ℚ) / (A333461 (n + 1) : ℚ)

end

end A201058.P18330738664699341507

namespace A201058

/-- `A001405(2*n+1)/A333461(n+1)` -/
def P18330738664699341507.Spec : Prop :=
  ∀ n, P18330738664699341507.a n = (A201058 (n + 1) : ℚ)

end A201058

/-! ## A201058.P11792861709621943178

`A214282(2*(n+1))/A333461(n+1)`
-/

namespace A201058.P11792861709621943178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214282 (2 * (n + 1)) : ℚ) / (A333461 (n + 1) : ℚ)

end

end A201058.P11792861709621943178

namespace A201058

/-- `A214282(2*(n+1))/A333461(n+1)` -/
def P11792861709621943178.Spec : Prop :=
  ∀ n, P11792861709621943178.a n = (A201058 (n + 1) : ℚ)

end A201058

/-! ## A201058.P3726270257020278969

`A000984(n+1)/(A333461(n+1)+A333461(n+1))`
-/

namespace A201058.P3726270257020278969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / (A333461 (n + 1) + A333461 (n + 1) : ℚ)

end

end A201058.P3726270257020278969

namespace A201058

/-- `A000984(n+1)/(A333461(n+1)+A333461(n+1))` -/
def P3726270257020278969.Spec : Prop :=
  ∀ n, P3726270257020278969.a n = (A201058 (n + 1) : ℚ)

end A201058

/-! ## A201058.P4192441973937982431

`A328901(∑[n+2])`
-/

namespace A201058.P4192441973937982431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328901 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201058.P4192441973937982431

namespace A201058

/-- `A328901(∑[n+2])` -/
def P4192441973937982431.Spec : Prop :=
  ∀ n, P4192441973937982431.a n = A201058 (n + 1)

end A201058

/-! ## A201058.P13783950330387524318

`lcm(n+1, C(Δ[n²], n))/(n+1)`
-/

namespace A201058.P13783950330387524318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n) : ℚ) / (n + 1 : ℚ)

end

end A201058.P13783950330387524318

namespace A201058

/-- `lcm(n+1, C(Δ[n²], n))/(n+1)` -/
def P13783950330387524318.Spec : Prop :=
  ∀ n, P13783950330387524318.a n = (A201058 (n + 1) : ℚ)

end A201058

/-! ## A201058.P17955623389058181691

`C(2*n+1, n)/gcd(n+1, C(2*n+1, n))`
-/

namespace A201058.P17955623389058181691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) n : ℚ) / (Nat.gcd (n + 1) (Nat.choose (2 * n + 1) n) : ℚ)

end

end A201058.P17955623389058181691

namespace A201058

/-- `C(2*n+1, n)/gcd(n+1, C(2*n+1, n))` -/
def P17955623389058181691.Spec : Prop :=
  ∀ n, P17955623389058181691.a n = (A201058 (n + 1) : ℚ)

end A201058

/-! ## A201058.P15816728672570533916

`A080382(A096376(n+1))`
-/

namespace A201058.P15816728672570533916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080382 (A096376 (n + 1)).toNat

end

end A201058.P15816728672570533916

namespace A201058

/-- `A080382(A096376(n+1))` -/
def P15816728672570533916.Spec : Prop :=
  ∀ n, P15816728672570533916.a n = A201058 (n + 1)

end A201058

/-! ## A201058.P8636814764224042527

`A080382(A014106(n+1))`
-/

namespace A201058.P8636814764224042527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080382 (A014106 (n + 1)).toNat

end

end A201058.P8636814764224042527

namespace A201058

/-- `A080382(A014106(n+1))` -/
def P8636814764224042527.Spec : Prop :=
  ∀ n, P8636814764224042527.a n = A201058 (n + 1)

end A201058

/-!
# A201059: Denominator of binomial(2n,n)/(2n).

The programs for A201059, the canonical program `A201059.P10578964195091307277` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201059 has offset 1).

The definition of A201059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201059.P10578964195091307277

`(n+1)/A333461(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A201059

/-- `(n+1)/A333461(n+1)` -/
def P10578964195091307277.Spec : Prop :=
  ∀ n, P10578964195091307277.a n = (A201059 (n + 1) : ℚ)

end A201059

/-! ## A201059.P10045855689498250015

`2*(n+1)/A058005(n+1)`
-/

namespace A201059.P10045855689498250015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / (A058005 (n + 1) : ℚ))

end

end A201059.P10045855689498250015

namespace A201059

/-- `2*(n+1)/A058005(n+1)` -/
def P10045855689498250015.Spec : Prop :=
  ∀ n, P10045855689498250015.a n = (A201059 (n + 1) : ℚ)

end A201059

/-! ## A201059.P1541715331713306794

`(n+1)/gcd(n+1, A099906(n+1))`
-/

namespace A201059.P1541715331713306794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A099906 (n + 1)) : ℚ)

end

end A201059.P1541715331713306794

namespace A201059

/-- `(n+1)/gcd(n+1, A099906(n+1))` -/
def P1541715331713306794.Spec : Prop :=
  ∀ n, P1541715331713306794.a n = (A201059 (n + 1) : ℚ)

end A201059

/-! ## A201059.P2830034686108076464

`A049077(2*(n+1))`
-/

namespace A201059.P2830034686108076464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (2 * (n + 1))

end

end A201059.P2830034686108076464

namespace A201059

/-- `A049077(2*(n+1))` -/
def P2830034686108076464.Spec : Prop :=
  ∀ n, P2830034686108076464.a n = A201059 (n + 1)

end A201059

/-! ## A201059.P14233000692556997071

`A049077(n+2+n)%(n+2)`
-/

namespace A201059.P14233000692556997071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049077 (n + 2 + n)) (n + 2 : ℤ)

end

end A201059.P14233000692556997071

namespace A201059

/-- `A049077(n+2+n)%(n+2)` -/
def P14233000692556997071.Spec : Prop :=
  ∀ n, P14233000692556997071.a n = A201059 (n + 1)

end A201059

/-! ## A201059.P14410221589458280326

`A328902(∑[n+2])`
-/

namespace A201059.P14410221589458280326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328902 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201059.P14410221589458280326

namespace A201059

/-- `A328902(∑[n+2])` -/
def P14410221589458280326.Spec : Prop :=
  ∀ n, P14410221589458280326.a n = A201059 (n + 1)

end A201059

/-! ## A201059.P6481148359424481794

`(n+1)/gcd(n+1, C(2*n, n+1))`
-/

namespace A201059.P6481148359424481794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) (Nat.choose (2 * n) (n + 1)) : ℚ)

end

end A201059.P6481148359424481794

namespace A201059

/-- `(n+1)/gcd(n+1, C(2*n, n+1))` -/
def P6481148359424481794.Spec : Prop :=
  ∀ n, P6481148359424481794.a n = (A201059 (n + 1) : ℚ)

end A201059

/-! ## A201059.P14795041583731357502

`lcm(n+1, C(2*n+1, n))/C(2*n+1, n)`
-/

namespace A201059.P14795041583731357502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (Nat.choose (2 * n + 1) n) : ℚ) / (Nat.choose (2 * n + 1) n : ℚ)

end

end A201059.P14795041583731357502

namespace A201059

/-- `lcm(n+1, C(2*n+1, n))/C(2*n+1, n)` -/
def P14795041583731357502.Spec : Prop :=
  ∀ n, P14795041583731357502.a n = (A201059 (n + 1) : ℚ)

end A201059

/-! ## A201059.P17165606231513297822

`A159335(∑[4*(n+1)])`
-/

namespace A201059.P17165606231513297822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201059.P17165606231513297822

namespace A201059

/-- `A159335(∑[4*(n+1)])` -/
def P17165606231513297822.Spec : Prop :=
  ∀ n, P17165606231513297822.a n = A201059 (n + 1)

end A201059

/-!
# A201060: Repdigit numbers with repdigit digital product.

The programs for A201060, there is no canonical definition to state claims against.
-/

/-! ## A201060.P2399723608573649341

`∩[A117056(n+1), A048307(n)]`
-/

namespace A201060.P2399723608573649341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201060.P2399723608573649341

/-! ## A201060.P3637634970810376581

`A201064(n+1)%A201069(n+1)`
-/

namespace A201060.P3637634970810376581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201064 (n + 1)) (A201069 (n + 1))

end

end A201060.P3637634970810376581

/-! ## A201060.P7405457480575844835

`∩[A048321(n+1), A117056(n+1)]`
-/

namespace A201060.P7405457480575844835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201060.P7405457480575844835

/-! ## A201060.P8510458214167098925

`∩[A117055(n+1), A201061(n+1)]`
-/

namespace A201060.P8510458214167098925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201060.P8510458214167098925

/-! ## A201060.P2709875322685869593

`∩[A201061(n+1), A239480(n+1)]`
-/

namespace A201060.P2709875322685869593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201060.P2709875322685869593

/-!
# A201061: Repdigit numbers with repdigit digital sum.

The programs for A201061, there is no canonical definition to state claims against.
-/

/-! ## A201061.P16027774655041871546

`∩[A082208(n+1), A010785(n)]`
-/

namespace A201061.P16027774655041871546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201061.P16027774655041871546

/-! ## A201061.P13111217124611838363

`∩[A082208(n+1), A048307(n)]`
-/

namespace A201061.P13111217124611838363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201061.P13111217124611838363

/-! ## A201061.P4517668198054589535

`∩[A082208(n+1), A064222(n)]`
-/

namespace A201061.P4517668198054589535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201061.P4517668198054589535

/-! ## A201061.P3927604985127712722

`∩[A048321(n+1), A082208(n+1)]`
-/

namespace A201061.P3927604985127712722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201061.P3927604985127712722

/-! ## A201061.P753789195498678564

`∩[A082208(n+1), A385298(n+1)]`
-/

namespace A201061.P753789195498678564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201061.P753789195498678564

/-!
# A201062: Record (maximal) gaps between prime 5-tuples (p, p+4, p+6, p+10, p+12).

The programs for A201062, there is no canonical definition to state claims against.
-/

/-! ## A201062.P13371506642394983486

`A233433(n+1)-A201063(n+1)`
-/

namespace A201062.P13371506642394983486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233433 (n + 1) - A201063 (n + 1)

end

end A201062.P13371506642394983486

/-! ## A201062.P2544756374541747888

`record[Δ[A022007(n+1)]]`
-/

namespace A201062.P2544756374541747888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201062.P2544756374541747888

/-! ## A201062.P3397822102920377105

`record[A022007(n+2)-A022007(n+1)]`
-/

namespace A201062.P3397822102920377105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 2) - A022007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201062.P3397822102920377105

/-! ## A201062.P7370060219935329130

`record[Δ[A270999(A016861(n))]]`
-/

namespace A201062.P7370060219935329130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270999 (A016861 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201062.P7370060219935329130

/-! ## A201062.P10184026427732006451

`record[Δ[A270999(A016897(n))]]`
-/

namespace A201062.P10184026427732006451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270999 (A016897 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201062.P10184026427732006451

/-!
# A201063: Initial primes in prime 5-tuples (p, p+4, p+6, p+10, p+12) preceding the maximal gaps in A201062.

The programs for A201063, there is no canonical definition to state claims against.
-/

/-! ## A201063.P17272786507150835096

`A233433(n+1)-A201062(n+1)`
-/

namespace A201063.P17272786507150835096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233433 (n + 1) - A201062 (n + 1)

end

end A201063.P17272786507150835096

/-! ## A201063.P6384315091568969201

`A233433(n+1)-record[Δ[A022007(n+1)]]`
-/

namespace A201063.P6384315091568969201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233433 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201063.P6384315091568969201

/-! ## A201063.P14927152782405914268

`A233433(n+1)-record[A022007(n+2)-A022007(n+1)]`
-/

namespace A201063.P14927152782405914268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 2) - A022007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233433 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201063.P14927152782405914268

/-!
# A201064: Repdigit numbers such that both the sum and product of the digits is also a repdigit.

The programs for A201064, there is no canonical definition to state claims against.
-/

/-! ## A201064.P6552055406175269774

`∩[A117056(n+1), A010785(n)]`
-/

namespace A201064.P6552055406175269774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201064.P6552055406175269774

/-! ## A201064.P2730137529269410703

`∩[A117056(n+1), A064222(n)]`
-/

namespace A201064.P2730137529269410703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201064.P2730137529269410703

/-! ## A201064.P15289700447234753203

`∩[A117056(n+1), A201061(n+1)]`
-/

namespace A201064.P15289700447234753203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201064.P15289700447234753203

/-! ## A201064.P16829574093527459248

`∩[A201060(n+1), A201061(n+1)]`
-/

namespace A201064.P16829574093527459248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201064.P16829574093527459248

/-! ## A201064.P530166367096156761

`∩[A117056(n+1), A385296(n+1)]`
-/

namespace A201064.P530166367096156761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201064.P530166367096156761

/-!
# A201065: Number of n X n 0..6 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201065, there is no canonical definition to state claims against.
-/

/-! ## A201065.P484565127225624750

`A201072(∑[4*n]+1)`
-/

namespace A201065.P484565127225624750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201065.P484565127225624750

/-! ## A201065.P14437617825995866304

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A201072(n+1))]`
-/

namespace A201065.P14437617825995866304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A201072 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201065.P14437617825995866304

/-! ## A201065.P3544327851622640575

`∑{digits}[n, A201072(A001844(#))]`
-/

namespace A201065.P3544327851622640575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A201072 (A001844 x).toNat).sum

end

end A201065.P3544327851622640575

/-! ## A201065.P7545875008391222163

`A201072(A001844(n))+char[9]`
-/

namespace A201065.P7545875008391222163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201065.P7545875008391222163

/-!
# A201066: Number of nX2 0..6 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201066, there is no canonical definition to state claims against.
-/

/-! ## A201066.P5704038434266044729

`A201072(∑[n+1]+2)`
-/

namespace A201066.P5704038434266044729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201066.P5704038434266044729

/-! ## A201066.P18315011428069411170

`A201072(A000096(n)+3)+char[16]`
-/

namespace A201066.P18315011428069411170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201066.P18315011428069411170

/-! ## A201066.P15647462619504156466

`A007318(C(2, n))*A201072(A000096(n)+3)`
-/

namespace A201066.P15647462619504156466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A201072 (A000096 n + 3).toNat

end

end A201066.P15647462619504156466

/-! ## A201066.P7716359126269614729

`gcd(A008683(16*(n+1)), A201072(A000096(n)+3))`
-/

namespace A201066.P7716359126269614729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (16 * (n + 1))) (A201072 (A000096 n + 3).toNat)

end

end A201066.P7716359126269614729

/-!
# A201067: Number of nX3 0..6 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201067, there is no canonical definition to state claims against.
-/

/-! ## A201067.P12564677845370605705

`A201072(∑[n+2]+4)`
-/

namespace A201067.P12564677845370605705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201067.P12564677845370605705

/-! ## A201067.P1796306075478999960

`A201072(A167614(n+1))+char[15]`
-/

namespace A201067.P1796306075478999960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201067.P1796306075478999960

/-! ## A201067.P16165474293406200113

`A036225(n)*A201072(A167614(n+1))`
-/

namespace A201067.P16165474293406200113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A201072 (A167614 (n + 1)).toNat

end

end A201067.P16165474293406200113

/-! ## A201067.P12992008359810405397

`gcd(A184946(n), A201072(A167614(n+1)))`
-/

namespace A201067.P12992008359810405397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A184946 n) (A201072 (A167614 (n + 1)).toNat)

end

end A201067.P12992008359810405397

/-! ## A201067.P8010845435372556786

`A201072(A167614(n+1))%A249640(n+4)`
-/

namespace A201067.P8010845435372556786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201072 (A167614 (n + 1)).toNat) (A249640 (n + 4))

end

end A201067.P8010845435372556786

/-!
# A201068: Number of nX4 0..6 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201068, there is no canonical definition to state claims against.
-/

/-! ## A201068.P8777083706622186686

`A201072(∑[n+3]+7)`
-/

namespace A201068.P8777083706622186686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201068.P8777083706622186686

/-!
# A201069: Number of n X 5 0..6 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201069, there is no canonical definition to state claims against.
-/

/-! ## A201069.P16226745309062794790

`A201072(A374005(n+1))`
-/

namespace A201069.P16226745309062794790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A374005 (n + 1)).toNat

end

end A201069.P16226745309062794790

/-! ## A201069.P9938295968500520645

`A201072(A167499(n+3))`
-/

namespace A201069.P9938295968500520645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A167499 (n + 3)).toNat

end

end A201069.P9938295968500520645

/-! ## A201069.P423136299155222756

`A201072(A155212(n)+13)`
-/

namespace A201069.P423136299155222756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A155212 n + 13).toNat

end

end A201069.P423136299155222756

/-! ## A201069.P7455084469990331074

`A201072(A056000(n)+15)`
-/

namespace A201069.P7455084469990331074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A056000 n + 15).toNat

end

end A201069.P7455084469990331074

/-! ## A201069.P4581083558213454141

`A201072(eq[7, A066657(n)])`
-/

namespace A201069.P4581083558213454141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201069.P4581083558213454141

/-!
# A201070: Number of nX6 0..6 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201070, there is no canonical definition to state claims against.
-/

/-! ## A201070.P75413296828550817

`A201072(A374007(n+1))`
-/

namespace A201070.P75413296828550817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A374007 (n + 1)).toNat

end

end A201070.P75413296828550817

/-! ## A201070.P10895564109939692505

`A201072(A056115(n)+21)`
-/

namespace A201070.P10895564109939692505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A056115 n + 21).toNat

end

end A201070.P10895564109939692505

/-! ## A201070.P13482341642918961806

`A201072(A167499(n+4)+1)`
-/

namespace A201070.P13482341642918961806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A167499 (n + 4) + 1).toNat

end

end A201070.P13482341642918961806

/-! ## A201070.P6600002924407076033

`A201072(A167614(n+4)+3)`
-/

namespace A201070.P6600002924407076033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A167614 (n + 4) + 3).toNat

end

end A201070.P6600002924407076033

/-! ## A201070.P115569190370349050

`A201072(A112355(n+3)+6)`
-/

namespace A201070.P115569190370349050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A112355 (n + 3) + 6).toNat

end

end A201070.P115569190370349050

/-!
# A201071: Number of n X 7 0..6 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201071, there is no canonical definition to state claims against.
-/

/-! ## A201071.P14232540404334571668

`A201072(A374008(n+1))`
-/

namespace A201071.P14232540404334571668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A374008 (n + 1)).toNat

end

end A201071.P14232540404334571668

/-! ## A201071.P9270466665783360049

`A201072(eq[11, A066657(n)])`
-/

namespace A201071.P9270466665783360049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201071.P9270466665783360049

/-! ## A201071.P7862124244330475084

`A201072(A167499(n+5)+2)`
-/

namespace A201071.P7862124244330475084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A167499 (n + 5) + 2).toNat

end

end A201071.P7862124244330475084

/-! ## A201071.P6965578206970213837

`A201072(A112355(n+4)+7)`
-/

namespace A201071.P6965578206970213837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A112355 (n + 4) + 7).toNat

end

end A201071.P6965578206970213837

/-! ## A201071.P15766969727303901305

`A201072(A141214(n+3)+10)`
-/

namespace A201071.P15766969727303901305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201072 (A141214 (n + 3) + 10).toNat

end

end A201071.P15766969727303901305

/-!
# A201073: Record (maximal) gaps between prime 5-tuples (p, p+2, p+6, p+8, p+12).

The programs for A201073, there is no canonical definition to state claims against.
-/

/-! ## A201073.P12468898091794904006

`A233432(n+1)-A201074(n+1)`
-/

namespace A201073.P12468898091794904006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233432 (n + 1) - A201074 (n + 1)

end

end A201073.P12468898091794904006

/-! ## A201073.P9367529239188833909

`record[Δ[A022006(n+1)]]`
-/

namespace A201073.P9367529239188833909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201073.P9367529239188833909

/-! ## A201073.P17472026221161110086

`record[A022006(n+2)-A022006(n+1)]`
-/

namespace A201073.P17472026221161110086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 2) - A022006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201073.P17472026221161110086

/-! ## A201073.P11305185839393007165

`record[Δ[A090286(n+1)]]`
-/

namespace A201073.P11305185839393007165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090286 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201073.P11305185839393007165

/-! ## A201073.P14816054203811529308

`record[Δ[A245304(n+1)]]`
-/

namespace A201073.P14816054203811529308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245304 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201073.P14816054203811529308

/-!
# A201074: Initial primes in prime 5-tuples (p, p+2, p+6, p+8, p+12) preceding the maximal gaps in A201073.

The programs for A201074, there is no canonical definition to state claims against.
-/

/-! ## A201074.P857657033629288751

`A233432(n+1)-A201073(n+1)`
-/

namespace A201074.P857657033629288751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233432 (n + 1) - A201073 (n + 1)

end

end A201074.P857657033629288751

/-! ## A201074.P8122065443769646282

`A233432(n+1)-record[Δ[A022006(n+1)]]`
-/

namespace A201074.P8122065443769646282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233432 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201074.P8122065443769646282

/-! ## A201074.P13540816520679044830

`A233432(n+1)-record[A022006(n+2)-A022006(n+1)]`
-/

namespace A201074.P13540816520679044830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 2) - A022006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233432 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201074.P13540816520679044830

/-! ## A201074.P3410502646801146259

`A233432(n+1)-record[Δ[A090286(n+1)]]`
-/

namespace A201074.P3410502646801146259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090286 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233432 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201074.P3410502646801146259

/-! ## A201074.P6964385141299091168

`A233432(n+1)-record[Δ[A245304(n+1)]]`
-/

namespace A201074.P6964385141299091168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245304 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233432 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201074.P6964385141299091168

/-!
# A201077: G.f.: 1 / Product_{i>=1} (1-q^(2*i-1))^2*(1-q^(12*i-8))*(1-q^(12*i-6))*(1-q^(12*i-4))*(1-q^(12*i)).

The programs for A201077, there is no canonical definition to state claims against.
-/

/-! ## A201077.P131706327358877706

`A129181(A174723(n+1))`
-/

namespace A201077.P131706327358877706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129181 (A174723 (n + 1)).toNat

end

end A201077.P131706327358877706

/-! ## A201077.P16553786428375993888

`A129181(∑[A000124(2*n)])`
-/

namespace A201077.P16553786428375993888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201077.P16553786428375993888

/-! ## A201077.P17384281946633434368

`A129181(∑[A058331(n)+n])`
-/

namespace A201077.P17384281946633434368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201077.P17384281946633434368

/-! ## A201077.P2972860058223520209

`A129181(A016061(n)+1+n)`
-/

namespace A201077.P2972860058223520209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129181 (A016061 n + 1 + (n : ℤ)).toNat

end

end A201077.P2972860058223520209

/-! ## A201077.P5404421054199901580

`A129181(A006331(n)+∑[n+1])`
-/

namespace A201077.P5404421054199901580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129181 (A006331 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A201077.P5404421054199901580

/-!
# A201078: Twice A137829.

The programs for A201078, there is no canonical definition to state claims against.
-/

/-! ## A201078.P8990173353130490052

`2*A137829(n)`
-/

namespace A201078.P8990173353130490052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137829 n

end

end A201078.P8990173353130490052

/-! ## A201078.P4703486359693526788

`record[A137828(Δ[n²])]`
-/

namespace A201078.P4703486359693526788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137828 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201078.P4703486359693526788

/-! ## A201078.P17960049352242566155

`A137828(4*n+1)`
-/

namespace A201078.P17960049352242566155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137828 (4 * n + 1)

end

end A201078.P17960049352242566155

/-! ## A201078.P12531814621001361757

`record[-A137830(n+1)]`
-/

namespace A201078.P12531814621001361757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201078.P12531814621001361757

/-! ## A201078.P14492387421809638209

`record[abs(A137830(2*n+1))]`
-/

namespace A201078.P14492387421809638209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137830 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201078.P14492387421809638209

/-! ## A201078.P6864292904319939828

`record[lcm(A137822(n+1), A137830(2*n+1))]`
-/

namespace A201078.P6864292904319939828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A137822 (n + 1)) (A137830 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201078.P6864292904319939828

/-!
# A201081: Number of -1..1 arrays of n elements with first and second differences also in -1..1.

The programs for A201081, the canonical program `A201081.P7926656445555104519` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201081 has offset 1).

The definition of A201081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201081.P8185636433040750054

`ogf((3+x+2x^2+3x^3)/(1-2x+x^2-x^3-x^4))`
-/

namespace A201081.P8185636433040750054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 2, 3] [1, -2, 1, -1, -1] n

end

end A201081.P8185636433040750054

namespace A201081

/-- `ogf((3+x+2x^2+3x^3)/(1-2x+x^2-x^3-x^4))` -/
def P8185636433040750054.Spec : Prop :=
  ∀ n, P8185636433040750054.a n = A201081 (n + 1)

end A201081

/-! ## A201081.P7926656445555104519

`2*a(n-1)-a(n-2)+a(n-3)+a(n-4)` with `a(0)=3, a(1)=7, a(2)=13, a(3)=25`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201081

/-- `2*a(n-1)-a(n-2)+a(n-3)+a(n-4)` -/
def P7926656445555104519.Spec : Prop :=
  ∀ n, P7926656445555104519.a n = A201081 (n + 1)

theorem P7926656445555104519.correct : P7926656445555104519.Spec := by
  intro n
  simp only [A201081, Nat.add_sub_cancel]

end A201081

/-! ## A201081.P8964879733274748129

`A171856(n)+2*A171857(n)`
-/

namespace A201081.P8964879733274748129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171856 n + 2 * A171857 n

end

end A201081.P8964879733274748129

namespace A201081

/-- `A171856(n)+2*A171857(n)` -/
def P8964879733274748129.Spec : Prop :=
  ∀ n, P8964879733274748129.a n = A201081 (n + 1)

end A201081

/-! ## A201081.P2528614693993091320

`A171856(n)+Δ[A171856(n+1)]`
-/

namespace A201081.P2528614693993091320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171856 n + (f1 (n + 1) - f1 n)

end

end A201081.P2528614693993091320

namespace A201081

/-- `A171856(n)+Δ[A171856(n+1)]` -/
def P2528614693993091320.Spec : Prop :=
  ∀ n, P2528614693993091320.a n = A201081 (n + 1)

end A201081

/-! ## A201081.P6533434033517123450

`A201088(∑[n+1])`
-/

namespace A201081.P6533434033517123450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201081.P6533434033517123450

namespace A201081

/-- `A201088(∑[n+1])` -/
def P6533434033517123450.Spec : Prop :=
  ∀ n, P6533434033517123450.a n = A201081 (n + 1)

end A201081

/-! ## A201081.P11061408454055561795

`record[root(A201088(n+1), A099375(n))]`
-/

namespace A201081.P11061408454055561795
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201088 (n + 1) : ℝ) ^ (1 / (A099375 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201081.P11061408454055561795

namespace A201081

/-- `record[root(A201088(n+1), A099375(n))]` -/
def P11061408454055561795.Spec : Prop :=
  ∀ n, P11061408454055561795.a n = (A201081 (n + 1) : ℝ)

end A201081

/-! ## A201081.P6939964735176336026

`record[gcd(A025581(n), A201088(n+1))]`
-/

namespace A201081.P6939964735176336026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A201088 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201081.P6939964735176336026

namespace A201081

/-- `record[gcd(A025581(n), A201088(n+1))]` -/
def P6939964735176336026.Spec : Prop :=
  ∀ n, (P6939964735176336026.a n : ℤ) = A201081 (n + 1)

end A201081

/-! ## A201081.P11359516616368926974

`record[A201088(A008805(A028242(n)))]`
-/

namespace A201081.P11359516616368926974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A008805 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201081.P11359516616368926974

namespace A201081

/-- `record[A201088(A008805(A028242(n)))]` -/
def P11359516616368926974.Spec : Prop :=
  ∀ n, P11359516616368926974.a n = A201081 (n + 1)

end A201081

/-!
# A201082: Number of -2..2 arrays of n elements with first and second differences also in -2..2.

The programs for A201082, the canonical program `A201082.P18326038171689948527` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201082 has offset 1).

The definition of A201082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201082.P18326038171689948527

`ogf((5+4x-5x^2-5x^3-7x^4-9x^5+x^6+7x^7+3x^8)/(1-3x-x^2+2x^3+2x^5+4x^6-2x^8-x^9))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201082

/-- `ogf((5+4x-5x^2-5x^3-7x^4-9x^5+x^6+7x^7+3x^8)/(1-3x-x^2+2x^3+2x^5+4x^6-2x^8-x^9))` -/
def P18326038171689948527.Spec : Prop :=
  ∀ n, P18326038171689948527.a n = A201082 (n + 1)

theorem P18326038171689948527.correct : P18326038171689948527.Spec := by
  intro n
  simp only [A201082, Nat.add_sub_cancel]

end A201082

/-! ## A201082.P17268761587204966641

`A201088(∑[n+2])`
-/

namespace A201082.P17268761587204966641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201082.P17268761587204966641

namespace A201082

/-- `A201088(∑[n+2])` -/
def P17268761587204966641.Spec : Prop :=
  ∀ n, P17268761587204966641.a n = A201082 (n + 1)

end A201082

/-! ## A201082.P211870675398380031

`record[A201088(A000096(A003963(n+1)))]`
-/

namespace A201082.P211870675398380031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201082.P211870675398380031

namespace A201082

/-- `record[A201088(A000096(A003963(n+1)))]` -/
def P211870675398380031.Spec : Prop :=
  ∀ n, P211870675398380031.a n = A201082 (n + 1)

end A201082

/-! ## A201082.P9976865551454325935

`record[A201088(A000096(A010766(n+1)))]`
-/

namespace A201082.P9976865551454325935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000096 (A010766 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201082.P9976865551454325935

namespace A201082

/-- `record[A201088(A000096(A010766(n+1)))]` -/
def P9976865551454325935.Spec : Prop :=
  ∀ n, P9976865551454325935.a n = A201082 (n + 1)

end A201082

/-! ## A201082.P16315568914464451157

`record[A201088(A000096(A026806(n+1)))]`
-/

namespace A201082.P16315568914464451157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000096 (A026806 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201082.P16315568914464451157

namespace A201082

/-- `record[A201088(A000096(A026806(n+1)))]` -/
def P16315568914464451157.Spec : Prop :=
  ∀ n, P16315568914464451157.a n = A201082 (n + 1)

end A201082

/-! ## A201082.P7829550435547673098

`record[A201088(A000096(A209279(n+1)))]`
-/

namespace A201082.P7829550435547673098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000096 (A209279 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201082.P7829550435547673098

namespace A201082

/-- `record[A201088(A000096(A209279(n+1)))]` -/
def P7829550435547673098.Spec : Prop :=
  ∀ n, P7829550435547673098.a n = A201082 (n + 1)

end A201082

/-! ## A201082.P8120345841939496439

`record[A201088(A000096(A267177(n+1)))]`
-/

namespace A201082.P8120345841939496439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000096 (A267177 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201082.P8120345841939496439

namespace A201082

/-- `record[A201088(A000096(A267177(n+1)))]` -/
def P8120345841939496439.Spec : Prop :=
  ∀ n, P8120345841939496439.a n = A201082 (n + 1)

end A201082

/-!
# A201083: Number of -3..3 arrays of n elements with first and second differences also in -3..3.

The programs for A201083, there is no canonical definition to state claims against.
-/

/-! ## A201083.P2884648008464881893

`A201088(∑[n+3]+1)`
-/

namespace A201083.P2884648008464881893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201083.P2884648008464881893

/-! ## A201083.P10511408260742476218

`or(1, A201088(Δ[A008778(n)]))`
-/

namespace A201083.P10511408260742476218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201088 (f1 (n + 1) - f1 n).toNat)

end

end A201083.P10511408260742476218

/-! ## A201083.P1082554987945266376

`or(1, A201088(A034856(n+2)))`
-/

namespace A201083.P1082554987945266376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201088 (A034856 (n + 2)).toNat)

end

end A201083.P1082554987945266376

/-! ## A201083.P16764215926928323322

`or(1, A201088(A055999(n)+4))`
-/

namespace A201083.P16764215926928323322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201088 (A055999 n + 4).toNat)

end

end A201083.P16764215926928323322

/-!
# A201084: Number of -4..4 arrays of n elements with first and second differences also in -4..4.

The programs for A201084, there is no canonical definition to state claims against.
-/

/-! ## A201084.P10417918504314010167

`A201088(A027379(n+2))`
-/

namespace A201084.P10417918504314010167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A027379 (n + 2)).toNat

end

end A201084.P10417918504314010167

/-! ## A201084.P569926181958196282

`A201088(A055998(n+2))`
-/

namespace A201084.P569926181958196282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A055998 (n + 2)).toNat

end

end A201084.P569926181958196282

/-! ## A201084.P12743821861067496715

`A201088(A155212(n)+5)`
-/

namespace A201084.P12743821861067496715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A155212 n + 5).toNat

end

end A201084.P12743821861067496715

/-! ## A201084.P15452638821989097393

`A201088(A046691(n+2)+1)`
-/

namespace A201084.P15452638821989097393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A046691 (n + 2) + 1).toNat

end

end A201084.P15452638821989097393

/-! ## A201084.P1507056494730537888

`A201088(A052905(n+1)+2)`
-/

namespace A201084.P1507056494730537888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A052905 (n + 1) + 2).toNat

end

end A201084.P1507056494730537888

/-! ## A201084.P17640279264833418210

`A201088(Δ[A008778(n+1)]-1)`
-/

namespace A201084.P17640279264833418210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (f1 (n + 1) - f1 n - 1).toNat

end

end A201084.P17640279264833418210

/-! ## A201084.P7508716590922935499

`A201088(A020715(A052905(n)+n))`
-/

namespace A201084.P7508716590922935499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A020715 (A052905 n + (n : ℤ)).toNat).toNat

end

end A201084.P7508716590922935499

/-! ## A201084.P17357572709313834228

`A201088(A167614(n+1)+A005408(n))`
-/

namespace A201084.P17357572709313834228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A167614 (n + 1) + A005408 n).toNat

end

end A201084.P17357572709313834228

/-!
# A201085: Number of -5..5 arrays of n elements with first and second differences also in -5..5.

The programs for A201085, there is no canonical definition to state claims against.
-/

/-! ## A201085.P17755812363774640406

`A201088(Δ[A264443(n)])`
-/

namespace A201085.P17755812363774640406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (f1 (n + 1) - f1 n).toNat

end

end A201085.P17755812363774640406

/-! ## A201085.P18307504913563873469

`A201088(A046691(n+3))`
-/

namespace A201085.P18307504913563873469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A046691 (n + 3)).toNat

end

end A201085.P18307504913563873469

/-! ## A201085.P14496585285940382589

`A201088(Δ[A023545(n+1)])`
-/

namespace A201085.P14496585285940382589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (f1 (n + 1) - f1 n).toNat

end

end A201085.P14496585285940382589

/-! ## A201085.P12903423328560355686

`A201088(A000217(n+5)-4)`
-/

namespace A201085.P12903423328560355686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000217 (n + 5) - 4).toNat

end

end A201085.P12903423328560355686

/-! ## A201085.P809070911964566909

`A201088(A000124(n+5)-5)`
-/

namespace A201085.P809070911964566909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000124 (n + 5) - 5).toNat

end

end A201085.P809070911964566909

/-! ## A201085.P5272881055431081041

`A201088(n+4+A055998(n+2))`
-/

namespace A201085.P5272881055431081041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 ((n + 4 : ℤ) + A055998 (n + 2)).toNat

end

end A201085.P5272881055431081041

/-! ## A201085.P14191132271685101094

`A201088(A052905(n+1)+A020715(n))`
-/

namespace A201085.P14191132271685101094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A052905 (n + 1) + A020715 n).toNat

end

end A201085.P14191132271685101094

/-! ## A201085.P904041270864024961

`A201088(A264443(n+1)-A264443(n))`
-/

namespace A201085.P904041270864024961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A264443 (n + 1) - A264443 n).toNat

end

end A201085.P904041270864024961

/-!
# A201086: Number of -6..6 arrays of n elements with first and second differences also in -6..6.

The programs for A201086, there is no canonical definition to state claims against.
-/

/-! ## A201086.P1954078632193516478

`A201088(A052905(n+3))`
-/

namespace A201086.P1954078632193516478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A052905 (n + 3)).toNat

end

end A201086.P1954078632193516478

/-! ## A201086.P1752197333923156506

`A201088(A000124(n+6)-6)`
-/

namespace A201086.P1752197333923156506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000124 (n + 6) - 6).toNat

end

end A201086.P1752197333923156506

/-! ## A201086.P10164135868814580980

`A201088(Δ[A264443(n+1)]-1)`
-/

namespace A201086.P10164135868814580980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (f1 (n + 1) - f1 n - 1).toNat

end

end A201086.P10164135868814580980

/-! ## A201086.P17147372236636295214

`A201088(Δ[A023545(n+2)]-1)`
-/

namespace A201086.P17147372236636295214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (f1 (n + 1) - f1 n - 1).toNat

end

end A201086.P17147372236636295214

/-! ## A201086.P5764750348568901288

`A201088(Δ[A046691(n+2)+A023545(n+1)])`
-/

namespace A201086.P5764750348568901288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (n + 2) + A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (f1 (n + 1) - f1 n).toNat

end

end A201086.P5764750348568901288

/-! ## A201086.P472173993189072771

`A201088(Δ[A055998(n+2)+A023545(n+1)])`
-/

namespace A201086.P472173993189072771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (n + 2) + A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (f1 (n + 1) - f1 n).toNat

end

end A201086.P472173993189072771

/-!
# A201087: Number of -7..7 arrays of n elements with first and second differences also in -7..7.

The programs for A201087, there is no canonical definition to state claims against.
-/

/-! ## A201087.P18317093531404595110

`A201088(A055999(n+4))`
-/

namespace A201087.P18317093531404595110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A055999 (n + 4)).toNat

end

end A201087.P18317093531404595110

/-! ## A201087.P2393789878755485735

`A201088(A056000(n+3)+4)`
-/

namespace A201087.P2393789878755485735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A056000 (n + 3) + 4).toNat

end

end A201087.P2393789878755485735

/-! ## A201087.P11313053972373762876

`A201088(A046691(n+5)-2)`
-/

namespace A201087.P11313053972373762876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A046691 (n + 5) - 2).toNat

end

end A201087.P11313053972373762876

/-! ## A201087.P2706513322430105979

`A201088(A000124(n+7)-7)`
-/

namespace A201087.P2706513322430105979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000124 (n + 7) - 7).toNat

end

end A201087.P2706513322430105979

/-! ## A201087.P7888282714156500209

`A201088(n+4+A055998(n+4))`
-/

namespace A201087.P7888282714156500209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 ((n + 4 : ℤ) + A055998 (n + 4)).toNat

end

end A201087.P7888282714156500209

/-! ## A201087.P13617250078466610543

`A201088((n+5)²-A000217(n+2))`
-/

namespace A201087.P13617250078466610543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (((n + 5) ^ 2 : ℤ) - A000217 (n + 2)).toNat

end

end A201087.P13617250078466610543

/-!
# A201088: T(n,k)=Number of -k..k arrays of n elements with first and second differences also in -k..k.

The programs for A201088, there is no canonical definition to state claims against.
-/

/-! ## A201088.P16713678065329078046

`xor(A010893(A193710(n+1)), A202124(n+1))`
-/

namespace A201088.P16713678065329078046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010893 ((A193710 (n + 1)).toNat + 13)) (A202124 (n + 1))

end

end A201088.P16713678065329078046

/-! ## A201088.P2615165341407881006

`xor(A010893(A193710(n+1)), A202664(n+1))`
-/

namespace A201088.P2615165341407881006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010893 ((A193710 (n + 1)).toNat + 13)) (A202664 (n + 1))

end

end A201088.P2615165341407881006

/-! ## A201088.P18377105756604259108

`A202124((n+1)^((n+1)/dr(n+1)))`
-/

namespace A201088.P18377105756604259108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ))).toNat

end

end A201088.P18377105756604259108

/-! ## A201088.P8169782341440485439

`A202664(∑[A287377(n)])`
-/

namespace A201088.P8169782341440485439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202664 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201088.P8169782341440485439

/-! ## A201088.P8897758817322196517

`A202124(A032555(n+1))`
-/

namespace A201088.P8897758817322196517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202124 (A032555 (n + 1)).toNat

end

end A201088.P8897758817322196517

/-!
# A201089: Number of -n..n arrays of 4 elements with first and second differences also in -n..n.

The programs for A201089, there is no canonical definition to state claims against.
-/

/-! ## A201089.P5487721084615515933

`A201088(A055999(n)+10)`
-/

namespace A201089.P5487721084615515933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A055999 n + 10).toNat

end

end A201089.P5487721084615515933

/-! ## A201089.P16712570919142642088

`A201088(A167614(n+2)+1)`
-/

namespace A201089.P16712570919142642088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A167614 (n + 2) + 1).toNat

end

end A201089.P16712570919142642088

/-! ## A201089.P12654639802827604656

`A201088(A000124(n+3)+3)`
-/

namespace A201089.P12654639802827604656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000124 (n + 3) + 3).toNat

end

end A201089.P12654639802827604656

/-! ## A201089.P16864392335738819197

`A201088(A000217(n+3)+4)`
-/

namespace A201089.P16864392335738819197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000217 (n + 3) + 4).toNat

end

end A201089.P16864392335738819197

/-! ## A201089.P13604937743717895770

`A201088(A055998(n+1)+7)`
-/

namespace A201089.P13604937743717895770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A055998 (n + 1) + 7).toNat

end

end A201089.P13604937743717895770

/-! ## A201089.P467911579072529337

`A201088(A046691(n+1)+8)`
-/

namespace A201089.P467911579072529337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A046691 (n + 1) + 8).toNat

end

end A201089.P467911579072529337

/-! ## A201089.P15217151948979292505

`A201088(Δ[A264443(n)-n²])`
-/

namespace A201089.P15217151948979292505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (f1 (n + 1) - f1 n).toNat

end

end A201089.P15217151948979292505

/-! ## A201089.P10179368294469527914

`A201088(Δ[A023545(n+1)-n²])`
-/

namespace A201089.P10179368294469527914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (f1 (n + 1) - f1 n).toNat

end

end A201089.P10179368294469527914

/-!
# A201090: Number of -n..n arrays of 5 elements with first and second differences also in -n..n.

The programs for A201090, there is no canonical definition to state claims against.
-/

/-! ## A201090.P1492623670022117495

`A201088(A167499(n+3))`
-/

namespace A201090.P1492623670022117495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A167499 (n + 3)).toNat

end

end A201090.P1492623670022117495

/-! ## A201090.P9435471413826670290

`A201088(A056000(n)+15)`
-/

namespace A201090.P9435471413826670290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A056000 n + 15).toNat

end

end A201090.P9435471413826670290

/-! ## A201090.P547832229723987631

`A201088(A000124(n+4)+4)`
-/

namespace A201090.P547832229723987631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000124 (n + 4) + 4).toNat

end

end A201090.P547832229723987631

/-! ## A201090.P12654430488870485557

`A201088(A000217(n+4)+5)`
-/

namespace A201090.P12654430488870485557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000217 (n + 4) + 5).toNat

end

end A201090.P12654430488870485557

/-! ## A201090.P7159858333157931209

`A201088(A046691(n+2)+9)`
-/

namespace A201090.P7159858333157931209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A046691 (n + 2) + 9).toNat

end

end A201090.P7159858333157931209

/-! ## A201090.P14644041242167754219

`A201088(Δ[A023545(n+1)]-(n-4))`
-/

namespace A201090.P14644041242167754219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (f1 (n + 1) - f1 n - ((n : ℤ) - 4)).toNat

end

end A201090.P14644041242167754219

/-!
# A201091: Number of -n..n arrays of 6 elements with first and second differences also in -n..n.

The programs for A201091, there is no canonical definition to state claims against.
-/

/-! ## A201091.P16323377346335677007

`A201088(Δ[A264443(n)]+10)`
-/

namespace A201091.P16323377346335677007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (f1 (n + 1) - f1 n + 10).toNat

end

end A201091.P16323377346335677007

/-! ## A201091.P5616868963208593605

`A201088(A000124(n+5)+5)`
-/

namespace A201091.P5616868963208593605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000124 (n + 5) + 5).toNat

end

end A201091.P5616868963208593605

/-! ## A201091.P12059312545386340859

`A201088(A000217(n+5)+6)`
-/

namespace A201091.P12059312545386340859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000217 (n + 5) + 6).toNat

end

end A201091.P12059312545386340859

/-! ## A201091.P16162661928328440574

`A201088(A046691(n+3)+10)`
-/

namespace A201091.P16162661928328440574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A046691 (n + 3) + 10).toNat

end

end A201091.P16162661928328440574

/-! ## A201091.P10935474757767313486

`A201088(A002620(n+2)+A002620(n+9))`
-/

namespace A201091.P10935474757767313486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A201091.P10935474757767313486

/-!
# A201092: Number of -n..n arrays of 7 elements with first and second differences also in -n..n.

The programs for A201092, there is no canonical definition to state claims against.
-/

/-! ## A201092.P5171363541098201899

`A201088(A167614(n+5)+4)`
-/

namespace A201092.P5171363541098201899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A167614 (n + 5) + 4).toNat

end

end A201092.P5171363541098201899

/-! ## A201092.P868609166969669973

`A201088(A000217(n+6)+7)`
-/

namespace A201092.P868609166969669973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A000217 (n + 6) + 7).toNat

end

end A201092.P868609166969669973

/-! ## A201092.P8024598940608126194

`A201088(A161680(n+7)+7)`
-/

namespace A201092.P8024598940608126194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A161680 (n + 7) + 7).toNat

end

end A201092.P8024598940608126194

/-! ## A201092.P3479107066439052046

`A201088(A005408(n+8)+A000124(n+4))`
-/

namespace A201092.P3479107066439052046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A201092.P3479107066439052046

/-! ## A201092.P11458695176752191116

`A201088(A046691(n+7)-A016777(n+4))`
-/

namespace A201092.P11458695176752191116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A046691 (n + 7) - A016777 (n + 4)).toNat

end

end A201092.P11458695176752191116

/-! ## A201092.P4348487244179961528

`A201088(A004273(n+9)+A000124(n+4))`
-/

namespace A201092.P4348487244179961528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201088 (A004273 (n + 9) + A000124 (n + 4)).toNat

end

end A201092.P4348487244179961528

/-!
# A201093: Triangle T(n,k), read by rows, given by (0,1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,...) DELTA (1,0,0,0,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

The programs for A201093, there is no canonical definition to state claims against.
-/

/-! ## A201093.P15399430983141871066

`and(A265435(n), A324468(A098555(n+1)))`
-/

namespace A201093.P15399430983141871066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265435 n) (A324468 (A098555 (n + 1)).toNat)

end

end A201093.P15399430983141871066

/-! ## A201093.P17249502886405861126

`A051874(abs(A326327(n)))%5`
-/

namespace A201093.P17249502886405861126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051874 |A326327 n|.toNat) 5

end

end A201093.P17249502886405861126

/-! ## A201093.P3320102885563626409

`abs(A344566(n)%A344570(3*n+2))`
-/

namespace A201093.P3320102885563626409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A344566 n) (A344570 (3 * n + 2))|

end

end A201093.P3320102885563626409

/-! ## A201093.P16790490776394723126

`A198295(n)+A016371(A213275(n))`
-/

namespace A201093.P16790490776394723126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198295 n + A016371 (A213275 n).toNat

end

end A201093.P16790490776394723126

/-! ## A201093.P499826015386838923

`A249856(A257565(n))+A026729(n)`
-/

namespace A201093.P499826015386838923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249856 (A257565 n).toNat + A026729 n

end

end A201093.P499826015386838923

/-!
# A201094: Number of n X n 0..7 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201094, there is no canonical definition to state claims against.
-/

/-! ## A201094.P5133538373085048050

`A201101(∑[4*n]+1)`
-/

namespace A201094.P5133538373085048050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201094.P5133538373085048050

/-! ## A201094.P3486539354025441554

`lcm(2, A201101(A001844(n)))`
-/

namespace A201094.P3486539354025441554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A201101 (A001844 n).toNat)

end

end A201094.P3486539354025441554

/-! ## A201094.P15823295479443922228

`record[A003982(n)*A201101(n+1)]`
-/

namespace A201094.P15823295479443922228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A201101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201094.P15823295479443922228

/-! ## A201094.P15994927505631245579

`record[gcd(A165507(n+1), A201101(n+1))]`
-/

namespace A201094.P15994927505631245579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165507 (n + 1)) (A201101 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201094.P15994927505631245579

/-!
# A201095: Number of nX2 0..7 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201095, there is no canonical definition to state claims against.
-/

/-! ## A201095.P5829442746228589764

`A201101(∑[n+1]+2)`
-/

namespace A201095.P5829442746228589764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201095.P5829442746228589764

/-! ## A201095.P6443101891826179256

`A201101(A133263(n+1))+char[20]`
-/

namespace A201095.P6443101891826179256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201095.P6443101891826179256

/-! ## A201095.P12425648498193929429

`(A000041(n)%2)!*A201101(A133263(n+1))`
-/

namespace A201095.P12425648498193929429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A201101 (A133263 (n + 1)).toNat

end

end A201095.P12425648498193929429

/-! ## A201095.P1949804888641302434

`A201101(A252752(2*(n+2)))%A055608(3*n+4)`
-/

namespace A201095.P1949804888641302434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201101 (A252752 (2 * (n + 2))).toNat) (A055608 (3 * n + 4))

end

end A201095.P1949804888641302434

/-! ## A201095.P14295589705389549994

`A007318(A007318(2*n))*A201101(A133263(n+1))`
-/

namespace A201095.P14295589705389549994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (2 * n)).toNat * A201101 (A133263 (n + 1)).toNat

end

end A201095.P14295589705389549994

/-!
# A201096: Number of nX3 0..7 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201096, there is no canonical definition to state claims against.
-/

/-! ## A201096.P129918592004095395

`A201101(∑[n+2]+4)`
-/

namespace A201096.P129918592004095395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201096.P129918592004095395

/-! ## A201096.P12850655856295833472

`lcm((-1)^n, A201101(A167614(n+1)))`
-/

namespace A201096.P12850655856295833472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A201101 (A167614 (n + 1)).toNat)

end

end A201096.P12850655856295833472

/-! ## A201096.P16347828262765762330

`A201101(A167614(n+1))+A011742(n)`
-/

namespace A201096.P16347828262765762330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A167614 (n + 1)).toNat + A011742 n

end

end A201096.P16347828262765762330

/-! ## A201096.P4071795442571537145

`A201101(A167614(n+1))+A061858(n)`
-/

namespace A201096.P4071795442571537145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A167614 (n + 1)).toNat + A061858 n

end

end A201096.P4071795442571537145

/-! ## A201096.P1636560112703960737

`lcm(A201101(A167614(n+1)), A280193(n))`
-/

namespace A201096.P1636560112703960737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A201101 (A167614 (n + 1)).toNat) (A280193 n)

end

end A201096.P1636560112703960737

/-!
# A201097: Number of nX4 0..7 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201097, there is no canonical definition to state claims against.
-/

/-! ## A201097.P13625942798656916631

`A201101(∑[n+3]+7)`
-/

namespace A201097.P13625942798656916631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201097.P13625942798656916631

/-! ## A201097.P8667492466317023159

`A201101(A374004(n+1))%A205251(n+1)`
-/

namespace A201097.P8667492466317023159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201101 (A374004 (n + 1)).toNat) (A205251 (n + 1))

end

end A201097.P8667492466317023159

/-!
# A201098: Number of nX5 0..7 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201098, there is no canonical definition to state claims against.
-/

/-! ## A201098.P2215304367644719420

`A201101(A167499(n+3))`
-/

namespace A201098.P2215304367644719420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A167499 (n + 3)).toNat

end

end A201098.P2215304367644719420

/-! ## A201098.P1315114222218478172

`A201101(A155212(n)+13)`
-/

namespace A201098.P1315114222218478172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A155212 n + 13).toNat

end

end A201098.P1315114222218478172

/-! ## A201098.P15636302919771381712

`A201101(A056000(n)+15)`
-/

namespace A201098.P15636302919771381712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A056000 n + 15).toNat

end

end A201098.P15636302919771381712

/-! ## A201098.P14758738519434767492

`A201101(eq[7, A066657(n)])`
-/

namespace A201098.P14758738519434767492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201098.P14758738519434767492

/-! ## A201098.P11963150230931328752

`A201101(A167614(n+3)+2)`
-/

namespace A201098.P11963150230931328752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A167614 (n + 3) + 2).toNat

end

end A201098.P11963150230931328752

/-!
# A201099: Number of nX6 0..7 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201099, there is no canonical definition to state claims against.
-/

/-! ## A201099.P4847279923540778638

`A201101(A167499(n+4)+1)`
-/

namespace A201099.P4847279923540778638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A167499 (n + 4) + 1).toNat

end

end A201099.P4847279923540778638

/-! ## A201099.P5951823167784259730

`A201101(A167614(n+4)+3)`
-/

namespace A201099.P5951823167784259730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A167614 (n + 4) + 3).toNat

end

end A201099.P5951823167784259730

/-! ## A201099.P6991513931368692082

`A201101(A246172(n+1)+20)`
-/

namespace A201099.P6991513931368692082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A246172 (n + 1) + 20).toNat

end

end A201099.P6991513931368692082

/-! ## A201099.P93144536217215240

`A201101(eq[6, A130270(n+1)])`
-/

namespace A201099.P93144536217215240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201099.P93144536217215240

/-! ## A201099.P8326192417827754850

`A201101(eq[7, A131818(n+1)])`
-/

namespace A201099.P8326192417827754850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201099.P8326192417827754850

