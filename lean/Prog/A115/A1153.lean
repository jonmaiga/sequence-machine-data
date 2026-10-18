import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C010
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
# A115300: Greatest digit of n * least digit of n.

The programs for A115300, the canonical program `A115300.P5587035240963865168` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115300 has offset 1).

The definition of A115300 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115300.P5587035240963865168

`A054054(n+1)*A054055(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A115300

/-- `A054054(n+1)*A054055(n+1)` -/
def P5587035240963865168.Spec : Prop :=
  ∀ n, P5587035240963865168.a n = A115300 (n + 1)

theorem P5587035240963865168.correct : P5587035240963865168.Spec := by
  intro n
  simp only [A115300, Nat.add_sub_cancel]

end A115300

/-! ## A115300.P4396649241163166973

`∏{digits}[A073730(n+1), #]`
-/

namespace A115300.P4396649241163166973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A115300.P4396649241163166973

namespace A115300

/-- `∏{digits}[A073730(n+1), #]` -/
def P4396649241163166973.Spec : Prop :=
  ∀ n, (P4396649241163166973.a n : ℤ) = A115300 (n + 1)

end A115300

/-! ## A115300.P9065140108176222092

`A007954(A073730(n+1))`
-/

namespace A115300.P9065140108176222092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A073730 (n + 1)).toNat

end

end A115300.P9065140108176222092

namespace A115300

/-- `A007954(A073730(n+1))` -/
def P9065140108176222092.Spec : Prop :=
  ∀ n, P9065140108176222092.a n = A115300 (n + 1)

end A115300

/-! ## A115300.P5701166165431814714

`∏{digits}[A073729(A004186(n+1)), #]`
-/

namespace A115300.P5701166165431814714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A004186 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A115300.P5701166165431814714

namespace A115300

/-- `∏{digits}[A073729(A004186(n+1)), #]` -/
def P5701166165431814714.Spec : Prop :=
  ∀ n, (P5701166165431814714.a n : ℤ) = A115300 (n + 1)

end A115300

/-! ## A115300.P14345392990170220139

`A054054(n+1)*A070958(A095815(n+1)-n)`
-/

namespace A115300.P14345392990170220139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n + 1) * A070958 (A095815 (n + 1) - (n : ℤ)).toNat

end

end A115300.P14345392990170220139

namespace A115300

/-- `A054054(n+1)*A070958(A095815(n+1)-n)` -/
def P14345392990170220139.Spec : Prop :=
  ∀ n, P14345392990170220139.a n = A115300 (n + 1)

end A115300

/-! ## A115300.P7726063577901308221

`(A054054(n+1)+A037904(n+1))*A054054(n+1)`
-/

namespace A115300.P7726063577901308221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054054 (n + 1) + A037904 (n + 1)) * A054054 (n + 1)

end

end A115300.P7726063577901308221

namespace A115300

/-- `(A054054(n+1)+A037904(n+1))*A054054(n+1)` -/
def P7726063577901308221.Spec : Prop :=
  ∀ n, P7726063577901308221.a n = A115300 (n + 1)

end A115300

/-! ## A115300.P10334677920471643439

`(A054055(n+1)-A037904(n+1))*A054055(n+1)`
-/

namespace A115300.P10334677920471643439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054055 (n + 1) - A037904 (n + 1)) * A054055 (n + 1)

end

end A115300.P10334677920471643439

namespace A115300

/-- `(A054055(n+1)-A037904(n+1))*A054055(n+1)` -/
def P10334677920471643439.Spec : Prop :=
  ∀ n, P10334677920471643439.a n = A115300 (n + 1)

end A115300

/-! ## A115300.P277003958271056465

`A054054(n+1)*A054054(A095815(n+1)-(n+1))`
-/

namespace A115300.P277003958271056465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n + 1) * A054054 (A095815 (n + 1) - (n + 1 : ℤ)).toNat

end

end A115300.P277003958271056465

namespace A115300

/-- `A054054(n+1)*A054054(A095815(n+1)-(n+1))` -/
def P277003958271056465.Spec : Prop :=
  ∀ n, P277003958271056465.a n = A115300 (n + 1)

end A115300

/-! ## A115300.P15732662512045901564

`(A228822(n+1)+A055642(n+1))*A054054(n+1)`
-/

namespace A115300.P15732662512045901564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A228822 (n + 1) + A055642 (n + 1)) * A054054 (n + 1)

end

end A115300.P15732662512045901564

namespace A115300

/-- `(A228822(n+1)+A055642(n+1))*A054054(n+1)` -/
def P15732662512045901564.Spec : Prop :=
  ∀ n, P15732662512045901564.a n = A115300 (n + 1)

end A115300

/-! ## A115300.P6734685096113555521

`A111707(A051022(n+1))`
-/

namespace A115300.P6734685096113555521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (A051022 (n + 1)).toNat

end

end A115300.P6734685096113555521

namespace A115300

/-- `A111707(A051022(n+1))` -/
def P6734685096113555521.Spec : Prop :=
  ∀ n, P6734685096113555521.a n = A115300 (n + 1)

end A115300

/-! ## A115300.P14791758116223040418

`A169669(A087019(n+1))`
-/

namespace A115300.P14791758116223040418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 (A087019 (n + 1)).toNat

end

end A115300.P14791758116223040418

namespace A115300

/-- `A169669(A087019(n+1))` -/
def P14791758116223040418.Spec : Prop :=
  ∀ n, P14791758116223040418.a n = A115300 (n + 1)

end A115300

/-! ## A115300.P10324009202097131283

`A111707(A000196((n+1)²))`
-/

namespace A115300.P10324009202097131283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (A000196 ((n + 1) ^ 2)).toNat

end

end A115300.P10324009202097131283

namespace A115300

/-- `A111707(A000196((n+1)²))` -/
def P10324009202097131283.Spec : Prop :=
  ∀ n, P10324009202097131283.a n = A115300 (n + 1)

end A115300

/-! ## A115300.P6904062135788669047

`A111707(A070886(n²)+n)`
-/

namespace A115300.P6904062135788669047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (A070886 (n ^ 2) + (n : ℤ)).toNat

end

end A115300.P6904062135788669047

namespace A115300

/-- `A111707(A070886(n²)+n)` -/
def P6904062135788669047.Spec : Prop :=
  ∀ n, P6904062135788669047.a n = A115300 (n + 1)

end A115300

/-! ## A115300.P12279080185200601365

`A169669(A267537(n²)+n)`
-/

namespace A115300.P12279080185200601365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 (A267537 (n ^ 2) + (n : ℤ)).toNat

end

end A115300.P12279080185200601365

namespace A115300

/-- `A169669(A267537(n²)+n)` -/
def P12279080185200601365.Spec : Prop :=
  ∀ n, P12279080185200601365.a n = A115300 (n + 1)

end A115300

/-!
# A115302: Permutation of natural numbers generated by 3-rowed array shown below.

The programs for A115302, there is no canonical definition to state claims against.
-/

/-! ## A115302.P17257325723801139923

`a(n-3)+3` with `a(0)=1, a(1)=4, a(2)=2, a(3)=7, a(4)=5, a(5)=3`
-/

namespace A115302.P17257325723801139923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 2, 7, 5, 3] fun n a =>
  a (n - 3) + 3

end

end A115302.P17257325723801139923

/-! ## A115302.P11153002483023985579

`A116551(n+1)+1`
-/

namespace A115302.P11153002483023985579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116551 (n + 1) + 1

end

end A115302.P11153002483023985579

/-! ## A115302.P8092485896160080971

`A131717(A088520(n+1))`
-/

namespace A115302.P8092485896160080971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A088520 (n + 1)).toNat

end

end A115302.P8092485896160080971

/-! ## A115302.P13941260107930921574

`A133259(A115731(n+1)-1)`
-/

namespace A115302.P13941260107930921574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A115731 (n + 1) - 1).toNat

end

end A115302.P13941260107930921574

/-! ## A115302.P8969026995361583928

`xor(∏{d}[1-n, #%2]%A143098(n+1), A088520(n+1))`
-/

namespace A115302.P8969026995361583928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod ((∏ d ∈ Nat.divisors (f1 n).natAbs, d % 2 : ℕ) : ℤ) (A143098 (n + 1))) (A088520 (n + 1))

end

end A115302.P8969026995361583928

/-! ## A115302.P5855177293197254509

`xor(A181440(n+1)%A143098(n+1), A088520(n+1))`
-/

namespace A115302.P5855177293197254509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A181440 (n + 1)) (A143098 (n + 1))) (A088520 (n + 1))

end

end A115302.P5855177293197254509

/-!
# A115303: a(n) = n if n < 3, otherwise 3*a(floor(n/3)) + 2 - n mod 3.

The programs for A115303, there is no canonical definition to state claims against.
-/

/-! ## A115303.P7396775082801348268

`A004488(A372783(A004488(n+1)))`
-/

namespace A115303.P7396775082801348268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A372783 (A004488 (n + 1)).toNat).toNat

end

end A115303.P7396775082801348268

/-!
# A115304: a(n) = n if n < 4, otherwise 4*a(floor(n/4)) + 3 - n mod 4.

The programs for A115304, the canonical program `A115304.P7652751646611142296` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115304 has offset 1).

The definition of A115304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115304.P7442253975635262824

`xor(A003188(A258996(n+1)), A110654(n))`
-/

namespace A115304.P7442253975635262824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (A258996 (n + 1)).toNat) (A110654 n)

end

end A115304.P7442253975635262824

namespace A115304

/-- `xor(A003188(A258996(n+1)), A110654(n))` -/
def P7442253975635262824.Spec : Prop :=
  ∀ n, P7442253975635262824.a n = A115304 (n + 1)

end A115304

/-! ## A115304.P7302673037319456784

`A003188(A258996(A006068(n+1)))`
-/

namespace A115304.P7302673037319456784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A258996 (A006068 (n + 1)).toNat).toNat

end

end A115304.P7302673037319456784

namespace A115304

/-- `A003188(A258996(A006068(n+1)))` -/
def P7302673037319456784.Spec : Prop :=
  ∀ n, P7302673037319456784.a n = A115304 (n + 1)

end A115304

/-! ## A115304.P7652751646611142296

`A059894(xor(A030301(n+1), A059893(n+1)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A115304

/-- `A059894(xor(A030301(n+1), A059893(n+1)))` -/
def P7652751646611142296.Spec : Prop :=
  ∀ n, P7652751646611142296.a n = A115304 (n + 1)

theorem P7652751646611142296.correct : P7652751646611142296.Spec := by
  intro n
  simp only [A115304, Nat.add_sub_cancel]

end A115304

/-! ## A115304.P16521797173173566057

`A233280(A258996(A233279(n+1)))`
-/

namespace A115304.P16521797173173566057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A258996 (A233279 (n + 1)).toNat).toNat

end

end A115304.P16521797173173566057

namespace A115304

/-- `A233280(A258996(A233279(n+1)))` -/
def P16521797173173566057.Spec : Prop :=
  ∀ n, P16521797173173566057.a n = A115304 (n + 1)

end A115304

/-! ## A115304.P576629507559938634

`xor(A110654(n), A233280(A332769(n+1)))`
-/

namespace A115304.P576629507559938634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110654 n) (A233280 (A332769 (n + 1)).toNat)

end

end A115304.P576629507559938634

namespace A115304

/-- `xor(A110654(n), A233280(A332769(n+1)))` -/
def P576629507559938634.Spec : Prop :=
  ∀ n, P576629507559938634.a n = A115304 (n + 1)

end A115304

/-! ## A115304.P15965060955365019109

`xor(A003188(A332769(n+1)), A164089(n+1))`
-/

namespace A115304.P15965060955365019109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (A332769 (n + 1)).toNat) (A164089 (n + 1))

end

end A115304.P15965060955365019109

namespace A115304

/-- `xor(A003188(A332769(n+1)), A164089(n+1))` -/
def P15965060955365019109.Spec : Prop :=
  ∀ n, P15965060955365019109.a n = A115304 (n + 1)

end A115304

/-! ## A115304.P14044977397823010394

`A163241(A163241(n+1)+A258996(n+1)-(n+1))`
-/

namespace A115304.P14044977397823010394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163241 (n + 1) + (A258996 (n + 1) - (n + 1 : ℤ))).toNat

end

end A115304.P14044977397823010394

namespace A115304

/-- `A163241(A163241(n+1)+A258996(n+1)-(n+1))` -/
def P14044977397823010394.Spec : Prop :=
  ∀ n, P14044977397823010394.a n = A115304 (n + 1)

end A115304

/-! ## A115304.P11564224426857386162

`xor(A003188(A258996(n+1)), A110655(2*n))`
-/

namespace A115304.P11564224426857386162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (A258996 (n + 1)).toNat) (A110655 (2 * n))

end

end A115304.P11564224426857386162

namespace A115304

/-- `xor(A003188(A258996(n+1)), A110655(2*n))` -/
def P11564224426857386162.Spec : Prop :=
  ∀ n, P11564224426857386162.a n = A115304 (n + 1)

end A115304

/-! ## A115304.P4289611614257538719

`xor(A153154(A092323(n+1)), A332769(n+1))`
-/

namespace A115304.P4289611614257538719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153154 (A092323 (n + 1)).toNat) (A332769 (n + 1))

end

end A115304.P4289611614257538719

namespace A115304

/-- `xor(A153154(A092323(n+1)), A332769(n+1))` -/
def P4289611614257538719.Spec : Prop :=
  ∀ n, P4289611614257538719.a n = A115304 (n + 1)

end A115304

/-! ## A115304.P5826700713542083369

`A154436(A258996(A154435(n+1)))`
-/

namespace A115304.P5826700713542083369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A258996 (A154435 (n + 1)).toNat).toNat

end

end A115304.P5826700713542083369

namespace A115304

/-- `A154436(A258996(A154435(n+1)))` -/
def P5826700713542083369.Spec : Prop :=
  ∀ n, P5826700713542083369.a n = A115304 (n + 1)

end A115304

/-!
# A115306: a(n) = if n

The programs for A115306, the canonical program `A115306.P14704975397464951551` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115306 has offset 1).

The definition of A115306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115306.P14704975397464951551

`6*a(floor((n+1)/6)-1)+5-(n+1)%6` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115306

/-- `6*a(floor((n+1)/6)-1)+5-(n+1)%6` -/
def P14704975397464951551.Spec : Prop :=
  ∀ n, P14704975397464951551.a n = A115306 (n + 1)

theorem P14704975397464951551.correct : P14704975397464951551.Spec := by
  intro n
  simp only [A115306, Nat.add_sub_cancel]

end A115306

/-!
# A115308: a(n) = if n

The programs for A115308, there is no canonical definition to state claims against.
-/

/-! ## A115308.P16359447293533639902

`xor(n+1, A186684(A175782(3*n)))`
-/

namespace A115308.P16359447293533639902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A186684 (A175782 (3 * n)).toNat)

end

end A115308.P16359447293533639902

/-!
# A115310: Triangle read by rows, 0<=k<=n: T(n,k) = if n < 2*k then n-k+1 else (k+1)*T(k-1+floor((n-k+1)/(k+1)),k) + k - (n-k+1) mod (k+1).

The programs for A115310, there is no canonical definition to state claims against.
-/

/-! ## A115310.P11330549719299043844

`A119704(A080247(n)+A008683(n+5))`
-/

namespace A115310.P11330549719299043844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119704 (A080247 n + A008683 (n + 5)).toNat

end

end A115310.P11330549719299043844

/-!
# A115311: a(n) = gcd(Lucas(n)-1, Fibonacci(n)-1).

The programs for A115311, the canonical program `A115311.P3944248948601535789` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115311 has offset 1).

The definition of A115311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115311.P14085821670066059204

`A131534(n)*A210209(n)`
-/

namespace A115311.P14085821670066059204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 n * A210209 n

end

end A115311.P14085821670066059204

namespace A115311

/-- `A131534(n)*A210209(n)` -/
def P14085821670066059204.Spec : Prop :=
  ∀ n, P14085821670066059204.a n = A115311 (n + 1)

end A115311

/-! ## A115311.P1894626767030640530

`lcm(A057079(n), A210209(n))`
-/

namespace A115311.P1894626767030640530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057079 n) (A210209 n)

end

end A115311.P1894626767030640530

namespace A115311

/-- `lcm(A057079(n), A210209(n))` -/
def P1894626767030640530.Spec : Prop :=
  ∀ n, (P1894626767030640530.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P9977803240489838878

`A177702(n+1)*A210209(n)`
-/

namespace A115311.P9977803240489838878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (n + 1) * A210209 n

end

end A115311.P9977803240489838878

namespace A115311

/-- `A177702(n+1)*A210209(n)` -/
def P9977803240489838878.Spec : Prop :=
  ∀ n, P9977803240489838878.a n = A115311 (n + 1)

end A115311

/-! ## A115311.P3944248948601535789

`gcd(2-A118658(n), A000071(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115311

/-- `gcd(2-A118658(n), A000071(n+1))` -/
def P3944248948601535789.Spec : Prop :=
  ∀ n, (P3944248948601535789.a n : ℤ) = A115311 (n + 1)

theorem P3944248948601535789.correct : P3944248948601535789.Spec := by
  intro n
  simp only [A115311, Nat.add_sub_cancel]

end A115311

/-! ## A115311.P315078159127171223

`gcd(A000071(n+1), A140833(n))`
-/

namespace A115311.P315078159127171223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000071 (n + 1)) (A140833 n)

end

end A115311.P315078159127171223

namespace A115311

/-- `gcd(A000071(n+1), A140833(n))` -/
def P315078159127171223.Spec : Prop :=
  ∀ n, (P315078159127171223.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P7831986327371918478

`A210209(2*n+1)*A210209(n)`
-/

namespace A115311.P7831986327371918478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210209 (2 * n + 1) * A210209 n

end

end A115311.P7831986327371918478

namespace A115311

/-- `A210209(2*n+1)*A210209(n)` -/
def P7831986327371918478.Spec : Prop :=
  ∀ n, P7831986327371918478.a n = A115311 (n + 1)

end A115311

/-! ## A115311.P8714038005741988429

`gcd(2*A181716(n), A187890(n+1))`
-/

namespace A115311.P8714038005741988429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A181716 n) (A187890 (n + 1))

end

end A115311.P8714038005741988429

namespace A115311

/-- `gcd(2*A181716(n), A187890(n+1))` -/
def P8714038005741988429.Spec : Prop :=
  ∀ n, (P8714038005741988429.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P10095521560617862845

`gcd(A001610(n), A022087(n))`
-/

namespace A115311.P10095521560617862845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001610 n) (A022087 n)

end

end A115311.P10095521560617862845

namespace A115311

/-- `gcd(A001610(n), A022087(n))` -/
def P10095521560617862845.Spec : Prop :=
  ∀ n, (P10095521560617862845.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P11862291895467201281

`gcd(A168674(n), A187892(n))`
-/

namespace A115311.P11862291895467201281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168674 n) (A187892 n)

end

end A115311.P11862291895467201281

namespace A115311

/-- `gcd(A168674(n), A187892(n))` -/
def P11862291895467201281.Spec : Prop :=
  ∀ n, (P11862291895467201281.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P11671783003846062532

`gcd(A022091(n), A022311(n))`
-/

namespace A115311.P11671783003846062532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022091 n) (A022311 n)

end

end A115311.P11671783003846062532

namespace A115311

/-- `gcd(A022091(n), A022311(n))` -/
def P11671783003846062532.Spec : Prop :=
  ∀ n, (P11671783003846062532.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P9456391399058327654

`gcd(A022313(n), A022315(n))`
-/

namespace A115311.P9456391399058327654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022313 n) (A022315 n)

end

end A115311.P9456391399058327654

namespace A115311

/-- `gcd(A022313(n), A022315(n))` -/
def P9456391399058327654.Spec : Prop :=
  ∀ n, (P9456391399058327654.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P4425720272705247199

`gcd(2*A022308(n), A022309(n))`
-/

namespace A115311.P4425720272705247199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A022308 n) (A022309 n)

end

end A115311.P4425720272705247199

namespace A115311

/-- `gcd(2*A022308(n), A022309(n))` -/
def P4425720272705247199.Spec : Prop :=
  ∀ n, (P4425720272705247199.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P3115059322248587882

`gcd(2*A000045(n), A022317(n))`
-/

namespace A115311.P3115059322248587882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A000045 n) (A022317 n)

end

end A115311.P3115059322248587882

namespace A115311

/-- `gcd(2*A000045(n), A022317(n))` -/
def P3115059322248587882.Spec : Prop :=
  ∀ n, (P3115059322248587882.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P1890132669149513346

`gcd(A022356(n), A187890(n+1))`
-/

namespace A115311.P1890132669149513346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022356 n) (A187890 (n + 1))

end

end A115311.P1890132669149513346

namespace A115311

/-- `gcd(A022356(n), A187890(n+1))` -/
def P1890132669149513346.Spec : Prop :=
  ∀ n, (P1890132669149513346.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P466728176864223825

`gcd(A006327(n+4), A142245(n))`
-/

namespace A115311.P466728176864223825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006327 (n + 4)) (A142245 n)

end

end A115311.P466728176864223825

namespace A115311

/-- `gcd(A006327(n+4), A142245(n))` -/
def P466728176864223825.Spec : Prop :=
  ∀ n, (P466728176864223825.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P17391673725152873885

`gcd(A059929(n), A097040(n+1))`
-/

namespace A115311.P17391673725152873885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059929 n) (A097040 (n + 1))

end

end A115311.P17391673725152873885

namespace A115311

/-- `gcd(A059929(n), A097040(n+1))` -/
def P17391673725152873885.Spec : Prop :=
  ∀ n, (P17391673725152873885.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P15683533351402910938

`gcd(A007492(2*(n+1)), A362067(n))`
-/

namespace A115311.P15683533351402910938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007492 (2 * (n + 1))) (A362067 n)

end

end A115311.P15683533351402910938

namespace A115311

/-- `gcd(A007492(2*(n+1)), A362067(n))` -/
def P15683533351402910938.Spec : Prop :=
  ∀ n, (P15683533351402910938.a n : ℤ) = A115311 (n + 1)

end A115311

/-! ## A115311.P15066480970932377905

`gcd(A000071(2*n+2), A000071(A028310(n+1)))`
-/

namespace A115311.P15066480970932377905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000071 (2 * n + 2)) (A000071 (A028310 (n + 1)).toNat)

end

end A115311.P15066480970932377905

namespace A115311

/-- `gcd(A000071(2*n+2), A000071(A028310(n+1)))` -/
def P15066480970932377905.Spec : Prop :=
  ∀ n, (P15066480970932377905.a n : ℤ) = A115311 (n + 1)

end A115311

/-!
# A115312: a(n) = gcd(Lucas(n)-1, Fibonacci(n)+1).

The programs for A115312, the canonical program `A115312.P5786232800808461001` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115312 has offset 1).

The definition of A115312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115312.P5786232800808461001

`gcd(A001610(n), A001611(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115312

/-- `gcd(A001610(n), A001611(n+1))` -/
def P5786232800808461001.Spec : Prop :=
  ∀ n, (P5786232800808461001.a n : ℤ) = A115312 (n + 1)

theorem P5786232800808461001.correct : P5786232800808461001.Spec := by
  intro n
  simp only [A115312, Nat.add_sub_cancel]

end A115312

/-! ## A115312.P10784990736726284158

`gcd(A000045(n+1)+1, 1-A000032(n+1))`
-/

namespace A115312.P10784990736726284158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (n + 1) + 1) (1 - A000032 (n + 1))

end

end A115312.P10784990736726284158

namespace A115312

/-- `gcd(A000045(n+1)+1, 1-A000032(n+1))` -/
def P10784990736726284158.Spec : Prop :=
  ∀ n, (P10784990736726284158.a n : ℤ) = A115312 (n + 1)

end A115312

/-! ## A115312.P4958714433601680562

`gcd(record[A118658(n)], A001610(n))`
-/

namespace A115312.P4958714433601680562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A001610 n)

end

end A115312.P4958714433601680562

namespace A115312

/-- `gcd(record[A118658(n)], A001610(n))` -/
def P4958714433601680562.Spec : Prop :=
  ∀ n, (P4958714433601680562.a n : ℤ) = A115312 (n + 1)

end A115312

/-! ## A115312.P13208234453963345432

`gcd(A001611(A000027(n+1)), A001611(n+4))`
-/

namespace A115312.P13208234453963345432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001611 (A000027 (n + 1)).toNat) (A001611 (n + 4))

end

end A115312.P13208234453963345432

namespace A115312

/-- `gcd(A001611(A000027(n+1)), A001611(n+4))` -/
def P13208234453963345432.Spec : Prop :=
  ∀ n, (P13208234453963345432.a n : ℤ) = A115312 (n + 1)

end A115312

/-! ## A115312.P2194812269684087686

`gcd(2*A048577(n), A020706(n))`
-/

namespace A115312.P2194812269684087686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A048577 n) (A020706 n)

end

end A115312.P2194812269684087686

namespace A115312

/-- `gcd(2*A048577(n), A020706(n))` -/
def P2194812269684087686.Spec : Prop :=
  ∀ n, (P2194812269684087686.a n : ℤ) = A115312 (n + 1)

end A115312

/-! ## A115312.P14642034247634236365

`gcd(2*A226271(n+1), A226271(n+2))`
-/

namespace A115312.P14642034247634236365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A226271 (n + 1)) (A226271 (n + 2))

end

end A115312.P14642034247634236365

namespace A115312

/-- `gcd(2*A226271(n+1), A226271(n+2))` -/
def P14642034247634236365.Spec : Prop :=
  ∀ n, (P14642034247634236365.a n : ℤ) = A115312 (n + 1)

end A115312

/-! ## A115312.P6532732057123536985

`gcd(A007492(n+1), A362067(n))`
-/

namespace A115312.P6532732057123536985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007492 (n + 1)) (A362067 n)

end

end A115312.P6532732057123536985

namespace A115312

/-- `gcd(A007492(n+1), A362067(n))` -/
def P6532732057123536985.Spec : Prop :=
  ∀ n, (P6532732057123536985.a n : ℤ) = A115312 (n + 1)

end A115312

/-! ## A115312.P6469812353444438736

`gcd(Δ[A002062(n+2)], A001611(2*(n+1)))`
-/

namespace A115312.P6469812353444438736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A001611 (2 * (n + 1)))

end

end A115312.P6469812353444438736

namespace A115312

/-- `gcd(Δ[A002062(n+2)], A001611(2*(n+1)))` -/
def P6469812353444438736.Spec : Prop :=
  ∀ n, (P6469812353444438736.a n : ℤ) = A115312 (n + 1)

end A115312

/-!
# A115313: a(n) = gcd(Lucas(n)+1, Fibonacci(n)+1).

The programs for A115313, the canonical program `A115313.P8262768449345497986` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115313 has offset 1).

The definition of A115313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115313.P8262768449345497986

`gcd(A000045(n+1)+1, 2*A000045(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115313

/-- `gcd(A000045(n+1)+1, 2*A000045(n))` -/
def P8262768449345497986.Spec : Prop :=
  ∀ n, (P8262768449345497986.a n : ℤ) = A115313 (n + 1)

theorem P8262768449345497986.correct : P8262768449345497986.Spec := by
  intro n
  simp only [A115313, Nat.add_sub_cancel]

end A115313

/-! ## A115313.P10566003344604443926

`gcd(record[A226649(n)], A001612(n+1))`
-/

namespace A115313.P10566003344604443926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A001612 (n + 1))

end

end A115313.P10566003344604443926

namespace A115313

/-- `gcd(record[A226649(n)], A001612(n+1))` -/
def P10566003344604443926.Spec : Prop :=
  ∀ n, (P10566003344604443926.a n : ℤ) = A115313 (n + 1)

end A115313

/-! ## A115313.P16226459418612208159

`gcd(A000032(n+1)+1, A006355(n+1))`
-/

namespace A115313.P16226459418612208159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000032 (n + 1) + 1) (A006355 (n + 1))

end

end A115313.P16226459418612208159

namespace A115313

/-- `gcd(A000032(n+1)+1, A006355(n+1))` -/
def P16226459418612208159.Spec : Prop :=
  ∀ n, (P16226459418612208159.a n : ℤ) = A115313 (n + 1)

end A115313

/-! ## A115313.P2001186500827886616

`gcd(Δ[A001595(n)], A001611(n+1))`
-/

namespace A115313.P2001186500827886616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A001611 (n + 1))

end

end A115313.P2001186500827886616

namespace A115313

/-- `gcd(Δ[A001595(n)], A001611(n+1))` -/
def P2001186500827886616.Spec : Prop :=
  ∀ n, (P2001186500827886616.a n : ℤ) = A115313 (n + 1)

end A115313

/-! ## A115313.P9366510058427930494

`gcd(Δ[A002062(n+2)], A157726(n+4))`
-/

namespace A115313.P9366510058427930494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A157726 (n + 4))

end

end A115313.P9366510058427930494

namespace A115313

/-- `gcd(Δ[A002062(n+2)], A157726(n+4))` -/
def P9366510058427930494.Spec : Prop :=
  ∀ n, (P9366510058427930494.a n : ℤ) = A115313 (n + 1)

end A115313

/-! ## A115313.P5305103154839060017

`gcd(A022107(n)+1, A022356(n))`
-/

namespace A115313.P5305103154839060017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022107 n + 1) (A022356 n)

end

end A115313.P5305103154839060017

namespace A115313

/-- `gcd(A022107(n)+1, A022356(n))` -/
def P5305103154839060017.Spec : Prop :=
  ∀ n, (P5305103154839060017.a n : ℤ) = A115313 (n + 1)

end A115313

/-! ## A115313.P10795328218487304758

`gcd(A000071(n+1)+2, A140833(n)²)`
-/

namespace A115313.P10795328218487304758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000071 (n + 1) + 2) (A140833 n ^ 2)

end

end A115313.P10795328218487304758

namespace A115313

/-- `gcd(A000071(n+1)+2, A140833(n)²)` -/
def P10795328218487304758.Spec : Prop :=
  ∀ n, (P10795328218487304758.a n : ℤ) = A115313 (n + 1)

end A115313

/-! ## A115313.P354833430767861241

`gcd(A001611(2*n)*A001611(n+1), A000071(2*(n+1)))`
-/

namespace A115313.P354833430767861241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001611 (2 * n) * A001611 (n + 1)) (A000071 (2 * (n + 1)))

end

end A115313.P354833430767861241

namespace A115313

/-- `gcd(A001611(2*n)*A001611(n+1), A000071(2*(n+1)))` -/
def P354833430767861241.Spec : Prop :=
  ∀ n, (P354833430767861241.a n : ℤ) = A115313 (n + 1)

end A115313

/-!
# A115314: a(n) = gcd(Lucas(n)+1, Fibonacci(n)-1).

The programs for A115314, the canonical program `A115314.P6993412872261958679` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115314 has offset 1).

The definition of A115314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115314.P6993412872261958679

`gcd(A140833(n)+2, A000071(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115314

/-- `gcd(A140833(n)+2, A000071(n+1))` -/
def P6993412872261958679.Spec : Prop :=
  ∀ n, (P6993412872261958679.a n : ℤ) = A115314 (n + 1)

theorem P6993412872261958679.correct : P6993412872261958679.Spec := by
  intro n
  simp only [A115314, Nat.add_sub_cancel]

end A115314

/-! ## A115314.P5917059555187559242

`gcd(A001612(n+1), A226649(2*n))`
-/

namespace A115314.P5917059555187559242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001612 (n + 1)) (A226649 (2 * n))

end

end A115314.P5917059555187559242

namespace A115314

/-- `gcd(A001612(n+1), A226649(2*n))` -/
def P5917059555187559242.Spec : Prop :=
  ∀ n, (P5917059555187559242.a n : ℤ) = A115314 (n + 1)

end A115314

/-! ## A115314.P10424910521698932209

`gcd(record[A118658(n)], A000071(n+1))`
-/

namespace A115314.P10424910521698932209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000071 (n + 1))

end

end A115314.P10424910521698932209

namespace A115314

/-- `gcd(record[A118658(n)], A000071(n+1))` -/
def P10424910521698932209.Spec : Prop :=
  ∀ n, (P10424910521698932209.a n : ℤ) = A115314 (n + 1)

end A115314

/-! ## A115314.P15052719749725469697

`gcd(Δ[A065220(n+2)], A000071(n+4))`
-/

namespace A115314.P15052719749725469697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000071 (n + 4))

end

end A115314.P15052719749725469697

namespace A115314

/-- `gcd(Δ[A065220(n+2)], A000071(n+4))` -/
def P15052719749725469697.Spec : Prop :=
  ∀ n, (P15052719749725469697.a n : ℤ) = A115314 (n + 1)

end A115314

/-! ## A115314.P6807555781985638283

`gcd(A000045(n+1)-1, 2*A000045(n+2))`
-/

namespace A115314.P6807555781985638283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (n + 1) - 1) (2 * A000045 (n + 2))

end

end A115314.P6807555781985638283

namespace A115314

/-- `gcd(A000045(n+1)-1, 2*A000045(n+2))` -/
def P6807555781985638283.Spec : Prop :=
  ∀ n, (P6807555781985638283.a n : ℤ) = A115314 (n + 1)

end A115314

/-!
# A115315: a(n) = floor(L^3*{phi^(3*n-2), phi^(3*n-1), phi^(3*n-2) + phi^(3*n-1)}) where L = (1 + sqrt(5))/(2*sqrt(5)) and phi = (1 + sqrt(5))/2.

The programs for A115315, the canonical program `A115315.P7389026332501291659` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115315 has offset 0).

The definition of A115315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115315.P7389026332501291659

`floor(A052952(n+2)/5)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115315

/-- `floor(A052952(n+2)/5)` -/
def P7389026332501291659.Spec : Prop :=
  ∀ n, P7389026332501291659.a n = A115315 n

theorem P7389026332501291659.correct : P7389026332501291659.Spec := by
  intro n
  simp only [A115315]

end A115315

/-! ## A115315.P12477375309622598866

`floor(A062114(n+4)/10)`
-/

namespace A115315.P12477375309622598866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062114 (n + 4) : ℚ) / 10⌋

end

end A115315.P12477375309622598866

namespace A115315

/-- `floor(A062114(n+4)/10)` -/
def P12477375309622598866.Spec : Prop :=
  ∀ n, P12477375309622598866.a n = A115315 n

end A115315

/-! ## A115315.P11589692571803042215

`floor(A066983(n+6)/10)`
-/

namespace A115315.P11589692571803042215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066983 (n + 6) : ℚ) / 10⌋

end

end A115315.P11589692571803042215

namespace A115315

/-- `floor(A066983(n+6)/10)` -/
def P11589692571803042215.Spec : Prop :=
  ∀ n, P11589692571803042215.a n = A115315 n

end A115315

/-! ## A115315.P9080705576726826511

`floor(A097133(n+4)/15)`
-/

namespace A115315.P9080705576726826511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097133 (n + 4) : ℚ) / 15⌋

end

end A115315.P9080705576726826511

namespace A115315

/-- `floor(A097133(n+4)/15)` -/
def P9080705576726826511.Spec : Prop :=
  ∀ n, P9080705576726826511.a n = A115315 n

end A115315

/-! ## A115315.P7736701775598893423

`floor(A001657(n+11)/A001656(n+14))`
-/

namespace A115315.P7736701775598893423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001657 (n + 11) : ℚ) / (A001656 (n + 14) : ℚ)⌋

end

end A115315.P7736701775598893423

namespace A115315

/-- `floor(A001657(n+11)/A001656(n+14))` -/
def P7736701775598893423.Spec : Prop :=
  ∀ n, P7736701775598893423.a n = A115315 n

end A115315

/-!
# A115316: Lexicographically earliest permutation of the natural numbers such that each prime number is followed by exactly two composite numbers.

The programs for A115316, there is no canonical definition to state claims against.
-/

/-! ## A115316.P3807478049059143145

`A073846(A265667(n)+1)`
-/

namespace A115316.P3807478049059143145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A265667 n + 1).toNat

end

end A115316.P3807478049059143145

/-! ## A115316.P16906798399065130929

`A073846(A029579(record[A082233(n)]))`
-/

namespace A115316.P16906798399065130929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A029579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A115316.P16906798399065130929

/-! ## A115316.P150941413128751089

`A073846(A029579(record[A168052(n)]))`
-/

namespace A115316.P150941413128751089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A029579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A115316.P150941413128751089

/-! ## A115316.P7064651259636359650

`A073846(A168056(n)+1-A005131(n))`
-/

namespace A115316.P7064651259636359650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A168056 n + (1 - A005131 n)).toNat

end

end A115316.P7064651259636359650

/-! ## A115316.P16011254770089076759

`A073846(1-(A005131(n)-A168056(n)))`
-/

namespace A115316.P16011254770089076759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (1 - (A005131 n - A168056 n)).toNat

end

end A115316.P16011254770089076759

/-! ## A115316.P9352165861063052195

`A073846((A057078(n)²+1)*A004396(n)+1)`
-/

namespace A115316.P9352165861063052195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 ((A057078 n ^ 2 + 1) * A004396 n + 1).toNat

end

end A115316.P9352165861063052195

/-! ## A115316.P6287213171279935916

`A073846(A004396(n)+A004396(n)*A141571(n+1)+1)`
-/

namespace A115316.P6287213171279935916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A004396 n + A004396 n * A141571 (n + 1) + 1).toNat

end

end A115316.P6287213171279935916

/-! ## A115316.P13339255299673212900

`A115317(A115318(n+1))`
-/

namespace A115316.P13339255299673212900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115317 (A115318 (n + 1)).toNat

end

end A115316.P13339255299673212900

/-! ## A115316.P15803732191154370825

`A115318(A115317(abs(xor(n, -1))))`
-/

namespace A115316.P15803732191154370825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115318 (A115317 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A115316.P15803732191154370825

/-!
# A115317: a(n) = A115316(A115316(n)).

The programs for A115317, there is no canonical definition to state claims against.
-/

/-! ## A115317.P13334084253367120205

`A115316(A115316(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115317.P13334084253367120205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115316 (A115316 (n + 1)).toNat

end

end A115317.P13334084253367120205

/-!
# A115318: Inverse of A115316.

The programs for A115318, there is no canonical definition to state claims against.
-/

/-! ## A115318.P8094924169080209652

`A115316(A115319(n+1))`
-/

namespace A115318.P8094924169080209652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115316 (A115319 (n + 1)).toNat

end

end A115318.P8094924169080209652

/-!
# A115319: a(n) = A115318(A115318(n)).

The programs for A115319, there is no canonical definition to state claims against.
-/

/-! ## A115319.P12937976069550123968

`A115318(A115318(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115319.P12937976069550123968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115318 (A115318 (n + 1)).toNat

end

end A115319.P12937976069550123968

/-!
# A115320: Triangle read by rows. Let L(m,n) = largest integer such that if each symbol in an m X n array appears at most L(m,n) times, then the array must have a transversal. Values are shown in this order: L(m,n), n>=2, m=n, n-1, n-2, ...,2.

The programs for A115320, there is no canonical definition to state claims against.
-/

/-! ## A115320.P3241793963500127677

`A115321(∑[char[∑[n]]]²+1-n)`
-/

namespace A115320.P3241793963500127677
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115321 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 - n)

end

end A115320.P3241793963500127677

/-!
# A115321: Triangle read by rows. Let L(m,n) = largest integer such that if each symbol in an m X n array appears at most L(m,n) times, then the array must have a transversal. Values are shown in this order: L(m,n), n>=2, m=2, 3, ..., n-1, n.

The programs for A115321, there is no canonical definition to state claims against.
-/

/-! ## A115321.P2049408093873293051

`A115320(∑[char[∑[n]]]²-n+1)`
-/

namespace A115321.P2049408093873293051
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115320 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A115321.P2049408093873293051

/-!
# A115322: Triangle of coefficients of Pell polynomials.

The programs for A115322, the canonical program `A115322.P1474604407657052441` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115322 has offset 1).

The definition of A115322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115322.P1474604407657052441

`abs(A053117(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A115322

/-- `abs(A053117(n))` -/
def P1474604407657052441.Spec : Prop :=
  ∀ n, P1474604407657052441.a n = A115322 (n + 1)

theorem P1474604407657052441.correct : P1474604407657052441.Spec := by
  intro n
  simp only [A115322, Nat.add_sub_cancel]

end A115322

/-! ## A115322.P4497233748814244350

`A053117(n)*A117568(n)`
-/

namespace A115322.P4497233748814244350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 n * A117568 n

end

end A115322.P4497233748814244350

namespace A115322

/-- `A053117(n)*A117568(n)` -/
def P4497233748814244350.Spec : Prop :=
  ∀ n, P4497233748814244350.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P15858418591567512047

`A046854(n)*A130125(n)`
-/

namespace A115322.P15858418591567512047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A130125 n

end

end A115322.P15858418591567512047

namespace A115322

/-- `A046854(n)*A130125(n)` -/
def P15858418591567512047.Spec : Prop :=
  ∀ n, P15858418591567512047.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P3743037755215743465

`A059268(n)*A168561(n)`
-/

namespace A115322.P3743037755215743465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A168561 n

end

end A115322.P3743037755215743465

namespace A115322

/-- `A059268(n)*A168561(n)` -/
def P3743037755215743465.Spec : Prop :=
  ∀ n, P3743037755215743465.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P11516902568147865127

`A130125(n)*A134513(n)`
-/

namespace A115322.P11516902568147865127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n * A134513 n

end

end A115322.P11516902568147865127

namespace A115322

/-- `A130125(n)*A134513(n)` -/
def P11516902568147865127.Spec : Prop :=
  ∀ n, P11516902568147865127.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P15838635476283600933

`A130125(n)*A168561(n)`
-/

namespace A115322.P15838635476283600933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n * A168561 n

end

end A115322.P15838635476283600933

namespace A115322

/-- `A130125(n)*A168561(n)` -/
def P15838635476283600933.Spec : Prop :=
  ∀ n, P15838635476283600933.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P7917354778360520114

`A053117(n)*A369736(n)`
-/

namespace A115322.P7917354778360520114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 n * A369736 n

end

end A115322.P7917354778360520114

namespace A115322

/-- `A053117(n)*A369736(n)` -/
def P7917354778360520114.Spec : Prop :=
  ∀ n, P7917354778360520114.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P15362969270956550957

`gcd(A000038(n), A053117(n))`
-/

namespace A115322.P15362969270956550957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A053117 n)

end

end A115322.P15362969270956550957

namespace A115322

/-- `gcd(A000038(n), A053117(n))` -/
def P15362969270956550957.Spec : Prop :=
  ∀ n, (P15362969270956550957.a n : ℤ) = A115322 (n + 1)

end A115322

/-! ## A115322.P230823796953109404

`lcm(A049310(n), A053117(n))`
-/

namespace A115322.P230823796953109404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049310 n) (A053117 n)

end

end A115322.P230823796953109404

namespace A115322

/-- `lcm(A049310(n), A053117(n))` -/
def P230823796953109404.Spec : Prop :=
  ∀ n, (P230823796953109404.a n : ℤ) = A115322 (n + 1)

end A115322

/-! ## A115322.P7807343873719631992

`abs(A049310(n)*A059268(n))`
-/

namespace A115322.P7807343873719631992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049310 n * A059268 n|

end

end A115322.P7807343873719631992

namespace A115322

/-- `abs(A049310(n)*A059268(n))` -/
def P7807343873719631992.Spec : Prop :=
  ∀ n, P7807343873719631992.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P2044510925345071791

`A053117(n)*A130194(n+1)`
-/

namespace A115322.P2044510925345071791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 n * A130194 (n + 1)

end

end A115322.P2044510925345071791

namespace A115322

/-- `A053117(n)*A130194(n+1)` -/
def P2044510925345071791.Spec : Prop :=
  ∀ n, P2044510925345071791.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P14733313105984027843

`A130125(n)*A134505(n+1)`
-/

namespace A115322.P14733313105984027843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n * A134505 (n + 1)

end

end A115322.P14733313105984027843

namespace A115322

/-- `A130125(n)*A134505(n+1)` -/
def P14733313105984027843.Spec : Prop :=
  ∀ n, P14733313105984027843.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P15426032573693981229

`abs(A053118(A061579(n)))`
-/

namespace A115322.P15426032573693981229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053118 (A061579 n).toNat|

end

end A115322.P15426032573693981229

namespace A115322

/-- `abs(A053118(A061579(n)))` -/
def P15426032573693981229.Spec : Prop :=
  ∀ n, P15426032573693981229.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P17411351321641409773

`A053117(n)²^(1/A020639(A000010(n+1)))`
-/

namespace A115322.P17411351321641409773
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053117 n ^ 2 : ℝ) ^ (1 / (A020639 (A000010 (n + 1)).toNat : ℚ) : ℝ)

end

end A115322.P17411351321641409773

namespace A115322

/-- `A053117(n)²^(1/A020639(A000010(n+1)))` -/
def P17411351321641409773.Spec : Prop :=
  ∀ n, P17411351321641409773.a n = (A115322 (n + 1) : ℝ)

end A115322

/-! ## A115322.P4053755946705861042

`A128174(n+1)*A157751(n*A128174(n+1))`
-/

namespace A115322.P4053755946705861042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A157751 ((n : ℤ) * A128174 (n + 1)).toNat

end

end A115322.P4053755946705861042

namespace A115322

/-- `A128174(n+1)*A157751(n*A128174(n+1))` -/
def P4053755946705861042.Spec : Prop :=
  ∀ n, P4053755946705861042.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P2466948541268901575

`lcm(A130125(n), A157751(n))`
-/

namespace A115322.P2466948541268901575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130125 n) (A157751 n)

end

end A115322.P2466948541268901575

namespace A115322

/-- `lcm(A130125(n), A157751(n))` -/
def P2466948541268901575.Spec : Prop :=
  ∀ n, (P2466948541268901575.a n : ℤ) = A115322 (n + 1)

end A115322

/-! ## A115322.P9484386961575829980

`A369736(n)²*A157751(n)`
-/

namespace A115322.P9484386961575829980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369736 n ^ 2 * A157751 n

end

end A115322.P9484386961575829980

namespace A115322

/-- `A369736(n)²*A157751(n)` -/
def P9484386961575829980.Spec : Prop :=
  ∀ n, P9484386961575829980.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P8556027649839762998

`A053117(n)²/A157751(n)`
-/

namespace A115322.P8556027649839762998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053117 n ^ 2 : ℚ) / (A157751 n : ℚ)

end

end A115322.P8556027649839762998

namespace A115322

/-- `A053117(n)²/A157751(n)` -/
def P8556027649839762998.Spec : Prop :=
  ∀ n, P8556027649839762998.a n = (A115322 (n + 1) : ℚ)

end A115322

/-! ## A115322.P4229655583432599638

`A128174(n+1)*A157751(n)`
-/

namespace A115322.P4229655583432599638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A157751 n

end

end A115322.P4229655583432599638

namespace A115322

/-- `A128174(n+1)*A157751(n)` -/
def P4229655583432599638.Spec : Prop :=
  ∀ n, P4229655583432599638.a n = A115322 (n + 1)

end A115322

/-! ## A115322.P7040704521236790489

`A157751(n)%A225750(n)`
-/

namespace A115322.P7040704521236790489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157751 n) (A225750 n)

end

end A115322.P7040704521236790489

namespace A115322

/-- `A157751(n)%A225750(n)` -/
def P7040704521236790489.Spec : Prop :=
  ∀ n, P7040704521236790489.a n = A115322 (n + 1)

end A115322

/-!
# A115324: Central terms of the rows of triangle A115323.

The programs for A115324, there is no canonical definition to state claims against.
-/

/-! ## A115324.P8276403280308942690

`A115323(∑[2*n])`
-/

namespace A115324.P8276403280308942690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115324.P8276403280308942690

/-! ## A115324.P5438174877847720666

`A115323(A002378(n))%374`
-/

namespace A115324.P5438174877847720666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115323 (A002378 n).toNat) 374

end

end A115324.P5438174877847720666

/-! ## A115324.P5907594533981302150

`A008647(2*A055729(n+1))`
-/

namespace A115324.P5907594533981302150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (2 * A055729 (n + 1)).toNat

end

end A115324.P5907594533981302150

/-! ## A115324.P989772842752404773

`A115323(abs(n*xor(n, -1)))%A091634(n+1)`
-/

namespace A115324.P989772842752404773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115323 |(n : ℤ) * Int.xor (n : ℤ) (-1)|.toNat) (A091634 (n + 1))

end

end A115324.P989772842752404773

/-! ## A115324.P4072224518776237904

`A115323(-n*xor(n, -1))%A091634(n+1)`
-/

namespace A115324.P4072224518776237904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115323 (-((n : ℤ) * Int.xor (n : ℤ) (-1))).toNat) (A091634 (n + 1))

end

end A115324.P4072224518776237904

/-!
# A115325: Rightmost diagonal of triangle A115323.

The programs for A115325, there is no canonical definition to state claims against.
-/

/-! ## A115325.P10597586059940401445

`A115323(n*(n+2))`
-/

namespace A115325.P10597586059940401445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115323 (n * (n + 2))

end

end A115325.P10597586059940401445

/-! ## A115325.P9144186066516760939

`A226762(A052541(n))`
-/

namespace A115325.P9144186066516760939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A052541 n).toNat

end

end A115325.P9144186066516760939

/-! ## A115325.P9379892171133644541

`A115323(A002378(n)+n)%374`
-/

namespace A115325.P9379892171133644541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115323 (A002378 n + (n : ℤ)).toNat) 374

end

end A115325.P9379892171133644541

/-! ## A115325.P804647965980121301

`A194640(A189912(n)+floor(n/2))`
-/

namespace A115325.P804647965980121301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A189912 n + ⌊(n : ℚ) / 2⌋).toNat

end

end A115325.P804647965980121301

/-!
# A115326: E.g.f.: exp(x/(1-2*x))/sqrt(1-4*x^2).

The programs for A115326, there is no canonical definition to state claims against.
-/

/-! ## A115326.P10234494015636799386

`A047974(n)²`
-/

namespace A115326.P10234494015636799386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047974 n ^ 2

end

end A115326.P10234494015636799386

/-! ## A115326.P15676130156886915406

`A122832(∑[n])²`
-/

namespace A115326.P15676130156886915406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122832 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A115326.P15676130156886915406

/-! ## A115326.P17761991313830316901

`A293669(∑[n+2]-1)²`
-/

namespace A115326.P17761991313830316901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A115326.P17761991313830316901

/-! ## A115326.P1694457025891266184

`A361277(∑[n+1]+n)²`
-/

namespace A115326.P1694457025891266184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A115326.P1694457025891266184

/-! ## A115326.P2782069528320600059

`(A291632(n+1)/(n+1))²`
-/

namespace A115326.P2782069528320600059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A291632 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A115326.P2782069528320600059

/-! ## A115326.P10418747895044836370

`or(1, A261764(A133263(n))²)`
-/

namespace A115326.P10418747895044836370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261764 (A133263 n).toNat ^ 2)

end

end A115326.P10418747895044836370

/-! ## A115326.P5222368940541023215

`(A018191(n)-A291632(n))²`
-/

namespace A115326.P5222368940541023215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018191 n - A291632 n) ^ 2

end

end A115326.P5222368940541023215

/-! ## A115326.P8470524954574793100

`A047974(n)^(2%A080036(n))`
-/

namespace A115326.P8470524954574793100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047974 n : ℚ) ^ (Int.tmod 2 (A080036 n) : ℤ)

end

end A115326.P8470524954574793100

/-! ## A115326.P11826703095965922344

`A047974(n)^gcd(2, A000085(n))`
-/

namespace A115326.P11826703095965922344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047974 n ^ Int.gcd 2 (A000085 n)

end

end A115326.P11826703095965922344

/-! ## A115326.P6294556750626020322

`A047974(n)^A020639(∑{d}[∏{p}[n+1, #], (n+1)/#])`
-/

namespace A115326.P6294556750626020322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047974 n : ℚ) ^ (A020639 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat : ℤ)

end

end A115326.P6294556750626020322

/-!
# A115327: E.g.f.: exp(x + 3/2*x^2).

The programs for A115327, the canonical program `A115327.P9233968596716649983` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115327 has offset 0).

The definition of A115327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115327.P9233968596716649983

`a(n-1)+3*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115327

/-- `a(n-1)+3*(n-1)*a(n-2)` -/
def P9233968596716649983.Spec : Prop :=
  ∀ n, P9233968596716649983.a n = A115327 n

theorem P9233968596716649983.correct : P9233968596716649983.Spec := by
  intro n
  simp only [A115327]

end A115327

/-! ## A115327.P16499447132920641776

`∏[3*(n-1)/a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A115327.P16499447132920641776
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * (((n : ℤ) - 1 : ℚ) / f1 (n - 1)) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A115327.P16499447132920641776

namespace A115327

/-- `∏[3*(n-1)/a(n-1)+1]` -/
def P16499447132920641776.Spec : Prop :=
  ∀ n, P16499447132920641776.a n = (A115327 n : ℚ)

end A115327

/-! ## A115327.P1154478995044714363

`a(n-1)-3*(a(n-2)-n*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A115327.P1154478995044714363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 3 * (a (n - 2) - (n : ℤ) * a (n - 2))

end

end A115327.P1154478995044714363

namespace A115327

/-- `a(n-1)-3*(a(n-2)-n*a(n-2))` -/
def P1154478995044714363.Spec : Prop :=
  ∀ n, P1154478995044714363.a n = A115327 n

end A115327

/-! ## A115327.P11461571375515644057

`sqrt(A115328(n))`
-/

namespace A115327.P11461571375515644057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A115328 n : ℝ)

end

end A115327.P11461571375515644057

namespace A115327

/-- `sqrt(A115328(n))` -/
def P11461571375515644057.Spec : Prop :=
  ∀ n, P11461571375515644057.a n = (A115327 n : ℝ)

end A115327

/-! ## A115327.P13288716377427372101

`root(A115328(n), ratio[A000079(n)])`
-/

namespace A115327.P13288716377427372101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115328 n : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A115327.P13288716377427372101

namespace A115327

/-- `root(A115328(n), ratio[A000079(n)])` -/
def P13288716377427372101.Spec : Prop :=
  ∀ n, P13288716377427372101.a n = (A115327 n : ℝ)

end A115327

/-! ## A115327.P14458932016832478310

`root(A115328(n), A036453(n+1))`
-/

namespace A115327.P14458932016832478310
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115328 n : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))

end

end A115327.P14458932016832478310

namespace A115327

/-- `root(A115328(n), A036453(n+1))` -/
def P14458932016832478310.Spec : Prop :=
  ∀ n, P14458932016832478310.a n = (A115327 n : ℝ)

end A115327

/-! ## A115327.P15316361345734098663

`root(A115328(n), A001316(A001316(n)))`
-/

namespace A115327.P15316361345734098663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115328 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A115327.P15316361345734098663

namespace A115327

/-- `root(A115328(n), A001316(A001316(n)))` -/
def P15316361345734098663.Spec : Prop :=
  ∀ n, P15316361345734098663.a n = (A115327 n : ℝ)

end A115327

/-!
# A115328: E.g.f: exp(x/(1-3*x))/sqrt(1-9*x^2).

The programs for A115328, there is no canonical definition to state claims against.
-/

/-! ## A115328.P4451188250890568362

`A115327(n)²`
-/

namespace A115328.P4451188250890568362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115327 n ^ 2

end

end A115328.P4451188250890568362

/-! ## A115328.P15103290043785833905

`A115327(n)^ratio[A000079(n)]`
-/

namespace A115328.P15103290043785833905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115327 n : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A115328.P15103290043785833905

/-! ## A115328.P10071922513157896179

`A115327(n)^A036453(n+1)`
-/

namespace A115328.P10071922513157896179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115327 n : ℚ) ^ (A036453 (n + 1) : ℤ)

end

end A115328.P10071922513157896179

/-! ## A115328.P7448089249596372644

`A115327(n)^(1-A057428(n))`
-/

namespace A115328.P7448089249596372644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115327 n : ℚ) ^ (1 - A057428 n : ℤ)

end

end A115328.P7448089249596372644

/-! ## A115328.P9068675282409600529

`A115327(n)^gcd(2, A000085(n))`
-/

namespace A115328.P9068675282409600529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115327 n ^ Int.gcd 2 (A000085 n)

end

end A115328.P9068675282409600529

/-! ## A115328.P15776592948922530265

`A115327(n)^A006530(A001316(n))`
-/

namespace A115328.P15776592948922530265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115327 n : ℚ) ^ (A006530 (A001316 n).toNat : ℤ)

end

end A115328.P15776592948922530265

/-! ## A115328.P1357422389611760259

`A115327(n)^A020639(A315904(n))`
-/

namespace A115328.P1357422389611760259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115327 n : ℚ) ^ (A020639 (A315904 n).toNat : ℤ)

end

end A115328.P1357422389611760259

/-! ## A115328.P10435742692227568901

`A115327(n)^A001222(A001748(n+1))`
-/

namespace A115328.P10435742692227568901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115327 n : ℚ) ^ (A001222 (A001748 (n + 1)).toNat : ℤ)

end

end A115328.P10435742692227568901

/-! ## A115328.P12912371135424625705

`A115327(n)^A034444(A006530(n+1))`
-/

namespace A115328.P12912371135424625705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115327 n : ℚ) ^ (A034444 (A006530 (n + 1)).toNat : ℤ)

end

end A115328.P12912371135424625705

/-! ## A115328.P11298562216625551518

`A115327(n)^A000005(A321343(n+1))`
-/

namespace A115328.P11298562216625551518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115327 n : ℚ) ^ (A000005 (A321343 (n + 1)).toNat : ℤ)

end

end A115328.P11298562216625551518

/-!
# A115329: Expansion of e.g.f.: exp(x + 2*x^2).

The programs for A115329, the canonical program `A115329.P11536107667240988809` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115329 has offset 0).

The definition of A115329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115329.P11536107667240988809

`a(n-1)+4*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115329

/-- `a(n-1)+4*(n-1)*a(n-2)` -/
def P11536107667240988809.Spec : Prop :=
  ∀ n, P11536107667240988809.a n = A115329 n

theorem P11536107667240988809.correct : P11536107667240988809.Spec := by
  intro n
  simp only [A115329]

end A115329

/-! ## A115329.P3678143819648889691

`a(n-1)-4*(a(n-2)-n*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A115329.P3678143819648889691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 4 * (a (n - 2) - (n : ℤ) * a (n - 2))

end

end A115329.P3678143819648889691

namespace A115329

/-- `a(n-1)-4*(a(n-2)-n*a(n-2))` -/
def P3678143819648889691.Spec : Prop :=
  ∀ n, P3678143819648889691.a n = A115329 n

end A115329

/-! ## A115329.P16778965756582452955

`A293718(∑[n+2]-1)`
-/

namespace A115329.P16778965756582452955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293718 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A115329.P16778965756582452955

namespace A115329

/-- `A293718(∑[n+2]-1)` -/
def P16778965756582452955.Spec : Prop :=
  ∀ n, P16778965756582452955.a n = A115329 n

end A115329

/-! ## A115329.P11348256440216514424

`or(1, A293718(A034856(n+1)))`
-/

namespace A115329.P11348256440216514424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293718 (A034856 (n + 1)).toNat)

end

end A115329.P11348256440216514424

namespace A115329

/-- `or(1, A293718(A034856(n+1)))` -/
def P11348256440216514424.Spec : Prop :=
  ∀ n, P11348256440216514424.a n = A115329 n

end A115329

/-! ## A115329.P16921735158155396340

`gcd(A000038(n), A293718(A034856(n+1)))`
-/

namespace A115329.P16921735158155396340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293718 (A034856 (n + 1)).toNat)

end

end A115329.P16921735158155396340

namespace A115329

/-- `gcd(A000038(n), A293718(A034856(n+1)))` -/
def P16921735158155396340.Spec : Prop :=
  ∀ n, (P16921735158155396340.a n : ℤ) = A115329 n

end A115329

/-! ## A115329.P12625546019659156288

`sqrt(A115330(n))`
-/

namespace A115329.P12625546019659156288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A115330 n : ℝ)

end

end A115329.P12625546019659156288

namespace A115329

/-- `sqrt(A115330(n))` -/
def P12625546019659156288.Spec : Prop :=
  ∀ n, P12625546019659156288.a n = (A115329 n : ℝ)

end A115329

/-!
# A115330: E.g.f: exp(x/(1-4*x))/sqrt(1-16*x^2).

The programs for A115330, there is no canonical definition to state claims against.
-/

/-! ## A115330.P791419848384101443

`A115329(n)²`
-/

namespace A115330.P791419848384101443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115329 n ^ 2

end

end A115330.P791419848384101443

/-! ## A115330.P5040827978263179952

`A293718(∑[n+2]-1)²`
-/

namespace A115330.P5040827978263179952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293718 (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A115330.P5040827978263179952

/-! ## A115330.P9271819625226890624

`A115329(A023444(n+2))^2`
-/

namespace A115330.P9271819625226890624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115329 (A023444 (n + 2)).toNat ^ 2

end

end A115330.P9271819625226890624

/-! ## A115330.P14833768101715467671

`A115329(n)^A020639(A017113(n))`
-/

namespace A115330.P14833768101715467671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115329 n : ℚ) ^ (A020639 (A017113 n).toNat : ℤ)

end

end A115330.P14833768101715467671

/-! ## A115330.P6185795084665240438

`A115329(A023444(n+2))*A115329(n)`
-/

namespace A115330.P6185795084665240438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115329 (A023444 (n + 2)).toNat * A115329 n

end

end A115330.P6185795084665240438

/-! ## A115330.P17082128107233480860

`A115329(n)^A020639(A001223(n+1))`
-/

namespace A115330.P17082128107233480860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115329 n : ℚ) ^ (A020639 (A001223 (n + 1)).toNat : ℤ)

end

end A115330.P17082128107233480860

/-! ## A115330.P13163554587233197323

`A115329(n)^A020639(A008864(n+1))`
-/

namespace A115330.P13163554587233197323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115329 n : ℚ) ^ (A020639 (A008864 (n + 1)).toNat : ℤ)

end

end A115330.P13163554587233197323

/-! ## A115330.P13369485981178863975

`A115329(n)^A000005(A321343(n+1))`
-/

namespace A115330.P13369485981178863975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115329 n : ℚ) ^ (A000005 (A321343 (n + 1)).toNat : ℤ)

end

end A115330.P13369485981178863975

/-! ## A115330.P6444550191128874094

`A115329(n)^A115312(A115312(2*(n+2)))`
-/

namespace A115330.P6444550191128874094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115329 n : ℚ) ^ (A115312 (A115312 (2 * (n + 2))).toNat : ℤ)

end

end A115330.P6444550191128874094

/-!
# A115331: E.g.f.: exp(x+5/2*x^2).

The programs for A115331, there is no canonical definition to state claims against.
-/

/-! ## A115331.P16504760763563868370

`a(n-1)+2*(n-1)*a(n-2)+3*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A115331.P16504760763563868370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 2 * (((n : ℤ) - 1) * a (n - 2)) + 3 * (((n : ℤ) - 1) * a (n - 2))

end

end A115331.P16504760763563868370

/-! ## A115331.P4226659674952219954

`sqrt(A115332(n))`
-/

namespace A115331.P4226659674952219954
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A115332 n : ℝ)

end

end A115331.P4226659674952219954

/-! ## A115331.P16056065773273048652

`root(A115332(n), ratio[A000079(n)])`
-/

namespace A115331.P16056065773273048652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115332 n : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A115331.P16056065773273048652

/-! ## A115331.P3191351854540451646

`root(A115332(n), A036453(n+1))`
-/

namespace A115331.P3191351854540451646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115332 n : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))

end

end A115331.P3191351854540451646

/-! ## A115331.P5432442722654073246

`root(A115332(n), A001316(A001316(n)))`
-/

namespace A115331.P5432442722654073246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115332 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A115331.P5432442722654073246

/-! ## A115331.P15786257073444029901

`root(A115332(n), A034444(A034444(n+1)))`
-/

namespace A115331.P15786257073444029901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115332 n : ℝ) ^ (1 / (A034444 (A034444 (n + 1)).toNat : ℝ))

end

end A115331.P15786257073444029901

/-!
# A115332: E.g.f: exp(x/(1-5*x))/sqrt(1-25*x^2).

The programs for A115332, there is no canonical definition to state claims against.
-/

/-! ## A115332.P17847562329312894234

`A115331(n)²`
-/

namespace A115332.P17847562329312894234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115331 n ^ 2

end

end A115332.P17847562329312894234

/-! ## A115332.P2726030756667593756

`A115331(n)^(1-A057428(n))`
-/

namespace A115332.P2726030756667593756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115331 n : ℚ) ^ (1 - A057428 n : ℤ)

end

end A115332.P2726030756667593756

/-! ## A115332.P9658457176867364409

`A115331(n)^gcd(2, A000085(n))`
-/

namespace A115332.P9658457176867364409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115331 n ^ Int.gcd 2 (A000085 n)

end

end A115332.P9658457176867364409

/-! ## A115332.P6859987249048227827

`A115331(n)^gcd(6, A115327(n))`
-/

namespace A115332.P6859987249048227827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115331 n ^ Int.gcd 6 (A115327 n)

end

end A115332.P6859987249048227827

/-! ## A115332.P9626029857192289534

`A115331(n)^(2%A000040(n+1))`
-/

namespace A115332.P9626029857192289534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115331 n : ℚ) ^ (Int.tmod 2 (A000040 (n + 1)) : ℤ)

end

end A115332.P9626029857192289534

/-! ## A115332.P10115879699747385345

`A115331(n)^A020639(A315904(n))`
-/

namespace A115332.P10115879699747385345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115331 n : ℚ) ^ (A020639 (A315904 n).toNat : ℤ)

end

end A115332.P10115879699747385345

/-! ## A115332.P7511457106453202327

`A115331(n)^A001222(A001748(n+1))`
-/

namespace A115332.P7511457106453202327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115331 n : ℚ) ^ (A001222 (A001748 (n + 1)).toNat : ℤ)

end

end A115332.P7511457106453202327

/-! ## A115332.P4478700504415649811

`A115331(n)^A020639(A001043(n+1))`
-/

namespace A115332.P4478700504415649811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115331 n : ℚ) ^ (A020639 (A001043 (n + 1)).toNat : ℤ)

end

end A115332.P4478700504415649811

/-! ## A115332.P5418642995302585599

`A115331(n)^A034444(A006530(n+1))`
-/

namespace A115332.P5418642995302585599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115331 n : ℚ) ^ (A034444 (A006530 (n + 1)).toNat : ℤ)

end

end A115332.P5418642995302585599

/-!
# A115333: Sum of primes that do not divide n and are less than the largest prime dividing n.

The programs for A115333, there is no canonical definition to state claims against.
-/

/-! ## A115333.P15511913869844028463

`A074036(A103517(n))-∑{p}[n+1, #]`
-/

namespace A115333.P15511913869844028463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (A103517 n).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A115333.P15511913869844028463

/-! ## A115333.P3090302766020552738

`A007504(A061395(n+1))-∑{p}[n+1, #]`
-/

namespace A115333.P3090302766020552738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A061395 (n + 1)).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A115333.P3090302766020552738

/-! ## A115333.P16163171013015715408

`A074036(A103517(n))-A008472(n+1)`
-/

namespace A115333.P16163171013015715408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (A103517 n).toNat - A008472 (n + 1)

end

end A115333.P16163171013015715408

/-! ## A115333.P10624898167645311980

`A034387(A006530(n+1))-A008472(n+1)`
-/

namespace A115333.P10624898167645311980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A006530 (n + 1)).toNat - A008472 (n + 1)

end

end A115333.P10624898167645311980

/-! ## A115333.P9935850522598613800

`A007504(A061395(n+1))-A008472(n+1)`
-/

namespace A115333.P9935850522598613800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A061395 (n + 1)).toNat - A008472 (n + 1)

end

end A115333.P9935850522598613800

/-! ## A115333.P2758398766985643473

`A074036(A002618(n+1))-A008472(n+1)`
-/

namespace A115333.P2758398766985643473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074036 (A002618 (n + 1)).toNat - A008472 (n + 1)

end

end A115333.P2758398766985643473

/-! ## A115333.P12746188033509751999

`A066911(A117366(n+1))-A008472(n+1)`
-/

namespace A115333.P12746188033509751999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (A117366 (n + 1)).toNat - A008472 (n + 1)

end

end A115333.P12746188033509751999

/-! ## A115333.P6795460941485130997

`A349555(A117366(n+1))-A074372(n+1)`
-/

namespace A115333.P6795460941485130997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349555 (A117366 (n + 1)).toNat - A074372 (n + 1)

end

end A115333.P6795460941485130997

/-! ## A115333.P12426525748885099130

`A007504(A061395(n+1))-A097974((n+1)²)`
-/

namespace A115333.P12426525748885099130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A061395 (n + 1)).toNat - A097974 ((n + 1) ^ 2)

end

end A115333.P12426525748885099130

/-! ## A115333.P11657499590650172970

`A007504(A061395(n+1))-A001414(A007947(n+1))`
-/

namespace A115333.P11657499590650172970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A061395 (n + 1)).toNat - A001414 (A007947 (n + 1)).toNat

end

end A115333.P11657499590650172970

/-!
# A115334: Numbers d > 0 such that 3+2d and 3+4d are primes.

The programs for A115334, there is no canonical definition to state claims against.
-/

/-! ## A115334.P6197028703603090445

`A206037(n+1)/2`
-/

namespace A115334.P6197028703603090445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206037 (n + 1) : ℚ) / 2

end

end A115334.P6197028703603090445

/-! ## A115334.P908889789457031282

`(A063908(n+2)-3)/2`
-/

namespace A115334.P908889789457031282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063908 (n + 2) - 3 : ℚ) / 2

end

end A115334.P908889789457031282

/-! ## A115334.P9210542305282725143

`∑[Δ[A063908(n+1)]/2]`
-/

namespace A115334.P9210542305282725143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115334.P9210542305282725143

/-! ## A115334.P14223486502913272125

`(A241817(n+2)+2)/4-2`
-/

namespace A115334.P14223486502913272125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241817 (n + 2) + 2 : ℚ) / 4 - 2

end

end A115334.P14223486502913272125

/-! ## A115334.P13327990193341221868

`∑[A004526(Δ[A063908(n+1)])]`
-/

namespace A115334.P13327990193341221868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115334.P13327990193341221868

/-! ## A115334.P1016612742326540483

`∩[A067076(n+2), A089986(n+2)+1]`
-/

namespace A115334.P1016612742326540483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115334.P1016612742326540483

/-! ## A115334.P617922621798014567

`∩[A067076(n+1), A380550(n+1)]`
-/

namespace A115334.P617922621798014567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115334.P617922621798014567

/-! ## A115334.P15963266396125111268

`A039732(eq[3, A039739(n+2)])`
-/

namespace A115334.P15963266396125111268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039739 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115334.P15963266396125111268

/-! ## A115334.P10351560393669118738

`eq[A101264(2*n+1)*A101264(n+1), A005171(2*(n+1))]`
-/

namespace A115334.P10351560393669118738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + 1) * A101264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115334.P10351560393669118738

/-! ## A115334.P15836498318981785436

`eq[2, A085063(2*n+1)]`
-/

namespace A115334.P15836498318981785436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085063 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115334.P15836498318981785436

/-! ## A115334.P9542236336783654099

`eq[2, A085063(n+1)]/2`
-/

namespace A115334.P9542236336783654099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085063 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A115334.P9542236336783654099

/-! ## A115334.P14237326935678798083

`(lt[A120223(n+3), 3]+2)/2`
-/

namespace A115334.P14237326935678798083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120223 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℚ) / 2

end

end A115334.P14237326935678798083

/-! ## A115334.P10090960048025517824

`A001281(A206037(n+1))`
-/

namespace A115334.P10090960048025517824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A206037 (n + 1)).toNat

end

end A115334.P10090960048025517824

/-! ## A115334.P10516339779424221460

`A003165(A063908(n+2))`
-/

namespace A115334.P10516339779424221460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (A063908 (n + 2)).toNat

end

end A115334.P10516339779424221460

/-! ## A115334.P18364984376887292293

`A003165(A241817(n+2)/2)`
-/

namespace A115334.P18364984376887292293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (SequenceMachineLib.roundAway ((A241817 (n + 2) : ℚ) / 2)).toNat

end

end A115334.P18364984376887292293

/-! ## A115334.P4442270114315318164

`A047949(p?[A090670(n+2)])/2`
-/

namespace A115334.P4442270114315318164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047949 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A115334.P4442270114315318164

/-! ## A115334.P7100263283575823136

`eq[A046067(n+1), A053193(n+1)]`
-/

namespace A115334.P7100263283575823136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115334.P7100263283575823136

/-! ## A115334.P809254204916053953

`eq[2, A067760(n)+A046067(n+1)]`
-/

namespace A115334.P809254204916053953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 n + A046067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115334.P809254204916053953

/-! ## A115334.P15116002670028426936

`eq[A040252(n), A120223(2*n+1)]`
-/

namespace A115334.P15116002670028426936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120223 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115334.P15116002670028426936

/-!
# A115335: a(0) = 3, a(1) = 5, a(2) = 1, and a(n) = (2^(1 + n) - 11*(-1)^n)/3 for n > 2.

The programs for A115335, the canonical program `A115335.P5437146665019323809` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115335 has offset 0).

The definition of A115335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115335.P5437146665019323809

`a(n-1)+2*a(n-2)` with `a(0)=3, a(1)=5, a(2)=1, a(3)=9, a(4)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115335

/-- `a(n-1)+2*a(n-2)` -/
def P5437146665019323809.Spec : Prop :=
  ∀ n, (P5437146665019323809.a n : ℤ) = A115335 n

theorem P5437146665019323809.correct : P5437146665019323809.Spec := by
  intro n
  simp only [A115335]

end A115335

/-! ## A115335.P11110639582428391240

`abs(∑[(-2)^n]-4)`
-/

namespace A115335.P11110639582428391240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 4|

end

end A115335.P11110639582428391240

namespace A115335

/-- `abs(∑[(-2)^n]-4)` -/
def P11110639582428391240.Spec : Prop :=
  ∀ n, P11110639582428391240.a n = A115335 n

end A115335

/-! ## A115335.P3876345675448633880

`2^n-a(n-1)` with `a(0)=3, a(1)=5, a(2)=1, a(3)=9`
-/

namespace A115335.P3876345675448633880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 1, 9] fun n a =>
  (2 ^ n : ℤ) - a (n - 1)

end

end A115335.P3876345675448633880

namespace A115335

/-- `2^n-a(n-1)` -/
def P3876345675448633880.Spec : Prop :=
  ∀ n, P3876345675448633880.a n = A115335 n

end A115335

/-! ## A115335.P8257323189986803494

`gcd(∑[(-2)^n]-4, A008683(4*(n+1)))`
-/

namespace A115335.P8257323189986803494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j - 4) (A008683 (4 * (n + 1)))

end

end A115335.P8257323189986803494

namespace A115335

/-- `gcd(∑[(-2)^n]-4, A008683(4*(n+1)))` -/
def P8257323189986803494.Spec : Prop :=
  ∀ n, (P8257323189986803494.a n : ℤ) = A115335 n

end A115335

/-! ## A115335.P17398269209061501556

`lcm(2, A077925(n+1)+7)/2`
-/

namespace A115335.P17398269209061501556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A077925 (n + 1) + 7) : ℚ) / 2

end

end A115335.P17398269209061501556

namespace A115335

/-- `lcm(2, A077925(n+1)+7)/2` -/
def P17398269209061501556.Spec : Prop :=
  ∀ n, P17398269209061501556.a n = (A115335 n : ℚ)

end A115335

/-! ## A115335.P18209579947944268096

`gcd(∑[(-2)^n]-4, A106405(A237055(n+1)))`
-/

namespace A115335.P18209579947944268096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j - 4) (A106405 (A237055 (n + 1)).toNat)

end

end A115335.P18209579947944268096

namespace A115335

/-- `gcd(∑[(-2)^n]-4, A106405(A237055(n+1)))` -/
def P18209579947944268096.Spec : Prop :=
  ∀ n, (P18209579947944268096.a n : ℤ) = A115335 n

end A115335

/-!
# A115336: a(n) is the smallest number representable in exactly n ways as a sum of 2 palindromes (each of them >= 0).

The programs for A115336, there is no canonical definition to state claims against.
-/

/-! ## A115336.P5555787637728464590

`A364836(n)+A010815(A364849(n+1))`
-/

namespace A115336.P5555787637728464590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364836 n + A010815 (A364849 (n + 1)).toNat

end

end A115336.P5555787637728464590

/-! ## A115336.P17111121926419911733

`n*A304817((n+1)^5)`
-/

namespace A115336.P17111121926419911733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A304817 ((n + 1) ^ 5)

end

end A115336.P17111121926419911733

/-!
# A115338: a(n) = Fibonacci(floor(sqrt(n))).

The programs for A115338, the canonical program `A115338.P8953049232344404733` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115338 has offset 0).

The definition of A115338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115338.P8953049232344404733

`A000045(A000196(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115338

/-- `A000045(A000196(n))` -/
def P8953049232344404733.Spec : Prop :=
  ∀ n, P8953049232344404733.a n = A115338 n

theorem P8953049232344404733.correct : P8953049232344404733.Spec := by
  intro n
  simp only [A115338]

end A115338

/-! ## A115338.P14150615070044975770

`A000045(floor(sqrt(n)))`
-/

namespace A115338.P14150615070044975770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.sqrt n)

end

end A115338.P14150615070044975770

namespace A115338

/-- `A000045(floor(sqrt(n)))` -/
def P14150615070044975770.Spec : Prop :=
  ∀ n, P14150615070044975770.a n = A115338 n

end A115338

/-! ## A115338.P6746897003420433443

`sqrt(A007598(floor(sqrt(n))))`
-/

namespace A115338.P6746897003420433443
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 (Nat.sqrt n) : ℝ)

end

end A115338.P6746897003420433443

namespace A115338

/-- `sqrt(A007598(floor(sqrt(n))))` -/
def P6746897003420433443.Spec : Prop :=
  ∀ n, P6746897003420433443.a n = (A115338 n : ℝ)

end A115338

/-! ## A115338.P10073732137274340163

`A212804(∑[char[n²]])`
-/

namespace A115338.P10073732137274340163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115338.P10073732137274340163

namespace A115338

/-- `A212804(∑[char[n²]])` -/
def P10073732137274340163.Spec : Prop :=
  ∀ n, P10073732137274340163.a n = A115338 n

end A115338

/-! ## A115338.P12658541480876904719

`A001611(floor(sqrt(n)))-1`
-/

namespace A115338.P12658541480876904719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (Nat.sqrt n) - 1

end

end A115338.P12658541480876904719

namespace A115338

/-- `A001611(floor(sqrt(n)))-1` -/
def P12658541480876904719.Spec : Prop :=
  ∀ n, P12658541480876904719.a n = A115338 n

end A115338

/-! ## A115338.P7877210712278309245

`A157725(floor(sqrt(n)))-2`
-/

namespace A115338.P7877210712278309245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (Nat.sqrt n) - 2

end

end A115338.P7877210712278309245

namespace A115338

/-- `A157725(floor(sqrt(n)))-2` -/
def P7877210712278309245.Spec : Prop :=
  ∀ n, P7877210712278309245.a n = A115338 n

end A115338

/-! ## A115338.P8970931611078971326

`A053602(2*floor(sqrt(n)))`
-/

namespace A115338.P8970931611078971326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * Nat.sqrt n)

end

end A115338.P8970931611078971326

namespace A115338

/-- `A053602(2*floor(sqrt(n)))` -/
def P8970931611078971326.Spec : Prop :=
  ∀ n, P8970931611078971326.a n = A115338 n

end A115338

/-! ## A115338.P15448125123338056184

`A103609(floor(2*sqrt(n)))`
-/

namespace A115338.P15448125123338056184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 ⌊2 * Real.sqrt (n : ℝ)⌋.toNat

end

end A115338.P15448125123338056184

namespace A115338

/-- `A103609(floor(2*sqrt(n)))` -/
def P15448125123338056184.Spec : Prop :=
  ∀ n, P15448125123338056184.a n = A115338 n

end A115338

/-! ## A115338.P13901224753389031155

`A302126(2*floor(sqrt(n)))`
-/

namespace A115338.P13901224753389031155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * Nat.sqrt n)

end

end A115338.P13901224753389031155

namespace A115338

/-- `A302126(2*floor(sqrt(n)))` -/
def P13901224753389031155.Spec : Prop :=
  ∀ n, P13901224753389031155.a n = A115338 n

end A115338

/-! ## A115338.P60693204564946398

`abs(A001611(∑[char[(n+1)²]])-1)`
-/

namespace A115338.P60693204564946398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001611 (∑ j ∈ Finset.range (n + 1), f1 j) - 1|

end

end A115338.P60693204564946398

namespace A115338

/-- `abs(A001611(∑[char[(n+1)²]])-1)` -/
def P60693204564946398.Spec : Prop :=
  ∀ n, P60693204564946398.a n = A115338 n

end A115338

/-!
# A115339: a(2n-1)=F(n+1), a(2n)=L(n), where F(n) and L(n) are the Fibonacci and the Lucas sequences.

The programs for A115339, the canonical program `A115339.P14712380598961409083` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115339 has offset 1).

The definition of A115339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115339.P4563225933081427391

`ogf((1+x+x^2+2x^3)/(1-x^2-x^4))`
-/

namespace A115339.P4563225933081427391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 2] [1, 0, -1, 0, -1] n

end

end A115339.P4563225933081427391

namespace A115339

/-- `ogf((1+x+x^2+2x^3)/(1-x^2-x^4))` -/
def P4563225933081427391.Spec : Prop :=
  ∀ n, P4563225933081427391.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P14712380598961409083

`a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115339

/-- `a(n-2)+a(n-4)` -/
def P14712380598961409083.Spec : Prop :=
  ∀ n, (P14712380598961409083.a n : ℤ) = A115339 (n + 1)

theorem P14712380598961409083.correct : P14712380598961409083.Spec := by
  intro n
  simp only [A115339, Nat.add_sub_cancel]

end A115339

/-! ## A115339.P12996702923168420642

`A339572(n)+1`
-/

namespace A115339.P12996702923168420642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 n + 1

end

end A115339.P12996702923168420642

namespace A115339

/-- `A339572(n)+1` -/
def P12996702923168420642.Spec : Prop :=
  ∀ n, P12996702923168420642.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P9087735836085150060

`abs(Δ[Δ[A053602(n)]])`
-/

namespace A115339.P9087735836085150060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A115339.P9087735836085150060

namespace A115339

/-- `abs(Δ[Δ[A053602(n)]])` -/
def P9087735836085150060.Spec : Prop :=
  ∀ n, P9087735836085150060.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P10407425956642308123

`∑[abs(A051792(n+2))]`
-/

namespace A115339.P10407425956642308123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051792 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115339.P10407425956642308123

namespace A115339

/-- `∑[abs(A051792(n+2))]` -/
def P10407425956642308123.Spec : Prop :=
  ∀ n, P10407425956642308123.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P9308120786112289077

`A103609(n+3)+A103609(n)`
-/

namespace A115339.P9308120786112289077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 3) + A103609 n

end

end A115339.P9308120786112289077

namespace A115339

/-- `A103609(n+3)+A103609(n)` -/
def P9308120786112289077.Spec : Prop :=
  ∀ n, P9308120786112289077.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P2091740809829112435

`∑[A000045(abs(2-A028242(n+1)))]`
-/

namespace A115339.P2091740809829112435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |2 - A028242 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115339.P2091740809829112435

namespace A115339

/-- `∑[A000045(abs(2-A028242(n+1)))]` -/
def P2091740809829112435.Spec : Prop :=
  ∀ n, P2091740809829112435.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P16393491575996997518

`∑[A000045(abs(1-(n-A028242(n))))]`
-/

namespace A115339.P16393491575996997518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - ((n : ℤ) - A028242 n)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115339.P16393491575996997518

namespace A115339

/-- `∑[A000045(abs(1-(n-A028242(n))))]` -/
def P16393491575996997518.Spec : Prop :=
  ∀ n, P16393491575996997518.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P2296483484116007808

`A053602(n)+A000045(round(xor(1, n)/2))`
-/

namespace A115339.P2296483484116007808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n + A000045 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat

end

end A115339.P2296483484116007808

namespace A115339

/-- `A053602(n)+A000045(round(xor(1, n)/2))` -/
def P2296483484116007808.Spec : Prop :=
  ∀ n, P2296483484116007808.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P17208816172601000692

`A272912(n+2)+abs(Δ[A272912(n+2)])`
-/

namespace A115339.P17208816172601000692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (n + 2) + |f1 (n + 1) - f1 n|

end

end A115339.P17208816172601000692

namespace A115339

/-- `A272912(n+2)+abs(Δ[A272912(n+2)])` -/
def P17208816172601000692.Spec : Prop :=
  ∀ n, P17208816172601000692.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P16313935547187267877

`A053602(n)+A000045(A028242(n))`
-/

namespace A115339.P16313935547187267877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n + A000045 (A028242 n).toNat

end

end A115339.P16313935547187267877

namespace A115339

/-- `A053602(n)+A000045(A028242(n))` -/
def P16313935547187267877.Spec : Prop :=
  ∀ n, P16313935547187267877.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P3001393851620604637

`A053602(2*A028242(n))+A053602(n)`
-/

namespace A115339.P3001393851620604637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A028242 n).toNat + A053602 n

end

end A115339.P3001393851620604637

namespace A115339

/-- `A053602(2*A028242(n))+A053602(n)` -/
def P3001393851620604637.Spec : Prop :=
  ∀ n, P3001393851620604637.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P16083253231305591046

`A000045(A110659(2*(n+1)))+A000045(A110659(2*n))`
-/

namespace A115339.P16083253231305591046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A110659 (2 * (n + 1))).toNat + A000045 (A110659 (2 * n)).toNat

end

end A115339.P16083253231305591046

namespace A115339

/-- `A000045(A110659(2*(n+1)))+A000045(A110659(2*n))` -/
def P16083253231305591046.Spec : Prop :=
  ∀ n, P16083253231305591046.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P5120590528900537872

`A000045(A110657(2*n+1))+A000045(A110657(2*n))`
-/

namespace A115339.P5120590528900537872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A110657 (2 * n + 1)).toNat + A000045 (A110657 (2 * n)).toNat

end

end A115339.P5120590528900537872

namespace A115339

/-- `A000045(A110657(2*n+1))+A000045(A110657(2*n))` -/
def P5120590528900537872.Spec : Prop :=
  ∀ n, P5120590528900537872.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P3211790691430238639

`A123231(n+2)+A053602(n)-A053602(n+1)`
-/

namespace A115339.P3211790691430238639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (n + 2) + (A053602 n - A053602 (n + 1))

end

end A115339.P3211790691430238639

namespace A115339

/-- `A123231(n+2)+A053602(n)-A053602(n+1)` -/
def P3211790691430238639.Spec : Prop :=
  ∀ n, P3211790691430238639.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P8626610768312342244

`A096748(n+3)-A096748(n)`
-/

namespace A115339.P8626610768312342244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (n + 3) - A096748 n

end

end A115339.P8626610768312342244

namespace A115339

/-- `A096748(n+3)-A096748(n)` -/
def P8626610768312342244.Spec : Prop :=
  ∀ n, P8626610768312342244.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P8165085763371653611

`A053602(n)+A380696(n+1)/A272912(n+1)`
-/

namespace A115339.P8165085763371653611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053602 n : ℚ) + (A380696 (n + 1) : ℚ) / (A272912 (n + 1) : ℚ)

end

end A115339.P8165085763371653611

namespace A115339

/-- `A053602(n)+A380696(n+1)/A272912(n+1)` -/
def P8165085763371653611.Spec : Prop :=
  ∀ n, P8165085763371653611.a n = (A115339 (n + 1) : ℚ)

end A115339

/-! ## A115339.P6367645752347332944

`A236144(n+1)/a(n-1)` with `a(0)=1`
-/

namespace A115339.P6367645752347332944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A236144 (n + 1) : ℚ) / a (n - 1)

end

end A115339.P6367645752347332944

namespace A115339

/-- `A236144(n+1)/a(n-1)` -/
def P6367645752347332944.Spec : Prop :=
  ∀ n, P6367645752347332944.a n = (A115339 (n + 1) : ℚ)

end A115339

/-! ## A115339.P11455984070033614413

`A181974(A134519(n+1))`
-/

namespace A115339.P11455984070033614413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181974 (A134519 (n + 1)).toNat

end

end A115339.P11455984070033614413

namespace A115339

/-- `A181974(A134519(n+1))` -/
def P11455984070033614413.Spec : Prop :=
  ∀ n, P11455984070033614413.a n = A115339 (n + 1)

end A115339

/-! ## A115339.P9378458192322787211

`A059779(A101881(n))`
-/

namespace A115339.P9378458192322787211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059779 (A101881 n).toNat

end

end A115339.P9378458192322787211

namespace A115339

/-- `A059779(A101881(n))` -/
def P9378458192322787211.Spec : Prop :=
  ∀ n, P9378458192322787211.a n = A115339 (n + 1)

end A115339

/-!
# A115340: Number of dual Hamiltonian cubic polyhedra or planar 3-connected Yutsis graphs on 2n nodes.

The programs for A115340, there is no canonical definition to state claims against.
-/

/-! ## A115340.P15158955235325149326

`A000109(n+4)-A007030(n+4)`
-/

namespace A115340.P15158955235325149326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000109 (n + 4) - A007030 (n + 4)

end

end A115340.P15158955235325149326

/-! ## A115340.P1988243061444769500

`xor(A000109(n+4), A025466(A001473(n+1)))`
-/

namespace A115340.P1988243061444769500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000109 (n + 4)) (A025466 (A001473 (n + 1)).toNat)

end

end A115340.P1988243061444769500

/-! ## A115340.P5622781538288919010

`A343870(A276819(n+2))`
-/

namespace A115340.P5622781538288919010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343870 (A276819 (n + 2)).toNat

end

end A115340.P5622781538288919010

/-!
# A115341: a(n) = abs(A154879(n+1)).

The programs for A115341, the canonical program `A115341.P2434713797659895741` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115341 has offset 0).

The definition of A115341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115341.P2769395813266228153

`a(n-1)+2*a(n-2)` with `a(0)=2, a(1)=4, a(2)=0`
-/

namespace A115341.P2769395813266228153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 0] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A115341.P2769395813266228153

namespace A115341

/-- `a(n-1)+2*a(n-2)` -/
def P2769395813266228153.Spec : Prop :=
  ∀ n, (P2769395813266228153.a n : ℤ) = A115341 n

end A115341

/-! ## A115341.P2434713797659895741

`abs(A154879(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115341

/-- `abs(A154879(n+1))` -/
def P2434713797659895741.Spec : Prop :=
  ∀ n, P2434713797659895741.a n = A115341 n

theorem P2434713797659895741.correct : P2434713797659895741.Spec := by
  intro n
  simp only [A115341]

end A115341

/-! ## A115341.P16435510935600461116

`2*abs(A084247(n))`
-/

namespace A115341.P16435510935600461116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |A084247 n|

end

end A115341.P16435510935600461116

namespace A115341

/-- `2*abs(A084247(n))` -/
def P16435510935600461116.Spec : Prop :=
  ∀ n, P16435510935600461116.a n = A115341 n

end A115341

/-! ## A115341.P14191512804680296483

`abs(∑[(-2)^n]-3)`
-/

namespace A115341.P14191512804680296483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 3|

end

end A115341.P14191512804680296483

namespace A115341

/-- `abs(∑[(-2)^n]-3)` -/
def P14191512804680296483.Spec : Prop :=
  ∀ n, P14191512804680296483.a n = A115341 n

end A115341

/-! ## A115341.P16494251975251109386

`ogf((2+2x-8x^2)/(1-x-2x^2))`
-/

namespace A115341.P16494251975251109386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -8] [1, -1, -2] n

end

end A115341.P16494251975251109386

namespace A115341

/-- `ogf((2+2x-8x^2)/(1-x-2x^2))` -/
def P16494251975251109386.Spec : Prop :=
  ∀ n, P16494251975251109386.a n = A115341 n

end A115341

/-! ## A115341.P8259344371292810471

`2^n-a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A115341.P8259344371292810471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  (2 ^ n : ℤ) - a (n - 1)

end

end A115341.P8259344371292810471

namespace A115341

/-- `2^n-a(n-1)` -/
def P8259344371292810471.Spec : Prop :=
  ∀ n, P8259344371292810471.a n = A115341 n

end A115341

/-! ## A115341.P9627012431714237125

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=4, a(2)=0`
-/

namespace A115341.P9627012431714237125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 0] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A115341.P9627012431714237125

namespace A115341

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P9627012431714237125.Spec : Prop :=
  ∀ n, (P9627012431714237125.a n : ℤ) = A115341 n

end A115341

/-! ## A115341.P15649914559191439542

`3*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=2, a(1)=4, a(2)=0`
-/

namespace A115341.P15649914559191439542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 0] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A115341.P15649914559191439542

namespace A115341

/-- `3*a(n-2)-(a(n-2)-a(n-1))` -/
def P15649914559191439542.Spec : Prop :=
  ∀ n, P15649914559191439542.a n = A115341 n

end A115341

/-! ## A115341.P6083376770878821658

`lcm(2, A140966(n+1)+1)`
-/

namespace A115341.P6083376770878821658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A140966 (n + 1) + 1)

end

end A115341.P6083376770878821658

namespace A115341

/-- `lcm(2, A140966(n+1)+1)` -/
def P6083376770878821658.Spec : Prop :=
  ∀ n, (P6083376770878821658.a n : ℤ) = A115341 n

end A115341

/-! ## A115341.P2906641842296336043

`A154570(n)+A084214(n)`
-/

namespace A115341.P2906641842296336043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154570 n + A084214 n

end

end A115341.P2906641842296336043

namespace A115341

/-- `A154570(n)+A084214(n)` -/
def P2906641842296336043.Spec : Prop :=
  ∀ n, P2906641842296336043.a n = A115341 n

end A115341

/-! ## A115341.P804902887481451870

`2*(A165326(n)+A001045(n))`
-/

namespace A115341.P804902887481451870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A165326 n + A001045 n)

end

end A115341.P804902887481451870

namespace A115341

/-- `2*(A165326(n)+A001045(n))` -/
def P804902887481451870.Spec : Prop :=
  ∀ n, P804902887481451870.a n = A115341 n

end A115341

/-! ## A115341.P4523065296975334321

`A033999(n+1)+xor(2, A001045(n+1))`
-/

namespace A115341.P4523065296975334321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + Int.xor 2 (A001045 (n + 1))

end

end A115341.P4523065296975334321

namespace A115341

/-- `A033999(n+1)+xor(2, A001045(n+1))` -/
def P4523065296975334321.Spec : Prop :=
  ∀ n, P4523065296975334321.a n = A115341 n

end A115341

/-! ## A115341.P8258398095140606633

`A001045(n+1)+A115634(n)-A115634(n+1)`
-/

namespace A115341.P8258398095140606633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A115634 n - A115634 (n + 1))

end

end A115341.P8258398095140606633

namespace A115341

/-- `A001045(n+1)+A115634(n)-A115634(n+1)` -/
def P8258398095140606633.Spec : Prop :=
  ∀ n, P8258398095140606633.a n = A115341 n

end A115341

/-! ## A115341.P16418983363905630242

`lcm(2, Δ[A097073(n)])`
-/

namespace A115341.P16418983363905630242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (n + 1) - f1 n)

end

end A115341.P16418983363905630242

namespace A115341

/-- `lcm(2, Δ[A097073(n)])` -/
def P16418983363905630242.Spec : Prop :=
  ∀ n, (P16418983363905630242.a n : ℤ) = A115341 n

end A115341

/-! ## A115341.P10906210153779757482

`2*(A283642(n)-A166977(n))`
-/

namespace A115341.P10906210153779757482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A283642 n - A166977 n)

end

end A115341.P10906210153779757482

namespace A115341

/-- `2*(A283642(n)-A166977(n))` -/
def P10906210153779757482.Spec : Prop :=
  ∀ n, P10906210153779757482.a n = A115341 n

end A115341

/-! ## A115341.P3343959255990636182

`xor(2, A051049(n+1))-A000975(n+1)`
-/

namespace A115341.P3343959255990636182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A051049 (n + 1)) - A000975 (n + 1)

end

end A115341.P3343959255990636182

namespace A115341

/-- `xor(2, A051049(n+1))-A000975(n+1)` -/
def P3343959255990636182.Spec : Prop :=
  ∀ n, P3343959255990636182.a n = A115341 n

end A115341

/-! ## A115341.P18149982899712292139

`Δ[Δ[abs(2*A167193(n))]]`
-/

namespace A115341.P18149982899712292139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A167193 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115341.P18149982899712292139

namespace A115341

/-- `Δ[Δ[abs(2*A167193(n))]]` -/
def P18149982899712292139.Spec : Prop :=
  ∀ n, P18149982899712292139.a n = A115341 n

end A115341

/-! ## A115341.P4223484323087986916

`A283642(n+1)-xor(2, A062510(n+1))`
-/

namespace A115341.P4223484323087986916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 (n + 1) - Int.xor 2 (A062510 (n + 1))

end

end A115341.P4223484323087986916

namespace A115341

/-- `A283642(n+1)-xor(2, A062510(n+1))` -/
def P4223484323087986916.Spec : Prop :=
  ∀ n, P4223484323087986916.a n = A115341 n

end A115341

/-!
# A115342: a(n) = 1 + (n-6)*2^(n-1).

The programs for A115342, the canonical program `A115342.P8427911887060931611` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115342 has offset 6).

The definition of A115342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+n*2^(n+5)` (program `A115342.P8427911887060931611`, by `A115342.P8427911887060931611.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115342.P8427911887060931611

`1+n*2^(n+5)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115342

/-- `1+n*2^(n+5)` -/
def P8427911887060931611.Spec : Prop :=
  ∀ n, (P8427911887060931611.a n : ℤ) = A115342 (n + 6)

theorem P8427911887060931611.correct : P8427911887060931611.Spec := by
  intro n
  simp only [A115342, Nat.add_sub_cancel]

end A115342

/-! ## A115342.P477266118315594038

`or(1, 32*n*2^n)`
-/

namespace A115342.P477266118315594038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (32 * (n * 2 ^ n))

end

end A115342.P477266118315594038

namespace A115342

/-- `or(1, 32*n*2^n)` -/
def P477266118315594038.Spec : Prop :=
  ∀ n, (P477266118315594038.a n : ℤ) = A115342 (n + 6)

end A115342

/-! ## A115342.P5054581873516595065

`xor(1, 32*n*2^n)`
-/

namespace A115342.P5054581873516595065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (32 * (n * 2 ^ n))

end

end A115342.P5054581873516595065

namespace A115342

/-- `xor(1, 32*n*2^n)` -/
def P5054581873516595065.Spec : Prop :=
  ∀ n, (P5054581873516595065.a n : ℤ) = A115342 (n + 6)

end A115342

/-! ## A115342.P7376010674672962201

`∑[(2/n+2)*a(n-1)]` with `a(0)=1, a(1)=64`
-/

namespace A115342.P7376010674672962201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 64] fun n f1 =>
  (2 / (n : ℚ) + 2) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115342.P7376010674672962201

namespace A115342

/-- `∑[(2/n+2)*a(n-1)]` -/
def P7376010674672962201.Spec : Prop :=
  ∀ n, P7376010674672962201.a n = (A115342 (n + 6) : ℚ)

end A115342

/-! ## A115342.P11345571595494529655

`record[abs(floor((n-1)*2^(n-2)))-floor(∑[3*2^(n-2)])]`
-/

namespace A115342.P11345571595494529655
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊((n : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋| - ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115342.P11345571595494529655

namespace A115342

/-- `record[abs(floor((n-1)*2^(n-2)))-floor(∑[3*2^(n-2)])]` -/
def P11345571595494529655.Spec : Prop :=
  ∀ n, P11345571595494529655.a n = A115342 (n + 6)

end A115342

/-! ## A115342.P9880479621704845069

`A376102(A090288(n+1))`
-/

namespace A115342.P9880479621704845069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376102 (A090288 (n + 1)).toNat

end

end A115342.P9880479621704845069

namespace A115342

/-- `A376102(A090288(n+1))` -/
def P9880479621704845069.Spec : Prop :=
  ∀ n, P9880479621704845069.a n = A115342 (n + 6)

end A115342

/-!
# A115343: Products of 9 distinct primes.

The programs for A115343, there is no canonical definition to state claims against.
-/

/-! ## A115343.P17554356623353594588

`A348073(A304678(n+1)%A195533(n+1))`
-/

namespace A115343.P17554356623353594588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348073 (Int.tmod (A304678 (n + 1)) (A195533 (n + 1))).toNat

end

end A115343.P17554356623353594588

/-! ## A115343.P18256351514993820346

`A348073(A000005(record[A039593(n+1)]))`
-/

namespace A115343.P18256351514993820346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348073 (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A115343.P18256351514993820346

/-! ## A115343.P9088987045596517431

`10*A112644(A187829(n+1))`
-/

namespace A115343.P9088987045596517431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A112644 (A187829 (n + 1)).toNat

end

end A115343.P9088987045596517431

/-! ## A115343.P9052706528184163997

`A040383(A062341(n+1))*A112644(n+1)`
-/

namespace A115343.P9052706528184163997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040383 (A062341 (n + 1)).toNat * A112644 (n + 1)

end

end A115343.P9052706528184163997

/-!
# A115346: Triangle read by rows: T(n,k) = Fibonacci(k+2) - 1.

The programs for A115346, the canonical program `A115346.P14890110916241941948` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115346 has offset 0).

The definition of A115346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115346.P17009063856604930021

`A193588(n)-1`
-/

namespace A115346.P17009063856604930021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n - 1

end

end A115346.P17009063856604930021

namespace A115346

/-- `A193588(n)-1` -/
def P17009063856604930021.Spec : Prop :=
  ∀ n, P17009063856604930021.a n = A115346 n

end A115346

/-! ## A115346.P12278457006106478300

`A000045(n-C(round(sqrt(2*(n+1))), 2)+2)-1`
-/

namespace A115346.P12278457006106478300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2 : ℤ) + 2).toNat - 1

end

end A115346.P12278457006106478300

namespace A115346

/-- `A000045(n-C(round(sqrt(2*(n+1))), 2)+2)-1` -/
def P12278457006106478300.Spec : Prop :=
  ∀ n, P12278457006106478300.a n = A115346 n

end A115346

/-! ## A115346.P4280214961805178402

`A131524(A131225(n+1))`
-/

namespace A115346.P4280214961805178402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A131225 (n + 1)).toNat

end

end A115346.P4280214961805178402

namespace A115346

/-- `A131524(A131225(n+1))` -/
def P4280214961805178402.Spec : Prop :=
  ∀ n, P4280214961805178402.a n = A115346 n

end A115346

/-! ## A115346.P17028537581831908583

`A131524(A158405(n+1))`
-/

namespace A115346.P17028537581831908583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A158405 (n + 1)).toNat

end

end A115346.P17028537581831908583

namespace A115346

/-- `A131524(A158405(n+1))` -/
def P17028537581831908583.Spec : Prop :=
  ∀ n, P17028537581831908583.a n = A115346 n

end A115346

/-! ## A115346.P11690788750565870651

`A131524(A211197(n+1))`
-/

namespace A115346.P11690788750565870651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A211197 (n + 1)).toNat

end

end A115346.P11690788750565870651

namespace A115346

/-- `A131524(A211197(n+1))` -/
def P11690788750565870651.Spec : Prop :=
  ∀ n, P11690788750565870651.a n = A115346 n

end A115346

/-! ## A115346.P14890110916241941948

`A000071(A002262(n)+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A115346

/-- `A000071(A002262(n)+2)` -/
def P14890110916241941948.Spec : Prop :=
  ∀ n, P14890110916241941948.a n = A115346 n

theorem P14890110916241941948.correct : P14890110916241941948.Spec := by
  intro n
  simp only [A115346]

end A115346

/-! ## A115346.P15386025675688116803

`A035506(A112367(n))-1`
-/

namespace A115346.P15386025675688116803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035506 (A112367 n).toNat - 1

end

end A115346.P15386025675688116803

namespace A115346

/-- `A035506(A112367(n))-1` -/
def P15386025675688116803.Spec : Prop :=
  ∀ n, P15386025675688116803.a n = A115346 n

end A115346

/-! ## A115346.P4771686944451201825

`A097575(A174028(n))-1`
-/

namespace A115346.P4771686944451201825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (A174028 n).toNat - 1

end

end A115346.P4771686944451201825

namespace A115346

/-- `A097575(A174028(n))-1` -/
def P4771686944451201825.Spec : Prop :=
  ∀ n, P4771686944451201825.a n = A115346 n

end A115346

/-! ## A115346.P6083394496719980829

`A000071(A002260(n+1)+1)`
-/

namespace A115346.P6083394496719980829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A002260 (n + 1) + 1).toNat

end

end A115346.P6083394496719980829

namespace A115346

/-- `A000071(A002260(n+1)+1)` -/
def P6083394496719980829.Spec : Prop :=
  ∀ n, P6083394496719980829.a n = A115346 n

end A115346

/-! ## A115346.P13854008195404206053

`A120250(A037126(n+1))-1`
-/

namespace A115346.P13854008195404206053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (A037126 (n + 1)).toNat - 1

end

end A115346.P13854008195404206053

namespace A115346

/-- `A120250(A037126(n+1))-1` -/
def P13854008195404206053.Spec : Prop :=
  ∀ n, P13854008195404206053.a n = A115346 n

end A115346

/-! ## A115346.P9416937366579664576

`A094437(n)/A007318(n)-1`
-/

namespace A115346.P9416937366579664576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094437 n : ℚ) / (A007318 n : ℚ) - 1

end

end A115346.P9416937366579664576

namespace A115346

/-- `A094437(n)/A007318(n)-1` -/
def P9416937366579664576.Spec : Prop :=
  ∀ n, P9416937366579664576.a n = (A115346 n : ℚ)

end A115346

/-! ## A115346.P15207492296617219467

`A104763(n+1)+A141169(n)-1`
-/

namespace A115346.P15207492296617219467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + (A141169 n - 1)

end

end A115346.P15207492296617219467

namespace A115346

/-- `A104763(n+1)+A141169(n)-1` -/
def P15207492296617219467.Spec : Prop :=
  ∀ n, P15207492296617219467.a n = A115346 n

end A115346

/-! ## A115346.P4419599201932738013

`A104765(n+1)-(A141169(n)+1)`
-/

namespace A115346.P4419599201932738013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104765 (n + 1) - (A141169 n + 1)

end

end A115346.P4419599201932738013

namespace A115346

/-- `A104765(n+1)-(A141169(n)+1)` -/
def P4419599201932738013.Spec : Prop :=
  ∀ n, P4419599201932738013.a n = A115346 n

end A115346

/-! ## A115346.P5860973471972786587

`(A189675(n+1)-A171567(n))/A171567(n)`
-/

namespace A115346.P5860973471972786587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189675 (n + 1) - A171567 n : ℚ) / (A171567 n : ℚ)

end

end A115346.P5860973471972786587

namespace A115346

/-- `(A189675(n+1)-A171567(n))/A171567(n)` -/
def P5860973471972786587.Spec : Prop :=
  ∀ n, P5860973471972786587.a n = (A115346 n : ℚ)

end A115346

/-! ## A115346.P5141988248391113608

`A000071(A131818(n+2))`
-/

namespace A115346.P5141988248391113608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A131818 (n + 2)).toNat

end

end A115346.P5141988248391113608

namespace A115346

/-- `A000071(A131818(n+2))` -/
def P5141988248391113608.Spec : Prop :=
  ∀ n, P5141988248391113608.a n = A115346 n

end A115346

/-! ## A115346.P4657498696273353206

`A104763(comp[∑[n]]+1)-1`
-/

namespace A115346.P4657498696273353206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1

end

end A115346.P4657498696273353206

namespace A115346

/-- `A104763(comp[∑[n]]+1)-1` -/
def P4657498696273353206.Spec : Prop :=
  ∀ n, P4657498696273353206.a n = A115346 n

end A115346

/-! ## A115346.P17087596759394769941

`A027926(C(comp[∑[n]]-n, 2)+1+n)-1`
-/

namespace A115346.P17087596759394769941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 + n) - 1

end

end A115346.P17087596759394769941

namespace A115346

/-- `A027926(C(comp[∑[n]]-n, 2)+1+n)-1` -/
def P17087596759394769941.Spec : Prop :=
  ∀ n, P17087596759394769941.a n = A115346 n

end A115346

/-! ## A115346.P14248399477385003747

`A000071(A097285(2*n+1)+1)`
-/

namespace A115346.P14248399477385003747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A097285 (2 * n + 1) + 1).toNat

end

end A115346.P14248399477385003747

namespace A115346

/-- `A000071(A097285(2*n+1)+1)` -/
def P14248399477385003747.Spec : Prop :=
  ∀ n, P14248399477385003747.a n = A115346 n

end A115346

/-! ## A115346.P4143006954896832538

`∑{d}[A059268(n), A000045(log2(#))]`
-/

namespace A115346.P4143006954896832538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000045 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A115346.P4143006954896832538

namespace A115346

/-- `∑{d}[A059268(n), A000045(log2(#))]` -/
def P4143006954896832538.Spec : Prop :=
  ∀ n, P4143006954896832538.a n = A115346 n

end A115346

/-! ## A115346.P2117402553927561460

`A023443(A193588(n))`
-/

namespace A115346.P2117402553927561460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A193588 n).toNat

end

end A115346.P2117402553927561460

namespace A115346

/-- `A023443(A193588(n))` -/
def P2117402553927561460.Spec : Prop :=
  ∀ n, P2117402553927561460.a n = A115346 n

end A115346

/-!
# A115347: Fibonacci primes that are also primes when their digits are reversed.

The programs for A115347, there is no canonical definition to state claims against.
-/

/-! ## A115347.P7217994897925695947

`p?[A173268(n+1)]`
-/

namespace A115347.P7217994897925695947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115347.P7217994897925695947

/-!
# A115351: Sum of interior Multinomial Coefficient components.

The programs for A115351, there is no canonical definition to state claims against.
-/

/-! ## A115351.P223979756902868460

`A005651(n)-A000142(n)-A000085(n)-A000041(n)+3`
-/

namespace A115351.P223979756902868460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005651 n - A000142 n - A000085 n - A000041 n + 3

end

end A115351.P223979756902868460

/-! ## A115351.P5634492796374752583

`A326349(A182659(n))+A078672(n+7)`
-/

namespace A115351.P5634492796374752583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326349 (A182659 n).toNat + A078672 (n + 7)

end

end A115351.P5634492796374752583

/-!
# A115352: Concatenation of finite strings S_0, S_1, S_2, ..., where S_0 = {0} and for k >= 1, S_k is obtained from S_{k-1} by inserting the numbers 2^(k-1) through 2^k-1 after the initial 0.

The programs for A115352, the canonical program `A115352.P3098449421283651552` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115352 has offset 0).

The definition of A115352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115352.P10029179990923137399

`A233279(A038554(n))`
-/

namespace A115352.P10029179990923137399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A038554 n).toNat

end

end A115352.P10029179990923137399

namespace A115352

/-- `A233279(A038554(n))` -/
def P10029179990923137399.Spec : Prop :=
  ∀ n, P10029179990923137399.a n = A115352 n

end A115352

/-! ## A115352.P1956058330770287153

`A030109(A145342(n+1))`
-/

namespace A115352.P1956058330770287153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A145342 (n + 1)).toNat

end

end A115352.P1956058330770287153

namespace A115352

/-- `A030109(A145342(n+1))` -/
def P1956058330770287153.Spec : Prop :=
  ∀ n, P1956058330770287153.a n = A115352 n

end A115352

/-! ## A115352.P11635674174791402330

`A153142(n)-A053644(n)`
-/

namespace A115352.P11635674174791402330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 n - A053644 n

end

end A115352.P11635674174791402330

namespace A115352

/-- `A153142(n)-A053644(n)` -/
def P11635674174791402330.Spec : Prop :=
  ∀ n, P11635674174791402330.a n = A115352 n

end A115352

/-! ## A115352.P8525196327535152688

`A003817(n)-A381852(n)`
-/

namespace A115352.P8525196327535152688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A381852 n

end

end A115352.P8525196327535152688

namespace A115352

/-- `A003817(n)-A381852(n)` -/
def P8525196327535152688.Spec : Prop :=
  ∀ n, P8525196327535152688.a n = A115352 n

end A115352

/-! ## A115352.P4328506768641906995

`and(A153142(n), A266341(n))`
-/

namespace A115352.P4328506768641906995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153142 n) (A266341 n)

end

end A115352.P4328506768641906995

namespace A115352

/-- `and(A153142(n), A266341(n))` -/
def P4328506768641906995.Spec : Prop :=
  ∀ n, P4328506768641906995.a n = A115352 n

end A115352

/-! ## A115352.P477178677985131504

`A030109(A145341(n+1)+1)`
-/

namespace A115352.P477178677985131504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A145341 (n + 1) + 1).toNat

end

end A115352.P477178677985131504

namespace A115352

/-- `A030109(A145341(n+1)+1)` -/
def P477178677985131504.Spec : Prop :=
  ∀ n, P477178677985131504.a n = A115352 n

end A115352

/-! ## A115352.P2843218032818194333

`A030109(A049773(2*n+1))`
-/

namespace A115352.P2843218032818194333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A049773 (2 * n + 1)).toNat

end

end A115352.P2843218032818194333

namespace A115352

/-- `A030109(A049773(2*n+1))` -/
def P2843218032818194333.Spec : Prop :=
  ∀ n, P2843218032818194333.a n = A115352 n

end A115352

/-! ## A115352.P8219887681258361078

`A153142(n)-A072376(2*n)`
-/

namespace A115352.P8219887681258361078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 n - A072376 (2 * n)

end

end A115352.P8219887681258361078

namespace A115352

/-- `A153142(n)-A072376(2*n)` -/
def P8219887681258361078.Spec : Prop :=
  ∀ n, P8219887681258361078.a n = A115352 n

end A115352

/-! ## A115352.P11751528747657611401

`A030109(A030101(2*n+1)+1)`
-/

namespace A115352.P11751528747657611401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A030101 (2 * n + 1) + 1).toNat

end

end A115352.P11751528747657611401

namespace A115352

/-- `A030109(A030101(2*n+1)+1)` -/
def P11751528747657611401.Spec : Prop :=
  ∀ n, P11751528747657611401.a n = A115352 n

end A115352

/-! ## A115352.P10274793140926694020

`A030109(A030109(2*n+1)+1)`
-/

namespace A115352.P10274793140926694020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A030109 (2 * n + 1) + 1).toNat

end

end A115352.P10274793140926694020

namespace A115352

/-- `A030109(A030109(2*n+1)+1)` -/
def P10274793140926694020.Spec : Prop :=
  ∀ n, P10274793140926694020.a n = A115352 n

end A115352

/-! ## A115352.P2655924599812809658

`A153142(n)%A072376(2*n+1)`
-/

namespace A115352.P2655924599812809658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153142 n) (A072376 (2 * n + 1))

end

end A115352.P2655924599812809658

namespace A115352

/-- `A153142(n)%A072376(2*n+1)` -/
def P2655924599812809658.Spec : Prop :=
  ∀ n, P2655924599812809658.a n = A115352 n

end A115352

/-! ## A115352.P14420210169079276017

`A053645(A153142(A153151(n+1)))`
-/

namespace A115352.P14420210169079276017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A153142 (A153151 (n + 1)).toNat).toNat

end

end A115352.P14420210169079276017

namespace A115352

/-- `A053645(A153142(A153151(n+1)))` -/
def P14420210169079276017.Spec : Prop :=
  ∀ n, P14420210169079276017.a n = A115352 n

end A115352

/-! ## A115352.P9464287274213144208

`A053645(A153142(A080542(2*n+1)))`
-/

namespace A115352.P9464287274213144208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A153142 (A080542 (2 * n + 1)).toNat).toNat

end

end A115352.P9464287274213144208

namespace A115352

/-- `A053645(A153142(A080542(2*n+1)))` -/
def P9464287274213144208.Spec : Prop :=
  ∀ n, P9464287274213144208.a n = A115352 n

end A115352

/-! ## A115352.P12092875526438647743

`A036044(A036044(n)+A003817(n))/2`
-/

namespace A115352.P12092875526438647743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036044 (A036044 n + A003817 n).toNat : ℚ) / 2

end

end A115352.P12092875526438647743

namespace A115352

/-- `A036044(A036044(n)+A003817(n))/2` -/
def P12092875526438647743.Spec : Prop :=
  ∀ n, P12092875526438647743.a n = (A115352 n : ℚ)

end A115352

/-! ## A115352.P8913868378528019515

`A154446(A154439(n))-A072376(2*n)`
-/

namespace A115352.P8913868378528019515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154446 (A154439 n).toNat - A072376 (2 * n)

end

end A115352.P8913868378528019515

namespace A115352

/-- `A154446(A154439(n))-A072376(2*n)` -/
def P8913868378528019515.Spec : Prop :=
  ∀ n, P8913868378528019515.a n = A115352 n

end A115352

/-! ## A115352.P16669445577741490950

`A154444(A154441(n))-A072376(2*n)`
-/

namespace A115352.P16669445577741490950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154444 (A154441 n).toNat - A072376 (2 * n)

end

end A115352.P16669445577741490950

namespace A115352

/-- `A154444(A154441(n))-A072376(2*n)` -/
def P16669445577741490950.Spec : Prop :=
  ∀ n, P16669445577741490950.a n = A115352 n

end A115352

/-! ## A115352.P3098449421283651552

`A087734(n)+A038554(n-A087734(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115352

/-- `A087734(n)+A038554(n-A087734(n))` -/
def P3098449421283651552.Spec : Prop :=
  ∀ n, P3098449421283651552.a n = A115352 n

theorem P3098449421283651552.correct : P3098449421283651552.Spec := by
  intro n
  simp only [A115352]

end A115352

/-! ## A115352.P13160040180476911893

`A266341(A153142(n)+A266341(n)-n)`
-/

namespace A115352.P13160040180476911893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266341 (A153142 n + (A266341 n - (n : ℤ))).toNat

end

end A115352.P13160040180476911893

namespace A115352

/-- `A266341(A153142(n)+A266341(n)-n)` -/
def P13160040180476911893.Spec : Prop :=
  ∀ n, P13160040180476911893.a n = A115352 n

end A115352

/-! ## A115352.P13808114503249059014

`A266341(A153142(n)-(n-A266341(n)))`
-/

namespace A115352.P13808114503249059014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266341 (A153142 n - ((n : ℤ) - A266341 n)).toNat

end

end A115352.P13808114503249059014

namespace A115352

/-- `A266341(A153142(n)-(n-A266341(n)))` -/
def P13808114503249059014.Spec : Prop :=
  ∀ n, P13808114503249059014.a n = A115352 n

end A115352

/-! ## A115352.P14806594710487449238

`A053645(n+1)+A153142(n)-A153152(n)`
-/

namespace A115352.P14806594710487449238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1) + (A153142 n - A153152 n)

end

end A115352.P14806594710487449238

namespace A115352

/-- `A053645(n+1)+A153142(n)-A153152(n)` -/
def P14806594710487449238.Spec : Prop :=
  ∀ n, P14806594710487449238.a n = A115352 n

end A115352

/-!
# A115353: The mode of the digits of n (using smallest mode if multimodal).

The programs for A115353, there is no canonical definition to state claims against.
-/

/-! ## A115353.P6909565051591438450

`A376556(A378682(n+1))+A054054(n)`
-/

namespace A115353.P6909565051591438450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376556 (A378682 (n + 1)).toNat + A054054 n

end

end A115353.P6909565051591438450

/-! ## A115353.P924345437248341478

`A010879(A193581(n)+A082216(n))`
-/

namespace A115353.P924345437248341478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A193581 n + A082216 n).toNat

end

end A115353.P924345437248341478

/-! ## A115353.P11108173528820337278

`A219905(A264668(n))+A054054(n)`
-/

namespace A115353.P11108173528820337278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219905 (A264668 n).toNat + A054054 n

end

end A115353.P11108173528820337278

/-! ## A115353.P11296444032358980382

`A088133(n)-A010879(A047842(n))`
-/

namespace A115353.P11296444032358980382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 n - A010879 (A047842 n).toNat

end

end A115353.P11296444032358980382

/-! ## A115353.P8905389667827080090

`A088133(n)-A054055(A082216(n))`
-/

namespace A115353.P8905389667827080090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 n - A054055 (A082216 n).toNat

end

end A115353.P8905389667827080090

/-! ## A115353.P3886851714757522232

`gcd(A257297(A004086(n)), A265525(n))`
-/

namespace A115353.P3886851714757522232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257297 (A004086 n).toNat) (A265525 n)

end

end A115353.P3886851714757522232

/-!
# A115356: Matrix (1,x)+(x,x^2) in Riordan array notation.

The programs for A115356, the canonical program `A115356.P7662483456483370118` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115356 has offset 0).

The definition of A115356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115356.P7307609025972178199

`char[∪[2*n², ∑[n]]-1]`
-/

namespace A115356.P7307609025972178199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A115356.P7307609025972178199

namespace A115356

/-- `char[∪[2*n², ∑[n]]-1]` -/
def P7307609025972178199.Spec : Prop :=
  ∀ n, (P7307609025972178199.a n : ℤ) = A115356 n

end A115356

/-! ## A115356.P12463794217254377770

`char[2*n²-1]+char[∑[n-1]]`
-/

namespace A115356.P12463794217254377770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A115356.P12463794217254377770

namespace A115356

/-- `char[2*n²-1]+char[∑[n-1]]` -/
def P12463794217254377770.Spec : Prop :=
  ∀ n, (P12463794217254377770.a n : ℤ) = A115356 n

end A115356

/-! ## A115356.P16001391507410023639

`char[round((and(1, ∑[n])-n)²/8)-1]`
-/

namespace A115356.P16001391507410023639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - (n : ℤ)) ^ 2 : ℚ) / 8) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A115356.P16001391507410023639

namespace A115356

/-- `char[round((and(1, ∑[n])-n)²/8)-1]` -/
def P16001391507410023639.Spec : Prop :=
  ∀ n, (P16001391507410023639.a n : ℤ) = A115356 n

end A115356

/-! ## A115356.P14393162386922907726

`or(char[2*n²-1], char[∑[n-1]])`
-/

namespace A115356.P14393162386922907726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = (n : ℤ) then 1 else 0) (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A115356.P14393162386922907726

namespace A115356

/-- `or(char[2*n²-1], char[∑[n-1]])` -/
def P14393162386922907726.Spec : Prop :=
  ∀ n, (P14393162386922907726.a n : ℤ) = A115356 n

end A115356

/-! ## A115356.P17658899006467350045

`char[∑[round(lcm(n, n²%8)/4)]-1]`
-/

namespace A115356.P17658899006467350045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm n (n ^ 2 % 8) : ℚ) / 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A115356.P17658899006467350045

namespace A115356

/-- `char[∑[round(lcm(n, n²%8)/4)]-1]` -/
def P17658899006467350045.Spec : Prop :=
  ∀ n, (P17658899006467350045.a n : ℤ) = A115356 n

end A115356

/-! ## A115356.P9842618510423019706

`xor(char[2*n²-1], char[∑[n-1]])`
-/

namespace A115356.P9842618510423019706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (if ∃ j, f1 j = (n : ℤ) then 1 else 0) (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A115356.P9842618510423019706

namespace A115356

/-- `xor(char[2*n²-1], char[∑[n-1]])` -/
def P9842618510423019706.Spec : Prop :=
  ∀ n, (P9842618510423019706.a n : ℤ) = A115356 n

end A115356

/-! ## A115356.P35944535805616981

`abs(A115359(n))`
-/

namespace A115356.P35944535805616981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115359 n|

end

end A115356.P35944535805616981

namespace A115356

/-- `abs(A115359(n))` -/
def P35944535805616981.Spec : Prop :=
  ∀ n, P35944535805616981.a n = A115356 n

end A115356

/-! ## A115356.P7662483456483370118

`A114114(n)%2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A115356

/-- `A114114(n)%2` -/
def P7662483456483370118.Spec : Prop :=
  ∀ n, P7662483456483370118.a n = A115356 n

theorem P7662483456483370118.correct : P7662483456483370118.Spec := by
  intro n
  simp only [A115356]

end A115356

/-! ## A115356.P7751869291643723540

`char[A159915(n)-1]`
-/

namespace A115356.P7751869291643723540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159915 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A115356.P7751869291643723540

namespace A115356

/-- `char[A159915(n)-1]` -/
def P7751869291643723540.Spec : Prop :=
  ∀ n, (P7751869291643723540.a n : ℤ) = A115356 n

end A115356

/-! ## A115356.P17142194649435135773

`char[lt[A355090(n), 2]]`
-/

namespace A115356.P17142194649435135773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355090 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115356.P17142194649435135773

namespace A115356

/-- `char[lt[A355090(n), 2]]` -/
def P17142194649435135773.Spec : Prop :=
  ∀ n, (P17142194649435135773.a n : ℤ) = A115356 n

end A115356

/-! ## A115356.P2934537264558009540

`A054523(n+1)%2`
-/

namespace A115356.P2934537264558009540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054523 (n + 1)) 2

end

end A115356.P2934537264558009540

namespace A115356

/-- `A054523(n+1)%2` -/
def P2934537264558009540.Spec : Prop :=
  ∀ n, P2934537264558009540.a n = A115356 n

end A115356

/-! ## A115356.P15886968445982296585

`A340805(n+1)%2`
-/

namespace A115356.P15886968445982296585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340805 (n + 1)) 2

end

end A115356.P15886968445982296585

namespace A115356

/-- `A340805(n+1)%2` -/
def P15886968445982296585.Spec : Prop :=
  ∀ n, P15886968445982296585.a n = A115356 n

end A115356

/-! ## A115356.P11688873711168362124

`char[Δ[A159914(n)]-1]`
-/

namespace A115356.P11688873711168362124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159914 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A115356.P11688873711168362124

namespace A115356

/-- `char[Δ[A159914(n)]-1]` -/
def P11688873711168362124.Spec : Prop :=
  ∀ n, (P11688873711168362124.a n : ℤ) = A115356 n

end A115356

/-! ## A115356.P7540495184525540690

`char[eq[0, Δ[A007318(n)]]]`
-/

namespace A115356.P7540495184525540690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115356.P7540495184525540690

namespace A115356

/-- `char[eq[0, Δ[A007318(n)]]]` -/
def P7540495184525540690.Spec : Prop :=
  ∀ n, (P7540495184525540690.a n : ℤ) = A115356 n

end A115356

/-! ## A115356.P7291859210548263614

`round(1/A051537(n+1))`
-/

namespace A115356.P7291859210548263614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A051537 (n + 1) : ℚ))

end

end A115356.P7291859210548263614

namespace A115356

/-- `round(1/A051537(n+1))` -/
def P7291859210548263614.Spec : Prop :=
  ∀ n, P7291859210548263614.a n = A115356 n

end A115356

/-! ## A115356.P7190780617722742356

`char[eq[1, A168532(n+1)]]`
-/

namespace A115356.P7190780617722742356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115356.P7190780617722742356

namespace A115356

/-- `char[eq[1, A168532(n+1)]]` -/
def P7190780617722742356.Spec : Prop :=
  ∀ n, (P7190780617722742356.a n : ℤ) = A115356 n

end A115356

/-! ## A115356.P8361608481240816395

`C(2, A286158(n+1)-1)`
-/

namespace A115356.P8361608481240816395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A286158 (n + 1) - 1).toNat

end

end A115356.P8361608481240816395

namespace A115356

/-- `C(2, A286158(n+1)-1)` -/
def P8361608481240816395.Spec : Prop :=
  ∀ n, (P8361608481240816395.a n : ℤ) = A115356 n

end A115356

/-! ## A115356.P18242481545508863510

`A000035(A054523(n+1))`
-/

namespace A115356.P18242481545508863510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A054523 (n + 1)).toNat

end

end A115356.P18242481545508863510

namespace A115356

/-- `A000035(A054523(n+1))` -/
def P18242481545508863510.Spec : Prop :=
  ∀ n, P18242481545508863510.a n = A115356 n

end A115356

/-! ## A115356.P16449304513220502030

`A000035(A340805(n+1))`
-/

namespace A115356.P16449304513220502030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A340805 (n + 1)).toNat

end

end A115356.P16449304513220502030

namespace A115356

/-- `A000035(A340805(n+1))` -/
def P16449304513220502030.Spec : Prop :=
  ∀ n, P16449304513220502030.a n = A115356 n

end A115356

/-!
# A115357: Period 6: repeat [1, 1, 1, 0, 2, 0].

The programs for A115357, the canonical program `A115357.P18141450620636292629` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115357 has offset 0).

The definition of A115357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115357.P18141450620636292629

`∑[xor(1, n)]%3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115357

/-- `∑[xor(1, n)]%3` -/
def P18141450620636292629.Spec : Prop :=
  ∀ n, (P18141450620636292629.a n : ℤ) = A115357 n

theorem P18141450620636292629.correct : P18141450620636292629.Spec := by
  intro n
  simp only [A115357]

end A115357

/-!
# A115358: Inverse of matrix (1,x)+(x,x^2) (expressed in Riordan array notation).

The programs for A115358, the canonical program `A115358.P2052472132167437003` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115358 has offset 0).

The definition of A115358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115358.P7764216969054345116

`A154269(A051537(n+1))`
-/

namespace A115358.P7764216969054345116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A051537 (n + 1)).toNat

end

end A115358.P7764216969054345116

namespace A115358

/-- `A154269(A051537(n+1))` -/
def P7764216969054345116.Spec : Prop :=
  ∀ n, P7764216969054345116.a n = A115358 n

end A115358

/-! ## A115358.P2663356129702094862

`A115361(n)*A117200(n)`
-/

namespace A115358.P2663356129702094862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A117200 n

end

end A115358.P2663356129702094862

namespace A115358

/-- `A115361(n)*A117200(n)` -/
def P2663356129702094862.Spec : Prop :=
  ∀ n, P2663356129702094862.a n = A115358 n

end A115358

/-! ## A115358.P9750392390871782760

`A304438(3*A051537(n+1))`
-/

namespace A115358.P9750392390871782760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (3 * A051537 (n + 1)).toNat

end

end A115358.P9750392390871782760

namespace A115358

/-- `A304438(3*A051537(n+1))` -/
def P9750392390871782760.Spec : Prop :=
  ∀ n, P9750392390871782760.a n = A115358 n

end A115358

/-! ## A115358.P2052472132167437003

`A051731(n+1)*A154269(A010766(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A115358

/-- `A051731(n+1)*A154269(A010766(n+1))` -/
def P2052472132167437003.Spec : Prop :=
  ∀ n, P2052472132167437003.a n = A115358 n

theorem P2052472132167437003.correct : P2052472132167437003.Spec := by
  intro n
  simp only [A115358]

end A115358

/-! ## A115358.P6272001908861013801

`A103994(n+1)*A154269(A010766(n+1))`
-/

namespace A115358.P6272001908861013801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103994 (n + 1) * A154269 (A010766 (n + 1)).toNat

end

end A115358.P6272001908861013801

namespace A115358

/-- `A103994(n+1)*A154269(A010766(n+1))` -/
def P6272001908861013801.Spec : Prop :=
  ∀ n, P6272001908861013801.a n = A115358 n

end A115358

/-! ## A115358.P11728018793020570560

`A154269(or(A010766(n+1), A049834(n+1)))`
-/

namespace A115358.P11728018793020570560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (Int.lor (A010766 (n + 1)) (A049834 (n + 1))).toNat

end

end A115358.P11728018793020570560

namespace A115358

/-- `A154269(or(A010766(n+1), A049834(n+1)))` -/
def P11728018793020570560.Spec : Prop :=
  ∀ n, P11728018793020570560.a n = A115358 n

end A115358

/-! ## A115358.P14015034860948462013

`A129353(n+1)-xor(A115361(n), A129353(n+1))`
-/

namespace A115358.P14015034860948462013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129353 (n + 1) - Int.xor (A115361 n) (A129353 (n + 1))

end

end A115358.P14015034860948462013

namespace A115358

/-- `A129353(n+1)-xor(A115361(n), A129353(n+1))` -/
def P14015034860948462013.Spec : Prop :=
  ∀ n, P14015034860948462013.a n = A115358 n

end A115358

/-! ## A115358.P11342034397678178775

`A129501(n+1)-xor(A115361(n), A129501(n+1))`
-/

namespace A115358.P11342034397678178775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129501 (n + 1) - Int.xor (A115361 n) (A129501 (n + 1))

end

end A115358.P11342034397678178775

namespace A115358

/-- `A129501(n+1)-xor(A115361(n), A129501(n+1))` -/
def P11342034397678178775.Spec : Prop :=
  ∀ n, P11342034397678178775.a n = A115358 n

end A115358

/-! ## A115358.P6434412174215637978

`A131851(A048298(A126988(n+1))²)`
-/

namespace A115358.P6434412174215637978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A048298 (A126988 (n + 1)).toNat ^ 2).toNat

end

end A115358.P6434412174215637978

namespace A115358

/-- `A131851(A048298(A126988(n+1))²)` -/
def P6434412174215637978.Spec : Prop :=
  ∀ n, P6434412174215637978.a n = A115358 n

end A115358

/-! ## A115358.P16908562336229429188

`A154282(A085383(n+1))`
-/

namespace A115358.P16908562336229429188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154282 (A085383 (n + 1)).toNat

end

end A115358.P16908562336229429188

namespace A115358

/-- `A154282(A085383(n+1))` -/
def P16908562336229429188.Spec : Prop :=
  ∀ n, P16908562336229429188.a n = A115358 n

end A115358

/-! ## A115358.P16252448289149046814

`A030201(A048298(A126988(n+1)²))`
-/

namespace A115358.P16252448289149046814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A048298 (A126988 (n + 1) ^ 2).toNat).toNat

end

end A115358.P16252448289149046814

namespace A115358

/-- `A030201(A048298(A126988(n+1)²))` -/
def P16252448289149046814.Spec : Prop :=
  ∀ n, P16252448289149046814.a n = A115358 n

end A115358

/-! ## A115358.P5130602366919880106

`A129265(n+1)-xor(A115361(n), A129265(n+1))`
-/

namespace A115358.P5130602366919880106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129265 (n + 1) - Int.xor (A115361 n) (A129265 (n + 1))

end

end A115358.P5130602366919880106

namespace A115358

/-- `A129265(n+1)-xor(A115361(n), A129265(n+1))` -/
def P5130602366919880106.Spec : Prop :=
  ∀ n, P5130602366919880106.a n = A115358 n

end A115358

/-! ## A115358.P5672434976769110878

`Δ[A129265(n+1)]^A152487(n)`
-/

namespace A115358.P5672434976769110878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A152487 n : ℤ)

end

end A115358.P5672434976769110878

namespace A115358

/-- `Δ[A129265(n+1)]^A152487(n)` -/
def P5672434976769110878.Spec : Prop :=
  ∀ n, P5672434976769110878.a n = (A115358 n : ℚ)

end A115358

/-!
# A115359: Matrix (1,x)-(x,x^2) in Riordan array notation.

The programs for A115359, the canonical program `A115359.P16582716396112812378` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115359 has offset 0).

The definition of A115359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115359.P17340806665332199618

`char[∑[n-1]]-Δ[floor(sqrt(n/2))]`
-/

namespace A115359.P17340806665332199618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n : ℚ) / 2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (f3 (n + 1) - f3 n)

end

end A115359.P17340806665332199618

namespace A115359

/-- `char[∑[n-1]]-Δ[floor(sqrt(n/2))]` -/
def P17340806665332199618.Spec : Prop :=
  ∀ n, P17340806665332199618.a n = A115359 n

end A115359

/-! ## A115359.P5841037014373397708

`ceil(1/(2-A286158(n+1)))`
-/

namespace A115359.P5841037014373397708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (2 - A286158 (n + 1) : ℚ)⌉

end

end A115359.P5841037014373397708

namespace A115359

/-- `ceil(1/(2-A286158(n+1)))` -/
def P5841037014373397708.Spec : Prop :=
  ∀ n, P5841037014373397708.a n = A115359 n

end A115359

/-! ## A115359.P17927760131533675918

`Δ[A008624(ceil(sqrt(8*(n+1))))]`
-/

namespace A115359.P17927760131533675918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115359.P17927760131533675918

namespace A115359

/-- `Δ[A008624(ceil(sqrt(8*(n+1))))]` -/
def P17927760131533675918.Spec : Prop :=
  ∀ n, P17927760131533675918.a n = A115359 n

end A115359

/-! ## A115359.P7651224607328034303

`A003816(A143316(n+1))`
-/

namespace A115359.P7651224607328034303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (A143316 (n + 1)).toNat

end

end A115359.P7651224607328034303

namespace A115359

/-- `A003816(A143316(n+1))` -/
def P7651224607328034303.Spec : Prop :=
  ∀ n, P7651224607328034303.a n = A115359 n

end A115359

/-! ## A115359.P8337325018519297779

`A154955(A059026(n+1))`
-/

namespace A115359.P8337325018519297779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A059026 (n + 1)).toNat

end

end A115359.P8337325018519297779

namespace A115359

/-- `A154955(A059026(n+1))` -/
def P8337325018519297779.Spec : Prop :=
  ∀ n, P8337325018519297779.a n = A115359 n

end A115359

/-! ## A115359.P16582716396112812378

`A098157(n)*A115358(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A115359

/-- `A098157(n)*A115358(n)` -/
def P16582716396112812378.Spec : Prop :=
  ∀ n, P16582716396112812378.a n = A115359 n

theorem P16582716396112812378.correct : P16582716396112812378.Spec := by
  intro n
  simp only [A115359]

end A115359

/-! ## A115359.P4234067566557637472

`A098157(n)*A117200(n)`
-/

namespace A115359.P4234067566557637472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098157 n * A117200 n

end

end A115359.P4234067566557637472

namespace A115359

/-- `A098157(n)*A117200(n)` -/
def P4234067566557637472.Spec : Prop :=
  ∀ n, P4234067566557637472.a n = A115359 n

end A115359

/-! ## A115359.P13416146344125263975

`A114114(n)*A115358(n)`
-/

namespace A115359.P13416146344125263975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114114 n * A115358 n

end

end A115359.P13416146344125263975

namespace A115359

/-- `A114114(n)*A115358(n)` -/
def P13416146344125263975.Spec : Prop :=
  ∀ n, P13416146344125263975.a n = A115359 n

end A115359

/-! ## A115359.P5012513518057703156

`A115356(n)*A115358(n)`
-/

namespace A115359.P5012513518057703156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115356 n * A115358 n

end

end A115359.P5012513518057703156

namespace A115359

/-- `A115356(n)*A115358(n)` -/
def P5012513518057703156.Spec : Prop :=
  ∀ n, P5012513518057703156.a n = A115359 n

end A115359

/-! ## A115359.P9512138268865971094

`A114114(n)*A117200(n)`
-/

namespace A115359.P9512138268865971094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114114 n * A117200 n

end

end A115359.P9512138268865971094

namespace A115359

/-- `A114114(n)*A117200(n)` -/
def P9512138268865971094.Spec : Prop :=
  ∀ n, P9512138268865971094.a n = A115359 n

end A115359

/-! ## A115359.P11814556419229811255

`A115356(n)*A117200(n)`
-/

namespace A115359.P11814556419229811255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115356 n * A117200 n

end

end A115359.P11814556419229811255

namespace A115359

/-- `A115356(n)*A117200(n)` -/
def P11814556419229811255.Spec : Prop :=
  ∀ n, P11814556419229811255.a n = A115359 n

end A115359

/-! ## A115359.P13342441771231694629

`A115358(n)*A117198(n)`
-/

namespace A115359.P13342441771231694629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115358 n * A117198 n

end

end A115359.P13342441771231694629

namespace A115359

/-- `A115358(n)*A117198(n)` -/
def P13342441771231694629.Spec : Prop :=
  ∀ n, P13342441771231694629.a n = A115359 n

end A115359

/-! ## A115359.P744519985984425754

`A115358(n)*A199881(n)`
-/

namespace A115359.P744519985984425754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115358 n * A199881 n

end

end A115359.P744519985984425754

namespace A115359

/-- `A115358(n)*A199881(n)` -/
def P744519985984425754.Spec : Prop :=
  ∀ n, P744519985984425754.a n = A115359 n

end A115359

/-! ## A115359.P265479811444132264

`A117200(n)*A199881(n)`
-/

namespace A115359.P265479811444132264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117200 n * A199881 n

end

end A115359.P265479811444132264

namespace A115359

/-- `A117200(n)*A199881(n)` -/
def P265479811444132264.Spec : Prop :=
  ∀ n, P265479811444132264.a n = A115359 n

end A115359

/-! ## A115359.P7268693391994955452

`A030528(n+1)*A115358(n)`
-/

namespace A115359.P7268693391994955452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) * A115358 n

end

end A115359.P7268693391994955452

namespace A115359

/-- `A030528(n+1)*A115358(n)` -/
def P7268693391994955452.Spec : Prop :=
  ∀ n, P7268693391994955452.a n = A115359 n

end A115359

/-! ## A115359.P2479152306301253

`A030528(n+1)*A117200(n)`
-/

namespace A115359.P2479152306301253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) * A117200 n

end

end A115359.P2479152306301253

namespace A115359

/-- `A030528(n+1)*A117200(n)` -/
def P2479152306301253.Spec : Prop :=
  ∀ n, P2479152306301253.a n = A115359 n

end A115359

/-! ## A115359.P9429476157269766555

`A054525(n+1)*A098157(n)`
-/

namespace A115359.P9429476157269766555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A098157 n

end

end A115359.P9429476157269766555

namespace A115359

/-- `A054525(n+1)*A098157(n)` -/
def P9429476157269766555.Spec : Prop :=
  ∀ n, P9429476157269766555.a n = A115359 n

end A115359

/-! ## A115359.P16825375857675576791

`A054525(n+1)*A114114(n)`
-/

namespace A115359.P16825375857675576791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A114114 n

end

end A115359.P16825375857675576791

namespace A115359

/-- `A054525(n+1)*A114114(n)` -/
def P16825375857675576791.Spec : Prop :=
  ∀ n, P16825375857675576791.a n = A115359 n

end A115359

/-! ## A115359.P18157953568856046926

`A054525(n+1)*A115356(n)`
-/

namespace A115359.P18157953568856046926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A115356 n

end

end A115359.P18157953568856046926

namespace A115359

/-- `A054525(n+1)*A115356(n)` -/
def P18157953568856046926.Spec : Prop :=
  ∀ n, P18157953568856046926.a n = A115359 n

end A115359

/-! ## A115359.P3185617134838321856

`A054525(n+1)*A115361(n)`
-/

namespace A115359.P3185617134838321856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A115361 n

end

end A115359.P3185617134838321856

namespace A115359

/-- `A054525(n+1)*A115361(n)` -/
def P3185617134838321856.Spec : Prop :=
  ∀ n, P3185617134838321856.a n = A115359 n

end A115359

/-!
# A115360: Period 6: repeat [1,-1,1,0,0,0].

The programs for A115360, the canonical program `A115360.P12689632081260922629` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115360 has offset 0).

The definition of A115360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115360.P12689632081260922629

`(floor(n/6)-floor((n-3)/6))*(-1)^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115360

/-- `(floor(n/6)-floor((n-3)/6))*(-1)^n` -/
def P12689632081260922629.Spec : Prop :=
  ∀ n, P12689632081260922629.a n = A115360 n

theorem P12689632081260922629.correct : P12689632081260922629.Spec := by
  intro n
  simp only [A115360]

end A115360

/-!
# A115361: Inverse of matrix (1,x)-(x,x^2) (expressed in Riordan array notation).

The programs for A115361, the canonical program `A115361.P11540176887858945007` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115361 has offset 0).

The definition of A115361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115361.P11540176887858945007

`abs(A115358(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A115361

/-- `abs(A115358(n))` -/
def P11540176887858945007.Spec : Prop :=
  ∀ n, P11540176887858945007.a n = A115361 n

theorem P11540176887858945007.correct : P11540176887858945007.Spec := by
  intro n
  simp only [A115361]

end A115361

/-! ## A115361.P17932357345846948953

`and(1, A114115(n))`
-/

namespace A115361.P17932357345846948953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A114115 n)

end

end A115361.P17932357345846948953

namespace A115361

/-- `and(1, A114115(n))` -/
def P17932357345846948953.Spec : Prop :=
  ∀ n, P17932357345846948953.a n = A115361 n

end A115361

/-! ## A115361.P17877448922631533122

`and(1, A129691(n+1))`
-/

namespace A115361.P17877448922631533122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A129691 (n + 1))

end

end A115361.P17877448922631533122

namespace A115361

/-- `and(1, A129691(n+1))` -/
def P17877448922631533122.Spec : Prop :=
  ∀ n, P17877448922631533122.a n = A115361 n

end A115361

/-! ## A115361.P3069234402660633214

`A115358(char[1]+n)²`
-/

namespace A115361.P3069234402660633214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115358 ((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2

end

end A115361.P3069234402660633214

namespace A115361

/-- `A115358(char[1]+n)²` -/
def P3069234402660633214.Spec : Prop :=
  ∀ n, P3069234402660633214.a n = A115361 n

end A115361

/-! ## A115361.P10743316489293880160

`dr(A115358(n-char[1]))`
-/

namespace A115361.P10743316489293880160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A115358 (n - (if ∃ j, f1 j = n then 1 else 0)))

end

end A115361.P10743316489293880160

namespace A115361

/-- `dr(A115358(n-char[1]))` -/
def P10743316489293880160.Spec : Prop :=
  ∀ n, (P10743316489293880160.a n : ℤ) = A115361 n

end A115361

/-! ## A115361.P10716693095453896200

`A209229(A126988(n+1))`
-/

namespace A115361.P10716693095453896200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A126988 (n + 1)).toNat

end

end A115361.P10716693095453896200

namespace A115361

/-- `A209229(A126988(n+1))` -/
def P10716693095453896200.Spec : Prop :=
  ∀ n, P10716693095453896200.a n = A115361 n

end A115361

/-! ## A115361.P4041007503966684145

`A209229(A280499(n+1))`
-/

namespace A115361.P4041007503966684145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A280499 (n + 1)).toNat

end

end A115361.P4041007503966684145

namespace A115361

/-- `A209229(A280499(n+1))` -/
def P4041007503966684145.Spec : Prop :=
  ∀ n, P4041007503966684145.a n = A115361 n

end A115361

/-! ## A115361.P12513727568184445230

`gcd(A000038(n), A115358(n))`
-/

namespace A115361.P12513727568184445230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A115358 n)

end

end A115361.P12513727568184445230

namespace A115361

/-- `gcd(A000038(n), A115358(n))` -/
def P12513727568184445230.Spec : Prop :=
  ∀ n, (P12513727568184445230.a n : ℤ) = A115361 n

end A115361

/-! ## A115361.P16595178430568057852

`and(A101443(n), A115358(n))`
-/

namespace A115361.P16595178430568057852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101443 n) (A115358 n)

end

end A115361.P16595178430568057852

namespace A115361

/-- `and(A101443(n), A115358(n))` -/
def P16595178430568057852.Spec : Prop :=
  ∀ n, P16595178430568057852.a n = A115361 n

end A115361

/-! ## A115361.P9097153640419687077

`A063524(A129691(n+1)²)`
-/

namespace A115361.P9097153640419687077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A129691 (n + 1) ^ 2).toNat

end

end A115361.P9097153640419687077

namespace A115361

/-- `A063524(A129691(n+1)²)` -/
def P9097153640419687077.Spec : Prop :=
  ∀ n, P9097153640419687077.a n = A115361 n

end A115361

/-! ## A115361.P11783819403234717245

`A154269(A051537(n+1))²`
-/

namespace A115361.P11783819403234717245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A051537 (n + 1)).toNat ^ 2

end

end A115361.P11783819403234717245

namespace A115361

/-- `A154269(A051537(n+1))²` -/
def P11783819403234717245.Spec : Prop :=
  ∀ n, P11783819403234717245.a n = A115361 n

end A115361

/-! ## A115361.P15581137865300563229

`and(1, A049586(n)*A115358(n))`
-/

namespace A115361.P15581137865300563229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A049586 n * A115358 n)

end

end A115361.P15581137865300563229

namespace A115361

/-- `and(1, A049586(n)*A115358(n))` -/
def P15581137865300563229.Spec : Prop :=
  ∀ n, P15581137865300563229.a n = A115361 n

end A115361

/-! ## A115361.P8395533576996463319

`A188023(n+1)/A002260(n+1)`
-/

namespace A115361.P8395533576996463319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188023 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A115361.P8395533576996463319

namespace A115361

/-- `A188023(n+1)/A002260(n+1)` -/
def P8395533576996463319.Spec : Prop :=
  ∀ n, P8395533576996463319.a n = (A115361 n : ℚ)

end A115361

/-! ## A115361.P4054116630128834216

`A188023(n+1)/A050873(n+1)`
-/

namespace A115361.P4054116630128834216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188023 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A115361.P4054116630128834216

namespace A115361

/-- `A188023(n+1)/A050873(n+1)` -/
def P4054116630128834216.Spec : Prop :=
  ∀ n, P4054116630128834216.a n = (A115361 n : ℚ)

end A115361

/-! ## A115361.P4246070110594991646

`A188023(n+1)/A123275(n+1)`
-/

namespace A115361.P4246070110594991646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188023 (n + 1) : ℚ) / (A123275 (n + 1) : ℚ)

end

end A115361.P4246070110594991646

namespace A115361

/-- `A188023(n+1)/A123275(n+1)` -/
def P4246070110594991646.Spec : Prop :=
  ∀ n, P4246070110594991646.a n = (A115361 n : ℚ)

end A115361

/-! ## A115361.P15808760420772848247

`A209229(A129558(n+1)+A054523(n+1))`
-/

namespace A115361.P15808760420772848247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A129558 (n + 1) + A054523 (n + 1)).toNat

end

end A115361.P15808760420772848247

namespace A115361

/-- `A209229(A129558(n+1)+A054523(n+1))` -/
def P15808760420772848247.Spec : Prop :=
  ∀ n, P15808760420772848247.a n = A115361 n

end A115361

/-! ## A115361.P11820434953496378659

`A063524(A129691(n+1)*A129691(n+1))`
-/

namespace A115361.P11820434953496378659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A129691 (n + 1) * A129691 (n + 1)).toNat

end

end A115361.P11820434953496378659

namespace A115361

/-- `A063524(A129691(n+1)*A129691(n+1))` -/
def P11820434953496378659.Spec : Prop :=
  ∀ n, P11820434953496378659.a n = A115361 n

end A115361

/-! ## A115361.P16694291626634112779

`lcm(A002260(n+1), A115358(n))/A002260(n+1)`
-/

namespace A115361.P16694291626634112779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002260 (n + 1)) (A115358 n) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A115361.P16694291626634112779

namespace A115361

/-- `lcm(A002260(n+1), A115358(n))/A002260(n+1)` -/
def P16694291626634112779.Spec : Prop :=
  ∀ n, P16694291626634112779.a n = (A115361 n : ℚ)

end A115361

/-! ## A115361.P5449994752108832437

`gcd(A155103(n+1), A188023(n+1))`
-/

namespace A115361.P5449994752108832437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155103 (n + 1)) (A188023 (n + 1))

end

end A115361.P5449994752108832437

namespace A115361

/-- `gcd(A155103(n+1), A188023(n+1))` -/
def P5449994752108832437.Spec : Prop :=
  ∀ n, (P5449994752108832437.a n : ℤ) = A115361 n

end A115361

/-! ## A115361.P3523485593375997488

`log2(gcd(2, A054372(n+1)))`
-/

namespace A115361.P3523485593375997488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A054372 (n + 1)) : ℝ)

end

end A115361.P3523485593375997488

namespace A115361

/-- `log2(gcd(2, A054372(n+1)))` -/
def P3523485593375997488.Spec : Prop :=
  ∀ n, P3523485593375997488.a n = (A115361 n : ℝ)

end A115361

/-!
# A115362: Row sums of ((1,x) + (x,x^2))^(-1)*((1,x)-(x,x^2))^(-1) (using Riordan array notation).

The programs for A115362, the canonical program `A115362.P12022203208950917127` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115362 has offset 0).

The definition of A115362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115362.P11949416553913065608

`1+A235127(1+n)`
-/

namespace A115362.P11949416553913065608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A235127 (1 + n)

end

end A115362.P11949416553913065608

namespace A115362

/-- `1+A235127(1+n)` -/
def P11949416553913065608.Spec : Prop :=
  ∀ n, P11949416553913065608.a n = A115362 n

end A115362

/-! ## A115362.P12022203208950917127

`1/3*(4+A053737(n)-A053737(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115362

/-- `1/3*(4+A053737(n)-A053737(n+1))` -/
def P12022203208950917127.Spec : Prop :=
  ∀ n, P12022203208950917127.a n = (A115362 n : ℚ)

end A115362

/-! ## A115362.P12610063927335303481

`val(n+1, 4)+1`
-/

namespace A115362.P12610063927335303481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 4 + 1

end

end A115362.P12610063927335303481

namespace A115362

/-- `val(n+1, 4)+1` -/
def P12610063927335303481.Spec : Prop :=
  ∀ n, (P12610063927335303481.a n : ℤ) = A115362 n

end A115362

/-! ## A115362.P15901213705007474770

`val(∑[4*or(3, n)], 4)`
-/

namespace A115362.P15901213705007474770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A115362.P15901213705007474770

namespace A115362

/-- `val(∑[4*or(3, n)], 4)` -/
def P15901213705007474770.Spec : Prop :=
  ∀ n, (P15901213705007474770.a n : ℤ) = A115362 n

end A115362

/-! ## A115362.P12957102991795495232

`val(4*∑[record[xor(3, n)]], 4)`
-/

namespace A115362.P12957102991795495232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (4 * (∑ j ∈ Finset.range (n + 1), f1 j)) 4

end

end A115362.P12957102991795495232

namespace A115362

/-- `val(4*∑[record[xor(3, n)]], 4)` -/
def P12957102991795495232.Spec : Prop :=
  ∀ n, (P12957102991795495232.a n : ℤ) = A115362 n

end A115362

/-! ## A115362.P10279025100698132062

`Δ[a(floor(n/4))+n]` with `a(0)=0`
-/

namespace A115362.P10279025100698132062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 4⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A115362.P10279025100698132062

namespace A115362

/-- `Δ[a(floor(n/4))+n]` -/
def P10279025100698132062.Spec : Prop :=
  ∀ n, P10279025100698132062.a n = A115362 n

end A115362

/-! ## A115362.P5662168609830400797

`val(∑[(2-(2*n)²)²], 4)`
-/

namespace A115362.P5662168609830400797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((2 * n) ^ 2 : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 4

end

end A115362.P5662168609830400797

namespace A115362

/-- `val(∑[(2-(2*n)²)²], 4)` -/
def P5662168609830400797.Spec : Prop :=
  ∀ n, (P5662168609830400797.a n : ℤ) = A115362 n

end A115362

/-! ## A115362.P17294795831153678816

`floor(log2(xor(n, n+1))/2)+1`
-/

namespace A115362.P17294795831153678816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Nat.xor n (n + 1) : ℝ) / 2⌋ + 1

end

end A115362.P17294795831153678816

namespace A115362

/-- `floor(log2(xor(n, n+1))/2)+1` -/
def P17294795831153678816.Spec : Prop :=
  ∀ n, P17294795831153678816.a n = A115362 n

end A115362

/-! ## A115362.P3320061046796948259

`ceil(log2(xor(n, n+1)+1)/2)`
-/

namespace A115362.P3320061046796948259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ) / 2⌉

end

end A115362.P3320061046796948259

namespace A115362

/-- `ceil(log2(xor(n, n+1)+1)/2)` -/
def P3320061046796948259.Spec : Prop :=
  ∀ n, P3320061046796948259.a n = A115362 n

end A115362

/-! ## A115362.P17139858447416375236

`dr(val(4*(2*n-(n-1)), 4))`
-/

namespace A115362.P17139858447416375236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation (4 * ((2 * n : ℤ) - ((n : ℤ) - 1))).toNat 4 : ℤ)

end

end A115362.P17139858447416375236

namespace A115362

/-- `dr(val(4*(2*n-(n-1)), 4))` -/
def P17139858447416375236.Spec : Prop :=
  ∀ n, (P17139858447416375236.a n : ℤ) = A115362 n

end A115362

/-! ## A115362.P12973068022296661147

`ceil(val(3*n-(n-2), 2)/2)`
-/

namespace A115362.P12973068022296661147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.valuation ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat 2 : ℚ) / 2⌉

end

end A115362.P12973068022296661147

namespace A115362

/-- `ceil(val(3*n-(n-2), 2)/2)` -/
def P12973068022296661147.Spec : Prop :=
  ∀ n, P12973068022296661147.a n = A115362 n

end A115362

/-! ## A115362.P16298826825014683515

`ceil(∑{e}[xor(n, n+1)+1, #]/2)`
-/

namespace A115362.P16298826825014683515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) / 2⌉

end

end A115362.P16298826825014683515

namespace A115362

/-- `ceil(∑{e}[xor(n, n+1)+1, #]/2)` -/
def P16298826825014683515.Spec : Prop :=
  ∀ n, P16298826825014683515.a n = A115362 n

end A115362

/-! ## A115362.P11209785829898698263

`Δ[A087069(n)]`
-/

namespace A115362.P11209785829898698263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115362.P11209785829898698263

namespace A115362

/-- `Δ[A087069(n)]` -/
def P11209785829898698263.Spec : Prop :=
  ∀ n, P11209785829898698263.a n = A115362 n

end A115362

/-! ## A115362.P8154942735955718671

`ceil(ratio[A277872(n)])`
-/

namespace A115362.P8154942735955718671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A115362.P8154942735955718671

namespace A115362

/-- `ceil(ratio[A277872(n)])` -/
def P8154942735955718671.Spec : Prop :=
  ∀ n, P8154942735955718671.a n = A115362 n

end A115362

/-! ## A115362.P8756000754666060819

`ceil(ratio[A303827(n)])`
-/

namespace A115362.P8756000754666060819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A115362.P8756000754666060819

namespace A115362

/-- `ceil(ratio[A303827(n)])` -/
def P8756000754666060819.Spec : Prop :=
  ∀ n, P8756000754666060819.a n = A115362 n

end A115362

/-! ## A115362.P7071082835114509941

`Δ[A054893(n)]+1`
-/

namespace A115362.P7071082835114509941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A115362.P7071082835114509941

namespace A115362

/-- `Δ[A054893(n)]+1` -/
def P7071082835114509941.Spec : Prop :=
  ∀ n, P7071082835114509941.a n = A115362 n

end A115362

/-! ## A115362.P2368771427325112728

`A244415(2*(n+1))`
-/

namespace A115362.P2368771427325112728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (2 * (n + 1))

end

end A115362.P2368771427325112728

namespace A115362

/-- `A244415(2*(n+1))` -/
def P2368771427325112728.Spec : Prop :=
  ∀ n, P2368771427325112728.a n = A115362 n

end A115362

/-! ## A115362.P11472499544982919438

`A008619(val(n+1, 2))`
-/

namespace A115362.P11472499544982919438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.valuation (n + 1) 2)

end

end A115362.P11472499544982919438

namespace A115362

/-- `A008619(val(n+1, 2))` -/
def P11472499544982919438.Spec : Prop :=
  ∀ n, P11472499544982919438.a n = A115362 n

end A115362

/-! ## A115362.P8988842957683904587

`ceil(A001511(n+1)/2)`
-/

namespace A115362.P8988842957683904587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001511 (n + 1) : ℚ) / 2⌉

end

end A115362.P8988842957683904587

namespace A115362

/-- `ceil(A001511(n+1)/2)` -/
def P8988842957683904587.Spec : Prop :=
  ∀ n, P8988842957683904587.a n = A115362 n

end A115362

/-! ## A115362.P8920387830191669706

`log2(sqrt(A234957(n+1)))+1`
-/

namespace A115362.P8920387830191669706
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (A234957 (n + 1) : ℝ)) + 1

end

end A115362.P8920387830191669706

namespace A115362

/-- `log2(sqrt(A234957(n+1)))+1` -/
def P8920387830191669706.Spec : Prop :=
  ∀ n, P8920387830191669706.a n = (A115362 n : ℝ)

end A115362

/-!
# A115363: ((1,x)-(x,x^2))^(-2) (using Riordan array notation).

The programs for A115363, the canonical program `A115363.P10062065464569452837` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115363 has offset 0).

The definition of A115363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115363.P2908855257514122061

`log2(ceil(2^A129501(n+1)))`
-/

namespace A115363.P2908855257514122061
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (⌈(2 : ℚ) ^ (A129501 (n + 1) : ℤ)⌉ : ℝ)

end

end A115363.P2908855257514122061

namespace A115363

/-- `log2(ceil(2^A129501(n+1)))` -/
def P2908855257514122061.Spec : Prop :=
  ∀ n, P2908855257514122061.a n = (A115363 n : ℝ)

end A115363

/-! ## A115363.P1092371185671439660

`A104117(A051537(n+1))`
-/

namespace A115363.P1092371185671439660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104117 (A051537 (n + 1)).toNat

end

end A115363.P1092371185671439660

namespace A115363

/-- `A104117(A051537(n+1))` -/
def P1092371185671439660.Spec : Prop :=
  ∀ n, P1092371185671439660.a n = A115363 n

end A115363

/-! ## A115363.P13046370479726494042

`A065334(A130540(n+1)+1)`
-/

namespace A115363.P13046370479726494042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065334 (A130540 (n + 1) + 1).toNat

end

end A115363.P13046370479726494042

namespace A115363

/-- `A065334(A130540(n+1)+1)` -/
def P13046370479726494042.Spec : Prop :=
  ∀ n, P13046370479726494042.a n = A115363 n

end A115363

/-! ## A115363.P12035009182893058105

`A100995(A143315(n+1)+1)`
-/

namespace A115363.P12035009182893058105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A143315 (n + 1) + 1).toNat

end

end A115363.P12035009182893058105

namespace A115363

/-- `A100995(A143315(n+1)+1)` -/
def P12035009182893058105.Spec : Prop :=
  ∀ n, P12035009182893058105.a n = A115363 n

end A115363

/-! ## A115363.P4671746042592540118

`A100995(2*A051537(n+1))`
-/

namespace A115363.P4671746042592540118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (2 * A051537 (n + 1)).toNat

end

end A115363.P4671746042592540118

namespace A115363

/-- `A100995(2*A051537(n+1))` -/
def P4671746042592540118.Spec : Prop :=
  ∀ n, P4671746042592540118.a n = A115363 n

end A115363

/-! ## A115363.P12529143389230263464

`A182660(4*A051537(n+1))`
-/

namespace A115363.P12529143389230263464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182660 (4 * A051537 (n + 1)).toNat

end

end A115363.P12529143389230263464

namespace A115363

/-- `A182660(4*A051537(n+1))` -/
def P12529143389230263464.Spec : Prop :=
  ∀ n, P12529143389230263464.a n = A115363 n

end A115363

/-! ## A115363.P2552706590232592227

`A182660(4*A126988(n+1))`
-/

namespace A115363.P2552706590232592227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182660 (4 * A126988 (n + 1)).toNat

end

end A115363.P2552706590232592227

namespace A115363

/-- `A182660(4*A126988(n+1))` -/
def P2552706590232592227.Spec : Prop :=
  ∀ n, P2552706590232592227.a n = A115363 n

end A115363

/-! ## A115363.P4156406554893141170

`A037849(A129501(n+1)+9)`
-/

namespace A115363.P4156406554893141170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037849 (A129501 (n + 1) + 9).toNat

end

end A115363.P4156406554893141170

namespace A115363

/-- `A037849(A129501(n+1)+9)` -/
def P4156406554893141170.Spec : Prop :=
  ∀ n, P4156406554893141170.a n = A115363 n

end A115363

/-! ## A115363.P2745443407129973394

`A053392(A129501(n+1)+9)`
-/

namespace A115363.P2745443407129973394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (A129501 (n + 1) + 9).toNat

end

end A115363.P2745443407129973394

namespace A115363

/-- `A053392(A129501(n+1)+9)` -/
def P2745443407129973394.Spec : Prop :=
  ∀ n, P2745443407129973394.a n = A115363 n

end A115363

/-! ## A115363.P14917926665255114250

`A340676(2^A126988(n+1))`
-/

namespace A115363.P14917926665255114250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340676 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A126988 (n + 1) : ℤ))).toNat

end

end A115363.P14917926665255114250

namespace A115363

/-- `A340676(2^A126988(n+1))` -/
def P14917926665255114250.Spec : Prop :=
  ∀ n, P14917926665255114250.a n = A115363 n

end A115363

/-! ## A115363.P3520292581750787608

`A037850(A129501(n+1)+30)`
-/

namespace A115363.P3520292581750787608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037850 (A129501 (n + 1) + 30).toNat

end

end A115363.P3520292581750787608

namespace A115363

/-- `A037850(A129501(n+1)+30)` -/
def P3520292581750787608.Spec : Prop :=
  ∀ n, P3520292581750787608.a n = A115363 n

end A115363

/-! ## A115363.P6154500020283781080

`A048158(66-A129501(n+1))`
-/

namespace A115363.P6154500020283781080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (66 - A129501 (n + 1)).toNat

end

end A115363.P6154500020283781080

namespace A115363

/-- `A048158(66-A129501(n+1))` -/
def P6154500020283781080.Spec : Prop :=
  ∀ n, P6154500020283781080.a n = A115363 n

end A115363

/-! ## A115363.P2632684029733657713

`A115361(n)*A127170(n+1)`
-/

namespace A115363.P2632684029733657713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A127170 (n + 1)

end

end A115363.P2632684029733657713

namespace A115363

/-- `A115361(n)*A127170(n+1)` -/
def P2632684029733657713.Spec : Prop :=
  ∀ n, P2632684029733657713.a n = A115363 n

end A115363

/-! ## A115363.P10062065464569452837

`A115361(n)*A129264(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A115363

/-- `A115361(n)*A129264(n+1)` -/
def P10062065464569452837.Spec : Prop :=
  ∀ n, P10062065464569452837.a n = A115363 n

theorem P10062065464569452837.correct : P10062065464569452837.Spec := by
  intro n
  simp only [A115363]

end A115363

/-! ## A115363.P12589885868423192579

`A115361(n)*A129265(n+1)`
-/

namespace A115363.P12589885868423192579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A129265 (n + 1)

end

end A115363.P12589885868423192579

namespace A115363

/-- `A115361(n)*A129265(n+1)` -/
def P12589885868423192579.Spec : Prop :=
  ∀ n, P12589885868423192579.a n = A115363 n

end A115363

/-! ## A115363.P13408527150319731750

`A115361(n)*A129353(n+1)`
-/

namespace A115363.P13408527150319731750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A129353 (n + 1)

end

end A115363.P13408527150319731750

namespace A115363

/-- `A115361(n)*A129353(n+1)` -/
def P13408527150319731750.Spec : Prop :=
  ∀ n, P13408527150319731750.a n = A115363 n

end A115363

/-! ## A115363.P8982535634512044898

`A115361(n)*A129501(n+1)`
-/

namespace A115363.P8982535634512044898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A129501 (n + 1)

end

end A115363.P8982535634512044898

namespace A115363

/-- `A115361(n)*A129501(n+1)` -/
def P8982535634512044898.Spec : Prop :=
  ∀ n, P8982535634512044898.a n = A115363 n

end A115363

/-! ## A115363.P6452774164507871452

`lcm(A115358(n), A127170(n+1))`
-/

namespace A115363.P6452774164507871452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A115358 n) (A127170 (n + 1))

end

end A115363.P6452774164507871452

namespace A115363

/-- `lcm(A115358(n), A127170(n+1))` -/
def P6452774164507871452.Spec : Prop :=
  ∀ n, (P6452774164507871452.a n : ℤ) = A115363 n

end A115363

/-! ## A115363.P11720706153794867922

`A001222(ceil(2^A129501(n+1)))`
-/

namespace A115363.P11720706153794867922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(2 : ℚ) ^ (A129501 (n + 1) : ℤ)⌉.toNat

end

end A115363.P11720706153794867922

namespace A115363

/-- `A001222(ceil(2^A129501(n+1)))` -/
def P11720706153794867922.Spec : Prop :=
  ∀ n, P11720706153794867922.a n = A115363 n

end A115363

/-!
# A115364: a(n) = A000217(A001511(n)), where A001511 is one more than the 2-adic valuation of n, and A000217(n) is the n-th triangular number, binomial(n+1, 2).

The programs for A115364, the canonical program `A115364.P11989985913028206529` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115364 has offset 1).

The definition of A115364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115364.P11989985913028206529

`A000217(A001511(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A115364

/-- `A000217(A001511(n+1))` -/
def P11989985913028206529.Spec : Prop :=
  ∀ n, P11989985913028206529.a n = A115364 (n + 1)

theorem P11989985913028206529.correct : P11989985913028206529.Spec := by
  intro n
  simp only [A115364, Nat.add_sub_cancel]

end A115364

/-! ## A115364.P18024479749261570361

`C(val(n+1, 2)+2, 2)`
-/

namespace A115364.P18024479749261570361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (n + 1) 2 + 2) 2

end

end A115364.P18024479749261570361

namespace A115364

/-- `C(val(n+1, 2)+2, 2)` -/
def P18024479749261570361.Spec : Prop :=
  ∀ n, (P18024479749261570361.a n : ℤ) = A115364 (n + 1)

end A115364

/-! ## A115364.P13594117223920986018

`val(n+1, 2)+1-(n%2-(a(floor(n/2))+1)*n%2)` with `a(0)=1`
-/

namespace A115364.P13594117223920986018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) - (((n % 2 : ℕ) : ℤ) - (a ⌊(n : ℚ) / 2⌋.toNat + 1) * ((n % 2 : ℕ) : ℤ))

end

end A115364.P13594117223920986018

namespace A115364

/-- `val(n+1, 2)+1-(n%2-(a(floor(n/2))+1)*n%2)` -/
def P13594117223920986018.Spec : Prop :=
  ∀ n, P13594117223920986018.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P12572354791946439242

`C(A085058(n), 2)`
-/

namespace A115364.P12572354791946439242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A085058 n).toNat 2

end

end A115364.P12572354791946439242

namespace A115364

/-- `C(A085058(n), 2)` -/
def P12572354791946439242.Spec : Prop :=
  ∀ n, (P12572354791946439242.a n : ℤ) = A115364 (n + 1)

end A115364

/-! ## A115364.P5942234304325264681

`A025731(val(n+1, 2))`
-/

namespace A115364.P5942234304325264681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025731 (SequenceMachineLib.valuation (n + 1) 2)

end

end A115364.P5942234304325264681

namespace A115364

/-- `A025731(val(n+1, 2))` -/
def P5942234304325264681.Spec : Prop :=
  ∀ n, P5942234304325264681.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P265169735321032157

`A025738(val(n+1, 2))`
-/

namespace A115364.P265169735321032157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025738 (SequenceMachineLib.valuation (n + 1) 2)

end

end A115364.P265169735321032157

namespace A115364

/-- `A025738(val(n+1, 2))` -/
def P265169735321032157.Spec : Prop :=
  ∀ n, P265169735321032157.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P6451678846843467968

`A025747(val(n+1, 2))`
-/

namespace A115364.P6451678846843467968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 (SequenceMachineLib.valuation (n + 1) 2)

end

end A115364.P6451678846843467968

namespace A115364

/-- `A025747(val(n+1, 2))` -/
def P6451678846843467968.Spec : Prop :=
  ∀ n, P6451678846843467968.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P9349932271037919848

`C(A089080(n+2), 2)`
-/

namespace A115364.P9349932271037919848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089080 (n + 2)).toNat 2

end

end A115364.P9349932271037919848

namespace A115364

/-- `C(A089080(n+2), 2)` -/
def P9349932271037919848.Spec : Prop :=
  ∀ n, (P9349932271037919848.a n : ℤ) = A115364 (n + 1)

end A115364

/-! ## A115364.P16304292724086971173

`A344985(xor(n, n+1))`
-/

namespace A115364.P16304292724086971173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344985 (Nat.xor n (n + 1))

end

end A115364.P16304292724086971173

namespace A115364

/-- `A344985(xor(n, n+1))` -/
def P16304292724086971173.Spec : Prop :=
  ∀ n, P16304292724086971173.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P3167539062736137970

`∑{d}[n+1, A104117(#)]`
-/

namespace A115364.P3167539062736137970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A104117 d

end

end A115364.P3167539062736137970

namespace A115364

/-- `∑{d}[n+1, A104117(#)]` -/
def P3167539062736137970.Spec : Prop :=
  ∀ n, P3167539062736137970.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P8639069587160850918

`A000217(val(n+1, 2)+1)`
-/

namespace A115364.P8639069587160850918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A115364.P8639069587160850918

namespace A115364

/-- `A000217(val(n+1, 2)+1)` -/
def P8639069587160850918.Spec : Prop :=
  ∀ n, P8639069587160850918.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P10249448894190538582

`C(A007814(n+1)+2, 2)`
-/

namespace A115364.P10249448894190538582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007814 (n + 1) + 2).toNat 2

end

end A115364.P10249448894190538582

namespace A115364

/-- `C(A007814(n+1)+2, 2)` -/
def P10249448894190538582.Spec : Prop :=
  ∀ n, (P10249448894190538582.a n : ℤ) = A115364 (n + 1)

end A115364

/-! ## A115364.P10397156106863967368

`sqrt(A000537(val(2*(n+1), 2)))`
-/

namespace A115364.P10397156106863967368
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 (SequenceMachineLib.valuation (2 * (n + 1)) 2) : ℝ)

end

end A115364.P10397156106863967368

namespace A115364

/-- `sqrt(A000537(val(2*(n+1), 2)))` -/
def P10397156106863967368.Spec : Prop :=
  ∀ n, P10397156106863967368.a n = (A115364 (n + 1) : ℝ)

end A115364

/-! ## A115364.P5572512200912926381

`A007425(and(n, -or(1, n+1))+1)`
-/

namespace A115364.P5572512200912926381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (Int.land (n : ℤ) (-(Nat.lor 1 (n + 1) : ℤ)) + 1).toNat

end

end A115364.P5572512200912926381

namespace A115364

/-- `A007425(and(n, -or(1, n+1))+1)` -/
def P5572512200912926381.Spec : Prop :=
  ∀ n, P5572512200912926381.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P3519031969904056627

`A025796(A059132(n))`
-/

namespace A115364.P3519031969904056627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (A059132 n).toNat

end

end A115364.P3519031969904056627

namespace A115364

/-- `A025796(A059132(n))` -/
def P3519031969904056627.Spec : Prop :=
  ∀ n, P3519031969904056627.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P2598354537083660654

`A071018(A135481(n))`
-/

namespace A115364.P2598354537083660654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071018 (A135481 n).toNat

end

end A115364.P2598354537083660654

namespace A115364

/-- `A071018(A135481(n))` -/
def P2598354537083660654.Spec : Prop :=
  ∀ n, P2598354537083660654.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P9653881364466707929

`A000217(Δ[A005187(n)])`
-/

namespace A115364.P9653881364466707929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n).toNat

end

end A115364.P9653881364466707929

namespace A115364

/-- `A000217(Δ[A005187(n)])` -/
def P9653881364466707929.Spec : Prop :=
  ∀ n, P9653881364466707929.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P9653372042335425177

`A007425(A006519(n+1))`
-/

namespace A115364.P9653372042335425177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A006519 (n + 1)).toNat

end

end A115364.P9653372042335425177

namespace A115364

/-- `A007425(A006519(n+1))` -/
def P9653372042335425177.Spec : Prop :=
  ∀ n, P9653372042335425177.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P16294453488544282961

`A025747(A007814(n+1))`
-/

namespace A115364.P16294453488544282961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 (A007814 (n + 1)).toNat

end

end A115364.P16294453488544282961

namespace A115364

/-- `A025747(A007814(n+1))` -/
def P16294453488544282961.Spec : Prop :=
  ∀ n, P16294453488544282961.a n = A115364 (n + 1)

end A115364

/-! ## A115364.P7952707036939272797

`A008805(A037227(n+1))`
-/

namespace A115364.P7952707036939272797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A037227 (n + 1)).toNat

end

end A115364.P7952707036939272797

namespace A115364

/-- `A008805(A037227(n+1))` -/
def P7952707036939272797.Spec : Prop :=
  ∀ n, P7952707036939272797.a n = A115364 (n + 1)

end A115364

/-!
# A115366: a(n) = the number of values of k <= 10^n such that sqrt(k*(k+1)*(k+2)*(k+3)+1) is prime.

The programs for A115366, there is no canonical definition to state claims against.
-/

/-! ## A115366.P10006942755302753657

`Δ[record[A061395(A116952(n))]]`
-/

namespace A115366.P10006942755302753657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A116952 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115366.P10006942755302753657

/-!
# A115367: Row sums of correlation triangle for Fredholm-Rueppel sequence A036987.

The programs for A115367, the canonical program `A115367.P360809415840426719` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115367 has offset 0).

The definition of A115367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4038 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115367.P360809415840426719

`A159981(n+1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115367

/-- `A159981(n+1)+a(n-2)` -/
def P360809415840426719.Spec : Prop :=
  ∀ n, P360809415840426719.a n = A115367 n

theorem P360809415840426719.correct : P360809415840426719.Spec := by
  intro n
  simp only [A115367]

end A115367

/-! ## A115367.P12428188466244674118

`A073267(n+2)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A115367.P12428188466244674118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A073267 (n + 2) + a (n - 2)

end

end A115367.P12428188466244674118

namespace A115367

/-- `A073267(n+2)+a(n-2)` -/
def P12428188466244674118.Spec : Prop :=
  ∀ n, P12428188466244674118.a n = A115367 n

end A115367

/-! ## A115367.P5808156745844772085

`a(n-2)+record[A097331(n)]%4` with `a(0)=1, a(1)=2`
-/

namespace A115367.P5808156745844772085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 4

end

end A115367.P5808156745844772085

namespace A115367

/-- `a(n-2)+record[A097331(n)]%4` -/
def P5808156745844772085.Spec : Prop :=
  ∀ n, P5808156745844772085.a n = A115367 n

end A115367

/-! ## A115367.P2575216198092510785

`a(n-2)+and(3, record[A126120(n)])` with `a(0)=1, a(1)=2`
-/

namespace A115367.P2575216198092510785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Int.land 3 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A115367.P2575216198092510785

namespace A115367

/-- `a(n-2)+and(3, record[A126120(n)])` -/
def P2575216198092510785.Spec : Prop :=
  ∀ n, P2575216198092510785.a n = A115367 n

end A115367

/-! ## A115367.P11117622600868897260

`a(n-2)+and(3, A000108(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A115367.P11117622600868897260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Int.land 3 (A000108 (n + 1))

end

end A115367.P11117622600868897260

namespace A115367

/-- `a(n-2)+and(3, A000108(n+1))` -/
def P11117622600868897260.Spec : Prop :=
  ∀ n, P11117622600868897260.a n = A115367 n

end A115367

/-!
# A115375: where h[d,d] is a homogeneous symmetric function, s[d,d] is a Schur function indexed by two parts, * represents the Kronecker product and <, > is the standard scalar product on symmetric functions.

The programs for A115375, there is no canonical definition to state claims against.
-/

/-! ## A115375.P13888734486623221529

`A162344(A238549(n+1)-n)`
-/

namespace A115375.P13888734486623221529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A238549 (n + 1) - (n : ℤ)).toNat

end

end A115375.P13888734486623221529

/-!
# A115376: where h[d+1,d-1] is a homogeneous symmetric function, s[d,d] is a Schur function indexed by two parts, * represents the Kronecker product and <, > is the standard scalar product on symmetric functions.

The programs for A115376, the canonical program `A115376.P8028506468420862594` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115376 has offset 2).

The definition of A115376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115376.P8028506468420862594

`∑[∑[A165188(n+1)-a(n-1)]]` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115376

/-- `∑[∑[A165188(n+1)-a(n-1)]]` -/
def P8028506468420862594.Spec : Prop :=
  ∀ n, P8028506468420862594.a n = A115376 (n + 2)

theorem P8028506468420862594.correct : P8028506468420862594.Spec := by
  intro n
  simp only [A115376, Nat.add_sub_cancel]

end A115376

/-! ## A115376.P11618370717279130709

`∑[A216172(A052938(n+1))]`
-/

namespace A115376.P11618370717279130709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (A052938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115376.P11618370717279130709

namespace A115376

/-- `∑[A216172(A052938(n+1))]` -/
def P11618370717279130709.Spec : Prop :=
  ∀ n, P11618370717279130709.a n = A115376 (n + 2)

end A115376

/-! ## A115376.P10984138708749241010

`∑[A216172(A028242(n)+2)]`
-/

namespace A115376.P10984138708749241010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (A028242 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115376.P10984138708749241010

namespace A115376

/-- `∑[A216172(A028242(n)+2)]` -/
def P10984138708749241010.Spec : Prop :=
  ∀ n, P10984138708749241010.a n = A115376 (n + 2)

end A115376

/-! ## A115376.P15621921497637441268

`∑[A216172(A020705(n)-A052938(n))]`
-/

namespace A115376.P15621921497637441268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (A020705 n - A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115376.P15621921497637441268

namespace A115376

/-- `∑[A216172(A020705(n)-A052938(n))]` -/
def P15621921497637441268.Spec : Prop :=
  ∀ n, P15621921497637441268.a n = A115376 (n + 2)

end A115376

/-! ## A115376.P3562874983331916911

`A115375(n+2)-A266769(n+2)`
-/

namespace A115376.P3562874983331916911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115375 (n + 2) - A266769 (n + 2)

end

end A115376.P3562874983331916911

namespace A115376

/-- `A115375(n+2)-A266769(n+2)` -/
def P3562874983331916911.Spec : Prop :=
  ∀ n, P3562874983331916911.a n = A115376 (n + 2)

end A115376

/-! ## A115376.P6660989863626239799

`∑[A216172(A028242(A020705(n)))]`
-/

namespace A115376.P6660989863626239799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (A028242 (A020705 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115376.P6660989863626239799

namespace A115376

/-- `∑[A216172(A028242(A020705(n)))]` -/
def P6660989863626239799.Spec : Prop :=
  ∀ n, P6660989863626239799.a n = A115376 (n + 2)

end A115376

/-!
# A115378: a(n) = number of positive integers k < n such that n XOR k = (n+k).

The programs for A115378, the canonical program `A115378.P14874640245619376635` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115378 has offset 1).

The definition of A115378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115378.P11564637818395250528

`2^A080791(n+1)-1`
-/

namespace A115378.P11564637818395250528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A080791 (n + 1) : ℤ) - 1

end

end A115378.P11564637818395250528

namespace A115378

/-- `2^A080791(n+1)-1` -/
def P11564637818395250528.Spec : Prop :=
  ∀ n, P11564637818395250528.a n = (A115378 (n + 1) : ℚ)

end A115378

/-! ## A115378.P14874640245619376635

`A080100(n+1)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A115378

/-- `A080100(n+1)-1` -/
def P14874640245619376635.Spec : Prop :=
  ∀ n, P14874640245619376635.a n = A115378 (n + 1)

theorem P14874640245619376635.correct : P14874640245619376635.Spec := by
  intro n
  simp only [A115378, Nat.add_sub_cancel]

end A115378

/-! ## A115378.P13993089779629277740

`∏[a(floor((n-1)/2))/a(n-1)]-1` with `a(0)=1, a(1)=2`
-/

namespace A115378.P13993089779629277740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A115378.P13993089779629277740

namespace A115378

/-- `∏[a(floor((n-1)/2))/a(n-1)]-1` -/
def P13993089779629277740.Spec : Prop :=
  ∀ n, P13993089779629277740.a n = (A115378 (n + 1) : ℚ)

end A115378

/-! ## A115378.P9012594537596547572

`Δ[A325103(n)]`
-/

namespace A115378.P9012594537596547572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115378.P9012594537596547572

namespace A115378

/-- `Δ[A325103(n)]` -/
def P9012594537596547572.Spec : Prop :=
  ∀ n, P9012594537596547572.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P16480404002373178232

`floor(A135540(n+1)/2)`
-/

namespace A115378.P16480404002373178232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135540 (n + 1) : ℚ) / 2⌋

end

end A115378.P16480404002373178232

namespace A115378

/-- `floor(A135540(n+1)/2)` -/
def P16480404002373178232.Spec : Prop :=
  ∀ n, P16480404002373178232.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P6936605801881741612

`A267584(n+1)/2-1`
-/

namespace A115378.P6936605801881741612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267584 (n + 1) : ℚ) / 2 - 1

end

end A115378.P6936605801881741612

namespace A115378

/-- `A267584(n+1)/2-1` -/
def P6936605801881741612.Spec : Prop :=
  ∀ n, P6936605801881741612.a n = (A115378 (n + 1) : ℚ)

end A115378

/-! ## A115378.P6072579141531261692

`2^A023416(n+1)-1`
-/

namespace A115378.P6072579141531261692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A023416 (n + 1) : ℤ) - 1

end

end A115378.P6072579141531261692

namespace A115378

/-- `2^A023416(n+1)-1` -/
def P6072579141531261692.Spec : Prop :=
  ∀ n, P6072579141531261692.a n = (A115378 (n + 1) : ℚ)

end A115378

/-! ## A115378.P6217712458104958849

`A000225(A023416(n+1))`
-/

namespace A115378.P6217712458104958849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A023416 (n + 1)).toNat

end

end A115378.P6217712458104958849

namespace A115378

/-- `A000225(A023416(n+1))` -/
def P6217712458104958849.Spec : Prop :=
  ∀ n, P6217712458104958849.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P12776432293261539155

`A038573(A035327(n+1))`
-/

namespace A115378.P12776432293261539155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A035327 (n + 1)).toNat

end

end A115378.P12776432293261539155

namespace A115378

/-- `A038573(A035327(n+1))` -/
def P12776432293261539155.Spec : Prop :=
  ∀ n, P12776432293261539155.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P17374544393595615599

`A000225(A080791(n+1))`
-/

namespace A115378.P17374544393595615599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A080791 (n + 1)).toNat

end

end A115378.P17374544393595615599

namespace A115378

/-- `A000225(A080791(n+1))` -/
def P17374544393595615599.Spec : Prop :=
  ∀ n, P17374544393595615599.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P10822933493837571050

`A003817(A175946(n+1))`
-/

namespace A115378.P10822933493837571050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A175946 (n + 1)).toNat

end

end A115378.P10822933493837571050

namespace A115378

/-- `A003817(A175946(n+1))` -/
def P10822933493837571050.Spec : Prop :=
  ∀ n, P10822933493837571050.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P6515599950453555962

`A175946(A073137(n+1))`
-/

namespace A115378.P6515599950453555962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175946 (A073137 (n + 1)).toNat

end

end A115378.P6515599950453555962

namespace A115378

/-- `A175946(A073137(n+1))` -/
def P6515599950453555962.Spec : Prop :=
  ∀ n, P6515599950453555962.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P4225566165839508595

`A000225(∑[A089263(n+1)])`
-/

namespace A115378.P4225566165839508595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A115378.P4225566165839508595

namespace A115378

/-- `A000225(∑[A089263(n+1)])` -/
def P4225566165839508595.Spec : Prop :=
  ∀ n, P4225566165839508595.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P4661560857748710582

`A038573(A080079(n+1)-1)`
-/

namespace A115378.P4661560857748710582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A080079 (n + 1) - 1).toNat

end

end A115378.P4661560857748710582

namespace A115378

/-- `A038573(A080079(n+1)-1)` -/
def P4661560857748710582.Spec : Prop :=
  ∀ n, P4661560857748710582.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P8570404635064379585

`A000225(A290251(n+1)-1)`
-/

namespace A115378.P8570404635064379585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A290251 (n + 1) - 1).toNat

end

end A115378.P8570404635064379585

namespace A115378

/-- `A000225(A290251(n+1)-1)` -/
def P8570404635064379585.Spec : Prop :=
  ∀ n, P8570404635064379585.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P15435180612339802776

`A325103(n+1)-A325103(n)`
-/

namespace A115378.P15435180612339802776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325103 (n + 1) - A325103 n

end

end A115378.P15435180612339802776

namespace A115378

/-- `A325103(n+1)-A325103(n)` -/
def P15435180612339802776.Spec : Prop :=
  ∀ n, P15435180612339802776.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P12267510035644760785

`A135542(n+1)-A087808(n+1)`
-/

namespace A115378.P12267510035644760785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135542 (n + 1) - A087808 (n + 1)

end

end A115378.P12267510035644760785

namespace A115378

/-- `A135542(n+1)-A087808(n+1)` -/
def P12267510035644760785.Spec : Prop :=
  ∀ n, P12267510035644760785.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P18290599948572357621

`A006257(A073137(n+1-A006257(n+1)))`
-/

namespace A115378.P18290599948572357621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A073137 ((n + 1 : ℤ) - A006257 (n + 1)).toNat).toNat

end

end A115378.P18290599948572357621

namespace A115378

/-- `A006257(A073137(n+1-A006257(n+1)))` -/
def P18290599948572357621.Spec : Prop :=
  ∀ n, P18290599948572357621.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P17249038795134702308

`Δ[A268514(n)]-1`
-/

namespace A115378.P17249038795134702308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A115378.P17249038795134702308

namespace A115378

/-- `Δ[A268514(n)]-1` -/
def P17249038795134702308.Spec : Prop :=
  ∀ n, P17249038795134702308.a n = A115378 (n + 1)

end A115378

/-! ## A115378.P7855100216829260621

`Δ[∑[A080100(n)]-n]`
-/

namespace A115378.P7855100216829260621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115378.P7855100216829260621

namespace A115378

/-- `Δ[∑[A080100(n)]-n]` -/
def P7855100216829260621.Spec : Prop :=
  ∀ n, P7855100216829260621.a n = A115378 (n + 1)

end A115378

/-!
# A115379: Number of positive integers k < n such that n XOR k < n and gcd(n,k) is odd.

The programs for A115379, the canonical program `A115379.P13594765390789857135` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115379 has offset 0).

The definition of A115379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115379.P13594765390789857135

`n-A053644(lcm(2, n))%(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115379

/-- `n-A053644(lcm(2, n))%(n+1)` -/
def P13594765390789857135.Spec : Prop :=
  ∀ n, P13594765390789857135.a n = A115379 n

theorem P13594765390789857135.correct : P13594765390789857135.Spec := by
  intro n
  simp only [A115379]

end A115379

/-! ## A115379.P16826403048507160531

`A164089((2*n+1)*gcd(2, n+1))`
-/

namespace A115379.P16826403048507160531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 ((2 * n + 1) * Nat.gcd 2 (n + 1))

end

end A115379.P16826403048507160531

namespace A115379

/-- `A164089((2*n+1)*gcd(2, n+1))` -/
def P16826403048507160531.Spec : Prop :=
  ∀ n, P16826403048507160531.a n = A115379 n

end A115379

/-! ## A115379.P10309108359209938208

`A164089(A123168(n+2))`
-/

namespace A115379.P10309108359209938208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A123168 (n + 2)).toNat

end

end A115379.P10309108359209938208

namespace A115379

/-- `A164089(A123168(n+2))` -/
def P10309108359209938208.Spec : Prop :=
  ∀ n, P10309108359209938208.a n = A115379 n

end A115379

/-! ## A115379.P17706760289107694876

`A164089(A165998(n)+n)`
-/

namespace A115379.P17706760289107694876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A165998 n + (n : ℤ)).toNat

end

end A115379.P17706760289107694876

namespace A115379

/-- `A164089(A165998(n)+n)` -/
def P17706760289107694876.Spec : Prop :=
  ∀ n, P17706760289107694876.a n = A115379 n

end A115379

/-! ## A115379.P9658411958745586751

`floor(A006257(n)/A040001(n))`
-/

namespace A115379.P9658411958745586751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006257 n : ℚ) / (A040001 n : ℚ)⌋

end

end A115379.P9658411958745586751

namespace A115379

/-- `floor(A006257(n)/A040001(n))` -/
def P9658411958745586751.Spec : Prop :=
  ∀ n, P9658411958745586751.a n = A115379 n

end A115379

/-! ## A115379.P17129120411977273534

`A164089(A062828(2*n+1))`
-/

namespace A115379.P17129120411977273534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A062828 (2 * n + 1)).toNat

end

end A115379.P17129120411977273534

namespace A115379

/-- `A164089(A062828(2*n+1))` -/
def P17129120411977273534.Spec : Prop :=
  ∀ n, P17129120411977273534.a n = A115379 n

end A115379

/-! ## A115379.P15664072055217736599

`floor(A006257(n)/A000034(n+1))`
-/

namespace A115379.P15664072055217736599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006257 n : ℚ) / (A000034 (n + 1) : ℚ)⌋

end

end A115379.P15664072055217736599

namespace A115379

/-- `floor(A006257(n)/A000034(n+1))` -/
def P15664072055217736599.Spec : Prop :=
  ∀ n, P15664072055217736599.a n = A115379 n

end A115379

/-! ## A115379.P15923760032467926021

`floor(A000034(n)/2*A006257(n))`
-/

namespace A115379.P15923760032467926021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000034 n : ℚ) / 2 * (A006257 n : ℚ)⌋

end

end A115379.P15923760032467926021

namespace A115379

/-- `floor(A000034(n)/2*A006257(n))` -/
def P15923760032467926021.Spec : Prop :=
  ∀ n, P15923760032467926021.a n = A115379 n

end A115379

/-! ## A115379.P5122931212439544218

`A391588(n+1)%A114752(n+1)`
-/

namespace A115379.P5122931212439544218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391588 (n + 1)) (A114752 (n + 1))

end

end A115379.P5122931212439544218

namespace A115379

/-- `A391588(n+1)%A114752(n+1)` -/
def P5122931212439544218.Spec : Prop :=
  ∀ n, P5122931212439544218.a n = A115379 n

end A115379

/-! ## A115379.P2878375578332894540

`A053645((2*n)%A195161(n+1)+1)`
-/

namespace A115379.P2878375578332894540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (Int.tmod (2 * n : ℤ) (A195161 (n + 1)) + 1).toNat

end

end A115379.P2878375578332894540

namespace A115379

/-- `A053645((2*n)%A195161(n+1)+1)` -/
def P2878375578332894540.Spec : Prop :=
  ∀ n, P2878375578332894540.a n = A115379 n

end A115379

/-! ## A115379.P12047626611188999372

`A006257(n)-A006257(A142150(n))`
-/

namespace A115379.P12047626611188999372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n - A006257 (A142150 n).toNat

end

end A115379.P12047626611188999372

namespace A115379

/-- `A006257(n)-A006257(A142150(n))` -/
def P12047626611188999372.Spec : Prop :=
  ∀ n, P12047626611188999372.a n = A115379 n

end A115379

/-! ## A115379.P4989645297166953338

`A004526(lcm(A006257(n), A280193(n+1)))`
-/

namespace A115379.P4989645297166953338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm (A006257 n) (A280193 (n + 1)))

end

end A115379.P4989645297166953338

namespace A115379

/-- `A004526(lcm(A006257(n), A280193(n+1)))` -/
def P4989645297166953338.Spec : Prop :=
  ∀ n, P4989645297166953338.a n = A115379 n

end A115379

/-! ## A115379.P18185505373171577358

`A006257(n)-A006257(n-A026741(n))`
-/

namespace A115379.P18185505373171577358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n - A006257 ((n : ℤ) - A026741 n).toNat

end

end A115379.P18185505373171577358

namespace A115379

/-- `A006257(n)-A006257(n-A026741(n))` -/
def P18185505373171577358.Spec : Prop :=
  ∀ n, P18185505373171577358.a n = A115379 n

end A115379

/-! ## A115379.P12034672173617322

`A004526(A006257(n)*A257260(3*n+4))`
-/

namespace A115379.P12034672173617322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006257 n * A257260 (3 * n + 4)).toNat

end

end A115379.P12034672173617322

namespace A115379

/-- `A004526(A006257(n)*A257260(3*n+4))` -/
def P12034672173617322.Spec : Prop :=
  ∀ n, P12034672173617322.a n = A115379 n

end A115379

/-! ## A115379.P17452146833471562155

`A053645(2*n+1)-A053645(A093178(n+1))`
-/

namespace A115379.P17452146833471562155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (2 * n + 1) - A053645 (A093178 (n + 1)).toNat

end

end A115379.P17452146833471562155

namespace A115379

/-- `A053645(2*n+1)-A053645(A093178(n+1))` -/
def P17452146833471562155.Spec : Prop :=
  ∀ n, P17452146833471562155.a n = A115379 n

end A115379

/-! ## A115379.P9793314560689897303

`A002265(A006257(2*n+1)*A176895(2*n))`
-/

namespace A115379.P9793314560689897303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A006257 (2 * n + 1) * A176895 (2 * n)).toNat

end

end A115379.P9793314560689897303

namespace A115379

/-- `A002265(A006257(2*n+1)*A176895(2*n))` -/
def P9793314560689897303.Spec : Prop :=
  ∀ n, P9793314560689897303.a n = A115379 n

end A115379

/-! ## A115379.P3510096035238319475

`A006257(n)-A000035(n+1)*A053645(n+1)`
-/

namespace A115379.P3510096035238319475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n - A000035 (n + 1) * A053645 (n + 1)

end

end A115379.P3510096035238319475

namespace A115379

/-- `A006257(n)-A000035(n+1)*A053645(n+1)` -/
def P3510096035238319475.Spec : Prop :=
  ∀ n, P3510096035238319475.a n = A115379 n

end A115379

/-!
# A115381: Correlation triangle for Fredholm-Rueppel sequence A036987.

The programs for A115381, there is no canonical definition to state claims against.
-/

/-! ## A115381.P10730140530783454221

`A115382(n)-A086016(A098361(n)*A115382(n))`
-/

namespace A115381.P10730140530783454221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115382 n - A086016 (A098361 n * A115382 n).toNat

end

end A115381.P10730140530783454221

/-! ## A115381.P12559688272601537398

`A115382(n)-A086016(A098361(n))`
-/

namespace A115381.P12559688272601537398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115382 n - A086016 (A098361 n).toNat

end

end A115381.P12559688272601537398

/-! ## A115381.P15192377083711054976

`A115382(n)%A107822(A068609(n))`
-/

namespace A115381.P15192377083711054976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115382 n) (A107822 (A068609 n).toNat)

end

end A115381.P15192377083711054976

/-! ## A115381.P4488466796422184766

`C(A115382(n), A337135(A194436(3*(n+1))))`
-/

namespace A115381.P4488466796422184766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115382 n).toNat (A337135 (A194436 (3 * (n + 1))).toNat).toNat

end

end A115381.P4488466796422184766

/-! ## A115381.P14854606809847571589

`A115382(n)-A135133(A359902(3*n+5))`
-/

namespace A115381.P14854606809847571589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115382 n - A135133 (A359902 (3 * n + 5)).toNat

end

end A115381.P14854606809847571589

/-!
# A115382: Correlation triangle for Thue-Morse sequence A010060(n+1).

The programs for A115382, there is no canonical definition to state claims against.
-/

/-! ## A115382.P17152709674684844564

`A115381(n)+A086016(A098361(n))`
-/

namespace A115382.P17152709674684844564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115381 n + A086016 (A098361 n).toNat

end

end A115382.P17152709674684844564

/-! ## A115382.P5950171752992540448

`gcd(A086016(A109297(n+1)), A115381(n))`
-/

namespace A115382.P5950171752992540448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086016 (A109297 (n + 1)).toNat) (A115381 n)

end

end A115382.P5950171752992540448

/-! ## A115382.P1666873542550910846

`A115381(n)^A115381(A181735(n+3))`
-/

namespace A115382.P1666873542550910846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115381 n : ℚ) ^ (A115381 (A181735 (n + 3)).toNat : ℤ)

end

end A115382.P1666873542550910846

/-! ## A115382.P4913362961222932884

`C(A115381(n), A115381(A181735(n+1)²))`
-/

namespace A115382.P4913362961222932884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115381 n).toNat (A115381 (A181735 (n + 1) ^ 2).toNat).toNat

end

end A115382.P4913362961222932884

/-! ## A115382.P17670787524220688302

`A115381(n)^A115381(A098361(2*n+1))`
-/

namespace A115382.P17670787524220688302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115381 n : ℚ) ^ (A115381 (A098361 (2 * n + 1)).toNat : ℤ)

end

end A115382.P17670787524220688302

/-!
# A115383: Row sums of Thue-Morse correlation triangle A115382.

The programs for A115383, there is no canonical definition to state claims against.
-/

/-! ## A115383.P1316295009492459439

`A108804(n+2)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A115383.P1316295009492459439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A108804 (n + 2) + a (n - 2)

end

end A115383.P1316295009492459439

/-!
# A115384: Partial sums of Thue-Morse numbers A010060.

The programs for A115384, the canonical program `A115384.P12809127359917049786` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115384 has offset 0).

The definition of A115384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115384.P3701426711488059065

`n+1-A159481(n)`
-/

namespace A115384.P3701426711488059065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 - A159481 n)

end

end A115384.P3701426711488059065

namespace A115384

/-- `n+1-A159481(n)` -/
def P3701426711488059065.Spec : Prop :=
  ∀ n, P3701426711488059065.a n = A115384 n

end A115384

/-! ## A115384.P12809127359917049786

`floor((n+1)/2)+(1+(-1)^n)*(1-(-1)^A000120(n))/4`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115384

/-- `floor((n+1)/2)+(1+(-1)^n)*(1-(-1)^A000120(n))/4` -/
def P12809127359917049786.Spec : Prop :=
  ∀ n, P12809127359917049786.a n = (A115384 n : ℚ)

end A115384

/-! ## A115384.P14893130951685990524

`∑[char[xor(n, Δ[n²])]]`
-/

namespace A115384.P14893130951685990524
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P14893130951685990524

namespace A115384

/-- `∑[char[xor(n, Δ[n²])]]` -/
def P14893130951685990524.Spec : Prop :=
  ∀ n, (P14893130951685990524.a n : ℤ) = A115384 n

end A115384

/-! ## A115384.P5900311827727144763

`∑[char[comp[xor(n, 2*n)]]]`
-/

namespace A115384.P5900311827727144763
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P5900311827727144763

namespace A115384

/-- `∑[char[comp[xor(n, 2*n)]]]` -/
def P5900311827727144763.Spec : Prop :=
  ∀ n, (P5900311827727144763.a n : ℤ) = A115384 n

end A115384

/-! ## A115384.P2138740452411681848

`∑[1-char[xor(n, 2*n)]]`
-/

namespace A115384.P2138740452411681848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P2138740452411681848

namespace A115384

/-- `∑[1-char[xor(n, 2*n)]]` -/
def P2138740452411681848.Spec : Prop :=
  ∀ n, P2138740452411681848.a n = A115384 n

end A115384

/-! ## A115384.P3693570244688637119

`∑[xor(1, char[xor(n, 2*n)])]`
-/

namespace A115384.P3693570244688637119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P3693570244688637119

namespace A115384

/-- `∑[xor(1, char[xor(n, 2*n)])]` -/
def P3693570244688637119.Spec : Prop :=
  ∀ n, (P3693570244688637119.a n : ℤ) = A115384 n

end A115384

/-! ## A115384.P13458081233570463961

`∑[1-a(and(n, n-1))]` with `a(0)=0`
-/

namespace A115384.P13458081233570463961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P13458081233570463961

namespace A115384

/-- `∑[1-a(and(n, n-1))]` -/
def P13458081233570463961.Spec : Prop :=
  ∀ n, P13458081233570463961.a n = A115384 n

end A115384

/-! ## A115384.P14305645319692864385

`∑[abs(n%2-a(floor(n/2)))]` with `a(0)=0`
-/

namespace A115384.P14305645319692864385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  |((n % 2 : ℕ) : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P14305645319692864385

namespace A115384

/-- `∑[abs(n%2-a(floor(n/2)))]` -/
def P14305645319692864385.Spec : Prop :=
  ∀ n, P14305645319692864385.a n = A115384 n

end A115384

/-! ## A115384.P8599342192076225953

`∑[A010060(n)]`
-/

namespace A115384.P8599342192076225953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P8599342192076225953

namespace A115384

/-- `∑[A010060(n)]` -/
def P8599342192076225953.Spec : Prop :=
  ∀ n, P8599342192076225953.a n = A115384 n

end A115384

/-! ## A115384.P11644881187462158156

`n-A245710(n)`
-/

namespace A115384.P11644881187462158156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A245710 n

end

end A115384.P11644881187462158156

namespace A115384

/-- `n-A245710(n)` -/
def P11644881187462158156.Spec : Prop :=
  ∀ n, P11644881187462158156.a n = A115384 n

end A115384

/-! ## A115384.P17882315922178433480

`∑[log2(A001285(n))]`
-/

namespace A115384.P17882315922178433480
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001285 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P17882315922178433480

namespace A115384

/-- `∑[log2(A001285(n))]` -/
def P17882315922178433480.Spec : Prop :=
  ∀ n, P17882315922178433480.a n = (A115384 n : ℝ)

end A115384

/-! ## A115384.P4868634286938010594

`∑[1-A010059(n)]`
-/

namespace A115384.P4868634286938010594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P4868634286938010594

namespace A115384

/-- `∑[1-A010059(n)]` -/
def P4868634286938010594.Spec : Prop :=
  ∀ n, P4868634286938010594.a n = A115384 n

end A115384

/-! ## A115384.P10903216430950075365

`∑[A254379(2*n)]`
-/

namespace A115384.P10903216430950075365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P10903216430950075365

namespace A115384

/-- `∑[A254379(2*n)]` -/
def P10903216430950075365.Spec : Prop :=
  ∀ n, P10903216430950075365.a n = A115384 n

end A115384

/-! ## A115384.P9034039462125464335

`∑[A316828(2*n)]`
-/

namespace A115384.P9034039462125464335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P9034039462125464335

namespace A115384

/-- `∑[A316828(2*n)]` -/
def P9034039462125464335.Spec : Prop :=
  ∀ n, P9034039462125464335.a n = A115384 n

end A115384

/-! ## A115384.P16602454289783771986

`∑[A000120(n)%2]`
-/

namespace A115384.P16602454289783771986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P16602454289783771986

namespace A115384

/-- `∑[A000120(n)%2]` -/
def P16602454289783771986.Spec : Prop :=
  ∀ n, P16602454289783771986.a n = A115384 n

end A115384

/-! ## A115384.P11138520103400185123

`∑[and(1, A004718(n))]`
-/

namespace A115384.P11138520103400185123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004718 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P11138520103400185123

namespace A115384

/-- `∑[and(1, A004718(n))]` -/
def P11138520103400185123.Spec : Prop :=
  ∀ n, P11138520103400185123.a n = A115384 n

end A115384

/-! ## A115384.P13597280275628212843

`∑[and(1, A005187(n))]`
-/

namespace A115384.P13597280275628212843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A005187 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P13597280275628212843

namespace A115384

/-- `∑[and(1, A005187(n))]` -/
def P13597280275628212843.Spec : Prop :=
  ∀ n, P13597280275628212843.a n = A115384 n

end A115384

/-! ## A115384.P16277760814394207500

`∑[and(1, A050292(n))]`
-/

namespace A115384.P16277760814394207500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A050292 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P16277760814394207500

namespace A115384

/-- `∑[and(1, A050292(n))]` -/
def P16277760814394207500.Spec : Prop :=
  ∀ n, P16277760814394207500.a n = A115384 n

end A115384

/-! ## A115384.P4506467957108813739

`∑[and(1, A065359(n))]`
-/

namespace A115384.P4506467957108813739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A065359 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115384.P4506467957108813739

namespace A115384

/-- `∑[and(1, A065359(n))]` -/
def P4506467957108813739.Spec : Prop :=
  ∀ n, P4506467957108813739.a n = A115384 n

end A115384

/-!
# A115386: a(1) = 1. For n >= 2, a(n) = sum of the two (not necessarily distinct) earlier terms, a(j) and a(k), which maximizes d(a(j)+a(k)), where d(m) is the number of positive divisors of m. a(n) = the maximum (a(j)+a(k)) if more than one such sum has the maximum number of divisors.

The programs for A115386, there is no canonical definition to state claims against.
-/

/-! ## A115386.P9223753636983790714

`A009223(A000043(n+1))*A115387(A028310(n))`
-/

namespace A115386.P9223753636983790714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (A000043 (n + 1)).toNat * A115387 (A028310 n).toNat

end

end A115386.P9223753636983790714

/-! ## A115386.P2409255169906826944

`A020639(A115387(n+1))*A115387(A028310(n))`
-/

namespace A115386.P2409255169906826944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A115387 (n + 1)).toNat * A115387 (A028310 n).toNat

end

end A115386.P2409255169906826944

/-! ## A115386.P5839573366989156224

`2*A115387(A076640(a(n-1)))` with `a(0)=1`
-/

namespace A115386.P5839573366989156224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A115387 (A076640 (a (n - 1)).toNat).toNat

end

end A115386.P5839573366989156224

/-! ## A115386.P699118089264292059

`A020639(A000079(n))*A115387(A028310(n))`
-/

namespace A115386.P699118089264292059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000079 n).toNat * A115387 (A028310 n).toNat

end

end A115386.P699118089264292059

/-! ## A115386.P11470175962725820063

`A014963(A056503(2*n+1))*A115387(A028310(n))`
-/

namespace A115386.P11470175962725820063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A056503 (2 * n + 1)).toNat * A115387 (A028310 n).toNat

end

end A115386.P11470175962725820063

/-!
# A115387: a(1) = 1. For n >= 2, a(n) = sum of the two (not necessarily distinct) earlier terms, a(j) and a(k), which maximizes d(a(j)+a(k)), where d(m) is the number of positive divisors of m. a(n) = the minimum (a(j)+a(k)) if more than one such sum has the maximum number of divisors.

The programs for A115387, there is no canonical definition to state claims against.
-/

/-! ## A115387.P14318231709198420818

`A115386(n+2)/A009223(A000043(n+2))`
-/

namespace A115387.P14318231709198420818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115386 (n + 2) : ℚ) / (A009223 (A000043 (n + 2)).toNat : ℚ)

end

end A115387.P14318231709198420818

/-! ## A115387.P16851691293411341457

`A115386(n+2)/A000005(A086499(2*(n+1)))`
-/

namespace A115387.P16851691293411341457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115386 (n + 2) : ℚ) / (A000005 (A086499 (2 * (n + 1))).toNat : ℚ)

end

end A115387.P16851691293411341457

/-! ## A115387.P5773844805081540788

`A115386(n+2)/A000005(A115374(2*(n+1)))`
-/

namespace A115387.P5773844805081540788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115386 (n + 2) : ℚ) / (A000005 (A115374 (2 * (n + 1))).toNat : ℚ)

end

end A115387.P5773844805081540788

/-! ## A115387.P13873818356198688305

`∑[A273943(Δ[A115386(n+1)])]`
-/

namespace A115387.P13873818356198688305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115386 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115387.P13873818356198688305

/-! ## A115387.P13903254790461353488

`A115386(n+2)/A307088(A000040(n+1))`
-/

namespace A115387.P13903254790461353488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115386 (n + 2) : ℚ) / (A307088 (A000040 (n + 1)).toNat : ℚ)

end

end A115387.P13903254790461353488

/-!
# A115389: Denominator of rational part of raw moment n of the line point picking problem.

The programs for A115389, there is no canonical definition to state claims against.
-/

/-! ## A115389.P14585502995327768658

`lcm(2, A334721(n+1))/2`
-/

namespace A115389.P14585502995327768658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A334721 (n + 1)) : ℚ) / 2

end

end A115389.P14585502995327768658

/-! ## A115389.P11200435593953832159

`1/2*A058312(n)/gcd(n+1, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A115389.P11200435593953832159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 : ℚ) / 2 * ((A058312 n : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ))

end

end A115389.P11200435593953832159

/-! ## A115389.P6752795851397154644

`A334721(n+1)/A043529(n)`
-/

namespace A115389.P6752795851397154644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334721 (n + 1) : ℚ) / (A043529 n : ℚ)

end

end A115389.P6752795851397154644

/-! ## A115389.P18013105885947903930

`A334721(n+1)/gcd(2, A001700(n))`
-/

namespace A115389.P18013105885947903930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334721 (n + 1) : ℚ) / (Int.gcd 2 (A001700 n) : ℚ)

end

end A115389.P18013105885947903930

/-! ## A115389.P14008127681803547115

`A334721(n+1)/A020639(∏{p}[n+1, #-1])`
-/

namespace A115389.P14008127681803547115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334721 (n + 1) : ℚ) / (A020639 (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat : ℚ)

end

end A115389.P14008127681803547115

/-!
# A115390: Binomial transform of tribonacci sequence A000073.

The programs for A115390, the canonical program `A115390.P18092253920872602523` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115390 has offset 0).

The definition of A115390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115390.P12342190980019003233

`ogf(x^2/(1-4x+4x^2-2x^3))`
-/

namespace A115390.P12342190980019003233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -4, 4, -2] n

end

end A115390.P12342190980019003233

namespace A115390

/-- `ogf(x^2/(1-4x+4x^2-2x^3))` -/
def P12342190980019003233.Spec : Prop :=
  ∀ n, P12342190980019003233.a n = A115390 n

end A115390

/-! ## A115390.P18092253920872602523

`∑[A073357(abs(1-n))]-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115390

/-- `∑[A073357(abs(1-n))]-1` -/
def P18092253920872602523.Spec : Prop :=
  ∀ n, P18092253920872602523.a n = A115390 n

theorem P18092253920872602523.correct : P18092253920872602523.Spec := by
  intro n
  simp only [A115390]

end A115390

/-! ## A115390.P7867984055914443458

`A073357(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A115390.P7867984055914443458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A073357 (n - 1) + a (n - 1)

end

end A115390.P7867984055914443458

namespace A115390

/-- `A073357(n-1)+a(n-1)` -/
def P7867984055914443458.Spec : Prop :=
  ∀ n, P7867984055914443458.a n = A115390 n

end A115390

/-! ## A115390.P5722550267029112098

`∑[A073357(A028310(n)-1)]`
-/

namespace A115390.P5722550267029112098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115390.P5722550267029112098

namespace A115390

/-- `∑[A073357(A028310(n)-1)]` -/
def P5722550267029112098.Spec : Prop :=
  ∀ n, P5722550267029112098.a n = A115390 n

end A115390

/-! ## A115390.P16338550485889758134

`Δ[A103685(abs(1-n))]`
-/

namespace A115390.P16338550485889758134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103685 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115390.P16338550485889758134

namespace A115390

/-- `Δ[A103685(abs(1-n))]` -/
def P16338550485889758134.Spec : Prop :=
  ∀ n, P16338550485889758134.a n = A115390 n

end A115390

/-! ## A115390.P4641260784277978804

`A117189(n)-A099216(n)`
-/

namespace A115390.P4641260784277978804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n - A099216 n

end

end A115390.P4641260784277978804

namespace A115390

/-- `A117189(n)-A099216(n)` -/
def P4641260784277978804.Spec : Prop :=
  ∀ n, P4641260784277978804.a n = A115390 n

end A115390

/-! ## A115390.P12720830203680083438

`A117189(n)%A159035(n)`
-/

namespace A115390.P12720830203680083438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117189 n) (A159035 n)

end

end A115390.P12720830203680083438

namespace A115390

/-- `A117189(n)%A159035(n)` -/
def P12720830203680083438.Spec : Prop :=
  ∀ n, P12720830203680083438.a n = A115390 n

end A115390

/-! ## A115390.P16916259310901253599

`A159036(n)-Δ[A159035(n)]`
-/

namespace A115390.P16916259310901253599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159036 n - (f1 (n + 1) - f1 n)

end

end A115390.P16916259310901253599

namespace A115390

/-- `A159036(n)-Δ[A159035(n)]` -/
def P16916259310901253599.Spec : Prop :=
  ∀ n, P16916259310901253599.a n = A115390 n

end A115390

/-! ## A115390.P17396233335194897114

`∑[A073357(n)%A159035(n)]`
-/

namespace A115390.P17396233335194897114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073357 n) (A159035 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115390.P17396233335194897114

namespace A115390

/-- `∑[A073357(n)%A159035(n)]` -/
def P17396233335194897114.Spec : Prop :=
  ∀ n, P17396233335194897114.a n = A115390 n

end A115390

/-! ## A115390.P678017196033967485

`A159035(n+1)-A099216(n)`
-/

namespace A115390.P678017196033967485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (n + 1) - A099216 n

end

end A115390.P678017196033967485

namespace A115390

/-- `A159035(n+1)-A099216(n)` -/
def P678017196033967485.Spec : Prop :=
  ∀ n, P678017196033967485.a n = A115390 n

end A115390

/-! ## A115390.P10408149790328749074

`A159035(n+1)%A159035(n)`
-/

namespace A115390.P10408149790328749074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159035 (n + 1)) (A159035 n)

end

end A115390.P10408149790328749074

namespace A115390

/-- `A159035(n+1)%A159035(n)` -/
def P10408149790328749074.Spec : Prop :=
  ∀ n, P10408149790328749074.a n = A115390 n

end A115390

/-! ## A115390.P17238802207833386144

`A103685(n)-A103685(abs(1-n))`
-/

namespace A115390.P17238802207833386144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103685 n - A103685 |1 - (n : ℤ)|.toNat

end

end A115390.P17238802207833386144

namespace A115390

/-- `A103685(n)-A103685(abs(1-n))` -/
def P17238802207833386144.Spec : Prop :=
  ∀ n, P17238802207833386144.a n = A115390 n

end A115390

/-! ## A115390.P16555438387265931543

`A159035(n)+A159036(n)-A117189(n)`
-/

namespace A115390.P16555438387265931543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n + (A159036 n - A117189 n)

end

end A115390.P16555438387265931543

namespace A115390

/-- `A159035(n)+A159036(n)-A117189(n)` -/
def P16555438387265931543.Spec : Prop :=
  ∀ n, P16555438387265931543.a n = A115390 n

end A115390

/-! ## A115390.P16488858509644139131

`A159035(n)-(A099216(n)-Δ[A159035(n)])`
-/

namespace A115390.P16488858509644139131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n - (A099216 n - (f1 (n + 1) - f1 n))

end

end A115390.P16488858509644139131

namespace A115390

/-- `A159035(n)-(A099216(n)-Δ[A159035(n)])` -/
def P16488858509644139131.Spec : Prop :=
  ∀ n, P16488858509644139131.a n = A115390 n

end A115390

/-! ## A115390.P6547747996820699367

`A159035(n)+A159036(n)-A159035(n+1)`
-/

namespace A115390.P6547747996820699367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n + (A159036 n - A159035 (n + 1))

end

end A115390.P6547747996820699367

namespace A115390

/-- `A159035(n)+A159036(n)-A159035(n+1)` -/
def P6547747996820699367.Spec : Prop :=
  ∀ n, P6547747996820699367.a n = A115390 n

end A115390

/-! ## A115390.P199618210134244092

`A291000(n)-∑[A117189(n)]`
-/

namespace A115390.P199618210134244092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291000 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115390.P199618210134244092

namespace A115390

/-- `A291000(n)-∑[A117189(n)]` -/
def P199618210134244092.Spec : Prop :=
  ∀ n, P199618210134244092.a n = A115390 n

end A115390

/-! ## A115390.P7839428360471814959

`Δ[A103685(n)]-A073357(n)`
-/

namespace A115390.P7839428360471814959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073357 n

end

end A115390.P7839428360471814959

namespace A115390

/-- `Δ[A103685(n)]-A073357(n)` -/
def P7839428360471814959.Spec : Prop :=
  ∀ n, P7839428360471814959.a n = A115390 n

end A115390

/-! ## A115390.P12360049924274399202

`A078484(n+1)-A117189(n)`
-/

namespace A115390.P12360049924274399202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 (n + 1) - A117189 n

end

end A115390.P12360049924274399202

namespace A115390

/-- `A078484(n+1)-A117189(n)` -/
def P12360049924274399202.Spec : Prop :=
  ∀ n, P12360049924274399202.a n = A115390 n

end A115390

/-! ## A115390.P18037811880144144570

`A291000(n)-A073357(n+1)`
-/

namespace A115390.P18037811880144144570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291000 n - A073357 (n + 1)

end

end A115390.P18037811880144144570

namespace A115390

/-- `A291000(n)-A073357(n+1)` -/
def P18037811880144144570.Spec : Prop :=
  ∀ n, P18037811880144144570.a n = A115390 n

end A115390

/-! ## A115390.P7687888809900377702

`A078484(n+1)-A159035(n+1)`
-/

namespace A115390.P7687888809900377702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 (n + 1) - A159035 (n + 1)

end

end A115390.P7687888809900377702

namespace A115390

/-- `A078484(n+1)-A159035(n+1)` -/
def P7687888809900377702.Spec : Prop :=
  ∀ n, P7687888809900377702.a n = A115390 n

end A115390

/-!
# A115391: a(0)=0; then a(4*k+1)=a(4*k)+(4*k+1)^2, a(4*k+2)=a(4*k+1)+(4*k+3)^2, a(4*k+3)=a(4*k+2)+(4*k+2)^2, a(4*k+4)=a(4*k+3)+(4*k+4)^2.

The programs for A115391, the canonical program `A115391.P13994930002933768273` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115391 has offset 0).

The definition of A115391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115391.P13994930002933768273

`∑[xor(n, a(n-1)%2)²]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A115391

/-- `∑[xor(n, a(n-1)%2)²]` -/
def P13994930002933768273.Spec : Prop :=
  ∀ n, (P13994930002933768273.a n : ℤ) = A115391 n

theorem P13994930002933768273.correct : P13994930002933768273.Spec := by
  intro n
  simp only [A115391]

end A115391

/-! ## A115391.P5778194568003720665

`∑[xor(n, and(1, a(n-1)))²]` with `a(0)=0`
-/

namespace A115391.P5778194568003720665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.xor n (Nat.land 1 (f1 (n - 1))) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115391.P5778194568003720665

namespace A115391

/-- `∑[xor(n, and(1, a(n-1)))²]` -/
def P5778194568003720665.Spec : Prop :=
  ∀ n, (P5778194568003720665.a n : ℤ) = A115391 n

theorem P5778194568003720665.correct : P5778194568003720665.Spec := by
  intro n
  simp only [A115391, Nat.add_sub_cancel, A115391.P5778194568003720665.f1, A115391.P5778194568003720665.a, A115391.P13994930002933768273.f1, A115391.P13994930002933768273.a, SequenceMachineLib.memo_apply]
  try simp

end A115391

/-! ## A115391.P10730768795476306415

`∑[(∑[gcd(4, n+1)-3]+2)²]`
-/

namespace A115391.P10730768795476306415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n + 1) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115391.P10730768795476306415

namespace A115391

/-- `∑[(∑[gcd(4, n+1)-3]+2)²]` -/
def P10730768795476306415.Spec : Prop :=
  ∀ n, P10730768795476306415.a n = A115391 n

end A115391

/-! ## A115391.P16310864948199413897

`∑[∑[floor(a(n-4))]²]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=-1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A115391.P16310864948199413897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, -1, 2] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115391.P16310864948199413897

namespace A115391

/-- `∑[∑[floor(a(n-4))]²]` -/
def P16310864948199413897.Spec : Prop :=
  ∀ n, P16310864948199413897.a n = A115391 n

end A115391

/-! ## A115391.P8097265502016925355

`∑[(1-A133256(n+1))²]`
-/

namespace A115391.P8097265502016925355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A133256 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115391.P8097265502016925355

namespace A115391

/-- `∑[(1-A133256(n+1))²]` -/
def P8097265502016925355.Spec : Prop :=
  ∀ n, P8097265502016925355.a n = A115391 n

end A115391

/-! ## A115391.P12443837440150611681

`∑[xor(n, and(1, A000096(n)))²]`
-/

namespace A115391.P12443837440150611681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land 1 (A000096 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115391.P12443837440150611681

namespace A115391

/-- `∑[xor(n, and(1, A000096(n)))²]` -/
def P12443837440150611681.Spec : Prop :=
  ∀ n, P12443837440150611681.a n = A115391 n

end A115391

/-! ## A115391.P1675291933369974677

`∑[A116966(n)²]-A116966(n)²`
-/

namespace A115391.P1675291933369974677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A116966 n ^ 2

end

end A115391.P1675291933369974677

namespace A115391

/-- `∑[A116966(n)²]-A116966(n)²` -/
def P1675291933369974677.Spec : Prop :=
  ∀ n, P1675291933369974677.a n = A115391 n

end A115391

/-! ## A115391.P6172568310984654581

`∑[(A102560(n+1)-n)²]`
-/

namespace A115391.P6172568310984654581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102560 (n + 1) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115391.P6172568310984654581

namespace A115391

/-- `∑[(A102560(n+1)-n)²]` -/
def P6172568310984654581.Spec : Prop :=
  ∀ n, P6172568310984654581.a n = A115391 n

end A115391

/-! ## A115391.P7898930176705383786

`∑[(A140081(n+1)+n-1)²]`
-/

namespace A115391.P7898930176705383786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140081 (n + 1) + ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115391.P7898930176705383786

namespace A115391

/-- `∑[(A140081(n+1)+n-1)²]` -/
def P7898930176705383786.Spec : Prop :=
  ∀ n, P7898930176705383786.a n = A115391 n

end A115391

/-! ## A115391.P13139549101818666074

`∑[(A219977(n+2)+n)²]`
-/

namespace A115391.P13139549101818666074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A219977 (n + 2) + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115391.P13139549101818666074

namespace A115391

/-- `∑[(A219977(n+2)+n)²]` -/
def P13139549101818666074.Spec : Prop :=
  ∀ n, P13139549101818666074.a n = A115391 n

end A115391

/-! ## A115391.P8406516676318604309

`∑[(3-A080412(n+3))²]`
-/

namespace A115391.P8406516676318604309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A080412 (n + 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115391.P8406516676318604309

namespace A115391

/-- `∑[(3-A080412(n+3))²]` -/
def P8406516676318604309.Spec : Prop :=
  ∀ n, P8406516676318604309.a n = A115391 n

end A115391

/-! ## A115391.P13492924684249268108

`∑[(A098180(2*n+1)-A098180(n+1))²]`
-/

namespace A115391.P13492924684249268108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098180 (2 * n + 1) - A098180 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115391.P13492924684249268108

namespace A115391

/-- `∑[(A098180(2*n+1)-A098180(n+1))²]` -/
def P13492924684249268108.Spec : Prop :=
  ∀ n, P13492924684249268108.a n = A115391 n

end A115391

/-! ## A115391.P13585896815651720864

`∑[(A080412(3*n)-4*n)²]`
-/

namespace A115391.P13585896815651720864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080412 (3 * n) - (4 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115391.P13585896815651720864

namespace A115391

/-- `∑[(A080412(3*n)-4*n)²]` -/
def P13585896815651720864.Spec : Prop :=
  ∀ n, P13585896815651720864.a n = A115391 n

end A115391

/-! ## A115391.P12516021551407915391

`∑[(A140427(2*n+1)-A140427(4*n))²]`
-/

namespace A115391.P12516021551407915391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140427 (2 * n + 1) - A140427 (4 * n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115391.P12516021551407915391

namespace A115391

/-- `∑[(A140427(2*n+1)-A140427(4*n))²]` -/
def P12516021551407915391.Spec : Prop :=
  ∀ n, P12516021551407915391.a n = A115391 n

end A115391

/-! ## A115391.P13067575252446426103

`A394927(A116996(n))`
-/

namespace A115391.P13067575252446426103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394927 (A116996 n).toNat

end

end A115391.P13067575252446426103

namespace A115391

/-- `A394927(A116996(n))` -/
def P13067575252446426103.Spec : Prop :=
  ∀ n, P13067575252446426103.a n = A115391 n

end A115391

/-!
# A115392: First appearance of n-th prime as prime factor in list of semiprimes.

The programs for A115392, the canonical program `A115392.P17407802034294913799` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115392 has offset 1).

The definition of A115392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115392.P14749745521290586976

`eq[1, A338912(n+1)]+1`
-/

namespace A115392.P14749745521290586976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338912 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115392.P14749745521290586976

namespace A115392

/-- `eq[1, A338912(n+1)]+1` -/
def P14749745521290586976.Spec : Prop :=
  ∀ n, (P14749745521290586976.a n : ℤ) = A115392 (n + 1)

end A115392

/-! ## A115392.P7083713227855948358

`eq[2, A084126(n+1)]+1`
-/

namespace A115392.P7083713227855948358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115392.P7083713227855948358

namespace A115392

/-- `eq[2, A084126(n+1)]+1` -/
def P7083713227855948358.Spec : Prop :=
  ∀ n, (P7083713227855948358.a n : ℤ) = A115392 (n + 1)

end A115392

/-! ## A115392.P16900383655889283709

`A058933(A100484(n+1))`
-/

namespace A115392.P16900383655889283709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A100484 (n + 1)).toNat

end

end A115392.P16900383655889283709

namespace A115392

/-- `A058933(A100484(n+1))` -/
def P16900383655889283709.Spec : Prop :=
  ∀ n, P16900383655889283709.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P13008078735164116251

`A058933(A001747(n+2))`
-/

namespace A115392.P13008078735164116251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A001747 (n + 2)).toNat

end

end A115392.P13008078735164116251

namespace A115392

/-- `A058933(A001747(n+2))` -/
def P13008078735164116251.Spec : Prop :=
  ∀ n, P13008078735164116251.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P5880340296071885422

`A058933(A077017(n+2))`
-/

namespace A115392.P5880340296071885422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A077017 (n + 2)).toNat

end

end A115392.P5880340296071885422

namespace A115392

/-- `A058933(A077017(n+2))` -/
def P5880340296071885422.Spec : Prop :=
  ∀ n, P5880340296071885422.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P13458342740024302891

`A058933(2*p?[A064429(n)])`
-/

namespace A115392.P13458342740024302891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115392.P13458342740024302891

namespace A115392

/-- `A058933(2*p?[A064429(n)])` -/
def P13458342740024302891.Spec : Prop :=
  ∀ n, P13458342740024302891.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P11571657363198936244

`A058933(2*A000040(n+1))`
-/

namespace A115392.P11571657363198936244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A000040 (n + 1)).toNat

end

end A115392.P11571657363198936244

namespace A115392

/-- `A058933(2*A000040(n+1))` -/
def P11571657363198936244.Spec : Prop :=
  ∀ n, P11571657363198936244.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P17407802034294913799

`A072000(2*A000040(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A115392

/-- `A072000(2*A000040(n+1))` -/
def P17407802034294913799.Spec : Prop :=
  ∀ n, P17407802034294913799.a n = A115392 (n + 1)

theorem P17407802034294913799.correct : P17407802034294913799.Spec := by
  intro n
  simp only [A115392, Nat.add_sub_cancel]

end A115392

/-! ## A115392.P10281347140573322344

`A058933(2*A008578(n+2))`
-/

namespace A115392.P10281347140573322344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A008578 (n + 2)).toNat

end

end A115392.P10281347140573322344

namespace A115392

/-- `A058933(2*A008578(n+2))` -/
def P10281347140573322344.Spec : Prop :=
  ∀ n, P10281347140573322344.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P602935243909933138

`A072000(2*A008578(n+2))`
-/

namespace A115392.P602935243909933138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 * A008578 (n + 2)).toNat

end

end A115392.P602935243909933138

namespace A115392

/-- `A072000(2*A008578(n+2))` -/
def P602935243909933138.Spec : Prop :=
  ∀ n, P602935243909933138.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P1204521186283410790

`A072000(2*sqrt(A001248(n+1)))`
-/

namespace A115392.P1204521186283410790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (SequenceMachineLib.roundAway (2 * Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A115392.P1204521186283410790

namespace A115392

/-- `A072000(2*sqrt(A001248(n+1)))` -/
def P1204521186283410790.Spec : Prop :=
  ∀ n, P1204521186283410790.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P3951113747840272603

`A058933(2*A207790(2*(n+1)))`
-/

namespace A115392.P3951113747840272603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A207790 (2 * (n + 1))).toNat

end

end A115392.P3951113747840272603

namespace A115392

/-- `A058933(2*A207790(2*(n+1)))` -/
def P3951113747840272603.Spec : Prop :=
  ∀ n, P3951113747840272603.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P12849934735160786313

`A058933(A000040(n+1)+A000040(n+1))`
-/

namespace A115392.P12849934735160786313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A115392.P12849934735160786313

namespace A115392

/-- `A058933(A000040(n+1)+A000040(n+1))` -/
def P12849934735160786313.Spec : Prop :=
  ∀ n, P12849934735160786313.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P15849995076464219936

`A072000(A000040(n+1)+A000040(n+1))`
-/

namespace A115392.P15849995076464219936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A115392.P15849995076464219936

namespace A115392

/-- `A072000(A000040(n+1)+A000040(n+1))` -/
def P15849995076464219936.Spec : Prop :=
  ∀ n, P15849995076464219936.a n = A115392 (n + 1)

theorem P15849995076464219936.correct : P15849995076464219936.Spec := by
  intro n
  simp only [A115392, Nat.add_sub_cancel, A115392.P15849995076464219936.a, A115392.P17407802034294913799.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A115392

/-! ## A115392.P12450674046649303488

`record[A058933(2*A058933(n+1))]`
-/

namespace A115392.P12450674046649303488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A058933 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115392.P12450674046649303488

namespace A115392

/-- `record[A058933(2*A058933(n+1))]` -/
def P12450674046649303488.Spec : Prop :=
  ∀ n, P12450674046649303488.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P14354651080154235439

`A174956(2*A000040(n+1))`
-/

namespace A115392.P14354651080154235439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (2 * A000040 (n + 1)).toNat

end

end A115392.P14354651080154235439

namespace A115392

/-- `A174956(2*A000040(n+1))` -/
def P14354651080154235439.Spec : Prop :=
  ∀ n, P14354651080154235439.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P3940823753096748638

`A174956(A000040(n+1)+A000040(n+1))`
-/

namespace A115392.P3940823753096748638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A115392.P3940823753096748638

namespace A115392

/-- `A174956(A000040(n+1)+A000040(n+1))` -/
def P3940823753096748638.Spec : Prop :=
  ∀ n, P3940823753096748638.a n = A115392 (n + 1)

end A115392

/-! ## A115392.P16056081306364576277

`A174956(2*p?[A174956(n+1)])`
-/

namespace A115392.P16056081306364576277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115392.P16056081306364576277

namespace A115392

/-- `A174956(2*p?[A174956(n+1)])` -/
def P16056081306364576277.Spec : Prop :=
  ∀ n, P16056081306364576277.a n = A115392 (n + 1)

end A115392

/-!
# A115393: Numbers k such that k, k-1 and k-2 are semiprimes.

The programs for A115393, the canonical program `A115393.P13485975269135048129` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115393 has offset 1).

The definition of A115393 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115393.P13485975269135048129

`A086005(n+1)+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A115393

/-- `A086005(n+1)+1` -/
def P13485975269135048129.Spec : Prop :=
  ∀ n, P13485975269135048129.a n = A115393 (n + 1)

theorem P13485975269135048129.correct : P13485975269135048129.Spec := by
  intro n
  simp only [A115393, Nat.add_sub_cancel]

end A115393

/-! ## A115393.P7069367140011243660

`A056809(n+1)+2`
-/

namespace A115393.P7069367140011243660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1) + 2

end

end A115393.P7069367140011243660

namespace A115393

/-- `A056809(n+1)+2` -/
def P7069367140011243660.Spec : Prop :=
  ∀ n, P7069367140011243660.a n = A115393 (n + 1)

end A115393

/-! ## A115393.P5088061153792709547

`2*A086006(n+1)+1`
-/

namespace A115393.P5088061153792709547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086006 (n + 1) + 1

end

end A115393.P5088061153792709547

namespace A115393

/-- `2*A086006(n+1)+1` -/
def P5088061153792709547.Spec : Prop :=
  ∀ n, P5088061153792709547.a n = A115393 (n + 1)

end A115393

/-! ## A115393.P15599471663834510744

`or(2, A056809(-xor(n, -1)))`
-/

namespace A115393.P15599471663834510744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A056809 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A115393.P15599471663834510744

namespace A115393

/-- `or(2, A056809(-xor(n, -1)))` -/
def P15599471663834510744.Spec : Prop :=
  ∀ n, P15599471663834510744.a n = A115393 (n + 1)

end A115393

/-! ## A115393.P9640929960014626232

`A086006(n+1)+A086006(n+1)+A008836(n+1)²`
-/

namespace A115393.P9640929960014626232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086006 (n + 1) + (A086006 (n + 1) + A008836 (n + 1) ^ 2)

end

end A115393.P9640929960014626232

namespace A115393

/-- `A086006(n+1)+A086006(n+1)+A008836(n+1)²` -/
def P9640929960014626232.Spec : Prop :=
  ∀ n, P9640929960014626232.a n = A115393 (n + 1)

end A115393

/-! ## A115393.P15421767311668008404

`∩[A039832(n+1), A278311(n+1)]+1`
-/

namespace A115393.P15421767311668008404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A115393.P15421767311668008404

namespace A115393

/-- `∩[A039832(n+1), A278311(n+1)]+1` -/
def P15421767311668008404.Spec : Prop :=
  ∀ n, (P15421767311668008404.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P10937269429133505168

`∩[A263990(n+1), A278311(n+1)]+1`
-/

namespace A115393.P10937269429133505168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A115393.P10937269429133505168

namespace A115393

/-- `∩[A263990(n+1), A278311(n+1)]+1` -/
def P10937269429133505168.Spec : Prop :=
  ∀ n, (P10937269429133505168.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P16163297479492382208

`∩[A070552(n+1), A109373(n+1)]+1`
-/

namespace A115393.P16163297479492382208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A115393.P16163297479492382208

namespace A115393

/-- `∩[A070552(n+1), A109373(n+1)]+1` -/
def P16163297479492382208.Spec : Prop :=
  ∀ n, (P16163297479492382208.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P373101726788570238

`∩[A070552(n+1), A278311(n+1)]+1`
-/

namespace A115393.P373101726788570238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A115393.P373101726788570238

namespace A115393

/-- `∩[A070552(n+1), A278311(n+1)]+1` -/
def P373101726788570238.Spec : Prop :=
  ∀ n, (P373101726788570238.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P4378414595533802400

`∩[A109373(n+1), A263990(n+1)]+1`
-/

namespace A115393.P4378414595533802400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A115393.P4378414595533802400

namespace A115393

/-- `∩[A109373(n+1), A263990(n+1)]+1` -/
def P4378414595533802400.Spec : Prop :=
  ∀ n, (P4378414595533802400.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P290283052966383512

`∩[A109373(n+1), A278311(n+1)+1]`
-/

namespace A115393.P290283052966383512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115393.P290283052966383512

namespace A115393

/-- `∩[A109373(n+1), A278311(n+1)+1]` -/
def P290283052966383512.Spec : Prop :=
  ∀ n, (P290283052966383512.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P173029852235229642

`∩[A045939(n+1), A070552(n+1)]+2`
-/

namespace A115393.P173029852235229642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A115393.P173029852235229642

namespace A115393

/-- `∩[A045939(n+1), A070552(n+1)]+2` -/
def P173029852235229642.Spec : Prop :=
  ∀ n, (P173029852235229642.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P9721117249326366300

`∩[A109373(n+2)+1, A109373(n+2)]`
-/

namespace A115393.P9721117249326366300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115393.P9721117249326366300

namespace A115393

/-- `∩[A109373(n+2)+1, A109373(n+2)]` -/
def P9721117249326366300.Spec : Prop :=
  ∀ n, (P9721117249326366300.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P2328339629739011181

`4*A123255(n+1)+3`
-/

namespace A115393.P2328339629739011181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123255 (n + 1) + 3

end

end A115393.P2328339629739011181

namespace A115393

/-- `4*A123255(n+1)+3` -/
def P2328339629739011181.Spec : Prop :=
  ∀ n, P2328339629739011181.a n = A115393 (n + 1)

end A115393

/-! ## A115393.P14312737140460926437

`∩[A039832(n+1), A213025(n+1)]+1`
-/

namespace A115393.P14312737140460926437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A115393.P14312737140460926437

namespace A115393

/-- `∩[A039832(n+1), A213025(n+1)]+1` -/
def P14312737140460926437.Spec : Prop :=
  ∀ n, (P14312737140460926437.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P10189154624161842400

`∩[A070552(n+1), A213025(n+1)]+1`
-/

namespace A115393.P10189154624161842400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A115393.P10189154624161842400

namespace A115393

/-- `∩[A070552(n+1), A213025(n+1)]+1` -/
def P10189154624161842400.Spec : Prop :=
  ∀ n, (P10189154624161842400.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P9140404525399254851

`∩[A213025(n+1), A263990(n+1)]+1`
-/

namespace A115393.P9140404525399254851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A115393.P9140404525399254851

namespace A115393

/-- `∩[A213025(n+1), A263990(n+1)]+1` -/
def P9140404525399254851.Spec : Prop :=
  ∀ n, (P9140404525399254851.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P11247254746282890269

`∩[A213025(n+1), A278311(n+1)]+1`
-/

namespace A115393.P11247254746282890269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A115393.P11247254746282890269

namespace A115393

/-- `∩[A213025(n+1), A278311(n+1)]+1` -/
def P11247254746282890269.Spec : Prop :=
  ∀ n, (P11247254746282890269.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P10235795591106172361

`∩[A110300(n+1), A278311(n+1)]+1`
-/

namespace A115393.P10235795591106172361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A115393.P10235795591106172361

namespace A115393

/-- `∩[A110300(n+1), A278311(n+1)]+1` -/
def P10235795591106172361.Spec : Prop :=
  ∀ n, (P10235795591106172361.a n : ℤ) = A115393 (n + 1)

end A115393

/-! ## A115393.P15343947749937948319

`∩[A033945(n+1), A045939(n+1)]+2`
-/

namespace A115393.P15343947749937948319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A115393.P15343947749937948319

namespace A115393

/-- `∩[A033945(n+1), A045939(n+1)]+2` -/
def P15343947749937948319.Spec : Prop :=
  ∀ n, (P15343947749937948319.a n : ℤ) = A115393 (n + 1)

end A115393

/-!
# A115394: List of triples of semiprimes: each three numbers are consecutive semiprimes.

The programs for A115394, the canonical program `A115394.P5030791467478957942` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115394 has offset 1).

The definition of A115394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115394.P5030791467478957942

`A056809(A008620(n))+n%3`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A115394

/-- `A056809(A008620(n))+n%3` -/
def P5030791467478957942.Spec : Prop :=
  ∀ n, P5030791467478957942.a n = A115394 (n + 1)

theorem P5030791467478957942.correct : P5030791467478957942.Spec := by
  intro n
  simp only [A115394, Nat.add_sub_cancel]

end A115394

/-! ## A115394.P12565731635331809117

`A056809(∑[char[3*n]])+A010872(n)`
-/

namespace A115394.P12565731635331809117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (∑ j ∈ Finset.range (n + 1), f1 j) + A010872 n

end

end A115394.P12565731635331809117

namespace A115394

/-- `A056809(∑[char[3*n]])+A010872(n)` -/
def P12565731635331809117.Spec : Prop :=
  ∀ n, P12565731635331809117.a n = A115394 (n + 1)

end A115394

/-! ## A115394.P3667480120711919019

`∩[A346549(n+1), A072795(n)]`
-/

namespace A115394.P3667480120711919019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072795 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115394.P3667480120711919019

namespace A115394

/-- `∩[A346549(n+1), A072795(n)]` -/
def P3667480120711919019.Spec : Prop :=
  ∀ n, (P3667480120711919019.a n : ℤ) = A115394 (n + 1)

end A115394

/-!
# A115395: Primes p such that p+-6 are semiprimes.

The programs for A115395, there is no canonical definition to state claims against.
-/

/-! ## A115395.P15932607813137747726

`p?[A329692(n)+A329640(n+4)]`
-/

namespace A115395.P15932607813137747726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329692 n + A329640 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115395.P15932607813137747726

/-!
# A115398: Numbers k such that both k^2+1 and 2^k + 1 are semiprimes.

The programs for A115398, there is no canonical definition to state claims against.
-/

/-! ## A115398.P8583712784281976760

`eq[A066779(A046798(n)), A278162(n)]`
-/

namespace A115398.P8583712784281976760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (A046798 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115398.P8583712784281976760

/-! ## A115398.P4788132503748639483

`∩[A085722(n+1), A092559(n+1)]`
-/

namespace A115398.P4788132503748639483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115398.P4788132503748639483

/-! ## A115398.P14663146774017643694

`∩[eq[6, A278162(n)], A092559(n+1)]`
-/

namespace A115398.P14663146774017643694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A115398.P14663146774017643694

/-!
# A115399: Expansion of c(x^2-x^3), c(x) the g.f. of A000108.

The programs for A115399, there is no canonical definition to state claims against.
-/

/-! ## A115399.P7535164904087736288

`∑[(-1)^n*A307374(n)]`
-/

namespace A115399.P7535164904087736288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A307374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115399.P7535164904087736288

/-! ## A115399.P15868313925554386253

`∑[A307374(n)/A033999(n)]`
-/

namespace A115399.P15868313925554386253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307374 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115399.P15868313925554386253

/-! ## A115399.P15462287162528904495

`∑[A307374(n)/(2*A059841(n)-1)]`
-/

namespace A115399.P15462287162528904495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307374 n : ℚ) / (2 * A059841 n - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115399.P15462287162528904495

