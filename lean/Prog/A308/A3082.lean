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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B003.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A308200: The tribonacci representation of a(n) is obtained by appending 0,0,0 to the tribonacci representation of n (cf. A278038).

The programs for A308200, the canonical program `A308200.P11353778696816616322` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308200 has offset 0).

The definition of A308200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308200.P16763233676377746913

`A278041(n)-3`
-/

namespace A308200.P16763233676377746913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n - 3

end

end A308200.P16763233676377746913

namespace A308200

/-- `A278041(n)-3` -/
def P16763233676377746913.Spec : Prop :=
  ∀ n, P16763233676377746913.a n = A308200 n

theorem P16763233676377746913.correct : P16763233676377746913.Spec := by
  intro n
  simp only [A308200, Nat.add_sub_cancel, A308200.P16763233676377746913.a, A308200.P11353778696816616322.a, A275925, A275925.P1014596103965212206.a, A278041, A278041.P13470193706674634785.a, A003146, A003146.P4319550854608353230.a, A003796, A003796.P430726989961333611.f1, A003796.P430726989961333611.f2, A003796.P430726989961333611.a, A056974, A056974.P14269005406388105579.a, A014082, A014082.P16446960074050354385.a, A035327, A035327.P258997810375859489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308200

/-! ## A308200.P11933021111995646875

`A319967(n+1)-2`
-/

namespace A308200.P11933021111995646875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319967 (n + 1) - 2

end

end A308200.P11933021111995646875

namespace A308200

/-- `A319967(n+1)-2` -/
def P11933021111995646875.Spec : Prop :=
  ∀ n, P11933021111995646875.a n = A308200 n

end A308200

/-! ## A308200.P407028865104835232

`A003146(n+1)-4`
-/

namespace A308200.P407028865104835232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1) - 4

end

end A308200.P407028865104835232

namespace A308200

/-- `A003146(n+1)-4` -/
def P407028865104835232.Spec : Prop :=
  ∀ n, P407028865104835232.a n = A308200 n

theorem P407028865104835232.correct : P407028865104835232.Spec := by
  intro n
  simp only [A308200, Nat.add_sub_cancel, A308200.P407028865104835232.a, A308200.P11353778696816616322.a, A003146, A003146.P4319550854608353230.a, A275925, A275925.P1014596103965212206.a, A003796, A003796.P430726989961333611.f1, A003796.P430726989961333611.f2, A003796.P430726989961333611.a, A056974, A056974.P14269005406388105579.a, A014082, A014082.P16446960074050354385.a, A035327, A035327.P258997810375859489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308200

/-! ## A308200.P2711036499435911151

`(A319966(n+1)+n+1)/2-4`
-/

namespace A308200.P2711036499435911151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319966 (n + 1) + (n + 1 : ℤ) : ℚ) / 2 - 4

end

end A308200.P2711036499435911151

namespace A308200

/-- `(A319966(n+1)+n+1)/2-4` -/
def P2711036499435911151.Spec : Prop :=
  ∀ n, P2711036499435911151.a n = (A308200 n : ℚ)

end A308200

/-! ## A308200.P9765885629746278564

`(A319968(n+1)+2+n)/2-4`
-/

namespace A308200.P9765885629746278564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319968 (n + 1) + 2 + (n : ℤ) : ℚ) / 2 - 4

end

end A308200.P9765885629746278564

namespace A308200

/-- `(A319968(n+1)+2+n)/2-4` -/
def P9765885629746278564.Spec : Prop :=
  ∀ n, P9765885629746278564.a n = (A308200 n : ℚ)

end A308200

/-! ## A308200.P11353778696816616322

`A275925(n+1)+a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A308200

/-- `A275925(n+1)+a(n-1)+1` -/
def P11353778696816616322.Spec : Prop :=
  ∀ n, P11353778696816616322.a n = A308200 n

theorem P11353778696816616322.correct : P11353778696816616322.Spec := by
  intro n
  simp only [A308200]

end A308200

/-! ## A308200.P14594813995239909521

`A278040(A278039(n))-1`
-/

namespace A308200.P14594813995239909521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278039 n).toNat - 1

end

end A308200.P14594813995239909521

namespace A308200

/-- `A278040(A278039(n))-1` -/
def P14594813995239909521.Spec : Prop :=
  ∀ n, P14594813995239909521.a n = A308200 n

end A308200

/-! ## A308200.P8164986205823738768

`2*A308199(n)-A276796(n)`
-/

namespace A308200.P8164986205823738768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308199 n - A276796 n

end

end A308200.P8164986205823738768

namespace A308200

/-- `2*A308199(n)-A276796(n)` -/
def P8164986205823738768.Spec : Prop :=
  ∀ n, P8164986205823738768.a n = A308200 n

end A308200

/-! ## A308200.P14291184375739877332

`A278040(A003144(n+1)-1)-1`
-/

namespace A308200.P14291184375739877332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A003144 (n + 1) - 1).toNat - 1

end

end A308200.P14291184375739877332

namespace A308200

/-- `A278040(A003144(n+1)-1)-1` -/
def P14291184375739877332.Spec : Prop :=
  ∀ n, P14291184375739877332.a n = A308200 n

end A308200

/-! ## A308200.P1362704934664085310

`A003144(n+1)+A003145(n+1)+n-3`
-/

namespace A308200.P1362704934664085310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) + A003145 (n + 1) + ((n : ℤ) - 3)

end

end A308200.P1362704934664085310

namespace A308200

/-- `A003144(n+1)+A003145(n+1)+n-3` -/
def P1362704934664085310.Spec : Prop :=
  ∀ n, P1362704934664085310.a n = A308200 n

end A308200

/-! ## A308200.P200732974669534613

`A305373(n+1)-3+n`
-/

namespace A308200.P200732974669534613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305373 (n + 1) - 3 + (n : ℤ)

end

end A308200.P200732974669534613

namespace A308200

/-- `A305373(n+1)-3+n` -/
def P200732974669534613.Spec : Prop :=
  ∀ n, P200732974669534613.a n = A308200 n

end A308200

/-! ## A308200.P9068226410845447576

`eq[3, A305394(n+4)]`
-/

namespace A308200.P9068226410845447576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305394 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308200.P9068226410845447576

namespace A308200

/-- `eq[3, A305394(n+4)]` -/
def P9068226410845447576.Spec : Prop :=
  ∀ n, (P9068226410845447576.a n : ℤ) = A308200 n

end A308200

/-! ## A308200.P11476707347613951322

`A278039(A308199(n))`
-/

namespace A308200.P11476707347613951322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A308199 n).toNat

end

end A308200.P11476707347613951322

namespace A308200

/-- `A278039(A308199(n))` -/
def P11476707347613951322.Spec : Prop :=
  ∀ n, P11476707347613951322.a n = A308200 n

end A308200

/-! ## A308200.P16155447392166467189

`A278039(A003145(n+1)-2)`
-/

namespace A308200.P16155447392166467189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A003145 (n + 1) - 2).toNat

end

end A308200.P16155447392166467189

namespace A308200

/-- `A278039(A003145(n+1)-2)` -/
def P16155447392166467189.Spec : Prop :=
  ∀ n, P16155447392166467189.a n = A308200 n

end A308200

/-! ## A308200.P7772552394602134229

`A278039(A278039(A278039(n)))`
-/

namespace A308200.P7772552394602134229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A278039 (A278039 n).toNat).toNat

end

end A308200.P7772552394602134229

namespace A308200

/-- `A278039(A278039(A278039(n)))` -/
def P7772552394602134229.Spec : Prop :=
  ∀ n, P7772552394602134229.a n = A308200 n

end A308200

/-! ## A308200.P6759318669597409233

`A003145(A003144(n+1))-2`
-/

namespace A308200.P6759318669597409233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A003144 (n + 1)).toNat - 2

end

end A308200.P6759318669597409233

namespace A308200

/-- `A003145(A003144(n+1))-2` -/
def P6759318669597409233.Spec : Prop :=
  ∀ n, P6759318669597409233.a n = A308200 n

end A308200

/-! ## A308200.P10723172097583784080

`A308199(A278039(n))`
-/

namespace A308200.P10723172097583784080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308199 (A278039 n).toNat

end

end A308200.P10723172097583784080

namespace A308200

/-- `A308199(A278039(n))` -/
def P10723172097583784080.Spec : Prop :=
  ∀ n, P10723172097583784080.a n = A308200 n

end A308200

/-! ## A308200.P16207088046734538148

`A308199(A003144(n+1)-1)`
-/

namespace A308200.P16207088046734538148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308199 (A003144 (n + 1) - 1).toNat

end

end A308200.P16207088046734538148

namespace A308200

/-- `A308199(A003144(n+1)-1)` -/
def P16207088046734538148.Spec : Prop :=
  ∀ n, P16207088046734538148.a n = A308200 n

end A308200

/-! ## A308200.P7074019110837762703

`A308199(2*n+1-A276798(n))`
-/

namespace A308200.P7074019110837762703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308199 ((2 * n + 1 : ℤ) - A276798 n).toNat

end

end A308200.P7074019110837762703

namespace A308200

/-- `A308199(2*n+1-A276798(n))` -/
def P7074019110837762703.Spec : Prop :=
  ∀ n, P7074019110837762703.a n = A308200 n

end A308200

/-!
# A308201: Sprague-Grundy values for Maharaja Nim on an infinite single-quadrant board scanned by upwards antidiagonals.

The programs for A308201, there is no canonical definition to state claims against.
-/

/-! ## A308201.P9149289089787075260

`A274630(n+1)-1`
-/

namespace A308201.P9149289089787075260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274630 (n + 1) - 1

end

end A308201.P9149289089787075260

/-! ## A308201.P2907048492356005297

`A023443(A274630(n+1))`
-/

namespace A308201.P2907048492356005297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274630 (n + 1)).toNat

end

end A308201.P2907048492356005297

/-! ## A308201.P9020802345645618465

`A023445(A274630(n+1)+2)`
-/

namespace A308201.P9020802345645618465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A274630 (n + 1) + 2).toNat

end

end A308201.P9020802345645618465

/-! ## A308201.P15732353969434531438

`A059169(4*A274630(n+1))`
-/

namespace A308201.P15732353969434531438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A274630 (n + 1)).toNat

end

end A308201.P15732353969434531438

/-! ## A308201.P11347744806743257216

`(A274630(n+1)+A016754(n))%A069894(n)`
-/

namespace A308201.P11347744806743257216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274630 (n + 1) + A016754 n) (A069894 n)

end

end A308201.P11347744806743257216

/-! ## A308201.P16182264386866489864

`A070198(n)%A274630(n+1)`
-/

namespace A308201.P16182264386866489864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A274630 (n + 1))

end

end A308201.P16182264386866489864

/-! ## A308201.P15405220224989262597

`A079782(n+1)%A274630(n+1)`
-/

namespace A308201.P15405220224989262597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A274630 (n + 1))

end

end A308201.P15405220224989262597

/-! ## A308201.P16600336578690599087

`A083685(n+1)%A274630(n+1)`
-/

namespace A308201.P16600336578690599087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A274630 (n + 1))

end

end A308201.P16600336578690599087

/-! ## A308201.P3856217106369264316

`A121934(n+1)%A274630(n+1)`
-/

namespace A308201.P3856217106369264316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A274630 (n + 1))

end

end A308201.P3856217106369264316

/-!
# A308202: Number of integer-sided triangles with perimeter n such that the length of the smallest side is coprime to n.

The programs for A308202, there is no canonical definition to state claims against.
-/

/-! ## A308202.P4790787375742572541

`A223000(A347647(n))%A003963(n+1)`
-/

namespace A308202.P4790787375742572541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223000 (A347647 n).toNat) (A003963 (n + 1))

end

end A308202.P4790787375742572541

/-! ## A308202.P4687113235966997950

`A308416(A050216(n))%A269370(n+1)`
-/

namespace A308202.P4687113235966997950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308416 (A050216 n).toNat) (A269370 (n + 1))

end

end A308202.P4687113235966997950

/-! ## A308202.P10712284051608057434

`A008611(A348099(n+1))%A003963(n+1)`
-/

namespace A308202.P10712284051608057434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008611 (A348099 (n + 1)).toNat) (A003963 (n + 1))

end

end A308202.P10712284051608057434

/-! ## A308202.P4902120464705683209

`A085425(A053286(n+1))`
-/

namespace A308202.P4902120464705683209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085425 (A053286 (n + 1)).toNat

end

end A308202.P4902120464705683209

/-! ## A308202.P13779221115831373030

`A161422(A025480(n+4)+1)`
-/

namespace A308202.P13779221115831373030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161422 (A025480 (n + 4) + 1).toNat

end

end A308202.P13779221115831373030

/-!
# A308203: Array read by ascending antidiagonals: T(n,k) = number of non-isomorphic kC_n-snake graphs for n >= 3 and k >= 2.

The programs for A308203, there is no canonical definition to state claims against.
-/

/-! ## A308203.P3447678109320425915

`A096921(n+1)+A058343(A096921(2*n))`
-/

namespace A308203.P3447678109320425915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096921 (n + 1) + A058343 (A096921 (2 * n)).toNat

end

end A308203.P3447678109320425915

/-! ## A308203.P16303572922611078167

`xor(A096921(n+1), A184945(A187795(n+3)))`
-/

namespace A308203.P16303572922611078167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A096921 (n + 1)) (A184945 (A187795 (n + 3)).toNat)

end

end A308203.P16303572922611078167

/-! ## A308203.P10600473099634764662

`A096921(or(A003849(n), A077342(n+1)))`
-/

namespace A308203.P10600473099634764662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096921 (Int.lor (A003849 n) (A077342 (n + 1))).toNat

end

end A308203.P10600473099634764662

/-! ## A308203.P1221281843360172456

`A096921(or(A077342(n+1), A105519(n)))`
-/

namespace A308203.P1221281843360172456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096921 (Int.lor (A077342 (n + 1)) (A105519 n)).toNat

end

end A308203.P1221281843360172456

/-! ## A308203.P8843864888057166182

`A096921(or(A003849(n), A242474(n+1)))`
-/

namespace A308203.P8843864888057166182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096921 (Int.lor (A003849 n) (A242474 (n + 1))).toNat

end

end A308203.P8843864888057166182

/-!
# A308204: G.f.: x * Product_{k>=1} 1/(1 - k*x^k)^a(k).

The programs for A308204, there is no canonical definition to state claims against.
-/

/-! ## A308204.P14954611461477573386

`A300226(A205498(n)²)`
-/

namespace A308204.P14954611461477573386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300226 (A205498 n ^ 2).toNat

end

end A308204.P14954611461477573386

/-! ## A308204.P7366409689943077675

`filter[A307724(n), A022924(#)]`
-/

namespace A308204.P7366409689943077675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022924 (f1 j).toNat = 1) n)

end

end A308204.P7366409689943077675

/-!
# A308205: G.f.: x * Product_{k>=1} (1 + k*x^k)^a(k).

The programs for A308205, there is no canonical definition to state claims against.
-/

/-! ## A308205.P13390005052442593723

`A026741(A354503(n)+A000166(n))`
-/

namespace A308205.P13390005052442593723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A354503 n + A000166 n).toNat

end

end A308205.P13390005052442593723

/-! ## A308205.P10441253292711013202

`A065033(A354503(n)+A000166(n))`
-/

namespace A308205.P10441253292711013202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A354503 n + A000166 n).toNat

end

end A308205.P10441253292711013202

/-! ## A308205.P4104510429807479515

`A004526(A122455(n))+A000992(n+1)`
-/

namespace A308205.P4104510429807479515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A122455 n).toNat + A000992 (n + 1)

end

end A308205.P4104510429807479515

/-!
# A308206: G.f.: x * Product_{k>=1} 1/(1 - a(k)*x^k)^k.

The programs for A308206, there is no canonical definition to state claims against.
-/

/-! ## A308206.P17117592564998350264

`A156077(A156077(n+1)+A020077(n+2))`
-/

namespace A308206.P17117592564998350264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (A156077 (n + 1) + A020077 (n + 2)).toNat

end

end A308206.P17117592564998350264

/-! ## A308206.P11681338127792852596

`A342790(A243633(n))`
-/

namespace A308206.P11681338127792852596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342790 (A243633 n).toNat

end

end A308206.P11681338127792852596

/-!
# A308207: G.f.: x * Product_{k>=1} (1 + a(k)*x^k)^k.

The programs for A308207, there is no canonical definition to state claims against.
-/

/-! ## A308207.P10789942124649942500

`A065033(A293388(n)+A125307(n+1))`
-/

namespace A308207.P10789942124649942500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A293388 n + A125307 (n + 1)).toNat

end

end A308207.P10789942124649942500

/-! ## A308207.P8801310348008834811

`A307709(n+1)-A307721(A307678(n))`
-/

namespace A308207.P8801310348008834811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307709 (n + 1) - A307721 (A307678 n).toNat

end

end A308207.P8801310348008834811

/-! ## A308207.P10256661525796977375

`A307709(n+1)-A307688(A307670(n+1))`
-/

namespace A308207.P10256661525796977375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307709 (n + 1) - A307688 (A307670 (n + 1)).toNat

end

end A308207.P10256661525796977375

/-!
# A308209: Number of integer-sided triangles with perimeter n whose largest side length is coprime to n.

The programs for A308209, there is no canonical definition to state claims against.
-/

/-! ## A308209.P13372482112935726713

`A325225(A325227(n+1)+A147423(n+1))`
-/

namespace A308209.P13372482112935726713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A325227 (n + 1) + A147423 (n + 1)).toNat

end

end A308209.P13372482112935726713

/-! ## A308209.P15767077932445751272

`A051493(n+1)-A078926(A165097(n+1))`
-/

namespace A308209.P15767077932445751272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051493 (n + 1) - A078926 (A165097 (n + 1)).toNat

end

end A308209.P15767077932445751272

/-! ## A308209.P15144133392662771365

`A338201(n+1)-A078926(A165097(n+1))`
-/

namespace A308209.P15144133392662771365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338201 (n + 1) - A078926 (A165097 (n + 1)).toNat

end

end A308209.P15144133392662771365

/-! ## A308209.P11554434806143585700

`A064922(A140590(n))`
-/

namespace A308209.P11554434806143585700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064922 (A140590 n).toNat

end

end A308209.P11554434806143585700

/-! ## A308209.P1355066193166977534

`A241312(n)%A020639(A041593(n))`
-/

namespace A308209.P1355066193166977534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241312 n) (A020639 (A041593 n).toNat)

end

end A308209.P1355066193166977534

/-!
# A308210: Number of integer-sided triangles with perimeter n and sides a, b and c such that a <= b <= c and the length of side b is coprime to n.

The programs for A308210, there is no canonical definition to state claims against.
-/

/-! ## A308210.P16696285619734100468

`A334948(A064078(n+1)+1)-1`
-/

namespace A308210.P16696285619734100468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334948 (A064078 (n + 1) + 1).toNat - 1

end

end A308210.P16696285619734100468

/-! ## A308210.P15415665240209781386

`A014157(A334948(A064078(n+1)+1))`
-/

namespace A308210.P15415665240209781386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014157 (A334948 (A064078 (n + 1) + 1).toNat).toNat

end

end A308210.P15415665240209781386

/-! ## A308210.P14401261080664314448

`A058197(n+1)%A334948(A064078(n+1)+1)`
-/

namespace A308210.P14401261080664314448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A334948 (A064078 (n + 1) + 1).toNat)

end

end A308210.P14401261080664314448

/-! ## A308210.P3491417171704977664

`A065296(n+1)%A334948(A064078(n+1)+1)`
-/

namespace A308210.P3491417171704977664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065296 (n + 1)) (A334948 (A064078 (n + 1) + 1).toNat)

end

end A308210.P3491417171704977664

/-! ## A308210.P5650702608906883796

`A000040(Δ[(2*(n+1))²])%A334948(A064078(n+1)+1)`
-/

namespace A308210.P5650702608906883796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A334948 (A064078 (n + 1) + 1).toNat)

end

end A308210.P5650702608906883796

/-!
# A308211: Number of integer-sided triangles with perimeter n and sides a, b and c such that a <= b <= c and the length of side a is coprime to c.

The programs for A308211, there is no canonical definition to state claims against.
-/

/-! ## A308211.P13957548148358466483

`A213725(xor(A073642(n), A291219(n)))`
-/

namespace A308211.P13957548148358466483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 (Int.xor (A073642 n) (A291219 n)).toNat

end

end A308211.P13957548148358466483

/-! ## A308211.P17465226814886711037

`A081603(A149634(n)%A034771(n+1))`
-/

namespace A308211.P17465226814886711037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (Int.tmod (A149634 n) (A034771 (n + 1))).toNat

end

end A308211.P17465226814886711037

/-! ## A308211.P15234535320421665043

`p?[A201875(n+1)]%A226212(n+1)`
-/

namespace A308211.P15234535320421665043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A226212 (n + 1))

end

end A308211.P15234535320421665043

/-! ## A308211.P14321156436803886420

`A072273(A281742(n)+A279135(n))`
-/

namespace A308211.P14321156436803886420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (A281742 n + A279135 n).toNat

end

end A308211.P14321156436803886420

/-! ## A308211.P17998447461488486099

`A363953(A364059(n)+A124944(n+1))`
-/

namespace A308211.P17998447461488486099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363953 (A364059 n + A124944 (n + 1)).toNat

end

end A308211.P17998447461488486099

/-!
# A308212: Number of integer-sided triangles with perimeter n and sides a, b and c such that a <= b <= c and the length of side a is coprime to b.

The programs for A308212, there is no canonical definition to state claims against.
-/

/-! ## A308212.P5176882549967847499

`A037879(A000055(n)+∑[n+2])`
-/

namespace A308212.P5176882549967847499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037879 (A000055 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A308212.P5176882549967847499

/-! ## A308212.P18232335859169292653

`A037800(A162766(n+1)+A026741(n))`
-/

namespace A308212.P18232335859169292653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A162766 (n + 1) + A026741 n).toNat

end

end A308212.P18232335859169292653

/-! ## A308212.P2959782825001838559

`A160800(A001196(n))%A008620(n+1)`
-/

namespace A308212.P2959782825001838559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160800 (A001196 n).toNat) (A008620 (n + 1))

end

end A308212.P2959782825001838559

/-! ## A308212.P4678357757394515869

`A339627(A010064(n+1)+n+2)`
-/

namespace A308212.P4678357757394515869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339627 (A010064 (n + 1) + (n + 2 : ℤ)).toNat

end

end A308212.P4678357757394515869

/-! ## A308212.P11066317961265583987

`A131576(∑[A000225(A029038(n))])`
-/

namespace A308212.P11066317961265583987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A029038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308212.P11066317961265583987

/-!
# A308213: Number of integer-sided triangles with perimeter n and sides a, b and c such that a <= b <= c and the length of side b is coprime to c.

The programs for A308213, there is no canonical definition to state claims against.
-/

/-! ## A308213.P8703442638606888185

`A275806(Δ[A032155(A000009(n))])`
-/

namespace A308213.P8703442638606888185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032155 (A000009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (f1 (n + 1) - f1 n).toNat

end

end A308213.P8703442638606888185

/-! ## A308213.P3480400585593538619

`and(A055040(A226717(n+1)), A253092(n))`
-/

namespace A308213.P3480400585593538619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055040 (A226717 (n + 1)).toNat) (A253092 n)

end

end A308213.P3480400585593538619

/-! ## A308213.P9215555000666640794

`A077267(or(A023705(n+1), A345332(n)))`
-/

namespace A308213.P9215555000666640794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (Int.lor (A023705 (n + 1)) (A345332 n)).toNat

end

end A308213.P9215555000666640794

/-! ## A308213.P13468543604026718655

`A083890(∑{d}[n*a(n-2), gcd(41, #)])` with `a(0)=6, a(1)=2`
-/

namespace A308213.P13468543604026718655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 2] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083890 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd 41 d)

end

end A308213.P13468543604026718655

/-! ## A308213.P7259249278956357114

`A035232(A358904(n))`
-/

namespace A308213.P7259249278956357114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (A358904 n).toNat

end

end A308213.P7259249278956357114

/-!
# A308214: Sum of the smallest side lengths of all integer-sided obtuse triangles with perimeter n.

The programs for A308214, there is no canonical definition to state claims against.
-/

/-! ## A308214.P6624730652267086402

`A308157(n+1)-(A308218(n+1)+A308216(n+1))`
-/

namespace A308214.P6624730652267086402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308157 (n + 1) - (A308218 (n + 1) + A308216 (n + 1))

end

end A308214.P6624730652267086402

/-!
# A308215: a(n) is the multiplicative inverse of A001844(n+1) modulo A001844(n); where A001844 is the sequence of centered square numbers.

The programs for A308215, the canonical program `A308215.P10243934200875941476` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308215 has offset 0).

The definition of A308215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308215.P2915035294684331214

`(2*n^5)%(∑[4*n]+1)`
-/

namespace A308215.P2915035294684331214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 5 % (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A308215.P2915035294684331214

namespace A308215

/-- `(2*n^5)%(∑[4*n]+1)` -/
def P2915035294684331214.Spec : Prop :=
  ∀ n, (P2915035294684331214.a n : ℤ) = A308215 n

end A308215

/-! ## A308215.P753623718581450693

`n²%Δ[n²]+n²*gcd(2, n)`
-/

namespace A308215.P753623718581450693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n ^ 2 * Nat.gcd 2 n : ℤ)

end

end A308215.P753623718581450693

namespace A308215

/-- `n²%Δ[n²]+n²*gcd(2, n)` -/
def P753623718581450693.Spec : Prop :=
  ∀ n, P753623718581450693.a n = A308215 n

end A308215

/-! ## A308215.P15243856589425064316

`(n^3)%((n+1)²+n²)+n²`
-/

namespace A308215.P15243856589425064316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % ((n + 1) ^ 2 + n ^ 2) + n ^ 2

end

end A308215.P15243856589425064316

namespace A308215

/-- `(n^3)%((n+1)²+n²)+n²` -/
def P15243856589425064316.Spec : Prop :=
  ∀ n, (P15243856589425064316.a n : ℤ) = A308215 n

end A308215

/-! ## A308215.P16915212764373556599

`lcm(n+1, 2*n)-floor(∑[n]/(n+2))`
-/

namespace A308215.P16915212764373556599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 * n) : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ)⌋

end

end A308215.P16915212764373556599

namespace A308215

/-- `lcm(n+1, 2*n)-floor(∑[n]/(n+2))` -/
def P16915212764373556599.Spec : Prop :=
  ∀ n, P16915212764373556599.a n = A308215 n

end A308215

/-! ## A308215.P3428308827102842061

`ogf((2x+12x^2+5x^3+3x^4+x^5+x^6)/(1-3x^2+3x^4-x^6))`
-/

namespace A308215.P3428308827102842061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 12, 5, 3, 1, 1] [1, 0, -3, 0, 3, 0, -1] n

end

end A308215.P3428308827102842061

namespace A308215

/-- `ogf((2x+12x^2+5x^3+3x^4+x^5+x^6)/(1-3x^2+3x^4-x^6))` -/
def P3428308827102842061.Spec : Prop :=
  ∀ n, P3428308827102842061.a n = A308215 n

end A308215

/-! ## A308215.P10243934200875941476

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=2, a(2)=12, a(3)=11, a(4)=39, a(5)=28, a(6)=82`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A308215

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P10243934200875941476.Spec : Prop :=
  ∀ n, P10243934200875941476.a n = A308215 n

theorem P10243934200875941476.correct : P10243934200875941476.Spec := by
  intro n
  simp only [A308215]

end A308215

/-! ## A308215.P974524888546923018

`A225126(n+1)+A181900(n)`
-/

namespace A308215.P974524888546923018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (n + 1) + A181900 n

end

end A308215.P974524888546923018

namespace A308215

/-- `A225126(n+1)+A181900(n)` -/
def P974524888546923018.Spec : Prop :=
  ∀ n, P974524888546923018.a n = A308215 n

end A308215

/-! ## A308215.P17159322676854307134

`A045895(n+1)-A140106(n+1)`
-/

namespace A308215.P17159322676854307134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045895 (n + 1) - A140106 (n + 1)

end

end A308215.P17159322676854307134

namespace A308215

/-- `A045895(n+1)-A140106(n+1)` -/
def P17159322676854307134.Spec : Prop :=
  ∀ n, P17159322676854307134.a n = A308215 n

end A308215

/-! ## A308215.P5470434443929990843

`A022998(n)+A181900(n)-A140106(n+1)`
-/

namespace A308215.P5470434443929990843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n + (A181900 n - A140106 (n + 1))

end

end A308215.P5470434443929990843

namespace A308215

/-- `A022998(n)+A181900(n)-A140106(n+1)` -/
def P5470434443929990843.Spec : Prop :=
  ∀ n, P5470434443929990843.a n = A308215 n

end A308215

/-! ## A308215.P6738171986067303960

`A004526((4*n*∑[n])%(∑[8*n]+2))`
-/

namespace A308215.P6738171986067303960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (4 * (n * (∑ j ∈ Finset.range (n + 1), f1 j)) % (∑ j ∈ Finset.range (n + 1), f2 j + 2))

end

end A308215.P6738171986067303960

namespace A308215

/-- `A004526((4*n*∑[n])%(∑[8*n]+2))` -/
def P6738171986067303960.Spec : Prop :=
  ∀ n, P6738171986067303960.a n = A308215 n

end A308215

/-!
# A308216: Sum of the largest side lengths of all integer-sided obtuse triangles with perimeter n.

The programs for A308216, there is no canonical definition to state claims against.
-/

/-! ## A308216.P2640499895103612501

`A308157(n+1)-(A308218(n+1)+A308214(n+1))`
-/

namespace A308216.P2640499895103612501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308157 (n + 1) - (A308218 (n + 1) + A308214 (n + 1))

end

end A308216.P2640499895103612501

/-! ## A308216.P17739196349243017517

`A046081(Δ[A038754(n)])*A070101(n+1)`
-/

namespace A308216.P17739196349243017517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (f1 (n + 1) - f1 n).toNat * A070101 (n + 1)

end

end A308216.P17739196349243017517

/-! ## A308216.P15906789286927378441

`A046081(A038754(n))*A070101(n+1)`
-/

namespace A308216.P15906789286927378441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A038754 n).toNat * A070101 (n + 1)

end

end A308216.P15906789286927378441

/-! ## A308216.P11072676024652906398

`A062153(A000045(n+4))*A070101(n+1)`
-/

namespace A308216.P11072676024652906398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A000045 (n + 4)).toNat * A070101 (n + 1)

end

end A308216.P11072676024652906398

/-! ## A308216.P7129811726330738128

`A004526(A001222(A000079(n)))*A070101(n+1)`
-/

namespace A308216.P7129811726330738128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001222 (A000079 n).toNat).toNat * A070101 (n + 1)

end

end A308216.P7129811726330738128

/-!
# A308217: a(n) is the multiplicative inverse of A001844(n) modulo A001844(n+1); where A001844 is the sequence of centered square numbers.

The programs for A308217, the canonical program `A308217.P14160406543593648924` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308217 has offset 0).

The definition of A308217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308217.P409327932849636227

`((n+1)^3)%(∑[4*(n+1)]+1)`
-/

namespace A308217.P409327932849636227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 % (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A308217.P409327932849636227

namespace A308217

/-- `((n+1)^3)%(∑[4*(n+1)]+1)` -/
def P409327932849636227.Spec : Prop :=
  ∀ n, (P409327932849636227.a n : ℤ) = A308217 n

end A308217

/-! ## A308217.P10302086893911914296

`ogf((1+8x-x^2-x^3+x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A308217.P10302086893911914296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -1, -1, 0, 1] [1, 0, -3, 0, 3, 0, -1] n

end

end A308217.P10302086893911914296

namespace A308217

/-- `ogf((1+8x-x^2-x^3+x^5)/(1-3x^2+3x^4-x^6))` -/
def P10302086893911914296.Spec : Prop :=
  ∀ n, P10302086893911914296.a n = A308217 n

end A308217

/-! ## A308217.P14160406543593648924

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=8, a(2)=2, a(3)=23, a(4)=3, a(5)=46`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A308217

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P14160406543593648924.Spec : Prop :=
  ∀ n, P14160406543593648924.a n = A308217 n

theorem P14160406543593648924.correct : P14160406543593648924.Spec := by
  intro n
  simp only [A308217]

end A308217

/-! ## A308217.P14872907602281005780

`A081346(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A308217.P14872907602281005780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081346 (n + 1) - a (n - 1)

end

end A308217.P14872907602281005780

namespace A308217

/-- `A081346(n+1)-a(n-1)` -/
def P14872907602281005780.Spec : Prop :=
  ∀ n, P14872907602281005780.a n = A308217 n

end A308217

/-! ## A308217.P13948663237881204484

`A081351(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A308217.P13948663237881204484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081351 n + (1 - a (n - 1))

end

end A308217.P13948663237881204484

namespace A308217

/-- `A081351(n)+1-a(n-1)` -/
def P13948663237881204484.Spec : Prop :=
  ∀ n, P13948663237881204484.a n = A308217 n

end A308217

/-! ## A308217.P9520420307146295032

`A005408(∑[A001057(n)])²-A001057(n)`
-/

namespace A308217.P9520420307146295032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2 - A001057 n

end

end A308217.P9520420307146295032

namespace A308217

/-- `A005408(∑[A001057(n)])²-A001057(n)` -/
def P9520420307146295032.Spec : Prop :=
  ∀ n, P9520420307146295032.a n = A308217 n

end A308217

/-! ## A308217.P15974398685232040716

`(A080513(n)+A001057(n))²-A001057(n)`
-/

namespace A308217.P15974398685232040716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080513 n + A001057 n) ^ 2 - A001057 n

end

end A308217.P15974398685232040716

namespace A308217

/-- `(A080513(n)+A001057(n))²-A001057(n)` -/
def P15974398685232040716.Spec : Prop :=
  ∀ n, P15974398685232040716.a n = A308217 n

end A308217

/-! ## A308217.P6241148939704880731

`A308215(n+1)-(n+1)²`
-/

namespace A308217.P6241148939704880731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308215 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A308217.P6241148939704880731

namespace A308217

/-- `A308215(n+1)-(n+1)²` -/
def P6241148939704880731.Spec : Prop :=
  ∀ n, P6241148939704880731.a n = A308217 n

end A308217

/-! ## A308217.P16070994253424279424

`Δ[(n+1)*A026741(n+1)]+∑[n]`
-/

namespace A308217.P16070994253424279424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026741 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A308217.P16070994253424279424

namespace A308217

/-- `Δ[(n+1)*A026741(n+1)]+∑[n]` -/
def P16070994253424279424.Spec : Prop :=
  ∀ n, P16070994253424279424.a n = A308217 n

end A308217

/-! ## A308217.P14790258210894155723

`A065530(n+1)+A110654(n)-n`
-/

namespace A308217.P14790258210894155723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 (n + 1) + (A110654 n - (n : ℤ))

end

end A308217.P14790258210894155723

namespace A308217

/-- `A065530(n+1)+A110654(n)-n` -/
def P14790258210894155723.Spec : Prop :=
  ∀ n, P14790258210894155723.a n = A308217 n

end A308217

/-! ## A308217.P2877761257903173413

`A001057(n+1)+A193356(n+2)²`
-/

namespace A308217.P2877761257903173413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + A193356 (n + 2) ^ 2

end

end A308217.P2877761257903173413

namespace A308217

/-- `A001057(n+1)+A193356(n+2)²` -/
def P2877761257903173413.Spec : Prop :=
  ∀ n, P2877761257903173413.a n = A308217 n

end A308217

/-! ## A308217.P8966826551386832695

`A065530(n+1)+1-A065033(n+1)`
-/

namespace A308217.P8966826551386832695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 (n + 1) + (1 - A065033 (n + 1))

end

end A308217.P8966826551386832695

namespace A308217

/-- `A065530(n+1)+1-A065033(n+1)` -/
def P8966826551386832695.Spec : Prop :=
  ∀ n, P8966826551386832695.a n = A308217 n

end A308217

/-! ## A308217.P1189469596758709022

`A008619(n+1)+(n+1)*A193356(n+2)`
-/

namespace A308217.P1189469596758709022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + (n + 1 : ℤ) * A193356 (n + 2)

end

end A308217.P1189469596758709022

namespace A308217

/-- `A008619(n+1)+(n+1)*A193356(n+2)` -/
def P1189469596758709022.Spec : Prop :=
  ∀ n, P1189469596758709022.a n = A308217 n

end A308217

/-! ## A308217.P400614824017879941

`A000217(n+1)+A110345(n+2)-A156859(n+1)`
-/

namespace A308217.P400614824017879941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A110345 (n + 2) - A156859 (n + 1))

end

end A308217.P400614824017879941

namespace A308217

/-- `A000217(n+1)+A110345(n+2)-A156859(n+1)` -/
def P400614824017879941.Spec : Prop :=
  ∀ n, P400614824017879941.a n = A308217 n

end A308217

/-! ## A308217.P11091234464534751927

`A123684(n+2)+A052928(n+1)*A237420(n+1)`
-/

namespace A308217.P11091234464534751927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (n + 2) + A052928 (n + 1) * A237420 (n + 1)

end

end A308217.P11091234464534751927

namespace A308217

/-- `A123684(n+2)+A052928(n+1)*A237420(n+1)` -/
def P11091234464534751927.Spec : Prop :=
  ∀ n, P11091234464534751927.a n = A308217 n

end A308217

/-! ## A308217.P5311848866874785141

`A123684(n+2)+A137501(n+1)*A237420(n+1)`
-/

namespace A308217.P5311848866874785141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (n + 2) + A137501 (n + 1) * A237420 (n + 1)

end

end A308217.P5311848866874785141

namespace A308217

/-- `A123684(n+2)+A137501(n+1)*A237420(n+1)` -/
def P5311848866874785141.Spec : Prop :=
  ∀ n, P5311848866874785141.a n = A308217 n

end A308217

/-! ## A308217.P7241390449717793794

`A065530(n+1)-A130722(2*n)`
-/

namespace A308217.P7241390449717793794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 (n + 1) - A130722 (2 * n)

end

end A308217.P7241390449717793794

namespace A308217

/-- `A065530(n+1)-A130722(2*n)` -/
def P7241390449717793794.Spec : Prop :=
  ∀ n, P7241390449717793794.a n = A308217 n

end A308217

/-!
# A308218: Take the integer-sided obtuse triangles with perimeter n and sides a, b and c such that a <= b <= c. a(n) is the sum of all the b's.

The programs for A308218, there is no canonical definition to state claims against.
-/

/-! ## A308218.P8772656449966676857

`A308157(n+1)-(A308216(n+1)+A308214(n+1))`
-/

namespace A308218.P8772656449966676857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308157 (n + 1) - (A308216 (n + 1) + A308214 (n + 1))

end

end A308218.P8772656449966676857

/-!
# A308219: Number of Egyptian fractions of denominator n which are the sum of 2 unit fractions.

The programs for A308219, there is no canonical definition to state claims against.
-/

/-! ## A308219.P13284803091612407274

`∑{d}[n+1, A308220(#)]`
-/

namespace A308219.P13284803091612407274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A308220 d

end

end A308219.P13284803091612407274

/-!
# A308220: Number of irreducible Egyptian fractions of denominator n which are the sum of 2 unit fractions.

The programs for A308220, there is no canonical definition to state claims against.
-/

/-! ## A308220.P10354869988879929213

`∑{d}[n+1, A008683(#)*A308219((n+1)/#)]`
-/

namespace A308220.P10354869988879929213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A308219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308220.P10354869988879929213

/-! ## A308220.P320231595417241917

`A185816(A076245(n+1)*A085346(n+1))`
-/

namespace A308220.P320231595417241917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (A076245 (n + 1) * A085346 (n + 1)).toNat

end

end A308220.P320231595417241917

/-! ## A308220.P2350295764994004346

`A185816(lcm(A076245(n+1), A085346(n+1)))`
-/

namespace A308220.P2350295764994004346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (Int.lcm (A076245 (n + 1)) (A085346 (n + 1)))

end

end A308220.P2350295764994004346

/-! ## A308220.P5092211695021418543

`A001222(A000013(n+2)*A206074(n+1))`
-/

namespace A308220.P5092211695021418543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000013 (n + 2) * A206074 (n + 1)).toNat

end

end A308220.P5092211695021418543

/-! ## A308220.P17911689052402330418

`A303297(n+1)+A000035(A236884(n+2))`
-/

namespace A308220.P17911689052402330418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303297 (n + 1) + A000035 (A236884 (n + 2)).toNat

end

end A308220.P17911689052402330418

/-!
# A308221: Number of Egyptian fractions of denominator n which are sum of 3 unit fractions.

The programs for A308221, there is no canonical definition to state claims against.
-/

/-! ## A308221.P12278751770063664573

`∑{d}[1+n, A308415(#)]`
-/

namespace A308221.P12278751770063664573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A308415 d

end

end A308221.P12278751770063664573

/-! ## A308221.P17872271106900113676

`A008574(A187829(n+1))-A270429(n+1)`
-/

namespace A308221.P17872271106900113676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A187829 (n + 1)).toNat - A270429 (n + 1)

end

end A308221.P17872271106900113676

/-!
# A308222: Numbers that are the perimeter of a primitive Heronian isosceles triangle.

The programs for A308222, there is no canonical definition to state claims against.
-/

/-! ## A308222.P9942569079521126628

`2*A096033(n+3)`
-/

namespace A308222.P9942569079521126628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096033 (n + 3)

end

end A308222.P9942569079521126628

/-! ## A308222.P17116928410038235627

`2*(A155946(n+3)+1)`
-/

namespace A308222.P17116928410038235627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155946 (n + 3) + 1)

end

end A308222.P17116928410038235627

/-! ## A308222.P11409160994094506060

`A088827(floor((n+3)*sqrt(2)))`
-/

namespace A308222.P11409160994094506060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 ⌊(n + 3 : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

end

end A308222.P11409160994094506060

/-! ## A308222.P14067480085171601195

`A004277(A096033(n+3))`
-/

namespace A308222.P14067480085171601195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A096033 (n + 3)).toNat

end

end A308222.P14067480085171601195

/-! ## A308222.P13889686709565576817

`A004277(A155946(n+3)+1)`
-/

namespace A308222.P13889686709565576817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A155946 (n + 3) + 1).toNat

end

end A308222.P13889686709565576817

/-!
# A308223: Sum of the smallest side lengths of all integer-sided triangles with perimeter n whose side lengths are mutually coprime.

The programs for A308223, there is no canonical definition to state claims against.
-/

/-! ## A308223.P2609688106510028780

`A308229(n+1)-(A308225(n+1)+A308224(n+1))`
-/

namespace A308223.P2609688106510028780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308229 (n + 1) - (A308225 (n + 1) + A308224 (n + 1))

end

end A308223.P2609688106510028780

/-! ## A308223.P13975681753329695128

`A192002(A308229(n+1)+1)`
-/

namespace A308223.P13975681753329695128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 (A308229 (n + 1) + 1).toNat

end

end A308223.P13975681753329695128

/-! ## A308223.P4500620682459352300

`A192002(n*A308074(n+1)+2)`
-/

namespace A308223.P4500620682459352300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 ((n : ℤ) * A308074 (n + 1) + 2).toNat

end

end A308223.P4500620682459352300

/-! ## A308223.P8321879323981173904

`A192002((n+1)*(A024161(n+1)+char[2])+1)`
-/

namespace A308223.P8321879323981173904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 ((n + 1 : ℤ) * (A024161 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) + 1).toNat

end

end A308223.P8321879323981173904

/-! ## A308223.P7437496093211092606

`A192002((n+1)*(A185012(n)+A024161(n+1))+1)`
-/

namespace A308223.P7437496093211092606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 ((n + 1 : ℤ) * (A185012 n + A024161 (n + 1)) + 1).toNat

end

end A308223.P7437496093211092606

/-!
# A308224: Sum of the largest sides of all integer-sided triangles with perimeter n whose side lengths are mutually coprime.

The programs for A308224, there is no canonical definition to state claims against.
-/

/-! ## A308224.P333278244971879694

`A308229(n+1)-(A308225(n+1)+A308223(n+1))`
-/

namespace A308224.P333278244971879694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308229 (n + 1) - (A308225 (n + 1) + A308223 (n + 1))

end

end A308224.P333278244971879694

/-!
# A308225: Take the integer-sided triangles with perimeter n and mutually coprime sides a, b and c such that a <= b <= c. a(n) is the sum of all the b's.

The programs for A308225, there is no canonical definition to state claims against.
-/

/-! ## A308225.P1882305860768572261

`A308229(n+1)-(A308224(n+1)+A308223(n+1))`
-/

namespace A308225.P1882305860768572261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308229 (n + 1) - (A308224 (n + 1) + A308223 (n + 1))

end

end A308225.P1882305860768572261

/-!
# A308227: G.f.: (x/(1 - x)) * Product_{k>=1} ((1 + x^k)/(1 - x^k))^a(k).

The programs for A308227, there is no canonical definition to state claims against.
-/

/-! ## A308227.P2383772031943502520

`Δ[A301770(n)]+A224293(A084831(n+1))+A118927(n)`
-/

namespace A308227.P2383772031943502520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A224293 (A084831 (n + 1)).toNat + A118927 n)

end

end A308227.P2383772031943502520

/-! ## A308227.P10638474904941135882

`A091995(∑[A242574(n+1)])`
-/

namespace A308227.P10638474904941135882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308227.P10638474904941135882

/-!
# A308228: G.f.: x * Product_{k>=1} 1/(1 - k^k*x^k)^(a(k)/k).

The programs for A308228, there is no canonical definition to state claims against.
-/

/-! ## A308228.P4286760630605741610

`A256999(floor(cosh(floor(2^(n-1)))))`
-/

namespace A308228.P4286760630605741610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 ⌊Real.cosh (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℝ)⌋.toNat

end

end A308228.P4286760630605741610

/-!
# A308229: Sum of the perimeters of all triangles with perimeter n whose side lengths are mutually coprime.

The programs for A308229, there is no canonical definition to state claims against.
-/

/-! ## A308229.P8467675741150211884

`(n+1)*A308074(n+1)`
-/

namespace A308229.P8467675741150211884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308074 (n + 1)

end

end A308229.P8467675741150211884

/-! ## A308229.P15861285746135805455

`(n+1)*(A024161(n+1)+char[2])`
-/

namespace A308229.P15861285746135805455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A024161 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A308229.P15861285746135805455

/-! ## A308229.P9785807084722872340

`(n+1)*(A185012(n)+A024161(n+1))`
-/

namespace A308229.P9785807084722872340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A185012 n + A024161 (n + 1))

end

end A308229.P9785807084722872340

/-! ## A308229.P2337696129904212620

`(n+1)*A024161(n+1)^dr(A288697(n))`
-/

namespace A308229.P2337696129904212620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A024161 (n + 1) ^ SequenceMachineLib.digitalRoot (A288697 n)

end

end A308229.P2337696129904212620

/-! ## A308229.P11203797273416768651

`(n+1)*(A005044(n+1)-A308308(n+1))`
-/

namespace A308229.P11203797273416768651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A005044 (n + 1) - A308308 (n + 1))

end

end A308229.P11203797273416768651

/-! ## A308229.P7297471492135400965

`(n+1)*xor(A024161(n+1), A135461(A000010(2*n+1)))`
-/

namespace A308229.P7297471492135400965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.xor (A024161 (n + 1)) (A135461 (A000010 (2 * n + 1)).toNat)

end

end A308229.P7297471492135400965

/-! ## A308229.P11722632632862204288

`A308223(n+1)+A308225(n+1)+A308224(n+1)`
-/

namespace A308229.P11722632632862204288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308223 (n + 1) + (A308225 (n + 1) + A308224 (n + 1))

end

end A308229.P11722632632862204288

/-! ## A308229.P7526924876536605152

`(n+1)*(A135461(∑[n])+A024161(n+1))`
-/

namespace A308229.P7526924876536605152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A135461 (∑ j ∈ Finset.range (n + 1), f1 j) + A024161 (n + 1))

end

end A308229.P7526924876536605152

/-!
# A308230: Irregular triangle: row n shows the alternating sums of partitions of n when the parts are arranged in nonincreasing order and the partitions are arranged lexicographically from [n] to [1,1,1,...,1].

The programs for A308230, there is no canonical definition to state claims against.
-/

/-! ## A308230.P13921320974602062568

`A124754(A114994(1+n))`
-/

namespace A308230.P13921320974602062568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A114994 (1 + n)).toNat

end

end A308230.P13921320974602062568

/-! ## A308230.P6612708124634529237

`A344616(A129129(n+1))`
-/

namespace A308230.P6612708124634529237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A129129 (n + 1)).toNat

end

end A308230.P6612708124634529237

/-! ## A308230.P634041898684283890

`A257991(A333485(n+1))`
-/

namespace A308230.P634041898684283890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A333485 (n + 1)).toNat

end

end A308230.P634041898684283890

/-! ## A308230.P9231974894021473909

`A124754(eq[1, A124765(n)])`
-/

namespace A308230.P9231974894021473909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308230.P9231974894021473909

/-! ## A308230.P3854253306155215573

`A276165(eq[1, A124765(n)])`
-/

namespace A308230.P3854253306155215573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308230.P3854253306155215573

/-!
# A308231: G.f.: x * Product_{k>=1} (1 + k^k*x^k)^(a(k)/k).

The programs for A308231, there is no canonical definition to state claims against.
-/

/-! ## A308231.P1878107205096016800

`A354955(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=20`
-/

namespace A308231.P1878107205096016800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 20] fun n a =>
  A354955 (a (n - 1)).toNat

end

end A308231.P1878107205096016800

/-!
# A308234: Take apart the sides of each of the integer-sided scalene triangles with perimeter n (at their vertices) and rearrange them orthogonally in 3-space so that their endpoints coincide at a single point. a(n) is the total volume of all rectangular prisms enclosed in this way.

The programs for A308234, there is no canonical definition to state claims against.
-/

/-! ## A308234.P1016376425848632042

`∑{d}[A009694(n)*A286769(n+3), gcd(n, #)]`
-/

namespace A308234.P1016376425848632042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009694 n * A286769 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd n d

end

end A308234.P1016376425848632042

/-! ## A308234.P7807838358871054409

`A124757(A007598(n)*A332286(n))`
-/

namespace A308234.P7807838358871054409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A007598 n * A332286 n).toNat

end

end A308234.P7807838358871054409

/-! ## A308234.P6894439029256970090

`A238845(A238918(n))*A238892(n)`
-/

namespace A308234.P6894439029256970090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (A238918 n).toNat * A238892 n

end

end A308234.P6894439029256970090

/-! ## A308234.P15337936048833891909

`A266732(n)%A135660(A067333(n))`
-/

namespace A308234.P15337936048833891909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266732 n) (A135660 (A067333 n).toNat)

end

end A308234.P15337936048833891909

/-! ## A308234.P16321686199369695085

`and(A034332(n), A106232(A065033(n)))`
-/

namespace A308234.P16321686199369695085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034332 n) (A106232 (A065033 n).toNat)

end

end A308234.P16321686199369695085

/-!
# A308235: Take apart the sides of each of the integer-sided scalene triangles with perimeter n (at their vertices) and rearrange them orthogonally in 3-space so that their endpoints coincide at a single point. a(n) is the total surface area of all rectangular prisms enclosed in this way.

The programs for A308235, there is no canonical definition to state claims against.
-/

/-! ## A308235.P18279834588688276373

`A300372(A038503(n))%77`
-/

namespace A308235.P18279834588688276373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300372 (A038503 n).toNat) 77

end

end A308235.P18279834588688276373

/-! ## A308235.P5717167310435357669

`A085393(A299164(n)+A075217(n+1))`
-/

namespace A308235.P5717167310435357669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 (A299164 n + A075217 (n + 1)).toNat

end

end A308235.P5717167310435357669

/-! ## A308235.P12126347334704424885

`A228644(n)*A249856(A270831(n+1))`
-/

namespace A308235.P12126347334704424885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228644 n * A249856 (A270831 (n + 1)).toNat

end

end A308235.P12126347334704424885

/-! ## A308235.P15260955371399835797

`A008726(3*n)%A274741(A000073(n))`
-/

namespace A308235.P15260955371399835797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008726 (3 * n)) (A274741 (A000073 n).toNat)

end

end A308235.P15260955371399835797

/-! ## A308235.P13559156541957585949

`A190021(A340134(n+3))*A349294(3*n+2)`
-/

namespace A308235.P13559156541957585949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190021 (A340134 (n + 3)).toNat * A349294 (3 * n + 2)

end

end A308235.P13559156541957585949

/-!
# A308237: Numbers m not ending with 0 that contain a digit, other than the leftmost digit, that can be removed such that the resulting number d divides m.

The programs for A308237, there is no canonical definition to state claims against.
-/

/-! ## A308237.P5570350333468873517

`eq[floor(n/10), A052423(n+1)]+1`
-/

namespace A308237.P5570350333468873517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A308237.P5570350333468873517

/-! ## A308237.P5834036770126492866

`filter[A359841(n+1), A168046(#)]`
-/

namespace A308237.P5834036770126492866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A308237.P5834036770126492866

/-! ## A308237.P1169672325908888441

`filter[A359841(n+1), A168184(#)]`
-/

namespace A308237.P1169672325908888441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A308237.P1169672325908888441

/-! ## A308237.P10801378928753739443

`filter[A359841(n+1), A209929(#)]`
-/

namespace A308237.P10801378928753739443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A308237.P10801378928753739443

/-! ## A308237.P12417913082495520562

`∩[A359841(n+1), A102827(n)]`
-/

namespace A308237.P12417913082495520562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102827 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308237.P12417913082495520562

/-!
# A308238: Nonprimes k such that k^10 + k^9 + k^8 + k^7 + k^6 + k^5 + k^4 + k^3 + k^2 + k + 1 is prime.

The programs for A308238, there is no canonical definition to state claims against.
-/

/-! ## A308238.P4392109918305016868

`record[A005451(A162862(n+1))]`
-/

namespace A308238.P4392109918305016868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A162862 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308238.P4392109918305016868

/-! ## A308238.P10320143553570106464

`filter[A162862(n+1), A005171(#)]`
-/

namespace A308238.P10320143553570106464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A308238.P10320143553570106464

/-! ## A308238.P18338873682447689750

`∩[A018252(n+1), A162862(n+1)]`
-/

namespace A308238.P18338873682447689750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308238.P18338873682447689750

/-! ## A308238.P2693499131329249665

`∩[A056653(n+1), A162862(n+1)]`
-/

namespace A308238.P2693499131329249665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308238.P2693499131329249665

/-! ## A308238.P16902661729662178746

`∩[A065090(n+1), A162862(n+1)]`
-/

namespace A308238.P16902661729662178746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308238.P16902661729662178746

/-! ## A308238.P2355664277998213363

`∩[A139118(n+1), A162862(n+1)]`
-/

namespace A308238.P2355664277998213363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308238.P2355664277998213363

/-! ## A308238.P11321692666294264664

`∩[A141468(n+1), A162862(n+1)]`
-/

namespace A308238.P11321692666294264664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308238.P11321692666294264664

/-! ## A308238.P2004559309072066149

`∩[A158871(n+1), A162862(n+1)]`
-/

namespace A308238.P2004559309072066149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308238.P2004559309072066149

/-! ## A308238.P3950110849042994034

`∩[A162862(n+1), A171581(n+1)]`
-/

namespace A308238.P3950110849042994034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308238.P3950110849042994034

/-! ## A308238.P6049958881925259584

`∩[A162862(n+1), A173905(n+1)]`
-/

namespace A308238.P6049958881925259584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308238.P6049958881925259584

/-!
# A308239: Number of isomorphism classes of connected Eulerian oriented graphs with n vertices.

The programs for A308239, there is no canonical definition to state claims against.
-/

/-! ## A308239.P6300698879229337137

`A327478(floor((n-1)*(2*a(n-1)+3*a(n-2))/(n+1)))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A308239.P6300698879229337137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A327478 ⌊((n : ℤ) - 1 : ℚ) * ((2 * a (n - 1) + 3 * a (n - 2) : ℚ) / (n + 1 : ℚ))⌋.toNat

end

end A308239.P6300698879229337137

/-! ## A308239.P10388441644254842967

`A072484(A000124(a(n-1))+n)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A308239.P10388441644254842967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1, 1] fun n a =>
  A072484 (A000124 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A308239.P10388441644254842967

/-! ## A308239.P3445812631339756357

`A074262(A000032(2*a(n-2)-a(n-4)))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A308239.P3445812631339756357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1, 1] fun n a =>
  A074262 (A000032 (2 * a (n - 2) - a (n - 4)).toNat).toNat

end

end A308239.P3445812631339756357

/-! ## A308239.P14606905039385857067

`A351976(A038505(n)+A006722(n))`
-/

namespace A308239.P14606905039385857067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351976 (A038505 n + A006722 n).toNat

end

end A308239.P14606905039385857067

/-!
# A308240: Number of lattice paths from (0,0) to (n,n) that consist of steps (h,v) with h, v prime or one.

The programs for A308240, there is no canonical definition to state claims against.
-/

/-! ## A308240.P8985309661151042106

`round(log2(cosh(A222589(n))))`
-/

namespace A308240.P8985309661151042106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.cosh (A222589 n : ℝ)))

end

end A308240.P8985309661151042106

/-! ## A308240.P3157382740423550991

`A106432(A254686(n))`
-/

namespace A308240.P3157382740423550991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A254686 n).toNat

end

end A308240.P3157382740423550991

/-! ## A308240.P3473546520913801880

`A375496(A366229(n))`
-/

namespace A308240.P3473546520913801880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375496 (A366229 n).toNat

end

end A308240.P3473546520913801880

/-!
# A308241: Total number of nodes summed over all lattice paths from (0,0) to (n,n) that consist of steps (h,v) with h, v prime or one.

The programs for A308241, there is no canonical definition to state claims against.
-/

/-! ## A308241.P14134159515437678903

`A110266(A296000(n))`
-/

namespace A308241.P14134159515437678903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A296000 n).toNat

end

end A308241.P14134159515437678903

/-! ## A308241.P16069876255796927757

`A000984(n)-A001822(A002294(n))`
-/

namespace A308241.P16069876255796927757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A001822 (A002294 n).toNat

end

end A308241.P16069876255796927757

/-!
# A308243: Index of E-irregularity of prime(n).

The programs for A308243, there is no canonical definition to state claims against.
-/

/-! ## A308243.P12564000134732472294

`ceil(A092219(n+1)/A088726(n))`
-/

namespace A308243.P12564000134732472294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092219 (n + 1) : ℚ) / (A088726 n : ℚ)⌉

end

end A308243.P12564000134732472294

/-! ## A308243.P2150555433584090691

`ceil(A092219(n+1)/A269983(n+1))`
-/

namespace A308243.P2150555433584090691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092219 (n + 1) : ℚ) / (A269983 (n + 1) : ℚ)⌉

end

end A308243.P2150555433584090691

/-! ## A308243.P17400815144108675015

`ceil(A092219(n+1)/A272594(n+1))`
-/

namespace A308243.P17400815144108675015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092219 (n + 1) : ℚ) / (A272594 (n + 1) : ℚ)⌉

end

end A308243.P17400815144108675015

/-! ## A308243.P13818392748412669655

`ceil(A092219(n+1)/A300476(n+1))`
-/

namespace A308243.P13818392748412669655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092219 (n + 1) : ℚ) / (A300476 (n + 1) : ℚ)⌉

end

end A308243.P13818392748412669655

/-! ## A308243.P2104699431610339830

`A245167(C(A003056(n), A092219(n+1)))`
-/

namespace A308243.P2104699431610339830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245167 (Nat.choose (A003056 n).toNat (A092219 (n + 1)).toNat)

end

end A308243.P2104699431610339830

/-! ## A308243.P13496268852452029667

`A356962(C(A046854(n), A092219(n+1)))`
-/

namespace A308243.P13496268852452029667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356962 (Nat.choose (A046854 n).toNat (A092219 (n + 1)).toNat)

end

end A308243.P13496268852452029667

/-! ## A308243.P221989590370890206

`A281218(C(A283987(n+1), A092219(n+1)))`
-/

namespace A308243.P221989590370890206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281218 (Nat.choose (A283987 (n + 1)).toNat (A092219 (n + 1)).toNat)

end

end A308243.P221989590370890206

/-! ## A308243.P15944824361083669943

`A281218(C(A326062(n+1), A092219(n+1)))`
-/

namespace A308243.P15944824361083669943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281218 (Nat.choose (A326062 (n + 1)).toNat (A092219 (n + 1)).toNat)

end

end A308243.P15944824361083669943

/-!
# A308244: Triangle T(n,k) read by rows, giving even-numbered coefficients of the matching polynomial of the n-ladder graph.

The programs for A308244, the canonical program `A308244.P10321302346116107227` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308244 has offset 0).

The definition of A308244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308244.P10321302346116107227

`T(n-1,k-1)-2*T(n-1,k)-T(n-2,k-1)+T(row(n)-3, col(n))` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A308244

/-- `T(n-1,k-1)-2*T(n-1,k)-T(n-2,k-1)+T(row(n)-3, col(n))` -/
def P10321302346116107227.Spec : Prop :=
  ∀ n, P10321302346116107227.a n = A308244 n

theorem P10321302346116107227.correct : P10321302346116107227.Spec := by
  intro n
  simp only [A308244]

end A308244

/-! ## A308244.P1539623503865377461

`A046741(A061579(n))*A097807(n)`
-/

namespace A308244.P1539623503865377461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A061579 n).toNat * A097807 n

end

end A308244.P1539623503865377461

namespace A308244

/-- `A046741(A061579(n))*A097807(n)` -/
def P1539623503865377461.Spec : Prop :=
  ∀ n, P1539623503865377461.a n = A308244 n

end A308244

/-! ## A308244.P1077404251167150042

`A033999(A025581(n))*A046741(A061579(n))`
-/

namespace A308244.P1077404251167150042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A046741 (A061579 n).toNat

end

end A308244.P1077404251167150042

namespace A308244

/-- `A033999(A025581(n))*A046741(A061579(n))` -/
def P1077404251167150042.Spec : Prop :=
  ∀ n, P1077404251167150042.a n = A308244 n

end A308244

/-! ## A308244.P2089490379990547809

`A033999(A004736(n+1)+1)*A046741(A061579(n))`
-/

namespace A308244.P2089490379990547809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004736 (n + 1) + 1).toNat * A046741 (A061579 n).toNat

end

end A308244.P2089490379990547809

namespace A308244

/-- `A033999(A004736(n+1)+1)*A046741(A061579(n))` -/
def P2089490379990547809.Spec : Prop :=
  ∀ n, P2089490379990547809.a n = A308244 n

end A308244

/-! ## A308244.P2700829099286099818

`A033999(A095831(n+1))*A046741(A061579(n))`
-/

namespace A308244.P2700829099286099818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A095831 (n + 1)).toNat * A046741 (A061579 n).toNat

end

end A308244.P2700829099286099818

namespace A308244

/-- `A033999(A095831(n+1))*A046741(A061579(n))` -/
def P2700829099286099818.Spec : Prop :=
  ∀ n, P2700829099286099818.a n = A308244 n

end A308244

/-! ## A308244.P3481489142162051716

`A008836(A130321(n))*A046741(A061579(n))`
-/

namespace A308244.P3481489142162051716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A046741 (A061579 n).toNat

end

end A308244.P3481489142162051716

namespace A308244

/-- `A008836(A130321(n))*A046741(A061579(n))` -/
def P3481489142162051716.Spec : Prop :=
  ∀ n, P3481489142162051716.a n = A308244 n

end A308244

/-!
# A308245: G.f.: x * Product_{k>=1} 1/(1 - a(k)*(-x)^k)^((-1)^k).

The programs for A308245, there is no canonical definition to state claims against.
-/

/-! ## A308245.P10861476917355389878

`A004001(A036661(n*A213217(n)))`
-/

namespace A308245.P10861476917355389878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A036661 ((n : ℤ) * A213217 n).toNat).toNat

end

end A308245.P10861476917355389878

/-! ## A308245.P917168200613589879

`A004001(A036661(n)^A213217(n))`
-/

namespace A308245.P917168200613589879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (SequenceMachineLib.roundAway ((A036661 n : ℚ) ^ (A213217 n : ℤ))).toNat

end

end A308245.P917168200613589879

/-! ## A308245.P9883316393884997829

`A020639(A032301(n+1))*A348756(n+1)`
-/

namespace A308245.P9883316393884997829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032301 (n + 1)).toNat * A348756 (n + 1)

end

end A308245.P9883316393884997829

/-! ## A308245.P16655455227221791574

`A020639(A225824(n+1))*A348756(n+1)`
-/

namespace A308245.P16655455227221791574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A225824 (n + 1)).toNat * A348756 (n + 1)

end

end A308245.P16655455227221791574

/-! ## A308245.P3862898103273089385

`A248890(A046469(n)+1)+A233918(A000009(n))`
-/

namespace A308245.P3862898103273089385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248890 (A046469 n + 1).toNat + A233918 (A000009 n).toNat

end

end A308245.P3862898103273089385

/-!
# A308246: G.f.: x * Product_{k>=1} (1 + a(k)*(-x)^k)^((-1)^k).

The programs for A308246, there is no canonical definition to state claims against.
-/

/-! ## A308246.P5845427053464847625

`A206119(n)-A277822(A242522(n+1))`
-/

namespace A308246.P5845427053464847625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206119 n - A277822 (A242522 (n + 1)).toNat

end

end A308246.P5845427053464847625

/-! ## A308246.P837076501097154710

`A135304(A100131(n))`
-/

namespace A308246.P837076501097154710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A100131 n).toNat

end

end A308246.P837076501097154710

/-! ## A308246.P5661313701931847111

`A332246(A148960(n))`
-/

namespace A308246.P5661313701931847111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 (A148960 n).toNat

end

end A308246.P5661313701931847111

/-! ## A308246.P10481090677125830789

`A162002(A351013(n))`
-/

namespace A308246.P10481090677125830789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162002 (A351013 n).toNat

end

end A308246.P10481090677125830789

/-!
# A308248: Squares of automorphic numbers in base 6 (cf. A237583).

The programs for A308248, there is no canonical definition to state claims against.
-/

/-! ## A308248.P1321892190462682475

`A237583(n+1)²`
-/

namespace A308248.P1321892190462682475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237583 (n + 1) ^ 2

end

end A308248.P1321892190462682475

/-! ## A308248.P10198669175678556336

`record[A237583(A028920(n))²]`
-/

namespace A308248.P10198669175678556336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237583 (A028920 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308248.P10198669175678556336

/-! ## A308248.P3435743159145484776

`record[A237583(A116549(n))²]`
-/

namespace A308248.P3435743159145484776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237583 (A116549 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308248.P3435743159145484776

/-! ## A308248.P12924195314576734400

`record[A237583(A128227(n))²]`
-/

namespace A308248.P12924195314576734400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237583 (A128227 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308248.P12924195314576734400

/-! ## A308248.P5001519257816305780

`record[A237583(A137735(n))²]`
-/

namespace A308248.P5001519257816305780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237583 (A137735 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308248.P5001519257816305780

/-!
# A308249: Squares of automorphic numbers in base 12 (cf. A201918).

The programs for A308249, there is no canonical definition to state claims against.
-/

/-! ## A308249.P363101714930761821

`A201918(n+1)²`
-/

namespace A308249.P363101714930761821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201918 (n + 1) ^ 2

end

end A308249.P363101714930761821

/-! ## A308249.P8279676793731130459

`record[A201918(A203814(n))²]`
-/

namespace A308249.P8279676793731130459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201918 (A203814 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308249.P8279676793731130459

/-! ## A308249.P7649076280995100079

`A201918(A000027(n+1))^2`
-/

namespace A308249.P7649076280995100079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201918 (A000027 (n + 1)).toNat ^ 2

end

end A308249.P7649076280995100079

/-! ## A308249.P12315891562434379642

`A201918(n+1)^A040000(n)!`
-/

namespace A308249.P12315891562434379642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201918 (n + 1) ^ Nat.factorial (A040000 n).toNat

end

end A308249.P12315891562434379642

/-! ## A308249.P8691081765902133597

`A201918(n+1)^p?[A066520(n+1)]`
-/

namespace A308249.P8691081765902133597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201918 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A308249.P8691081765902133597

/-!
# A308250: Squares of automorphic numbers in base 12 (cf. A201919).

The programs for A308250, there is no canonical definition to state claims against.
-/

/-! ## A308250.P17569852106667859056

`A201919(n+1)²`
-/

namespace A308250.P17569852106667859056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201919 (n + 1) ^ 2

end

end A308250.P17569852106667859056

/-! ## A308250.P7943340429387870436

`record[A201919(A022446(n))²]`
-/

namespace A308250.P7943340429387870436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201919 (A022446 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308250.P7943340429387870436

/-! ## A308250.P7597126478225142587

`record[A201919(A028920(n))²]`
-/

namespace A308250.P7597126478225142587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201919 (A028920 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308250.P7597126478225142587

/-! ## A308250.P11150579019178271637

`record[A201919(A116549(n))²]`
-/

namespace A308250.P11150579019178271637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201919 (A116549 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308250.P11150579019178271637

/-! ## A308250.P13386565452194447178

`record[A201919(A128227(n))²]`
-/

namespace A308250.P13386565452194447178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201919 (A128227 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308250.P13386565452194447178

/-!
# A308251: Number of subsets of {1,...,n + 1} containing n + 1 and such that all positive differences of distinct elements are distinct.

The programs for A308251, there is no canonical definition to state claims against.
-/

/-! ## A308251.P10907359190041699560

`Δ[A143823(n)]`
-/

namespace A308251.P10907359190041699560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308251.P10907359190041699560

/-! ## A308251.P4899081128296808825

`∑[A169942(gcd(n, C(2, n)))]`
-/

namespace A308251.P4899081128296808825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308251.P4899081128296808825

/-! ## A308251.P4981634647081486569

`∑[A169942(floor(acot(n)+n))]`
-/

namespace A308251.P4981634647081486569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308251.P4981634647081486569

/-! ## A308251.P4756067478531416709

`∑[A169942(round(acot(n)+n))]`
-/

namespace A308251.P4756067478531416709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308251.P4756067478531416709

/-! ## A308251.P8277901452939896830

`A169942(n)+a(n-1)` with `a(0)=1`
-/

namespace A308251.P8277901452939896830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169942 n + a (n - 1)

end

end A308251.P8277901452939896830

/-! ## A308251.P18182949804925033887

`∑[A169942(abs(1-n)+1)]`
-/

namespace A308251.P18182949804925033887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308251.P18182949804925033887

/-! ## A308251.P941088546463384955

`∑[or(1, A169942(A028310(n)))]`
-/

namespace A308251.P941088546463384955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A169942 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308251.P941088546463384955

/-! ## A308251.P11913401019504067690

`A143823(n+1)-A143823(n)`
-/

namespace A308251.P11913401019504067690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (n + 1) - A143823 n

end

end A308251.P11913401019504067690

/-! ## A308251.P12518343779545249706

`(∑[A169942(A000038(n)+n)]^(1/2))²`
-/

namespace A308251.P12518343779545249706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A308251.P12518343779545249706

/-! ## A308251.P3452011025176871929

`(n%2)!*∑[A169942(A000007(n)+n)]`
-/

namespace A308251.P3452011025176871929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308251.P3452011025176871929

/-! ## A308251.P13603692726641447754

`record[A143823(A123108(n))]-A143823(n)`
-/

namespace A308251.P13603692726641447754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A143823 n

end

end A308251.P13603692726641447754

/-! ## A308251.P11139440694562786123

`A169952(A028310(n))+1-A000007(n)`
-/

namespace A308251.P11139440694562786123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169952 (A028310 n).toNat + (1 - A000007 n)

end

end A308251.P11139440694562786123

/-!
# A308252: Squarefree composite numbers k with chained prime factors: the last digit of every prime factor is the same as the first digit of the next one. Prime factors must be in ascending order.

The programs for A308252, there is no canonical definition to state claims against.
-/

/-! ## A308252.P12719845997662851755

`record[A007947(A308099(n+1))]`
-/

namespace A308252.P12719845997662851755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A308099 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308252.P12719845997662851755

/-! ## A308252.P9540784930697687002

`filter[A308099(n+1), A008966(#)]`
-/

namespace A308252.P9540784930697687002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A308252.P9540784930697687002

/-! ## A308252.P1987282206723845789

`filter[A308099(n+1), A064911(#)]`
-/

namespace A308252.P1987282206723845789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A308252.P1987282206723845789

/-! ## A308252.P14672826644144106651

`filter[A308099(n+1), A101040(#)]`
-/

namespace A308252.P14672826644144106651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A308252.P14672826644144106651

/-! ## A308252.P10598265106831076356

`filter[A308099(n+1), A123927(#)]`
-/

namespace A308252.P10598265106831076356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A308252.P10598265106831076356

/-! ## A308252.P12869136958954779746

`filter[A308099(n+1), A280710(#)]`
-/

namespace A308252.P12869136958954779746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A308252.P12869136958954779746

/-! ## A308252.P1505045067709582001

`filter[A308099(n+1), A323154(#)]`
-/

namespace A308252.P1505045067709582001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A308252.P1505045067709582001

/-! ## A308252.P3515733233447246980

`filter[A308099(n+1), A353471(#)]`
-/

namespace A308252.P3515733233447246980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A308252.P3515733233447246980

/-! ## A308252.P14365327934643008747

`filter[A308099(n+1), A353559(#)]`
-/

namespace A308252.P14365327934643008747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A308252.P14365327934643008747

/-! ## A308252.P17181137154695685260

`filter[A308099(n+1), A353629(#)]`
-/

namespace A308252.P17181137154695685260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A308252.P17181137154695685260

/-!
# A308253: Number of integer-sided triangles with perimeter n and nonprime side lengths.

The programs for A308253, there is no canonical definition to state claims against.
-/

/-! ## A308253.P17143211451087924973

`A308254(n+1)/(n+1)`
-/

namespace A308253.P17143211451087924973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308254 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A308253.P17143211451087924973

/-! ## A308253.P16585587826178617892

`(A308255(n+1)+A308257(n+1)+A308256(n+1))/(n+1)`
-/

namespace A308253.P16585587826178617892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308255 (n + 1) + (A308257 (n + 1) + A308256 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A308253.P16585587826178617892

/-! ## A308253.P6206165493566444204

`A005843(A308254(n+1))%A005408(n)`
-/

namespace A308253.P6206165493566444204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A308254 (n + 1)).toNat) (A005408 n)

end

end A308253.P6206165493566444204

/-! ## A308253.P11199926654251541336

`A028950(A308256(n+1))`
-/

namespace A308253.P11199926654251541336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 (A308256 (n + 1)).toNat

end

end A308253.P11199926654251541336

/-! ## A308253.P10480880910142410511

`A028950(A308254(n+1)-(A308257(n+1)+A308255(n+1)))`
-/

namespace A308253.P10480880910142410511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 (A308254 (n + 1) - (A308257 (n + 1) + A308255 (n + 1))).toNat

end

end A308253.P10480880910142410511

/-!
# A308254: Sum of the perimeters of all integer-sided triangles with perimeter n and nonprime side lengths.

The programs for A308254, there is no canonical definition to state claims against.
-/

/-! ## A308254.P12866568412918178423

`A308255(n+1)+A308257(n+1)+A308256(n+1)`
-/

namespace A308254.P12866568412918178423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308255 (n + 1) + (A308257 (n + 1) + A308256 (n + 1))

end

end A308254.P12866568412918178423

/-! ## A308254.P3542418061882780174

`(n+1)*A308253(n+1)`
-/

namespace A308254.P3542418061882780174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308253 (n + 1)

end

end A308254.P3542418061882780174

/-! ## A308254.P13887199456655395322

`log2(A000079(n+1)^A308253(n+1))`
-/

namespace A308254.P13887199456655395322
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000079 (n + 1) : ℚ) ^ (A308253 (n + 1) : ℤ) : ℝ)

end

end A308254.P13887199456655395322

/-! ## A308254.P11724290005976805094

`(n+1)*A028950(A308256(n+1))`
-/

namespace A308254.P11724290005976805094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028950 (A308256 (n + 1)).toNat

end

end A308254.P11724290005976805094

/-! ## A308254.P2535243046717154822

`A318994(A008578(n+1)^A308253(n+1))`
-/

namespace A308254.P2535243046717154822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (SequenceMachineLib.roundAway ((A008578 (n + 1) : ℚ) ^ (A308253 (n + 1) : ℤ))).toNat

end

end A308254.P2535243046717154822

/-!
# A308255: Sum of the smallest side lengths of all integer-sided triangles with perimeter n and nonprime sides.

The programs for A308255, there is no canonical definition to state claims against.
-/

/-! ## A308255.P6028172619906276901

`A308254(n+1)-(A308257(n+1)+A308256(n+1))`
-/

namespace A308255.P6028172619906276901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308254 (n + 1) - (A308257 (n + 1) + A308256 (n + 1))

end

end A308255.P6028172619906276901

/-! ## A308255.P2839264519761938431

`and(A008074((n%2)^n), A324593(n+1))`
-/

namespace A308255.P2839264519761938431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008074 ((n % 2) ^ n)) (A324593 (n + 1))

end

end A308255.P2839264519761938431

/-! ## A308255.P8702485488444666169

`A242444(lcm(A029841(n), A271258(n)))`
-/

namespace A308255.P8702485488444666169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242444 (Int.lcm (A029841 n) (A271258 n))

end

end A308255.P8702485488444666169

/-! ## A308255.P650395939512303106

`A035287(A054543(n+1))%A070941(n)`
-/

namespace A308255.P650395939512303106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035287 (A054543 (n + 1)).toNat) (A070941 n)

end

end A308255.P650395939512303106

/-!
# A308256: Sum of the largest side lengths of all integer-sided triangles with perimeter n and nonprime sides.

The programs for A308256, there is no canonical definition to state claims against.
-/

/-! ## A308256.P1302172767289532668

`A308254(n+1)-(A308257(n+1)+A308255(n+1))`
-/

namespace A308256.P1302172767289532668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308254 (n + 1) - (A308257 (n + 1) + A308255 (n + 1))

end

end A308256.P1302172767289532668

/-!
# A308257: Take all the integer-sided triangles with perimeter n and nonprime sides a, b, and c such that a <= b <= c. a(n) is the sum of all the b's.

The programs for A308257, there is no canonical definition to state claims against.
-/

/-! ## A308257.P10214626060822768922

`A308254(n+1)-(A308256(n+1)+A308255(n+1))`
-/

namespace A308257.P10214626060822768922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308254 (n + 1) - (A308256 (n + 1) + A308255 (n + 1))

end

end A308257.P10214626060822768922

/-! ## A308257.P7895988989079074329

`and(A119495(abs(2-n)), A308256(n+1))`
-/

namespace A308257.P7895988989079074329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A119495 |2 - (n : ℤ)|.toNat) (A308256 (n + 1))

end

end A308257.P7895988989079074329

/-! ## A308257.P13583350653369208775

`and(A016755(A182094(n)), A308256(n+1))`
-/

namespace A308257.P13583350653369208775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016755 (A182094 n).toNat) (A308256 (n + 1))

end

end A308257.P13583350653369208775

/-!
# A308259: a(n) is equal to the sum of the factorials of the digits of a(n-1), initial term is 3.

The programs for A308259, there is no canonical definition to state claims against.
-/

/-! ## A308259.P8313164370733042331

`A351328(n+4)%A347612(n+3)²`
-/

namespace A308259.P8313164370733042331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351328 (n + 4)) (A347612 (n + 3) ^ 2)

end

end A308259.P8313164370733042331

/-!
# A308260: a(n) = Product_{k=1..n, gcd(n,k) = 1} prime(k).

The programs for A308260, there is no canonical definition to state claims against.
-/

/-! ## A308260.P5140597987203873665

`∏{p}[A121757(2^n), #]`
-/

namespace A308260.P5140597987203873665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121757 (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A308260.P5140597987203873665

/-! ## A308260.P6223486603053909105

`∏{p}[A127674(2^n), #]`
-/

namespace A308260.P6223486603053909105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127674 (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A308260.P6223486603053909105

/-!
# A308261: For any integer n, let d(n) be the smallest k > 0 such that at least one of n-k or n+k is a prime number; we build an undirected graph G on top of the prime numbers as follows: two consecutive prime numbers p and q are connected iff at least one of d(p) or d(q) equals q-p; a(n) is the number of terms in the n-th connected component of G (ordered by least element).

The programs for A308261, there is no canonical definition to state claims against.
-/

/-! ## A308261.P11987343545007122402

`Δ[A198696(abs(1-n)+1)%C(n+6, 5)]`
-/

namespace A308261.P11987343545007122402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198696 (|1 - (n : ℤ)| + 1).toNat) (Nat.choose (n + 6) 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308261.P11987343545007122402

/-! ## A308261.P8228812281671211793

`Δ[A198696(A028310(n))%(8*n-2)]`
-/

namespace A308261.P8228812281671211793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198696 (A028310 n).toNat) ((8 * n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308261.P8228812281671211793

/-! ## A308261.P10595386320186664191

`Δ[A057427(n)*A198696(abs(1-n)+1)]`
-/

namespace A308261.P10595386320186664191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A198696 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308261.P10595386320186664191

/-! ## A308261.P10817923956121366111

`Δ[A198696(abs(1-n)+1)%A001060(n)]`
-/

namespace A308261.P10817923956121366111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198696 (|1 - (n : ℤ)| + 1).toNat) (A001060 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308261.P10817923956121366111

/-! ## A308261.P4811653930554959267

`A198696(n+1)%A198696(abs(1-n)+1)`
-/

namespace A308261.P4811653930554959267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198696 (n + 1)) (A198696 (|1 - (n : ℤ)| + 1).toNat)

end

end A308261.P4811653930554959267

/-! ## A308261.P14740558742063663034

`Δ[A178334(n)*A198696(A028310(n))]`
-/

namespace A308261.P14740558742063663034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A198696 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308261.P14740558742063663034

/-! ## A308261.P14621159005308003900

`Δ[A198696(A028310(n))]+A000038(n)²`
-/

namespace A308261.P14621159005308003900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198696 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000038 n ^ 2

end

end A308261.P14621159005308003900

/-! ## A308261.P11745367367494509857

`Δ[A198696(A028310(n))]+(2*A036987(2*n))²`
-/

namespace A308261.P11745367367494509857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198696 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 * A036987 (2 * n)) ^ 2

end

end A308261.P11745367367494509857

/-! ## A308261.P6416418107067251788

`A198696(n+1)-A178334(n)*A198696(A028310(n))`
-/

namespace A308261.P6416418107067251788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198696 (n + 1) - A178334 n * A198696 (A028310 n).toNat

end

end A308261.P6416418107067251788

/-!
# A308263: Number of ordered factorizations of n into Lucas numbers (beginning at 2) > 1.

The programs for A308263, there is no canonical definition to state claims against.
-/

/-! ## A308263.P12586649271978026238

`A281118(n+1)-A273302(A080504(n+1))`
-/

namespace A308263.P12586649271978026238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281118 (n + 1) - A273302 (A080504 (n + 1)).toNat

end

end A308263.P12586649271978026238

/-! ## A308263.P11690506783497208074

`A302193(A366592(n+1))`
-/

namespace A308263.P11690506783497208074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302193 (A366592 (n + 1)).toNat

end

end A308263.P11690506783497208074

/-! ## A308263.P14210580776409963876

`and(A000041(A183063(n+1)), A247639(n))`
-/

namespace A308263.P14210580776409963876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 (A183063 (n + 1)).toNat) (A247639 n)

end

end A308263.P14210580776409963876

/-! ## A308263.P7110312042445468863

`and(A115921(n+1), A342769(A052552(n+1)))`
-/

namespace A308263.P7110312042445468863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115921 (n + 1)) (A342769 (A052552 (n + 1)).toNat)

end

end A308263.P7110312042445468863

/-! ## A308263.P11052080781942918219

`A299194(A112486(n))%(xor(n, n+1)+1)`
-/

namespace A308263.P11052080781942918219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299194 (A112486 n).toNat) (Nat.xor n (n + 1) + 1 : ℤ)

end

end A308263.P11052080781942918219

/-!
# A308264: Number of ordered factorizations of n into triangular numbers > 1.

The programs for A308264, there is no canonical definition to state claims against.
-/

/-! ## A308264.P7588190599300157709

`gcd(A135523(A166464(n+2)), A365800(n+1))`
-/

namespace A308264.P7588190599300157709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135523 (A166464 (n + 2)).toNat) (A365800 (n + 1))

end

end A308264.P7588190599300157709

/-! ## A308264.P4880985600945216284

`gcd(A365800(n+1), A365800(A001605(n+1)))`
-/

namespace A308264.P4880985600945216284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A365800 (n + 1)) (A365800 (A001605 (n + 1)).toNat)

end

end A308264.P4880985600945216284

/-! ## A308264.P513452214352535807

`lcm(A365800(n+1), A384800(n+1))`
-/

namespace A308264.P513452214352535807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A365800 (n + 1)) (A384800 (n + 1))

end

end A308264.P513452214352535807

/-! ## A308264.P8646811813252330451

`abs(A365800(n+1)%A116011(n+1))`
-/

namespace A308264.P8646811813252330451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A365800 (n + 1)) (A116011 (n + 1))|

end

end A308264.P8646811813252330451

/-! ## A308264.P8884543060456995327

`gcd(A210709(n), A365800(n+1))`
-/

namespace A308264.P8884543060456995327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210709 n) (A365800 (n + 1))

end

end A308264.P8884543060456995327

/-!
# A308265: Sum of the largest parts in the partitions of n into 3 parts.

The programs for A308265, the canonical program `A308265.P15256434610230684031` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308265 has offset 1).

The definition of A308265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308265.P3602671151137104001

`ogf((x^2+2x^3+3x^4+3x^5+2x^6)/(1-2x^2-2x^3+x^4+4x^5+x^6-2x^7-2x^8+x^10))`
-/

namespace A308265.P3602671151137104001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 2, 3, 3, 2] [1, 0, -2, -2, 1, 4, 1, -2, -2, 0, 1] n

end

end A308265.P3602671151137104001

namespace A308265

/-- `ogf((x^2+2x^3+3x^4+3x^5+2x^6)/(1-2x^2-2x^3+x^4+4x^5+x^6-2x^7-2x^8+x^10))` -/
def P3602671151137104001.Spec : Prop :=
  ∀ n, P3602671151137104001.a n = A308265 (n + 1)

end A308265

/-! ## A308265.P2879646645117684334

`Δ[A348919(n)]+∑[round(n²/12)]`
-/

namespace A308265.P2879646645117684334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A308265.P2879646645117684334

namespace A308265

/-- `Δ[A348919(n)]+∑[round(n²/12)]` -/
def P2879646645117684334.Spec : Prop :=
  ∀ n, P2879646645117684334.a n = A308265 (n + 1)

end A308265

/-! ## A308265.P16766617379830690823

`A308266(n+1)+∑[round(n²/12)]`
-/

namespace A308265.P16766617379830690823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308266 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308265.P16766617379830690823

namespace A308265

/-- `A308266(n+1)+∑[round(n²/12)]` -/
def P16766617379830690823.Spec : Prop :=
  ∀ n, P16766617379830690823.a n = A308265 (n + 1)

end A308265

/-! ## A308265.P15256434610230684031

`A034828(n)-A200067(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A308265

/-- `A034828(n)-A200067(n)` -/
def P15256434610230684031.Spec : Prop :=
  ∀ n, P15256434610230684031.a n = A308265 (n + 1)

theorem P15256434610230684031.correct : P15256434610230684031.Spec := by
  intro n
  simp only [A308265, Nat.add_sub_cancel]

end A308265

/-! ## A308265.P16140511724495636061

`A181120(n)+Δ[A348919(n)]`
-/

namespace A308265.P16140511724495636061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + (f1 (n + 1) - f1 n)

end

end A308265.P16140511724495636061

namespace A308265

/-- `A181120(n)+Δ[A348919(n)]` -/
def P16140511724495636061.Spec : Prop :=
  ∀ n, P16140511724495636061.a n = A308265 (n + 1)

end A308265

/-! ## A308265.P3450362614386984128

`A008763(n)+∑[∑[A087509(n)]]`
-/

namespace A308265.P3450362614386984128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308265.P3450362614386984128

namespace A308265

/-- `A008763(n)+∑[∑[A087509(n)]]` -/
def P3450362614386984128.Spec : Prop :=
  ∀ n, P3450362614386984128.a n = A308265 (n + 1)

end A308265

/-! ## A308265.P10552061820909579152

`A309694(n+1)+A309692(n+1)`
-/

namespace A308265.P10552061820909579152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309694 (n + 1) + A309692 (n + 1)

end

end A308265.P10552061820909579152

namespace A308265

/-- `A309694(n+1)+A309692(n+1)` -/
def P10552061820909579152.Spec : Prop :=
  ∀ n, P10552061820909579152.a n = A308265 (n + 1)

end A308265

/-!
# A308266: Sum of the middle parts in the partitions of n into 3 parts.

The programs for A308266, the canonical program `A308266.P10772136884896414716` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308266 has offset 1).

The definition of A308266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308266.P10772136884896414716

`ogf((x^2+x^3+x^4+x^5+x^6)/(1-2x^2-2x^3+x^4+4x^5+x^6-2x^7-2x^8+x^10))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A308266

/-- `ogf((x^2+x^3+x^4+x^5+x^6)/(1-2x^2-2x^3+x^4+4x^5+x^6-2x^7-2x^8+x^10))` -/
def P10772136884896414716.Spec : Prop :=
  ∀ n, P10772136884896414716.a n = A308266 (n + 1)

theorem P10772136884896414716.correct : P10772136884896414716.Spec := by
  intro n
  simp only [A308266, Nat.add_sub_cancel]

end A308266

/-! ## A308266.P502407845118833202

`A307872(1+n)+A008763(n)`
-/

namespace A308266.P502407845118833202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (1 + n) + A008763 n

end

end A308266.P502407845118833202

namespace A308266

/-- `A307872(1+n)+A008763(n)` -/
def P502407845118833202.Spec : Prop :=
  ∀ n, P502407845118833202.a n = A308266 (n + 1)

end A308266

/-! ## A308266.P5364459605320537443

`∑[∑[A186101(n)]-A001318(n)]`
-/

namespace A308266.P5364459605320537443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308266.P5364459605320537443

namespace A308266

/-- `∑[∑[A186101(n)]-A001318(n)]` -/
def P5364459605320537443.Spec : Prop :=
  ∀ n, P5364459605320537443.a n = A308266 (n + 1)

end A308266

/-! ## A308266.P7622955452878001431

`∑[∑[A186101(n)-A026741(n)]]`
-/

namespace A308266.P7622955452878001431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n - A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308266.P7622955452878001431

namespace A308266

/-- `∑[∑[A186101(n)-A026741(n)]]` -/
def P7622955452878001431.Spec : Prop :=
  ∀ n, P7622955452878001431.a n = A308266 (n + 1)

end A308266

/-! ## A308266.P6981850341100151271

`∑[A101881(n)-A101882(n+1)]`
-/

namespace A308266.P6981850341100151271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n - A101882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308266.P6981850341100151271

namespace A308266

/-- `∑[A101881(n)-A101882(n+1)]` -/
def P6981850341100151271.Spec : Prop :=
  ∀ n, P6981850341100151271.a n = A308266 (n + 1)

end A308266

/-! ## A308266.P8432804924262656150

`Δ[A348919(n)]`
-/

namespace A308266.P8432804924262656150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308266.P8432804924262656150

namespace A308266

/-- `Δ[A348919(n)]` -/
def P8432804924262656150.Spec : Prop :=
  ∀ n, P8432804924262656150.a n = A308266 (n + 1)

end A308266

/-! ## A308266.P10135992775328670617

`A348919(n+1)-A348919(n)`
-/

namespace A308266.P10135992775328670617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348919 (n + 1) - A348919 n

end

end A308266.P10135992775328670617

namespace A308266

/-- `A348919(n+1)-A348919(n)` -/
def P10135992775328670617.Spec : Prop :=
  ∀ n, P10135992775328670617.a n = A308266 (n + 1)

end A308266

/-! ## A308266.P13853489907252699750

`A309690(n+1)+A309688(n+1)`
-/

namespace A308266.P13853489907252699750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309690 (n + 1) + A309688 (n + 1)

end

end A308266.P13853489907252699750

namespace A308266

/-- `A309690(n+1)+A309688(n+1)` -/
def P13853489907252699750.Spec : Prop :=
  ∀ n, P13853489907252699750.a n = A308266 (n + 1)

end A308266

/-! ## A308266.P5088646357921804943

`A309690(2*(n+1))/4`
-/

namespace A308266.P5088646357921804943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309690 (2 * (n + 1)) : ℚ) / 4

end

end A308266.P5088646357921804943

namespace A308266

/-- `A309690(2*(n+1))/4` -/
def P5088646357921804943.Spec : Prop :=
  ∀ n, P5088646357921804943.a n = (A308266 (n + 1) : ℚ)

end A308266

/-! ## A308266.P4061745002982721178

`A308265(n+1)-round(n*(2*n²+3*n-6)/72)`
-/

namespace A308266.P4061745002982721178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308265 (n + 1) - SequenceMachineLib.roundAway (((n : ℤ) * ((2 * n ^ 2 + 3 * n : ℤ) - 6) : ℚ) / 72)

end

end A308266.P4061745002982721178

namespace A308266

/-- `A308265(n+1)-round(n*(2*n²+3*n-6)/72)` -/
def P4061745002982721178.Spec : Prop :=
  ∀ n, P4061745002982721178.a n = A308266 (n + 1)

end A308266

/-!
# A308267: Numbers k such that k divides A048678(k).

The programs for A308267, there is no canonical definition to state claims against.
-/

/-! ## A308267.P16038045911050999266

`record[gcd(A008574(n), A048678(n))]`
-/

namespace A308267.P16038045911050999266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008574 n) (A048678 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308267.P16038045911050999266

/-! ## A308267.P10435214675524183580

`record[gcd(A008586(n+1), A048678(n+1))]`
-/

namespace A308267.P10435214675524183580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008586 (n + 1)) (A048678 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308267.P10435214675524183580

/-! ## A308267.P11519189884946668721

`record[gcd(n+1, A124108(2*(n+1)))]`
-/

namespace A308267.P11519189884946668721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A124108 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308267.P11519189884946668721

/-! ## A308267.P14440684478758690124

`record[gcd(n, A048678(A004277(n)))]`
-/

namespace A308267.P14440684478758690124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A048678 (A004277 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308267.P14440684478758690124

/-! ## A308267.P17613810793104245930

`record[gcd(A003602(n+1), A048678(n+2))]`
-/

namespace A308267.P17613810793104245930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003602 (n + 1)) (A048678 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308267.P17613810793104245930

/-!
# A308269: Primes p such that 2*p^2 + 2*p - 9 is prime.

The programs for A308269, there is no canonical definition to state claims against.
-/

/-! ## A308269.P12028933007271239009

`A322394(A263939(2*(n+2))+A062850(n+1))`
-/

namespace A308269.P12028933007271239009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322394 (A263939 (2 * (n + 2)) + A062850 (n + 1)).toNat

end

end A308269.P12028933007271239009

/-! ## A308269.P11583604072223275943

`A384735(C(n+3, 3))`
-/

namespace A308269.P11583604072223275943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384735 (Nat.choose (n + 3) 3)

end

end A308269.P11583604072223275943

/-!
# A308271: G.f. A(x) satisfies: A(x) = (1/(1 - x)) * A(x^2)*A(x^3)*A(x^5)* ... *A(x^prime(k))* ...

The programs for A308271, there is no canonical definition to state claims against.
-/

/-! ## A308271.P9436862920912590605

`A356841(A238864(n))+1`
-/

namespace A308271.P9436862920912590605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356841 (A238864 n).toNat + 1

end

end A308271.P9436862920912590605

/-! ## A308271.P7177071161027054288

`A000196(A001609(n+1)*A317256(n))`
-/

namespace A308271.P7177071161027054288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001609 (n + 1) * A317256 n).toNat

end

end A308271.P7177071161027054288

/-! ## A308271.P5211947078632810528

`A325389(A319454(n))`
-/

namespace A308271.P5211947078632810528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (A319454 n).toNat

end

end A308271.P5211947078632810528

/-! ## A308271.P16241072296854401744

`A325389(A358909(n))`
-/

namespace A308271.P16241072296854401744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (A358909 n).toNat

end

end A308271.P16241072296854401744

/-! ## A308271.P6512275858248373618

`A167520(A055771(n+1))`
-/

namespace A308271.P6512275858248373618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 (A055771 (n + 1)).toNat

end

end A308271.P6512275858248373618

/-!
# A308272: G.f. A(x) satisfies: A(x) = (1 + x) * A(x^2)*A(x^3)*A(x^5)* ... *A(x^prime(k))* ...

The programs for A308272, there is no canonical definition to state claims against.
-/

/-! ## A308272.P16746864853194189615

`A056926(∑[A321378(2*n)]²)`
-/

namespace A308272.P16746864853194189615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321378 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A308272.P16746864853194189615

/-! ## A308272.P18220999540026728108

`∑[A321378(2*n)]%A087146(n+3)`
-/

namespace A308272.P18220999540026728108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321378 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A087146 (n + 3))

end

end A308272.P18220999540026728108

/-! ## A308272.P8661674288068922903

`∑[A321378(2*n)]%A046255(A000124(n))`
-/

namespace A308272.P8661674288068922903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321378 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A046255 (A000124 n).toNat)

end

end A308272.P8661674288068922903

/-! ## A308272.P1087938858569845010

`A014963(A330191(n+1))*∑[A321378(2*n)]`
-/

namespace A308272.P1087938858569845010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321378 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A330191 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308272.P1087938858569845010

/-!
# A308273: Number of lattice paths from (0,0) to (n,n) that do not go above the diagonal x=y and consist of steps (h,v) with h, v prime or one.

The programs for A308273, there is no canonical definition to state claims against.
-/

/-! ## A308273.P3624767075746014308

`A195980(n)+A059995(A308274(n))`
-/

namespace A308273.P3624767075746014308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195980 n + A059995 (A308274 n).toNat

end

end A308273.P3624767075746014308

/-! ## A308273.P8882760478717593456

`A059995(A308274(n))+or(A100196(A112532(n)), A338707(n+1))`
-/

namespace A308273.P8882760478717593456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A308274 n).toNat + Int.lor (A100196 (A112532 n).toNat) (A338707 (n + 1))

end

end A308273.P8882760478717593456

/-! ## A308273.P6658751847015880064

`A243283(A034742(n+1)+A000228(n+1))+A059995(A308274(n))`
-/

namespace A308273.P6658751847015880064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A034742 (n + 1) + A000228 (n + 1)).toNat + A059995 (A308274 n).toNat

end

end A308273.P6658751847015880064

/-! ## A308273.P15596126157443057326

`A023190(A161634(n))`
-/

namespace A308273.P15596126157443057326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A161634 n).toNat

end

end A308273.P15596126157443057326

/-!
# A308274: Total number of nodes summed over all lattice paths from (0,0) to (n,n) that do not go above the diagonal x=y and consist of steps (h,v) with h, v prime or one.

The programs for A308274, there is no canonical definition to state claims against.
-/

/-! ## A308274.P15787788542656421734

`∑[A248227(∑[A114487(n+1)])]`
-/

namespace A308274.P15787788542656421734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114487 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308274.P15787788542656421734

/-! ## A308274.P1304651543827120782

`∑[A077766(xor(n+1, A220360(n+1))+1)]`
-/

namespace A308274.P1304651543827120782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (Int.xor (n + 1 : ℤ) (A220360 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308274.P1304651543827120782

/-!
# A308275: Sum of the perimeters of the integer-sided triangles with perimeter n whose sides lengths are square numbers.

The programs for A308275, there is no canonical definition to state claims against.
-/

/-! ## A308275.P4883794475539547956

`(n+1)*A308064(n+1)`
-/

namespace A308275.P4883794475539547956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308064 (n + 1)

end

end A308275.P4883794475539547956

/-! ## A308275.P4370947925880535957

`A308276(n+1)+A308278(n+1)+A308277(n+1)`
-/

namespace A308275.P4370947925880535957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308276 (n + 1) + (A308278 (n + 1) + A308277 (n + 1))

end

end A308275.P4370947925880535957

/-! ## A308275.P5807003327942611378

`A000720(A000040(n+1)^A308064(n+1))`
-/

namespace A308275.P5807003327942611378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (A308064 (n + 1) : ℤ))).toNat

end

end A308275.P5807003327942611378

/-! ## A308275.P3712424100548654271

`A056239(A000040(n+1)^A308064(n+1))`
-/

namespace A308275.P3712424100548654271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (A308064 (n + 1) : ℤ))).toNat

end

end A308275.P3712424100548654271

/-! ## A308275.P13059702775158179076

`A061395(A000040(n+1)^A308064(n+1))`
-/

namespace A308275.P13059702775158179076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (A308064 (n + 1) : ℤ))).toNat

end

end A308275.P13059702775158179076

/-! ## A308275.P16381051324892401694

`A056239(C(A000040(n+1), A308064(n+1)))`
-/

namespace A308275.P16381051324892401694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Nat.choose (A000040 (n + 1)).toNat (A308064 (n + 1)).toNat)

end

end A308275.P16381051324892401694

/-! ## A308275.P10104408594447149448

`A131209(n*A308064(n+1))`
-/

namespace A308275.P10104408594447149448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 ((n : ℤ) * A308064 (n + 1)).toNat

end

end A308275.P10104408594447149448

/-! ## A308275.P2003252851698663556

`A131209(lcm(n, A308064(n+1)))`
-/

namespace A308275.P2003252851698663556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (Int.lcm (n : ℤ) (A308064 (n + 1)))

end

end A308275.P2003252851698663556

/-!
# A308276: Sum of the smallest side lengths of all integer-sided triangles with perimeter n whose sides are square numbers.

The programs for A308276, there is no canonical definition to state claims against.
-/

/-! ## A308276.P7172030765483797275

`A308275(n+1)-(A308278(n+1)+A308277(n+1))`
-/

namespace A308276.P7172030765483797275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308275 (n + 1) - (A308278 (n + 1) + A308277 (n + 1))

end

end A308276.P7172030765483797275

/-! ## A308276.P17256762458579814644

`and(A014681(A014741(n+1)), A308275(n+1))`
-/

namespace A308276.P17256762458579814644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014681 (A014741 (n + 1)).toNat) (A308275 (n + 1))

end

end A308276.P17256762458579814644

/-! ## A308276.P2495455268930656031

`and((n+1)*A308064(n+1), A014681(A014741(n+1)))`
-/

namespace A308276.P2495455268930656031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1 : ℤ) * A308064 (n + 1)) (A014681 (A014741 (n + 1)).toNat)

end

end A308276.P2495455268930656031

/-! ## A308276.P8751782889667756314

`and((n+1)%(A308278(n+1)+n+1), A014681(A014741(n+1)))`
-/

namespace A308276.P8751782889667756314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (n + 1 : ℤ) (A308278 (n + 1) + (n + 1 : ℤ))) (A014681 (A014741 (n + 1)).toNat)

end

end A308276.P8751782889667756314

/-! ## A308276.P17841285762435134796

`A174204(n*A308064(n+1))²`
-/

namespace A308276.P17841285762435134796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174204 ((n : ℤ) * A308064 (n + 1)).toNat ^ 2

end

end A308276.P17841285762435134796

/-!
# A308277: Sum of the largest side lengths of all integer-sided triangles with perimeter n whose sides are square numbers.

The programs for A308277, there is no canonical definition to state claims against.
-/

/-! ## A308277.P14925828307238395724

`A308275(n+1)-(A308278(n+1)+A308276(n+1))`
-/

namespace A308277.P14925828307238395724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308275 (n + 1) - (A308278 (n + 1) + A308276 (n + 1))

end

end A308277.P14925828307238395724

/-! ## A308277.P8991023229445538126

`round(sqrt(A308048(n+1)*A308064(n+1)))²`
-/

namespace A308277.P8991023229445538126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A308048 (n + 1) * A308064 (n + 1) : ℝ)) ^ 2

end

end A308277.P8991023229445538126

/-! ## A308277.P5596249830920347692

`A053187(A308048(n+1)*A308064(n+1))`
-/

namespace A308277.P5596249830920347692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (A308048 (n + 1) * A308064 (n + 1)).toNat

end

end A308277.P5596249830920347692

/-! ## A308277.P7152018646947647027

`A053187(lcm(A308048(n+1), A308064(n+1)))`
-/

namespace A308277.P7152018646947647027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (Int.lcm (A308048 (n + 1)) (A308064 (n + 1)))

end

end A308277.P7152018646947647027

/-! ## A308277.P17810802257652287238

`A053187(and(-A308064(n+1), A308048(n+1)))`
-/

namespace A308277.P17810802257652287238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (Int.land (-A308064 (n + 1)) (A308048 (n + 1))).toNat

end

end A308277.P17810802257652287238

/-! ## A308277.P5957503415357732102

`A262352((2*A308275(n+1))²)²`
-/

namespace A308277.P5957503415357732102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 ((2 * A308275 (n + 1)) ^ 2).toNat ^ 2

end

end A308277.P5957503415357732102

/-!
# A308278: Take all the integer-sided triangles with perimeter n and square number sides a, b, and c such that a <= b <= c. a(n) is the sum of all the b's.

The programs for A308278, there is no canonical definition to state claims against.
-/

/-! ## A308278.P3688183204580325650

`A308275(n+1)-(A308277(n+1)+A308276(n+1))`
-/

namespace A308278.P3688183204580325650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308275 (n + 1) - (A308277 (n + 1) + A308276 (n + 1))

end

end A308278.P3688183204580325650

/-!
# A308281: The third power of the unsigned Lah triangular matrix A105278.

The programs for A308281, there is no canonical definition to state claims against.
-/

/-! ## A308281.P6888987673718339235

`T(n-1,k-1)+3*(row(n)+col(n)+1)*T(n-1,k)` with `a(0)=1`
-/

namespace A308281.P6888987673718339235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + 3 * (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUp a n

end

end A308281.P6888987673718339235

/-! ## A308281.P6007445985082595939

`3^(C(comp[∑[n]]-n, 2)-(n+1))*A105278(n+1)`
-/

namespace A308281.P6007445985082595939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A105278 (n + 1) : ℚ)

end

end A308281.P6007445985082595939

/-! ## A308281.P10323931734583435850

`abs(3^(C(comp[∑[n]]-n, 2)-(n+1))*A008297(n+1))`
-/

namespace A308281.P10323931734583435850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A008297 (n + 1) : ℚ)|

end

end A308281.P10323931734583435850

/-! ## A308281.P3813419571812611679

`abs(A066667(n)*A140303(n))`
-/

namespace A308281.P3813419571812611679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066667 n * A140303 n|

end

end A308281.P3813419571812611679

/-! ## A308281.P7475468808931840144

`A027465(n)*A173333(n+1)`
-/

namespace A308281.P7475468808931840144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A173333 (n + 1)

end

end A308281.P7475468808931840144

/-!
# A308282: The fifth power of the unsigned Lah triangular matrix A105278.

The programs for A308282, there is no canonical definition to state claims against.
-/

/-! ## A308282.P7614422180227863833

`A038243(n)*A173333(n+1)`
-/

namespace A308282.P7614422180227863833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A173333 (n + 1)

end

end A308282.P7614422180227863833

/-! ## A308282.P5294126898632598081

`A038243(n)*A094587(A080036(n))`
-/

namespace A308282.P5294126898632598081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A094587 (A080036 n).toNat

end

end A308282.P5294126898632598081

/-! ## A308282.P15216239375148457358

`abs(A000351(A025581(n))*A066667(n))`
-/

namespace A308282.P15216239375148457358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 (A025581 n).toNat * A066667 n|

end

end A308282.P15216239375148457358

/-! ## A308282.P10896088944969475411

`abs(A066667(n))*A003961(A140303(n))`
-/

namespace A308282.P10896088944969475411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066667 n| * A003961 (A140303 n).toNat

end

end A308282.P10896088944969475411

/-! ## A308282.P12154484690473807912

`A000351(A025581(n))*A105278(n+1)`
-/

namespace A308282.P12154484690473807912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A105278 (n + 1)

end

end A308282.P12154484690473807912

/-!
# A308283: G.f. A(x) satisfies: A(x) = (1/(1 - x)) * A(x^3)*A(x^5)*A(x^7)* ... *A(x^(2*k-1))* ...

The programs for A308283, there is no canonical definition to state claims against.
-/

/-! ## A308283.P7855799412499522976

`A325368(A000009(n)%A200775(n+1))`
-/

namespace A308283.P7855799412499522976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (Int.tmod (A000009 n) (A200775 (n + 1))).toNat

end

end A308283.P7855799412499522976

/-! ## A308283.P14186893603968075694

`A325368(A000009(n))%A265774(n+1)`
-/

namespace A308283.P14186893603968075694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325368 (A000009 n).toNat) (A265774 (n + 1))

end

end A308283.P14186893603968075694

/-! ## A308283.P18103844537811614437

`A325368(Δ[A077342(n+1)]*A000009(n))`
-/

namespace A308283.P18103844537811614437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 ((f1 (n + 1) - f1 n) * A000009 n).toNat

end

end A308283.P18103844537811614437

/-! ## A308283.P5193252177086266349

`A000265(A011782(n))*A325368(A000009(n))`
-/

namespace A308283.P5193252177086266349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A011782 n).toNat * A325368 (A000009 n).toNat

end

end A308283.P5193252177086266349

/-! ## A308283.P7795111502720410352

`A325368(lcm(A000009(n), A303912(n)))`
-/

namespace A308283.P7795111502720410352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (Int.lcm (A000009 n) (A303912 n))

end

end A308283.P7795111502720410352

/-!
# A308285: Coefficients in q-expansion of E_2^6, where E_2 is the Eisenstein series A006352.

The programs for A308285, there is no canonical definition to state claims against.
-/

/-! ## A308285.P17024309922790849218

`∑{#}[n, A282018(#)*A282018(n-#)]`
-/

namespace A308285.P17024309922790849218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A282018 k * A282018 (n - k)

end

end A308285.P17024309922790849218

/-!
# A308286: Expansion of Product_{i>=1, j>=1} theta_3(x^(i*j)), where theta_3() is the Jacobi theta function.

The programs for A308286, there is no canonical definition to state claims against.
-/

/-! ## A308286.P3897311257518987455

`record[gcd(A121153(3*n+1), A349693(n+3))]`
-/

namespace A308286.P3897311257518987455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121153 (3 * n + 1)) (A349693 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308286.P3897311257518987455

/-! ## A308286.P7125530242463907069

`record[∏{e}[A092582(A000120(n)+1+n), #+1]]`
-/

namespace A308286.P7125530242463907069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092582 (A000120 n + 1 + (n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308286.P7125530242463907069

/-! ## A308286.P4008795640201413350

`A000016(n)*A374124(A215724(n+2))`
-/

namespace A308286.P4008795640201413350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n * A374124 (A215724 (n + 2)).toNat

end

end A308286.P4008795640201413350

/-! ## A308286.P12348574568282509713

`(A010054(n)+n)*A048766(A081294(n))`
-/

namespace A308286.P12348574568282509713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010054 n + (n : ℤ)) * A048766 (A081294 n).toNat

end

end A308286.P12348574568282509713

/-!
# A308288: Expansion of Product_{i>=1, j>=1} theta_3(x^(i*j))/theta_4(x^(i*j)), where theta_() is the Jacobi theta function.

The programs for A308288, there is no canonical definition to state claims against.
-/

/-! ## A308288.P10362290237702531114

`A228354(A196087(n+1)+floor(2/acot(n)))`
-/

namespace A308288.P10362290237702531114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A196087 (n + 1) + ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A308288.P10362290237702531114

/-! ## A308288.P7742623477017766959

`A324105(A048143(n))+A056589(n)`
-/

namespace A308288.P7742623477017766959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A048143 n).toNat + A056589 n

end

end A308288.P7742623477017766959

/-!
# A308289: Lexicographically earliest sequence of distinct nonprimes such that a(n) + a(n+1) is prime.

The programs for A308289, there is no canonical definition to state claims against.
-/

/-! ## A308289.P15967221299853802388

`A075570(A028310(n))%A002148(n)`
-/

namespace A308289.P15967221299853802388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075570 (A028310 n).toNat) (A002148 n)

end

end A308289.P15967221299853802388

/-! ## A308289.P5335161556684946755

`A075570(A028310(n))^(1-A000007(n))`
-/

namespace A308289.P5335161556684946755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075570 (A028310 n).toNat : ℚ) ^ (1 - A000007 n : ℤ)

end

end A308289.P5335161556684946755

/-! ## A308289.P2098146984028500625

`∏{p}[A008578(n+1), A075570(A000720(#))]`
-/

namespace A308289.P2098146984028500625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A075570 (A000720 p).toNat

end

end A308289.P2098146984028500625

/-! ## A308289.P16035623037565492358

`A075570(A028310(n))^A019425(A019425(n))`
-/

namespace A308289.P16035623037565492358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075570 (A028310 n).toNat : ℚ) ^ (A019425 (A019425 n).toNat : ℤ)

end

end A308289.P16035623037565492358

/-! ## A308289.P9824147912069971277

`A075570(A028310(n))^A001222(A008578(n+1))`
-/

namespace A308289.P9824147912069971277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075570 (A028310 n).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A308289.P9824147912069971277

/-! ## A308289.P12300490512444633631

`A075570(A028310(n))^A002262(A000124(n))`
-/

namespace A308289.P12300490512444633631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075570 (A028310 n).toNat : ℚ) ^ (A002262 (A000124 n).toNat : ℤ)

end

end A308289.P12300490512444633631

/-!
# A308292: A(n,k) = Sum_{i_1=0..n} Sum_{i_2=0..n} ... Sum_{i_k=0..n} multinomial(i_1 + i_2 + ... + i_k; i_1, i_2, ..., i_k), square array A(n,k) read by antidiagonals, for n >= 0, k >= 0.

The programs for A308292, there is no canonical definition to state claims against.
-/

/-! ## A308292.P9402038075456832703

`A032559(A125860(n))%23`
-/

namespace A308292.P9402038075456832703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032559 (A125860 n).toNat) 23

end

end A308292.P9402038075456832703

/-! ## A308292.P12781544807874270991

`and(23, A305257(A241579(n)))`
-/

namespace A308292.P12781544807874270991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 23 (A305257 (A241579 n).toNat)

end

end A308292.P12781544807874270991

/-! ## A308292.P10161766257576403602

`A094525(n)+A035062(A262809(n))`
-/

namespace A308292.P10161766257576403602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 n + A035062 (A262809 n).toNat

end

end A308292.P10161766257576403602

/-! ## A308292.P12714649402415597044

`A335376(A262809(n)+A226545(n))`
-/

namespace A308292.P12714649402415597044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335376 (A262809 n + A226545 n).toNat

end

end A308292.P12714649402415597044

/-!
# A308293: Lexicographically earliest sequence of positive terms such that a(1) = 1, a(2) = 2, and for any n > 0, (abs(a(n+2)-a(n)), abs(a(n+2)-a(n+1))) is unique.

The programs for A308293, there is no canonical definition to state claims against.
-/

/-! ## A308293.P13138431327555228114

`A004736(A000120(∑[A221944(n)]))`
-/

namespace A308293.P13138431327555228114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A308293.P13138431327555228114

/-! ## A308293.P3379062229256665435

`A187447(A046691(n+3)-A333219(n+1))`
-/

namespace A308293.P3379062229256665435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187447 (A046691 (n + 3) - A333219 (n + 1)).toNat

end

end A308293.P3379062229256665435

/-! ## A308293.P10694546883532933859

`gcd(A110141(A250120(n)), A325367(3*n+5))`
-/

namespace A308293.P10694546883532933859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110141 (A250120 n).toNat) (A325367 (3 * n + 5))

end

end A308293.P10694546883532933859

/-! ## A308293.P5261334281421832734

`A055874(A209658(n+1)+A024153(3*n+4))`
-/

namespace A308293.P5261334281421832734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A209658 (n + 1) + A024153 (3 * n + 4)).toNat

end

end A308293.P5261334281421832734

/-! ## A308293.P2073540125784643824

`gcd(A320136(3*(n+1)), A377287(A033948(2*(n+2))))`
-/

namespace A308293.P2073540125784643824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A320136 (3 * (n + 1))) (A377287 (A033948 (2 * (n + 2))).toNat)

end

end A308293.P2073540125784643824

/-!
# A308294: a(n) = Sum_{i_1=0..3} Sum_{i_2=0..3} ... Sum_{i_n=0..3} multinomial(i_1+i_2+...+i_n; i_1, i_2, ... , i_n).

The programs for A308294, there is no canonical definition to state claims against.
-/

/-! ## A308294.P16073832592533219570

`A308292(∑[n+3]+6)`
-/

namespace A308294.P16073832592533219570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A308294.P16073832592533219570

/-!
# A308295: a(n) = Sum_{i_1=0..4} Sum_{i_2=0..4} ... Sum_{i_n=0..4} multinomial(i_1 + i_2 + ... + i_n; i_1, i_2, ..., i_n).

The programs for A308295, there is no canonical definition to state claims against.
-/

/-! ## A308295.P17122841807387357869

`A308292(eq[4, A002262(n)])`
-/

namespace A308295.P17122841807387357869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308295.P17122841807387357869

/-! ## A308295.P4871772487421702304

`record[A308292(A167499(n)-1)]`
-/

namespace A308295.P4871772487421702304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308295.P4871772487421702304

/-! ## A308295.P1603147959595995207

`A308292(∑[A020705(n)]+10)`
-/

namespace A308295.P1603147959595995207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A308295.P1603147959595995207

/-! ## A308295.P8851283628472164810

`A308292(A027379(n+2)+7)`
-/

namespace A308295.P8851283628472164810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (A027379 (n + 2) + 7).toNat

end

end A308295.P8851283628472164810

/-! ## A308295.P16889826114761097349

`A308292(A046691(n+2)+8)`
-/

namespace A308295.P16889826114761097349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308292 (A046691 (n + 2) + 8).toNat

end

end A308295.P16889826114761097349

/-!
# A308296: a(n) = (1/n!) * Sum_{i_1=1..n} Sum_{i_2=1..n} ... Sum_{i_n=1..n} multinomial(i_1+i_2+...+i_n; i_1, i_2, ... , i_n).

The programs for A308296, there is no canonical definition to state claims against.
-/

/-! ## A308296.P8174949002686487673

`A144510(2*A253909(n))`
-/

namespace A308296.P8174949002686487673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (2 * A253909 n).toNat

end

end A308296.P8174949002686487673

/-! ## A308296.P16155460552372932031

`A144512(2*n²)`
-/

namespace A308296.P16155460552372932031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144512 (2 * n ^ 2)

end

end A308296.P16155460552372932031

/-!
# A308298: Expansion of Sum_{k>=1} mu(k)*log(1 + Sum_{j>=1} x^(prime(j)*k))/k.

The programs for A308298, there is no canonical definition to state claims against.
-/

/-! ## A308298.P9821083106258123260

`∑{d}[n+1, A154955(#)*A328777((n+1)/#)]`
-/

namespace A308298.P9821083106258123260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A328777 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308298.P9821083106258123260

/-! ## A308298.P7918144867451986800

`A328777(n+1)-A328777(A152271(n))`
-/

namespace A308298.P7918144867451986800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328777 (n + 1) - A328777 (A152271 n).toNat

end

end A308298.P7918144867451986800

/-! ## A308298.P12550369414920109171

`A111405(A097986(3*n+1)+A041457(n))`
-/

namespace A308298.P12550369414920109171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111405 (A097986 (3 * n + 1) + A041457 n).toNat

end

end A308298.P12550369414920109171

/-! ## A308298.P9791300355784061292

`A348127(n+1)+A285006(A210971(2*n+5))`
-/

namespace A308298.P9791300355784061292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348127 (n + 1) + A285006 (A210971 (2 * n + 5)).toNat

end

end A308298.P9791300355784061292

/-! ## A308298.P10423085346263509834

`C(n, ∏{e}[n+1, n*#])-A294079(A300354(n))`
-/

namespace A308298.P10423085346263509834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), n * Nat.factorization (f1 n) p) : ℤ) - A294079 (A300354 n).toNat

end

end A308298.P10423085346263509834

/-!
# A308299: Numbers whose prime indices are factorial numbers.

The programs for A308299, there is no canonical definition to state claims against.
-/

/-! ## A308299.P3065503104685651746

`∩[A068095(n+1), A356955(n+1)]`
-/

namespace A308299.P3065503104685651746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308299.P3065503104685651746

/-! ## A308299.P399033283680736020

`∩[A068095(n+1), A358849(n+1)]`
-/

namespace A308299.P399033283680736020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308299.P399033283680736020

