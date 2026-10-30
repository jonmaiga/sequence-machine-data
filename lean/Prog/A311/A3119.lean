import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A311900: Coordination sequence Gal.6.438.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311900, there is no canonical definition to state claims against.
-/

/-! ## A311900.P13537010808336041431

`A312453(n)-A188027(A035354(n))`
-/

namespace A311900.P13537010808336041431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312453 n - A188027 (A035354 n).toNat

end

end A311900.P13537010808336041431

/-! ## A311900.P18077054861274625035

`A156261(2*A312453(n))`
-/

namespace A311900.P18077054861274625035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (2 * A312453 n).toNat

end

end A311900.P18077054861274625035

/-! ## A311900.P16587358508213878650

`A311932(n)-A175402(A095005(n+1))`
-/

namespace A311900.P16587358508213878650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n - A175402 (A095005 (n + 1)).toNat

end

end A311900.P16587358508213878650

/-! ## A311900.P1860598766523035834

`A037806(A047486(n+3))+A263087(A297901(n+1)+1+n)+4*n`
-/

namespace A311900.P1860598766523035834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (A047486 (n + 3)).toNat + (A263087 (A297901 (n + 1) + 1 + (n : ℤ)).toNat + (4 * n : ℤ))

end

end A311900.P1860598766523035834

/-! ## A311900.P2853060340242244197

`A016813(n)-A316569(A001040(n))`
-/

namespace A311900.P2853060340242244197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A316569 (A001040 n).toNat

end

end A311900.P2853060340242244197

/-!
# A311901: Coordination sequence Gal.6.297.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311901, there is no canonical definition to state claims against.
-/

/-! ## A311901.P15389556857225574442

`A008574(n)+∑{e}[A009229(n), #]`
-/

namespace A311901.P15389556857225574442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A311901.P15389556857225574442

/-! ## A311901.P2257639967516340499

`A311420(A062399(n))+A091064(n)`
-/

namespace A311901.P2257639967516340499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311420 (A062399 n).toNat + A091064 n

end

end A311901.P2257639967516340499

/-! ## A311901.P16881656495963921246

`or(A311487(A062399(n)), A311900(n))`
-/

namespace A311901.P16881656495963921246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311487 (A062399 n).toNat) (A311900 n)

end

end A311901.P16881656495963921246

/-! ## A311901.P13041324560168400670

`A311488(n^gcd(11, n))+A300067(A038374(2*n+1))`
-/

namespace A311901.P13041324560168400670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311488 (n ^ Nat.gcd 11 n) + A300067 (A038374 (2 * n + 1)).toNat

end

end A311901.P13041324560168400670

/-! ## A311901.P4173975202296975353

`A311431(n)+A280046(n²)`
-/

namespace A311901.P4173975202296975353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311431 n + A280046 (n ^ 2)

end

end A311901.P4173975202296975353

/-!
# A311902: Coordination sequence Gal.6.185.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311902, there is no canonical definition to state claims against.
-/

/-! ## A311902.P9899908457582482385

`A311903(n)-A083896(A011782(n))`
-/

namespace A311902.P9899908457582482385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311903 n - A083896 (A011782 n).toNat

end

end A311902.P9899908457582482385

/-! ## A311902.P7908643467836177744

`A311903(n)-A055641(A327738(n))`
-/

namespace A311902.P7908643467836177744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311903 n - A055641 (A327738 n).toNat

end

end A311902.P7908643467836177744

/-! ## A311902.P12801215604469449462

`A311903(n)%A127994(n)`
-/

namespace A311902.P12801215604469449462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311903 n) (A127994 n)

end

end A311902.P12801215604469449462

/-! ## A311902.P9158666296766326130

`A311903(n)*A336865(A000041(n))`
-/

namespace A311902.P9158666296766326130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311903 n * A336865 (A000041 n).toNat

end

end A311902.P9158666296766326130

/-! ## A311902.P9402468627000785169

`A057427(A286025(n))*A311903(n)`
-/

namespace A311902.P9402468627000785169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A286025 n).toNat * A311903 n

end

end A311902.P9402468627000785169

/-!
# A311903: Coordination sequence Gal.6.169.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311903, there is no canonical definition to state claims against.
-/

/-! ## A311903.P10989060428301159497

`A311902(n)+A083896(A011782(n))`
-/

namespace A311903.P10989060428301159497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311902 n + A083896 (A011782 n).toNat

end

end A311903.P10989060428301159497

/-! ## A311903.P12323750922026524303

`or(A170957(A175334(n+1)), A311902(n))`
-/

namespace A311903.P12323750922026524303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A170957 (A175334 (n + 1)).toNat) (A311902 n)

end

end A311903.P12323750922026524303

/-!
# A311904: Coordination sequence Gal.6.511.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311904, there is no canonical definition to state claims against.
-/

/-! ## A311904.P6870445600015816098

`A311903(n)+A178798(A055998(n))`
-/

namespace A311904.P6870445600015816098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311903 n + A178798 (A055998 n).toNat

end

end A311904.P6870445600015816098

/-! ## A311904.P2994019829846571514

`A250120(n)-A299485(A175965(n+1))`
-/

namespace A311904.P2994019829846571514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A299485 (A175965 (n + 1)).toNat

end

end A311904.P2994019829846571514

/-! ## A311904.P15611849354992993275

`A311928(n)-A025466(A082540(n+1))`
-/

namespace A311904.P15611849354992993275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311928 n - A025466 (A082540 (n + 1)).toNat

end

end A311904.P15611849354992993275

/-! ## A311904.P4017022960077229545

`A311930(n)-A045887(A146281(n+1))`
-/

namespace A311904.P4017022960077229545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311930 n - A045887 (A146281 (n + 1)).toNat

end

end A311904.P4017022960077229545

/-! ## A311904.P999648168608797424

`A311912(n)-A008683(A237211(n+1))`
-/

namespace A311904.P999648168608797424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311912 n - A008683 (A237211 (n + 1)).toNat

end

end A311904.P999648168608797424

/-!
# A311905: Coordination sequence Gal.6.240.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311905, there is no canonical definition to state claims against.
-/

/-! ## A311905.P166495659613813381

`A318516(A312455(n)+A311339(n))`
-/

namespace A311905.P166495659613813381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A312455 n + A311339 n).toNat

end

end A311905.P166495659613813381

/-! ## A311905.P8814712856173240818

`A312050(n)+A311339(n)-A311494(n)`
-/

namespace A311905.P8814712856173240818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312050 n + A311339 n - A311494 n

end

end A311905.P8814712856173240818

/-! ## A311905.P5609239630477560177

`A312050(n)+A311494(n)-(2*A312050(n)-A312455(n))`
-/

namespace A311905.P5609239630477560177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312050 n + A311494 n - (2 * A312050 n - A312455 n)

end

end A311905.P5609239630477560177

/-! ## A311905.P11005711689200425799

`A311801(n)+A186746(A157793(n))`
-/

namespace A311905.P11005711689200425799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n + A186746 (A157793 n).toNat

end

end A311905.P11005711689200425799

/-! ## A311905.P10770257522795841979

`A311801(n)+A010051(A006784(n+1))`
-/

namespace A311905.P10770257522795841979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n + A010051 (A006784 (n + 1)).toNat

end

end A311905.P10770257522795841979

/-!
# A311906: Coordination sequence Gal.6.241.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311906, there is no canonical definition to state claims against.
-/

/-! ## A311906.P1172080415233230080

`(A312456(n)+A311340(n))/2`
-/

namespace A311906.P1172080415233230080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312456 n + A311340 n : ℚ) / 2

end

end A311906.P1172080415233230080

/-! ## A311906.P10140338811654388068

`A014682(A312456(n)+A311340(n))`
-/

namespace A311906.P10140338811654388068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312456 n + A311340 n).toNat

end

end A311906.P10140338811654388068

/-! ## A311906.P5427571654728242808

`A001281(A312456(n)+A311340(n))`
-/

namespace A311906.P5427571654728242808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312456 n + A311340 n).toNat

end

end A311906.P5427571654728242808

/-! ## A311906.P4804829804561935644

`A004525(A312456(n)+A311340(n))`
-/

namespace A311906.P4804829804561935644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312456 n + A311340 n).toNat

end

end A311906.P4804829804561935644

/-! ## A311906.P16346035947985685435

`A004526(A312456(n)+A311340(n))`
-/

namespace A311906.P16346035947985685435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312456 n + A311340 n).toNat

end

end A311906.P16346035947985685435

/-! ## A311906.P10074597171919474204

`A025480(A312456(n)+A311340(n))`
-/

namespace A311906.P10074597171919474204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312456 n + A311340 n).toNat

end

end A311906.P10074597171919474204

/-! ## A311906.P11669529570651696346

`A026741(A312456(n)+A311340(n))`
-/

namespace A311906.P11669529570651696346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312456 n + A311340 n).toNat

end

end A311906.P11669529570651696346

/-! ## A311906.P3696780685251847413

`A032742(A312456(n)+A311340(n))`
-/

namespace A311906.P3696780685251847413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A312456 n + A311340 n).toNat

end

end A311906.P3696780685251847413

/-! ## A311906.P13369900967125190405

`A062828(A312456(n)+A311340(n))`
-/

namespace A311906.P13369900967125190405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (A312456 n + A311340 n).toNat

end

end A311906.P13369900967125190405

/-! ## A311906.P11911298983113012774

`A065033(A312456(n)+A311340(n))`
-/

namespace A311906.P11911298983113012774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312456 n + A311340 n).toNat

end

end A311906.P11911298983113012774

/-! ## A311906.P14780506751793112556

`-A001057(A312456(n)+A311340(n))`
-/

namespace A311906.P14780506751793112556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A312456 n + A311340 n).toNat

end

end A311906.P14780506751793112556

/-! ## A311906.P575383200900205721

`A001057(A311340(n)+A312456(n)-1)`
-/

namespace A311906.P575383200900205721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311340 n + (A312456 n - 1)).toNat

end

end A311906.P575383200900205721

/-! ## A311906.P4322586520696403916

`A001057(A311340(n)-(1-A312456(n)))`
-/

namespace A311906.P4322586520696403916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311340 n - (1 - A312456 n)).toNat

end

end A311906.P4322586520696403916

/-! ## A311906.P12724578051273262938

`A065033(A311340(n)-(1-A312456(n)))`
-/

namespace A311906.P12724578051273262938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311340 n - (1 - A312456 n)).toNat

end

end A311906.P12724578051273262938

/-! ## A311906.P16243257779801700257

`A002265(2*(A312456(n)+A311340(n)))`
-/

namespace A311906.P16243257779801700257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A312456 n + A311340 n)).toNat

end

end A311906.P16243257779801700257

/-!
# A311907: Coordination sequence Gal.5.78.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311907, the canonical program `A311907.P15737395164403453455` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311907 has offset 0).

The definition of A311907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311907.P15737395164403453455

`A313894(n)-(A313803(n)-A313799(n)+n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A311907

/-- `A313894(n)-(A313803(n)-A313799(n)+n)` -/
def P15737395164403453455.Spec : Prop :=
  ∀ n, P15737395164403453455.a n = A311907 n

theorem P15737395164403453455.correct : P15737395164403453455.Spec := by
  intro n
  simp only [A311907]

end A311907

/-! ## A311907.P16602712526450126701

`and(-A318403(A016733(n)), A311908(n))`
-/

namespace A311907.P16602712526450126701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A318403 (A016733 n).toNat) (A311908 n)

end

end A311907.P16602712526450126701

namespace A311907

/-- `and(-A318403(A016733(n)), A311908(n))` -/
def P16602712526450126701.Spec : Prop :=
  ∀ n, P16602712526450126701.a n = A311907 n

end A311907

/-! ## A311907.P18032102031369734515

`A311941(n)-A154234(A318403(n+1))`
-/

namespace A311907.P18032102031369734515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311941 n - A154234 (A318403 (n + 1)).toNat

end

end A311907.P18032102031369734515

namespace A311907

/-- `A311941(n)-A154234(A318403(n+1))` -/
def P18032102031369734515.Spec : Prop :=
  ∀ n, P18032102031369734515.a n = A311907 n

end A311907

/-! ## A311907.P948653171997221344

`A312051(A062399(n))-char[6*n-2]`
-/

namespace A311907.P948653171997221344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312051 (A062399 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A311907.P948653171997221344

namespace A311907

/-- `A312051(A062399(n))-char[6*n-2]` -/
def P948653171997221344.Spec : Prop :=
  ∀ n, P948653171997221344.a n = A311907 n

end A311907

/-! ## A311907.P16100048217052414966

`A312051(A120126(n))-char[6*n-2]`
-/

namespace A311907.P16100048217052414966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312051 (A120126 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A311907.P16100048217052414966

namespace A311907

/-- `A312051(A120126(n))-char[6*n-2]` -/
def P16100048217052414966.Spec : Prop :=
  ∀ n, P16100048217052414966.a n = A311907 n

end A311907

/-!
# A311908: Coordination sequence Gal.6.142.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311908, there is no canonical definition to state claims against.
-/

/-! ## A311908.P8516086889311434829

`(A312459(n)+A311341(n))/2`
-/

namespace A311908.P8516086889311434829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312459 n + A311341 n : ℚ) / 2

end

end A311908.P8516086889311434829

/-! ## A311908.P15059792035728707717

`A014682(A312459(n)+A311341(n))`
-/

namespace A311908.P15059792035728707717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312459 n + A311341 n).toNat

end

end A311908.P15059792035728707717

/-! ## A311908.P392450749640748389

`A273943(A312459(n)+A311341(n))`
-/

namespace A311908.P392450749640748389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A312459 n + A311341 n).toNat

end

end A311908.P392450749640748389

/-! ## A311908.P1689409628841967340

`A060819(2*(A312459(n)+A311341(n)))`
-/

namespace A311908.P1689409628841967340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * (A312459 n + A311341 n)).toNat

end

end A311908.P1689409628841967340

/-! ## A311908.P14571036195528873572

`A002265(2*(A312459(n)+A311341(n)))`
-/

namespace A311908.P14571036195528873572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A312459 n + A311341 n)).toNat

end

end A311908.P14571036195528873572

/-! ## A311908.P8774435533269644081

`A008615(3*(A312459(n)+A311341(n)))`
-/

namespace A311908.P8774435533269644081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * (A312459 n + A311341 n)).toNat

end

end A311908.P8774435533269644081

/-!
# A311909: Coordination sequence Gal.6.143.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311909, there is no canonical definition to state claims against.
-/

/-! ## A311909.P1290734425539615059

`A311916(n)-A003406(A003376(3*n+4))`
-/

namespace A311909.P1290734425539615059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311916 n - A003406 (A003376 (3 * n + 4)).toNat

end

end A311909.P1290734425539615059

/-! ## A311909.P10774206862913475948

`A180160(A311423(n))+A264592(n+1)+A004277(A135381(2*n))`
-/

namespace A311909.P10774206862913475948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (A311423 n).toNat + (A264592 (n + 1) + A004277 (A135381 (2 * n)).toNat)

end

end A311909.P10774206862913475948

/-!
# A311910: Coordination sequence Gal.6.135.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311910, there is no canonical definition to state claims against.
-/

/-! ## A311910.P16178085593018322323

`A311912(n)-A103675(A318619(n))`
-/

namespace A311910.P16178085593018322323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311912 n - A103675 (A318619 n).toNat

end

end A311910.P16178085593018322323

/-! ## A311910.P15371828266992071086

`A311911(n)-A316864(A056470(n+1))`
-/

namespace A311910.P15371828266992071086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311911 n - A316864 (A056470 (n + 1)).toNat

end

end A311910.P15371828266992071086

/-! ## A311910.P7143295253981188920

`A311914(n)+A241643(A016733(n))`
-/

namespace A311910.P7143295253981188920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311914 n + A241643 (A016733 n).toNat

end

end A311910.P7143295253981188920

/-! ## A311910.P9189575027374091644

`A311914(n)%A008576(A030009(n))`
-/

namespace A311910.P9189575027374091644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311914 n) (A008576 (A030009 n).toNat)

end

end A311910.P9189575027374091644

/-! ## A311910.P18325044708715048007

`A311911(n)+A000035(A001668(n+2))`
-/

namespace A311910.P18325044708715048007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311911 n + A000035 (A001668 (n + 2)).toNat

end

end A311910.P18325044708715048007

/-!
# A311911: Coordination sequence Gal.6.128.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311911, there is no canonical definition to state claims against.
-/

/-! ## A311911.P14036345318469398955

`or(A311910(n), A316717(A246996(n+1)))`
-/

namespace A311911.P14036345318469398955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311910 n) (A316717 (A246996 (n + 1)).toNat)

end

end A311911.P14036345318469398955

/-! ## A311911.P7460620059634749901

`or(A044940(A104176(n+2)), A311910(n))`
-/

namespace A311911.P7460620059634749901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044940 (A104176 (n + 2)).toNat) (A311910 n)

end

end A311911.P7460620059634749901

/-! ## A311911.P4703146632823780164

`A311912(n)-A044940(A000598(n))`
-/

namespace A311911.P4703146632823780164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311912 n - A044940 (A000598 n).toNat

end

end A311911.P4703146632823780164

/-! ## A311911.P6732567472704267311

`A311912(n)-A025441(A081123(n))`
-/

namespace A311911.P6732567472704267311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311912 n - A025441 (A081123 n).toNat

end

end A311911.P6732567472704267311

/-!
# A311912: Coordination sequence Gal.6.124.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311912, there is no canonical definition to state claims against.
-/

/-! ## A311912.P11221534584434537719

`A311913(n)-A011734(A156953(n))`
-/

namespace A311912.P11221534584434537719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311913 n - A011734 (A156953 n).toNat

end

end A311912.P11221534584434537719

/-! ## A311912.P9666554255250170116

`A311913(n)-A133010(A135722(n))`
-/

namespace A311912.P9666554255250170116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311913 n - A133010 (A135722 n).toNat

end

end A311912.P9666554255250170116

/-! ## A311912.P13892180889321252681

`A311913(n)-A318315(A104176(n))`
-/

namespace A311912.P13892180889321252681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311913 n - A318315 (A104176 n).toNat

end

end A311912.P13892180889321252681

/-! ## A311912.P4727647333003351761

`A311913(n)-A341840(A048682(n+1))`
-/

namespace A311912.P4727647333003351761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311913 n - A341840 (A048682 (n + 1)).toNat

end

end A311912.P4727647333003351761

/-! ## A311912.P8430075963524010328

`A311911(n)+A044940(A000598(n))`
-/

namespace A311912.P8430075963524010328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311911 n + A044940 (A000598 n).toNat

end

end A311912.P8430075963524010328

/-!
# A311913: Coordination sequence Gal.6.136.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311913, there is no canonical definition to state claims against.
-/

/-! ## A311913.P6083254032475121700

`A311912(n)+A011734(A156953(n))`
-/

namespace A311913.P6083254032475121700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311912 n + A011734 (A156953 n).toNat

end

end A311913.P6083254032475121700

/-! ## A311913.P16021705368718219178

`A311912(n)+A133010(A135722(n))`
-/

namespace A311913.P16021705368718219178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311912 n + A133010 (A135722 n).toNat

end

end A311913.P16021705368718219178

/-! ## A311913.P7531473764576635647

`A318315(A104176(n))+A311912(n)`
-/

namespace A311913.P7531473764576635647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318315 (A104176 n).toNat + A311912 n

end

end A311913.P7531473764576635647

/-! ## A311913.P14583946347460101613

`A341840(A048682(n+1))+A311912(n)`
-/

namespace A311913.P14583946347460101613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 (A048682 (n + 1)).toNat + A311912 n

end

end A311913.P14583946347460101613

/-! ## A311913.P13733885964042498128

`A311912(n)+A036860(n+1)^A000051(n)`
-/

namespace A311913.P13733885964042498128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311912 n : ℚ) + (A036860 (n + 1) : ℚ) ^ (A000051 n : ℤ)

end

end A311913.P13733885964042498128

/-!
# A311914: Coordination sequence Gal.4.58.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311914, the canonical program `A311914.P11835660157980149675` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311914 has offset 0).

The definition of A311914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2566 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311914.P3108975106471800907

`A312895(n)-A238470(n)`
-/

namespace A311914.P3108975106471800907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n - A238470 n

end

end A311914.P3108975106471800907

namespace A311914

/-- `A312895(n)-A238470(n)` -/
def P3108975106471800907.Spec : Prop :=
  ∀ n, P3108975106471800907.a n = A311914 n

end A311914

/-! ## A311914.P11835660157980149675

`A008574(n)+Δ[A011860(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A311914

/-- `A008574(n)+Δ[A011860(n)]` -/
def P11835660157980149675.Spec : Prop :=
  ∀ n, P11835660157980149675.a n = A311914 n

theorem P11835660157980149675.correct : P11835660157980149675.Spec := by
  intro n
  simp only [A311914]

end A311914

/-! ## A311914.P11827926449973950199

`A074232(A028310(n))+3*n`
-/

namespace A311914.P11827926449973950199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (A028310 n).toNat + (3 * n : ℤ)

end

end A311914.P11827926449973950199

namespace A311914

/-- `A074232(A028310(n))+3*n` -/
def P11827926449973950199.Spec : Prop :=
  ∀ n, P11827926449973950199.a n = A311914 n

end A311914

/-! ## A311914.P3669546687185863643

`record[A257088(n)]+Δ[A011860(n)]`
-/

namespace A311914.P3669546687185863643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (f2 (n + 1) - f2 n)

end

end A311914.P3669546687185863643

namespace A311914

/-- `record[A257088(n)]+Δ[A011860(n)]` -/
def P3669546687185863643.Spec : Prop :=
  ∀ n, P3669546687185863643.a n = A311914 n

end A311914

/-! ## A311914.P6788450262815524914

`A257088(2*n)+Δ[A011860(n)]`
-/

namespace A311914.P6788450262815524914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n) + (f1 (n + 1) - f1 n)

end

end A311914.P6788450262815524914

namespace A311914

/-- `A257088(2*n)+Δ[A011860(n)]` -/
def P6788450262815524914.Spec : Prop :=
  ∀ n, P6788450262815524914.a n = A311914 n

end A311914

/-! ## A311914.P3502226444426594673

`A008486(n)+Δ[A011860(n)]+n`
-/

namespace A311914.P3502226444426594673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A311914.P3502226444426594673

namespace A311914

/-- `A008486(n)+Δ[A011860(n)]+n` -/
def P3502226444426594673.Spec : Prop :=
  ∀ n, P3502226444426594673.a n = A311914 n

end A311914

/-! ## A311914.P6632400651066934637

`A008706(n)+Δ[A011860(n)]-n`
-/

namespace A311914.P6632400651066934637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f1 (n + 1) - f1 n - (n : ℤ))

end

end A311914.P6632400651066934637

namespace A311914

/-- `A008706(n)+Δ[A011860(n)]-n` -/
def P6632400651066934637.Spec : Prop :=
  ∀ n, P6632400651066934637.a n = A311914 n

end A311914

/-! ## A311914.P1975250828405684291

`A004275(2*n+1)+Δ[A011860(n)]`
-/

namespace A311914.P1975250828405684291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A311914.P1975250828405684291

namespace A311914

/-- `A004275(2*n+1)+Δ[A011860(n)]` -/
def P1975250828405684291.Spec : Prop :=
  ∀ n, P1975250828405684291.a n = A311914 n

end A311914

/-! ## A311914.P11587350822946880516

`A312289(n)+A238468(A238468(n)+n)`
-/

namespace A311914.P11587350822946880516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n + A238468 (A238468 n + (n : ℤ)).toNat

end

end A311914.P11587350822946880516

namespace A311914

/-- `A312289(n)+A238468(A238468(n)+n)` -/
def P11587350822946880516.Spec : Prop :=
  ∀ n, P11587350822946880516.a n = A311914 n

end A311914

/-! ## A311914.P14534645595348384162

`A008458(n)+A008574(n)-A315701(n)`
-/

namespace A311914.P14534645595348384162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315701 n)

end

end A311914.P14534645595348384162

namespace A311914

/-- `A008458(n)+A008574(n)-A315701(n)` -/
def P14534645595348384162.Spec : Prop :=
  ∀ n, P14534645595348384162.a n = A311914 n

end A311914

/-! ## A311914.P1432669993121857576

`(A312549(n)+A008574(n))/2`
-/

namespace A311914.P1432669993121857576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312549 n + A008574 n : ℚ) / 2

end

end A311914.P1432669993121857576

namespace A311914

/-- `(A312549(n)+A008574(n))/2` -/
def P1432669993121857576.Spec : Prop :=
  ∀ n, P1432669993121857576.a n = (A311914 n : ℚ)

end A311914

/-! ## A311914.P2268605019340081816

`A313923(n)-A047588(n+1)`
-/

namespace A311914.P2268605019340081816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313923 n - A047588 (n + 1)

end

end A311914.P2268605019340081816

namespace A311914

/-- `A313923(n)-A047588(n+1)` -/
def P2268605019340081816.Spec : Prop :=
  ∀ n, P2268605019340081816.a n = A311914 n

end A311914

/-! ## A311914.P3176845395344226102

`A250120(n)+A314160(n)-A008458(n)`
-/

namespace A311914.P3176845395344226102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A314160 n - A008458 n)

end

end A311914.P3176845395344226102

namespace A311914

/-- `A250120(n)+A314160(n)-A008458(n)` -/
def P3176845395344226102.Spec : Prop :=
  ∀ n, P3176845395344226102.a n = A311914 n

theorem P3176845395344226102.correct : P3176845395344226102.Spec := by
  intro n
  simp only [A311914, Nat.add_sub_cancel, A311914.P3176845395344226102.a, A311914.P11835660157980149675.f1, A311914.P11835660157980149675.a, A008458, A008458.P7339383310184415644.a, A008574, A008574.P1300280032690682112.a, A011860, A011860.P10402414017759076193.a, A250120, A250120.P17005803601232239086.a, A314160, A314160.P11818790826256901571.a, A022144, A022144.P3637304218834470582.a, A047486, A047486.P6506762595393263252.a, A244895, A244895.P3287071687313047282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311914

/-! ## A311914.P2395228720772802454

`A004525(A312183(n))+2*n`
-/

namespace A311914.P2395228720772802454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312183 n).toNat + (2 * n : ℤ)

end

end A311914.P2395228720772802454

namespace A311914

/-- `A004525(A312183(n))+2*n` -/
def P2395228720772802454.Spec : Prop :=
  ∀ n, P2395228720772802454.a n = A311914 n

end A311914

/-! ## A311914.P4894565864580202858

`round(A008706(A313836(n))/6)`
-/

namespace A311914.P4894565864580202858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008706 (A313836 n).toNat : ℚ) / 6)

end

end A311914.P4894565864580202858

namespace A311914

/-- `round(A008706(A313836(n))/6)` -/
def P4894565864580202858.Spec : Prop :=
  ∀ n, P4894565864580202858.a n = A311914 n

end A311914

/-! ## A311914.P643890802080188403

`(A314249(n)+A004525(A314249(n)))/2`
-/

namespace A311914.P643890802080188403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314249 n + A004525 (A314249 n).toNat : ℚ) / 2

end

end A311914.P643890802080188403

namespace A311914

/-- `(A314249(n)+A004525(A314249(n)))/2` -/
def P643890802080188403.Spec : Prop :=
  ∀ n, P643890802080188403.a n = (A311914 n : ℚ)

end A311914

/-! ## A311914.P10590648109954296456

`A004396(A313923(n)+n)`
-/

namespace A311914.P10590648109954296456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313923 n + (n : ℤ)).toNat

end

end A311914.P10590648109954296456

namespace A311914

/-- `A004396(A313923(n)+n)` -/
def P10590648109954296456.Spec : Prop :=
  ∀ n, P10590648109954296456.a n = A311914 n

end A311914

/-! ## A311914.P122828861404202634

`A274616(A313923(n)+n)`
-/

namespace A311914.P122828861404202634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A313923 n + (n : ℤ)).toNat

end

end A311914.P122828861404202634

namespace A311914

/-- `A274616(A313923(n)+n)` -/
def P122828861404202634.Spec : Prop :=
  ∀ n, P122828861404202634.a n = A311914 n

end A311914

/-! ## A311914.P1145037881244247568

`A004523(A008458(n)+A057357(n)+1)`
-/

namespace A311914.P1145037881244247568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A008458 n + (A057357 n + 1)).toNat

end

end A311914.P1145037881244247568

namespace A311914

/-- `A004523(A008458(n)+A057357(n)+1)` -/
def P1145037881244247568.Spec : Prop :=
  ∀ n, P1145037881244247568.a n = A311914 n

end A311914

/-! ## A311914.P1945466861520233477

`A004525(A312289(2*n))`
-/

namespace A311914.P1945466861520233477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312289 (2 * n)).toNat

end

end A311914.P1945466861520233477

namespace A311914

/-- `A004525(A312289(2*n))` -/
def P1945466861520233477.Spec : Prop :=
  ∀ n, P1945466861520233477.a n = A311914 n

end A311914

/-!
# A311915: Coordination sequence Gal.6.235.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311915, there is no canonical definition to state claims against.
-/

/-! ## A311915.P3118239682011889207

`A311916(n)-A249832(A297464(A316861(n)))`
-/

namespace A311915.P3118239682011889207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311916 n - A249832 (A297464 (A316861 n).toNat).toNat

end

end A311915.P3118239682011889207

/-! ## A311915.P8391053875755799091

`A311916(n)-A102683(A056469(n))`
-/

namespace A311915.P8391053875755799091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311916 n - A102683 (A056469 n).toNat

end

end A311915.P8391053875755799091

/-! ## A311915.P15406463135684890253

`A311440(n)+A253513(A251905(n+1))`
-/

namespace A311915.P15406463135684890253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A253513 (A251905 (n + 1)).toNat

end

end A311915.P15406463135684890253

/-! ## A311915.P7006722186923384085

`A311917(n)+A057428(A218884(n+1))`
-/

namespace A311915.P7006722186923384085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311917 n + A057428 (A218884 (n + 1)).toNat

end

end A311915.P7006722186923384085

/-! ## A311915.P14999782533883179100

`A311916(n)-A235145(A132408(n+1))`
-/

namespace A311915.P14999782533883179100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311916 n - A235145 (A132408 (n + 1)).toNat

end

end A311915.P14999782533883179100

/-!
# A311916: Coordination sequence Gal.6.229.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311916, there is no canonical definition to state claims against.
-/

/-! ## A311916.P12611818683341708204

`or(A101605((n+1)*Δ[n^3]), A311915(n))`
-/

namespace A311916.P12611818683341708204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101605 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat) (A311915 n)

end

end A311916.P12611818683341708204

/-! ## A311916.P2807055310363651974

`A311915(n)+A102683(A056469(n))`
-/

namespace A311916.P2807055310363651974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311915 n + A102683 (A056469 n).toNat

end

end A311916.P2807055310363651974

/-! ## A311916.P14781552341261066939

`A311918(n)-A102683(A290436(n))`
-/

namespace A311916.P14781552341261066939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311918 n - A102683 (A290436 n).toNat

end

end A311916.P14781552341261066939

/-! ## A311916.P15099891149041223201

`A311917(n)-A023969(A146067(n+1))`
-/

namespace A311916.P15099891149041223201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311917 n - A023969 (A146067 (n + 1)).toNat

end

end A311916.P15099891149041223201

/-! ## A311916.P10086577792706404343

`A311816(n)+A188009(A007661(n))`
-/

namespace A311916.P10086577792706404343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n + A188009 (A007661 n).toNat

end

end A311916.P10086577792706404343

/-!
# A311917: Coordination sequence Gal.6.225.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311917, there is no canonical definition to state claims against.
-/

/-! ## A311917.P12315973440171584958

`A311918(n)-A101637(A082605(n))`
-/

namespace A311917.P12315973440171584958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311918 n - A101637 (A082605 n).toNat

end

end A311917.P12315973440171584958

/-! ## A311917.P12057455184026525510

`A311918(n)-A025469(A287846(n))`
-/

namespace A311917.P12057455184026525510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311918 n - A025469 (A287846 n).toNat

end

end A311917.P12057455184026525510

/-! ## A311917.P6604824239378147365

`A311918(n)-A112765(A209867(n))`
-/

namespace A311917.P6604824239378147365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311918 n - A112765 (A209867 n).toNat

end

end A311917.P6604824239378147365

/-! ## A311917.P16281155061054080906

`A311918(n)-A055641(A239155(n+1))`
-/

namespace A311917.P16281155061054080906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311918 n - A055641 (A239155 (n + 1)).toNat

end

end A311917.P16281155061054080906

/-! ## A311917.P8844840893177790451

`A311918(n)-A276404(A342587(n+1))`
-/

namespace A311917.P8844840893177790451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311918 n - A276404 (A342587 (n + 1)).toNat

end

end A311917.P8844840893177790451

/-!
# A311918: Coordination sequence Gal.6.236.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311918, there is no canonical definition to state claims against.
-/

/-! ## A311918.P13755294668957020840

`(A312466(n)+A311349(n))/2`
-/

namespace A311918.P13755294668957020840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312466 n + A311349 n : ℚ) / 2

end

end A311918.P13755294668957020840

/-! ## A311918.P1267705427733930414

`A014682(A312466(n)+A311349(n))`
-/

namespace A311918.P1267705427733930414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312466 n + A311349 n).toNat

end

end A311918.P1267705427733930414

/-! ## A311918.P18322093611229484067

`A004525(A312466(n)+A311349(n))`
-/

namespace A311918.P18322093611229484067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312466 n + A311349 n).toNat

end

end A311918.P18322093611229484067

/-! ## A311918.P7180460164536532060

`A078898(A312466(n)+A311349(n))`
-/

namespace A311918.P7180460164536532060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A312466 n + A311349 n).toNat

end

end A311918.P7180460164536532060

/-! ## A311918.P8614137797949153346

`A004524(A311349(n)+A312466(n)+1)`
-/

namespace A311918.P8614137797949153346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A311349 n + (A312466 n + 1)).toNat

end

end A311918.P8614137797949153346

/-! ## A311918.P7026295441679284970

`A250028(A311349(n)+A312466(n)-1)`
-/

namespace A311918.P7026295441679284970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250028 (A311349 n + (A312466 n - 1)).toNat

end

end A311918.P7026295441679284970

/-! ## A311918.P3700478867223683723

`A250028(A311349(n)-(1-A312466(n)))`
-/

namespace A311918.P3700478867223683723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250028 (A311349 n - (1 - A312466 n)).toNat

end

end A311918.P3700478867223683723

/-!
# A311919: Coordination sequence Gal.3.26.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311919, there is no canonical definition to state claims against.
-/

/-! ## A311919.P11975161437496932183

`A314708(n)-A254379(A140431(n))`
-/

namespace A311919.P11975161437496932183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n - A254379 (A140431 n).toNat

end

end A311919.P11975161437496932183

/-! ## A311919.P6576284715433553365

`A353331(A334772(n+2))+A311346(n)`
-/

namespace A311919.P6576284715433553365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353331 (A334772 (n + 2)).toNat + A311346 n

end

end A311919.P6576284715433553365

/-! ## A311919.P1255614948419422581

`A353331(A334772(n+2))+A311347(n)`
-/

namespace A311919.P1255614948419422581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353331 (A334772 (n + 2)).toNat + A311347 n

end

end A311919.P1255614948419422581

/-! ## A311919.P18277881818690093573

`A313024(n)-A010054(A120395(n+3))`
-/

namespace A311919.P18277881818690093573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313024 n - A010054 (A120395 (n + 3)).toNat

end

end A311919.P18277881818690093573

/-! ## A311919.P3895944978966335678

`A333382(A004525(n))+A311914(A062399(n))`
-/

namespace A311919.P3895944978966335678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A004525 n).toNat + A311914 (A062399 n).toNat

end

end A311919.P3895944978966335678

/-!
# A311920: Coordination sequence Gal.5.70.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311920, there is no canonical definition to state claims against.
-/

/-! ## A311920.P14720754300281361934

`(A312461(n)+A311350(n))/2`
-/

namespace A311920.P14720754300281361934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312461 n + A311350 n : ℚ) / 2

end

end A311920.P14720754300281361934

/-! ## A311920.P15732357200942579191

`A014682(A312461(n)+A311350(n))`
-/

namespace A311920.P15732357200942579191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312461 n + A311350 n).toNat

end

end A311920.P15732357200942579191

/-! ## A311920.P14074534645670800757

`A001281(A312461(n)+A311350(n))`
-/

namespace A311920.P14074534645670800757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312461 n + A311350 n).toNat

end

end A311920.P14074534645670800757

/-! ## A311920.P10786491884899243947

`A004525(A312461(n)+A311350(n))`
-/

namespace A311920.P10786491884899243947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312461 n + A311350 n).toNat

end

end A311920.P10786491884899243947

/-! ## A311920.P7930688975872600703

`A004526(A312461(n)+A311350(n))`
-/

namespace A311920.P7930688975872600703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312461 n + A311350 n).toNat

end

end A311920.P7930688975872600703

/-! ## A311920.P14464266993613210796

`A006370(A312461(n)+A311350(n))`
-/

namespace A311920.P14464266993613210796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A312461 n + A311350 n).toNat

end

end A311920.P14464266993613210796

/-! ## A311920.P636543886160347004

`A025480(A312461(n)+A311350(n))`
-/

namespace A311920.P636543886160347004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312461 n + A311350 n).toNat

end

end A311920.P636543886160347004

/-! ## A311920.P1000723919649923957

`A026741(A312461(n)+A311350(n))`
-/

namespace A311920.P1000723919649923957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312461 n + A311350 n).toNat

end

end A311920.P1000723919649923957

/-! ## A311920.P6304429088046237358

`A065033(A312461(n)+A311350(n))`
-/

namespace A311920.P6304429088046237358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312461 n + A311350 n).toNat

end

end A311920.P6304429088046237358

/-! ## A311920.P10833321172715494415

`A110654(A312461(n)+A311350(n))`
-/

namespace A311920.P10833321172715494415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A312461 n + A311350 n).toNat

end

end A311920.P10833321172715494415

/-! ## A311920.P4087023609322097805

`A065033(A311350(n)-(1-A312461(n)))`
-/

namespace A311920.P4087023609322097805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311350 n - (1 - A312461 n)).toNat

end

end A311920.P4087023609322097805

/-! ## A311920.P1804709423438546369

`A110654(A311350(n)-(1-A312461(n)))`
-/

namespace A311920.P1804709423438546369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311350 n - (1 - A312461 n)).toNat

end

end A311920.P1804709423438546369

/-!
# A311921: Coordination sequence Gal.5.63.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311921, there is no canonical definition to state claims against.
-/

/-! ## A311921.P10175335997067552760

`xor(A004958(n), A262808(A215004(n)))`
-/

namespace A311921.P10175335997067552760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004958 n) (A262808 (A215004 n).toNat)

end

end A311921.P10175335997067552760

/-! ## A311921.P4167833812818150564

`A311920(n)+A276404(A000079(n))`
-/

namespace A311921.P4167833812818150564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311920 n + A276404 (A000079 n).toNat

end

end A311921.P4167833812818150564

/-! ## A311921.P13015638186451226511

`or(A033665(A043320(n+1)), A311920(n))`
-/

namespace A311921.P13015638186451226511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033665 (A043320 (n + 1)).toNat) (A311920 n)

end

end A311921.P13015638186451226511

/-! ## A311921.P11776384297858409412

`or(A033665(A044917(n+1)), A311920(n))`
-/

namespace A311921.P11776384297858409412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033665 (A044917 (n + 1)).toNat) (A311920 n)

end

end A311921.P11776384297858409412

/-! ## A311921.P11695472020857511100

`or(A260728(A352663(n+1)), A311920(n))`
-/

namespace A311921.P11695472020857511100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A260728 (A352663 (n + 1)).toNat) (A311920 n)

end

end A311921.P11695472020857511100

/-!
# A311922: Coordination sequence Gal.5.59.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311922, there is no canonical definition to state claims against.
-/

/-! ## A311922.P4990135036633346561

`A311920(n)+A057427(A352663(n+1))`
-/

namespace A311922.P4990135036633346561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311920 n + A057427 (A352663 (n + 1)).toNat

end

end A311922.P4990135036633346561

/-! ## A311922.P3484977690103333446

`A311923(n)-A107846(A308281(n+1))`
-/

namespace A311922.P3484977690103333446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311923 n - A107846 (A308281 (n + 1)).toNat

end

end A311922.P3484977690103333446

/-! ## A311922.P4790175111604652001

`A311923(n)-A003982(A264443(A098361(n)))`
-/

namespace A311922.P4790175111604652001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311923 n - A003982 (A264443 (A098361 n).toNat).toNat

end

end A311922.P4790175111604652001

/-! ## A311922.P4523738416965676759

`floor(sqrt(A008620(58*n²+1)))-char[12]`
-/

namespace A311922.P4523738416965676759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A008620 (58 * n ^ 2 + 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A311922.P4523738416965676759

/-! ## A311922.P14109217894926707076

`floor(sqrt(A087507(58*n²+1)))-char[12]`
-/

namespace A311922.P14109217894926707076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A087507 (58 * n ^ 2 + 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A311922.P14109217894926707076

/-!
# A311923: Coordination sequence Gal.5.71.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311923, there is no canonical definition to state claims against.
-/

/-! ## A311923.P6647846191334372046

`A311922(n)+A107846(A308281(n+1))`
-/

namespace A311923.P6647846191334372046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311922 n + A107846 (A308281 (n + 1)).toNat

end

end A311923.P6647846191334372046

/-! ## A311923.P2864697805145752665

`char[12]+A311920(n)+A057427(A352663(n+1))`
-/

namespace A311923.P2864697805145752665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A311920 n + A057427 (A352663 (n + 1)).toNat)

end

end A311923.P2864697805145752665

/-! ## A311923.P11699295818974636059

`floor(sqrt(A008620(58*n²+1)))`
-/

namespace A311923.P11699295818974636059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A008620 (58 * n ^ 2 + 1))

end

end A311923.P11699295818974636059

/-! ## A311923.P4194934934939775568

`floor(sqrt(A087507(58*n²+1)))`
-/

namespace A311923.P4194934934939775568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A087507 (58 * n ^ 2 + 1))

end

end A311923.P4194934934939775568

/-!
# A311924: Coordination sequence Gal.6.118.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311924, the canonical program `A311924.P16580113682883245312` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311924 has offset 0).

The definition of A311924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311924.P16580113682883245312

`A314847(n)-A004396(A004525(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A311924

/-- `A314847(n)-A004396(A004525(n))` -/
def P16580113682883245312.Spec : Prop :=
  ∀ n, P16580113682883245312.a n = A311924 n

theorem P16580113682883245312.correct : P16580113682883245312.Spec := by
  intro n
  simp only [A311924]

end A311924

/-! ## A311924.P15019495152644406465

`abs(A008592(n)-(A313540(n)+n))`
-/

namespace A311924.P15019495152644406465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313540 n + (n : ℤ))|

end

end A311924.P15019495152644406465

namespace A311924

/-- `abs(A008592(n)-(A313540(n)+n))` -/
def P15019495152644406465.Spec : Prop :=
  ∀ n, P15019495152644406465.a n = A311924 n

end A311924

/-! ## A311924.P30130484895241785

`A008458(n)+A008486(n)-A313540(n)`
-/

namespace A311924.P30130484895241785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313540 n)

end

end A311924.P30130484895241785

namespace A311924

/-- `A008458(n)+A008486(n)-A313540(n)` -/
def P30130484895241785.Spec : Prop :=
  ∀ n, P30130484895241785.a n = A311924 n

end A311924

/-! ## A311924.P3472762884941094609

`A314841(n)-A004525(A004396(n))`
-/

namespace A311924.P3472762884941094609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n - A004525 (A004396 n).toNat

end

end A311924.P3472762884941094609

namespace A311924

/-- `A314841(n)-A004525(A004396(n))` -/
def P3472762884941094609.Spec : Prop :=
  ∀ n, P3472762884941094609.a n = A311924 n

end A311924

/-! ## A311924.P11035905461215607689

`A313213(n)-∑[and(2, n)/2]`
-/

namespace A311924.P11035905461215607689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313213 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311924.P11035905461215607689

namespace A311924

/-- `A313213(n)-∑[and(2, n)/2]` -/
def P11035905461215607689.Spec : Prop :=
  ∀ n, P11035905461215607689.a n = (A311924 n : ℚ)

end A311924

/-! ## A311924.P851918263852589669

`A004525(n)+A313213(n)-n`
-/

namespace A311924.P851918263852589669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313213 n - (n : ℤ))

end

end A311924.P851918263852589669

namespace A311924

/-- `A004525(n)+A313213(n)-n` -/
def P851918263852589669.Spec : Prop :=
  ∀ n, P851918263852589669.a n = A311924 n

end A311924

/-! ## A311924.P16818484802621762872

`A314912(n)-A004525(n)`
-/

namespace A311924.P16818484802621762872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314912 n - A004525 n

end

end A311924.P16818484802621762872

namespace A311924

/-- `A314912(n)-A004525(n)` -/
def P16818484802621762872.Spec : Prop :=
  ∀ n, P16818484802621762872.a n = A311924 n

end A311924

/-! ## A311924.P13438368025915019715

`A315058(n)-A004396(n)`
-/

namespace A311924.P13438368025915019715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315058 n - A004396 n

end

end A311924.P13438368025915019715

namespace A311924

/-- `A315058(n)-A004396(n)` -/
def P13438368025915019715.Spec : Prop :=
  ∀ n, P13438368025915019715.a n = A311924 n

end A311924

/-! ## A311924.P9138692103425767335

`A313891(n)-n`
-/

namespace A311924.P9138692103425767335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n - (n : ℤ)

end

end A311924.P9138692103425767335

namespace A311924

/-- `A313891(n)-n` -/
def P9138692103425767335.Spec : Prop :=
  ∀ n, P9138692103425767335.a n = A311924 n

end A311924

/-! ## A311924.P16924217742395851689

`A315455(n)-(A128834(n)+n)`
-/

namespace A311924.P16924217742395851689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315455 n - (A128834 n + (n : ℤ))

end

end A311924.P16924217742395851689

namespace A311924

/-- `A315455(n)-(A128834(n)+n)` -/
def P16924217742395851689.Spec : Prop :=
  ∀ n, P16924217742395851689.a n = A311924 n

end A311924

/-! ## A311924.P10415777835621828824

`A004396(2*n)+A004396(A312101(n))`
-/

namespace A311924.P10415777835621828824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A312101 n).toNat

end

end A311924.P10415777835621828824

namespace A311924

/-- `A004396(2*n)+A004396(A312101(n))` -/
def P10415777835621828824.Spec : Prop :=
  ∀ n, P10415777835621828824.a n = A311924 n

end A311924

/-! ## A311924.P5221349019353214424

`abs(A008593(n)-(A315700(n)+n))`
-/

namespace A311924.P5221349019353214424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A315700 n + (n : ℤ))|

end

end A311924.P5221349019353214424

namespace A311924

/-- `abs(A008593(n)-(A315700(n)+n))` -/
def P5221349019353214424.Spec : Prop :=
  ∀ n, P5221349019353214424.a n = A311924 n

end A311924

/-! ## A311924.P1442289020404903841

`A008458(n)+A008574(n)-A315700(n)`
-/

namespace A311924.P1442289020404903841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315700 n)

end

end A311924.P1442289020404903841

namespace A311924

/-- `A008458(n)+A008574(n)-A315700(n)` -/
def P1442289020404903841.Spec : Prop :=
  ∀ n, P1442289020404903841.a n = A311924 n

end A311924

/-! ## A311924.P6195014068725889146

`A004525(A312184(n))+2*n`
-/

namespace A311924.P6195014068725889146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312184 n).toNat + (2 * n : ℤ)

end

end A311924.P6195014068725889146

namespace A311924

/-- `A004525(A312184(n))+2*n` -/
def P6195014068725889146.Spec : Prop :=
  ∀ n, P6195014068725889146.a n = A311924 n

end A311924

/-! ## A311924.P10920795109674092520

`A004525(A312620(n))+2*n`
-/

namespace A311924.P10920795109674092520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312620 n).toNat + (2 * n : ℤ)

end

end A311924.P10920795109674092520

namespace A311924

/-- `A004525(A312620(n))+2*n` -/
def P10920795109674092520.Spec : Prop :=
  ∀ n, P10920795109674092520.a n = A311924 n

end A311924

/-! ## A311924.P4344085599728282962

`A315527(n)-A047424(n+1)`
-/

namespace A311924.P4344085599728282962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315527 n - A047424 (n + 1)

end

end A311924.P4344085599728282962

namespace A311924

/-- `A315527(n)-A047424(n+1)` -/
def P4344085599728282962.Spec : Prop :=
  ∀ n, P4344085599728282962.a n = A311924 n

end A311924

/-! ## A311924.P11305418877729872996

`A004396(A313251(n))+n`
-/

namespace A311924.P11305418877729872996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313251 n).toNat + (n : ℤ)

end

end A311924.P11305418877729872996

namespace A311924

/-- `A004396(A313251(n))+n` -/
def P11305418877729872996.Spec : Prop :=
  ∀ n, P11305418877729872996.a n = A311924 n

end A311924

/-! ## A311924.P6069273722242966977

`A004396(A315058(n))+n`
-/

namespace A311924.P6069273722242966977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315058 n).toNat + (n : ℤ)

end

end A311924.P6069273722242966977

namespace A311924

/-- `A004396(A315058(n))+n` -/
def P6069273722242966977.Spec : Prop :=
  ∀ n, P6069273722242966977.a n = A311924 n

end A311924

/-! ## A311924.P5969754903086305950

`A004396(A315067(n))+n`
-/

namespace A311924.P5969754903086305950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315067 n).toNat + (n : ℤ)

end

end A311924.P5969754903086305950

namespace A311924

/-- `A004396(A315067(n))+n` -/
def P5969754903086305950.Spec : Prop :=
  ∀ n, P5969754903086305950.a n = A311924 n

end A311924

/-! ## A311924.P4509616423976216392

`A004396(n)+A004396(A312909(n)+n)`
-/

namespace A311924.P4509616423976216392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A312909 n + (n : ℤ)).toNat

end

end A311924.P4509616423976216392

namespace A311924

/-- `A004396(n)+A004396(A312909(n)+n)` -/
def P4509616423976216392.Spec : Prop :=
  ∀ n, P4509616423976216392.a n = A311924 n

end A311924

/-!
# A311925: Coordination sequence Gal.6.187.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311925, there is no canonical definition to state claims against.
-/

/-! ## A311925.P3326214324124515628

`A312476(n)-A267635(A056612(n+1))`
-/

namespace A311925.P3326214324124515628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312476 n - A267635 (A056612 (n + 1)).toNat

end

end A311925.P3326214324124515628

/-! ## A311925.P4309028739037001881

`A008574(n)+A001221(A020099(n))`
-/

namespace A311925.P4309028739037001881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001221 (A020099 n).toNat

end

end A311925.P4309028739037001881

/-! ## A311925.P18139293990879231155

`A311838(n)+A101605(A001998(n))`
-/

namespace A311925.P18139293990879231155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311838 n + A101605 (A001998 n).toNat

end

end A311925.P18139293990879231155

/-! ## A311925.P8324783933511536681

`A250120(n)-A001221(A073388(n))`
-/

namespace A311925.P8324783933511536681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A073388 n).toNat

end

end A311925.P8324783933511536681

/-! ## A311925.P2953307814946388895

`A312481(n)-A094186(A000111(n))`
-/

namespace A311925.P2953307814946388895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312481 n - A094186 (A000111 n).toNat

end

end A311925.P2953307814946388895

/-!
# A311926: Coordination sequence Gal.5.235.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311926, there is no canonical definition to state claims against.
-/

/-! ## A311926.P286358844833267261

`A311912(n)+A260728(A065601(n))`
-/

namespace A311926.P286358844833267261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311912 n + A260728 (A065601 n).toNat

end

end A311926.P286358844833267261

/-! ## A311926.P8197753406554143101

`or(A311735(n), A343632(n²+n))`
-/

namespace A311926.P8197753406554143101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311735 n) (A343632 (n ^ 2 + n))

end

end A311926.P8197753406554143101

/-! ## A311926.P3700043661429261841

`A312489(n)-A024360(A099327(n))`
-/

namespace A311926.P3700043661429261841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312489 n - A024360 (A099327 n).toNat

end

end A311926.P3700043661429261841

/-! ## A311926.P9522535435922691895

`or(A007895(A014371(n)), A008574(n))`
-/

namespace A311926.P9522535435922691895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007895 (A014371 n).toNat) (A008574 n)

end

end A311926.P9522535435922691895

/-! ## A311926.P2324775391912247369

`or(A007895(A014371(n)), A311735(n))`
-/

namespace A311926.P2324775391912247369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007895 (A014371 n).toNat) (A311735 n)

end

end A311926.P2324775391912247369

/-!
# A311927: Coordination sequence Gal.4.86.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311927, there is no canonical definition to state claims against.
-/

/-! ## A311927.P4456150245395826816

`A311935(n)-A202385(A075580(n))`
-/

namespace A311927.P4456150245395826816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311935 n - A202385 ((A075580 n).toNat + 31)

end

end A311927.P4456150245395826816

/-! ## A311927.P766138835506109680

`or(A008574(n), A010873(A020077(n)))`
-/

namespace A311927.P766138835506109680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A010873 (A020077 n).toNat)

end

end A311927.P766138835506109680

/-! ## A311927.P11217628876937618012

`A341618(A092596(n+1))+A311856(n)`
-/

namespace A311927.P11217628876937618012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341618 (A092596 (n + 1)).toNat + A311856 n

end

end A311927.P11217628876937618012

/-! ## A311927.P18365333163647444967

`A311937(n)-A014081(A079567(n+1))`
-/

namespace A311927.P18365333163647444967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311937 n - A014081 (A079567 (n + 1)).toNat

end

end A311927.P18365333163647444967

/-! ## A311927.P7414618067298913747

`A311952(n)-A196563(A146464(n+1))`
-/

namespace A311927.P7414618067298913747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311952 n - A196563 (A146464 (n + 1)).toNat

end

end A311927.P7414618067298913747

/-!
# A311928: Coordination sequence Gal.5.117.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311928, there is no canonical definition to state claims against.
-/

/-! ## A311928.P16304472392237358782

`(A312457(n)+A311354(n))/2`
-/

namespace A311928.P16304472392237358782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312457 n + A311354 n : ℚ) / 2

end

end A311928.P16304472392237358782

/-! ## A311928.P13628368144979110500

`A001281(A312457(n)+A311354(n))`
-/

namespace A311928.P13628368144979110500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312457 n + A311354 n).toNat

end

end A311928.P13628368144979110500

/-! ## A311928.P3461239282300566265

`A004525(A312457(n)+A311354(n))`
-/

namespace A311928.P3461239282300566265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312457 n + A311354 n).toNat

end

end A311928.P3461239282300566265

/-! ## A311928.P6745349651375960836

`A004526(A312457(n)+A311354(n))`
-/

namespace A311928.P6745349651375960836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312457 n + A311354 n).toNat

end

end A311928.P6745349651375960836

/-! ## A311928.P5001418209409551818

`A006370(A312457(n)+A311354(n))`
-/

namespace A311928.P5001418209409551818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A312457 n + A311354 n).toNat

end

end A311928.P5001418209409551818

/-! ## A311928.P7173283324291484395

`A025480(A312457(n)+A311354(n))`
-/

namespace A311928.P7173283324291484395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312457 n + A311354 n).toNat

end

end A311928.P7173283324291484395

/-! ## A311928.P11954008746782336975

`A026741(A312457(n)+A311354(n))`
-/

namespace A311928.P11954008746782336975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312457 n + A311354 n).toNat

end

end A311928.P11954008746782336975

/-! ## A311928.P10280632782808909585

`A065033(A312457(n)+A311354(n))`
-/

namespace A311928.P10280632782808909585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312457 n + A311354 n).toNat

end

end A311928.P10280632782808909585

/-! ## A311928.P8309432934746720397

`A110654(A312457(n)+A311354(n))`
-/

namespace A311928.P8309432934746720397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A312457 n + A311354 n).toNat

end

end A311928.P8309432934746720397

/-! ## A311928.P8920193133481229608

`A065033(A311354(n)-(1-A312457(n)))`
-/

namespace A311928.P8920193133481229608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311354 n - (1 - A312457 n)).toNat

end

end A311928.P8920193133481229608

/-! ## A311928.P8274054141662050065

`A110654(A311354(n)-(1-A312457(n)))`
-/

namespace A311928.P8274054141662050065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311354 n - (1 - A312457 n)).toNat

end

end A311928.P8274054141662050065

/-! ## A311928.P14938767201217615341

`A002265(2*(A312457(n)+A311354(n)))`
-/

namespace A311928.P14938767201217615341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A312457 n + A311354 n)).toNat

end

end A311928.P14938767201217615341

/-!
# A311929: Coordination sequence Gal.5.108.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311929, there is no canonical definition to state claims against.
-/

/-! ## A311929.P3591686345364222305

`A311931(n)-A011736(A095005(n+1))`
-/

namespace A311929.P3591686345364222305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311931 n - A011736 (A095005 (n + 1)).toNat

end

end A311929.P3591686345364222305

/-! ## A311929.P5676420208662213452

`A320847(A047211(2*n+1))-A350600(2*n+3)`
-/

namespace A311929.P5676420208662213452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A047211 (2 * n + 1)).toNat - A350600 (2 * n + 3)

end

end A311929.P5676420208662213452

/-! ## A311929.P5685675167447233599

`A311928(n)+A185284(3*n+1)`
-/

namespace A311929.P5685675167447233599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311928 n + A185284 (3 * n + 1)

end

end A311929.P5685675167447233599

/-! ## A311929.P1164382078440329192

`A311930(n)-A044936(A080877(n))`
-/

namespace A311929.P1164382078440329192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311930 n - A044936 (A080877 n).toNat

end

end A311929.P1164382078440329192

/-!
# A311930: Coordination sequence Gal.5.104.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311930, there is no canonical definition to state claims against.
-/

/-! ## A311930.P12031112791915628066

`A067251(A008574(n))-A185236(A208153(n))`
-/

namespace A311930.P12031112791915628066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (A008574 n).toNat - A185236 (A208153 n).toNat

end

end A311930.P12031112791915628066

/-! ## A311930.P10677556776460756927

`A311931(n)-Δ[A060128(A078740(n+1))]`
-/

namespace A311930.P10677556776460756927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A078740 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311931 n - (f1 (n + 1) - f1 n)

end

end A311930.P10677556776460756927

/-! ## A311930.P3480815525904500902

`A311929(n)+A044936(A080877(n))`
-/

namespace A311930.P3480815525904500902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311929 n + A044936 (A080877 n).toNat

end

end A311930.P3480815525904500902

/-! ## A311930.P12094463273300878282

`A311931(n)-A055641(A051044(n))`
-/

namespace A311930.P12094463273300878282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311931 n - A055641 (A051044 n).toNat

end

end A311930.P12094463273300878282

/-! ## A311930.P9468755697757290416

`A311931(n)-and(A011736(2*n), A061971(n+1))`
-/

namespace A311930.P9468755697757290416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311931 n - Int.land (A011736 (2 * n)) (A061971 (n + 1))

end

end A311930.P9468755697757290416

/-!
# A311931: Coordination sequence Gal.3.17.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311931, the canonical program `A311931.P15801867738715780697` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311931 has offset 0).

The definition of A311931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311931.P15801867738715780697

`A315036(n)-A291290(A032766(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A311931

/-- `A315036(n)-A291290(A032766(n))` -/
def P15801867738715780697.Spec : Prop :=
  ∀ n, P15801867738715780697.a n = A311931 n

theorem P15801867738715780697.correct : P15801867738715780697.Spec := by
  intro n
  simp only [A311931]

end A311931

/-! ## A311931.P3571294635457845436

`A004526(A152271(n))+A313786(n)-n`
-/

namespace A311931.P3571294635457845436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A152271 n).toNat + (A313786 n - (n : ℤ))

end

end A311931.P3571294635457845436

namespace A311931

/-- `A004526(A152271(n))+A313786(n)-n` -/
def P3571294635457845436.Spec : Prop :=
  ∀ n, P3571294635457845436.a n = A311931 n

end A311931

/-! ## A311931.P8529810952460443044

`A311929(n)+A011736(A095005(n+1))`
-/

namespace A311931.P8529810952460443044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311929 n + A011736 (A095005 (n + 1)).toNat

end

end A311931.P8529810952460443044

namespace A311931

/-- `A311929(n)+A011736(A095005(n+1))` -/
def P8529810952460443044.Spec : Prop :=
  ∀ n, P8529810952460443044.a n = A311931 n

end A311931

/-! ## A311931.P12374998300617593577

`A052382(A008574(n))%A131071(n+1)`
-/

namespace A311931.P12374998300617593577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052382 (A008574 n).toNat) (A131071 (n + 1))

end

end A311931.P12374998300617593577

namespace A311931

/-- `A052382(A008574(n))%A131071(n+1)` -/
def P12374998300617593577.Spec : Prop :=
  ∀ n, P12374998300617593577.a n = A311931 n

end A311931

/-! ## A311931.P3915773537317345696

`A130250(A064731(n+1))+A047355(n+1)`
-/

namespace A311931.P3915773537317345696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 (A064731 (n + 1)).toNat + A047355 (n + 1)

end

end A311931.P3915773537317345696

namespace A311931

/-- `A130250(A064731(n+1))+A047355(n+1)` -/
def P3915773537317345696.Spec : Prop :=
  ∀ n, P3915773537317345696.a n = A311931 n

end A311931

/-!
# A311932: Coordination sequence Gal.6.192.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311932, the canonical program `A311932.P15341292208442206404` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311932 has offset 0).

The definition of A311932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2570 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311932.P15341292208442206404

`A311434(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A311932

/-- `A311434(n)+Δ[A011864(n)]` -/
def P15341292208442206404.Spec : Prop :=
  ∀ n, P15341292208442206404.a n = A311932 n

theorem P15341292208442206404.correct : P15341292208442206404.Spec := by
  intro n
  simp only [A311932]

end A311932

/-! ## A311932.P14028227678574554900

`abs(10*n-A315699(n))`
-/

namespace A311932.P14028227678574554900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315699 n|

end

end A311932.P14028227678574554900

namespace A311932

/-- `abs(10*n-A315699(n))` -/
def P14028227678574554900.Spec : Prop :=
  ∀ n, P14028227678574554900.a n = A311932 n

end A311932

/-! ## A311932.P9611905387277234797

`A008458(n)+A008574(n)-A315699(n)`
-/

namespace A311932.P9611905387277234797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315699 n)

end

end A311932.P9611905387277234797

namespace A311932

/-- `A008458(n)+A008574(n)-A315699(n)` -/
def P9611905387277234797.Spec : Prop :=
  ∀ n, P9611905387277234797.a n = A311932 n

end A311932

/-! ## A311932.P7694123079782784463

`round(A250120(A312125(n))/5)`
-/

namespace A311932.P7694123079782784463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A250120 (A312125 n).toNat : ℚ) / 5)

end

end A311932.P7694123079782784463

namespace A311932

/-- `round(A250120(A312125(n))/5)` -/
def P7694123079782784463.Spec : Prop :=
  ∀ n, P7694123079782784463.a n = A311932 n

end A311932

/-! ## A311932.P8924770830981207528

`A004525(A312185(n))+2*n`
-/

namespace A311932.P8924770830981207528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312185 n).toNat + (2 * n : ℤ)

end

end A311932.P8924770830981207528

namespace A311932

/-- `A004525(A312185(n))+2*n` -/
def P8924770830981207528.Spec : Prop :=
  ∀ n, P8924770830981207528.a n = A311932 n

end A311932

/-! ## A311932.P3906876028719743034

`round(A008576(A315034(n))/3)`
-/

namespace A311932.P3906876028719743034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008576 (A315034 n).toNat : ℚ) / 3)

end

end A311932.P3906876028719743034

namespace A311932

/-- `round(A008576(A315034(n))/3)` -/
def P3906876028719743034.Spec : Prop :=
  ∀ n, P3906876028719743034.a n = A311932 n

end A311932

/-! ## A311932.P15055390022999464399

`A005843(A008458(n)-n)-A315699(n)`
-/

namespace A311932.P15055390022999464399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315699 n

end

end A311932.P15055390022999464399

namespace A311932

/-- `A005843(A008458(n)-n)-A315699(n)` -/
def P15055390022999464399.Spec : Prop :=
  ∀ n, P15055390022999464399.a n = A311932 n

end A311932

/-! ## A311932.P11307844700421292400

`round(A008574(A313899(n))/5)`
-/

namespace A311932.P11307844700421292400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 (A313899 n).toNat : ℚ) / 5)

end

end A311932.P11307844700421292400

namespace A311932

/-- `round(A008574(A313899(n))/5)` -/
def P11307844700421292400.Spec : Prop :=
  ∀ n, P11307844700421292400.a n = A311932 n

end A311932

/-! ## A311932.P8918339931856336061

`(A312556(n)+A008574(n))/2`
-/

namespace A311932.P8918339931856336061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312556 n + A008574 n : ℚ) / 2

end

end A311932.P8918339931856336061

namespace A311932

/-- `(A312556(n)+A008574(n))/2` -/
def P8918339931856336061.Spec : Prop :=
  ∀ n, P8918339931856336061.a n = (A311932 n : ℚ)

end A311932

/-! ## A311932.P15409988755675961175

`A004526(A312556(n))+A004277(n)`
-/

namespace A311932.P15409988755675961175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312556 n).toNat + A004277 n

end

end A311932.P15409988755675961175

namespace A311932

/-- `A004526(A312556(n))+A004277(n)` -/
def P15409988755675961175.Spec : Prop :=
  ∀ n, P15409988755675961175.a n = A311932 n

end A311932

/-! ## A311932.P15251070899918094460

`(A314253(n)+A004525(A314253(n)))/2`
-/

namespace A311932.P15251070899918094460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314253 n + A004525 (A314253 n).toNat : ℚ) / 2

end

end A311932.P15251070899918094460

namespace A311932

/-- `(A314253(n)+A004525(A314253(n)))/2` -/
def P15251070899918094460.Spec : Prop :=
  ∀ n, P15251070899918094460.a n = (A311932 n : ℚ)

end A311932

/-! ## A311932.P12860142164902351879

`A004396(A311994(n)+2*n)`
-/

namespace A311932.P12860142164902351879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311994 n + (2 * n : ℤ)).toNat

end

end A311932.P12860142164902351879

namespace A311932

/-- `A004396(A311994(n)+2*n)` -/
def P12860142164902351879.Spec : Prop :=
  ∀ n, P12860142164902351879.a n = A311932 n

end A311932

/-! ## A311932.P4991015882844409395

`A004396(A312125(n)+2*n)`
-/

namespace A311932.P4991015882844409395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312125 n + (2 * n : ℤ)).toNat

end

end A311932.P4991015882844409395

namespace A311932

/-- `A004396(A312125(n)+2*n)` -/
def P4991015882844409395.Spec : Prop :=
  ∀ n, P4991015882844409395.a n = A311932 n

end A311932

/-! ## A311932.P4901679315829733211

`A004396(A311994(n)+n+n)`
-/

namespace A311932.P4901679315829733211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311994 n + (n : ℤ) + (n : ℤ)).toNat

end

end A311932.P4901679315829733211

namespace A311932

/-- `A004396(A311994(n)+n+n)` -/
def P4901679315829733211.Spec : Prop :=
  ∀ n, P4901679315829733211.a n = A311932 n

end A311932

/-! ## A311932.P25417084251367445

`A004396(A312125(n)+n+n)`
-/

namespace A311932.P25417084251367445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312125 n + (n : ℤ) + (n : ℤ)).toNat

end

end A311932.P25417084251367445

namespace A311932

/-- `A004396(A312125(n)+n+n)` -/
def P25417084251367445.Spec : Prop :=
  ∀ n, P25417084251367445.a n = A311932 n

end A311932

/-! ## A311932.P8157491690217590164

`A068962(A313918(2*n))`
-/

namespace A311932.P8157491690217590164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A313918 (2 * n)).toNat

end

end A311932.P8157491690217590164

namespace A311932

/-- `A068962(A313918(2*n))` -/
def P8157491690217590164.Spec : Prop :=
  ∀ n, P8157491690217590164.a n = A311932 n

end A311932

/-! ## A311932.P9310820976117964727

`A313831(A008586(n))-A008586(A008586(n))`
-/

namespace A311932.P9310820976117964727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 (A008586 n).toNat - A008586 (A008586 n).toNat

end

end A311932.P9310820976117964727

namespace A311932

/-- `A313831(A008586(n))-A008586(A008586(n))` -/
def P9310820976117964727.Spec : Prop :=
  ∀ n, P9310820976117964727.a n = A311932 n

end A311932

/-! ## A311932.P2033525434349368946

`A314832(A008574(2*n))-A008574(A008574(2*n))`
-/

namespace A311932.P2033525434349368946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314832 (A008574 (2 * n)).toNat - A008574 (A008574 (2 * n)).toNat

end

end A311932.P2033525434349368946

namespace A311932

/-- `A314832(A008574(2*n))-A008574(A008574(2*n))` -/
def P2033525434349368946.Spec : Prop :=
  ∀ n, P2033525434349368946.a n = A311932 n

end A311932

/-!
# A311933: Coordination sequence Gal.6.298.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311933, there is no canonical definition to state claims against.
-/

/-! ## A311933.P16263635497610369195

`A147534(A261133(A008574(n))+A005843(n))`
-/

namespace A311933.P16263635497610369195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (A261133 (A008574 n).toNat + A005843 n).toNat

end

end A311933.P16263635497610369195

/-! ## A311933.P12435190669022151307

`A312929(n)-A055029(A186526(n))`
-/

namespace A311933.P12435190669022151307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312929 n - A055029 (A186526 n).toNat

end

end A311933.P12435190669022151307

/-! ## A311933.P13104601710986880260

`A312929(n)-A262988(A002445(n))`
-/

namespace A311933.P13104601710986880260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312929 n - A262988 (A002445 n).toNat

end

end A311933.P13104601710986880260

/-! ## A311933.P4017028199955377957

`A311932(n)+A055641(A111286(n+1))`
-/

namespace A311933.P4017028199955377957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n + A055641 (A111286 (n + 1)).toNat

end

end A311933.P4017028199955377957

/-! ## A311933.P3146298801585841652

`A311932(n)+A301576(A333939(2*n+1))`
-/

namespace A311933.P3146298801585841652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n + A301576 (A333939 (2 * n + 1)).toNat

end

end A311933.P3146298801585841652

/-!
# A311934: Coordination sequence Gal.6.186.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311934, there is no canonical definition to state claims against.
-/

/-! ## A311934.P6638232280854051267

`A311935(n)-A102683(A056469(n))`
-/

namespace A311934.P6638232280854051267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311935 n - A102683 (A056469 n).toNat

end

end A311934.P6638232280854051267

/-! ## A311934.P3536679975778898864

`A311935(n)-A102683(A039792(n+1))`
-/

namespace A311934.P3536679975778898864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311935 n - A102683 (A039792 (n + 1)).toNat

end

end A311934.P3536679975778898864

/-! ## A311934.P15678840968492755553

`A311935(n)+A178798(A136555(n))`
-/

namespace A311934.P15678840968492755553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311935 n + A178798 (A136555 n).toNat

end

end A311934.P15678840968492755553

/-! ## A311934.P16255809928348364566

`A311935(n)-A044941(A286062(n))`
-/

namespace A311934.P16255809928348364566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311935 n - A044941 (A286062 n).toNat

end

end A311934.P16255809928348364566

/-! ## A311934.P237604627152716359

`A311935(n)%A356736(A311895(n+1))`
-/

namespace A311934.P237604627152716359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311935 n) (A356736 (A311895 (n + 1)).toNat)

end

end A311934.P237604627152716359

/-!
# A311935: Coordination sequence Gal.6.170.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311935, there is no canonical definition to state claims against.
-/

/-! ## A311935.P2211234246482657355

`A311934(n)+A102683(A056469(n))`
-/

namespace A311935.P2211234246482657355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311934 n + A102683 (A056469 n).toNat

end

end A311935.P2211234246482657355

/-! ## A311935.P14114807949683847536

`A311934(n)+A102683(A039792(n+1))`
-/

namespace A311935.P14114807949683847536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311934 n + A102683 (A039792 (n + 1)).toNat

end

end A311935.P14114807949683847536

/-! ## A311935.P3711297494213703956

`A311934(n)+A044941(A286062(n))`
-/

namespace A311935.P3711297494213703956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311934 n + A044941 (A286062 n).toNat

end

end A311935.P3711297494213703956

/-! ## A311935.P2938800139753042926

`or(A102683(A000079(n)), A311934(n))`
-/

namespace A311935.P2938800139753042926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A000079 n).toNat) (A311934 n)

end

end A311935.P2938800139753042926

/-! ## A311935.P9011155189005445220

`A311934(n)+A185284(A309095(n+1))`
-/

namespace A311935.P9011155189005445220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311934 n + A185284 (A309095 (n + 1)).toNat

end

end A311935.P9011155189005445220

/-!
# A311936: Coordination sequence Gal.6.300.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311936, there is no canonical definition to state claims against.
-/

/-! ## A311936.P26123924387057491

`A311932(n)+A107846(A097111(n))`
-/

namespace A311936.P26123924387057491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n + A107846 (A097111 n).toNat

end

end A311936.P26123924387057491

/-! ## A311936.P16276941942874133031

`A311964(n)-A225654(A023422(n))`
-/

namespace A311936.P16276941942874133031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n - A225654 (A023422 n).toNat

end

end A311936.P16276941942874133031

/-! ## A311936.P16736969513975708952

`A311820(n)+A051903(A146834(n+1))`
-/

namespace A311936.P16736969513975708952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311820 n + A051903 (A146834 (n + 1)).toNat

end

end A311936.P16736969513975708952

/-! ## A311936.P2219970628427248292

`round(log(A220878(2*n+1)))`
-/

namespace A311936.P2219970628427248292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A220878 (2 * n + 1) : ℝ))

end

end A311936.P2219970628427248292

/-! ## A311936.P12433542868568307431

`A003056(A247832((3*n)²))`
-/

namespace A311936.P12433542868568307431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A247832 ((3 * n) ^ 2)).toNat

end

end A311936.P12433542868568307431

/-!
# A311937: Coordination sequence Gal.6.214.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311937, there is no canonical definition to state claims against.
-/

/-! ## A311937.P15264841386606983677

`A082543(A028310(n))+A008574(n)`
-/

namespace A311937.P15264841386606983677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082543 (A028310 n).toNat + A008574 n

end

end A311937.P15264841386606983677

/-! ## A311937.P12041682834706706186

`A351007(A029968(n+1))+A008586(n)`
-/

namespace A311937.P12041682834706706186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 (A029968 (n + 1)).toNat + A008586 n

end

end A311937.P12041682834706706186

/-! ## A311937.P18156870246176940302

`A250120(n)-A001221(A148356(n+1))`
-/

namespace A311937.P18156870246176940302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A148356 (n + 1)).toNat

end

end A311937.P18156870246176940302

/-! ## A311937.P1903506304306696663

`A000196(A019454(3*n)+A019436(n+1))`
-/

namespace A311937.P1903506304306696663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A019454 (3 * n) + A019436 (n + 1)).toNat

end

end A311937.P1903506304306696663

/-! ## A311937.P21816253720433278

`A247064(3*n+1)+A000523(A000958(n+1))`
-/

namespace A311937.P21816253720433278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247064 (3 * n + 1) + A000523 (A000958 (n + 1)).toNat

end

end A311937.P21816253720433278

/-!
# A311938: Coordination sequence Gal.6.376.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311938, there is no canonical definition to state claims against.
-/

/-! ## A311938.P11383428680246841476

`A112765(n+2)+A311525(n)-A178798(A168289(n))`
-/

namespace A311938.P11383428680246841476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 2) + (A311525 n - A178798 (A168289 n).toNat)

end

end A311938.P11383428680246841476

/-! ## A311938.P160334446550590860

`A112765(n+2)+A311525(n)-A185284(A224773(n+1))`
-/

namespace A311938.P160334446550590860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 2) + (A311525 n - A185284 (A224773 (n + 1)).toNat)

end

end A311938.P160334446550590860

/-! ## A311938.P12471213132094972995

`A112765(n+2)+A311525(n)-A178798(A298547(n+1))`
-/

namespace A311938.P12471213132094972995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 2) + (A311525 n - A178798 (A298547 (n + 1)).toNat)

end

end A311938.P12471213132094972995

/-! ## A311938.P11818953864242281874

`A311160(n)+A001221(A143554(n))`
-/

namespace A311938.P11818953864242281874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311160 n + A001221 (A143554 n).toNat

end

end A311938.P11818953864242281874

/-! ## A311938.P9576474418149814334

`A311525(A062399(n))+A112765(n+2)`
-/

namespace A311938.P9576474418149814334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311525 (A062399 n).toNat + A112765 (n + 2)

end

end A311938.P9576474418149814334

/-!
# A311939: Coordination sequence Gal.6.434.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311939, there is no canonical definition to state claims against.
-/

/-! ## A311939.P9849995628646192557

`A313051(n)-A102677(n²²)`
-/

namespace A311939.P9849995628646192557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n - A102677 ((n ^ 2) ^ 2)

end

end A311939.P9849995628646192557

/-! ## A311939.P1037367933380407253

`A311919(n)+A112605(A188378(n))`
-/

namespace A311939.P1037367933380407253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311919 n + A112605 (A188378 n).toNat

end

end A311939.P1037367933380407253

/-! ## A311939.P16368632166220184646

`A313113(n)-A001221(A000110(n))`
-/

namespace A311939.P16368632166220184646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313113 n - A001221 (A000110 n).toNat

end

end A311939.P16368632166220184646

/-! ## A311939.P7137295174545146510

`A314914(n)-A001221(A077587(n))`
-/

namespace A311939.P7137295174545146510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314914 n - A001221 (A077587 n).toNat

end

end A311939.P7137295174545146510

/-! ## A311939.P10917920500810588580

`A313113(n)-A001221(A164864(n))`
-/

namespace A311939.P10917920500810588580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313113 n - A001221 (A164864 n).toNat

end

end A311939.P10917920500810588580

/-!
# A311940: Coordination sequence Gal.6.303.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311940, there is no canonical definition to state claims against.
-/

/-! ## A311940.P8987878259923445599

`A312084(n)-A064911(A121449(n))`
-/

namespace A311940.P8987878259923445599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312084 n - A064911 (A121449 n).toNat

end

end A311940.P8987878259923445599

/-! ## A311940.P11792349659842885886

`A311900(n)+A091064(A006252(n))`
-/

namespace A311940.P11792349659842885886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311900 n + A091064 (A006252 n).toNat

end

end A311940.P11792349659842885886

/-! ## A311940.P6777439673832110179

`A312083(n)-A221152(A321228(n))`
-/

namespace A311940.P6777439673832110179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312083 n - A221152 (A321228 n).toNat

end

end A311940.P6777439673832110179

/-! ## A311940.P15641260606926599922

`A311314(n)-A330025(A211795(n)-A330025(n))`
-/

namespace A311940.P15641260606926599922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311314 n - A330025 (A211795 n - A330025 n).toNat

end

end A311940.P15641260606926599922

/-! ## A311940.P13627718416882301392

`A335453(A311898(2*n+1))+A311900(n)`
-/

namespace A311940.P13627718416882301392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (A311898 (2 * n + 1)).toNat + A311900 n

end

end A311940.P13627718416882301392

/-!
# A311941: Coordination sequence Gal.6.242.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311941, there is no canonical definition to state claims against.
-/

/-! ## A311941.P3132602436478149548

`∑[A068953(A068739(n+2))]`
-/

namespace A311941.P3132602436478149548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068953 (A068739 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311941.P3132602436478149548

/-! ## A311941.P8788626355613501329

`A331671(A046589(n+1))+A311285(n)`
-/

namespace A311941.P8788626355613501329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331671 (A046589 (n + 1)).toNat + A311285 n

end

end A311941.P8788626355613501329

/-! ## A311941.P619872107677593179

`A311499(n)+A181663(A301885(n+1))`
-/

namespace A311941.P619872107677593179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311499 n + A181663 (A301885 (n + 1)).toNat

end

end A311941.P619872107677593179

/-! ## A311941.P8616107591724610929

`A311948(n)-A124761(A121556(n+1))`
-/

namespace A311941.P8616107591724610929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311948 n - A124761 (A121556 (n + 1)).toNat

end

end A311941.P8616107591724610929

/-! ## A311941.P15997984269014629161

`A312561(n)-A073458(A220826(n+1))`
-/

namespace A311941.P15997984269014629161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n - A073458 (A220826 (n + 1)).toNat

end

end A311941.P15997984269014629161

/-!
# A311942: Coordination sequence Gal.5.118.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311942, there is no canonical definition to state claims against.
-/

/-! ## A311942.P9384407042376691192

`A312488(n)-A081603(A001254(n))`
-/

namespace A311942.P9384407042376691192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312488 n - A081603 (A001254 n).toNat

end

end A311942.P9384407042376691192

/-! ## A311942.P13930849441488898867

`A311945(n)-A319995(A032297(n))`
-/

namespace A311942.P13930849441488898867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311945 n - A319995 (A032297 n).toNat

end

end A311942.P13930849441488898867

/-! ## A311942.P13012581539914093582

`A312498(n)-A294018(A111544(n))`
-/

namespace A311942.P13012581539914093582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312498 n - A294018 (A111544 n).toNat

end

end A311942.P13012581539914093582

/-! ## A311942.P6190098545477583948

`or(A001222(A078480(n)), A008574(n))`
-/

namespace A311942.P6190098545477583948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A078480 n).toNat) (A008574 n)

end

end A311942.P6190098545477583948

/-! ## A311942.P9988227904944960978

`A311166(n)+A056924(A068870(n))`
-/

namespace A311942.P9988227904944960978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311166 n + A056924 (A068870 n).toNat

end

end A311942.P9988227904944960978

/-!
# A311943: Coordination sequence Gal.4.80.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311943, the canonical program `A311943.P806535565075685350` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311943 has offset 0).

The definition of A311943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311943.P15451104979218200336

`ogf((1+3x+4x^2+4x^3+2x^4+4x^5+4x^6+3x^7+x^8)/(1-x-x^3+2x^4-x^5-x^7+x^8))`
-/

namespace A311943.P15451104979218200336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4, 4, 2, 4, 4, 3, 1] [1, -1, 0, -1, 2, -1, 0, -1, 1] n

end

end A311943.P15451104979218200336

namespace A311943

/-- `ogf((1+3x+4x^2+4x^3+2x^4+4x^5+4x^6+3x^7+x^8)/(1-x-x^3+2x^4-x^5-x^7+x^8))` -/
def P15451104979218200336.Spec : Prop :=
  ∀ n, P15451104979218200336.a n = A311943 n

end A311943

/-! ## A311943.P806535565075685350

`a(n-1)+a(n-3)-2*a(n-4)+a(n-5)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=13, a(4)=17, a(5)=22, a(6)=27, a(7)=30, a(8)=35`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A311943

/-- `a(n-1)+a(n-3)-2*a(n-4)+a(n-5)+a(n-7)-a(n-8)` -/
def P806535565075685350.Spec : Prop :=
  ∀ n, P806535565075685350.a n = A311943 n

theorem P806535565075685350.correct : P806535565075685350.Spec := by
  intro n
  simp only [A311943]

end A311943

/-! ## A311943.P6115162194973214202

`2*A311843(n)-A301672(n)`
-/

namespace A311943.P6115162194973214202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311843 n - A301672 n

end

end A311943.P6115162194973214202

namespace A311943

/-- `2*A311843(n)-A301672(n)` -/
def P6115162194973214202.Spec : Prop :=
  ∀ n, P6115162194973214202.a n = A311943 n

end A311943

/-! ## A311943.P5410403614985295157

`A312901(n)+A056594(A158416(n))`
-/

namespace A311943.P5410403614985295157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312901 n + A056594 (A158416 n).toNat

end

end A311943.P5410403614985295157

namespace A311943

/-- `A312901(n)+A056594(A158416(n))` -/
def P5410403614985295157.Spec : Prop :=
  ∀ n, P5410403614985295157.a n = A311943 n

end A311943

/-! ## A311943.P15070462364805058216

`A312901(n)-A056594(n)*A056594(A158416(n))`
-/

namespace A311943.P15070462364805058216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312901 n - A056594 n * A056594 (A158416 n).toNat

end

end A311943.P15070462364805058216

namespace A311943

/-- `A312901(n)-A056594(n)*A056594(A158416(n))` -/
def P15070462364805058216.Spec : Prop :=
  ∀ n, P15070462364805058216.a n = A311943 n

end A311943

/-! ## A311943.P3927188784606004332

`A005843(A311843(n))-A301672(n)`
-/

namespace A311943.P3927188784606004332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311843 n).toNat - A301672 n

end

end A311943.P3927188784606004332

namespace A311943

/-- `A005843(A311843(n))-A301672(n)` -/
def P3927188784606004332.Spec : Prop :=
  ∀ n, P3927188784606004332.a n = A311943 n

end A311943

/-! ## A311943.P15238269668190242574

`A315061(n)-A004396(n)`
-/

namespace A311943.P15238269668190242574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - A004396 n

end

end A311943.P15238269668190242574

namespace A311943

/-- `A315061(n)-A004396(n)` -/
def P15238269668190242574.Spec : Prop :=
  ∀ n, P15238269668190242574.a n = A311943 n

theorem P15238269668190242574.correct : P15238269668190242574.Spec := by
  intro n
  simp only [A311943, Nat.add_sub_cancel, A311943.P15238269668190242574.a, A311943.P806535565075685350.a, A004396, A004396.P17032557045289780609.a, A315061, A315061.P13322944318282454910.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311943

/-! ## A311943.P13495198442661666997

`A315061(n)-A002264(2*n+1)`
-/

namespace A311943.P13495198442661666997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - A002264 (2 * n + 1)

end

end A311943.P13495198442661666997

namespace A311943

/-- `A315061(n)-A002264(2*n+1)` -/
def P13495198442661666997.Spec : Prop :=
  ∀ n, P13495198442661666997.a n = A311943 n

theorem P13495198442661666997.correct : P13495198442661666997.Spec := by
  intro n
  simp only [A311943, Nat.add_sub_cancel, A311943.P13495198442661666997.a, A311943.P806535565075685350.a, A002264, A002264.P5647656940077635922.a, A315061, A315061.P13322944318282454910.a, A004396, A004396.P17032557045289780609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311943

/-! ## A311943.P6641059263526743480

`A315061(n)-A004525(A004773(n))`
-/

namespace A311943.P6641059263526743480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - A004525 (A004773 n).toNat

end

end A311943.P6641059263526743480

namespace A311943

/-- `A315061(n)-A004525(A004773(n))` -/
def P6641059263526743480.Spec : Prop :=
  ∀ n, P6641059263526743480.a n = A311943 n

end A311943

/-! ## A311943.P3056966264266042878

`A315061(n)-A008615(A016813(n))`
-/

namespace A311943.P3056966264266042878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - A008615 (A016813 n).toNat

end

end A311943.P3056966264266042878

namespace A311943

/-- `A315061(n)-A008615(A016813(n))` -/
def P3056966264266042878.Spec : Prop :=
  ∀ n, P3056966264266042878.a n = A311943 n

end A311943

/-! ## A311943.P4553647109911028075

`A315061(n)-A004525(A131452(n))`
-/

namespace A311943.P4553647109911028075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - A004525 (A131452 n).toNat

end

end A311943.P4553647109911028075

namespace A311943

/-- `A315061(n)-A004525(A131452(n))` -/
def P4553647109911028075.Spec : Prop :=
  ∀ n, P4553647109911028075.a n = A311943 n

end A311943

/-! ## A311943.P12558409162991151977

`A004396(2*n)+A004396(A312140(n))`
-/

namespace A311943.P12558409162991151977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A312140 n).toNat

end

end A311943.P12558409162991151977

namespace A311943

/-- `A004396(2*n)+A004396(A312140(n))` -/
def P12558409162991151977.Spec : Prop :=
  ∀ n, P12558409162991151977.a n = A311943 n

end A311943

/-!
# A311944: Coordination sequence Gal.6.284.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311944, there is no canonical definition to state claims against.
-/

/-! ## A311944.P1613684023221193299

`A311945(n)-A151692(A022168(n))`
-/

namespace A311944.P1613684023221193299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311945 n - A151692 (A022168 n).toNat

end

end A311944.P1613684023221193299

/-! ## A311944.P10938952916537005074

`A311945(n)-A064911(A333888(n))`
-/

namespace A311944.P10938952916537005074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311945 n - A064911 (A333888 n).toNat

end

end A311944.P10938952916537005074

/-! ## A311944.P17930445815811522129

`A311945(n)-A055641(A093306(n+1))`
-/

namespace A311944.P17930445815811522129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311945 n - A055641 (A093306 (n + 1)).toNat

end

end A311944.P17930445815811522129

/-! ## A311944.P6070673528965686348

`A311945(A062399(n))`
-/

namespace A311944.P6070673528965686348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311945 (A062399 n).toNat

end

end A311944.P6070673528965686348

/-! ## A311944.P11106483859631445746

`A311945(A120126(n))`
-/

namespace A311944.P11106483859631445746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311945 (A120126 n).toNat

end

end A311944.P11106483859631445746

/-!
# A311945: Coordination sequence Gal.6.270.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311945, there is no canonical definition to state claims against.
-/

/-! ## A311945.P18440004874721465984

`A250120(n)-A001221(A290277(n+2))`
-/

namespace A311945.P18440004874721465984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A290277 (n + 2)).toNat

end

end A311945.P18440004874721465984

/-! ## A311945.P6568508598358475542

`A301291(n)-A003849(A142127(3*(n+1)))`
-/

namespace A311945.P6568508598358475542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A003849 (A142127 (3 * (n + 1))).toNat

end

end A311945.P6568508598358475542

/-! ## A311945.P18233554131776939442

`A311944(n)+A151692(A022168(n))`
-/

namespace A311945.P18233554131776939442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311944 n + A151692 (A022168 n).toNat

end

end A311945.P18233554131776939442

/-! ## A311945.P12329758071395511100

`A311944(n)+A064911(A333888(n))`
-/

namespace A311945.P12329758071395511100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311944 n + A064911 (A333888 n).toNat

end

end A311945.P12329758071395511100

/-! ## A311945.P6155260919550572998

`A311944(n)+A185284(A352832(n))`
-/

namespace A311945.P6155260919550572998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311944 n + A185284 (A352832 n).toNat

end

end A311945.P6155260919550572998

/-!
# A311946: Coordination sequence Gal.6.293.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311946, there is no canonical definition to state claims against.
-/

/-! ## A311946.P14511269850504002002

`A311947(n)-A321936(A062087(n+1))`
-/

namespace A311946.P14511269850504002002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311947 n - A321936 (A062087 (n + 1)).toNat

end

end A311946.P14511269850504002002

/-! ## A311946.P6267885051965535271

`A311947(n)-A178798(A060546(n))`
-/

namespace A311946.P6267885051965535271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311947 n - A178798 (A060546 n).toNat

end

end A311946.P6267885051965535271

/-! ## A311946.P5367927451076696061

`A311947(n)-A190829(A298857(n))`
-/

namespace A311946.P5367927451076696061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311947 n - A190829 (A298857 n).toNat

end

end A311946.P5367927451076696061

/-! ## A311946.P2816600563721398016

`A311947(n)-A037824(A055402(n+1))`
-/

namespace A311946.P2816600563721398016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311947 n - A037824 (A055402 (n + 1)).toNat

end

end A311946.P2816600563721398016

/-! ## A311946.P3867549192397821080

`A311947(n)+A178798(A060546(n)+2)`
-/

namespace A311946.P3867549192397821080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311947 n + A178798 (A060546 n + 2).toNat

end

end A311946.P3867549192397821080

/-!
# A311947: Coordination sequence Gal.6.279.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311947, there is no canonical definition to state claims against.
-/

/-! ## A311947.P15364216403971143651

`A311946(n)+A190829(A298857(n))`
-/

namespace A311947.P15364216403971143651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311946 n + A190829 (A298857 n).toNat

end

end A311947.P15364216403971143651

/-! ## A311947.P6468255531205507092

`A311946(n)+A037824(A055402(n+1))`
-/

namespace A311947.P6468255531205507092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311946 n + A037824 (A055402 (n + 1)).toNat

end

end A311947.P6468255531205507092

/-! ## A311947.P9075245567085780629

`A340998(A050052(n+1))+A311946(n)`
-/

namespace A311947.P9075245567085780629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A050052 (n + 1)).toNat + 140) + A311946 n

end

end A311947.P9075245567085780629

/-! ## A311947.P6097188653936486921

`A311946(n)+A083894(A181936(n))`
-/

namespace A311947.P6097188653936486921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311946 n + A083894 (A181936 n).toNat

end

end A311947.P6097188653936486921

/-!
# A311948: Coordination sequence Gal.6.146.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311948, there is no canonical definition to state claims against.
-/

/-! ## A311948.P11665550973898115391

`A311941(n)+A154234(A318403(n))`
-/

namespace A311948.P11665550973898115391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311941 n + A154234 (A318403 n).toNat

end

end A311948.P11665550973898115391

/-! ## A311948.P8669331599579710234

`A311941(n)+A025456(A140960(n))`
-/

namespace A311948.P8669331599579710234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311941 n + A025456 (A140960 n).toNat

end

end A311948.P8669331599579710234

/-! ## A311948.P8885503093900663288

`A311950(n)-A188432(A193296(n))`
-/

namespace A311948.P8885503093900663288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311950 n - A188432 (A193296 n).toNat

end

end A311948.P8885503093900663288

/-! ## A311948.P1129542659916528810

`A312522(n)-A109017(A088974(n+1))`
-/

namespace A311948.P1129542659916528810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312522 n - A109017 (A088974 (n + 1)).toNat

end

end A311948.P1129542659916528810

/-! ## A311948.P13919460196590822161

`A311954(n)-A124761(A265582(n+1))`
-/

namespace A311948.P13919460196590822161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311954 n - A124761 (A265582 (n + 1)).toNat

end

end A311948.P13919460196590822161

/-!
# A311949: Coordination sequence Gal.5.73.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311949, there is no canonical definition to state claims against.
-/

/-! ## A311949.P11967657704784508113

`or(A014376(∑{d}[n+1, #]), A311941(n))`
-/

namespace A311949.P11967657704784508113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014376 (∑ d ∈ Nat.divisors (f1 n), d)) (A311941 n)

end

end A311949.P11967657704784508113

/-! ## A311949.P5302208331879878787

`A311950(n)-A010894(A311514(n))`
-/

namespace A311949.P5302208331879878787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311950 n - A010894 ((A311514 n).toNat + 21)

end

end A311949.P5302208331879878787

/-! ## A311949.P11128436216571589520

`A311950(n)-A010894(A311950(n)+2)`
-/

namespace A311949.P11128436216571589520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311950 n - A010894 ((A311950 n + 2).toNat + 21)

end

end A311949.P11128436216571589520

/-! ## A311949.P4821370662124610009

`A311950(A087051(n))`
-/

namespace A311949.P4821370662124610009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311950 (A087051 n).toNat

end

end A311949.P4821370662124610009

/-! ## A311949.P16176006882389004061

`A311950(A227549(n+1))`
-/

namespace A311949.P16176006882389004061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311950 (A227549 (n + 1)).toNat

end

end A311949.P16176006882389004061

/-!
# A311950: Coordination sequence Gal.4.69.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311950, there is no canonical definition to state claims against.
-/

/-! ## A311950.P12196040381046534239

`or(A064990(A033484(n)), A311501(n))`
-/

namespace A311950.P12196040381046534239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064990 (A033484 n).toNat) (A311501 n)

end

end A311950.P12196040381046534239

/-! ## A311950.P9508155303363313782

`A311949(n)+A010894(A311514(n))`
-/

namespace A311950.P9508155303363313782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311949 n + A010894 ((A311514 n).toNat + 21)

end

end A311950.P9508155303363313782

/-!
# A311951: Coordination sequence Gal.4.51.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311951, there is no canonical definition to state claims against.
-/

/-! ## A311951.P12515964495339826989

`or(A181712(A138715(n+1)), A311503(n))`
-/

namespace A311951.P12515964495339826989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181712 (A138715 (n + 1)).toNat) (A311503 n)

end

end A311951.P12515964495339826989

/-! ## A311951.P15968286844310749679

`or(A181712(A138715(n+1)), A311914(n))`
-/

namespace A311951.P15968286844310749679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181712 (A138715 (n + 1)).toNat) (A311914 n)

end

end A311951.P15968286844310749679

/-! ## A311951.P2508674841795231932

`or(A181712(A138715(n+1)), A311918(n))`
-/

namespace A311951.P2508674841795231932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181712 (A138715 (n + 1)).toNat) (A311918 n)

end

end A311951.P2508674841795231932

/-! ## A311951.P5847907487299359876

`A311950(n)+A206499(A358377(n+3))`
-/

namespace A311951.P5847907487299359876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311950 n + A206499 (A358377 (n + 3)).toNat

end

end A311951.P5847907487299359876

/-! ## A311951.P7907101187886205287

`or(A059841(A061978(n+1)), A311917(n))`
-/

namespace A311951.P7907101187886205287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A061978 (n + 1)).toNat) (A311917 n)

end

end A311951.P7907101187886205287

/-!
# A311952: Coordination sequence Gal.6.298.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311952, there is no canonical definition to state claims against.
-/

/-! ## A311952.P8842806443385392702

`A311427(n)+A196563(A027306(n))`
-/

namespace A311952.P8842806443385392702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311427 n + A196563 (A027306 n).toNat

end

end A311952.P8842806443385392702

/-! ## A311952.P17652186323478053387

`A247973(A313897(n)+A002264(n))`
-/

namespace A311952.P17652186323478053387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A313897 n + A002264 n).toNat

end

end A311952.P17652186323478053387

/-! ## A311952.P6503580232325801103

`A311508(n)+A059841(A229066(n))`
-/

namespace A311952.P6503580232325801103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311508 n + A059841 (A229066 n).toNat

end

end A311952.P6503580232325801103

/-! ## A311952.P3209024978081983449

`A311848(n)+A011734(A077241(n))`
-/

namespace A311952.P3209024978081983449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311848 n + A011734 (A077241 n).toNat

end

end A311952.P3209024978081983449

/-! ## A311952.P6858236105785778193

`A301676(n)-A309061(A007416(n+1))`
-/

namespace A311952.P6858236105785778193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n - A309061 (A007416 (n + 1)).toNat

end

end A311952.P6858236105785778193

/-!
# A311953: Coordination sequence Gal.6.237.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311953, there is no canonical definition to state claims against.
-/

/-! ## A311953.P13035123287564305625

`A087069(3*n)+A001055(A283877(n))`
-/

namespace A311953.P13035123287564305625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 (3 * n) + A001055 (A283877 n).toNat

end

end A311953.P13035123287564305625

/-! ## A311953.P12294237407102626478

`or(A001221(A321228(n)), A311225(n))`
-/

namespace A311953.P12294237407102626478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A321228 n).toNat) (A311225 n)

end

end A311953.P12294237407102626478

/-! ## A311953.P14883396609266623595

`or(A001221(A321228(n)), A311501(n))`
-/

namespace A311953.P14883396609266623595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A321228 n).toNat) (A311501 n)

end

end A311953.P14883396609266623595

/-! ## A311953.P16785124994805364320

`or(A001221(A321228(n)), A311928(n))`
-/

namespace A311953.P16785124994805364320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A321228 n).toNat) (A311928 n)

end

end A311953.P16785124994805364320

/-! ## A311953.P7844483666909569360

`or(A088950(A101135(n+1)), A311928(n))`
-/

namespace A311953.P7844483666909569360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088950 (A101135 (n + 1)).toNat) (A311928 n)

end

end A311953.P7844483666909569360

/-!
# A311954: Coordination sequence Gal.6.139.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311954, there is no canonical definition to state claims against.
-/

/-! ## A311954.P5890394574722190151

`or(A083893(A041289(n)), A311950(n))`
-/

namespace A311954.P5890394574722190151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083893 (A041289 n).toNat) (A311950 n)

end

end A311954.P5890394574722190151

/-! ## A311954.P2485781814748456355

`or(A151755(A001631(n)), A311950(n))`
-/

namespace A311954.P2485781814748456355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151755 (A001631 n).toNat) (A311950 n)

end

end A311954.P2485781814748456355

/-! ## A311954.P13017848694101949839

`or(A124761(A155467(n)), A311950(n))`
-/

namespace A311954.P13017848694101949839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124761 (A155467 n).toNat) (A311950 n)

end

end A311954.P13017848694101949839

/-! ## A311954.P7295059378548068782

`or(A083893(A224497(n)), A311921(n))`
-/

namespace A311954.P7295059378548068782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083893 (A224497 n).toNat) (A311921 n)

end

end A311954.P7295059378548068782

/-! ## A311954.P11733224366542261426

`A311950(n)+A206499(A270951(n+1))`
-/

namespace A311954.P11733224366542261426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311950 n + A206499 (A270951 (n + 1)).toNat

end

end A311954.P11733224366542261426

/-!
# A311955: Coordination sequence Gal.4.47.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311955, there is no canonical definition to state claims against.
-/

/-! ## A311955.P15519936532144497097

`A301676(n)-A189673(A290235(n))`
-/

namespace A311955.P15519936532144497097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n - A189673 (A290235 n).toNat

end

end A311955.P15519936532144497097

/-! ## A311955.P3772591326490335005

`A301722(n)-(A189673(A290235(n))+A186101(n))`
-/

namespace A311955.P3772591326490335005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - (A189673 (A290235 n).toNat + A186101 n)

end

end A311955.P3772591326490335005

/-! ## A311955.P14018322269524016630

`A311792(n)+A001842(A210592(n))`
-/

namespace A311955.P14018322269524016630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311792 n + A001842 (A210592 n).toNat

end

end A311955.P14018322269524016630

/-! ## A311955.P490093038755656991

`A311954(n)+A124761(A265582(n))`
-/

namespace A311955.P490093038755656991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311954 n + A124761 (A265582 n).toNat

end

end A311955.P490093038755656991

/-! ## A311955.P6055167227643281469

`A311956(A087051(n))`
-/

namespace A311955.P6055167227643281469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311956 (A087051 n).toNat

end

end A311955.P6055167227643281469

/-!
# A311956: Coordination sequence Gal.4.65.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311956, there is no canonical definition to state claims against.
-/

/-! ## A311956.P5908812542597224796

`A311930(n)+A191254(A041825(n))`
-/

namespace A311956.P5908812542597224796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311930 n + A191254 (A041825 n).toNat

end

end A311956.P5908812542597224796

/-! ## A311956.P14865600723953240356

`A005187(2*n)+A000120(A261562(n))`
-/

namespace A311956.P14865600723953240356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (2 * n) + A000120 (A261562 n).toNat

end

end A311956.P14865600723953240356

/-! ## A311956.P13084218506847386346

`A312100(n)-A011731(A174675(n))`
-/

namespace A311956.P13084218506847386346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n - A011731 (A174675 n).toNat

end

end A311956.P13084218506847386346

/-! ## A311956.P18119709405670508548

`A312100(n)-A340006(A157278(n))`
-/

namespace A311956.P18119709405670508548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n - A340006 (A157278 n).toNat

end

end A311956.P18119709405670508548

/-! ## A311956.P3871939928415269326

`A311917(n)+A011736(A206700(n+1))`
-/

namespace A311956.P3871939928415269326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311917 n + A011736 (A206700 (n + 1)).toNat

end

end A311956.P3871939928415269326

/-!
# A311957: Coordination sequence Gal.6.18.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311957, there is no canonical definition to state claims against.
-/

/-! ## A311957.P3510559232472412522

`A311349(n)+A175933(A076834(n+1))`
-/

namespace A311957.P3510559232472412522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311349 n + A175933 (A076834 (n + 1)).toNat

end

end A311957.P3510559232472412522

/-! ## A311957.P3182772831020600480

`A312123(n)-A285464(A074872(n+1))`
-/

namespace A311957.P3182772831020600480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n - A285464 (A074872 (n + 1)).toNat

end

end A311957.P3182772831020600480

/-! ## A311957.P8272110219821268488

`xor(A037908(A105801(n+1)), A311989(n))`
-/

namespace A311957.P8272110219821268488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037908 (A105801 (n + 1)).toNat) (A311989 n)

end

end A311957.P8272110219821268488

/-!
# A311958: Coordination sequence Gal.5.53.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311958, the canonical program `A311958.P8495961817773989589` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311958 has offset 0).

The definition of A311958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311958.P8495961817773989589

`round(A311289(n)+n/5)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A311958

/-- `round(A311289(n)+n/5)` -/
def P8495961817773989589.Spec : Prop :=
  ∀ n, P8495961817773989589.a n = A311958 n

theorem P8495961817773989589.correct : P8495961817773989589.Spec := by
  intro n
  simp only [A311958]

end A311958

/-! ## A311958.P10034888692266100839

`A314827(n)-A330025(n)`
-/

namespace A311958.P10034888692266100839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314827 n - A330025 n

end

end A311958.P10034888692266100839

namespace A311958

/-- `A314827(n)-A330025(n)` -/
def P10034888692266100839.Spec : Prop :=
  ∀ n, P10034888692266100839.a n = A311958 n

end A311958

/-! ## A311958.P4612531119692222350

`A311289(n)+A002266(n+2)`
-/

namespace A311958.P4612531119692222350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + A002266 (n + 2)

end

end A311958.P4612531119692222350

namespace A311958

/-- `A311289(n)+A002266(n+2)` -/
def P4612531119692222350.Spec : Prop :=
  ∀ n, P4612531119692222350.a n = A311958 n

end A311958

/-! ## A311958.P10955483279192271789

`A151988(n)+A311807(n)-n`
-/

namespace A311958.P10955483279192271789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A311807 n - (n : ℤ))

end

end A311958.P10955483279192271789

namespace A311958

/-- `A151988(n)+A311807(n)-n` -/
def P10955483279192271789.Spec : Prop :=
  ∀ n, P10955483279192271789.a n = A311958 n

end A311958

/-! ## A311958.P13289232988956683129

`A047363(n+1)+A310238(n)-n`
-/

namespace A311958.P13289232988956683129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + (A310238 n - (n : ℤ))

end

end A311958.P13289232988956683129

namespace A311958

/-- `A047363(n+1)+A310238(n)-n` -/
def P13289232988956683129.Spec : Prop :=
  ∀ n, P13289232988956683129.a n = A311958 n

end A311958

/-! ## A311958.P13977846098494021646

`A047263(n+1)+A311289(n)-n`
-/

namespace A311958.P13977846098494021646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A311289 n - (n : ℤ))

end

end A311958.P13977846098494021646

namespace A311958

/-- `A047263(n+1)+A311289(n)-n` -/
def P13977846098494021646.Spec : Prop :=
  ∀ n, P13977846098494021646.a n = A311958 n

end A311958

/-! ## A311958.P11707988235252841141

`A311289(n)+n-A057354(A005408(n))`
-/

namespace A311958.P11707988235252841141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + ((n : ℤ) - A057354 (A005408 n).toNat)

end

end A311958.P11707988235252841141

namespace A311958

/-- `A311289(n)+n-A057354(A005408(n))` -/
def P11707988235252841141.Spec : Prop :=
  ∀ n, P11707988235252841141.a n = A311958 n

end A311958

/-! ## A311958.P9398378060027086152

`abs(A008592(n)-(A313537(n)+n))`
-/

namespace A311958.P9398378060027086152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313537 n + (n : ℤ))|

end

end A311958.P9398378060027086152

namespace A311958

/-- `abs(A008592(n)-(A313537(n)+n))` -/
def P9398378060027086152.Spec : Prop :=
  ∀ n, P9398378060027086152.a n = A311958 n

end A311958

/-! ## A311958.P13169019634145983759

`A005843(A008574(n))+n-A313537(n)`
-/

namespace A311958.P13169019634145983759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A313537 n)

end

end A311958.P13169019634145983759

namespace A311958

/-- `A005843(A008574(n))+n-A313537(n)` -/
def P13169019634145983759.Spec : Prop :=
  ∀ n, P13169019634145983759.a n = A311958 n

end A311958

/-! ## A311958.P17896195960380039903

`A008458(n)+A008486(n)-A313537(n)`
-/

namespace A311958.P17896195960380039903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313537 n)

end

end A311958.P17896195960380039903

namespace A311958

/-- `A008458(n)+A008486(n)-A313537(n)` -/
def P17896195960380039903.Spec : Prop :=
  ∀ n, P17896195960380039903.a n = A311958 n

end A311958

/-! ## A311958.P14327902299039204562

`(A312561(n)+A008574(n))/2`
-/

namespace A311958.P14327902299039204562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312561 n + A008574 n : ℚ) / 2

end

end A311958.P14327902299039204562

namespace A311958

/-- `(A312561(n)+A008574(n))/2` -/
def P14327902299039204562.Spec : Prop :=
  ∀ n, P14327902299039204562.a n = (A311958 n : ℚ)

end A311958

/-! ## A311958.P14299567169659042924

`A313116(n)-A057354(n+1)`
-/

namespace A311958.P14299567169659042924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n - A057354 (n + 1)

end

end A311958.P14299567169659042924

namespace A311958

/-- `A313116(n)-A057354(n+1)` -/
def P14299567169659042924.Spec : Prop :=
  ∀ n, P14299567169659042924.a n = A311958 n

end A311958

/-! ## A311958.P9625654391188162564

`A313752(n)-A057354(2*n+1)`
-/

namespace A311958.P9625654391188162564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n - A057354 (2 * n + 1)

end

end A311958.P9625654391188162564

namespace A311958

/-- `A313752(n)-A057354(2*n+1)` -/
def P9625654391188162564.Spec : Prop :=
  ∀ n, P9625654391188162564.a n = A311958 n

end A311958

/-! ## A311958.P17772559201774041817

`A315518(n)-(A330025(n)+n)`
-/

namespace A311958.P17772559201774041817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315518 n - (A330025 n + (n : ℤ))

end

end A311958.P17772559201774041817

namespace A311958

/-- `A315518(n)-(A330025(n)+n)` -/
def P17772559201774041817.Spec : Prop :=
  ∀ n, P17772559201774041817.a n = A311958 n

end A311958

/-! ## A311958.P15586484792761089185

`A313898(n)-n`
-/

namespace A311958.P15586484792761089185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313898 n - (n : ℤ)

end

end A311958.P15586484792761089185

namespace A311958

/-- `A313898(n)-n` -/
def P15586484792761089185.Spec : Prop :=
  ∀ n, P15586484792761089185.a n = A311958 n

end A311958

/-! ## A311958.P12245827391362933116

`abs(10*n-A315698(n))`
-/

namespace A311958.P12245827391362933116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315698 n|

end

end A311958.P12245827391362933116

namespace A311958

/-- `abs(10*n-A315698(n))` -/
def P12245827391362933116.Spec : Prop :=
  ∀ n, P12245827391362933116.a n = A311958 n

end A311958

/-! ## A311958.P12331312773044800675

`A008458(n)+A008574(n)-A315698(n)`
-/

namespace A311958.P12331312773044800675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315698 n)

end

end A311958.P12331312773044800675

namespace A311958

/-- `A008458(n)+A008574(n)-A315698(n)` -/
def P12331312773044800675.Spec : Prop :=
  ∀ n, P12331312773044800675.a n = A311958 n

end A311958

/-! ## A311958.P15856031984183668218

`A314252(n)-A047299(n+1)`
-/

namespace A311958.P15856031984183668218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - A047299 (n + 1)

end

end A311958.P15856031984183668218

namespace A311958

/-- `A314252(n)-A047299(n+1)` -/
def P15856031984183668218.Spec : Prop :=
  ∀ n, P15856031984183668218.a n = A311958 n

end A311958

/-! ## A311958.P9158842246700209011

`A314252(n)-(Δ[A011858(n)]+n)`
-/

namespace A311958.P9158842246700209011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - (f1 (n + 1) - f1 n + (n : ℤ))

end

end A311958.P9158842246700209011

namespace A311958

/-- `A314252(n)-(Δ[A011858(n)]+n)` -/
def P9158842246700209011.Spec : Prop :=
  ∀ n, P9158842246700209011.a n = A311958 n

end A311958

/-! ## A311958.P7974857537782454767

`A250120(n)+A314164(n)-A008458(n)`
-/

namespace A311958.P7974857537782454767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A314164 n - A008458 n)

end

end A311958.P7974857537782454767

namespace A311958

/-- `A250120(n)+A314164(n)-A008458(n)` -/
def P7974857537782454767.Spec : Prop :=
  ∀ n, P7974857537782454767.a n = A311958 n

end A311958

/-!
# A311959: Coordination sequence Gal.6.171.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311959, there is no canonical definition to state claims against.
-/

/-! ## A311959.P2621580100586328935

`A189462(∏{e}[4^n, #])`
-/

namespace A311959.P2621580100586328935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189462 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A311959.P2621580100586328935

/-! ## A311959.P8340937558307175007

`round(log2(A352816(3*n+1)))`
-/

namespace A311959.P8340937558307175007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A352816 (3 * n + 1) : ℝ))

end

end A311959.P8340937558307175007

/-! ## A311959.P1040097413770552940

`A007149(A017281(n))+1`
-/

namespace A311959.P1040097413770552940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007149 (A017281 n).toNat + 1

end

end A311959.P1040097413770552940

/-! ## A311959.P4326651834241700307

`A029837(A000108(n))+1+3*n`
-/

namespace A311959.P4326651834241700307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A000108 n).toNat + (1 + 3 * n : ℤ)

end

end A311959.P4326651834241700307

/-!
# A311960: Coordination sequence Gal.6.278.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311960, there is no canonical definition to state claims against.
-/

/-! ## A311960.P4658169915127302194

`A327522(A157640(n))+A311743(n)`
-/

namespace A311960.P4658169915127302194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327522 (A157640 n).toNat + A311743 n

end

end A311960.P4658169915127302194

/-! ## A311960.P5112470520691458501

`or(A001221(A152291(n)), A311926(n))`
-/

namespace A311960.P5112470520691458501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A152291 n).toNat) (A311926 n)

end

end A311960.P5112470520691458501

/-! ## A311960.P13694619387258580466

`A311890(n)+A293162(ceil(∑[(3^n-2^n)/2]))`
-/

namespace A311960.P13694619387258580466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311890 n + A293162 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A311960.P13694619387258580466

/-! ## A311960.P17346030503084781215

`A311742(A087051(n))+A004197(n)`
-/

namespace A311960.P17346030503084781215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311742 (A087051 n).toNat + A004197 n

end

end A311960.P17346030503084781215

/-! ## A311960.P13116760886937176046

`A070939(A192207(n))+A022844(n)`
-/

namespace A311960.P13116760886937176046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A192207 n).toNat + A022844 n

end

end A311960.P13116760886937176046

/-!
# A311961: Coordination sequence Gal.5.165.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311961, there is no canonical definition to state claims against.
-/

/-! ## A311961.P16926938924438266963

`A311894(n)+A124761(A088698(n))`
-/

namespace A311961.P16926938924438266963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311894 n + A124761 (A088698 n).toNat

end

end A311961.P16926938924438266963

/-! ## A311961.P17316565376462446941

`A034699(A000984(n))+A022843(n)`
-/

namespace A311961.P17316565376462446941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A000984 n).toNat + A022843 n

end

end A311961.P17316565376462446941

/-! ## A311961.P8039456652839448728

`A341027(A003242(n))+A311949(n)`
-/

namespace A311961.P8039456652839448728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A003242 n).toNat + 220) + A311949 n

end

end A311961.P8039456652839448728

/-! ## A311961.P6951834366177042628

`A301298(n)-A327104(A010049(n))`
-/

namespace A311961.P6951834366177042628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A327104 (A010049 n).toNat

end

end A311961.P6951834366177042628

/-! ## A311961.P18285364551991568864

`A301672(n)+A134023(A085315(n+1))`
-/

namespace A311961.P18285364551991568864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A134023 (A085315 (n + 1)).toNat

end

end A311961.P18285364551991568864

/-!
# A311962: Coordination sequence Gal.5.122.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311962, there is no canonical definition to state claims against.
-/

/-! ## A311962.P5326501575091702304

`A311964(n)-A037910(A049401(n))`
-/

namespace A311962.P5326501575091702304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n - A037910 (A049401 n).toNat

end

end A311962.P5326501575091702304

/-! ## A311962.P16957995688067140963

`A311963(n)-A086080(A062311(n))`
-/

namespace A311962.P16957995688067140963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311963 n - A086080 (A062311 n).toNat

end

end A311962.P16957995688067140963

/-! ## A311962.P16860650125939319253

`A311964(n)-A316869(n²)-A086080(A062311(n))`
-/

namespace A311962.P16860650125939319253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n - A316869 (n ^ 2) - A086080 (A062311 n).toNat

end

end A311962.P16860650125939319253

/-! ## A311962.P660038312253681214

`A061775(A261591(n))+A008585(n)`
-/

namespace A311962.P660038312253681214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A261591 n).toNat + A008585 n

end

end A311962.P660038312253681214

/-! ## A311962.P11231169674708136836

`A250120(n)-A341595(A000227(n))`
-/

namespace A311962.P11231169674708136836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A341595 (A000227 n).toNat

end

end A311962.P11231169674708136836

/-!
# A311963: Coordination sequence Gal.5.119.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311963, there is no canonical definition to state claims against.
-/

/-! ## A311963.P1790519467300034929

`A311962(n)-A178798(n*∑[n%2])`
-/

namespace A311963.P1790519467300034929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311962 n - A178798 (n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A311963.P1790519467300034929

/-! ## A311963.P9003379471599047238

`A311962(n)+A086080(A062311(n))`
-/

namespace A311963.P9003379471599047238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311962 n + A086080 (A062311 n).toNat

end

end A311963.P9003379471599047238

/-! ## A311963.P10204224041504802262

`A311964(A062399(n))-A025465(n)`
-/

namespace A311963.P10204224041504802262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 (A062399 n).toNat - A025465 n

end

end A311963.P10204224041504802262

/-! ## A311963.P17899847685347921724

`A311311(n)+A286685(A001088(n))`
-/

namespace A311963.P17899847685347921724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311311 n + A286685 (A001088 n).toNat

end

end A311963.P17899847685347921724

/-! ## A311963.P1209193264377982495

`A250120(n)-A353841(A071721(n))`
-/

namespace A311963.P1209193264377982495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A353841 (A071721 n).toNat

end

end A311963.P1209193264377982495

/-!
# A311964: Coordination sequence Gal.6.131.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311964, the canonical program `A311964.P9332770168287071000` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311964 has offset 0).

The definition of A311964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311964.P6643897112447464467

`2*A008706(n)-A315697(n)`
-/

namespace A311964.P6643897112447464467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315697 n

end

end A311964.P6643897112447464467

namespace A311964

/-- `2*A008706(n)-A315697(n)` -/
def P6643897112447464467.Spec : Prop :=
  ∀ n, P6643897112447464467.a n = A311964 n

end A311964

/-! ## A311964.P16713552991664660251

`abs(A008592(n)-(A313533(n)+n))`
-/

namespace A311964.P16713552991664660251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313533 n + (n : ℤ))|

end

end A311964.P16713552991664660251

namespace A311964

/-- `abs(A008592(n)-(A313533(n)+n))` -/
def P16713552991664660251.Spec : Prop :=
  ∀ n, P16713552991664660251.a n = A311964 n

theorem P16713552991664660251.correct : P16713552991664660251.Spec := by
  intro n
  simp only [A311964, Nat.add_sub_cancel, A311964.P16713552991664660251.a, A311964.P9332770168287071000.a, A008592, A008592.P4981059802862696142.a, A008593, A008593.P2680892499938115192.a, A313533, A313533.P10490888896929360716.a, A315697, A315697.P15638358996916271384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311964

/-! ## A311964.P9332770168287071000

`abs(A008593(n)-(A315697(n)+n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A311964

/-- `abs(A008593(n)-(A315697(n)+n))` -/
def P9332770168287071000.Spec : Prop :=
  ∀ n, P9332770168287071000.a n = A311964 n

theorem P9332770168287071000.correct : P9332770168287071000.Spec := by
  intro n
  simp only [A311964]

end A311964

/-! ## A311964.P16752601998539804190

`A008458(n)+A008486(n)-A313533(n)`
-/

namespace A311964.P16752601998539804190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313533 n)

end

end A311964.P16752601998539804190

namespace A311964

/-- `A008458(n)+A008486(n)-A313533(n)` -/
def P16752601998539804190.Spec : Prop :=
  ∀ n, P16752601998539804190.a n = A311964 n

end A311964

/-! ## A311964.P8428820066617556219

`A008458(n)+A008574(n)-A315697(n)`
-/

namespace A311964.P8428820066617556219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315697 n)

end

end A311964.P8428820066617556219

namespace A311964

/-- `A008458(n)+A008574(n)-A315697(n)` -/
def P8428820066617556219.Spec : Prop :=
  ∀ n, P8428820066617556219.a n = A311964 n

end A311964

/-! ## A311964.P11693730111058872818

`A313057(n)-A004525(n-A004396(n))`
-/

namespace A311964.P11693730111058872818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A311964.P11693730111058872818

namespace A311964

/-- `A313057(n)-A004525(n-A004396(n))` -/
def P11693730111058872818.Spec : Prop :=
  ∀ n, P11693730111058872818.a n = A311964 n

end A311964

/-! ## A311964.P2033992304775266351

`A313076(n)-A002264(n+1)`
-/

namespace A311964.P2033992304775266351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313076 n - A002264 (n + 1)

end

end A311964.P2033992304775266351

namespace A311964

/-- `A313076(n)-A002264(n+1)` -/
def P2033992304775266351.Spec : Prop :=
  ∀ n, P2033992304775266351.a n = A311964 n

end A311964

/-! ## A311964.P4215294812983073252

`A004396(n)+A313076(n)-n`
-/

namespace A311964.P4215294812983073252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313076 n - (n : ℤ))

end

end A311964.P4215294812983073252

namespace A311964

/-- `A004396(n)+A313076(n)-n` -/
def P4215294812983073252.Spec : Prop :=
  ∀ n, P4215294812983073252.a n = A311964 n

end A311964

/-! ## A311964.P9211734617554493834

`A008576(n)+A313076(n)-A008486(n)`
-/

namespace A311964.P9211734617554493834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313076 n - A008486 n)

end

end A311964.P9211734617554493834

namespace A311964

/-- `A008576(n)+A313076(n)-A008486(n)` -/
def P9211734617554493834.Spec : Prop :=
  ∀ n, P9211734617554493834.a n = A311964 n

end A311964

/-! ## A311964.P9015147767645788154

`A004396(A004525(n))+A312144(n)-A004525(n)`
-/

namespace A311964.P9015147767645788154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A312144 n - A004525 n)

end

end A311964.P9015147767645788154

namespace A311964

/-- `A004396(A004525(n))+A312144(n)-A004525(n)` -/
def P9015147767645788154.Spec : Prop :=
  ∀ n, P9015147767645788154.a n = A311964 n

end A311964

/-! ## A311964.P8855449148912213463

`A315064(n)-A004396(n)`
-/

namespace A311964.P8855449148912213463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315064 n - A004396 n

end

end A311964.P8855449148912213463

namespace A311964

/-- `A315064(n)-A004396(n)` -/
def P8855449148912213463.Spec : Prop :=
  ∀ n, P8855449148912213463.a n = A311964 n

theorem P8855449148912213463.correct : P8855449148912213463.Spec := by
  intro n
  simp only [A311964, Nat.add_sub_cancel, A311964.P8855449148912213463.a, A311964.P9332770168287071000.a, A004396, A004396.P17032557045289780609.a, A008593, A008593.P2680892499938115192.a, A315064, A315064.P9576319934094353441.a, A315697, A315697.P15638358996916271384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311964

/-! ## A311964.P8630128588820185565

`A315064(n)-A002264(2*n+1)`
-/

namespace A311964.P8630128588820185565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315064 n - A002264 (2 * n + 1)

end

end A311964.P8630128588820185565

namespace A311964

/-- `A315064(n)-A002264(2*n+1)` -/
def P8630128588820185565.Spec : Prop :=
  ∀ n, P8630128588820185565.a n = A311964 n

theorem P8630128588820185565.correct : P8630128588820185565.Spec := by
  intro n
  simp only [A311964, Nat.add_sub_cancel, A311964.P8630128588820185565.a, A311964.P9332770168287071000.a, A002264, A002264.P5647656940077635922.a, A008593, A008593.P2680892499938115192.a, A315064, A315064.P9576319934094353441.a, A315697, A315697.P15638358996916271384.a, A004396, A004396.P17032557045289780609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311964

/-! ## A311964.P17811359660400165381

`A314970(n)-A004396(2*A004525(n))`
-/

namespace A311964.P17811359660400165381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314970 n - A004396 (2 * A004525 n).toNat

end

end A311964.P17811359660400165381

namespace A311964

/-- `A314970(n)-A004396(2*A004525(n))` -/
def P17811359660400165381.Spec : Prop :=
  ∀ n, P17811359660400165381.a n = A311964 n

end A311964

/-! ## A311964.P6059683431264656351

`Δ[A011865(n)]+A313789(n)-n`
-/

namespace A311964.P6059683431264656351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313789 n - (n : ℤ))

end

end A311964.P6059683431264656351

namespace A311964

/-- `Δ[A011865(n)]+A313789(n)-n` -/
def P6059683431264656351.Spec : Prop :=
  ∀ n, P6059683431264656351.a n = A311964 n

end A311964

/-! ## A311964.P18345940230376075033

`A313900(n)-n`
-/

namespace A311964.P18345940230376075033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313900 n - (n : ℤ)

end

end A311964.P18345940230376075033

namespace A311964

/-- `A313900(n)-n` -/
def P18345940230376075033.Spec : Prop :=
  ∀ n, P18345940230376075033.a n = A311964 n

end A311964

/-! ## A311964.P3892552414968681424

`A001478(n+1)+A313900(n)+1`
-/

namespace A311964.P3892552414968681424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A313900 n + 1)

end

end A311964.P3892552414968681424

namespace A311964

/-- `A001478(n+1)+A313900(n)+1` -/
def P3892552414968681424.Spec : Prop :=
  ∀ n, P3892552414968681424.a n = A311964 n

end A311964

/-!
# A311965: Coordination sequence Gal.5.244.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311965, there is no canonical definition to state claims against.
-/

/-! ## A311965.P12893687516020680751

`A008579(n)-A327051(A000032(n))`
-/

namespace A311965.P12893687516020680751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A327051 (A000032 n).toNat

end

end A311965.P12893687516020680751

/-! ## A311965.P14478962183000035901

`∏{e}[5^n, A311966(#)]`
-/

namespace A311965.P14478962183000035901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A311966 (Nat.factorization (f1 n) p)

end

end A311965.P14478962183000035901

/-! ## A311965.P12122060233894232526

`A311966(n)^A331575(n)!`
-/

namespace A311965.P12122060233894232526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311966 n ^ Nat.factorial (A331575 n).toNat

end

end A311965.P12122060233894232526

/-! ## A311965.P16060451110014342481

`A311966(n^A160941(n+2))`
-/

namespace A311965.P16060451110014342481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311966 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A160941 (n + 2) : ℤ))).toNat

end

end A311965.P16060451110014342481

/-! ## A311965.P9338920995382796799

`A311966(n)+A000007(A005425(n))`
-/

namespace A311965.P9338920995382796799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311966 n + A000007 (A005425 n).toNat

end

end A311965.P9338920995382796799

/-!
# A311966: Coordination sequence Gal.5.239.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311966, there is no canonical definition to state claims against.
-/

/-! ## A311966.P8805041134915565769

`A008579(n)-A295875(A026522(n+2))`
-/

namespace A311966.P8805041134915565769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A295875 (A026522 (n + 2)).toNat

end

end A311966.P8805041134915565769

/-! ## A311966.P1042972456143709619

`A008579(n)-A054025(A056451(n))`
-/

namespace A311966.P1042972456143709619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A054025 (A056451 n).toNat

end

end A311966.P1042972456143709619

/-! ## A311966.P1828990387198676634

`record[A311965(n)-A324232(n+1)]`
-/

namespace A311966.P1828990387198676634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311965 n - A324232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311966.P1828990387198676634

/-! ## A311966.P12577052831499243507

`eq[Δ[A321927(n+1)], A321754(n+1)]`
-/

namespace A311966.P12577052831499243507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321927 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A311966.P12577052831499243507

/-! ## A311966.P16497579342493384795

`A008579(n)-A188014(A002064(n))`
-/

namespace A311966.P16497579342493384795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A188014 (A002064 n).toNat

end

end A311966.P16497579342493384795

/-!
# A311967: Coordination sequence Gal.6.423.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311967, there is no canonical definition to state claims against.
-/

/-! ## A311967.P204920123559371017

`A314920(n)-A001221(A052990(n))`
-/

namespace A311967.P204920123559371017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314920 n - A001221 (A052990 n).toNat

end

end A311967.P204920123559371017

/-! ## A311967.P11894019761019920904

`or(A005811(A000757(n)), A008574(n))`
-/

namespace A311967.P11894019761019920904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005811 (A000757 n).toNat) (A008574 n)

end

end A311967.P11894019761019920904

/-! ## A311967.P1277593721841382786

`or(A000005(A164908(n)), A058212(n))`
-/

namespace A311967.P1277593721841382786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A164908 n).toNat) (A058212 n)

end

end A311967.P1277593721841382786

/-! ## A311967.P5676338842844692539

`or(A005811(A000757(n)), A311966(n))`
-/

namespace A311967.P5676338842844692539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005811 (A000757 n).toNat) (A311966 n)

end

end A311967.P5676338842844692539

/-! ## A311967.P10297789506738624502

`A302292(n+1)+A302291(A001939(n))`
-/

namespace A311967.P10297789506738624502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + A302291 (A001939 n).toNat

end

end A311967.P10297789506738624502

/-!
# A311968: Coordination sequence Gal.5.175.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311968, there is no canonical definition to state claims against.
-/

/-! ## A311968.P13834163688405015425

`or(A008574(n), A046660(A293857(n)))`
-/

namespace A311968.P13834163688405015425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A046660 (A293857 n).toNat)

end

end A311968.P13834163688405015425

/-! ## A311968.P3299173937845074574

`record[A311970(A000194(n))+A185284(n)]`
-/

namespace A311968.P3299173937845074574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311970 (A000194 n).toNat + A185284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311968.P3299173937845074574

/-!
# A311969: Coordination sequence Gal.6.530.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311969, there is no canonical definition to state claims against.
-/

/-! ## A311969.P10964173944957577080

`A311970(n^gcd(11, n))`
-/

namespace A311969.P10964173944957577080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311970 (n ^ Nat.gcd 11 n)

end

end A311969.P10964173944957577080

/-! ## A311969.P5484034824102009042

`A311970(A062399(n))`
-/

namespace A311969.P5484034824102009042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311970 (A062399 n).toNat

end

end A311969.P5484034824102009042

/-! ## A311969.P9765534210904008250

`A311970(A120126(n))`
-/

namespace A311969.P9765534210904008250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311970 (A120126 n).toNat

end

end A311969.P9765534210904008250

/-! ## A311969.P10586459712413253404

`A311970(A351870(n))`
-/

namespace A311969.P10586459712413253404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311970 (A351870 n).toNat

end

end A311969.P10586459712413253404

/-! ## A311969.P12370026591532032116

`A311970(n)%A017077(A003162(n))`
-/

namespace A311969.P12370026591532032116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311970 n) (A017077 (A003162 n).toNat)

end

end A311969.P12370026591532032116

/-!
# A311970: Coordination sequence Gal.6.520.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311970, there is no canonical definition to state claims against.
-/

/-! ## A311970.P5595692494491500926

`A008579(n)-A059841(A007476(n))`
-/

namespace A311970.P5595692494491500926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A059841 (A007476 n).toNat

end

end A311970.P5595692494491500926

/-! ## A311970.P6838003452524425367

`A008579(n)-A000035(A191797(n))`
-/

namespace A311970.P6838003452524425367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A000035 (A191797 n).toNat

end

end A311970.P6838003452524425367

/-!
# A311971: Coordination sequence Gal.6.431.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311971, there is no canonical definition to state claims against.
-/

/-! ## A311971.P2422412116335889232

`A313075(n)-A046645(A181999(n))`
-/

namespace A311971.P2422412116335889232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313075 n - A046645 (A181999 n).toNat

end

end A311971.P2422412116335889232

/-! ## A311971.P10497382172966993924

`A313060(n)-A007949(A248652(n+1))`
-/

namespace A311971.P10497382172966993924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313060 n - A007949 (A248652 (n + 1)).toNat

end

end A311971.P10497382172966993924

/-! ## A311971.P16422944347618126885

`A250120(n)-A322306(A352321(n+1))`
-/

namespace A311971.P16422944347618126885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A322306 (A352321 (n + 1)).toNat

end

end A311971.P16422944347618126885

/-! ## A311971.P253412459467978534

`A311746(A087051(n))+A004197(n)`
-/

namespace A311971.P253412459467978534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311746 (A087051 n).toNat + A004197 n

end

end A311971.P253412459467978534

/-! ## A311971.P15718339093406198621

`A335947(A335948(n))+A312378(n)`
-/

namespace A311971.P15718339093406198621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335947 (A335948 n).toNat + A312378 n

end

end A311971.P15718339093406198621

/-!
# A311972: Coordination sequence Gal.4.83.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311972, there is no canonical definition to state claims against.
-/

/-! ## A311972.P16200921874298951181

`A312142(n)-A076142(A166945(n+1))`
-/

namespace A311972.P16200921874298951181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312142 n - A076142 (A166945 (n + 1)).toNat

end

end A311972.P16200921874298951181

/-! ## A311972.P15500915495435758394

`A311890(n)+A007949(A000108(n))`
-/

namespace A311972.P15500915495435758394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311890 n + A007949 (A000108 n).toNat

end

end A311972.P15500915495435758394

/-! ## A311972.P17842982857306332993

`A311971(n)+A014025(A111277(n))`
-/

namespace A311972.P17842982857306332993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311971 n + A014025 (A111277 n).toNat

end

end A311972.P17842982857306332993

/-! ## A311972.P4302195801766675321

`A311887(n)+A275851(A000244(n))`
-/

namespace A311972.P4302195801766675321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311887 n + A275851 (A000244 n).toNat

end

end A311972.P4302195801766675321

/-! ## A311972.P11345228803632096650

`A311941(n)+A240871(A112426(n+1))`
-/

namespace A311972.P11345228803632096650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311941 n + A240871 (A112426 (n + 1)).toNat

end

end A311972.P11345228803632096650

/-!
# A311973: Coordination sequence Gal.3.22.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311973, there is no canonical definition to state claims against.
-/

/-! ## A311973.P508969681964613928

`∑[A001222(A216350(3*n+1))]+1`
-/

namespace A311973.P508969681964613928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A216350 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A311973.P508969681964613928

/-! ## A311973.P395242828417076459

`A311885(n)+A037803(A000085(n))`
-/

namespace A311973.P395242828417076459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311885 n + A037803 (A000085 n).toNat

end

end A311973.P395242828417076459

/-! ## A311973.P12950701895108816527

`A311536(A062399(n))+A234577(n)`
-/

namespace A311973.P12950701895108816527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 (A062399 n).toNat + A234577 n

end

end A311973.P12950701895108816527

/-! ## A311973.P9934677859827845998

`A343230(A062399(n))+A311535(n)`
-/

namespace A311973.P9934677859827845998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343230 (A062399 n).toNat + A311535 n

end

end A311973.P9934677859827845998

/-! ## A311973.P9001126017512924637

`A277722(n)+A070939(A000108(n))`
-/

namespace A311973.P9001126017512924637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 n + A070939 (A000108 n).toNat

end

end A311973.P9001126017512924637

/-!
# A311975: Coordination sequence Gal.6.214.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311975, there is no canonical definition to state claims against.
-/

/-! ## A311975.P2386163599647334938

`A190324(2*n+1)-A190311(A190318(n+4))`
-/

namespace A311975.P2386163599647334938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190324 (2 * n + 1) - A190311 (A190318 (n + 4)).toNat

end

end A311975.P2386163599647334938

/-! ## A311975.P17847442693828004818

`A001221(A327845(n+1))+floor(2/3*p?[3*n-1])`
-/

namespace A311975.P17847442693828004818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327845 (n + 1)).toNat + ⌊(2 : ℚ) / 3 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A311975.P17847442693828004818

/-! ## A311975.P906376815276028806

`A311326(n)+A302041(A006573(n))`
-/

namespace A311975.P906376815276028806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311326 n + A302041 (A006573 n).toNat

end

end A311975.P906376815276028806

/-! ## A311975.P12526633560446769385

`A016933(n)-A070940(A053134(n))`
-/

namespace A311975.P12526633560446769385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n - A070940 (A053134 n).toNat

end

end A311975.P12526633560446769385

/-! ## A311975.P6080790487520211336

`A346132(A311839(n))`
-/

namespace A311975.P6080790487520211336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A311839 n).toNat

end

end A311975.P6080790487520211336

/-!
# A311976: Coordination sequence Gal.5.153.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311976, there is no canonical definition to state claims against.
-/

/-! ## A311976.P312246581160252557

`A311973(n)+A175599(A293558(n+1))`
-/

namespace A311976.P312246581160252557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311973 n + A175599 (A293558 (n + 1)).toNat

end

end A311976.P312246581160252557

/-! ## A311976.P9039068071511180922

`A277903(∑[A346500(n+4)]*A084626(n))`
-/

namespace A311976.P9039068071511180922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 ((∑ j ∈ Finset.range (n + 1), f1 j) * A084626 n).toNat

end

end A311976.P9039068071511180922

/-! ## A311976.P3384282484459512201

`A206491(A058108(n+1))+A038161(3*n)`
-/

namespace A311976.P3384282484459512201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206491 (A058108 (n + 1)).toNat + A038161 (3 * n)

end

end A311976.P3384282484459512201

/-! ## A311976.P14089418668975825055

`A349463(A140461(2*n+1))+A002473(n+1)`
-/

namespace A311976.P14089418668975825055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349463 (A140461 (2 * n + 1)).toNat + A002473 (n + 1)

end

end A311976.P14089418668975825055

/-! ## A311976.P4886517225840710424

`A026431(3*n+1)-A151763(A000583(n)+1)`
-/

namespace A311976.P4886517225840710424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026431 (3 * n + 1) - A151763 (A000583 n + 1).toNat

end

end A311976.P4886517225840710424

/-!
# A311978: Coordination sequence Gal.6.290.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311978, there is no canonical definition to state claims against.
-/

/-! ## A311978.P8420904930119511783

`A311979(n)-A102683(A006822(n))`
-/

namespace A311978.P8420904930119511783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311979 n - A102683 (A006822 n).toNat

end

end A311978.P8420904930119511783

/-! ## A311978.P12403734211326857458

`A311979(n)-A178798(A218020(n))`
-/

namespace A311978.P12403734211326857458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311979 n - A178798 (A218020 n).toNat

end

end A311978.P12403734211326857458

/-! ## A311978.P6592022361279138555

`A311979(n)-A185284(A007310(n+1))`
-/

namespace A311978.P6592022361279138555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311979 n - A185284 (A007310 (n + 1)).toNat

end

end A311978.P6592022361279138555

/-! ## A311978.P13583295841015745410

`A311979(n)-A185284(A008578(n+1))`
-/

namespace A311978.P13583295841015745410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311979 n - A185284 (A008578 (n + 1)).toNat

end

end A311978.P13583295841015745410

/-! ## A311978.P16943406927043984406

`A311979(n)+A244895(A185284(3*n))`
-/

namespace A311978.P16943406927043984406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311979 n + A244895 (A185284 (3 * n)).toNat

end

end A311978.P16943406927043984406

/-!
# A311979: Coordination sequence Gal.6.276.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311979, there is no canonical definition to state claims against.
-/

/-! ## A311979.P9236561791548281401

`A311978(n)+A102683(A006822(n))`
-/

namespace A311979.P9236561791548281401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311978 n + A102683 (A006822 n).toNat

end

end A311979.P9236561791548281401

/-! ## A311979.P11209930587998059099

`A311978(n)+A178798(A218020(n))`
-/

namespace A311979.P11209930587998059099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311978 n + A178798 (A218020 n).toNat

end

end A311979.P11209930587998059099

/-! ## A311979.P7974905703091881479

`or(A185284(A016777(n)), A311978(n))`
-/

namespace A311979.P7974905703091881479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A016777 n).toNat) (A311978 n)

end

end A311979.P7974905703091881479

/-! ## A311979.P6054770157065158281

`A311978(n)+A185284(A007310(n+1))`
-/

namespace A311979.P6054770157065158281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311978 n + A185284 (A007310 (n + 1)).toNat

end

end A311979.P6054770157065158281

/-! ## A311979.P1913304201235550782

`A311978(n)+A185284(A008578(n+1))`
-/

namespace A311979.P1913304201235550782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311978 n + A185284 (A008578 (n + 1)).toNat

end

end A311979.P1913304201235550782

/-!
# A311980: Coordination sequence Gal.5.236.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311980, there is no canonical definition to state claims against.
-/

/-! ## A311980.P6142124100653762577

`A047470(n+1)+A000120(A185411(3*n+4))`
-/

namespace A311980.P6142124100653762577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (n + 1) + A000120 (A185411 (3 * n + 4)).toNat

end

end A311980.P6142124100653762577

/-!
# A311981: Coordination sequence Gal.4.118.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311981, there is no canonical definition to state claims against.
-/

/-! ## A311981.P6144557705171148956

`A311807(n)+A124060(A200739(n))`
-/

namespace A311981.P6144557705171148956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A124060 (A200739 n).toNat

end

end A311981.P6144557705171148956

/-! ## A311981.P14840162700959745175

`A250120(n)-A308898(A030266(n))`
-/

namespace A311981.P14840162700959745175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A308898 (A030266 n).toNat

end

end A311981.P14840162700959745175

/-! ## A311981.P10693499783500177040

`or(A001221(A217989(n)), A311843(n))`
-/

namespace A311981.P10693499783500177040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A217989 n).toNat) (A311843 n)

end

end A311981.P10693499783500177040

/-! ## A311981.P10944370132569469396

`A008574(n)+A000120(A000944(n+1))`
-/

namespace A311981.P10944370132569469396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A000120 (A000944 (n + 1)).toNat

end

end A311981.P10944370132569469396

/-! ## A311981.P18114025986360823601

`A250120(n)-A001221(A053882(n+1))`
-/

namespace A311981.P18114025986360823601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A053882 (n + 1)).toNat

end

end A311981.P18114025986360823601

/-!
# A311982: Coordination sequence Gal.6.422.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311982, there is no canonical definition to state claims against.
-/

/-! ## A311982.P13532817430127070698

`A311952(n)+A131531(A001256(n))`
-/

namespace A311982.P13532817430127070698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311952 n + A131531 (A001256 n).toNat

end

end A311982.P13532817430127070698

/-! ## A311982.P7131756747998067733

`A311932(n)+A238470(A118264(n))`
-/

namespace A311982.P7131756747998067733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n + A238470 (A118264 n).toNat

end

end A311982.P7131756747998067733

/-! ## A311982.P3555496256832518461

`A311934(n)+A238470(A118264(n))`
-/

namespace A311982.P3555496256832518461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311934 n + A238470 (A118264 n).toNat

end

end A311982.P3555496256832518461

/-! ## A311982.P32769251704011640

`A312140(n)-A178691(A286718(n))`
-/

namespace A311982.P32769251704011640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n - A178691 (A286718 n).toNat

end

end A311982.P32769251704011640

/-! ## A311982.P12262188411491292114

`A311507(n)+A189668(A000041(3*n+4))`
-/

namespace A311982.P12262188411491292114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311507 n + A189668 (A000041 (3 * n + 4)).toNat

end

end A311982.P12262188411491292114

/-!
# A311983: Coordination sequence Gal.4.119.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311983, there is no canonical definition to state claims against.
-/

/-! ## A311983.P9443900408260302916

`∑[∑{e}[A209974(3*n)+A119479(2*n+3), #]+1]`
-/

namespace A311983.P9443900408260302916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209974 (3 * n) + A119479 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311983.P9443900408260302916

/-! ## A311983.P4590916586312153258

`A311724(n)+A037800(A097861(n))`
-/

namespace A311983.P4590916586312153258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311724 n + A037800 (A097861 n).toNat

end

end A311983.P4590916586312153258

/-! ## A311983.P18147323772880014565

`A311984(n)-A067168(A036423(n))`
-/

namespace A311983.P18147323772880014565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311984 n - A067168 ((A036423 n).toNat + 10)

end

end A311983.P18147323772880014565

/-! ## A311983.P7366957947931226508

`A311984(n)-A067168(A118658(n))`
-/

namespace A311983.P7366957947931226508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311984 n - A067168 ((A118658 n).toNat + 10)

end

end A311983.P7366957947931226508

/-! ## A311983.P5520193856097851267

`A311984(A087051(n))`
-/

namespace A311983.P5520193856097851267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311984 (A087051 n).toNat

end

end A311983.P5520193856097851267

/-!
# A311984: Coordination sequence Gal.5.158.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311984, there is no canonical definition to state claims against.
-/

/-! ## A311984.P14130407669976180877

`or(A004555(A223379(n+1)), A311523(n))`
-/

namespace A311984.P14130407669976180877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004555 (A223379 (n + 1)).toNat) (A311523 n)

end

end A311984.P14130407669976180877

/-! ## A311984.P2628713214547792919

`xor(A007949(A053697(n+1)), A312118(n))`
-/

namespace A311984.P2628713214547792919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007949 (A053697 (n + 1)).toNat) (A312118 n)

end

end A311984.P2628713214547792919

/-! ## A311984.P2283410426986878710

`A250120(n)-A001221(A148209(n+1))`
-/

namespace A311984.P2283410426986878710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A148209 (n + 1)).toNat

end

end A311984.P2283410426986878710

/-! ## A311984.P501534964857771824

`A250120(n)-A321856(A246699(n+1))`
-/

namespace A311984.P501534964857771824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A321856 (A246699 (n + 1)).toNat

end

end A311984.P501534964857771824

/-!
# A311985: Coordination sequence Gal.6.291.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311985, there is no canonical definition to state claims against.
-/

/-! ## A311985.P13664219304694632940

`A311986(n)+∑[A016389(A022166(n))]`
-/

namespace A311985.P13664219304694632940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A022166 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311986 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311985.P13664219304694632940

/-! ## A311985.P11745035140891668847

`A311986(A324662(∑[n]))`
-/

namespace A311985.P11745035140891668847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311986 (A324662 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311985.P11745035140891668847

/-! ## A311985.P10548258656992055597

`A311986(A334291(∑[n]))`
-/

namespace A311985.P10548258656992055597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311986 (A334291 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311985.P10548258656992055597

/-! ## A311985.P6846135734128497286

`A311986(n)%(A271269(3*n+1)+1)`
-/

namespace A311985.P6846135734128497286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311986 n) (A271269 (3 * n + 1) + 1)

end

end A311985.P6846135734128497286

/-! ## A311985.P10830030394044569516

`A327932(A076907(n))+A311986(n)`
-/

namespace A311985.P10830030394044569516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327932 (A076907 n).toNat + A311986 n

end

end A311985.P10830030394044569516

/-!
# A311986: Coordination sequence Gal.6.277.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311986, there is no canonical definition to state claims against.
-/

/-! ## A311986.P12063297101025365392

`A311985(n)+A185284(A033627(n+1))`
-/

namespace A311986.P12063297101025365392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311985 n + A185284 (A033627 (n + 1)).toNat

end

end A311986.P12063297101025365392

/-!
# A311987: Coordination sequence Gal.6.305.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311987, there is no canonical definition to state claims against.
-/

/-! ## A311987.P4049279595792248997

`or(A001221(A014518(n)), A311420(n))`
-/

namespace A311987.P4049279595792248997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A014518 n).toNat) (A311420 n)

end

end A311987.P4049279595792248997

/-! ## A311987.P6506649943371555837

`or(A311246(n), A374206(A082107(2*n+1)))`
-/

namespace A311987.P6506649943371555837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311246 n) (A374206 (A082107 (2 * n + 1)).toNat)

end

end A311987.P6506649943371555837

/-! ## A311987.P11717429164862691035

`∑[A179329(A033677(2*(n+2))²)]`
-/

namespace A311987.P11717429164862691035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179329 (A033677 (2 * (n + 2)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311987.P11717429164862691035

/-! ## A311987.P14740659774037737855

`or(A001222(A255487(n)), A008574(n))`
-/

namespace A311987.P14740659774037737855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A255487 n).toNat) (A008574 n)

end

end A311987.P14740659774037737855

/-! ## A311987.P11196248338047329843

`or(A001222(A255487(n)), A311149(n))`
-/

namespace A311987.P11196248338047329843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A255487 n).toNat) (A311149 n)

end

end A311987.P11196248338047329843

/-!
# A311988: Coordination sequence Gal.4.71.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311988, there is no canonical definition to state claims against.
-/

/-! ## A311988.P4484783249316410505

`or(A080791(A120588(n)), A311500(n))`
-/

namespace A311988.P4484783249316410505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080791 (A120588 n).toNat) (A311500 n)

end

end A311988.P4484783249316410505

/-! ## A311988.P10045837262761332792

`or(A080791(A120588(n)), A311941(n))`
-/

namespace A311988.P10045837262761332792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080791 (A120588 n).toNat) (A311941 n)

end

end A311988.P10045837262761332792

/-! ## A311988.P16692076219925617778

`A311941(n)+A102683(A293005(n))`
-/

namespace A311988.P16692076219925617778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311941 n + A102683 (A293005 n).toNat

end

end A311988.P16692076219925617778

/-! ## A311988.P4974162939995378728

`A312122(n)-A160383(A000108(n))`
-/

namespace A311988.P4974162939995378728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312122 n - A160383 (A000108 n).toNat

end

end A311988.P4974162939995378728

/-! ## A311988.P14660501269455187972

`or(A008574(n), A088205(A023105(n)))`
-/

namespace A311988.P14660501269455187972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A088205 (A023105 n).toNat)

end

end A311988.P14660501269455187972

/-!
# A311989: Coordination sequence Gal.6.300.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311989, there is no canonical definition to state claims against.
-/

/-! ## A311989.P861558679896222805

`xor(A037908(A105801(n+1)), A311957(n))`
-/

namespace A311989.P861558679896222805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037908 (A105801 (n + 1)).toNat) (A311957 n)

end

end A311989.P861558679896222805

/-! ## A311989.P5349661952880038872

`xor(A286685(A035048(n+1)), A312903(n))`
-/

namespace A311989.P5349661952880038872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A286685 (A035048 (n + 1)).toNat) (A312903 n)

end

end A311989.P5349661952880038872

/-! ## A311989.P769874947001938326

`A311512(n)+A189628(A072346(n))`
-/

namespace A311989.P769874947001938326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n + A189628 (A072346 n).toNat

end

end A311989.P769874947001938326

/-! ## A311989.P14296538385787369717

`A250120(n)-A275806(A003462(n))`
-/

namespace A311989.P14296538385787369717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A275806 (A003462 n).toNat

end

end A311989.P14296538385787369717

/-! ## A311989.P6314817958227751553

`A301291(n)-A066829(A047087(n+1))`
-/

namespace A311989.P6314817958227751553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A066829 (A047087 (n + 1)).toNat

end

end A311989.P6314817958227751553

/-!
# A311990: Coordination sequence Gal.6.389.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311990, there is no canonical definition to state claims against.
-/

/-! ## A311990.P4316337052611423008

`A325396(3*n+2)-A308551(A007283(n))`
-/

namespace A311990.P4316337052611423008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (3 * n + 2) - A308551 (A007283 n).toNat

end

end A311990.P4316337052611423008

/-! ## A311990.P9666903578847644073

`A325396(3*n+2)-A000005(3^n)`
-/

namespace A311990.P9666903578847644073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (3 * n + 2) - A000005 (3 ^ n)

end

end A311990.P9666903578847644073

/-! ## A311990.P5717287028484235102

`∑[A347643(A324704(∑[n+1]))]`
-/

namespace A311990.P5717287028484235102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 (A324704 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311990.P5717287028484235102

/-! ## A311990.P9954964982503657042

`∑[A001222(∑[A045694(n+2)])]`
-/

namespace A311990.P9954964982503657042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045694 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311990.P9954964982503657042

/-! ## A311990.P18180473677165875011

`A311347(n)+A085369(A062724(2*(n+1)))`
-/

namespace A311990.P18180473677165875011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A085369 (A062724 (2 * (n + 1))).toNat

end

end A311990.P18180473677165875011

/-!
# A311991: Coordination sequence Gal.4.67.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311991, there is no canonical definition to state claims against.
-/

/-! ## A311991.P13746962162511456373

`A311742(n)+A021913(A000512(n+1))`
-/

namespace A311991.P13746962162511456373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311742 n + A021913 (A000512 (n + 1)).toNat

end

end A311991.P13746962162511456373

/-! ## A311991.P9403202116053482615

`A250120(n)-A087436(A127864(n+1))`
-/

namespace A311991.P9403202116053482615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A087436 (A127864 (n + 1)).toNat

end

end A311991.P9403202116053482615

/-! ## A311991.P14765963446404395495

`xor(A053669(A115073(n+1)), A189460(n+1))`
-/

namespace A311991.P14765963446404395495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053669 (A115073 (n + 1)).toNat) (A189460 (n + 1))

end

end A311991.P14765963446404395495

/-! ## A311991.P9231474431873113871

`A311110(n)+A001221(A003094(n))`
-/

namespace A311991.P9231474431873113871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311110 n + A001221 (A003094 n).toNat

end

end A311991.P9231474431873113871

/-! ## A311991.P11205363634970324664

`A311742(n)+A309766(A053416(n))`
-/

namespace A311991.P11205363634970324664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311742 n + A309766 (A053416 n).toNat

end

end A311991.P11205363634970324664

/-!
# A311992: Coordination sequence Gal.6.405.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311992, there is no canonical definition to state claims against.
-/

/-! ## A311992.P13981041660904607536

`A311986(n)+A088705(A306558(n))`
-/

namespace A311992.P13981041660904607536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311986 n + A088705 (A306558 n).toNat

end

end A311992.P13981041660904607536

/-! ## A311992.P2483861178223612302

`A311543(n)+A086966(A364594(n))`
-/

namespace A311992.P2483861178223612302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311543 n + A086966 (A364594 n).toNat

end

end A311992.P2483861178223612302

/-! ## A311992.P15628608076675810647

`A311166(n)+A001222(A196420(n+1))`
-/

namespace A311992.P15628608076675810647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311166 n + A001222 (A196420 (n + 1)).toNat

end

end A311992.P15628608076675810647

/-! ## A311992.P17997123926676520501

`A250120(n)-A241918(A233586(n+1))`
-/

namespace A311992.P17997123926676520501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A241918 (A233586 (n + 1)).toNat

end

end A311992.P17997123926676520501

/-! ## A311992.P9592940993239105975

`∑[A060130(A093343(n+1)+1)]`
-/

namespace A311992.P9592940993239105975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A093343 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311992.P9592940993239105975

/-!
# A311993: Coordination sequence Gal.5.98.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311993, the canonical program `A311993.P8391129564967139039` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311993 has offset 0).

The definition of A311993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2532 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311993.P16788195396834681739

`ogf((1+3x+4x^2+5x^3+4x^4+6x^5+4x^6+5x^7+4x^8+3x^9+x^10)/(1-x-x^9+x^10))`
-/

namespace A311993.P16788195396834681739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4, 5, 4, 6, 4, 5, 4, 3, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A311993.P16788195396834681739

namespace A311993

/-- `ogf((1+3x+4x^2+5x^3+4x^4+6x^5+4x^6+5x^7+4x^8+3x^9+x^10)/(1-x-x^9+x^10))` -/
def P16788195396834681739.Spec : Prop :=
  ∀ n, P16788195396834681739.a n = A311993 n

end A311993

/-! ## A311993.P5799233584877385382

`abs(A008592(n)-A315696(n))`
-/

namespace A311993.P5799233584877385382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315696 n|

end

end A311993.P5799233584877385382

namespace A311993

/-- `abs(A008592(n)-A315696(n))` -/
def P5799233584877385382.Spec : Prop :=
  ∀ n, P5799233584877385382.a n = A311993 n

end A311993

/-! ## A311993.P8391129564967139039

`A311344(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A311993

/-- `A311344(n)+Δ[A011862(n)]` -/
def P8391129564967139039.Spec : Prop :=
  ∀ n, P8391129564967139039.a n = A311993 n

theorem P8391129564967139039.correct : P8391129564967139039.Spec := by
  intro n
  simp only [A311993]

end A311993

/-! ## A311993.P17559703766496260345

`A008458(n)+A008574(n)-A315696(n)`
-/

namespace A311993.P17559703766496260345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315696 n)

end

end A311993.P17559703766496260345

namespace A311993

/-- `A008458(n)+A008574(n)-A315696(n)` -/
def P17559703766496260345.Spec : Prop :=
  ∀ n, P17559703766496260345.a n = A311993 n

end A311993

/-! ## A311993.P1961803491646262018

`lcm(A008592(n)-A315696(n), A209615(n+1))`
-/

namespace A311993.P1961803491646262018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008592 n - A315696 n) (A209615 (n + 1))

end

end A311993.P1961803491646262018

namespace A311993

/-- `lcm(A008592(n)-A315696(n), A209615(n+1))` -/
def P1961803491646262018.Spec : Prop :=
  ∀ n, (P1961803491646262018.a n : ℤ) = A311993 n

end A311993

/-! ## A311993.P8737811698190269562

`A004396(n)+A311344(n)-A004396(A004396(n))`
-/

namespace A311993.P8737811698190269562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311344 n - A004396 (A004396 n).toNat)

end

end A311993.P8737811698190269562

namespace A311993

/-- `A004396(n)+A311344(n)-A004396(A004396(n))` -/
def P8737811698190269562.Spec : Prop :=
  ∀ n, P8737811698190269562.a n = A311993 n

end A311993

/-! ## A311993.P7269472771579616783

`A312555(n)-Δ[A011862(n)]`
-/

namespace A311993.P7269472771579616783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312555 n - (f1 (n + 1) - f1 n)

end

end A311993.P7269472771579616783

namespace A311993

/-- `A312555(n)-Δ[A011862(n)]` -/
def P7269472771579616783.Spec : Prop :=
  ∀ n, P7269472771579616783.a n = A311993 n

theorem P7269472771579616783.correct : P7269472771579616783.Spec := by
  intro n
  simp only [A311993, Nat.add_sub_cancel, A311993.P7269472771579616783.f1, A311993.P7269472771579616783.a, A311993.P8391129564967139039.f1, A311993.P8391129564967139039.a, A011862, A011862.P9485299441699197278.a, A311344, A311344.P9479283837272976184.a, A312555, A312555.P10974015177557321906.f1, A312555.P10974015177557321906.a, A004396, A004396.P17032557045289780609.a, A312908, A312908.P18385197356515419689.a, A042965, A042965.P10256174339092268817.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311993

/-! ## A311993.P2675429245467962684

`A004396(A004396(n))+A312555(n)-A004396(n)`
-/

namespace A311993.P2675429245467962684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A312555 n - A004396 n)

end

end A311993.P2675429245467962684

namespace A311993

/-- `A004396(A004396(n))+A312555(n)-A004396(n)` -/
def P2675429245467962684.Spec : Prop :=
  ∀ n, P2675429245467962684.a n = A311993 n

end A311993

/-! ## A311993.P12384557977133057752

`A315068(n)-A004396(n)`
-/

namespace A311993.P12384557977133057752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315068 n - A004396 n

end

end A311993.P12384557977133057752

namespace A311993

/-- `A315068(n)-A004396(n)` -/
def P12384557977133057752.Spec : Prop :=
  ∀ n, P12384557977133057752.a n = A311993 n

theorem P12384557977133057752.correct : P12384557977133057752.Spec := by
  intro n
  simp only [A311993, Nat.add_sub_cancel, A311993.P12384557977133057752.a, A311993.P8391129564967139039.f1, A311993.P8391129564967139039.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A311344, A311344.P9479283837272976184.a, A315068, A315068.P4253477378695981415.a, A312908, A312908.P18385197356515419689.a, A042965, A042965.P10256174339092268817.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311993

/-! ## A311993.P6240806765531902982

`A315068(n)-A002264(Δ[n²])`
-/

namespace A311993.P6240806765531902982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315068 n - A002264 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A311993.P6240806765531902982

namespace A311993

/-- `A315068(n)-A002264(Δ[n²])` -/
def P6240806765531902982.Spec : Prop :=
  ∀ n, P6240806765531902982.a n = A311993 n

end A311993

/-! ## A311993.P16155580806112615954

`A315343(n)-(A004396(n)+A004396(A004396(n)))`
-/

namespace A311993.P16155580806112615954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315343 n - (A004396 n + A004396 (A004396 n).toNat)

end

end A311993.P16155580806112615954

namespace A311993

/-- `A315343(n)-(A004396(n)+A004396(A004396(n)))` -/
def P16155580806112615954.Spec : Prop :=
  ∀ n, P16155580806112615954.a n = A311993 n

end A311993

/-! ## A311993.P8265037567744683120

`A313927(n)-A004396(A004396(n)+n)`
-/

namespace A311993.P8265037567744683120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313927 n - A004396 (A004396 n + (n : ℤ)).toNat

end

end A311993.P8265037567744683120

namespace A311993

/-- `A313927(n)-A004396(A004396(n)+n)` -/
def P8265037567744683120.Spec : Prop :=
  ∀ n, P8265037567744683120.a n = A311993 n

end A311993

/-! ## A311993.P5812903070379291612

`A004396(2*n)+A004396(A312160(n))`
-/

namespace A311993.P5812903070379291612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A312160 n).toNat

end

end A311993.P5812903070379291612

namespace A311993

/-- `A004396(2*n)+A004396(A312160(n))` -/
def P5812903070379291612.Spec : Prop :=
  ∀ n, P5812903070379291612.a n = A311993 n

end A311993

/-! ## A311993.P13977651033867508258

`A004396(2*n)+A004396(A312555(n))`
-/

namespace A311993.P13977651033867508258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A312555 n).toNat

end

end A311993.P13977651033867508258

namespace A311993

/-- `A004396(2*n)+A004396(A312555(n))` -/
def P13977651033867508258.Spec : Prop :=
  ∀ n, P13977651033867508258.a n = A311993 n

end A311993

/-! ## A311993.P5087259359091043161

`A005843(n)-(A004396(n)-A004396(A312160(n)))`
-/

namespace A311993.P5087259359091043161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (A004396 n - A004396 (A312160 n).toNat)

end

end A311993.P5087259359091043161

namespace A311993

/-- `A005843(n)-(A004396(n)-A004396(A312160(n)))` -/
def P5087259359091043161.Spec : Prop :=
  ∀ n, P5087259359091043161.a n = A311993 n

end A311993

/-! ## A311993.P13142707506554417148

`A004525(A312207(n))+2*n`
-/

namespace A311993.P13142707506554417148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312207 n).toNat + (2 * n : ℤ)

end

end A311993.P13142707506554417148

namespace A311993

/-- `A004525(A312207(n))+2*n` -/
def P13142707506554417148.Spec : Prop :=
  ∀ n, P13142707506554417148.a n = A311993 n

end A311993

/-! ## A311993.P18268175719419394307

`A005843(n)+A004525(A312207(n))`
-/

namespace A311993.P18268175719419394307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A312207 n).toNat

end

end A311993.P18268175719419394307

namespace A311993

/-- `A005843(n)+A004525(A312207(n))` -/
def P18268175719419394307.Spec : Prop :=
  ∀ n, P18268175719419394307.a n = A311993 n

end A311993

/-! ## A311993.P7604396651890217103

`A004396(A312555(n)+2*n)`
-/

namespace A311993.P7604396651890217103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312555 n + (2 * n : ℤ)).toNat

end

end A311993.P7604396651890217103

namespace A311993

/-- `A004396(A312555(n)+2*n)` -/
def P7604396651890217103.Spec : Prop :=
  ∀ n, P7604396651890217103.a n = A311993 n

end A311993

/-! ## A311993.P2873375221202045497

`A004396(A312555(n)+n+n)`
-/

namespace A311993.P2873375221202045497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312555 n + (n : ℤ) + (n : ℤ)).toNat

end

end A311993.P2873375221202045497

namespace A311993

/-- `A004396(A312555(n)+n+n)` -/
def P2873375221202045497.Spec : Prop :=
  ∀ n, P2873375221202045497.a n = A311993 n

end A311993

/-! ## A311993.P5545937972529770964

`A004396(A312160(n)+2*n)`
-/

namespace A311993.P5545937972529770964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312160 n + (2 * n : ℤ)).toNat

end

end A311993.P5545937972529770964

namespace A311993

/-- `A004396(A312160(n)+2*n)` -/
def P5545937972529770964.Spec : Prop :=
  ∀ n, P5545937972529770964.a n = A311993 n

end A311993

/-!
# A311994: Coordination sequence Gal.6.231.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311994, the canonical program `A311994.P15273532199306670111` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311994 has offset 0).

The definition of A311994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311994.P15273532199306670111

`2*A311932(n)-A311804(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A311994

/-- `2*A311932(n)-A311804(n)` -/
def P15273532199306670111.Spec : Prop :=
  ∀ n, P15273532199306670111.a n = A311994 n

theorem P15273532199306670111.correct : P15273532199306670111.Spec := by
  intro n
  simp only [A311994]

end A311994

/-! ## A311994.P1657236516853943240

`A311523(n)+Δ[A011864(n)]`
-/

namespace A311994.P1657236516853943240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311523 n + (f1 (n + 1) - f1 n)

end

end A311994.P1657236516853943240

namespace A311994

/-- `A311523(n)+Δ[A011864(n)]` -/
def P1657236516853943240.Spec : Prop :=
  ∀ n, P1657236516853943240.a n = A311994 n

end A311994

/-! ## A311994.P15125269195774818827

`abs(A008592(n)-A315695(n))`
-/

namespace A311994.P15125269195774818827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315695 n|

end

end A311994.P15125269195774818827

namespace A311994

/-- `abs(A008592(n)-A315695(n))` -/
def P15125269195774818827.Spec : Prop :=
  ∀ n, P15125269195774818827.a n = A311994 n

end A311994

/-! ## A311994.P7499315720829489736

`2*A008706(n)-A315695(n)`
-/

namespace A311994.P7499315720829489736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315695 n

end

end A311994.P7499315720829489736

namespace A311994

/-- `2*A008706(n)-A315695(n)` -/
def P7499315720829489736.Spec : Prop :=
  ∀ n, P7499315720829489736.a n = A311994 n

end A311994

/-! ## A311994.P13822172348482783924

`A008458(n)+A008574(n)-A315695(n)`
-/

namespace A311994.P13822172348482783924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315695 n)

end

end A311994.P13822172348482783924

namespace A311994

/-- `A008458(n)+A008574(n)-A315695(n)` -/
def P13822172348482783924.Spec : Prop :=
  ∀ n, P13822172348482783924.a n = A311994 n

end A311994

/-! ## A311994.P1406303362301172634

`lcm(A008592(n)-A315695(n), A000034(2*n))`
-/

namespace A311994.P1406303362301172634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008592 n - A315695 n) (A000034 (2 * n))

end

end A311994.P1406303362301172634

namespace A311994

/-- `lcm(A008592(n)-A315695(n), A000034(2*n))` -/
def P1406303362301172634.Spec : Prop :=
  ∀ n, (P1406303362301172634.a n : ℤ) = A311994 n

end A311994

/-! ## A311994.P8850482205517076055

`A315695(n)-A005843(A315695(n)-A008706(n))`
-/

namespace A311994.P8850482205517076055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315695 n - A005843 (A315695 n - A008706 n).toNat

end

end A311994.P8850482205517076055

namespace A311994

/-- `A315695(n)-A005843(A315695(n)-A008706(n))` -/
def P8850482205517076055.Spec : Prop :=
  ∀ n, P8850482205517076055.a n = A311994 n

end A311994

/-! ## A311994.P13038625626538044379

`A005843(A008706(n))-A315695(n)`
-/

namespace A311994.P13038625626538044379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315695 n

end

end A311994.P13038625626538044379

namespace A311994

/-- `A005843(A008706(n))-A315695(n)` -/
def P13038625626538044379.Spec : Prop :=
  ∀ n, P13038625626538044379.a n = A311994 n

end A311994

/-! ## A311994.P4200624162839447344

`A004525(A312185(n)+A311331(n))`
-/

namespace A311994.P4200624162839447344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312185 n + A311331 n).toNat

end

end A311994.P4200624162839447344

namespace A311994

/-- `A004525(A312185(n)+A311331(n))` -/
def P4200624162839447344.Spec : Prop :=
  ∀ n, P4200624162839447344.a n = A311994 n

end A311994

/-! ## A311994.P16791535079714926012

`2*n+A004525(A312209(n))`
-/

namespace A311994.P16791535079714926012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004525 (A312209 n).toNat

end

end A311994.P16791535079714926012

namespace A311994

/-- `2*n+A004525(A312209(n))` -/
def P16791535079714926012.Spec : Prop :=
  ∀ n, P16791535079714926012.a n = A311994 n

end A311994

/-! ## A311994.P12510990061486817228

`A004525(A312209(n)+A008574(n))`
-/

namespace A311994.P12510990061486817228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312209 n + A008574 n).toNat

end

end A311994.P12510990061486817228

namespace A311994

/-- `A004525(A312209(n)+A008574(n))` -/
def P12510990061486817228.Spec : Prop :=
  ∀ n, P12510990061486817228.a n = A311994 n

end A311994

/-! ## A311994.P4692782717417179756

`A004525(A312209(n)+A008586(n))`
-/

namespace A311994.P4692782717417179756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312209 n + A008586 n).toNat

end

end A311994.P4692782717417179756

namespace A311994

/-- `A004525(A312209(n)+A008586(n))` -/
def P4692782717417179756.Spec : Prop :=
  ∀ n, P4692782717417179756.a n = A311994 n

end A311994

/-!
# A311995: Coordination sequence Gal.5.149.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311995, there is no canonical definition to state claims against.
-/

/-! ## A311995.P18387721692051709211

`A311745(n)+A057427(A271273(n))`
-/

namespace A311995.P18387721692051709211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311745 n + A057427 (A271273 n).toNat

end

end A311995.P18387721692051709211

/-! ## A311995.P10166618154805621900

`A312070(n)-A350950(A022629(n))`
-/

namespace A311995.P10166618154805621900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312070 n - A350950 (A022629 n).toNat

end

end A311995.P10166618154805621900

/-! ## A311995.P17595659625546628729

`A312108(n)-A178798(A312108(2*n))`
-/

namespace A311995.P17595659625546628729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312108 n - A178798 (A312108 (2 * n)).toNat

end

end A311995.P17595659625546628729

/-! ## A311995.P15550407867720477834

`or(A030190(A000580(n+7)), A311966(n))`
-/

namespace A311995.P15550407867720477834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030190 (A000580 (n + 7)).toNat) (A311966 n)

end

end A311995.P15550407867720477834

/-! ## A311995.P14610975796033821215

`or(A196096(A119034(n+2)), A360613(3*n+2))`
-/

namespace A311995.P14610975796033821215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196096 (A119034 (n + 2)).toNat) (A360613 (3 * n + 2))

end

end A311995.P14610975796033821215

/-!
# A311996: Coordination sequence Gal.4.95.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311996, there is no canonical definition to state claims against.
-/

/-! ## A311996.P1408955015145254967

`A323014(A006405(n+3))+A078779(3*n+1)`
-/

namespace A311996.P1408955015145254967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A006405 (n + 3)).toNat + A078779 (3 * n + 1)

end

end A311996.P1408955015145254967

/-! ## A311996.P12790378792683381608

`A311345(n)+A083890(A046981(n))`
-/

namespace A311996.P12790378792683381608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311345 n + A083890 (A046981 n).toNat

end

end A311996.P12790378792683381608

/-! ## A311996.P6578944232325894825

`A311997(n)-A103921(A029575(n))`
-/

namespace A311996.P6578944232325894825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311997 n - A103921 (A029575 n).toNat

end

end A311996.P6578944232325894825

/-!
# A311997: Coordination sequence Gal.5.148.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311997, there is no canonical definition to state claims against.
-/

/-! ## A311997.P9228198676497608951

`∑[A161553(A334665((n+1)*∏{p}[n+1, #]))]`
-/

namespace A311997.P9228198676497608951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161553 (A334665 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311997.P9228198676497608951

/-! ## A311997.P13176291162049382128

`A311996(n)+A103921(A029575(n))`
-/

namespace A311997.P13176291162049382128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311996 n + A103921 (A029575 n).toNat

end

end A311997.P13176291162049382128

/-! ## A311997.P5723549673449308433

`A102364(A323957(n+1))+A016777(n)`
-/

namespace A311997.P5723549673449308433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102364 (A323957 (n + 1)).toNat + A016777 n

end

end A311997.P5723549673449308433

/-! ## A311997.P10738406007539636595

`A039996(A259792(n))+4*n-char[A077006(n+1)]`
-/

namespace A311997.P10738406007539636595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077006 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A259792 n).toNat + (4 * n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A311997.P10738406007539636595

/-!
# A311998: Coordination sequence Gal.3.22.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311998, there is no canonical definition to state claims against.
-/

/-! ## A311998.P2867461611407594327

`∑[dr(A080478(A000244(n)))]`
-/

namespace A311998.P2867461611407594327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A080478 (A000244 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311998.P2867461611407594327

/-! ## A311998.P13188899419347770984

`A124831(A216837(n))+A008585(n)`
-/

namespace A311998.P13188899419347770984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124831 (A216837 n).toNat + A008585 n

end

end A311998.P13188899419347770984

/-! ## A311998.P1375215379770756524

`A311982(n)+A220400(A001205(n))`
-/

namespace A311998.P1375215379770756524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311982 n + A220400 (A001205 n).toNat

end

end A311998.P1375215379770756524

/-! ## A311998.P13339343107579227057

`A312961(n)-A025441(A288805(n))`
-/

namespace A311998.P13339343107579227057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312961 n - A025441 (A288805 n).toNat

end

end A311998.P13339343107579227057

/-! ## A311998.P4024482799693081375

`A379722(n+1)+A078908(A076220(n))`
-/

namespace A311998.P4024482799693081375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379722 (n + 1) + A078908 (A076220 n).toNat

end

end A311998.P4024482799693081375

/-!
# A311999: Coordination sequence Gal.6.309.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311999, there is no canonical definition to state claims against.
-/

/-! ## A311999.P2282917728059278430

`A311732(n)+A123369(A098482(n))`
-/

namespace A311999.P2282917728059278430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311732 n + A123369 (A098482 n).toNat

end

end A311999.P2282917728059278430

/-! ## A311999.P3120421997582731544

`A311349(n)+A001221(A212417(n))`
-/

namespace A311999.P3120421997582731544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311349 n + A001221 (A212417 n).toNat

end

end A311999.P3120421997582731544

/-! ## A311999.P3116879757522425888

`A263283(A126358(n)-A208510(2*n+1))`
-/

namespace A311999.P3116879757522425888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263283 (A126358 n - A208510 (2 * n + 1)).toNat

end

end A311999.P3116879757522425888

/-! ## A311999.P11678272069642541507

`∑[A092048(n+1)%A000720(3*(n+2))]`
-/

namespace A311999.P11678272069642541507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092048 (n + 1)) (A000720 (3 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311999.P11678272069642541507

/-! ## A311999.P18437921301685005048

`A313216(n)-A001221(A184947(n))`
-/

namespace A311999.P18437921301685005048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313216 n - A001221 (A184947 n).toNat

end

end A311999.P18437921301685005048

