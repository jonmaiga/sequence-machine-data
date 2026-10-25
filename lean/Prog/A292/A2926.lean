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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A292600: a(n) = A006068(floor(n/2)); A006068 with every term duplicated, where A006068 is the inverse of binary gray code.

The programs for A292600, the canonical program `A292600.P3914548694480041296` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292600 has offset 0).

The definition of A292600 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292600.P3914548694480041296

`A006068(floor(n/2))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A292600

/-- `A006068(floor(n/2))` -/
def P3914548694480041296.Spec : Prop :=
  ∀ n, P3914548694480041296.a n = A292600 n

theorem P3914548694480041296.correct : P3914548694480041296.Spec := by
  intro n
  simp only [A292600]

end A292600

/-! ## A292600.P1900672156745615370

`n-A292601(n)`
-/

namespace A292600.P1900672156745615370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292601 n

end

end A292600.P1900672156745615370

namespace A292600

/-- `n-A292601(n)` -/
def P1900672156745615370.Spec : Prop :=
  ∀ n, P1900672156745615370.a n = A292600 n

theorem P1900672156745615370.correct : P1900672156745615370.Spec := by
  intro n
  simp only [A292600, Nat.add_sub_cancel, A292600.P1900672156745615370.a, A292600.P3914548694480041296.a, A006068, A006068.P16534033749009019403.a, A292601, A292601.P906998299720976826.a, A010060, A010060.P3080921269106500717.a, A265263, A265263.P13560857298709796040.a, A377404, A377404.P15784403255783113757.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P17197319264784136366.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292600

/-! ## A292600.P14788876983843810450

`xor(n, A006068(n))`
-/

namespace A292600.P14788876983843810450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A006068 n)

end

end A292600.P14788876983843810450

namespace A292600

/-- `xor(n, A006068(n))` -/
def P14788876983843810450.Spec : Prop :=
  ∀ n, P14788876983843810450.a n = A292600 n

end A292600

/-! ## A292600.P2790962501491765687

`floor(A268716(n)/4)`
-/

namespace A292600.P2790962501491765687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268716 n : ℚ) / 4⌋

end

end A292600.P2790962501491765687

namespace A292600

/-- `floor(A268716(n)/4)` -/
def P2790962501491765687.Spec : Prop :=
  ∀ n, P2790962501491765687.a n = A292600 n

end A292600

/-! ## A292600.P10339551630018170806

`xor(n, A286546(n)+n)`
-/

namespace A292600.P10339551630018170806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A286546 n + (n : ℤ))

end

end A292600.P10339551630018170806

namespace A292600

/-- `xor(n, A286546(n)+n)` -/
def P10339551630018170806.Spec : Prop :=
  ∀ n, P10339551630018170806.a n = A292600 n

end A292600

/-! ## A292600.P15515902996680091327

`xor(n, A066194(n+1)-1)`
-/

namespace A292600.P15515902996680091327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A066194 (n + 1) - 1)

end

end A292600.P15515902996680091327

namespace A292600

/-- `xor(n, A066194(n+1)-1)` -/
def P15515902996680091327.Spec : Prop :=
  ∀ n, P15515902996680091327.a n = A292600 n

end A292600

/-! ## A292600.P17708939320100931585

`A268716(A004526(n))/2`
-/

namespace A292600.P17708939320100931585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 (A004526 n).toNat : ℚ) / 2

end

end A292600.P17708939320100931585

namespace A292600

/-- `A268716(A004526(n))/2` -/
def P17708939320100931585.Spec : Prop :=
  ∀ n, P17708939320100931585.a n = (A292600 n : ℚ)

theorem P17708939320100931585.correct : P17708939320100931585.Spec := by
  intro n
  simp only [A292600, Nat.add_sub_cancel, A292600.P17708939320100931585.a, A292600.P3914548694480041296.a, A004526, A004526.P10084182425416171735.a, A006068, A006068.P16534033749009019403.a, A268716, A268716.P9381113325776133009.a, A010060, A010060.P3080921269106500717.a, A265263, A265263.P13560857298709796040.a, A377404, A377404.P15784403255783113757.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P17197319264784136366.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292600

/-! ## A292600.P15763781662142858097

`n-A265263(A006257(n))`
-/

namespace A292600.P15763781662142858097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A265263 (A006257 n).toNat

end

end A292600.P15763781662142858097

namespace A292600

/-- `n-A265263(A006257(n))` -/
def P15763781662142858097.Spec : Prop :=
  ∀ n, P15763781662142858097.a n = A292600 n

end A292600

/-! ## A292600.P17948220291291797469

`xor(n, A003188(A064707(n)))`
-/

namespace A292600.P17948220291291797469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A003188 (A064707 n).toNat)

end

end A292600.P17948220291291797469

namespace A292600

/-- `xor(n, A003188(A064707(n)))` -/
def P17948220291291797469.Spec : Prop :=
  ∀ n, P17948220291291797469.a n = A292600 n

end A292600

/-! ## A292600.P1794106566370700097

`A233279(A063946(floor(n/2)))`
-/

namespace A292600.P1794106566370700097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A063946 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A292600.P1794106566370700097

namespace A292600

/-- `A233279(A063946(floor(n/2)))` -/
def P1794106566370700097.Spec : Prop :=
  ∀ n, P1794106566370700097.a n = A292600 n

end A292600

/-! ## A292600.P16902134219025249133

`A193231(floor(A193231(n)/2))`
-/

namespace A292600.P16902134219025249133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 ⌊(A193231 n : ℚ) / 2⌋.toNat

end

end A292600.P16902134219025249133

namespace A292600

/-- `A193231(floor(A193231(n)/2))` -/
def P16902134219025249133.Spec : Prop :=
  ∀ n, P16902134219025249133.a n = A292600 n

end A292600

/-! ## A292600.P16095271204003929320

`A234612(floor(A234612(n)/2))`
-/

namespace A292600.P16095271204003929320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 ⌊(A234612 n : ℚ) / 2⌋.toNat

end

end A292600.P16095271204003929320

namespace A292600

/-- `A234612(floor(A234612(n)/2))` -/
def P16095271204003929320.Spec : Prop :=
  ∀ n, P16095271204003929320.a n = A292600 n

end A292600

/-! ## A292600.P4988237976550372977

`abs(A104895(n)+A010060(n))`
-/

namespace A292600.P4988237976550372977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104895 n + A010060 n|

end

end A292600.P4988237976550372977

namespace A292600

/-- `abs(A104895(n)+A010060(n))` -/
def P4988237976550372977.Spec : Prop :=
  ∀ n, P4988237976550372977.a n = A292600 n

end A292600

/-! ## A292600.P74226560803360953

`A268716(A008619(n)-1)/2`
-/

namespace A292600.P74226560803360953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 (A008619 n - 1).toNat : ℚ) / 2

end

end A292600.P74226560803360953

namespace A292600

/-- `A268716(A008619(n)-1)/2` -/
def P74226560803360953.Spec : Prop :=
  ∀ n, P74226560803360953.a n = (A292600 n : ℚ)

theorem P74226560803360953.correct : P74226560803360953.Spec := by
  intro n
  simp only [A292600, Nat.add_sub_cancel, A292600.P74226560803360953.a, A292600.P3914548694480041296.a, A006068, A006068.P16534033749009019403.a, A008619, A008619.P16053834178911111118.a, A268716, A268716.P9381113325776133009.a, A010060, A010060.P3080921269106500717.a, A265263, A265263.P13560857298709796040.a, A377404, A377404.P15784403255783113757.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P17197319264784136366.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292600

/-! ## A292600.P17472124429487537633

`(A006068(n)-A010060(n))/2`
-/

namespace A292600.P17472124429487537633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006068 n - A010060 n : ℚ) / 2

end

end A292600.P17472124429487537633

namespace A292600

/-- `(A006068(n)-A010060(n))/2` -/
def P17472124429487537633.Spec : Prop :=
  ∀ n, P17472124429487537633.a n = (A292600 n : ℚ)

end A292600

/-! ## A292600.P15589882826744333212

`n-and(A006068(n), A006257(n))`
-/

namespace A292600.P15589882826744333212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A006068 n) (A006257 n)

end

end A292600.P15589882826744333212

namespace A292600

/-- `n-and(A006068(n), A006257(n))` -/
def P15589882826744333212.Spec : Prop :=
  ∀ n, P15589882826744333212.a n = A292600 n

end A292600

/-! ## A292600.P14065895688345378624

`n-and(A006068(n), A267872(n))`
-/

namespace A292600.P14065895688345378624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A006068 n) (A267872 n)

end

end A292600.P14065895688345378624

namespace A292600

/-- `n-and(A006068(n), A267872(n))` -/
def P14065895688345378624.Spec : Prop :=
  ∀ n, P14065895688345378624.a n = A292600 n

end A292600

/-! ## A292600.P11834689941747833690

`xor(n, xor(A005187(n), A283999(n)))`
-/

namespace A292600.P11834689941747833690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A005187 n) (A283999 n))

end

end A292600.P11834689941747833690

namespace A292600

/-- `xor(n, xor(A005187(n), A283999(n)))` -/
def P11834689941747833690.Spec : Prop :=
  ∀ n, P11834689941747833690.a n = A292600 n

end A292600

/-! ## A292600.P11471674577049639394

`n-and(A001969(n+1), A006068(n))`
-/

namespace A292600.P11471674577049639394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A001969 (n + 1)) (A006068 n)

end

end A292600.P11471674577049639394

namespace A292600

/-- `n-and(A001969(n+1), A006068(n))` -/
def P11471674577049639394.Spec : Prop :=
  ∀ n, P11471674577049639394.a n = A292600 n

end A292600

/-! ## A292600.P11144421100492483495

`n-and(A006068(n), A080565(n+1))`
-/

namespace A292600.P11144421100492483495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A006068 n) (A080565 (n + 1))

end

end A292600.P11144421100492483495

namespace A292600

/-- `n-and(A006068(n), A080565(n+1))` -/
def P11144421100492483495.Spec : Prop :=
  ∀ n, P11144421100492483495.a n = A292600 n

end A292600

/-!
# A292601: a(n) = n - A292600(n).

The programs for A292601, the canonical program `A292601.P906998299720976826` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292601 has offset 0).

The definition of A292601 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292600, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292601.P906998299720976826

`n-A292600(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A292601

/-- `n-A292600(n)` -/
def P906998299720976826.Spec : Prop :=
  ∀ n, P906998299720976826.a n = A292601 n

theorem P906998299720976826.correct : P906998299720976826.Spec := by
  intro n
  simp only [A292601]

end A292601

/-! ## A292601.P3751057029100047857

`n-A006068(floor(n/2))`
-/

namespace A292601.P3751057029100047857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006068 ⌊(n : ℚ) / 2⌋.toNat

end

end A292601.P3751057029100047857

namespace A292601

/-- `n-A006068(floor(n/2))` -/
def P3751057029100047857.Spec : Prop :=
  ∀ n, P3751057029100047857.a n = A292601 n

end A292601

/-! ## A292601.P5086399975878462673

`and(2*n+1, a(and(n, n-1))-(2*n+1))` with `a(0)=0`
-/

namespace A292601.P5086399975878462673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (2 * n + 1 : ℤ) (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - (2 * n + 1 : ℤ))

end

end A292601.P5086399975878462673

namespace A292601

/-- `and(2*n+1, a(and(n, n-1))-(2*n+1))` -/
def P5086399975878462673.Spec : Prop :=
  ∀ n, P5086399975878462673.a n = A292601 n

end A292601

/-! ## A292601.P14113075937635556

`n-xor(n, A006068(n))`
-/

namespace A292601.P14113075937635556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A006068 n)

end

end A292601.P14113075937635556

namespace A292601

/-- `n-xor(n, A006068(n))` -/
def P14113075937635556.Spec : Prop :=
  ∀ n, P14113075937635556.a n = A292601 n

end A292601

/-! ## A292601.P4164708305657655144

`ceil((n-A286546(n))/2)`
-/

namespace A292601.P4164708305657655144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A286546 n : ℚ) / 2⌉

end

end A292601.P4164708305657655144

namespace A292601

/-- `ceil((n-A286546(n))/2)` -/
def P4164708305657655144.Spec : Prop :=
  ∀ n, P4164708305657655144.a n = A292601 n

end A292601

/-! ## A292601.P17640008735963429924

`and(A268716(n)/2, comp[2*n])`
-/

namespace A292601.P17640008735963429924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A292601.P17640008735963429924

namespace A292601

/-- `and(A268716(n)/2, comp[2*n])` -/
def P17640008735963429924.Spec : Prop :=
  ∀ n, P17640008735963429924.a n = A292601 n

end A292601

/-! ## A292601.P8367036596543047201

`A265263(A006257(n))`
-/

namespace A292601.P8367036596543047201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 (A006257 n).toNat

end

end A292601.P8367036596543047201

namespace A292601

/-- `A265263(A006257(n))` -/
def P8367036596543047201.Spec : Prop :=
  ∀ n, P8367036596543047201.a n = A292601 n

end A292601

/-! ## A292601.P11090323418832073547

`and(A006068(n), A006257(n))`
-/

namespace A292601.P11090323418832073547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006068 n) (A006257 n)

end

end A292601.P11090323418832073547

namespace A292601

/-- `and(A006068(n), A006257(n))` -/
def P11090323418832073547.Spec : Prop :=
  ∀ n, P11090323418832073547.a n = A292601 n

end A292601

/-! ## A292601.P7342023175464891649

`and(A006068(n), A267872(n))`
-/

namespace A292601.P7342023175464891649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006068 n) (A267872 n)

end

end A292601.P7342023175464891649

namespace A292601

/-- `and(A006068(n), A267872(n))` -/
def P7342023175464891649.Spec : Prop :=
  ∀ n, P7342023175464891649.a n = A292601 n

end A292601

/-! ## A292601.P17155006625657474627

`A286548(1-A286546(n)+n)`
-/

namespace A292601.P17155006625657474627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (1 - A286546 n + (n : ℤ)).toNat

end

end A292601.P17155006625657474627

namespace A292601

/-- `A286548(1-A286546(n)+n)` -/
def P17155006625657474627.Spec : Prop :=
  ∀ n, P17155006625657474627.a n = A292601 n

end A292601

/-! ## A292601.P1937616372554620543

`A286548(1-(A286546(n)-n))`
-/

namespace A292601.P1937616372554620543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (1 - (A286546 n - (n : ℤ))).toNat

end

end A292601.P1937616372554620543

namespace A292601

/-- `A286548(1-(A286546(n)-n))` -/
def P1937616372554620543.Spec : Prop :=
  ∀ n, P1937616372554620543.a n = A292601 n

end A292601

/-! ## A292601.P10204212708340756912

`and(A001969(n+1), A006068(n))`
-/

namespace A292601.P10204212708340756912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001969 (n + 1)) (A006068 n)

end

end A292601.P10204212708340756912

namespace A292601

/-- `and(A001969(n+1), A006068(n))` -/
def P10204212708340756912.Spec : Prop :=
  ∀ n, P10204212708340756912.a n = A292601 n

end A292601

/-! ## A292601.P10242678556842159969

`and(A005843(n)+1, A006068(n))`
-/

namespace A292601.P10242678556842159969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005843 n + 1) (A006068 n)

end

end A292601.P10242678556842159969

namespace A292601

/-- `and(A005843(n)+1, A006068(n))` -/
def P10242678556842159969.Spec : Prop :=
  ∀ n, P10242678556842159969.a n = A292601 n

end A292601

/-! ## A292601.P17967596913933801263

`and(A006068(n), A080565(n+1))`
-/

namespace A292601.P17967596913933801263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006068 n) (A080565 (n + 1))

end

end A292601.P17967596913933801263

namespace A292601

/-- `and(A006068(n), A080565(n+1))` -/
def P17967596913933801263.Spec : Prop :=
  ∀ n, P17967596913933801263.a n = A292601 n

end A292601

/-! ## A292601.P5573582326108898584

`and(A006068(n), A346304(n+1))`
-/

namespace A292601.P5573582326108898584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006068 n) (A346304 (n + 1))

end

end A292601.P5573582326108898584

namespace A292601

/-- `and(A006068(n), A346304(n+1))` -/
def P5573582326108898584.Spec : Prop :=
  ∀ n, P5573582326108898584.a n = A292601 n

end A292601

/-! ## A292601.P15443054909829045194

`A286548(2*n+1-A006068(n))`
-/

namespace A292601.P15443054909829045194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 ((2 * n + 1 : ℤ) - A006068 n).toNat

end

end A292601.P15443054909829045194

namespace A292601

/-- `A286548(2*n+1-A006068(n))` -/
def P15443054909829045194.Spec : Prop :=
  ∀ n, P15443054909829045194.a n = A292601 n

end A292601

/-! ## A292601.P4247131199409623086

`A286548(A286548(A006068(n))+n+1)`
-/

namespace A292601.P4247131199409623086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (A286548 (A006068 n).toNat + (n + 1 : ℤ)).toNat

end

end A292601.P4247131199409623086

namespace A292601

/-- `A286548(A286548(A006068(n))+n+1)` -/
def P4247131199409623086.Spec : Prop :=
  ∀ n, P4247131199409623086.a n = A292601 n

end A292601

/-! ## A292601.P8462504867042589348

`A001969(n+1)-2*A265263(n)`
-/

namespace A292601.P8462504867042589348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) - 2 * A265263 n

end

end A292601.P8462504867042589348

namespace A292601

/-- `A001969(n+1)-2*A265263(n)` -/
def P8462504867042589348.Spec : Prop :=
  ∀ n, P8462504867042589348.a n = A292601 n

end A292601

/-! ## A292601.P5467043462758223338

`A265263(n)+A265263(n)-A006068(n)`
-/

namespace A292601.P5467043462758223338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 n + (A265263 n - A006068 n)

end

end A292601.P5467043462758223338

namespace A292601

/-- `A265263(n)+A265263(n)-A006068(n)` -/
def P5467043462758223338.Spec : Prop :=
  ∀ n, P5467043462758223338.a n = A292601 n

end A292601

/-!
# A292602: a(n) = floor(A005940(1+n)/4).

The programs for A292602, the canonical program `A292602.P11848715388523311559` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292602 has offset 0).

The definition of A292602 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292602.P11848715388523311559

`floor(A005940(1+n)/4)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A292602

/-- `floor(A005940(1+n)/4)` -/
def P11848715388523311559.Spec : Prop :=
  ∀ n, P11848715388523311559.a n = A292602 n

theorem P11848715388523311559.correct : P11848715388523311559.Spec := by
  intro n
  simp only [A292602]

end A292602

/-! ## A292602.P3120243931448560551

`A002265(A005940(1+n))`
-/

namespace A292602.P3120243931448560551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005940 (1 + n)).toNat

end

end A292602.P3120243931448560551

namespace A292602

/-- `A002265(A005940(1+n))` -/
def P3120243931448560551.Spec : Prop :=
  ∀ n, P3120243931448560551.a n = A292602 n

end A292602

/-! ## A292602.P2542546457574228079

`ceil((A005940(n+1)-3)/4)`
-/

namespace A292602.P2542546457574228079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005940 (n + 1) - 3 : ℚ) / 4⌉

end

end A292602.P2542546457574228079

namespace A292602

/-- `ceil((A005940(n+1)-3)/4)` -/
def P2542546457574228079.Spec : Prop :=
  ∀ n, P2542546457574228079.a n = A292602 n

end A292602

/-! ## A292602.P6293190611186030485

`(A005940(n+1)-A292603(n))/4`
-/

namespace A292602.P6293190611186030485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) - A292603 n : ℚ) / 4

end

end A292602.P6293190611186030485

namespace A292602

/-- `(A005940(n+1)-A292603(n))/4` -/
def P6293190611186030485.Spec : Prop :=
  ∀ n, P6293190611186030485.a n = (A292602 n : ℚ)

end A292602

/-! ## A292602.P1873559418037645649

`floor((A324641(n+1)-A324640(n+1))/4)`
-/

namespace A292602.P1873559418037645649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324641 (n + 1) - A324640 (n + 1) : ℚ) / 4⌋

end

end A292602.P1873559418037645649

namespace A292602

/-- `floor((A324641(n+1)-A324640(n+1))/4)` -/
def P1873559418037645649.Spec : Prop :=
  ∀ n, P1873559418037645649.a n = A292602 n

end A292602

/-! ## A292602.P15901830299421264820

`floor(A340364(n+1)/4*A340365(n+1))`
-/

namespace A292602.P15901830299421264820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A340364 (n + 1) : ℚ) / 4 * (A340365 (n + 1) : ℚ)⌋

end

end A292602.P15901830299421264820

namespace A292602

/-- `floor(A340364(n+1)/4*A340365(n+1))` -/
def P15901830299421264820.Spec : Prop :=
  ∀ n, P15901830299421264820.a n = A292602 n

end A292602

/-! ## A292602.P13845456119450914126

`floor(A243353(A006068(n))/4)`
-/

namespace A292602.P13845456119450914126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243353 (A006068 n).toNat : ℚ) / 4⌋

end

end A292602.P13845456119450914126

namespace A292602

/-- `floor(A243353(A006068(n))/4)` -/
def P13845456119450914126.Spec : Prop :=
  ∀ n, P13845456119450914126.a n = A292602 n

end A292602

/-! ## A292602.P7043041252205688515

`floor(A250246(A252753(n))/4)`
-/

namespace A292602.P7043041252205688515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A250246 (A252753 n).toNat : ℚ) / 4⌋

end

end A292602.P7043041252205688515

namespace A292602

/-- `floor(A250246(A252753(n))/4)` -/
def P7043041252205688515.Spec : Prop :=
  ∀ n, P7043041252205688515.a n = A292602 n

end A292602

/-! ## A292602.P2381392958991824035

`floor(A332808(A332815(n))/4)`
-/

namespace A292602.P2381392958991824035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332808 (A332815 n).toNat : ℚ) / 4⌋

end

end A292602.P2381392958991824035

namespace A292602

/-- `floor(A332808(A332815(n))/4)` -/
def P2381392958991824035.Spec : Prop :=
  ∀ n, P2381392958991824035.a n = A292602 n

end A292602

/-! ## A292602.P7295952042381218496

`A110657(or(1, or(2, A005940(n+1))))`
-/

namespace A292602.P7295952042381218496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.lor 1 (Int.lor 2 (A005940 (n + 1)))).toNat

end

end A292602.P7295952042381218496

namespace A292602

/-- `A110657(or(1, or(2, A005940(n+1))))` -/
def P7295952042381218496.Spec : Prop :=
  ∀ n, P7295952042381218496.a n = A292602 n

end A292602

/-! ## A292602.P5593345187054159468

`A005940(n+1)-A057353(A005940(n+1)+1)`
-/

namespace A292602.P5593345187054159468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) - A057353 (A005940 (n + 1) + 1).toNat

end

end A292602.P5593345187054159468

namespace A292602

/-- `A005940(n+1)-A057353(A005940(n+1)+1)` -/
def P5593345187054159468.Spec : Prop :=
  ∀ n, P5593345187054159468.a n = A292602 n

end A292602

/-! ## A292602.P7732882136564708403

`floor(A064216(A244154(n))/4)`
-/

namespace A292602.P7732882136564708403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064216 (A244154 n).toNat : ℚ) / 4⌋

end

end A292602.P7732882136564708403

namespace A292602

/-- `floor(A064216(A244154(n))/4)` -/
def P7732882136564708403.Spec : Prop :=
  ∀ n, P7732882136564708403.a n = A292602 n

end A292602

/-!
# A292603: Doudna-tree reduced modulo 4: a(n) = A005940(1+n) mod 4.

The programs for A292603, the canonical program `A292603.P8169406784297346491` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292603 has offset 0).

The definition of A292603 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292603.P8169406784297346491

`A010873(A005940(1+n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A292603

/-- `A010873(A005940(1+n))` -/
def P8169406784297346491.Spec : Prop :=
  ∀ n, P8169406784297346491.a n = A292603 n

theorem P8169406784297346491.correct : P8169406784297346491.Spec := by
  intro n
  simp only [A292603]

end A292603

/-! ## A292603.P10247454339432625162

`A005940(n+1)%4`
-/

namespace A292603.P10247454339432625162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005940 (n + 1)) 4

end

end A292603.P10247454339432625162

namespace A292603

/-- `A005940(n+1)%4` -/
def P10247454339432625162.Spec : Prop :=
  ∀ n, P10247454339432625162.a n = A292603 n

end A292603

/-! ## A292603.P11535464183641285729

`and(3, A005940(A000027(n+1)))`
-/

namespace A292603.P11535464183641285729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A005940 (A000027 (n + 1)).toNat)

end

end A292603.P11535464183641285729

namespace A292603

/-- `and(3, A005940(A000027(n+1)))` -/
def P11535464183641285729.Spec : Prop :=
  ∀ n, P11535464183641285729.a n = A292603 n

end A292603

/-! ## A292603.P12208207829409577228

`(A324394(n)*A324395(n))%4`
-/

namespace A292603.P12208207829409577228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324394 n * A324395 n) 4

end

end A292603.P12208207829409577228

namespace A292603

/-- `(A324394(n)*A324395(n))%4` -/
def P12208207829409577228.Spec : Prop :=
  ∀ n, P12208207829409577228.a n = A292603 n

end A292603

/-! ## A292603.P7105635743662303014

`and(A005940(n+1), A122553(n))`
-/

namespace A292603.P7105635743662303014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005940 (n + 1)) (A122553 n)

end

end A292603.P7105635743662303014

namespace A292603

/-- `and(A005940(n+1), A122553(n))` -/
def P7105635743662303014.Spec : Prop :=
  ∀ n, P7105635743662303014.a n = A292603 n

end A292603

/-! ## A292603.P4739923584911079594

`and(A005940(n+1), A158799(n))`
-/

namespace A292603.P4739923584911079594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005940 (n + 1)) (A158799 n)

end

end A292603.P4739923584911079594

namespace A292603

/-- `and(A005940(n+1), A158799(n))` -/
def P4739923584911079594.Spec : Prop :=
  ∀ n, P4739923584911079594.a n = A292603 n

end A292603

/-! ## A292603.P6715478404088405481

`and(A005940(n+1), A176059(n))`
-/

namespace A292603.P6715478404088405481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005940 (n + 1)) (A176059 n)

end

end A292603.P6715478404088405481

namespace A292603

/-- `and(A005940(n+1), A176059(n))` -/
def P6715478404088405481.Spec : Prop :=
  ∀ n, P6715478404088405481.a n = A292603 n

end A292603

/-! ## A292603.P4226566698774217042

`and(A020639(3*(n+1)), A005940(n+1))`
-/

namespace A292603.P4226566698774217042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (3 * (n + 1))) (A005940 (n + 1))

end

end A292603.P4226566698774217042

namespace A292603

/-- `and(A020639(3*(n+1)), A005940(n+1))` -/
def P4226566698774217042.Spec : Prop :=
  ∀ n, P4226566698774217042.a n = A292603 n

end A292603

/-! ## A292603.P3834643623419510058

`and(A005940(n+1), A324467(A048896(n)))`
-/

namespace A292603.P3834643623419510058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005940 (n + 1)) (A324467 (A048896 n).toNat)

end

end A292603.P3834643623419510058

namespace A292603

/-- `and(A005940(n+1), A324467(A048896(n)))` -/
def P3834643623419510058.Spec : Prop :=
  ∀ n, P3834643623419510058.a n = A292603 n

end A292603

/-! ## A292603.P1761680584878685725

`and(A001316(A001316(n))+1, A005940(n+1))`
-/

namespace A292603.P1761680584878685725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001316 (A001316 n).toNat + 1) (A005940 (n + 1))

end

end A292603.P1761680584878685725

namespace A292603

/-- `and(A001316(A001316(n))+1, A005940(n+1))` -/
def P1761680584878685725.Spec : Prop :=
  ∀ n, P1761680584878685725.a n = A292603 n

end A292603

/-! ## A292603.P5989928600511257099

`and(A005940(n+1), A010693(n+1))`
-/

namespace A292603.P5989928600511257099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005940 (n + 1)) (A010693 (n + 1))

end

end A292603.P5989928600511257099

namespace A292603

/-- `and(A005940(n+1), A010693(n+1))` -/
def P5989928600511257099.Spec : Prop :=
  ∀ n, P5989928600511257099.a n = A292603 n

end A292603

/-! ## A292603.P11910551947893380079

`A243353(A006068(n))%4`
-/

namespace A292603.P11910551947893380079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243353 (A006068 n).toNat) 4

end

end A292603.P11910551947893380079

namespace A292603

/-- `A243353(A006068(n))%4` -/
def P11910551947893380079.Spec : Prop :=
  ∀ n, P11910551947893380079.a n = A292603 n

end A292603

/-! ## A292603.P10207484818754824536

`and(A005940(n+1), A324467(A001316(n)))`
-/

namespace A292603.P10207484818754824536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005940 (n + 1)) (A324467 (A001316 n).toNat)

end

end A292603.P10207484818754824536

namespace A292603

/-- `and(A005940(n+1), A324467(A001316(n)))` -/
def P10207484818754824536.Spec : Prop :=
  ∀ n, P10207484818754824536.a n = A292603 n

end A292603

/-! ## A292603.P1207360986961266656

`and(A006530(A071044(2*n+3)), A005940(n+1))`
-/

namespace A292603.P1207360986961266656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A071044 (2 * n + 3)).toNat) (A005940 (n + 1))

end

end A292603.P1207360986961266656

namespace A292603

/-- `and(A006530(A071044(2*n+3)), A005940(n+1))` -/
def P1207360986961266656.Spec : Prop :=
  ∀ n, P1207360986961266656.a n = A292603 n

end A292603

/-! ## A292603.P48253805023534979

`and(A005940(n+1), A324467(A071044(2*(n+2))))`
-/

namespace A292603.P48253805023534979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005940 (n + 1)) (A324467 (A071044 (2 * (n + 2))).toNat)

end

end A292603.P48253805023534979

namespace A292603

/-- `and(A005940(n+1), A324467(A071044(2*(n+2))))` -/
def P48253805023534979.Spec : Prop :=
  ∀ n, P48253805023534979.a n = A292603 n

end A292603

/-! ## A292603.P7773200352607110889

`A292602(3*(n+1)+n)%4`
-/

namespace A292603.P7773200352607110889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292602 (3 * (n + 1) + n)) 4

end

end A292603.P7773200352607110889

namespace A292603

/-- `A292602(3*(n+1)+n)%4` -/
def P7773200352607110889.Spec : Prop :=
  ∀ n, P7773200352607110889.a n = A292603 n

end A292603

/-! ## A292603.P8424245239994822474

`(A337375(2*n)*A337377(2*n))%4`
-/

namespace A292603.P8424245239994822474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337375 (2 * n) * A337377 (2 * n)) 4

end

end A292603.P8424245239994822474

namespace A292603

/-- `(A337375(2*n)*A337377(2*n))%4` -/
def P8424245239994822474.Spec : Prop :=
  ∀ n, P8424245239994822474.a n = A292603 n

end A292603

/-! ## A292603.P6088753522608598166

`and(A005940(n+1), A324467(A062383(n)))`
-/

namespace A292603.P6088753522608598166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005940 (n + 1)) (A324467 (A062383 n).toNat)

end

end A292603.P6088753522608598166

namespace A292603

/-- `and(A005940(n+1), A324467(A062383(n)))` -/
def P6088753522608598166.Spec : Prop :=
  ∀ n, P6088753522608598166.a n = A292603 n

end A292603

/-! ## A292603.P5996176258113339150

`and(A005940(n+1), A179103(A053752(n+1)))`
-/

namespace A292603.P5996176258113339150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005940 (n + 1)) (A179103 (A053752 (n + 1)).toNat)

end

end A292603.P5996176258113339150

namespace A292603

/-- `and(A005940(n+1), A179103(A053752(n+1)))` -/
def P5996176258113339150.Spec : Prop :=
  ∀ n, P5996176258113339150.a n = A292603 n

end A292603

/-! ## A292603.P15317328108242202780

`A336124(A253563(n))`
-/

namespace A292603.P15317328108242202780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336124 (A253563 n).toNat

end

end A292603.P15317328108242202780

namespace A292603

/-- `A336124(A253563(n))` -/
def P15317328108242202780.Spec : Prop :=
  ∀ n, P15317328108242202780.a n = A292603 n

end A292603

/-!
# A292604: Triangle read by rows, coefficients of generalized Eulerian polynomials F_{2}(x).

The programs for A292604, there is no canonical definition to state claims against.
-/

/-! ## A292604.P14861552435268163259

`A324609(n^A293960(n+1))`
-/

namespace A292604.P14861552435268163259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324609 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A293960 (n + 1) : ℤ))).toNat

end

end A292604.P14861552435268163259

/-! ## A292604.P10438754732990244176

`A324609(and(n, A324638(n+1)))`
-/

namespace A292604.P10438754732990244176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324609 (Int.land (n : ℤ) (A324638 (n + 1))).toNat

end

end A292604.P10438754732990244176

/-! ## A292604.P1191734523907251377

`A324609(n*A292605(A089688(n)))`
-/

namespace A292604.P1191734523907251377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324609 ((n : ℤ) * A292605 (A089688 n).toNat).toNat

end

end A292604.P1191734523907251377

/-! ## A292604.P13922444551060912942

`A324609(n*A238129(A322221(n)))`
-/

namespace A292604.P13922444551060912942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324609 ((n : ℤ) * A238129 (A322221 n).toNat).toNat

end

end A292604.P13922444551060912942

/-! ## A292604.P13969046658606197629

`A324609(n)^A099557(A125053(n))`
-/

namespace A292604.P13969046658606197629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324609 n : ℚ) ^ (A099557 (A125053 n).toNat : ℤ)

end

end A292604.P13969046658606197629

/-!
# A292605: Triangle read by rows, coefficients of generalized Eulerian polynomials F_{3;n}(x).

The programs for A292605, there is no canonical definition to state claims against.
-/

/-! ## A292605.P15396847698505216638

`A217830(A228832(n+1))*A290460(n)`
-/

namespace A292605.P15396847698505216638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217830 (A228832 (n + 1)).toNat * A290460 n

end

end A292605.P15396847698505216638

/-!
# A292607: Alternating rows sums of A292606.

The programs for A292607, there is no canonical definition to state claims against.
-/

/-! ## A292607.P5676692341573554804

`A008775(n)/2^n`
-/

namespace A292607.P5676692341573554804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008775 n : ℚ) / (2 ^ n : ℚ)

end

end A292607.P5676692341573554804

/-! ## A292607.P11469338161702548361

`floor(A008775(n)/A000079(n))`
-/

namespace A292607.P11469338161702548361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008775 n : ℚ) / (A000079 n : ℚ)⌋

end

end A292607.P11469338161702548361

/-! ## A292607.P7904723730224523745

`A008775(n)/A000079(n)*A262681(n)`
-/

namespace A292607.P7904723730224523745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008775 n : ℚ) / (A000079 n : ℚ) * (A262681 n : ℚ)

end

end A292607.P7904723730224523745

/-! ## A292607.P14357039142476390613

`A008775(n)/A000079(n)*A007318(C(n, 2))`
-/

namespace A292607.P14357039142476390613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008775 n : ℚ) / (A000079 n : ℚ) * (A007318 (Nat.choose n 2) : ℚ)

end

end A292607.P14357039142476390613

/-! ## A292607.P10497646262804581520

`A008683(4*(n+3))+A008775(n)/A000079(n)`
-/

namespace A292607.P10497646262804581520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (4 * (n + 3)) : ℚ) + (A008775 n : ℚ) / (A000079 n : ℚ)

end

end A292607.P10497646262804581520

/-!
# A292608: a(n) = 2*n + 1 + valuation(n, 2) with valuation(n, 2) = A007814(n).

The programs for A292608, the canonical program `A292608.P4409918495392709001` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292608 has offset 1).

The definition of A292608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)+1+val(n+1, 2)` (program `A292608.P4409918495392709001`, by `A292608.P4409918495392709001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292608.P4409918495392709001

`2*(n+1)+1+val(n+1, 2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292608

/-- `2*(n+1)+1+val(n+1, 2)` -/
def P4409918495392709001.Spec : Prop :=
  ∀ n, (P4409918495392709001.a n : ℤ) = A292608 (n + 1)

theorem P4409918495392709001.correct : P4409918495392709001.Spec := by
  intro n
  simp only [A292608, Nat.add_sub_cancel]

end A292608

/-! ## A292608.P7563246955024195491

`2*n+val(n+1, 2)+3`
-/

namespace A292608.P7563246955024195491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (SequenceMachineLib.valuation (n + 1) 2 + 3)

end

end A292608.P7563246955024195491

namespace A292608

/-- `2*n+val(n+1, 2)+3` -/
def P7563246955024195491.Spec : Prop :=
  ∀ n, (P7563246955024195491.a n : ℤ) = A292608 (n + 1)

theorem P7563246955024195491.correct : P7563246955024195491.Spec := by
  intro n
  simp only [A292608, Nat.add_sub_cancel, A292608.P7563246955024195491.a, A292608.P4409918495392709001.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A292608

/-! ## A292608.P6951421683732045374

`val(n+1, 2)+3+n+n`
-/

namespace A292608.P6951421683732045374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 3 + (n + n)

end

end A292608.P6951421683732045374

namespace A292608

/-- `val(n+1, 2)+3+n+n` -/
def P6951421683732045374.Spec : Prop :=
  ∀ n, (P6951421683732045374.a n : ℤ) = A292608 (n + 1)

theorem P6951421683732045374.correct : P6951421683732045374.Spec := by
  intro n
  simp only [A292608, Nat.add_sub_cancel, A292608.P6951421683732045374.a, A292608.P4409918495392709001.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A292608

/-! ## A292608.P6826755800393707932

`floor(log2(xor(n, n+1)))+2*n+3`
-/

namespace A292608.P6826755800393707932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 1)) + (2 * n + 3)

end

end A292608.P6826755800393707932

namespace A292608

/-- `floor(log2(xor(n, n+1)))+2*n+3` -/
def P6826755800393707932.Spec : Prop :=
  ∀ n, (P6826755800393707932.a n : ℤ) = A292608 (n + 1)

end A292608

/-! ## A292608.P1860748609445236963

`log2(xor(n, n+1)+1)+2*(n+1)`
-/

namespace A292608.P1860748609445236963
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ) + (2 * (n + 1) : ℝ)

end

end A292608.P1860748609445236963

namespace A292608

/-- `log2(xor(n, n+1)+1)+2*(n+1)` -/
def P1860748609445236963.Spec : Prop :=
  ∀ n, P1860748609445236963.a n = (A292608 (n + 1) : ℝ)

end A292608

/-! ## A292608.P5778819932079997873

`2*n+log2(and(n+1, -(n+1)))+3`
-/

namespace A292608.P5778819932079997873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) + (Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 3)

end

end A292608.P5778819932079997873

namespace A292608

/-- `2*n+log2(and(n+1, -(n+1)))+3` -/
def P5778819932079997873.Spec : Prop :=
  ∀ n, P5778819932079997873.a n = (A292608 (n + 1) : ℝ)

end A292608

/-! ## A292608.P8196428584634709197

`A085058(n)+Δ[n²]`
-/

namespace A292608.P8196428584634709197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A292608.P8196428584634709197

namespace A292608

/-- `A085058(n)+Δ[n²]` -/
def P8196428584634709197.Spec : Prop :=
  ∀ n, P8196428584634709197.a n = A292608 (n + 1)

end A292608

/-! ## A292608.P12266222644495024955

`A090739(n+1)+2*n`
-/

namespace A292608.P12266222644495024955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090739 (n + 1) + (2 * n : ℤ)

end

end A292608.P12266222644495024955

namespace A292608

/-- `A090739(n+1)+2*n` -/
def P12266222644495024955.Spec : Prop :=
  ∀ n, P12266222644495024955.a n = A292608 (n + 1)

end A292608

/-! ## A292608.P12917097339254780080

`Δ[A011371(n)+(n+1)²]`
-/

namespace A292608.P12917097339254780080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292608.P12917097339254780080

namespace A292608

/-- `Δ[A011371(n)+(n+1)²]` -/
def P12917097339254780080.Spec : Prop :=
  ∀ n, P12917097339254780080.a n = A292608 (n + 1)

end A292608

/-! ## A292608.P3080624406218263075

`A001511(n+1)+2*(n+1)`
-/

namespace A292608.P3080624406218263075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (2 * (n + 1) : ℤ)

end

end A292608.P3080624406218263075

namespace A292608

/-- `A001511(n+1)+2*(n+1)` -/
def P3080624406218263075.Spec : Prop :=
  ∀ n, P3080624406218263075.a n = A292608 (n + 1)

end A292608

/-! ## A292608.P15300107500050424154

`A089080(n+2)+2*n+1`
-/

namespace A292608.P15300107500050424154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 2) + (2 * n + 1 : ℤ)

end

end A292608.P15300107500050424154

namespace A292608

/-- `A089080(n+2)+2*n+1` -/
def P15300107500050424154.Spec : Prop :=
  ∀ n, P15300107500050424154.a n = A292608 (n + 1)

end A292608

/-! ## A292608.P429210442444317368

`A007814(n+1)+2*n+3`
-/

namespace A292608.P429210442444317368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (2 * n + 3 : ℤ)

end

end A292608.P429210442444317368

namespace A292608

/-- `A007814(n+1)+2*n+3` -/
def P429210442444317368.Spec : Prop :=
  ∀ n, P429210442444317368.a n = A292608 (n + 1)

end A292608

/-! ## A292608.P16078680869408583229

`A339597(n)+A228367(n+1)`
-/

namespace A292608.P16078680869408583229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 n + A228367 (n + 1)

end

end A292608.P16078680869408583229

namespace A292608

/-- `A339597(n)+A228367(n+1)` -/
def P16078680869408583229.Spec : Prop :=
  ∀ n, P16078680869408583229.a n = A292608 (n + 1)

end A292608

/-! ## A292608.P8054172713210037449

`A004767(n)-A101921(n+1)`
-/

namespace A292608.P8054172713210037449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A101921 (n + 1)

end

end A292608.P8054172713210037449

namespace A292608

/-- `A004767(n)-A101921(n+1)` -/
def P8054172713210037449.Spec : Prop :=
  ∀ n, P8054172713210037449.a n = A292608 (n + 1)

theorem P8054172713210037449.correct : P8054172713210037449.Spec := by
  intro n
  simp only [A292608, Nat.add_sub_cancel, A292608.P8054172713210037449.a, A292608.P4409918495392709001.a, A004767, A004767.P13352534504447192883.a, A101921, A101921.P8752601720569857390.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292608

/-! ## A292608.P2434110755119154196

`A120738(n+1)-A005187(n)`
-/

namespace A292608.P2434110755119154196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 (n + 1) - A005187 n

end

end A292608.P2434110755119154196

namespace A292608

/-- `A120738(n+1)-A005187(n)` -/
def P2434110755119154196.Spec : Prop :=
  ∀ n, P2434110755119154196.a n = A292608 (n + 1)

end A292608

/-! ## A292608.P6536261561622095287

`A004277(n+1)+A001511(n+1)`
-/

namespace A292608.P6536261561622095287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + A001511 (n + 1)

end

end A292608.P6536261561622095287

namespace A292608

/-- `A004277(n+1)+A001511(n+1)` -/
def P6536261561622095287.Spec : Prop :=
  ∀ n, P6536261561622095287.a n = A292608 (n + 1)

end A292608

/-! ## A292608.P2687974863452151718

`A084432(n+1)+A000265(n+1)`
-/

namespace A292608.P2687974863452151718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084432 (n + 1) + A000265 (n + 1)

end

end A292608.P2687974863452151718

namespace A292608

/-- `A084432(n+1)+A000265(n+1)` -/
def P2687974863452151718.Spec : Prop :=
  ∀ n, P2687974863452151718.a n = A292608 (n + 1)

end A292608

/-! ## A292608.P4279573374731868872

`A090740(n+1)+A042964(n+1)`
-/

namespace A292608.P4279573374731868872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (n + 1) + A042964 (n + 1)

end

end A292608.P4279573374731868872

namespace A292608

/-- `A090740(n+1)+A042964(n+1)` -/
def P4279573374731868872.Spec : Prop :=
  ∀ n, P4279573374731868872.a n = A292608 (n + 1)

end A292608

/-! ## A292608.P9998391754249569336

`A144396(n+1)+A007814(n+1)`
-/

namespace A292608.P9998391754249569336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) + A007814 (n + 1)

end

end A292608.P9998391754249569336

namespace A292608

/-- `A144396(n+1)+A007814(n+1)` -/
def P9998391754249569336.Spec : Prop :=
  ∀ n, P9998391754249569336.a n = A292608 (n + 1)

end A292608

/-!
# A292610: Take 3 triangle numbers, skip 1 triangle number, take 4 triangle numbers, skip 2 triangle numbers, take 5 triangle numbers, skip 3 triangle numbers, ...

The programs for A292610, the canonical program `A292610.P6314579995917335039` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292610 has offset 1).

The definition of A292610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292610.P6314579995917335039

`A000217(record[A056926(n+1)+n])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A292610

/-- `A000217(record[A056926(n+1)+n])` -/
def P6314579995917335039.Spec : Prop :=
  ∀ n, P6314579995917335039.a n = A292610 (n + 1)

theorem P6314579995917335039.correct : P6314579995917335039.Spec := by
  intro n
  simp only [A292610, Nat.add_sub_cancel]

end A292610

/-! ## A292610.P16197027126386879758

`A000217(A063656(n+3)-A002024(n+4))`
-/

namespace A292610.P16197027126386879758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A063656 (n + 3) - A002024 (n + 4)).toNat

end

end A292610.P16197027126386879758

namespace A292610

/-- `A000217(A063656(n+3)-A002024(n+4))` -/
def P16197027126386879758.Spec : Prop :=
  ∀ n, P16197027126386879758.a n = A292610 (n + 1)

end A292610

/-! ## A292610.P16745462849555367126

`A000217(A003056(n+3)²-A004736(n+4))`
-/

namespace A292610.P16745462849555367126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003056 (n + 3) ^ 2 - A004736 (n + 4)).toNat

end

end A292610.P16745462849555367126

namespace A292610

/-- `A000217(A003056(n+3)²-A004736(n+4))` -/
def P16745462849555367126.Spec : Prop :=
  ∀ n, P16745462849555367126.a n = A292610 (n + 1)

end A292610

/-! ## A292610.P15264426373357342507

`A002378(record[A056926(n+1)+n])/2`
-/

namespace A292610.P15264426373357342507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (n + 1) + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A292610.P15264426373357342507

namespace A292610

/-- `A002378(record[A056926(n+1)+n])/2` -/
def P15264426373357342507.Spec : Prop :=
  ∀ n, P15264426373357342507.a n = (A292610 (n + 1) : ℚ)

end A292610

/-! ## A292610.P13274358916203523382

`A000217(record[A233583(n+1)-A349520(n+1)])`
-/

namespace A292610.P13274358916203523382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A349520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A292610.P13274358916203523382

namespace A292610

/-- `A000217(record[A233583(n+1)-A349520(n+1)])` -/
def P13274358916203523382.Spec : Prop :=
  ∀ n, P13274358916203523382.a n = A292610 (n + 1)

end A292610

/-! ## A292610.P10262416753139284281

`A000217(∑[∏{e}[A130123(n+2), #]])`
-/

namespace A292610.P10262416753139284281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292610.P10262416753139284281

namespace A292610

/-- `A000217(∑[∏{e}[A130123(n+2), #]])` -/
def P10262416753139284281.Spec : Prop :=
  ∀ n, P10262416753139284281.a n = A292610 (n + 1)

end A292610

/-!
# A292611: Skip 3 triangle numbers, take 1 triangle number, skip 4 triangle numbers, take 2 triangle numbers, skip 5 triangle numbers, take 3 triangle numbers, ...

The programs for A292611, the canonical program `A292611.P2392908135108116771` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292611 has offset 1).

The definition of A292611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292611.P2392908135108116771

`C(A189151(n+1), 2)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A292611

/-- `C(A189151(n+1), 2)` -/
def P2392908135108116771.Spec : Prop :=
  ∀ n, (P2392908135108116771.a n : ℤ) = A292611 (n + 1)

theorem P2392908135108116771.correct : P2392908135108116771.Spec := by
  intro n
  simp only [A292611, Nat.add_sub_cancel]

end A292611

/-! ## A292611.P5965872909959630023

`A000217(A189151(n+1)-1)`
-/

namespace A292611.P5965872909959630023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A189151 (n + 1) - 1).toNat

end

end A292611.P5965872909959630023

namespace A292611

/-- `A000217(A189151(n+1)-1)` -/
def P5965872909959630023.Spec : Prop :=
  ∀ n, P5965872909959630023.a n = A292611 (n + 1)

end A292611

/-! ## A292611.P12734534719271292415

`C(A063657(n+1)+A003057(n+2), 2)`
-/

namespace A292611.P12734534719271292415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A063657 (n + 1) + A003057 (n + 2)).toNat 2

end

end A292611.P12734534719271292415

namespace A292611

/-- `C(A063657(n+1)+A003057(n+2), 2)` -/
def P12734534719271292415.Spec : Prop :=
  ∀ n, (P12734534719271292415.a n : ℤ) = A292611 (n + 1)

end A292611

/-! ## A292611.P5242241932953525153

`C(A002260(n+1)+(A002024(n+1)+1)², 2)`
-/

namespace A292611.P5242241932953525153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1) + (A002024 (n + 1) + 1) ^ 2).toNat 2

end

end A292611.P5242241932953525153

namespace A292611

/-- `C(A002260(n+1)+(A002024(n+1)+1)², 2)` -/
def P5242241932953525153.Spec : Prop :=
  ∀ n, (P5242241932953525153.a n : ℤ) = A292611 (n + 1)

end A292611

/-! ## A292611.P1677188516784460842

`C(abs(A000217(A003056(n)+3)-4)+3+n, 2)`
-/

namespace A292611.P1677188516784460842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (|A000217 (A003056 n + 3).toNat - 4| + 3 + (n : ℤ)).toNat 2

end

end A292611.P1677188516784460842

namespace A292611

/-- `C(abs(A000217(A003056(n)+3)-4)+3+n, 2)` -/
def P1677188516784460842.Spec : Prop :=
  ∀ n, (P1677188516784460842.a n : ℤ) = A292611 (n + 1)

end A292611

/-! ## A292611.P11099435123750966234

`A000217(A063657(n+1)+A002024(n+1))`
-/

namespace A292611.P11099435123750966234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A063657 (n + 1) + A002024 (n + 1)).toNat

end

end A292611.P11099435123750966234

namespace A292611

/-- `A000217(A063657(n+1)+A002024(n+1))` -/
def P11099435123750966234.Spec : Prop :=
  ∀ n, P11099435123750966234.a n = A292611 (n + 1)

end A292611

/-! ## A292611.P1741633548873566110

`A000217(A002260(n+1)+(A002024(n+1)+1)²-1)`
-/

namespace A292611.P1741633548873566110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1) + (A002024 (n + 1) + 1) ^ 2 - 1).toNat

end

end A292611.P1741633548873566110

namespace A292611

/-- `A000217(A002260(n+1)+(A002024(n+1)+1)²-1)` -/
def P1741633548873566110.Spec : Prop :=
  ∀ n, P1741633548873566110.a n = A292611 (n + 1)

end A292611

/-! ## A292611.P10606013737751933636

`C(A004202(comp[∑[n]]), 2)`
-/

namespace A292611.P10606013737751933636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004202 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat 2

end

end A292611.P10606013737751933636

namespace A292611

/-- `C(A004202(comp[∑[n]]), 2)` -/
def P10606013737751933636.Spec : Prop :=
  ∀ n, (P10606013737751933636.a n : ℤ) = A292611 (n + 1)

end A292611

/-! ## A292611.P16643061408967350038

`A000217(A004202(comp[∑[n]])-1)`
-/

namespace A292611.P16643061408967350038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004202 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1).toNat

end

end A292611.P16643061408967350038

namespace A292611

/-- `A000217(A004202(comp[∑[n]])-1)` -/
def P16643061408967350038.Spec : Prop :=
  ∀ n, P16643061408967350038.a n = A292611 (n + 1)

end A292611

/-! ## A292611.P7744161028591465534

`A000217(A064801(A014132(n+1)))`
-/

namespace A292611.P7744161028591465534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A064801 (A014132 (n + 1)).toNat).toNat

end

end A292611.P7744161028591465534

namespace A292611

/-- `A000217(A064801(A014132(n+1)))` -/
def P7744161028591465534.Spec : Prop :=
  ∀ n, P7744161028591465534.a n = A292611 (n + 1)

end A292611

/-! ## A292611.P9332719502955390086

`A000217(A064801(A002024(n+1)+n+1))`
-/

namespace A292611.P9332719502955390086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A064801 (A002024 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A292611.P9332719502955390086

namespace A292611

/-- `A000217(A064801(A002024(n+1)+n+1))` -/
def P9332719502955390086.Spec : Prop :=
  ∀ n, P9332719502955390086.a n = A292611 (n + 1)

end A292611

/-! ## A292611.P3860338542288672456

`C(A004736(n+1)+lt[1, A048004(n)]+n, 2)`
-/

namespace A292611.P3860338542288672456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n : ℤ)).toNat 2

end

end A292611.P3860338542288672456

namespace A292611

/-- `C(A004736(n+1)+lt[1, A048004(n)]+n, 2)` -/
def P3860338542288672456.Spec : Prop :=
  ∀ n, (P3860338542288672456.a n : ℤ) = A292611 (n + 1)

end A292611

/-! ## A292611.P1603605189766594569

`A000217(A064801(A256188(A004202(n+1))))`
-/

namespace A292611.P1603605189766594569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A064801 (A256188 (A004202 (n + 1)).toNat).toNat).toNat

end

end A292611.P1603605189766594569

namespace A292611

/-- `A000217(A064801(A256188(A004202(n+1))))` -/
def P1603605189766594569.Spec : Prop :=
  ∀ n, P1603605189766594569.a n = A292611 (n + 1)

end A292611

/-! ## A292611.P2333304423416311456

`C(lt[2, Δ[A133825(n)]], 2)`
-/

namespace A292611.P2333304423416311456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 2

end

end A292611.P2333304423416311456

namespace A292611

/-- `C(lt[2, Δ[A133825(n)]], 2)` -/
def P2333304423416311456.Spec : Prop :=
  ∀ n, (P2333304423416311456.a n : ℤ) = A292611 (n + 1)

end A292611

/-! ## A292611.P1858558789935822407

`C(lt[7, Δ[A133823(n)]], 2)`
-/

namespace A292611.P1858558789935822407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133823 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 2

end

end A292611.P1858558789935822407

namespace A292611

/-- `C(lt[7, Δ[A133823(n)]], 2)` -/
def P1858558789935822407.Spec : Prop :=
  ∀ n, (P1858558789935822407.a n : ℤ) = A292611 (n + 1)

end A292611

/-! ## A292611.P16981552901950007007

`A161680(A189151(n+1))`
-/

namespace A292611.P16981552901950007007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A189151 (n + 1)).toNat

end

end A292611.P16981552901950007007

namespace A292611

/-- `A161680(A189151(n+1))` -/
def P16981552901950007007.Spec : Prop :=
  ∀ n, P16981552901950007007.a n = A292611 (n + 1)

end A292611

/-! ## A292611.P18388249030006377170

`A000217(lt[7, Δ[A133823(n)]]-1)`
-/

namespace A292611.P18388249030006377170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133823 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A292611.P18388249030006377170

namespace A292611

/-- `A000217(lt[7, Δ[A133823(n)]]-1)` -/
def P18388249030006377170.Spec : Prop :=
  ∀ n, P18388249030006377170.a n = A292611 (n + 1)

end A292611

/-! ## A292611.P13327525713816699866

`A161680(A002260(n+1)+A003057(n+2)²)`
-/

namespace A292611.P13327525713816699866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A002260 (n + 1) + A003057 (n + 2) ^ 2).toNat

end

end A292611.P13327525713816699866

namespace A292611

/-- `A161680(A002260(n+1)+A003057(n+2)²)` -/
def P13327525713816699866.Spec : Prop :=
  ∀ n, P13327525713816699866.a n = A292611 (n + 1)

end A292611

/-!
# A292612: a(n) = F(n)^2 + 4*(-1)^n = F(n+3)*F(n-3), where F = A000045.

The programs for A292612, the canonical program `A292612.P1966131925526790316` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292612 has offset 0).

The definition of A292612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292612.P1966131925526790316

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=4, a(1)=-3, a(2)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292612

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P1966131925526790316.Spec : Prop :=
  ∀ n, P1966131925526790316.a n = A292612 n

theorem P1966131925526790316.correct : P1966131925526790316.Spec := by
  intro n
  simp only [A292612]

end A292612

/-! ## A292612.P3784994997908373577

`Δ[ogf((2-6x+x^2)/(-1+2x+2x^2-x^3))]`
-/

namespace A292612.P3784994997908373577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 6, -1] [1, -2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292612.P3784994997908373577

namespace A292612

/-- `Δ[ogf((2-6x+x^2)/(-1+2x+2x^2-x^3))]` -/
def P3784994997908373577.Spec : Prop :=
  ∀ n, P3784994997908373577.a n = A292612 n

end A292612

/-! ## A292612.P4110665910856617149

`Δ[A295672(2*n+3)]`
-/

namespace A292612.P4110665910856617149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295672 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292612.P4110665910856617149

namespace A292612

/-- `Δ[A295672(2*n+3)]` -/
def P4110665910856617149.Spec : Prop :=
  ∀ n, P4110665910856617149.a n = A292612 n

end A292612

/-! ## A292612.P7815088606415652376

`A001519(n)-a(n-1)` with `a(0)=4`
-/

namespace A292612.P7815088606415652376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A001519 n - a (n - 1)

end

end A292612.P7815088606415652376

namespace A292612

/-- `A001519(n)-a(n-1)` -/
def P7815088606415652376.Spec : Prop :=
  ∀ n, P7815088606415652376.a n = A292612 n

end A292612

/-! ## A292612.P9456189127770698418

`A122367(n-1)-a(n-1)` with `a(0)=4`
-/

namespace A292612.P9456189127770698418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A122367 (n - 1) - a (n - 1)

end

end A292612.P9456189127770698418

namespace A292612

/-- `A122367(n-1)-a(n-1)` -/
def P9456189127770698418.Spec : Prop :=
  ∀ n, P9456189127770698418.a n = A292612 n

end A292612

/-! ## A292612.P16664878150405469067

`A000045(n)²+4*(-1)^n`
-/

namespace A292612.P16664878150405469067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 + 4 * (-1) ^ n

end

end A292612.P16664878150405469067

namespace A292612

/-- `A000045(n)²+4*(-1)^n` -/
def P16664878150405469067.Spec : Prop :=
  ∀ n, P16664878150405469067.a n = A292612 n

end A292612

/-! ## A292612.P16294986660790515462

`A000045(2*n-1)-a(n-1)` with `a(0)=4`
-/

namespace A292612.P16294986660790515462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A000045 (2 * n - 1) - a (n - 1)

end

end A292612.P16294986660790515462

namespace A292612

/-- `A000045(2*n-1)-a(n-1)` -/
def P16294986660790515462.Spec : Prop :=
  ∀ n, P16294986660790515462.a n = A292612 n

end A292612

/-! ## A292612.P206802878466819027

`∑[A000045(abs(n-2+n))]-a(n-1)` with `a(0)=4`
-/

namespace A292612.P206802878466819027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |(n : ℤ) - 2 + (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A292612.P206802878466819027

namespace A292612

/-- `∑[A000045(abs(n-2+n))]-a(n-1)` -/
def P206802878466819027.Spec : Prop :=
  ∀ n, P206802878466819027.a n = A292612 n

end A292612

/-! ## A292612.P3394506212126974375

`Δ[-A152163(n)]*A020695(n)`
-/

namespace A292612.P3394506212126974375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A152163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020695 n

end

end A292612.P3394506212126974375

namespace A292612

/-- `Δ[-A152163(n)]*A020695(n)` -/
def P3394506212126974375.Spec : Prop :=
  ∀ n, P3394506212126974375.a n = A292612 n

end A292612

/-! ## A292612.P12635813798420736222

`5-(A010690(n)-(1-A001611(n))²)`
-/

namespace A292612.P12635813798420736222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A010690 n - (1 - A001611 n) ^ 2)

end

end A292612.P12635813798420736222

namespace A292612

/-- `5-(A010690(n)-(1-A001611(n))²)` -/
def P12635813798420736222.Spec : Prop :=
  ∀ n, P12635813798420736222.a n = A292612 n

end A292612

/-! ## A292612.P17155607054143718516

`record[A000045(A006257(n))]-a(n-1)` with `a(0)=4`
-/

namespace A292612.P17155607054143718516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A292612.P17155607054143718516

namespace A292612

/-- `record[A000045(A006257(n))]-a(n-1)` -/
def P17155607054143718516.Spec : Prop :=
  ∀ n, P17155607054143718516.a n = A292612 n

end A292612

/-! ## A292612.P10329587206765046465

`(A212804(n)+A152163(n))*A020695(n)`
-/

namespace A292612.P10329587206765046465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 n + A152163 n) * A020695 n

end

end A292612.P10329587206765046465

namespace A292612

/-- `(A212804(n)+A152163(n))*A020695(n)` -/
def P10329587206765046465.Spec : Prop :=
  ∀ n, P10329587206765046465.a n = A292612 n

end A292612

/-! ## A292612.P858767776427181723

`(A020695(n)-A022087(n))*A020695(n)`
-/

namespace A292612.P858767776427181723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020695 n - A022087 n) * A020695 n

end

end A292612.P858767776427181723

namespace A292612

/-- `(A020695(n)-A022087(n))*A020695(n)` -/
def P858767776427181723.Spec : Prop :=
  ∀ n, P858767776427181723.a n = A292612 n

end A292612

/-! ## A292612.P556569105504814485

`(A022136(n)-A022380(n))*A020695(n)`
-/

namespace A292612.P556569105504814485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022136 n - A022380 n) * A020695 n

end

end A292612.P556569105504814485

namespace A292612

/-- `(A022136(n)-A022380(n))*A020695(n)` -/
def P556569105504814485.Spec : Prop :=
  ∀ n, P556569105504814485.a n = A292612 n

end A292612

/-! ## A292612.P16038389348268774565

`1/5*(18*(-1)^n+((3-sqrt(5))/2)^n+((3+sqrt(5))/2)^n)`
-/

namespace A292612.P16038389348268774565
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 5 : ℝ) * ((18 * (-1) ^ n : ℝ) + ((3 - Real.sqrt (5 : ℝ)) / 2) ^ n + ((3 + Real.sqrt (5 : ℝ)) / 2) ^ n)

end

end A292612.P16038389348268774565

namespace A292612

/-- `1/5*(18*(-1)^n+((3-sqrt(5))/2)^n+((3+sqrt(5))/2)^n)` -/
def P16038389348268774565.Spec : Prop :=
  ∀ n, P16038389348268774565.a n = (A292612 n : ℝ)

theorem P16038389348268774565.correct : P16038389348268774565.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A292612, Nat.add_sub_cancel, A292612.P16038389348268774565.a, A292612.P1966131925526790316.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A292612, Nat.add_sub_cancel, A292612.P16038389348268774565.a, A292612.P1966131925526790316.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A292612

/-! ## A292612.P11678524342427982578

`Δ[A260259(n)]-A260259(n)`
-/

namespace A292612.P11678524342427982578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A260259 n

end

end A292612.P11678524342427982578

namespace A292612

/-- `Δ[A260259(n)]-A260259(n)` -/
def P11678524342427982578.Spec : Prop :=
  ∀ n, P11678524342427982578.a n = A292612 n

end A292612

/-! ## A292612.P15686371538329301623

`A001254(n)-(2*A000045(n))²`
-/

namespace A292612.P15686371538329301623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n - (2 * A000045 n) ^ 2

end

end A292612.P15686371538329301623

namespace A292612

/-- `A001254(n)-(2*A000045(n))²` -/
def P15686371538329301623.Spec : Prop :=
  ∀ n, P15686371538329301623.a n = A292612 n

end A292612

/-! ## A292612.P1118066469479202716

`A000032(n)²-Δ[A001595(n)]²`
-/

namespace A292612.P1118066469479202716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2 - (f1 (n + 1) - f1 n) ^ 2

end

end A292612.P1118066469479202716

namespace A292612

/-- `A000032(n)²-Δ[A001595(n)]²` -/
def P1118066469479202716.Spec : Prop :=
  ∀ n, P1118066469479202716.a n = A292612 n

end A292612

/-! ## A292612.P4145639376485855492

`A000032(n)²-(2*A000045(n))²`
-/

namespace A292612.P4145639376485855492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2 - (2 * A000045 n) ^ 2

end

end A292612.P4145639376485855492

namespace A292612

/-- `A000032(n)²-(2*A000045(n))²` -/
def P4145639376485855492.Spec : Prop :=
  ∀ n, P4145639376485855492.a n = A292612 n

end A292612

/-!
# A292613: a(n) = [x^n] 1/(1-x)^n * Product_{k=1..n} 1/(1-x^k).

The programs for A292613, there is no canonical definition to state claims against.
-/

/-! ## A292613.P2619792740531028179

`A253829(∑[4*n])`
-/

namespace A292613.P2619792740531028179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253829 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292613.P2619792740531028179

/-! ## A292613.P168045223187469883

`A256193(abs(A056220(n)))+A056220(n)%(n+1)`
-/

namespace A292613.P168045223187469883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 |A056220 n|.toNat + Int.tmod (A056220 n) (n + 1 : ℤ)

end

end A292613.P168045223187469883

/-! ## A292613.P2655296484122765003

`A292508(2*(n+1)²-1)`
-/

namespace A292613.P2655296484122765003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (2 * (n + 1) ^ 2 - 1)

end

end A292613.P2655296484122765003

/-! ## A292613.P1785137545195399955

`record[A292508(2*n+1)/A026552(n)]`
-/

namespace A292613.P1785137545195399955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292508 (2 * n + 1) : ℚ) / (A026552 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292613.P1785137545195399955

/-! ## A292613.P16448080008497761491

`or(A000007(n), A292508(A054000(n+1)+1))`
-/

namespace A292613.P16448080008497761491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292508 (A054000 (n + 1) + 1).toNat)

end

end A292613.P16448080008497761491

/-! ## A292613.P2287889511661568744

`A007318(∑[n])*A292508(A054000(n+1)+1)`
-/

namespace A292613.P2287889511661568744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A292508 (A054000 (n + 1) + 1).toNat

end

end A292613.P2287889511661568744

/-!
# A292616: a(n) = 3*a(n-2) - a(n-4) for n > 3, with a(0)=4, a(1)=3, a(2)=a(3)=6, a sequence related to bisections of Fibonacci numbers.

The programs for A292616, the canonical program `A292616.P14770346022958440635` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292616 has offset 0).

The definition of A292616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)-a(n-4)` (program `A292616.P14770346022958440635`, by `A292616.P14770346022958440635.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292616.P14770346022958440635

`3*a(n-2)-a(n-4)` with `a(0)=4, a(1)=3, a(2)=6, a(3)=6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292616

/-- `3*a(n-2)-a(n-4)` -/
def P14770346022958440635.Spec : Prop :=
  ∀ n, P14770346022958440635.a n = A292616 n

theorem P14770346022958440635.correct : P14770346022958440635.Spec := by
  intro n
  simp only [A292616]

end A292616

/-! ## A292616.P3054530239848538671

`A291660(n)+A292521(n)`
-/

namespace A292616.P3054530239848538671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291660 n + A292521 n

end

end A292616.P3054530239848538671

namespace A292616

/-- `A291660(n)+A292521(n)` -/
def P3054530239848538671.Spec : Prop :=
  ∀ n, P3054530239848538671.a n = A292616 n

end A292616

/-! ## A292616.P10162335872859014169

`A005247(n)*A010693(n)`
-/

namespace A292616.P10162335872859014169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n * A010693 n

end

end A292616.P10162335872859014169

namespace A292616

/-- `A005247(n)*A010693(n)` -/
def P10162335872859014169.Spec : Prop :=
  ∀ n, P10162335872859014169.a n = A292616 n

end A292616

/-! ## A292616.P13586134950727047492

`(A140081(2*n)+2)*A063726(2*n+1)`
-/

namespace A292616.P13586134950727047492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140081 (2 * n) + 2) * A063726 (2 * n + 1)

end

end A292616.P13586134950727047492

namespace A292616

/-- `(A140081(2*n)+2)*A063726(2*n+1)` -/
def P13586134950727047492.Spec : Prop :=
  ∀ n, P13586134950727047492.a n = A292616 n

end A292616

/-! ## A292616.P9915096063681330459

`A005247(n)*A020639(A017233(n))`
-/

namespace A292616.P9915096063681330459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n * A020639 (A017233 n).toNat

end

end A292616.P9915096063681330459

namespace A292616

/-- `A005247(n)*A020639(A017233(n))` -/
def P9915096063681330459.Spec : Prop :=
  ∀ n, P9915096063681330459.a n = A292616 n

end A292616

/-! ## A292616.P3274656075713827644

`A000032(n)+A292521(n)+A286350(n)`
-/

namespace A292616.P3274656075713827644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A292521 n + A286350 n)

end

end A292616.P3274656075713827644

namespace A292616

/-- `A000032(n)+A292521(n)+A286350(n)` -/
def P3274656075713827644.Spec : Prop :=
  ∀ n, P3274656075713827644.a n = A292616 n

end A292616

/-! ## A292616.P12670457219568337357

`A020639(A020639(n+1)+1)*A005247(n)`
-/

namespace A292616.P12670457219568337357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 1) + 1).toNat * A005247 n

end

end A292616.P12670457219568337357

namespace A292616

/-- `A020639(A020639(n+1)+1)*A005247(n)` -/
def P12670457219568337357.Spec : Prop :=
  ∀ n, P12670457219568337357.a n = A292616 n

end A292616

/-! ## A292616.P15520551160784885420

`A005247(n)*A085058(n²)`
-/

namespace A292616.P15520551160784885420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n * A085058 (n ^ 2)

end

end A292616.P15520551160784885420

namespace A292616

/-- `A005247(n)*A085058(n²)` -/
def P15520551160784885420.Spec : Prop :=
  ∀ n, P15520551160784885420.a n = A292616 n

end A292616

/-!
# A292617: Convolution of number of partitions into distinct parts and Catalan numbers.

The programs for A292617, there is no canonical definition to state claims against.
-/

/-! ## A292617.P13195996372207062136

`∑[A020915(∑[A058495(n)])]`
-/

namespace A292617.P13195996372207062136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058495 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292617.P13195996372207062136

/-! ## A292617.P18344748716697649733

`A091107(n+1)+2-char[∑[n]]`
-/

namespace A292617.P18344748716697649733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091107 (n + 1) + 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A292617.P18344748716697649733

/-! ## A292617.P12967403616330526942

`A000006(∑[A113715(n)])`
-/

namespace A292617.P12967403616330526942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292617.P12967403616330526942

/-!
# A292618: The first prime of 8 consecutive primes a, b, c, d, e, f, g, h such that a + g = c + e and b + h = d + f.

The programs for A292618, the canonical program `A292618.P456009917632285157` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292618 has offset 1).

The definition of A292618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292618.P383499355716216353

`∩[A022891(n+1), A260179(n+1)]`
-/

namespace A292618.P383499355716216353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292618.P383499355716216353

namespace A292618

/-- `∩[A022891(n+1), A260179(n+1)]` -/
def P383499355716216353.Spec : Prop :=
  ∀ n, (P383499355716216353.a n : ℤ) = A292618 (n + 1)

end A292618

/-! ## A292618.P456009917632285157

`A022891(eq[1, A022890(n+2)-A022890(n+1)]+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A292618

/-- `A022891(eq[1, A022890(n+2)-A022890(n+1)]+1)` -/
def P456009917632285157.Spec : Prop :=
  ∀ n, P456009917632285157.a n = A292618 (n + 1)

theorem P456009917632285157.correct : P456009917632285157.Spec := by
  intro n
  simp only [A292618, Nat.add_sub_cancel]

end A292618

/-! ## A292618.P13884731796227570266

`∩[A008578(A022890(n+1)), A022891(n+1)]`
-/

namespace A292618.P13884731796227570266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A022890 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292618.P13884731796227570266

namespace A292618

/-- `∩[A008578(A022890(n+1)), A022891(n+1)]` -/
def P13884731796227570266.Spec : Prop :=
  ∀ n, (P13884731796227570266.a n : ℤ) = A292618 (n + 1)

end A292618

/-! ## A292618.P6377529159018097073

`∩[A000040(A022890(n+1)), A260179(n+1)]`
-/

namespace A292618.P6377529159018097073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022890 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292618.P6377529159018097073

namespace A292618

/-- `∩[A000040(A022890(n+1)), A260179(n+1)]` -/
def P6377529159018097073.Spec : Prop :=
  ∀ n, (P6377529159018097073.a n : ℤ) = A292618 (n + 1)

end A292618

/-! ## A292618.P332131167012743485

`A008578(∩[A022890(n+1)+1, A022890(n+1)])`
-/

namespace A292618.P332131167012743485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022890 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022890 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A292618.P332131167012743485

namespace A292618

/-- `A008578(∩[A022890(n+1)+1, A022890(n+1)])` -/
def P332131167012743485.Spec : Prop :=
  ∀ n, P332131167012743485.a n = A292618 (n + 1)

end A292618

/-! ## A292618.P15099097223027739287

`A000040(∩[A022890(n+1)-1, A022890(n+1)])`
-/

namespace A292618.P15099097223027739287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022890 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022890 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A292618.P15099097223027739287

namespace A292618

/-- `A000040(∩[A022890(n+1)-1, A022890(n+1)])` -/
def P15099097223027739287.Spec : Prop :=
  ∀ n, P15099097223027739287.a n = A292618 (n + 1)

end A292618

/-!
# A292619: Convolution of number of overpartitions and Catalan numbers.

The programs for A292619, there is no canonical definition to state claims against.
-/

/-! ## A292619.P3572854989809883461

`A024417(A061557(n+1)-2)`
-/

namespace A292619.P3572854989809883461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A061557 (n + 1) - 2).toNat

end

end A292619.P3572854989809883461

/-! ## A292619.P6357667207472684850

`A066339(A292617(n+3)-A342139(n))`
-/

namespace A292619.P6357667207472684850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A292617 (n + 3) - A342139 n).toNat

end

end A292619.P6357667207472684850

/-!
# A292620: a(n) = a(n-1) + a(floor(log_2(n))), with a(1) = 1.

The programs for A292620, the canonical program `A292620.P17552517701715373524` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292620 has offset 1).

The definition of A292620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(floor(log2(n+1))-1)` (program `A292620.P17552517701715373524`, by `A292620.P17552517701715373524.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292620.P17552517701715373524

`a(n-1)+a(floor(log2(n+1))-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292620

/-- `a(n-1)+a(floor(log2(n+1))-1)` -/
def P17552517701715373524.Spec : Prop :=
  ∀ n, (P17552517701715373524.a n : ℤ) = A292620 (n + 1)

theorem P17552517701715373524.correct : P17552517701715373524.Spec := by
  intro n
  simp only [A292620, Nat.add_sub_cancel]

end A292620

/-! ## A292620.P7435779279057121759

`∑[A083652(A000523(n+1))-A000523(n+1)]`
-/

namespace A292620.P7435779279057121759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 (A000523 (n + 1)).toNat - A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292620.P7435779279057121759

namespace A292620

/-- `∑[A083652(A000523(n+1))-A000523(n+1)]` -/
def P7435779279057121759.Spec : Prop :=
  ∀ n, P7435779279057121759.a n = A292620 (n + 1)

end A292620

/-! ## A292620.P11057869557918475142

`∑[A049108(A000523(n+1)!)]`
-/

namespace A292620.P11057869557918475142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (Nat.factorial (A000523 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292620.P11057869557918475142

namespace A292620

/-- `∑[A049108(A000523(n+1)!)]` -/
def P11057869557918475142.Spec : Prop :=
  ∀ n, P11057869557918475142.a n = A292620 (n + 1)

end A292620

/-! ## A292620.P94186213484605021

`∑[A001222(A072376((A072376(n+1)+1)²))]`
-/

namespace A292620.P94186213484605021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072376 ((A072376 (n + 1) + 1) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292620.P94186213484605021

namespace A292620

/-- `∑[A001222(A072376((A072376(n+1)+1)²))]` -/
def P94186213484605021.Spec : Prop :=
  ∀ n, P94186213484605021.a n = A292620 (n + 1)

end A292620

/-! ## A292620.P13668197552111288102

`a(n-1)+A049108(A000523(n+1)!)+A000007(n)` with `a(0)=1`
-/

namespace A292620.P13668197552111288102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A049108 (Nat.factorial (A000523 (n + 1)).toNat) + A000007 n)

end

end A292620.P13668197552111288102

namespace A292620

/-- `a(n-1)+A049108(A000523(n+1)!)+A000007(n)` -/
def P13668197552111288102.Spec : Prop :=
  ∀ n, P13668197552111288102.a n = A292620 (n + 1)

end A292620

/-! ## A292620.P8377276629664536745

`∑[A141285(floor(log2(n+1))!)]`
-/

namespace A292620.P8377276629664536745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (Nat.factorial (Nat.log 2 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292620.P8377276629664536745

namespace A292620

/-- `∑[A141285(floor(log2(n+1))!)]` -/
def P8377276629664536745.Spec : Prop :=
  ∀ n, P8377276629664536745.a n = A292620 (n + 1)

end A292620

/-! ## A292620.P11727246251626442941

`∑[A064515(n+1-A053645(n+1))]+1`
-/

namespace A292620.P11727246251626442941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 ((n + 1 : ℤ) - A053645 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A292620.P11727246251626442941

namespace A292620

/-- `∑[A064515(n+1-A053645(n+1))]+1` -/
def P11727246251626442941.Spec : Prop :=
  ∀ n, P11727246251626442941.a n = A292620 (n + 1)

end A292620

/-! ## A292620.P17673898352091755883

`∑[A004233(A000040(A000523(n+1)!))]`
-/

namespace A292620.P17673898352091755883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (A000040 (Nat.factorial (A000523 (n + 1)).toNat)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292620.P17673898352091755883

namespace A292620

/-- `∑[A004233(A000040(A000523(n+1)!))]` -/
def P17673898352091755883.Spec : Prop :=
  ∀ n, P17673898352091755883.a n = A292620 (n + 1)

end A292620

/-! ## A292620.P15328845629622355455

`∑[A006530(∏[A326515(n+1)])]`
-/

namespace A292620.P15328845629622355455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326515 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292620.P15328845629622355455

namespace A292620

/-- `∑[A006530(∏[A326515(n+1)])]` -/
def P15328845629622355455.Spec : Prop :=
  ∀ n, P15328845629622355455.a n = A292620 (n + 1)

end A292620

/-!
# A292621: a(n) = a(n-1) + a(floor(log(n))) with a(1) = 1, a(2) = 2.

The programs for A292621, the canonical program `A292621.P5757289766000031833` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292621 has offset 1).

The definition of A292621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(floor(log(n+1))-1)` (program `A292621.P5757289766000031833`, by `A292621.P5757289766000031833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292621.P5757289766000031833

`a(n-1)+a(floor(log(n+1))-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292621

/-- `a(n-1)+a(floor(log(n+1))-1)` -/
def P5757289766000031833.Spec : Prop :=
  ∀ n, (P5757289766000031833.a n : ℤ) = A292621 (n + 1)

theorem P5757289766000031833.correct : P5757289766000031833.Spec := by
  intro n
  simp only [A292621, Nat.add_sub_cancel]

end A292621

/-! ## A292621.P5336233927889605811

`∑[gcd(A214080(n)², A000195(n+1))]`
-/

namespace A292621.P5336233927889605811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214080 n ^ 2) (A000195 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292621.P5336233927889605811

namespace A292621

/-- `∑[gcd(A214080(n)², A000195(n+1))]` -/
def P5336233927889605811.Spec : Prop :=
  ∀ n, (P5336233927889605811.a n : ℤ) = A292621 (n + 1)

end A292621

/-! ## A292621.P14794670142491528505

`∑[A000195(n+1)+A008683(A115639(n))]`
-/

namespace A292621.P14794670142491528505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1) + A008683 (A115639 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292621.P14794670142491528505

namespace A292621

/-- `∑[A000195(n+1)+A008683(A115639(n))]` -/
def P14794670142491528505.Spec : Prop :=
  ∀ n, P14794670142491528505.a n = A292621 (n + 1)

end A292621

/-! ## A292621.P7736573452822931438

`∑[∏{e}[11^floor(log(n+1)), #]]`
-/

namespace A292621.P7736573452822931438
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (⌊Real.log (n + 1 : ℝ)⌋ : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f2 n)).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292621.P7736573452822931438

namespace A292621

/-- `∑[∏{e}[11^floor(log(n+1)), #]]` -/
def P7736573452822931438.Spec : Prop :=
  ∀ n, (P7736573452822931438.a n : ℤ) = A292621 (n + 1)

end A292621

/-! ## A292621.P14816380880051693501

`∑[A000195(n+1)]+2-A209229(n²+2)`
-/

namespace A292621.P14816380880051693501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A209229 (n ^ 2 + 2))

end

end A292621.P14816380880051693501

namespace A292621

/-- `∑[A000195(n+1)]+2-A209229(n²+2)` -/
def P14816380880051693501.Spec : Prop :=
  ∀ n, P14816380880051693501.a n = A292621 (n + 1)

end A292621

/-! ## A292621.P2118110729008903233

`∑[A322445(floor(log(n+1))!)]`
-/

namespace A292621.P2118110729008903233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322445 (Nat.factorial ⌊Real.log (n + 1 : ℝ)⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292621.P2118110729008903233

namespace A292621

/-- `∑[A322445(floor(log(n+1))!)]` -/
def P2118110729008903233.Spec : Prop :=
  ∀ n, P2118110729008903233.a n = A292621 (n + 1)

end A292621

/-! ## A292621.P17809888261867631267

`∑[A000195(A003056(∑[n+1]+5))]`
-/

namespace A292621.P17809888261867631267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A003056 (∑ j ∈ Finset.range (n + 1), f2 j + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292621.P17809888261867631267

namespace A292621

/-- `∑[A000195(A003056(∑[n+1]+5))]` -/
def P17809888261867631267.Spec : Prop :=
  ∀ n, P17809888261867631267.a n = A292621 (n + 1)

end A292621

/-! ## A292621.P3329202766047064464

`∑[A055642(∑[(1-A003987(n))²])]`
-/

namespace A292621.P3329202766047064464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A003987 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292621.P3329202766047064464

namespace A292621

/-- `∑[A055642(∑[(1-A003987(n))²])]` -/
def P3329202766047064464.Spec : Prop :=
  ∀ n, P3329202766047064464.a n = A292621 (n + 1)

end A292621

/-! ## A292621.P9935838936683862577

`A000122(n²)+∑[A000195(n+1)]`
-/

namespace A292621.P9935838936683862577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292621.P9935838936683862577

namespace A292621

/-- `A000122(n²)+∑[A000195(n+1)]` -/
def P9935838936683862577.Spec : Prop :=
  ∀ n, P9935838936683862577.a n = A292621 (n + 1)

end A292621

/-!
# A292622: Number A(n,k) of partitions of n with up to k distinct kinds of 1; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A292622, there is no canonical definition to state claims against.
-/

/-! ## A292622.P4018349601414931242

`A045847(n)+A004218(A156953(n))`
-/

namespace A292622.P4018349601414931242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 n + A004218 (A156953 n).toNat

end

end A292622.P4018349601414931242

/-! ## A292622.P5485324963842911647

`A052553(n)+A004218(A156953(n))`
-/

namespace A292622.P5485324963842911647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n + A004218 (A156953 n).toNat

end

end A292622.P5485324963842911647

/-! ## A292622.P7037717473282795635

`A290054(n)+A004218(A156953(n))`
-/

namespace A292622.P7037717473282795635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 n + A004218 (A156953 n).toNat

end

end A292622.P7037717473282795635

/-! ## A292622.P5070717250453058939

`A077029(n+1)+A004218(A156953(n))`
-/

namespace A292622.P5070717250453058939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077029 (n + 1) + A004218 (A156953 n).toNat

end

end A292622.P5070717250453058939

/-!
# A292624: Number of solutions to 4/p = 1/x + 1/y + 1/z in positive integers, where p is the n-th prime.

The programs for A292624, there is no canonical definition to state claims against.
-/

/-! ## A292624.P16997113620838011507

`A292581(A000040(n+1))`
-/

namespace A292624.P16997113620838011507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (A000040 (n + 1)).toNat

end

end A292624.P16997113620838011507

/-! ## A292624.P14385527739399557096

`A292581(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A292624.P14385527739399557096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A292624.P14385527739399557096

/-! ## A292624.P8115993721019918993

`A292581(Δ[A007504(n)])`
-/

namespace A292624.P8115993721019918993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (f1 (n + 1) - f1 n).toNat

end

end A292624.P8115993721019918993

/-! ## A292624.P824095095728532256

`A292581(record[A051698(n)])`
-/

namespace A292624.P824095095728532256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A292624.P824095095728532256

/-! ## A292624.P885361379834501898

`A292581(p?[A001057(n)])`
-/

namespace A292624.P885361379834501898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A292624.P885361379834501898

/-! ## A292624.P4299854724672766131

`A292581(A008578(n+2))`
-/

namespace A292624.P4299854724672766131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (A008578 (n + 2)).toNat

end

end A292624.P4299854724672766131

/-! ## A292624.P14926767479246627646

`A292581(A182986(n+2))`
-/

namespace A292624.P14926767479246627646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (A182986 (n + 2)).toNat

end

end A292624.P14926767479246627646

/-! ## A292624.P10801226187805078517

`A292581(eq[0, A295335(n)])`
-/

namespace A292624.P10801226187805078517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292624.P10801226187805078517

/-! ## A292624.P5784652151196620671

`A292581(eq[1, A003415(n)])`
-/

namespace A292624.P5784652151196620671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292624.P5784652151196620671

/-! ## A292624.P11348506421029509954

`A292581(eq[1, A032741(n)])`
-/

namespace A292624.P11348506421029509954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292624.P11348506421029509954

/-! ## A292624.P7785897972409977984

`A292581(record[A006530(n+2)])`
-/

namespace A292624.P7785897972409977984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A292624.P7785897972409977984

/-! ## A292624.P304901880017982391

`A292581(record[A014963(n+2)])`
-/

namespace A292624.P304901880017982391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A292624.P304901880017982391

/-! ## A292624.P4953784430054508180

`A292581(record[A020639(n+2)])`
-/

namespace A292624.P4953784430054508180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A292624.P4953784430054508180

/-! ## A292624.P15830336865156403007

`A292581(A001748(n+1)/3)`
-/

namespace A292624.P15830336865156403007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

end

end A292624.P15830336865156403007

/-! ## A292624.P18356520134781373328

`A292581(record[A000010(n+1)+1])`
-/

namespace A292624.P18356520134781373328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A292624.P18356520134781373328

/-! ## A292624.P79614716915898367

`A292581(2*A001749(n+1)/8)`
-/

namespace A292624.P79614716915898367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (SequenceMachineLib.roundAway ((2 * A001749 (n + 1) : ℚ) / 8)).toNat

end

end A292624.P79614716915898367

/-! ## A292624.P10580863400172962565

`A292581(A007504(n+1)-A007504(n))`
-/

namespace A292624.P10580863400172962565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292581 (A007504 (n + 1) - A007504 n).toNat

end

end A292624.P10580863400172962565

/-!
# A292627: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(k*x)*BesselI(0,2*x).

The programs for A292627, there is no canonical definition to state claims against.
-/

/-! ## A292627.P14288101898540657529

`A292630(n)-A292628(n)`
-/

namespace A292627.P14288101898540657529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 n - A292628 n

end

end A292627.P14288101898540657529

/-! ## A292627.P859611328876309327

`A292630(n)+A008683(A007918(n))*A292628(n)`
-/

namespace A292627.P859611328876309327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 n + A008683 (A007918 n).toNat * A292628 n

end

end A292627.P859611328876309327

/-! ## A292627.P12176830398463033077

`A081572(n)+A011734(A156953(n))-A292628(n)`
-/

namespace A292627.P12176830398463033077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 n + (A011734 (A156953 n).toNat - A292628 n)

end

end A292627.P12176830398463033077

/-! ## A292627.P12369923175560466118

`A081572(n)+A133010(A135722(n))-A292628(n)`
-/

namespace A292627.P12369923175560466118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 n + (A133010 (A135722 n).toNat - A292628 n)

end

end A292627.P12369923175560466118

/-! ## A292627.P10677091356199259846

`C(A184703(n+1), A357722(A246297(n+1)))`
-/

namespace A292627.P10677091356199259846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A184703 (n + 1)).toNat (A357722 ((A246297 (n + 1)).toNat + 11)).toNat

end

end A292627.P10677091356199259846

/-!
# A292628: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. exp(k*x)*BesselI(1,2*x).

The programs for A292628, there is no canonical definition to state claims against.
-/

/-! ## A292628.P11435975195987805375

`A292630(n)-A292627(n)`
-/

namespace A292628.P11435975195987805375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 n - A292627 n

end

end A292628.P11435975195987805375

/-! ## A292628.P7199649291599436553

`A002262(n)*A247495(A056943(n))`
-/

namespace A292628.P7199649291599436553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A247495 (A056943 n).toNat

end

end A292628.P7199649291599436553

/-! ## A292628.P11617233942507991364

`A081572(n)+A011734(A156953(n))-A292627(n)`
-/

namespace A292628.P11617233942507991364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 n + (A011734 (A156953 n).toNat - A292627 n)

end

end A292628.P11617233942507991364

/-! ## A292628.P5004508421206840448

`A081572(n)+A133010(A135722(n))-A292627(n)`
-/

namespace A292628.P5004508421206840448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 n + (A133010 (A135722 n).toNat - A292627 n)

end

end A292628.P5004508421206840448

/-! ## A292628.P8482924647650593854

`A295883(A001405(n))+A081572(n)-A292627(n)`
-/

namespace A292628.P8482924647650593854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (A001405 n).toNat + (A081572 n - A292627 n)

end

end A292628.P8482924647650593854

/-!
# A292629: a(n) = n! * [x^n] exp(n*x)*BesselI(1,2*x).

The programs for A292629, there is no canonical definition to state claims against.
-/

/-! ## A292629.P1252212576257685493

`n*A247495(2*n²)`
-/

namespace A292629.P1252212576257685493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A247495 (2 * n ^ 2)

end

end A292629.P1252212576257685493

/-! ## A292629.P18317353974266314589

`A292631(n)-A186925(n)`
-/

namespace A292629.P18317353974266314589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292631 n - A186925 n

end

end A292629.P18317353974266314589

/-! ## A292629.P14079725278136807939

`A292631(n)-A292627(∑[4*n])`
-/

namespace A292629.P14079725278136807939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292631 n - A292627 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292629.P14079725278136807939

/-! ## A292629.P16914443420315541585

`A292631(n)-lcm((-1)^n, A292627(A046092(n)))`
-/

namespace A292629.P16914443420315541585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292631 n - (Int.lcm ((-1) ^ n) (A292627 (A046092 n).toNat) : ℤ)

end

end A292629.P16914443420315541585

/-!
# A292630: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. exp(k*x)*(BesselI(0,2*x) + BesselI(1,2*x)).

The programs for A292630, there is no canonical definition to state claims against.
-/

/-! ## A292630.P4701450172916659029

`A292628(n)+A292627(n)`
-/

namespace A292630.P4701450172916659029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292628 n + A292627 n

end

end A292630.P4701450172916659029

/-! ## A292630.P345189120377166002

`A085980(A162745(3*n))+A081572(n)`
-/

namespace A292630.P345189120377166002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085980 (A162745 (3 * n)).toNat + A081572 n

end

end A292630.P345189120377166002

/-! ## A292630.P8895111184814170699

`A081572(n)+A011734(A156953(n))`
-/

namespace A292630.P8895111184814170699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 n + A011734 (A156953 n).toNat

end

end A292630.P8895111184814170699

/-! ## A292630.P13945008145838730071

`A133010(A135722(n))+A081572(n)`
-/

namespace A292630.P13945008145838730071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133010 (A135722 n).toNat + A081572 n

end

end A292630.P13945008145838730071

/-! ## A292630.P5037731525613415593

`A295883(A001405(n))+A081572(n)`
-/

namespace A292630.P5037731525613415593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (A001405 n).toNat + A081572 n

end

end A292630.P5037731525613415593

/-!
# A292631: a(n) = n! * [x^n] exp(n*x)*(BesselI(0,2*x) + BesselI(1,2*x)).

The programs for A292631, there is no canonical definition to state claims against.
-/

/-! ## A292631.P4673641316330924019

`A292629(n)+A186925(n)`
-/

namespace A292631.P4673641316330924019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292629 n + A186925 n

end

end A292631.P4673641316330924019

/-! ## A292631.P15628885799517274377

`A292629(n)+A292627(∑[4*n])`
-/

namespace A292631.P15628885799517274377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292629 n + A292627 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292631.P15628885799517274377

/-! ## A292631.P14742878874518418303

`A186925(n)+n*A247495(2*n²)`
-/

namespace A292631.P14742878874518418303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186925 n + (n : ℤ) * A247495 (2 * n ^ 2)

end

end A292631.P14742878874518418303

/-! ## A292631.P12931689997077105946

`A292629(n)+gcd(A000038(n), A292627(A046092(n)))`
-/

namespace A292631.P12931689997077105946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292629 n + (Int.gcd (A000038 n) (A292627 (A046092 n).toNat) : ℤ)

end

end A292631.P12931689997077105946

/-! ## A292631.P5236253436793177878

`A292629(n)+or(A000035(n), A292627(A046092(n)))`
-/

namespace A292631.P5236253436793177878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292629 n + Int.lor (A000035 n) (A292627 (A046092 n).toNat)

end

end A292631.P5236253436793177878

/-!
# A292632: a(n) = n! * [x^n] exp((n+2)*x)*(BesselI(0,2*x) - BesselI(1,2*x)).

The programs for A292632, there is no canonical definition to state claims against.
-/

/-! ## A292632.P17516102383474204417

`A271025(∑[4*n])`
-/

namespace A292632.P17516102383474204417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271025 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292632.P17516102383474204417

/-! ## A292632.P7118893315841053691

`record[A271025(A266725(n))]`
-/

namespace A292632.P7118893315841053691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271025 (A266725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292632.P7118893315841053691

/-! ## A292632.P13247735446099523182

`record[A271025(gcd(n, A114327(n)))]`
-/

namespace A292632.P13247735446099523182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271025 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292632.P13247735446099523182

/-! ## A292632.P9532564196169884271

`record[A203994(n+1)*A271025(n)]`
-/

namespace A292632.P9532564196169884271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A271025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292632.P9532564196169884271

/-! ## A292632.P17378223984643330897

`record[A271025(n)/A008313(2*n)]`
-/

namespace A292632.P17378223984643330897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271025 n : ℚ) / (A008313 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292632.P17378223984643330897

/-!
# A292633: a(n) = n! * [x^n] -exp(n*x)*LambertW(-x).

The programs for A292633, there is no canonical definition to state claims against.
-/

/-! ## A292633.P3082193509744562478

`A294411(∑[4*n])`
-/

namespace A292633.P3082193509744562478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294411 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292633.P3082193509744562478

/-! ## A292633.P12896172397434450101

`lcm(n, A294411(A046092(n)))`
-/

namespace A292633.P12896172397434450101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A294411 (A046092 n).toNat)

end

end A292633.P12896172397434450101

/-! ## A292633.P239702698179288961

`record[A294411(n*A003982(n))]`
-/

namespace A292633.P239702698179288961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294411 ((n : ℤ) * A003982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292633.P239702698179288961

/-! ## A292633.P985681565627829575

`record[A294411(A001972(A014601(n)))]`
-/

namespace A292633.P985681565627829575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294411 (A001972 (A014601 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292633.P985681565627829575

/-! ## A292633.P11486925720022568063

`A057427(n)*A294411(A046092(n))`
-/

namespace A292633.P11486925720022568063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A294411 (A046092 n).toNat

end

end A292633.P11486925720022568063

/-!
# A292636: Rank of (3-r)*n when all the numbers (3-r)*j and (3+r)*k, where r = sqrt(2), j>=1, k>=1, are jointly ranked.

The programs for A292636, the canonical program `A292636.P15005814185417814161` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292636 has offset 1).

The definition of A292636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292636.P15005814185417814161

`n+1+floor((n+1)*(3-sqrt(2))/(3+sqrt(2)))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292636

/-- `n+1+floor((n+1)*(3-sqrt(2))/(3+sqrt(2)))` -/
def P15005814185417814161.Spec : Prop :=
  ∀ n, P15005814185417814161.a n = A292636 (n + 1)

theorem P15005814185417814161.correct : P15005814185417814161.Spec := by
  intro n
  simp only [A292636, Nat.add_sub_cancel]

end A292636

/-! ## A292636.P2051136376184731432

`comp[floor(A008458(n)/(3-sqrt(2)))]`
-/

namespace A292636.P2051136376184731432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008458 n : ℝ) / (3 - Real.sqrt (2 : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A292636.P2051136376184731432

namespace A292636

/-- `comp[floor(A008458(n)/(3-sqrt(2)))]` -/
def P2051136376184731432.Spec : Prop :=
  ∀ n, (P2051136376184731432.a n : ℤ) = A292636 (n + 1)

end A292636

/-! ## A292636.P13097363822352839297

`Δ[A045944(n)]%A286323(3*(n+1))`
-/

namespace A292636.P13097363822352839297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A286323 (3 * (n + 1)))

end

end A292636.P13097363822352839297

namespace A292636

/-- `Δ[A045944(n)]%A286323(3*(n+1))` -/
def P13097363822352839297.Spec : Prop :=
  ∀ n, P13097363822352839297.a n = A292636 (n + 1)

end A292636

/-! ## A292636.P14019736129101470378

`A016969(n+1)%(A286323(A008486(n+1))+6)`
-/

namespace A292636.P14019736129101470378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 (n + 1)) (A286323 (A008486 (n + 1)).toNat + 6)

end

end A292636.P14019736129101470378

namespace A292636

/-- `A016969(n+1)%(A286323(A008486(n+1))+6)` -/
def P14019736129101470378.Spec : Prop :=
  ∀ n, P14019736129101470378.a n = A292636 (n + 1)

end A292636

/-!
# A292637: Rank of (3+r)*n when all the numbers (3-r)*j and (3+r)*k, where r = sqrt(2), j>=1, k>=1, are jointly ranked.

The programs for A292637, the canonical program `A292637.P10829520132965915622` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292637 has offset 1).

The definition of A292637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292637.P10829520132965915622

`n+1+floor((n+1)*(3+sqrt(2))/(3-sqrt(2)))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292637

/-- `n+1+floor((n+1)*(3+sqrt(2))/(3-sqrt(2)))` -/
def P10829520132965915622.Spec : Prop :=
  ∀ n, P10829520132965915622.a n = A292637 (n + 1)

theorem P10829520132965915622.correct : P10829520132965915622.Spec := by
  intro n
  simp only [A292637, Nat.add_sub_cancel]

end A292637

/-!
# A292638: Rank of (3-r)*n when all the numbers (3-r)*j and (3+r)*k, where r = sqrt(5), j>=1, k>=1, are jointly ranked.

The programs for A292638, the canonical program `A292638.P6012436071896694180` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292638 has offset 1).

The definition of A292638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292638.P10173935396892059868

`floor(3*(n+1)/ϕ²)`
-/

namespace A292638.P10173935396892059868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n + 1 : ℝ) / Real.goldenRatio ^ 2)⌋

end

end A292638.P10173935396892059868

namespace A292638

/-- `floor(3*(n+1)/ϕ²)` -/
def P10173935396892059868.Spec : Prop :=
  ∀ n, P10173935396892059868.a n = A292638 (n + 1)

end A292638

/-! ## A292638.P9110059437195429151

`comp[A004919(n)+n]`
-/

namespace A292638.P9110059437195429151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004919 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A292638.P9110059437195429151

namespace A292638

/-- `comp[A004919(n)+n]` -/
def P9110059437195429151.Spec : Prop :=
  ∀ n, (P9110059437195429151.a n : ℤ) = A292638 (n + 1)

end A292638

/-! ## A292638.P6012436071896694180

`A195174(n+1)+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292638

/-- `A195174(n+1)+n` -/
def P6012436071896694180.Spec : Prop :=
  ∀ n, P6012436071896694180.a n = A292638 (n + 1)

theorem P6012436071896694180.correct : P6012436071896694180.Spec := by
  intro n
  simp only [A292638, Nat.add_sub_cancel]

end A292638

/-! ## A292638.P293978294915658412

`comp[A026352(3*n)-1]`
-/

namespace A292638.P293978294915658412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (3 * n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A292638.P293978294915658412

namespace A292638

/-- `comp[A026352(3*n)-1]` -/
def P293978294915658412.Spec : Prop :=
  ∀ n, (P293978294915658412.a n : ℤ) = A292638 (n + 1)

end A292638

/-! ## A292638.P11221117044549329237

`comp[A003622(3*(n+1))]+1`
-/

namespace A292638.P11221117044549329237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (3 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A292638.P11221117044549329237

namespace A292638

/-- `comp[A003622(3*(n+1))]+1` -/
def P11221117044549329237.Spec : Prop :=
  ∀ n, (P11221117044549329237.a n : ℤ) = A292638 (n + 1)

end A292638

/-! ## A292638.P10744027541085806254

`comp[A001950(3*(n+1))-1]+1`
-/

namespace A292638.P10744027541085806254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (3 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A292638.P10744027541085806254

namespace A292638

/-- `comp[A001950(3*(n+1))-1]+1` -/
def P10744027541085806254.Spec : Prop :=
  ∀ n, (P10744027541085806254.a n : ℤ) = A292638 (n + 1)

end A292638

/-! ## A292638.P13788678632455161568

`A017257(n)-A292639(n+1)`
-/

namespace A292638.P13788678632455161568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - A292639 (n + 1)

end

end A292638.P13788678632455161568

namespace A292638

/-- `A017257(n)-A292639(n+1)` -/
def P13788678632455161568.Spec : Prop :=
  ∀ n, P13788678632455161568.a n = A292638 (n + 1)

end A292638

/-! ## A292638.P15288728359007497494

`comp[A026351(A026351(3*n))-2]`
-/

namespace A292638.P15288728359007497494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A026351 (3 * n)).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A292638.P15288728359007497494

namespace A292638

/-- `comp[A026351(A026351(3*n))-2]` -/
def P15288728359007497494.Spec : Prop :=
  ∀ n, (P15288728359007497494.a n : ℤ) = A292638 (n + 1)

end A292638

/-! ## A292638.P17322706636375750211

`A008589(n+1)-A004919(n+1)+n`
-/

namespace A292638.P17322706636375750211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (n + 1) - A004919 (n + 1) + (n : ℤ)

end

end A292638.P17322706636375750211

namespace A292638

/-- `A008589(n+1)-A004919(n+1)+n` -/
def P17322706636375750211.Spec : Prop :=
  ∀ n, P17322706636375750211.a n = A292638 (n + 1)

end A292638

/-! ## A292638.P725835688792888602

`A005206(A005206(3*n+1))`
-/

namespace A292638.P725835688792888602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (3 * n + 1)).toNat

end

end A292638.P725835688792888602

namespace A292638

/-- `A005206(A005206(3*n+1))` -/
def P725835688792888602.Spec : Prop :=
  ∀ n, P725835688792888602.a n = A292638 (n + 1)

end A292638

/-! ## A292638.P15892635325731426581

`A016789(n)-A005206(A016789(n))`
-/

namespace A292638.P15892635325731426581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A005206 (A016789 n).toNat

end

end A292638.P15892635325731426581

namespace A292638

/-- `A016789(n)-A005206(A016789(n))` -/
def P15892635325731426581.Spec : Prop :=
  ∀ n, P15892635325731426581.a n = A292638 (n + 1)

end A292638

/-! ## A292638.P5253469846034372214

`A005378(A005378(3*n+1))`
-/

namespace A292638.P5253469846034372214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A005378 (3 * n + 1)).toNat

end

end A292638.P5253469846034372214

namespace A292638

/-- `A005378(A005378(3*n+1))` -/
def P5253469846034372214.Spec : Prop :=
  ∀ n, P5253469846034372214.a n = A292638 (n + 1)

end A292638

/-! ## A292638.P8394302171484609357

`A060144(3*(n+1))`
-/

namespace A292638.P8394302171484609357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (3 * (n + 1))

end

end A292638.P8394302171484609357

namespace A292638

/-- `A060144(3*(n+1))` -/
def P8394302171484609357.Spec : Prop :=
  ∀ n, P8394302171484609357.a n = A292638 (n + 1)

end A292638

/-! ## A292638.P8594559971053608722

`A189663(3*n+4)-1`
-/

namespace A292638.P8594559971053608722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (3 * n + 4) - 1

end

end A292638.P8594559971053608722

namespace A292638

/-- `A189663(3*n+4)-1` -/
def P8594559971053608722.Spec : Prop :=
  ∀ n, P8594559971053608722.a n = A292638 (n + 1)

theorem P8594559971053608722.correct : P8594559971053608722.Spec := by
  intro n
  simp only [A292638, Nat.add_sub_cancel, A292638.P8594559971053608722.a, A292638.P6012436071896694180.a, A189663, A189663.P2701264429035756382.a, A195174, A195174.P17306231674566011983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A292638

/-! ## A292638.P9736214900987368780

`A060143(A019446(3*n+2))`
-/

namespace A292638.P9736214900987368780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A019446 (3 * n + 2)).toNat

end

end A292638.P9736214900987368780

namespace A292638

/-- `A060143(A019446(3*n+2))` -/
def P9736214900987368780.Spec : Prop :=
  ∀ n, P9736214900987368780.a n = A292638 (n + 1)

end A292638

/-! ## A292638.P3101809643238835798

`A004526(A187329(2*n+n+3))`
-/

namespace A292638.P3101809643238835798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187329 (2 * n + (n + 3))).toNat

end

end A292638.P3101809643238835798

namespace A292638

/-- `A004526(A187329(2*n+n+3))` -/
def P3101809643238835798.Spec : Prop :=
  ∀ n, P3101809643238835798.a n = A292638 (n + 1)

end A292638

/-! ## A292638.P12094737493384647590

`A028310(3*(n+1))-ceil(A028310(3*(n+1))/ϕ)`
-/

namespace A292638.P12094737493384647590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (3 * (n + 1)) - ⌈(A028310 (3 * (n + 1)) : ℝ) / Real.goldenRatio⌉

end

end A292638.P12094737493384647590

namespace A292638

/-- `A028310(3*(n+1))-ceil(A028310(3*(n+1))/ϕ)` -/
def P12094737493384647590.Spec : Prop :=
  ∀ n, P12094737493384647590.a n = A292638 (n + 1)

end A292638

/-! ## A292638.P2624467267593260848

`A016789(n)-A060143(A016789(n)+1)`
-/

namespace A292638.P2624467267593260848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A060143 (A016789 n + 1).toNat

end

end A292638.P2624467267593260848

namespace A292638

/-- `A016789(n)-A060143(A016789(n)+1)` -/
def P2624467267593260848.Spec : Prop :=
  ∀ n, P2624467267593260848.a n = A292638 (n + 1)

end A292638

/-! ## A292638.P14426972261690044564

`A249115(A008486(n+1))-A008486(n+1)`
-/

namespace A292638.P14426972261690044564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (A008486 (n + 1)).toNat - A008486 (n + 1)

end

end A292638.P14426972261690044564

namespace A292638

/-- `A249115(A008486(n+1))-A008486(n+1)` -/
def P14426972261690044564.Spec : Prop :=
  ∀ n, P14426972261690044564.a n = A292638 (n + 1)

end A292638

/-! ## A292638.P17718263175942024167

`A016969(n)-A054084(A016969(n)+1)`
-/

namespace A292638.P17718263175942024167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A054084 (A016969 n + 1).toNat

end

end A292638.P17718263175942024167

namespace A292638

/-- `A016969(n)-A054084(A016969(n)+1)` -/
def P17718263175942024167.Spec : Prop :=
  ∀ n, P17718263175942024167.a n = A292638 (n + 1)

end A292638

/-!
# A292639: Rank of (3+r)*n when all the numbers (3-r)*j and (3+r)*k, where r = sqrt(5), j>=1, k>=1, are jointly ranked.

The programs for A292639, the canonical program `A292639.P16554536473788705745` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292639 has offset 1).

The definition of A292639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292639.P8363617139211664369

`floor(3*(n+1)*ϕ²)`
-/

namespace A292639.P8363617139211664369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n + 1 : ℝ) * Real.goldenRatio ^ 2)⌋

end

end A292639.P8363617139211664369

namespace A292639

/-- `floor(3*(n+1)*ϕ²)` -/
def P8363617139211664369.Spec : Prop :=
  ∀ n, P8363617139211664369.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P16554536473788705745

`A004959(n+1)+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A292639

/-- `A004959(n+1)+n` -/
def P16554536473788705745.Spec : Prop :=
  ∀ n, P16554536473788705745.a n = A292639 (n + 1)

theorem P16554536473788705745.correct : P16554536473788705745.Spec := by
  intro n
  simp only [A292639, Nat.add_sub_cancel]

end A292639

/-! ## A292639.P2103846441596543040

`∑[A018246(n+1)+2]`
-/

namespace A292639.P2103846441596543040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018246 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292639.P2103846441596543040

namespace A292639

/-- `∑[A018246(n+1)+2]` -/
def P2103846441596543040.Spec : Prop :=
  ∀ n, P2103846441596543040.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P8598411899406770237

`8*(n+1)-A195174(n+1)`
-/

namespace A292639.P8598411899406770237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - A195174 (n + 1)

end

end A292639.P8598411899406770237

namespace A292639

/-- `8*(n+1)-A195174(n+1)` -/
def P8598411899406770237.Spec : Prop :=
  ∀ n, P8598411899406770237.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P13983170813717774653

`A017257(n)-A292638(n+1)`
-/

namespace A292639.P13983170813717774653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - A292638 (n + 1)

end

end A292639.P13983170813717774653

namespace A292639

/-- `A017257(n)-A292638(n+1)` -/
def P13983170813717774653.Spec : Prop :=
  ∀ n, P13983170813717774653.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P10184820768111736277

`A004919(n+1)+1+n`
-/

namespace A292639.P10184820768111736277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004919 (n + 1) + 1 + (n : ℤ)

end

end A292639.P10184820768111736277

namespace A292639

/-- `A004919(n+1)+1+n` -/
def P10184820768111736277.Spec : Prop :=
  ∀ n, P10184820768111736277.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P17781617235961543596

`A003622(3*(n+1))+1`
-/

namespace A292639.P17781617235961543596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (3 * (n + 1)) + 1

end

end A292639.P17781617235961543596

namespace A292639

/-- `A003622(3*(n+1))+1` -/
def P17781617235961543596.Spec : Prop :=
  ∀ n, P17781617235961543596.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P15180571286544427185

`A001950(3*(n+1))`
-/

namespace A292639.P15180571286544427185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (3 * (n + 1))

end

end A292639.P15180571286544427185

namespace A292639

/-- `A001950(3*(n+1))` -/
def P15180571286544427185.Spec : Prop :=
  ∀ n, P15180571286544427185.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P9460634078504272853

`A004957(3*(n+1))-1`
-/

namespace A292639.P9460634078504272853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (3 * (n + 1)) - 1

end

end A292639.P9460634078504272853

namespace A292639

/-- `A004957(3*(n+1))-1` -/
def P9460634078504272853.Spec : Prop :=
  ∀ n, P9460634078504272853.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P13151755061347998017

`A026352(3*(n+1))-1`
-/

namespace A292639.P13151755061347998017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (3 * (n + 1)) - 1

end

end A292639.P13151755061347998017

namespace A292639

/-- `A026352(3*(n+1))-1` -/
def P13151755061347998017.Spec : Prop :=
  ∀ n, P13151755061347998017.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P2734844093629950677

`A057843(3*(n+1))+3`
-/

namespace A292639.P2734844093629950677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057843 (3 * (n + 1)) + 3

end

end A292639.P2734844093629950677

namespace A292639

/-- `A057843(3*(n+1))+3` -/
def P2734844093629950677.Spec : Prop :=
  ∀ n, P2734844093629950677.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P6212806422862273807

`A022413(3*(n+1))-3`
-/

namespace A292639.P6212806422862273807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (3 * (n + 1)) - 3

end

end A292639.P6212806422862273807

namespace A292639

/-- `A022413(3*(n+1))-3` -/
def P6212806422862273807.Spec : Prop :=
  ∀ n, P6212806422862273807.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P14919936232025587264

`A283234(3*(n+1))/2`
-/

namespace A292639.P14919936232025587264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283234 (3 * (n + 1)) : ℚ) / 2

end

end A292639.P14919936232025587264

namespace A292639

/-- `A283234(3*(n+1))/2` -/
def P14919936232025587264.Spec : Prop :=
  ∀ n, P14919936232025587264.a n = (A292639 (n + 1) : ℚ)

end A292639

/-! ## A292639.P8418524446853006438

`A026274(A016777(n)+1)+2`
-/

namespace A292639.P8418524446853006438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (A016777 n + 1).toNat + 2

end

end A292639.P8418524446853006438

namespace A292639

/-- `A026274(A016777(n)+1)+2` -/
def P8418524446853006438.Spec : Prop :=
  ∀ n, P8418524446853006438.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P11085112731363380506

`∩[A001950(n+1), A283772(n+1)]`
-/

namespace A292639.P11085112731363380506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292639.P11085112731363380506

namespace A292639

/-- `∩[A001950(n+1), A283772(n+1)]` -/
def P11085112731363380506.Spec : Prop :=
  ∀ n, (P11085112731363380506.a n : ℤ) = A292639 (n + 1)

end A292639

/-! ## A292639.P3446049428188690666

`A072061(6*(n+1))`
-/

namespace A292639.P3446049428188690666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072061 (6 * (n + 1))

end

end A292639.P3446049428188690666

namespace A292639

/-- `A072061(6*(n+1))` -/
def P3446049428188690666.Spec : Prop :=
  ∀ n, P3446049428188690666.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P5559515353920122322

`A187485(6*(n+1))`
-/

namespace A292639.P5559515353920122322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (6 * (n + 1))

end

end A292639.P5559515353920122322

namespace A292639

/-- `A187485(6*(n+1))` -/
def P5559515353920122322.Spec : Prop :=
  ∀ n, P5559515353920122322.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P5783850758586938631

`A188222(6*(n+1))`
-/

namespace A292639.P5783850758586938631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (6 * (n + 1))

end

end A292639.P5783850758586938631

namespace A292639

/-- `A188222(6*(n+1))` -/
def P5783850758586938631.Spec : Prop :=
  ∀ n, P5783850758586938631.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P18009113751485337917

`A054084(A016969(n))`
-/

namespace A292639.P18009113751485337917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (A016969 n).toNat

end

end A292639.P18009113751485337917

namespace A292639

/-- `A054084(A016969(n))` -/
def P18009113751485337917.Spec : Prop :=
  ∀ n, P18009113751485337917.a n = A292639 (n + 1)

end A292639

/-! ## A292639.P13226085848552312521

`A307295(A016957(n))`
-/

namespace A292639.P13226085848552312521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 (A016957 n).toNat

end

end A292639.P13226085848552312521

namespace A292639

/-- `A307295(A016957(n))` -/
def P13226085848552312521.Spec : Prop :=
  ∀ n, P13226085848552312521.a n = A292639 (n + 1)

end A292639

/-!
# A292640: Rank of (4-r)*n when all the numbers (4-r)*j and (4+r)*k, where r = sqrt(2), j>=1, k>=1, are jointly ranked.

The programs for A292640, the canonical program `A292640.P11122964414089063772` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292640 has offset 1).

The definition of A292640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292640.P11122964414089063772

`n+1+floor((n+1)*(4-sqrt(2))/(4+sqrt(2)))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292640

/-- `n+1+floor((n+1)*(4-sqrt(2))/(4+sqrt(2)))` -/
def P11122964414089063772.Spec : Prop :=
  ∀ n, P11122964414089063772.a n = A292640 (n + 1)

theorem P11122964414089063772.correct : P11122964414089063772.Spec := by
  intro n
  simp only [A292640, Nat.add_sub_cancel]

end A292640

/-! ## A292640.P5849889421218390574

`∑[char[A137804(n+1)]+1]`
-/

namespace A292640.P5849889421218390574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292640.P5849889421218390574

namespace A292640

/-- `∑[char[A137804(n+1)]+1]` -/
def P5849889421218390574.Spec : Prop :=
  ∀ n, (P5849889421218390574.a n : ℤ) = A292640 (n + 1)

end A292640

/-! ## A292640.P17763653241046695010

`comp[comp[A137803(n+1)]+n]`
-/

namespace A292640.P17763653241046695010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A292640.P17763653241046695010

namespace A292640

/-- `comp[comp[A137803(n+1)]+n]` -/
def P17763653241046695010.Spec : Prop :=
  ∀ n, (P17763653241046695010.a n : ℤ) = A292640 (n + 1)

end A292640

/-! ## A292640.P11954014047525346124

`A004396(A330184(n+1))`
-/

namespace A292640.P11954014047525346124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A330184 (n + 1)).toNat

end

end A292640.P11954014047525346124

namespace A292640

/-- `A004396(A330184(n+1))` -/
def P11954014047525346124.Spec : Prop :=
  ∀ n, P11954014047525346124.a n = A292640 (n + 1)

end A292640

/-! ## A292640.P17371969593730361860

`A003056(∑[or(1, A190058(n+1))])`
-/

namespace A292640.P17371969593730361860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A190058 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292640.P17371969593730361860

namespace A292640

/-- `A003056(∑[or(1, A190058(n+1))])` -/
def P17371969593730361860.Spec : Prop :=
  ∀ n, P17371969593730361860.a n = A292640 (n + 1)

end A292640

/-! ## A292640.P7427597954584448411

`A003056(∑[A190058(n+1)+A010060(n)])`
-/

namespace A292640.P7427597954584448411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190058 (n + 1) + A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292640.P7427597954584448411

namespace A292640

/-- `A003056(∑[A190058(n+1)+A010060(n)])` -/
def P7427597954584448411.Spec : Prop :=
  ∀ n, P7427597954584448411.a n = A292640 (n + 1)

end A292640

/-! ## A292640.P897136459255305202

`A103128(A152785(n+2))`
-/

namespace A292640.P897136459255305202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A152785 (n + 2)).toNat

end

end A292640.P897136459255305202

namespace A292640

/-- `A103128(A152785(n+2))` -/
def P897136459255305202.Spec : Prop :=
  ∀ n, P897136459255305202.a n = A292640 (n + 1)

end A292640

/-!
# A292641: Rank of (4+r)*n when all the numbers (4-r)*j and (4+r)*k, where r = sqrt(2), j>=1, k>=1, are jointly ranked.

The programs for A292641, the canonical program `A292641.P3636368433729091843` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292641 has offset 1).

The definition of A292641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292641.P16417570082883090191

`floor(8*(n+1)/(4-sqrt(2)))`
-/

namespace A292641.P16417570082883090191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * ((n + 1 : ℝ) / (4 - Real.sqrt (2 : ℝ)))⌋

end

end A292641.P16417570082883090191

namespace A292641

/-- `floor(8*(n+1)/(4-sqrt(2)))` -/
def P16417570082883090191.Spec : Prop :=
  ∀ n, P16417570082883090191.a n = A292641 (n + 1)

end A292641

/-! ## A292641.P3636368433729091843

`n+1+A137804(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292641

/-- `n+1+A137804(n+1)` -/
def P3636368433729091843.Spec : Prop :=
  ∀ n, P3636368433729091843.a n = A292641 (n + 1)

theorem P3636368433729091843.correct : P3636368433729091843.Spec := by
  intro n
  simp only [A292641, Nat.add_sub_cancel]

end A292641

/-! ## A292641.P2416577882825441350

`record[A137805(n+1)+1]+n`
-/

namespace A292641.P2416577882825441350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A292641.P2416577882825441350

namespace A292641

/-- `record[A137805(n+1)+1]+n` -/
def P2416577882825441350.Spec : Prop :=
  ∀ n, P2416577882825441350.a n = A292641 (n + 1)

end A292641

/-! ## A292641.P2961996960094111947

`A137805(A137803(n+1))+1+n`
-/

namespace A292641.P2961996960094111947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A137803 (n + 1)).toNat + 1 + (n : ℤ)

end

end A292641.P2961996960094111947

namespace A292641

/-- `A137805(A137803(n+1))+1+n` -/
def P2961996960094111947.Spec : Prop :=
  ∀ n, P2961996960094111947.a n = A292641 (n + 1)

end A292641

/-! ## A292641.P15742979116909554668

`A286323(2*(n+1))`
-/

namespace A292641.P15742979116909554668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286323 (2 * (n + 1))

end

end A292641.P15742979116909554668

namespace A292641

/-- `A286323(2*(n+1))` -/
def P15742979116909554668.Spec : Prop :=
  ∀ n, P15742979116909554668.a n = A292641 (n + 1)

end A292641

/-! ## A292641.P11413664653432551402

`A026249(A356057(n+1))+1+n`
-/

namespace A292641.P11413664653432551402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A356057 (n + 1)).toNat + 1 + (n : ℤ)

end

end A292641.P11413664653432551402

namespace A292641

/-- `A026249(A356057(n+1))+1+n` -/
def P11413664653432551402.Spec : Prop :=
  ∀ n, P11413664653432551402.a n = A292641 (n + 1)

end A292641

/-! ## A292641.P11535894144861003214

`A004396(A330183(n+1))`
-/

namespace A292641.P11535894144861003214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A330183 (n + 1)).toNat

end

end A292641.P11535894144861003214

namespace A292641

/-- `A004396(A330183(n+1))` -/
def P11535894144861003214.Spec : Prop :=
  ∀ n, P11535894144861003214.a n = A292641 (n + 1)

end A292641

/-! ## A292641.P11640477778345038732

`A026249(A356059(n+1))+1+n`
-/

namespace A292641.P11640477778345038732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A356059 (n + 1)).toNat + 1 + (n : ℤ)

end

end A292641.P11640477778345038732

namespace A292641

/-- `A026249(A356059(n+1))+1+n` -/
def P11640477778345038732.Spec : Prop :=
  ∀ n, P11640477778345038732.a n = A292641 (n + 1)

end A292641

/-! ## A292641.P4693592770862879705

`A002264(A330183(2*(n+1)))`
-/

namespace A292641.P4693592770862879705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A330183 (2 * (n + 1))).toNat

end

end A292641.P4693592770862879705

namespace A292641

/-- `A002264(A330183(2*(n+1)))` -/
def P4693592770862879705.Spec : Prop :=
  ∀ n, P4693592770862879705.a n = A292641 (n + 1)

end A292641

/-!
# A292642: Rank of (5-r)*n when all the numbers (5-r)*j and (5+r)*k, where r = sqrt(2), j>=1, k>=1, are jointly ranked.

The programs for A292642, the canonical program `A292642.P6729689468121564627` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292642 has offset 1).

The definition of A292642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292642.P6729689468121564627

`n+1+floor((n+1)*(5-sqrt(2))/(5+sqrt(2)))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292642

/-- `n+1+floor((n+1)*(5-sqrt(2))/(5+sqrt(2)))` -/
def P6729689468121564627.Spec : Prop :=
  ∀ n, P6729689468121564627.a n = A292642 (n + 1)

theorem P6729689468121564627.correct : P6729689468121564627.Spec := by
  intro n
  simp only [A292642, Nat.add_sub_cancel]

end A292642

/-! ## A292642.P6748630611852794044

`A227568(A187224((n+1)²))`
-/

namespace A292642.P6748630611852794044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A187224 ((n + 1) ^ 2)).toNat

end

end A292642.P6748630611852794044

namespace A292642

/-- `A227568(A187224((n+1)²))` -/
def P6748630611852794044.Spec : Prop :=
  ∀ n, P6748630611852794044.a n = A292642 (n + 1)

end A292642

/-! ## A292642.P2748522005940220336

`A367328(A058066(n+1))`
-/

namespace A292642.P2748522005940220336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367328 (A058066 (n + 1)).toNat

end

end A292642.P2748522005940220336

namespace A292642

/-- `A367328(A058066(n+1))` -/
def P2748522005940220336.Spec : Prop :=
  ∀ n, P2748522005940220336.a n = A292642 (n + 1)

end A292642

/-! ## A292642.P14273072953144136799

`A112318(A190373(n+1))`
-/

namespace A292642.P14273072953144136799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A190373 (n + 1)).toNat

end

end A292642.P14273072953144136799

namespace A292642

/-- `A112318(A190373(n+1))` -/
def P14273072953144136799.Spec : Prop :=
  ∀ n, P14273072953144136799.a n = A292642 (n + 1)

end A292642

/-! ## A292642.P10321346717855986523

`A177151(A292653(n+1))`
-/

namespace A292642.P10321346717855986523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A292653 (n + 1)).toNat

end

end A292642.P10321346717855986523

namespace A292642

/-- `A177151(A292653(n+1))` -/
def P10321346717855986523.Spec : Prop :=
  ∀ n, P10321346717855986523.a n = A292642 (n + 1)

end A292642

/-!
# A292643: Rank of (5+r)*n when all the numbers (5-r)*j and (5+r)*k, where r = sqrt(2), j>=1, k>=1, are jointly ranked.

The programs for A292643, the canonical program `A292643.P17746998049388737075` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292643 has offset 1).

The definition of A292643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292643.P17746998049388737075

`n+1+floor((n+1)*(5+sqrt(2))/(5-sqrt(2)))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292643

/-- `n+1+floor((n+1)*(5+sqrt(2))/(5-sqrt(2)))` -/
def P17746998049388737075.Spec : Prop :=
  ∀ n, P17746998049388737075.a n = A292643 (n + 1)

theorem P17746998049388737075.correct : P17746998049388737075.Spec := by
  intro n
  simp only [A292643, Nat.add_sub_cancel]

end A292643

/-! ## A292643.P12103556785221720757

`record[(A292642(n+1)+1)%A292642(n+2)]`
-/

namespace A292643.P12103556785221720757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292642 (n + 1) + 1) (A292642 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292643.P12103556785221720757

namespace A292643

/-- `record[(A292642(n+1)+1)%A292642(n+2)]` -/
def P12103556785221720757.Spec : Prop :=
  ∀ n, P12103556785221720757.a n = A292643 (n + 1)

end A292643

/-! ## A292643.P9424150501596627264

`A339183(A022289(n+1))`
-/

namespace A292643.P9424150501596627264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A022289 (n + 1)).toNat

end

end A292643.P9424150501596627264

namespace A292643

/-- `A339183(A022289(n+1))` -/
def P9424150501596627264.Spec : Prop :=
  ∀ n, P9424150501596627264.a n = A292643 (n + 1)

end A292643

/-! ## A292643.P2338175418494079961

`A177151(A206908(n+1))`
-/

namespace A292643.P2338175418494079961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A206908 (n + 1)).toNat

end

end A292643.P2338175418494079961

namespace A292643

/-- `A177151(A206908(n+1))` -/
def P2338175418494079961.Spec : Prop :=
  ∀ n, P2338175418494079961.a n = A292643 (n + 1)

end A292643

/-! ## A292643.P15197281851746835630

`A139338(A016873(n))`
-/

namespace A292643.P15197281851746835630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (A016873 n).toNat

end

end A292643.P15197281851746835630

namespace A292643

/-- `A139338(A016873(n))` -/
def P15197281851746835630.Spec : Prop :=
  ∀ n, P15197281851746835630.a n = A292643 (n + 1)

end A292643

/-!
# A292644: Rank of (6-r)*n when all the numbers (6-r)*j and (6+r)*k, where r = sqrt(2), j>=1, k>=1, are jointly ranked.

The programs for A292644, the canonical program `A292644.P4323142359451631737` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292644 has offset 1).

The definition of A292644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292644.P4323142359451631737

`n+1+floor((n+1)*(6-sqrt(2))/(6+sqrt(2)))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292644

/-- `n+1+floor((n+1)*(6-sqrt(2))/(6+sqrt(2)))` -/
def P4323142359451631737.Spec : Prop :=
  ∀ n, P4323142359451631737.a n = A292644 (n + 1)

theorem P4323142359451631737.correct : P4323142359451631737.Spec := by
  intro n
  simp only [A292644, Nat.add_sub_cancel]

end A292644

/-! ## A292644.P6994192806463204530

`∑[A001468(A055649(n))]`
-/

namespace A292644.P6994192806463204530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A055649 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292644.P6994192806463204530

namespace A292644

/-- `∑[A001468(A055649(n))]` -/
def P6994192806463204530.Spec : Prop :=
  ∀ n, P6994192806463204530.a n = A292644 (n + 1)

end A292644

/-! ## A292644.P16177511177491794350

`or(A000201(n+1), A004198(A300056(n+1)))`
-/

namespace A292644.P16177511177491794350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000201 (n + 1)) (A004198 (A300056 (n + 1)).toNat)

end

end A292644.P16177511177491794350

namespace A292644

/-- `or(A000201(n+1), A004198(A300056(n+1)))` -/
def P16177511177491794350.Spec : Prop :=
  ∀ n, P16177511177491794350.a n = A292644 (n + 1)

end A292644

/-! ## A292644.P10650741384923312894

`A002024(∑[A187576(n+1)+n])`
-/

namespace A292644.P10650741384923312894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187576 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292644.P10650741384923312894

namespace A292644

/-- `A002024(∑[A187576(n+1)+n])` -/
def P10650741384923312894.Spec : Prop :=
  ∀ n, P10650741384923312894.a n = A292644 (n + 1)

end A292644

/-! ## A292644.P1403407374127211558

`A003056(A056558(n)+∑[A001950(n+1)])`
-/

namespace A292644.P1403407374127211558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A056558 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292644.P1403407374127211558

namespace A292644

/-- `A003056(A056558(n)+∑[A001950(n+1)])` -/
def P1403407374127211558.Spec : Prop :=
  ∀ n, P1403407374127211558.a n = A292644 (n + 1)

end A292644

/-!
# A292645: Rank of (6+r)*n when all the numbers (6-r)*j and (6+r)*k, where r = sqrt(2), j>=1, k>=1, are jointly ranked.

The programs for A292645, the canonical program `A292645.P11388070162325612990` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292645 has offset 1).

The definition of A292645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292645.P11388070162325612990

`n+1+floor((n+1)*(6+sqrt(2))/(6-sqrt(2)))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292645

/-- `n+1+floor((n+1)*(6+sqrt(2))/(6-sqrt(2)))` -/
def P11388070162325612990.Spec : Prop :=
  ∀ n, P11388070162325612990.a n = A292645 (n + 1)

theorem P11388070162325612990.correct : P11388070162325612990.Spec := by
  intro n
  simp only [A292645, Nat.add_sub_cancel]

end A292645

/-! ## A292645.P11541671799266055533

`record[(A292644(n+1)+1)%A292644(n+2)]`
-/

namespace A292645.P11541671799266055533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292644 (n + 1) + 1) (A292644 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292645.P11541671799266055533

namespace A292645

/-- `record[(A292644(n+1)+1)%A292644(n+2)]` -/
def P11541671799266055533.Spec : Prop :=
  ∀ n, P11541671799266055533.a n = A292645 (n + 1)

end A292645

/-! ## A292645.P5360472170705817347

`∪[A001950(n+1), A014603(A007223(n+2))]`
-/

namespace A292645.P5360472170705817347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014603 (A007223 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A292645.P5360472170705817347

namespace A292645

/-- `∪[A001950(n+1), A014603(A007223(n+2))]` -/
def P5360472170705817347.Spec : Prop :=
  ∀ n, (P5360472170705817347.a n : ℤ) = A292645 (n + 1)

end A292645

/-!
# A292646: Rank of e*n when all the numbers e*j and (e+1)*k, for j>=1, k>=1, are jointly ranked.

The programs for A292646, the canonical program `A292646.P6989065873889510323` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292646 has offset 1).

The definition of A292646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292646.P6182829422928452586

`∑[char[A006594(n+1)]+1]`
-/

namespace A292646.P6182829422928452586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292646.P6182829422928452586

namespace A292646

/-- `∑[char[A006594(n+1)]+1]` -/
def P6182829422928452586.Spec : Prop :=
  ∀ n, (P6182829422928452586.a n : ℤ) = A292646 (n + 1)

end A292646

/-! ## A292646.P8640375064252877584

`∑[2-char[A022843(n)+n]]`
-/

namespace A292646.P8640375064252877584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292646.P8640375064252877584

namespace A292646

/-- `∑[2-char[A022843(n)+n]]` -/
def P8640375064252877584.Spec : Prop :=
  ∀ n, P8640375064252877584.a n = A292646 (n + 1)

end A292646

/-! ## A292646.P4827842674549677757

`comp[comp[A000572(n+1)]+n]`
-/

namespace A292646.P4827842674549677757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A292646.P4827842674549677757

namespace A292646

/-- `comp[comp[A000572(n+1)]+n]` -/
def P4827842674549677757.Spec : Prop :=
  ∀ n, (P4827842674549677757.a n : ℤ) = A292646 (n + 1)

end A292646

/-! ## A292646.P18072194592642982566

`comp[comp[A279607(2*(n+1))+1+n]+n]`
-/

namespace A292646.P18072194592642982566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (2 * (n + 1)) + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A292646.P18072194592642982566

namespace A292646

/-- `comp[comp[A279607(2*(n+1))+1+n]+n]` -/
def P18072194592642982566.Spec : Prop :=
  ∀ n, (P18072194592642982566.a n : ℤ) = A292646 (n + 1)

end A292646

/-! ## A292646.P6989065873889510323

`A189519(n+1)%A000572(n+1)+1+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A292646

/-- `A189519(n+1)%A000572(n+1)+1+n` -/
def P6989065873889510323.Spec : Prop :=
  ∀ n, P6989065873889510323.a n = A292646 (n + 1)

theorem P6989065873889510323.correct : P6989065873889510323.Spec := by
  intro n
  simp only [A292646, Nat.add_sub_cancel]

end A292646

/-! ## A292646.P3349544717218007021

`A008619(A292665(n+1))+n`
-/

namespace A292646.P3349544717218007021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A292665 (n + 1)).toNat + (n : ℤ)

end

end A292646.P3349544717218007021

namespace A292646

/-- `A008619(A292665(n+1))+n` -/
def P3349544717218007021.Spec : Prop :=
  ∀ n, P3349544717218007021.a n = A292646 (n + 1)

end A292646

/-! ## A292646.P2117773458319938655

`A110654(A292665(n+1)+1)+n`
-/

namespace A292646.P2117773458319938655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A292665 (n + 1) + 1).toNat + (n : ℤ)

end

end A292646.P2117773458319938655

namespace A292646

/-- `A110654(A292665(n+1)+1)+n` -/
def P2117773458319938655.Spec : Prop :=
  ∀ n, P2117773458319938655.a n = A292646 (n + 1)

end A292646

/-! ## A292646.P7237331530920897139

`A123108(A292665(n+1)+2)+n`
-/

namespace A292646.P7237331530920897139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A292665 (n + 1) + 2).toNat + (n : ℤ)

end

end A292646.P7237331530920897139

namespace A292646

/-- `A123108(A292665(n+1)+2)+n` -/
def P7237331530920897139.Spec : Prop :=
  ∀ n, P7237331530920897139.a n = A292646 (n + 1)

end A292646

/-! ## A292646.P4679191047348145807

`A002264(A330180(n+1))+1+n`
-/

namespace A292646.P4679191047348145807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A330180 (n + 1)).toNat + 1 + (n : ℤ)

end

end A292646.P4679191047348145807

namespace A292646

/-- `A002264(A330180(n+1))+1+n` -/
def P4679191047348145807.Spec : Prop :=
  ∀ n, P4679191047348145807.a n = A292646 (n + 1)

end A292646

/-! ## A292646.P2587953894033642004

`A004526(A292665(n+1)+A103517(n))`
-/

namespace A292646.P2587953894033642004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A292665 (n + 1) + A103517 n).toNat

end

end A292646.P2587953894033642004

namespace A292646

/-- `A004526(A292665(n+1)+A103517(n))` -/
def P2587953894033642004.Spec : Prop :=
  ∀ n, P2587953894033642004.a n = A292646 (n + 1)

end A292646

/-! ## A292646.P7902991266851780117

`floor(log(A356200(n+1)))`
-/

namespace A292646.P7902991266851780117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A356200 (n + 1) : ℝ)⌋

end

end A292646.P7902991266851780117

namespace A292646

/-- `floor(log(A356200(n+1)))` -/
def P7902991266851780117.Spec : Prop :=
  ∀ n, P7902991266851780117.a n = A292646 (n + 1)

end A292646

/-!
# A292647: Rank of (e+1)*n when all the numbers e*j and (e+1)*k, for j>=1, k>=1, are jointly ranked.

The programs for A292647, the canonical program `A292647.P7577445348216488322` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292647 has offset 1).

The definition of A292647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292647.P1806722578536186376

`floor((exp(-1)+2)*(n+1))`
-/

namespace A292647.P1806722578536186376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.exp (-1 : ℝ) + 2) * (n + 1 : ℝ)⌋

end

end A292647.P1806722578536186376

namespace A292647

/-- `floor((exp(-1)+2)*(n+1))` -/
def P1806722578536186376.Spec : Prop :=
  ∀ n, P1806722578536186376.a n = A292647 (n + 1)

end A292647

/-! ## A292647.P7577445348216488322

`∑[Δ[A032634(n)]+2]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292647

/-- `∑[Δ[A032634(n)]+2]` -/
def P7577445348216488322.Spec : Prop :=
  ∀ n, P7577445348216488322.a n = A292647 (n + 1)

theorem P7577445348216488322.correct : P7577445348216488322.Spec := by
  intro n
  simp only [A292647, Nat.add_sub_cancel]

end A292647

/-! ## A292647.P16828095574636071056

`A006594(n+1)+1+n`
-/

namespace A292647.P16828095574636071056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (n + 1) + 1 + (n : ℤ)

end

end A292647.P16828095574636071056

namespace A292647

/-- `A006594(n+1)+1+n` -/
def P16828095574636071056.Spec : Prop :=
  ∀ n, P16828095574636071056.a n = A292647 (n + 1)

end A292647

/-! ## A292647.P9127979589046856594

`∑[char[A022843(n+1)]+2]`
-/

namespace A292647.P9127979589046856594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292647.P9127979589046856594

namespace A292647

/-- `∑[char[A022843(n+1)]+2]` -/
def P9127979589046856594.Spec : Prop :=
  ∀ n, (P9127979589046856594.a n : ℤ) = A292647 (n + 1)

end A292647

/-! ## A292647.P15486390961669739455

`n+1+comp[A022843(n)+n]`
-/

namespace A292647.P15486390961669739455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A292647.P15486390961669739455

namespace A292647

/-- `n+1+comp[A022843(n)+n]` -/
def P15486390961669739455.Spec : Prop :=
  ∀ n, (P15486390961669739455.a n : ℤ) = A292647 (n + 1)

end A292647

/-! ## A292647.P6972711197574293721

`A032634(n+1)+2*(n+1)`
-/

namespace A292647.P6972711197574293721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (n + 1) + (2 * (n + 1) : ℤ)

end

end A292647.P6972711197574293721

namespace A292647

/-- `A032634(n+1)+2*(n+1)` -/
def P6972711197574293721.Spec : Prop :=
  ∀ n, P6972711197574293721.a n = A292647 (n + 1)

end A292647

/-! ## A292647.P1333883082652893391

`4*n+3-A292663(n+1)`
-/

namespace A292647.P1333883082652893391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) - A292663 (n + 1)

end

end A292647.P1333883082652893391

namespace A292647

/-- `4*n+3-A292663(n+1)` -/
def P1333883082652893391.Spec : Prop :=
  ∀ n, P1333883082652893391.a n = A292647 (n + 1)

end A292647

/-! ## A292647.P5701474990385091516

`∑[char[A184589(n+1)+1]+2]`
-/

namespace A292647.P5701474990385091516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292647.P5701474990385091516

namespace A292647

/-- `∑[char[A184589(n+1)+1]+2]` -/
def P5701474990385091516.Spec : Prop :=
  ∀ n, (P5701474990385091516.a n : ℤ) = A292647 (n + 1)

end A292647

/-! ## A292647.P6597207951650091242

`A189520(n+1)-A000572(n+1)`
-/

namespace A292647.P6597207951650091242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189520 (n + 1) - A000572 (n + 1)

end

end A292647.P6597207951650091242

namespace A292647

/-- `A189520(n+1)-A000572(n+1)` -/
def P6597207951650091242.Spec : Prop :=
  ∀ n, P6597207951650091242.a n = A292647 (n + 1)

end A292647

/-! ## A292647.P1457553912812547079

`∑[A032634(n+1)+2-A032634(n)]`
-/

namespace A292647.P1457553912812547079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (n + 1) + (2 - A032634 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292647.P1457553912812547079

namespace A292647

/-- `∑[A032634(n+1)+2-A032634(n)]` -/
def P1457553912812547079.Spec : Prop :=
  ∀ n, P1457553912812547079.a n = A292647 (n + 1)

theorem P1457553912812547079.correct : P1457553912812547079.Spec := by
  intro n
  simp only [A292647, Nat.add_sub_cancel, A292647.P1457553912812547079.f1, A292647.P1457553912812547079.a, A292647.P7577445348216488322.f2, A292647.P7577445348216488322.f1, A292647.P7577445348216488322.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A292647

/-! ## A292647.P1046281745020245765

`A008574(n+1)-(A292663(n+1)+1)`
-/

namespace A292647.P1046281745020245765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) - (A292663 (n + 1) + 1)

end

end A292647.P1046281745020245765

namespace A292647

/-- `A008574(n+1)-(A292663(n+1)+1)` -/
def P1046281745020245765.Spec : Prop :=
  ∀ n, P1046281745020245765.a n = A292647 (n + 1)

end A292647

/-! ## A292647.P4325891743632622818

`A292646(A006594(n+1))+1`
-/

namespace A292647.P4325891743632622818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292646 (A006594 (n + 1)).toNat + 1

end

end A292647.P4325891743632622818

namespace A292647

/-- `A292646(A006594(n+1))+1` -/
def P4325891743632622818.Spec : Prop :=
  ∀ n, P4325891743632622818.a n = A292647 (n + 1)

end A292647

/-! ## A292647.P2453699429122788630

`Δ[A022786(n+1)+n²]`
-/

namespace A292647.P2453699429122788630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022786 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292647.P2453699429122788630

namespace A292647

/-- `Δ[A022786(n+1)+n²]` -/
def P2453699429122788630.Spec : Prop :=
  ∀ n, P2453699429122788630.a n = A292647 (n + 1)

end A292647

/-! ## A292647.P8994300136893984938

`A189403(n+1)-A000210(n+1)`
-/

namespace A292647.P8994300136893984938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) - A000210 (n + 1)

end

end A292647.P8994300136893984938

namespace A292647

/-- `A189403(n+1)-A000210(n+1)` -/
def P8994300136893984938.Spec : Prop :=
  ∀ n, P8994300136893984938.a n = A292647 (n + 1)

end A292647

/-!
# A292648: Rank of Pi*n when all the numbers Pi*j and (Pi+1)*k, for j>=1, k>=1, are jointly ranked.

The programs for A292648, the canonical program `A292648.P4814506142937687788` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292648 has offset 1).

The definition of A292648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292648.P4814506142937687788

`A069210(n+2)+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A292648

/-- `A069210(n+2)+n` -/
def P4814506142937687788.Spec : Prop :=
  ∀ n, P4814506142937687788.a n = A292648 (n + 1)

theorem P4814506142937687788.correct : P4814506142937687788.Spec := by
  intro n
  simp only [A292648, Nat.add_sub_cancel]

end A292648

/-! ## A292648.P10964174566945045544

`comp[A032615(n)+2*n]`
-/

namespace A292648.P10964174566945045544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A292648.P10964174566945045544

namespace A292648

/-- `comp[A032615(n)+2*n]` -/
def P10964174566945045544.Spec : Prop :=
  ∀ n, (P10964174566945045544.a n : ℤ) = A292648 (n + 1)

end A292648

/-! ## A292648.P2535167729630813162

`∑[char[A059531(n+1)]+1]`
-/

namespace A292648.P2535167729630813162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059531 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292648.P2535167729630813162

namespace A292648

/-- `∑[char[A059531(n+1)]+1]` -/
def P2535167729630813162.Spec : Prop :=
  ∀ n, (P2535167729630813162.a n : ℤ) = A292648 (n + 1)

end A292648

/-! ## A292648.P12009457319158093831

`∑[2-char[A022844(n)+n]]`
-/

namespace A292648.P12009457319158093831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292648.P12009457319158093831

namespace A292648

/-- `∑[2-char[A022844(n)+n]]` -/
def P12009457319158093831.Spec : Prop :=
  ∀ n, P12009457319158093831.a n = A292648 (n + 1)

end A292648

/-! ## A292648.P6058239936917692336

`comp[comp[A059532(n+1)]+n]`
-/

namespace A292648.P6058239936917692336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059532 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A292648.P6058239936917692336

namespace A292648

/-- `comp[comp[A059532(n+1)]+n]` -/
def P6058239936917692336.Spec : Prop :=
  ∀ n, (P6058239936917692336.a n : ℤ) = A292648 (n + 1)

end A292648

/-! ## A292648.P7750782332959301396

`A008620(A330182(n+1))+n`
-/

namespace A292648.P7750782332959301396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A330182 (n + 1)).toNat + (n : ℤ)

end

end A292648.P7750782332959301396

namespace A292648

/-- `A008620(A330182(n+1))+n` -/
def P7750782332959301396.Spec : Prop :=
  ∀ n, P7750782332959301396.a n = A292648 (n + 1)

end A292648

/-! ## A292648.P13600212705538022152

`A003056(∑[A140100(2*(n+1))]-A003056(n+1))`
-/

namespace A292648.P13600212705538022152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j - A003056 (n + 1)).toNat

end

end A292648.P13600212705538022152

namespace A292648

/-- `A003056(∑[A140100(2*(n+1))]-A003056(n+1))` -/
def P13600212705538022152.Spec : Prop :=
  ∀ n, P13600212705538022152.a n = A292648 (n + 1)

end A292648

/-! ## A292648.P17596598358667713712

`∑[A242784(∑[n])+A144609(n)]`
-/

namespace A292648.P17596598358667713712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (∑ j ∈ Finset.range (n + 1), f2 j) + A144609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292648.P17596598358667713712

namespace A292648

/-- `∑[A242784(∑[n])+A144609(n)]` -/
def P17596598358667713712.Spec : Prop :=
  ∀ n, P17596598358667713712.a n = A292648 (n + 1)

end A292648

/-! ## A292648.P9338100626007061381

`Δ[n²]-A004526(A111660(n))`
-/

namespace A292648.P9338100626007061381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A004526 (A111660 n).toNat

end

end A292648.P9338100626007061381

namespace A292648

/-- `Δ[n²]-A004526(A111660(n))` -/
def P9338100626007061381.Spec : Prop :=
  ∀ n, P9338100626007061381.a n = A292648 (n + 1)

end A292648

/-! ## A292648.P6961571986267145144

`A008619(A016813(n)-A111660(n))`
-/

namespace A292648.P6961571986267145144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A016813 n - A111660 n).toNat

end

end A292648.P6961571986267145144

namespace A292648

/-- `A008619(A016813(n)-A111660(n))` -/
def P6961571986267145144.Spec : Prop :=
  ∀ n, P6961571986267145144.a n = A292648 (n + 1)

end A292648

/-!
# A292649: Rank of (Pi+1)*n when all the numbers Pi*j and (Pi+1)*k, for j>=1, k>=1, are jointly ranked.

The programs for A292649, the canonical program `A292649.P4374179252160698434` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292649 has offset 1).

The definition of A292649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292649.P1593523476969818372

`∑[3-floor(∑[cos(n)])²]`
-/

namespace A292649.P1593523476969818372
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292649.P1593523476969818372

namespace A292649

/-- `∑[3-floor(∑[cos(n)])²]` -/
def P1593523476969818372.Spec : Prop :=
  ∀ n, P1593523476969818372.a n = A292649 (n + 1)

end A292649

/-! ## A292649.P11660465898331774612

`ceil((n+1)/π+2*n+1)`
-/

namespace A292649.P11660465898331774612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.pi + (2 * n + 1 : ℝ)⌉

end

end A292649.P11660465898331774612

namespace A292649

/-- `ceil((n+1)/π+2*n+1)` -/
def P11660465898331774612.Spec : Prop :=
  ∀ n, P11660465898331774612.a n = A292649 (n + 1)

end A292649

/-! ## A292649.P4374179252160698434

`A059531(n+1)+1+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292649

/-- `A059531(n+1)+1+n` -/
def P4374179252160698434.Spec : Prop :=
  ∀ n, P4374179252160698434.a n = A292649 (n + 1)

theorem P4374179252160698434.correct : P4374179252160698434.Spec := by
  intro n
  simp only [A292649, Nat.add_sub_cancel]

end A292649

/-! ## A292649.P3982904356829162639

`A296357(n+1)+Δ[n²]`
-/

namespace A292649.P3982904356829162639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296357 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A292649.P3982904356829162639

namespace A292649

/-- `A296357(n+1)+Δ[n²]` -/
def P3982904356829162639.Spec : Prop :=
  ∀ n, P3982904356829162639.a n = A292649 (n + 1)

end A292649

/-! ## A292649.P2197820602785395797

`∑[Δ[A032615(n)]+2]`
-/

namespace A292649.P2197820602785395797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292649.P2197820602785395797

namespace A292649

/-- `∑[Δ[A032615(n)]+2]` -/
def P2197820602785395797.Spec : Prop :=
  ∀ n, P2197820602785395797.a n = A292649 (n + 1)

end A292649

/-! ## A292649.P15650577729481574500

`A032615(n+1)+2*(n+1)`
-/

namespace A292649.P15650577729481574500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (n + 1) + (2 * (n + 1) : ℤ)

end

end A292649.P15650577729481574500

namespace A292649

/-- `A032615(n+1)+2*(n+1)` -/
def P15650577729481574500.Spec : Prop :=
  ∀ n, P15650577729481574500.a n = A292649 (n + 1)

end A292649

/-! ## A292649.P17617213704407597417

`Δ[A022796(n+1)+n²]`
-/

namespace A292649.P17617213704407597417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022796 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292649.P17617213704407597417

namespace A292649

/-- `Δ[A022796(n+1)+n²]` -/
def P17617213704407597417.Spec : Prop :=
  ∀ n, P17617213704407597417.a n = A292649 (n + 1)

end A292649

/-! ## A292649.P1933540360587767078

`∑[A163581(n)+2]`
-/

namespace A292649.P1933540360587767078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163581 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292649.P1933540360587767078

namespace A292649

/-- `∑[A163581(n)+2]` -/
def P1933540360587767078.Spec : Prop :=
  ∀ n, P1933540360587767078.a n = A292649 (n + 1)

end A292649

/-!
# A292650: Rank of n*e when all the numbers j*e and k*Pi, for j>=1, k>=1, are jointly ranked.

The programs for A292650, there is no canonical definition to state claims against.
-/

/-! ## A292650.P3405898879675086634

`A292655(n+1)-(A001478(n+1)+A000572(n+1))`
-/

namespace A292650.P3405898879675086634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292655 (n + 1) - (A001478 (n + 1) + A000572 (n + 1))

end

end A292650.P3405898879675086634

/-! ## A292650.P5530110151201381384

`A368942(A100752(n+1))-2`
-/

namespace A292650.P5530110151201381384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368942 (A100752 (n + 1)).toNat - 2

end

end A292650.P5530110151201381384

/-!
# A292651: Rank of n*Pi when all the numbers j*e and k*Pi, for j>=1, k>=1, are jointly ranked.

The programs for A292651, the canonical program `A292651.P14634784017642568073` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292651 has offset 1).

The definition of A292651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292651.P14634784017642568073

`floor((π/e+1)*(n+1))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292651

/-- `floor((π/e+1)*(n+1))` -/
def P14634784017642568073.Spec : Prop :=
  ∀ n, P14634784017642568073.a n = A292651 (n + 1)

theorem P14634784017642568073.correct : P14634784017642568073.Spec := by
  intro n
  simp only [A292651, Nat.add_sub_cancel]

end A292651

/-! ## A292651.P5369799982661301989

`A292656(n+1)-A022844(n+1)`
-/

namespace A292651.P5369799982661301989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292656 (n + 1) - A022844 (n + 1)

end

end A292651.P5369799982661301989

namespace A292651

/-- `A292656(n+1)-A022844(n+1)` -/
def P5369799982661301989.Spec : Prop :=
  ∀ n, P5369799982661301989.a n = A292651 (n + 1)

theorem P5369799982661301989.correct : P5369799982661301989.Spec := by
  intro n
  simp only [A292651, Nat.add_sub_cancel, A292651.P5369799982661301989.a, A292651.P14634784017642568073.a, A022844, A022844.P11976428228251050705.a, A292656, A292656.P4248639488250771232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292651

/-! ## A292651.P12963843433544384166

`A292656(n+1)%A022844(A000027(n+1))`
-/

namespace A292651.P12963843433544384166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292656 (n + 1)) (A022844 (A000027 (n + 1)).toNat)

end

end A292651.P12963843433544384166

namespace A292651

/-- `A292656(n+1)%A022844(A000027(n+1))` -/
def P12963843433544384166.Spec : Prop :=
  ∀ n, P12963843433544384166.a n = A292651 (n + 1)

end A292651

/-! ## A292651.P3258723156981780499

`record[Δ[(A292650(n+1)/2)²]]`
-/

namespace A292651.P3258723156981780499
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A292650 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292651.P3258723156981780499

namespace A292651

/-- `record[Δ[(A292650(n+1)/2)²]]` -/
def P3258723156981780499.Spec : Prop :=
  ∀ n, P3258723156981780499.a n = (A292651 (n + 1) : ℚ)

end A292651

/-!
# A292652: Rank of n*cos(1) when all the numbers j*cos(1) and k*sin(1), for j>=1, k>=1, are jointly ranked.

The programs for A292652, the canonical program `A292652.P9827937049489949386` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292652 has offset 1).

The definition of A292652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292652.P16220377770503557885

`floor((cot(1)+1)*(n+1))`
-/

namespace A292652.P16220377770503557885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cot (1 : ℝ) + 1) * (n + 1 : ℝ)⌋

end

end A292652.P16220377770503557885

namespace A292652

/-- `floor((cot(1)+1)*(n+1))` -/
def P16220377770503557885.Spec : Prop :=
  ∀ n, P16220377770503557885.a n = A292652 (n + 1)

theorem P16220377770503557885.correct : P16220377770503557885.Spec := by
  intro n
  simp only [A292652, Nat.add_sub_cancel, A292652.P16220377770503557885.a, A292652.P9827937049489949386.a, A108120, A108120.P1406995678368216070.a, A189757, A189757.P6330049415454840961.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292652

/-! ## A292652.P17887280609511527283

`ceil((n+1)/tan(1)+n)`
-/

namespace A292652.P17887280609511527283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.tan (1 : ℝ) + (n : ℝ)⌉

end

end A292652.P17887280609511527283

namespace A292652

/-- `ceil((n+1)/tan(1)+n)` -/
def P17887280609511527283.Spec : Prop :=
  ∀ n, P17887280609511527283.a n = A292652 (n + 1)

end A292652

/-! ## A292652.P13831304542866909004

`ceil((n+1)*cot(1)+n)`
-/

namespace A292652.P13831304542866909004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.cot (1 : ℝ) + (n : ℝ)⌉

end

end A292652.P13831304542866909004

namespace A292652

/-- `ceil((n+1)*cot(1)+n)` -/
def P13831304542866909004.Spec : Prop :=
  ∀ n, P13831304542866909004.a n = A292652 (n + 1)

end A292652

/-! ## A292652.P11146206878385641602

`floor((n+1)/tan(1)+n+1)`
-/

namespace A292652.P11146206878385641602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.tan (1 : ℝ) + (n + 1 : ℝ)⌋

end

end A292652.P11146206878385641602

namespace A292652

/-- `floor((n+1)/tan(1)+n+1)` -/
def P11146206878385641602.Spec : Prop :=
  ∀ n, P11146206878385641602.a n = A292652 (n + 1)

end A292652

/-! ## A292652.P9827937049489949386

`A189757(n+1)-A108120(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292652

/-- `A189757(n+1)-A108120(n+1)` -/
def P9827937049489949386.Spec : Prop :=
  ∀ n, P9827937049489949386.a n = A292652 (n + 1)

theorem P9827937049489949386.correct : P9827937049489949386.Spec := by
  intro n
  simp only [A292652, Nat.add_sub_cancel]

end A292652

/-!
# A292653: Rank of n*sin(1) when all the numbers j*cos(1) and k*sin(1), for j>=1, k>=1, are jointly ranked.

The programs for A292653, the canonical program `A292653.P3390227685089647685` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292653 has offset 1).

The definition of A292653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292653.P3390227685089647685

`comp[floor(n/tan(1)+n)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292653

/-- `comp[floor(n/tan(1)+n)]` -/
def P3390227685089647685.Spec : Prop :=
  ∀ n, (P3390227685089647685.a n : ℤ) = A292653 (n + 1)

theorem P3390227685089647685.correct : P3390227685089647685.Spec := by
  intro n
  simp only [A292653, Nat.add_sub_cancel]

end A292653

/-! ## A292653.P17241137949705891512

`floor((tan(1)+1)*(n+1))`
-/

namespace A292653.P17241137949705891512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.tan (1 : ℝ) + 1) * (n + 1 : ℝ)⌋

end

end A292653.P17241137949705891512

namespace A292653

/-- `floor((tan(1)+1)*(n+1))` -/
def P17241137949705891512.Spec : Prop :=
  ∀ n, P17241137949705891512.a n = A292653 (n + 1)

end A292653

/-! ## A292653.P6273765954119011229

`ceil((n+1)*tan(1)+n)`
-/

namespace A292653.P6273765954119011229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.tan (1 : ℝ) + (n : ℝ)⌉

end

end A292653.P6273765954119011229

namespace A292653

/-- `ceil((n+1)*tan(1)+n)` -/
def P6273765954119011229.Spec : Prop :=
  ∀ n, P6273765954119011229.a n = A292653 (n + 1)

end A292653

/-! ## A292653.P12985227416340613098

`ceil((n+1)/cot(1)+n)`
-/

namespace A292653.P12985227416340613098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.cot (1 : ℝ) + (n : ℝ)⌉

end

end A292653.P12985227416340613098

namespace A292653

/-- `ceil((n+1)/cot(1)+n)` -/
def P12985227416340613098.Spec : Prop :=
  ∀ n, P12985227416340613098.a n = A292653 (n + 1)

end A292653

/-! ## A292653.P2810627138309584653

`floor((n+1)/cot(1)+n+1)`
-/

namespace A292653.P2810627138309584653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cot (1 : ℝ) + (n + 1 : ℝ)⌋

end

end A292653.P2810627138309584653

namespace A292653

/-- `floor((n+1)/cot(1)+n+1)` -/
def P2810627138309584653.Spec : Prop :=
  ∀ n, P2810627138309584653.a n = A292653 (n + 1)

end A292653

/-! ## A292653.P6503221051330046261

`A008620(A038123(n+1))+n`
-/

namespace A292653.P6503221051330046261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A038123 (n + 1)).toNat + (n : ℤ)

end

end A292653.P6503221051330046261

namespace A292653

/-- `A008620(A038123(n+1))+n` -/
def P6503221051330046261.Spec : Prop :=
  ∀ n, P6503221051330046261.a n = A292653 (n + 1)

end A292653

/-!
# A292654: Rank of n when all the numbers h, j*e, k*Pi, for h>=1, j>=1, k>=1, are jointly ranked.

The programs for A292654, the canonical program `A292654.P5177288825336380584` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292654 has offset 1).

The definition of A292654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292654.P5177288825336380584

`A292649(n+1)-A292663(n+1)+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A292654

/-- `A292649(n+1)-A292663(n+1)+n` -/
def P5177288825336380584.Spec : Prop :=
  ∀ n, P5177288825336380584.a n = A292654 (n + 1)

theorem P5177288825336380584.correct : P5177288825336380584.Spec := by
  intro n
  simp only [A292654, Nat.add_sub_cancel]

end A292654

/-! ## A292654.P15541501622060807161

`A059531(n+1)+A006594(n+1)-(n+1)`
-/

namespace A292654.P15541501622060807161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059531 (n + 1) + A006594 (n + 1) - (n + 1 : ℤ)

end

end A292654.P15541501622060807161

namespace A292654

/-- `A059531(n+1)+A006594(n+1)-(n+1)` -/
def P15541501622060807161.Spec : Prop :=
  ∀ n, P15541501622060807161.a n = A292654 (n + 1)

end A292654

/-! ## A292654.P3801602253461055214

`A292647(n+1)-(3*(n+1)-A292649(n+1))`
-/

namespace A292654.P3801602253461055214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292647 (n + 1) - ((3 * (n + 1) : ℤ) - A292649 (n + 1))

end

end A292654.P3801602253461055214

namespace A292654

/-- `A292647(n+1)-(3*(n+1)-A292649(n+1))` -/
def P3801602253461055214.Spec : Prop :=
  ∀ n, P3801602253461055214.a n = A292654 (n + 1)

end A292654

/-! ## A292654.P14285429664100679600

`A001478(n+1)+A059531(n+1)+A006594(n+1)`
-/

namespace A292654.P14285429664100679600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A059531 (n + 1) + A006594 (n + 1))

end

end A292654.P14285429664100679600

namespace A292654

/-- `A001478(n+1)+A059531(n+1)+A006594(n+1)` -/
def P14285429664100679600.Spec : Prop :=
  ∀ n, P14285429664100679600.a n = A292654 (n + 1)

end A292654

/-! ## A292654.P8330800766204865065

`A032615(n+1)+A006594(n+1)`
-/

namespace A292654.P8330800766204865065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (n + 1) + A006594 (n + 1)

end

end A292654.P8330800766204865065

namespace A292654

/-- `A032615(n+1)+A006594(n+1)` -/
def P8330800766204865065.Spec : Prop :=
  ∀ n, P8330800766204865065.a n = A292654 (n + 1)

end A292654

/-! ## A292654.P12424837850110562248

`A006594(n+1)+A002266(A330095(n+1))`
-/

namespace A292654.P12424837850110562248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (n + 1) + A002266 (A330095 (n + 1)).toNat

end

end A292654.P12424837850110562248

namespace A292654

/-- `A006594(n+1)+A002266(A330095(n+1))` -/
def P12424837850110562248.Spec : Prop :=
  ∀ n, P12424837850110562248.a n = A292654 (n + 1)

end A292654

/-!
# A292655: Rank of n*e when all the numbers h, j*e, k*Pi, for h>=1, j>=1, k>=1, are jointly ranked. T.

The programs for A292655, there is no canonical definition to state claims against.
-/

/-! ## A292655.P16460399762566818267

`A329977(2*(n+1))-(A329844(n+1)+1)`
-/

namespace A292655.P16460399762566818267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329977 (2 * (n + 1)) - (A329844 (n + 1) + 1)

end

end A292655.P16460399762566818267

/-! ## A292655.P72018715742083773

`A329977(2*(n+1))-(A330143(2*(n+1))+1)`
-/

namespace A292655.P72018715742083773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329977 (2 * (n + 1)) - (A330143 (2 * (n + 1)) + 1)

end

end A292655.P72018715742083773

/-! ## A292655.P1591799697290255719

`A022843(n+1)+∑[A054977(A340983(n)²)]`
-/

namespace A292655.P1591799697290255719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A340983 (n + 10) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292655.P1591799697290255719

/-! ## A292655.P16094043218747250686

`A115180(A000572(n+1))`
-/

namespace A292655.P16094043218747250686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (A000572 (n + 1)).toNat

end

end A292655.P16094043218747250686

/-! ## A292655.P16390974233806704699

`A047203(floor(log2(A169777(2*n+7))))`
-/

namespace A292655.P16390974233806704699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (Nat.log 2 (A169777 (2 * n + 7)).toNat)

end

end A292655.P16390974233806704699

/-!
# A292656: Rank of n*Pi when all the numbers h, j*e, k*Pi, for h>=1, j>=1, k>=1, are jointly ranked.

The programs for A292656, the canonical program `A292656.P4248639488250771232` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292656 has offset 1).

The definition of A292656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292656.P17368768677617246360

`A022844(n+1)+floor((π/e+1)*(n+1))`
-/

namespace A292656.P17368768677617246360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1) + ⌊(Real.pi / Real.exp 1 + 1) * (n + 1 : ℝ)⌋

end

end A292656.P17368768677617246360

namespace A292656

/-- `A022844(n+1)+floor((π/e+1)*(n+1))` -/
def P17368768677617246360.Spec : Prop :=
  ∀ n, P17368768677617246360.a n = A292656 (n + 1)

theorem P17368768677617246360.correct : P17368768677617246360.Spec := by
  intro n
  simp only [A292656, Nat.add_sub_cancel, A292656.P17368768677617246360.a, A292656.P4248639488250771232.a, A022844, A022844.P11976428228251050705.a, A292651, A292651.P14634784017642568073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292656

/-! ## A292656.P4248639488250771232

`A292651(n+1)+A022844(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292656

/-- `A292651(n+1)+A022844(n+1)` -/
def P4248639488250771232.Spec : Prop :=
  ∀ n, P4248639488250771232.a n = A292656 (n + 1)

theorem P4248639488250771232.correct : P4248639488250771232.Spec := by
  intro n
  simp only [A292656, Nat.add_sub_cancel]

end A292656

/-! ## A292656.P14593220862542054014

`∑[A286939(A058123(n+1))+5]`
-/

namespace A292656.P14593220862542054014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (A058123 (n + 1)).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292656.P14593220862542054014

namespace A292656

/-- `∑[A286939(A058123(n+1))+5]` -/
def P14593220862542054014.Spec : Prop :=
  ∀ n, P14593220862542054014.a n = A292656 (n + 1)

end A292656

/-! ## A292656.P16145037711370521612

`∑[A064911(A281306(n))+5]`
-/

namespace A292656.P16145037711370521612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A281306 n).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292656.P16145037711370521612

namespace A292656

/-- `∑[A064911(A281306(n))+5]` -/
def P16145037711370521612.Spec : Prop :=
  ∀ n, P16145037711370521612.a n = A292656 (n + 1)

end A292656

/-! ## A292656.P14958910321585084316

`∑[A026492(A295862(n)-1)+4]`
-/

namespace A292656.P14958910321585084316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 (A295862 n - 1).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292656.P14958910321585084316

namespace A292656

/-- `∑[A026492(A295862(n)-1)+4]` -/
def P14958910321585084316.Spec : Prop :=
  ∀ n, P14958910321585084316.a n = A292656 (n + 1)

end A292656

/-!
# A292657: Rank of n when all the numbers h, j*cos(1), k*sin(1), for h>=1, j>=1, k>=1, are jointly ranked.

The programs for A292657, there is no canonical definition to state claims against.
-/

/-! ## A292657.P856429768816357860

`A329840(n+1)+A108611(n)`
-/

namespace A292657.P856429768816357860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329840 (n + 1) + A108611 n

end

end A292657.P856429768816357860

/-! ## A292657.P11534843593876116305

`record[A330098(3*n+5)+A064680(n+1)]`
-/

namespace A292657.P11534843593876116305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (3 * n + 5) + A064680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292657.P11534843593876116305

/-! ## A292657.P7124137167871707746

`A107688(A094302(n+1))+A016825(n)`
-/

namespace A292657.P7124137167871707746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107688 (A094302 (n + 1)).toNat + A016825 n

end

end A292657.P7124137167871707746

/-! ## A292657.P11073564187556152218

`A016825(n)+A001876(A225626(n+1))`
-/

namespace A292657.P11073564187556152218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + A001876 (A225626 (n + 1)).toNat

end

end A292657.P11073564187556152218

/-! ## A292657.P13048373698711056709

`A342753(A045539(n))+A047485(2*(n+1))`
-/

namespace A292657.P13048373698711056709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A045539 n).toNat + A047485 (2 * (n + 1))

end

end A292657.P13048373698711056709

/-!
# A292658: Rank of n*cos(1) when all the numbers h, j*cos(1), k*sin(1), for h>=1, j>=1, k>=1, are jointly ranked.

The programs for A292658, there is no canonical definition to state claims against.
-/

/-! ## A292658.P8326173723468415870

`A259361(A316965(∑[A215247(n+1)]))`
-/

namespace A292658.P8326173723468415870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A316965 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A292658.P8326173723468415870

/-! ## A292658.P14687229750645152158

`A026806(A020753(n+1))+2*n`
-/

namespace A292658.P14687229750645152158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A020753 (n + 1)).toNat + (2 * n : ℤ)

end

end A292658.P14687229750645152158

/-! ## A292658.P1626198377406245684

`A008615(A020753(n+1))+A005408(n)`
-/

namespace A292658.P1626198377406245684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A020753 (n + 1)).toNat + A005408 n

end

end A292658.P1626198377406245684

/-! ## A292658.P15165657525445497090

`A089684(n+1)+A008615(A020753(n+1))`
-/

namespace A292658.P15165657525445497090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1) + A008615 (A020753 (n + 1)).toNat

end

end A292658.P15165657525445497090

/-! ## A292658.P12688251005243157770

`A182774(n+1)+A004526(A020753(n+1))`
-/

namespace A292658.P12688251005243157770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182774 (n + 1) + A004526 (A020753 (n + 1)).toNat

end

end A292658.P12688251005243157770

/-!
# A292659: Rank of n*sin(1) when all the numbers h, j*cos(1), k*sin(1), for h>=1, j>=1, k>=1, are jointly ranked.

The programs for A292659, there is no canonical definition to state claims against.
-/

/-! ## A292659.P16999072172416817941

`A292653(n+1)+A002264(A330067(n+1))`
-/

namespace A292659.P16999072172416817941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292653 (n + 1) + A002264 (A330067 (n + 1)).toNat

end

end A292659.P16999072172416817941

/-! ## A292659.P2116398505688584571

`A278040(n)+A022303(A156289(n+1))`
-/

namespace A292659.P2116398505688584571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n + A022303 (A156289 (n + 1)).toNat

end

end A292659.P2116398505688584571

/-! ## A292659.P10070748639656040877

`A184821(n+1)+A010051(A027053(n+2))`
-/

namespace A292659.P10070748639656040877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184821 (n + 1) + A010051 (A027053 (n + 2)).toNat

end

end A292659.P10070748639656040877

/-! ## A292659.P2509393593214643786

`A004773(A028250(n+1))-A016389(A086645(n))`
-/

namespace A292659.P2509393593214643786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A028250 (n + 1)).toNat - A016389 (A086645 n).toNat

end

end A292659.P2509393593214643786

/-! ## A292659.P17297086690231599311

`A004773(A028250(n+1))-A262693(A101127(n))`
-/

namespace A292659.P17297086690231599311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A028250 (n + 1)).toNat - A262693 (A101127 n).toNat

end

end A292659.P17297086690231599311

/-!
# A292660: Rank of n*sqrt(2) when all the numbers h*sqrt(2), j*sqrt(3), k*sqrt(5), for h>=1, j>=1, k>=1, are jointly ranked.

The programs for A292660, there is no canonical definition to state claims against.
-/

/-! ## A292660.P8384990323140433440

`A171974(n+1)+A118759(floor((n+1)*(2-1/e)))`
-/

namespace A292660.P8384990323140433440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (n + 1) + A118759 ⌊(n + 1 : ℝ) * (2 - 1 / Real.exp 1)⌋.toNat

end

end A292660.P8384990323140433440

/-! ## A292660.P9600250605097421733

`A000038(n+4)+A171974(n+1)+A118759(A109259(n+1))`
-/

namespace A292660.P9600250605097421733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 4) + (A171974 (n + 1) + A118759 (A109259 (n + 1)).toNat)

end

end A292660.P9600250605097421733

/-! ## A292660.P12651177923076449673

`A000007(2*n+1)+A171974(n+1)+A118759(A109259(n+1))`
-/

namespace A292660.P12651177923076449673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n + 1) + (A171974 (n + 1) + A118759 (A109259 (n + 1)).toNat)

end

end A292660.P12651177923076449673

/-! ## A292660.P7294611280608059829

`A032766(A109259(n+1)%A336329(n+1))`
-/

namespace A292660.P7294611280608059829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (Int.tmod (A109259 (n + 1)) (A336329 (n + 1))).toNat

end

end A292660.P7294611280608059829

/-! ## A292660.P6162709786275144826

`A032766(A292663(n+1)%A336329(n+1))`
-/

namespace A292660.P6162709786275144826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (Int.tmod (A292663 (n + 1)) (A336329 (n + 1))).toNat

end

end A292660.P6162709786275144826

/-!
# A292661: Rank of n*sqrt(3) when all the numbers h*sqrt(2), j*sqrt(3), k*sqrt(5), for h>=1, j>=1, k>=1, are jointly ranked.

The programs for A292661, there is no canonical definition to state claims against.
-/

/-! ## A292661.P16790283508992016934

`A133011(A192719(n+1))+3*n+1`
-/

namespace A292661.P16790283508992016934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133011 (A192719 (n + 1)).toNat + (3 * n + 1 : ℤ)

end

end A292661.P16790283508992016934

/-! ## A292661.P1232376525638785897

`A016789(n)-val(n+1, A151689(n))`
-/

namespace A292661.P1232376525638785897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (SequenceMachineLib.valuation (n + 1) (A151689 n).toNat : ℤ)

end

end A292661.P1232376525638785897

/-! ## A292661.P4483393554276814892

`Δ[A005449(n)]-val(n+1, A151689(n))`
-/

namespace A292661.P4483393554276814892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (SequenceMachineLib.valuation (n + 1) (A151689 n).toNat : ℤ)

end

end A292661.P4483393554276814892

/-! ## A292661.P658005480246692669

`3*n+A178334(A280188(n+1))+1`
-/

namespace A292661.P658005480246692669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A178334 (A280188 (n + 1)).toNat + 1)

end

end A292661.P658005480246692669

/-! ## A292661.P3634597320298124130

`3*n+2-A080116(A023545(n+1))`
-/

namespace A292661.P3634597320298124130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - A080116 (A023545 (n + 1)).toNat

end

end A292661.P3634597320298124130

/-! ## A292661.P15832822280366470147

`3*n+2-A324848(A255419(n+1))`
-/

namespace A292661.P15832822280366470147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - A324848 (A255419 (n + 1)).toNat

end

end A292661.P15832822280366470147

/-! ## A292661.P4353316149787775822

`A000032(val(n+1, A151689(n)))+3*n`
-/

namespace A292661.P4353316149787775822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.valuation (n + 1) (A151689 n).toNat) + (3 * n : ℤ)

end

end A292661.P4353316149787775822

/-! ## A292661.P5312549271125159239

`A016789(n)-A000007(A280188(n+1))`
-/

namespace A292661.P5312549271125159239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A000007 (A280188 (n + 1)).toNat

end

end A292661.P5312549271125159239

/-! ## A292661.P8029561202218814094

`A008585(n)+A000032(val(n+1, A151689(n)))`
-/

namespace A292661.P8029561202218814094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A000032 (SequenceMachineLib.valuation (n + 1) (A151689 n).toNat)

end

end A292661.P8029561202218814094

/-!
# A292662: Rank of n*sqrt(5) when all the numbers h*sqrt(2), j*sqrt(3), k*sqrt(5), for h>=1, j>=1, k>=1, are jointly ranked.

The programs for A292662, there is no canonical definition to state claims against.
-/

/-! ## A292662.P10943657272160823422

`A032766(A109260(n+1))%A080739(n)²`
-/

namespace A292662.P10943657272160823422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032766 (A109260 (n + 1)).toNat) (A080739 n ^ 2)

end

end A292662.P10943657272160823422

/-! ## A292662.P290605458765393003

`A032766(A109260(n+1)%A109226(n+1))`
-/

namespace A292662.P290605458765393003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (Int.tmod (A109260 (n + 1)) (A109226 (n + 1))).toNat

end

end A292662.P290605458765393003

/-! ## A292662.P10861674497980083510

`A032766(A109260(n+1))+C(n, A327347(n+1))`
-/

namespace A292662.P10861674497980083510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A109260 (n + 1)).toNat + (Nat.choose n (A327347 (n + 1)).toNat : ℤ)

end

end A292662.P10861674497980083510

/-! ## A292662.P17682510184776638015

`A032766(A109260(n+1))+A000007(A114042(n+1))`
-/

namespace A292662.P17682510184776638015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A109260 (n + 1)).toNat + A000007 (A114042 (n + 1)).toNat

end

end A292662.P17682510184776638015

/-! ## A292662.P4716484164959523191

`A032766(A109260(n+1))*A350070(A002269(n+1))`
-/

namespace A292662.P4716484164959523191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A109260 (n + 1)).toNat * A350070 (A002269 (n + 1)).toNat

end

end A292662.P4716484164959523191

/-! ## A292662.P8624955757680766443

`A003842(A245921(n))*A032766(A109260(n+1))`
-/

namespace A292662.P8624955757680766443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A245921 n).toNat * A032766 (A109260 (n + 1)).toNat

end

end A292662.P8624955757680766443

/-!
# A292663: Rank of n*(e-1) when all the numbers j*(e-1) and k*e, for j>=1, k>=1, are jointly ranked.

The programs for A292663, the canonical program `A292663.P11006181685462935153` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292663 has offset 1).

The definition of A292663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292663.P6247340630652408399

`floor((n+1)*(2-1/e))`
-/

namespace A292663.P6247340630652408399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (2 - 1 / Real.exp 1)⌋

end

end A292663.P6247340630652408399

namespace A292663

/-- `floor((n+1)*(2-1/e))` -/
def P6247340630652408399.Spec : Prop :=
  ∀ n, P6247340630652408399.a n = A292663 (n + 1)

end A292663

/-! ## A292663.P18058596391182272265

`∑[2-char[A022843(n)]]`
-/

namespace A292663.P18058596391182272265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292663.P18058596391182272265

namespace A292663

/-- `∑[2-char[A022843(n)]]` -/
def P18058596391182272265.Spec : Prop :=
  ∀ n, P18058596391182272265.a n = A292663 (n + 1)

end A292663

/-! ## A292663.P14870719428889544432

`∑[char[A054385(n+1)]+1]`
-/

namespace A292663.P14870719428889544432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292663.P14870719428889544432

namespace A292663

/-- `∑[char[A054385(n+1)]+1]` -/
def P14870719428889544432.Spec : Prop :=
  ∀ n, (P14870719428889544432.a n : ℤ) = A292663 (n + 1)

end A292663

/-! ## A292663.P11006181685462935153

`Δ[n²]-A032634(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292663

/-- `Δ[n²]-A032634(n+1)` -/
def P11006181685462935153.Spec : Prop :=
  ∀ n, P11006181685462935153.a n = A292663 (n + 1)

theorem P11006181685462935153.correct : P11006181685462935153.Spec := by
  intro n
  simp only [A292663, Nat.add_sub_cancel]

end A292663

/-! ## A292663.P10173309300142869508

`comp[comp[A022843(n+1)]+n]`
-/

namespace A292663.P10173309300142869508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A292663.P10173309300142869508

namespace A292663

/-- `comp[comp[A022843(n+1)]+n]` -/
def P10173309300142869508.Spec : Prop :=
  ∀ n, (P10173309300142869508.a n : ℤ) = A292663 (n + 1)

end A292663

/-! ## A292663.P9169602405130950360

`comp[comp[A184589(n+1)+1]+n]`
-/

namespace A292663.P9169602405130950360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A292663.P9169602405130950360

namespace A292663

/-- `comp[comp[A184589(n+1)+1]+n]` -/
def P9169602405130950360.Spec : Prop :=
  ∀ n, (P9169602405130950360.a n : ℤ) = A292663 (n + 1)

end A292663

/-! ## A292663.P2881312038953196783

`4*(n+1)-(A292647(n+1)+1)`
-/

namespace A292663.P2881312038953196783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (A292647 (n + 1) + 1)

end

end A292663.P2881312038953196783

namespace A292663

/-- `4*(n+1)-(A292647(n+1)+1)` -/
def P2881312038953196783.Spec : Prop :=
  ∀ n, P2881312038953196783.a n = A292663 (n + 1)

end A292663

/-! ## A292663.P7706945619477989752

`A016789(n)-A006594(n+1)`
-/

namespace A292663.P7706945619477989752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A006594 (n + 1)

end

end A292663.P7706945619477989752

namespace A292663

/-- `A016789(n)-A006594(n+1)` -/
def P7706945619477989752.Spec : Prop :=
  ∀ n, P7706945619477989752.a n = A292663 (n + 1)

end A292663

/-! ## A292663.P7595430403060776755

`A004767(n)-A292647(n+1)`
-/

namespace A292663.P7595430403060776755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A292647 (n + 1)

end

end A292663.P7595430403060776755

namespace A292663

/-- `A004767(n)-A292647(n+1)` -/
def P7595430403060776755.Spec : Prop :=
  ∀ n, P7595430403060776755.a n = A292663 (n + 1)

end A292663

/-! ## A292663.P5885436462294463029

`A005843(n+1)-(A032634(n+1)+1)`
-/

namespace A292663.P5885436462294463029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - (A032634 (n + 1) + 1)

end

end A292663.P5885436462294463029

namespace A292663

/-- `A005843(n+1)-(A032634(n+1)+1)` -/
def P5885436462294463029.Spec : Prop :=
  ∀ n, P5885436462294463029.a n = A292663 (n + 1)

theorem P5885436462294463029.correct : P5885436462294463029.Spec := by
  intro n
  simp only [A292663, Nat.add_sub_cancel, A292663.P5885436462294463029.a, A292663.P11006181685462935153.f1, A292663.P11006181685462935153.a, A005843, A005843.P3167286115683555970.a, A032634, A032634.P6588867285997603959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292663

/-! ## A292663.P2867756040398106911

`A000217(2*n+1)-(A032634(n+1)+A000217(2*n))`
-/

namespace A292663.P2867756040398106911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) - (A032634 (n + 1) + A000217 (2 * n))

end

end A292663.P2867756040398106911

namespace A292663

/-- `A000217(2*n+1)-(A032634(n+1)+A000217(2*n))` -/
def P2867756040398106911.Spec : Prop :=
  ∀ n, P2867756040398106911.a n = A292663 (n + 1)

theorem P2867756040398106911.correct : P2867756040398106911.Spec := by
  intro n
  simp only [A292663, Nat.add_sub_cancel, A292663.P2867756040398106911.a, A292663.P11006181685462935153.f1, A292663.P11006181685462935153.a, A000217, A000217.P10269402890581615239.a, A032634, A032634.P6588867285997603959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A292663

/-! ## A292663.P270168696105701197

`Δ[n²-∑[A032634(n)]]`
-/

namespace A292663.P270168696105701197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292663.P270168696105701197

namespace A292663

/-- `Δ[n²-∑[A032634(n)]]` -/
def P270168696105701197.Spec : Prop :=
  ∀ n, P270168696105701197.a n = A292663 (n + 1)

end A292663

/-! ## A292663.P3810453028753339761

`record[n+1-A032634(A066043(n+2)/2)]`
-/

namespace A292663.P3810453028753339761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A032634 (SequenceMachineLib.roundAway ((A066043 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292663.P3810453028753339761

namespace A292663

/-- `record[n+1-A032634(A066043(n+2)/2)]` -/
def P3810453028753339761.Spec : Prop :=
  ∀ n, P3810453028753339761.a n = A292663 (n + 1)

end A292663

/-! ## A292663.P4814178487402778865

`A066043(2*(n+1))-(A032634(n+1)+1)`
-/

namespace A292663.P4814178487402778865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066043 (2 * (n + 1)) - (A032634 (n + 1) + 1)

end

end A292663.P4814178487402778865

namespace A292663

/-- `A066043(2*(n+1))-(A032634(n+1)+1)` -/
def P4814178487402778865.Spec : Prop :=
  ∀ n, P4814178487402778865.a n = A292663 (n + 1)

end A292663

/-! ## A292663.P18401747318767852715

`A065033(2*n+1)-A032634(n+1)+n`
-/

namespace A292663.P18401747318767852715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n + 1) - A032634 (n + 1) + (n : ℤ)

end

end A292663.P18401747318767852715

namespace A292663

/-- `A065033(2*n+1)-A032634(n+1)+n` -/
def P18401747318767852715.Spec : Prop :=
  ∀ n, P18401747318767852715.a n = A292663 (n + 1)

end A292663

/-!
# A292664: Rank of n*e when all the numbers j*(e-1) and k*e, for j>=1, k>=1, are jointly ranked.

The programs for A292664, the canonical program `A292664.P10332037259361248374` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292664 has offset 1).

The definition of A292664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292664.P13172359894319993868

`comp[floor(e*n)]+1+n`
-/

namespace A292664.P13172359894319993868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A292664.P13172359894319993868

namespace A292664

/-- `comp[floor(e*n)]+1+n` -/
def P13172359894319993868.Spec : Prop :=
  ∀ n, (P13172359894319993868.a n : ℤ) = A292664 (n + 1)

end A292664

/-! ## A292664.P8404220288731294852

`floor(A330179(n+1)/3+n+1)`
-/

namespace A292664.P8404220288731294852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330179 (n + 1) : ℚ) / 3 + (n + 1 : ℚ)⌋

end

end A292664.P8404220288731294852

namespace A292664

/-- `floor(A330179(n+1)/3+n+1)` -/
def P8404220288731294852.Spec : Prop :=
  ∀ n, P8404220288731294852.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P3148423341818385597

`round(sqrt((A054385(n+1)+1+n)²+1))`
-/

namespace A292664.P3148423341818385597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A054385 (n + 1) + 1 + (n : ℤ)) ^ 2 + 1 : ℝ))

end

end A292664.P3148423341818385597

namespace A292664

/-- `round(sqrt((A054385(n+1)+1+n)²+1))` -/
def P3148423341818385597.Spec : Prop :=
  ∀ n, P3148423341818385597.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P3538747748521818147

`A000027(comp[A022843(n)]+n+1)`
-/

namespace A292664.P3538747748521818147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n + 1)

end

end A292664.P3538747748521818147

namespace A292664

/-- `A000027(comp[A022843(n)]+n+1)` -/
def P3538747748521818147.Spec : Prop :=
  ∀ n, P3538747748521818147.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P10332037259361248374

`A000027(A054385(n+1)+n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A292664

/-- `A000027(A054385(n+1)+n+1)` -/
def P10332037259361248374.Spec : Prop :=
  ∀ n, P10332037259361248374.a n = A292664 (n + 1)

theorem P10332037259361248374.correct : P10332037259361248374.Spec := by
  intro n
  simp only [A292664, Nat.add_sub_cancel]

end A292664

/-! ## A292664.P3120703578387309478

`record[A328399(n)+A054385(A008619(n))]`
-/

namespace A292664.P3120703578387309478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 n + A054385 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292664.P3120703578387309478

namespace A292664

/-- `record[A328399(n)+A054385(A008619(n))]` -/
def P3120703578387309478.Spec : Prop :=
  ∀ n, P3120703578387309478.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P15202390505210797836

`A028310(A054385(n+1)+n+1)`
-/

namespace A292664.P15202390505210797836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A054385 (n + 1) + (n + 1 : ℤ)).toNat

end

end A292664.P15202390505210797836

namespace A292664

/-- `A028310(A054385(n+1)+n+1)` -/
def P15202390505210797836.Spec : Prop :=
  ∀ n, P15202390505210797836.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P1208581838152399579

`A087156(A054385(n+1)+n+1)`
-/

namespace A292664.P1208581838152399579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A054385 (n + 1) + (n + 1 : ℤ)).toNat

end

end A292664.P1208581838152399579

namespace A292664

/-- `A087156(A054385(n+1)+n+1)` -/
def P1208581838152399579.Spec : Prop :=
  ∀ n, P1208581838152399579.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P2893797658110936275

`A023443(A054385(n+1)+n+2)`
-/

namespace A292664.P2893797658110936275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054385 (n + 1) + (n + 2 : ℤ)).toNat

end

end A292664.P2893797658110936275

namespace A292664

/-- `A023443(A054385(n+1)+n+2)` -/
def P2893797658110936275.Spec : Prop :=
  ∀ n, P2893797658110936275.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P17585101259748198291

`record[A263111(n)+A054385(A263111(n))]`
-/

namespace A292664.P17585101259748198291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 n + A054385 (A263111 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292664.P17585101259748198291

namespace A292664

/-- `record[A263111(n)+A054385(A263111(n))]` -/
def P17585101259748198291.Spec : Prop :=
  ∀ n, P17585101259748198291.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P1954271025263889596

`A108599(A108599(A054385(n+1)+n+1))`
-/

namespace A292664.P1954271025263889596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (A108599 (A054385 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A292664.P1954271025263889596

namespace A292664

/-- `A108599(A108599(A054385(n+1)+n+1))` -/
def P1954271025263889596.Spec : Prop :=
  ∀ n, P1954271025263889596.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P15644985401752196274

`A028242(2*(A054385(n+1)+n))`
-/

namespace A292664.P15644985401752196274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * (A054385 (n + 1) + (n : ℤ))).toNat

end

end A292664.P15644985401752196274

namespace A292664

/-- `A028242(2*(A054385(n+1)+n))` -/
def P15644985401752196274.Spec : Prop :=
  ∀ n, P15644985401752196274.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P6341161156359135370

`A108591(A108591(A054385(n+1)+n+1))`
-/

namespace A292664.P6341161156359135370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (A108591 (A054385 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A292664.P6341161156359135370

namespace A292664

/-- `A108591(A108591(A054385(n+1)+n+1))` -/
def P6341161156359135370.Spec : Prop :=
  ∀ n, P6341161156359135370.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P8514038343943954607

`A110119(A110119(A054385(n+1)+n+1))`
-/

namespace A292664.P8514038343943954607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (A110119 (A054385 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A292664.P8514038343943954607

namespace A292664

/-- `A110119(A110119(A054385(n+1)+n+1))` -/
def P8514038343943954607.Spec : Prop :=
  ∀ n, P8514038343943954607.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P1232389498835486080

`(A054385(n+1)+n+1)*char[A338830(n)]`
-/

namespace A292664.P1232389498835486080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338830 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054385 (n + 1) + (n : ℤ) + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292664.P1232389498835486080

namespace A292664

/-- `(A054385(n+1)+n+1)*char[A338830(n)]` -/
def P1232389498835486080.Spec : Prop :=
  ∀ n, P1232389498835486080.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P15809940198273690387

`A108592(A108592(A054385(n+1)+n+1))`
-/

namespace A292664.P15809940198273690387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108592 (A108592 (A054385 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A292664.P15809940198273690387

namespace A292664

/-- `A108592(A108592(A054385(n+1)+n+1))` -/
def P15809940198273690387.Spec : Prop :=
  ∀ n, P15809940198273690387.a n = A292664 (n + 1)

end A292664

/-! ## A292664.P5180739735398388534

`record[A101504(n)+A054385(A101504(n))]`
-/

namespace A292664.P5180739735398388534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101504 n + A054385 (A101504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292664.P5180739735398388534

namespace A292664

/-- `record[A101504(n)+A054385(A101504(n))]` -/
def P5180739735398388534.Spec : Prop :=
  ∀ n, P5180739735398388534.a n = A292664 (n + 1)

end A292664

/-!
# A292665: Rank of n*(e-1) when all the numbers j*(e-1) and k*(e+1), for j>=1, k>=1, are jointly ranked.

The programs for A292665, the canonical program `A292665.P15323345386634199452` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292665 has offset 1).

The definition of A292665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292665.P18309095364494131787

`comp[A292666(n+1)-1]+1`
-/

namespace A292665.P18309095364494131787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292666 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A292665.P18309095364494131787

namespace A292665

/-- `comp[A292666(n+1)-1]+1` -/
def P18309095364494131787.Spec : Prop :=
  ∀ n, (P18309095364494131787.a n : ℤ) = A292665 (n + 1)

end A292665

/-! ## A292665.P15323345386634199452

`comp[A184590(2*n+1)]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292665

/-- `comp[A184590(2*n+1)]+1` -/
def P15323345386634199452.Spec : Prop :=
  ∀ n, (P15323345386634199452.a n : ℤ) = A292665 (n + 1)

theorem P15323345386634199452.correct : P15323345386634199452.Spec := by
  intro n
  simp only [A292665, Nat.add_sub_cancel]

end A292665

/-! ## A292665.P87539349397392764

`A292646(2*(n+1))-2*(n+1)`
-/

namespace A292665.P87539349397392764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292646 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A292665.P87539349397392764

namespace A292665

/-- `A292646(2*(n+1))-2*(n+1)` -/
def P87539349397392764.Spec : Prop :=
  ∀ n, P87539349397392764.a n = A292665 (n + 1)

end A292665

/-! ## A292665.P14783059211253522492

`A189519(2*(n+1))-A000572(2*(n+1))`
-/

namespace A292665.P14783059211253522492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189519 (2 * (n + 1)) - A000572 (2 * (n + 1))

end

end A292665.P14783059211253522492

namespace A292665

/-- `A189519(2*(n+1))-A000572(2*(n+1))` -/
def P14783059211253522492.Spec : Prop :=
  ∀ n, P14783059211253522492.a n = A292665 (n + 1)

end A292665

/-! ## A292665.P276760902821242422

`A004396(A330180(n+1))`
-/

namespace A292665.P276760902821242422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A330180 (n + 1)).toNat

end

end A292665.P276760902821242422

namespace A292665

/-- `A004396(A330180(n+1))` -/
def P276760902821242422.Spec : Prop :=
  ∀ n, P276760902821242422.a n = A292665 (n + 1)

end A292665

/-! ## A292665.P13963742596448837838

`A189522(n+1)-A000210(n+1)`
-/

namespace A292665.P13963742596448837838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189522 (n + 1) - A000210 (n + 1)

end

end A292665.P13963742596448837838

namespace A292665

/-- `A189522(n+1)-A000210(n+1)` -/
def P13963742596448837838.Spec : Prop :=
  ∀ n, P13963742596448837838.a n = A292665 (n + 1)

end A292665

/-! ## A292665.P14080162699409362695

`A002264(A330180(2*(n+1)))`
-/

namespace A292665.P14080162699409362695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A330180 (2 * (n + 1))).toNat

end

end A292665.P14080162699409362695

namespace A292665

/-- `A002264(A330180(2*(n+1)))` -/
def P14080162699409362695.Spec : Prop :=
  ∀ n, P14080162699409362695.a n = A292665 (n + 1)

end A292665

/-! ## A292665.P14906754622005901486

`A002264(A330180(n+1)+A330180(n+1)+1)`
-/

namespace A292665.P14906754622005901486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A330180 (n + 1) + (A330180 (n + 1) + 1)).toNat

end

end A292665.P14906754622005901486

namespace A292665

/-- `A002264(A330180(n+1)+A330180(n+1)+1)` -/
def P14906754622005901486.Spec : Prop :=
  ∀ n, P14906754622005901486.a n = A292665 (n + 1)

end A292665

/-!
# A292666: Rank of n*(e+1) when all the numbers j*(e-1) and k*(e+1), for j>=1, k>=1, are jointly ranked.

The programs for A292666, the canonical program `A292666.P16137424853136077463` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292666 has offset 1).

The definition of A292666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292666.P16137424853136077463

`A189523(n+1)-A000572(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A292666

/-- `A189523(n+1)-A000572(n+1)` -/
def P16137424853136077463.Spec : Prop :=
  ∀ n, P16137424853136077463.a n = A292666 (n + 1)

theorem P16137424853136077463.correct : P16137424853136077463.Spec := by
  intro n
  simp only [A292666, Nat.add_sub_cancel]

end A292666

/-! ## A292666.P4418720958284364811

`A330179(n+1)-A054385(n+1)`
-/

namespace A292666.P4418720958284364811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330179 (n + 1) - A054385 (n + 1)

end

end A292666.P4418720958284364811

namespace A292666

/-- `A330179(n+1)-A054385(n+1)` -/
def P4418720958284364811.Spec : Prop :=
  ∀ n, P4418720958284364811.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P8629899551581990021

`A054385(2*(n+1))`
-/

namespace A292666.P8629899551581990021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (2 * (n + 1))

end

end A292666.P8629899551581990021

namespace A292666

/-- `A054385(2*(n+1))` -/
def P8629899551581990021.Spec : Prop :=
  ∀ n, P8629899551581990021.a n = A292666 (n + 1)

theorem P8629899551581990021.correct : P8629899551581990021.Spec := by
  intro n
  simp only [A292666, Nat.add_sub_cancel, A292666.P8629899551581990021.a, A292666.P16137424853136077463.a, A000572, A000572.P3578859663019225295.a, A054385, A054385.P13327735877817480647.a, A189523, A189523.P484942665720503072.a, A014246, A014246.P5171102780274933907.a, A022843, A022843.P5357273111751487291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292666

/-! ## A292666.P6693268867826965660

`A184590(Δ[n²])+1`
-/

namespace A292666.P6693268867826965660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184590 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A292666.P6693268867826965660

namespace A292666

/-- `A184590(Δ[n²])+1` -/
def P6693268867826965660.Spec : Prop :=
  ∀ n, P6693268867826965660.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P11819342666944338386

`record[A054385(and(n, n+1)+2)]`
-/

namespace A292666.P11819342666944338386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (Nat.land n (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292666.P11819342666944338386

namespace A292666

/-- `record[A054385(and(n, n+1)+2)]` -/
def P11819342666944338386.Spec : Prop :=
  ∀ n, P11819342666944338386.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P16026203666745161729

`record[A054385((n+1)%4+n+1)]`
-/

namespace A292666.P16026203666745161729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 ((n + 1) % 4 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292666.P16026203666745161729

namespace A292666

/-- `record[A054385((n+1)%4+n+1)]` -/
def P16026203666745161729.Spec : Prop :=
  ∀ n, P16026203666745161729.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P4837906476984991543

`record[A054385(A133265(n))]`
-/

namespace A292666.P4837906476984991543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292666.P4837906476984991543

namespace A292666

/-- `record[A054385(A133265(n))]` -/
def P4837906476984991543.Spec : Prop :=
  ∀ n, P4837906476984991543.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P2905621478354480508

`record[A054385(2*A328399(n))]`
-/

namespace A292666.P2905621478354480508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (2 * A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292666.P2905621478354480508

namespace A292666

/-- `record[A054385(2*A328399(n))]` -/
def P2905621478354480508.Spec : Prop :=
  ∀ n, P2905621478354480508.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P164966805409219576

`record[A054385(3-A020639(n+1)+n)]`
-/

namespace A292666.P164966805409219576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (3 - A020639 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292666.P164966805409219576

namespace A292666

/-- `record[A054385(3-A020639(n+1)+n)]` -/
def P164966805409219576.Spec : Prop :=
  ∀ n, P164966805409219576.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P7522597248795822150

`A276853(n+1)-A014246(2*(n+1))`
-/

namespace A292666.P7522597248795822150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 (n + 1) - A014246 (2 * (n + 1))

end

end A292666.P7522597248795822150

namespace A292666

/-- `A276853(n+1)-A014246(2*(n+1))` -/
def P7522597248795822150.Spec : Prop :=
  ∀ n, P7522597248795822150.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P1683393233943527673

`A022806(2*(n+1))-A276853(n+1)`
-/

namespace A292666.P1683393233943527673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022806 (2 * (n + 1)) - A276853 (n + 1)

end

end A292666.P1683393233943527673

namespace A292666

/-- `A022806(2*(n+1))-A276853(n+1)` -/
def P1683393233943527673.Spec : Prop :=
  ∀ n, P1683393233943527673.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P13219767033501643267

`record[A054385(n+2)/A009531(n+1)²]`
-/

namespace A292666.P13219767033501643267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054385 (n + 2) : ℚ) / (A009531 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292666.P13219767033501643267

namespace A292666

/-- `record[A054385(n+2)/A009531(n+1)²]` -/
def P13219767033501643267.Spec : Prop :=
  ∀ n, P13219767033501643267.a n = (A292666 (n + 1) : ℚ)

end A292666

/-! ## A292666.P7126002738436887722

`A022843(2*(n+1))-A014246(2*(n+1))`
-/

namespace A292666.P7126002738436887722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (2 * (n + 1)) - A014246 (2 * (n + 1))

end

end A292666.P7126002738436887722

namespace A292666

/-- `A022843(2*(n+1))-A014246(2*(n+1))` -/
def P7126002738436887722.Spec : Prop :=
  ∀ n, P7126002738436887722.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P15173735243617318086

`record[A054385(A009531(n+1+n)+n+1)]`
-/

namespace A292666.P15173735243617318086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (A009531 (n + 1 + n) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292666.P15173735243617318086

namespace A292666

/-- `record[A054385(A009531(n+1+n)+n+1)]` -/
def P15173735243617318086.Spec : Prop :=
  ∀ n, P15173735243617318086.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P6910023967241070549

`record[A054385(2*A263111(n))]`
-/

namespace A292666.P6910023967241070549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (2 * A263111 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292666.P6910023967241070549

namespace A292666

/-- `record[A054385(2*A263111(n))]` -/
def P6910023967241070549.Spec : Prop :=
  ∀ n, P6910023967241070549.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P3382421768068420873

`A004396(A330179(n+1))`
-/

namespace A292666.P3382421768068420873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A330179 (n + 1)).toNat

end

end A292666.P3382421768068420873

namespace A292666

/-- `A004396(A330179(n+1))` -/
def P3382421768068420873.Spec : Prop :=
  ∀ n, P3382421768068420873.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P9583079542239528438

`A108599(A276853(n+1))`
-/

namespace A292666.P9583079542239528438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (A276853 (n + 1)).toNat

end

end A292666.P9583079542239528438

namespace A292666

/-- `A108599(A276853(n+1))` -/
def P9583079542239528438.Spec : Prop :=
  ∀ n, P9583079542239528438.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P5032799815129937655

`A108599(∑[A276860(n+1)])`
-/

namespace A292666.P5032799815129937655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292666.P5032799815129937655

namespace A292666

/-- `A108599(∑[A276860(n+1)])` -/
def P5032799815129937655.Spec : Prop :=
  ∀ n, P5032799815129937655.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P6774481244988711697

`A108599(A022843(2*(n+1)))`
-/

namespace A292666.P6774481244988711697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (A022843 (2 * (n + 1))).toNat

end

end A292666.P6774481244988711697

namespace A292666

/-- `A108599(A022843(2*(n+1)))` -/
def P6774481244988711697.Spec : Prop :=
  ∀ n, P6774481244988711697.a n = A292666 (n + 1)

end A292666

/-! ## A292666.P16629308431262644851

`A002264(A330179(2*(n+1)))`
-/

namespace A292666.P16629308431262644851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A330179 (2 * (n + 1))).toNat

end

end A292666.P16629308431262644851

namespace A292666

/-- `A002264(A330179(2*(n+1)))` -/
def P16629308431262644851.Spec : Prop :=
  ∀ n, P16629308431262644851.a n = A292666 (n + 1)

end A292666

/-!
# A292668: Number of forests of exactly n (unlabeled) ordered rooted trees with a total of 2n non-root nodes.

The programs for A292668, there is no canonical definition to state claims against.
-/

/-! ## A292668.P11409494188840812823

`A275431(∑[4*n]+1)`
-/

namespace A292668.P11409494188840812823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275431 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A292668.P11409494188840812823

/-! ## A292668.P1270778391172700770

`record[gcd(A112467(n), A275431(n+1))]`
-/

namespace A292668.P1270778391172700770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A275431 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292668.P1270778391172700770

/-! ## A292668.P7033008839833150829

`record[A275431(round(A004202(n+1)/2))]`
-/

namespace A292668.P7033008839833150829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275431 (SequenceMachineLib.roundAway ((A004202 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292668.P7033008839833150829

/-! ## A292668.P3057284130694690885

`record[and(A185917(n+1), A275431(n+1))]`
-/

namespace A292668.P3057284130694690885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A275431 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292668.P3057284130694690885

/-! ## A292668.P13461963246536664806

`A275431(A001844(n))%A164021(n)`
-/

namespace A292668.P13461963246536664806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275431 (A001844 n).toNat) (A164021 n)

end

end A292668.P13461963246536664806

/-!
# A292670: Least number of symbols required to fill a grid of size n^2 X n^2 row by row in the greedy way such that in no row or column or n X n square any symbol occurs twice.

The programs for A292670, there is no canonical definition to state claims against.
-/

/-! ## A292670.P3852687663941740667

`A292671(A101374(n+1))`
-/

namespace A292670.P3852687663941740667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292671 (A101374 (n + 1)).toNat

end

end A292670.P3852687663941740667

/-!
# A292672: Least number of symbols required to fill a grid of size n X n row by row in the greedy way such that in any row or column or rectangular 2 X 2 block no symbol occurs twice.

The programs for A292672, there is no canonical definition to state claims against.
-/

/-! ## A292672.P10518450157298647865

`A292671(∑[char[1]+n]+1)`
-/

namespace A292672.P10518450157298647865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292671 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A292672.P10518450157298647865

/-!
# A292673: Least number of symbols required to fill a grid of size n X n row by row in the greedy way such that in any row or column or rectangular 3 X 3 block no symbol occurs twice.

The programs for A292673, there is no canonical definition to state claims against.
-/

/-! ## A292673.P846658592927081628

`A292671(∑[A329679(3*n)+n])`
-/

namespace A292673.P846658592927081628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329679 (3 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292671 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292673.P846658592927081628

/-! ## A292673.P8107326771742730673

`A292671(A122553(n)+A000217(n))`
-/

namespace A292673.P8107326771742730673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292671 (A122553 n + A000217 n).toNat

end

end A292673.P8107326771742730673

/-! ## A292673.P18140039589981013272

`A292671(A133263(n)+1-A000007(n))`
-/

namespace A292673.P18140039589981013272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292671 (A133263 n + 1 - A000007 n).toNat

end

end A292673.P18140039589981013272

/-! ## A292673.P1682509281555133587

`A292671(A000217(n+1)-A289207(n))`
-/

namespace A292673.P1682509281555133587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292671 (A000217 (n + 1) - A289207 n).toNat

end

end A292673.P1682509281555133587

/-!
# A292674: Least number of symbols required to fill a grid of size n X n row by row in the greedy way such that in any row or column or rectangular 4 X 4 block no symbol occurs twice.

The programs for A292674, there is no canonical definition to state claims against.
-/

/-! ## A292674.P16868923617488171799

`A292671(A077169(n+1)-1)`
-/

namespace A292674.P16868923617488171799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292671 (A077169 (n + 1) - 1).toNat

end

end A292674.P16868923617488171799

/-!
# A292675: Least number of symbols required to fill a grid of size n X n row by row in the greedy way such that in any row or column or rectangular 5 X 5 block no symbol occurs twice.

The programs for A292675, there is no canonical definition to state claims against.
-/

/-! ## A292675.P7726304306002731825

`A292671(A077169(n)+n)`
-/

namespace A292675.P7726304306002731825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292671 (A077169 n + (n : ℤ)).toNat

end

end A292675.P7726304306002731825

/-! ## A292675.P16947849711585201537

`eq[A002828(n), A035115(n+1)]`
-/

namespace A292675.P16947849711585201537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292675.P16947849711585201537

/-!
# A292677: Least number of symbols required to fill a grid of size n X n row by row in the greedy way such that in no row or column or 7 X 7 square any symbol occurs twice.

The programs for A292677, there is no canonical definition to state claims against.
-/

/-! ## A292677.P9860844512719727405

`∑[A112739(∑[A033865(n+3)])]`
-/

namespace A292677.P9860844512719727405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292677.P9860844512719727405

/-! ## A292677.P7611421641320516117

`∑[A167430(∑[A000015(2*n+1)])]`
-/

namespace A292677.P7611421641320516117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292677.P7611421641320516117

/-!
# A292678: Least number of symbols required to fill a grid of size n X n row by row in the greedy way such that in any row or column or rectangular 8 X 8 block no symbol occurs twice.

The programs for A292678, there is no canonical definition to state claims against.
-/

/-! ## A292678.P6458294377768581458

`∑[(∑{digits}[n, #+1]+n)%A331196(∏{digits}[n, (-(-1)^#)^#+9]-(n+1))]`
-/

namespace A292678.P6458294377768581458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x + 1).sum + n : ℕ) : ℤ) (A331196 (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (-((-1) ^ x)) ^ x + 9).prod - (n + 1 : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292678.P6458294377768581458

/-! ## A292678.P17444324012336582079

`∑[A000005(char[8]+4^n)]`
-/

namespace A292678.P17444324012336582079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((if ∃ j, f2 j = n then 1 else 0) + 4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292678.P17444324012336582079

/-! ## A292678.P10153665310288279960

`(n+1)²-A184955(2*n)/6`
-/

namespace A292678.P10153665310288279960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) - (A184955 (2 * n) : ℚ) / 6

end

end A292678.P10153665310288279960

/-! ## A292678.P8170994768308290970

`∑[Δ[n²]%A384070(3*n+1)]`
-/

namespace A292678.P8170994768308290970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (A384070 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292678.P8170994768308290970

/-! ## A292678.P5168534545506275108

`eq[A238094(n+1), A266364(n)]`
-/

namespace A292678.P5168534545506275108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292678.P5168534545506275108

/-!
# A292679: Least number of symbols required to fill a grid of size n X n row by row in the greedy way such that in any row or column or rectangular 9 X 9 block no symbol occurs twice.

The programs for A292679, there is no canonical definition to state claims against.
-/

/-! ## A292679.P6049941890554934391

`∑[A008619(A162502(n+1)%A105758(n+1))]`
-/

namespace A292679.P6049941890554934391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A162502 (n + 1)) (A105758 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292679.P6049941890554934391

/-! ## A292679.P8305926294660354131

`or(A080151(n+1), A186717(A001612(n)))`
-/

namespace A292679.P8305926294660354131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080151 (n + 1)) (A186717 (A001612 n).toNat)

end

end A292679.P8305926294660354131

/-! ## A292679.P8031497649780046759

`A102683(A102713(n+1))+A080151(n+1)`
-/

namespace A292679.P8031497649780046759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A102713 (n + 1)).toNat + A080151 (n + 1)

end

end A292679.P8031497649780046759

/-! ## A292679.P577622726016525863

`eq[A318809(n+1), A338027(n)]`
-/

namespace A292679.P577622726016525863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292679.P577622726016525863

/-! ## A292679.P462779133827358228

`eq[A353349(n+1), A373088(n)]`
-/

namespace A292679.P462779133827358228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292679.P462779133827358228

/-!
# A292680: Rule 6: 000, ..., 111 -> 0, 1, 1, 0, 0, 0, 0, 0.

The programs for A292680, there is no canonical definition to state claims against.
-/

/-! ## A292680.P5442810627652405133

`and(2*xor(n, 2*n), -n)`
-/

namespace A292680.P5442810627652405133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * Nat.xor n (2 * n) : ℤ) (-(n : ℤ))

end

end A292680.P5442810627652405133

/-! ## A292680.P11046216474618341897

`or(n, 2*xor(n, 2*n))-n`
-/

namespace A292680.P11046216474618341897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * Nat.xor n (2 * n)) : ℤ) - (n : ℤ)

end

end A292680.P11046216474618341897

/-! ## A292680.P4316311854234990204

`xor(n, or(n, 2*xor(n, 2*n)))`
-/

namespace A292680.P4316311854234990204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor n (2 * Nat.xor n (2 * n)))

end

end A292680.P4316311854234990204

/-! ## A292680.P9710884936211499286

`and(n-2*n, 2*xor(n, 2*n))`
-/

namespace A292680.P9710884936211499286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - (2 * n : ℤ)) (2 * Nat.xor n (2 * n) : ℤ)

end

end A292680.P9710884936211499286

/-! ## A292680.P14887026363707043141

`and(-n, xor(n+n, (sqrt(n)+sqrt(n))²))`
-/

namespace A292680.P14887026363707043141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (Int.xor (n + n : ℤ) (SequenceMachineLib.roundAway ((Real.sqrt (n : ℝ) + Real.sqrt (n : ℝ)) ^ 2)))

end

end A292680.P14887026363707043141

/-! ## A292680.P10979714369162748850

`xor(2*xor(n, 2*n), and(n, 2*xor(n, 2*n)))`
-/

namespace A292680.P10979714369162748850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * Nat.xor n (2 * n)) (Nat.land n (2 * Nat.xor n (2 * n)))

end

end A292680.P10979714369162748850

/-! ## A292680.P13367157790607873680

`2*A292681(n)`
-/

namespace A292680.P13367157790607873680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292681 n

end

end A292680.P13367157790607873680

/-! ## A292680.P4778754724977922563

`or(n, A048726(n))-n`
-/

namespace A292680.P4778754724977922563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A048726 n) - (n : ℤ)

end

end A292680.P4778754724977922563

/-! ## A292680.P4011624845756376267

`or(n, A269161(n))-n`
-/

namespace A292680.P4011624845756376267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A269161 n) - (n : ℤ)

end

end A292680.P4011624845756376267

/-! ## A292680.P7949603815318219137

`and(-n, A048724(2*n))`
-/

namespace A292680.P7949603815318219137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (A048724 (2 * n))

end

end A292680.P7949603815318219137

/-!
# A292681: Rule 6: (000, ..., 111) -> (0, 1, 1, 0, 0, 0, 0, 0), without extending to the right of input bit 0.

The programs for A292681, there is no canonical definition to state claims against.
-/

/-! ## A292681.P7295347581459500140

`and(xor(n, 2*n), floor(-(n/2)))`
-/

namespace A292681.P7295347581459500140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.xor n (2 * n) : ℤ) ⌊-((n : ℚ) / 2)⌋

end

end A292681.P7295347581459500140

/-! ## A292681.P9000698087269409693

`and(-ceil(n/2), xor(n, 2*n))`
-/

namespace A292681.P9000698087269409693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-⌈(n : ℚ) / 2⌉) (Nat.xor n (2 * n) : ℤ)

end

end A292681.P9000698087269409693

/-! ## A292681.P13869948417944305932

`and(2*xor(n, 2*n), -n)/2`
-/

namespace A292681.P13869948417944305932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (2 * Nat.xor n (2 * n) : ℤ) (-(n : ℤ)) : ℚ) / 2

end

end A292681.P13869948417944305932

/-! ## A292681.P16543219977090860238

`(or(n, 2*xor(n, 2*n))-n)/2`
-/

namespace A292681.P16543219977090860238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (2 * Nat.xor n (2 * n)) : ℤ) - (n : ℤ) : ℚ) / 2

end

end A292681.P16543219977090860238

/-! ## A292681.P9114446566410145395

`xor(n, or(n, 2*xor(n, 2*n)))/2`
-/

namespace A292681.P9114446566410145395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (Nat.lor n (2 * Nat.xor n (2 * n))) : ℚ) / 2

end

end A292681.P9114446566410145395

/-! ## A292681.P14325201146897472001

`and(n-2*n, 2*xor(n, 2*n))/2`
-/

namespace A292681.P14325201146897472001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land ((n : ℤ) - (2 * n : ℤ)) (2 * Nat.xor n (2 * n) : ℤ) : ℚ) / 2

end

end A292681.P14325201146897472001

/-! ## A292681.P4082391564689953404

`and(-xor(n-1, Δ[-n²]), -ceil(n/2))`
-/

namespace A292681.P4082391564689953404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-Int.xor ((n : ℤ) - 1) (f1 (n + 1) - f1 n)) (-⌈(n : ℚ) / 2⌉)

end

end A292681.P4082391564689953404

/-! ## A292681.P14504210460929511166

`and(∑[-(n%2)], A048724(n))`
-/

namespace A292681.P14504210460929511166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A048724 n)

end

end A292681.P14504210460929511166

/-! ## A292681.P10656591586756636411

`A163617(n)-A048733(n)`
-/

namespace A292681.P10656591586756636411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n - A048733 n

end

end A292681.P10656591586756636411

/-! ## A292681.P17222029449485565892

`and(A048724(n), A387312(n))`
-/

namespace A292681.P17222029449485565892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048724 n) (A387312 n)

end

end A292681.P17222029449485565892

/-!
# A292682: Rule 230: (000, ..., 111) -> (0, 1, 1, 0, 0, 1, 1, 1), without extending to the right of input bit 0.

The programs for A292682, there is no canonical definition to state claims against.
-/

/-! ## A292682.P9572742819406310873

`or(and(n, floor(n/2)), xor(n, 2*n))`
-/

namespace A292682.P9572742819406310873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋) (Nat.xor n (2 * n) : ℤ)

end

end A292682.P9572742819406310873

/-! ## A292682.P5594089582160896701

`or(and(n, 2*n)/2, xor(n, 2*n))`
-/

namespace A292682.P5594089582160896701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((Nat.land n (2 * n) : ℚ) / 2)) (Nat.xor n (2 * n) : ℤ)

end

end A292682.P5594089582160896701

/-! ## A292682.P15677230122742557595

`or(n-and(n, ∑[-and(1, n)]), xor(n, 2*n))`
-/

namespace A292682.P15677230122742557595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - Int.land (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)) (Nat.xor n (2 * n) : ℤ)

end

end A292682.P15677230122742557595

/-! ## A292682.P8565050323195045296

`or((or(2*n, -n)+n)/2, xor(n, 2*n))`
-/

namespace A292682.P8565050323195045296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((Int.lor (2 * n : ℤ) (-(n : ℤ)) + (n : ℤ) : ℚ) / 2)) (Nat.xor n (2 * n) : ℤ)

end

end A292682.P8565050323195045296

/-! ## A292682.P13820695104475581414

`xor(n, 2*n)+and(2*n, and(n, floor(n/2)))`
-/

namespace A292682.P13820695104475581414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℤ) + Int.land (2 * n : ℤ) (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A292682.P13820695104475581414

/-! ## A292682.P11158650318257368995

`or(n, 2*n)-and(2*n, and(n, floor(-(n/2))))`
-/

namespace A292682.P11158650318257368995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) : ℤ) - Int.land (2 * n : ℤ) (Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋)

end

end A292682.P11158650318257368995

/-! ## A292682.P6723521650350739683

`or(2*and(2*n, -n)-n, and(n, 2*n)/2)`
-/

namespace A292682.P6723521650350739683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * Int.land (2 * n : ℤ) (-(n : ℤ)) - (n : ℤ)) (SequenceMachineLib.roundAway ((Nat.land n (2 * n) : ℚ) / 2))

end

end A292682.P6723521650350739683

/-! ## A292682.P18437636052358045216

`or(3*n-2*and(n, 2*n), and(n, floor(n/2)))`
-/

namespace A292682.P18437636052358045216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((3 * n : ℤ) - (2 * Nat.land n (2 * n) : ℤ)) (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A292682.P18437636052358045216

/-! ## A292682.P1071906528151043476

`or(2*n-and(n, 2*n)/2, n-and(n, 2*n))`
-/

namespace A292682.P1071906528151043476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 * n : ℚ) - (Nat.land n (2 * n) : ℚ) / 2)) ((n : ℤ) - (Nat.land n (2 * n) : ℤ))

end

end A292682.P1071906528151043476

/-! ## A292682.P16015964452818733094

`or(xor(n, 2*n), A048735(n))`
-/

namespace A292682.P16015964452818733094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.xor n (2 * n) : ℤ) (A048735 n)

end

end A292682.P16015964452818733094

/-!
# A292683: Numbers divisible by themselves with first digit removed (A217657), excluding multiples of 10.

The programs for A292683, there is no canonical definition to state claims against.
-/

/-! ## A292683.P14463248286598006067

`A178158(n+10)%A262508(n+2)`
-/

namespace A292683.P14463248286598006067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178158 (n + 10)) (A262508 (n + 2))

end

end A292683.P14463248286598006067

/-! ## A292683.P12550092889397946407

`A178158(n+10)+C(A220501(n)%2, 2)`
-/

namespace A292683.P12550092889397946407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178158 (n + 10) + (Nat.choose (Int.tmod (A220501 n) 2).toNat 2 : ℤ)

end

end A292683.P12550092889397946407

/-! ## A292683.P5204927039986178229

`A178158(n+10)%A054815(A220501(n))`
-/

namespace A292683.P5204927039986178229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178158 (n + 10)) (A054815 (A220501 n).toNat)

end

end A292683.P5204927039986178229

/-! ## A292683.P16932233929595540194

`A178158(n+10)+A000007(A220501(n)+1)`
-/

namespace A292683.P16932233929595540194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178158 (n + 10) + A000007 (A220501 n + 1).toNat

end

end A292683.P16932233929595540194

/-! ## A292683.P17117771496292774007

`A198954(A138640(n+1))+A178158(n+10)`
-/

namespace A292683.P17117771496292774007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A138640 (n + 1)).toNat + A178158 (n + 10)

end

end A292683.P17117771496292774007

/-! ## A292683.P4556197359982806784

`A178158(n+10)+A000007(A086620(n+2))`
-/

namespace A292683.P4556197359982806784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178158 (n + 10) + A000007 (A086620 (n + 2)).toNat

end

end A292683.P4556197359982806784

/-! ## A292683.P7151802792465438839

`A178158(n+10)+A091398(A220501(n)+2)`
-/

namespace A292683.P7151802792465438839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178158 (n + 10) + A091398 (A220501 n + 2).toNat

end

end A292683.P7151802792465438839

/-! ## A292683.P6486999720331302414

`A178158(n+10)/A178334(A331995(n+1))`
-/

namespace A292683.P6486999720331302414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178158 (n + 10) : ℚ) / (A178334 (A331995 (n + 1)).toNat : ℚ)

end

end A292683.P6486999720331302414

/-!
# A292687: 

The programs for A292687, there is no canonical definition to state claims against.
-/

/-! ## A292687.P15594599329690120606

`(4^3^(n-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A292687.P15594599329690120606
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((4 : ℝ) ^ ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) + 1) * a (n - 1)

end

end A292687.P15594599329690120606

/-!
# A292688: Antidiagonals of the Sierpinski carpet (as binary numbers).

The programs for A292688, there is no canonical definition to state claims against.
-/

/-! ## A292688.P12718024654081693734

`A007088(A292689(n+1))`
-/

namespace A292688.P12718024654081693734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A292689 (n + 1)).toNat

end

end A292688.P12718024654081693734

/-! ## A292688.P2872859208690857257

`A305989(or(A000122(n), A292689(n+1)))`
-/

namespace A292688.P2872859208690857257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A000122 n) (A292689 (n + 1))).toNat

end

end A292688.P2872859208690857257

/-! ## A292688.P3414629451883229820

`A305989(A122586(n+1)*A292689(n+1))`
-/

namespace A292688.P3414629451883229820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A122586 (n + 1) * A292689 (n + 1)).toNat

end

end A292688.P3414629451883229820

/-! ## A292688.P7304343915816004044

`A305989(lcm(A153881(n+1), A292689(n+1)))`
-/

namespace A292688.P7304343915816004044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lcm (A153881 (n + 1)) (A292689 (n + 1)))

end

end A292688.P7304343915816004044

/-! ## A292688.P2886078657729590892

`A305989(and(A153881(n+1), A292689(n+1)))`
-/

namespace A292688.P2886078657729590892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.land (A153881 (n + 1)) (A292689 (n + 1))).toNat

end

end A292688.P2886078657729590892

/-!
# A292689: Decimal values of the antidiagonals of the Sierpinski carpet considered as binary numbers.

The programs for A292689, there is no canonical definition to state claims against.
-/

/-! ## A292689.P1972993822960008479

`A175298(A265555(2^n))`
-/

namespace A292689.P1972993822960008479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (A265555 (2 ^ n)).toNat

end

end A292689.P1972993822960008479

/-! ## A292689.P14373486598577927089

`A175298(A265571(2^n))`
-/

namespace A292689.P14373486598577927089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (A265571 (2 ^ n)).toNat

end

end A292689.P14373486598577927089

/-! ## A292689.P10712111841419277467

`record[A185587(A186413(n+1))]`
-/

namespace A292689.P10712111841419277467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185587 (A186413 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292689.P10712111841419277467

/-!
# A292692: a(n) = A258220(2n,n).

The programs for A292692, there is no canonical definition to state claims against.
-/

/-! ## A292692.P9906102686023553199

`A258220(∑[4*n])`
-/

namespace A292692.P9906102686023553199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258220 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292692.P9906102686023553199

/-! ## A292692.P12790043256677918791

`record[gcd(A112467(n), A258220(n))]`
-/

namespace A292692.P12790043256677918791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A258220 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292692.P12790043256677918791

/-! ## A292692.P3165611132229699576

`record[A077606(n+1)*A258220(n)]`
-/

namespace A292692.P3165611132229699576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A258220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292692.P3165611132229699576

/-! ## A292692.P9360242846083680727

`gcd(A000038(n), A258220(A046092(n)))`
-/

namespace A292692.P9360242846083680727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258220 (A046092 n).toNat)

end

end A292692.P9360242846083680727

/-! ## A292692.P5544399999222249211

`A258220(A046092(n))%A258192(n+1)`
-/

namespace A292692.P5544399999222249211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258220 (A046092 n).toNat) (A258192 (n + 1))

end

end A292692.P5544399999222249211

/-!
# A292693: Sum over all Dyck paths of semilength n of products over all peaks p of (x_p+n*y_p)/y_p, where x_p and y_p are the coordinates of peak p.

The programs for A292693, there is no canonical definition to state claims against.
-/

/-! ## A292693.P15143696926241028440

`A258219(∑[4*n])`
-/

namespace A292693.P15143696926241028440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292693.P15143696926241028440

/-! ## A292693.P5332727653273245701

`record[A003982(n)*A258219(n)]`
-/

namespace A292693.P5332727653273245701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A258219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292693.P5332727653273245701

/-! ## A292693.P11090672030765022276

`A258219(A046092(n))+A025469(n)`
-/

namespace A292693.P11090672030765022276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258219 (A046092 n).toNat + A025469 n

end

end A292693.P11090672030765022276

/-! ## A292693.P9442890729162483866

`A007318(C(2, n))*A258219(A046092(n))`
-/

namespace A292693.P9442890729162483866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A258219 (A046092 n).toNat

end

end A292693.P9442890729162483866

/-!
# A292694: Sum over all Dyck paths of semilength n of products over all peaks p of (n*x_p+y_p)/y_p, where x_p and y_p are the coordinates of peak p.

The programs for A292694, there is no canonical definition to state claims against.
-/

/-! ## A292694.P11999131411373477192

`A258222(∑[4*n])`
-/

namespace A292694.P11999131411373477192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292694.P11999131411373477192

/-! ## A292694.P17368292289511468674

`record[A003982(n)*A258222(n)]`
-/

namespace A292694.P17368292289511468674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A258222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292694.P17368292289511468674

/-! ## A292694.P13369392129839708422

`gcd(A000038(n), A258222(A046092(n)))`
-/

namespace A292694.P13369392129839708422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258222 (A046092 n).toNat)

end

end A292694.P13369392129839708422

/-! ## A292694.P6554768572054945939

`or(A000007(n), A258222(A046092(n)))`
-/

namespace A292694.P6554768572054945939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A258222 (A046092 n).toNat)

end

end A292694.P6554768572054945939

/-! ## A292694.P2662445204180959141

`A258222(A046092(n))+A034477(n+1)`
-/

namespace A292694.P2662445204180959141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258222 (A046092 n).toNat + A034477 (n + 1)

end

end A292694.P2662445204180959141

/-!
# A292695: a(n) = A258223(2n,n).

The programs for A292695, there is no canonical definition to state claims against.
-/

/-! ## A292695.P1216221665085001318

`A258223(∑[4*n])`
-/

namespace A292695.P1216221665085001318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292695.P1216221665085001318

/-!
# A292696: a(n) = L(n)^2 - 5*(-1)^n = L(n+1)*L(n-1), where L = A000032.

The programs for A292696, the canonical program `A292696.P8942247901209252536` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292696 has offset 0).

The definition of A292696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292696.P8942247901209252536

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=-1, a(1)=6, a(2)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A292696

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P8942247901209252536.Spec : Prop :=
  ∀ n, P8942247901209252536.a n = A292696 n

theorem P8942247901209252536.correct : P8942247901209252536.Spec := by
  intro n
  simp only [A292696]

end A292696

/-! ## A292696.P6417407162475116595

`ogf((1-8x+6x^2)/(-1+2x+2x^2-x^3))`
-/

namespace A292696.P6417407162475116595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 8, -6] [1, -2, -2, 1] n

end

end A292696.P6417407162475116595

namespace A292696

/-- `ogf((1-8x+6x^2)/(-1+2x+2x^2-x^3))` -/
def P6417407162475116595.Spec : Prop :=
  ∀ n, P6417407162475116595.a n = A292696 n

end A292696

/-! ## A292696.P18257632908319489283

`A000032(2*n)-3*(-1)^n`
-/

namespace A292696.P18257632908319489283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - 3 * (-1) ^ n

end

end A292696.P18257632908319489283

namespace A292696

/-- `A000032(2*n)-3*(-1)^n` -/
def P18257632908319489283.Spec : Prop :=
  ∀ n, P18257632908319489283.a n = A292696 n

end A292696

/-! ## A292696.P8287778121330574009

`A005248(n)-A174971(n)`
-/

namespace A292696.P8287778121330574009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - A174971 n

end

end A292696.P8287778121330574009

namespace A292696

/-- `A005248(n)-A174971(n)` -/
def P8287778121330574009.Spec : Prop :=
  ∀ n, P8287778121330574009.a n = A292696 n

end A292696

/-! ## A292696.P4777963209564660962

`-(A061084(n)*A075193(n))`
-/

namespace A292696.P4777963209564660962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A061084 n * A075193 n)

end

end A292696.P4777963209564660962

namespace A292696

/-- `-(A061084(n)*A075193(n))` -/
def P4777963209564660962.Spec : Prop :=
  ∀ n, P4777963209564660962.a n = A292696 n

end A292696

/-! ## A292696.P6711843253200543792

`A005592(n)+Δ[A097062(n)]`
-/

namespace A292696.P6711843253200543792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 n + (f1 (n + 1) - f1 n)

end

end A292696.P6711843253200543792

namespace A292696

/-- `A005592(n)+Δ[A097062(n)]` -/
def P6711843253200543792.Spec : Prop :=
  ∀ n, P6711843253200543792.a n = A292696 n

end A292696

/-! ## A292696.P1643505621738360668

`A081714(n)+Δ[A128535(n)]`
-/

namespace A292696.P1643505621738360668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 n + (f1 (n + 1) - f1 n)

end

end A292696.P1643505621738360668

namespace A292696

/-- `A081714(n)+Δ[A128535(n)]` -/
def P1643505621738360668.Spec : Prop :=
  ∀ n, P1643505621738360668.a n = A292696 n

end A292696

/-! ## A292696.P17902814252870391723

`A174971(n+1)+A005248(n)`
-/

namespace A292696.P17902814252870391723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 (n + 1) + A005248 n

end

end A292696.P17902814252870391723

namespace A292696

/-- `A174971(n+1)+A005248(n)` -/
def P17902814252870391723.Spec : Prop :=
  ∀ n, P17902814252870391723.a n = A292696 n

end A292696

/-! ## A292696.P2169784287583963616

`A061084(n+2)*A061084(n)`
-/

namespace A292696.P2169784287583963616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 2) * A061084 n

end

end A292696.P2169784287583963616

namespace A292696

/-- `A061084(n+2)*A061084(n)` -/
def P2169784287583963616.Spec : Prop :=
  ∀ n, P2169784287583963616.a n = A292696 n

end A292696

/-! ## A292696.P14612757260845056774

`A192921(n)+2*A260259(n)`
-/

namespace A292696.P14612757260845056774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192921 n + 2 * A260259 n

end

end A292696.P14612757260845056774

namespace A292696

/-- `A192921(n)+2*A260259(n)` -/
def P14612757260845056774.Spec : Prop :=
  ∀ n, P14612757260845056774.a n = A292696 n

end A292696

/-! ## A292696.P12012263099139287842

`abs(A075193(n))*Δ[A000032(n)]`
-/

namespace A292696.P12012263099139287842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075193 n| * (f1 (n + 1) - f1 n)

end

end A292696.P12012263099139287842

namespace A292696

/-- `abs(A075193(n))*Δ[A000032(n)]` -/
def P12012263099139287842.Spec : Prop :=
  ∀ n, P12012263099139287842.a n = A292696 n

end A292696

/-! ## A292696.P452238292102711936

`Δ[A000032(n)]*Δ[A014739(n)]`
-/

namespace A292696.P452238292102711936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A292696.P452238292102711936

namespace A292696

/-- `Δ[A000032(n)]*Δ[A014739(n)]` -/
def P452238292102711936.Spec : Prop :=
  ∀ n, P452238292102711936.a n = A292696 n

end A292696

/-! ## A292696.P12778857916579827807

`A000032(n+1)*Δ[A000032(n)]`
-/

namespace A292696.P12778857916579827807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * (f1 (n + 1) - f1 n)

end

end A292696.P12778857916579827807

namespace A292696

/-- `A000032(n+1)*Δ[A000032(n)]` -/
def P12778857916579827807.Spec : Prop :=
  ∀ n, P12778857916579827807.a n = A292696 n

end A292696

/-! ## A292696.P9935841708642942888

`Δ[A000211(n)]*A000204(n+1)`
-/

namespace A292696.P9935841708642942888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000204 (n + 1)

end

end A292696.P9935841708642942888

namespace A292696

/-- `Δ[A000211(n)]*A000204(n+1)` -/
def P9935841708642942888.Spec : Prop :=
  ∀ n, P9935841708642942888.a n = A292696 n

end A292696

/-! ## A292696.P13115565550975817640

`Δ[A001612(n)]*A000204(n+1)`
-/

namespace A292696.P13115565550975817640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000204 (n + 1)

end

end A292696.P13115565550975817640

namespace A292696

/-- `Δ[A001612(n)]*A000204(n+1)` -/
def P13115565550975817640.Spec : Prop :=
  ∀ n, P13115565550975817640.a n = A292696 n

end A292696

/-! ## A292696.P9858103221268898085

`Δ[A000032(n)/2]*A022112(n)`
-/

namespace A292696.P9858103221268898085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A022112 n : ℚ)

end

end A292696.P9858103221268898085

namespace A292696

/-- `Δ[A000032(n)/2]*A022112(n)` -/
def P9858103221268898085.Spec : Prop :=
  ∀ n, P9858103221268898085.a n = (A292696 n : ℚ)

end A292696

/-! ## A292696.P8649077667671621683

`A128535(n+1)+2*A128534(n)`
-/

namespace A292696.P8649077667671621683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 (n + 1) + 2 * A128534 n

end

end A292696.P8649077667671621683

namespace A292696

/-- `A128535(n+1)+2*A128534(n)` -/
def P8649077667671621683.Spec : Prop :=
  ∀ n, P8649077667671621683.a n = A292696 n

end A292696

/-! ## A292696.P11196991812546424095

`Δ[Δ[A001610(n)]]*A000204(n+1)`
-/

namespace A292696.P11196991812546424095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000204 (n + 1)

end

end A292696.P11196991812546424095

namespace A292696

/-- `Δ[Δ[A001610(n)]]*A000204(n+1)` -/
def P11196991812546424095.Spec : Prop :=
  ∀ n, P11196991812546424095.a n = A292696 n

end A292696

/-! ## A292696.P7359482140820195297

`Δ[A090244(2*n+1)]*A090244(2*n)`
-/

namespace A292696.P7359482140820195297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A090244 (2 * n)

end

end A292696.P7359482140820195297

namespace A292696

/-- `Δ[A090244(2*n+1)]*A090244(2*n)` -/
def P7359482140820195297.Spec : Prop :=
  ∀ n, P7359482140820195297.a n = A292696 n

end A292696

/-! ## A292696.P9914205431655548535

`A129905(n)+A129905(n)-A192919(n)`
-/

namespace A292696.P9914205431655548535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129905 n + (A129905 n - A192919 n)

end

end A292696.P9914205431655548535

namespace A292696

/-- `A129905(n)+A129905(n)-A192919(n)` -/
def P9914205431655548535.Spec : Prop :=
  ∀ n, P9914205431655548535.a n = A292696 n

end A292696

/-!
# A292698: Number of solutions to 3 +- 7 +- 13 +- 19 +- ... +- prime(4*n) = 0.

The programs for A292698, there is no canonical definition to state claims against.
-/

/-! ## A292698.P11075513413797970913

`A292700(n+1)/A292699(A031285(n))`
-/

namespace A292698.P11075513413797970913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292700 (n + 1) : ℚ) / (A292699 (A031285 n).toNat : ℚ)

end

end A292698.P11075513413797970913

/-! ## A292698.P13910815618629906399

`A292700(n+1)/A292699(A028310(n)+1)`
-/

namespace A292698.P13910815618629906399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292700 (n + 1) : ℚ) / (A292699 (A028310 n + 1).toNat : ℚ)

end

end A292698.P13910815618629906399

/-! ## A292698.P1151984975401133969

`A292700(n+1)/A292699(A151621(n)+1+n)`
-/

namespace A292698.P1151984975401133969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292700 (n + 1) : ℚ) / (A292699 (A151621 n + 1 + (n : ℤ)).toNat : ℚ)

end

end A292698.P1151984975401133969

/-!
# A292699: Number of solutions to 5 +- 11 +- 17 +- 23 +- ... +- prime(4*n+1) = 0.

The programs for A292699, there is no canonical definition to state claims against.
-/

/-! ## A292699.P11960225293808247172

`A138328(lcm(A072154(n), A138356(n)))`
-/

namespace A292699.P11960225293808247172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138328 (Int.lcm (A072154 n) (A138356 n))

end

end A292699.P11960225293808247172

/-! ## A292699.P16319566495803055377

`A241312(A057509(2*n)+A000389(n))`
-/

namespace A292699.P16319566495803055377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 (A057509 (2 * n) + A000389 n).toNat

end

end A292699.P16319566495803055377

/-! ## A292699.P5441982722127878856

`A000619(A257698(n+1))%A000079(n)`
-/

namespace A292699.P5441982722127878856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000619 (A257698 (n + 1)).toNat) (A000079 n)

end

end A292699.P5441982722127878856

