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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A304500: Solution (a(n)) of the system of complementary equations defined in Comments.

The programs for A304500, there is no canonical definition to state claims against.
-/

/-! ## A304500.P10987655934826348003

`A092278(A117741(n+1))+Δ[n²]`
-/

namespace A304500.P10987655934826348003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 (A117741 (n + 1)).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A304500.P10987655934826348003

/-! ## A304500.P13277979195171929157

`A000027(n+1)+A092278(A117741(n+1))+n`
-/

namespace A304500.P13277979195171929157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A092278 (A117741 (n + 1)).toNat + (n : ℤ))

end

end A304500.P13277979195171929157

/-! ## A304500.P8016654701463225155

`A008619(2*n)+A092278(A117741(n+1))+n`
-/

namespace A304500.P8016654701463225155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) + (A092278 (A117741 (n + 1)).toNat + (n : ℤ))

end

end A304500.P8016654701463225155

/-! ## A304500.P12546261984880905388

`2*n+A092278(A117741(n+1))+A014963(10*(n+1))`
-/

namespace A304500.P12546261984880905388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A092278 (A117741 (n + 1)).toNat + A014963 (10 * (n + 1)))

end

end A304500.P12546261984880905388

/-! ## A304500.P11401803923578720829

`(A092278(A117741(n+1))+2*n+1)%A000203(A000040(n+2)²)`
-/

namespace A304500.P11401803923578720829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092278 (A117741 (n + 1)).toNat + (2 * n + 1 : ℤ)) (A000203 (A000040 (n + 2) ^ 2).toNat)

end

end A304500.P11401803923578720829

/-! ## A304500.P102163310728956936

`floor((A304502(n)-2)/3)`
-/

namespace A304500.P102163310728956936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A304502 n - 2 : ℚ) / 3⌋

end

end A304500.P102163310728956936

/-! ## A304500.P8593076524610815201

`A008611(A304502(n))-1`
-/

namespace A304500.P8593076524610815201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A304502 n).toNat - 1

end

end A304500.P8593076524610815201

/-! ## A304500.P7866440268376808164

`A002264(A304502(n)-2)`
-/

namespace A304500.P7866440268376808164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A304502 n - 2).toNat

end

end A304500.P7866440268376808164

/-! ## A304500.P4181998302291918447

`A008620(A304502(n)-5)`
-/

namespace A304500.P4181998302291918447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A304502 n - 5).toNat

end

end A304500.P4181998302291918447

/-!
# A304501: Solution (b(n)) of the system of complementary equations defined in Comments.

The programs for A304501, there is no canonical definition to state claims against.
-/

/-! ## A304501.P5168046971299813581

`A284775(A304799(n))+A047290(n+1)`
-/

namespace A304501.P5168046971299813581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (A304799 n).toNat + A047290 (n + 1)

end

end A304501.P5168046971299813581

/-! ## A304501.P7737556867691002578

`A103221(A147587(n)+A072078(2*n+1))`
-/

namespace A304501.P7737556867691002578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A147587 n + A072078 (2 * n + 1)).toNat

end

end A304501.P7737556867691002578

/-! ## A304501.P5690727023362151747

`A008620(A284775(2*n+5)+A304498(n)+2*A304497(n))`
-/

namespace A304501.P5690727023362151747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A284775 (2 * n + 5) + (A304498 n + 2 * A304497 n)).toNat

end

end A304501.P5690727023362151747

/-! ## A304501.P2908931495542409471

`ceil(A304502(n)/3)`
-/

namespace A304501.P2908931495542409471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304502 n : ℚ) / 3⌉

end

end A304501.P2908931495542409471

/-! ## A304501.P1043618642821203336

`A008620(A304502(n))`
-/

namespace A304501.P1043618642821203336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A304502 n).toNat

end

end A304501.P1043618642821203336

/-! ## A304501.P4865161306159018165

`A123919(A304502(n)+1)`
-/

namespace A304501.P4865161306159018165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A304502 n + 1).toNat

end

end A304501.P4865161306159018165

/-! ## A304501.P18216143993058605707

`A189671(A304502(n)+1)`
-/

namespace A304501.P18216143993058605707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A304502 n + 1).toNat

end

end A304501.P18216143993058605707

/-! ## A304501.P10000266328650062710

`A002264(A304502(n)+2)`
-/

namespace A304501.P10000266328650062710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A304502 n + 2).toNat

end

end A304501.P10000266328650062710

/-! ## A304501.P11388464446481379811

`A090701(A304502(n)-1)`
-/

namespace A304501.P11388464446481379811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090701 (A304502 n - 1).toNat

end

end A304501.P11388464446481379811

/-! ## A304501.P8759863103718328890

`A008615(2*A304502(n))`
-/

namespace A304501.P8759863103718328890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A304502 n).toNat

end

end A304501.P8759863103718328890

/-!
# A304502: Solution (c(n)) of the system of complementary equations defined in Comments.

The programs for A304502, there is no canonical definition to state claims against.
-/

/-! ## A304502.P8199686169187039418

`A304500(n)+2*A304501(n)`
-/

namespace A304502.P8199686169187039418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304500 n + 2 * A304501 n

end

end A304502.P8199686169187039418

/-! ## A304502.P11908256373234828432

`A304500(n)+A004277(A304501(n))`
-/

namespace A304502.P11908256373234828432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304500 n + A004277 (A304501 n).toNat

end

end A304502.P11908256373234828432

/-! ## A304502.P17540551448974981818

`A304500(A023443(n)+1)+A005843(A304501(n))`
-/

namespace A304502.P17540551448974981818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304500 (A023443 n + 1).toNat + A005843 (A304501 n).toNat

end

end A304502.P17540551448974981818

/-! ## A304502.P8925615783318696398

`(A304500(n)+A005843(A304501(n)))%A000491(n)`
-/

namespace A304502.P8925615783318696398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304500 n + A005843 (A304501 n).toNat) (A000491 n)

end

end A304502.P8925615783318696398

/-! ## A304502.P12183057199143051034

`(A304500(n)+A005843(A304501(n)))/A033999(n)²`
-/

namespace A304502.P12183057199143051034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304500 n + A005843 (A304501 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A304502.P12183057199143051034

/-! ## A304502.P9891036032509146536

`A304500(n)+A005843(A304501(n))%A126473(n+2)`
-/

namespace A304502.P9891036032509146536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304500 n + Int.tmod (A005843 (A304501 n).toNat) (A126473 (n + 2))

end

end A304502.P9891036032509146536

/-!
# A304503: a(n) = 3*(n+1)*(9*n+4).

The programs for A304503, the canonical program `A304503.P4104484190920118502` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304503 has offset 0).

The definition of A304503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)*(9*n+4)` (program `A304503.P4104484190920118502`, by `A304503.P4104484190920118502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304503.P4104484190920118502

`3*(n+1)*(9*n+4)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304503

/-- `3*(n+1)*(9*n+4)` -/
def P4104484190920118502.Spec : Prop :=
  ∀ n, (P4104484190920118502.a n : ℤ) = A304503 n

theorem P4104484190920118502.correct : P4104484190920118502.Spec := by
  intro n
  simp only [A304503]

end A304503

/-! ## A304503.P10325615590509265605

`∑[a(n-1)+54]` with `a(0)=12`
-/

namespace A304503.P10325615590509265605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) + 54

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304503.P10325615590509265605

namespace A304503

/-- `∑[a(n-1)+54]` -/
def P10325615590509265605.Spec : Prop :=
  ∀ n, (P10325615590509265605.a n : ℤ) = A304503 n

end A304503

/-! ## A304503.P16245920981796261753

`∑[3*A350521(n)]`
-/

namespace A304503.P16245920981796261753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A350521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304503.P16245920981796261753

namespace A304503

/-- `∑[3*A350521(n)]` -/
def P16245920981796261753.Spec : Prop :=
  ∀ n, P16245920981796261753.a n = A304503 n

end A304503

/-! ## A304503.P17551016050795049224

`A304164(n+1)+A008588(n)`
-/

namespace A304503.P17551016050795049224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304164 (n + 1) + A008588 n

end

end A304503.P17551016050795049224

namespace A304503

/-- `A304164(n+1)+A008588(n)` -/
def P17551016050795049224.Spec : Prop :=
  ∀ n, P17551016050795049224.a n = A304503 n

theorem P17551016050795049224.correct : P17551016050795049224.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P17551016050795049224.a, A304503.P4104484190920118502.a, A008588, A008588.P12386450284809463491.a, A304164, A304164.P10733911914510998447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P13271265356879585173

`A016789(n)*A017245(n)-2`
-/

namespace A304503.P13271265356879585173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n * A017245 n - 2

end

end A304503.P13271265356879585173

namespace A304503

/-- `A016789(n)*A017245(n)-2` -/
def P13271265356879585173.Spec : Prop :=
  ∀ n, P13271265356879585173.a n = A304503 n

theorem P13271265356879585173.correct : P13271265356879585173.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P13271265356879585173.a, A304503.P4104484190920118502.a, A016789, A016789.P8277564872725303677.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P13851924820091139665

`A085001(n)+A016958(n)/2`
-/

namespace A304503.P13851924820091139665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085001 n : ℚ) + (A016958 n : ℚ) / 2

end

end A304503.P13851924820091139665

namespace A304503

/-- `A085001(n)+A016958(n)/2` -/
def P13851924820091139665.Spec : Prop :=
  ∀ n, P13851924820091139665.a n = (A304503 n : ℚ)

theorem P13851924820091139665.correct : P13851924820091139665.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P13851924820091139665.a, A304503.P4104484190920118502.a, A016958, A016958.P743767780414774553.a, A085001, A085001.P12336604872008909945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P8056805487850935794

`2*A164016(n)-A152743(n)`
-/

namespace A304503.P8056805487850935794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164016 n - A152743 n

end

end A304503.P8056805487850935794

namespace A304503

/-- `2*A164016(n)-A152743(n)` -/
def P8056805487850935794.Spec : Prop :=
  ∀ n, P8056805487850935794.a n = A304503 n

theorem P8056805487850935794.correct : P8056805487850935794.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P8056805487850935794.a, A304503.P4104484190920118502.a, A152743, A152743.P11194544778889005777.a, A164016, A164016.P9958735219434589405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P12909258801405226349

`A085001(n)+2*A016789(n)²`
-/

namespace A304503.P12909258801405226349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085001 n + 2 * A016789 n ^ 2

end

end A304503.P12909258801405226349

namespace A304503

/-- `A085001(n)+2*A016789(n)²` -/
def P12909258801405226349.Spec : Prop :=
  ∀ n, P12909258801405226349.a n = A304503 n

theorem P12909258801405226349.correct : P12909258801405226349.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P12909258801405226349.a, A304503.P4104484190920118502.a, A016789, A016789.P8277564872725303677.a, A085001, A085001.P12336604872008909945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P17396863940562365746

`A008585(n)+3*A016789(n)²`
-/

namespace A304503.P17396863940562365746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + 3 * A016789 n ^ 2

end

end A304503.P17396863940562365746

namespace A304503

/-- `A008585(n)+3*A016789(n)²` -/
def P17396863940562365746.Spec : Prop :=
  ∀ n, P17396863940562365746.a n = A304503 n

theorem P17396863940562365746.correct : P17396863940562365746.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P17396863940562365746.a, A304503.P4104484190920118502.a, A008585, A008585.P13732812384316341435.a, A016789, A016789.P8277564872725303677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P3186561991314724580

`A277984(n+1)/2`
-/

namespace A304503.P3186561991314724580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277984 (n + 1) : ℚ) / 2

end

end A304503.P3186561991314724580

namespace A304503

/-- `A277984(n+1)/2` -/
def P3186561991314724580.Spec : Prop :=
  ∀ n, P3186561991314724580.a n = (A304503 n : ℚ)

theorem P3186561991314724580.correct : P3186561991314724580.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P3186561991314724580.a, A304503.P4104484190920118502.a, A277984, A277984.P3316908456214339249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P16608412496504710939

`A064201(n+1)+3*(n+1)`
-/

namespace A304503.P16608412496504710939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064201 (n + 1) + (3 * (n + 1) : ℤ)

end

end A304503.P16608412496504710939

namespace A304503

/-- `A064201(n+1)+3*(n+1)` -/
def P16608412496504710939.Spec : Prop :=
  ∀ n, P16608412496504710939.a n = A304503 n

theorem P16608412496504710939.correct : P16608412496504710939.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P16608412496504710939.a, A304503.P4104484190920118502.a, A064201, A064201.P17766213775117600719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P12251624949568321191

`A152994(n+1)+A152751(n+1)`
-/

namespace A304503.P12251624949568321191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152994 (n + 1) + A152751 (n + 1)

end

end A304503.P12251624949568321191

namespace A304503

/-- `A152994(n+1)+A152751(n+1)` -/
def P12251624949568321191.Spec : Prop :=
  ∀ n, P12251624949568321191.a n = A304503 n

theorem P12251624949568321191.correct : P12251624949568321191.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P12251624949568321191.a, A304503.P4104484190920118502.a, A152751, A152751.P17200692832550794912.a, A152994, A152994.P7052798607735396897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P975379701956409403

`A153796(n+1)+A152743(n+1)`
-/

namespace A304503.P975379701956409403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 (n + 1) + A152743 (n + 1)

end

end A304503.P975379701956409403

namespace A304503

/-- `A153796(n+1)+A152743(n+1)` -/
def P975379701956409403.Spec : Prop :=
  ∀ n, P975379701956409403.a n = A304503 n

theorem P975379701956409403.correct : P975379701956409403.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P975379701956409403.a, A304503.P4104484190920118502.a, A152743, A152743.P11194544778889005777.a, A153796, A153796.P2544292493987041900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P1450826895377140323

`A277991(n+1)-A277990(n+1)`
-/

namespace A304503.P1450826895377140323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277991 (n + 1) - A277990 (n + 1)

end

end A304503.P1450826895377140323

namespace A304503

/-- `A277991(n+1)-A277990(n+1)` -/
def P1450826895377140323.Spec : Prop :=
  ∀ n, P1450826895377140323.a n = A304503 n

theorem P1450826895377140323.correct : P1450826895377140323.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P1450826895377140323.a, A304503.P4104484190920118502.a, A277990, A277990.P6687017974836704064.a, A277991, A277991.P12251535552341815333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P10899637719383627257

`∑[A154266(2*n)]`
-/

namespace A304503.P10899637719383627257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304503.P10899637719383627257

namespace A304503

/-- `∑[A154266(2*n)]` -/
def P10899637719383627257.Spec : Prop :=
  ∀ n, P10899637719383627257.a n = A304503 n

end A304503

/-! ## A304503.P18195196938202475355

`A049598(2*n+1)+A028896(n)`
-/

namespace A304503.P18195196938202475355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 (2 * n + 1) + A028896 n

end

end A304503.P18195196938202475355

namespace A304503

/-- `A049598(2*n+1)+A028896(n)` -/
def P18195196938202475355.Spec : Prop :=
  ∀ n, P18195196938202475355.a n = A304503 n

theorem P18195196938202475355.correct : P18195196938202475355.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P18195196938202475355.a, A304503.P4104484190920118502.a, A028896, A028896.P3776891904721443318.a, A049598, A049598.P15670095646145140517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P5882152542972757375

`A045945(2*n+1)-A045945(n)`
-/

namespace A304503.P5882152542972757375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 (2 * n + 1) - A045945 n

end

end A304503.P5882152542972757375

namespace A304503

/-- `A045945(2*n+1)-A045945(n)` -/
def P5882152542972757375.Spec : Prop :=
  ∀ n, P5882152542972757375.a n = A304503 n

theorem P5882152542972757375.correct : P5882152542972757375.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P5882152542972757375.a, A304503.P4104484190920118502.a, A045945, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P17292939127785644007

`A082040(2*n+1)-A082040(n)`
-/

namespace A304503.P17292939127785644007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 (2 * n + 1) - A082040 n

end

end A304503.P17292939127785644007

namespace A304503

/-- `A082040(2*n+1)-A082040(n)` -/
def P17292939127785644007.Spec : Prop :=
  ∀ n, P17292939127785644007.a n = A304503 n

theorem P17292939127785644007.correct : P17292939127785644007.Spec := by
  intro n
  simp only [A304503, Nat.add_sub_cancel, A304503.P17292939127785644007.a, A304503.P4104484190920118502.a, A082040, A082040.P13987900187150890134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304503

/-! ## A304503.P9393753156141186894

`A144391(A014682(2*n+1))-1`
-/

namespace A304503.P9393753156141186894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144391 (A014682 (2 * n + 1)).toNat - 1

end

end A304503.P9393753156141186894

namespace A304503

/-- `A144391(A014682(2*n+1))-1` -/
def P9393753156141186894.Spec : Prop :=
  ∀ n, P9393753156141186894.a n = A304503 n

end A304503

/-! ## A304503.P6820547254779984801

`A144391(A168236(2*n+1))-1`
-/

namespace A304503.P6820547254779984801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144391 (A168236 (2 * n + 1)).toNat - 1

end

end A304503.P6820547254779984801

namespace A304503

/-- `A144391(A168236(2*n+1))-1` -/
def P6820547254779984801.Spec : Prop :=
  ∀ n, P6820547254779984801.a n = A304503 n

end A304503

/-!
# A304504: a(n) = 3*(3*n+1)*(9*n+8)/2.

The programs for A304504, the canonical program `A304504.P4919382539163099500` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304504 has offset 0).

The definition of A304504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(3*n+1)*(9*n+8)/2` (program `A304504.P14078692926764032871`, by `A304504.P14078692926764032871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304504.P14078692926764032871

`3*(3*n+1)*(9*n+8)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304504.P14078692926764032871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (3 * n + 1) * (9 * n + 8) : ℚ) / 2

end

end A304504.P14078692926764032871

namespace A304504

/-- `3*(3*n+1)*(9*n+8)/2` -/
def P14078692926764032871.Spec : Prop :=
  ∀ n, P14078692926764032871.a n = (A304504 n : ℚ)

theorem P14078692926764032871.correct : P14078692926764032871.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A304504, Nat.add_sub_cancel, A304504.P14078692926764032871.a, A304504.P4919382539163099500.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A304504, Nat.add_sub_cancel, A304504.P14078692926764032871.a, A304504.P4919382539163099500.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304504

/-! ## A304504.P4919382539163099500

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=12, a(1)=102, a(2)=273`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304504

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P4919382539163099500.Spec : Prop :=
  ∀ n, P4919382539163099500.a n = A304504 n

theorem P4919382539163099500.correct : P4919382539163099500.Spec := by
  intro n
  simp only [A304504]

end A304504

/-! ## A304504.P12313476087730602399

`abs(3-C(9*n+6, 2))`
-/

namespace A304504.P12313476087730602399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (Nat.choose (9 * n + 6) 2 : ℤ)|

end

end A304504.P12313476087730602399

namespace A304504

/-- `abs(3-C(9*n+6, 2))` -/
def P12313476087730602399.Spec : Prop :=
  ∀ n, P12313476087730602399.a n = A304504 n

end A304504

/-! ## A304504.P4608789703923275903

`3/4*A304506(n)`
-/

namespace A304504.P4608789703923275903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A304506 n : ℚ)

end

end A304504.P4608789703923275903

namespace A304504

/-- `3/4*A304506(n)` -/
def P4608789703923275903.Spec : Prop :=
  ∀ n, P4608789703923275903.a n = (A304504 n : ℚ)

theorem P4608789703923275903.correct : P4608789703923275903.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A304504, Nat.add_sub_cancel, A304504.P4608789703923275903.a, A304504.P4919382539163099500.a, A304506, A304506.P1966474818931232204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A304504, Nat.add_sub_cancel, A304504.P4608789703923275903.a, A304504.P4919382539163099500.a, A304506, A304506.P1966474818931232204.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A304504

/-! ## A304504.P8271935449792821259

`3/5*A304508(n)`
-/

namespace A304504.P8271935449792821259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A304508 n : ℚ)

end

end A304504.P8271935449792821259

namespace A304504

/-- `3/5*A304508(n)` -/
def P8271935449792821259.Spec : Prop :=
  ∀ n, P8271935449792821259.a n = (A304504 n : ℚ)

end A304504

/-! ## A304504.P7045681718003761884

`A179436(n)+A001513(n)`
-/

namespace A304504.P7045681718003761884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179436 n + A001513 n

end

end A304504.P7045681718003761884

namespace A304504

/-- `A179436(n)+A001513(n)` -/
def P7045681718003761884.Spec : Prop :=
  ∀ n, P7045681718003761884.a n = A304504 n

end A304504

/-! ## A304504.P11299440334881882107

`A177071(n)-A022274(n)`
-/

namespace A304504.P11299440334881882107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177071 n - A022274 n

end

end A304504.P11299440334881882107

namespace A304504

/-- `A177071(n)-A022274(n)` -/
def P11299440334881882107.Spec : Prop :=
  ∀ n, P11299440334881882107.a n = A304504 n

end A304504

/-! ## A304504.P1186185201911491082

`A304508(n)-A016777(n)*A017257(n)`
-/

namespace A304504.P1186185201911491082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304508 n - A016777 n * A017257 n

end

end A304504.P1186185201911491082

namespace A304504

/-- `A304508(n)-A016777(n)*A017257(n)` -/
def P1186185201911491082.Spec : Prop :=
  ∀ n, P1186185201911491082.a n = A304504 n

end A304504

/-! ## A304504.P13411003777548684906

`3*(A153783(n+1)+1)`
-/

namespace A304504.P13411003777548684906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A153783 (n + 1) + 1)

end

end A304504.P13411003777548684906

namespace A304504

/-- `3*(A153783(n+1)+1)` -/
def P13411003777548684906.Spec : Prop :=
  ∀ n, P13411003777548684906.a n = A304504 n

end A304504

/-! ## A304504.P12435127414304955293

`A022281(2*n+1)-A226492(n)`
-/

namespace A304504.P12435127414304955293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 (2 * n + 1) - A226492 n

end

end A304504.P12435127414304955293

namespace A304504

/-- `A022281(2*n+1)-A226492(n)` -/
def P12435127414304955293.Spec : Prop :=
  ∀ n, P12435127414304955293.a n = A304504 n

end A304504

/-! ## A304504.P10189412393484814128

`abs(3-A062741(3*n+2))`
-/

namespace A304504.P10189412393484814128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A062741 (3 * n + 2)|

end

end A304504.P10189412393484814128

namespace A304504

/-- `abs(3-A062741(3*n+2))` -/
def P10189412393484814128.Spec : Prop :=
  ∀ n, P10189412393484814128.a n = A304504 n

end A304504

/-! ## A304504.P6465536758727304200

`A081271(A016777(n))-1`
-/

namespace A304504.P6465536758727304200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081271 (A016777 n).toNat - 1

end

end A304504.P6465536758727304200

namespace A304504

/-- `A081271(A016777(n))-1` -/
def P6465536758727304200.Spec : Prop :=
  ∀ n, P6465536758727304200.a n = A304504 n

end A304504

/-! ## A304504.P14100774184621862990

`A145910(A168233(2*n+1))-2`
-/

namespace A304504.P14100774184621862990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145910 (A168233 (2 * n + 1)).toNat - 2

end

end A304504.P14100774184621862990

namespace A304504

/-- `A145910(A168233(2*n+1))-2` -/
def P14100774184621862990.Spec : Prop :=
  ∀ n, P14100774184621862990.a n = A304504 n

end A304504

/-! ## A304504.P7373861110948803310

`A022267(A016789(n))-A016921(n+1)`
-/

namespace A304504.P7373861110948803310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 (A016789 n).toNat - A016921 (n + 1)

end

end A304504.P7373861110948803310

namespace A304504

/-- `A022267(A016789(n))-A016921(n+1)` -/
def P7373861110948803310.Spec : Prop :=
  ∀ n, P7373861110948803310.a n = A304504 n

end A304504

/-! ## A304504.P695847617927752325

`lcm(3, ∑[A016777(A016777(3*n))]-n)`
-/

namespace A304504.P695847617927752325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A016777 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A304504.P695847617927752325

namespace A304504

/-- `lcm(3, ∑[A016777(A016777(3*n))]-n)` -/
def P695847617927752325.Spec : Prop :=
  ∀ n, (P695847617927752325.a n : ℤ) = A304504 n

end A304504

/-! ## A304504.P11282299131249886280

`A027379(9*n+3)`
-/

namespace A304504.P11282299131249886280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (9 * n + 3)

end

end A304504.P11282299131249886280

namespace A304504

/-- `A027379(9*n+3)` -/
def P11282299131249886280.Spec : Prop :=
  ∀ n, P11282299131249886280.a n = A304504 n

end A304504

/-! ## A304504.P7039066391740698956

`A055998(9*n+3)`
-/

namespace A304504.P7039066391740698956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (9 * n + 3)

end

end A304504.P7039066391740698956

namespace A304504

/-- `A055998(9*n+3)` -/
def P7039066391740698956.Spec : Prop :=
  ∀ n, P7039066391740698956.a n = A304504 n

end A304504

/-! ## A304504.P11610015502094754423

`A307681(A017257(n))`
-/

namespace A304504.P11610015502094754423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307681 (A017257 n).toNat

end

end A304504.P11610015502094754423

namespace A304504

/-- `A307681(A017257(n))` -/
def P11610015502094754423.Spec : Prop :=
  ∀ n, P11610015502094754423.a n = A304504 n

end A304504

/-! ## A304504.P249320545756414900

`A167544(A017185(n+1))`
-/

namespace A304504.P249320545756414900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167544 (A017185 (n + 1)).toNat

end

end A304504.P249320545756414900

namespace A304504

/-- `A167544(A017185(n+1))` -/
def P249320545756414900.Spec : Prop :=
  ∀ n, P249320545756414900.a n = A304504 n

end A304504

/-!
# A304505: a(n) = 4*(n+1)*(9*n+4).

The programs for A304505, the canonical program `A304505.P6536953699317814335` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304505 has offset 0).

The definition of A304505 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)*(9*n+4)` (program `A304505.P6536953699317814335`, by `A304505.P6536953699317814335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304505.P6536953699317814335

`4*(n+1)*(9*n+4)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304505

/-- `4*(n+1)*(9*n+4)` -/
def P6536953699317814335.Spec : Prop :=
  ∀ n, (P6536953699317814335.a n : ℤ) = A304505 n

theorem P6536953699317814335.correct : P6536953699317814335.Spec := by
  intro n
  simp only [A304505]

end A304505

/-! ## A304505.P6004025735711706446

`∑[a(n-1)+72]` with `a(0)=16`
-/

namespace A304505.P6004025735711706446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16] fun n f1 =>
  f1 (n - 1) + 72

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304505.P6004025735711706446

namespace A304505

/-- `∑[a(n-1)+72]` -/
def P6004025735711706446.Spec : Prop :=
  ∀ n, (P6004025735711706446.a n : ℤ) = A304505 n

end A304505

/-! ## A304505.P1807781723338905515

`∑[4*A350521(n)]`
-/

namespace A304505.P1807781723338905515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A350521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304505.P1807781723338905515

namespace A304505

/-- `∑[4*A350521(n)]` -/
def P1807781723338905515.Spec : Prop :=
  ∀ n, P1807781723338905515.a n = A304505 n

end A304505

/-! ## A304505.P6291297694054886957

`A016958(n)+4*n`
-/

namespace A304505.P6291297694054886957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n + (4 * n : ℤ)

end

end A304505.P6291297694054886957

namespace A304505

/-- `A016958(n)+4*n` -/
def P6291297694054886957.Spec : Prop :=
  ∀ n, P6291297694054886957.a n = A304505 n

theorem P6291297694054886957.correct : P6291297694054886957.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P6291297694054886957.a, A304505.P6536953699317814335.a, A016958, A016958.P743767780414774553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P3399413880414620332

`A144449(n)-8*n`
-/

namespace A304505.P3399413880414620332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144449 n - (8 * n : ℤ)

end

end A304505.P3399413880414620332

namespace A304505

/-- `A144449(n)-8*n` -/
def P3399413880414620332.Spec : Prop :=
  ∀ n, P3399413880414620332.a n = A304505 n

theorem P3399413880414620332.correct : P3399413880414620332.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P3399413880414620332.a, A304505.P6536953699317814335.a, A144449, A144449.P16112728441674391944.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P11328063050749459432

`A008586(n)+(6*n+4)²`
-/

namespace A304505.P11328063050749459432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + ((6 * n + 4) ^ 2 : ℤ)

end

end A304505.P11328063050749459432

namespace A304505

/-- `A008586(n)+(6*n+4)²` -/
def P11328063050749459432.Spec : Prop :=
  ∀ n, P11328063050749459432.a n = A304505 n

theorem P11328063050749459432.correct : P11328063050749459432.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P11328063050749459432.a, A304505.P6536953699317814335.a, A008586, A008586.P15642444062404201100.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P13874187510901269654

`Δ[(6*n-2)*A046092(n)]`
-/

namespace A304505.P13874187510901269654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n : ℤ) - 2) * A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304505.P13874187510901269654

namespace A304505

/-- `Δ[(6*n-2)*A046092(n)]` -/
def P13874187510901269654.Spec : Prop :=
  ∀ n, P13874187510901269654.a n = A304505 n

theorem P13874187510901269654.correct : P13874187510901269654.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P13874187510901269654.f1, A304505.P13874187510901269654.a, A304505.P6536953699317814335.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P8275198652612515255

`A106839(n)+A001513(n)`
-/

namespace A304505.P8275198652612515255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n + A001513 n

end

end A304505.P8275198652612515255

namespace A304505

/-- `A106839(n)+A001513(n)` -/
def P8275198652612515255.Spec : Prop :=
  ∀ n, P8275198652612515255.a n = A304505 n

theorem P8275198652612515255.correct : P8275198652612515255.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P8275198652612515255.a, A304505.P6536953699317814335.a, A001513, A001513.P5743200650267435422.a, A106839, A106839.P12314086640576211792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P110501062046196516

`A144410(n)+A051062(n)`
-/

namespace A304505.P110501062046196516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144410 n + A051062 n

end

end A304505.P110501062046196516

namespace A304505

/-- `A144410(n)+A051062(n)` -/
def P110501062046196516.Spec : Prop :=
  ∀ n, P110501062046196516.a n = A304505 n

theorem P110501062046196516.correct : P110501062046196516.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P110501062046196516.a, A304505.P6536953699317814335.a, A051062, A051062.P11177069363644223625.a, A144410, A144410.P8365255097243004447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P9741360885673104313

`A016970(n)-A004768(n)`
-/

namespace A304505.P9741360885673104313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n - A004768 n

end

end A304505.P9741360885673104313

namespace A304505

/-- `A016970(n)-A004768(n)` -/
def P9741360885673104313.Spec : Prop :=
  ∀ n, P9741360885673104313.a n = A304505 n

theorem P9741360885673104313.correct : P9741360885673104313.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P9741360885673104313.a, A304505.P6536953699317814335.a, A004768, A004768.P10813831617649309423.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P4508964560582949110

`A017330(n)-A017102(n)`
-/

namespace A304505.P4508964560582949110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 n - A017102 n

end

end A304505.P4508964560582949110

namespace A304505

/-- `A017330(n)-A017102(n)` -/
def P4508964560582949110.Spec : Prop :=
  ∀ n, P4508964560582949110.a n = A304505 n

theorem P4508964560582949110.correct : P4508964560582949110.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P4508964560582949110.a, A304505.P6536953699317814335.a, A017102, A017102.P4204805422831714047.a, A017330, A017330.P10434817311625232981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P11793578415295683196

`A061550(n)-A369922(n)`
-/

namespace A304505.P11793578415295683196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061550 n - A369922 n

end

end A304505.P11793578415295683196

namespace A304505

/-- `A061550(n)-A369922(n)` -/
def P11793578415295683196.Spec : Prop :=
  ∀ n, P11793578415295683196.a n = A304505 n

theorem P11793578415295683196.correct : P11793578415295683196.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P11793578415295683196.a, A304505.P6536953699317814335.a, A061550, A061550.P11575397276040476215.a, A369922, A369922.P11658645378781673811.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P3500524615660850724

`A195317(n+1)+A141759(n)`
-/

namespace A304505.P3500524615660850724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195317 (n + 1) + A141759 n

end

end A304505.P3500524615660850724

namespace A304505

/-- `A195317(n+1)+A141759(n)` -/
def P3500524615660850724.Spec : Prop :=
  ∀ n, P3500524615660850724.a n = A304505 n

theorem P3500524615660850724.correct : P3500524615660850724.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P3500524615660850724.a, A304505.P6536953699317814335.a, A141759, A141759.P7052951860497148321.a, A195317, A195317.P14364024188265800422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P1238799249472393511

`A178574(n+1)+A162940(n)`
-/

namespace A304505.P1238799249472393511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178574 (n + 1) + A162940 n

end

end A304505.P1238799249472393511

namespace A304505

/-- `A178574(n+1)+A162940(n)` -/
def P1238799249472393511.Spec : Prop :=
  ∀ n, P1238799249472393511.a n = A304505 n

theorem P1238799249472393511.correct : P1238799249472393511.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P1238799249472393511.a, A304505.P6536953699317814335.a, A162940, A162940.P6076576400821307123.a, A178574, A178574.P3315712600721893133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P16339607219057669391

`A304834(n+1)-A017641(n)`
-/

namespace A304505.P16339607219057669391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304834 (n + 1) - A017641 n

end

end A304505.P16339607219057669391

namespace A304505

/-- `A304834(n+1)-A017641(n)` -/
def P16339607219057669391.Spec : Prop :=
  ∀ n, P16339607219057669391.a n = A304505 n

theorem P16339607219057669391.correct : P16339607219057669391.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P16339607219057669391.a, A304505.P6536953699317814335.a, A017641, A017641.P7179824184075428685.a, A304834, A304834.P6300509215167465909.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P4897397545437190595

`A016970(n)-(A004771(n)+2)`
-/

namespace A304505.P4897397545437190595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n - (A004771 n + 2)

end

end A304505.P4897397545437190595

namespace A304505

/-- `A016970(n)-(A004771(n)+2)` -/
def P4897397545437190595.Spec : Prop :=
  ∀ n, P4897397545437190595.a n = A304505 n

theorem P4897397545437190595.correct : P4897397545437190595.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P4897397545437190595.a, A304505.P6536953699317814335.a, A004771, A004771.P15562682025386998074.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P5998943728348925246

`A193448(n+1)+A158443(n+1)`
-/

namespace A304505.P5998943728348925246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193448 (n + 1) + A158443 (n + 1)

end

end A304505.P5998943728348925246

namespace A304505

/-- `A193448(n+1)+A158443(n+1)` -/
def P5998943728348925246.Spec : Prop :=
  ∀ n, P5998943728348925246.a n = A304505 n

theorem P5998943728348925246.correct : P5998943728348925246.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P5998943728348925246.a, A304505.P6536953699317814335.a, A158443, A158443.P14699209223972058803.a, A193448, A193448.P11663024226554784206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P2779677104269480792

`A157265(n+1)-A180486(n+1)`
-/

namespace A304505.P2779677104269480792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157265 (n + 1) - A180486 (n + 1)

end

end A304505.P2779677104269480792

namespace A304505

/-- `A157265(n+1)-A180486(n+1)` -/
def P2779677104269480792.Spec : Prop :=
  ∀ n, P2779677104269480792.a n = A304505 n

theorem P2779677104269480792.correct : P2779677104269480792.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P2779677104269480792.a, A304505.P6536953699317814335.a, A157265, A157265.P9165229674493035226.a, A180486, A180486.P2654958433491961861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P13230317113716733887

`Δ[(n+1)*A014642(n)]`
-/

namespace A304505.P13230317113716733887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304505.P13230317113716733887

namespace A304505

/-- `Δ[(n+1)*A014642(n)]` -/
def P13230317113716733887.Spec : Prop :=
  ∀ n, P13230317113716733887.a n = A304505 n

theorem P13230317113716733887.correct : P13230317113716733887.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P13230317113716733887.f1, A304505.P13230317113716733887.a, A304505.P6536953699317814335.a, A014642, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-! ## A304505.P14031833077568111880

`2*A277984(n+1)/3`
-/

namespace A304505.P14031833077568111880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A277984 (n + 1) : ℚ) / 3

end

end A304505.P14031833077568111880

namespace A304505

/-- `2*A277984(n+1)/3` -/
def P14031833077568111880.Spec : Prop :=
  ∀ n, P14031833077568111880.a n = (A304505 n : ℚ)

theorem P14031833077568111880.correct : P14031833077568111880.Spec := by
  intro n
  simp only [A304505, Nat.add_sub_cancel, A304505.P14031833077568111880.a, A304505.P6536953699317814335.a, A277984, A277984.P3316908456214339249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304505

/-!
# A304506: a(n) = 2*(3*n+1)*(9*n+8).

The programs for A304506, the canonical program `A304506.P1966474818931232204` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304506 has offset 0).

The definition of A304506 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(3*n+1)*(9*n+8)` (program `A304506.P1966474818931232204`, by `A304506.P1966474818931232204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304506.P1966474818931232204

`2*(3*n+1)*(9*n+8)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304506

/-- `2*(3*n+1)*(9*n+8)` -/
def P1966474818931232204.Spec : Prop :=
  ∀ n, (P1966474818931232204.a n : ℤ) = A304506 n

theorem P1966474818931232204.correct : P1966474818931232204.Spec := by
  intro n
  simp only [A304506]

end A304506

/-! ## A304506.P11055028222361472824

`3*4*∑[ogf((1+8x)/(1-2x+x^2))]+4`
-/

namespace A304506.P11055028222361472824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j)) + 4

end

end A304506.P11055028222361472824

namespace A304506

/-- `3*4*∑[ogf((1+8x)/(1-2x+x^2))]+4` -/
def P11055028222361472824.Spec : Prop :=
  ∀ n, P11055028222361472824.a n = A304506 n

end A304506

/-! ## A304506.P2444311816041764400

`A162940(n)+A016958(n)`
-/

namespace A304506.P2444311816041764400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162940 n + A016958 n

end

end A304506.P2444311816041764400

namespace A304506

/-- `A162940(n)+A016958(n)` -/
def P2444311816041764400.Spec : Prop :=
  ∀ n, P2444311816041764400.a n = A304506 n

theorem P2444311816041764400.correct : P2444311816041764400.Spec := by
  intro n
  simp only [A304506, Nat.add_sub_cancel, A304506.P2444311816041764400.a, A304506.P1966474818931232204.a, A016958, A016958.P743767780414774553.a, A162940, A162940.P6076576400821307123.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304506

/-! ## A304506.P1395945723078481303

`A144449(n)+A045946(n)`
-/

namespace A304506.P1395945723078481303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144449 n + A045946 n

end

end A304506.P1395945723078481303

namespace A304506

/-- `A144449(n)+A045946(n)` -/
def P1395945723078481303.Spec : Prop :=
  ∀ n, P1395945723078481303.a n = A304506 n

theorem P1395945723078481303.correct : P1395945723078481303.Spec := by
  intro n
  simp only [A304506, Nat.add_sub_cancel, A304506.P1395945723078481303.a, A304506.P1966474818931232204.a, A045946, A045946.P9467780037797056746.a, A144449, A144449.P16112728441674391944.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304506

/-! ## A304506.P7541268245687971367

`A146301(n)-A087348(n+1)`
-/

namespace A304506.P7541268245687971367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146301 n - A087348 (n + 1)

end

end A304506.P7541268245687971367

namespace A304506

/-- `A146301(n)-A087348(n+1)` -/
def P7541268245687971367.Spec : Prop :=
  ∀ n, P7541268245687971367.a n = A304506 n

theorem P7541268245687971367.correct : P7541268245687971367.Spec := by
  intro n
  simp only [A304506, Nat.add_sub_cancel, A304506.P7541268245687971367.a, A304506.P1966474818931232204.a, A087348, A087348.P10061918180564744892.a, A146301, A146301.P6561632266534080762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304506

/-! ## A304506.P5808698140234103473

`A304504(n)+A304504(n)/3`
-/

namespace A304506.P5808698140234103473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304504 n : ℚ) + (A304504 n : ℚ) / 3

end

end A304506.P5808698140234103473

namespace A304506

/-- `A304504(n)+A304504(n)/3` -/
def P5808698140234103473.Spec : Prop :=
  ∀ n, P5808698140234103473.a n = (A304506 n : ℚ)

end A304506

/-! ## A304506.P5065916137642649975

`A350522(n)+A008588(n)*A017257(n)`
-/

namespace A304506.P5065916137642649975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350522 n + A008588 n * A017257 n

end

end A304506.P5065916137642649975

namespace A304506

/-- `A350522(n)+A008588(n)*A017257(n)` -/
def P5065916137642649975.Spec : Prop :=
  ∀ n, P5065916137642649975.a n = A304506 n

theorem P5065916137642649975.correct : P5065916137642649975.Spec := by
  intro n
  simp only [A304506, Nat.add_sub_cancel, A304506.P5065916137642649975.a, A304506.P1966474818931232204.a, A008588, A008588.P12386450284809463491.a, A017257, A017257.P3330609659631501478.a, A350522, A350522.P13009567044850805638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304506

/-! ## A304506.P13884664755890138046

`2*A277985(n+1)/3`
-/

namespace A304506.P13884664755890138046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A277985 (n + 1) : ℚ) / 3

end

end A304506.P13884664755890138046

namespace A304506

/-- `2*A277985(n+1)/3` -/
def P13884664755890138046.Spec : Prop :=
  ∀ n, P13884664755890138046.a n = (A304506 n : ℚ)

theorem P13884664755890138046.correct : P13884664755890138046.Spec := by
  intro n
  simp only [A304506, Nat.add_sub_cancel, A304506.P13884664755890138046.a, A304506.P1966474818931232204.a, A277985, A277985.P2867554791482536833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304506

/-! ## A304506.P9182913770070128348

`A008591(n+1)*A016933(n)-A016933(n)`
-/

namespace A304506.P9182913770070128348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (n + 1) * A016933 n - A016933 n

end

end A304506.P9182913770070128348

namespace A304506

/-- `A008591(n+1)*A016933(n)-A016933(n)` -/
def P9182913770070128348.Spec : Prop :=
  ∀ n, P9182913770070128348.a n = A304506 n

theorem P9182913770070128348.correct : P9182913770070128348.Spec := by
  intro n
  simp only [A304506, Nat.add_sub_cancel, A304506.P9182913770070128348.a, A304506.P1966474818931232204.a, A008591, A008591.P8937864482545511630.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304506

/-! ## A304506.P16186498953669684928

`A153808(n+1)+A153808(n+1)+A033580(n)`
-/

namespace A304506.P16186498953669684928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153808 (n + 1) + (A153808 (n + 1) + A033580 n)

end

end A304506.P16186498953669684928

namespace A304506

/-- `A153808(n+1)+A153808(n+1)+A033580(n)` -/
def P16186498953669684928.Spec : Prop :=
  ∀ n, P16186498953669684928.a n = A304506 n

theorem P16186498953669684928.correct : P16186498953669684928.Spec := by
  intro n
  simp only [A304506, Nat.add_sub_cancel, A304506.P16186498953669684928.a, A304506.P1966474818931232204.a, A033580, A033580.P10508890947649140634.a, A153808, A153808.P12582623721954130915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304506

/-! ## A304506.P17288405824189807181

`A022289(2*n+1)-A139273(n)`
-/

namespace A304506.P17288405824189807181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022289 (2 * n + 1) - A139273 n

end

end A304506.P17288405824189807181

namespace A304506

/-- `A022289(2*n+1)-A139273(n)` -/
def P17288405824189807181.Spec : Prop :=
  ∀ n, P17288405824189807181.a n = A304506 n

end A304506

/-! ## A304506.P1064614105266895277

`12*∑[A016777(3*n)]+4`
-/

namespace A304506.P1064614105266895277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (∑ j ∈ Finset.range (n + 1), f1 j) + 4

end

end A304506.P1064614105266895277

namespace A304506

/-- `12*∑[A016777(3*n)]+4` -/
def P1064614105266895277.Spec : Prop :=
  ∀ n, P1064614105266895277.a n = A304506 n

end A304506

/-! ## A304506.P4144765427640279391

`A033579(A016789(n))-4`
-/

namespace A304506.P4144765427640279391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 (A016789 n).toNat - 4

end

end A304506.P4144765427640279391

namespace A304506

/-- `A033579(A016789(n))-4` -/
def P4144765427640279391.Spec : Prop :=
  ∀ n, P4144765427640279391.a n = A304506 n

end A304506

/-! ## A304506.P3841380834928646246

`A139267(A016789(n))+A008588(n)`
-/

namespace A304506.P3841380834928646246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 (A016789 n).toNat + A008588 n

end

end A304506.P3841380834928646246

namespace A304506

/-- `A139267(A016789(n))+A008588(n)` -/
def P3841380834928646246.Spec : Prop :=
  ∀ n, P3841380834928646246.a n = A304506 n

end A304506

/-! ## A304506.P1772073469347014746

`A033566(A016789(n))-A157889(n+1)`
-/

namespace A304506.P1772073469347014746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033566 (A016789 n).toNat - A157889 (n + 1)

end

end A304506.P1772073469347014746

namespace A304506

/-- `A033566(A016789(n))-A157889(n+1)` -/
def P1772073469347014746.Spec : Prop :=
  ∀ n, P1772073469347014746.a n = A304506 n

end A304506

/-! ## A304506.P9915969807276157975

`A140091(2*A016777(n))+A016777(n)`
-/

namespace A304506.P9915969807276157975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 (2 * A016777 n).toNat + A016777 n

end

end A304506.P9915969807276157975

namespace A304506

/-- `A140091(2*A016777(n))+A016777(n)` -/
def P9915969807276157975.Spec : Prop :=
  ∀ n, P9915969807276157975.a n = A304506 n

end A304506

/-!
# A304507: a(n) = 5*(n+1)*(9*n+4).

The programs for A304507, the canonical program `A304507.P2043159239201823645` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304507 has offset 0).

The definition of A304507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+1)*(9*n+4)` (program `A304507.P2043159239201823645`, by `A304507.P2043159239201823645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304507.P2043159239201823645

`5*(n+1)*(9*n+4)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304507

/-- `5*(n+1)*(9*n+4)` -/
def P2043159239201823645.Spec : Prop :=
  ∀ n, (P2043159239201823645.a n : ℤ) = A304507 n

theorem P2043159239201823645.correct : P2043159239201823645.Spec := by
  intro n
  simp only [A304507]

end A304507

/-! ## A304507.P968779130289351073

`∑[a(n-1)+90]` with `a(0)=20`
-/

namespace A304507.P968779130289351073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [20] fun n f1 =>
  f1 (n - 1) + 90

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304507.P968779130289351073

namespace A304507

/-- `∑[a(n-1)+90]` -/
def P968779130289351073.Spec : Prop :=
  ∀ n, (P968779130289351073.a n : ℤ) = A304507 n

end A304507

/-! ## A304507.P16185346183805574411

`∑[2*A139610(n)]`
-/

namespace A304507.P16185346183805574411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304507.P16185346183805574411

namespace A304507

/-- `∑[2*A139610(n)]` -/
def P16185346183805574411.Spec : Prop :=
  ∀ n, P16185346183805574411.a n = A304507 n

end A304507

/-! ## A304507.P3920325960366207249

`∑[5*A350521(n)]`
-/

namespace A304507.P3920325960366207249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A350521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304507.P3920325960366207249

namespace A304507

/-- `∑[5*A350521(n)]` -/
def P3920325960366207249.Spec : Prop :=
  ∀ n, P3920325960366207249.a n = A304507 n

end A304507

/-! ## A304507.P2052221712334592424

`2*A304505(n)-A304503(n)`
-/

namespace A304507.P2052221712334592424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304505 n - A304503 n

end

end A304507.P2052221712334592424

namespace A304507

/-- `2*A304505(n)-A304503(n)` -/
def P2052221712334592424.Spec : Prop :=
  ∀ n, P2052221712334592424.a n = A304507 n

theorem P2052221712334592424.correct : P2052221712334592424.Spec := by
  intro n
  simp only [A304507, Nat.add_sub_cancel, A304507.P2052221712334592424.a, A304507.P2043159239201823645.a, A304503, A304503.P4104484190920118502.a, A304505, A304505.P6536953699317814335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304507

/-! ## A304507.P16418620343820175263

`A017041(n)²-(A017041(n)+A002939(n))`
-/

namespace A304507.P16418620343820175263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n ^ 2 - (A017041 n + A002939 n)

end

end A304507.P16418620343820175263

namespace A304507

/-- `A017041(n)²-(A017041(n)+A002939(n))` -/
def P16418620343820175263.Spec : Prop :=
  ∀ n, P16418620343820175263.a n = A304507 n

theorem P16418620343820175263.correct : P16418620343820175263.Spec := by
  intro n
  simp only [A304507, Nat.add_sub_cancel, A304507.P16418620343820175263.a, A304507.P2043159239201823645.a, A002939, A002939.P11095602872349887610.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304507

/-! ## A304507.P12209826911683246007

`Δ[(n+1)*A153780(n)]`
-/

namespace A304507.P12209826911683246007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A153780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304507.P12209826911683246007

namespace A304507

/-- `Δ[(n+1)*A153780(n)]` -/
def P12209826911683246007.Spec : Prop :=
  ∀ n, P12209826911683246007.a n = A304507 n

theorem P12209826911683246007.correct : P12209826911683246007.Spec := by
  intro n
  simp only [A304507, Nat.add_sub_cancel, A304507.P12209826911683246007.f1, A304507.P12209826911683246007.a, A304507.P2043159239201823645.a, A153780, A153780.P13444899708151239759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304507

/-! ## A304507.P15094805948603253957

`A062708(n+1)+A304505(n)+A062708(n+1)`
-/

namespace A304507.P15094805948603253957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 (n + 1) + (A304505 n + A062708 (n + 1))

end

end A304507.P15094805948603253957

namespace A304507

/-- `A062708(n+1)+A304505(n)+A062708(n+1)` -/
def P15094805948603253957.Spec : Prop :=
  ∀ n, P15094805948603253957.a n = A304507 n

end A304507

/-! ## A304507.P16482087815305691201

`∑[A345339(5*n)]`
-/

namespace A304507.P16482087815305691201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345339 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304507.P16482087815305691201

namespace A304507

/-- `∑[A345339(5*n)]` -/
def P16482087815305691201.Spec : Prop :=
  ∀ n, P16482087815305691201.a n = A304507 n

end A304507

/-!
# A304508: a(n) = 5*(3*n+1)*(9*n+8)/2 (n>=0).

The programs for A304508, the canonical program `A304508.P9369113080673738601` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304508 has offset 0).

The definition of A304508 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(3*n+1)*(9*n+8)/2` (program `A304508.P203755605593583534`, by `A304508.P203755605593583534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304508.P203755605593583534

`5*(3*n+1)*(9*n+8)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304508.P203755605593583534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (3 * n + 1) * (9 * n + 8) : ℚ) / 2

end

end A304508.P203755605593583534

namespace A304508

/-- `5*(3*n+1)*(9*n+8)/2` -/
def P203755605593583534.Spec : Prop :=
  ∀ n, P203755605593583534.a n = (A304508 n : ℚ)

theorem P203755605593583534.correct : P203755605593583534.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A304508, Nat.add_sub_cancel, A304508.P203755605593583534.a, A304508.P9369113080673738601.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A304508, Nat.add_sub_cancel, A304508.P203755605593583534.a, A304508.P9369113080673738601.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304508

/-! ## A304508.P9369113080673738601

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=20, a(1)=170, a(2)=455`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304508

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P9369113080673738601.Spec : Prop :=
  ∀ n, P9369113080673738601.a n = A304508 n

theorem P9369113080673738601.correct : P9369113080673738601.Spec := by
  intro n
  simp only [A304508]

end A304508

/-! ## A304508.P1622214917713161310

`3*5*∑[ogf((1+8x)/(1-2x+x^2))]+5`
-/

namespace A304508.P1622214917713161310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (5 * (∑ j ∈ Finset.range (n + 1), f1 j)) + 5

end

end A304508.P1622214917713161310

namespace A304508

/-- `3*5*∑[ogf((1+8x)/(1-2x+x^2))]+5` -/
def P1622214917713161310.Spec : Prop :=
  ∀ n, P1622214917713161310.a n = A304508 n

end A304508

/-! ## A304508.P10699456664615682942

`5/3*A304504(n)`
-/

namespace A304508.P10699456664615682942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A304504 n : ℚ)

end

end A304508.P10699456664615682942

namespace A304508

/-- `5/3*A304504(n)` -/
def P10699456664615682942.Spec : Prop :=
  ∀ n, P10699456664615682942.a n = (A304508 n : ℚ)

end A304508

/-! ## A304508.P15095935907251963679

`5/4*A304506(n)`
-/

namespace A304508.P15095935907251963679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A304506 n : ℚ)

end

end A304508.P15095935907251963679

namespace A304508

/-- `5/4*A304506(n)` -/
def P15095935907251963679.Spec : Prop :=
  ∀ n, P15095935907251963679.a n = (A304508 n : ℚ)

theorem P15095935907251963679.correct : P15095935907251963679.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A304508, Nat.add_sub_cancel, A304508.P15095935907251963679.a, A304508.P9369113080673738601.a, A304506, A304506.P1966474818931232204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A304508, Nat.add_sub_cancel, A304508.P15095935907251963679.a, A304508.P9369113080673738601.a, A304506, A304506.P1966474818931232204.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A304508

/-! ## A304508.P12953466336806771936

`A177073(n)-A268351(n)`
-/

namespace A304508.P12953466336806771936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177073 n - A268351 n

end

end A304508.P12953466336806771936

namespace A304508

/-- `A177073(n)-A268351(n)` -/
def P12953466336806771936.Spec : Prop :=
  ∀ n, P12953466336806771936.a n = A304508 n

end A304508

/-! ## A304508.P11592631562230672142

`2*A304506(n)-A304504(n)`
-/

namespace A304508.P11592631562230672142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304506 n - A304504 n

end

end A304508.P11592631562230672142

namespace A304508

/-- `2*A304506(n)-A304504(n)` -/
def P11592631562230672142.Spec : Prop :=
  ∀ n, P11592631562230672142.a n = A304508 n

end A304508

/-! ## A304508.P9035183031234195250

`A152734(3*n+2)-5`
-/

namespace A304508.P9035183031234195250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152734 (3 * n + 2) - 5

end

end A304508.P9035183031234195250

namespace A304508

/-- `A152734(3*n+2)-5` -/
def P9035183031234195250.Spec : Prop :=
  ∀ n, P9035183031234195250.a n = A304508 n

end A304508

/-! ## A304508.P15946852057570040025

`A064226(4*n+2)-A064226(n+1)`
-/

namespace A304508.P15946852057570040025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064226 (4 * n + 2) - A064226 (n + 1)

end

end A304508.P15946852057570040025

namespace A304508

/-- `A064226(4*n+2)-A064226(n+1)` -/
def P15946852057570040025.Spec : Prop :=
  ∀ n, P15946852057570040025.a n = A304508 n

end A304508

/-!
# A304509: a(n) = 63*2^n - 39 (n>=1).

The programs for A304509, the canonical program `A304509.P14670427177461202283` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304509 has offset 1).

The definition of A304509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `63*2^(n+1)-39` (program `A304509.P14670427177461202283`, by `A304509.P14670427177461202283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304509.P14670427177461202283

`63*2^(n+1)-39`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304509

/-- `63*2^(n+1)-39` -/
def P14670427177461202283.Spec : Prop :=
  ∀ n, P14670427177461202283.a n = A304509 (n + 1)

theorem P14670427177461202283.correct : P14670427177461202283.Spec := by
  intro n
  simp only [A304509, Nat.add_sub_cancel]

end A304509

/-! ## A304509.P15189011530917431483

`3*(A182465(n)+1)`
-/

namespace A304509.P15189011530917431483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A182465 n + 1)

end

end A304509.P15189011530917431483

namespace A304509

/-- `3*(A182465(n)+1)` -/
def P15189011530917431483.Spec : Prop :=
  ∀ n, P15189011530917431483.a n = A304509 (n + 1)

end A304509

/-! ## A304509.P4134114899031175919

`3*(A305158(n+1)+2)`
-/

namespace A304509.P4134114899031175919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A305158 (n + 1) + 2)

end

end A304509.P4134114899031175919

namespace A304509

/-- `3*(A305158(n+1)+2)` -/
def P4134114899031175919.Spec : Prop :=
  ∀ n, P4134114899031175919.a n = A304509 (n + 1)

theorem P4134114899031175919.correct : P4134114899031175919.Spec := by
  intro n
  simp only [A304509, Nat.add_sub_cancel, A304509.P4134114899031175919.a, A304509.P14670427177461202283.a, A305158, A305158.P8022986441186121754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304509

/-! ## A304509.P16349549925323595760

`A017017(A089143(n+1))`
-/

namespace A304509.P16349549925323595760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (A089143 (n + 1)).toNat

end

end A304509.P16349549925323595760

namespace A304509

/-- `A017017(A089143(n+1))` -/
def P16349549925323595760.Spec : Prop :=
  ∀ n, P16349549925323595760.a n = A304509 (n + 1)

end A304509

/-! ## A304509.P12632417051052673079

`A179805(A156127(n+1))`
-/

namespace A304509.P12632417051052673079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (A156127 (n + 1)).toNat

end

end A304509.P12632417051052673079

namespace A304509

/-- `A179805(A156127(n+1))` -/
def P12632417051052673079.Spec : Prop :=
  ∀ n, P12632417051052673079.a n = A304509 (n + 1)

end A304509

/-!
# A304510: a(n) = 69*2^n - 42 (n>=1).

The programs for A304510, the canonical program `A304510.P6092757922738883938` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304510 has offset 1).

The definition of A304510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `69*2^(n+1)-42` (program `A304510.P6092757922738883938`, by `A304510.P6092757922738883938.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304510.P6092757922738883938

`69*2^(n+1)-42`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304510

/-- `69*2^(n+1)-42` -/
def P6092757922738883938.Spec : Prop :=
  ∀ n, P6092757922738883938.a n = A304510 (n + 1)

theorem P6092757922738883938.correct : P6092757922738883938.Spec := by
  intro n
  simp only [A304510, Nat.add_sub_cancel]

end A304510

/-! ## A304510.P12780066476092231963

`2*(a(n-1)+21)` with `a(0)=96`
-/

namespace A304510.P12780066476092231963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [96] fun n a =>
  2 * (a (n - 1) + 21)

end

end A304510.P12780066476092231963

namespace A304510

/-- `2*(a(n-1)+21)` -/
def P12780066476092231963.Spec : Prop :=
  ∀ n, (P12780066476092231963.a n : ℤ) = A304510 (n + 1)

theorem P12780066476092231963.correct : P12780066476092231963.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A304510, Nat.add_sub_cancel, A304510.P12780066476092231963.a, A304510.P6092757922738883938.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A304510, Nat.add_sub_cancel, A304510.P12780066476092231963.a, A304510.P6092757922738883938.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304510

/-! ## A304510.P9795229643210278094

`3*(Δ[ogf((7+7x+4x^2)/(1-4x+5x^2-2x^3))]+4)`
-/

namespace A304510.P9795229643210278094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 7, 4] [1, -4, 5, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n + 4)

end

end A304510.P9795229643210278094

namespace A304510

/-- `3*(Δ[ogf((7+7x+4x^2)/(1-4x+5x^2-2x^3))]+4)` -/
def P9795229643210278094.Spec : Prop :=
  ∀ n, P9795229643210278094.a n = A304510 (n + 1)

end A304510

/-! ## A304510.P17421253193931534591

`3*(A182467(n)-A028399(n+3))`
-/

namespace A304510.P17421253193931534591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A182467 n - A028399 (n + 3))

end

end A304510.P17421253193931534591

namespace A304510

/-- `3*(A182467(n)-A028399(n+3))` -/
def P17421253193931534591.Spec : Prop :=
  ∀ n, P17421253193931534591.a n = A304510 (n + 1)

end A304510

/-! ## A304510.P12155645560219788245

`3*(A182465(n)+Δ[A028399(n+2)])`
-/

namespace A304510.P12155645560219788245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028399 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A182465 n + (f1 (n + 1) - f1 n))

end

end A304510.P12155645560219788245

namespace A304510

/-- `3*(A182465(n)+Δ[A028399(n+2)])` -/
def P12155645560219788245.Spec : Prop :=
  ∀ n, P12155645560219788245.a n = A304510 (n + 1)

end A304510

/-! ## A304510.P2734186010046002078

`3*(A005010(n+1)+∑[A005009(n+1)])`
-/

namespace A304510.P2734186010046002078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A005010 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304510.P2734186010046002078

namespace A304510

/-- `3*(A005010(n+1)+∑[A005009(n+1)])` -/
def P2734186010046002078.Spec : Prop :=
  ∀ n, P2734186010046002078.a n = A304510 (n + 1)

end A304510

/-!
# A304511: a(n) = 318*2^n - 186 (n>=1).

The programs for A304511, the canonical program `A304511.P4340028095674416188` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304511 has offset 1).

The definition of A304511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `318*2^(n+1)-186` (program `A304511.P4340028095674416188`, by `A304511.P4340028095674416188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304511.P4340028095674416188

`318*2^(n+1)-186`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304511

/-- `318*2^(n+1)-186` -/
def P4340028095674416188.Spec : Prop :=
  ∀ n, P4340028095674416188.a n = A304511 (n + 1)

theorem P4340028095674416188.correct : P4340028095674416188.Spec := by
  intro n
  simp only [A304511, Nat.add_sub_cancel]

end A304511

/-! ## A304511.P11258840894430038881

`∑[2*a(n-1)]` with `a(0)=450, a(1)=636`
-/

namespace A304511.P11258840894430038881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [450, 636] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304511.P11258840894430038881

namespace A304511

/-- `∑[2*a(n-1)]` -/
def P11258840894430038881.Spec : Prop :=
  ∀ n, (P11258840894430038881.a n : ℤ) = A304511 (n + 1)

end A304511

/-! ## A304511.P4360310924809172621

`6*(A304510(n+1)-A304517(n+1))`
-/

namespace A304511.P4360310924809172621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A304510 (n + 1) - A304517 (n + 1))

end

end A304511.P4360310924809172621

namespace A304511

/-- `6*(A304510(n+1)-A304517(n+1))` -/
def P4360310924809172621.Spec : Prop :=
  ∀ n, P4360310924809172621.a n = A304511 (n + 1)

theorem P4360310924809172621.correct : P4360310924809172621.Spec := by
  intro n
  simp only [A304511, Nat.add_sub_cancel, A304511.P4360310924809172621.a, A304511.P4340028095674416188.a, A304510, A304510.P6092757922738883938.a, A304517, A304517.P10519424751215155361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304511

/-!
# A304512: a(n) = 366*2^n - 204 (n >= 1).

The programs for A304512, the canonical program `A304512.P654848810987158978` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304512 has offset 1).

The definition of A304512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `366*2^(n+1)-204` (program `A304512.P654848810987158978`, by `A304512.P654848810987158978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304512.P654848810987158978

`366*2^(n+1)-204`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304512

/-- `366*2^(n+1)-204` -/
def P654848810987158978.Spec : Prop :=
  ∀ n, P654848810987158978.a n = A304512 (n + 1)

theorem P654848810987158978.correct : P654848810987158978.Spec := by
  intro n
  simp only [A304512, Nat.add_sub_cancel]

end A304512

/-! ## A304512.P2361255039632937526

`6*(A304510(n+1)-A159741(n+1))`
-/

namespace A304512.P2361255039632937526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A304510 (n + 1) - A159741 (n + 1))

end

end A304512.P2361255039632937526

namespace A304512

/-- `6*(A304510(n+1)-A159741(n+1))` -/
def P2361255039632937526.Spec : Prop :=
  ∀ n, P2361255039632937526.a n = A304512 (n + 1)

theorem P2361255039632937526.correct : P2361255039632937526.Spec := by
  intro n
  simp only [A304512, Nat.add_sub_cancel, A304512.P2361255039632937526.a, A304512.P654848810987158978.a, A159741, A159741.P12178551765370653186.a, A304510, A304510.P6092757922738883938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304512

/-!
# A304513: a(n) = 57*2^(n-1) - 38 (n >= 1).

The programs for A304513, the canonical program `A304513.P16006271646380684943` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304513 has offset 1).

The definition of A304513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `57*2^n-38` (program `A304513.P16006271646380684943`, by `A304513.P16006271646380684943.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304513.P16006271646380684943

`57*2^n-38`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304513

/-- `57*2^n-38` -/
def P16006271646380684943.Spec : Prop :=
  ∀ n, P16006271646380684943.a n = A304513 (n + 1)

theorem P16006271646380684943.correct : P16006271646380684943.Spec := by
  intro n
  simp only [A304513, Nat.add_sub_cancel]

end A304513

/-! ## A304513.P16221776701462431659

`ogf((19+19x)/(1-3x+2x^2))`
-/

namespace A304513.P16221776701462431659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [19, 19] [1, -3, 2] n

end

end A304513.P16221776701462431659

namespace A304513

/-- `ogf((19+19x)/(1-3x+2x^2))` -/
def P16221776701462431659.Spec : Prop :=
  ∀ n, P16221776701462431659.a n = A304513 (n + 1)

end A304513

/-! ## A304513.P2322549764395369578

`2*(a(n-1)+19)` with `a(0)=19`
-/

namespace A304513.P2322549764395369578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [19] fun n a =>
  2 * (a (n - 1) + 19)

end

end A304513.P2322549764395369578

namespace A304513

/-- `2*(a(n-1)+19)` -/
def P2322549764395369578.Spec : Prop :=
  ∀ n, (P2322549764395369578.a n : ℤ) = A304513 (n + 1)

theorem P2322549764395369578.correct : P2322549764395369578.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A304513, Nat.add_sub_cancel, A304513.P2322549764395369578.a, A304513.P16006271646380684943.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A304513, Nat.add_sub_cancel, A304513.P2322549764395369578.a, A304513.P16006271646380684943.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304513

/-! ## A304513.P3705160901778263208

`∑[19*A003945(n)]`
-/

namespace A304513.P3705160901778263208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304513.P3705160901778263208

namespace A304513

/-- `∑[19*A003945(n)]` -/
def P3705160901778263208.Spec : Prop :=
  ∀ n, P3705160901778263208.a n = A304513 (n + 1)

end A304513

/-! ## A304513.P7315969112133880348

`A040342(n)*A083329(n)`
-/

namespace A304513.P7315969112133880348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040342 n * A083329 n

end

end A304513.P7315969112133880348

namespace A304513

/-- `A040342(n)*A083329(n)` -/
def P7315969112133880348.Spec : Prop :=
  ∀ n, P7315969112133880348.a n = A304513 (n + 1)

end A304513

/-!
# A304514: a(n) = 33*2^n - 45 (n>=1).

The programs for A304514, the canonical program `A304514.P7969758296583450091` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304514 has offset 1).

The definition of A304514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `33*2^(n+1)-45` (program `A304514.P7969758296583450091`, by `A304514.P7969758296583450091.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304514.P7969758296583450091

`33*2^(n+1)-45`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304514

/-- `33*2^(n+1)-45` -/
def P7969758296583450091.Spec : Prop :=
  ∀ n, P7969758296583450091.a n = A304514 (n + 1)

theorem P7969758296583450091.correct : P7969758296583450091.Spec := by
  intro n
  simp only [A304514, Nat.add_sub_cancel]

end A304514

/-! ## A304514.P12748130577561500198

`ogf((21+24x)/(1-3x+2x^2))`
-/

namespace A304514.P12748130577561500198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, 24] [1, -3, 2] n

end

end A304514.P12748130577561500198

namespace A304514

/-- `ogf((21+24x)/(1-3x+2x^2))` -/
def P12748130577561500198.Spec : Prop :=
  ∀ n, P12748130577561500198.a n = A304514 (n + 1)

end A304514

/-! ## A304514.P8709613101632917944

`A017509(A048488(n))`
-/

namespace A304514.P8709613101632917944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (A048488 n).toNat

end

end A304514.P8709613101632917944

namespace A304514

/-- `A017509(A048488(n))` -/
def P8709613101632917944.Spec : Prop :=
  ∀ n, P8709613101632917944.a n = A304514 (n + 1)

end A304514

/-! ## A304514.P13175403554036474908

`A130490(A068293(n+2))`
-/

namespace A304514.P13175403554036474908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130490 (A068293 (n + 2)).toNat

end

end A304514.P13175403554036474908

namespace A304514

/-- `A130490(A068293(n+2))` -/
def P13175403554036474908.Spec : Prop :=
  ∀ n, P13175403554036474908.a n = A304514 (n + 1)

end A304514

/-!
# A304515: a(n) = 159*2^n - 222 (n>=1).

The programs for A304515, the canonical program `A304515.P16412465310416182718` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304515 has offset 1).

The definition of A304515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `159*2^(n+1)-222` (program `A304515.P16412465310416182718`, by `A304515.P16412465310416182718.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304515.P16412465310416182718

`159*2^(n+1)-222`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304515

/-- `159*2^(n+1)-222` -/
def P16412465310416182718.Spec : Prop :=
  ∀ n, P16412465310416182718.a n = A304515 (n + 1)

theorem P16412465310416182718.correct : P16412465310416182718.Spec := by
  intro n
  simp only [A304515, Nat.add_sub_cancel]

end A304515

/-! ## A304515.P3346662222241919522

`A304614(n+3)%Δ[A304615(n)]`
-/

namespace A304515.P3346662222241919522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304614 (n + 3)) (f1 (n + 1) - f1 n)

end

end A304515.P3346662222241919522

namespace A304515

/-- `A304614(n+3)%Δ[A304615(n)]` -/
def P3346662222241919522.Spec : Prop :=
  ∀ n, P3346662222241919522.a n = A304515 (n + 1)

end A304515

/-!
# A304516: a(n) = 192*2^n - 273 (n>=1).

The programs for A304516, the canonical program `A304516.P18359716283689146578` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304516 has offset 1).

The definition of A304516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `192*2^(n+1)-273` (program `A304516.P18359716283689146578`, by `A304516.P18359716283689146578.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304516.P18359716283689146578

`192*2^(n+1)-273`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304516

/-- `192*2^(n+1)-273` -/
def P18359716283689146578.Spec : Prop :=
  ∀ n, P18359716283689146578.a n = A304516 (n + 1)

theorem P18359716283689146578.correct : P18359716283689146578.Spec := by
  intro n
  simp only [A304516, Nat.add_sub_cancel]

end A304516

/-! ## A304516.P17139897491470546490

`A153973(n+13)%(A175161(n+6)-A000225(n+7))`
-/

namespace A304516.P17139897491470546490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153973 (n + 13)) (A175161 (n + 6) - A000225 (n + 7))

end

end A304516.P17139897491470546490

namespace A304516

/-- `A153973(n+13)%(A175161(n+6)-A000225(n+7))` -/
def P17139897491470546490.Spec : Prop :=
  ∀ n, P17139897491470546490.a n = A304516 (n + 1)

end A304516

/-! ## A304516.P2452583222654779651

`A125169(A305163(n))`
-/

namespace A304516.P2452583222654779651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (A305163 n).toNat

end

end A304516.P2452583222654779651

namespace A304516

/-- `A125169(A305163(n))` -/
def P2452583222654779651.Spec : Prop :=
  ∀ n, P2452583222654779651.a n = A304516 (n + 1)

end A304516

/-! ## A304516.P936506673000994897

`A092899(A036564(n+6))`
-/

namespace A304516.P936506673000994897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 (A036564 (n + 6)).toNat

end

end A304516.P936506673000994897

namespace A304516

/-- `A092899(A036564(n+6))` -/
def P936506673000994897.Spec : Prop :=
  ∀ n, P936506673000994897.a n = A304516 (n + 1)

end A304516

/-!
# A304517: a(n) = 16*2^n - 11 (n>=1).

The programs for A304517, the canonical program `A304517.P10519424751215155361` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304517 has offset 1).

The definition of A304517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*2^(n+1)-11` (program `A304517.P10519424751215155361`, by `A304517.P10519424751215155361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304517.P10519424751215155361

`16*2^(n+1)-11`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304517

/-- `16*2^(n+1)-11` -/
def P10519424751215155361.Spec : Prop :=
  ∀ n, P10519424751215155361.a n = A304517 (n + 1)

theorem P10519424751215155361.correct : P10519424751215155361.Spec := by
  intro n
  simp only [A304517, Nat.add_sub_cancel]

end A304517

/-! ## A304517.P9937483487585844138

`ogf((21-10x)/(1-3x+2x^2))`
-/

namespace A304517.P9937483487585844138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, -10] [1, -3, 2] n

end

end A304517.P9937483487585844138

namespace A304517

/-- `ogf((21-10x)/(1-3x+2x^2))` -/
def P9937483487585844138.Spec : Prop :=
  ∀ n, P9937483487585844138.a n = A304517 (n + 1)

end A304517

/-! ## A304517.P3960236950231238598

`or(5, ∑[2^(n+4)])`
-/

namespace A304517.P3960236950231238598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304517.P3960236950231238598

namespace A304517

/-- `or(5, ∑[2^(n+4)])` -/
def P3960236950231238598.Spec : Prop :=
  ∀ n, (P3960236950231238598.a n : ℤ) = A304517 (n + 1)

end A304517

/-! ## A304517.P2739970676891290318

`xor(5, ∑[2^(n+4)])`
-/

namespace A304517.P2739970676891290318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304517.P2739970676891290318

namespace A304517

/-- `xor(5, ∑[2^(n+4)])` -/
def P2739970676891290318.Spec : Prop :=
  ∀ n, (P2739970676891290318.a n : ℤ) = A304517 (n + 1)

end A304517

/-! ## A304517.P17375174700107730757

`∑[2*a(n-1)]` with `a(0)=21, a(1)=32`
-/

namespace A304517.P17375174700107730757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 32] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304517.P17375174700107730757

namespace A304517

/-- `∑[2*a(n-1)]` -/
def P17375174700107730757.Spec : Prop :=
  ∀ n, (P17375174700107730757.a n : ℤ) = A304517 (n + 1)

end A304517

/-! ## A304517.P17944654700310739688

`A164096(2*n+3)`
-/

namespace A304517.P17944654700310739688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164096 (2 * n + 3)

end

end A304517.P17944654700310739688

namespace A304517

/-- `A164096(2*n+3)` -/
def P17944654700310739688.Spec : Prop :=
  ∀ n, P17944654700310739688.a n = A304517 (n + 1)

end A304517

/-! ## A304517.P9332038304293343276

`abs(3-A159741(n+2))`
-/

namespace A304517.P9332038304293343276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A159741 (n + 2)|

end

end A304517.P9332038304293343276

namespace A304517

/-- `abs(3-A159741(n+2))` -/
def P9332038304293343276.Spec : Prop :=
  ∀ n, P9332038304293343276.a n = A304517 (n + 1)

end A304517

/-! ## A304517.P10374028627951633382

`(A059153(n+1)-A007283(n))/A000079(n)`
-/

namespace A304517.P10374028627951633382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059153 (n + 1) - A007283 n : ℚ) / (A000079 n : ℚ)

end

end A304517.P10374028627951633382

namespace A304517

/-- `(A059153(n+1)-A007283(n))/A000079(n)` -/
def P10374028627951633382.Spec : Prop :=
  ∀ n, P10374028627951633382.a n = (A304517 (n + 1) : ℚ)

theorem P10374028627951633382.correct : P10374028627951633382.Spec := by
  intro n
  simp only [A304517, Nat.add_sub_cancel, A304517.P10374028627951633382.a, A304517.P10519424751215155361.a, A000079, A000079.P10855139691139572931.a, A007283, A007283.P7218590649391847614.a, A059153, A059153.P18154160339219698843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304517

/-!
# A304518: a(n) = 68*2^n - 50 (n>=1).

The programs for A304518, the canonical program `A304518.P6658543623352185687` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304518 has offset 1).

The definition of A304518 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `68*2^(n+1)-50` (program `A304518.P6658543623352185687`, by `A304518.P6658543623352185687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304518.P6658543623352185687

`68*2^(n+1)-50`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304518

/-- `68*2^(n+1)-50` -/
def P6658543623352185687.Spec : Prop :=
  ∀ n, P6658543623352185687.a n = A304518 (n + 1)

theorem P6658543623352185687.correct : P6658543623352185687.Spec := by
  intro n
  simp only [A304518, Nat.add_sub_cancel]

end A304518

/-! ## A304518.P11210073983975570417

`2*(a(n-1)+25)` with `a(0)=86`
-/

namespace A304518.P11210073983975570417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [86] fun n a =>
  2 * (a (n - 1) + 25)

end

end A304518.P11210073983975570417

namespace A304518

/-- `2*(a(n-1)+25)` -/
def P11210073983975570417.Spec : Prop :=
  ∀ n, (P11210073983975570417.a n : ℤ) = A304518 (n + 1)

theorem P11210073983975570417.correct : P11210073983975570417.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A304518, Nat.add_sub_cancel, A304518.P11210073983975570417.a, A304518.P6658543623352185687.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A304518, Nat.add_sub_cancel, A304518.P11210073983975570417.a, A304518.P6658543623352185687.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304518

/-! ## A304518.P17830181339809644142

`lcm(2, A305156(n)+28)`
-/

namespace A304518.P17830181339809644142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A305156 n + 28)

end

end A304518.P17830181339809644142

namespace A304518

/-- `lcm(2, A305156(n)+28)` -/
def P17830181339809644142.Spec : Prop :=
  ∀ n, (P17830181339809644142.a n : ℤ) = A304518 (n + 1)

end A304518

/-! ## A304518.P10127413016788593099

`(A305156(n)+28)*A008833(A204455(n+1))`
-/

namespace A304518.P10127413016788593099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A305156 n + 28) * A008833 (A204455 (n + 1)).toNat

end

end A304518.P10127413016788593099

namespace A304518

/-- `(A305156(n)+28)*A008833(A204455(n+1))` -/
def P10127413016788593099.Spec : Prop :=
  ∀ n, P10127413016788593099.a n = A304518 (n + 1)

end A304518

/-! ## A304518.P3622275122916531459

`xor(6, A305165(n+1)/2)`
-/

namespace A304518.P3622275122916531459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (SequenceMachineLib.roundAway ((A305165 (n + 1) : ℚ) / 2))

end

end A304518.P3622275122916531459

namespace A304518

/-- `xor(6, A305165(n+1)/2)` -/
def P3622275122916531459.Spec : Prop :=
  ∀ n, P3622275122916531459.a n = A304518 (n + 1)

end A304518

/-!
# A304519: a(n) = 72*2^n - 56 (n>=1).

The programs for A304519, the canonical program `A304519.P8311426515981246575` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304519 has offset 1).

The definition of A304519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `72*2^(n+1)-56` (program `A304519.P8311426515981246575`, by `A304519.P8311426515981246575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304519.P8311426515981246575

`72*2^(n+1)-56`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304519

/-- `72*2^(n+1)-56` -/
def P8311426515981246575.Spec : Prop :=
  ∀ n, P8311426515981246575.a n = A304519 (n + 1)

theorem P8311426515981246575.correct : P8311426515981246575.Spec := by
  intro n
  simp only [A304519, Nat.add_sub_cancel]

end A304519

/-! ## A304519.P14778111830475355468

`2*(a(n-1)+28)` with `a(0)=88`
-/

namespace A304519.P14778111830475355468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [88] fun n a =>
  2 * (a (n - 1) + 28)

end

end A304519.P14778111830475355468

namespace A304519

/-- `2*(a(n-1)+28)` -/
def P14778111830475355468.Spec : Prop :=
  ∀ n, (P14778111830475355468.a n : ℤ) = A304519 (n + 1)

theorem P14778111830475355468.correct : P14778111830475355468.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A304519, Nat.add_sub_cancel, A304519.P14778111830475355468.a, A304519.P8311426515981246575.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A304519, Nat.add_sub_cancel, A304519.P14778111830475355468.a, A304519.P8311426515981246575.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304519

/-! ## A304519.P5367683294019479404

`4*(A182464(n)-2)`
-/

namespace A304519.P5367683294019479404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A182464 n - 2)

end

end A304519.P5367683294019479404

namespace A304519

/-- `4*(A182464(n)-2)` -/
def P5367683294019479404.Spec : Prop :=
  ∀ n, P5367683294019479404.a n = A304519 (n + 1)

end A304519

/-! ## A304519.P2259301870565017655

`8*A154251(n+2)`
-/

namespace A304519.P2259301870565017655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A154251 (n + 2)

end

end A304519.P2259301870565017655

namespace A304519

/-- `8*A154251(n+2)` -/
def P2259301870565017655.Spec : Prop :=
  ∀ n, P2259301870565017655.a n = A304519 (n + 1)

end A304519

/-! ## A304519.P16647842699914069188

`∑[xor(10, A305060(n+2))]`
-/

namespace A304519.P16647842699914069188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 (A305060 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304519.P16647842699914069188

namespace A304519

/-- `∑[xor(10, A305060(n+2))]` -/
def P16647842699914069188.Spec : Prop :=
  ∀ n, P16647842699914069188.a n = A304519 (n + 1)

end A304519

/-! ## A304519.P5985197228919695615

`(A305270(n+1)+A020707(n+1))/2`
-/

namespace A304519.P5985197228919695615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305270 (n + 1) + A020707 (n + 1) : ℚ) / 2

end

end A304519.P5985197228919695615

namespace A304519

/-- `(A305270(n+1)+A020707(n+1))/2` -/
def P5985197228919695615.Spec : Prop :=
  ∀ n, P5985197228919695615.a n = (A304519 (n + 1) : ℚ)

theorem P5985197228919695615.correct : P5985197228919695615.Spec := by
  intro n
  simp only [A304519, Nat.add_sub_cancel, A304519.P5985197228919695615.a, A304519.P8311426515981246575.a, A020707, A020707.P16024998955381595964.a, A305270, A305270.P11858604698464883215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304519

/-!
# A304520: a(n) is the number of n-digit prime powers.

The programs for A304520, there is no canonical definition to state claims against.
-/

/-! ## A304520.P1033528921924405250

`Δ[A238815(n)]`
-/

namespace A304520.P1033528921924405250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304520.P1033528921924405250

/-! ## A304520.P13361191079238897648

`Δ[A076048(n)+A006880(n)]`
-/

namespace A304520.P13361191079238897648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076048 n + A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304520.P13361191079238897648

/-! ## A304520.P9666244189751133361

`A238815(n+1)-A238815(n)`
-/

namespace A304520.P9666244189751133361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238815 (n + 1) - A238815 n

end

end A304520.P9666244189751133361

/-! ## A304520.P2755491177327200939

`Δ[A090226(n+1)+A076048(n)]`
-/

namespace A304520.P2755491177327200939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1) + A076048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304520.P2755491177327200939

/-! ## A304520.P15159550762484673984

`A303220(n+1)+Δ[A006880(n)]`
-/

namespace A304520.P15159550762484673984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303220 (n + 1) + (f1 (n + 1) - f1 n)

end

end A304520.P15159550762484673984

/-!
# A304521: a(n) is the number of prime powers k such that ceiling(log_2(k)) = n.

The programs for A304521, there is no canonical definition to state claims against.
-/

/-! ## A304521.P18185560672766311998

`Δ[A024622(n)]`
-/

namespace A304521.P18185560672766311998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304521.P18185560672766311998

/-! ## A304521.P2945593001776116295

`A244508(n)+1`
-/

namespace A304521.P2945593001776116295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244508 n + 1

end

end A304521.P2945593001776116295

/-! ## A304521.P12194393356878327400

`A036380(n+1)+A036378(n)`
-/

namespace A304521.P12194393356878327400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036380 (n + 1) + A036378 n

end

end A304521.P12194393356878327400

/-! ## A304521.P2404477401531343221

`A024622(n+1)-A024622(n)`
-/

namespace A304521.P2404477401531343221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 (n + 1) - A024622 n

end

end A304521.P2404477401531343221

/-! ## A304521.P9508910277511631719

`A036380(n+1)+Δ[A007053(n)]`
-/

namespace A304521.P9508910277511631719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036380 (n + 1) + (f1 (n + 1) - f1 n)

end

end A304521.P9508910277511631719

/-!
# A304522: Number of ordered ways to write n as the sum of a Fibonacci number and a positive odd squarefree number.

The programs for A304522, there is no canonical definition to state claims against.
-/

/-! ## A304522.P10211226126629019418

`A115722(A115700(n+1)+A007318(n+1))`
-/

namespace A304522.P10211226126629019418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (A115700 (n + 1) + A007318 (n + 1)).toNat

end

end A304522.P10211226126629019418

/-! ## A304522.P14479549753318911262

`A001221(or(A064408(n+1), A064451(n+1)))`
-/

namespace A304522.P14479549753318911262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A064408 (n + 1)) (A064451 (n + 1))).toNat

end

end A304522.P14479549753318911262

/-! ## A304522.P7044813489357147922

`A060500(A324576(n+1)+A007401(n+1)²)`
-/

namespace A304522.P7044813489357147922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A324576 (n + 1) + A007401 (n + 1) ^ 2).toNat

end

end A304522.P7044813489357147922

/-!
# A304523: Number of ordered ways to write n as the sum of a Lucas number (A000032) and a positive odd squarefree number.

The programs for A304523, there is no canonical definition to state claims against.
-/

/-! ## A304523.P2776977913689773833

`A322811(A173878(n+1)+A113419(n))`
-/

namespace A304523.P2776977913689773833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A173878 (n + 1) + A113419 n).toNat

end

end A304523.P2776977913689773833

/-! ## A304523.P15106295606692013630

`A206719(A352191(n+1)^A215561(n))`
-/

namespace A304523.P15106295606692013630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206719 (SequenceMachineLib.roundAway ((A352191 (n + 1) : ℚ) ^ (A215561 n : ℤ))).toNat

end

end A304523.P15106295606692013630

/-! ## A304523.P5338638815750071613

`A103921(A198302(n+1)-A324026(3*n+1))`
-/

namespace A304523.P5338638815750071613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A198302 (n + 1) - A324026 (3 * n + 1)).toNat

end

end A304523.P5338638815750071613

/-! ## A304523.P14534506548184340444

`A001221(A336934(∑[A203074(n)]))`
-/

namespace A304523.P14534506548184340444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A336934 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A304523.P14534506548184340444

/-! ## A304523.P11387376989158814600

`A001221(A063523(n)+A052549(n))`
-/

namespace A304523.P11387376989158814600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A063523 n + A052549 n).toNat

end

end A304523.P11387376989158814600

/-!
# A304524: Consider the ratio res(p) = 2^A006666(p) / (p*3^A006667(p)) where p is prime. The prime numbers in this sequence are those for which res(p) sets a new record.

The programs for A304524, there is no canonical definition to state claims against.
-/

/-! ## A304524.P10331011944060809849

`p?[∑[A133586(A183935(n+1))]]`
-/

namespace A304524.P10331011944060809849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133586 (A183935 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304524.P10331011944060809849

/-! ## A304524.P13074100755049263183

`A292205(A025487(n+1)*A275972(n))`
-/

namespace A304524.P13074100755049263183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292205 (A025487 (n + 1) * A275972 n).toNat

end

end A304524.P13074100755049263183

/-!
# A304526: Möbius transform of A064664, the inverse of EKG-sequence.

The programs for A304526, there is no canonical definition to state claims against.
-/

/-! ## A304526.P5619369795300109449

`A064664(n+1)-A304527(n+1)`
-/

namespace A304526.P5619369795300109449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 1) - A304527 (n + 1)

end

end A304526.P5619369795300109449

/-! ## A304526.P15035996704745080437

`A064421(n+1)+1-A304527(n+1)`
-/

namespace A304526.P15035996704745080437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (n + 1) + (1 - A304527 (n + 1))

end

end A304526.P15035996704745080437

/-! ## A304526.P1399740163760101381

`∑{d}[n+1, A008683(#)*A064664((n+1)/#)]`
-/

namespace A304526.P1399740163760101381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A064664 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304526.P1399740163760101381

/-! ## A304526.P2775985896380874488

`∑{d}[n+1, A000010(#)*A349617((n+1)/#)]`
-/

namespace A304526.P2775985896380874488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A349617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304526.P2775985896380874488

/-! ## A304526.P15819588447726654013

`A255479(n+1)+A255482(n+1)-A304527(n+1)`
-/

namespace A304526.P15819588447726654013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (n + 1) + (A255482 (n + 1) - A304527 (n + 1))

end

end A304526.P15819588447726654013

/-! ## A304526.P10809657894681770994

`A323412(n+1)-(A323411(n+1)+A304527(n+1))`
-/

namespace A304526.P10809657894681770994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323412 (n + 1) - (A323411 (n + 1) + A304527 (n + 1))

end

end A304526.P10809657894681770994

/-!
# A304527: Difference between A064664 (the inverse of EKG-sequence) and its Möbius-transform.

The programs for A304527, there is no canonical definition to state claims against.
-/

/-! ## A304527.P18140284646742178834

`A064664(n+1)-A304526(n+1)`
-/

namespace A304527.P18140284646742178834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 1) - A304526 (n + 1)

end

end A304527.P18140284646742178834

/-! ## A304527.P6218482758900789149

`∑{d}[n+1, A304526(#)]-A304526(n+1)`
-/

namespace A304527.P6218482758900789149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304526 d - A304526 (n + 1)

end

end A304527.P6218482758900789149

/-! ## A304527.P14232069543008675949

`∑{d}[n+1, A064664(#)*A157658((n+1)/#)]`
-/

namespace A304527.P14232069543008675949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064664 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304527.P14232069543008675949

/-! ## A304527.P13138004489954106853

`∑{d}[n+1, A051953(#)*A349617((n+1)/#)]`
-/

namespace A304527.P13138004489954106853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A349617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304527.P13138004489954106853

/-! ## A304527.P5676968388521397001

`A323412(n+1)-(A323411(n+1)+A304526(n+1))`
-/

namespace A304527.P5676968388521397001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323412 (n + 1) - (A323411 (n + 1) + A304526 (n + 1))

end

end A304527.P5676968388521397001

/-!
# A304529: a(1) = 0, a(2n) = n, a(2n+1) = a(A305422(2n+1)).

The programs for A304529, there is no canonical definition to state claims against.
-/

/-! ## A304529.P17699141986572686234

`A032742(n+1)-A121373(A260994(3*n+1))`
-/

namespace A304529.P17699141986572686234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) - A121373 (A260994 (3 * n + 1)).toNat

end

end A304529.P17699141986572686234

/-! ## A304529.P6887364120589239822

`A304571(A213899(3*n+2))+A246277(n+1)`
-/

namespace A304529.P6887364120589239822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (A213899 (3 * n + 2)).toNat + A246277 (n + 1)

end

end A304529.P6887364120589239822

/-! ## A304529.P5910981566418569831

`A032742(n+1)*A124010(A052996(n))`
-/

namespace A304529.P5910981566418569831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A124010 (A052996 n).toNat

end

end A304529.P5910981566418569831

/-! ## A304529.P14327451228959940463

`A032742(n+1)*A326753(A006566(n))`
-/

namespace A304529.P14327451228959940463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A326753 (A006566 n).toNat

end

end A304529.P14327451228959940463

/-! ## A304529.P12385750810439911016

`A116512(n+1)*A337473(A001129(n))`
-/

namespace A304529.P12385750810439911016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (n + 1) * A337473 (A001129 n).toNat

end

end A304529.P12385750810439911016

/-!
# A304530: Positions of odd terms in A304531.

The programs for A304530, there is no canonical definition to state claims against.
-/

/-! ## A304530.P8888140799306711627

`eq[1, and(1, A304531(n+1))]+1`
-/

namespace A304530.P8888140799306711627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A304531 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A304530.P8888140799306711627

/-! ## A304530.P12552420554853357532

`record[and(1, A304531(n+1))*A000027(n+1)]`
-/

namespace A304530.P12552420554853357532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A304531 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304530.P12552420554853357532

/-! ## A304530.P10670277111356067730

`record[and(1, A304531(n+1))*A008619(2*n)]`
-/

namespace A304530.P10670277111356067730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A304531 (n + 1)) * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304530.P10670277111356067730

/-! ## A304530.P14881231981076267734

`record[and(1, A304531(n+1))*A052938(2*n)]`
-/

namespace A304530.P14881231981076267734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A304531 (n + 1)) * A052938 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304530.P14881231981076267734

/-! ## A304530.P8974755121090803487

`record[and(1, A304531(n+1))*A008611(3*n)]`
-/

namespace A304530.P8974755121090803487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A304531 (n + 1)) * A008611 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304530.P8974755121090803487

/-!
# A304531: Suspected divisor-or-multiple permutation: a(1) = 1, and for n > 1, a(n) is either the least unitary divisor of a(n-1) not already present, or (if all unitary divisors already used), a(n) = a(n-1) * {the least power of the least prime not dividing a(n-1) such that the term is not already present}.

The programs for A304531, there is no canonical definition to state claims against.
-/

/-! ## A304531.P3388881668158839206

`A052330(A304533(n))`
-/

namespace A304531.P3388881668158839206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A304533 n).toNat

end

end A304531.P3388881668158839206

/-! ## A304531.P6123406436802257574

`∏{p}[A304537(n), A302023(#)]`
-/

namespace A304531.P6123406436802257574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302023 p

end

end A304531.P6123406436802257574

/-! ## A304531.P3699957354952395000

`A052330(∑{p}[A304537(n), A048675(#)])`
-/

namespace A304531.P3699957354952395000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p).toNat

end

end A304531.P3699957354952395000

/-! ## A304531.P18061258209695666281

`A052330(∑{p}[A304537(n), A048676(#)])`
-/

namespace A304531.P18061258209695666281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p).toNat

end

end A304531.P18061258209695666281

/-! ## A304531.P12271407995696423336

`A052330(∑{p}[A304537(n), A087207(#)])`
-/

namespace A304531.P12271407995696423336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p).toNat

end

end A304531.P12271407995696423336

/-! ## A304531.P12308467446356350575

`A052330(∑{p}[A304537(n), A112479(#)])`
-/

namespace A304531.P12308467446356350575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p).toNat

end

end A304531.P12308467446356350575

/-! ## A304531.P1308058223722749314

`A052330(∑{p}[A304537(n), A162474(#)])`
-/

namespace A304531.P1308058223722749314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p).toNat

end

end A304531.P1308058223722749314

/-! ## A304531.P13106538862706104692

`A052330(∑{p}[A304537(n), A292382(#)])`
-/

namespace A304531.P13106538862706104692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A292382 p).toNat

end

end A304531.P13106538862706104692

/-! ## A304531.P14839132948886636835

`A246277(2*A303751(n+1))`
-/

namespace A304531.P14839132948886636835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (2 * A303751 (n + 1)).toNat

end

end A304531.P14839132948886636835

/-! ## A304531.P17952169000523622131

`A246277(A303751(n+1)+A303751(n+1))`
-/

namespace A304531.P17952169000523622131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A303751 (n + 1) + A303751 (n + 1)).toNat

end

end A304531.P17952169000523622131

/-!
# A304532: Inverse of A304531.

The programs for A304532, there is no canonical definition to state claims against.
-/

/-! ## A304532.P4149062102979973105

`A304534(A052331(n+1))+1`
-/

namespace A304532.P4149062102979973105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304534 (A052331 (n + 1)).toNat + 1

end

end A304532.P4149062102979973105

/-! ## A304532.P596229504348880947

`A304534(A064358(n+1)-1)+1`
-/

namespace A304532.P596229504348880947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304534 (A064358 (n + 1) - 1).toNat + 1

end

end A304532.P596229504348880947

/-! ## A304532.P7109224206318500509

`A304534(∑{d}[A160102(n+1), A297108(#)])+1`
-/

namespace A304532.P7109224206318500509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304534 (∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d).toNat + 1

end

end A304532.P7109224206318500509

/-! ## A304532.P2408862925260566598

`A304534(∑{p}[A160102(n+1), A048675(#)])+1`
-/

namespace A304532.P2408862925260566598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304534 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p).toNat + 1

end

end A304532.P2408862925260566598

/-! ## A304532.P16629764567122292398

`A304534(∑{p}[A160102(n+1), A087207(#)])+1`
-/

namespace A304532.P16629764567122292398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304534 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p).toNat + 1

end

end A304532.P16629764567122292398

/-!
# A304533: Suspected permutation of nonnegative integers: a(n) = A052331(A304531(1+n)).

The programs for A304533, there is no canonical definition to state claims against.
-/

/-! ## A304533.P7836546814085705937

`A052331(A304531(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304533.P7836546814085705937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052331 (A304531 (1 + n)).toNat

end

end A304533.P7836546814085705937

/-! ## A304533.P5814448388732688687

`∑{p}[A304537(n), A048675(#)]`
-/

namespace A304533.P5814448388732688687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A304533.P5814448388732688687

/-! ## A304533.P11834843003572616732

`∑{p}[A304537(n), A048676(#)]`
-/

namespace A304533.P11834843003572616732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A304533.P11834843003572616732

/-! ## A304533.P17821154379642973438

`∑{p}[A304537(n), A087207(#)]`
-/

namespace A304533.P17821154379642973438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A304533.P17821154379642973438

/-! ## A304533.P1233461344519329096

`∑{p}[A304537(n), A112479(#)]`
-/

namespace A304533.P1233461344519329096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A304533.P1233461344519329096

/-! ## A304533.P1809455302514162049

`∑{p}[A304537(n), A156552(#)]`
-/

namespace A304533.P1809455302514162049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A304533.P1809455302514162049

/-! ## A304533.P16210511315022476625

`∑{p}[A304537(n), A162474(#)]`
-/

namespace A304533.P16210511315022476625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p

end

end A304533.P16210511315022476625

/-! ## A304533.P7334838540417954489

`∑{p}[A304537(n), A233249(#)]`
-/

namespace A304533.P7334838540417954489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A304533.P7334838540417954489

/-! ## A304533.P17115836090260959559

`∑{p}[A304537(n), A248663(#)]`
-/

namespace A304533.P17115836090260959559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A304533.P17115836090260959559

/-! ## A304533.P3705220819897676140

`∑{p}[A304537(n), A252754(#)]`
-/

namespace A304533.P3705220819897676140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A252754 p

end

end A304533.P3705220819897676140

/-! ## A304533.P5920764072400210550

`∑{p}[A304537(n), A277333(#)]`
-/

namespace A304533.P5920764072400210550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A304533.P5920764072400210550

/-! ## A304533.P6922261894830305749

`∑{p}[A304537(n), A285330(#)]`
-/

namespace A304533.P6922261894830305749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p

end

end A304533.P6922261894830305749

/-! ## A304533.P4915024760065795122

`∑{p}[A304537(n), A292382(#)]`
-/

namespace A304533.P4915024760065795122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A292382 p

end

end A304533.P4915024760065795122

/-! ## A304533.P15203339476854940925

`∑{p}[A304537(n), A297108(#)]`
-/

namespace A304533.P15203339476854940925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p

end

end A304533.P15203339476854940925

/-! ## A304533.P7622183498666640233

`∑{p}[A304537(n), A331740(#)]`
-/

namespace A304533.P7622183498666640233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331740 p

end

end A304533.P7622183498666640233

/-! ## A304533.P18055324559811274810

`∑{p}[A304537(n), A335426(#)]`
-/

namespace A304533.P18055324559811274810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A335426 p

end

end A304533.P18055324559811274810

/-!
# A304534: Inverse of A304533.

The programs for A304534, there is no canonical definition to state claims against.
-/

/-! ## A304534.P6385515659238243143

`A304532(A052330(n))-1`
-/

namespace A304534.P6385515659238243143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304532 (A052330 n).toNat - 1

end

end A304534.P6385515659238243143

/-! ## A304534.P16603703511635453935

`A303752(A059900(n))-1`
-/

namespace A304534.P16603703511635453935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303752 (A059900 n).toNat - 1

end

end A304534.P16603703511635453935

/-! ## A304534.P8733466914256480398

`A303752(A344535(n))-1`
-/

namespace A304534.P8733466914256480398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303752 (A344535 n).toNat - 1

end

end A304534.P8733466914256480398

/-! ## A304534.P2926432969385724453

`A304532(A059900(n))-A262681(n)`
-/

namespace A304534.P2926432969385724453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304532 (A059900 n).toNat - A262681 n

end

end A304534.P2926432969385724453

/-!
# A304535: Restricted growth sequence transform of A278222(A304533(n)).

The programs for A304535, there is no canonical definition to state claims against.
-/

/-! ## A304535.P15239006943918993798

`A070941(A180183(2*n+1)%A060315(n+1))`
-/

namespace A304535.P15239006943918993798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (Int.tmod (A180183 (2 * n + 1)) (A060315 (n + 1))).toNat

end

end A304535.P15239006943918993798

/-! ## A304535.P10117433024600576245

`A238949(11*A059326(n+1))`
-/

namespace A304535.P10117433024600576245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (11 * A059326 (n + 1)).toNat

end

end A304535.P10117433024600576245

/-! ## A304535.P5513252755723568025

`∑{e}[∑[A074633(A054040(n+1))], #]`
-/

namespace A304535.P5513252755723568025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074633 (A054040 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A304535.P5513252755723568025

/-! ## A304535.P1402703854177966999

`A001221(A189254(2*n+1))+1`
-/

namespace A304535.P1402703854177966999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A189254 (2 * n + 1)).toNat + 1

end

end A304535.P1402703854177966999

/-!
# A304536: Binary weight of terms of A304533; Number of terms of A050376 in "Fermi-Dirac factorization" of A304531(1+n).

The programs for A304536, there is no canonical definition to state claims against.
-/

/-! ## A304536.P7084969208342641448

`A000120(A304533(n))`
-/

namespace A304536.P7084969208342641448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A304533 n).toNat

end

end A304536.P7084969208342641448

/-! ## A304536.P7387743402895590217

`A064547(A304531(1+n))`
-/

namespace A304536.P7387743402895590217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A304531 (1 + n)).toNat

end

end A304536.P7387743402895590217

/-! ## A304536.P4268705236337098375

`∑{e}[A304531(n+1), A000119(#)]`
-/

namespace A304536.P4268705236337098375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000119 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P4268705236337098375

/-! ## A304536.P9449975873276434170

`∑{e}[A304531(n+1), A000120(#)]`
-/

namespace A304536.P9449975873276434170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P9449975873276434170

/-! ## A304536.P5753738487054837

`∑{e}[A304531(n+1), A000374(#)]`
-/

namespace A304536.P5753738487054837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000374 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P5753738487054837

/-! ## A304536.P17599505777026036696

`∑{e}[A304531(n+1), A001227(#)]`
-/

namespace A304536.P17599505777026036696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001227 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P17599505777026036696

/-! ## A304536.P14123736328922575199

`∑{e}[A304531(n+1), A002033(#)]`
-/

namespace A304536.P14123736328922575199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002033 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P14123736328922575199

/-! ## A304536.P15129618441198485503

`∑{e}[A304531(n+1), A002260(#)]`
-/

namespace A304536.P15129618441198485503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002260 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P15129618441198485503

/-! ## A304536.P2951816973593776955

`∑{e}[A304531(n+1), A002487(#)]`
-/

namespace A304536.P2951816973593776955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002487 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P2951816973593776955

/-! ## A304536.P1006052030135323006

`∑{e}[A304531(n+1), A003602(#)]`
-/

namespace A304536.P1006052030135323006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003602 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P1006052030135323006

/-! ## A304536.P15306343438236271013

`∑{e}[A304531(n+1), A003986(#)]`
-/

namespace A304536.P15306343438236271013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003986 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P15306343438236271013

/-! ## A304536.P3306383345365435323

`∑{e}[A304531(n+1), A007302(#)]`
-/

namespace A304536.P3306383345365435323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007302 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P3306383345365435323

/-! ## A304536.P9920333679305071282

`∑{e}[A304531(n+1), A013632(#)]`
-/

namespace A304536.P9920333679305071282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A013632 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P9920333679305071282

/-! ## A304536.P7806527652991898751

`∑{e}[A304531(n+1), A142075(#)]`
-/

namespace A304536.P7806527652991898751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A142075 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P7806527652991898751

/-! ## A304536.P11982380781040824678

`∑{e}[A304531(n+1), A166350(#)]`
-/

namespace A304536.P11982380781040824678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A166350 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P11982380781040824678

/-! ## A304536.P3665617826067117880

`∑{e}[A304531(n+1), A222266(#)]`
-/

namespace A304536.P3665617826067117880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A222266 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P3665617826067117880

/-! ## A304536.P15035783266043147460

`∑{e}[A304531(n+1), A304528(#)]`
-/

namespace A304536.P15035783266043147460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A304528 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P15035783266043147460

/-! ## A304536.P1393843348301258371

`∑{e}[A304531(n+1), A352780(#)]`
-/

namespace A304536.P1393843348301258371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A352780 (Nat.factorization (f1 n).natAbs p)

end

end A304536.P1393843348301258371

/-! ## A304536.P12316502707235601325

`∑{e}[A304531(n+1), A001222(#+1)]`
-/

namespace A304536.P12316502707235601325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p + 1)

end

end A304536.P12316502707235601325

/-! ## A304536.P17698323959223931824

`∑{e}[A304531(n+1), A007318(#+1)]`
-/

namespace A304536.P17698323959223931824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p + 1)

end

end A304536.P17698323959223931824

/-!
# A304537: Suspected divisor-or-multiple permutation of squarefree numbers: a(n) = A019565(A304533(n)).

The programs for A304537, there is no canonical definition to state claims against.
-/

/-! ## A304537.P5839845992169235194

`A019565(A304533(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304537.P5839845992169235194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A304533 n).toNat

end

end A304537.P5839845992169235194

/-! ## A304537.P8658931717255476799

`A019565(A052331(A304531(1+n)))`
-/

namespace A304537.P8658931717255476799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A052331 (A304531 (1 + n)).toNat).toNat

end

end A304537.P8658931717255476799

/-! ## A304537.P8080200626950843859

`A160102(A304531(n+1))`
-/

namespace A304537.P8080200626950843859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A304531 (n + 1)).toNat

end

end A304537.P8080200626950843859

/-! ## A304537.P5632651354986657463

`A160102(A303751(n+1))+A000007(A299258(n))`
-/

namespace A304537.P5632651354986657463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A303751 (n + 1)).toNat + A000007 (A299258 n).toNat

end

end A304537.P5632651354986657463

/-! ## A304537.P5029903580129572678

`A160102(A303751(n+1))%A032468(n+4)`
-/

namespace A304537.P5029903580129572678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160102 (A303751 (n + 1)).toNat) (A032468 (n + 4))

end

end A304537.P5029903580129572678

/-! ## A304537.P7131579499651058731

`A160102(A303751(n+1)%A109788(n+1))`
-/

namespace A304537.P7131579499651058731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (Int.tmod (A303751 (n + 1)) (A109788 (n + 1))).toNat

end

end A304537.P7131579499651058731

/-!
# A304538: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304538, there is no canonical definition to state claims against.
-/

/-! ## A304538.P9121573993512484579

`A304544(∑[4*n]+1)`
-/

namespace A304538.P9121573993512484579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304538.P9121573993512484579

/-! ## A304538.P3303406477523571806

`gcd(floor(1/(n+1)), A304544(n²+(n+1)²))`
-/

namespace A304538.P3303406477523571806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A304544 (n ^ 2 + (n + 1) ^ 2))

end

end A304538.P3303406477523571806

/-! ## A304538.P4947253960523686136

`record[A304544(Δ[A235355(n)])]`
-/

namespace A304538.P4947253960523686136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304538.P4947253960523686136

/-! ## A304538.P308706177734201103

`record[A304544(A330613(n+1))]`
-/

namespace A304538.P308706177734201103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304538.P308706177734201103

/-! ## A304538.P5978622811049059904

`A304544(A001844(n))+char[10]`
-/

namespace A304538.P5978622811049059904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304538.P5978622811049059904

/-!
# A304539: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304539, there is no canonical definition to state claims against.
-/

/-! ## A304539.P13840430330415070577

`A304544(∑[n+2]+4)`
-/

namespace A304539.P13840430330415070577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304539.P13840430330415070577

/-! ## A304539.P8490570525687539937

`or(1, A304544(A167614(n+1)))`
-/

namespace A304539.P8490570525687539937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A304544 (A167614 (n + 1)).toNat)

end

end A304539.P8490570525687539937

/-! ## A304539.P7336849949021608520

`A304544(A167614(n+1))+A025444(n)`
-/

namespace A304539.P7336849949021608520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A167614 (n + 1)).toNat + A025444 n

end

end A304539.P7336849949021608520

/-! ## A304539.P17359386774911746652

`A304544(A167614(n+1))+A025466(n)`
-/

namespace A304539.P17359386774911746652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A167614 (n + 1)).toNat + A025466 n

end

end A304539.P17359386774911746652

/-! ## A304539.P3043628611236177630

`A304544(A167614(n+1))+A185284(n)`
-/

namespace A304539.P3043628611236177630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A167614 (n + 1)).toNat + A185284 n

end

end A304539.P3043628611236177630

/-!
# A304540: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304540, there is no canonical definition to state claims against.
-/

/-! ## A304540.P7075272244569574041

`A304544(∑[n+5]+5-2*n)`
-/

namespace A304540.P7075272244569574041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (∑ j ∈ Finset.range (n + 1), f1 j + 5 - 2 * n)

end

end A304540.P7075272244569574041

/-! ## A304540.P6210764132796943581

`or(char[1], A304544(A167499(n+2)-1))`
-/

namespace A304540.P6210764132796943581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304544 (A167499 (n + 2) - 1).toNat)

end

end A304540.P6210764132796943581

/-! ## A304540.P13568539100975866857

`A007318(C(2, n))*A304544(A167499(n+2)-1)`
-/

namespace A304540.P13568539100975866857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A304544 (A167499 (n + 2) - 1).toNat

end

end A304540.P13568539100975866857

/-! ## A304540.P1992704348495888008

`A304544(A167499(n+2)-1)%A000108(n+11)`
-/

namespace A304540.P1992704348495888008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304544 (A167499 (n + 2) - 1).toNat) (A000108 (n + 11))

end

end A304540.P1992704348495888008

/-! ## A304540.P17457768330378101555

`gcd(11, A007318(n))*A304544(A167499(n+2)-1)`
-/

namespace A304540.P17457768330378101555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A007318 n) : ℤ) * A304544 (A167499 (n + 2) - 1).toNat

end

end A304540.P17457768330378101555

/-!
# A304541: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304541, there is no canonical definition to state claims against.
-/

/-! ## A304541.P9508559088961948369

`A304544(A374005(n+1))`
-/

namespace A304541.P9508559088961948369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A374005 (n + 1)).toNat

end

end A304541.P9508559088961948369

/-! ## A304541.P16114951032024157449

`A304544(A155212(n)+13)`
-/

namespace A304541.P16114951032024157449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A155212 n + 13).toNat

end

end A304541.P16114951032024157449

/-! ## A304541.P2637887000617561325

`A304544(A056000(n)+15)`
-/

namespace A304541.P2637887000617561325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A056000 n + 15).toNat

end

end A304541.P2637887000617561325

/-! ## A304541.P10647014069985724332

`A304544(eq[7, A066657(n)])`
-/

namespace A304541.P10647014069985724332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304541.P10647014069985724332

/-! ## A304541.P14645741677645222891

`A304544(A166136(n+3)-1)`
-/

namespace A304541.P14645741677645222891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A166136 (n + 3) - 1).toNat

end

end A304541.P14645741677645222891

/-!
# A304542: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304542, there is no canonical definition to state claims against.
-/

/-! ## A304542.P11816488158709025220

`A304544(∑[n+5]+16)`
-/

namespace A304542.P11816488158709025220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304542.P11816488158709025220

/-! ## A304542.P7027587696499465011

`A304544(A000124(n+5)+5)+char[16]`
-/

namespace A304542.P7027587696499465011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A000124 (n + 5) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304542.P7027587696499465011

/-! ## A304542.P203327494489401086

`A304544(A000124(n+5)+5)%A000108(n+6)`
-/

namespace A304542.P203327494489401086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304544 (A000124 (n + 5) + 5).toNat) (A000108 (n + 6))

end

end A304542.P203327494489401086

/-! ## A304542.P15037773381569460261

`A007318(C(2, n))*A304544(A000124(n+5)+5)`
-/

namespace A304542.P15037773381569460261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A304544 (A000124 (n + 5) + 5).toNat

end

end A304542.P15037773381569460261

/-! ## A304542.P15335891609564830983

`A007318(val(n+1, 8))*A304544(A000124(n+5)+5)`
-/

namespace A304542.P15335891609564830983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 8) * A304544 (A000124 (n + 5) + 5).toNat

end

end A304542.P15335891609564830983

/-!
# A304543: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304543, there is no canonical definition to state claims against.
-/

/-! ## A304543.P8140544972763106048

`A304544(A374008(n+1))`
-/

namespace A304543.P8140544972763106048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A374008 (n + 1)).toNat

end

end A304543.P8140544972763106048

/-! ## A304543.P6238312387052004896

`A304544(A056119(n)+28)`
-/

namespace A304543.P6238312387052004896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A056119 n + 28).toNat

end

end A304543.P6238312387052004896

/-! ## A304543.P13780532316132710074

`A304544(eq[11, A066657(n)])`
-/

namespace A304543.P13780532316132710074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304543.P13780532316132710074

/-! ## A304543.P12146478913416350148

`A304544(A167499(n+5)+2)`
-/

namespace A304543.P12146478913416350148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A167499 (n + 5) + 2).toNat

end

end A304543.P12146478913416350148

/-! ## A304543.P1966197108698742073

`A304544(A000124(n+6)+6)`
-/

namespace A304543.P1966197108698742073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304544 (A000124 (n + 6) + 6).toNat

end

end A304543.P1966197108698742073

/-!
# A304544: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304544, there is no canonical definition to state claims against.
-/

/-! ## A304544.P8090994524872042919

`A306129(n+1)-A309785(A299321(n+1))`
-/

namespace A304544.P8090994524872042919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (n + 1) - A309785 (A299321 (n + 1)).toNat

end

end A304544.P8090994524872042919

/-! ## A304544.P3181364797075392448

`A306129(n+1)-A285007(A035607(n))`
-/

namespace A304544.P3181364797075392448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (n + 1) - A285007 (A035607 n).toNat

end

end A304544.P3181364797075392448

/-! ## A304544.P9260528093892824864

`A306129(n+1)-A285007(A270061(n))`
-/

namespace A304544.P9260528093892824864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (n + 1) - A285007 (A270061 n).toNat

end

end A304544.P9260528093892824864

/-! ## A304544.P4805351891014166780

`A306129(n+1)-A309785(A331562(n))`
-/

namespace A304544.P4805351891014166780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (n + 1) - A309785 (A331562 n).toNat

end

end A304544.P4805351891014166780

/-! ## A304544.P15216168449019092628

`A306129(n+1)+A178798(A093190(n+1))`
-/

namespace A304544.P15216168449019092628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (n + 1) + A178798 (A093190 (n + 1)).toNat

end

end A304544.P15216168449019092628

/-!
# A304545: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304545, there is no canonical definition to state claims against.
-/

/-! ## A304545.P13779908806266689814

`A304551(∑[4*n]+1)`
-/

namespace A304545.P13779908806266689814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304545.P13779908806266689814

/-! ## A304545.P12131214435980111560

`record[A304551(A272267(n+1))]`
-/

namespace A304545.P12131214435980111560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304545.P12131214435980111560

/-! ## A304545.P5470922484525054608

`record[A304551(A330613(n+1))]`
-/

namespace A304545.P5470922484525054608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304545.P5470922484525054608

/-! ## A304545.P6937768768526500964

`A304551(A001844(n))+char[10]`
-/

namespace A304545.P6937768768526500964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304545.P6937768768526500964

/-! ## A304545.P1135985048559335175

`record[A003982(n)*A304551(n+1)]`
-/

namespace A304545.P1135985048559335175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304545.P1135985048559335175

/-!
# A304546: Number of n X 3 0..1 arrays with every element unequal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304546, there is no canonical definition to state claims against.
-/

/-! ## A304546.P16160871598941145929

`A304551(∑[n+2]+4)`
-/

namespace A304546.P16160871598941145929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304546.P16160871598941145929

/-! ## A304546.P4365515997128957321

`A316376(∑[n+2]+4)`
-/

namespace A304546.P4365515997128957321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304546.P4365515997128957321

/-! ## A304546.P9458335391858336706

`record[A132013(n)*A316376(n+4)]`
-/

namespace A304546.P9458335391858336706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n * A316376 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304546.P9458335391858336706

/-! ## A304546.P2208412054025615219

`record[gcd(A303913(n), A304551(n+1))]`
-/

namespace A304546.P2208412054025615219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A304551 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304546.P2208412054025615219

/-! ## A304546.P8569077905993656512

`record[gcd(A304551(n+3), A320019(n))]`
-/

namespace A304546.P8569077905993656512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A304551 (n + 3)) (A320019 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304546.P8569077905993656512

/-!
# A304547: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304547, there is no canonical definition to state claims against.
-/

/-! ## A304547.P7296702407402082291

`A304551(∑[n+3]+7)`
-/

namespace A304547.P7296702407402082291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304547.P7296702407402082291

/-! ## A304547.P324914087533052630

`A316376(∑[n+3]+7)`
-/

namespace A304547.P324914087533052630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304547.P324914087533052630

/-! ## A304547.P14302816378561319477

`record[gcd(A303913(n), A304551(n+2))]`
-/

namespace A304547.P14302816378561319477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A304551 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304547.P14302816378561319477

/-! ## A304547.P15069824556787579136

`A369054(n)+A304551(A374004(n+1))`
-/

namespace A304547.P15069824556787579136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n + A304551 (A374004 (n + 1)).toNat

end

end A304547.P15069824556787579136

/-! ## A304547.P13657945884465937001

`A304551(A374004(n+1))%A017503(n)`
-/

namespace A304547.P13657945884465937001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304551 (A374004 (n + 1)).toNat) (A017503 n)

end

end A304547.P13657945884465937001

/-!
# A304548: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304548, there is no canonical definition to state claims against.
-/

/-! ## A304548.P13572838623611678784

`A304551(A374005(n+1))`
-/

namespace A304548.P13572838623611678784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (A374005 (n + 1)).toNat

end

end A304548.P13572838623611678784

/-! ## A304548.P5989136407120806432

`A304551(A167499(n+3))`
-/

namespace A304548.P5989136407120806432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (A167499 (n + 3)).toNat

end

end A304548.P5989136407120806432

/-! ## A304548.P10118163548130489023

`A304551(A155212(n)+13)`
-/

namespace A304548.P10118163548130489023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (A155212 n + 13).toNat

end

end A304548.P10118163548130489023

/-! ## A304548.P15264336529994808218

`A304551(A056000(n)+15)`
-/

namespace A304548.P15264336529994808218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (A056000 n + 15).toNat

end

end A304548.P15264336529994808218

/-! ## A304548.P5377261709711111615

`A304551(eq[7, A066657(n)])`
-/

namespace A304548.P5377261709711111615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304548.P5377261709711111615

/-!
# A304549: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304549, there is no canonical definition to state claims against.
-/

/-! ## A304549.P1426374564527024064

`A304551(∑[n+5]+16)`
-/

namespace A304549.P1426374564527024064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304549.P1426374564527024064

/-! ## A304549.P9230064067210138130

`A304551(A166136(n+4))%A346768(n+4)`
-/

namespace A304549.P9230064067210138130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304551 (A166136 (n + 4)).toNat) (A346768 (n + 4))

end

end A304549.P9230064067210138130

/-!
# A304550: Number of n X 7 0..1 arrays with every element unequal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304550, there is no canonical definition to state claims against.
-/

/-! ## A304550.P14989062126012644588

`A304551(A374008(n+1))`
-/

namespace A304550.P14989062126012644588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (A374008 (n + 1)).toNat

end

end A304550.P14989062126012644588

/-! ## A304550.P7714840002750291352

`A304551(A056119(n)+28)`
-/

namespace A304550.P7714840002750291352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (A056119 n + 28).toNat

end

end A304550.P7714840002750291352

/-! ## A304550.P8383411465325065550

`A304551(eq[11, A066657(n)])`
-/

namespace A304550.P8383411465325065550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304550.P8383411465325065550

/-! ## A304550.P12319758750871848259

`A304551(A166136(n+5)+1)`
-/

namespace A304550.P12319758750871848259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (A166136 (n + 5) + 1).toNat

end

end A304550.P12319758750871848259

/-! ## A304550.P4000222302131257514

`A304551(A152947(n+8)+6)`
-/

namespace A304550.P4000222302131257514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304551 (A152947 (n + 8) + 6).toNat

end

end A304550.P4000222302131257514

/-!
# A304551: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304551, there is no canonical definition to state claims against.
-/

/-! ## A304551.P2007570964126401701

`A325402(A316376(n+1))`
-/

namespace A304551.P2007570964126401701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (A316376 (n + 1)).toNat

end

end A304551.P2007570964126401701

/-! ## A304551.P5437876646400290083

`A316376(∑[A010894(n)!])`
-/

namespace A304551.P5437876646400290083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304551.P5437876646400290083

/-! ## A304551.P3636659044538235999

`A316376(A023933(n)+1+n)`
-/

namespace A304551.P3636659044538235999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (A023933 n + 1 + (n : ℤ)).toNat

end

end A304551.P3636659044538235999

/-! ## A304551.P6630112115093360897

`A316376(n+1)^A010894(n)!`
-/

namespace A304551.P6630112115093360897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316376 (n + 1) ^ Nat.factorial (A010894 (n + 21)).toNat

end

end A304551.P6630112115093360897

/-! ## A304551.P12652579271830462632

`A316376(n+1)%A080385(A326077(n))`
-/

namespace A304551.P12652579271830462632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316376 (n + 1)) (A080385 (A326077 n).toNat)

end

end A304551.P12652579271830462632

/-!
# A304552: Number of total dominating sets in the n-triangular honeycomb acute knight graph.

The programs for A304552, there is no canonical definition to state claims against.
-/

/-! ## A304552.P1810808457047548161

`A093035(C(A322110(n), n))`
-/

namespace A304552.P1810808457047548161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093035 (Nat.choose (A322110 n).toNat n)

end

end A304552.P1810808457047548161

/-!
# A304553: Number of total dominating sets in the n-triangular honeycomb bishop graph.

The programs for A304553, there is no canonical definition to state claims against.
-/

/-! ## A304553.P9783499423324474791

`A099962(3*n+2)+A010815(A114496(n))`
-/

namespace A304553.P9783499423324474791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099962 (3 * n + 2) + A010815 (A114496 n).toNat

end

end A304553.P9783499423324474791

/-!
# A304557: Number of minimal total dominating sets in the n-triangular honeycomb acute knight graph.

The programs for A304557, there is no canonical definition to state claims against.
-/

/-! ## A304557.P14822951295690562817

`and(A246281(3*n+2), A252745(n))^3`
-/

namespace A304557.P14822951295690562817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A246281 (3 * n + 2)) (A252745 n) ^ 3

end

end A304557.P14822951295690562817

/-! ## A304557.P6646103995040332728

`A004197(ceil(5^n/4))^3`
-/

namespace A304557.P6646103995040332728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 ⌈(5 ^ n : ℚ) / 4⌉.toNat ^ 3

end

end A304557.P6646103995040332728

/-! ## A304557.P10075850139781519683

`A046051(A000140(n+1))^3`
-/

namespace A304557.P10075850139781519683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A000140 (n + 1)).toNat ^ 3

end

end A304557.P10075850139781519683

/-!
# A304558: Number of minimal total dominating sets in the n-triangular honeycomb bishop graph.

The programs for A304558, there is no canonical definition to state claims against.
-/

/-! ## A304558.P69254646705901606

`A335624(10^n-1)-floor(10^(n/4))`
-/

namespace A304558.P69254646705901606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335624 (10 ^ n - 1) - ⌊(10 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A304558.P69254646705901606

/-!
# A304559: Number of minimal total dominating sets in the n-triangular honeycomb obtuse knight graph.

The programs for A304559, there is no canonical definition to state claims against.
-/

/-! ## A304559.P8238564983858892376

`7*A063730(A378400(n))`
-/

namespace A304559.P8238564983858892376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A063730 (A378400 n).toNat

end

end A304559.P8238564983858892376

/-! ## A304559.P9356409427276217126

`7*A363346(A129271(n))`
-/

namespace A304559.P9356409427276217126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A363346 (A129271 n).toNat

end

end A304559.P9356409427276217126

/-!
# A304560: Number of minimal total dominating sets in the n-triangular honeycomb queen graph.

The programs for A304560, there is no canonical definition to state claims against.
-/

/-! ## A304560.P17910067068064592547

`A171454(n)-A215244(A001813(n))`
-/

namespace A304560.P17910067068064592547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171454 n - A215244 (A001813 n).toNat

end

end A304560.P17910067068064592547

/-!
# A304561: Number of minimum total dominating sets in the n-triangular (Johnson) graph.

The programs for A304561, there is no canonical definition to state claims against.
-/

/-! ## A304561.P4766238890294780929

`(∑[char[1]+n]+n)*A326669(n!)`
-/

namespace A304561.P4766238890294780929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) * A326669 (Nat.factorial n)

end

end A304561.P4766238890294780929

/-!
# A304569: Triangle read by rows: T(n,k) = 1 if k | n^e with e >= 0, otherwise T(n,k) = 0 (1 <= k <= n).

The programs for A304569, the canonical program `A304569.P1317992739176579829` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304569 has offset 1).

The definition of A304569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304569.P1317992739176579829

`C(2, A096133(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A304569

/-- `C(2, A096133(n+1))` -/
def P1317992739176579829.Spec : Prop :=
  ∀ n, (P1317992739176579829.a n : ℤ) = A304569 (n + 1)

theorem P1317992739176579829.correct : P1317992739176579829.Spec := by
  intro n
  simp only [A304569, Nat.add_sub_cancel]

end A304569

/-! ## A304569.P3596649013654724358

`A036987(2*A096133(n+1))`
-/

namespace A304569.P3596649013654724358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * A096133 (n + 1)).toNat

end

end A304569.P3596649013654724358

namespace A304569

/-- `A036987(2*A096133(n+1))` -/
def P3596649013654724358.Spec : Prop :=
  ∀ n, P3596649013654724358.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P1306360971645881577

`A304570(n+1)+A051731(n+1)`
-/

namespace A304569.P1306360971645881577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304570 (n + 1) + A051731 (n + 1)

end

end A304569.P1306360971645881577

namespace A304569

/-- `A304570(n+1)+A051731(n+1)` -/
def P1306360971645881577.Spec : Prop :=
  ∀ n, P1306360971645881577.a n = A304569 (n + 1)

theorem P1306360971645881577.correct : P1306360971645881577.Spec := by
  intro n
  simp only [A304569, Nat.add_sub_cancel, A304569.P1306360971645881577.a, A304569.P1317992739176579829.a, A051731, A051731.P11318043630102858095.a, A096133, A096133.P11645736582096461884.a, A304570, A304570.P4550797118024341307.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304569

/-! ## A304569.P10607751601987446372

`A051731(n+1)+A304571(n+1)-A304572(n+1)`
-/

namespace A304569.P10607751601987446372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (A304571 (n + 1) - A304572 (n + 1))

end

end A304569.P10607751601987446372

namespace A304569

/-- `A051731(n+1)+A304571(n+1)-A304572(n+1)` -/
def P10607751601987446372.Spec : Prop :=
  ∀ n, P10607751601987446372.a n = A304569 (n + 1)

theorem P10607751601987446372.correct : P10607751601987446372.Spec := by
  intro n
  simp only [A304569, Nat.add_sub_cancel, A304569.P10607751601987446372.a, A304569.P1317992739176579829.a, A051731, A051731.P11318043630102858095.a, A096133, A096133.P11645736582096461884.a, A304571, A304571.P9163030136196335364.a, A304572, A304572.P1363963036755555797.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A127368, A127368.P5347369318367987090.a, A304570, A304570.P4550797118024341307.a, A054521, A054521.P4283920493715643574.a, A128227, A128227.P3230400421110190082.f1, A128227.P3230400421110190082.a, A010054, A010054.P18347828677204923252.a, A050873, A050873.P9265691843747829377.a, A063524, A063524.P5631347671191003537.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304569

/-! ## A304569.P9608379684870678991

`A000007(A096133(n+1))`
-/

namespace A304569.P9608379684870678991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A096133 (n + 1)).toNat

end

end A304569.P9608379684870678991

namespace A304569

/-- `A000007(A096133(n+1))` -/
def P9608379684870678991.Spec : Prop :=
  ∀ n, P9608379684870678991.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P10601117333014937158

`A162641(A000040(n+1))^A096133(n+1)`
-/

namespace A304569.P10601117333014937158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162641 (A000040 (n + 1)).toNat : ℚ) ^ (A096133 (n + 1) : ℤ)

end

end A304569.P10601117333014937158

namespace A304569

/-- `A162641(A000040(n+1))^A096133(n+1)` -/
def P10601117333014937158.Spec : Prop :=
  ∀ n, P10601117333014937158.a n = (A304569 (n + 1) : ℚ)

end A304569

/-! ## A304569.P6906419641467172214

`A079694(A070939(n))^A096133(n+1)`
-/

namespace A304569.P6906419641467172214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079694 (A070939 n).toNat : ℚ) ^ (A096133 (n + 1) : ℤ)

end

end A304569.P6906419641467172214

namespace A304569

/-- `A079694(A070939(n))^A096133(n+1)` -/
def P6906419641467172214.Spec : Prop :=
  ∀ n, P6906419641467172214.a n = (A304569 (n + 1) : ℚ)

end A304569

/-! ## A304569.P16825001308551383186

`∏{d}[A094263(n+1), 1-#]`
-/

namespace A304569.P16825001308551383186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (1 - (d : ℤ))

end

end A304569.P16825001308551383186

namespace A304569

/-- `∏{d}[A094263(n+1), 1-#]` -/
def P16825001308551383186.Spec : Prop :=
  ∀ n, P16825001308551383186.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P16357543325743602020

`A000007(A094263(n+1))`
-/

namespace A304569.P16357543325743602020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A094263 (n + 1)).toNat

end

end A304569.P16357543325743602020

namespace A304569

/-- `A000007(A094263(n+1))` -/
def P16357543325743602020.Spec : Prop :=
  ∀ n, P16357543325743602020.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P14009713380521845490

`2-A318985(A094263(n+1)²)`
-/

namespace A304569.P14009713380521845490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A318985 (A094263 (n + 1) ^ 2).toNat

end

end A304569.P14009713380521845490

namespace A304569

/-- `2-A318985(A094263(n+1)²)` -/
def P14009713380521845490.Spec : Prop :=
  ∀ n, P14009713380521845490.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P17500844021209196165

`A318985(2*A094263(n+1)²)`
-/

namespace A304569.P17500844021209196165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 (2 * A094263 (n + 1) ^ 2).toNat

end

end A304569.P17500844021209196165

namespace A304569

/-- `A318985(2*A094263(n+1)²)` -/
def P17500844021209196165.Spec : Prop :=
  ∀ n, P17500844021209196165.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P18059843938181578479

`∏{d}[A094263(n+1), A094263(#)]²`
-/

namespace A304569.P18059843938181578479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A094263 d) ^ 2

end

end A304569.P18059843938181578479

namespace A304569

/-- `∏{d}[A094263(n+1), A094263(#)]²` -/
def P18059843938181578479.Spec : Prop :=
  ∀ n, P18059843938181578479.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P8713442882973668935

`A238532(2*(A094263(n+1)+1))`
-/

namespace A304569.P8713442882973668935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (2 * (A094263 (n + 1) + 1)).toNat

end

end A304569.P8713442882973668935

namespace A304569

/-- `A238532(2*(A094263(n+1)+1))` -/
def P8713442882973668935.Spec : Prop :=
  ∀ n, P8713442882973668935.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P15420907393478884639

`A094263(a(n-1)+1)^A094263(n+1)` with `a(0)=1`
-/

namespace A304569.P15420907393478884639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A094263 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) ^ (A094263 (n + 1) : ℤ)

end

end A304569.P15420907393478884639

namespace A304569

/-- `A094263(a(n-1)+1)^A094263(n+1)` -/
def P15420907393478884639.Spec : Prop :=
  ∀ n, P15420907393478884639.a n = (A304569 (n + 1) : ℚ)

end A304569

/-! ## A304569.P9491805616914560731

`A318985(A094263(n+1)+A094263(n+1)²)`
-/

namespace A304569.P9491805616914560731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 (A094263 (n + 1) + A094263 (n + 1) ^ 2).toNat

end

end A304569.P9491805616914560731

namespace A304569

/-- `A318985(A094263(n+1)+A094263(n+1)²)` -/
def P9491805616914560731.Spec : Prop :=
  ∀ n, P9491805616914560731.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P650078050169425719

`A238532(A094263(n+1)+A094263(n+1)+2)`
-/

namespace A304569.P650078050169425719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (A094263 (n + 1) + (A094263 (n + 1) + 2)).toNat

end

end A304569.P650078050169425719

namespace A304569

/-- `A238532(A094263(n+1)+A094263(n+1)+2)` -/
def P650078050169425719.Spec : Prop :=
  ∀ n, P650078050169425719.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P984250539075353411

`A318985((A094263(n+1)+1)*A094263(n+1))`
-/

namespace A304569.P984250539075353411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 ((A094263 (n + 1) + 1) * A094263 (n + 1)).toNat

end

end A304569.P984250539075353411

namespace A304569

/-- `A318985((A094263(n+1)+1)*A094263(n+1))` -/
def P984250539075353411.Spec : Prop :=
  ∀ n, P984250539075353411.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P6297545592809528498

`A025455(A094263(n+1)*A094263(n+1)+2)`
-/

namespace A304569.P6297545592809528498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A094263 (n + 1) * A094263 (n + 1) + 2).toNat

end

end A304569.P6297545592809528498

namespace A304569

/-- `A025455(A094263(n+1)*A094263(n+1)+2)` -/
def P6297545592809528498.Spec : Prop :=
  ∀ n, P6297545592809528498.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P17079098020569659278

`A036987(A096133(n+1)²)`
-/

namespace A304569.P17079098020569659278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A096133 (n + 1) ^ 2).toNat

end

end A304569.P17079098020569659278

namespace A304569

/-- `A036987(A096133(n+1)²)` -/
def P17079098020569659278.Spec : Prop :=
  ∀ n, P17079098020569659278.a n = A304569 (n + 1)

end A304569

/-! ## A304569.P8659648865770350598

`A004018(lcm(7, lcm(n, A049761(n+1))))`
-/

namespace A304569.P8659648865770350598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (Nat.lcm 7 (Int.lcm (n : ℤ) (A049761 (n + 1))))

end

end A304569.P8659648865770350598

namespace A304569

/-- `A004018(lcm(7, lcm(n, A049761(n+1))))` -/
def P8659648865770350598.Spec : Prop :=
  ∀ n, P8659648865770350598.a n = A304569 (n + 1)

end A304569

/-!
# A304570: Triangle read by rows: T(n,k) = 1 if k | n^e with e > 1 and n mod k != 0, T(n,k) = 0 otherwise (1 <= k <= n).

The programs for A304570, the canonical program `A304570.P4550797118024341307` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304570 has offset 1).

The definition of A304570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304570.P4550797118024341307

`A304569(n+1)-A051731(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A304570

/-- `A304569(n+1)-A051731(n+1)` -/
def P4550797118024341307.Spec : Prop :=
  ∀ n, P4550797118024341307.a n = A304570 (n + 1)

theorem P4550797118024341307.correct : P4550797118024341307.Spec := by
  intro n
  simp only [A304570, Nat.add_sub_cancel]

end A304570

/-! ## A304570.P18392741264298947396

`A304571(n+1)-A304572(n+1)`
-/

namespace A304570.P18392741264298947396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (n + 1) - A304572 (n + 1)

end

end A304570.P18392741264298947396

namespace A304570

/-- `A304571(n+1)-A304572(n+1)` -/
def P18392741264298947396.Spec : Prop :=
  ∀ n, P18392741264298947396.a n = A304570 (n + 1)

theorem P18392741264298947396.correct : P18392741264298947396.Spec := by
  intro n
  simp only [A304570, Nat.add_sub_cancel, A304570.P18392741264298947396.a, A304570.P4550797118024341307.a, A051731, A051731.P11318043630102858095.a, A304569, A304569.P1317992739176579829.a, A304571, A304571.P9163030136196335364.a, A304572, A304572.P1363963036755555797.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A096133, A096133.P11645736582096461884.a, A127368, A127368.P5347369318367987090.a, A054521, A054521.P4283920493715643574.a, A128227, A128227.P3230400421110190082.f1, A128227.P3230400421110190082.a, A010054, A010054.P18347828677204923252.a, A050873, A050873.P9265691843747829377.a, A063524, A063524.P5631347671191003537.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304570

/-! ## A304570.P9349797837767187369

`A304569(n+1)*A304571(n+1)`
-/

namespace A304570.P9349797837767187369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304569 (n + 1) * A304571 (n + 1)

end

end A304570.P9349797837767187369

namespace A304570

/-- `A304569(n+1)*A304571(n+1)` -/
def P9349797837767187369.Spec : Prop :=
  ∀ n, P9349797837767187369.a n = A304570 (n + 1)

end A304570

/-! ## A304570.P11279342566834588788

`A304571(gcd(n, A304572(n+1)+n)+1)`
-/

namespace A304570.P11279342566834588788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (Int.gcd (n : ℤ) (A304572 (n + 1) + (n : ℤ)) + 1)

end

end A304570.P11279342566834588788

namespace A304570

/-- `A304571(gcd(n, A304572(n+1)+n)+1)` -/
def P11279342566834588788.Spec : Prop :=
  ∀ n, P11279342566834588788.a n = A304570 (n + 1)

end A304570

/-! ## A304570.P6495505822300707409

`A280269(C(n, n+1)+A279907(n+1)²+1)`
-/

namespace A304570.P6495505822300707409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280269 ((Nat.choose n (n + 1) : ℤ) + A279907 (n + 1) ^ 2 + 1).toNat

end

end A304570.P6495505822300707409

namespace A304570

/-- `A280269(C(n, n+1)+A279907(n+1)²+1)` -/
def P6495505822300707409.Spec : Prop :=
  ∀ n, P6495505822300707409.a n = A304570 (n + 1)

end A304570

/-! ## A304570.P1158503059946972863

`A054521(n*A304572(n+1)+1)*A304571(n+1)`
-/

namespace A304570.P1158503059946972863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 ((n : ℤ) * A304572 (n + 1) + 1).toNat * A304571 (n + 1)

end

end A304570.P1158503059946972863

namespace A304570

/-- `A054521(n*A304572(n+1)+1)*A304571(n+1)` -/
def P1158503059946972863.Spec : Prop :=
  ∀ n, P1158503059946972863.a n = A304570 (n + 1)

end A304570

/-! ## A304570.P2582727091774384679

`A029410(gcd(A194981(n+1), A194987(n+1)))`
-/

namespace A304570.P2582727091774384679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029410 (Int.gcd (A194981 (n + 1)) (A194987 (n + 1)))

end

end A304570.P2582727091774384679

namespace A304570

/-- `A029410(gcd(A194981(n+1), A194987(n+1)))` -/
def P2582727091774384679.Spec : Prop :=
  ∀ n, P2582727091774384679.a n = A304570 (n + 1)

end A304570

/-! ## A304570.P4078477757279742235

`A053121(A053121(A053121(A095666(A053121(n)))))`
-/

namespace A304570.P4078477757279742235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A053121 (A053121 (A095666 (A053121 n).toNat).toNat).toNat).toNat

end

end A304570.P4078477757279742235

namespace A304570

/-- `A053121(A053121(A053121(A095666(A053121(n)))))` -/
def P4078477757279742235.Spec : Prop :=
  ∀ n, P4078477757279742235.a n = A304570 (n + 1)

end A304570

/-! ## A304570.P3875459575900374215

`A017766(n)%A099837(n)`
-/

namespace A304570.P3875459575900374215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017766 n) (A099837 n)

end

end A304570.P3875459575900374215

namespace A304570

/-- `A017766(n)%A099837(n)` -/
def P3875459575900374215.Spec : Prop :=
  ∀ n, P3875459575900374215.a n = A304570 (n + 1)

end A304570

/-! ## A304570.P15694880733864729513

`A064873(A009954(n))`
-/

namespace A304570.P15694880733864729513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 (A009954 n).toNat

end

end A304570.P15694880733864729513

namespace A304570

/-- `A064873(A009954(n))` -/
def P15694880733864729513.Spec : Prop :=
  ∀ n, P15694880733864729513.a n = A304570 (n + 1)

end A304570

/-!
# A304571: Triangle read by rows: T(n,k) = 1 if gcd(k,n) > 1 and n mod k != 0.

The programs for A304571, the canonical program `A304571.P9163030136196335364` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304571 has offset 1).

The definition of A304571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304571.P12507337557834549651

`A304572(n+1)+A304570(n+1)`
-/

namespace A304571.P12507337557834549651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304572 (n + 1) + A304570 (n + 1)

end

end A304571.P12507337557834549651

namespace A304571

/-- `A304572(n+1)+A304570(n+1)` -/
def P12507337557834549651.Spec : Prop :=
  ∀ n, P12507337557834549651.a n = A304571 (n + 1)

theorem P12507337557834549651.correct : P12507337557834549651.Spec := by
  intro n
  simp only [A304571, Nat.add_sub_cancel, A304571.P12507337557834549651.a, A304571.P9163030136196335364.a, A000007, A000007.P6599383543502402472.a, A051731, A051731.P11318043630102858095.a, A127368, A127368.P5347369318367987090.a, A304570, A304570.P4550797118024341307.a, A304572, A304572.P1363963036755555797.a, A048158, A048158.P1757030368331788429.a, A054521, A054521.P4283920493715643574.a, A128227, A128227.P3230400421110190082.f1, A128227.P3230400421110190082.a, A304569, A304569.P1317992739176579829.a, A010054, A010054.P18347828677204923252.a, A050873, A050873.P9265691843747829377.a, A063524, A063524.P5631347671191003537.a, A096133, A096133.P11645736582096461884.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A304571

/-! ## A304571.P9163030136196335364

`A000007(A127368(n+1)+A051731(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A304571

/-- `A000007(A127368(n+1)+A051731(n+1))` -/
def P9163030136196335364.Spec : Prop :=
  ∀ n, P9163030136196335364.a n = A304571 (n + 1)

theorem P9163030136196335364.correct : P9163030136196335364.Spec := by
  intro n
  simp only [A304571, Nat.add_sub_cancel]

end A304571

/-! ## A304571.P10095839381209185779

`1-A057427(A054522(n+1)+A054521(n+1))`
-/

namespace A304571.P10095839381209185779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 (A054522 (n + 1) + A054521 (n + 1)).toNat

end

end A304571.P10095839381209185779

namespace A304571

/-- `1-A057427(A054522(n+1)+A054521(n+1))` -/
def P10095839381209185779.Spec : Prop :=
  ∀ n, P10095839381209185779.a n = A304571 (n + 1)

end A304571

/-! ## A304571.P12466834294691660022

`A349317(n+1)-A051731(n+1)*A349317(n+1)`
-/

namespace A304571.P12466834294691660022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349317 (n + 1) - A051731 (n + 1) * A349317 (n + 1)

end

end A304571.P12466834294691660022

namespace A304571

/-- `A349317(n+1)-A051731(n+1)*A349317(n+1)` -/
def P12466834294691660022.Spec : Prop :=
  ∀ n, P12466834294691660022.a n = A304571 (n + 1)

end A304571

/-! ## A304571.P10136976609739185970

`A307662(n+1)%A050873(n+1)`
-/

namespace A304571.P10136976609739185970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307662 (n + 1)) (A050873 (n + 1))

end

end A304571.P10136976609739185970

namespace A304571

/-- `A307662(n+1)%A050873(n+1)` -/
def P10136976609739185970.Spec : Prop :=
  ∀ n, P10136976609739185970.a n = A304571 (n + 1)

end A304571

/-! ## A304571.P11327671423985147771

`A035214(n)-A164295(n+1)`
-/

namespace A304571.P11327671423985147771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n - A164295 (n + 1)

end

end A304571.P11327671423985147771

namespace A304571

/-- `A035214(n)-A164295(n+1)` -/
def P11327671423985147771.Spec : Prop :=
  ∀ n, P11327671423985147771.a n = A304571 (n + 1)

end A304571

/-! ## A304571.P8036194082923627978

`A000007((n+1)*A164295(n+1))`
-/

namespace A304571.P8036194082923627978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) * A164295 (n + 1)).toNat

end

end A304571.P8036194082923627978

namespace A304571

/-- `A000007((n+1)*A164295(n+1))` -/
def P8036194082923627978.Spec : Prop :=
  ∀ n, P8036194082923627978.a n = A304571 (n + 1)

end A304571

/-! ## A304571.P10257443928177494727

`A000007(A164295(n+1)+A000007(n)/A000005(n+1))`
-/

namespace A304571.P10257443928177494727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.roundAway ((A164295 (n + 1) : ℚ) + (A000007 n : ℚ) / (A000005 (n + 1) : ℚ))).toNat

end

end A304571.P10257443928177494727

namespace A304571

/-- `A000007(A164295(n+1)+A000007(n)/A000005(n+1))` -/
def P10257443928177494727.Spec : Prop :=
  ∀ n, P10257443928177494727.a n = A304571 (n + 1)

end A304571

/-! ## A304571.P4321993651438038573

`A000007(A164295(n+1)+A000007(n)/A002260(n+1))`
-/

namespace A304571.P4321993651438038573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.roundAway ((A164295 (n + 1) : ℚ) + (A000007 n : ℚ) / (A002260 (n + 1) : ℚ))).toNat

end

end A304571.P4321993651438038573

namespace A304571

/-- `A000007(A164295(n+1)+A000007(n)/A002260(n+1))` -/
def P4321993651438038573.Spec : Prop :=
  ∀ n, P4321993651438038573.a n = A304571 (n + 1)

end A304571

/-!
# A304572: Triangle read by rows: T(n,k) = 1 if k does not divide n^e, positive nonzero integers, and gcd(n,k) > 1.

The programs for A304572, the canonical program `A304572.P1363963036755555797` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304572 has offset 1).

The definition of A304572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304572.P1363963036755555797

`A304571(n+1)-A304570(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A304572

/-- `A304571(n+1)-A304570(n+1)` -/
def P1363963036755555797.Spec : Prop :=
  ∀ n, P1363963036755555797.a n = A304572 (n + 1)

theorem P1363963036755555797.correct : P1363963036755555797.Spec := by
  intro n
  simp only [A304572, Nat.add_sub_cancel]

end A304572

/-! ## A304572.P1656927038680646259

`char[lt[A304569(n+1), A304571(n+1)]]`
-/

namespace A304572.P1656927038680646259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304569 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A304572.P1656927038680646259

namespace A304572

/-- `char[lt[A304569(n+1), A304571(n+1)]]` -/
def P1656927038680646259.Spec : Prop :=
  ∀ n, (P1656927038680646259.a n : ℤ) = A304572 (n + 1)

end A304572

/-! ## A304572.P14435117811393290452

`1-A304569(n*A304571(n+1)+1)`
-/

namespace A304572.P14435117811393290452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A304569 ((n : ℤ) * A304571 (n + 1) + 1).toNat

end

end A304572.P14435117811393290452

namespace A304572

/-- `1-A304569(n*A304571(n+1)+1)` -/
def P14435117811393290452.Spec : Prop :=
  ∀ n, P14435117811393290452.a n = A304572 (n + 1)

end A304572

/-! ## A304572.P6082151367403894738

`A304571(gcd(n, A304569(n+1)+n)+1)`
-/

namespace A304572.P6082151367403894738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (Int.gcd (n : ℤ) (A304569 (n + 1) + (n : ℤ)) + 1)

end

end A304572.P6082151367403894738

namespace A304572

/-- `A304571(gcd(n, A304569(n+1)+n)+1)` -/
def P6082151367403894738.Spec : Prop :=
  ∀ n, P6082151367403894738.a n = A304572 (n + 1)

end A304572

/-! ## A304572.P4498868744761545872

`A304571(A002024(n+1)*A304569(n+1)+n+1)`
-/

namespace A304572.P4498868744761545872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (A002024 (n + 1) * A304569 (n + 1) + (n : ℤ) + 1).toNat

end

end A304572.P4498868744761545872

namespace A304572

/-- `A304571(A002024(n+1)*A304569(n+1)+n+1)` -/
def P4498868744761545872.Spec : Prop :=
  ∀ n, P4498868744761545872.a n = A304572 (n + 1)

end A304572

/-! ## A304572.P10020173768796452507

`A054521(n*A304569(n+1)+1)*A304571(n+1)`
-/

namespace A304572.P10020173768796452507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 ((n : ℤ) * A304569 (n + 1) + 1).toNat * A304571 (n + 1)

end

end A304572.P10020173768796452507

namespace A304572

/-- `A054521(n*A304569(n+1)+1)*A304571(n+1)` -/
def P10020173768796452507.Spec : Prop :=
  ∀ n, P10020173768796452507.a n = A304572 (n + 1)

end A304572

/-! ## A304572.P2232944548921746835

`A001221(A050873(n+1))%A122191(n+1)`
-/

namespace A304572.P2232944548921746835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (A050873 (n + 1)).toNat) (A122191 (n + 1))

end

end A304572.P2232944548921746835

namespace A304572

/-- `A001221(A050873(n+1))%A122191(n+1)` -/
def P2232944548921746835.Spec : Prop :=
  ∀ n, P2232944548921746835.a n = A304572 (n + 1)

end A304572

/-! ## A304572.P11441549886534085456

`and(A105855(A143842(n)), A304571(n+1))`
-/

namespace A304572.P11441549886534085456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105855 (A143842 n).toNat) (A304571 (n + 1))

end

end A304572.P11441549886534085456

namespace A304572

/-- `and(A105855(A143842(n)), A304571(n+1))` -/
def P11441549886534085456.Spec : Prop :=
  ∀ n, P11441549886534085456.a n = A304572 (n + 1)

end A304572

/-! ## A304572.P9738974286455571754

`and(∑[A319135(n+1)], A304571(n+1))`
-/

namespace A304572.P9738974286455571754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A304571 (n + 1))

end

end A304572.P9738974286455571754

namespace A304572

/-- `and(∑[A319135(n+1)], A304571(n+1))` -/
def P9738974286455571754.Spec : Prop :=
  ∀ n, P9738974286455571754.a n = A304572 (n + 1)

end A304572

/-! ## A304572.P15125637882056761403

`A010894(A027422(n))`
-/

namespace A304572.P15125637882056761403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A027422 n).toNat + 21)

end

end A304572.P15125637882056761403

namespace A304572

/-- `A010894(A027422(n))` -/
def P15125637882056761403.Spec : Prop :=
  ∀ n, P15125637882056761403.a n = A304572 (n + 1)

end A304572

/-!
# A304573: Number of non-perfect powers (A007916) less than n and relatively prime to n.

The programs for A304573, there is no canonical definition to state claims against.
-/

/-! ## A304573.P13875812190094471302

`(Δ[A002088(n)]-A304574(n+1))%(n+1)`
-/

namespace A304573.P13875812190094471302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - A304574 (n + 1)) (n + 1 : ℤ)

end

end A304573.P13875812190094471302

/-! ## A304573.P2315161468598031011

`A000010(n+1)%(n+1)-A304574(n+1)`
-/

namespace A304573.P2315161468598031011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (n + 1 : ℤ) - A304574 (n + 1)

end

end A304573.P2315161468598031011

/-! ## A304573.P7368538939780254071

`A000010(n+1)-A304574(round(acot(n)+n)+1)`
-/

namespace A304573.P7368538939780254071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A304574 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1).toNat

end

end A304573.P7368538939780254071

/-! ## A304573.P10195248214598857824

`Δ[A002088(n)]-A028310(A304574(n+1))`
-/

namespace A304573.P10195248214598857824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A028310 (A304574 (n + 1)).toNat

end

end A304573.P10195248214598857824

/-! ## A304573.P868527150864125570

`A000010(n+1)-A028310(A304574(n+1))`
-/

namespace A304573.P868527150864125570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A028310 (A304574 (n + 1)).toNat

end

end A304573.P868527150864125570

/-! ## A304573.P17638232817070674219

`Δ[A002088(A000007(n)+n)]-A304574(n+1)`
-/

namespace A304573.P17638232817070674219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A304574 (n + 1)

end

end A304573.P17638232817070674219

/-! ## A304573.P2812063877448372750

`A039649(n+1)-(A028310(A304574(n+1))+1)`
-/

namespace A304573.P2812063877448372750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A028310 (A304574 (n + 1)).toNat + 1)

end

end A304573.P2812063877448372750

/-! ## A304573.P12731672920431770524

`A000010(n+1)-(A304574(n+1)+A000007(n))`
-/

namespace A304573.P12731672920431770524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (A304574 (n + 1) + A000007 n)

end

end A304573.P12731672920431770524

/-! ## A304573.P10434561904363791117

`∑{d}[n+1, (n+1)/#*A008683(#)]-A028310(A304574(n+1))`
-/

namespace A304573.P10434561904363791117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ) - (A028310 (A304574 (n + 1)).toNat : ℚ)

end

end A304573.P10434561904363791117

/-!
# A304574: Number of perfect powers (A001597) less than n and relatively prime to n.

The programs for A304574, there is no canonical definition to state claims against.
-/

/-! ## A304574.P9874091251517535321

`A382770(n+1)%A001481(A382765(n+1))`
-/

namespace A304574.P9874091251517535321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382770 (n + 1)) (A001481 (A382765 (n + 1)).toNat)

end

end A304574.P9874091251517535321

/-! ## A304574.P11188374997725880181

`A000010(n+1)%(n+1)-A304573(n+1)`
-/

namespace A304574.P11188374997725880181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (n + 1 : ℤ) - A304573 (n + 1)

end

end A304574.P11188374997725880181

/-! ## A304574.P620172694211728727

`A382770(n+1)%∑[A152650(n)]`
-/

namespace A304574.P620172694211728727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382770 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304574.P620172694211728727

/-! ## A304574.P5953526150936065885

`A382770(n+1)+A055615(A378859(n+1))`
-/

namespace A304574.P5953526150936065885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382770 (n + 1) + A055615 (A378859 (n + 1)).toNat

end

end A304574.P5953526150936065885

/-! ## A304574.P17041886805199025630

`A382770(A112526(A052486(n+1))+n)`
-/

namespace A304574.P17041886805199025630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382770 (A112526 (A052486 (n + 1)).toNat + (n : ℤ)).toNat

end

end A304574.P17041886805199025630

/-! ## A304574.P15702673500731521135

`A382770(n+1)+A003982(A139597(3*n+1))`
-/

namespace A304574.P15702673500731521135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382770 (n + 1) + A003982 (A139597 (3 * n + 1)).toNat

end

end A304574.P15702673500731521135

/-! ## A304574.P14993742876800569642

`A382770(n+1)+A000122(A216765(2*n+5))`
-/

namespace A304574.P14993742876800569642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382770 (n + 1) + A000122 (A216765 (2 * n + 5)).toNat

end

end A304574.P14993742876800569642

/-! ## A304574.P8293483469123758722

`A382770(n+1)+A000122(A090866(n+1))`
-/

namespace A304574.P8293483469123758722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382770 (n + 1) + A000122 (A090866 (n + 1)).toNat

end

end A304574.P8293483469123758722

/-! ## A304574.P3255368136060010961

`gcd(A121373(A052486(n+2)), A382770(n+1))`
-/

namespace A304574.P3255368136060010961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121373 (A052486 (n + 2)).toNat) (A382770 (n + 1))

end

end A304574.P3255368136060010961

/-!
# A304575: a(n) = Sum_{d|n} #{k < d, k squarefree and relatively prime to d}.

The programs for A304575, there is no canonical definition to state claims against.
-/

/-! ## A304575.P17701990544101077265

`∑{d}[n+1, A073311(#)]`
-/

namespace A304575.P17701990544101077265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073311 d

end

end A304575.P17701990544101077265

/-! ## A304575.P7955763894370530374

`A193278(A000124(n))-A310398(n)%A003963(n+1)`
-/

namespace A304575.P7955763894370530374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193278 (A000124 n).toNat - Int.tmod (A310398 n) (A003963 (n + 1))

end

end A304575.P7955763894370530374

/-!
# A304576: a(n) = Sum_{k < n, k squarefree and relatively prime to n} (-1)^(k-1).

The programs for A304576, there is no canonical definition to state claims against.
-/

/-! ## A304576.P492593229819526329

`A069010(xor(3, n+1)^A000120(n))`
-/

namespace A304576.P492593229819526329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.roundAway ((Nat.xor 3 (n + 1) : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A304576.P492593229819526329

/-! ## A304576.P5429456203763340603

`A000122(A011782(n))-A112399(n+1)`
-/

namespace A304576.P5429456203763340603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A011782 n).toNat - A112399 (n + 1)

end

end A304576.P5429456203763340603

/-! ## A304576.P4520756305026199261

`A301343(∑[A096014(n^(n%2))])`
-/

namespace A304576.P4520756305026199261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096014 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304576.P4520756305026199261

/-! ## A304576.P5738544128344061314

`A139351(A279179(n)+A139351(n))`
-/

namespace A304576.P5738544128344061314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A279179 n + A139351 n).toNat

end

end A304576.P5738544128344061314

/-! ## A304576.P3708398851865015518

`xor(A038548(A105754(n+1)), A171588(n+1))`
-/

namespace A304576.P3708398851865015518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038548 (A105754 (n + 1)).toNat) (A171588 (n + 1))

end

end A304576.P3708398851865015518

/-!
# A304577: Period 21: repeat (0,0,0,0,1,1,1,1,1,0,1,0,1,0,0,1,1,0,0,0,1).

The programs for A304577, the canonical program `A304577.P3831927895768727681` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304577 has offset 0).

The definition of A304577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304577.P3831927895768727681

`xor(a(n-1), a(n-5))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304577

/-- `xor(a(n-1), a(n-5))` -/
def P3831927895768727681.Spec : Prop :=
  ∀ n, (P3831927895768727681.a n : ℤ) = A304577 n

theorem P3831927895768727681.correct : P3831927895768727681.Spec := by
  intro n
  simp only [A304577]

end A304577

/-!
# A304578: a(n) = (n^2 + 1) * 5^n + (n^2 + 2) * 3^n.

The programs for A304578, the canonical program `A304578.P2309201485826891593` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304578 has offset 0).

The definition of A304578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+1)*5^n+(n²+2)*3^n` (program `A304578.P2309201485826891593`, by `A304578.P2309201485826891593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304578.P2309201485826891593

`(n²+1)*5^n+(n²+2)*3^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304578

/-- `(n²+1)*5^n+(n²+2)*3^n` -/
def P2309201485826891593.Spec : Prop :=
  ∀ n, (P2309201485826891593.a n : ℤ) = A304578 n

theorem P2309201485826891593.correct : P2309201485826891593.Spec := by
  intro n
  simp only [A304578]

end A304578

/-!
# A304579: a(n) = (n^2 + 1)*(n^2 + 2).

The programs for A304579, the canonical program `A304579.P17900320622867714008` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304579 has offset 0).

The definition of A304579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+1)*(n²+2)` (program `A304579.P17900320622867714008`, by `A304579.P17900320622867714008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304579.P17900320622867714008

`(n²+1)*(n²+2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304579

/-- `(n²+1)*(n²+2)` -/
def P17900320622867714008.Spec : Prop :=
  ∀ n, (P17900320622867714008.a n : ℤ) = A304579 n

theorem P17900320622867714008.correct : P17900320622867714008.Spec := by
  intro n
  simp only [A304579]

end A304579

/-! ## A304579.P8208340144480297575

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=6, a(2)=30, a(3)=110, a(4)=306`
-/

namespace A304579.P8208340144480297575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 30, 110, 306] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A304579.P8208340144480297575

namespace A304579

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8208340144480297575.Spec : Prop :=
  ∀ n, P8208340144480297575.a n = A304579 n

theorem P8208340144480297575.correct : P8208340144480297575.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A304579, Nat.add_sub_cancel, A304579.P8208340144480297575.a, A304579.P17900320622867714008.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A304579, Nat.add_sub_cancel, A304579.P8208340144480297575.a, A304579.P17900320622867714008.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [h1, h2, h3, h4, h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304579

/-! ## A304579.P17003329687564190181

`A002378(A002522(n))`
-/

namespace A304579.P17003329687564190181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A002522 n).toNat

end

end A304579.P17003329687564190181

namespace A304579

/-- `A002378(A002522(n))` -/
def P17003329687564190181.Spec : Prop :=
  ∀ n, P17003329687564190181.a n = A304579 n

end A304579

/-! ## A304579.P2865533917548100317

`lcm(2, C(n²+2, 2))`
-/

namespace A304579.P2865533917548100317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.choose (n ^ 2 + 2) 2)

end

end A304579.P2865533917548100317

namespace A304579

/-- `lcm(2, C(n²+2, 2))` -/
def P2865533917548100317.Spec : Prop :=
  ∀ n, (P2865533917548100317.a n : ℤ) = A304579 n

end A304579

/-! ## A304579.P14344705852016911220

`lcm(n²+1, n²+2)`
-/

namespace A304579.P14344705852016911220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n ^ 2 + 1) (n ^ 2 + 2)

end

end A304579.P14344705852016911220

namespace A304579

/-- `lcm(n²+1, n²+2)` -/
def P14344705852016911220.Spec : Prop :=
  ∀ n, (P14344705852016911220.a n : ℤ) = A304579 n

end A304579

/-! ## A304579.P17279971501364614399

`xor(3, (n²+1)²+n²)`
-/

namespace A304579.P17279971501364614399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 ((n ^ 2 + 1) ^ 2 + n ^ 2)

end

end A304579.P17279971501364614399

namespace A304579

/-- `xor(3, (n²+1)²+n²)` -/
def P17279971501364614399.Spec : Prop :=
  ∀ n, (P17279971501364614399.a n : ℤ) = A304579 n

end A304579

/-! ## A304579.P3219397494973572540

`∏{d}[-a(n-1), n²+#]` with `a(0)=2`
-/

namespace A304579.P3219397494973572540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (n ^ 2 + d)

end

end A304579.P3219397494973572540

namespace A304579

/-- `∏{d}[-a(n-1), n²+#]` -/
def P3219397494973572540.Spec : Prop :=
  ∀ n, (P3219397494973572540.a n : ℤ) = A304579 n

end A304579

/-! ## A304579.P10879273583858426735

`A057721(n)+1`
-/

namespace A304579.P10879273583858426735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057721 n + 1

end

end A304579.P10879273583858426735

namespace A304579

/-- `A057721(n)+1` -/
def P10879273583858426735.Spec : Prop :=
  ∀ n, P10879273583858426735.a n = A304579 n

theorem P10879273583858426735.correct : P10879273583858426735.Spec := by
  intro n
  simp only [A304579, Nat.add_sub_cancel, A304579.P10879273583858426735.a, A304579.P17900320622867714008.a, A057721, A057721.P14460608629272421114.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304579

/-! ## A304579.P7915852038649389024

`A178390(n)+n²`
-/

namespace A304579.P7915852038649389024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178390 n + (n ^ 2 : ℤ)

end

end A304579.P7915852038649389024

namespace A304579

/-- `A178390(n)+n²` -/
def P7915852038649389024.Spec : Prop :=
  ∀ n, P7915852038649389024.a n = A304579 n

theorem P7915852038649389024.correct : P7915852038649389024.Spec := by
  intro n
  simp only [A304579, Nat.add_sub_cancel, A304579.P7915852038649389024.a, A304579.P17900320622867714008.a, A178390, A178390.P15794302857108467485.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304579

/-! ## A304579.P8464744011871073088

`n*A079908(n)+2`
-/

namespace A304579.P8464744011871073088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A079908 n + 2

end

end A304579.P8464744011871073088

namespace A304579

/-- `n*A079908(n)+2` -/
def P8464744011871073088.Spec : Prop :=
  ∀ n, P8464744011871073088.a n = A304579 n

end A304579

/-! ## A304579.P9154984011731048161

`n²+A082044(n)+1`
-/

namespace A304579.P9154984011731048161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A082044 n + 1)

end

end A304579.P9154984011731048161

namespace A304579

/-- `n²+A082044(n)+1` -/
def P9154984011731048161.Spec : Prop :=
  ∀ n, P9154984011731048161.a n = A304579 n

theorem P9154984011731048161.correct : P9154984011731048161.Spec := by
  intro n
  simp only [A304579, Nat.add_sub_cancel, A304579.P9154984011731048161.a, A304579.P17900320622867714008.a, A082044, A082044.P12148917754316249360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304579

/-! ## A304579.P11001139729960553990

`A082106(n)+1-n²`
-/

namespace A304579.P11001139729960553990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082106 n + (1 - (n ^ 2 : ℤ))

end

end A304579.P11001139729960553990

namespace A304579

/-- `A082106(n)+1-n²` -/
def P11001139729960553990.Spec : Prop :=
  ∀ n, P11001139729960553990.a n = A304579 n

theorem P11001139729960553990.correct : P11001139729960553990.Spec := by
  intro n
  simp only [A304579, Nat.add_sub_cancel, A304579.P11001139729960553990.a, A304579.P17900320622867714008.a, A082106, A082106.P6467182335173470423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304579

/-! ## A304579.P6812947650155334847

`A304726(n)-(n²+1)`
-/

namespace A304579.P6812947650155334847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304726 n - (n ^ 2 + 1 : ℤ)

end

end A304579.P6812947650155334847

namespace A304579

/-- `A304726(n)-(n²+1)` -/
def P6812947650155334847.Spec : Prop :=
  ∀ n, P6812947650155334847.a n = A304579 n

theorem P6812947650155334847.correct : P6812947650155334847.Spec := by
  intro n
  simp only [A304579, Nat.add_sub_cancel, A304579.P6812947650155334847.a, A304579.P17900320622867714008.a, A304726, A304726.P3688958258049521962.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304579

/-! ## A304579.P6042810684515741578

`n²*A117950(n)+2`
-/

namespace A304579.P6042810684515741578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A117950 n + 2

end

end A304579.P6042810684515741578

namespace A304579

/-- `n²*A117950(n)+2` -/
def P6042810684515741578.Spec : Prop :=
  ∀ n, P6042810684515741578.a n = A304579 n

theorem P6042810684515741578.correct : P6042810684515741578.Spec := by
  intro n
  simp only [A304579, Nat.add_sub_cancel, A304579.P6042810684515741578.a, A304579.P17900320622867714008.a, A117950, A117950.P14722515508371885867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304579

/-! ## A304579.P8398722239618561053

`n*A005491(n)-(n-2)`
-/

namespace A304579.P8398722239618561053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005491 n - ((n : ℤ) - 2)

end

end A304579.P8398722239618561053

namespace A304579

/-- `n*A005491(n)-(n-2)` -/
def P8398722239618561053.Spec : Prop :=
  ∀ n, P8398722239618561053.a n = A304579 n

theorem P8398722239618561053.correct : P8398722239618561053.Spec := by
  intro n
  simp only [A304579, Nat.add_sub_cancel, A304579.P8398722239618561053.a, A304579.P17900320622867714008.a, A005491, A005491.P208303026648680842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304579

/-! ## A304579.P7399450437083971020

`A056107(n)+A002523(n)`
-/

namespace A304579.P7399450437083971020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n + A002523 n

end

end A304579.P7399450437083971020

namespace A304579

/-- `A056107(n)+A002523(n)` -/
def P7399450437083971020.Spec : Prop :=
  ∀ n, P7399450437083971020.a n = A304579 n

theorem P7399450437083971020.correct : P7399450437083971020.Spec := by
  intro n
  simp only [A304579, Nat.add_sub_cancel, A304579.P7399450437083971020.a, A304579.P17900320622867714008.a, A002523, A002523.P178649398705969946.a, A056107, A056107.P16256314836093114361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304579

/-! ## A304579.P17639055082229970748

`A082044(n)+A002522(n)`
-/

namespace A304579.P17639055082229970748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082044 n + A002522 n

end

end A304579.P17639055082229970748

namespace A304579

/-- `A082044(n)+A002522(n)` -/
def P17639055082229970748.Spec : Prop :=
  ∀ n, P17639055082229970748.a n = A304579 n

theorem P17639055082229970748.correct : P17639055082229970748.Spec := by
  intro n
  simp only [A304579, Nat.add_sub_cancel, A304579.P17639055082229970748.a, A304579.P17900320622867714008.a, A002522, A002522.P3778392011853271743.a, A082044, A082044.P12148917754316249360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304579

/-! ## A304579.P2426142541565369668

`A054603(n)+A051890(n)`
-/

namespace A304579.P2426142541565369668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054603 n + A051890 n

end

end A304579.P2426142541565369668

namespace A304579

/-- `A054603(n)+A051890(n)` -/
def P2426142541565369668.Spec : Prop :=
  ∀ n, P2426142541565369668.a n = A304579 n

theorem P2426142541565369668.correct : P2426142541565369668.Spec := by
  intro n
  simp only [A304579, Nat.add_sub_cancel, A304579.P2426142541565369668.a, A304579.P17900320622867714008.a, A051890, A051890.P17202989188408252135.a, A054603, A054603.P10637400569586555311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304579

/-! ## A304579.P5292210798063698794

`A060886(n)+A053755(n)`
-/

namespace A304579.P5292210798063698794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060886 n + A053755 n

end

end A304579.P5292210798063698794

namespace A304579

/-- `A060886(n)+A053755(n)` -/
def P5292210798063698794.Spec : Prop :=
  ∀ n, P5292210798063698794.a n = A304579 n

theorem P5292210798063698794.correct : P5292210798063698794.Spec := by
  intro n
  simp only [A304579, Nat.add_sub_cancel, A304579.P5292210798063698794.a, A304579.P17900320622867714008.a, A053755, A053755.P11748163540145338459.a, A060886, A060886.P3465628418501274115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304579

/-!
# A304580: Period 16: repeat 1,8,3,6,5,4,7,2,9,0,7,2,5,4,3,6.

The programs for A304580, the canonical program `A304580.P2846750086362015889` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304580 has offset 1).

The definition of A304580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304580.P2846750086362015889

`a(n-2)-a(n-8)+a(n-10)` with `a(0)=1, a(1)=8, a(2)=3, a(3)=6, a(4)=5, a(5)=4, a(6)=7, a(7)=2, a(8)=9, a(9)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304580

/-- `a(n-2)-a(n-8)+a(n-10)` -/
def P2846750086362015889.Spec : Prop :=
  ∀ n, P2846750086362015889.a n = A304580 (n + 1)

theorem P2846750086362015889.correct : P2846750086362015889.Spec := by
  intro n
  simp only [A304580, Nat.add_sub_cancel]

end A304580

/-!
# A304582: Denominator of Sum_{k=1..n-1} 1/(k*(n-k))^2.

The programs for A304582, there is no canonical definition to state claims against.
-/

/-! ## A304582.P10133687325381880145

`A341530(A045992(n)*A346517(n))`
-/

namespace A304582.P10133687325381880145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (A045992 n * A346517 n).toNat

end

end A304582.P10133687325381880145

/-! ## A304582.P3568050674022197417

`A341530(lcm(A033306(n), A045992(n)))`
-/

namespace A304582.P3568050674022197417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (Int.lcm (A033306 n) (A045992 n))

end

end A304582.P3568050674022197417

/-!
# A304583: Period 18: repeat 1,8,3,6,5,4,7,2,9,0,9,2,7,4,5,6,3,8.

The programs for A304583, the canonical program `A304583.P6719767480601290813` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304583 has offset 1).

The definition of A304583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304583.P6719767480601290813

`A199264(8*n+9)+A000035(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A304583

/-- `A199264(8*n+9)+A000035(n+1)` -/
def P6719767480601290813.Spec : Prop :=
  ∀ n, P6719767480601290813.a n = A304583 (n + 1)

theorem P6719767480601290813.correct : P6719767480601290813.Spec := by
  intro n
  simp only [A304583, Nat.add_sub_cancel]

end A304583

/-!
# A304584: A linear mapping a(n) = x + d*n of pairs of nonnegative integers (x,d), where the pairs are enumerated by antidiagonals.

The programs for A304584, the canonical program `A304584.P17978480796387460377` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304584 has offset 0).

The definition of A304584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304584.P17978480796387460377

`A025581(n)+n*A002262(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A304584

/-- `A025581(n)+n*A002262(n)` -/
def P17978480796387460377.Spec : Prop :=
  ∀ n, P17978480796387460377.a n = A304584 n

theorem P17978480796387460377.correct : P17978480796387460377.Spec := by
  intro n
  simp only [A304584]

end A304584

/-! ## A304584.P11114880141555615815

`A025581(n)+n*log2(A059268(n))`
-/

namespace A304584.P11114880141555615815
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℝ) + (n : ℝ) * Real.logb 2 (A059268 n : ℝ)

end

end A304584.P11114880141555615815

namespace A304584

/-- `A025581(n)+n*log2(A059268(n))` -/
def P11114880141555615815.Spec : Prop :=
  ∀ n, P11114880141555615815.a n = (A304584 n : ℝ)

end A304584

/-! ## A304584.P6481068871859508599

`log2(A130321(n))+n*A002262(n)`
-/

namespace A304584.P6481068871859508599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) + ((n : ℤ) * A002262 n : ℝ)

end

end A304584.P6481068871859508599

namespace A304584

/-- `log2(A130321(n))+n*A002262(n)` -/
def P6481068871859508599.Spec : Prop :=
  ∀ n, P6481068871859508599.a n = (A304584 n : ℝ)

end A304584

/-! ## A304584.P11941638511510367098

`n*A002262(n)-∑[A167407(n)]`
-/

namespace A304584.P11941638511510367098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002262 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304584.P11941638511510367098

namespace A304584

/-- `n*A002262(n)-∑[A167407(n)]` -/
def P11941638511510367098.Spec : Prop :=
  ∀ n, P11941638511510367098.a n = A304584 n

end A304584

/-! ## A304584.P8449745844482070349

`A003056(n)+(n-1)*A002262(n)`
-/

namespace A304584.P8449745844482070349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + ((n : ℤ) - 1) * A002262 n

end

end A304584.P8449745844482070349

namespace A304584

/-- `A003056(n)+(n-1)*A002262(n)` -/
def P8449745844482070349.Spec : Prop :=
  ∀ n, P8449745844482070349.a n = A304584 n

end A304584

/-! ## A304584.P15632527206780789522

`A057554(2*(n+1))+n*A057554(2*n+1)`
-/

namespace A304584.P15632527206780789522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * (n + 1)) + (n : ℤ) * A057554 (2 * n + 1)

end

end A304584.P15632527206780789522

namespace A304584

/-- `A057554(2*(n+1))+n*A057554(2*n+1)` -/
def P15632527206780789522.Spec : Prop :=
  ∀ n, P15632527206780789522.a n = A304584 n

end A304584

/-! ## A304584.P7148889280126264560

`A002262(A061579(n))+n*A002262(n)`
-/

namespace A304584.P7148889280126264560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A061579 n).toNat + (n : ℤ) * A002262 n

end

end A304584.P7148889280126264560

namespace A304584

/-- `A002262(A061579(n))+n*A002262(n)` -/
def P7148889280126264560.Spec : Prop :=
  ∀ n, P7148889280126264560.a n = A304584 n

end A304584

/-! ## A304584.P480130917032439282

`A025581(n)+n*A025581(A061579(n))`
-/

namespace A304584.P480130917032439282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (n : ℤ) * A025581 (A061579 n).toNat

end

end A304584.P480130917032439282

namespace A304584

/-- `A025581(n)+n*A025581(A061579(n))` -/
def P480130917032439282.Spec : Prop :=
  ∀ n, P480130917032439282.a n = A304584 n

end A304584

/-! ## A304584.P185055718140743318

`A002262(A038722(n+2))+n*A002262(n)`
-/

namespace A304584.P185055718140743318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A038722 (n + 2)).toNat + (n : ℤ) * A002262 n

end

end A304584.P185055718140743318

namespace A304584

/-- `A002262(A038722(n+2))+n*A002262(n)` -/
def P185055718140743318.Spec : Prop :=
  ∀ n, P185055718140743318.a n = A304584 n

end A304584

/-! ## A304584.P18413877632275417378

`A003987(A286147(n))+n*A002262(n)`
-/

namespace A304584.P18413877632275417378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A286147 n).toNat + (n : ℤ) * A002262 n

end

end A304584.P18413877632275417378

namespace A304584

/-- `A003987(A286147(n))+n*A002262(n)` -/
def P18413877632275417378.Spec : Prop :=
  ∀ n, P18413877632275417378.a n = A304584 n

end A304584

/-! ## A304584.P3096834455411237134

`A025581(n)+n*A025581(A286147(n))`
-/

namespace A304584.P3096834455411237134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (n : ℤ) * A025581 (A286147 n).toNat

end

end A304584.P3096834455411237134

namespace A304584

/-- `A025581(n)+n*A025581(A286147(n))` -/
def P3096834455411237134.Spec : Prop :=
  ∀ n, P3096834455411237134.a n = A304584 n

end A304584

/-! ## A304584.P6385593666057167259

`A025581(n)+n*A003987(A286145(n))`
-/

namespace A304584.P6385593666057167259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (n : ℤ) * A003987 (A286145 n).toNat

end

end A304584.P6385593666057167259

namespace A304584

/-- `A025581(n)+n*A003987(A286145(n))` -/
def P6385593666057167259.Spec : Prop :=
  ∀ n, P6385593666057167259.a n = A304584 n

end A304584

/-! ## A304584.P15680716844722329763

`A023416(A099627(n))+n*A002262(n)`
-/

namespace A304584.P15680716844722329763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A099627 n).toNat + (n : ℤ) * A002262 n

end

end A304584.P15680716844722329763

namespace A304584

/-- `A023416(A099627(n))+n*A002262(n)` -/
def P15680716844722329763.Spec : Prop :=
  ∀ n, P15680716844722329763.a n = A304584 n

end A304584

/-!
# A304585: A linear mapping a(n) = x + d*n of pairs of nonnegative integers (x,d), where the pairs are enumerated by meandering antidiagonals.

The programs for A304585, there is no canonical definition to state claims against.
-/

/-! ## A304585.P9612000586757113455

`A003056(n)+(n-1)*A319571(2*n)`
-/

namespace A304585.P9612000586757113455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + ((n : ℤ) - 1) * A319571 (2 * n)

end

end A304585.P9612000586757113455

/-! ## A304585.P18337148985006700440

`A319571(2*n+1)+n*A319571(2*n)`
-/

namespace A304585.P18337148985006700440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (2 * n + 1) + (n : ℤ) * A319571 (2 * n)

end

end A304585.P18337148985006700440

/-! ## A304585.P8689206276299949636

`A319573(n)+n*A319572(n)`
-/

namespace A304585.P8689206276299949636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319573 n + (n : ℤ) * A319572 n

end

end A304585.P8689206276299949636

/-! ## A304585.P5089300356416394708

`A003056(n)+(n-1)*A319572(n)`
-/

namespace A304585.P5089300356416394708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + ((n : ℤ) - 1) * A319572 n

end

end A304585.P5089300356416394708

/-! ## A304585.P14694871728781891139

`A319573(n)+n*A319571(2*n)`
-/

namespace A304585.P14694871728781891139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319573 n + (n : ℤ) * A319571 (2 * n)

end

end A304585.P14694871728781891139

/-! ## A304585.P824812253880692531

`A319571(2*n+1)+n*A319572(n)`
-/

namespace A304585.P824812253880692531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (2 * n + 1) + (n : ℤ) * A319572 n

end

end A304585.P824812253880692531

/-! ## A304585.P7957556576603816310

`A319573(n)-A001489(n*A319572(n))`
-/

namespace A304585.P7957556576603816310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319573 n - A001489 ((n : ℤ) * A319572 n).toNat

end

end A304585.P7957556576603816310

/-! ## A304585.P2037939951862846953

`∑[A073424(n)]-A024000(n)*A319572(n)`
-/

namespace A304585.P2037939951862846953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024000 n * A319572 n

end

end A304585.P2037939951862846953

/-! ## A304585.P7720883169160706613

`A014132(n+1)-(A024000(n)*A319572(n)+n+2)`
-/

namespace A304585.P7720883169160706613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) - (A024000 n * A319572 n + (n + 2 : ℤ))

end

end A304585.P7720883169160706613

/-! ## A304585.P11696271748139469132

`A123578(A057944(n))-A024000(n)*A319572(n)`
-/

namespace A304585.P11696271748139469132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A057944 n).toNat - A024000 n * A319572 n

end

end A304585.P11696271748139469132

/-!
# A304586: A linear mapping a(n) = x + d*n of pairs of integers (x,d), where the pairs are enumerated by the counterclockwise square spiral (an axis-parallel number spiral) starting at 0.

The programs for A304586, the canonical program `A304586.P17678521593836003710` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304586 has offset 0).

The definition of A304586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304586.P17678521593836003710

`A174344(n+1)+n*A274923(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A304586

/-- `A174344(n+1)+n*A274923(n+1)` -/
def P17678521593836003710.Spec : Prop :=
  ∀ n, P17678521593836003710.a n = A304586 n

theorem P17678521593836003710.correct : P17678521593836003710.Spec := by
  intro n
  simp only [A304586]

end A304586

/-! ## A304586.P17187926833877766945

`A174344(n+1)-n*A268038(n+1)`
-/

namespace A304586.P17187926833877766945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) - (n : ℤ) * A268038 (n + 1)

end

end A304586.P17187926833877766945

namespace A304586

/-- `A174344(n+1)-n*A268038(n+1)` -/
def P17187926833877766945.Spec : Prop :=
  ∀ n, P17187926833877766945.a n = A304586 n

end A304586

/-! ## A304586.P9618410749125438483

`A296030(2*n+1)+n*A296030(2*(n+1))`
-/

namespace A304586.P9618410749125438483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * n + 1) + (n : ℤ) * A296030 (2 * (n + 1))

end

end A304586.P9618410749125438483

namespace A304586

/-- `A296030(2*n+1)+n*A296030(2*(n+1))` -/
def P9618410749125438483.Spec : Prop :=
  ∀ n, P9618410749125438483.a n = A304586 n

end A304586

/-! ## A304586.P8818587208124502111

`A174344(n+1)+n*A174344(A020703(n+1))`
-/

namespace A304586.P8818587208124502111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) + (n : ℤ) * A174344 (A020703 (n + 1)).toNat

end

end A304586.P8818587208124502111

namespace A304586

/-- `A174344(n+1)+n*A174344(A020703(n+1))` -/
def P8818587208124502111.Spec : Prop :=
  ∀ n, P8818587208124502111.a n = A304586 n

end A304586

/-! ## A304586.P9387072000255778889

`A274923(A020703(n+1))+n*A274923(n+1)`
-/

namespace A304586.P9387072000255778889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A020703 (n + 1)).toNat + (n : ℤ) * A274923 (n + 1)

end

end A304586.P9387072000255778889

namespace A304586

/-- `A274923(A020703(n+1))+n*A274923(n+1)` -/
def P9387072000255778889.Spec : Prop :=
  ∀ n, P9387072000255778889.a n = A304586 n

end A304586

/-! ## A304586.P3348557568956318952

`A174344(n+1)+n*A305576(A308081(n+1))`
-/

namespace A304586.P3348557568956318952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) + (n : ℤ) * A305576 (A308081 (n + 1)).toNat

end

end A304586.P3348557568956318952

namespace A304586

/-- `A174344(n+1)+n*A305576(A308081(n+1))` -/
def P3348557568956318952.Spec : Prop :=
  ∀ n, P3348557568956318952.a n = A304586 n

end A304586

/-! ## A304586.P17940760757470180197

`A305575(A308081(n+1))+n*A274923(n+1)`
-/

namespace A304586.P17940760757470180197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (A308081 (n + 1)).toNat + (n : ℤ) * A274923 (n + 1)

end

end A304586.P17940760757470180197

namespace A304586

/-- `A305575(A308081(n+1))+n*A274923(n+1)` -/
def P17940760757470180197.Spec : Prop :=
  ∀ n, P17940760757470180197.a n = A304586 n

end A304586

/-! ## A304586.P16984238175540633668

`A274923(A164386(n+1))+n*A274923(n+1)`
-/

namespace A304586.P16984238175540633668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A164386 (n + 1)).toNat + (n : ℤ) * A274923 (n + 1)

end

end A304586.P16984238175540633668

namespace A304586

/-- `A274923(A164386(n+1))+n*A274923(n+1)` -/
def P16984238175540633668.Spec : Prop :=
  ∀ n, P16984238175540633668.a n = A304586 n

end A304586

/-! ## A304586.P8919044458292924655

`A274923(A000037(n+1))+n*A274923(n+1)`
-/

namespace A304586.P8919044458292924655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A000037 (n + 1)).toNat + (n : ℤ) * A274923 (n + 1)

end

end A304586.P8919044458292924655

namespace A304586

/-- `A274923(A000037(n+1))+n*A274923(n+1)` -/
def P8919044458292924655.Spec : Prop :=
  ∀ n, P8919044458292924655.a n = A304586 n

end A304586

/-! ## A304586.P267720745811609629

`A274923(A135668(n+1))+n*A274923(n+1)`
-/

namespace A304586.P267720745811609629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A135668 (n + 1)).toNat + (n : ℤ) * A274923 (n + 1)

end

end A304586.P267720745811609629

namespace A304586

/-- `A274923(A135668(n+1))+n*A274923(n+1)` -/
def P267720745811609629.Spec : Prop :=
  ∀ n, P267720745811609629.a n = A304586 n

end A304586

/-! ## A304586.P17577890528360976221

`A274923(A316967(n)+1)+(n+1)*A274923(n+1)`
-/

namespace A304586.P17577890528360976221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A316967 n + 1).toNat + (n + 1 : ℤ) * A274923 (n + 1)

end

end A304586.P17577890528360976221

namespace A304586

/-- `A274923(A316967(n)+1)+(n+1)*A274923(n+1)` -/
def P17577890528360976221.Spec : Prop :=
  ∀ n, P17577890528360976221.a n = A304586 n

end A304586

/-! ## A304586.P11548987979451368037

`A174344(n+1)+n*A174344(A090929(n+1))`
-/

namespace A304586.P11548987979451368037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) + (n : ℤ) * A174344 (A090929 (n + 1)).toNat

end

end A304586.P11548987979451368037

namespace A304586

/-- `A174344(n+1)+n*A174344(A090929(n+1))` -/
def P11548987979451368037.Spec : Prop :=
  ∀ n, P11548987979451368037.a n = A304586 n

end A304586

/-! ## A304586.P3434570056511834664

`A274923(A090925(n+1))+n*A274923(n+1)`
-/

namespace A304586.P3434570056511834664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A090925 (n + 1)).toNat + (n : ℤ) * A274923 (n + 1)

end

end A304586.P3434570056511834664

namespace A304586

/-- `A274923(A090925(n+1))+n*A274923(n+1)` -/
def P3434570056511834664.Spec : Prop :=
  ∀ n, P3434570056511834664.a n = A304586 n

end A304586

/-! ## A304586.P4257726783131699556

`A174344(n+1)-n*A174344(A090915(n+1))`
-/

namespace A304586.P4257726783131699556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) - (n : ℤ) * A174344 (A090915 (n + 1)).toNat

end

end A304586.P4257726783131699556

namespace A304586

/-- `A174344(n+1)-n*A174344(A090915(n+1))` -/
def P4257726783131699556.Spec : Prop :=
  ∀ n, P4257726783131699556.a n = A304586 n

end A304586

/-! ## A304586.P11645246476955279969

`A174344(n+1)-n*A174344(A090925(n+1))`
-/

namespace A304586.P11645246476955279969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) - (n : ℤ) * A174344 (A090925 (n + 1)).toNat

end

end A304586.P11645246476955279969

namespace A304586

/-- `A174344(n+1)-n*A174344(A090925(n+1))` -/
def P11645246476955279969.Spec : Prop :=
  ∀ n, P11645246476955279969.a n = A304586 n

end A304586

/-! ## A304586.P1532639522871074090

`A268038(A090915(n+1))-n*A268038(n+1)`
-/

namespace A304586.P1532639522871074090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (A090915 (n + 1)).toNat - (n : ℤ) * A268038 (n + 1)

end

end A304586.P1532639522871074090

namespace A304586

/-- `A268038(A090915(n+1))-n*A268038(n+1)` -/
def P1532639522871074090.Spec : Prop :=
  ∀ n, P1532639522871074090.a n = A304586 n

end A304586

/-! ## A304586.P3487888408339420303

`A268038(A090929(n+1))-n*A268038(n+1)`
-/

namespace A304586.P3487888408339420303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (A090929 (n + 1)).toNat - (n : ℤ) * A268038 (n + 1)

end

end A304586.P3487888408339420303

namespace A304586

/-- `A268038(A090929(n+1))-n*A268038(n+1)` -/
def P3487888408339420303.Spec : Prop :=
  ∀ n, P3487888408339420303.a n = A304586 n

end A304586

/-!
# A304588: Length of shortest prefix of the Thue-Morse word (A010060) such that some length-n block appears twice.

The programs for A304588, the canonical program `A304588.P15314905550837807375` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304588 has offset 1).

The definition of A304588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304588.P15314905550837807375

`∑[A099892(n)+1]+2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A304588

/-- `∑[A099892(n)+1]+2` -/
def P15314905550837807375.Spec : Prop :=
  ∀ n, P15314905550837807375.a n = A304588 (n + 1)

theorem P15314905550837807375.correct : P15314905550837807375.Spec := by
  intro n
  simp only [A304588, Nat.add_sub_cancel]

end A304588

/-! ## A304588.P8605904601373600214

`record[A057115(n+1)+1]`
-/

namespace A304588.P8605904601373600214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304588.P8605904601373600214

namespace A304588

/-- `record[A057115(n+1)+1]` -/
def P8605904601373600214.Spec : Prop :=
  ∀ n, P8605904601373600214.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P11852608800282150384

`A042950(floor(log2(2*n+1)))+n+1`
-/

namespace A304588.P11852608800282150384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (Nat.log 2 (2 * n + 1)) + (n + 1 : ℤ)

end

end A304588.P11852608800282150384

namespace A304588

/-- `A042950(floor(log2(2*n+1)))+n+1` -/
def P11852608800282150384.Spec : Prop :=
  ∀ n, P11852608800282150384.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P216033311662554557

`A323234(A318934(n+1))`
-/

namespace A304588.P216033311662554557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323234 (A318934 (n + 1)).toNat

end

end A304588.P216033311662554557

namespace A304588

/-- `A323234(A318934(n+1))` -/
def P216033311662554557.Spec : Prop :=
  ∀ n, P216033311662554557.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P4564494547445457184

`A004754(A004761(n+2))+1`
-/

namespace A304588.P4564494547445457184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A004761 (n + 2)).toNat + 1

end

end A304588.P4564494547445457184

namespace A304588

/-- `A004754(A004761(n+2))+1` -/
def P4564494547445457184.Spec : Prop :=
  ∀ n, P4564494547445457184.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P3545502253227287979

`A055562(A003817(n))+1+n`
-/

namespace A304588.P3545502253227287979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055562 (A003817 n).toNat + 1 + (n : ℤ)

end

end A304588.P3545502253227287979

namespace A304588

/-- `A055562(A003817(n))+1+n` -/
def P3545502253227287979.Spec : Prop :=
  ∀ n, P3545502253227287979.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P17545453212384996561

`A007378(A003817(n)+2)+n`
-/

namespace A304588.P17545453212384996561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (A003817 n + 2).toNat + (n : ℤ)

end

end A304588.P17545453212384996561

namespace A304588

/-- `A007378(A003817(n)+2)+n` -/
def P17545453212384996561.Spec : Prop :=
  ∀ n, P17545453212384996561.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P6259274394250169013

`A318934(n+1)-A003817(n)`
-/

namespace A304588.P6259274394250169013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318934 (n + 1) - A003817 n

end

end A304588.P6259274394250169013

namespace A304588

/-- `A318934(n+1)-A003817(n)` -/
def P6259274394250169013.Spec : Prop :=
  ∀ n, P6259274394250169013.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P12220690427700224282

`A004754(A316385(2*n+1))+1`
-/

namespace A304588.P12220690427700224282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A316385 (2 * n + 1)).toNat + 1

end

end A304588.P12220690427700224282

namespace A304588

/-- `A004754(A316385(2*n+1))+1` -/
def P12220690427700224282.Spec : Prop :=
  ∀ n, P12220690427700224282.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P12212182369674189948

`A004754(A171757(n+1)/2)+1`
-/

namespace A304588.P12212182369674189948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (SequenceMachineLib.roundAway ((A171757 (n + 1) : ℚ) / 2)).toNat + 1

end

end A304588.P12212182369674189948

namespace A304588

/-- `A004754(A171757(n+1)/2)+1` -/
def P12212182369674189948.Spec : Prop :=
  ∀ n, P12212182369674189948.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P5152887704094868089

`A280510(n+1)+A087156(n+1)`
-/

namespace A304588.P5152887704094868089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280510 (n + 1) + A087156 (n + 1)

end

end A304588.P5152887704094868089

namespace A304588

/-- `A280510(n+1)+A087156(n+1)` -/
def P5152887704094868089.Spec : Prop :=
  ∀ n, P5152887704094868089.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P5057974278155240584

`A306869(A003817(n)+2)+n+1`
-/

namespace A304588.P5057974278155240584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306869 (A003817 n + 2).toNat + (n + 1 : ℤ)

end

end A304588.P5057974278155240584

namespace A304588

/-- `A306869(A003817(n)+2)+n+1` -/
def P5057974278155240584.Spec : Prop :=
  ∀ n, P5057974278155240584.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P7747636449639268312

`record[A003817(A035327(n+1))+3+n]`
-/

namespace A304588.P7747636449639268312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A035327 (n + 1)).toNat + 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304588.P7747636449639268312

namespace A304588

/-- `record[A003817(A035327(n+1))+3+n]` -/
def P7747636449639268312.Spec : Prop :=
  ∀ n, P7747636449639268312.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P16380264778343205523

`A275202(A053644(2*n+1))+n+1`
-/

namespace A304588.P16380264778343205523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275202 (A053644 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A304588.P16380264778343205523

namespace A304588

/-- `A275202(A053644(2*n+1))+n+1` -/
def P16380264778343205523.Spec : Prop :=
  ∀ n, P16380264778343205523.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P15481389610741125969

`A004755(2*n+1)-comp[A004760(n+2)]`
-/

namespace A304588.P15481389610741125969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (2 * n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A304588.P15481389610741125969

namespace A304588

/-- `A004755(2*n+1)-comp[A004760(n+2)]` -/
def P15481389610741125969.Spec : Prop :=
  ∀ n, P15481389610741125969.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P18236544406815021328

`2*(n+1)+A078898(A054429(2*n+1))`
-/

namespace A304588.P18236544406815021328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A078898 (A054429 (2 * n + 1)).toNat

end

end A304588.P18236544406815021328

namespace A304588

/-- `2*(n+1)+A078898(A054429(2*n+1))` -/
def P18236544406815021328.Spec : Prop :=
  ∀ n, P18236544406815021328.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P9702548422423241504

`A004761(A163511(A053644(n)))+n+3`
-/

namespace A304588.P9702548422423241504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (A163511 (A053644 n).toNat).toNat + (n + 3 : ℤ)

end

end A304588.P9702548422423241504

namespace A304588

/-- `A004761(A163511(A053644(n)))+n+3` -/
def P9702548422423241504.Spec : Prop :=
  ∀ n, P9702548422423241504.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P6815467904239283492

`A335133(A000975(A070939(2*n)))+n+2`
-/

namespace A304588.P6815467904239283492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A000975 (A070939 (2 * n)).toNat).toNat + (n + 2 : ℤ)

end

end A304588.P6815467904239283492

namespace A304588

/-- `A335133(A000975(A070939(2*n)))+n+2` -/
def P6815467904239283492.Spec : Prop :=
  ∀ n, P6815467904239283492.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P11045796639120545383

`A004761(A053644(A004761(n+2))+1)+n+2`
-/

namespace A304588.P11045796639120545383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (A053644 (A004761 (n + 2)).toNat + 1).toNat + (n + 2 : ℤ)

end

end A304588.P11045796639120545383

namespace A304588

/-- `A004761(A053644(A004761(n+2))+1)+n+2` -/
def P11045796639120545383.Spec : Prop :=
  ∀ n, P11045796639120545383.a n = A304588 (n + 1)

end A304588

/-! ## A304588.P17563940685268089490

`A004755(2*n+1)+A004761(n+2)-A004761(2*(n+1))`
-/

namespace A304588.P17563940685268089490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (2 * n + 1) + (A004761 (n + 2) - A004761 (2 * (n + 1)))

end

end A304588.P17563940685268089490

namespace A304588

/-- `A004755(2*n+1)+A004761(n+2)-A004761(2*(n+1))` -/
def P17563940685268089490.Spec : Prop :=
  ∀ n, P17563940685268089490.a n = A304588 (n + 1)

end A304588

/-!
# A304589: a(n) = (n!)^3 * Sum_{k=1..n-1} 1/(k*(n-k))^3.

The programs for A304589, there is no canonical definition to state claims against.
-/

/-! ## A304589.P13356325174804202514

`2*A108309(A352253(n))`
-/

namespace A304589.P13356325174804202514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108309 (A352253 n).toNat

end

end A304589.P13356325174804202514

/-!
# A304590: a(1) = a(2) = a(3) = a(5) = 1, a(4) = 2, a(6) = 3; a(n) = a(n-a(n-3)) + a(n-a(n-6)) for n > 6.

The programs for A304590, the canonical program `A304590.P8986780208491590962` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304590 has offset 1).

The definition of A304590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-3))+a(n-a(n-6))` (program `A304590.P8986780208491590962`, by `A304590.P8986780208491590962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304590.P8986780208491590962

`a(n-a(n-3))+a(n-a(n-6))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304590

/-- `a(n-a(n-3))+a(n-a(n-6))` -/
def P8986780208491590962.Spec : Prop :=
  ∀ n, (P8986780208491590962.a n : ℤ) = A304590 (n + 1)

theorem P8986780208491590962.correct : P8986780208491590962.Spec := by
  intro n
  simp only [A304590, Nat.add_sub_cancel]

end A304590

/-!
# A304591: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304591, there is no canonical definition to state claims against.
-/

/-! ## A304591.P14302952700030628357

`A304597(∑[4*n]+1)`
-/

namespace A304591.P14302952700030628357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304591.P14302952700030628357

/-! ## A304591.P7845039593368018368

`record[A003982(n)*A304597(n+1)]`
-/

namespace A304591.P7845039593368018368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304591.P7845039593368018368

/-! ## A304591.P17366659160634820898

`A304597(A001844(n))+A011736(n)`
-/

namespace A304591.P17366659160634820898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A001844 n).toNat + A011736 n

end

end A304591.P17366659160634820898

/-! ## A304591.P7713202338242314627

`A304597(A001844(n))+A185284(n)`
-/

namespace A304591.P7713202338242314627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A001844 n).toNat + A185284 n

end

end A304591.P7713202338242314627

/-! ## A304591.P17913210844870465445

`A304597(A001844(n))+A299905(n)`
-/

namespace A304591.P17913210844870465445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A001844 n).toNat + A299905 n

end

end A304591.P17913210844870465445

/-!
# A304592: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304592, there is no canonical definition to state claims against.
-/

/-! ## A304592.P9765774669897752511

`A304597(∑[n+2]+4)`
-/

namespace A304592.P9765774669897752511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304592.P9765774669897752511

/-! ## A304592.P12630981448031097453

`or(char[1], A304597(A167614(n+1)))`
-/

namespace A304592.P12630981448031097453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304597 (A167614 (n + 1)).toNat)

end

end A304592.P12630981448031097453

/-! ## A304592.P16095648370738005570

`lcm(A033999(n), A304597(A167614(n+1)))`
-/

namespace A304592.P16095648370738005570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A304597 (A167614 (n + 1)).toNat)

end

end A304592.P16095648370738005570

/-!
# A304593: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304593, there is no canonical definition to state claims against.
-/

/-! ## A304593.P7960785606607982197

`A304597(A374004(n+1))`
-/

namespace A304593.P7960785606607982197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A374004 (n + 1)).toNat

end

end A304593.P7960785606607982197

/-! ## A304593.P1303706176588241979

`A304597(A052905(n)+9)`
-/

namespace A304593.P1303706176588241979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A052905 n + 9).toNat

end

end A304593.P1303706176588241979

/-! ## A304593.P6284745965981606451

`A304597(A055999(n)+10)`
-/

namespace A304593.P6284745965981606451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A055999 n + 10).toNat

end

end A304593.P6284745965981606451

/-! ## A304593.P11266897392569796759

`A304597(A167614(n+2)+1)`
-/

namespace A304593.P11266897392569796759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A167614 (n + 2) + 1).toNat

end

end A304593.P11266897392569796759

/-! ## A304593.P2722819491627810062

`A304597(A166136(n+2)-2)`
-/

namespace A304593.P2722819491627810062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A166136 (n + 2) - 2).toNat

end

end A304593.P2722819491627810062

/-!
# A304594: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304594, there is no canonical definition to state claims against.
-/

/-! ## A304594.P16807998398991154661

`A304597(A374005(n+1))`
-/

namespace A304594.P16807998398991154661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A374005 (n + 1)).toNat

end

end A304594.P16807998398991154661

/-! ## A304594.P8276916223938473404

`A304597(A167499(n+3))`
-/

namespace A304594.P8276916223938473404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A167499 (n + 3)).toNat

end

end A304594.P8276916223938473404

/-! ## A304594.P14568997217550899053

`A304597(Δ[A264443(n)])`
-/

namespace A304594.P14568997217550899053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (f1 (n + 1) - f1 n).toNat

end

end A304594.P14568997217550899053

/-! ## A304594.P3248754707024648322

`A304597(A046691(n+3))`
-/

namespace A304594.P3248754707024648322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A046691 (n + 3)).toNat

end

end A304594.P3248754707024648322

/-! ## A304594.P1701856945166670561

`A304597(eq[4, A193592(n)])`
-/

namespace A304594.P1701856945166670561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304594.P1701856945166670561

/-!
# A304595: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304595, there is no canonical definition to state claims against.
-/

/-! ## A304595.P16500691496180621553

`A304597(A374007(n+1))`
-/

namespace A304595.P16500691496180621553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A374007 (n + 1)).toNat

end

end A304595.P16500691496180621553

/-! ## A304595.P8815485059672637127

`A304597(A166136(n+4))`
-/

namespace A304595.P8815485059672637127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A166136 (n + 4)).toNat

end

end A304595.P8815485059672637127

/-! ## A304595.P6056147705523133311

`A304597(eq[7, A131818(n+1)])`
-/

namespace A304595.P6056147705523133311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304595.P6056147705523133311

/-! ## A304595.P18202096255233074105

`A304597(A052905(n+3))`
-/

namespace A304595.P18202096255233074105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A052905 (n + 3)).toNat

end

end A304595.P18202096255233074105

/-! ## A304595.P12619474116849167501

`A304597(eq[3, A219347(n)])`
-/

namespace A304595.P12619474116849167501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304595.P12619474116849167501

/-!
# A304596: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304596, there is no canonical definition to state claims against.
-/

/-! ## A304596.P7361927477502047006

`A304597(A374008(n+1))`
-/

namespace A304596.P7361927477502047006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A374008 (n + 1)).toNat

end

end A304596.P7361927477502047006

/-! ## A304596.P8476355393423257307

`A304597(eq[11, A066657(n)])`
-/

namespace A304596.P8476355393423257307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304596.P8476355393423257307

/-! ## A304596.P5578072262527642726

`A304597(eq[8, A131818(n+1)])`
-/

namespace A304596.P5578072262527642726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304596.P5578072262527642726

/-! ## A304596.P1507911293687259177

`A304597(A055999(n+4))`
-/

namespace A304596.P1507911293687259177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (A055999 (n + 4)).toNat

end

end A304596.P1507911293687259177

/-! ## A304596.P10147863581698664184

`A304597(eq[4, A219347(n)])`
-/

namespace A304596.P10147863581698664184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304596.P10147863581698664184

/-!
# A304597: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304597, there is no canonical definition to state claims against.
-/

/-! ## A304597.P6584471707927109881

`A316383(n+1)-A116087(A250486(n))`
-/

namespace A304597.P6584471707927109881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (n + 1) - A116087 (A250486 n).toNat

end

end A304597.P6584471707927109881

/-! ## A304597.P613378829349652394

`A316383(n+1)+A016389(A022166(n))`
-/

namespace A304597.P613378829349652394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (n + 1) + A016389 (A022166 n).toNat

end

end A304597.P613378829349652394

/-! ## A304597.P1778621255963354728

`A316383(n+1)+A016389(A027336(n))`
-/

namespace A304597.P1778621255963354728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (n + 1) + A016389 (A027336 n).toNat

end

end A304597.P1778621255963354728

/-! ## A304597.P14585393493836049971

`A316383(n+1)-A014707(A022171(n))`
-/

namespace A304597.P14585393493836049971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (n + 1) - A014707 (A022171 n).toNat

end

end A304597.P14585393493836049971

/-! ## A304597.P11995819681062968828

`A316383(n+1)-A037824(A022173(n))`
-/

namespace A304597.P11995819681062968828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (n + 1) - A037824 (A022173 n).toNat

end

end A304597.P11995819681062968828

/-!
# A304598: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304598, there is no canonical definition to state claims against.
-/

/-! ## A304598.P16623672189738516912

`A304604(∑[4*n]+1)`
-/

namespace A304598.P16623672189738516912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304598.P16623672189738516912

/-! ## A304598.P14550160941781908307

`record[A304604(Δ[A235355(n)])]`
-/

namespace A304598.P14550160941781908307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304598.P14550160941781908307

/-! ## A304598.P17238996005784400325

`record[A304604(A330613(n+1))]`
-/

namespace A304598.P17238996005784400325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304598.P17238996005784400325

/-! ## A304598.P4711867432454226341

`or(char[2], A304604(A001844(n)))`
-/

namespace A304598.P4711867432454226341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304604 (A001844 n).toNat)

end

end A304598.P4711867432454226341

/-! ## A304598.P6332993830602049227

`record[A003982(n)*A304604(n+1)]`
-/

namespace A304598.P6332993830602049227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304598.P6332993830602049227

/-!
# A304599: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304599, there is no canonical definition to state claims against.
-/

/-! ## A304599.P13326467324176396891

`A304604(∑[n+2]+4)`
-/

namespace A304599.P13326467324176396891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304599.P13326467324176396891

/-! ## A304599.P5993195819717571400

`lcm(ceil(acot(n)), A304604(A167614(n+1)))`
-/

namespace A304599.P5993195819717571400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈SequenceMachineLib.acot (n : ℝ)⌉ (A304604 (A167614 (n + 1)).toNat)

end

end A304599.P5993195819717571400

/-! ## A304599.P1484417337200391976

`or(char[1], A304604(A000124(n+2)+2))`
-/

namespace A304599.P1484417337200391976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304604 (A000124 (n + 2) + 2).toNat)

end

end A304599.P1484417337200391976

/-! ## A304599.P3023261619573830661

`A304604(A167614(n+1))+A025439(n)`
-/

namespace A304599.P3023261619573830661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (A167614 (n + 1)).toNat + A025439 n

end

end A304599.P3023261619573830661

/-! ## A304599.P1719364735668860324

`A304604(A167614(n+1))+A025469(n)`
-/

namespace A304599.P1719364735668860324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (A167614 (n + 1)).toNat + A025469 n

end

end A304599.P1719364735668860324

