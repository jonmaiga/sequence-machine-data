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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A285700: a(n) = Number of iterations x -> 2x-1 needed to get a nonprime number, when starting with x = n.

The programs for A285700, there is no canonical definition to state claims against.
-/

/-! ## A285700.P5746026247227652077

`A010051(n+1)*A181715(A058933(n+1))`
-/

namespace A285700.P5746026247227652077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A181715 (A058933 (n + 1)).toNat

end

end A285700.P5746026247227652077

/-! ## A285700.P15922231897888153666

`A010051(n+1)*A181715(A064839(n+1))`
-/

namespace A285700.P15922231897888153666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A181715 (A064839 (n + 1)).toNat

end

end A285700.P15922231897888153666

/-! ## A285700.P5409620568945663212

`A129950(n+1)²*A181715(A058933(n+1))`
-/

namespace A285700.P5409620568945663212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 1) ^ 2 * A181715 (A058933 (n + 1)).toNat

end

end A285700.P5409620568945663212

/-! ## A285700.P13735957074795509859

`Δ[A230980(n)]*A181715(A058933(n+1))`
-/

namespace A285700.P13735957074795509859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A181715 (A058933 (n + 1)).toNat

end

end A285700.P13735957074795509859

/-! ## A285700.P7685007554089283991

`A181715(A058933(n+1))*A323153(A323136(n+1))`
-/

namespace A285700.P7685007554089283991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181715 (A058933 (n + 1)).toNat * A323153 (A323136 (n + 1)).toNat

end

end A285700.P7685007554089283991

/-! ## A285700.P15720073888409838551

`A028242(A248214(n+1))*A285701(n+1)`
-/

namespace A285700.P15720073888409838551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A248214 (n + 1)).toNat * A285701 (n + 1)

end

end A285700.P15720073888409838551

/-!
# A285701: a(n) = number of iterations x -> A064216(x) needed to reach a nonprime number when starting from n, a(2) = a(3) = 1.

The programs for A285701, there is no canonical definition to state claims against.
-/

/-! ## A285701.P11322256033840093384

`A010051(n+1)*A285706(A026233(n+1))`
-/

namespace A285701.P11322256033840093384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A285706 (A026233 (n + 1)).toNat

end

end A285701.P11322256033840093384

/-! ## A285701.P15301796251342938902

`A010051(n+1)*A285706(A058933(n+1))`
-/

namespace A285701.P15301796251342938902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A285706 (A058933 (n + 1)).toNat

end

end A285701.P15301796251342938902

/-! ## A285701.P299344678779106483

`A010051(n+1)*A285706(A067004(n+1))`
-/

namespace A285701.P299344678779106483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A285706 (A067004 (n + 1)).toNat

end

end A285701.P299344678779106483

/-! ## A285701.P3339854662913248762

`A010051(n+1)*A285706(A290103(n+1))`
-/

namespace A285701.P3339854662913248762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A285706 (A290103 (n + 1)).toNat

end

end A285701.P3339854662913248762

/-! ## A285701.P17581966110317934398

`A010051(n+1)*A285706(A000720(n+2))`
-/

namespace A285701.P17581966110317934398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A285706 (A000720 (n + 2)).toNat

end

end A285701.P17581966110317934398

/-! ## A285701.P4177855495930597923

`A107286(A285700(n+1)^A008621(n))`
-/

namespace A285701.P4177855495930597923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (SequenceMachineLib.roundAway ((A285700 (n + 1) : ℚ) ^ (A008621 n : ℤ))).toNat

end

end A285701.P4177855495930597923

/-!
# A285702: a(n) = A000010(A064216(n)).

The programs for A285702, the canonical program `A285702.P1072550318438371779` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285702 has offset 1).

The definition of A285702 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A064216, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285702.P1072550318438371779

`A000010(A064216(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A285702

/-- `A000010(A064216(n+1))` -/
def P1072550318438371779.Spec : Prop :=
  ∀ n, P1072550318438371779.a n = A285702 (n + 1)

theorem P1072550318438371779.correct : P1072550318438371779.Spec := by
  intro n
  simp only [A285702, Nat.add_sub_cancel]

end A285702

/-! ## A285702.P9640877092740293456

`A349127(Δ[n²])`
-/

namespace A285702.P9640877092740293456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285702.P9640877092740293456

namespace A285702

/-- `A349127(Δ[n²])` -/
def P9640877092740293456.Spec : Prop :=
  ∀ n, P9640877092740293456.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P18358762149502571730

`A349128(Δ[n²])`
-/

namespace A285702.P18358762149502571730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349128 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285702.P18358762149502571730

namespace A285702

/-- `A349128(Δ[n²])` -/
def P18358762149502571730.Spec : Prop :=
  ∀ n, P18358762149502571730.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P1510218140028184218

`A000010(A349122(2*n+1))`
-/

namespace A285702.P1510218140028184218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A349122 (2 * n + 1)).toNat

end

end A285702.P1510218140028184218

namespace A285702

/-- `A000010(A349122(2*n+1))` -/
def P1510218140028184218.Spec : Prop :=
  ∀ n, P1510218140028184218.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P7367429672723931785

`A000027(A349128(2*n+1))`
-/

namespace A285702.P7367429672723931785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A349128 (2 * n + 1)).toNat

end

end A285702.P7367429672723931785

namespace A285702

/-- `A000027(A349128(2*n+1))` -/
def P7367429672723931785.Spec : Prop :=
  ∀ n, P7367429672723931785.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P3972361767177085915

`A000010(A243502(n+1)/2)`
-/

namespace A285702.P3972361767177085915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A243502 (n + 1) : ℚ) / 2)).toNat

end

end A285702.P3972361767177085915

namespace A285702

/-- `A000010(A243502(n+1)/2)` -/
def P3972361767177085915.Spec : Prop :=
  ∀ n, P3972361767177085915.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P11007363560078251254

`A014682(2*A349127(2*n+1))`
-/

namespace A285702.P11007363560078251254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A349127 (2 * n + 1)).toNat

end

end A285702.P11007363560078251254

namespace A285702

/-- `A014682(2*A349127(2*n+1))` -/
def P11007363560078251254.Spec : Prop :=
  ∀ n, P11007363560078251254.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P13247541882201503474

`A349127(2*n+1)+A323239(2*n)`
-/

namespace A285702.P13247541882201503474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (2 * n + 1) + A323239 (2 * n)

end

end A285702.P13247541882201503474

namespace A285702

/-- `A349127(2*n+1)+A323239(2*n)` -/
def P13247541882201503474.Spec : Prop :=
  ∀ n, P13247541882201503474.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P6871912447529015377

`A349127(2*n+1)+A133944(2*n+1)`
-/

namespace A285702.P6871912447529015377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (2 * n + 1) + A133944 (2 * n + 1)

end

end A285702.P6871912447529015377

namespace A285702

/-- `A349127(2*n+1)+A133944(2*n+1)` -/
def P6871912447529015377.Spec : Prop :=
  ∀ n, P6871912447529015377.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P1112045485684153842

`A349127(2*n+1)+A349127(2*(n+1))`
-/

namespace A285702.P1112045485684153842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (2 * n + 1) + A349127 (2 * (n + 1))

end

end A285702.P1112045485684153842

namespace A285702

/-- `A349127(2*n+1)+A349127(2*(n+1))` -/
def P1112045485684153842.Spec : Prop :=
  ∀ n, P1112045485684153842.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P15070357292623551848

`A000010(A292245(n+1)+A292244(n+1))`
-/

namespace A285702.P15070357292623551848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A292245 (n + 1) + A292244 (n + 1)).toNat

end

end A285702.P15070357292623551848

namespace A285702

/-- `A000010(A292245(n+1)+A292244(n+1))` -/
def P15070357292623551848.Spec : Prop :=
  ∀ n, P15070357292623551848.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P14503415243347807364

`A349127(2*n+1)+A000007(n+1)`
-/

namespace A285702.P14503415243347807364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (2 * n + 1) + A000007 (n + 1)

end

end A285702.P14503415243347807364

namespace A285702

/-- `A349127(2*n+1)+A000007(n+1)` -/
def P14503415243347807364.Spec : Prop :=
  ∀ n, P14503415243347807364.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P15325789067296067219

`A348045(Δ[n²])`
-/

namespace A285702.P15325789067296067219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285702.P15325789067296067219

namespace A285702

/-- `A348045(Δ[n²])` -/
def P15325789067296067219.Spec : Prop :=
  ∀ n, P15325789067296067219.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P13580261891842258272

`A000010(A290099(2*n+1))`
-/

namespace A285702.P13580261891842258272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A290099 (2 * n + 1)).toNat

end

end A285702.P13580261891842258272

namespace A285702

/-- `A000010(A290099(2*n+1))` -/
def P13580261891842258272.Spec : Prop :=
  ∀ n, P13580261891842258272.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P6108435367760736675

`A000010(A000010(2*n+1)-A353748(2*n+1))`
-/

namespace A285702.P6108435367760736675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (2 * n + 1) - A353748 (2 * n + 1)).toNat

end

end A285702.P6108435367760736675

namespace A285702

/-- `A000010(A000010(2*n+1)-A353748(2*n+1))` -/
def P6108435367760736675.Spec : Prop :=
  ∀ n, P6108435367760736675.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P13865394628337225491

`A000010(A353747(2*n+1)-A000010(2*n+1))`
-/

namespace A285702.P13865394628337225491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A353747 (2 * n + 1) - A000010 (2 * n + 1)).toNat

end

end A285702.P13865394628337225491

namespace A285702

/-- `A000010(A353747(2*n+1)-A000010(2*n+1))` -/
def P13865394628337225491.Spec : Prop :=
  ∀ n, P13865394628337225491.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P9160217875109123379

`A000010(A353749(2*n+1)/A000010(2*n+1))`
-/

namespace A285702.P9160217875109123379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A353749 (2 * n + 1) : ℚ) / (A000010 (2 * n + 1) : ℚ))).toNat

end

end A285702.P9160217875109123379

namespace A285702

/-- `A000010(A353749(2*n+1)/A000010(2*n+1))` -/
def P9160217875109123379.Spec : Prop :=
  ∀ n, P9160217875109123379.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P8537183663158611411

`A349137(2*A064216(n+1)-1)`
-/

namespace A285702.P8537183663158611411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * A064216 (n + 1) - 1).toNat

end

end A285702.P8537183663158611411

namespace A285702

/-- `A349137(2*A064216(n+1)-1)` -/
def P8537183663158611411.Spec : Prop :=
  ∀ n, P8537183663158611411.a n = A285702 (n + 1)

end A285702

/-! ## A285702.P9273436807791337021

`A347115(2*n+1)`
-/

namespace A285702.P9273436807791337021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347115 (2 * n + 1)

end

end A285702.P9273436807791337021

namespace A285702

/-- `A347115(2*n+1)` -/
def P9273436807791337021.Spec : Prop :=
  ∀ n, P9273436807791337021.a n = A285702 (n + 1)

end A285702

/-!
# A285703: a(n) = A000203(A064216(n)).

The programs for A285703, the canonical program `A285703.P17662226812863523617` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285703 has offset 1).

The definition of A285703 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285703.P17662226812863523617

`A000203(A064216(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A285703

/-- `A000203(A064216(n+1))` -/
def P17662226812863523617.Spec : Prop :=
  ∀ n, P17662226812863523617.a n = A285703 (n + 1)

theorem P17662226812863523617.correct : P17662226812863523617.Spec := by
  intro n
  simp only [A285703, Nat.add_sub_cancel]

end A285703

/-! ## A285703.P9424314526959622594

`A326041(Δ[n²])`
-/

namespace A285703.P9424314526959622594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326041 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285703.P9424314526959622594

namespace A285703

/-- `A326041(Δ[n²])` -/
def P9424314526959622594.Spec : Prop :=
  ∀ n, P9424314526959622594.a n = A285703 (n + 1)

end A285703

/-! ## A285703.P7756435752756815615

`∑{d}[A349122(Δ[n²]), #]`
-/

namespace A285703.P7756435752756815615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A285703.P7756435752756815615

namespace A285703

/-- `∑{d}[A349122(Δ[n²]), #]` -/
def P7756435752756815615.Spec : Prop :=
  ∀ n, (P7756435752756815615.a n : ℤ) = A285703 (n + 1)

end A285703

/-! ## A285703.P7140079810715354169

`A285704(n+1)+1+n`
-/

namespace A285703.P7140079810715354169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285704 (n + 1) + 1 + (n : ℤ)

end

end A285703.P7140079810715354169

namespace A285703

/-- `A285704(n+1)+1+n` -/
def P7140079810715354169.Spec : Prop :=
  ∀ n, P7140079810715354169.a n = A285703 (n + 1)

theorem P7140079810715354169.correct : P7140079810715354169.Spec := by
  intro n
  simp only [A285703, Nat.add_sub_cancel, A285703.P7140079810715354169.a, A285703.P17662226812863523617.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064216, A064216.P5935432423843156478.a, A285704, A285704.P14687838323244241883.a, A064989, A064989.P13349672914146769936.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285703

/-! ## A285703.P1387594144843133638

`∑{d}[2*n+1, A349122(#)]`
-/

namespace A285703.P1387594144843133638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349122 d

end

end A285703.P1387594144843133638

namespace A285703

/-- `∑{d}[2*n+1, A349122(#)]` -/
def P1387594144843133638.Spec : Prop :=
  ∀ n, P1387594144843133638.a n = A285703 (n + 1)

end A285703

/-! ## A285703.P14419838368881961374

`∑{d}[A243502(n+1)/2, #]`
-/

namespace A285703.P14419838368881961374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243502 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A285703.P14419838368881961374

namespace A285703

/-- `∑{d}[A243502(n+1)/2, #]` -/
def P14419838368881961374.Spec : Prop :=
  ∀ n, (P14419838368881961374.a n : ℤ) = A285703 (n + 1)

end A285703

/-! ## A285703.P4480764910594388243

`2*(n+1)-A285705(n+1)`
-/

namespace A285703.P4480764910594388243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A285705 (n + 1)

end

end A285703.P4480764910594388243

namespace A285703

/-- `2*(n+1)-A285705(n+1)` -/
def P4480764910594388243.Spec : Prop :=
  ∀ n, P4480764910594388243.a n = A285703 (n + 1)

theorem P4480764910594388243.correct : P4480764910594388243.Spec := by
  intro n
  simp only [A285703, Nat.add_sub_cancel, A285703.P4480764910594388243.a, A285703.P17662226812863523617.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064216, A064216.P5935432423843156478.a, A285705, A285705.P9667736529115954189.a, A064989, A064989.P13349672914146769936.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285703

/-! ## A285703.P14238015344587667681

`∑{d}[2*n+1, A290099(#)]`
-/

namespace A285703.P14238015344587667681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A290099 d

end

end A285703.P14238015344587667681

namespace A285703

/-- `∑{d}[2*n+1, A290099(#)]` -/
def P14238015344587667681.Spec : Prop :=
  ∀ n, P14238015344587667681.a n = A285703 (n + 1)

end A285703

/-! ## A285703.P4241352956075457033

`A000203(A290099(2*n+1))`
-/

namespace A285703.P4241352956075457033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A290099 (2 * n + 1)).toNat

end

end A285703.P4241352956075457033

namespace A285703

/-- `A000203(A290099(2*n+1))` -/
def P4241352956075457033.Spec : Prop :=
  ∀ n, P4241352956075457033.a n = A285703 (n + 1)

end A285703

/-! ## A285703.P4077385216057376658

`A000203(A353747(2*n+1)-A000010(2*n+1))`
-/

namespace A285703.P4077385216057376658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A353747 (2 * n + 1) - A000010 (2 * n + 1)).toNat

end

end A285703.P4077385216057376658

namespace A285703

/-- `A000203(A353747(2*n+1)-A000010(2*n+1))` -/
def P4077385216057376658.Spec : Prop :=
  ∀ n, P4077385216057376658.a n = A285703 (n + 1)

theorem P4077385216057376658.correct : P4077385216057376658.Spec := by
  intro n
  simp only [A285703, Nat.add_sub_cancel, A285703.P4077385216057376658.a, A285703.P17662226812863523617.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064216, A064216.P5935432423843156478.a, A353747, A353747.P3016860989461656940.a, A003557, A003557.P6364735403900941810.a, A064989, A064989.P13349672914146769936.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A059841, A059841.P7264174615531153985.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285703

/-! ## A285703.P12376581177506351455

`∑{d}[2*n+1, A064989(#)]`
-/

namespace A285703.P12376581177506351455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064989 d

end

end A285703.P12376581177506351455

namespace A285703

/-- `∑{d}[2*n+1, A064989(#)]` -/
def P12376581177506351455.Spec : Prop :=
  ∀ n, P12376581177506351455.a n = A285703 (n + 1)

end A285703

/-! ## A285703.P17262910658414444259

`∑{d}[2*n+1, A079707(#)]`
-/

namespace A285703.P17262910658414444259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079707 d

end

end A285703.P17262910658414444259

namespace A285703

/-- `∑{d}[2*n+1, A079707(#)]` -/
def P17262910658414444259.Spec : Prop :=
  ∀ n, P17262910658414444259.a n = A285703 (n + 1)

end A285703

/-! ## A285703.P14796355495706698029

`∑{d}[2*n+1, A252463(#)]`
-/

namespace A285703.P14796355495706698029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A252463 d

end

end A285703.P14796355495706698029

namespace A285703

/-- `∑{d}[2*n+1, A252463(#)]` -/
def P14796355495706698029.Spec : Prop :=
  ∀ n, P14796355495706698029.a n = A285703 (n + 1)

end A285703

/-! ## A285703.P8204383640472350718

`∑{d}[A283463(2*(n+1)), #]`
-/

namespace A285703.P8204383640472350718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A285703.P8204383640472350718

namespace A285703

/-- `∑{d}[A283463(2*(n+1)), #]` -/
def P8204383640472350718.Spec : Prop :=
  ∀ n, (P8204383640472350718.a n : ℤ) = A285703 (n + 1)

end A285703

/-! ## A285703.P6757573030919710276

`∑{d}[2*n+1, A341515(#)]`
-/

namespace A285703.P6757573030919710276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341515 d

end

end A285703.P6757573030919710276

namespace A285703

/-- `∑{d}[2*n+1, A341515(#)]` -/
def P6757573030919710276.Spec : Prop :=
  ∀ n, P6757573030919710276.a n = A285703 (n + 1)

end A285703

/-! ## A285703.P17549116839429465897

`∑{d}[2*n+1, A341516(#)]`
-/

namespace A285703.P17549116839429465897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341516 d

end

end A285703.P17549116839429465897

namespace A285703

/-- `∑{d}[2*n+1, A341516(#)]` -/
def P17549116839429465897.Spec : Prop :=
  ∀ n, P17549116839429465897.a n = A285703 (n + 1)

end A285703

/-! ## A285703.P11305459916031950287

`A342661(2*n+1)/(2*n+1)`
-/

namespace A285703.P11305459916031950287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342661 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A285703.P11305459916031950287

namespace A285703

/-- `A342661(2*n+1)/(2*n+1)` -/
def P11305459916031950287.Spec : Prop :=
  ∀ n, P11305459916031950287.a n = (A285703 (n + 1) : ℚ)

end A285703

/-! ## A285703.P3758833463032442226

`A000203(A064989(2*n+1))`
-/

namespace A285703.P3758833463032442226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A064989 (2 * n + 1)).toNat

end

end A285703.P3758833463032442226

namespace A285703

/-- `A000203(A064989(2*n+1))` -/
def P3758833463032442226.Spec : Prop :=
  ∀ n, P3758833463032442226.a n = A285703 (n + 1)

end A285703

/-! ## A285703.P6224213989955667546

`A000203(A252463(2*n+1))`
-/

namespace A285703.P6224213989955667546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A252463 (2 * n + 1)).toNat

end

end A285703.P6224213989955667546

namespace A285703

/-- `A000203(A252463(2*n+1))` -/
def P6224213989955667546.Spec : Prop :=
  ∀ n, P6224213989955667546.a n = A285703 (n + 1)

end A285703

/-!
# A285704: a(n) = A285703(n) - n = A000203(A064216(n)) - n.

The programs for A285704, the canonical program `A285704.P14687838323244241883` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285704 has offset 1).

The definition of A285704 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285703, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285704.P14687838323244241883

`A285703(n+1)-(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A285704

/-- `A285703(n+1)-(n+1)` -/
def P14687838323244241883.Spec : Prop :=
  ∀ n, P14687838323244241883.a n = A285704 (n + 1)

theorem P14687838323244241883.correct : P14687838323244241883.Spec := by
  intro n
  simp only [A285704, Nat.add_sub_cancel]

end A285704

/-! ## A285704.P7136404969461622219

`A000203(A064216(n+1))-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285704.P7136404969461622219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A064216 (n + 1)).toNat - (n + 1 : ℤ)

end

end A285704.P7136404969461622219

namespace A285704

/-- `A000203(A064216(n+1))-(n+1)` -/
def P7136404969461622219.Spec : Prop :=
  ∀ n, P7136404969461622219.a n = A285704 (n + 1)

end A285704

/-! ## A285704.P10341842538953419766

`1-A285705(n+1)+n`
-/

namespace A285704.P10341842538953419766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285705 (n + 1) + (n : ℤ)

end

end A285704.P10341842538953419766

namespace A285704

/-- `1-A285705(n+1)+n` -/
def P10341842538953419766.Spec : Prop :=
  ∀ n, P10341842538953419766.a n = A285704 (n + 1)

theorem P10341842538953419766.correct : P10341842538953419766.Spec := by
  intro n
  simp only [A285704, Nat.add_sub_cancel, A285704.P10341842538953419766.a, A285704.P14687838323244241883.a, A285703, A285703.P17662226812863523617.a, A285705, A285705.P9667736529115954189.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064216, A064216.P5935432423843156478.a, A064989, A064989.P13349672914146769936.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285704

/-! ## A285704.P15866816711012329050

`A326041(Δ[n²])-(n+1)`
-/

namespace A285704.P15866816711012329050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326041 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A285704.P15866816711012329050

namespace A285704

/-- `A326041(Δ[n²])-(n+1)` -/
def P15866816711012329050.Spec : Prop :=
  ∀ n, P15866816711012329050.a n = A285704 (n + 1)

end A285704

/-! ## A285704.P7189316589087201989

`A378751(A064216(n+1))`
-/

namespace A285704.P7189316589087201989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378751 (A064216 (n + 1)).toNat

end

end A285704.P7189316589087201989

namespace A285704

/-- `A378751(A064216(n+1))` -/
def P7189316589087201989.Spec : Prop :=
  ∀ n, P7189316589087201989.a n = A285704 (n + 1)

end A285704

/-! ## A285704.P933017525321519495

`n-A286385(A349122(2*n+1))`
-/

namespace A285704.P933017525321519495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A286385 (A349122 (2 * n + 1)).toNat

end

end A285704.P933017525321519495

namespace A285704

/-- `n-A286385(A349122(2*n+1))` -/
def P933017525321519495.Spec : Prop :=
  ∀ n, P933017525321519495.a n = A285704 (n + 1)

end A285704

/-! ## A285704.P10486348041835072329

`∑{d}[A252463(2*n+1), #]-(n+1)`
-/

namespace A285704.P10486348041835072329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A285704.P10486348041835072329

namespace A285704

/-- `∑{d}[A252463(2*n+1), #]-(n+1)` -/
def P10486348041835072329.Spec : Prop :=
  ∀ n, P10486348041835072329.a n = A285704 (n + 1)

end A285704

/-! ## A285704.P5956472439995250707

`A039653(A064989(2*n+1))-n`
-/

namespace A285704.P5956472439995250707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A064989 (2 * n + 1)).toNat - (n : ℤ)

end

end A285704.P5956472439995250707

namespace A285704

/-- `A039653(A064989(2*n+1))-n` -/
def P5956472439995250707.Spec : Prop :=
  ∀ n, P5956472439995250707.a n = A285704 (n + 1)

end A285704

/-! ## A285704.P11877956517419897770

`A000203(A252463(2*n+1))-(n+1)`
-/

namespace A285704.P11877956517419897770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A252463 (2 * n + 1)).toNat - (n + 1 : ℤ)

end

end A285704.P11877956517419897770

namespace A285704

/-- `A000203(A252463(2*n+1))-(n+1)` -/
def P11877956517419897770.Spec : Prop :=
  ∀ n, P11877956517419897770.a n = A285704 (n + 1)

end A285704

/-!
# A285705: a(n) = 2*n - A285703(n) = 2*n - A000203(A064216(n)).

The programs for A285705, the canonical program `A285705.P9667736529115954189` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285705 has offset 1).

The definition of A285705 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285703, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285705.P9667736529115954189

`2*(n+1)-A285703(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A285705

/-- `2*(n+1)-A285703(n+1)` -/
def P9667736529115954189.Spec : Prop :=
  ∀ n, P9667736529115954189.a n = A285705 (n + 1)

theorem P9667736529115954189.correct : P9667736529115954189.Spec := by
  intro n
  simp only [A285705, Nat.add_sub_cancel]

end A285705

/-! ## A285705.P1691246347494048290

`2*(n+1)-A000203(A064216(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285705.P1691246347494048290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000203 (A064216 (n + 1)).toNat

end

end A285705.P1691246347494048290

namespace A285705

/-- `2*(n+1)-A000203(A064216(n+1))` -/
def P1691246347494048290.Spec : Prop :=
  ∀ n, P1691246347494048290.a n = A285705 (n + 1)

end A285705

/-! ## A285705.P12406161391536588288

`1+A286385(A064216(n+1))`
-/

namespace A285705.P12406161391536588288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A286385 (A064216 (n + 1)).toNat

end

end A285705.P12406161391536588288

namespace A285705

/-- `1+A286385(A064216(n+1))` -/
def P12406161391536588288.Spec : Prop :=
  ∀ n, P12406161391536588288.a n = A285705 (n + 1)

end A285705

/-! ## A285705.P13166860055123547903

`n+1+n+1-A000203(A064989(n+1+n+1-1))`
-/

namespace A285705.P13166860055123547903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 + (n + 1) : ℤ) - A000203 (A064989 (n + 1 + (n + 1) - 1)).toNat

end

end A285705.P13166860055123547903

namespace A285705

/-- `n+1+n+1-A000203(A064989(n+1+n+1-1))` -/
def P13166860055123547903.Spec : Prop :=
  ∀ n, P13166860055123547903.a n = A285705 (n + 1)

end A285705

/-! ## A285705.P8769740176351648479

`1-A285704(n+1)+n`
-/

namespace A285705.P8769740176351648479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285704 (n + 1) + (n : ℤ)

end

end A285705.P8769740176351648479

namespace A285705

/-- `1-A285704(n+1)+n` -/
def P8769740176351648479.Spec : Prop :=
  ∀ n, P8769740176351648479.a n = A285705 (n + 1)

theorem P8769740176351648479.correct : P8769740176351648479.Spec := by
  intro n
  simp only [A285705, Nat.add_sub_cancel, A285705.P8769740176351648479.a, A285705.P9667736529115954189.a, A285703, A285703.P17662226812863523617.a, A285704, A285704.P14687838323244241883.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064216, A064216.P5935432423843156478.a, A064989, A064989.P13349672914146769936.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285705

/-! ## A285705.P4141293463837882353

`2*(n+1)-A326041(2*n+1)`
-/

namespace A285705.P4141293463837882353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A326041 (2 * n + 1)

end

end A285705.P4141293463837882353

namespace A285705

/-- `2*(n+1)-A326041(2*n+1)` -/
def P4141293463837882353.Spec : Prop :=
  ∀ n, P4141293463837882353.a n = A285705 (n + 1)

end A285705

/-! ## A285705.P2339375158458800929

`A000203(n+1)+A033879(n+1)-A285703(n+1)`
-/

namespace A285705.P2339375158458800929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A033879 (n + 1) - A285703 (n + 1))

end

end A285705.P2339375158458800929

namespace A285705

/-- `A000203(n+1)+A033879(n+1)-A285703(n+1)` -/
def P2339375158458800929.Spec : Prop :=
  ∀ n, P2339375158458800929.a n = A285705 (n + 1)

theorem P2339375158458800929.correct : P2339375158458800929.Spec := by
  intro n
  simp only [A285705, Nat.add_sub_cancel, A285705.P2339375158458800929.a, A285705.P9667736529115954189.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A285703, A285703.P17662226812863523617.a, A033880, A033880.P6005875780263802708.a, A064216, A064216.P5935432423843156478.a, A001065, A001065.P4097147489331274860.a, A064989, A064989.P13349672914146769936.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285705

/-! ## A285705.P6011414112504292883

`A286385(A349122(2*n+1))+1`
-/

namespace A285705.P6011414112504292883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (A349122 (2 * n + 1)).toNat + 1

end

end A285705.P6011414112504292883

namespace A285705

/-- `A286385(A349122(2*n+1))+1` -/
def P6011414112504292883.Spec : Prop :=
  ∀ n, P6011414112504292883.a n = A285705 (n + 1)

end A285705

/-! ## A285705.P11068475079453458198

`2*(n+1)-∑{d}[A252463(2*n+1), #]`
-/

namespace A285705.P11068475079453458198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A285705.P11068475079453458198

namespace A285705

/-- `2*(n+1)-∑{d}[A252463(2*n+1), #]` -/
def P11068475079453458198.Spec : Prop :=
  ∀ n, P11068475079453458198.a n = A285705 (n + 1)

end A285705

/-! ## A285705.P1597597478139227356

`A286385(A064989(2*n+1))+1`
-/

namespace A285705.P1597597478139227356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (A064989 (2 * n + 1)).toNat + 1

end

end A285705.P1597597478139227356

namespace A285705

/-- `A286385(A064989(2*n+1))+1` -/
def P1597597478139227356.Spec : Prop :=
  ∀ n, P1597597478139227356.a n = A285705 (n + 1)

end A285705

/-!
# A285706: a(n) = number of iterations x -> A064216(x) needed to reach a nonprime number when starting from prime(n), a(1) = a(2) = 1.

The programs for A285706, there is no canonical definition to state claims against.
-/

/-! ## A285706.P569939609258663314

`A285701(A000040(n+1))`
-/

namespace A285706.P569939609258663314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (A000040 (n + 1)).toNat

end

end A285706.P569939609258663314

/-! ## A285706.P1114182291935597839

`A285701(p?[xor(1, n)])`
-/

namespace A285706.P1114182291935597839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A285706.P1114182291935597839

/-! ## A285706.P6363453028221168467

`A285701(A008578(n+2))`
-/

namespace A285706.P6363453028221168467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (A008578 (n + 2)).toNat

end

end A285706.P6363453028221168467

/-! ## A285706.P12128991486806389516

`A285701(A182986(n+2))`
-/

namespace A285706.P12128991486806389516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (A182986 (n + 2)).toNat

end

end A285706.P12128991486806389516

/-! ## A285706.P2944684120362875907

`A285701(record[A006530(n+2)])`
-/

namespace A285706.P2944684120362875907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285706.P2944684120362875907

/-! ## A285706.P425785768294644334

`A285701(record[A014963(n+2)])`
-/

namespace A285706.P425785768294644334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285706.P425785768294644334

/-! ## A285706.P14937948546620539641

`A285701(record[A020639(n+2)])`
-/

namespace A285706.P14937948546620539641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285706.P14937948546620539641

/-! ## A285706.P7529887293066721567

`A285701(record[A285708(n+2)])`
-/

namespace A285706.P7529887293066721567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285708 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285706.P7529887293066721567

/-! ## A285706.P5380519363997677641

`A285701(A014689(n+1)+1+n)`
-/

namespace A285706.P5380519363997677641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (A014689 (n + 1) + 1 + (n : ℤ)).toNat

end

end A285706.P5380519363997677641

/-! ## A285706.P9290046950638350010

`A285701(A014688(n+1)-(n+1))`
-/

namespace A285706.P9290046950638350010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

end

end A285706.P9290046950638350010

/-! ## A285706.P9546012668196001867

`A285701(A100486(n+1)-A000720(n+1))`
-/

namespace A285706.P9546012668196001867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (A100486 (n + 1) - A000720 (n + 1)).toNat

end

end A285706.P9546012668196001867

/-! ## A285706.P16663157265635270165

`A285701(record[A285727(n+5)])`
-/

namespace A285706.P16663157265635270165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285706.P16663157265635270165

/-!
# A285707: a(n) = gcd(n, A079277(n)), a(1) = 1.

The programs for A285707, there is no canonical definition to state claims against.
-/

/-! ## A285707.P677393364138087582

`(n+1)/A285708(n+1)`
-/

namespace A285707.P677393364138087582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A285708 (n + 1) : ℚ)

end

end A285707.P677393364138087582

/-! ## A285707.P5484797028555442156

`gcd(n+1, A285699(n+1))`
-/

namespace A285707.P5484797028555442156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A285699 (n + 1))

end

end A285707.P5484797028555442156

/-! ## A285707.P15726376662546355091

`gcd(A048671(n+1), A373736(n+1))`
-/

namespace A285707.P15726376662546355091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048671 (n + 1)) (A373736 (n + 1))

end

end A285707.P15726376662546355091

/-! ## A285707.P5538359824356876842

`gcd(A285709(n+1)+A051953(n+1), (n+1)*Δ[n^3])`
-/

namespace A285707.P5538359824356876842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285709 (n + 1) + A051953 (n + 1)) ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A285707.P5538359824356876842

/-! ## A285707.P17577341992590427716

`gcd(A000010(n+1)-A285709(n+1), A000027(n+1))`
-/

namespace A285707.P17577341992590427716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1) - A285709 (n + 1)) (A000027 (n + 1))

end

end A285707.P17577341992590427716

/-! ## A285707.P2741835755766217072

`A219158(A285708(n+1)+A000217(n))`
-/

namespace A285707.P2741835755766217072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A285708 (n + 1) + A000217 n).toNat

end

end A285707.P2741835755766217072

/-! ## A285707.P4592113264781387374

`A051537(A285708(n+1)+∑[n])`
-/

namespace A285707.P4592113264781387374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A285708 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A285707.P4592113264781387374

/-! ## A285707.P2525047429143511608

`A049834(A285708(n+1)+A000217(n))`
-/

namespace A285707.P2525047429143511608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A285708 (n + 1) + A000217 n).toNat

end

end A285707.P2525047429143511608

/-! ## A285707.P6534169662656501835

`A050873(A285699(n+1)+A000217(n))`
-/

namespace A285707.P6534169662656501835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A285699 (n + 1) + A000217 n).toNat

end

end A285707.P6534169662656501835

/-!
# A285708: a(n) = n / A285707(n).

The programs for A285708, there is no canonical definition to state claims against.
-/

/-! ## A285708.P2742024251178756247

`(n+1)/A285707(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285708.P2742024251178756247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A285707 (n + 1) : ℚ)

end

end A285708.P2742024251178756247

/-! ## A285708.P7138486398973108584

`(n+1)/gcd(A153152(n), A285699(n+1))`
-/

namespace A285708.P7138486398973108584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A153152 n) (A285699 (n + 1)) : ℚ)

end

end A285708.P7138486398973108584

/-! ## A285708.P7159916965352825245

`A219158(A285707(n+1)+A000217(n))`
-/

namespace A285708.P7159916965352825245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A285707 (n + 1) + A000217 n).toNat

end

end A285708.P7159916965352825245

/-! ## A285708.P3907311234500242276

`A049834(A285707(n+1)+∑[n])`
-/

namespace A285708.P3907311234500242276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A285707 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A285708.P3907311234500242276

/-! ## A285708.P5765534889321503215

`A051537(A285707(n+1)+A000217(n))`
-/

namespace A285708.P5765534889321503215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A285707 (n + 1) + A000217 n).toNat

end

end A285708.P5765534889321503215

/-! ## A285708.P11580640674936898334

`A054531(A285699(n+1)+A000217(n))`
-/

namespace A285708.P11580640674936898334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A285699 (n + 1) + A000217 n).toNat

end

end A285708.P11580640674936898334

/-! ## A285708.P18076954131372962929

`A054531(A285707(n+1)+A000217(n))`
-/

namespace A285708.P18076954131372962929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A285707 (n + 1) + A000217 n).toNat

end

end A285708.P18076954131372962929

/-! ## A285708.P8031925490728734988

`A285336(A285328((n+1)*A007947(n+1)))`
-/

namespace A285708.P8031925490728734988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285336 (A285328 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A285708.P8031925490728734988

/-!
# A285709: a(n) = A000010(n) - A285699(n).

The programs for A285709, there is no canonical definition to state claims against.
-/

/-! ## A285709.P4137472926801965532

`A000010(n+1)-A285699(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285709.P4137472926801965532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A285699 (n + 1)

end

end A285709.P4137472926801965532

/-! ## A285709.P12766822594442702309

`Δ[A002088(n)]-A285699(n+1)`
-/

namespace A285709.P12766822594442702309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A285699 (n + 1)

end

end A285709.P12766822594442702309

/-! ## A285709.P1695539422618486991

`Δ[A005728(n)]-A285699(n+1)`
-/

namespace A285709.P1695539422618486991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A285699 (n + 1)

end

end A285709.P1695539422618486991

/-! ## A285709.P17830597661615817194

`A039649(n+1)-(A285699(n+1)+1)`
-/

namespace A285709.P17830597661615817194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A285699 (n + 1) + 1)

end

end A285709.P17830597661615817194

/-! ## A285709.P8699481927636240897

`A109606(n+1)+1-A285699(n+1)`
-/

namespace A285709.P8699481927636240897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A285699 (n + 1))

end

end A285709.P8699481927636240897

/-! ## A285709.P11900955845015320334

`n-(A285699(n+1)+A219428(n+1))`
-/

namespace A285709.P11900955845015320334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A285699 (n + 1) + A219428 (n + 1))

end

end A285709.P11900955845015320334

/-! ## A285709.P6836922124644652739

`n+1-A051953(n+1)-A285699(n+1)`
-/

namespace A285709.P6836922124644652739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051953 (n + 1) - A285699 (n + 1)

end

end A285709.P6836922124644652739

/-! ## A285709.P9598526481550244013

`A002618(n+1)/(n+1)-A285699(n+1)`
-/

namespace A285709.P9598526481550244013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ) - (A285699 (n + 1) : ℚ)

end

end A285709.P9598526481550244013

/-! ## A285709.P7214678005297375803

`A002088(n+1)-(A285699(n+1)+A002088(n))`
-/

namespace A285709.P7214678005297375803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - (A285699 (n + 1) + A002088 n)

end

end A285709.P7214678005297375803

/-! ## A285709.P9028691729076266141

`A300821(n+1)+A300822(n+1)-A285699(n+1)`
-/

namespace A285709.P9028691729076266141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300821 (n + 1) + (A300822 (n + 1) - A285699 (n + 1))

end

end A285709.P9028691729076266141

/-! ## A285709.P14307209029291802772

`A046073(n+1)*A060594(n+1)-A285699(n+1)`
-/

namespace A285709.P14307209029291802772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) * A060594 (n + 1) - A285699 (n + 1)

end

end A285709.P14307209029291802772

/-! ## A285709.P12260518396015598824

`A140434(n+1)/A020639(A140434(n+1))-A285699(n+1)`
-/

namespace A285709.P12260518396015598824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140434 (n + 1) : ℚ) / (A020639 (A140434 (n + 1)).toNat : ℚ) - (A285699 (n + 1) : ℚ)

end

end A285709.P12260518396015598824

/-! ## A285709.P17312588159372739633

`A008619(A083254(n+1)+n)-A285699(n+1)`
-/

namespace A285709.P17312588159372739633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A083254 (n + 1) + (n : ℤ)).toNat - A285699 (n + 1)

end

end A285709.P17312588159372739633

/-! ## A285709.P14545072781145218782

`Δ[A049632(n)-A049643(n)]-A285699(n+1)`
-/

namespace A285709.P14545072781145218782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A285699 (n + 1)

end

end A285709.P14545072781145218782

/-! ## A285709.P16995879477426107645

`A049633(n)-(A285699(n+1)+A049632(n))`
-/

namespace A285709.P16995879477426107645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - (A285699 (n + 1) + A049632 n)

end

end A285709.P16995879477426107645

/-! ## A285709.P12925743397290008825

`A164296(n+1)+A164297(n+1)-A285699(n+1)`
-/

namespace A285709.P12925743397290008825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164296 (n + 1) + (A164297 (n + 1) - A285699 (n + 1))

end

end A285709.P12925743397290008825

/-! ## A285709.P981488102880491427

`Δ[ceil(A210000(n)/8)]-A285699(n+1)`
-/

namespace A285709.P981488102880491427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210000 n : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A285699 (n + 1)

end

end A285709.P981488102880491427

/-!
# A285710: Numbers n for which A000010(n) = A285699(n); positions of zeros in A285709.

The programs for A285710, there is no canonical definition to state claims against.
-/

/-! ## A285710.P9558254441936847998

`eq[0, A285709(n+1)]+1`
-/

namespace A285710.P9558254441936847998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285710.P9558254441936847998

/-! ## A285710.P12180508309350345426

`record[gcd(A000027(n+1), A285709(n+1))]`
-/

namespace A285710.P12180508309350345426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A285709 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285710.P12180508309350345426

/-! ## A285710.P5571271516992729829

`eq[A000010(n+1), A285699(n+1)]+1`
-/

namespace A285710.P5571271516992729829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285710.P5571271516992729829

/-! ## A285710.P13051667692611094770

`record[(n+1)/A062317(∑{digits}[A285709(n+1), #]+1)]`
-/

namespace A285710.P13051667692611094770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285709 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A062317 (((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285710.P13051667692611094770

/-! ## A285710.P5169042634198787718

`eq[A000007(n), A285709(A028310(n))]`
-/

namespace A285710.P5169042634198787718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285709 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285710.P5169042634198787718

/-! ## A285710.P10192672543367572707

`eq[A000038(n), A285709(A028310(n))]`
-/

namespace A285710.P10192672543367572707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285709 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285710.P10192672543367572707

/-!
# A285711: a(n) = gcd(A051953(n), A079277(n)), a(1) = 1.

The programs for A285711, there is no canonical definition to state claims against.
-/

/-! ## A285711.P5227254265656294504

`A028310(gcd(A051953(n+1), A285709(n+1)))`
-/

namespace A285711.P5227254265656294504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (A051953 (n + 1)) (A285709 (n + 1)))

end

end A285711.P5227254265656294504

/-! ## A285711.P7120164273816229527

`gcd(A000010(n+1)-A285699(n+1), A028310(A219428(n+1)+1))`
-/

namespace A285711.P7120164273816229527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1) - A285699 (n + 1)) (A028310 (A219428 (n + 1) + 1).toNat)

end

end A285711.P7120164273816229527

/-! ## A285711.P1397490740513416295

`A028310(gcd(A219428(n+1)+1, n+1-A051953(n+1)-A285699(n+1)))`
-/

namespace A285711.P1397490740513416295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (A219428 (n + 1) + 1) ((n + 1 : ℤ) - A051953 (n + 1) - A285699 (n + 1)))

end

end A285711.P1397490740513416295

/-! ## A285711.P17520795156006038170

`gcd(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n, A300121(3*n+2))`
-/

namespace A285711.P17520795156006038170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))) (A300121 (3 * n + 2))

end

end A285711.P17520795156006038170

/-! ## A285711.P9057262021495178288

`gcd(A051953(n+1), A328399(A036592(n)))`
-/

namespace A285711.P9057262021495178288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051953 (n + 1)) (A328399 (A036592 n).toNat)

end

end A285711.P9057262021495178288

/-!
# A285712: a(1) = 0, and for n > 1, if n = 3k-1, then a(n) = k, otherwise a(n) = (A064216(n)+1)/2.

The programs for A285712, the canonical program `A285712.P10989090546038180415` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285712 has offset 1).

The definition of A285712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285712.P10989090546038180415

`A048673(A252463(A064216(n+1)))%A254049(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A285712

/-- `A048673(A252463(A064216(n+1)))%A254049(n+1)` -/
def P10989090546038180415.Spec : Prop :=
  ∀ n, P10989090546038180415.a n = A285712 (n + 1)

theorem P10989090546038180415.correct : P10989090546038180415.Spec := by
  intro n
  simp only [A285712, Nat.add_sub_cancel]

end A285712

/-! ## A285712.P5283601486678291843

`A110654(A250472(n+1))%A112841(n)`
-/

namespace A285712.P5283601486678291843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A250472 (n + 1)).toNat) (A112841 n)

end

end A285712.P5283601486678291843

namespace A285712

/-- `A110654(A250472(n+1))%A112841(n)` -/
def P5283601486678291843.Spec : Prop :=
  ∀ n, P5283601486678291843.a n = A285712 (n + 1)

end A285712

/-! ## A285712.P6919782344193233974

`A110654(A250472(n+1)%A048860(n+1))`
-/

namespace A285712.P6919782344193233974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A250472 (n + 1)) (A048860 (n + 1))).toNat

end

end A285712.P6919782344193233974

namespace A285712

/-- `A110654(A250472(n+1)%A048860(n+1))` -/
def P6919782344193233974.Spec : Prop :=
  ∀ n, P6919782344193233974.a n = A285712 (n + 1)

end A285712

/-! ## A285712.P16228788153348562999

`A065033(A250472(n+1))%A339063(n)`
-/

namespace A285712.P16228788153348562999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A250472 (n + 1)).toNat) (A339063 n)

end

end A285712.P16228788153348562999

namespace A285712

/-- `A065033(A250472(n+1))%A339063(n)` -/
def P16228788153348562999.Spec : Prop :=
  ∀ n, P16228788153348562999.a n = A285712 (n + 1)

end A285712

/-! ## A285712.P1643026558711562948

`A110654(A250472(n+1)%A272773(n))`
-/

namespace A285712.P1643026558711562948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A250472 (n + 1)) (A272773 n)).toNat

end

end A285712.P1643026558711562948

namespace A285712

/-- `A110654(A250472(n+1)%A272773(n))` -/
def P1643026558711562948.Spec : Prop :=
  ∀ n, P1643026558711562948.a n = A285712 (n + 1)

end A285712

/-!
# A285713: a(n) = A046523(A245612(n)).

The programs for A285713, the canonical program `A285713.P6418465002878272495` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285713 has offset 0).

The definition of A285713 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285713.P18276761534698905663

`A278224(A163511(n))`
-/

namespace A285713.P18276761534698905663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A163511 n).toNat

end

end A285713.P18276761534698905663

namespace A285713

/-- `A278224(A163511(n))` -/
def P18276761534698905663.Spec : Prop :=
  ∀ n, P18276761534698905663.a n = A285713 n

end A285713

/-! ## A285713.P6418465002878272495

`A046523(A245612(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A285713

/-- `A046523(A245612(n))` -/
def P6418465002878272495.Spec : Prop :=
  ∀ n, P6418465002878272495.a n = A285713 n

theorem P6418465002878272495.correct : P6418465002878272495.Spec := by
  intro n
  simp only [A285713]

end A285713

/-! ## A285713.P15225856253970336559

`A286613(A286546(n)+A233279(n))`
-/

namespace A285713.P15225856253970336559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286613 (A286546 n + A233279 n).toNat

end

end A285713.P15225856253970336559

namespace A285713

/-- `A286613(A286546(n)+A233279(n))` -/
def P15225856253970336559.Spec : Prop :=
  ∀ n, P15225856253970336559.a n = A285713 n

end A285713

/-! ## A285713.P13538817149987606568

`A278224(A364258(n)+n)`
-/

namespace A285713.P13538817149987606568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A364258 n + (n : ℤ)).toNat

end

end A285713.P13538817149987606568

namespace A285713

/-- `A278224(A364258(n)+n)` -/
def P13538817149987606568.Spec : Prop :=
  ∀ n, P13538817149987606568.a n = A285713 n

theorem P13538817149987606568.correct : P13538817149987606568.Spec := by
  intro n
  simp only [A285713, Nat.add_sub_cancel, A285713.P13538817149987606568.a, A285713.P6418465002878272495.a, A046523, A046523.P3407874444772092792.a, A245612, A245612.P9111246450174136386.a, A278224, A278224.P4475416140857214934.a, A364258, A364258.P6786196179042320049.a, A048673, A048673.P16342935298832955059.a, A163511, A163511.P5635496813650871695.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A045965, A045965.P3274931299755745232.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A003961, A003961.P5996473960037614004.a, A006519, A006519.P10435570611646570274.a, A025480, A025480.P15873863116418380882.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A145341, A145341.P17834554394848515737.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285713

/-! ## A285713.P16907762238742954190

`A046523(ceil(A163511(Δ[n²])/2))`
-/

namespace A285713.P16907762238742954190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ⌈(A163511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉.toNat

end

end A285713.P16907762238742954190

namespace A285713

/-- `A046523(ceil(A163511(Δ[n²])/2))` -/
def P16907762238742954190.Spec : Prop :=
  ∀ n, P16907762238742954190.a n = A285713 n

end A285713

/-! ## A285713.P15330786765259973715

`A046523(A048673(A241909(A005940(n+1))))`
-/

namespace A285713.P15330786765259973715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A048673 (A241909 (A005940 (n + 1)).toNat).toNat).toNat

end

end A285713.P15330786765259973715

namespace A285713

/-- `A046523(A048673(A241909(A005940(n+1))))` -/
def P15330786765259973715.Spec : Prop :=
  ∀ n, P15330786765259973715.a n = A285713 n

end A285713

/-! ## A285713.P8325819898667861404

`A046523(A003602(A163511(2*n+1)))`
-/

namespace A285713.P8325819898667861404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A003602 (A163511 (2 * n + 1)).toNat).toNat

end

end A285713.P8325819898667861404

namespace A285713

/-- `A046523(A003602(A163511(2*n+1)))` -/
def P8325819898667861404.Spec : Prop :=
  ∀ n, P8325819898667861404.a n = A285713 n

end A285713

/-! ## A285713.P6950816164781249620

`A046523(A243066(A005940(n+1)))`
-/

namespace A285713.P6950816164781249620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A243066 (A005940 (n + 1)).toNat).toNat

end

end A285713.P6950816164781249620

namespace A285713

/-- `A046523(A243066(A005940(n+1)))` -/
def P6950816164781249620.Spec : Prop :=
  ∀ n, P6950816164781249620.a n = A285713 n

end A285713

/-! ## A285713.P10578655848459140758

`A286613(A156552(A243065(A244154(n))))`
-/

namespace A285713.P10578655848459140758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286613 (A156552 (A243065 (A244154 n).toNat).toNat).toNat

end

end A285713.P10578655848459140758

namespace A285713

/-- `A286613(A156552(A243065(A244154(n))))` -/
def P10578655848459140758.Spec : Prop :=
  ∀ n, P10578655848459140758.a n = A285713 n

end A285713

/-!
# A285714: a(1) = 0; for n > 1, a(n) = 1 + a(A285712(n)).

The programs for A285714, the canonical program `A285714.P3662534397469993104` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285714 has offset 1).

The definition of A285714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285714.P17107389238952308951

`A285715(n+1)+A285716(n+1)`
-/

namespace A285714.P17107389238952308951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285715 (n + 1) + A285716 (n + 1)

end

end A285714.P17107389238952308951

namespace A285714

/-- `A285715(n+1)+A285716(n+1)` -/
def P17107389238952308951.Spec : Prop :=
  ∀ n, P17107389238952308951.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P3662534397469993104

`1+a(A285712(n+1)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A285714

/-- `1+a(A285712(n+1)-1)` -/
def P3662534397469993104.Spec : Prop :=
  ∀ n, (P3662534397469993104.a n : ℤ) = A285714 (n + 1)

theorem P3662534397469993104.correct : P3662534397469993104.Spec := by
  intro n
  simp only [A285714, Nat.add_sub_cancel]

end A285714

/-! ## A285714.P9901334994326397866

`A029837(1+A245611(n+1))`
-/

namespace A285714.P9901334994326397866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (1 + A245611 (n + 1)).toNat

end

end A285714.P9901334994326397866

namespace A285714

/-- `A029837(1+A245611(n+1))` -/
def P9901334994326397866.Spec : Prop :=
  ∀ n, P9901334994326397866.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P2989509334911402377

`A332894(A332893(A108548(2*n+1)))`
-/

namespace A285714.P2989509334911402377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (A332893 (A108548 (2 * n + 1)).toNat).toNat

end

end A285714.P2989509334911402377

namespace A285714

/-- `A332894(A332893(A108548(2*n+1)))` -/
def P2989509334911402377.Spec : Prop :=
  ∀ n, P2989509334911402377.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P13050677663498077432

`A285716(n+1)+A292595(n+1)+A292594(n+1)`
-/

namespace A285714.P13050677663498077432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1) + (A292595 (n + 1) + A292594 (n + 1))

end

end A285714.P13050677663498077432

namespace A285714

/-- `A285716(n+1)+A292595(n+1)+A292594(n+1)` -/
def P13050677663498077432.Spec : Prop :=
  ∀ n, P13050677663498077432.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P6991381482442431039

`a(A285712(n+1)-1)+1` with `a(0)=0`
-/

namespace A285714.P6991381482442431039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A285712 (n + 1) - 1).toNat + 1

end

end A285714.P6991381482442431039

namespace A285714

/-- `a(A285712(n+1)-1)+1` -/
def P6991381482442431039.Spec : Prop :=
  ∀ n, (P6991381482442431039.a n : ℤ) = A285714 (n + 1)

end A285714

/-! ## A285714.P7964056990414787143

`A252464(A064216(n+1))`
-/

namespace A285714.P7964056990414787143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A064216 (n + 1)).toNat

end

end A285714.P7964056990414787143

namespace A285714

/-- `A252464(A064216(n+1))` -/
def P7964056990414787143.Spec : Prop :=
  ∀ n, P7964056990414787143.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P12428827924166401004

`A252464(A004277(n)+1)-1`
-/

namespace A285714.P12428827924166401004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A004277 n + 1).toNat - 1

end

end A285714.P12428827924166401004

namespace A285714

/-- `A252464(A004277(n)+1)-1` -/
def P12428827924166401004.Spec : Prop :=
  ∀ n, P12428827924166401004.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P18186402719118550432

`A252464(A064989(2*n+1))`
-/

namespace A285714.P18186402719118550432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A064989 (2 * n + 1)).toNat

end

end A285714.P18186402719118550432

namespace A285714

/-- `A252464(A064989(2*n+1))` -/
def P18186402719118550432.Spec : Prop :=
  ∀ n, P18186402719118550432.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P16568062831639669661

`A252464(A252463(2*n+1))`
-/

namespace A285714.P16568062831639669661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A252463 (2 * n + 1)).toNat

end

end A285714.P16568062831639669661

namespace A285714

/-- `A252464(A252463(2*n+1))` -/
def P16568062831639669661.Spec : Prop :=
  ∀ n, P16568062831639669661.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P2542536458005985976

`A252464(A253553(2*n+1))`
-/

namespace A285714.P2542536458005985976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A253553 (2 * n + 1)).toNat

end

end A285714.P2542536458005985976

namespace A285714

/-- `A252464(A253553(2*n+1))` -/
def P2542536458005985976.Spec : Prop :=
  ∀ n, P2542536458005985976.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P17503755525450301429

`A028310(A252464(2*n+1))-1`
-/

namespace A285714.P17503755525450301429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A252464 (2 * n + 1)).toNat - 1

end

end A285714.P17503755525450301429

namespace A285714

/-- `A028310(A252464(2*n+1))-1` -/
def P17503755525450301429.Spec : Prop :=
  ∀ n, P17503755525450301429.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P4261247974152818268

`A252464(2*n+1)-A057427(n)`
-/

namespace A285714.P4261247974152818268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * n + 1) - A057427 n

end

end A285714.P4261247974152818268

namespace A285714

/-- `A252464(2*n+1)-A057427(n)` -/
def P4261247974152818268.Spec : Prop :=
  ∀ n, P4261247974152818268.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P3492244215272307084

`A285726(2*n+1)+A285715(n+1)`
-/

namespace A285714.P3492244215272307084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (2 * n + 1) + A285715 (n + 1)

end

end A285714.P3492244215272307084

namespace A285714

/-- `A285726(2*n+1)+A285715(n+1)` -/
def P3492244215272307084.Spec : Prop :=
  ∀ n, P3492244215272307084.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P16213844495957794016

`A252464(2*n+1)-A019430(2*n)`
-/

namespace A285714.P16213844495957794016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * n + 1) - A019430 (2 * n)

end

end A285714.P16213844495957794016

namespace A285714

/-- `A252464(2*n+1)-A019430(2*n)` -/
def P16213844495957794016.Spec : Prop :=
  ∀ n, P16213844495957794016.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P16353862983869100322

`A252464(2*n+1)-A019431(2*n)`
-/

namespace A285714.P16353862983869100322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * n + 1) - A019431 (2 * n)

end

end A285714.P16353862983869100322

namespace A285714

/-- `A252464(2*n+1)-A019431(2*n)` -/
def P16353862983869100322.Spec : Prop :=
  ∀ n, P16353862983869100322.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P8321112958033812687

`A252736(2*n+1)+A252735(2*n+1)`
-/

namespace A285714.P8321112958033812687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * n + 1) + A252735 (2 * n + 1)

end

end A285714.P8321112958033812687

namespace A285714

/-- `A252736(2*n+1)+A252735(2*n+1)` -/
def P8321112958033812687.Spec : Prop :=
  ∀ n, P8321112958033812687.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P7575191366535203675

`A285726(2*n+1)+A252735(2*n+1)`
-/

namespace A285714.P7575191366535203675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (2 * n + 1) + A252735 (2 * n + 1)

end

end A285714.P7575191366535203675

namespace A285714

/-- `A285726(2*n+1)+A252735(2*n+1)` -/
def P7575191366535203675.Spec : Prop :=
  ∀ n, P7575191366535203675.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P1679610398779144379

`A297167(2*n+1)+A297155(2*n+1)`
-/

namespace A285714.P1679610398779144379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (2 * n + 1) + A297155 (2 * n + 1)

end

end A285714.P1679610398779144379

namespace A285714

/-- `A297167(2*n+1)+A297155(2*n+1)` -/
def P1679610398779144379.Spec : Prop :=
  ∀ n, P1679610398779144379.a n = A285714 (n + 1)

end A285714

/-! ## A285714.P13269633974284451978

`A252464(2*n+1)+A036987(2*n)-1`
-/

namespace A285714.P13269633974284451978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * n + 1) + (A036987 (2 * n) - 1)

end

end A285714.P13269633974284451978

namespace A285714

/-- `A252464(2*n+1)+A036987(2*n)-1` -/
def P13269633974284451978.Spec : Prop :=
  ∀ n, P13269633974284451978.a n = A285714 (n + 1)

end A285714

/-!
# A285715: a(n) = A000120(A245611(n)).

The programs for A285715, the canonical program `A285715.P6592177239309235489` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285715 has offset 1).

The definition of A285715 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245611, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285715.P6592177239309235489

`A000120(A245611(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A285715

/-- `A000120(A245611(n+1))` -/
def P6592177239309235489.Spec : Prop :=
  ∀ n, P6592177239309235489.a n = A285715 (n + 1)

theorem P6592177239309235489.correct : P6592177239309235489.Spec := by
  intro n
  simp only [A285715, Nat.add_sub_cancel]

end A285715

/-! ## A285715.P8279526734340642571

`A061395(4*n+2)-1`
-/

namespace A285715.P8279526734340642571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (4 * n + 2) - 1

end

end A285715.P8279526734340642571

namespace A285715

/-- `A061395(4*n+2)-1` -/
def P8279526734340642571.Spec : Prop :=
  ∀ n, P8279526734340642571.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P4269240916088209772

`A061395(A064216(n+1))`
-/

namespace A285715.P4269240916088209772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064216 (n + 1)).toNat

end

end A285715.P4269240916088209772

namespace A285715

/-- `A061395(A064216(n+1))` -/
def P4269240916088209772.Spec : Prop :=
  ∀ n, P4269240916088209772.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P4364438216930844069

`A079067(A006530(2*n+1))`
-/

namespace A285715.P4364438216930844069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A006530 (2 * n + 1)).toNat

end

end A285715.P4364438216930844069

namespace A285715

/-- `A079067(A006530(2*n+1))` -/
def P4364438216930844069.Spec : Prop :=
  ∀ n, P4364438216930844069.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P13642028145563412726

`A289207(A061395(2*n+1)+1)`
-/

namespace A285715.P13642028145563412726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A061395 (2 * n + 1) + 1).toNat

end

end A285715.P13642028145563412726

namespace A285715

/-- `A289207(A061395(2*n+1)+1)` -/
def P13642028145563412726.Spec : Prop :=
  ∀ n, P13642028145563412726.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P2582453786255459208

`A297173(2*A006530(2*n+1))`
-/

namespace A285715.P2582453786255459208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (2 * A006530 (2 * n + 1)).toNat

end

end A285715.P2582453786255459208

namespace A285715

/-- `A297173(2*A006530(2*n+1))` -/
def P2582453786255459208.Spec : Prop :=
  ∀ n, P2582453786255459208.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P13898074443405134868

`A326844(2*A006530(2*n+1))`
-/

namespace A285715.P13898074443405134868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (2 * A006530 (2 * n + 1)).toNat

end

end A285715.P13898074443405134868

namespace A285715

/-- `A326844(2*A006530(2*n+1))` -/
def P13898074443405134868.Spec : Prop :=
  ∀ n, P13898074443405134868.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P316768248782240989

`A285714(n+1)-A285716(n+1)`
-/

namespace A285715.P316768248782240989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285714 (n + 1) - A285716 (n + 1)

end

end A285715.P316768248782240989

namespace A285715

/-- `A285714(n+1)-A285716(n+1)` -/
def P316768248782240989.Spec : Prop :=
  ∀ n, P316768248782240989.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P5477406247727161471

`A000720(A006530(Δ[n²])+1)-1`
-/

namespace A285715.P5477406247727161471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat - 1

end

end A285715.P5477406247727161471

namespace A285715

/-- `A000720(A006530(Δ[n²])+1)-1` -/
def P5477406247727161471.Spec : Prop :=
  ∀ n, P5477406247727161471.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P1583868131013344348

`A292595(n+1)+A292594(n+1)`
-/

namespace A285715.P1583868131013344348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292595 (n + 1) + A292594 (n + 1)

end

end A285715.P1583868131013344348

namespace A285715

/-- `A292595(n+1)+A292594(n+1)` -/
def P1583868131013344348.Spec : Prop :=
  ∀ n, P1583868131013344348.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P14309651125616152966

`A061395(A290099(Δ[n²]))`
-/

namespace A285715.P14309651125616152966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A290099 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A285715.P14309651125616152966

namespace A285715

/-- `A061395(A290099(Δ[n²]))` -/
def P14309651125616152966.Spec : Prop :=
  ∀ n, P14309651125616152966.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P14813582022268065478

`A048865(A006530(Δ[n²]))`
-/

namespace A285715.P14813582022268065478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A006530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A285715.P14813582022268065478

namespace A285715

/-- `A048865(A006530(Δ[n²]))` -/
def P14813582022268065478.Spec : Prop :=
  ∀ n, P14813582022268065478.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P4790748627031915894

`A334800(A006530(n+1+n))`
-/

namespace A285715.P4790748627031915894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334800 (A006530 (n + 1 + n)).toNat

end

end A285715.P4790748627031915894

namespace A285715

/-- `A334800(A006530(n+1+n))` -/
def P4790748627031915894.Spec : Prop :=
  ∀ n, P4790748627031915894.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P2730561103221518149

`A033270(A006530(2*n+1)+1)`
-/

namespace A285715.P2730561103221518149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A006530 (2 * n + 1) + 1).toNat

end

end A285715.P2730561103221518149

namespace A285715

/-- `A033270(A006530(2*n+1)+1)` -/
def P2730561103221518149.Spec : Prop :=
  ∀ n, P2730561103221518149.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P9177070845113327185

`A230980(A006530(2*n+1)-1)`
-/

namespace A285715.P9177070845113327185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A006530 (2 * n + 1) - 1).toNat

end

end A285715.P9177070845113327185

namespace A285715

/-- `A230980(A006530(2*n+1)-1)` -/
def P9177070845113327185.Spec : Prop :=
  ∀ n, P9177070845113327185.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P13787811225006867630

`A252735(Δ[n²])`
-/

namespace A285715.P13787811225006867630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285715.P13787811225006867630

namespace A285715

/-- `A252735(Δ[n²])` -/
def P13787811225006867630.Spec : Prop :=
  ∀ n, P13787811225006867630.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P1689090952033464295

`A297167(∏{p}[2*n+1, #])`
-/

namespace A285715.P1689090952033464295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A285715.P1689090952033464295

namespace A285715

/-- `A297167(∏{p}[2*n+1, #])` -/
def P1689090952033464295.Spec : Prop :=
  ∀ n, P1689090952033464295.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P4227761469806571056

`A252735(2*n+1)%(n+1)`
-/

namespace A285715.P4227761469806571056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252735 (2 * n + 1)) (n + 1 : ℤ)

end

end A285715.P4227761469806571056

namespace A285715

/-- `A252735(2*n+1)%(n+1)` -/
def P4227761469806571056.Spec : Prop :=
  ∀ n, P4227761469806571056.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P15785191934314029439

`A000720(A070777(2*n+1))`
-/

namespace A285715.P15785191934314029439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A070777 (2 * n + 1)).toNat

end

end A285715.P15785191934314029439

namespace A285715

/-- `A000720(A070777(2*n+1))` -/
def P15785191934314029439.Spec : Prop :=
  ∀ n, P15785191934314029439.a n = A285715 (n + 1)

end A285715

/-! ## A285715.P17230602945466886432

`A061395(A064989(2*n+1))`
-/

namespace A285715.P17230602945466886432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064989 (2 * n + 1)).toNat

end

end A285715.P17230602945466886432

namespace A285715

/-- `A061395(A064989(2*n+1))` -/
def P17230602945466886432.Spec : Prop :=
  ∀ n, P17230602945466886432.a n = A285715 (n + 1)

end A285715

/-!
# A285716: a(n) = A080791(A245611(n)).

The programs for A285716, the canonical program `A285716.P9504684840858199531` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285716 has offset 1).

The definition of A285716 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245611, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285716.P9504684840858199531

`A080791(A245611(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A285716

/-- `A080791(A245611(n+1))` -/
def P9504684840858199531.Spec : Prop :=
  ∀ n, P9504684840858199531.a n = A285716 (n + 1)

theorem P9504684840858199531.correct : P9504684840858199531.Spec := by
  intro n
  simp only [A285716, Nat.add_sub_cancel]

end A285716

/-! ## A285716.P3360444837563267829

`floor(log(cosh(∑{e}[2*n+1, #])))`
-/

namespace A285716.P3360444837563267829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A285716.P3360444837563267829

namespace A285716

/-- `floor(log(cosh(∑{e}[2*n+1, #])))` -/
def P3360444837563267829.Spec : Prop :=
  ∀ n, P3360444837563267829.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P4703422496573614614

`round(log(cosh(∑{e}[2*n+1, #])))`
-/

namespace A285716.P4703422496573614614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A285716.P4703422496573614614

namespace A285716

/-- `round(log(cosh(∑{e}[2*n+1, #])))` -/
def P4703422496573614614.Spec : Prop :=
  ∀ n, P4703422496573614614.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P8283095412482677911

`∑{e}[abs(1-2*n)+2, #]-1`
-/

namespace A285716.P8283095412482677911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A285716.P8283095412482677911

namespace A285716

/-- `∑{e}[abs(1-2*n)+2, #]-1` -/
def P8283095412482677911.Spec : Prop :=
  ∀ n, P8283095412482677911.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P10633900944355509677

`(∑{e}[2*n+1, #]-1)%(n+1)`
-/

namespace A285716.P10633900944355509677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1) (n + 1 : ℤ)

end

end A285716.P10633900944355509677

namespace A285716

/-- `(∑{e}[2*n+1, #]-1)%(n+1)` -/
def P10633900944355509677.Spec : Prop :=
  ∀ n, P10633900944355509677.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P8201642546366247038

`floor(log(cosh(A001222(2*n+1))))`
-/

namespace A285716.P8201642546366247038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A001222 (2 * n + 1) : ℝ))⌋

end

end A285716.P8201642546366247038

namespace A285716

/-- `floor(log(cosh(A001222(2*n+1))))` -/
def P8201642546366247038.Spec : Prop :=
  ∀ n, P8201642546366247038.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P8589408230296704489

`A001222(abs(1-n)+2+n)-1`
-/

namespace A285716.P8589408230296704489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 2 + (n : ℤ)).toNat - 1

end

end A285716.P8589408230296704489

namespace A285716

/-- `A001222(abs(1-n)+2+n)-1` -/
def P8589408230296704489.Spec : Prop :=
  ∀ n, P8589408230296704489.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P10948436190382160511

`A001222(A325133(2*n+1))`
-/

namespace A285716.P10948436190382160511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A325133 (2 * n + 1)).toNat

end

end A285716.P10948436190382160511

namespace A285716

/-- `A001222(A325133(2*n+1))` -/
def P10948436190382160511.Spec : Prop :=
  ∀ n, P10948436190382160511.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P1895717304790981240

`A091304(n+1)+A057428(n)`
-/

namespace A285716.P1895717304790981240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 1) + A057428 n

end

end A285716.P1895717304790981240

namespace A285716

/-- `A091304(n+1)+A057428(n)` -/
def P1895717304790981240.Spec : Prop :=
  ∀ n, P1895717304790981240.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P6731561905585380734

`A091304(n+1)-A057427(n)`
-/

namespace A285716.P6731561905585380734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 1) - A057427 n

end

end A285716.P6731561905585380734

namespace A285716

/-- `A091304(n+1)-A057427(n)` -/
def P6731561905585380734.Spec : Prop :=
  ∀ n, P6731561905585380734.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P12371407396067731921

`A086520(A001222(2*n+1)²)`
-/

namespace A285716.P12371407396067731921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A001222 (2 * n + 1) ^ 2).toNat

end

end A285716.P12371407396067731921

namespace A285716

/-- `A086520(A001222(2*n+1)²)` -/
def P12371407396067731921.Spec : Prop :=
  ∀ n, P12371407396067731921.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P3191098581580949134

`A259361(A001222(2*n+1)²)`
-/

namespace A285716.P3191098581580949134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A001222 (2 * n + 1) ^ 2).toNat

end

end A285716.P3191098581580949134

namespace A285716

/-- `A259361(A001222(2*n+1)²)` -/
def P3191098581580949134.Spec : Prop :=
  ∀ n, P3191098581580949134.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P9171040625221196184

`A289207(A001222(2*n+1)+1)`
-/

namespace A285716.P9171040625221196184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A001222 (2 * n + 1) + 1).toNat

end

end A285716.P9171040625221196184

namespace A285716

/-- `A289207(A001222(2*n+1)+1)` -/
def P9171040625221196184.Spec : Prop :=
  ∀ n, P9171040625221196184.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P12849694760886979433

`A285714(n+1)-A285715(n+1)`
-/

namespace A285716.P12849694760886979433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285714 (n + 1) - A285715 (n + 1)

end

end A285716.P12849694760886979433

namespace A285716

/-- `A285714(n+1)-A285715(n+1)` -/
def P12849694760886979433.Spec : Prop :=
  ∀ n, P12849694760886979433.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P843470444719030467

`A001222(2*n+1)+2-A157532(n+1)`
-/

namespace A285716.P843470444719030467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) + 2 - A157532 (n + 1)

end

end A285716.P843470444719030467

namespace A285716

/-- `A001222(2*n+1)+2-A157532(n+1)` -/
def P843470444719030467.Spec : Prop :=
  ∀ n, P843470444719030467.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P5654565999981573281

`A001222((2*n+1)/A006530(2*n+1))`
-/

namespace A285716.P5654565999981573281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / (A006530 (2 * n + 1) : ℚ))).toNat

end

end A285716.P5654565999981573281

namespace A285716

/-- `A001222((2*n+1)/A006530(2*n+1))` -/
def P5654565999981573281.Spec : Prop :=
  ∀ n, P5654565999981573281.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P10092453232442627903

`A001222((2*n+1)/A020639(2*n+1))`
-/

namespace A285716.P10092453232442627903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / (A020639 (2 * n + 1) : ℚ))).toNat

end

end A285716.P10092453232442627903

namespace A285716

/-- `A001222((2*n+1)/A020639(2*n+1))` -/
def P10092453232442627903.Spec : Prop :=
  ∀ n, P10092453232442627903.a n = A285716 (n + 1)

end A285716

/-! ## A285716.P8172360895348949751

`floor(A001222(2*n+1)/ratio[A018252(n+2)])`
-/

namespace A285716.P8172360895348949751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A285716.P8172360895348949751

namespace A285716

/-- `floor(A001222(2*n+1)/ratio[A018252(n+2)])` -/
def P8172360895348949751.Spec : Prop :=
  ∀ n, P8172360895348949751.a n = A285716 (n + 1)

end A285716

/-!
# A285717: a(n) = A007814(n) + A159918(n) = A007814(n) + A000120(n^2).

The programs for A285717, the canonical program `A285717.P2148644564262029949` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285717 has offset 1).

The definition of A285717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285717.P2148644564262029949

`A007814(n+1)+A159918(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A285717

/-- `A007814(n+1)+A159918(n+1)` -/
def P2148644564262029949.Spec : Prop :=
  ∀ n, P2148644564262029949.a n = A285717 (n + 1)

theorem P2148644564262029949.correct : P2148644564262029949.Spec := by
  intro n
  simp only [A285717, Nat.add_sub_cancel]

end A285717

/-! ## A285717.P5872893358831365469

`val(n+1, 2)+A000120((n+1)²)`
-/

namespace A285717.P5872893358831365469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + A000120 ((n + 1) ^ 2)

end

end A285717.P5872893358831365469

namespace A285717

/-- `val(n+1, 2)+A000120((n+1)²)` -/
def P5872893358831365469.Spec : Prop :=
  ∀ n, P5872893358831365469.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P15255395226096370083

`A007814(n+1)+A000120((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285717.P15255395226096370083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A000120 ((n + 1) ^ 2)

end

end A285717.P15255395226096370083

namespace A285717

/-- `A007814(n+1)+A000120((n+1)²)` -/
def P15255395226096370083.Spec : Prop :=
  ∀ n, P15255395226096370083.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P5127650162156821879

`A000120(n)+A232243(n+1)+1`
-/

namespace A285717.P5127650162156821879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A232243 (n + 1) + 1)

end

end A285717.P5127650162156821879

namespace A285717

/-- `A000120(n)+A232243(n+1)+1` -/
def P5127650162156821879.Spec : Prop :=
  ∀ n, P5127650162156821879.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P15350917826538607288

`A056220(n+1)-A285406(n+1)`
-/

namespace A285717.P15350917826538607288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (n + 1) - A285406 (n + 1)

end

end A285717.P15350917826538607288

namespace A285717

/-- `A056220(n+1)-A285406(n+1)` -/
def P15350917826538607288.Spec : Prop :=
  ∀ n, P15350917826538607288.a n = A285717 (n + 1)

theorem P15350917826538607288.correct : P15350917826538607288.Spec := by
  intro n
  simp only [A285717, Nat.add_sub_cancel, A285717.P15350917826538607288.a, A285717.P2148644564262029949.a, A007814, A007814.P13537437864234730737.a, A056220, A056220.P5045014962229294692.a, A159918, A159918.P9044221650156537237.a, A285406, A285406.P13392758496350615043.a, A000120, A000120.P2816527436160941581.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285717

/-! ## A285717.P5483840759600495629

`A159918(n+1)+1-Δ[A000120(n)]`
-/

namespace A285717.P5483840759600495629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A285717.P5483840759600495629

namespace A285717

/-- `A159918(n+1)+1-Δ[A000120(n)]` -/
def P5483840759600495629.Spec : Prop :=
  ∀ n, P5483840759600495629.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P13226509754156800214

`A159918(n+1)+1-A088705(n+1)`
-/

namespace A285717.P13226509754156800214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (n + 1) + (1 - A088705 (n + 1))

end

end A285717.P13226509754156800214

namespace A285717

/-- `A159918(n+1)+1-A088705(n+1)` -/
def P13226509754156800214.Spec : Prop :=
  ∀ n, P13226509754156800214.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P11455408091515328465

`A011371(n+1)+A159918(n+1)-A011371(n)`
-/

namespace A285717.P11455408091515328465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + (A159918 (n + 1) - A011371 n)

end

end A285717.P11455408091515328465

namespace A285717

/-- `A011371(n+1)+A159918(n+1)-A011371(n)` -/
def P11455408091515328465.Spec : Prop :=
  ∀ n, P11455408091515328465.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P2492861903368266131

`A000120(n)+1+A159918(n+1)-A000120(n+1)`
-/

namespace A285717.P2492861903368266131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1 + (A159918 (n + 1) - A000120 (n + 1))

end

end A285717.P2492861903368266131

namespace A285717

/-- `A000120(n)+1+A159918(n+1)-A000120(n+1)` -/
def P2492861903368266131.Spec : Prop :=
  ∀ n, P2492861903368266131.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P4378047955049379299

`A159918(n+1)+A023416((n+1)/A000265(n+1))`
-/

namespace A285717.P4378047955049379299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (n + 1) + A023416 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000265 (n + 1) : ℚ))).toNat

end

end A285717.P4378047955049379299

namespace A285717

/-- `A159918(n+1)+A023416((n+1)/A000265(n+1))` -/
def P4378047955049379299.Spec : Prop :=
  ∀ n, P4378047955049379299.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P4460087074059100600

`A232243(n+1)+A081743(2*n+1)`
-/

namespace A285717.P4460087074059100600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 (n + 1) + A081743 (2 * n + 1)

end

end A285717.P4460087074059100600

namespace A285717

/-- `A232243(n+1)+A081743(2*n+1)` -/
def P4460087074059100600.Spec : Prop :=
  ∀ n, P4460087074059100600.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P10350829087244280234

`A159918(2*n+1)+A232243(n+1)-A232243(2*n+1)`
-/

namespace A285717.P10350829087244280234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (2 * n + 1) + (A232243 (n + 1) - A232243 (2 * n + 1))

end

end A285717.P10350829087244280234

namespace A285717

/-- `A159918(2*n+1)+A232243(n+1)-A232243(2*n+1)` -/
def P10350829087244280234.Spec : Prop :=
  ∀ n, P10350829087244280234.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P53103484707646950

`∑{e}[3*A048883(n), A232243(n+1)+#]`
-/

namespace A285717.P53103484707646950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A232243 (n + 1) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A285717.P53103484707646950

namespace A285717

/-- `∑{e}[3*A048883(n), A232243(n+1)+#]` -/
def P53103484707646950.Spec : Prop :=
  ∀ n, P53103484707646950.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P17897658650755381879

`A000120(A339597(n)+n²)`
-/

namespace A285717.P17897658650755381879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A339597 n + (n ^ 2 : ℤ)).toNat

end

end A285717.P17897658650755381879

namespace A285717

/-- `A000120(A339597(n)+n²)` -/
def P17897658650755381879.Spec : Prop :=
  ∀ n, P17897658650755381879.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P5502160129469721797

`A063787((n+1)*A000265(n+1))`
-/

namespace A285717.P5502160129469721797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 ((n + 1 : ℤ) * A000265 (n + 1)).toNat

end

end A285717.P5502160129469721797

namespace A285717

/-- `A063787((n+1)*A000265(n+1))` -/
def P5502160129469721797.Spec : Prop :=
  ∀ n, P5502160129469721797.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P6959025363248547549

`A000120(n*(n+2))+Δ[A000120(n)]`
-/

namespace A285717.P6959025363248547549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n * (n + 2)) + (f1 (n + 1) - f1 n)

end

end A285717.P6959025363248547549

namespace A285717

/-- `A000120(n*(n+2))+Δ[A000120(n)]` -/
def P6959025363248547549.Spec : Prop :=
  ∀ n, P6959025363248547549.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P9883029971986618935

`A048881(n*(n+2))+A007814(n+1)+1`
-/

namespace A285717.P9883029971986618935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (n * (n + 2)) + (A007814 (n + 1) + 1)

end

end A285717.P9883029971986618935

namespace A285717

/-- `A048881(n*(n+2))+A007814(n+1)+1` -/
def P9883029971986618935.Spec : Prop :=
  ∀ n, P9883029971986618935.a n = A285717 (n + 1)

theorem P9883029971986618935.correct : P9883029971986618935.Spec := by
  intro n
  simp only [A285717, Nat.add_sub_cancel, A285717.P9883029971986618935.a, A285717.P2148644564262029949.a, A007814, A007814.P13537437864234730737.a, A048881, A048881.P16567064232951496228.a, A159918, A159918.P9044221650156537237.a, A000120, A000120.P2816527436160941581.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285717

/-! ## A285717.P1935823505360069324

`A000120(A086799((n+1)*A000265(n+1)))`
-/

namespace A285717.P1935823505360069324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A086799 ((n + 1 : ℤ) * A000265 (n + 1)).toNat).toNat

end

end A285717.P1935823505360069324

namespace A285717

/-- `A000120(A086799((n+1)*A000265(n+1)))` -/
def P1935823505360069324.Spec : Prop :=
  ∀ n, P1935823505360069324.a n = A285717 (n + 1)

end A285717

/-! ## A285717.P8118555012575405109

`A000120((A129760(n+1)+1)*A086799(n+1))`
-/

namespace A285717.P8118555012575405109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((A129760 (n + 1) + 1) * A086799 (n + 1)).toNat

end

end A285717.P8118555012575405109

namespace A285717

/-- `A000120((A129760(n+1)+1)*A086799(n+1))` -/
def P8118555012575405109.Spec : Prop :=
  ∀ n, P8118555012575405109.a n = A285717 (n + 1)

end A285717

/-!
# A285718: a(1) = 0, and for n > 1, a(n) = the least squarefree number x such that n-x is also squarefree.

The programs for A285718, there is no canonical definition to state claims against.
-/

/-! ## A285718.P12458965502754965925

`n+1-A285719(n+1)`
-/

namespace A285718.P12458965502754965925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285719 (n + 1)

end

end A285718.P12458965502754965925

/-! ## A285718.P4644674840616895844

`n-A023443(A285719(n+1))`
-/

namespace A285718.P4644674840616895844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A285719 (n + 1)).toNat

end

end A285718.P4644674840616895844

/-! ## A285718.P4540563415015909928

`(A014106(n)*A285719(n+1))%(n+1)`
-/

namespace A285718.P4540563415015909928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014106 n * A285719 (n + 1)) (n + 1 : ℤ)

end

end A285718.P4540563415015909928

/-! ## A285718.P15711113750777569144

`(n*A285719(n+1))%A053166(n+1)`
-/

namespace A285718.P15711113750777569144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A285719 (n + 1)) (A053166 (n + 1))

end

end A285718.P15711113750777569144

/-! ## A285718.P18146130357117793317

`A020725(n+1)%A020725(A285719(n+1))`
-/

namespace A285718.P18146130357117793317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (n + 1)) (A020725 (A285719 (n + 1)).toNat)

end

end A285718.P18146130357117793317

/-! ## A285718.P7411242043249515979

`A035327(A285719(n+1)+A035327(n+1))`
-/

namespace A285718.P7411242043249515979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A285719 (n + 1) + A035327 (n + 1)).toNat

end

end A285718.P7411242043249515979

/-! ## A285718.P6611061294825046289

`A053188(A285719(n+1)+A061579(n))`
-/

namespace A285718.P6611061294825046289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A285719 (n + 1) + A061579 n).toNat

end

end A285718.P6611061294825046289

/-! ## A285718.P12655673806555246486

`A010051(∑[n+1])+(n+1)%A285719(n+1)`
-/

namespace A285718.P12655673806555246486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ j ∈ Finset.range (n + 1), f1 j) + Int.tmod (n + 1 : ℤ) (A285719 (n + 1))

end

end A285718.P12655673806555246486

/-! ## A285718.P17428516043862680695

`A004197(A285719(n+1)+∑[n+1])`
-/

namespace A285718.P17428516043862680695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A285719 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A285718.P17428516043862680695

/-! ## A285718.P33754997949772473

`A055087(A285719(n+1)²+n+1)`
-/

namespace A285718.P33754997949772473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (A285719 (n + 1) ^ 2 + (n + 1 : ℤ)).toNat

end

end A285718.P33754997949772473

/-!
# A285719: a(1) = 1, and for n > 1, a(n) = the largest squarefree number k such that n-k is also squarefree.

The programs for A285719, there is no canonical definition to state claims against.
-/

/-! ## A285719.P6113966494834409693

`n+1-A285718(n+1)`
-/

namespace A285719.P6113966494834409693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285718 (n + 1)

end

end A285719.P6113966494834409693

/-! ## A285719.P14121776942012591550

`A024000(A285718(n+1))+n`
-/

namespace A285719.P14121776942012591550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A285718 (n + 1)).toNat + (n : ℤ)

end

end A285719.P14121776942012591550

/-! ## A285719.P4419419306486496604

`abs(A285718(n+1)+A001478(n+1))`
-/

namespace A285719.P4419419306486496604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285718 (n + 1) + A001478 (n + 1)|

end

end A285719.P4419419306486496604

/-! ## A285719.P8155820922814033348

`-A285718(n+1)%A025747(n)+n+1`
-/

namespace A285719.P8155820922814033348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A285718 (n + 1)) (A025747 n) + (n + 1 : ℤ)

end

end A285719.P8155820922814033348

/-! ## A285719.P4073614878092722402

`((n+1)*A016777(A285718(n+1)))%A016777(n+1)`
-/

namespace A285719.P4073614878092722402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A016777 (A285718 (n + 1)).toNat) (A016777 (n + 1))

end

end A285719.P4073614878092722402

/-! ## A285719.P14859941287005941769

`A004736(A285718(n+1)+A000124(n))`
-/

namespace A285719.P14859941287005941769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A285718 (n + 1) + A000124 n).toNat

end

end A285719.P14859941287005941769

/-!
# A285720: Number of ways to write n as a sum of two unordered squarefree numbers so that their addition in base-2 does not produce carries.

The programs for A285720, there is no canonical definition to state claims against.
-/

/-! ## A285720.P6828498755758573985

`A107628(A156552(3*(n+2)))`
-/

namespace A285720.P6828498755758573985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (A156552 (3 * (n + 2))).toNat

end

end A285720.P6828498755758573985

/-! ## A285720.P8639213412099007304

`Δ[A122667(∏[A160467(n+1)])]`
-/

namespace A285720.P8639213412099007304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122667 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285720.P8639213412099007304

/-! ## A285720.P17997889916659581599

`A007814(A231246(n+1)+A029579(n))`
-/

namespace A285720.P17997889916659581599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A231246 (n + 1) + A029579 n).toNat

end

end A285720.P17997889916659581599

/-! ## A285720.P14610600241659863815

`A007814(A231246(n+1)+A158416(n))`
-/

namespace A285720.P14610600241659863815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A231246 (n + 1) + A158416 n).toNat

end

end A285720.P14610600241659863815

/-! ## A285720.P12782646430006121631

`A074307(A074300(n+1))%A010121(n+2)`
-/

namespace A285720.P12782646430006121631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074307 (A074300 (n + 1)).toNat) (A010121 (n + 2))

end

end A285720.P12782646430006121631

/-!
# A285721: Square array read by antidiagonals: A(n,k) = number of steps in simple Euclidean algorithm for gcd(n,k) to reach the termination test n=k, read by antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A285721, there is no canonical definition to state claims against.
-/

/-! ## A285721.P17733834208508612839

`A072030(n+1)-1`
-/

namespace A285721.P17733834208508612839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072030 (n + 1) - 1

end

end A285721.P17733834208508612839

/-! ## A285721.P5659937148424431372

`A267182(2*A072030(n+1))`
-/

namespace A285721.P5659937148424431372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (2 * A072030 (n + 1)).toNat

end

end A285721.P5659937148424431372

/-! ## A285721.P125788615650606319

`A267182(A072030(n+1)+A072030(n+1))`
-/

namespace A285721.P125788615650606319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (A072030 (n + 1) + A072030 (n + 1)).toNat

end

end A285721.P125788615650606319

/-! ## A285721.P15081663021848533712

`A276738(gcd(n, A161712(n))+1)+A072030(n+1)`
-/

namespace A285721.P15081663021848533712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276738 (Int.gcd (n : ℤ) (A161712 n) + 1) + A072030 (n + 1)

end

end A285721.P15081663021848533712

/-! ## A285721.P15456091178783155709

`A049834(A014132(n+1))-2`
-/

namespace A285721.P15456091178783155709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A014132 (n + 1)).toNat - 2

end

end A285721.P15456091178783155709

/-! ## A285721.P17607028710616548797

`A049834(lt[1, A277227(n+1)])-2`
-/

namespace A285721.P17607028710616548797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 2

end

end A285721.P17607028710616548797

/-! ## A285721.P8858813607124922041

`A267177(A060734(n+1))-1`
-/

namespace A285721.P8858813607124922041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A060734 (n + 1)).toNat - 1

end

end A285721.P8858813607124922041

/-! ## A285721.P4974910402726418059

`A267177(A060736(n+1))-1`
-/

namespace A285721.P4974910402726418059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A060736 (n + 1)).toNat - 1

end

end A285721.P4974910402726418059

/-! ## A285721.P10648746770810734320

`A267177(A081344(n+1))-1`
-/

namespace A285721.P10648746770810734320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A081344 (n + 1)).toNat - 1

end

end A285721.P10648746770810734320

/-! ## A285721.P9006503057913296481

`A267177(A213928(n+1))-1`
-/

namespace A285721.P9006503057913296481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A213928 (n + 1)).toNat - 1

end

end A285721.P9006503057913296481

/-! ## A285721.P14212097430126430730

`A267177(A219159(n+1))-1`
-/

namespace A285721.P14212097430126430730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A219159 (n + 1)).toNat - 1

end

end A285721.P14212097430126430730

/-! ## A285721.P4302678880228960603

`A285732(A027642(2*n+3))+A072030(n+1)`
-/

namespace A285721.P4302678880228960603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285732 (A027642 (2 * n + 3)).toNat + A072030 (n + 1)

end

end A285721.P4302678880228960603

/-! ## A285721.P15107873841267961167

`A003988(n+1)+A332342(n+1)-1`
-/

namespace A285721.P15107873841267961167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (n + 1) + (A332342 (n + 1) - 1)

end

end A285721.P15107873841267961167

/-! ## A285721.P4973250700435394019

`A025581(2*A072030(n+1)²)`
-/

namespace A285721.P4973250700435394019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A072030 (n + 1) ^ 2).toNat

end

end A285721.P4973250700435394019

/-! ## A285721.P912800343985750631

`A025581(2*A072030(n+1)*A072030(n+1))`
-/

namespace A285721.P912800343985750631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A072030 (n + 1) * A072030 (n + 1)).toNat

end

end A285721.P912800343985750631

/-! ## A285721.P4719148779695234312

`A200748(n)%A072030(n+1)`
-/

namespace A285721.P4719148779695234312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A072030 (n + 1))

end

end A285721.P4719148779695234312

/-! ## A285721.P6358014721958889353

`ceil(log2(A338579(n+2)))-1`
-/

namespace A285721.P6358014721958889353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A338579 (n + 2) : ℝ)⌉ - 1

end

end A285721.P6358014721958889353

/-! ## A285721.P14974002900747659503

`A070198(n)%A072030(n+1)`
-/

namespace A285721.P14974002900747659503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A072030 (n + 1))

end

end A285721.P14974002900747659503

/-! ## A285721.P6706472828656768400

`A079782(n+1)%A072030(n+1)`
-/

namespace A285721.P6706472828656768400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A072030 (n + 1))

end

end A285721.P6706472828656768400

/-! ## A285721.P11168164198250562851

`A083685(n+1)%A072030(n+1)`
-/

namespace A285721.P11168164198250562851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A072030 (n + 1))

end

end A285721.P11168164198250562851

/-!
# A285722: Square array A(n,k) read by antidiagonals, A(n,n) = 0, otherwise, if n > k, A(n,k) = T(n-k,k), else A(n,k) = T(n,k-n), where T(n,k) is sequence A000027 considered as a two-dimensional table.

The programs for A285722, there is no canonical definition to state claims against.
-/

/-! ## A285722.P8521249050526562859

`lcm(A068344(n), A285732(n+1))`
-/

namespace A285722.P8521249050526562859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068344 n) (A285732 (n + 1))

end

end A285722.P8521249050526562859

/-! ## A285722.P12454637384518517583

`A286100(n+1)+A285732(n+1)`
-/

namespace A285722.P12454637384518517583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (n + 1) + A285732 (n + 1)

end

end A285722.P12454637384518517583

/-! ## A285722.P16740440539019793143

`(1-A003982(n))*A285732(n+1)`
-/

namespace A285722.P16740440539019793143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A003982 n) * A285732 (n + 1)

end

end A285722.P16740440539019793143

/-! ## A285722.P3548838467371594956

`A285732(n+1)+A002260(n+1)*A003982(n)`
-/

namespace A285722.P3548838467371594956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285732 (n + 1) + A002260 (n + 1) * A003982 n

end

end A285722.P3548838467371594956

/-! ## A285722.P10834813857795838780

`A285732(n+1)+A003982(n)*A004736(n+1)`
-/

namespace A285722.P10834813857795838780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285732 (n + 1) + A003982 n * A004736 (n + 1)

end

end A285722.P10834813857795838780

/-! ## A285722.P18379523032787035798

`A285723(A038722(n+1))`
-/

namespace A285722.P18379523032787035798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285723 (A038722 (n + 1)).toNat

end

end A285722.P18379523032787035798

/-! ## A285722.P10278484243173070181

`A285723(n+1)+A285732(n+1)-A285733(n+1)`
-/

namespace A285722.P10278484243173070181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285723 (n + 1) + (A285732 (n + 1) - A285733 (n + 1))

end

end A285722.P10278484243173070181

/-!
# A285723: Transpose of square array A285722.

The programs for A285723, there is no canonical definition to state claims against.
-/

/-! ## A285723.P13280015955257061157

`A285722(A038722(n+1))`
-/

namespace A285723.P13280015955257061157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285722 (A038722 (n + 1)).toNat

end

end A285723.P13280015955257061157

/-! ## A285723.P4519493188254447737

`A285722(A061579(n)+1)`
-/

namespace A285723.P4519493188254447737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285722 (A061579 n + 1).toNat

end

end A285723.P4519493188254447737

/-! ## A285723.P17880015444180218189

`lcm(A068344(n), A285733(n+1))`
-/

namespace A285723.P17880015444180218189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068344 n) (A285733 (n + 1))

end

end A285723.P17880015444180218189

/-! ## A285723.P4074033974010318751

`A286100(n+1)+A285733(n+1)`
-/

namespace A285723.P4074033974010318751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (n + 1) + A285733 (n + 1)

end

end A285723.P4074033974010318751

/-! ## A285723.P9264004463601431805

`(1-A003982(n))*A285733(n+1)`
-/

namespace A285723.P9264004463601431805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A003982 n) * A285733 (n + 1)

end

end A285723.P9264004463601431805

/-! ## A285723.P11475911367824061505

`A285733(n+1)+A000720(A204118(n+1))`
-/

namespace A285723.P11475911367824061505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285733 (n + 1) + A000720 (A204118 (n + 1)).toNat

end

end A285723.P11475911367824061505

/-! ## A285723.P8215328560941742769

`A285733(n+1)+A002260(n+1)*A003982(n)`
-/

namespace A285723.P8215328560941742769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285733 (n + 1) + A002260 (n + 1) * A003982 n

end

end A285723.P8215328560941742769

/-! ## A285723.P6669106216736078833

`A285733(n+1)+A003982(n)*A004736(n+1)`
-/

namespace A285723.P6669106216736078833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285733 (n + 1) + A003982 n * A004736 (n + 1)

end

end A285723.P6669106216736078833

/-! ## A285723.P4241943930186725334

`A285722(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A285723.P4241943930186725334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285722 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A285723.P4241943930186725334

/-! ## A285723.P16717108955779370318

`A285722(n+1)+A285733(n+1)-A285732(n+1)`
-/

namespace A285723.P16717108955779370318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285722 (n + 1) + (A285733 (n + 1) - A285732 (n + 1))

end

end A285723.P16717108955779370318

/-! ## A285723.P555001631041509536

`A285733(n+1)%A000124(∑{d}[A285722(n+1), #])`
-/

namespace A285723.P555001631041509536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285733 (n + 1)) (A000124 (∑ d ∈ Nat.divisors (f1 n).natAbs, d))

end

end A285723.P555001631041509536

/-!
# A285725: a(1) = 0; for n > 1, a(n) = A252735(n) - A000035(n).

The programs for A285725, the canonical program `A285725.P10187750537591551827` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285725 has offset 1).

The definition of A285725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285725.P10187750537591551827

`A061395(n+1)-((n-1)%2+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A285725

/-- `A061395(n+1)-((n-1)%2+1)` -/
def P10187750537591551827.Spec : Prop :=
  ∀ n, P10187750537591551827.a n = A285725 (n + 1)

theorem P10187750537591551827.correct : P10187750537591551827.Spec := by
  intro n
  simp only [A285725, Nat.add_sub_cancel]

end A285725

/-! ## A285725.P5743330027677718750

`(1-n)%2-A243291(n+1)+n`
-/

namespace A285725.P5743330027677718750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 2 - A243291 (n + 1) + (n : ℤ)

end

end A285725.P5743330027677718750

namespace A285725

/-- `(1-n)%2-A243291(n+1)+n` -/
def P5743330027677718750.Spec : Prop :=
  ∀ n, P5743330027677718750.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P18426577911389153441

`A252735(A252463(n+1))`
-/

namespace A285725.P18426577911389153441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A252463 (n + 1)).toNat

end

end A285725.P18426577911389153441

namespace A285725

/-- `A252735(A252463(n+1))` -/
def P18426577911389153441.Spec : Prop :=
  ∀ n, P18426577911389153441.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P8173896189532101087

`A252735(A353412(n+1))`
-/

namespace A285725.P8173896189532101087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A353412 (n + 1)).toNat

end

end A285725.P8173896189532101087

namespace A285725

/-- `A252735(A353412(n+1))` -/
def P8173896189532101087.Spec : Prop :=
  ∀ n, P8173896189532101087.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P15746755226996803871

`A061395(n+1)-A134451(n)`
-/

namespace A285725.P15746755226996803871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A134451 n

end

end A285725.P15746755226996803871

namespace A285725

/-- `A061395(n+1)-A134451(n)` -/
def P15746755226996803871.Spec : Prop :=
  ∀ n, P15746755226996803871.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P11041316581848539000

`A061395(2*A252463(n+1))-1`
-/

namespace A285725.P11041316581848539000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A252463 (n + 1)).toNat - 1

end

end A285725.P11041316581848539000

namespace A285725

/-- `A061395(2*A252463(n+1))-1` -/
def P11041316581848539000.Spec : Prop :=
  ∀ n, P11041316581848539000.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P6925461480641642776

`A383259(n+1)-A083721(n+1)`
-/

namespace A285725.P6925461480641642776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383259 (n + 1) - A083721 (n + 1)

end

end A285725.P6925461480641642776

namespace A285725

/-- `A383259(n+1)-A083721(n+1)` -/
def P6925461480641642776.Spec : Prop :=
  ∀ n, P6925461480641642776.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P15055192068894639277

`A061395(2*(n+1))-A040001(n)`
-/

namespace A285725.P15055192068894639277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1)) - A040001 n

end

end A285725.P15055192068894639277

namespace A285725

/-- `A061395(2*(n+1))-A040001(n)` -/
def P15055192068894639277.Spec : Prop :=
  ∀ n, P15055192068894639277.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P8793760281988919060

`(A061395(n+1)+n)%(A109613(n)+1)`
-/

namespace A285725.P8793760281988919060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (n + 1) + (n : ℤ)) (A109613 n + 1)

end

end A285725.P8793760281988919060

namespace A285725

/-- `(A061395(n+1)+n)%(A109613(n)+1)` -/
def P8793760281988919060.Spec : Prop :=
  ∀ n, P8793760281988919060.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P5667135273412218216

`abs(2-A109613(n+1))-A243291(n+1)`
-/

namespace A285725.P5667135273412218216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A109613 (n + 1)| - A243291 (n + 1)

end

end A285725.P5667135273412218216

namespace A285725

/-- `abs(2-A109613(n+1))-A243291(n+1)` -/
def P5667135273412218216.Spec : Prop :=
  ∀ n, P5667135273412218216.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P4183214894167076378

`A028310(A061395(n+1))-A040001(n)`
-/

namespace A285725.P4183214894167076378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A061395 (n + 1)).toNat - A040001 n

end

end A285725.P4183214894167076378

namespace A285725

/-- `A028310(A061395(n+1))-A040001(n)` -/
def P4183214894167076378.Spec : Prop :=
  ∀ n, P4183214894167076378.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P4475235129932491892

`A332899(A332819(A332893(A108548(n+1))))`
-/

namespace A285725.P4475235129932491892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (A332819 (A332893 (A108548 (n + 1)).toNat).toNat).toNat

end

end A285725.P4475235129932491892

namespace A285725

/-- `A332899(A332819(A332893(A108548(n+1))))` -/
def P4475235129932491892.Spec : Prop :=
  ∀ n, P4475235129932491892.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P15105699702085352523

`A252735(n+1)+A285726(n+2)-A252736(n+2)`
-/

namespace A285725.P15105699702085352523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 1) + (A285726 (n + 2) - A252736 (n + 2))

end

end A285725.P15105699702085352523

namespace A285725

/-- `A252735(n+1)+A285726(n+2)-A252736(n+2)` -/
def P15105699702085352523.Spec : Prop :=
  ∀ n, P15105699702085352523.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P11119661187295462175

`A061395(n+1)-floor(dr(A141056(n)²)/4)`
-/

namespace A285725.P11119661187295462175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - ⌊(SequenceMachineLib.digitalRoot (A141056 n ^ 2) : ℚ) / 4⌋

end

end A285725.P11119661187295462175

namespace A285725

/-- `A061395(n+1)-floor(dr(A141056(n)²)/4)` -/
def P11119661187295462175.Spec : Prop :=
  ∀ n, P11119661187295462175.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P494059688372626654

`A243056(2*(n+1))-A243056(A028233(2*(n+1)))`
-/

namespace A285725.P494059688372626654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (2 * (n + 1)) - A243056 (A028233 (2 * (n + 1))).toNat

end

end A285725.P494059688372626654

namespace A285725

/-- `A243056(2*(n+1))-A243056(A028233(2*(n+1)))` -/
def P494059688372626654.Spec : Prop :=
  ∀ n, P494059688372626654.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P18049649342840826069

`A243055(lcm(2, n+1)+1+n)`
-/

namespace A285725.P18049649342840826069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (Nat.lcm 2 (n + 1) + 1 + n)

end

end A285725.P18049649342840826069

namespace A285725

/-- `A243055(lcm(2, n+1)+1+n)` -/
def P18049649342840826069.Spec : Prop :=
  ∀ n, P18049649342840826069.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P4994450763949197535

`A243055(A106833(n+1))`
-/

namespace A285725.P4994450763949197535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A106833 (n + 1)).toNat

end

end A285725.P4994450763949197535

namespace A285725

/-- `A243055(A106833(n+1))` -/
def P4994450763949197535.Spec : Prop :=
  ∀ n, P4994450763949197535.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P6429778350344878777

`A243055(A347365(n+1))`
-/

namespace A285725.P6429778350344878777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A347365 (n + 1)).toNat

end

end A285725.P6429778350344878777

namespace A285725

/-- `A243055(A347365(n+1))` -/
def P6429778350344878777.Spec : Prop :=
  ∀ n, P6429778350344878777.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P13149065597701431950

`abs(A276084(3*n+2)-n)-A243291(n+1)`
-/

namespace A285725.P13149065597701431950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276084 (3 * n + 2) - (n : ℤ)| - A243291 (n + 1)

end

end A285725.P13149065597701431950

namespace A285725

/-- `abs(A276084(3*n+2)-n)-A243291(n+1)` -/
def P13149065597701431950.Spec : Prop :=
  ∀ n, P13149065597701431950.a n = A285725 (n + 1)

end A285725

/-! ## A285725.P7222642958656409690

`A253556(A253554(A250245(n+1)))`
-/

namespace A285725.P7222642958656409690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253556 (A253554 (A250245 (n + 1)).toNat).toNat

end

end A285725.P7222642958656409690

namespace A285725

/-- `A253556(A253554(A250245(n+1)))` -/
def P7222642958656409690.Spec : Prop :=
  ∀ n, P7222642958656409690.a n = A285725 (n + 1)

end A285725

/-!
# A285726: a(1) = a(2) = 0; for n > 2, a(n) = A252736(n) - (1-A000035(n)).

The programs for A285726, the canonical program `A285726.P3256880989065645844` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285726 has offset 1).

The definition of A285726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285726.P3256880989065645844

`A252736((∑[n]+n)%(n+1)+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A285726

/-- `A252736((∑[n]+n)%(n+1)+1)` -/
def P3256880989065645844.Spec : Prop :=
  ∀ n, P3256880989065645844.a n = A285726 (n + 1)

theorem P3256880989065645844.correct : P3256880989065645844.Spec := by
  intro n
  simp only [A285726, Nat.add_sub_cancel]

end A285726

/-! ## A285726.P14817752619494419339

`A252736(A026741(n+1))`
-/

namespace A285726.P14817752619494419339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A026741 (n + 1)).toNat

end

end A285726.P14817752619494419339

namespace A285726

/-- `A252736(A026741(n+1))` -/
def P14817752619494419339.Spec : Prop :=
  ∀ n, P14817752619494419339.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P14567088682578615752

`A252736(A065769(n+1))`
-/

namespace A285726.P14567088682578615752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A065769 (n + 1)).toNat

end

end A285726.P14567088682578615752

namespace A285726

/-- `A252736(A065769(n+1))` -/
def P14567088682578615752.Spec : Prop :=
  ∀ n, P14567088682578615752.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P725133051007605048

`A328708(A068794(n+1))`
-/

namespace A285726.P725133051007605048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328708 (A068794 (n + 1)).toNat

end

end A285726.P725133051007605048

namespace A285726

/-- `A328708(A068794(n+1))` -/
def P725133051007605048.Spec : Prop :=
  ∀ n, P725133051007605048.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P5888750159333523455

`A252736(A252461(n+1))`
-/

namespace A285726.P5888750159333523455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A252461 (n + 1)).toNat

end

end A285726.P5888750159333523455

namespace A285726

/-- `A252736(A252461(n+1))` -/
def P5888750159333523455.Spec : Prop :=
  ∀ n, P5888750159333523455.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P2965261566183683927

`A252736(A252463(n+1))`
-/

namespace A285726.P2965261566183683927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A252463 (n + 1)).toNat

end

end A285726.P2965261566183683927

namespace A285726

/-- `A252736(A252463(n+1))` -/
def P2965261566183683927.Spec : Prop :=
  ∀ n, P2965261566183683927.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P4612311739652398275

`A252736(A384042(n+1))`
-/

namespace A285726.P4612311739652398275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A384042 (n + 1)).toNat

end

end A285726.P4612311739652398275

namespace A285726

/-- `A252736(A384042(n+1))` -/
def P4612311739652398275.Spec : Prop :=
  ∀ n, P4612311739652398275.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P3885140424715744417

`A073093(n+1)-A174296(n)`
-/

namespace A285726.P3885140424715744417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - A174296 n

end

end A285726.P3885140424715744417

namespace A285726

/-- `A073093(n+1)-A174296(n)` -/
def P3885140424715744417.Spec : Prop :=
  ∀ n, P3885140424715744417.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P17057509941553358977

`A064800(n+1)-A265283(n)`
-/

namespace A285726.P17057509941553358977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - A265283 n

end

end A285726.P17057509941553358977

namespace A285726

/-- `A064800(n+1)-A265283(n)` -/
def P17057509941553358977.Spec : Prop :=
  ∀ n, P17057509941553358977.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P9521107743956299788

`A052928(n)%A069345(n+1)`
-/

namespace A285726.P9521107743956299788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052928 n) (A069345 (n + 1))

end

end A285726.P9521107743956299788

namespace A285726

/-- `A052928(n)%A069345(n+1)` -/
def P9521107743956299788.Spec : Prop :=
  ∀ n, P9521107743956299788.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P3184215384096840337

`A001222((n+1)/gcd(n+1, 2*A006530(n+1)))`
-/

namespace A285726.P3184215384096840337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (2 * A006530 (n + 1)) : ℚ))).toNat

end

end A285726.P3184215384096840337

namespace A285726

/-- `A001222((n+1)/gcd(n+1, 2*A006530(n+1)))` -/
def P3184215384096840337.Spec : Prop :=
  ∀ n, P3184215384096840337.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P2234035781901148703

`A001222(lcm(n+3, (n+1)/A006530(n+1))/(n+3))`
-/

namespace A285726.P2234035781901148703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((Int.lcm (n + 3 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))) : ℚ) / (n + 3 : ℚ))).toNat

end

end A285726.P2234035781901148703

namespace A285726

/-- `A001222(lcm(n+3, (n+1)/A006530(n+1))/(n+3))` -/
def P2234035781901148703.Spec : Prop :=
  ∀ n, P2234035781901148703.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P13515121400592883286

`A001222(A011782(A001222(lcm(2, n+1))-1))`
-/

namespace A285726.P13515121400592883286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A011782 (A001222 (Nat.lcm 2 (n + 1)) - 1).toNat).toNat

end

end A285726.P13515121400592883286

namespace A285726

/-- `A001222(A011782(A001222(lcm(2, n+1))-1))` -/
def P13515121400592883286.Spec : Prop :=
  ∀ n, P13515121400592883286.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P17398801527432478846

`A001222(A011782(A001222(n+1)-and(1, n)))`
-/

namespace A285726.P17398801527432478846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A011782 (A001222 (n + 1) - (Nat.land 1 n : ℤ)).toNat).toNat

end

end A285726.P17398801527432478846

namespace A285726

/-- `A001222(A011782(A001222(n+1)-and(1, n)))` -/
def P17398801527432478846.Spec : Prop :=
  ∀ n, P17398801527432478846.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P14081693091713589973

`∑{e}[n+1, #]-val(A256263(n)%4+1, 2)`
-/

namespace A285726.P14081693091713589973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - (SequenceMachineLib.valuation (Int.tmod (A256263 n) 4 + 1).toNat 2 : ℤ)

end

end A285726.P14081693091713589973

namespace A285726

/-- `∑{e}[n+1, #]-val(A256263(n)%4+1, 2)` -/
def P14081693091713589973.Spec : Prop :=
  ∀ n, P14081693091713589973.a n = A285726 (n + 1)

end A285726

/-! ## A285726.P5283617180289732454

`A252736(A332893(n+1))`
-/

namespace A285726.P5283617180289732454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A332893 (n + 1)).toNat

end

end A285726.P5283617180289732454

namespace A285726

/-- `A252736(A332893(n+1))` -/
def P5283617180289732454.Spec : Prop :=
  ∀ n, P5283617180289732454.a n = A285726 (n + 1)

end A285726

/-!
# A285727: a(1) = a(2) = 0, and for n > 2, a(n) = A252463(A252463(n)).

The programs for A285727, the canonical program `A285727.P1152977567223031593` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285727 has offset 1).

The definition of A285727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285727.P1152977567223031593

`A157928(n)*A252463(A252463(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A285727

/-- `A157928(n)*A252463(A252463(n+1))` -/
def P1152977567223031593.Spec : Prop :=
  ∀ n, P1152977567223031593.a n = A285727 (n + 1)

theorem P1152977567223031593.correct : P1152977567223031593.Spec := by
  intro n
  simp only [A285727, Nat.add_sub_cancel]

end A285727

/-! ## A285727.P7771576680028139346

`A252463(A252463(n+1))%A000041(n)`
-/

namespace A285727.P7771576680028139346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252463 (A252463 (n + 1)).toNat) (A000041 n)

end

end A285727.P7771576680028139346

namespace A285727

/-- `A252463(A252463(n+1))%A000041(n)` -/
def P7771576680028139346.Spec : Prop :=
  ∀ n, P7771576680028139346.a n = A285727 (n + 1)

end A285727

/-! ## A285727.P5296934862990214251

`C(A252463(A252463(n+1)), A141044(n))`
-/

namespace A285727.P5296934862990214251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A252463 (A252463 (n + 1)).toNat).toNat (A141044 n).toNat

end

end A285727.P5296934862990214251

namespace A285727

/-- `C(A252463(A252463(n+1)), A141044(n))` -/
def P5296934862990214251.Spec : Prop :=
  ∀ n, (P5296934862990214251.a n : ℤ) = A285727 (n + 1)

end A285727

/-! ## A285727.P11444093818830922828

`A252463(A252463(n+1))-char[A120086(n)]`
-/

namespace A285727.P11444093818830922828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120086 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A252463 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285727.P11444093818830922828

namespace A285727

/-- `A252463(A252463(n+1))-char[A120086(n)]` -/
def P11444093818830922828.Spec : Prop :=
  ∀ n, P11444093818830922828.a n = A285727 (n + 1)

end A285727

/-! ## A285727.P10415357868071699465

`A252463(A252463(n+1))-A019590(n+1)`
-/

namespace A285727.P10415357868071699465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A252463 (n + 1)).toNat - A019590 (n + 1)

end

end A285727.P10415357868071699465

namespace A285727

/-- `A252463(A252463(n+1))-A019590(n+1)` -/
def P10415357868071699465.Spec : Prop :=
  ∀ n, P10415357868071699465.a n = A285727 (n + 1)

end A285727

/-! ## A285727.P4813139691786579347

`A252463(A252463(n+1))-char[A000005(n+1)-n]`
-/

namespace A285727.P4813139691786579347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A252463 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285727.P4813139691786579347

namespace A285727

/-- `A252463(A252463(n+1))-char[A000005(n+1)-n]` -/
def P4813139691786579347.Spec : Prop :=
  ∀ n, P4813139691786579347.a n = A285727 (n + 1)

end A285727

/-! ## A285727.P5805178932826503255

`A252463(A252463(n+1))-char[1-A000217(n)+n]`
-/

namespace A285727.P5805178932826503255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000217 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A252463 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285727.P5805178932826503255

namespace A285727

/-- `A252463(A252463(n+1))-char[1-A000217(n)+n]` -/
def P5805178932826503255.Spec : Prop :=
  ∀ n, P5805178932826503255.a n = A285727 (n + 1)

end A285727

/-! ## A285727.P15346489836156406886

`A252463(A252463(n+1))-A000035(A000010(n+1))`
-/

namespace A285727.P15346489836156406886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A252463 (n + 1)).toNat - A000035 (A000010 (n + 1)).toNat

end

end A285727.P15346489836156406886

namespace A285727

/-- `A252463(A252463(n+1))-A000035(A000010(n+1))` -/
def P15346489836156406886.Spec : Prop :=
  ∀ n, P15346489836156406886.a n = A285727 (n + 1)

end A285727

/-! ## A285727.P11870454128062343358

`A252463(A252463(n+1))-A055615(A252463(n+1)²)`
-/

namespace A285727.P11870454128062343358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A252463 (n + 1)).toNat - A055615 (A252463 (n + 1) ^ 2).toNat

end

end A285727.P11870454128062343358

namespace A285727

/-- `A252463(A252463(n+1))-A055615(A252463(n+1)²)` -/
def P11870454128062343358.Spec : Prop :=
  ∀ n, P11870454128062343358.a n = A285727 (n + 1)

end A285727

/-! ## A285727.P15476170956951012978

`A252463(A252463(n+1))-A010054(A027379(n))`
-/

namespace A285727.P15476170956951012978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A252463 (n + 1)).toNat - A010054 (A027379 n).toNat

end

end A285727.P15476170956951012978

namespace A285727

/-- `A252463(A252463(n+1))-A010054(A027379(n))` -/
def P15476170956951012978.Spec : Prop :=
  ∀ n, P15476170956951012978.a n = A285727 (n + 1)

end A285727

/-! ## A285727.P7459514257083469001

`A252463(A252463(n+1))-A080545(A252463(n+1)²)`
-/

namespace A285727.P7459514257083469001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A252463 (n + 1)).toNat - A080545 (A252463 (n + 1) ^ 2).toNat

end

end A285727.P7459514257083469001

namespace A285727

/-- `A252463(A252463(n+1))-A080545(A252463(n+1)²)` -/
def P7459514257083469001.Spec : Prop :=
  ∀ n, P7459514257083469001.a n = A285727 (n + 1)

end A285727

/-! ## A285727.P165899614068722942

`A252463(A252463(n+1))-A353454(A252463(n+1)²)`
-/

namespace A285727.P165899614068722942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A252463 (n + 1)).toNat - A353454 (A252463 (n + 1) ^ 2).toNat

end

end A285727.P165899614068722942

namespace A285727

/-- `A252463(A252463(n+1))-A353454(A252463(n+1)²)` -/
def P165899614068722942.Spec : Prop :=
  ∀ n, P165899614068722942.a n = A285727 (n + 1)

end A285727

/-!
# A285728: a(1) = 0; for n > 1, if n is even, then a(n) = A252463(A000265(n)), otherwise a(n) = a(A064989(n)).

The programs for A285728, the canonical program `A285728.P12934665252466122202` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285728 has offset 1).

The definition of A285728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285728.P12934665252466122202

`∑{d}[A246277(n+1), A349127(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A285728

/-- `∑{d}[A246277(n+1), A349127(#)]` -/
def P12934665252466122202.Spec : Prop :=
  ∀ n, P12934665252466122202.a n = A285728 (n + 1)

theorem P12934665252466122202.correct : P12934665252466122202.Spec := by
  intro n
  simp only [A285728, Nat.add_sub_cancel]

end A285728

/-! ## A285728.P5772572090812101878

`A064989(A348717(n+1))%(n+1)`
-/

namespace A285728.P5772572090812101878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064989 (A348717 (n + 1)).toNat) (n + 1 : ℤ)

end

end A285728.P5772572090812101878

namespace A285728

/-- `A064989(A348717(n+1))%(n+1)` -/
def P5772572090812101878.Spec : Prop :=
  ∀ n, P5772572090812101878.a n = A285728 (n + 1)

end A285728

/-! ## A285728.P11585879098403185643

`A064989(A348717(n+1))-A000007(n)`
-/

namespace A285728.P11585879098403185643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A348717 (n + 1)).toNat - A000007 n

end

end A285728.P11585879098403185643

namespace A285728

/-- `A064989(A348717(n+1))-A000007(n)` -/
def P11585879098403185643.Spec : Prop :=
  ∀ n, P11585879098403185643.a n = A285728 (n + 1)

end A285728

/-! ## A285728.P9400171546674787860

`A064989(A252759(n+1)-A055396(n+1)+1)%(n+1)`
-/

namespace A285728.P9400171546674787860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064989 (A252759 (n + 1) - A055396 (n + 1) + 1).toNat) (n + 1 : ℤ)

end

end A285728.P9400171546674787860

namespace A285728

/-- `A064989(A252759(n+1)-A055396(n+1)+1)%(n+1)` -/
def P9400171546674787860.Spec : Prop :=
  ∀ n, P9400171546674787860.a n = A285728 (n + 1)

end A285728

/-! ## A285728.P15639463246089424082

`A246277(A028234(n+1)*A250469(A020639(n+1)))`
-/

namespace A285728.P15639463246089424082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A028234 (n + 1) * A250469 (A020639 (n + 1)).toNat).toNat

end

end A285728.P15639463246089424082

namespace A285728

/-- `A246277(A028234(n+1)*A250469(A020639(n+1)))` -/
def P15639463246089424082.Spec : Prop :=
  ∀ n, P15639463246089424082.a n = A285728 (n + 1)

end A285728

/-! ## A285728.P18318453082933993124

`A064989(A078898(A249817(n+1)))%A003961(n+1)`
-/

namespace A285728.P18318453082933993124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064989 (A078898 (A249817 (n + 1)).toNat).toNat) (A003961 (n + 1))

end

end A285728.P18318453082933993124

namespace A285728

/-- `A064989(A078898(A249817(n+1)))%A003961(n+1)` -/
def P18318453082933993124.Spec : Prop :=
  ∀ n, P18318453082933993124.a n = A285728 (n + 1)

end A285728

/-!
# A285729: Compound filter: a(n) = T(A032742(n), A046523(n)), where T(n,k) is sequence A000027 used as a pairing function.

The programs for A285729, there is no canonical definition to state claims against.
-/

/-! ## A285729.P10022555594110057213

`1/2*(2+(A032742(n+1)+A046523(n+1))²-A032742(n+1)-3*A046523(n+1))`
-/

namespace A285729.P10022555594110057213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A032742 (n + 1) + A046523 (n + 1)) ^ 2 - A032742 (n + 1) - 3 * A046523 (n + 1) : ℚ)

end

end A285729.P10022555594110057213

/-! ## A285729.P9466621828305730685

`(2+(A032742(n+1)+A046523(n+1))²-A032742(n+1)-3*A046523(n+1))/2`
-/

namespace A285729.P9466621828305730685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A032742 (n + 1) + A046523 (n + 1)) ^ 2 - A032742 (n + 1) - 3 * A046523 (n + 1) : ℚ) / 2

end

end A285729.P9466621828305730685

/-!
# A285730: Square array: If A001222(n) < k, then A(n,k) = n, otherwise A(n,k) = product of k largest prime factors of n (taken with multiplicity), read by descending antidiagonals.

The programs for A285730, there is no canonical definition to state claims against.
-/

/-! ## A285730.P15818929017635140517

`A285731(A038722(n+1))`
-/

namespace A285730.P15818929017635140517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285731 (A038722 (n + 1)).toNat

end

end A285730.P15818929017635140517

/-! ## A285730.P12700996185359116523

`A285731(A061579(n)+1)`
-/

namespace A285730.P12700996185359116523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285731 (A061579 n + 1).toNat

end

end A285730.P12700996185359116523

/-! ## A285730.P7159042654048267378

`A285731(A114327(n)+1+n)`
-/

namespace A285730.P7159042654048267378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285731 (A114327 n + 1 + (n : ℤ)).toNat

end

end A285730.P7159042654048267378

/-! ## A285730.P14169152198655611504

`A285731(A002024(n+1)²-n)`
-/

namespace A285730.P14169152198655611504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285731 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A285730.P14169152198655611504

/-! ## A285730.P14263463512751812778

`A285731(A002024(n+1)*A002024(n+1)-n)`
-/

namespace A285730.P14263463512751812778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285731 (A002024 (n + 1) * A002024 (n + 1) - (n : ℤ)).toNat

end

end A285730.P14263463512751812778

/-! ## A285730.P8763226590461881348

`A285731(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A285730.P8763226590461881348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285731 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A285730.P8763226590461881348

/-!
# A285731: Transpose of square array A285730.

The programs for A285731, there is no canonical definition to state claims against.
-/

/-! ## A285731.P8756601997180448010

`A285730(A278818(n))`
-/

namespace A285731.P8756601997180448010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285730 (A278818 n).toNat

end

end A285731.P8756601997180448010

/-! ## A285731.P10369100792736154399

`A285730(A038722(n+1))`
-/

namespace A285731.P10369100792736154399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285730 (A038722 (n + 1)).toNat

end

end A285731.P10369100792736154399

/-! ## A285731.P5037991532071328214

`A285730(A061579(n)+1)`
-/

namespace A285731.P5037991532071328214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285730 (A061579 n + 1).toNat

end

end A285731.P5037991532071328214

/-! ## A285731.P8496364071730063642

`A285730(A093995(n+1)-n)`
-/

namespace A285731.P8496364071730063642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285730 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A285731.P8496364071730063642

/-! ## A285731.P3094186470386195661

`A285730(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A285731.P3094186470386195661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285730 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A285731.P3094186470386195661

/-!
# A285732: Square array A(n,k) read by antidiagonals, A(n,n) = -n, otherwise, if n > k, A(n,k) = T(n-k,k), else A(n,k) = T(n,k-n), where T(n,k) is sequence A000027 considered as a two-dimensional table.

The programs for A285732, there is no canonical definition to state claims against.
-/

/-! ## A285732.P7968271879730492379

`A285722(n+1)-A286100(n+1)`
-/

namespace A285732.P7968271879730492379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285722 (n + 1) - A286100 (n + 1)

end

end A285732.P7968271879730492379

/-! ## A285732.P1937804577852651899

`A285733(A038722(n+1))`
-/

namespace A285732.P1937804577852651899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285733 (A038722 (n + 1)).toNat

end

end A285732.P1937804577852651899

/-! ## A285732.P16381048179381666323

`A285733(A061579(n)+1)`
-/

namespace A285732.P16381048179381666323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285733 (A061579 n + 1).toNat

end

end A285732.P16381048179381666323

/-! ## A285732.P6730132639439924924

`A285733(A057944(n)+sqrt(A055461(n+1)))`
-/

namespace A285732.P6730132639439924924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285733 (SequenceMachineLib.roundAway ((A057944 n : ℝ) + Real.sqrt (A055461 (n + 1) : ℝ))).toNat

end

end A285732.P6730132639439924924

/-! ## A285732.P15346351433277410978

`A285733(A057944(n)+ceil(A099375(n)/2))`
-/

namespace A285732.P15346351433277410978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285733 (A057944 n + ⌈(A099375 n : ℚ) / 2⌉).toNat

end

end A285732.P15346351433277410978

/-! ## A285732.P15261547380949173840

`A285722(n+1)+A003982(n)*A285733(n+1)`
-/

namespace A285732.P15261547380949173840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285722 (n + 1) + A003982 n * A285733 (n + 1)

end

end A285732.P15261547380949173840

/-! ## A285732.P6310831515173676485

`A285733(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A285732.P6310831515173676485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285733 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A285732.P6310831515173676485

/-! ## A285732.P2299086310775199441

`A285722(n+1)+A285733(n+1)-A285723(n+1)`
-/

namespace A285732.P2299086310775199441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285722 (n + 1) + (A285733 (n + 1) - A285723 (n + 1))

end

end A285732.P2299086310775199441

/-!
# A285733: Transpose of square array A285732.

The programs for A285733, there is no canonical definition to state claims against.
-/

/-! ## A285733.P4149244394173361948

`A285732(∑[char[∑[n]]]²-n)`
-/

namespace A285733.P4149244394173361948
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285732 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A285733.P4149244394173361948

/-! ## A285733.P7167536080026389407

`A285723(n+1)-A286100(n+1)`
-/

namespace A285733.P7167536080026389407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285723 (n + 1) - A286100 (n + 1)

end

end A285733.P7167536080026389407

/-! ## A285733.P7832996059472324315

`A285732(A038722(n+1))%Δ[A005563(n)]`
-/

namespace A285733.P7832996059472324315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285732 (A038722 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A285733.P7832996059472324315

/-! ## A285733.P13329836377369057035

`A285732(A038722(n+1))+A000007(n+1)`
-/

namespace A285733.P13329836377369057035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285732 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A285733.P13329836377369057035

/-! ## A285733.P1966767102661812549

`A285723(n+1)+A285732(n+1)-A285722(n+1)`
-/

namespace A285733.P1966767102661812549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285723 (n + 1) + (A285732 (n + 1) - A285722 (n + 1))

end

end A285733.P1966767102661812549

/-! ## A285733.P8199789221263966635

`A285732(A038722(n+1))%A350919(n)`
-/

namespace A285733.P8199789221263966635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285732 (A038722 (n + 1)).toNat) (A350919 n)

end

end A285733.P8199789221263966635

/-!
# A285734: a(1) = 0, and for n > 1, a(n) = the largest squarefree number x such that x < n-x, and n-x is also squarefree.

The programs for A285734, there is no canonical definition to state claims against.
-/

/-! ## A285734.P13341874046727748265

`n+1-A285735(n+1)`
-/

namespace A285734.P13341874046727748265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285735 (n + 1)

end

end A285734.P13341874046727748265

/-! ## A285734.P12989451178270227160

`(n+1-A285736(n+1))/2`
-/

namespace A285734.P12989451178270227160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A285736 (n + 1) : ℚ) / 2

end

end A285734.P12989451178270227160

/-! ## A285734.P12486134012292211480

`n-A338228(A285735(n+1))`
-/

namespace A285734.P12486134012292211480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A338228 (A285735 (n + 1)).toNat

end

end A285734.P12486134012292211480

/-! ## A285734.P14540640509636198771

`A110654(1-A285736(n+1)+n)`
-/

namespace A285734.P14540640509636198771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (1 - A285736 (n + 1) + (n : ℤ)).toNat

end

end A285734.P14540640509636198771

/-! ## A285734.P6283407138432219570

`A028242(2-A285736(n+1)+n)`
-/

namespace A285734.P6283407138432219570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 - A285736 (n + 1) + (n : ℤ)).toNat

end

end A285734.P6283407138432219570

/-! ## A285734.P12486438684945482581

`(n*A000188(A285735(n+1)²))%(n+1)`
-/

namespace A285734.P12486438684945482581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A000188 (A285735 (n + 1) ^ 2).toNat) (n + 1 : ℤ)

end

end A285734.P12486438684945482581

/-! ## A285734.P510663184156510720

`A025581(A285735(n+1)+∑[n+1])`
-/

namespace A285734.P510663184156510720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A285735 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A285734.P510663184156510720

/-!
# A285735: a(1) = 1, and for n > 1, a(n) = the least squarefree number x such that x > n-x, and n-x is also squarefree.

The programs for A285735, there is no canonical definition to state claims against.
-/

/-! ## A285735.P7684977655023600297

`n+1-A285734(n+1)`
-/

namespace A285735.P7684977655023600297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285734 (n + 1)

end

end A285735.P7684977655023600297

/-! ## A285735.P11859692547709309037

`(A285736(n+1)+n+1)/2`
-/

namespace A285735.P11859692547709309037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285736 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A285735.P11859692547709309037

/-! ## A285735.P2316604437684084670

`A028242(A285736(n+1))+A028242(n)`
-/

namespace A285735.P2316604437684084670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A285736 (n + 1)).toNat + A028242 n

end

end A285735.P2316604437684084670

/-! ## A285735.P8368218741886527586

`A110654(A285736(n+1))+A110654(n)`
-/

namespace A285735.P8368218741886527586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A285736 (n + 1)).toNat + A110654 n

end

end A285735.P8368218741886527586

/-! ## A285735.P12272245140983746590

`A110654(A285736(n+1)+n)`
-/

namespace A285735.P12272245140983746590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A285736 (n + 1) + (n : ℤ)).toNat

end

end A285735.P12272245140983746590

/-! ## A285735.P5964912521366540534

`A285734(A285736(n+1)+n+1)`
-/

namespace A285735.P5964912521366540534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285734 (A285736 (n + 1) + (n + 1 : ℤ)).toNat

end

end A285735.P5964912521366540534

/-! ## A285735.P191887831524965685

`A286104(A285736(n+1)+1+n)`
-/

namespace A285735.P191887831524965685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286104 (A285736 (n + 1) + 1 + (n : ℤ)).toNat

end

end A285735.P191887831524965685

/-! ## A285735.P18132225534567766253

`A286107(A285736(n+1)+1+n)`
-/

namespace A285735.P18132225534567766253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286107 (A285736 (n + 1) + 1 + (n : ℤ)).toNat

end

end A285735.P18132225534567766253

/-!
# A285736: a(n) = A285735(n) - A285734(n) = n - 2*A285734(n).

The programs for A285736, there is no canonical definition to state claims against.
-/

/-! ## A285736.P810087538402399840

`n+1-2*A285734(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285736.P810087538402399840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A285734 (n + 1)

end

end A285736.P810087538402399840

/-! ## A285736.P7101847496252908636

`A285735(n+1)-A285734(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285736.P7101847496252908636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285735 (n + 1) - A285734 (n + 1)

end

end A285736.P7101847496252908636

/-! ## A285736.P252102553036847837

`A004273(A285735(n+1))-n`
-/

namespace A285736.P252102553036847837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285735 (n + 1)).toNat - (n : ℤ)

end

end A285736.P252102553036847837

/-! ## A285736.P7831453702533120285

`n-A060747(A285734(n+1))`
-/

namespace A285736.P7831453702533120285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A060747 (A285734 (n + 1)).toNat

end

end A285736.P7831453702533120285

/-! ## A285736.P8647761335180735119

`A028310(n)-A004273(A285734(n+1))`
-/

namespace A285736.P8647761335180735119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A004273 (A285734 (n + 1)).toNat

end

end A285736.P8647761335180735119

/-! ## A285736.P3514225237229722133

`A118759(A285735(n+1)-(n+1-A285735(n+1)))`
-/

namespace A285736.P3514225237229722133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A285735 (n + 1) - ((n + 1 : ℤ) - A285735 (n + 1))).toNat

end

end A285736.P3514225237229722133

/-!
# A285737: Expansion of Product_{k>=1} (1 + k^2*x^k)^k.

The programs for A285737, there is no canonical definition to state claims against.
-/

/-! ## A285737.P245296420603049724

`A285240(n)-2*A086010(A111400(n))`
-/

namespace A285737.P245296420603049724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285240 n - 2 * A086010 (A111400 n).toNat

end

end A285737.P245296420603049724

/-!
# A285738: Greatest prime less than 2*n^2 for n > 1, a(1) = 1.

The programs for A285738, there is no canonical definition to state claims against.
-/

/-! ## A285738.P9738879427384731341

`A136548(2*(n+1)²)`
-/

namespace A285738.P9738879427384731341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (2 * (n + 1) ^ 2)

end

end A285738.P9738879427384731341

/-! ## A285738.P16462706570220576575

`or(1, A060308((n+1)²)-1)`
-/

namespace A285738.P16462706570220576575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060308 ((n + 1) ^ 2) - 1)

end

end A285738.P16462706570220576575

/-! ## A285738.P9722085066926712183

`A006005(A278114(n+1))`
-/

namespace A285738.P9722085066926712183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A278114 (n + 1)).toNat

end

end A285738.P9722085066926712183

/-! ## A285738.P5720873936234251754

`A000265(A060308((n+1)²))`
-/

namespace A285738.P5720873936234251754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A060308 ((n + 1) ^ 2)).toNat

end

end A285738.P5720873936234251754

/-! ## A285738.P5472209282180030791

`record[A006530(A278818(2*n))]`
-/

namespace A285738.P5472209282180030791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A278818 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285738.P5472209282180030791

/-!
# A285739: Numerator of discriminant of n-th Bernoulli polynomial.

The programs for A285739, there is no canonical definition to state claims against.
-/

/-! ## A285739.P9158132467052047902

`∏{e}[A323817(n), xor(6, #)]`
-/

namespace A285739.P9158132467052047902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.xor 6 (Nat.factorization (f1 n).natAbs p)

end

end A285739.P9158132467052047902

/-!
# A285741: a(0) = 1; a(2*n) = a(n), a(2*n+1) = a(n) + R(a(n)), where R() is the digit reversal.

The programs for A285741, there is no canonical definition to state claims against.
-/

/-! ## A285741.P10917496814475962951

`A056964(a(and(n, n-1)))` with `a(0)=1`
-/

namespace A285741.P10917496814475962951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056964 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A285741.P10917496814475962951

/-! ## A285741.P12978918141424953191

`A001127(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A285741.P12978918141424953191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001127 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285741.P12978918141424953191

/-! ## A285741.P8149037839942893921

`A001127(n-∑[∑{e}[and(n, -n), #]])`
-/

namespace A285741.P8149037839942893921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001127 (n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285741.P8149037839942893921

/-! ## A285741.P1939101199506525081

`A001127(∑[1-∑{e}[or(n, -n), #]]-1)`
-/

namespace A285741.P1939101199506525081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001127 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A285741.P1939101199506525081

/-! ## A285741.P3905015253499702649

`A001127(A000120(n))`
-/

namespace A285741.P3905015253499702649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001127 (A000120 n).toNat

end

end A285741.P3905015253499702649

/-! ## A285741.P18387840944434424300

`A001127(log2(A001316(n)))`
-/

namespace A285741.P18387840944434424300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001127 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

end

end A285741.P18387840944434424300

/-! ## A285741.P14464757056726624452

`A001127(∑[A088705(n)])`
-/

namespace A285741.P14464757056726624452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001127 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285741.P14464757056726624452

/-! ## A285741.P248695296423839408

`A001127(A001222(A048883(n)))`
-/

namespace A285741.P248695296423839408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001127 (A001222 (A048883 n).toNat).toNat

end

end A285741.P248695296423839408

/-! ## A285741.P11413171969130072761

`A001127(A001222(A253565(n)))`
-/

namespace A285741.P11413171969130072761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001127 (A001222 (A253565 n).toNat).toNat

end

end A285741.P11413171969130072761

/-!
# A285745: Number of n X 3 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285745, there is no canonical definition to state claims against.
-/

/-! ## A285745.P7427702447485352847

`A285750(∑[n+3]+1)`
-/

namespace A285745.P7427702447485352847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A285745.P7427702447485352847

/-! ## A285745.P4682430562321324910

`record[A285750(A198464(n+1))]`
-/

namespace A285745.P4682430562321324910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285745.P4682430562321324910

/-! ## A285745.P6250655920251204052

`lcm(A000034(n), A285750(A034856(n+2)))`
-/

namespace A285745.P6250655920251204052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A285750 (A034856 (n + 2)).toNat)

end

end A285745.P6250655920251204052

/-! ## A285745.P5800945272300020902

`A014963(A060544(n+1))*A285750(A034856(n+2))`
-/

namespace A285745.P5800945272300020902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A060544 (n + 1)).toNat * A285750 (A034856 (n + 2)).toNat

end

end A285745.P5800945272300020902

/-!
# A285746: Number of n X 4 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285746, there is no canonical definition to state claims against.
-/

/-! ## A285746.P12060741541556544771

`A285750(A141214(n+1))`
-/

namespace A285746.P12060741541556544771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A141214 (n + 1)).toNat

end

end A285746.P12060741541556544771

/-! ## A285746.P3165759363216895913

`A285750(A055998(n+2))`
-/

namespace A285746.P3165759363216895913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A055998 (n + 2)).toNat

end

end A285746.P3165759363216895913

/-! ## A285746.P9168003950434765257

`A285750(A155212(n)+5)`
-/

namespace A285746.P9168003950434765257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A155212 n + 5).toNat

end

end A285746.P9168003950434765257

/-! ## A285746.P9413609586938262452

`A285750(eq[2, A054123(n)])`
-/

namespace A285746.P9413609586938262452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285746.P9413609586938262452

/-! ## A285746.P4522334989885534044

`A285750(eq[3, A193592(n)])`
-/

namespace A285746.P4522334989885534044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285746.P4522334989885534044

/-!
# A285747: Number of n X 5 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285747, there is no canonical definition to state claims against.
-/

/-! ## A285747.P16446916188681278233

`A285750(Δ[A264443(n)])`
-/

namespace A285747.P16446916188681278233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (f1 (n + 1) - f1 n).toNat

end

end A285747.P16446916188681278233

/-! ## A285747.P2964029797782017424

`A285750(eq[4, A193592(n)])`
-/

namespace A285747.P2964029797782017424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285747.P2964029797782017424

/-! ## A285747.P1145934021167130628

`A285750(Δ[A023545(n+1)])`
-/

namespace A285747.P1145934021167130628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (f1 (n + 1) - f1 n).toNat

end

end A285747.P1145934021167130628

/-! ## A285747.P8423928385074921320

`A285750(eq[5, A200370(n+1)])`
-/

namespace A285747.P8423928385074921320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285747.P8423928385074921320

/-! ## A285747.P9547655046910652078

`A285750(eq[6, A185782(n+1)])`
-/

namespace A285747.P9547655046910652078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285747.P9547655046910652078

/-!
# A285748: Number of n X 6 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285748, there is no canonical definition to state claims against.
-/

/-! ## A285748.P10564472996429389217

`A285750(A052905(n+3))`
-/

namespace A285748.P10564472996429389217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A052905 (n + 3)).toNat

end

end A285748.P10564472996429389217

/-! ## A285748.P5318705843121415412

`A285750(A056119(n)+16)`
-/

namespace A285748.P5318705843121415412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A056119 n + 16).toNat

end

end A285748.P5318705843121415412

/-! ## A285748.P2627467361734422710

`A285750(eq[3, A219347(n)])`
-/

namespace A285748.P2627467361734422710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285748.P2627467361734422710

/-! ## A285748.P4625566398211217803

`A285750(eq[5, A193592(n)])`
-/

namespace A285748.P4625566398211217803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285748.P4625566398211217803

/-! ## A285748.P9552863236143466946

`A285750(A055999(n+3)+1)`
-/

namespace A285748.P9552863236143466946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A055999 (n + 3) + 1).toNat

end

end A285748.P9552863236143466946

/-!
# A285749: Number of n X 7 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285749, there is no canonical definition to state claims against.
-/

/-! ## A285749.P6861656392139768971

`A285750(A055999(n+4))`
-/

namespace A285749.P6861656392139768971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A055999 (n + 4)).toNat

end

end A285749.P6861656392139768971

/-! ## A285749.P11079782721373858279

`A285750(eq[4, A219347(n)])`
-/

namespace A285749.P11079782721373858279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285749.P11079782721373858279

/-! ## A285749.P13992505122999719240

`A285750(eq[6, A193592(n)])`
-/

namespace A285749.P13992505122999719240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285749.P13992505122999719240

/-! ## A285749.P4474135379102278477

`A285750(Δ[A023551(n+2)])`
-/

namespace A285749.P4474135379102278477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (f1 (n + 1) - f1 n).toNat

end

end A285749.P4474135379102278477

/-! ## A285749.P15628182368698537441

`A285750(A052905(n+4)-1)`
-/

namespace A285749.P15628182368698537441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A052905 (n + 4) - 1).toNat

end

end A285749.P15628182368698537441

/-!
# A285751: Number of 2 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285751, there is no canonical definition to state claims against.
-/

/-! ## A285751.P2555723828403089293

`A285750(∑[n+1]+2)`
-/

namespace A285751.P2555723828403089293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A285751.P2555723828403089293

/-! ## A285751.P5756562888899461652

`record[A073424(n)*A285750(n+2)]`
-/

namespace A285751.P5756562888899461652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n * A285750 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285751.P5756562888899461652

/-!
# A285752: Number of 3 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285752, there is no canonical definition to state claims against.
-/

/-! ## A285752.P12185187728245841017

`A285750(∑[n+2]+4)`
-/

namespace A285752.P12185187728245841017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A285752.P12185187728245841017

/-! ## A285752.P6869193500461726865

`A285750(A167614(n+1))+A025469(n)`
-/

namespace A285752.P6869193500461726865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A167614 (n + 1)).toNat + A025469 n

end

end A285752.P6869193500461726865

/-! ## A285752.P4874389317015550135

`A158388(n)*A285750(A167614(n+1))`
-/

namespace A285752.P4874389317015550135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A285750 (A167614 (n + 1)).toNat

end

end A285752.P4874389317015550135

/-! ## A285752.P8887135485000285791

`A285750(A167614(n+1))+A008683(4*(n+1))`
-/

namespace A285752.P8887135485000285791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A167614 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A285752.P8887135485000285791

/-! ## A285752.P1494213116600976793

`A285750(A167614(n+1))/A000045(A014963(2*(n+1)))`
-/

namespace A285752.P1494213116600976793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285750 (A167614 (n + 1)).toNat : ℚ) / (A000045 (A014963 (2 * (n + 1))).toNat : ℚ)

end

end A285752.P1494213116600976793

/-!
# A285753: Number of 4 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285753, there is no canonical definition to state claims against.
-/

/-! ## A285753.P17871840480459946097

`A285750(A141214(n)+7)`
-/

namespace A285753.P17871840480459946097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A141214 n + 7).toNat

end

end A285753.P17871840480459946097

/-! ## A285753.P12234213919865861855

`A285750(A052905(n)+9)`
-/

namespace A285753.P12234213919865861855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A052905 n + 9).toNat

end

end A285753.P12234213919865861855

/-! ## A285753.P6105232585975860595

`A285750(A055999(n)+10)`
-/

namespace A285753.P6105232585975860595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A055999 n + 10).toNat

end

end A285753.P6105232585975860595

/-! ## A285753.P7939378648919924760

`A285750(A167614(n+2)+1)`
-/

namespace A285753.P7939378648919924760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A167614 (n + 2) + 1).toNat

end

end A285753.P7939378648919924760

/-! ## A285753.P17576784907139969067

`A285750(A166136(n+2)-2)`
-/

namespace A285753.P17576784907139969067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A166136 (n + 2) - 2).toNat

end

end A285753.P17576784907139969067

/-!
# A285754: Number of 5 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285754, there is no canonical definition to state claims against.
-/

/-! ## A285754.P3226046130762844221

`A285750(A155212(n)+13)`
-/

namespace A285754.P3226046130762844221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A155212 n + 13).toNat

end

end A285754.P3226046130762844221

/-! ## A285754.P12427344814576534872

`A285750(A056000(n)+15)`
-/

namespace A285754.P12427344814576534872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A056000 n + 15).toNat

end

end A285754.P12427344814576534872

/-! ## A285754.P5233576005579950236

`A285750(eq[7, A066657(n)])`
-/

namespace A285754.P5233576005579950236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285754.P5233576005579950236

/-! ## A285754.P14813476686157557109

`A285750(A055999(n+1)+11)`
-/

namespace A285754.P14813476686157557109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A055999 (n + 1) + 11).toNat

end

end A285754.P14813476686157557109

/-! ## A285754.P11347484593884762903

`A285750(eq[6, A131818(n+1)])`
-/

namespace A285754.P11347484593884762903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285754.P11347484593884762903

/-!
# A285755: Number of 6 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285755, there is no canonical definition to state claims against.
-/

/-! ## A285755.P8125573817724036725

`A285750(A166136(n+4))`
-/

namespace A285755.P8125573817724036725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A166136 (n + 4)).toNat

end

end A285755.P8125573817724036725

/-! ## A285755.P9417872053905607544

`A285750(A056115(n)+21)`
-/

namespace A285755.P9417872053905607544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A056115 n + 21).toNat

end

end A285755.P9417872053905607544

/-! ## A285755.P1281607816331285857

`A285750(eq[6, A130270(n+1)])`
-/

namespace A285755.P1281607816331285857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285755.P1281607816331285857

/-! ## A285755.P13214330402416953211

`A285750(eq[7, A131818(n+1)])`
-/

namespace A285755.P13214330402416953211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285755.P13214330402416953211

/-! ## A285755.P1142895790391473089

`A285750(Δ[A023551(n+2)]-1-2*n)`
-/

namespace A285755.P1142895790391473089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (f1 (n + 1) - f1 n - 1 - (2 * n : ℤ)).toNat

end

end A285755.P1142895790391473089

/-!
# A285756: Number of 7 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A285756, there is no canonical definition to state claims against.
-/

/-! ## A285756.P10641567206581457880

`A285750(A056119(n)+28)`
-/

namespace A285756.P10641567206581457880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A056119 n + 28).toNat

end

end A285756.P10641567206581457880

/-! ## A285756.P4071060013448099346

`A285750(eq[11, A066657(n)])`
-/

namespace A285756.P4071060013448099346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285756.P4071060013448099346

/-! ## A285756.P5648406335395282010

`A285750(A000124(n+6)+6)`
-/

namespace A285756.P5648406335395282010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A000124 (n + 6) + 6).toNat

end

end A285756.P5648406335395282010

/-! ## A285756.P1097985657434559240

`A285750(A055999(n+3)+13)`
-/

namespace A285756.P1097985657434559240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (A055999 (n + 3) + 13).toNat

end

end A285756.P1097985657434559240

/-! ## A285756.P3217736945302923596

`A285750(eq[8, A131818(n+1)])`
-/

namespace A285756.P3217736945302923596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285756.P3217736945302923596

/-!
# A285757: a(n) = a(n - a(n - 2)) + a(n - a(n - 8)), with a(i) = i for 1 <= i <= 9.

The programs for A285757, the canonical program `A285757.P16508267880540469345` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285757 has offset 1).

The definition of A285757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-8))` (program `A285757.P16508267880540469345`, by `A285757.P16508267880540469345.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285757.P16508267880540469345

`a(n-a(n-2))+a(n-a(n-8))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285757

/-- `a(n-a(n-2))+a(n-a(n-8))` -/
def P16508267880540469345.Spec : Prop :=
  ∀ n, (P16508267880540469345.a n : ℤ) = A285757 (n + 1)

theorem P16508267880540469345.correct : P16508267880540469345.Spec := by
  intro n
  simp only [A285757, Nat.add_sub_cancel]

end A285757

/-! ## A285757.P4663029568659498369

`A285758(n+7)-C(2, n+2)`
-/

namespace A285757.P4663029568659498369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285758 (n + 7) - (Nat.choose 2 (n + 2) : ℤ)

end

end A285757.P4663029568659498369

namespace A285757

/-- `A285758(n+7)-C(2, n+2)` -/
def P4663029568659498369.Spec : Prop :=
  ∀ n, P4663029568659498369.a n = A285757 (n + 1)

end A285757

/-! ## A285757.P3909466567024996200

`A285758(A020719(n))/A054977(n)`
-/

namespace A285757.P3909466567024996200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285758 (A020719 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A285757.P3909466567024996200

namespace A285757

/-- `A285758(A020719(n))/A054977(n)` -/
def P3909466567024996200.Spec : Prop :=
  ∀ n, P3909466567024996200.a n = (A285757 (n + 1) : ℚ)

end A285757

/-! ## A285757.P7726875823197382520

`A285758(A020719(n))^-A057428(n)`
-/

namespace A285757.P7726875823197382520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285758 (A020719 n).toNat : ℚ) ^ (-A057428 n : ℤ)

end

end A285757.P7726875823197382520

namespace A285757

/-- `A285758(A020719(n))^-A057428(n)` -/
def P7726875823197382520.Spec : Prop :=
  ∀ n, P7726875823197382520.a n = (A285757 (n + 1) : ℚ)

end A285757

/-! ## A285757.P17152589922861925668

`A285758(A020719(n))^A001221(A001316(n))`
-/

namespace A285757.P17152589922861925668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285758 (A020719 n).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A285757.P17152589922861925668

namespace A285757

/-- `A285758(A020719(n))^A001221(A001316(n))` -/
def P17152589922861925668.Spec : Prop :=
  ∀ n, P17152589922861925668.a n = (A285757 (n + 1) : ℚ)

end A285757

/-! ## A285757.P9922314701057212254

`A285758(A020719(n))^(n-log2(A011782(n)))`
-/

namespace A285757.P9922314701057212254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A285758 (A020719 n).toNat : ℝ) ^ ((n : ℝ) - Real.logb 2 (A011782 n : ℝ))

end

end A285757.P9922314701057212254

namespace A285757

/-- `A285758(A020719(n))^(n-log2(A011782(n)))` -/
def P9922314701057212254.Spec : Prop :=
  ∀ n, P9922314701057212254.a n = (A285757 (n + 1) : ℝ)

end A285757

/-! ## A285757.P10910700767199233638

`A285758(A020719(n))+A008683(2*(n+1)²)`
-/

namespace A285757.P10910700767199233638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285758 (A020719 n).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A285757.P10910700767199233638

namespace A285757

/-- `A285758(A020719(n))+A008683(2*(n+1)²)` -/
def P10910700767199233638.Spec : Prop :=
  ∀ n, P10910700767199233638.a n = A285757 (n + 1)

end A285757

/-!
# A285759: a(n) = a(n - 1 - a(n - 1)) + a(n - 1 - a(n - 4)), with a(1) = 1, a(2) = 1, a(3) = 1, a(4) = 2.

The programs for A285759, the canonical program `A285759.P11491839629566385082` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285759 has offset 1).

The definition of A285759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1-a(n-1))+a(n-1-a(n-4))` (program `A285759.P11491839629566385082`, by `A285759.P11491839629566385082.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285759.P11491839629566385082

`a(n-1-a(n-1))+a(n-1-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285759

/-- `a(n-1-a(n-1))+a(n-1-a(n-4))` -/
def P11491839629566385082.Spec : Prop :=
  ∀ n, (P11491839629566385082.a n : ℤ) = A285759 (n + 1)

theorem P11491839629566385082.correct : P11491839629566385082.Spec := by
  intro n
  simp only [A285759, Nat.add_sub_cancel]

end A285759

/-! ## A285759.P18437955779812370051

`∑[A014577(Δ[A054121(n+3)])]`
-/

namespace A285759.P18437955779812370051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054121 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285759.P18437955779812370051

namespace A285759

/-- `∑[A014577(Δ[A054121(n+3)])]` -/
def P18437955779812370051.Spec : Prop :=
  ∀ n, P18437955779812370051.a n = A285759 (n + 1)

end A285759

/-! ## A285759.P8210811063365184581

`ceil(abs((A076681(n+1)%2-1-n)/2))`
-/

namespace A285759.P8210811063365184581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(Int.tmod (A076681 (n + 1)) 2 - 1 - (n : ℤ) : ℚ) / 2|⌉

end

end A285759.P8210811063365184581

namespace A285759

/-- `ceil(abs((A076681(n+1)%2-1-n)/2))` -/
def P8210811063365184581.Spec : Prop :=
  ∀ n, P8210811063365184581.a n = A285759 (n + 1)

end A285759

/-! ## A285759.P15531119777341962203

`A004526(A378399(3*(n+1))+n)`
-/

namespace A285759.P15531119777341962203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A378399 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A285759.P15531119777341962203

namespace A285759

/-- `A004526(A378399(3*(n+1))+n)` -/
def P15531119777341962203.Spec : Prop :=
  ∀ n, P15531119777341962203.a n = A285759 (n + 1)

end A285759

/-! ## A285759.P6820138369250997303

`A235492(A341333(n+1))`
-/

namespace A285759.P6820138369250997303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235492 (A341333 (n + 1)).toNat

end

end A285759.P6820138369250997303

namespace A285759

/-- `A235492(A341333(n+1))` -/
def P6820138369250997303.Spec : Prop :=
  ∀ n, P6820138369250997303.a n = A285759 (n + 1)

end A285759

/-!
# A285760: a(n) = a(n - 2 - a(n - 1)) + a(n - 2 - a(n - 4)), with a(1) = 1, a(2) = 1, a(3) = 2, a(4) = 2.

The programs for A285760, the canonical program `A285760.P1238194657939050193` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285760 has offset 1).

The definition of A285760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2-a(n-1))+a(n-2-a(n-4))` (program `A285760.P1238194657939050193`, by `A285760.P1238194657939050193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285760.P1238194657939050193

`a(n-2-a(n-1))+a(n-2-a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285760

/-- `a(n-2-a(n-1))+a(n-2-a(n-4))` -/
def P1238194657939050193.Spec : Prop :=
  ∀ n, (P1238194657939050193.a n : ℤ) = A285760 (n + 1)

theorem P1238194657939050193.correct : P1238194657939050193.Spec := by
  intro n
  simp only [A285760, Nat.add_sub_cancel]

end A285760

/-! ## A285760.P3747156708466850752

`A103221(A133137(3*n+1)-A103221(2*n))`
-/

namespace A285760.P3747156708466850752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A133137 (3 * n + 1) - A103221 (2 * n)).toNat

end

end A285760.P3747156708466850752

namespace A285760

/-- `A103221(A133137(3*n+1)-A103221(2*n))` -/
def P3747156708466850752.Spec : Prop :=
  ∀ n, P3747156708466850752.a n = A285760 (n + 1)

end A285760

/-! ## A285760.P12835712421948770091

`A276798(A374519(3*n+1)-n)`
-/

namespace A285760.P12835712421948770091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A374519 (3 * n + 1) - (n : ℤ)).toNat

end

end A285760.P12835712421948770091

namespace A285760

/-- `A276798(A374519(3*n+1)-n)` -/
def P12835712421948770091.Spec : Prop :=
  ∀ n, P12835712421948770091.a n = A285760 (n + 1)

end A285760

/-! ## A285760.P3060045519298017300

`A371626(lt[A138256(3*n+1), A080681(3*n+1)])`
-/

namespace A285760.P3060045519298017300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138256 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371626 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285760.P3060045519298017300

namespace A285760

/-- `A371626(lt[A138256(3*n+1), A080681(3*n+1)])` -/
def P3060045519298017300.Spec : Prop :=
  ∀ n, P3060045519298017300.a n = A285760 (n + 1)

end A285760

/-! ## A285760.P15647081129150724145

`∑[A289174(A351290(3*n+4)+A133900(n+1))]+1`
-/

namespace A285760.P15647081129150724145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289174 (A351290 (3 * n + 4) + A133900 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A285760.P15647081129150724145

namespace A285760

/-- `∑[A289174(A351290(3*n+4)+A133900(n+1))]+1` -/
def P15647081129150724145.Spec : Prop :=
  ∀ n, P15647081129150724145.a n = A285760 (n + 1)

end A285760

/-!
# A285761: A slow relative of Hofstadter's Q sequence.

The programs for A285761, there is no canonical definition to state claims against.
-/

/-! ## A285761.P16053279156695691373

`A285762(3*(n+1))/3`
-/

namespace A285761.P16053279156695691373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285762 (3 * (n + 1)) : ℚ) / 3

end

end A285761.P16053279156695691373

/-! ## A285761.P433463119655369983

`ceil(A285762(A016789(n))/3)`
-/

namespace A285761.P433463119655369983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285762 (A016789 n).toNat : ℚ) / 3⌉

end

end A285761.P433463119655369983

/-! ## A285761.P15833519006423187149

`A008611(A285762(3*(n+1))+1)`
-/

namespace A285761.P15833519006423187149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A285762 (3 * (n + 1)) + 1).toNat

end

end A285761.P15833519006423187149

/-! ## A285761.P5233440789505597425

`A002264(A285762(A008486(n+1)))`
-/

namespace A285761.P5233440789505597425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A285762 (A008486 (n + 1)).toNat).toNat

end

end A285761.P5233440789505597425

/-! ## A285761.P8435689676040190838

`abs(A285762(A008486(n+1))/A174971(n))`
-/

namespace A285761.P8435689676040190838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A285762 (A008486 (n + 1)).toNat : ℚ) / (A174971 n : ℚ)|

end

end A285761.P8435689676040190838

/-!
# A285762: A slow relative of Hofstadter's Q sequence.

The programs for A285762, there is no canonical definition to state claims against.
-/

/-! ## A285762.P2671646956814877621

`∑[A265333(∑[A035536(n)])]`
-/

namespace A285762.P2671646956814877621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035536 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265333 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285762.P2671646956814877621

/-! ## A285762.P11434992986150304510

`∑[A349906(A001519(floor(n/3)))]`
-/

namespace A285762.P11434992986150304510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (A001519 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285762.P11434992986150304510

/-! ## A285762.P11545011908664934717

`∑[A266591(A266635(∏[2-n²%3]-1))]`
-/

namespace A285762.P11545011908664934717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 (A266635 (∏ j ∈ Finset.range (n + 1), f2 j - 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285762.P11545011908664934717

/-! ## A285762.P4194175320446294927

`∑[A063974(A293066(floor(n/3)))]`
-/

namespace A285762.P4194175320446294927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063974 (A293066 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285762.P4194175320446294927

/-! ## A285762.P4135823177330249408

`∑[A173857(A002061(floor(n/3))²)]`
-/

namespace A285762.P4135823177330249408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173857 (A002061 ⌊(n : ℚ) / 3⌋.toNat ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285762.P4135823177330249408

/-!
# A285763: a(n) = a(a(n - 2)) + a(n - a(n - 2)), with a(1) = 1, a(2) = a(3) = a(4) = 2, a(5) = 3.

The programs for A285763, the canonical program `A285763.P10302594751270794581` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285763 has offset 1).

The definition of A285763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-2)-1)+a(n-a(n-2))` (program `A285763.P10302594751270794581`, by `A285763.P10302594751270794581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285763.P10302594751270794581

`a(a(n-2)-1)+a(n-a(n-2))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285763

/-- `a(a(n-2)-1)+a(n-a(n-2))` -/
def P10302594751270794581.Spec : Prop :=
  ∀ n, (P10302594751270794581.a n : ℤ) = A285763 (n + 1)

theorem P10302594751270794581.correct : P10302594751270794581.Spec := by
  intro n
  simp only [A285763, Nat.add_sub_cancel]

end A285763

/-! ## A285763.P14792322731524876916

`∑[A267111(∑[(n+1)%2])%2]`
-/

namespace A285763.P14792322731524876916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267111 (∑ j ∈ Finset.range (n + 1), f2 j)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285763.P14792322731524876916

namespace A285763

/-- `∑[A267111(∑[(n+1)%2])%2]` -/
def P14792322731524876916.Spec : Prop :=
  ∀ n, P14792322731524876916.a n = A285763 (n + 1)

end A285763

/-! ## A285763.P4065774410282166813

`∑[A010060(A276445(floor(n/2)+1))]`
-/

namespace A285763.P4065774410282166813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A276445 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285763.P4065774410282166813

namespace A285763

/-- `∑[A010060(A276445(floor(n/2)+1))]` -/
def P4065774410282166813.Spec : Prop :=
  ∀ n, P4065774410282166813.a n = A285763 (n + 1)

end A285763

/-! ## A285763.P1701311096748354532

`∑[A000035(A267111(A008619(n)))]`
-/

namespace A285763.P1701311096748354532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A267111 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285763.P1701311096748354532

namespace A285763

/-- `∑[A000035(A267111(A008619(n)))]` -/
def P1701311096748354532.Spec : Prop :=
  ∀ n, P1701311096748354532.a n = A285763 (n + 1)

end A285763

/-! ## A285763.P5549925559209904836

`A110654(a(n-1))+A004001(A008619(n))` with `a(0)=1, a(1)=2`
-/

namespace A285763.P5549925559209904836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A110654 (a (n - 1)).toNat + A004001 (A008619 n).toNat

end

end A285763.P5549925559209904836

namespace A285763

/-- `A110654(a(n-1))+A004001(A008619(n))` -/
def P5549925559209904836.Spec : Prop :=
  ∀ n, P5549925559209904836.a n = A285763 (n + 1)

end A285763

/-!
# A285764: A relative of the Hofstadter-Conway sequence A004001.

The programs for A285764, there is no canonical definition to state claims against.
-/

/-! ## A285764.P11197847397306078505

`∑[A267111(∑[1-n²%3])%2]`
-/

namespace A285764.P11197847397306078505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267111 (∑ j ∈ Finset.range (n + 1), f2 j).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285764.P11197847397306078505

/-! ## A285764.P10998152039916773939

`∑[A267111(A008620(n))%2]`
-/

namespace A285764.P10998152039916773939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267111 (A008620 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285764.P10998152039916773939

/-! ## A285764.P15650449856016045562

`∑[A010060(A276445(floor(n/3)+1))]`
-/

namespace A285764.P15650449856016045562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A276445 (⌊(n : ℚ) / 3⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285764.P15650449856016045562

/-! ## A285764.P5116684594211692437

`∑[A267111(∑[A008796(n)%2])%2]`
-/

namespace A285764.P5116684594211692437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008796 n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267111 (∑ j ∈ Finset.range (n + 1), f2 j).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285764.P5116684594211692437

/-! ## A285764.P13742355445804618291

`∑[A267111(∑[A027961(n+1)%2])%2]`
-/

namespace A285764.P13742355445804618291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027961 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267111 (∑ j ∈ Finset.range (n + 1), f2 j).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285764.P13742355445804618291

/-!
# A285766: Maximum spillway height for a zero or one bend minimal area lake in a number square.

The programs for A285766, the canonical program `A285766.P12349092431634229424` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285766 has offset 0).

The definition of A285766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285766.P1988326432625137222

`∑[a(n-1)+2]` with `a(0)=0, a(1)=0, a(2)=6, a(3)=4, a(4)=5`
-/

namespace A285766.P1988326432625137222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 6, 4, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285766.P1988326432625137222

namespace A285766

/-- `∑[a(n-1)+2]` -/
def P1988326432625137222.Spec : Prop :=
  ∀ n, (P1988326432625137222.a n : ℤ) = A285766 n

end A285766

/-! ## A285766.P12349092431634229424

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=10, a(4)=15, a(5)=22`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285766

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P12349092431634229424.Spec : Prop :=
  ∀ n, P12349092431634229424.a n = A285766 n

theorem P12349092431634229424.correct : P12349092431634229424.Spec := by
  intro n
  simp only [A285766]

end A285766

/-! ## A285766.P10737491511657325841

`floor(atan(n))*∑[A004281(n)]`
-/

namespace A285766.P10737491511657325841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285766.P10737491511657325841

namespace A285766

/-- `floor(atan(n))*∑[A004281(n)]` -/
def P10737491511657325841.Spec : Prop :=
  ∀ n, P10737491511657325841.a n = A285766 n

end A285766

/-! ## A285766.P11216285554402399891

`∑[A004281(n)]*A157928(n)`
-/

namespace A285766.P11216285554402399891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A157928 n

end

end A285766.P11216285554402399891

namespace A285766

/-- `∑[A004281(n)]*A157928(n)` -/
def P11216285554402399891.Spec : Prop :=
  ∀ n, P11216285554402399891.a n = A285766 n

end A285766

/-! ## A285766.P2275867830674968772

`(A098749(n)+5)%A005899(n)`
-/

namespace A285766.P2275867830674968772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098749 n + 5) (A005899 n)

end

end A285766.P2275867830674968772

namespace A285766

/-- `(A098749(n)+5)%A005899(n)` -/
def P2275867830674968772.Spec : Prop :=
  ∀ n, P2275867830674968772.a n = A285766 n

end A285766

/-! ## A285766.P11469903655329845171

`∑[A004276(n+1)]%∑[2^n]`
-/

namespace A285766.P11469903655329845171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A285766.P11469903655329845171

namespace A285766

/-- `∑[A004276(n+1)]%∑[2^n]` -/
def P11469903655329845171.Spec : Prop :=
  ∀ n, P11469903655329845171.a n = A285766 n

end A285766

/-! ## A285766.P15708946140942510278

`∑[A004281(n)]%∑[A000079(n)]`
-/

namespace A285766.P15708946140942510278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A285766.P15708946140942510278

namespace A285766

/-- `∑[A004281(n)]%∑[A000079(n)]` -/
def P15708946140942510278.Spec : Prop :=
  ∀ n, P15708946140942510278.a n = A285766 n

end A285766

/-! ## A285766.P6063720719857719877

`∑[A004281(n)]%A000244(n)`
-/

namespace A285766.P6063720719857719877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000244 n)

end

end A285766.P6063720719857719877

namespace A285766

/-- `∑[A004281(n)]%A000244(n)` -/
def P6063720719857719877.Spec : Prop :=
  ∀ n, P6063720719857719877.a n = A285766 n

end A285766

/-! ## A285766.P12458442275087792106

`∑[A004281(n)]*A001222(A071963(n))`
-/

namespace A285766.P12458442275087792106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001222 (A071963 n).toNat

end

end A285766.P12458442275087792106

namespace A285766

/-- `∑[A004281(n)]*A001222(A071963(n))` -/
def P12458442275087792106.Spec : Prop :=
  ∀ n, P12458442275087792106.a n = A285766 n

end A285766

/-!
# A285768: Moebius transform of repunits (A002275).

The programs for A285768, the canonical program `A285768.P4629601074381380458` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285768 has offset 1).

The definition of A285768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285768.P6092354590723122846

`floor(A218127(n+1)/9)`
-/

namespace A285768.P6092354590723122846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A218127 (n + 1) : ℚ) / 9⌋

end

end A285768.P6092354590723122846

namespace A285768

/-- `floor(A218127(n+1)/9)` -/
def P6092354590723122846.Spec : Prop :=
  ∀ n, P6092354590723122846.a n = A285768 (n + 1)

end A285768

/-! ## A285768.P11634685668217324397

`(A218127(n+1)/9)^A226523(n+1)²`
-/

namespace A285768.P11634685668217324397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A218127 (n + 1) : ℚ) / 9) ^ (A226523 (n + 1) ^ 2 : ℤ)

end

end A285768.P11634685668217324397

namespace A285768

/-- `(A218127(n+1)/9)^A226523(n+1)²` -/
def P11634685668217324397.Spec : Prop :=
  ∀ n, P11634685668217324397.a n = (A285768 (n + 1) : ℚ)

end A285768

/-! ## A285768.P5874398875885992616

`A040001(2*n)^log2(A218127(n+1)/9)`
-/

namespace A285768.P5874398875885992616
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A040001 (2 * n) : ℝ) ^ (Real.logb 2 ((A218127 (n + 1) : ℚ) / 9 : ℝ))

end

end A285768.P5874398875885992616

namespace A285768

/-- `A040001(2*n)^log2(A218127(n+1)/9)` -/
def P5874398875885992616.Spec : Prop :=
  ∀ n, P5874398875885992616.a n = (A285768 (n + 1) : ℝ)

end A285768

/-! ## A285768.P4629601074381380458

`∑{d}[n+1, A008683(#)*A000042((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A285768

/-- `∑{d}[n+1, A008683(#)*A000042((n+1)/#)]` -/
def P4629601074381380458.Spec : Prop :=
  ∀ n, P4629601074381380458.a n = A285768 (n + 1)

theorem P4629601074381380458.correct : P4629601074381380458.Spec := by
  intro n
  simp only [A285768, Nat.add_sub_cancel]

end A285768

/-!
# A285769: (Product of distinct prime factors)^(Product of prime exponents).

The programs for A285769, the canonical program `A285769.P12128075102545262245` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285769 has offset 1).

The definition of A285769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285769.P12128075102545262245

`A007947(n+1)^A005361(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285769

/-- `A007947(n+1)^A005361(n+1)` -/
def P12128075102545262245.Spec : Prop :=
  ∀ n, P12128075102545262245.a n = (A285769 (n + 1) : ℚ)

end A285769

/-! ## A285769.P1911810917199399398

`∏{p}[n+1, #]^∏{e}[n+1, #]`
-/

namespace A285769.P1911810917199399398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A285769.P1911810917199399398

namespace A285769

/-- `∏{p}[n+1, #]^∏{e}[n+1, #]` -/
def P1911810917199399398.Spec : Prop :=
  ∀ n, (P1911810917199399398.a n : ℤ) = A285769 (n + 1)

end A285769

/-! ## A285769.P14055582443863022885

`∏{p}[n+1, #]^A000005((n+1)/∏{p}[n+1, #])`
-/

namespace A285769.P14055582443863022885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℤ)

end

end A285769.P14055582443863022885

namespace A285769

/-- `∏{p}[n+1, #]^A000005((n+1)/∏{p}[n+1, #])` -/
def P14055582443863022885.Spec : Prop :=
  ∀ n, P14055582443863022885.a n = (A285769 (n + 1) : ℚ)

end A285769

/-! ## A285769.P4578272888804409017

`A308360(n+1)/A007955(A003557(n+1))`
-/

namespace A285769.P4578272888804409017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308360 (n + 1) : ℚ) / (A007955 (A003557 (n + 1)).toNat : ℚ)

end

end A285769.P4578272888804409017

namespace A285769

/-- `A308360(n+1)/A007955(A003557(n+1))` -/
def P4578272888804409017.Spec : Prop :=
  ∀ n, P4578272888804409017.a n = (A285769 (n + 1) : ℚ)

end A285769

/-! ## A285769.P12644099745338062722

`A007947(n+1)^A000005(A003557(n+1))`
-/

namespace A285769.P12644099745338062722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A000005 (A003557 (n + 1)).toNat : ℤ)

end

end A285769.P12644099745338062722

namespace A285769

/-- `A007947(n+1)^A000005(A003557(n+1))` -/
def P12644099745338062722.Spec : Prop :=
  ∀ n, P12644099745338062722.a n = (A285769 (n + 1) : ℚ)

end A285769

/-! ## A285769.P6928628666785856322

`A007947(n+1)^A000005((n+1)/A007947(n+1))`
-/

namespace A285769.P6928628666785856322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat : ℤ)

end

end A285769.P6928628666785856322

namespace A285769

/-- `A007947(n+1)^A000005((n+1)/A007947(n+1))` -/
def P6928628666785856322.Spec : Prop :=
  ∀ n, P6928628666785856322.a n = (A285769 (n + 1) : ℚ)

end A285769

/-!
# A285770: Let q_1

The programs for A285770, there is no canonical definition to state claims against.
-/

/-! ## A285770.P17356487165163510656

`val(A143480(A051683(n+1)), 8)`
-/

namespace A285770.P17356487165163510656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A143480 (A051683 (n + 1)).toNat).toNat 8

end

end A285770.P17356487165163510656

/-! ## A285770.P14222064910848410826

`A001221(A175966(3*n+5))-A237048(n+4)`
-/

namespace A285770.P14222064910848410826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A175966 (3 * n + 5)).toNat - A237048 (n + 4)

end

end A285770.P14222064910848410826

/-! ## A285770.P12431109335262040096

`A016777(A066538(n+1))%A131818(n+1)`
-/

namespace A285770.P12431109335262040096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 (A066538 (n + 1)).toNat) (A131818 (n + 1))

end

end A285770.P12431109335262040096

/-! ## A285770.P7920320388465384960

`gcd(A010875(A007022(n+1)), A196228(n+1))`
-/

namespace A285770.P7920320388465384960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010875 (A007022 (n + 1)).toNat) (A196228 (n + 1))

end

end A285770.P7920320388465384960

/-! ## A285770.P7648310561411512865

`A333381(A237591(3*(n+1))%A260781(n+1))`
-/

namespace A285770.P7648310561411512865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (Int.tmod (A237591 (3 * (n + 1))) (A260781 (n + 1))).toNat

end

end A285770.P7648310561411512865

/-!
# A285771: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

The programs for A285771, there is no canonical definition to state claims against.
-/

/-! ## A285771.P17425520666121077411

`char[2*n]*A285434(n)`
-/

namespace A285771.P17425520666121077411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A285434 n

end

end A285771.P17425520666121077411

/-! ## A285771.P16144074992802474611

`char[2*n]*A288805(n)`
-/

namespace A285771.P16144074992802474611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A288805 n

end

end A285771.P16144074992802474611

/-! ## A285771.P1196783829350226085

`lcm(A056594(n), A288805(n))`
-/

namespace A285771.P1196783829350226085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A288805 n)

end

end A285771.P1196783829350226085

/-! ## A285771.P17089159461382009152

`and(A105812(n), A285434(n))`
-/

namespace A285771.P17089159461382009152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105812 n) (A285434 n)

end

end A285771.P17089159461382009152

/-! ## A285771.P12469178149099398583

`abs(A056594(n)*A285434(n))`
-/

namespace A285771.P12469178149099398583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056594 n * A285434 n|

end

end A285771.P12469178149099398583

/-! ## A285771.P13863052975796706547

`A285434(n)*A331218(A331218(n+1))`
-/

namespace A285771.P13863052975796706547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285434 n * A331218 (A331218 (n + 1)).toNat

end

end A285771.P13863052975796706547

/-! ## A285771.P10734362744349171855

`A288805(n)*A331218(A331218(n+1))`
-/

namespace A285771.P10734362744349171855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 n * A331218 (A331218 (n + 1)).toNat

end

end A285771.P10734362744349171855

/-! ## A285771.P18396771489525483628

`A288805(n)-A000035(n)*A288805(n)`
-/

namespace A285771.P18396771489525483628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 n - A000035 n * A288805 n

end

end A285771.P18396771489525483628

/-! ## A285771.P14959996591432452553

`A059841(n)*A285434(n)*A059841(n)`
-/

namespace A285771.P14959996591432452553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A285434 n * A059841 n

end

end A285771.P14959996591432452553

/-! ## A285771.P7936863115809086969

`A059841(n)*A288805(n)*A059841(n)`
-/

namespace A285771.P7936863115809086969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A288805 n * A059841 n

end

end A285771.P7936863115809086969

/-! ## A285771.P8429514974630948978

`(A288805(n)+A000035(n))*A000035(A008611(n))`
-/

namespace A285771.P8429514974630948978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A288805 n + A000035 n) * A000035 (A008611 n).toNat

end

end A285771.P8429514974630948978

/-! ## A285771.P11838541319550614919

`(A288805(n)+A000035(n))*A000035(A016777(n))`
-/

namespace A285771.P11838541319550614919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A288805 n + A000035 n) * A000035 (A016777 n).toNat

end

end A285771.P11838541319550614919

/-! ## A285771.P3846845946080587112

`lcm(A059841(n+1)-1, A285434(n+1))`
-/

namespace A285771.P3846845946080587112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059841 (n + 1) - 1) (A285434 (n + 1))

end

end A285771.P3846845946080587112

/-! ## A285771.P11247814095436951594

`A285434(n)-A285434(n)%A285434(n+1)`
-/

namespace A285771.P11247814095436951594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285434 n - Int.tmod (A285434 n) (A285434 (n + 1))

end

end A285771.P11247814095436951594

/-! ## A285771.P6010653174344571616

`floor(A285434(n)/A285473(n))`
-/

namespace A285771.P6010653174344571616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285434 n : ℚ) / (A285473 n : ℚ)⌋

end

end A285771.P6010653174344571616

/-!
# A285772: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

The programs for A285772, there is no canonical definition to state claims against.
-/

/-! ## A285772.P8183687862286765658

`A285435(n)-10*a(n-1)` with `a(0)=1`
-/

namespace A285772.P8183687862286765658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285435 n - 10 * a (n - 1)

end

end A285772.P8183687862286765658

/-! ## A285772.P3755760436433084188

`lcm(A004643(n), A285771(n))`
-/

namespace A285772.P3755760436433084188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004643 n) (A285771 n)

end

end A285772.P3755760436433084188

/-! ## A285772.P1199599444556918285

`lcm(A059841(n)*A285434(n), A286508(n))`
-/

namespace A285772.P1199599444556918285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059841 n * A285434 n) (A286508 n)

end

end A285772.P1199599444556918285

/-! ## A285772.P6669022135223676320

`A049347(A285440(2*n+1))*A285435(n)`
-/

namespace A285772.P6669022135223676320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A285440 (2 * n + 1)).toNat * A285435 n

end

end A285772.P6669022135223676320

/-! ## A285772.P2051098176016888968

`char[2*n]*A288806(n)`
-/

namespace A285772.P2051098176016888968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A288806 n

end

end A285772.P2051098176016888968

/-! ## A285772.P11365603123378305294

`and(A106507(n+1), A288806(n))`
-/

namespace A285772.P11365603123378305294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106507 (n + 1)) (A288806 n)

end

end A285772.P11365603123378305294

/-! ## A285772.P8358268475869065760

`and(A056594(A004275(n)), A288806(n))`
-/

namespace A285772.P8358268475869065760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056594 (A004275 n).toNat) (A288806 n)

end

end A285772.P8358268475869065760

/-! ## A285772.P17347251198988862052

`A056594(n)*A288806(n)*A056594(n)`
-/

namespace A285772.P17347251198988862052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A288806 n * A056594 n

end

end A285772.P17347251198988862052

/-! ## A285772.P18293942865498252440

`floor(A285435(n)/A285473(n))`
-/

namespace A285772.P18293942865498252440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285435 n : ℚ) / (A285473 n : ℚ)⌋

end

end A285772.P18293942865498252440

/-!
# A285773: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

The programs for A285773, the canonical program `A285773.P10275403914654428335` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285773 has offset 0).

The definition of A285773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285773.P18189884145579293744

`char[2*n]*A285436(n)`
-/

namespace A285773.P18189884145579293744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A285436 n

end

end A285773.P18189884145579293744

namespace A285773

/-- `char[2*n]*A285436(n)` -/
def P18189884145579293744.Spec : Prop :=
  ∀ n, P18189884145579293744.a n = A285773 n

end A285773

/-! ## A285773.P10275403914654428335

`lcm(A056594(n), A285436(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285773

/-- `lcm(A056594(n), A285436(n))` -/
def P10275403914654428335.Spec : Prop :=
  ∀ n, (P10275403914654428335.a n : ℤ) = A285773 n

theorem P10275403914654428335.correct : P10275403914654428335.Spec := by
  intro n
  simp only [A285773]

end A285773

/-! ## A285773.P12482394576984345159

`and(A105812(n), A285436(n))`
-/

namespace A285773.P12482394576984345159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105812 n) (A285436 n)

end

end A285773.P12482394576984345159

namespace A285773

/-- `and(A105812(n), A285436(n))` -/
def P12482394576984345159.Spec : Prop :=
  ∀ n, P12482394576984345159.a n = A285773 n

end A285773

/-! ## A285773.P4211990328697308521

`A059841(n)*A285436(n)*A059841(n)`
-/

namespace A285773.P4211990328697308521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A285436 n * A059841 n

end

end A285773.P4211990328697308521

namespace A285773

/-- `A059841(n)*A285436(n)*A059841(n)` -/
def P4211990328697308521.Spec : Prop :=
  ∀ n, P4211990328697308521.a n = A285773 n

end A285773

/-! ## A285773.P9828120089333962666

`char[2*n]*A288807(n)`
-/

namespace A285773.P9828120089333962666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A288807 n

end

end A285773.P9828120089333962666

namespace A285773

/-- `char[2*n]*A288807(n)` -/
def P9828120089333962666.Spec : Prop :=
  ∀ n, P9828120089333962666.a n = A285773 n

end A285773

/-! ## A285773.P7234989226049726294

`lcm(A117188(n), A288807(n))`
-/

namespace A285773.P7234989226049726294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117188 n) (A288807 n)

end

end A285773.P7234989226049726294

namespace A285773

/-- `lcm(A117188(n), A288807(n))` -/
def P7234989226049726294.Spec : Prop :=
  ∀ n, (P7234989226049726294.a n : ℤ) = A285773 n

end A285773

/-! ## A285773.P8122444062878799425

`and(A285436(n+1), A285436(n))`
-/

namespace A285773.P8122444062878799425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285436 (n + 1)) (A285436 n)

end

end A285773.P8122444062878799425

namespace A285773

/-- `and(A285436(n+1), A285436(n))` -/
def P8122444062878799425.Spec : Prop :=
  ∀ n, P8122444062878799425.a n = A285773 n

end A285773

/-! ## A285773.P6963525047907019016

`A059841(n)*A288807(n)*A059841(n)`
-/

namespace A285773.P6963525047907019016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A288807 n * A059841 n

end

end A285773.P6963525047907019016

namespace A285773

/-- `A059841(n)*A288807(n)*A059841(n)` -/
def P6963525047907019016.Spec : Prop :=
  ∀ n, P6963525047907019016.a n = A285773 n

end A285773

/-! ## A285773.P14479140536428098894

`and(A077896(n), A285436(n))`
-/

namespace A285773.P14479140536428098894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077896 n) (A285436 n)

end

end A285773.P14479140536428098894

namespace A285773

/-- `and(A077896(n), A285436(n))` -/
def P14479140536428098894.Spec : Prop :=
  ∀ n, P14479140536428098894.a n = A285773 n

end A285773

/-! ## A285773.P8857527511471046064

`and(A077896(n), A288807(n))`
-/

namespace A285773.P8857527511471046064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077896 n) (A288807 n)

end

end A285773.P8857527511471046064

namespace A285773

/-- `and(A077896(n), A288807(n))` -/
def P8857527511471046064.Spec : Prop :=
  ∀ n, P8857527511471046064.a n = A285773 n

end A285773

/-! ## A285773.P3696946158936776822

`and(A097110(n), A285436(n))`
-/

namespace A285773.P3696946158936776822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097110 n) (A285436 n)

end

end A285773.P3696946158936776822

namespace A285773

/-- `and(A097110(n), A285436(n))` -/
def P3696946158936776822.Spec : Prop :=
  ∀ n, P3696946158936776822.a n = A285773 n

end A285773

/-! ## A285773.P12029275304306662796

`and(A097110(n), A288807(n))`
-/

namespace A285773.P12029275304306662796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097110 n) (A288807 n)

end

end A285773.P12029275304306662796

namespace A285773

/-- `and(A097110(n), A288807(n))` -/
def P12029275304306662796.Spec : Prop :=
  ∀ n, P12029275304306662796.a n = A285773 n

end A285773

/-! ## A285773.P6477790486624347890

`and(A112447(n), A285479(n))`
-/

namespace A285773.P6477790486624347890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A285479 n)

end

end A285773.P6477790486624347890

namespace A285773

/-- `and(A112447(n), A285479(n))` -/
def P6477790486624347890.Spec : Prop :=
  ∀ n, P6477790486624347890.a n = A285773 n

end A285773

/-! ## A285773.P3735858207872364676

`and(A285436(n), A285479(n))`
-/

namespace A285773.P3735858207872364676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285436 n) (A285479 n)

end

end A285773.P3735858207872364676

namespace A285773

/-- `and(A285436(n), A285479(n))` -/
def P3735858207872364676.Spec : Prop :=
  ∀ n, P3735858207872364676.a n = A285773 n

end A285773

/-! ## A285773.P2744385629495856912

`and(A285479(n), A287744(n))`
-/

namespace A285773.P2744385629495856912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285479 n) (A287744 n)

end

end A285773.P2744385629495856912

namespace A285773

/-- `and(A285479(n), A287744(n))` -/
def P2744385629495856912.Spec : Prop :=
  ∀ n, P2744385629495856912.a n = A285773 n

end A285773

/-! ## A285773.P18123460525209752286

`and(A285479(n), A288807(n))`
-/

namespace A285773.P18123460525209752286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285479 n) (A288807 n)

end

end A285773.P18123460525209752286

namespace A285773

/-- `and(A285479(n), A288807(n))` -/
def P18123460525209752286.Spec : Prop :=
  ∀ n, P18123460525209752286.a n = A285773 n

end A285773

/-! ## A285773.P6257276354006464650

`and(A287744(n), A288807(n+1))`
-/

namespace A285773.P6257276354006464650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287744 n) (A288807 (n + 1))

end

end A285773.P6257276354006464650

namespace A285773

/-- `and(A287744(n), A288807(n+1))` -/
def P6257276354006464650.Spec : Prop :=
  ∀ n, P6257276354006464650.a n = A285773 n

end A285773

/-! ## A285773.P1234704920936583634

`and(A278755(n), A285436(n))`
-/

namespace A285773.P1234704920936583634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278755 n) (A285436 n)

end

end A285773.P1234704920936583634

namespace A285773

/-- `and(A278755(n), A285436(n))` -/
def P1234704920936583634.Spec : Prop :=
  ∀ n, P1234704920936583634.a n = A285773 n

end A285773

/-! ## A285773.P13124943756462799581

`and(A279879(n), A285436(n))`
-/

namespace A285773.P13124943756462799581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279879 n) (A285436 n)

end

end A285773.P13124943756462799581

namespace A285773

/-- `and(A279879(n), A285436(n))` -/
def P13124943756462799581.Spec : Prop :=
  ∀ n, P13124943756462799581.a n = A285773 n

end A285773

/-! ## A285773.P16458814501437414995

`and(A278755(n), A288807(n))`
-/

namespace A285773.P16458814501437414995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278755 n) (A288807 n)

end

end A285773.P16458814501437414995

namespace A285773

/-- `and(A278755(n), A288807(n))` -/
def P16458814501437414995.Spec : Prop :=
  ∀ n, P16458814501437414995.a n = A285773 n

end A285773

/-!
# A285774: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

The programs for A285774, the canonical program `A285774.P2339232712092425148` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285774 has offset 0).

The definition of A285774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 394 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285774.P2339232712092425148

`A077957(n)*A133179(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A285774

/-- `A077957(n)*A133179(n)` -/
def P2339232712092425148.Spec : Prop :=
  ∀ n, P2339232712092425148.a n = A285774 n

theorem P2339232712092425148.correct : P2339232712092425148.Spec := by
  intro n
  simp only [A285774]

end A285774

/-! ## A285774.P12035469734780907530

`lcm(A016116(n), A285773(n))`
-/

namespace A285774.P12035469734780907530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016116 n) (A285773 n)

end

end A285774.P12035469734780907530

namespace A285774

/-- `lcm(A016116(n), A285773(n))` -/
def P12035469734780907530.Spec : Prop :=
  ∀ n, (P12035469734780907530.a n : ℤ) = A285774 n

end A285774

/-! ## A285774.P6669871904735745105

`lcm(A077966(n), A285436(n))`
-/

namespace A285774.P6669871904735745105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077966 n) (A285436 n)

end

end A285774.P6669871904735745105

namespace A285774

/-- `lcm(A077966(n), A285436(n))` -/
def P6669871904735745105.Spec : Prop :=
  ∀ n, (P6669871904735745105.a n : ℤ) = A285774 n

end A285774

/-! ## A285774.P3953244983936489921

`Δ[Δ[A027383(n)]]*A133179(n)`
-/

namespace A285774.P3953244983936489921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A133179 n

end

end A285774.P3953244983936489921

namespace A285774

/-- `Δ[Δ[A027383(n)]]*A133179(n)` -/
def P3953244983936489921.Spec : Prop :=
  ∀ n, P3953244983936489921.a n = A285774 n

end A285774

/-! ## A285774.P13597172812290937199

`(2-A000034(n))*A288808(A052928(n))`
-/

namespace A285774.P13597172812290937199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000034 n) * A288808 (A052928 n).toNat

end

end A285774.P13597172812290937199

namespace A285774

/-- `(2-A000034(n))*A288808(A052928(n))` -/
def P13597172812290937199.Spec : Prop :=
  ∀ n, P13597172812290937199.a n = A285774 n

end A285774

/-! ## A285774.P5869953168344368110

`A059841(n)*A285437(n*A059841(n))`
-/

namespace A285774.P5869953168344368110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A285437 ((n : ℤ) * A059841 n).toNat

end

end A285774.P5869953168344368110

namespace A285774

/-- `A059841(n)*A285437(n*A059841(n))` -/
def P5869953168344368110.Spec : Prop :=
  ∀ n, P5869953168344368110.a n = A285774 n

end A285774

/-! ## A285774.P17121655252833214322

`A059841(n)*A288808(n*A059841(n))`
-/

namespace A285774.P17121655252833214322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A288808 ((n : ℤ) * A059841 n).toNat

end

end A285774.P17121655252833214322

namespace A285774

/-- `A059841(n)*A288808(n*A059841(n))` -/
def P17121655252833214322.Spec : Prop :=
  ∀ n, P17121655252833214322.a n = A285774 n

end A285774

/-! ## A285774.P3307202128228026085

`A285437(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A285774.P3307202128228026085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285437 n - 2 * a (n - 1)

end

end A285774.P3307202128228026085

namespace A285774

/-- `A285437(n)-2*a(n-1)` -/
def P3307202128228026085.Spec : Prop :=
  ∀ n, P3307202128228026085.a n = A285774 n

end A285774

/-! ## A285774.P2103599220046373539

`A059841(n)*A285437(n)`
-/

namespace A285774.P2103599220046373539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A285437 n

end

end A285774.P2103599220046373539

namespace A285774

/-- `A059841(n)*A285437(n)` -/
def P2103599220046373539.Spec : Prop :=
  ∀ n, P2103599220046373539.a n = A285774 n

end A285774

/-! ## A285774.P7196015161390176350

`A059841(n)*A288808(n)`
-/

namespace A285774.P7196015161390176350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A288808 n

end

end A285774.P7196015161390176350

namespace A285774

/-- `A059841(n)*A288808(n)` -/
def P7196015161390176350.Spec : Prop :=
  ∀ n, P7196015161390176350.a n = A285774 n

end A285774

/-! ## A285774.P15564612237834237316

`lcm(A056594(n), A285437(n))`
-/

namespace A285774.P15564612237834237316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A285437 n)

end

end A285774.P15564612237834237316

namespace A285774

/-- `lcm(A056594(n), A285437(n))` -/
def P15564612237834237316.Spec : Prop :=
  ∀ n, (P15564612237834237316.a n : ℤ) = A285774 n

end A285774

/-! ## A285774.P8827834506679859919

`lcm(A117188(n), A288808(n))`
-/

namespace A285774.P8827834506679859919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117188 n) (A288808 n)

end

end A285774.P8827834506679859919

namespace A285774

/-- `lcm(A117188(n), A288808(n))` -/
def P8827834506679859919.Spec : Prop :=
  ∀ n, (P8827834506679859919.a n : ℤ) = A285774 n

end A285774

/-! ## A285774.P18302491720820051480

`and(A000025(n), A285437(n))`
-/

namespace A285774.P18302491720820051480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000025 n) (A285437 n)

end

end A285774.P18302491720820051480

namespace A285774

/-- `and(A000025(n), A285437(n))` -/
def P18302491720820051480.Spec : Prop :=
  ∀ n, P18302491720820051480.a n = A285774 n

end A285774

/-! ## A285774.P9331959842330064312

`and(A000025(n), A288808(n))`
-/

namespace A285774.P9331959842330064312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000025 n) (A288808 n)

end

end A285774.P9331959842330064312

namespace A285774

/-- `and(A000025(n), A288808(n))` -/
def P9331959842330064312.Spec : Prop :=
  ∀ n, P9331959842330064312.a n = A285774 n

end A285774

/-! ## A285774.P1979989512059067767

`and(A105812(n), A285437(n))`
-/

namespace A285774.P1979989512059067767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105812 n) (A285437 n)

end

end A285774.P1979989512059067767

namespace A285774

/-- `and(A105812(n), A285437(n))` -/
def P1979989512059067767.Spec : Prop :=
  ∀ n, P1979989512059067767.a n = A285774 n

end A285774

/-! ## A285774.P8674005797425886900

`and(A105812(n), A288808(n))`
-/

namespace A285774.P8674005797425886900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105812 n) (A288808 n)

end

end A285774.P8674005797425886900

namespace A285774

/-- `and(A105812(n), A288808(n))` -/
def P8674005797425886900.Spec : Prop :=
  ∀ n, P8674005797425886900.a n = A285774 n

end A285774

/-! ## A285774.P7894469751512600112

`and(A165326(n), A285437(n))`
-/

namespace A285774.P7894469751512600112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165326 n) (A285437 n)

end

end A285774.P7894469751512600112

namespace A285774

/-- `and(A165326(n), A285437(n))` -/
def P7894469751512600112.Spec : Prop :=
  ∀ n, P7894469751512600112.a n = A285774 n

end A285774

/-! ## A285774.P11028956473914763614

`and(A165326(n), A288808(n))`
-/

namespace A285774.P11028956473914763614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165326 n) (A288808 n)

end

end A285774.P11028956473914763614

namespace A285774

/-- `and(A165326(n), A288808(n))` -/
def P11028956473914763614.Spec : Prop :=
  ∀ n, P11028956473914763614.a n = A285774 n

end A285774

/-! ## A285774.P15198091503783811173

`and(A186422(n), A285437(n))`
-/

namespace A285774.P15198091503783811173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186422 n) (A285437 n)

end

end A285774.P15198091503783811173

namespace A285774

/-- `and(A186422(n), A285437(n))` -/
def P15198091503783811173.Spec : Prop :=
  ∀ n, P15198091503783811173.a n = A285774 n

end A285774

/-! ## A285774.P9235923127029581001

`and(A186422(n), A288808(n))`
-/

namespace A285774.P9235923127029581001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186422 n) (A288808 n)

end

end A285774.P9235923127029581001

namespace A285774

/-- `and(A186422(n), A288808(n))` -/
def P9235923127029581001.Spec : Prop :=
  ∀ n, P9235923127029581001.a n = A285774 n

end A285774

/-!
# A285775: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

The programs for A285775, the canonical program `A285775.P6581137490788025272` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285775 has offset 0).

The definition of A285775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285775.P2396461779462040778

`xor(A130543(n), A280410(n))`
-/

namespace A285775.P2396461779462040778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130543 n) (A280410 n)

end

end A285775.P2396461779462040778

namespace A285775

/-- `xor(A130543(n), A280410(n))` -/
def P2396461779462040778.Spec : Prop :=
  ∀ n, P2396461779462040778.a n = A285775 n

end A285775

/-! ## A285775.P11498296826884545842

`xor(val(A286866(n), 3), A280410(n))`
-/

namespace A285775.P11498296826884545842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.valuation (A286866 n).toNat 3 : ℤ) (A280410 n)

end

end A285775.P11498296826884545842

namespace A285775

/-- `xor(val(A286866(n), 3), A280410(n))` -/
def P11498296826884545842.Spec : Prop :=
  ∀ n, P11498296826884545842.a n = A285775 n

end A285775

/-! ## A285775.P15955551345685406223

`xor(char[A077664(n+1)+2], A280410(n))`
-/

namespace A285775.P15955551345685406223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (n + 1) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A280410 n)

end

end A285775.P15955551345685406223

namespace A285775

/-- `xor(char[A077664(n+1)+2], A280410(n))` -/
def P15955551345685406223.Spec : Prop :=
  ∀ n, P15955551345685406223.a n = A285775 n

end A285775

/-! ## A285775.P6581137490788025272

`xor(A063524(A004525(n)), A277560(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A285775

/-- `xor(A063524(A004525(n)), A277560(n))` -/
def P6581137490788025272.Spec : Prop :=
  ∀ n, P6581137490788025272.a n = A285775 n

theorem P6581137490788025272.correct : P6581137490788025272.Spec := by
  intro n
  simp only [A285775]

end A285775

/-! ## A285775.P12963270054120400838

`xor(A063524(A004526(n)), A277926(n))`
-/

namespace A285775.P12963270054120400838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 (A004526 n).toNat) (A277926 n)

end

end A285775.P12963270054120400838

namespace A285775

/-- `xor(A063524(A004526(n)), A277926(n))` -/
def P12963270054120400838.Spec : Prop :=
  ∀ n, P12963270054120400838.a n = A285775 n

end A285775

/-!
# A285776: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

The programs for A285776, there is no canonical definition to state claims against.
-/

/-! ## A285776.P395301727682474307

`or(A285648(A327649(n+1)), A285648(n))`
-/

namespace A285776.P395301727682474307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285648 (A327649 (n + 1)).toNat) (A285648 n)

end

end A285776.P395301727682474307

/-! ## A285776.P1997868998032931180

`A007088(A285778(n))`
-/

namespace A285776.P1997868998032931180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285778 n).toNat

end

end A285776.P1997868998032931180

/-! ## A285776.P3422464729761840961

`A007088(and(A267271(n), A290415(n)))`
-/

namespace A285776.P3422464729761840961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A267271 n) (A290415 n)).toNat

end

end A285776.P3422464729761840961

/-! ## A285776.P7795882687568564007

`A007088(and(A267271(n), A290683(n)))`
-/

namespace A285776.P7795882687568564007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A267271 n) (A290683 n)).toNat

end

end A285776.P7795882687568564007

/-! ## A285776.P2084455332093659180

`A007088(and(A285823(n), A290415(n)))`
-/

namespace A285776.P2084455332093659180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A285823 n) (A290415 n)).toNat

end

end A285776.P2084455332093659180

/-!
# A285777: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

The programs for A285777, the canonical program `A285777.P16999496786298473469` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285777 has offset 0).

The definition of A285777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285777.P17139529614421549116

`xor(A130543(n), A280412(n))`
-/

namespace A285777.P17139529614421549116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130543 n) (A280412 n)

end

end A285777.P17139529614421549116

namespace A285777

/-- `xor(A130543(n), A280412(n))` -/
def P17139529614421549116.Spec : Prop :=
  ∀ n, P17139529614421549116.a n = A285777 n

end A285777

/-! ## A285777.P13736027246009529057

`and(A164117(n), A290414(n))`
-/

namespace A285777.P13736027246009529057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164117 n) (A290414 n)

end

end A285777.P13736027246009529057

namespace A285777

/-- `and(A164117(n), A290414(n))` -/
def P13736027246009529057.Spec : Prop :=
  ∀ n, P13736027246009529057.a n = A285777 n

end A285777

/-! ## A285777.P1619835262689834420

`and(A285822(n), A290414(n))`
-/

namespace A285777.P1619835262689834420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285822 n) (A290414 n)

end

end A285777.P1619835262689834420

namespace A285777

/-- `and(A285822(n), A290414(n))` -/
def P1619835262689834420.Spec : Prop :=
  ∀ n, P1619835262689834420.a n = A285777 n

end A285777

/-! ## A285777.P3746005069414722532

`and(A285834(n), A290414(n))`
-/

namespace A285777.P3746005069414722532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285834 n) (A290414 n)

end

end A285777.P3746005069414722532

namespace A285777

/-- `and(A285834(n), A290414(n))` -/
def P3746005069414722532.Spec : Prop :=
  ∀ n, P3746005069414722532.a n = A285777 n

end A285777

/-! ## A285777.P10705827628919465894

`and(A285843(n), A290414(n))`
-/

namespace A285777.P10705827628919465894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285843 n) (A290414 n)

end

end A285777.P10705827628919465894

namespace A285777

/-- `and(A285843(n), A290414(n))` -/
def P10705827628919465894.Spec : Prop :=
  ∀ n, P10705827628919465894.a n = A285777 n

end A285777

/-! ## A285777.P4829753596641589857

`and(A285947(n), A290414(n))`
-/

namespace A285777.P4829753596641589857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285947 n) (A290414 n)

end

end A285777.P4829753596641589857

namespace A285777

/-- `and(A285947(n), A290414(n))` -/
def P4829753596641589857.Spec : Prop :=
  ∀ n, P4829753596641589857.a n = A285777 n

end A285777

/-! ## A285777.P15236865747371898025

`and(A286080(n), A290414(n))`
-/

namespace A285777.P15236865747371898025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286080 n) (A290414 n)

end

end A285777.P15236865747371898025

namespace A285777

/-- `and(A286080(n), A290414(n))` -/
def P15236865747371898025.Spec : Prop :=
  ∀ n, P15236865747371898025.a n = A285777 n

end A285777

/-! ## A285777.P16637805479588868856

`and(A286114(n), A290414(n))`
-/

namespace A285777.P16637805479588868856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286114 n) (A290414 n)

end

end A285777.P16637805479588868856

namespace A285777

/-- `and(A286114(n), A290414(n))` -/
def P16637805479588868856.Spec : Prop :=
  ∀ n, P16637805479588868856.a n = A285777 n

end A285777

/-! ## A285777.P809376162789660715

`and(A286704(n), A290414(n))`
-/

namespace A285777.P809376162789660715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286704 n) (A290414 n)

end

end A285777.P809376162789660715

namespace A285777

/-- `and(A286704(n), A290414(n))` -/
def P809376162789660715.Spec : Prop :=
  ∀ n, P809376162789660715.a n = A285777 n

end A285777

/-! ## A285777.P6415627391733858674

`and(A286768(n), A290414(n))`
-/

namespace A285777.P6415627391733858674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286768 n) (A290414 n)

end

end A285777.P6415627391733858674

namespace A285777

/-- `and(A286768(n), A290414(n))` -/
def P6415627391733858674.Spec : Prop :=
  ∀ n, P6415627391733858674.a n = A285777 n

end A285777

/-! ## A285777.P4833357295136009324

`and(A290414(n), A323191(n))`
-/

namespace A285777.P4833357295136009324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290414 n) (A323191 n)

end

end A285777.P4833357295136009324

namespace A285777

/-- `and(A290414(n), A323191(n))` -/
def P4833357295136009324.Spec : Prop :=
  ∀ n, P4833357295136009324.a n = A285777 n

end A285777

/-! ## A285777.P16999496786298473469

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=14, a(4)=0, a(5)=63, a(6)=0, a(7)=255`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285777

/-- `5*a(n-2)-4*a(n-4)` -/
def P16999496786298473469.Spec : Prop :=
  ∀ n, P16999496786298473469.a n = A285777 n

theorem P16999496786298473469.correct : P16999496786298473469.Spec := by
  intro n
  simp only [A285777]

end A285777

/-!
# A285778: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

The programs for A285778, the canonical program `A285778.P1337724982519679488` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285778 has offset 0).

The definition of A285778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285778.P5530482711886931769

`and(A285835(n), A290415(n))`
-/

namespace A285778.P5530482711886931769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285835 n) (A290415 n)

end

end A285778.P5530482711886931769

namespace A285778

/-- `and(A285835(n), A290415(n))` -/
def P5530482711886931769.Spec : Prop :=
  ∀ n, P5530482711886931769.a n = A285778 n

end A285778

/-! ## A285778.P15659477886942825773

`and(A285844(n), A290415(n))`
-/

namespace A285778.P15659477886942825773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285844 n) (A290415 n)

end

end A285778.P15659477886942825773

namespace A285778

/-- `and(A285844(n), A290415(n))` -/
def P15659477886942825773.Spec : Prop :=
  ∀ n, P15659477886942825773.a n = A285778 n

end A285778

/-! ## A285778.P2127248055004547399

`and(A285948(n), A290415(n))`
-/

namespace A285778.P2127248055004547399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285948 n) (A290415 n)

end

end A285778.P2127248055004547399

namespace A285778

/-- `and(A285948(n), A290415(n))` -/
def P2127248055004547399.Spec : Prop :=
  ∀ n, P2127248055004547399.a n = A285778 n

end A285778

/-! ## A285778.P15116366455764271113

`and(A286081(n), A290415(n))`
-/

namespace A285778.P15116366455764271113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286081 n) (A290415 n)

end

end A285778.P15116366455764271113

namespace A285778

/-- `and(A286081(n), A290415(n))` -/
def P15116366455764271113.Spec : Prop :=
  ∀ n, P15116366455764271113.a n = A285778 n

end A285778

/-! ## A285778.P11669269505248011188

`and(A286705(n), A290415(n))`
-/

namespace A285778.P11669269505248011188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286705 n) (A290415 n)

end

end A285778.P11669269505248011188

namespace A285778

/-- `and(A286705(n), A290415(n))` -/
def P11669269505248011188.Spec : Prop :=
  ∀ n, P11669269505248011188.a n = A285778 n

end A285778

/-! ## A285778.P16176474919082156970

`and(A286769(n), A290415(n))`
-/

namespace A285778.P16176474919082156970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286769 n) (A290415 n)

end

end A285778.P16176474919082156970

namespace A285778

/-- `and(A286769(n), A290415(n))` -/
def P16176474919082156970.Spec : Prop :=
  ∀ n, P16176474919082156970.a n = A285778 n

end A285778

/-! ## A285778.P6632725679132725202

`or(A275692(A006519(n+1)), A285650(n))`
-/

namespace A285778.P6632725679132725202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275692 (A006519 (n + 1)).toNat) (A285650 n)

end

end A285778.P6632725679132725202

namespace A285778

/-- `or(A275692(A006519(n+1)), A285650(n))` -/
def P6632725679132725202.Spec : Prop :=
  ∀ n, P6632725679132725202.a n = A285778 n

end A285778

/-! ## A285778.P5151423903957442513

`or(A285650(A285699(n+1)), A285650(n))`
-/

namespace A285778.P5151423903957442513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285650 (A285699 (n + 1)).toNat) (A285650 n)

end

end A285778.P5151423903957442513

namespace A285778

/-- `or(A285650(A285699(n+1)), A285650(n))` -/
def P5151423903957442513.Spec : Prop :=
  ∀ n, P5151423903957442513.a n = A285778 n

end A285778

/-! ## A285778.P11392589249378031076

`A278759(n)+A285649(n)-A277929(n)`
-/

namespace A285778.P11392589249378031076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278759 n + (A285649 n - A277929 n)

end

end A285778.P11392589249378031076

namespace A285778

/-- `A278759(n)+A285649(n)-A277929(n)` -/
def P11392589249378031076.Spec : Prop :=
  ∀ n, P11392589249378031076.a n = A285778 n

end A285778

/-! ## A285778.P6199856212178077651

`and(A285823(n), A290415(n))`
-/

namespace A285778.P6199856212178077651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285823 n) (A290415 n)

end

end A285778.P6199856212178077651

namespace A285778

/-- `and(A285823(n), A290415(n))` -/
def P6199856212178077651.Spec : Prop :=
  ∀ n, P6199856212178077651.a n = A285778 n

end A285778

/-! ## A285778.P519484408364650240

`and(A286115(n), A290415(n))`
-/

namespace A285778.P519484408364650240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286115 n) (A290415 n)

end

end A285778.P519484408364650240

namespace A285778

/-- `and(A286115(n), A290415(n))` -/
def P519484408364650240.Spec : Prop :=
  ∀ n, P519484408364650240.a n = A285778 n

end A285778

/-! ## A285778.P1337724982519679488

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=7, a(4)=0, a(5)=63, a(6)=0, a(7)=255`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285778

/-- `5*a(n-2)-4*a(n-4)` -/
def P1337724982519679488.Spec : Prop :=
  ∀ n, P1337724982519679488.a n = A285778 n

theorem P1337724982519679488.correct : P1337724982519679488.Spec := by
  intro n
  simp only [A285778]

end A285778

/-! ## A285778.P2431083108276434134

`and(A267271(n), A290415(n))`
-/

namespace A285778.P2431083108276434134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267271 n) (A290415 n)

end

end A285778.P2431083108276434134

namespace A285778

/-- `and(A267271(n), A290415(n))` -/
def P2431083108276434134.Spec : Prop :=
  ∀ n, P2431083108276434134.a n = A285778 n

end A285778

/-! ## A285778.P10055901974070334359

`and(A267271(n), A290683(n))`
-/

namespace A285778.P10055901974070334359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267271 n) (A290683 n)

end

end A285778.P10055901974070334359

namespace A285778

/-- `and(A267271(n), A290683(n))` -/
def P10055901974070334359.Spec : Prop :=
  ∀ n, P10055901974070334359.a n = A285778 n

end A285778

/-!
# A285779: Parity index: number of integers z with 1 <= z <= n for which A010060(z) = A010060(n), negated if A010060(n) = 1.

The programs for A285779, the canonical program `A285779.P3124785709148883009` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285779 has offset 0).

The definition of A285779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285779.P3124785709148883009

`floor(xor(n, A106400(n))/2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A285779

/-- `floor(xor(n, A106400(n))/2)` -/
def P3124785709148883009.Spec : Prop :=
  ∀ n, P3124785709148883009.a n = A285779 n

theorem P3124785709148883009.correct : P3124785709148883009.Spec := by
  intro n
  simp only [A285779]

end A285779

/-! ## A285779.P16498820234429151305

`xor(-A010060(n), floor(n/2))`
-/

namespace A285779.P16498820234429151305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A010060 n) ⌊(n : ℚ) / 2⌋

end

end A285779.P16498820234429151305

namespace A285779

/-- `xor(-A010060(n), floor(n/2))` -/
def P16498820234429151305.Spec : Prop :=
  ∀ n, P16498820234429151305.a n = A285779 n

end A285779

/-! ## A285779.P12277755796002738128

`xor(-A316828(2*n), floor(n/2))`
-/

namespace A285779.P12277755796002738128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A316828 (2 * n)) ⌊(n : ℚ) / 2⌋

end

end A285779.P12277755796002738128

namespace A285779

/-- `xor(-A316828(2*n), floor(n/2))` -/
def P12277755796002738128.Spec : Prop :=
  ∀ n, P12277755796002738128.a n = A285779 n

end A285779

/-! ## A285779.P14080908672903758397

`xor(-(comp[xor(n, 2*n+1)]%2), A004526(n))`
-/

namespace A285779.P14080908672903758397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)) (A004526 n)

end

end A285779.P14080908672903758397

namespace A285779

/-- `xor(-(comp[xor(n, 2*n+1)]%2), A004526(n))` -/
def P14080908672903758397.Spec : Prop :=
  ∀ n, P14080908672903758397.a n = A285779 n

end A285779

/-! ## A285779.P4085159751608785522

`A130472(A160017(n))`
-/

namespace A285779.P4085159751608785522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A160017 n).toNat

end

end A285779.P4085159751608785522

namespace A285779

/-- `A130472(A160017(n))` -/
def P4085159751608785522.Spec : Prop :=
  ∀ n, P4085159751608785522.a n = A285779 n

end A285779

/-! ## A285779.P224537864263135899

`A001057(A143579(n))-1`
-/

namespace A285779.P224537864263135899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A143579 n).toNat - 1

end

end A285779.P224537864263135899

namespace A285779

/-- `A001057(A143579(n))-1` -/
def P224537864263135899.Spec : Prop :=
  ∀ n, P224537864263135899.a n = A285779 n

end A285779

/-! ## A285779.P6803419813803989739

`A102391(n)-A115384(n)`
-/

namespace A285779.P6803419813803989739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102391 n - A115384 n

end

end A285779.P6803419813803989739

namespace A285779

/-- `A102391(n)-A115384(n)` -/
def P6803419813803989739.Spec : Prop :=
  ∀ n, P6803419813803989739.a n = A285779 n

end A285779

/-! ## A285779.P12808412163437606435

`A245710(n)-A102392(n)`
-/

namespace A285779.P12808412163437606435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 n - A102392 n

end

end A285779.P12808412163437606435

namespace A285779

/-- `A245710(n)-A102392(n)` -/
def P12808412163437606435.Spec : Prop :=
  ∀ n, P12808412163437606435.a n = A285779 n

end A285779

/-! ## A285779.P14163015494698997892

`xor(A010059(n)-1, A004526(n))`
-/

namespace A285779.P14163015494698997892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010059 n - 1) (A004526 n)

end

end A285779.P14163015494698997892

namespace A285779

/-- `xor(A010059(n)-1, A004526(n))` -/
def P14163015494698997892.Spec : Prop :=
  ∀ n, P14163015494698997892.a n = A285779 n

end A285779

/-! ## A285779.P13559939156948995046

`n-(A115384(n)+A102392(n))`
-/

namespace A285779.P13559939156948995046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A115384 n + A102392 n)

end

end A285779.P13559939156948995046

namespace A285779

/-- `n-(A115384(n)+A102392(n))` -/
def P13559939156948995046.Spec : Prop :=
  ∀ n, P13559939156948995046.a n = A285779 n

end A285779

/-! ## A285779.P3642217129555874556

`n*A010059(n)-A115384(n)`
-/

namespace A285779.P3642217129555874556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010059 n - A115384 n

end

end A285779.P3642217129555874556

namespace A285779

/-- `n*A010059(n)-A115384(n)` -/
def P3642217129555874556.Spec : Prop :=
  ∀ n, P3642217129555874556.a n = A285779 n

end A285779

/-! ## A285779.P1168040546135498833

`A245710(n)-n*A010060(n)`
-/

namespace A285779.P1168040546135498833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 n - (n : ℤ) * A010060 n

end

end A285779.P1168040546135498833

namespace A285779

/-- `A245710(n)-n*A010060(n)` -/
def P1168040546135498833.Spec : Prop :=
  ∀ n, P1168040546135498833.a n = A285779 n

end A285779

/-! ## A285779.P1997188074047210999

`n-(A102392(n)+∑[A010060(n)])`
-/

namespace A285779.P1997188074047210999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A102392 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285779.P1997188074047210999

namespace A285779

/-- `n-(A102392(n)+∑[A010060(n)])` -/
def P1997188074047210999.Spec : Prop :=
  ∀ n, P1997188074047210999.a n = A285779 n

end A285779

/-! ## A285779.P1451439568351121779

`A048724(A246159(n))-A115384(n)`
-/

namespace A285779.P1451439568351121779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (A246159 n).toNat - A115384 n

end

end A285779.P1451439568351121779

namespace A285779

/-- `A048724(A246159(n))-A115384(n)` -/
def P1451439568351121779.Spec : Prop :=
  ∀ n, P1451439568351121779.a n = A285779 n

end A285779

/-! ## A285779.P17526184520496503686

`xor(A169967(n+1)%4-A000120(n)%2, A004526(n))`
-/

namespace A285779.P17526184520496503686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A169967 (n + 1)) 4 - Int.tmod (A000120 n) 2) (A004526 n)

end

end A285779.P17526184520496503686

namespace A285779

/-- `xor(A169967(n+1)%4-A000120(n)%2, A004526(n))` -/
def P17526184520496503686.Spec : Prop :=
  ∀ n, P17526184520496503686.a n = A285779 n

end A285779

/-! ## A285779.P7642535218128010076

`n%A159481(2*n)-A115384(n)`
-/

namespace A285779.P7642535218128010076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A159481 (2 * n)) - A115384 n

end

end A285779.P7642535218128010076

namespace A285779

/-- `n%A159481(2*n)-A115384(n)` -/
def P7642535218128010076.Spec : Prop :=
  ∀ n, P7642535218128010076.a n = A285779 n

end A285779

/-! ## A285779.P14236542008857360356

`A115384(2*n)%(n+1)-A115384(n)`
-/

namespace A285779.P14236542008857360356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115384 (2 * n)) (n + 1 : ℤ) - A115384 n

end

end A285779.P14236542008857360356

namespace A285779

/-- `A115384(2*n)%(n+1)-A115384(n)` -/
def P14236542008857360356.Spec : Prop :=
  ∀ n, P14236542008857360356.a n = A285779 n

end A285779

/-!
# A285780: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 94", based on the 5-celled von Neumann neighborhood.

The programs for A285780, there is no canonical definition to state claims against.
-/

/-! ## A285780.P11409371038290765771

`A007088(A285782(n))`
-/

namespace A285780.P11409371038290765771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285782 n).toNat

end

end A285780.P11409371038290765771

/-! ## A285780.P6031006649926507775

`A185544(2*A285782(n))`
-/

namespace A285780.P6031006649926507775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285782 n).toNat

end

end A285780.P6031006649926507775

/-!
# A285781: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 94", based on the 5-celled von Neumann neighborhood.

The programs for A285781, there is no canonical definition to state claims against.
-/

/-! ## A285781.P9396963868782189955

`A007088(A285783(n))`
-/

namespace A285781.P9396963868782189955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285783 n).toNat

end

end A285781.P9396963868782189955

/-! ## A285781.P1451018366746770731

`A185544(2*A285783(n))`
-/

namespace A285781.P1451018366746770731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285783 n).toNat

end

end A285781.P1451018366746770731

/-!
# A285784: Possible nonprime residues of k > p# modulo p# for some primorial p# in A002110.

The programs for A285784, there is no canonical definition to state claims against.
-/

/-! ## A285784.P2630451588234279271

`record[A171435(A286941(n+1))]`
-/

namespace A285784.P2630451588234279271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A286941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285784.P2630451588234279271

/-! ## A285784.P10014904747359463870

`record[A191558(A286941(n+2))]`
-/

namespace A285784.P10014904747359463870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A286941 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285784.P10014904747359463870

/-! ## A285784.P17915936633597455316

`∪[A287390(n+1), A287391(n+1)]`
-/

namespace A285784.P17915936633597455316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285784.P17915936633597455316

/-! ## A285784.P16862927527331817804

`lt[log(A303748(n)), A107286(n)]`
-/

namespace A285784.P16862927527331817804
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A303748 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A285784.P16862927527331817804

/-! ## A285784.P3937366828814819177

`∩[A008364(n+1), A176039(n+1)]`
-/

namespace A285784.P3937366828814819177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285784.P3937366828814819177

/-!
# A285786: Number of primes p with 2(n-1)^2 < p <= 2n^2.

The programs for A285786, the canonical program `A285786.P15997609782870965771` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285786 has offset 1).

The definition of A285786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285786.P10862507478291297142

`Δ[n²]-A289279(n+1)`
-/

namespace A285786.P10862507478291297142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A289279 (n + 1)

end

end A285786.P10862507478291297142

namespace A285786

/-- `Δ[n²]-A289279(n+1)` -/
def P10862507478291297142.Spec : Prop :=
  ∀ n, P10862507478291297142.a n = A285786 (n + 1)

theorem P10862507478291297142.correct : P10862507478291297142.Spec := by
  intro n
  simp only [A285786, Nat.add_sub_cancel, A285786.P10862507478291297142.f1, A285786.P10862507478291297142.a, A285786.P15997609782870965771.a, A028310, A028310.P18130301328277559831.a, A285269, A285269.P15130939966737221586.f1, A285269.P15130939966737221586.a, A289279, A289279.P13898592628160016869.a, A278114, A278114.P12307070974091707248.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285786

/-! ## A285786.P15997609782870965771

`A028310(A285269(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285786

/-- `A028310(A285269(n))` -/
def P15997609782870965771.Spec : Prop :=
  ∀ n, P15997609782870965771.a n = A285786 (n + 1)

theorem P15997609782870965771.correct : P15997609782870965771.Spec := by
  intro n
  simp only [A285786, Nat.add_sub_cancel]

end A285786

/-! ## A285786.P1009752130171375528

`A285269(n)+A000007(n)`
-/

namespace A285786.P1009752130171375528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285269 n + A000007 n

end

end A285786.P1009752130171375528

namespace A285786

/-- `A285269(n)+A000007(n)` -/
def P1009752130171375528.Spec : Prop :=
  ∀ n, P1009752130171375528.a n = A285786 (n + 1)

end A285786

/-! ## A285786.P8656113950838916434

`A000007(n)+A278114(n+1)-A278114(A028310(n))`
-/

namespace A285786.P8656113950838916434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A278114 (n + 1) - A278114 (A028310 n).toNat)

end

end A285786.P8656113950838916434

namespace A285786

/-- `A000007(n)+A278114(n+1)-A278114(A028310(n))` -/
def P8656113950838916434.Spec : Prop :=
  ∀ n, P8656113950838916434.a n = A285786 (n + 1)

end A285786

/-! ## A285786.P8207419079642012888

`A000007(n)+Δ[A278114(A000007(n)+n)]`
-/

namespace A285786.P8207419079642012888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A285786.P8207419079642012888

namespace A285786

/-- `A000007(n)+Δ[A278114(A000007(n)+n)]` -/
def P8207419079642012888.Spec : Prop :=
  ∀ n, P8207419079642012888.a n = A285786 (n + 1)

end A285786

/-! ## A285786.P780104771501539812

`A105149(2*n+1)+A105149(2*n)`
-/

namespace A285786.P780104771501539812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (2 * n + 1) + A105149 (2 * n)

end

end A285786.P780104771501539812

namespace A285786

/-- `A105149(2*n+1)+A105149(2*n)` -/
def P780104771501539812.Spec : Prop :=
  ∀ n, P780104771501539812.a n = A285786 (n + 1)

end A285786

/-! ## A285786.P13479279439716337938

`gcd(A056835(n), A285269(n))`
-/

namespace A285786.P13479279439716337938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056835 n) (A285269 n)

end

end A285786.P13479279439716337938

namespace A285786

/-- `gcd(A056835(n), A285269(n))` -/
def P13479279439716337938.Spec : Prop :=
  ∀ n, (P13479279439716337938.a n : ℤ) = A285786 (n + 1)

end A285786

/-! ## A285786.P17047437849481821561

`Δ[A000720(A151800(2*n²))]`
-/

namespace A285786.P17047437849481821561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 (2 * n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285786.P17047437849481821561

namespace A285786

/-- `Δ[A000720(A151800(2*n²))]` -/
def P17047437849481821561.Spec : Prop :=
  ∀ n, P17047437849481821561.a n = A285786 (n + 1)

end A285786

/-! ## A285786.P12961307923608440843

`Δ[A000720(A253909(n)+n²)]`
-/

namespace A285786.P12961307923608440843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A253909 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285786.P12961307923608440843

namespace A285786

/-- `Δ[A000720(A253909(n)+n²)]` -/
def P12961307923608440843.Spec : Prop :=
  ∀ n, P12961307923608440843.a n = A285786 (n + 1)

end A285786

/-! ## A285786.P2632802317256916597

`Δ[A061395(A151800(n*2*n))]`
-/

namespace A285786.P2632802317256916597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A151800 (n * (2 * n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285786.P2632802317256916597

namespace A285786

/-- `Δ[A061395(A151800(n*2*n))]` -/
def P2632802317256916597.Spec : Prop :=
  ∀ n, P2632802317256916597.a n = A285786 (n + 1)

end A285786

/-! ## A285786.P11285261655047452915

`Δ[A000720(A179865(2*n+1)-n)]`
-/

namespace A285786.P11285261655047452915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A179865 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285786.P11285261655047452915

namespace A285786

/-- `Δ[A000720(A179865(2*n+1)-n)]` -/
def P11285261655047452915.Spec : Prop :=
  ∀ n, P11285261655047452915.a n = A285786 (n + 1)

end A285786

/-! ## A285786.P12261948277850837944

`Δ[A000720(A036406(A008574(n)))]`
-/

namespace A285786.P12261948277850837944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A036406 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285786.P12261948277850837944

namespace A285786

/-- `Δ[A000720(A036406(A008574(n)))]` -/
def P12261948277850837944.Spec : Prop :=
  ∀ n, P12261948277850837944.a n = A285786 (n + 1)

end A285786

/-! ## A285786.P5345208046985264125

`Δ[A000720(A053439(A004273(n)))]`
-/

namespace A285786.P5345208046985264125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A053439 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285786.P5345208046985264125

namespace A285786

/-- `Δ[A000720(A053439(A004273(n)))]` -/
def P5345208046985264125.Spec : Prop :=
  ∀ n, P5345208046985264125.a n = A285786 (n + 1)

end A285786

/-! ## A285786.P16021571737542226587

`Δ[A000720(A001105(n)+A000007(n))]`
-/

namespace A285786.P16021571737542226587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001105 n + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285786.P16021571737542226587

namespace A285786

/-- `Δ[A000720(A001105(n)+A000007(n))]` -/
def P16021571737542226587.Spec : Prop :=
  ∀ n, P16021571737542226587.a n = A285786 (n + 1)

end A285786

/-! ## A285786.P17076512545631354502

`Δ[A000720(A008486(n²)-n²)]`
-/

namespace A285786.P17076512545631354502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008486 (n ^ 2) - (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285786.P17076512545631354502

namespace A285786

/-- `Δ[A000720(A008486(n²)-n²)]` -/
def P17076512545631354502.Spec : Prop :=
  ∀ n, P17076512545631354502.a n = A285786 (n + 1)

end A285786

/-!
# A285788: Irregular triangle T(n,m): nonprime 1 <= k <= n such that n and k are coprime.

The programs for A285788, the canonical program `A285788.P13809897660344118351` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285788 has offset 1).

The definition of A285788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285788.P13809897660344118351

`filter[A038566(n+1), A005171(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A285788

/-- `filter[A038566(n+1), A005171(#)]` -/
def P13809897660344118351.Spec : Prop :=
  ∀ n, P13809897660344118351.a n = A285788 (n + 1)

theorem P13809897660344118351.correct : P13809897660344118351.Spec := by
  intro n
  simp only [A285788, Nat.add_sub_cancel]

end A285788

/-! ## A285788.P18089025167725198289

`filter[A038569(2*n), A005171(#)]`
-/

namespace A285788.P18089025167725198289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A285788.P18089025167725198289

namespace A285788

/-- `filter[A038569(2*n), A005171(#)]` -/
def P18089025167725198289.Spec : Prop :=
  ∀ n, P18089025167725198289.a n = A285788 (n + 1)

end A285788

/-! ## A285788.P8752662952282697392

`A026234(p?[A026234(A038566(n+1))])`
-/

namespace A285788.P8752662952282697392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A038566 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285788.P8752662952282697392

namespace A285788

/-- `A026234(p?[A026234(A038566(n+1))])` -/
def P8752662952282697392.Spec : Prop :=
  ∀ n, P8752662952282697392.a n = A285788 (n + 1)

end A285788

/-! ## A285788.P1940838453964153762

`A128227(eq[A143655(n+1), A349317(n+1)])`
-/

namespace A285788.P1940838453964153762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285788.P1940838453964153762

namespace A285788

/-- `A128227(eq[A143655(n+1), A349317(n+1)])` -/
def P1940838453964153762.Spec : Prop :=
  ∀ n, P1940838453964153762.a n = A285788 (n + 1)

end A285788

/-! ## A285788.P14563004389127297977

`A193738(eq[A143655(n+1), A349317(n+1)])`
-/

namespace A285788.P14563004389127297977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285788.P14563004389127297977

namespace A285788

/-- `A193738(eq[A143655(n+1), A349317(n+1)])` -/
def P14563004389127297977.Spec : Prop :=
  ∀ n, P14563004389127297977.a n = A285788 (n + 1)

end A285788

/-!
# A285789: Primes equal to a pentagonal number plus 1.

The programs for A285789, the canonical program `A285789.P16033752460926283338` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285789 has offset 1).

The definition of A285789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285789.P16033752460926283338

`p?[∑[n+2]+n²]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285789

/-- `p?[∑[n+2]+n²]` -/
def P16033752460926283338.Spec : Prop :=
  ∀ n, (P16033752460926283338.a n : ℤ) = A285789 (n + 1)

theorem P16033752460926283338.correct : P16033752460926283338.Spec := by
  intro n
  simp only [A285789, Nat.add_sub_cancel]

end A285789

/-! ## A285789.P2640378595723301091

`abs(p?[C(n, 2)+n²+1]-2)+2`
-/

namespace A285789.P2640378595723301091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2| + 2

end

end A285789.P2640378595723301091

namespace A285789

/-- `abs(p?[C(n, 2)+n²+1]-2)+2` -/
def P2640378595723301091.Spec : Prop :=
  ∀ n, P2640378595723301091.a n = A285789 (n + 1)

end A285789

/-! ## A285789.P10641329188908208053

`or(p?[A115067(n+1)+2], char[1])`
-/

namespace A285789.P10641329188908208053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (n + 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A285789.P10641329188908208053

namespace A285789

/-- `or(p?[A115067(n+1)+2], char[1])` -/
def P10641329188908208053.Spec : Prop :=
  ∀ n, P10641329188908208053.a n = A285789 (n + 1)

end A285789

/-! ## A285789.P7336593609552491618

`p?[A143689(n)]%A160827(n)`
-/

namespace A285789.P7336593609552491618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A160827 n)

end

end A285789.P7336593609552491618

namespace A285789

/-- `p?[A143689(n)]%A160827(n)` -/
def P7336593609552491618.Spec : Prop :=
  ∀ n, P7336593609552491618.a n = A285789 (n + 1)

end A285789

/-! ## A285789.P16492155385760898032

`gcd(p?[A143689(n)], A000038(n))`
-/

namespace A285789.P16492155385760898032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000038 n)

end

end A285789.P16492155385760898032

namespace A285789

/-- `gcd(p?[A143689(n)], A000038(n))` -/
def P16492155385760898032.Spec : Prop :=
  ∀ n, (P16492155385760898032.a n : ℤ) = A285789 (n + 1)

end A285789

/-! ## A285789.P14125482232470470046

`A007318(C(2, n))*p?[A143689(n)]`
-/

namespace A285789.P14125482232470470046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285789.P14125482232470470046

namespace A285789

/-- `A007318(C(2, n))*p?[A143689(n)]` -/
def P14125482232470470046.Spec : Prop :=
  ∀ n, P14125482232470470046.a n = A285789 (n + 1)

end A285789

/-! ## A285789.P6782464801969737664

`p?[A143689(n)]+A008683(4*(n+5))`
-/

namespace A285789.P6782464801969737664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 5))

end

end A285789.P6782464801969737664

namespace A285789

/-- `p?[A143689(n)]+A008683(4*(n+5))` -/
def P6782464801969737664.Spec : Prop :=
  ∀ n, P6782464801969737664.a n = A285789 (n + 1)

end A285789

/-! ## A285789.P7224564477940131353

`or(A000040(n+1)%2, p?[A143689(n)])`
-/

namespace A285789.P7224564477940131353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A000040 (n + 1)) 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A285789.P7224564477940131353

namespace A285789

/-- `or(A000040(n+1)%2, p?[A143689(n)])` -/
def P7224564477940131353.Spec : Prop :=
  ∀ n, P7224564477940131353.a n = A285789 (n + 1)

end A285789

/-! ## A285789.P6430358287531316596

`p?[A000326(n)+1]+A008683(4*(n+1))`
-/

namespace A285789.P6430358287531316596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A285789.P6430358287531316596

namespace A285789

/-- `p?[A000326(n)+1]+A008683(4*(n+1))` -/
def P6430358287531316596.Spec : Prop :=
  ∀ n, P6430358287531316596.a n = A285789 (n + 1)

end A285789

/-! ## A285789.P2443976709607030107

`p?[A115067(n+1)+2]+A008683(16*(n+1))`
-/

namespace A285789.P2443976709607030107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (16 * (n + 1))

end

end A285789.P2443976709607030107

namespace A285789

/-- `p?[A115067(n+1)+2]+A008683(16*(n+1))` -/
def P2443976709607030107.Spec : Prop :=
  ∀ n, P2443976709607030107.a n = A285789 (n + 1)

end A285789

/-! ## A285789.P6410605396554853057

`A000005(gcd(n, n+1))*p?[A115067(n+1)+2]`
-/

namespace A285789.P6410605396554853057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285789.P6410605396554853057

namespace A285789

/-- `A000005(gcd(n, n+1))*p?[A115067(n+1)+2]` -/
def P6410605396554853057.Spec : Prop :=
  ∀ n, P6410605396554853057.a n = A285789 (n + 1)

end A285789

/-!
# A285790: Primes equal to a hexagonal number plus 1.

The programs for A285790, there is no canonical definition to state claims against.
-/

/-! ## A285790.P8904922036242733346

`∪[A007352(n+1), A176616(n+1)]`
-/

namespace A285790.P8904922036242733346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285790.P8904922036242733346

/-! ## A285790.P13978529770025523524

`∩[A055469(n+1), A130883(n)]`
-/

namespace A285790.P13978529770025523524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285790.P13978529770025523524

/-! ## A285790.P10933178744567608406

`record[A118680(2*n+1)]`
-/

namespace A285790.P10933178744567608406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285790.P10933178744567608406

/-! ## A285790.P1307475297845755841

`record[A118680(n+1)/(-1)^n]`
-/

namespace A285790.P1307475297845755841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118680 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285790.P1307475297845755841

/-! ## A285790.P553456426006305725

`∩[A055469(n+1), A266259(n)]`
-/

namespace A285790.P553456426006305725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266259 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285790.P553456426006305725

/-! ## A285790.P1835070230740458633

`∩[A055469(n+1), A266594(n)]`
-/

namespace A285790.P1835070230740458633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266594 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285790.P1835070230740458633

/-! ## A285790.P14384248438020560332

`record[A118680(n+1)^A033999(n)]`
-/

namespace A285790.P14384248438020560332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118680 (n + 1) : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285790.P14384248438020560332

/-! ## A285790.P15744749701738358520

`record[root(A118680(n+1), A000034(n))]`
-/

namespace A285790.P15744749701738358520
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118680 (n + 1) : ℝ) ^ (1 / (A000034 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285790.P15744749701738358520

/-! ## A285790.P6462483199975853797

`record[root(A118680(n+1), A282738(n))]`
-/

namespace A285790.P6462483199975853797
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118680 (n + 1) : ℝ) ^ (1 / (A282738 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285790.P6462483199975853797

/-! ## A285790.P14635084002114579202

`∩[A055469(n+1), A075855(n+1)]`
-/

namespace A285790.P14635084002114579202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285790.P14635084002114579202

/-! ## A285790.P6642711382632200760

`∩[A055469(n+1), A362652(n+1)]`
-/

namespace A285790.P6642711382632200760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285790.P6642711382632200760

/-! ## A285790.P14776506635347039335

`∩[A055469(n+1), A236453(n)-1]`
-/

namespace A285790.P14776506635347039335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285790.P14776506635347039335

/-! ## A285790.P12238244770136320646

`∩[A055469(n+1), A131179(n)+n]`
-/

namespace A285790.P12238244770136320646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285790.P12238244770136320646

/-! ## A285790.P9732149941893427971

`record[root(A118680(n+1), A073575(n+1))]`
-/

namespace A285790.P9732149941893427971
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118680 (n + 1) : ℝ) ^ (1 / (A073575 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285790.P9732149941893427971

/-! ## A285790.P4908315527333552104

`record[A118680(n+1)%A013945(n+1)]`
-/

namespace A285790.P4908315527333552104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118680 (n + 1)) (A013945 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285790.P4908315527333552104

/-! ## A285790.P17437083012661007580

`record[gcd(A118680(n+1), A146076(n+1))]`
-/

namespace A285790.P17437083012661007580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118680 (n + 1)) (A146076 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285790.P17437083012661007580

/-! ## A285790.P1929578231976842192

`∩[A055469(n+1), A114113(n+1)-n]`
-/

namespace A285790.P1929578231976842192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114113 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285790.P1929578231976842192

/-! ## A285790.P14455777169315366891

`∩[A055469(n+1), A384996(n+1)]`
-/

namespace A285790.P14455777169315366891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285790.P14455777169315366891

/-! ## A285790.P4683162058272971186

`∩[A077128(n+1), A130883(n)]`
-/

namespace A285790.P4683162058272971186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285790.P4683162058272971186

/-! ## A285790.P3233322679992351996

`∩[A075855(n+1), A077128(n+1)]`
-/

namespace A285790.P3233322679992351996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285790.P3233322679992351996

/-!
# A285791: Primes equal to a heptagonal number plus 1.

The programs for A285791, the canonical program `A285791.P15375653057334125035` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285791 has offset 1).

The definition of A285791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285791.P15375653057334125035

`p?[5*C(n, 2)+1+n]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285791

/-- `p?[5*C(n, 2)+1+n]` -/
def P15375653057334125035.Spec : Prop :=
  ∀ n, (P15375653057334125035.a n : ℤ) = A285791 (n + 1)

theorem P15375653057334125035.correct : P15375653057334125035.Spec := by
  intro n
  simp only [A285791, Nat.add_sub_cancel]

end A285791

/-! ## A285791.P5526204051084823850

`p?[5*C(n, 2)-xor(n, -1)]`
-/

namespace A285791.P5526204051084823850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.choose n 2 : ℤ) - Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285791.P5526204051084823850

namespace A285791

/-- `p?[5*C(n, 2)-xor(n, -1)]` -/
def P5526204051084823850.Spec : Prop :=
  ∀ n, P5526204051084823850.a n = A285791 (n + 1)

end A285791

/-! ## A285791.P17717981887084310918

`p?[5*n+a(n-1)+1]` with `a(0)=2`
-/

namespace A285791.P17717981887084310918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  5 * n + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A285791.P17717981887084310918

namespace A285791

/-- `p?[5*n+a(n-1)+1]` -/
def P17717981887084310918.Spec : Prop :=
  ∀ n, (P17717981887084310918.a n : ℤ) = A285791 (n + 1)

end A285791

/-! ## A285791.P18103374101555132837

`p?[5*n-(4-a(n-1))]` with `a(0)=1`
-/

namespace A285791.P18103374101555132837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (5 * n : ℤ) - (4 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285791.P18103374101555132837

namespace A285791

/-- `p?[5*n-(4-a(n-1))]` -/
def P18103374101555132837.Spec : Prop :=
  ∀ n, P18103374101555132837.a n = A285791 (n + 1)

end A285791

/-! ## A285791.P6659127564593367667

`or(p?[A192136(n)], A000035(n))`
-/

namespace A285791.P6659127564593367667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000035 n)

end

end A285791.P6659127564593367667

namespace A285791

/-- `or(p?[A192136(n)], A000035(n))` -/
def P6659127564593367667.Spec : Prop :=
  ∀ n, P6659127564593367667.a n = A285791 (n + 1)

end A285791

/-! ## A285791.P17580368520079374993

`or(p?[A192136(n)], A000038(n))`
-/

namespace A285791.P17580368520079374993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000038 n)

end

end A285791.P17580368520079374993

namespace A285791

/-- `or(p?[A192136(n)], A000038(n))` -/
def P17580368520079374993.Spec : Prop :=
  ∀ n, P17580368520079374993.a n = A285791 (n + 1)

end A285791

/-! ## A285791.P4436148396669516676

`or(p?[A192136(n)], A192082(n))`
-/

namespace A285791.P4436148396669516676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A192082 n)

end

end A285791.P4436148396669516676

namespace A285791

/-- `or(p?[A192136(n)], A192082(n))` -/
def P4436148396669516676.Spec : Prop :=
  ∀ n, P4436148396669516676.a n = A285791 (n + 1)

end A285791

/-! ## A285791.P2954359211108225380

`p?[A192136(n)]%A211850(n+1)`
-/

namespace A285791.P2954359211108225380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A211850 (n + 1))

end

end A285791.P2954359211108225380

namespace A285791

/-- `p?[A192136(n)]%A211850(n+1)` -/
def P2954359211108225380.Spec : Prop :=
  ∀ n, P2954359211108225380.a n = A285791 (n + 1)

end A285791

/-! ## A285791.P7559174479159011880

`or(p?[A192136(n)], A189219(n+1))`
-/

namespace A285791.P7559174479159011880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A189219 (n + 1))

end

end A285791.P7559174479159011880

namespace A285791

/-- `or(p?[A192136(n)], A189219(n+1))` -/
def P7559174479159011880.Spec : Prop :=
  ∀ n, P7559174479159011880.a n = A285791 (n + 1)

end A285791

/-! ## A285791.P1308150986665844868

`p?[∑[A016861(n)]+1]%A277104(n+1)`
-/

namespace A285791.P1308150986665844868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A277104 (n + 1))

end

end A285791.P1308150986665844868

namespace A285791

/-- `p?[∑[A016861(n)]+1]%A277104(n+1)` -/
def P1308150986665844868.Spec : Prop :=
  ∀ n, P1308150986665844868.a n = A285791 (n + 1)

end A285791

/-! ## A285791.P9125676489636009450

`A007318(and(3, 2-n))*p?[A140066(n+1)-n]`
-/

namespace A285791.P9125676489636009450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140066 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (2 - (n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285791.P9125676489636009450

namespace A285791

/-- `A007318(and(3, 2-n))*p?[A140066(n+1)-n]` -/
def P9125676489636009450.Spec : Prop :=
  ∀ n, P9125676489636009450.a n = A285791 (n + 1)

end A285791

/-! ## A285791.P1784313773121219464

`A007318(A000096(n))*p?[A192136(n)]`
-/

namespace A285791.P1784313773121219464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285791.P1784313773121219464

namespace A285791

/-- `A007318(A000096(n))*p?[A192136(n)]` -/
def P1784313773121219464.Spec : Prop :=
  ∀ n, P1784313773121219464.a n = A285791 (n + 1)

end A285791

/-! ## A285791.P17919410564204499321

`p?[A192136(n)]%A159258(A159258(n))`
-/

namespace A285791.P17919410564204499321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A159258 (A159258 n).toNat)

end

end A285791.P17919410564204499321

namespace A285791

/-- `p?[A192136(n)]%A159258(A159258(n))` -/
def P17919410564204499321.Spec : Prop :=
  ∀ n, P17919410564204499321.a n = A285791 (n + 1)

end A285791

/-!
# A285792: Primes equal to an octagonal number plus 1.

The programs for A285792, there is no canonical definition to state claims against.
-/

/-! ## A285792.P10807640389794100971

`A056105(A086298(n+1))`
-/

namespace A285792.P10807640389794100971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 (A086298 (n + 1)).toNat

end

end A285792.P10807640389794100971

/-! ## A285792.P5238950667074774019

`A000567(A086298(n+1))+A033999(n)²`
-/

namespace A285792.P5238950667074774019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A086298 (n + 1)).toNat + A033999 n ^ 2

end

end A285792.P5238950667074774019

/-! ## A285792.P2592766529305879829

`A000567(A086298(n+1))+A007318(C(n, n+1))`
-/

namespace A285792.P2592766529305879829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A086298 (n + 1)).toNat + A007318 (Nat.choose n (n + 1))

end

end A285792.P2592766529305879829

/-! ## A285792.P9277715274416744818

`A000567(A086298(n+1))+A007318(floor(1/(n+1)))`
-/

namespace A285792.P9277715274416744818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A086298 (n + 1)).toNat + A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A285792.P9277715274416744818

/-! ## A285792.P2339239769895260910

`A003415(A020639(n+2))+A000567(A086298(n+1))`
-/

namespace A285792.P2339239769895260910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A020639 (n + 2)).toNat + A000567 (A086298 (n + 1)).toNat

end

end A285792.P2339239769895260910

/-! ## A285792.P10415531909926528583

`A000567(A086298(n+1))-A033999(A073575(n+1))`
-/

namespace A285792.P10415531909926528583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A086298 (n + 1)).toNat - A033999 (A073575 (n + 1)).toNat

end

end A285792.P10415531909926528583

/-! ## A285792.P14474891201792212294

`p?[Δ[∑[n]+n^3]]`
-/

namespace A285792.P14474891201792212294
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285792.P14474891201792212294

/-! ## A285792.P2055821491980726259

`∩[A045390(n+1), A056105(n)]`
-/

namespace A285792.P2055821491980726259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285792.P2055821491980726259

/-!
# A285794: a(1)=1, a(2)=2, a(3)=3, a(n) = 3*a(n-3)+2*a(n-2)+a(n-1).

The programs for A285794, the canonical program `A285794.P12031005045054099389` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285794 has offset 1).

The definition of A285794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-3)+2*a(n-2)+a(n-1)` (program `A285794.P12031005045054099389`, by `A285794.P12031005045054099389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285794.P12031005045054099389

`3*a(n-3)+2*a(n-2)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A285794

/-- `3*a(n-3)+2*a(n-2)+a(n-1)` -/
def P12031005045054099389.Spec : Prop :=
  ∀ n, (P12031005045054099389.a n : ℤ) = A285794 (n + 1)

theorem P12031005045054099389.correct : P12031005045054099389.Spec := by
  intro n
  simp only [A285794, Nat.add_sub_cancel]

end A285794

/-! ## A285794.P12063620575538784230

`ogf((-1-x+x^2)/(-1+x+2x^2+3x^3))`
-/

namespace A285794.P12063620575538784230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -1, -2, -3] n

end

end A285794.P12063620575538784230

namespace A285794

/-- `ogf((-1-x+x^2)/(-1+x+2x^2+3x^3))` -/
def P12063620575538784230.Spec : Prop :=
  ∀ n, P12063620575538784230.a n = A285794 (n + 1)

end A285794

/-! ## A285794.P14016961587539537557

`A098177(record[A104872(n)])`
-/

namespace A285794.P14016961587539537557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098177 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285794.P14016961587539537557

namespace A285794

/-- `A098177(record[A104872(n)])` -/
def P14016961587539537557.Spec : Prop :=
  ∀ n, P14016961587539537557.a n = A285794 (n + 1)

end A285794

/-!
# A285795: Sum of the second entries in all cycles of all permutations of [n].

The programs for A285795, there is no canonical definition to state claims against.
-/

/-! ## A285795.P6697474424585118467

`A052881(n)+(n-1)*a(n-1)` with `a(0)=0`
-/

namespace A285795.P6697474424585118467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052881 n + ((n : ℤ) - 1) * a (n - 1)

end

end A285795.P6697474424585118467

/-! ## A285795.P6131320790825156585

`(a(n-1)+(n-1)!)*(n-1)-A081047(n)` with `a(0)=0`
-/

namespace A285795.P6131320790825156585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)) * ((n : ℤ) - 1) - A081047 n

end

end A285795.P6131320790825156585

/-!
# A285796: Number of ways to write n as an ordered sum of two numbers that are the product of an even number of distinct primes (including 1).

The programs for A285796, there is no canonical definition to state claims against.
-/

/-! ## A285796.P5966206465424915680

`A008441(n)*A141743(A255411(n))`
-/

namespace A285796.P5966206465424915680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A141743 (A255411 n).toNat

end

end A285796.P5966206465424915680

/-! ## A285796.P6554543740942031743

`2*A316863(A026647(n))-A316863(n)`
-/

namespace A285796.P6554543740942031743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316863 (A026647 n).toNat - A316863 n

end

end A285796.P6554543740942031743

/-! ## A285796.P7280428973552720558

`A008441(n)%A274623(A274622(n+2))`
-/

namespace A285796.P7280428973552720558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008441 n) (A274623 (A274622 (n + 2)).toNat)

end

end A285796.P7280428973552720558

/-! ## A285796.P16002427857142994925

`A000925(A017089(n))%A274623(A274622(n+2))`
-/

namespace A285796.P16002427857142994925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000925 (A017089 n).toNat) (A274623 (A274622 (n + 2)).toNat)

end

end A285796.P16002427857142994925

/-! ## A285796.P12913940346492568616

`A360012(A330097(n+2))`
-/

namespace A285796.P12913940346492568616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360012 (A330097 (n + 2)).toNat

end

end A285796.P12913940346492568616

/-!
# A285797: Number of ways to write n as an ordered sum of two numbers that are the product of an odd number of distinct primes.

The programs for A285797, there is no canonical definition to state claims against.
-/

/-! ## A285797.P16126805108725504746

`A073610(A151660(n)+n)`
-/

namespace A285797.P16126805108725504746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A151660 n + (n : ℤ)).toNat

end

end A285797.P16126805108725504746

/-! ## A285797.P3829367636724267478

`A073610(or(n, A151660(n)))`
-/

namespace A285797.P3829367636724267478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (Int.lor (n : ℤ) (A151660 n)).toNat

end

end A285797.P3829367636724267478

/-! ## A285797.P11522150844608910947

`A073610(xor(n, A151660(n)))`
-/

namespace A285797.P11522150844608910947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (Int.xor (n : ℤ) (A151660 n)).toNat

end

end A285797.P11522150844608910947

/-! ## A285797.P10702252588469000121

`A073610(C(A352361(n)², n²)+n)`
-/

namespace A285797.P10702252588469000121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (Nat.choose (A352361 n ^ 2).toNat (n ^ 2) + n)

end

end A285797.P10702252588469000121

/-! ## A285797.P7708884681997289846

`A073610(C(2, ∑[A386586(2*n+3)]+2)+n)`
-/

namespace A285797.P7708884681997289846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386586 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat + n)

end

end A285797.P7708884681997289846

/-!
# A285798: Number of partitions of n into parts with an even number of distinct prime divisors.

The programs for A285798, there is no canonical definition to state claims against.
-/

/-! ## A285798.P9298486950451958068

`A000196(A321346(n)²-A034461(n+1))`
-/

namespace A285798.P9298486950451958068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A321346 n ^ 2 - A034461 (n + 1)).toNat

end

end A285798.P9298486950451958068

/-! ## A285798.P13309469759625464966

`A321346(n)-A057427(A185255(n))`
-/

namespace A285798.P13309469759625464966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321346 n - A057427 (A185255 n).toNat

end

end A285798.P13309469759625464966

/-! ## A285798.P9300676980718148814

`A321346(n)-A185284(A094994(n))`
-/

namespace A285798.P9300676980718148814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321346 n - A185284 (A094994 n).toNat

end

end A285798.P9300676980718148814

/-! ## A285798.P11085544652214335091

`A321346(n)-A014834(A347621(n))`
-/

namespace A285798.P11085544652214335091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321346 n - A014834 (A347621 n).toNat

end

end A285798.P11085544652214335091

/-! ## A285798.P4367391695932517256

`A321346(n)-A340998(A099597(n))`
-/

namespace A285798.P4367391695932517256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321346 n - A340998 ((A099597 n).toNat + 140)

end

end A285798.P4367391695932517256

/-!
# A285799: Number of partitions of n into parts with an odd number of distinct prime divisors.

The programs for A285799, there is no canonical definition to state claims against.
-/

/-! ## A285799.P8862020875681763069

`A025456(A185255(n))+A023894(n)`
-/

namespace A285799.P8862020875681763069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A185255 n).toNat + A023894 n

end

end A285799.P8862020875681763069

/-! ## A285799.P6122128332373837631

`A185284(A070165(n+3))+A023894(n)`
-/

namespace A285799.P6122128332373837631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A070165 (n + 3)).toNat + A023894 n

end

end A285799.P6122128332373837631

/-! ## A285799.P7974678438701443590

`A297155(A034461(n+1)!)+A023894(n)`
-/

namespace A285799.P7974678438701443590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (Nat.factorial (A034461 (n + 1)).toNat) + A023894 n

end

end A285799.P7974678438701443590

/-! ## A285799.P16720996390476693339

`A085982(A157275(n))+A023894(n)`
-/

namespace A285799.P16720996390476693339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085982 (A157275 n).toNat + A023894 n

end

end A285799.P16720996390476693339

/-! ## A285799.P5587144442897325526

`A185284(A094994(n))+A023894(n)`
-/

namespace A285799.P5587144442897325526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A094994 n).toNat + A023894 n

end

end A285799.P5587144442897325526

