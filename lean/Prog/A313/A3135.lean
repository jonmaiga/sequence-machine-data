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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A313500: Coordination sequence Gal.6.455.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313500, there is no canonical definition to state claims against.
-/

/-! ## A313500.P18306694931620256436

`A315006(n)+A016406(A052905(n))`
-/

namespace A313500.P18306694931620256436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315006 n + A016406 (A052905 n).toNat

end

end A313500.P18306694931620256436

/-! ## A313500.P9432926686697622469

`A313510(n)-A178798(A022144(n))`
-/

namespace A313500.P9432926686697622469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n - A178798 (A022144 n).toNat

end

end A313500.P9432926686697622469

/-! ## A313500.P11558117997715617164

`or(A049321(A122367(n)), A313487(n))`
-/

namespace A313500.P11558117997715617164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049321 (A122367 n).toNat) (A313487 n)

end

end A313500.P11558117997715617164

/-! ## A313500.P16860985262089295217

`or(A302110(A088218(n)), A313487(n))`
-/

namespace A313500.P16860985262089295217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A302110 (A088218 n).toNat) (A313487 n)

end

end A313500.P16860985262089295217

/-! ## A313500.P301015158862520086

`or(A001221(A078008(2*n)), A313488(n))`
-/

namespace A313500.P301015158862520086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A078008 (2 * n)).toNat) (A313488 n)

end

end A313500.P301015158862520086

/-!
# A313501: Coordination sequence Gal.4.91.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313501, there is no canonical definition to state claims against.
-/

/-! ## A313501.P736429721910846949

`A314143(n)-A001222(A110128(n))`
-/

namespace A313501.P736429721910846949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314143 n - A001222 (A110128 n).toNat

end

end A313501.P736429721910846949

/-! ## A313501.P9198774007419822521

`A313502(n)-A124761(A126869(n))`
-/

namespace A313501.P9198774007419822521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313502 n - A124761 (A126869 n).toNat

end

end A313501.P9198774007419822521

/-! ## A313501.P324421601015490598

`A313502(n)-A186748(A166043(n))`
-/

namespace A313501.P324421601015490598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313502 n - A186748 (A166043 n).toNat

end

end A313501.P324421601015490598

/-! ## A313501.P5091714933126316041

`A354912(3*n+1)+A053692(A270339(3*n+2))`
-/

namespace A313501.P5091714933126316041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 (3 * n + 1) + A053692 (A270339 (3 * n + 2)).toNat

end

end A313501.P5091714933126316041

/-! ## A313501.P12281964596943601971

`A036741(or(1, A301301(n)))`
-/

namespace A313501.P12281964596943601971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036741 (Int.lor 1 (A301301 n)).toNat

end

end A313501.P12281964596943601971

/-!
# A313502: Coordination sequence Gal.6.447.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313502, there is no canonical definition to state claims against.
-/

/-! ## A313502.P2942735777112136176

`A311033(n)+record[A348528(n)]`
-/

namespace A313502.P2942735777112136176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311033 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313502.P2942735777112136176

/-! ## A313502.P922265559177497636

`A129618(A016813(n)-A326471(n))`
-/

namespace A313502.P922265559177497636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (A016813 n - A326471 n).toNat

end

end A313502.P922265559177497636

/-! ## A313502.P7257797471675191093

`A313491(A062399(n))+log2(A043557(n))`
-/

namespace A313502.P7257797471675191093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A313491 (A062399 n).toNat : ℝ) + Real.logb 2 (A043557 n : ℝ)

end

end A313502.P7257797471675191093

/-! ## A313502.P6087353451421462391

`A313491(A120126(n))+log2(A043557(n))`
-/

namespace A313502.P6087353451421462391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A313491 (A120126 n).toNat : ℝ) + Real.logb 2 (A043557 n : ℝ)

end

end A313502.P6087353451421462391

/-! ## A313502.P13917793689224823265

`A311033(A062399(n))+A052413(n+1)`
-/

namespace A313502.P13917793689224823265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311033 (A062399 n).toNat + A052413 (n + 1)

end

end A313502.P13917793689224823265

/-!
# A313503: Coordination sequence Gal.5.178.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313503, there is no canonical definition to state claims against.
-/

/-! ## A313503.P9898268731344385503

`A311154(A062399(n))+A280667(A312248(n))`
-/

namespace A313503.P9898268731344385503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311154 (A062399 n).toNat + A280667 (A312248 n).toNat

end

end A313503.P9898268731344385503

/-! ## A313503.P2615231371607293349

`A129618(A314670(n))`
-/

namespace A313503.P2615231371607293349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (A314670 n).toNat

end

end A313503.P2615231371607293349

/-! ## A313503.P7812286165640314546

`A241338(n)+A005245(A303863(n))`
-/

namespace A313503.P7812286165640314546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241338 n + A005245 (A303863 n).toNat

end

end A313503.P7812286165640314546

/-! ## A313503.P11015610484282008761

`or(A001222(A047849(n)), A313502(n))`
-/

namespace A313503.P11015610484282008761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A047849 n).toNat) (A313502 n)

end

end A313503.P11015610484282008761

/-! ## A313503.P5837211727218774990

`or(A020639(A094433(n)), A313502(n))`
-/

namespace A313503.P5837211727218774990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A094433 n).toNat) (A313502 n)

end

end A313503.P5837211727218774990

/-!
# A313504: Coordination sequence Gal.6.180.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313504, there is no canonical definition to state claims against.
-/

/-! ## A313504.P15982357252859196062

`eq[A072233(2*n), A332955(A333310(n+1))]`
-/

namespace A313504.P15982357252859196062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332955 (A333310 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313504.P15982357252859196062

/-! ## A313504.P129712956057970453

`∑[A078627(∑[A129428(n)])]`
-/

namespace A313504.P129712956057970453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078627 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313504.P129712956057970453

/-! ## A313504.P17009987125911204186

`A256915(A272784(n))+4*n`
-/

namespace A313504.P17009987125911204186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A272784 n).toNat + (4 * n : ℤ)

end

end A313504.P17009987125911204186

/-! ## A313504.P2152483399819364369

`∑[A001222(A279784(2*n+3))]+n`
-/

namespace A313504.P2152483399819364369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A279784 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A313504.P2152483399819364369

/-! ## A313504.P14066565102916498639

`A008574(n)+A001221(A128643(n))`
-/

namespace A313504.P14066565102916498639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001221 (A128643 n).toNat

end

end A313504.P14066565102916498639

/-!
# A313505: Coordination sequence Gal.6.164.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313505, there is no canonical definition to state claims against.
-/

/-! ## A313505.P10282312038867238892

`A315402(n)-A088433(A274993(n))`
-/

namespace A313505.P10282312038867238892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315402 n - A088433 (A274993 n).toNat

end

end A313505.P10282312038867238892

/-! ## A313505.P15014958160764905876

`A007895(A033303(n))+4*n`
-/

namespace A313505.P15014958160764905876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A033303 n).toNat + (4 * n : ℤ)

end

end A313505.P15014958160764905876

/-! ## A313505.P250564190083210446

`A313506(n)-A185284(A072345(n))`
-/

namespace A313505.P250564190083210446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313506 n - A185284 (A072345 n).toNat

end

end A313505.P250564190083210446

/-! ## A313505.P17931629281231508298

`xor(A313493(n), A328311(A101168(n)))`
-/

namespace A313505.P17931629281231508298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A313493 n) (A328311 (A101168 n).toNat)

end

end A313505.P17931629281231508298

/-! ## A313505.P139008669641155756

`A310371(n)+A039966(A230711(n+1))`
-/

namespace A313505.P139008669641155756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310371 n + A039966 (A230711 (n + 1)).toNat

end

end A313505.P139008669641155756

/-!
# A313506: Coordination sequence Gal.5.114.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313506, the canonical program `A313506.P8115017678468763868` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313506 has offset 0).

The definition of A313506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313506.P6693084785566760268

`A315691(n)-n`
-/

namespace A313506.P6693084785566760268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315691 n - (n : ℤ)

end

end A313506.P6693084785566760268

namespace A313506

/-- `A315691(n)-n` -/
def P6693084785566760268.Spec : Prop :=
  ∀ n, P6693084785566760268.a n = A313506 n

end A313506

/-! ## A313506.P13967640218965805788

`A311552(n)+A253262(n)`
-/

namespace A313506.P13967640218965805788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311552 n + A253262 n

end

end A313506.P13967640218965805788

namespace A313506

/-- `A311552(n)+A253262(n)` -/
def P13967640218965805788.Spec : Prop :=
  ∀ n, P13967640218965805788.a n = A313506 n

end A313506

/-! ## A313506.P8115017678468763868

`abs(A008591(n)-A312077(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313506

/-- `abs(A008591(n)-A312077(n))` -/
def P8115017678468763868.Spec : Prop :=
  ∀ n, P8115017678468763868.a n = A313506 n

theorem P8115017678468763868.correct : P8115017678468763868.Spec := by
  intro n
  simp only [A313506]

end A313506

/-! ## A313506.P2443811040844509075

`A151988(n)+A313476(n)-n`
-/

namespace A313506.P2443811040844509075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A313476 n - (n : ℤ))

end

end A313506.P2443811040844509075

namespace A313506

/-- `A151988(n)+A313476(n)-n` -/
def P2443811040844509075.Spec : Prop :=
  ∀ n, P2443811040844509075.a n = A313506 n

end A313506

/-! ## A313506.P3651268656598850964

`abs(A008592(n)-(A312077(n)+n))`
-/

namespace A313506.P3651268656598850964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A312077 n + (n : ℤ))|

end

end A313506.P3651268656598850964

namespace A313506

/-- `abs(A008592(n)-(A312077(n)+n))` -/
def P3651268656598850964.Spec : Prop :=
  ∀ n, P3651268656598850964.a n = A313506 n

end A313506

/-! ## A313506.P2867333175126008702

`A001478(n+1)+A315691(n)+1`
-/

namespace A313506.P2867333175126008702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A315691 n + 1)

end

end A313506.P2867333175126008702

namespace A313506

/-- `A001478(n+1)+A315691(n)+1` -/
def P2867333175126008702.Spec : Prop :=
  ∀ n, P2867333175126008702.a n = A313506 n

end A313506

/-! ## A313506.P140978561084448099

`A047363(n+1)+A312892(n)-n`
-/

namespace A313506.P140978561084448099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + (A312892 n - (n : ℤ))

end

end A313506.P140978561084448099

namespace A313506

/-- `A047363(n+1)+A312892(n)-n` -/
def P140978561084448099.Spec : Prop :=
  ∀ n, P140978561084448099.a n = A313506 n

end A313506

/-! ## A313506.P3426509361863218626

`A330025(A330025(n)+n)+A312948(n)`
-/

namespace A313506.P3426509361863218626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A312948 n

end

end A313506.P3426509361863218626

namespace A313506

/-- `A330025(A330025(n)+n)+A312948(n)` -/
def P3426509361863218626.Spec : Prop :=
  ∀ n, P3426509361863218626.a n = A313506 n

end A313506

/-! ## A313506.P10064137831079094463

`A008458(n)-(A004524(A081599(n))+n)`
-/

namespace A313506.P10064137831079094463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A004524 (A081599 n).toNat + (n : ℤ))

end

end A313506.P10064137831079094463

namespace A313506

/-- `A008458(n)-(A004524(A081599(n))+n)` -/
def P10064137831079094463.Spec : Prop :=
  ∀ n, P10064137831079094463.a n = A313506 n

end A313506

/-! ## A313506.P18262753870571745165

`A008574(n)+n-A004524(A081599(n))`
-/

namespace A313506.P18262753870571745165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A004524 (A081599 n).toNat)

end

end A313506.P18262753870571745165

namespace A313506

/-- `A008574(n)+n-A004524(A081599(n))` -/
def P18262753870571745165.Spec : Prop :=
  ∀ n, P18262753870571745165.a n = A313506 n

end A313506

/-! ## A313506.P3450111871612088501

`A005843(A008574(n))+n-A312077(n)`
-/

namespace A313506.P3450111871612088501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A312077 n)

end

end A313506.P3450111871612088501

namespace A313506

/-- `A005843(A008574(n))+n-A312077(n)` -/
def P3450111871612088501.Spec : Prop :=
  ∀ n, P3450111871612088501.a n = A313506 n

end A313506

/-! ## A313506.P16058670876106447337

`A008458(n)+A008486(n)-A312077(n)`
-/

namespace A313506.P16058670876106447337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312077 n)

end

end A313506.P16058670876106447337

namespace A313506

/-- `A008458(n)+A008486(n)-A312077(n)` -/
def P16058670876106447337.Spec : Prop :=
  ∀ n, P16058670876106447337.a n = A313506 n

end A313506

/-! ## A313506.P12106015635250888199

`A314685(n)+n-A004396(A151988(n))`
-/

namespace A313506.P12106015635250888199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n + ((n : ℤ) - A004396 (A151988 n).toNat)

end

end A313506.P12106015635250888199

namespace A313506

/-- `A314685(n)+n-A004396(A151988(n))` -/
def P12106015635250888199.Spec : Prop :=
  ∀ n, P12106015635250888199.a n = A313506 n

end A313506

/-! ## A313506.P3537847799356906957

`A315397(n)-A330025(n)`
-/

namespace A313506.P3537847799356906957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315397 n - A330025 n

end

end A313506.P3537847799356906957

namespace A313506

/-- `A315397(n)-A330025(n)` -/
def P3537847799356906957.Spec : Prop :=
  ∀ n, P3537847799356906957.a n = A313506 n

end A313506

/-! ## A313506.P2585328657468479911

`A313692(n)-A008676(A016777(n))`
-/

namespace A313506.P2585328657468479911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n - A008676 (A016777 n).toNat

end

end A313506.P2585328657468479911

namespace A313506

/-- `A313692(n)-A008676(A016777(n))` -/
def P2585328657468479911.Spec : Prop :=
  ∀ n, P2585328657468479911.a n = A313506 n

end A313506

/-! ## A313506.P3939683626932203828

`(A315637(n)+A008574(n))/2`
-/

namespace A313506.P3939683626932203828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315637 n + A008574 n : ℚ) / 2

end

end A313506.P3939683626932203828

namespace A313506

/-- `(A315637(n)+A008574(n))/2` -/
def P3939683626932203828.Spec : Prop :=
  ∀ n, P3939683626932203828.a n = (A313506 n : ℚ)

end A313506

/-! ## A313506.P12777474050078513162

`A008458(n)+A008574(n)-A313916(n)`
-/

namespace A313506.P12777474050078513162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313916 n)

end

end A313506.P12777474050078513162

namespace A313506

/-- `A008458(n)+A008574(n)-A313916(n)` -/
def P12777474050078513162.Spec : Prop :=
  ∀ n, P12777474050078513162.a n = A313506 n

end A313506

/-! ## A313506.P11342559458050822856

`A315749(n)-A047263(n+1)`
-/

namespace A313506.P11342559458050822856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315749 n - A047263 (n + 1)

end

end A313506.P11342559458050822856

namespace A313506

/-- `A315749(n)-A047263(n+1)` -/
def P11342559458050822856.Spec : Prop :=
  ∀ n, P11342559458050822856.a n = A313506 n

end A313506

/-! ## A313506.P17906927075933865056

`A005843(A008458(n)-n)-A313916(n)`
-/

namespace A313506.P17906927075933865056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313916 n

end

end A313506.P17906927075933865056

namespace A313506

/-- `A005843(A008458(n)-n)-A313916(n)` -/
def P17906927075933865056.Spec : Prop :=
  ∀ n, P17906927075933865056.a n = A313506 n

end A313506

/-!
# A313507: Coordination sequence Gal.6.271.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313507, there is no canonical definition to state claims against.
-/

/-! ## A313507.P11955512667824329136

`A311171(n)+A001222(A192484(n))`
-/

namespace A313507.P11955512667824329136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311171 n + A001222 (A192484 n).toNat

end

end A313507.P11955512667824329136

/-! ## A313507.P2507571772933084273

`record[gcd(A307825(n), A313506(n))]`
-/

namespace A313507.P2507571772933084273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307825 n) (A313506 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313507.P2507571772933084273

/-! ## A313507.P3535491035777349141

`A310375(n)+A185012(A192484(n))`
-/

namespace A313507.P3535491035777349141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310375 n + A185012 (A192484 n).toNat

end

end A313507.P3535491035777349141

/-! ## A313507.P2318424781530188591

`A083032(n+1)+A070939(A007716(n))`
-/

namespace A313507.P2318424781530188591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083032 (n + 1) + A070939 (A007716 n).toNat

end

end A313507.P2318424781530188591

/-!
# A313508: Coordination sequence Gal.5.160.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313508, there is no canonical definition to state claims against.
-/

/-! ## A313508.P10917388208905194986

`A313509(n)-A185284(A022844(n))`
-/

namespace A313508.P10917388208905194986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313509 n - A185284 (A022844 n).toNat

end

end A313508.P10917388208905194986

/-! ## A313508.P1920599161183566878

`A313509(n)-A185284(A033627(n+2))`
-/

namespace A313508.P1920599161183566878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313509 n - A185284 (A033627 (n + 2)).toNat

end

end A313508.P1920599161183566878

/-! ## A313508.P7082386876216766817

`A313509(n)-A011658(A074353(n))`
-/

namespace A313508.P7082386876216766817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313509 n - A011658 (A074353 n).toNat

end

end A313508.P7082386876216766817

/-! ## A313508.P2934351939018163504

`A195932(∑[n+1])+2*n`
-/

namespace A313508.P2934351939018163504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195932 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n : ℤ)

end

end A313508.P2934351939018163504

/-! ## A313508.P1545270987474260037

`A313509(A062399(n))`
-/

namespace A313508.P1545270987474260037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313509 (A062399 n).toNat

end

end A313508.P1545270987474260037

/-!
# A313509: Coordination sequence Gal.6.401.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313509, there is no canonical definition to state claims against.
-/

/-! ## A313509.P498872632464787695

`A313492(n)+A064532(A301700(n+1))`
-/

namespace A313509.P498872632464787695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313492 n + A064532 (A301700 (n + 1)).toNat

end

end A313509.P498872632464787695

/-! ## A313509.P502050048789642803

`A313508(n)+A185284(A022844(n))`
-/

namespace A313509.P502050048789642803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313508 n + A185284 (A022844 n).toNat

end

end A313509.P502050048789642803

/-! ## A313509.P17704139290622476124

`A313508(n)+A185284(A033627(n+2))`
-/

namespace A313509.P17704139290622476124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313508 n + A185284 (A033627 (n + 2)).toNat

end

end A313509.P17704139290622476124

/-! ## A313509.P17241143891403102176

`A313508(n)+A011658(A074353(n))`
-/

namespace A313509.P17241143891403102176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313508 n + A011658 (A074353 n).toNat

end

end A313509.P17241143891403102176

/-!
# A313510: Coordination sequence Gal.3.13.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313510, the canonical program `A313510.P5280808024420407807` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313510 has offset 0).

The definition of A313510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313510.P1921440030586231289

`A315693(n)-n`
-/

namespace A313510.P1921440030586231289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - (n : ℤ)

end

end A313510.P1921440030586231289

namespace A313510

/-- `A315693(n)-n` -/
def P1921440030586231289.Spec : Prop :=
  ∀ n, P1921440030586231289.a n = A313510 n

end A313510

/-! ## A313510.P13685178637242052715

`A008458(n)-comp[or(5, n)-2]`
-/

namespace A313510.P13685178637242052715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313510.P13685178637242052715

namespace A313510

/-- `A008458(n)-comp[or(5, n)-2]` -/
def P13685178637242052715.Spec : Prop :=
  ∀ n, P13685178637242052715.a n = A313510 n

end A313510

/-! ## A313510.P1013179264144197526

`A312926(2*n)+n-5*n`
-/

namespace A313510.P1013179264144197526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 (2 * n) + ((n : ℤ) - (5 * n : ℤ))

end

end A313510.P1013179264144197526

namespace A313510

/-- `A312926(2*n)+n-5*n` -/
def P1013179264144197526.Spec : Prop :=
  ∀ n, P1013179264144197526.a n = A313510 n

end A313510

/-! ## A313510.P3690674659793246200

`A298024(n)+A134667(n)`
-/

namespace A313510.P3690674659793246200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A134667 n

end

end A313510.P3690674659793246200

namespace A313510

/-- `A298024(n)+A134667(n)` -/
def P3690674659793246200.Spec : Prop :=
  ∀ n, P3690674659793246200.a n = A313510 n

end A313510

/-! ## A313510.P5280808024420407807

`A313110(n)+A128834(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313510

/-- `A313110(n)+A128834(n)` -/
def P5280808024420407807.Spec : Prop :=
  ∀ n, P5280808024420407807.a n = A313510 n

theorem P5280808024420407807.correct : P5280808024420407807.Spec := by
  intro n
  simp only [A313510]

end A313510

/-! ## A313510.P4809920253465805644

`A312655(n)+A186809(n)`
-/

namespace A313510.P4809920253465805644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312655 n + A186809 n

end

end A313510.P4809920253465805644

namespace A313510

/-- `A312655(n)+A186809(n)` -/
def P4809920253465805644.Spec : Prop :=
  ∀ n, P4809920253465805644.a n = A313510 n

end A313510

/-! ## A313510.P2167267987162371244

`A315178(n)-A134667(n)`
-/

namespace A313510.P2167267987162371244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315178 n - A134667 n

end

end A313510.P2167267987162371244

namespace A313510

/-- `A315178(n)-A134667(n)` -/
def P2167267987162371244.Spec : Prop :=
  ∀ n, P2167267987162371244.a n = A313510 n

end A313510

/-! ## A313510.P10759483514036800420

`A298786(n)+A047424(n+1)`
-/

namespace A313510.P10759483514036800420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A047424 (n + 1)

end

end A313510.P10759483514036800420

namespace A313510

/-- `A298786(n)+A047424(n+1)` -/
def P10759483514036800420.Spec : Prop :=
  ∀ n, P10759483514036800420.a n = A313510 n

end A313510

/-! ## A313510.P9044647347383975368

`A008458(n)-A047513(n+1)`
-/

namespace A313510.P9044647347383975368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047513 (n + 1)

end

end A313510.P9044647347383975368

namespace A313510

/-- `A008458(n)-A047513(n+1)` -/
def P9044647347383975368.Spec : Prop :=
  ∀ n, P9044647347383975368.a n = A313510 n

end A313510

/-! ## A313510.P18106652313052057770

`A314677(n)+n-A004396(n)`
-/

namespace A313510.P18106652313052057770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + ((n : ℤ) - A004396 n)

end

end A313510.P18106652313052057770

namespace A313510

/-- `A314677(n)+n-A004396(n)` -/
def P18106652313052057770.Spec : Prop :=
  ∀ n, P18106652313052057770.a n = A313510 n

end A313510

/-! ## A313510.P7855652224506287813

`A219529(n)-∑[A131736(n)²]`
-/

namespace A313510.P7855652224506287813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313510.P7855652224506287813

namespace A313510

/-- `A219529(n)-∑[A131736(n)²]` -/
def P7855652224506287813.Spec : Prop :=
  ∀ n, P7855652224506287813.a n = A313510 n

end A313510

/-! ## A313510.P18229511871440517241

`record[A165998(n)]-A047513(n+1)`
-/

namespace A313510.P18229511871440517241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A047513 (n + 1)

end

end A313510.P18229511871440517241

namespace A313510

/-- `record[A165998(n)]-A047513(n+1)` -/
def P18229511871440517241.Spec : Prop :=
  ∀ n, P18229511871440517241.a n = A313510 n

end A313510

/-! ## A313510.P4542078518831437470

`A008486(2*n)-A047513(n+1)`
-/

namespace A313510.P4542078518831437470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A047513 (n + 1)

end

end A313510.P4542078518831437470

namespace A313510

/-- `A008486(2*n)-A047513(n+1)` -/
def P4542078518831437470.Spec : Prop :=
  ∀ n, P4542078518831437470.a n = A313510 n

end A313510

/-! ## A313510.P4139584220416226351

`A042965(n+1)+A314677(n)-n`
-/

namespace A313510.P4139584220416226351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A314677 n - (n : ℤ))

end

end A313510.P4139584220416226351

namespace A313510

/-- `A042965(n+1)+A314677(n)-n` -/
def P4139584220416226351.Spec : Prop :=
  ∀ n, P4139584220416226351.a n = A313510 n

end A313510

/-! ## A313510.P1759645757355652448

`A047424(n+1)+A312901(n)-n`
-/

namespace A313510.P1759645757355652448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A312901 n - (n : ℤ))

end

end A313510.P1759645757355652448

namespace A313510

/-- `A047424(n+1)+A312901(n)-n` -/
def P1759645757355652448.Spec : Prop :=
  ∀ n, P1759645757355652448.a n = A313510 n

end A313510

/-! ## A313510.P6084701260666280883

`A008458(n)+A008486(n)-A312065(n)`
-/

namespace A313510.P6084701260666280883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312065 n)

end

end A313510.P6084701260666280883

namespace A313510

/-- `A008458(n)+A008486(n)-A312065(n)` -/
def P6084701260666280883.Spec : Prop :=
  ∀ n, P6084701260666280883.a n = A313510 n

end A313510

/-! ## A313510.P7320561907545915472

`A004396(n)+A314015(n)-n`
-/

namespace A313510.P7320561907545915472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314015 n - (n : ℤ))

end

end A313510.P7320561907545915472

namespace A313510

/-- `A004396(n)+A314015(n)-n` -/
def P7320561907545915472.Spec : Prop :=
  ∀ n, P7320561907545915472.a n = A313510 n

end A313510

/-! ## A313510.P6173482070410098056

`A315471(n)-A004396(n)`
-/

namespace A313510.P6173482070410098056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n - A004396 n

end

end A313510.P6173482070410098056

namespace A313510

/-- `A315471(n)-A004396(n)` -/
def P6173482070410098056.Spec : Prop :=
  ∀ n, P6173482070410098056.a n = A313510 n

end A313510

/-! ## A313510.P12823424270862882789

`A315471(n)-A002264(2*n+1)`
-/

namespace A313510.P12823424270862882789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n - A002264 (2 * n + 1)

end

end A313510.P12823424270862882789

namespace A313510

/-- `A315471(n)-A002264(2*n+1)` -/
def P12823424270862882789.Spec : Prop :=
  ∀ n, P12823424270862882789.a n = A313510 n

end A313510

/-! ## A313510.P8897213013472319822

`A315417(n)-A004525(n)`
-/

namespace A313510.P8897213013472319822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315417 n - A004525 n

end

end A313510.P8897213013472319822

namespace A313510

/-- `A315417(n)-A004525(n)` -/
def P8897213013472319822.Spec : Prop :=
  ∀ n, P8897213013472319822.a n = A313510 n

end A313510

/-!
# A313511: Coordination sequence Gal.5.188.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313511, there is no canonical definition to state claims against.
-/

/-! ## A313511.P10579167488532931311

`(A315625(n)+A311602(n))/2`
-/

namespace A313511.P10579167488532931311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315625 n + A311602 n : ℚ) / 2

end

end A313511.P10579167488532931311

/-! ## A313511.P8211830406880806663

`A315625(n)-A004526(A315625(n)-A311602(n))`
-/

namespace A313511.P8211830406880806663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315625 n - A004526 (A315625 n - A311602 n).toNat

end

end A313511.P8211830406880806663

/-! ## A313511.P2244355870578925548

`A004526(A315625(n)+A311602(n))`
-/

namespace A313511.P2244355870578925548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315625 n + A311602 n).toNat

end

end A313511.P2244355870578925548

/-! ## A313511.P11063856048345118686

`A289435(A315625(n)+A311602(n))`
-/

namespace A313511.P11063856048345118686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A315625 n + A311602 n).toNat

end

end A313511.P11063856048345118686

/-! ## A313511.P5628815920462945596

`A289439(A315625(n)+A311602(n))`
-/

namespace A313511.P5628815920462945596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A315625 n + A311602 n).toNat

end

end A313511.P5628815920462945596

/-! ## A313511.P17676800408485079517

`A289440(A315625(n)+A311602(n))`
-/

namespace A313511.P17676800408485079517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A315625 n + A311602 n).toNat

end

end A313511.P17676800408485079517

/-!
# A313512: Coordination sequence Gal.6.450.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313512, there is no canonical definition to state claims against.
-/

/-! ## A313512.P3524224918666609042

`A313511(n)+A234323(A006784(n+1))`
-/

namespace A313512.P3524224918666609042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313511 n + A234323 (A006784 (n + 1)).toNat

end

end A313512.P3524224918666609042

/-! ## A313512.P4950934500436794904

`A234323(A006784(n+1))+(A315625(n)+A311602(n))/2`
-/

namespace A313512.P4950934500436794904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234323 (A006784 (n + 1)).toNat : ℚ) + (A315625 n + A311602 n : ℚ) / 2

end

end A313512.P4950934500436794904

/-! ## A313512.P9446651830342717693

`A313511(n)+A133501(A324423(n+2))`
-/

namespace A313512.P9446651830342717693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313511 n + A133501 (A324423 (n + 2)).toNat

end

end A313512.P9446651830342717693

/-!
# A313513: Coordination sequence Gal.6.28.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313513, there is no canonical definition to state claims against.
-/

/-! ## A313513.P16086586591476555528

`A227394(A315636(n)+A295341(n))`
-/

namespace A313513.P16086586591476555528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A315636 n + A295341 n).toNat

end

end A313513.P16086586591476555528

/-! ## A313513.P18097286582797434543

`∑[A048881(∑[A157485(n+1)])]`
-/

namespace A313513.P18097286582797434543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157485 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313513.P18097286582797434543

/-! ## A313513.P3396604251290544543

`∑[gcd(A184642(2*(n+2)), A187779(n+1))+3]-3`
-/

namespace A313513.P3396604251290544543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A184642 (2 * (n + 2))) (A187779 (n + 1)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A313513.P3396604251290544543

/-! ## A313513.P6124745862710125266

`A227739(A025192(n))+A219640(3*n)`
-/

namespace A313513.P6124745862710125266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (A025192 n).toNat + A219640 (3 * n)

end

end A313513.P6124745862710125266

/-!
# A313514: Coordination sequence Gal.6.154.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313514, the canonical program `A313514.P12822550340655585202` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313514 has offset 0).

The definition of A313514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313514.P12822550340655585202

`abs(A008592(n)-A313913(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A313514

/-- `abs(A008592(n)-A313913(n))` -/
def P12822550340655585202.Spec : Prop :=
  ∀ n, P12822550340655585202.a n = A313514 n

theorem P12822550340655585202.correct : P12822550340655585202.Spec := by
  intro n
  simp only [A313514]

end A313514

/-! ## A313514.P12929505341333841223

`2*A008706(n)-A313913(n)`
-/

namespace A313514.P12929505341333841223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313913 n

end

end A313514.P12929505341333841223

namespace A313514

/-- `2*A008706(n)-A313913(n)` -/
def P12929505341333841223.Spec : Prop :=
  ∀ n, P12929505341333841223.a n = A313514 n

end A313514

/-! ## A313514.P17283227030470594805

`A184418(A008574(n))-A313913(n)`
-/

namespace A313514.P17283227030470594805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313913 n

end

end A313514.P17283227030470594805

namespace A313514

/-- `A184418(A008574(n))-A313913(n)` -/
def P17283227030470594805.Spec : Prop :=
  ∀ n, P17283227030470594805.a n = A313514 n

end A313514

/-! ## A313514.P14155681913551929281

`A000038(n)+A008592(n)-A313913(n)`
-/

namespace A313514.P14155681913551929281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A313913 n)

end

end A313514.P14155681913551929281

namespace A313514

/-- `A000038(n)+A008592(n)-A313913(n)` -/
def P14155681913551929281.Spec : Prop :=
  ∀ n, P14155681913551929281.a n = A313514 n

end A313514

/-! ## A313514.P13869824585885729939

`A008458(n)+A008574(n)-A313913(n)`
-/

namespace A313514.P13869824585885729939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313913 n)

end

end A313514.P13869824585885729939

namespace A313514

/-- `A008458(n)+A008574(n)-A313913(n)` -/
def P13869824585885729939.Spec : Prop :=
  ∀ n, P13869824585885729939.a n = A313514 n

end A313514

/-! ## A313514.P12974425165098234946

`∑{d}[A008592(n)-A313913(n), A000010(#)]`
-/

namespace A313514.P12974425165098234946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313514.P12974425165098234946

namespace A313514

/-- `∑{d}[A008592(n)-A313913(n), A000010(#)]` -/
def P12974425165098234946.Spec : Prop :=
  ∀ n, P12974425165098234946.a n = A313514 n

end A313514

/-! ## A313514.P16113193450026133204

`A313913(n)-A005843(A313913(n)-A008706(n))`
-/

namespace A313514.P16113193450026133204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313913 n - A005843 (A313913 n - A008706 n).toNat

end

end A313514.P16113193450026133204

namespace A313514

/-- `A313913(n)-A005843(A313913(n)-A008706(n))` -/
def P16113193450026133204.Spec : Prop :=
  ∀ n, P16113193450026133204.a n = A313514 n

end A313514

/-! ## A313514.P7241100042884911801

`A005843(A008706(n))-A313913(n)`
-/

namespace A313514.P7241100042884911801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313913 n

end

end A313514.P7241100042884911801

namespace A313514

/-- `A005843(A008706(n))-A313913(n)` -/
def P7241100042884911801.Spec : Prop :=
  ∀ n, P7241100042884911801.a n = A313514 n

end A313514

/-! ## A313514.P1107945617089672937

`A065502(A008458(n))-A313913(n)`
-/

namespace A313514.P1107945617089672937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313913 n

end

end A313514.P1107945617089672937

namespace A313514

/-- `A065502(A008458(n))-A313913(n)` -/
def P1107945617089672937.Spec : Prop :=
  ∀ n, P1107945617089672937.a n = A313514 n

end A313514

/-! ## A313514.P12432987589775007774

`A004396(A315406(n)+2*n)`
-/

namespace A313514.P12432987589775007774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315406 n + (2 * n : ℤ)).toNat

end

end A313514.P12432987589775007774

namespace A313514

/-- `A004396(A315406(n)+2*n)` -/
def P12432987589775007774.Spec : Prop :=
  ∀ n, P12432987589775007774.a n = A313514 n

end A313514

/-! ## A313514.P8766903859190147840

`A004396(A315406(n)+n+n)`
-/

namespace A313514.P8766903859190147840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315406 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313514.P8766903859190147840

namespace A313514

/-- `A004396(A315406(n)+n+n)` -/
def P8766903859190147840.Spec : Prop :=
  ∀ n, P8766903859190147840.a n = A313514 n

end A313514

/-! ## A313514.P7533791414299889952

`A314826(2*n)-4*n`
-/

namespace A313514.P7533791414299889952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314826 (2 * n) - (4 * n : ℤ)

end

end A313514.P7533791414299889952

namespace A313514

/-- `A314826(2*n)-4*n` -/
def P7533791414299889952.Spec : Prop :=
  ∀ n, P7533791414299889952.a n = A313514 n

end A313514

/-! ## A313514.P10501658841048476901

`A315302(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A313514.P10501658841048476901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315302 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A313514.P10501658841048476901

namespace A313514

/-- `A315302(2*n)/(4*n+2-A004277(2*n))` -/
def P10501658841048476901.Spec : Prop :=
  ∀ n, P10501658841048476901.a n = (A313514 n : ℚ)

end A313514

/-! ## A313514.P5511904908787544498

`2*A008574(2*n)-A314165(2*n)`
-/

namespace A313514.P5511904908787544498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314165 (2 * n)

end

end A313514.P5511904908787544498

namespace A313514

/-- `2*A008574(2*n)-A314165(2*n)` -/
def P5511904908787544498.Spec : Prop :=
  ∀ n, P5511904908787544498.a n = A313514 n

end A313514

/-! ## A313514.P3392136288254529068

`A004525(A314086(2*n))`
-/

namespace A313514.P3392136288254529068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314086 (2 * n)).toNat

end

end A313514.P3392136288254529068

namespace A313514

/-- `A004525(A314086(2*n))` -/
def P3392136288254529068.Spec : Prop :=
  ∀ n, P3392136288254529068.a n = A313514 n

end A313514

/-! ## A313514.P5916939050974234977

`A004525(A315302(2*n))`
-/

namespace A313514.P5916939050974234977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315302 (2 * n)).toNat

end

end A313514.P5916939050974234977

namespace A313514

/-- `A004525(A315302(2*n))` -/
def P5916939050974234977.Spec : Prop :=
  ∀ n, P5916939050974234977.a n = A313514 n

end A313514

/-! ## A313514.P3649432067348635160

`A004525(A315444(2*n))`
-/

namespace A313514.P3649432067348635160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315444 (2 * n)).toNat

end

end A313514.P3649432067348635160

namespace A313514

/-- `A004525(A315444(2*n))` -/
def P3649432067348635160.Spec : Prop :=
  ∀ n, P3649432067348635160.a n = A313514 n

end A313514

/-! ## A313514.P7627984651162359594

`A004526(A315302(2*n)+1)`
-/

namespace A313514.P7627984651162359594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315302 (2 * n) + 1).toNat

end

end A313514.P7627984651162359594

namespace A313514

/-- `A004526(A315302(2*n)+1)` -/
def P7627984651162359594.Spec : Prop :=
  ∀ n, P7627984651162359594.a n = A313514 n

end A313514

/-!
# A313515: Coordination sequence Gal.6.264.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313515, the canonical program `A313515.P11298845023019683879` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313515 has offset 0).

The definition of A313515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313515.P11298845023019683879

`A313117(n)+A128834(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313515

/-- `A313117(n)+A128834(n)` -/
def P11298845023019683879.Spec : Prop :=
  ∀ n, P11298845023019683879.a n = A313515 n

theorem P11298845023019683879.correct : P11298845023019683879.Spec := by
  intro n
  simp only [A313515]

end A313515

/-! ## A313515.P5722006710417133974

`A313117(n)-A010892(n+2)`
-/

namespace A313515.P5722006710417133974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313117 n - A010892 (n + 2)

end

end A313515.P5722006710417133974

namespace A313515

/-- `A313117(n)-A010892(n+2)` -/
def P5722006710417133974.Spec : Prop :=
  ∀ n, P5722006710417133974.a n = A313515 n

end A313515

/-! ## A313515.P8986247749356692361

`A004525(A004396(n))+A313583(n)-A004525(n)`
-/

namespace A313515.P8986247749356692361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313583 n - A004525 n)

end

end A313515.P8986247749356692361

namespace A313515

/-- `A004525(A004396(n))+A313583(n)-A004525(n)` -/
def P8986247749356692361.Spec : Prop :=
  ∀ n, P8986247749356692361.a n = A313515 n

end A313515

/-! ## A313515.P10232025531947160239

`abs(A008592(n)-A313912(n))`
-/

namespace A313515.P10232025531947160239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313912 n|

end

end A313515.P10232025531947160239

namespace A313515

/-- `abs(A008592(n)-A313912(n))` -/
def P10232025531947160239.Spec : Prop :=
  ∀ n, P10232025531947160239.a n = A313515 n

end A313515

/-! ## A313515.P12531603413336709601

`2*A008706(n)-A313912(n)`
-/

namespace A313515.P12531603413336709601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313912 n

end

end A313515.P12531603413336709601

namespace A313515

/-- `2*A008706(n)-A313912(n)` -/
def P12531603413336709601.Spec : Prop :=
  ∀ n, P12531603413336709601.a n = A313515 n

end A313515

/-! ## A313515.P17852904157131208762

`A008458(n)+A008574(n)-A313912(n)`
-/

namespace A313515.P17852904157131208762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313912 n)

end

end A313515.P17852904157131208762

namespace A313515

/-- `A008458(n)+A008574(n)-A313912(n)` -/
def P17852904157131208762.Spec : Prop :=
  ∀ n, P17852904157131208762.a n = A313515 n

end A313515

/-! ## A313515.P8380749411491190653

`∑{d}[A008592(n)-A313912(n), A000010(#)]`
-/

namespace A313515.P8380749411491190653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313515.P8380749411491190653

namespace A313515

/-- `∑{d}[A008592(n)-A313912(n), A000010(#)]` -/
def P8380749411491190653.Spec : Prop :=
  ∀ n, P8380749411491190653.a n = A313515 n

end A313515

/-! ## A313515.P260404739999172595

`A313912(n)-A005843(A313912(n)-A008706(n))`
-/

namespace A313515.P260404739999172595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313912 n - A005843 (A313912 n - A008706 n).toNat

end

end A313515.P260404739999172595

namespace A313515

/-- `A313912(n)-A005843(A313912(n)-A008706(n))` -/
def P260404739999172595.Spec : Prop :=
  ∀ n, P260404739999172595.a n = A313515 n

end A313515

/-! ## A313515.P4521943063319724227

`A004525(A004396(n))+A313739(n)-A004396(n)`
-/

namespace A313515.P4521943063319724227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313739 n - A004396 n)

end

end A313515.P4521943063319724227

namespace A313515

/-- `A004525(A004396(n))+A313739(n)-A004396(n)` -/
def P4521943063319724227.Spec : Prop :=
  ∀ n, P4521943063319724227.a n = A313515 n

end A313515

/-! ## A313515.P9253856106226629209

`A315421(n)-A004525(n)`
-/

namespace A313515.P9253856106226629209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315421 n - A004525 n

end

end A313515.P9253856106226629209

namespace A313515

/-- `A315421(n)-A004525(n)` -/
def P9253856106226629209.Spec : Prop :=
  ∀ n, P9253856106226629209.a n = A313515 n

end A313515

/-! ## A313515.P11027114708893312985

`A315421(n)-Δ[A054925(n)]`
-/

namespace A313515.P11027114708893312985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315421 n - (f1 (n + 1) - f1 n)

end

end A313515.P11027114708893312985

namespace A313515

/-- `A315421(n)-Δ[A054925(n)]` -/
def P11027114708893312985.Spec : Prop :=
  ∀ n, P11027114708893312985.a n = A313515 n

end A313515

/-! ## A313515.P296444852199791221

`A314254(n)+1-A030118(n)`
-/

namespace A313515.P296444852199791221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314254 n + (1 - A030118 n)

end

end A313515.P296444852199791221

namespace A313515

/-- `A314254(n)+1-A030118(n)` -/
def P296444852199791221.Spec : Prop :=
  ∀ n, P296444852199791221.a n = A313515 n

end A313515

/-! ## A313515.P15023144873784816648

`A005843(A008706(n))-A313912(n)`
-/

namespace A313515.P15023144873784816648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313912 n

end

end A313515.P15023144873784816648

namespace A313515

/-- `A005843(A008706(n))-A313912(n)` -/
def P15023144873784816648.Spec : Prop :=
  ∀ n, P15023144873784816648.a n = A313515 n

end A313515

/-!
# A313516: Coordination sequence Gal.6.416.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313516, there is no canonical definition to state claims against.
-/

/-! ## A313516.P5037189952067288870

`A315682(n)-A001222(A189854(n+1))`
-/

namespace A313516.P5037189952067288870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315682 n - A001222 (A189854 (n + 1)).toNat

end

end A313516.P5037189952067288870

/-! ## A313516.P13136582813603454769

`A001223(A116539(n))+4*n`
-/

namespace A313516.P13136582813603454769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A116539 n).toNat + (4 * n : ℤ)

end

end A313516.P13136582813603454769

/-! ## A313516.P9033761769796765448

`A000005(A121517(n))+4*n`
-/

namespace A313516.P9033761769796765448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A121517 n).toNat + (4 * n : ℤ)

end

end A313516.P9033761769796765448

/-! ## A313516.P5798316032041753366

`4*n+A001222(A051296(n))+1`
-/

namespace A313516.P5798316032041753366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A001222 (A051296 n).toNat + 1)

end

end A313516.P5798316032041753366

/-! ## A313516.P100319963672091086

`A323308(A001793(n+1))+4*n`
-/

namespace A313516.P100319963672091086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323308 (A001793 (n + 1)).toNat + (4 * n : ℤ)

end

end A313516.P100319963672091086

/-!
# A313517: Coordination sequence Gal.6.479.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313517, there is no canonical definition to state claims against.
-/

/-! ## A313517.P15608856271435675590

`A333632(∑[2*n])+A301301(n)`
-/

namespace A313517.P15608856271435675590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (∑ j ∈ Finset.range (n + 1), f1 j) + A301301 n

end

end A313517.P15608856271435675590

/-! ## A313517.P15888836080569849895

`A020966(n+1)-∑{e}[A058694(n)+1, #]`
-/

namespace A313517.P15888836080569849895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058694 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020966 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A313517.P15888836080569849895

/-! ## A313517.P16344401484991843737

`A018783(A077739(n+1))-and(1, n)+3*n+n+1`
-/

namespace A313517.P16344401484991843737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A077739 (n + 1)).toNat - (Nat.land 1 n : ℤ) + (3 * n + (n + 1) : ℤ)

end

end A313517.P16344401484991843737

/-! ## A313517.P8924349575391989683

`A016813(n)+A001222(A187245(n))`
-/

namespace A313517.P8924349575391989683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001222 (A187245 n).toNat

end

end A313517.P8924349575391989683

/-! ## A313517.P5792357986926164003

`A301688(n)+A001222(A038183(n))`
-/

namespace A313517.P5792357986926164003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n + A001222 (A038183 n).toNat

end

end A313517.P5792357986926164003

/-!
# A313518: Coordination sequence Gal.6.399.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313518, there is no canonical definition to state claims against.
-/

/-! ## A313518.P13511132924658652653

`A008706(n)-A001222(A218942(n))`
-/

namespace A313518.P13511132924658652653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001222 (A218942 n).toNat

end

end A313518.P13511132924658652653

/-! ## A313518.P13519447626918344151

`A061373(A025567(n+1))+n`
-/

namespace A313518.P13519447626918344151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (A025567 (n + 1)).toNat + (n : ℤ)

end

end A313518.P13519447626918344151

/-! ## A313518.P14004827678127379114

`A312906(n)%A156166(n+1)+1`
-/

namespace A313518.P14004827678127379114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312906 n) (A156166 (n + 1)) + 1

end

end A313518.P14004827678127379114

/-! ## A313518.P11328784743335060686

`A314829(n)+A007814(A000110(n))`
-/

namespace A313518.P11328784743335060686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + A007814 (A000110 n).toNat

end

end A313518.P11328784743335060686

/-! ## A313518.P17288108555586532472

`A311160(n)+A001221(A151026(n))`
-/

namespace A313518.P17288108555586532472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311160 n + A001221 (A151026 n).toNat

end

end A313518.P17288108555586532472

/-!
# A313519: Coordination sequence Gal.6.196.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313519, the canonical program `A313519.P11254400388031239526` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313519 has offset 0).

The definition of A313519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313519.P10763874191149207601

`(A315186(n)+A310378(n))/2`
-/

namespace A313519.P10763874191149207601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315186 n + A310378 n : ℚ) / 2

end

end A313519.P10763874191149207601

namespace A313519

/-- `(A315186(n)+A310378(n))/2` -/
def P10763874191149207601.Spec : Prop :=
  ∀ n, P10763874191149207601.a n = (A313519 n : ℚ)

end A313519

/-! ## A313519.P11254400388031239526

`2*A313704(n)-A313834(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313519

/-- `2*A313704(n)-A313834(n)` -/
def P11254400388031239526.Spec : Prop :=
  ∀ n, P11254400388031239526.a n = A313519 n

theorem P11254400388031239526.correct : P11254400388031239526.Spec := by
  intro n
  simp only [A313519]

end A313519

/-! ## A313519.P16603503579283121471

`A313834(n)-A005843(A313834(n)-A313704(n))`
-/

namespace A313519.P16603503579283121471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313834 n - A005843 (A313834 n - A313704 n).toNat

end

end A313519.P16603503579283121471

namespace A313519

/-- `A313834(n)-A005843(A313834(n)-A313704(n))` -/
def P16603503579283121471.Spec : Prop :=
  ∀ n, P16603503579283121471.a n = A313519 n

end A313519

/-! ## A313519.P6591427671022646126

`abs(A008592(n)-A313908(n))`
-/

namespace A313519.P6591427671022646126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313908 n|

end

end A313519.P6591427671022646126

namespace A313519

/-- `abs(A008592(n)-A313908(n))` -/
def P6591427671022646126.Spec : Prop :=
  ∀ n, P6591427671022646126.a n = A313519 n

end A313519

/-! ## A313519.P13550889215382642709

`2*A008706(n)-A313908(n)`
-/

namespace A313519.P13550889215382642709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313908 n

end

end A313519.P13550889215382642709

namespace A313519

/-- `2*A008706(n)-A313908(n)` -/
def P13550889215382642709.Spec : Prop :=
  ∀ n, P13550889215382642709.a n = A313519 n

end A313519

/-! ## A313519.P10814801025501754819

`A008458(n)+A008574(n)-A313908(n)`
-/

namespace A313519.P10814801025501754819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313908 n)

end

end A313519.P10814801025501754819

namespace A313519

/-- `A008458(n)+A008574(n)-A313908(n)` -/
def P10814801025501754819.Spec : Prop :=
  ∀ n, P10814801025501754819.a n = A313519 n

end A313519

/-! ## A313519.P4507092857924749273

`A313908(n)-A005843(A313908(n)-A008706(n))`
-/

namespace A313519.P4507092857924749273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313908 n - A005843 (A313908 n - A008706 n).toNat

end

end A313519.P4507092857924749273

namespace A313519

/-- `A313908(n)-A005843(A313908(n)-A008706(n))` -/
def P4507092857924749273.Spec : Prop :=
  ∀ n, P4507092857924749273.a n = A313519 n

end A313519

/-! ## A313519.P12696720198275503670

`A315692(n)-A134119(A314832(n))`
-/

namespace A313519.P12696720198275503670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315692 n - A134119 (A314832 n).toNat

end

end A313519.P12696720198275503670

namespace A313519

/-- `A315692(n)-A134119(A314832(n))` -/
def P12696720198275503670.Spec : Prop :=
  ∀ n, P12696720198275503670.a n = A313519 n

end A313519

/-! ## A313519.P17793722612382765213

`A005843(A313704(n))-A313834(n)`
-/

namespace A313519.P17793722612382765213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313704 n).toNat - A313834 n

end

end A313519.P17793722612382765213

namespace A313519

/-- `A005843(A313704(n))-A313834(n)` -/
def P17793722612382765213.Spec : Prop :=
  ∀ n, P17793722612382765213.a n = A313519 n

end A313519

/-! ## A313519.P13527935720524027573

`A005843(A008706(n))-A313908(n)`
-/

namespace A313519.P13527935720524027573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313908 n

end

end A313519.P13527935720524027573

namespace A313519

/-- `A005843(A008706(n))-A313908(n)` -/
def P13527935720524027573.Spec : Prop :=
  ∀ n, P13527935720524027573.a n = A313519 n

end A313519

/-! ## A313519.P1042746073591809705

`A315709(n)+A004525(A315709(n))-A008574(n)`
-/

namespace A313519.P1042746073591809705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315709 n + (A004525 (A315709 n).toNat - A008574 n)

end

end A313519.P1042746073591809705

namespace A313519

/-- `A315709(n)+A004525(A315709(n))-A008574(n)` -/
def P1042746073591809705.Spec : Prop :=
  ∀ n, P1042746073591809705.a n = A313519 n

end A313519

/-! ## A313519.P17448855325128308489

`A065502(A008458(n))-A313908(n)`
-/

namespace A313519.P17448855325128308489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313908 n

end

end A313519.P17448855325128308489

namespace A313519

/-- `A065502(A008458(n))-A313908(n)` -/
def P17448855325128308489.Spec : Prop :=
  ∀ n, P17448855325128308489.a n = A313519 n

end A313519

/-! ## A313519.P722883705627994307

`A099479(A315406(n)+A004273(n))`
-/

namespace A313519.P722883705627994307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A315406 n + A004273 n).toNat

end

end A313519.P722883705627994307

namespace A313519

/-- `A099479(A315406(n)+A004273(n))` -/
def P722883705627994307.Spec : Prop :=
  ∀ n, P722883705627994307.a n = A313519 n

end A313519

/-! ## A313519.P3397178536084255373

`A313024(2*n)-4*n`
-/

namespace A313519.P3397178536084255373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313024 (2 * n) - (4 * n : ℤ)

end

end A313519.P3397178536084255373

namespace A313519

/-- `A313024(2*n)-4*n` -/
def P3397178536084255373.Spec : Prop :=
  ∀ n, P3397178536084255373.a n = A313519 n

end A313519

/-! ## A313519.P3776877948428635426

`A310491(2*n)/(4*n+1-A004273(2*n))`
-/

namespace A313519.P3776877948428635426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310491 (2 * n) : ℚ) / ((4 * n + 1 : ℤ) - A004273 (2 * n) : ℚ)

end

end A313519.P3776877948428635426

namespace A313519

/-- `A310491(2*n)/(4*n+1-A004273(2*n))` -/
def P3776877948428635426.Spec : Prop :=
  ∀ n, P3776877948428635426.a n = (A313519 n : ℚ)

end A313519

/-! ## A313519.P5838911188316117316

`A310491(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A313519.P5838911188316117316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310491 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A313519.P5838911188316117316

namespace A313519

/-- `A310491(2*n)/(4*n+2-A004277(2*n))` -/
def P5838911188316117316.Spec : Prop :=
  ∀ n, P5838911188316117316.a n = (A313519 n : ℚ)

end A313519

/-! ## A313519.P17428180574105117983

`A310491(2*n)/A004275(2*n+1)*A004275(n+1)`
-/

namespace A313519.P17428180574105117983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310491 (2 * n) : ℚ) / (A004275 (2 * n + 1) : ℚ) * (A004275 (n + 1) : ℚ)

end

end A313519.P17428180574105117983

namespace A313519

/-- `A310491(2*n)/A004275(2*n+1)*A004275(n+1)` -/
def P17428180574105117983.Spec : Prop :=
  ∀ n, P17428180574105117983.a n = (A313519 n : ℚ)

end A313519

/-! ## A313519.P16904456192265323916

`2*A008574(2*n)-A315498(2*n)`
-/

namespace A313519.P16904456192265323916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315498 (2 * n)

end

end A313519.P16904456192265323916

namespace A313519

/-- `2*A008574(2*n)-A315498(2*n)` -/
def P16904456192265323916.Spec : Prop :=
  ∀ n, P16904456192265323916.a n = A313519 n

end A313519

/-! ## A313519.P7200101567514381574

`A004525(A310491(2*n))`
-/

namespace A313519.P7200101567514381574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310491 (2 * n)).toNat

end

end A313519.P7200101567514381574

namespace A313519

/-- `A004525(A310491(2*n))` -/
def P7200101567514381574.Spec : Prop :=
  ∀ n, P7200101567514381574.a n = A313519 n

end A313519

/-! ## A313519.P10876351438518934093

`A004526(A310491(2*n)+1)`
-/

namespace A313519.P10876351438518934093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310491 (2 * n) + 1).toNat

end

end A313519.P10876351438518934093

namespace A313519

/-- `A004526(A310491(2*n)+1)` -/
def P10876351438518934093.Spec : Prop :=
  ∀ n, P10876351438518934093.a n = A313519 n

end A313519

/-!
# A313520: Coordination sequence Gal.6.57.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313520, there is no canonical definition to state claims against.
-/

/-! ## A313520.P9510475170596815940

`A313691(n)-A010051(A303871(n))`
-/

namespace A313520.P9510475170596815940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313691 n - A010051 (A303871 n).toNat

end

end A313520.P9510475170596815940

/-! ## A313520.P9792802800641133411

`A314036(n)-A344174(A129361(n))`
-/

namespace A313520.P9792802800641133411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314036 n - A344174 (A129361 n).toNat

end

end A313520.P9792802800641133411

/-! ## A313520.P9400268332305556879

`A326061(A032559(n+1))+A000959(n+1)`
-/

namespace A313520.P9400268332305556879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326061 (A032559 (n + 1)).toNat + A000959 (n + 1)

end

end A313520.P9400268332305556879

/-! ## A313520.P12014790360959944287

`A130091(3*(n+1))-A117939(A216837(n))`
-/

namespace A313520.P12014790360959944287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (3 * (n + 1)) - A117939 (A216837 n).toNat

end

end A313520.P12014790360959944287

/-! ## A313520.P12544521226958459930

`A111660(9*n)+A007454(A287864(n+1))`
-/

namespace A313520.P12544521226958459930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (9 * n) + A007454 (A287864 (n + 1)).toNat

end

end A313520.P12544521226958459930

/-!
# A313521: Coordination sequence Gal.4.102.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313521, there is no canonical definition to state claims against.
-/

/-! ## A313521.P9073537238337772584

`A313579(n)-A037830(A068875(n))`
-/

namespace A313521.P9073537238337772584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313579 n - A037830 (A068875 n).toNat

end

end A313521.P9073537238337772584

/-! ## A313521.P3756651488730556941

`A000120(A192430(n))+4*n`
-/

namespace A313521.P3756651488730556941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A192430 n).toNat + (4 * n : ℤ)

end

end A313521.P3756651488730556941

/-! ## A313521.P13000379668747825969

`A342745(n+1)-A325794(3^n)`
-/

namespace A313521.P13000379668747825969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342745 (n + 1) - A325794 (3 ^ n)

end

end A313521.P13000379668747825969

/-! ## A313521.P3202300640624489457

`A298024(n)+A010060(A061703(n))`
-/

namespace A313521.P3202300640624489457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A010060 (A061703 n).toNat

end

end A313521.P3202300640624489457

/-! ## A313521.P17222315695074286247

`A250120(n)-A074290(A052550(n))`
-/

namespace A313521.P17222315695074286247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A074290 (A052550 n).toNat

end

end A313521.P17222315695074286247

/-!
# A313522: Coordination sequence Gal.5.184.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313522, there is no canonical definition to state claims against.
-/

/-! ## A313522.P16125803560028188161

`A313081(n)-A238468(2*n)`
-/

namespace A313522.P16125803560028188161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313081 n - A238468 (2 * n)

end

end A313522.P16125803560028188161

/-! ## A313522.P7816714722151274139

`A313081(n)+A238468(2*n)*A260196(n+2)`
-/

namespace A313522.P7816714722151274139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313081 n + A238468 (2 * n) * A260196 (n + 2)

end

end A313522.P7816714722151274139

/-! ## A313522.P14430421343671099299

`round(log2(A267345(2*n+3)))`
-/

namespace A313522.P14430421343671099299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A267345 (2 * n + 3) : ℝ))

end

end A313522.P14430421343671099299

/-! ## A313522.P4190155158945692621

`A373810(A110226(n))`
-/

namespace A313522.P4190155158945692621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A110226 n).toNat

end

end A313522.P4190155158945692621

/-! ## A313522.P11666783354765168141

`A314014(n)-A130543(n²²)`
-/

namespace A313522.P11666783354765168141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314014 n - A130543 ((n ^ 2) ^ 2)

end

end A313522.P11666783354765168141

/-!
# A313523: Coordination sequence Gal.6.502.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313523, there is no canonical definition to state claims against.
-/

/-! ## A313523.P17011629271501581767

`∑[A273294(A006414(n+1))]+1`
-/

namespace A313523.P17011629271501581767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273294 (A006414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A313523.P17011629271501581767

/-! ## A313523.P7542908735156175712

`A350942(A003116(n))+A314735(n)`
-/

namespace A313523.P7542908735156175712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350942 (A003116 n).toNat + A314735 n

end

end A313523.P7542908735156175712

/-! ## A313523.P5295949819119167082

`A313522(n)+A051659(A020201(n+1))`
-/

namespace A313523.P5295949819119167082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313522 n + A051659 (A020201 (n + 1)).toNat

end

end A313523.P5295949819119167082

/-! ## A313523.P10275015042825296265

`A313583(n)-A330025(A000516(n+1))`
-/

namespace A313523.P10275015042825296265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n - A330025 (A000516 (n + 1)).toNat

end

end A313523.P10275015042825296265

/-! ## A313523.P486998173784277191

`A024899(3*n+2)-A061903(A148758(n))`
-/

namespace A313523.P486998173784277191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (3 * n + 2) - A061903 (A148758 n).toNat

end

end A313523.P486998173784277191

/-!
# A313524: Coordination sequence Gal.5.219.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313524, there is no canonical definition to state claims against.
-/

/-! ## A313524.P18173397140221943833

`A313993(n)-∑[A131736(n)]`
-/

namespace A313524.P18173397140221943833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313993 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313524.P18173397140221943833

/-! ## A313524.P12854805878703400712

`(A314617(n)+A219529(n))/2`
-/

namespace A313524.P12854805878703400712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314617 n + A219529 n : ℚ) / 2

end

end A313524.P12854805878703400712

/-! ## A313524.P14790160146179359613

`A302042(A314617(n)+A219529(n))`
-/

namespace A313524.P14790160146179359613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A314617 n + A219529 n).toNat

end

end A313524.P14790160146179359613

/-! ## A313524.P8305447442221529814

`A313993(n)-A131736(A237420(n))`
-/

namespace A313524.P8305447442221529814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313993 n - A131736 (A237420 n).toNat

end

end A313524.P8305447442221529814

/-! ## A313524.P18099908056184214579

`A313993(n)+A131736(A237420(n)+1)`
-/

namespace A313524.P18099908056184214579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313993 n + A131736 (A237420 n + 1).toNat

end

end A313524.P18099908056184214579

/-! ## A313524.P17645170283567749696

`A314617(n)+A004525(A219529(n)-A314617(n))`
-/

namespace A313524.P17645170283567749696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314617 n + A004525 (A219529 n - A314617 n).toNat

end

end A313524.P17645170283567749696

/-! ## A313524.P16850045661597780213

`A314617(n)+A025480(A219529(n)-A314617(n))`
-/

namespace A313524.P16850045661597780213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314617 n + A025480 (A219529 n - A314617 n).toNat

end

end A313524.P16850045661597780213

/-! ## A313524.P13515897578200842920

`A219529(n)-A004526(A219529(n)-A314617(n))`
-/

namespace A313524.P13515897578200842920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004526 (A219529 n - A314617 n).toNat

end

end A313524.P13515897578200842920

/-! ## A313524.P10253895626743575860

`A004525(A314617(n)+A219529(n))`
-/

namespace A313524.P10253895626743575860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314617 n + A219529 n).toNat

end

end A313524.P10253895626743575860

/-! ## A313524.P2437486500576387712

`A004526(A314617(n)+A219529(n))`
-/

namespace A313524.P2437486500576387712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A314617 n + A219529 n).toNat

end

end A313524.P2437486500576387712

/-! ## A313524.P8001020396024155376

`A025480(A314617(n)+A219529(n))`
-/

namespace A313524.P8001020396024155376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A314617 n + A219529 n).toNat

end

end A313524.P8001020396024155376

/-! ## A313524.P8230769695590214593

`A032742(A314617(n)+A219529(n))`
-/

namespace A313524.P8230769695590214593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A314617 n + A219529 n).toNat

end

end A313524.P8230769695590214593

/-! ## A313524.P11268627916282690407

`A065033(A314617(n)+A219529(n))`
-/

namespace A313524.P11268627916282690407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A314617 n + A219529 n).toNat

end

end A313524.P11268627916282690407

/-! ## A313524.P15790398749989124935

`A004524(A219529(n)+A314617(n)+1)`
-/

namespace A313524.P15790398749989124935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A219529 n + (A314617 n + 1)).toNat

end

end A313524.P15790398749989124935

/-! ## A313524.P2346656811984719117

`A008619(A219529(n)+A314617(n)-1)`
-/

namespace A313524.P2346656811984719117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A219529 n + (A314617 n - 1)).toNat

end

end A313524.P2346656811984719117

/-! ## A313524.P16367845431935138450

`A008619(A219529(n)-(1-A314617(n)))`
-/

namespace A313524.P16367845431935138450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A219529 n - (1 - A314617 n)).toNat

end

end A313524.P16367845431935138450

/-! ## A313524.P9786026653469085405

`A065033(A219529(n)-(1-A314617(n)))`
-/

namespace A313524.P9786026653469085405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A219529 n - (1 - A314617 n)).toNat

end

end A313524.P9786026653469085405

/-!
# A313525: Coordination sequence Gal.6.249.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313525, the canonical program `A313525.P8743535936701336269` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313525 has offset 0).

The definition of A313525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313525.P6033375487443202142

`A315402(n)-A330025(n)`
-/

namespace A313525.P6033375487443202142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315402 n - A330025 n

end

end A313525.P6033375487443202142

namespace A313525

/-- `A315402(n)-A330025(n)` -/
def P6033375487443202142.Spec : Prop :=
  ∀ n, P6033375487443202142.a n = A313525 n

end A313525

/-! ## A313525.P8743535936701336269

`2*A313506(n)-A313476(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313525

/-- `2*A313506(n)-A313476(n)` -/
def P8743535936701336269.Spec : Prop :=
  ∀ n, P8743535936701336269.a n = A313525 n

theorem P8743535936701336269.correct : P8743535936701336269.Spec := by
  intro n
  simp only [A313525]

end A313525

/-! ## A313525.P7078964091824866603

`A313116(n)+A128834(A151988(n))`
-/

namespace A313525.P7078964091824866603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + A128834 (A151988 n).toNat

end

end A313525.P7078964091824866603

namespace A313525

/-- `A313116(n)+A128834(A151988(n))` -/
def P7078964091824866603.Spec : Prop :=
  ∀ n, P7078964091824866603.a n = A313525 n

end A313525

/-! ## A313525.P7817338627093826509

`A315187(n)-A134667(A151988(n))`
-/

namespace A313525.P7817338627093826509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - A134667 (A151988 n).toNat

end

end A313525.P7817338627093826509

namespace A313525

/-- `A315187(n)-A134667(A151988(n))` -/
def P7817338627093826509.Spec : Prop :=
  ∀ n, P7817338627093826509.a n = A313525 n

end A313525

/-! ## A313525.P9140724448682068343

`A313719(n)-A253262(n-A253262(n))`
-/

namespace A313525.P9140724448682068343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n - A253262 ((n : ℤ) - A253262 n).toNat

end

end A313525.P9140724448682068343

namespace A313525

/-- `A313719(n)-A253262(n-A253262(n))` -/
def P9140724448682068343.Spec : Prop :=
  ∀ n, P9140724448682068343.a n = A313525 n

end A313525

/-! ## A313525.P6957773363668032114

`A151988(n)+A314685(n)-A004396(A151988(n))`
-/

namespace A313525.P6957773363668032114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A314685 n - A004396 (A151988 n).toNat)

end

end A313525.P6957773363668032114

namespace A313525

/-- `A151988(n)+A314685(n)-A004396(A151988(n))` -/
def P6957773363668032114.Spec : Prop :=
  ∀ n, P6957773363668032114.a n = A313525 n

end A313525

/-! ## A313525.P1774116093270458283

`abs(A008592(n)-A313905(n))`
-/

namespace A313525.P1774116093270458283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313905 n|

end

end A313525.P1774116093270458283

namespace A313525

/-- `abs(A008592(n)-A313905(n))` -/
def P1774116093270458283.Spec : Prop :=
  ∀ n, P1774116093270458283.a n = A313525 n

end A313525

/-! ## A313525.P2693097506831410154

`2*A008706(n)-A313905(n)`
-/

namespace A313525.P2693097506831410154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313905 n

end

end A313525.P2693097506831410154

namespace A313525

/-- `2*A008706(n)-A313905(n)` -/
def P2693097506831410154.Spec : Prop :=
  ∀ n, P2693097506831410154.a n = A313525 n

end A313525

/-! ## A313525.P1668094753222516686

`A135042(2*n+1)-A313905(n)`
-/

namespace A313525.P1668094753222516686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313905 n

end

end A313525.P1668094753222516686

namespace A313525

/-- `A135042(2*n+1)-A313905(n)` -/
def P1668094753222516686.Spec : Prop :=
  ∀ n, P1668094753222516686.a n = A313525 n

end A313525

/-! ## A313525.P3609566956223016805

`A008458(n)+A008574(n)-A313905(n)`
-/

namespace A313525.P3609566956223016805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313905 n)

end

end A313525.P3609566956223016805

namespace A313525

/-- `A008458(n)+A008574(n)-A313905(n)` -/
def P3609566956223016805.Spec : Prop :=
  ∀ n, P3609566956223016805.a n = A313525 n

end A313525

/-! ## A313525.P7889917984515323768

`A313905(n)-A005843(A313905(n)-A008706(n))`
-/

namespace A313525.P7889917984515323768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313905 n - A005843 (A313905 n - A008706 n).toNat

end

end A313525.P7889917984515323768

namespace A313525

/-- `A313905(n)-A005843(A313905(n)-A008706(n))` -/
def P7889917984515323768.Spec : Prop :=
  ∀ n, P7889917984515323768.a n = A313525 n

end A313525

/-! ## A313525.P14256001819531794582

`A005843(A008706(n))-A313905(n)`
-/

namespace A313525.P14256001819531794582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313905 n

end

end A313525.P14256001819531794582

namespace A313525

/-- `A005843(A008706(n))-A313905(n)` -/
def P14256001819531794582.Spec : Prop :=
  ∀ n, P14256001819531794582.a n = A313525 n

end A313525

/-! ## A313525.P1581208165283147251

`A004396(A310379(n)+A072154(n))`
-/

namespace A313525.P1581208165283147251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310379 n + A072154 n).toNat

end

end A313525.P1581208165283147251

namespace A313525

/-- `A004396(A310379(n)+A072154(n))` -/
def P1581208165283147251.Spec : Prop :=
  ∀ n, P1581208165283147251.a n = A313525 n

end A313525

/-!
# A313526: Coordination sequence Gal.6.268.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313526, there is no canonical definition to state claims against.
-/

/-! ## A313526.P4232705601507729628

`A250120(n)+A244895(A050231(n+1))`
-/

namespace A313526.P4232705601507729628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A244895 (A050231 (n + 1)).toNat

end

end A313526.P4232705601507729628

/-! ## A313526.P17331298949157672709

`A313580(n)-A055641(A045924(n+1))`
-/

namespace A313526.P17331298949157672709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n - A055641 (A045924 (n + 1)).toNat

end

end A313526.P17331298949157672709

/-! ## A313526.P8779945430390454954

`A313525(n)+A107846(A112362(n+2))`
-/

namespace A313526.P8779945430390454954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313525 n + A107846 (A112362 (n + 2)).toNat

end

end A313526.P8779945430390454954

/-! ## A313526.P17145638647883826746

`A244895(A050231(n+1))+A047486(A033627(n+2))`
-/

namespace A313526.P17145638647883826746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A050231 (n + 1)).toNat + A047486 (A033627 (n + 2)).toNat

end

end A313526.P17145638647883826746

/-! ## A313526.P834650086280847260

`A244895(A050231(n+1))+A315303(n)-A330025(n)`
-/

namespace A313526.P834650086280847260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A050231 (n + 1)).toNat + (A315303 n - A330025 n)

end

end A313526.P834650086280847260

/-!
# A313527: Coordination sequence Gal.4.92.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313527, there is no canonical definition to state claims against.
-/

/-! ## A313527.P9770290868647466406

`or(A188187(5*(∑[40*n]+1)+4), A313525(n))`
-/

namespace A313527.P9770290868647466406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188187 (5 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 4)) (A313525 n)

end

end A313527.P9770290868647466406

/-! ## A313527.P16060923838982614246

`A301692(A087051(n))+A026430(n)`
-/

namespace A313527.P16060923838982614246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301692 (A087051 n).toNat + A026430 n

end

end A313527.P16060923838982614246

/-! ## A313527.P2797019628735105664

`A313525(n)+A025469(A133494(n))`
-/

namespace A313527.P2797019628735105664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313525 n + A025469 (A133494 n).toNat

end

end A313527.P2797019628735105664

/-! ## A313527.P12505324910883639170

`A358753(A176828(n))+A313524(n)`
-/

namespace A313527.P12505324910883639170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358753 (A176828 n).toNat + A313524 n

end

end A313527.P12505324910883639170

/-! ## A313527.P2168120585658531477

`A358753(n+1)+A313525(A087051(n))`
-/

namespace A313527.P2168120585658531477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358753 (n + 1) + A313525 (A087051 n).toNat

end

end A313527.P2168120585658531477

/-!
# A313528: Coordination sequence Gal.5.186.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313528, there is no canonical definition to state claims against.
-/

/-! ## A313528.P14729968249959106034

`∑[A091283(A348246(n+1))]+1`
-/

namespace A313528.P14729968249959106034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091283 (A348246 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A313528.P14729968249959106034

/-! ## A313528.P9028741850001393846

`A313589(n)+A062157(A052760(n))`
-/

namespace A313528.P9028741850001393846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313589 n + A062157 (A052760 n).toNat

end

end A313528.P9028741850001393846

/-! ## A313528.P2615144432060820000

`A313062(n)+A188295(A007051(n))`
-/

namespace A313528.P2615144432060820000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313062 n + A188295 (A007051 n).toNat

end

end A313528.P2615144432060820000

/-! ## A313528.P561113453541176424

`A358753(A181769(n))+A313527(n)`
-/

namespace A313528.P561113453541176424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358753 (A181769 n).toNat + A313527 n

end

end A313528.P561113453541176424

/-!
# A313529: Coordination sequence Gal.5.218.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313529, there is no canonical definition to state claims against.
-/

/-! ## A313529.P17892793235405665179

`A268820(A268824(n))+A000035(3^n)*A312560(n)`
-/

namespace A313529.P17892793235405665179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A268824 n).toNat + A000035 (3 ^ n) * A312560 n

end

end A313529.P17892793235405665179

/-! ## A313529.P3619928412161168701

`A268820(A268824(n))+A011589(3^n)*A312560(n)`
-/

namespace A313529.P3619928412161168701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A268824 n).toNat + A011589 (3 ^ n) * A312560 n

end

end A313529.P3619928412161168701

/-! ## A313529.P7621673389715349073

`A268820(A268824(n))+A312560(n)*A333461(3^n)`
-/

namespace A313529.P7621673389715349073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A268824 n).toNat + A312560 n * A333461 (3 ^ n)

end

end A313529.P7621673389715349073

/-!
# A313530: Coordination sequence Gal.6.455.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313530, there is no canonical definition to state claims against.
-/

/-! ## A313530.P16909792885003211178

`A313545(n)-(A025441(n)+A025441(A091588(n)))`
-/

namespace A313530.P16909792885003211178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313545 n - (A025441 n + A025441 (A091588 n).toNat)

end

end A313530.P16909792885003211178

/-! ## A313530.P5226857559224410828

`A313545(n)-A025441(A091588(n)-A025441(n))`
-/

namespace A313530.P5226857559224410828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313545 n - A025441 (A091588 n - A025441 n).toNat

end

end A313530.P5226857559224410828

/-!
# A313531: Coordination sequence Gal.6.521.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313531, there is no canonical definition to state claims against.
-/

/-! ## A313531.P4027257595514903439

`A313542(n)-A001878(A026554(n+1))`
-/

namespace A313531.P4027257595514903439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313542 n - A001878 (A026554 (n + 1)).toNat

end

end A313531.P4027257595514903439

/-! ## A313531.P9851556332663161605

`or(A054635(A025227(n)), A312501(n))`
-/

namespace A313531.P9851556332663161605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054635 (A025227 n).toNat) (A312501 n)

end

end A313531.P9851556332663161605

/-! ## A313531.P5581652502872672079

`A314254(n)-A066272(A001835(n))`
-/

namespace A313531.P5581652502872672079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314254 n - A066272 (A001835 n).toNat

end

end A313531.P5581652502872672079

/-! ## A313531.P10395874475910755560

`or(A000005(A298671(n)), A008579(n))`
-/

namespace A313531.P10395874475910755560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A298671 n).toNat) (A008579 n)

end

end A313531.P10395874475910755560

/-! ## A313531.P18216598212207048224

`or(A008579(n), A364255(A000088(n)))`
-/

namespace A313531.P18216598212207048224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008579 n) (A364255 (A000088 n).toNat)

end

end A313531.P18216598212207048224

/-!
# A313532: Coordination sequence Gal.6.479.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313532, there is no canonical definition to state claims against.
-/

/-! ## A313532.P13007255580623813784

`A043558(A022171(2*n))+round(n*ϕ^3)`
-/

namespace A313532.P13007255580623813784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A022171 (2 * n)).toNat + SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 3)

end

end A313532.P13007255580623813784

/-! ## A313532.P6063096959446141243

`or(A001221(A006318(n)), A311176(n))`
-/

namespace A313532.P6063096959446141243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A006318 n).toNat) (A311176 n)

end

end A313532.P6063096959446141243

/-! ## A313532.P16888309776830648080

`or(A008579(n), A135010(A288805(n)))`
-/

namespace A313532.P16888309776830648080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008579 n) (A135010 (A288805 n).toNat)

end

end A313532.P16888309776830648080

/-! ## A313532.P16359434989601518385

`A319241(n+1)+A303539(A000244(n))`
-/

namespace A313532.P16359434989601518385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319241 (n + 1) + A303539 (A000244 n).toNat

end

end A313532.P16359434989601518385

/-! ## A313532.P1426891826778051971

`A313531(n)+A235145(A184963(n+4))`
-/

namespace A313532.P1426891826778051971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313531 n + A235145 (A184963 (n + 4)).toNat

end

end A313532.P1426891826778051971

/-!
# A313533: Coordination sequence Gal.6.131.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313533, the canonical program `A313533.P10490888896929360716` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313533 has offset 0).

The definition of A313533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313533.P10490888896929360716

`A315697(n)-n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313533

/-- `A315697(n)-n` -/
def P10490888896929360716.Spec : Prop :=
  ∀ n, P10490888896929360716.a n = A313533 n

theorem P10490888896929360716.correct : P10490888896929360716.Spec := by
  intro n
  simp only [A313533]

end A313533

/-! ## A313533.P16152016028482287881

`A004525(n)+A313474(n)-A004396(A004525(n))`
-/

namespace A313533.P16152016028482287881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313474 n - A004396 (A004525 n).toNat)

end

end A313533.P16152016028482287881

namespace A313533

/-- `A004525(n)+A313474(n)-A004396(A004525(n))` -/
def P16152016028482287881.Spec : Prop :=
  ∀ n, P16152016028482287881.a n = A313533 n

end A313533

/-! ## A313533.P288993107470708857

`abs(A008592(n)-(A311964(n)+n))`
-/

namespace A313533.P288993107470708857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311964 n + (n : ℤ))|

end

end A313533.P288993107470708857

namespace A313533

/-- `abs(A008592(n)-(A311964(n)+n))` -/
def P288993107470708857.Spec : Prop :=
  ∀ n, P288993107470708857.a n = A313533 n

end A313533

/-! ## A313533.P5162805598543329588

`A008458(n)+A008486(n)-A311964(n)`
-/

namespace A313533.P5162805598543329588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311964 n)

end

end A313533.P5162805598543329588

namespace A313533

/-- `A008458(n)+A008486(n)-A311964(n)` -/
def P5162805598543329588.Spec : Prop :=
  ∀ n, P5162805598543329588.a n = A313533 n

end A313533

/-! ## A313533.P14789321462038048068

`A314024(n)-A002264(n+1)`
-/

namespace A313533.P14789321462038048068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314024 n - A002264 (n + 1)

end

end A313533.P14789321462038048068

namespace A313533

/-- `A314024(n)-A002264(n+1)` -/
def P14789321462038048068.Spec : Prop :=
  ∀ n, P14789321462038048068.a n = A313533 n

end A313533

/-! ## A313533.P7196194683282834387

`A004396(n)+A314024(n)-n`
-/

namespace A313533.P7196194683282834387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314024 n - (n : ℤ))

end

end A313533.P7196194683282834387

namespace A313533

/-- `A004396(n)+A314024(n)-n` -/
def P7196194683282834387.Spec : Prop :=
  ∀ n, P7196194683282834387.a n = A313533 n

end A313533

/-! ## A313533.P4202957063819673139

`A008576(n)+A314024(n)-A008486(n)`
-/

namespace A313533.P4202957063819673139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314024 n - A008486 n)

end

end A313533.P4202957063819673139

namespace A313533

/-- `A008576(n)+A314024(n)-A008486(n)` -/
def P4202957063819673139.Spec : Prop :=
  ∀ n, P4202957063819673139.a n = A313533 n

end A313533

/-! ## A313533.P9279692695510056298

`A315482(n)-A004396(n)`
-/

namespace A313533.P9279692695510056298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315482 n - A004396 n

end

end A313533.P9279692695510056298

namespace A313533

/-- `A315482(n)-A004396(n)` -/
def P9279692695510056298.Spec : Prop :=
  ∀ n, P9279692695510056298.a n = A313533 n

end A313533

/-! ## A313533.P17718155045609048477

`A315482(n)-A002264(2*n+1)`
-/

namespace A313533.P17718155045609048477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315482 n - A002264 (2 * n + 1)

end

end A313533.P17718155045609048477

namespace A313533

/-- `A315482(n)-A002264(2*n+1)` -/
def P17718155045609048477.Spec : Prop :=
  ∀ n, P17718155045609048477.a n = A313533 n

end A313533

/-! ## A313533.P175053024263545544

`abs(A008592(n)-A313900(n))`
-/

namespace A313533.P175053024263545544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313900 n|

end

end A313533.P175053024263545544

namespace A313533

/-- `abs(A008592(n)-A313900(n))` -/
def P175053024263545544.Spec : Prop :=
  ∀ n, P175053024263545544.a n = A313533 n

end A313533

/-! ## A313533.P13038961345133660088

`2*A008706(n)-A313900(n)`
-/

namespace A313533.P13038961345133660088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313900 n

end

end A313533.P13038961345133660088

namespace A313533

/-- `2*A008706(n)-A313900(n)` -/
def P13038961345133660088.Spec : Prop :=
  ∀ n, P13038961345133660088.a n = A313533 n

end A313533

/-! ## A313533.P5345735636891998819

`A008458(n)+A008574(n)-A313900(n)`
-/

namespace A313533.P5345735636891998819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313900 n)

end

end A313533.P5345735636891998819

namespace A313533

/-- `A008458(n)+A008574(n)-A313900(n)` -/
def P5345735636891998819.Spec : Prop :=
  ∀ n, P5345735636891998819.a n = A313533 n

end A313533

/-! ## A313533.P13171110368655816104

`A315747(n)-(Δ[A011865(n)]+n)`
-/

namespace A313533.P13171110368655816104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315747 n - (f1 (n + 1) - f1 n + (n : ℤ))

end

end A313533.P13171110368655816104

namespace A313533

/-- `A315747(n)-(Δ[A011865(n)]+n)` -/
def P13171110368655816104.Spec : Prop :=
  ∀ n, P13171110368655816104.a n = A313533 n

end A313533

/-!
# A313534: Coordination sequence Gal.6.231.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313534, the canonical program `A313534.P16116811055759835117` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313534 has offset 0).

The definition of A313534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313534.P16472760049243180540

`A313689(n)-Δ[A011864(n)]`
-/

namespace A313534.P16472760049243180540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313689 n - (f1 (n + 1) - f1 n)

end

end A313534.P16472760049243180540

namespace A313534

/-- `A313689(n)-Δ[A011864(n)]` -/
def P16472760049243180540.Spec : Prop :=
  ∀ n, P16472760049243180540.a n = A313534 n

end A313534

/-! ## A313534.P1369984552954262673

`(A315643(n)+A008574(n))/2`
-/

namespace A313534.P1369984552954262673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315643 n + A008574 n : ℚ) / 2

end

end A313534.P1369984552954262673

namespace A313534

/-- `(A315643(n)+A008574(n))/2` -/
def P1369984552954262673.Spec : Prop :=
  ∀ n, P1369984552954262673.a n = (A313534 n : ℚ)

end A313534

/-! ## A313534.P16116811055759835117

`A008574(n)+A001281(A315643(n)-A008574(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A313534

/-- `A008574(n)+A001281(A315643(n)-A008574(n))` -/
def P16116811055759835117.Spec : Prop :=
  ∀ n, P16116811055759835117.a n = A313534 n

theorem P16116811055759835117.correct : P16116811055759835117.Spec := by
  intro n
  simp only [A313534]

end A313534

/-! ## A313534.P10998161691810814044

`A008574(n)+A004525(A315643(n)-A008574(n))`
-/

namespace A313534.P10998161691810814044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A315643 n - A008574 n).toNat

end

end A313534.P10998161691810814044

namespace A313534

/-- `A008574(n)+A004525(A315643(n)-A008574(n))` -/
def P10998161691810814044.Spec : Prop :=
  ∀ n, P10998161691810814044.a n = A313534 n

end A313534

/-! ## A313534.P7710398593542410555

`A315643(n)-A004526(A315643(n)-A008574(n))`
-/

namespace A313534.P7710398593542410555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315643 n - A004526 (A315643 n - A008574 n).toNat

end

end A313534.P7710398593542410555

namespace A313534

/-- `A315643(n)-A004526(A315643(n)-A008574(n))` -/
def P7710398593542410555.Spec : Prop :=
  ∀ n, P7710398593542410555.a n = A313534 n

end A313534

/-! ## A313534.P2146964165533004742

`abs(A008592(n)-A313899(n))`
-/

namespace A313534.P2146964165533004742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313899 n|

end

end A313534.P2146964165533004742

namespace A313534

/-- `abs(A008592(n)-A313899(n))` -/
def P2146964165533004742.Spec : Prop :=
  ∀ n, P2146964165533004742.a n = A313534 n

end A313534

/-! ## A313534.P10231294148796102093

`2*A008706(n)-A313899(n)`
-/

namespace A313534.P10231294148796102093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313899 n

end

end A313534.P10231294148796102093

namespace A313534

/-- `2*A008706(n)-A313899(n)` -/
def P10231294148796102093.Spec : Prop :=
  ∀ n, P10231294148796102093.a n = A313534 n

end A313534

/-! ## A313534.P2219067630865207962

`A008458(n)+A008574(n)-A313899(n)`
-/

namespace A313534.P2219067630865207962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313899 n)

end

end A313534.P2219067630865207962

namespace A313534

/-- `A008458(n)+A008574(n)-A313899(n)` -/
def P2219067630865207962.Spec : Prop :=
  ∀ n, P2219067630865207962.a n = A313534 n

end A313534

/-! ## A313534.P2022395540989872276

`A313899(n)-A005843(A313899(n)-A008706(n))`
-/

namespace A313534.P2022395540989872276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313899 n - A005843 (A313899 n - A008706 n).toNat

end

end A313534.P2022395540989872276

namespace A313534

/-- `A313899(n)-A005843(A313899(n)-A008706(n))` -/
def P2022395540989872276.Spec : Prop :=
  ∀ n, P2022395540989872276.a n = A313534 n

end A313534

/-! ## A313534.P11013695185517861007

`2*A313718(n)-A180004(A313718(n))`
-/

namespace A313534.P11013695185517861007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313718 n - A180004 (A313718 n).toNat

end

end A313534.P11013695185517861007

namespace A313534

/-- `2*A313718(n)-A180004(A313718(n))` -/
def P11013695185517861007.Spec : Prop :=
  ∀ n, P11013695185517861007.a n = A313534 n

end A313534

/-! ## A313534.P11376368041362215208

`A008458(n)+n-A004526(A312562(n))`
-/

namespace A313534.P11376368041362215208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A312562 n).toNat)

end

end A313534.P11376368041362215208

namespace A313534

/-- `A008458(n)+n-A004526(A312562(n))` -/
def P11376368041362215208.Spec : Prop :=
  ∀ n, P11376368041362215208.a n = A313534 n

end A313534

/-! ## A313534.P12506413411585221170

`A005843(A008706(n))-A313899(n)`
-/

namespace A313534.P12506413411585221170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313899 n

end

end A313534.P12506413411585221170

namespace A313534

/-- `A005843(A008706(n))-A313899(n)` -/
def P12506413411585221170.Spec : Prop :=
  ∀ n, P12506413411585221170.a n = A313534 n

end A313534

/-! ## A313534.P10649312585028597584

`A005843(A008458(n)-n)-A313899(n)`
-/

namespace A313534.P10649312585028597584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313899 n

end

end A313534.P10649312585028597584

namespace A313534

/-- `A005843(A008458(n)-n)-A313899(n)` -/
def P10649312585028597584.Spec : Prop :=
  ∀ n, P10649312585028597584.a n = A313534 n

end A313534

/-! ## A313534.P4770902668125428992

`A004526(A315643(n))+A004277(n)`
-/

namespace A313534.P4770902668125428992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315643 n).toNat + A004277 n

end

end A313534.P4770902668125428992

namespace A313534

/-- `A004526(A315643(n))+A004277(n)` -/
def P4770902668125428992.Spec : Prop :=
  ∀ n, P4770902668125428992.a n = A313534 n

end A313534

/-! ## A313534.P197993872738192580

`A005843(n)+A004525(A315643(n))`
-/

namespace A313534.P197993872738192580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315643 n).toNat

end

end A313534.P197993872738192580

namespace A313534

/-- `A005843(n)+A004525(A315643(n))` -/
def P197993872738192580.Spec : Prop :=
  ∀ n, P197993872738192580.a n = A313534 n

end A313534

/-! ## A313534.P173278186667436183

`A008619(A315643(n))+A004273(n)`
-/

namespace A313534.P173278186667436183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A315643 n).toNat + A004273 n

end

end A313534.P173278186667436183

namespace A313534

/-- `A008619(A315643(n))+A004273(n)` -/
def P173278186667436183.Spec : Prop :=
  ∀ n, P173278186667436183.a n = A313534 n

end A313534

/-! ## A313534.P4504183808979939518

`A004525(A315643(n)+A008574(n))`
-/

namespace A313534.P4504183808979939518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315643 n + A008574 n).toNat

end

end A313534.P4504183808979939518

namespace A313534

/-- `A004525(A315643(n)+A008574(n))` -/
def P4504183808979939518.Spec : Prop :=
  ∀ n, P4504183808979939518.a n = A313534 n

end A313534

/-! ## A313534.P14009669028466370646

`A001281(A315643(n)+A008574(n))`
-/

namespace A313534.P14009669028466370646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315643 n + A008574 n).toNat

end

end A313534.P14009669028466370646

namespace A313534

/-- `A001281(A315643(n)+A008574(n))` -/
def P14009669028466370646.Spec : Prop :=
  ∀ n, P14009669028466370646.a n = A313534 n

end A313534

/-! ## A313534.P8081919979483425246

`A004526(A315643(n)+A008574(n))`
-/

namespace A313534.P8081919979483425246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315643 n + A008574 n).toNat

end

end A313534.P8081919979483425246

namespace A313534

/-- `A004526(A315643(n)+A008574(n))` -/
def P8081919979483425246.Spec : Prop :=
  ∀ n, P8081919979483425246.a n = A313534 n

end A313534

/-!
# A313535: Coordination sequence Gal.5.123.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313535, there is no canonical definition to state claims against.
-/

/-! ## A313535.P13863607341165616066

`A304720(A000110(n))+A016813(n)`
-/

namespace A313535.P13863607341165616066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304720 (A000110 n).toNat + A016813 n

end

end A313535.P13863607341165616066

/-! ## A313535.P12947650621757661981

`or(A020639(A001472(n)), A312606(n))`
-/

namespace A313535.P12947650621757661981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A001472 n).toNat) (A312606 n)

end

end A313535.P12947650621757661981

/-! ## A313535.P16909058984533270650

`or(A313534(n), A348477(A000108(n)))`
-/

namespace A313535.P16909058984533270650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313534 n) (A348477 (A000108 n).toNat)

end

end A313535.P16909058984533270650

/-! ## A313535.P5823567679479396339

`A311790(n)+A001221(A094789(n+1))`
-/

namespace A313535.P5823567679479396339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311790 n + A001221 (A094789 (n + 1)).toNat

end

end A313535.P5823567679479396339

/-!
# A313536: Coordination sequence Gal.6.296.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313536, there is no canonical definition to state claims against.
-/

/-! ## A313536.P15204049723503518621

`or(A138121(A127358(n)), A313535(n))`
-/

namespace A313536.P15204049723503518621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A138121 (A127358 n).toNat) (A313535 n)

end

end A313536.P15204049723503518621

/-! ## A313536.P10229590730184452501

`or(A313535(n), A347550(A208555(n+1)))`
-/

namespace A313536.P10229590730184452501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313535 n) (A347550 (A208555 (n + 1)).toNat)

end

end A313536.P10229590730184452501

/-! ## A313536.P15565132448983242730

`or(A313535(n), A347550(A208688(n+1)))`
-/

namespace A313536.P15565132448983242730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313535 n) (A347550 (A208688 (n + 1)).toNat)

end

end A313536.P15565132448983242730

/-! ## A313536.P2177609177681256895

`A095042(lcm(n+1, ∑{digits}[n+1, #]))+3*n`
-/

namespace A313536.P2177609177681256895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095042 (Nat.lcm (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) + (3 * n : ℤ)

end

end A313536.P2177609177681256895

/-! ## A313536.P2964745175953021938

`A305079(A014137(n))+A301299(n)`
-/

namespace A313536.P2964745175953021938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A014137 n).toNat + A301299 n

end

end A313536.P2964745175953021938

/-!
# A313537: Coordination sequence Gal.5.66.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313537, the canonical program `A313537.P8184197836610671294` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313537 has offset 0).

The definition of A313537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313537.P4190192419326917430

`A330025(n)+A312948(n)`
-/

namespace A313537.P4190192419326917430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A312948 n

end

end A313537.P4190192419326917430

namespace A313537

/-- `A330025(n)+A312948(n)` -/
def P4190192419326917430.Spec : Prop :=
  ∀ n, P4190192419326917430.a n = A313537 n

end A313537

/-! ## A313537.P17477455328160761991

`A315707(n)-A151988(n)`
-/

namespace A313537.P17477455328160761991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n - A151988 n

end

end A313537.P17477455328160761991

namespace A313537

/-- `A315707(n)-A151988(n)` -/
def P17477455328160761991.Spec : Prop :=
  ∀ n, P17477455328160761991.a n = A313537 n

end A313537

/-! ## A313537.P11242377554820927767

`A314670(n)+A057354(n+1)`
-/

namespace A313537.P11242377554820927767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n + A057354 (n + 1)

end

end A313537.P11242377554820927767

namespace A313537

/-- `A314670(n)+A057354(n+1)` -/
def P11242377554820927767.Spec : Prop :=
  ∀ n, P11242377554820927767.a n = A313537 n

end A313537

/-! ## A313537.P15214103309009665245

`abs(A008592(n)-(A311958(n)+n))`
-/

namespace A313537.P15214103309009665245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311958 n + (n : ℤ))|

end

end A313537.P15214103309009665245

namespace A313537

/-- `abs(A008592(n)-(A311958(n)+n))` -/
def P15214103309009665245.Spec : Prop :=
  ∀ n, P15214103309009665245.a n = A313537 n

end A313537

/-! ## A313537.P18345067770838574962

`A047299(n+1)+A314670(n)-n`
-/

namespace A313537.P18345067770838574962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A314670 n - (n : ℤ))

end

end A313537.P18345067770838574962

namespace A313537

/-- `A047299(n+1)+A314670(n)-n` -/
def P18345067770838574962.Spec : Prop :=
  ∀ n, P18345067770838574962.a n = A313537 n

end A313537

/-! ## A313537.P5861080279135268316

`A005843(A008574(n))+n-A311958(n)`
-/

namespace A313537.P5861080279135268316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A311958 n)

end

end A313537.P5861080279135268316

namespace A313537

/-- `A005843(A008574(n))+n-A311958(n)` -/
def P5861080279135268316.Spec : Prop :=
  ∀ n, P5861080279135268316.a n = A313537 n

end A313537

/-! ## A313537.P11112707757971181637

`A008458(n)+A008486(n)-A311958(n)`
-/

namespace A313537.P11112707757971181637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311958 n)

end

end A313537.P11112707757971181637

namespace A313537

/-- `A008458(n)+A008486(n)-A311958(n)` -/
def P11112707757971181637.Spec : Prop :=
  ∀ n, P11112707757971181637.a n = A313537 n

end A313537

/-! ## A313537.P8184197836610671294

`A330025(n-A330025(n))+A314725(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A313537

/-- `A330025(n-A330025(n))+A314725(n)` -/
def P8184197836610671294.Spec : Prop :=
  ∀ n, P8184197836610671294.a n = A313537 n

theorem P8184197836610671294.correct : P8184197836610671294.Spec := by
  intro n
  simp only [A313537]

end A313537

/-! ## A313537.P6117065825656204969

`A315397(n)-A330025(A330025(n)+n)`
-/

namespace A313537.P6117065825656204969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315397 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A313537.P6117065825656204969

namespace A313537

/-- `A315397(n)-A330025(A330025(n)+n)` -/
def P6117065825656204969.Spec : Prop :=
  ∀ n, P6117065825656204969.a n = A313537 n

end A313537

/-! ## A313537.P801042629208762133

`A313719(n)-A002266(n+2)`
-/

namespace A313537.P801042629208762133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n - A002266 (n + 2)

end

end A313537.P801042629208762133

namespace A313537

/-- `A313719(n)-A002266(n+2)` -/
def P801042629208762133.Spec : Prop :=
  ∀ n, P801042629208762133.a n = A313537 n

end A313537

/-! ## A313537.P5266883179680997193

`A313719(n)-A008676(A016777(n))`
-/

namespace A313537.P5266883179680997193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n - A008676 (A016777 n).toNat

end

end A313537.P5266883179680997193

namespace A313537

/-- `A313719(n)-A008676(A016777(n))` -/
def P5266883179680997193.Spec : Prop :=
  ∀ n, P5266883179680997193.a n = A313537 n

end A313537

/-! ## A313537.P1793484891909735551

`A047513(A312892(n)+1)-n`
-/

namespace A313537.P1793484891909735551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (A312892 n + 1).toNat - (n : ℤ)

end

end A313537.P1793484891909735551

namespace A313537

/-- `A047513(A312892(n)+1)-n` -/
def P1793484891909735551.Spec : Prop :=
  ∀ n, P1793484891909735551.a n = A313537 n

end A313537

/-! ## A313537.P1655680033492390419

`(A315644(n)+A008574(n))/2`
-/

namespace A313537.P1655680033492390419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315644 n + A008574 n : ℚ) / 2

end

end A313537.P1655680033492390419

namespace A313537

/-- `(A315644(n)+A008574(n))/2` -/
def P1655680033492390419.Spec : Prop :=
  ∀ n, P1655680033492390419.a n = (A313537 n : ℚ)

end A313537

/-! ## A313537.P271858334948106062

`Δ[A011858(n)]+A315468(n)-n`
-/

namespace A313537.P271858334948106062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315468 n - (n : ℤ))

end

end A313537.P271858334948106062

namespace A313537

/-- `Δ[A011858(n)]+A315468(n)-n` -/
def P271858334948106062.Spec : Prop :=
  ∀ n, P271858334948106062.a n = A313537 n

end A313537

/-! ## A313537.P17656988230774742515

`A008574(n)+A315518(n)-A250120(n)`
-/

namespace A313537.P17656988230774742515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315518 n - A250120 n)

end

end A313537.P17656988230774742515

namespace A313537

/-- `A008574(n)+A315518(n)-A250120(n)` -/
def P17656988230774742515.Spec : Prop :=
  ∀ n, P17656988230774742515.a n = A313537 n

end A313537

/-! ## A313537.P8321061872360406083

`A008458(n)+A008574(n)-A313898(n)`
-/

namespace A313537.P8321061872360406083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313898 n)

end

end A313537.P8321061872360406083

namespace A313537

/-- `A008458(n)+A008574(n)-A313898(n)` -/
def P8321061872360406083.Spec : Prop :=
  ∀ n, P8321061872360406083.a n = A313537 n

end A313537

/-! ## A313537.P5677873721837652103

`A315698(n)-n`
-/

namespace A313537.P5677873721837652103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315698 n - (n : ℤ)

end

end A313537.P5677873721837652103

namespace A313537

/-- `A315698(n)-n` -/
def P5677873721837652103.Spec : Prop :=
  ∀ n, P5677873721837652103.a n = A313537 n

end A313537

/-! ## A313537.P6941712139695222622

`A315761(n)-A047263(n+1)`
-/

namespace A313537.P6941712139695222622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315761 n - A047263 (n + 1)

end

end A313537.P6941712139695222622

namespace A313537

/-- `A315761(n)-A047263(n+1)` -/
def P6941712139695222622.Spec : Prop :=
  ∀ n, P6941712139695222622.a n = A313537 n

end A313537

/-! ## A313537.P3463182865212799948

`A314164(n)+A330025(n)-n`
-/

namespace A313537.P3463182865212799948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314164 n + (A330025 n - (n : ℤ))

end

end A313537.P3463182865212799948

namespace A313537

/-- `A314164(n)+A330025(n)-n` -/
def P3463182865212799948.Spec : Prop :=
  ∀ n, P3463182865212799948.a n = A313537 n

end A313537

/-! ## A313537.P6924081948685335661

`A004396(A315684(n))+n`
-/

namespace A313537.P6924081948685335661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315684 n).toNat + (n : ℤ)

end

end A313537.P6924081948685335661

namespace A313537

/-- `A004396(A315684(n))+n` -/
def P6924081948685335661.Spec : Prop :=
  ∀ n, P6924081948685335661.a n = A313537 n

end A313537

/-!
# A313538: Coordination sequence Gal.5.110.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313538, the canonical program `A313538.P13622609119361302116` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313538 has offset 0).

The definition of A313538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313538.P13622609119361302116

`A312893(n)+A004396(A004396(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313538

/-- `A312893(n)+A004396(A004396(n))` -/
def P13622609119361302116.Spec : Prop :=
  ∀ n, P13622609119361302116.a n = A313538 n

theorem P13622609119361302116.correct : P13622609119361302116.Spec := by
  intro n
  simp only [A313538]

end A313538

/-! ## A313538.P7873268688335384153

`A315690(n)-A004396(A004396(2*n))`
-/

namespace A313538.P7873268688335384153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n - A004396 (A004396 (2 * n)).toNat

end

end A313538.P7873268688335384153

namespace A313538

/-- `A315690(n)-A004396(A004396(2*n))` -/
def P7873268688335384153.Spec : Prop :=
  ∀ n, P7873268688335384153.a n = A313538 n

end A313538

/-! ## A313538.P4539663935208934452

`A310521(A008574(n))/2-A008458(n)`
-/

namespace A313538.P4539663935208934452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310521 (A008574 n).toNat : ℚ) / 2 - (A008458 n : ℚ)

end

end A313538.P4539663935208934452

namespace A313538

/-- `A310521(A008574(n))/2-A008458(n)` -/
def P4539663935208934452.Spec : Prop :=
  ∀ n, P4539663935208934452.a n = (A313538 n : ℚ)

end A313538

/-! ## A313538.P6800896492329964839

`A314736(n)-A102283(A004396(4*n))`
-/

namespace A313538.P6800896492329964839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n - A102283 (A004396 (4 * n)).toNat

end

end A313538.P6800896492329964839

namespace A313538

/-- `A314736(n)-A102283(A004396(4*n))` -/
def P6800896492329964839.Spec : Prop :=
  ∀ n, P6800896492329964839.a n = A313538 n

end A313538

/-! ## A313538.P11180400946220750458

`A314710(n)+A004396(n-A004396(n))`
-/

namespace A313538.P11180400946220750458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314710 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313538.P11180400946220750458

namespace A313538

/-- `A314710(n)+A004396(n-A004396(n))` -/
def P11180400946220750458.Spec : Prop :=
  ∀ n, P11180400946220750458.a n = A313538 n

end A313538

/-! ## A313538.P8050726455352228280

`A314736(n)+A102283(n-A004396(n))`
-/

namespace A313538.P8050726455352228280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n + A102283 ((n : ℤ) - A004396 n).toNat

end

end A313538.P8050726455352228280

namespace A313538

/-- `A314736(n)+A102283(n-A004396(n))` -/
def P8050726455352228280.Spec : Prop :=
  ∀ n, P8050726455352228280.a n = A313538 n

end A313538

/-! ## A313538.P18013101820976685470

`A314021(n)-A004396(n-A004396(n))`
-/

namespace A313538.P18013101820976685470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314021 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313538.P18013101820976685470

namespace A313538

/-- `A314021(n)-A004396(n-A004396(n))` -/
def P18013101820976685470.Spec : Prop :=
  ∀ n, P18013101820976685470.a n = A313538 n

end A313538

/-! ## A313538.P10250492853060121640

`A314736(n)-A102283(A004396(n)-A102283(n))`
-/

namespace A313538.P10250492853060121640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n - A102283 (A004396 n - A102283 n).toNat

end

end A313538.P10250492853060121640

namespace A313538

/-- `A314736(n)-A102283(A004396(n)-A102283(n))` -/
def P10250492853060121640.Spec : Prop :=
  ∀ n, P10250492853060121640.a n = A313538 n

end A313538

/-! ## A313538.P774771103438303287

`A313721(n)-Δ[A011862(n)]`
-/

namespace A313538.P774771103438303287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n - (f1 (n + 1) - f1 n)

end

end A313538.P774771103438303287

namespace A313538

/-- `A313721(n)-Δ[A011862(n)]` -/
def P774771103438303287.Spec : Prop :=
  ∀ n, P774771103438303287.a n = A313538 n

end A313538

/-! ## A313538.P12659245457357877886

`A047263(A313721(n)+1-n)`
-/

namespace A313538.P12659245457357877886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A313721 n + (1 - (n : ℤ))).toNat

end

end A313538.P12659245457357877886

namespace A313538

/-- `A047263(A313721(n)+1-n)` -/
def P12659245457357877886.Spec : Prop :=
  ∀ n, P12659245457357877886.a n = A313538 n

end A313538

/-! ## A313538.P6895279550929464434

`A047263(1-(n-A313721(n)))`
-/

namespace A313538.P6895279550929464434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (1 - ((n : ℤ) - A313721 n)).toNat

end

end A313538.P6895279550929464434

namespace A313538

/-- `A047263(1-(n-A313721(n)))` -/
def P6895279550929464434.Spec : Prop :=
  ∀ n, P6895279550929464434.a n = A313538 n

end A313538

/-! ## A313538.P16394064043822352478

`A004396(A004396(n))+A313721(n)-A004396(n)`
-/

namespace A313538.P16394064043822352478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A313721 n - A004396 n)

end

end A313538.P16394064043822352478

namespace A313538

/-- `A004396(A004396(n))+A313721(n)-A004396(n)` -/
def P16394064043822352478.Spec : Prop :=
  ∀ n, P16394064043822352478.a n = A313538 n

end A313538

/-! ## A313538.P14217861118515106545

`A314039(n)-A002264(A086161(4*n))`
-/

namespace A313538.P14217861118515106545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314039 n - A002264 (A086161 (4 * n)).toNat

end

end A313538.P14217861118515106545

namespace A313538

/-- `A314039(n)-A002264(A086161(4*n))` -/
def P14217861118515106545.Spec : Prop :=
  ∀ n, P14217861118515106545.a n = A313538 n

end A313538

/-! ## A313538.P12521253599279453461

`A314039(n)-A002264(A086161(n)+n)`
-/

namespace A313538.P12521253599279453461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314039 n - A002264 (A086161 n + (n : ℤ)).toNat

end

end A313538.P12521253599279453461

namespace A313538

/-- `A314039(n)-A002264(A086161(n)+n)` -/
def P12521253599279453461.Spec : Prop :=
  ∀ n, P12521253599279453461.a n = A313538 n

end A313538

/-! ## A313538.P4871052881921272825

`(A315646(n)+A008574(n))/2`
-/

namespace A313538.P4871052881921272825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315646 n + A008574 n : ℚ) / 2

end

end A313538.P4871052881921272825

namespace A313538

/-- `(A315646(n)+A008574(n))/2` -/
def P4871052881921272825.Spec : Prop :=
  ∀ n, P4871052881921272825.a n = (A313538 n : ℚ)

end A313538

/-! ## A313538.P16084674976358585533

`A008574(n)+A001281(A315646(n)-A008574(n))`
-/

namespace A313538.P16084674976358585533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A315646 n - A008574 n).toNat

end

end A313538.P16084674976358585533

namespace A313538

/-- `A008574(n)+A001281(A315646(n)-A008574(n))` -/
def P16084674976358585533.Spec : Prop :=
  ∀ n, P16084674976358585533.a n = A313538 n

end A313538

/-! ## A313538.P17301197974312395578

`abs(A008592(n)-A313894(n))`
-/

namespace A313538.P17301197974312395578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313894 n|

end

end A313538.P17301197974312395578

namespace A313538

/-- `abs(A008592(n)-A313894(n))` -/
def P17301197974312395578.Spec : Prop :=
  ∀ n, P17301197974312395578.a n = A313538 n

end A313538

/-! ## A313538.P217758705690508090

`A008458(n)+A008574(n)-A313894(n)`
-/

namespace A313538.P217758705690508090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313894 n)

end

end A313538.P217758705690508090

namespace A313538

/-- `A008458(n)+A008574(n)-A313894(n)` -/
def P217758705690508090.Spec : Prop :=
  ∀ n, P217758705690508090.a n = A313538 n

end A313538

/-! ## A313538.P18016545963348301377

`A315535(n)-A004396(2*A004396(n))`
-/

namespace A313538.P18016545963348301377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315535 n - A004396 (2 * A004396 n).toNat

end

end A313538.P18016545963348301377

namespace A313538

/-- `A315535(n)-A004396(2*A004396(n))` -/
def P18016545963348301377.Spec : Prop :=
  ∀ n, P18016545963348301377.a n = A313538 n

end A313538

/-! ## A313538.P231732791982772599

`A005843(A008458(n)-n)-A313894(n)`
-/

namespace A313538.P231732791982772599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313894 n

end

end A313538.P231732791982772599

namespace A313538

/-- `A005843(A008458(n)-n)-A313894(n)` -/
def P231732791982772599.Spec : Prop :=
  ∀ n, P231732791982772599.a n = A313538 n

end A313538

/-!
# A313539: Coordination sequence Gal.6.580.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313539, there is no canonical definition to state claims against.
-/

/-! ## A313539.P7156446725706892919

`record[∑{digits}[A001844(A061205(n)), #]]`
-/

namespace A313539.P7156446725706892919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A061205 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313539.P7156446725706892919

/-! ## A313539.P15842248128064252753

`A001651(A243903(3*n+2)-1)`
-/

namespace A313539.P15842248128064252753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A243903 (3 * n + 2) - 1).toNat

end

end A313539.P15842248128064252753

/-! ## A313539.P6949896080625243295

`lt[A144483(n+1), tan(A144512(n+4))]`
-/

namespace A313539.P6949896080625243295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144483 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A144512 (n + 4) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A313539.P6949896080625243295

/-!
# A313540: Coordination sequence Gal.6.151.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313540, the canonical program `A313540.P7329295065648553894` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313540 has offset 0).

The definition of A313540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313540.P7329295065648553894

`abs(A008592(n)-(A311924(n)+n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313540

/-- `abs(A008592(n)-(A311924(n)+n))` -/
def P7329295065648553894.Spec : Prop :=
  ∀ n, P7329295065648553894.a n = A313540 n

theorem P7329295065648553894.correct : P7329295065648553894.Spec := by
  intro n
  simp only [A313540]

end A313540

/-! ## A313540.P17545606456731000648

`A047424(n+1)+A312926(n)-n`
-/

namespace A313540.P17545606456731000648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A312926 n - (n : ℤ))

end

end A313540.P17545606456731000648

namespace A313540

/-- `A047424(n+1)+A312926(n)-n` -/
def P17545606456731000648.Spec : Prop :=
  ∀ n, P17545606456731000648.a n = A313540 n

end A313540

/-! ## A313540.P10415147981101393885

`A312926(n)+A004525(A004396(n))`
-/

namespace A313540.P10415147981101393885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + A004525 (A004396 n).toNat

end

end A313540.P10415147981101393885

namespace A313540

/-- `A312926(n)+A004525(A004396(n))` -/
def P10415147981101393885.Spec : Prop :=
  ∀ n, P10415147981101393885.a n = A313540 n

end A313540

/-! ## A313540.P12720959689930905353

`A008458(n)+A008486(n)-A311924(n)`
-/

namespace A313540.P12720959689930905353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311924 n)

end

end A313540.P12720959689930905353

namespace A313540

/-- `A008458(n)+A008486(n)-A311924(n)` -/
def P12720959689930905353.Spec : Prop :=
  ∀ n, P12720959689930905353.a n = A313540 n

end A313540

/-! ## A313540.P1181618859719593916

`A313136(n)+A128834(n)`
-/

namespace A313540.P1181618859719593916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313136 n + A128834 n

end

end A313540.P1181618859719593916

namespace A313540

/-- `A313136(n)+A128834(n)` -/
def P1181618859719593916.Spec : Prop :=
  ∀ n, P1181618859719593916.a n = A313540 n

end A313540

/-! ## A313540.P2105406256390097702

`A004396(n)+A314028(n)-n`
-/

namespace A313540.P2105406256390097702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314028 n - (n : ℤ))

end

end A313540.P2105406256390097702

namespace A313540

/-- `A004396(n)+A314028(n)-n` -/
def P2105406256390097702.Spec : Prop :=
  ∀ n, P2105406256390097702.a n = A313540 n

end A313540

/-! ## A313540.P7075424736108590986

`A008576(n)+A314028(n)-A008486(n)`
-/

namespace A313540.P7075424736108590986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314028 n - A008486 n)

end

end A313540.P7075424736108590986

namespace A313540

/-- `A008576(n)+A314028(n)-A008486(n)` -/
def P7075424736108590986.Spec : Prop :=
  ∀ n, P7075424736108590986.a n = A313540 n

end A313540

/-! ## A313540.P7012541699335744336

`A004525(n)+A314107(n)-n`
-/

namespace A313540.P7012541699335744336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314107 n - (n : ℤ))

end

end A313540.P7012541699335744336

namespace A313540

/-- `A004525(n)+A314107(n)-n` -/
def P7012541699335744336.Spec : Prop :=
  ∀ n, P7012541699335744336.a n = A313540 n

end A313540

/-! ## A313540.P16441105232486423316

`A315425(n)-A004525(n)`
-/

namespace A313540.P16441105232486423316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315425 n - A004525 n

end

end A313540.P16441105232486423316

namespace A313540

/-- `A315425(n)-A004525(n)` -/
def P16441105232486423316.Spec : Prop :=
  ∀ n, P16441105232486423316.a n = A313540 n

end A313540

/-! ## A313540.P16692463384149790658

`A008458(n)+A008574(n)-A313891(n)`
-/

namespace A313540.P16692463384149790658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313891 n)

end

end A313540.P16692463384149790658

namespace A313540

/-- `A008458(n)+A008574(n)-A313891(n)` -/
def P16692463384149790658.Spec : Prop :=
  ∀ n, P16692463384149790658.a n = A313540 n

end A313540

/-! ## A313540.P4430624386153254090

`A004396(A004525(n))+A314142(n)-n`
-/

namespace A313540.P4430624386153254090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A314142 n - (n : ℤ))

end

end A313540.P4430624386153254090

namespace A313540

/-- `A004396(A004525(n))+A314142(n)-n` -/
def P4430624386153254090.Spec : Prop :=
  ∀ n, P4430624386153254090.a n = A313540 n

end A313540

/-! ## A313540.P17428431738589082563

`A004396(n)+A004396(A310373(n))+n`
-/

namespace A313540.P17428431738589082563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A310373 n).toNat + (n : ℤ))

end

end A313540.P17428431738589082563

namespace A313540

/-- `A004396(n)+A004396(A310373(n))+n` -/
def P17428431738589082563.Spec : Prop :=
  ∀ n, P17428431738589082563.a n = A313540 n

end A313540

/-! ## A313540.P13234364502289201408

`A004396(n)+A004396(A313485(n))+n`
-/

namespace A313540.P13234364502289201408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A313485 n).toNat + (n : ℤ))

end

end A313540.P13234364502289201408

namespace A313540

/-- `A004396(n)+A004396(A313485(n))+n` -/
def P13234364502289201408.Spec : Prop :=
  ∀ n, P13234364502289201408.a n = A313540 n

end A313540

/-! ## A313540.P12385507884248628693

`A315700(n)-n`
-/

namespace A313540.P12385507884248628693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - (n : ℤ)

end

end A313540.P12385507884248628693

namespace A313540

/-- `A315700(n)-n` -/
def P12385507884248628693.Spec : Prop :=
  ∀ n, P12385507884248628693.a n = A313540 n

end A313540

/-! ## A313540.P11557771945144856569

`A004525(A315641(n))+2*n`
-/

namespace A313540.P11557771945144856569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315641 n).toNat + (2 * n : ℤ)

end

end A313540.P11557771945144856569

namespace A313540

/-- `A004525(A315641(n))+2*n` -/
def P11557771945144856569.Spec : Prop :=
  ∀ n, P11557771945144856569.a n = A313540 n

end A313540

/-! ## A313540.P3788448966180529497

`A004396(A315649(n))+n`
-/

namespace A313540.P3788448966180529497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315649 n).toNat + (n : ℤ)

end

end A313540.P3788448966180529497

namespace A313540

/-- `A004396(A315649(n))+n` -/
def P3788448966180529497.Spec : Prop :=
  ∀ n, P3788448966180529497.a n = A313540 n

end A313540

/-! ## A313540.P13372362478946418822

`A004396(A313485(n)+n)+n`
-/

namespace A313540.P13372362478946418822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313485 n + (n : ℤ)).toNat + (n : ℤ)

end

end A313540.P13372362478946418822

namespace A313540

/-- `A004396(A313485(n)+n)+n` -/
def P13372362478946418822.Spec : Prop :=
  ∀ n, P13372362478946418822.a n = A313540 n

end A313540

/-! ## A313540.P16177819218858146161

`A004396(A314022(n)+A004525(n))+n`
-/

namespace A313540.P16177819218858146161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314022 n + A004525 n).toNat + (n : ℤ)

end

end A313540.P16177819218858146161

namespace A313540

/-- `A004396(A314022(n)+A004525(n))+n` -/
def P16177819218858146161.Spec : Prop :=
  ∀ n, P16177819218858146161.a n = A313540 n

end A313540

/-! ## A313540.P15847557641061541329

`A004396(n)+A004396(A314028(n)+n)`
-/

namespace A313540.P15847557641061541329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A314028 n + (n : ℤ)).toNat

end

end A313540.P15847557641061541329

namespace A313540

/-- `A004396(n)+A004396(A314028(n)+n)` -/
def P15847557641061541329.Spec : Prop :=
  ∀ n, P15847557641061541329.a n = A313540 n

end A313540

/-! ## A313540.P10366198151096819722

`A004396(A314022(n)+2*n)`
-/

namespace A313540.P10366198151096819722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314022 n + (2 * n : ℤ)).toNat

end

end A313540.P10366198151096819722

namespace A313540

/-- `A004396(A314022(n)+2*n)` -/
def P10366198151096819722.Spec : Prop :=
  ∀ n, P10366198151096819722.a n = A313540 n

end A313540

/-!
# A313541: Coordination sequence Gal.6.476.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313541, there is no canonical definition to state claims against.
-/

/-! ## A313541.P4059527164098616636

`A005117(3*n+1)-A241462((n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A313541.P4059527164098616636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 1) - A241462 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))).toNat

end

end A313541.P4059527164098616636

/-! ## A313541.P11591088187752353574

`A308064(A316980(n))+A301298(n)`
-/

namespace A313541.P11591088187752353574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (A316980 n).toNat + A301298 n

end

end A313541.P11591088187752353574

/-! ## A313541.P7175216509380244666

`A314022(n)-A001221(A003510(n))`
-/

namespace A313541.P7175216509380244666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314022 n - A001221 (A003510 n).toNat

end

end A313541.P7175216509380244666

/-! ## A313541.P15672900901395736643

`A313720(n)-A286339(A212741(n))`
-/

namespace A313541.P15672900901395736643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n - A286339 (A212741 n).toNat

end

end A313541.P15672900901395736643

/-! ## A313541.P6930752794026862057

`A301298(n)+A010059(A058313(n+1))`
-/

namespace A313541.P6930752794026862057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A010059 (A058313 (n + 1)).toNat

end

end A313541.P6930752794026862057

/-!
# A313542: Coordination sequence Gal.6.574.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313542, there is no canonical definition to state claims against.
-/

/-! ## A313542.P100945871866897165

`A313531(n)+A001878(A026554(n+1))`
-/

namespace A313542.P100945871866897165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313531 n + A001878 (A026554 (n + 1)).toNat

end

end A313542.P100945871866897165

/-! ## A313542.P9591309301404675988

`A008706(n)-A051903(A020100(n))`
-/

namespace A313542.P9591309301404675988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A051903 (A020100 n).toNat

end

end A313542.P9591309301404675988

/-! ## A313542.P17583369775180658690

`A319841(A001405(n))+A016813(n)`
-/

namespace A313542.P17583369775180658690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319841 (A001405 n).toNat + A016813 n

end

end A313542.P17583369775180658690

/-! ## A313542.P3676890377185350798

`A313531(n)+A091247(A003319(n))`
-/

namespace A313542.P3676890377185350798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313531 n + A091247 (A003319 n).toNat

end

end A313542.P3676890377185350798

/-! ## A313542.P4050483297711582331

`A301299(n)+A060502(A231200(n))`
-/

namespace A313542.P4050483297711582331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A060502 (A231200 n).toNat

end

end A313542.P4050483297711582331

/-!
# A313543: Coordination sequence Gal.6.196.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313543, the canonical program `A313543.P17775607979476667023` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313543 has offset 0).

The definition of A313543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313543.P5396444858685545890

`A313696(n)-Δ[A011864(n)]`
-/

namespace A313543.P5396444858685545890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313696 n - (f1 (n + 1) - f1 n)

end

end A313543.P5396444858685545890

namespace A313543

/-- `A313696(n)-Δ[A011864(n)]` -/
def P5396444858685545890.Spec : Prop :=
  ∀ n, P5396444858685545890.a n = A313543 n

end A313543

/-! ## A313543.P13942850706303751835

`abs(A008592(n)-A313887(n))`
-/

namespace A313543.P13942850706303751835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313887 n|

end

end A313543.P13942850706303751835

namespace A313543

/-- `abs(A008592(n)-A313887(n))` -/
def P13942850706303751835.Spec : Prop :=
  ∀ n, P13942850706303751835.a n = A313543 n

end A313543

/-! ## A313543.P9408370378790986926

`A008458(n)+A008574(n)-A313887(n)`
-/

namespace A313543.P9408370378790986926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313887 n)

end

end A313543.P9408370378790986926

namespace A313543

/-- `A008458(n)+A008574(n)-A313887(n)` -/
def P9408370378790986926.Spec : Prop :=
  ∀ n, P9408370378790986926.a n = A313543 n

end A313543

/-! ## A313543.P15827999620464750562

`∑{d}[A008592(n)-A313887(n), A000010(#)]`
-/

namespace A313543.P15827999620464750562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313543.P15827999620464750562

namespace A313543

/-- `∑{d}[A008592(n)-A313887(n), A000010(#)]` -/
def P15827999620464750562.Spec : Prop :=
  ∀ n, P15827999620464750562.a n = A313543 n

end A313543

/-! ## A313543.P1050377495591798994

`A004525(A315642(n))+2*n`
-/

namespace A313543.P1050377495591798994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315642 n).toNat + (2 * n : ℤ)

end

end A313543.P1050377495591798994

namespace A313543

/-- `A004525(A315642(n))+2*n` -/
def P1050377495591798994.Spec : Prop :=
  ∀ n, P1050377495591798994.a n = A313543 n

end A313543

/-! ## A313543.P7837929242422044501

`A004396(A314029(n)+2*n)`
-/

namespace A313543.P7837929242422044501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314029 n + (2 * n : ℤ)).toNat

end

end A313543.P7837929242422044501

namespace A313543

/-- `A004396(A314029(n)+2*n)` -/
def P7837929242422044501.Spec : Prop :=
  ∀ n, P7837929242422044501.a n = A313543 n

end A313543

/-! ## A313543.P17775607979476667023

`A004396(A314038(n)+2*n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313543

/-- `A004396(A314038(n)+2*n)` -/
def P17775607979476667023.Spec : Prop :=
  ∀ n, P17775607979476667023.a n = A313543 n

theorem P17775607979476667023.correct : P17775607979476667023.Spec := by
  intro n
  simp only [A313543]

end A313543

/-! ## A313543.P8452105289330828145

`A004396(A315414(n)+2*n)`
-/

namespace A313543.P8452105289330828145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315414 n + (2 * n : ℤ)).toNat

end

end A313543.P8452105289330828145

namespace A313543

/-- `A004396(A315414(n)+2*n)` -/
def P8452105289330828145.Spec : Prop :=
  ∀ n, P8452105289330828145.a n = A313543 n

end A313543

/-! ## A313543.P8123773269642486498

`A004396(A314029(n)+n+n)`
-/

namespace A313543.P8123773269642486498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314029 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313543.P8123773269642486498

namespace A313543

/-- `A004396(A314029(n)+n+n)` -/
def P8123773269642486498.Spec : Prop :=
  ∀ n, P8123773269642486498.a n = A313543 n

end A313543

/-! ## A313543.P2080776805164020191

`A004396(A314038(n)+n+n)`
-/

namespace A313543.P2080776805164020191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314038 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313543.P2080776805164020191

namespace A313543

/-- `A004396(A314038(n)+n+n)` -/
def P2080776805164020191.Spec : Prop :=
  ∀ n, P2080776805164020191.a n = A313543 n

theorem P2080776805164020191.correct : P2080776805164020191.Spec := by
  intro n
  simp only [A313543, Nat.add_sub_cancel, A313543.P2080776805164020191.a, A313543.P17775607979476667023.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A313543

/-! ## A313543.P15770000314666105703

`A004396(A315414(n)+n+n)`
-/

namespace A313543.P15770000314666105703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315414 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313543.P15770000314666105703

namespace A313543

/-- `A004396(A315414(n)+n+n)` -/
def P15770000314666105703.Spec : Prop :=
  ∀ n, P15770000314666105703.a n = A313543 n

end A313543

/-! ## A313543.P13859660369640571517

`A314707(2*n)-4*n`
-/

namespace A313543.P13859660369640571517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314707 (2 * n) - (4 * n : ℤ)

end

end A313543.P13859660369640571517

namespace A313543

/-- `A314707(2*n)-4*n` -/
def P13859660369640571517.Spec : Prop :=
  ∀ n, P13859660369640571517.a n = A313543 n

end A313543

/-! ## A313543.P6111595009042472257

`A004525(A313718(2*n))`
-/

namespace A313543.P6111595009042472257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313718 (2 * n)).toNat

end

end A313543.P6111595009042472257

namespace A313543

/-- `A004525(A313718(2*n))` -/
def P6111595009042472257.Spec : Prop :=
  ∀ n, P6111595009042472257.a n = A313543 n

end A313543

/-! ## A313543.P10430255329512457772

`A004525(A314019(2*n))`
-/

namespace A313543.P10430255329512457772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314019 (2 * n)).toNat

end

end A313543.P10430255329512457772

namespace A313543

/-- `A004525(A314019(2*n))` -/
def P10430255329512457772.Spec : Prop :=
  ∀ n, P10430255329512457772.a n = A313543 n

end A313543

/-! ## A313543.P17090141624980898296

`2*A008574(2*n)-A314221(2*n)`
-/

namespace A313543.P17090141624980898296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314221 (2 * n)

end

end A313543.P17090141624980898296

namespace A313543

/-- `2*A008574(2*n)-A314221(2*n)` -/
def P17090141624980898296.Spec : Prop :=
  ∀ n, P17090141624980898296.a n = A313543 n

end A313543

/-!
# A313544: Coordination sequence Gal.5.272.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313544, there is no canonical definition to state claims against.
-/

/-! ## A313544.P726571363926383340

`A313545(n)-A178798(A152950(n+1))`
-/

namespace A313544.P726571363926383340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313545 n - A178798 (A152950 (n + 1)).toNat

end

end A313544.P726571363926383340

/-! ## A313544.P14603258396783485711

`A313545(n)+A107393(A309863(n))`
-/

namespace A313544.P14603258396783485711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313545 n + A107393 (A309863 n).toNat

end

end A313544.P14603258396783485711

/-! ## A313544.P14452625088018385058

`A313545(n)-A106216(A313542(2*n+3))`
-/

namespace A313544.P14452625088018385058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313545 n - A106216 (A313542 (2 * n + 3)).toNat

end

end A313544.P14452625088018385058

/-! ## A313544.P11025086802244090094

`A311216(n)+A001221(A002057(n))`
-/

namespace A313544.P11025086802244090094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311216 n + A001221 (A002057 n).toNat

end

end A313544.P11025086802244090094

/-!
# A313545: Coordination sequence Gal.6.582.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313545, there is no canonical definition to state claims against.
-/

/-! ## A313545.P2506025121314881167

`(A315605(n)+A008579(n))/2`
-/

namespace A313545.P2506025121314881167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315605 n + A008579 n : ℚ) / 2

end

end A313545.P2506025121314881167

/-! ## A313545.P11249266559355292041

`A014682(A315605(n)+A008579(n))`
-/

namespace A313545.P11249266559355292041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315605 n + A008579 n).toNat

end

end A313545.P11249266559355292041

/-! ## A313545.P13056499448199788469

`A008579(n)+A001281(A315605(n)-A008579(n))`
-/

namespace A313545.P13056499448199788469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001281 (A315605 n - A008579 n).toNat

end

end A313545.P13056499448199788469

/-! ## A313545.P1911224420783121524

`A008579(n)+A004525(A315605(n)-A008579(n))`
-/

namespace A313545.P1911224420783121524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A004525 (A315605 n - A008579 n).toNat

end

end A313545.P1911224420783121524

/-! ## A313545.P217669080047217142

`A008579(n)+A006370(A315605(n)-A008579(n))`
-/

namespace A313545.P217669080047217142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A006370 (A315605 n - A008579 n).toNat

end

end A313545.P217669080047217142

/-! ## A313545.P16365606196158868068

`A025480(A315605(n)-A008579(n))+A008579(n)`
-/

namespace A313545.P16365606196158868068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315605 n - A008579 n).toNat + A008579 n

end

end A313545.P16365606196158868068

/-! ## A313545.P256931929643537256

`A064680(A315605(n)-A008579(n))+A008579(n)`
-/

namespace A313545.P256931929643537256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A315605 n - A008579 n).toNat + A008579 n

end

end A313545.P256931929643537256

/-! ## A313545.P8323355874600281291

`A315605(n)-A004526(A315605(n)-A008579(n))`
-/

namespace A313545.P8323355874600281291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315605 n - A004526 (A315605 n - A008579 n).toNat

end

end A313545.P8323355874600281291

/-! ## A313545.P13759038932007049226

`A001281(A315605(n)+A008579(n))`
-/

namespace A313545.P13759038932007049226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315605 n + A008579 n).toNat

end

end A313545.P13759038932007049226

/-! ## A313545.P6039583236011326712

`A004525(A315605(n)+A008579(n))`
-/

namespace A313545.P6039583236011326712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315605 n + A008579 n).toNat

end

end A313545.P6039583236011326712

/-! ## A313545.P8971919284778451656

`A004526(A315605(n)+A008579(n))`
-/

namespace A313545.P8971919284778451656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315605 n + A008579 n).toNat

end

end A313545.P8971919284778451656

/-! ## A313545.P6401522310190575180

`A006370(A315605(n)+A008579(n))`
-/

namespace A313545.P6401522310190575180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A315605 n + A008579 n).toNat

end

end A313545.P6401522310190575180

/-! ## A313545.P13850782413691467806

`A025480(A315605(n)+A008579(n))`
-/

namespace A313545.P13850782413691467806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315605 n + A008579 n).toNat

end

end A313545.P13850782413691467806

/-! ## A313545.P16323250646953621305

`A064680(A315605(n)+A008579(n))`
-/

namespace A313545.P16323250646953621305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A315605 n + A008579 n).toNat

end

end A313545.P16323250646953621305

/-! ## A313545.P14047877259521266613

`A065033(A315605(n)+A008579(n))`
-/

namespace A313545.P14047877259521266613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315605 n + A008579 n).toNat

end

end A313545.P14047877259521266613

/-! ## A313545.P3644948087316711155

`A123108(A315605(n)+A008579(n))`
-/

namespace A313545.P3644948087316711155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A315605 n + A008579 n).toNat

end

end A313545.P3644948087316711155

/-! ## A313545.P8828264997921865264

`A004524(A008579(n)+A315605(n)+1)`
-/

namespace A313545.P8828264997921865264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A008579 n + (A315605 n + 1)).toNat

end

end A313545.P8828264997921865264

/-! ## A313545.P6567357433710135496

`A065033(A008579(n)-(1-A315605(n)))`
-/

namespace A313545.P6567357433710135496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008579 n - (1 - A315605 n)).toNat

end

end A313545.P6567357433710135496

/-!
# A313546: Coordination sequence Gal.6.156.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313546, the canonical program `A313546.P16396448915990125891` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313546 has offset 0).

The definition of A313546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313546.P8881313987812951638

`A312933(n)+n-∑[A131735(n)]`
-/

namespace A313546.P8881313987812951638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313546.P8881313987812951638

namespace A313546

/-- `A312933(n)+n-∑[A131735(n)]` -/
def P8881313987812951638.Spec : Prop :=
  ∀ n, P8881313987812951638.a n = A313546 n

end A313546

/-! ## A313546.P16396448915990125891

`A312933(n)+A004525(A004396(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313546

/-- `A312933(n)+A004525(A004396(n))` -/
def P16396448915990125891.Spec : Prop :=
  ∀ n, P16396448915990125891.a n = A313546 n

theorem P16396448915990125891.correct : P16396448915990125891.Spec := by
  intro n
  simp only [A313546]

end A313546

/-! ## A313546.P10314563498937538262

`A310400(n)+A134667(n)`
-/

namespace A313546.P10314563498937538262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310400 n + A134667 n

end

end A313546.P10314563498937538262

namespace A313546

/-- `A310400(n)+A134667(n)` -/
def P10314563498937538262.Spec : Prop :=
  ∀ n, P10314563498937538262.a n = A313546 n

end A313546

/-! ## A313546.P14702256760833147417

`A314022(n)-A004525(n-A004396(n))`
-/

namespace A313546.P14702256760833147417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314022 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A313546.P14702256760833147417

namespace A313546

/-- `A314022(n)-A004525(n-A004396(n))` -/
def P14702256760833147417.Spec : Prop :=
  ∀ n, P14702256760833147417.a n = A313546 n

end A313546

/-! ## A313546.P1506019817202867977

`A313698(n)-Δ[A011865(n)]`
-/

namespace A313546.P1506019817202867977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - (f1 (n + 1) - f1 n)

end

end A313546.P1506019817202867977

namespace A313546

/-- `A313698(n)-Δ[A011865(n)]` -/
def P1506019817202867977.Spec : Prop :=
  ∀ n, P1506019817202867977.a n = A313546 n

end A313546

/-! ## A313546.P17251902968880677204

`abs(A008592(n)-A313884(n))`
-/

namespace A313546.P17251902968880677204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313884 n|

end

end A313546.P17251902968880677204

namespace A313546

/-- `abs(A008592(n)-A313884(n))` -/
def P17251902968880677204.Spec : Prop :=
  ∀ n, P17251902968880677204.a n = A313546 n

end A313546

/-! ## A313546.P9407249771595682979

`2*A008706(n)-A313884(n)`
-/

namespace A313546.P9407249771595682979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313884 n

end

end A313546.P9407249771595682979

namespace A313546

/-- `2*A008706(n)-A313884(n)` -/
def P9407249771595682979.Spec : Prop :=
  ∀ n, P9407249771595682979.a n = A313546 n

end A313546

/-! ## A313546.P16728277368575391251

`A008458(n)+A008574(n)-A313884(n)`
-/

namespace A313546.P16728277368575391251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313884 n)

end

end A313546.P16728277368575391251

namespace A313546

/-- `A008458(n)+A008574(n)-A313884(n)` -/
def P16728277368575391251.Spec : Prop :=
  ∀ n, P16728277368575391251.a n = A313546 n

end A313546

/-! ## A313546.P10391078078875710389

`A313884(n)-A005843(A313884(n)-A008706(n))`
-/

namespace A313546.P10391078078875710389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313884 n - A005843 (A313884 n - A008706 n).toNat

end

end A313546.P10391078078875710389

namespace A313546

/-- `A313884(n)-A005843(A313884(n)-A008706(n))` -/
def P10391078078875710389.Spec : Prop :=
  ∀ n, P10391078078875710389.a n = A313546 n

end A313546

/-! ## A313546.P7847396328535502716

`A315415(n)-A004396(A004525(n))`
-/

namespace A313546.P7847396328535502716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315415 n - A004396 (A004525 n).toNat

end

end A313546.P7847396328535502716

namespace A313546

/-- `A315415(n)-A004396(A004525(n))` -/
def P7847396328535502716.Spec : Prop :=
  ∀ n, P7847396328535502716.a n = A313546 n

end A313546

/-! ## A313546.P6714041760200551692

`A134667(n)+A314060(n)-A004525(n)`
-/

namespace A313546.P6714041760200551692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (A314060 n - A004525 n)

end

end A313546.P6714041760200551692

namespace A313546

/-- `A134667(n)+A314060(n)-A004525(n)` -/
def P6714041760200551692.Spec : Prop :=
  ∀ n, P6714041760200551692.a n = A313546 n

end A313546

/-! ## A313546.P3456121886585634010

`A314151(n)-∑[A131735(n)]`
-/

namespace A313546.P3456121886585634010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313546.P3456121886585634010

namespace A313546

/-- `A314151(n)-∑[A131735(n)]` -/
def P3456121886585634010.Spec : Prop :=
  ∀ n, P3456121886585634010.a n = A313546 n

end A313546

/-! ## A313546.P13736855410308241944

`A004525(A004396(n))+A314151(n)-n`
-/

namespace A313546.P13736855410308241944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314151 n - (n : ℤ))

end

end A313546.P13736855410308241944

namespace A313546

/-- `A004525(A004396(n))+A314151(n)-n` -/
def P13736855410308241944.Spec : Prop :=
  ∀ n, P13736855410308241944.a n = A313546 n

end A313546

/-! ## A313546.P10501118346627852003

`A005843(A008706(n))-A313884(n)`
-/

namespace A313546.P10501118346627852003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313884 n

end

end A313546.P10501118346627852003

namespace A313546

/-- `A005843(A008706(n))-A313884(n)` -/
def P10501118346627852003.Spec : Prop :=
  ∀ n, P10501118346627852003.a n = A313546 n

end A313546

/-!
# A313547: Coordination sequence Gal.6.473.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313547, there is no canonical definition to state claims against.
-/

/-! ## A313547.P12092132309633340579

`or(A153246(A095067(n+1)), A313546(n))`
-/

namespace A313547.P12092132309633340579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A153246 (A095067 (n + 1)).toNat) (A313546 n)

end

end A313547.P12092132309633340579

/-! ## A313547.P8532335479846474937

`A313724(n)-A316824(A108951(n+1))`
-/

namespace A313547.P8532335479846474937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313724 n - A316824 (A108951 (n + 1)).toNat

end

end A313547.P8532335479846474937

/-! ## A313547.P10821739061150390241

`A313571(n)-A101605(A117554(n+4))`
-/

namespace A313547.P10821739061150390241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313571 n - A101605 (A117554 (n + 4)).toNat

end

end A313547.P10821739061150390241

/-! ## A313547.P647937286425882974

`or(A001221(A006234(n+3)), A311549(n))`
-/

namespace A313547.P647937286425882974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A006234 (n + 3)).toNat) (A311549 n)

end

end A313547.P647937286425882974

/-!
# A313548: Coordination sequence Gal.5.269.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313548, there is no canonical definition to state claims against.
-/

/-! ## A313548.P10124714191890126524

`A064692(A000110(n))+A005117(3*n+1)`
-/

namespace A313548.P10124714191890126524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A000110 n).toNat + A005117 (3 * n + 1)

end

end A313548.P10124714191890126524

/-! ## A313548.P12343078682961047286

`∑[A141425(A061257(2*(n+2)))]`
-/

namespace A313548.P12343078682961047286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141425 (A061257 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313548.P12343078682961047286

/-! ## A313548.P11284192087799410433

`A313545(n)+A025441(A091588(n))`
-/

namespace A313548.P11284192087799410433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313545 n + A025441 (A091588 n).toNat

end

end A313548.P11284192087799410433

/-! ## A313548.P17581293718060232874

`A314110(n)-A089049(A128387(n))`
-/

namespace A313548.P17581293718060232874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314110 n - A089049 (A128387 n).toNat

end

end A313548.P17581293718060232874

/-! ## A313548.P17072315626562744097

`A301726(n)-A112608(A248328(n))`
-/

namespace A313548.P17072315626562744097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - A112608 (A248328 n).toNat

end

end A313548.P17072315626562744097

/-!
# A313549: Coordination sequence Gal.5.80.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313549, there is no canonical definition to state claims against.
-/

/-! ## A313549.P1851380647103258510

`A330466(A174223(n))+A312589(n)`
-/

namespace A313549.P1851380647103258510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330466 (A174223 n).toNat + A312589 n

end

end A313549.P1851380647103258510

/-! ## A313549.P7432170786732299888

`A313550(A062399(n))-A064834(n)`
-/

namespace A313549.P7432170786732299888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313550 (A062399 n).toNat - A064834 n

end

end A313549.P7432170786732299888

/-! ## A313549.P16576301472182135785

`A313550(n)-A144200(A008458(n))`
-/

namespace A313549.P16576301472182135785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313550 n - A144200 (A008458 n).toNat

end

end A313549.P16576301472182135785

/-! ## A313549.P14246145728591271041

`xor(A064834(A062399(n)), A313550(n))`
-/

namespace A313549.P14246145728591271041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064834 (A062399 n).toNat) (A313550 n)

end

end A313549.P14246145728591271041

/-! ## A313549.P4484491631583466042

`A313550(n)-A184974(A267163(n+4))`
-/

namespace A313549.P4484491631583466042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313550 n - A184974 (A267163 (n + 4)).toNat

end

end A313549.P4484491631583466042

/-!
# A313550: Coordination sequence Gal.6.191.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313550, there is no canonical definition to state claims against.
-/

/-! ## A313550.P11966020190435488338

`or(A185284(p?[2*n+1]), A313549(n))`
-/

namespace A313550.P11966020190435488338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) (A313549 n)

end

end A313550.P11966020190435488338

/-! ## A313550.P9846627287349681329

`A313549(A062399(n))+A064834(n)`
-/

namespace A313550.P9846627287349681329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313549 (A062399 n).toNat + A064834 n

end

end A313550.P9846627287349681329

/-! ## A313550.P2189986864565257214

`A313778(n)-A001221(A178009(n))`
-/

namespace A313550.P2189986864565257214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n - A001221 (A178009 n).toNat

end

end A313550.P2189986864565257214

/-! ## A313550.P6165493887296256480

`or(A056594(A032311(n)), A313549(n))`
-/

namespace A313550.P6165493887296256480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056594 (A032311 n).toNat) (A313549 n)

end

end A313550.P6165493887296256480

/-!
# A313551: Coordination sequence Gal.6.424.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313551, there is no canonical definition to state claims against.
-/

/-! ## A313551.P10863464668881054430

`A016813(n)+A001222(A056273(n))`
-/

namespace A313551.P10863464668881054430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001222 (A056273 n).toNat

end

end A313551.P10863464668881054430

/-! ## A313551.P738760252297976578

`A314669(n)+A001222(A056273(n))`
-/

namespace A313551.P738760252297976578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n + A001222 (A056273 n).toNat

end

end A313551.P738760252297976578

/-! ## A313551.P9771060916915180580

`A314670(n)+A001222(A056273(n))`
-/

namespace A313551.P9771060916915180580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n + A001222 (A056273 n).toNat

end

end A313551.P9771060916915180580

/-! ## A313551.P12302331995501553354

`A314668(n)+A008481(A056273(n))`
-/

namespace A313551.P12302331995501553354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n + A008481 (A056273 n).toNat

end

end A313551.P12302331995501553354

/-! ## A313551.P18179673310757453246

`A311488(n)+A001222(A178578(n))`
-/

namespace A313551.P18179673310757453246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311488 n + A001222 (A178578 n).toNat

end

end A313551.P18179673310757453246

/-!
# A313552: Coordination sequence Gal.6.244.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313552, there is no canonical definition to state claims against.
-/

/-! ## A313552.P17516213366235084930

`A313688(n)-A083025(A000108(n))`
-/

namespace A313552.P17516213366235084930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n - A083025 (A000108 n).toNat

end

end A313552.P17516213366235084930

/-! ## A313552.P13712358539410476738

`A313557(n)-A001842(A275695(n))`
-/

namespace A313552.P13712358539410476738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313557 n - A001842 (A275695 n).toNat

end

end A313552.P13712358539410476738

/-! ## A313552.P16279211939062836807

`A301678(n)-A346700(A000108(n))`
-/

namespace A313552.P16279211939062836807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A346700 (A000108 n).toNat

end

end A313552.P16279211939062836807

/-! ## A313552.P15431696448336475467

`A016813(n)+A001221(A233005(n+1))`
-/

namespace A313552.P15431696448336475467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001221 (A233005 (n + 1)).toNat

end

end A313552.P15431696448336475467

/-! ## A313552.P12973033485640606129

`A301678(n)-A173419(A078918(n+1))`
-/

namespace A313552.P12973033485640606129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A173419 (A078918 (n + 1)).toNat

end

end A313552.P12973033485640606129

/-!
# A313553: Coordination sequence Gal.6.148.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313553, there is no canonical definition to state claims against.
-/

/-! ## A313553.P14431880461049284330

`A332298(A062399(n))+A008574(n)`
-/

namespace A313553.P14431880461049284330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332298 (A062399 n).toNat + A008574 n

end

end A313553.P14431880461049284330

/-! ## A313553.P8683115309427205484

`A016813(n)+A001221(A006395(n+1))`
-/

namespace A313553.P8683115309427205484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001221 (A006395 (n + 1)).toNat

end

end A313553.P8683115309427205484

/-! ## A313553.P1588705257247985735

`A313746(n)-A073458(A220826(n+1))`
-/

namespace A313553.P1588705257247985735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n - A073458 (A220826 (n + 1)).toNat

end

end A313553.P1588705257247985735

/-! ## A313553.P12437766482859552358

`A008706(n)+A332298(A062399(n))-n`
-/

namespace A313553.P12437766482859552358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A332298 (A062399 n).toNat - (n : ℤ))

end

end A313553.P12437766482859552358

/-! ## A313553.P6628603969680417751

`A005117(3*n+2)-A043562(A000108(n))`
-/

namespace A313553.P6628603969680417751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A043562 (A000108 n).toNat

end

end A313553.P6628603969680417751

/-!
# A313554: Coordination sequence Gal.6.141.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313554, there is no canonical definition to state claims against.
-/

/-! ## A313554.P7247814445216434286

`A313498(n)+A066829(A178520(n))`
-/

namespace A313554.P7247814445216434286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313498 n + A066829 (A178520 n).toNat

end

end A313554.P7247814445216434286

/-! ## A313554.P14574209026473390098

`A313557(n)+A088705(A022564(n+1))`
-/

namespace A313554.P14574209026473390098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313557 n + A088705 (A022564 (n + 1)).toNat

end

end A313554.P14574209026473390098

/-! ## A313554.P16400052244229216968

`∑[A110007(A166631(n+1))]`
-/

namespace A313554.P16400052244229216968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110007 (A166631 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313554.P16400052244229216968

/-! ## A313554.P9376985438072755916

`∑[A286804(A137249(n+1))+1]+3*n`
-/

namespace A313554.P9376985438072755916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286804 (A137249 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 * n : ℤ)

end

end A313554.P9376985438072755916

/-! ## A313554.P13450788226674093712

`∑[gcd(A299175(n+1), A314502(n))+3]-3`
-/

namespace A313554.P13450788226674093712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A299175 (n + 1)) (A314502 n) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A313554.P13450788226674093712

/-!
# A313555: Coordination sequence Gal.6.239.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313555, there is no canonical definition to state claims against.
-/

/-! ## A313555.P10740360304837411775

`A313556(n)+A178798(A000217(n))`
-/

namespace A313555.P10740360304837411775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A178798 (A000217 n).toNat

end

end A313555.P10740360304837411775

/-! ## A313555.P17015708671855626795

`A336556(A366025(n))+A276855(n)`
-/

namespace A313555.P17015708671855626795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336556 (A366025 n).toNat + A276855 n

end

end A313555.P17015708671855626795

/-! ## A313555.P4217210886352483111

`A055642(A027719(n+2))+4*n`
-/

namespace A313555.P4217210886352483111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A027719 (n + 2)).toNat + (4 * n : ℤ)

end

end A313555.P4217210886352483111

/-! ## A313555.P4282223321571493992

`A016813(n)+A001221(A118204(n+1))`
-/

namespace A313555.P4282223321571493992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001221 (A118204 (n + 1)).toNat

end

end A313555.P4282223321571493992

/-! ## A313555.P5158728542871141654

`A047273(3*n+1)+A000035(A020139(3*n+2))`
-/

namespace A313555.P5158728542871141654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (3 * n + 1) + A000035 (A020139 (3 * n + 2)).toNat

end

end A313555.P5158728542871141654

/-!
# A313556: Coordination sequence Gal.6.132.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313556, the canonical program `A313556.P12127503874440300930` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313556 has offset 0).

The definition of A313556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313556.P18394076106139624815

`abs(9*n-A311861(n))`
-/

namespace A313556.P18394076106139624815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A311861 n|

end

end A313556.P18394076106139624815

namespace A313556

/-- `abs(9*n-A311861(n))` -/
def P18394076106139624815.Spec : Prop :=
  ∀ n, P18394076106139624815.a n = A313556 n

end A313556

/-! ## A313556.P12127503874440300930

`A312890(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313556

/-- `A312890(n)+A004525(n)` -/
def P12127503874440300930.Spec : Prop :=
  ∀ n, P12127503874440300930.a n = A313556 n

theorem P12127503874440300930.correct : P12127503874440300930.Spec := by
  intro n
  simp only [A313556]

end A313556

/-! ## A313556.P6643804599725466314

`A314706(n)+A002264(n+1)`
-/

namespace A313556.P6643804599725466314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314706 n + A002264 (n + 1)

end

end A313556.P6643804599725466314

namespace A313556

/-- `A314706(n)+A002264(n+1)` -/
def P6643804599725466314.Spec : Prop :=
  ∀ n, P6643804599725466314.a n = A313556 n

end A313556

/-! ## A313556.P16746588745768118850

`A314706(n)+n-A004396(n)`
-/

namespace A313556.P16746588745768118850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314706 n + ((n : ℤ) - A004396 n)

end

end A313556.P16746588745768118850

namespace A313556

/-- `A314706(n)+n-A004396(n)` -/
def P16746588745768118850.Spec : Prop :=
  ∀ n, P16746588745768118850.a n = A313556 n

end A313556

/-! ## A313556.P4219618228684716130

`abs(A008592(n)-(A311861(n)+n))`
-/

namespace A313556.P4219618228684716130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311861 n + (n : ℤ))|

end

end A313556.P4219618228684716130

namespace A313556

/-- `abs(A008592(n)-(A311861(n)+n))` -/
def P4219618228684716130.Spec : Prop :=
  ∀ n, P4219618228684716130.a n = A313556 n

end A313556

/-! ## A313556.P2896107747050457327

`A042965(n+1)+A314706(n)-n`
-/

namespace A313556.P2896107747050457327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A314706 n - (n : ℤ))

end

end A313556.P2896107747050457327

namespace A313556

/-- `A042965(n+1)+A314706(n)-n` -/
def P2896107747050457327.Spec : Prop :=
  ∀ n, P2896107747050457327.a n = A313556 n

end A313556

/-! ## A313556.P13321606406772933318

`A047229(n+1)+A312890(n)-n`
-/

namespace A313556.P13321606406772933318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + (A312890 n - (n : ℤ))

end

end A313556.P13321606406772933318

namespace A313556

/-- `A047229(n+1)+A312890(n)-n` -/
def P13321606406772933318.Spec : Prop :=
  ∀ n, P13321606406772933318.a n = A313556 n

end A313556

/-! ## A313556.P9653832323519180728

`A312926(n)+A004396(A004525(n))`
-/

namespace A313556.P9653832323519180728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + A004396 (A004525 n).toNat

end

end A313556.P9653832323519180728

namespace A313556

/-- `A312926(n)+A004396(A004525(n))` -/
def P9653832323519180728.Spec : Prop :=
  ∀ n, P9653832323519180728.a n = A313556 n

end A313556

/-! ## A313556.P2056168944250645085

`A008458(n)+A008486(n)-A311861(n)`
-/

namespace A313556.P2056168944250645085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311861 n)

end

end A313556.P2056168944250645085

namespace A313556

/-- `A008458(n)+A008486(n)-A311861(n)` -/
def P2056168944250645085.Spec : Prop :=
  ∀ n, P2056168944250645085.a n = A313556 n

end A313556

/-! ## A313556.P4174716574609897263

`A008486(n)+A314706(n)-A008576(n)`
-/

namespace A313556.P4174716574609897263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314706 n - A008576 n)

end

end A313556.P4174716574609897263

namespace A313556

/-- `A008486(n)+A314706(n)-A008576(n)` -/
def P4174716574609897263.Spec : Prop :=
  ∀ n, P4174716574609897263.a n = A313556 n

end A313556

/-! ## A313556.P5652160580209584636

`A314031(n)-A002264(n+1)`
-/

namespace A313556.P5652160580209584636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314031 n - A002264 (n + 1)

end

end A313556.P5652160580209584636

namespace A313556

/-- `A314031(n)-A002264(n+1)` -/
def P5652160580209584636.Spec : Prop :=
  ∀ n, P5652160580209584636.a n = A313556 n

end A313556

/-! ## A313556.P8477651640666690585

`A004396(n)+A314031(n)-n`
-/

namespace A313556.P8477651640666690585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314031 n - (n : ℤ))

end

end A313556.P8477651640666690585

namespace A313556

/-- `A004396(n)+A314031(n)-n` -/
def P8477651640666690585.Spec : Prop :=
  ∀ n, P8477651640666690585.a n = A313556 n

end A313556

/-! ## A313556.P371457658718328837

`A008576(n)+A314031(n)-A008486(n)`
-/

namespace A313556.P371457658718328837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314031 n - A008486 n)

end

end A313556.P371457658718328837

namespace A313556

/-- `A008576(n)+A314031(n)-A008486(n)` -/
def P371457658718328837.Spec : Prop :=
  ∀ n, P371457658718328837.a n = A313556 n

end A313556

/-! ## A313556.P1511973907891937972

`A004525(n)+A314110(n)-n`
-/

namespace A313556.P1511973907891937972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314110 n - (n : ℤ))

end

end A313556.P1511973907891937972

namespace A313556

/-- `A004525(n)+A314110(n)-n` -/
def P1511973907891937972.Spec : Prop :=
  ∀ n, P1511973907891937972.a n = A313556 n

end A313556

/-! ## A313556.P5055166285041739044

`A315488(n)-A004396(n)`
-/

namespace A313556.P5055166285041739044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315488 n - A004396 n

end

end A313556.P5055166285041739044

namespace A313556

/-- `A315488(n)-A004396(n)` -/
def P5055166285041739044.Spec : Prop :=
  ∀ n, P5055166285041739044.a n = A313556 n

end A313556

/-! ## A313556.P18101347029465293170

`A008458(n)+A008574(n)-A313879(n)`
-/

namespace A313556.P18101347029465293170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313879 n)

end

end A313556.P18101347029465293170

namespace A313556

/-- `A008458(n)+A008574(n)-A313879(n)` -/
def P18101347029465293170.Spec : Prop :=
  ∀ n, P18101347029465293170.a n = A313556 n

end A313556

/-! ## A313556.P14139638000839803011

`A315703(n)-n`
-/

namespace A313556.P14139638000839803011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 n - (n : ℤ)

end

end A313556.P14139638000839803011

namespace A313556

/-- `A315703(n)-n` -/
def P14139638000839803011.Spec : Prop :=
  ∀ n, P14139638000839803011.a n = A313556 n

end A313556

/-! ## A313556.P3334891824908012706

`A004396(2*n)+A004396(A315271(n))`
-/

namespace A313556.P3334891824908012706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315271 n).toNat

end

end A313556.P3334891824908012706

namespace A313556

/-- `A004396(2*n)+A004396(A315271(n))` -/
def P3334891824908012706.Spec : Prop :=
  ∀ n, P3334891824908012706.a n = A313556 n

end A313556

/-! ## A313556.P17182924089207442083

`A004396(A315697(n))+n`
-/

namespace A313556.P17182924089207442083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315697 n).toNat + (n : ℤ)

end

end A313556.P17182924089207442083

namespace A313556

/-- `A004396(A315697(n))+n` -/
def P17182924089207442083.Spec : Prop :=
  ∀ n, P17182924089207442083.a n = A313556 n

end A313556

/-!
# A313557: Coordination sequence Gal.5.75.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313557, there is no canonical definition to state claims against.
-/

/-! ## A313557.P6265459198659287874

`A313556(n)+A109527(Δ[A320450(n)])`
-/

namespace A313557.P6265459198659287874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A109527 (f1 (n + 1) - f1 n).toNat

end

end A313557.P6265459198659287874

/-! ## A313557.P14892076399043385812

`A313556(n)+A126010(n²+7)`
-/

namespace A313557.P14892076399043385812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A126010 (n ^ 2 + 7)

end

end A313557.P14892076399043385812

/-! ## A313557.P7632236453669828474

`A313556(n)+A023969(A038296(n))`
-/

namespace A313557.P7632236453669828474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A023969 (A038296 n).toNat

end

end A313557.P7632236453669828474

/-! ## A313557.P10102934982445571324

`A266605(A072346(n))+A228177(n)`
-/

namespace A313557.P10102934982445571324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266605 (A072346 n).toNat + A228177 n

end

end A313557.P10102934982445571324

/-! ## A313557.P1629854883635166391

`A352822(A000085(n))+A301291(n)`
-/

namespace A313557.P1629854883635166391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (A000085 n).toNat + A301291 n

end

end A313557.P1629854883635166391

/-!
# A313558: Coordination sequence Gal.6.175.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313558, there is no canonical definition to state claims against.
-/

/-! ## A313558.P14495600959103064228

`A313557(n)+A275947(A093364(n+1))`
-/

namespace A313558.P14495600959103064228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313557 n + A275947 (A093364 (n + 1)).toNat

end

end A313558.P14495600959103064228

/-! ## A313558.P5366918101644061296

`A313556(n)+A069010(A324094(n+1))`
-/

namespace A313558.P5366918101644061296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A069010 (A324094 (n + 1)).toNat

end

end A313558.P5366918101644061296

/-! ## A313558.P11294190899166078781

`A313557(n)+A133501(A324423(n+2))`
-/

namespace A313558.P11294190899166078781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313557 n + A133501 (A324423 (n + 2)).toNat

end

end A313558.P11294190899166078781

/-! ## A313558.P17796598108515827540

`5*(n+1)-A076620(A237067(n+1))`
-/

namespace A313558.P17796598108515827540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A076620 (A237067 (n + 1)).toNat

end

end A313558.P17796598108515827540

/-! ## A313558.P9025724999344717321

`∑[A299090(A056394(n+1))+1]+2*n`
-/

namespace A313558.P9025724999344717321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (A056394 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A313558.P9025724999344717321

/-!
# A313559: Coordination sequence Gal.6.433.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313559, there is no canonical definition to state claims against.
-/

/-! ## A313559.P3343995995378791849

`xor(A066247(A147202(n+1)), A313562(n))`
-/

namespace A313559.P3343995995378791849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A066247 (A147202 (n + 1)).toNat) (A313562 n)

end

end A313559.P3343995995378791849

/-! ## A313559.P12520096711381818924

`A313562(n)+A178798(A155495(n))`
-/

namespace A313559.P12520096711381818924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313562 n + A178798 (A155495 n).toNat

end

end A313559.P12520096711381818924

/-! ## A313559.P15917120806542869483

`A313563(n)-A001221(A248767(n+1))`
-/

namespace A313559.P15917120806542869483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313563 n - A001221 (A248767 (n + 1)).toNat

end

end A313559.P15917120806542869483

/-! ## A313559.P8224316048744504340

`xor(A038189(A056343(n+1)), A313702(n))`
-/

namespace A313559.P8224316048744504340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038189 (A056343 (n + 1)).toNat) (A313702 n)

end

end A313559.P8224316048744504340

/-! ## A313559.P14494225453930504233

`A178798(A155495(n))-(A178798(n)-A313562(n))`
-/

namespace A313559.P14494225453930504233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A155495 n).toNat - (A178798 n - A313562 n)

end

end A313559.P14494225453930504233

/-!
# A313560: Coordination sequence Gal.6.201.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313560, the canonical program `A313560.P11035165185372614413` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313560 has offset 0).

The definition of A313560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313560.P11035165185372614413

`A312927(2*n)-4*n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313560

/-- `A312927(2*n)-4*n` -/
def P11035165185372614413.Spec : Prop :=
  ∀ n, P11035165185372614413.a n = A313560 n

theorem P11035165185372614413.correct : P11035165185372614413.Spec := by
  intro n
  simp only [A313560]

end A313560

/-! ## A313560.P7158196055107858281

`A311593(A008574(n))/2-A008574(n)`
-/

namespace A313560.P7158196055107858281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311593 (A008574 n).toNat : ℚ) / 2 - (A008574 n : ℚ)

end

end A313560.P7158196055107858281

namespace A313560

/-- `A311593(A008574(n))/2-A008574(n)` -/
def P7158196055107858281.Spec : Prop :=
  ∀ n, P7158196055107858281.a n = (A313560 n : ℚ)

end A313560

/-! ## A313560.P3659705802162882847

`A313704(n)-Δ[A011864(n)]`
-/

namespace A313560.P3659705802162882847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313704 n - (f1 (n + 1) - f1 n)

end

end A313560.P3659705802162882847

namespace A313560

/-- `A313704(n)-Δ[A011864(n)]` -/
def P3659705802162882847.Spec : Prop :=
  ∀ n, P3659705802162882847.a n = A313560 n

end A313560

/-! ## A313560.P10860567067340839475

`abs(A008592(n)-A313876(n))`
-/

namespace A313560.P10860567067340839475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313876 n|

end

end A313560.P10860567067340839475

namespace A313560

/-- `abs(A008592(n)-A313876(n))` -/
def P10860567067340839475.Spec : Prop :=
  ∀ n, P10860567067340839475.a n = A313560 n

end A313560

/-! ## A313560.P5697547188896031722

`A008458(n)+A008574(n)-A313876(n)`
-/

namespace A313560.P5697547188896031722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313876 n)

end

end A313560.P5697547188896031722

namespace A313560

/-- `A008458(n)+A008574(n)-A313876(n)` -/
def P5697547188896031722.Spec : Prop :=
  ∀ n, P5697547188896031722.a n = A313560 n

end A313560

/-! ## A313560.P2337413452194459122

`(A315650(n)+A008574(n))/2`
-/

namespace A313560.P2337413452194459122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315650 n + A008574 n : ℚ) / 2

end

end A313560.P2337413452194459122

namespace A313560

/-- `(A315650(n)+A008574(n))/2` -/
def P2337413452194459122.Spec : Prop :=
  ∀ n, P2337413452194459122.a n = (A313560 n : ℚ)

end A313560

/-! ## A313560.P10174377957564568165

`A008574(n)+A004525(A315650(n)-A008574(n))`
-/

namespace A313560.P10174377957564568165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A315650 n - A008574 n).toNat

end

end A313560.P10174377957564568165

namespace A313560

/-- `A008574(n)+A004525(A315650(n)-A008574(n))` -/
def P10174377957564568165.Spec : Prop :=
  ∀ n, P10174377957564568165.a n = A313560 n

end A313560

/-! ## A313560.P17035055859680816140

`A008589(n)+A001057(A312507(n))`
-/

namespace A313560.P17035055859680816140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n + A001057 (A312507 n).toNat

end

end A313560.P17035055859680816140

namespace A313560

/-- `A008589(n)+A001057(A312507(n))` -/
def P17035055859680816140.Spec : Prop :=
  ∀ n, P17035055859680816140.a n = A313560 n

end A313560

/-! ## A313560.P9539602430768657397

`A008458(n)+n-A004526(A312507(n))`
-/

namespace A313560.P9539602430768657397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A312507 n).toNat)

end

end A313560.P9539602430768657397

namespace A313560

/-- `A008458(n)+n-A004526(A312507(n))` -/
def P9539602430768657397.Spec : Prop :=
  ∀ n, P9539602430768657397.a n = A313560 n

end A313560

/-! ## A313560.P15220013732156135391

`A005843(A008458(n)-n)-A313876(n)`
-/

namespace A313560.P15220013732156135391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313876 n

end

end A313560.P15220013732156135391

namespace A313560

/-- `A005843(A008458(n)-n)-A313876(n)` -/
def P15220013732156135391.Spec : Prop :=
  ∀ n, P15220013732156135391.a n = A313560 n

end A313560

/-! ## A313560.P7244104415754426715

`A230215(A315650(n))/3`
-/

namespace A313560.P7244104415754426715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230215 (A315650 n).toNat : ℚ) / 3

end

end A313560.P7244104415754426715

namespace A313560

/-- `A230215(A315650(n))/3` -/
def P7244104415754426715.Spec : Prop :=
  ∀ n, P7244104415754426715.a n = (A313560 n : ℚ)

end A313560

/-! ## A313560.P8379250609629873179

`A004526(A315650(n))+A004277(n)`
-/

namespace A313560.P8379250609629873179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315650 n).toNat + A004277 n

end

end A313560.P8379250609629873179

namespace A313560

/-- `A004526(A315650(n))+A004277(n)` -/
def P8379250609629873179.Spec : Prop :=
  ∀ n, P8379250609629873179.a n = A313560 n

end A313560

/-! ## A313560.P15878960129100995183

`A004396(A314032(n)+2*n)`
-/

namespace A313560.P15878960129100995183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314032 n + (2 * n : ℤ)).toNat

end

end A313560.P15878960129100995183

namespace A313560

/-- `A004396(A314032(n)+2*n)` -/
def P15878960129100995183.Spec : Prop :=
  ∀ n, P15878960129100995183.a n = A313560 n

end A313560

/-! ## A313560.P13778676873463622801

`A004396(A314032(n)+n+n)`
-/

namespace A313560.P13778676873463622801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314032 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313560.P13778676873463622801

namespace A313560

/-- `A004396(A314032(n)+n+n)` -/
def P13778676873463622801.Spec : Prop :=
  ∀ n, P13778676873463622801.a n = A313560 n

end A313560

/-! ## A313560.P3074499919600151250

`A310408(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A313560.P3074499919600151250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310408 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A313560.P3074499919600151250

namespace A313560

/-- `A310408(2*n)/(4*n+2-A004277(2*n))` -/
def P3074499919600151250.Spec : Prop :=
  ∀ n, P3074499919600151250.a n = (A313560 n : ℚ)

end A313560

/-! ## A313560.P4584035216771520670

`2*A008574(2*n)-A315526(2*n)`
-/

namespace A313560.P4584035216771520670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315526 (2 * n)

end

end A313560.P4584035216771520670

namespace A313560

/-- `2*A008574(2*n)-A315526(2*n)` -/
def P4584035216771520670.Spec : Prop :=
  ∀ n, P4584035216771520670.a n = A313560 n

end A313560

/-! ## A313560.P6282934753840518545

`A004525(A310408(2*n))`
-/

namespace A313560.P6282934753840518545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310408 (2 * n)).toNat

end

end A313560.P6282934753840518545

namespace A313560

/-- `A004525(A310408(2*n))` -/
def P6282934753840518545.Spec : Prop :=
  ∀ n, P6282934753840518545.a n = A313560 n

end A313560

/-! ## A313560.P2844278660244903278

`A004525(A313229(2*n))`
-/

namespace A313560.P2844278660244903278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313229 (2 * n)).toNat

end

end A313560.P2844278660244903278

namespace A313560

/-- `A004525(A313229(2*n))` -/
def P2844278660244903278.Spec : Prop :=
  ∀ n, P2844278660244903278.a n = A313560 n

end A313560

/-! ## A313560.P6400766207310254193

`A004526(A310408(2*n)+1)`
-/

namespace A313560.P6400766207310254193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310408 (2 * n) + 1).toNat

end

end A313560.P6400766207310254193

namespace A313560

/-- `A004526(A310408(2*n)+1)` -/
def P6400766207310254193.Spec : Prop :=
  ∀ n, P6400766207310254193.a n = A313560 n

end A313560

/-! ## A313560.P4869934518399862656

`A004525(A315650(n)+A008574(n))`
-/

namespace A313560.P4869934518399862656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315650 n + A008574 n).toNat

end

end A313560.P4869934518399862656

namespace A313560

/-- `A004525(A315650(n)+A008574(n))` -/
def P4869934518399862656.Spec : Prop :=
  ∀ n, P4869934518399862656.a n = A313560 n

end A313560

/-!
# A313561: Coordination sequence Gal.4.53.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313561, the canonical program `A313561.P3656167571663365839` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313561 has offset 0).

The definition of A313561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313561.P3656167571663365839

`A312894(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313561

/-- `A312894(n)+A004525(n)` -/
def P3656167571663365839.Spec : Prop :=
  ∀ n, P3656167571663365839.a n = A313561 n

theorem P3656167571663365839.correct : P3656167571663365839.Spec := by
  intro n
  simp only [A313561]

end A313561

/-! ## A313561.P13132948970046409096

`A008706(n)-Δ[A011861(n)]`
-/

namespace A313561.P13132948970046409096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (f1 (n + 1) - f1 n)

end

end A313561.P13132948970046409096

namespace A313561

/-- `A008706(n)-Δ[A011861(n)]` -/
def P13132948970046409096.Spec : Prop :=
  ∀ n, P13132948970046409096.a n = A313561 n

end A313561

/-! ## A313561.P15614473473073513334

`A008458(n)-(Δ[A011861(n)]+n)`
-/

namespace A313561.P15614473473073513334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (f1 (n + 1) - f1 n + (n : ℤ))

end

end A313561.P15614473473073513334

namespace A313561

/-- `A008458(n)-(Δ[A011861(n)]+n)` -/
def P15614473473073513334.Spec : Prop :=
  ∀ n, P15614473473073513334.a n = A313561 n

end A313561

/-! ## A313561.P11014233013544943801

`A008574(n)+n-Δ[A011861(n)]`
-/

namespace A313561.P11014233013544943801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313561.P11014233013544943801

namespace A313561

/-- `A008574(n)+n-Δ[A011861(n)]` -/
def P11014233013544943801.Spec : Prop :=
  ∀ n, P11014233013544943801.a n = A313561 n

end A313561

/-! ## A313561.P4468291378742555643

`A047229(n+1)+A312894(n)-n`
-/

namespace A313561.P4468291378742555643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + (A312894 n - (n : ℤ))

end

end A313561.P4468291378742555643

namespace A313561

/-- `A047229(n+1)+A312894(n)-n` -/
def P4468291378742555643.Spec : Prop :=
  ∀ n, P4468291378742555643.a n = A313561 n

end A313561

/-! ## A313561.P6632094945964375961

`A312943(n)+A004525(A004525(n))`
-/

namespace A313561.P6632094945964375961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A004525 (A004525 n).toNat

end

end A313561.P6632094945964375961

namespace A313561

/-- `A312943(n)+A004525(A004525(n))` -/
def P6632094945964375961.Spec : Prop :=
  ∀ n, P6632094945964375961.a n = A313561 n

end A313561

/-! ## A313561.P11529855513189595482

`A301291(n)+A004525(n-A004525(n))`
-/

namespace A313561.P11529855513189595482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A313561.P11529855513189595482

namespace A313561

/-- `A301291(n)+A004525(n-A004525(n))` -/
def P11529855513189595482.Spec : Prop :=
  ∀ n, P11529855513189595482.a n = A313561 n

end A313561

/-! ## A313561.P8518557032941856279

`A008458(n)+A008486(n)-A311843(n)`
-/

namespace A313561.P8518557032941856279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311843 n)

end

end A313561.P8518557032941856279

namespace A313561

/-- `A008458(n)+A008486(n)-A311843(n)` -/
def P8518557032941856279.Spec : Prop :=
  ∀ n, P8518557032941856279.a n = A313561 n

end A313561

/-! ## A313561.P17921004164748854882

`A315020(n)+A075553(n-A075553(n))`
-/

namespace A313561.P17921004164748854882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315020 n + A075553 ((n : ℤ) - A075553 n).toNat

end

end A313561.P17921004164748854882

namespace A313561

/-- `A315020(n)+A075553(n-A075553(n))` -/
def P17921004164748854882.Spec : Prop :=
  ∀ n, P17921004164748854882.a n = A313561 n

end A313561

/-! ## A313561.P6721736803575306732

`A004525(n)+A313480(n)-A004525(A004525(n))`
-/

namespace A313561.P6721736803575306732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313480 n - A004525 (A004525 n).toNat)

end

end A313561.P6721736803575306732

namespace A313561

/-- `A004525(n)+A313480(n)-A004525(A004525(n))` -/
def P6721736803575306732.Spec : Prop :=
  ∀ n, P6721736803575306732.a n = A313561 n

end A313561

/-! ## A313561.P17696945994089922112

`A313115(n)+A046978(A046978(n)+n)`
-/

namespace A313561.P17696945994089922112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A313561.P17696945994089922112

namespace A313561

/-- `A313115(n)+A046978(A046978(n)+n)` -/
def P17696945994089922112.Spec : Prop :=
  ∀ n, P17696945994089922112.a n = A313561 n

end A313561

/-! ## A313561.P87815154223332242

`A315411(n)-A004525(A004525(n))`
-/

namespace A313561.P87815154223332242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n - A004525 (A004525 n).toNat

end

end A313561.P87815154223332242

namespace A313561

/-- `A315411(n)-A004525(A004525(n))` -/
def P87815154223332242.Spec : Prop :=
  ∀ n, P87815154223332242.a n = A313561 n

end A313561

/-! ## A313561.P7891528568078587549

`A314026(n)-A004525(n-A004525(n))`
-/

namespace A313561.P7891528568078587549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A313561.P7891528568078587549

namespace A313561

/-- `A314026(n)-A004525(n-A004525(n))` -/
def P7891528568078587549.Spec : Prop :=
  ∀ n, P7891528568078587549.a n = A313561 n

end A313561

/-! ## A313561.P3727667662550151143

`A004525(A004525(n))+A313635(n)-A004525(n)`
-/

namespace A313561.P3727667662550151143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A313635 n - A004525 n)

end

end A313561.P3727667662550151143

namespace A313561

/-- `A004525(A004525(n))+A313635(n)-A004525(n)` -/
def P3727667662550151143.Spec : Prop :=
  ∀ n, P3727667662550151143.a n = A313561 n

end A313561

/-! ## A313561.P11586914776115301042

`abs(A008593(n)-(A313875(n)+n))`
-/

namespace A313561.P11586914776115301042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A313875 n + (n : ℤ))|

end

end A313561.P11586914776115301042

namespace A313561

/-- `abs(A008593(n)-(A313875(n)+n))` -/
def P11586914776115301042.Spec : Prop :=
  ∀ n, P11586914776115301042.a n = A313561 n

end A313561

/-! ## A313561.P18399526512074347130

`A008458(n)+A008574(n)-A313875(n)`
-/

namespace A313561.P18399526512074347130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313875 n)

end

end A313561.P18399526512074347130

namespace A313561

/-- `A008458(n)+A008574(n)-A313875(n)` -/
def P18399526512074347130.Spec : Prop :=
  ∀ n, P18399526512074347130.a n = A313561 n

end A313561

/-! ## A313561.P15158197724917690955

`A315399(n)-A046978(n)`
-/

namespace A313561.P15158197724917690955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315399 n - A046978 n

end

end A313561.P15158197724917690955

namespace A313561

/-- `A315399(n)-A046978(n)` -/
def P15158197724917690955.Spec : Prop :=
  ∀ n, P15158197724917690955.a n = A313561 n

end A313561

/-! ## A313561.P14496107061909968025

`A004525(A004525(n))+A314161(n)-n`
-/

namespace A313561.P14496107061909968025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A314161 n - (n : ℤ))

end

end A313561.P14496107061909968025

namespace A313561

/-- `A004525(A004525(n))+A314161(n)-n` -/
def P14496107061909968025.Spec : Prop :=
  ∀ n, P14496107061909968025.a n = A313561 n

end A313561

/-! ## A313561.P13789951896846071810

`A315704(n)-n`
-/

namespace A313561.P13789951896846071810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 n - (n : ℤ)

end

end A313561.P13789951896846071810

namespace A313561

/-- `A315704(n)-n` -/
def P13789951896846071810.Spec : Prop :=
  ∀ n, P13789951896846071810.a n = A313561 n

end A313561

/-! ## A313561.P11790867291396891018

`(A315651(n)+A008574(n))/2`
-/

namespace A313561.P11790867291396891018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315651 n + A008574 n : ℚ) / 2

end

end A313561.P11790867291396891018

namespace A313561

/-- `(A315651(n)+A008574(n))/2` -/
def P11790867291396891018.Spec : Prop :=
  ∀ n, P11790867291396891018.a n = (A313561 n : ℚ)

end A313561

/-!
# A313562: Coordination sequence Gal.5.120.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313562, there is no canonical definition to state claims against.
-/

/-! ## A313562.P15249344103529373362

`A313560(n)+A109527(A109528(n))`
-/

namespace A313562.P15249344103529373362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313560 n + A109527 (A109528 n).toNat

end

end A313562.P15249344103529373362

/-! ## A313562.P13031605718926866551

`A313559(n)+A109527(A155495(n))`
-/

namespace A313562.P13031605718926866551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313559 n + A109527 (A155495 n).toNat

end

end A313562.P13031605718926866551

/-! ## A313562.P3359176181150498847

`or(A054907(A198285(n+1)), A313559(n))`
-/

namespace A313562.P3359176181150498847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054907 (A198285 (n + 1)).toNat) (A313559 n)

end

end A313562.P3359176181150498847

/-! ## A313562.P3900637299708784070

`A313559(n)+A054907(A198285(n+1)+1)`
-/

namespace A313562.P3900637299708784070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313559 n + A054907 (A198285 (n + 1) + 1).toNat

end

end A313562.P3900637299708784070

/-! ## A313562.P17514239901267611480

`A372565(A204856(3*n))+floor(n*(ϕ+3))`
-/

namespace A313562.P17514239901267611480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372565 (A204856 (3 * n)).toNat + ⌊(n : ℝ) * (Real.goldenRatio + 3)⌋

end

end A313562.P17514239901267611480

/-!
# A313563: Coordination sequence Gal.6.282.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313563, there is no canonical definition to state claims against.
-/

/-! ## A313563.P7995461872339937683

`A313561(n)+A124762(A126120(n))`
-/

namespace A313563.P7995461872339937683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n + A124762 (A126120 n).toNat

end

end A313563.P7995461872339937683

/-! ## A313563.P14152360740911677085

`or(A051659(A008574(n)), A313561(n))`
-/

namespace A313563.P14152360740911677085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051659 (A008574 n).toNat) (A313561 n)

end

end A313563.P14152360740911677085

/-! ## A313563.P11809751486214166679

`or(A151795(A052905(n)), A313561(n))`
-/

namespace A313563.P11809751486214166679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151795 (A052905 n).toNat) (A313561 n)

end

end A313563.P11809751486214166679

/-! ## A313563.P12533689530082299203

`A313559(n)+A001221(A248767(n+1))`
-/

namespace A313563.P12533689530082299203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313559 n + A001221 (A248767 (n + 1)).toNat

end

end A313563.P12533689530082299203

/-! ## A313563.P10893444297504791739

`or(A051659(A156745(n+1)), A313561(n))`
-/

namespace A313563.P10893444297504791739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051659 (A156745 (n + 1)).toNat) (A313561 n)

end

end A313563.P10893444297504791739

/-!
# A313564: Coordination sequence Gal.6.407.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313564, there is no canonical definition to state claims against.
-/

/-! ## A313564.P2242011508779844621

`A313551(n)+A268310(A000108(n))`
-/

namespace A313564.P2242011508779844621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313551 n + A268310 (A000108 n).toNat

end

end A313564.P2242011508779844621

/-! ## A313564.P11438648555803550683

`A313551(n)+A035263(A234898(n+1))`
-/

namespace A313564.P11438648555803550683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313551 n + A035263 (A234898 (n + 1)).toNat

end

end A313564.P11438648555803550683

/-! ## A313564.P17275020999730579175

`A313568(n)-A178780(n²)`
-/

namespace A313564.P17275020999730579175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n - A178780 (n ^ 2)

end

end A313564.P17275020999730579175

/-! ## A313564.P16065912257712676625

`A311960(A032555(n+1))-3`
-/

namespace A313564.P16065912257712676625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311960 (A032555 (n + 1)).toNat - 3

end

end A313564.P16065912257712676625

/-! ## A313564.P8151410828599254801

`A311960(A276142(n+1))-3`
-/

namespace A313564.P8151410828599254801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311960 (A276142 (n + 1)).toNat - 3

end

end A313564.P8151410828599254801

/-!
# A313565: Coordination sequence Gal.5.219.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313565, the canonical program `A313565.P15751569244382166249` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313565 has offset 0).

The definition of A313565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313565.P15751569244382166249

`A313144(n)+A128834(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313565

/-- `A313144(n)+A128834(n)` -/
def P15751569244382166249.Spec : Prop :=
  ∀ n, P15751569244382166249.a n = A313565 n

theorem P15751569244382166249.correct : P15751569244382166249.Spec := by
  intro n
  simp only [A313565]

end A313565

/-! ## A313565.P1914082883540397820

`A313144(n)-A010892(n+2)`
-/

namespace A313565.P1914082883540397820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313144 n - A010892 (n + 2)

end

end A313565.P1914082883540397820

namespace A313565

/-- `A313144(n)-A010892(n+2)` -/
def P1914082883540397820.Spec : Prop :=
  ∀ n, P1914082883540397820.a n = A313565 n

end A313565

/-! ## A313565.P16023848746385205355

`2*A313575(n)-A313595(n)`
-/

namespace A313565.P16023848746385205355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313575 n - A313595 n

end

end A313565.P16023848746385205355

namespace A313565

/-- `2*A313575(n)-A313595(n)` -/
def P16023848746385205355.Spec : Prop :=
  ∀ n, P16023848746385205355.a n = A313565 n

end A313565

/-! ## A313565.P2122366544269235927

`(A315471(n)+A301688(n))/2`
-/

namespace A313565.P2122366544269235927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315471 n + A301688 n : ℚ) / 2

end

end A313565.P2122366544269235927

namespace A313565

/-- `(A315471(n)+A301688(n))/2` -/
def P2122366544269235927.Spec : Prop :=
  ∀ n, P2122366544269235927.a n = (A313565 n : ℚ)

end A313565

/-! ## A313565.P1735306530032582591

`A014682(A315471(n)+A301688(n))`
-/

namespace A313565.P1735306530032582591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315471 n + A301688 n).toNat

end

end A313565.P1735306530032582591

namespace A313565

/-- `A014682(A315471(n)+A301688(n))` -/
def P1735306530032582591.Spec : Prop :=
  ∀ n, P1735306530032582591.a n = A313565 n

end A313565

/-! ## A313565.P5636125267756915150

`A301688(n)+A004525(A315471(n)-A301688(n))`
-/

namespace A313565.P5636125267756915150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n + A004525 (A315471 n - A301688 n).toNat

end

end A313565.P5636125267756915150

namespace A313565

/-- `A301688(n)+A004525(A315471(n)-A301688(n))` -/
def P5636125267756915150.Spec : Prop :=
  ∀ n, P5636125267756915150.a n = A313565 n

end A313565

/-! ## A313565.P4420314005305333660

`A301688(n)+A142150(A315471(n)-A301688(n))`
-/

namespace A313565.P4420314005305333660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n + A142150 (A315471 n - A301688 n).toNat

end

end A313565.P4420314005305333660

namespace A313565

/-- `A301688(n)+A142150(A315471(n)-A301688(n))` -/
def P4420314005305333660.Spec : Prop :=
  ∀ n, P4420314005305333660.a n = A313565 n

end A313565

/-! ## A313565.P13364111413642575871

`A005843(A313575(n))-A313595(n)`
-/

namespace A313565.P13364111413642575871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313575 n).toNat - A313595 n

end

end A313565.P13364111413642575871

namespace A313565

/-- `A005843(A313575(n))-A313595(n)` -/
def P13364111413642575871.Spec : Prop :=
  ∀ n, P13364111413642575871.a n = A313565 n

end A313565

/-! ## A313565.P10183943208723705568

`A004525(A315471(n)+A301688(n))`
-/

namespace A313565.P10183943208723705568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315471 n + A301688 n).toNat

end

end A313565.P10183943208723705568

namespace A313565

/-- `A004525(A315471(n)+A301688(n))` -/
def P10183943208723705568.Spec : Prop :=
  ∀ n, P10183943208723705568.a n = A313565 n

end A313565

/-! ## A313565.P3755609918782988052

`A142150(A315471(n)+A301688(n))`
-/

namespace A313565.P3755609918782988052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A315471 n + A301688 n).toNat

end

end A313565.P3755609918782988052

namespace A313565

/-- `A142150(A315471(n)+A301688(n))` -/
def P3755609918782988052.Spec : Prop :=
  ∀ n, P3755609918782988052.a n = A313565 n

end A313565

/-!
# A313566: Coordination sequence Gal.6.561.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313566, there is no canonical definition to state claims against.
-/

/-! ## A313566.P7342364703687397449

`∑[A281007(A002623(n))+3]-3`
-/

namespace A313566.P7342364703687397449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281007 (A002623 n).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A313566.P7342364703687397449

/-! ## A313566.P15010779227829367088

`∑[A001222(A150907(n))]+3*n+1`
-/

namespace A313566.P15010779227829367088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A150907 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 * n + 1 : ℤ)

end

end A313566.P15010779227829367088

/-! ## A313566.P3326874347780314267

`A102445(A129682(n))+A016813(n)`
-/

namespace A313566.P3326874347780314267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102445 (A129682 n).toNat + A016813 n

end

end A313566.P3326874347780314267

/-! ## A313566.P12103241102704151386

`A314841(n)+A001842(A148858(n))`
-/

namespace A313566.P12103241102704151386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + A001842 (A148858 n).toNat

end

end A313566.P12103241102704151386

/-! ## A313566.P16997132361598340058

`A357705(A011935(n))+A276855(n)`
-/

namespace A313566.P16997132361598340058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357705 (A011935 n).toNat + A276855 n

end

end A313566.P16997132361598340058

/-!
# A313567: Coordination sequence Gal.4.96.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313567, there is no canonical definition to state claims against.
-/

/-! ## A313567.P3406197580573082067

`A313611(n)-A001842(A176627(n))`
-/

namespace A313567.P3406197580573082067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n - A001842 (A176627 n).toNat

end

end A313567.P3406197580573082067

/-! ## A313567.P9183645847143629587

`A313556(n)+A102677(A173271(n))`
-/

namespace A313567.P9183645847143629587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A102677 (A173271 n).toNat

end

end A313567.P9183645847143629587

/-! ## A313567.P7669713867785883570

`A314027(n)-A001221(A148734(n))`
-/

namespace A313567.P7669713867785883570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314027 n - A001221 (A148734 n).toNat

end

end A313567.P7669713867785883570

/-! ## A313567.P4507831303809370441

`A206767(A267858(n+1)+A008706(n))`
-/

namespace A313567.P4507831303809370441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206767 (A267858 (n + 1) + A008706 n).toNat

end

end A313567.P4507831303809370441

/-! ## A313567.P14384154443352593648

`A360138(n+1)-A237593(A264128(2*n+5))`
-/

namespace A313567.P14384154443352593648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360138 (n + 1) - A237593 (A264128 (2 * n + 5)).toNat

end

end A313567.P14384154443352593648

/-!
# A313568: Coordination sequence Gal.3.14.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313568, the canonical program `A313568.P10572576497162449502` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313568 has offset 0).

The definition of A313568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313568.P10572576497162449502

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=4, a(2)=5, a(3)=4, a(4)=5, a(5)=5, a(6)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A313568

/-- `∑[floor(a(n-5))]` -/
def P10572576497162449502.Spec : Prop :=
  ∀ n, (P10572576497162449502.a n : ℤ) = A313568 n

theorem P10572576497162449502.correct : P10572576497162449502.Spec := by
  intro n
  simp only [A313568]

end A313568

/-! ## A313568.P13280908348917879736

`A315707(n)-n`
-/

namespace A313568.P13280908348917879736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n - (n : ℤ)

end

end A313568.P13280908348917879736

namespace A313568

/-- `A315707(n)-n` -/
def P13280908348917879736.Spec : Prop :=
  ∀ n, P13280908348917879736.a n = A313568 n

end A313568

/-! ## A313568.P8057536595380534670

`round(4/5*A008458(n))`
-/

namespace A313568.P8057536595380534670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 5 * (A008458 n : ℚ))

end

end A313568.P8057536595380534670

namespace A313568

/-- `round(4/5*A008458(n))` -/
def P8057536595380534670.Spec : Prop :=
  ∀ n, P8057536595380534670.a n = A313568 n

end A313568

/-! ## A313568.P17249103512851978934

`round(A008706(n)-Δ[n²]/10)`
-/

namespace A313568.P17249103512851978934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008706 n : ℚ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 10)

end

end A313568.P17249103512851978934

namespace A313568

/-- `round(A008706(n)-Δ[n²]/10)` -/
def P17249103512851978934.Spec : Prop :=
  ∀ n, P17249103512851978934.a n = A313568 n

end A313568

/-! ## A313568.P9473197805778775808

`ceil(abs(3-A016921(4*n))/5)`
-/

namespace A313568.P9473197805778775808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|3 - A016921 (4 * n)| : ℚ) / 5⌉

end

end A313568.P9473197805778775808

namespace A313568

/-- `ceil(abs(3-A016921(4*n))/5)` -/
def P9473197805778775808.Spec : Prop :=
  ∀ n, P9473197805778775808.a n = A313568 n

end A313568

/-! ## A313568.P9123567659016071745

`A312928(2*n)+n-5*n`
-/

namespace A313568.P9123567659016071745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312928 (2 * n) + ((n : ℤ) - (5 * n : ℤ))

end

end A313568.P9123567659016071745

namespace A313568

/-- `A312928(2*n)+n-5*n` -/
def P9123567659016071745.Spec : Prop :=
  ∀ n, P9123567659016071745.a n = A313568 n

end A313568

/-! ## A313568.P11788940095113938179

`A313025(2*n)+n-5*n`
-/

namespace A313568.P11788940095113938179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313025 (2 * n) + ((n : ℤ) - (5 * n : ℤ))

end

end A313568.P11788940095113938179

namespace A313568

/-- `A313025(2*n)+n-5*n` -/
def P11788940095113938179.Spec : Prop :=
  ∀ n, P11788940095113938179.a n = A313568 n

end A313568

/-! ## A313568.P5843946677054773336

`A047263(floor(3/acot(n))+n+1)`
-/

namespace A313568.P5843946677054773336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A313568.P5843946677054773336

namespace A313568

/-- `A047263(floor(3/acot(n))+n+1)` -/
def P5843946677054773336.Spec : Prop :=
  ∀ n, P5843946677054773336.a n = A313568 n

end A313568

/-! ## A313568.P8566488345054738714

`A047263(comp[2*(n+1)]+2*(n+1))`
-/

namespace A313568.P8566488345054738714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 * (n + 1))

end

end A313568.P8566488345054738714

namespace A313568

/-- `A047263(comp[2*(n+1)]+2*(n+1))` -/
def P8566488345054738714.Spec : Prop :=
  ∀ n, P8566488345054738714.a n = A313568 n

end A313568

/-! ## A313568.P7521463291158724645

`A004275(3*n+1)-comp[6*n+3]`
-/

namespace A313568.P7521463291158724645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (3 * n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A313568.P7521463291158724645

namespace A313568

/-- `A004275(3*n+1)-comp[6*n+3]` -/
def P7521463291158724645.Spec : Prop :=
  ∀ n, P7521463291158724645.a n = A313568 n

end A313568

/-! ## A313568.P18289478695239583265

`A315630(n)-A253262(n)`
-/

namespace A313568.P18289478695239583265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315630 n - A253262 n

end

end A313568.P18289478695239583265

namespace A313568

/-- `A315630(n)-A253262(n)` -/
def P18289478695239583265.Spec : Prop :=
  ∀ n, P18289478695239583265.a n = A313568 n

end A313568

/-! ## A313568.P14882626362640916737

`floor(A016825(A008458(n))/5)`
-/

namespace A313568.P14882626362640916737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016825 (A008458 n).toNat : ℚ) / 5⌋

end

end A313568.P14882626362640916737

namespace A313568

/-- `floor(A016825(A008458(n))/5)` -/
def P14882626362640916737.Spec : Prop :=
  ∀ n, P14882626362640916737.a n = A313568 n

end A313568

/-! ## A313568.P16628974671417118629

`A047252(A004277(2*n))+1`
-/

namespace A313568.P16628974671417118629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (A004277 (2 * n)).toNat + 1

end

end A313568.P16628974671417118629

namespace A313568

/-- `A047252(A004277(2*n))+1` -/
def P16628974671417118629.Spec : Prop :=
  ∀ n, P16628974671417118629.a n = A313568 n

end A313568

/-! ## A313568.P17468404645202270701

`A008458(n)-A047263(n+1)`
-/

namespace A313568.P17468404645202270701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047263 (n + 1)

end

end A313568.P17468404645202270701

namespace A313568

/-- `A008458(n)-A047263(n+1)` -/
def P17468404645202270701.Spec : Prop :=
  ∀ n, P17468404645202270701.a n = A313568 n

end A313568

/-! ## A313568.P14203737044372530004

`A008706(n)-A002266(n+2)`
-/

namespace A313568.P14203737044372530004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A002266 (n + 2)

end

end A313568.P14203737044372530004

namespace A313568

/-- `A008706(n)-A002266(n+2)` -/
def P14203737044372530004.Spec : Prop :=
  ∀ n, P14203737044372530004.a n = A313568 n

end A313568

/-! ## A313568.P8470992144282567565

`A151988(n)+A313537(n)-n`
-/

namespace A313568.P8470992144282567565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A313537 n - (n : ℤ))

end

end A313568.P8470992144282567565

namespace A313568

/-- `A151988(n)+A313537(n)-n` -/
def P8470992144282567565.Spec : Prop :=
  ∀ n, P8470992144282567565.a n = A313568 n

end A313568

/-! ## A313568.P10352488785548217574

`record[A165998(n)]-A047263(n+1)`
-/

namespace A313568.P10352488785548217574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A047263 (n + 1)

end

end A313568.P10352488785548217574

namespace A313568

/-- `record[A165998(n)]-A047263(n+1)` -/
def P10352488785548217574.Spec : Prop :=
  ∀ n, P10352488785548217574.a n = A313568 n

end A313568

/-! ## A313568.P6749517616746855596

`A004277(3*n)-comp[A016945(n)]`
-/

namespace A313568.P6749517616746855596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * n) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313568.P6749517616746855596

namespace A313568

/-- `A004277(3*n)-comp[A016945(n)]` -/
def P6749517616746855596.Spec : Prop :=
  ∀ n, P6749517616746855596.a n = A313568 n

end A313568

/-! ## A313568.P10292522793268812717

`A313232(n)+A244895(n)`
-/

namespace A313568.P10292522793268812717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313232 n + A244895 n

end

end A313568.P10292522793268812717

namespace A313568

/-- `A313232(n)+A244895(n)` -/
def P10292522793268812717.Spec : Prop :=
  ∀ n, P10292522793268812717.a n = A313568 n

end A313568

/-! ## A313568.P9085984130330150664

`A311634(n)+A253262(n)`
-/

namespace A313568.P9085984130330150664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311634 n + A253262 n

end

end A313568.P9085984130330150664

namespace A313568

/-- `A311634(n)+A253262(n)` -/
def P9085984130330150664.Spec : Prop :=
  ∀ n, P9085984130330150664.a n = A313568 n

end A313568

/-!
# A313569: Coordination sequence Gal.6.197.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313569, the canonical program `A313569.P8131727440747983242` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313569 has offset 0).

The definition of A313569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313569.P8131727440747983242

`A312896(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313569

/-- `A312896(n)+A004525(n)` -/
def P8131727440747983242.Spec : Prop :=
  ∀ n, P8131727440747983242.a n = A313569 n

theorem P8131727440747983242.correct : P8131727440747983242.Spec := by
  intro n
  simp only [A313569]

end A313569

/-! ## A313569.P6554537323904849753

`A313145(n)+A128834(n)`
-/

namespace A313569.P6554537323904849753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313145 n + A128834 n

end

end A313569.P6554537323904849753

namespace A313569

/-- `A313145(n)+A128834(n)` -/
def P6554537323904849753.Spec : Prop :=
  ∀ n, P6554537323904849753.a n = A313569 n

end A313569

/-! ## A313569.P3957813453732064050

`A313145(n)-A010892(n+2)`
-/

namespace A313569.P3957813453732064050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313145 n - A010892 (n + 2)

end

end A313569.P3957813453732064050

namespace A313569

/-- `A313145(n)-A010892(n+2)` -/
def P3957813453732064050.Spec : Prop :=
  ∀ n, P3957813453732064050.a n = A313569 n

end A313569

/-! ## A313569.P9727229783808484325

`A314712(n)+n-A004396(n)`
-/

namespace A313569.P9727229783808484325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314712 n + ((n : ℤ) - A004396 n)

end

end A313569.P9727229783808484325

namespace A313569

/-- `A314712(n)+n-A004396(n)` -/
def P9727229783808484325.Spec : Prop :=
  ∀ n, P9727229783808484325.a n = A313569 n

end A313569

/-! ## A313569.P9313761580120340952

`abs(A008592(n)-(A311801(n)+n))`
-/

namespace A313569.P9313761580120340952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311801 n + (n : ℤ))|

end

end A313569.P9313761580120340952

namespace A313569

/-- `abs(A008592(n)-(A311801(n)+n))` -/
def P9313761580120340952.Spec : Prop :=
  ∀ n, P9313761580120340952.a n = A313569 n

end A313569

/-! ## A313569.P1143561486425948277

`A042965(n+1)+A314712(n)-n`
-/

namespace A313569.P1143561486425948277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A314712 n - (n : ℤ))

end

end A313569.P1143561486425948277

namespace A313569

/-- `A042965(n+1)+A314712(n)-n` -/
def P1143561486425948277.Spec : Prop :=
  ∀ n, P1143561486425948277.a n = A313569 n

end A313569

/-! ## A313569.P4225865085058680092

`A047229(n+1)+A312896(n)-n`
-/

namespace A313569.P4225865085058680092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + (A312896 n - (n : ℤ))

end

end A313569.P4225865085058680092

namespace A313569

/-- `A047229(n+1)+A312896(n)-n` -/
def P4225865085058680092.Spec : Prop :=
  ∀ n, P4225865085058680092.a n = A313569 n

end A313569

/-! ## A313569.P12460081549371419966

`A312933(n)+A004396(A004525(n))`
-/

namespace A313569.P12460081549371419966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + A004396 (A004525 n).toNat

end

end A313569.P12460081549371419966

namespace A313569

/-- `A312933(n)+A004396(A004525(n))` -/
def P12460081549371419966.Spec : Prop :=
  ∀ n, P12460081549371419966.a n = A313569 n

end A313569

/-! ## A313569.P10242493065302267407

`A301291(n)+A004396(n-A004525(n))`
-/

namespace A313569.P10242493065302267407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313569.P10242493065302267407

namespace A313569

/-- `A301291(n)+A004396(n-A004525(n))` -/
def P10242493065302267407.Spec : Prop :=
  ∀ n, P10242493065302267407.a n = A313569 n

end A313569

/-! ## A313569.P7468391065055795303

`A314899(n)+A134667(n-A004525(n))`
-/

namespace A313569.P7468391065055795303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + A134667 ((n : ℤ) - A004525 n).toNat

end

end A313569.P7468391065055795303

namespace A313569

/-- `A314899(n)+A134667(n-A004525(n))` -/
def P7468391065055795303.Spec : Prop :=
  ∀ n, P7468391065055795303.a n = A313569 n

end A313569

/-! ## A313569.P16393268606267458700

`A314028(n)-A004525(n-A004396(n))`
-/

namespace A313569.P16393268606267458700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314028 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A313569.P16393268606267458700

namespace A313569

/-- `A314028(n)-A004525(n-A004396(n))` -/
def P16393268606267458700.Spec : Prop :=
  ∀ n, P16393268606267458700.a n = A313569 n

end A313569

/-! ## A313569.P7507469389803494242

`A313707(n)-Δ[A011865(n)]`
-/

namespace A313569.P7507469389803494242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n - (f1 (n + 1) - f1 n)

end

end A313569.P7507469389803494242

namespace A313569

/-- `A313707(n)-Δ[A011865(n)]` -/
def P7507469389803494242.Spec : Prop :=
  ∀ n, P7507469389803494242.a n = A313569 n

end A313569

/-! ## A313569.P17863768402815480620

`A315415(n)-A004525(A004396(n))`
-/

namespace A313569.P17863768402815480620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315415 n - A004525 (A004396 n).toNat

end

end A313569.P17863768402815480620

namespace A313569

/-- `A315415(n)-A004525(A004396(n))` -/
def P17863768402815480620.Spec : Prop :=
  ∀ n, P17863768402815480620.a n = A313569 n

end A313569

/-! ## A313569.P2068579479097051662

`abs(A008592(n)-A313872(n))`
-/

namespace A313569.P2068579479097051662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313872 n|

end

end A313569.P2068579479097051662

namespace A313569

/-- `abs(A008592(n)-A313872(n))` -/
def P2068579479097051662.Spec : Prop :=
  ∀ n, P2068579479097051662.a n = A313569 n

end A313569

/-! ## A313569.P13519873051365242912

`abs(A008593(n)-(A313872(n)+n))`
-/

namespace A313569.P13519873051365242912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A313872 n + (n : ℤ))|

end

end A313569.P13519873051365242912

namespace A313569

/-- `abs(A008593(n)-(A313872(n)+n))` -/
def P13519873051365242912.Spec : Prop :=
  ∀ n, P13519873051365242912.a n = A313569 n

end A313569

/-! ## A313569.P11053760006696414920

`A314124(n)-A004524(n+1)`
-/

namespace A313569.P11053760006696414920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314124 n - A004524 (n + 1)

end

end A313569.P11053760006696414920

namespace A313569

/-- `A314124(n)-A004524(n+1)` -/
def P11053760006696414920.Spec : Prop :=
  ∀ n, P11053760006696414920.a n = A313569 n

end A313569

/-! ## A313569.P14510248412842457400

`A004525(n)+A314124(n)-n`
-/

namespace A313569.P14510248412842457400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314124 n - (n : ℤ))

end

end A313569.P14510248412842457400

namespace A313569

/-- `A004525(n)+A314124(n)-n` -/
def P14510248412842457400.Spec : Prop :=
  ∀ n, P14510248412842457400.a n = A313569 n

end A313569

/-! ## A313569.P16622657824912173479

`Δ[A054925(n)]+A314124(n)-n`
-/

namespace A313569.P16622657824912173479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A314124 n - (n : ℤ))

end

end A313569.P16622657824912173479

namespace A313569

/-- `Δ[A054925(n)]+A314124(n)-n` -/
def P16622657824912173479.Spec : Prop :=
  ∀ n, P16622657824912173479.a n = A313569 n

end A313569

/-! ## A313569.P8869905064385348243

`A315710(n)-n`
-/

namespace A313569.P8869905064385348243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315710 n - (n : ℤ)

end

end A313569.P8869905064385348243

namespace A313569

/-- `A315710(n)-n` -/
def P8869905064385348243.Spec : Prop :=
  ∀ n, P8869905064385348243.a n = A313569 n

end A313569

/-! ## A313569.P9316598714169461644

`A004525(A315768(2*n))-n`
-/

namespace A313569.P9316598714169461644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315768 (2 * n)).toNat - (n : ℤ)

end

end A313569.P9316598714169461644

namespace A313569

/-- `A004525(A315768(2*n))-n` -/
def P9316598714169461644.Spec : Prop :=
  ∀ n, P9316598714169461644.a n = A313569 n

end A313569

/-!
# A313570: Coordination sequence Gal.4.88.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313570, there is no canonical definition to state claims against.
-/

/-! ## A313570.P13702201613311673551

`A311307(n)+A287272(A034856(n+1))`
-/

namespace A313570.P13702201613311673551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311307 n + A287272 (A034856 (n + 1)).toNat

end

end A313570.P13702201613311673551

/-! ## A313570.P10792581933442718333

`7*n+3-A063677(A318916(3*n+4))`
-/

namespace A313570.P10792581933442718333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 3 : ℤ) - A063677 (A318916 (3 * n + 4)).toNat

end

end A313570.P10792581933442718333

/-! ## A313570.P3964098985933359651

`A314712(n)+A001221(A009268(n))`
-/

namespace A313570.P3964098985933359651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314712 n + A001221 (A009268 n).toNat

end

end A313570.P3964098985933359651

/-! ## A313570.P14694732641178913240

`A313622(n)-A072670(A047653(n))`
-/

namespace A313570.P14694732641178913240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313622 n - A072670 (A047653 n).toNat

end

end A313570.P14694732641178913240

/-! ## A313570.P8812177688211926061

`A314035(n)-A001221(A149686(n))`
-/

namespace A313570.P8812177688211926061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314035 n - A001221 (A149686 n).toNat

end

end A313570.P8812177688211926061

/-!
# A313571: Coordination sequence Gal.5.169.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313571, there is no canonical definition to state claims against.
-/

/-! ## A313571.P11227834234319422301

`or(A313565(A062399(n)), A313567(n))`
-/

namespace A313571.P11227834234319422301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313565 (A062399 n).toNat) (A313567 n)

end

end A313571.P11227834234319422301

/-! ## A313571.P5872384320349332907

`or(A313565(n), A313567(A351870(n)))`
-/

namespace A313571.P5872384320349332907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313565 n) (A313567 (A351870 n).toNat)

end

end A313571.P5872384320349332907

/-! ## A313571.P7844407894916759511

`xor(A242096(A087051(n)), A313575(n))`
-/

namespace A313571.P7844407894916759511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A242096 (A087051 n).toNat) (A313575 n)

end

end A313571.P7844407894916759511

/-! ## A313571.P16872667615441953020

`or(A007814(A046170(n+1)), A313569(n))`
-/

namespace A313571.P16872667615441953020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A046170 (n + 1)).toNat) (A313569 n)

end

end A313571.P16872667615441953020

/-! ## A313571.P1749483347381977836

`A353086(A005097(3*(n+1))+n)`
-/

namespace A313571.P1749483347381977836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (A005097 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A313571.P1749483347381977836

/-!
# A313572: Coordination sequence Gal.6.250.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313572, the canonical program `A313572.P9539295002485330705` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313572 has offset 0).

The definition of A313572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313572.P14853640639897654316

`A313711(n)-Δ[A011864(n)]`
-/

namespace A313572.P14853640639897654316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313711 n - (f1 (n + 1) - f1 n)

end

end A313572.P14853640639897654316

namespace A313572

/-- `A313711(n)-Δ[A011864(n)]` -/
def P14853640639897654316.Spec : Prop :=
  ∀ n, P14853640639897654316.a n = A313572 n

end A313572

/-! ## A313572.P9539295002485330705

`A047263(A313738(n)+1-n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313572

/-- `A047263(A313738(n)+1-n)` -/
def P9539295002485330705.Spec : Prop :=
  ∀ n, P9539295002485330705.a n = A313572 n

theorem P9539295002485330705.correct : P9539295002485330705.Spec := by
  intro n
  simp only [A313572]

end A313572

/-! ## A313572.P14133647486910633977

`A047263(1-(n-A313738(n)))`
-/

namespace A313572.P14133647486910633977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (1 - ((n : ℤ) - A313738 n)).toNat

end

end A313572.P14133647486910633977

namespace A313572

/-- `A047263(1-(n-A313738(n)))` -/
def P14133647486910633977.Spec : Prop :=
  ∀ n, P14133647486910633977.a n = A313572 n

theorem P14133647486910633977.correct : P14133647486910633977.Spec := by
  intro n
  simp only [A313572, Nat.add_sub_cancel, A313572.P14133647486910633977.a, A313572.P9539295002485330705.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A313572

/-! ## A313572.P6872765385579790932

`abs(10*n-A313869(n))`
-/

namespace A313572.P6872765385579790932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313869 n|

end

end A313572.P6872765385579790932

namespace A313572

/-- `abs(10*n-A313869(n))` -/
def P6872765385579790932.Spec : Prop :=
  ∀ n, P6872765385579790932.a n = A313572 n

end A313572

/-! ## A313572.P16312965205277759421

`2*A008706(n)-A313869(n)`
-/

namespace A313572.P16312965205277759421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313869 n

end

end A313572.P16312965205277759421

namespace A313572

/-- `2*A008706(n)-A313869(n)` -/
def P16312965205277759421.Spec : Prop :=
  ∀ n, P16312965205277759421.a n = A313572 n

end A313572

/-! ## A313572.P17579696633728791206

`A008458(n)+A008574(n)-A313869(n)`
-/

namespace A313572.P17579696633728791206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313869 n)

end

end A313572.P17579696633728791206

namespace A313572

/-- `A008458(n)+A008574(n)-A313869(n)` -/
def P17579696633728791206.Spec : Prop :=
  ∀ n, P17579696633728791206.a n = A313572 n

end A313572

/-! ## A313572.P5867364725436033660

`A313869(n)-A005843(A313869(n)-A008706(n))`
-/

namespace A313572.P5867364725436033660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313869 n - A005843 (A313869 n - A008706 n).toNat

end

end A313572.P5867364725436033660

namespace A313572

/-- `A313869(n)-A005843(A313869(n)-A008706(n))` -/
def P5867364725436033660.Spec : Prop :=
  ∀ n, P5867364725436033660.a n = A313572 n

end A313572

/-! ## A313572.P11314855900444785782

`A005843(A008706(n))-A313869(n)`
-/

namespace A313572.P11314855900444785782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313869 n

end

end A313572.P11314855900444785782

namespace A313572

/-- `A005843(A008706(n))-A313869(n)` -/
def P11314855900444785782.Spec : Prop :=
  ∀ n, P11314855900444785782.a n = A313572 n

end A313572

/-! ## A313572.P1527799620096315099

`A008458(n)-A134119(A315754(n))`
-/

namespace A313572.P1527799620096315099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A134119 (A315754 n).toNat

end

end A313572.P1527799620096315099

namespace A313572

/-- `A008458(n)-A134119(A315754(n))` -/
def P1527799620096315099.Spec : Prop :=
  ∀ n, P1527799620096315099.a n = A313572 n

end A313572

/-! ## A313572.P11037634541296701051

`A315521(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313572.P11037634541296701051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315521 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313572.P11037634541296701051

namespace A313572

/-- `A315521(2*n)+A008458(n+1)-(12*n+6)` -/
def P11037634541296701051.Spec : Prop :=
  ∀ n, P11037634541296701051.a n = A313572 n

end A313572

/-! ## A313572.P12047893482095060146

`A233583(A017281(n))-A313869(n)`
-/

namespace A313572.P12047893482095060146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313869 n

end

end A313572.P12047893482095060146

namespace A313572

/-- `A233583(A017281(n))-A313869(n)` -/
def P12047893482095060146.Spec : Prop :=
  ∀ n, P12047893482095060146.a n = A313572 n

end A313572

/-!
# A313573: Coordination sequence Gal.4.97.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313573, there is no canonical definition to state claims against.
-/

/-! ## A313573.P251042795227787284

`xor(A313528(n), A343640(A317004(n+1)))`
-/

namespace A313573.P251042795227787284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A313528 n) (A343640 (A317004 (n + 1)).toNat)

end

end A313573.P251042795227787284

/-! ## A313573.P6179230798673734079

`or(A127327(A060945(n)), A310398(n))`
-/

namespace A313573.P6179230798673734079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127327 (A060945 n).toNat) (A310398 n)

end

end A313573.P6179230798673734079

/-! ## A313573.P6491919525898095564

`xor(A071986(A001671(n)), A313580(n))`
-/

namespace A313573.P6491919525898095564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A071986 (A001671 n).toNat) (A313580 n)

end

end A313573.P6491919525898095564

/-! ## A313573.P17872225555690065320

`A312948(n)+A033831(A001008(n+1))`
-/

namespace A313573.P17872225555690065320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n + A033831 (A001008 (n + 1)).toNat

end

end A313573.P17872225555690065320

/-! ## A313573.P2602617233811237223

`A314125(n)-A001221(A345242(n+1))`
-/

namespace A313573.P2602617233811237223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314125 n - A001221 (A345242 (n + 1)).toNat

end

end A313573.P2602617233811237223

/-!
# A313574: Coordination sequence Gal.6.495.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313574, there is no canonical definition to state claims against.
-/

/-! ## A313574.P217803885398868883

`A314726(n)+A001221(A328436(n))`
-/

namespace A313574.P217803885398868883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314726 n + A001221 (A328436 n).toNat

end

end A313574.P217803885398868883

/-! ## A313574.P278875386523454937

`A026355(3*n)+A024155(A000108(n))`
-/

namespace A313574.P278875386523454937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 (3 * n) + A024155 (A000108 n).toNat

end

end A313574.P278875386523454937

/-! ## A313574.P10092689169548197003

`xor(A151692(A070897(n+1)), A313583(n))`
-/

namespace A313574.P10092689169548197003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151692 (A070897 (n + 1)).toNat) (A313583 n)

end

end A313574.P10092689169548197003

/-! ## A313574.P6989763001732793858

`xor(A079978(A159741(n+1)), A310446(n))`
-/

namespace A313574.P6989763001732793858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079978 (A159741 (n + 1)).toNat) (A310446 n)

end

end A313574.P6989763001732793858

/-! ## A313574.P7522904157110048690

`A298024(n)+A037907(A002805(n+2))`
-/

namespace A313574.P7522904157110048690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A037907 (A002805 (n + 2)).toNat

end

end A313574.P7522904157110048690

/-!
# A313575: Coordination sequence Gal.6.202.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313575, the canonical program `A313575.P17258877174368691050` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313575 has offset 0).

The definition of A313575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313575.P17258877174368691050

`round(A301291(n)+n/3)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313575

/-- `round(A301291(n)+n/3)` -/
def P17258877174368691050.Spec : Prop :=
  ∀ n, P17258877174368691050.a n = A313575 n

theorem P17258877174368691050.correct : P17258877174368691050.Spec := by
  intro n
  simp only [A313575]

end A313575

/-! ## A313575.P1957257861156761639

`A219529(n)-∑[and(2, n)/2]`
-/

namespace A313575.P1957257861156761639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219529 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313575.P1957257861156761639

namespace A313575

/-- `A219529(n)-∑[and(2, n)/2]` -/
def P1957257861156761639.Spec : Prop :=
  ∀ n, P1957257861156761639.a n = (A313575 n : ℚ)

end A313575

/-! ## A313575.P14957659914119321051

`A312901(n)+A004525(n)`
-/

namespace A313575.P14957659914119321051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312901 n + A004525 n

end

end A313575.P14957659914119321051

namespace A313575

/-- `A312901(n)+A004525(n)` -/
def P14957659914119321051.Spec : Prop :=
  ∀ n, P14957659914119321051.a n = A313575 n

end A313575

/-! ## A313575.P8956189294208385315

`A219529(n)-∑[A021913(n)]`
-/

namespace A313575.P8956189294208385315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313575.P8956189294208385315

namespace A313575

/-- `A219529(n)-∑[A021913(n)]` -/
def P8956189294208385315.Spec : Prop :=
  ∀ n, P8956189294208385315.a n = A313575 n

end A313575

/-! ## A313575.P16213982562567081826

`A219529(n)-Δ[A011848(n)]`
-/

namespace A313575.P16213982562567081826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - (f1 (n + 1) - f1 n)

end

end A313575.P16213982562567081826

namespace A313575

/-- `A219529(n)-Δ[A011848(n)]` -/
def P16213982562567081826.Spec : Prop :=
  ∀ n, P16213982562567081826.a n = A313575 n

end A313575

/-! ## A313575.P981695887628332689

`A301291(n)+A002264(n+1)`
-/

namespace A313575.P981695887628332689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A002264 (n + 1)

end

end A313575.P981695887628332689

namespace A313575

/-- `A301291(n)+A002264(n+1)` -/
def P981695887628332689.Spec : Prop :=
  ∀ n, P981695887628332689.a n = A313575 n

end A313575

/-! ## A313575.P9253316560195915617

`A298786(n)+A047229(n+1)`
-/

namespace A313575.P9253316560195915617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A047229 (n + 1)

end

end A313575.P9253316560195915617

namespace A313575

/-- `A298786(n)+A047229(n+1)` -/
def P9253316560195915617.Spec : Prop :=
  ∀ n, P9253316560195915617.a n = A313575 n

end A313575

/-! ## A313575.P15429151659730952750

`A219529(n)-A004524(n+1)`
-/

namespace A313575.P15429151659730952750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004524 (n + 1)

end

end A313575.P15429151659730952750

namespace A313575

/-- `A219529(n)-A004524(n+1)` -/
def P15429151659730952750.Spec : Prop :=
  ∀ n, P15429151659730952750.a n = A313575 n

end A313575

/-! ## A313575.P3364867948631069139

`A219529(n)-A201629(n)/2`
-/

namespace A313575.P3364867948631069139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219529 n : ℚ) - (A201629 n : ℚ) / 2

end

end A313575.P3364867948631069139

namespace A313575

/-- `A219529(n)-A201629(n)/2` -/
def P3364867948631069139.Spec : Prop :=
  ∀ n, P3364867948631069139.a n = (A313575 n : ℚ)

end A313575

/-! ## A313575.P6193029437342174119

`A004525(n)+A298786(n)+n`
-/

namespace A313575.P6193029437342174119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A298786 n + (n : ℤ))

end

end A313575.P6193029437342174119

namespace A313575

/-- `A004525(n)+A298786(n)+n` -/
def P6193029437342174119.Spec : Prop :=
  ∀ n, P6193029437342174119.a n = A313575 n

end A313575

/-! ## A313575.P4156452596149731138

`A004525(n)+A219529(n)-n`
-/

namespace A313575.P4156452596149731138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A219529 n - (n : ℤ))

end

end A313575.P4156452596149731138

namespace A313575

/-- `A004525(n)+A219529(n)-n` -/
def P4156452596149731138.Spec : Prop :=
  ∀ n, P4156452596149731138.a n = A313575 n

end A313575

/-! ## A313575.P822774604873323438

`A301291(n)+n-A004396(n)`
-/

namespace A313575.P822774604873323438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + ((n : ℤ) - A004396 n)

end

end A313575.P822774604873323438

namespace A313575

/-- `A301291(n)+n-A004396(n)` -/
def P822774604873323438.Spec : Prop :=
  ∀ n, P822774604873323438.a n = A313575 n

end A313575

/-! ## A313575.P11170271993320514996

`A008576(2*n)-∑[A021913(n)]`
-/

namespace A313575.P11170271993320514996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313575.P11170271993320514996

namespace A313575

/-- `A008576(2*n)-∑[A021913(n)]` -/
def P11170271993320514996.Spec : Prop :=
  ∀ n, P11170271993320514996.a n = A313575 n

end A313575

/-! ## A313575.P5626767527888776144

`A008576(2*n)-Δ[A011848(n)]`
-/

namespace A313575.P5626767527888776144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - (f1 (n + 1) - f1 n)

end

end A313575.P5626767527888776144

namespace A313575

/-- `A008576(2*n)-Δ[A011848(n)]` -/
def P5626767527888776144.Spec : Prop :=
  ∀ n, P5626767527888776144.a n = A313575 n

end A313575

/-! ## A313575.P8846331540389046780

`Δ[A054925(n)]+A219529(n)-n`
-/

namespace A313575.P8846331540389046780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A219529 n - (n : ℤ))

end

end A313575.P8846331540389046780

namespace A313575

/-- `Δ[A054925(n)]+A219529(n)-n` -/
def P8846331540389046780.Spec : Prop :=
  ∀ n, P8846331540389046780.a n = A313575 n

end A313575

/-! ## A313575.P16407772847343194675

`A008576(2*n)-A004524(n+1)`
-/

namespace A313575.P16407772847343194675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - A004524 (n + 1)

end

end A313575.P16407772847343194675

namespace A313575

/-- `A008576(2*n)-A004524(n+1)` -/
def P16407772847343194675.Spec : Prop :=
  ∀ n, P16407772847343194675.a n = A313575 n

end A313575

/-! ## A313575.P2077271802833751999

`A004525(n)+A008706(n)-A004396(n)`
-/

namespace A313575.P2077271802833751999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A008706 n - A004396 n)

end

end A313575.P2077271802833751999

namespace A313575

/-- `A004525(n)+A008706(n)-A004396(n)` -/
def P2077271802833751999.Spec : Prop :=
  ∀ n, P2077271802833751999.a n = A313575 n

end A313575

/-! ## A313575.P8710460053130397524

`A004525(n)+A008576(A005843(n))-n`
-/

namespace A313575.P8710460053130397524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A008576 (A005843 n).toNat - (n : ℤ))

end

end A313575.P8710460053130397524

namespace A313575

/-- `A004525(n)+A008576(A005843(n))-n` -/
def P8710460053130397524.Spec : Prop :=
  ∀ n, P8710460053130397524.a n = A313575 n

end A313575

/-! ## A313575.P2111932069551478648

`A008574(n)+A219529(n)-A301293(n)`
-/

namespace A313575.P2111932069551478648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A219529 n - A301293 n)

end

end A313575.P2111932069551478648

namespace A313575

/-- `A008574(n)+A219529(n)-A301293(n)` -/
def P2111932069551478648.Spec : Prop :=
  ∀ n, P2111932069551478648.a n = A313575 n

end A313575

/-! ## A313575.P9851559800003162500

`A298024(n)+A301298(n)-A301293(n)`
-/

namespace A313575.P9851559800003162500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + (A301298 n - A301293 n)

end

end A313575.P9851559800003162500

namespace A313575

/-- `A298024(n)+A301298(n)-A301293(n)` -/
def P9851559800003162500.Spec : Prop :=
  ∀ n, P9851559800003162500.a n = A313575 n

end A313575

/-!
# A313576: Coordination sequence Gal.6.451.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313576, there is no canonical definition to state claims against.
-/

/-! ## A313576.P670114757863249854

`A316523(A289501(n))+A250120(n)`
-/

namespace A313576.P670114757863249854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316523 (A289501 n).toNat + A250120 n

end

end A313576.P670114757863249854

/-! ## A313576.P15351928659127689990

`A250120(n)+Δ[A165014(A245641(n+1))]`
-/

namespace A313576.P15351928659127689990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165014 (A245641 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (f1 (n + 1) - f1 n)

end

end A313576.P15351928659127689990

/-! ## A313576.P12501721694187425157

`A353853(A245226(3*n+1))+A001221(A102871(n))`
-/

namespace A313576.P12501721694187425157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (A245226 (3 * n + 1)).toNat + A001221 (A102871 n).toNat

end

end A313576.P12501721694187425157

/-! ## A313576.P569358900038033239

`A001221(A102871(n))+A311536(n)-A086015(n²²)`
-/

namespace A313576.P569358900038033239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A102871 n).toNat + (A311536 n - A086015 ((n ^ 2) ^ 2))

end

end A313576.P569358900038033239

/-! ## A313576.P11451374657059547862

`A316523(A289501(n))+A047309(2*n+1)+A004273(n)`
-/

namespace A313576.P11451374657059547862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316523 (A289501 n).toNat + (A047309 (2 * n + 1) + A004273 n)

end

end A313576.P11451374657059547862

/-!
# A313577: Coordination sequence Gal.4.97.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313577, there is no canonical definition to state claims against.
-/

/-! ## A313577.P4891916308213821004

`xor(A000035(n²²), A310440(n))`
-/

namespace A313577.P4891916308213821004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 ((n ^ 2) ^ 2)) (A310440 n)

end

end A313577.P4891916308213821004

/-! ## A313577.P855586925714342178

`A016813(n)+A000120(A152762(n))`
-/

namespace A313577.P855586925714342178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A000120 (A152762 n).toNat

end

end A313577.P855586925714342178

/-! ## A313577.P10612603443925040222

`A313115(n)+A000035(A122228(n))`
-/

namespace A313577.P10612603443925040222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + A000035 (A122228 n).toNat

end

end A313577.P10612603443925040222

/-! ## A313577.P14779274681634598369

`xor(A021913(A007051(n)), A310440(n))`
-/

namespace A313577.P14779274681634598369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A021913 (A007051 n).toNat) (A310440 n)

end

end A313577.P14779274681634598369

/-! ## A313577.P5565393639342045171

`A311258(n)+A001222(A061417(n+1))`
-/

namespace A313577.P5565393639342045171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311258 n + A001222 (A061417 (n + 1)).toNat

end

end A313577.P5565393639342045171

/-!
# A313578: Coordination sequence Gal.5.210.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313578, there is no canonical definition to state claims against.
-/

/-! ## A313578.P17019881732568399435

`or(A091991(A300041(n)), A310404(n))`
-/

namespace A313578.P17019881732568399435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091991 (A300041 n).toNat) (A310404 n)

end

end A313578.P17019881732568399435

/-! ## A313578.P8717462616046313627

`∑[A088936(record[A392345(n+1)])]`
-/

namespace A313578.P8717462616046313627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088936 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313578.P8717462616046313627

/-! ## A313578.P11135355515285772231

`∑[A212620(∑[A055461(3*n+1)])]`
-/

namespace A313578.P11135355515285772231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212620 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313578.P11135355515285772231

/-! ## A313578.P9580107718365136875

`A003136(2*n+3)-(A030129(2*(n+1))+2)`
-/

namespace A313578.P9580107718365136875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (2 * n + 3) - (A030129 (2 * (n + 1)) + 2)

end

end A313578.P9580107718365136875

/-! ## A313578.P5310512852642557316

`A003136(2*n+3)-2%A062860(3*n+4)`
-/

namespace A313578.P5310512852642557316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (2 * n + 3) - Int.tmod 2 (A062860 (3 * n + 4))

end

end A313578.P5310512852642557316

/-!
# A313579: Coordination sequence Gal.6.494.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313579, there is no canonical definition to state claims against.
-/

/-! ## A313579.P9277294945092174267

`A313521(n)+A037830(A068875(n))`
-/

namespace A313579.P9277294945092174267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313521 n + A037830 (A068875 n).toNat

end

end A313579.P9277294945092174267

/-! ## A313579.P17039696966885274418

`A311350(n)+A001222(A005095(n))`
-/

namespace A313579.P17039696966885274418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311350 n + A001222 (A005095 n).toNat

end

end A313579.P17039696966885274418

/-! ## A313579.P16349717177380898411

`A311351(n)+A001222(A005095(n))`
-/

namespace A313579.P16349717177380898411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311351 n + A001222 (A005095 n).toNat

end

end A313579.P16349717177380898411

/-! ## A313579.P18203323618448719083

`A311353(n)+A001222(A005095(n))`
-/

namespace A313579.P18203323618448719083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311353 n + A001222 (A005095 n).toNat

end

end A313579.P18203323618448719083

/-! ## A313579.P6647838232429038278

`A219529(n)-A001222(A291558(n))`
-/

namespace A313579.P6647838232429038278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A001222 (A291558 n).toNat

end

end A313579.P6647838232429038278

/-!
# A313580: Coordination sequence Gal.5.111.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313580, the canonical program `A313580.P11382536486156642147` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313580 has offset 0).

The definition of A313580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313580.P11382536486156642147

`A312908(n)+A004396(A004396(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313580

/-- `A312908(n)+A004396(A004396(n))` -/
def P11382536486156642147.Spec : Prop :=
  ∀ n, P11382536486156642147.a n = A313580 n

theorem P11382536486156642147.correct : P11382536486156642147.Spec := by
  intro n
  simp only [A313580]

end A313580

/-! ## A313580.P18421212101565441010

`A314736(n)+A004396(n-A004396(n))`
-/

namespace A313580.P18421212101565441010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313580.P18421212101565441010

namespace A313580

/-- `A314736(n)+A004396(n-A004396(n))` -/
def P18421212101565441010.Spec : Prop :=
  ∀ n, P18421212101565441010.a n = A313580 n

end A313580

/-! ## A313580.P2065765519446476896

`abs(A008592(n)-A313860(n))`
-/

namespace A313580.P2065765519446476896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313860 n|

end

end A313580.P2065765519446476896

namespace A313580

/-- `abs(A008592(n)-A313860(n))` -/
def P2065765519446476896.Spec : Prop :=
  ∀ n, P2065765519446476896.a n = A313580 n

end A313580

/-! ## A313580.P891650995456168263

`A008458(n)+A008574(n)-A313860(n)`
-/

namespace A313580.P891650995456168263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313860 n)

end

end A313580.P891650995456168263

namespace A313580

/-- `A008458(n)+A008574(n)-A313860(n)` -/
def P891650995456168263.Spec : Prop :=
  ∀ n, P891650995456168263.a n = A313580 n

end A313580

/-! ## A313580.P8303657253794712040

`∑{d}[A008592(n)-A313860(n), A000010(#)]`
-/

namespace A313580.P8303657253794712040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313580.P8303657253794712040

namespace A313580

/-- `∑{d}[A008592(n)-A313860(n), A000010(#)]` -/
def P8303657253794712040.Spec : Prop :=
  ∀ n, P8303657253794712040.a n = A313580 n

end A313580

/-! ## A313580.P17619088421044495014

`A314034(n)-A004396(n-A004396(n))`
-/

namespace A313580.P17619088421044495014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314034 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313580.P17619088421044495014

namespace A313580

/-- `A314034(n)-A004396(n-A004396(n))` -/
def P17619088421044495014.Spec : Prop :=
  ∀ n, P17619088421044495014.a n = A313580 n

end A313580

/-! ## A313580.P4165141473943201834

`A315427(n)-A004396(A004396(n))`
-/

namespace A313580.P4165141473943201834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315427 n - A004396 (A004396 n).toNat

end

end A313580.P4165141473943201834

namespace A313580

/-- `A315427(n)-A004396(A004396(n))` -/
def P4165141473943201834.Spec : Prop :=
  ∀ n, P4165141473943201834.a n = A313580 n

end A313580

/-! ## A313580.P1299442400443335482

`A313894(n)-Δ[2*A011862(n)]`
-/

namespace A313580.P1299442400443335482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - (f1 (n + 1) - f1 n)

end

end A313580.P1299442400443335482

namespace A313580

/-- `A313894(n)-Δ[2*A011862(n)]` -/
def P1299442400443335482.Spec : Prop :=
  ∀ n, P1299442400443335482.a n = A313580 n

end A313580

/-! ## A313580.P10957947935545336800

`A315495(n)-A004396(n)`
-/

namespace A313580.P10957947935545336800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - A004396 n

end

end A313580.P10957947935545336800

namespace A313580

/-- `A315495(n)-A004396(n)` -/
def P10957947935545336800.Spec : Prop :=
  ∀ n, P10957947935545336800.a n = A313580 n

end A313580

/-! ## A313580.P10927596626951938634

`A315495(n)-A002264(2*n+1)`
-/

namespace A313580.P10927596626951938634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - A002264 (2 * n + 1)

end

end A313580.P10927596626951938634

namespace A313580

/-- `A315495(n)-A002264(2*n+1)` -/
def P10927596626951938634.Spec : Prop :=
  ∀ n, P10927596626951938634.a n = A313580 n

end A313580

/-! ## A313580.P9849816492131948729

`A313746(n)-Δ[A011862(n)]`
-/

namespace A313580.P9849816492131948729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n - (f1 (n + 1) - f1 n)

end

end A313580.P9849816492131948729

namespace A313580

/-- `A313746(n)-Δ[A011862(n)]` -/
def P9849816492131948729.Spec : Prop :=
  ∀ n, P9849816492131948729.a n = A313580 n

end A313580

/-! ## A313580.P11846995776798572738

`2*A313746(n)-A313894(n)`
-/

namespace A313580.P11846995776798572738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313746 n - A313894 n

end

end A313580.P11846995776798572738

namespace A313580

/-- `2*A313746(n)-A313894(n)` -/
def P11846995776798572738.Spec : Prop :=
  ∀ n, P11846995776798572738.a n = A313580 n

end A313580

/-! ## A313580.P8270997853412977993

`A004396(A004396(n))+A313746(n)-A004396(n)`
-/

namespace A313580.P8270997853412977993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A313746 n - A004396 n)

end

end A313580.P8270997853412977993

namespace A313580

/-- `A004396(A004396(n))+A313746(n)-A004396(n)` -/
def P8270997853412977993.Spec : Prop :=
  ∀ n, P8270997853412977993.a n = A313580 n

end A313580

/-! ## A313580.P9355068832639256772

`A313894(n)-A005843(A313894(n)-A313746(n))`
-/

namespace A313580.P9355068832639256772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A005843 (A313894 n - A313746 n).toNat

end

end A313580.P9355068832639256772

namespace A313580

/-- `A313894(n)-A005843(A313894(n)-A313746(n))` -/
def P9355068832639256772.Spec : Prop :=
  ∀ n, P9355068832639256772.a n = A313580 n

end A313580

/-! ## A313580.P18044747964307447423

`A315546(n)-A004396(2*A004396(n))`
-/

namespace A313580.P18044747964307447423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315546 n - A004396 (2 * A004396 n).toNat

end

end A313580.P18044747964307447423

namespace A313580

/-- `A315546(n)-A004396(2*A004396(n))` -/
def P18044747964307447423.Spec : Prop :=
  ∀ n, P18044747964307447423.a n = A313580 n

end A313580

/-! ## A313580.P783634006234592424

`A265187(A008706(n)+1)-A265187(n+1)`
-/

namespace A313580.P783634006234592424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A008706 n + 1).toNat - A265187 (n + 1)

end

end A313580.P783634006234592424

namespace A313580

/-- `A265187(A008706(n)+1)-A265187(n+1)` -/
def P783634006234592424.Spec : Prop :=
  ∀ n, P783634006234592424.a n = A313580 n

end A313580

/-! ## A313580.P7574187163224336254

`A005843(A313746(n))-A313894(n)`
-/

namespace A313580.P7574187163224336254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313746 n).toNat - A313894 n

end

end A313580.P7574187163224336254

namespace A313580

/-- `A005843(A313746(n))-A313894(n)` -/
def P7574187163224336254.Spec : Prop :=
  ∀ n, P7574187163224336254.a n = A313580 n

end A313580

/-! ## A313580.P5219260846547912083

`A004396(2*n)+A004396(A315427(n))`
-/

namespace A313580.P5219260846547912083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315427 n).toNat

end

end A313580.P5219260846547912083

namespace A313580

/-- `A004396(2*n)+A004396(A315427(n))` -/
def P5219260846547912083.Spec : Prop :=
  ∀ n, P5219260846547912083.a n = A313580 n

end A313580

/-! ## A313580.P17485917277496039822

`A004396(A315427(n)+2*n)`
-/

namespace A313580.P17485917277496039822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315427 n + (2 * n : ℤ)).toNat

end

end A313580.P17485917277496039822

namespace A313580

/-- `A004396(A315427(n)+2*n)` -/
def P17485917277496039822.Spec : Prop :=
  ∀ n, P17485917277496039822.a n = A313580 n

end A313580

/-! ## A313580.P11865896075915760171

`A004396(A315427(n)+n+n)`
-/

namespace A313580.P11865896075915760171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315427 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313580.P11865896075915760171

namespace A313580

/-- `A004396(A315427(n)+n+n)` -/
def P11865896075915760171.Spec : Prop :=
  ∀ n, P11865896075915760171.a n = A313580 n

end A313580

/-!
# A313581: Coordination sequence Gal.4.57.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313581, there is no canonical definition to state claims against.
-/

/-! ## A313581.P6471743301053548355

`A008706(n)-A023969(A000700(A214022(n+2)))`
-/

namespace A313581.P6471743301053548355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A023969 (A000700 (A214022 (n + 2)).toNat).toNat

end

end A313581.P6471743301053548355

/-! ## A313581.P5245620401301131608

`A008706(n)-A023969(A175760(n+1))`
-/

namespace A313581.P5245620401301131608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A023969 (A175760 (n + 1)).toNat

end

end A313581.P5245620401301131608

/-! ## A313581.P7332577446816459366

`A008706(n)-A241917(A000010(A096620(n)))`
-/

namespace A313581.P7332577446816459366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A241917 (A000010 (A096620 n).toNat).toNat

end

end A313581.P7332577446816459366

/-! ## A313581.P11435760978323958332

`A320847(5*n)+∑[A000161(n)]`
-/

namespace A313581.P11435760978323958332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (5 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313581.P11435760978323958332

/-! ## A313581.P16611642437447926780

`A008706(n)-A289025(A000294(n))`
-/

namespace A313581.P16611642437447926780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A289025 (A000294 n).toNat

end

end A313581.P16611642437447926780

/-!
# A313582: Coordination sequence Gal.4.107.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313582, there is no canonical definition to state claims against.
-/

/-! ## A313582.P14279464305788649695

`A185012(A000700(n))+A163810((A016116(n+1)+1)²)+5*n`
-/

namespace A313582.P14279464305788649695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A000700 n).toNat + (A163810 ((A016116 (n + 1) + 1) ^ 2).toNat + (5 * n : ℤ))

end

end A313582.P14279464305788649695

/-! ## A313582.P3084713574735176473

`A313509(n)+A037800(A293360(n))`
-/

namespace A313582.P3084713574735176473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313509 n + A037800 (A293360 n).toNat

end

end A313582.P3084713574735176473

/-! ## A313582.P7574239138347378530

`A313747(n)-A051903(A054423(n))`
-/

namespace A313582.P7574239138347378530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313747 n - A051903 (A054423 n).toNat

end

end A313582.P7574239138347378530

/-! ## A313582.P5646607867498924841

`A311353(n)+A000720(A351870(n)+1)`
-/

namespace A313582.P5646607867498924841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311353 n + A000720 (A351870 n + 1).toNat

end

end A313582.P5646607867498924841

/-! ## A313582.P11481142146744795175

`∑[A182850(A080372(n+1))+1]`
-/

namespace A313582.P11481142146744795175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A080372 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313582.P11481142146744795175

/-!
# A313583: Coordination sequence Gal.6.345.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313583, the canonical program `A313583.P10974201529935160222` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313583 has offset 0).

The definition of A313583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2382 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313583.P11651323336816024174

`round(A314726(n)+n/3)`
-/

namespace A313583.P11651323336816024174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A314726 n : ℚ) + (n : ℚ) / 3)

end

end A313583.P11651323336816024174

namespace A313583

/-- `round(A314726(n)+n/3)` -/
def P11651323336816024174.Spec : Prop :=
  ∀ n, P11651323336816024174.a n = A313583 n

end A313583

/-! ## A313583.P10974201529935160222

`A047263(A311257(n)+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313583

/-- `A047263(A311257(n)+1)` -/
def P10974201529935160222.Spec : Prop :=
  ∀ n, P10974201529935160222.a n = A313583 n

theorem P10974201529935160222.correct : P10974201529935160222.Spec := by
  intro n
  simp only [A313583]

end A313583

/-! ## A313583.P3301093423388848792

`abs(A008592(n)-A313859(n))`
-/

namespace A313583.P3301093423388848792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313859 n|

end

end A313583.P3301093423388848792

namespace A313583

/-- `abs(A008592(n)-A313859(n))` -/
def P3301093423388848792.Spec : Prop :=
  ∀ n, P3301093423388848792.a n = A313583 n

end A313583

/-! ## A313583.P1349374563578263341

`floor(A010015(n)/A313859(n))`
-/

namespace A313583.P1349374563578263341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313859 n : ℚ)⌋

end

end A313583.P1349374563578263341

namespace A313583

/-- `floor(A010015(n)/A313859(n))` -/
def P1349374563578263341.Spec : Prop :=
  ∀ n, P1349374563578263341.a n = A313583 n

end A313583

/-! ## A313583.P1751529773037078447

`A314726(n)+A002264(n+1)`
-/

namespace A313583.P1751529773037078447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314726 n + A002264 (n + 1)

end

end A313583.P1751529773037078447

namespace A313583

/-- `A314726(n)+A002264(n+1)` -/
def P1751529773037078447.Spec : Prop :=
  ∀ n, P1751529773037078447.a n = A313583 n

end A313583

/-! ## A313583.P2389211931169043084

`A314726(n)+n-A004396(n)`
-/

namespace A313583.P2389211931169043084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314726 n + ((n : ℤ) - A004396 n)

end

end A313583.P2389211931169043084

namespace A313583

/-- `A314726(n)+n-A004396(n)` -/
def P2389211931169043084.Spec : Prop :=
  ∀ n, P2389211931169043084.a n = A313583 n

end A313583

/-! ## A313583.P3525529339863600217

`A008458(n)+A008574(n)-A313859(n)`
-/

namespace A313583.P3525529339863600217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313859 n)

end

end A313583.P3525529339863600217

namespace A313583

/-- `A008458(n)+A008574(n)-A313859(n)` -/
def P3525529339863600217.Spec : Prop :=
  ∀ n, P3525529339863600217.a n = A313583 n

end A313583

/-! ## A313583.P9126933473436386572

`A008486(n)+A314726(n)-A008576(n)`
-/

namespace A313583.P9126933473436386572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314726 n - A008576 n)

end

end A313583.P9126933473436386572

namespace A313583

/-- `A008486(n)+A314726(n)-A008576(n)` -/
def P9126933473436386572.Spec : Prop :=
  ∀ n, P9126933473436386572.a n = A313583 n

end A313583

/-! ## A313583.P4807296948036463170

`A004525(n)+A313739(n)-A004396(n)`
-/

namespace A313583.P4807296948036463170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313739 n - A004396 n)

end

end A313583.P4807296948036463170

namespace A313583

/-- `A004525(n)+A313739(n)-A004396(n)` -/
def P4807296948036463170.Spec : Prop :=
  ∀ n, P4807296948036463170.a n = A313583 n

end A313583

/-! ## A313583.P14143334161258482184

`A314737(n)+A004525(n-A004396(n))`
-/

namespace A313583.P14143334161258482184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313583.P14143334161258482184

namespace A313583

/-- `A314737(n)+A004525(n-A004396(n))` -/
def P14143334161258482184.Spec : Prop :=
  ∀ n, P14143334161258482184.a n = A313583 n

end A313583

/-! ## A313583.P15583288963559644732

`A314134(n)-Δ[A011848(n)]`
-/

namespace A313583.P15583288963559644732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314134 n - (f1 (n + 1) - f1 n)

end

end A313583.P15583288963559644732

namespace A313583

/-- `A314134(n)-Δ[A011848(n)]` -/
def P15583288963559644732.Spec : Prop :=
  ∀ n, P15583288963559644732.a n = A313583 n

end A313583

/-! ## A313583.P4509685715861079650

`A314134(n)-A004524(n+1)`
-/

namespace A313583.P4509685715861079650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314134 n - A004524 (n + 1)

end

end A313583.P4509685715861079650

namespace A313583

/-- `A314134(n)-A004524(n+1)` -/
def P4509685715861079650.Spec : Prop :=
  ∀ n, P4509685715861079650.a n = A313583 n

end A313583

/-! ## A313583.P17299374357761565826

`A315499(n)-A004396(n)`
-/

namespace A313583.P17299374357761565826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315499 n - A004396 n

end

end A313583.P17299374357761565826

namespace A313583

/-- `A315499(n)-A004396(n)` -/
def P17299374357761565826.Spec : Prop :=
  ∀ n, P17299374357761565826.a n = A313583 n

end A313583

/-! ## A313583.P1897667358736841634

`A315499(n)-A002264(2*n+1)`
-/

namespace A313583.P1897667358736841634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315499 n - A002264 (2 * n + 1)

end

end A313583.P1897667358736841634

namespace A313583

/-- `A315499(n)-A002264(2*n+1)` -/
def P1897667358736841634.Spec : Prop :=
  ∀ n, P1897667358736841634.a n = A313583 n

end A313583

/-! ## A313583.P4798657536762899475

`A074067(A313859(n))`
-/

namespace A313583.P4798657536762899475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313859 n).toNat

end

end A313583.P4798657536762899475

namespace A313583

/-- `A074067(A313859(n))` -/
def P4798657536762899475.Spec : Prop :=
  ∀ n, P4798657536762899475.a n = A313583 n

end A313583

/-!
# A313584: Coordination sequence Gal.6.491.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313584, there is no canonical definition to state claims against.
-/

/-! ## A313584.P6763584207185937439

`A314738(n)+A001222(A091149(n))`
-/

namespace A313584.P6763584207185937439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314738 n + A001222 (A091149 n).toNat

end

end A313584.P6763584207185937439

/-! ## A313584.P8867583994007306380

`A314903(n)+A262988(A149499(n))`
-/

namespace A313584.P8867583994007306380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n + A262988 (A149499 n).toNat

end

end A313584.P8867583994007306380

/-! ## A313584.P9765429757957335032

`A313592(n)-Δ[A178602(A313888(n))]`
-/

namespace A313584.P9765429757957335032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178602 (A313888 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313592 n - (f1 (n + 1) - f1 n)

end

end A313584.P9765429757957335032

/-! ## A313584.P740179971305751003

`A297030(A302691(n)+1)+A016813(n)`
-/

namespace A313584.P740179971305751003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297030 (A302691 n + 1).toNat + A016813 n

end

end A313584.P740179971305751003

/-! ## A313584.P17867248430339191464

`or(A067699(n+1), A078461(A279572(n)))`
-/

namespace A313584.P17867248430339191464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067699 (n + 1)) (A078461 (A279572 n).toNat)

end

end A313584.P17867248430339191464

/-!
# A313585: Coordination sequence Gal.4.124.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313585, there is no canonical definition to state claims against.
-/

/-! ## A313585.P15877245076900696896

`A075326(n)+A000002(A116950(n))`
-/

namespace A313585.P15877245076900696896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n + A000002 (A116950 n).toNat

end

end A313585.P15877245076900696896

/-! ## A313585.P17222918187976878030

`A311374(n)+A001221(A202834(n))`
-/

namespace A313585.P17222918187976878030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311374 n + A001221 (A202834 n).toNat

end

end A313585.P17222918187976878030

/-! ## A313585.P2130559484591489490

`A342770(A324741(n))+A342742(n+1)`
-/

namespace A313585.P2130559484591489490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342770 (A324741 n).toNat + A342742 (n + 1)

end

end A313585.P2130559484591489490

/-! ## A313585.P8690840872037354234

`A301708(n)-A001221(A005436(n+2))`
-/

namespace A313585.P8690840872037354234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n - A001221 (A005436 (n + 2)).toNat

end

end A313585.P8690840872037354234

/-! ## A313585.P970366745481951524

`A314727(n)+A097795(A313914(2*(n+1)))`
-/

namespace A313585.P970366745481951524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314727 n + A097795 (A313914 (2 * (n + 1))).toNat

end

end A313585.P970366745481951524

/-!
# A313586: Coordination sequence Gal.6.484.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313586, there is no canonical definition to state claims against.
-/

/-! ## A313586.P18111233119925262661

`∑[A088043(A066048(n+1))]`
-/

namespace A313586.P18111233119925262661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088043 (A066048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313586.P18111233119925262661

/-! ## A313586.P11044271294988464990

`A313581(n)+A036866(floor(n/2)!)`
-/

namespace A313586.P11044271294988464990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313581 n + A036866 (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat)

end

end A313586.P11044271294988464990

/-! ## A313586.P12749416372656784501

`A313581(n)+A033665(A000332(n))`
-/

namespace A313586.P12749416372656784501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313581 n + A033665 (A000332 n).toNat

end

end A313586.P12749416372656784501

/-! ## A313586.P805454167000510238

`A313525(n)+A037800(A041281(n))`
-/

namespace A313586.P805454167000510238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313525 n + A037800 (A041281 n).toNat

end

end A313586.P805454167000510238

/-! ## A313586.P7625616826166892133

`A301678(n)-A079559(A305120(n+3))`
-/

namespace A313586.P7625616826166892133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A079559 (A305120 (n + 3)).toNat

end

end A313586.P7625616826166892133

/-!
# A313587: Coordination sequence Gal.6.484.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313587, there is no canonical definition to state claims against.
-/

/-! ## A313587.P16601494947377612227

`or(A011746(A168657(3*n+1)), A313582(n))`
-/

namespace A313587.P16601494947377612227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011746 (A168657 (3 * n + 1)).toNat) (A313582 n)

end

end A313587.P16601494947377612227

/-! ## A313587.P3834762434602275707

`A313581(n)+A102675(A003462(n))`
-/

namespace A313587.P3834762434602275707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313581 n + A102675 (A003462 n).toNat

end

end A313587.P3834762434602275707

/-! ## A313587.P8655478400492563619

`A312001(n)+A126241(A007051(n))`
-/

namespace A313587.P8655478400492563619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312001 n + A126241 (A007051 n).toNat

end

end A313587.P8655478400492563619

/-! ## A313587.P17415953649420643925

`A314125(n)-A001221(A294760(n))`
-/

namespace A313587.P17415953649420643925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314125 n - A001221 (A294760 n).toNat

end

end A313587.P17415953649420643925

/-! ## A313587.P8928512884000318606

`A314118(n)-A193238(A186707(n))`
-/

namespace A313587.P8928512884000318606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314118 n - A193238 (A186707 n).toNat

end

end A313587.P8928512884000318606

/-!
# A313588: Coordination sequence Gal.5.271.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313588, there is no canonical definition to state claims against.
-/

/-! ## A313588.P825243752839320731

`(A315612(n)+A008579(n))/2`
-/

namespace A313588.P825243752839320731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315612 n + A008579 n : ℚ) / 2

end

end A313588.P825243752839320731

/-! ## A313588.P10772065273038472965

`A014682(A315612(n)+A008579(n))`
-/

namespace A313588.P10772065273038472965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315612 n + A008579 n).toNat

end

end A313588.P10772065273038472965

/-! ## A313588.P15307307362459497465

`A008579(n)+A001281(A315612(n)-A008579(n))`
-/

namespace A313588.P15307307362459497465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001281 (A315612 n - A008579 n).toNat

end

end A313588.P15307307362459497465

/-! ## A313588.P13929721363436520751

`A008579(n)+A004525(A315612(n)-A008579(n))`
-/

namespace A313588.P13929721363436520751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A004525 (A315612 n - A008579 n).toNat

end

end A313588.P13929721363436520751

/-! ## A313588.P9055629927056292810

`A008579(n)+A006370(A315612(n)-A008579(n))`
-/

namespace A313588.P9055629927056292810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A006370 (A315612 n - A008579 n).toNat

end

end A313588.P9055629927056292810

/-! ## A313588.P11141510996765468729

`A025480(A315612(n)-A008579(n))+A008579(n)`
-/

namespace A313588.P11141510996765468729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315612 n - A008579 n).toNat + A008579 n

end

end A313588.P11141510996765468729

/-! ## A313588.P11433102325279778340

`A026741(A315612(n)-A008579(n))+A008579(n)`
-/

namespace A313588.P11433102325279778340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315612 n - A008579 n).toNat + A008579 n

end

end A313588.P11433102325279778340

/-! ## A313588.P10358619463673645846

`A142150(A315612(n)-A008579(n))+A008579(n)`
-/

namespace A313588.P10358619463673645846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A315612 n - A008579 n).toNat + A008579 n

end

end A313588.P10358619463673645846

/-! ## A313588.P5745527689866269424

`A315612(n)-A004526(A315612(n)-A008579(n))`
-/

namespace A313588.P5745527689866269424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315612 n - A004526 (A315612 n - A008579 n).toNat

end

end A313588.P5745527689866269424

/-! ## A313588.P9713516229043060416

`A001281(A315612(n)+A008579(n))`
-/

namespace A313588.P9713516229043060416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315612 n + A008579 n).toNat

end

end A313588.P9713516229043060416

/-! ## A313588.P16563403046972617385

`A004525(A315612(n)+A008579(n))`
-/

namespace A313588.P16563403046972617385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315612 n + A008579 n).toNat

end

end A313588.P16563403046972617385

/-! ## A313588.P398316864721350672

`A004526(A315612(n)+A008579(n))`
-/

namespace A313588.P398316864721350672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315612 n + A008579 n).toNat

end

end A313588.P398316864721350672

/-! ## A313588.P5221218420485373393

`A006370(A315612(n)+A008579(n))`
-/

namespace A313588.P5221218420485373393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A315612 n + A008579 n).toNat

end

end A313588.P5221218420485373393

/-! ## A313588.P8886937131573472615

`A025480(A315612(n)+A008579(n))`
-/

namespace A313588.P8886937131573472615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315612 n + A008579 n).toNat

end

end A313588.P8886937131573472615

/-! ## A313588.P16013469567272613626

`A026741(A315612(n)+A008579(n))`
-/

namespace A313588.P16013469567272613626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315612 n + A008579 n).toNat

end

end A313588.P16013469567272613626

/-! ## A313588.P4889618287264668419

`A142150(A315612(n)+A008579(n))`
-/

namespace A313588.P4889618287264668419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A315612 n + A008579 n).toNat

end

end A313588.P4889618287264668419

/-!
# A313589: Coordination sequence Gal.5.141.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313589, the canonical program `A313589.P17445481109569787276` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313589 has offset 0).

The definition of A313589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313589.P17445481109569787276

`abs(A008592(n)-A313855(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313589

/-- `abs(A008592(n)-A313855(n))` -/
def P17445481109569787276.Spec : Prop :=
  ∀ n, P17445481109569787276.a n = A313589 n

theorem P17445481109569787276.correct : P17445481109569787276.Spec := by
  intro n
  simp only [A313589]

end A313589

/-! ## A313589.P8986394541266581184

`floor(A010015(n)/A313855(n))`
-/

namespace A313589.P8986394541266581184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313855 n : ℚ)⌋

end

end A313589.P8986394541266581184

namespace A313589

/-- `floor(A010015(n)/A313855(n))` -/
def P8986394541266581184.Spec : Prop :=
  ∀ n, P8986394541266581184.a n = A313589 n

end A313589

/-! ## A313589.P4398458569803005590

`2*A008706(n)-A313855(n)`
-/

namespace A313589.P4398458569803005590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313855 n

end

end A313589.P4398458569803005590

namespace A313589

/-- `2*A008706(n)-A313855(n)` -/
def P4398458569803005590.Spec : Prop :=
  ∀ n, P4398458569803005590.a n = A313589 n

end A313589

/-! ## A313589.P3830080897846439163

`A311289(n)+A057354(2*n+1)`
-/

namespace A313589.P3830080897846439163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + A057354 (2 * n + 1)

end

end A313589.P3830080897846439163

namespace A313589

/-- `A311289(n)+A057354(2*n+1)` -/
def P3830080897846439163.Spec : Prop :=
  ∀ n, P3830080897846439163.a n = A313589 n

end A313589

/-! ## A313589.P13567917299762494397

`A312903(n)+A004525(A151988(n))`
-/

namespace A313589.P13567917299762494397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + A004525 (A151988 n).toNat

end

end A313589.P13567917299762494397

namespace A313589

/-- `A312903(n)+A004525(A151988(n))` -/
def P13567917299762494397.Spec : Prop :=
  ∀ n, P13567917299762494397.a n = A313589 n

end A313589

/-! ## A313589.P3209168553029843735

`A008458(n)+A008574(n)-A313855(n)`
-/

namespace A313589.P3209168553029843735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313855 n)

end

end A313589.P3209168553029843735

namespace A313589

/-- `A008458(n)+A008574(n)-A313855(n)` -/
def P3209168553029843735.Spec : Prop :=
  ∀ n, P3209168553029843735.a n = A313589 n

end A313589

/-! ## A313589.P13236255739714589082

`A313255(n)+A244895(n)`
-/

namespace A313589.P13236255739714589082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313255 n + A244895 n

end

end A313589.P13236255739714589082

namespace A313589

/-- `A313255(n)+A244895(n)` -/
def P13236255739714589082.Spec : Prop :=
  ∀ n, P13236255739714589082.a n = A313589 n

end A313589

/-! ## A313589.P6236868618278701638

`A330025(2*n)+A313255(n)`
-/

namespace A313589.P6236868618278701638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (2 * n) + A313255 n

end

end A313589.P6236868618278701638

namespace A313589

/-- `A330025(2*n)+A313255(n)` -/
def P6236868618278701638.Spec : Prop :=
  ∀ n, P6236868618278701638.a n = A313589 n

end A313589

/-! ## A313589.P8590596793093723047

`A315412(n)-A330025(n)`
-/

namespace A313589.P8590596793093723047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315412 n - A330025 n

end

end A313589.P8590596793093723047

namespace A313589

/-- `A315412(n)-A330025(n)` -/
def P8590596793093723047.Spec : Prop :=
  ∀ n, P8590596793093723047.a n = A313589 n

end A313589

/-! ## A313589.P3466187079233051444

`A313752(n)-A002266(n+2)`
-/

namespace A313589.P3466187079233051444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n - A002266 (n + 2)

end

end A313589.P3466187079233051444

namespace A313589

/-- `A313752(n)-A002266(n+2)` -/
def P3466187079233051444.Spec : Prop :=
  ∀ n, P3466187079233051444.a n = A313589 n

end A313589

/-! ## A313589.P9732096518465510009

`A074067(A313855(n))`
-/

namespace A313589.P9732096518465510009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313855 n).toNat

end

end A313589.P9732096518465510009

namespace A313589

/-- `A074067(A313855(n))` -/
def P9732096518465510009.Spec : Prop :=
  ∀ n, P9732096518465510009.a n = A313589 n

end A313589

/-! ## A313589.P75095132278059940

`A005843(A008706(n))-A313855(n)`
-/

namespace A313589.P75095132278059940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313855 n

end

end A313589.P75095132278059940

namespace A313589

/-- `A005843(A008706(n))-A313855(n)` -/
def P75095132278059940.Spec : Prop :=
  ∀ n, P75095132278059940.a n = A313589 n

end A313589

/-! ## A313589.P6164847146252390522

`A072154(n)+A314164(n)-A008486(n)`
-/

namespace A313589.P6164847146252390522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + (A314164 n - A008486 n)

end

end A313589.P6164847146252390522

namespace A313589

/-- `A072154(n)+A314164(n)-A008486(n)` -/
def P6164847146252390522.Spec : Prop :=
  ∀ n, P6164847146252390522.a n = A313589 n

end A313589

/-!
# A313590: Coordination sequence Gal.6.493.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313590, there is no canonical definition to state claims against.
-/

/-! ## A313590.P3967582479221594199

`A313589(n)+A082784(A063727(n))`
-/

namespace A313590.P3967582479221594199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313589 n + A082784 (A063727 n).toNat

end

end A313590.P3967582479221594199

/-! ## A313590.P7988980220033496531

`A313589(n)+A151795(A001629(n))`
-/

namespace A313590.P7988980220033496531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313589 n + A151795 (A001629 n).toNat

end

end A313590.P7988980220033496531

/-! ## A313590.P3442308283214966315

`A313591(n)+A178798(A022086(n))`
-/

namespace A313590.P3442308283214966315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313591 n + A178798 (A022086 n).toNat

end

end A313590.P3442308283214966315

/-! ## A313590.P18262773225036130982

`A314123(n)-A067029(A139627(n))`
-/

namespace A313590.P18262773225036130982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314123 n - A067029 (A139627 n).toNat

end

end A313590.P18262773225036130982

/-! ## A313590.P17783461195728532180

`A313739(n)-A007949(A328435(n))`
-/

namespace A313590.P17783461195728532180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n - A007949 (A328435 n).toNat

end

end A313590.P17783461195728532180

/-!
# A313591: Coordination sequence Gal.6.346.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313591, the canonical program `A313591.P3620371697952405827` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313591 has offset 0).

The definition of A313591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313591.P16624173932558404609

`abs(A008592(n)-A313854(n))`
-/

namespace A313591.P16624173932558404609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313854 n|

end

end A313591.P16624173932558404609

namespace A313591

/-- `abs(A008592(n)-A313854(n))` -/
def P16624173932558404609.Spec : Prop :=
  ∀ n, P16624173932558404609.a n = A313591 n

end A313591

/-! ## A313591.P14095037532553665076

`2*A008706(n)-A313854(n)`
-/

namespace A313591.P14095037532553665076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313854 n

end

end A313591.P14095037532553665076

namespace A313591

/-- `2*A008706(n)-A313854(n)` -/
def P14095037532553665076.Spec : Prop :=
  ∀ n, P14095037532553665076.a n = A313591 n

end A313591

/-! ## A313591.P12298853165146643545

`(A315638(n)+A311635(n))/2`
-/

namespace A313591.P12298853165146643545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315638 n + A311635 n : ℚ) / 2

end

end A313591.P12298853165146643545

namespace A313591

/-- `(A315638(n)+A311635(n))/2` -/
def P12298853165146643545.Spec : Prop :=
  ∀ n, P12298853165146643545.a n = (A313591 n : ℚ)

end A313591

/-! ## A313591.P5704798259990614368

`A135042(2*n+1)-A313854(n)`
-/

namespace A313591.P5704798259990614368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313854 n

end

end A313591.P5704798259990614368

namespace A313591

/-- `A135042(2*n+1)-A313854(n)` -/
def P5704798259990614368.Spec : Prop :=
  ∀ n, P5704798259990614368.a n = A313591 n

end A313591

/-! ## A313591.P9658590186076710761

`A008458(n)+A008574(n)-A313854(n)`
-/

namespace A313591.P9658590186076710761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313854 n)

end

end A313591.P9658590186076710761

namespace A313591

/-- `A008458(n)+A008574(n)-A313854(n)` -/
def P9658590186076710761.Spec : Prop :=
  ∀ n, P9658590186076710761.a n = A313591 n

end A313591

/-! ## A313591.P18225415381767722214

`(A008592(n)-A313854(n))^(1-A000007(n))`
-/

namespace A313591.P18225415381767722214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A313854 n : ℚ) ^ (1 - A000007 n : ℤ)

end

end A313591.P18225415381767722214

namespace A313591

/-- `(A008592(n)-A313854(n))^(1-A000007(n))` -/
def P18225415381767722214.Spec : Prop :=
  ∀ n, P18225415381767722214.a n = (A313591 n : ℚ)

end A313591

/-! ## A313591.P18230523914770691218

`lcm(A008592(n)-A313854(n), A001222(4-(-1)^n))`
-/

namespace A313591.P18230523914770691218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008592 n - A313854 n) (A001222 (4 - (-1) ^ n).toNat)

end

end A313591.P18230523914770691218

namespace A313591

/-- `lcm(A008592(n)-A313854(n), A001222(4-(-1)^n))` -/
def P18230523914770691218.Spec : Prop :=
  ∀ n, (P18230523914770691218.a n : ℤ) = A313591 n

end A313591

/-! ## A313591.P3620371697952405827

`A311635(n)+A004525(A315638(n)-A311635(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A313591

/-- `A311635(n)+A004525(A315638(n)-A311635(n))` -/
def P3620371697952405827.Spec : Prop :=
  ∀ n, P3620371697952405827.a n = A313591 n

theorem P3620371697952405827.correct : P3620371697952405827.Spec := by
  intro n
  simp only [A313591]

end A313591

/-! ## A313591.P14855148965447967856

`(A315642(n)+A311553(n))/2`
-/

namespace A313591.P14855148965447967856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315642 n + A311553 n : ℚ) / 2

end

end A313591.P14855148965447967856

namespace A313591

/-- `(A315642(n)+A311553(n))/2` -/
def P14855148965447967856.Spec : Prop :=
  ∀ n, P14855148965447967856.a n = (A313591 n : ℚ)

end A313591

/-! ## A313591.P13528550047527996141

`A311553(n)+A001281(A315642(n)-A311553(n))`
-/

namespace A313591.P13528550047527996141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311553 n + A001281 (A315642 n - A311553 n).toNat

end

end A313591.P13528550047527996141

namespace A313591

/-- `A311553(n)+A001281(A315642(n)-A311553(n))` -/
def P13528550047527996141.Spec : Prop :=
  ∀ n, P13528550047527996141.a n = A313591 n

end A313591

/-! ## A313591.P15844606580983713671

`A311553(n)+A004525(A315642(n)-A311553(n))`
-/

namespace A313591.P15844606580983713671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311553 n + A004525 (A315642 n - A311553 n).toNat

end

end A313591.P15844606580983713671

namespace A313591

/-- `A311553(n)+A004525(A315642(n)-A311553(n))` -/
def P15844606580983713671.Spec : Prop :=
  ∀ n, P15844606580983713671.a n = A313591 n

end A313591

/-! ## A313591.P10507433620279603727

`A005843(A008706(n))-A313854(n)`
-/

namespace A313591.P10507433620279603727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313854 n

end

end A313591.P10507433620279603727

namespace A313591

/-- `A005843(A008706(n))-A313854(n)` -/
def P10507433620279603727.Spec : Prop :=
  ∀ n, P10507433620279603727.a n = A313591 n

end A313591

/-! ## A313591.P13901199668942060196

`A001281(A315642(n)+A311553(n))`
-/

namespace A313591.P13901199668942060196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315642 n + A311553 n).toNat

end

end A313591.P13901199668942060196

namespace A313591

/-- `A001281(A315642(n)+A311553(n))` -/
def P13901199668942060196.Spec : Prop :=
  ∀ n, P13901199668942060196.a n = A313591 n

end A313591

/-! ## A313591.P14752966735413697702

`A004525(A313572(n)+A310423(n))`
-/

namespace A313591.P14752966735413697702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313572 n + A310423 n).toNat

end

end A313591.P14752966735413697702

namespace A313591

/-- `A004525(A313572(n)+A310423(n))` -/
def P14752966735413697702.Spec : Prop :=
  ∀ n, P14752966735413697702.a n = A313591 n

end A313591

/-! ## A313591.P15042429170220107150

`A004525(A315642(n)+A311553(n))`
-/

namespace A313591.P15042429170220107150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315642 n + A311553 n).toNat

end

end A313591.P15042429170220107150

namespace A313591

/-- `A004525(A315642(n)+A311553(n))` -/
def P15042429170220107150.Spec : Prop :=
  ∀ n, P15042429170220107150.a n = A313591 n

end A313591

/-! ## A313591.P17742910811750053594

`A004525(A315638(n)+A311635(n))`
-/

namespace A313591.P17742910811750053594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315638 n + A311635 n).toNat

end

end A313591.P17742910811750053594

namespace A313591

/-- `A004525(A315638(n)+A311635(n))` -/
def P17742910811750053594.Spec : Prop :=
  ∀ n, P17742910811750053594.a n = A313591 n

end A313591

/-! ## A313591.P11951332953992365499

`A038459(A311553(n)+A315642(n)-1)`
-/

namespace A313591.P11951332953992365499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (A311553 n + (A315642 n - 1)).toNat

end

end A313591.P11951332953992365499

namespace A313591

/-- `A038459(A311553(n)+A315642(n)-1)` -/
def P11951332953992365499.Spec : Prop :=
  ∀ n, P11951332953992365499.a n = A313591 n

end A313591

/-! ## A313591.P523130624636183233

`A038459(A311553(n)-(1-A315642(n)))`
-/

namespace A313591.P523130624636183233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (A311553 n - (1 - A315642 n)).toNat

end

end A313591.P523130624636183233

namespace A313591

/-- `A038459(A311553(n)-(1-A315642(n)))` -/
def P523130624636183233.Spec : Prop :=
  ∀ n, P523130624636183233.a n = A313591 n

end A313591

/-!
# A313592: Coordination sequence Gal.6.347.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313592, the canonical program `A313592.P2623346939342566519` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313592 has offset 0).

The definition of A313592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313592.P2623346939342566519

`abs(A008592(n)-A313853(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313592

/-- `abs(A008592(n)-A313853(n))` -/
def P2623346939342566519.Spec : Prop :=
  ∀ n, P2623346939342566519.a n = A313592 n

theorem P2623346939342566519.correct : P2623346939342566519.Spec := by
  intro n
  simp only [A313592]

end A313592

/-! ## A313592.P15534684734423563735

`A314964(n)+∑[A131736(n)]`
-/

namespace A313592.P15534684734423563735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314964 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313592.P15534684734423563735

namespace A313592

/-- `A314964(n)+∑[A131736(n)]` -/
def P15534684734423563735.Spec : Prop :=
  ∀ n, P15534684734423563735.a n = A313592 n

end A313592

/-! ## A313592.P14046278811206031704

`2*A008706(n)-A313853(n)`
-/

namespace A313592.P14046278811206031704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313853 n

end

end A313592.P14046278811206031704

namespace A313592

/-- `2*A008706(n)-A313853(n)` -/
def P14046278811206031704.Spec : Prop :=
  ∀ n, P14046278811206031704.a n = A313592 n

end A313592

/-! ## A313592.P8237158545346400506

`A312963(n)+A004525(A004396(n))`
-/

namespace A313592.P8237158545346400506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n + A004525 (A004396 n).toNat

end

end A313592.P8237158545346400506

namespace A313592

/-- `A312963(n)+A004525(A004396(n))` -/
def P8237158545346400506.Spec : Prop :=
  ∀ n, P8237158545346400506.a n = A313592 n

end A313592

/-! ## A313592.P12561757168248438357

`A314742(n)+A004525(n-A004396(n))`
-/

namespace A313592.P12561757168248438357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314742 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313592.P12561757168248438357

namespace A313592

/-- `A314742(n)+A004525(n-A004396(n))` -/
def P12561757168248438357.Spec : Prop :=
  ∀ n, P12561757168248438357.a n = A313592 n

end A313592

/-! ## A313592.P17336910655520959396

`A008458(n)+A008574(n)-A313853(n)`
-/

namespace A313592.P17336910655520959396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313853 n)

end

end A313592.P17336910655520959396

namespace A313592

/-- `A008458(n)+A008574(n)-A313853(n)` -/
def P17336910655520959396.Spec : Prop :=
  ∀ n, P17336910655520959396.a n = A313592 n

end A313592

/-! ## A313592.P13518632382493279612

`A314964(n)+A128834(n-A128834(n))`
-/

namespace A313592.P13518632382493279612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314964 n + A128834 ((n : ℤ) - A128834 n).toNat

end

end A313592.P13518632382493279612

namespace A313592

/-- `A314964(n)+A128834(n-A128834(n))` -/
def P13518632382493279612.Spec : Prop :=
  ∀ n, P13518632382493279612.a n = A313592 n

end A313592

/-! ## A313592.P12169555665924453850

`A311536(n)+n-A002264(A030118(n))`
-/

namespace A313592.P12169555665924453850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + ((n : ℤ) - A002264 (A030118 n).toNat)

end

end A313592.P12169555665924453850

namespace A313592

/-- `A311536(n)+n-A002264(A030118(n))` -/
def P12169555665924453850.Spec : Prop :=
  ∀ n, P12169555665924453850.a n = A313592 n

end A313592

/-! ## A313592.P9473310749137514367

`A314737(n)+A004396(n-A004525(n))`
-/

namespace A313592.P9473310749137514367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313592.P9473310749137514367

namespace A313592

/-- `A314737(n)+A004396(n-A004525(n))` -/
def P9473310749137514367.Spec : Prop :=
  ∀ n, P9473310749137514367.a n = A313592 n

end A313592

/-! ## A313592.P6577134479008359335

`A005843(A008706(n))-A313853(n)`
-/

namespace A313592.P6577134479008359335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313853 n

end

end A313592.P6577134479008359335

namespace A313592

/-- `A005843(A008706(n))-A313853(n)` -/
def P6577134479008359335.Spec : Prop :=
  ∀ n, P6577134479008359335.a n = A313592 n

end A313592

/-! ## A313592.P7233396456145213245

`∏{d}[A008592(n)-A313853(n), A014963(#)]`
-/

namespace A313592.P7233396456145213245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A313592.P7233396456145213245

namespace A313592

/-- `∏{d}[A008592(n)-A313853(n), A014963(#)]` -/
def P7233396456145213245.Spec : Prop :=
  ∀ n, P7233396456145213245.a n = A313592 n

end A313592

/-!
# A313593: Coordination sequence Gal.6.564.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313593, there is no canonical definition to state claims against.
-/

/-! ## A313593.P4581674899900190031

`eq[A047388(A053344(n+1)), A309386(n)]`
-/

namespace A313593.P4581674899900190031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047388 (A053344 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313593.P4581674899900190031

/-! ## A313593.P14656516308413307126

`A314859(n)+A276974(A062705(2*(n+1)))`
-/

namespace A313593.P14656516308413307126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314859 n + A276974 (A062705 (2 * (n + 1))).toNat

end

end A313593.P14656516308413307126

/-!
# A313594: Coordination sequence Gal.6.467.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313594, there is no canonical definition to state claims against.
-/

/-! ## A313594.P10757335312180509418

`A314631(n)+A001221(A130275(n))`
-/

namespace A313594.P10757335312180509418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314631 n + A001221 (A130275 n).toNat

end

end A313594.P10757335312180509418

/-! ## A313594.P13566519731703594783

`A313595(n)-A185284(A311178(n))`
-/

namespace A313594.P13566519731703594783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313595 n - A185284 (A311178 n).toNat

end

end A313594.P13566519731703594783

/-! ## A313594.P9785252111889136521

`A313595(n)-A185284(A311842(n))`
-/

namespace A313594.P9785252111889136521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313595 n - A185284 (A311842 n).toNat

end

end A313594.P9785252111889136521

/-! ## A313594.P11792435979944361096

`A313595(n)-A185284(A313390(n))`
-/

namespace A313594.P11792435979944361096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313595 n - A185284 (A313390 n).toNat

end

end A313594.P11792435979944361096

/-! ## A313594.P4927340486910991881

`A145171(A260795(n+3))+A052928(A250120(n))`
-/

namespace A313594.P4927340486910991881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145171 (A260795 (n + 3)).toNat + A052928 (A250120 n).toNat

end

end A313594.P4927340486910991881

/-!
# A313595: Coordination sequence Gal.6.464.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313595, the canonical program `A313595.P182879092079943348` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313595 has offset 0).

The definition of A313595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313595.P182879092079943348

`2*A313575(n)-A313565(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313595

/-- `2*A313575(n)-A313565(n)` -/
def P182879092079943348.Spec : Prop :=
  ∀ n, P182879092079943348.a n = A313595 n

theorem P182879092079943348.correct : P182879092079943348.Spec := by
  intro n
  simp only [A313595]

end A313595

/-! ## A313595.P2759191105698978125

`A005843(A313575(n))-A313565(n)`
-/

namespace A313595.P2759191105698978125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313575 n).toNat - A313565 n

end

end A313595.P2759191105698978125

namespace A313595

/-- `A005843(A313575(n))-A313565(n)` -/
def P2759191105698978125.Spec : Prop :=
  ∀ n, P2759191105698978125.a n = A313595 n

end A313595

/-! ## A313595.P817643330096178441

`A315196(n)+A002264(n+1)-A090418(A090378(n))`
-/

namespace A313595.P817643330096178441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315196 n + A002264 (n + 1) - A090418 (A090378 n).toNat

end

end A313595.P817643330096178441

namespace A313595

/-- `A315196(n)+A002264(n+1)-A090418(A090378(n))` -/
def P817643330096178441.Spec : Prop :=
  ∀ n, P817643330096178441.a n = A313595 n

end A313595

/-! ## A313595.P3130929299822999152

`A314630(A091954(3^n))+n-floor(sqrt(n))`
-/

namespace A313595.P3130929299822999152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314630 (A091954 (3 ^ n)).toNat + ((n : ℤ) - (Nat.sqrt n : ℤ))

end

end A313595.P3130929299822999152

namespace A313595

/-- `A314630(A091954(3^n))+n-floor(sqrt(n))` -/
def P3130929299822999152.Spec : Prop :=
  ∀ n, P3130929299822999152.a n = A313595 n

end A313595

/-! ## A313595.P10849512435560067936

`A311270(n)+A001222(A123429(n+1))`
-/

namespace A313595.P10849512435560067936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311270 n + A001222 (A123429 (n + 1)).toNat

end

end A313595.P10849512435560067936

namespace A313595

/-- `A311270(n)+A001222(A123429(n+1))` -/
def P10849512435560067936.Spec : Prop :=
  ∀ n, P10849512435560067936.a n = A313595 n

end A313595

/-!
# A313596: Coordination sequence Gal.5.216.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313596, there is no canonical definition to state claims against.
-/

/-! ## A313596.P1511292662475057301

`A340832(A046717(n))+A314735(n)`
-/

namespace A313596.P1511292662475057301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340832 (A046717 n).toNat + A314735 n

end

end A313596.P1511292662475057301

/-! ## A313596.P8683907347864671416

`or(A257990(A056118(n)), A312561(n))`
-/

namespace A313596.P8683907347864671416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A257990 (A056118 n).toNat) (A312561 n)

end

end A313596.P8683907347864671416

/-! ## A313596.P10716693181679994119

`A314726(n)+A001222(A328439(n))`
-/

namespace A313596.P10716693181679994119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314726 n + A001222 (A328439 n).toNat

end

end A313596.P10716693181679994119

/-! ## A313596.P18295477630567140218

`or(A001221(A150223(n)), A312561(n))`
-/

namespace A313596.P18295477630567140218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A150223 n).toNat) (A312561 n)

end

end A313596.P18295477630567140218

/-! ## A313596.P15163344828500649130

`A313585(n)-A291137(A314339(3*n+1))`
-/

namespace A313596.P15163344828500649130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313585 n - A291137 (A314339 (3 * n + 1)).toNat

end

end A313596.P15163344828500649130

/-!
# A313597: Coordination sequence Gal.6.523.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313597, there is no canonical definition to state claims against.
-/

/-! ## A313597.P9867533854995419635

`A185235(A185235(n))+A313598(n)-A185235(n)`
-/

namespace A313597.P9867533854995419635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185235 (A185235 n).toNat + (A313598 n - A185235 n)

end

end A313597.P9867533854995419635

/-! ## A313597.P856463320745835536

`record[A313598(n)-A185235(n)]`
-/

namespace A313597.P856463320745835536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313598 n - A185235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313597.P856463320745835536

/-! ## A313597.P2439220272475627504

`record[A313598(n)-A309660(n)]`
-/

namespace A313597.P2439220272475627504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313598 n - A309660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313597.P2439220272475627504

/-! ## A313597.P12690073404498941323

`A313598(n)-A025469(A148217(n))`
-/

namespace A313597.P12690073404498941323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313598 n - A025469 (A148217 n).toNat

end

end A313597.P12690073404498941323

/-! ## A313597.P3182302267073326406

`A313598(n)-A031346(A351870(n))`
-/

namespace A313597.P3182302267073326406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313598 n - A031346 (A351870 n).toNat

end

end A313597.P3182302267073326406

/-!
# A313598: Coordination sequence Gal.6.522.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313598, there is no canonical definition to state claims against.
-/

/-! ## A313598.P17989470559898129360

`A313597(n)+A185238(A006926(n))`
-/

namespace A313598.P17989470559898129360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313597 n + A185238 (A006926 n).toNat

end

end A313598.P17989470559898129360

/-! ## A313598.P12201349885533970442

`A313597(n)+A120648(A120651(n))`
-/

namespace A313598.P12201349885533970442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313597 n + A120648 (A120651 n).toNat

end

end A313598.P12201349885533970442

/-! ## A313598.P15483898256389154279

`A313597(n)+A031346(A351870(n))`
-/

namespace A313598.P15483898256389154279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313597 n + A031346 (A351870 n).toNat

end

end A313598.P15483898256389154279

/-! ## A313598.P10215910357888219830

`A313597(n)+A014639(A147181(n+1))`
-/

namespace A313598.P10215910357888219830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313597 n + A014639 (A147181 (n + 1)).toNat

end

end A313598.P10215910357888219830

/-! ## A313598.P7453883215713568915

`A313597(n)+A185284(A190158(n+1))`
-/

namespace A313598.P7453883215713568915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313597 n + A185284 (A190158 (n + 1)).toNat

end

end A313598.P7453883215713568915

/-!
# A313599: Coordination sequence Gal.5.258.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313599, there is no canonical definition to state claims against.
-/

/-! ## A313599.P3259811757984734101

`A008592(n)-A315727(n)-A156258(n²+11+n)+2`
-/

namespace A313599.P3259811757984734101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315727 n - A156258 (n ^ 2 + 11 + n) + 2

end

end A313599.P3259811757984734101

/-! ## A313599.P9876601928681256094

`A314772(n)+A165560(A148728(n))`
-/

namespace A313599.P9876601928681256094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314772 n + A165560 (A148728 n).toNat

end

end A313599.P9876601928681256094

/-! ## A313599.P8695410282273561098

`A313589(n)+A082784(A278301(n))`
-/

namespace A313599.P8695410282273561098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313589 n + A082784 (A278301 n).toNat

end

end A313599.P8695410282273561098

/-! ## A313599.P8524745854100337412

`A314193(n)-A031346(A291255(n))`
-/

namespace A313599.P8524745854100337412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314193 n - A031346 (A291255 n).toNat

end

end A313599.P8524745854100337412

/-! ## A313599.P13531882448910962843

`A001227(A124302(n+1)+A097861(n))+4*n`
-/

namespace A313599.P13531882448910962843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A124302 (n + 1) + A097861 n).toNat + (4 * n : ℤ)

end

end A313599.P13531882448910962843

