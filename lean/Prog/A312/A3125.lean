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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.Opaque.C026

/-!
# A312500: Coordination sequence Gal.6.397.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312500, there is no canonical definition to state claims against.
-/

/-! ## A312500.P16974483739047162694

`A312501(n^A061674(n))`
-/

namespace A312500.P16974483739047162694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312501 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A061674 n : ℤ))).toNat

end

end A312500.P16974483739047162694

/-! ## A312500.P13029376467789136978

`A312501(n^A061906(n))`
-/

namespace A312500.P13029376467789136978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312501 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A061906 n : ℤ))).toNat

end

end A312500.P13029376467789136978

/-! ## A312500.P9350899069460161568

`A312501(n*A061906(n)²)`
-/

namespace A312500.P9350899069460161568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312501 ((n : ℤ) * A061906 n ^ 2).toNat

end

end A312500.P9350899069460161568

/-! ## A312500.P15422554005522586661

`A312501(n^A147206(n+1))`
-/

namespace A312500.P15422554005522586661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312501 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A147206 (n + 1) : ℤ))).toNat

end

end A312500.P15422554005522586661

/-! ## A312500.P9506790957282670241

`A312501(A062399(n))`
-/

namespace A312500.P9506790957282670241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312501 (A062399 n).toNat

end

end A312500.P9506790957282670241

/-!
# A312502: Coordination sequence Gal.5.127.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312502, there is no canonical definition to state claims against.
-/

/-! ## A312502.P16576339339590810897

`record[A057820(A025072(n+5))]`
-/

namespace A312502.P16576339339590810897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A025072 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312502.P16576339339590810897

/-! ## A312502.P13217520839161245887

`record[A312498(n)]%A136646(2*(n+1))`
-/

namespace A312502.P13217520839161245887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A136646 (2 * (n + 1)))

end

end A312502.P13217520839161245887

/-! ## A312502.P1306862291275076815

`record[A312498(n)]%A314100(A041055(n))`
-/

namespace A312502.P1306862291275076815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A314100 (A041055 n).toNat)

end

end A312502.P1306862291275076815

/-!
# A312503: Coordination sequence Gal.5.239.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312503, there is no canonical definition to state claims against.
-/

/-! ## A312503.P14064335962906221148

`A008579(n)-A325135(A052953(n))`
-/

namespace A312503.P14064335962906221148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A325135 (A052953 n).toNat

end

end A312503.P14064335962906221148

/-! ## A312503.P9503865684792625276

`A008579(n)-A275964(A181809(n+1))`
-/

namespace A312503.P9503865684792625276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A275964 (A181809 (n + 1)).toNat

end

end A312503.P9503865684792625276

/-! ## A312503.P1727039339148721688

`A008579(n)-A328959(A026551(n))`
-/

namespace A312503.P1727039339148721688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A328959 (A026551 n).toNat

end

end A312503.P1727039339148721688

/-! ## A312503.P13918047606533094067

`A008579(n)-A025466(A003418(n))`
-/

namespace A312503.P13918047606533094067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A025466 (A003418 n).toNat

end

end A312503.P13918047606533094067

/-! ## A312503.P10517192498303278586

`A008579(n)-A307598(A001190(n))`
-/

namespace A312503.P10517192498303278586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A307598 (A001190 n).toNat

end

end A312503.P10517192498303278586

/-!
# A312504: Coordination sequence Gal.6.520.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312504, there is no canonical definition to state claims against.
-/

/-! ## A312504.P13236283721750794747

`A008579(n)-A000122(A199545(n+1))`
-/

namespace A312504.P13236283721750794747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A000122 (A199545 (n + 1)).toNat

end

end A312504.P13236283721750794747

/-! ## A312504.P10283886604956001660

`A008579(n)-A051709(A063670(n))`
-/

namespace A312504.P10283886604956001660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A051709 (A063670 n).toNat

end

end A312504.P10283886604956001660

/-! ## A312504.P2303559463288689331

`A008579(n)-A248327(A347811(n))`
-/

namespace A312504.P2303559463288689331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A248327 (A347811 n).toNat

end

end A312504.P2303559463288689331

/-! ## A312504.P12112271071128668172

`A250122(2*n)-A248327(A347811(n))`
-/

namespace A312504.P12112271071128668172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 (2 * n) - A248327 (A347811 n).toNat

end

end A312504.P12112271071128668172

/-! ## A312504.P13376096823504371224

`A008579(n)-A278700(A000108(A208891(n)))`
-/

namespace A312504.P13376096823504371224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A278700 (A000108 (A208891 n).toNat).toNat

end

end A312504.P13376096823504371224

/-!
# A312505: Coordination sequence Gal.6.315.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312505, there is no canonical definition to state claims against.
-/

/-! ## A312505.P14846278577241561808

`A312432(n)+A244465(A003418(n))`
-/

namespace A312505.P14846278577241561808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312432 n + A244465 (A003418 n).toNat

end

end A312505.P14846278577241561808

/-! ## A312505.P1059381306280245343

`A312289(n)+A275962(A054878(n))`
-/

namespace A312505.P1059381306280245343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n + A275962 (A054878 n).toNat

end

end A312505.P1059381306280245343

/-! ## A312505.P8103062498404500710

`A250120(n)-A302243(A061057(n+1))`
-/

namespace A312505.P8103062498404500710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A302243 (A061057 (n + 1)).toNat

end

end A312505.P8103062498404500710

/-! ## A312505.P12497445136133118489

`A008579(n)+A008683(n+1)*A025466(A003418(n))`
-/

namespace A312505.P12497445136133118489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A008683 (n + 1) * A025466 (A003418 n).toNat

end

end A312505.P12497445136133118489

/-! ## A312505.P354760684579238909

`A078175(3*n+1)-A374683(round(C(n, 3)-n²/12))`
-/

namespace A312505.P354760684579238909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (3 * n + 1) - A374683 (SequenceMachineLib.roundAway ((Nat.choose n 3 : ℚ) - (n ^ 2 : ℚ) / 12)).toNat

end

end A312505.P354760684579238909

/-!
# A312506: Coordination sequence Gal.5.109.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312506, the canonical program `A312506.P16390298550000536768` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312506 has offset 0).

The definition of A312506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312506.P16390298550000536768

`A311843(n)+Δ[A011861(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A312506

/-- `A311843(n)+Δ[A011861(n)]` -/
def P16390298550000536768.Spec : Prop :=
  ∀ n, P16390298550000536768.a n = A312506 n

theorem P16390298550000536768.correct : P16390298550000536768.Spec := by
  intro n
  simp only [A312506]

end A312506

/-! ## A312506.P5009212480232648987

`2*A311843(n)-A008574(n)`
-/

namespace A312506.P5009212480232648987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311843 n - A008574 n

end

end A312506.P5009212480232648987

namespace A312506

/-- `2*A311843(n)-A008574(n)` -/
def P5009212480232648987.Spec : Prop :=
  ∀ n, P5009212480232648987.a n = A312506 n

end A312506

/-! ## A312506.P16631723147114262089

`A008574(n)+Δ[2*A011861(n)]`
-/

namespace A312506.P16631723147114262089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A312506.P16631723147114262089

namespace A312506

/-- `A008574(n)+Δ[2*A011861(n)]` -/
def P16631723147114262089.Spec : Prop :=
  ∀ n, P16631723147114262089.a n = A312506 n

end A312506

/-! ## A312506.P15994613716717088109

`A004277(comp[A004277(comp[3*n]+n)+1]+n)`
-/

namespace A312506.P15994613716717088109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n)

end

end A312506.P15994613716717088109

namespace A312506

/-- `A004277(comp[A004277(comp[3*n]+n)+1]+n)` -/
def P15994613716717088109.Spec : Prop :=
  ∀ n, P15994613716717088109.a n = A312506 n

end A312506

/-! ## A312506.P8102834717140453480

`A004275(A311843(n)-A004273(n))`
-/

namespace A312506.P8102834717140453480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311843 n - A004273 n).toNat

end

end A312506.P8102834717140453480

namespace A312506

/-- `A004275(A311843(n)-A004273(n))` -/
def P8102834717140453480.Spec : Prop :=
  ∀ n, P8102834717140453480.a n = A312506 n

end A312506

/-! ## A312506.P2985305345543054678

`A201629(A201629(n)/2)+A008574(n)`
-/

namespace A312506.P2985305345543054678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (SequenceMachineLib.roundAway ((A201629 n : ℚ) / 2)).toNat + A008574 n

end

end A312506.P2985305345543054678

namespace A312506

/-- `A201629(A201629(n)/2)+A008574(n)` -/
def P2985305345543054678.Spec : Prop :=
  ∀ n, P2985305345543054678.a n = A312506 n

end A312506

/-! ## A312506.P7150716845434155022

`A008458(n)-A201629(A004525(n)+n)`
-/

namespace A312506.P7150716845434155022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A201629 (A004525 n + (n : ℤ)).toNat

end

end A312506.P7150716845434155022

namespace A312506

/-- `A008458(n)-A201629(A004525(n)+n)` -/
def P7150716845434155022.Spec : Prop :=
  ∀ n, P7150716845434155022.a n = A312506 n

end A312506

/-! ## A312506.P11183065907030678288

`A004273(A311843(n)-n)-A004273(n)`
-/

namespace A312506.P11183065907030678288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A311843 n - (n : ℤ)).toNat - A004273 n

end

end A312506.P11183065907030678288

namespace A312506

/-- `A004273(A311843(n)-n)-A004273(n)` -/
def P11183065907030678288.Spec : Prop :=
  ∀ n, P11183065907030678288.a n = A312506 n

end A312506

/-! ## A312506.P15635787685373262574

`A314829(n)-A046978(A046978(n)+n)`
-/

namespace A312506.P15635787685373262574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A312506.P15635787685373262574

namespace A312506

/-- `A314829(n)-A046978(A046978(n)+n)` -/
def P15635787685373262574.Spec : Prop :=
  ∀ n, P15635787685373262574.a n = A312506 n

end A312506

/-! ## A312506.P3339897485449211579

`A315020(n)-A004525(A004525(n))`
-/

namespace A312506.P3339897485449211579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315020 n - A004525 (A004525 n).toNat

end

end A312506.P3339897485449211579

namespace A312506

/-- `A315020(n)-A004525(A004525(n))` -/
def P3339897485449211579.Spec : Prop :=
  ∀ n, P3339897485449211579.a n = A312506 n

end A312506

/-! ## A312506.P2035704973410559913

`A004275(A311843(n))-A004275(2*n)`
-/

namespace A312506.P2035704973410559913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311843 n).toNat - A004275 (2 * n)

end

end A312506.P2035704973410559913

namespace A312506

/-- `A004275(A311843(n))-A004275(2*n)` -/
def P2035704973410559913.Spec : Prop :=
  ∀ n, P2035704973410559913.a n = A312506 n

end A312506

/-! ## A312506.P9239670645892511296

`A315061(n)-A004525(n)`
-/

namespace A312506.P9239670645892511296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - A004525 n

end

end A312506.P9239670645892511296

namespace A312506

/-- `A315061(n)-A004525(n)` -/
def P9239670645892511296.Spec : Prop :=
  ∀ n, P9239670645892511296.a n = A312506 n

end A312506

/-! ## A312506.P1035927937279430945

`A315061(n)-Δ[A054925(n)]`
-/

namespace A312506.P1035927937279430945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - (f1 (n + 1) - f1 n)

end

end A312506.P1035927937279430945

namespace A312506

/-- `A315061(n)-Δ[A054925(n)]` -/
def P1035927937279430945.Spec : Prop :=
  ∀ n, P1035927937279430945.a n = A312506 n

end A312506

/-! ## A312506.P986589541444531084

`∑[A021913(n)]+A315061(n)-n`
-/

namespace A312506.P986589541444531084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315061 n - (n : ℤ))

end

end A312506.P986589541444531084

namespace A312506

/-- `∑[A021913(n)]+A315061(n)-n` -/
def P986589541444531084.Spec : Prop :=
  ∀ n, P986589541444531084.a n = A312506 n

end A312506

/-! ## A312506.P16117029829924176401

`2*A313875(n)-A008458(n)`
-/

namespace A312506.P16117029829924176401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313875 n - A008458 n

end

end A312506.P16117029829924176401

namespace A312506

/-- `2*A313875(n)-A008458(n)` -/
def P16117029829924176401.Spec : Prop :=
  ∀ n, P16117029829924176401.a n = A312506 n

end A312506

/-! ## A312506.P9119804124962673834

`A315320(n)-(A004525(n)+A004525(A004525(n)))`
-/

namespace A312506.P9119804124962673834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315320 n - (A004525 n + A004525 (A004525 n).toNat)

end

end A312506.P9119804124962673834

namespace A312506

/-- `A315320(n)-(A004525(n)+A004525(A004525(n)))` -/
def P9119804124962673834.Spec : Prop :=
  ∀ n, P9119804124962673834.a n = A312506 n

end A312506

/-! ## A312506.P12497649389448696791

`A315342(n)-2*A004525(n)`
-/

namespace A312506.P12497649389448696791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315342 n - 2 * A004525 n

end

end A312506.P12497649389448696791

namespace A312506

/-- `A315342(n)-2*A004525(n)` -/
def P12497649389448696791.Spec : Prop :=
  ∀ n, P12497649389448696791.a n = A312506 n

end A312506

/-! ## A312506.P10286310322267613598

`A250120(n)+A314242(n)-A008458(n)`
-/

namespace A312506.P10286310322267613598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A314242 n - A008458 n)

end

end A312506.P10286310322267613598

namespace A312506

/-- `A250120(n)+A314242(n)-A008458(n)` -/
def P10286310322267613598.Spec : Prop :=
  ∀ n, P10286310322267613598.a n = A312506 n

end A312506

/-! ## A312506.P179807080273955447

`abs(A008592(n)-A315651(n))`
-/

namespace A312506.P179807080273955447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315651 n|

end

end A312506.P179807080273955447

namespace A312506

/-- `abs(A008592(n)-A315651(n))` -/
def P179807080273955447.Spec : Prop :=
  ∀ n, P179807080273955447.a n = A312506 n

end A312506

/-! ## A312506.P565731097440123698

`A008458(n)+A008574(n)-A315651(n)`
-/

namespace A312506.P565731097440123698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315651 n)

end

end A312506.P565731097440123698

namespace A312506

/-- `A008458(n)+A008574(n)-A315651(n)` -/
def P565731097440123698.Spec : Prop :=
  ∀ n, P565731097440123698.a n = A312506 n

end A312506

/-!
# A312507: Coordination sequence Gal.6.245.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312507, the canonical program `A312507.P15411761902841347457` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312507 has offset 0).

The definition of A312507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312507.P15411761902841347457

`2*A313876(n)-A008458(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A312507

/-- `2*A313876(n)-A008458(n)` -/
def P15411761902841347457.Spec : Prop :=
  ∀ n, P15411761902841347457.a n = A312507 n

theorem P15411761902841347457.correct : P15411761902841347457.Spec := by
  intro n
  simp only [A312507]

end A312507

/-! ## A312507.P14283113192961635952

`A008458(n)-A005843(A008458(n)-A313876(n))`
-/

namespace A312507.P14283113192961635952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313876 n).toNat

end

end A312507.P14283113192961635952

namespace A312507

/-- `A008458(n)-A005843(A008458(n)-A313876(n))` -/
def P14283113192961635952.Spec : Prop :=
  ∀ n, P14283113192961635952.a n = A312507 n

end A312507

/-! ## A312507.P2379983740508688310

`abs(A008592(n)-A315650(n))`
-/

namespace A312507.P2379983740508688310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315650 n|

end

end A312507.P2379983740508688310

namespace A312507

/-- `abs(A008592(n)-A315650(n))` -/
def P2379983740508688310.Spec : Prop :=
  ∀ n, P2379983740508688310.a n = A312507 n

end A312507

/-! ## A312507.P12365127542279365792

`2*A008706(n)-A315650(n)`
-/

namespace A312507.P12365127542279365792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315650 n

end

end A312507.P12365127542279365792

namespace A312507

/-- `2*A008706(n)-A315650(n)` -/
def P12365127542279365792.Spec : Prop :=
  ∀ n, P12365127542279365792.a n = A312507 n

end A312507

/-! ## A312507.P6748818087606187655

`abs(A017281(n)-(A315650(n)+1))`
-/

namespace A312507.P6748818087606187655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017281 n - (A315650 n + 1)|

end

end A312507.P6748818087606187655

namespace A312507

/-- `abs(A017281(n)-(A315650(n)+1))` -/
def P6748818087606187655.Spec : Prop :=
  ∀ n, P6748818087606187655.a n = A312507 n

end A312507

/-! ## A312507.P15304230851861625011

`A008458(n)+A008574(n)-A315650(n)`
-/

namespace A312507.P15304230851861625011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315650 n)

end

end A312507.P15304230851861625011

namespace A312507

/-- `A008458(n)+A008574(n)-A315650(n)` -/
def P15304230851861625011.Spec : Prop :=
  ∀ n, P15304230851861625011.a n = A312507 n

end A312507

/-! ## A312507.P14985426350019143335

`∑{d}[A008592(n)-A315650(n), A000010(#)]`
-/

namespace A312507.P14985426350019143335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A312507.P14985426350019143335

namespace A312507

/-- `∑{d}[A008592(n)-A315650(n), A000010(#)]` -/
def P14985426350019143335.Spec : Prop :=
  ∀ n, P14985426350019143335.a n = A312507 n

end A312507

/-! ## A312507.P3832630083110089298

`A315650(n)-A005843(A315650(n)-A008706(n))`
-/

namespace A312507.P3832630083110089298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315650 n - A005843 (A315650 n - A008706 n).toNat

end

end A312507.P3832630083110089298

namespace A312507

/-- `A315650(n)-A005843(A315650(n)-A008706(n))` -/
def P3832630083110089298.Spec : Prop :=
  ∀ n, P3832630083110089298.a n = A312507 n

end A312507

/-! ## A312507.P1088874350845128516

`2*A313831(n)-A315733(n)`
-/

namespace A312507.P1088874350845128516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313831 n - A315733 n

end

end A312507.P1088874350845128516

namespace A312507

/-- `2*A313831(n)-A315733(n)` -/
def P1088874350845128516.Spec : Prop :=
  ∀ n, P1088874350845128516.a n = A312507 n

end A312507

/-! ## A312507.P6614643457924793412

`∏{d}[A008592(n)-A315650(n), A014963(#)]`
-/

namespace A312507.P6614643457924793412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A312507.P6614643457924793412

namespace A312507

/-- `∏{d}[A008592(n)-A315650(n), A014963(#)]` -/
def P6614643457924793412.Spec : Prop :=
  ∀ n, P6614643457924793412.a n = A312507 n

end A312507

/-! ## A312507.P1795022176516621451

`A004442(A017281(n)-A315650(n))`
-/

namespace A312507.P1795022176516621451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315650 n).toNat

end

end A312507.P1795022176516621451

namespace A312507

/-- `A004442(A017281(n)-A315650(n))` -/
def P1795022176516621451.Spec : Prop :=
  ∀ n, P1795022176516621451.a n = A312507 n

end A312507

/-! ## A312507.P12175743373462901604

`A004442(A017281(n)%A315650(n))`
-/

namespace A312507.P12175743373462901604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.tmod (A017281 n) (A315650 n)).toNat

end

end A312507.P12175743373462901604

namespace A312507

/-- `A004442(A017281(n)%A315650(n))` -/
def P12175743373462901604.Spec : Prop :=
  ∀ n, P12175743373462901604.a n = A312507 n

end A312507

/-! ## A312507.P5892919069162752905

`2*A004396(A315052(n))-A004275(n+1)`
-/

namespace A312507.P5892919069162752905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004396 (A315052 n).toNat - A004275 (n + 1)

end

end A312507.P5892919069162752905

namespace A312507

/-- `2*A004396(A315052(n))-A004275(n+1)` -/
def P5892919069162752905.Spec : Prop :=
  ∀ n, P5892919069162752905.a n = A312507 n

end A312507

/-! ## A312507.P14486590418586482195

`A005843(A008706(n))-A315650(n)`
-/

namespace A312507.P14486590418586482195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315650 n

end

end A312507.P14486590418586482195

namespace A312507

/-- `A005843(A008706(n))-A315650(n)` -/
def P14486590418586482195.Spec : Prop :=
  ∀ n, P14486590418586482195.a n = A312507 n

end A312507

/-! ## A312507.P13371186912019439750

`A005843(A313876(n))-A008458(n)`
-/

namespace A312507.P13371186912019439750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313876 n).toNat - A008458 n

end

end A312507.P13371186912019439750

namespace A312507

/-- `A005843(A313876(n))-A008458(n)` -/
def P13371186912019439750.Spec : Prop :=
  ∀ n, P13371186912019439750.a n = A312507 n

end A312507

/-! ## A312507.P8444541890609994864

`A315312(2*n)-6*n`
-/

namespace A312507.P8444541890609994864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315312 (2 * n) - (6 * n : ℤ)

end

end A312507.P8444541890609994864

namespace A312507

/-- `A315312(2*n)-6*n` -/
def P8444541890609994864.Spec : Prop :=
  ∀ n, P8444541890609994864.a n = A312507 n

end A312507

/-!
# A312508: Coordination sequence Gal.5.250.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312508, there is no canonical definition to state claims against.
-/

/-! ## A312508.P9118793376745557094

`A278082(A252801(n+1))`
-/

namespace A312508.P9118793376745557094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278082 (A252801 (n + 1)).toNat

end

end A312508.P9118793376745557094

/-! ## A312508.P13168967376158979096

`A252801(n+1)+A033999(A318361(n+1))`
-/

namespace A312508.P13168967376158979096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252801 (n + 1) + A033999 (A318361 (n + 1)).toNat

end

end A312508.P13168967376158979096

/-! ## A312508.P2010730586585818049

`A252801(n+1)-A106400(A065091(n+1))`
-/

namespace A312508.P2010730586585818049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252801 (n + 1) - A106400 (A065091 (n + 1)).toNat

end

end A312508.P2010730586585818049

/-! ## A312508.P17194442486577528183

`A311593(n)+A122856(A213759(3*n+5))`
-/

namespace A312508.P17194442486577528183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311593 n + A122856 (A213759 (3 * n + 5)).toNat

end

end A312508.P17194442486577528183

/-! ## A312508.P9110761278847825963

`or(A312501(n), A326819(A178643(n+1)))`
-/

namespace A312508.P9110761278847825963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312501 n) (A326819 (A178643 (n + 1)).toNat)

end

end A312508.P9110761278847825963

/-!
# A312511: Coordination sequence Gal.6.415.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312511, there is no canonical definition to state claims against.
-/

/-! ## A312511.P2938813138676536838

`A312512(n)-Δ[A118917(A000383(n))]`
-/

namespace A312511.P2938813138676536838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (A000383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312512 n - (f1 (n + 1) - f1 n)

end

end A312511.P2938813138676536838

/-! ## A312511.P15001702611179146757

`A312512(n)-A025466(A020076(n))`
-/

namespace A312511.P15001702611179146757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312512 n - A025466 (A020076 n).toNat

end

end A312511.P15001702611179146757

/-! ## A312511.P3679316583794932497

`A312513(n)-A025466(A038205(n))`
-/

namespace A312511.P3679316583794932497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312513 n - A025466 (A038205 n).toNat

end

end A312511.P3679316583794932497

/-! ## A312511.P8088742049799063930

`A312513(n)-A055641(A218956(n))`
-/

namespace A312511.P8088742049799063930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312513 n - A055641 (A218956 n).toNat

end

end A312511.P8088742049799063930

/-! ## A312511.P14491837635314251183

`A124771(C(A008000(n), A175064(n+2)))`
-/

namespace A312511.P14491837635314251183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 (Nat.choose (A008000 n).toNat (A175064 (n + 2)).toNat)

end

end A312511.P14491837635314251183

/-!
# A312512: Coordination sequence Gal.6.291.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312512, there is no canonical definition to state claims against.
-/

/-! ## A312512.P17694393347255982527

`A312511(n)+A025466(A020076(n))`
-/

namespace A312512.P17694393347255982527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312511 n + A025466 (A020076 n).toNat

end

end A312512.P17694393347255982527

/-! ## A312512.P14846167705276703495

`A312284(n)+A191265(A036447(n))`
-/

namespace A312512.P14846167705276703495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312284 n + A191265 (A036447 n).toNat

end

end A312512.P14846167705276703495

/-! ## A312512.P16092579395856219811

`A310917(n)-A016375(A020695(n))`
-/

namespace A312512.P16092579395856219811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310917 n - A016375 (A020695 n).toNat

end

end A312512.P16092579395856219811

/-! ## A312512.P10884736141083307102

`A312514(n)-A055641(A218956(n))`
-/

namespace A312512.P10884736141083307102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312514 n - A055641 (A218956 n).toNat

end

end A312512.P10884736141083307102

/-! ## A312512.P16233691922830442649

`xor(A025466(A038205(n)), A312513(n))`
-/

namespace A312512.P16233691922830442649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025466 (A038205 n).toNat) (A312513 n)

end

end A312512.P16233691922830442649

/-!
# A312513: Coordination sequence Gal.5.181.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312513, there is no canonical definition to state claims against.
-/

/-! ## A312513.P6590803394850532935

`A347411(A347415(n+1))+A310916(n)`
-/

namespace A312513.P6590803394850532935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347411 (A347415 (n + 1)).toNat + A310916 n

end

end A312513.P6590803394850532935

/-! ## A312513.P2066602647725324279

`A312511(n)+A025466(A038205(n))`
-/

namespace A312513.P2066602647725324279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312511 n + A025466 (A038205 n).toNat

end

end A312513.P2066602647725324279

/-! ## A312513.P2935366667761184502

`A312511(n)+A055641(A218956(n))`
-/

namespace A312513.P2935366667761184502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312511 n + A055641 (A218956 n).toNat

end

end A312513.P2935366667761184502

/-! ## A312513.P7674077523568178448

`A312514(n)-A025466(A020076(n))`
-/

namespace A312513.P7674077523568178448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312514 n - A025466 (A020076 n).toNat

end

end A312513.P7674077523568178448

/-!
# A312514: Coordination sequence Gal.6.277.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312514, there is no canonical definition to state claims against.
-/

/-! ## A312514.P6985698916406376893

`A312513(n)+A025466(A020076(n))`
-/

namespace A312514.P6985698916406376893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312513 n + A025466 (A020076 n).toNat

end

end A312514.P6985698916406376893

/-! ## A312514.P3043828738900476281

`A312512(n)+A025466(A038205(n))`
-/

namespace A312514.P3043828738900476281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312512 n + A025466 (A038205 n).toNat

end

end A312514.P3043828738900476281

/-! ## A312514.P14195919044181659114

`A312512(n)+A055641(A218956(n))`
-/

namespace A312514.P14195919044181659114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312512 n + A055641 (A218956 n).toNat

end

end A312514.P14195919044181659114

/-! ## A312514.P11735319907096695986

`A312536(n)+A127440(A030078(n+1))`
-/

namespace A312514.P11735319907096695986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312536 n + A127440 (A030078 (n + 1)).toNat

end

end A312514.P11735319907096695986

/-!
# A312515: Coordination sequence Gal.5.79.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312515, there is no canonical definition to state claims against.
-/

/-! ## A312515.P8535233014493121026

`A312523(n)-A107078(A321139(n))`
-/

namespace A312515.P8535233014493121026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312523 n - A107078 (A321139 n).toNat

end

end A312515.P8535233014493121026

/-! ## A312515.P12114157986534338121

`A312466(n)-A162782(A333703(n+1))`
-/

namespace A312515.P12114157986534338121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n - A162782 (A333703 (n + 1)).toNat

end

end A312515.P12114157986534338121

/-! ## A312515.P11942033937714753764

`or(A184159(A027699(n+1)), A312454(n))`
-/

namespace A312515.P11942033937714753764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184159 (A027699 (n + 1)).toNat) (A312454 n)

end

end A312515.P11942033937714753764

/-! ## A312515.P236615671491442009

`or(A258139(A000111(n)), A312453(n))`
-/

namespace A312515.P236615671491442009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A258139 (A000111 n).toNat) (A312453 n)

end

end A312515.P236615671491442009

/-! ## A312515.P2156369669995148002

`A314264(n)-record[A001222(A310242(n))]`
-/

namespace A312515.P2156369669995148002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A310242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314264 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312515.P2156369669995148002

/-!
# A312516: Coordination sequence Gal.6.423.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312516, there is no canonical definition to state claims against.
-/

/-! ## A312516.P8462081130960340678

`round(A315057(n)-A127296(n+3)/3)`
-/

namespace A312516.P8462081130960340678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A315057 n : ℚ) - (A127296 (n + 3) : ℚ) / 3)

end

end A312516.P8462081130960340678

/-! ## A312516.P9835503062722149656

`A250120(n)-A071575(A048496(n))`
-/

namespace A312516.P9835503062722149656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A071575 (A048496 n).toNat

end

end A312516.P9835503062722149656

/-! ## A312516.P12676518111683168000

`A312518(n)-A340988(A045680(n))`
-/

namespace A312516.P12676518111683168000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312518 n - A340988 ((A045680 n).toNat + 91)

end

end A312516.P12676518111683168000

/-! ## A312516.P13224795267262101649

`A312517(n)-A325406(A112292(n))`
-/

namespace A312516.P13224795267262101649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312517 n - A325406 (A112292 n).toNat

end

end A312516.P13224795267262101649

/-! ## A312516.P15354589498701079622

`A312530(n)-A087472(A048597(n+1))`
-/

namespace A312516.P15354589498701079622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312530 n - A087472 (A048597 (n + 1)).toNat

end

end A312516.P15354589498701079622

/-!
# A312517: Coordination sequence Gal.6.186.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312517, there is no canonical definition to state claims against.
-/

/-! ## A312517.P8793543775314597437

`A312538(n)+A143142(A250120(2*(n+1)))`
-/

namespace A312517.P8793543775314597437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312538 n + A143142 (A250120 (2 * (n + 1))).toNat

end

end A312517.P8793543775314597437

/-! ## A312517.P13055710392173598447

`record[A312518(n)-A036633(n)]`
-/

namespace A312517.P13055710392173598447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312518 n - A036633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312517.P13055710392173598447

/-! ## A312517.P12970789646376920931

`A311596(n)+A257992(A014137(n))`
-/

namespace A312517.P12970789646376920931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311596 n + A257992 (A014137 n).toNat

end

end A312517.P12970789646376920931

/-! ## A312517.P975722613452948154

`A312530(n)-A159638(A000108(n))`
-/

namespace A312517.P975722613452948154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312530 n - A159638 (A000108 n).toNat

end

end A312517.P975722613452948154

/-! ## A312517.P2795989654406582582

`A312539(n)-A011679(A148235(n))`
-/

namespace A312517.P2795989654406582582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312539 n - A011679 (A148235 n).toNat

end

end A312517.P2795989654406582582

/-!
# A312518: Coordination sequence Gal.4.87.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312518, there is no canonical definition to state claims against.
-/

/-! ## A312518.P16059445328099230435

`A311804(n)+A001221(A102917(n))`
-/

namespace A312518.P16059445328099230435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n + A001221 (A102917 n).toNat

end

end A312518.P16059445328099230435

/-! ## A312518.P13491046357175104814

`A312366(n)+A186748(A034583(n))`
-/

namespace A312518.P13491046357175104814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312366 n + A186748 (A034583 n).toNat

end

end A312518.P13491046357175104814

/-! ## A312518.P1053595743534593015

`A312517(n)+A107846(A143547(n))`
-/

namespace A312518.P1053595743534593015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312517 n + A107846 (A143547 n).toNat

end

end A312518.P1053595743534593015

/-! ## A312518.P15651154794922208268

`A358758(A020047(n))+A312517(n)`
-/

namespace A312518.P15651154794922208268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358758 (A020047 n).toNat + A312517 n

end

end A312518.P15651154794922208268

/-! ## A312518.P2189524506101724368

`A340988(A045680(n))+A312516(n)`
-/

namespace A312518.P2189524506101724368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A045680 n).toNat + 91) + A312516 n

end

end A312518.P2189524506101724368

/-!
# A312519: Coordination sequence Gal.6.170.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312519, there is no canonical definition to state claims against.
-/

/-! ## A312519.P1516134616660849092

`A312518(n)+A055641(A124302(n+1))`
-/

namespace A312519.P1516134616660849092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312518 n + A055641 (A124302 (n + 1)).toNat

end

end A312519.P1516134616660849092

/-! ## A312519.P6768314803575410726

`A312518(n)+A127708(A085908(n+1))`
-/

namespace A312519.P6768314803575410726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312518 n + A127708 (A085908 (n + 1)).toNat

end

end A312519.P6768314803575410726

/-! ## A312519.P15255495708643192018

`A312530(n)-A025465(A249359(n+1))`
-/

namespace A312519.P15255495708643192018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312530 n - A025465 (A249359 (n + 1)).toNat

end

end A312519.P15255495708643192018

/-! ## A312519.P1717655634850821391

`A312517(n)+A011743(A148354(n)+n)`
-/

namespace A312519.P1717655634850821391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312517 n + A011743 (A148354 n + (n : ℤ)).toNat

end

end A312519.P1717655634850821391

/-! ## A312519.P6738631983993477935

`A312530(n)-A016396(A250120(3*n+2))`
-/

namespace A312519.P6738631983993477935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312530 n - A016396 (A250120 (3 * n + 2)).toNat

end

end A312519.P6738631983993477935

/-!
# A312520: Coordination sequence Gal.6.243.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312520, there is no canonical definition to state claims against.
-/

/-! ## A312520.P1472994733314403849

`A312457(n)+A025456(A001787(n))`
-/

namespace A312520.P1472994733314403849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312457 n + A025456 (A001787 n).toNat

end

end A312520.P1472994733314403849

/-! ## A312520.P16891086638635417358

`A312456(n)+A329308(n+1)^C(n+7, 7)`
-/

namespace A312520.P16891086638635417358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 n + A329308 (n + 1) ^ Nat.choose (n + 7) 7

end

end A312520.P16891086638635417358

/-! ## A312520.P3578936118585409281

`A312456(n)+A011742(A026299(n))`
-/

namespace A312520.P3578936118585409281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 n + A011742 (A026299 n).toNat

end

end A312520.P3578936118585409281

/-! ## A312520.P10175270819718877992

`A312457(n)+A011742(A026299(n))`
-/

namespace A312520.P10175270819718877992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312457 n + A011742 (A026299 n).toNat

end

end A312520.P10175270819718877992

/-! ## A312520.P16659212500202638521

`A250120(n)-A262885(A350104(n))`
-/

namespace A312520.P16659212500202638521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A262885 (A350104 n).toNat

end

end A312520.P16659212500202638521

/-!
# A312521: Coordination sequence Gal.5.119.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312521, there is no canonical definition to state claims against.
-/

/-! ## A312521.P17514477015146416145

`A312544(n)-A133010(A027379(n))`
-/

namespace A312521.P17514477015146416145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312544 n - A133010 (A027379 n).toNat

end

end A312521.P17514477015146416145

/-! ## A312521.P14341837720705011760

`A250120(n)-A122922(A169985(n))`
-/

namespace A312521.P14341837720705011760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A122922 (A169985 n).toNat

end

end A312521.P14341837720705011760

/-! ## A312521.P4772844748870799772

`or(A282701(A006820(n)), A312452(n))`
-/

namespace A312521.P4772844748870799772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A282701 (A006820 n).toNat) (A312452 n)

end

end A312521.P4772844748870799772

/-! ## A312521.P5351549899095365148

`A312527(n)+A178780(A156992(n+1))`
-/

namespace A312521.P5351549899095365148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312527 n + A178780 (A156992 (n + 1)).toNat

end

end A312521.P5351549899095365148

/-! ## A312521.P8970735357233244340

`A285566(∑[A270643(floor(4*3^(n-1)))])`
-/

namespace A312521.P8970735357233244340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270643 ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285566 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A312521.P8970735357233244340

/-!
# A312522: Coordination sequence Gal.6.147.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312522, there is no canonical definition to state claims against.
-/

/-! ## A312522.P874103864909545189

`record[A312523(n)-A309632(n)]`
-/

namespace A312522.P874103864909545189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312523 n - A309632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312522.P874103864909545189

/-! ## A312522.P955113393096483796

`A311912(n)+A011734(n²²)`
-/

namespace A312522.P955113393096483796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311912 n + A011734 ((n ^ 2) ^ 2)

end

end A312522.P955113393096483796

/-! ## A312522.P12785810184299287784

`A311913(n)+A011734(n²²)`
-/

namespace A312522.P12785810184299287784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311913 n + A011734 ((n ^ 2) ^ 2)

end

end A312522.P12785810184299287784

/-! ## A312522.P8199392767805323632

`A312464(n)+A007949(A000108(n))`
-/

namespace A312522.P8199392767805323632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n + A007949 (A000108 n).toNat

end

end A312522.P8199392767805323632

/-! ## A312522.P341168609441588553

`A250120(n)-A334440(A029967(2*n+1))`
-/

namespace A312522.P341168609441588553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A334440 (A029967 (2 * n + 1)).toNat

end

end A312522.P341168609441588553

/-!
# A312523: Coordination sequence Gal.5.74.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312523, there is no canonical definition to state claims against.
-/

/-! ## A312523.P18221005913355576425

`A312515(n)+A107078(A321139(n))`
-/

namespace A312523.P18221005913355576425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312515 n + A107078 (A321139 n).toNat

end

end A312523.P18221005913355576425

/-! ## A312523.P2191329667783583847

`A263283(A004396(n)*A282914(n))`
-/

namespace A312523.P2191329667783583847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263283 (A004396 n * A282914 n).toNat

end

end A312523.P2191329667783583847

/-! ## A312523.P5868397112416195738

`xor(A070533(A006925(n)), A312475(n))`
-/

namespace A312523.P5868397112416195738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A070533 (A006925 n).toNat) (A312475 n)

end

end A312523.P5868397112416195738

/-! ## A312523.P1440918078927884545

`A311918(n)+A066247(A052986(n))`
-/

namespace A312523.P1440918078927884545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311918 n + A066247 (A052986 n).toNat

end

end A312523.P1440918078927884545

/-! ## A312523.P11703253908679682906

`A311799(n)+A001221(A194090(n+1))`
-/

namespace A312523.P11703253908679682906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311799 n + A001221 (A194090 (n + 1)).toNat

end

end A312523.P11703253908679682906

/-!
# A312524: Coordination sequence Gal.6.238.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312524, there is no canonical definition to state claims against.
-/

/-! ## A312524.P17927993747740063586

`A311914(n)+A225654(A124429(n))`
-/

namespace A312524.P17927993747740063586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311914 n + A225654 (A124429 n).toNat

end

end A312524.P17927993747740063586

/-! ## A312524.P13024796733589264098

`or(A213911(A088974(n+1)), A312460(n))`
-/

namespace A312524.P13024796733589264098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213911 (A088974 (n + 1)).toNat) (A312460 n)

end

end A312524.P13024796733589264098

/-! ## A312524.P18310712755821765548

`A057354(A004525(n))+A049241(A178802(n+1))+4*n`
-/

namespace A312524.P18310712755821765548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A004525 n).toNat + (A049241 (A178802 (n + 1)).toNat + (4 * n : ℤ))

end

end A312524.P18310712755821765548

/-! ## A312524.P2036934124792190932

`char[8]+record[A312523(n)-A309632(n)]`
-/

namespace A312524.P2036934124792190932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312523 n - A309632 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A312524.P2036934124792190932

/-! ## A312524.P132742658118318885

`char[8]+A311912(n)+A011734(n²²)`
-/

namespace A312524.P132742658118318885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A311912 n + A011734 ((n ^ 2) ^ 2))

end

end A312524.P132742658118318885

/-!
# A312525: Coordination sequence Gal.6.140.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312525, there is no canonical definition to state claims against.
-/

/-! ## A312525.P15391256829959058966

`A071521(A018667(n+1)+n^3)`
-/

namespace A312525.P15391256829959058966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A018667 (n + 1) + (n ^ 3 : ℤ)).toNat

end

end A312525.P15391256829959058966

/-! ## A312525.P7031395321136693438

`A250120(n)-A048881(A034339(n+1))`
-/

namespace A312525.P7031395321136693438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A048881 (A034339 (n + 1)).toNat

end

end A312525.P7031395321136693438

/-! ## A312525.P16869752923259699383

`A311943(n)+A010060(A309359(n+3))`
-/

namespace A312525.P16869752923259699383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311943 n + A010060 (A309359 (n + 3)).toNat

end

end A312525.P16869752923259699383

/-! ## A312525.P16780345389773861965

`A047309(2*n+1)+A004273(n)-A048881(A034339(n+1))`
-/

namespace A312525.P16780345389773861965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (2 * n + 1) + A004273 n - A048881 (A034339 (n + 1)).toNat

end

end A312525.P16780345389773861965

/-! ## A312525.P184479730678403669

`A022144(n)+1-A047412(2*(n+1))-A048881(A034339(n+1))`
-/

namespace A312525.P184479730678403669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + 1 - A047412 (2 * (n + 1)) - A048881 (A034339 (n + 1)).toNat

end

end A312525.P184479730678403669

/-!
# A312526: Coordination sequence Gal.6.254.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312526, the canonical program `A312526.P17098405118883711689` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312526 has offset 0).

The definition of A312526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312526.P17098405118883711689

`A312065(n)+Δ[A011865(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A312526

/-- `A312065(n)+Δ[A011865(n)]` -/
def P17098405118883711689.Spec : Prop :=
  ∀ n, P17098405118883711689.a n = A312526 n

theorem P17098405118883711689.correct : P17098405118883711689.Spec := by
  intro n
  simp only [A312526]

end A312526

/-! ## A312526.P10557591500366761657

`A008574(n)+A004524(A030118(n))`
-/

namespace A312526.P10557591500366761657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004524 (A030118 n).toNat

end

end A312526.P10557591500366761657

namespace A312526

/-- `A008574(n)+A004524(A030118(n))` -/
def P10557591500366761657.Spec : Prop :=
  ∀ n, P10557591500366761657.a n = A312526 n

end A312526

/-! ## A312526.P7373508962200206646

`A004396(A004525(n))+A312620(n)-A004525(n)`
-/

namespace A312526.P7373508962200206646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A312620 n - A004525 n)

end

end A312526.P7373508962200206646

namespace A312526

/-- `A004396(A004525(n))+A312620(n)-A004525(n)` -/
def P7373508962200206646.Spec : Prop :=
  ∀ n, P7373508962200206646.a n = A312526 n

end A312526

/-! ## A312526.P6858930394394079480

`A313213(n)-A004396(n-A004525(n))`
-/

namespace A312526.P6858930394394079480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A312526.P6858930394394079480

namespace A312526

/-- `A313213(n)-A004396(n-A004525(n))` -/
def P6858930394394079480.Spec : Prop :=
  ∀ n, P6858930394394079480.a n = A312526 n

end A312526

/-! ## A312526.P9049192046341496282

`A315026(n)-A004525(A004396(n))`
-/

namespace A312526.P9049192046341496282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n - A004525 (A004396 n).toNat

end

end A312526.P9049192046341496282

namespace A312526

/-- `A315026(n)-A004525(A004396(n))` -/
def P9049192046341496282.Spec : Prop :=
  ∀ n, P9049192046341496282.a n = A312526 n

end A312526

/-! ## A312526.P18204316046146900422

`A315030(n)-A004396(A004525(n))`
-/

namespace A312526.P18204316046146900422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315030 n - A004396 (A004525 n).toNat

end

end A312526.P18204316046146900422

namespace A312526

/-- `A315030(n)-A004396(A004525(n))` -/
def P18204316046146900422.Spec : Prop :=
  ∀ n, P18204316046146900422.a n = A312526 n

end A312526

/-! ## A312526.P17842542452288491326

`A315067(n)-A004525(n)`
-/

namespace A312526.P17842542452288491326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315067 n - A004525 n

end

end A312526.P17842542452288491326

namespace A312526

/-- `A315067(n)-A004525(n)` -/
def P17842542452288491326.Spec : Prop :=
  ∀ n, P17842542452288491326.a n = A312526 n

end A312526

/-! ## A312526.P195298719001124965

`A315067(n)-Δ[A054925(n)]`
-/

namespace A312526.P195298719001124965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315067 n - (f1 (n + 1) - f1 n)

end

end A312526.P195298719001124965

namespace A312526

/-- `A315067(n)-Δ[A054925(n)]` -/
def P195298719001124965.Spec : Prop :=
  ∀ n, P195298719001124965.a n = A312526 n

end A312526

/-! ## A312526.P3069539582501993017

`A315322(n)-(A004525(A004396(n))+A004525(n))`
-/

namespace A312526.P3069539582501993017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n - (A004525 (A004396 n).toNat + A004525 n)

end

end A312526.P3069539582501993017

namespace A312526

/-- `A315322(n)-(A004525(A004396(n))+A004525(n))` -/
def P3069539582501993017.Spec : Prop :=
  ∀ n, P3069539582501993017.a n = A312526 n

end A312526

/-! ## A312526.P4223868439040201916

`abs(A008592(n)-A315649(n))`
-/

namespace A312526.P4223868439040201916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315649 n|

end

end A312526.P4223868439040201916

namespace A312526

/-- `abs(A008592(n)-A315649(n))` -/
def P4223868439040201916.Spec : Prop :=
  ∀ n, P4223868439040201916.a n = A312526 n

end A312526

/-! ## A312526.P12128446240832454067

`2*A008706(n)-A315649(n)`
-/

namespace A312526.P12128446240832454067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315649 n

end

end A312526.P12128446240832454067

namespace A312526

/-- `2*A008706(n)-A315649(n)` -/
def P12128446240832454067.Spec : Prop :=
  ∀ n, P12128446240832454067.a n = A312526 n

end A312526

/-! ## A312526.P8402367746447285543

`A008458(n)+A008574(n)-A315649(n)`
-/

namespace A312526.P8402367746447285543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315649 n)

end

end A312526.P8402367746447285543

namespace A312526

/-- `A008458(n)+A008574(n)-A315649(n)` -/
def P8402367746447285543.Spec : Prop :=
  ∀ n, P8402367746447285543.a n = A312526 n

end A312526

/-! ## A312526.P1359000175856895779

`A315649(n)-A005843(A315649(n)-A008706(n))`
-/

namespace A312526.P1359000175856895779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315649 n - A005843 (A315649 n - A008706 n).toNat

end

end A312526.P1359000175856895779

namespace A312526

/-- `A315649(n)-A005843(A315649(n)-A008706(n))` -/
def P1359000175856895779.Spec : Prop :=
  ∀ n, P1359000175856895779.a n = A312526 n

end A312526

/-! ## A312526.P16535453435738961865

`A005843(A008706(n))-A315649(n)`
-/

namespace A312526.P16535453435738961865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315649 n

end

end A312526.P16535453435738961865

namespace A312526

/-- `A005843(A008706(n))-A315649(n)` -/
def P16535453435738961865.Spec : Prop :=
  ∀ n, P16535453435738961865.a n = A312526 n

end A312526

/-!
# A312527: Coordination sequence Gal.6.432.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312527, there is no canonical definition to state claims against.
-/

/-! ## A312527.P4169995556666926109

`(A312544(n)+A312486(n))/2`
-/

namespace A312527.P4169995556666926109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312544 n + A312486 n : ℚ) / 2

end

end A312527.P4169995556666926109

/-! ## A312527.P1125644173443452542

`A001281(A312544(n)+A312486(n))`
-/

namespace A312527.P1125644173443452542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312544 n + A312486 n).toNat

end

end A312527.P1125644173443452542

/-! ## A312527.P17723753493016062712

`A004525(A312544(n)+A312486(n))`
-/

namespace A312527.P17723753493016062712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312544 n + A312486 n).toNat

end

end A312527.P17723753493016062712

/-! ## A312527.P8480596224978380810

`A004526(A312544(n)+A312486(n))`
-/

namespace A312527.P8480596224978380810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312544 n + A312486 n).toNat

end

end A312527.P8480596224978380810

/-! ## A312527.P5182908930950406424

`A006370(A312544(n)+A312486(n))`
-/

namespace A312527.P5182908930950406424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A312544 n + A312486 n).toNat

end

end A312527.P5182908930950406424

/-! ## A312527.P16439425340964940816

`A029578(A312544(n)+A312486(n))`
-/

namespace A312527.P16439425340964940816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A312544 n + A312486 n).toNat

end

end A312527.P16439425340964940816

/-! ## A312527.P7078337127592438929

`A065033(A312544(n)+A312486(n))`
-/

namespace A312527.P7078337127592438929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312544 n + A312486 n).toNat

end

end A312527.P7078337127592438929

/-! ## A312527.P3624223558998926999

`A110654(A312544(n)+A312486(n))`
-/

namespace A312527.P3624223558998926999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A312544 n + A312486 n).toNat

end

end A312527.P3624223558998926999

/-! ## A312527.P6046831135812058624

`A273943(A312544(n)+A312486(n))`
-/

namespace A312527.P6046831135812058624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A312544 n + A312486 n).toNat

end

end A312527.P6046831135812058624

/-! ## A312527.P16108913795253600708

`abs(A001057(A312544(n)+A312486(n)))`
-/

namespace A312527.P16108913795253600708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A312544 n + A312486 n).toNat|

end

end A312527.P16108913795253600708

/-! ## A312527.P518550392271921669

`A001057(A312486(n)+A312544(n)-1)`
-/

namespace A312527.P518550392271921669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A312486 n + (A312544 n - 1)).toNat

end

end A312527.P518550392271921669

/-! ## A312527.P5424697501671723137

`A001057(A312486(n)-(1-A312544(n)))`
-/

namespace A312527.P5424697501671723137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A312486 n - (1 - A312544 n)).toNat

end

end A312527.P5424697501671723137

/-! ## A312527.P13143106412342766405

`A065033(A312486(n)-(1-A312544(n)))`
-/

namespace A312527.P13143106412342766405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312486 n - (1 - A312544 n)).toNat

end

end A312527.P13143106412342766405

/-! ## A312527.P5710588822558003823

`A110654(A312486(n)-(1-A312544(n)))`
-/

namespace A312527.P5710588822558003823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A312486 n - (1 - A312544 n)).toNat

end

end A312527.P5710588822558003823

/-!
# A312528: Coordination sequence Gal.6.190.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312528, there is no canonical definition to state claims against.
-/

/-! ## A312528.P2349373167780866984

`A312621(n)-A193497(A167189(n+1))`
-/

namespace A312528.P2349373167780866984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312621 n - A193497 (A167189 (n + 1)).toNat

end

end A312528.P2349373167780866984

/-! ## A312528.P2623348204974103834

`record[A312529(n)-A036600(n)]`
-/

namespace A312528.P2623348204974103834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312529 n - A036600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312528.P2623348204974103834

/-! ## A312528.P3982526874005744974

`A312529(n)-A085324(A171822(n))`
-/

namespace A312528.P3982526874005744974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312529 n - A085324 (A171822 n).toNat

end

end A312528.P3982526874005744974

/-! ## A312528.P2838711730301064402

`A312529(n)-A181153(A050473(n+1))`
-/

namespace A312528.P2838711730301064402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312529 n - A181153 (A050473 (n + 1)).toNat

end

end A312528.P2838711730301064402

/-! ## A312528.P9936754151840754938

`A312529(n)-A185236(A062705(n+1))`
-/

namespace A312528.P9936754151840754938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312529 n - A185236 (A062705 (n + 1)).toNat

end

end A312528.P9936754151840754938

/-!
# A312529: Coordination sequence Gal.6.174.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312529, there is no canonical definition to state claims against.
-/

/-! ## A312529.P2749368981010130240

`A250120(n)-A005087(A001970(n+1))`
-/

namespace A312529.P2749368981010130240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A005087 (A001970 (n + 1)).toNat

end

end A312529.P2749368981010130240

/-! ## A312529.P14328883873991214689

`A312528(n)+A011745(A006720(n))`
-/

namespace A312529.P14328883873991214689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312528 n + A011745 (A006720 n).toNat

end

end A312529.P14328883873991214689

/-! ## A312529.P15171848875527095148

`A312528(n)+A165656(A059328(n))`
-/

namespace A312529.P15171848875527095148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312528 n + A165656 (A059328 n).toNat

end

end A312529.P15171848875527095148

/-! ## A312529.P9562162432222300897

`A312528(n)+A085324(A171822(n))`
-/

namespace A312529.P9562162432222300897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312528 n + A085324 (A171822 n).toNat

end

end A312529.P9562162432222300897

/-! ## A312529.P15909905133966242499

`A250120(n)-A102669(A046893(n))`
-/

namespace A312529.P15909905133966242499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A102669 (A046893 n).toNat

end

end A312529.P15909905133966242499

/-!
# A312530: Coordination sequence Gal.6.406.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312530, there is no canonical definition to state claims against.
-/

/-! ## A312530.P3963874446962860595

`A312494(n)+A025465(A259702(n+2))`
-/

namespace A312530.P3963874446962860595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312494 n + A025465 (A259702 (n + 2)).toNat

end

end A312530.P3963874446962860595

/-! ## A312530.P14782567106534303240

`A312494(n)+A010052(A007054(n))`
-/

namespace A312530.P14782567106534303240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312494 n + A010052 (A007054 n).toNat

end

end A312530.P14782567106534303240

/-! ## A312530.P16396085672884737099

`A312519(n)+A308064(A000085(n))`
-/

namespace A312530.P16396085672884737099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312519 n + A308064 (A000085 n).toNat

end

end A312530.P16396085672884737099

/-! ## A312530.P12343120375525729684

`A311961(n)+A011746(A000108(n))`
-/

namespace A312530.P12343120375525729684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311961 n + A011746 (A000108 n).toNat

end

end A312530.P12343120375525729684

/-! ## A312530.P3016730250872341153

`A312517(n)+A011743(A148354(n))`
-/

namespace A312530.P3016730250872341153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312517 n + A011743 (A148354 n).toNat

end

end A312530.P3016730250872341153

/-!
# A312531: Coordination sequence Gal.6.189.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312531, there is no canonical definition to state claims against.
-/

/-! ## A312531.P16740595578420199877

`A312532(n)-A044941(A003418(n))`
-/

namespace A312531.P16740595578420199877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312532 n - A044941 (A003418 n).toNat

end

end A312531.P16740595578420199877

/-! ## A312531.P357392714814816754

`record[A312532(n)-A036600(n)]`
-/

namespace A312531.P357392714814816754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312532 n - A036600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312531.P357392714814816754

/-! ## A312531.P15384642522181173302

`A312532(n)-A165656(A059328(n))`
-/

namespace A312531.P15384642522181173302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312532 n - A165656 (A059328 n).toNat

end

end A312531.P15384642522181173302

/-! ## A312531.P12727420978932368501

`A250120(n)-A319394(A257619(n))`
-/

namespace A312531.P12727420978932368501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A319394 (A257619 n).toNat

end

end A312531.P12727420978932368501

/-! ## A312531.P7469829848040525806

`A312532(A062399(n))`
-/

namespace A312531.P7469829848040525806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312532 (A062399 n).toNat

end

end A312531.P7469829848040525806

/-!
# A312532: Coordination sequence Gal.6.173.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312532, there is no canonical definition to state claims against.
-/

/-! ## A312532.P1255939453651417183

`A312531(n)+A044941(A003418(n))`
-/

namespace A312532.P1255939453651417183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312531 n + A044941 (A003418 n).toNat

end

end A312532.P1255939453651417183

/-! ## A312532.P7933604943230639700

`A312531(n)+A181153(A050473(n+1))`
-/

namespace A312532.P7933604943230639700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312531 n + A181153 (A050473 (n + 1)).toNat

end

end A312532.P7933604943230639700

/-! ## A312532.P5067994663745707451

`A373156(A222956(n+1))+A312531(n)`
-/

namespace A312532.P5067994663745707451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373156 (A222956 (n + 1)).toNat + A312531 n

end

end A312532.P5067994663745707451

/-! ## A312532.P1806212957141684209

`A036600(n)+A250120(n)-A319394(A257619(n))`
-/

namespace A312532.P1806212957141684209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036600 n + (A250120 n - A319394 (A257619 n).toNat)

end

end A312532.P1806212957141684209

/-! ## A312532.P12445576157496739490

`A084904(n)+A250120(n)-A319394(A257619(n))`
-/

namespace A312532.P12445576157496739490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084904 n + (A250120 n - A319394 (A257619 n).toNat)

end

end A312532.P12445576157496739490

/-!
# A312533: Coordination sequence Gal.5.174.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312533, there is no canonical definition to state claims against.
-/

/-! ## A312533.P7092488123424106861

`A312534(n)-A220498(A324099(n+1))`
-/

namespace A312533.P7092488123424106861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312534 n - A220498 (A324099 (n + 1)).toNat

end

end A312533.P7092488123424106861

/-! ## A312533.P7623216913095761082

`A312534(A087051(n))`
-/

namespace A312533.P7623216913095761082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312534 (A087051 n).toNat

end

end A312533.P7623216913095761082

/-! ## A312533.P18186814711143765629

`A312534(A135385(n+1))`
-/

namespace A312533.P18186814711143765629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312534 (A135385 (n + 1)).toNat

end

end A312533.P18186814711143765629

/-! ## A312533.P16046886978884827189

`A312534(A227549(n+1))`
-/

namespace A312533.P16046886978884827189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312534 (A227549 (n + 1)).toNat

end

end A312533.P16046886978884827189

/-! ## A312533.P10054874785037554675

`A312534(A396204(n+1))`
-/

namespace A312533.P10054874785037554675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312534 (A396204 (n + 1)).toNat

end

end A312533.P10054874785037554675

/-!
# A312534: Coordination sequence Gal.5.175.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312534, there is no canonical definition to state claims against.
-/

/-! ## A312534.P12395263928335607761

`A312533(n)+A292547(A135522(n))`
-/

namespace A312534.P12395263928335607761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312533 n + A292547 (A135522 n).toNat

end

end A312534.P12395263928335607761

/-!
# A312536: Coordination sequence Gal.4.116.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312536, there is no canonical definition to state claims against.
-/

/-! ## A312536.P12293231595939611907

`A312537(n)-A185284(A315830(n))`
-/

namespace A312536.P12293231595939611907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312537 n - A185284 (A315830 n).toNat

end

end A312536.P12293231595939611907

/-! ## A312536.P13208419611002224970

`xor(A107846(A087051(n)), A312537(n))`
-/

namespace A312536.P13208419611002224970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A107846 (A087051 n).toNat) (A312537 n)

end

end A312536.P13208419611002224970

/-! ## A312536.P11876379433309387799

`A312537(n)-A107846(A266578(n+1))`
-/

namespace A312536.P11876379433309387799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312537 n - A107846 (A266578 (n + 1)).toNat

end

end A312536.P11876379433309387799

/-! ## A312536.P2404526961573453119

`A312537(A087051(n))`
-/

namespace A312536.P2404526961573453119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312537 (A087051 n).toNat

end

end A312536.P2404526961573453119

/-! ## A312536.P13347064628734344092

`A312537(A227549(n+1))`
-/

namespace A312536.P13347064628734344092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312537 (A227549 (n + 1)).toNat

end

end A312536.P13347064628734344092

/-!
# A312537: Coordination sequence Gal.5.255.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312537, there is no canonical definition to state claims against.
-/

/-! ## A312537.P17468227376276431227

`A312536(n)+A185284(A315830(n))`
-/

namespace A312537.P17468227376276431227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312536 n + A185284 (A315830 n).toNat

end

end A312537.P17468227376276431227

/-! ## A312537.P17990628681673380182

`xor(A107846(A087051(n)), A312536(n))`
-/

namespace A312537.P17990628681673380182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A107846 (A087051 n).toNat) (A312536 n)

end

end A312537.P17990628681673380182

/-! ## A312537.P9786859002543868010

`A312536(n)+A107846(A266578(n+1))`
-/

namespace A312537.P9786859002543868010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312536 n + A107846 (A266578 (n + 1)).toNat

end

end A312537.P9786859002543868010

/-! ## A312537.P5907313772832144217

`A312536(n)+A100821(A312513(2*n+1))`
-/

namespace A312537.P5907313772832144217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312536 n + A100821 (A312513 (2 * n + 1)).toNat

end

end A312537.P5907313772832144217

/-!
# A312538: Coordination sequence Gal.5.165.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312538, there is no canonical definition to state claims against.
-/

/-! ## A312538.P10443472169940922579

`A312539(n)+A178798(A351754(n))`
-/

namespace A312538.P10443472169940922579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312539 n + A178798 (A351754 n).toNat

end

end A312538.P10443472169940922579

/-! ## A312538.P560952069099320467

`A312539(A087051(n))`
-/

namespace A312538.P560952069099320467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312539 (A087051 n).toNat

end

end A312538.P560952069099320467

/-! ## A312538.P17370941985208842416

`record[A312539(A190599(n))]`
-/

namespace A312538.P17370941985208842416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312539 (A190599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312538.P17370941985208842416

/-! ## A312538.P600210995978262215

`A312539(A227549(n+1))`
-/

namespace A312538.P600210995978262215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312539 (A227549 (n + 1)).toNat

end

end A312538.P600210995978262215

/-! ## A312538.P17893659850750189516

`A312539(A396204(n+1))`
-/

namespace A312538.P17893659850750189516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312539 (A396204 (n + 1)).toNat

end

end A312538.P17893659850750189516

/-!
# A312540: Coordination sequence Gal.5.171.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312540, there is no canonical definition to state claims against.
-/

/-! ## A312540.P18111419325006727217

`A315058(n)-A132662(A270393(n+1))`
-/

namespace A312540.P18111419325006727217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315058 n - A132662 (A270393 (n + 1)).toNat

end

end A312540.P18111419325006727217

/-! ## A312540.P15019520626966417409

`A313966(n)-A001222(A103454(n))`
-/

namespace A312540.P15019520626966417409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313966 n - A001222 (A103454 n).toNat

end

end A312540.P15019520626966417409

/-! ## A312540.P14936242054238932198

`A312555(n)-A269166(A041193(n))`
-/

namespace A312540.P14936242054238932198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312555 n - A269166 (A041193 n).toNat

end

end A312540.P14936242054238932198

/-!
# A312541: Coordination sequence Gal.6.292.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312541, there is no canonical definition to state claims against.
-/

/-! ## A312541.P3088157638442725817

`A312542(A062399(n))`
-/

namespace A312541.P3088157638442725817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312542 (A062399 n).toNat

end

end A312541.P3088157638442725817

/-! ## A312541.P12458924697450839834

`A312542(A120126(n))`
-/

namespace A312541.P12458924697450839834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312542 (A120126 n).toNat

end

end A312541.P12458924697450839834

/-! ## A312541.P2523627023578337221

`A312542(A351870(n))`
-/

namespace A312541.P2523627023578337221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312542 (A351870 n).toNat

end

end A312541.P2523627023578337221

/-! ## A312541.P18140008402058789791

`A312542(n)^A321538(n)!`
-/

namespace A312541.P18140008402058789791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312542 n ^ Nat.factorial (A321538 n).toNat

end

end A312541.P18140008402058789791

/-! ## A312541.P9591273574606834756

`A312542(A087051(n))`
-/

namespace A312541.P9591273574606834756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312542 (A087051 n).toNat

end

end A312541.P9591273574606834756

/-!
# A312542: Coordination sequence Gal.6.293.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312542, there is no canonical definition to state claims against.
-/

/-! ## A312542.P6624935487480494333

`A312541(A100470(n)^A146735(n+1))`
-/

namespace A312542.P6624935487480494333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312541 (SequenceMachineLib.roundAway ((A100470 n : ℚ) ^ (A146735 (n + 1) : ℤ))).toNat

end

end A312542.P6624935487480494333

/-! ## A312542.P615195121870359890

`A312541(A146735(n+1)²²*A100470(n))`
-/

namespace A312542.P615195121870359890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312541 ((A146735 (n + 1) ^ 2) ^ 2 * A100470 n).toNat

end

end A312542.P615195121870359890

/-! ## A312542.P4137219373673614461

`A312541(A100470(n))/A146735(A146735(n+1)²)`
-/

namespace A312542.P4137219373673614461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312541 (A100470 n).toNat : ℚ) / (A146735 (A146735 (n + 1) ^ 2).toNat : ℚ)

end

end A312542.P4137219373673614461

/-!
# A312543: Coordination sequence Gal.6.278.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312543, there is no canonical definition to state claims against.
-/

/-! ## A312543.P7005111344909365103

`A312544(n)-A184945(A018793(n))`
-/

namespace A312543.P7005111344909365103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312544 n - A184945 (A018793 n).toNat

end

end A312543.P7005111344909365103

/-! ## A312543.P14047672017541931750

`A312544(A062399(n))`
-/

namespace A312543.P14047672017541931750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312544 (A062399 n).toNat

end

end A312543.P14047672017541931750

/-! ## A312543.P14068107182979601623

`A312544(A120126(n))`
-/

namespace A312543.P14068107182979601623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312544 (A120126 n).toNat

end

end A312543.P14068107182979601623

/-! ## A312543.P1736192619629647997

`A312544(A351870(n))`
-/

namespace A312543.P1736192619629647997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312544 (A351870 n).toNat

end

end A312543.P1736192619629647997

/-! ## A312543.P17655671321338262971

`A312544(A087051(n))`
-/

namespace A312543.P17655671321338262971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312544 (A087051 n).toNat

end

end A312543.P17655671321338262971

/-!
# A312544: Coordination sequence Gal.6.279.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312544, there is no canonical definition to state claims against.
-/

/-! ## A312544.P4619912123701039844

`A004277(A312527(n))-(2*A312081(n)-A311598(n))`
-/

namespace A312544.P4619912123701039844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312527 n).toNat - (2 * A312081 n - A311598 n)

end

end A312544.P4619912123701039844

/-! ## A312544.P15532220298072969369

`2*A312527(n)-A312486(n)`
-/

namespace A312544.P15532220298072969369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312527 n - A312486 n

end

end A312544.P15532220298072969369

/-! ## A312544.P4177174626372267497

`A005843(A312527(n))-A312486(n)`
-/

namespace A312544.P4177174626372267497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312527 n).toNat - A312486 n

end

end A312544.P4177174626372267497

/-! ## A312544.P15618896660572691293

`A312542(n)+A186034(A324942(n+1))`
-/

namespace A312544.P15618896660572691293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312542 n + A186034 (A324942 (n + 1)).toNat

end

end A312544.P15618896660572691293

/-!
# A312545: Coordination sequence Gal.6.187.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312545, there is no canonical definition to state claims against.
-/

/-! ## A312545.P11660016401472732711

`A312546(n)-A010894(A062687(n+1))`
-/

namespace A312545.P11660016401472732711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312546 n - A010894 ((A062687 (n + 1)).toNat + 21)

end

end A312545.P11660016401472732711

/-! ## A312545.P17986099394583504498

`A312546(n)^A108782(n)!`
-/

namespace A312545.P17986099394583504498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312546 n ^ Nat.factorial (A108782 n).toNat

end

end A312545.P17986099394583504498

/-! ## A312545.P12691947877363409870

`A312546(n)%A359654(n+2)`
-/

namespace A312545.P12691947877363409870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312546 n) (A359654 (n + 2))

end

end A312545.P12691947877363409870

/-! ## A312545.P17612687462003586543

`A312546(A108782(n)²²+n)`
-/

namespace A312545.P17612687462003586543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312546 ((A108782 n ^ 2) ^ 2 + (n : ℤ)).toNat

end

end A312545.P17612687462003586543

/-! ## A312545.P706597284651126084

`A312546(n)*A354997(A057960(n))`
-/

namespace A312545.P706597284651126084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312546 n * A354997 (A057960 n).toNat

end

end A312545.P706597284651126084

/-!
# A312546: Coordination sequence Gal.6.188.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312546, there is no canonical definition to state claims against.
-/

/-! ## A312546.P17526342915514741490

`A312545(n)+A010894(A062687(n+1))`
-/

namespace A312546.P17526342915514741490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312545 n + A010894 ((A062687 (n + 1)).toNat + 21)

end

end A312546.P17526342915514741490

/-!
# A312547: Coordination sequence Gal.6.171.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312547, there is no canonical definition to state claims against.
-/

/-! ## A312547.P5480462039701812634

`record[A312548(A014589(n))]`
-/

namespace A312547.P5480462039701812634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312548 (A014589 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312547.P5480462039701812634

/-! ## A312547.P6603905593978363666

`record[A312548(A190600(n))]`
-/

namespace A312547.P6603905593978363666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312548 (A190600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312547.P6603905593978363666

/-! ## A312547.P15201712941396270533

`record[A312548(A307296(n))]`
-/

namespace A312547.P15201712941396270533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312548 (A307296 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312547.P15201712941396270533

/-! ## A312547.P17600217585599976573

`record[A312548(A307297(n))]`
-/

namespace A312547.P17600217585599976573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312548 (A307297 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312547.P17600217585599976573

/-! ## A312547.P4443574260201501967

`A312548(n)%A099296(n+1)`
-/

namespace A312547.P4443574260201501967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312548 n) (A099296 (n + 1))

end

end A312547.P4443574260201501967

/-!
# A312549: Coordination sequence Gal.4.61.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312549, the canonical program `A312549.P10297096336863811963` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312549 has offset 0).

The definition of A312549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A312549.P10297096336863811963

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=14, a(4)=18, a(5)=24, a(6)=28, a(7)=32, a(8)=36`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A312549

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P10297096336863811963.Spec : Prop :=
  ∀ n, P10297096336863811963.a n = A312549 n

theorem P10297096336863811963.correct : P10297096336863811963.Spec := by
  intro n
  simp only [A312549]

end A312549

/-! ## A312549.P13015961119346875084

`A004277(comp[3*comp[3*n]]+n)`
-/

namespace A312549.P13015961119346875084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A312549.P13015961119346875084

namespace A312549

/-- `A004277(comp[3*comp[3*n]]+n)` -/
def P13015961119346875084.Spec : Prop :=
  ∀ n, P13015961119346875084.a n = A312549 n

end A312549

/-! ## A312549.P15830986981053109180

`2*A311914(n)-A008574(n)`
-/

namespace A312549.P15830986981053109180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311914 n - A008574 n

end

end A312549.P15830986981053109180

namespace A312549

/-- `2*A311914(n)-A008574(n)` -/
def P15830986981053109180.Spec : Prop :=
  ∀ n, P15830986981053109180.a n = A312549 n

end A312549

/-! ## A312549.P1552314130237216016

`A004275(Δ[A011860(n)+n²])`
-/

namespace A312549.P1552314130237216016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (f1 (n + 1) - f1 n).toNat

end

end A312549.P1552314130237216016

namespace A312549

/-- `A004275(Δ[A011860(n)+n²])` -/
def P1552314130237216016.Spec : Prop :=
  ∀ n, P1552314130237216016.a n = A312549 n

end A312549

/-! ## A312549.P7800854307550218703

`A008574(n)+Δ[2*A011860(n)]`
-/

namespace A312549.P7800854307550218703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A312549.P7800854307550218703

namespace A312549

/-- `A008574(n)+Δ[2*A011860(n)]` -/
def P7800854307550218703.Spec : Prop :=
  ∀ n, P7800854307550218703.a n = A312549 n

end A312549

/-! ## A312549.P13177944872284752952

`sqrt(A117676(n))+A312289(n)-n`
-/

namespace A312549.P13177944872284752952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A117676 n : ℝ) + (A312289 n - (n : ℤ) : ℝ)

end

end A312549.P13177944872284752952

namespace A312549

/-- `sqrt(A117676(n))+A312289(n)-n` -/
def P13177944872284752952.Spec : Prop :=
  ∀ n, P13177944872284752952.a n = (A312549 n : ℝ)

end A312549

/-! ## A312549.P12365523584447375944

`A060464(n+1)+A312289(n)-n`
-/

namespace A312549.P12365523584447375944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (n + 1) + (A312289 n - (n : ℤ))

end

end A312549.P12365523584447375944

namespace A312549

/-- `A060464(n+1)+A312289(n)-n` -/
def P12365523584447375944.Spec : Prop :=
  ∀ n, P12365523584447375944.a n = A312549 n

end A312549

/-! ## A312549.P6345704366269054189

`A312974(n)+A238468(n)`
-/

namespace A312549.P6345704366269054189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + A238468 n

end

end A312549.P6345704366269054189

namespace A312549

/-- `A312974(n)+A238468(n)` -/
def P6345704366269054189.Spec : Prop :=
  ∀ n, P6345704366269054189.a n = A312549 n

end A312549

/-! ## A312549.P11564607923509524154

`A314753(n)-A175629(n)`
-/

namespace A312549.P11564607923509524154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314753 n - A175629 n

end

end A312549.P11564607923509524154

namespace A312549

/-- `A314753(n)-A175629(n)` -/
def P11564607923509524154.Spec : Prop :=
  ∀ n, P11564607923509524154.a n = A312549 n

end A312549

/-! ## A312549.P15863640539552297040

`A313051(n)-A238470(n)`
-/

namespace A312549.P15863640539552297040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n - A238470 n

end

end A312549.P15863640539552297040

namespace A312549

/-- `A313051(n)-A238470(n)` -/
def P15863640539552297040.Spec : Prop :=
  ∀ n, P15863640539552297040.a n = A312549 n

end A312549

/-! ## A312549.P16033244386237438814

`A310372(n)-2*A238470(n)`
-/

namespace A312549.P16033244386237438814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n - 2 * A238470 n

end

end A312549.P16033244386237438814

namespace A312549

/-- `A310372(n)-2*A238470(n)` -/
def P16033244386237438814.Spec : Prop :=
  ∀ n, P16033244386237438814.a n = A312549 n

end A312549

/-! ## A312549.P10820006285876068128

`A313982(n)-n`
-/

namespace A312549.P10820006285876068128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313982 n - (n : ℤ)

end

end A312549.P10820006285876068128

namespace A312549

/-- `A313982(n)-n` -/
def P10820006285876068128.Spec : Prop :=
  ∀ n, P10820006285876068128.a n = A312549 n

end A312549

/-! ## A312549.P17189575870519291842

`A001478(n+1)+A313982(n)+1`
-/

namespace A312549.P17189575870519291842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A313982 n + 1)

end

end A312549.P17189575870519291842

namespace A312549

/-- `A001478(n+1)+A313982(n)+1` -/
def P17189575870519291842.Spec : Prop :=
  ∀ n, P17189575870519291842.a n = A312549 n

end A312549

/-! ## A312549.P12733165828347146764

`A194225(n+1)+A313836(n)-n`
-/

namespace A312549.P12733165828347146764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194225 (n + 1) + (A313836 n - (n : ℤ))

end

end A312549.P12733165828347146764

namespace A312549

/-- `A194225(n+1)+A313836(n)-n` -/
def P12733165828347146764.Spec : Prop :=
  ∀ n, P12733165828347146764.a n = A312549 n

end A312549

/-! ## A312549.P14646106486192423141

`abs(A008593(n)-(A315647(n)+n))`
-/

namespace A312549.P14646106486192423141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A315647 n + (n : ℤ))|

end

end A312549.P14646106486192423141

namespace A312549

/-- `abs(A008593(n)-(A315647(n)+n))` -/
def P14646106486192423141.Spec : Prop :=
  ∀ n, P14646106486192423141.a n = A312549 n

end A312549

/-! ## A312549.P3708628833512729332

`A008458(n)+A008574(n)-A315647(n)`
-/

namespace A312549.P3708628833512729332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315647 n)

end

end A312549.P3708628833512729332

namespace A312549

/-- `A008458(n)+A008574(n)-A315647(n)` -/
def P3708628833512729332.Spec : Prop :=
  ∀ n, P3708628833512729332.a n = A312549 n

end A312549

/-! ## A312549.P12933101213902898553

`A312289(2*n)-4*n`
-/

namespace A312549.P12933101213902898553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 (2 * n) - (4 * n : ℤ)

end

end A312549.P12933101213902898553

namespace A312549

/-- `A312289(2*n)-4*n` -/
def P12933101213902898553.Spec : Prop :=
  ∀ n, P12933101213902898553.a n = A312549 n

end A312549

/-!
# A312550: Coordination sequence Gal.6.536.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312550, there is no canonical definition to state claims against.
-/

/-! ## A312550.P9118361337620690097

`record[∑[A227216(A100071(n))]]`
-/

namespace A312550.P9118361337620690097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 (A100071 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312550.P9118361337620690097

/-! ## A312550.P11115114281468912675

`and(A310398(A087051(n)), A314500(n))`
-/

namespace A312550.P11115114281468912675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A310398 (A087051 n).toNat) (A314500 n)

end

end A312550.P11115114281468912675

/-! ## A312550.P14987973737724027928

`and(A310398(A087051(n)), A315081(n))`
-/

namespace A312550.P14987973737724027928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A310398 (A087051 n).toNat) (A315081 n)

end

end A312550.P14987973737724027928

/-!
# A312551: Coordination sequence Gal.6.308.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312551, there is no canonical definition to state claims against.
-/

/-! ## A312551.P17423315194547792892

`A312552(n)-A055641(A084221(n))`
-/

namespace A312551.P17423315194547792892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312552 n - A055641 (A084221 n).toNat

end

end A312551.P17423315194547792892

/-! ## A312551.P15213411258084170555

`A312140(n)+A288512(A007530(n+1))`
-/

namespace A312551.P15213411258084170555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + A288512 (A007530 (n + 1)).toNat

end

end A312551.P15213411258084170555

/-! ## A312551.P14727875999591792044

`A312386(n)+A309061(A000961(3*n+1))`
-/

namespace A312551.P14727875999591792044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312386 n + A309061 (A000961 (3 * n + 1)).toNat

end

end A312551.P14727875999591792044

/-! ## A312551.P16552112026501130220

`record[A312552(n)-A308854(n)]`
-/

namespace A312551.P16552112026501130220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312552 n - A308854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312551.P16552112026501130220

/-! ## A312551.P12054310693370414158

`record[A312552(n)-n*A259195(n)]`
-/

namespace A312551.P12054310693370414158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312552 n - (n : ℤ) * A259195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312551.P12054310693370414158

/-!
# A312552: Coordination sequence Gal.6.307.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312552, there is no canonical definition to state claims against.
-/

/-! ## A312552.P1484629607493044050

`A312551(n)+A055641(2^n)`
-/

namespace A312552.P1484629607493044050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312551 n + A055641 (2 ^ n)

end

end A312552.P1484629607493044050

/-! ## A312552.P9073716675752437364

`A311347(n)+A031346(A014187(n))`
-/

namespace A312552.P9073716675752437364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A031346 (A014187 n).toNat

end

end A312552.P9073716675752437364

/-! ## A312552.P3267043555078961384

`A312551(A062399(n))+A031346(n)`
-/

namespace A312552.P3267043555078961384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312551 (A062399 n).toNat + A031346 n

end

end A312552.P3267043555078961384

/-! ## A312552.P17625084064669353446

`A312551(n)+A185284(A212804(n))`
-/

namespace A312552.P17625084064669353446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312551 n + A185284 (A212804 n).toNat

end

end A312552.P17625084064669353446

/-! ## A312552.P16567928636164057806

`or(A031346(A062399(n)), A312551(n))`
-/

namespace A312552.P16567928636164057806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031346 (A062399 n).toNat) (A312551 n)

end

end A312552.P16567928636164057806

/-!
# A312553: Coordination sequence Gal.6.308.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312553, there is no canonical definition to state claims against.
-/

/-! ## A312553.P6010361818838879661

`lt[A125938(2*n+5), A125918(A125934(2*(n+1)))]`
-/

namespace A312553.P6010361818838879661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125938 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125918 (A125934 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A312553.P6010361818838879661

/-! ## A312553.P941866318530876283

`record[∑[A123066(A123091(2*(n+1)))]]`
-/

namespace A312553.P941866318530876283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123066 (A123091 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312553.P941866318530876283

/-! ## A312553.P1220332550594000083

`A312554(n)-A033665(A191370(n))`
-/

namespace A312553.P1220332550594000083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312554 n - A033665 (A191370 n).toNat

end

end A312553.P1220332550594000083

/-! ## A312553.P8560545748861247373

`A326075(A229364(3*n+5))+A312546(n)`
-/

namespace A312553.P8560545748861247373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326075 (A229364 (3 * n + 5)).toNat + A312546 n

end

end A312553.P8560545748861247373

/-! ## A312553.P6503219877302403405

`A312554(n)%A095629(n)`
-/

namespace A312553.P6503219877302403405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312554 n) (A095629 n)

end

end A312553.P6503219877302403405

/-!
# A312554: Coordination sequence Gal.6.307.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312554, there is no canonical definition to state claims against.
-/

/-! ## A312554.P6546833924084550357

`A311625(n)+A055641((n²+1)²)`
-/

namespace A312554.P6546833924084550357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + A055641 ((n ^ 2 + 1) ^ 2)

end

end A312554.P6546833924084550357

/-! ## A312554.P12269382800243629586

`and(A313122(A087051(n)), A315187(n))`
-/

namespace A312554.P12269382800243629586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A313122 (A087051 n).toNat) (A315187 n)

end

end A312554.P12269382800243629586

/-! ## A312554.P995500262966632135

`and(A315011(n), A315187(A087051(n)))`
-/

namespace A312554.P995500262966632135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A315011 n) (A315187 (A087051 n).toNat)

end

end A312554.P995500262966632135

/-! ## A312554.P18354764896504892318

`xor(A082543(A168256(n)), A312558(n))`
-/

namespace A312554.P18354764896504892318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082543 (A168256 n).toNat) (A312558 n)

end

end A312554.P18354764896504892318

/-!
# A312555: Coordination sequence Gal.5.110.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312555, the canonical program `A312555.P10974015177557321906` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312555 has offset 0).

The definition of A312555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312555.P10974015177557321906

`A311993(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A312555

/-- `A311993(n)+Δ[A011862(n)]` -/
def P10974015177557321906.Spec : Prop :=
  ∀ n, P10974015177557321906.a n = A312555 n

theorem P10974015177557321906.correct : P10974015177557321906.Spec := by
  intro n
  simp only [A312555]

end A312555

/-! ## A312555.P14846615307630278059

`A311344(n)+Δ[2*A011862(n)]`
-/

namespace A312555.P14846615307630278059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 n + (f1 (n + 1) - f1 n)

end

end A312555.P14846615307630278059

namespace A312555

/-- `A311344(n)+Δ[2*A011862(n)]` -/
def P14846615307630278059.Spec : Prop :=
  ∀ n, P14846615307630278059.a n = A312555 n

end A312555

/-! ## A312555.P11032992276515253863

`A004396(n)+A311993(n)-A004396(A004396(n))`
-/

namespace A312555.P11032992276515253863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311993 n - A004396 (A004396 n).toNat)

end

end A312555.P11032992276515253863

namespace A312555

/-- `A004396(n)+A311993(n)-A004396(A004396(n))` -/
def P11032992276515253863.Spec : Prop :=
  ∀ n, P11032992276515253863.a n = A312555 n

end A312555

/-! ## A312555.P17499115060116706648

`A314736(n)-A102283(A004396(n))`
-/

namespace A312555.P17499115060116706648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n - A102283 (A004396 n).toNat

end

end A312555.P17499115060116706648

namespace A312555

/-- `A314736(n)-A102283(A004396(n))` -/
def P17499115060116706648.Spec : Prop :=
  ∀ n, P17499115060116706648.a n = A312555 n

end A312555

/-! ## A312555.P211538441460061226

`A314736(n)+A102283(2*A004396(n))`
-/

namespace A312555.P211538441460061226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n + A102283 (2 * A004396 n).toNat

end

end A312555.P211538441460061226

namespace A312555

/-- `A314736(n)+A102283(2*A004396(n))` -/
def P211538441460061226.Spec : Prop :=
  ∀ n, P211538441460061226.a n = A312555 n

end A312555

/-! ## A312555.P2386893422097787484

`A314736(n)-A128834(2*A004396(n))`
-/

namespace A312555.P2386893422097787484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n - A128834 (2 * A004396 n).toNat

end

end A312555.P2386893422097787484

namespace A312555

/-- `A314736(n)-A128834(2*A004396(n))` -/
def P2386893422097787484.Spec : Prop :=
  ∀ n, P2386893422097787484.a n = A312555 n

end A312555

/-! ## A312555.P3194726248839609421

`A315068(n)-A004396(A004396(n))`
-/

namespace A312555.P3194726248839609421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315068 n - A004396 (A004396 n).toNat

end

end A312555.P3194726248839609421

namespace A312555

/-- `A315068(n)-A004396(A004396(n))` -/
def P3194726248839609421.Spec : Prop :=
  ∀ n, P3194726248839609421.a n = A312555 n

end A312555

/-! ## A312555.P2674999599632892001

`abs(A008592(n)-A315646(n))`
-/

namespace A312555.P2674999599632892001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315646 n|

end

end A312555.P2674999599632892001

namespace A312555

/-- `abs(A008592(n)-A315646(n))` -/
def P2674999599632892001.Spec : Prop :=
  ∀ n, P2674999599632892001.a n = A312555 n

end A312555

/-! ## A312555.P6629566646839441832

`2*A008706(n)-A315646(n)`
-/

namespace A312555.P6629566646839441832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315646 n

end

end A312555.P6629566646839441832

namespace A312555

/-- `2*A008706(n)-A315646(n)` -/
def P6629566646839441832.Spec : Prop :=
  ∀ n, P6629566646839441832.a n = A312555 n

end A312555

/-! ## A312555.P855763224788344841

`A008458(n)+A008574(n)-A315646(n)`
-/

namespace A312555.P855763224788344841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315646 n)

end

end A312555.P855763224788344841

namespace A312555

/-- `A008458(n)+A008574(n)-A315646(n)` -/
def P855763224788344841.Spec : Prop :=
  ∀ n, P855763224788344841.a n = A312555 n

end A312555

/-! ## A312555.P3487548756129100025

`A315646(n)-A005843(A315646(n)-A008706(n))`
-/

namespace A312555.P3487548756129100025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315646 n - A005843 (A315646 n - A008706 n).toNat

end

end A312555.P3487548756129100025

namespace A312555

/-- `A315646(n)-A005843(A315646(n)-A008706(n))` -/
def P3487548756129100025.Spec : Prop :=
  ∀ n, P3487548756129100025.a n = A312555 n

end A312555

/-! ## A312555.P17334674094976218974

`2*A313894(n)-A008458(n)`
-/

namespace A312555.P17334674094976218974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313894 n - A008458 n

end

end A312555.P17334674094976218974

namespace A312555

/-- `2*A313894(n)-A008458(n)` -/
def P17334674094976218974.Spec : Prop :=
  ∀ n, P17334674094976218974.a n = A312555 n

end A312555

/-! ## A312555.P1358417731237677522

`A008458(n)-A005843(A008458(n)-A313894(n))`
-/

namespace A312555.P1358417731237677522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313894 n).toNat

end

end A312555.P1358417731237677522

namespace A312555

/-- `A008458(n)-A005843(A008458(n)-A313894(n))` -/
def P1358417731237677522.Spec : Prop :=
  ∀ n, P1358417731237677522.a n = A312555 n

end A312555

/-! ## A312555.P4938341694589103604

`A313293(n)-A004525(A313293(n)-A008574(n))`
-/

namespace A312555.P4938341694589103604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313293 n - A004525 (A313293 n - A008574 n).toNat

end

end A312555.P4938341694589103604

namespace A312555

/-- `A313293(n)-A004525(A313293(n)-A008574(n))` -/
def P4938341694589103604.Spec : Prop :=
  ∀ n, P4938341694589103604.a n = A312555 n

end A312555

/-! ## A312555.P14227912284682948487

`A315343(n)-2*A004396(A004396(n))`
-/

namespace A312555.P14227912284682948487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315343 n - 2 * A004396 (A004396 n).toNat

end

end A312555.P14227912284682948487

namespace A312555

/-- `A315343(n)-2*A004396(A004396(n))` -/
def P14227912284682948487.Spec : Prop :=
  ∀ n, P14227912284682948487.a n = A312555 n

end A312555

/-! ## A312555.P16673401523120098681

`A005843(A008706(n))-A315646(n)`
-/

namespace A312555.P16673401523120098681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315646 n

end

end A312555.P16673401523120098681

namespace A312555

/-- `A005843(A008706(n))-A315646(n)` -/
def P16673401523120098681.Spec : Prop :=
  ∀ n, P16673401523120098681.a n = A312555 n

end A312555

/-! ## A312555.P11541346997464510128

`A005843(A313894(n))-A008458(n)`
-/

namespace A312555.P11541346997464510128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313894 n).toNat - A008458 n

end

end A312555.P11541346997464510128

namespace A312555

/-- `A005843(A313894(n))-A008458(n)` -/
def P11541346997464510128.Spec : Prop :=
  ∀ n, P11541346997464510128.a n = A312555 n

end A312555

/-!
# A312556: Coordination sequence Gal.6.246.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312556, the canonical program `A312556.P6831647476086215213` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312556 has offset 0).

The definition of A312556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1799 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312556.P10929588929578754748

`abs(A008592(n)-A315645(n))`
-/

namespace A312556.P10929588929578754748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315645 n|

end

end A312556.P10929588929578754748

namespace A312556

/-- `abs(A008592(n)-A315645(n))` -/
def P10929588929578754748.Spec : Prop :=
  ∀ n, P10929588929578754748.a n = A312556 n

end A312556

/-! ## A312556.P6831647476086215213

`A312125(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A312556

/-- `A312125(n)+Δ[A011864(n)]` -/
def P6831647476086215213.Spec : Prop :=
  ∀ n, P6831647476086215213.a n = A312556 n

theorem P6831647476086215213.correct : P6831647476086215213.Spec := by
  intro n
  simp only [A312556]

end A312556

/-! ## A312556.P5075370107669342388

`2*A311932(n)-A008574(n)`
-/

namespace A312556.P5075370107669342388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311932 n - A008574 n

end

end A312556.P5075370107669342388

namespace A312556

/-- `2*A311932(n)-A008574(n)` -/
def P5075370107669342388.Spec : Prop :=
  ∀ n, P5075370107669342388.a n = A312556 n

end A312556

/-! ## A312556.P16189165212649997538

`2*A008706(n)-A315645(n)`
-/

namespace A312556.P16189165212649997538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315645 n

end

end A312556.P16189165212649997538

namespace A312556

/-- `2*A008706(n)-A315645(n)` -/
def P16189165212649997538.Spec : Prop :=
  ∀ n, P16189165212649997538.a n = A312556 n

end A312556

/-! ## A312556.P1320249920933856940

`2*A313113(n)-A310408(n)`
-/

namespace A312556.P1320249920933856940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313113 n - A310408 n

end

end A312556.P1320249920933856940

namespace A312556

/-- `2*A313113(n)-A310408(n)` -/
def P1320249920933856940.Spec : Prop :=
  ∀ n, P1320249920933856940.a n = A312556 n

end A312556

/-! ## A312556.P16154075460407544614

`A311593(n)+Δ[2*A011864(n)]`
-/

namespace A312556.P16154075460407544614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311593 n + (f1 (n + 1) - f1 n)

end

end A312556.P16154075460407544614

namespace A312556

/-- `A311593(n)+Δ[2*A011864(n)]` -/
def P16154075460407544614.Spec : Prop :=
  ∀ n, P16154075460407544614.a n = A312556 n

end A312556

/-! ## A312556.P7326241489644567238

`A103517(A311932(n)-(2*n+1))`
-/

namespace A312556.P7326241489644567238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A311932 n - (2 * n + 1 : ℤ)).toNat

end

end A312556.P7326241489644567238

namespace A312556

/-- `A103517(A311932(n)-(2*n+1))` -/
def P7326241489644567238.Spec : Prop :=
  ∀ n, P7326241489644567238.a n = A312556 n

end A312556

/-! ## A312556.P16301732210848700423

`A004275(A311932(n)-A004273(n))`
-/

namespace A312556.P16301732210848700423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311932 n - A004273 n).toNat

end

end A312556.P16301732210848700423

namespace A312556

/-- `A004275(A311932(n)-A004273(n))` -/
def P16301732210848700423.Spec : Prop :=
  ∀ n, P16301732210848700423.a n = A312556 n

end A312556

/-! ## A312556.P4891169003228896374

`A004277(A311932(n)-A004277(n))`
-/

namespace A312556.P4891169003228896374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311932 n - A004277 n).toNat

end

end A312556.P4891169003228896374

namespace A312556

/-- `A004277(A311932(n)-A004277(n))` -/
def P4891169003228896374.Spec : Prop :=
  ∀ n, P4891169003228896374.a n = A312556 n

end A312556

/-! ## A312556.P12622577937176054843

`A005843(A311932(n))-A008574(n)`
-/

namespace A312556.P12622577937176054843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311932 n).toNat - A008574 n

end

end A312556.P12622577937176054843

namespace A312556

/-- `A005843(A311932(n))-A008574(n)` -/
def P12622577937176054843.Spec : Prop :=
  ∀ n, P12622577937176054843.a n = A312556 n

end A312556

/-! ## A312556.P17308041468740837737

`A005843(A008706(n))-A315645(n)`
-/

namespace A312556.P17308041468740837737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315645 n

end

end A312556.P17308041468740837737

namespace A312556

/-- `A005843(A008706(n))-A315645(n)` -/
def P17308041468740837737.Spec : Prop :=
  ∀ n, P17308041468740837737.a n = A312556 n

end A312556

/-! ## A312556.P11026854062158682390

`A005843(A313113(n))-A310408(n)`
-/

namespace A312556.P11026854062158682390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313113 n).toNat - A310408 n

end

end A312556.P11026854062158682390

namespace A312556

/-- `A005843(A313113(n))-A310408(n)` -/
def P11026854062158682390.Spec : Prop :=
  ∀ n, P11026854062158682390.a n = A312556 n

end A312556

/-! ## A312556.P1251946992331461031

`A004275(A311932(n))-A004275(2*n)`
-/

namespace A312556.P1251946992331461031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311932 n).toNat - A004275 (2 * n)

end

end A312556.P1251946992331461031

namespace A312556

/-- `A004275(A311932(n))-A004275(2*n)` -/
def P1251946992331461031.Spec : Prop :=
  ∀ n, P1251946992331461031.a n = A312556 n

end A312556

/-! ## A312556.P8443320557760430662

`A005843(A311932(n))+n-A008706(n)`
-/

namespace A312556.P8443320557760430662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311932 n).toNat + ((n : ℤ) - A008706 n)

end

end A312556.P8443320557760430662

namespace A312556

/-- `A005843(A311932(n))+n-A008706(n)` -/
def P8443320557760430662.Spec : Prop :=
  ∀ n, P8443320557760430662.a n = A312556 n

end A312556

/-! ## A312556.P5814696314878953334

`A008458(n)+A008574(n)-A315645(n)`
-/

namespace A312556.P5814696314878953334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315645 n)

end

end A312556.P5814696314878953334

namespace A312556

/-- `A008458(n)+A008574(n)-A315645(n)` -/
def P5814696314878953334.Spec : Prop :=
  ∀ n, P5814696314878953334.a n = A312556 n

end A312556

/-! ## A312556.P14123981110625614080

`A004273(A311932(n)-n)-A004273(n)`
-/

namespace A312556.P14123981110625614080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A311932 n - (n : ℤ)).toNat - A004273 n

end

end A312556.P14123981110625614080

namespace A312556

/-- `A004273(A311932(n)-n)-A004273(n)` -/
def P14123981110625614080.Spec : Prop :=
  ∀ n, P14123981110625614080.a n = A312556 n

end A312556

/-! ## A312556.P4141058916642768675

`A313296(n)-A004525(A313296(n)-A008574(n))`
-/

namespace A312556.P4141058916642768675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313296 n - A004525 (A313296 n - A008574 n).toNat

end

end A312556.P4141058916642768675

namespace A312556

/-- `A313296(n)-A004525(A313296(n)-A008574(n))` -/
def P4141058916642768675.Spec : Prop :=
  ∀ n, P4141058916642768675.a n = A312556 n

end A312556

/-!
# A312557: Coordination sequence Gal.6.418.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312557, there is no canonical definition to state claims against.
-/

/-! ## A312557.P12950559350754166554

`A312561(n)-A279228(A073576(n))`
-/

namespace A312557.P12950559350754166554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n - A279228 (A073576 n).toNat

end

end A312557.P12950559350754166554

/-! ## A312557.P2883479022558632158

`A312553(n)+A035182(A000041(3*n+4))`
-/

namespace A312557.P2883479022558632158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312553 n + A035182 (A000041 (3 * n + 4)).toNat

end

end A312557.P2883479022558632158

/-! ## A312557.P16056653983778356158

`∑[A101432(A209215(2*n+1))]`
-/

namespace A312557.P16056653983778356158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101432 (A209215 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312557.P16056653983778356158

/-! ## A312557.P2429221422062597739

`record[A195184(3*n+1)-A006927(n)]`
-/

namespace A312557.P2429221422062597739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195184 (3 * n + 1) - A006927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312557.P2429221422062597739

/-! ## A312557.P7707773303780425166

`∑[A260311(A000203(n+1)+8*n)]+n`
-/

namespace A312557.P7707773303780425166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 (A000203 (n + 1) + (8 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A312557.P7707773303780425166

/-!
# A312558: Coordination sequence Gal.6.316.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312558, there is no canonical definition to state claims against.
-/

/-! ## A312558.P2298952794499459458

`A312561(n)-A037800(A034386(n))`
-/

namespace A312558.P2298952794499459458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n - A037800 (A034386 n).toNat

end

end A312558.P2298952794499459458

/-! ## A312558.P4603595015445431447

`A312561(n)-A198318(A330812(n+1))`
-/

namespace A312558.P4603595015445431447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n - A198318 (A330812 (n + 1)).toNat

end

end A312558.P4603595015445431447

/-! ## A312558.P3009589577618715005

`A312561(n)-A001221(A053497(n))`
-/

namespace A312558.P3009589577618715005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n - A001221 (A053497 n).toNat

end

end A312558.P3009589577618715005

/-! ## A312558.P3506626277627425522

`record[(p?[round(8*n/7)]+1)%A235460(n+1)]`
-/

namespace A312558.P3506626277627425522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1) (A235460 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312558.P3506626277627425522

/-! ## A312558.P12185420668797052433

`A252801(n+1)+A167407(A000108(n))`
-/

namespace A312558.P12185420668797052433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252801 (n + 1) + A167407 (A000108 n).toNat

end

end A312558.P12185420668797052433

/-!
# A312559: Coordination sequence Gal.6.311.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312559, there is no canonical definition to state claims against.
-/

/-! ## A312559.P2207400923091158985

`A312560(A062399(n))`
-/

namespace A312559.P2207400923091158985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312560 (A062399 n).toNat

end

end A312559.P2207400923091158985

/-! ## A312559.P1073179326448650081

`A312560(A120126(n))`
-/

namespace A312559.P1073179326448650081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312560 (A120126 n).toNat

end

end A312559.P1073179326448650081

/-! ## A312559.P4351025764447626138

`A312560(A351870(n))`
-/

namespace A312559.P4351025764447626138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312560 (A351870 n).toNat

end

end A312559.P4351025764447626138

/-! ## A312559.P368498805187367242

`A312560(n)^A321538(n)!`
-/

namespace A312559.P368498805187367242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312560 n ^ Nat.factorial (A321538 n).toNat

end

end A312559.P368498805187367242

/-! ## A312559.P2911042882853539445

`A312560(n)%A303366(3*n+2)`
-/

namespace A312559.P2911042882853539445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312560 n) (A303366 (3 * n + 2))

end

end A312559.P2911042882853539445

/-!
# A312561: Coordination sequence Gal.6.247.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312561, the canonical program `A312561.P3060569435610033716` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312561 has offset 0).

The definition of A312561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312561.P9650088817338644277

`A250120(n)-A330025(n)`
-/

namespace A312561.P9650088817338644277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A330025 n

end

end A312561.P9650088817338644277

namespace A312561

/-- `A250120(n)-A330025(n)` -/
def P9650088817338644277.Spec : Prop :=
  ∀ n, P9650088817338644277.a n = A312561 n

end A312561

/-! ## A312561.P1339069165539548311

`2*A311958(n)-A008574(n)`
-/

namespace A312561.P1339069165539548311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311958 n - A008574 n

end

end A312561.P1339069165539548311

namespace A312561

/-- `2*A311958(n)-A008574(n)` -/
def P1339069165539548311.Spec : Prop :=
  ∀ n, P1339069165539548311.a n = A312561 n

end A312561

/-! ## A312561.P2241389725196293058

`A004275(A311958(n)-A004273(n))`
-/

namespace A312561.P2241389725196293058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311958 n - A004273 n).toNat

end

end A312561.P2241389725196293058

namespace A312561

/-- `A004275(A311958(n)-A004273(n))` -/
def P2241389725196293058.Spec : Prop :=
  ∀ n, P2241389725196293058.a n = A312561 n

end A312561

/-! ## A312561.P3060569435610033716

`A047486(A008486(n)+1)-A330025(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A312561

/-- `A047486(A008486(n)+1)-A330025(n)` -/
def P3060569435610033716.Spec : Prop :=
  ∀ n, P3060569435610033716.a n = A312561 n

theorem P3060569435610033716.correct : P3060569435610033716.Spec := by
  intro n
  simp only [A312561]

end A312561

/-! ## A312561.P10766831930542792158

`A047486(A033627(n+2))-A330025(n)`
-/

namespace A312561.P10766831930542792158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A033627 (n + 2)).toNat - A330025 n

end

end A312561.P10766831930542792158

namespace A312561

/-- `A047486(A033627(n+2))-A330025(n)` -/
def P10766831930542792158.Spec : Prop :=
  ∀ n, P10766831930542792158.a n = A312561 n

end A312561

/-! ## A312561.P18350570844616760367

`A151988(2*n)+A004277(A151988(n))`
-/

namespace A312561.P18350570844616760367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (2 * n) + A004277 (A151988 n).toNat

end

end A312561.P18350570844616760367

namespace A312561

/-- `A151988(2*n)+A004277(A151988(n))` -/
def P18350570844616760367.Spec : Prop :=
  ∀ n, P18350570844616760367.a n = A312561 n

end A312561

/-! ## A312561.P7177722534851448258

`A004273(A311958(n)-n)-A004273(n)`
-/

namespace A312561.P7177722534851448258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A311958 n - (n : ℤ)).toNat - A004273 n

end

end A312561.P7177722534851448258

namespace A312561

/-- `A004273(A311958(n)-n)-A004273(n)` -/
def P7177722534851448258.Spec : Prop :=
  ∀ n, P7177722534851448258.a n = A312561 n

end A312561

/-! ## A312561.P11828834091755566884

`A151988(n)+A151988(A004277(n))+A151988(n)`
-/

namespace A312561.P11828834091755566884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A151988 (A004277 n).toNat + A151988 n)

end

end A312561.P11828834091755566884

namespace A312561

/-- `A151988(n)+A151988(A004277(n))+A151988(n)` -/
def P11828834091755566884.Spec : Prop :=
  ∀ n, P11828834091755566884.a n = A312561 n

end A312561

/-! ## A312561.P8758965971353820854

`A008574(n)+A005843(A311958(n)-A008574(n))`
-/

namespace A312561.P8758965971353820854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A311958 n - A008574 n).toNat

end

end A312561.P8758965971353820854

namespace A312561

/-- `A008574(n)+A005843(A311958(n)-A008574(n))` -/
def P8758965971353820854.Spec : Prop :=
  ∀ n, P8758965971353820854.a n = A312561 n

end A312561

/-! ## A312561.P9223023115284946172

`2*A250120(n)-A315303(n)`
-/

namespace A312561.P9223023115284946172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250120 n - A315303 n

end

end A312561.P9223023115284946172

namespace A312561

/-- `2*A250120(n)-A315303(n)` -/
def P9223023115284946172.Spec : Prop :=
  ∀ n, P9223023115284946172.a n = A312561 n

end A312561

/-! ## A312561.P4168983455578916179

`A315303(n)-2*A330025(n)`
-/

namespace A312561.P4168983455578916179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315303 n - 2 * A330025 n

end

end A312561.P4168983455578916179

namespace A312561

/-- `A315303(n)-2*A330025(n)` -/
def P4168983455578916179.Spec : Prop :=
  ∀ n, P4168983455578916179.a n = A312561 n

end A312561

/-! ## A312561.P6926033368455511719

`abs(A008592(n)-A315644(n))`
-/

namespace A312561.P6926033368455511719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315644 n|

end

end A312561.P6926033368455511719

namespace A312561

/-- `abs(A008592(n)-A315644(n))` -/
def P6926033368455511719.Spec : Prop :=
  ∀ n, P6926033368455511719.a n = A312561 n

end A312561

/-! ## A312561.P11951474708941714691

`A008458(n)+A008574(n)-A315644(n)`
-/

namespace A312561.P11951474708941714691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315644 n)

end

end A312561.P11951474708941714691

namespace A312561

/-- `A008458(n)+A008574(n)-A315644(n)` -/
def P11951474708941714691.Spec : Prop :=
  ∀ n, P11951474708941714691.a n = A312561 n

end A312561

/-! ## A312561.P6521418009103133841

`A072154(2*n)-A330025(n)`
-/

namespace A312561.P6521418009103133841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A330025 n

end

end A312561.P6521418009103133841

namespace A312561

/-- `A072154(2*n)-A330025(n)` -/
def P6521418009103133841.Spec : Prop :=
  ∀ n, P6521418009103133841.a n = A312561 n

end A312561

/-! ## A312561.P7444335857710155180

`A005843(A311958(n))-A008574(n)`
-/

namespace A312561.P7444335857710155180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311958 n).toNat - A008574 n

end

end A312561.P7444335857710155180

namespace A312561

/-- `A005843(A311958(n))-A008574(n)` -/
def P7444335857710155180.Spec : Prop :=
  ∀ n, P7444335857710155180.a n = A312561 n

end A312561

/-! ## A312561.P3037586510339932386

`A004275(A311958(n))-A004275(2*n)`
-/

namespace A312561.P3037586510339932386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311958 n).toNat - A004275 (2 * n)

end

end A312561.P3037586510339932386

namespace A312561

/-- `A004275(A311958(n))-A004275(2*n)` -/
def P3037586510339932386.Spec : Prop :=
  ∀ n, P3037586510339932386.a n = A312561 n

end A312561

/-! ## A312561.P5607534788227443972

`2*A313898(n)-A008458(n)`
-/

namespace A312561.P5607534788227443972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313898 n - A008458 n

end

end A312561.P5607534788227443972

namespace A312561

/-- `2*A313898(n)-A008458(n)` -/
def P5607534788227443972.Spec : Prop :=
  ∀ n, P5607534788227443972.a n = A312561 n

end A312561

/-! ## A312561.P13612145174769245824

`A004525(A301730(2*n))-A330025(n)`
-/

namespace A312561.P13612145174769245824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301730 (2 * n)).toNat - A330025 n

end

end A312561.P13612145174769245824

namespace A312561

/-- `A004525(A301730(2*n))-A330025(n)` -/
def P13612145174769245824.Spec : Prop :=
  ∀ n, P13612145174769245824.a n = A312561 n

end A312561

/-! ## A312561.P7074358200354556203

`A004525(A310398(2*n))-A330025(n)`
-/

namespace A312561.P7074358200354556203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310398 (2 * n)).toNat - A330025 n

end

end A312561.P7074358200354556203

namespace A312561

/-- `A004525(A310398(2*n))-A330025(n)` -/
def P7074358200354556203.Spec : Prop :=
  ∀ n, P7074358200354556203.a n = A312561 n

end A312561

/-!
# A312562: Coordination sequence Gal.6.248.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312562, the canonical program `A312562.P11996816814082139612` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312562 has offset 0).

The definition of A312562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312562.P11996816814082139612

`A312151(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A312562

/-- `A312151(n)+Δ[A011864(n)]` -/
def P11996816814082139612.Spec : Prop :=
  ∀ n, P11996816814082139612.a n = A312562 n

theorem P11996816814082139612.correct : P11996816814082139612.Spec := by
  intro n
  simp only [A312562]

end A312562

/-! ## A312562.P4308444414559615622

`A311613(n)+Δ[2*A011864(n)]`
-/

namespace A312562.P4308444414559615622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311613 n + (f1 (n + 1) - f1 n)

end

end A312562.P4308444414559615622

namespace A312562

/-- `A311613(n)+Δ[2*A011864(n)]` -/
def P4308444414559615622.Spec : Prop :=
  ∀ n, P4308444414559615622.a n = A312562 n

end A312562

/-! ## A312562.P237087536050223710

`2*A313696(n)-A315633(n)`
-/

namespace A312562.P237087536050223710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313696 n - A315633 n

end

end A312562.P237087536050223710

namespace A312562

/-- `2*A313696(n)-A315633(n)` -/
def P237087536050223710.Spec : Prop :=
  ∀ n, P237087536050223710.a n = A312562 n

end A312562

/-! ## A312562.P11454112139876017780

`abs(A008592(n)-A315643(n))`
-/

namespace A312562.P11454112139876017780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315643 n|

end

end A312562.P11454112139876017780

namespace A312562

/-- `abs(A008592(n)-A315643(n))` -/
def P11454112139876017780.Spec : Prop :=
  ∀ n, P11454112139876017780.a n = A312562 n

end A312562

/-! ## A312562.P15046198395142396493

`2*A008706(n)-A315643(n)`
-/

namespace A312562.P15046198395142396493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315643 n

end

end A312562.P15046198395142396493

namespace A312562

/-- `2*A008706(n)-A315643(n)` -/
def P15046198395142396493.Spec : Prop :=
  ∀ n, P15046198395142396493.a n = A312562 n

end A312562

/-! ## A312562.P13352684403018322468

`A008458(n)+A008574(n)-A315643(n)`
-/

namespace A312562.P13352684403018322468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315643 n)

end

end A312562.P13352684403018322468

namespace A312562

/-- `A008458(n)+A008574(n)-A315643(n)` -/
def P13352684403018322468.Spec : Prop :=
  ∀ n, P13352684403018322468.a n = A312562 n

end A312562

/-! ## A312562.P5048290335902481517

`2*A313899(n)-A008458(n)`
-/

namespace A312562.P5048290335902481517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313899 n - A008458 n

end

end A312562.P5048290335902481517

namespace A312562

/-- `2*A313899(n)-A008458(n)` -/
def P5048290335902481517.Spec : Prop :=
  ∀ n, P5048290335902481517.a n = A312562 n

end A312562

/-! ## A312562.P13914520573860861572

`2*A313899(n)-A008486(2*n)`
-/

namespace A312562.P13914520573860861572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313899 n - A008486 (2 * n)

end

end A312562.P13914520573860861572

namespace A312562

/-- `2*A313899(n)-A008486(2*n)` -/
def P13914520573860861572.Spec : Prop :=
  ∀ n, P13914520573860861572.a n = A312562 n

end A312562

/-! ## A312562.P16307593681754247432

`A008458(n)-A005843(A008458(n)-A313899(n))`
-/

namespace A312562.P16307593681754247432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313899 n).toNat

end

end A312562.P16307593681754247432

namespace A312562

/-- `A008458(n)-A005843(A008458(n)-A313899(n))` -/
def P16307593681754247432.Spec : Prop :=
  ∀ n, P16307593681754247432.a n = A312562 n

end A312562

/-! ## A312562.P7479569176038288093

`A004442(A017281(n)-A315643(n))`
-/

namespace A312562.P7479569176038288093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315643 n).toNat

end

end A312562.P7479569176038288093

namespace A312562

/-- `A004442(A017281(n)-A315643(n))` -/
def P7479569176038288093.Spec : Prop :=
  ∀ n, P7479569176038288093.a n = A312562 n

end A312562

/-! ## A312562.P9608358494920418593

`A005843(A313696(n))-A315633(n)`
-/

namespace A312562.P9608358494920418593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313696 n).toNat - A315633 n

end

end A312562.P9608358494920418593

namespace A312562

/-- `A005843(A313696(n))-A315633(n)` -/
def P9608358494920418593.Spec : Prop :=
  ∀ n, P9608358494920418593.a n = A312562 n

end A312562

/-! ## A312562.P4585792362704199017

`A005843(A008706(n))-A315643(n)`
-/

namespace A312562.P4585792362704199017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315643 n

end

end A312562.P4585792362704199017

namespace A312562

/-- `A005843(A008706(n))-A315643(n)` -/
def P4585792362704199017.Spec : Prop :=
  ∀ n, P4585792362704199017.a n = A312562 n

end A312562

/-! ## A312562.P11764424902987990219

`A005843(A313899(n))-A008458(n)`
-/

namespace A312562.P11764424902987990219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313899 n).toNat - A008458 n

end

end A312562.P11764424902987990219

namespace A312562

/-- `A005843(A313899(n))-A008458(n)` -/
def P11764424902987990219.Spec : Prop :=
  ∀ n, P11764424902987990219.a n = A312562 n

end A312562

/-! ## A312562.P18413961675245447198

`A005843(A313899(n))-(A008706(n)+n)`
-/

namespace A312562.P18413961675245447198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313899 n).toNat - (A008706 n + (n : ℤ))

end

end A312562.P18413961675245447198

namespace A312562

/-- `A005843(A313899(n))-(A008706(n)+n)` -/
def P18413961675245447198.Spec : Prop :=
  ∀ n, P18413961675245447198.a n = A312562 n

end A312562

/-!
# A312563: Coordination sequence Gal.6.295.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312563, there is no canonical definition to state claims against.
-/

/-! ## A312563.P7739929845530102838

`A312564(n)-A050605(A165877(n))`
-/

namespace A312563.P7739929845530102838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312564 n - A050605 (A165877 n).toNat

end

end A312563.P7739929845530102838

/-! ## A312563.P17352115564115405573

`A312564(n)-A185284(A045344(n+1))`
-/

namespace A312563.P17352115564115405573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312564 n - A185284 (A045344 (n + 1)).toNat

end

end A312563.P17352115564115405573

/-! ## A312563.P12722838441307883769

`A312564(n)-A262693(A062758(n+1))`
-/

namespace A312563.P12722838441307883769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312564 n - A262693 (A062758 (n + 1)).toNat

end

end A312563.P12722838441307883769

/-! ## A312563.P1462448060325007889

`A312564(n)-A025465(A318209(n+1))`
-/

namespace A312563.P1462448060325007889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312564 n - A025465 (A318209 (n + 1)).toNat

end

end A312563.P1462448060325007889

/-! ## A312563.P4561620933318444421

`A312564(n)-A249856(A213418(n+1))`
-/

namespace A312563.P4561620933318444421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312564 n - A249856 (A213418 (n + 1)).toNat

end

end A312563.P4561620933318444421

/-!
# A312564: Coordination sequence Gal.6.281.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312564, there is no canonical definition to state claims against.
-/

/-! ## A312564.P2713451322875082677

`A312563(n)+A185284(A310586(n))`
-/

namespace A312564.P2713451322875082677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312563 n + A185284 (A310586 n).toNat

end

end A312564.P2713451322875082677

/-! ## A312564.P9829116912958308191

`A312563(n)+A185284(A045344(n+1))`
-/

namespace A312564.P9829116912958308191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312563 n + A185284 (A045344 (n + 1)).toNat

end

end A312564.P9829116912958308191

/-! ## A312564.P2049711047236573800

`A312563(n)+A249856(A213418(n+1))`
-/

namespace A312564.P2049711047236573800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312563 n + A249856 (A213418 (n + 1)).toNat

end

end A312564.P2049711047236573800

/-! ## A312564.P11523678890555901145

`A324418(A306234(n+1))+A312563(n)`
-/

namespace A312564.P11523678890555901145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324418 (A306234 (n + 1)).toNat + A312563 n

end

end A312564.P11523678890555901145

/-!
# A312565: Coordination sequence Gal.6.532.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312565, there is no canonical definition to state claims against.
-/

/-! ## A312565.P12193603553655444868

`A259728(n+1)+A007376(A008932(n))`
-/

namespace A312565.P12193603553655444868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259728 (n + 1) + A007376 (A008932 n).toNat

end

end A312565.P12193603553655444868

/-! ## A312565.P14119467450657952453

`eq[A040196(n), A327283(n+1)]`
-/

namespace A312565.P14119467450657952453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327283 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312565.P14119467450657952453

/-! ## A312565.P3437048553522524948

`A123580(A310910(n)+A000217(n))`
-/

namespace A312565.P3437048553522524948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A310910 n + A000217 n).toNat

end

end A312565.P3437048553522524948

/-! ## A312565.P13744768782451657683

`A311497(n)+A001222(A177249(n))`
-/

namespace A312565.P13744768782451657683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311497 n + A001222 (A177249 n).toNat

end

end A312565.P13744768782451657683

/-! ## A312565.P11596640206867831284

`A090501(A312537(n)+A250120(n))`
-/

namespace A312565.P11596640206867831284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (A312537 n + A250120 n).toNat

end

end A312565.P11596640206867831284

/-!
# A312566: Coordination sequence Gal.6.294.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312566, there is no canonical definition to state claims against.
-/

/-! ## A312566.P3344678736979865736

`A312567(n)-A185284((p?[5*n+7]-7)/5)`
-/

namespace A312566.P3344678736979865736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312567 n - A185284 (SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 7 : ℚ) / 5)).toNat

end

end A312566.P3344678736979865736

/-! ## A312566.P7144985014903845080

`A312567(n)-A185284(A002088(n))`
-/

namespace A312566.P7144985014903845080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312567 n - A185284 (A002088 n).toNat

end

end A312566.P7144985014903845080

/-! ## A312566.P7428141809885088455

`A312567(A087051(n))`
-/

namespace A312566.P7428141809885088455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312567 (A087051 n).toNat

end

end A312566.P7428141809885088455

/-! ## A312566.P11888437222474804701

`A312567(A227549(n+1))`
-/

namespace A312566.P11888437222474804701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312567 (A227549 (n + 1)).toNat

end

end A312566.P11888437222474804701

/-! ## A312566.P1292499141192217732

`A312567(A396204(n+1))`
-/

namespace A312566.P1292499141192217732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312567 (A396204 (n + 1)).toNat

end

end A312566.P1292499141192217732

/-!
# A312567: Coordination sequence Gal.6.280.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312567, there is no canonical definition to state claims against.
-/

/-! ## A312567.P3562093722855577320

`A312566(n)+A185284(A047412(2*n+1))`
-/

namespace A312567.P3562093722855577320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312566 n + A185284 (A047412 (2 * n + 1)).toNat

end

end A312567.P3562093722855577320

/-! ## A312567.P12375160318283904517

`A312566(n)+A000035(A034574(3*n+5))`
-/

namespace A312567.P12375160318283904517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312566 n + A000035 (A034574 (3 * n + 5)).toNat

end

end A312567.P12375160318283904517

/-! ## A312567.P4320753299131905538

`A312566(n)+A185284(A002088(n))`
-/

namespace A312567.P4320753299131905538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312566 n + A185284 (A002088 n).toNat

end

end A312567.P4320753299131905538

/-! ## A312567.P12310737203016225217

`A312566(n)+A154103(A281306(n))`
-/

namespace A312567.P12310737203016225217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312566 n + A154103 (A281306 n).toNat

end

end A312567.P12310737203016225217

/-!
# A312568: Coordination sequence Gal.6.391.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312568, there is no canonical definition to state claims against.
-/

/-! ## A312568.P11217087946294041544

`xor(A124010(A010343(n+1)), A250120(n))`
-/

namespace A312568.P11217087946294041544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124010 (A010343 (n + 1)).toNat) (A250120 n)

end

end A312568.P11217087946294041544

/-! ## A312568.P15939491091458824877

`A311979(n)+A102572(A148343(n))`
-/

namespace A312568.P15939491091458824877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311979 n + A102572 (A148343 n).toNat

end

end A312568.P15939491091458824877

/-! ## A312568.P3244229263215035680

`A314907(n)-A339579(A234658(n+1))`
-/

namespace A312568.P3244229263215035680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314907 n - A339579 (A234658 (n + 1)).toNat

end

end A312568.P3244229263215035680

/-! ## A312568.P7655187414558123217

`A312567(n)+A007949(A308817(n+1)+A007949(n+1))`
-/

namespace A312568.P7655187414558123217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312567 n + A007949 (A308817 (n + 1) + A007949 (n + 1)).toNat

end

end A312568.P7655187414558123217

/-! ## A312568.P5057442038920505715

`A315036(n)-A109720(A065653(n))`
-/

namespace A312568.P5057442038920505715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n - A109720 (A065653 n).toNat

end

end A312568.P5057442038920505715

/-!
# A312569: Coordination sequence Gal.6.531.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312569, there is no canonical definition to state claims against.
-/

/-! ## A312569.P15028017168882199627

`xor(A102683(A136628(n)), A312624(n))`
-/

namespace A312569.P15028017168882199627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102683 (A136628 n).toNat) (A312624 n)

end

end A312569.P15028017168882199627

/-! ## A312569.P7052386263432586465

`A313271(A087051(n))-A001222(A028310(n))`
-/

namespace A312569.P7052386263432586465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313271 (A087051 n).toNat - A001222 (A028310 n).toNat

end

end A312569.P7052386263432586465

/-!
# A312570: Coordination sequence Gal.5.124.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312570, there is no canonical definition to state claims against.
-/

/-! ## A312570.P15321204506831084996

`xor(A312548(n), A333660(A005142(n)))`
-/

namespace A312570.P15321204506831084996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A312548 n) (A333660 (A005142 n).toNat)

end

end A312570.P15321204506831084996

/-! ## A312570.P11039688265352575429

`A305211(3*n+1)+A239451(A014137(n+1))`
-/

namespace A312570.P11039688265352575429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305211 (3 * n + 1) + A239451 (A014137 (n + 1)).toNat

end

end A312570.P11039688265352575429

/-!
# A312571: Coordination sequence Gal.6.313.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312571, there is no canonical definition to state claims against.
-/

/-! ## A312571.P3889442792194725871

`and(A023900(A000244(n)), A312741(n))`
-/

namespace A312571.P3889442792194725871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023900 (A000244 n).toNat) (A312741 n)

end

end A312571.P3889442792194725871

/-! ## A312571.P3526008220398401354

`or(A312548(n), A333660(A005142(n)))`
-/

namespace A312571.P3526008220398401354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312548 n) (A333660 (A005142 n).toNat)

end

end A312571.P3526008220398401354

/-! ## A312571.P14243502518367971858

`A312548(n)+A184762(A320537(n+1))`
-/

namespace A312571.P14243502518367971858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312548 n + A184762 (A320537 (n + 1)).toNat

end

end A312571.P14243502518367971858

/-! ## A312571.P14800746714561753930

`xor(A250120(n), A316767(A003594(n+1)))`
-/

namespace A312571.P14800746714561753930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250120 n) (A316767 (A003594 (n + 1)).toNat)

end

end A312571.P14800746714561753930

/-!
# A312572: Coordination sequence Gal.6.380.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312572, there is no canonical definition to state claims against.
-/

/-! ## A312572.P8966504229107923601

`A312567(n)+A007949(A308817(n+1))`
-/

namespace A312572.P8966504229107923601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312567 n + A007949 (A308817 (n + 1)).toNat

end

end A312572.P8966504229107923601

/-! ## A312572.P11105823731480819276

`A315036(n)-A056853(A000045(2*n+1)+1)%2`
-/

namespace A312572.P11105823731480819276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n - Int.tmod (A056853 (A000045 (2 * n + 1) + 1).toNat) 2

end

end A312572.P11105823731480819276

/-! ## A312572.P16122514187769223443

`A312568(n)+A179801(A000285(n))`
-/

namespace A312572.P16122514187769223443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312568 n + A179801 (A000285 n).toNat

end

end A312572.P16122514187769223443

/-! ## A312572.P16127444394390952535

`A312568(n)+A301651(A059268(n))`
-/

namespace A312572.P16127444394390952535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312568 n + A301651 (A059268 n).toNat

end

end A312572.P16127444394390952535

/-!
# A312573: Coordination sequence Gal.6.521.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312573, there is no canonical definition to state claims against.
-/

/-! ## A312573.P11093523921701495701

`A312574(n)-A083025(A223892(n+1))`
-/

namespace A312573.P11093523921701495701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312574 n - A083025 (A223892 (n + 1)).toNat

end

end A312573.P11093523921701495701

/-! ## A312573.P4211194731338924772

`A312574(A062399(n))`
-/

namespace A312573.P4211194731338924772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312574 (A062399 n).toNat

end

end A312573.P4211194731338924772

/-! ## A312573.P12828731151678424574

`A312574(A120126(n))`
-/

namespace A312573.P12828731151678424574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312574 (A120126 n).toNat

end

end A312573.P12828731151678424574

/-! ## A312573.P1674880056136220602

`A312574(A351870(n))`
-/

namespace A312573.P1674880056136220602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312574 (A351870 n).toNat

end

end A312573.P1674880056136220602

/-! ## A312573.P1402696880482787118

`A312574(n)%A303366(3*n+2)`
-/

namespace A312573.P1402696880482787118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312574 n) (A303366 (3 * n + 2))

end

end A312573.P1402696880482787118

/-!
# A312574: Coordination sequence Gal.6.574.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312574, there is no canonical definition to state claims against.
-/

/-! ## A312574.P12897901253840077453

`A312573(n)+A083025(A223892(n+1))`
-/

namespace A312574.P12897901253840077453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312573 n + A083025 (A223892 (n + 1)).toNat

end

end A312574.P12897901253840077453

/-!
# A312578: Coordination sequence Gal.6.517.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312578, there is no canonical definition to state claims against.
-/

/-! ## A312578.P5089008278730987838

`A312579(n)-A186748(A161680(n))`
-/

namespace A312578.P5089008278730987838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312579 n - A186748 (A161680 n).toNat

end

end A312578.P5089008278730987838

/-! ## A312578.P5413248179971303480

`A312580(n)-A186748(A161680(n))`
-/

namespace A312578.P5413248179971303480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312580 n - A186748 (A161680 n).toNat

end

end A312578.P5413248179971303480

/-! ## A312578.P4033621329951010069

`A313188(n)-A080679(A002386(n+1))`
-/

namespace A312578.P4033621329951010069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313188 n - A080679 (A002386 (n + 1)).toNat

end

end A312578.P4033621329951010069

/-! ## A312578.P9788018428667038121

`A312404(n)+A171157(A294768(n))`
-/

namespace A312578.P9788018428667038121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312404 n + A171157 (A294768 n).toNat

end

end A312578.P9788018428667038121

/-! ## A312578.P12183919685339219853

`A250120(n)-A156311(A018028(n))`
-/

namespace A312578.P12183919685339219853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A156311 (A018028 n).toNat

end

end A312578.P12183919685339219853

/-!
# A312579: Coordination sequence Gal.6.148.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312579, there is no canonical definition to state claims against.
-/

/-! ## A312579.P6827951642500044692

`A312580(n)%p?[ceil(C(n, 3)/4)]`
-/

namespace A312579.P6827951642500044692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 3 : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312580 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A312579.P6827951642500044692

/-! ## A312579.P919471330728877136

`A312580(n^A251072(n))`
-/

namespace A312579.P919471330728877136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312580 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A251072 n : ℤ))).toNat

end

end A312579.P919471330728877136

/-! ## A312579.P10382035134433143962

`A312580(n)^A052036(n)!`
-/

namespace A312579.P10382035134433143962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312580 n ^ Nat.factorial (A052036 n).toNat

end

end A312579.P10382035134433143962

/-! ## A312579.P1039446309376668814

`A312580(n)%∑[A129221(n)]`
-/

namespace A312579.P1039446309376668814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312580 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A312579.P1039446309376668814

/-! ## A312579.P5990009254639649345

`A312580(n*A251072(2*n+1))`
-/

namespace A312579.P5990009254639649345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312580 ((n : ℤ) * A251072 (2 * n + 1)).toNat

end

end A312579.P5990009254639649345

/-!
# A312580: Coordination sequence Gal.6.141.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312580, there is no canonical definition to state claims against.
-/

/-! ## A312580.P13454975663527942991

`A312579(n)+A185037(A013609(n))`
-/

namespace A312580.P13454975663527942991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312579 n + A185037 (A013609 n).toNat

end

end A312580.P13454975663527942991

/-!
# A312581: Coordination sequence Gal.6.244.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312581, there is no canonical definition to state claims against.
-/

/-! ## A312581.P3592913468424899804

`A312582(A062399(n))`
-/

namespace A312581.P3592913468424899804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312582 (A062399 n).toNat

end

end A312581.P3592913468424899804

/-! ## A312581.P6630919392994163496

`A312582(A120126(n))`
-/

namespace A312581.P6630919392994163496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312582 (A120126 n).toNat

end

end A312581.P6630919392994163496

/-! ## A312581.P12629152992877968667

`A312582(A351870(n))`
-/

namespace A312581.P12629152992877968667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312582 (A351870 n).toNat

end

end A312581.P12629152992877968667

/-! ## A312581.P3782247998512398931

`A312582(n)^A339629(n)!`
-/

namespace A312581.P3782247998512398931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312582 n ^ Nat.factorial (A339629 n).toNat

end

end A312581.P3782247998512398931

/-! ## A312581.P301413939500025136

`A312582(n)%A062209(n+1)`
-/

namespace A312581.P301413939500025136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312582 n) (A062209 (n + 1))

end

end A312581.P301413939500025136

/-!
# A312583: Coordination sequence Gal.6.406.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312583, there is no canonical definition to state claims against.
-/

/-! ## A312583.P6863877878027885074

`A312430(n)+A213727(A324513(n+1))`
-/

namespace A312583.P6863877878027885074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312430 n + A213727 (A324513 (n + 1)).toNat

end

end A312583.P6863877878027885074

/-! ## A312583.P12513459174537393134

`A312431(n)+A213727(A324513(n+1))`
-/

namespace A312583.P12513459174537393134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312431 n + A213727 (A324513 (n + 1)).toNat

end

end A312583.P12513459174537393134

/-!
# A312584: Coordination sequence Gal.6.537.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312584, there is no canonical definition to state claims against.
-/

/-! ## A312584.P9424727568222550596

`A312585(n)-A340988(n²+7)`
-/

namespace A312584.P9424727568222550596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312585 n - A340988 (n ^ 2 + 7 + 91)

end

end A312584.P9424727568222550596

/-! ## A312584.P8820875622665757949

`A311871(n)+A243759(A109080(n+1))`
-/

namespace A312584.P8820875622665757949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311871 n + A243759 (A109080 (n + 1)).toNat

end

end A312584.P8820875622665757949

/-! ## A312584.P9586118095733568987

`A311861(n)+A268833(A078480(n))`
-/

namespace A312584.P9586118095733568987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n + A268833 (A078480 n).toNat

end

end A312584.P9586118095733568987

/-! ## A312584.P16364247421247356021

`A312585(n)-A212619(A002623(n))`
-/

namespace A312584.P16364247421247356021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312585 n - A212619 (A002623 n).toNat

end

end A312584.P16364247421247356021

/-! ## A312584.P2293725093228289416

`A301298(n)-A225654(A008592(n))`
-/

namespace A312584.P2293725093228289416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A225654 (A008592 n).toNat

end

end A312584.P2293725093228289416

/-!
# A312585: Coordination sequence Gal.5.80.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312585, there is no canonical definition to state claims against.
-/

/-! ## A312585.P6441946389390668127

`A312601(n)-A284388(A005773(n))`
-/

namespace A312585.P6441946389390668127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312601 n - A284388 (A005773 n).toNat

end

end A312585.P6441946389390668127

/-! ## A312585.P13443155491209393657

`A312586(n)-A102677(A239256(n+1))`
-/

namespace A312585.P13443155491209393657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312586 n - A102677 (A239256 (n + 1)).toNat

end

end A312585.P13443155491209393657

/-! ## A312585.P13110936833408330901

`A312586(n)-A249856(A213418(n+1))`
-/

namespace A312585.P13110936833408330901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312586 n - A249856 (A213418 (n + 1)).toNat

end

end A312585.P13110936833408330901

/-! ## A312585.P13556585925232637673

`A312586(n^(1-∑{digits}[n, #]+n))`
-/

namespace A312585.P13556585925232637673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312586 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ) : ℤ))).toNat

end

end A312585.P13556585925232637673

/-! ## A312585.P907698821605864412

`A312586(A087051(n))`
-/

namespace A312585.P907698821605864412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312586 (A087051 n).toNat

end

end A312585.P907698821605864412

/-!
# A312586: Coordination sequence Gal.5.75.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312586, there is no canonical definition to state claims against.
-/

/-! ## A312586.P9598782951764196593

`A314882(n)-A101688(A060100(n))`
-/

namespace A312586.P9598782951764196593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314882 n - A101688 (A060100 n).toNat

end

end A312586.P9598782951764196593

/-! ## A312586.P4887370438984196987

`A312602(n)-A284388(A005773(n))`
-/

namespace A312586.P4887370438984196987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312602 n - A284388 (A005773 n).toNat

end

end A312586.P4887370438984196987

/-! ## A312586.P7257891531239870665

`A312585(n)+A102677(A239256(n+1))`
-/

namespace A312586.P7257891531239870665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312585 n + A102677 (A239256 (n + 1)).toNat

end

end A312586.P7257891531239870665

/-! ## A312586.P16399235723022444497

`A312585(n)+A249856(A213418(n+1))`
-/

namespace A312586.P16399235723022444497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312585 n + A249856 (A213418 (n + 1)).toNat

end

end A312586.P16399235723022444497

/-!
# A312587: Coordination sequence Gal.5.166.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312587, there is no canonical definition to state claims against.
-/

/-! ## A312587.P12855315964872444736

`A310640(n)+A192323(A003946(n))`
-/

namespace A312587.P12855315964872444736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310640 n + A192323 (A003946 n).toNat

end

end A312587.P12855315964872444736

/-! ## A312587.P6615183793347117651

`A312603(n)-A024155(A304228(n+1))`
-/

namespace A312587.P6615183793347117651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312603 n - A024155 (A304228 (n + 1)).toNat

end

end A312587.P6615183793347117651

/-!
# A312588: Coordination sequence Gal.6.518.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312588, there is no canonical definition to state claims against.
-/

/-! ## A312588.P16944861783494494950

`A301299(n)+A033665(A000566(n))`
-/

namespace A312588.P16944861783494494950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A033665 (A000566 n).toNat

end

end A312588.P16944861783494494950

/-! ## A312588.P3674294330871318171

`A312051(n)+A260411(A005314(n))`
-/

namespace A312588.P3674294330871318171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312051 n + A260411 (A005314 n).toNat

end

end A312588.P3674294330871318171

/-! ## A312588.P12988504915736752169

`A312589(A087051(n))-A316868(n)`
-/

namespace A312588.P12988504915736752169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312589 (A087051 n).toNat - A316868 n

end

end A312588.P12988504915736752169

/-! ## A312588.P4418209125065423455

`or(A122071(A018023(n)), A311529(n))`
-/

namespace A312588.P4418209125065423455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122071 (A018023 n).toNat) (A311529 n)

end

end A312588.P4418209125065423455

/-! ## A312588.P15052388882340565912

`A301299(n)+A059841(A149034(n))`
-/

namespace A312588.P15052388882340565912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A059841 (A149034 n).toNat

end

end A312588.P15052388882340565912

/-!
# A312589: Coordination sequence Gal.5.254.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312589, there is no canonical definition to state claims against.
-/

/-! ## A312589.P18414572144856244899

`A313549(n)-A330466(A174223(n))`
-/

namespace A312589.P18414572144856244899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313549 n - A330466 (A174223 n).toNat

end

end A312589.P18414572144856244899

/-! ## A312589.P1196064407284608028

`A324966(A143099(n+1))+A311512(n)`
-/

namespace A312589.P1196064407284608028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (A143099 (n + 1)).toNat + A311512 n

end

end A312589.P1196064407284608028

/-! ## A312589.P9443885390002808737

`A301676(n)+A075437(A005015(n))`
-/

namespace A312589.P9443885390002808737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A075437 (A005015 n).toNat

end

end A312589.P9443885390002808737

/-! ## A312589.P7778007788479362015

`A301676(n)+A083891(A007051(n))`
-/

namespace A312589.P7778007788479362015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A083891 (A007051 n).toNat

end

end A312589.P7778007788479362015

/-! ## A312589.P16596762986376543646

`A316868(A087051(n))+A312588(n)`
-/

namespace A312589.P16596762986376543646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A087051 n).toNat + A312588 n

end

end A312589.P16596762986376543646

/-!
# A312590: Coordination sequence Gal.6.266.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312590, there is no canonical definition to state claims against.
-/

/-! ## A312590.P12287737942755908619

`A301676(n)+A188014(A000111(n))`
-/

namespace A312590.P12287737942755908619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A188014 (A000111 n).toNat

end

end A312590.P12287737942755908619

/-! ## A312590.P11822508875093108287

`A301676(n)+A059841(A177390(n))`
-/

namespace A312590.P11822508875093108287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A059841 (A177390 n).toNat

end

end A312590.P11822508875093108287

/-! ## A312590.P2012825232299192728

`A312593(n)-A037911(A037924(n))`
-/

namespace A312590.P2012825232299192728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312593 n - A037911 (A037924 n).toNat

end

end A312590.P2012825232299192728

/-! ## A312590.P5729413596482643850

`A301676(n)+A161382(A223511(n+1))`
-/

namespace A312590.P5729413596482643850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A161382 (A223511 (n + 1)).toNat

end

end A312590.P5729413596482643850

/-! ## A312590.P17145564998637681316

`A301676(n)+A046660(A022861(n+4))`
-/

namespace A312590.P17145564998637681316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A046660 (A022861 (n + 4)).toNat

end

end A312590.P17145564998637681316

/-!
# A312591: Coordination sequence Gal.6.293.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312591, there is no canonical definition to state claims against.
-/

/-! ## A312591.P3646610658968795987

`A334153(A299668(n+1))+A311843(n)`
-/

namespace A312591.P3646610658968795987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334153 (A299668 (n + 1)).toNat + A311843 n

end

end A312591.P3646610658968795987

/-! ## A312591.P16878632829576372537

`xor(A312472(n), A329343(A048473(n)))`
-/

namespace A312591.P16878632829576372537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A312472 n) (A329343 (A048473 n).toNat)

end

end A312591.P16878632829576372537

/-! ## A312591.P11513421593100609743

`A322389(A000045(n+1))+A301299(n)`
-/

namespace A312591.P11513421593100609743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (A000045 (n + 1)).toNat + A301299 n

end

end A312591.P11513421593100609743

/-! ## A312591.P6306595209340701049

`A312592(n)+A109017(A243902(n+1))`
-/

namespace A312591.P6306595209340701049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312592 n + A109017 (A243902 (n + 1)).toNat

end

end A312591.P6306595209340701049

/-! ## A312591.P9397641302968314103

`A312592(n)-A011731(A146031(n+1))`
-/

namespace A312591.P9397641302968314103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312592 n - A011731 (A146031 (n + 1)).toNat

end

end A312591.P9397641302968314103

/-!
# A312592: Coordination sequence Gal.5.191.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312592, there is no canonical definition to state claims against.
-/

/-! ## A312592.P2794338382996459012

`A301676(n)+A086966(A148111(n))`
-/

namespace A312592.P2794338382996459012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A086966 (A148111 n).toNat

end

end A312592.P2794338382996459012

/-! ## A312592.P7972203970900911235

`A312649(n)-A021913(A000512(n+1))`
-/

namespace A312592.P7972203970900911235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312649 n - A021913 (A000512 (n + 1)).toNat

end

end A312592.P7972203970900911235

/-! ## A312592.P14248821406040251321

`A301676(n)+A059448(A027889(n+1))`
-/

namespace A312592.P14248821406040251321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A059448 (A027889 (n + 1)).toNat

end

end A312592.P14248821406040251321

/-! ## A312592.P5462633339513159969

`A312402(n)+A001222(A339848(n+1))`
-/

namespace A312592.P5462633339513159969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312402 n + A001222 (A339848 (n + 1)).toNat

end

end A312592.P5462633339513159969

/-! ## A312592.P9922305558985881396

`A311861(n)+A278478(A253533(n+1))`
-/

namespace A312592.P9922305558985881396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n + A278478 (A253533 (n + 1)).toNat

end

end A312592.P9922305558985881396

/-!
# A312593: Coordination sequence Gal.6.454.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312593, there is no canonical definition to state claims against.
-/

/-! ## A312593.P17232664044687387152

`A312590(n)+A037911(A037924(n))`
-/

namespace A312593.P17232664044687387152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312590 n + A037911 (A037924 n).toNat

end

end A312593.P17232664044687387152

/-! ## A312593.P5165802881972958736

`A250120(n)-A319300(A000032(n))`
-/

namespace A312593.P5165802881972958736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A319300 (A000032 n).toNat

end

end A312593.P5165802881972958736

/-! ## A312593.P15164378644091580993

`A312592(n)+A037911(A146031(n+1))`
-/

namespace A312593.P15164378644091580993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312592 n + A037911 (A146031 (n + 1)).toNat

end

end A312593.P15164378644091580993

/-! ## A312593.P14120156345961439717

`A352342(n+1)+A112310(A087323(n))`
-/

namespace A312593.P14120156345961439717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352342 (n + 1) + A112310 (A087323 n).toNat

end

end A312593.P14120156345961439717

/-! ## A312593.P4961941660585187998

`A312507(n)+A008683(A249319(n+1))`
-/

namespace A312593.P4961941660585187998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312507 n + A008683 (A249319 (n + 1)).toNat

end

end A312593.P4961941660585187998

/-!
# A312594: Coordination sequence Gal.5.189.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312594, there is no canonical definition to state claims against.
-/

/-! ## A312594.P3491653437205120442

`A313133(n)-A037909(A002999(n))`
-/

namespace A312594.P3491653437205120442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313133 n - A037909 (A002999 n).toNat

end

end A312594.P3491653437205120442

/-! ## A312594.P5371037502655807742

`A274384(∑[A163107(3*n+1)])`
-/

namespace A312594.P5371037502655807742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163107 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A312594.P5371037502655807742

/-! ## A312594.P18097961918467189823

`A312044(n)+A276004(floor(4^n/3))`
-/

namespace A312594.P18097961918467189823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312044 n + A276004 ⌊(4 ^ n : ℚ) / 3⌋.toNat

end

end A312594.P18097961918467189823

/-! ## A312594.P13171909152953161716

`A315052(n)-A001221(A151095(n))`
-/

namespace A312594.P13171909152953161716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315052 n - A001221 (A151095 n).toNat

end

end A312594.P13171909152953161716

/-! ## A312594.P9510262811904058143

`A250120(n)-A230000(A250120(2*n+1))`
-/

namespace A312594.P9510262811904058143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A230000 (A250120 (2 * n + 1)).toNat

end

end A312594.P9510262811904058143

/-!
# A312595: Coordination sequence Gal.6.73.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312595, there is no canonical definition to state claims against.
-/

/-! ## A312595.P8073913342564847929

`∑[A164999(∑[A048745(n)])]`
-/

namespace A312595.P8073913342564847929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048745 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312595.P8073913342564847929

/-! ## A312595.P13050287845771221927

`eq[2, A112379(A030478(n+1))]`
-/

namespace A312595.P13050287845771221927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112379 (A030478 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A312595.P13050287845771221927

/-! ## A312595.P11138564580219878915

`∑[A164999(∑[A127980(n+1)])]`
-/

namespace A312595.P11138564580219878915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127980 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312595.P11138564580219878915

/-! ## A312595.P15305793077746687608

`A312112(n)+A028999(A320740(n))`
-/

namespace A312595.P15305793077746687608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312112 n + A028999 (A320740 n).toNat

end

end A312595.P15305793077746687608

/-! ## A312595.P15448032700286022380

`A301298(n)-A286336(A045618(n))`
-/

namespace A312595.P15448032700286022380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A286336 (A045618 n).toNat

end

end A312595.P15448032700286022380

/-!
# A312596: Coordination sequence Gal.6.521.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312596, there is no canonical definition to state claims against.
-/

/-! ## A312596.P7017027196540590298

`∑[A001222(A296372(3*(n+1)))]+n`
-/

namespace A312596.P7017027196540590298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A296372 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A312596.P7017027196540590298

/-! ## A312596.P3411406224848080225

`A312486(n)+A005087(A094941(n))`
-/

namespace A312596.P3411406224848080225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312486 n + A005087 (A094941 n).toNat

end

end A312596.P3411406224848080225

/-! ## A312596.P12572845962652270369

`A314880(n)-A104104(A067188(n+1))`
-/

namespace A312596.P12572845962652270369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314880 n - A104104 (A067188 (n + 1)).toNat

end

end A312596.P12572845962652270369

/-! ## A312596.P14510783331066538669

`A314881(n)-A039966(A333732(n+1))`
-/

namespace A312596.P14510783331066538669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314881 n - A039966 (A333732 (n + 1)).toNat

end

end A312596.P14510783331066538669

/-! ## A312596.P10097317459633226817

`A314880(n)-A309168(A072873(n+1))`
-/

namespace A312596.P10097317459633226817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314880 n - A309168 (A072873 (n + 1)).toNat

end

end A312596.P10097317459633226817

/-!
# A312597: Coordination sequence Gal.6.279.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312597, there is no canonical definition to state claims against.
-/

/-! ## A312597.P13121595453640383934

`A132781(lt[A132827(n), n+1])-char[8]`
-/

namespace A312597.P13121595453640383934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132781 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312597.P13121595453640383934

/-! ## A312597.P8529520879398869920

`A132781(lt[A132827(n)-1, n])-char[8]`
-/

namespace A312597.P8529520879398869920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132781 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312597.P8529520879398869920

/-! ## A312597.P2560010868035631966

`A312499(n)+A220879(A220886(n))`
-/

namespace A312597.P2560010868035631966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312499 n + A220879 (A220886 n).toNat

end

end A312597.P2560010868035631966

/-! ## A312597.P5573303553944859222

`xor(A008579(n), A270417(A293606(n)))`
-/

namespace A312597.P5573303553944859222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008579 n) (A270417 (A293606 n).toNat)

end

end A312597.P5573303553944859222

/-! ## A312597.P6306683628818338237

`A312499(n)+A014064(A014005(n))²`
-/

namespace A312597.P6306683628818338237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312499 n + A014064 (A014005 n).toNat ^ 2

end

end A312597.P6306683628818338237

/-!
# A312598: Coordination sequence Gal.5.193.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312598, there is no canonical definition to state claims against.
-/

/-! ## A312598.P16851725386200946081

`A132781(lt[A132827(n), n+1])`
-/

namespace A312598.P16851725386200946081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132781 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A312598.P16851725386200946081

/-! ## A312598.P18352141840314069586

`A132781(lt[A132827(n)-1, n])`
-/

namespace A312598.P18352141840314069586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132781 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A312598.P18352141840314069586

/-! ## A312598.P9623463948479674447

`or(A312597(n), A358841(A000984(n)))`
-/

namespace A312598.P9623463948479674447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312597 n) (A358841 (A000984 n).toNat)

end

end A312598.P9623463948479674447

/-! ## A312598.P3403725399530509233

`A312458(n)+A109925(A246006(n+1))`
-/

namespace A312598.P3403725399530509233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312458 n + A109925 (A246006 (n + 1)).toNat

end

end A312598.P3403725399530509233

/-! ## A312598.P1526553453159553852

`xor(A190447(n+1), A261143(A190452(n)))`
-/

namespace A312598.P1526553453159553852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A190447 (n + 1)) (A261143 (A190452 n).toNat)

end

end A312598.P1526553453159553852

/-!
# A312599: Coordination sequence Gal.5.192.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312599, there is no canonical definition to state claims against.
-/

/-! ## A312599.P9825623442881428989

`A250120(n)-A060950(A028859(n))`
-/

namespace A312599.P9825623442881428989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A060950 (A028859 n).toNat

end

end A312599.P9825623442881428989

/-! ## A312599.P13199626963457614036

`A250120(n)-A060950(A155020(n+1))`
-/

namespace A312599.P13199626963457614036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A060950 (A155020 (n + 1)).toNat

end

end A312599.P13199626963457614036

/-! ## A312599.P1385706456115294808

`A250120(n)-A257992(A080567(n+1))`
-/

namespace A312599.P1385706456115294808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A257992 (A080567 (n + 1)).toNat

end

end A312599.P1385706456115294808

/-! ## A312599.P3571648898867059801

`A250120(n)-A081603(A120861(3*n+5))`
-/

namespace A312599.P3571648898867059801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A081603 (A120861 (3 * n + 5)).toNat

end

end A312599.P3571648898867059801

/-! ## A312599.P5047489499517210309

`A038189(A000387(n))+A008579(n)`
-/

namespace A312599.P5047489499517210309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A000387 n).toNat + A008579 n

end

end A312599.P5047489499517210309

