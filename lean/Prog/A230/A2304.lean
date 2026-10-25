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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
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
import Seq.B001.C006
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A230400: Numbers n such that n = abc = 2(ab+ac+bc) for some positive integers a,b,c.

The programs for A230400, there is no canonical definition to state claims against.
-/

/-! ## A230400.P3780322167331942168

`A369951(n+10)`
-/

namespace A230400.P3780322167331942168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369951 (n + 10)

end

end A230400.P3780322167331942168

/-!
# A230402: Integer areas of orthic triangles of integer-sided triangles.

The programs for A230402, there is no canonical definition to state claims against.
-/

/-! ## A230402.P1970749691030335583

`A005843(A195019(A158658(A195019(n+1))))`
-/

namespace A230402.P1970749691030335583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A195019 (A158658 (A195019 (n + 1)).toNat).toNat).toNat

end

end A230402.P1970749691030335583

/-!
# A230403: a(n) = the largest k such that (k+1)! divides n; the number of trailing zeros in the factorial base representation of n (A007623(n)).

The programs for A230403, the canonical program `A230403.P10181876793047725075` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230403 has offset 1).

The definition of A230403 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230403.P10181876793047725075

`A055881(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230403

/-- `A055881(n+1)-1` -/
def P10181876793047725075.Spec : Prop :=
  ∀ n, P10181876793047725075.a n = A230403 (n + 1)

theorem P10181876793047725075.correct : P10181876793047725075.Spec := by
  intro n
  simp only [A230403, Nat.add_sub_cancel]

end A230403

/-! ## A230403.P7565842474886920198

`val(A275727(n+1), 2)`
-/

namespace A230403.P7565842474886920198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275727 (n + 1)).toNat 2

end

end A230403.P7565842474886920198

namespace A230403

/-- `val(A275727(n+1), 2)` -/
def P7565842474886920198.Spec : Prop :=
  ∀ n, (P7565842474886920198.a n : ℤ) = A230403 (n + 1)

end A230403

/-! ## A230403.P1683931520117734705

`ceil(ratio[A304036(n)])-1`
-/

namespace A230403.P1683931520117734705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1

end

end A230403.P1683931520117734705

namespace A230403

/-- `ceil(ratio[A304036(n)])-1` -/
def P1683931520117734705.Spec : Prop :=
  ∀ n, P1683931520117734705.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P7041248173773086080

`A007814(A275727(n+1))`
-/

namespace A230403.P7041248173773086080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A275727 (n + 1)).toNat

end

end A230403.P7041248173773086080

namespace A230403

/-- `A007814(A275727(n+1))` -/
def P7041248173773086080.Spec : Prop :=
  ∀ n, P7041248173773086080.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P5290792045645421899

`A060502(A073575(n+1)-1)`
-/

namespace A230403.P5290792045645421899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A073575 (n + 1) - 1).toNat

end

end A230403.P5290792045645421899

namespace A230403

/-- `A060502(A073575(n+1)-1)` -/
def P5290792045645421899.Spec : Prop :=
  ∀ n, P5290792045645421899.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P187625724694772608

`A000578(n)%A055881(n+1)`
-/

namespace A230403.P187625724694772608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n) (A055881 (n + 1))

end

end A230403.P187625724694772608

namespace A230403

/-- `A000578(n)%A055881(n+1)` -/
def P187625724694772608.Spec : Prop :=
  ∀ n, P187625724694772608.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P10020969549042654046

`A000584(n)%A055881(n+1)`
-/

namespace A230403.P10020969549042654046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000584 n) (A055881 (n + 1))

end

end A230403.P10020969549042654046

namespace A230403

/-- `A000584(n)%A055881(n+1)` -/
def P10020969549042654046.Spec : Prop :=
  ∀ n, P10020969549042654046.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P479393216987378429

`A001015(n)%A055881(n+1)`
-/

namespace A230403.P479393216987378429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001015 n) (A055881 (n + 1))

end

end A230403.P479393216987378429

namespace A230403

/-- `A001015(n)%A055881(n+1)` -/
def P479393216987378429.Spec : Prop :=
  ∀ n, P479393216987378429.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P14739378462503398826

`A001017(n)%A055881(n+1)`
-/

namespace A230403.P14739378462503398826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001017 n) (A055881 (n + 1))

end

end A230403.P14739378462503398826

namespace A230403

/-- `A001017(n)%A055881(n+1)` -/
def P14739378462503398826.Spec : Prop :=
  ∀ n, P14739378462503398826.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P13127912740760948735

`A004188(n)%A055881(n+1)`
-/

namespace A230403.P13127912740760948735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004188 n) (A055881 (n + 1))

end

end A230403.P13127912740760948735

namespace A230403

/-- `A004188(n)%A055881(n+1)` -/
def P13127912740760948735.Spec : Prop :=
  ∀ n, P13127912740760948735.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P9047708623430516856

`A004538(n)%A055881(n+1)`
-/

namespace A230403.P9047708623430516856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004538 n) (A055881 (n + 1))

end

end A230403.P9047708623430516856

namespace A230403

/-- `A004538(n)%A055881(n+1)` -/
def P9047708623430516856.Spec : Prop :=
  ∀ n, P9047708623430516856.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P2439427932552591958

`A004767(n)%A055881(n+1)`
-/

namespace A230403.P2439427932552591958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 n) (A055881 (n + 1))

end

end A230403.P2439427932552591958

namespace A230403

/-- `A004767(n)%A055881(n+1)` -/
def P2439427932552591958.Spec : Prop :=
  ∀ n, P2439427932552591958.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P13980115374713609940

`A004771(n)%A055881(n+1)`
-/

namespace A230403.P13980115374713609940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004771 n) (A055881 (n + 1))

end

end A230403.P13980115374713609940

namespace A230403

/-- `A004771(n)%A055881(n+1)` -/
def P13980115374713609940.Spec : Prop :=
  ∀ n, P13980115374713609940.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P16063354322104932768

`A005563(n)%A055881(n+1)`
-/

namespace A230403.P16063354322104932768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005563 n) (A055881 (n + 1))

end

end A230403.P16063354322104932768

namespace A230403

/-- `A005563(n)%A055881(n+1)` -/
def P16063354322104932768.Spec : Prop :=
  ∀ n, P16063354322104932768.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P376578269341662770

`A008455(n)%A055881(n+1)`
-/

namespace A230403.P376578269341662770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008455 n) (A055881 (n + 1))

end

end A230403.P376578269341662770

namespace A230403

/-- `A008455(n)%A055881(n+1)` -/
def P376578269341662770.Spec : Prop :=
  ∀ n, P376578269341662770.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P5612607764812368194

`A016761(n)%A055881(n+1)`
-/

namespace A230403.P5612607764812368194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016761 n) (A055881 (n + 1))

end

end A230403.P5612607764812368194

namespace A230403

/-- `A016761(n)%A055881(n+1)` -/
def P5612607764812368194.Spec : Prop :=
  ∀ n, P5612607764812368194.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P10832331799865118684

`A016843(n)%A055881(n+1)`
-/

namespace A230403.P10832331799865118684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016843 n) (A055881 (n + 1))

end

end A230403.P10832331799865118684

namespace A230403

/-- `A016843(n)%A055881(n+1)` -/
def P10832331799865118684.Spec : Prop :=
  ∀ n, P10832331799865118684.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P2692864962714295663

`A016903(n)%A055881(n+1)`
-/

namespace A230403.P2692864962714295663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016903 n) (A055881 (n + 1))

end

end A230403.P2692864962714295663

namespace A230403

/-- `A016903(n)%A055881(n+1)` -/
def P2692864962714295663.Spec : Prop :=
  ∀ n, P2692864962714295663.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P8418393153509857939

`A016975(n)%A055881(n+1)`
-/

namespace A230403.P8418393153509857939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A055881 (n + 1))

end

end A230403.P8418393153509857939

namespace A230403

/-- `A016975(n)%A055881(n+1)` -/
def P8418393153509857939.Spec : Prop :=
  ∀ n, P8418393153509857939.a n = A230403 (n + 1)

end A230403

/-! ## A230403.P14301437624113251589

`A017059(n)%A055881(n+1)`
-/

namespace A230403.P14301437624113251589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017059 n) (A055881 (n + 1))

end

end A230403.P14301437624113251589

namespace A230403

/-- `A017059(n)%A055881(n+1)` -/
def P14301437624113251589.Spec : Prop :=
  ∀ n, P14301437624113251589.a n = A230403 (n + 1)

end A230403

/-!
# A230404: a(n) = the largest k such that (k+1)! divides 2n; the number of trailing zeros in the factorial base representation of even numbers.

The programs for A230404, the canonical program `A230404.P3760350599277947129` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230404 has offset 1).

The definition of A230404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230403, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230404.P3760350599277947129

`A230403(2*(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230404

/-- `A230403(2*(n+1))` -/
def P3760350599277947129.Spec : Prop :=
  ∀ n, P3760350599277947129.a n = A230404 (n + 1)

theorem P3760350599277947129.correct : P3760350599277947129.Spec := by
  intro n
  simp only [A230404, Nat.add_sub_cancel]

end A230404

/-! ## A230404.P3658280960054801419

`A055881(2*(n+1))-1`
-/

namespace A230404.P3658280960054801419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (2 * (n + 1)) - 1

end

end A230404.P3658280960054801419

namespace A230404

/-- `A055881(2*(n+1))-1` -/
def P3658280960054801419.Spec : Prop :=
  ∀ n, P3658280960054801419.a n = A230404 (n + 1)

end A230404

/-! ## A230404.P6592178931628686045

`A002260(Δ[A219650(n)])`
-/

namespace A230404.P6592178931628686045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (n + 1) - f1 n).toNat

end

end A230404.P6592178931628686045

namespace A230404

/-- `A002260(Δ[A219650(n)])` -/
def P6592178931628686045.Spec : Prop :=
  ∀ n, P6592178931628686045.a n = A230404 (n + 1)

end A230404

/-! ## A230404.P4704194668958886457

`A060502(A073575(2*(n+1))+1)`
-/

namespace A230404.P4704194668958886457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A073575 (2 * (n + 1)) + 1).toNat

end

end A230404.P4704194668958886457

namespace A230404

/-- `A060502(A073575(2*(n+1))+1)` -/
def P4704194668958886457.Spec : Prop :=
  ∀ n, P4704194668958886457.a n = A230404 (n + 1)

end A230404

/-! ## A230404.P6253571478534537292

`Δ[A060832(2*n)]-2`
-/

namespace A230404.P6253571478534537292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060832 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A230404.P6253571478534537292

namespace A230404

/-- `Δ[A060832(2*n)]-2` -/
def P6253571478534537292.Spec : Prop :=
  ∀ n, P6253571478534537292.a n = A230404 (n + 1)

end A230404

/-! ## A230404.P1645724974219116527

`ceil(ratio[A304036(2*n+1)])`
-/

namespace A230404.P1645724974219116527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A230404.P1645724974219116527

namespace A230404

/-- `ceil(ratio[A304036(2*n+1)])` -/
def P1645724974219116527.Spec : Prop :=
  ∀ n, P1645724974219116527.a n = A230404 (n + 1)

end A230404

/-! ## A230404.P2693058030289066949

`A257510(A231720(2*n+1)+2)`
-/

namespace A230404.P2693058030289066949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257510 (A231720 (2 * n + 1) + 2).toNat

end

end A230404.P2693058030289066949

namespace A230404

/-- `A257510(A231720(2*n+1)+2)` -/
def P2693058030289066949.Spec : Prop :=
  ∀ n, P2693058030289066949.a n = A230404 (n + 1)

end A230404

/-! ## A230404.P4033663594941516411

`A002260(A286143(2*(n+1))-1)`
-/

namespace A230404.P4033663594941516411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286143 (2 * (n + 1)) - 1).toNat

end

end A230404.P4033663594941516411

namespace A230404

/-- `A002260(A286143(2*(n+1))-1)` -/
def P4033663594941516411.Spec : Prop :=
  ∀ n, P4033663594941516411.a n = A230404 (n + 1)

end A230404

/-! ## A230404.P1653179481168542438

`A048158(A286143(2*(n+1)))`
-/

namespace A230404.P1653179481168542438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A286143 (2 * (n + 1))).toNat

end

end A230404.P1653179481168542438

namespace A230404

/-- `A048158(A286143(2*(n+1)))` -/
def P1653179481168542438.Spec : Prop :=
  ∀ n, P1653179481168542438.a n = A230404 (n + 1)

end A230404

/-! ## A230404.P14292184673430954541

`A230417((2*n+1)*(n+3))`
-/

namespace A230404.P14292184673430954541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230417 ((2 * n + 1) * (n + 3))

end

end A230404.P14292184673430954541

namespace A230404

/-- `A230417((2*n+1)*(n+3))` -/
def P14292184673430954541.Spec : Prop :=
  ∀ n, P14292184673430954541.a n = A230404 (n + 1)

end A230404

/-!
# A230405: a(n) = A000217(A230404(n+1)); the first differences of A219650.

The programs for A230405, the canonical program `A230405.P8381565500841950673` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230405 has offset 0).

The definition of A230405 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230405.P8381565500841950673

`A000217(A230404(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A230405

/-- `A000217(A230404(n+1))` -/
def P8381565500841950673.Spec : Prop :=
  ∀ n, P8381565500841950673.a n = A230405 n

theorem P8381565500841950673.correct : P8381565500841950673.Spec := by
  intro n
  simp only [A230405]

end A230405

/-! ## A230405.P2486081722514881436

`A219650(n+1)-A219650(n)`
-/

namespace A230405.P2486081722514881436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 (n + 1) - A219650 n

end

end A230405.P2486081722514881436

namespace A230405

/-- `A219650(n+1)-A219650(n)` -/
def P2486081722514881436.Spec : Prop :=
  ∀ n, P2486081722514881436.a n = A230405 n

end A230405

/-! ## A230405.P15894199422123762896

`Δ[A219650(n)]`
-/

namespace A230405.P15894199422123762896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230405.P15894199422123762896

namespace A230405

/-- `Δ[A219650(n)]` -/
def P15894199422123762896.Spec : Prop :=
  ∀ n, P15894199422123762896.a n = A230405 n

end A230405

/-! ## A230405.P9566152259183364935

`Δ[A219651(2*n)]`
-/

namespace A230405.P9566152259183364935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230405.P9566152259183364935

namespace A230405

/-- `Δ[A219651(2*n)]` -/
def P9566152259183364935.Spec : Prop :=
  ∀ n, P9566152259183364935.a n = A230405 n

end A230405

/-! ## A230405.P2450481453590726760

`C(A055881(2*(n+1)), 2)`
-/

namespace A230405.P2450481453590726760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055881 (2 * (n + 1))).toNat 2

end

end A230405.P2450481453590726760

namespace A230405

/-- `C(A055881(2*(n+1)), 2)` -/
def P2450481453590726760.Spec : Prop :=
  ∀ n, (P2450481453590726760.a n : ℤ) = A230405 n

end A230405

/-!
# A230406: a(n) = A034968(A219666(n)); after zero, the differences between successive nodes in the infinite trunk of the factorial beanstalk (A219666).

The programs for A230406, there is no canonical definition to state claims against.
-/

/-! ## A230406.P2013172985861741265

`A034968(A219666(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230406.P2013172985861741265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A219666 n).toNat

end

end A230406.P2013172985861741265

/-! ## A230406.P15923690800126832340

`A219666(n)-A219666(A005843(n)%(n+1))`
-/

namespace A230406.P15923690800126832340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 n - A219666 (Int.tmod (A005843 n) (n + 1 : ℤ)).toNat

end

end A230406.P15923690800126832340

/-! ## A230406.P4807250209713464184

`A034968(eq[0, A230425(n)])`
-/

namespace A230406.P4807250209713464184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230406.P4807250209713464184

/-! ## A230406.P10759009526690612911

`A034968(eq[0, A230426(n)])`
-/

namespace A230406.P10759009526690612911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230406.P10759009526690612911

/-! ## A230406.P13946830507386717548

`A034968(eq[0, A230427(n)])`
-/

namespace A230406.P13946830507386717548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230406.P13946830507386717548

/-! ## A230406.P8612500317629237376

`A034968(lt[A230425(n), 1])`
-/

namespace A230406.P8612500317629237376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230425 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A230406.P8612500317629237376

/-! ## A230406.P8134384207333438376

`A034968(lt[A230426(n), 1])`
-/

namespace A230406.P8134384207333438376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230426 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A230406.P8134384207333438376

/-! ## A230406.P3505517720856109002

`A034968(record[gcd(n, A230427(n))])`
-/

namespace A230406.P3505517720856109002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A230427 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A230406.P3505517720856109002

/-! ## A230406.P9608654328576175429

`A034968(A219655(n)-A231724(n))`
-/

namespace A230406.P9608654328576175429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A219655 n - A231724 n).toNat

end

end A230406.P9608654328576175429

/-! ## A230406.P10135827057697278097

`A034968(A219653(n+1)-1-A231724(n))`
-/

namespace A230406.P10135827057697278097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A219653 (n + 1) - 1 - A231724 n).toNat

end

end A230406.P10135827057697278097

/-! ## A230406.P3679834457161626800

`A034968(A230416(A219652(A230416(n))))`
-/

namespace A230406.P3679834457161626800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A230416 (A219652 (A230416 n).toNat).toNat).toNat

end

end A230406.P3679834457161626800

/-!
# A230407: Absolute value of a(n) tells the size of the n-th side-tree ("tendril", A230430(n)) in the factorial beanstalk; the sign tells on which side of the infinite trunk (A219666) it is.

The programs for A230407, there is no canonical definition to state claims against.
-/

/-! ## A230407.P827287290521570342

`(-1)^A230430(n)*A230427(A230430(n))`
-/

namespace A230407.P827287290521570342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A230430 n : ℤ) * (A230427 (A230430 n).toNat : ℚ)

end

end A230407.P827287290521570342

/-! ## A230407.P11112521610088974661

`Δ[A230409(A028310(n)-1)]`
-/

namespace A230407.P11112521610088974661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230409 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230407.P11112521610088974661

/-! ## A230407.P7742749655785067423

`Δ[A230409(A004273(n)-n)]`
-/

namespace A230407.P7742749655785067423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230409 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230407.P7742749655785067423

/-! ## A230407.P14594790590964661808

`Δ[A230409(n-A057427(n))]`
-/

namespace A230407.P14594790590964661808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230409 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230407.P14594790590964661808

/-! ## A230407.P10824596820755442219

`A230409(n)-A230409(A028310(n)-1)`
-/

namespace A230407.P10824596820755442219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230409 n - A230409 (A028310 n - 1).toNat

end

end A230407.P10824596820755442219

/-! ## A230407.P2178897357830541879

`A230409(n)-A230409(A004273(n)-n)`
-/

namespace A230407.P2178897357830541879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230409 n - A230409 (A004273 n - (n : ℤ)).toNat

end

end A230407.P2178897357830541879

/-! ## A230407.P8474047622685969282

`A230409(n)-A230409(n-A057427(n))`
-/

namespace A230407.P8474047622685969282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230409 n - A230409 ((n : ℤ) - A057427 n).toNat

end

end A230407.P8474047622685969282

/-! ## A230407.P9564988568393774642

`A230409(n)-A230409(log2(A011782(n)))`
-/

namespace A230407.P9564988568393774642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230409 n - A230409 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A230407.P9564988568393774642

/-! ## A230407.P12015293299415188967

`Δ[A230409(log2(A011782(n)))]`
-/

namespace A230407.P12015293299415188967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230409 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230407.P12015293299415188967

/-! ## A230407.P6209438300948060414

`Δ[A230409(A002262(A055998(n)))]`
-/

namespace A230407.P6209438300948060414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230409 (A002262 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230407.P6209438300948060414

/-!
# A230408: Partial sums of absolute values of A230407.

The programs for A230408, there is no canonical definition to state claims against.
-/

/-! ## A230408.P8622915753545432849

`∑[abs(A230407(n))]`
-/

namespace A230408.P8622915753545432849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A230407 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230408.P8622915753545432849

/-! ## A230408.P4034117909236245129

`∑[lcm(A020985(n), A230407(n))]`
-/

namespace A230408.P4034117909236245129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A230407 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230408.P4034117909236245129

/-! ## A230408.P6844588509134794809

`∑[A230427(A230430(n))]`
-/

namespace A230408.P6844588509134794809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230427 (A230430 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230408.P6844588509134794809

/-! ## A230408.P2446777856269534302

`∑[A286297(A230407(n)²)]`
-/

namespace A230408.P2446777856269534302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286297 (A230407 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230408.P2446777856269534302

/-! ## A230408.P14714987877689299067

`∑[A000196(A230407(n)²)]`
-/

namespace A230408.P14714987877689299067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A230407 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230408.P14714987877689299067

/-!
# A230409: Partial sums of A230407.

The programs for A230409, there is no canonical definition to state claims against.
-/

/-! ## A230409.P14756016693103611142

`a(n-1)+A230407(n)` with `a(0)=0, a(1)=-1, a(2)=0`
-/

namespace A230409.P14756016693103611142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 0] fun n a =>
  a (n - 1) + A230407 n

end

end A230409.P14756016693103611142

/-! ## A230409.P18391587440290427713

`∑[A230407(n)]`
-/

namespace A230409.P18391587440290427713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230409.P18391587440290427713

/-! ## A230409.P7694150021427064884

`A230407(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A230409.P7694150021427064884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A230407 n + a (A023443 n).toNat

end

end A230409.P7694150021427064884

/-! ## A230409.P10379961813292562606

`A230407(n)+a(A028310(n)-1)` with `a(0)=0`
-/

namespace A230409.P10379961813292562606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A230407 n + a (A028310 n - 1).toNat

end

end A230409.P10379961813292562606

/-! ## A230409.P14630537514248239415

`A230407(n)-(A000038(n)-a(abs(1-n)))` with `a(0)=0`
-/

namespace A230409.P14630537514248239415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A230407 n - (A000038 n - a |1 - (n : ℤ)|.toNat)

end

end A230409.P14630537514248239415

/-! ## A230409.P1842696898351425452

`∑[(-1)^A230430(n)*A230427(A230430(n))]`
-/

namespace A230409.P1842696898351425452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A230430 n : ℤ) * (A230427 (A230430 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230409.P1842696898351425452

/-!
# A230411: a(n) = minimal k for which A219665(k) >= n; a(n) = one more than the factorial base width (A084558) of the (n-1)th term in the infinite trunk of factorial beanstalk (A219666).

The programs for A230411, there is no canonical definition to state claims against.
-/

/-! ## A230411.P12757522785635836493

`1+A084558(A219666(n))`
-/

namespace A230411.P12757522785635836493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A084558 (A219666 n).toNat

end

end A230411.P12757522785635836493

/-! ## A230411.P13469689008650714654

`1+A084558(A230416(n))`
-/

namespace A230411.P13469689008650714654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A084558 (A230416 n).toNat

end

end A230411.P13469689008650714654

/-! ## A230411.P9703414919521832842

`A084558(A219653(n))+1`
-/

namespace A230411.P9703414919521832842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A219653 n).toNat + 1

end

end A230411.P9703414919521832842

/-! ## A230411.P6547202994399476034

`A084558(A219655(n))+1`
-/

namespace A230411.P6547202994399476034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A219655 n).toNat + 1

end

end A230411.P6547202994399476034

/-! ## A230411.P1319695821315715975

`A084556(A194920(∑[A084556(2*n+1)²]+1))`
-/

namespace A230411.P1319695821315715975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A194920 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat).toNat

end

end A230411.P1319695821315715975

/-! ## A230411.P2429446168364830690

`A111972(A016777(n²))+1`
-/

namespace A230411.P2429446168364830690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A016777 (n ^ 2)).toNat + 1

end

end A230411.P2429446168364830690

/-! ## A230411.P15291254978863500830

`A130260(A130260(n²)+A095289(n+1))`
-/

namespace A230411.P15291254978863500830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A130260 (n ^ 2) + A095289 (n + 1)).toNat

end

end A230411.P15291254978863500830

/-! ## A230411.P10470764437633340934

`A081604(A138167(A325124(n+1)+n))`
-/

namespace A230411.P10470764437633340934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A138167 (A325124 (n + 1) + (n : ℤ)).toNat).toNat

end

end A230411.P10470764437633340934

/-! ## A230411.P4353043746223117290

`A235224(A005918(n))`
-/

namespace A230411.P4353043746223117290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A005918 n).toNat

end

end A230411.P4353043746223117290

/-! ## A230411.P16369959651019055579

`A235224(A056106(n))`
-/

namespace A230411.P16369959651019055579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A056106 n).toNat

end

end A230411.P16369959651019055579

/-!
# A230412: a(n) = the number of ways to express n as a sum d1*(k1!-1) + d2*(k2!-1) + ... + dj*(kj!-1), where all k's are distinct and greater than one and each di is in range [1,ki]; the characteristic function of A219650.

The programs for A230412, the canonical program `A230412.P4316669891405136830` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230412 has offset 0).

The definition of A230412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230412.P15676923935801994794

`char[A219650(n)]`
-/

namespace A230412.P15676923935801994794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A230412.P15676923935801994794

namespace A230412

/-- `char[A219650(n)]` -/
def P15676923935801994794.Spec : Prop :=
  ∀ n, (P15676923935801994794.a n : ℤ) = A230412 n

end A230412

/-! ## A230412.P4316669891405136830

`char[A219651(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A230412

/-- `char[A219651(n)]` -/
def P4316669891405136830.Spec : Prop :=
  ∀ n, (P4316669891405136830.a n : ℤ) = A230412 n

theorem P4316669891405136830.correct : P4316669891405136830.Spec := by
  intro n
  simp only [A230412]

end A230412

/-! ## A230412.P12292437949056556265

`A230424(n)%2`
-/

namespace A230412.P12292437949056556265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230424 n) 2

end

end A230412.P12292437949056556265

namespace A230412

/-- `A230424(n)%2` -/
def P12292437949056556265.Spec : Prop :=
  ∀ n, P12292437949056556265.a n = A230412 n

end A230412

/-! ## A230412.P13937565506336656467

`char[comp[A219658(n+1)]]`
-/

namespace A230412.P13937565506336656467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219658 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A230412.P13937565506336656467

namespace A230412

/-- `char[comp[A219658(n+1)]]` -/
def P13937565506336656467.Spec : Prop :=
  ∀ n, (P13937565506336656467.a n : ℤ) = A230412 n

end A230412

/-! ## A230412.P899570849452062695

`A230424(n)-A230423(n)`
-/

namespace A230412.P899570849452062695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - A230423 n

end

end A230412.P899570849452062695

namespace A230412

/-- `A230424(n)-A230423(n)` -/
def P899570849452062695.Spec : Prop :=
  ∀ n, P899570849452062695.a n = A230412 n

end A230412

/-! ## A230412.P1287952144292270396

`gcd(A230414(n), A230424(n))`
-/

namespace A230412.P1287952144292270396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230414 n) (A230424 n)

end

end A230412.P1287952144292270396

namespace A230412

/-- `gcd(A230414(n), A230424(n))` -/
def P1287952144292270396.Spec : Prop :=
  ∀ n, (P1287952144292270396.a n : ℤ) = A230412 n

end A230412

/-! ## A230412.P11124192104858631037

`and(A158388(n), A230424(n))`
-/

namespace A230412.P11124192104858631037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A230424 n)

end

end A230412.P11124192104858631037

namespace A230412

/-- `and(A158388(n), A230424(n))` -/
def P11124192104858631037.Spec : Prop :=
  ∀ n, P11124192104858631037.a n = A230412 n

end A230412

/-! ## A230412.P901348660914751277

`and(A230424(n), A267871(n))`
-/

namespace A230412.P901348660914751277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A230424 n) (A267871 n)

end

end A230412.P901348660914751277

namespace A230412

/-- `and(A230424(n), A267871(n))` -/
def P901348660914751277.Spec : Prop :=
  ∀ n, P901348660914751277.a n = A230412 n

end A230412

/-! ## A230412.P10551315087882454192

`A230424(n-A219650(A230414(n)))`
-/

namespace A230412.P10551315087882454192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 ((n : ℤ) - A219650 (A230414 n).toNat).toNat

end

end A230412.P10551315087882454192

namespace A230412

/-- `A230424(n-A219650(A230414(n)))` -/
def P10551315087882454192.Spec : Prop :=
  ∀ n, P10551315087882454192.a n = A230412 n

end A230412

/-! ## A230412.P12396414320001466167

`A230424(n-A219651(A230424(n)))`
-/

namespace A230412.P12396414320001466167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 ((n : ℤ) - A219651 (A230424 n).toNat).toNat

end

end A230412.P12396414320001466167

namespace A230412

/-- `A230424(n-A219651(A230424(n)))` -/
def P12396414320001466167.Spec : Prop :=
  ∀ n, P12396414320001466167.a n = A230412 n

end A230412

/-! ## A230412.P13374099088943254790

`A000035(A230424(n))`
-/

namespace A230412.P13374099088943254790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A230424 n).toNat

end

end A230412.P13374099088943254790

namespace A230412

/-- `A000035(A230424(n))` -/
def P13374099088943254790.Spec : Prop :=
  ∀ n, P13374099088943254790.a n = A230412 n

end A230412

/-! ## A230412.P5897123210297412333

`and(A176410(n), A230424(n))`
-/

namespace A230412.P5897123210297412333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176410 n) (A230424 n)

end

end A230412.P5897123210297412333

namespace A230412

/-- `and(A176410(n), A230424(n))` -/
def P5897123210297412333.Spec : Prop :=
  ∀ n, P5897123210297412333.a n = A230412 n

end A230412

/-! ## A230412.P2425887243470951953

`and(A176794(n), A230424(n))`
-/

namespace A230412.P2425887243470951953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176794 n) (A230424 n)

end

end A230412.P2425887243470951953

namespace A230412

/-- `and(A176794(n), A230424(n))` -/
def P2425887243470951953.Spec : Prop :=
  ∀ n, P2425887243470951953.a n = A230412 n

end A230412

/-! ## A230412.P1887369601764176769

`and(A048578(n), A230424(n))`
-/

namespace A230412.P1887369601764176769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A230424 n)

end

end A230412.P1887369601764176769

namespace A230412

/-- `and(A048578(n), A230424(n))` -/
def P1887369601764176769.Spec : Prop :=
  ∀ n, P1887369601764176769.a n = A230412 n

end A230412

/-! ## A230412.P8152185052158044740

`and(A020737(n), A230424(n))`
-/

namespace A230412.P8152185052158044740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A230424 n)

end

end A230412.P8152185052158044740

namespace A230412

/-- `and(A020737(n), A230424(n))` -/
def P8152185052158044740.Spec : Prop :=
  ∀ n, P8152185052158044740.a n = A230412 n

end A230412

/-! ## A230412.P7021848227053377822

`and(A230424(n), A276918(n))`
-/

namespace A230412.P7021848227053377822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A230424 n) (A276918 n)

end

end A230412.P7021848227053377822

namespace A230412

/-- `and(A230424(n), A276918(n))` -/
def P7021848227053377822.Spec : Prop :=
  ∀ n, P7021848227053377822.a n = A230412 n

end A230412

/-! ## A230412.P12217214852821090091

`and(A195744(n), A230424(n))`
-/

namespace A230412.P12217214852821090091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A230424 n)

end

end A230412.P12217214852821090091

namespace A230412

/-- `and(A195744(n), A230424(n))` -/
def P12217214852821090091.Spec : Prop :=
  ∀ n, P12217214852821090091.a n = A230412 n

end A230412

/-! ## A230412.P18132163203954494678

`and(A122041(n+1), A230424(n))`
-/

namespace A230412.P18132163203954494678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A230424 n)

end

end A230412.P18132163203954494678

namespace A230412

/-- `and(A122041(n+1), A230424(n))` -/
def P18132163203954494678.Spec : Prop :=
  ∀ n, P18132163203954494678.a n = A230412 n

end A230412

/-! ## A230412.P13989539379981452112

`and(A196657(n), A230424(n))`
-/

namespace A230412.P13989539379981452112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A230424 n)

end

end A230412.P13989539379981452112

namespace A230412

/-- `and(A196657(n), A230424(n))` -/
def P13989539379981452112.Spec : Prop :=
  ∀ n, P13989539379981452112.a n = A230412 n

end A230412

/-! ## A230412.P16404107908152040130

`and(1, A230424(n)+A208902(n+1))`
-/

namespace A230412.P16404107908152040130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A230424 n + A208902 (n + 1))

end

end A230412.P16404107908152040130

namespace A230412

/-- `and(1, A230424(n)+A208902(n+1))` -/
def P16404107908152040130.Spec : Prop :=
  ∀ n, P16404107908152040130.a n = A230412 n

end A230412

/-!
# A230413: a(0)=0 and from then on, the partial sums of A230412 summed from the term a(1) onward.

The programs for A230413, the canonical program `A230413.P15276222400216239209` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230413 has offset 0).

The definition of A230413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230413.P15276222400216239209

`∑[A230412(n)]-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A230413

/-- `∑[A230412(n)]-1` -/
def P15276222400216239209.Spec : Prop :=
  ∀ n, P15276222400216239209.a n = A230413 n

theorem P15276222400216239209.correct : P15276222400216239209.Spec := by
  intro n
  simp only [A230413]

end A230413

/-! ## A230413.P8974353969206382179

`floor(sqrt(∑[A230423(n)]))`
-/

namespace A230413.P8974353969206382179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230413.P8974353969206382179

namespace A230413

/-- `floor(sqrt(∑[A230423(n)]))` -/
def P8974353969206382179.Spec : Prop :=
  ∀ n, P8974353969206382179.a n = A230413 n

end A230413

/-! ## A230413.P9273009190975869435

`∑[char[A219650(n+1)]]`
-/

namespace A230413.P9273009190975869435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230413.P9273009190975869435

namespace A230413

/-- `∑[char[A219650(n+1)]]` -/
def P9273009190975869435.Spec : Prop :=
  ∀ n, (P9273009190975869435.a n : ℤ) = A230413 n

end A230413

/-! ## A230413.P12640205488337181415

`∑[char[A219651(n+2)]]`
-/

namespace A230413.P12640205488337181415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230413.P12640205488337181415

namespace A230413

/-- `∑[char[A219651(n+2)]]` -/
def P12640205488337181415.Spec : Prop :=
  ∀ n, (P12640205488337181415.a n : ℤ) = A230413 n

end A230413

/-! ## A230413.P5077181964647271891

`∑[char[A219650(n)]]-1`
-/

namespace A230413.P5077181964647271891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A230413.P5077181964647271891

namespace A230413

/-- `∑[char[A219650(n)]]-1` -/
def P5077181964647271891.Spec : Prop :=
  ∀ n, P5077181964647271891.a n = A230413 n

end A230413

/-! ## A230413.P3322578634870271801

`∑[char[A219651(n)]]-1`
-/

namespace A230413.P3322578634870271801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A230413.P3322578634870271801

namespace A230413

/-- `∑[char[A219651(n)]]-1` -/
def P3322578634870271801.Spec : Prop :=
  ∀ n, P3322578634870271801.a n = A230413 n

end A230413

/-! ## A230413.P9726218220419724119

`∑[ceil(A230414(n)/(n+1))]`
-/

namespace A230413.P9726218220419724119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A230414 n : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230413.P9726218220419724119

namespace A230413

/-- `∑[ceil(A230414(n)/(n+1))]` -/
def P9726218220419724119.Spec : Prop :=
  ∀ n, P9726218220419724119.a n = A230413 n

end A230413

/-! ## A230413.P8662007939357836179

`∑[A157532(A230414(n)+1)-2]`
-/

namespace A230413.P8662007939357836179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (A230414 n + 1).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230413.P8662007939357836179

namespace A230413

/-- `∑[A157532(A230414(n)+1)-2]` -/
def P8662007939357836179.Spec : Prop :=
  ∀ n, P8662007939357836179.a n = A230413 n

end A230413

/-! ## A230413.P4671350529855193619

`a(n-1)+A230424(n)-A230423(n)` with `a(0)=0`
-/

namespace A230413.P4671350529855193619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A230424 n - A230423 n)

end

end A230413.P4671350529855193619

namespace A230413

/-- `a(n-1)+A230424(n)-A230423(n)` -/
def P4671350529855193619.Spec : Prop :=
  ∀ n, P4671350529855193619.a n = A230413 n

end A230413

/-! ## A230413.P11195459870192107417

`a(n-1)+and(A122041(n+1), A230424(n))` with `a(0)=0`
-/

namespace A230413.P11195459870192107417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.land (A122041 (n + 1)) (A230424 n)

end

end A230413.P11195459870192107417

namespace A230413

/-- `a(n-1)+and(A122041(n+1), A230424(n))` -/
def P11195459870192107417.Spec : Prop :=
  ∀ n, P11195459870192107417.a n = A230413 n

end A230413

/-!
# A230414: Inverse function for injection A219650.

The programs for A230414, the canonical program `A230414.P17047374588761006146` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230414 has offset 0).

The definition of A230414 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230412, A230413, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230414.P10525448446373743173

`A230423(n)/2`
-/

namespace A230414.P10525448446373743173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230423 n : ℚ) / 2

end

end A230414.P10525448446373743173

namespace A230414

/-- `A230423(n)/2` -/
def P10525448446373743173.Spec : Prop :=
  ∀ n, P10525448446373743173.a n = (A230414 n : ℚ)

theorem P10525448446373743173.correct : P10525448446373743173.Spec := by
  intro n
  simp only [A230414, Nat.add_sub_cancel, A230414.P10525448446373743173.a, A230414.P17047374588761006146.a, A230412, A230412.P4316669891405136830.f1, A230412.P4316669891405136830.a, A230413, A230413.P15276222400216239209.f1, A230413.P15276222400216239209.a, A230423, A230423.P7455816380585758561.a, A219651, A219651.P5835350949150730882.a, A034968, A034968.P11463317321541393924.a, A099563, A099563.P5019841788924108469.f2, A099563.P5019841788924108469.f1, A099563.P5019841788924108469.f4, A099563.P5019841788924108469.f3, A099563.P5019841788924108469.a, A257687, A257687.P7012285749589745258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230414

/-! ## A230414.P17047374588761006146

`A230412(n)*A230413(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A230414

/-- `A230412(n)*A230413(n)` -/
def P17047374588761006146.Spec : Prop :=
  ∀ n, P17047374588761006146.a n = A230414 n

theorem P17047374588761006146.correct : P17047374588761006146.Spec := by
  intro n
  simp only [A230414]

end A230414

/-! ## A230414.P977456707385919942

`floor(A230424(n)/2)`
-/

namespace A230414.P977456707385919942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230424 n : ℚ) / 2⌋

end

end A230414.P977456707385919942

namespace A230414

/-- `floor(A230424(n)/2)` -/
def P977456707385919942.Spec : Prop :=
  ∀ n, P977456707385919942.a n = A230414 n

end A230414

/-! ## A230414.P17903809792882584195

`A014682(A230423(n))`
-/

namespace A230414.P17903809792882584195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A230423 n).toNat

end

end A230414.P17903809792882584195

namespace A230414

/-- `A014682(A230423(n))` -/
def P17903809792882584195.Spec : Prop :=
  ∀ n, P17903809792882584195.a n = A230414 n

end A230414

/-! ## A230414.P12144499092918523

`A230424(n)%∑[A230412(n)]`
-/

namespace A230414.P12144499092918523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230424 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230414.P12144499092918523

namespace A230414

/-- `A230424(n)%∑[A230412(n)]` -/
def P12144499092918523.Spec : Prop :=
  ∀ n, P12144499092918523.a n = A230414 n

end A230414

/-! ## A230414.P3277905295602100548

`A230413(n%(A230423(n)+1))`
-/

namespace A230414.P3277905295602100548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230413 (Int.tmod (n : ℤ) (A230423 n + 1)).toNat

end

end A230414.P3277905295602100548

namespace A230414

/-- `A230413(n%(A230423(n)+1))` -/
def P3277905295602100548.Spec : Prop :=
  ∀ n, P3277905295602100548.a n = A230414 n

end A230414

/-! ## A230414.P14592508908086810834

`(A230424(n)-char[A219650(n)])/2`
-/

namespace A230414.P14592508908086810834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230424 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / 2

end

end A230414.P14592508908086810834

namespace A230414

/-- `(A230424(n)-char[A219650(n)])/2` -/
def P14592508908086810834.Spec : Prop :=
  ∀ n, P14592508908086810834.a n = (A230414 n : ℚ)

end A230414

/-! ## A230414.P4413992510895238367

`A230413(A219651(A230424(n)))`
-/

namespace A230414.P4413992510895238367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230413 (A219651 (A230424 n).toNat).toNat

end

end A230414.P4413992510895238367

namespace A230414

/-- `A230413(A219651(A230424(n)))` -/
def P4413992510895238367.Spec : Prop :=
  ∀ n, P4413992510895238367.a n = A230414 n

end A230414

/-! ## A230414.P8913775064835355280

`A230413(n*(A230424(n)-A230423(n)))`
-/

namespace A230414.P8913775064835355280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230413 ((n : ℤ) * (A230424 n - A230423 n)).toNat

end

end A230414.P8913775064835355280

namespace A230414

/-- `A230413(n*(A230424(n)-A230423(n)))` -/
def P8913775064835355280.Spec : Prop :=
  ∀ n, P8913775064835355280.a n = A230414 n

end A230414

/-! ## A230414.P1480618667661638963

`A004524(A230424(n))`
-/

namespace A230414.P1480618667661638963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A230424 n).toNat

end

end A230414.P1480618667661638963

namespace A230414

/-- `A004524(A230424(n))` -/
def P1480618667661638963.Spec : Prop :=
  ∀ n, P1480618667661638963.a n = A230414 n

end A230414

/-! ## A230414.P17960599339744538113

`A230424(n)-A029578(A230424(n)+1)`
-/

namespace A230414.P17960599339744538113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - A029578 (A230424 n + 1).toNat

end

end A230414.P17960599339744538113

namespace A230414

/-- `A230424(n)-A029578(A230424(n)+1)` -/
def P17960599339744538113.Spec : Prop :=
  ∀ n, P17960599339744538113.a n = A230414 n

end A230414

/-! ## A230414.P3933773355512232236

`A008621(2*A230424(n))-1`
-/

namespace A230414.P3933773355512232236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A230424 n).toNat - 1

end

end A230414.P3933773355512232236

namespace A230414

/-- `A008621(2*A230424(n))-1` -/
def P3933773355512232236.Spec : Prop :=
  ∀ n, P3933773355512232236.a n = A230414 n

end A230414

/-! ## A230414.P9566922765529561017

`and(A208902(n+1), A230424(n))/2`
-/

namespace A230414.P9566922765529561017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A208902 (n + 1)) (A230424 n) : ℚ) / 2

end

end A230414.P9566922765529561017

namespace A230414

/-- `and(A208902(n+1), A230424(n))/2` -/
def P9566922765529561017.Spec : Prop :=
  ∀ n, P9566922765529561017.a n = (A230414 n : ℚ)

end A230414

/-! ## A230414.P18032633790275576881

`and(A158525(n+4), A230424(n))/2`
-/

namespace A230414.P18032633790275576881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A158525 (n + 4)) (A230424 n) : ℚ) / 2

end

end A230414.P18032633790275576881

namespace A230414

/-- `and(A158525(n+4), A230424(n))/2` -/
def P18032633790275576881.Spec : Prop :=
  ∀ n, P18032633790275576881.a n = (A230414 n : ℚ)

end A230414

/-! ## A230414.P13323682474248567825

`and(A002446(n), A230424(n))/2`
-/

namespace A230414.P13323682474248567825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A002446 n) (A230424 n) : ℚ) / 2

end

end A230414.P13323682474248567825

namespace A230414

/-- `and(A002446(n), A230424(n))/2` -/
def P13323682474248567825.Spec : Prop :=
  ∀ n, P13323682474248567825.a n = (A230414 n : ℚ)

end A230414

/-! ## A230414.P15208769624733762774

`and(A005367(n), A230424(n))/2`
-/

namespace A230414.P15208769624733762774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A005367 n) (A230424 n) : ℚ) / 2

end

end A230414.P15208769624733762774

namespace A230414

/-- `and(A005367(n), A230424(n))/2` -/
def P15208769624733762774.Spec : Prop :=
  ∀ n, P15208769624733762774.a n = (A230414 n : ℚ)

end A230414

/-! ## A230414.P12814643108440789043

`and(A230424(n), A286778(n))/2`
-/

namespace A230414.P12814643108440789043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A230424 n) (A286778 n) : ℚ) / 2

end

end A230414.P12814643108440789043

namespace A230414

/-- `and(A230424(n), A286778(n))/2` -/
def P12814643108440789043.Spec : Prop :=
  ∀ n, P12814643108440789043.a n = (A230414 n : ℚ)

end A230414

/-! ## A230414.P5722642428482580932

`and(A143960(n+1), A230424(n))/2`
-/

namespace A230414.P5722642428482580932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A143960 (n + 1)) (A230424 n) : ℚ) / 2

end

end A230414.P5722642428482580932

namespace A230414

/-- `and(A143960(n+1), A230424(n))/2` -/
def P5722642428482580932.Spec : Prop :=
  ∀ n, P5722642428482580932.a n = (A230414 n : ℚ)

end A230414

/-! ## A230414.P14454968521576600028

`and(A170940(n+1), A230424(n))/2`
-/

namespace A230414.P14454968521576600028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A170940 (n + 1)) (A230424 n) : ℚ) / 2

end

end A230414.P14454968521576600028

namespace A230414

/-- `and(A170940(n+1), A230424(n))/2` -/
def P14454968521576600028.Spec : Prop :=
  ∀ n, P14454968521576600028.a n = (A230414 n : ℚ)

end A230414

/-!
# A230415: Square array T(i,j) giving the number of differing digits in the factorial base representations of i and j, for i >= 0, j >= 0, read by antidiagonals.

The programs for A230415, there is no canonical definition to state claims against.
-/

/-! ## A230415.P16140892615881955755

`A060130(A003987(n)%A051980(n+1))`
-/

namespace A230415.P16140892615881955755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (Int.tmod (A003987 n) (A051980 (n + 1))).toNat

end

end A230415.P16140892615881955755

/-! ## A230415.P14111782110017012268

`∑{e}[A083224(A003987(n)), A083230(#)]`
-/

namespace A230415.P14111782110017012268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083224 (A003987 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A083230 (Nat.factorization (f1 n).natAbs p)

end

end A230415.P14111782110017012268

/-! ## A230415.P12483390625751515523

`A225572(A003987(n))%A247715(n+1)`
-/

namespace A230415.P12483390625751515523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225572 (A003987 n).toNat) (A247715 (n + 1))

end

end A230415.P12483390625751515523

/-! ## A230415.P13039418600964100766

`A242481(A280172(n+1)^A327489(n+1))`
-/

namespace A230415.P13039418600964100766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (SequenceMachineLib.roundAway ((A280172 (n + 1) : ℚ) ^ (A327489 (n + 1) : ℤ))).toNat

end

end A230415.P13039418600964100766

/-! ## A230415.P3370535583396494809

`A185218(A280172(n+1)%A247715(n+1))`
-/

namespace A230415.P3370535583396494809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 (Int.tmod (A280172 (n + 1)) (A247715 (n + 1))).toNat

end

end A230415.P3370535583396494809

/-!
# A230416: The infinite trunk of factorial beanstalk (A219666) with reversed subsections.

The programs for A230416, there is no canonical definition to state claims against.
-/

/-! ## A230416.P15098664668014095691

`A219666(A230432(n))`
-/

namespace A230416.P15098664668014095691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 (A230432 n).toNat

end

end A230416.P15098664668014095691

/-!
# A230417: Lower triangular region of A230415, a triangular table read by rows: T(n, k) tells in how many digit positions the factorial base representations (A007623) of n and k differ, where (n, k) = (0,0), (1,0), (1,1), (2,0), (2,1), (2,2), ..., n >= 0 and (0 <= k <= n).

The programs for A230417, there is no canonical definition to state claims against.
-/

/-! ## A230417.P404525719915548702

`A230415(A245300(n))`
-/

namespace A230417.P404525719915548702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230415 (A245300 n).toNat

end

end A230417.P404525719915548702

/-! ## A230417.P3317403410696208464

`A230415(floor(A214661(n+1)/2))`
-/

namespace A230417.P3317403410696208464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230415 ⌊(A214661 (n + 1) : ℚ) / 2⌋.toNat

end

end A230417.P3317403410696208464

/-! ## A230417.P8020308597258267646

`A230415((A214661(n+1)-1)/2)`
-/

namespace A230417.P8020308597258267646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230415 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A230417.P8020308597258267646

/-! ## A230417.P15540420533310675100

`A090079(A296082(A171275(n+1)²))`
-/

namespace A230417.P15540420533310675100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A296082 (A171275 (n + 1) ^ 2).toNat).toNat

end

end A230417.P15540420533310675100

/-! ## A230417.P15498196521507265926

`∑{d}[A296082(A171275(n+1)²), A112468(#)]`
-/

namespace A230417.P15498196521507265926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296082 (A171275 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A112468 d

end

end A230417.P15498196521507265926

/-!
# A230418: a(n) = the least k such that after having climbed k steps up from the root of the infinite trunk of the factorial beanstalk we have reached integer which is at least n.

The programs for A230418, there is no canonical definition to state claims against.
-/

/-! ## A230418.P7474309765959944897

`∑[char[A219666(n)+1]]`
-/

namespace A230418.P7474309765959944897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230418.P7474309765959944897

/-! ## A230418.P473661870404449121

`∑[char[A230416(n)+1]]`
-/

namespace A230418.P473661870404449121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230416 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230418.P473661870404449121

/-! ## A230418.P14204360940768862108

`∑[char[∑[A230406(n)]+1]]`
-/

namespace A230418.P14204360940768862108
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230418.P14204360940768862108

/-! ## A230418.P11265473321601080239

`∑[char[lt[A230425(n), 1]+1]]`
-/

namespace A230418.P11265473321601080239
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230425 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230418.P11265473321601080239

/-! ## A230418.P2789251394559456974

`∑[char[A231723(n)+A219653(n)+1]]`
-/

namespace A230418.P2789251394559456974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231723 n + A219653 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230418.P2789251394559456974

/-! ## A230418.P6727334809446176541

`∑[char[A219655(n)-A231724(n)+1]]`
-/

namespace A230418.P6727334809446176541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n - A231724 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230418.P6727334809446176541

/-!
# A230419: Square array A(n,k) = difference of digit sums in factorial base representations (A007623) of n and k, n>=0, k>=0, read by antidiagonals; A(n,k) = A034968(n)-A034968(k).

The programs for A230419, the canonical program `A230419.P3694317805320617839` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230419 has offset 0).

The definition of A230419 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230419.P3694317805320617839

`A034968(A025581(n))-A034968(A002262(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A230419

/-- `A034968(A025581(n))-A034968(A002262(n))` -/
def P3694317805320617839.Spec : Prop :=
  ∀ n, P3694317805320617839.a n = A230419 n

theorem P3694317805320617839.correct : P3694317805320617839.Spec := by
  intro n
  simp only [A230419]

end A230419

/-! ## A230419.P6858861066723051653

`Δ[ceil(sqrt(gcd(record[A123258(n+1)], A158303(n))))]`
-/

namespace A230419.P6858861066723051653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Int.gcd (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (A158303 n) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230419.P6858861066723051653

namespace A230419

/-- `Δ[ceil(sqrt(gcd(record[A123258(n+1)], A158303(n))))]` -/
def P6858861066723051653.Spec : Prop :=
  ∀ n, P6858861066723051653.a n = A230419 n

end A230419

/-! ## A230419.P4610706709303961517

`Δ[A287272(A343510(n+1))]`
-/

namespace A230419.P4610706709303961517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A343510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230419.P4610706709303961517

namespace A230419

/-- `Δ[A287272(A343510(n+1))]` -/
def P4610706709303961517.Spec : Prop :=
  ∀ n, P4610706709303961517.a n = A230419 n

end A230419

/-! ## A230419.P1071356119923334208

`A167192(n+1)-A327051(A253388(n+1))`
-/

namespace A230419.P1071356119923334208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (n + 1) - A327051 (A253388 (n + 1)).toNat

end

end A230419.P1071356119923334208

namespace A230419

/-- `A167192(n+1)-A327051(A253388(n+1))` -/
def P1071356119923334208.Spec : Prop :=
  ∀ n, P1071356119923334208.a n = A230419 n

end A230419

/-! ## A230419.P14413425975640224272

`Δ[A007302(A253180(n)+A000079(n))]`
-/

namespace A230419.P14413425975640224272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A253180 n + A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230419.P14413425975640224272

namespace A230419

/-- `Δ[A007302(A253180(n)+A000079(n))]` -/
def P14413425975640224272.Spec : Prop :=
  ∀ n, P14413425975640224272.a n = A230419 n

end A230419

/-!
# A230420: Triangle T(n,k) giving the number of terms of A219666 which have n digits (A084558) in their factorial base expansion and whose most significant digit (A099563) in that base is k.

The programs for A230420, there is no canonical definition to state claims against.
-/

/-! ## A230420.P14294725918187407295

`A230421(∑[char[∑[n]]]²-n)`
-/

namespace A230420.P14294725918187407295
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230421 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A230420.P14294725918187407295

/-! ## A230420.P5925632321302812485

`or(char[1], A230421(A038722(n+1)))`
-/

namespace A230420.P5925632321302812485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A230421 (A038722 (n + 1)).toNat)

end

end A230420.P5925632321302812485

/-! ## A230420.P10652592376751536947

`and(-1, A230421(A114327(n)+1+n))`
-/

namespace A230420.P10652592376751536947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A230421 (A114327 n + 1 + (n : ℤ)).toNat)

end

end A230420.P10652592376751536947

/-! ## A230420.P2175444188402605705

`and(-1, A230421(A093995(n+1)-n))`
-/

namespace A230420.P2175444188402605705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A230421 (A093995 (n + 1) - (n : ℤ)).toNat)

end

end A230420.P2175444188402605705

/-! ## A230420.P1175243767668658434

`Δ[A230421(A038722(n))+a(n-1)]` with `a(0)=1`
-/

namespace A230420.P1175243767668658434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A230421 (A038722 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230420.P1175243767668658434

/-! ## A230420.P9074067989827282054

`and(-1, A230421(A002024(n+1)²-n))`
-/

namespace A230420.P9074067989827282054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A230421 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat)

end

end A230420.P9074067989827282054

/-! ## A230420.P4733172695893789617

`and(-1, A230421((A003056(n)+1)²-n))`
-/

namespace A230420.P4733172695893789617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A230421 ((A003056 n + 1) ^ 2 - (n : ℤ)).toNat)

end

end A230420.P4733172695893789617

/-! ## A230420.P18236702025573795634

`gcd(A000038(n), A230421(A038722(n+1)))`
-/

namespace A230420.P18236702025573795634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A230421 (A038722 (n + 1)).toNat)

end

end A230420.P18236702025573795634

/-! ## A230420.P13080654945998880089

`and(A230421(A038722(n+1)), A290074(n))`
-/

namespace A230420.P13080654945998880089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A230421 (A038722 (n + 1)).toNat) (A290074 n)

end

end A230420.P13080654945998880089

/-! ## A230420.P15086092789019251862

`A007318(∑[n])*A230421(A038722(n+1))`
-/

namespace A230420.P15086092789019251862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A230421 (A038722 (n + 1)).toNat

end

end A230420.P15086092789019251862

/-!
# A230421: Triangle A230420 transposed.

The programs for A230421, there is no canonical definition to state claims against.
-/

/-! ## A230421.P16233087183903128681

`A230420(A038722(n+1))`
-/

namespace A230421.P16233087183903128681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230420 (A038722 (n + 1)).toNat

end

end A230421.P16233087183903128681

/-! ## A230421.P9482225543371094422

`A230420(∑[char[∑[n]]]²-n)`
-/

namespace A230421.P9482225543371094422
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230420 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A230421.P9482225543371094422

/-! ## A230421.P14068268002091305655

`or(char[1], A230420(A061579(n)+1))`
-/

namespace A230421.P14068268002091305655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A230420 (A061579 n + 1).toNat)

end

end A230421.P14068268002091305655

/-! ## A230421.P293657127559457277

`lcm(A033999(n), A230420(A061579(n)+1))`
-/

namespace A230421.P293657127559457277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A230420 (A061579 n + 1).toNat)

end

end A230421.P293657127559457277

/-! ## A230421.P15654945695489177501

`A230420(A061579(n)+1)%∑[A000032(n)]`
-/

namespace A230421.P15654945695489177501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230420 (A061579 n + 1).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230421.P15654945695489177501

/-!
# A230422: Positions of ones in A230410.

The programs for A230422, there is no canonical definition to state claims against.
-/

/-! ## A230422.P6594577943075167620

`A258010(n)+a(n-1)` with `a(0)=1`
-/

namespace A230422.P6594577943075167620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A258010 n + a (n - 1)

end

end A230422.P6594577943075167620

/-! ## A230422.P6904850639926254630

`∑[A258010(n+1)]+1-A258010(n+1)`
-/

namespace A230422.P6904850639926254630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A258010 (n + 1))

end

end A230422.P6904850639926254630

/-! ## A230422.P4051987730714845579

`∑[A258010(n+1)]-A023443(A258010(n+1))`
-/

namespace A230422.P4051987730714845579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023443 (A258010 (n + 1)).toNat

end

end A230422.P4051987730714845579

/-! ## A230422.P17310759036352082541

`eq[1, A230410(n)]`
-/

namespace A230422.P17310759036352082541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230422.P17310759036352082541

/-! ## A230422.P15056432252514704633

`record[(n+1)^(2-A230410(n+1))]`
-/

namespace A230422.P15056432252514704633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (2 - A230410 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230422.P15056432252514704633

/-! ## A230422.P3612542290467428688

`lt[comp[A151800(n)]*A230410(n), 2*n]`
-/

namespace A230422.P3612542290467428688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) * A230410 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A230422.P3612542290467428688

/-! ## A230422.P6708457852662321270

`lt[comp[A271114(n)]*A230410(n), 2*n]`
-/

namespace A230422.P6708457852662321270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) * A230410 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A230422.P6708457852662321270

/-! ## A230422.P8715658955324663177

`lt[comp[A132235(n+1)-4]*A230410(n), 2*n]`
-/

namespace A230422.P8715658955324663177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1) - 4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) * A230410 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A230422.P8715658955324663177

/-!
# A230423: a(n) = smallest natural number x such that x=n+A034968(x), or zero if no such number exists.

The programs for A230423, the canonical program `A230423.P7455816380585758561` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230423 has offset 0).

The definition of A230423 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230423.P7455816380585758561

`2*A230414(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A230423

/-- `2*A230414(n)` -/
def P7455816380585758561.Spec : Prop :=
  ∀ n, P7455816380585758561.a n = A230423 n

theorem P7455816380585758561.correct : P7455816380585758561.Spec := by
  intro n
  simp only [A230423]

end A230423

/-! ## A230423.P17671479956392036705

`or(1, A230424(n))-1`
-/

namespace A230423.P17671479956392036705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A230424 n) - 1

end

end A230423.P17671479956392036705

namespace A230423

/-- `or(1, A230424(n))-1` -/
def P17671479956392036705.Spec : Prop :=
  ∀ n, P17671479956392036705.a n = A230423 n

end A230423

/-! ## A230423.P14725365522152461536

`A005843(A230414(n))`
-/

namespace A230423.P14725365522152461536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A230414 n).toNat

end

end A230423.P14725365522152461536

namespace A230423

/-- `A005843(A230414(n))` -/
def P14725365522152461536.Spec : Prop :=
  ∀ n, P14725365522152461536.a n = A230423 n

end A230423

/-! ## A230423.P7063876848650416032

`A230424(n)-A230412(n)`
-/

namespace A230423.P7063876848650416032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - A230412 n

end

end A230423.P7063876848650416032

namespace A230423

/-- `A230424(n)-A230412(n)` -/
def P7063876848650416032.Spec : Prop :=
  ∀ n, P7063876848650416032.a n = A230423 n

end A230423

/-! ## A230423.P18220618162991870944

`A230424(n)-char[A219650(n)]`
-/

namespace A230423.P18220618162991870944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A230423.P18220618162991870944

namespace A230423

/-- `A230424(n)-char[A219650(n)]` -/
def P18220618162991870944.Spec : Prop :=
  ∀ n, P18220618162991870944.a n = A230423 n

end A230423

/-! ## A230423.P10331796077325535696

`A004277(A230414(n)+1)-2`
-/

namespace A230423.P10331796077325535696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A230414 n + 1).toNat - 2

end

end A230423.P10331796077325535696

namespace A230423

/-- `A004277(A230414(n)+1)-2` -/
def P10331796077325535696.Spec : Prop :=
  ∀ n, P10331796077325535696.a n = A230423 n

end A230423

/-! ## A230423.P3062327781439761514

`2*A230413(n*A230412(n))`
-/

namespace A230423.P3062327781439761514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230413 ((n : ℤ) * A230412 n).toNat

end

end A230423.P3062327781439761514

namespace A230423

/-- `2*A230413(n*A230412(n))` -/
def P3062327781439761514.Spec : Prop :=
  ∀ n, P3062327781439761514.a n = A230423 n

end A230423

/-! ## A230423.P7615594986227902494

`A230414(n)+A230414(n%(n+1))`
-/

namespace A230423.P7615594986227902494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n + A230414 (n % (n + 1))

end

end A230423.P7615594986227902494

namespace A230423

/-- `A230414(n)+A230414(n%(n+1))` -/
def P7615594986227902494.Spec : Prop :=
  ∀ n, P7615594986227902494.a n = A230423 n

theorem P7615594986227902494.correct : P7615594986227902494.Spec := by
  intro n
  simp only [A230423, Nat.add_sub_cancel, A230423.P7615594986227902494.a, A230423.P7455816380585758561.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A230423

/-! ## A230423.P3754673707576821457

`A230424(n)-gcd(A230414(n), A230424(n))`
-/

namespace A230423.P3754673707576821457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - (Int.gcd (A230414 n) (A230424 n) : ℤ)

end

end A230423.P3754673707576821457

namespace A230423

/-- `A230424(n)-gcd(A230414(n), A230424(n))` -/
def P3754673707576821457.Spec : Prop :=
  ∀ n, P3754673707576821457.a n = A230423 n

end A230423

/-! ## A230423.P14086988815149327360

`A230424(n)-and(A158388(n), A230424(n))`
-/

namespace A230423.P14086988815149327360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - Int.land (A158388 n) (A230424 n)

end

end A230423.P14086988815149327360

namespace A230423

/-- `A230424(n)-and(A158388(n), A230424(n))` -/
def P14086988815149327360.Spec : Prop :=
  ∀ n, P14086988815149327360.a n = A230423 n

end A230423

/-! ## A230423.P14346813061195587140

`A230424(n)-and(A230424(n), A267871(n))`
-/

namespace A230423.P14346813061195587140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - Int.land (A230424 n) (A267871 n)

end

end A230423.P14346813061195587140

namespace A230423

/-- `A230424(n)-and(A230424(n), A267871(n))` -/
def P14346813061195587140.Spec : Prop :=
  ∀ n, P14346813061195587140.a n = A230423 n

end A230423

/-! ## A230423.P9895704803222993091

`A029578(A230424(n))`
-/

namespace A230423.P9895704803222993091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A230424 n).toNat

end

end A230423.P9895704803222993091

namespace A230423

/-- `A029578(A230424(n))` -/
def P9895704803222993091.Spec : Prop :=
  ∀ n, P9895704803222993091.a n = A230423 n

end A230423

/-! ## A230423.P8630612049034520347

`A230414(n)+A230414(A219658(n+1))+A230414(n)`
-/

namespace A230423.P8630612049034520347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n + (A230414 (A219658 (n + 1)).toNat + A230414 n)

end

end A230423.P8630612049034520347

namespace A230423

/-- `A230414(n)+A230414(A219658(n+1))+A230414(n)` -/
def P8630612049034520347.Spec : Prop :=
  ∀ n, P8630612049034520347.a n = A230423 n

end A230423

/-! ## A230423.P9524674806579032917

`A004524(2*A230424(n))`
-/

namespace A230423.P9524674806579032917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * A230424 n).toNat

end

end A230423.P9524674806579032917

namespace A230423

/-- `A004524(2*A230424(n))` -/
def P9524674806579032917.Spec : Prop :=
  ∀ n, P9524674806579032917.a n = A230423 n

end A230423

/-! ## A230423.P12514813995076033096

`A230424(n)-and(A176410(n), A230424(n))`
-/

namespace A230423.P12514813995076033096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - Int.land (A176410 n) (A230424 n)

end

end A230423.P12514813995076033096

namespace A230423

/-- `A230424(n)-and(A176410(n), A230424(n))` -/
def P12514813995076033096.Spec : Prop :=
  ∀ n, P12514813995076033096.a n = A230423 n

end A230423

/-! ## A230423.P13452684041956659159

`A230424(n)-and(A176794(n), A230424(n))`
-/

namespace A230423.P13452684041956659159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - Int.land (A176794 n) (A230424 n)

end

end A230423.P13452684041956659159

namespace A230423

/-- `A230424(n)-and(A176794(n), A230424(n))` -/
def P13452684041956659159.Spec : Prop :=
  ∀ n, P13452684041956659159.a n = A230423 n

end A230423

/-! ## A230423.P17084162989416871335

`A230424(n)-and(A048578(n), A230424(n))`
-/

namespace A230423.P17084162989416871335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - Int.land (A048578 n) (A230424 n)

end

end A230423.P17084162989416871335

namespace A230423

/-- `A230424(n)-and(A048578(n), A230424(n))` -/
def P17084162989416871335.Spec : Prop :=
  ∀ n, P17084162989416871335.a n = A230423 n

end A230423

/-! ## A230423.P190614924323472842

`A230424(n)-and(A020737(n), A230424(n))`
-/

namespace A230423.P190614924323472842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - Int.land (A020737 n) (A230424 n)

end

end A230423.P190614924323472842

namespace A230423

/-- `A230424(n)-and(A020737(n), A230424(n))` -/
def P190614924323472842.Spec : Prop :=
  ∀ n, P190614924323472842.a n = A230423 n

end A230423

/-! ## A230423.P14516231907843940181

`A230424(n)-and(A230424(n), A276918(n))`
-/

namespace A230423.P14516231907843940181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - Int.land (A230424 n) (A276918 n)

end

end A230423.P14516231907843940181

namespace A230423

/-- `A230424(n)-and(A230424(n), A276918(n))` -/
def P14516231907843940181.Spec : Prop :=
  ∀ n, P14516231907843940181.a n = A230423 n

end A230423

/-! ## A230423.P13957838342678667628

`A230424(n)-and(A195744(n), A230424(n))`
-/

namespace A230423.P13957838342678667628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n - Int.land (A195744 n) (A230424 n)

end

end A230423.P13957838342678667628

namespace A230423

/-- `A230424(n)-and(A195744(n), A230424(n))` -/
def P13957838342678667628.Spec : Prop :=
  ∀ n, P13957838342678667628.a n = A230423 n

end A230423

/-!
# A230424: a(n) = largest natural number x such that x=n+A034968(x), or zero if no such number exists.

The programs for A230424, the canonical program `A230424.P15197775512167793479` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230424 has offset 0).

The definition of A230424 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230412, A230423, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230424.P15197775512167793479

`A230412(n)*(A230423(n)+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A230424

/-- `A230412(n)*(A230423(n)+1)` -/
def P15197775512167793479.Spec : Prop :=
  ∀ n, P15197775512167793479.a n = A230424 n

theorem P15197775512167793479.correct : P15197775512167793479.Spec := by
  intro n
  simp only [A230424]

end A230424

/-! ## A230424.P4052191985228346882

`A230423(n)+A230412(n)`
-/

namespace A230424.P4052191985228346882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230423 n + A230412 n

end

end A230424.P4052191985228346882

namespace A230424

/-- `A230423(n)+A230412(n)` -/
def P4052191985228346882.Spec : Prop :=
  ∀ n, P4052191985228346882.a n = A230424 n

end A230424

/-! ## A230424.P15252988696519363552

`A230423(n)+char[A219650(n)]`
-/

namespace A230424.P15252988696519363552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230423 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A230424.P15252988696519363552

namespace A230424

/-- `A230423(n)+char[A219650(n)]` -/
def P15252988696519363552.Spec : Prop :=
  ∀ n, P15252988696519363552.a n = A230424 n

end A230424

/-! ## A230424.P6319230839674282939

`A230423(n)+char[A219651(n)]`
-/

namespace A230424.P6319230839674282939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230423 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A230424.P6319230839674282939

namespace A230424

/-- `A230423(n)+char[A219651(n)]` -/
def P6319230839674282939.Spec : Prop :=
  ∀ n, P6319230839674282939.a n = A230424 n

end A230424

/-! ## A230424.P6506114429842328125

`A230412(n)+2*A230414(n)`
-/

namespace A230424.P6506114429842328125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230412 n + 2 * A230414 n

end

end A230424.P6506114429842328125

namespace A230424

/-- `A230412(n)+2*A230414(n)` -/
def P6506114429842328125.Spec : Prop :=
  ∀ n, P6506114429842328125.a n = A230424 n

end A230424

/-! ## A230424.P3231233372876812823

`A230412(n)-(A230427(A219666(n))-A230423(n))`
-/

namespace A230424.P3231233372876812823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230412 n - (A230427 (A219666 n).toNat - A230423 n)

end

end A230424.P3231233372876812823

namespace A230424

/-- `A230412(n)-(A230427(A219666(n))-A230423(n))` -/
def P3231233372876812823.Spec : Prop :=
  ∀ n, P3231233372876812823.a n = A230424 n

end A230424

/-!
# A230425: a(n)=0 if n is in the infinite trunk of factorial beanstalk (in A219666), otherwise 1 + number of steps to reach the farthest leaf in that finite branch of the beanstalk.

The programs for A230425, there is no canonical definition to state claims against.
-/

/-! ## A230425.P16092759403098857881

`A002487(A230427(n)%A275890(n+1))`
-/

namespace A230425.P16092759403098857881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.tmod (A230427 n) (A275890 (n + 1))).toNat

end

end A230425.P16092759403098857881

/-! ## A230425.P11974832411758762023

`A151687(A230426(n)%A275890(n+1))`
-/

namespace A230425.P11974832411758762023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151687 (Int.tmod (A230426 n) (A275890 (n + 1))).toNat

end

end A230425.P11974832411758762023

/-! ## A230425.P14768879316049289493

`A002487(A230427(n))%(A191785(n)+9)`
-/

namespace A230425.P14768879316049289493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 (A230427 n).toNat) (A191785 n + 9)

end

end A230425.P14768879316049289493

/-! ## A230425.P5420703138023259333

`A002487(A230427(n))+A000007(A191785(n))`
-/

namespace A230425.P5420703138023259333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A230427 n).toNat + A000007 (A191785 n).toNat

end

end A230425.P5420703138023259333

/-! ## A230425.P17442058906953705755

`A151687(A230426(n))%A262377(A016861(n))`
-/

namespace A230425.P17442058906953705755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151687 (A230426 n).toNat) (A262377 (A016861 n).toNat)

end

end A230425.P17442058906953705755

/-! ## A230425.P6885815407611059149

`A002487(A230427(n))+A000007(n)*A095201(n+1)`
-/

namespace A230425.P6885815407611059149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A230427 n).toNat + A000007 n * A095201 (n + 1)

end

end A230425.P6885815407611059149

/-! ## A230425.P16872788401822492523

`A151687(A230426(n))+A000038(A088676(n+1))`
-/

namespace A230425.P16872788401822492523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151687 (A230426 n).toNat + A000038 (A088676 (n + 1)).toNat

end

end A230425.P16872788401822492523

/-!
# A230426: a(n)=0 if n is in the infinite trunk of factorial beanstalk (in A219666), otherwise the number of terminal nodes (leaves) in that finite branch of the beanstalk.

The programs for A230426, there is no canonical definition to state claims against.
-/

/-! ## A230426.P7219244274056011852

`ceil(A230427(n)/2)`
-/

namespace A230426.P7219244274056011852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A230427 n : ℚ) / 2⌉

end

end A230426.P7219244274056011852

/-! ## A230426.P7378587384125134722

`A001057(A230427(n))`
-/

namespace A230426.P7378587384125134722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A230427 n).toNat

end

end A230426.P7378587384125134722

/-! ## A230426.P3555958001387542727

`A004526(A230427(n)+1)`
-/

namespace A230426.P3555958001387542727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A230427 n + 1).toNat

end

end A230426.P3555958001387542727

/-! ## A230426.P13861058487578907410

`A025480(A230427(n)+1)`
-/

namespace A230426.P13861058487578907410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A230427 n + 1).toNat

end

end A230426.P13861058487578907410

/-! ## A230426.P2496793369996942980

`A123108(A230427(n)+1)`
-/

namespace A230426.P2496793369996942980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A230427 n + 1).toNat

end

end A230426.P2496793369996942980

/-! ## A230426.P5141698752420215325

`A246277(A230427(n)+1)`
-/

namespace A230426.P5141698752420215325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A230427 n + 1).toNat

end

end A230426.P5141698752420215325

/-! ## A230426.P13573910850611276722

`∑{d}[A230427(n), A004525(A000010(#))]`
-/

namespace A230426.P13573910850611276722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A004525 (A000010 d).toNat

end

end A230426.P13573910850611276722

/-! ## A230426.P16637125928333921236

`round(A230427(n)/A020639(A000010(n+1)))`
-/

namespace A230426.P16637125928333921236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A230427 n : ℚ) / (A020639 (A000010 (n + 1)).toNat : ℚ))

end

end A230426.P16637125928333921236

/-! ## A230426.P8825701457011966371

`A055998(A230427(n)+1)%(A230427(n)+1)`
-/

namespace A230426.P8825701457011966371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055998 (A230427 n + 1).toNat) (A230427 n + 1)

end

end A230426.P8825701457011966371

/-! ## A230426.P3511937637833408471

`A095201(A230427(n)+2)`
-/

namespace A230426.P3511937637833408471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095201 (A230427 n + 2).toNat

end

end A230426.P3511937637833408471

/-! ## A230426.P8670264052667221943

`A095201(2-(A000007(n)-A230427(n)))`
-/

namespace A230426.P8670264052667221943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095201 (2 - (A000007 n - A230427 n)).toNat

end

end A230426.P8670264052667221943

/-! ## A230426.P14163868246900880389

`A008997(A230427(n)+1)+A001222(A230427(n)+1)`
-/

namespace A230426.P14163868246900880389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008997 (A230427 n + 1).toNat + A001222 (A230427 n + 1).toNat

end

end A230426.P14163868246900880389

/-!
# A230427: a(n)=0 if n is in the infinite trunk of factorial beanstalk (in A219666), otherwise the number of nodes (including leaves and the node n itself) in that finite branch of the beanstalk.

The programs for A230427, there is no canonical definition to state claims against.
-/

/-! ## A230427.P1536646718011802638

`A004273(A230426(n))`
-/

namespace A230427.P1536646718011802638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A230426 n).toNat

end

end A230427.P1536646718011802638

/-! ## A230427.P13342181371216046645

`A014681(2*A230426(n))`
-/

namespace A230427.P13342181371216046645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A230426 n).toNat

end

end A230427.P13342181371216046645

/-! ## A230427.P14936801596210666757

`A082375(A230426(n)²)`
-/

namespace A230427.P14936801596210666757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A230426 n ^ 2).toNat

end

end A230427.P14936801596210666757

/-! ## A230427.P10955797614738821896

`A253580(A230426(n)²)`
-/

namespace A230427.P10955797614738821896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (A230426 n ^ 2).toNat

end

end A230427.P10955797614738821896

/-! ## A230427.P9032510973369692111

`A276581(A230426(n)²)`
-/

namespace A230427.P9032510973369692111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A230426 n ^ 2).toNat

end

end A230427.P9032510973369692111

/-! ## A230427.P7138675714224487098

`A046660(4^A230426(n))`
-/

namespace A230427.P7138675714224487098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A230426 n : ℤ))).toNat

end

end A230427.P7138675714224487098

/-! ## A230427.P954934569154188602

`A252736(4^A230426(n))`
-/

namespace A230427.P954934569154188602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A230426 n : ℤ))).toNat

end

end A230427.P954934569154188602

/-! ## A230427.P4221181430237258401

`A339010(4^A230426(n))`
-/

namespace A230427.P4221181430237258401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339010 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A230426 n : ℤ))).toNat

end

end A230427.P4221181430237258401

/-! ## A230427.P31936600479592491

`A139252(A230426(n)%A132083(n+1))`
-/

namespace A230427.P31936600479592491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (Int.tmod (A230426 n) (A132083 (n + 1))).toNat

end

end A230427.P31936600479592491

/-!
# A230429: Triangle T(n,k) giving the largest member of "the infinite trunk of factorial beanstalk" (A219666) whose factorial base representation contains n digits (A084558) and the most significant such digit (A099563) is k.

The programs for A230429, there is no canonical definition to state claims against.
-/

/-! ## A230429.P14717281120023020729

`A219666(∑[A230420(n+1)])`
-/

namespace A230429.P14717281120023020729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230429.P14717281120023020729

/-! ## A230429.P9443634680001353059

`A219666(∑[A230421(A038722(n+1))])`
-/

namespace A230429.P9443634680001353059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230421 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230429.P9443634680001353059

/-! ## A230429.P16037329604882413198

`A219651(A230428(n+2))`
-/

namespace A230429.P16037329604882413198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (A230428 (n + 2)).toNat

end

end A230429.P16037329604882413198

/-!
# A230430: After zero, gives the numbers where finite side-trees (or "tendrils") of factorial beanstalk branch off from its infinite trunk (A219666).

The programs for A230430, there is no canonical definition to state claims against.
-/

/-! ## A230430.P16416018180309173474

`A219666(n+1)+(-1)^A219666(n+1)`
-/

namespace A230430.P16416018180309173474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219666 (n + 1) : ℚ) + (-1 : ℚ) ^ (A219666 (n + 1) : ℤ)

end

end A230430.P16416018180309173474

/-! ## A230430.P14800544530507156488

`xor(1, A219666(n+1))`
-/

namespace A230430.P14800544530507156488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A219666 (n + 1))

end

end A230430.P14800544530507156488

/-! ## A230430.P3622654697922664255

`xor(1, ∑[A230406(n+1)])`
-/

namespace A230430.P3622654697922664255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230430.P3622654697922664255

/-! ## A230430.P5629864255747522407

`A004442(A219666(n+1))`
-/

namespace A230430.P5629864255747522407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A219666 (n + 1)).toNat

end

end A230430.P5629864255747522407

/-! ## A230430.P12832359418750450759

`A004442(∑[A230406(n+1)])`
-/

namespace A230430.P12832359418750450759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230430.P12832359418750450759

/-! ## A230430.P14485270971933482100

`A004442(eq[A000007(n), A230425(n)])`
-/

namespace A230430.P14485270971933482100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A230430.P14485270971933482100

/-!
# A230431: After the first zero, integers from 0 to A219661(n)-1 followed by integers from 0 to A219661(n+1)-1, etc.

The programs for A230431, there is no canonical definition to state claims against.
-/

/-! ## A230431.P8281513826937413653

`(a(n-1)+1)%A004526(A174905(n+1))` with `a(0)=0`
-/

namespace A230431.P8281513826937413653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + 1) (A004526 (A174905 (n + 1)).toNat)

end

end A230431.P8281513826937413653

/-!
# A230432: Simple self-inverse permutation of natural numbers: after zero, list each block of A219661(n) numbers in reverse order, from A226061(n+1) to A219665(n).

The programs for A230432, there is no canonical definition to state claims against.
-/

/-! ## A230432.P1942744178013122872

`A219652(A230416(n))`
-/

namespace A230432.P1942744178013122872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (A230416 n).toNat

end

end A230432.P1942744178013122872

/-!
# A230434: Magic numbers of nucleons. Another version of A018226, with 34 inserted.

The programs for A230434, there is no canonical definition to state claims against.
-/

/-! ## A230434.P9533796086189120912

`∪[A018226(n+1), A153465(n+1)]`
-/

namespace A230434.P9533796086189120912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230434.P9533796086189120912

/-! ## A230434.P3659964129753273107

`∪[A153465(n+1), A162626(n+1)]`
-/

namespace A230434.P3659964129753273107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230434.P3659964129753273107

/-! ## A230434.P17051035599977364015

`∪[A153465(n+1), ∑[A210842(n+1)]]`
-/

namespace A230434.P17051035599977364015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153465 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230434.P17051035599977364015

/-! ## A230434.P1583848666439293593

`∪[A018226(n+1), ∑[A354382(n+1)]]`
-/

namespace A230434.P1583848666439293593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018226 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230434.P1583848666439293593

/-!
# A230435: Triangle by rows, A001047 convolved with A000079.

The programs for A230435, the canonical program `A230435.P7509191106752444484` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230435 has offset 0).

The definition of A230435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230435.P2417296402985357567

`3*A036561(n)-∏[char[∑[n]]+1]`
-/

namespace A230435.P2417296402985357567
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A036561 n - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A230435.P2417296402985357567

namespace A230435

/-- `3*A036561(n)-∏[char[∑[n]]+1]` -/
def P2417296402985357567.Spec : Prop :=
  ∀ n, P2417296402985357567.a n = A230435 n

end A230435

/-! ## A230435.P15679605672455229735

`A036561(comp[∑[n]])-∏[char[∑[n]]+1]`
-/

namespace A230435.P15679605672455229735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A230435.P15679605672455229735

namespace A230435

/-- `A036561(comp[∑[n]])-∏[char[∑[n]]+1]` -/
def P15679605672455229735.Spec : Prop :=
  ∀ n, P15679605672455229735.a n = A230435 n

end A230435

/-! ## A230435.P7509191106752444484

`A001047(A002260(n+1))*A130321(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230435

/-- `A001047(A002260(n+1))*A130321(n)` -/
def P7509191106752444484.Spec : Prop :=
  ∀ n, P7509191106752444484.a n = A230435 n

theorem P7509191106752444484.correct : P7509191106752444484.Spec := by
  intro n
  simp only [A230435]

end A230435

/-! ## A230435.P17007756216664156486

`A119733(A089633(n)+1)`
-/

namespace A230435.P17007756216664156486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A089633 n + 1).toNat

end

end A230435.P17007756216664156486

namespace A230435

/-- `A119733(A089633(n)+1)` -/
def P17007756216664156486.Spec : Prop :=
  ∀ n, P17007756216664156486.a n = A230435 n

end A230435

/-! ## A230435.P2080064009602249435

`A119733(A023758(n+2))`
-/

namespace A230435.P2080064009602249435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A023758 (n + 2)).toNat

end

end A230435.P2080064009602249435

namespace A230435

/-- `A119733(A023758(n+2))` -/
def P2080064009602249435.Spec : Prop :=
  ∀ n, P2080064009602249435.a n = A230435 n

end A230435

/-! ## A230435.P15549869250917781829

`A119733(∑[A057728(n+1)])`
-/

namespace A230435.P15549869250917781829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230435.P15549869250917781829

namespace A230435

/-- `A119733(∑[A057728(n+1)])` -/
def P15549869250917781829.Spec : Prop :=
  ∀ n, P15549869250917781829.a n = A230435 n

end A230435

/-!
# A230439: Number of contractible "tight" meanders of width n.

The programs for A230439, there is no canonical definition to state claims against.
-/

/-! ## A230439.P8006852109383894242

`A229219(A085348(n))`
-/

namespace A230439.P8006852109383894242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A085348 n).toNat

end

end A230439.P8006852109383894242

/-! ## A230439.P4401499739725999906

`A229219(A027208(n+1))`
-/

namespace A230439.P4401499739725999906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A027208 (n + 1)).toNat

end

end A230439.P4401499739725999906

/-! ## A230439.P6073284553943778041

`A284359(C(A284401(n)-n, 2))`
-/

namespace A230439.P6073284553943778041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (Nat.choose (A284401 n - (n : ℤ)).toNat 2)

end

end A230439.P6073284553943778041

/-!
# A230440: Triangle read by rows in which row n lists A000041(n-1) 1's followed by the list of partitions of n that do not contain 1 as a part in colexicographic order.

The programs for A230440, there is no canonical definition to state claims against.
-/

/-! ## A230440.P3052100275275657310

`A211992(eq[A211992(n+1), A228716(n+1)]+1)`
-/

namespace A230440.P3052100275275657310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211992 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A230440.P3052100275275657310

/-! ## A230440.P750903457342473169

`A135010(n+1)+A010815(A122599(n+1))`
-/

namespace A230440.P750903457342473169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (n + 1) + A010815 (A122599 (n + 1)).toNat

end

end A230440.P750903457342473169

/-! ## A230440.P15385381571496483622

`xor(A102683(A281837(n+1)), A135010(n+1))`
-/

namespace A230440.P15385381571496483622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102683 (A281837 (n + 1)).toNat) (A135010 (n + 1))

end

end A230440.P15385381571496483622

/-! ## A230440.P9252557884920487040

`A135010(A222254(n+1))%A108272(A007814(n+2)+1)`
-/

namespace A230440.P9252557884920487040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135010 (A222254 (n + 1)).toNat) (A108272 (A007814 (n + 2) + 1).toNat)

end

end A230440.P9252557884920487040

/-! ## A230440.P14544298711228116200

`xor(A016389(A001263(n+1)), A135010(n+1))`
-/

namespace A230440.P14544298711228116200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016389 (A001263 (n + 1)).toNat) (A135010 (n + 1))

end

end A230440.P14544298711228116200

/-!
# A230441: Number of overpartitions of n minus the number of partitions of n.

The programs for A230441, there is no canonical definition to state claims against.
-/

/-! ## A230441.P6683543849820847145

`A015128(n)-A000041(n)`
-/

namespace A230441.P6683543849820847145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A000041 n

end

end A230441.P6683543849820847145

/-! ## A230441.P6986915431210928391

`abs(A004402(n))-A000041(n)`
-/

namespace A230441.P6986915431210928391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004402 n| - A000041 n

end

end A230441.P6986915431210928391

/-! ## A230441.P990187962028097790

`A015128(n)-∑[A002865(n)]`
-/

namespace A230441.P990187962028097790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230441.P990187962028097790

/-! ## A230441.P12592403445830197499

`∑[A211971(n)]-A000041(n)`
-/

namespace A230441.P12592403445830197499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000041 n

end

end A230441.P12592403445830197499

/-! ## A230441.P5743793713461005830

`A015128(n)-(A000065(n)+1)`
-/

namespace A230441.P5743793713461005830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - (A000065 n + 1)

end

end A230441.P5743793713461005830

/-! ## A230441.P16842302930665321257

`A015128(n)-A139582(n)/2`
-/

namespace A230441.P16842302930665321257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015128 n : ℚ) - (A139582 n : ℚ) / 2

end

end A230441.P16842302930665321257

/-! ## A230441.P10202447570998222548

`abs(A004402(n))-(A000065(n)+1)`
-/

namespace A230441.P10202447570998222548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004402 n| - (A000065 n + 1)

end

end A230441.P10202447570998222548

/-! ## A230441.P9878384922456722574

`abs(A004402(n))-A139582(n)/2`
-/

namespace A230441.P9878384922456722574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A004402 n| : ℚ) - (A139582 n : ℚ) / 2

end

end A230441.P9878384922456722574

/-! ## A230441.P2473046974463031164

`A015128(n)+n-∑[A232697(n)]`
-/

namespace A230441.P2473046974463031164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230441.P2473046974463031164

/-! ## A230441.P7500342923625837559

`A015128(n)-(A046682(n)+A000701(n))`
-/

namespace A230441.P7500342923625837559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - (A046682 n + A000701 n)

end

end A230441.P7500342923625837559

/-! ## A230441.P3689997851528750030

`A015128(n)-(A027193(n)+A027187(n))`
-/

namespace A230441.P3689997851528750030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - (A027193 n + A027187 n)

end

end A230441.P3689997851528750030

/-! ## A230441.P17047459906002531499

`lcm((A000005(8*n+1)%2)!, A004402(n))-A000041(n)`
-/

namespace A230441.P17047459906002531499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (Nat.factorial (Int.tmod (A000005 (8 * n + 1)) 2).toNat : ℤ) (A004402 n) : ℤ) - A000041 n

end

end A230441.P17047459906002531499

/-! ## A230441.P12784331953328388852

`A015128(n)-A035363(2*n)`
-/

namespace A230441.P12784331953328388852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A035363 (2 * n)

end

end A230441.P12784331953328388852

/-! ## A230441.P17915584517013049139

`A015128(n)-A119620(2*n)`
-/

namespace A230441.P17915584517013049139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A119620 (2 * n)

end

end A230441.P17915584517013049139

/-! ## A230441.P2377187008490825390

`A015128(n)-A035377(3*n)`
-/

namespace A230441.P2377187008490825390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A035377 (3 * n)

end

end A230441.P2377187008490825390

/-! ## A230441.P9492713802514157077

`A015128(n)-A304991(n)/A000009(n)`
-/

namespace A230441.P9492713802514157077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015128 n : ℚ) - (A304991 n : ℚ) / (A000009 n : ℚ)

end

end A230441.P9492713802514157077

/-! ## A230441.P13731958354767854008

`A143184(n)+A340658(n)-A000041(n)`
-/

namespace A230441.P13731958354767854008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143184 n + (A340658 n - A000041 n)

end

end A230441.P13731958354767854008

/-! ## A230441.P8772461353589669024

`A015128(n)-(A332281(n)+A332280(n))`
-/

namespace A230441.P8772461353589669024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - (A332281 n + A332280 n)

end

end A230441.P8772461353589669024

/-! ## A230441.P7279239271764189194

`A015128(n)-(A325834(n)+A325831(n))`
-/

namespace A230441.P7279239271764189194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - (A325834 n + A325831 n)

end

end A230441.P7279239271764189194

/-! ## A230441.P5444110432627681297

`A056823(n)-A237047(n)`
-/

namespace A230441.P5444110432627681297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056823 n - A237047 n

end

end A230441.P5444110432627681297

/-!
# A230443: Number of decompositions of 2n into a sum of two primes p2 >= p1 such that the number of runs in binary expansion of p2-p1 is less than or equal to 4.

The programs for A230443, there is no canonical definition to state claims against.
-/

/-! ## A230443.P9737692355169343525

`A045917(n+2)-A181838(A056561(3*(n+1)))`
-/

namespace A230443.P9737692355169343525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 2) - A181838 (A056561 (3 * (n + 1))).toNat

end

end A230443.P9737692355169343525

/-! ## A230443.P15844692725523950714

`A061358(2*(n+2))-A122840(A086734(n+1))`
-/

namespace A230443.P15844692725523950714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (2 * (n + 2)) - A122840 (A086734 (n + 1)).toNat

end

end A230443.P15844692725523950714

/-! ## A230443.P890118178511705834

`A240328(A232487(2*n+5))+A045917(n+2)`
-/

namespace A230443.P890118178511705834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A232487 (2 * n + 5)).toNat + A045917 (n + 2)

end

end A230443.P890118178511705834

/-! ## A230443.P16186798854440435716

`A045917(n+2)-A230403(A325372(2*n+5))`
-/

namespace A230443.P16186798854440435716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 2) - A230403 (A325372 (2 * n + 5)).toNat

end

end A230443.P16186798854440435716

/-! ## A230443.P11685409971007520116

`A045917(n+2)-A185709(A105753(n+4))`
-/

namespace A230443.P11685409971007520116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 2) - A185709 (A105753 (n + 4)).toNat

end

end A230443.P11685409971007520116

/-!
# A230444: Primes of the form (p^k + k - 1)/k for prime p and some k > 1.

The programs for A230444, there is no canonical definition to state claims against.
-/

/-! ## A230444.P6790486291789584712

`p?[A132870(n)+∑[4*n]]`
-/

namespace A230444.P6790486291789584712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132870 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230444.P6790486291789584712

/-! ## A230444.P513313780705178891

`p?[A019576(n+1)+∑[4*n]]`
-/

namespace A230444.P513313780705178891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230444.P513313780705178891

/-!
# A230445: Triangle read by rows: T(n,m) = 3^m*2^(n-m)-1, the number of neighbors in an n-dimensional cubic array.

The programs for A230445, the canonical program `A230445.P3640126987684722903` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230445 has offset 0).

The definition of A230445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230445.P3640126987684722903

`A036561(n)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A230445

/-- `A036561(n)-1` -/
def P3640126987684722903.Spec : Prop :=
  ∀ n, P3640126987684722903.a n = A230445 n

theorem P3640126987684722903.correct : P3640126987684722903.Spec := by
  intro n
  simp only [A230445]

end A230445

/-! ## A230445.P7233640627905270191

`floor(A094615(n)/2)`
-/

namespace A230445.P7233640627905270191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094615 n : ℚ) / 2⌋

end

end A230445.P7233640627905270191

namespace A230445

/-- `floor(A094615(n)/2)` -/
def P7233640627905270191.Spec : Prop :=
  ∀ n, P7233640627905270191.a n = A230445 n

end A230445

/-! ## A230445.P2067607839139754431

`A094617(n+1)-2`
-/

namespace A230445.P2067607839139754431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094617 (n + 1) - 2

end

end A230445.P2067607839139754431

namespace A230445

/-- `A094617(n+1)-2` -/
def P2067607839139754431.Spec : Prop :=
  ∀ n, P2067607839139754431.a n = A230445 n

theorem P2067607839139754431.correct : P2067607839139754431.Spec := by
  intro n
  simp only [A230445, Nat.add_sub_cancel, A230445.P2067607839139754431.a, A230445.P3640126987684722903.a, A036561, A036561.P7490084913005378529.a, A094617, A094617.P8506004990279302888.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A230445

/-! ## A230445.P13350457809624762320

`A081954(n+1)/2-1`
-/

namespace A230445.P13350457809624762320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081954 (n + 1) : ℚ) / 2 - 1

end

end A230445.P13350457809624762320

namespace A230445

/-- `A081954(n+1)/2-1` -/
def P13350457809624762320.Spec : Prop :=
  ∀ n, P13350457809624762320.a n = (A230445 n : ℚ)

theorem P13350457809624762320.correct : P13350457809624762320.Spec := by
  intro n
  simp only [A230445, Nat.add_sub_cancel, A230445.P13350457809624762320.a, A230445.P3640126987684722903.a, A036561, A036561.P7490084913005378529.a, A081954, A081954.P14656292219438426636.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A230445

/-! ## A230445.P17905579895344689491

`A094615(n)%A036561(n)`
-/

namespace A230445.P17905579895344689491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094615 n) (A036561 n)

end

end A230445.P17905579895344689491

namespace A230445

/-- `A094615(n)%A036561(n)` -/
def P17905579895344689491.Spec : Prop :=
  ∀ n, P17905579895344689491.a n = A230445 n

end A230445

/-! ## A230445.P2935252484819223116

`xor(A036561(n), A130330(n))`
-/

namespace A230445.P2935252484819223116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036561 n) (A130330 n)

end

end A230445.P2935252484819223116

namespace A230445

/-- `xor(A036561(n), A130330(n))` -/
def P2935252484819223116.Spec : Prop :=
  ∀ n, P2935252484819223116.a n = A230445 n

end A230445

/-! ## A230445.P4796347731001929813

`A013620(n)/A007318(n)-1`
-/

namespace A230445.P4796347731001929813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A007318 n : ℚ) - 1

end

end A230445.P4796347731001929813

namespace A230445

/-- `A013620(n)/A007318(n)-1` -/
def P4796347731001929813.Spec : Prop :=
  ∀ n, P4796347731001929813.a n = (A230445 n : ℚ)

end A230445

/-! ## A230445.P12071652382666176387

`A081954(n+1)%A094617(n+1)`
-/

namespace A230445.P12071652382666176387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081954 (n + 1)) (A094617 (n + 1))

end

end A230445.P12071652382666176387

namespace A230445

/-- `A081954(n+1)%A094617(n+1)` -/
def P12071652382666176387.Spec : Prop :=
  ∀ n, P12071652382666176387.a n = A230445 n

end A230445

/-! ## A230445.P9793405616446730246

`A175840(A061579(n))-1`
-/

namespace A230445.P9793405616446730246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 (A061579 n).toNat - 1

end

end A230445.P9793405616446730246

namespace A230445

/-- `A175840(A061579(n))-1` -/
def P9793405616446730246.Spec : Prop :=
  ∀ n, P9793405616446730246.a n = A230445 n

end A230445

/-! ## A230445.P9257815192550424897

`A155118(comp[∑[n]])-1`
-/

namespace A230445.P9257815192550424897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A230445.P9257815192550424897

namespace A230445

/-- `A155118(comp[∑[n]])-1` -/
def P9257815192550424897.Spec : Prop :=
  ∀ n, P9257815192550424897.a n = A230445 n

end A230445

/-! ## A230445.P11644317689638737034

`A153279(A014132(n+1))-1`
-/

namespace A230445.P11644317689638737034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153279 (A014132 (n + 1)).toNat - 1

end

end A230445.P11644317689638737034

namespace A230445

/-- `A153279(A014132(n+1))-1` -/
def P11644317689638737034.Spec : Prop :=
  ∀ n, P11644317689638737034.a n = A230445 n

end A230445

/-! ## A230445.P4679206556387945685

`A038233(n)/A038207(n)-1`
-/

namespace A230445.P4679206556387945685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038233 n : ℚ) / (A038207 n : ℚ) - 1

end

end A230445.P4679206556387945685

namespace A230445

/-- `A038233(n)/A038207(n)-1` -/
def P4679206556387945685.Spec : Prop :=
  ∀ n, P4679206556387945685.a n = (A230445 n : ℚ)

end A230445

/-! ## A230445.P2823397006106317180

`A069353(A247714(n))`
-/

namespace A230445.P2823397006106317180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (A247714 n).toNat

end

end A230445.P2823397006106317180

namespace A230445

/-- `A069353(A247714(n))` -/
def P2823397006106317180.Spec : Prop :=
  ∀ n, P2823397006106317180.a n = A230445 n

end A230445

/-! ## A230445.P4321361399386472237

`A038212(n)/A013609(n)-1`
-/

namespace A230445.P4321361399386472237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038212 n : ℚ) / (A013609 n : ℚ) - 1

end

end A230445.P4321361399386472237

namespace A230445

/-- `A038212(n)/A013609(n)-1` -/
def P4321361399386472237.Spec : Prop :=
  ∀ n, P4321361399386472237.a n = (A230445 n : ℚ)

end A230445

/-! ## A230445.P16735093137710127712

`A038257(n)/A027465(n)-1`
-/

namespace A230445.P16735093137710127712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n : ℚ) / (A027465 n : ℚ) - 1

end

end A230445.P16735093137710127712

namespace A230445

/-- `A038257(n)/A027465(n)-1` -/
def P16735093137710127712.Spec : Prop :=
  ∀ n, P16735093137710127712.a n = (A230445 n : ℚ)

end A230445

/-! ## A230445.P13486899195238377452

`A038236(n)/A038208(n)-1`
-/

namespace A230445.P13486899195238377452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A038208 n : ℚ) - 1

end

end A230445.P13486899195238377452

namespace A230445

/-- `A038236(n)/A038208(n)-1` -/
def P13486899195238377452.Spec : Prop :=
  ∀ n, P13486899195238377452.a n = (A230445 n : ℚ)

end A230445

/-! ## A230445.P18207195953512951534

`A038215(n)/A013610(n)-1`
-/

namespace A230445.P18207195953512951534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038215 n : ℚ) / (A013610 n : ℚ) - 1

end

end A230445.P18207195953512951534

namespace A230445

/-- `A038215(n)/A013610(n)-1` -/
def P18207195953512951534.Spec : Prop :=
  ∀ n, P18207195953512951534.a n = (A230445 n : ℚ)

end A230445

/-! ## A230445.P6437392039327272280

`A038239(n)/A013620(n)-1`
-/

namespace A230445.P6437392039327272280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038239 n : ℚ) / (A013620 n : ℚ) - 1

end

end A230445.P6437392039327272280

namespace A230445

/-- `A038239(n)/A013620(n)-1` -/
def P6437392039327272280.Spec : Prop :=
  ∀ n, P6437392039327272280.a n = (A230445 n : ℚ)

end A230445

/-! ## A230445.P12729718339658446035

`A038218(n)/A013611(n)-1`
-/

namespace A230445.P12729718339658446035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038218 n : ℚ) / (A013611 n : ℚ) - 1

end

end A230445.P12729718339658446035

namespace A230445

/-- `A038218(n)/A013611(n)-1` -/
def P12729718339658446035.Spec : Prop :=
  ∀ n, P12729718339658446035.a n = (A230445 n : ℚ)

end A230445

/-! ## A230445.P11811466065139204606

`A038263(n)/A038221(n)-1`
-/

namespace A230445.P11811466065139204606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038263 n : ℚ) / (A038221 n : ℚ) - 1

end

end A230445.P11811466065139204606

namespace A230445

/-- `A038263(n)/A038221(n)-1` -/
def P11811466065139204606.Spec : Prop :=
  ∀ n, P11811466065139204606.a n = (A230445 n : ℚ)

end A230445

/-!
# A230448: T(n, k) = T(n-1, k-1) + T(n-1, k) with T(n, 0) = 1 and T(n, n) = A226205(n+1), n >= 0 and 0 <= k <= n.

The programs for A230448, there is no canonical definition to state claims against.
-/

/-! ## A230448.P9738862833599918241

`A112329(A119444(n+1)^A008620(n))`
-/

namespace A230448.P9738862833599918241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (SequenceMachineLib.roundAway ((A119444 (n + 1) : ℚ) ^ (A008620 n : ℤ))).toNat

end

end A230448.P9738862833599918241

/-! ## A230448.P2109013523606896068

`val(A319513(A193710(n+1)), 3)`
-/

namespace A230448.P2109013523606896068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319513 (A193710 (n + 1)).toNat).toNat 3

end

end A230448.P2109013523606896068

/-! ## A230448.P16080685369354980703

`A213911(A278073(n))+A003992(n)`
-/

namespace A230448.P16080685369354980703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A278073 n).toNat + A003992 n

end

end A230448.P16080685369354980703

/-! ## A230448.P818500319127433227

`A038548(A362995(n))-A053603(n)`
-/

namespace A230448.P818500319127433227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A362995 n).toNat - A053603 n

end

end A230448.P818500319127433227

/-! ## A230448.P10876473523398606325

`A186189(A261763(n))-A145153(n)`
-/

namespace A230448.P10876473523398606325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186189 (A261763 n).toNat - A145153 n

end

end A230448.P10876473523398606325

/-!
# A230449: T(n, k) = T(n-1, k-1) + T(n-1, k) with T(n, 0) = 1 and T(n, n) = A052952(n), n >= 0 and 0 <= k <= n.

The programs for A230449, there is no canonical definition to state claims against.
-/

/-! ## A230449.P9519990363696895221

`A082892(A210235(comp[∑[n-1]]))`
-/

namespace A230449.P9519990363696895221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082892 (A210235 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A230449.P9519990363696895221

/-! ## A230449.P1558416056714564026

`A283822(n+1)+A098861(A191433(n+1))`
-/

namespace A230449.P1558416056714564026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283822 (n + 1) + A098861 (A191433 (n + 1)).toNat

end

end A230449.P1558416056714564026

/-!
# A230451: Number of ways to write n = x + y + z (x, y, z > 0) such that 2*x + 1, 2*y + 3, 2*z + 5 are all prime and x*y*z is a triangular number.

The programs for A230451, there is no canonical definition to state claims against.
-/

/-! ## A230451.P2841736949481399164

`A339505(A339505(2*(n+3))+A014963(2*n+3))`
-/

namespace A230451.P2841736949481399164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339505 (A339505 (2 * (n + 3)) + A014963 (2 * n + 3)).toNat

end

end A230451.P2841736949481399164

/-!
# A230452: Starting values for which the "comma sum" sequence (cf. A230288) does not end in 989.

The programs for A230452, there is no canonical definition to state claims against.
-/

/-! ## A230452.P15476898227010161135

`lt[A230453(n), 5]`
-/

namespace A230452.P15476898227010161135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230453 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A230452.P15476898227010161135

/-! ## A230452.P11286958035586097755

`A000196(eq[7, or(7, A230453(n))]²)`
-/

namespace A230452.P11286958035586097755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A230453 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2)

end

end A230452.P11286958035586097755

/-! ## A230452.P11416682959178128296

`A025480(2*eq[7, or(7, A230453(n))])`
-/

namespace A230452.P11416682959178128296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A230453 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230452.P11416682959178128296

/-! ## A230452.P266466442856554789

`A005843(eq[7, or(7, A230453(n))])/2`
-/

namespace A230452.P266466442856554789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A230453 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A230452.P266466442856554789

/-! ## A230452.P10576279010653045632

`eq[A002100(A230453(n)), A324870(n+1)]`
-/

namespace A230452.P10576279010653045632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002100 (A230453 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230452.P10576279010653045632

/-!
# A230453: Number of terms in the "comma sum" sequence (cf. A230288) starting with n, or 0 if it is infinite.

The programs for A230453, there is no canonical definition to state claims against.
-/

/-! ## A230453.P7153103888987803444

`A175111(A325954(n))+A039964(A154638(n))`
-/

namespace A230453.P7153103888987803444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175111 (A325954 n).toNat + A039964 (A154638 n).toNat

end

end A230453.P7153103888987803444

/-! ## A230453.P15050185134985897377

`A137757(A060357(n))-n`
-/

namespace A230453.P15050185134985897377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137757 (A060357 n).toNat - (n : ℤ)

end

end A230453.P15050185134985897377

/-! ## A230453.P7712357483848502893

`A137757(A075059(n))-n`
-/

namespace A230453.P7712357483848502893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137757 (A075059 n).toNat - (n : ℤ)

end

end A230453.P7712357483848502893

/-!
# A230456: Odd evil a(n) (A001969), such that 3*a(n) and a(n)+3 are odious (A000069).

The programs for A230456, there is no canonical definition to state claims against.
-/

/-! ## A230456.P3607989665462482975

`or(A002426(n), A136198(A372758(3*(n+1))))`
-/

namespace A230456.P3607989665462482975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002426 n) (A136198 (A372758 (3 * (n + 1))).toNat)

end

end A230456.P3607989665462482975

/-!
# A230457: Numbers k such that there exists a Fibonacci-like sequence without multiples of k.

The programs for A230457, there is no canonical definition to state claims against.
-/

/-! ## A230457.P17815504689216321447

`comp[A064414(n+1)-1]+1`
-/

namespace A230457.P17815504689216321447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A230457.P17815504689216321447

/-! ## A230457.P5354716202238970191

`eq[char[A064414(n+1)], A000007(n)]`
-/

namespace A230457.P5354716202238970191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A230457.P5354716202238970191

/-! ## A230457.P10669249581848474836

`eq[char[A064414(n+1)], A000038(n)]`
-/

namespace A230457.P10669249581848474836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A230457.P10669249581848474836

/-! ## A230457.P1545799904397824542

`eq[char[A064414(n+1)], A169585(n)]`
-/

namespace A230457.P1545799904397824542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A230457.P1545799904397824542

/-! ## A230457.P10167604864384826560

`eq[char[A064414(n+1)], A154955(n+1)]`
-/

namespace A230457.P10167604864384826560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A230457.P10167604864384826560

/-! ## A230457.P5188005382226191602

`eq[A008458(n)%2, char[A064414(n+1)]]`
-/

namespace A230457.P5188005382226191602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A230457.P5188005382226191602

/-! ## A230457.P5982468189697375109

`eq[n, A028310(n)-char[A064414(n+1)]]`
-/

namespace A230457.P5982468189697375109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230457.P5982468189697375109

/-! ## A230457.P16254634702801895854

`eq[char[A064414(n+1)], A213358(2*n+1)]`
-/

namespace A230457.P16254634702801895854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213358 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A230457.P16254634702801895854

/-! ## A230457.P10770018527514949449

`∪[A064362(n+1), A232658(n+1)]`
-/

namespace A230457.P10770018527514949449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230457.P10770018527514949449

/-! ## A230457.P325456411080230700

`∪[A172019(n+1), A232658(n+1)]`
-/

namespace A230457.P325456411080230700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230457.P325456411080230700

/-!
# A230459: Ordered by increasing m with k < m, a(n) is the n-th record value of gcd(k!+1, m!+1).

The programs for A230459, there is no canonical definition to state claims against.
-/

/-! ## A230459.P4201904082577993397

`A028867(A099027(2*n+1))%A099000(2*n+3)`
-/

namespace A230459.P4201904082577993397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028867 (A099027 (2 * n + 1)).toNat) (A099000 (2 * n + 3))

end

end A230459.P4201904082577993397

/-!
# A230460: Prime(2*prime(n)).

The programs for A230460, the canonical program `A230460.P18201916198529807444` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230460 has offset 1).

The definition of A230460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230460.P18201916198529807444

`A000040(A100484(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230460

/-- `A000040(A100484(n+1))` -/
def P18201916198529807444.Spec : Prop :=
  ∀ n, P18201916198529807444.a n = A230460 (n + 1)

theorem P18201916198529807444.correct : P18201916198529807444.Spec := by
  intro n
  simp only [A230460, Nat.add_sub_cancel]

end A230460

/-! ## A230460.P10326875464795843903

`A217622(n+1)-A230481(n+1)`
-/

namespace A230460.P10326875464795843903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217622 (n + 1) - A230481 (n + 1)

end

end A230460.P10326875464795843903

namespace A230460

/-- `A217622(n+1)-A230481(n+1)` -/
def P10326875464795843903.Spec : Prop :=
  ∀ n, P10326875464795843903.a n = A230460 (n + 1)

theorem P10326875464795843903.correct : P10326875464795843903.Spec := by
  intro n
  simp only [A230460, Nat.add_sub_cancel, A230460.P10326875464795843903.a, A230460.P18201916198529807444.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, A217622, A217622.P12949597402063927546.a, A230481, A230481.P2153048938439826483.a, A006450, A006450.P16445646407241112379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230460

/-! ## A230460.P7964306996803098970

`A006450(2*(n+1))-A230481(n+1)`
-/

namespace A230460.P7964306996803098970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * (n + 1)) - A230481 (n + 1)

end

end A230460.P7964306996803098970

namespace A230460

/-- `A006450(2*(n+1))-A230481(n+1)` -/
def P7964306996803098970.Spec : Prop :=
  ∀ n, P7964306996803098970.a n = A230460 (n + 1)

theorem P7964306996803098970.correct : P7964306996803098970.Spec := by
  intro n
  simp only [A230460, Nat.add_sub_cancel, A230460.P7964306996803098970.a, A230460.P18201916198529807444.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A100484, A100484.P9678625670825099636.a, A230481, A230481.P2153048938439826483.a, A217622, A217622.P12949597402063927546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230460

/-! ## A230460.P7775316046093397955

`A031215(Δ[A007504(n)])`
-/

namespace A230460.P7775316046093397955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (f1 (n + 1) - f1 n).toNat

end

end A230460.P7775316046093397955

namespace A230460

/-- `A031215(Δ[A007504(n)])` -/
def P7775316046093397955.Spec : Prop :=
  ∀ n, P7775316046093397955.a n = A230460 (n + 1)

end A230460

/-! ## A230460.P4341681181727250919

`A031215(record[A051698(n)])`
-/

namespace A230460.P4341681181727250919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A230460.P4341681181727250919

namespace A230460

/-- `A031215(record[A051698(n)])` -/
def P4341681181727250919.Spec : Prop :=
  ∀ n, P4341681181727250919.a n = A230460 (n + 1)

end A230460

/-! ## A230460.P13910568773789292931

`A031215(A000040(n+1))`
-/

namespace A230460.P13910568773789292931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (A000040 (n + 1)).toNat

end

end A230460.P13910568773789292931

namespace A230460

/-- `A031215(A000040(n+1))` -/
def P13910568773789292931.Spec : Prop :=
  ∀ n, P13910568773789292931.a n = A230460 (n + 1)

end A230460

/-! ## A230460.P4677905225596619601

`A031215(A008578(n+2))`
-/

namespace A230460.P4677905225596619601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (A008578 (n + 2)).toNat

end

end A230460.P4677905225596619601

namespace A230460

/-- `A031215(A008578(n+2))` -/
def P4677905225596619601.Spec : Prop :=
  ∀ n, P4677905225596619601.a n = A230460 (n + 1)

end A230460

/-! ## A230460.P8975299640150845731

`A031215(eq[1, A003415(n)])`
-/

namespace A230460.P8975299640150845731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230460.P8975299640150845731

namespace A230460

/-- `A031215(eq[1, A003415(n)])` -/
def P8975299640150845731.Spec : Prop :=
  ∀ n, P8975299640150845731.a n = A230460 (n + 1)

end A230460

/-! ## A230460.P7638266493204906597

`A031215(abs(Δ[A022837(n)]))`
-/

namespace A230460.P7638266493204906597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 |f1 (n + 1) - f1 n|.toNat

end

end A230460.P7638266493204906597

namespace A230460

/-- `A031215(abs(Δ[A022837(n)]))` -/
def P7638266493204906597.Spec : Prop :=
  ∀ n, P7638266493204906597.a n = A230460 (n + 1)

end A230460

/-! ## A230460.P6023638562429627629

`A031215(sqrt(A001248(n+1)))`
-/

namespace A230460.P6023638562429627629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A230460.P6023638562429627629

namespace A230460

/-- `A031215(sqrt(A001248(n+1)))` -/
def P6023638562429627629.Spec : Prop :=
  ∀ n, P6023638562429627629.a n = A230460 (n + 1)

end A230460

/-! ## A230460.P12032591524217709274

`A031215(∑[A054541(n+1)])`
-/

namespace A230460.P12032591524217709274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230460.P12032591524217709274

namespace A230460

/-- `A031215(∑[A054541(n+1)])` -/
def P12032591524217709274.Spec : Prop :=
  ∀ n, P12032591524217709274.a n = A230460 (n + 1)

end A230460

/-! ## A230460.P836292975828780816

`A031215(record[A006530(n+2)])`
-/

namespace A230460.P836292975828780816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A230460.P836292975828780816

namespace A230460

/-- `A031215(record[A006530(n+2)])` -/
def P836292975828780816.Spec : Prop :=
  ∀ n, P836292975828780816.a n = A230460 (n + 1)

end A230460

/-! ## A230460.P15083374491330012257

`A031215(record[A014963(n+2)])`
-/

namespace A230460.P15083374491330012257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A230460.P15083374491330012257

namespace A230460

/-- `A031215(record[A014963(n+2)])` -/
def P15083374491330012257.Spec : Prop :=
  ∀ n, P15083374491330012257.a n = A230460 (n + 1)

end A230460

/-! ## A230460.P7476285605313045848

`A031215(record[A020639(n+2)])`
-/

namespace A230460.P7476285605313045848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A230460.P7476285605313045848

namespace A230460

/-- `A031215(record[A020639(n+2)])` -/
def P7476285605313045848.Spec : Prop :=
  ∀ n, P7476285605313045848.a n = A230460 (n + 1)

end A230460

/-! ## A230460.P8764164995975655640

`∩[A031215(n+1), A106349(n+1)]`
-/

namespace A230460.P8764164995975655640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230460.P8764164995975655640

namespace A230460

/-- `∩[A031215(n+1), A106349(n+1)]` -/
def P8764164995975655640.Spec : Prop :=
  ∀ n, (P8764164995975655640.a n : ℤ) = A230460 (n + 1)

end A230460

/-! ## A230460.P18073158545774946818

`∩[A031215(n+1), A339112(n+1)]`
-/

namespace A230460.P18073158545774946818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230460.P18073158545774946818

namespace A230460

/-- `∩[A031215(n+1), A339112(n+1)]` -/
def P18073158545774946818.Spec : Prop :=
  ∀ n, (P18073158545774946818.a n : ℤ) = A230460 (n + 1)

end A230460

/-! ## A230460.P7039207461616672923

`A106349(A115392(n+1))`
-/

namespace A230460.P7039207461616672923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (A115392 (n + 1)).toNat

end

end A230460.P7039207461616672923

namespace A230460

/-- `A106349(A115392(n+1))` -/
def P7039207461616672923.Spec : Prop :=
  ∀ n, P7039207461616672923.a n = A230460 (n + 1)

end A230460

/-! ## A230460.P12208237681464430274

`∩[A066207(n+1), A106349(n+1)]`
-/

namespace A230460.P12208237681464430274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230460.P12208237681464430274

namespace A230460

/-- `∩[A066207(n+1), A106349(n+1)]` -/
def P12208237681464430274.Spec : Prop :=
  ∀ n, (P12208237681464430274.a n : ℤ) = A230460 (n + 1)

end A230460

/-! ## A230460.P13231068436028496591

`A088982(A065897(n+1))`
-/

namespace A230460.P13231068436028496591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (A065897 (n + 1)).toNat

end

end A230460.P13231068436028496591

namespace A230460

/-- `A088982(A065897(n+1))` -/
def P13231068436028496591.Spec : Prop :=
  ∀ n, P13231068436028496591.a n = A230460 (n + 1)

end A230460

/-!
# A230462: Numbers congruent to {1, 11, 13, 17, 19, or 29} mod 30.

The programs for A230462, the canonical program `A230462.P12356570533561547931` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230462 has offset 1).

The definition of A230462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230462.P12356570533561547931

`a(n-6)+30` with `a(0)=1, a(1)=11, a(2)=13, a(3)=17, a(4)=19, a(5)=29`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230462

/-- `a(n-6)+30` -/
def P12356570533561547931.Spec : Prop :=
  ∀ n, (P12356570533561547931.a n : ℤ) = A230462 (n + 1)

theorem P12356570533561547931.correct : P12356570533561547931.Spec := by
  intro n
  simp only [A230462, Nat.add_sub_cancel]

end A230462

/-! ## A230462.P14032830348556324348

`∪[A057538(n+1), A248474(n+1)]`
-/

namespace A230462.P14032830348556324348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230462.P14032830348556324348

namespace A230462

/-- `∪[A057538(n+1), A248474(n+1)]` -/
def P14032830348556324348.Spec : Prop :=
  ∀ n, (P14032830348556324348.a n : ℤ) = A230462 (n + 1)

end A230462

/-! ## A230462.P17847160325132814699

`A002088(A020639(5*n))+a(n-1)` with `a(0)=1`
-/

namespace A230462.P17847160325132814699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002088 (A020639 (5 * n)).toNat + a (n - 1)

end

end A230462.P17847160325132814699

namespace A230462

/-- `A002088(A020639(5*n))+a(n-1)` -/
def P17847160325132814699.Spec : Prop :=
  ∀ n, P17847160325132814699.a n = A230462 (n + 1)

end A230462

/-! ## A230462.P15868497475105414628

`∑[A000040(A020639(A008706(n)))-1]`
-/

namespace A230462.P15868497475105414628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A020639 (A008706 n).toNat).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230462.P15868497475105414628

namespace A230462

/-- `∑[A000040(A020639(A008706(n)))-1]` -/
def P15868497475105414628.Spec : Prop :=
  ∀ n, P15868497475105414628.a n = A230462 (n + 1)

end A230462

/-! ## A230462.P17706942636242811442

`A054966(or(1, n+1))+2*n+1`
-/

namespace A230462.P17706942636242811442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (Nat.lor 1 (n + 1)) + (2 * n + 1 : ℤ)

end

end A230462.P17706942636242811442

namespace A230462

/-- `A054966(or(1, n+1))+2*n+1` -/
def P17706942636242811442.Spec : Prop :=
  ∀ n, P17706942636242811442.a n = A230462 (n + 1)

end A230462

/-! ## A230462.P11532450927078219820

`A007775(A047428(n+2))`
-/

namespace A230462.P11532450927078219820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (A047428 (n + 2)).toNat

end

end A230462.P11532450927078219820

namespace A230462

/-- `A007775(A047428(n+2))` -/
def P11532450927078219820.Spec : Prop :=
  ∀ n, P11532450927078219820.a n = A230462 (n + 1)

end A230462

/-! ## A230462.P6845076373768996671

`A007775(∑[char[A007310(n+1)]+1])`
-/

namespace A230462.P6845076373768996671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230462.P6845076373768996671

namespace A230462

/-- `A007775(∑[char[A007310(n+1)]+1])` -/
def P6845076373768996671.Spec : Prop :=
  ∀ n, P6845076373768996671.a n = A230462 (n + 1)

end A230462

/-! ## A230462.P10648742153933588752

`A007310(A007310(n+1)+n-A162699(n+1)+1)`
-/

namespace A230462.P10648742153933588752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A007310 (n + 1) + ((n : ℤ) - A162699 (n + 1)) + 1).toNat

end

end A230462.P10648742153933588752

namespace A230462

/-- `A007310(A007310(n+1)+n-A162699(n+1)+1)` -/
def P10648742153933588752.Spec : Prop :=
  ∀ n, P10648742153933588752.a n = A230462 (n + 1)

end A230462

/-! ## A230462.P18287137238156343024

`∑[A073575(n²+5)]+n`
-/

namespace A230462.P18287137238156343024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n ^ 2 + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A230462.P18287137238156343024

namespace A230462

/-- `∑[A073575(n²+5)]+n` -/
def P18287137238156343024.Spec : Prop :=
  ∀ n, P18287137238156343024.a n = A230462 (n + 1)

end A230462

/-!
# A230463: Number of n X n 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230463, there is no canonical definition to state claims against.
-/

/-! ## A230463.P6773276550757029980

`A230469((n+1)²+n²)`
-/

namespace A230463.P6773276550757029980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 ((n + 1) ^ 2 + n ^ 2)

end

end A230463.P6773276550757029980

/-!
# A230464: Number of n X 3 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230464, there is no canonical definition to state claims against.
-/

/-! ## A230464.P16205458763493264628

`A230469(∑[n+3]+1)`
-/

namespace A230464.P16205458763493264628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230464.P16205458763493264628

/-! ## A230464.P1021164677460002994

`ceil(sin(n)²)*A230469(A034856(n+2))`
-/

namespace A230464.P1021164677460002994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A230469 (A034856 (n + 2)).toNat

end

end A230464.P1021164677460002994

/-!
# A230465: Number of nX4 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230465, there is no canonical definition to state claims against.
-/

/-! ## A230465.P1531992302361565192

`A230469(A141214(n+1))`
-/

namespace A230465.P1531992302361565192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A141214 (n + 1)).toNat

end

end A230465.P1531992302361565192

/-! ## A230465.P12427544138144277872

`A230469(A027379(n+2))`
-/

namespace A230465.P12427544138144277872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A027379 (n + 2)).toNat

end

end A230465.P12427544138144277872

/-! ## A230465.P5444709757118833219

`A230469(A155212(n)+5)`
-/

namespace A230465.P5444709757118833219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A155212 n + 5).toNat

end

end A230465.P5444709757118833219

/-! ## A230465.P10312333569332786995

`A230469(eq[2, A152157(n)])`
-/

namespace A230465.P10312333569332786995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230465.P10312333569332786995

/-! ## A230465.P8964304651424643625

`A230469(eq[3, A193592(n)])`
-/

namespace A230465.P8964304651424643625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230465.P8964304651424643625

/-!
# A230466: Number of n X 5 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230466, there is no canonical definition to state claims against.
-/

/-! ## A230466.P15352857993328903849

`A230469(Δ[A264443(n)])`
-/

namespace A230466.P15352857993328903849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (f1 (n + 1) - f1 n).toNat

end

end A230466.P15352857993328903849

/-! ## A230466.P3637459064761357192

`A230469(eq[3, A152157(n)])`
-/

namespace A230466.P3637459064761357192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230466.P3637459064761357192

/-! ## A230466.P7189450999500452531

`A230469(eq[4, A193592(n)])`
-/

namespace A230466.P7189450999500452531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230466.P7189450999500452531

/-! ## A230466.P9246574829131572487

`A230469(Δ[A023545(n+1)])`
-/

namespace A230466.P9246574829131572487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (f1 (n + 1) - f1 n).toNat

end

end A230466.P9246574829131572487

/-! ## A230466.P11531323202844108644

`A230469(eq[4, A168396(n+1)])`
-/

namespace A230466.P11531323202844108644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230466.P11531323202844108644

/-!
# A230467: Number of nX6 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230467, there is no canonical definition to state claims against.
-/

/-! ## A230467.P17639578129778650301

`A230469(A052905(n+3))`
-/

namespace A230467.P17639578129778650301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A052905 (n + 3)).toNat

end

end A230467.P17639578129778650301

/-! ## A230467.P15952854065974440004

`A230469(eq[5, A152157(n)])`
-/

namespace A230467.P15952854065974440004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230467.P15952854065974440004

/-! ## A230467.P2674858639922085716

`A230469(eq[5, A193592(n)])`
-/

namespace A230467.P2674858639922085716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230467.P2674858639922085716

/-! ## A230467.P396541961924125273

`A230469(eq[6, A200370(n+1)])`
-/

namespace A230467.P396541961924125273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230467.P396541961924125273

/-! ## A230467.P8555504362736724389

`A230469(eq[16, A057728(n+1)])`
-/

namespace A230467.P8555504362736724389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230467.P8555504362736724389

/-!
# A230468: Number of nX7 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230468, there is no canonical definition to state claims against.
-/

/-! ## A230468.P10236944500065720968

`A230469(eq[6, A193592(n)])`
-/

namespace A230468.P10236944500065720968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230468.P10236944500065720968

/-! ## A230468.P8148792851497791714

`A230469(eq[7, A152157(n)])`
-/

namespace A230468.P8148792851497791714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230468.P8148792851497791714

/-! ## A230468.P9628580732048714139

`A230469(A000096(n+6)-5)`
-/

namespace A230468.P9628580732048714139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A000096 (n + 6) - 5).toNat

end

end A230468.P9628580732048714139

/-! ## A230468.P7840600234251116787

`A230469(eq[6, A243060(n+1)])`
-/

namespace A230468.P7840600234251116787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230468.P7840600234251116787

/-! ## A230468.P15986950731195150812

`A230469(eq[7, A200370(n+1)])`
-/

namespace A230468.P15986950731195150812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230468.P15986950731195150812

/-!
# A230469: T(n,k)=Number of nXk 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230469, there is no canonical definition to state claims against.
-/

/-! ## A230469.P14464658190498691691

`A151478(n)%A018252(A147220(n+1))`
-/

namespace A230469.P14464658190498691691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151478 n) (A018252 (A147220 (n + 1)).toNat)

end

end A230469.P14464658190498691691

/-! ## A230469.P4261813968455878811

`A250002(and(A006355(n), A197303(n+1)))`
-/

namespace A230469.P4261813968455878811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (Int.land (A006355 n) (A197303 (n + 1))).toNat

end

end A230469.P4261813968455878811

/-! ## A230469.P18362140762161519577

`log2(A001316(n))*A321378(A113439(n+1))`
-/

namespace A230469.P18362140762161519577
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) * (A321378 (A113439 (n + 1)).toNat : ℝ)

end

end A230469.P18362140762161519577

/-! ## A230469.P6569306572606025520

`∑[A088705(n)]*A321378(A113439(n+1))`
-/

namespace A230469.P6569306572606025520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A321378 (A113439 (n + 1)).toNat

end

end A230469.P6569306572606025520

/-! ## A230469.P6164177225646113983

`A001222(A071044(n))*A321378(A113439(n+1))`
-/

namespace A230469.P6164177225646113983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 n).toNat * A321378 (A113439 (n + 1)).toNat

end

end A230469.P6164177225646113983

/-!
# A230470: Number of 2 X n 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230470, the canonical program `A230470.P9210216084859665054` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230470 has offset 1).

The definition of A230470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230470.P9210216084859665054

`6*a(n-1)-a(n-2)-12*a(n-3)+20*a(n-4)+24*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=36, a(4)=216`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230470

/-- `6*a(n-1)-a(n-2)-12*a(n-3)+20*a(n-4)+24*a(n-5)` -/
def P9210216084859665054.Spec : Prop :=
  ∀ n, P9210216084859665054.a n = A230470 (n + 1)

theorem P9210216084859665054.correct : P9210216084859665054.Spec := by
  intro n
  simp only [A230470, Nat.add_sub_cancel]

end A230470

/-! ## A230470.P6249546960703114209

`A230469(∑[n+1]+2)`
-/

namespace A230470.P6249546960703114209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230470.P6249546960703114209

namespace A230470

/-- `A230469(∑[n+1]+2)` -/
def P6249546960703114209.Spec : Prop :=
  ∀ n, P6249546960703114209.a n = A230470 (n + 1)

end A230470

/-! ## A230470.P17110287548339452984

`lcm(2, A230469(A133263(n+1)))`
-/

namespace A230470.P17110287548339452984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230469 (A133263 (n + 1)).toNat)

end

end A230470.P17110287548339452984

namespace A230470

/-- `lcm(2, A230469(A133263(n+1)))` -/
def P17110287548339452984.Spec : Prop :=
  ∀ n, (P17110287548339452984.a n : ℤ) = A230470 (n + 1)

end A230470

/-! ## A230470.P12359911207828254827

`A230469(A133263(n+1))%A148450(2*n)`
-/

namespace A230470.P12359911207828254827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230469 (A133263 (n + 1)).toNat) (A148450 (2 * n))

end

end A230470.P12359911207828254827

namespace A230470

/-- `A230469(A133263(n+1))%A148450(2*n)` -/
def P12359911207828254827.Spec : Prop :=
  ∀ n, P12359911207828254827.a n = A230470 (n + 1)

end A230470

/-! ## A230470.P15023650812421969264

`(A077618((n+1)²)+1)*A230469(A133263(n+1))`
-/

namespace A230470.P15023650812421969264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077618 ((n + 1) ^ 2) + 1) * A230469 (A133263 (n + 1)).toNat

end

end A230470.P15023650812421969264

namespace A230470

/-- `(A077618((n+1)²)+1)*A230469(A133263(n+1))` -/
def P15023650812421969264.Spec : Prop :=
  ∀ n, P15023650812421969264.a n = A230470 (n + 1)

end A230470

/-!
# A230471: Number of 3Xn 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230471, there is no canonical definition to state claims against.
-/

/-! ## A230471.P13413890654264459201

`A230469(∑[n+2]+4)`
-/

namespace A230471.P13413890654264459201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230471.P13413890654264459201

/-! ## A230471.P10977131051411419113

`lcm(2, A230469(A167614(n+1)))`
-/

namespace A230471.P10977131051411419113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230469 (A167614 (n + 1)).toNat)

end

end A230471.P10977131051411419113

/-! ## A230471.P11427909206790727295

`A057427(n)*A230469(A167614(n+1))`
-/

namespace A230471.P11427909206790727295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A230469 (A167614 (n + 1)).toNat

end

end A230471.P11427909206790727295

/-! ## A230471.P6671206618890034746

`A230469(A167614(n+1))%A059856(n)`
-/

namespace A230471.P6671206618890034746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230469 (A167614 (n + 1)).toNat) (A059856 n)

end

end A230471.P6671206618890034746

/-! ## A230471.P4352927142204651516

`and(A057428(n), A230469(A167614(n+1)))`
-/

namespace A230471.P4352927142204651516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A230469 (A167614 (n + 1)).toNat)

end

end A230471.P4352927142204651516

/-!
# A230472: Number of 4Xn 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230472, there is no canonical definition to state claims against.
-/

/-! ## A230472.P7852325846771060022

`A230469(A141214(n)+7)`
-/

namespace A230472.P7852325846771060022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A141214 n + 7).toNat

end

end A230472.P7852325846771060022

/-! ## A230472.P12915595426836662195

`A230469(A052905(n)+9)`
-/

namespace A230472.P12915595426836662195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A052905 n + 9).toNat

end

end A230472.P12915595426836662195

/-! ## A230472.P13743062552100742621

`A230469(A055999(n)+10)`
-/

namespace A230472.P13743062552100742621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A055999 n + 10).toNat

end

end A230472.P13743062552100742621

/-! ## A230472.P17200585759602329344

`A230469(A167614(n+2)+1)`
-/

namespace A230472.P17200585759602329344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A167614 (n + 2) + 1).toNat

end

end A230472.P17200585759602329344

/-! ## A230472.P13632878565697235374

`A230469(eq[5, A131818(n+1)])`
-/

namespace A230472.P13632878565697235374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230472.P13632878565697235374

/-!
# A230473: Number of 5Xn 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230473, there is no canonical definition to state claims against.
-/

/-! ## A230473.P2306016249089689089

`A230469(A155212(n)+13)`
-/

namespace A230473.P2306016249089689089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A155212 n + 13).toNat

end

end A230473.P2306016249089689089

/-! ## A230473.P3399118490302216269

`A230469(A056000(n)+15)`
-/

namespace A230473.P3399118490302216269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A056000 n + 15).toNat

end

end A230473.P3399118490302216269

/-! ## A230473.P2349420488602032089

`A230469(eq[7, A066657(n)])`
-/

namespace A230473.P2349420488602032089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230473.P2349420488602032089

/-! ## A230473.P8345508751835843981

`A230469(A167614(n+3)+2)`
-/

namespace A230473.P8345508751835843981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A167614 (n + 3) + 2).toNat

end

end A230473.P8345508751835843981

/-! ## A230473.P18012449001508171515

`A230469(A027379(n+2)+8)`
-/

namespace A230473.P18012449001508171515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A027379 (n + 2) + 8).toNat

end

end A230473.P18012449001508171515

/-!
# A230474: Number of 6Xn 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230474, there is no canonical definition to state claims against.
-/

/-! ## A230474.P8190872238014785525

`A230469(eq[6, A256910(n)])`
-/

namespace A230474.P8190872238014785525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230474.P8190872238014785525

/-! ## A230474.P10539447581381554149

`A230469(eq[6, A130270(n+1)])`
-/

namespace A230474.P10539447581381554149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230474.P10539447581381554149

/-! ## A230474.P4337314393311930079

`A230469(eq[7, A131818(n+1)])`
-/

namespace A230474.P4337314393311930079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230474.P4337314393311930079

/-! ## A230474.P6784025082303747838

`A230469(eq[4, A193592(n)]+10)`
-/

namespace A230474.P6784025082303747838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A230474.P6784025082303747838

/-! ## A230474.P5394959801743665636

`record[A054527(n+1)*A230469(n+1)]`
-/

namespace A230474.P5394959801743665636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A230469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230474.P5394959801743665636

/-!
# A230475: Number of 7Xn 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230475, there is no canonical definition to state claims against.
-/

/-! ## A230475.P10103086391747034248

`A230469(A000217(n+6)+7)`
-/

namespace A230475.P10103086391747034248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (A000217 (n + 6) + 7).toNat

end

end A230475.P10103086391747034248

/-! ## A230475.P7046531207202067098

`A230469(eq[8, A131818(n+1)])`
-/

namespace A230475.P7046531207202067098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230475.P7046531207202067098

/-!
# A230476: a(n) = Sum_{i=1..n} d(8*i+1) - Sum_{i=1..n} d(2*i+1), where d(n) = A000005(n) is the number of divisors of n.

The programs for A230476, the canonical program `A230476.P10377358832244411741` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230476 has offset 1).

The definition of A230476 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230293, A230294, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230476.P10377358832244411741

`A230293(n+1)+A230294(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230476

/-- `A230293(n+1)+A230294(n+1)` -/
def P10377358832244411741.Spec : Prop :=
  ∀ n, P10377358832244411741.a n = A230476 (n + 1)

theorem P10377358832244411741.correct : P10377358832244411741.Spec := by
  intro n
  simp only [A230476, Nat.add_sub_cancel]

end A230476

/-! ## A230476.P4684989483057777220

`A230293(n+1)+∑[A095374(2*(n+1))-A095374(n+1)]`
-/

namespace A230476.P4684989483057777220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (2 * (n + 1)) - A095374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230293 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230476.P4684989483057777220

namespace A230476

/-- `A230293(n+1)+∑[A095374(2*(n+1))-A095374(n+1)]` -/
def P4684989483057777220.Spec : Prop :=
  ∀ n, P4684989483057777220.a n = A230476 (n + 1)

end A230476

/-! ## A230476.P7620206703002049765

`A230293(n+1)+∑[A099774(2*n+3)-A099774(n+2)]`
-/

namespace A230476.P7620206703002049765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (2 * n + 3) - A099774 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230293 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230476.P7620206703002049765

namespace A230476

/-- `A230293(n+1)+∑[A099774(2*n+3)-A099774(n+2)]` -/
def P7620206703002049765.Spec : Prop :=
  ∀ n, P7620206703002049765.a n = A230476 (n + 1)

end A230476

/-! ## A230476.P10020746846739789714

`A230293(n+1)+∑[A023645(4*n+5)-A023645(2*n+3)]`
-/

namespace A230476.P10020746846739789714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (4 * n + 5) - A023645 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230293 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230476.P10020746846739789714

namespace A230476

/-- `A230293(n+1)+∑[A023645(4*n+5)-A023645(2*n+3)]` -/
def P10020746846739789714.Spec : Prop :=
  ∀ n, P10020746846739789714.a n = A230476 (n + 1)

end A230476

/-! ## A230476.P16176948028686838289

`A230293(n+1)+∑[A070824(4*n+5)-A070824(2*n+3)]`
-/

namespace A230476.P16176948028686838289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (4 * n + 5) - A070824 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230293 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230476.P16176948028686838289

namespace A230476

/-- `A230293(n+1)+∑[A070824(4*n+5)-A070824(2*n+3)]` -/
def P16176948028686838289.Spec : Prop :=
  ∀ n, P16176948028686838289.a n = A230476 (n + 1)

end A230476

/-! ## A230476.P17189486568459719746

`A230294(n+1)+∑[A032741(8*n+9)-A032741(4*n+5)]`
-/

namespace A230476.P17189486568459719746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (8 * n + 9) - A032741 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230294 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230476.P17189486568459719746

namespace A230476

/-- `A230294(n+1)+∑[A032741(8*n+9)-A032741(4*n+5)]` -/
def P17189486568459719746.Spec : Prop :=
  ∀ n, P17189486568459719746.a n = A230476 (n + 1)

end A230476

/-!
# A230478: Smallest number divisible by all numbers from 1 to 2*n-1, but not divisible by n, or 0 if impossible.

The programs for A230478, there is no canonical definition to state claims against.
-/

/-! ## A230478.P2062946509874619297

`Δ[A065515(n+1)]*A067391(2*(n+2))`
-/

namespace A230478.P2062946509874619297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A067391 (2 * (n + 2))

end

end A230478.P2062946509874619297

/-! ## A230478.P3578442741089687169

`A067391(2*(n+2))%A067391(2*n+5)`
-/

namespace A230478.P3578442741089687169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067391 (2 * (n + 2))) (A067391 (2 * n + 5))

end

end A230478.P3578442741089687169

/-! ## A230478.P14157202868461012909

`C(A067391(2*(n+2)), A055067(A292504(3*n+4)))`
-/

namespace A230478.P14157202868461012909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067391 (2 * (n + 2))).toNat (A055067 (A292504 (3 * n + 4)).toNat).toNat

end

end A230478.P14157202868461012909

/-!
# A230481: a(n) = prime(prime(2*n)) - prime(2*prime(n)).

The programs for A230481, the canonical program `A230481.P2153048938439826483` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230481 has offset 1).

The definition of A230481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230481.P13984859550267586482

`2*A230482(n+1)`
-/

namespace A230481.P13984859550267586482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230482 (n + 1)

end

end A230481.P13984859550267586482

namespace A230481

/-- `2*A230482(n+1)` -/
def P13984859550267586482.Spec : Prop :=
  ∀ n, P13984859550267586482.a n = A230481 (n + 1)

end A230481

/-! ## A230481.P2153048938439826483

`A217622(n+1)-A230460(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230481

/-- `A217622(n+1)-A230460(n+1)` -/
def P2153048938439826483.Spec : Prop :=
  ∀ n, P2153048938439826483.a n = A230481 (n + 1)

theorem P2153048938439826483.correct : P2153048938439826483.Spec := by
  intro n
  simp only [A230481, Nat.add_sub_cancel]

end A230481

/-! ## A230481.P14094936315263403956

`∑{e}[A290435(n+1), A230482(#+n)]`
-/

namespace A230481.P14094936315263403956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A230482 (Nat.factorization (f1 n).natAbs p + n)

end

end A230481.P14094936315263403956

namespace A230481

/-- `∑{e}[A290435(n+1), A230482(#+n)]` -/
def P14094936315263403956.Spec : Prop :=
  ∀ n, P14094936315263403956.a n = A230481 (n + 1)

end A230481

/-! ## A230481.P83178123323676724

`A006450(2*(n+1))-A230460(n+1)`
-/

namespace A230481.P83178123323676724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * (n + 1)) - A230460 (n + 1)

end

end A230481.P83178123323676724

namespace A230481

/-- `A006450(2*(n+1))-A230460(n+1)` -/
def P83178123323676724.Spec : Prop :=
  ∀ n, P83178123323676724.a n = A230481 (n + 1)

end A230481

/-! ## A230481.P13150822958420578975

`A217622(n+1)-A031215(A000040(n+1))`
-/

namespace A230481.P13150822958420578975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217622 (n + 1) - A031215 (A000040 (n + 1)).toNat

end

end A230481.P13150822958420578975

namespace A230481

/-- `A217622(n+1)-A031215(A000040(n+1))` -/
def P13150822958420578975.Spec : Prop :=
  ∀ n, P13150822958420578975.a n = A230481 (n + 1)

end A230481

/-! ## A230481.P8356120515925339117

`A217622(n+1)-A000040(A100484(n+1))`
-/

namespace A230481.P8356120515925339117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217622 (n + 1) - A000040 (A100484 (n + 1)).toNat

end

end A230481.P8356120515925339117

namespace A230481

/-- `A217622(n+1)-A000040(A100484(n+1))` -/
def P8356120515925339117.Spec : Prop :=
  ∀ n, P8356120515925339117.a n = A230481 (n + 1)

end A230481

/-! ## A230481.P13559817627574059055

`A217622(n+1)-A000040(2*A000040(n+1))`
-/

namespace A230481.P13559817627574059055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217622 (n + 1) - A000040 (2 * A000040 (n + 1)).toNat

end

end A230481.P13559817627574059055

namespace A230481

/-- `A217622(n+1)-A000040(2*A000040(n+1))` -/
def P13559817627574059055.Spec : Prop :=
  ∀ n, P13559817627574059055.a n = A230481 (n + 1)

end A230481

/-! ## A230481.P4322270734838750554

`A000040(A031215(n+1))-A230460(n+1)`
-/

namespace A230481.P4322270734838750554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A031215 (n + 1)).toNat - A230460 (n + 1)

end

end A230481.P4322270734838750554

namespace A230481

/-- `A000040(A031215(n+1))-A230460(n+1)` -/
def P4322270734838750554.Spec : Prop :=
  ∀ n, P4322270734838750554.a n = A230481 (n + 1)

end A230481

/-! ## A230481.P780393100226014457

`A000040(A031215(n+1))-A031215(A000040(n+1))`
-/

namespace A230481.P780393100226014457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A031215 (n + 1)).toNat - A031215 (A000040 (n + 1)).toNat

end

end A230481.P780393100226014457

namespace A230481

/-- `A000040(A031215(n+1))-A031215(A000040(n+1))` -/
def P780393100226014457.Spec : Prop :=
  ∀ n, P780393100226014457.a n = A230481 (n + 1)

end A230481

/-! ## A230481.P6298940814475793327

`A000040(A000040(2*(n+1)))-A000040(A001747(n+2))`
-/

namespace A230481.P6298940814475793327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (2 * (n + 1))).toNat - A000040 (A001747 (n + 2)).toNat

end

end A230481.P6298940814475793327

namespace A230481

/-- `A000040(A000040(2*(n+1)))-A000040(A001747(n+2))` -/
def P6298940814475793327.Spec : Prop :=
  ∀ n, P6298940814475793327.a n = A230481 (n + 1)

end A230481

/-! ## A230481.P12401851395512806799

`A006005(A006005(2*(n+1)))-A006005(A001747(n+2))`
-/

namespace A230481.P12401851395512806799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A006005 (2 * (n + 1))).toNat - A006005 (A001747 (n + 2)).toNat

end

end A230481.P12401851395512806799

namespace A230481

/-- `A006005(A006005(2*(n+1)))-A006005(A001747(n+2))` -/
def P12401851395512806799.Spec : Prop :=
  ∀ n, P12401851395512806799.a n = A230481 (n + 1)

end A230481

/-!
# A230482: a(n) = (prime(prime(2*n)) - prime(2*prime(n)))/2.

The programs for A230482, the canonical program `A230482.P1924195246442400697` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230482 has offset 1).

The definition of A230482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230482.P1924195246442400697

`(A217622(n+1)-A230460(n+1))/2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230482

/-- `(A217622(n+1)-A230460(n+1))/2` -/
def P1924195246442400697.Spec : Prop :=
  ∀ n, P1924195246442400697.a n = (A230482 (n + 1) : ℚ)

end A230482

/-! ## A230482.P50449603624307074

`A230481(n+1)/2`
-/

namespace A230482.P50449603624307074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230481 (n + 1) : ℚ) / 2

end

end A230482.P50449603624307074

namespace A230482

/-- `A230481(n+1)/2` -/
def P50449603624307074.Spec : Prop :=
  ∀ n, P50449603624307074.a n = (A230482 (n + 1) : ℚ)

end A230482

/-! ## A230482.P14234701732353410314

`(A217622(n+1)-A031215(A000040(n+1)))/2`
-/

namespace A230482.P14234701732353410314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217622 (n + 1) - A031215 (A000040 (n + 1)).toNat : ℚ) / 2

end

end A230482.P14234701732353410314

namespace A230482

/-- `(A217622(n+1)-A031215(A000040(n+1)))/2` -/
def P14234701732353410314.Spec : Prop :=
  ∀ n, P14234701732353410314.a n = (A230482 (n + 1) : ℚ)

end A230482

/-! ## A230482.P18206097216129890560

`(A217622(n+1)-A000040(A100484(n+1)))/2`
-/

namespace A230482.P18206097216129890560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217622 (n + 1) - A000040 (A100484 (n + 1)).toNat : ℚ) / 2

end

end A230482.P18206097216129890560

namespace A230482

/-- `(A217622(n+1)-A000040(A100484(n+1)))/2` -/
def P18206097216129890560.Spec : Prop :=
  ∀ n, P18206097216129890560.a n = (A230482 (n + 1) : ℚ)

end A230482

/-! ## A230482.P681434688862860154

`(A000040(A031215(n+1))-A230460(n+1))/2`
-/

namespace A230482.P681434688862860154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A031215 (n + 1)).toNat - A230460 (n + 1) : ℚ) / 2

end

end A230482.P681434688862860154

namespace A230482

/-- `(A000040(A031215(n+1))-A230460(n+1))/2` -/
def P681434688862860154.Spec : Prop :=
  ∀ n, P681434688862860154.a n = (A230482 (n + 1) : ℚ)

end A230482

/-!
# A230483: Strong pseudoprimes (base 2) that become prime when two is subtracted.

The programs for A230483, there is no canonical definition to state claims against.
-/

/-! ## A230483.P9051002622608184558

`∩[A192297(n+1)+2, A230487(n+1)]`
-/

namespace A230483.P9051002622608184558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230483.P9051002622608184558

/-! ## A230483.P13295992492460912977

`∩[A100873(n+1), A230487(n+1)]`
-/

namespace A230483.P13295992492460912977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230483.P13295992492460912977

/-! ## A230483.P13035264858431822751

`∩[A001262(n+1), A100873(n+1)]`
-/

namespace A230483.P13035264858431822751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230483.P13035264858431822751

/-! ## A230483.P17598445260651102924

`∩[A001262(n+1), A192297(n+1)+2]`
-/

namespace A230483.P17598445260651102924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230483.P17598445260651102924

/-! ## A230483.P4629435328853910734

`∩[A020234(n+1), A100873(n+1)]`
-/

namespace A230483.P4629435328853910734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230483.P4629435328853910734

/-! ## A230483.P1847536315931624425

`∩[A020234(n+1), A192297(n+1)+2]`
-/

namespace A230483.P1847536315931624425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230483.P1847536315931624425

/-! ## A230483.P14128842944913914694

`∩[A020258(n+1), A100873(n+1)]`
-/

namespace A230483.P14128842944913914694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230483.P14128842944913914694

/-! ## A230483.P14606354625398898679

`∩[A020258(n+1), A192297(n+1)+2]`
-/

namespace A230483.P14606354625398898679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230483.P14606354625398898679

/-!
# A230484: Strong pseudoprimes (base 2) that become prime when two is added.

The programs for A230484, there is no canonical definition to state claims against.
-/

/-! ## A230484.P11267763700379547834

`∩[A137198(n+1), A230487(n+1)]`
-/

namespace A230484.P11267763700379547834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230484.P11267763700379547834

/-! ## A230484.P8897689086717485725

`∩[A192297(n+1), A230487(n+1)]`
-/

namespace A230484.P8897689086717485725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230484.P8897689086717485725

/-! ## A230484.P13544219082667634057

`∩[A001262(n+1), A137198(n+1)]`
-/

namespace A230484.P13544219082667634057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230484.P13544219082667634057

/-! ## A230484.P290104823496328207

`∩[A001262(n+1), A192297(n+1)]`
-/

namespace A230484.P290104823496328207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230484.P290104823496328207

/-! ## A230484.P385861815604815140

`∩[A020234(n+1), A137198(n+1)]`
-/

namespace A230484.P385861815604815140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230484.P385861815604815140

/-! ## A230484.P7002481038781712772

`∩[A020234(n+1), A192297(n+1)]`
-/

namespace A230484.P7002481038781712772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230484.P7002481038781712772

/-! ## A230484.P12446350199306117117

`∩[A020234(n+1), A224695(n+1)]`
-/

namespace A230484.P12446350199306117117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230484.P12446350199306117117

/-!
# A230486: Numbers n such that n^n is representable as the sum of two nonzero squares.

The programs for A230486, the canonical program `A230486.P14651634677920879007` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230486 has offset 1).

The definition of A230486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230486.P11015219568289693294

`∪[A008846(n+1), A072592(n+1)]`
-/

namespace A230486.P11015219568289693294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230486.P11015219568289693294

namespace A230486

/-- `∪[A008846(n+1), A072592(n+1)]` -/
def P11015219568289693294.Spec : Prop :=
  ∀ n, (P11015219568289693294.a n : ℤ) = A230486 (n + 1)

end A230486

/-! ## A230486.P14651634677920879007

`lt[A152271(n+1), A170818(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A230486

/-- `lt[A152271(n+1), A170818(n+1)]+1` -/
def P14651634677920879007.Spec : Prop :=
  ∀ n, (P14651634677920879007.a n : ℤ) = A230486 (n + 1)

theorem P14651634677920879007.correct : P14651634677920879007.Spec := by
  intro n
  simp only [A230486, Nat.add_sub_cancel]

end A230486

/-! ## A230486.P3106513714257952235

`lt[A152271(n), A170818(A004277(n))]`
-/

namespace A230486.P3106513714257952235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230486.P3106513714257952235

namespace A230486

/-- `lt[A152271(n), A170818(A004277(n))]` -/
def P3106513714257952235.Spec : Prop :=
  ∀ n, (P3106513714257952235.a n : ℤ) = A230486 (n + 1)

end A230486

/-! ## A230486.P3251261967439520320

`lt[A152271(n), A170818(A008486(n))]`
-/

namespace A230486.P3251261967439520320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230486.P3251261967439520320

namespace A230486

/-- `lt[A152271(n), A170818(A008486(n))]` -/
def P3251261967439520320.Spec : Prop :=
  ∀ n, (P3251261967439520320.a n : ℤ) = A230486 (n + 1)

end A230486

/-! ## A230486.P5003224992751660552

`lt[A152271(n), A170818(A008574(n))]`
-/

namespace A230486.P5003224992751660552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230486.P5003224992751660552

namespace A230486

/-- `lt[A152271(n), A170818(A008574(n))]` -/
def P5003224992751660552.Spec : Prop :=
  ∀ n, (P5003224992751660552.a n : ℤ) = A230486 (n + 1)

end A230486

/-! ## A230486.P9930826150713598788

`lt[A152271(n), A170818(A028310(n))]`
-/

namespace A230486.P9930826150713598788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230486.P9930826150713598788

namespace A230486

/-- `lt[A152271(n), A170818(A028310(n))]` -/
def P9930826150713598788.Spec : Prop :=
  ∀ n, (P9930826150713598788.a n : ℤ) = A230486 (n + 1)

end A230486

/-! ## A230486.P1368970696354496404

`lt[A152271(n), A170818(A008458(n))]`
-/

namespace A230486.P1368970696354496404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230486.P1368970696354496404

namespace A230486

/-- `lt[A152271(n), A170818(A008458(n))]` -/
def P1368970696354496404.Spec : Prop :=
  ∀ n, (P1368970696354496404.a n : ℤ) = A230486 (n + 1)

end A230486

/-! ## A230486.P12505117796198680293

`lt[A152271(n), A170818(A035877(n))]`
-/

namespace A230486.P12505117796198680293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A035877 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230486.P12505117796198680293

namespace A230486

/-- `lt[A152271(n), A170818(A035877(n))]` -/
def P12505117796198680293.Spec : Prop :=
  ∀ n, (P12505117796198680293.a n : ℤ) = A230486 (n + 1)

end A230486

/-! ## A230486.P12488814809645642324

`lt[A152271(n), A170818(A022144(n))]`
-/

namespace A230486.P12488814809645642324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230486.P12488814809645642324

namespace A230486

/-- `lt[A152271(n), A170818(A022144(n))]` -/
def P12488814809645642324.Spec : Prop :=
  ∀ n, (P12488814809645642324.a n : ℤ) = A230486 (n + 1)

end A230486

/-! ## A230486.P14892849365446901417

`lt[A152271(n), A170818(A233583(n+1))]`
-/

namespace A230486.P14892849365446901417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230486.P14892849365446901417

namespace A230486

/-- `lt[A152271(n), A170818(A233583(n+1))]` -/
def P14892849365446901417.Spec : Prop :=
  ∀ n, (P14892849365446901417.a n : ℤ) = A230486 (n + 1)

end A230486

/-!
# A230487: Strong pseudoprimes k to base 2 such that either k-2 or k+2 is prime.

The programs for A230487, there is no canonical definition to state claims against.
-/

/-! ## A230487.P7777814404852412008

`∪[A230483(n+1), A230484(n+1)]`
-/

namespace A230487.P7777814404852412008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230487.P7777814404852412008

/-!
# A230488: Pseudoprimes n to base 2 such that n-2 and n-4 are primes.

The programs for A230488, there is no canonical definition to state claims against.
-/

/-! ## A230488.P10733868433840555301

`∩[A100873(n+1), A100875(n+1)]`
-/

namespace A230488.P10733868433840555301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230488.P10733868433840555301

/-! ## A230488.P8510512515745775210

`∩[A100873(n+1), A230808(n+1)+4]`
-/

namespace A230488.P8510512515745775210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230488.P8510512515745775210

/-! ## A230488.P13390018113940831122

`∩[A001567(n+1), A230808(n+1)+4]`
-/

namespace A230488.P13390018113940831122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230488.P13390018113940831122

/-! ## A230488.P13148759861676944262

`∩[A020144(n+1), A230808(n+1)+4]`
-/

namespace A230488.P13148759861676944262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230488.P13148759861676944262

/-! ## A230488.P16583134983448222793

`∩[A122785(n+1), A230808(n+1)+4]`
-/

namespace A230488.P16583134983448222793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230488.P16583134983448222793

/-!
# A230489: Pseudoprimes n to base 2 such that n+2 and n+4 are primes.

The programs for A230489, there is no canonical definition to state claims against.
-/

/-! ## A230489.P14786420839461467349

`∩[A137198(n+1), A230808(n+1)]`
-/

namespace A230489.P14786420839461467349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230489.P14786420839461467349

/-! ## A230489.P6719156880191811962

`∩[A230808(n+1), A224695(A248356(n+3))]`
-/

namespace A230489.P6719156880191811962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224695 (A248356 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230489.P6719156880191811962

/-! ## A230489.P7693375482413772751

`∩[A080747(n+1), A230808(n+1)]`
-/

namespace A230489.P7693375482413772751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230489.P7693375482413772751

/-!
# A230490: Size of largest subset of [1..n] containing no three terms in a geometric progression with integer ratio.

The programs for A230490, there is no canonical definition to state claims against.
-/

/-! ## A230490.P10752588128485971415

`∑[A285599(A057876(n+1)+A002033(n))]`
-/

namespace A230490.P10752588128485971415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285599 (A057876 (n + 1) + A002033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230490.P10752588128485971415

/-! ## A230490.P8493944879503668563

`∑[abs(A010892(A087145(n+1)))]`
-/

namespace A230490.P8493944879503668563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010892 (A087145 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230490.P8493944879503668563

/-! ## A230490.P8630922370796727907

`∑[A307421(n*A307421(∑[n²]+1)+1)]`
-/

namespace A230490.P8630922370796727907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307421 ((n : ℤ) * A307421 (∑ j ∈ Finset.range (n + 1), f2 j + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230490.P8630922370796727907

/-! ## A230490.P3215897311388639394

`∑[A010060((A003114(gcd(n+1, (n+13)^9))+1)²)]`
-/

namespace A230490.P3215897311388639394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ((A003114 (Nat.gcd (n + 1) ((n + 13) ^ 9)) + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230490.P3215897311388639394

/-! ## A230490.P2476036432705770498

`∑[A355823(∑[A006378(3*n+2)])]`
-/

namespace A230490.P2476036432705770498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006378 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355823 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230490.P2476036432705770498

/-!
# A230491: Integer areas of the integer-sided triangles such that the length of the inradius is a square.

The programs for A230491, there is no canonical definition to state claims against.
-/

/-! ## A230491.P13203057044955811830

`A290451(n+5)%A341010(A376684(n))`
-/

namespace A230491.P13203057044955811830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290451 (n + 5)) (A341010 (A376684 n).toNat)

end

end A230491.P13203057044955811830

/-!
# A230494: Number of ways to write n = x^2 + y (x, y >= 0) with 2*y^2 - 1 prime.

The programs for A230494, there is no canonical definition to state claims against.
-/

/-! ## A230494.P971006490444082960

`A001221(A055229(n+1)*A116755(n+1))`
-/

namespace A230494.P971006490444082960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055229 (n + 1) * A116755 (n + 1)).toNat

end

end A230494.P971006490444082960

/-! ## A230494.P4042741131239825438

`A001221(lcm(A055229(n+1), A116755(n+1)))`
-/

namespace A230494.P4042741131239825438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A055229 (n + 1)) (A116755 (n + 1)))

end

end A230494.P4042741131239825438

/-! ## A230494.P5873245008757944996

`or(A001221(A116755(n+1)), A285726(n+1))`
-/

namespace A230494.P5873245008757944996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A116755 (n + 1)).toNat) (A285726 (n + 1))

end

end A230494.P5873245008757944996

/-! ## A230494.P2797915889646991982

`A001221(xor(A037911(n+1), A116755(n+1)))`
-/

namespace A230494.P2797915889646991982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A037911 (n + 1)) (A116755 (n + 1))).toNat

end

end A230494.P2797915889646991982

/-! ## A230494.P3638990875025431428

`A001221(A116755(n+1)+1-A055229(n+1))`
-/

namespace A230494.P3638990875025431428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A116755 (n + 1) + (1 - A055229 (n + 1))).toNat

end

end A230494.P3638990875025431428

/-!
# A230495: a(n) is the minimal odd evil k, such that k^i, i=1,2,...,n, all are evil, and a(n)=0, if there is no such k.

The programs for A230495, there is no canonical definition to state claims against.
-/

/-! ## A230495.P7630771051872958121

`xor(4, A002476(A153431(n)))`
-/

namespace A230495.P7630771051872958121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A002476 (A153431 n).toNat)

end

end A230495.P7630771051872958121

/-! ## A230495.P4862867494290197150

`A302725(∏[A346520(n)!])`
-/

namespace A230495.P4862867494290197150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A346520 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302725 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A230495.P4862867494290197150

/-!
# A230496: a(n) is the minimal odd odious k > 1, such that k^i, i=1,2,...,n, all are odious, or a(n)=0, if there is no such k.

The programs for A230496, there is no canonical definition to state claims against.
-/

/-! ## A230496.P5150516943694405437

`A192628(p?[A192628((or(2, n)+n)/2)])`
-/

namespace A230496.P5150516943694405437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192628 (SequenceMachineLib.roundAway ((Nat.lor 2 n + n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192628 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A230496.P5150516943694405437

/-! ## A230496.P4743724548053734585

`A106330(A028581(n+1)%2+n+1)`
-/

namespace A230496.P4743724548053734585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (Int.tmod (A028581 (n + 1)) 2 + (n : ℤ) + 1).toNat

end

end A230496.P4743724548053734585

