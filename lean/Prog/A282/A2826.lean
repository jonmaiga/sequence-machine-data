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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A282600: a(n) = Sum_(k=1..phi(n)) floor(d_k/2) where d_k are the totatives of n.

The programs for A282600, the canonical program `A282600.P3309668431358535051` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282600 has offset 1).

The definition of A282600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282600.P16196729014570419550

`A000010(n+1)/2*floor(n/2)`
-/

namespace A282600.P16196729014570419550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / 2 * (⌊(n : ℚ) / 2⌋ : ℚ)

end

end A282600.P16196729014570419550

namespace A282600

/-- `A000010(n+1)/2*floor(n/2)` -/
def P16196729014570419550.Spec : Prop :=
  ∀ n, P16196729014570419550.a n = (A282600 (n + 1) : ℚ)

end A282600

/-! ## A282600.P17959555442318686135

`floor(n/2)*A023022(ceil(sqrt(n²+4)))`
-/

namespace A282600.P17959555442318686135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * A023022 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat

end

end A282600.P17959555442318686135

namespace A282600

/-- `floor(n/2)*A023022(ceil(sqrt(n²+4)))` -/
def P17959555442318686135.Spec : Prop :=
  ∀ n, P17959555442318686135.a n = A282600 (n + 1)

end A282600

/-! ## A282600.P14262051353145350945

`(A109606(n+1)+1)*floor(n/2)/2`
-/

namespace A282600.P14262051353145350945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) * ((⌊(n : ℚ) / 2⌋ : ℚ) / 2)

end

end A282600.P14262051353145350945

namespace A282600

/-- `(A109606(n+1)+1)*floor(n/2)/2` -/
def P14262051353145350945.Spec : Prop :=
  ∀ n, P14262051353145350945.a n = (A282600 (n + 1) : ℚ)

end A282600

/-! ## A282600.P13815713649051930211

`Δ[A002088(n)/2]*A004526(n)`
-/

namespace A282600.P13815713649051930211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A004526 n : ℚ)

end

end A282600.P13815713649051930211

namespace A282600

/-- `Δ[A002088(n)/2]*A004526(n)` -/
def P13815713649051930211.Spec : Prop :=
  ∀ n, P13815713649051930211.a n = (A282600 (n + 1) : ℚ)

end A282600

/-! ## A282600.P18327993427110438707

`A004526(n)/2*Δ[A005728(n)]`
-/

namespace A282600.P18327993427110438707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A282600.P18327993427110438707

namespace A282600

/-- `A004526(n)/2*Δ[A005728(n)]` -/
def P18327993427110438707.Spec : Prop :=
  ∀ n, P18327993427110438707.a n = (A282600 (n + 1) : ℚ)

end A282600

/-! ## A282600.P12565920914982316965

`floor(n/2)*A006370(A000010(n+1))`
-/

namespace A282600.P12565920914982316965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * A006370 (A000010 (n + 1)).toNat

end

end A282600.P12565920914982316965

namespace A282600

/-- `floor(n/2)*A006370(A000010(n+1))` -/
def P12565920914982316965.Spec : Prop :=
  ∀ n, P12565920914982316965.a n = A282600 (n + 1)

end A282600

/-! ## A282600.P6176614700101189270

`(A023896(n+1)-A055034(n+1))/2`
-/

namespace A282600.P6176614700101189270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023896 (n + 1) - A055034 (n + 1) : ℚ) / 2

end

end A282600.P6176614700101189270

namespace A282600

/-- `(A023896(n+1)-A055034(n+1))/2` -/
def P6176614700101189270.Spec : Prop :=
  ∀ n, P6176614700101189270.a n = (A282600 (n + 1) : ℚ)

end A282600

/-! ## A282600.P16555892199136080047

`(A039649(n+1)-1)/2*A004526(n)`
-/

namespace A282600.P16555892199136080047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / 2 * (A004526 n : ℚ)

end

end A282600.P16555892199136080047

namespace A282600

/-- `(A039649(n+1)-1)/2*A004526(n)` -/
def P16555892199136080047.Spec : Prop :=
  ∀ n, P16555892199136080047.a n = (A282600 (n + 1) : ℚ)

end A282600

/-! ## A282600.P7008246583839266122

`A004526(Δ[A002088(n)])*A004526(n)`
-/

namespace A282600.P7008246583839266122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat * A004526 n

end

end A282600.P7008246583839266122

namespace A282600

/-- `A004526(Δ[A002088(n)])*A004526(n)` -/
def P7008246583839266122.Spec : Prop :=
  ∀ n, P7008246583839266122.a n = A282600 (n + 1)

end A282600

/-! ## A282600.P4662488364381133837

`A004526(n)*A004526(Δ[A005728(n)])`
-/

namespace A282600.P4662488364381133837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A004526 (f1 (n + 1) - f1 n).toNat

end

end A282600.P4662488364381133837

namespace A282600

/-- `A004526(n)*A004526(Δ[A005728(n)])` -/
def P4662488364381133837.Spec : Prop :=
  ∀ n, P4662488364381133837.a n = A282600 (n + 1)

end A282600

/-! ## A282600.P5055024072504892445

`A004526(A000010(n+1))*A004526(n)`
-/

namespace A282600.P5055024072504892445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000010 (n + 1)).toNat * A004526 n

end

end A282600.P5055024072504892445

namespace A282600

/-- `A004526(A000010(n+1))*A004526(n)` -/
def P5055024072504892445.Spec : Prop :=
  ∀ n, P5055024072504892445.a n = A282600 (n + 1)

end A282600

/-! ## A282600.P12723575708080788095

`A004526(A039649(n+1))*A004526(n)`
-/

namespace A282600.P12723575708080788095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A039649 (n + 1)).toNat * A004526 n

end

end A282600.P12723575708080788095

namespace A282600

/-- `A004526(A039649(n+1))*A004526(n)` -/
def P12723575708080788095.Spec : Prop :=
  ∀ n, P12723575708080788095.a n = A282600 (n + 1)

end A282600

/-! ## A282600.P16766213250025831390

`A123108(A000010(n+1))*A123108(n)`
-/

namespace A282600.P16766213250025831390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000010 (n + 1)).toNat * A123108 n

end

end A282600.P16766213250025831390

namespace A282600

/-- `A123108(A000010(n+1))*A123108(n)` -/
def P16766213250025831390.Spec : Prop :=
  ∀ n, P16766213250025831390.a n = A282600 (n + 1)

end A282600

/-! ## A282600.P3882647512059621420

`A004526(A109606(n+1)+1)*A004526(n)`
-/

namespace A282600.P3882647512059621420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A109606 (n + 1) + 1).toNat * A004526 n

end

end A282600.P3882647512059621420

namespace A282600

/-- `A004526(A109606(n+1)+1)*A004526(n)` -/
def P3882647512059621420.Spec : Prop :=
  ∀ n, P3882647512059621420.a n = A282600 (n + 1)

end A282600

/-! ## A282600.P8467220221333511194

`(A008619(n)-1)*A008619(A109606(n+1))`
-/

namespace A282600.P8467220221333511194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n - 1) * A008619 (A109606 (n + 1)).toNat

end

end A282600.P8467220221333511194

namespace A282600

/-- `(A008619(n)-1)*A008619(A109606(n+1))` -/
def P8467220221333511194.Spec : Prop :=
  ∀ n, P8467220221333511194.a n = A282600 (n + 1)

end A282600

/-! ## A282600.P9994975675592739677

`A123108(A039649(n+1)-1)*A123108(n)`
-/

namespace A282600.P9994975675592739677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A039649 (n + 1) - 1).toNat * A123108 n

end

end A282600.P9994975675592739677

namespace A282600

/-- `A123108(A039649(n+1)-1)*A123108(n)` -/
def P9994975675592739677.Spec : Prop :=
  ∀ n, P9994975675592739677.a n = A282600 (n + 1)

end A282600

/-! ## A282600.P3309668431358535051

`A004526(n-A016035(n+1))*A004526(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A282600

/-- `A004526(n-A016035(n+1))*A004526(n)` -/
def P3309668431358535051.Spec : Prop :=
  ∀ n, P3309668431358535051.a n = A282600 (n + 1)

theorem P3309668431358535051.correct : P3309668431358535051.Spec := by
  intro n
  simp only [A282600, Nat.add_sub_cancel]

end A282600

/-! ## A282600.P3222020817919336731

`(n-A110654(n))*A110654(A000010(n+1))`
-/

namespace A282600.P3222020817919336731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A110654 n) * A110654 (A000010 (n + 1)).toNat

end

end A282600.P3222020817919336731

namespace A282600

/-- `(n-A110654(n))*A110654(A000010(n+1))` -/
def P3222020817919336731.Spec : Prop :=
  ∀ n, P3222020817919336731.a n = A282600 (n + 1)

end A282600

/-! ## A282600.P12782157144742511442

`(n-A110654(n))*A110654(A109606(n+1))`
-/

namespace A282600.P12782157144742511442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A110654 n) * A110654 (A109606 (n + 1)).toNat

end

end A282600.P12782157144742511442

namespace A282600

/-- `(n-A110654(n))*A110654(A109606(n+1))` -/
def P12782157144742511442.Spec : Prop :=
  ∀ n, P12782157144742511442.a n = A282600 (n + 1)

end A282600

/-! ## A282600.P4376345074355825149

`A002265(A319998(2*(n+1)))*A002265(2*n)`
-/

namespace A282600.P4376345074355825149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A319998 (2 * (n + 1))).toNat * A002265 (2 * n)

end

end A282600.P4376345074355825149

namespace A282600

/-- `A002265(A319998(2*(n+1)))*A002265(2*n)` -/
def P4376345074355825149.Spec : Prop :=
  ∀ n, P4376345074355825149.a n = A282600 (n + 1)

end A282600

/-!
# A282601: a(n) = Sum_(k=1..phi(n)/2) floor(d_k/2) where d_k are the totatives of n.

The programs for A282601, there is no canonical definition to state claims against.
-/

/-! ## A282601.P6682127797138921975

`(A066840(n+1)-A193676(n+1))/2`
-/

namespace A282601.P6682127797138921975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066840 (n + 1) - A193676 (n + 1) : ℚ) / 2

end

end A282601.P6682127797138921975

/-! ## A282601.P2392444812699011078

`A004525(A066840(n+1)-A193676(n+1))`
-/

namespace A282601.P2392444812699011078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A066840 (n + 1) - A193676 (n + 1)).toNat

end

end A282601.P2392444812699011078

/-! ## A282601.P13498840655212046299

`A004526(A066840(n+1)-A193676(n+1))`
-/

namespace A282601.P13498840655212046299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A066840 (n + 1) - A193676 (n + 1)).toNat

end

end A282601.P13498840655212046299

/-! ## A282601.P15194681259015255246

`A026741(A066840(n+1)-A193676(n+1))`
-/

namespace A282601.P15194681259015255246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A066840 (n + 1) - A193676 (n + 1)).toNat

end

end A282601.P15194681259015255246

/-! ## A282601.P11738416580758715365

`A038572(A066840(n+1)-A193676(n+1))`
-/

namespace A282601.P11738416580758715365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A066840 (n + 1) - A193676 (n + 1)).toNat

end

end A282601.P11738416580758715365

/-! ## A282601.P2733136028354212379

`A004525(A066840(n+1)-(A049808(2*(n+1))-A049808(2*n+1)))`
-/

namespace A282601.P2733136028354212379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A066840 (n + 1) - (A049808 (2 * (n + 1)) - A049808 (2 * n + 1))).toNat

end

end A282601.P2733136028354212379

/-! ## A282601.P17054899018781842530

`A004526(A066840(n+1)-(A049808(2*(n+1))-A049808(2*n+1)))`
-/

namespace A282601.P17054899018781842530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A066840 (n + 1) - (A049808 (2 * (n + 1)) - A049808 (2 * n + 1))).toNat

end

end A282601.P17054899018781842530

/-! ## A282601.P6530567710897857036

`A038572((A334628(n+1)+A295574(n+1))/(n+1)-A193676(n+1))`
-/

namespace A282601.P6530567710897857036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (SequenceMachineLib.roundAway ((A334628 (n + 1) + A295574 (n + 1) : ℚ) / (n + 1 : ℚ) - (A193676 (n + 1) : ℚ))).toNat

end

end A282601.P6530567710897857036

/-!
# A282602: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 486", based on the 5-celled von Neumann neighborhood.

The programs for A282602, there is no canonical definition to state claims against.
-/

/-! ## A282602.P2394241710602808225

`A000042(n+1)-A283283(A028310(n))`
-/

namespace A282602.P2394241710602808225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283283 (A028310 n).toNat

end

end A282602.P2394241710602808225

/-! ## A282602.P3998116555754031658

`A002275(n+1)-A283283(A028310(n))`
-/

namespace A282602.P3998116555754031658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A283283 (A028310 n).toNat

end

end A282602.P3998116555754031658

/-! ## A282602.P16931578611767842767

`A282305(n)+A283372(n)-A283283(n)`
-/

namespace A282602.P16931578611767842767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282305 n + (A283372 n - A283283 n)

end

end A282602.P16931578611767842767

/-! ## A282602.P17318545400053681935

`A282306(n)+A283373(n)-A283283(n)`
-/

namespace A282602.P17318545400053681935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282306 n + (A283373 n - A283283 n)

end

end A282602.P17318545400053681935

/-! ## A282602.P11845132979478951225

`A282603(n)+A283284(n)-A283283(n)`
-/

namespace A282602.P11845132979478951225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282603 n + (A283284 n - A283283 n)

end

end A282602.P11845132979478951225

/-!
# A282603: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 486", based on the 5-celled von Neumann neighborhood.

The programs for A282603, there is no canonical definition to state claims against.
-/

/-! ## A282603.P7524488724256237162

`A000042(n+1)-A283284(A028310(n))`
-/

namespace A282603.P7524488724256237162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283284 (A028310 n).toNat

end

end A282603.P7524488724256237162

/-! ## A282603.P8406007926404410242

`A282305(n)+A283372(n)-A283284(n)`
-/

namespace A282603.P8406007926404410242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282305 n + (A283372 n - A283284 n)

end

end A282603.P8406007926404410242

/-! ## A282603.P6692781576628743272

`A282306(n)+A283373(n)-A283284(n)`
-/

namespace A282603.P6692781576628743272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282306 n + (A283373 n - A283284 n)

end

end A282603.P6692781576628743272

/-! ## A282603.P10592670704722672835

`A282602(n)+A283283(n)-A283284(n)`
-/

namespace A282603.P10592670704722672835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282602 n + (A283283 n - A283284 n)

end

end A282603.P10592670704722672835

/-! ## A282603.P12254756247815313430

`A007088(A282605(n))`
-/

namespace A282603.P12254756247815313430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282605 n).toNat

end

end A282603.P12254756247815313430

/-!
# A282604: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 486", based on the 5-celled von Neumann neighborhood.

The programs for A282604, there is no canonical definition to state claims against.
-/

/-! ## A282604.P4268926230382735978

`A282307(n)+A283374(n)-A283285(n)`
-/

namespace A282604.P4268926230382735978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282307 n + (A283374 n - A283285 n)

end

end A282604.P4268926230382735978

/-! ## A282604.P10619190901194113304

`A095121(n)+1-A283285(n)`
-/

namespace A282604.P10619190901194113304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A283285 n)

end

end A282604.P10619190901194113304

/-! ## A282604.P4185830541756384602

`A126646(n)-A283285(A028310(n))`
-/

namespace A282604.P4185830541756384602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283285 (A028310 n).toNat

end

end A282604.P4185830541756384602

/-! ## A282604.P9077780745856465019

`A282308(n)+A283375(n)-A283285(n)`
-/

namespace A282604.P9077780745856465019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282308 n + (A283375 n - A283285 n)

end

end A282604.P9077780745856465019

/-! ## A282604.P8440373532199792593

`A282605(n)+A283286(n)-A283285(n)`
-/

namespace A282604.P8440373532199792593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282605 n + (A283286 n - A283285 n)

end

end A282604.P8440373532199792593

/-! ## A282604.P17368869784732709115

`A126646(n)-A283285(n)%A095121(n)`
-/

namespace A282604.P17368869784732709115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283285 n) (A095121 n)

end

end A282604.P17368869784732709115

/-!
# A282605: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 486", based on the 5-celled von Neumann neighborhood.

The programs for A282605, there is no canonical definition to state claims against.
-/

/-! ## A282605.P10507757931660900832

`A095121(n)+1-A283286(n)`
-/

namespace A282605.P10507757931660900832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A283286 n)

end

end A282605.P10507757931660900832

/-! ## A282605.P11608259120420884440

`or(1, A126646(n)-A283286(n))`
-/

namespace A282605.P11608259120420884440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A283286 n)

end

end A282605.P11608259120420884440

/-! ## A282605.P4734647681601701013

`A126646(n)-A283286(A028310(n))`
-/

namespace A282605.P4734647681601701013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283286 (A028310 n).toNat

end

end A282605.P4734647681601701013

/-! ## A282605.P12434558469034123174

`A282604(n)+A283285(n)-A283286(n)`
-/

namespace A282605.P12434558469034123174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282604 n + (A283285 n - A283286 n)

end

end A282605.P12434558469034123174

/-! ## A282605.P5205348859907594355

`A020707(n)-or(A048578(n), A283286(n))`
-/

namespace A282605.P5205348859907594355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n - Int.lor (A048578 n) (A283286 n)

end

end A282605.P5205348859907594355

/-!
# A282606: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 489", based on the 5-celled von Neumann neighborhood.

The programs for A282606, there is no canonical definition to state claims against.
-/

/-! ## A282606.P15809545946354208147

`A007088(A282608(n))`
-/

namespace A282606.P15809545946354208147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282608 n).toNat

end

end A282606.P15809545946354208147

/-! ## A282606.P13584638677188994692

`A185544(2*A282608(n))`
-/

namespace A282606.P13584638677188994692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282608 n).toNat

end

end A282606.P13584638677188994692

/-! ## A282606.P677318532758369175

`A282447(n)+A075206(A019538(n+1))`
-/

namespace A282606.P677318532758369175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282447 n + A075206 (A019538 (n + 1)).toNat

end

end A282606.P677318532758369175

/-!
# A282607: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 489", based on the 5-celled von Neumann neighborhood.

The programs for A282607, there is no canonical definition to state claims against.
-/

/-! ## A282607.P15524023823220181404

`A007088(A282609(n))`
-/

namespace A282607.P15524023823220181404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282609 n).toNat

end

end A282607.P15524023823220181404

/-! ## A282607.P16306564414814250578

`A185544(2*A282609(n))`
-/

namespace A282607.P16306564414814250578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282609 n).toNat

end

end A282607.P16306564414814250578

/-! ## A282607.P15907741190569524781

`A185544(A282609(n)+A282609(n))`
-/

namespace A282607.P15907741190569524781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A282609 n + A282609 n).toNat

end

end A282607.P15907741190569524781

/-!
# A282611: Expansion of q^(-1/3) * c(q) * c(q^3) / 9 in powers of q where c() is a cubic AGM theta function.

The programs for A282611, there is no canonical definition to state claims against.
-/

/-! ## A282611.P6089746575974610970

`A358871(A358871(n)+A035528(n))`
-/

namespace A282611.P6089746575974610970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358871 (A358871 n + A035528 n).toNat

end

end A282611.P6089746575974610970

/-!
# A282612: Number of inequivalent 3 X 3 matrices with entries in {1,2,3,..,n} up to row permutations.

The programs for A282612, the canonical program `A282612.P13586150964230212098` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282612 has offset 0).

The definition of A282612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282612.P13586150964230212098

`(3*n^6+2*n^3+n^9)/6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282612

/-- `(3*n^6+2*n^3+n^9)/6` -/
def P13586150964230212098.Spec : Prop :=
  ∀ n, P13586150964230212098.a n = (A282612 n : ℚ)

end A282612

/-! ## A282612.P1225878984478707491

`C(n^3+2, 3)`
-/

namespace A282612.P1225878984478707491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 3 + 2) 3

end

end A282612.P1225878984478707491

namespace A282612

/-- `C(n^3+2, 3)` -/
def P1225878984478707491.Spec : Prop :=
  ∀ n, (P1225878984478707491.a n : ℤ) = A282612 n

end A282612

/-! ## A282612.P14158347949613192161

`lcm(n, C(A084380(n), 3))`
-/

namespace A282612.P14158347949613192161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.choose (A084380 n).toNat 3)

end

end A282612.P14158347949613192161

namespace A282612

/-- `lcm(n, C(A084380(n), 3))` -/
def P14158347949613192161.Spec : Prop :=
  ∀ n, (P14158347949613192161.a n : ℤ) = A282612 n

end A282612

/-! ## A282612.P2557375281427646611

`A071232(n)/3*A084380(n)`
-/

namespace A282612.P2557375281427646611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071232 n : ℚ) / 3 * (A084380 n : ℚ)

end

end A282612.P2557375281427646611

namespace A282612

/-- `A071232(n)/3*A084380(n)` -/
def P2557375281427646611.Spec : Prop :=
  ∀ n, P2557375281427646611.a n = (A282612 n : ℚ)

end A282612

/-! ## A282612.P4314134249644978063

`A001014(n)+C(A000578(n), 3)`
-/

namespace A282612.P4314134249644978063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n + (Nat.choose (A000578 n).toNat 3 : ℤ)

end

end A282612.P4314134249644978063

namespace A282612

/-- `A001014(n)+C(A000578(n), 3)` -/
def P4314134249644978063.Spec : Prop :=
  ∀ n, P4314134249644978063.a n = A282612 n

end A282612

/-! ## A282612.P13572394974089455420

`A001014(n)-C(A000578(n), 3)*A057428(n)`
-/

namespace A282612.P13572394974089455420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n - (Nat.choose (A000578 n).toNat 3 : ℤ) * A057428 n

end

end A282612.P13572394974089455420

namespace A282612

/-- `A001014(n)-C(A000578(n), 3)*A057428(n)` -/
def P13572394974089455420.Spec : Prop :=
  ∀ n, P13572394974089455420.a n = A282612 n

end A282612

/-! ## A282612.P15615797889560088360

`C(n*n²+2, 3)*A001222(A321069(n+1))`
-/

namespace A282612.P15615797889560088360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n * n ^ 2 + 2) 3 : ℤ) * A001222 (A321069 (n + 1)).toNat

end

end A282612.P15615797889560088360

namespace A282612

/-- `C(n*n²+2, 3)*A001222(A321069(n+1))` -/
def P15615797889560088360.Spec : Prop :=
  ∀ n, P15615797889560088360.a n = A282612 n

end A282612

/-!
# A282613: Number of inequivalent 3 X 3 matrices with entries in {1,2,3,..,n} up to rotations.

The programs for A282613, the canonical program `A282613.P6229319464162247232` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282613 has offset 0).

The definition of A282613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282613.P6229319464162247232

`(2*n^3+n^5+n^9)/4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282613

/-- `(2*n^3+n^5+n^9)/4` -/
def P6229319464162247232.Spec : Prop :=
  ∀ n, P6229319464162247232.a n = (A282613 n : ℚ)

end A282613

/-! ## A282613.P10113620445660935931

`2*n*A054622(n)-n²`
-/

namespace A282613.P10113620445660935931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A054622 n) - (n ^ 2 : ℤ)

end

end A282613.P10113620445660935931

namespace A282613

/-- `2*n*A054622(n)-n²` -/
def P10113620445660935931.Spec : Prop :=
  ∀ n, P10113620445660935931.a n = A282613 n

end A282613

/-! ## A282613.P10463737953560104644

`A282614(n)-A085744(n)`
-/

namespace A282613.P10463737953560104644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282614 n - A085744 n

end

end A282613.P10463737953560104644

namespace A282613

/-- `A282614(n)-A085744(n)` -/
def P10463737953560104644.Spec : Prop :=
  ∀ n, P10463737953560104644.a n = A282613 n

end A282613

/-! ## A282613.P7457362471139590235

`n*A006528(n²)`
-/

namespace A282613.P7457362471139590235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006528 (n ^ 2)

end

end A282613.P7457362471139590235

namespace A282613

/-- `n*A006528(n²)` -/
def P7457362471139590235.Spec : Prop :=
  ∀ n, P7457362471139590235.a n = A282613 n

end A282613

/-! ## A282613.P10254638944439738678

`record[A006528(n)*A037213(n)]`
-/

namespace A282613.P10254638944439738678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n * A037213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282613.P10254638944439738678

namespace A282613

/-- `record[A006528(n)*A037213(n)]` -/
def P10254638944439738678.Spec : Prop :=
  ∀ n, P10254638944439738678.a n = A282613 n

end A282613

/-!
# A282614: Number of inequivalent 3 X 3 matrices with entries in {1,2,3,..,n} up to vertical and horizontal reflections.

The programs for A282614, the canonical program `A282614.P3144436081735370725` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282614 has offset 0).

The definition of A282614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282614.P3144436081735370725

`(2*n+1+n^4)*n^5/4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282614

/-- `(2*n+1+n^4)*n^5/4` -/
def P3144436081735370725.Spec : Prop :=
  ∀ n, P3144436081735370725.a n = (A282614 n : ℚ)

end A282614

/-! ## A282614.P886152019723430658

`A282613(n)+A085744(n)`
-/

namespace A282614.P886152019723430658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282613 n + A085744 n

end

end A282614.P886152019723430658

namespace A282614

/-- `A282613(n)+A085744(n)` -/
def P886152019723430658.Spec : Prop :=
  ∀ n, P886152019723430658.a n = A282614 n

end A282614

/-! ## A282614.P10483064202861818568

`A168178(n)+A168555(n)-A282613(n)`
-/

namespace A282614.P10483064202861818568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n + (A168555 n - A282613 n)

end

end A282614.P10483064202861818568

namespace A282614

/-- `A168178(n)+A168555(n)-A282613(n)` -/
def P10483064202861818568.Spec : Prop :=
  ∀ n, P10483064202861818568.a n = A282614 n

end A282614

/-!
# A282615: Number of self-conjugate separable solutions of X + Y = 2Z (integer, disjoint triples from {1,2,3,...,3n}).

The programs for A282615, there is no canonical definition to state claims against.
-/

/-! ## A282615.P9498654706950713623

`A282616(n+1)-A279197(n+1)`
-/

namespace A282615.P9498654706950713623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282616 (n + 1) - A279197 (n + 1)

end

end A282615.P9498654706950713623

/-! ## A282615.P14131964590577903601

`A279199(n+1)-A282618(n+1)`
-/

namespace A282615.P14131964590577903601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279199 (n + 1) - A282618 (n + 1)

end

end A282615.P14131964590577903601

/-! ## A282615.P14197307784713080334

`A282616(n+1)+A282617(n+1)-A202705(n+1)`
-/

namespace A282615.P14197307784713080334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282616 (n + 1) + (A282617 (n + 1) - A202705 (n + 1))

end

end A282615.P14197307784713080334

/-! ## A282615.P1849107647993091059

`A104429(n+1)-A282619(n+1)-A279197(n+1)`
-/

namespace A282615.P1849107647993091059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104429 (n + 1) - A282619 (n + 1) - A279197 (n + 1)

end

end A282615.P1849107647993091059

/-! ## A282615.P8639917924433716736

`A279199(n+1)-(A282619(n+1)-A282617(n+1))`
-/

namespace A282615.P8639917924433716736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279199 (n + 1) - (A282619 (n + 1) - A282617 (n + 1))

end

end A282615.P8639917924433716736

/-!
# A282616: Number of self-conjugate solutions of X + Y = 2Z (integer, disjoint triples from {1,2,3,...,3n}).

The programs for A282616, there is no canonical definition to state claims against.
-/

/-! ## A282616.P15224641481408012745

`A282615(n+1)+A279197(n+1)`
-/

namespace A282616.P15224641481408012745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282615 (n + 1) + A279197 (n + 1)

end

end A282616.P15224641481408012745

/-! ## A282616.P8804704647025253547

`A104429(n+1)-A282619(n+1)`
-/

namespace A282616.P8804704647025253547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104429 (n + 1) - A282619 (n + 1)

end

end A282616.P8804704647025253547

/-! ## A282616.P2069487024036048705

`A279197(n+1)+A279199(n+1)-A282618(n+1)`
-/

namespace A282616.P2069487024036048705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279197 (n + 1) + (A279199 (n + 1) - A282618 (n + 1))

end

end A282616.P2069487024036048705

/-! ## A282616.P15977522034975334671

`A202705(n+1)+A282615(n+1)-A282617(n+1)`
-/

namespace A282616.P15977522034975334671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202705 (n + 1) + (A282615 (n + 1) - A282617 (n + 1))

end

end A282616.P15977522034975334671

/-! ## A282616.P16475553704414699447

`A282615(n+1)+A202705(n+1)-2*A279198(n+1)`
-/

namespace A282616.P16475553704414699447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282615 (n + 1) + (A202705 (n + 1) - 2 * A279198 (n + 1))

end

end A282616.P16475553704414699447

/-!
# A282617: Number of non-self-conjugate inseparable solutions of X + Y = 2Z (integer, disjoint triples from {1,2,3,...,3n}).

The programs for A282617, there is no canonical definition to state claims against.
-/

/-! ## A282617.P2320512046824599814

`A202705(n+1)-A279197(n+1)`
-/

namespace A282617.P2320512046824599814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202705 (n + 1) - A279197 (n + 1)

end

end A282617.P2320512046824599814

/-! ## A282617.P8916686207431435831

`A282619(n+1)-A282618(n+1)`
-/

namespace A282617.P8916686207431435831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282619 (n + 1) - A282618 (n + 1)

end

end A282617.P8916686207431435831

/-! ## A282617.P9034045238091014048

`A104429(n+1)-(A279199(n+1)+A279197(n+1))`
-/

namespace A282617.P9034045238091014048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104429 (n + 1) - (A279199 (n + 1) + A279197 (n + 1))

end

end A282617.P9034045238091014048

/-! ## A282617.P1042956615535123260

`A202705(n+1)+A282615(n+1)-A282616(n+1)`
-/

namespace A282617.P1042956615535123260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202705 (n + 1) + (A282615 (n + 1) - A282616 (n + 1))

end

end A282617.P1042956615535123260

/-! ## A282617.P14692187954073793997

`2*A279198(n+1)`
-/

namespace A282617.P14692187954073793997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A279198 (n + 1)

end

end A282617.P14692187954073793997

/-!
# A282618: Number of non-self-conjugate separable solutions of X + Y = 2Z (integer, disjoint triples from {1,2,3,...,3n}).

The programs for A282618, there is no canonical definition to state claims against.
-/

/-! ## A282618.P14212939634030224414

`A279199(n+1)-A282615(n+1)`
-/

namespace A282618.P14212939634030224414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279199 (n + 1) - A282615 (n + 1)

end

end A282618.P14212939634030224414

/-! ## A282618.P10877626806956776401

`A282619(n+1)-A282617(n+1)`
-/

namespace A282618.P10877626806956776401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282619 (n + 1) - A282617 (n + 1)

end

end A282618.P10877626806956776401

/-! ## A282618.P12281377410938053518

`A279197(n+1)+A282619(n+1)-A202705(n+1)`
-/

namespace A282618.P12281377410938053518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279197 (n + 1) + (A282619 (n + 1) - A202705 (n + 1))

end

end A282618.P12281377410938053518

/-! ## A282618.P12922543125223547947

`A104429(n+1)-A282616(n+1)-A282617(n+1)`
-/

namespace A282618.P12922543125223547947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104429 (n + 1) - A282616 (n + 1) - A282617 (n + 1)

end

end A282618.P12922543125223547947

/-! ## A282618.P11013751299859222970

`A282619(n+1)-2*A279198(n+1)`
-/

namespace A282618.P11013751299859222970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282619 (n + 1) - 2 * A279198 (n + 1)

end

end A282618.P11013751299859222970

/-!
# A282619: Number of non-self-conjugate solutions of X + Y = 2Z (integer, disjoint triples from {1,2,3,...,3n}).

The programs for A282619, there is no canonical definition to state claims against.
-/

/-! ## A282619.P10190390085005775824

`A282617(n+1)+A282618(n+1)`
-/

namespace A282619.P10190390085005775824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282617 (n + 1) + A282618 (n + 1)

end

end A282619.P10190390085005775824

/-! ## A282619.P16050433112736526783

`A104429(n+1)-A282616(n+1)`
-/

namespace A282619.P16050433112736526783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104429 (n + 1) - A282616 (n + 1)

end

end A282619.P16050433112736526783

/-! ## A282619.P6130079389068248270

`A282618(n+1)+A282617(A291769(n))`
-/

namespace A282619.P6130079389068248270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282618 (n + 1) + A282617 (A291769 n).toNat

end

end A282619.P6130079389068248270

/-! ## A282619.P9835588404720992404

`A282618(n+1)+A282617(A348553(n))`
-/

namespace A282619.P9835588404720992404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282618 (n + 1) + A282617 (A348553 n).toNat

end

end A282619.P9835588404720992404

/-! ## A282619.P16096056137723373931

`A104429(n+1)-(A282615(n+1)+A279197(n+1))`
-/

namespace A282619.P16096056137723373931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104429 (n + 1) - (A282615 (n + 1) + A279197 (n + 1))

end

end A282619.P16096056137723373931

/-!
# A282620: Numbers k such that (67*10^k + 17)/3 is prime.

The programs for A282620, there is no canonical definition to state claims against.
-/

/-! ## A282620.P8261205352957483133

`∑[A337936(A099351(n+1))]`
-/

namespace A282620.P8261205352957483133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337936 (A099351 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282620.P8261205352957483133

/-! ## A282620.P9264838112279983168

`record[A329398(n+1)%A132949(A013928(2*n+5)+1)]`
-/

namespace A282620.P9264838112279983168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329398 (n + 1)) (A132949 (A013928 (2 * n + 5) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282620.P9264838112279983168

/-!
# A282621: Number of Eulerian cycles in the graph C_3 X C_n.

The programs for A282621, there is no canonical definition to state claims against.
-/

/-! ## A282621.P16218609893935318615

`A298117(∑[n+3]+1)`
-/

namespace A282621.P16218609893935318615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298117 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282621.P16218609893935318615

/-! ## A282621.P2209104389175453234

`lcm(2, A298117(A167614(n+1)))`
-/

namespace A282621.P2209104389175453234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A298117 (A167614 (n + 1)).toNat)

end

end A282621.P2209104389175453234

/-! ## A282621.P12931752023754072613

`A298117(A167614(n+1))+A185246(n)`
-/

namespace A282621.P12931752023754072613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298117 (A167614 (n + 1)).toNat + A185246 n

end

end A282621.P12931752023754072613

/-! ## A282621.P12722651428365241494

`A057077(n)²*A298117(A167614(n+1))`
-/

namespace A282621.P12722651428365241494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * A298117 (A167614 (n + 1)).toNat

end

end A282621.P12722651428365241494

/-! ## A282621.P9381265623402947602

`A298117(A167614(n+1))+char[A000045(n+8)]`
-/

namespace A282621.P9381265623402947602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298117 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A282621.P9381265623402947602

/-!
# A282622: Number of digits of the representation of n in the alternating sexagesimal-decimal number system.

The programs for A282622, the canonical program `A282622.P11673872232935592026` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282622 has offset 1).

The definition of A282622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282622.P10529698451466713605

`floor(sqrt((n+1)/10+3))`
-/

namespace A282622.P10529698451466713605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1 : ℚ) / 10 + 3 : ℝ)⌋

end

end A282622.P10529698451466713605

namespace A282622

/-- `floor(sqrt((n+1)/10+3))` -/
def P10529698451466713605.Spec : Prop :=
  ∀ n, P10529698451466713605.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P12506322850311438590

`∑{digits}[2*(n-3)-1, round(tanh(#))]`
-/

namespace A282622.P12506322850311438590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => SequenceMachineLib.roundAway (Real.tanh (x : ℝ))).sum

end

end A282622.P12506322850311438590

namespace A282622

/-- `∑{digits}[2*(n-3)-1, round(tanh(#))]` -/
def P12506322850311438590.Spec : Prop :=
  ∀ n, P12506322850311438590.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P9857593915165872529

`round(root(round(C(n+3, 3)/(n+2)), 7))`
-/

namespace A282622.P9857593915165872529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((Nat.choose (n + 3) 3 : ℚ) / (n + 2 : ℚ)) : ℝ) ^ (1 / (7 : ℝ)))

end

end A282622.P9857593915165872529

namespace A282622

/-- `round(root(round(C(n+3, 3)/(n+2)), 7))` -/
def P9857593915165872529.Spec : Prop :=
  ∀ n, P9857593915165872529.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P10474246188855181871

`A285481(n+4)`
-/

namespace A282622.P10474246188855181871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285481 (n + 4)

end

end A282622.P10474246188855181871

namespace A282622

/-- `A285481(n+4)` -/
def P10474246188855181871.Spec : Prop :=
  ∀ n, P10474246188855181871.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P5722228326869528393

`round(root(A156040(n), 7))`
-/

namespace A282622.P5722228326869528393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A156040 n : ℝ) ^ (1 / (7 : ℝ)))

end

end A282622.P5722228326869528393

namespace A282622

/-- `round(root(A156040(n), 7))` -/
def P5722228326869528393.Spec : Prop :=
  ∀ n, P5722228326869528393.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P558858225186944528

`round(root(A033477(n), 14))`
-/

namespace A282622.P558858225186944528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A033477 n : ℝ) ^ (1 / (14 : ℝ)))

end

end A282622.P558858225186944528

namespace A282622

/-- `round(root(A033477(n), 14))` -/
def P558858225186944528.Spec : Prop :=
  ∀ n, P558858225186944528.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P11673872232935592026

`val(A025547(n+4), 5)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A282622

/-- `val(A025547(n+4), 5)` -/
def P11673872232935592026.Spec : Prop :=
  ∀ n, (P11673872232935592026.a n : ℤ) = A282622 (n + 1)

theorem P11673872232935592026.correct : P11673872232935592026.Spec := by
  intro n
  simp only [A282622, Nat.add_sub_cancel]

end A282622

/-! ## A282622.P14699281337070515349

`round(root(A025487(n+3), 9))`
-/

namespace A282622.P14699281337070515349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A025487 (n + 3) : ℝ) ^ (1 / (9 : ℝ)))

end

end A282622.P14699281337070515349

namespace A282622

/-- `round(root(A025487(n+3), 9))` -/
def P14699281337070515349.Spec : Prop :=
  ∀ n, P14699281337070515349.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P14906651126151161961

`round(sqrt(sqrt(A200247(n+2))))`
-/

namespace A282622.P14906651126151161961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A200247 (n + 2) : ℝ)))

end

end A282622.P14906651126151161961

namespace A282622

/-- `round(sqrt(sqrt(A200247(n+2))))` -/
def P14906651126151161961.Spec : Prop :=
  ∀ n, P14906651126151161961.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P390257058448620554

`round(sqrt(A018252(n+2)-n)/2)`
-/

namespace A282622.P390257058448620554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018252 (n + 2) - (n : ℤ) : ℝ) / 2)

end

end A282622.P390257058448620554

namespace A282622

/-- `round(sqrt(A018252(n+2)-n)/2)` -/
def P390257058448620554.Spec : Prop :=
  ∀ n, P390257058448620554.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P11069679631397731928

`A000005(∑[char[∑[2^(n+3)+1]]]+1)`
-/

namespace A282622.P11069679631397731928
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 3) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282622.P11069679631397731928

namespace A282622

/-- `A000005(∑[char[∑[2^(n+3)+1]]]+1)` -/
def P11069679631397731928.Spec : Prop :=
  ∀ n, P11069679631397731928.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P2440964375104572960

`A055642(∑[A043568(n)])`
-/

namespace A282622.P2440964375104572960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282622.P2440964375104572960

namespace A282622

/-- `A055642(∑[A043568(n)])` -/
def P2440964375104572960.Spec : Prop :=
  ∀ n, P2440964375104572960.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P15287900545752900910

`A055642(∑[A276417(n)])`
-/

namespace A282622.P15287900545752900910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282622.P15287900545752900910

namespace A282622

/-- `A055642(∑[A276417(n)])` -/
def P15287900545752900910.Spec : Prop :=
  ∀ n, P15287900545752900910.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P8386558299433037486

`A055640(p?[A018837(n)])`
-/

namespace A282622.P8386558299433037486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A282622.P8386558299433037486

namespace A282622

/-- `A055640(p?[A018837(n)])` -/
def P8386558299433037486.Spec : Prop :=
  ∀ n, P8386558299433037486.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P17106070227723579538

`A055642(17*A061217(n+1))`
-/

namespace A282622.P17106070227723579538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (17 * A061217 (n + 1)).toNat

end

end A282622.P17106070227723579538

namespace A282622

/-- `A055642(17*A061217(n+1))` -/
def P17106070227723579538.Spec : Prop :=
  ∀ n, P17106070227723579538.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P3410551030390978991

`A055640(A000040(A065033(n)))`
-/

namespace A282622.P3410551030390978991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A000040 (A065033 n).toNat).toNat

end

end A282622.P3410551030390978991

namespace A282622

/-- `A055640(A000040(A065033(n)))` -/
def P3410551030390978991.Spec : Prop :=
  ∀ n, P3410551030390978991.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P12091638074903565179

`A055642(∑[A001221(A000124(n))])`
-/

namespace A282622.P12091638074903565179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282622.P12091638074903565179

namespace A282622

/-- `A055642(∑[A001221(A000124(n))])` -/
def P12091638074903565179.Spec : Prop :=
  ∀ n, P12091638074903565179.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P9733004129996216701

`A055642(∑[A001221(A002061(n))])`
-/

namespace A282622.P9733004129996216701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002061 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282622.P9733004129996216701

namespace A282622

/-- `A055642(∑[A001221(A002061(n))])` -/
def P9733004129996216701.Spec : Prop :=
  ∀ n, P9733004129996216701.a n = A282622 (n + 1)

end A282622

/-! ## A282622.P17400729201543436352

`A055642(∑[A000005(A052307(n))])`
-/

namespace A282622.P17400729201543436352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A052307 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282622.P17400729201543436352

namespace A282622

/-- `A055642(∑[A000005(A052307(n))])` -/
def P17400729201543436352.Spec : Prop :=
  ∀ n, P17400729201543436352.a n = A282622 (n + 1)

end A282622

/-!
# A282625: Number of cyclic groups in the total direct product factorization of the multiplicative group of integers modulo n, for n >= 1.

The programs for A282625, there is no canonical definition to state claims against.
-/

/-! ## A282625.P3958207928043210666

`A091173(A066589(n+1)%A064236(n))`
-/

namespace A282625.P3958207928043210666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091173 (Int.tmod (A066589 (n + 1)) (A064236 n)).toNat

end

end A282625.P3958207928043210666

/-! ## A282625.P124695312955675187

`A193737(A066589(n+1))%p?[A055248(n)]`
-/

namespace A282625.P124695312955675187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193737 (A066589 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A282625.P124695312955675187

/-! ## A282625.P17584165151700380619

`A193737(A066589(n+1))+A036987(A336335(n+1))`
-/

namespace A282625.P17584165151700380619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193737 (A066589 (n + 1)).toNat + A036987 (A336335 (n + 1)).toNat

end

end A282625.P17584165151700380619

/-! ## A282625.P17757856864834242032

`A033273(A066589(n+1))%A294632(n+1)`
-/

namespace A282625.P17757856864834242032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033273 (A066589 (n + 1)).toNat) (A294632 (n + 1))

end

end A282625.P17757856864834242032

/-!
# A282629: Sheffer triangle (exp(x), exp(3*x) - 1). Named S2[3,1].

The programs for A282629, the canonical program `A282629.P8042543695527314130` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282629 has offset 0).

The definition of A282629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282629.P8042543695527314130

`3*T(n-1,k-1)+(1+3*col(n))*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282629

/-- `3*T(n-1,k-1)+(1+3*col(n))*T(n-1,k)` -/
def P8042543695527314130.Spec : Prop :=
  ∀ n, (P8042543695527314130.a n : ℤ) = A282629 n

theorem P8042543695527314130.correct : P8042543695527314130.Spec := by
  intro n
  simp only [A282629]

end A282629

/-! ## A282629.P3725624191591267137

`3^A002262(n)*A111577(n+1)`
-/

namespace A282629.P3725624191591267137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002262 n : ℤ) * (A111577 (n + 1) : ℚ)

end

end A282629.P3725624191591267137

namespace A282629

/-- `3^A002262(n)*A111577(n+1)` -/
def P3725624191591267137.Spec : Prop :=
  ∀ n, P3725624191591267137.a n = (A282629 n : ℚ)

end A282629

/-! ## A282629.P5841277843090566446

`A000244(A002262(n))*A111577(n+1)`
-/

namespace A282629.P5841277843090566446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A111577 (n + 1)

end

end A282629.P5841277843090566446

namespace A282629

/-- `A000244(A002262(n))*A111577(n+1)` -/
def P5841277843090566446.Spec : Prop :=
  ∀ n, P5841277843090566446.a n = A282629 n

end A282629

/-! ## A282629.P9055958834840813919

`A013622(A112367(n))*A111577(n+1)`
-/

namespace A282629.P9055958834840813919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 (A112367 n).toNat * A111577 (n + 1)

end

end A282629.P9055958834840813919

namespace A282629

/-- `A013622(A112367(n))*A111577(n+1)` -/
def P9055958834840813919.Spec : Prop :=
  ∀ n, P9055958834840813919.a n = A282629 n

end A282629

/-! ## A282629.P6630138005528754011

`A111577(n+1)*A140303(A061579(n))`
-/

namespace A282629.P6630138005528754011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111577 (n + 1) * A140303 (A061579 n).toNat

end

end A282629.P6630138005528754011

namespace A282629

/-- `A111577(n+1)*A140303(A061579(n))` -/
def P6630138005528754011.Spec : Prop :=
  ∀ n, P6630138005528754011.a n = A282629 n

end A282629

/-! ## A282629.P2190390844608275048

`A111577(n+1)/A225468(n)*A225466(n)`
-/

namespace A282629.P2190390844608275048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111577 (n + 1) : ℚ) / (A225468 n : ℚ) * (A225466 n : ℚ)

end

end A282629.P2190390844608275048

namespace A282629

/-- `A111577(n+1)/A225468(n)*A225466(n)` -/
def P2190390844608275048.Spec : Prop :=
  ∀ n, P2190390844608275048.a n = (A282629 n : ℚ)

end A282629

/-! ## A282629.P11598760930907705924

`A003959(A059268(n))*A111577(n+1)`
-/

namespace A282629.P11598760930907705924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A059268 n).toNat * A111577 (n + 1)

end

end A282629.P11598760930907705924

namespace A282629

/-- `A003959(A059268(n))*A111577(n+1)` -/
def P11598760930907705924.Spec : Prop :=
  ∀ n, P11598760930907705924.a n = A282629 n

end A282629

/-! ## A282629.P9099272762017793559

`A000265(A036561(n))*A111577(n+1)`
-/

namespace A282629.P9099272762017793559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A036561 n).toNat * A111577 (n + 1)

end

end A282629.P9099272762017793559

namespace A282629

/-- `A000265(A036561(n))*A111577(n+1)` -/
def P9099272762017793559.Spec : Prop :=
  ∀ n, P9099272762017793559.a n = A282629 n

end A282629

/-!
# A282630: Number of steps to reach 1 when starting from n and iterating the map x -> x - A055396(x).

The programs for A282630, there is no canonical definition to state claims against.
-/

/-! ## A282630.P14911183920451654300

`a(n-A055396(n+1))+1` with `a(0)=0`
-/

namespace A282630.P14911183920451654300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A055396 (n + 1)).toNat + 1

end

end A282630.P14911183920451654300

/-! ## A282630.P11560152060540955463

`a(n-A277707(∏{p}[n+1, #]))+1` with `a(0)=0`
-/

namespace A282630.P11560152060540955463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A277707 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat + 1

end

end A282630.P11560152060540955463

/-! ## A282630.P15346233186511303945

`a(n-A000720(A020639(n+1)))+1` with `a(0)=0`
-/

namespace A282630.P15346233186511303945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000720 (A020639 (n + 1)).toNat).toNat + 1

end

end A282630.P15346233186511303945

/-! ## A282630.P13847989494594237298

`a(n-(A286477(n+1)-A080339(n+1)))+1` with `a(0)=0`
-/

namespace A282630.P13847989494594237298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - (A286477 (n + 1) - A080339 (n + 1))).toNat + 1

end

end A282630.P13847989494594237298

/-! ## A282630.P9188482673665974296

`a(n-A003963(A074828(n+1)))+1` with `a(0)=0`
-/

namespace A282630.P9188482673665974296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A003963 (A074828 (n + 1)).toNat).toNat + 1

end

end A282630.P9188482673665974296

/-!
# A282631: The smallest square referenced in A237043 (Numbers n such that 2^n - 1 is not squarefree, but 2^d - 1 is squarefree for every proper divisor d of n.).

The programs for A282631, there is no canonical definition to state claims against.
-/

/-! ## A282631.P4843150933439558791

`A282632(n+1)²`
-/

namespace A282631.P4843150933439558791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282632 (n + 1) ^ 2

end

end A282631.P4843150933439558791

/-! ## A282631.P10043807377138313890

`A272334(A237043(n+1))²`
-/

namespace A282631.P10043807377138313890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (A237043 (n + 1)).toNat ^ 2

end

end A282631.P10043807377138313890

/-! ## A282631.P1020181489324812027

`A002620(2*A282632(n+1))`
-/

namespace A282631.P1020181489324812027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A282632 (n + 1)).toNat

end

end A282631.P1020181489324812027

/-!
# A282632: Square root of the smallest square referenced in A237043 (Numbers n such that 2^n - 1 is not squarefree, but 2^d - 1 is squarefree for every proper divisor d of n.).

The programs for A282632, there is no canonical definition to state claims against.
-/

/-! ## A282632.P3611366993208198023

`sqrt(A282631(n+1))`
-/

namespace A282632.P3611366993208198023
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A282631 (n + 1) : ℝ)

end

end A282632.P3611366993208198023

/-! ## A282632.P11478811134116462084

`A272334(A237043(n+1))`
-/

namespace A282632.P11478811134116462084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (A237043 (n + 1)).toNat

end

end A282632.P11478811134116462084

/-! ## A282632.P14183730276660821610

`A006530(root(A282631(n+1), 2))`
-/

namespace A282632.P14183730276660821610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A282631 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282632.P14183730276660821610

/-! ## A282632.P7925645831817598302

`A014963(root(A282631(n+1), 2))`
-/

namespace A282632.P7925645831817598302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A282631 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282632.P7925645831817598302

/-! ## A282632.P11742376405909666129

`A020639(root(A282631(n+1), 2))`
-/

namespace A282632.P11742376405909666129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A282631 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282632.P11742376405909666129

/-!
# A282633: Numbers n such that n^2 + 1 is the sum of two proper prime powers (A246547) in more than one way.

The programs for A282633, there is no canonical definition to state claims against.
-/

/-! ## A282633.P4083016652168986502

`∩[A300165(n+1), A392710(n+1)]`
-/

namespace A282633.P4083016652168986502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282633.P4083016652168986502

/-! ## A282633.P17334171634688896548

`∩[A316351(n+1), A392710(n+1)]`
-/

namespace A282633.P17334171634688896548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282633.P17334171634688896548

/-! ## A282633.P16396761065013599093

`∩[A300165(n+1), A359397(n+1)]`
-/

namespace A282633.P16396761065013599093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282633.P16396761065013599093

/-! ## A282633.P17836872107276079434

`∩[A316351(n+1), A359397(n+1)]`
-/

namespace A282633.P17836872107276079434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282633.P17836872107276079434

/-!
# A282634: Recursive 2-parameter sequence allowing the Ramanujan's sum calculation.

The programs for A282634, there is no canonical definition to state claims against.
-/

/-! ## A282634.P7025892437366467198

`A390279(A007401(n+1))`
-/

namespace A282634.P7025892437366467198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390279 (A007401 (n + 1)).toNat

end

end A282634.P7025892437366467198

/-! ## A282634.P2692592815129805704

`A054533(∑[char[∑[n]]]²-n)`
-/

namespace A282634.P2692592815129805704
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A282634.P2692592815129805704

/-! ## A282634.P15288765499474025199

`A298983(n)/∑[A010054(n)]`
-/

namespace A282634.P15288765499474025199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298983 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A282634.P15288765499474025199

/-! ## A282634.P16333081174328967696

`A298983(n)/A002024(n+1)`
-/

namespace A282634.P16333081174328967696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298983 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A282634.P16333081174328967696

/-! ## A282634.P14956001401802887923

`A298983(n)/A238801(A057944(n))`
-/

namespace A282634.P14956001401802887923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298983 n : ℚ) / (A238801 (A057944 n).toNat : ℚ)

end

end A282634.P14956001401802887923

/-! ## A282634.P2128133137531093892

`A054532(A245300(n)+A004736(n+1))`
-/

namespace A282634.P2128133137531093892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (A245300 n + A004736 (n + 1)).toNat

end

end A282634.P2128133137531093892

/-!
# A282638: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 557", based on the 5-celled von Neumann neighborhood.

The programs for A282638, there is no canonical definition to state claims against.
-/

/-! ## A282638.P2303543322393813766

`A007088(A283043(n))`
-/

namespace A282638.P2303543322393813766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283043 n).toNat

end

end A282638.P2303543322393813766

/-! ## A282638.P2987774873422402716

`A305989(A282776(n))`
-/

namespace A282638.P2987774873422402716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A282776 n).toNat

end

end A282638.P2987774873422402716

/-! ## A282638.P7867076341466284033

`A185544(2*A283043(n))`
-/

namespace A282638.P7867076341466284033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283043 n).toNat

end

end A282638.P7867076341466284033

/-! ## A282638.P7492015201259628917

`A185544(lcm(2, A283043(n)))`
-/

namespace A282638.P7492015201259628917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283043 n))

end

end A282638.P7492015201259628917

/-! ## A282638.P13122482368342123008

`A283014(A046469(n))`
-/

namespace A282638.P13122482368342123008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283014 (A046469 n).toNat

end

end A282638.P13122482368342123008

/-!
# A282639: Greater value of a coprime pair (x,y) satisfying x^3+y^3=z^2.

The programs for A282639, there is no canonical definition to state claims against.
-/

/-! ## A282639.P7512056885453090216

`A099533(A243492(n)+A032559(n+1))`
-/

namespace A282639.P7512056885453090216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099533 (A243492 n + A032559 (n + 1)).toNat

end

end A282639.P7512056885453090216

/-! ## A282639.P16328954001920715661

`A099533(A114622(n+1)%A118560(n+3))`
-/

namespace A282639.P16328954001920715661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099533 (Int.tmod (A114622 (n + 1)) (A118560 (n + 3))).toNat

end

end A282639.P16328954001920715661

/-! ## A282639.P9192619015999190036

`A099533(A334433(n)^A284099(n+1))`
-/

namespace A282639.P9192619015999190036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099533 (SequenceMachineLib.roundAway ((A334433 n : ℚ) ^ (A284099 (n + 1) : ℤ))).toNat

end

end A282639.P9192619015999190036

/-!
# A282640: Number of n X n 0..1 arrays with no 1 equal to more than one of its king-move neighbors.

The programs for A282640, there is no canonical definition to state claims against.
-/

/-! ## A282640.P4439176279562233621

`A282647(∑[4*n]+1)`
-/

namespace A282640.P4439176279562233621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282640.P4439176279562233621

/-! ## A282640.P16170901282755755188

`record[gcd(A049581(n), A282647(n+1))]`
-/

namespace A282640.P16170901282755755188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A282647 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282640.P16170901282755755188

/-! ## A282640.P7702847799314833513

`A278657(n)*A282647(A001844(n))`
-/

namespace A282640.P7702847799314833513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n * A282647 (A001844 n).toNat

end

end A282640.P7702847799314833513

/-! ## A282640.P5721643556291909123

`lcm(A033999(n), A282647(A001844(n)))`
-/

namespace A282640.P5721643556291909123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A282647 (A001844 n).toNat)

end

end A282640.P5721643556291909123

/-! ## A282640.P14099795743771202367

`or(A010673(n), A282647(A001844(n)))`
-/

namespace A282640.P14099795743771202367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010673 n) (A282647 (A001844 n).toNat)

end

end A282640.P14099795743771202367

/-!
# A282641: Number of nX2 0..1 arrays with no 1 equal to more than one of its king-move neighbors.

The programs for A282641, the canonical program `A282641.P80830668529536845` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282641 has offset 1).

The definition of A282641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282641.P5680917637529470751

`ogf((4+7x+4x^2)/(1-x-3x^2-4x^3))`
-/

namespace A282641.P5680917637529470751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 7, 4] [1, -1, -3, -4] n

end

end A282641.P5680917637529470751

namespace A282641

/-- `ogf((4+7x+4x^2)/(1-x-3x^2-4x^3))` -/
def P5680917637529470751.Spec : Prop :=
  ∀ n, P5680917637529470751.a n = A282641 (n + 1)

end A282641

/-! ## A282641.P80830668529536845

`a(n-1)+3*a(n-2)+4*a(n-3)` with `a(0)=4, a(1)=11, a(2)=27`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282641

/-- `a(n-1)+3*a(n-2)+4*a(n-3)` -/
def P80830668529536845.Spec : Prop :=
  ∀ n, (P80830668529536845.a n : ℤ) = A282641 (n + 1)

theorem P80830668529536845.correct : P80830668529536845.Spec := by
  intro n
  simp only [A282641, Nat.add_sub_cancel]

end A282641

/-! ## A282641.P7090457033537237583

`A282647(∑[n+1]+2)`
-/

namespace A282641.P7090457033537237583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282641.P7090457033537237583

namespace A282641

/-- `A282647(∑[n+1]+2)` -/
def P7090457033537237583.Spec : Prop :=
  ∀ n, P7090457033537237583.a n = A282641 (n + 1)

end A282641

/-! ## A282641.P12418007954589698904

`gcd(n, n+1)*A282647(A000096(n)+3)`
-/

namespace A282641.P12418007954589698904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A282647 (A000096 n + 3).toNat

end

end A282641.P12418007954589698904

namespace A282641

/-- `gcd(n, n+1)*A282647(A000096(n)+3)` -/
def P12418007954589698904.Spec : Prop :=
  ∀ n, P12418007954589698904.a n = A282641 (n + 1)

end A282641

/-! ## A282641.P13669473894575242097

`A282647(A000096(n)+3)%A282642(n+1)`
-/

namespace A282641.P13669473894575242097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282647 (A000096 n + 3).toNat) (A282642 (n + 1))

end

end A282641.P13669473894575242097

namespace A282641

/-- `A282647(A000096(n)+3)%A282642(n+1)` -/
def P13669473894575242097.Spec : Prop :=
  ∀ n, P13669473894575242097.a n = A282641 (n + 1)

end A282641

/-!
# A282642: Number of n X 3 0..1 arrays with no 1 equal to more than one of its king-move neighbors.

The programs for A282642, there is no canonical definition to state claims against.
-/

/-! ## A282642.P2114705722076946189

`A282647(∑[n+2]+4)`
-/

namespace A282642.P2114705722076946189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282642.P2114705722076946189

/-! ## A282642.P5197032667035059568

`or(1, A282647(A167614(n+1)))`
-/

namespace A282642.P5197032667035059568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A282647 (A167614 (n + 1)).toNat)

end

end A282642.P5197032667035059568

/-! ## A282642.P9668980946001400153

`A001511(2*n+1)*A282647(A055998(n)+6)`
-/

namespace A282642.P9668980946001400153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A282647 (A055998 n + 6).toNat

end

end A282642.P9668980946001400153

/-! ## A282642.P3801744625235994498

`A006519(2*n+1)*A282647(A055998(n)+6)`
-/

namespace A282642.P3801744625235994498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A282647 (A055998 n + 6).toNat

end

end A282642.P3801744625235994498

/-! ## A282642.P13414107971718428573

`A001222(A002144(n+1))*A282647(A055998(n)+6)`
-/

namespace A282642.P13414107971718428573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002144 (n + 1)).toNat * A282647 (A055998 n + 6).toNat

end

end A282642.P13414107971718428573

/-!
# A282643: Number of nX4 0..1 arrays with no 1 equal to more than one of its king-move neighbors.

The programs for A282643, there is no canonical definition to state claims against.
-/

/-! ## A282643.P16365888791691041354

`A282647(∑[n+3]+7)`
-/

namespace A282643.P16365888791691041354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A282643.P16365888791691041354

/-!
# A282644: Number of n X 5 0..1 arrays with no 1 equal to more than one of its king-move neighbors.

The programs for A282644, there is no canonical definition to state claims against.
-/

/-! ## A282644.P1756095228831430119

`A282647(A374005(n+1))`
-/

namespace A282644.P1756095228831430119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (A374005 (n + 1)).toNat

end

end A282644.P1756095228831430119

/-! ## A282644.P15152844237314798786

`A282647(eq[6, A131818(n+1)])`
-/

namespace A282644.P15152844237314798786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282644.P15152844237314798786

/-! ## A282644.P5557384223530371193

`A282647(Δ[A264443(n)])`
-/

namespace A282644.P5557384223530371193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (f1 (n + 1) - f1 n).toNat

end

end A282644.P5557384223530371193

/-! ## A282644.P4899101787728013979

`A282647(A046691(n+3))`
-/

namespace A282644.P4899101787728013979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (A046691 (n + 3)).toNat

end

end A282644.P4899101787728013979

/-! ## A282644.P17580325428928997441

`A282647(eq[4, A193592(n)])`
-/

namespace A282644.P17580325428928997441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282644.P17580325428928997441

/-!
# A282645: Number of nX6 0..1 arrays with no 1 equal to more than one of its king-move neighbors.

The programs for A282645, there is no canonical definition to state claims against.
-/

/-! ## A282645.P1280513920461739948

`A282647(A374007(n+1))`
-/

namespace A282645.P1280513920461739948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (A374007 (n + 1)).toNat

end

end A282645.P1280513920461739948

/-! ## A282645.P1295317197693330712

`A282647(eq[7, A131818(n+1)])`
-/

namespace A282645.P1295317197693330712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282645.P1295317197693330712

/-! ## A282645.P17241935116106957772

`A282647(A052905(n+3))`
-/

namespace A282645.P17241935116106957772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (A052905 (n + 3)).toNat

end

end A282645.P17241935116106957772

/-! ## A282645.P1069397509520939133

`A282647(eq[3, A219347(n)])`
-/

namespace A282645.P1069397509520939133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282645.P1069397509520939133

/-! ## A282645.P8137066205887205895

`A282647(eq[5, A193592(n)])`
-/

namespace A282645.P8137066205887205895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282645.P8137066205887205895

/-!
# A282646: Number of nX7 0..1 arrays with no 1 equal to more than one of its king-move neighbors.

The programs for A282646, there is no canonical definition to state claims against.
-/

/-! ## A282646.P7055352547472694722

`A282647(A374008(n+1))`
-/

namespace A282646.P7055352547472694722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (A374008 (n + 1)).toNat

end

end A282646.P7055352547472694722

/-! ## A282646.P2665795071439757170

`A282647(A052905(n+3)+12)`
-/

namespace A282646.P2665795071439757170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (A052905 (n + 3) + 12).toNat

end

end A282646.P2665795071439757170

/-! ## A282646.P5466351156605641662

`A282647(eq[8, A131818(n+1)])`
-/

namespace A282646.P5466351156605641662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282646.P5466351156605641662

/-! ## A282646.P7706041352209597194

`A282647(A055999(n+4))`
-/

namespace A282646.P7706041352209597194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (A055999 (n + 4)).toNat

end

end A282646.P7706041352209597194

/-! ## A282646.P8470741027207933770

`A282647(eq[4, A219347(n)])`
-/

namespace A282646.P8470741027207933770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282646.P8470741027207933770

/-!
# A282650: The larger digit of any pair of adjacent digits is always odd.

The programs for A282650, there is no canonical definition to state claims against.
-/

/-! ## A282650.P5270182046615940101

`A282664(n+1)-A033683(A331576(n))`
-/

namespace A282650.P5270182046615940101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282664 (n + 1) - A033683 (A331576 n).toNat

end

end A282650.P5270182046615940101

/-! ## A282650.P2362011580689385616

`A282664(n+1)-A282673(A245024(n+1))`
-/

namespace A282650.P2362011580689385616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282664 (n + 1) - A282673 (A245024 (n + 1)).toNat

end

end A282650.P2362011580689385616

/-! ## A282650.P10575041183690552475

`A282664(n+1)-A316864(A193384(n))`
-/

namespace A282650.P10575041183690552475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282664 (n + 1) - A316864 (A193384 n).toNat

end

end A282650.P10575041183690552475

/-! ## A282650.P3882941552862786816

`A282664(n+1)-A282673(A313900(n))`
-/

namespace A282650.P3882941552862786816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282664 (n + 1) - A282673 (A313900 n).toNat

end

end A282650.P3882941552862786816

/-! ## A282650.P13243124022334094486

`A282664(n+1)-A102683(A026757(n))`
-/

namespace A282650.P13243124022334094486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282664 (n + 1) - A102683 (A026757 n).toNat

end

end A282650.P13243124022334094486

/-!
# A282651: The larger digit of any pair of adjacent digits is always even.

The programs for A282651, there is no canonical definition to state claims against.
-/

/-! ## A282651.P7078727875371612087

`A282665(n+1)-A102683(A056487(n))`
-/

namespace A282651.P7078727875371612087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282665 (n + 1) - A102683 (A056487 n).toNat

end

end A282651.P7078727875371612087

/-! ## A282651.P7019503654379747808

`A282665(n+1)-A171737(A171699(n))`
-/

namespace A282651.P7019503654379747808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282665 (n + 1) - A171737 (A171699 n).toNat

end

end A282651.P7019503654379747808

/-! ## A282651.P16846083089886301372

`A282665(n+1)-A277143(A147586(n))`
-/

namespace A282651.P16846083089886301372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282665 (n + 1) - A277143 (A147586 n).toNat

end

end A282651.P16846083089886301372

/-! ## A282651.P14271095558965323344

`A282665(n+1)-A282673(A171699(n)!)`
-/

namespace A282651.P14271095558965323344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282665 (n + 1) - A282673 (Nat.factorial (A171699 n).toNat)

end

end A282651.P14271095558965323344

/-! ## A282651.P11856919551584124669

`A282665(n+1)-A185036(A200469(n+1))`
-/

namespace A282651.P11856919551584124669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282665 (n + 1) - A185036 (A200469 (n + 1)).toNat

end

end A282651.P11856919551584124669

/-!
# A282652: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 491", based on the 5-celled von Neumann neighborhood.

The programs for A282652, there is no canonical definition to state claims against.
-/

/-! ## A282652.P16436880606129143837

`A007088(A282654(n))`
-/

namespace A282652.P16436880606129143837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282654 n).toNat

end

end A282652.P16436880606129143837

/-! ## A282652.P13405934462402844188

`A185544(2*A282654(n))`
-/

namespace A282652.P13405934462402844188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282654 n).toNat

end

end A282652.P13405934462402844188

/-!
# A282653: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 491", based on the 5-celled von Neumann neighborhood.

The programs for A282653, there is no canonical definition to state claims against.
-/

/-! ## A282653.P7816720159599255165

`A007088(A282655(n))`
-/

namespace A282653.P7816720159599255165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282655 n).toNat

end

end A282653.P7816720159599255165

/-! ## A282653.P12152820012356603732

`A185544(2*A282655(n))`
-/

namespace A282653.P12152820012356603732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282655 n).toNat

end

end A282653.P12152820012356603732

/-!
# A282654: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 491", based on the 5-celled von Neumann neighborhood.

The programs for A282654, there is no canonical definition to state claims against.
-/

/-! ## A282654.P2857363313759345221

`or(A259481(A116558(n)), A282453(n))`
-/

namespace A282654.P2857363313759345221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A259481 (A116558 n).toNat) (A282453 n)

end

end A282654.P2857363313759345221

/-! ## A282654.P383918434872302389

`or(A058710(A100641(n)), A282453(n))`
-/

namespace A282654.P383918434872302389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058710 (A100641 n).toNat) (A282453 n)

end

end A282654.P383918434872302389

/-! ## A282654.P17489772346602706664

`or(A001878(A000387(n)), A282453(n))`
-/

namespace A282654.P17489772346602706664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001878 (A000387 n).toNat) (A282453 n)

end

end A282654.P17489772346602706664

/-! ## A282654.P3612233928126675552

`or(A000005(A177533(n)), A282453(n))`
-/

namespace A282654.P3612233928126675552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A177533 n).toNat) (A282453 n)

end

end A282654.P3612233928126675552

/-! ## A282654.P3004789129403672003

`or(A010675(A185544(n)), A282453(n))`
-/

namespace A282654.P3004789129403672003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010675 (A185544 n).toNat) (A282453 n)

end

end A282654.P3004789129403672003

/-!
# A282655: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 491", based on the 5-celled von Neumann neighborhood.

The programs for A282655, there is no canonical definition to state claims against.
-/

/-! ## A282655.P8825585380344432121

`or(A070824(A322365(n)), A282299(n))`
-/

namespace A282655.P8825585380344432121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070824 (A322365 n).toNat) (A282299 n)

end

end A282655.P8825585380344432121

/-!
# A282656: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

The programs for A282656, there is no canonical definition to state claims against.
-/

/-! ## A282656.P1800275163532896835

`A007088(A282658(n))`
-/

namespace A282656.P1800275163532896835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282658 n).toNat

end

end A282656.P1800275163532896835

/-! ## A282656.P9283664145773155317

`A185544(2*A282658(n))`
-/

namespace A282656.P9283664145773155317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282658 n).toNat

end

end A282656.P9283664145773155317

/-!
# A282657: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

The programs for A282657, there is no canonical definition to state claims against.
-/

/-! ## A282657.P16006081800508718510

`A007088(A282659(n))`
-/

namespace A282657.P16006081800508718510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282659 n).toNat

end

end A282657.P16006081800508718510

/-! ## A282657.P15757129292487348831

`A185544(2*A282659(n))`
-/

namespace A282657.P15757129292487348831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282659 n).toNat

end

end A282657.P15757129292487348831

/-!
# A282658: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

The programs for A282658, there is no canonical definition to state claims against.
-/

/-! ## A282658.P17699180677008216095

`or(A056654(A165116(n+5)), A282004(n))`
-/

namespace A282658.P17699180677008216095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056654 (A165116 (n + 5)).toNat) (A282004 n)

end

end A282658.P17699180677008216095

/-! ## A282658.P2474648545516855258

`or(A282004(n), A346369(A000123(n)))`
-/

namespace A282658.P2474648545516855258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A282004 n) (A346369 (A000123 n).toNat)

end

end A282658.P2474648545516855258

/-! ## A282658.P15220169424862785907

`A326016(A058187(n))+A282369(n)`
-/

namespace A282658.P15220169424862785907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A058187 n).toNat + A282369 n

end

end A282658.P15220169424862785907

/-! ## A282658.P3878787196769003846

`or(A281981(A002061(n)), A282004(n))`
-/

namespace A282658.P3878787196769003846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A281981 (A002061 n).toNat) (A282004 n)

end

end A282658.P3878787196769003846

/-! ## A282658.P15834857126601399455

`or(A282004(n), A326016(A058187(n)))`
-/

namespace A282658.P15834857126601399455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A282004 n) (A326016 (A058187 n).toNat)

end

end A282658.P15834857126601399455

/-!
# A282659: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

The programs for A282659, there is no canonical definition to state claims against.
-/

/-! ## A282659.P11576265395519251731

`or(A051049(n), A065033(A278346(n)))`
-/

namespace A282659.P11576265395519251731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A065033 (A278346 n).toNat)

end

end A282659.P11576265395519251731

/-! ## A282659.P578730696170918401

`or(A065033(A278346(n)), A282005(n))`
-/

namespace A282659.P578730696170918401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065033 (A278346 n).toNat) (A282005 n)

end

end A282659.P578730696170918401

/-! ## A282659.P13386616858067929183

`A282005(n)+A240852(A000579(n))`
-/

namespace A282659.P13386616858067929183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282005 n + A240852 (A000579 n).toNat

end

end A282659.P13386616858067929183

/-!
# A282660: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 494", based on the 5-celled von Neumann neighborhood.

The programs for A282660, there is no canonical definition to state claims against.
-/

/-! ## A282660.P12691804214449623413

`A000042(n+1)-A283009(A028310(n))`
-/

namespace A282660.P12691804214449623413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283009 (A028310 n).toNat

end

end A282660.P12691804214449623413

/-! ## A282660.P14966526371196418982

`A282661(n)+A283010(n)-A283009(n)`
-/

namespace A282660.P14966526371196418982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282661 n + (A283010 n - A283009 n)

end

end A282660.P14966526371196418982

/-! ## A282660.P18040734258966718715

`A000042(n+1)-A283009(A123108(2*n))`
-/

namespace A282660.P18040734258966718715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283009 (A123108 (2 * n)).toNat

end

end A282660.P18040734258966718715

/-! ## A282660.P6562186246851696673

`A000042(n+1)-A283009(A000007(n)+n)`
-/

namespace A282660.P6562186246851696673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283009 (A000007 n + (n : ℤ)).toNat

end

end A282660.P6562186246851696673

/-! ## A282660.P13116952353298332477

`A000042(n+1)-A057427(n)*A283009(n)`
-/

namespace A282660.P13116952353298332477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A057427 n * A283009 n

end

end A282660.P13116952353298332477

/-!
# A282661: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 494", based on the 5-celled von Neumann neighborhood.

The programs for A282661, there is no canonical definition to state claims against.
-/

/-! ## A282661.P14347274484228606718

`or(1, A000042(n+1)-A283010(n))`
-/

namespace A282661.P14347274484228606718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000042 (n + 1) - A283010 n)

end

end A282661.P14347274484228606718

/-! ## A282661.P13955317302394809613

`A000042(n+1)-A283010(A028310(n))`
-/

namespace A282661.P13955317302394809613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283010 (A028310 n).toNat

end

end A282661.P13955317302394809613

/-! ## A282661.P13852281935847897320

`A002275(n+1)-A283010(A028310(n))`
-/

namespace A282661.P13852281935847897320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A283010 (A028310 n).toNat

end

end A282661.P13852281935847897320

/-! ## A282661.P2016799592240708233

`A282660(n)+A283009(n)-A283010(n)`
-/

namespace A282661.P2016799592240708233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282660 n + (A283009 n - A283010 n)

end

end A282661.P2016799592240708233

/-! ## A282661.P3641836944301104721

`A000042(n+1)-A283010(A123108(2*n))`
-/

namespace A282661.P3641836944301104721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283010 (A123108 (2 * n)).toNat

end

end A282661.P3641836944301104721

/-! ## A282661.P12382057387662767523

`A000042(n+1)-A283010(A000007(n)+n)`
-/

namespace A282661.P12382057387662767523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283010 (A000007 n + (n : ℤ)).toNat

end

end A282661.P12382057387662767523

/-!
# A282662: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 494", based on the 5-celled von Neumann neighborhood.

The programs for A282662, there is no canonical definition to state claims against.
-/

/-! ## A282662.P2947578709911497896

`A126646(n)-A283011(A028310(n))`
-/

namespace A282662.P2947578709911497896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283011 (A028310 n).toNat

end

end A282662.P2947578709911497896

/-! ## A282662.P5803069321881039035

`A282663(n)+A283012(n)-A283011(n)`
-/

namespace A282662.P5803069321881039035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282663 n + (A283012 n - A283011 n)

end

end A282662.P5803069321881039035

/-! ## A282662.P8204176513510045587

`A126646(n)+A057428(n)*A283011(n)`
-/

namespace A282662.P8204176513510045587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A283011 n

end

end A282662.P8204176513510045587

/-! ## A282662.P18093175196234771269

`A126646(n)-A057427(n)*A283011(n)`
-/

namespace A282662.P18093175196234771269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A057427 n * A283011 n

end

end A282662.P18093175196234771269

/-! ## A282662.P16729367000481662920

`A126646(n)-A283011(n)%A282663(n)`
-/

namespace A282662.P16729367000481662920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283011 n) (A282663 n)

end

end A282662.P16729367000481662920

/-!
# A282663: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 494", based on the 5-celled von Neumann neighborhood.

The programs for A282663, there is no canonical definition to state claims against.
-/

/-! ## A282663.P1055737336474252209

`or(1, A126646(n)-A283012(n))`
-/

namespace A282663.P1055737336474252209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A283012 n)

end

end A282663.P1055737336474252209

/-! ## A282663.P2266532331204975921

`A126646(n)-A283012(A028310(n))`
-/

namespace A282663.P2266532331204975921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283012 (A028310 n).toNat

end

end A282663.P2266532331204975921

/-! ## A282663.P8925338462554435001

`A282662(n)+A283011(n)-A283012(n)`
-/

namespace A282663.P8925338462554435001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282662 n + (A283011 n - A283012 n)

end

end A282663.P8925338462554435001

/-! ## A282663.P15312342675834813700

`A126646(n)+A057428(n)*A283012(n)`
-/

namespace A282663.P15312342675834813700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A283012 n

end

end A282663.P15312342675834813700

/-! ## A282663.P5440348756722558399

`A126646(n)-A057427(n)*A283012(n)`
-/

namespace A282663.P5440348756722558399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A057427 n * A283012 n

end

end A282663.P5440348756722558399

/-! ## A282663.P14523245290095474319

`A126646(n)-A283012(n)%A282662(n)`
-/

namespace A282663.P14523245290095474319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283012 n) (A282662 n)

end

end A282663.P14523245290095474319

/-! ## A282663.P3845417710869745358

`A126646(n)-abs(A062157(n)*A283012(n))`
-/

namespace A282663.P3845417710869745358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - |A062157 n * A283012 n|

end

end A282663.P3845417710869745358

/-! ## A282663.P11906957829274739275

`A008683(A008574(n))+A126646(n)-A283012(n)`
-/

namespace A282663.P11906957829274739275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (A126646 n - A283012 n)

end

end A282663.P11906957829274739275

/-!
# A282664: The larger term of the pair (a(n), a(n+1)) is always odd and the larger digit of any pair of adjacent digits is also odd.

The programs for A282664, there is no canonical definition to state claims against.
-/

/-! ## A282664.P5852667939796045818

`or(A277143(A327044(n)), A282650(n+1))`
-/

namespace A282664.P5852667939796045818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277143 (A327044 n).toNat) (A282650 (n + 1))

end

end A282664.P5852667939796045818

/-! ## A282664.P7573292507950759577

`A282650(n+1)+A033683(A331576(n))`
-/

namespace A282664.P7573292507950759577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282650 (n + 1) + A033683 (A331576 n).toNat

end

end A282664.P7573292507950759577

/-! ## A282664.P14232630520223845865

`A282673(A245024(n+1))+A282650(n+1)`
-/

namespace A282664.P14232630520223845865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282673 (A245024 (n + 1)).toNat + A282650 (n + 1)

end

end A282664.P14232630520223845865

/-! ## A282664.P15000031336116528834

`or(A282650(n+1), A306440(A142818(n+1)))`
-/

namespace A282664.P15000031336116528834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A282650 (n + 1)) (A306440 (A142818 (n + 1)).toNat)

end

end A282664.P15000031336116528834

/-! ## A282664.P7365341460025446581

`A316864(A193384(n))+A282650(n+1)`
-/

namespace A282664.P7365341460025446581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A193384 n).toNat + A282650 (n + 1)

end

end A282664.P7365341460025446581

/-!
# A282665: The larger term of the pair (a(n), a(n+1)) is always even and the larger digit of any pair of adjacent digits is also even.

The programs for A282665, there is no canonical definition to state claims against.
-/

/-! ## A282665.P15743835216768613063

`A282651(∑[A110981(n+1)!])`
-/

namespace A282665.P15743835216768613063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A110981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282665.P15743835216768613063

/-! ## A282665.P2204926171874110368

`A282651(A020753(n+1))+A010815(A140814(n))`
-/

namespace A282665.P2204926171874110368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282651 (A020753 (n + 1)).toNat + A010815 (A140814 n).toNat

end

end A282665.P2204926171874110368

/-! ## A282665.P9748843187773620720

`A282651(n+1)+A102683(A056487(n))`
-/

namespace A282665.P9748843187773620720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282651 (n + 1) + A102683 (A056487 n).toNat

end

end A282665.P9748843187773620720

/-! ## A282665.P4936783229476269856

`A282651(n+1)+A171737(A171699(n))`
-/

namespace A282665.P4936783229476269856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282651 (n + 1) + A171737 (A171699 n).toNat

end

end A282665.P4936783229476269856

/-! ## A282665.P10052025724734029642

`A282651(n+1)+A277143(A147586(n))`
-/

namespace A282665.P10052025724734029642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282651 (n + 1) + A277143 (A147586 n).toNat

end

end A282665.P10052025724734029642

/-!
# A282666: The larger term of the pair (a(n), a(n+1)) is always prime and the larger digit of any pair of adjacent digits is also prime.

The programs for A282666, there is no canonical definition to state claims against.
-/

/-! ## A282666.P2978196600329900894

`Δ[A140643(A025487(n+2))]+n`
-/

namespace A282666.P2978196600329900894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140643 (A025487 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A282666.P2978196600329900894

/-!
# A282667: Numbers k such that (7*10^k + 107)/3 is prime.

The programs for A282667, there is no canonical definition to state claims against.
-/

/-! ## A282667.P14691341343594241415

`A322447(n+1)-A322435(A322490(n+1))`
-/

namespace A282667.P14691341343594241415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322447 (n + 1) - A322435 (A322490 (n + 1)).toNat

end

end A282667.P14691341343594241415

/-!
# A282668: Numbers m whose greatest divisor <= sqrt(m) is prime.

The programs for A282668, there is no canonical definition to state claims against.
-/

/-! ## A282668.P4857747363261160773

`eq[3, A000040(a(A033676(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A282668.P4857747363261160773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A000040 (f2 (A033676 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282668.P4857747363261160773

/-! ## A282668.P17830623552413886628

`eq[5, A047271(a(A033676(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A282668.P17830623552413886628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A047271 (f2 (A033676 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282668.P17830623552413886628

/-! ## A282668.P6180563767162387612

`eq[2, A113954(a(A033676(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A282668.P6180563767162387612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A113954 (f2 (A033676 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282668.P6180563767162387612

/-! ## A282668.P7162701212189056499

`eq[1, A001222(A033676(n+1))]+1`
-/

namespace A282668.P7162701212189056499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033676 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A282668.P7162701212189056499

/-! ## A282668.P17883417960442537154

`eq[1, A099042(A033676(n+1)²)]+1`
-/

namespace A282668.P17883417960442537154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099042 (A033676 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A282668.P17883417960442537154

/-!
# A282669: Prime numbers p > 3 such that 2^p - 9 is prime.

The programs for A282669, there is no canonical definition to state claims against.
-/

/-! ## A282669.P8367060207104712761

`p?[A059610(n+1)]`
-/

namespace A282669.P8367060207104712761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282669.P8367060207104712761

/-!
# A282671: Twice composite numbers.

The programs for A282671, the canonical program `A282671.P11944958329678511137` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282671 has offset 1).

The definition of A282671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282671.P11944958329678511137

`2*A002808(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A282671

/-- `2*A002808(n+1)` -/
def P11944958329678511137.Spec : Prop :=
  ∀ n, P11944958329678511137.a n = A282671 (n + 1)

theorem P11944958329678511137.correct : P11944958329678511137.Spec := by
  intro n
  simp only [A282671, Nat.add_sub_cancel]

end A282671

/-! ## A282671.P9773512874597115975

`A139270(n+2)`
-/

namespace A282671.P9773512874597115975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 2)

end

end A282671.P9773512874597115975

namespace A282671

/-- `A139270(n+2)` -/
def P9773512874597115975.Spec : Prop :=
  ∀ n, P9773512874597115975.a n = A282671 (n + 1)

end A282671

/-! ## A282671.P4003348581224670324

`Δ[2*A053767(n)]`
-/

namespace A282671.P4003348581224670324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282671.P4003348581224670324

namespace A282671

/-- `Δ[2*A053767(n)]` -/
def P4003348581224670324.Spec : Prop :=
  ∀ n, P4003348581224670324.a n = A282671 (n + 1)

end A282671

/-! ## A282671.P15627975497065105505

`2*comp[A351078(n)]`
-/

namespace A282671.P15627975497065105505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A282671.P15627975497065105505

namespace A282671

/-- `2*comp[A351078(n)]` -/
def P15627975497065105505.Spec : Prop :=
  ∀ n, (P15627975497065105505.a n : ℤ) = A282671 (n + 1)

end A282671

/-! ## A282671.P11808926828536237594

`2*A018252(n+2)`
-/

namespace A282671.P11808926828536237594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018252 (n + 2)

end

end A282671.P11808926828536237594

namespace A282671

/-- `2*A018252(n+2)` -/
def P11808926828536237594.Spec : Prop :=
  ∀ n, P11808926828536237594.a n = A282671 (n + 1)

end A282671

/-! ## A282671.P16852688883090513472

`2*A141468(n+3)`
-/

namespace A282671.P16852688883090513472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141468 (n + 3)

end

end A282671.P16852688883090513472

namespace A282671

/-- `2*A141468(n+3)` -/
def P16852688883090513472.Spec : Prop :=
  ∀ n, P16852688883090513472.a n = A282671 (n + 1)

end A282671

/-! ## A282671.P17675243153731224892

`2*lt[1, A074206(n)]`
-/

namespace A282671.P17675243153731224892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A282671.P17675243153731224892

namespace A282671

/-- `2*lt[1, A074206(n)]` -/
def P17675243153731224892.Spec : Prop :=
  ∀ n, (P17675243153731224892.a n : ℤ) = A282671 (n + 1)

end A282671

/-! ## A282671.P5382664902674445197

`2*lt[1, A107286(n)]`
-/

namespace A282671.P5382664902674445197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A282671.P5382664902674445197

namespace A282671

/-- `2*lt[1, A107286(n)]` -/
def P5382664902674445197.Spec : Prop :=
  ∀ n, (P5382664902674445197.a n : ℤ) = A282671 (n + 1)

end A282671

/-! ## A282671.P5395950823754789484

`2*lt[1, A107463(n)]`
-/

namespace A282671.P5395950823754789484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A282671.P5395950823754789484

namespace A282671

/-- `2*lt[1, A107463(n)]` -/
def P5395950823754789484.Spec : Prop :=
  ∀ n, (P5395950823754789484.a n : ℤ) = A282671 (n + 1)

end A282671

/-! ## A282671.P6202347008591823440

`2*lt[1, A175126(n)]`
-/

namespace A282671.P6202347008591823440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A282671.P6202347008591823440

namespace A282671

/-- `2*lt[1, A175126(n)]` -/
def P6202347008591823440.Spec : Prop :=
  ∀ n, (P6202347008591823440.a n : ℤ) = A282671 (n + 1)

end A282671

/-! ## A282671.P5028930184049421341

`∑[2^A065310(n+1)]`
-/

namespace A282671.P5028930184049421341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A065310 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282671.P5028930184049421341

namespace A282671

/-- `∑[2^A065310(n+1)]` -/
def P5028930184049421341.Spec : Prop :=
  ∀ n, P5028930184049421341.a n = (A282671 (n + 1) : ℚ)

end A282671

/-! ## A282671.P16421213136260942145

`2*(A072668(n+1)+1)`
-/

namespace A282671.P16421213136260942145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072668 (n + 1) + 1)

end

end A282671.P16421213136260942145

namespace A282671

/-- `2*(A072668(n+1)+1)` -/
def P16421213136260942145.Spec : Prop :=
  ∀ n, P16421213136260942145.a n = A282671 (n + 1)

theorem P16421213136260942145.correct : P16421213136260942145.Spec := by
  intro n
  simp only [A282671, Nat.add_sub_cancel, A282671.P16421213136260942145.a, A282671.P11944958329678511137.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A072668, A072668.P5648318357023435289.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282671

/-! ## A282671.P7513737291093370215

`2*(A079696(n+1)-1)`
-/

namespace A282671.P7513737291093370215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A079696 (n + 1) - 1)

end

end A282671.P7513737291093370215

namespace A282671

/-- `2*(A079696(n+1)-1)` -/
def P7513737291093370215.Spec : Prop :=
  ∀ n, P7513737291093370215.a n = A282671 (n + 1)

theorem P7513737291093370215.correct : P7513737291093370215.Spec := by
  intro n
  simp only [A282671, Nat.add_sub_cancel, A282671.P7513737291093370215.a, A282671.P11944958329678511137.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A079696, A079696.P2621453534582977077.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282671

/-! ## A282671.P7583383105474290761

`2*(A164028(n+1)+3)`
-/

namespace A282671.P7583383105474290761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A164028 (n + 1) + 3)

end

end A282671.P7583383105474290761

namespace A282671

/-- `2*(A164028(n+1)+3)` -/
def P7583383105474290761.Spec : Prop :=
  ∀ n, P7583383105474290761.a n = A282671 (n + 1)

theorem P7583383105474290761.correct : P7583383105474290761.Spec := by
  intro n
  simp only [A282671, Nat.add_sub_cancel, A282671.P7583383105474290761.a, A282671.P11944958329678511137.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A164028, A164028.P16722215845011041546.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282671

/-! ## A282671.P2218349165089472294

`2*A222307(2*n+3)`
-/

namespace A282671.P2218349165089472294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222307 (2 * n + 3)

end

end A282671.P2218349165089472294

namespace A282671

/-- `2*A222307(2*n+3)` -/
def P2218349165089472294.Spec : Prop :=
  ∀ n, P2218349165089472294.a n = A282671 (n + 1)

end A282671

/-! ## A282671.P2334783960410406307

`∩[2*n, A264828(n+1)]`
-/

namespace A282671.P2334783960410406307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282671.P2334783960410406307

namespace A282671

/-- `∩[2*n, A264828(n+1)]` -/
def P2334783960410406307.Spec : Prop :=
  ∀ n, (P2334783960410406307.a n : ℤ) = A282671 (n + 1)

end A282671

/-! ## A282671.P14753468895576540664

`∑[2^Δ[A018252(n+1)]]`
-/

namespace A282671.P14753468895576540664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282671.P14753468895576540664

namespace A282671

/-- `∑[2^Δ[A018252(n+1)]]` -/
def P14753468895576540664.Spec : Prop :=
  ∀ n, P14753468895576540664.a n = (A282671 (n + 1) : ℚ)

end A282671

/-! ## A282671.P17359678711474640016

`2*comp[C(A006530(n+1), n)]`
-/

namespace A282671.P17359678711474640016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A282671.P17359678711474640016

namespace A282671

/-- `2*comp[C(A006530(n+1), n)]` -/
def P17359678711474640016.Spec : Prop :=
  ∀ n, (P17359678711474640016.a n : ℤ) = A282671 (n + 1)

end A282671

/-! ## A282671.P15268072351363103153

`2*comp[C(A020639(n+1), n)]`
-/

namespace A282671.P15268072351363103153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A282671.P15268072351363103153

namespace A282671

/-- `2*comp[C(A020639(n+1), n)]` -/
def P15268072351363103153.Spec : Prop :=
  ∀ n, (P15268072351363103153.a n : ℤ) = A282671 (n + 1)

end A282671

/-! ## A282671.P9318133683161874917

`2*(lt[1, A001222(n+1)]+1)`
-/

namespace A282671.P9318133683161874917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A282671.P9318133683161874917

namespace A282671

/-- `2*(lt[1, A001222(n+1)]+1)` -/
def P9318133683161874917.Spec : Prop :=
  ∀ n, (P9318133683161874917.a n : ℤ) = A282671 (n + 1)

end A282671

/-!
# A282673: The number of groups of order n that are not Lagrangian.

The programs for A282673, there is no canonical definition to state claims against.
-/

/-! ## A282673.P12637768929293014219

`A323390(n+2)%A067973(A024155(n+1))`
-/

namespace A282673.P12637768929293014219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323390 (n + 2)) (A067973 (A024155 (n + 1)).toNat)

end

end A282673.P12637768929293014219

/-! ## A282673.P2368132567674184904

`A000035(A196248(n+1))*A055086(A051516(n+1))`
-/

namespace A282673.P2368132567674184904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A196248 (n + 1)).toNat * A055086 (A051516 (n + 1)).toNat

end

end A282673.P2368132567674184904

/-! ## A282673.P7078130104209667743

`A024155(A277704(n+1)^A024155(n+1))`
-/

namespace A282673.P7078130104209667743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (SequenceMachineLib.roundAway ((A277704 (n + 1) : ℚ) ^ (A024155 (n + 1) : ℤ))).toNat

end

end A282673.P7078130104209667743

/-! ## A282673.P5938082558832022358

`A324966(A005349(n+1)^A024155(n+1))`
-/

namespace A282673.P5938082558832022358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (SequenceMachineLib.roundAway ((A005349 (n + 1) : ℚ) ^ (A024155 (n + 1) : ℤ))).toNat

end

end A282673.P5938082558832022358

/-! ## A282673.P14222439161579582448

`A024155(n+1)*A024155(A127307(n+1))`
-/

namespace A282673.P14222439161579582448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1) * A024155 (A127307 (n + 1)).toNat

end

end A282673.P14222439161579582448

/-! ## A282673.P9045069408866674843

`A024155(A127307(n+1)^A024155(n+1))`
-/

namespace A282673.P9045069408866674843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (SequenceMachineLib.roundAway ((A127307 (n + 1) : ℚ) ^ (A024155 (n + 1) : ℤ))).toNat

end

end A282673.P9045069408866674843

/-! ## A282673.P13715721843959311782

`A024155(C(A127307(n+1), A024155(n+1)))`
-/

namespace A282673.P13715721843959311782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (Nat.choose (A127307 (n + 1)).toNat (A024155 (n + 1)).toNat)

end

end A282673.P13715721843959311782

/-! ## A282673.P2091454300389696222

`val(A313591(A030147(n+1)), 4)`
-/

namespace A282673.P2091454300389696222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A313591 (A030147 (n + 1)).toNat).toNat 4

end

end A282673.P2091454300389696222

/-!
# A282674: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 497", based on the 5-celled von Neumann neighborhood.

The programs for A282674, there is no canonical definition to state claims against.
-/

/-! ## A282674.P5588650798229605534

`A282678(n)%A282683(eq[2, A000005(n+1)])`
-/

namespace A282674.P5588650798229605534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282678 n) (A282683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A282674.P5588650798229605534

/-! ## A282674.P9200853398920139396

`lcm(A008683(A113118(n+1)), A282678(n))`
-/

namespace A282674.P9200853398920139396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A113118 (n + 1)).toNat) (A282678 n)

end

end A282674.P9200853398920139396

/-! ## A282674.P3164984737286716898

`A282678(n)-A008683(A113118(n+1)+2)`
-/

namespace A282674.P3164984737286716898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282678 n - A008683 (A113118 (n + 1) + 2).toNat

end

end A282674.P3164984737286716898

/-! ## A282674.P3249295630027042035

`A282678(n)-A048298(A007088(n))`
-/

namespace A282674.P3249295630027042035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282678 n - A048298 (A007088 n).toNat

end

end A282674.P3249295630027042035

/-! ## A282674.P1603677635543169107

`A007088(A282676(n))`
-/

namespace A282674.P1603677635543169107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282676 n).toNat

end

end A282674.P1603677635543169107

/-!
# A282675: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 497", based on the 5-celled von Neumann neighborhood.

The programs for A282675, there is no canonical definition to state claims against.
-/

/-! ## A282675.P2901774805561003193

`A282679(n)%A001700(eq[2, A000005(n+1)])`
-/

namespace A282675.P2901774805561003193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282679 n) (A001700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A282675.P2901774805561003193

/-! ## A282675.P11432198285301837192

`A005171(A282687(n+1))*A282679(n)`
-/

namespace A282675.P11432198285301837192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A282687 (n + 1)).toNat * A282679 n

end

end A282675.P11432198285301837192

/-! ## A282675.P17408501044398311119

`A005171(A282690(n+1))*A282679(n)`
-/

namespace A282675.P17408501044398311119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A282690 (n + 1)).toNat * A282679 n

end

end A282675.P17408501044398311119

/-! ## A282675.P8249800595484793173

`A282679(n)%A001700(A000124(n))`
-/

namespace A282675.P8249800595484793173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282679 n) (A001700 (A000124 n).toNat)

end

end A282675.P8249800595484793173

/-! ## A282675.P15190654638628329877

`A007088(A282677(n))`
-/

namespace A282675.P15190654638628329877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282677 n).toNat

end

end A282675.P15190654638628329877

/-!
# A282676: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 497", based on the 5-celled von Neumann neighborhood.

The programs for A282676, there is no canonical definition to state claims against.
-/

/-! ## A282676.P1180708664404096430

`A282680(n)-A178333(∑[n²])`
-/

namespace A282676.P1180708664404096430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282680 n - A178333 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282676.P1180708664404096430

/-! ## A282676.P2381857947518667635

`A060576(A000292(n))*A282680(n)`
-/

namespace A282676.P2381857947518667635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A000292 n).toNat * A282680 n

end

end A282676.P2381857947518667635

/-! ## A282676.P6700019292691179309

`A060576(A051868(n))*A282680(n)`
-/

namespace A282676.P6700019292691179309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A051868 n).toNat * A282680 n

end

end A282676.P6700019292691179309

/-! ## A282676.P17238568523755372168

`A093521(A336496(n+1))*A282680(n)`
-/

namespace A282676.P17238568523755372168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093521 (A336496 (n + 1)).toNat * A282680 n

end

end A282676.P17238568523755372168

/-! ## A282676.P482772749022898946

`A282680(n)-A049084(A007416(n+1))`
-/

namespace A282676.P482772749022898946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282680 n - A049084 (A007416 (n + 1)).toNat

end

end A282676.P482772749022898946

/-!
# A282677: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 497", based on the 5-celled von Neumann neighborhood.

The programs for A282677, there is no canonical definition to state claims against.
-/

/-! ## A282677.P9104897262786189321

`A060576(A000292(n))*A282681(n)`
-/

namespace A282677.P9104897262786189321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A000292 n).toNat * A282681 n

end

end A282677.P9104897262786189321

/-! ## A282677.P8061999014492250253

`A060576(A051868(n))*A282681(n)`
-/

namespace A282677.P8061999014492250253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A051868 n).toNat * A282681 n

end

end A282677.P8061999014492250253

/-! ## A282677.P16017267240245797389

`A282681(A000038(A027187(n))+n)`
-/

namespace A282677.P16017267240245797389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282681 (A000038 (A027187 n).toNat + (n : ℤ)).toNat

end

end A282677.P16017267240245797389

/-! ## A282677.P4606241073496312080

`A282681(A000038(A087787(n))+n)`
-/

namespace A282677.P4606241073496312080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282681 (A000038 (A087787 n).toNat + (n : ℤ)).toNat

end

end A282677.P4606241073496312080

/-! ## A282677.P4152864082525288222

`A282681(A000038(A241390(n))+n)`
-/

namespace A282677.P4152864082525288222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282681 (A000038 (A241390 n).toNat + (n : ℤ)).toNat

end

end A282677.P4152864082525288222

/-!
# A282678: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 499", based on the 5-celled von Neumann neighborhood.

The programs for A282678, there is no canonical definition to state claims against.
-/

/-! ## A282678.P9140817379380560335

`A282674(n)+A000007(A027187(n))`
-/

namespace A282678.P9140817379380560335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282674 n + A000007 (A027187 n).toNat

end

end A282678.P9140817379380560335

/-! ## A282678.P17919870268996270758

`or(A000035(A134338(n+1)), A282674(n))`
-/

namespace A282678.P17919870268996270758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A134338 (n + 1)).toNat) (A282674 n)

end

end A282678.P17919870268996270758

/-! ## A282678.P11859301549145476339

`A282674(n)+A000035(A134338(n+1))*A000035(n)`
-/

namespace A282678.P11859301549145476339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282674 n + A000035 (A134338 (n + 1)).toNat * A000035 n

end

end A282678.P11859301549145476339

/-! ## A282678.P18429190666313170336

`A282674(n)+A000035(n*A134338(n+1))`
-/

namespace A282678.P18429190666313170336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282674 n + A000035 ((n : ℤ) * A134338 (n + 1)).toNat

end

end A282678.P18429190666313170336

/-! ## A282678.P16664358762423081333

`A007088(A282680(n))`
-/

namespace A282678.P16664358762423081333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282680 n).toNat

end

end A282678.P16664358762423081333

/-!
# A282679: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 499", based on the 5-celled von Neumann neighborhood.

The programs for A282679, there is no canonical definition to state claims against.
-/

/-! ## A282679.P13651069212213013036

`A007088(A282681(n))`
-/

namespace A282679.P13651069212213013036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282681 n).toNat

end

end A282679.P13651069212213013036

/-! ## A282679.P13365035797004462992

`gcd(A007088(A282414(n)), A282675(n))`
-/

namespace A282679.P13365035797004462992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007088 (A282414 n).toNat) (A282675 n)

end

end A282679.P13365035797004462992

/-! ## A282679.P942950810740730891

`A007088(or(A282414(n), A282677(n)))`
-/

namespace A282679.P942950810740730891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A282414 n) (A282677 n)).toNat

end

end A282679.P942950810740730891

/-! ## A282679.P10979709006178485942

`A007088(or(A048298(2*n), A282677(n)))`
-/

namespace A282679.P10979709006178485942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A048298 (2 * n)) (A282677 n)).toNat

end

end A282679.P10979709006178485942

/-!
# A282680: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 499", based on the 5-celled von Neumann neighborhood.

The programs for A282680, there is no canonical definition to state claims against.
-/

/-! ## A282680.P9084436029250271866

`or(A000007(A000931(n)), A282676(n))`
-/

namespace A282680.P9084436029250271866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000931 n).toNat) (A282676 n)

end

end A282680.P9084436029250271866

/-! ## A282680.P4900939417487372903

`or(A048298(A000292(n)), A282676(n))`
-/

namespace A282680.P4900939417487372903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048298 (A000292 n).toNat) (A282676 n)

end

end A282680.P4900939417487372903

/-! ## A282680.P1529435295661804191

`gcd(A121373(A247981(n+1)), A282676(n))`
-/

namespace A282680.P1529435295661804191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121373 (A247981 (n + 1)).toNat) (A282676 n)

end

end A282680.P1529435295661804191

/-! ## A282680.P15246645035640749583

`A282676(n)+A010051(A298810(n))`
-/

namespace A282680.P15246645035640749583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282676 n + A010051 (A298810 n).toNat

end

end A282680.P15246645035640749583

/-! ## A282680.P17249988382351998117

`A282676(n)+A049084(A007416(n+1))`
-/

namespace A282680.P17249988382351998117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282676 n + A049084 (A007416 (n + 1)).toNat

end

end A282680.P17249988382351998117

/-!
# A282681: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 499", based on the 5-celled von Neumann neighborhood.

The programs for A282681, there is no canonical definition to state claims against.
-/

/-! ## A282681.P703315730415369600

`or(A000122(A000292(n)), A282677(n))`
-/

namespace A282681.P703315730415369600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A000292 n).toNat) (A282677 n)

end

end A282681.P703315730415369600

/-! ## A282681.P9718827924362218017

`or(A000038(A000931(n)), A282677(n))`
-/

namespace A282681.P9718827924362218017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (A000931 n).toNat) (A282677 n)

end

end A282681.P9718827924362218017

/-! ## A282681.P279626157831597289

`or(A105348(A055795(n+1)), A282677(n))`
-/

namespace A282681.P279626157831597289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105348 (A055795 (n + 1)).toNat) (A282677 n)

end

end A282681.P279626157831597289

/-! ## A282681.P6856092638846527495

`A282677(n)+A136521(A007089(2*(n+2)))`
-/

namespace A282681.P6856092638846527495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282677 n + A136521 (A007089 (2 * (n + 2))).toNat

end

end A282681.P6856092638846527495

/-! ## A282681.P12895722645380297979

`or(A000122(A338860(n)), A282677(n))`
-/

namespace A282681.P12895722645380297979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A338860 n).toNat) (A282677 n)

end

end A282681.P12895722645380297979

/-!
# A282682: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 502", based on the 5-celled von Neumann neighborhood.

The programs for A282682, there is no canonical definition to state claims against.
-/

/-! ## A282682.P6000911902338692870

`A000042(n+1)-A283083(ceil(abs(γ-n)))`
-/

namespace A282682.P6000911902338692870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283083 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

end

end A282682.P6000911902338692870

/-! ## A282682.P120167251996827645

`A282683(n)+A283084(n)-A283083(n)`
-/

namespace A282682.P120167251996827645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282683 n + (A283084 n - A283083 n)

end

end A282682.P120167251996827645

/-! ## A282682.P18422373753557935738

`A000042(n+1)+A000007(n)-A283083(n)`
-/

namespace A282682.P18422373753557935738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A283083 n)

end

end A282682.P18422373753557935738

/-! ## A282682.P1689285199449062350

`A282683(n)+A007088(A283086(n))-A283083(n)`
-/

namespace A282682.P1689285199449062350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282683 n + (A007088 (A283086 n).toNat - A283083 n)

end

end A282682.P1689285199449062350

/-! ## A282682.P17321083544486049163

`A007088(A282684(n))`
-/

namespace A282682.P17321083544486049163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282684 n).toNat

end

end A282682.P17321083544486049163

/-!
# A282683: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 502", based on the 5-celled von Neumann neighborhood.

The programs for A282683, there is no canonical definition to state claims against.
-/

/-! ## A282683.P7520669021859454976

`A000042(n+1)-A283084(ceil(abs(γ-n)))`
-/

namespace A282683.P7520669021859454976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283084 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

end

end A282683.P7520669021859454976

/-! ## A282683.P3950237807619475046

`A282682(n)+A283083(n)-A283084(n)`
-/

namespace A282683.P3950237807619475046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282682 n + (A283083 n - A283084 n)

end

end A282683.P3950237807619475046

/-! ## A282683.P6948204686609354082

`∑[A011557(n)]+A000007(n)-A283084(n)`
-/

namespace A282683.P6948204686609354082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000007 n - A283084 n)

end

end A282683.P6948204686609354082

/-! ## A282683.P11867334214850217756

`A000042(n+1)+A000007(n)-A283084(n)`
-/

namespace A282683.P11867334214850217756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A283084 n)

end

end A282683.P11867334214850217756

/-! ## A282683.P2254205310990501219

`A000042(n+1)-A007088(A283086(n))%A000042(n+1)`
-/

namespace A282683.P2254205310990501219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A007088 (A283086 n).toNat) (A000042 (n + 1))

end

end A282683.P2254205310990501219

/-!
# A282684: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 502", based on the 5-celled von Neumann neighborhood.

The programs for A282684, there is no canonical definition to state claims against.
-/

/-! ## A282684.P5697521076372943940

`A282685(n)+A283086(n)-A283085(n)`
-/

namespace A282684.P5697521076372943940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282685 n + (A283086 n - A283085 n)

end

end A282684.P5697521076372943940

/-! ## A282684.P17020946327470086063

`xor(record[A077896(n+1)], A283085(n))`
-/

namespace A282684.P17020946327470086063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A283085 n)

end

end A282684.P17020946327470086063

/-! ## A282684.P12086432143667584831

`xor(record[A324715(n+1)], A283085(n))`
-/

namespace A282684.P12086432143667584831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A283085 n)

end

end A282684.P12086432143667584831

/-! ## A282684.P12436791054615324751

`xor(A077896(A004277(n)), A283085(n))`
-/

namespace A282684.P12436791054615324751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A283085 n)

end

end A282684.P12436791054615324751

/-! ## A282684.P15007166772127665728

`A126646(n)-A283085(n)%A051049(n)`
-/

namespace A282684.P15007166772127665728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283085 n) (A051049 n)

end

end A282684.P15007166772127665728

/-! ## A282684.P15385072160158174689

`or(A000225(n), A052531(n))-A283085(n)`
-/

namespace A282684.P15385072160158174689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A283085 n

end

end A282684.P15385072160158174689

/-! ## A282684.P7161625617639508419

`xor(A126646(n)%A282682(n), A283085(n))`
-/

namespace A282684.P7161625617639508419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A282682 n)) (A283085 n)

end

end A282684.P7161625617639508419

/-!
# A282685: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 502", based on the 5-celled von Neumann neighborhood.

The programs for A282685, there is no canonical definition to state claims against.
-/

/-! ## A282685.P10218183407711187886

`A282684(n)+A283085(n)-A283086(n)`
-/

namespace A282685.P10218183407711187886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282684 n + (A283085 n - A283086 n)

end

end A282685.P10218183407711187886

/-! ## A282685.P17463364736039833819

`or(1, A126646(n)-A283086(n))`
-/

namespace A282685.P17463364736039833819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A283086 n)

end

end A282685.P17463364736039833819

/-! ## A282685.P14482358811629252490

`xor(record[A077896(n+1)], A283086(n))`
-/

namespace A282685.P14482358811629252490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A283086 n)

end

end A282685.P14482358811629252490

/-! ## A282685.P2471005547573632266

`xor(record[A324715(n+1)], A283086(n))`
-/

namespace A282685.P2471005547573632266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A283086 n)

end

end A282685.P2471005547573632266

/-! ## A282685.P2642083532087938622

`xor(A077896(A004277(n)), A283086(n))`
-/

namespace A282685.P2642083532087938622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A283086 n)

end

end A282685.P2642083532087938622

/-! ## A282685.P6586970226097079906

`A000007(n)+A126646(n)-A283086(n)`
-/

namespace A282685.P6586970226097079906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A126646 n - A283086 n)

end

end A282685.P6586970226097079906

/-! ## A282685.P12077710517342256175

`or(A000225(n), A052531(n))-A283086(n)`
-/

namespace A282685.P12077710517342256175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A283086 n

end

end A282685.P12077710517342256175

/-! ## A282685.P4702539075400650188

`A126646(n)-A283086(n)%A282682(n)`
-/

namespace A282685.P4702539075400650188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283086 n) (A282682 n)

end

end A282685.P4702539075400650188

/-!
# A282688: Square root of the smallest square referenced in A280149 (Numbers n such that 3^n - 2^n is not squarefree).

The programs for A282688, there is no canonical definition to state claims against.
-/

/-! ## A282688.P13174505414852813771

`sqrt(A282689(n+1))`
-/

namespace A282688.P13174505414852813771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A282689 (n + 1) : ℝ)

end

end A282688.P13174505414852813771

/-! ## A282688.P3955896062954652529

`A000196(A282689(n+1)+1)`
-/

namespace A282688.P3955896062954652529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A282689 (n + 1) + 1).toNat

end

end A282688.P3955896062954652529

/-! ## A282688.P2640531753038070568

`A133388(A282689(n+1)+1)`
-/

namespace A282688.P2640531753038070568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A282689 (n + 1) + 1).toNat

end

end A282688.P2640531753038070568

/-! ## A282688.P15525134810789031626

`A171173(A282689(n+1)+1)`
-/

namespace A282688.P15525134810789031626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A282689 (n + 1) + 1).toNat

end

end A282688.P15525134810789031626

/-! ## A282688.P6545349268852476555

`A003059(A282689(n+1)-1)`
-/

namespace A282688.P6545349268852476555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A282689 (n + 1) - 1).toNat

end

end A282688.P6545349268852476555

/-! ## A282688.P12850286251403434101

`A137734(A282689(n+1)-1)`
-/

namespace A282688.P12850286251403434101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A282689 (n + 1) - 1).toNat

end

end A282688.P12850286251403434101

/-! ## A282688.P9704611196400172503

`A002260(2*A282689(n+1))`
-/

namespace A282688.P9704611196400172503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A282689 (n + 1)).toNat

end

end A282688.P9704611196400172503

/-! ## A282688.P7486556238421876527

`A006530(2*A282689(n+1))`
-/

namespace A282688.P7486556238421876527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A282689 (n + 1)).toNat

end

end A282688.P7486556238421876527

/-! ## A282688.P3484920831120953774

`A006530(root(A282689(n+1), 2))`
-/

namespace A282688.P3484920831120953774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A282689 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282688.P3484920831120953774

/-! ## A282688.P4177779861775446808

`A014963(root(A282689(n+1), 2))`
-/

namespace A282688.P4177779861775446808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A282689 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282688.P4177779861775446808

/-! ## A282688.P1471445448167592641

`A020639(root(A282689(n+1), 2))`
-/

namespace A282688.P1471445448167592641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A282689 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282688.P1471445448167592641

/-! ## A282688.P12598138520960399053

`A006530(lcm(2, A282689(n+1)))`
-/

namespace A282688.P12598138520960399053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A282689 (n + 1)))

end

end A282688.P12598138520960399053

/-! ## A282688.P858162650477415174

`A006530(or(1, A282689(n+1)))`
-/

namespace A282688.P858162650477415174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A282689 (n + 1))).toNat

end

end A282688.P858162650477415174

/-! ## A282688.P6241490775656555420

`A014963(or(1, A282689(n+1)))`
-/

namespace A282688.P6241490775656555420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lor 1 (A282689 (n + 1))).toNat

end

end A282688.P6241490775656555420

/-! ## A282688.P11795370565621571718

`A020639(or(1, A282689(n+1)))`
-/

namespace A282688.P11795370565621571718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A282689 (n + 1))).toNat

end

end A282688.P11795370565621571718

/-! ## A282688.P1777865689346424752

`A006530(and(-3, A282689(n+1)))`
-/

namespace A282688.P1777865689346424752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.land (-3) (A282689 (n + 1))).toNat

end

end A282688.P1777865689346424752

/-! ## A282688.P16036999463563353599

`A006530(A282689(A028242(2*n)))`
-/

namespace A282688.P16036999463563353599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A282689 (A028242 (2 * n)).toNat).toNat

end

end A282688.P16036999463563353599

/-! ## A282688.P10100232031553772972

`A020639(A001065(A282689(n+1))-1)`
-/

namespace A282688.P10100232031553772972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001065 (A282689 (n + 1)).toNat - 1).toNat

end

end A282688.P10100232031553772972

/-! ## A282688.P2899480351049218988

`A014963(2*A282689(n+1)-A282689(n+1))`
-/

namespace A282688.P2899480351049218988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A282689 (n + 1) - A282689 (n + 1)).toNat

end

end A282688.P2899480351049218988

/-! ## A282688.P15903642710286140439

`A020639(2*A282689(n+1)-A282689(n+1))`
-/

namespace A282688.P15903642710286140439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A282689 (n + 1) - A282689 (n + 1)).toNat

end

end A282688.P15903642710286140439

/-!
# A282689: The smallest square referenced in A280149 (Numbers n such that 3^n - 2^n is not squarefree).

The programs for A282689, there is no canonical definition to state claims against.
-/

/-! ## A282689.P6841595443219305454

`A282688(n+1)²`
-/

namespace A282689.P6841595443219305454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282688 (n + 1) ^ 2

end

end A282689.P6841595443219305454

/-! ## A282689.P11572226681917495055

`A282688(-xor(n, -1))^2`
-/

namespace A282689.P11572226681917495055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282688 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

end

end A282689.P11572226681917495055

/-! ## A282689.P7352152086664504093

`A282688(Δ[n²]-n)^2`
-/

namespace A282689.P7352152086664504093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282688 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A282689.P7352152086664504093

/-! ## A282689.P16614593670100513622

`A002620(2*A282688(n+1))`
-/

namespace A282689.P16614593670100513622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A282688 (n + 1)).toNat

end

end A282689.P16614593670100513622

/-! ## A282689.P17577636867442199733

`A000265(A282688(n+1)^2)`
-/

namespace A282689.P17577636867442199733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A282688 (n + 1) ^ 2).toNat

end

end A282689.P17577636867442199733

/-! ## A282689.P2510001538452844182

`or(A282688(n+1)^2, A000007(n))`
-/

namespace A282689.P2510001538452844182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A282688 (n + 1) ^ 2) (A000007 n)

end

end A282689.P2510001538452844182

/-! ## A282689.P12450260341359899576

`∑{p}[A282688(n+1), #*A073890(#)]`
-/

namespace A282689.P12450260341359899576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A073890 p

end

end A282689.P12450260341359899576

/-! ## A282689.P1288991275731171512

`A000265(2*A282688(n+1)*A282688(n+1))`
-/

namespace A282689.P1288991275731171512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A282688 (n + 1) * A282688 (n + 1)).toNat

end

end A282689.P1288991275731171512

/-!
# A282690: a(n) is the smallest number m, such that m+n is the next prime and m-n is the previous prime.

The programs for A282690, there is no canonical definition to state claims against.
-/

/-! ## A282690.P12682290930820891483

`A282687(A001096(n+1))`
-/

namespace A282690.P12682290930820891483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282687 (A001096 (n + 1)).toNat

end

end A282690.P12682290930820891483

/-!
# A282691: a(n) = maximal number of real roots of any of the 2^(n+1) polynomials c_0 + c_1*x + c_2*x^2 + ... + c_n*x^n where the coefficients c_i are +1 or -1.

The programs for A282691, there is no canonical definition to state claims against.
-/

/-! ## A282691.P7954044923232218235

`A056239(A056449(n))-A065651(n+2)`
-/

namespace A282691.P7954044923232218235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A056449 n).toNat - A065651 (n + 2)

end

end A282691.P7954044923232218235

/-! ## A282691.P1773166345076408489

`A283431(A091818(n+1)+A055645(n))`
-/

namespace A282691.P1773166345076408489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A091818 (n + 1) + A055645 n).toNat

end

end A282691.P1773166345076408489

/-! ## A282691.P3087417383349587156

`A265745(or(or(2*n, n%4), floor(2^(n-1))))`
-/

namespace A282691.P3087417383349587156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (Int.lor (Nat.lor (2 * n) (n % 4) : ℤ) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋).toNat

end

end A282691.P3087417383349587156

/-! ## A282691.P12405985961485306752

`A001222(A187829(n+1)*A328545(n))`
-/

namespace A282691.P12405985961485306752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A187829 (n + 1) * A328545 n).toNat

end

end A282691.P12405985961485306752

/-! ## A282691.P1901998356181246774

`A064289(n)/A006928(A059222(n+1))`
-/

namespace A282691.P1901998356181246774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064289 n : ℚ) / (A006928 (A059222 (n + 1)).toNat : ℚ)

end

end A282691.P1901998356181246774

/-!
# A282693: Numbers k such that k = (sum of digits of k)*((sum of digits of k) + 1).

The programs for A282693, there is no canonical definition to state claims against.
-/

/-! ## A282693.P16823331896941214862

`6*ceil(ϕ*n²)`
-/

namespace A282693.P16823331896941214862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌈Real.goldenRatio * (n ^ 2 : ℝ)⌉

end

end A282693.P16823331896941214862

/-!
# A282694: a(n) = (number of compositions of n into odd parts) - (number of compositions of n into distinct parts).

The programs for A282694, there is no canonical definition to state claims against.
-/

/-! ## A282694.P253869913133045501

`A324969(n+1)-A032020(n)`
-/

namespace A282694.P253869913133045501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) - A032020 n

end

end A282694.P253869913133045501

/-! ## A282694.P7124009549811873439

`A280688(A008574(n))-A032020(n)`
-/

namespace A282694.P7124009549811873439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280688 (A008574 n).toNat - A032020 n

end

end A282694.P7124009549811873439

/-! ## A282694.P13055463697765813914

`A000007(n)+A000045(n)-A032020(n)`
-/

namespace A282694.P13055463697765813914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000045 n - A032020 n)

end

end A282694.P13055463697765813914

/-! ## A282694.P9048929144502139077

`(A000045(n)-A032020(n))%A000045(n+1)`
-/

namespace A282694.P9048929144502139077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n - A032020 n) (A000045 (n + 1))

end

end A282694.P9048929144502139077

/-! ## A282694.P6805221088269355537

`(A000045(n)-A032020(n))%A003242(n)`
-/

namespace A282694.P6805221088269355537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n - A032020 n) (A003242 n)

end

end A282694.P6805221088269355537

/-! ## A282694.P11074598248611860732

`A000045(n)-A032020(n)%A000079(n)`
-/

namespace A282694.P11074598248611860732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - Int.tmod (A032020 n) (A000079 n)

end

end A282694.P11074598248611860732

/-! ## A282694.P6390897004939042558

`A324969(n+1)-A242447(A133263(n)-1)`
-/

namespace A282694.P6390897004939042558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) - A242447 (A133263 n - 1).toNat

end

end A282694.P6390897004939042558

/-!
# A282695: A055265(n) - n.

The programs for A282695, there is no canonical definition to state claims against.
-/

/-! ## A282695.P14422462605921375189

`A055265(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A282695.P14422462605921375189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1) - (n + 1 : ℤ)

end

end A282695.P14422462605921375189

/-! ## A282695.P14352660540564530533

`A086526(n+1)/2-(n+1)`
-/

namespace A282695.P14352660540564530533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086526 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A282695.P14352660540564530533

/-! ## A282695.P827065699973082427

`A128280(n+1)+xor(n, -2)`
-/

namespace A282695.P827065699973082427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (n + 1) + Int.xor (n : ℤ) (-2)

end

end A282695.P827065699973082427

/-! ## A282695.P18339583758032769907

`A128280(n+1)-A014681(n+1)`
-/

namespace A282695.P18339583758032769907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (n + 1) - A014681 (n + 1)

end

end A282695.P18339583758032769907

/-! ## A282695.P1404036071844909212

`A023443(A055265(n+1))-n`
-/

namespace A282695.P1404036071844909212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A055265 (n + 1)).toNat - (n : ℤ)

end

end A282695.P1404036071844909212

/-! ## A282695.P7654238573781778566

`A014681(A128280(n+1))+A001478(n+1)`
-/

namespace A282695.P7654238573781778566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A128280 (n + 1)).toNat + A001478 (n + 1)

end

end A282695.P7654238573781778566

/-! ## A282695.P35869620515989001

`A001281(A086526(n+1))-(n+1)`
-/

namespace A282695.P35869620515989001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A086526 (n + 1)).toNat - (n + 1 : ℤ)

end

end A282695.P35869620515989001

/-! ## A282695.P14019588611779417745

`A128280(n+1)-A128280(A117922(n+1))`
-/

namespace A282695.P14019588611779417745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (n + 1) - A128280 (A117922 (n + 1)).toNat

end

end A282695.P14019588611779417745

/-! ## A282695.P10517235195728330955

`A114327(A046691(n)+3)+A055265(n+1)`
-/

namespace A282695.P10517235195728330955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A046691 n + 3).toNat + A055265 (n + 1)

end

end A282695.P10517235195728330955

/-! ## A282695.P14173351978774876749

`A109466(∑[n+3]+1)+A055265(n+1)`
-/

namespace A282695.P14173351978774876749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A055265 (n + 1)

end

end A282695.P14173351978774876749

/-!
# A282697: Records in |A282695(n)| = |A055265(n)-n|, divided by 2.

The programs for A282697, there is no canonical definition to state claims against.
-/

/-! ## A282697.P16676683092849025045

`record[n-A089233(A035298(n))]`
-/

namespace A282697.P16676683092849025045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A089233 (A035298 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282697.P16676683092849025045

/-! ## A282697.P3060496057495285910

`lt[A007359(A296148(n)), A001468(n)]`
-/

namespace A282697.P3060496057495285910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (A296148 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282697.P3060496057495285910

/-! ## A282697.P10744538388539865194

`lt[A249593(A249617(n+1)), A249605(n+1)]`
-/

namespace A282697.P10744538388539865194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249593 (A249617 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282697.P10744538388539865194

/-! ## A282697.P14887651290858740132

`eq[A094912(A052219(2*(n+2))), A094912(n)]`
-/

namespace A282697.P14887651290858740132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094912 (A052219 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094912 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282697.P14887651290858740132

