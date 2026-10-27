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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A057100: Hypotenuses of Pythagorean triangles (ordered by the product of the sides).

The programs for A057100, there is no canonical definition to state claims against.
-/

/-! ## A057100.P14857894562942497021

`sqrt(A057098(n+1)²+A057099(n+1)²)`
-/

namespace A057100.P14857894562942497021
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057098 (n + 1) ^ 2 + A057099 (n + 1) ^ 2 : ℝ)

end

end A057100.P14857894562942497021

/-! ## A057100.P1298364807721435179

`A057096(n+1)/(A057098(n+1)*A057099(n+1))`
-/

namespace A057100.P1298364807721435179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057096 (n + 1) : ℚ) / (A057098 (n + 1) * A057099 (n + 1) : ℚ)

end

end A057100.P1298364807721435179

/-! ## A057100.P9465516546668445436

`A057096(n+1)/(2*A057101(n+1))`
-/

namespace A057100.P9465516546668445436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057096 (n + 1) : ℚ) / (2 * A057101 (n + 1) : ℚ)

end

end A057100.P9465516546668445436

/-! ## A057100.P6420112469359521849

`A081779(n+1)/A057101(n+1)`
-/

namespace A057100.P6420112469359521849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081779 (n + 1) : ℚ) / (A057101 (n + 1) : ℚ)

end

end A057100.P6420112469359521849

/-! ## A057100.P17199839655992964213

`A001281(A057096(n+1)/A057101(n+1))`
-/

namespace A057100.P17199839655992964213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.roundAway ((A057096 (n + 1) : ℚ) / (A057101 (n + 1) : ℚ))).toNat

end

end A057100.P17199839655992964213

/-! ## A057100.P2029747936627335969

`A004525(A057096(n+1)/A057101(n+1))`
-/

namespace A057100.P2029747936627335969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A057096 (n + 1) : ℚ) / (A057101 (n + 1) : ℚ))).toNat

end

end A057100.P2029747936627335969

/-! ## A057100.P11422158573114800982

`A004526(A057096(n+1)/A057101(n+1))`
-/

namespace A057100.P11422158573114800982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A057096 (n + 1) : ℚ) / (A057101 (n + 1) : ℚ))).toNat

end

end A057100.P11422158573114800982

/-! ## A057100.P1344995439005395789

`A026741(A057096(n+1)/A057101(n+1))`
-/

namespace A057100.P1344995439005395789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A057096 (n + 1) : ℚ) / (A057101 (n + 1) : ℚ))).toNat

end

end A057100.P1344995439005395789

/-! ## A057100.P13904380418242546127

`A029578(A057096(n+1)/A057101(n+1))`
-/

namespace A057100.P13904380418242546127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (SequenceMachineLib.roundAway ((A057096 (n + 1) : ℚ) / (A057101 (n + 1) : ℚ))).toNat

end

end A057100.P13904380418242546127

/-! ## A057100.P6129175729161666604

`A032742(A057096(n+1)/A057101(n+1))`
-/

namespace A057100.P6129175729161666604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A057096 (n + 1) : ℚ) / (A057101 (n + 1) : ℚ))).toNat

end

end A057100.P6129175729161666604

/-!
# A057101: Area of a Pythagorean triangle (ordered by the product of the sides).

The programs for A057101, there is no canonical definition to state claims against.
-/

/-! ## A057101.P9396128649973084727

`A057096(n+1)/(2*A057100(n+1))`
-/

namespace A057101.P9396128649973084727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057096 (n + 1) : ℚ) / (2 * A057100 (n + 1) : ℚ)

end

end A057101.P9396128649973084727

/-! ## A057101.P2167710307103616898

`A057098(n+1)*A057099(n+1)/2`
-/

namespace A057101.P2167710307103616898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057098 (n + 1) * A057099 (n + 1) : ℚ) / 2

end

end A057101.P2167710307103616898

/-! ## A057101.P1549700994749646343

`30*A057097(n+1)/A057100(n+1)`
-/

namespace A057101.P1549700994749646343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  30 * ((A057097 (n + 1) : ℚ) / (A057100 (n + 1) : ℚ))

end

end A057101.P1549700994749646343

/-! ## A057101.P6046994005203609987

`A081779(n+1)/A057100(n+1)`
-/

namespace A057101.P6046994005203609987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081779 (n + 1) : ℚ) / (A057100 (n + 1) : ℚ)

end

end A057101.P6046994005203609987

/-! ## A057101.P6182939182026614477

`A014682(A057098(n+1)*A057099(n+1))`
-/

namespace A057101.P6182939182026614477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A057098 (n + 1) * A057099 (n + 1)).toNat

end

end A057101.P6182939182026614477

/-! ## A057101.P2676914793509618643

`A014682(A057096(n+1)/A057100(n+1))`
-/

namespace A057101.P2676914793509618643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A057096 (n + 1) : ℚ) / (A057100 (n + 1) : ℚ))).toNat

end

end A057101.P2676914793509618643

/-! ## A057101.P10544370057244967861

`A001281(A057098(n+1)*A057099(n+1))`
-/

namespace A057101.P10544370057244967861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A057098 (n + 1) * A057099 (n + 1)).toNat

end

end A057101.P10544370057244967861

/-! ## A057101.P11145744574597032200

`A004525(A057098(n+1)*A057099(n+1))`
-/

namespace A057101.P11145744574597032200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A057098 (n + 1) * A057099 (n + 1)).toNat

end

end A057101.P11145744574597032200

/-! ## A057101.P9211514236680951952

`A001281(A057096(n+1)/A057100(n+1))`
-/

namespace A057101.P9211514236680951952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.roundAway ((A057096 (n + 1) : ℚ) / (A057100 (n + 1) : ℚ))).toNat

end

end A057101.P9211514236680951952

/-! ## A057101.P3259621019648988670

`A004525(A057096(n+1)/A057100(n+1))`
-/

namespace A057101.P3259621019648988670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A057096 (n + 1) : ℚ) / (A057100 (n + 1) : ℚ))).toNat

end

end A057101.P3259621019648988670

/-!
# A057102: a(n) = 4 * A073120(n).

The programs for A057102, there is no canonical definition to state claims against.
-/

/-! ## A057102.P13489881074943259997

`4*A073120(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057102.P13489881074943259997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A073120 (n + 1)

end

end A057102.P13489881074943259997

/-! ## A057102.P9298280519402538194

`A008606(A073120(1+n)/6)`
-/

namespace A057102.P9298280519402538194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (SequenceMachineLib.roundAway ((A073120 (1 + n) : ℚ) / 6)).toNat

end

end A057102.P9298280519402538194

/-! ## A057102.P792845982754805624

`A008594(A073120(n+1)/3)`
-/

namespace A057102.P792845982754805624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (SequenceMachineLib.roundAway ((A073120 (n + 1) : ℚ) / 3)).toNat

end

end A057102.P792845982754805624

/-! ## A057102.P1649644632448784636

`A317324(A073120(n+1)/3)`
-/

namespace A057102.P1649644632448784636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317324 (SequenceMachineLib.roundAway ((A073120 (n + 1) : ℚ) / 3)).toNat

end

end A057102.P1649644632448784636

/-! ## A057102.P11920994673209264576

`A008590(A073120(n+1)/2)`
-/

namespace A057102.P11920994673209264576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (SequenceMachineLib.roundAway ((A073120 (n + 1) : ℚ) / 2)).toNat

end

end A057102.P11920994673209264576

/-! ## A057102.P18346676262729192594

`A022144(A073120(n+1)/2)`
-/

namespace A057102.P18346676262729192594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (SequenceMachineLib.roundAway ((A073120 (n + 1) : ℚ) / 2)).toNat

end

end A057102.P18346676262729192594

/-! ## A057102.P1061680472654100481

`A008574(A073120(n+1))`
-/

namespace A057102.P1061680472654100481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A073120 (n + 1)).toNat

end

end A057102.P1061680472654100481

/-! ## A057102.P4116100744392137181

`A008586(lcm(2, A073120(n+1)))`
-/

namespace A057102.P4116100744392137181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (Int.lcm 2 (A073120 (n + 1)))

end

end A057102.P4116100744392137181

/-! ## A057102.P8242591047816130174

`A047479(A073120(n+1)+A073120(n+1)+1)`
-/

namespace A057102.P8242591047816130174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047479 (A073120 (n + 1) + (A073120 (n + 1) + 1)).toNat

end

end A057102.P8242591047816130174

/-! ## A057102.P15096690968657179194

`A047485(A073120(n+1)+A073120(n+1)+1)`
-/

namespace A057102.P15096690968657179194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047485 (A073120 (n + 1) + (A073120 (n + 1) + 1)).toNat

end

end A057102.P15096690968657179194

/-!
# A057103: Triangle of congrua: T(n,k) = 4*n*k(n^2-k^2) with n>k>0 and starting at T(2,1) = 24. A055096(n)^2 + a(n) is a square, as is A055096(n)^2 - a(n).

The programs for A057103, the canonical program `A057103.P18299417979130677149` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057103 has offset 2).

The definition of A057103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057103.P18299417979130677149

`A001283(n+2)*A098352(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057103

/-- `A001283(n+2)*A098352(n+1)` -/
def P18299417979130677149.Spec : Prop :=
  ∀ n, P18299417979130677149.a n = A057103 (n + 2)

theorem P18299417979130677149.correct : P18299417979130677149.Spec := by
  intro n
  simp only [A057103, Nat.add_sub_cancel]

end A057103

/-! ## A057103.P15720730115958655416

`4*A063929(n+1)*A063930(n+1)`
-/

namespace A057103.P15720730115958655416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A063929 (n + 1) * A063930 (n + 1))

end

end A057103.P15720730115958655416

namespace A057103

/-- `4*A063929(n+1)*A063930(n+1)` -/
def P15720730115958655416.Spec : Prop :=
  ∀ n, P15720730115958655416.a n = A057103 (n + 2)

end A057103

/-! ## A057103.P13289647752183991007

`4*A003991(n+1)*A001283(n+2)`
-/

namespace A057103.P13289647752183991007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003991 (n + 1) * A001283 (n + 2)

end

end A057103.P13289647752183991007

namespace A057103

/-- `4*A003991(n+1)*A001283(n+2)` -/
def P13289647752183991007.Spec : Prop :=
  ∀ n, P13289647752183991007.a n = A057103 (n + 2)

theorem P13289647752183991007.correct : P13289647752183991007.Spec := by
  intro n
  simp only [A057103, Nat.add_sub_cancel, A057103.P13289647752183991007.a, A057103.P18299417979130677149.a, A001283, A001283.P9612674106324682864.a, A003991, A003991.P6365127437582401781.a, A098352, A098352.P3707437164941693741.a, A003057, A003057.P16308936517940939054.a, A108872, A108872.P7491610889121363756.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P9170571874073898642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A057103

/-! ## A057103.P1514044520002445433

`A056203(n+1)²-A055096(n+2)²`
-/

namespace A057103.P1514044520002445433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056203 (n + 1) ^ 2 - A055096 (n + 2) ^ 2

end

end A057103.P1514044520002445433

namespace A057103

/-- `A056203(n+1)²-A055096(n+2)²` -/
def P1514044520002445433.Spec : Prop :=
  ∀ n, P1514044520002445433.a n = A057103 (n + 2)

end A057103

/-! ## A057103.P12282361031493334611

`(A055096(n+2)+A003991(n+1))*A098352(n+1)`
-/

namespace A057103.P12282361031493334611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055096 (n + 2) + A003991 (n + 1)) * A098352 (n + 1)

end

end A057103.P12282361031493334611

namespace A057103

/-- `(A055096(n+2)+A003991(n+1))*A098352(n+1)` -/
def P12282361031493334611.Spec : Prop :=
  ∀ n, P12282361031493334611.a n = A057103 (n + 2)

end A057103

/-! ## A057103.P13173012900604877163

`(A056203(n+1)-A003991(n+1))*A098352(n+1)`
-/

namespace A057103.P13173012900604877163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056203 (n + 1) - A003991 (n + 1)) * A098352 (n + 1)

end

end A057103.P13173012900604877163

namespace A057103

/-- `(A056203(n+1)-A003991(n+1))*A098352(n+1)` -/
def P13173012900604877163.Spec : Prop :=
  ∀ n, P13173012900604877163.a n = A057103 (n + 2)

end A057103

/-! ## A057103.P17946022262564804303

`A003991(n+1)*A008574(A001283(n+2))`
-/

namespace A057103.P17946022262564804303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A008574 (A001283 (n + 2)).toNat

end

end A057103.P17946022262564804303

namespace A057103

/-- `A003991(n+1)*A008574(A001283(n+2))` -/
def P17946022262564804303.Spec : Prop :=
  ∀ n, P17946022262564804303.a n = A057103 (n + 2)

end A057103

/-! ## A057103.P5973384226738285929

`A008606(A354968(n+2))`
-/

namespace A057103.P5973384226738285929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (A354968 (n + 2)).toNat

end

end A057103.P5973384226738285929

namespace A057103

/-- `A008606(A354968(n+2))` -/
def P5973384226738285929.Spec : Prop :=
  ∀ n, P5973384226738285929.a n = A057103 (n + 2)

end A057103

/-! ## A057103.P12872106891005162288

`A124351(A001283(n+2)*A003991(n+1))`
-/

namespace A057103.P12872106891005162288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124351 (A001283 (n + 2) * A003991 (n + 1)).toNat

end

end A057103.P12872106891005162288

namespace A057103

/-- `A124351(A001283(n+2)*A003991(n+1))` -/
def P12872106891005162288.Spec : Prop :=
  ∀ n, P12872106891005162288.a n = A057103 (n + 2)

end A057103

/-!
# A057104: The non-octal numbers: numbers containing an 8 or 9 (they cannot be mistaken for octal numbers).

The programs for A057104, the canonical program `A057104.P15360914800133724793` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057104 has offset 1).

The definition of A057104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057104.P15360914800133724793

`comp[A007094(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057104

/-- `comp[A007094(n)]` -/
def P15360914800133724793.Spec : Prop :=
  ∀ n, (P15360914800133724793.a n : ℤ) = A057104 (n + 1)

theorem P15360914800133724793.correct : P15360914800133724793.Spec := by
  intro n
  simp only [A057104, Nat.add_sub_cancel]

end A057104

/-! ## A057104.P7313123727410021742

`∪[A011538(n+1), A011539(n+1)]`
-/

namespace A057104.P7313123727410021742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057104.P7313123727410021742

namespace A057104

/-- `∪[A011538(n+1), A011539(n+1)]` -/
def P7313123727410021742.Spec : Prop :=
  ∀ n, (P7313123727410021742.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P10733356550379287102

`∪[A011539(n+1), A283611(n+1)]`
-/

namespace A057104.P10733356550379287102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057104.P10733356550379287102

namespace A057104

/-- `∪[A011539(n+1), A283611(n+1)]` -/
def P10733356550379287102.Spec : Prop :=
  ∀ n, (P10733356550379287102.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P5616384924571862133

`lt[7, A054055(n)]`
-/

namespace A057104.P5616384924571862133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057104.P5616384924571862133

namespace A057104

/-- `lt[7, A054055(n)]` -/
def P5616384924571862133.Spec : Prop :=
  ∀ n, (P5616384924571862133.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P12956245067316004355

`lt[10, log(A061602(n))]`
-/

namespace A057104.P12956245067316004355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A061602 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A057104.P12956245067316004355

namespace A057104

/-- `lt[10, log(A061602(n))]` -/
def P12956245067316004355.Spec : Prop :=
  ∀ n, (P12956245067316004355.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P3679092073842365720

`eq[4, val(A069877(n), 4)]`
-/

namespace A057104.P3679092073842365720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A069877 n).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057104.P3679092073842365720

namespace A057104

/-- `eq[4, val(A069877(n), 4)]` -/
def P3679092073842365720.Spec : Prop :=
  ∀ n, (P3679092073842365720.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P11515750627668963530

`lt[7, A047842(n)%10]`
-/

namespace A057104.P11515750627668963530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057104.P11515750627668963530

namespace A057104

/-- `lt[7, A047842(n)%10]` -/
def P11515750627668963530.Spec : Prop :=
  ∀ n, (P11515750627668963530.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P4283974765294948397

`lt[0, n*A102681(n)]`
-/

namespace A057104.P4283974765294948397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057104.P4283974765294948397

namespace A057104

/-- `lt[0, n*A102681(n)]` -/
def P4283974765294948397.Spec : Prop :=
  ∀ n, (P4283974765294948397.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P7998892647805742433

`lt[7, floor(log2(A086066(n)))]`
-/

namespace A057104.P7998892647805742433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057104.P7998892647805742433

namespace A057104

/-- `lt[7, floor(log2(A086066(n)))]` -/
def P7998892647805742433.Spec : Prop :=
  ∀ n, (P7998892647805742433.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P16722184119311714127

`eq[4, A054055(A106747(n))]`
-/

namespace A057104.P16722184119311714127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A106747 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057104.P16722184119311714127

namespace A057104

/-- `eq[4, A054055(A106747(n))]` -/
def P16722184119311714127.Spec : Prop :=
  ∀ n, (P16722184119311714127.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P11458912237091962456

`eq[9, A054055(A106746(n))]`
-/

namespace A057104.P11458912237091962456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A106746 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057104.P11458912237091962456

namespace A057104

/-- `eq[9, A054055(A106746(n))]` -/
def P11458912237091962456.Spec : Prop :=
  ∀ n, (P11458912237091962456.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P4833027606195357260

`lt[A004184(A004183(n)), n]`
-/

namespace A057104.P4833027606195357260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A004183 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057104.P4833027606195357260

namespace A057104

/-- `lt[A004184(A004183(n)), n]` -/
def P4833027606195357260.Spec : Prop :=
  ∀ n, (P4833027606195357260.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P6127256540068212693

`lt[A004184(n), A222254(n)]`
-/

namespace A057104.P6127256540068212693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057104.P6127256540068212693

namespace A057104

/-- `lt[A004184(n), A222254(n)]` -/
def P6127256540068212693.Spec : Prop :=
  ∀ n, (P6127256540068212693.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P12406436723068603811

`lt[A004183(n), A102681(n)+n]`
-/

namespace A057104.P12406436723068603811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057104.P12406436723068603811

namespace A057104

/-- `lt[A004183(n), A102681(n)+n]` -/
def P12406436723068603811.Spec : Prop :=
  ∀ n, (P12406436723068603811.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P6498678082515087958

`lt[A004183(n-A102681(n)), n]`
-/

namespace A057104.P6498678082515087958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 ((n : ℤ) - A102681 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057104.P6498678082515087958

namespace A057104

/-- `lt[A004183(n-A102681(n)), n]` -/
def P6498678082515087958.Spec : Prop :=
  ∀ n, (P6498678082515087958.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P17492926033417689834

`lt[A004183(n)*A222254(n), n²]`
-/

namespace A057104.P17492926033417689834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n * A222254 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057104.P17492926033417689834

namespace A057104

/-- `lt[A004183(n)*A222254(n), n²]` -/
def P17492926033417689834.Spec : Prop :=
  ∀ n, (P17492926033417689834.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P15528017171727747835

`lt[n/A039331(n+1), A102681(n)]`
-/

namespace A057104.P15528017171727747835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A039331 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A057104.P15528017171727747835

namespace A057104

/-- `lt[n/A039331(n+1), A102681(n)]` -/
def P15528017171727747835.Spec : Prop :=
  ∀ n, (P15528017171727747835.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P14655562277952017703

`lt[A061486(A004185(n)+2), A061486(n)]`
-/

namespace A057104.P14655562277952017703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 (A004185 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057104.P14655562277952017703

namespace A057104

/-- `lt[A061486(A004185(n)+2), A061486(n)]` -/
def P14655562277952017703.Spec : Prop :=
  ∀ n, (P14655562277952017703.a n : ℤ) = A057104 (n + 1)

end A057104

/-! ## A057104.P9296574840957708776

`eq[A054055(A017365(n)), A054055(n)]`
-/

namespace A057104.P9296574840957708776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A017365 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057104.P9296574840957708776

namespace A057104

/-- `eq[A054055(A017365(n)), A054055(n)]` -/
def P9296574840957708776.Spec : Prop :=
  ∀ n, (P9296574840957708776.a n : ℤ) = A057104 (n + 1)

end A057104

/-!
# A057105: Triangle of numbers (when unsigned) related to congruum problem: T(n,k)=k^2+2nk-n^2 with n>k>0 and starting at T(2,1)=1.

The programs for A057105, the canonical program `A057105.P18280102893373418042` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057105 has offset 1).

The definition of A057105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057105.P11936322547608483257

`A063930(n+1)-A063929(n+1)`
-/

namespace A057105.P11936322547608483257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063930 (n + 1) - A063929 (n + 1)

end

end A057105.P11936322547608483257

namespace A057105

/-- `A063930(n+1)-A063929(n+1)` -/
def P11936322547608483257.Spec : Prop :=
  ∀ n, P11936322547608483257.a n = A057105 (n + 1)

theorem P11936322547608483257.correct : P11936322547608483257.Spec := by
  intro n
  simp only [A057105, Nat.add_sub_cancel, A057105.P11936322547608483257.a, A057105.P18280102893373418042.a, A002260, A002260.P9170571874073898642.a, A055461, A055461.P13333228572909301680.a, A063929, A063929.P16215468638992499542.a, A063930, A063930.P17082922277373076399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057105

/-! ## A057105.P18347501837233313720

`A144650(n+1)-A205016(n+1)`
-/

namespace A057105.P18347501837233313720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - A205016 (n + 1)

end

end A057105.P18347501837233313720

namespace A057105

/-- `A144650(n+1)-A205016(n+1)` -/
def P18347501837233313720.Spec : Prop :=
  ∀ n, P18347501837233313720.a n = A057105 (n + 1)

theorem P18347501837233313720.correct : P18347501837233313720.Spec := by
  intro n
  simp only [A057105, Nat.add_sub_cancel, A057105.P18347501837233313720.a, A057105.P18280102893373418042.a, A002260, A002260.P9170571874073898642.a, A055461, A055461.P13333228572909301680.a, A144650, A144650.P1368958266719371934.a, A205016, A205016.P2286842531164054448.a, A193974, A193974.P14269232743332111222.a, A131783, A131783.P16711198060458241591.a, A025581, A025581.P16112744757063613497.a, A049777, A049777.P8069278756495172327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057105

/-! ## A057105.P17976649067479906799

`2*A133819(n+1)-A055461(n+1)`
-/

namespace A057105.P17976649067479906799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133819 (n + 1) - A055461 (n + 1)

end

end A057105.P17976649067479906799

namespace A057105

/-- `2*A133819(n+1)-A055461(n+1)` -/
def P17976649067479906799.Spec : Prop :=
  ∀ n, P17976649067479906799.a n = A057105 (n + 1)

theorem P17976649067479906799.correct : P17976649067479906799.Spec := by
  intro n
  simp only [A057105, Nat.add_sub_cancel, A057105.P17976649067479906799.a, A057105.P18280102893373418042.a, A002260, A002260.P9170571874073898642.a, A055461, A055461.P13333228572909301680.a, A133819, A133819.P4652954550055324138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057105

/-! ## A057105.P1891388054440104307

`2*A063930(n+1)-A055096(n+2)`
-/

namespace A057105.P1891388054440104307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063930 (n + 1) - A055096 (n + 2)

end

end A057105.P1891388054440104307

namespace A057105

/-- `2*A063930(n+1)-A055096(n+2)` -/
def P1891388054440104307.Spec : Prop :=
  ∀ n, P1891388054440104307.a n = A057105 (n + 1)

theorem P1891388054440104307.correct : P1891388054440104307.Spec := by
  intro n
  simp only [A057105, Nat.add_sub_cancel, A057105.P1891388054440104307.a, A057105.P18280102893373418042.a, A002260, A002260.P9170571874073898642.a, A055096, A055096.P17819275564351292767.a, A055461, A055461.P13333228572909301680.a, A063930, A063930.P17082922277373076399.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057105

/-! ## A057105.P9560511966431864273

`A055096(n+2)-2*A063929(n+1)`
-/

namespace A057105.P9560511966431864273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) - 2 * A063929 (n + 1)

end

end A057105.P9560511966431864273

namespace A057105

/-- `A055096(n+2)-2*A063929(n+1)` -/
def P9560511966431864273.Spec : Prop :=
  ∀ n, P9560511966431864273.a n = A057105 (n + 1)

theorem P9560511966431864273.correct : P9560511966431864273.Spec := by
  intro n
  simp only [A057105, Nat.add_sub_cancel, A057105.P9560511966431864273.a, A057105.P18280102893373418042.a, A002260, A002260.P9170571874073898642.a, A055096, A055096.P17819275564351292767.a, A055461, A055461.P13333228572909301680.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057105

/-! ## A057105.P18280102893373418042

`2*A002260(n+1)²-A055461(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057105

/-- `2*A002260(n+1)²-A055461(n+1)` -/
def P18280102893373418042.Spec : Prop :=
  ∀ n, P18280102893373418042.a n = A057105 (n + 1)

theorem P18280102893373418042.correct : P18280102893373418042.Spec := by
  intro n
  simp only [A057105, Nat.add_sub_cancel]

end A057105

/-! ## A057105.P12166430443510917096

`2*A133819(n+1)-A004736(n+1)²`
-/

namespace A057105.P12166430443510917096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133819 (n + 1) - A004736 (n + 1) ^ 2

end

end A057105.P12166430443510917096

namespace A057105

/-- `2*A133819(n+1)-A004736(n+1)²` -/
def P12166430443510917096.Spec : Prop :=
  ∀ n, P12166430443510917096.a n = A057105 (n + 1)

end A057105

/-! ## A057105.P5461737731740703356

`2*A002260(n+1)²-A004736(n+1)²`
-/

namespace A057105.P5461737731740703356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (n + 1) ^ 2 - A004736 (n + 1) ^ 2

end

end A057105.P5461737731740703356

namespace A057105

/-- `2*A002260(n+1)²-A004736(n+1)²` -/
def P5461737731740703356.Spec : Prop :=
  ∀ n, P5461737731740703356.a n = A057105 (n + 1)

end A057105

/-! ## A057105.P9439628756686328093

`A001105(A002260(n+1))-A055461(n+1)`
-/

namespace A057105.P9439628756686328093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A002260 (n + 1)).toNat - A055461 (n + 1)

end

end A057105.P9439628756686328093

namespace A057105

/-- `A001105(A002260(n+1))-A055461(n+1)` -/
def P9439628756686328093.Spec : Prop :=
  ∀ n, P9439628756686328093.a n = A057105 (n + 1)

end A057105

/-! ## A057105.P5877644976445140378

`A001105(A002260(n+1))-A004736(n+1)²`
-/

namespace A057105.P5877644976445140378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A002260 (n + 1)).toNat - A004736 (n + 1) ^ 2

end

end A057105.P5877644976445140378

namespace A057105

/-- `A001105(A002260(n+1))-A004736(n+1)²` -/
def P5877644976445140378.Spec : Prop :=
  ∀ n, P5877644976445140378.a n = A057105 (n + 1)

end A057105

/-! ## A057105.P14601312471512993917

`2*A055461(A038722(n+1))-A055461(n+1)`
-/

namespace A057105.P14601312471512993917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055461 (A038722 (n + 1)).toNat - A055461 (n + 1)

end

end A057105.P14601312471512993917

namespace A057105

/-- `2*A055461(A038722(n+1))-A055461(n+1)` -/
def P14601312471512993917.Spec : Prop :=
  ∀ n, P14601312471512993917.a n = A057105 (n + 1)

end A057105

/-! ## A057105.P402053549981299822

`2*A133819(n+1)-A133819(A038722(n+1))`
-/

namespace A057105.P402053549981299822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133819 (n + 1) - A133819 (A038722 (n + 1)).toNat

end

end A057105.P402053549981299822

namespace A057105

/-- `2*A133819(n+1)-A133819(A038722(n+1))` -/
def P402053549981299822.Spec : Prop :=
  ∀ n, P402053549981299822.a n = A057105 (n + 1)

end A057105

/-! ## A057105.P6864152551985748808

`2*A133819(n+1)-A133819(A278818(n))`
-/

namespace A057105.P6864152551985748808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133819 (n + 1) - A133819 (A278818 n).toNat

end

end A057105.P6864152551985748808

namespace A057105

/-- `2*A133819(n+1)-A133819(A278818(n))` -/
def P6864152551985748808.Spec : Prop :=
  ∀ n, P6864152551985748808.a n = A057105 (n + 1)

end A057105

/-! ## A057105.P2426153755435412124

`A005843(A002260(n+1)²)-A055461(n+1)`
-/

namespace A057105.P2426153755435412124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002260 (n + 1) ^ 2).toNat - A055461 (n + 1)

end

end A057105.P2426153755435412124

namespace A057105

/-- `A005843(A002260(n+1)²)-A055461(n+1)` -/
def P2426153755435412124.Spec : Prop :=
  ∀ n, P2426153755435412124.a n = A057105 (n + 1)

end A057105

/-! ## A057105.P7538499580475455029

`A004277(A002260(n+1)²)-A004736(n+1)²`
-/

namespace A057105.P7538499580475455029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A002260 (n + 1) ^ 2).toNat - A004736 (n + 1) ^ 2

end

end A057105.P7538499580475455029

namespace A057105

/-- `A004277(A002260(n+1)²)-A004736(n+1)²` -/
def P7538499580475455029.Spec : Prop :=
  ∀ n, P7538499580475455029.a n = A057105 (n + 1)

end A057105

/-! ## A057105.P7799011418704499551

`A005843(A002260(n+1)²)-A004736(n+1)²`
-/

namespace A057105.P7799011418704499551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002260 (n + 1) ^ 2).toNat - A004736 (n + 1) ^ 2

end

end A057105.P7799011418704499551

namespace A057105

/-- `A005843(A002260(n+1)²)-A004736(n+1)²` -/
def P7799011418704499551.Spec : Prop :=
  ∀ n, P7799011418704499551.a n = A057105 (n + 1)

end A057105

/-! ## A057105.P17269069685637369320

`A073675(A002260(n+1)²)-A004736(n+1)²`
-/

namespace A057105.P17269069685637369320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (A002260 (n + 1) ^ 2).toNat - A004736 (n + 1) ^ 2

end

end A057105.P17269069685637369320

namespace A057105

/-- `A073675(A002260(n+1)²)-A004736(n+1)²` -/
def P17269069685637369320.Spec : Prop :=
  ∀ n, P17269069685637369320.a n = A057105 (n + 1)

end A057105

/-! ## A057105.P15009353559280724896

`2*A002260(n+1)²-A000005(A130321(n))²`
-/

namespace A057105.P15009353559280724896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (n + 1) ^ 2 - A000005 (A130321 n).toNat ^ 2

end

end A057105.P15009353559280724896

namespace A057105

/-- `2*A002260(n+1)²-A000005(A130321(n))²` -/
def P15009353559280724896.Spec : Prop :=
  ∀ n, P15009353559280724896.a n = A057105 (n + 1)

end A057105

/-!
# A057106: Numbers k such that k(3k-2) is an octagonal palindrome.

The programs for A057106, there is no canonical definition to state claims against.
-/

/-! ## A057106.P14326036246945025850

`ceil(sqrt(A057107(n+1)/3))`
-/

namespace A057106.P14326036246945025850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A057107 (n + 1) : ℚ) / 3 : ℝ)⌉

end

end A057106.P14326036246945025850

/-!
# A057107: Octagonal palindromes.

The programs for A057107, there is no canonical definition to state claims against.
-/

/-! ## A057107.P16961416878169931360

`A000567(A057106(n+1))`
-/

namespace A057107.P16961416878169931360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A057106 (n + 1)).toNat

end

end A057107.P16961416878169931360

/-! ## A057107.P11903601377947848930

`A056105(A057106(n+1))-A322800(n)`
-/

namespace A057107.P11903601377947848930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 (A057106 (n + 1)).toNat - A322800 n

end

end A057107.P11903601377947848930

/-! ## A057107.P7013182209974444570

`A056105(A057106(n+1))-A322803(n)`
-/

namespace A057107.P7013182209974444570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 (A057106 (n + 1)).toNat - A322803 n

end

end A057107.P7013182209974444570

/-! ## A057107.P4031686673750719828

`A056105(A057106(n+1))-A322855(n)`
-/

namespace A057107.P4031686673750719828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 (A057106 (n + 1)).toNat - A322855 n

end

end A057107.P4031686673750719828

/-!
# A057108: Difference between the smallest number S(n) with S(n)! a multiple of n and the largest prime factor of n [taking a(1)=0].

The programs for A057108, there is no canonical definition to state claims against.
-/

/-! ## A057108.P7175194023183030815

`A002034(n+1)-A006530(n+1)`
-/

namespace A057108.P7175194023183030815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) - A006530 (n + 1)

end

end A057108.P7175194023183030815

/-! ## A057108.P7591860929862603373

`A061243(n+1)-A070229(n+1)`
-/

namespace A057108.P7591860929862603373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 1) - A070229 (n + 1)

end

end A057108.P7591860929862603373

/-! ## A057108.P11622569314569617777

`A002034(n+1)-(A070229(n+1)-(n+1))`
-/

namespace A057108.P11622569314569617777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) - (A070229 (n + 1) - (n + 1 : ℤ))

end

end A057108.P11622569314569617777

/-! ## A057108.P10238439401143260390

`A002034(n+1)-(n+1)/A052126(n+1)`
-/

namespace A057108.P10238439401143260390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (n + 1) : ℚ) - (n + 1 : ℚ) / (A052126 (n + 1) : ℚ)

end

end A057108.P10238439401143260390

/-! ## A057108.P14582864317653236894

`A002034(n+1)-A253560(n+1)/(n+1)`
-/

namespace A057108.P14582864317653236894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (n + 1) : ℚ) - (A253560 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A057108.P14582864317653236894

/-! ## A057108.P4349587280779901748

`A002034(n+1)-(n+1)/(n+1-A171462(n+1))`
-/

namespace A057108.P4349587280779901748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (n + 1) : ℚ) - (n + 1 : ℚ) / ((n + 1 : ℤ) - A171462 (n + 1) : ℚ)

end

end A057108.P4349587280779901748

/-! ## A057108.P2942641925761859664

`A002034(n+1)-(n+1)/(A335876(n+1)-(n+1))`
-/

namespace A057108.P2942641925761859664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (n + 1) : ℚ) - (n + 1 : ℚ) / (A335876 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A057108.P2942641925761859664

/-! ## A057108.P5511423988594357787

`A002034(n+1)-A002034(A007947(n+1))`
-/

namespace A057108.P5511423988594357787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) - A002034 (A007947 (n + 1)).toNat

end

end A057108.P5511423988594357787

/-! ## A057108.P15284986503890402533

`A002034(n+1)-A002034(A088835(n+1))`
-/

namespace A057108.P15284986503890402533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) - A002034 (A088835 (n + 1)).toNat

end

end A057108.P15284986503890402533

/-! ## A057108.P16953361213775289192

`A002034(n+1)-A002034(A109395(n+1))`
-/

namespace A057108.P16953361213775289192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) - A002034 (A109395 (n + 1)).toNat

end

end A057108.P16953361213775289192

/-! ## A057108.P4452596324864212364

`A122416(n+1)-A122416(A007947(n+1))`
-/

namespace A057108.P4452596324864212364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1) - A122416 (A007947 (n + 1)).toNat

end

end A057108.P4452596324864212364

/-! ## A057108.P16228560928876265167

`A002034(n+1)-A002034(sqrt(A078615(n+1)))`
-/

namespace A057108.P16228560928876265167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) - A002034 (SequenceMachineLib.roundAway (Real.sqrt (A078615 (n + 1) : ℝ))).toNat

end

end A057108.P16228560928876265167

/-! ## A057108.P16606090745289849376

`A034699(n+1)-(A057110(n+1)+A006530(n+1))`
-/

namespace A057108.P16606090745289849376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - (A057110 (n + 1) + A006530 (n + 1))

end

end A057108.P16606090745289849376

/-! ## A057108.P7957691304224446455

`A345931(n+1)*A345932(n+1)-A006530(n+1)`
-/

namespace A057108.P7957691304224446455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (n + 1) * A345932 (n + 1) - A006530 (n + 1)

end

end A057108.P7957691304224446455

/-! ## A057108.P1978773899960409357

`A122416(n+1)-A122416((n+1)/A052126(n+1))`
-/

namespace A057108.P1978773899960409357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1) - A122416 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A057108.P1978773899960409357

/-! ## A057108.P14525024362321227041

`A122416(n+1)-A122416(A253560(n+1)/(n+1))`
-/

namespace A057108.P14525024362321227041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1) - A122416 (SequenceMachineLib.roundAway ((A253560 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A057108.P14525024362321227041

/-! ## A057108.P8802896575476794096

`A122416(n+1)-(A122416(A020639(n+1))+A046665(n+1))`
-/

namespace A057108.P8802896575476794096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1) - (A122416 (A020639 (n + 1)).toNat + A046665 (n + 1))

end

end A057108.P8802896575476794096

/-! ## A057108.P4974395502848926492

`A122416(n+1)-A122416(A051664(n+1)-A070536(n+1))`
-/

namespace A057108.P4974395502848926492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1) - A122416 (A051664 (n + 1) - A070536 (n + 1)).toNat

end

end A057108.P4974395502848926492

/-! ## A057108.P17055446057531332481

`A122416(n+1)-A122416(∏{p}[A068795(n+1), #])`
-/

namespace A057108.P17055446057531332481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1) - A122416 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A057108.P17055446057531332481

/-!
# A057109: Numbers n that are not factors of P(n)!, where P(n) is the largest prime factor of n.

The programs for A057109, the canonical program `A057109.P660782150527459354` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057109 has offset 1).

The definition of A057109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057109.P660782150527459354

`∪[A070003(n+1), A102067(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A057109

/-- `∪[A070003(n+1), A102067(n+1)]` -/
def P660782150527459354.Spec : Prop :=
  ∀ n, (P660782150527459354.a n : ℤ) = A057109 (n + 1)

theorem P660782150527459354.correct : P660782150527459354.Spec := by
  intro n
  simp only [A057109, Nat.add_sub_cancel]

end A057109

/-! ## A057109.P12891352948263570891

`record[(n+4)*A345951(n+4)]`
-/

namespace A057109.P12891352948263570891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A345951 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057109.P12891352948263570891

namespace A057109

/-- `record[(n+4)*A345951(n+4)]` -/
def P12891352948263570891.Spec : Prop :=
  ∀ n, P12891352948263570891.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P12854028503444932585

`filter[A013929(n+1), A345951(#)]`
-/

namespace A057109.P12854028503444932585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P12854028503444932585

namespace A057109

/-- `filter[A013929(n+1), A345951(#)]` -/
def P12854028503444932585.Spec : Prop :=
  ∀ n, P12854028503444932585.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P16403025894104952626

`filter[A122145(n+1), A345951(#)]`
-/

namespace A057109.P16403025894104952626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P16403025894104952626

namespace A057109

/-- `filter[A122145(n+1), A345951(#)]` -/
def P16403025894104952626.Spec : Prop :=
  ∀ n, P16403025894104952626.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P11005504577844275854

`lt[0, A057108(n+1)]+1`
-/

namespace A057109.P11005504577844275854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A057109.P11005504577844275854

namespace A057109

/-- `lt[0, A057108(n+1)]+1` -/
def P11005504577844275854.Spec : Prop :=
  ∀ n, (P11005504577844275854.a n : ℤ) = A057109 (n + 1)

end A057109

/-! ## A057109.P9367170690413783738

`lt[0, A345940(n+1)]+1`
-/

namespace A057109.P9367170690413783738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A057109.P9367170690413783738

namespace A057109

/-- `lt[0, A345940(n+1)]+1` -/
def P9367170690413783738.Spec : Prop :=
  ∀ n, (P9367170690413783738.a n : ℤ) = A057109 (n + 1)

end A057109

/-! ## A057109.P9634541473909744402

`eq[1, A345951(n+1)]+1`
-/

namespace A057109.P9634541473909744402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057109.P9634541473909744402

namespace A057109

/-- `eq[1, A345951(n+1)]+1` -/
def P9634541473909744402.Spec : Prop :=
  ∀ n, (P9634541473909744402.a n : ℤ) = A057109 (n + 1)

end A057109

/-! ## A057109.P10472720788786855748

`filter[A048098(n+1), A345951(#)]`
-/

namespace A057109.P10472720788786855748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P10472720788786855748

namespace A057109

/-- `filter[A048098(n+1), A345951(#)]` -/
def P10472720788786855748.Spec : Prop :=
  ∀ n, P10472720788786855748.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P18375069847670939034

`filter[A387941(n+1), A345951(#)]`
-/

namespace A057109.P18375069847670939034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P18375069847670939034

namespace A057109

/-- `filter[A387941(n+1), A345951(#)]` -/
def P18375069847670939034.Spec : Prop :=
  ∀ n, P18375069847670939034.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P977148576315193852

`filter[A162966(n+1), A345951(#)]`
-/

namespace A057109.P977148576315193852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P977148576315193852

namespace A057109

/-- `filter[A162966(n+1), A345951(#)]` -/
def P977148576315193852.Spec : Prop :=
  ∀ n, P977148576315193852.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P986608566759900454

`filter[A354360(n+1), A345951(#)]`
-/

namespace A057109.P986608566759900454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P986608566759900454

namespace A057109

/-- `filter[A354360(n+1), A345951(#)]` -/
def P986608566759900454.Spec : Prop :=
  ∀ n, P986608566759900454.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P547001558760350411

`filter[A389462(n+1), A345951(#)]`
-/

namespace A057109.P547001558760350411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P547001558760350411

namespace A057109

/-- `filter[A389462(n+1), A345951(#)]` -/
def P547001558760350411.Spec : Prop :=
  ∀ n, P547001558760350411.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P15028299218362297397

`filter[A363597(n+1), A345951(#)]`
-/

namespace A057109.P15028299218362297397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P15028299218362297397

namespace A057109

/-- `filter[A363597(n+1), A345951(#)]` -/
def P15028299218362297397.Spec : Prop :=
  ∀ n, P15028299218362297397.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P6339229683927620900

`filter[A366288(n+1), A345951(#)]`
-/

namespace A057109.P6339229683927620900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P6339229683927620900

namespace A057109

/-- `filter[A366288(n+1), A345951(#)]` -/
def P6339229683927620900.Spec : Prop :=
  ∀ n, P6339229683927620900.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P8430649936086747239

`filter[A289553(n+1), A345951(#)]`
-/

namespace A057109.P8430649936086747239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P8430649936086747239

namespace A057109

/-- `filter[A289553(n+1), A345951(#)]` -/
def P8430649936086747239.Spec : Prop :=
  ∀ n, P8430649936086747239.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P16926176208586580747

`filter[A088609(n+1), A345951(#)]`
-/

namespace A057109.P16926176208586580747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P16926176208586580747

namespace A057109

/-- `filter[A088609(n+1), A345951(#)]` -/
def P16926176208586580747.Spec : Prop :=
  ∀ n, P16926176208586580747.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P12766481514087417308

`filter[A316350(n+1), A345951(#)]`
-/

namespace A057109.P12766481514087417308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P12766481514087417308

namespace A057109

/-- `filter[A316350(n+1), A345951(#)]` -/
def P12766481514087417308.Spec : Prop :=
  ∀ n, P12766481514087417308.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P5830365815911160429

`filter[A145190(n+1), A345951(#)]`
-/

namespace A057109.P5830365815911160429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P5830365815911160429

namespace A057109

/-- `filter[A145190(n+1), A345951(#)]` -/
def P5830365815911160429.Spec : Prop :=
  ∀ n, P5830365815911160429.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P14751183898412636254

`filter[A060679(n+1), A345951(#)]`
-/

namespace A057109.P14751183898412636254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P14751183898412636254

namespace A057109

/-- `filter[A060679(n+1), A345951(#)]` -/
def P14751183898412636254.Spec : Prop :=
  ∀ n, P14751183898412636254.a n = A057109 (n + 1)

end A057109

/-! ## A057109.P787785006153405420

`filter[A174891(n+1), A345951(#)]`
-/

namespace A057109.P787785006153405420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A057109.P787785006153405420

namespace A057109

/-- `filter[A174891(n+1), A345951(#)]` -/
def P787785006153405420.Spec : Prop :=
  ∀ n, P787785006153405420.a n = A057109 (n + 1)

end A057109

/-!
# A057110: Difference between largest prime power factor of n and the smallest number S(n) with S(n)! a multiple of n [taking a(1)=0].

The programs for A057110, there is no canonical definition to state claims against.
-/

/-! ## A057110.P2985364604203780809

`A034699(n+1)-A002034(n+1)`
-/

namespace A057110.P2985364604203780809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - A002034 (n + 1)

end

end A057110.P2985364604203780809

/-! ## A057110.P2153833042913835715

`A072480(n+1)%A034699(n+1)`
-/

namespace A057110.P2153833042913835715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072480 (n + 1)) (A034699 (n + 1))

end

end A057110.P2153833042913835715

/-! ## A057110.P1954828551477801527

`A034699(n+1)+1-A122416(n+1)`
-/

namespace A057110.P1954828551477801527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) + (1 - A122416 (n + 1))

end

end A057110.P1954828551477801527

/-! ## A057110.P9779830873365840739

`A034699(n+1)+n+1-A061243(n+1)`
-/

namespace A057110.P9779830873365840739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) + ((n + 1 : ℤ) - A061243 (n + 1))

end

end A057110.P9779830873365840739

/-! ## A057110.P4587882483837401332

`(A002034(n+1)*A005408(n))%A034699(n+1)`
-/

namespace A057110.P4587882483837401332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002034 (n + 1) * A005408 n) (A034699 (n + 1))

end

end A057110.P4587882483837401332

/-! ## A057110.P15766779880239990810

`A034699(n+1)-(A057108(n+1)+A006530(n+1))`
-/

namespace A057110.P15766779880239990810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - (A057108 (n + 1) + A006530 (n + 1))

end

end A057110.P15766779880239990810

/-! ## A057110.P9543404092243714181

`A081472(n+1)-A061243(n+1)`
-/

namespace A057110.P9543404092243714181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081472 (n + 1) - A061243 (n + 1)

end

end A057110.P9543404092243714181

/-! ## A057110.P4109263547699170515

`A081472(n+1)-(A002034(n+1)+n+1)`
-/

namespace A057110.P4109263547699170515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081472 (n + 1) - (A002034 (n + 1) + (n + 1 : ℤ))

end

end A057110.P4109263547699170515

/-!
# A057111: Numbers n which are a factor of (LPP(n)-1)!, where LPP(n) is the largest prime power factor of n.

The programs for A057111, there is no canonical definition to state claims against.
-/

/-! ## A057111.P5888398013852900436

`∪[A070003(n+2), A102749(n+2)]`
-/

namespace A057111.P5888398013852900436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057111.P5888398013852900436

/-! ## A057111.P13506618485669062873

`A122145(A184985(n+1)+2)`
-/

namespace A057111.P13506618485669062873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (A184985 (n + 1) + 2).toNat

end

end A057111.P13506618485669062873

/-! ## A057111.P6067033881941290293

`A122145(n+3)-A169585(n)`
-/

namespace A057111.P6067033881941290293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 3) - A169585 n

end

end A057111.P6067033881941290293

/-! ## A057111.P7355162378969164531

`lt[acot(1), A057110(n+1)]+1`
-/

namespace A057111.P7355162378969164531
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057110 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A057111.P7355162378969164531

/-! ## A057111.P16914365861577627567

`lt[1, A072480(A034699(n+1))]+1`
-/

namespace A057111.P16914365861577627567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A034699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A057111.P16914365861577627567

/-! ## A057111.P6613651595654135739

`filter[A046790(n+1), A345952(#)]`
-/

namespace A057111.P6613651595654135739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A057111.P6613651595654135739

/-! ## A057111.P3221731000811494423

`∩[A046790(n+1), A122145(n+1)]`
-/

namespace A057111.P3221731000811494423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057111.P3221731000811494423

/-! ## A057111.P8241245430361486268

`filter[A067197(n+1), A345952(#)]`
-/

namespace A057111.P8241245430361486268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A057111.P8241245430361486268

/-! ## A057111.P1653625773219934284

`∩[A067197(n+1), A122145(n+1)]`
-/

namespace A057111.P1653625773219934284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057111.P1653625773219934284

/-! ## A057111.P10183656763613010887

`lt[0, A057110(A028310(n))]`
-/

namespace A057111.P10183656763613010887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057110 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057111.P10183656763613010887

/-! ## A057111.P13142530710239835708

`A020725(lt[0, A057110(n+1)])`
-/

namespace A057111.P13142530710239835708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A057111.P13142530710239835708

/-! ## A057111.P10655876135637923172

`filter[A122145(n+1), A144101(#)]`
-/

namespace A057111.P10655876135637923172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A057111.P10655876135637923172

/-! ## A057111.P14202255786627667014

`filter[A122145(n+1), A288132(#)]`
-/

namespace A057111.P14202255786627667014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288132 (f1 j).toNat = 1) n)

end

end A057111.P14202255786627667014

/-! ## A057111.P10281453120704580693

`filter[A288134(n+1), A345952(#)]`
-/

namespace A057111.P10281453120704580693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A057111.P10281453120704580693

/-! ## A057111.P2416610069420791427

`∩[A122145(n+1), A288134(n+1)]`
-/

namespace A057111.P2416610069420791427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057111.P2416610069420791427

/-! ## A057111.P3591922944727661290

`lt[A002034(n+1), A034699(n+1)]+1`
-/

namespace A057111.P3591922944727661290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A057111.P3591922944727661290

/-! ## A057111.P102919275483259891

`lt[A025492(n+1), A034699(n+1)]+1`
-/

namespace A057111.P102919275483259891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A057111.P102919275483259891

/-! ## A057111.P10950127115375545276

`A061767(lt[A025492(n+1), A034699(n+1)])`
-/

namespace A057111.P10950127115375545276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A057111.P10950127115375545276

/-! ## A057111.P11515682284684455046

`A181569(lt[A002034(n+1), A034699(n+1)])`
-/

namespace A057111.P11515682284684455046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A057111.P11515682284684455046

/-! ## A057111.P18337424815363923248

`A181569(lt[A025492(n+1), A034699(n+1)])`
-/

namespace A057111.P18337424815363923248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A057111.P18337424815363923248

/-!
# A057112: Sequence of 719 adjacent transpositions (a[n] a[n]+1), which, when starting from the identity permutation and applied successively, produce a Hamiltonian circuit/path through all 720 permutations of S_6, in such a way that S_{n-1} is always traversed before the rest of S_n.

The programs for A057112, there is no canonical definition to state claims against.
-/

/-! ## A057112.P13300373220452251704

`A084558(abs(Δ[A057113(n)]))`
-/

namespace A057112.P13300373220452251704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 |f1 (n + 1) - f1 n|.toNat

end

end A057112.P13300373220452251704

/-!
# A057113: Positions of permutations produced by the transposition sequence A057112 in A055089.

The programs for A057113, there is no canonical definition to state claims against.
-/

/-! ## A057113.P3552198282237973133

`A060134(∪[A004907(n+1), A030299(n+1)])`
-/

namespace A057113.P3552198282237973133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060134 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A057113.P3552198282237973133

/-! ## A057113.P15260574802896718777

`A060134(A004907(n+1))`
-/

namespace A057113.P15260574802896718777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060134 (A004907 (n + 1)).toNat

end

end A057113.P15260574802896718777

/-! ## A057113.P1103313241955411411

`A060134(n*A294775(n))`
-/

namespace A057113.P1103313241955411411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060134 ((n : ℤ) * A294775 n).toNat

end

end A057113.P1103313241955411411

/-! ## A057113.P10626003233347941554

`A060134(n^A294775(n))`
-/

namespace A057113.P10626003233347941554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060134 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A294775 n : ℤ))).toNat

end

end A057113.P10626003233347941554

/-! ## A057113.P14054236940757549406

`A060134(lcm(n, A065941(n)))`
-/

namespace A057113.P14054236940757549406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060134 (Int.lcm (n : ℤ) (A065941 n))

end

end A057113.P14054236940757549406

/-!
# A057114: Permutation of N induced by the order-preserving permutation of the rational numbers (x -> x+1); positions in Stern-Brocot tree.

The programs for A057114, the canonical program `A057114.P12230823795797694149` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057114 has offset 1).

The definition of A057114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057114.P12230823795797694149

`A059893(A065259(A059893(n+1)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A057114

/-- `A059893(A065259(A059893(n+1)))` -/
def P12230823795797694149.Spec : Prop :=
  ∀ n, P12230823795797694149.a n = A057114 (n + 1)

theorem P12230823795797694149.correct : P12230823795797694149.Spec := by
  intro n
  simp only [A057114, Nat.add_sub_cancel]

end A057114

/-! ## A057114.P79790341631892731

`A054429(A057115(A054429(n+1)))`
-/

namespace A057114.P79790341631892731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A057115 (A054429 (n + 1)).toNat).toNat

end

end A057114.P79790341631892731

namespace A057114

/-- `A054429(A057115(A054429(n+1)))` -/
def P79790341631892731.Spec : Prop :=
  ∀ n, P79790341631892731.a n = A057114 (n + 1)

end A057114

/-! ## A057114.P10594173298621876189

`A059894(A065260(A059894(n+1)))`
-/

namespace A057114.P10594173298621876189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A065260 (A059894 (n + 1)).toNat).toNat

end

end A057114.P10594173298621876189

namespace A057114

/-- `A059894(A065260(A059894(n+1)))` -/
def P10594173298621876189.Spec : Prop :=
  ∀ n, P10594173298621876189.a n = A057114 (n + 1)

end A057114

/-! ## A057114.P5937713535453574492

`A065625(∑[n])`
-/

namespace A057114.P5937713535453574492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065625 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057114.P5937713535453574492

namespace A057114

/-- `A065625(∑[n])` -/
def P5937713535453574492.Spec : Prop :=
  ∀ n, P5937713535453574492.a n = A057114 (n + 1)

end A057114

/-! ## A057114.P9562029461519378832

`and(-1, A065625(A000217(n)))`
-/

namespace A057114.P9562029461519378832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A065625 (A000217 n).toNat)

end

end A057114.P9562029461519378832

namespace A057114

/-- `and(-1, A065625(A000217(n)))` -/
def P9562029461519378832.Spec : Prop :=
  ∀ n, P9562029461519378832.a n = A057114 (n + 1)

end A057114

/-! ## A057114.P16482260857278681495

`A065625(n²-C(n, 2))%A153058(n)`
-/

namespace A057114.P16482260857278681495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065625 (n ^ 2 - Nat.choose n 2)) (A153058 n)

end

end A057114.P16482260857278681495

namespace A057114

/-- `A065625(n²-C(n, 2))%A153058(n)` -/
def P16482260857278681495.Spec : Prop :=
  ∀ n, P16482260857278681495.a n = A057114 (n + 1)

end A057114

/-! ## A057114.P15236071970936704188

`A065625((n²+n)/2)+A000035(2*(n+1))`
-/

namespace A057114.P15236071970936704188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065625 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat + A000035 (2 * (n + 1))

end

end A057114.P15236071970936704188

namespace A057114

/-- `A065625((n²+n)/2)+A000035(2*(n+1))` -/
def P15236071970936704188.Spec : Prop :=
  ∀ n, P15236071970936704188.a n = A057114 (n + 1)

end A057114

/-!
# A057115: Order-preserving permutation of the rational numbers (x -> x-1); positions in Stern-Brocot tree.

The programs for A057115, the canonical program `A057115.P14789950930496132244` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057115 has offset 1).

The definition of A057115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057115.P14789950930496132244

`A059893(A065260(A059893(n+1)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A057115

/-- `A059893(A065260(A059893(n+1)))` -/
def P14789950930496132244.Spec : Prop :=
  ∀ n, P14789950930496132244.a n = A057115 (n + 1)

theorem P14789950930496132244.correct : P14789950930496132244.Spec := by
  intro n
  simp only [A057115, Nat.add_sub_cancel]

end A057115

/-! ## A057115.P219754531244810564

`A054429(A057114(A054429(n+1)))`
-/

namespace A057115.P219754531244810564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A057114 (A054429 (n + 1)).toNat).toNat

end

end A057115.P219754531244810564

namespace A057115

/-- `A054429(A057114(A054429(n+1)))` -/
def P219754531244810564.Spec : Prop :=
  ∀ n, P219754531244810564.a n = A057115 (n + 1)

end A057115

/-! ## A057115.P15054360705557514314

`A059894(A065259(A059894(n+1)))`
-/

namespace A057115.P15054360705557514314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A065259 (A059894 (n + 1)).toNat).toNat

end

end A057115.P15054360705557514314

namespace A057115

/-- `A059894(A065259(A059894(n+1)))` -/
def P15054360705557514314.Spec : Prop :=
  ∀ n, P15054360705557514314.a n = A057115 (n + 1)

end A057115

/-! ## A057115.P14618814618043814678

`A065626(∑[n])`
-/

namespace A057115.P14618814618043814678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065626 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057115.P14618814618043814678

namespace A057115

/-- `A065626(∑[n])` -/
def P14618814618043814678.Spec : Prop :=
  ∀ n, P14618814618043814678.a n = A057115 (n + 1)

end A057115

/-! ## A057115.P5265559569112067927

`A065626(A000217(n))%A017485(n)`
-/

namespace A057115.P5265559569112067927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065626 (A000217 n).toNat) (A017485 n)

end

end A057115.P5265559569112067927

namespace A057115

/-- `A065626(A000217(n))%A017485(n)` -/
def P5265559569112067927.Spec : Prop :=
  ∀ n, P5265559569112067927.a n = A057115 (n + 1)

end A057115

/-! ## A057115.P15130803672077420172

`gcd(A000038(n), A065626(A000217(n)))`
-/

namespace A057115.P15130803672077420172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A065626 (A000217 n).toNat)

end

end A057115.P15130803672077420172

namespace A057115

/-- `gcd(A000038(n), A065626(A000217(n)))` -/
def P15130803672077420172.Spec : Prop :=
  ∀ n, (P15130803672077420172.a n : ℤ) = A057115 (n + 1)

end A057115

/-! ## A057115.P8960664556142913511

`A159075(3*n)+A065626(A000217(n))`
-/

namespace A057115.P8960664556142913511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (3 * n) + A065626 (A000217 n).toNat

end

end A057115.P8960664556142913511

namespace A057115

/-- `A159075(3*n)+A065626(A000217(n))` -/
def P8960664556142913511.Spec : Prop :=
  ∀ n, P8960664556142913511.a n = A057115 (n + 1)

end A057115

/-!
# A057117: Permutation of nonnegative integers obtained by mapping each forest of A000108[n] rooted binary plane trees from breadth-first to depth-first encoding.

The programs for A057117, there is no canonical definition to state claims against.
-/

/-! ## A057117.P7667832435661993516

`A072771(A122227(n))`
-/

namespace A057117.P7667832435661993516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072771 (A122227 n).toNat

end

end A057117.P7667832435661993516

/-! ## A057117.P4892393647620267706

`A083925(A122227(n))%A029552(n)`
-/

namespace A057117.P4892393647620267706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083925 (A122227 n).toNat) (A029552 n)

end

end A057117.P4892393647620267706

/-! ## A057117.P4351621928768594196

`A083925(A122227(n)%A039693(n+1))`
-/

namespace A057117.P4351621928768594196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (Int.tmod (A122227 n) (A039693 (n + 1))).toNat

end

end A057117.P4351621928768594196

/-! ## A057117.P4146558859639728849

`A082356(n)+2*A249832(A193845(n))`
-/

namespace A057117.P4146558859639728849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082356 n + 2 * A249832 (A193845 n).toNat

end

end A057117.P4146558859639728849

/-! ## A057117.P5336492731173714049

`A082356(n)-2*A249832(A193845(n))*A057428(n)`
-/

namespace A057117.P5336492731173714049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082356 n - 2 * A249832 (A193845 n).toNat * A057428 n

end

end A057117.P5336492731173714049

/-! ## A057117.P15399524566995058616

`A082356(n)%A057751(n)`
-/

namespace A057117.P15399524566995058616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082356 n) (A057751 n)

end

end A057117.P15399524566995058616

/-! ## A057117.P9604514941339940943

`A082356(n)-A000045(C(xor(7, n)+3, 64))`
-/

namespace A057117.P9604514941339940943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082356 n - A000045 (Nat.choose (Nat.xor 7 n + 3) 64)

end

end A057117.P9604514941339940943

/-!
# A057118: Permutation of natural numbers induced by the automorphism df->bf (switch from the Depth First to the Breadth First coding for the binary trees) acting on the planar binary trees encoded by A014486.

The programs for A057118, there is no canonical definition to state claims against.
-/

/-! ## A057118.P12882340782746463494

`A082355(n)%A094348(n+1)`
-/

namespace A057118.P12882340782746463494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082355 n) (A094348 (n + 1))

end

end A057118.P12882340782746463494

/-! ## A057118.P6623386403392960662

`A085724(n+1)%2*A082355(n)`
-/

namespace A057118.P6623386403392960662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085724 (n + 1)) 2 * A082355 n

end

end A057118.P6623386403392960662

/-! ## A057118.P3354189833180550175

`A082355(n)%A006218(A080054(n))`
-/

namespace A057118.P3354189833180550175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082355 n) (A006218 (A080054 n).toNat)

end

end A057118.P3354189833180550175

/-! ## A057118.P6004852947477258399

`A387381(A006530(2*n+5))+A082355(n)`
-/

namespace A057118.P6004852947477258399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387381 (A006530 (2 * n + 5)).toNat + A082355 n

end

end A057118.P6004852947477258399

/-! ## A057118.P1728114297538280773

`lcm(A033999(A297328(2*n+3)), A082355(n))`
-/

namespace A057118.P1728114297538280773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A297328 (2 * n + 3)).toNat) (A082355 n)

end

end A057118.P1728114297538280773

/-!
# A057120: Global ranks of terms of A057119.

The programs for A057120, there is no canonical definition to state claims against.
-/

/-! ## A057120.P15613675780639014285

`A057123(a(n-1))` with `a(0)=1`
-/

namespace A057120.P15613675780639014285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057123 (a (n - 1)).toNat

end

end A057120.P15613675780639014285

/-!
# A057121: Local ranks of terms of A057119.

The programs for A057121, there is no canonical definition to state claims against.
-/

/-! ## A057121.P1196223345744553128

`A057124(A057120(log2(ceil(2^(n-1)))))`
-/

namespace A057121.P1196223345744553128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057124 (A057120 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat).toNat

end

end A057121.P1196223345744553128

/-!
# A057122: The binary encoding (as a rooted planar tree) of each rooted planar binary tree. See A057123 for illustration.

The programs for A057122, there is no canonical definition to state claims against.
-/

/-! ## A057122.P5614745338275280702

`A014486(A057123(n))`
-/

namespace A057122.P5614745338275280702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057123 n).toNat

end

end A057122.P5614745338275280702

/-! ## A057122.P233795485721856958

`A020639(2*(n+1))*A057520(A057123(n))`
-/

namespace A057122.P233795485721856958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) * A057520 (A057123 n).toNat

end

end A057122.P233795485721856958

/-! ## A057122.P9637020044604871764

`A014963(A001316(n))*A057520(A057123(n))`
-/

namespace A057122.P9637020044604871764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A057520 (A057123 n).toNat

end

end A057122.P9637020044604871764

/-!
# A057123: Global ranks of terms of A057122: tells which terms of A014486 form rooted plane binary trees also when interpreted as codes for ordinary rooted planar trees.

The programs for A057123, there is no canonical definition to state claims against.
-/

/-! ## A057123.P16151318195776528810

`lt[n, A000891(A083927(n))]`
-/

namespace A057123.P16151318195776528810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000891 (A083927 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057123.P16151318195776528810

/-! ## A057123.P4048507618123261902

`eq[A000007(n), A000007(A083927(n))]`
-/

namespace A057123.P4048507618123261902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A083927 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057123.P4048507618123261902

/-! ## A057123.P16417007031646239843

`A074684(A083934(n))`
-/

namespace A057123.P16417007031646239843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A083934 n).toNat

end

end A057123.P16417007031646239843

/-! ## A057123.P3382923290740276940

`A083925(A083930(n))`
-/

namespace A057123.P3382923290740276940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A083930 n).toNat

end

end A057123.P3382923290740276940

/-! ## A057123.P11905199296453523732

`A080300(A057122(n))`
-/

namespace A057123.P11905199296453523732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A057122 n).toNat

end

end A057123.P11905199296453523732

/-!
# A057124: Local ranks of terms of A057122.

The programs for A057124, there is no canonical definition to state claims against.
-/

/-! ## A057124.P11381174173711855355

`A082853(A057123(n))`
-/

namespace A057124.P11381174173711855355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A057123 n).toNat

end

end A057124.P11381174173711855355

/-! ## A057124.P1553468837137158348

`A080301(A057122(n))`
-/

namespace A057124.P1553468837137158348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080301 (A057122 n).toNat

end

end A057124.P1553468837137158348

/-!
# A057125: Numbers n such that 3 is a square mod n.

The programs for A057125, the canonical program `A057125.P15842690290979614362` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057125 has offset 1).

The definition of A057125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057125.P15842690290979614362

`record[gcd((n+2)²-3, round(sqrt(2*n)))]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057125

/-- `record[gcd((n+2)²-3, round(sqrt(2*n)))]` -/
def P15842690290979614362.Spec : Prop :=
  ∀ n, (P15842690290979614362.a n : ℤ) = A057125 (n + 1)

theorem P15842690290979614362.correct : P15842690290979614362.Spec := by
  intro n
  simp only [A057125, Nat.add_sub_cancel]

end A057125

/-! ## A057125.P17677817356079484609

`lt[A281461(n), A281640(n+4)]`
-/

namespace A057125.P17677817356079484609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281461 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281640 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057125.P17677817356079484609

namespace A057125

/-- `lt[A281461(n), A281640(n+4)]` -/
def P17677817356079484609.Spec : Prop :=
  ∀ n, (P17677817356079484609.a n : ℤ) = A057125 (n + 1)

end A057125

/-! ## A057125.P12497184231063944622

`record[A033676(A343066(n+1)-3)]`
-/

namespace A057125.P12497184231063944622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A343066 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057125.P12497184231063944622

namespace A057125

/-- `record[A033676(A343066(n+1)-3)]` -/
def P12497184231063944622.Spec : Prop :=
  ∀ n, P12497184231063944622.a n = A057125 (n + 1)

end A057125

/-! ## A057125.P12304206119502657111

`A247336(n+1)+A054525(A000108(n))`
-/

namespace A057125.P12304206119502657111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247336 (n + 1) + A054525 (A000108 n).toNat

end

end A057125.P12304206119502657111

namespace A057125

/-- `A247336(n+1)+A054525(A000108(n))` -/
def P12304206119502657111.Spec : Prop :=
  ∀ n, P12304206119502657111.a n = A057125 (n + 1)

end A057125

/-! ## A057125.P10419684428669761098

`A247336(n+1)+A054525(A202153(n))`
-/

namespace A057125.P10419684428669761098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247336 (n + 1) + A054525 (A202153 n).toNat

end

end A057125.P10419684428669761098

namespace A057125

/-- `A247336(n+1)+A054525(A202153(n))` -/
def P10419684428669761098.Spec : Prop :=
  ∀ n, P10419684428669761098.a n = A057125 (n + 1)

end A057125

/-!
# A057126: Numbers k such that 2 is a square mod k.

The programs for A057126, there is no canonical definition to state claims against.
-/

/-! ## A057126.P417447725423535213

`∪[2*A058529(n+1), A058529(n+1)]`
-/

namespace A057126.P417447725423535213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057126.P417447725423535213

/-! ## A057126.P16862589418467937786

`eq[2, A330404(n+1)]+1`
-/

namespace A057126.P16862589418467937786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330404 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057126.P16862589418467937786

/-! ## A057126.P8465150973463963000

`eq[A060968(n+1), A089002(n+1)]+1`
-/

namespace A057126.P8465150973463963000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057126.P8465150973463963000

/-! ## A057126.P8226182259139453136

`eq[A062803(n+1), A088964(n+1)]+1`
-/

namespace A057126.P8226182259139453136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057126.P8226182259139453136

/-! ## A057126.P10856561309605560459

`eq[A086932(n+1), A088965(n+1)]+1`
-/

namespace A057126.P10856561309605560459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057126.P10856561309605560459

/-! ## A057126.P15809181984789475816

`record[A000027(n+1)/A026741(A330404(n+1))]`
-/

namespace A057126.P15809181984789475816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A026741 (A330404 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057126.P15809181984789475816

/-! ## A057126.P1248799723642859664

`record[A108738(A025021(n+1))]`
-/

namespace A057126.P1248799723642859664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (A025021 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057126.P1248799723642859664

/-!
# A057127: -2 is a square mod n.

The programs for A057127, there is no canonical definition to state claims against.
-/

/-! ## A057127.P14928485360934731078

`∪[A034031(n+1), A034033(n+1)]`
-/

namespace A057127.P14928485360934731078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057127.P14928485360934731078

/-! ## A057127.P4323756730453643045

`eq[A062803(n+1), A087561(n+1)]+1`
-/

namespace A057127.P4323756730453643045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057127.P4323756730453643045

/-! ## A057127.P10135560660271236027

`eq[A086932(n+1), A089003(n+1)]+1`
-/

namespace A057127.P10135560660271236027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057127.P10135560660271236027

/-! ## A057127.P4552365616501915943

`eq[A016777(n), A047210(3*(n+1))]+1`
-/

namespace A057127.P4552365616501915943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057127.P4552365616501915943

/-! ## A057127.P13969046967079911946

`eq[A035444(n), A188172(A008486(n))]`
-/

namespace A057127.P13969046967079911946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057127.P13969046967079911946

/-! ## A057127.P8514664614553494259

`eq[A022068(n), A188172(A008458(n))]`
-/

namespace A057127.P8514664614553494259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057127.P8514664614553494259

/-! ## A057127.P17669940830039379270

`eq[A035444(n), A188172(A008458(n))]`
-/

namespace A057127.P17669940830039379270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057127.P17669940830039379270

/-! ## A057127.P2852288410492494172

`eq[A035444(n), A188172(A298026(n))]`
-/

namespace A057127.P2852288410492494172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (A298026 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057127.P2852288410492494172

/-!
# A057128: Numbers n such that -3 is a square mod n.

The programs for A057128, the canonical program `A057128.P11179917693389423228` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057128 has offset 1).

The definition of A057128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057128.P6247880530262978126

`eq[1, gcd(6, A184997(n+1))]+1`
-/

namespace A057128.P6247880530262978126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A184997 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057128.P6247880530262978126

namespace A057128

/-- `eq[1, gcd(6, A184997(n+1))]+1` -/
def P6247880530262978126.Spec : Prop :=
  ∀ n, (P6247880530262978126.a n : ℤ) = A057128 (n + 1)

end A057128

/-! ## A057128.P11179917693389423228

`eq[1, A081320(A002472(n+1))]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A057128

/-- `eq[1, A081320(A002472(n+1))]+1` -/
def P11179917693389423228.Spec : Prop :=
  ∀ n, (P11179917693389423228.a n : ℤ) = A057128 (n + 1)

theorem P11179917693389423228.correct : P11179917693389423228.Spec := by
  intro n
  simp only [A057128, Nat.add_sub_cancel]

end A057128

/-! ## A057128.P6532689756004723429

`eq[A051724(n+1), A248909(n+1)]+1`
-/

namespace A057128.P6532689756004723429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057128.P6532689756004723429

namespace A057128

/-- `eq[A051724(n+1), A248909(n+1)]+1` -/
def P6532689756004723429.Spec : Prop :=
  ∀ n, (P6532689756004723429.a n : ℤ) = A057128 (n + 1)

end A057128

/-! ## A057128.P5466591692324386638

`eq[A279060(n), A304442(A051724(n))]`
-/

namespace A057128.P5466591692324386638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (A051724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057128.P5466591692324386638

namespace A057128

/-- `eq[A279060(n), A304442(A051724(n))]` -/
def P5466591692324386638.Spec : Prop :=
  ∀ n, (P5466591692324386638.a n : ℤ) = A057128 (n + 1)

end A057128

/-! ## A057128.P15916139604990434290

`eq[A051724(n), A248909(A008486(n))]`
-/

namespace A057128.P15916139604990434290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057128.P15916139604990434290

namespace A057128

/-- `eq[A051724(n), A248909(A008486(n))]` -/
def P15916139604990434290.Spec : Prop :=
  ∀ n, (P15916139604990434290.a n : ℤ) = A057128 (n + 1)

end A057128

/-! ## A057128.P11392599515531386881

`eq[A051724(n), A248909(A008574(n))]`
-/

namespace A057128.P11392599515531386881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057128.P11392599515531386881

namespace A057128

/-- `eq[A051724(n), A248909(A008574(n))]` -/
def P11392599515531386881.Spec : Prop :=
  ∀ n, (P11392599515531386881.a n : ℤ) = A057128 (n + 1)

end A057128

/-! ## A057128.P18211187139122108475

`eq[A051724(n), A248909(A008458(n)-n)]`
-/

namespace A057128.P18211187139122108475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (A008458 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057128.P18211187139122108475

namespace A057128

/-- `eq[A051724(n), A248909(A008458(n)-n)]` -/
def P18211187139122108475.Spec : Prop :=
  ∀ n, (P18211187139122108475.a n : ℤ) = A057128 (n + 1)

end A057128

/-! ## A057128.P7781195306360131124

`eq[A051724(n), A248909(A008458(n))]`
-/

namespace A057128.P7781195306360131124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057128.P7781195306360131124

namespace A057128

/-- `eq[A051724(n), A248909(A008458(n))]` -/
def P7781195306360131124.Spec : Prop :=
  ∀ n, (P7781195306360131124.a n : ℤ) = A057128 (n + 1)

end A057128

/-!
# A057129: -4 is a square mod n.

The programs for A057129, the canonical program `A057129.P2974831021615174290` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057129 has offset 1).

The definition of A057129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2074 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057129.P2974831021615174290

`eq[gcd(8, n+1), A065338(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A057129

/-- `eq[gcd(8, n+1), A065338(n+1)]+1` -/
def P2974831021615174290.Spec : Prop :=
  ∀ n, (P2974831021615174290.a n : ℤ) = A057129 (n + 1)

theorem P2974831021615174290.correct : P2974831021615174290.Spec := by
  intro n
  simp only [A057129, Nat.add_sub_cancel]

end A057129

/-! ## A057129.P7155207127784450854

`eq[A001842(n), A023919(n)]`
-/

namespace A057129.P7155207127784450854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057129.P7155207127784450854

namespace A057129

/-- `eq[A001842(n), A023919(n)]` -/
def P7155207127784450854.Spec : Prop :=
  ∀ n, (P7155207127784450854.a n : ℤ) = A057129 (n + 1)

end A057129

/-! ## A057129.P8889881095632920365

`eq[A023919(n), A260728(n)]`
-/

namespace A057129.P8889881095632920365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057129.P8889881095632920365

namespace A057129

/-- `eq[A023919(n), A260728(n)]` -/
def P8889881095632920365.Spec : Prop :=
  ∀ n, (P8889881095632920365.a n : ℤ) = A057129 (n + 1)

end A057129

/-! ## A057129.P6243573674290482272

`record[A003484(n+1)*A170818(n+1)]`
-/

namespace A057129.P6243573674290482272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1) * A170818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057129.P6243573674290482272

namespace A057129

/-- `record[A003484(n+1)*A170818(n+1)]` -/
def P6243573674290482272.Spec : Prop :=
  ∀ n, P6243573674290482272.a n = A057129 (n + 1)

end A057129

/-! ## A057129.P121669502780023209

`eq[A001842(n), A005925(A026741(n))]`
-/

namespace A057129.P121669502780023209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 (A026741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057129.P121669502780023209

namespace A057129

/-- `eq[A001842(n), A005925(A026741(n))]` -/
def P121669502780023209.Spec : Prop :=
  ∀ n, (P121669502780023209.a n : ℤ) = A057129 (n + 1)

end A057129

/-! ## A057129.P15731306499336055456

`eq[A259825(A051724(n)), A260728(n)]`
-/

namespace A057129.P15731306499336055456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (A051724 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057129.P15731306499336055456

namespace A057129

/-- `eq[A259825(A051724(n)), A260728(n)]` -/
def P15731306499336055456.Spec : Prop :=
  ∀ n, (P15731306499336055456.a n : ℤ) = A057129 (n + 1)

end A057129

/-! ## A057129.P16152992704401624310

`∪[A008784(n+1), A341420(n+1)]`
-/

namespace A057129.P16152992704401624310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057129.P16152992704401624310

namespace A057129

/-- `∪[A008784(n+1), A341420(n+1)]` -/
def P16152992704401624310.Spec : Prop :=
  ∀ n, (P16152992704401624310.a n : ℤ) = A057129 (n + 1)

end A057129

/-!
# A057130: Product of first n primes of form 6k-1.

The programs for A057130, the canonical program `A057130.P4790251004886061017` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057130 has offset 1).

The definition of A057130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057130.P4003992036202615863

`(A057131(n+1)+1)/6`
-/

namespace A057130.P4003992036202615863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057131 (n + 1) + 1 : ℚ) / 6

end

end A057130.P4003992036202615863

namespace A057130

/-- `(A057131(n+1)+1)/6` -/
def P4003992036202615863.Spec : Prop :=
  ∀ n, P4003992036202615863.a n = (A057130 (n + 1) : ℚ)

theorem P4003992036202615863.correct : P4003992036202615863.Spec := by
  intro n
  simp only [A057130, Nat.add_sub_cancel, A057130.P4003992036202615863.a, A057130.P4790251004886061017.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A057131, A057131.P9189334889060454335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057130

/-! ## A057130.P4790251004886061017

`a(n-1)*A007528(n+1)` with `a(0)=5`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057130

/-- `a(n-1)*A007528(n+1)` -/
def P4790251004886061017.Spec : Prop :=
  ∀ n, P4790251004886061017.a n = A057130 (n + 1)

theorem P4790251004886061017.correct : P4790251004886061017.Spec := by
  intro n
  simp only [A057130, Nat.add_sub_cancel]

end A057130

/-! ## A057130.P3682244581751047506

`∏[p?[3*n+5]]`
-/

namespace A057130.P3682244581751047506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057130.P3682244581751047506

namespace A057130

/-- `∏[p?[3*n+5]]` -/
def P3682244581751047506.Spec : Prop :=
  ∀ n, (P3682244581751047506.a n : ℤ) = A057130 (n + 1)

end A057130

/-! ## A057130.P2077043321618345978

`a(n-1)*p?[a(n-1)+3]` with `a(0)=5`
-/

namespace A057130.P2077043321618345978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A057130.P2077043321618345978

namespace A057130

/-- `a(n-1)*p?[a(n-1)+3]` -/
def P2077043321618345978.Spec : Prop :=
  ∀ n, (P2077043321618345978.a n : ℤ) = A057130 (n + 1)

end A057130

/-! ## A057130.P8036094876523896133

`∏[A007528(n+1)]`
-/

namespace A057130.P8036094876523896133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057130.P8036094876523896133

namespace A057130

/-- `∏[A007528(n+1)]` -/
def P8036094876523896133.Spec : Prop :=
  ∀ n, P8036094876523896133.a n = A057130 (n + 1)

end A057130

/-!
# A057131: One less than six times product of first n primes of form 6k-1.

The programs for A057131, the canonical program `A057131.P9189334889060454335` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057131 has offset 1).

The definition of A057131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057131.P9189334889060454335

`6*A057130(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057131

/-- `6*A057130(n+1)-1` -/
def P9189334889060454335.Spec : Prop :=
  ∀ n, P9189334889060454335.a n = A057131 (n + 1)

theorem P9189334889060454335.correct : P9189334889060454335.Spec := by
  intro n
  simp only [A057131, Nat.add_sub_cancel]

end A057131

/-! ## A057131.P3206259479221773862

`(a(n-1)+1)*A007528(n+1)-1` with `a(0)=29`
-/

namespace A057131.P3206259479221773862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  (a (n - 1) + 1) * A007528 (n + 1) - 1

end

end A057131.P3206259479221773862

namespace A057131

/-- `(a(n-1)+1)*A007528(n+1)-1` -/
def P3206259479221773862.Spec : Prop :=
  ∀ n, P3206259479221773862.a n = A057131 (n + 1)

end A057131

/-!
# A057132: Number of equivalence classes of self-dual Boolean functions of n variables under action of symmetric group S_n.

The programs for A057132, there is no canonical definition to state claims against.
-/

/-! ## A057132.P17282294463984060041

`2*A262546(n+1)`
-/

namespace A057132.P17282294463984060041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262546 (n + 1)

end

end A057132.P17282294463984060041

/-!
# A057135: Palindromes whose square is a palindrome; also palindromes whose sum of squares of digits is less than 10.

The programs for A057135, there is no canonical definition to state claims against.
-/

/-! ## A057135.P15393100192032513095

`sqrt(A057136(n+1))`
-/

namespace A057135.P15393100192032513095
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057136 (n + 1) : ℝ)

end

end A057135.P15393100192032513095

/-! ## A057135.P12818508568325233074

`∩[A002778(n+1), A128921(n+1)]`
-/

namespace A057135.P12818508568325233074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057135.P12818508568325233074

/-! ## A057135.P9074983769548171497

`∩[A002778(n+1), A118595(n+1)]`
-/

namespace A057135.P9074983769548171497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057135.P9074983769548171497

/-! ## A057135.P6143658021608324681

`∩[A002778(n+1), A118596(n+1)]`
-/

namespace A057135.P6143658021608324681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057135.P6143658021608324681

/-! ## A057135.P16360391070188190769

`∩[A002778(n+1), A117056(n+1)]`
-/

namespace A057135.P16360391070188190769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057135.P16360391070188190769

/-! ## A057135.P3167387582165102000

`∩[A002778(n+1), A345358(n+1)]`
-/

namespace A057135.P3167387582165102000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057135.P3167387582165102000

/-! ## A057135.P17166415634841249487

`∩[A117056(n+1), A345358(n+1)]`
-/

namespace A057135.P17166415634841249487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057135.P17166415634841249487

/-! ## A057135.P9335023399894539945

`∩[A118595(n+1), A345358(n+1)]`
-/

namespace A057135.P9335023399894539945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057135.P9335023399894539945

/-! ## A057135.P4499695628581907361

`∩[A118596(n+1), A345358(n+1)]`
-/

namespace A057135.P4499695628581907361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057135.P4499695628581907361

/-! ## A057135.P11046895608346937344

`∩[A128921(n+1), A345358(n+1)]`
-/

namespace A057135.P11046895608346937344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057135.P11046895608346937344

/-!
# A057136: Palindromes whose square root is a palindrome.

The programs for A057136, there is no canonical definition to state claims against.
-/

/-! ## A057136.P5409196755694388602

`A057135(n+1)²`
-/

namespace A057136.P5409196755694388602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1) ^ 2

end

end A057136.P5409196755694388602

/-! ## A057136.P5567839625453115263

`A057135(A000027(n+1))^2`
-/

namespace A057136.P5567839625453115263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (A000027 (n + 1)).toNat ^ 2

end

end A057136.P5567839625453115263

/-! ## A057136.P17171562839050486816

`A057135(n+1)^A020639(2*(n+1))`
-/

namespace A057136.P17171562839050486816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057135 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A057136.P17171562839050486816

/-! ## A057136.P8420580256844723232

`A057135(n+1)^A000032(C(2, 2*n))`
-/

namespace A057136.P8420580256844723232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057135 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (2 * n)) : ℤ)

end

end A057136.P8420580256844723232

/-! ## A057136.P8924710480252153606

`A057135(A000027(n+1))*A057135(n+1)`
-/

namespace A057136.P8924710480252153606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (A000027 (n + 1)).toNat * A057135 (n + 1)

end

end A057136.P8924710480252153606

/-! ## A057136.P16092853579114571457

`A057135(n+1)^A001222(A001358(n+1))`
-/

namespace A057136.P16092853579114571457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057135 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A057136.P16092853579114571457

/-! ## A057136.P4137069690364715417

`A057135(n+1)^A000034(2*n+1)`
-/

namespace A057136.P4137069690364715417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057135 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A057136.P4137069690364715417

/-! ## A057136.P12474613318409315120

`A057135(n+1)^A000005(A002145(n+1))`
-/

namespace A057136.P12474613318409315120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057135 (n + 1) : ℚ) ^ (A000005 (A002145 (n + 1)).toNat : ℤ)

end

end A057136.P12474613318409315120

/-! ## A057136.P7066347086333721930

`A057135(n+1)^A000005(A007520(n+1))`
-/

namespace A057136.P7066347086333721930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057135 (n + 1) : ℚ) ^ (A000005 (A007520 (n + 1)).toNat : ℤ)

end

end A057136.P7066347086333721930

/-! ## A057136.P13565085334280970839

`(A057135(n+1)%A222083(n))^2`
-/

namespace A057136.P13565085334280970839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057135 (n + 1)) (A222083 n) ^ 2

end

end A057136.P13565085334280970839

/-! ## A057136.P13188543597883373184

`∩[A002778(n+1), A128921(n+1)]²`
-/

namespace A057136.P13188543597883373184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A057136.P13188543597883373184

/-! ## A057136.P261918193036029185

`∩[A002779(n+1), A158642(n)]`
-/

namespace A057136.P261918193036029185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158642 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057136.P261918193036029185

/-! ## A057136.P297442842998331590

`A057135(A051173(∑[n+1]))*A057135(n+1)`
-/

namespace A057136.P297442842998331590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (A051173 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat * A057135 (n + 1)

end

end A057136.P297442842998331590

/-! ## A057136.P8783768939079335433

`∩[A117056(n+1), A345358(n+1)]²`
-/

namespace A057136.P8783768939079335433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A057136.P8783768939079335433

/-! ## A057136.P6209858734186766818

`∩[A118595(n+1), A345358(n+1)]²`
-/

namespace A057136.P6209858734186766818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A057136.P6209858734186766818

/-! ## A057136.P11352385400037956318

`∩[A118596(n+1), A345358(n+1)]²`
-/

namespace A057136.P11352385400037956318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A057136.P11352385400037956318

/-!
# A057137: Concatenate next digit at right hand end (where the next digit after 9 is again 0).

The programs for A057137, the canonical program `A057137.P5006495259521367543` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057137 has offset 0).

The definition of A057137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057137.P5006495259521367543

`10*(a(n-1)-floor(n/10))+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057137

/-- `10*(a(n-1)-floor(n/10))+n` -/
def P5006495259521367543.Spec : Prop :=
  ∀ n, P5006495259521367543.a n = A057137 n

theorem P5006495259521367543.correct : P5006495259521367543.Spec := by
  intro n
  simp only [A057137]

end A057137

/-! ## A057137.P6050899324640385564

`n%10+10*a(n-1)` with `a(0)=0`
-/

namespace A057137.P6050899324640385564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n % 10 + 10 * a (n - 1)

end

end A057137.P6050899324640385564

namespace A057137

/-- `n%10+10*a(n-1)` -/
def P6050899324640385564.Spec : Prop :=
  ∀ n, (P6050899324640385564.a n : ℤ) = A057137 n

end A057137

/-! ## A057137.P14884517930394142772

`A078194(∑[n-1]+2)-A000007(n)`
-/

namespace A057137.P14884517930394142772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078194 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - A000007 n

end

end A057137.P14884517930394142772

namespace A057137

/-- `A078194(∑[n-1]+2)-A000007(n)` -/
def P14884517930394142772.Spec : Prop :=
  ∀ n, P14884517930394142772.a n = A057137 n

end A057137

/-! ## A057137.P6349141797581292381

`A078194(∑[n-1]+2)%A078193(n+1)`
-/

namespace A057137.P6349141797581292381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078194 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat) (A078193 (n + 1))

end

end A057137.P6349141797581292381

namespace A057137

/-- `A078194(∑[n-1]+2)%A078193(n+1)` -/
def P6349141797581292381.Spec : Prop :=
  ∀ n, P6349141797581292381.a n = A057137 n

end A057137

/-! ## A057137.P17451793799175498793

`sqrt(A249181(n))`
-/

namespace A057137.P17451793799175498793
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A249181 n : ℝ)

end

end A057137.P17451793799175498793

namespace A057137

/-- `sqrt(A249181(n))` -/
def P17451793799175498793.Spec : Prop :=
  ∀ n, P17451793799175498793.a n = (A057137 n : ℝ)

end A057137

/-!
# A057138: Add (n mod 10)*10^(n-1) to the previous term, with a(0) = 0.

The programs for A057138, the canonical program `A057138.P7667025976055314945` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057138 has offset 0).

The definition of A057138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057138.P7667025976055314945

`a(n-1)+10^(n-1)*n-10^n*floor(n/10)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057138

/-- `a(n-1)+10^(n-1)*n-10^n*floor(n/10)` -/
def P7667025976055314945.Spec : Prop :=
  ∀ n, P7667025976055314945.a n = (A057138 n : ℚ)

end A057138

/-! ## A057138.P5207946276933512663

`∑[n%10*10^(n-1)]`
-/

namespace A057138.P5207946276933512663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 10 : ℕ) : ℚ) * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057138.P5207946276933512663

namespace A057138

/-- `∑[n%10*10^(n-1)]` -/
def P5207946276933512663.Spec : Prop :=
  ∀ n, P5207946276933512663.a n = (A057138 n : ℚ)

end A057138

/-! ## A057138.P13906608961975884342

`∑[A010879(n)*A178501(n)]`
-/

namespace A057138.P13906608961975884342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n * A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057138.P13906608961975884342

namespace A057138

/-- `∑[A010879(n)*A178501(n)]` -/
def P13906608961975884342.Spec : Prop :=
  ∀ n, P13906608961975884342.a n = A057138 n

end A057138

/-! ## A057138.P8852842588548325573

`∑[record[A182979(n+1)]*A010879(n)]`
-/

namespace A057138.P8852842588548325573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182979 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A010879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057138.P8852842588548325573

namespace A057138

/-- `∑[record[A182979(n+1)]*A010879(n)]` -/
def P8852842588548325573.Spec : Prop :=
  ∀ n, P8852842588548325573.a n = A057138 n

end A057138

/-! ## A057138.P13426121912055929816

`∑[A007376(A065650(n))*A178501(n)]`
-/

namespace A057138.P13426121912055929816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A065650 n).toNat * A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057138.P13426121912055929816

namespace A057138

/-- `∑[A007376(A065650(n))*A178501(n)]` -/
def P13426121912055929816.Spec : Prop :=
  ∀ n, P13426121912055929816.a n = A057138 n

end A057138

/-! ## A057138.P6695732542129648029

`∑[A081122(n)%A011557(n)]`
-/

namespace A057138.P6695732542129648029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081122 n) (A011557 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057138.P6695732542129648029

namespace A057138

/-- `∑[A081122(n)%A011557(n)]` -/
def P6695732542129648029.Spec : Prop :=
  ∀ n, P6695732542129648029.a n = A057138 n

end A057138

/-!
# A057143: Largest of the most frequently occurring numbers in 1-to-n multiplication table.

The programs for A057143, there is no canonical definition to state claims against.
-/

/-! ## A057143.P17998710069714702974

`A151948(A057752(n+1)-A339095(n+1))`
-/

namespace A057143.P17998710069714702974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151948 (A057752 (n + 1) - A339095 (n + 1)).toNat

end

end A057143.P17998710069714702974

/-!
# A057144: Smallest of the most frequently occurring numbers in 1-to-n multiplication table.

The programs for A057144, there is no canonical definition to state claims against.
-/

/-! ## A057144.P7864911658250895266

`lcm(A055642(A128035(n)), A257686(n+1))`
-/

namespace A057144.P7864911658250895266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055642 (A128035 n).toNat) (A257686 (n + 1))

end

end A057144.P7864911658250895266

/-!
# A057145: Square array of polygonal numbers T(n,k) = ((n-2)*k^2 - (n-4)*k)/2, n >= 2, k >= 1, read by antidiagonals upwards.

The programs for A057145, the canonical program `A057145.P9043819964988924881` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057145 has offset 2).

The definition of A057145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057145.P771004189918382783

`(row(n)-col(n))*C(col(n)+1, 2)+col(n)+1`
-/

namespace A057145.P771004189918382783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (Nat.choose (SequenceMachineLib.triCol n + 1) 2 : ℤ) + (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A057145.P771004189918382783

namespace A057145

/-- `(row(n)-col(n))*C(col(n)+1, 2)+col(n)+1` -/
def P771004189918382783.Spec : Prop :=
  ∀ n, P771004189918382783.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P8070706736839964347

`(row(n)-col(n))*col(n)*(col(n)+1)/2+col(n)+1`
-/

namespace A057145.P8070706736839964347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) * (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) / 2 + (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A057145.P8070706736839964347

namespace A057145

/-- `(row(n)-col(n))*col(n)*(col(n)+1)/2+col(n)+1` -/
def P8070706736839964347.Spec : Prop :=
  ∀ n, P8070706736839964347.a n = (A057145 (n + 2) : ℚ)

end A057145

/-! ## A057145.P18348307562323525274

`A139600(n)+A077028(n)`
-/

namespace A057145.P18348307562323525274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n + A077028 n

end

end A057145.P18348307562323525274

namespace A057145

/-- `A139600(n)+A077028(n)` -/
def P18348307562323525274.Spec : Prop :=
  ∀ n, P18348307562323525274.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P6736119289974854303

`A244911(n)+A002262(n)`
-/

namespace A057145.P6736119289974854303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 n + A002262 n

end

end A057145.P6736119289974854303

namespace A057145

/-- `A244911(n)+A002262(n)` -/
def P6736119289974854303.Spec : Prop :=
  ∀ n, P6736119289974854303.a n = A057145 (n + 2)

theorem P6736119289974854303.correct : P6736119289974854303.Spec := by
  intro n
  simp only [A057145, Nat.add_sub_cancel, A057145.P6736119289974854303.a, A057145.P9043819964988924881.a, A000217, A000217.P10269402890581615239.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, A244911, A244911.P2421789843677533910.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057145

/-! ## A057145.P14633701735947577973

`A004247(n)+A139600(n)+1`
-/

namespace A057145.P14633701735947577973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A139600 n + 1)

end

end A057145.P14633701735947577973

namespace A057145

/-- `A004247(n)+A139600(n)+1` -/
def P14633701735947577973.Spec : Prop :=
  ∀ n, P14633701735947577973.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P2271162860232811762

`A086271(n+1)-A112367(n)`
-/

namespace A057145.P2271162860232811762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (n + 1) - A112367 n

end

end A057145.P2271162860232811762

namespace A057145

/-- `A086271(n+1)-A112367(n)` -/
def P2271162860232811762.Spec : Prop :=
  ∀ n, P2271162860232811762.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P12349703793207385390

`A086273(n+1)-A143844(n)`
-/

namespace A057145.P12349703793207385390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086273 (n + 1) - A143844 n

end

end A057145.P12349703793207385390

namespace A057145

/-- `A086273(n+1)-A143844(n)` -/
def P12349703793207385390.Spec : Prop :=
  ∀ n, P12349703793207385390.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P7673498648985020950

`A244911(n)+n-A057944(n)`
-/

namespace A057145.P7673498648985020950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 n + ((n : ℤ) - A057944 n)

end

end A057145.P7673498648985020950

namespace A057145

/-- `A244911(n)+n-A057944(n)` -/
def P7673498648985020950.Spec : Prop :=
  ∀ n, P7673498648985020950.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P9317178393868905078

`A086273(n+1)-A002262(n)²`
-/

namespace A057145.P9317178393868905078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086273 (n + 1) - A002262 n ^ 2

end

end A057145.P9317178393868905078

namespace A057145

/-- `A086273(n+1)-A002262(n)²` -/
def P9317178393868905078.Spec : Prop :=
  ∀ n, P9317178393868905078.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P428186599761469576

`A127779(n+1)-A141418(n+1)`
-/

namespace A057145.P428186599761469576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127779 (n + 1) - A141418 (n + 1)

end

end A057145.P428186599761469576

namespace A057145

/-- `A127779(n+1)-A141418(n+1)` -/
def P428186599761469576.Spec : Prop :=
  ∀ n, P428186599761469576.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P14845039394116555276

`A086271(n+1)-A000217(A002262(n))`
-/

namespace A057145.P14845039394116555276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (n + 1) - A000217 (A002262 n).toNat

end

end A057145.P14845039394116555276

namespace A057145

/-- `A086271(n+1)-A000217(A002262(n))` -/
def P14845039394116555276.Spec : Prop :=
  ∀ n, P14845039394116555276.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P9364809852331853423

`A107985(n)-(A062707(n)+A061579(n))`
-/

namespace A057145.P9364809852331853423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 n - (A062707 n + A061579 n)

end

end A057145.P9364809852331853423

namespace A057145

/-- `A107985(n)-(A062707(n)+A061579(n))` -/
def P9364809852331853423.Spec : Prop :=
  ∀ n, P9364809852331853423.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P9043819964988924881

`A002260(n+1)+A000217(A002262(n))*A025581(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057145

/-- `A002260(n+1)+A000217(A002262(n))*A025581(n)` -/
def P9043819964988924881.Spec : Prop :=
  ∀ n, P9043819964988924881.a n = A057145 (n + 2)

theorem P9043819964988924881.correct : P9043819964988924881.Spec := by
  intro n
  simp only [A057145, Nat.add_sub_cancel]

end A057145

/-! ## A057145.P6664491382985444902

`A139600(comp[∑[n]])`
-/

namespace A057145.P6664491382985444902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A057145.P6664491382985444902

namespace A057145

/-- `A139600(comp[∑[n]])` -/
def P6664491382985444902.Spec : Prop :=
  ∀ n, P6664491382985444902.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P12766321803477679410

`A134394(A038722(n+1))`
-/

namespace A057145.P12766321803477679410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (A038722 (n + 1)).toNat

end

end A057145.P12766321803477679410

namespace A057145

/-- `A134394(A038722(n+1))` -/
def P12766321803477679410.Spec : Prop :=
  ∀ n, P12766321803477679410.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P14975107512785057445

`A134394(A002024(n+1)²-n)`
-/

namespace A057145.P14975107512785057445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A057145.P14975107512785057445

namespace A057145

/-- `A134394(A002024(n+1)²-n)` -/
def P14975107512785057445.Spec : Prop :=
  ∀ n, P14975107512785057445.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P11083553475887046732

`A062707(A061579(n))+A002260(n+1)`
-/

namespace A057145.P11083553475887046732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (A061579 n).toNat + A002260 (n + 1)

end

end A057145.P11083553475887046732

namespace A057145

/-- `A062707(A061579(n))+A002260(n+1)` -/
def P11083553475887046732.Spec : Prop :=
  ∀ n, P11083553475887046732.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P18093408428168109156

`gcd(A000038(n), A139600(A014132(n+1)))`
-/

namespace A057145.P18093408428168109156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A139600 (A014132 (n + 1)).toNat)

end

end A057145.P18093408428168109156

namespace A057145

/-- `gcd(A000038(n), A139600(A014132(n+1)))` -/
def P18093408428168109156.Spec : Prop :=
  ∀ n, (P18093408428168109156.a n : ℤ) = A057145 (n + 2)

end A057145

/-! ## A057145.P11539002314635948052

`A057555(2*n+1)+A000217(A002262(n))*A025581(n)`
-/

namespace A057145.P11539002314635948052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * n + 1) + A000217 (A002262 n).toNat * A025581 n

end

end A057145.P11539002314635948052

namespace A057145

/-- `A057555(2*n+1)+A000217(A002262(n))*A025581(n)` -/
def P11539002314635948052.Spec : Prop :=
  ∀ n, P11539002314635948052.a n = A057145 (n + 2)

end A057145

/-! ## A057145.P6730343393274922253

`A139600(n)+A139600(A285192(n))+1`
-/

namespace A057145.P6730343393274922253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n + (A139600 (A285192 n).toNat + 1)

end

end A057145.P6730343393274922253

namespace A057145

/-- `A139600(n)+A139600(A285192(n))+1` -/
def P6730343393274922253.Spec : Prop :=
  ∀ n, P6730343393274922253.a n = A057145 (n + 2)

end A057145

/-!
# A057146: The sequence 2, floor(a), floor(a^2), floor(a^3), ..., with a = 1+sqrt(5).

The programs for A057146, there is no canonical definition to state claims against.
-/

/-! ## A057146.P6218706989575204537

`floor(sqrt(((2*ϕ)^n)²+3))`
-/

namespace A057146.P6218706989575204537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((2 * Real.goldenRatio) ^ n) ^ 2 + 3)⌋

end

end A057146.P6218706989575204537

/-!
# A057147: a(n) = n times sum of digits of n.

The programs for A057147, the canonical program `A057147.P6552464879974957451` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057147 has offset 0).

The definition of A057147 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057147.P6552464879974957451

`n*A007953(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057147

/-- `n*A007953(n)` -/
def P6552464879974957451.Spec : Prop :=
  ∀ n, P6552464879974957451.a n = A057147 n

theorem P6552464879974957451.correct : P6552464879974957451.Spec := by
  intro n
  simp only [A057147]

end A057147

/-! ## A057147.P7714050439795062906

`∑{digits}[n, n*#]`
-/

namespace A057147.P7714050439795062906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => n * x).sum

end

end A057147.P7714050439795062906

namespace A057147

/-- `∑{digits}[n, n*#]` -/
def P7714050439795062906.Spec : Prop :=
  ∀ n, (P7714050439795062906.a n : ℤ) = A057147 n

end A057147

/-! ## A057147.P15143767204275313302

`n*log2(∏{digits}[n, 2^#])`
-/

namespace A057147.P15143767204275313302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A057147.P15143767204275313302

namespace A057147

/-- `n*log2(∏{digits}[n, 2^#])` -/
def P15143767204275313302.Spec : Prop :=
  ∀ n, P15143767204275313302.a n = (A057147 n : ℝ)

end A057147

/-! ## A057147.P3518668968940197138

`n*sqrt(A118881(n))`
-/

namespace A057147.P3518668968940197138
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A118881 n : ℝ)

end

end A057147.P3518668968940197138

namespace A057147

/-- `n*sqrt(A118881(n))` -/
def P3518668968940197138.Spec : Prop :=
  ∀ n, P3518668968940197138.a n = (A057147 n : ℝ)

end A057147

/-! ## A057147.P5372481914206495404

`n*log2(A329562(n))`
-/

namespace A057147.P5372481914206495404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 (A329562 n : ℝ)

end

end A057147.P5372481914206495404

namespace A057147

/-- `n*log2(A329562(n))` -/
def P5372481914206495404.Spec : Prop :=
  ∀ n, P5372481914206495404.a n = (A057147 n : ℝ)

end A057147

/-! ## A057147.P14855058784474088847

`n/2*A169805(n)`
-/

namespace A057147.P14855058784474088847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A169805 n : ℚ)

end

end A057147.P14855058784474088847

namespace A057147

/-- `n/2*A169805(n)` -/
def P14855058784474088847.Spec : Prop :=
  ∀ n, P14855058784474088847.a n = (A057147 n : ℚ)

theorem P14855058784474088847.correct : P14855058784474088847.Spec := by
  intro n
  simp only [A057147, Nat.add_sub_cancel, A057147.P14855058784474088847.a, A057147.P6552464879974957451.a, A007953, A007953.P3472751987379697826.a, A169805, A169805.P17977796700678006772.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057147

/-! ## A057147.P1419826225927734863

`n*(A062028(n)-n)`
-/

namespace A057147.P1419826225927734863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A062028 n - (n : ℤ))

end

end A057147.P1419826225927734863

namespace A057147

/-- `n*(A062028(n)-n)` -/
def P1419826225927734863.Spec : Prop :=
  ∀ n, P1419826225927734863.a n = A057147 n

theorem P1419826225927734863.correct : P1419826225927734863.Spec := by
  intro n
  simp only [A057147, Nat.add_sub_cancel, A057147.P1419826225927734863.a, A057147.P6552464879974957451.a, A007953, A007953.P3472751987379697826.a, A062028, A062028.P8420805724104474199.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057147

/-! ## A057147.P28785744924681523

`n*(n-A066568(n))`
-/

namespace A057147.P28785744924681523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - A066568 n)

end

end A057147.P28785744924681523

namespace A057147

/-- `n*(n-A066568(n))` -/
def P28785744924681523.Spec : Prop :=
  ∀ n, P28785744924681523.a n = A057147 n

theorem P28785744924681523.correct : P28785744924681523.Spec := by
  intro n
  simp only [A057147, Nat.add_sub_cancel, A057147.P28785744924681523.a, A057147.P6552464879974957451.a, A007953, A007953.P3472751987379697826.a, A066568, A066568.P9469533663660008085.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057147

/-! ## A057147.P2834232592669962862

`n*(n+1-A160941(n+1))`
-/

namespace A057147.P2834232592669962862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n + 1 : ℤ) - A160941 (n + 1))

end

end A057147.P2834232592669962862

namespace A057147

/-- `n*(n+1-A160941(n+1))` -/
def P2834232592669962862.Spec : Prop :=
  ∀ n, P2834232592669962862.a n = A057147 n

end A057147

/-! ## A057147.P17840596890039383176

`n*(A160939(n+1)-(n+1))`
-/

namespace A057147.P17840596890039383176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A160939 (n + 1) - (n + 1 : ℤ))

end

end A057147.P17840596890039383176

namespace A057147

/-- `n*(A160939(n+1)-(n+1))` -/
def P17840596890039383176.Spec : Prop :=
  ∀ n, P17840596890039383176.a n = A057147 n

theorem P17840596890039383176.correct : P17840596890039383176.Spec := by
  intro n
  simp only [A057147, Nat.add_sub_cancel, A057147.P17840596890039383176.a, A057147.P6552464879974957451.a, A007953, A007953.P3472751987379697826.a, A160939, A160939.P10335950988782502839.a, A054899, A054899.P10770181254942084517.a, A062028, A062028.P8420805724104474199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057147

/-! ## A057147.P8617377218716207340

`n/(n+1)*A160942(n+1)`
-/

namespace A057147.P8617377218716207340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A160942 (n + 1) : ℚ)

end

end A057147.P8617377218716207340

namespace A057147

/-- `n/(n+1)*A160942(n+1)` -/
def P8617377218716207340.Spec : Prop :=
  ∀ n, P8617377218716207340.a n = (A057147 n : ℚ)

end A057147

/-! ## A057147.P8214993370540145213

`A160942(n+1)-A007953(n)`
-/

namespace A057147.P8214993370540145213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160942 (n + 1) - A007953 n

end

end A057147.P8214993370540145213

namespace A057147

/-- `A160942(n+1)-A007953(n)` -/
def P8214993370540145213.Spec : Prop :=
  ∀ n, P8214993370540145213.a n = A057147 n

end A057147

/-! ## A057147.P4141570832631114122

`n*(A062329(n)+A007954(n))`
-/

namespace A057147.P4141570832631114122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A062329 n + A007954 n)

end

end A057147.P4141570832631114122

namespace A057147

/-- `n*(A062329(n)+A007954(n))` -/
def P4141570832631114122.Spec : Prop :=
  ∀ n, P4141570832631114122.a n = A057147 n

end A057147

/-! ## A057147.P8535859844792066540

`n*(A061762(n)-A007954(n))`
-/

namespace A057147.P8535859844792066540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A061762 n - A007954 n)

end

end A057147.P8535859844792066540

namespace A057147

/-- `n*(A061762(n)-A007954(n))` -/
def P8535859844792066540.Spec : Prop :=
  ∀ n, P8535859844792066540.a n = A057147 n

theorem P8535859844792066540.correct : P8535859844792066540.Spec := by
  intro n
  simp only [A057147, Nat.add_sub_cancel, A057147.P8535859844792066540.a, A057147.P6552464879974957451.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A061762, A061762.P2226516995009236848.a, A054899, A054899.P10770181254942084517.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057147

/-! ## A057147.P17186611869754189109

`n*(A062028(n)+n)%A004277(n)`
-/

namespace A057147.P17186611869754189109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A062028 n + (n : ℤ)) (A004277 n)

end

end A057147.P17186611869754189109

namespace A057147

/-- `n*(A062028(n)+n)%A004277(n)` -/
def P17186611869754189109.Spec : Prop :=
  ∀ n, P17186611869754189109.a n = A057147 n

end A057147

/-! ## A057147.P17876264808995164701

`n*A053831(A171397(n))`
-/

namespace A057147.P17876264808995164701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053831 (A171397 n).toNat

end

end A057147.P17876264808995164701

namespace A057147

/-- `n*A053831(A171397(n))` -/
def P17876264808995164701.Spec : Prop :=
  ∀ n, P17876264808995164701.a n = A057147 n

end A057147

/-! ## A057147.P3014288934085719905

`n*A053836(A102489(n))`
-/

namespace A057147.P3014288934085719905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053836 (A102489 n).toNat

end

end A057147.P3014288934085719905

namespace A057147

/-- `n*A053836(A102489(n))` -/
def P3014288934085719905.Spec : Prop :=
  ∀ n, P3014288934085719905.a n = A057147 n

end A057147

/-! ## A057147.P1017392713958926447

`n*A004092(A008587(n))`
-/

namespace A057147.P1017392713958926447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004092 (A008587 n).toNat

end

end A057147.P1017392713958926447

namespace A057147

/-- `n*A004092(A008587(n))` -/
def P1017392713958926447.Spec : Prop :=
  ∀ n, P1017392713958926447.a n = A057147 n

end A057147

/-! ## A057147.P6854672744069684038

`n*A004092(A008706(n))`
-/

namespace A057147.P6854672744069684038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004092 (A008706 n).toNat

end

end A057147.P6854672744069684038

namespace A057147

/-- `n*A004092(A008706(n))` -/
def P6854672744069684038.Spec : Prop :=
  ∀ n, P6854672744069684038.a n = A057147 n

end A057147

/-! ## A057147.P12241872811777764966

`n*A061762(10*n)`
-/

namespace A057147.P12241872811777764966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061762 (10 * n)

end

end A057147.P12241872811777764966

namespace A057147

/-- `n*A061762(10*n)` -/
def P12241872811777764966.Spec : Prop :=
  ∀ n, P12241872811777764966.a n = A057147 n

end A057147

/-!
# A057148: Palindromes only using 0 and 1 (i.e., base-2 palindromes).

The programs for A057148, the canonical program `A057148.P2713208974406448353` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057148 has offset 1).

The definition of A057148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057148.P2713208974406448353

`∪[A342040(n+1), A342036(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A057148

/-- `∪[A342040(n+1), A342036(n)]` -/
def P2713208974406448353.Spec : Prop :=
  ∀ n, (P2713208974406448353.a n : ℤ) = A057148 (n + 1)

theorem P2713208974406448353.correct : P2713208974406448353.Spec := by
  intro n
  simp only [A057148, Nat.add_sub_cancel]

end A057148

/-! ## A057148.P13620005821462555207

`A101705(n+1)/A101705(A020639(2*(n+1)))`
-/

namespace A057148.P13620005821462555207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101705 (n + 1) : ℚ) / (A101705 (A020639 (2 * (n + 1))).toNat : ℚ)

end

end A057148.P13620005821462555207

namespace A057148

/-- `A101705(n+1)/A101705(A020639(2*(n+1)))` -/
def P13620005821462555207.Spec : Prop :=
  ∀ n, P13620005821462555207.a n = (A057148 (n + 1) : ℚ)

end A057148

/-! ## A057148.P7964525328511264795

`∩[A006072(n+1), A118594(n+1)]`
-/

namespace A057148.P7964525328511264795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057148.P7964525328511264795

namespace A057148

/-- `∩[A006072(n+1), A118594(n+1)]` -/
def P7964525328511264795.Spec : Prop :=
  ∀ n, (P7964525328511264795.a n : ℤ) = A057148 (n + 1)

end A057148

/-! ## A057148.P18018873197988216771

`A007088(A006995(n+1))`
-/

namespace A057148.P18018873197988216771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A006995 (n + 1)).toNat

end

end A057148.P18018873197988216771

namespace A057148

/-- `A007088(A006995(n+1))` -/
def P18018873197988216771.Spec : Prop :=
  ∀ n, P18018873197988216771.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P1981159642880142172

`A007088(eq[0, A178226(n)])`
-/

namespace A057148.P1981159642880142172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057148.P1981159642880142172

namespace A057148

/-- `A007088(eq[0, A178226(n)])` -/
def P1981159642880142172.Spec : Prop :=
  ∀ n, P1981159642880142172.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P4537227296590073842

`A007088(eq[0, A303534(n)])`
-/

namespace A057148.P4537227296590073842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057148.P4537227296590073842

namespace A057148

/-- `A007088(eq[0, A303534(n)])` -/
def P4537227296590073842.Spec : Prop :=
  ∀ n, P4537227296590073842.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P11887390749356938358

`∩[A006072(n+1), A007088(n)]`
-/

namespace A057148.P11887390749356938358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057148.P11887390749356938358

namespace A057148

/-- `∩[A006072(n+1), A007088(n)]` -/
def P11887390749356938358.Spec : Prop :=
  ∀ n, (P11887390749356938358.a n : ℤ) = A057148 (n + 1)

end A057148

/-! ## A057148.P14782078182521199637

`∩[A118594(n+1), A007088(n)]`
-/

namespace A057148.P14782078182521199637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057148.P14782078182521199637

namespace A057148

/-- `∩[A118594(n+1), A007088(n)]` -/
def P14782078182521199637.Spec : Prop :=
  ∀ n, (P14782078182521199637.a n : ℤ) = A057148 (n + 1)

end A057148

/-! ## A057148.P14228653988667187708

`A007088(record[A049776(n+1)-1])`
-/

namespace A057148.P14228653988667187708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057148.P14228653988667187708

namespace A057148

/-- `A007088(record[A049776(n+1)-1])` -/
def P14228653988667187708.Spec : Prop :=
  ∀ n, P14228653988667187708.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P15362070668524734529

`A007088(∑[A164126(n+1)]-A164126(n+1))`
-/

namespace A057148.P15362070668524734529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j - A164126 (n + 1)).toNat

end

end A057148.P15362070668524734529

namespace A057148

/-- `A007088(∑[A164126(n+1)]-A164126(n+1))` -/
def P15362070668524734529.Spec : Prop :=
  ∀ n, P15362070668524734529.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P17291301102617540504

`A007088(eq[0, A175919(n)])`
-/

namespace A057148.P17291301102617540504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057148.P17291301102617540504

namespace A057148

/-- `A007088(eq[0, A175919(n)])` -/
def P17291301102617540504.Spec : Prop :=
  ∀ n, P17291301102617540504.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P15449497186198149228

`A007088(lt[A175919(n), 1])`
-/

namespace A057148.P15449497186198149228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A057148.P15449497186198149228

namespace A057148

/-- `A007088(lt[A175919(n), 1])` -/
def P15449497186198149228.Spec : Prop :=
  ∀ n, P15449497186198149228.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P17787504522837123835

`A007088(eq[n, A175298(n)])`
-/

namespace A057148.P17787504522837123835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057148.P17787504522837123835

namespace A057148

/-- `A007088(eq[n, A175298(n)])` -/
def P17787504522837123835.Spec : Prop :=
  ∀ n, P17787504522837123835.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P15547019373265140865

`A007088(record[n-A175919(n)])`
-/

namespace A057148.P15547019373265140865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A175919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057148.P15547019373265140865

namespace A057148

/-- `A007088(record[n-A175919(n)])` -/
def P15547019373265140865.Spec : Prop :=
  ∀ n, P15547019373265140865.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P931851560756816351

`A007088(record[n*C(2, A175919(n))])`
-/

namespace A057148.P931851560756816351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (A175919 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A057148.P931851560756816351

namespace A057148

/-- `A007088(record[n*C(2, A175919(n))])` -/
def P931851560756816351.Spec : Prop :=
  ∀ n, P931851560756816351.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P15835664942762433005

`record[and(1, n)*A215256(n)]`
-/

namespace A057148.P15835664942762433005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A215256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057148.P15835664942762433005

namespace A057148

/-- `record[and(1, n)*A215256(n)]` -/
def P15835664942762433005.Spec : Prop :=
  ∀ n, P15835664942762433005.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P13070389887909236136

`A007088(eq[1, A178225(n)])`
-/

namespace A057148.P13070389887909236136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057148.P13070389887909236136

namespace A057148

/-- `A007088(eq[1, A178225(n)])` -/
def P13070389887909236136.Spec : Prop :=
  ∀ n, P13070389887909236136.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P18348163228019324236

`A007088(eq[n, A030101(n)])`
-/

namespace A057148.P18348163228019324236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057148.P18348163228019324236

namespace A057148

/-- `A007088(eq[n, A030101(n)])` -/
def P18348163228019324236.Spec : Prop :=
  ∀ n, P18348163228019324236.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P3990878760110506988

`A007088(record[gcd(n, A030101(n))])`
-/

namespace A057148.P3990878760110506988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A030101 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A057148.P3990878760110506988

namespace A057148

/-- `A007088(record[gcd(n, A030101(n))])` -/
def P3990878760110506988.Spec : Prop :=
  ∀ n, P3990878760110506988.a n = A057148 (n + 1)

end A057148

/-! ## A057148.P11707410308159012466

`record[and(A007088(n), A215256(n))]`
-/

namespace A057148.P11707410308159012466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007088 n) (A215256 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057148.P11707410308159012466

namespace A057148

/-- `record[and(A007088(n), A215256(n))]` -/
def P11707410308159012466.Spec : Prop :=
  ∀ n, P11707410308159012466.a n = A057148 (n + 1)

end A057148

/-!
# A057150: Triangle read by rows: T(n,k) = number of k X k binary matrices with n ones, with no zero rows or columns, up to row and column permutation.

The programs for A057150, there is no canonical definition to state claims against.
-/

/-! ## A057150.P424745778088829478

`A329320(A144402(n)^3)`
-/

namespace A057150.P424745778088829478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A144402 n ^ 3).toNat

end

end A057150.P424745778088829478

/-! ## A057150.P12678008543667238386

`A347705(A260443(A144402(n)))`
-/

namespace A057150.P12678008543667238386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347705 (A260443 (A144402 n).toNat).toNat

end

end A057150.P12678008543667238386

/-! ## A057150.P3465247549062087305

`A008687(A144402(n)^A268830(n))`
-/

namespace A057150.P3465247549062087305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (SequenceMachineLib.roundAway ((A144402 n : ℚ) ^ (A268830 n : ℤ))).toNat

end

end A057150.P3465247549062087305

/-! ## A057150.P8313805368491715480

`A008687(A144402(n)^A333733(n))`
-/

namespace A057150.P8313805368491715480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (SequenceMachineLib.roundAway ((A144402 n : ℚ) ^ (A333733 n : ℤ))).toNat

end

end A057150.P8313805368491715480

/-! ## A057150.P14805168734614842734

`A008687(A144402(n)^A333737(n))`
-/

namespace A057150.P14805168734614842734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (SequenceMachineLib.roundAway ((A144402 n : ℚ) ^ (A333737 n : ℤ))).toNat

end

end A057150.P14805168734614842734

/-!
# A057151: Number of square binary matrices with n ones, with no zero rows or columns, up to row and column permutation.

The programs for A057151, there is no canonical definition to state claims against.
-/

/-! ## A057151.P15693309597053023030

`A024417(or(A127126(n), A183115(n)))`
-/

namespace A057151.P15693309597053023030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.lor (A127126 n) (A183115 n)).toNat

end

end A057151.P15693309597053023030

/-! ## A057151.P5844136278324313986

`A024417(or(A127126(n), A183120(n)))`
-/

namespace A057151.P5844136278324313986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.lor (A127126 n) (A183120 n)).toNat

end

end A057151.P5844136278324313986

/-! ## A057151.P644180996808676123

`floor(sqrt(A080900(n!)))`
-/

namespace A057151.P644180996808676123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A080900 (Nat.factorial n))

end

end A057151.P644180996808676123

/-! ## A057151.P13298189862187044085

`round(root(A091217(2*n+1), 5))`
-/

namespace A057151.P13298189862187044085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A091217 (2 * n + 1) : ℝ) ^ (1 / (5 : ℝ)))

end

end A057151.P13298189862187044085

/-!
# A057152: Limiting number of m X m binary matrices with m+n ones, with no zero rows or columns, up to row and column permutations, as m tends to infinity.

The programs for A057152, there is no canonical definition to state claims against.
-/

/-! ## A057152.P6602032398039289255

`A257277((n+3)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A057152.P6602032398039289255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A257277 ((n + 3 : ℤ) * a (n - 1)).toNat

end

end A057152.P6602032398039289255

/-!
# A057153: Construct difference array so that (1) first row begins with 1, (2) every row is monotonic increasing, (3) no number appears more than once, (4) smallest number not yet used begins a new row. Sequence gives first row of array.

The programs for A057153, there is no canonical definition to state claims against.
-/

/-! ## A057153.P8725185963537900101

`A200379(n)+a(n-1)` with `a(0)=1`
-/

namespace A057153.P8725185963537900101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A200379 n + a (n - 1)

end

end A057153.P8725185963537900101

/-! ## A057153.P16998274225387152785

`∑[A200379(round(sqrt(n²+1)))]-1`
-/

namespace A057153.P16998274225387152785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200379 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A057153.P16998274225387152785

/-! ## A057153.P2086158834462233

`A056230(∑[n+1])`
-/

namespace A057153.P2086158834462233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056230 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057153.P2086158834462233

/-! ## A057153.P10457535901148877384

`record[A056230(A000217(A003603(n+1)))]`
-/

namespace A057153.P10457535901148877384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056230 (A000217 (A003603 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057153.P10457535901148877384

/-! ## A057153.P5320804270080418919

`A056230(A000096(n)+1)%A001550(n)`
-/

namespace A057153.P5320804270080418919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056230 (A000096 n + 1).toNat) (A001550 n)

end

end A057153.P5320804270080418919

/-! ## A057153.P18115050389190440532

`gcd(A008683(8*n+4), A056230(A000096(n)+1))`
-/

namespace A057153.P18115050389190440532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (8 * n + 4)) (A056230 (A000096 n + 1).toNat)

end

end A057153.P18115050389190440532

/-! ## A057153.P10117399988989791979

`record[A056230(n+1)/A056242(n+2)]`
-/

namespace A057153.P10117399988989791979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056230 (n + 1) : ℚ) / (A056242 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057153.P10117399988989791979

/-!
# A057154: Construct difference array so that (1) first row begins with 1, (2) every row is monotonic increasing, (3) no number appears more than once, (4) smallest number not yet used begins a new row. Sequence gives numbers not used.

The programs for A057154, there is no canonical definition to state claims against.
-/

/-! ## A057154.P11682950675950805522

`eq[char[A056230(n+1)], A151909(n)]`
-/

namespace A057154.P11682950675950805522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056230 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A057154.P11682950675950805522

/-! ## A057154.P7777618536737987229

`eq[char[A056230(n+1)], A151933(n)]`
-/

namespace A057154.P7777618536737987229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056230 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A057154.P7777618536737987229

/-!
# A057155: Denominator of Sum_{k<=n} P(k)/p(k), where p(k) (resp. P(k)) is smallest (resp. largest) prime divisor of k.

The programs for A057155, there is no canonical definition to state claims against.
-/

/-! ## A057155.P5555523643683358546

`A007913(∏[A293810(n+1)%4])`
-/

namespace A057155.P5555523643683358546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293810 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057155.P5555523643683358546

/-! ## A057155.P267449140991445528

`A007913(∏[A107286(∏{p}[n+1, #])])`
-/

namespace A057155.P267449140991445528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057155.P267449140991445528

/-! ## A057155.P3096541696592022830

`A007913(∏[A324369(∏{p}[n+1, #])])`
-/

namespace A057155.P3096541696592022830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324369 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057155.P3096541696592022830

/-! ## A057155.P17323725940228373181

`A007913(∏[A020639(A051119(n+1))])`
-/

namespace A057155.P17323725940228373181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057155.P17323725940228373181

/-! ## A057155.P16509170926190097450

`A007913(∏[A020639(A133910(n+1))])`
-/

namespace A057155.P16509170926190097450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A133910 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057155.P16509170926190097450

/-!
# A057156: 

The programs for A057156, there is no canonical definition to state claims against.
-/

/-! ## A057156.P14277223165244793858

`2^(n*2^n)`
-/

namespace A057156.P14277223165244793858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n * 2 ^ n)

end

end A057156.P14277223165244793858

/-!
# A057157: 

The programs for A057157, there is no canonical definition to state claims against.
-/

/-! ## A057157.P7459356145473335749

`(2^n)^2^n-(2^n)!`
-/

namespace A057157.P7459356145473335749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n) ^ 2 ^ n : ℤ) - (Nat.factorial (2 ^ n) : ℤ)

end

end A057157.P7459356145473335749

/-!
# A057159: Numbers k that divide s(k-1), where s(1) = 1, s(k) = s(k-1) + (k+1)*3^k.

The programs for A057159, there is no canonical definition to state claims against.
-/

/-! ## A057159.P13127187148711218408

`Δ[A100425(∑[A051279(n+1)])]`
-/

namespace A057159.P13127187148711218408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051279 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100425 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057159.P13127187148711218408

/-! ## A057159.P2851332305692090055

`xor(A191846(A057961(2*n+1)), A194358(n))`
-/

namespace A057159.P2851332305692090055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A191846 (A057961 (2 * n + 1)).toNat) (A194358 n)

end

end A057159.P2851332305692090055

/-!
# A057160: Smallest value of k for which the expression k*2^(2^n-1)-1 is prime.

The programs for A057160, there is no canonical definition to state claims against.
-/

/-! ## A057160.P1785567727442287196

`A085427(2^n-1)`
-/

namespace A057160.P1785567727442287196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085427 (2 ^ n - 1)

end

end A057160.P1785567727442287196

/-! ## A057160.P4966025602214052952

`lcm((-1)^∑{e}[n+1, #], A085427(A000225(n)))`
-/

namespace A057160.P4966025602214052952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A085427 (A000225 n).toNat)

end

end A057160.P4966025602214052952

/-! ## A057160.P11160763061159710288

`A085427(A000225(n))+A065744(n)`
-/

namespace A057160.P11160763061159710288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085427 (A000225 n).toNat + A065744 n

end

end A057160.P11160763061159710288

/-! ## A057160.P282285096342663751

`A185284(n)+A085427(A000225(n))`
-/

namespace A057160.P282285096342663751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A085427 (A000225 n).toNat

end

end A057160.P282285096342663751

/-! ## A057160.P1913430392340866495

`A085427(A255047(n))+A000007(n)`
-/

namespace A057160.P1913430392340866495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085427 (A255047 n).toNat + A000007 n

end

end A057160.P1913430392340866495

/-!
# A057161: Signature-permutation of a Catalan Automorphism: rotate one step counterclockwise the triangulations of polygons encoded by A014486.

The programs for A057161, there is no canonical definition to state claims against.
-/

/-! ## A057161.P13810348725349806451

`A069767(A069769(n))`
-/

namespace A057161.P13810348725349806451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A069769 n).toNat

end

end A057161.P13810348725349806451

/-! ## A057161.P5830999133768354918

`A057163(A057162(A057163(n)))`
-/

namespace A057161.P5830999133768354918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057162 (A057163 n).toNat).toNat

end

end A057161.P5830999133768354918

/-! ## A057161.P608421268748219009

`A057164(A057504(A057164(n)))`
-/

namespace A057161.P608421268748219009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057504 (A057164 n).toNat).toNat

end

end A057161.P608421268748219009

/-! ## A057161.P7733056737649574191

`A057508(A069767(n))`
-/

namespace A057161.P7733056737649574191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A069767 n).toNat

end

end A057161.P7733056737649574191

/-! ## A057161.P6166693571100568888

`A057506(A057503(A057505(n)))`
-/

namespace A057161.P6166693571100568888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057503 (A057505 n).toNat).toNat

end

end A057161.P6166693571100568888

/-! ## A057161.P16663371225504765355

`A057163(A057506(A057504(A057163(A057506(n)))))`
-/

namespace A057161.P16663371225504765355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057506 (A057504 (A057163 (A057506 n).toNat).toNat).toNat).toNat

end

end A057161.P16663371225504765355

/-! ## A057161.P10522169243919896220

`A073283(A072796(A057162(A073283(A072796(n)))))`
-/

namespace A057161.P10522169243919896220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073283 (A072796 (A057162 (A073283 (A072796 n).toNat).toNat).toNat).toNat

end

end A057161.P10522169243919896220

/-! ## A057161.P17394369182693547369

`A072796(A073282(A057162(A072796(A073282(n)))))`
-/

namespace A057161.P17394369182693547369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A073282 (A057162 (A072796 (A073282 n).toNat).toNat).toNat).toNat

end

end A057161.P17394369182693547369

/-! ## A057161.P12366608170677196557

`A130359(A057162(A130359(n)))`
-/

namespace A057161.P12366608170677196557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 (A057162 (A130359 n).toNat).toNat

end

end A057161.P12366608170677196557

/-! ## A057161.P10097180585120983896

`A130363(A057162(A130363(n)))`
-/

namespace A057161.P10097180585120983896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130363 (A057162 (A130363 n).toNat).toNat

end

end A057161.P10097180585120983896

/-!
# A057162: Signature-permutation of a Catalan Automorphism: rotate one step clockwise the triangulations of polygons encoded by A014486.

The programs for A057162, there is no canonical definition to state claims against.
-/

/-! ## A057162.P6728402797599282152

`A069768(A057508(n))`
-/

namespace A057162.P6728402797599282152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A057508 n).toNat

end

end A057162.P6728402797599282152

/-! ## A057162.P11537318574519712456

`A057163(A057161(A057163(n)))`
-/

namespace A057162.P11537318574519712456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057161 (A057163 n).toNat).toNat

end

end A057162.P11537318574519712456

/-! ## A057162.P1271010623264045503

`A057164(A057503(A057164(n)))`
-/

namespace A057162.P1271010623264045503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057503 (A057164 n).toNat).toNat

end

end A057162.P1271010623264045503

/-! ## A057162.P10434382609358824714

`A069769(A069768(n))`
-/

namespace A057162.P10434382609358824714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069769 (A069768 n).toNat

end

end A057162.P10434382609358824714

/-! ## A057162.P8387117376267094605

`A057164(A057505(A057161(A057164(A057505(n)))))`
-/

namespace A057162.P8387117376267094605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057505 (A057161 (A057164 (A057505 n).toNat).toNat).toNat).toNat

end

end A057162.P8387117376267094605

/-! ## A057162.P3650459287642505988

`A057505(A057163(A057503(A057163(A057506(n)))))`
-/

namespace A057162.P3650459287642505988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057163 (A057503 (A057163 (A057506 n).toNat).toNat).toNat).toNat

end

end A057162.P3650459287642505988

/-! ## A057162.P16997382920112488645

`A069768(A057161(A069768(A069768(A069767(n)))))`
-/

namespace A057162.P16997382920112488645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A057161 (A069768 (A069768 (A069767 n).toNat).toNat).toNat).toNat

end

end A057162.P16997382920112488645

/-! ## A057162.P14233511784294994352

`A069768(A057161(A069768(A069787(A069787(n)))))`
-/

namespace A057162.P14233511784294994352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A057161 (A069768 (A069787 (A069787 n).toNat).toNat).toNat).toNat

end

end A057162.P14233511784294994352

/-! ## A057162.P14701950379526298102

`A130360(A057161(A130360(n)))`
-/

namespace A057162.P14701950379526298102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130360 (A057161 (A130360 n).toNat).toNat

end

end A057162.P14701950379526298102

/-! ## A057162.P15087312276106742696

`A130364(A057161(A130364(n)))`
-/

namespace A057162.P15087312276106742696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130364 (A057161 (A130364 n).toNat).toNat

end

end A057162.P15087312276106742696

/-! ## A057162.P6467838614299825890

`A069767(A130981(A057161(A069767(A130981(n)))))`
-/

namespace A057162.P6467838614299825890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A130981 (A057161 (A069767 (A130981 n).toNat).toNat).toNat).toNat

end

end A057162.P6467838614299825890

/-!
# A057163: Signature-permutation of a Catalan automorphism: Reflect a rooted plane binary tree; Deutsch's 1998 involution on Dyck paths.

The programs for A057163, there is no canonical definition to state claims against.
-/

/-! ## A057163.P1654866785566216993

`A083927(A057164(A057123(n)))`
-/

namespace A057163.P1654866785566216993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083927 (A057164 (A057123 n).toNat).toNat

end

end A057163.P1654866785566216993

/-! ## A057163.P12038695070508865602

`A057506(A057164(n))`
-/

namespace A057163.P12038695070508865602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057164 n).toNat

end

end A057163.P12038695070508865602

/-! ## A057163.P11718587453277493352

`A073282(A072797(n))`
-/

namespace A057163.P11718587453277493352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A072797 n).toNat

end

end A057163.P11718587453277493352

/-! ## A057163.P9758323040923432047

`A057505(A069787(n))`
-/

namespace A057163.P9758323040923432047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A069787 n).toNat

end

end A057163.P9758323040923432047

/-! ## A057163.P6220390677652061286

`A074682(A082360(n))`
-/

namespace A057163.P6220390677652061286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074682 (A082360 n).toNat

end

end A057163.P6220390677652061286

/-! ## A057163.P10346114919075517531

`A082358(A082355(n))`
-/

namespace A057163.P10346114919075517531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082358 (A082355 n).toNat

end

end A057163.P10346114919075517531

/-! ## A057163.P11540915964768700003

`A073283(A072796(n))`
-/

namespace A057163.P11540915964768700003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073283 (A072796 n).toNat

end

end A057163.P11540915964768700003

/-! ## A057163.P16886742198560483060

`A074684(A082359(n))`
-/

namespace A057163.P16886742198560483060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A082359 n).toNat

end

end A057163.P16886742198560483060

/-! ## A057163.P8302473191943705487

`A082333(A082313(n))`
-/

namespace A057163.P8302473191943705487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A082313 n).toNat

end

end A057163.P8302473191943705487

/-! ## A057163.P11863486182474406378

`A057164(A057505(n))`
-/

namespace A057163.P11863486182474406378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057505 n).toNat

end

end A057163.P11863486182474406378

/-! ## A057163.P5875867883858301654

`A069787(A057506(n))`
-/

namespace A057163.P5875867883858301654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A057506 n).toNat

end

end A057163.P5875867883858301654

/-! ## A057163.P13996829340177298871

`A073280(A069770(n))`
-/

namespace A057163.P13996829340177298871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A069770 n).toNat

end

end A057163.P13996829340177298871

/-! ## A057163.P9376978681603575923

`A072796(A073282(n))`
-/

namespace A057163.P9376978681603575923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A073282 n).toNat

end

end A057163.P9376978681603575923

/-! ## A057163.P15270064205018616696

`A072797(A073283(n))`
-/

namespace A057163.P15270064205018616696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A073283 n).toNat

end

end A057163.P15270064205018616696

/-! ## A057163.P5299567344540613603

`A082331(A069888(n))`
-/

namespace A057163.P5299567344540613603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A069888 n).toNat

end

end A057163.P5299567344540613603

/-! ## A057163.P13064345300528422553

`A069888(A082332(n))`
-/

namespace A057163.P13064345300528422553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A082332 n).toNat

end

end A057163.P13064345300528422553

/-! ## A057163.P13504671852402003714

`A082359(A074681(n))`
-/

namespace A057163.P13504671852402003714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 (A074681 n).toNat

end

end A057163.P13504671852402003714

/-! ## A057163.P18098749396543458020

`A082360(A074683(n))`
-/

namespace A057163.P18098749396543458020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A074683 n).toNat

end

end A057163.P18098749396543458020

/-! ## A057163.P12887359746012313619

`A082313(A082334(n))`
-/

namespace A057163.P12887359746012313619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082334 n).toNat

end

end A057163.P12887359746012313619

/-! ## A057163.P6924301888438644886

`A082356(A082357(n))`
-/

namespace A057163.P6924301888438644886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082356 (A082357 n).toNat

end

end A057163.P6924301888438644886

/-!
# A057164: Self-inverse permutation of natural numbers induced by reflections of the rooted plane trees and mountain ranges encoded by A014486.

The programs for A057164, there is no canonical definition to state claims against.
-/

/-! ## A057164.P10354735259404708286

`A080300(A036044(A014486(n)))`
-/

namespace A057164.P10354735259404708286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A036044 (A014486 n).toNat).toNat

end

end A057164.P10354735259404708286

/-! ## A057164.P5350861633815653013

`A071661(A069787(n))`
-/

namespace A057164.P5350861633815653013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071661 (A069787 n).toNat

end

end A057164.P5350861633815653013

/-! ## A057164.P13864473513599550544

`A082313(A082315(n))`
-/

namespace A057164.P13864473513599550544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082315 n).toNat

end

end A057164.P13864473513599550544

/-! ## A057164.P18416227507977879216

`A085161(A085171(n))`
-/

namespace A057164.P18416227507977879216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085171 n).toNat

end

end A057164.P18416227507977879216

/-! ## A057164.P3026095126841599188

`A069772(A069771(n))`
-/

namespace A057164.P3026095126841599188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A069771 n).toNat

end

end A057164.P3026095126841599188

/-! ## A057164.P11710834427767391176

`A082315(A082314(n))`
-/

namespace A057164.P11710834427767391176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A082314 n).toNat

end

end A057164.P11710834427767391176

/-! ## A057164.P17749759954402966008

`A069787(A071662(n))`
-/

namespace A057164.P17749759954402966008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A071662 n).toNat

end

end A057164.P17749759954402966008

/-! ## A057164.P8341029810969590537

`A082316(A082313(n))`
-/

namespace A057164.P8341029810969590537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (A082313 n).toNat

end

end A057164.P8341029810969590537

/-! ## A057164.P2151390592142334968

`A082314(A082316(n))`
-/

namespace A057164.P2151390592142334968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082316 n).toNat

end

end A057164.P2151390592142334968

/-! ## A057164.P16927968371304515004

`A085172(A085161(n))`
-/

namespace A057164.P16927968371304515004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085172 (A085161 n).toNat

end

end A057164.P16927968371304515004

/-! ## A057164.P12269535072243465440

`A057505(A057163(n))`
-/

namespace A057164.P12269535072243465440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057163 n).toNat

end

end A057164.P12269535072243465440

/-! ## A057164.P8492903395273949263

`A057163(A057506(n))`
-/

namespace A057164.P8492903395273949263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057506 n).toNat

end

end A057164.P8492903395273949263

/-! ## A057164.P3004672237622151115

`A069888(A057501(n))`
-/

namespace A057164.P3004672237622151115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A057501 n).toNat

end

end A057164.P3004672237622151115

/-! ## A057164.P4490390339451139448

`A069889(A057502(n))`
-/

namespace A057164.P4490390339451139448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A057502 n).toNat

end

end A057164.P4490390339451139448

/-! ## A057164.P13616101663897327002

`A057502(A069888(n))`
-/

namespace A057164.P13616101663897327002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A069888 n).toNat

end

end A057164.P13616101663897327002

/-! ## A057164.P14212900389742348997

`A057501(A069889(n))`
-/

namespace A057164.P14212900389742348997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A069889 n).toNat

end

end A057164.P14212900389742348997

/-! ## A057164.P7215316701703102399

`A130922(A074684(n))`
-/

namespace A057164.P7215316701703102399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A074684 n).toNat

end

end A057164.P7215316701703102399

/-! ## A057164.P9851748040229295690

`A074683(A130921(n))`
-/

namespace A057164.P9851748040229295690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A130921 n).toNat

end

end A057164.P9851748040229295690

/-! ## A057164.P18184362449675447267

`A127292(A127289(n))`
-/

namespace A057164.P18184362449675447267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (A127289 n).toNat

end

end A057164.P18184362449675447267

/-! ## A057164.P5179786805458065068

`A130921(A125981(n))`
-/

namespace A057164.P5179786805458065068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A125981 n).toNat

end

end A057164.P5179786805458065068

/-!
# A057165: Indices of addition steps in Recamán's sequence A005132.

The programs for A057165, there is no canonical definition to state claims against.
-/

/-! ## A057165.P10893367155065050039

`comp[A057166(n+1)]`
-/

namespace A057165.P10893367155065050039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A057165.P10893367155065050039

/-! ## A057165.P18108513612694397838

`comp[A005132(n)-A005132(n+1)]`
-/

namespace A057165.P18108513612694397838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n - A005132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A057165.P18108513612694397838

/-! ## A057165.P1318551247552067404

`lt[0, A160357(n)]`
-/

namespace A057165.P1318551247552067404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057165.P1318551247552067404

/-! ## A057165.P15842885275475437535

`record[n*A160357(n%(n+1))]`
-/

namespace A057165.P15842885275475437535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160357 (n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057165.P15842885275475437535

/-! ## A057165.P11938196789093829929

`eq[1, A160357(A028310(n))]`
-/

namespace A057165.P11938196789093829929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057165.P11938196789093829929

/-! ## A057165.P14517828849275682612

`record[n^A160357(n)]%A022554(n+1)`
-/

namespace A057165.P14517828849275682612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A160357 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A022554 (n + 1))

end

end A057165.P14517828849275682612

/-! ## A057165.P16644832079751794985

`eq[A160357(floor((1/2)^(n-1))), A160357(n)]`
-/

namespace A057165.P16644832079751794985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 ⌊((1 : ℚ) / 2) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057165.P16644832079751794985

/-! ## A057165.P5496826310475116169

`record[Δ[A063733(n)]]`
-/

namespace A057165.P5496826310475116169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057165.P5496826310475116169

/-! ## A057165.P16987087619735162124

`record[A063733(n+1)-A063733(n)]`
-/

namespace A057165.P16987087619735162124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (n + 1) - A063733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057165.P16987087619735162124

/-! ## A057165.P12946771189227237541

`eq[abs(A160357(n+1)), A160357(n)]`
-/

namespace A057165.P12946771189227237541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A160357 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057165.P12946771189227237541

/-! ## A057165.P7141375667207199149

`lt[A003984(n)-1, Δ[A063733(n)]]`
-/

namespace A057165.P7141375667207199149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057165.P7141375667207199149

/-! ## A057165.P1862611322454656337

`eq[A022446(n)*A160357(n), A022446(n)]`
-/

namespace A057165.P1862611322454656337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022446 n * A160357 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022446 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057165.P1862611322454656337

/-! ## A057165.P15318080657844058430

`eq[A057428(n)*A160357(n), A057428(n)]`
-/

namespace A057165.P15318080657844058430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A160357 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057165.P15318080657844058430

/-!
# A057166: Indices of subtraction steps in Recamán's sequence A005132.

The programs for A057166, there is no canonical definition to state claims against.
-/

/-! ## A057166.P4138096498451175014

`lt[A005132(n+1), A005132(n)]+1`
-/

namespace A057166.P4138096498451175014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A057166.P4138096498451175014

/-! ## A057166.P11814722658538803148

`comp[A057165(n+1)]`
-/

namespace A057166.P11814722658538803148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A057166.P11814722658538803148

/-! ## A057166.P7531808837398072214

`lt[A160357(n), 0]`
-/

namespace A057166.P7531808837398072214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057166.P7531808837398072214

/-! ## A057166.P5596654018262178593

`lt[Δ[A063733(n)], 0]`
-/

namespace A057166.P5596654018262178593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A057166.P5596654018262178593

/-! ## A057166.P621324541561177155

`record[-A160356(n+4)]`
-/

namespace A057166.P621324541561177155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A160356 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057166.P621324541561177155

/-! ## A057166.P18440308154175312223

`record[Δ[A377748(n+3)]]`
-/

namespace A057166.P18440308154175312223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377748 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057166.P18440308154175312223

/-! ## A057166.P10748855092289575714

`lt[A160356(n+1), 0]+1`
-/

namespace A057166.P10748855092289575714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057166.P10748855092289575714

/-! ## A057166.P13464331099891395933

`eq[A057428(n), A160357(n)]`
-/

namespace A057166.P13464331099891395933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057166.P13464331099891395933

/-! ## A057166.P8500919669769313907

`A028310(eq[0, A160357(n)+1])`
-/

namespace A057166.P8500919669769313907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057166.P8500919669769313907

/-! ## A057166.P5669729905669546918

`A028310(eq[2, 1-A160357(n)])`
-/

namespace A057166.P5669729905669546918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057166.P5669729905669546918

/-! ## A057166.P9816925225037601934

`eq[A160357(n)+1, A000007(n)]`
-/

namespace A057166.P9816925225037601934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057166.P9816925225037601934

/-! ## A057166.P10823803173925690201

`lt[A063733(n+1), A063733(n)]`
-/

namespace A057166.P10823803173925690201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057166.P10823803173925690201

/-! ## A057166.P4412403253584156922

`eq[A008683(A007918(n)), A160357(n)]`
-/

namespace A057166.P4412403253584156922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057166.P4412403253584156922

/-! ## A057166.P1926642761616834889

`eq[A008683(A020483(n)), A160357(n)]`
-/

namespace A057166.P1926642761616834889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057166.P1926642761616834889

/-! ## A057166.P2592181018111378239

`eq[A008683(A020484(n)), A160357(n)]`
-/

namespace A057166.P2592181018111378239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057166.P2592181018111378239

/-!
# A057167: Term in Recamán's sequence A005132 where n appears for first time, or -1 if n never appears.

The programs for A057167, there is no canonical definition to state claims against.
-/

/-! ## A057167.P13510290106487607666

`A355646(n*A064284(n))`
-/

namespace A057167.P13510290106487607666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355646 ((n : ℤ) * A064284 n).toNat

end

end A057167.P13510290106487607666

/-! ## A057167.P10391411032044449860

`A355646(n)%record[A355695(3*(n+1))]`
-/

namespace A057167.P10391411032044449860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355695 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355646 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A057167.P10391411032044449860

/-! ## A057167.P6640423494743114267

`A355646(n)+A185014(A355653(n))`
-/

namespace A057167.P6640423494743114267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355646 n + A185014 (A355653 n).toNat

end

end A057167.P6640423494743114267

/-! ## A057167.P13222679650573323616

`A355646(n)%A137715(A008000(n))`
-/

namespace A057167.P13222679650573323616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355646 n) (A137715 (A008000 n).toNat)

end

end A057167.P13222679650573323616

/-! ## A057167.P2042643257298507731

`and(A355646(n), A359082(n+1))`
-/

namespace A057167.P2042643257298507731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A355646 n) (A359082 (n + 1))

end

end A057167.P2042643257298507731

/-!
# A057168: Next larger integer with same binary weight (number of 1 bits) as n.

The programs for A057168, the canonical program `A057168.P11619556814711801112` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057168 has offset 1).

The definition of A057168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057168.P892965721013024622

`A006519(A003602(n+1))+or(n, n+1)`
-/

namespace A057168.P892965721013024622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A003602 (n + 1)).toNat + (Nat.lor n (n + 1) : ℤ)

end

end A057168.P892965721013024622

namespace A057168

/-- `A006519(A003602(n+1))+or(n, n+1)` -/
def P892965721013024622.Spec : Prop :=
  ∀ n, P892965721013024622.a n = A057168 (n + 1)

end A057168

/-! ## A057168.P4604660031413509649

`A006519(A003602(n+1))+A006519(n+1)+n`
-/

namespace A057168.P4604660031413509649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A003602 (n + 1)).toNat + (A006519 (n + 1) + (n : ℤ))

end

end A057168.P4604660031413509649

namespace A057168

/-- `A006519(A003602(n+1))+A006519(n+1)+n` -/
def P4604660031413509649.Spec : Prop :=
  ∀ n, P4604660031413509649.a n = A057168 (n + 1)

end A057168

/-! ## A057168.P11619556814711801112

`A006519(n+1)+A006519(A025480(n)+1)+n`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A057168

/-- `A006519(n+1)+A006519(A025480(n)+1)+n` -/
def P11619556814711801112.Spec : Prop :=
  ∀ n, P11619556814711801112.a n = A057168 (n + 1)

theorem P11619556814711801112.correct : P11619556814711801112.Spec := by
  intro n
  simp only [A057168, Nat.add_sub_cancel]

end A057168

/-! ## A057168.P5359512484580791602

`A000010(A006519(A000265(n+1)+1))+or(n, n+1)`
-/

namespace A057168.P5359512484580791602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006519 (A000265 (n + 1) + 1).toNat).toNat + (Nat.lor n (n + 1) : ℤ)

end

end A057168.P5359512484580791602

namespace A057168

/-- `A000010(A006519(A000265(n+1)+1))+or(n, n+1)` -/
def P5359512484580791602.Spec : Prop :=
  ∀ n, P5359512484580791602.a n = A057168 (n + 1)

end A057168

/-! ## A057168.P16702666166273205151

`A171942(n+2)+1+n`
-/

namespace A057168.P16702666166273205151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (n + 2) + 1 + (n : ℤ)

end

end A057168.P16702666166273205151

namespace A057168

/-- `A171942(n+2)+1+n` -/
def P16702666166273205151.Spec : Prop :=
  ∀ n, P16702666166273205151.a n = A057168 (n + 1)

end A057168

/-!
# A057169: Least integer with the same nonzero decimal digits as n and one more 0 digit.

The programs for A057169, there is no canonical definition to state claims against.
-/

/-! ## A057169.P8548354304214354306

`A328447(10*(n+1))`
-/

namespace A057169.P8548354304214354306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (10 * (n + 1))

end

end A057169.P8548354304214354306

/-! ## A057169.P14725282972133619313

`A360443(A004186(n+1))`
-/

namespace A057169.P14725282972133619313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360443 (A004186 (n + 1)).toNat

end

end A057169.P14725282972133619313

/-! ## A057169.P1337495556740319211

`A333659(A004186(10*(n+1)))`
-/

namespace A057169.P1337495556740319211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A004186 (10 * (n + 1))).toNat

end

end A057169.P1337495556740319211

/-! ## A057169.P1094844871076974651

`A360443(A068637(n+1))%A355852(n+1)`
-/

namespace A057169.P1094844871076974651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360443 (A068637 (n + 1)).toNat) (A355852 (n + 1))

end

end A057169.P1094844871076974651

/-!
# A057170: 2-enumeration of 2n X 2n half-turn symmetric alternating-sign matrices.

The programs for A057170, there is no canonical definition to state claims against.
-/

/-! ## A057170.P1427264354453676446

`A372145(comp[2*(n+1)])`
-/

namespace A057170.P1427264354453676446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372145 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A057170.P1427264354453676446

/-! ## A057170.P16984666610611694756

`record[and(A033999(n), A372145(n))]`
-/

namespace A057170.P16984666610611694756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A372145 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057170.P16984666610611694756

/-! ## A057170.P9354146458103306463

`record[A372145(A328480(2*n+1))]`
-/

namespace A057170.P9354146458103306463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372145 (A328480 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057170.P9354146458103306463

/-! ## A057170.P3696295214325357274

`A372145(2*n)/Δ[A000225(n)]`
-/

namespace A057170.P3696295214325357274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372145 (2 * n) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A057170.P3696295214325357274

/-! ## A057170.P10167459598919333238

`record[A372145(n)^A033999(n+1)]`
-/

namespace A057170.P10167459598919333238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372145 n : ℚ) ^ (A033999 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057170.P10167459598919333238

/-!
# A057171: Numbers k such that (5^k + 1)/6 is a prime.

The programs for A057171, there is no canonical definition to state claims against.
-/

/-! ## A057171.P10100151142352232786

`p?[A138925(n+1)]`
-/

namespace A057171.P10100151142352232786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057171.P10100151142352232786

/-! ## A057171.P13288282066423933604

`p?[record[A138925(A052938(n))]]`
-/

namespace A057171.P13288282066423933604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138925 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057171.P13288282066423933604

/-! ## A057171.P10845364256436981581

`p?[record[A138925(A126759(n))]]`
-/

namespace A057171.P10845364256436981581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138925 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057171.P10845364256436981581

/-! ## A057171.P14072275827806256264

`p?[record[A138925(A133310(n))]]`
-/

namespace A057171.P14072275827806256264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138925 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057171.P14072275827806256264

/-! ## A057171.P18376504377380174109

`p?[record[A138925(A134478(n))]]`
-/

namespace A057171.P18376504377380174109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138925 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057171.P18376504377380174109

/-!
# A057172: Numbers k such that (6^k + 1)/7 is a prime.

The programs for A057172, there is no canonical definition to state claims against.
-/

/-! ## A057172.P10129354289845529117

`p?[A138924(n+1)]`
-/

namespace A057172.P10129354289845529117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057172.P10129354289845529117

/-! ## A057172.P13725475874865830442

`p?[record[A138924(A051340(n))]]`
-/

namespace A057172.P13725475874865830442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138924 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057172.P13725475874865830442

/-! ## A057172.P13989671272717440020

`p?[record[A138924(A126759(n))]]`
-/

namespace A057172.P13989671272717440020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138924 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057172.P13989671272717440020

/-! ## A057172.P676191079812824562

`p?[record[A138924(A134478(n))]]`
-/

namespace A057172.P676191079812824562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138924 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057172.P676191079812824562

/-! ## A057172.P3736392148625232151

`record[A020639(A138924(n+5))]`
-/

namespace A057172.P3736392148625232151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A138924 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057172.P3736392148625232151

/-!
# A057173: Numbers k such that (7^k + 1)/8 is a prime.

The programs for A057173, there is no canonical definition to state claims against.
-/

/-! ## A057173.P8044972537650928718

`p?[A138923(n+1)]`
-/

namespace A057173.P8044972537650928718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057173.P8044972537650928718

/-! ## A057173.P4143115239565674182

`p?[record[A138923(A008619(n))]]`
-/

namespace A057173.P4143115239565674182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138923 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057173.P4143115239565674182

/-! ## A057173.P9362415956800586314

`p?[record[A138923(A028310(n))]]`
-/

namespace A057173.P9362415956800586314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138923 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057173.P9362415956800586314

/-! ## A057173.P2250873082630523952

`record[A020639(A138923(n+2))]`
-/

namespace A057173.P2250873082630523952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A138923 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057173.P2250873082630523952

/-!
# A057174: a(n+3)=a(n)+a(n+1)-a(n+2), starting with 1,2,3.

The programs for A057174, the canonical program `A057174.P1330447698517029401` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057174 has offset 0).

The definition of A057174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057174.P1330447698517029401

`2+(n-1)*(-1)^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057174

/-- `2+(n-1)*(-1)^n` -/
def P1330447698517029401.Spec : Prop :=
  ∀ n, P1330447698517029401.a n = A057174 n

theorem P1330447698517029401.correct : P1330447698517029401.Spec := by
  intro n
  simp only [A057174]

end A057174

/-! ## A057174.P18390368320165327114

`xor(1, 4-a(n-1))` with `a(0)=1`
-/

namespace A057174.P18390368320165327114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (4 - a (n - 1))

end

end A057174.P18390368320165327114

namespace A057174

/-- `xor(1, 4-a(n-1))` -/
def P18390368320165327114.Spec : Prop :=
  ∀ n, P18390368320165327114.a n = A057174 n

end A057174

/-! ## A057174.P7530337452735899968

`∑[ogf((1+3x+4x^2)/(1+2x+x^2))]`
-/

namespace A057174.P7530337452735899968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4] [1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057174.P7530337452735899968

namespace A057174

/-- `∑[ogf((1+3x+4x^2)/(1+2x+x^2))]` -/
def P7530337452735899968.Spec : Prop :=
  ∀ n, P7530337452735899968.a n = A057174 n

end A057174

/-! ## A057174.P14572921149551432492

`ogf((1+3x+4x^2)/(1+x-x^2-x^3))`
-/

namespace A057174.P14572921149551432492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4] [1, 1, -1, -1] n

end

end A057174.P14572921149551432492

namespace A057174

/-- `ogf((1+3x+4x^2)/(1+x-x^2-x^3))` -/
def P14572921149551432492.Spec : Prop :=
  ∀ n, P14572921149551432492.a n = A057174 n

end A057174

/-! ## A057174.P5820912538099544965

`Δ[ceil(xor(1, n)/2)+lcm(2, n)]`
-/

namespace A057174.P5820912538099544965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ + (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057174.P5820912538099544965

namespace A057174

/-- `Δ[ceil(xor(1, n)/2)+lcm(2, n)]` -/
def P5820912538099544965.Spec : Prop :=
  ∀ n, P5820912538099544965.a n = A057174 n

end A057174

/-! ## A057174.P9109494290100772013

`floor((-1)^n+4-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A057174.P9109494290100772013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n + (4 - a (n - 1))

end

end A057174.P9109494290100772013

namespace A057174

/-- `floor((-1)^n+4-a(n-1))` -/
def P9109494290100772013.Spec : Prop :=
  ∀ n, P9109494290100772013.a n = A057174 n

theorem P9109494290100772013.correct : P9109494290100772013.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A057174, Nat.add_sub_cancel, A057174.P9109494290100772013.a, A057174.P1330447698517029401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A057174, Nat.add_sub_cancel, A057174.P9109494290100772013.a, A057174.P1330447698517029401.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A057174

/-! ## A057174.P15061699290389921250

`floor((-1)^n-(a(n-1)-4))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A057174.P15061699290389921250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n - (a (n - 1) - 4)

end

end A057174.P15061699290389921250

namespace A057174

/-- `floor((-1)^n-(a(n-1)-4))` -/
def P15061699290389921250.Spec : Prop :=
  ∀ n, P15061699290389921250.a n = A057174 n

theorem P15061699290389921250.correct : P15061699290389921250.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A057174, Nat.add_sub_cancel, A057174.P15061699290389921250.a, A057174.P1330447698517029401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A057174, Nat.add_sub_cancel, A057174.P15061699290389921250.a, A057174.P1330447698517029401.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A057174

/-! ## A057174.P12966135440825047861

`∑[2*(-1)^n-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A057174.P12966135440825047861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (-1) ^ n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057174.P12966135440825047861

namespace A057174

/-- `∑[2*(-1)^n-a(n-1)]` -/
def P12966135440825047861.Spec : Prop :=
  ∀ n, P12966135440825047861.a n = A057174 n

end A057174

/-! ## A057174.P8851263216125488812

`floor(2*gcd(2, n)+1-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A057174.P8851263216125488812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * Nat.gcd 2 n + 1 : ℤ) - a (n - 1)

end

end A057174.P8851263216125488812

namespace A057174

/-- `floor(2*gcd(2, n)+1-a(n-1))` -/
def P8851263216125488812.Spec : Prop :=
  ∀ n, P8851263216125488812.a n = A057174 n

end A057174

/-! ## A057174.P14030185670819941190

`floor(2*a(n-2)-a(n-4))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A057174.P14030185670819941190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 0] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A057174.P14030185670819941190

namespace A057174

/-- `floor(2*a(n-2)-a(n-4))` -/
def P14030185670819941190.Spec : Prop :=
  ∀ n, P14030185670819941190.a n = A057174 n

theorem P14030185670819941190.correct : P14030185670819941190.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A057174, Nat.add_sub_cancel, A057174.P14030185670819941190.a, A057174.P1330447698517029401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A057174, Nat.add_sub_cancel, A057174.P14030185670819941190.a, A057174.P1330447698517029401.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [h2, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A057174

/-! ## A057174.P11365342086730530058

`∑[(a(n-1)²-4)/a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A057174.P11365342086730530058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  (f1 (n - 1) ^ 2 - 4) / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057174.P11365342086730530058

namespace A057174

/-- `∑[(a(n-1)²-4)/a(n-2)]` -/
def P11365342086730530058.Spec : Prop :=
  ∀ n, P11365342086730530058.a n = (A057174 n : ℚ)

end A057174

/-! ## A057174.P727818208132236239

`floor(a(n-2)+a(n-3)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A057174.P727818208132236239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 1)

end

end A057174.P727818208132236239

namespace A057174

/-- `floor(a(n-2)+a(n-3)-a(n-1))` -/
def P727818208132236239.Spec : Prop :=
  ∀ n, P727818208132236239.a n = A057174 n

theorem P727818208132236239.correct : P727818208132236239.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A057174, Nat.add_sub_cancel, A057174.P727818208132236239.a, A057174.P1330447698517029401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A057174, Nat.add_sub_cancel, A057174.P727818208132236239.a, A057174.P1330447698517029401.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A057174

/-! ## A057174.P15429583859091401354

`4*(2-(a(n-2)+2*a(n-1))/4)` with `a(0)=1, a(1)=2`
-/

namespace A057174.P15429583859091401354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (2 - (a (n - 2) + 2 * a (n - 1)) / 4)

end

end A057174.P15429583859091401354

namespace A057174

/-- `4*(2-(a(n-2)+2*a(n-1))/4)` -/
def P15429583859091401354.Spec : Prop :=
  ∀ n, P15429583859091401354.a n = (A057174 n : ℚ)

theorem P15429583859091401354.correct : P15429583859091401354.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A057174, Nat.add_sub_cancel, A057174.P15429583859091401354.a, A057174.P1330447698517029401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A057174, Nat.add_sub_cancel, A057174.P15429583859091401354.a, A057174.P1330447698517029401.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A057174

/-! ## A057174.P14419193368874032622

`floor(a(n-2)-floor(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=2, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A057174.P14419193368874032622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 3))

end

end A057174.P14419193368874032622

namespace A057174

/-- `floor(a(n-2)-floor(a(n-1)-a(n-3)))` -/
def P14419193368874032622.Spec : Prop :=
  ∀ n, P14419193368874032622.a n = A057174 n

theorem P14419193368874032622.correct : P14419193368874032622.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A057174, Nat.add_sub_cancel, A057174.P14419193368874032622.a, A057174.P1330447698517029401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A057174, Nat.add_sub_cancel, A057174.P14419193368874032622.a, A057174.P1330447698517029401.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A057174

/-! ## A057174.P11954780269026172137

`Δ[A014682(n)+xor(1, n)]`
-/

namespace A057174.P11954780269026172137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057174.P11954780269026172137

namespace A057174

/-- `Δ[A014682(n)+xor(1, n)]` -/
def P11954780269026172137.Spec : Prop :=
  ∀ n, P11954780269026172137.a n = A057174 n

end A057174

/-! ## A057174.P11220710527645363904

`xor(2-A105811(n), A057427(n))`
-/

namespace A057174.P11220710527645363904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 - A105811 n) (A057427 n)

end

end A057174.P11220710527645363904

namespace A057174

/-- `xor(2-A105811(n), A057427(n))` -/
def P11220710527645363904.Spec : Prop :=
  ∀ n, P11220710527645363904.a n = A057174 n

end A057174

/-! ## A057174.P11169807192310080861

`(A168277(n+1)-A004442(n+1))*A033999(n)`
-/

namespace A057174.P11169807192310080861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168277 (n + 1) - A004442 (n + 1)) * A033999 n

end

end A057174.P11169807192310080861

namespace A057174

/-- `(A168277(n+1)-A004442(n+1))*A033999(n)` -/
def P11169807192310080861.Spec : Prop :=
  ∀ n, P11169807192310080861.a n = A057174 n

end A057174

/-! ## A057174.P3840236098545837694

`Δ[A028242(n)+lcm(2, n)]`
-/

namespace A057174.P3840236098545837694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057174.P3840236098545837694

namespace A057174

/-- `Δ[A028242(n)+lcm(2, n)]` -/
def P3840236098545837694.Spec : Prop :=
  ∀ n, P3840236098545837694.a n = A057174 n

end A057174

/-! ## A057174.P2168995160072909633

`Δ[Δ[n²]-A097140(n)]`
-/

namespace A057174.P2168995160072909633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A097140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057174.P2168995160072909633

namespace A057174

/-- `Δ[Δ[n²]-A097140(n)]` -/
def P2168995160072909633.Spec : Prop :=
  ∀ n, P2168995160072909633.a n = A057174 n

end A057174

/-! ## A057174.P15593217003143318459

`Δ[A001057(n)+2*or(1, n)]`
-/

namespace A057174.P15593217003143318459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + (2 * Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057174.P15593217003143318459

namespace A057174

/-- `Δ[A001057(n)+2*or(1, n)]` -/
def P15593217003143318459.Spec : Prop :=
  ∀ n, P15593217003143318459.a n = A057174 n

end A057174

/-!
# A057175: Numbers k such that (9^k + 1)/10 is a prime.

The programs for A057175, there is no canonical definition to state claims against.
-/

/-! ## A057175.P4447137878369745617

`p?[A138921(n+1)]`
-/

namespace A057175.P4447137878369745617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057175.P4447137878369745617

/-! ## A057175.P17633936098736474876

`p?[record[A138921(A051340(n))]]`
-/

namespace A057175.P17633936098736474876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138921 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057175.P17633936098736474876

/-! ## A057175.P2607571667386505173

`record[A020639(A138921(n+2))]`
-/

namespace A057175.P2607571667386505173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A138921 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057175.P2607571667386505173

/-!
# A057177: Numbers n such that (11^n + 1)/12 is a prime.

The programs for A057177, there is no canonical definition to state claims against.
-/

/-! ## A057177.P15168561464073988228

`p?[A138919(n+1)]`
-/

namespace A057177.P15168561464073988228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057177.P15168561464073988228

/-! ## A057177.P10112290147270097821

`p?[record[A138919(A051340(n))]]`
-/

namespace A057177.P10112290147270097821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138919 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057177.P10112290147270097821

/-! ## A057177.P18146578712271875847

`p?[record[A138919(A065648(n))]]`
-/

namespace A057177.P18146578712271875847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138919 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057177.P18146578712271875847

/-!
# A057182: Numbers n such that (16^n + 1)/17 is a prime.

The programs for A057182, there is no canonical definition to state claims against.
-/

/-! ## A057182.P13274154887938087326

`p?[A195439(n+1)]`
-/

namespace A057182.P13274154887938087326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057182.P13274154887938087326

/-! ## A057182.P5541621416132246207

`p?[record[A195439(A051340(n))]]`
-/

namespace A057182.P5541621416132246207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195439 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057182.P5541621416132246207

/-! ## A057182.P4421108386202060637

`p?[record[A195439(A065648(n))]]`
-/

namespace A057182.P4421108386202060637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195439 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057182.P4421108386202060637

/-! ## A057182.P13810841704649287923

`record[A000265(A366648(n+1))]`
-/

namespace A057182.P13810841704649287923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A366648 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057182.P13810841704649287923

/-! ## A057182.P3426928877980267050

`filter[A195439(n+1), A010051(#)]`
-/

namespace A057182.P3426928877980267050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A057182.P3426928877980267050

/-!
# A057183: Numbers k such that (17^k + 1)/18 is a prime.

The programs for A057183, there is no canonical definition to state claims against.
-/

/-! ## A057183.P7889116386446446619

`p?[A261195(∑[A292978(n)])]`
-/

namespace A057183.P7889116386446446619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261195 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057183.P7889116386446446619

/-!
# A057184: Numbers n such that (18^n + 1)/19 is a prime.

The programs for A057184, there is no canonical definition to state claims against.
-/

/-! ## A057184.P9994127362754604397

`p?[round(A098730(n)/2)]`
-/

namespace A057184.P9994127362754604397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A098730 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057184.P9994127362754604397

/-!
# A057187: Numbers n such that (21^n+1)/22 is a prime.

The programs for A057187, there is no canonical definition to state claims against.
-/

/-! ## A057187.P967208028341413219

`p?[floor(cosh(n/2))+2+n]`
-/

namespace A057187.P967208028341413219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh ((n : ℚ) / 2 : ℝ)⌋ + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057187.P967208028341413219

/-! ## A057187.P10968395988470248370

`p?[A192683(n)+2+n]`
-/

namespace A057187.P10968395988470248370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192683 n + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057187.P10968395988470248370

/-!
# A057188: Numbers n such that (22^n+1)/23 is a prime.

The programs for A057188, there is no canonical definition to state claims against.
-/

/-! ## A057188.P14931700247999948498

`A000040(eq[A030307(n+1), A124770(n)])`
-/

namespace A057188.P14931700247999948498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A057188.P14931700247999948498

/-! ## A057188.P2928871252955403735

`A000040(eq[A124771(n)-1, A030307(n+1)])`
-/

namespace A057188.P2928871252955403735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A057188.P2928871252955403735

/-!
# A057189: Numbers n such that (23^n+1)/24 is a prime.

The programs for A057189, there is no canonical definition to state claims against.
-/

/-! ## A057189.P772540095095889944

`A347337(A197539(n+2))`
-/

namespace A057189.P772540095095889944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347337 (A197539 (n + 2)).toNat

end

end A057189.P772540095095889944

/-!
# A057191: Numbers n such that (25^n+1)/26 is a prime.

The programs for A057191, there is no canonical definition to state claims against.
-/

/-! ## A057191.P4803106106010264580

`p?[A174571(A138925(n+1))]`
-/

namespace A057191.P4803106106010264580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A138925 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057191.P4803106106010264580

/-! ## A057191.P8638936337185484403

`p?[A174571(A138935(n+1))]`
-/

namespace A057191.P8638936337185484403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A138935 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057191.P8638936337185484403

/-!
# A057192: Least m such that 1 + prime(n)*2^m is a prime, or -1 if no such m exists.

The programs for A057192, there is no canonical definition to state claims against.
-/

/-! ## A057192.P775519644627670110

`A040076(A000040(n+1))`
-/

namespace A057192.P775519644627670110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A000040 (n + 1)).toNat

end

end A057192.P775519644627670110

/-! ## A057192.P9471449711404065084

`A040076(A006005(n+1))`
-/

namespace A057192.P9471449711404065084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A006005 (n + 1)).toNat

end

end A057192.P9471449711404065084

/-! ## A057192.P15103872160102775055

`A046067(A111333(n+1))`
-/

namespace A057192.P15103872160102775055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (A111333 (n + 1)).toNat

end

end A057192.P15103872160102775055

/-! ## A057192.P10940702413519446323

`A040076(A008578(n+2))`
-/

namespace A057192.P10940702413519446323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A008578 (n + 2)).toNat

end

end A057192.P10940702413519446323

/-! ## A057192.P11737755357420978247

`A040076(A075643(n+2))`
-/

namespace A057192.P11737755357420978247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A075643 (n + 2)).toNat

end

end A057192.P11737755357420978247

/-! ## A057192.P10412228165467017383

`A040076(A182986(n+2))`
-/

namespace A057192.P10412228165467017383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A182986 (n + 2)).toNat

end

end A057192.P10412228165467017383

/-! ## A057192.P16893558987041857833

`A040076(record[A006530(n+2)])`
-/

namespace A057192.P16893558987041857833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057192.P16893558987041857833

/-! ## A057192.P14218379915692285213

`A040076(record[A014963(n+2)])`
-/

namespace A057192.P14218379915692285213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057192.P14218379915692285213

/-! ## A057192.P529648457624271493

`A040076(record[A020639(n+2)])`
-/

namespace A057192.P529648457624271493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057192.P529648457624271493

/-! ## A057192.P5920665209804015500

`A040076(A100484(n+1)/2)`
-/

namespace A057192.P5920665209804015500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A057192.P5920665209804015500

/-! ## A057192.P1233275272545491603

`A040076(lt[A040076(n+1), 1]+2)`
-/

namespace A057192.P1233275272545491603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A057192.P1233275272545491603

/-!
# A057193: Numbers n such that n | 12^n + 11^n.

The programs for A057193, there is no canonical definition to state claims against.
-/

/-! ## A057193.P14316851938248997948

`∏{e}[A358554(3*n+1), A239563(#)]`
-/

namespace A057193.P14316851938248997948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358554 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A239563 (Nat.factorization (f1 n).natAbs p)

end

end A057193.P14316851938248997948

/-!
# A057194: a(1) = 1; a(n+1) = (Product_{k=1..n} a(k)) * Sum_{k=1..n} a(k).

The programs for A057194, there is no canonical definition to state claims against.
-/

/-! ## A057194.P3703975992152355506

`∏[A000010(∏[A042707(n)])]`
-/

namespace A057194.P3703975992152355506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042707 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057194.P3703975992152355506

/-! ## A057194.P9887293808779501321

`∏[∏[A000010(A099423(2^n)+1)]]`
-/

namespace A057194.P9887293808779501321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A099423 (2 ^ n) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057194.P9887293808779501321

/-!
# A057195: Numbers k such that 2^k + 7 is prime.

The programs for A057195, there is no canonical definition to state claims against.
-/

/-! ## A057195.P18419704639118093664

`2*A217349(n+1)`
-/

namespace A057195.P18419704639118093664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217349 (n + 1)

end

end A057195.P18419704639118093664

/-! ## A057195.P2826517328835785125

`A217349(A000027(n+1))+A217349(n+1)`
-/

namespace A057195.P2826517328835785125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217349 (A000027 (n + 1)).toNat + A217349 (n + 1)

end

end A057195.P2826517328835785125

/-! ## A057195.P3257610118690035795

`A217349(A028310(n+1))+A217349(n+1)`
-/

namespace A057195.P3257610118690035795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217349 (A028310 (n + 1)).toNat + A217349 (n + 1)

end

end A057195.P3257610118690035795

/-! ## A057195.P11937671850185892222

`A217349(n+1)+A217349(A023443(n+2))`
-/

namespace A057195.P11937671850185892222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217349 (n + 1) + A217349 (A023443 (n + 2)).toNat

end

end A057195.P11937671850185892222

/-! ## A057195.P10817908698547785009

`A004277(A217349(n+1))`
-/

namespace A057195.P10817908698547785009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A217349 (n + 1)).toNat

end

end A057195.P10817908698547785009

/-!
# A057196: Numbers k such that 2^k + 9 is prime.

The programs for A057196, there is no canonical definition to state claims against.
-/

/-! ## A057196.P17744071990886119058

`eq[(2-A173854(n))², A166486(n)]`
-/

namespace A057196.P17744071990886119058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A173854 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057196.P17744071990886119058

/-! ## A057196.P9522522554161609215

`eq[A004525(A173854(n)), A166486(n)]`
-/

namespace A057196.P9522522554161609215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A173854 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057196.P9522522554161609215

/-! ## A057196.P12339207737314767800

`log2(A104070(n+1)-9)`
-/

namespace A057196.P12339207737314767800
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A104070 (n + 1) - 9 : ℝ)

end

end A057196.P12339207737314767800

/-! ## A057196.P10906467306944345714

`val(A104070(n+2)-A104070(n+1), 2)`
-/

namespace A057196.P10906467306944345714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A104070 (n + 2) - A104070 (n + 1)).toNat 2

end

end A057196.P10906467306944345714

/-!
# A057197: Numbers k such that 2^k + 15 is prime.

The programs for A057197, there is no canonical definition to state claims against.
-/

/-! ## A057197.P18239783807324354907

`val(Δ[A144487(n+1)], 2)`
-/

namespace A057197.P18239783807324354907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A057197.P18239783807324354907

/-!
# A057198: a(n) = (5*3^(n-1)+1)/2.

The programs for A057198, the canonical program `A057198.P12052933696441359078` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057198 has offset 1).

The definition of A057198 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*3^n+1)/2` (program `A057198.P11857436187259644358`, by `A057198.P11857436187259644358.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057198.P11857436187259644358

`(5*3^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057198.P11857436187259644358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 3 ^ n + 1 : ℚ) / 2

end

end A057198.P11857436187259644358

namespace A057198

/-- `(5*3^n+1)/2` -/
def P11857436187259644358.Spec : Prop :=
  ∀ n, P11857436187259644358.a n = (A057198 (n + 1) : ℚ)

theorem P11857436187259644358.correct : P11857436187259644358.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A057198, Nat.add_sub_cancel, A057198.P11857436187259644358.a, A057198.P12052933696441359078.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A057198, Nat.add_sub_cancel, A057198.P11857436187259644358.a, A057198.P12052933696441359078.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A057198

/-! ## A057198.P13769111472601654909

`ogf((3-4x)/(1-4x+3x^2))`
-/

namespace A057198.P13769111472601654909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -4, 3] n

end

end A057198.P13769111472601654909

namespace A057198

/-- `ogf((3-4x)/(1-4x+3x^2))` -/
def P13769111472601654909.Spec : Prop :=
  ∀ n, P13769111472601654909.a n = A057198 (n + 1)

end A057198

/-! ## A057198.P12188358443601081746

`round(lcm(5, 3^n)/2)`
-/

namespace A057198.P12188358443601081746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 5 (3 ^ n) : ℚ) / 2)

end

end A057198.P12188358443601081746

namespace A057198

/-- `round(lcm(5, 3^n)/2)` -/
def P12188358443601081746.Spec : Prop :=
  ∀ n, P12188358443601081746.a n = A057198 (n + 1)

end A057198

/-! ## A057198.P9288935297895689746

`3*a(n-1)-1` with `a(0)=3`
-/

namespace A057198.P9288935297895689746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) - 1

end

end A057198.P9288935297895689746

namespace A057198

/-- `3*a(n-1)-1` -/
def P9288935297895689746.Spec : Prop :=
  ∀ n, P9288935297895689746.a n = A057198 (n + 1)

theorem P9288935297895689746.correct : P9288935297895689746.Spec := by
  intro n
  simp only [A057198, Nat.add_sub_cancel, A057198.P9288935297895689746.a, A057198.P12052933696441359078.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057198

/-! ## A057198.P4905311160028249411

`lcm(3, a(n-1))-1` with `a(0)=3, a(1)=8`
-/

namespace A057198.P4905311160028249411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - 1

end

end A057198.P4905311160028249411

namespace A057198

/-- `lcm(3, a(n-1))-1` -/
def P4905311160028249411.Spec : Prop :=
  ∀ n, P4905311160028249411.a n = A057198 (n + 1)

end A057198

/-! ## A057198.P16798760022109187977

`a(n-1)/cot(atan(3))-1` with `a(0)=3`
-/

namespace A057198.P16798760022109187977
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ)) - 1

end

end A057198.P16798760022109187977

namespace A057198

/-- `a(n-1)/cot(atan(3))-1` -/
def P16798760022109187977.Spec : Prop :=
  ∀ n, P16798760022109187977.a n = (A057198 (n + 1) : ℝ)

end A057198

/-! ## A057198.P5942870486936652449

`a(n-1)/sqrt(1/9)-1` with `a(0)=3`
-/

namespace A057198.P5942870486936652449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ) - 1

end

end A057198.P5942870486936652449

namespace A057198

/-- `a(n-1)/sqrt(1/9)-1` -/
def P5942870486936652449.Spec : Prop :=
  ∀ n, P5942870486936652449.a n = (A057198 (n + 1) : ℝ)

end A057198

/-! ## A057198.P12052933696441359078

`a(n-1)+a(n-1)+a(n-1)-1` with `a(0)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057198

/-- `a(n-1)+a(n-1)+a(n-1)-1` -/
def P12052933696441359078.Spec : Prop :=
  ∀ n, P12052933696441359078.a n = A057198 (n + 1)

theorem P12052933696441359078.correct : P12052933696441359078.Spec := by
  intro n
  simp only [A057198, Nat.add_sub_cancel]

end A057198

/-! ## A057198.P12116984167787105484

`a(n-1)-(1-a(n-1)-a(n-1))` with `a(0)=3`
-/

namespace A057198.P12116984167787105484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 1))

end

end A057198.P12116984167787105484

namespace A057198

/-- `a(n-1)-(1-a(n-1)-a(n-1))` -/
def P12116984167787105484.Spec : Prop :=
  ∀ n, P12116984167787105484.a n = A057198 (n + 1)

theorem P12116984167787105484.correct : P12116984167787105484.Spec := by
  intro n
  simp only [A057198, Nat.add_sub_cancel, A057198.P12116984167787105484.a, A057198.P12052933696441359078.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057198

/-! ## A057198.P6525422652695615188

`A134931(n)+2`
-/

namespace A057198.P6525422652695615188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134931 n + 2

end

end A057198.P6525422652695615188

namespace A057198

/-- `A134931(n)+2` -/
def P6525422652695615188.Spec : Prop :=
  ∀ n, P6525422652695615188.a n = A057198 (n + 1)

end A057198

/-! ## A057198.P10486117137566351471

`Δ[A090328(n+1)]`
-/

namespace A057198.P10486117137566351471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057198.P10486117137566351471

namespace A057198

/-- `Δ[A090328(n+1)]` -/
def P10486117137566351471.Spec : Prop :=
  ∀ n, P10486117137566351471.a n = A057198 (n + 1)

end A057198

/-! ## A057198.P7474081865861488838

`Δ[A244762(n)]+1`
-/

namespace A057198.P7474081865861488838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A057198.P7474081865861488838

namespace A057198

/-- `Δ[A244762(n)]+1` -/
def P7474081865861488838.Spec : Prop :=
  ∀ n, P7474081865861488838.a n = A057198 (n + 1)

end A057198

/-! ## A057198.P12347930937474914248

`A060816(n+1)+1`
-/

namespace A057198.P12347930937474914248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 (n + 1) + 1

end

end A057198.P12347930937474914248

namespace A057198

/-- `A060816(n+1)+1` -/
def P12347930937474914248.Spec : Prop :=
  ∀ n, P12347930937474914248.a n = A057198 (n + 1)

end A057198

/-! ## A057198.P7400964271540721966

`A087503(2*n)+2`
-/

namespace A057198.P7400964271540721966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087503 (2 * n) + 2

end

end A057198.P7400964271540721966

namespace A057198

/-- `A087503(2*n)+2` -/
def P7400964271540721966.Spec : Prop :=
  ∀ n, P7400964271540721966.a n = A057198 (n + 1)

end A057198

/-! ## A057198.P6157378831087614205

`A198643(n)/2+1`
-/

namespace A057198.P6157378831087614205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198643 n : ℚ) / 2 + 1

end

end A057198.P6157378831087614205

namespace A057198

/-- `A198643(n)/2+1` -/
def P6157378831087614205.Spec : Prop :=
  ∀ n, P6157378831087614205.a n = (A057198 (n + 1) : ℚ)

theorem P6157378831087614205.correct : P6157378831087614205.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A057198, Nat.add_sub_cancel, A057198.P6157378831087614205.a, A057198.P12052933696441359078.a, A198643, A198643.P10051608865040273514.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A057198, Nat.add_sub_cancel, A057198.P6157378831087614205.a, A057198.P12052933696441359078.a, A198643, A198643.P10051608865040273514.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A057198

/-! ## A057198.P4901679100167867454

`A220946(2*n)+2`
-/

namespace A057198.P4901679100167867454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220946 (2 * n) + 2

end

end A057198.P4901679100167867454

namespace A057198

/-- `A220946(2*n)+2` -/
def P4901679100167867454.Spec : Prop :=
  ∀ n, P4901679100167867454.a n = A057198 (n + 1)

end A057198

/-! ## A057198.P14418775129309147752

`A246360(2*n+3)`
-/

namespace A057198.P14418775129309147752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246360 (2 * n + 3)

end

end A057198.P14418775129309147752

namespace A057198

/-- `A246360(2*n+3)` -/
def P14418775129309147752.Spec : Prop :=
  ∀ n, P14418775129309147752.a n = A057198 (n + 1)

end A057198

/-! ## A057198.P17532356932356208946

`5*A003462(n)+3`
-/

namespace A057198.P17532356932356208946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A003462 n + 3

end

end A057198.P17532356932356208946

namespace A057198

/-- `5*A003462(n)+3` -/
def P17532356932356208946.Spec : Prop :=
  ∀ n, P17532356932356208946.a n = A057198 (n + 1)

end A057198

/-! ## A057198.P9657666071695860317

`5*A007051(n)-2`
-/

namespace A057198.P9657666071695860317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A007051 n - 2

end

end A057198.P9657666071695860317

namespace A057198

/-- `5*A007051(n)-2` -/
def P9657666071695860317.Spec : Prop :=
  ∀ n, P9657666071695860317.a n = A057198 (n + 1)

end A057198

/-! ## A057198.P5766711929341548353

`A199109(n)-3^n`
-/

namespace A057198.P5766711929341548353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199109 n - (3 ^ n : ℤ)

end

end A057198.P5766711929341548353

namespace A057198

/-- `A199109(n)-3^n` -/
def P5766711929341548353.Spec : Prop :=
  ∀ n, P5766711929341548353.a n = A057198 (n + 1)

end A057198

