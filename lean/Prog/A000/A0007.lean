import SequenceMachineLib
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
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

/-!
# A000700: Expansion of Product_{k>=0} (1 + x^(2k+1)); number of partitions of n into distinct odd parts; number of self-conjugate partitions; number of symmetric Ferrers graphs with n nodes.

The programs for A000700, there is no canonical definition to state claims against.
-/

/-! ## A000700.P9303138369398119661

`A046682(n)-A000701(n)`
-/

namespace A000700.P9303138369398119661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n - A000701 n

end

end A000700.P9303138369398119661

/-! ## A000700.P16591392235518250242

`abs(A081362(n))`
-/

namespace A000700.P16591392235518250242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081362 n|

end

end A000700.P16591392235518250242

/-! ## A000700.P8665174426572623630

`abs(2-∑[abs(A298596(n))])`
-/

namespace A000700.P8665174426572623630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A298596 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A000700.P8665174426572623630

/-! ## A000700.P17270153749228123358

`A000009(n)-A331848(n)`
-/

namespace A000700.P17270153749228123358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A331848 n

end

end A000700.P17270153749228123358

/-! ## A000700.P17358898388145281476

`A033999(n)*A081362(n)`
-/

namespace A000700.P17358898388145281476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A081362 n

end

end A000700.P17358898388145281476

/-! ## A000700.P17026183559621321717

`gcd(A000038(n), A081362(n))`
-/

namespace A000700.P17026183559621321717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081362 n)

end

end A000700.P17026183559621321717

/-! ## A000700.P17833835030675523328

`lcm(A020985(n), A081362(n))`
-/

namespace A000700.P17833835030675523328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A081362 n)

end

end A000700.P17833835030675523328

/-! ## A000700.P14164756599896045384

`A357457(n)+A135528(n+1)`
-/

namespace A000700.P14164756599896045384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357457 n + A135528 (n + 1)

end

end A000700.P14164756599896045384

/-! ## A000700.P7475400700199730821

`A000009(n)+A357457(n)-A357456(n)`
-/

namespace A000700.P7475400700199730821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A357457 n - A357456 n)

end

end A000700.P7475400700199730821

/-! ## A000700.P15107907759153517094

`(A000035(n+1)-A000035(n))*A081362(n)`
-/

namespace A000700.P15107907759153517094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A081362 n

end

end A000700.P15107907759153517094

/-! ## A000700.P10456006623060445212

`abs(A027187(n)-A027193(n))`
-/

namespace A000700.P10456006623060445212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027187 n - A027193 n|

end

end A000700.P10456006623060445212

/-! ## A000700.P7826817668572561222

`A000041(n)-A330644(n)`
-/

namespace A000700.P7826817668572561222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A330644 n

end

end A000700.P7826817668572561222

/-! ## A000700.P11794485503417518138

`A000041(n)-2*A000701(n)`
-/

namespace A000700.P11794485503417518138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 2 * A000701 n

end

end A000700.P11794485503417518138

/-! ## A000700.P6380217834562196828

`2*A046682(n)-A000041(n)`
-/

namespace A000700.P6380217834562196828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046682 n - A000041 n

end

end A000700.P6380217834562196828

/-! ## A000700.P12990789591758943140

`A057077(A004277(n))*A081362(n)`
-/

namespace A000700.P12990789591758943140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A004277 n).toNat * A081362 n

end

end A000700.P12990789591758943140

/-! ## A000700.P17338801570909001269

`A057077(A005408(n))*A081362(n)`
-/

namespace A000700.P17338801570909001269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A005408 n).toNat * A081362 n

end

end A000700.P17338801570909001269

/-! ## A000700.P7974960833143414486

`A057077(A302025(2*(n+2)))*A081362(n)`
-/

namespace A000700.P7974960833143414486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A302025 (2 * (n + 2))).toNat * A081362 n

end

end A000700.P7974960833143414486

/-! ## A000700.P5507151430975910332

`abs(A320835(A008578(n+1)))`
-/

namespace A000700.P5507151430975910332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320835 (A008578 (n + 1)).toNat|

end

end A000700.P5507151430975910332

/-! ## A000700.P655741728347896124

`abs(A320835(record[A006530(n+1)]))`
-/

namespace A000700.P655741728347896124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320835 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A000700.P655741728347896124

/-! ## A000700.P10238969241216556249

`A027359(A179865(n+1))`
-/

namespace A000700.P10238969241216556249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027359 (A179865 (n + 1)).toNat

end

end A000700.P10238969241216556249

/-!
# A000701: One half of number of non-self-conjugate partitions; also half of number of asymmetric Ferrers graphs with n nodes.

The programs for A000701, there is no canonical definition to state claims against.
-/

/-! ## A000701.P8376796771142485357

`A046682(n)-A000700(n)`
-/

namespace A000701.P8376796771142485357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n - A000700 n

end

end A000701.P8376796771142485357

/-! ## A000701.P1086915045854292917

`A330644(n)/2`
-/

namespace A000701.P1086915045854292917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330644 n : ℚ) / 2

end

end A000701.P1086915045854292917

/-! ## A000701.P18168276418665010405

`A000041(n)-A046682(n)`
-/

namespace A000701.P18168276418665010405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A046682 n

end

end A000701.P18168276418665010405

/-! ## A000701.P3947333022377674655

`(A000041(n)-A000700(n))/2`
-/

namespace A000701.P3947333022377674655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n - A000700 n : ℚ) / 2

end

end A000701.P3947333022377674655

/-! ## A000701.P12225573003675023306

`A027187(n)+A027193(n)-A046682(n)`
-/

namespace A000701.P12225573003675023306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A046682 n)

end

end A000701.P12225573003675023306

/-! ## A000701.P3094288598511139584

`∑[A002865(n)]-A046682(n)`
-/

namespace A000701.P3094288598511139584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A046682 n

end

end A000701.P3094288598511139584

/-! ## A000701.P5027447890880877134

`(A331848(n)+A047967(n))/2`
-/

namespace A000701.P5027447890880877134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331848 n + A047967 n : ℚ) / 2

end

end A000701.P5027447890880877134

/-! ## A000701.P6282316057076506553

`A133041(n)-(A046682(n)+n)`
-/

namespace A000701.P6282316057076506553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A046682 n + (n : ℤ))

end

end A000701.P6282316057076506553

/-! ## A000701.P13758206896544810745

`(A000041(n)-abs(A081362(n)))/2`
-/

namespace A000701.P13758206896544810745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n - |A081362 n| : ℚ) / 2

end

end A000701.P13758206896544810745

/-! ## A000701.P10609005591512510402

`(∑[A002865(n)]-A000700(n))/2`
-/

namespace A000701.P10609005591512510402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A000700 n : ℤ) : ℚ) / 2

end

end A000701.P10609005591512510402

/-! ## A000701.P16184477991762418250

`A139582(n)/2-A046682(n)`
-/

namespace A000701.P16184477991762418250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A046682 n : ℚ)

end

end A000701.P16184477991762418250

/-! ## A000701.P10927008822978532296

`A035363(2*n)-A046682(n)`
-/

namespace A000701.P10927008822978532296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A046682 n

end

end A000701.P10927008822978532296

/-! ## A000701.P17527166821184103303

`(sqrt(A001255(n))-A000700(n))/2`
-/

namespace A000701.P17527166821184103303
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A001255 n : ℝ) - (A000700 n : ℝ)) / 2

end

end A000701.P17527166821184103303

/-! ## A000701.P7851180399821881056

`A238394(n)+A238395(n)-A046682(n)`
-/

namespace A000701.P7851180399821881056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238394 n + (A238395 n - A046682 n)

end

end A000701.P7851180399821881056

/-! ## A000701.P17018069436305007228

`(A194543(A000217(n))-A000700(n))/2`
-/

namespace A000701.P17018069436305007228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194543 (A000217 n).toNat - A000700 n : ℚ) / 2

end

end A000701.P17018069436305007228

/-!
# A000702: a(n) is the number of conjugacy classes in the alternating group A_n.

The programs for A000702, there is no canonical definition to state claims against.
-/

/-! ## A000702.P15543719589005580560

`A046682(n+1)+A000700(n+1)%A000041(n)`
-/

namespace A000702.P15543719589005580560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (n + 1) + Int.tmod (A000700 (n + 1)) (A000041 n)

end

end A000702.P15543719589005580560

/-! ## A000702.P5254576158228074636

`A242101(n+1)-A000701(n+1)`
-/

namespace A000702.P5254576158228074636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242101 (n + 1) - A000701 (n + 1)

end

end A000702.P5254576158228074636

/-! ## A000702.P15921626917094245906

`A046682(n+1)+A242101(n+1)-A000041(n+1)`
-/

namespace A000702.P15921626917094245906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (n + 1) + (A242101 (n + 1) - A000041 (n + 1))

end

end A000702.P15921626917094245906

/-! ## A000702.P4417329779049299760

`A000700(n+1)+A242101(n+1)-A046682(n+1)`
-/

namespace A000702.P4417329779049299760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1) + (A242101 (n + 1) - A046682 (n + 1))

end

end A000702.P4417329779049299760

/-! ## A000702.P7007179865142990608

`A000700(n+1)+A046682(n+1)%A000079(n)`
-/

namespace A000702.P7007179865142990608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1) + Int.tmod (A046682 (n + 1)) (A000079 n)

end

end A000702.P7007179865142990608

/-!
# A000703: Chromatic number (or Heawood number) of nonorientable surface with n crosscaps.

The programs for A000703, the canonical program `A000703.P6770051741631916341` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000703 has offset 0).

The definition of A000703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000703.P6770051741631916341

`floor((7+sqrt(1+24*n))/2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000703

/-- `floor((7+sqrt(1+24*n))/2)` -/
def P6770051741631916341.Spec : Prop :=
  ∀ n, P6770051741631916341.a n = A000703 n

theorem P6770051741631916341.correct : P6770051741631916341.Spec := by
  intro n
  simp only [A000703]

end A000703

/-! ## A000703.P18022322487160369475

`A186497(n+1)+3-n`
-/

namespace A000703.P18022322487160369475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186497 (n + 1) + (3 - (n : ℤ))

end

end A000703.P18022322487160369475

namespace A000703

/-- `A186497(n+1)+3-n` -/
def P18022322487160369475.Spec : Prop :=
  ∀ n, P18022322487160369475.a n = A000703 n

end A000703

/-! ## A000703.P1357426711485994922

`abs(comp[ceil(A211540(2*n+3)/2)]+1-n)`
-/

namespace A000703.P1357426711485994922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211540 (2 * n + 3) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)|

end

end A000703.P1357426711485994922

namespace A000703

/-- `abs(comp[ceil(A211540(2*n+3)/2)]+1-n)` -/
def P1357426711485994922.Spec : Prop :=
  ∀ n, P1357426711485994922.a n = A000703 n

end A000703

/-! ## A000703.P14293677726307946179

`A216256(Δ[n²])+3`
-/

namespace A000703.P14293677726307946179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A000703.P14293677726307946179

namespace A000703

/-- `A216256(Δ[n²])+3` -/
def P14293677726307946179.Spec : Prop :=
  ∀ n, P14293677726307946179.a n = A000703 n

end A000703

/-! ## A000703.P14083105556017391064

`A350361(3*n+1)`
-/

namespace A000703.P14083105556017391064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350361 (3 * n + 1)

end

end A000703.P14083105556017391064

namespace A000703

/-- `A350361(3*n+1)` -/
def P14083105556017391064.Spec : Prop :=
  ∀ n, P14083105556017391064.a n = A000703 n

end A000703

/-! ## A000703.P13493970072023654339

`A003056(3*n)+4`
-/

namespace A000703.P13493970072023654339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (3 * n) + 4

end

end A000703.P13493970072023654339

namespace A000703

/-- `A003056(3*n)+4` -/
def P13493970072023654339.Spec : Prop :=
  ∀ n, P13493970072023654339.a n = A000703 n

end A000703

/-! ## A000703.P5864888382518852426

`3*(A002024(3*n+1)/3+1)`
-/

namespace A000703.P5864888382518852426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A002024 (3 * n + 1) : ℚ) / 3 + 1)

end

end A000703.P5864888382518852426

namespace A000703

/-- `3*(A002024(3*n+1)/3+1)` -/
def P5864888382518852426.Spec : Prop :=
  ∀ n, P5864888382518852426.a n = (A000703 n : ℚ)

end A000703

/-! ## A000703.P3597917839620132112

`A003057(A016789(n))+2`
-/

namespace A000703.P3597917839620132112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A016789 n).toNat + 2

end

end A000703.P3597917839620132112

namespace A000703

/-- `A003057(A016789(n))+2` -/
def P3597917839620132112.Spec : Prop :=
  ∀ n, P3597917839620132112.a n = A000703 n

end A000703

/-! ## A000703.P11256409833162221157

`A020705(A003056(3*n))`
-/

namespace A000703.P11256409833162221157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A003056 (3 * n)).toNat

end

end A000703.P11256409833162221157

namespace A000703

/-- `A020705(A003056(3*n))` -/
def P11256409833162221157.Spec : Prop :=
  ∀ n, P11256409833162221157.a n = A000703 n

end A000703

/-! ## A000703.P13674641642542775109

`A028310(A002024(3*n+1)+3)`
-/

namespace A000703.P13674641642542775109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002024 (3 * n + 1) + 3).toNat

end

end A000703.P13674641642542775109

namespace A000703

/-- `A028310(A002024(3*n+1)+3)` -/
def P13674641642542775109.Spec : Prop :=
  ∀ n, P13674641642542775109.a n = A000703 n

end A000703

/-! ## A000703.P2997097718777332423

`A028310(A123578(3*n+1)+3)`
-/

namespace A000703.P2997097718777332423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A123578 (3 * n + 1) + 3).toNat

end

end A000703.P2997097718777332423

namespace A000703

/-- `A028310(A123578(3*n+1)+3)` -/
def P2997097718777332423.Spec : Prop :=
  ∀ n, P2997097718777332423.a n = A000703 n

end A000703

/-! ## A000703.P11049117214428735789

`A133196(A080036(2*n+1+n))`
-/

namespace A000703.P11049117214428735789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (A080036 (2 * n + 1 + n)).toNat

end

end A000703.P11049117214428735789

namespace A000703

/-- `A133196(A080036(2*n+1+n))` -/
def P11049117214428735789.Spec : Prop :=
  ∀ n, P11049117214428735789.a n = A000703 n

end A000703

/-! ## A000703.P14093714300233761560

`A133196(A181133(2*n+n+2))`
-/

namespace A000703.P14093714300233761560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (A181133 (2 * n + (n + 2))).toNat

end

end A000703.P14093714300233761560

namespace A000703

/-- `A133196(A181133(2*n+n+2))` -/
def P14093714300233761560.Spec : Prop :=
  ∀ n, P14093714300233761560.a n = A000703 n

end A000703

/-!
# A000704: Number of degree-n even permutations of order dividing 2.

The programs for A000704, the canonical program `A000704.P18194243516802683645` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000704 has offset 0).

The definition of A000704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000704.P18194243516802683645

`A048099(round(acot(n)+n))+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000704

/-- `A048099(round(acot(n)+n))+1` -/
def P18194243516802683645.Spec : Prop :=
  ∀ n, P18194243516802683645.a n = A000704 n

theorem P18194243516802683645.correct : P18194243516802683645.Spec := by
  intro n
  simp only [A000704]

end A000704

/-! ## A000704.P12874207416599096227

`A048099(round(sqrt(n²+1)))+1`
-/

namespace A000704.P12874207416599096227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048099 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A000704.P12874207416599096227

namespace A000704

/-- `A048099(round(sqrt(n²+1)))+1` -/
def P12874207416599096227.Spec : Prop :=
  ∀ n, P12874207416599096227.a n = A000704 n

end A000704

/-! ## A000704.P9102053010454007531

`∏[(n-1)/a(n-1)+1]-A001465(n)` with `a(0)=1`
-/

namespace A000704.P9102053010454007531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A001465 n : ℚ)

end

end A000704.P9102053010454007531

namespace A000704

/-- `∏[(n-1)/a(n-1)+1]-A001465(n)` -/
def P9102053010454007531.Spec : Prop :=
  ∀ n, P9102053010454007531.a n = (A000704 n : ℚ)

end A000704

/-! ## A000704.P14852378996430926228

`A000085(n)-A001465(n)`
-/

namespace A000704.P14852378996430926228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A001465 n

end

end A000704.P14852378996430926228

namespace A000704

/-- `A000085(n)-A001465(n)` -/
def P14852378996430926228.Spec : Prop :=
  ∀ n, P14852378996430926228.a n = A000704 n

end A000704

/-! ## A000704.P13331555814736146380

`A099020(∑[n])-A001465(n)`
-/

namespace A000704.P13331555814736146380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) - A001465 n

end

end A000704.P13331555814736146380

namespace A000704

/-- `A099020(∑[n])-A001465(n)` -/
def P13331555814736146380.Spec : Prop :=
  ∀ n, P13331555814736146380.a n = A000704 n

end A000704

/-! ## A000704.P17202083583991421385

`A293808(∑[A254667(n)])-A001465(n)`
-/

namespace A000704.P17202083583991421385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A001465 n

end

end A000704.P17202083583991421385

namespace A000704

/-- `A293808(∑[A254667(n)])-A001465(n)` -/
def P17202083583991421385.Spec : Prop :=
  ∀ n, P17202083583991421385.a n = A000704 n

end A000704

/-! ## A000704.P10474711268185746765

`A220699(n+3)-A193361(n+2)-A001465(n)`
-/

namespace A000704.P10474711268185746765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220699 (n + 3) - A193361 (n + 2) - A001465 n

end

end A000704.P10474711268185746765

namespace A000704

/-- `A220699(n+3)-A193361(n+2)-A001465(n)` -/
def P10474711268185746765.Spec : Prop :=
  ∀ n, P10474711268185746765.a n = A000704 n

end A000704

/-! ## A000704.P11569645080278066664

`Δ[A001465(n+1)]/(n+1)`
-/

namespace A000704.P11569645080278066664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001465 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A000704.P11569645080278066664

namespace A000704

/-- `Δ[A001465(n+1)]/(n+1)` -/
def P11569645080278066664.Spec : Prop :=
  ∀ n, P11569645080278066664.a n = (A000704 n : ℚ)

end A000704

/-! ## A000704.P4695020388896435751

`A008307(A133263(n))-A001465(n)`
-/

namespace A000704.P4695020388896435751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A133263 n).toNat - A001465 n

end

end A000704.P4695020388896435751

namespace A000704

/-- `A008307(A133263(n))-A001465(n)` -/
def P4695020388896435751.Spec : Prop :=
  ∀ n, P4695020388896435751.a n = A000704 n

end A000704

/-!
# A000705: n-th superior highly composite number A002201(n) is product of first n terms of this sequence.

The programs for A000705, there is no canonical definition to state claims against.
-/

/-! ## A000705.P642606395382409565

`A000007(n)+ratio[A002201(A028310(n))]`
-/

namespace A000705.P642606395382409565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A000705.P642606395382409565

/-! ## A000705.P3874249685225387412

`A151878(n)+ratio[A002201(A028310(n))]`
-/

namespace A000705.P3874249685225387412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151878 n : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A000705.P3874249685225387412

/-! ## A000705.P13818339882372260449

`ratio[A002201(A028310(n))]+A057428(n)+1`
-/

namespace A000705.P13818339882372260449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + (A057428 n + 1 : ℚ)

end

end A000705.P13818339882372260449

/-! ## A000705.P14368773263495534040

`ratio[A002201(A028310(n))]+1-A057427(n)`
-/

namespace A000705.P14368773263495534040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + (1 - A057427 n : ℚ)

end

end A000705.P14368773263495534040

/-! ## A000705.P11873053243707959954

`ratio[A002201(A028310(n))]+A095121(n)%2`
-/

namespace A000705.P11873053243707959954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + (Int.tmod (A095121 n) 2 : ℚ)

end

end A000705.P11873053243707959954

/-! ## A000705.P14275780509612587152

`A000007(n)+A002201(n+1)/A002201(A028310(n))`
-/

namespace A000705.P14275780509612587152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A002201 (n + 1) : ℚ) / (A002201 (A028310 n).toNat : ℚ)

end

end A000705.P14275780509612587152

/-! ## A000705.P293994365709308767

`A151878(n)+A002201(n+1)/A002201(A028310(n))`
-/

namespace A000705.P293994365709308767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151878 n : ℚ) + (A002201 (n + 1) : ℚ) / (A002201 (A028310 n).toNat : ℚ)

end

end A000705.P293994365709308767

/-!
# A000707: Number of permutations of [1,2,...,n] with n-1 inversions.

The programs for A000707, there is no canonical definition to state claims against.
-/

/-! ## A000707.P7397579376942478394

`A177517(2*(n+1)²+1)`
-/

namespace A000707.P7397579376942478394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (2 * (n + 1) ^ 2 + 1)

end

end A000707.P7397579376942478394

/-! ## A000707.P2969781058523896045

`A060701(∑[4*n])`
-/

namespace A000707.P2969781058523896045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060701 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000707.P2969781058523896045

/-! ## A000707.P4274237557124310291

`A008302(∑[∑[n]]+1)`
-/

namespace A000707.P4274237557124310291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000707.P4274237557124310291

/-! ## A000707.P7808488032171082623

`A008302(A000292(n)+1)/A007913((n+1)²)`
-/

namespace A000707.P7808488032171082623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008302 (A000292 n + 1).toNat : ℚ) / (A007913 ((n + 1) ^ 2) : ℚ)

end

end A000707.P7808488032171082623

/-! ## A000707.P1294157651675260323

`A008302(A000292(n)+1)/A001222(A088262(n+1))`
-/

namespace A000707.P1294157651675260323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008302 (A000292 n + 1).toNat : ℚ) / (A001222 (A088262 (n + 1)).toNat : ℚ)

end

end A000707.P1294157651675260323

/-!
# A000708: a(n) = E(n+1) - 2*E(n), where E(i) is the Euler number A000111(i).

The programs for A000708, there is no canonical definition to state claims against.
-/

/-! ## A000708.P4543103668716092456

`Δ[A000111(n)]-A000111(n)`
-/

namespace A000708.P4543103668716092456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000111 n

end

end A000708.P4543103668716092456

/-! ## A000708.P15238535556164349336

`A000111(n+1)-A260786(n)`
-/

namespace A000708.P15238535556164349336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 1) - A260786 n

end

end A000708.P15238535556164349336

/-! ## A000708.P13371955178057901024

`A000111(n+1)-2*A000111(n)`
-/

namespace A000708.P13371955178057901024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 1) - 2 * A000111 n

end

end A000708.P13371955178057901024

/-! ## A000708.P12063322437913731947

`A010094(A000124(n))-A260786(n)`
-/

namespace A000708.P12063322437913731947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A000124 n).toNat - A260786 n

end

end A000708.P12063322437913731947

/-! ## A000708.P9042805322788810479

`A010094(A133263(n))-A260786(n)`
-/

namespace A000708.P9042805322788810479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A133263 n).toNat - A260786 n

end

end A000708.P9042805322788810479

/-!
# A000709: Related to population of numbers of form x^2 + y^2.

The programs for A000709, there is no canonical definition to state claims against.
-/

/-! ## A000709.P542035936995900297

`∑[A002024(A390480(n))]`
-/

namespace A000709.P542035936995900297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A390480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000709.P542035936995900297

/-! ## A000709.P1871091102913468924

`∑[A276581(A279551(n))]`
-/

namespace A000709.P1871091102913468924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A279551 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000709.P1871091102913468924

/-! ## A000709.P2515884807703519473

`A000006(∑[∑[A148281(n)]])`
-/

namespace A000709.P2515884807703519473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000709.P2515884807703519473

/-! ## A000709.P2233865260334959519

`A001462(A090827(n+1)+∑[n])`
-/

namespace A000709.P2233865260334959519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A090827 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A000709.P2233865260334959519

/-! ## A000709.P2978084202401314685

`A230980(n)+A023193(A101509(n))`
-/

namespace A000709.P2978084202401314685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A023193 (A101509 n).toNat

end

end A000709.P2978084202401314685

/-!
# A000710: Number of partitions of n, with two kinds of 1, 2, 3 and 4.

The programs for A000710, there is no canonical definition to state claims against.
-/

/-! ## A000710.P13372021150035236613

`A000465(n)-(A000291(n)+∑[A000291(n)])`
-/

namespace A000710.P13372021150035236613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000465 n - (A000291 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000710.P13372021150035236613

/-! ## A000710.P9830101169886483824

`record[A239830(∑[n]+2)]`
-/

namespace A000710.P9830101169886483824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000710.P9830101169886483824

/-! ## A000710.P1106999891654642825

`A239830(∑[n+2]+3)`
-/

namespace A000710.P1106999891654642825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000710.P1106999891654642825

/-! ## A000710.P16503402991132199817

`A239830(A238531(n+3))*A349542(3*n+4)`
-/

namespace A000710.P16503402991132199817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A238531 (n + 3)).toNat * A349542 (3 * n + 4)

end

end A000710.P16503402991132199817

/-! ## A000710.P6003643179369780750

`A103923(C(n+6, 2)-n-1)`
-/

namespace A000710.P6003643179369780750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 ((Nat.choose (n + 6) 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A000710.P6003643179369780750

/-! ## A000710.P7674894308895669938

`A103923(A155212(n)+12)`
-/

namespace A000710.P7674894308895669938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A155212 n + 12).toNat

end

end A000710.P7674894308895669938

/-! ## A000710.P3261440225393002232

`A103923(A056000(n)+14)`
-/

namespace A000710.P3261440225393002232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A056000 n + 14).toNat

end

end A000710.P3261440225393002232

/-! ## A000710.P17080922973440908393

`A103923(eq[4, A002262(n)])`
-/

namespace A000710.P17080922973440908393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000710.P17080922973440908393

/-! ## A000710.P3119418208915770655

`A103923(A000217(n+4)+4)`
-/

namespace A000710.P3119418208915770655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A000217 (n + 4) + 4).toNat

end

end A000710.P3119418208915770655

/-! ## A000710.P2627362696925792575

`A103923(eq[2, A144328(n+1)-2])`
-/

namespace A000710.P2627362696925792575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000710.P2627362696925792575

/-! ## A000710.P2121332046506189697

`A103923(A000124(n+5)-(n+2))`
-/

namespace A000710.P2121332046506189697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A000124 (n + 5) - (n + 2 : ℤ)).toNat

end

end A000710.P2121332046506189697

/-!
# A000711: Number of partitions of n, with three kinds of 1,2,3 and 4 and two kinds of 5,6,7,...

The programs for A000711, there is no canonical definition to state claims against.
-/

/-! ## A000711.P18173526454435718505

`A330608(A309861(n+1))+A241741(3*n+2)`
-/

namespace A000711.P18173526454435718505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330608 (A309861 (n + 1)).toNat + A241741 (3 * n + 2)

end

end A000711.P18173526454435718505

/-! ## A000711.P1656090760538519182

`record[A278668(n)-A172541(n+1)]`
-/

namespace A000711.P1656090760538519182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278668 n - A172541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000711.P1656090760538519182

/-!
# A000712: a(n) = number of partitions of n into parts of 2 kinds.

The programs for A000712, there is no canonical definition to state claims against.
-/

/-! ## A000712.P5190927324387280767

`∑[A000990(n)]`
-/

namespace A000712.P5190927324387280767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000712.P5190927324387280767

/-! ## A000712.P2624246656781912772

`∑[∑[A147766(n)]]`
-/

namespace A000712.P2624246656781912772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000712.P2624246656781912772

/-! ## A000712.P9591498958042335751

`A122768(n)+A000041(n)`
-/

namespace A000712.P9591498958042335751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n + A000041 n

end

end A000712.P9591498958042335751

/-! ## A000712.P12744825349921623918

`A122768(n)+∑[A002865(n)]`
-/

namespace A000712.P12744825349921623918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000712.P12744825349921623918

/-! ## A000712.P10108616011961222844

`A000065(n)+A122768(n)+1`
-/

namespace A000712.P10108616011961222844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (A122768 n + 1)

end

end A000712.P10108616011961222844

/-! ## A000712.P7693097969845951309

`2*A006330(n)-A114921(n)`
-/

namespace A000712.P7693097969845951309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006330 n - A114921 n

end

end A000712.P7693097969845951309

/-! ## A000712.P4243564351204612279

`A122768(n)+A139582(n)/2`
-/

namespace A000712.P4243564351204612279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122768 n : ℚ) + (A139582 n : ℚ) / 2

end

end A000712.P4243564351204612279

/-! ## A000712.P14462077257228393885

`A000009(n)+A122768(n)+A047967(n)`
-/

namespace A000712.P14462077257228393885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A122768 n + A047967 n)

end

end A000712.P14462077257228393885

/-! ## A000712.P6575894531198861779

`A000726(n)+A295341(n)+A122768(n)`
-/

namespace A000712.P6575894531198861779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n + A122768 n)

end

end A000712.P6575894531198861779

/-! ## A000712.P9658390784312002412

`A122768(n)+A239262(n)+A239260(n)`
-/

namespace A000712.P9658390784312002412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n + (A239262 n + A239260 n)

end

end A000712.P9658390784312002412

/-! ## A000712.P5470393954517929094

`A122768(n)+A239263(n)+A239259(n)`
-/

namespace A000712.P5470393954517929094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n + (A239263 n + A239259 n)

end

end A000712.P5470393954517929094

/-! ## A000712.P1000942954108453455

`A122768(n)+A365924(n)+A126796(n)`
-/

namespace A000712.P1000942954108453455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n + (A365924 n + A126796 n)

end

end A000712.P1000942954108453455

/-! ## A000712.P10193804440193872225

`A281357(n)+A281357(n)-A035363(n)`
-/

namespace A000712.P10193804440193872225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281357 n + (A281357 n - A035363 n)

end

end A000712.P10193804440193872225

/-! ## A000712.P8500329806865142130

`A179906(n+1)+A000041(n)-A000041(n+1)`
-/

namespace A000712.P8500329806865142130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179906 (n + 1) + (A000041 n - A000041 (n + 1))

end

end A000712.P8500329806865142130

/-! ## A000712.P8246861579761611954

`∪[A100534(n), A100535(n)]`
-/

namespace A000712.P8246861579761611954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000712.P8246861579761611954

/-! ## A000712.P8897340630158765356

`A058696(n)-A304710(n)`
-/

namespace A000712.P8897340630158765356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A304710 n

end

end A000712.P8897340630158765356

/-! ## A000712.P3839636813956228397

`A000041(2*n)-A304710(n)`
-/

namespace A000712.P3839636813956228397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A304710 n

end

end A000712.P3839636813956228397

/-! ## A000712.P1533211315177660361

`A000713(n+1)-(A000990(n+1)+A000713(n))`
-/

namespace A000712.P1533211315177660361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000713 (n + 1) - (A000990 (n + 1) + A000713 n)

end

end A000712.P1533211315177660361

/-! ## A000712.P15211448976538342896

`∑[∑[A003292(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A000712.P15211448976538342896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A003292 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000712.P15211448976538342896

/-! ## A000712.P266337919638062082

`A000219(n)+A011782(n)-A116600(n)`
-/

namespace A000712.P266337919638062082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n + (A011782 n - A116600 n)

end

end A000712.P266337919638062082

/-!
# A000713: EULER transform of 3, 2, 2, 2, 2, 2, 2, 2, ...

The programs for A000713, there is no canonical definition to state claims against.
-/

/-! ## A000713.P13625545833623093569

`∑[A000712(n)]`
-/

namespace A000713.P13625545833623093569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P13625545833623093569

/-! ## A000713.P4628298659803601890

`∑[∑[A000990(n)]]`
-/

namespace A000713.P4628298659803601890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P4628298659803601890

/-! ## A000713.P11380656382370975510

`∑[∑[∑[A147766(n)]]]`
-/

namespace A000713.P11380656382370975510
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P11380656382370975510

/-! ## A000713.P13672922979658691884

`∑[A122768(n)+A000041(n)]`
-/

namespace A000713.P13672922979658691884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P13672922979658691884

/-! ## A000713.P10963547047862110752

`∑[A122768(n)+∑[A002865(n)]]`
-/

namespace A000713.P10963547047862110752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P10963547047862110752

/-! ## A000713.P5788987299180945901

`∑[A000065(n)+A122768(n)+1]`
-/

namespace A000713.P5788987299180945901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (A122768 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P5788987299180945901

/-! ## A000713.P7936118168225632995

`∑[2*A006330(n)-A114921(n)]`
-/

namespace A000713.P7936118168225632995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006330 n - A114921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P7936118168225632995

/-! ## A000713.P7602927547016166053

`∑[A122768(n)+A139582(n)/2]`
-/

namespace A000713.P7602927547016166053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122768 n : ℚ) + (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P7602927547016166053

/-! ## A000713.P11056039038054710

`A000712(n%A000712(n))+a(n-1)` with `a(0)=1`
-/

namespace A000713.P11056039038054710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000712 (Int.tmod (n : ℤ) (A000712 n)).toNat + a (n - 1)

end

end A000713.P11056039038054710

/-! ## A000713.P3884838555659217541

`∑[A000009(n)+A122768(n)+A047967(n)]`
-/

namespace A000713.P3884838555659217541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A122768 n + A047967 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P3884838555659217541

/-! ## A000713.P4052951956457950544

`∑[A000726(n)+A295341(n)+A122768(n)]`
-/

namespace A000713.P4052951956457950544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n + A122768 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P4052951956457950544

/-! ## A000713.P9191720660015146579

`∑[A122768(n)+A239262(n)+A239260(n)]`
-/

namespace A000713.P9191720660015146579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n + (A239262 n + A239260 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P9191720660015146579

/-! ## A000713.P10030091623388993244

`∑[A122768(n)+A239263(n)+A239259(n)]`
-/

namespace A000713.P10030091623388993244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n + (A239263 n + A239259 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P10030091623388993244

/-! ## A000713.P5461023687029855204

`∑[∑[A242642(A238531(n))]]`
-/

namespace A000713.P5461023687029855204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A238531 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P5461023687029855204

/-! ## A000713.P15860203005784588818

`∑[∑[A242641(∑[n+2])]]`
-/

namespace A000713.P15860203005784588818
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P15860203005784588818

/-! ## A000713.P10868489484420173408

`∑[A146023(∑[n])]`
-/

namespace A000713.P10868489484420173408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146023 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P10868489484420173408

/-! ## A000713.P16238772546560204436

`∑[A060850(∑[n+2])]`
-/

namespace A000713.P16238772546560204436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060850 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P16238772546560204436

/-! ## A000713.P13073744274091153358

`∑[A144064(∑[n+3])]`
-/

namespace A000713.P13073744274091153358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P13073744274091153358

/-! ## A000713.P16567918576271119704

`A210764(∑[n+2]+3)`
-/

namespace A000713.P16567918576271119704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210764 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000713.P16567918576271119704

/-! ## A000713.P9913513722121531910

`∑[A292577(A034856(n+1))]`
-/

namespace A000713.P9913513722121531910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292577 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000713.P9913513722121531910

/-!
# A000714: Number of partitions of n, with three kinds of 1 and 2 and two kinds of 3,4,5,....

The programs for A000714, there is no canonical definition to state claims against.
-/

/-! ## A000714.P16384227039308908412

`A000713(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A000714.P16384227039308908412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000713 n + a (n - 2)

end

end A000714.P16384227039308908412

/-! ## A000714.P16156580668755853603

`∑[A000712(n)+a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A000714.P16156580668755853603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000712 n + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000714.P16156580668755853603

/-! ## A000714.P680185667106781550

`∑[∑[∑[A000990(n)-a(n-1)]]]` with `a(0)=1`
-/

namespace A000714.P680185667106781550
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A000990 n - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000714.P680185667106781550

/-! ## A000714.P571330222297259330

`∑[∑[A146023(∑[n])-a(n-1)]]` with `a(0)=1`
-/

namespace A000714.P571330222297259330
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A146023 (∑ j ∈ Finset.range (n + 1), f3 j) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000714.P571330222297259330

/-!
# A000715: Number of partitions of n, with three kinds of 1,2 and 3 and two kinds of 4,5,6,....

The programs for A000715, there is no canonical definition to state claims against.
-/

/-! ## A000715.P17437913071836301076

`A000714(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A000715.P17437913071836301076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A000714 n + a (n - 3)

end

end A000715.P17437913071836301076

/-! ## A000715.P8916821016120308000

`A260545(n)-A347579(A301308(n))`
-/

namespace A000715.P8916821016120308000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260545 n - A347579 (A301308 n).toNat

end

end A000715.P8916821016120308000

/-! ## A000715.P13391360456993142636

`A001935(3*n)-A122841(A033543(n))`
-/

namespace A000715.P13391360456993142636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (3 * n) - A122841 (A033543 n).toNat

end

end A000715.P13391360456993142636

/-!
# A000716: Number of partitions of n into parts of 3 kinds.

The programs for A000716, there is no canonical definition to state claims against.
-/

/-! ## A000716.P15185109611949067975

`∑[∑[∑[A000991(n)-a(n-1)]]]` with `a(0)=1`
-/

namespace A000716.P15185109611949067975
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A000991 n - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000716.P15185109611949067975

/-! ## A000716.P6323116200126155833

`A144064(∑[n+4]+2)`
-/

namespace A000716.P6323116200126155833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000716.P6323116200126155833

/-! ## A000716.P9942964270858843157

`record[Δ[A210764(∑[n]+3)]]`
-/

namespace A000716.P9942964270858843157
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210764 (∑ j ∈ Finset.range (n + 1), f3 j + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000716.P9942964270858843157

/-! ## A000716.P15338911307757659878

`A060850(A034856(n+2))`
-/

namespace A000716.P15338911307757659878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060850 (A034856 (n + 2)).toNat

end

end A000716.P15338911307757659878

/-! ## A000716.P15561640414427066555

`record[A144064(abs(A046691(n)))]`
-/

namespace A000716.P15561640414427066555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000716.P15561640414427066555

/-! ## A000716.P14288177197978969589

`A060850(A055998(n+1)+1)`
-/

namespace A000716.P14288177197978969589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060850 (A055998 (n + 1) + 1).toNat

end

end A000716.P14288177197978969589

/-! ## A000716.P12623901875548374210

`A060850(A000096(n+2)-1)`
-/

namespace A000716.P12623901875548374210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060850 (A000096 (n + 2) - 1).toNat

end

end A000716.P12623901875548374210

/-! ## A000716.P12493150136389515351

`A144064(A046691(n+2))+A000038(n+2)`
-/

namespace A000716.P12493150136389515351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A046691 (n + 2)).toNat + A000038 (n + 2)

end

end A000716.P12493150136389515351

/-! ## A000716.P14532068337315313335

`A144064(A046691(n+2))+A000035(2*n)`
-/

namespace A000716.P14532068337315313335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A046691 (n + 2)).toNat + A000035 (2 * n)

end

end A000716.P14532068337315313335

/-! ## A000716.P1709686977002046425

`A144064(A046691(n+2))/A034947(n+1)²`
-/

namespace A000716.P1709686977002046425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144064 (A046691 (n + 2)).toNat : ℚ) / (A034947 (n + 1) ^ 2 : ℚ)

end

end A000716.P1709686977002046425

/-! ## A000716.P10845902137860618753

`A144064(A046691(n+2))+A011744(A004736(n+1))`
-/

namespace A000716.P10845902137860618753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A046691 (n + 2)).toNat + A011744 (A004736 (n + 1)).toNat

end

end A000716.P10845902137860618753

/-! ## A000716.P3295220723424493625

`A355350(∑[n+1]+1)`
-/

namespace A000716.P3295220723424493625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355350 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000716.P3295220723424493625

/-! ## A000716.P16219434741216178579

`A355360(∑[n+1]+1)`
-/

namespace A000716.P16219434741216178579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355360 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000716.P16219434741216178579

/-! ## A000716.P2301072482890352927

`lcm(A057077(n), A355350(A000217(n+1)+1))`
-/

namespace A000716.P2301072482890352927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A355350 (A000217 (n + 1) + 1).toNat)

end

end A000716.P2301072482890352927

/-! ## A000716.P7761113852707642139

`A057077(n²)*A355350(A000217(n+1)+1)`
-/

namespace A000716.P7761113852707642139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n ^ 2) * A355350 (A000217 (n + 1) + 1).toNat

end

end A000716.P7761113852707642139

/-! ## A000716.P8147868946494339165

`A057979(2*n)²*A355350(A000217(n+1)+1)`
-/

namespace A000716.P8147868946494339165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) ^ 2 * A355350 (A000217 (n + 1) + 1).toNat

end

end A000716.P8147868946494339165

/-!
# A000717: Number of graphs with n nodes and floor(n(n-1)/4) edges.

The programs for A000717, there is no canonical definition to state claims against.
-/

/-! ## A000717.P5656084690082543716

`A008406(A008619(∑[n²+2]-1))`
-/

namespace A000717.P5656084690082543716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (A008619 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A000717.P5656084690082543716

/-! ## A000717.P11216683785463427629

`A025453(A149736(n+1))`
-/

namespace A000717.P11216683785463427629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 (A149736 (n + 1)).toNat

end

end A000717.P11216683785463427629

/-! ## A000717.P7200214634356403749

`A204217(∑{d}[A000699(n), #])`
-/

namespace A000717.P7200214634356403749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A000717.P7200214634356403749

/-!
# A000718: Boustrophedon transform of triangular numbers 1,1,3,6,10,...

The programs for A000718, there is no canonical definition to state claims against.
-/

/-! ## A000718.P12973058668904607373

`(A000697(n)+A000660(n))/2`
-/

namespace A000718.P12973058668904607373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000697 n + A000660 n : ℚ) / 2

end

end A000718.P12973058668904607373

/-! ## A000718.P2979344314953259324

`A000111(n)+A000745(n)-A000746(n)`
-/

namespace A000718.P2979344314953259324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (A000745 n - A000746 n)

end

end A000718.P2979344314953259324

/-! ## A000718.P14763522025380052708

`A000111(n)+A000746(n)-A000737(n)`
-/

namespace A000718.P14763522025380052708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (A000746 n - A000737 n)

end

end A000718.P14763522025380052708

/-! ## A000718.P2647768144853794108

`A000660(n)+A000746(n)-A000754(n)`
-/

namespace A000718.P2647768144853794108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000660 n + (A000746 n - A000754 n)

end

end A000718.P2647768144853794108

/-! ## A000718.P15316178658078039037

`A000697(n)+A000754(n)-A000746(n)`
-/

namespace A000718.P15316178658078039037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000697 n + (A000754 n - A000746 n)

end

end A000718.P15316178658078039037

/-!
# A000719: Number of disconnected graphs with n nodes.

The programs for A000719, there is no canonical definition to state claims against.
-/

/-! ## A000719.P16913053134787112039

`A000088(n)-A001349(n)`
-/

namespace A000719.P16913053134787112039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A001349 n

end

end A000719.P16913053134787112039

/-! ## A000719.P8032231085595852274

`∑[A002494(n)]-A001349(n)`
-/

namespace A000719.P8032231085595852274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001349 n

end

end A000719.P8032231085595852274

/-! ## A000719.P11087728242866868575

`A000088(n)-A304311(∑[n])`
-/

namespace A000719.P11087728242866868575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A304311 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000719.P11087728242866868575

/-! ## A000719.P17104123539779572440

`A000088(n)-A201922(C(n, 2)+1)`
-/

namespace A000719.P17104123539779572440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A201922 (Nat.choose n 2 + 1)

end

end A000719.P17104123539779572440

/-! ## A000719.P16701108794302748707

`A000088(n)-A201922(A152947(n+1))`
-/

namespace A000719.P16701108794302748707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A201922 (A152947 (n + 1)).toNat

end

end A000719.P16701108794302748707

/-!
# A000720: pi(n), the number of primes <= n. Sometimes called PrimePi(n) to distinguish it from the number 3.14159...

The programs for A000720, the canonical program `A000720.P1755771944745605250` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000720 has offset 1).

The definition of A000720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000720.P14266502587862969779

`A036234(n+1)-1`
-/

namespace A000720.P14266502587862969779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - 1

end

end A000720.P14266502587862969779

namespace A000720

/-- `A036234(n+1)-1` -/
def P14266502587862969779.Spec : Prop :=
  ∀ n, P14266502587862969779.a n = A000720 (n + 1)

end A000720

/-! ## A000720.P12640224023411921892

`∑[char[eq[1, ∑{e}[n+1, #]]]]`
-/

namespace A000720.P12640224023411921892
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000720.P12640224023411921892

namespace A000720

/-- `∑[char[eq[1, ∑{e}[n+1, #]]]]` -/
def P12640224023411921892.Spec : Prop :=
  ∀ n, (P12640224023411921892.a n : ℤ) = A000720 (n + 1)

end A000720

/-! ## A000720.P1755771944745605250

`∑[C(C(2, ∑{e}[n+1, #]), 2)]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000720

/-- `∑[C(C(2, ∑{e}[n+1, #]), 2)]` -/
def P1755771944745605250.Spec : Prop :=
  ∀ n, (P1755771944745605250.a n : ℤ) = A000720 (n + 1)

theorem P1755771944745605250.correct : P1755771944745605250.Spec := by
  intro n
  simp only [A000720, Nat.add_sub_cancel]

end A000720

/-! ## A000720.P5558436761163160855

`∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A000720.P5558436761163160855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000720.P5558436761163160855

namespace A000720

/-- `∑[∑{p}[n+1, val(#, n+1)]]` -/
def P5558436761163160855.Spec : Prop :=
  ∀ n, (P5558436761163160855.a n : ℤ) = A000720 (n + 1)

end A000720

/-! ## A000720.P80922681669707262

`∑[∑{p}[n+1, C(#, n+1)]]`
-/

namespace A000720.P80922681669707262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000720.P80922681669707262

namespace A000720

/-- `∑[∑{p}[n+1, C(#, n+1)]]` -/
def P80922681669707262.Spec : Prop :=
  ∀ n, (P80922681669707262.a n : ℤ) = A000720 (n + 1)

end A000720

/-! ## A000720.P6254732849026648078

`∑[C(n, ∏{e}[n+1, n*#])]`
-/

namespace A000720.P6254732849026648078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000720.P6254732849026648078

namespace A000720

/-- `∑[C(n, ∏{e}[n+1, n*#])]` -/
def P6254732849026648078.Spec : Prop :=
  ∀ n, (P6254732849026648078.a n : ℤ) = A000720 (n + 1)

end A000720

/-! ## A000720.P5816777534355279987

`∑[∑{p}[n+1, floor(#/(n+1))]]`
-/

namespace A000720.P5816777534355279987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000720.P5816777534355279987

namespace A000720

/-- `∑[∑{p}[n+1, floor(#/(n+1))]]` -/
def P5816777534355279987.Spec : Prop :=
  ∀ n, P5816777534355279987.a n = A000720 (n + 1)

end A000720

/-! ## A000720.P15664253653057306046

`∑[∏{p}[n+1, val(#, n+1)]]-1`
-/

namespace A000720.P15664253653057306046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A000720.P15664253653057306046

namespace A000720

/-- `∑[∏{p}[n+1, val(#, n+1)]]-1` -/
def P15664253653057306046.Spec : Prop :=
  ∀ n, P15664253653057306046.a n = A000720 (n + 1)

end A000720

/-! ## A000720.P404734049115966046

`∑[∏{p}[n+1, C(#, n+1)]]-1`
-/

namespace A000720.P404734049115966046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A000720.P404734049115966046

namespace A000720

/-- `∑[∏{p}[n+1, C(#, n+1)]]-1` -/
def P404734049115966046.Spec : Prop :=
  ∀ n, P404734049115966046.a n = A000720 (n + 1)

end A000720

/-! ## A000720.P14005160301271863444

`∑[round(∑{p}[n+1, (#/(n+1))²])]`
-/

namespace A000720.P14005160301271863444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℚ) / (n + 1 : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000720.P14005160301271863444

namespace A000720

/-- `∑[round(∑{p}[n+1, (#/(n+1))²])]` -/
def P14005160301271863444.Spec : Prop :=
  ∀ n, P14005160301271863444.a n = A000720 (n + 1)

end A000720

/-! ## A000720.P8298704090421446751

`∑[A010051(n+1)]`
-/

namespace A000720.P8298704090421446751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000720.P8298704090421446751

namespace A000720

/-- `∑[A010051(n+1)]` -/
def P8298704090421446751.Spec : Prop :=
  ∀ n, P8298704090421446751.a n = A000720 (n + 1)

end A000720

/-! ## A000720.P5298847649360299216

`Δ[A002815(n)]-1`
-/

namespace A000720.P5298847649360299216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A000720.P5298847649360299216

namespace A000720

/-- `Δ[A002815(n)]-1` -/
def P5298847649360299216.Spec : Prop :=
  ∀ n, P5298847649360299216.a n = A000720 (n + 1)

end A000720

/-! ## A000720.P5220465397772431716

`n-A065855(n+1)`
-/

namespace A000720.P5220465397772431716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A065855 (n + 1)

end

end A000720.P5220465397772431716

namespace A000720

/-- `n-A065855(n+1)` -/
def P5220465397772431716.Spec : Prop :=
  ∀ n, P5220465397772431716.a n = A000720 (n + 1)

end A000720

/-! ## A000720.P15460168926830895038

`floor(sqrt(A256956(n+1)))`
-/

namespace A000720.P15460168926830895038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A256956 (n + 1))

end

end A000720.P15460168926830895038

namespace A000720

/-- `floor(sqrt(A256956(n+1)))` -/
def P15460168926830895038.Spec : Prop :=
  ∀ n, P15460168926830895038.a n = A000720 (n + 1)

end A000720

/-! ## A000720.P8962675345206174718

`∑[abs(A129950(n+1))]`
-/

namespace A000720.P8962675345206174718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129950 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000720.P8962675345206174718

namespace A000720

/-- `∑[abs(A129950(n+1))]` -/
def P8962675345206174718.Spec : Prop :=
  ∀ n, P8962675345206174718.a n = A000720 (n + 1)

end A000720

/-! ## A000720.P14852758522865267866

`∑{d}[n+1, A062778(#)]`
-/

namespace A000720.P14852758522865267866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062778 d

end

end A000720.P14852758522865267866

namespace A000720

/-- `∑{d}[n+1, A062778(#)]` -/
def P14852758522865267866.Spec : Prop :=
  ∀ n, P14852758522865267866.a n = A000720 (n + 1)

end A000720

/-! ## A000720.P13531758417128263371

`∑[char[A006093(n+1)]]`
-/

namespace A000720.P13531758417128263371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000720.P13531758417128263371

namespace A000720

/-- `∑[char[A006093(n+1)]]` -/
def P13531758417128263371.Spec : Prop :=
  ∀ n, (P13531758417128263371.a n : ℤ) = A000720 (n + 1)

end A000720

/-! ## A000720.P466068075845186255

`∑[char[A057237(n+1)]]`
-/

namespace A000720.P466068075845186255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000720.P466068075845186255

namespace A000720

/-- `∑[char[A057237(n+1)]]` -/
def P466068075845186255.Spec : Prop :=
  ∀ n, (P466068075845186255.a n : ℤ) = A000720 (n + 1)

end A000720

/-! ## A000720.P15194282462492248298

`∑[char[A063872(n+1)]]`
-/

namespace A000720.P15194282462492248298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063872 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000720.P15194282462492248298

namespace A000720

/-- `∑[char[A063872(n+1)]]` -/
def P15194282462492248298.Spec : Prop :=
  ∀ n, (P15194282462492248298.a n : ℤ) = A000720 (n + 1)

end A000720

/-! ## A000720.P13417378726731683550

`∑[char[A070320(n+1)]]`
-/

namespace A000720.P13417378726731683550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070320 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000720.P13417378726731683550

namespace A000720

/-- `∑[char[A070320(n+1)]]` -/
def P13417378726731683550.Spec : Prop :=
  ∀ n, (P13417378726731683550.a n : ℤ) = A000720 (n + 1)

end A000720

/-!
# A000721: Number of NP-equivalence classes of balanced Boolean functions of n variables.

The programs for A000721, there is no canonical definition to state claims against.
-/

/-! ## A000721.P11517973549952659596

`A039754(A007283(n)+n)`
-/

namespace A000721.P11517973549952659596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039754 (A007283 n + (n : ℤ)).toNat

end

end A000721.P11517973549952659596

/-!
# A000722: Number of invertible Boolean functions of n variables: a(n) = (2^n)!.

The programs for A000722, the canonical program `A000722.P3356117955303407897` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000722 has offset 0).

The definition of A000722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)!` (program `A000722.P3356117955303407897`, by `A000722.P3356117955303407897.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000722.P3356117955303407897

`(2^n)!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000722

/-- `(2^n)!` -/
def P3356117955303407897.Spec : Prop :=
  ∀ n, (P3356117955303407897.a n : ℤ) = A000722 n

theorem P3356117955303407897.correct : P3356117955303407897.Spec := by
  intro n
  simp only [A000722]

end A000722

/-! ## A000722.P16267783143215669302

`record[and(n, -n)!]`
-/

namespace A000722.P16267783143215669302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land (n : ℤ) (-(n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000722.P16267783143215669302

namespace A000722

/-- `record[and(n, -n)!]` -/
def P16267783143215669302.Spec : Prop :=
  ∀ n, (P16267783143215669302.a n : ℤ) = A000722 n

end A000722

/-! ## A000722.P7667001530921056903

`A000142(2^n)`
-/

namespace A000722.P7667001530921056903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 ^ n)

end

end A000722.P7667001530921056903

namespace A000722

/-- `A000142(2^n)` -/
def P7667001530921056903.Spec : Prop :=
  ∀ n, P7667001530921056903.a n = A000722 n

end A000722

/-!
# A000723: 

The programs for A000723, there is no canonical definition to state claims against.
-/

/-! ## A000723.P16876044788275936643

`A000203(2^n)!/(n+1)!`
-/

namespace A000723.P16876044788275936643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000203 (2 ^ n)).toNat : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A000723.P16876044788275936643

/-!
# A000726: Number of partitions of n in which no parts are multiples of 3.

The programs for A000726, there is no canonical definition to state claims against.
-/

/-! ## A000726.P16506907224631259841

`A350636(n)+A066447(n)`
-/

namespace A000726.P16506907224631259841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350636 n + A066447 n

end

end A000726.P16506907224631259841

/-! ## A000726.P18094271849677691055

`A339405(n)+A339404(n)`
-/

namespace A000726.P18094271849677691055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339405 n + A339404 n

end

end A000726.P18094271849677691055

/-! ## A000726.P16239875543898650911

`A109389(n)+2*A339405(n)`
-/

namespace A000726.P16239875543898650911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 n + 2 * A339405 n

end

end A000726.P16239875543898650911

/-! ## A000726.P2596869436729991699

`2*A339404(n)-A109389(n)`
-/

namespace A000726.P2596869436729991699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339404 n - A109389 n

end

end A000726.P2596869436729991699

/-! ## A000726.P2045005384232927522

`A116634(n+3)-A116634(n)`
-/

namespace A000726.P2045005384232927522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116634 (n + 3) - A116634 n

end

end A000726.P2045005384232927522

/-! ## A000726.P4019243851681007166

`A000041(n)-A295341(n)`
-/

namespace A000726.P4019243851681007166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A295341 n

end

end A000726.P4019243851681007166

/-! ## A000726.P10550302461494412470

`∑[A002865(n)]-A295341(n)`
-/

namespace A000726.P10550302461494412470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295341 n

end

end A000726.P10550302461494412470

/-! ## A000726.P17510172189211720583

`A000065(n)+1-A295341(n)`
-/

namespace A000726.P17510172189211720583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A295341 n)

end

end A000726.P17510172189211720583

/-! ## A000726.P8022843622405898760

`∑[A085811(n+3)]-A295341(n)`
-/

namespace A000726.P8022843622405898760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295341 n

end

end A000726.P8022843622405898760

/-! ## A000726.P18066742186775110827

`∑[A232697(n)]-(A295341(n)+n)`
-/

namespace A000726.P18066742186775110827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A295341 n + (n : ℤ))

end

end A000726.P18066742186775110827

/-! ## A000726.P2286590657747670652

`A000009(n)+A047967(n)-A295341(n)`
-/

namespace A000726.P2286590657747670652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A295341 n)

end

end A000726.P2286590657747670652

/-! ## A000726.P15514449180548581988

`A027187(n)+A027193(n)-A295341(n)`
-/

namespace A000726.P15514449180548581988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A295341 n)

end

end A000726.P15514449180548581988

/-! ## A000726.P17348635300371921256

`A239262(n)+A239260(n)-A295341(n)`
-/

namespace A000726.P17348635300371921256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239262 n + A239260 n - A295341 n

end

end A000726.P17348635300371921256

/-! ## A000726.P12687215177848045459

`A239263(n)+A239259(n)-A295341(n)`
-/

namespace A000726.P12687215177848045459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239263 n + A239259 n - A295341 n

end

end A000726.P12687215177848045459

/-! ## A000726.P9988364314742268734

`A139582(n)/2-A295341(n)`
-/

namespace A000726.P9988364314742268734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A295341 n : ℚ)

end

end A000726.P9988364314742268734

/-! ## A000726.P1037090270095445640

`A035385(2*n)`
-/

namespace A000726.P1037090270095445640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 (2 * n)

end

end A000726.P1037090270095445640

/-! ## A000726.P15820503224357238879

`A035363(2*n)-A295341(n)`
-/

namespace A000726.P15820503224357238879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A295341 n

end

end A000726.P15820503224357238879

/-! ## A000726.P6658084774942407322

`A143229(n)/A000070(n)-A295341(n)`
-/

namespace A000726.P6658084774942407322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143229 n : ℚ) / (A000070 n : ℚ) - (A295341 n : ℚ)

end

end A000726.P6658084774942407322

/-! ## A000726.P16857130092249655607

`A332281(n)+A332280(n)-A295341(n)`
-/

namespace A000726.P16857130092249655607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A332280 n - A295341 n

end

end A000726.P16857130092249655607

/-! ## A000726.P9996711295119176447

`A001935(n)+A295342(n)-A295341(n)`
-/

namespace A000726.P9996711295119176447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n + (A295342 n - A295341 n)

end

end A000726.P9996711295119176447

/-!
# A000727: Expansion of Product_{k >= 1} (1 - x^k)^4.

The programs for A000727, there is no canonical definition to state claims against.
-/

/-! ## A000727.P16436557091911302793

`(-1)^n*A187076(n)`
-/

namespace A000727.P16436557091911302793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A187076 n

end

end A000727.P16436557091911302793

/-! ## A000727.P5501236880603468624

`A187076(n)*A309873(A020639(n+1))`
-/

namespace A000727.P5501236880603468624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187076 n * A309873 (A020639 (n + 1)).toNat

end

end A000727.P5501236880603468624

/-! ## A000727.P5803040502472894096

`A000735(n)*A187076(n)/A209676(n)`
-/

namespace A000727.P5803040502472894096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000735 n * A187076 n : ℚ) / (A209676 n : ℚ)

end

end A000727.P5803040502472894096

/-! ## A000727.P7868010723416951468

`A187076(n)*A280328(n)/A280384(n)`
-/

namespace A000727.P7868010723416951468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187076 n * A280328 n : ℚ) / (A280384 n : ℚ)

end

end A000727.P7868010723416951468

/-! ## A000727.P8392982305296845249

`A033999(n)*A187149(2*n)`
-/

namespace A000727.P8392982305296845249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A187149 (2 * n)

end

end A000727.P8392982305296845249

/-! ## A000727.P15019629395067381077

`A165326(n+1)*A187149(2*n)`
-/

namespace A000727.P15019629395067381077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1) * A187149 (2 * n)

end

end A000727.P15019629395067381077

/-! ## A000727.P10754000879040123777

`A081729(A017053(n))*A187149(2*n)`
-/

namespace A000727.P10754000879040123777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A017053 n).toNat * A187149 (2 * n)

end

end A000727.P10754000879040123777

/-! ## A000727.P6412757079596296260

`A033999(n)*A106508(2*n)`
-/

namespace A000727.P6412757079596296260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A106508 (2 * n)

end

end A000727.P6412757079596296260

/-! ## A000727.P16055524247436354723

`A286354(∑[n+5]+5)`
-/

namespace A000727.P16055524247436354723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A000727.P16055524247436354723

/-! ## A000727.P17191176701356147146

`A187076(n)*A309873(n²+1)`
-/

namespace A000727.P17191176701356147146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187076 n * A309873 (n ^ 2 + 1)

end

end A000727.P17191176701356147146

/-!
# A000728: Expansion of Product_{n>=1} (1-x^n)^5.

The programs for A000728, there is no canonical definition to state claims against.
-/

/-! ## A000728.P10484491012496270960

`A286354(A055999(n+3))`
-/

namespace A000728.P10484491012496270960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A055999 (n + 3)).toNat

end

end A000728.P10484491012496270960

/-! ## A000728.P9907055024119929834

`A286354(Δ[A023551(n+1)])`
-/

namespace A000728.P9907055024119929834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (f1 (n + 1) - f1 n).toNat

end

end A000728.P9907055024119929834

/-! ## A000728.P11513005498949360517

`A286354(Δ[A026054(n+3)])`
-/

namespace A000728.P11513005498949360517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (f1 (n + 1) - f1 n).toNat

end

end A000728.P11513005498949360517

/-! ## A000728.P12805350573151300077

`A286354(Δ[A023545(n+2)]-2)`
-/

namespace A000728.P12805350573151300077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (f1 (n + 1) - f1 n - 2).toNat

end

end A000728.P12805350573151300077

/-! ## A000728.P3338279914867469777

`A050308((n+1)²+n²)`
-/

namespace A000728.P3338279914867469777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050308 ((n + 1) ^ 2 + n ^ 2)

end

end A000728.P3338279914867469777

/-!
# A000729: Expansion of Product_{k >= 1} (1 - x^k)^6.

The programs for A000729, there is no canonical definition to state claims against.
-/

/-! ## A000729.P8999137585469533139

`A033999(n)*A209941(n)`
-/

namespace A000729.P8999137585469533139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A209941 n

end

end A000729.P8999137585469533139

/-! ## A000729.P11440361887163491200

`A062157(n+1)*A209941(n)`
-/

namespace A000729.P11440361887163491200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A209941 n

end

end A000729.P11440361887163491200

/-! ## A000729.P2928093419804994889

`A209941(n)/A033999(n+4)`
-/

namespace A000729.P2928093419804994889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209941 n : ℚ) / (A033999 (n + 4) : ℚ)

end

end A000729.P2928093419804994889

/-! ## A000729.P17838725128214157599

`A056594(2*n)*A209941(n)`
-/

namespace A000729.P17838725128214157599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A209941 n

end

end A000729.P17838725128214157599

/-! ## A000729.P10594645359487603146

`A100051(3*n+1)*A209941(n)`
-/

namespace A000729.P10594645359487603146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (3 * n + 1) * A209941 n

end

end A000729.P10594645359487603146

/-! ## A000729.P10150547750581526415

`A286354(Δ[A023551(n+2)]-1)`
-/

namespace A000729.P10150547750581526415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (f1 (n + 1) - f1 n - 1).toNat

end

end A000729.P10150547750581526415

/-! ## A000729.P12576947996001011354

`A286354(Δ[A026054(n+4)]-1)`
-/

namespace A000729.P12576947996001011354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (f1 (n + 1) - f1 n - 1).toNat

end

end A000729.P12576947996001011354

/-! ## A000729.P9591239146135348585

`A050309((n+1)²+n²)`
-/

namespace A000729.P9591239146135348585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050309 ((n + 1) ^ 2 + n ^ 2)

end

end A000729.P9591239146135348585

/-!
# A000730: Expansion of Product_{n>=1} (1 - x^n)^7.

The programs for A000730, there is no canonical definition to state claims against.
-/

/-! ## A000730.P7546343541993826980

`A286354(A055999(n+5)-2)`
-/

namespace A000730.P7546343541993826980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A055999 (n + 5) - 2).toNat

end

end A000730.P7546343541993826980

/-! ## A000730.P15601232622883579731

`A286354(A052905(n+5)-3)`
-/

namespace A000730.P15601232622883579731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A052905 (n + 5) - 3).toNat

end

end A000730.P15601232622883579731

/-! ## A000730.P12181321710244577388

`A286354(A000096(n+7)-7)`
-/

namespace A000730.P12181321710244577388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000096 (n + 7) - 7).toNat

end

end A000730.P12181321710244577388

/-! ## A000730.P15933002898314171691

`A286354(A000217(n+8)-8)`
-/

namespace A000730.P15933002898314171691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000217 (n + 8) - 8).toNat

end

end A000730.P15933002898314171691

/-! ## A000730.P16835982790304058694

`A286354(A167614(n+6)-(3-n))`
-/

namespace A000730.P16835982790304058694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167614 (n + 6) - (3 - (n : ℤ))).toNat

end

end A000730.P16835982790304058694

/-! ## A000730.P3516782241390495613

`A286354(A046691(n+12)-A016921(n+12))`
-/

namespace A000730.P3516782241390495613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A046691 (n + 12) - A016921 (n + 12)).toNat

end

end A000730.P3516782241390495613

/-! ## A000730.P16191139822299366415

`A050310((n+1)²+n²)`
-/

namespace A000730.P16191139822299366415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050310 ((n + 1) ^ 2 + n ^ 2)

end

end A000730.P16191139822299366415

/-!
# A000731: Expansion of Product (1 - x^k)^8 in powers of x.

The programs for A000731, there is no canonical definition to state claims against.
-/

/-! ## A000731.P10158308631789449929

`A033999(n)*A161969(n)`
-/

namespace A000731.P10158308631789449929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A161969 n

end

end A000731.P10158308631789449929

/-! ## A000731.P12745333530441602956

`A161969(n)*A309873(n+1)`
-/

namespace A000731.P12745333530441602956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161969 n * A309873 (n + 1)

end

end A000731.P12745333530441602956

/-! ## A000731.P10468823409879803490

`(2-A010684(n))*A161969(n)`
-/

namespace A000731.P10468823409879803490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A161969 n

end

end A000731.P10468823409879803490

/-! ## A000731.P8484504757895822128

`(2-A053381(n))*A161969(n)`
-/

namespace A000731.P8484504757895822128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A053381 n) * A161969 n

end

end A000731.P8484504757895822128

/-! ## A000731.P14214033031012210806

`(2-A056753(n))*A161969(n)`
-/

namespace A000731.P14214033031012210806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A056753 n) * A161969 n

end

end A000731.P14214033031012210806

/-! ## A000731.P14873236388873714572

`(2-A037227(n+1))*A161969(n)`
-/

namespace A000731.P14873236388873714572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A037227 (n + 1)) * A161969 n

end

end A000731.P14873236388873714572

/-! ## A000731.P17241728747499274908

`(2-A038712(n+1))*A161969(n)`
-/

namespace A000731.P17241728747499274908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A038712 (n + 1)) * A161969 n

end

end A000731.P17241728747499274908

/-! ## A000731.P4143040787398737786

`(2-A090740(n+1))*A161969(n)`
-/

namespace A000731.P4143040787398737786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A090740 (n + 1)) * A161969 n

end

end A000731.P4143040787398737786

/-! ## A000731.P9524355072541704277

`(2-A094603(n+1))*A161969(n)`
-/

namespace A000731.P9524355072541704277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A094603 (n + 1)) * A161969 n

end

end A000731.P9524355072541704277

/-! ## A000731.P12264614829391435736

`(2-A112132(n+1))*A161969(n)`
-/

namespace A000731.P12264614829391435736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A112132 (n + 1)) * A161969 n

end

end A000731.P12264614829391435736

/-! ## A000731.P8639077986508864084

`(2-A115364(n+1))*A161969(n)`
-/

namespace A000731.P8639077986508864084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A115364 (n + 1)) * A161969 n

end

end A000731.P8639077986508864084

/-! ## A000731.P2953488565535801914

`(2-A233267(n+1))*A161969(n)`
-/

namespace A000731.P2953488565535801914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A233267 (n + 1)) * A161969 n

end

end A000731.P2953488565535801914

/-! ## A000731.P17943585619277103367

`(2-A233269(n+1))*A161969(n)`
-/

namespace A000731.P17943585619277103367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A233269 (n + 1)) * A161969 n

end

end A000731.P17943585619277103367

/-! ## A000731.P9432081692524271993

`(2-A276391(n+1))*A161969(n)`
-/

namespace A000731.P9432081692524271993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A276391 (n + 1)) * A161969 n

end

end A000731.P9432081692524271993

/-! ## A000731.P4477475061134981961

`(2-Δ[A000695(n)])*A161969(n)`
-/

namespace A000731.P4477475061134981961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A161969 n

end

end A000731.P4477475061134981961

/-! ## A000731.P14497087560067812781

`A153729(n)/A176563(n)`
-/

namespace A000731.P14497087560067812781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (A176563 n : ℚ)

end

end A000731.P14497087560067812781

/-! ## A000731.P6596388562144275992

`2*A161969(n)-A153729(n)`
-/

namespace A000731.P6596388562144275992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161969 n - A153729 n

end

end A000731.P6596388562144275992

/-! ## A000731.P7542007107810327459

`A261278(3*n+1)`
-/

namespace A000731.P7542007107810327459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261278 (3 * n + 1)

end

end A000731.P7542007107810327459

/-! ## A000731.P11376595423379669966

`A286354(Δ[A111144(n)]+1)`
-/

namespace A000731.P11376595423379669966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (f1 (n + 1) - f1 n + 1).toNat

end

end A000731.P11376595423379669966

/-!
# A000732: Boustrophedon transform of 1 & primes: 1,2,3,5,7,...

The programs for A000732, there is no canonical definition to state claims against.
-/

/-! ## A000732.P16845113032181599339

`∑[A375815((n+1)^n)]`
-/

namespace A000732.P16845113032181599339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 ((n + 1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000732.P16845113032181599339

/-! ## A000732.P10279321073379032396

`A114873(2*or(1, a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A000732.P10279321073379032396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A114873 (2 * Int.lor 1 (a (n - 2))).toNat

end

end A000732.P10279321073379032396

/-!
# A000733: Boustrophedon transform of partition numbers 1, 1, 1, 2, 3, 5, 7, ...

The programs for A000733, there is no canonical definition to state claims against.
-/

/-! ## A000733.P4416613467890488202

`A008624(A000746(n)-A123108(n))`
-/

namespace A000733.P4416613467890488202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A000746 n - A123108 n).toNat

end

end A000733.P4416613467890488202

/-! ## A000733.P7208642243057893435

`A008616(7*A000744(n))`
-/

namespace A000733.P7208642243057893435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (7 * A000744 n).toNat

end

end A000733.P7208642243057893435

/-!
# A000734: Boustrophedon transform of 1,1,2,4,8,16,32,...

The programs for A000734, there is no canonical definition to state claims against.
-/

/-! ## A000734.P9461211595212943707

`(A000752(n)+A000111(n))/2`
-/

namespace A000734.P9461211595212943707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000752 n + A000111 n : ℚ) / 2

end

end A000734.P9461211595212943707

/-! ## A000734.P4306784545252515252

`(A000752(n)+A000111(n))*2^A008683(A000040(n+1))`
-/

namespace A000734.P4306784545252515252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000752 n + A000111 n : ℚ) * (2 : ℚ) ^ (A008683 (A000040 (n + 1)).toNat : ℤ)

end

end A000734.P4306784545252515252

/-! ## A000734.P11100610908837898475

`A001281(A000752(n)+A000111(n))`
-/

namespace A000734.P11100610908837898475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A000752 n + A000111 n).toNat

end

end A000734.P11100610908837898475

/-! ## A000734.P10326752952663998406

`A004525(A000752(n)+A000111(n))`
-/

namespace A000734.P10326752952663998406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000752 n + A000111 n).toNat

end

end A000734.P10326752952663998406

/-!
# A000735: Expansion of Product_{k>=1} (1 - x^k)^12.

The programs for A000735, there is no canonical definition to state claims against.
-/

/-! ## A000735.P7569407152535100365

`(-1)^n*A209676(n)`
-/

namespace A000735.P7569407152535100365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A209676 n

end

end A000735.P7569407152535100365

/-! ## A000735.P5345496005380492581

`A209676(n)/A033999(n)`
-/

namespace A000735.P5345496005380492581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209676 n : ℚ) / (A033999 n : ℚ)

end

end A000735.P5345496005380492581

/-! ## A000735.P17279970773566172447

`A209676(n)/A062157(n+1)`
-/

namespace A000735.P17279970773566172447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209676 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A000735.P17279970773566172447

/-! ## A000735.P17136791237963005545

`A209676(n)*A280328(n)/A280384(n)`
-/

namespace A000735.P17136791237963005545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209676 n * A280328 n : ℚ) / (A280384 n : ℚ)

end

end A000735.P17136791237963005545

/-! ## A000735.P2912535727163221171

`2*A225543(n)-A225923(n)`
-/

namespace A000735.P2912535727163221171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225543 n - A225923 n

end

end A000735.P2912535727163221171

/-! ## A000735.P16513421788687332868

`A227239(Δ[n²])`
-/

namespace A000735.P16513421788687332868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227239 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000735.P16513421788687332868

/-! ## A000735.P13413093897579130353

`A227239(n+1+n)+A000007(n+1)`
-/

namespace A000735.P13413093897579130353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227239 (n + 1 + n) + A000007 (n + 1)

end

end A000735.P13413093897579130353

/-!
# A000736: Boustrophedon transform of Catalan numbers 1, 1, 1, 2, 5, 14, ...

The programs for A000736, there is no canonical definition to state claims against.
-/

/-! ## A000736.P10625863507861012424

`A187185(5*A212827(n+1))`
-/

namespace A000736.P10625863507861012424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (5 * A212827 (n + 1)).toNat

end

end A000736.P10625863507861012424

/-! ## A000736.P427362234006290572

`A187185(5*A212828(n+1))`
-/

namespace A000736.P427362234006290572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (5 * A212828 (n + 1)).toNat

end

end A000736.P427362234006290572

/-! ## A000736.P11996382668687145419

`A279199(n+1)+A050433(A154638(n+1))`
-/

namespace A000736.P11996382668687145419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279199 (n + 1) + A050433 (A154638 (n + 1)).toNat

end

end A000736.P11996382668687145419

/-!
# A000737: Boustrophedon transform of natural numbers, cf. A000027.

The programs for A000737, there is no canonical definition to state claims against.
-/

/-! ## A000737.P2201946638372122767

`A231179(n)+A000667(n)`
-/

namespace A000737.P2201946638372122767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231179 n + A000667 n

end

end A000737.P2201946638372122767

/-! ## A000737.P12343542338131517578

`A000754(n)-A231179(n)`
-/

namespace A000737.P12343542338131517578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000754 n - A231179 n

end

end A000737.P12343542338131517578

/-! ## A000737.P18004347433902578368

`(A000754(n)+A000667(n))/2`
-/

namespace A000737.P18004347433902578368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000754 n + A000667 n : ℚ) / 2

end

end A000737.P18004347433902578368

/-! ## A000737.P15886467689608198822

`2*A000746(n)-A000745(n)`
-/

namespace A000737.P15886467689608198822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000746 n - A000745 n

end

end A000737.P15886467689608198822

/-! ## A000737.P229877429209339148

`A000667(n)+A231200(n)/2`
-/

namespace A000737.P229877429209339148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000667 n : ℚ) + (A231200 n : ℚ) / 2

end

end A000737.P229877429209339148

/-! ## A000737.P8599322889595838647

`A000754(n)-A231200(n)/2`
-/

namespace A000737.P8599322889595838647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000754 n : ℚ) - (A231200 n : ℚ) / 2

end

end A000737.P8599322889595838647

/-! ## A000737.P4522846531282195963

`A292975(A034856(n+1))+A231179(n)`
-/

namespace A000737.P4522846531282195963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A034856 (n + 1)).toNat + A231179 n

end

end A000737.P4522846531282195963

/-! ## A000737.P6025085038155486901

`A003701(n)+A231179(n)+A009739(n)`
-/

namespace A000737.P6025085038155486901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003701 n + (A231179 n + A009739 n)

end

end A000737.P6025085038155486901

/-! ## A000737.P17146251006080243454

`A062161(n)+A231179(n)+A062272(n)`
-/

namespace A000737.P17146251006080243454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 n + (A231179 n + A062272 n)

end

end A000737.P17146251006080243454

/-! ## A000737.P4318672247672424118

`A230950(n)+A231179(n)+A230951(n)`
-/

namespace A000737.P4318672247672424118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230950 n + (A231179 n + A230951 n)

end

end A000737.P4318672247672424118

/-!
# A000738: Boustrophedon transform (first version) of Fibonacci numbers 0,1,1,2,3,...

The programs for A000738, there is no canonical definition to state claims against.
-/

/-! ## A000738.P16707054312524970006

`A000744(n)-A000687(n)`
-/

namespace A000738.P16707054312524970006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000744 n - A000687 n

end

end A000738.P16707054312524970006

/-! ## A000738.P16142067530798028428

`A092073(n)-A000111(n)`
-/

namespace A000738.P16142067530798028428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092073 n - A000111 n

end

end A000738.P16142067530798028428

/-! ## A000738.P18106679550821848166

`A092090(n)-A000744(n)`
-/

namespace A000738.P18106679550821848166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092090 n - A000744 n

end

end A000738.P18106679550821848166

/-! ## A000738.P3343048702350421368

`A092073(n)-abs(A346838(n))`
-/

namespace A000738.P3343048702350421368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092073 n - |A346838 n|

end

end A000738.P3343048702350421368

/-! ## A000738.P398778834485861265

`(A092090(n)-A000687(n))/2`
-/

namespace A000738.P398778834485861265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092090 n - A000687 n : ℚ) / 2

end

end A000738.P398778834485861265

/-!
# A000739: Expansion of Product_{k>=1} (1 - x^k)^16.

The programs for A000739, there is no canonical definition to state claims against.
-/

/-! ## A000739.P572988442758983057

`A286354(eq[16, A025581(n)])`
-/

namespace A000739.P572988442758983057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000739.P572988442758983057

/-! ## A000739.P16600314069907495554

`A286354(eq[17, A193739(n)])`
-/

namespace A000739.P16600314069907495554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000739.P16600314069907495554

/-! ## A000739.P8731654532296845029

`A286354(eq[33, A099375(n)])`
-/

namespace A000739.P8731654532296845029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000739.P8731654532296845029

/-! ## A000739.P10676845202218534896

`A286354(eq[17, A004736(n+1)])`
-/

namespace A000739.P10676845202218534896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000739.P10676845202218534896

/-! ## A000739.P1869051578329494575

`A286354(A167614(n+15)-(3-n))`
-/

namespace A000739.P1869051578329494575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167614 (n + 15) - (3 - (n : ℤ))).toNat

end

end A000739.P1869051578329494575

/-!
# A000740: Number of 2n-bead balanced binary necklaces of fundamental period 2n, equivalent to reversed complement; also Dirichlet convolution of b_n=2^(n-1) with mu(n); also number of components of Mandelbrot set corresponding to Julia sets with an attractive n-cycle.

The programs for A000740, the canonical program `A000740.P14835443835842648949` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000740 has offset 1).

The definition of A000740 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027375, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000740.P14835443835842648949

`A027375(n+1)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A000740

/-- `A027375(n+1)/2` -/
def P14835443835842648949.Spec : Prop :=
  ∀ n, P14835443835842648949.a n = (A000740 (n + 1) : ℚ)

end A000740

/-! ## A000740.P272434397806269356

`∑{d}[n+1, A296302(#)]`
-/

namespace A000740.P272434397806269356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296302 d

end

end A000740.P272434397806269356

namespace A000740

/-- `∑{d}[n+1, A296302(#)]` -/
def P272434397806269356.Spec : Prop :=
  ∀ n, P272434397806269356.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P12284852490601569573

`2^n-A178472(n+1)`
-/

namespace A000740.P12284852490601569573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A178472 (n + 1)

end

end A000740.P12284852490601569573

namespace A000740

/-- `2^n-A178472(n+1)` -/
def P12284852490601569573.Spec : Prop :=
  ∀ n, P12284852490601569573.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P7916887867314235446

`or(char[n²²], A056278(n+1))`
-/

namespace A000740.P7916887867314235446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A056278 (n + 1))

end

end A000740.P7916887867314235446

namespace A000740

/-- `or(char[n²²], A056278(n+1))` -/
def P7916887867314235446.Spec : Prop :=
  ∀ n, P7916887867314235446.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P7706915994578924811

`(n+1)/2*A001037(n+1)`
-/

namespace A000740.P7706915994578924811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A001037 (n + 1) : ℚ)

end

end A000740.P7706915994578924811

namespace A000740

/-- `(n+1)/2*A001037(n+1)` -/
def P7706915994578924811.Spec : Prop :=
  ∀ n, P7706915994578924811.a n = (A000740 (n + 1) : ℚ)

end A000740

/-! ## A000740.P13330036183552456476

`A056278(A254667(n+1))`
-/

namespace A000740.P13330036183552456476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (A254667 (n + 1)).toNat

end

end A000740.P13330036183552456476

namespace A000740

/-- `A056278(A254667(n+1))` -/
def P13330036183552456476.Spec : Prop :=
  ∀ n, P13330036183552456476.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P12791745501609898258

`A056278(A233583(n+2))`
-/

namespace A000740.P12791745501609898258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (A233583 (n + 2)).toNat

end

end A000740.P12791745501609898258

namespace A000740

/-- `A056278(A233583(n+2))` -/
def P12791745501609898258.Spec : Prop :=
  ∀ n, P12791745501609898258.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P6704898741265916584

`A056278(n+1)+A000007(n)`
-/

namespace A000740.P6704898741265916584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (n + 1) + A000007 n

end

end A000740.P6704898741265916584

namespace A000740

/-- `A056278(n+1)+A000007(n)` -/
def P6704898741265916584.Spec : Prop :=
  ∀ n, P6704898741265916584.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P13714497221595188752

`A056278(A004277(n)+1-n)`
-/

namespace A000740.P13714497221595188752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (A004277 n + (1 - (n : ℤ))).toNat

end

end A000740.P13714497221595188752

namespace A000740

/-- `A056278(A004277(n)+1-n)` -/
def P13714497221595188752.Spec : Prop :=
  ∀ n, P13714497221595188752.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P8945515936602571812

`A056278(A057428(n)+2+n)`
-/

namespace A000740.P8945515936602571812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (A057428 n + 2 + (n : ℤ)).toNat

end

end A000740.P8945515936602571812

namespace A000740

/-- `A056278(A057428(n)+2+n)` -/
def P8945515936602571812.Spec : Prop :=
  ∀ n, P8945515936602571812.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P17376011265821158180

`A056278(1-(n-A004277(n)))`
-/

namespace A000740.P17376011265821158180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (1 - ((n : ℤ) - A004277 n)).toNat

end

end A000740.P17376011265821158180

namespace A000740

/-- `A056278(1-(n-A004277(n)))` -/
def P17376011265821158180.Spec : Prop :=
  ∀ n, P17376011265821158180.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P5643991590388790265

`A006876(n+1)+A006875(n+1)`
-/

namespace A000740.P5643991590388790265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006876 (n + 1) + A006875 (n + 1)

end

end A000740.P5643991590388790265

namespace A000740

/-- `A006876(n+1)+A006875(n+1)` -/
def P5643991590388790265.Spec : Prop :=
  ∀ n, P5643991590388790265.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P8185313356928353703

`A045687(n+1)+A045683(n+1)`
-/

namespace A000740.P8185313356928353703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045687 (n + 1) + A045683 (n + 1)

end

end A000740.P8185313356928353703

namespace A000740

/-- `A045687(n+1)+A045683(n+1)` -/
def P8185313356928353703.Spec : Prop :=
  ∀ n, P8185313356928353703.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P18348708230180808786

`A056278(n+1)+A000079(n)%2`
-/

namespace A000740.P18348708230180808786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (n + 1) + Int.tmod (A000079 n) 2

end

end A000740.P18348708230180808786

namespace A000740

/-- `A056278(n+1)+A000079(n)%2` -/
def P18348708230180808786.Spec : Prop :=
  ∀ n, P18348708230180808786.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P7233640209296192900

`A056278(n+1)+char[A056313(n+1)]`
-/

namespace A000740.P7233640209296192900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056313 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000740.P7233640209296192900

namespace A000740

/-- `A056278(n+1)+char[A056313(n+1)]` -/
def P7233640209296192900.Spec : Prop :=
  ∀ n, P7233640209296192900.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P15274868471217382852

`A056278(n+1)+char[A056322(n+1)]`
-/

namespace A000740.P15274868471217382852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056322 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000740.P15274868471217382852

namespace A000740

/-- `A056278(n+1)+char[A056322(n+1)]` -/
def P15274868471217382852.Spec : Prop :=
  ∀ n, P15274868471217382852.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P3728232018521148714

`2*A123707(n+1)-A008683(n+1)`
-/

namespace A000740.P3728232018521148714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123707 (n + 1) - A008683 (n + 1)

end

end A000740.P3728232018521148714

namespace A000740

/-- `2*A123707(n+1)-A008683(n+1)` -/
def P3728232018521148714.Spec : Prop :=
  ∀ n, P3728232018521148714.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P8905386565282123348

`A056278(n+1)+A225367(n+1)%2`
-/

namespace A000740.P8905386565282123348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (n + 1) + Int.tmod (A225367 (n + 1)) 2

end

end A000740.P8905386565282123348

namespace A000740

/-- `A056278(n+1)+A225367(n+1)%2` -/
def P8905386565282123348.Spec : Prop :=
  ∀ n, P8905386565282123348.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P5277373999517752147

`∑{d}[n+1, A006874(#)*A006876((n+1)/#)]`
-/

namespace A000740.P5277373999517752147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006874 d * A006876 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000740.P5277373999517752147

namespace A000740

/-- `∑{d}[n+1, A006874(#)*A006876((n+1)/#)]` -/
def P5277373999517752147.Spec : Prop :=
  ∀ n, P5277373999517752147.a n = A000740 (n + 1)

end A000740

/-! ## A000740.P1072263744876161815

`∑{d}[n+1, A007427(#)*A034729((n+1)/#)]`
-/

namespace A000740.P1072263744876161815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000740.P1072263744876161815

namespace A000740

/-- `∑{d}[n+1, A007427(#)*A034729((n+1)/#)]` -/
def P1072263744876161815.Spec : Prop :=
  ∀ n, P1072263744876161815.a n = A000740 (n + 1)

end A000740

/-!
# A000741: Number of compositions of n into 3 ordered relatively prime parts.

The programs for A000741, the canonical program `A000741.P6152185288410453869` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000741 has offset 1).

The definition of A000741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000741.P6402938899412199588

`Δ[A015616(A028310(n))]`
-/

namespace A000741.P6402938899412199588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000741.P6402938899412199588

namespace A000741

/-- `Δ[A015616(A028310(n))]` -/
def P6402938899412199588.Spec : Prop :=
  ∀ n, P6402938899412199588.a n = A000741 (n + 1)

end A000741

/-! ## A000741.P6152185288410453869

`A161680(n)-A344574(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000741

/-- `A161680(n)-A344574(n+1)` -/
def P6152185288410453869.Spec : Prop :=
  ∀ n, P6152185288410453869.a n = A000741 (n + 1)

theorem P6152185288410453869.correct : P6152185288410453869.Spec := by
  intro n
  simp only [A000741, Nat.add_sub_cancel]

end A000741

/-! ## A000741.P5142455470669990770

`A007438(n+1)-A140434(n+1)`
-/

namespace A000741.P5142455470669990770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - A140434 (n + 1)

end

end A000741.P5142455470669990770

namespace A000741

/-- `A007438(n+1)-A140434(n+1)` -/
def P5142455470669990770.Spec : Prop :=
  ∀ n, P5142455470669990770.a n = A000741 (n + 1)

end A000741

/-! ## A000741.P11004101118854115524

`A326419(n+1)-A000010(n+1)`
-/

namespace A000741.P11004101118854115524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326419 (n + 1) - A000010 (n + 1)

end

end A000741.P11004101118854115524

namespace A000741

/-- `A326419(n+1)-A000010(n+1)` -/
def P11004101118854115524.Spec : Prop :=
  ∀ n, P11004101118854115524.a n = A000741 (n + 1)

end A000741

/-! ## A000741.P179117498687885509

`A133725(n+1)%A007438(n+1)`
-/

namespace A000741.P179117498687885509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133725 (n + 1)) (A007438 (n + 1))

end

end A000741.P179117498687885509

namespace A000741

/-- `A133725(n+1)%A007438(n+1)` -/
def P179117498687885509.Spec : Prop :=
  ∀ n, P179117498687885509.a n = A000741 (n + 1)

end A000741

/-! ## A000741.P14775278981091541126

`∑{d}[n+1, A007427(#)*A363610((n+1)/#)]`
-/

namespace A000741.P14775278981091541126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A363610 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000741.P14775278981091541126

namespace A000741

/-- `∑{d}[n+1, A007427(#)*A363610((n+1)/#)]` -/
def P14775278981091541126.Spec : Prop :=
  ∀ n, P14775278981091541126.a n = A000741 (n + 1)

end A000741

/-! ## A000741.P4905797367733413825

`∑{d}[n+1, A161680(#-1)*A008683((n+1)/#)]`
-/

namespace A000741.P4905797367733413825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161680 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000741.P4905797367733413825

namespace A000741

/-- `∑{d}[n+1, A161680(#-1)*A008683((n+1)/#)]` -/
def P4905797367733413825.Spec : Prop :=
  ∀ n, P4905797367733413825.a n = A000741 (n + 1)

end A000741

/-! ## A000741.P10185047759966477379

`A015616(n+1)-A015616(A028310(n))`
-/

namespace A000741.P10185047759966477379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 1) - A015616 (A028310 n).toNat

end

end A000741.P10185047759966477379

namespace A000741

/-- `A015616(n+1)-A015616(A028310(n))` -/
def P10185047759966477379.Spec : Prop :=
  ∀ n, P10185047759966477379.a n = A000741 (n + 1)

end A000741

/-! ## A000741.P12250019648030536099

`A015616(n+1)-A015616(A000007(n)+n)`
-/

namespace A000741.P12250019648030536099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 1) - A015616 (A000007 n + (n : ℤ)).toNat

end

end A000741.P12250019648030536099

namespace A000741

/-- `A015616(n+1)-A015616(A000007(n)+n)` -/
def P12250019648030536099.Spec : Prop :=
  ∀ n, P12250019648030536099.a n = A000741 (n + 1)

end A000741

/-! ## A000741.P14045021152684130500

`Δ[A015616(A000007(n)+n)]`
-/

namespace A000741.P14045021152684130500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000741.P14045021152684130500

namespace A000741

/-- `Δ[A015616(A000007(n)+n)]` -/
def P14045021152684130500.Spec : Prop :=
  ∀ n, P14045021152684130500.a n = A000741 (n + 1)

end A000741

/-! ## A000741.P2880272107358957022

`A048240(2*(n+1))%A048240(n+1)`
-/

namespace A000741.P2880272107358957022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048240 (2 * (n + 1))) (A048240 (n + 1))

end

end A000741.P2880272107358957022

namespace A000741

/-- `A048240(2*(n+1))%A048240(n+1)` -/
def P2880272107358957022.Spec : Prop :=
  ∀ n, P2880272107358957022.a n = A000741 (n + 1)

end A000741

/-! ## A000741.P2834324402663115193

`Δ[A015616(A003056(A133263(n)))]`
-/

namespace A000741.P2834324402663115193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (A003056 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000741.P2834324402663115193

namespace A000741

/-- `Δ[A015616(A003056(A133263(n)))]` -/
def P2834324402663115193.Spec : Prop :=
  ∀ n, P2834324402663115193.a n = A000741 (n + 1)

end A000741

/-!
# A000742: Number of compositions of n into 4 ordered relatively prime parts.

The programs for A000742, the canonical program `A000742.P13490306228597101565` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000742 has offset 4).

The definition of A000742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1017 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000742.P13490306228597101565

`Δ[A015627(n+3)+∑[∑[n]]]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A000742

/-- `Δ[A015627(n+3)+∑[∑[n]]]` -/
def P13490306228597101565.Spec : Prop :=
  ∀ n, P13490306228597101565.a n = A000742 (n + 4)

theorem P13490306228597101565.correct : P13490306228597101565.Spec := by
  intro n
  simp only [A000742, Nat.add_sub_cancel]

end A000742

/-! ## A000742.P4084795236478223429

`Δ[A000292(n)]+Δ[A015627(n+3)]`
-/

namespace A000742.P4084795236478223429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015627 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A000742.P4084795236478223429

namespace A000742

/-- `Δ[A000292(n)]+Δ[A015627(n+3)]` -/
def P4084795236478223429.Spec : Prop :=
  ∀ n, P4084795236478223429.a n = A000742 (n + 4)

end A000742

/-! ## A000742.P13728206928449254829

`Δ[A015627(n+3)]+A000096(n)+1`
-/

namespace A000742.P13728206928449254829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015627 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A000096 n + 1)

end

end A000742.P13728206928449254829

namespace A000742

/-- `Δ[A015627(n+3)]+A000096(n)+1` -/
def P13728206928449254829.Spec : Prop :=
  ∀ n, P13728206928449254829.a n = A000742 (n + 4)

end A000742

/-! ## A000742.P1608406605737845890

`A000217(n+1)+Δ[A015627(n+3)]`
-/

namespace A000742.P1608406605737845890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015627 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (f1 (n + 1) - f1 n)

end

end A000742.P1608406605737845890

namespace A000742

/-- `A000217(n+1)+Δ[A015627(n+3)]` -/
def P1608406605737845890.Spec : Prop :=
  ∀ n, P1608406605737845890.a n = A000742 (n + 4)

end A000742

/-! ## A000742.P10555583288954023160

`Δ[A015622(n+3)]`
-/

namespace A000742.P10555583288954023160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015622 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000742.P10555583288954023160

namespace A000742

/-- `Δ[A015622(n+3)]` -/
def P10555583288954023160.Spec : Prop :=
  ∀ n, P10555583288954023160.a n = A000742 (n + 4)

end A000742

/-! ## A000742.P12237867579511948760

`A015622(n+4)-A015622(n+3)`
-/

namespace A000742.P12237867579511948760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015622 (n + 4) - A015622 (n + 3)

end

end A000742.P12237867579511948760

namespace A000742

/-- `A015622(n+4)-A015622(n+3)` -/
def P12237867579511948760.Spec : Prop :=
  ∀ n, P12237867579511948760.a n = A000742 (n + 4)

end A000742

/-!
# A000743: Number of compositions of n into 5 ordered relatively prime parts.

The programs for A000743, the canonical program `A000743.P6553726784885921065` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000743 has offset 5).

The definition of A000743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000743.P6553726784885921065

`Δ[A015640(n+4)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A000743

/-- `Δ[A015640(n+4)]` -/
def P6553726784885921065.Spec : Prop :=
  ∀ n, P6553726784885921065.a n = A000743 (n + 5)

theorem P6553726784885921065.correct : P6553726784885921065.Spec := by
  intro n
  simp only [A000743, Nat.add_sub_cancel]

end A000743

/-! ## A000743.P11158139898888906687

`abs(Δ[A015640(A020705(n))])`
-/

namespace A000743.P11158139898888906687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (A020705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000743.P11158139898888906687

namespace A000743

/-- `abs(Δ[A015640(A020705(n))])` -/
def P11158139898888906687.Spec : Prop :=
  ∀ n, P11158139898888906687.a n = A000743 (n + 5)

end A000743

/-! ## A000743.P14641269755077827321

`Δ[record[A015640(A052938(n))]]`
-/

namespace A000743.P14641269755077827321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000743.P14641269755077827321

namespace A000743

/-- `Δ[record[A015640(A052938(n))]]` -/
def P14641269755077827321.Spec : Prop :=
  ∀ n, P14641269755077827321.a n = A000743 (n + 5)

end A000743

/-! ## A000743.P11308812140789560900

`Δ[A015640(A020705(n))*A057427(n)]`
-/

namespace A000743.P11308812140789560900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (A020705 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000743.P11308812140789560900

namespace A000743

/-- `Δ[A015640(A020705(n))*A057427(n)]` -/
def P11308812140789560900.Spec : Prop :=
  ∀ n, P11308812140789560900.a n = A000743 (n + 5)

end A000743

/-! ## A000743.P9604320940938453766

`Δ[A015640(A020705(n))]-A000035(2*n)`
-/

namespace A000743.P9604320940938453766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (A020705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000035 (2 * n)

end

end A000743.P9604320940938453766

namespace A000743

/-- `Δ[A015640(A020705(n))]-A000035(2*n)` -/
def P9604320940938453766.Spec : Prop :=
  ∀ n, P9604320940938453766.a n = A000743 (n + 5)

end A000743

/-! ## A000743.P3799260926291390972

`Δ[A015640(A020705(n))]/A010892(3*n)²`
-/

namespace A000743.P3799260926291390972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (A020705 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A010892 (3 * n) ^ 2 : ℚ)

end

end A000743.P3799260926291390972

namespace A000743

/-- `Δ[A015640(A020705(n))]/A010892(3*n)²` -/
def P3799260926291390972.Spec : Prop :=
  ∀ n, P3799260926291390972.a n = (A000743 (n + 5) : ℚ)

end A000743

/-! ## A000743.P11085924910422771930

`Δ[record[A015640(A028920(n))]]`
-/

namespace A000743.P11085924910422771930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000743.P11085924910422771930

namespace A000743

/-- `Δ[record[A015640(A028920(n))]]` -/
def P11085924910422771930.Spec : Prop :=
  ∀ n, P11085924910422771930.a n = A000743 (n + 5)

end A000743

/-!
# A000744: Boustrophedon transform (second version) of Fibonacci numbers 1,1,2,3,...

The programs for A000744, there is no canonical definition to state claims against.
-/

/-! ## A000744.P15379260936654032504

`A000738(n)+A000687(n)`
-/

namespace A000744.P15379260936654032504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000738 n + A000687 n

end

end A000744.P15379260936654032504

/-! ## A000744.P3877268580728453659

`A092090(n)-A000738(n)`
-/

namespace A000744.P3877268580728453659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092090 n - A000738 n

end

end A000744.P3877268580728453659

/-! ## A000744.P14221036007374419123

`(A092090(n)+A000687(n))/2`
-/

namespace A000744.P14221036007374419123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092090 n + A000687 n : ℚ) / 2

end

end A000744.P14221036007374419123

/-! ## A000744.P3668354221394947072

`A000687(n)+A092073(n)-A000111(n)`
-/

namespace A000744.P3668354221394947072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000687 n + (A092073 n - A000111 n)

end

end A000744.P3668354221394947072

/-! ## A000744.P8727726395505599586

`A000111(n)+A092090(n)-A092073(n)`
-/

namespace A000744.P8727726395505599586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (A092090 n - A092073 n)

end

end A000744.P8727726395505599586

/-!
# A000745: Boustrophedon transform of squares.

The programs for A000745, there is no canonical definition to state claims against.
-/

/-! ## A000745.P13632305507037908457

`2*A000746(n)-A000737(n)`
-/

namespace A000745.P13632305507037908457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000746 n - A000737 n

end

end A000745.P13632305507037908457

/-! ## A000745.P9379661160060817820

`A000697(n)+A000754(n)-A000111(n)`
-/

namespace A000745.P9379661160060817820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000697 n + (A000754 n - A000111 n)

end

end A000745.P9379661160060817820

/-! ## A000745.P6167387969274931432

`A000718(n)+A000746(n)-A000111(n)`
-/

namespace A000745.P6167387969274931432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000718 n + (A000746 n - A000111 n)

end

end A000745.P6167387969274931432

/-! ## A000745.P14636815660105121464

`A000746(n)+A308520(n)-A000667(n)`
-/

namespace A000745.P14636815660105121464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000746 n + (A308520 n - A000667 n)

end

end A000745.P14636815660105121464

/-! ## A000745.P923177664519568524

`2*A000746(n)+A000737(n)*A316441(A000040(n+1))`
-/

namespace A000745.P923177664519568524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000746 n + A000737 n * A316441 (A000040 (n + 1)).toNat

end

end A000745.P923177664519568524

/-!
# A000746: Boustrophedon transform of triangular numbers.

The programs for A000746, there is no canonical definition to state claims against.
-/

/-! ## A000746.P15070820343637977704

`A308520(n)+A231179(n)`
-/

namespace A000746.P15070820343637977704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308520 n + A231179 n

end

end A000746.P15070820343637977704

/-! ## A000746.P15606766248679440346

`(A000745(n)+A000737(n))/2`
-/

namespace A000746.P15606766248679440346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000745 n + A000737 n : ℚ) / 2

end

end A000746.P15606766248679440346

/-! ## A000746.P17053918224526790417

`A308520(n)+A231200(n)/2`
-/

namespace A000746.P17053918224526790417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308520 n : ℚ) + (A231200 n : ℚ) / 2

end

end A000746.P17053918224526790417

/-! ## A000746.P18324169772722883528

`A000111(n)+A000745(n)-A000718(n)`
-/

namespace A000746.P18324169772722883528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (A000745 n - A000718 n)

end

end A000746.P18324169772722883528

/-! ## A000746.P10077650246898695125

`A000718(n)+A000737(n)-A000111(n)`
-/

namespace A000746.P10077650246898695125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000718 n + (A000737 n - A000111 n)

end

end A000746.P10077650246898695125

/-! ## A000746.P3781101399142603130

`A000718(n)+A000754(n)-A000660(n)`
-/

namespace A000746.P3781101399142603130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000718 n + (A000754 n - A000660 n)

end

end A000746.P3781101399142603130

/-! ## A000746.P8934722788616995504

`A000697(n)+A000754(n)-A000718(n)`
-/

namespace A000746.P8934722788616995504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000697 n + (A000754 n - A000718 n)

end

end A000746.P8934722788616995504

/-!
# A000747: Boustrophedon transform of primes.

The programs for A000747, there is no canonical definition to state claims against.
-/

/-! ## A000747.P15508165695391655153

`A095750(n)+A095703(A058692(n+2))`
-/

namespace A000747.P15508165695391655153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095750 n + A095703 (A058692 (n + 2)).toNat

end

end A000747.P15508165695391655153

/-! ## A000747.P9721431408450219337

`A182921(A151082(n+1))`
-/

namespace A000747.P9721431408450219337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182921 (A151082 (n + 1)).toNat

end

end A000747.P9721431408450219337

/-!
# A000748: Expansion of bracket function.

The programs for A000748, the canonical program `A000748.P16132471601073484065` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000748 has offset 0).

The definition of A000748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000748.P16911730372210138433

`A007653(3^n)`
-/

namespace A000748.P16911730372210138433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007653 (3 ^ n)

end

end A000748.P16911730372210138433

namespace A000748

/-- `A007653(3^n)` -/
def P16911730372210138433.Spec : Prop :=
  ∀ n, P16911730372210138433.a n = A000748 n

end A000748

/-! ## A000748.P16132471601073484065

`A033999(n)*A057083(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000748

/-- `A033999(n)*A057083(n)` -/
def P16132471601073484065.Spec : Prop :=
  ∀ n, P16132471601073484065.a n = A000748 n

theorem P16132471601073484065.correct : P16132471601073484065.Spec := by
  intro n
  simp only [A000748]

end A000748

/-! ## A000748.P11727250524428813127

`A057083(n)/A033999(n+2)`
-/

namespace A000748.P11727250524428813127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057083 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A000748.P11727250524428813127

namespace A000748

/-- `A057083(n)/A033999(n+2)` -/
def P11727250524428813127.Spec : Prop :=
  ∀ n, P11727250524428813127.a n = (A000748 n : ℚ)

end A000748

/-! ## A000748.P4275282954816780656

`A056594(2*n)*A057083(n)`
-/

namespace A000748.P4275282954816780656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A057083 n

end

end A000748.P4275282954816780656

namespace A000748

/-- `A056594(2*n)*A057083(n)` -/
def P4275282954816780656.Spec : Prop :=
  ∀ n, P4275282954816780656.a n = A000748 n

end A000748

/-! ## A000748.P15645041302305831386

`A057077(2*n)*A057083(n)`
-/

namespace A000748.P15645041302305831386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A057083 n

end

end A000748.P15645041302305831386

namespace A000748

/-- `A057077(2*n)*A057083(n)` -/
def P15645041302305831386.Spec : Prop :=
  ∀ n, P15645041302305831386.a n = A000748 n

end A000748

/-! ## A000748.P12005271139726172992

`A057083(n)/A057077(A005408(n))`
-/

namespace A000748.P12005271139726172992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057083 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A000748.P12005271139726172992

namespace A000748

/-- `A057083(n)/A057077(A005408(n))` -/
def P12005271139726172992.Spec : Prop :=
  ∀ n, P12005271139726172992.a n = (A000748 n : ℚ)

end A000748

/-! ## A000748.P13635918277222462531

`(A000035(n+1)-A000035(n))*A057083(n)`
-/

namespace A000748.P13635918277222462531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A057083 n

end

end A000748.P13635918277222462531

namespace A000748

/-- `(A000035(n+1)-A000035(n))*A057083(n)` -/
def P13635918277222462531.Spec : Prop :=
  ∀ n, P13635918277222462531.a n = A000748 n

end A000748

/-! ## A000748.P15350044384259342850

`ogf(1/(1+3x+3x^2))`
-/

namespace A000748.P15350044384259342850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 3, 3] n

end

end A000748.P15350044384259342850

namespace A000748

/-- `ogf(1/(1+3x+3x^2))` -/
def P15350044384259342850.Spec : Prop :=
  ∀ n, P15350044384259342850.a n = A000748 n

end A000748

/-! ## A000748.P15697452669030911807

`A123877(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A000748.P15697452669030911807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123877 n - (a (n - 1) + a (n - 1))

end

end A000748.P15697452669030911807

namespace A000748

/-- `A123877(n)-(a(n-1)+a(n-1))` -/
def P15697452669030911807.Spec : Prop :=
  ∀ n, P15697452669030911807.a n = A000748 n

end A000748

/-! ## A000748.P14641251798257606546

`∑[A123877(n)-A123877(n+2)]`
-/

namespace A000748.P14641251798257606546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123877 n - A123877 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000748.P14641251798257606546

namespace A000748

/-- `∑[A123877(n)-A123877(n+2)]` -/
def P14641251798257606546.Spec : Prop :=
  ∀ n, P14641251798257606546.a n = A000748 n

end A000748

/-! ## A000748.P12962476437787008772

`A123877(n+3)/3`
-/

namespace A000748.P12962476437787008772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123877 (n + 3) : ℚ) / 3

end

end A000748.P12962476437787008772

namespace A000748

/-- `A123877(n+3)/3` -/
def P12962476437787008772.Spec : Prop :=
  ∀ n, P12962476437787008772.a n = (A000748 n : ℚ)

end A000748

/-! ## A000748.P9747861655770979277

`A146321(n+1)/A133455(n)*A057083(n)`
-/

namespace A000748.P9747861655770979277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146321 (n + 1) : ℚ) / (A133455 n : ℚ) * (A057083 n : ℚ)

end

end A000748.P9747861655770979277

namespace A000748

/-- `A146321(n+1)/A133455(n)*A057083(n)` -/
def P9747861655770979277.Spec : Prop :=
  ∀ n, P9747861655770979277.a n = (A000748 n : ℚ)

end A000748

/-! ## A000748.P15615559049906970722

`A039912(C(n+3, 2))`
-/

namespace A000748.P15615559049906970722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039912 (Nat.choose (n + 3) 2)

end

end A000748.P15615559049906970722

namespace A000748

/-- `A039912(C(n+3, 2))` -/
def P15615559049906970722.Spec : Prop :=
  ∀ n, P15615559049906970722.a n = A000748 n

end A000748

/-! ## A000748.P17809401600740152121

`A039912(∑[n+2]+1)`
-/

namespace A000748.P17809401600740152121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039912 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000748.P17809401600740152121

namespace A000748

/-- `A039912(∑[n+2]+1)` -/
def P17809401600740152121.Spec : Prop :=
  ∀ n, P17809401600740152121.a n = A000748 n

end A000748

/-! ## A000748.P4530813288811600735

`A307047(∑[n+3])`
-/

namespace A000748.P4530813288811600735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000748.P4530813288811600735

namespace A000748

/-- `A307047(∑[n+3])` -/
def P4530813288811600735.Spec : Prop :=
  ∀ n, P4530813288811600735.a n = A000748 n

end A000748

/-!
# A000749: a(n) = 4*a(n-1) - 6*a(n-2) + 4*a(n-3), n > 3, with a(0)=a(1)=a(2)=0, a(3)=1.

The programs for A000749, the canonical program `A000749.P12361437164808729978` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000749 has offset 0).

The definition of A000749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+4*a(n-3)` (program `A000749.P12361437164808729978`, by `A000749.P12361437164808729978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000749.P7797806699376505925

`2*a(n-1)+A009545(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A000749.P7797806699376505925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * a (n - 1) + A009545 (n - 2)

end

end A000749.P7797806699376505925

namespace A000749

/-- `2*a(n-1)+A009545(n-2)` -/
def P7797806699376505925.Spec : Prop :=
  ∀ n, P7797806699376505925.a n = A000749 n

end A000749

/-! ## A000749.P12361437164808729978

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000749

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P12361437164808729978.Spec : Prop :=
  ∀ n, P12361437164808729978.a n = A000749 n

theorem P12361437164808729978.correct : P12361437164808729978.Spec := by
  intro n
  simp only [A000749]

end A000749

/-! ## A000749.P2401794326351624144

`ogf(x^3/(1-4x+6x^2-4x^3))`
-/

namespace A000749.P2401794326351624144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -4, 6, -4] n

end

end A000749.P2401794326351624144

namespace A000749

/-- `ogf(x^3/(1-4x+6x^2-4x^3))` -/
def P2401794326351624144.Spec : Prop :=
  ∀ n, P2401794326351624144.a n = A000749 n

end A000749

/-! ## A000749.P13016080561730297059

`A138569(2*n)`
-/

namespace A000749.P13016080561730297059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138569 (2 * n)

end

end A000749.P13016080561730297059

namespace A000749

/-- `A138569(2*n)` -/
def P13016080561730297059.Spec : Prop :=
  ∀ n, P13016080561730297059.a n = A000749 n

end A000749

/-! ## A000749.P5067413670766533903

`A137171(4*n)`
-/

namespace A000749.P5067413670766533903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (4 * n)

end

end A000749.P5067413670766533903

namespace A000749

/-- `A137171(4*n)` -/
def P5067413670766533903.Spec : Prop :=
  ∀ n, P5067413670766533903.a n = A000749 n

end A000749

/-! ## A000749.P3437048641476967019

`∑[A038505(abs(1-n))]`
-/

namespace A000749.P3437048641476967019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000749.P3437048641476967019

namespace A000749

/-- `∑[A038505(abs(1-n))]` -/
def P3437048641476967019.Spec : Prop :=
  ∀ n, P3437048641476967019.a n = A000749 n

end A000749

/-! ## A000749.P8046252585707567555

`A038505(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A000749.P8046252585707567555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A038505 (n - 1) + a (n - 1)

end

end A000749.P8046252585707567555

namespace A000749

/-- `A038505(n-1)+a(n-1)` -/
def P8046252585707567555.Spec : Prop :=
  ∀ n, P8046252585707567555.a n = A000749 n

end A000749

/-! ## A000749.P15978405957318692216

`A038504(n)-A009545(n)`
-/

namespace A000749.P15978405957318692216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n - A009545 n

end

end A000749.P15978405957318692216

namespace A000749

/-- `A038504(n)-A009545(n)` -/
def P15978405957318692216.Spec : Prop :=
  ∀ n, P15978405957318692216.a n = A000749 n

end A000749

/-! ## A000749.P12643183810735662036

`A038520(n)+A038521(n)-A038504(n)`
-/

namespace A000749.P12643183810735662036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038520 n + (A038521 n - A038504 n)

end

end A000749.P12643183810735662036

namespace A000749

/-- `A038520(n)+A038521(n)-A038504(n)` -/
def P12643183810735662036.Spec : Prop :=
  ∀ n, P12643183810735662036.a n = A000749 n

end A000749

/-! ## A000749.P7201285305175695998

`A038504(n)+∑[A038505(n)-A038504(n)]`
-/

namespace A000749.P7201285305175695998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n - A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000749.P7201285305175695998

namespace A000749

/-- `A038504(n)+∑[A038505(n)-A038504(n)]` -/
def P7201285305175695998.Spec : Prop :=
  ∀ n, P7201285305175695998.a n = A000749 n

end A000749

/-! ## A000749.P18244634915330268404

`(A158780(n+1)-A046978(n))*A158780(n)`
-/

namespace A000749.P18244634915330268404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158780 (n + 1) - A046978 n) * A158780 n

end

end A000749.P18244634915330268404

namespace A000749

/-- `(A158780(n+1)-A046978(n))*A158780(n)` -/
def P18244634915330268404.Spec : Prop :=
  ∀ n, P18244634915330268404.a n = A000749 n

end A000749

/-! ## A000749.P17912413042485588966

`Δ[A038503(n)]`
-/

namespace A000749.P17912413042485588966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000749.P17912413042485588966

namespace A000749

/-- `Δ[A038503(n)]` -/
def P17912413042485588966.Spec : Prop :=
  ∀ n, P17912413042485588966.a n = A000749 n

end A000749

/-! ## A000749.P17503498132763430288

`A131577(n)-A038504(n)`
-/

namespace A000749.P17503498132763430288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A038504 n

end

end A000749.P17503498132763430288

namespace A000749

/-- `A131577(n)-A038504(n)` -/
def P17503498132763430288.Spec : Prop :=
  ∀ n, P17503498132763430288.a n = A000749 n

end A000749

/-! ## A000749.P10800540156387670413

`∑[A038505(n)]-A038505(n)`
-/

namespace A000749.P10800540156387670413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A038505 n

end

end A000749.P10800540156387670413

namespace A000749

/-- `∑[A038505(n)]-A038505(n)` -/
def P10800540156387670413.Spec : Prop :=
  ∀ n, P10800540156387670413.a n = A000749 n

end A000749

/-! ## A000749.P6219702183228622327

`A038503(n+1)-A038503(n)`
-/

namespace A000749.P6219702183228622327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1) - A038503 n

end

end A000749.P6219702183228622327

namespace A000749

/-- `A038503(n+1)-A038503(n)` -/
def P6219702183228622327.Spec : Prop :=
  ∀ n, P6219702183228622327.a n = A000749 n

end A000749

/-! ## A000749.P7963989702310748436

`A158780(2*n)-A038504(n)`
-/

namespace A000749.P7963989702310748436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n) - A038504 n

end

end A000749.P7963989702310748436

namespace A000749

/-- `A158780(2*n)-A038504(n)` -/
def P7963989702310748436.Spec : Prop :=
  ∀ n, P7963989702310748436.a n = A000749 n

end A000749

/-! ## A000749.P9971496545196988332

`A131577(n)-A137776(2*n)`
-/

namespace A000749.P9971496545196988332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A137776 (2 * n)

end

end A000749.P9971496545196988332

namespace A000749

/-- `A131577(n)-A137776(2*n)` -/
def P9971496545196988332.Spec : Prop :=
  ∀ n, P9971496545196988332.a n = A000749 n

end A000749

/-! ## A000749.P4815990783933537589

`(A131577(n)-A009545(n))/2`
-/

namespace A000749.P4815990783933537589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 n - A009545 n : ℚ) / 2

end

end A000749.P4815990783933537589

namespace A000749

/-- `(A131577(n)-A009545(n))/2` -/
def P4815990783933537589.Spec : Prop :=
  ∀ n, P4815990783933537589.a n = (A000749 n : ℚ)

end A000749

/-! ## A000749.P4577330937887686316

`(∑[A166444(n)]-A009545(n))/2`
-/

namespace A000749.P4577330937887686316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A009545 n : ℤ) : ℚ) / 2

end

end A000749.P4577330937887686316

namespace A000749

/-- `(∑[A166444(n)]-A009545(n))/2` -/
def P4577330937887686316.Spec : Prop :=
  ∀ n, P4577330937887686316.a n = (A000749 n : ℚ)

end A000749

/-! ## A000749.P12029149228179940031

`A137776(2*n+1)-A038504(n)`
-/

namespace A000749.P12029149228179940031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137776 (2 * n + 1) - A038504 n

end

end A000749.P12029149228179940031

namespace A000749

/-- `A137776(2*n+1)-A038504(n)` -/
def P12029149228179940031.Spec : Prop :=
  ∀ n, P12029149228179940031.a n = A000749 n

end A000749

/-!
# A000750: Expansion of bracket function.

The programs for A000750, the canonical program `A000750.P17276910196845925233` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000750 has offset 0).

The definition of A000750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000750.P1203278091364546693

`ogf(1/(1+5x+10x^2+10x^3+5x^4))`
-/

namespace A000750.P1203278091364546693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 5, 10, 10, 5] n

end

end A000750.P1203278091364546693

namespace A000750

/-- `ogf(1/(1+5x+10x^2+10x^3+5x^4))` -/
def P1203278091364546693.Spec : Prop :=
  ∀ n, P1203278091364546693.a n = A000750 n

end A000750

/-! ## A000750.P17276910196845925233

`A033999(n)*A289389(n+4)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000750

/-- `A033999(n)*A289389(n+4)` -/
def P17276910196845925233.Spec : Prop :=
  ∀ n, P17276910196845925233.a n = A000750 n

theorem P17276910196845925233.correct : P17276910196845925233.Spec := by
  intro n
  simp only [A000750]

end A000750

/-! ## A000750.P9560079101796414390

`(A004442(n)-n)*A289389(n+4)`
-/

namespace A000750.P9560079101796414390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A289389 (n + 4)

end

end A000750.P9560079101796414390

namespace A000750

/-- `(A004442(n)-n)*A289389(n+4)` -/
def P9560079101796414390.Spec : Prop :=
  ∀ n, P9560079101796414390.a n = A000750 n

end A000750

/-! ## A000750.P6822356763156210760

`A039912((n+3)²-∑[n+1])`
-/

namespace A000750.P6822356763156210760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039912 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000750.P6822356763156210760

namespace A000750

/-- `A039912((n+3)²-∑[n+1])` -/
def P6822356763156210760.Spec : Prop :=
  ∀ n, P6822356763156210760.a n = A000750 n

end A000750

/-! ## A000750.P4100317206382651381

`A307047(∑[n+5]+5)`
-/

namespace A000750.P4100317206382651381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A000750.P4100317206382651381

namespace A000750

/-- `A307047(∑[n+5]+5)` -/
def P4100317206382651381.Spec : Prop :=
  ∀ n, P4100317206382651381.a n = A000750 n

end A000750

/-!
# A000751: Boustrophedon transform of partition numbers.

The programs for A000751, there is no canonical definition to state claims against.
-/

/-! ## A000751.P4848371776039659547

`A192455(n)+record[A209859(n)]`
-/

namespace A000751.P4848371776039659547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192455 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000751.P4848371776039659547

/-! ## A000751.P12715716268534870214

`A222236(ceil(sqrt(A163948(n+1))))`
-/

namespace A000751.P12715716268534870214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 ⌈Real.sqrt (A163948 (n + 1) : ℝ)⌉.toNat

end

end A000751.P12715716268534870214

/-!
# A000752: Boustrophedon transform of powers of 2.

The programs for A000752, there is no canonical definition to state claims against.
-/

/-! ## A000752.P14713520264754453409

`A292975(∑[n+3])`
-/

namespace A000752.P14713520264754453409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000752.P14713520264754453409

/-! ## A000752.P687051885763729810

`2*A000734(n)-A000111(n)`
-/

namespace A000752.P687051885763729810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000734 n - A000111 n

end

end A000752.P687051885763729810

/-! ## A000752.P7220743522625554870

`record[A292975(n)/A080247(n+2)]`
-/

namespace A000752.P7220743522625554870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292975 n : ℚ) / (A080247 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000752.P7220743522625554870

/-! ## A000752.P12923027896921776926

`lcm(1-and(2, n), A292975(A055998(n+1)))`
-/

namespace A000752.P12923027896921776926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A292975 (A055998 (n + 1)).toNat)

end

end A000752.P12923027896921776926

/-! ## A000752.P3243159450395074878

`record[A292975(A055998(A008611(n)))]`
-/

namespace A000752.P3243159450395074878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A055998 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000752.P3243159450395074878

/-! ## A000752.P17568553688792908719

`record[A292975(A055998(A008612(n)))]`
-/

namespace A000752.P17568553688792908719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A055998 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000752.P17568553688792908719

/-! ## A000752.P7259138790213851031

`record[A292975(A055998(A057979(n)))]`
-/

namespace A000752.P7259138790213851031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A055998 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000752.P7259138790213851031

/-! ## A000752.P2757804359416806970

`record[A292975(A055998(A060145(n)))]`
-/

namespace A000752.P2757804359416806970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A055998 (A060145 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000752.P2757804359416806970

/-! ## A000752.P17649777855019194672

`record[A292975(A055998(A126759(n)))]`
-/

namespace A000752.P17649777855019194672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A055998 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000752.P17649777855019194672

/-! ## A000752.P4792225418778398492

`record[A292975(A055998(A020653(n+1)))]`
-/

namespace A000752.P4792225418778398492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A055998 (A020653 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000752.P4792225418778398492

/-!
# A000753: Boustrophedon transform of Catalan numbers.

The programs for A000753, there is no canonical definition to state claims against.
-/

/-! ## A000753.P17914250714082447340

`A007878(n+1)-A077267(A007867(n+1))`
-/

namespace A000753.P17914250714082447340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007878 (n + 1) - A077267 (A007867 (n + 1)).toNat

end

end A000753.P17914250714082447340

/-! ## A000753.P16586378075008455056

`A208988(n+1)-∑[A157195(A209001(n+1))]`
-/

namespace A000753.P16586378075008455056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157195 (A209001 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208988 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000753.P16586378075008455056

/-!
# A000754: Boustrophedon transform of odd numbers.

The programs for A000754, there is no canonical definition to state claims against.
-/

/-! ## A000754.P5059853036226366316

`A231200(n)+A000667(n)`
-/

namespace A000754.P5059853036226366316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231200 n + A000667 n

end

end A000754.P5059853036226366316

/-! ## A000754.P2166634918012429404

`A231179(n)+A000737(n)`
-/

namespace A000754.P2166634918012429404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231179 n + A000737 n

end

end A000754.P2166634918012429404

/-! ## A000754.P17398311219751134820

`A000667(n)+2*A231179(n)`
-/

namespace A000754.P17398311219751134820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n + 2 * A231179 n

end

end A000754.P17398311219751134820

/-! ## A000754.P16699167603041969526

`2*A000737(n)-A000667(n)`
-/

namespace A000754.P16699167603041969526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000737 n - A000667 n

end

end A000754.P16699167603041969526

/-! ## A000754.P15568077352129159187

`A000737(n)+A231200(n)/2`
-/

namespace A000754.P15568077352129159187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000737 n : ℚ) + (A231200 n : ℚ) / 2

end

end A000754.P15568077352129159187

/-! ## A000754.P9439573084038928365

`A000660(n)+A000737(n)-A000111(n)`
-/

namespace A000754.P9439573084038928365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000660 n + (A000737 n - A000111 n)

end

end A000754.P9439573084038928365

/-! ## A000754.P6991856529725620612

`A000111(n)+A000745(n)-A000697(n)`
-/

namespace A000754.P6991856529725620612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (A000745 n - A000697 n)

end

end A000754.P6991856529725620612

/-! ## A000754.P15120011213180620378

`A292975(A034856(n+1))+2*A231179(n)`
-/

namespace A000754.P15120011213180620378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A034856 (n + 1)).toNat + 2 * A231179 n

end

end A000754.P15120011213180620378

/-! ## A000754.P6073025456261503572

`A231200(n)+A231200(n+1)/A005843(n+1)`
-/

namespace A000754.P6073025456261503572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231200 n : ℚ) + (A231200 (n + 1) : ℚ) / (A005843 (n + 1) : ℚ)

end

end A000754.P6073025456261503572

/-!
# A000755: No-3-in-line problem on n X n grid: total number of ways of placing 2n points on n X n grid so no 3 are in a line. No symmetries are taken into account.

The programs for A000755, there is no canonical definition to state claims against.
-/

/-! ## A000755.P4524674570273217923

`A194193(A117625(n+1))`
-/

namespace A000755.P4524674570273217923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (A117625 (n + 1)).toNat

end

end A000755.P4524674570273217923

/-! ## A000755.P2341544583053523692

`A194193(A062123(n)+n)`
-/

namespace A000755.P2341544583053523692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (A062123 n + (n : ℤ)).toNat

end

end A000755.P2341544583053523692

/-! ## A000755.P212998732156325454

`A194193(A051682(n+1)+1)`
-/

namespace A000755.P212998732156325454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194193 (A051682 (n + 1) + 1).toNat

end

end A000755.P212998732156325454

/-!
# A000756: Boustrophedon transform of sequence 1,1,0,0,0,0,...

The programs for A000756, there is no canonical definition to state claims against.
-/

/-! ## A000756.P9994911731153709699

`A009725(n)+A009002(n)`
-/

namespace A000756.P9994911731153709699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009725 n + A009002 n

end

end A000756.P9994911731153709699

/-! ## A000756.P8937574532624886609

`A009725(n)+abs(A119882(n))`
-/

namespace A000756.P8937574532624886609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009725 n + |A119882 n|

end

end A000756.P8937574532624886609

/-! ## A000756.P13625667556639666895

`A109449(A000124(n))+abs(A163747(n))`
-/

namespace A000756.P13625667556639666895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000124 n).toNat + |A163747 n|

end

end A000756.P13625667556639666895

/-! ## A000756.P12054934831901860756

`A109449(A000124(n))+A000111(n)%A300921(n+1)`
-/

namespace A000756.P12054934831901860756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000124 n).toNat + Int.tmod (A000111 n) (A300921 (n + 1))

end

end A000756.P12054934831901860756

/-! ## A000756.P2576864229984128373

`A000111(n)+gcd(A109573(n), A243963(n))`
-/

namespace A000756.P2576864229984128373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (Int.gcd (A109573 n) (A243963 n) : ℤ)

end

end A000756.P2576864229984128373

/-!
# A000757: Number of cyclic permutations of [n] with no i -> i+1 (mod n).

The programs for A000757, the canonical program `A000757.P5542658535049592383` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000757 has offset 0).

The definition of A000757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000757.P5542658535049592383

`(n-2)*a(n-1)+(n-1)*a(n-2)-(-1)^n` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000757

/-- `(n-2)*a(n-1)+(n-1)*a(n-2)-(-1)^n` -/
def P5542658535049592383.Spec : Prop :=
  ∀ n, P5542658535049592383.a n = A000757 n

theorem P5542658535049592383.correct : P5542658535049592383.Spec := by
  intro n
  simp only [A000757]

end A000757

/-! ## A000757.P7147067749400977354

`(n-3)*a(n-1)+(n-2)*(2*a(n-2)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A000757.P7147067749400977354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  ((n : ℤ) - 3) * a (n - 1) + ((n : ℤ) - 2) * (2 * a (n - 2) + a (n - 3))

end

end A000757.P7147067749400977354

namespace A000757

/-- `(n-3)*a(n-1)+(n-2)*(2*a(n-2)+a(n-3))` -/
def P7147067749400977354.Spec : Prop :=
  ∀ n, P7147067749400977354.a n = A000757 n

end A000757

/-! ## A000757.P15394794845088927078

`(-1)^n+A002741(n)`
-/

namespace A000757.P15394794845088927078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + A002741 n

end

end A000757.P15394794845088927078

namespace A000757

/-- `(-1)^n+A002741(n)` -/
def P15394794845088927078.Spec : Prop :=
  ∀ n, P15394794845088927078.a n = A000757 n

end A000757

/-! ## A000757.P6430635853118073450

`abs(1-∑[(1-n)*a(n-1)+1])` with `a(0)=0`
-/

namespace A000757.P6430635853118073450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 - (n : ℤ)) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A000757.P6430635853118073450

namespace A000757

/-- `abs(1-∑[(1-n)*a(n-1)+1])` -/
def P6430635853118073450.Spec : Prop :=
  ∀ n, P6430635853118073450.a n = A000757 n

end A000757

/-! ## A000757.P7548009695745460686

`A134832(∑[n])`
-/

namespace A000757.P7548009695745460686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000757.P7548009695745460686

namespace A000757

/-- `A134832(∑[n])` -/
def P7548009695745460686.Spec : Prop :=
  ∀ n, P7548009695745460686.a n = A000757 n

end A000757

/-! ## A000757.P11462771055182267978

`A002741(n)+(-1)^n`
-/

namespace A000757.P11462771055182267978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002741 n + (-1) ^ n

end

end A000757.P11462771055182267978

namespace A000757

/-- `A002741(n)+(-1)^n` -/
def P11462771055182267978.Spec : Prop :=
  ∀ n, P11462771055182267978.a n = A000757 n

end A000757

/-! ## A000757.P9799178806491489483

`A000166(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A000757.P9799178806491489483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000166 (n - 1) - a (n - 1)

end

end A000757.P9799178806491489483

namespace A000757

/-- `A000166(n-1)-a(n-1)` -/
def P9799178806491489483.Spec : Prop :=
  ∀ n, P9799178806491489483.a n = A000757 n

end A000757

/-! ## A000757.P14336779632104035498

`A135799(n)/(n+1)`
-/

namespace A000757.P14336779632104035498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135799 n : ℚ) / (n + 1 : ℚ)

end

end A000757.P14336779632104035498

namespace A000757

/-- `A135799(n)/(n+1)` -/
def P14336779632104035498.Spec : Prop :=
  ∀ n, P14336779632104035498.a n = (A000757 n : ℚ)

end A000757

/-! ## A000757.P5919375257267937411

`A134515(n)/∑[n+1]`
-/

namespace A000757.P5919375257267937411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134515 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A000757.P5919375257267937411

namespace A000757

/-- `A134515(n)/∑[n+1]` -/
def P5919375257267937411.Spec : Prop :=
  ∀ n, P5919375257267937411.a n = (A000757 n : ℚ)

end A000757

/-! ## A000757.P14382154696302830648

`A134832(A167614(n+2))/A007318(A167614(n+2))`
-/

namespace A000757.P14382154696302830648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134832 (A167614 (n + 2)).toNat : ℚ) / (A007318 (A167614 (n + 2)).toNat : ℚ)

end

end A000757.P14382154696302830648

namespace A000757

/-- `A134832(A167614(n+2))/A007318(A167614(n+2))` -/
def P14382154696302830648.Spec : Prop :=
  ∀ n, P14382154696302830648.a n = (A000757 n : ℚ)

end A000757

/-!
# A000758: Related to cumulative height of rooted plane trees.

The programs for A000758, there is no canonical definition to state claims against.
-/

/-! ## A000758.P4210660514070841467

`A136439(n+1)-∑[A071724(n)]`
-/

namespace A000758.P4210660514070841467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136439 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000758.P4210660514070841467

/-! ## A000758.P8166133199692189008

`A136439(n+1)-Δ[A014137(n)]`
-/

namespace A000758.P8166133199692189008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136439 (n + 1) - (f1 (n + 1) - f1 n)

end

end A000758.P8166133199692189008

/-! ## A000758.P7954417155319365445

`A136439(n+1)-Δ[A014138(n)]`
-/

namespace A000758.P7954417155319365445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136439 (n + 1) - (f1 (n + 1) - f1 n)

end

end A000758.P7954417155319365445

/-! ## A000758.P8187206672388512690

`A136439(n+1)-record[A097331(n)]`
-/

namespace A000758.P8187206672388512690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136439 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000758.P8187206672388512690

/-! ## A000758.P10800487810558353267

`A136439(n+1)-record[A126120(n)]`
-/

namespace A000758.P10800487810558353267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136439 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000758.P10800487810558353267

/-!
# A000759: Number of n-step self-avoiding walks on cubic lattice ending at point with x=0.

The programs for A000759, there is no canonical definition to state claims against.
-/

/-! ## A000759.P4835603115743368491

`A227338(∑[n])`
-/

namespace A000759.P4835603115743368491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227338 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000759.P4835603115743368491

/-! ## A000759.P15742268338974108311

`record[A227338(A001971(n))]`
-/

namespace A000759.P15742268338974108311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227338 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000759.P15742268338974108311

/-! ## A000759.P8577808076769303538

`record[A227338(A032766(n))]`
-/

namespace A000759.P8577808076769303538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227338 (A032766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000759.P8577808076769303538

/-! ## A000759.P14642726857730442131

`record[A227338(A087401(n))]`
-/

namespace A000759.P14642726857730442131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227338 (A087401 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000759.P14642726857730442131

/-! ## A000759.P16989646150056498032

`and(-1, A227338(A000217(n)))`
-/

namespace A000759.P16989646150056498032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A227338 (A000217 n).toNat)

end

end A000759.P16989646150056498032

/-!
# A000760: Number of n-step self-avoiding walks on cubic lattice ending at point with x=1.

The programs for A000760, there is no canonical definition to state claims against.
-/

/-! ## A000760.P9102741325957125139

`A227338(∑[n+1]+1)`
-/

namespace A000760.P9102741325957125139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227338 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000760.P9102741325957125139

/-! ## A000760.P15579560387133131633

`record[A227338(A014132(n+1))]`
-/

namespace A000760.P15579560387133131633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227338 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000760.P15579560387133131633

/-! ## A000760.P1455117275404393196

`record[gcd(A198954(n), A227338(n))]`
-/

namespace A000760.P1455117275404393196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198954 n) (A227338 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000760.P1455117275404393196

/-! ## A000760.P8139201346520070033

`record[or(A103452(n), A227338(n))]`
-/

namespace A000760.P8139201346520070033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103452 n) (A227338 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000760.P8139201346520070033

/-! ## A000760.P13431538135489067300

`record[A227338(n)/A131843(n)²]`
-/

namespace A000760.P13431538135489067300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227338 n : ℚ) / (A131843 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000760.P13431538135489067300

/-!
# A000761: Number of n-step self-avoiding walks on cubic lattice ending at point with x=2.

The programs for A000761, there is no canonical definition to state claims against.
-/

/-! ## A000761.P14669955811211085444

`record[A227338(∑[n]+2)]`
-/

namespace A000761.P14669955811211085444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227338 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000761.P14669955811211085444

/-! ## A000761.P6559749545550199066

`A227338(∑[n+2]+3)`
-/

namespace A000761.P6559749545550199066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227338 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000761.P6559749545550199066

/-! ## A000761.P11241105297935543437

`record[gcd(A059341(n), A227338(n))]`
-/

namespace A000761.P11241105297935543437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059341 n) (A227338 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000761.P11241105297935543437

/-!
# A000762: Number of n-step self-avoiding walks on cubic lattice ending at point with x=3.

The programs for A000762, there is no canonical definition to state claims against.
-/

/-! ## A000762.P15072252615666495419

`A227338(∑[n+3]+6)`
-/

namespace A000762.P15072252615666495419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227338 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A000762.P15072252615666495419

/-!
# A000763: Number of interval orders constructed from n intervals of generic lengths.

The programs for A000763, there is no canonical definition to state claims against.
-/

/-! ## A000763.P17017576010701230280

`or(1, A010784(A320352(n+1)))`
-/

namespace A000763.P17017576010701230280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010784 (A320352 (n + 1)).toNat)

end

end A000763.P17017576010701230280

/-!
# A000764: Boustrophedon transform of Bell numbers.

The programs for A000764, there is no canonical definition to state claims against.
-/

/-! ## A000764.P13612947761827643995

`∑[A206805(A213226(n))]`
-/

namespace A000764.P13612947761827643995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206805 (A213226 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000764.P13612947761827643995

/-! ## A000764.P9198961024858158882

`A065033(or(A263275(n), A352280(n)))`
-/

namespace A000764.P9198961024858158882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lor (A263275 n) (A352280 n)).toNat

end

end A000764.P9198961024858158882

/-!
# A000765: Number of n-step self-avoiding walks on f.c.c. lattice ending at point with x = 0.

The programs for A000765, there is no canonical definition to state claims against.
-/

/-! ## A000765.P11924443684469136886

`A227511(∑[n])`
-/

namespace A000765.P11924443684469136886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227511 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000765.P11924443684469136886

/-! ## A000765.P9869080423470713834

`record[A227511(n)]`
-/

namespace A000765.P9869080423470713834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000765.P9869080423470713834

/-! ## A000765.P6475132159624751369

`and(-3, A227511(A000217(n)))`
-/

namespace A000765.P6475132159624751369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A227511 (A000217 n).toNat)

end

end A000765.P6475132159624751369

/-! ## A000765.P16263195620839596190

`A326678(n)+A227511(A000217(n))`
-/

namespace A000765.P16263195620839596190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n + A227511 (A000217 n).toNat

end

end A000765.P16263195620839596190

/-! ## A000765.P1178120020976109559

`A326681(n)+A227511(A000217(n))`
-/

namespace A000765.P1178120020976109559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 n + A227511 (A000217 n).toNat

end

end A000765.P1178120020976109559

/-!
# A000766: Number of n-step self-avoiding walks on f.c.c. lattice ending at point with x = 1.

The programs for A000766, there is no canonical definition to state claims against.
-/

/-! ## A000766.P13251112637516713201

`A227511(∑[n+1]+1)`
-/

namespace A000766.P13251112637516713201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000766.P13251112637516713201

/-! ## A000766.P14243780951463379320

`record[A227511(Δ[A175826(n)])]`
-/

namespace A000766.P14243780951463379320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175826 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227511 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000766.P14243780951463379320

/-! ## A000766.P10870817709544682319

`record[A227511(A014132(n+1))]`
-/

namespace A000766.P10870817709544682319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227511 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000766.P10870817709544682319

/-! ## A000766.P13976709426373200329

`record[A227511(A169581(n+1))]`
-/

namespace A000766.P13976709426373200329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227511 (A169581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000766.P13976709426373200329

/-! ## A000766.P5674867695306584447

`lcm(2, A227511(A134869(n+1)))`
-/

namespace A000766.P5674867695306584447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A227511 (A134869 (n + 1)).toNat)

end

end A000766.P5674867695306584447

/-!
# A000767: Number of n-step self-avoiding walks on f.c.c. lattice ending at point with x = 2.

The programs for A000767, there is no canonical definition to state claims against.
-/

/-! ## A000767.P735714572895443445

`A227511(∑[n+2]+3)`
-/

namespace A000767.P735714572895443445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227511 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000767.P735714572895443445

/-!
# A000768: Number of n-step self-avoiding walks on f.c.c. lattice ending at point with x = 3.

The programs for A000768, there is no canonical definition to state claims against.
-/

/-! ## A000768.P7677986392807299351

`A227511(A167614(n+2))`
-/

namespace A000768.P7677986392807299351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227511 (A167614 (n + 2)).toNat

end

end A000768.P7677986392807299351

/-! ## A000768.P6095171154234439191

`A227511(A141214(n)+6)`
-/

namespace A000768.P6095171154234439191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227511 (A141214 n + 6).toNat

end

end A000768.P6095171154234439191

/-! ## A000768.P17689126718609702695

`A227511(A052905(n)+8)`
-/

namespace A000768.P17689126718609702695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227511 (A052905 n + 8).toNat

end

end A000768.P17689126718609702695

/-! ## A000768.P15324688683925733074

`A227511(A055999(n)+9)`
-/

namespace A000768.P15324688683925733074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227511 (A055999 n + 9).toNat

end

end A000768.P15324688683925733074

/-! ## A000768.P15586374380584558718

`A227511(eq[3, A002262(n)])`
-/

namespace A000768.P15586374380584558718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000768.P15586374380584558718

/-!
# A000769: No-3-in-line problem: number of inequivalent ways of placing 2n points on an n X n grid so that no 3 are in a line.

The programs for A000769, there is no canonical definition to state claims against.
-/

/-! ## A000769.P15104968593011000541

`A235453(∑[2*(n+1)])`
-/

namespace A000769.P15104968593011000541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235453 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000769.P15104968593011000541

/-! ## A000769.P11503128606041161047

`A235453(A002620(2*n+3))%A008000(n)`
-/

namespace A000769.P11503128606041161047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235453 (A002620 (2 * n + 3)).toNat) (A008000 n)

end

end A000769.P11503128606041161047

/-! ## A000769.P9151655254746406576

`A235453(A076921(2*n+3))+A000007(2*n+1)`
-/

namespace A000769.P9151655254746406576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235453 (A076921 (2 * n + 3)).toNat + A000007 (2 * n + 1)

end

end A000769.P9151655254746406576

/-!
# A000770: Stirling numbers of the second kind, S(n,6).

The programs for A000770, the canonical program `A000770.P8273594268794257151` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000770 has offset 6).

The definition of A000770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000770.P10856236483402107930

`A056512(2*n+11)`
-/

namespace A000770.P10856236483402107930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (2 * n + 11)

end

end A000770.P10856236483402107930

namespace A000770

/-- `A056512(2*n+11)` -/
def P10856236483402107930.Spec : Prop :=
  ∀ n, P10856236483402107930.a n = A000770 (n + 6)

end A000770

/-! ## A000770.P6488048234308643359

`A056475(3*(n+3)-(n-2))`
-/

namespace A000770.P6488048234308643359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056475 ((3 * (n + 3) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A000770.P6488048234308643359

namespace A000770

/-- `A056475(3*(n+3)-(n-2))` -/
def P6488048234308643359.Spec : Prop :=
  ∀ n, P6488048234308643359.a n = A000770 (n + 6)

end A000770

/-! ## A000770.P8273594268794257151

`A000481(n+5)+6*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000770

/-- `A000481(n+5)+6*a(n-1)` -/
def P8273594268794257151.Spec : Prop :=
  ∀ n, P8273594268794257151.a n = A000770 (n + 6)

theorem P8273594268794257151.correct : P8273594268794257151.Spec := by
  intro n
  simp only [A000770, Nat.add_sub_cancel]

end A000770

/-! ## A000770.P4417310148822142814

`A075511(n)/2^n`
-/

namespace A000770.P4417310148822142814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075511 n : ℚ) / (2 ^ n : ℚ)

end

end A000770.P4417310148822142814

namespace A000770

/-- `A075511(n)/2^n` -/
def P4417310148822142814.Spec : Prop :=
  ∀ n, P4417310148822142814.a n = (A000770 (n + 6) : ℚ)

end A000770

/-! ## A000770.P4687969692980289266

`round(A075511(n)/A000079(n))`
-/

namespace A000770.P4687969692980289266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075511 n : ℚ) / (A000079 n : ℚ))

end

end A000770.P4687969692980289266

namespace A000770

/-- `round(A075511(n)/A000079(n))` -/
def P4687969692980289266.Spec : Prop :=
  ∀ n, P4687969692980289266.a n = A000770 (n + 6)

end A000770

/-! ## A000770.P14115318183948069574

`A008277(∑[n+5]+16)`
-/

namespace A000770.P14115318183948069574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A000770.P14115318183948069574

namespace A000770

/-- `A008277(∑[n+5]+16)` -/
def P14115318183948069574.Spec : Prop :=
  ∀ n, P14115318183948069574.a n = A000770 (n + 6)

end A000770

/-! ## A000770.P13355760135530319268

`A048993(A000124(n+6)+5)`
-/

namespace A000770.P13355760135530319268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A000124 (n + 6) + 5).toNat

end

end A000770.P13355760135530319268

namespace A000770

/-- `A048993(A000124(n+6)+5)` -/
def P13355760135530319268.Spec : Prop :=
  ∀ n, P13355760135530319268.a n = A000770 (n + 6)

end A000770

/-! ## A000770.P14311274741928728048

`record[A048993(A167499(n+3)+1)]`
-/

namespace A000770.P14311274741928728048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A167499 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000770.P14311274741928728048

namespace A000770

/-- `record[A048993(A167499(n+3)+1)]` -/
def P14311274741928728048.Spec : Prop :=
  ∀ n, P14311274741928728048.a n = A000770 (n + 6)

end A000770

/-! ## A000770.P6206634758932567722

`A048993(A046691(n+5)-(n-3))`
-/

namespace A000770.P6206634758932567722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A046691 (n + 5) - ((n : ℤ) - 3)).toNat

end

end A000770.P6206634758932567722

namespace A000770

/-- `A048993(A046691(n+5)-(n-3))` -/
def P6206634758932567722.Spec : Prop :=
  ∀ n, P6206634758932567722.a n = A000770 (n + 6)

end A000770

/-! ## A000770.P7344178661631375832

`A008277(A000124(n+5)+5)+A000007(n+1)`
-/

namespace A000770.P7344178661631375832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A000124 (n + 5) + 5).toNat + A000007 (n + 1)

end

end A000770.P7344178661631375832

namespace A000770

/-- `A008277(A000124(n+5)+5)+A000007(n+1)` -/
def P7344178661631375832.Spec : Prop :=
  ∀ n, P7344178661631375832.a n = A000770 (n + 6)

end A000770

/-!
# A000771: Stirling numbers of second kind, S(n,7).

The programs for A000771, there is no canonical definition to state claims against.
-/

/-! ## A000771.P7304671530515706837

`A075512(n)/2^n`
-/

namespace A000771.P7304671530515706837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075512 n : ℚ) / (2 ^ n : ℚ)

end

end A000771.P7304671530515706837

/-! ## A000771.P16247906441926175497

`round(A075512(n)/A000079(n))`
-/

namespace A000771.P16247906441926175497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075512 n : ℚ) / (A000079 n : ℚ))

end

end A000771.P16247906441926175497

/-! ## A000771.P1525375838342700793

`A008277(A056119(n)+28)`
-/

namespace A000771.P1525375838342700793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A056119 n + 28).toNat

end

end A000771.P1525375838342700793

/-! ## A000771.P14904917971685251161

`A008277(A166136(n+5)+1)`
-/

namespace A000771.P14904917971685251161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A166136 (n + 5) + 1).toNat

end

end A000771.P14904917971685251161

/-! ## A000771.P1676820600307145083

`A008277(A000124(n+6)+6)`
-/

namespace A000771.P1676820600307145083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A000124 (n + 6) + 6).toNat

end

end A000771.P1676820600307145083

/-! ## A000771.P1472217232682050505

`A008277(A000217(n+6)+7)`
-/

namespace A000771.P1472217232682050505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A000217 (n + 6) + 7).toNat

end

end A000771.P1472217232682050505

/-! ## A000771.P12005059250758503697

`A008277(A052905(n+3)+12)`
-/

namespace A000771.P12005059250758503697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A052905 (n + 3) + 12).toNat

end

end A000771.P12005059250758503697

/-! ## A000771.P17008593208976673782

`record[A048993(A167487(n)%A119358(n))]`
-/

namespace A000771.P17008593208976673782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (Int.tmod (A167487 n) (A119358 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000771.P17008593208976673782

/-! ## A000771.P13961744145934765156

`record[A048993(A000124(n)-A058183(n+1))]`
-/

namespace A000771.P13961744145934765156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A000124 n - A058183 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000771.P13961744145934765156

/-! ## A000771.P6251419291786234567

`A048993(A167487(n+12)-A270545(n+11))`
-/

namespace A000771.P6251419291786234567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A167487 (n + 12) - A270545 (n + 11)).toNat

end

end A000771.P6251419291786234567

/-!
# A000772: E.g.f. exp(tan(x) + sec(x) - 1).

The programs for A000772, there is no canonical definition to state claims against.
-/

/-! ## A000772.P1974206431815565148

`A132085(3*A064856(n))`
-/

namespace A000772.P1974206431815565148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (3 * A064856 n).toNat

end

end A000772.P1974206431815565148

/-! ## A000772.P16086648685086929701

`A200405(n^A060128(n))`
-/

namespace A000772.P16086648685086929701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200405 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A060128 n : ℤ))).toNat

end

end A000772.P16086648685086929701

/-! ## A000772.P5825976635893450894

`A200405(n^A096371(n))`
-/

namespace A000772.P5825976635893450894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200405 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A096371 n : ℤ))).toNat

end

end A000772.P5825976635893450894

/-!
# A000773: Number of numbers == 0 (mod 3) in range 2^n to 2^(n+1) with odd number of 1's in binary expansion.

The programs for A000773, the canonical program `A000773.P1281880748692157282` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000773 has offset 1).

The definition of A000773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000773.P1281880748692157282

`A167762(n-1)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000773

/-- `A167762(n-1)-a(n-1)` -/
def P1281880748692157282.Spec : Prop :=
  ∀ n, P1281880748692157282.a n = A000773 (n + 1)

theorem P1281880748692157282.correct : P1281880748692157282.Spec := by
  intro n
  simp only [A000773, Nat.add_sub_cancel]

end A000773

/-! ## A000773.P15446148719832964413

`A078008(n)-Δ[A232801(n)]`
-/

namespace A000773.P15446148719832964413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n - (f1 (n + 1) - f1 n)

end

end A000773.P15446148719832964413

namespace A000773

/-- `A078008(n)-Δ[A232801(n)]` -/
def P15446148719832964413.Spec : Prop :=
  ∀ n, P15446148719832964413.a n = A000773 (n + 1)

end A000773

/-! ## A000773.P13690939472908941433

`A005578(n)-A124302(A008619(n))`
-/

namespace A000773.P13690939472908941433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n - A124302 (A008619 n).toNat

end

end A000773.P13690939472908941433

namespace A000773

/-- `A005578(n)-A124302(A008619(n))` -/
def P13690939472908941433.Spec : Prop :=
  ∀ n, P13690939472908941433.a n = A000773 (n + 1)

end A000773

/-! ## A000773.P13734974376251986349

`Δ[A001045(n)-A232801(n)]`
-/

namespace A000773.P13734974376251986349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - A232801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000773.P13734974376251986349

namespace A000773

/-- `Δ[A001045(n)-A232801(n)]` -/
def P13734974376251986349.Spec : Prop :=
  ∀ n, P13734974376251986349.a n = A000773 (n + 1)

end A000773

/-! ## A000773.P9299452945509047192

`Δ[A128209(n)-A232801(n)]`
-/

namespace A000773.P9299452945509047192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n - A232801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000773.P9299452945509047192

namespace A000773

/-- `Δ[A128209(n)-A232801(n)]` -/
def P9299452945509047192.Spec : Prop :=
  ∀ n, P9299452945509047192.a n = A000773 (n + 1)

end A000773

/-! ## A000773.P13913368579747756265

`(A001045(n+1)-A108411(n))/2`
-/

namespace A000773.P13913368579747756265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) - A108411 n : ℚ) / 2

end

end A000773.P13913368579747756265

namespace A000773

/-- `(A001045(n+1)-A108411(n))/2` -/
def P13913368579747756265.Spec : Prop :=
  ∀ n, P13913368579747756265.a n = (A000773 (n + 1) : ℚ)

end A000773

/-! ## A000773.P3738122060311201015

`Δ[A000975(n)-A036557(n+1)]`
-/

namespace A000773.P3738122060311201015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A036557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000773.P3738122060311201015

namespace A000773

/-- `Δ[A000975(n)-A036557(n+1)]` -/
def P3738122060311201015.Spec : Prop :=
  ∀ n, P3738122060311201015.a n = A000773 (n + 1)

end A000773

/-!
# A000774: a(n) = n!*(1 + Sum_{i=1..n} 1/i).

The programs for A000774, there is no canonical definition to state claims against.
-/

/-! ## A000774.P2466986371641539534

`A000254(n)+n!`
-/

namespace A000774.P2466986371641539534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n + (Nat.factorial n : ℤ)

end

end A000774.P2466986371641539534

/-! ## A000774.P819914157107945969

`(n-1)!+n*a(n-1)` with `a(0)=1`
-/

namespace A000774.P819914157107945969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial ((n : ℤ) - 1).toNat + n * a (n - 1)

end

end A000774.P819914157107945969

/-! ## A000774.P15693232511061321210

`(n-1)!+a(n-1)/tan(acot(n))` with `a(0)=1`
-/

namespace A000774.P15693232511061321210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial ((n : ℤ) - 1).toNat : ℝ) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A000774.P15693232511061321210

/-! ## A000774.P7001137084199639069

`abs(A081046(n))`
-/

namespace A000774.P7001137084199639069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081046 n|

end

end A000774.P7001137084199639069

/-! ## A000774.P5533681641950025851

`A103718(∑[n])`
-/

namespace A000774.P5533681641950025851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103718 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000774.P5533681641950025851

/-! ## A000774.P15350976881240003682

`A388788(∑[n+2])`
-/

namespace A000774.P15350976881240003682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388788 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000774.P15350976881240003682

/-! ## A000774.P16233075125109460867

`n!+n!-A081047(n)`
-/

namespace A000774.P16233075125109460867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + ((Nat.factorial n : ℤ) - A081047 n)

end

end A000774.P16233075125109460867

/-! ## A000774.P13710621441837498936

`n!+A052517(n+1)/2`
-/

namespace A000774.P13710621441837498936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) + (A052517 (n + 1) : ℚ) / 2

end

end A000774.P13710621441837498936

/-! ## A000774.P11152416033538258900

`A350016(∑[floor(n-atan(n))+1])`
-/

namespace A000774.P11152416033538258900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350016 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000774.P11152416033538258900

/-! ## A000774.P16724776128686750421

`A104150(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A000774.P16724776128686750421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104150 n + (n : ℤ) * a (n - 1)

end

end A000774.P16724776128686750421

/-!
# A000775: a(n) = n! * (n + 1 + 2*Sum_{k=1...n} 1/k).

The programs for A000775, there is no canonical definition to state claims against.
-/

/-! ## A000775.P6576613963125942901

`n!+abs(1-n)!-floor(acot(n))+(n-1)!+n*a(n-1)` with `a(0)=1`
-/

namespace A000775.P6576613963125942901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℤ) + ((Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋ + ((Nat.factorial ((n : ℤ) - 1).toNat : ℤ) + (n : ℤ) * a (n - 1)))

end

end A000775.P6576613963125942901

/-! ## A000775.P9992402993577029979

`A052517(n+1)+(n+1)!`
-/

namespace A000775.P9992402993577029979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052517 (n + 1) + (Nat.factorial (n + 1) : ℤ)

end

end A000775.P9992402993577029979

/-! ## A000775.P11580435695179275195

`A001563(n)+A000776(n)`
-/

namespace A000775.P11580435695179275195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n + A000776 n

end

end A000775.P11580435695179275195

/-! ## A000775.P6995606570728947510

`A000776(n)+Δ[A000142(n)]`
-/

namespace A000775.P6995606570728947510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000776 n + (f1 (n + 1) - f1 n)

end

end A000775.P6995606570728947510

/-! ## A000775.P17542262860056032629

`A000776(n)+Δ[A033312(n)]`
-/

namespace A000775.P17542262860056032629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000776 n + (f1 (n + 1) - f1 n)

end

end A000775.P17542262860056032629

/-! ## A000775.P6554917238608247944

`Δ[A007489(n)]+2*A000254(n)`
-/

namespace A000775.P6554917238608247944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A000254 n

end

end A000775.P6554917238608247944

/-! ## A000775.P31107131347545679

`A052517(n+1)+record[A084938(n)]`
-/

namespace A000775.P31107131347545679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052517 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000775.P31107131347545679

/-! ## A000775.P678679912006527821

`A052517(n+1)+record[A098361(n)]`
-/

namespace A000775.P678679912006527821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052517 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000775.P678679912006527821

/-! ## A000775.P17106595024892883577

`A052517(n+1)+A000142(n+1)`
-/

namespace A000775.P17106595024892883577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052517 (n + 1) + A000142 (n + 1)

end

end A000775.P17106595024892883577

/-!
# A000776: a(n) = n! * (1 + 2*Sum_{k=1..n} 1/k).

The programs for A000776, the canonical program `A000776.P8091388478419307679` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000776 has offset 0).

The definition of A000776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000776.P8091388478419307679

`n*a(n-1)+2*(n-1)!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000776

/-- `n*a(n-1)+2*(n-1)!` -/
def P8091388478419307679.Spec : Prop :=
  ∀ n, (P8091388478419307679.a n : ℤ) = A000776 n

theorem P8091388478419307679.correct : P8091388478419307679.Spec := by
  intro n
  simp only [A000776]

end A000776

/-! ## A000776.P9806230931930981622

`A052517(n+1)+n!`
-/

namespace A000776.P9806230931930981622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052517 (n + 1) + (Nat.factorial n : ℤ)

end

end A000776.P9806230931930981622

namespace A000776

/-- `A052517(n+1)+n!` -/
def P9806230931930981622.Spec : Prop :=
  ∀ n, P9806230931930981622.a n = A000776 n

end A000776

/-! ## A000776.P10793479024344953741

`A000774(n)+A000254(n)`
-/

namespace A000776.P10793479024344953741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n + A000254 n

end

end A000776.P10793479024344953741

namespace A000776

/-- `A000774(n)+A000254(n)` -/
def P10793479024344953741.Spec : Prop :=
  ∀ n, P10793479024344953741.a n = A000776 n

end A000776

/-! ## A000776.P10667360741464533049

`A000774(n)+abs(A081048(n))`
-/

namespace A000776.P10667360741464533049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n + |A081048 n|

end

end A000776.P10667360741464533049

namespace A000776

/-- `A000774(n)+abs(A081048(n))` -/
def P10667360741464533049.Spec : Prop :=
  ∀ n, P10667360741464533049.a n = A000776 n

end A000776

/-! ## A000776.P4273648804457293601

`A052517(n+1)+A000142(n)`
-/

namespace A000776.P4273648804457293601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052517 (n + 1) + A000142 n

end

end A000776.P4273648804457293601

namespace A000776

/-- `A052517(n+1)+A000142(n)` -/
def P4273648804457293601.Spec : Prop :=
  ∀ n, P4273648804457293601.a n = A000776 n

end A000776

/-! ## A000776.P17284414450668109720

`A000142(n)+2*A000254(n)`
-/

namespace A000776.P17284414450668109720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + 2 * A000254 n

end

end A000776.P17284414450668109720

namespace A000776

/-- `A000142(n)+2*A000254(n)` -/
def P17284414450668109720.Spec : Prop :=
  ∀ n, P17284414450668109720.a n = A000776 n

end A000776

/-! ## A000776.P12625325373699138307

`2*A000774(n)-A000142(n)`
-/

namespace A000776.P12625325373699138307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000774 n - A000142 n

end

end A000776.P12625325373699138307

namespace A000776

/-- `2*A000774(n)-A000142(n)` -/
def P12625325373699138307.Spec : Prop :=
  ∀ n, P12625325373699138307.a n = A000776 n

end A000776

/-!
# A000777: a(n) = (n+2)*Catalan(n) - 1.

The programs for A000777, the canonical program `A000777.P1471641736917558101` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000777 has offset 0).

The definition of A000777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000777.P1471641736917558101

`(n+2)*A000108(n)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000777

/-- `(n+2)*A000108(n)-1` -/
def P1471641736917558101.Spec : Prop :=
  ∀ n, P1471641736917558101.a n = A000777 n

theorem P1471641736917558101.correct : P1471641736917558101.Spec := by
  intro n
  simp only [A000777]

end A000777

/-! ## A000777.P4849314631509328831

`(n+2)*abs(A168491(n))-1`
-/

namespace A000777.P4849314631509328831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * |A168491 n| - 1

end

end A000777.P4849314631509328831

namespace A000777

/-- `(n+2)*abs(A168491(n))-1` -/
def P4849314631509328831.Spec : Prop :=
  ∀ n, P4849314631509328831.a n = A000777 n

end A000777

/-! ## A000777.P8937232480198539578

`(n+2)*Δ[A155587(n)]-1`
-/

namespace A000777.P8937232480198539578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n) - 1

end

end A000777.P8937232480198539578

namespace A000777

/-- `(n+2)*Δ[A155587(n)]-1` -/
def P8937232480198539578.Spec : Prop :=
  ∀ n, P8937232480198539578.a n = A000777 n

end A000777

/-! ## A000777.P17730530296450326559

`(n+2)*A120588(n+1)-1`
-/

namespace A000777.P17730530296450326559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A120588 (n + 1) - 1

end

end A000777.P17730530296450326559

namespace A000777

/-- `(n+2)*A120588(n+1)-1` -/
def P17730530296450326559.Spec : Prop :=
  ∀ n, P17730530296450326559.a n = A000777 n

end A000777

/-! ## A000777.P11990078025074398688

`(n+2)*A028304(2*n)-1`
-/

namespace A000777.P11990078025074398688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A028304 (2 * n) - 1

end

end A000777.P11990078025074398688

namespace A000777

/-- `(n+2)*A028304(2*n)-1` -/
def P11990078025074398688.Spec : Prop :=
  ∀ n, P11990078025074398688.a n = A000777 n

end A000777

/-! ## A000777.P11946577526415259361

`A057977(2*n)*(n+2)-1`
-/

namespace A000777.P11946577526415259361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n) * (n + 2 : ℤ) - 1

end

end A000777.P11946577526415259361

namespace A000777

/-- `A057977(2*n)*(n+2)-1` -/
def P11946577526415259361.Spec : Prop :=
  ∀ n, P11946577526415259361.a n = A000777 n

end A000777

/-! ## A000777.P12592166309838988770

`(n+2)*A126120(2*n)-1`
-/

namespace A000777.P12592166309838988770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A126120 (2 * n) - 1

end

end A000777.P12592166309838988770

namespace A000777

/-- `(n+2)*A126120(2*n)-1` -/
def P12592166309838988770.Spec : Prop :=
  ∀ n, P12592166309838988770.a n = A000777 n

end A000777

/-! ## A000777.P12793885178696888998

`(n+2)*A208355(2*n)-1`
-/

namespace A000777.P12793885178696888998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A208355 (2 * n) - 1

end

end A000777.P12793885178696888998

namespace A000777

/-- `(n+2)*A208355(2*n)-1` -/
def P12793885178696888998.Spec : Prop :=
  ∀ n, P12793885178696888998.a n = A000777 n

end A000777

/-! ## A000777.P13097060193841242765

`(n+2)*A097331(2*n+1)-1`
-/

namespace A000777.P13097060193841242765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A097331 (2 * n + 1) - 1

end

end A000777.P13097060193841242765

namespace A000777

/-- `(n+2)*A097331(2*n+1)-1` -/
def P13097060193841242765.Spec : Prop :=
  ∀ n, P13097060193841242765.a n = A000777 n

end A000777

/-! ## A000777.P1405610577952556466

`(n+2)*abs(A182492(4*n+3))-1`
-/

namespace A000777.P1405610577952556466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * |A182492 (4 * n + 3)| - 1

end

end A000777.P1405610577952556466

namespace A000777

/-- `(n+2)*abs(A182492(4*n+3))-1` -/
def P1405610577952556466.Spec : Prop :=
  ∀ n, P1405610577952556466.a n = A000777 n

end A000777

/-! ## A000777.P256755316187005309

`A131428(n)+A001791(n)`
-/

namespace A000777.P256755316187005309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n + A001791 n

end

end A000777.P256755316187005309

namespace A000777

/-- `A131428(n)+A001791(n)` -/
def P256755316187005309.Spec : Prop :=
  ∀ n, P256755316187005309.a n = A000777 n

end A000777

/-! ## A000777.P17501481247004587597

`A000984(n)+A120304(n)+1`
-/

namespace A000777.P17501481247004587597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A120304 n + 1)

end

end A000777.P17501481247004587597

namespace A000777

/-- `A000984(n)+A120304(n)+1` -/
def P17501481247004587597.Spec : Prop :=
  ∀ n, P17501481247004587597.a n = A000777 n

end A000777

/-! ## A000777.P1332668350591998736

`A000108(n)+A000984(n)-1`
-/

namespace A000777.P1332668350591998736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A000984 n - 1)

end

end A000777.P1332668350591998736

namespace A000777

/-- `A000108(n)+A000984(n)-1` -/
def P1332668350591998736.Spec : Prop :=
  ∀ n, P1332668350591998736.a n = A000777 n

end A000777

/-! ## A000777.P3290655429205093176

`A189176(n)+A260878(n)-2`
-/

namespace A000777.P3290655429205093176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 n + (A260878 n - 2)

end

end A000777.P3290655429205093176

namespace A000777

/-- `A189176(n)+A260878(n)-2` -/
def P3290655429205093176.Spec : Prop :=
  ∀ n, P3290655429205093176.a n = A000777 n

end A000777

/-! ## A000777.P7886097837515329728

`A014495(2*n)+A000108(n)`
-/

namespace A000777.P7886097837515329728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (2 * n) + A000108 n

end

end A000777.P7886097837515329728

namespace A000777

/-- `A014495(2*n)+A000108(n)` -/
def P7886097837515329728.Spec : Prop :=
  ∀ n, P7886097837515329728.a n = A000777 n

end A000777

/-! ## A000777.P310233640396753914

`A131428(n)+A037952(2*n)`
-/

namespace A000777.P310233640396753914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n + A037952 (2 * n)

end

end A000777.P310233640396753914

namespace A000777

/-- `A131428(n)+A037952(2*n)` -/
def P310233640396753914.Spec : Prop :=
  ∀ n, P310233640396753914.a n = A000777 n

end A000777

/-! ## A000777.P3378006833848448454

`A131428(n)+n*A000108(n)`
-/

namespace A000777.P3378006833848448454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n + (n : ℤ) * A000108 n

end

end A000777.P3378006833848448454

namespace A000777

/-- `A131428(n)+n*A000108(n)` -/
def P3378006833848448454.Spec : Prop :=
  ∀ n, P3378006833848448454.a n = A000777 n

end A000777

/-! ## A000777.P3026261765007644354

`A000108(n)+record[A126869(n)-1]`
-/

namespace A000777.P3026261765007644354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000777.P3026261765007644354

namespace A000777

/-- `A000108(n)+record[A126869(n)-1]` -/
def P3026261765007644354.Spec : Prop :=
  ∀ n, P3026261765007644354.a n = A000777 n

end A000777

/-! ## A000777.P5611619410509810397

`A014495(2*n)-A115140(n+1)`
-/

namespace A000777.P5611619410509810397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (2 * n) - A115140 (n + 1)

end

end A000777.P5611619410509810397

namespace A000777

/-- `A014495(2*n)-A115140(n+1)` -/
def P5611619410509810397.Spec : Prop :=
  ∀ n, P5611619410509810397.a n = A000777 n

end A000777

/-! ## A000777.P12783881932255531030

`A028303(2*n)+A014495(2*n)`
-/

namespace A000777.P12783881932255531030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) + A014495 (2 * n)

end

end A000777.P12783881932255531030

namespace A000777

/-- `A028303(2*n)+A014495(2*n)` -/
def P12783881932255531030.Spec : Prop :=
  ∀ n, P12783881932255531030.a n = A000777 n

end A000777

/-!
# A000778: a(n) = Catalan(n) + Catalan(n+1) - 1.

The programs for A000778, the canonical program `A000778.P13957288909260579818` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000778 has offset 0).

The definition of A000778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000778.P13270319544709496703

`abs(Δ[(6/(n+1)-4)*a(n-1)])-1` with `a(0)=1`
-/

namespace A000778.P13270319544709496703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (6 / (n + 1 : ℚ) - 4) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A000778.P13270319544709496703

namespace A000778

/-- `abs(Δ[(6/(n+1)-4)*a(n-1)])-1` -/
def P13270319544709496703.Spec : Prop :=
  ∀ n, P13270319544709496703.a n = (A000778 n : ℚ)

end A000778

/-! ## A000778.P13957288909260579818

`A005807(n)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000778

/-- `A005807(n)-1` -/
def P13957288909260579818.Spec : Prop :=
  ∀ n, P13957288909260579818.a n = A000778 n

theorem P13957288909260579818.correct : P13957288909260579818.Spec := by
  intro n
  simp only [A000778]

end A000778

/-! ## A000778.P9051955511318198644

`∑[abs(Δ[A167422(n)])]`
-/

namespace A000778.P9051955511318198644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000778.P9051955511318198644

namespace A000778

/-- `∑[abs(Δ[A167422(n)])]` -/
def P9051955511318198644.Spec : Prop :=
  ∀ n, P9051955511318198644.a n = A000778 n

end A000778

/-! ## A000778.P6266360147001051997

`A167422(n+1)-1`
-/

namespace A000778.P6266360147001051997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 (n + 1) - 1

end

end A000778.P6266360147001051997

namespace A000778

/-- `A167422(n+1)-1` -/
def P6266360147001051997.Spec : Prop :=
  ∀ n, P6266360147001051997.a n = A000778 n

end A000778

/-! ## A000778.P356337633988329726

`abs(Δ[A168491(n)])-1`
-/

namespace A000778.P356337633988329726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A000778.P356337633988329726

namespace A000778

/-- `abs(Δ[A168491(n)])-1` -/
def P356337633988329726.Spec : Prop :=
  ∀ n, P356337633988329726.a n = A000778 n

end A000778

/-! ## A000778.P10514615366700377766

`Δ[A155051(2*n)]-1`
-/

namespace A000778.P10514615366700377766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155051 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A000778.P10514615366700377766

namespace A000778

/-- `Δ[A155051(2*n)]-1` -/
def P10514615366700377766.Spec : Prop :=
  ∀ n, P10514615366700377766.a n = A000778 n

end A000778

/-! ## A000778.P16307960500621273711

`A059348(2*(n+1))-1`
-/

namespace A000778.P16307960500621273711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059348 (2 * (n + 1)) - 1

end

end A000778.P16307960500621273711

namespace A000778

/-- `A059348(2*(n+1))-1` -/
def P16307960500621273711.Spec : Prop :=
  ∀ n, P16307960500621273711.a n = A000778 n

end A000778

/-! ## A000778.P5470580018579474843

`A280891(n)+a(n-1)` with `a(0)=1`
-/

namespace A000778.P5470580018579474843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280891 n + a (n - 1)

end

end A000778.P5470580018579474843

namespace A000778

/-- `A280891(n)+a(n-1)` -/
def P5470580018579474843.Spec : Prop :=
  ∀ n, P5470580018579474843.a n = A000778 n

end A000778

/-! ## A000778.P9420339446226509316

`abs(Δ[A090192(2*n+1)])-1`
-/

namespace A000778.P9420339446226509316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A000778.P9420339446226509316

namespace A000778

/-- `abs(Δ[A090192(2*n+1)])-1` -/
def P9420339446226509316.Spec : Prop :=
  ∀ n, P9420339446226509316.a n = A000778 n

end A000778

/-! ## A000778.P10870702006416494768

`abs(Δ[A105523(2*n+1)])-1`
-/

namespace A000778.P10870702006416494768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A000778.P10870702006416494768

namespace A000778

/-- `abs(Δ[A105523(2*n+1)])-1` -/
def P10870702006416494768.Spec : Prop :=
  ∀ n, P10870702006416494768.a n = A000778 n

end A000778

/-! ## A000778.P15903490846860117519

`A104722(A004277(n))-1`
-/

namespace A000778.P15903490846860117519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004277 n).toNat - 1

end

end A000778.P15903490846860117519

namespace A000778

/-- `A104722(A004277(n))-1` -/
def P15903490846860117519.Spec : Prop :=
  ∀ n, P15903490846860117519.a n = A000778 n

end A000778

/-! ## A000778.P14278347699739335703

`A131428(n)+A000245(n)`
-/

namespace A000778.P14278347699739335703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n + A000245 n

end

end A000778.P14278347699739335703

namespace A000778

/-- `A131428(n)+A000245(n)` -/
def P14278347699739335703.Spec : Prop :=
  ∀ n, P14278347699739335703.a n = A000778 n

end A000778

/-! ## A000778.P7379078422587360300

`A000108(n)+∑[A000245(n)]`
-/

namespace A000778.P7379078422587360300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000778.P7379078422587360300

namespace A000778

/-- `A000108(n)+∑[A000245(n)]` -/
def P7379078422587360300.Spec : Prop :=
  ∀ n, P7379078422587360300.a n = A000778 n

end A000778

/-! ## A000778.P177276825611432211

`∑[A071721(n)]-A000245(n)`
-/

namespace A000778.P177276825611432211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000245 n

end

end A000778.P177276825611432211

namespace A000778

/-- `∑[A071721(n)]-A000245(n)` -/
def P177276825611432211.Spec : Prop :=
  ∀ n, P177276825611432211.a n = A000778 n

end A000778

/-! ## A000778.P6318645265287424301

`A131428(n)+Δ[A000108(n)]`
-/

namespace A000778.P6318645265287424301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n + (f1 (n + 1) - f1 n)

end

end A000778.P6318645265287424301

namespace A000778

/-- `A131428(n)+Δ[A000108(n)]` -/
def P6318645265287424301.Spec : Prop :=
  ∀ n, P6318645265287424301.a n = A000778 n

end A000778

/-! ## A000778.P9651809784670615116

`A131428(n)+Δ[A120304(n)]`
-/

namespace A000778.P9651809784670615116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n + (f1 (n + 1) - f1 n)

end

end A000778.P9651809784670615116

namespace A000778

/-- `A131428(n)+Δ[A120304(n)]` -/
def P9651809784670615116.Spec : Prop :=
  ∀ n, P9651809784670615116.a n = A000778 n

end A000778

/-! ## A000778.P1335900847171092254

`A104722(A004275(n+1))-1`
-/

namespace A000778.P1335900847171092254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004275 (n + 1)).toNat - 1

end

end A000778.P1335900847171092254

namespace A000778

/-- `A104722(A004275(n+1))-1` -/
def P1335900847171092254.Spec : Prop :=
  ∀ n, P1335900847171092254.a n = A000778 n

end A000778

/-! ## A000778.P1397507650462905840

`A104722(A004273(n)+1)-1`
-/

namespace A000778.P1397507650462905840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004273 n + 1).toNat - 1

end

end A000778.P1397507650462905840

namespace A000778

/-- `A104722(A004273(n)+1)-1` -/
def P1397507650462905840.Spec : Prop :=
  ∀ n, P1397507650462905840.a n = A000778 n

end A000778

/-! ## A000778.P6943438378907834545

`A104722(A028310(2*n))-1`
-/

namespace A000778.P6943438378907834545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A028310 (2 * n)).toNat - 1

end

end A000778.P6943438378907834545

namespace A000778

/-- `A104722(A028310(2*n))-1` -/
def P6943438378907834545.Spec : Prop :=
  ∀ n, P6943438378907834545.a n = A000778 n

end A000778

/-!
# A000779: a(n) = 2*(2n-1)!!-(n-1)!*2^(n-1), where (2n-1)!! is A001147(n).

The programs for A000779, there is no canonical definition to state claims against.
-/

/-! ## A000779.P3136200269654153797

`∏[a(n-1)+2]-n!/2^-n` with `a(0)=2, a(1)=3`
-/

namespace A000779.P3136200269654153797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A000779.P3136200269654153797

/-! ## A000779.P1055223235122827717

`2*(abs(∏[a(n-1)-2])+n*a(n-1))` with `a(0)=1`
-/

namespace A000779.P1055223235122827717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (|∏ j ∈ Finset.range (n + 1), f1 j| + (n : ℤ) * a (n - 1))

end

end A000779.P1055223235122827717

/-! ## A000779.P9532993155948125496

`2*(A001147(n)+n*a(n-1))` with `a(0)=1`
-/

namespace A000779.P9532993155948125496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A001147 n + (n : ℤ) * a (n - 1))

end

end A000779.P9532993155948125496

/-! ## A000779.P1859775681132118986

`2*(A161198(∑[n])+n*a(n-1))` with `a(0)=1`
-/

namespace A000779.P1859775681132118986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A161198 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1))

end

end A000779.P1859775681132118986

/-! ## A000779.P470004181856980473

`A097801(n+1)-∏[round(1/acot(2*n))]`
-/

namespace A000779.P470004181856980473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097801 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000779.P470004181856980473

/-! ## A000779.P1243377032046596398

`A097801(n+1)-A000165(n)`
-/

namespace A000779.P1243377032046596398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097801 (n + 1) - A000165 n

end

end A000779.P1243377032046596398

/-! ## A000779.P17811300479044420115

`∏[A004280(n+2)]-A000165(n)`
-/

namespace A000779.P17811300479044420115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000165 n

end

end A000779.P17811300479044420115

/-! ## A000779.P10107581718760489749

`A122649(n+1)+A001147(n+1)`
-/

namespace A000779.P10107581718760489749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122649 (n + 1) + A001147 (n + 1)

end

end A000779.P10107581718760489749

/-! ## A000779.P12167768036958090057

`A000165(n)+2*A122649(n+1)`
-/

namespace A000779.P12167768036958090057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n + 2 * A122649 (n + 1)

end

end A000779.P12167768036958090057

/-! ## A000779.P7285335754305558462

`A122649(n+1)+A006882(2*n+1)`
-/

namespace A000779.P7285335754305558462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122649 (n + 1) + A006882 (2 * n + 1)

end

end A000779.P7285335754305558462

/-!
# A000780: a(n) = (n+1)!/2 + (n-1)(n-1)!.

The programs for A000780, the canonical program `A000780.P4519568016328179441` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000780 has offset 1).

The definition of A000780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000780.P4519568016328179441

`(n+2)!/2+n*n!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000780

/-- `(n+2)!/2+n*n!` -/
def P4519568016328179441.Spec : Prop :=
  ∀ n, P4519568016328179441.a n = (A000780 (n + 1) : ℚ)

end A000780

/-! ## A000780.P4721468156728109819

`(∑[n+2]-1)*n!`
-/

namespace A000780.P4721468156728109819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * (Nat.factorial n : ℤ)

end

end A000780.P4721468156728109819

namespace A000780

/-- `(∑[n+2]-1)*n!` -/
def P4721468156728109819.Spec : Prop :=
  ∀ n, P4721468156728109819.a n = A000780 (n + 1)

end A000780

/-! ## A000780.P15468602362915624427

`n!*record[∑[n-2]-(n-3)]`
-/

namespace A000780.P15468602362915624427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000780.P15468602362915624427

namespace A000780

/-- `n!*record[∑[n-2]-(n-3)]` -/
def P15468602362915624427.Spec : Prop :=
  ∀ n, P15468602362915624427.a n = A000780 (n + 1)

end A000780

/-! ## A000780.P4335239375318573382

`(∑[n+2]-1)*∏[round(1/acot(n))]`
-/

namespace A000780.P4335239375318573382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A000780.P4335239375318573382

namespace A000780

/-- `(∑[n+2]-1)*∏[round(1/acot(n))]` -/
def P4335239375318573382.Spec : Prop :=
  ∀ n, P4335239375318573382.a n = A000780 (n + 1)

end A000780

/-! ## A000780.P3278341990126729477

`(∑[n+2]-1)*∏[round(sqrt(n²+1))]`
-/

namespace A000780.P3278341990126729477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A000780.P3278341990126729477

namespace A000780

/-- `(∑[n+2]-1)*∏[round(sqrt(n²+1))]` -/
def P3278341990126729477.Spec : Prop :=
  ∀ n, P3278341990126729477.a n = A000780 (n + 1)

end A000780

/-! ## A000780.P6315252455731407619

`(n/2+2)*∏[n+1]-A094587(∑[n])`
-/

namespace A000780.P6315252455731407619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 2) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A094587 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A000780.P6315252455731407619

namespace A000780

/-- `(n/2+2)*∏[n+1]-A094587(∑[n])` -/
def P6315252455731407619.Spec : Prop :=
  ∀ n, P6315252455731407619.a n = (A000780 (n + 1) : ℚ)

end A000780

/-! ## A000780.P15299332317578685097

`A001710(n+2)+A001563(n)`
-/

namespace A000780.P15299332317578685097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 2) + A001563 n

end

end A000780.P15299332317578685097

namespace A000780

/-- `A001710(n+2)+A001563(n)` -/
def P15299332317578685097.Spec : Prop :=
  ∀ n, P15299332317578685097.a n = A000780 (n + 1)

end A000780

/-! ## A000780.P4407155033648117857

`A038720(n+1)-A000142(n)`
-/

namespace A000780.P4407155033648117857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038720 (n + 1) - A000142 n

end

end A000780.P4407155033648117857

namespace A000780

/-- `A038720(n+1)-A000142(n)` -/
def P4407155033648117857.Spec : Prop :=
  ∀ n, P4407155033648117857.a n = A000780 (n + 1)

end A000780

/-! ## A000780.P721834495385221639

`A000142(n)+n*A229039(n)`
-/

namespace A000780.P721834495385221639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (n : ℤ) * A229039 n

end

end A000780.P721834495385221639

namespace A000780

/-- `A000142(n)+n*A229039(n)` -/
def P721834495385221639.Spec : Prop :=
  ∀ n, P721834495385221639.a n = A000780 (n + 1)

end A000780

/-! ## A000780.P6371752888148305630

`A001563(n)+∑[A074143(n+1)]`
-/

namespace A000780.P6371752888148305630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000780.P6371752888148305630

namespace A000780

/-- `A001563(n)+∑[A074143(n+1)]` -/
def P6371752888148305630.Spec : Prop :=
  ∀ n, P6371752888148305630.a n = A000780 (n + 1)

end A000780

/-!
# A000781: a(n) = 3*Catalan(n) - Catalan(n-1) - 1.

The programs for A000781, the canonical program `A000781.P9610192769601749282` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000781 has offset 1).

The definition of A000781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000781.P6475659085764709828

`A000245(n)+∑[A071721(n)]`
-/

namespace A000781.P6475659085764709828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000781.P6475659085764709828

namespace A000781

/-- `A000245(n)+∑[A071721(n)]` -/
def P6475659085764709828.Spec : Prop :=
  ∀ n, P6475659085764709828.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P15066536588370043693

`A131428(n+1)+A000245(n)`
-/

namespace A000781.P15066536588370043693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 (n + 1) + A000245 n

end

end A000781.P15066536588370043693

namespace A000781

/-- `A131428(n+1)+A000245(n)` -/
def P15066536588370043693.Spec : Prop :=
  ∀ n, P15066536588370043693.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P9610192769601749282

`A000778(n)+2*A000245(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000781

/-- `A000778(n)+2*A000245(n)` -/
def P9610192769601749282.Spec : Prop :=
  ∀ n, P9610192769601749282.a n = A000781 (n + 1)

theorem P9610192769601749282.correct : P9610192769601749282.Spec := by
  intro n
  simp only [A000781, Nat.add_sub_cancel]

end A000781

/-! ## A000781.P14094590636665990029

`A131428(n+1)+Δ[A000108(n)]`
-/

namespace A000781.P14094590636665990029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 (n + 1) + (f1 (n + 1) - f1 n)

end

end A000781.P14094590636665990029

namespace A000781

/-- `A131428(n+1)+Δ[A000108(n)]` -/
def P14094590636665990029.Spec : Prop :=
  ∀ n, P14094590636665990029.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P11182684255402870152

`A131428(n+1)+Δ[A120304(n)]`
-/

namespace A000781.P11182684255402870152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 (n + 1) + (f1 (n + 1) - f1 n)

end

end A000781.P11182684255402870152

namespace A000781

/-- `A131428(n+1)+Δ[A120304(n)]` -/
def P11182684255402870152.Spec : Prop :=
  ∀ n, P11182684255402870152.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P2687011523557188395

`Δ[A246604(n)-2*A106271(n)]`
-/

namespace A000781.P2687011523557188395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n - 2 * A106271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000781.P2687011523557188395

namespace A000781

/-- `Δ[A246604(n)-2*A106271(n)]` -/
def P2687011523557188395.Spec : Prop :=
  ∀ n, P2687011523557188395.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P9419037869017391096

`A068875(n+1)+Δ[A000108(n)]-1`
-/

namespace A000781.P9419037869017391096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A000781.P9419037869017391096

namespace A000781

/-- `A068875(n+1)+Δ[A000108(n)]-1` -/
def P9419037869017391096.Spec : Prop :=
  ∀ n, P9419037869017391096.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P13006719658767090828

`A000778(n)+Δ[A089408(2*(n+1))]`
-/

namespace A000781.P13006719658767090828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000778 n + (f1 (n + 1) - f1 n)

end

end A000781.P13006719658767090828

namespace A000781

/-- `A000778(n)+Δ[A089408(2*(n+1))]` -/
def P13006719658767090828.Spec : Prop :=
  ∀ n, P13006719658767090828.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P17440693340457509860

`3*A000108(n+1)-(A000108(n)+1)`
-/

namespace A000781.P17440693340457509860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000108 (n + 1) - (A000108 n + 1)

end

end A000781.P17440693340457509860

namespace A000781

/-- `3*A000108(n+1)-(A000108(n)+1)` -/
def P17440693340457509860.Spec : Prop :=
  ∀ n, P17440693340457509860.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P4350047246211644214

`A089408(2*(n+2))+A000245(n)-1`
-/

namespace A000781.P4350047246211644214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * (n + 2)) + (A000245 n - 1)

end

end A000781.P4350047246211644214

namespace A000781

/-- `A089408(2*(n+2))+A000245(n)-1` -/
def P4350047246211644214.Spec : Prop :=
  ∀ n, P4350047246211644214.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P5004004341644885216

`A005508(2*n)+A026008(2*n)-1`
-/

namespace A000781.P5004004341644885216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 (2 * n) + (A026008 (2 * n) - 1)

end

end A000781.P5004004341644885216

namespace A000781

/-- `A005508(2*n)+A026008(2*n)-1` -/
def P5004004341644885216.Spec : Prop :=
  ∀ n, P5004004341644885216.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P16333209115535408258

`A208355(2*(n+1))+A005508(2*n)-1`
-/

namespace A000781.P16333209115535408258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * (n + 1)) + (A005508 (2 * n) - 1)

end

end A000781.P16333209115535408258

namespace A000781

/-- `A208355(2*(n+1))+A005508(2*n)-1` -/
def P16333209115535408258.Spec : Prop :=
  ∀ n, P16333209115535408258.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P7213430300098746811

`A089408(A005843(n+2))+Δ[A246604(n)]`
-/

namespace A000781.P7213430300098746811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A005843 (n + 2)).toNat + (f1 (n + 1) - f1 n)

end

end A000781.P7213430300098746811

namespace A000781

/-- `A089408(A005843(n+2))+Δ[A246604(n)]` -/
def P7213430300098746811.Spec : Prop :=
  ∀ n, P7213430300098746811.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P1003672765650890047

`A000245(n)+∑[A071724(n)+A000245(n)]`
-/

namespace A000781.P1003672765650890047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n + A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000781.P1003672765650890047

namespace A000781

/-- `A000245(n)+∑[A071724(n)+A000245(n)]` -/
def P1003672765650890047.Spec : Prop :=
  ∀ n, P1003672765650890047.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P16839748768270987644

`A000108(n+1)+A000245(n)+∑[A000245(n)]`
-/

namespace A000781.P16839748768270987644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A000245 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000781.P16839748768270987644

namespace A000781

/-- `A000108(n+1)+A000245(n)+∑[A000245(n)]` -/
def P16839748768270987644.Spec : Prop :=
  ∀ n, P16839748768270987644.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P7758809389605553614

`A000108(n+1)+A131428(n+1)-A000108(n)`
-/

namespace A000781.P7758809389605553614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A131428 (n + 1) - A000108 n)

end

end A000781.P7758809389605553614

namespace A000781

/-- `A000108(n+1)+A131428(n+1)-A000108(n)` -/
def P7758809389605553614.Spec : Prop :=
  ∀ n, P7758809389605553614.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P1777046249426934126

`A001453(n+2)+A143955(n)-A143955(n+1)`
-/

namespace A000781.P1777046249426934126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001453 (n + 2) + (A143955 n - A143955 (n + 1))

end

end A000781.P1777046249426934126

namespace A000781

/-- `A001453(n+2)+A143955(n)-A143955(n+1)` -/
def P1777046249426934126.Spec : Prop :=
  ∀ n, P1777046249426934126.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P8808143800196949473

`A000778(n+1)-Δ[A000245(n)]`
-/

namespace A000781.P8808143800196949473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000778 (n + 1) - (f1 (n + 1) - f1 n)

end

end A000781.P8808143800196949473

namespace A000781

/-- `A000778(n+1)-Δ[A000245(n)]` -/
def P8808143800196949473.Spec : Prop :=
  ∀ n, P8808143800196949473.a n = A000781 (n + 1)

end A000781

/-! ## A000781.P14353890143903957181

`A061557(n+1)-(A071722(n)+1)`
-/

namespace A000781.P14353890143903957181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061557 (n + 1) - (A071722 n + 1)

end

end A000781.P14353890143903957181

namespace A000781

/-- `A061557(n+1)-(A071722(n)+1)` -/
def P14353890143903957181.Spec : Prop :=
  ∀ n, P14353890143903957181.a n = A000781 (n + 1)

end A000781

/-!
# A000782: a(n) = 2*Catalan(n) - Catalan(n-1).

The programs for A000782, the canonical program `A000782.P6612076279536204559` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000782 has offset 1).

The definition of A000782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000782.P6612076279536204559

`A000108(n+2)-A026012(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A000782

/-- `A000108(n+2)-A026012(n)` -/
def P6612076279536204559.Spec : Prop :=
  ∀ n, P6612076279536204559.a n = A000782 (n + 1)

theorem P6612076279536204559.correct : P6612076279536204559.Spec := by
  intro n
  simp only [A000782, Nat.add_sub_cancel]

end A000782

/-! ## A000782.P13510718418689626397

`∑[A071735(n)]`
-/

namespace A000782.P13510718418689626397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000782.P13510718418689626397

namespace A000782

/-- `∑[A071735(n)]` -/
def P13510718418689626397.Spec : Prop :=
  ∀ n, P13510718418689626397.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P11341092407364070035

`Δ[A081293(n)]`
-/

namespace A000782.P11341092407364070035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000782.P11341092407364070035

namespace A000782

/-- `Δ[A081293(n)]` -/
def P11341092407364070035.Spec : Prop :=
  ∀ n, P11341092407364070035.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P4978296816567607588

`A005508(2*n)`
-/

namespace A000782.P4978296816567607588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 (2 * n)

end

end A000782.P4978296816567607588

namespace A000782

/-- `A005508(2*n)` -/
def P4978296816567607588.Spec : Prop :=
  ∀ n, P4978296816567607588.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P18209964881209433209

`A000108(n)+Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=2`
-/

namespace A000782.P18209964881209433209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A000782.P18209964881209433209

namespace A000782

/-- `A000108(n)+Δ[(4-6/(n+1))*a(n-1)]` -/
def P18209964881209433209.Spec : Prop :=
  ∀ n, P18209964881209433209.a n = (A000782 (n + 1) : ℚ)

end A000782

/-! ## A000782.P1675349379339592110

`record[A005508(A014681(n))]`
-/

namespace A000782.P1675349379339592110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000782.P1675349379339592110

namespace A000782

/-- `record[A005508(A014681(n))]` -/
def P1675349379339592110.Spec : Prop :=
  ∀ n, P1675349379339592110.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P11714255189505181382

`A000245(n)+∑[A071724(n)]`
-/

namespace A000782.P11714255189505181382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000782.P11714255189505181382

namespace A000782

/-- `A000245(n)+∑[A071724(n)]` -/
def P11714255189505181382.Spec : Prop :=
  ∀ n, P11714255189505181382.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P1686094676915772090

`Δ[A014137(n)+A000108(n)]`
-/

namespace A000782.P1686094676915772090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n + A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000782.P1686094676915772090

namespace A000782

/-- `Δ[A014137(n)+A000108(n)]` -/
def P1686094676915772090.Spec : Prop :=
  ∀ n, P1686094676915772090.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P3772512437918806422

`Δ[A014138(n)+A000108(n)]`
-/

namespace A000782.P3772512437918806422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n + A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000782.P3772512437918806422

namespace A000782

/-- `Δ[A014138(n)+A000108(n)]` -/
def P3772512437918806422.Spec : Prop :=
  ∀ n, P3772512437918806422.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P16049753365770230597

`A000245(n)+Δ[A014137(n)]`
-/

namespace A000782.P16049753365770230597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + (f1 (n + 1) - f1 n)

end

end A000782.P16049753365770230597

namespace A000782

/-- `A000245(n)+Δ[A014137(n)]` -/
def P16049753365770230597.Spec : Prop :=
  ∀ n, P16049753365770230597.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P3100246019846780422

`A000245(n)+Δ[A014138(n)]`
-/

namespace A000782.P3100246019846780422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + (f1 (n + 1) - f1 n)

end

end A000782.P3100246019846780422

namespace A000782

/-- `A000245(n)+Δ[A014138(n)]` -/
def P3100246019846780422.Spec : Prop :=
  ∀ n, P3100246019846780422.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P1974707452380026014

`A000108(n)+Δ[A131428(n)]`
-/

namespace A000782.P1974707452380026014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (f1 (n + 1) - f1 n)

end

end A000782.P1974707452380026014

namespace A000782

/-- `A000108(n)+Δ[A131428(n)]` -/
def P1974707452380026014.Spec : Prop :=
  ∀ n, P1974707452380026014.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P1725305790004200634

`Δ[A120304(n)+A014138(n)]`
-/

namespace A000782.P1725305790004200634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000782.P1725305790004200634

namespace A000782

/-- `Δ[A120304(n)+A014138(n)]` -/
def P1725305790004200634.Spec : Prop :=
  ∀ n, P1725305790004200634.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P12465386123353511432

`A000245(n)+record[A126120(n)]`
-/

namespace A000782.P12465386123353511432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000782.P12465386123353511432

namespace A000782

/-- `A000245(n)+record[A126120(n)]` -/
def P12465386123353511432.Spec : Prop :=
  ∀ n, P12465386123353511432.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P15700994805661556484

`A000245(n)+A000108(n+1)`
-/

namespace A000782.P15700994805661556484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + A000108 (n + 1)

end

end A000782.P15700994805661556484

namespace A000782

/-- `A000245(n)+A000108(n+1)` -/
def P15700994805661556484.Spec : Prop :=
  ∀ n, P15700994805661556484.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P539301048544259552

`A143955(n)+A014138(n+1)`
-/

namespace A000782.P539301048544259552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n + A014138 (n + 1)

end

end A000782.P539301048544259552

namespace A000782

/-- `A143955(n)+A014138(n+1)` -/
def P539301048544259552.Spec : Prop :=
  ∀ n, P539301048544259552.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P4347821494572322764

`A068875(n+1)-A000108(n)`
-/

namespace A000782.P4347821494572322764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 1) - A000108 n

end

end A000782.P4347821494572322764

namespace A000782

/-- `A068875(n+1)-A000108(n)` -/
def P4347821494572322764.Spec : Prop :=
  ∀ n, P4347821494572322764.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P18074992411581722418

`A120588(n+2)+A000245(n)`
-/

namespace A000782.P18074992411581722418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2) + A000245 n

end

end A000782.P18074992411581722418

namespace A000782

/-- `A120588(n+2)+A000245(n)` -/
def P18074992411581722418.Spec : Prop :=
  ∀ n, P18074992411581722418.a n = A000782 (n + 1)

end A000782

/-! ## A000782.P8985765903053753806

`A081293(n+1)-A081293(n)`
-/

namespace A000782.P8985765903053753806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081293 (n + 1) - A081293 n

end

end A000782.P8985765903053753806

namespace A000782

/-- `A081293(n+1)-A081293(n)` -/
def P8985765903053753806.Spec : Prop :=
  ∀ n, P8985765903053753806.a n = A000782 (n + 1)

end A000782

/-!
# A000784: Number of symmetrical planar partitions of n (planar partitions (A000219) that when regarded as 3-D objects have just one symmetry plane).

The programs for A000784, there is no canonical definition to state claims against.
-/

/-! ## A000784.P10458433488779648770

`A005987(n+1)-A048141(n+1)`
-/

namespace A000784.P10458433488779648770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005987 (n + 1) - A048141 (n + 1)

end

end A000784.P10458433488779648770

/-! ## A000784.P2447350288378446988

`A005987(n+1)-(A096419(n+1)-2*A048142(n+1))`
-/

namespace A000784.P2447350288378446988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005987 (n + 1) - (A096419 (n + 1) - 2 * A048142 (n + 1))

end

end A000784.P2447350288378446988

/-! ## A000784.P15985682612155722616

`A005987(n+1)-(A096419(n+1)-A005843(A048142(n+1)))`
-/

namespace A000784.P15985682612155722616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005987 (n + 1) - (A096419 (n + 1) - A005843 (A048142 (n + 1)).toNat)

end

end A000784.P15985682612155722616

/-! ## A000784.P14929288200202916581

`A005987(n+1)-A180017(5^A096419(n+1))`
-/

namespace A000784.P14929288200202916581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005987 (n + 1) - A180017 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A096419 (n + 1) : ℤ))).toNat

end

end A000784.P14929288200202916581

/-!
# A000785: Number of asymmetrical planar partitions of n: planar partitions (A000219) that when regarded as 3-D objects have no symmetry.

The programs for A000785, there is no canonical definition to state claims against.
-/

/-! ## A000785.P1592226729190645524

`A000786(n+1)-(A048142(n+1)+A005987(n+1))`
-/

namespace A000785.P1592226729190645524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000786 (n + 1) - (A048142 (n + 1) + A005987 (n + 1))

end

end A000785.P1592226729190645524

/-! ## A000785.P6558406198209795242

`A048139(n+1)-(A048142(n+1)+A000786(n+1))`
-/

namespace A000785.P6558406198209795242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048139 (n + 1) - (A048142 (n + 1) + A000786 (n + 1))

end

end A000785.P6558406198209795242

/-! ## A000785.P14666442152847991801

`A135665(A199103(n))`
-/

namespace A000785.P14666442152847991801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A199103 n).toNat

end

end A000785.P14666442152847991801

/-! ## A000785.P3795153665022941922

`A135661(A293995(n))`
-/

namespace A000785.P3795153665022941922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A293995 n).toNat

end

end A000785.P3795153665022941922

/-! ## A000785.P17277347756198920018

`A340134(A148337(n))`
-/

namespace A000785.P17277347756198920018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340134 (A148337 n).toNat

end

end A000785.P17277347756198920018

/-!
# A000786: Number of inequivalent planar partitions of n, when considering them as 3D objects.

The programs for A000786, there is no canonical definition to state claims against.
-/

/-! ## A000786.P17516540508957165220

`A119269(∑[n+1]+3)`
-/

namespace A000786.P17516540508957165220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000786.P17516540508957165220

/-! ## A000786.P6428927653283522715

`A119338(∑[n+2]-1)`
-/

namespace A000786.P6428927653283522715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A000786.P6428927653283522715

/-! ## A000786.P1925459721465502760

`A119338(A034856(n+1))+char[12]`
-/

namespace A000786.P1925459721465502760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A000786.P1925459721465502760

/-! ## A000786.P12478155427867086789

`A119338(abs(2-C(n+3, 2)))%A160749(n)`
-/

namespace A000786.P12478155427867086789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119338 |2 - (Nat.choose (n + 3) 2 : ℤ)|.toNat) (A160749 n)

end

end A000786.P12478155427867086789

/-! ## A000786.P9017538155438116160

`A119338(A034856(n+1))%A038533(n)`
-/

namespace A000786.P9017538155438116160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119338 (A034856 (n + 1)).toNat) (A038533 n)

end

end A000786.P9017538155438116160

/-!
# A000787: Strobogrammatic numbers: the same upside down.

The programs for A000787, there is no canonical definition to state claims against.
-/

/-! ## A000787.P2278839565335752180

`∩[A018846(n+1), A051791(n+1)]`
-/

namespace A000787.P2278839565335752180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000787.P2278839565335752180

/-! ## A000787.P14949857502450218997

`Δ[A230833(A028310(n))]`
-/

namespace A000787.P14949857502450218997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230833 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000787.P14949857502450218997

/-! ## A000787.P14947820175175306085

`record[Δ[A230833(A008619(n))]]`
-/

namespace A000787.P14947820175175306085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230833 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000787.P14947820175175306085

/-! ## A000787.P9862404687445567783

`record[Δ[A230833(A064542(n+1))]]`
-/

namespace A000787.P9862404687445567783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230833 (A064542 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000787.P9862404687445567783

/-! ## A000787.P13003393264434715471

`A230833(n+1)-A230833(A028310(n))`
-/

namespace A000787.P13003393264434715471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230833 (n + 1) - A230833 (A028310 n).toNat

end

end A000787.P13003393264434715471

/-! ## A000787.P11285808963922703551

`A259984(n+1)-1`
-/

namespace A000787.P11285808963922703551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259984 (n + 1) - 1

end

end A000787.P11285808963922703551

/-! ## A000787.P1986894415394263805

`A260196(n+2)+A259984(n+1)`
-/

namespace A000787.P1986894415394263805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A259984 (n + 1)

end

end A000787.P1986894415394263805

/-! ## A000787.P14301413732484774946

`∩[A018846(n+1), A045574(n+1)]`
-/

namespace A000787.P14301413732484774946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000787.P14301413732484774946

/-! ## A000787.P11603299235125877895

`∩[A045574(n+1), A051791(n+1)]`
-/

namespace A000787.P11603299235125877895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000787.P11603299235125877895

/-! ## A000787.P2240610820117811240

`∩[A018846(n+1), A054047(n)]`
-/

namespace A000787.P2240610820117811240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000787.P2240610820117811240

/-! ## A000787.P18222030186964766686

`∩[A051791(n+1), A054047(n)]`
-/

namespace A000787.P18222030186964766686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000787.P18222030186964766686

/-! ## A000787.P17689492900804172070

`∩[A018846(n+1), A084984(n+1)]`
-/

namespace A000787.P17689492900804172070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000787.P17689492900804172070

/-! ## A000787.P8113782166472992422

`∩[A051791(n+1), A084984(n+1)]`
-/

namespace A000787.P8113782166472992422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000787.P8113782166472992422

/-!
# A000788: Total number of 1's in binary expansions of 0, ..., n.

The programs for A000788, the canonical program `A000788.P8338375810879423652` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000788 has offset 0).

The definition of A000788 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083741, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000788.P8338375810879423652

`A083741(n+1)+A136013(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000788

/-- `A083741(n+1)+A136013(n+1)` -/
def P8338375810879423652.Spec : Prop :=
  ∀ n, P8338375810879423652.a n = A000788 n

theorem P8338375810879423652.correct : P8338375810879423652.Spec := by
  intro n
  simp only [A000788]

end A000788

/-! ## A000788.P10633136500645654220

`∑[a(and(n, n-1))+1]` with `a(0)=0`
-/

namespace A000788.P10633136500645654220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P10633136500645654220

namespace A000788

/-- `∑[a(and(n, n-1))+1]` -/
def P10633136500645654220.Spec : Prop :=
  ∀ n, (P10633136500645654220.a n : ℤ) = A000788 n

end A000788

/-! ## A000788.P1584324735424017576

`∑[∑[∑{e}[xor(n, -n), 2-#]]]`
-/

namespace A000788.P1584324735424017576
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, (2 - (Nat.factorization (f3 n).natAbs p : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P1584324735424017576

namespace A000788

/-- `∑[∑[∑{e}[xor(n, -n), 2-#]]]` -/
def P1584324735424017576.Spec : Prop :=
  ∀ n, P1584324735424017576.a n = A000788 n

end A000788

/-! ## A000788.P16986082708336356813

`∑[a(floor(n/2))+n%2]` with `a(0)=0`
-/

namespace A000788.P16986082708336356813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P16986082708336356813

namespace A000788

/-- `∑[a(floor(n/2))+n%2]` -/
def P16986082708336356813.Spec : Prop :=
  ∀ n, (P16986082708336356813.a n : ℤ) = A000788 n

end A000788

/-! ## A000788.P3259455190089385684

`∑[n]-∑[∑[∑{e}[and(n, -n), #]]]`
-/

namespace A000788.P3259455190089385684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n).natAbs, Nat.factorization (f4 n).natAbs p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A000788.P3259455190089385684

namespace A000788

/-- `∑[n]-∑[∑[∑{e}[and(n, -n), #]]]` -/
def P3259455190089385684.Spec : Prop :=
  ∀ n, P3259455190089385684.a n = A000788 n

end A000788

/-! ## A000788.P7074799597489969060

`∑[a(n-1)+1-val(n, 2)]` with `a(0)=0`
-/

namespace A000788.P7074799597489969060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (1 - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P7074799597489969060

namespace A000788

/-- `∑[a(n-1)+1-val(n, 2)]` -/
def P7074799597489969060.Spec : Prop :=
  ∀ n, P7074799597489969060.a n = A000788 n

end A000788

/-! ## A000788.P16617107646723212771

`∑[1-floor(-a(and(n, n-1)))]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000788.P16617107646723212771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - (-f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P16617107646723212771

namespace A000788

/-- `∑[1-floor(-a(and(n, n-1)))]` -/
def P16617107646723212771.Spec : Prop :=
  ∀ n, P16617107646723212771.a n = A000788 n

end A000788

/-! ## A000788.P13496406283986649431

`∑[∑[1-val(n, 2)*a(n-1)]]` with `a(0)=0`
-/

namespace A000788.P13496406283986649431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - (SequenceMachineLib.valuation n 2 : ℤ) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P13496406283986649431

namespace A000788

/-- `∑[∑[1-val(n, 2)*a(n-1)]]` -/
def P13496406283986649431.Spec : Prop :=
  ∀ n, P13496406283986649431.a n = A000788 n

end A000788

/-! ## A000788.P637786032158785070

`∑[∑[a(floor(n/2))-a(n-1)]]/3` with `a(0)=0, a(1)=3`
-/

namespace A000788.P637786032158785070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A000788.P637786032158785070

namespace A000788

/-- `∑[∑[a(floor(n/2))-a(n-1)]]/3` -/
def P637786032158785070.Spec : Prop :=
  ∀ n, P637786032158785070.a n = (A000788 n : ℚ)

end A000788

/-! ## A000788.P8013627522903692513

`floor((n+1)/2)+a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)` with `a(0)=0`
-/

namespace A000788.P8013627522903692513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 1 : ℚ) / 2⌋ + a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + a (⌈(n + 1 : ℚ) / 2⌉ - 1).toNat

end

end A000788.P8013627522903692513

namespace A000788

/-- `floor((n+1)/2)+a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)` -/
def P8013627522903692513.Spec : Prop :=
  ∀ n, P8013627522903692513.a n = A000788 n

end A000788

/-! ## A000788.P12951914921694896602

`sqrt(A163095(n))`
-/

namespace A000788.P12951914921694896602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A163095 n : ℝ)

end

end A000788.P12951914921694896602

namespace A000788

/-- `sqrt(A163095(n))` -/
def P12951914921694896602.Spec : Prop :=
  ∀ n, P12951914921694896602.a n = (A000788 n : ℝ)

end A000788

/-! ## A000788.P11065878673685061063

`∑[A000120(n)]`
-/

namespace A000788.P11065878673685061063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P11065878673685061063

namespace A000788

/-- `∑[A000120(n)]` -/
def P11065878673685061063.Spec : Prop :=
  ∀ n, P11065878673685061063.a n = A000788 n

end A000788

/-! ## A000788.P564466872540513102

`∑[log2(A001316(n))]`
-/

namespace A000788.P564466872540513102
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P564466872540513102

namespace A000788

/-- `∑[log2(A001316(n))]` -/
def P564466872540513102.Spec : Prop :=
  ∀ n, P564466872540513102.a n = (A000788 n : ℝ)

end A000788

/-! ## A000788.P8996296297251999510

`∑[∑[A088705(n)]]`
-/

namespace A000788.P8996296297251999510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P8996296297251999510

namespace A000788

/-- `∑[∑[A088705(n)]]` -/
def P8996296297251999510.Spec : Prop :=
  ∀ n, P8996296297251999510.a n = A000788 n

end A000788

/-! ## A000788.P13152707891718747102

`∑[val(A102377(n), 2)]`
-/

namespace A000788.P13152707891718747102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P13152707891718747102

namespace A000788

/-- `∑[val(A102377(n), 2)]` -/
def P13152707891718747102.Spec : Prop :=
  ∀ n, (P13152707891718747102.a n : ℤ) = A000788 n

end A000788

/-! ## A000788.P11147008002236564003

`∑[val(A160713(n), 2)]`
-/

namespace A000788.P11147008002236564003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A160713 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P11147008002236564003

namespace A000788

/-- `∑[val(A160713(n), 2)]` -/
def P11147008002236564003.Spec : Prop :=
  ∀ n, (P11147008002236564003.a n : ℤ) = A000788 n

end A000788

/-! ## A000788.P3544078929772212557

`∑[n-A011371(n)]`
-/

namespace A000788.P3544078929772212557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P3544078929772212557

namespace A000788

/-- `∑[n-A011371(n)]` -/
def P3544078929772212557.Spec : Prop :=
  ∀ n, P3544078929772212557.a n = A000788 n

end A000788

/-! ## A000788.P5712125208476464807

`∑[A092391(n)-n]`
-/

namespace A000788.P5712125208476464807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P5712125208476464807

namespace A000788

/-- `∑[A092391(n)-n]` -/
def P5712125208476464807.Spec : Prop :=
  ∀ n, P5712125208476464807.a n = A000788 n

end A000788

/-! ## A000788.P4715595315060962667

`∑[n]-A174605(n)`
-/

namespace A000788.P4715595315060962667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A174605 n

end

end A000788.P4715595315060962667

namespace A000788

/-- `∑[n]-A174605(n)` -/
def P4715595315060962667.Spec : Prop :=
  ∀ n, P4715595315060962667.a n = A000788 n

end A000788

/-! ## A000788.P13490205350996534773

`∑[log2(Δ[A006046(n)])]`
-/

namespace A000788.P13490205350996534773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000788.P13490205350996534773

namespace A000788

/-- `∑[log2(Δ[A006046(n)])]` -/
def P13490205350996534773.Spec : Prop :=
  ∀ n, P13490205350996534773.a n = (A000788 n : ℝ)

end A000788

/-!
# A000789: Maximal order of a triangle-free cyclic graph with no independent set of size n.

The programs for A000789, there is no canonical definition to state claims against.
-/

/-! ## A000789.P9420569935042527837

`A267295(n+2)-1`
-/

namespace A000789.P9420569935042527837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267295 (n + 2) - 1

end

end A000789.P9420569935042527837

/-! ## A000789.P8540811257981668356

`∑[∏{e}[A100346(n+3)+1, #+1]+1]-1`
-/

namespace A000789.P8540811257981668356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100346 (n + 3) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A000789.P8540811257981668356

/-! ## A000789.P5831164723952576468

`A023443(A267295(n+2))`
-/

namespace A000789.P5831164723952576468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A267295 (n + 2)).toNat

end

end A000789.P5831164723952576468

/-! ## A000789.P17882063228920528594

`A057918(A267295(n+2)²)`
-/

namespace A000789.P17882063228920528594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A267295 (n + 2) ^ 2).toNat

end

end A000789.P17882063228920528594

/-! ## A000789.P5043097595767155452

`A023444(A267295(n+2)+1)`
-/

namespace A000789.P5043097595767155452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A267295 (n + 2) + 1).toNat

end

end A000789.P5043097595767155452

/-!
# A000791: Ramsey numbers R(3,n).

The programs for A000791, there is no canonical definition to state claims against.
-/

/-! ## A000791.P16110733568365873562

`ogf((1+2x+3x^2+3x^3+5x^4+4x^5+5x^6+5x^7+8x^8)/(1-x))`
-/

namespace A000791.P16110733568365873562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 3, 5, 4, 5, 5, 8] [1, -1] n

end

end A000791.P16110733568365873562

/-! ## A000791.P2701781678285692983

`∑[A087826(comp[C(n, 2)])]`
-/

namespace A000791.P2701781678285692983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087826 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000791.P2701781678285692983

/-! ## A000791.P7029084545071447475

`∑[A166267(n+1)]+n`
-/

namespace A000791.P7029084545071447475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A000791.P7029084545071447475

/-! ## A000791.P5953288976860323362

`∑[n+1-A219865(n)]`
-/

namespace A000791.P5953288976860323362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A219865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000791.P5953288976860323362

/-! ## A000791.P11261065874106200489

`floor(∑[sqrt(A280996(n+2))])`
-/

namespace A000791.P11261065874106200489
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280996 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A000791.P11261065874106200489

/-!
# A000792: a(n) = max{(n - i)*a(i) : i < n}; a(0) = 1.

The programs for A000792, the canonical program `A000792.P5885016032557740906` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000792 has offset 0).

The definition of A000792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000792.P5885016032557740906

`3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000792

/-- `3*a(n-3)` -/
def P5885016032557740906.Spec : Prop :=
  ∀ n, (P5885016032557740906.a n : ℤ) = A000792 n

theorem P5885016032557740906.correct : P5885016032557740906.Spec := by
  intro n
  simp only [A000792]

end A000792

/-! ## A000792.P10436303597307349302

`a(n-1)+a(n-1)/(a(n-1)%2+2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A000792.P10436303597307349302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + a (n - 1) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 + 2 : ℚ)

end

end A000792.P10436303597307349302

namespace A000792

/-- `a(n-1)+a(n-1)/(a(n-1)%2+2)` -/
def P10436303597307349302.Spec : Prop :=
  ∀ n, P10436303597307349302.a n = (A000792 n : ℚ)

end A000792

/-! ## A000792.P3788484983437051946

`A329684(n)+A135908(n)`
-/

namespace A000792.P3788484983437051946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n + A135908 n

end

end A000792.P3788484983437051946

namespace A000792

/-- `A329684(n)+A135908(n)` -/
def P3788484983437051946.Spec : Prop :=
  ∀ n, P3788484983437051946.a n = A000792 n

end A000792

/-! ## A000792.P15848271270574235895

`A000007(n)+record[A122164(n)]`
-/

namespace A000792.P15848271270574235895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000792.P15848271270574235895

namespace A000792

/-- `A000007(n)+record[A122164(n)]` -/
def P15848271270574235895.Spec : Prop :=
  ∀ n, P15848271270574235895.a n = A000792 n

end A000792

/-! ## A000792.P11329420891046687228

`ogf((-1-x-2x^2-x^4)/(-1+3x^3))`
-/

namespace A000792.P11329420891046687228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 0, 1] [1, 0, 0, -3] n

end

end A000792.P11329420891046687228

namespace A000792

/-- `ogf((-1-x-2x^2-x^4)/(-1+3x^3))` -/
def P11329420891046687228.Spec : Prop :=
  ∀ n, P11329420891046687228.a n = A000792 n

end A000792

/-! ## A000792.P11558917243596504503

`record[A155118(n)]+C(2, n+2)`
-/

namespace A000792.P11558917243596504503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.choose 2 (n + 2) : ℤ)

end

end A000792.P11558917243596504503

namespace A000792

/-- `record[A155118(n)]+C(2, n+2)` -/
def P11558917243596504503.Spec : Prop :=
  ∀ n, P11558917243596504503.a n = A000792 n

end A000792

/-! ## A000792.P9058804873965586183

`A000007(n)+record[A155118(n)]`
-/

namespace A000792.P9058804873965586183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000792.P9058804873965586183

namespace A000792

/-- `A000007(n)+record[A155118(n)]` -/
def P9058804873965586183.Spec : Prop :=
  ∀ n, P9058804873965586183.a n = A000792 n

end A000792

/-! ## A000792.P11868314376889823968

`A192490(2*(n+1))+record[A155118(n)]`
-/

namespace A000792.P11868314376889823968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000792.P11868314376889823968

namespace A000792

/-- `A192490(2*(n+1))+record[A155118(n)]` -/
def P11868314376889823968.Spec : Prop :=
  ∀ n, P11868314376889823968.a n = A000792 n

end A000792

/-! ## A000792.P2933271371560706117

`gcd(record[A155118(n)], A003946(n))`
-/

namespace A000792.P2933271371560706117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A003946 n)

end

end A000792.P2933271371560706117

namespace A000792

/-- `gcd(record[A155118(n)], A003946(n))` -/
def P2933271371560706117.Spec : Prop :=
  ∀ n, (P2933271371560706117.a n : ℤ) = A000792 n

end A000792

/-! ## A000792.P15721344022246264792

`A209435(A389142(n))`
-/

namespace A000792.P15721344022246264792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A389142 n).toNat

end

end A000792.P15721344022246264792

namespace A000792

/-- `A209435(A389142(n))` -/
def P15721344022246264792.Spec : Prop :=
  ∀ n, P15721344022246264792.a n = A000792 n

end A000792

/-!
# A000793: Landau's function g(n): largest order of permutation of n elements. Equivalently, largest LCM of partitions of n.

The programs for A000793, there is no canonical definition to state claims against.
-/

/-! ## A000793.P4694314561833745483

`A002809(∑[char[A006644(n+1)]])`
-/

namespace A000793.P4694314561833745483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006644 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002809 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000793.P4694314561833745483

/-! ## A000793.P8673740156300390048

`A056040(n)/A225558(n)*A180000(n)`
-/

namespace A000793.P8673740156300390048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A225558 n : ℚ) * (A180000 n : ℚ)

end

end A000793.P8673740156300390048

/-! ## A000793.P16199130784630560843

`A001405(n)/A225558(n)*A263673(n)`
-/

namespace A000793.P16199130784630560843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A225558 n : ℚ) * (A263673 n : ℚ)

end

end A000793.P16199130784630560843

/-! ## A000793.P1741308680687356829

`A003418(n)/A225558(n)`
-/

namespace A000793.P1741308680687356829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A225558 n : ℚ)

end

end A000793.P1741308680687356829

/-! ## A000793.P13032168997198121699

`(A075059(n)-1)/A225558(n)`
-/

namespace A000793.P13032168997198121699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075059 n - 1 : ℚ) / (A225558 n : ℚ)

end

end A000793.P13032168997198121699

/-! ## A000793.P10079192283022121452

`A139550(2*n)/A225558(n)`
-/

namespace A000793.P10079192283022121452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139550 (2 * n) : ℚ) / (A225558 n : ℚ)

end

end A000793.P10079192283022121452

/-! ## A000793.P16195654717183931609

`A120108(A161680(n))/A225558(n)`
-/

namespace A000793.P16195654717183931609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120108 (A161680 n).toNat : ℚ) / (A225558 n : ℚ)

end

end A000793.P16195654717183931609

/-! ## A000793.P1387536324603535843

`A074103(n)/A074115(n)*A074859(n)`
-/

namespace A000793.P1387536324603535843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074103 n : ℚ) / (A074115 n : ℚ) * (A074859 n : ℚ)

end

end A000793.P1387536324603535843

/-! ## A000793.P2825056329821506728

`n!/A074115(n)`
-/

namespace A000793.P2825056329821506728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A074115 n : ℚ)

end

end A000793.P2825056329821506728

/-! ## A000793.P6855686846557955566

`A000142(n)/A074115(n)`
-/

namespace A000793.P6855686846557955566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A074115 n : ℚ)

end

end A000793.P6855686846557955566

/-!
# A000795: Salié numbers: expansion of cosh x / cos x = Sum_{n >= 0} a(n)*x^(2n)/(2n)!.

The programs for A000795, there is no canonical definition to state claims against.
-/

/-! ## A000795.P5578686369835269577

`A003701(2*n)`
-/

namespace A000795.P5578686369835269577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003701 (2 * n)

end

end A000795.P5578686369835269577

/-! ## A000795.P17457865424836988393

`A062272(2*n)`
-/

namespace A000795.P17457865424836988393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062272 (2 * n)

end

end A000795.P17457865424836988393

/-! ## A000795.P7556833585122194255

`2^n*A005647(n)`
-/

namespace A000795.P7556833585122194255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005647 n

end

end A000795.P7556833585122194255

/-! ## A000795.P4306710431266481168

`lcm(2^n, A250259(2*n))`
-/

namespace A000795.P4306710431266481168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A250259 (2 * n))

end

end A000795.P4306710431266481168

/-! ## A000795.P9907228459708439908

`record[A003701(n)/A033999(n)]`
-/

namespace A000795.P9907228459708439908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003701 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000795.P9907228459708439908

/-!
# A000796: Decimal expansion of Pi (or digits of Pi).

The programs for A000796, there is no canonical definition to state claims against.
-/

/-! ## A000796.P9486853941048616220

`9-A030644(n)`
-/

namespace A000796.P9486853941048616220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (n + 1)

end

end A000796.P9486853941048616220

/-! ## A000796.P6358786506631777391

`sqrt(A072448(n+1))`
-/

namespace A000796.P6358786506631777391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072448 (n + 1) : ℝ)

end

end A000796.P6358786506631777391

/-! ## A000796.P1561059216201042123

`A123152(n+1)-1`
-/

namespace A000796.P1561059216201042123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) - 1

end

end A000796.P1561059216201042123

/-! ## A000796.P8048470591300514755

`A065253(n+1)%10`
-/

namespace A000796.P8048470591300514755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 10

end

end A000796.P8048470591300514755

/-! ## A000796.P319670328335877372

`A261197(n+1)^(1/3)`
-/

namespace A000796.P319670328335877372
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A261197 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A000796.P319670328335877372

/-! ## A000796.P8314457017300333031

`A095916(n)+a(n-1)` with `a(0)=3`
-/

namespace A000796.P8314457017300333031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A095916 n + a (n - 1)

end

end A000796.P8314457017300333031

/-! ## A000796.P13299033547388655002

`A110883(n)-a(n-1)` with `a(0)=3`
-/

namespace A000796.P13299033547388655002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A110883 n - a (n - 1)

end

end A000796.P13299033547388655002

/-! ## A000796.P13906296412028641633

`A187747(n)+A001113(n)`
-/

namespace A000796.P13906296412028641633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n + A001113 (n + 1)

end

end A000796.P13906296412028641633

/-! ## A000796.P18290514895285263463

`A073212(n)-A001113(n)`
-/

namespace A000796.P18290514895285263463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - A001113 (n + 1)

end

end A000796.P18290514895285263463

/-! ## A000796.P14042163965839445511

`A054249(n+1)+A033999(n)`
-/

namespace A000796.P14042163965839445511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + A033999 n

end

end A000796.P14042163965839445511

/-! ## A000796.P17993401213713527568

`A081737(n+1)-A008592(n)`
-/

namespace A000796.P17993401213713527568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081737 (n + 1) - A008592 n

end

end A000796.P17993401213713527568

/-! ## A000796.P4782879525959421161

`A081737(n+1)%A040020(n)`
-/

namespace A000796.P4782879525959421161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081737 (n + 1)) (A040020 n)

end

end A000796.P4782879525959421161

/-! ## A000796.P17218744369914787882

`A062157(n+1)+A054249(n+1)`
-/

namespace A000796.P17218744369914787882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) + A054249 (n + 1)

end

end A000796.P17218744369914787882

/-! ## A000796.P13260359399747579916

`A054249(n+1)+1-A010673(n)`
-/

namespace A000796.P13260359399747579916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + (1 - A010673 n)

end

end A000796.P13260359399747579916

/-! ## A000796.P11349094456184269633

`A054249(n+1)+2-A010684(n)`
-/

namespace A000796.P11349094456184269633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + (2 - A010684 n)

end

end A000796.P11349094456184269633

/-! ## A000796.P420519558131317962

`A123153(n+1)/A000040(n+1)`
-/

namespace A000796.P420519558131317962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123153 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A000796.P420519558131317962

/-! ## A000796.P8525699981361399329

`A166931(n+1)%A123152(n+1)`
-/

namespace A000796.P8525699981361399329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A123152 (n + 1))

end

end A000796.P8525699981361399329

/-! ## A000796.P3522818704685723796

`A261197(n+1)%A123152(n+1)`
-/

namespace A000796.P3522818704685723796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261197 (n + 1)) (A123152 (n + 1))

end

end A000796.P3522818704685723796

/-! ## A000796.P16420829905153190769

`gcd(A072448(n+1), A123153(n+1))`
-/

namespace A000796.P16420829905153190769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072448 (n + 1)) (A123153 (n + 1))

end

end A000796.P16420829905153190769

/-! ## A000796.P10605814398654394122

`A127228(n+4)%A123152(n+1)`
-/

namespace A000796.P10605814398654394122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A123152 (n + 1))

end

end A000796.P10605814398654394122

/-!
# A000797: Numbers that are not the sum of 4 tetrahedral numbers.

The programs for A000797, there is no canonical definition to state claims against.
-/

/-! ## A000797.P4038378978390478910

`eq[5, A104246(n+1)]+1`
-/

namespace A000797.P4038378978390478910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000797.P4038378978390478910

/-! ## A000797.P13929861505191653222

`lt[4, A104246(A028310(n))]`
-/

namespace A000797.P13929861505191653222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000797.P13929861505191653222

/-! ## A000797.P6375270811952430291

`A020725(eq[5, A104246(n+1)])`
-/

namespace A000797.P6375270811952430291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000797.P6375270811952430291

/-! ## A000797.P9989999586949077060

`A063660(eq[5, A104246(n+1)])`
-/

namespace A000797.P9989999586949077060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000797.P9989999586949077060

/-! ## A000797.P6349836076989675047

`A153152(eq[5, A104246(n+1)])`
-/

namespace A000797.P6349836076989675047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000797.P6349836076989675047

/-! ## A000797.P8033370649381704331

`eq[5, A104246(A123108(2*n))]`
-/

namespace A000797.P8033370649381704331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000797.P8033370649381704331

/-!
# A000798: Number of different quasi-orders (or topologies, or transitive digraphs) with n labeled elements.

The programs for A000798, there is no canonical definition to state claims against.
-/

/-! ## A000798.P1538006295252315971

`A245767(∑[n]+n)`
-/

namespace A000798.P1538006295252315971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245767 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000798.P1538006295252315971

/-! ## A000798.P12922846185787393992

`A122836(n)+A122835(n)`
-/

namespace A000798.P12922846185787393992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122836 n + A122835 n

end

end A000798.P12922846185787393992

/-! ## A000798.P12784039401804698545

`A376064(n)+A001035(n)`
-/

namespace A000798.P12784039401804698545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376064 n + A001035 n

end

end A000798.P12784039401804698545

/-! ## A000798.P10735559370677258120

`A326909(n)-A006058(n)`
-/

namespace A000798.P10735559370677258120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n - A006058 n

end

end A000798.P10735559370677258120

/-! ## A000798.P16261235533731879525

`A006905(n)-A394405(n)`
-/

namespace A000798.P16261235533731879525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - A394405 n

end

end A000798.P16261235533731879525

/-!
# A000799: a(n) = floor(2^n / n).

The programs for A000799, the canonical program `A000799.P3070027340421669471` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000799 has offset 1).

The definition of A000799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(n+1)/(n+1))` (program `A000799.P3070027340421669471`, by `A000799.P3070027340421669471.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000799.P3070027340421669471

`floor(2^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000799

/-- `floor(2^(n+1)/(n+1))` -/
def P3070027340421669471.Spec : Prop :=
  ∀ n, P3070027340421669471.a n = A000799 (n + 1)

theorem P3070027340421669471.correct : P3070027340421669471.Spec := by
  intro n
  simp only [A000799, Nat.add_sub_cancel]

end A000799

/-! ## A000799.P8133862244709605742

`A082482(n+1)+A036987(n)`
-/

namespace A000799.P8133862244709605742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 1) + A036987 n

end

end A000799.P8133862244709605742

namespace A000799

/-- `A082482(n+1)+A036987(n)` -/
def P8133862244709605742.Spec : Prop :=
  ∀ n, P8133862244709605742.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P4498873731031775068

`A114699(n)+A064355(n+1)`
-/

namespace A000799.P4498873731031775068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114699 n + A064355 (n + 1)

end

end A000799.P4498873731031775068

namespace A000799

/-- `A114699(n)+A064355(n+1)` -/
def P4498873731031775068.Spec : Prop :=
  ∀ n, P4498873731031775068.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P11342762907732234157

`A053638(n+1)-A043545(n)`
-/

namespace A000799.P11342762907732234157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053638 (n + 1) - A043545 n

end

end A000799.P11342762907732234157

namespace A000799

/-- `A053638(n+1)-A043545(n)` -/
def P11342762907732234157.Spec : Prop :=
  ∀ n, P11342762907732234157.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P16914157562844700068

`A054650(n+1)+A006788(n+1)`
-/

namespace A000799.P16914157562844700068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054650 (n + 1) + A006788 (n + 1)

end

end A000799.P16914157562844700068

namespace A000799

/-- `A054650(n+1)+A006788(n+1)` -/
def P16914157562844700068.Spec : Prop :=
  ∀ n, P16914157562844700068.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P4861505490406463054

`A373895(n+1)-A201219(n+1)`
-/

namespace A000799.P4861505490406463054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373895 (n + 1) - A201219 (n + 1)

end

end A000799.P4861505490406463054

namespace A000799

/-- `A373895(n+1)-A201219(n+1)` -/
def P4861505490406463054.Spec : Prop :=
  ∀ n, P4861505490406463054.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P16519018344659864131

`A082482(n+1)+2-A043529(n)`
-/

namespace A000799.P16519018344659864131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 1) + (2 - A043529 n)

end

end A000799.P16519018344659864131

namespace A000799

/-- `A082482(n+1)+2-A043529(n)` -/
def P16519018344659864131.Spec : Prop :=
  ∀ n, P16519018344659864131.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P492116957467065484

`A000048(n+1)+A114699(n)+A000048(n+1)`
-/

namespace A000799.P492116957467065484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A114699 n + A000048 (n + 1))

end

end A000799.P492116957467065484

namespace A000799

/-- `A000048(n+1)+A114699(n)+A000048(n+1)` -/
def P492116957467065484.Spec : Prop :=
  ∀ n, P492116957467065484.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P1452339997349643137

`A053638(n+1)-A082493(n+1)/A082494(n+1)`
-/

namespace A000799.P1452339997349643137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053638 (n + 1) : ℚ) - (A082493 (n + 1) : ℚ) / (A082494 (n + 1) : ℚ)

end

end A000799.P1452339997349643137

namespace A000799

/-- `A053638(n+1)-A082493(n+1)/A082494(n+1)` -/
def P1452339997349643137.Spec : Prop :=
  ∀ n, P1452339997349643137.a n = (A000799 (n + 1) : ℚ)

end A000799

/-! ## A000799.P13160101331454035403

`ceil((A281375(n+1)-1)/2)`
-/

namespace A000799.P13160101331454035403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A281375 (n + 1) - 1 : ℚ) / 2⌉

end

end A000799.P13160101331454035403

namespace A000799

/-- `ceil((A281375(n+1)-1)/2)` -/
def P13160101331454035403.Spec : Prop :=
  ∀ n, P13160101331454035403.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P8078247083852154707

`A281375(n+1)-A065482(n+1)`
-/

namespace A000799.P8078247083852154707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281375 (n + 1) - A065482 (n + 1)

end

end A000799.P8078247083852154707

namespace A000799

/-- `A281375(n+1)-A065482(n+1)` -/
def P8078247083852154707.Spec : Prop :=
  ∀ n, P8078247083852154707.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P7686652815750367748

`A053638(n+1)+A281375(n+1)-A053639(n+1)`
-/

namespace A000799.P7686652815750367748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053638 (n + 1) + (A281375 (n + 1) - A053639 (n + 1))

end

end A000799.P7686652815750367748

namespace A000799

/-- `A053638(n+1)+A281375(n+1)-A053639(n+1)` -/
def P7686652815750367748.Spec : Prop :=
  ∀ n, P7686652815750367748.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P10640438681877745429

`(2^(n+1)-(2^(n+1))%(n+1))/(n+1)`
-/

namespace A000799.P10640438681877745429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - ((2 ^ (n + 1) % (n + 1) : ℕ) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A000799.P10640438681877745429

namespace A000799

/-- `(2^(n+1)-(2^(n+1))%(n+1))/(n+1)` -/
def P10640438681877745429.Spec : Prop :=
  ∀ n, P10640438681877745429.a n = (A000799 (n + 1) : ℚ)

end A000799

/-! ## A000799.P7298390781250504748

`A128092(n+1)/(n+1)`
-/

namespace A000799.P7298390781250504748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128092 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000799.P7298390781250504748

namespace A000799

/-- `A128092(n+1)/(n+1)` -/
def P7298390781250504748.Spec : Prop :=
  ∀ n, P7298390781250504748.a n = (A000799 (n + 1) : ℚ)

end A000799

/-! ## A000799.P16168571809462605882

`ceil(A132045(n+1)/(n+1))`
-/

namespace A000799.P16168571809462605882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132045 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A000799.P16168571809462605882

namespace A000799

/-- `ceil(A132045(n+1)/(n+1))` -/
def P16168571809462605882.Spec : Prop :=
  ∀ n, P16168571809462605882.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P11917135797476486223

`floor(∑[A255047(n)]/(n+1))+1`
-/

namespace A000799.P11917135797476486223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A000799.P11917135797476486223

namespace A000799

/-- `floor(∑[A255047(n)]/(n+1))+1` -/
def P11917135797476486223.Spec : Prop :=
  ∀ n, P11917135797476486223.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P11509943195732520055

`ceil((A000079(n+1)-n)/(n+1))`
-/

namespace A000799.P11509943195732520055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A000799.P11509943195732520055

namespace A000799

/-- `ceil((A000079(n+1)-n)/(n+1))` -/
def P11509943195732520055.Spec : Prop :=
  ∀ n, P11509943195732520055.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P10899372197743573029

`ceil((A131577(n+2)-n)/(n+1))`
-/

namespace A000799.P10899372197743573029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131577 (n + 2) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A000799.P10899372197743573029

namespace A000799

/-- `ceil((A131577(n+2)-n)/(n+1))` -/
def P10899372197743573029.Spec : Prop :=
  ∀ n, P10899372197743573029.a n = A000799 (n + 1)

end A000799

/-! ## A000799.P7255271032996960403

`ceil((∑[∑[A131577(n)]]+2)/(n+1))`
-/

namespace A000799.P7255271032996960403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A000799.P7255271032996960403

namespace A000799

/-- `ceil((∑[∑[A131577(n)]]+2)/(n+1))` -/
def P7255271032996960403.Spec : Prop :=
  ∀ n, P7255271032996960403.a n = A000799 (n + 1)

end A000799

