import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.B013.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A050800: Values of n^2 + 1 resulting from A050796.

The programs for A050800, the canonical program `A050800.P2900740559299843920` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050800 has offset 1).

The definition of A050800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050800.P2900740559299843920

`1+A050796(n+1)²`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A050800

/-- `1+A050796(n+1)²` -/
def P2900740559299843920.Spec : Prop :=
  ∀ n, P2900740559299843920.a n = A050800 (n + 1)

theorem P2900740559299843920.correct : P2900740559299843920.Spec := by
  intro n
  simp only [A050800, Nat.add_sub_cancel]

end A050800

/-! ## A050800.P1464047843693957021

`A000290(A050796(n+1))+and(1, A206946(n+1))`
-/

namespace A050800.P1464047843693957021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A050796 (n + 1)).toNat + Int.land 1 (A206946 (n + 1))

end

end A050800.P1464047843693957021

namespace A050800

/-- `A000290(A050796(n+1))+and(1, A206946(n+1))` -/
def P1464047843693957021.Spec : Prop :=
  ∀ n, P1464047843693957021.a n = A050800 (n + 1)

end A050800

/-! ## A050800.P7430340785543084258

`A002522(A050796(n+1))`
-/

namespace A050800.P7430340785543084258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A050796 (n + 1)).toNat

end

end A050800.P7430340785543084258

namespace A050800

/-- `A002522(A050796(n+1))` -/
def P7430340785543084258.Spec : Prop :=
  ∀ n, P7430340785543084258.a n = A050800 (n + 1)

end A050800

/-! ## A050800.P13361090256038617696

`A000290(A050796(n+1))+A000034(2*n)`
-/

namespace A050800.P13361090256038617696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A050796 (n + 1)).toNat + A000034 (2 * n)

end

end A050800.P13361090256038617696

namespace A050800

/-- `A000290(A050796(n+1))+A000034(2*n)` -/
def P13361090256038617696.Spec : Prop :=
  ∀ n, P13361090256038617696.a n = A050800 (n + 1)

end A050800

/-! ## A050800.P7874645906459300041

`A033638(2*A050796(n+1))`
-/

namespace A050800.P7874645906459300041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (2 * A050796 (n + 1)).toNat

end

end A050800.P7874645906459300041

namespace A050800

/-- `A033638(2*A050796(n+1))` -/
def P7874645906459300041.Spec : Prop :=
  ∀ n, P7874645906459300041.a n = A050800 (n + 1)

end A050800

/-! ## A050800.P10683609182657836400

`A308016(A308019(n+1))+A000290(A050796(n+1))`
-/

namespace A050800.P10683609182657836400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308016 (A308019 (n + 1)).toNat + A000290 (A050796 (n + 1)).toNat

end

end A050800.P10683609182657836400

namespace A050800

/-- `A308016(A308019(n+1))+A000290(A050796(n+1))` -/
def P10683609182657836400.Spec : Prop :=
  ∀ n, P10683609182657836400.a n = A050800 (n + 1)

end A050800

/-! ## A050800.P14478132016127962905

`A308016(A308014(n+1))+A000290(A050796(n+1))`
-/

namespace A050800.P14478132016127962905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308016 (A308014 (n + 1)).toNat + A000290 (A050796 (n + 1)).toNat

end

end A050800.P14478132016127962905

namespace A050800

/-- `A308016(A308014(n+1))+A000290(A050796(n+1))` -/
def P14478132016127962905.Spec : Prop :=
  ∀ n, P14478132016127962905.a n = A050800 (n + 1)

end A050800

/-! ## A050800.P18012932780291584250

`A000290(A050796(n+1))+A014963(A000217(n+5))`
-/

namespace A050800.P18012932780291584250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A050796 (n + 1)).toNat + A014963 (A000217 (n + 5)).toNat

end

end A050800.P18012932780291584250

namespace A050800

/-- `A000290(A050796(n+1))+A014963(A000217(n+5))` -/
def P18012932780291584250.Spec : Prop :=
  ∀ n, P18012932780291584250.a n = A050800 (n + 1)

end A050800

/-! ## A050800.P4084970227019147263

`A000290(A050796(n+1))+A014963(A109761(n+1))`
-/

namespace A050800.P4084970227019147263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A050796 (n + 1)).toNat + A014963 (A109761 (n + 1)).toNat

end

end A050800.P4084970227019147263

namespace A050800

/-- `A000290(A050796(n+1))+A014963(A109761(n+1))` -/
def P4084970227019147263.Spec : Prop :=
  ∀ n, P4084970227019147263.a n = A050800 (n + 1)

end A050800

/-!
# A050801: Numbers k such that k^2 is expressible as the sum of two positive cubes in at least one way.

The programs for A050801, there is no canonical definition to state claims against.
-/

/-! ## A050801.P9597974101050403220

`sqrt(A050802(n+1))`
-/

namespace A050801.P9597974101050403220
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A050802 (n + 1) : ℝ)

end

end A050801.P9597974101050403220

/-! ## A050801.P6667641322740932075

`root(A050802(n+1), 2%A051394(n+1))`
-/

namespace A050801.P6667641322740932075
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050802 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A051394 (n + 1)) : ℝ))

end

end A050801.P6667641322740932075

/-! ## A050801.P223350013034800971

`root(A050802(n+1), A001316(A001316(n)))`
-/

namespace A050801.P223350013034800971
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050802 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A050801.P223350013034800971

/-! ## A050801.P15433762978974082897

`A050802(n+1)^(A009003(n+1)/A072592(n+1))`
-/

namespace A050801.P15433762978974082897
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050802 (n + 1) : ℝ) ^ ((A009003 (n + 1) : ℚ) / (A072592 (n + 1) : ℚ) : ℝ)

end

end A050801.P15433762978974082897

/-! ## A050801.P2072861515583349747

`∩[A051394(n+1), A217248(n+1)]`
-/

namespace A050801.P2072861515583349747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050801.P2072861515583349747

/-! ## A050801.P13600087811786124043

`root(A050802(n+1), 2)%A230716(n+1)`
-/

namespace A050801.P13600087811786124043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A050802 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A230716 (n + 1))

end

end A050801.P13600087811786124043

/-! ## A050801.P13854872591410952812

`root(A050802(n+1), dr(A038648(n+1)))`
-/

namespace A050801.P13854872591410952812
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050802 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A038648 (n + 1)) : ℝ))

end

end A050801.P13854872591410952812

/-!
# A050802: Squares expressible as the sum of two positive cubes in at least one way.

The programs for A050802, there is no canonical definition to state claims against.
-/

/-! ## A050802.P2242091703621811767

`A050801(n+1)²`
-/

namespace A050802.P2242091703621811767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (n + 1) ^ 2

end

end A050802.P2242091703621811767

/-! ## A050802.P11282967069835018012

`record[A050801(A158416(n))²]`
-/

namespace A050802.P11282967069835018012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (A158416 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050802.P11282967069835018012

/-! ## A050802.P694555157019394961

`A050801(A003602(2*n+1))^2`
-/

namespace A050802.P694555157019394961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (A003602 (2 * n + 1)).toNat ^ 2

end

end A050802.P694555157019394961

/-! ## A050802.P7475776939655103074

`A050801(n+1)^(2%A009003(n+1))`
-/

namespace A050802.P7475776939655103074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050801 (n + 1) : ℚ) ^ (Int.tmod 2 (A009003 (n + 1)) : ℤ)

end

end A050802.P7475776939655103074

/-! ## A050802.P7969257671287586061

`A050801(n+1)^A000096(gcd(n, n+1))`
-/

namespace A050802.P7969257671287586061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050801 (n + 1) : ℚ) ^ (A000096 (Nat.gcd n (n + 1)) : ℤ)

end

end A050802.P7969257671287586061

/-! ## A050802.P9870775671349150048

`A050801(or(n+1, char[2]))*A050801(n+1)`
-/

namespace A050802.P9870775671349150048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (Nat.lor (n + 1) (if ∃ j, f1 j = n then 1 else 0)) * A050801 (n + 1)

end

end A050802.P9870775671349150048

/-! ## A050802.P12588673743196211302

`record[A050801(A158416(n))]*A050801(n+1)`
-/

namespace A050802.P12588673743196211302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A050801 (n + 1)

end

end A050802.P12588673743196211302

/-! ## A050802.P1041612166969621861

`A050801(A028310(n+1))*A050801(n+1)`
-/

namespace A050802.P1041612166969621861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (A028310 (n + 1)).toNat * A050801 (n + 1)

end

end A050802.P1041612166969621861

/-! ## A050802.P14331580094375682705

`A050801(n+1)^A001222(A001358(n+1))`
-/

namespace A050802.P14331580094375682705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050801 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A050802.P14331580094375682705

/-! ## A050802.P17361722763968969993

`A050801(n+1)^A000005(A050805(n+1))`
-/

namespace A050802.P17361722763968969993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050801 (n + 1) : ℚ) ^ (A000005 (A050805 (n + 1)).toNat : ℤ)

end

end A050802.P17361722763968969993

/-! ## A050802.P10160753145507174732

`A050801(n+1)^A000005(A050806(n+1))`
-/

namespace A050802.P10160753145507174732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050801 (n + 1) : ℚ) ^ (A000005 (A050806 (n + 1)).toNat : ℤ)

end

end A050802.P10160753145507174732

/-! ## A050802.P16246274251603933248

`A050801(n+1)^A057567(A000040(n+1))`
-/

namespace A050802.P16246274251603933248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050801 (n + 1) : ℚ) ^ (A057567 (A000040 (n + 1)).toNat : ℤ)

end

end A050802.P16246274251603933248

/-! ## A050802.P8475547719046386092

`A050801(n+1)^A020639(A050823(n+1))`
-/

namespace A050802.P8475547719046386092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050801 (n + 1) : ℚ) ^ (A020639 (A050823 (n + 1)).toNat : ℤ)

end

end A050802.P8475547719046386092

/-! ## A050802.P14256642700448999613

`A050801(n+1)^A020639(A050825(n+1))`
-/

namespace A050802.P14256642700448999613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050801 (n + 1) : ℚ) ^ (A020639 (A050825 (n + 1)).toNat : ℤ)

end

end A050802.P14256642700448999613

/-! ## A050802.P15022621181014000530

`A050801(n+1)^A329600(A065091(n+1))`
-/

namespace A050802.P15022621181014000530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050801 (n + 1) : ℚ) ^ (A329600 (A065091 (n + 1)).toNat : ℤ)

end

end A050802.P15022621181014000530

/-! ## A050802.P16499604580161920995

`∩[A051394(n+1), A217248(n+1)]²`
-/

namespace A050802.P16499604580161920995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A050802.P16499604580161920995

/-! ## A050802.P1076497967161194368

`A050801(n+1)^A020639(A005893(n+1))`
-/

namespace A050802.P1076497967161194368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050801 (n + 1) : ℚ) ^ (A020639 (A005893 (n + 1)).toNat : ℤ)

end

end A050802.P1076497967161194368

/-! ## A050802.P1697988757705903851

`A050801(n+1)^A000040(A271825(∑[n+1]))`
-/

namespace A050802.P1697988757705903851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050801 (n + 1) : ℚ) ^ (A000040 (A271825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A050802.P1697988757705903851

/-! ## A050802.P4739383725236160152

`A050801(n+1)^A020639(A050804(n+1))`
-/

namespace A050802.P4739383725236160152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050801 (n + 1) : ℚ) ^ (A020639 (A050804 (n + 1)).toNat : ℤ)

end

end A050802.P4739383725236160152

/-!
# A050803: Cubes expressible as the sum of two nonzero squares in at least one way.

The programs for A050803, the canonical program `A050803.P3163027175791198346` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050803 has offset 1).

The definition of A050803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050803.P8195406094894997218

`sqrt(A135788(n+1))`
-/

namespace A050803.P8195406094894997218
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135788 (n + 1) : ℝ)

end

end A050803.P8195406094894997218

namespace A050803

/-- `sqrt(A135788(n+1))` -/
def P8195406094894997218.Spec : Prop :=
  ∀ n, P8195406094894997218.a n = (A050803 (n + 1) : ℝ)

end A050803

/-! ## A050803.P3163027175791198346

`A000404(n+1)^3`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A050803

/-- `A000404(n+1)^3` -/
def P3163027175791198346.Spec : Prop :=
  ∀ n, P3163027175791198346.a n = A050803 (n + 1)

theorem P3163027175791198346.correct : P3163027175791198346.Spec := by
  intro n
  simp only [A050803, Nat.add_sub_cancel]

end A050803

/-! ## A050803.P14155091074571943170

`lt[0, A025426(n)]^3`
-/

namespace A050803.P14155091074571943170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A050803.P14155091074571943170

namespace A050803

/-- `lt[0, A025426(n)]^3` -/
def P14155091074571943170.Spec : Prop :=
  ∀ n, (P14155091074571943170.a n : ℤ) = A050803 (n + 1)

end A050803

/-! ## A050803.P12203637833890961255

`lt[0, A063725(n)]^3`
-/

namespace A050803.P12203637833890961255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A050803.P12203637833890961255

namespace A050803

/-- `lt[0, A063725(n)]^3` -/
def P12203637833890961255.Spec : Prop :=
  ∀ n, (P12203637833890961255.a n : ℤ) = A050803 (n + 1)

end A050803

/-! ## A050803.P6733381031443848552

`sqrt(A135784(n+1)^3)`
-/

namespace A050803.P6733381031443848552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135784 (n + 1) ^ 3 : ℝ)

end

end A050803.P6733381031443848552

namespace A050803

/-- `sqrt(A135784(n+1)^3)` -/
def P6733381031443848552.Spec : Prop :=
  ∀ n, P6733381031443848552.a n = (A050803 (n + 1) : ℝ)

end A050803

/-! ## A050803.P13820749949839790439

`(A166265(n+1)-1)^3`
-/

namespace A050803.P13820749949839790439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166265 (n + 1) - 1) ^ 3

end

end A050803.P13820749949839790439

namespace A050803

/-- `(A166265(n+1)-1)^3` -/
def P13820749949839790439.Spec : Prop :=
  ∀ n, P13820749949839790439.a n = A050803 (n + 1)

theorem P13820749949839790439.correct : P13820749949839790439.Spec := by
  intro n
  simp only [A050803, Nat.add_sub_cancel, A050803.P13820749949839790439.a, A050803.P3163027175791198346.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A166265, A166265.P12558758465814392092.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A050803

/-! ## A050803.P15991992342031210073

`A000578(A000404(n+1))`
-/

namespace A050803.P15991992342031210073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000404 (n + 1)).toNat

end

end A050803.P15991992342031210073

namespace A050803

/-- `A000578(A000404(n+1))` -/
def P15991992342031210073.Spec : Prop :=
  ∀ n, P15991992342031210073.a n = A050803 (n + 1)

end A050803

/-! ## A050803.P17950766814019889875

`A000404(n+1)*A135784(n+1)`
-/

namespace A050803.P17950766814019889875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) * A135784 (n + 1)

end

end A050803.P17950766814019889875

namespace A050803

/-- `A000404(n+1)*A135784(n+1)` -/
def P17950766814019889875.Spec : Prop :=
  ∀ n, P17950766814019889875.a n = A050803 (n + 1)

theorem P17950766814019889875.correct : P17950766814019889875.Spec := by
  intro n
  simp only [A050803, Nat.add_sub_cancel, A050803.P17950766814019889875.a, A050803.P3163027175791198346.a, A000404, A000404.P2881668745635022014.f1, A000404.P2881668745635022014.f2, A000404.P2881668745635022014.a, A135784, A135784.P13080440240153393537.a, A000415, A000415.P13707848856828247433.f1, A000415.P13707848856828247433.a, A004431, A004431.P13089136488273060828.f1, A004431.P13089136488273060828.f2, A004431.P13089136488273060828.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A049240, A049240.P14203187308614321582.a, A353814, A353814.P3429435947782467007.a, A002654, A002654.P11574922253888480122.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A050803

/-! ## A050803.P12554684704837898979

`A135786(n+1)/A000404(n+1)`
-/

namespace A050803.P12554684704837898979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135786 (n + 1) : ℚ) / (A000404 (n + 1) : ℚ)

end

end A050803.P12554684704837898979

namespace A050803

/-- `A135786(n+1)/A000404(n+1)` -/
def P12554684704837898979.Spec : Prop :=
  ∀ n, P12554684704837898979.a n = (A050803 (n + 1) : ℚ)

end A050803

/-! ## A050803.P10150147938770469565

`A135787(n+1)/A135784(n+1)`
-/

namespace A050803.P10150147938770469565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135787 (n + 1) : ℚ) / (A135784 (n + 1) : ℚ)

end

end A050803.P10150147938770469565

namespace A050803

/-- `A135787(n+1)/A135784(n+1)` -/
def P10150147938770469565.Spec : Prop :=
  ∀ n, P10150147938770469565.a n = (A050803 (n + 1) : ℚ)

end A050803

/-! ## A050803.P7894102588523383778

`A135787(n+1)/A000404(n+1)²`
-/

namespace A050803.P7894102588523383778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135787 (n + 1) : ℚ) / (A000404 (n + 1) ^ 2 : ℚ)

end

end A050803.P7894102588523383778

namespace A050803

/-- `A135787(n+1)/A000404(n+1)²` -/
def P7894102588523383778.Spec : Prop :=
  ∀ n, P7894102588523383778.a n = (A050803 (n + 1) : ℚ)

end A050803

/-! ## A050803.P7182779859866000950

`sqrt(A135784(n+1)*A135786(n+1))`
-/

namespace A050803.P7182779859866000950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135784 (n + 1) * A135786 (n + 1) : ℝ)

end

end A050803.P7182779859866000950

namespace A050803

/-- `sqrt(A135784(n+1)*A135786(n+1))` -/
def P7182779859866000950.Spec : Prop :=
  ∀ n, P7182779859866000950.a n = (A050803 (n + 1) : ℝ)

end A050803

/-! ## A050803.P15671105353289593458

`A135786(n+1)²/A135787(n+1)`
-/

namespace A050803.P15671105353289593458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135786 (n + 1) ^ 2 : ℚ) / (A135787 (n + 1) : ℚ)

end

end A050803.P15671105353289593458

namespace A050803

/-- `A135786(n+1)²/A135787(n+1)` -/
def P15671105353289593458.Spec : Prop :=
  ∀ n, P15671105353289593458.a n = (A050803 (n + 1) : ℚ)

end A050803

/-! ## A050803.P12598610562036209848

`A000578(A135787(n+1)/A135786(n+1))`
-/

namespace A050803.P12598610562036209848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway ((A135787 (n + 1) : ℚ) / (A135786 (n + 1) : ℚ))).toNat

end

end A050803.P12598610562036209848

namespace A050803

/-- `A000578(A135787(n+1)/A135786(n+1))` -/
def P12598610562036209848.Spec : Prop :=
  ∀ n, P12598610562036209848.a n = A050803 (n + 1)

end A050803

/-! ## A050803.P3411786348217224160

`A000578(A135788(n+1)/A135787(n+1))`
-/

namespace A050803.P3411786348217224160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway ((A135788 (n + 1) : ℚ) / (A135787 (n + 1) : ℚ))).toNat

end

end A050803.P3411786348217224160

namespace A050803

/-- `A000578(A135788(n+1)/A135787(n+1))` -/
def P3411786348217224160.Spec : Prop :=
  ∀ n, P3411786348217224160.a n = A050803 (n + 1)

end A050803

/-! ## A050803.P4301537092191698804

`A000404(A000027(n+1))²²/A000404(n+1)`
-/

namespace A050803.P4301537092191698804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000404 (A000027 (n + 1)).toNat ^ 2) ^ 2 : ℚ) / (A000404 (n + 1) : ℚ)

end

end A050803.P4301537092191698804

namespace A050803

/-- `A000404(A000027(n+1))²²/A000404(n+1)` -/
def P4301537092191698804.Spec : Prop :=
  ∀ n, P4301537092191698804.a n = (A050803 (n + 1) : ℚ)

end A050803

/-! ## A050803.P4024616847222037127

`A135786(n+1)*A135787(n+1)/A135788(n+1)`
-/

namespace A050803.P4024616847222037127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135786 (n + 1) * A135787 (n + 1) : ℚ) / (A135788 (n + 1) : ℚ)

end

end A050803.P4024616847222037127

namespace A050803

/-- `A135786(n+1)*A135787(n+1)/A135788(n+1)` -/
def P4024616847222037127.Spec : Prop :=
  ∀ n, P4024616847222037127.a n = (A050803 (n + 1) : ℚ)

end A050803

/-! ## A050803.P1354738265103361122

`A135788(n+1)/(A000404(n+1)²*A000404(n+1))`
-/

namespace A050803.P1354738265103361122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135788 (n + 1) : ℚ) / (A000404 (n + 1) ^ 2 * A000404 (n + 1) : ℚ)

end

end A050803.P1354738265103361122

namespace A050803

/-- `A135788(n+1)/(A000404(n+1)²*A000404(n+1))` -/
def P1354738265103361122.Spec : Prop :=
  ∀ n, P1354738265103361122.a n = (A050803 (n + 1) : ℚ)

end A050803

/-! ## A050803.P4908520529089144659

`A135787(n+1)/A000290(A135787(n+1)/A135786(n+1))`
-/

namespace A050803.P4908520529089144659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135787 (n + 1) : ℚ) / (A000290 (SequenceMachineLib.roundAway ((A135787 (n + 1) : ℚ) / (A135786 (n + 1) : ℚ))).toNat : ℚ)

end

end A050803.P4908520529089144659

namespace A050803

/-- `A135787(n+1)/A000290(A135787(n+1)/A135786(n+1))` -/
def P4908520529089144659.Spec : Prop :=
  ∀ n, P4908520529089144659.a n = (A050803 (n + 1) : ℚ)

end A050803

/-!
# A050804: Numbers n such that n^3 is the sum of two nonzero squares in exactly one way.

The programs for A050804, the canonical program `A050804.P602634809057237247` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050804 has offset 1).

The definition of A050804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050804.P602634809057237247

`A081324(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A050804

/-- `A081324(n+2)` -/
def P602634809057237247.Spec : Prop :=
  ∀ n, P602634809057237247.a n = A050804 (n + 1)

theorem P602634809057237247.correct : P602634809057237247.Spec := by
  intro n
  simp only [A050804, Nat.add_sub_cancel]

end A050804

/-! ## A050804.P12316971424156479119

`2*A004144(n+1)²`
-/

namespace A050804.P12316971424156479119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004144 (n + 1) ^ 2

end

end A050804.P12316971424156479119

namespace A050804

/-- `2*A004144(n+1)²` -/
def P12316971424156479119.Spec : Prop :=
  ∀ n, P12316971424156479119.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P17849974860563031735

`2*A004144(n+1)^(A035263(2*n+3)+1)`
-/

namespace A050804.P17849974860563031735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (A004144 (n + 1) : ℚ) ^ (A035263 (2 * n + 3) + 1 : ℤ)

end

end A050804.P17849974860563031735

namespace A050804

/-- `2*A004144(n+1)^(A035263(2*n+3)+1)` -/
def P17849974860563031735.Spec : Prop :=
  ∀ n, P17849974860563031735.a n = (A050804 (n + 1) : ℚ)

end A050804

/-! ## A050804.P8541761783764441449

`2*A004144(n+1)^A001316(A001316(n))`
-/

namespace A050804.P8541761783764441449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (A004144 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A050804.P8541761783764441449

namespace A050804

/-- `2*A004144(n+1)^A001316(A001316(n))` -/
def P8541761783764441449.Spec : Prop :=
  ∀ n, P8541761783764441449.a n = (A050804 (n + 1) : ℚ)

end A050804

/-! ## A050804.P178141452606159273

`2*A004144(A000027(n+1))*A004144(n+1)`
-/

namespace A050804.P178141452606159273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004144 (A000027 (n + 1)).toNat * A004144 (n + 1))

end

end A050804.P178141452606159273

namespace A050804

/-- `2*A004144(A000027(n+1))*A004144(n+1)` -/
def P178141452606159273.Spec : Prop :=
  ∀ n, P178141452606159273.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P17151827641797696239

`2*A000548(n+1)`
-/

namespace A050804.P17151827641797696239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000548 (n + 1)

end

end A050804.P17151827641797696239

namespace A050804

/-- `2*A000548(n+1)` -/
def P17151827641797696239.Spec : Prop :=
  ∀ n, P17151827641797696239.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P7749063201201569394

`A000548(n+1)+A004144(n+1)²`
-/

namespace A050804.P7749063201201569394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000548 (n + 1) + A004144 (n + 1) ^ 2

end

end A050804.P7749063201201569394

namespace A050804

/-- `A000548(n+1)+A004144(n+1)²` -/
def P7749063201201569394.Spec : Prop :=
  ∀ n, P7749063201201569394.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P11129906466485167949

`A000548(A000027(n+1))+A000548(n+1)`
-/

namespace A050804.P11129906466485167949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000548 (A000027 (n + 1)).toNat + A000548 (n + 1)

end

end A050804.P11129906466485167949

namespace A050804

/-- `A000548(A000027(n+1))+A000548(n+1)` -/
def P11129906466485167949.Spec : Prop :=
  ∀ n, P11129906466485167949.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P8599605676068496667

`2*eq[4, A046109(n)]²`
-/

namespace A050804.P8599605676068496667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A050804.P8599605676068496667

namespace A050804

/-- `2*eq[4, A046109(n)]²` -/
def P8599605676068496667.Spec : Prop :=
  ∀ n, (P8599605676068496667.a n : ℤ) = A050804 (n + 1)

end A050804

/-! ## A050804.P17112747937205995928

`record[2*A072438(n+1)²]`
-/

namespace A050804.P17112747937205995928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072438 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050804.P17112747937205995928

namespace A050804

/-- `record[2*A072438(n+1)²]` -/
def P17112747937205995928.Spec : Prop :=
  ∀ n, P17112747937205995928.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P12297849112432813809

`record[(3-A286361(n+1))*(n+1)²]`
-/

namespace A050804.P12297849112432813809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A286361 (n + 1)) * ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050804.P12297849112432813809

namespace A050804

/-- `record[(3-A286361(n+1))*(n+1)²]` -/
def P12297849112432813809.Spec : Prop :=
  ∀ n, P12297849112432813809.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P4285543586405495628

`A001105(A004144(n+1))`
-/

namespace A050804.P4285543586405495628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A004144 (n + 1)).toNat

end

end A050804.P4285543586405495628

namespace A050804

/-- `A001105(A004144(n+1))` -/
def P4285543586405495628.Spec : Prop :=
  ∀ n, P4285543586405495628.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P6680850555850070234

`A001105(eq[4, A046109(n)])`
-/

namespace A050804.P6680850555850070234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050804.P6680850555850070234

namespace A050804

/-- `A001105(eq[4, A046109(n)])` -/
def P6680850555850070234.Spec : Prop :=
  ∀ n, P6680850555850070234.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P11482820049663554483

`A001105(lt[A256452(n+1), 2]+1)`
-/

namespace A050804.P11482820049663554483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A050804.P11482820049663554483

namespace A050804

/-- `A001105(lt[A256452(n+1), 2]+1)` -/
def P11482820049663554483.Spec : Prop :=
  ∀ n, P11482820049663554483.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P10242503528571075653

`record[A139098(n+1)/A046109(n+1)]`
-/

namespace A050804.P10242503528571075653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139098 (n + 1) : ℚ) / (A046109 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050804.P10242503528571075653

namespace A050804

/-- `record[A139098(n+1)/A046109(n+1)]` -/
def P10242503528571075653.Spec : Prop :=
  ∀ n, P10242503528571075653.a n = (A050804 (n + 1) : ℚ)

end A050804

/-! ## A050804.P10812782552094242348

`A000548(n+1)+A000290(A000548(n+1)/A004144(n+1))`
-/

namespace A050804.P10812782552094242348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000548 (n + 1) + A000290 (SequenceMachineLib.roundAway ((A000548 (n + 1) : ℚ) / (A004144 (n + 1) : ℚ))).toNat

end

end A050804.P10812782552094242348

namespace A050804

/-- `A000548(n+1)+A000290(A000548(n+1)/A004144(n+1))` -/
def P10812782552094242348.Spec : Prop :=
  ∀ n, P10812782552094242348.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P16628130910396035399

`record[(n+1)*A072438(2*(n+1))]`
-/

namespace A050804.P16628130910396035399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072438 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050804.P16628130910396035399

namespace A050804

/-- `record[(n+1)*A072438(2*(n+1))]` -/
def P16628130910396035399.Spec : Prop :=
  ∀ n, P16628130910396035399.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P5874186577932709369

`A000290(2*A004144(n+1))/2`
-/

namespace A050804.P5874186577932709369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (2 * A004144 (n + 1)).toNat : ℚ) / 2

end

end A050804.P5874186577932709369

namespace A050804

/-- `A000290(2*A004144(n+1))/2` -/
def P5874186577932709369.Spec : Prop :=
  ∀ n, P5874186577932709369.a n = (A050804 (n + 1) : ℚ)

end A050804

/-! ## A050804.P5593799814753097674

`record[A072438(n+2)*A260437(n+2)]`
-/

namespace A050804.P5593799814753097674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (n + 2) * A260437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050804.P5593799814753097674

namespace A050804

/-- `record[A072438(n+2)*A260437(n+2)]` -/
def P5593799814753097674.Spec : Prop :=
  ∀ n, P5593799814753097674.a n = A050804 (n + 1)

end A050804

/-! ## A050804.P18357566253664968040

`record[A072438(n+2)*A278529(n+2)]`
-/

namespace A050804.P18357566253664968040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (n + 2) * A278529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050804.P18357566253664968040

namespace A050804

/-- `record[A072438(n+2)*A278529(n+2)]` -/
def P18357566253664968040.Spec : Prop :=
  ∀ n, P18357566253664968040.a n = A050804 (n + 1)

end A050804

/-!
# A050806: Inserting any digit between adjacent digits of prime p produces exactly 1 new prime.

The programs for A050806, there is no canonical definition to state claims against.
-/

/-! ## A050806.P5823040145252790424

`A330696(A082130(n+1)+1)`
-/

namespace A050806.P5823040145252790424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330696 (A082130 (n + 1) + 1).toNat

end

end A050806.P5823040145252790424

/-!
# A050809: 

The programs for A050809, there is no canonical definition to state claims against.
-/

/-! ## A050809.P4409000293638659520

`A000149(A050808(n+1))`
-/

namespace A050809.P4409000293638659520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 (A050808 (n + 1)).toNat

end

end A050809.P4409000293638659520

/-!
# A050811: Partition numbers rounded to nearest integer given by the Hardy-Ramanujan approximate formula.

The programs for A050811, the canonical program `A050811.P12694469059268213063` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050811 has offset 1).

The definition of A050811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050811.P12694469059268213063

`round(exp(π*sqrt(2*(n+1)/3))/(4*(n+1)*sqrt(3)))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050811

/-- `round(exp(π*sqrt(2*(n+1)/3))/(4*(n+1)*sqrt(3)))` -/
def P12694469059268213063.Spec : Prop :=
  ∀ n, P12694469059268213063.a n = A050811 (n + 1)

theorem P12694469059268213063.correct : P12694469059268213063.Spec := by
  intro n
  simp only [A050811, Nat.add_sub_cancel]

end A050811

/-! ## A050811.P819816277058720000

`A067661(2*(n+2))+A055642(A000079(n))`
-/

namespace A050811.P819816277058720000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (2 * (n + 2)) + A055642 (A000079 n).toNat

end

end A050811.P819816277058720000

namespace A050811

/-- `A067661(2*(n+2))+A055642(A000079(n))` -/
def P819816277058720000.Spec : Prop :=
  ∀ n, P819816277058720000.a n = A050811 (n + 1)

end A050811

/-! ## A050811.P16734812545512203791

`A352131(A042965(3*n+2)+10)+1`
-/

namespace A050811.P16734812545512203791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A042965 (3 * n + 2) + 10).toNat + 1

end

end A050811.P16734812545512203791

namespace A050811

/-- `A352131(A042965(3*n+2)+10)+1` -/
def P16734812545512203791.Spec : Prop :=
  ∀ n, P16734812545512203791.a n = A050811 (n + 1)

end A050811

/-! ## A050811.P106428899656966863

`A088141(A222083(n)+A000040(n+1))`
-/

namespace A050811.P106428899656966863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A222083 n + A000040 (n + 1)).toNat

end

end A050811.P106428899656966863

namespace A050811

/-- `A088141(A222083(n)+A000040(n+1))` -/
def P106428899656966863.Spec : Prop :=
  ∀ n, P106428899656966863.a n = A050811 (n + 1)

end A050811

/-! ## A050811.P14146295405693920921

`A002024(A197672(n+1)+A066816(3*n))`
-/

namespace A050811.P14146295405693920921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A197672 (n + 1) + A066816 (3 * n)).toNat

end

end A050811.P14146295405693920921

namespace A050811

/-- `A002024(A197672(n+1)+A066816(3*n))` -/
def P14146295405693920921.Spec : Prop :=
  ∀ n, P14146295405693920921.a n = A050811 (n + 1)

end A050811

/-!
# A050813: Numbers n not palindromic in any base b, 2 <= b <= 10.

The programs for A050813, there is no canonical definition to state claims against.
-/

/-! ## A050813.P9204670020984941668

`eq[0, A050812(n)]`
-/

namespace A050813.P9204670020984941668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050813.P9204670020984941668

/-! ## A050813.P2899824766327814693

`lt[A050812(n+1), 1]+1`
-/

namespace A050813.P2899824766327814693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A050813.P2899824766327814693

/-! ## A050813.P15567326908434397393

`lt[A050812(n), A167876(n)+1]`
-/

namespace A050813.P15567326908434397393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167876 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050813.P15567326908434397393

/-! ## A050813.P15591189974674120816

`lt[A050812(n)*A288994(n), lcm(6, n)]`
-/

namespace A050813.P15591189974674120816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n * A288994 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050813.P15591189974674120816

/-! ## A050813.P9693140687453552351

`lt[(A000009(n)*A050812(n))², 1]`
-/

namespace A050813.P9693140687453552351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000009 n * A050812 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050813.P9693140687453552351

/-!
# A050815: Number of positive Fibonacci numbers with n decimal digits.

The programs for A050815, there is no canonical definition to state claims against.
-/

/-! ## A050815.P10985954789371361917

`A072354(n+2)-A072354(n+1)`
-/

namespace A050815.P10985954789371361917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 2) - A072354 (n + 1)

end

end A050815.P10985954789371361917

/-!
# A050816: Fibonacci(k) ending with digits of its index number k.

The programs for A050816, there is no canonical definition to state claims against.
-/

/-! ## A050816.P16474147865958003061

`A000045(A000350(n+1))`
-/

namespace A050816.P16474147865958003061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000350 (n + 1)).toNat

end

end A050816.P16474147865958003061

/-!
# A050820: Odd numbers in the sequence generated by a(n)=|a(n-1)+2a(n-2)-n|.

The programs for A050820, the canonical program `A050820.P12739032107343842795` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050820 has offset 1).

The definition of A050820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050820.P12739032107343842795

`A005210(or(1, n)+n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050820

/-- `A005210(or(1, n)+n)` -/
def P12739032107343842795.Spec : Prop :=
  ∀ n, P12739032107343842795.a n = A050820 (n + 1)

theorem P12739032107343842795.correct : P12739032107343842795.Spec := by
  intro n
  simp only [A050820, Nat.add_sub_cancel]

end A050820

/-! ## A050820.P13296462186738602207

`A005210(A042948(n)+1)`
-/

namespace A050820.P13296462186738602207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A042948 n + 1).toNat

end

end A050820.P13296462186738602207

namespace A050820

/-- `A005210(A042948(n)+1)` -/
def P13296462186738602207.Spec : Prop :=
  ∀ n, P13296462186738602207.a n = A050820 (n + 1)

end A050820

/-! ## A050820.P3402425273389359878

`A005210(A042963(n+1))`
-/

namespace A050820.P3402425273389359878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A042963 (n + 1)).toNat

end

end A050820.P3402425273389359878

namespace A050820

/-- `A005210(A042963(n+1))` -/
def P3402425273389359878.Spec : Prop :=
  ∀ n, P3402425273389359878.a n = A050820 (n + 1)

end A050820

/-! ## A050820.P2284914709456005212

`A005210(xor(1, A014601(n)))`
-/

namespace A050820.P2284914709456005212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (Int.xor 1 (A014601 n)).toNat

end

end A050820.P2284914709456005212

namespace A050820

/-- `A005210(xor(1, A014601(n)))` -/
def P2284914709456005212.Spec : Prop :=
  ∀ n, P2284914709456005212.a n = A050820 (n + 1)

end A050820

/-! ## A050820.P10428033918472640711

`A005210(A109613(n)+n)`
-/

namespace A050820.P10428033918472640711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A109613 n + (n : ℤ)).toNat

end

end A050820.P10428033918472640711

namespace A050820

/-- `A005210(A109613(n)+n)` -/
def P10428033918472640711.Spec : Prop :=
  ∀ n, P10428033918472640711.a n = A050820 (n + 1)

end A050820

/-! ## A050820.P8632596334869591395

`A005210(record[A092486(n)-2])`
-/

namespace A050820.P8632596334869591395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050820.P8632596334869591395

namespace A050820

/-- `A005210(record[A092486(n)-2])` -/
def P8632596334869591395.Spec : Prop :=
  ∀ n, P8632596334869591395.a n = A050820 (n + 1)

end A050820

/-! ## A050820.P16529391101868203631

`A005210(A154708(n+1)-2)`
-/

namespace A050820.P16529391101868203631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A154708 (n + 1) - 2).toNat

end

end A050820.P16529391101868203631

namespace A050820

/-- `A005210(A154708(n+1)-2)` -/
def P16529391101868203631.Spec : Prop :=
  ∀ n, P16529391101868203631.a n = A050820 (n + 1)

end A050820

/-! ## A050820.P3484400475138060947

`A005210(A004273(n)+gcd(2, n))`
-/

namespace A050820.P3484400475138060947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A004273 n + (Nat.gcd 2 n : ℤ)).toNat

end

end A050820.P3484400475138060947

namespace A050820

/-- `A005210(A004273(n)+gcd(2, n))` -/
def P3484400475138060947.Spec : Prop :=
  ∀ n, P3484400475138060947.a n = A050820 (n + 1)

end A050820

/-! ## A050820.P8612813484891464985

`A005210(A032766(n)+A008619(n))`
-/

namespace A050820.P8612813484891464985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A032766 n + A008619 n).toNat

end

end A050820.P8612813484891464985

namespace A050820

/-- `A005210(A032766(n)+A008619(n))` -/
def P8612813484891464985.Spec : Prop :=
  ∀ n, P8612813484891464985.a n = A050820 (n + 1)

end A050820

/-! ## A050820.P339252114738948513

`A005210(A005408(n)-A000035(n))`
-/

namespace A050820.P339252114738948513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A005408 n - A000035 n).toNat

end

end A050820.P339252114738948513

namespace A050820

/-- `A005210(A005408(n)-A000035(n))` -/
def P339252114738948513.Spec : Prop :=
  ∀ n, P339252114738948513.a n = A050820 (n + 1)

end A050820

/-! ## A050820.P16067867778840328298

`A005210(A014601(n+1)-2)`
-/

namespace A050820.P16067867778840328298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A014601 (n + 1) - 2).toNat

end

end A050820.P16067867778840328298

namespace A050820

/-- `A005210(A014601(n+1)-2)` -/
def P16067867778840328298.Spec : Prop :=
  ∀ n, P16067867778840328298.a n = A050820 (n + 1)

end A050820

/-! ## A050820.P3967787565021467058

`filter[A005210(n+1), A000035(#)]`
-/

namespace A050820.P3967787565021467058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A050820.P3967787565021467058

namespace A050820

/-- `filter[A005210(n+1), A000035(#)]` -/
def P3967787565021467058.Spec : Prop :=
  ∀ n, P3967787565021467058.a n = A050820 (n + 1)

end A050820

/-! ## A050820.P884319427196658239

`A005210(A098180(2*n))`
-/

namespace A050820.P884319427196658239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A098180 (2 * n)).toNat

end

end A050820.P884319427196658239

namespace A050820

/-- `A005210(A098180(2*n))` -/
def P884319427196658239.Spec : Prop :=
  ∀ n, P884319427196658239.a n = A050820 (n + 1)

end A050820

/-!
# A050821: Even numbers in the sequence generated by a(n)=|a(n-1)+2a(n-2)-n| where a(0)=a(1)=1.

The programs for A050821, the canonical program `A050821.P16920974919570339433` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050821 has offset 1).

The definition of A050821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050821.P16920974919570339433

`A005210(or(1, n)+n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050821

/-- `A005210(or(1, n)+n+2)` -/
def P16920974919570339433.Spec : Prop :=
  ∀ n, P16920974919570339433.a n = A050821 (n + 1)

theorem P16920974919570339433.correct : P16920974919570339433.Spec := by
  intro n
  simp only [A050821, Nat.add_sub_cancel]

end A050821

/-! ## A050821.P17343096964315478000

`A005210(2*n+3-and(1, n))`
-/

namespace A050821.P17343096964315478000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 ((2 * n : ℤ) + (3 - (Nat.land 1 n : ℤ))).toNat

end

end A050821.P17343096964315478000

namespace A050821

/-- `A005210(2*n+3-and(1, n))` -/
def P17343096964315478000.Spec : Prop :=
  ∀ n, P17343096964315478000.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P7722693838389584933

`A005210(record[A092486(n)])`
-/

namespace A050821.P7722693838389584933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050821.P7722693838389584933

namespace A050821

/-- `A005210(record[A092486(n)])` -/
def P7722693838389584933.Spec : Prop :=
  ∀ n, P7722693838389584933.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P1558286420852116476

`A005210(A154708(n+1))`
-/

namespace A050821.P1558286420852116476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A154708 (n + 1)).toNat

end

end A050821.P1558286420852116476

namespace A050821

/-- `A005210(A154708(n+1))` -/
def P1558286420852116476.Spec : Prop :=
  ∀ n, P1558286420852116476.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P17248557741218151495

`A005210(A042948(n)+3)`
-/

namespace A050821.P17248557741218151495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A042948 n + 3).toNat

end

end A050821.P17248557741218151495

namespace A050821

/-- `A005210(A042948(n)+3)` -/
def P17248557741218151495.Spec : Prop :=
  ∀ n, P17248557741218151495.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P11177571123657339967

`A005210(∑[gcd(3, A006046(n))])`
-/

namespace A050821.P11177571123657339967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A006046 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050821.P11177571123657339967

namespace A050821

/-- `A005210(∑[gcd(3, A006046(n))])` -/
def P11177571123657339967.Spec : Prop :=
  ∀ n, P11177571123657339967.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P12342768028496477379

`A005210(A042963(n+1)+2)`
-/

namespace A050821.P12342768028496477379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A042963 (n + 1) + 2).toNat

end

end A050821.P12342768028496477379

namespace A050821

/-- `A005210(A042963(n+1)+2)` -/
def P12342768028496477379.Spec : Prop :=
  ∀ n, P12342768028496477379.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P15782523789671388146

`A005210(xor(1, A014601(n)+2))`
-/

namespace A050821.P15782523789671388146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (Int.xor 1 (A014601 n + 2)).toNat

end

end A050821.P15782523789671388146

namespace A050821

/-- `A005210(xor(1, A014601(n)+2))` -/
def P15782523789671388146.Spec : Prop :=
  ∀ n, P15782523789671388146.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P18048142792060174016

`A005210(A109613(n)+2+n)`
-/

namespace A050821.P18048142792060174016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A109613 n + 2 + (n : ℤ)).toNat

end

end A050821.P18048142792060174016

namespace A050821

/-- `A005210(A109613(n)+2+n)` -/
def P18048142792060174016.Spec : Prop :=
  ∀ n, P18048142792060174016.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P14200090622792186411

`A005210(∑[A002033(14*a(n-1))])` with `a(0)=3`
-/

namespace A050821.P14200090622792186411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A002033 (14 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050821.P14200090622792186411

namespace A050821

/-- `A005210(∑[A002033(14*a(n-1))])` -/
def P14200090622792186411.Spec : Prop :=
  ∀ n, P14200090622792186411.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P7509775311692097121

`A005210(A005408(n+1)-A000035(n))`
-/

namespace A050821.P7509775311692097121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A005408 (n + 1) - A000035 n).toNat

end

end A050821.P7509775311692097121

namespace A050821

/-- `A005210(A005408(n+1)-A000035(n))` -/
def P7509775311692097121.Spec : Prop :=
  ∀ n, P7509775311692097121.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P17040227676537269423

`A005210(A008619(n)+A032766(n)+2)`
-/

namespace A050821.P17040227676537269423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A008619 n + (A032766 n + 2)).toNat

end

end A050821.P17040227676537269423

namespace A050821

/-- `A005210(A008619(n)+A032766(n)+2)` -/
def P17040227676537269423.Spec : Prop :=
  ∀ n, P17040227676537269423.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P3651760059098248328

`A005210(2-(A000035(n)-A005408(n)))`
-/

namespace A050821.P3651760059098248328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (2 - (A000035 n - A005408 n)).toNat

end

end A050821.P3651760059098248328

namespace A050821

/-- `A005210(2-(A000035(n)-A005408(n)))` -/
def P3651760059098248328.Spec : Prop :=
  ∀ n, P3651760059098248328.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P7775242529934679536

`2*A039727(n+2)`
-/

namespace A050821.P7775242529934679536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039727 (n + 2)

end

end A050821.P7775242529934679536

namespace A050821

/-- `2*A039727(n+2)` -/
def P7775242529934679536.Spec : Prop :=
  ∀ n, P7775242529934679536.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P10690714093977538862

`A005210(A014601(n+1))`
-/

namespace A050821.P10690714093977538862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A014601 (n + 1)).toNat

end

end A050821.P10690714093977538862

namespace A050821

/-- `A005210(A014601(n+1))` -/
def P10690714093977538862.Spec : Prop :=
  ∀ n, P10690714093977538862.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P13376800019401979525

`A005843(A039727(n+2))`
-/

namespace A050821.P13376800019401979525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A039727 (n + 2)).toNat

end

end A050821.P13376800019401979525

namespace A050821

/-- `A005843(A039727(n+2))` -/
def P13376800019401979525.Spec : Prop :=
  ∀ n, P13376800019401979525.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P14664791906027647003

`filter[A005210(n+1), A059841(#)]`
-/

namespace A050821.P14664791906027647003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A050821.P14664791906027647003

namespace A050821

/-- `filter[A005210(n+1), A059841(#)]` -/
def P14664791906027647003.Spec : Prop :=
  ∀ n, P14664791906027647003.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P11682230648363810467

`A005210(A098180(2*n)+2)`
-/

namespace A050821.P11682230648363810467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A098180 (2 * n) + 2).toNat

end

end A050821.P11682230648363810467

namespace A050821

/-- `A005210(A098180(2*n)+2)` -/
def P11682230648363810467.Spec : Prop :=
  ∀ n, P11682230648363810467.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P16600158808135756681

`A005210(A003815(Δ[A002378(n)]))`
-/

namespace A050821.P16600158808135756681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A003815 (f1 (n + 1) - f1 n).toNat).toNat

end

end A050821.P16600158808135756681

namespace A050821

/-- `A005210(A003815(Δ[A002378(n)]))` -/
def P16600158808135756681.Spec : Prop :=
  ∀ n, P16600158808135756681.a n = A050821 (n + 1)

end A050821

/-! ## A050821.P7820918446373151525

`A005210(A003815(2*n)+Δ[A003815(2*n)])`
-/

namespace A050821.P7820918446373151525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A003815 (2 * n) + (f1 (n + 1) - f1 n)).toNat

end

end A050821.P7820918446373151525

namespace A050821

/-- `A005210(A003815(2*n)+Δ[A003815(2*n)])` -/
def P7820918446373151525.Spec : Prop :=
  ∀ n, P7820918446373151525.a n = A050821 (n + 1)

end A050821

/-!
# A050822: Odd numbers in Hofstadter Q-sequence a(n)=a(n-a(n-1))+a(n-a(n-2)).

The programs for A050822, the canonical program `A050822.P4692462472163273837` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050822 has offset 1).

The definition of A050822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050822.P4692462472163273837

`filter[A005185(n+1), A000035(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050822

/-- `filter[A005185(n+1), A000035(#)]` -/
def P4692462472163273837.Spec : Prop :=
  ∀ n, P4692462472163273837.a n = A050822 (n + 1)

theorem P4692462472163273837.correct : P4692462472163273837.Spec := by
  intro n
  simp only [A050822, Nat.add_sub_cancel]

end A050822

/-! ## A050822.P3222005832722039803

`A005185(eq[1, A005185(n+1)%2]+1)`
-/

namespace A050822.P3222005832722039803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005185 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050822.P3222005832722039803

namespace A050822

/-- `A005185(eq[1, A005185(n+1)%2]+1)` -/
def P3222005832722039803.Spec : Prop :=
  ∀ n, P3222005832722039803.a n = A050822 (n + 1)

end A050822

/-! ## A050822.P9346123169476918946

`A005185(eq[1, gcd(2, A005185(n+1))]+1)`
-/

namespace A050822.P9346123169476918946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A005185 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A050822.P9346123169476918946

namespace A050822

/-- `A005185(eq[1, gcd(2, A005185(n+1))]+1)` -/
def P9346123169476918946.Spec : Prop :=
  ∀ n, P9346123169476918946.a n = A050822 (n + 1)

end A050822

/-! ## A050822.P17770363656911800613

`A005185(eq[1, and(1, A005185(n+1))]+1)`
-/

namespace A050822.P17770363656911800613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A005185 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050822.P17770363656911800613

namespace A050822

/-- `A005185(eq[1, and(1, A005185(n+1))]+1)` -/
def P17770363656911800613.Spec : Prop :=
  ∀ n, P17770363656911800613.a n = A050822 (n + 1)

end A050822

/-! ## A050822.P5648364986550685367

`A005185(record[n^and(1, A005185(n+1))]+1)`
-/

namespace A050822.P5648364986550685367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.land 1 (A005185 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A050822.P5648364986550685367

namespace A050822

/-- `A005185(record[n^and(1, A005185(n+1))]+1)` -/
def P5648364986550685367.Spec : Prop :=
  ∀ n, P5648364986550685367.a n = A050822 (n + 1)

end A050822

/-!
# A050823: Even numbers in Hofstadter Q-sequence a(n)=a(n-a(n-1))+a(n-a(n-2)).

The programs for A050823, the canonical program `A050823.P5939543416348710426` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050823 has offset 1).

The definition of A050823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050823.P14676561945682524667

`2*A039728(n+1)`
-/

namespace A050823.P14676561945682524667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039728 (n + 1)

end

end A050823.P14676561945682524667

namespace A050823

/-- `2*A039728(n+1)` -/
def P14676561945682524667.Spec : Prop :=
  ∀ n, P14676561945682524667.a n = A050823 (n + 1)

end A050823

/-! ## A050823.P5194403941552813761

`A004277(A039728(n+1))`
-/

namespace A050823.P5194403941552813761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A039728 (n + 1)).toNat

end

end A050823.P5194403941552813761

namespace A050823

/-- `A004277(A039728(n+1))` -/
def P5194403941552813761.Spec : Prop :=
  ∀ n, P5194403941552813761.a n = A050823 (n + 1)

end A050823

/-! ## A050823.P1419015823496083171

`A005843(A039728(abs(xor(n, -1))))`
-/

namespace A050823.P1419015823496083171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A039728 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A050823.P1419015823496083171

namespace A050823

/-- `A005843(A039728(abs(xor(n, -1))))` -/
def P1419015823496083171.Spec : Prop :=
  ∀ n, P1419015823496083171.a n = A050823 (n + 1)

end A050823

/-! ## A050823.P13262190540309151145

`A005843(A039728(n+1)%(n+2))`
-/

namespace A050823.P13262190540309151145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A039728 (n + 1)) (n + 2 : ℤ)).toNat

end

end A050823.P13262190540309151145

namespace A050823

/-- `A005843(A039728(n+1)%(n+2))` -/
def P13262190540309151145.Spec : Prop :=
  ∀ n, P13262190540309151145.a n = A050823 (n + 1)

end A050823

/-! ## A050823.P5974551182010557899

`A039728(A000027(n+1))+A039728(n+1)`
-/

namespace A050823.P5974551182010557899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039728 (A000027 (n + 1)).toNat + A039728 (n + 1)

end

end A050823.P5974551182010557899

namespace A050823

/-- `A039728(A000027(n+1))+A039728(n+1)` -/
def P5974551182010557899.Spec : Prop :=
  ∀ n, P5974551182010557899.a n = A050823 (n + 1)

end A050823

/-! ## A050823.P13553755435239401714

`(A039728(n+1)+A039728(n+1))%A033237(n+1)`
-/

namespace A050823.P13553755435239401714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039728 (n + 1) + A039728 (n + 1)) (A033237 (n + 1))

end

end A050823.P13553755435239401714

namespace A050823

/-- `(A039728(n+1)+A039728(n+1))%A033237(n+1)` -/
def P13553755435239401714.Spec : Prop :=
  ∀ n, P13553755435239401714.a n = A050823 (n + 1)

end A050823

/-! ## A050823.P5939543416348710426

`filter[A005185(n+1), A059841(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050823

/-- `filter[A005185(n+1), A059841(#)]` -/
def P5939543416348710426.Spec : Prop :=
  ∀ n, P5939543416348710426.a n = A050823 (n + 1)

theorem P5939543416348710426.correct : P5939543416348710426.Spec := by
  intro n
  simp only [A050823, Nat.add_sub_cancel]

end A050823

/-! ## A050823.P4027908520450133711

`filter[A005185(n+3), A135528(#)]`
-/

namespace A050823.P4027908520450133711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A050823.P4027908520450133711

namespace A050823

/-- `filter[A005185(n+3), A135528(#)]` -/
def P4027908520450133711.Spec : Prop :=
  ∀ n, P4027908520450133711.a n = A050823 (n + 1)

end A050823

/-! ## A050823.P3627461924258693034

`filter[A005185(n+3), A266591(#)]`
-/

namespace A050823.P3627461924258693034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A050823.P3627461924258693034

namespace A050823

/-- `filter[A005185(n+3), A266591(#)]` -/
def P3627461924258693034.Spec : Prop :=
  ∀ n, P3627461924258693034.a n = A050823 (n + 1)

end A050823

/-!
# A050824: Odd numbers in the sequence generated by a(n) = a(a(n-1)-1)+a(n+1-a(n-1)).

The programs for A050824, the canonical program `A050824.P6373654276281107544` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050824 has offset 1).

The definition of A050824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050824.P6373654276281107544

`filter[A006161(n+1), A000035(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050824

/-- `filter[A006161(n+1), A000035(#)]` -/
def P6373654276281107544.Spec : Prop :=
  ∀ n, P6373654276281107544.a n = A050824 (n + 1)

theorem P6373654276281107544.correct : P6373654276281107544.Spec := by
  intro n
  simp only [A050824, Nat.add_sub_cancel]

end A050824

/-! ## A050824.P16651038980019655836

`A006161(eq[1, A006161(n+1)%2]+1)`
-/

namespace A050824.P16651038980019655836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006161 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050824.P16651038980019655836

namespace A050824

/-- `A006161(eq[1, A006161(n+1)%2]+1)` -/
def P16651038980019655836.Spec : Prop :=
  ∀ n, P16651038980019655836.a n = A050824 (n + 1)

end A050824

/-! ## A050824.P16774777383184239663

`A006161(eq[1, and(1, A006161(n+1))]+1)`
-/

namespace A050824.P16774777383184239663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006161 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050824.P16774777383184239663

namespace A050824

/-- `A006161(eq[1, and(1, A006161(n+1))]+1)` -/
def P16774777383184239663.Spec : Prop :=
  ∀ n, P16774777383184239663.a n = A050824 (n + 1)

end A050824

/-!
# A050825: Even numbers in the sequence generated by a(n)=a(a(n-1)-1)+a(n+1-a(n-1)).

The programs for A050825, there is no canonical definition to state claims against.
-/

/-! ## A050825.P15964351007095781629

`2*A051134(n+1)`
-/

namespace A050825.P15964351007095781629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051134 (n + 1)

end

end A050825.P15964351007095781629

/-! ## A050825.P5554631740039689664

`A004277(A051134(n+1))`
-/

namespace A050825.P5554631740039689664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A051134 (n + 1)).toNat

end

end A050825.P5554631740039689664

/-! ## A050825.P2557257277473286870

`A004275(A051134(n+1)+1)`
-/

namespace A050825.P2557257277473286870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A051134 (n + 1) + 1).toNat

end

end A050825.P2557257277473286870

/-! ## A050825.P17355927868203747207

`A005408(A051134(n+1)-1)+1`
-/

namespace A050825.P17355927868203747207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A051134 (n + 1) - 1).toNat + 1

end

end A050825.P17355927868203747207

/-! ## A050825.P2099486341870230804

`A051134(root(n+1, 2)²)+A051134(n+1)`
-/

namespace A050825.P2099486341870230804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051134 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + A051134 (n + 1)

end

end A050825.P2099486341870230804

/-! ## A050825.P13114080851444733096

`gcd(A000038(n), A005843(A051134(n+1)))`
-/

namespace A050825.P13114080851444733096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A005843 (A051134 (n + 1)).toNat)

end

end A050825.P13114080851444733096

/-! ## A050825.P9188371027549844838

`A000027(A051134(n+1)+A051134(n+1))`
-/

namespace A050825.P9188371027549844838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A051134 (n + 1) + A051134 (n + 1)).toNat

end

end A050825.P9188371027549844838

/-! ## A050825.P1585424365005369011

`A005843(A051134(n+1)%(A018252(n+2)+1))`
-/

namespace A050825.P1585424365005369011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A051134 (n + 1)) (A018252 (n + 2) + 1)).toNat

end

end A050825.P1585424365005369011

/-! ## A050825.P15784317413181460805

`filter[A006161(n+1), A059841(#)]`
-/

namespace A050825.P15784317413181460805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A050825.P15784317413181460805

/-! ## A050825.P15714049675965625503

`filter[A006161(n+3), A135528(#)]`
-/

namespace A050825.P15714049675965625503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A050825.P15714049675965625503

/-! ## A050825.P9940026873332344601

`filter[A006161(n+3), A266591(#)]`
-/

namespace A050825.P9940026873332344601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A050825.P9940026873332344601

/-! ## A050825.P16095324577921664665

`A051134(n+1)+A000194(A051134(n+1)²)`
-/

namespace A050825.P16095324577921664665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051134 (n + 1) + A000194 (A051134 (n + 1) ^ 2).toNat

end

end A050825.P16095324577921664665

/-!
# A050826: Odd numbers in the sequence generated by a(n)=a(a(n-2))+a(n-a(n-2)).

The programs for A050826, the canonical program `A050826.P10860839900887988286` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050826 has offset 1).

The definition of A050826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050826.P10860839900887988286

`filter[A005229(n+1), A000035(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050826

/-- `filter[A005229(n+1), A000035(#)]` -/
def P10860839900887988286.Spec : Prop :=
  ∀ n, P10860839900887988286.a n = A050826 (n + 1)

theorem P10860839900887988286.correct : P10860839900887988286.Spec := by
  intro n
  simp only [A050826, Nat.add_sub_cancel]

end A050826

/-! ## A050826.P11006295669784772995

`A005229(eq[1, A005229(n+1)%2]+1)`
-/

namespace A050826.P11006295669784772995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005229 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050826.P11006295669784772995

namespace A050826

/-- `A005229(eq[1, A005229(n+1)%2]+1)` -/
def P11006295669784772995.Spec : Prop :=
  ∀ n, P11006295669784772995.a n = A050826 (n + 1)

end A050826

/-! ## A050826.P8959234497036091869

`A005229(eq[1, gcd(2, A005229(n+1))]+1)`
-/

namespace A050826.P8959234497036091869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A005229 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A050826.P8959234497036091869

namespace A050826

/-- `A005229(eq[1, gcd(2, A005229(n+1))]+1)` -/
def P8959234497036091869.Spec : Prop :=
  ∀ n, P8959234497036091869.a n = A050826 (n + 1)

end A050826

/-! ## A050826.P3501791966803537565

`A005229(eq[1, and(1, A005229(n+1))]+1)`
-/

namespace A050826.P3501791966803537565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A005229 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050826.P3501791966803537565

namespace A050826

/-- `A005229(eq[1, and(1, A005229(n+1))]+1)` -/
def P3501791966803537565.Spec : Prop :=
  ∀ n, P3501791966803537565.a n = A050826 (n + 1)

end A050826

/-! ## A050826.P15583351946294162879

`A005229(record[n*and(1, A005229(n+1))]+1)`
-/

namespace A050826.P15583351946294162879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A005229 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A050826.P15583351946294162879

namespace A050826

/-- `A005229(record[n*and(1, A005229(n+1))]+1)` -/
def P15583351946294162879.Spec : Prop :=
  ∀ n, P15583351946294162879.a n = A050826 (n + 1)

end A050826

/-! ## A050826.P8766949033581343848

`A005229(record[n%lcm(2, A005229(n+1))]+1)`
-/

namespace A050826.P8766949033581343848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Int.lcm 2 (A005229 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A050826.P8766949033581343848

namespace A050826

/-- `A005229(record[n%lcm(2, A005229(n+1))]+1)` -/
def P8766949033581343848.Spec : Prop :=
  ∀ n, P8766949033581343848.a n = A050826 (n + 1)

end A050826

/-!
# A050827: Even numbers in the sequence generated by a(n) = a(a(n-2))+a(n-a(n-2)).

The programs for A050827, the canonical program `A050827.P10269600618779883462` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050827 has offset 1).

The definition of A050827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050827.P6851795769771653578

`2*A039729(n+1)`
-/

namespace A050827.P6851795769771653578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039729 (n + 1)

end

end A050827.P6851795769771653578

namespace A050827

/-- `2*A039729(n+1)` -/
def P6851795769771653578.Spec : Prop :=
  ∀ n, P6851795769771653578.a n = A050827 (n + 1)

end A050827

/-! ## A050827.P583149622089688732

`A004277(A039729(n+1))`
-/

namespace A050827.P583149622089688732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A039729 (n + 1)).toNat

end

end A050827.P583149622089688732

namespace A050827

/-- `A004277(A039729(n+1))` -/
def P583149622089688732.Spec : Prop :=
  ∀ n, P583149622089688732.a n = A050827 (n + 1)

end A050827

/-! ## A050827.P16224049647986984694

`A004275(A039729(n+1)+1)`
-/

namespace A050827.P16224049647986984694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A039729 (n + 1) + 1).toNat

end

end A050827.P16224049647986984694

namespace A050827

/-- `A004275(A039729(n+1)+1)` -/
def P16224049647986984694.Spec : Prop :=
  ∀ n, P16224049647986984694.a n = A050827 (n + 1)

end A050827

/-! ## A050827.P9849973172406459532

`A005843(A039729(n+1)%(n+2))`
-/

namespace A050827.P9849973172406459532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A039729 (n + 1)) (n + 2 : ℤ)).toNat

end

end A050827.P9849973172406459532

namespace A050827

/-- `A005843(A039729(n+1)%(n+2))` -/
def P9849973172406459532.Spec : Prop :=
  ∀ n, P9849973172406459532.a n = A050827 (n + 1)

end A050827

/-! ## A050827.P18051223747697535034

`A039729(n+1)+A039729(Δ[n²]-n)`
-/

namespace A050827.P18051223747697535034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039729 (n + 1) + A039729 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A050827.P18051223747697535034

namespace A050827

/-- `A039729(n+1)+A039729(Δ[n²]-n)` -/
def P18051223747697535034.Spec : Prop :=
  ∀ n, P18051223747697535034.a n = A050827 (n + 1)

end A050827

/-! ## A050827.P7564146030125075122

`(A039729(n+1)+A039729(n+1))%A016969(n)`
-/

namespace A050827.P7564146030125075122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039729 (n + 1) + A039729 (n + 1)) (A016969 n)

end

end A050827.P7564146030125075122

namespace A050827

/-- `(A039729(n+1)+A039729(n+1))%A016969(n)` -/
def P7564146030125075122.Spec : Prop :=
  ∀ n, P7564146030125075122.a n = A050827 (n + 1)

end A050827

/-! ## A050827.P10269600618779883462

`filter[A005229(n+1), A059841(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050827

/-- `filter[A005229(n+1), A059841(#)]` -/
def P10269600618779883462.Spec : Prop :=
  ∀ n, P10269600618779883462.a n = A050827 (n + 1)

theorem P10269600618779883462.correct : P10269600618779883462.Spec := by
  intro n
  simp only [A050827, Nat.add_sub_cancel]

end A050827

/-! ## A050827.P17856758430131470537

`filter[A005229(n+3), A135528(#)]`
-/

namespace A050827.P17856758430131470537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A050827.P17856758430131470537

namespace A050827

/-- `filter[A005229(n+3), A135528(#)]` -/
def P17856758430131470537.Spec : Prop :=
  ∀ n, P17856758430131470537.a n = A050827 (n + 1)

end A050827

/-! ## A050827.P11873388506030955904

`filter[A005229(n+3), A266591(#)]`
-/

namespace A050827.P11873388506030955904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A050827.P11873388506030955904

namespace A050827

/-- `filter[A005229(n+3), A266591(#)]` -/
def P11873388506030955904.Spec : Prop :=
  ∀ n, P11873388506030955904.a n = A050827 (n + 1)

end A050827

/-! ## A050827.P7376655331833504445

`A000267(A039729(n+1)²)`
-/

namespace A050827.P7376655331833504445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A039729 (n + 1) ^ 2).toNat

end

end A050827.P7376655331833504445

namespace A050827

/-- `A000267(A039729(n+1)²)` -/
def P7376655331833504445.Spec : Prop :=
  ∀ n, P7376655331833504445.a n = A050827 (n + 1)

end A050827

/-!
# A050828: Odd numbers in the sequence generated by a(n)=a(a(n-3))+a(n-a(n-3)).

The programs for A050828, the canonical program `A050828.P13398057666425004566` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050828 has offset 1).

The definition of A050828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5062 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050828.P13398057666425004566

`A006158(record[(n+1)^and(1, A006158(n+1))])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050828

/-- `A006158(record[(n+1)^and(1, A006158(n+1))])` -/
def P13398057666425004566.Spec : Prop :=
  ∀ n, P13398057666425004566.a n = A050828 (n + 1)

theorem P13398057666425004566.correct : P13398057666425004566.Spec := by
  intro n
  simp only [A050828, Nat.add_sub_cancel]

end A050828

/-!
# A050829: Even numbers in the sequence generated by a(n) = a(a(n-3)) + a(n-a(n-3)).

The programs for A050829, there is no canonical definition to state claims against.
-/

/-! ## A050829.P12389162084613680428

`2*A039730(n+1)`
-/

namespace A050829.P12389162084613680428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039730 (n + 1)

end

end A050829.P12389162084613680428

/-! ## A050829.P685479844478659325

`A004277(A039730(n+1))`
-/

namespace A050829.P685479844478659325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A039730 (n + 1)).toNat

end

end A050829.P685479844478659325

/-! ## A050829.P882725003191120574

`A004275(A039730(n+1)+1)`
-/

namespace A050829.P882725003191120574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A039730 (n + 1) + 1).toNat

end

end A050829.P882725003191120574

/-! ## A050829.P18026471096707957804

`A005843(A039730(n+1)%(n+2))`
-/

namespace A050829.P18026471096707957804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A039730 (n + 1)) (n + 2 : ℤ)).toNat

end

end A050829.P18026471096707957804

/-! ## A050829.P103323479337342918

`A039730(A000027(n+1))+A039730(n+1)`
-/

namespace A050829.P103323479337342918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039730 (A000027 (n + 1)).toNat + A039730 (n + 1)

end

end A050829.P103323479337342918

/-! ## A050829.P1786506794485735287

`A039730(n+1)+A039730(n+1)^or(1, A288670(n+1))`
-/

namespace A050829.P1786506794485735287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039730 (n + 1) : ℚ) + (A039730 (n + 1) : ℚ) ^ (Int.lor 1 (A288670 (n + 1)) : ℤ)

end

end A050829.P1786506794485735287

/-! ## A050829.P17340491851486112618

`filter[A006158(n+1), A059841(#)]`
-/

namespace A050829.P17340491851486112618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A050829.P17340491851486112618

/-! ## A050829.P9533138600653352867

`A000267(A039730(n+1)²)`
-/

namespace A050829.P9533138600653352867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A039730 (n + 1) ^ 2).toNat

end

end A050829.P9533138600653352867

/-!
# A050830: Numbers k such that 157*2^k-1 is prime.

The programs for A050830, there is no canonical definition to state claims against.
-/

/-! ## A050830.P13274372958548725680

`A239331(A113650(n+2)+2)`
-/

namespace A050830.P13274372958548725680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239331 (A113650 (n + 2) + 2).toNat

end

end A050830.P13274372958548725680

/-!
# A050836: Numbers n such that 169*2^n-1 is prime.

The programs for A050836, there is no canonical definition to state claims against.
-/

/-! ## A050836.P4361682927965010446

`A122089(A361662(n+1))`
-/

namespace A050836.P4361682927965010446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122089 (A361662 (n + 1)).toNat

end

end A050836.P4361682927965010446

/-! ## A050836.P15311494703111249424

`A175249(A059810(n+2))`
-/

namespace A050836.P15311494703111249424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175249 (A059810 (n + 2)).toNat

end

end A050836.P15311494703111249424

/-!
# A050842: Numbers k such that 181*2^k-1 is prime.

The programs for A050842, there is no canonical definition to state claims against.
-/

/-! ## A050842.P3178894008722715887

`∑[A000005(A215680(n)+2)+1]-n`
-/

namespace A050842.P3178894008722715887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A215680 n + 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A050842.P3178894008722715887

/-! ## A050842.P4116014286595165693

`∑[A001227(A005425(n)+5)]+1`
-/

namespace A050842.P4116014286595165693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A005425 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A050842.P4116014286595165693

/-! ## A050842.P8167561296350242229

`record[A032741(2*A112529(n+1))]`
-/

namespace A050842.P8167561296350242229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * A112529 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050842.P8167561296350242229

/-! ## A050842.P9287187045874353634

`lt[A052273(2*(n+1)), dr(A276477(n))]`
-/

namespace A050842.P9287187045874353634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052273 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A276477 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050842.P9287187045874353634

/-! ## A050842.P16804577942736644550

`eq[A002033(A061601(n)), A116372(n+1)]`
-/

namespace A050842.P16804577942736644550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A061601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050842.P16804577942736644550

/-!
# A050845: Numbers k such that 187*2^k-1 is prime.

The programs for A050845, there is no canonical definition to state claims against.
-/

/-! ## A050845.P9095985892549189655

`A047431(or(A022091(n), A113848(n+1)))`
-/

namespace A050845.P9095985892549189655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047431 (Int.lor (A022091 n) (A113848 (n + 1))).toNat

end

end A050845.P9095985892549189655

/-!
# A050846: Numbers k such that 189*2^k-1 is prime.

The programs for A050846, there is no canonical definition to state claims against.
-/

/-! ## A050846.P14416543754536400460

`record[gcd(A086883(n+1), A233279(n))]`
-/

namespace A050846.P14416543754536400460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086883 (n + 1)) (A233279 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050846.P14416543754536400460

/-! ## A050846.P13243604614302499536

`A118925(A118933(n))+A058958(n+2)`
-/

namespace A050846.P13243604614302499536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118925 (A118933 n).toNat + A058958 (n + 2)

end

end A050846.P13243604614302499536

/-!
# A050848: Numbers k such that 193*2^k-1 is prime.

The programs for A050848, there is no canonical definition to state claims against.
-/

/-! ## A050848.P411775569656095816

`A112062(A269523(n))`
-/

namespace A050848.P411775569656095816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112062 (A269523 n).toNat

end

end A050848.P411775569656095816

/-! ## A050848.P6990802662891647602

`A372432(A319384(n))`
-/

namespace A050848.P6990802662891647602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372432 (A319384 n).toNat

end

end A050848.P6990802662891647602

/-!
# A050849: Numbers k such that 195*2^k-1 is prime.

The programs for A050849, there is no canonical definition to state claims against.
-/

/-! ## A050849.P6419188051419193393

`eq[A114733(A200082(n+1)), A165112(n)]`
-/

namespace A050849.P6419188051419193393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114733 (A200082 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165112 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050849.P6419188051419193393

/-!
# A050851: Numbers k such that 199*2^k-1 is prime.

The programs for A050851, there is no canonical definition to state claims against.
-/

/-! ## A050851.P1404342323882049493

`∑[A100762(∑[A292064(n+1)])]`
-/

namespace A050851.P1404342323882049493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100762 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050851.P1404342323882049493

/-!
# A050852: Numbers k such that 201*2^k-1 is prime.

The programs for A050852, there is no canonical definition to state claims against.
-/

/-! ## A050852.P1667341341146735528

`A002024(A192922(n+1)+A061416(n+1)²)`
-/

namespace A050852.P1667341341146735528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A192922 (n + 1) + A061416 (n + 1) ^ 2).toNat

end

end A050852.P1667341341146735528

/-!
# A050853: Numbers n such that 203*2^n-1 is prime.

The programs for A050853, there is no canonical definition to state claims against.
-/

/-! ## A050853.P5118874961224494044

`A358946(A319449(n+1))+1`
-/

namespace A050853.P5118874961224494044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358946 (A319449 (n + 1)).toNat + 1

end

end A050853.P5118874961224494044

/-!
# A050862: Numbers n such that 221*2^n-1 is prime.

The programs for A050862, there is no canonical definition to state claims against.
-/

/-! ## A050862.P2704585041719732753

`A252753(A083066(n*A208447(n)))`
-/

namespace A050862.P2704585041719732753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A083066 ((n : ℤ) * A208447 n).toNat).toNat

end

end A050862.P2704585041719732753

/-!
# A050869: Numbers n such that 235*2^n-1 is prime.

The programs for A050869, there is no canonical definition to state claims against.
-/

/-! ## A050869.P15949067748965999957

`A264798(A098515(n+1))`
-/

namespace A050869.P15949067748965999957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264798 (A098515 (n + 1)).toNat

end

end A050869.P15949067748965999957

/-!
# A050870: T(h,k) = binomial(h,k) - A050186(h,k).

The programs for A050870, there is no canonical definition to state claims against.
-/

/-! ## A050870.P3678066666897429047

`A007318(n)-A050186(n)`
-/

namespace A050870.P3678066666897429047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A050186 n

end

end A050870.P3678066666897429047

/-! ## A050870.P5432744866057131764

`abs(A108086(n))-A050186(n)`
-/

namespace A050870.P5432744866057131764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| - A050186 n

end

end A050870.P5432744866057131764

/-! ## A050870.P14909054476591783729

`abs(A117440(n))-A050186(n)`
-/

namespace A050870.P14909054476591783729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n| - A050186 n

end

end A050870.P14909054476591783729

/-! ## A050870.P3935317925592549577

`abs(A130595(n))-A050186(n)`
-/

namespace A050870.P3935317925592549577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| - A050186 n

end

end A050870.P3935317925592549577

/-! ## A050870.P12469245500702712292

`sqrt(A008459(n))-A050186(n)`
-/

namespace A050870.P12469245500702712292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) - (A050186 n : ℝ)

end

end A050870.P12469245500702712292

/-! ## A050870.P16447091785502921690

`Δ[A102363(n)]-A050186(n)`
-/

namespace A050870.P16447091785502921690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A050186 n

end

end A050870.P16447091785502921690

/-! ## A050870.P6852845612520839235

`A014473(n)+1-A050186(n)`
-/

namespace A050870.P6852845612520839235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (1 - A050186 n)

end

end A050870.P6852845612520839235

/-! ## A050870.P10438068590809560679

`A028326(n)/2-A050186(n)`
-/

namespace A050870.P10438068590809560679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 - (A050186 n : ℚ)

end

end A050870.P10438068590809560679

/-! ## A050870.P16174106940311291645

`A074909(A271439(n))-A050186(n)`
-/

namespace A050870.P16174106940311291645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A271439 n).toNat - A050186 n

end

end A050870.P16174106940311291645

/-! ## A050870.P5866232841192200739

`A023443(2-(A050186(n)-A014473(n)))`
-/

namespace A050870.P5866232841192200739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 - (A050186 n - A014473 n)).toNat

end

end A050870.P5866232841192200739

/-! ## A050870.P5147594010308158357

`A004526(A028326(n)-2*A050186(n))`
-/

namespace A050870.P5147594010308158357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028326 n - 2 * A050186 n).toNat

end

end A050870.P5147594010308158357

/-! ## A050870.P4116244291086637966

`A004526(A028326(n)-A050186(n)-A050186(n))`
-/

namespace A050870.P4116244291086637966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028326 n - A050186 n - A050186 n).toNat

end

end A050870.P4116244291086637966

/-! ## A050870.P16925890671401758955

`A014473(n)-A023443(A050186(n))`
-/

namespace A050870.P16925890671401758955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n - A023443 (A050186 n).toNat

end

end A050870.P16925890671401758955

/-! ## A050870.P5485391556612040892

`A004526(A028326(n))-A050186(n)`
-/

namespace A050870.P5485391556612040892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028326 n).toNat - A050186 n

end

end A050870.P5485391556612040892

/-!
# A050871: Row sums of even numbered rows of array T in A050870 (periodic binary words).

The programs for A050871, the canonical program `A050871.P14178361783424697463` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050871 has offset 0).

The definition of A050871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050871.P6709547214979764154

`record[A152061(n)]`
-/

namespace A050871.P6709547214979764154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050871.P6709547214979764154

namespace A050871

/-- `record[A152061(n)]` -/
def P6709547214979764154.Spec : Prop :=
  ∀ n, P6709547214979764154.a n = A050871 n

end A050871

/-! ## A050871.P14178361783424697463

`2*A050872(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A050871

/-- `2*A050872(n)` -/
def P14178361783424697463.Spec : Prop :=
  ∀ n, P14178361783424697463.a n = A050871 n

theorem P14178361783424697463.correct : P14178361783424697463.Spec := by
  intro n
  simp only [A050871]

end A050871

/-! ## A050871.P11819613276761446145

`A152061(2*n)`
-/

namespace A050871.P11819613276761446145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 (2 * n)

end

end A050871.P11819613276761446145

namespace A050871

/-- `A152061(2*n)` -/
def P11819613276761446145.Spec : Prop :=
  ∀ n, P11819613276761446145.a n = A050871 n

end A050871

/-! ## A050871.P16074992998791480385

`record[2*A178472(n+1)]`
-/

namespace A050871.P16074992998791480385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050871.P16074992998791480385

namespace A050871

/-- `record[2*A178472(n+1)]` -/
def P16074992998791480385.Spec : Prop :=
  ∀ n, P16074992998791480385.a n = A050871 n

end A050871

/-! ## A050871.P9274193863562479497

`2*A178472(A004277(n))`
-/

namespace A050871.P9274193863562479497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178472 (A004277 n).toNat

end

end A050871.P9274193863562479497

namespace A050871

/-- `2*A178472(A004277(n))` -/
def P9274193863562479497.Spec : Prop :=
  ∀ n, P9274193863562479497.a n = A050871 n

end A050871

/-! ## A050871.P8918665345735528000

`lcm(2, A152061(A005843(n)))`
-/

namespace A050871.P8918665345735528000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A152061 (A005843 n).toNat)

end

end A050871.P8918665345735528000

namespace A050871

/-- `lcm(2, A152061(A005843(n)))` -/
def P8918665345735528000.Spec : Prop :=
  ∀ n, (P8918665345735528000.a n : ℤ) = A050871 n

end A050871

/-! ## A050871.P14673450154383558570

`2*A178472(A004275(n+1))`
-/

namespace A050871.P14673450154383558570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178472 (A004275 (n + 1)).toNat

end

end A050871.P14673450154383558570

namespace A050871

/-- `2*A178472(A004275(n+1))` -/
def P14673450154383558570.Spec : Prop :=
  ∀ n, P14673450154383558570.a n = A050871 n

end A050871

/-! ## A050871.P2277331731586125469

`2*A178472(A092535(n+1))`
-/

namespace A050871.P2277331731586125469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178472 (A092535 (n + 1)).toNat

end

end A050871.P2277331731586125469

namespace A050871

/-- `2*A178472(A092535(n+1))` -/
def P2277331731586125469.Spec : Prop :=
  ∀ n, P2277331731586125469.a n = A050871 n

end A050871

/-! ## A050871.P12915809978881394887

`2*A178472(A058992(n+2))`
-/

namespace A050871.P12915809978881394887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178472 (A058992 (n + 2)).toNat

end

end A050871.P12915809978881394887

namespace A050871

/-- `2*A178472(A058992(n+2))` -/
def P12915809978881394887.Spec : Prop :=
  ∀ n, P12915809978881394887.a n = A050871 n

end A050871

/-! ## A050871.P7880982380097341633

`2*A178472(A028310(2*n))`
-/

namespace A050871.P7880982380097341633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178472 (A028310 (2 * n)).toNat

end

end A050871.P7880982380097341633

namespace A050871

/-- `2*A178472(A028310(2*n))` -/
def P7880982380097341633.Spec : Prop :=
  ∀ n, P7880982380097341633.a n = A050871 n

end A050871

/-! ## A050871.P3596939803240919978

`A050872(A005843(n)/2)+A050872(n)`
-/

namespace A050871.P3596939803240919978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050872 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A050872 n

end

end A050871.P3596939803240919978

namespace A050871

/-- `A050872(A005843(n)/2)+A050872(n)` -/
def P3596939803240919978.Spec : Prop :=
  ∀ n, P3596939803240919978.a n = A050871 n

end A050871

/-! ## A050871.P6580421790616023024

`A050872(A005843(n)-n)+A050872(n)`
-/

namespace A050871.P6580421790616023024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050872 (A005843 n - (n : ℤ)).toNat + A050872 n

end

end A050871.P6580421790616023024

namespace A050871

/-- `A050872(A005843(n)-n)+A050872(n)` -/
def P6580421790616023024.Spec : Prop :=
  ∀ n, P6580421790616023024.a n = A050871 n

end A050871

/-! ## A050871.P2358659407547084998

`record[2^(n+1)-A027375(n+1)]`
-/

namespace A050871.P2358659407547084998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A027375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050871.P2358659407547084998

namespace A050871

/-- `record[2^(n+1)-A027375(n+1)]` -/
def P2358659407547084998.Spec : Prop :=
  ∀ n, P2358659407547084998.a n = A050871 n

end A050871

/-! ## A050871.P13850970386047707739

`A155559(n)²-A027375(2*n)`
-/

namespace A050871.P13850970386047707739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n ^ 2 - A027375 (2 * n)

end

end A050871.P13850970386047707739

namespace A050871

/-- `A155559(n)²-A027375(2*n)` -/
def P13850970386047707739.Spec : Prop :=
  ∀ n, P13850970386047707739.a n = A050871 n

end A050871

/-! ## A050871.P12011891006308012543

`A155559(2*n)-A027375(2*n)`
-/

namespace A050871.P12011891006308012543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 (2 * n) - A027375 (2 * n)

end

end A050871.P12011891006308012543

namespace A050871

/-- `A155559(2*n)-A027375(2*n)` -/
def P12011891006308012543.Spec : Prop :=
  ∀ n, P12011891006308012543.a n = A050871 n

end A050871

/-! ## A050871.P13337455087503606529

`(2*A131577(n))²-A027375(2*n)`
-/

namespace A050871.P13337455087503606529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A131577 n) ^ 2 - A027375 (2 * n)

end

end A050871.P13337455087503606529

namespace A050871

/-- `(2*A131577(n))²-A027375(2*n)` -/
def P13337455087503606529.Spec : Prop :=
  ∀ n, P13337455087503606529.a n = A050871 n

end A050871

/-! ## A050871.P377769887899636084

`2*A131577(2*n)-A027375(2*n)`
-/

namespace A050871.P377769887899636084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131577 (2 * n) - A027375 (2 * n)

end

end A050871.P377769887899636084

namespace A050871

/-- `2*A131577(2*n)-A027375(2*n)` -/
def P377769887899636084.Spec : Prop :=
  ∀ n, P377769887899636084.a n = A050871 n

end A050871

/-! ## A050871.P3084013706631911467

`A000079(n)²-(A027375(2*n)+A000007(n))`
-/

namespace A050871.P3084013706631911467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - (A027375 (2 * n) + A000007 n)

end

end A050871.P3084013706631911467

namespace A050871

/-- `A000079(n)²-(A027375(2*n)+A000007(n))` -/
def P3084013706631911467.Spec : Prop :=
  ∀ n, P3084013706631911467.a n = A050871 n

end A050871

/-! ## A050871.P8308663310294882921

`A000079(2*n)-(A027375(2*n)+A000007(n))`
-/

namespace A050871.P8308663310294882921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) - (A027375 (2 * n) + A000007 n)

end

end A050871.P8308663310294882921

namespace A050871

/-- `A000079(2*n)-(A027375(2*n)+A000007(n))` -/
def P8308663310294882921.Spec : Prop :=
  ∀ n, P8308663310294882921.a n = A050871 n

end A050871

/-! ## A050871.P487553514550034599

`A255047(2*n+1)-(A255047(2*n)+A027375(2*n))`
-/

namespace A050871.P487553514550034599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (2 * n + 1) - (A255047 (2 * n) + A027375 (2 * n))

end

end A050871.P487553514550034599

namespace A050871

/-- `A255047(2*n+1)-(A255047(2*n)+A027375(2*n))` -/
def P487553514550034599.Spec : Prop :=
  ∀ n, P487553514550034599.a n = A050871 n

end A050871

/-!
# A050872: a(n) = (1/2)*A050871 (row sums of array T in A050870, periodic binary words).

The programs for A050872, the canonical program `A050872.P5272709891617421659` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050872 has offset 0).

The definition of A050872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050872.P17981837801788262419

`record[A178472(n+1)]`
-/

namespace A050872.P17981837801788262419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050872.P17981837801788262419

namespace A050872

/-- `record[A178472(n+1)]` -/
def P17981837801788262419.Spec : Prop :=
  ∀ n, P17981837801788262419.a n = A050872 n

end A050872

/-! ## A050872.P49630526892949883

`A178472(A004277(n))`
-/

namespace A050872.P49630526892949883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (A004277 n).toNat

end

end A050872.P49630526892949883

namespace A050872

/-- `A178472(A004277(n))` -/
def P49630526892949883.Spec : Prop :=
  ∀ n, P49630526892949883.a n = A050872 n

end A050872

/-! ## A050872.P5690800063865425568

`A178472(A004275(n+1))`
-/

namespace A050872.P5690800063865425568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (A004275 (n + 1)).toNat

end

end A050872.P5690800063865425568

namespace A050872

/-- `A178472(A004275(n+1))` -/
def P5690800063865425568.Spec : Prop :=
  ∀ n, P5690800063865425568.a n = A050872 n

end A050872

/-! ## A050872.P7785669646370237975

`A178472(A092535(n+1))`
-/

namespace A050872.P7785669646370237975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (A092535 (n + 1)).toNat

end

end A050872.P7785669646370237975

namespace A050872

/-- `A178472(A092535(n+1))` -/
def P7785669646370237975.Spec : Prop :=
  ∀ n, P7785669646370237975.a n = A050872 n

end A050872

/-! ## A050872.P7529498215033462508

`A178472(A058992(n+2))`
-/

namespace A050872.P7529498215033462508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (A058992 (n + 2)).toNat

end

end A050872.P7529498215033462508

namespace A050872

/-- `A178472(A058992(n+2))` -/
def P7529498215033462508.Spec : Prop :=
  ∀ n, P7529498215033462508.a n = A050872 n

end A050872

/-! ## A050872.P1688558384374685797

`A178472(A028310(2*n))`
-/

namespace A050872.P1688558384374685797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (A028310 (2 * n)).toNat

end

end A050872.P1688558384374685797

namespace A050872

/-- `A178472(A028310(2*n))` -/
def P1688558384374685797.Spec : Prop :=
  ∀ n, P1688558384374685797.a n = A050872 n

end A050872

/-! ## A050872.P16539434954721820313

`A178472(A123108(4*n))`
-/

namespace A050872.P16539434954721820313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (A123108 (4 * n)).toNat

end

end A050872.P16539434954721820313

namespace A050872

/-- `A178472(A123108(4*n))` -/
def P16539434954721820313.Spec : Prop :=
  ∀ n, P16539434954721820313.a n = A050872 n

end A050872

/-! ## A050872.P5782972028294460108

`A178472(A028310(n)+n)`
-/

namespace A050872.P5782972028294460108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (A028310 n + (n : ℤ)).toNat

end

end A050872.P5782972028294460108

namespace A050872

/-- `A178472(A028310(n)+n)` -/
def P5782972028294460108.Spec : Prop :=
  ∀ n, P5782972028294460108.a n = A050872 n

end A050872

/-! ## A050872.P16273661063142373867

`A178472(A233583(2*(n+1))-1)`
-/

namespace A050872.P16273661063142373867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (A233583 (2 * (n + 1)) - 1).toNat

end

end A050872.P16273661063142373867

namespace A050872

/-- `A178472(A233583(2*(n+1))-1)` -/
def P16273661063142373867.Spec : Prop :=
  ∀ n, P16273661063142373867.a n = A050872 n

end A050872

/-! ## A050872.P14570566550350801790

`A178472(n-ceil(n/A000041(n))+n+1)`
-/

namespace A050872.P14570566550350801790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 ((n : ℤ) - ⌈(n : ℚ) / (A000041 n : ℚ)⌉ + (n + 1 : ℤ)).toNat

end

end A050872.P14570566550350801790

namespace A050872

/-- `A178472(n-ceil(n/A000041(n))+n+1)` -/
def P14570566550350801790.Spec : Prop :=
  ∀ n, P14570566550350801790.a n = A050872 n

end A050872

/-! ## A050872.P12287318608727336308

`A050871(n)/2`
-/

namespace A050872.P12287318608727336308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050871 n : ℚ) / 2

end

end A050872.P12287318608727336308

namespace A050872

/-- `A050871(n)/2` -/
def P12287318608727336308.Spec : Prop :=
  ∀ n, P12287318608727336308.a n = (A050872 n : ℚ)

theorem P12287318608727336308.correct : P12287318608727336308.Spec := by
  intro n
  simp only [A050872, Nat.add_sub_cancel, A050872.P12287318608727336308.a, A050872.P5272709891617421659.f1, A050872.P5272709891617421659.a, A000740, A000740.P14835443835842648949.a, A050871, A050871.P14178361783424697463.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050872

/-! ## A050872.P14335346012957050027

`record[A152061(n)/2]`
-/

namespace A050872.P14335346012957050027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152061 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050872.P14335346012957050027

namespace A050872

/-- `record[A152061(n)/2]` -/
def P14335346012957050027.Spec : Prop :=
  ∀ n, P14335346012957050027.a n = (A050872 n : ℚ)

end A050872

/-! ## A050872.P13683106396765830770

`A152061(2*n)/2`
-/

namespace A050872.P13683106396765830770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152061 (2 * n) : ℚ) / 2

end

end A050872.P13683106396765830770

namespace A050872

/-- `A152061(2*n)/2` -/
def P13683106396765830770.Spec : Prop :=
  ∀ n, P13683106396765830770.a n = (A050872 n : ℚ)

end A050872

/-! ## A050872.P5272709891617421659

`record[2^n-A000740(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A050872

/-- `record[2^n-A000740(n+1)]` -/
def P5272709891617421659.Spec : Prop :=
  ∀ n, P5272709891617421659.a n = A050872 n

theorem P5272709891617421659.correct : P5272709891617421659.Spec := by
  intro n
  simp only [A050872]

end A050872

/-! ## A050872.P3550931835569014956

`(A155559(n)²-A027375(2*n))/2`
-/

namespace A050872.P3550931835569014956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155559 n ^ 2 - A027375 (2 * n) : ℚ) / 2

end

end A050872.P3550931835569014956

namespace A050872

/-- `(A155559(n)²-A027375(2*n))/2` -/
def P3550931835569014956.Spec : Prop :=
  ∀ n, P3550931835569014956.a n = (A050872 n : ℚ)

end A050872

/-! ## A050872.P629039294721238533

`A131577(2*n)-A027375(2*n)/2`
-/

namespace A050872.P629039294721238533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (2 * n) : ℚ) - (A027375 (2 * n) : ℚ) / 2

end

end A050872.P629039294721238533

namespace A050872

/-- `A131577(2*n)-A027375(2*n)/2` -/
def P629039294721238533.Spec : Prop :=
  ∀ n, P629039294721238533.a n = (A050872 n : ℚ)

end A050872

/-! ## A050872.P7669388953773695392

`(A155559(2*n)-A027375(2*n))/2`
-/

namespace A050872.P7669388953773695392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155559 (2 * n) - A027375 (2 * n) : ℚ) / 2

end

end A050872.P7669388953773695392

namespace A050872

/-- `(A155559(2*n)-A027375(2*n))/2` -/
def P7669388953773695392.Spec : Prop :=
  ∀ n, P7669388953773695392.a n = (A050872 n : ℚ)

end A050872

/-!
# A050873: Triangular array T read by rows: T(n,k) = gcd(n,k).

The programs for A050873, the canonical program `A050873.P9265691843747829377` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050873 has offset 1).

The definition of A050873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(row(n)+1, col(n)+1)` (program `A050873.P9265691843747829377`, by `A050873.P9265691843747829377.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050873.P9265691843747829377

`gcd(row(n)+1, col(n)+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050873

/-- `gcd(row(n)+1, col(n)+1)` -/
def P9265691843747829377.Spec : Prop :=
  ∀ n, (P9265691843747829377.a n : ℤ) = A050873 (n + 1)

theorem P9265691843747829377.correct : P9265691843747829377.Spec := by
  intro n
  simp only [A050873, Nat.add_sub_cancel]

end A050873

/-! ## A050873.P7102193883181645413

`gcd(col(n)+1, row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050873.P7102193883181645413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.triCol n + 1 : ℤ) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A050873.P7102193883181645413

namespace A050873

/-- `gcd(col(n)+1, row(n)-col(n))` -/
def P7102193883181645413.Spec : Prop :=
  ∀ n, (P7102193883181645413.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P7116636303591424330

`gcd(row(n)-col(n), col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050873.P7116636303591424330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A050873.P7116636303591424330

namespace A050873

/-- `gcd(row(n)-col(n), col(n)+1)` -/
def P7116636303591424330.Spec : Prop :=
  ∀ n, (P7116636303591424330.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P9978690137907043901

`gcd(A002260(n+1), A002024(n+1))`
-/

namespace A050873.P9978690137907043901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A002024 (n + 1))

end

end A050873.P9978690137907043901

namespace A050873

/-- `gcd(A002260(n+1), A002024(n+1))` -/
def P9978690137907043901.Spec : Prop :=
  ∀ n, (P9978690137907043901.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P18071611403670836386

`gcd(n+1-C(floor(1/2+sqrt(2*(n+1))), 2), C(floor(3/2+sqrt(2*(n+1))), 2)-(n+1))`
-/

namespace A050873.P18071611403670836386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - (Nat.choose ⌊((1 : ℚ) / 2 : ℝ) + Real.sqrt (2 * (n + 1) : ℝ)⌋.toNat 2 : ℤ)) ((Nat.choose ⌊((3 : ℚ) / 2 : ℝ) + Real.sqrt (2 * (n + 1) : ℝ)⌋.toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A050873.P18071611403670836386

namespace A050873

/-- `gcd(n+1-C(floor(1/2+sqrt(2*(n+1))), 2), C(floor(3/2+sqrt(2*(n+1))), 2)-(n+1))` -/
def P18071611403670836386.Spec : Prop :=
  ∀ n, (P18071611403670836386.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P8944418766760948055

`log2(A046143(n+1)+1)`
-/

namespace A050873.P8944418766760948055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A046143 (n + 1) + 1 : ℝ)

end

end A050873.P8944418766760948055

namespace A050873

/-- `log2(A046143(n+1)+1)` -/
def P8944418766760948055.Spec : Prop :=
  ∀ n, P8944418766760948055.a n = (A050873 (n + 1) : ℝ)

end A050873

/-! ## A050873.P17334717889106737067

`∑[char[∑[n]]]/A054531(n+1)`
-/

namespace A050873.P17334717889106737067
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A050873.P17334717889106737067

namespace A050873

/-- `∑[char[∑[n]]]/A054531(n+1)` -/
def P17334717889106737067.Spec : Prop :=
  ∀ n, P17334717889106737067.a n = (A050873 (n + 1) : ℚ)

end A050873

/-! ## A050873.P7264268653854988149

`gcd(A004247(n), A128139(n))`
-/

namespace A050873.P7264268653854988149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A128139 n)

end

end A050873.P7264268653854988149

namespace A050873

/-- `gcd(A004247(n), A128139(n))` -/
def P7264268653854988149.Spec : Prop :=
  ∀ n, (P7264268653854988149.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P3086812399320089496

`gcd(A002024(n+1), A063656(n))`
-/

namespace A050873.P3086812399320089496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002024 (n + 1)) (A063656 n)

end

end A050873.P3086812399320089496

namespace A050873

/-- `gcd(A002024(n+1), A063656(n))` -/
def P3086812399320089496.Spec : Prop :=
  ∀ n, (P3086812399320089496.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P2301252193902888209

`gcd(A004201(n+1), A123578(n))`
-/

namespace A050873.P2301252193902888209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004201 (n + 1)) (A123578 n)

end

end A050873.P2301252193902888209

namespace A050873

/-- `gcd(A004201(n+1), A123578(n))` -/
def P2301252193902888209.Spec : Prop :=
  ∀ n, (P2301252193902888209.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P9789254441775208551

`gcd(A048151(n+1), A127948(n))`
-/

namespace A050873.P9789254441775208551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048151 (n + 1)) (A127948 n)

end

end A050873.P9789254441775208551

namespace A050873

/-- `gcd(A048151(n+1), A127948(n))` -/
def P9789254441775208551.Spec : Prop :=
  ∀ n, (P9789254441775208551.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P9935176736802210976

`gcd(A056942(n), A128140(n+1))`
-/

namespace A050873.P9935176736802210976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056942 n) (A128140 (n + 1))

end

end A050873.P9935176736802210976

namespace A050873

/-- `gcd(A056942(n), A128140(n+1))` -/
def P9935176736802210976.Spec : Prop :=
  ∀ n, (P9935176736802210976.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P9393415578745896092

`gcd(A051173(n+1), A151890(n))`
-/

namespace A050873.P9393415578745896092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051173 (n + 1)) (A151890 n)

end

end A050873.P9393415578745896092

namespace A050873

/-- `gcd(A051173(n+1), A151890(n))` -/
def P9393415578745896092.Spec : Prop :=
  ∀ n, (P9393415578745896092.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P6770070678607670004

`gcd(A109042(n), A123275(n+1))`
-/

namespace A050873.P6770070678607670004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109042 n) (A123275 (n + 1))

end

end A050873.P6770070678607670004

namespace A050873

/-- `gcd(A109042(n), A123275(n+1))` -/
def P6770070678607670004.Spec : Prop :=
  ∀ n, (P6770070678607670004.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P15274973698894385826

`gcd(A127780(n+1), A130855(n))`
-/

namespace A050873.P15274973698894385826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127780 (n + 1)) (A130855 n)

end

end A050873.P15274973698894385826

namespace A050873

/-- `gcd(A127780(n+1), A130855(n))` -/
def P15274973698894385826.Spec : Prop :=
  ∀ n, (P15274973698894385826.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P8169319881339742686

`gcd(A274094(n), A330613(n+1))`
-/

namespace A050873.P8169319881339742686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274094 n) (A330613 (n + 1))

end

end A050873.P8169319881339742686

namespace A050873

/-- `gcd(A274094(n), A330613(n+1))` -/
def P8169319881339742686.Spec : Prop :=
  ∀ n, (P8169319881339742686.a n : ℤ) = A050873 (n + 1)

end A050873

/-! ## A050873.P10203781190972867810

`A108872(n+1)-A199408(n+1)`
-/

namespace A050873.P10203781190972867810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - A199408 (n + 1)

end

end A050873.P10203781190972867810

namespace A050873

/-- `A108872(n+1)-A199408(n+1)` -/
def P10203781190972867810.Spec : Prop :=
  ∀ n, P10203781190972867810.a n = A050873 (n + 1)

end A050873

/-! ## A050873.P18148662479196947425

`A051173(n+1)/A051537(n+1)`
-/

namespace A050873.P18148662479196947425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (A051537 (n + 1) : ℚ)

end

end A050873.P18148662479196947425

namespace A050873

/-- `A051173(n+1)/A051537(n+1)` -/
def P18148662479196947425.Spec : Prop :=
  ∀ n, P18148662479196947425.a n = (A050873 (n + 1) : ℚ)

end A050873

/-! ## A050873.P4821606479351628388

`A075362(n+1)/A051173(n+1)`
-/

namespace A050873.P4821606479351628388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) / (A051173 (n + 1) : ℚ)

end

end A050873.P4821606479351628388

namespace A050873

/-- `A075362(n+1)/A051173(n+1)` -/
def P4821606479351628388.Spec : Prop :=
  ∀ n, P4821606479351628388.a n = (A050873 (n + 1) : ℚ)

end A050873

/-! ## A050873.P13033917899084556767

`A002260(n+1)/A164306(n+1)`
-/

namespace A050873.P13033917899084556767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A164306 (n + 1) : ℚ)

end

end A050873.P13033917899084556767

namespace A050873

/-- `A002260(n+1)/A164306(n+1)` -/
def P13033917899084556767.Spec : Prop :=
  ∀ n, P13033917899084556767.a n = (A050873 (n + 1) : ℚ)

end A050873

/-!
# A050874: Binary numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but 6 values of i.

The programs for A050874, the canonical program `A050874.P14166334163977989316` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050874 has offset 1).

The definition of A050874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050874.P14166334163977989316

`eq[3, A037888(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A050874

/-- `eq[3, A037888(n+1)]+1` -/
def P14166334163977989316.Spec : Prop :=
  ∀ n, (P14166334163977989316.a n : ℤ) = A050874 (n + 1)

theorem P14166334163977989316.correct : P14166334163977989316.Spec := by
  intro n
  simp only [A050874, Nat.add_sub_cancel]

end A050874

/-! ## A050874.P12192085497827352018

`A153152(eq[3, A037888(n+1)])`
-/

namespace A050874.P12192085497827352018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050874.P12192085497827352018

namespace A050874

/-- `A153152(eq[3, A037888(n+1)])` -/
def P12192085497827352018.Spec : Prop :=
  ∀ n, P12192085497827352018.a n = A050874 (n + 1)

end A050874

/-! ## A050874.P8240786633048423348

`eq[A000120(n), A159780(n)+3]`
-/

namespace A050874.P8240786633048423348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050874.P8240786633048423348

namespace A050874

/-- `eq[A000120(n), A159780(n)+3]` -/
def P8240786633048423348.Spec : Prop :=
  ∀ n, (P8240786633048423348.a n : ℤ) = A050874 (n + 1)

end A050874

/-! ## A050874.P16824631346690753774

`eq[3, A037888(A000007(n)+n)]`
-/

namespace A050874.P16824631346690753774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050874.P16824631346690753774

namespace A050874

/-- `eq[3, A037888(A000007(n)+n)]` -/
def P16824631346690753774.Spec : Prop :=
  ∀ n, (P16824631346690753774.a n : ℤ) = A050874 (n + 1)

end A050874

/-! ## A050874.P10094197960615849852

`eq[1, A000120(A344220(n))-2]`
-/

namespace A050874.P10094197960615849852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A344220 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050874.P10094197960615849852

namespace A050874

/-- `eq[1, A000120(A344220(n))-2]` -/
def P10094197960615849852.Spec : Prop :=
  ∀ n, (P10094197960615849852.a n : ℤ) = A050874 (n + 1)

end A050874

/-! ## A050874.P6873372817023310212

`eq[6, A144078(n+1)]+1`
-/

namespace A050874.P6873372817023310212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050874.P6873372817023310212

namespace A050874

/-- `eq[6, A144078(n+1)]+1` -/
def P6873372817023310212.Spec : Prop :=
  ∀ n, (P6873372817023310212.a n : ℤ) = A050874 (n + 1)

end A050874

/-!
# A050875: Binary numbers d(1)...d(j) such that d(i) != d(j+1-i) for all but 6 values of i.

The programs for A050875, there is no canonical definition to state claims against.
-/

/-! ## A050875.P13585183959468011345

`eq[6, A274036(A175920(n))]`
-/

namespace A050875.P13585183959468011345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (A175920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050875.P13585183959468011345

/-! ## A050875.P12568345992198848513

`eq[1, A001316(A175920(n))/A040002(n)^3]`
-/

namespace A050875.P12568345992198848513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A175920 n).toNat : ℚ) / (A040002 n ^ 3 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A050875.P12568345992198848513

/-! ## A050875.P14545644946449166247

`eq[A040002(n)+2, A000120(A175920(n))]`
-/

namespace A050875.P14545644946449166247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050875.P14545644946449166247

/-! ## A050875.P15433074434141753691

`eq[n*A000120(A175920(n)), A008458(n)]`
-/

namespace A050875.P15433074434141753691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 (A175920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050875.P15433074434141753691

/-! ## A050875.P7577391342642653320

`eq[A020710(n)+1-n, A000120(A175920(n))]`
-/

namespace A050875.P7577391342642653320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n + (1 - (n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050875.P7577391342642653320

/-!
# A050876: Base 3 numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but 2 values of i.

The programs for A050876, there is no canonical definition to state claims against.
-/

/-! ## A050876.P14126415504319451605

`lt[1, A234538(A338828(n))]`
-/

namespace A050876.P14126415504319451605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 (A338828 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050876.P14126415504319451605

/-! ## A050876.P2455028816795542256

`eq[2, A234538(A338828(n+1))]+1`
-/

namespace A050876.P2455028816795542256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 (A338828 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050876.P2455028816795542256

/-! ## A050876.P14279520064688995233

`eq[2, A234538(A338828(2*n-n))]`
-/

namespace A050876.P14279520064688995233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 (A338828 (2 * n - n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050876.P14279520064688995233

/-! ## A050876.P11171397763336755185

`eq[Δ[A265560(n)], A185238(n)]`
-/

namespace A050876.P11171397763336755185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A050876.P11171397763336755185

/-! ## A050876.P14289869707790842327

`eq[char[A265511(n)], A185238(n)]`
-/

namespace A050876.P14289869707790842327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050876.P14289869707790842327

/-!
# A050877: Numbers k such that 237*2^k-1 is prime.

The programs for A050877, there is no canonical definition to state claims against.
-/

/-! ## A050877.P14140273226384102650

`A311119(n)+A016332(A050874(n+1))`
-/

namespace A050877.P14140273226384102650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311119 n + A016332 (A050874 (n + 1)).toNat

end

end A050877.P14140273226384102650

/-! ## A050877.P16741230832793815054

`A000961(n+1)+A333262(A161943(n+3))+1`
-/

namespace A050877.P16741230832793815054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) + (A333262 (A161943 (n + 3)).toNat + 1)

end

end A050877.P16741230832793815054

/-! ## A050877.P13606677547297414550

`A061071(A229325(n+1))+A016332(A050874(n+1))`
-/

namespace A050877.P13606677547297414550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A229325 (n + 1)).toNat + A016332 (A050874 (n + 1)).toNat

end

end A050877.P13606677547297414550

/-!
# A050880: Numbers n such that 243*2^n-1 is prime.

The programs for A050880, there is no canonical definition to state claims against.
-/

/-! ## A050880.P7220023134554323576

`eq[A092261(A331595(n+5)), A126168(n+1)]`
-/

namespace A050880.P7220023134554323576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (A331595 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050880.P7220023134554323576

/-!
# A050886: Numbers k such that 255*2^k-1 is prime.

The programs for A050886, there is no canonical definition to state claims against.
-/

/-! ## A050886.P251784006907017319

`eq[A231655(n), A353381(n+1)]`
-/

namespace A050886.P251784006907017319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050886.P251784006907017319

/-! ## A050886.P943311878246211339

`eq[A125029(n+1), A377091(A231655(n))]`
-/

namespace A050886.P943311878246211339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A231655 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050886.P943311878246211339

/-! ## A050886.P16380734090743912300

`eq[A124768(n), A284414(n)]`
-/

namespace A050886.P16380734090743912300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284414 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050886.P16380734090743912300

/-! ## A050886.P17139337103076967395

`record[A311379(n)%A091834(n)]`
-/

namespace A050886.P17139337103076967395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311379 n) (A091834 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050886.P17139337103076967395

/-! ## A050886.P17681151475596556404

`∑[abs(A342275(A152184(n+1)))]`
-/

namespace A050886.P17681151475596556404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A342275 (A152184 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050886.P17681151475596556404

/-!
# A050890: Numbers k such that 263*2^k-1 is prime.

The programs for A050890, there is no canonical definition to state claims against.
-/

/-! ## A050890.P2438721034244484327

`2*A324288(A363137(n))`
-/

namespace A050890.P2438721034244484327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324288 (A363137 n).toNat

end

end A050890.P2438721034244484327

/-!
# A050892: Numbers k such that 267*2^k-1 is prime.

The programs for A050892, there is no canonical definition to state claims against.
-/

/-! ## A050892.P10717406837595694265

`eq[A066339(n+1), A175062(n+1)]`
-/

namespace A050892.P10717406837595694265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050892.P10717406837595694265

/-!
# A050894: Numbers k such that 271*2^k-1 is prime.

The programs for A050894, there is no canonical definition to state claims against.
-/

/-! ## A050894.P3327690593308468800

`A051162(C(22, n))`
-/

namespace A050894.P3327690593308468800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (Nat.choose 22 n)

end

end A050894.P3327690593308468800

/-!
# A050895: Numbers k such that 273*2^k-1 is prime.

The programs for A050895, there is no canonical definition to state claims against.
-/

/-! ## A050895.P752395717320012118

`A133813(3*n+3)-A109009(A241574(n))`
-/

namespace A050895.P752395717320012118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (3 * n + 3) - A109009 (A241574 n).toNat

end

end A050895.P752395717320012118

/-! ## A050895.P8455124954755248266

`A133813(3*n+3)-A342890(A277042(n))`
-/

namespace A050895.P8455124954755248266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (3 * n + 3) - A342890 (A277042 n).toNat

end

end A050895.P8455124954755248266

/-! ## A050895.P7956211959202540518

`A133813(3*n+3)-A296772(A329430(n))`
-/

namespace A050895.P7956211959202540518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (3 * n + 3) - A296772 (A329430 n).toNat

end

end A050895.P7956211959202540518

/-! ## A050895.P14751765677004819025

`A133813(3*n+3)+A118830(A022007(n+1))`
-/

namespace A050895.P14751765677004819025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (3 * n + 3) + A118830 (A022007 (n + 1)).toNat

end

end A050895.P14751765677004819025

/-! ## A050895.P3612612149927129201

`A133813(3*n+3)-A001221(A037082(n+1))`
-/

namespace A050895.P3612612149927129201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (3 * n + 3) - A001221 (A037082 (n + 1)).toNat

end

end A050895.P3612612149927129201

/-!
# A050897: Numbers k such that 277*2^k-1 is prime.

The programs for A050897, there is no canonical definition to state claims against.
-/

/-! ## A050897.P1530871511610618262

`A166090(A362614(3*(n+1))+A340880(2*(n+1)))`
-/

namespace A050897.P1530871511610618262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166090 (A362614 (3 * (n + 1)) + A340880 (2 * (n + 1))).toNat

end

end A050897.P1530871511610618262

