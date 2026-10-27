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
import Seq.B000.C035
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A126200: Numbers k such that k^2 is a sum of consecutive cubes larger than 1.

The programs for A126200, there is no canonical definition to state claims against.
-/

/-! ## A126200.P17861209875003318368

`filter[A343409(n+2), A123110(#)]`
-/

namespace A126200.P17861209875003318368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343409 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A126200.P17861209875003318368

/-! ## A126200.P14159326610739866744

`∩[A014132(n+1), A343409(n+1)]`
-/

namespace A126200.P14159326610739866744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126200.P14159326610739866744

/-!
# A126201: Number of rooted connected unlabeled planar graphs on n nodes.

The programs for A126201, there is no canonical definition to state claims against.
-/

/-! ## A126201.P6591088361099654074

`or(1, A049093(n*a(n-1)))` with `a(0)=1`
-/

namespace A126201.P6591088361099654074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (A049093 ((n : ℤ) * a (n - 1)).toNat)

end

end A126201.P6591088361099654074

/-! ## A126201.P18370682579300199509

`or(1, A081399(ceil(2^(n-1)*n!)))`
-/

namespace A126201.P18370682579300199509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081399 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ)⌉.toNat)

end

end A126201.P18370682579300199509

/-!
# A126202: Number of pointed polyominoes with n cells.

The programs for A126202, there is no canonical definition to state claims against.
-/

/-! ## A126202.P3123056509591405606

`A347712(val(n+1, 2)+2^n-1)`
-/

namespace A126202.P3123056509591405606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347712 ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + ((2 ^ n : ℤ) - 1)).toNat

end

end A126202.P3123056509591405606

/-! ## A126202.P16823212678253869171

`A165190(xor(8, ∏[4-2/(n+1)]-2))`
-/

namespace A126202.P16823212678253869171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (Int.xor 8 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j - 2))).toNat

end

end A126202.P16823212678253869171

/-! ## A126202.P5689481661738167918

`A165190(or(9, ∏[4-2/(n+1)]-2))`
-/

namespace A126202.P5689481661738167918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (Int.lor 9 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j - 2))).toNat

end

end A126202.P5689481661738167918

/-!
# A126203: Middle number of a set of 5 consecutive integers whose sum of cubes is a square.

The programs for A126203, there is no canonical definition to state claims against.
-/

/-! ## A126203.P10264639511240168437

`A134588(A022306(n))%(9^n)`
-/

namespace A126203.P10264639511240168437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134588 (A022306 n).toNat) (9 ^ n : ℤ)

end

end A126203.P10264639511240168437

/-!
# A126204: Least prime representable as the arithmetic mean of two other primes in n different ways.

The programs for A126204, there is no canonical definition to state claims against.
-/

/-! ## A126204.P4658552072115225896

`p?[A298990(n)]`
-/

namespace A126204.P4658552072115225896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126204.P4658552072115225896

/-! ## A126204.P95274441069687187

`A298990(Δ[n²])`
-/

namespace A126204.P95274441069687187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A126204.P95274441069687187

/-! ## A126204.P11583346252732263650

`or(A000035(n), A298990(2*n+1))`
-/

namespace A126204.P11583346252732263650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A298990 (2 * n + 1))

end

end A126204.P11583346252732263650

/-! ## A126204.P15796000937332443280

`A298990(2*n+1)%A061067(n)²`
-/

namespace A126204.P15796000937332443280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298990 (2 * n + 1)) (A061067 n ^ 2)

end

end A126204.P15796000937332443280

/-! ## A126204.P17140650999941120192

`A298990(A005408(n))%A003185(n)`
-/

namespace A126204.P17140650999941120192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298990 (A005408 n).toNat) (A003185 n)

end

end A126204.P17140650999941120192

/-! ## A126204.P1411354094200429629

`filter[A298990(n), A010051(#)]`
-/

namespace A126204.P1411354094200429629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A126204.P1411354094200429629

/-! ## A126204.P2742373487379097640

`A006530(A298990(2*n+1))`
-/

namespace A126204.P2742373487379097640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A298990 (2 * n + 1)).toNat

end

end A126204.P2742373487379097640

/-! ## A126204.P9049865980920837523

`filter[A298990(n+1), A359377(#)]`
-/

namespace A126204.P9049865980920837523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A126204.P9049865980920837523

/-! ## A126204.P16130826975818576576

`filter[A298990(n+1), A373486(#)]`
-/

namespace A126204.P16130826975818576576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A126204.P16130826975818576576

/-! ## A126204.P2148305686968956965

`filter[A298990(n+1), A380467(#)]`
-/

namespace A126204.P2148305686968956965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A126204.P2148305686968956965

/-! ## A126204.P17680202310732155395

`filter[A298990(n), A283991(#)]`
-/

namespace A126204.P17680202310732155395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A126204.P17680202310732155395

/-! ## A126204.P16258616522227672283

`filter[A298990(n), A323153(#)]`
-/

namespace A126204.P16258616522227672283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A126204.P16258616522227672283

/-!
# A126205: Number of 3's in decimal expansion of 3^n, with n>=0.

The programs for A126205, the canonical program `A126205.P8861598925400809168` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126205 has offset 0).

The definition of A126205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126205.P6533776373437657354

`∑{digits}[3^n, A098108(3*#)]`
-/

namespace A126205.P6533776373437657354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A098108 (3 * x)).sum

end

end A126205.P6533776373437657354

namespace A126205

/-- `∑{digits}[3^n, A098108(3*#)]` -/
def P6533776373437657354.Spec : Prop :=
  ∀ n, P6533776373437657354.a n = A126205 n

end A126205

/-! ## A126205.P7482833756481183845

`∑{digits}[3^n, A025460(17-#)]`
-/

namespace A126205.P7482833756481183845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025460 (17 - x)).sum

end

end A126205.P7482833756481183845

namespace A126205

/-- `∑{digits}[3^n, A025460(17-#)]` -/
def P7482833756481183845.Spec : Prop :=
  ∀ n, P7482833756481183845.a n = A126205 n

end A126205

/-! ## A126205.P8861598925400809168

`∑{digits}[3^n, A075897(#+21)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A126205

/-- `∑{digits}[3^n, A075897(#+21)]` -/
def P8861598925400809168.Spec : Prop :=
  ∀ n, P8861598925400809168.a n = A126205 n

theorem P8861598925400809168.correct : P8861598925400809168.Spec := by
  intro n
  simp only [A126205]

end A126205

/-! ## A126205.P7824099455975073547

`∑{digits}[3^n, A101659(#+#)]`
-/

namespace A126205.P7824099455975073547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A101659 (x + x)).sum

end

end A126205.P7824099455975073547

namespace A126205

/-- `∑{digits}[3^n, A101659(#+#)]` -/
def P7824099455975073547.Spec : Prop :=
  ∀ n, P7824099455975073547.a n = A126205 n

end A126205

/-! ## A126205.P14038695842645894321

`∑{digits}[3*a(n-1), A249421(#+1)]` with `a(0)=1`
-/

namespace A126205.P14038695842645894321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A249421 (x + 1)).sum

end

end A126205.P14038695842645894321

namespace A126205

/-- `∑{digits}[3*a(n-1), A249421(#+1)]` -/
def P14038695842645894321.Spec : Prop :=
  ∀ n, P14038695842645894321.a n = A126205 n

end A126205

/-! ## A126205.P14623691045328578416

`∑{digits}[A000244(n), A185013(#)]`
-/

namespace A126205.P14623691045328578416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A185013 x).sum

end

end A126205.P14623691045328578416

namespace A126205

/-- `∑{digits}[A000244(n), A185013(#)]` -/
def P14623691045328578416.Spec : Prop :=
  ∀ n, P14623691045328578416.a n = A126205 n

end A126205

/-!
# A126206: Number of 4's in the decimal expansion of 4^n.

The programs for A126206, there is no canonical definition to state claims against.
-/

/-! ## A126206.P6792640601092383367

`A065715(2*n)`
-/

namespace A126206.P6792640601092383367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065715 (2 * n)

end

end A126206.P6792640601092383367

/-! ## A126206.P6812555960552210452

`A065715(n+n)%∑[A004207(n)]`
-/

namespace A126206.P6812555960552210452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065715 (n + n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126206.P6812555960552210452

/-! ## A126206.P1268845631533663322

`A027870(A031146(A065715(n+n)))`
-/

namespace A126206.P1268845631533663322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A031146 (A065715 (n + n)).toNat).toNat

end

end A126206.P1268845631533663322

/-! ## A126206.P16167613104540391754

`A065715(n+n)+A063725(A135481(n))`
-/

namespace A126206.P16167613104540391754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065715 (n + n) + A063725 (A135481 n).toNat

end

end A126206.P16167613104540391754

/-! ## A126206.P15504603937079454183

`A065719(2*n+1)+A065744(2*n+1)-A065744(2*n)`
-/

namespace A126206.P15504603937079454183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (2 * n + 1) + (A065744 (2 * n + 1) - A065744 (2 * n))

end

end A126206.P15504603937079454183

/-! ## A126206.P11012364200261647542

`A065715(n+n)^A001222(A046133(n+1))`
-/

namespace A126206.P11012364200261647542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065715 (n + n) : ℚ) ^ (A001222 (A046133 (n + 1)).toNat : ℤ)

end

end A126206.P11012364200261647542

/-! ## A126206.P5026161844942729266

`and(∑[A000079(n)], A065715(n+n))`
-/

namespace A126206.P5026161844942729266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A065715 (n + n))

end

end A126206.P5026161844942729266

/-! ## A126206.P14150577048225040680

`∑{digits}[4^n, A038189(A343228(#))]`
-/

namespace A126206.P14150577048225040680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A038189 (A343228 x).toNat).sum

end

end A126206.P14150577048225040680

/-!
# A126207: Number of 5's in decimal expansion of 5^n.

The programs for A126207, the canonical program `A126207.P3966340680454473781` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126207 has offset 0).

The definition of A126207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126207.P5093025398340649452

`∑{digits}[A000351(n), A025441(#)]`
-/

namespace A126207.P5093025398340649452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025441 x).sum

end

end A126207.P5093025398340649452

namespace A126207

/-- `∑{digits}[A000351(n), A025441(#)]` -/
def P5093025398340649452.Spec : Prop :=
  ∀ n, P5093025398340649452.a n = A126207 n

end A126207

/-! ## A126207.P3966340680454473781

`∑{digits}[A000351(n), A316866(#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126207

/-- `∑{digits}[A000351(n), A316866(#)]` -/
def P3966340680454473781.Spec : Prop :=
  ∀ n, P3966340680454473781.a n = A126207 n

theorem P3966340680454473781.correct : P3966340680454473781.Spec := by
  intro n
  simp only [A126207]

end A126207

/-! ## A126207.P14167668036178557353

`∑{digits}[A000351(n), A033909(2*#)]`
-/

namespace A126207.P14167668036178557353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033909 (2 * x)).sum

end

end A126207.P14167668036178557353

namespace A126207

/-- `∑{digits}[A000351(n), A033909(2*#)]` -/
def P14167668036178557353.Spec : Prop :=
  ∀ n, P14167668036178557353.a n = A126207 n

end A126207

/-! ## A126207.P10747525114549470028

`∑{digits}[A000351(n), A002262(A103438(#))]`
-/

namespace A126207.P10747525114549470028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002262 (A103438 x).toNat).sum

end

end A126207.P10747525114549470028

namespace A126207

/-- `∑{digits}[A000351(n), A002262(A103438(#))]` -/
def P10747525114549470028.Spec : Prop :=
  ∀ n, P10747525114549470028.a n = A126207 n

end A126207

/-! ## A126207.P15482397958440432545

`∑{digits}[A000351(n), A033909(A004277(#))²]`
-/

namespace A126207.P15482397958440432545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033909 (A004277 x).toNat ^ 2).sum

end

end A126207.P15482397958440432545

namespace A126207

/-- `∑{digits}[A000351(n), A033909(A004277(#))²]` -/
def P15482397958440432545.Spec : Prop :=
  ∀ n, P15482397958440432545.a n = A126207 n

end A126207

/-! ## A126207.P5566462348792970185

`∑{digits}[A000351(n), A033909(A266303(#))²]`
-/

namespace A126207.P5566462348792970185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033909 (A266303 x).toNat ^ 2).sum

end

end A126207.P5566462348792970185

namespace A126207

/-- `∑{digits}[A000351(n), A033909(A266303(#))²]` -/
def P5566462348792970185.Spec : Prop :=
  ∀ n, P5566462348792970185.a n = A126207 n

end A126207

/-!
# A126208: Number of 6's in decimal expansion of 6^n.

The programs for A126208, the canonical program `A126208.P1909337783113813203` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126208 has offset 0).

The definition of A126208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126208.P3731801312556870374

`∑{digits}[6^n, A004530(#+3)]`
-/

namespace A126208.P3731801312556870374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A004530 (x + 3)).sum

end

end A126208.P3731801312556870374

namespace A126208

/-- `∑{digits}[6^n, A004530(#+3)]` -/
def P3731801312556870374.Spec : Prop :=
  ∀ n, P3731801312556870374.a n = A126208 n

end A126208

/-! ## A126208.P1909337783113813203

`∑{digits}[A000400(n), A011686(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A126208

/-- `∑{digits}[A000400(n), A011686(#)]` -/
def P1909337783113813203.Spec : Prop :=
  ∀ n, P1909337783113813203.a n = A126208 n

theorem P1909337783113813203.correct : P1909337783113813203.Spec := by
  intro n
  simp only [A126208]

end A126208

/-! ## A126208.P16934403747733125774

`∑{digits}[A000400(n), A316867(#)]`
-/

namespace A126208.P16934403747733125774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316867 x).sum

end

end A126208.P16934403747733125774

namespace A126208

/-- `∑{digits}[A000400(n), A316867(#)]` -/
def P16934403747733125774.Spec : Prop :=
  ∀ n, P16934403747733125774.a n = A126208 n

end A126208

/-! ## A126208.P10162085812458576313

`∑{digits}[A000400(n), A339169(#)]`
-/

namespace A126208.P10162085812458576313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A339169 x).sum

end

end A126208.P10162085812458576313

namespace A126208

/-- `∑{digits}[A000400(n), A339169(#)]` -/
def P10162085812458576313.Spec : Prop :=
  ∀ n, P10162085812458576313.a n = A126208 n

end A126208

/-! ## A126208.P7858634320276397319

`∑{digits}[6^n, A069283(A175126(#))]`
-/

namespace A126208.P7858634320276397319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A069283 (A175126 x).toNat).sum

end

end A126208.P7858634320276397319

namespace A126208

/-- `∑{digits}[6^n, A069283(A175126(#))]` -/
def P7858634320276397319.Spec : Prop :=
  ∀ n, P7858634320276397319.a n = A126208 n

end A126208

/-!
# A126209: Number of 7's in decimal expansion of 7^n.

The programs for A126209, the canonical program `A126209.P10127809837303638255` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126209 has offset 0).

The definition of A126209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126209.P10127809837303638255

`∑{digits}[A000420(n), A014082(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A126209

/-- `∑{digits}[A000420(n), A014082(#)]` -/
def P10127809837303638255.Spec : Prop :=
  ∀ n, P10127809837303638255.a n = A126209 n

theorem P10127809837303638255.correct : P10127809837303638255.Spec := by
  intro n
  simp only [A126209]

end A126209

/-! ## A126209.P18190760253891857107

`∑{digits}[A000420(n), A025460(#)]`
-/

namespace A126209.P18190760253891857107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025460 x).sum

end

end A126209.P18190760253891857107

namespace A126209

/-- `∑{digits}[A000420(n), A025460(#)]` -/
def P18190760253891857107.Spec : Prop :=
  ∀ n, P18190760253891857107.a n = A126209 n

end A126209

/-! ## A126209.P1845864556030648917

`∑{digits}[A000420(n), A064873(#)]`
-/

namespace A126209.P1845864556030648917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A064873 x).sum

end

end A126209.P1845864556030648917

namespace A126209

/-- `∑{digits}[A000420(n), A064873(#)]` -/
def P1845864556030648917.Spec : Prop :=
  ∀ n, P1845864556030648917.a n = A126209 n

end A126209

/-! ## A126209.P2284866262299129978

`∑{digits}[A000420(n), A151755(#)]`
-/

namespace A126209.P2284866262299129978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A151755 x).sum

end

end A126209.P2284866262299129978

namespace A126209

/-- `∑{digits}[A000420(n), A151755(#)]` -/
def P2284866262299129978.Spec : Prop :=
  ∀ n, P2284866262299129978.a n = A126209 n

end A126209

/-! ## A126209.P11506794416803926517

`∑{digits}[A000420(n), A274635(#)]`
-/

namespace A126209.P11506794416803926517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A274635 x).sum

end

end A126209.P11506794416803926517

namespace A126209

/-- `∑{digits}[A000420(n), A274635(#)]` -/
def P11506794416803926517.Spec : Prop :=
  ∀ n, P11506794416803926517.a n = A126209 n

end A126209

/-!
# A126210: Number of 8's in decimal expansion of 8^n.

The programs for A126210, there is no canonical definition to state claims against.
-/

/-! ## A126210.P9438820238534988614

`A065719(3*n)`
-/

namespace A126210.P9438820238534988614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (3 * n)

end

end A126210.P9438820238534988614

/-! ## A126210.P16503102039666019635

`A065719(n+n+n)%(n+1)`
-/

namespace A126210.P16503102039666019635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065719 (n + n + n)) (n + 1 : ℤ)

end

end A126210.P16503102039666019635

/-! ## A126210.P9917046927174359235

`lcm(A008836(n+1), A065719(A008486(n)))`
-/

namespace A126210.P9917046927174359235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A065719 (A008486 n).toNat)

end

end A126210.P9917046927174359235

/-! ## A126210.P5315221644978449219

`A065719(A008486(n))+A007814(n+1+n)`
-/

namespace A126210.P5315221644978449219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A008486 n).toNat + A007814 (n + 1 + n)

end

end A126210.P5315221644978449219

/-! ## A126210.P2178690531868040922

`A065719(A008486(n))+A000035(A005843(n))`
-/

namespace A126210.P2178690531868040922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A008486 n).toNat + A000035 (A005843 n).toNat

end

end A126210.P2178690531868040922

/-! ## A126210.P16271104988478518389

`A065719(A008486(n))/A001221(A007918(n))`
-/

namespace A126210.P16271104988478518389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065719 (A008486 n).toNat : ℚ) / (A001221 (A007918 n).toNat : ℚ)

end

end A126210.P16271104988478518389

/-! ## A126210.P11174362489318526984

`A065719(A008486(n))/A062157(A060266(n+1))`
-/

namespace A126210.P11174362489318526984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065719 (A008486 n).toNat : ℚ) / (A062157 (A060266 (n + 1)).toNat : ℚ)

end

end A126210.P11174362489318526984

/-! ## A126210.P4369055594373455543

`(A271195(n)+A065719(A008486(n)))%A271195(n)`
-/

namespace A126210.P4369055594373455543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271195 n + A065719 (A008486 n).toNat) (A271195 n)

end

end A126210.P4369055594373455543

/-! ## A126210.P5081057463047708907

`(A271198(n)+A065719(A008486(n)))%A271198(n)`
-/

namespace A126210.P5081057463047708907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271198 n + A065719 (A008486 n).toNat) (A271198 n)

end

end A126210.P5081057463047708907

/-! ## A126210.P17360911718331259496

`A065719(A008486(n))+A036987(A046691(n+7))`
-/

namespace A126210.P17360911718331259496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A008486 n).toNat + A036987 (A046691 (n + 7)).toNat

end

end A126210.P17360911718331259496

/-! ## A126210.P9353554748628484787

`A065719(A008486(n))-lcm(4, A282953(n))%4`
-/

namespace A126210.P9353554748628484787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A008486 n).toNat - ((Int.lcm 4 (A282953 n) % 4 : ℕ) : ℤ)

end

end A126210.P9353554748628484787

/-! ## A126210.P7872740638567071411

`A065719(A008486(n))/A001221(A070865(n+1))`
-/

namespace A126210.P7872740638567071411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065719 (A008486 n).toNat : ℚ) / (A001221 (A070865 (n + 1)).toNat : ℚ)

end

end A126210.P7872740638567071411

/-! ## A126210.P8425997800774858754

`A065719(A008585(n))/A193636(A000096(n))`
-/

namespace A126210.P8425997800774858754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065719 (A008585 n).toNat : ℚ) / (A193636 (A000096 n).toNat : ℚ)

end

end A126210.P8425997800774858754

/-! ## A126210.P11093795965533222749

`A065719(A008486(n))+A036987(A235332(n))`
-/

namespace A126210.P11093795965533222749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A008486 n).toNat + A036987 (A235332 n).toNat

end

end A126210.P11093795965533222749

/-! ## A126210.P14725775034874471896

`∑{digits}[A000079(3*n), A065941(#)-1]`
-/

namespace A126210.P14725775034874471896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A065941 x - 1).sum

end

end A126210.P14725775034874471896

/-!
# A126211: Number of 9's in decimal expansion of 9^n.

The programs for A126211, the canonical program `A126211.P14481726776723616032` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126211 has offset 0).

The definition of A126211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126211.P14481726776723616032

`∑{digits}[9^n, C(#, 9)]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126211

/-- `∑{digits}[9^n, C(#, 9)]` -/
def P14481726776723616032.Spec : Prop :=
  ∀ n, (P14481726776723616032.a n : ℤ) = A126211 n

theorem P14481726776723616032.correct : P14481726776723616032.Spec := by
  intro n
  simp only [A126211]

end A126211

/-! ## A126211.P5649080959176422733

`∑{digits}[A001019(n), A025465(#)]`
-/

namespace A126211.P5649080959176422733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025465 x).sum

end

end A126211.P5649080959176422733

namespace A126211

/-- `∑{digits}[A001019(n), A025465(#)]` -/
def P5649080959176422733.Spec : Prop :=
  ∀ n, P5649080959176422733.a n = A126211 n

end A126211

/-! ## A126211.P15683552767511728116

`∑{digits}[A001019(n), A036640(#)]`
-/

namespace A126211.P15683552767511728116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036640 x).sum

end

end A126211.P15683552767511728116

namespace A126211

/-- `∑{digits}[A001019(n), A036640(#)]` -/
def P15683552767511728116.Spec : Prop :=
  ∀ n, P15683552767511728116.a n = A126211 n

end A126211

/-! ## A126211.P9491028275336281657

`∑{digits}[A001019(n), A326469(#)]`
-/

namespace A126211.P9491028275336281657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A326469 x).sum

end

end A126211.P9491028275336281657

namespace A126211

/-- `∑{digits}[A001019(n), A326469(#)]` -/
def P9491028275336281657.Spec : Prop :=
  ∀ n, P9491028275336281657.a n = A126211 n

end A126211

/-! ## A126211.P9700677098595276700

`∑{digits}[A074324(2*n+1)², A326469(#)]`
-/

namespace A126211.P9700677098595276700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A326469 x).sum

end

end A126211.P9700677098595276700

namespace A126211

/-- `∑{digits}[A074324(2*n+1)², A326469(#)]` -/
def P9700677098595276700.Spec : Prop :=
  ∀ n, P9700677098595276700.a n = A126211 n

end A126211

/-! ## A126211.P5299524404000624462

`∑{digits}[A074324(A016813(n)), A326469(#)]`
-/

namespace A126211.P5299524404000624462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A326469 x).sum

end

end A126211.P5299524404000624462

namespace A126211

/-- `∑{digits}[A074324(A016813(n)), A326469(#)]` -/
def P5299524404000624462.Spec : Prop :=
  ∀ n, P5299524404000624462.a n = A126211 n

end A126211

/-!
# A126212: a(n) = sum of the divisors of n which equal any d(k) for 1<=k<=n, where d(k) is the number of positive divisors of k.

The programs for A126212, there is no canonical definition to state claims against.
-/

/-! ## A126212.P3603973208257571058

`A367628(A328617(n+1))`
-/

namespace A126212.P3603973208257571058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367628 (A328617 (n + 1)).toNat

end

end A126212.P3603973208257571058

/-! ## A126212.P13888149258741305624

`A367628(n+1)%(A295072(2*(n+2))+1)`
-/

namespace A126212.P13888149258741305624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367628 (n + 1)) (A295072 (2 * (n + 2)) + 1)

end

end A126212.P13888149258741305624

/-! ## A126212.P5181871888805209168

`A367628(n+1)%A229907(A016789(n))`
-/

namespace A126212.P5181871888805209168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367628 (n + 1)) (A229907 (A016789 n).toNat)

end

end A126212.P5181871888805209168

/-! ## A126212.P3062988790346712938

`A003415(A081091(n+1))*A367628(n+1)`
-/

namespace A126212.P3062988790346712938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A081091 (n + 1)).toNat * A367628 (n + 1)

end

end A126212.P3062988790346712938

/-! ## A126212.P17835487765861739681

`A367628(n+1)+A185709(A324580(n+3))`
-/

namespace A126212.P17835487765861739681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367628 (n + 1) + A185709 (A324580 (n + 3)).toNat

end

end A126212.P17835487765861739681

/-!
# A126214: a(1)=1. a(n) = number of earlier terms, a(k) (for 1<=k<=n-1), where every integer coprime to a(k) and <= a(k) is also coprime to n.

The programs for A126214, there is no canonical definition to state claims against.
-/

/-! ## A126214.P2373372087226591559

`or(A000010(n+1), A267349(2^n-n%2))`
-/

namespace A126214.P2373372087226591559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (n + 1)) (A267349 (2 ^ n - n % 2))

end

end A126214.P2373372087226591559

/-! ## A126214.P1526377975580377729

`or(A000010(n+1), A069850(2^n-n*(n-3)))`
-/

namespace A126214.P1526377975580377729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (n + 1)) (A069850 ((2 ^ n : ℤ) - (n : ℤ) * ((n : ℤ) - 3)).toNat)

end

end A126214.P1526377975580377729

/-! ## A126214.P11268966343917316831

`A269723(A000081(n))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A126214.P11268966343917316831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269723 (A000081 n).toNat : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A126214.P11268966343917316831

/-! ## A126214.P676679319656248915

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1-A359592(A288605(3*(n+1)))`
-/

namespace A126214.P676679319656248915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1 - (A359592 (A288605 (3 * (n + 1))).toNat : ℚ)

end

end A126214.P676679319656248915

/-! ## A126214.P982098942282572712

`or(A000010(A077168(n)), A285320(n))`
-/

namespace A126214.P982098942282572712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (A077168 n).toNat) (A285320 n)

end

end A126214.P982098942282572712

/-!
# A126216: Triangle read by rows: T(n,k) is the number of Schroeder paths of semilength n containing exactly k peaks but no peaks at level one (n >= 1; 0 <= k <= n-1).

The programs for A126216, the canonical program `A126216.P16893396862066242580` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126216 has offset 1).

The definition of A126216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126216.P16893396862066242580

`C(row(n)+1, col(n))*C(2*(row(n)+1)-col(n), row(n)+2)/(row(n)+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126216

/-- `C(row(n)+1, col(n))*C(2*(row(n)+1)-col(n), row(n)+2)/(row(n)+1)` -/
def P16893396862066242580.Spec : Prop :=
  ∀ n, P16893396862066242580.a n = (A126216 (n + 1) : ℚ)

end A126216

/-! ## A126216.P16359995512671625363

`A133336(∑[char[∑[n]]]+n)`
-/

namespace A126216.P16359995512671625363
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133336 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A126216.P16359995512671625363

namespace A126216

/-- `A133336(∑[char[∑[n]]]+n)` -/
def P16359995512671625363.Spec : Prop :=
  ∀ n, P16359995512671625363.a n = A126216 (n + 1)

end A126216

/-! ## A126216.P14014912968389898343

`A033282(A061579(n)+3)`
-/

namespace A126216.P14014912968389898343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A061579 n + 3).toNat

end

end A126216.P14014912968389898343

namespace A126216

/-- `A033282(A061579(n)+3)` -/
def P14014912968389898343.Spec : Prop :=
  ∀ n, P14014912968389898343.a n = A126216 (n + 1)

end A126216

/-! ## A126216.P4823321722124482038

`A033282(A038722(n+1)+2)`
-/

namespace A126216.P4823321722124482038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A038722 (n + 1) + 2).toNat

end

end A126216.P4823321722124482038

namespace A126216

/-- `A033282(A038722(n+1)+2)` -/
def P4823321722124482038.Spec : Prop :=
  ∀ n, P4823321722124482038.a n = A126216 (n + 1)

end A126216

/-! ## A126216.P8451928582358346399

`A086810(A061579(n)+A003057(n+2))`
-/

namespace A126216.P8451928582358346399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A061579 n + A003057 (n + 2)).toNat

end

end A126216.P8451928582358346399

namespace A126216

/-- `A086810(A061579(n)+A003057(n+2))` -/
def P8451928582358346399.Spec : Prop :=
  ∀ n, P8451928582358346399.a n = A126216 (n + 1)

end A126216

/-! ## A126216.P15183293279745150069

`A086810(A038722(n+1)+A002024(n+1))`
-/

namespace A126216.P15183293279745150069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A126216.P15183293279745150069

namespace A126216

/-- `A086810(A038722(n+1)+A002024(n+1))` -/
def P15183293279745150069.Spec : Prop :=
  ∀ n, P15183293279745150069.a n = A126216 (n + 1)

end A126216

/-! ## A126216.P18386553208143955344

`C(row(n), col(n))*C(2*(row(n)+1)-col(n), row(n)+1)/(row(n)+2)`
-/

namespace A126216.P18386553208143955344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) * Nat.choose ((2 * (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat (SequenceMachineLib.triRow n + 1) : ℚ) / (SequenceMachineLib.triRow n + 2 : ℚ)

end

end A126216.P18386553208143955344

namespace A126216

/-- `C(row(n), col(n))*C(2*(row(n)+1)-col(n), row(n)+1)/(row(n)+2)` -/
def P18386553208143955344.Spec : Prop :=
  ∀ n, P18386553208143955344.a n = (A126216 (n + 1) : ℚ)

end A126216

/-!
# A126217: Triangle read by rows: T(n,k) is the number of 321-avoiding permutations of {1,2,...,n} having longest increasing subsequence of length k (0<=k<=n).

The programs for A126217, the canonical program `A126217.P2537515140714382913` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126217 has offset 0).

The definition of A126217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126217.P2537515140714382913

`A120730(n)²`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A126217

/-- `A120730(n)²` -/
def P2537515140714382913.Spec : Prop :=
  ∀ n, P2537515140714382913.a n = A126217 n

theorem P2537515140714382913.correct : P2537515140714382913.Spec := by
  intro n
  simp only [A126217]

end A126217

/-! ## A126217.P7809352304204009797

`A120730(n)*A156644(n)`
-/

namespace A126217.P7809352304204009797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120730 n * A156644 n

end

end A126217.P7809352304204009797

namespace A126217

/-- `A120730(n)*A156644(n)` -/
def P7809352304204009797.Spec : Prop :=
  ∀ n, P7809352304204009797.a n = A126217 n

end A126217

/-! ## A126217.P11209384288091311960

`(A097808(n)*A101688(n))²`
-/

namespace A126217.P11209384288091311960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097808 n * A101688 n) ^ 2

end

end A126217.P11209384288091311960

namespace A126217

/-- `(A097808(n)*A101688(n))²` -/
def P11209384288091311960.Spec : Prop :=
  ∀ n, P11209384288091311960.a n = A126217 n

end A126217

/-! ## A126217.P15015832937409454350

`(A101688(n)*A156644(n))²`
-/

namespace A126217.P15015832937409454350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101688 n * A156644 n) ^ 2

end

end A126217.P15015832937409454350

namespace A126217

/-- `(A101688(n)*A156644(n))²` -/
def P15015832937409454350.Spec : Prop :=
  ∀ n, P15015832937409454350.a n = A126217 n

end A126217

/-! ## A126217.P2636275730029524484

`(A097808(n)*A187034(n))²`
-/

namespace A126217.P2636275730029524484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097808 n * A187034 n) ^ 2

end

end A126217.P2636275730029524484

namespace A126217

/-- `(A097808(n)*A187034(n))²` -/
def P2636275730029524484.Spec : Prop :=
  ∀ n, P2636275730029524484.a n = A126217 n

end A126217

/-! ## A126217.P16611587733999679870

`(A156644(n)*A187034(n))²`
-/

namespace A126217.P16611587733999679870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156644 n * A187034 n) ^ 2

end

end A126217.P16611587733999679870

namespace A126217

/-- `(A156644(n)*A187034(n))²` -/
def P16611587733999679870.Spec : Prop :=
  ∀ n, P16611587733999679870.a n = A126217 n

end A126217

/-! ## A126217.P643455834465058293

`(A145362(n+1)*A156644(n))²`
-/

namespace A126217.P643455834465058293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145362 (n + 1) * A156644 n) ^ 2

end

end A126217.P643455834465058293

namespace A126217

/-- `(A145362(n+1)*A156644(n))²` -/
def P643455834465058293.Spec : Prop :=
  ∀ n, P643455834465058293.a n = A126217 n

end A126217

/-! ## A126217.P4598607706308183112

`A053121(A185180(n+1)-1)²`
-/

namespace A126217.P4598607706308183112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A185180 (n + 1) - 1).toNat ^ 2

end

end A126217.P4598607706308183112

namespace A126217

/-- `A053121(A185180(n+1)-1)²` -/
def P4598607706308183112.Spec : Prop :=
  ∀ n, P4598607706308183112.a n = A126217 n

end A126217

/-! ## A126217.P9411687308362751447

`A002620(2*A120730(n))`
-/

namespace A126217.P9411687308362751447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A120730 n).toNat

end

end A126217.P9411687308362751447

namespace A126217

/-- `A002620(2*A120730(n))` -/
def P9411687308362751447.Spec : Prop :=
  ∀ n, P9411687308362751447.a n = A126217 n

end A126217

/-! ## A126217.P4171813641386238097

`(A097808(n)*A155091(n+1))²`
-/

namespace A126217.P4171813641386238097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097808 n * A155091 (n + 1)) ^ 2

end

end A126217.P4171813641386238097

namespace A126217

/-- `(A097808(n)*A155091(n+1))²` -/
def P4171813641386238097.Spec : Prop :=
  ∀ n, P4171813641386238097.a n = A126217 n

end A126217

/-!
# A126219: Triangle read by rows: T(n,k) is the number of binary trees (i.e., a rooted tree where each vertex has either 0, 1, or 2 children; and, when only one child is present, it is either a right child or a left child) with n edges and k pairs of adjacent vertices of outdegree 2.

The programs for A126219, there is no canonical definition to state claims against.
-/

/-! ## A126219.P17352864643669175852

`A329275((A048368(3*(n+1))-58)%(n+1))`
-/

namespace A126219.P17352864643669175852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329275 (Int.tmod (A048368 (3 * (n + 1)) - 58) (n + 1 : ℤ)).toNat

end

end A126219.P17352864643669175852

/-!
# A126220: Number of binary trees (i.e., rooted trees where each vertex has either 0, 1, or 2 children; and, when only one child is present, it is either a right child or a left child) with n edges and no adjacent vertices of outdegree 2.

The programs for A126220, there is no canonical definition to state claims against.
-/

/-! ## A126220.P18228159753131798806

`record[A126219(n)]`
-/

namespace A126220.P18228159753131798806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126220.P18228159753131798806

/-! ## A126220.P14029832320287278697

`A126219(lt[A358910(2*n+3), A126219(n)])`
-/

namespace A126220.P14029832320287278697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358910 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126219 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126220.P14029832320287278697

/-! ## A126220.P13683368920194471221

`A136304(n)-A184954(A184954(n))`
-/

namespace A126220.P13683368920194471221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136304 n - A184954 (A184954 n).toNat

end

end A126220.P13683368920194471221

/-! ## A126220.P13271600684814193013

`A116849(n+1)-A006997(A149354(n))`
-/

namespace A126220.P13271600684814193013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116849 (n + 1) - A006997 (A149354 n).toNat

end

end A126220.P13271600684814193013

/-!
# A126221: a(n)=c(n)+c(n-1)+2*c(n-2)+4*c(n-3)+8*c(n-4)+...+2^(n-2)*c(1)+2^(n-1)*c(0), where c(k) are the Catalan numbers (A000108).

The programs for A126221, the canonical program `A126221.P15938254534647312088` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126221 has offset 0).

The definition of A126221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126221.P15938254534647312088

`Δ[2^n-A158499(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126221

/-- `Δ[2^n-A158499(n)]` -/
def P15938254534647312088.Spec : Prop :=
  ∀ n, P15938254534647312088.a n = A126221 n

theorem P15938254534647312088.correct : P15938254534647312088.Spec := by
  intro n
  simp only [A126221]

end A126221

/-! ## A126221.P4641250503406003216

`2*a(n-1)-Δ[A115140(n)]` with `a(0)=1`
-/

namespace A126221.P4641250503406003216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A126221.P4641250503406003216

namespace A126221

/-- `2*a(n-1)-Δ[A115140(n)]` -/
def P4641250503406003216.Spec : Prop :=
  ∀ n, P4641250503406003216.a n = A126221 n

end A126221

/-! ## A126221.P1492396229641400393

`(A014318(n)+A000108(n))/2`
-/

namespace A126221.P1492396229641400393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014318 n + A000108 n : ℚ) / 2

end

end A126221.P1492396229641400393

namespace A126221

/-- `(A014318(n)+A000108(n))/2` -/
def P1492396229641400393.Spec : Prop :=
  ∀ n, P1492396229641400393.a n = (A126221 n : ℚ)

end A126221

/-! ## A126221.P8245593826529697199

`∑[A011782(n)]-Δ[A158499(n)]`
-/

namespace A126221.P8245593826529697199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A126221.P8245593826529697199

namespace A126221

/-- `∑[A011782(n)]-Δ[A158499(n)]` -/
def P8245593826529697199.Spec : Prop :=
  ∀ n, P8245593826529697199.a n = A126221 n

end A126221

/-! ## A126221.P16922586738026124419

`A011782(n+1)-Δ[A158499(n)]`
-/

namespace A126221.P16922586738026124419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (f1 (n + 1) - f1 n)

end

end A126221.P16922586738026124419

namespace A126221

/-- `A011782(n+1)-Δ[A158499(n)]` -/
def P16922586738026124419.Spec : Prop :=
  ∀ n, P16922586738026124419.a n = A126221 n

end A126221

/-! ## A126221.P13711276156343743798

`A000108(n)+A158499(n)-A126966(n)`
-/

namespace A126221.P13711276156343743798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A158499 n - A126966 n)

end

end A126221.P13711276156343743798

namespace A126221

/-- `A000108(n)+A158499(n)-A126966(n)` -/
def P13711276156343743798.Spec : Prop :=
  ∀ n, P13711276156343743798.a n = A126221 n

end A126221

/-! ## A126221.P11234901724038280514

`A014318(n)+A126966(n)-A158499(n)`
-/

namespace A126221.P11234901724038280514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014318 n + (A126966 n - A158499 n)

end

end A126221.P11234901724038280514

namespace A126221

/-- `A014318(n)+A126966(n)-A158499(n)` -/
def P11234901724038280514.Spec : Prop :=
  ∀ n, P11234901724038280514.a n = A126221 n

end A126221

/-! ## A126221.P9712674411357831551

`A126966(n)-(A158499(n)+A158495(n+1))`
-/

namespace A126221.P9712674411357831551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n - (A158499 n + A158495 (n + 1))

end

end A126221.P9712674411357831551

namespace A126221

/-- `A126966(n)-(A158499(n)+A158495(n+1))` -/
def P9712674411357831551.Spec : Prop :=
  ∀ n, P9712674411357831551.a n = A126221 n

end A126221

/-! ## A126221.P7293846918417741605

`abs(Δ[A247023(A000124(n))])`
-/

namespace A126221.P7293846918417741605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126221.P7293846918417741605

namespace A126221

/-- `abs(Δ[A247023(A000124(n))])` -/
def P7293846918417741605.Spec : Prop :=
  ∀ n, P7293846918417741605.a n = A126221 n

end A126221

/-!
# A126222: Triangle read by rows: T(n,k) is the number of 2-Motzkin paths (i.e., Motzkin paths with blue and red level steps) without red level steps on the x-axis, having length n and k level steps (0 <= k <= n).

The programs for A126222, there is no canonical definition to state claims against.
-/

/-! ## A126222.P2128250400390177751

`A284556(6^A100749(n))`
-/

namespace A126222.P2128250400390177751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A100749 n : ℤ))).toNat

end

end A126222.P2128250400390177751

/-! ## A126222.P13251318098268016297

`A241086(lcm(2, A137286(n)))`
-/

namespace A126222.P13251318098268016297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (Int.lcm 2 (A137286 n))

end

end A126222.P13251318098268016297

/-! ## A126222.P17124935558072960359

`A001222(A036561(A097610(n))!)`
-/

namespace A126222.P17124935558072960359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A036561 (A097610 n).toNat).toNat)

end

end A126222.P17124935558072960359

/-! ## A126222.P2536357791387896025

`A050493(A099174(n)^A130020(n))`
-/

namespace A126222.P2536357791387896025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050493 (SequenceMachineLib.roundAway ((A099174 n : ℚ) ^ (A130020 n : ℤ))).toNat

end

end A126222.P2536357791387896025

/-! ## A126222.P17681371469601515849

`A111757(A214595(n+1))`
-/

namespace A126222.P17681371469601515849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111757 (A214595 (n + 1)).toNat

end

end A126222.P17681371469601515849

/-!
# A126223: Number of level steps in all 2-Motzkin paths (i.e., Motzkin paths with blue and red level steps) of length n, without red level steps on the x-axis.

The programs for A126223, the canonical program `A126223.P10199562759010082362` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126223 has offset 0).

The definition of A126223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126223.P10199562759010082362

`2*(2*n-3)*(n²-n+1)*a(n-1)/((n+1)*(n²-3*n+3))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126223

/-- `2*(2*n-3)*(n²-n+1)*a(n-1)/((n+1)*(n²-3*n+3))` -/
def P10199562759010082362.Spec : Prop :=
  ∀ n, P10199562759010082362.a n = (A126223 n : ℚ)

end A126223

/-! ## A126223.P12893294602299240153

`A182027(2*n)-A000108(n)`
-/

namespace A126223.P12893294602299240153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (2 * n) - A000108 n

end

end A126223.P12893294602299240153

namespace A126223

/-- `A182027(2*n)-A000108(n)` -/
def P12893294602299240153.Spec : Prop :=
  ∀ n, P12893294602299240153.a n = A126223 n

end A126223

/-! ## A126223.P2617869145109869067

`record[A138364(n)]-Δ[A120588(n)]`
-/

namespace A126223.P2617869145109869067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (n + 1) - f2 n)

end

end A126223.P2617869145109869067

namespace A126223

/-- `record[A138364(n)]-Δ[A120588(n)]` -/
def P2617869145109869067.Spec : Prop :=
  ∀ n, P2617869145109869067.a n = A126223 n

end A126223

/-! ## A126223.P4932789765245271058

`record[(n+1)*A097331(n)]-A000108(n)`
-/

namespace A126223.P4932789765245271058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000108 n

end

end A126223.P4932789765245271058

namespace A126223

/-- `record[(n+1)*A097331(n)]-A000108(n)` -/
def P4932789765245271058.Spec : Prop :=
  ∀ n, P4932789765245271058.a n = A126223 n

end A126223

/-! ## A126223.P6398911200880699399

`A182027(2*n)+A002420(n+1)/2`
-/

namespace A126223.P6398911200880699399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182027 (2 * n) : ℚ) + (A002420 (n + 1) : ℚ) / 2

end

end A126223.P6398911200880699399

namespace A126223

/-- `A182027(2*n)+A002420(n+1)/2` -/
def P6398911200880699399.Spec : Prop :=
  ∀ n, P6398911200880699399.a n = (A126223 n : ℚ)

end A126223

/-! ## A126223.P9114170935588785474

`A063886(A004273(n))-A000108(n)`
-/

namespace A126223.P9114170935588785474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (A004273 n).toNat - A000108 n

end

end A126223.P9114170935588785474

namespace A126223

/-- `A063886(A004273(n))-A000108(n)` -/
def P9114170935588785474.Spec : Prop :=
  ∀ n, P9114170935588785474.a n = A126223 n

end A126223

/-! ## A126223.P3868915754162712815

`A063886(A004273(n))-abs(A168491(n))`
-/

namespace A126223.P3868915754162712815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (A004273 n).toNat - |A168491 n|

end

end A126223.P3868915754162712815

namespace A126223

/-- `A063886(A004273(n))-abs(A168491(n))` -/
def P3868915754162712815.Spec : Prop :=
  ∀ n, P3868915754162712815.a n = A126223 n

end A126223

/-! ## A126223.P5971847817071350716

`A037952(A004273(n))-Δ[A120588(n)]`
-/

namespace A126223.P5971847817071350716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A004273 n).toNat - (f1 (n + 1) - f1 n)

end

end A126223.P5971847817071350716

namespace A126223

/-- `A037952(A004273(n))-Δ[A120588(n)]` -/
def P5971847817071350716.Spec : Prop :=
  ∀ n, P5971847817071350716.a n = A126223 n

end A126223

/-! ## A126223.P12523718290471821723

`A063886(A004273(n))-A208355(2*n)`
-/

namespace A126223.P12523718290471821723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (A004273 n).toNat - A208355 (2 * n)

end

end A126223.P12523718290471821723

namespace A126223

/-- `A063886(A004273(n))-A208355(2*n)` -/
def P12523718290471821723.Spec : Prop :=
  ∀ n, P12523718290471821723.a n = A126223 n

end A126223

/-! ## A126223.P4336104192005296628

`A063886(A004273(n))-A097331(2*n+1)`
-/

namespace A126223.P4336104192005296628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (A004273 n).toNat - A097331 (2 * n + 1)

end

end A126223.P4336104192005296628

namespace A126223

/-- `A063886(A004273(n))-A097331(2*n+1)` -/
def P4336104192005296628.Spec : Prop :=
  ∀ n, P4336104192005296628.a n = A126223 n

end A126223

/-! ## A126223.P8137847536223318732

`A065033(2*n)*A089408(2*n)-A089408(2*n+1)`
-/

namespace A126223.P8137847536223318732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) * A089408 (2 * n) - A089408 (2 * n + 1)

end

end A126223.P8137847536223318732

namespace A126223

/-- `A065033(2*n)*A089408(2*n)-A089408(2*n+1)` -/
def P8137847536223318732.Spec : Prop :=
  ∀ n, P8137847536223318732.a n = A126223 n

end A126223

/-! ## A126223.P17949988780472523220

`A182027(2*n)-gcd(A126930(2*n+1), A126930(2*n))`
-/

namespace A126223.P17949988780472523220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (2 * n) - (Int.gcd (A126930 (2 * n + 1)) (A126930 (2 * n)) : ℤ)

end

end A126223.P17949988780472523220

namespace A126223

/-- `A182027(2*n)-gcd(A126930(2*n+1), A126930(2*n))` -/
def P17949988780472523220.Spec : Prop :=
  ∀ n, P17949988780472523220.a n = A126223 n

end A126223

/-! ## A126223.P16058573266915231297

`A172068(n²)-A000108(n)`
-/

namespace A126223.P16058573266915231297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172068 (n ^ 2) - A000108 n

end

end A126223.P16058573266915231297

namespace A126223

/-- `A172068(n²)-A000108(n)` -/
def P16058573266915231297.Spec : Prop :=
  ∀ n, P16058573266915231297.a n = A126223 n

end A126223

/-! ## A126223.P5273376902056282010

`A237520(n²)-A000108(n)`
-/

namespace A126223.P5273376902056282010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (n ^ 2) - A000108 n

end

end A126223.P5273376902056282010

namespace A126223

/-- `A237520(n²)-A000108(n)` -/
def P5273376902056282010.Spec : Prop :=
  ∀ n, P5273376902056282010.a n = A126223 n

end A126223

/-!
# A126224: Determinant of the n X n matrix in which the entries are 1 through n^2, spiraling inward starting with 1 in the (1,1)-entry.

The programs for A126224, the canonical program `A126224.P140867145007354023` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126224 has offset 1).

The definition of A126224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126224.P140867145007354023

`4*(1-3*(n+1))*(2*(n+1)-5)*(2*(n+1)-3)*a(n-2)/(3*(n+1)-7)` with `a(0)=1, a(1)=-5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126224

/-- `4*(1-3*(n+1))*(2*(n+1)-5)*(2*(n+1)-3)*a(n-2)/(3*(n+1)-7)` -/
def P140867145007354023.Spec : Prop :=
  ∀ n, P140867145007354023.a n = (A126224 (n + 1) : ℚ)

end A126224

/-! ## A126224.P13182014005973072833

`A023999(n+1)*A033999(∑[n])`
-/

namespace A126224.P13182014005973072833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023999 (n + 1) * A033999 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126224.P13182014005973072833

namespace A126224

/-- `A023999(n+1)*A033999(∑[n])` -/
def P13182014005973072833.Spec : Prop :=
  ∀ n, P13182014005973072833.a n = A126224 (n + 1)

end A126224

/-! ## A126224.P13818337574560731927

`∏[A033999(n)]*A023999(n+1)`
-/

namespace A126224.P13818337574560731927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A023999 (n + 1)

end

end A126224.P13818337574560731927

namespace A126224

/-- `∏[A033999(n)]*A023999(n+1)` -/
def P13818337574560731927.Spec : Prop :=
  ∀ n, P13818337574560731927.a n = A126224 (n + 1)

end A126224

/-! ## A126224.P7504282948767694441

`A023999(n+1)*A165326(∑[n]+1)`
-/

namespace A126224.P7504282948767694441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023999 (n + 1) * A165326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126224.P7504282948767694441

namespace A126224

/-- `A023999(n+1)*A165326(∑[n]+1)` -/
def P7504282948767694441.Spec : Prop :=
  ∀ n, P7504282948767694441.a n = A126224 (n + 1)

end A126224

/-! ## A126224.P7762562396667479110

`A023999(n+1)*A057079(A056000(n))`
-/

namespace A126224.P7762562396667479110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023999 (n + 1) * A057079 (A056000 n).toNat

end

end A126224.P7762562396667479110

namespace A126224

/-- `A023999(n+1)*A057079(A056000(n))` -/
def P7762562396667479110.Spec : Prop :=
  ∀ n, P7762562396667479110.a n = A126224 (n + 1)

end A126224

/-! ## A126224.P11513516928743102960

`A023999(n+1)/A033999(A008852(n+1))`
-/

namespace A126224.P11513516928743102960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023999 (n + 1) : ℚ) / (A033999 (A008852 (n + 1)).toNat : ℚ)

end

end A126224.P11513516928743102960

namespace A126224

/-- `A023999(n+1)/A033999(A008852(n+1))` -/
def P11513516928743102960.Spec : Prop :=
  ∀ n, P11513516928743102960.a n = (A126224 (n + 1) : ℚ)

end A126224

/-!
# A126227: Mersenne prime A000668(n+1) mod A000668(n).

The programs for A126227, there is no canonical definition to state claims against.
-/

/-! ## A126227.P7738456762656988142

`A000668(n+2)%A000668(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A126227.P7738456762656988142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000668 (n + 2)) (A000668 (n + 1))

end

end A126227.P7738456762656988142

/-! ## A126227.P15549664870130265551

`(2^A000043(n+2)-1)%(2^A000043(n+1)-1)`
-/

namespace A126227.P15549664870130265551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000043 (n + 2) : ℤ) - 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000043 (n + 1) : ℤ) - 1))

end

end A126227.P15549664870130265551

/-! ## A126227.P1469407317823943029

`A000225(A134458(n+1)%A000043(n+1))`
-/

namespace A126227.P1469407317823943029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Int.tmod (A134458 (n + 1)) (A000043 (n + 1))).toNat

end

end A126227.P1469407317823943029

/-! ## A126227.P1830353530435384394

`A000225(A174265(n+1)%A000043(n+1))`
-/

namespace A126227.P1830353530435384394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Int.tmod (A174265 (n + 1)) (A000043 (n + 1))).toNat

end

end A126227.P1830353530435384394

/-! ## A126227.P17940183074149592327

`A000225(A000043(n+2)%A000043(n+1))`
-/

namespace A126227.P17940183074149592327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Int.tmod (A000043 (n + 2)) (A000043 (n + 1))).toNat

end

end A126227.P17940183074149592327

/-!
# A126228: Odd interprimes divisible by 5.

The programs for A126228, there is no canonical definition to state claims against.
-/

/-! ## A126228.P10548584371251965187

`∩[10*n+5, A072569(n+2)]`
-/

namespace A126228.P10548584371251965187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P10548584371251965187

/-! ## A126228.P1914049352165075312

`∩[10*n+5, A024675(n+2)]`
-/

namespace A126228.P1914049352165075312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P1914049352165075312

/-! ## A126228.P12264337829797116459

`∩[A017329(n), A162800(n)]`
-/

namespace A126228.P12264337829797116459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P12264337829797116459

/-! ## A126228.P4706473578887377396

`∩[A088648(n), A162800(n)]`
-/

namespace A126228.P4706473578887377396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P4706473578887377396

/-! ## A126228.P3675605240112469683

`∩[A024675(n+1), A017329(n)]`
-/

namespace A126228.P3675605240112469683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P3675605240112469683

/-! ## A126228.P6670807900821463877

`∩[A072569(n+1), A017329(n)]`
-/

namespace A126228.P6670807900821463877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P6670807900821463877

/-! ## A126228.P9454185042588296571

`∩[A024675(n+1), A088648(n)]`
-/

namespace A126228.P9454185042588296571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088648 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P9454185042588296571

/-! ## A126228.P13666805606903139659

`∩[A072569(n+1), A088648(n)]`
-/

namespace A126228.P13666805606903139659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088648 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P13666805606903139659

/-! ## A126228.P9527692577800614091

`∩[A162735(n+1), A017329(n)]`
-/

namespace A126228.P9527692577800614091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P9527692577800614091

/-! ## A126228.P4073852713390597144

`∩[A072569(n+1), A277592(n+1)]`
-/

namespace A126228.P4073852713390597144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P4073852713390597144

/-! ## A126228.P13569825242803202967

`∩[A072569(n+1), A121025(n+1)]`
-/

namespace A126228.P13569825242803202967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P13569825242803202967

/-! ## A126228.P4711483522321384842

`∩[A072569(n+1), A008587(n)]`
-/

namespace A126228.P4711483522321384842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P4711483522321384842

/-! ## A126228.P17174841054927147363

`∩[A072569(n+1), A008706(n)]`
-/

namespace A126228.P17174841054927147363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P17174841054927147363

/-! ## A126228.P7270089984603270518

`∩[A072569(n+1), A135042(n)]`
-/

namespace A126228.P7270089984603270518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P7270089984603270518

/-! ## A126228.P12075262019508488391

`∩[A072569(n+1), A168101(n)]`
-/

namespace A126228.P12075262019508488391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P12075262019508488391

/-! ## A126228.P1764504333830161138

`∩[A072569(n+1), A167179(n+1)]`
-/

namespace A126228.P1764504333830161138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P1764504333830161138

/-! ## A126228.P10894475249173421431

`∩[A072569(n+1), A335365(n+1)]`
-/

namespace A126228.P10894475249173421431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P10894475249173421431

/-! ## A126228.P616346076086512494

`∩[A072569(n+1), A357778(n+1)]`
-/

namespace A126228.P616346076086512494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P616346076086512494

/-! ## A126228.P11206213223130492022

`∩[A008592(2*n+1), A001043(n+2)]/2`
-/

namespace A126228.P11206213223130492022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A126228.P11206213223130492022

/-!
# A126229: Odd interprimes divisible by 7.

The programs for A126229, the canonical program `A126229.P16729156060540235766` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126229 has offset 1).

The definition of A126229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126229.P175158741082342599

`∩[A072569(n+1), A147587(n)]`
-/

namespace A126229.P175158741082342599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126229.P175158741082342599

namespace A126229

/-- `∩[A072569(n+1), A147587(n)]` -/
def P175158741082342599.Spec : Prop :=
  ∀ n, (P175158741082342599.a n : ℤ) = A126229 (n + 1)

end A126229

/-! ## A126229.P6433985627949967342

`∩[A147587(n), A162800(n)]`
-/

namespace A126229.P6433985627949967342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126229.P6433985627949967342

namespace A126229

/-- `∩[A147587(n), A162800(n)]` -/
def P6433985627949967342.Spec : Prop :=
  ∀ n, (P6433985627949967342.a n : ℤ) = A126229 (n + 1)

end A126229

/-! ## A126229.P16942419995795085382

`∩[A024675(n+1), A147587(n)]`
-/

namespace A126229.P16942419995795085382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126229.P16942419995795085382

namespace A126229

/-- `∩[A024675(n+1), A147587(n)]` -/
def P16942419995795085382.Spec : Prop :=
  ∀ n, (P16942419995795085382.a n : ℤ) = A126229 (n + 1)

end A126229

/-! ## A126229.P3389819440531310907

`∩[A162735(n+1), A147587(n)]`
-/

namespace A126229.P3389819440531310907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126229.P3389819440531310907

namespace A126229

/-- `∩[A162735(n+1), A147587(n)]` -/
def P3389819440531310907.Spec : Prop :=
  ∀ n, (P3389819440531310907.a n : ℤ) = A126229 (n + 1)

end A126229

/-! ## A126229.P16729156060540235766

`record[A000265(7*A165298(n+1))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A126229

/-- `record[A000265(7*A165298(n+1))]` -/
def P16729156060540235766.Spec : Prop :=
  ∀ n, P16729156060540235766.a n = A126229 (n + 1)

theorem P16729156060540235766.correct : P16729156060540235766.Spec := by
  intro n
  simp only [A126229, Nat.add_sub_cancel]

end A126229

/-! ## A126229.P14240681899355294157

`∩[A145025(n+1), A147587(n)]`
-/

namespace A126229.P14240681899355294157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126229.P14240681899355294157

namespace A126229

/-- `∩[A145025(n+1), A147587(n)]` -/
def P14240681899355294157.Spec : Prop :=
  ∀ n, (P14240681899355294157.a n : ℤ) = A126229 (n + 1)

end A126229

/-! ## A126229.P5065125381732360449

`∩[A072569(n+1), A008589(n)]`
-/

namespace A126229.P5065125381732360449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126229.P5065125381732360449

namespace A126229

/-- `∩[A072569(n+1), A008589(n)]` -/
def P5065125381732360449.Spec : Prop :=
  ∀ n, (P5065125381732360449.a n : ℤ) = A126229 (n + 1)

end A126229

/-! ## A126229.P3000723078591293581

`∩[A008589(2*n+1), A024675(n+2)]`
-/

namespace A126229.P3000723078591293581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126229.P3000723078591293581

namespace A126229

/-- `∩[A008589(2*n+1), A024675(n+2)]` -/
def P3000723078591293581.Spec : Prop :=
  ∀ n, (P3000723078591293581.a n : ℤ) = A126229 (n + 1)

end A126229

/-! ## A126229.P14305983632440065672

`record[A093178(7*A165298(n+1))]`
-/

namespace A126229.P14305983632440065672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (7 * A165298 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126229.P14305983632440065672

namespace A126229

/-- `record[A093178(7*A165298(n+1))]` -/
def P14305983632440065672.Spec : Prop :=
  ∀ n, P14305983632440065672.a n = A126229 (n + 1)

end A126229

/-! ## A126229.P12951812137830011018

`∩[A072569(n+1), A316991(n+1)]`
-/

namespace A126229.P12951812137830011018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126229.P12951812137830011018

namespace A126229

/-- `∩[A072569(n+1), A316991(n+1)]` -/
def P12951812137830011018.Spec : Prop :=
  ∀ n, (P12951812137830011018.a n : ℤ) = A126229 (n + 1)

end A126229

/-!
# A126230: Odd interprimes divisible by 11.

The programs for A126230, there is no canonical definition to state claims against.
-/

/-! ## A126230.P13060830671227857084

`∩[11*n, A072569(n+2)]`
-/

namespace A126230.P13060830671227857084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126230.P13060830671227857084

/-! ## A126230.P13625279801784099987

`∩[A072569(n+1), A008593(n)]`
-/

namespace A126230.P13625279801784099987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126230.P13625279801784099987

/-! ## A126230.P4648369054322658787

`∩[A072569(n+1), A314159(n)]`
-/

namespace A126230.P4648369054322658787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314159 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126230.P4648369054322658787

/-! ## A126230.P17857895093588826099

`∩[A072569(n+1), A301708(n)]`
-/

namespace A126230.P17857895093588826099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126230.P17857895093588826099

/-! ## A126230.P14982995908664834695

`∩[A072569(n+1), A315446(n)]`
-/

namespace A126230.P14982995908664834695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315446 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126230.P14982995908664834695

/-!
# A126231: Odd interprimes divisible by 19.

The programs for A126231, there is no canonical definition to state claims against.
-/

/-! ## A126231.P14606811340677459492

`∩[19*n, A072569(n+2)]`
-/

namespace A126231.P14606811340677459492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126231.P14606811340677459492

/-! ## A126231.P3930526774204575393

`∩[A072569(n+1), A008601(n)]`
-/

namespace A126231.P3930526774204575393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126231.P3930526774204575393

/-! ## A126231.P8794540454992182147

`∩[A008601(A020742(n)), A162800(n)]`
-/

namespace A126231.P8794540454992182147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 (A020742 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126231.P8794540454992182147

/-! ## A126231.P5778931017910044380

`∩[A024675(n+1), A008601(A004273(n))]`
-/

namespace A126231.P5778931017910044380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 (A004273 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126231.P5778931017910044380

/-! ## A126231.P10058625115914014676

`∩[A024675(n+1), A008601(A020742(n))]`
-/

namespace A126231.P10058625115914014676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 (A020742 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126231.P10058625115914014676

/-!
# A126232: Number of functions f:{1,2,...,n}->{1,2,...,n} such that Im(f) contains 5 fixed elements.

The programs for A126232, there is no canonical definition to state claims against.
-/

/-! ## A126232.P10018992141747942658

`A174551(eq[5, A002262(n)])`
-/

namespace A126232.P10018992141747942658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126232.P10018992141747942658

/-! ## A126232.P8557117288676705590

`A174551(eq[5, A141169(n)])`
-/

namespace A126232.P8557117288676705590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126232.P8557117288676705590

/-! ## A126232.P16234169131251418019

`A174551(eq[6, A002260(n+1)])`
-/

namespace A126232.P16234169131251418019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126232.P16234169131251418019

/-! ## A126232.P2559545214767842347

`A174551(eq[6, abs(A140756(n+1))])`
-/

namespace A126232.P2559545214767842347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126232.P2559545214767842347

/-! ## A126232.P225877772550483197

`A174551(A061579(Δ[A026054(n+3)]))`
-/

namespace A126232.P225877772550483197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (A061579 (f1 (n + 1) - f1 n).toNat).toNat

end

end A126232.P225877772550483197

/-!
# A126233: Smallest number k such that (prime(k+1)+prime(k))/2 is odd and divisible by n-th odd prime.

The programs for A126233, there is no canonical definition to state claims against.
-/

/-! ## A126233.P13571093300735258258

`A000720(A124622(n+1))`
-/

namespace A126233.P13571093300735258258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124622 (n + 1)).toNat

end

end A126233.P13571093300735258258

/-! ## A126233.P15437154354698791556

`A230980(A124622(n+1)+1)`
-/

namespace A126233.P15437154354698791556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A124622 (n + 1) + 1).toNat

end

end A126233.P15437154354698791556

/-! ## A126233.P8698830398900257210

`A062602(A124622(n+1)+2)`
-/

namespace A126233.P8698830398900257210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A124622 (n + 1) + 2).toNat

end

end A126233.P8698830398900257210

/-! ## A126233.P12157971808846611815

`A224712(A124622(n+1)+2)`
-/

namespace A126233.P12157971808846611815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (A124622 (n + 1) + 2).toNat

end

end A126233.P12157971808846611815

/-!
# A126234: a(0)=0; a(n)=a(n-1)-n, if a(n-1)>2n; otherwise a(n)=a(n-1)+n.

The programs for A126234, the canonical program `A126234.P4995057767083431983` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126234 has offset 0).

The definition of A126234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126234.P4995057767083431983

`1-(1-a(n-1))%(2*n)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126234

/-- `1-(1-a(n-1))%(2*n)+n` -/
def P4995057767083431983.Spec : Prop :=
  ∀ n, P4995057767083431983.a n = A126234 n

theorem P4995057767083431983.correct : P4995057767083431983.Spec := by
  intro n
  simp only [A126234]

end A126234

/-! ## A126234.P2713182655460900508

`∑[n*A325931(A342954(n+1))]`
-/

namespace A126234.P2713182655460900508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325931 (A342954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126234.P2713182655460900508

namespace A126234

/-- `∑[n*A325931(A342954(n+1))]` -/
def P2713182655460900508.Spec : Prop :=
  ∀ n, P2713182655460900508.a n = A126234 n

end A126234

/-! ## A126234.P15369869728931374941

`abs(∑[n*A033999(A095008(n+2))])`
-/

namespace A126234.P15369869728931374941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033999 (A095008 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A126234.P15369869728931374941

namespace A126234

/-- `abs(∑[n*A033999(A095008(n+2))])` -/
def P15369869728931374941.Spec : Prop :=
  ∀ n, P15369869728931374941.a n = A126234 n

end A126234

/-! ## A126234.P2138172952909246790

`∑[A032520(n)/A325931(A342954(n+1))]`
-/

namespace A126234.P2138172952909246790
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032520 n : ℚ) / (A325931 (A342954 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126234.P2138172952909246790

namespace A126234

/-- `∑[A032520(n)/A325931(A342954(n+1))]` -/
def P2138172952909246790.Spec : Prop :=
  ∀ n, P2138172952909246790.a n = (A126234 n : ℚ)

end A126234

/-! ## A126234.P5110975412045856355

`∑[A328447(n)/A325931(A342954(n+1))]`
-/

namespace A126234.P5110975412045856355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328447 n : ℚ) / (A325931 (A342954 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126234.P5110975412045856355

namespace A126234

/-- `∑[A328447(n)/A325931(A342954(n+1))]` -/
def P5110975412045856355.Spec : Prop :=
  ∀ n, P5110975412045856355.a n = (A126234 n : ℚ)

end A126234

/-!
# A126235: Minimum length of a codeword in Huffman encoding of n symbols, where the k-th symbol has frequency k.

The programs for A126235, the canonical program `A126235.P11423296502349282390` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126235 has offset 2).

The definition of A126235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126235.P8173131279376219170

`ceil(log2((n+4)/3))`
-/

namespace A126235.P8173131279376219170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((n + 4 : ℚ) / 3 : ℝ)⌉

end

end A126235.P8173131279376219170

namespace A126235

/-- `ceil(log2((n+4)/3))` -/
def P8173131279376219170.Spec : Prop :=
  ∀ n, P8173131279376219170.a n = A126235 (n + 2)

end A126235

/-! ## A126235.P11423296502349282390

`floor(log2(∑[gcd(3, n)-1]))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126235

/-- `floor(log2(∑[gcd(3, n)-1]))` -/
def P11423296502349282390.Spec : Prop :=
  ∀ n, (P11423296502349282390.a n : ℤ) = A126235 (n + 2)

theorem P11423296502349282390.correct : P11423296502349282390.Spec := by
  intro n
  simp only [A126235, Nat.add_sub_cancel]

end A126235

/-! ## A126235.P2347970681641639280

`dr(ceil(γ-log2(n+3)))`
-/

namespace A126235.P2347970681641639280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌈Real.eulerMascheroniConstant - Real.logb 2 (n + 3 : ℝ)⌉

end

end A126235.P2347970681641639280

namespace A126235

/-- `dr(ceil(γ-log2(n+3)))` -/
def P2347970681641639280.Spec : Prop :=
  ∀ n, (P2347970681641639280.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P11823483229723028945

`∑[char[lcm(3, 2^n)-3]]`
-/

namespace A126235.P11823483229723028945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (2 ^ n) : ℤ) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126235.P11823483229723028945

namespace A126235

/-- `∑[char[lcm(3, 2^n)-3]]` -/
def P11823483229723028945.Spec : Prop :=
  ∀ n, (P11823483229723028945.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P12863253029490524080

`floor(log2(∑[(n²+2)%3]))`
-/

namespace A126235.P12863253029490524080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 2) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126235.P12863253029490524080

namespace A126235

/-- `floor(log2(∑[(n²+2)%3]))` -/
def P12863253029490524080.Spec : Prop :=
  ∀ n, (P12863253029490524080.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P11266817895346440675

`abs(ceil(log2((n-tan(5))/3)))`
-/

namespace A126235.P11266817895346440675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.logb 2 (((n : ℝ) - Real.tan (5 : ℝ)) / 3)⌉|

end

end A126235.P11266817895346440675

namespace A126235

/-- `abs(ceil(log2((n-tan(5))/3)))` -/
def P11266817895346440675.Spec : Prop :=
  ∀ n, P11266817895346440675.a n = A126235 (n + 2)

end A126235

/-! ## A126235.P13865635125868334686

`∑[char[3*and(n, -(n+2))]]`
-/

namespace A126235.P13865635125868334686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (n : ℤ) (-(n + 2 : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126235.P13865635125868334686

namespace A126235

/-- `∑[char[3*and(n, -(n+2))]]` -/
def P13865635125868334686.Spec : Prop :=
  ∀ n, (P13865635125868334686.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P16624242662072834385

`(floor(log2(n/3+1))+1)%30`
-/

namespace A126235.P16624242662072834385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊Real.logb 2 ((n : ℚ) / 3 + 1 : ℝ)⌋ + 1) 30

end

end A126235.P16624242662072834385

namespace A126235

/-- `(floor(log2(n/3+1))+1)%30` -/
def P16624242662072834385.Spec : Prop :=
  ∀ n, P16624242662072834385.a n = A126235 (n + 2)

end A126235

/-! ## A126235.P5896826831355995741

`∑[char[2*a(n-1)+3]]` with `a(0)=0`
-/

namespace A126235.P5896826831355995741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  2 * f2 (n - 1) + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126235.P5896826831355995741

namespace A126235

/-- `∑[char[2*a(n-1)+3]]` -/
def P5896826831355995741.Spec : Prop :=
  ∀ n, (P5896826831355995741.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P9840915402042074240

`∑[char[∑[2*a(n-1)]]]` with `a(0)=0, a(1)=3`
-/

namespace A126235.P9840915402042074240
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126235.P9840915402042074240

namespace A126235

/-- `∑[char[∑[2*a(n-1)]]]` -/
def P9840915402042074240.Spec : Prop :=
  ∀ n, (P9840915402042074240.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P9419188812235185883

`∑{digits}[floor(log2(n/3+1))+1, #]`
-/

namespace A126235.P9419188812235185883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((n : ℚ) / 3 + 1 : ℝ)⌋ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A126235.P9419188812235185883

namespace A126235

/-- `∑{digits}[floor(log2(n/3+1))+1, #]` -/
def P9419188812235185883.Spec : Prop :=
  ∀ n, (P9419188812235185883.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P16078517864151468733

`∑[char[3*xor(n, n+1)]]+1`
-/

namespace A126235.P16078517864151468733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.xor n (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A126235.P16078517864151468733

namespace A126235

/-- `∑[char[3*xor(n, n+1)]]+1` -/
def P16078517864151468733.Spec : Prop :=
  ∀ n, (P16078517864151468733.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P12736458839092228866

`floor(log2(∑[∑[n+1]%3]))+1`
-/

namespace A126235.P12736458839092228866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A126235.P12736458839092228866

namespace A126235

/-- `floor(log2(∑[∑[n+1]%3]))+1` -/
def P12736458839092228866.Spec : Prop :=
  ∀ n, (P12736458839092228866.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P5487406817485766032

`∑[char[3*(n-and(n, n+1))]]`
-/

namespace A126235.P5487406817485766032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - (Nat.land n (n + 1) : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126235.P5487406817485766032

namespace A126235

/-- `∑[char[3*(n-and(n, n+1))]]` -/
def P5487406817485766032.Spec : Prop :=
  ∀ n, (P5487406817485766032.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P5777380950786554547

`∑[char[3*(or(n, n-1)-n)]]`
-/

namespace A126235.P5777380950786554547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (Int.lor (n : ℤ) ((n : ℤ) - 1) - (n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126235.P5777380950786554547

namespace A126235

/-- `∑[char[3*(or(n, n-1)-n)]]` -/
def P5777380950786554547.Spec : Prop :=
  ∀ n, (P5777380950786554547.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P627582472408027362

`∑[char[a(n-1)+a(n-1)+3]]` with `a(0)=0`
-/

namespace A126235.P627582472408027362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126235.P627582472408027362

namespace A126235

/-- `∑[char[a(n-1)+a(n-1)+3]]` -/
def P627582472408027362.Spec : Prop :=
  ∀ n, (P627582472408027362.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P18131457748621557249

`∑{e}[3-(n+3)%a(n-1)+n, #]` with `a(0)=3`
-/

namespace A126235.P18131457748621557249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  3 - Int.tmod (n + 3 : ℤ) (f1 (n - 1)) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A126235.P18131457748621557249

namespace A126235

/-- `∑{e}[3-(n+3)%a(n-1)+n, #]` -/
def P18131457748621557249.Spec : Prop :=
  ∀ n, (P18131457748621557249.a n : ℤ) = A126235 (n + 2)

end A126235

/-! ## A126235.P10945261873173961221

`A099396(n+3)`
-/

namespace A126235.P10945261873173961221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099396 (n + 3)

end

end A126235.P10945261873173961221

namespace A126235

/-- `A099396(n+3)` -/
def P10945261873173961221.Spec : Prop :=
  ∀ n, P10945261873173961221.a n = A126235 (n + 2)

end A126235

/-! ## A126235.P5740148110456163819

`∑[A099395(n+3)]`
-/

namespace A126235.P5740148110456163819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099395 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126235.P5740148110456163819

namespace A126235

/-- `∑[A099395(n+3)]` -/
def P5740148110456163819.Spec : Prop :=
  ∀ n, P5740148110456163819.a n = A126235 (n + 2)

end A126235

/-!
# A126236: Maximum length of a codeword in Huffman encoding of n symbols, where the k-th symbol has frequency k.

The programs for A126236, there is no canonical definition to state claims against.
-/

/-! ## A126236.P16095218615405745975

`a(floor(n/2)-1)+2` with `a(0)=1, a(1)=2`
-/

namespace A126236.P16095218615405745975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - 1).toNat + 2

end

end A126236.P16095218615405745975

/-! ## A126236.P7612706728704852566

`∑[char[2*xor(n, n-1)-n]]`
-/

namespace A126236.P7612706728704852566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) ((n : ℤ) - 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126236.P7612706728704852566

/-! ## A126236.P9970046842220894013

`abs(a(∑[(n-1)%2])+2)` with `a(0)=1, a(1)=2`
-/

namespace A126236.P9970046842220894013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A126236.P9970046842220894013

/-! ## A126236.P7247629321752873480

`∑[char[2*(a(n-2)+1)]]` with `a(0)=0, a(1)=1`
-/

namespace A126236.P7247629321752873480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * (f2 (n - 2) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126236.P7247629321752873480

/-! ## A126236.P18247415574337951845

`∑[char[∑[2*a(n-2)]]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A126236.P18247415574337951845
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f3 =>
  2 * f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126236.P18247415574337951845

/-! ## A126236.P9707729683904826211

`∑[val(∑[xor(n, n+1)+1], n+2)]`
-/

namespace A126236.P9707729683904826211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f2 j) (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126236.P9707729683904826211

/-! ## A126236.P15867109427039839758

`∑[abs(A187036(n))]`
-/

namespace A126236.P15867109427039839758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187036 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126236.P15867109427039839758

/-! ## A126236.P9917624787938709802

`floor(log2(A080075(n+1)))`
-/

namespace A126236.P9917624787938709802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A080075 (n + 1)).toNat

end

end A126236.P9917624787938709802

/-!
# A126237: Length of row n in table A126014.

The programs for A126237, the canonical program `A126237.P15877421361932700042` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126237 has offset 3).

The definition of A126237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126237.P15945847028676936236

`floor(log2(A132340(n+2)))`
-/

namespace A126237.P15945847028676936236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A132340 (n + 2)).toNat

end

end A126237.P15945847028676936236

namespace A126237

/-- `floor(log2(A132340(n+2)))` -/
def P15945847028676936236.Spec : Prop :=
  ∀ n, (P15945847028676936236.a n : ℤ) = A126237 (n + 3)

end A126237

/-! ## A126237.P246242954675210469

`ceil(log2(A162751(n+3)))`
-/

namespace A126237.P246242954675210469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A162751 (n + 3) : ℝ)⌉

end

end A126237.P246242954675210469

namespace A126237

/-- `ceil(log2(A162751(n+3)))` -/
def P246242954675210469.Spec : Prop :=
  ∀ n, P246242954675210469.a n = A126237 (n + 3)

end A126237

/-! ## A126237.P10597971687565975533

`floor(log2(A081241(n+3)-1))`
-/

namespace A126237.P10597971687565975533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A081241 (n + 3) - 1).toNat

end

end A126237.P10597971687565975533

namespace A126237

/-- `floor(log2(A081241(n+3)-1))` -/
def P10597971687565975533.Spec : Prop :=
  ∀ n, (P10597971687565975533.a n : ℤ) = A126237 (n + 3)

end A126237

/-! ## A126237.P6938998145888438049

`ceil(log2(A180200(n+3)/2))`
-/

namespace A126237.P6938998145888438049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((A180200 (n + 3) : ℚ) / 2 : ℝ)⌉

end

end A126237.P6938998145888438049

namespace A126237

/-- `ceil(log2(A180200(n+3)/2))` -/
def P6938998145888438049.Spec : Prop :=
  ∀ n, P6938998145888438049.a n = A126237 (n + 3)

end A126237

/-! ## A126237.P15877421361932700042

`a(A004525(n)-2)+1` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126237

/-- `a(A004525(n)-2)+1` -/
def P15877421361932700042.Spec : Prop :=
  ∀ n, (P15877421361932700042.a n : ℤ) = A126237 (n + 3)

theorem P15877421361932700042.correct : P15877421361932700042.Spec := by
  intro n
  simp only [A126237, Nat.add_sub_cancel]

end A126237

/-! ## A126237.P17908170607719553295

`A000523(A132340(n+2))`
-/

namespace A126237.P17908170607719553295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A132340 (n + 2)).toNat

end

end A126237.P17908170607719553295

namespace A126237

/-- `A000523(A132340(n+2))` -/
def P17908170607719553295.Spec : Prop :=
  ∀ n, P17908170607719553295.a n = A126237 (n + 3)

end A126237

/-! ## A126237.P15172016143103219258

`A029837(A162751(n+3))`
-/

namespace A126237.P15172016143103219258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A162751 (n + 3)).toNat

end

end A126237.P15172016143103219258

namespace A126237

/-- `A029837(A162751(n+3))` -/
def P15172016143103219258.Spec : Prop :=
  ∀ n, P15172016143103219258.a n = A126237 (n + 3)

end A126237

/-! ## A126237.P8191282119119035018

`A000523(A081241(n+3)-1)`
-/

namespace A126237.P8191282119119035018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A081241 (n + 3) - 1).toNat

end

end A126237.P8191282119119035018

namespace A126237

/-- `A000523(A081241(n+3)-1)` -/
def P8191282119119035018.Spec : Prop :=
  ∀ n, P8191282119119035018.a n = A126237 (n + 3)

end A126237

/-! ## A126237.P2784353212875562217

`A070939(A162751(n+3)-1)`
-/

namespace A126237.P2784353212875562217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A162751 (n + 3) - 1).toNat

end

end A126237.P2784353212875562217

namespace A126237

/-- `A070939(A162751(n+3)-1)` -/
def P2784353212875562217.Spec : Prop :=
  ∀ n, P2784353212875562217.a n = A126237 (n + 3)

end A126237

/-! ## A126237.P6237054673263965714

`A000523(A059893(n+4)-2)`
-/

namespace A126237.P6237054673263965714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A059893 (n + 4) - 2).toNat

end

end A126237.P6237054673263965714

namespace A126237

/-- `A000523(A059893(n+4)-2)` -/
def P6237054673263965714.Spec : Prop :=
  ∀ n, P6237054673263965714.a n = A126237 (n + 3)

end A126237

/-! ## A126237.P9306221357223535381

`A000523(A080541(n+4)-2)`
-/

namespace A126237.P9306221357223535381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A080541 (n + 4) - 2).toNat

end

end A126237.P9306221357223535381

namespace A126237

/-- `A000523(A080541(n+4)-2)` -/
def P9306221357223535381.Spec : Prop :=
  ∀ n, P9306221357223535381.a n = A126237 (n + 3)

end A126237

/-! ## A126237.P4226102887948953519

`A059939(A346301(A081241(n+3)))`
-/

namespace A126237.P4226102887948953519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A346301 (A081241 (n + 3)).toNat).toNat

end

end A126237.P4226102887948953519

namespace A126237

/-- `A059939(A346301(A081241(n+3)))` -/
def P4226102887948953519.Spec : Prop :=
  ∀ n, P4226102887948953519.a n = A126237 (n + 3)

end A126237

/-! ## A126237.P11109738274185076071

`A029837(A004526(A059893(n+4)))`
-/

namespace A126237.P11109738274185076071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A004526 (A059893 (n + 4)).toNat).toNat

end

end A126237.P11109738274185076071

namespace A126237

/-- `A029837(A004526(A059893(n+4)))` -/
def P11109738274185076071.Spec : Prop :=
  ∀ n, P11109738274185076071.a n = A126237 (n + 3)

end A126237

/-!
# A126238: Primes of the form p = prime(k) = (prime(k+3)+prime(k-1))/2.

The programs for A126238, there is no canonical definition to state claims against.
-/

/-! ## A126238.P17905224499975596230

`A000040(A000720(A126239(n+1)-1))`
-/

namespace A126238.P17905224499975596230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A126239 (n + 1) - 1).toNat).toNat

end

end A126238.P17905224499975596230

/-! ## A126238.P2011026032445660455

`A300840(or(1, A126239(n+1)))`
-/

namespace A126238.P2011026032445660455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (Int.lor 1 (A126239 (n + 1))).toNat

end

end A126238.P2011026032445660455

/-!
# A126239: Primes of the form p = prime(k+1) such that prime(k) = (prime(k+3)+prime(k-1))/2.

The programs for A126239, there is no canonical definition to state claims against.
-/

/-! ## A126239.P1076227090452673382

`A151800(A126238(n+1))`
-/

namespace A126239.P1076227090452673382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A126238 (n + 1)).toNat

end

end A126239.P1076227090452673382

/-! ## A126239.P14431913526918950378

`A045344(∑{d}[A126238(n+1), A000720(#)])`
-/

namespace A126239.P14431913526918950378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A126239.P14431913526918950378

/-! ## A126239.P7616833472933067231

`A000040(∑{d}[A126238(n+1), A000720(#)]+1)`
-/

namespace A126239.P7616833472933067231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d + 1).toNat

end

end A126239.P7616833472933067231

/-! ## A126239.P4771002010220547755

`∑{d}[A126238(n+1), A344587(#)]`
-/

namespace A126239.P4771002010220547755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344587 d

end

end A126239.P4771002010220547755

/-!
# A126240: Primes p such that p = prime(n+3)=(prime(n+6)+prime(n))/2.

The programs for A126240, there is no canonical definition to state claims against.
-/

/-! ## A126240.P8089017187166519741

`A038872(A014224(n+1)^A001676(n+1))`
-/

namespace A126240.P8089017187166519741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (SequenceMachineLib.roundAway ((A014224 (n + 1) : ℚ) ^ (A001676 (n + 1) : ℤ))).toNat

end

end A126240.P8089017187166519741

/-!
# A126241: Dropping time of n in the 3n+1 problem (or the Collatz problem). Let T(n):=n/2 if n is even, (3n+1)/2 otherwise (A014682). Let a(n) be the smallest integer k such that T^(k)(n)<n, where T^(k) is the k-th iterate, or infinity otherwise; a(n) is called the dropping time of n.

The programs for A126241, there is no canonical definition to state claims against.
-/

/-! ## A126241.P9747199727553844590

`ceil(A102419(n+1)/(1+log(2)/log(3)))`
-/

namespace A126241.P9747199727553844590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A102419 (n + 1) : ℝ) / (1 + Real.log (2 : ℝ) / Real.log (3 : ℝ))⌉

end

end A126241.P9747199727553844590

/-! ## A126241.P6123659337138577122

`A057363(A074473(n+1))`
-/

namespace A126241.P6123659337138577122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A074473 (n + 1)).toNat

end

end A126241.P6123659337138577122

/-! ## A126241.P7762306643057161306

`A057363(A102419(n+1)+1)`
-/

namespace A126241.P7762306643057161306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A102419 (n + 1) + 1).toNat

end

end A126241.P7762306643057161306

/-! ## A126241.P13525235737903879607

`A085238(A102419(n+1)+1)`
-/

namespace A126241.P13525235737903879607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085238 (A102419 (n + 1) + 1).toNat

end

end A126241.P13525235737903879607

/-! ## A126241.P5494272688897484359

`A005378(A102419(n+1)+1)-1`
-/

namespace A126241.P5494272688897484359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A102419 (n + 1) + 1).toNat - 1

end

end A126241.P5494272688897484359

/-! ## A126241.P9609671673483269227

`A057427(n)*A171975(A074473(n+1))`
-/

namespace A126241.P9609671673483269227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A171975 (A074473 (n + 1)).toNat

end

end A126241.P9609671673483269227

/-!
# A126242: Prime numbers p such that p = prime(n+4)=(prime(n+8)+prime(n))/2.

The programs for A126242, there is no canonical definition to state claims against.
-/

/-! ## A126242.P18374637708717404717

`p?[C(A311514(n), A311532(n))]`
-/

namespace A126242.P18374637708717404717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A311514 n).toNat (A311532 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A126242.P18374637708717404717

/-!
# A126244: 

The programs for A126244, there is no canonical definition to state claims against.
-/

/-! ## A126244.P12588464997182745305

`A001359(n+1)!`
-/

namespace A126244.P12588464997182745305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001359 (n + 1)).toNat

end

end A126244.P12588464997182745305

/-! ## A126244.P5143545720725074256

`(A014574(n+1)-1)!`
-/

namespace A126244.P5143545720725074256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A014574 (n + 1) - 1).toNat

end

end A126244.P5143545720725074256

/-! ## A126244.P10176125509254130526

`p?[A000040(n+1)-2]!`
-/

namespace A126244.P10176125509254130526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A126244.P10176125509254130526

/-!
# A126245: 

The programs for A126245, there is no canonical definition to state claims against.
-/

/-! ## A126245.P11238321113589691039

`(A014574(n+1)+1)!`
-/

namespace A126245.P11238321113589691039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A014574 (n + 1) + 1).toNat

end

end A126245.P11238321113589691039

/-!
# A126246: a(n) is the number of Fibonacci numbers among (F(1),F(2),F(3),...,F(n)) which are coprime to F(n), where F(n) is the n-th Fibonacci number.

The programs for A126246, the canonical program `A126246.P16910619274962634977` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126246 has offset 1).

The definition of A126246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126246.P9176969530345055646

`∑{d}[n+1, #*A359591((n+1)/#)]`
-/

namespace A126246.P9176969530345055646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A359591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P9176969530345055646

namespace A126246

/-- `∑{d}[n+1, #*A359591((n+1)/#)]` -/
def P9176969530345055646.Spec : Prop :=
  ∀ n, P9176969530345055646.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P975169859586379131

`A326305(n+1)+A319998(n+1)`
-/

namespace A126246.P975169859586379131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326305 (n + 1) + A319998 (n + 1)

end

end A126246.P975169859586379131

namespace A126246

/-- `A326305(n+1)+A319998(n+1)` -/
def P975169859586379131.Spec : Prop :=
  ∀ n, P975169859586379131.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P15819513737461367783

`Δ[A002088(n)]+A319998(n+1)/2`
-/

namespace A126246.P15819513737461367783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A319998 (n + 1) : ℚ) / 2

end

end A126246.P15819513737461367783

namespace A126246

/-- `Δ[A002088(n)]+A319998(n+1)/2` -/
def P15819513737461367783.Spec : Prop :=
  ∀ n, P15819513737461367783.a n = (A126246 (n + 1) : ℚ)

end A126246

/-! ## A126246.P17675919408217576604

`Δ[A005728(n)]+A319998(n+1)/2`
-/

namespace A126246.P17675919408217576604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A319998 (n + 1) : ℚ) / 2

end

end A126246.P17675919408217576604

namespace A126246

/-- `Δ[A005728(n)]+A319998(n+1)/2` -/
def P17675919408217576604.Spec : Prop :=
  ∀ n, P17675919408217576604.a n = (A126246 (n + 1) : ℚ)

end A126246

/-! ## A126246.P6941967287313704651

`A000010(n+1)+A319998(n+1)/2`
-/

namespace A126246.P6941967287313704651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) + (A319998 (n + 1) : ℚ) / 2

end

end A126246.P6941967287313704651

namespace A126246

/-- `A000010(n+1)+A319998(n+1)/2` -/
def P6941967287313704651.Spec : Prop :=
  ∀ n, P6941967287313704651.a n = (A126246 (n + 1) : ℚ)

end A126246

/-! ## A126246.P402638442968721314

`2*A000010(n+1)-A326305(n+1)`
-/

namespace A126246.P402638442968721314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) - A326305 (n + 1)

end

end A126246.P402638442968721314

namespace A126246

/-- `2*A000010(n+1)-A326305(n+1)` -/
def P402638442968721314.Spec : Prop :=
  ∀ n, P402638442968721314.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P18432619329836143515

`(A345082(n+1)+A000010(n+1))/2`
-/

namespace A126246.P18432619329836143515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345082 (n + 1) + A000010 (n + 1) : ℚ) / 2

end

end A126246.P18432619329836143515

namespace A126246

/-- `(A345082(n+1)+A000010(n+1))/2` -/
def P18432619329836143515.Spec : Prop :=
  ∀ n, P18432619329836143515.a n = (A126246 (n + 1) : ℚ)

end A126246

/-! ## A126246.P13606650204796061114

`A345082(n+1)-A319998(n+1)/2`
-/

namespace A126246.P13606650204796061114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345082 (n + 1) : ℚ) - (A319998 (n + 1) : ℚ) / 2

end

end A126246.P13606650204796061114

namespace A126246

/-- `A345082(n+1)-A319998(n+1)/2` -/
def P13606650204796061114.Spec : Prop :=
  ∀ n, P13606650204796061114.a n = (A126246 (n + 1) : ℚ)

end A126246

/-! ## A126246.P13783823157073502061

`∑{d}[n+1, A000010(#)*A019590((n+1)/#)]`
-/

namespace A126246.P13783823157073502061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A019590 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P13783823157073502061

namespace A126246

/-- `∑{d}[n+1, A000010(#)*A019590((n+1)/#)]` -/
def P13783823157073502061.Spec : Prop :=
  ∀ n, P13783823157073502061.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P5643314690502122628

`∑{d}[n+1, A007432(#)*A069735((n+1)/#)]`
-/

namespace A126246.P5643314690502122628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A069735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P5643314690502122628

namespace A126246

/-- `∑{d}[n+1, A007432(#)*A069735((n+1)/#)]` -/
def P5643314690502122628.Spec : Prop :=
  ∀ n, P5643314690502122628.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P12671742992725753735

`∑{d}[n+1, A008683(#)*A080512((n+1)/#)]`
-/

namespace A126246.P12671742992725753735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A080512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P12671742992725753735

namespace A126246

/-- `∑{d}[n+1, A008683(#)*A080512((n+1)/#)]` -/
def P12671742992725753735.Spec : Prop :=
  ∀ n, P12671742992725753735.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P9888131386244664996

`∑{d}[n+1, A053866(#)*A130107((n+1)/#)]`
-/

namespace A126246.P9888131386244664996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P9888131386244664996

namespace A126246

/-- `∑{d}[n+1, A053866(#)*A130107((n+1)/#)]` -/
def P9888131386244664996.Spec : Prop :=
  ∀ n, P9888131386244664996.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P3568065663257947281

`∑{d}[n+1, A093709(#)*A130107((n+1)/#)]`
-/

namespace A126246.P3568065663257947281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A093709 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P3568065663257947281

namespace A126246

/-- `∑{d}[n+1, A093709(#)*A130107((n+1)/#)]` -/
def P3568065663257947281.Spec : Prop :=
  ∀ n, P3568065663257947281.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P9197124259504735261

`∑{d}[n+1, A063659(#)*A166698((n+1)/#)]`
-/

namespace A126246.P9197124259504735261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A166698 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P9197124259504735261

namespace A126246

/-- `∑{d}[n+1, A063659(#)*A166698((n+1)/#)]` -/
def P9197124259504735261.Spec : Prop :=
  ∀ n, P9197124259504735261.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P16910619274962634977

`∑{d}[n+1, A086831(#)*A214682((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A126246

/-- `∑{d}[n+1, A086831(#)*A214682((n+1)/#)]` -/
def P16910619274962634977.Spec : Prop :=
  ∀ n, P16910619274962634977.a n = A126246 (n + 1)

theorem P16910619274962634977.correct : P16910619274962634977.Spec := by
  intro n
  simp only [A126246, Nat.add_sub_cancel]

end A126246

/-! ## A126246.P7493514750336707190

`∑{d}[n+1, A069517(#)*A326305((n+1)/#)]`
-/

namespace A126246.P7493514750336707190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069517 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P7493514750336707190

namespace A126246

/-- `∑{d}[n+1, A069517(#)*A326305((n+1)/#)]` -/
def P7493514750336707190.Spec : Prop :=
  ∀ n, P7493514750336707190.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P7723305285906045126

`∑{d}[n+1, A285895(#)*A327276((n+1)/#)]`
-/

namespace A126246.P7723305285906045126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A285895 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P7723305285906045126

namespace A126246

/-- `∑{d}[n+1, A285895(#)*A327276((n+1)/#)]` -/
def P7723305285906045126.Spec : Prop :=
  ∀ n, P7723305285906045126.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P3836158886328034228

`∑{d}[n+1, A259445(#)*A361984((n+1)/#)]`
-/

namespace A126246.P3836158886328034228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A259445 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P3836158886328034228

namespace A126246

/-- `∑{d}[n+1, A259445(#)*A361984((n+1)/#)]` -/
def P3836158886328034228.Spec : Prop :=
  ∀ n, P3836158886328034228.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P6878491438676703144

`∑{d}[n+1, A008683(#)*A257143((n+1)/#)]`
-/

namespace A126246.P6878491438676703144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A257143 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A126246.P6878491438676703144

namespace A126246

/-- `∑{d}[n+1, A008683(#)*A257143((n+1)/#)]` -/
def P6878491438676703144.Spec : Prop :=
  ∀ n, P6878491438676703144.a n = A126246 (n + 1)

end A126246

/-! ## A126246.P1380681708539240540

`Δ[A002088(n)+A002088(A004526(n))]`
-/

namespace A126246.P1380681708539240540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + A002088 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126246.P1380681708539240540

namespace A126246

/-- `Δ[A002088(n)+A002088(A004526(n))]` -/
def P1380681708539240540.Spec : Prop :=
  ∀ n, P1380681708539240540.a n = A126246 (n + 1)

end A126246

/-!
# A126247: a(n) is the number of triangular numbers, from among (T(1), T(2), T(3), ..., T(n)), which are coprime to T(n), where T(n) = n(n+1)/2 is the n-th triangular number.

The programs for A126247, there is no canonical definition to state claims against.
-/

/-! ## A126247.P4336261007243640231

`A337271(2*n)%A089090(A085478(2*n))`
-/

namespace A126247.P4336261007243640231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337271 (2 * n)) (A089090 (A085478 (2 * n)).toNat)

end

end A126247.P4336261007243640231

/-! ## A126247.P7461788552130386622

`gcd(A267167(A303022(n+1)), A372789(2*n+1))`
-/

namespace A126247.P7461788552130386622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267167 (A303022 (n + 1)).toNat) (A372789 (2 * n + 1))

end

end A126247.P7461788552130386622

/-!
# A126248: p*(p+1)*(p+2) where (p,p+2) are twin primes.

The programs for A126248, the canonical program `A126248.P13007890844090776528` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126248 has offset 1).

The definition of A126248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, A037074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A126248.P15088965486566053954

`6*A126249(n+1)`
-/

namespace A126248.P15088965486566053954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A126249 (n + 1)

end

end A126248.P15088965486566053954

namespace A126248

/-- `6*A126249(n+1)` -/
def P15088965486566053954.Spec : Prop :=
  ∀ n, P15088965486566053954.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P13007890844090776528

`A037074(n+1)*A014574(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A126248

/-- `A037074(n+1)*A014574(n+1)` -/
def P13007890844090776528.Spec : Prop :=
  ∀ n, P13007890844090776528.a n = A126248 (n + 1)

theorem P13007890844090776528.correct : P13007890844090776528.Spec := by
  intro n
  simp only [A126248, Nat.add_sub_cancel]

end A126248

/-! ## A126248.P12802411907600010044

`A001359(n+1)*A014574(n+1)*A006512(n+1)`
-/

namespace A126248.P12802411907600010044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A014574 (n + 1) * A006512 (n + 1)

end

end A126248.P12802411907600010044

namespace A126248

/-- `A001359(n+1)*A014574(n+1)*A006512(n+1)` -/
def P12802411907600010044.Spec : Prop :=
  ∀ n, P12802411907600010044.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P4125719677889568462

`A007531(A006512(n+1))`
-/

namespace A126248.P4125719677889568462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A006512 (n + 1)).toNat

end

end A126248.P4125719677889568462

namespace A126248

/-- `A007531(A006512(n+1))` -/
def P4125719677889568462.Spec : Prop :=
  ∀ n, P4125719677889568462.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P764578338530480724

`A097973(n+1)-A001359(n+1)`
-/

namespace A126248.P764578338530480724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097973 (n + 1) - A001359 (n + 1)

end

end A126248.P764578338530480724

namespace A126248

/-- `A097973(n+1)-A001359(n+1)` -/
def P764578338530480724.Spec : Prop :=
  ∀ n, P764578338530480724.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P14552642605404048269

`A040040(n+1)*A071142(n+1)`
-/

namespace A126248.P14552642605404048269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) * A071142 (n + 1)

end

end A126248.P14552642605404048269

namespace A126248

/-- `A040040(n+1)*A071142(n+1)` -/
def P14552642605404048269.Spec : Prop :=
  ∀ n, P14552642605404048269.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P1846555348419422695

`A001359(n+1)*A126251(n+1)`
-/

namespace A126248.P1846555348419422695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A126251 (n + 1)

end

end A126248.P1846555348419422695

namespace A126248

/-- `A001359(n+1)*A126251(n+1)` -/
def P1846555348419422695.Spec : Prop :=
  ∀ n, P1846555348419422695.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P10963618632004975249

`A082669(n+1)*A108605(n+1)`
-/

namespace A126248.P10963618632004975249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082669 (n + 1) * A108605 (n + 1)

end

end A126248.P10963618632004975249

namespace A126248

/-- `A082669(n+1)*A108605(n+1)` -/
def P10963618632004975249.Spec : Prop :=
  ∀ n, P10963618632004975249.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P8017046597952306728

`(A001359(n+1)+1)*A037074(n+1)`
-/

namespace A126248.P8017046597952306728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) + 1) * A037074 (n + 1)

end

end A126248.P8017046597952306728

namespace A126248

/-- `(A001359(n+1)+1)*A037074(n+1)` -/
def P8017046597952306728.Spec : Prop :=
  ∀ n, P8017046597952306728.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P8892416252497804346

`A097973(n+1)+2-A006512(n+1)`
-/

namespace A126248.P8892416252497804346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097973 (n + 1) + (2 - A006512 (n + 1))

end

end A126248.P8892416252497804346

namespace A126248

/-- `A097973(n+1)+2-A006512(n+1)` -/
def P8892416252497804346.Spec : Prop :=
  ∀ n, P8892416252497804346.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P15466018961711042584

`(A120875(n+1)+1)*A014574(n+1)`
-/

namespace A126248.P15466018961711042584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120875 (n + 1) + 1) * A014574 (n + 1)

end

end A126248.P15466018961711042584

namespace A126248

/-- `(A120875(n+1)+1)*A014574(n+1)` -/
def P15466018961711042584.Spec : Prop :=
  ∀ n, P15466018961711042584.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P18032901812184747657

`(A006512(n+1)-1)*A037074(n+1)`
-/

namespace A126248.P18032901812184747657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006512 (n + 1) - 1) * A037074 (n + 1)

end

end A126248.P18032901812184747657

namespace A126248

/-- `(A006512(n+1)-1)*A037074(n+1)` -/
def P18032901812184747657.Spec : Prop :=
  ∀ n, P18032901812184747657.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P13212058911400382519

`(A075369(n+1)-1)*A014574(n+1)`
-/

namespace A126248.P13212058911400382519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075369 (n + 1) - 1) * A014574 (n + 1)

end

end A126248.P13212058911400382519

namespace A126248

/-- `(A075369(n+1)-1)*A014574(n+1)` -/
def P13212058911400382519.Spec : Prop :=
  ∀ n, P13212058911400382519.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P16301418353568406630

`2*A037074(n+1)*A040040(n+1)`
-/

namespace A126248.P16301418353568406630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A037074 (n + 1) * A040040 (n + 1))

end

end A126248.P16301418353568406630

namespace A126248

/-- `2*A037074(n+1)*A040040(n+1)` -/
def P16301418353568406630.Spec : Prop :=
  ∀ n, P16301418353568406630.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P8906847175668964235

`A014574(n+1)/2*A071142(n+1)`
-/

namespace A126248.P8906847175668964235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) : ℚ) / 2 * (A071142 (n + 1) : ℚ)

end

end A126248.P8906847175668964235

namespace A126248

/-- `A014574(n+1)/2*A071142(n+1)` -/
def P8906847175668964235.Spec : Prop :=
  ∀ n, P8906847175668964235.a n = (A126248 (n + 1) : ℚ)

end A126248

/-! ## A126248.P17400609609814213329

`A037074(n+1)/2*A054735(n+1)`
-/

namespace A126248.P17400609609814213329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037074 (n + 1) : ℚ) / 2 * (A054735 (n + 1) : ℚ)

end

end A126248.P17400609609814213329

namespace A126248

/-- `A037074(n+1)/2*A054735(n+1)` -/
def P17400609609814213329.Spec : Prop :=
  ∀ n, P17400609609814213329.a n = (A126248 (n + 1) : ℚ)

end A126248

/-! ## A126248.P14166836736263558936

`A001359(n+1)+A001359(n+1)*A328493(n+1)`
-/

namespace A126248.P14166836736263558936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + A001359 (n + 1) * A328493 (n + 1)

end

end A126248.P14166836736263558936

namespace A126248

/-- `A001359(n+1)+A001359(n+1)*A328493(n+1)` -/
def P14166836736263558936.Spec : Prop :=
  ∀ n, P14166836736263558936.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P7374222069945336560

`A097973(n+1)-A181747(n+2)`
-/

namespace A126248.P7374222069945336560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097973 (n + 1) - A181747 (n + 2)

end

end A126248.P7374222069945336560

namespace A126248

/-- `A097973(n+1)-A181747(n+2)` -/
def P7374222069945336560.Spec : Prop :=
  ∀ n, P7374222069945336560.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P3610957193765128534

`A097973(n+1)-A077800(2*n+1)`
-/

namespace A126248.P3610957193765128534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097973 (n + 1) - A077800 (2 * n + 1)

end

end A126248.P3610957193765128534

namespace A126248

/-- `A097973(n+1)-A077800(2*n+1)` -/
def P3610957193765128534.Spec : Prop :=
  ∀ n, P3610957193765128534.a n = A126248 (n + 1)

end A126248

/-! ## A126248.P3557162501976332616

`6*C(p?[A000040(n+1)+2], 3)`
-/

namespace A126248.P3557162501976332616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 3

end

end A126248.P3557162501976332616

namespace A126248

/-- `6*C(p?[A000040(n+1)+2], 3)` -/
def P3557162501976332616.Spec : Prop :=
  ∀ n, (P3557162501976332616.a n : ℤ) = A126248 (n + 1)

end A126248

/-!
# A126249: p*(p+1)*(p+2)/6 where (p,p+2) are twin primes.

The programs for A126249, the canonical program `A126249.P15517831164697917332` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126249 has offset 1).

The definition of A126249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126248, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A126249.P15517831164697917332

`A126248(n+1)/6`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A126249

/-- `A126248(n+1)/6` -/
def P15517831164697917332.Spec : Prop :=
  ∀ n, P15517831164697917332.a n = (A126249 (n + 1) : ℚ)

end A126249

/-! ## A126249.P5781906481476362670

`A037074(n+1)*A014574(n+1)/6`
-/

namespace A126249.P5781906481476362670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037074 (n + 1) * A014574 (n + 1) : ℚ) / 6

end

end A126249.P5781906481476362670

namespace A126249

/-- `A037074(n+1)*A014574(n+1)/6` -/
def P5781906481476362670.Spec : Prop :=
  ∀ n, P5781906481476362670.a n = (A126249 (n + 1) : ℚ)

end A126249

/-! ## A126249.P16596026205990996459

`A001359(n+1)*A014574(n+1)*A006512(n+1)/6`
-/

namespace A126249.P16596026205990996459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) * A014574 (n + 1) * A006512 (n + 1) : ℚ) / 6

end

end A126249.P16596026205990996459

namespace A126249

/-- `A001359(n+1)*A014574(n+1)*A006512(n+1)/6` -/
def P16596026205990996459.Spec : Prop :=
  ∀ n, P16596026205990996459.a n = (A126249 (n + 1) : ℚ)

end A126249

/-! ## A126249.P18078226856819873471

`A007531(A006512(n+1))/6`
-/

namespace A126249.P18078226856819873471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (A006512 (n + 1)).toNat : ℚ) / 6

end

end A126249.P18078226856819873471

namespace A126249

/-- `A007531(A006512(n+1))/6` -/
def P18078226856819873471.Spec : Prop :=
  ∀ n, P18078226856819873471.a n = (A126249 (n + 1) : ℚ)

end A126249

/-! ## A126249.P536221346828394029

`C(A006512(n+1), 3)`
-/

namespace A126249.P536221346828394029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006512 (n + 1)).toNat 3

end

end A126249.P536221346828394029

namespace A126249

/-- `C(A006512(n+1), 3)` -/
def P536221346828394029.Spec : Prop :=
  ∀ n, (P536221346828394029.a n : ℤ) = A126249 (n + 1)

end A126249

/-! ## A126249.P4322063404748230955

`C(A014574(n+1)+1, 3)`
-/

namespace A126249.P4322063404748230955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014574 (n + 1) + 1).toNat 3

end

end A126249.P4322063404748230955

namespace A126249

/-- `C(A014574(n+1)+1, 3)` -/
def P4322063404748230955.Spec : Prop :=
  ∀ n, (P4322063404748230955.a n : ℤ) = A126249 (n + 1)

end A126249

/-! ## A126249.P13550620924372024586

`C(A001359(n+1)+2, 3)`
-/

namespace A126249.P13550620924372024586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001359 (n + 1) + 2).toNat 3

end

end A126249.P13550620924372024586

namespace A126249

/-- `C(A001359(n+1)+2, 3)` -/
def P13550620924372024586.Spec : Prop :=
  ∀ n, (P13550620924372024586.a n : ℤ) = A126249 (n + 1)

end A126249

/-! ## A126249.P13203233144741066119

`C(A067829(n+2), 3)`
-/

namespace A126249.P13203233144741066119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067829 (n + 2)).toNat 3

end

end A126249.P13203233144741066119

namespace A126249

/-- `C(A067829(n+2), 3)` -/
def P13203233144741066119.Spec : Prop :=
  ∀ n, (P13203233144741066119.a n : ℤ) = A126249 (n + 1)

end A126249

/-! ## A126249.P2882977371207303265

`C(p?[A320391(n+1)], 3)`
-/

namespace A126249.P2882977371207303265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 3

end

end A126249.P2882977371207303265

namespace A126249

/-- `C(p?[A320391(n+1)], 3)` -/
def P2882977371207303265.Spec : Prop :=
  ∀ n, (P2882977371207303265.a n : ℤ) = A126249 (n + 1)

end A126249

/-! ## A126249.P1027831744725011134

`C(A077800(2*(n+1)), 3)`
-/

namespace A126249.P1027831744725011134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077800 (2 * (n + 1))).toNat 3

end

end A126249.P1027831744725011134

namespace A126249

/-- `C(A077800(2*(n+1)), 3)` -/
def P1027831744725011134.Spec : Prop :=
  ∀ n, (P1027831744725011134.a n : ℤ) = A126249 (n + 1)

end A126249

/-! ## A126249.P8899769915560055676

`C(p?[A139690(n+1)], 3)`
-/

namespace A126249.P8899769915560055676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 3

end

end A126249.P8899769915560055676

namespace A126249

/-- `C(p?[A139690(n+1)], 3)` -/
def P8899769915560055676.Spec : Prop :=
  ∀ n, (P8899769915560055676.a n : ℤ) = A126249 (n + 1)

end A126249

/-! ## A126249.P6309997409708091210

`C(p?[A000040(n+1)+2], 3)`
-/

namespace A126249.P6309997409708091210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 3

end

end A126249.P6309997409708091210

namespace A126249

/-- `C(p?[A000040(n+1)+2], 3)` -/
def P6309997409708091210.Spec : Prop :=
  ∀ n, (P6309997409708091210.a n : ℤ) = A126249 (n + 1)

end A126249

/-! ## A126249.P11843788449554351040

`C(p?[A040976(n+1)]+2, 3)`
-/

namespace A126249.P11843788449554351040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat 3

end

end A126249.P11843788449554351040

namespace A126249

/-- `C(p?[A040976(n+1)]+2, 3)` -/
def P11843788449554351040.Spec : Prop :=
  ∀ n, (P11843788449554351040.a n : ℤ) = A126249 (n + 1)

end A126249

/-! ## A126249.P11685693193461195489

`A126995(A155752(n+1))`
-/

namespace A126249.P11685693193461195489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126995 (A155752 (n + 1)).toNat

end

end A126249.P11685693193461195489

namespace A126249

/-- `A126995(A155752(n+1))` -/
def P11685693193461195489.Spec : Prop :=
  ∀ n, P11685693193461195489.a n = A126249 (n + 1)

end A126249

/-! ## A126249.P7961880450415102517

`C(A094743(n+2), 3)`
-/

namespace A126249.P7961880450415102517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094743 (n + 2)).toNat 3

end

end A126249.P7961880450415102517

namespace A126249

/-- `C(A094743(n+2), 3)` -/
def P7961880450415102517.Spec : Prop :=
  ∀ n, (P7961880450415102517.a n : ℤ) = A126249 (n + 1)

end A126249

/-! ## A126249.P1050416068682751769

`A000447(A040040(n+1))`
-/

namespace A126249.P1050416068682751769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (A040040 (n + 1)).toNat

end

end A126249.P1050416068682751769

namespace A126249

/-- `A000447(A040040(n+1))` -/
def P1050416068682751769.Spec : Prop :=
  ∀ n, P1050416068682751769.a n = A126249 (n + 1)

end A126249

/-! ## A126249.P4804727719440960763

`A000447(A168497(n+2))`
-/

namespace A126249.P4804727719440960763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (A168497 (n + 2)).toNat

end

end A126249.P4804727719440960763

namespace A126249

/-- `A000447(A168497(n+2))` -/
def P4804727719440960763.Spec : Prop :=
  ∀ n, P4804727719440960763.a n = A126249 (n + 1)

end A126249

/-! ## A126249.P4225573037232189681

`C(p?[A014091(n+1)], 3)`
-/

namespace A126249.P4225573037232189681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 3

end

end A126249.P4225573037232189681

namespace A126249

/-- `C(p?[A014091(n+1)], 3)` -/
def P4225573037232189681.Spec : Prop :=
  ∀ n, (P4225573037232189681.a n : ℤ) = A126249 (n + 1)

end A126249

/-! ## A126249.P14505058999883529341

`A000292(A001359(n+1))`
-/

namespace A126249.P14505058999883529341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A001359 (n + 1)).toNat

end

end A126249.P14505058999883529341

namespace A126249

/-- `A000292(A001359(n+1))` -/
def P14505058999883529341.Spec : Prop :=
  ∀ n, P14505058999883529341.a n = A126249 (n + 1)

end A126249

/-! ## A126249.P16077935655435461102

`A050188(A006512(n+1))`
-/

namespace A126249.P16077935655435461102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050188 (A006512 (n + 1)).toNat

end

end A126249.P16077935655435461102

namespace A126249

/-- `A050188(A006512(n+1))` -/
def P16077935655435461102.Spec : Prop :=
  ∀ n, P16077935655435461102.a n = A126249 (n + 1)

end A126249

/-!
# A126251: a(n) = (p+2)!/p! where p is the n-th lesser twin prime, A001359(n).

The programs for A126251, the canonical program `A126251.P11782927030317961986` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126251 has offset 1).

The definition of A126251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082669, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A126251.P11782927030317961986

`2*A082669(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A126251

/-- `2*A082669(n+1)` -/
def P11782927030317961986.Spec : Prop :=
  ∀ n, P11782927030317961986.a n = A126251 (n + 1)

theorem P11782927030317961986.correct : P11782927030317961986.Spec := by
  intro n
  simp only [A126251, Nat.add_sub_cancel]

end A126251

/-! ## A126251.P9304874757574401838

`A328493(n+1)+1`
-/

namespace A126251.P9304874757574401838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328493 (n + 1) + 1

end

end A126251.P9304874757574401838

namespace A126251

/-- `A328493(n+1)+1` -/
def P9304874757574401838.Spec : Prop :=
  ∀ n, P9304874757574401838.a n = A126251 (n + 1)

theorem P9304874757574401838.correct : P9304874757574401838.Spec := by
  intro n
  simp only [A126251, Nat.add_sub_cancel, A126251.P9304874757574401838.a, A126251.P11782927030317961986.a, A082669, A082669.P14570956005503308455.a, A328493, A328493.P13594218802109558231.a, A006512, A006512.P8157243218962949380.a, A001359, A001359.P8865495035699438537.a, A077800, A077800.P16009445446139691322.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126251

/-! ## A126251.P16867621973152658849

`2*C(A006512(n+1), 2)`
-/

namespace A126251.P16867621973152658849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A006512 (n + 1)).toNat 2

end

end A126251.P16867621973152658849

namespace A126251

/-- `2*C(A006512(n+1), 2)` -/
def P16867621973152658849.Spec : Prop :=
  ∀ n, (P16867621973152658849.a n : ℤ) = A126251 (n + 1)

end A126251

/-! ## A126251.P9230931622141615097

`2*C(A014574(n+1)+1, 2)`
-/

namespace A126251.P9230931622141615097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A014574 (n + 1) + 1).toNat 2

end

end A126251.P9230931622141615097

namespace A126251

/-- `2*C(A014574(n+1)+1, 2)` -/
def P9230931622141615097.Spec : Prop :=
  ∀ n, (P9230931622141615097.a n : ℤ) = A126251 (n + 1)

end A126251

/-! ## A126251.P3467300403844310798

`2*C(A001359(n+1)+2, 2)`
-/

namespace A126251.P3467300403844310798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A001359 (n + 1) + 2).toNat 2

end

end A126251.P3467300403844310798

namespace A126251

/-- `2*C(A001359(n+1)+2, 2)` -/
def P3467300403844310798.Spec : Prop :=
  ∀ n, (P3467300403844310798.a n : ℤ) = A126251 (n + 1)

end A126251

/-! ## A126251.P17375230717398465771

`A037074(n+1)+A006512(n+1)`
-/

namespace A126251.P17375230717398465771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + A006512 (n + 1)

end

end A126251.P17375230717398465771

namespace A126251

/-- `A037074(n+1)+A006512(n+1)` -/
def P17375230717398465771.Spec : Prop :=
  ∀ n, P17375230717398465771.a n = A126251 (n + 1)

end A126251

/-! ## A126251.P7394936162611883709

`A075369(n+1)+A014574(n+1)`
-/

namespace A126251.P7394936162611883709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1) + A014574 (n + 1)

end

end A126251.P7394936162611883709

namespace A126251

/-- `A075369(n+1)+A014574(n+1)` -/
def P7394936162611883709.Spec : Prop :=
  ∀ n, P7394936162611883709.a n = A126251 (n + 1)

end A126251

/-! ## A126251.P12255673971583473341

`A108604(n+1)-A006512(n+1)`
-/

namespace A126251.P12255673971583473341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108604 (n + 1) - A006512 (n + 1)

end

end A126251.P12255673971583473341

namespace A126251

/-- `A108604(n+1)-A006512(n+1)` -/
def P12255673971583473341.Spec : Prop :=
  ∀ n, P12255673971583473341.a n = A126251 (n + 1)

end A126251

/-! ## A126251.P8788686960940917356

`A135286(n+1)-A167132(n+1)`
-/

namespace A126251.P8788686960940917356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135286 (n + 1) - A167132 (n + 1)

end

end A126251.P8788686960940917356

namespace A126251

/-- `A135286(n+1)-A167132(n+1)` -/
def P8788686960940917356.Spec : Prop :=
  ∀ n, P8788686960940917356.a n = A126251 (n + 1)

end A126251

/-! ## A126251.P17806716317763505276

`A362941(n+1)-A014574(n+1)`
-/

namespace A126251.P17806716317763505276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362941 (n + 1) - A014574 (n + 1)

end

end A126251.P17806716317763505276

namespace A126251

/-- `A362941(n+1)-A014574(n+1)` -/
def P17806716317763505276.Spec : Prop :=
  ∀ n, P17806716317763505276.a n = A126251 (n + 1)

end A126251

/-! ## A126251.P15102051154405062641

`A006512(n+1)*A014574(n+1)`
-/

namespace A126251.P15102051154405062641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) * A014574 (n + 1)

end

end A126251.P15102051154405062641

namespace A126251

/-- `A006512(n+1)*A014574(n+1)` -/
def P15102051154405062641.Spec : Prop :=
  ∀ n, P15102051154405062641.a n = A126251 (n + 1)

end A126251

/-! ## A126251.P15671629360473948200

`A040040(n+1)*A176810(n+1)`
-/

namespace A126251.P15671629360473948200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) * A176810 (n + 1)

end

end A126251.P15671629360473948200

namespace A126251

/-- `A040040(n+1)*A176810(n+1)` -/
def P15671629360473948200.Spec : Prop :=
  ∀ n, P15671629360473948200.a n = A126251 (n + 1)

end A126251

/-! ## A126251.P8927263297442100933

`A126248(n+1)/A001359(n+1)`
-/

namespace A126251.P8927263297442100933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126248 (n + 1) : ℚ) / (A001359 (n + 1) : ℚ)

end

end A126251.P8927263297442100933

namespace A126251

/-- `A126248(n+1)/A001359(n+1)` -/
def P8927263297442100933.Spec : Prop :=
  ∀ n, P8927263297442100933.a n = (A126251 (n + 1) : ℚ)

end A126251

/-! ## A126251.P7587621344309215247

`A037074(n+1)+A054735(n+1)-A001359(n+1)`
-/

namespace A126251.P7587621344309215247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + (A054735 (n + 1) - A001359 (n + 1))

end

end A126251.P7587621344309215247

namespace A126251

/-- `A037074(n+1)+A054735(n+1)-A001359(n+1)` -/
def P7587621344309215247.Spec : Prop :=
  ∀ n, P7587621344309215247.a n = A126251 (n + 1)

end A126251

/-! ## A126251.P10888979620857593987

`2*C(A067829(n+2), 2)`
-/

namespace A126251.P10888979620857593987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A067829 (n + 2)).toNat 2

end

end A126251.P10888979620857593987

namespace A126251

/-- `2*C(A067829(n+2), 2)` -/
def P10888979620857593987.Spec : Prop :=
  ∀ n, (P10888979620857593987.a n : ℤ) = A126251 (n + 1)

end A126251

/-! ## A126251.P9844514936174362531

`A067829(n+2)+A037074(n+1)`
-/

namespace A126251.P9844514936174362531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 2) + A037074 (n + 1)

end

end A126251.P9844514936174362531

namespace A126251

/-- `A067829(n+2)+A037074(n+1)` -/
def P9844514936174362531.Spec : Prop :=
  ∀ n, P9844514936174362531.a n = A126251 (n + 1)

end A126251

/-! ## A126251.P1449584670422540610

`A108604(n+1)-A067829(n+2)`
-/

namespace A126251.P1449584670422540610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108604 (n + 1) - A067829 (n + 2)

end

end A126251.P1449584670422540610

namespace A126251

/-- `A108604(n+1)-A067829(n+2)` -/
def P1449584670422540610.Spec : Prop :=
  ∀ n, P1449584670422540610.a n = A126251 (n + 1)

end A126251

/-! ## A126251.P18358106823846897745

`A014574(n+1)*A067829(n+2)`
-/

namespace A126251.P18358106823846897745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) * A067829 (n + 2)

end

end A126251.P18358106823846897745

namespace A126251

/-- `A014574(n+1)*A067829(n+2)` -/
def P18358106823846897745.Spec : Prop :=
  ∀ n, P18358106823846897745.a n = A126251 (n + 1)

end A126251

/-! ## A126251.P6702030582926964297

`2*C(p?[A320391(n+1)], 2)`
-/

namespace A126251.P6702030582926964297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2

end

end A126251.P6702030582926964297

namespace A126251

/-- `2*C(p?[A320391(n+1)], 2)` -/
def P6702030582926964297.Spec : Prop :=
  ∀ n, (P6702030582926964297.a n : ℤ) = A126251 (n + 1)

end A126251

/-! ## A126251.P9492482315279935571

`A134020(n+2)+A006512(n+1)`
-/

namespace A126251.P9492482315279935571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134020 (n + 2) + A006512 (n + 1)

end

end A126251.P9492482315279935571

namespace A126251

/-- `A134020(n+2)+A006512(n+1)` -/
def P9492482315279935571.Spec : Prop :=
  ∀ n, P9492482315279935571.a n = A126251 (n + 1)

end A126251

/-!
# A126253: a(n) = n-th integer from among those positive integers which are each coprime to exactly one prime dividing n.

The programs for A126253, there is no canonical definition to state claims against.
-/

/-! ## A126253.P17584110973882735287

`A000203(n+2)-A035185(A306076(2*(n+1)))`
-/

namespace A126253.P17584110973882735287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - A035185 (A306076 (2 * (n + 1))).toNat

end

end A126253.P17584110973882735287

/-!
# A126254: Number of distinct terms i^j for 1 <= i,j <= n.

The programs for A126254, there is no canonical definition to state claims against.
-/

/-! ## A126254.P18389140856318857572

`A303748(n+1)-A160467(A091968(n+1))`
-/

namespace A126254.P18389140856318857572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) - A160467 (A091968 (n + 1)).toNat

end

end A126254.P18389140856318857572

/-! ## A126254.P12490183528112057112

`(A303748(n+1)-1)%A000217(A000217(n+3))`
-/

namespace A126254.P12490183528112057112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303748 (n + 1) - 1) (A000217 (A000217 (n + 3)).toNat)

end

end A126254.P12490183528112057112

/-! ## A126254.P14591208770787003546

`A303748(n+1)-A001511(A297150(n+1))`
-/

namespace A126254.P14591208770787003546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) - A001511 (A297150 (n + 1)).toNat

end

end A126254.P14591208770787003546

/-! ## A126254.P6363660951322651757

`A303748(n+1)+A001511(A297150(n+1))/A260196(n+2)`
-/

namespace A126254.P6363660951322651757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303748 (n + 1) : ℚ) + (A001511 (A297150 (n + 1)).toNat : ℚ) / (A260196 (n + 2) : ℚ)

end

end A126254.P6363660951322651757

/-! ## A126254.P9386103141654062581

`A303748(n+1)+A033999(A006567(n+1))`
-/

namespace A126254.P9386103141654062581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) + A033999 (A006567 (n + 1)).toNat

end

end A126254.P9386103141654062581

/-! ## A126254.P3765962403733966568

`A303748(n+1)+A062157(2*A052307(n))`
-/

namespace A126254.P3765962403733966568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) + A062157 (2 * A052307 n).toNat

end

end A126254.P3765962403733966568

/-! ## A126254.P2740917949188205789

`A303748(n+1)-A033999(2*A052307(n))`
-/

namespace A126254.P2740917949188205789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) - A033999 (2 * A052307 n).toNat

end

end A126254.P2740917949188205789

/-! ## A126254.P13398902584440882647

`A000038(A005940(n+2))+A303748(n+1)-1`
-/

namespace A126254.P13398902584440882647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A005940 (n + 2)).toNat + (A303748 (n + 1) - 1)

end

end A126254.P13398902584440882647

/-! ## A126254.P1101621669267769868

`A303748(n+1)-A001511(A105435(n+1))`
-/

namespace A126254.P1101621669267769868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) - A001511 (A105435 (n + 1)).toNat

end

end A126254.P1101621669267769868

/-! ## A126254.P8243310078613668862

`A303748(n+1)-A105234(A156140(n)²)`
-/

namespace A126254.P8243310078613668862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) - A105234 (A156140 n ^ 2).toNat

end

end A126254.P8243310078613668862

/-! ## A126254.P16388778755902210983

`A303748(n+1)-A241479(A264664(n+1))`
-/

namespace A126254.P16388778755902210983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) - A241479 (A264664 (n + 1)).toNat

end

end A126254.P16388778755902210983

/-! ## A126254.P17277280898301068623

`(A303748(n+1)-1)%p?[A052905(n)]`
-/

namespace A126254.P17277280898301068623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303748 (n + 1) - 1) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A126254.P17277280898301068623

/-! ## A126254.P15848254058185918996

`A303748(n+1)-and(1, A002061(A126256(n)))`
-/

namespace A126254.P15848254058185918996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) - Int.land 1 (A002061 (A126256 n).toNat)

end

end A126254.P15848254058185918996

/-! ## A126254.P5563308237399943757

`A303748(n+1)-A008683(A001358(A140754(n+1)))`
-/

namespace A126254.P5563308237399943757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) - A008683 (A001358 (A140754 (n + 1)).toNat).toNat

end

end A126254.P5563308237399943757

/-! ## A126254.P13752725546237581688

`A303748(n+1)-and(1, A002061(A027424(n+1)))`
-/

namespace A126254.P13752725546237581688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) - Int.land 1 (A002061 (A027424 (n + 1)).toNat)

end

end A126254.P13752725546237581688

/-! ## A126254.P4698201127643916043

`A303748(n+1)-A001222(A186169(n+1))`
-/

namespace A126254.P4698201127643916043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) - A001222 (A186169 (n + 1)).toNat

end

end A126254.P4698201127643916043

/-! ## A126254.P6493774391101727999

`A303748(n+1)-A001222(A290170(n+1))`
-/

namespace A126254.P6493774391101727999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303748 (n + 1) - A001222 (A290170 (n + 1)).toNat

end

end A126254.P6493774391101727999

/-! ## A126254.P10001236673064692467

`(A303748(n+1)-1)*A001222(A236458(n+1))`
-/

namespace A126254.P10001236673064692467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A303748 (n + 1) - 1) * A001222 (A236458 (n + 1)).toNat

end

end A126254.P10001236673064692467

/-! ## A126254.P6662553556347554436

`A023443(A303748(n+1))`
-/

namespace A126254.P6662553556347554436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A303748 (n + 1)).toNat

end

end A126254.P6662553556347554436

/-!
# A126255: Number of distinct terms i^j for 2 <= i,j <= n.

The programs for A126255, there is no canonical definition to state claims against.
-/

/-! ## A126255.P8742615049999782960

`∑[A213183(∑[A236345(n+2)])]`
-/

namespace A126255.P8742615049999782960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236345 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213183 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126255.P8742615049999782960

/-!
# A126256: Number of distinct terms in rows 0 through n of Pascal's triangle.

The programs for A126256, there is no canonical definition to state claims against.
-/

/-! ## A126256.P11107471296283642119

`∑[A126257(n)]`
-/

namespace A126256.P11107471296283642119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126256.P11107471296283642119

/-! ## A126256.P12401793406087234620

`a(n-1)+A126257(n)+A000038(n)` with `a(0)=1`
-/

namespace A126256.P12401793406087234620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A126257 n + A000038 n)

end

end A126256.P12401793406087234620

/-! ## A126256.P8434214796513166370

`a(n-1)+A057427(n)*A126257(n)` with `a(0)=1`
-/

namespace A126256.P8434214796513166370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A126257 n

end

end A126256.P8434214796513166370

/-! ## A126256.P12511294372804383666

`a(n-1)+A126257(n)%A005843(n)` with `a(0)=1`
-/

namespace A126256.P12511294372804383666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A126257 n) (A005843 n)

end

end A126256.P12511294372804383666

/-! ## A126256.P15523845931597594741

`a(n-1)+A106400(n)²*A126257(n)` with `a(0)=1`
-/

namespace A126256.P15523845931597594741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A106400 n ^ 2 * A126257 n

end

end A126256.P15523845931597594741

/-!
# A126258: Triangle generated by Pascal's rule with left diagonal = [1,0,2,0,3,0,4,...] (A000027 with interpolated zeros) and right diagonal = [1,1,1,1,1,...].

The programs for A126258, there is no canonical definition to state claims against.
-/

/-! ## A126258.P17562349767716130307

`A128256(A080036(n+1))`
-/

namespace A126258.P17562349767716130307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128256 (A080036 (n + 1)).toNat

end

end A126258.P17562349767716130307

/-! ## A126258.P6946080832622284818

`A128256(A002024(n+1)+n+2)`
-/

namespace A126258.P6946080832622284818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128256 (A002024 (n + 1) + (n + 2 : ℤ)).toNat

end

end A126258.P6946080832622284818

/-! ## A126258.P3786923381447975430

`A062534(lt[1, A139600(n)])`
-/

namespace A126258.P3786923381447975430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A126258.P3786923381447975430

/-! ## A126258.P16734856760196998160

`A062534(lt[1, A139601(n)])`
-/

namespace A126258.P16734856760196998160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A126258.P16734856760196998160

/-! ## A126258.P4093879146738059499

`A062534(lt[1, A180662(n)])`
-/

namespace A126258.P4093879146738059499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A126258.P4093879146738059499

/-! ## A126258.P5520797955792938344

`A062534(lt[2, A059268(n)])`
-/

namespace A126258.P5520797955792938344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A126258.P5520797955792938344

/-! ## A126258.P5534908381673618310

`A062534(lt[2, A002260(n+1)])`
-/

namespace A126258.P5534908381673618310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A126258.P5534908381673618310

/-! ## A126258.P12613131987166161716

`A062534(lt[n+1, A193844(n)])`
-/

namespace A126258.P12613131987166161716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A126258.P12613131987166161716

/-! ## A126258.P12045357599343531222

`A062534(lt[1, A193844(n)-n])`
-/

namespace A126258.P12045357599343531222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A126258.P12045357599343531222

/-! ## A126258.P17412458073835465234

`A062534(A014132(comp[∑[n]]+1))`
-/

namespace A126258.P17412458073835465234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (A014132 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A126258.P17412458073835465234

/-! ## A126258.P8463622483476893829

`A062534(lt[1, A256311(n)])`
-/

namespace A126258.P8463622483476893829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A126258.P8463622483476893829

/-! ## A126258.P18298219700546588138

`A062534(lt[1, A294582(n)])`
-/

namespace A126258.P18298219700546588138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A126258.P18298219700546588138

/-!
# A126260: Irregular triangle read by rows where row n contains the positive integers k, k<=n, where every positive integer <=k and coprime to k is also coprime to n.

The programs for A126260, there is no canonical definition to state claims against.
-/

/-! ## A126260.P7535322461016830386

`A002260(∑[A126307(A211437(n))])`
-/

namespace A126260.P7535322461016830386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126307 (A211437 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126260.P7535322461016830386

/-! ## A126260.P16796217788727039998

`A002260(lt[A003106(n), A255594(n)])`
-/

namespace A126260.P16796217788727039998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126260.P16796217788727039998

/-! ## A126260.P9315140609330002071

`A002260(lt[A059108(n), A090582(n+1)])`
-/

namespace A126260.P9315140609330002071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126260.P9315140609330002071

/-! ## A126260.P8507101270965029032

`A002260(lt[A059108(n), A305995(n+1)])`
-/

namespace A126260.P8507101270965029032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126260.P8507101270965029032

/-! ## A126260.P8074359247023016948

`A002260(lt[A059108(n), A305996(n+1)])`
-/

namespace A126260.P8074359247023016948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126260.P8074359247023016948

/-!
# A126261: a(n) is the numerator of the sum of the reciprocals of the positive integers k, k<=n, where every positive integer <= k and coprime to k is also coprime to n.

The programs for A126261, there is no canonical definition to state claims against.
-/

/-! ## A126261.P63303669793585069

`A001008(n+1)%A331415(A253350(2*n+3))`
-/

namespace A126261.P63303669793585069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001008 (n + 1)) (A331415 (A253350 (2 * n + 3)).toNat)

end

end A126261.P63303669793585069

/-!
# A126262: a(n) is the denominator of the sum of the reciprocals of the positive integers k, k<=n, where every positive integer <= k and coprime to k is also coprime to n.

The programs for A126262, there is no canonical definition to state claims against.
-/

/-! ## A126262.P10752964994544298382

`A002805(n+1)-A324180(A077559(n+1))`
-/

namespace A126262.P10752964994544298382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) - A324180 (A077559 (n + 1)).toNat

end

end A126262.P10752964994544298382

/-! ## A126262.P12224941188093752777

`A022404(n+1)/A333175(A197396(n+1))`
-/

namespace A126262.P12224941188093752777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022404 (n + 1) : ℚ) / (A333175 (A197396 (n + 1)).toNat : ℚ)

end

end A126262.P12224941188093752777

/-!
# A126263: List of primes generated by factoring successive integers in Sylvester's sequence (A000058).

The programs for A126263, there is no canonical definition to state claims against.
-/

/-! ## A126263.P4205425610335004579

`A082910(A002110(n))`
-/

namespace A126263.P4205425610335004579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082910 (A002110 n).toNat

end

end A126263.P4205425610335004579

/-! ## A126263.P259635375666961089

`A375543(A100793(n))`
-/

namespace A126263.P259635375666961089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375543 (A100793 n).toNat

end

end A126263.P259635375666961089

/-!
# A126264: a(n) = 5*n^2 + 3*n.

The programs for A126264, the canonical program `A126264.P6649181285063801082` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126264 has offset 1).

The definition of A126264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+1)²+3*(n+1)` (program `A126264.P6649181285063801082`, by `A126264.P6649181285063801082.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126264.P3351656890722603458

`(n+1)*(5*(n+1)+3)`
-/

namespace A126264.P3351656890722603458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (5 * (n + 1) + 3)

end

end A126264.P3351656890722603458

namespace A126264

/-- `(n+1)*(5*(n+1)+3)` -/
def P3351656890722603458.Spec : Prop :=
  ∀ n, (P3351656890722603458.a n : ℤ) = A126264 (n + 1)

theorem P3351656890722603458.correct : P3351656890722603458.Spec := by
  intro n
  simp only [A126264, Nat.add_sub_cancel, A126264.P3351656890722603458.a, A126264.P6649181285063801082.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A126264

/-! ## A126264.P6649181285063801082

`5*(n+1)²+3*(n+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126264

/-- `5*(n+1)²+3*(n+1)` -/
def P6649181285063801082.Spec : Prop :=
  ∀ n, (P6649181285063801082.a n : ℤ) = A126264 (n + 1)

theorem P6649181285063801082.correct : P6649181285063801082.Spec := by
  intro n
  simp only [A126264, Nat.add_sub_cancel]

end A126264

/-! ## A126264.P13028213151178310109

`∑[a(n-1)+10]` with `a(0)=8`
-/

namespace A126264.P13028213151178310109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126264.P13028213151178310109

namespace A126264

/-- `∑[a(n-1)+10]` -/
def P13028213151178310109.Spec : Prop :=
  ∀ n, (P13028213151178310109.a n : ℤ) = A126264 (n + 1)

end A126264

/-! ## A126264.P12436606165058341509

`∑[ogf((8+2x)/(1-2x+x^2))]`
-/

namespace A126264.P12436606165058341509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126264.P12436606165058341509

namespace A126264

/-- `∑[ogf((8+2x)/(1-2x+x^2))]` -/
def P12436606165058341509.Spec : Prop :=
  ∀ n, P12436606165058341509.a n = A126264 (n + 1)

end A126264

/-! ## A126264.P5704209047569857653

`ogf((8+2x)/(1-3x+3x^2-x^3))`
-/

namespace A126264.P5704209047569857653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 2] [1, -3, 3, -1] n

end

end A126264.P5704209047569857653

namespace A126264

/-- `ogf((8+2x)/(1-3x+3x^2-x^3))` -/
def P5704209047569857653.Spec : Prop :=
  ∀ n, P5704209047569857653.a n = A126264 (n + 1)

end A126264

/-! ## A126264.P14206583614663454622

`∑[A017365(n)]`
-/

namespace A126264.P14206583614663454622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126264.P14206583614663454622

namespace A126264

/-- `∑[A017365(n)]` -/
def P14206583614663454622.Spec : Prop :=
  ∀ n, P14206583614663454622.a n = A126264 (n + 1)

end A126264

/-! ## A126264.P2539784823675664422

`∑[sqrt(A017366(n))]`
-/

namespace A126264.P2539784823675664422
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017366 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126264.P2539784823675664422

namespace A126264

/-- `∑[sqrt(A017366(n))]` -/
def P2539784823675664422.Spec : Prop :=
  ∀ n, P2539784823675664422.a n = (A126264 (n + 1) : ℝ)

end A126264

/-! ## A126264.P8839669869450253062

`Δ[2*A162148(n)]`
-/

namespace A126264.P8839669869450253062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126264.P8839669869450253062

namespace A126264

/-- `Δ[2*A162148(n)]` -/
def P8839669869450253062.Spec : Prop :=
  ∀ n, P8839669869450253062.a n = A126264 (n + 1)

end A126264

/-! ## A126264.P6704343948068524492

`(A134153(n+1)-1)/3`
-/

namespace A126264.P6704343948068524492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134153 (n + 1) - 1 : ℚ) / 3

end

end A126264.P6704343948068524492

namespace A126264

/-- `(A134153(n+1)-1)/3` -/
def P6704343948068524492.Spec : Prop :=
  ∀ n, P6704343948068524492.a n = (A126264 (n + 1) : ℚ)

theorem P6704343948068524492.correct : P6704343948068524492.Spec := by
  intro n
  simp only [A126264, Nat.add_sub_cancel, A126264.P6704343948068524492.a, A126264.P6649181285063801082.a, A134153, A134153.P5690147584663230572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126264

/-! ## A126264.P17060725141130188202

`∑[A016885(2*n+1)]`
-/

namespace A126264.P17060725141130188202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126264.P17060725141130188202

namespace A126264

/-- `∑[A016885(2*n+1)]` -/
def P17060725141130188202.Spec : Prop :=
  ∀ n, P17060725141130188202.a n = A126264 (n + 1)

end A126264

/-! ## A126264.P8954306277276595725

`∑[A168456(2*n+1)]`
-/

namespace A126264.P8954306277276595725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168456 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126264.P8954306277276595725

namespace A126264

/-- `∑[A168456(2*n+1)]` -/
def P8954306277276595725.Spec : Prop :=
  ∀ n, P8954306277276595725.a n = A126264 (n + 1)

end A126264

/-! ## A126264.P1656296140938557341

`∑[sqrt(A016886(2*n+1))]`
-/

namespace A126264.P1656296140938557341
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016886 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126264.P1656296140938557341

namespace A126264

/-- `∑[sqrt(A016886(2*n+1))]` -/
def P1656296140938557341.Spec : Prop :=
  ∀ n, P1656296140938557341.a n = (A126264 (n + 1) : ℝ)

end A126264

/-! ## A126264.P18039301569669740471

`A115006(2*(n+1))`
-/

namespace A126264.P18039301569669740471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115006 (2 * (n + 1))

end

end A126264.P18039301569669740471

namespace A126264

/-- `A115006(2*(n+1))` -/
def P18039301569669740471.Spec : Prop :=
  ∀ n, P18039301569669740471.a n = A126264 (n + 1)

end A126264

/-! ## A126264.P8320206453454817846

`A210982(2*(n+1))`
-/

namespace A126264.P8320206453454817846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210982 (2 * (n + 1))

end

end A126264.P8320206453454817846

namespace A126264

/-- `A210982(2*(n+1))` -/
def P8320206453454817846.Spec : Prop :=
  ∀ n, P8320206453454817846.a n = A126264 (n + 1)

end A126264

/-! ## A126264.P7972357880707957985

`A183871(A016897(n))`
-/

namespace A126264.P7972357880707957985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183871 (A016897 n).toNat

end

end A126264.P7972357880707957985

namespace A126264

/-- `A183871(A016897(n))` -/
def P7972357880707957985.Spec : Prop :=
  ∀ n, P7972357880707957985.a n = A126264 (n + 1)

end A126264

/-! ## A126264.P16769030754196051699

`∩[A183871(n+1), A210982(n)]`
-/

namespace A126264.P16769030754196051699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126264.P16769030754196051699

namespace A126264

/-- `∩[A183871(n+1), A210982(n)]` -/
def P16769030754196051699.Spec : Prop :=
  ∀ n, (P16769030754196051699.a n : ℤ) = A126264 (n + 1)

end A126264

/-! ## A126264.P9201234048571607345

`A011858(A016873(n+1))`
-/

namespace A126264.P9201234048571607345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (A016873 (n + 1)).toNat

end

end A126264.P9201234048571607345

namespace A126264

/-- `A011858(A016873(n+1))` -/
def P9201234048571607345.Spec : Prop :=
  ∀ n, P9201234048571607345.a n = A126264 (n + 1)

end A126264

/-! ## A126264.P15770983027789573016

`A000115(A017377(n))`
-/

namespace A126264.P15770983027789573016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (A017377 n).toNat

end

end A126264.P15770983027789573016

namespace A126264

/-- `A000115(A017377(n))` -/
def P15770983027789573016.Spec : Prop :=
  ∀ n, P15770983027789573016.a n = A126264 (n + 1)

end A126264

/-! ## A126264.P12768501633126152737

`A008728(A017353(n))`
-/

namespace A126264.P12768501633126152737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 (A017353 n).toNat

end

end A126264.P12768501633126152737

namespace A126264

/-- `A008728(A017353(n))` -/
def P12768501633126152737.Spec : Prop :=
  ∀ n, P12768501633126152737.a n = A126264 (n + 1)

end A126264

/-!
# A126266: A diagonal of triangle A126265: a(n) = A126265(n+1,n).

The programs for A126266, there is no canonical definition to state claims against.
-/

/-! ## A126266.P17946994612130146743

`A126265(n+1+∑[C(n, 2)]+n)`
-/

namespace A126266.P17946994612130146743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126265 (n + 1 + (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A126266.P17946994612130146743

/-! ## A126266.P2881394000916029058

`A126265(A180415(n+1))`
-/

namespace A126266.P2881394000916029058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126265 (A180415 (n + 1)).toNat

end

end A126266.P2881394000916029058

/-! ## A126266.P2331303632555927995

`A126265(∑[A133263(n)-n])`
-/

namespace A126266.P2331303632555927995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126266.P2331303632555927995

/-! ## A126266.P8649837302697969088

`A126265(∑[A025747(n)]-n²)`
-/

namespace A126266.P8649837302697969088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126265 (∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)).toNat

end

end A126266.P8649837302697969088

/-! ## A126266.P4282274458490679366

`A126265(∑[A152947(n+1)]+n)`
-/

namespace A126266.P4282274458490679366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126265 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A126266.P4282274458490679366

/-!
# A126267: A diagonal of triangle A126265: a(n) = A126265(n+2,n).

The programs for A126267, there is no canonical definition to state claims against.
-/

/-! ## A126267.P12647243373642629834

`A126265(∑[∑[n]+2])`
-/

namespace A126267.P12647243373642629834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126265 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126267.P12647243373642629834

/-! ## A126267.P9097353089810129955

`lcm(A006528(n+1), A073043(A279026(n+1)))`
-/

namespace A126267.P9097353089810129955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006528 (n + 1)) (A073043 (A279026 (n + 1)).toNat)

end

end A126267.P9097353089810129955

/-!
# A126268: Triangle read by rows: row n gives lengths of Huffman codes with n (>= 3) symbols, where symbol[k] has frequency k (k=1,..,n), in increasing k.

The programs for A126268, there is no canonical definition to state claims against.
-/

/-! ## A126268.P3829754777693043354

`A001221(or(A000081(n), A092269(n+10)))`
-/

namespace A126268.P3829754777693043354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A000081 n) (A092269 (n + 10))).toNat

end

end A126268.P3829754777693043354

/-!
# A126269: Numbers k such that hcl(k,k) < hcl(k,k-1) where hcl(k,i) is the Huffman code length; see comments.

The programs for A126269, there is no canonical definition to state claims against.
-/

/-! ## A126269.P13125369050589963903

`record[n-xor(n, -(n+3))]`
-/

namespace A126269.P13125369050589963903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (-(n + 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126269.P13125369050589963903

/-! ## A126269.P10177992349779164999

`record[xor(n, n+2)+1+n]`
-/

namespace A126269.P10177992349779164999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2) + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126269.P10177992349779164999

/-! ## A126269.P13146147479762685404

`gcd(2, n)*a(n-1)+1` with `a(0)=3`
-/

namespace A126269.P13146147479762685404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.gcd 2 n * a (n - 1) + 1

end

end A126269.P13146147479762685404

/-! ## A126269.P6075523514535369225

`ogf((3+4x-2x^3)/(1-3x^2+2x^4))`
-/

namespace A126269.P6075523514535369225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 0, -2] [1, 0, -3, 0, 2] n

end

end A126269.P6075523514535369225

/-!
# A126271: a(n) = order of Galois group of the polynomial P(x) + n if P(x) + n (after dividing by the gcd of its coefficients) is irreducible, otherwise a(n) = 0, where P(x) = 128*x^8 - 256*x^6 + 160*x^4 - 32*x^2 + 1.

The programs for A126271, there is no canonical definition to state claims against.
-/

/-! ## A126271.P18323729235214918039

`32/A014709(A186114(n+1))`
-/

namespace A126271.P18323729235214918039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  32 / (A014709 (A186114 (n + 1)).toNat : ℚ)

end

end A126271.P18323729235214918039

/-! ## A126271.P1601971744112943771

`A040240(and(A007259(n), A190129(n+1)))`
-/

namespace A126271.P1601971744112943771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040240 (Int.land (A007259 n) (A190129 (n + 1))).toNat

end

end A126271.P1601971744112943771

/-! ## A126271.P17882890644344032115

`32/A333254(A329758(n+1))`
-/

namespace A126271.P17882890644344032115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  32 / (A333254 (A329758 (n + 1)).toNat : ℚ)

end

end A126271.P17882890644344032115

/-! ## A126271.P10568029212879555790

`A040241(A276937(ceil((n+1)/π+n))²)`
-/

namespace A126271.P10568029212879555790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040241 (A276937 ⌈(n + 1 : ℝ) / Real.pi + (n : ℝ)⌉.toNat ^ 2).toNat

end

end A126271.P10568029212879555790

/-! ## A126271.P4112162446873031244

`A069256(A241046(n+2))`
-/

namespace A126271.P4112162446873031244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069256 (A241046 (n + 2)).toNat

end

end A126271.P4112162446873031244

/-!
# A126272: a(1)=27; if n = Product p_i^e_i, n>1, then a(n) = Product p_{i+2}^{e_i+2}.

The programs for A126272, the canonical program `A126272.P6684349572185641805` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126272 has offset 1).

The definition of A126272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126272.P6684349572185641805

`A045972(n+1)²/A045966(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A126272

/-- `A045972(n+1)²/A045966(n+1)` -/
def P6684349572185641805.Spec : Prop :=
  ∀ n, P6684349572185641805.a n = (A126272 (n + 1) : ℚ)

end A126272

/-! ## A126272.P7124545616557521087

`A045971(A045965(n+1))`
-/

namespace A126272.P7124545616557521087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045971 (A045965 (n + 1)).toNat

end

end A126272.P7124545616557521087

namespace A126272

/-- `A045971(A045965(n+1))` -/
def P7124545616557521087.Spec : Prop :=
  ∀ n, P7124545616557521087.a n = A126272 (n + 1)

end A126272

/-! ## A126272.P8880684680566558748

`A045971(A003961(n+1)+C(2, n+2))`
-/

namespace A126272.P8880684680566558748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045971 (A003961 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A126272.P8880684680566558748

namespace A126272

/-- `A045971(A003961(n+1)+C(2, n+2))` -/
def P8880684680566558748.Spec : Prop :=
  ∀ n, P8880684680566558748.a n = A126272 (n + 1)

end A126272

/-! ## A126272.P16861316842188695435

`A045971(A045969(n+1)/A045966(n+1))`
-/

namespace A126272.P16861316842188695435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045971 (SequenceMachineLib.roundAway ((A045969 (n + 1) : ℚ) / (A045966 (n + 1) : ℚ))).toNat

end

end A126272.P16861316842188695435

namespace A126272

/-- `A045971(A045969(n+1)/A045966(n+1))` -/
def P16861316842188695435.Spec : Prop :=
  ∀ n, P16861316842188695435.a n = A126272 (n + 1)

end A126272

/-! ## A126272.P5261579349466649283

`A045971(A045973(n+1)/A045968(n+1))`
-/

namespace A126272.P5261579349466649283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045971 (SequenceMachineLib.roundAway ((A045973 (n + 1) : ℚ) / (A045968 (n + 1) : ℚ))).toNat

end

end A126272.P5261579349466649283

namespace A126272

/-- `A045971(A045973(n+1)/A045968(n+1))` -/
def P5261579349466649283.Spec : Prop :=
  ∀ n, P5261579349466649283.a n = A126272 (n + 1)

end A126272

/-! ## A126272.P11160834349431929061

`A361264(A045966(n+1))`
-/

namespace A126272.P11160834349431929061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361264 (A045966 (n + 1)).toNat

end

end A126272.P11160834349431929061

namespace A126272

/-- `A361264(A045966(n+1))` -/
def P11160834349431929061.Spec : Prop :=
  ∀ n, P11160834349431929061.a n = A126272 (n + 1)

end A126272

/-! ## A126272.P1616669915633447082

`A361264(A249827(n+1)/5+abs(1-n)+1-n)`
-/

namespace A126272.P1616669915633447082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361264 (SequenceMachineLib.roundAway ((A249827 (n + 1) : ℚ) / 5 + (|1 - (n : ℤ)| + 1 - (n : ℤ) : ℚ))).toNat

end

end A126272.P1616669915633447082

namespace A126272

/-- `A361264(A249827(n+1)/5+abs(1-n)+1-n)` -/
def P1616669915633447082.Spec : Prop :=
  ∀ n, P1616669915633447082.a n = A126272 (n + 1)

end A126272

/-!
# A126273: a(0) = a(1) = a(2) = 1, a(n) = largest prime <= a(n-1) + a(n-2) + a(n-3).

The programs for A126273, there is no canonical definition to state claims against.
-/

/-! ## A126273.P10009303444356938989

`A103934(A381357(n+1))`
-/

namespace A126273.P10009303444356938989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103934 (A381357 (n + 1)).toNat

end

end A126273.P10009303444356938989

/-! ## A126273.P1189942426742903155

`A103934(floor(sqrt(A268349(n))))`
-/

namespace A126273.P1189942426742903155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103934 (Int.sqrt (A268349 n)).toNat

end

end A126273.P1189942426742903155

/-! ## A126273.P14951477726274259246

`or(A001650(A120588(n)), A130722(n))`
-/

namespace A126273.P14951477726274259246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001650 (A120588 n).toNat) (A130722 n)

end

end A126273.P14951477726274259246

/-! ## A126273.P13231866942750779016

`or(A001650(A120588(n)), A152770(n+1))`
-/

namespace A126273.P13231866942750779016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001650 (A120588 n).toNat) (A152770 (n + 1))

end

end A126273.P13231866942750779016

/-!
# A126274: Partial sum of A005915.

The programs for A126274, the canonical program `A126274.P4388960211416980071` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126274 has offset 0).

The definition of A126274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126274.P4388960211416980071

`1/4*(n+1)²*(n+2)*(3*n+2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126274

/-- `1/4*(n+1)²*(n+2)*(3*n+2)` -/
def P4388960211416980071.Spec : Prop :=
  ∀ n, P4388960211416980071.a n = (A126274 n : ℚ)

end A126274

/-! ## A126274.P6533120418997804512

`∑[lcm(n+1, Δ[n^3])]`
-/

namespace A126274.P6533120418997804512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126274.P6533120418997804512

namespace A126274

/-- `∑[lcm(n+1, Δ[n^3])]` -/
def P6533120418997804512.Spec : Prop :=
  ∀ n, (P6533120418997804512.a n : ℤ) = A126274 n

end A126274

/-! ## A126274.P184443242737040848

`record[(1-n)²²]-∑[n]²`
-/

namespace A126274.P184443242737040848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A126274.P184443242737040848

namespace A126274

/-- `record[(1-n)²²]-∑[n]²` -/
def P184443242737040848.Spec : Prop :=
  ∀ n, P184443242737040848.a n = A126274 n

end A126274

/-! ## A126274.P12059353365917749111

`∑[∑[∑[a(n-1)+18]]]` with `a(0)=1, a(1)=12`
-/

namespace A126274.P12059353365917749111
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f3 =>
  f3 (n - 1) + 18

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126274.P12059353365917749111

namespace A126274

/-- `∑[∑[∑[a(n-1)+18]]]` -/
def P12059353365917749111.Spec : Prop :=
  ∀ n, (P12059353365917749111.a n : ℤ) = A126274 n

end A126274

/-! ## A126274.P5012509839175151127

`and(∑[(n+1)*Δ[n^3]], -1)`
-/

namespace A126274.P5012509839175151127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A126274.P5012509839175151127

namespace A126274

/-- `and(∑[(n+1)*Δ[n^3]], -1)` -/
def P5012509839175151127.Spec : Prop :=
  ∀ n, P5012509839175151127.a n = A126274 n

end A126274

/-! ## A126274.P16396145374325419410

`∑[∑[∑[ogf((1+10x+7x^2)/(1-2x+x^2))]]]`
-/

namespace A126274.P16396145374325419410
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 7] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126274.P16396145374325419410

namespace A126274

/-- `∑[∑[∑[ogf((1+10x+7x^2)/(1-2x+x^2))]]]` -/
def P16396145374325419410.Spec : Prop :=
  ∀ n, P16396145374325419410.a n = A126274 n

end A126274

/-! ## A126274.P9994829061561912797

`(n+1)²²-C(n+1, 2)²`
-/

namespace A126274.P9994829061561912797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - (Nat.choose (n + 1) 2 ^ 2 : ℤ)

end

end A126274.P9994829061561912797

namespace A126274

/-- `(n+1)²²-C(n+1, 2)²` -/
def P9994829061561912797.Spec : Prop :=
  ∀ n, P9994829061561912797.a n = A126274 n

end A126274

/-! ## A126274.P11223892280139323945

`C((n+1)², 2)+∑[n+1]²`
-/

namespace A126274.P11223892280139323945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 2 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A126274.P11223892280139323945

namespace A126274

/-- `C((n+1)², 2)+∑[n+1]²` -/
def P11223892280139323945.Spec : Prop :=
  ∀ n, (P11223892280139323945.a n : ℤ) = A126274 n

end A126274

/-! ## A126274.P10999553050349845474

`∑[A005915(n)]`
-/

namespace A126274.P10999553050349845474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126274.P10999553050349845474

namespace A126274

/-- `∑[A005915(n)]` -/
def P10999553050349845474.Spec : Prop :=
  ∀ n, P10999553050349845474.a n = A126274 n

end A126274

/-! ## A126274.P7899128877858272752

`∑[∑[A082040(n)]]`
-/

namespace A126274.P7899128877858272752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126274.P7899128877858272752

namespace A126274

/-- `∑[∑[A082040(n)]]` -/
def P7899128877858272752.Spec : Prop :=
  ∀ n, P7899128877858272752.a n = A126274 n

end A126274

/-! ## A126274.P4877312598244345924

`∑[∑[∑[A019557(n)]]]`
-/

namespace A126274.P4877312598244345924
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126274.P4877312598244345924

namespace A126274

/-- `∑[∑[∑[A019557(n)]]]` -/
def P4877312598244345924.Spec : Prop :=
  ∀ n, P4877312598244345924.a n = A126274 n

end A126274

/-! ## A126274.P1373420405143559734

`∑[∑[A045945(n)+1]]`
-/

namespace A126274.P1373420405143559734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126274.P1373420405143559734

namespace A126274

/-- `∑[∑[A045945(n)+1]]` -/
def P1373420405143559734.Spec : Prop :=
  ∀ n, P1373420405143559734.a n = A126274 n

end A126274

/-! ## A126274.P14992031621962063796

`∑[A213829(n+1)/2]`
-/

namespace A126274.P14992031621962063796
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213829 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126274.P14992031621962063796

namespace A126274

/-- `∑[A213829(n+1)/2]` -/
def P14992031621962063796.Spec : Prop :=
  ∀ n, P14992031621962063796.a n = (A126274 n : ℚ)

end A126274

/-! ## A126274.P1102696283131923904

`∑[A059986(n)+1+n]`
-/

namespace A126274.P1102696283131923904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126274.P1102696283131923904

namespace A126274

/-- `∑[A059986(n)+1+n]` -/
def P1102696283131923904.Spec : Prop :=
  ∀ n, P1102696283131923904.a n = A126274 n

end A126274

/-! ## A126274.P1452732598651205052

`∑[(n+1)*A003215(n)]`
-/

namespace A126274.P1452732598651205052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126274.P1452732598651205052

namespace A126274

/-- `∑[(n+1)*A003215(n)]` -/
def P1452732598651205052.Spec : Prop :=
  ∀ n, P1452732598651205052.a n = A126274 n

end A126274

/-! ## A126274.P5106205153489207198

`∑[∑[A236267(n)+n²]]`
-/

namespace A126274.P5106205153489207198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 n + (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126274.P5106205153489207198

namespace A126274

/-- `∑[∑[A236267(n)+n²]]` -/
def P5106205153489207198.Spec : Prop :=
  ∀ n, P5106205153489207198.a n = A126274 n

end A126274

/-! ## A126274.P8817947345795022

`∑[A220084(n)-∑[n²]]`
-/

namespace A126274.P8817947345795022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126274.P8817947345795022

namespace A126274

/-- `∑[A220084(n)-∑[n²]]` -/
def P8817947345795022.Spec : Prop :=
  ∀ n, P8817947345795022.a n = A126274 n

end A126274

/-! ## A126274.P8038639102259194474

`(n+1)²²-A000537(n)`
-/

namespace A126274.P8038639102259194474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A000537 n

end

end A126274.P8038639102259194474

namespace A126274

/-- `(n+1)²²-A000537(n)` -/
def P8038639102259194474.Spec : Prop :=
  ∀ n, P8038639102259194474.a n = A126274 n

end A126274

/-! ## A126274.P13566407986613089486

`A213830(n+1)-∑[n+1]`
-/

namespace A126274.P13566407986613089486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213830 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A126274.P13566407986613089486

namespace A126274

/-- `A213830(n+1)-∑[n+1]` -/
def P13566407986613089486.Spec : Prop :=
  ∀ n, P13566407986613089486.a n = A126274 n

end A126274

/-! ## A126274.P7747565911679085542

`A083374(n+1)+∑[n+1]²`
-/

namespace A126274.P7747565911679085542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A126274.P7747565911679085542

namespace A126274

/-- `A083374(n+1)+∑[n+1]²` -/
def P7747565911679085542.Spec : Prop :=
  ∀ n, P7747565911679085542.a n = A126274 n

end A126274

/-!
# A126275: Moment of inertia of all magic squares of order n.

The programs for A126275, the canonical program `A126275.P14366214332695404956` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126275 has offset 2).

The definition of A126275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126275.P14366214332695404956

`(n+2)²*((n+2)^4-1)/12`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126275

/-- `(n+2)²*((n+2)^4-1)/12` -/
def P14366214332695404956.Spec : Prop :=
  ∀ n, P14366214332695404956.a n = (A126275 (n + 2) : ℚ)

end A126275

/-! ## A126275.P734893046890331130

`∑[∑[5*C((n+1)²+1, 2)]]`
-/

namespace A126275.P734893046890331130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose ((n + 1) ^ 2 + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126275.P734893046890331130

namespace A126275

/-- `∑[∑[5*C((n+1)²+1, 2)]]` -/
def P734893046890331130.Spec : Prop :=
  ∀ n, (P734893046890331130.a n : ℤ) = A126275 (n + 2)

end A126275

/-! ## A126275.P6998108098255379489

`5*A213547(n+1)`
-/

namespace A126275.P6998108098255379489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A213547 (n + 1)

end

end A126275.P6998108098255379489

namespace A126275

/-- `5*A213547(n+1)` -/
def P6998108098255379489.Spec : Prop :=
  ∀ n, P6998108098255379489.a n = A126275 (n + 2)

end A126275

/-! ## A126275.P8308490384788006193

`∑[A249845(n+1)/2]`
-/

namespace A126275.P8308490384788006193
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249845 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126275.P8308490384788006193

namespace A126275

/-- `∑[A249845(n+1)/2]` -/
def P8308490384788006193.Spec : Prop :=
  ∀ n, P8308490384788006193.a n = (A126275 (n + 2) : ℚ)

end A126275

/-! ## A126275.P672428542296928269

`∑[∑[∑[5*A005898(n)]]]`
-/

namespace A126275.P672428542296928269
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126275.P672428542296928269

namespace A126275

/-- `∑[∑[∑[5*A005898(n)]]]` -/
def P672428542296928269.Spec : Prop :=
  ∀ n, P672428542296928269.a n = A126275 (n + 2)

end A126275

/-! ## A126275.P1358592323248953720

`∑[5*A079547(n+2)]`
-/

namespace A126275.P1358592323248953720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A079547 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126275.P1358592323248953720

namespace A126275

/-- `∑[5*A079547(n+2)]` -/
def P1358592323248953720.Spec : Prop :=
  ∀ n, P1358592323248953720.a n = A126275 (n + 2)

end A126275

/-! ## A126275.P17123497081182175054

`A109764(n+2)-A288959(n+2)/2`
-/

namespace A126275.P17123497081182175054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109764 (n + 2) : ℚ) - (A288959 (n + 2) : ℚ) / 2

end

end A126275.P17123497081182175054

namespace A126275

/-- `A109764(n+2)-A288959(n+2)/2` -/
def P17123497081182175054.Spec : Prop :=
  ∀ n, P17123497081182175054.a n = (A126275 (n + 2) : ℚ)

end A126275

/-! ## A126275.P14500512597315356301

`A288959(n+2)/2-A178208(n+2)`
-/

namespace A126275.P14500512597315356301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288959 (n + 2) : ℚ) / 2 - (A178208 (n + 2) : ℚ)

end

end A126275.P14500512597315356301

namespace A126275

/-- `A288959(n+2)/2-A178208(n+2)` -/
def P14500512597315356301.Spec : Prop :=
  ∀ n, P14500512597315356301.a n = (A126275 (n + 2) : ℚ)

end A126275

/-! ## A126275.P1683058557856694161

`A000292(n+1)*A006003(n+2)`
-/

namespace A126275.P1683058557856694161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A006003 (n + 2)

end

end A126275.P1683058557856694161

namespace A126275

/-- `A000292(n+1)*A006003(n+2)` -/
def P1683058557856694161.Spec : Prop :=
  ∀ n, P1683058557856694161.a n = A126275 (n + 2)

end A126275

/-! ## A126275.P16662875338816458688

`∑[∑[5*A000217((n+1)²)]]`
-/

namespace A126275.P16662875338816458688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000217 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126275.P16662875338816458688

namespace A126275

/-- `∑[∑[5*A000217((n+1)²)]]` -/
def P16662875338816458688.Spec : Prop :=
  ∀ n, P16662875338816458688.a n = A126275 (n + 2)

end A126275

/-!
# A126276: Moment of inertia of all magic cubes of order n.

The programs for A126276, the canonical program `A126276.P17237282499699653124` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126276 has offset 2).

The definition of A126276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126276.P17237282499699653124

`(n+2)^3*((n+2)^3+1)*((n+2)²-1)/12`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126276

/-- `(n+2)^3*((n+2)^3+1)*((n+2)²-1)/12` -/
def P17237282499699653124.Spec : Prop :=
  ∀ n, P17237282499699653124.a n = (A126276 (n + 2) : ℚ)

end A126276

/-! ## A126276.P2995708737197852384

`A008911(n+2)*A027441(n+2)`
-/

namespace A126276.P2995708737197852384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 2) * A027441 (n + 2)

end

end A126276.P2995708737197852384

namespace A126276

/-- `A008911(n+2)*A027441(n+2)` -/
def P2995708737197852384.Spec : Prop :=
  ∀ n, P2995708737197852384.a n = A126276 (n + 2)

end A126276

/-! ## A126276.P15634435162829093717

`A331528(n+1)/A006002(n+1)*A099903(n+2)`
-/

namespace A126276.P15634435162829093717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331528 (n + 1) : ℚ) / (A006002 (n + 1) : ℚ) * (A099903 (n + 2) : ℚ)

end

end A126276.P15634435162829093717

namespace A126276

/-- `A331528(n+1)/A006002(n+1)*A099903(n+2)` -/
def P15634435162829093717.Spec : Prop :=
  ∀ n, P15634435162829093717.a n = (A126276 (n + 2) : ℚ)

end A126276

/-! ## A126276.P17814632911454525823

`A000292(n+1)*A101378(n+2)`
-/

namespace A126276.P17814632911454525823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A101378 (n + 2)

end

end A126276.P17814632911454525823

namespace A126276

/-- `A000292(n+1)*A101378(n+2)` -/
def P17814632911454525823.Spec : Prop :=
  ∀ n, P17814632911454525823.a n = A126276 (n + 2)

end A126276

/-! ## A126276.P18068211717314415769

`A006325(n+2)*A163102(n+2)`
-/

namespace A126276.P18068211717314415769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 2) * A163102 (n + 2)

end

end A126276.P18068211717314415769

namespace A126276

/-- `A006325(n+2)*A163102(n+2)` -/
def P18068211717314415769.Spec : Prop :=
  ∀ n, P18068211717314415769.a n = A126276 (n + 2)

end A126276

/-! ## A126276.P14560020444783864306

`∑[A005900(n+1)]*A163102(n+2)`
-/

namespace A126276.P14560020444783864306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A163102 (n + 2)

end

end A126276.P14560020444783864306

namespace A126276

/-- `∑[A005900(n+1)]*A163102(n+2)` -/
def P14560020444783864306.Spec : Prop :=
  ∀ n, P14560020444783864306.a n = A126276 (n + 2)

end A126276

/-! ## A126276.P8358275936024614288

`∑[A000330(n+1)]*A091940(n+3)`
-/

namespace A126276.P8358275936024614288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A091940 (n + 3)

end

end A126276.P8358275936024614288

namespace A126276

/-- `∑[A000330(n+1)]*A091940(n+3)` -/
def P8358275936024614288.Spec : Prop :=
  ∀ n, P8358275936024614288.a n = A126276 (n + 2)

end A126276

/-!
# A126277: Triangle generated from Eulerian numbers.

The programs for A126277, there is no canonical definition to state claims against.
-/

/-! ## A126277.P3277472051709908193

`or(A074909(n), A318052(A293669(n)))`
-/

namespace A126277.P3277472051709908193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074909 n) (A318052 (A293669 n).toNat)

end

end A126277.P3277472051709908193

/-! ## A126277.P7601212349813435141

`A055129(n+1)-A356735(A356710(2*n+3))`
-/

namespace A126277.P7601212349813435141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 (n + 1) - A356735 (A356710 (2 * n + 3)).toNat

end

end A126277.P7601212349813435141

/-! ## A126277.P8589568167453827458

`A317296(A057145(n+2)%A123105(n))`
-/

namespace A126277.P8589568167453827458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317296 (Int.tmod (A057145 (n + 2)) (A123105 (n + 31))).toNat

end

end A126277.P8589568167453827458

/-! ## A126277.P15839349101145110865

`A055129(n+1)-A335453(A335500(2*n+1))`
-/

namespace A126277.P15839349101145110865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 (n + 1) - A335453 (A335500 (2 * n + 1)).toNat

end

end A126277.P15839349101145110865

/-! ## A126277.P6760613938399994900

`A373503(A157011(n+1))`
-/

namespace A126277.P6760613938399994900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373503 (A157011 (n + 1)).toNat

end

end A126277.P6760613938399994900

/-!
# A126278: a(n) = number of decimal digits of Pi, starting after the decimal point, that give an average value exactly equal to a whole number.

The programs for A126278, there is no canonical definition to state claims against.
-/

/-! ## A126278.P17468553014443690920

`record[gcd(n+1, A039918(n+1))]`
-/

namespace A126278.P17468553014443690920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A039918 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126278.P17468553014443690920

/-! ## A126278.P9273600244646320346

`A258085(A280578(n+2))+n`
-/

namespace A126278.P9273600244646320346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258085 (A280578 (n + 2)).toNat + (n : ℤ)

end

end A126278.P9273600244646320346

/-! ## A126278.P9002826931048802556

`∑[A209631(∑[A234022(n+1)])]+n`
-/

namespace A126278.P9002826931048802556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234022 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209631 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A126278.P9002826931048802556

/-! ## A126278.P18166443288545256650

`A000009(A359900(2*n+1))+2*n`
-/

namespace A126278.P18166443288545256650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A359900 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A126278.P18166443288545256650

/-! ## A126278.P3834215964944920449

`A083120(n+1)+∏[A088855(2*(n+1))]`
-/

namespace A126278.P3834215964944920449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126278.P3834215964944920449

/-!
# A126279: Triangle read by rows: T(k,n) is number of numbers <= 2^n that are products of k primes.

The programs for A126279, there is no canonical definition to state claims against.
-/

/-! ## A126279.P2697587665121321466

`A092479(comp[∑[n]])`
-/

namespace A126279.P2697587665121321466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092479 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A126279.P2697587665121321466

/-! ## A126279.P1550422684382172523

`or(char[2], A092479(A014132(n+1)))`
-/

namespace A126279.P1550422684382172523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A092479 (A014132 (n + 1)).toNat)

end

end A126279.P1550422684382172523

/-! ## A126279.P8359445312537572147

`A092479(A014132(n+1))%A001546(n)`
-/

namespace A126279.P8359445312537572147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092479 (A014132 (n + 1)).toNat) (A001546 n)

end

end A126279.P8359445312537572147

/-! ## A126279.P15700232316548543070

`gcd(A000038(n), A092479(A014132(n+1)))`
-/

namespace A126279.P15700232316548543070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A092479 (A014132 (n + 1)).toNat)

end

end A126279.P15700232316548543070

/-! ## A126279.P9914280346709869982

`lcm(A092479(A014132(n+1)), A165326(n))`
-/

namespace A126279.P9914280346709869982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A092479 (A014132 (n + 1)).toNat) (A165326 n)

end

end A126279.P9914280346709869982

/-! ## A126279.P18407760606866295923

`A000041(and(1, -n))*A092479(A014132(n+1))`
-/

namespace A126279.P18407760606866295923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A092479 (A014132 (n + 1)).toNat

end

end A126279.P18407760606866295923

/-! ## A126279.P10543544011249041372

`A007318(val(n+1, 12))*A092479(A014132(n+1))`
-/

namespace A126279.P10543544011249041372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 12) * A092479 (A014132 (n + 1)).toNat

end

end A126279.P10543544011249041372

/-! ## A126279.P18298228082280434034

`A007318(ceil(n/(n+1)))*A092479(A014132(n+1))`
-/

namespace A126279.P18298228082280434034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A092479 (A014132 (n + 1)).toNat

end

end A126279.P18298228082280434034

/-! ## A126279.P1809195825237361699

`A114791(A038722(n+1))`
-/

namespace A126279.P1809195825237361699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114791 (A038722 (n + 1)).toNat

end

end A126279.P1809195825237361699

/-!
# A126281: a(n) is the least m to satisfy the requirements of A052130.

The programs for A126281, there is no canonical definition to state claims against.
-/

/-! ## A126281.P17831053938437086536

`floor(∑[exp(tanh(n)²)])`
-/

namespace A126281.P17831053938437086536
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.tanh (n : ℝ) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A126281.P17831053938437086536

/-! ## A126281.P10472733083956065329

`abs(floor((19*n-1)/7))`
-/

namespace A126281.P10472733083956065329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊((19 * n : ℤ) - 1 : ℚ) / 7⌋|

end

end A126281.P10472733083956065329

/-! ## A126281.P4551771421301175364

`comp[floor(n*log2(3))-C(n, n²)]`
-/

namespace A126281.P4551771421301175364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋ - (Nat.choose n (n ^ 2) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A126281.P4551771421301175364

/-! ## A126281.P15988636169261143399

`comp[ceil(n*log2(3))]-ceil(sin(n)²)`
-/

namespace A126281.P15988636169261143399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (3 : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A126281.P15988636169261143399

/-! ## A126281.P6762075320423691950

`floor(n/log(atan(8)))+C(2, n+2)`
-/

namespace A126281.P6762075320423691950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (Real.arctan (8 : ℝ))⌋ + (Nat.choose 2 (n + 2) : ℤ)

end

end A126281.P6762075320423691950

/-!
# A126282: Median of the largest prime dividing the first 10^n numbers greater than 1.

The programs for A126282, there is no canonical definition to state claims against.
-/

/-! ## A126282.P7999714063872075358

`A005180(A328843(n)+A056236(n))`
-/

namespace A126282.P7999714063872075358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (A328843 n + A056236 n).toNat

end

end A126282.P7999714063872075358

/-!
# A126283: Largest number k for which the n-th prime is the median of the largest prime dividing the first k integers.

The programs for A126283, there is no canonical definition to state claims against.
-/

/-! ## A126283.P5041170174490849147

`A124741(A290154(n+1))-1`
-/

namespace A126283.P5041170174490849147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A290154 (n + 1)).toNat - 1

end

end A126283.P5041170174490849147

/-! ## A126283.P7632112861645958106

`A233583(A290154(n+1)-1)`
-/

namespace A126283.P7632112861645958106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A290154 (n + 1) - 1).toNat

end

end A126283.P7632112861645958106

/-! ## A126283.P3692813305266628172

`A290154(n+1)-A000005(A290175(n))`
-/

namespace A126283.P3692813305266628172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290154 (n + 1) - A000005 (A290175 n).toNat

end

end A126283.P3692813305266628172

/-! ## A126283.P10771973461740373301

`A290154(n+1)-A000034(A091365(n+1))`
-/

namespace A126283.P10771973461740373301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290154 (n + 1) - A000034 (A091365 (n + 1)).toNat

end

end A126283.P10771973461740373301

/-! ## A126283.P3718155588035322395

`A290154(n+1)-A326641(A095283(n+1))`
-/

namespace A126283.P3718155588035322395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290154 (n + 1) - A326641 (A095283 (n + 1)).toNat

end

end A126283.P3718155588035322395

/-!
# A126284: a(n) = 5*2^n - 4*n - 5.

The programs for A126284, the canonical program `A126284.P7116744339461656326` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126284 has offset 1).

The definition of A126284 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^(n+1)-4*(n+1)-5` (program `A126284.P7116744339461656326`, by `A126284.P7116744339461656326.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126284.P7116744339461656326

`5*2^(n+1)-4*(n+1)-5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126284

/-- `5*2^(n+1)-4*(n+1)-5` -/
def P7116744339461656326.Spec : Prop :=
  ∀ n, P7116744339461656326.a n = A126284 (n + 1)

theorem P7116744339461656326.correct : P7116744339461656326.Spec := by
  intro n
  simp only [A126284, Nat.add_sub_cancel]

end A126284

/-! ## A126284.P640446982944246789

`∑[ogf((1+3x)/(1-3x+2x^2))]`
-/

namespace A126284.P640446982944246789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P640446982944246789

namespace A126284

/-- `∑[ogf((1+3x)/(1-3x+2x^2))]` -/
def P640446982944246789.Spec : Prop :=
  ∀ n, P640446982944246789.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P12870469854586785181

`ogf((1+3x)/(1-4x+5x^2-2x^3))`
-/

namespace A126284.P12870469854586785181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -4, 5, -2] n

end

end A126284.P12870469854586785181

namespace A126284

/-- `ogf((1+3x)/(1-4x+5x^2-2x^3))` -/
def P12870469854586785181.Spec : Prop :=
  ∀ n, P12870469854586785181.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P7199525321593362929

`∑[2*(a(n-1)+2)]` with `a(0)=1`
-/

namespace A126284.P7199525321593362929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P7199525321593362929

namespace A126284

/-- `∑[2*(a(n-1)+2)]` -/
def P7199525321593362929.Spec : Prop :=
  ∀ n, (P7199525321593362929.a n : ℤ) = A126284 (n + 1)

end A126284

/-! ## A126284.P5686305811758954724

`floor(∑[∑[2*a(n-1)]])` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A126284.P5686305811758954724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P5686305811758954724

namespace A126284

/-- `floor(∑[∑[2*a(n-1)]])` -/
def P5686305811758954724.Spec : Prop :=
  ∀ n, (P5686305811758954724.a n : ℤ) = A126284 (n + 1)

end A126284

/-! ## A126284.P12485072176653520675

`floor(∑[a(n-1)+a(n-1)+4])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A126284.P12485072176653520675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P12485072176653520675

namespace A126284

/-- `floor(∑[a(n-1)+a(n-1)+4])` -/
def P12485072176653520675.Spec : Prop :=
  ∀ n, (P12485072176653520675.a n : ℤ) = A126284 (n + 1)

end A126284

/-! ## A126284.P6911670640902507864

`∑[A048487(n)]`
-/

namespace A126284.P6911670640902507864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P6911670640902507864

namespace A126284

/-- `∑[A048487(n)]` -/
def P6911670640902507864.Spec : Prop :=
  ∀ n, P6911670640902507864.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P15153500661095555396

`A053599(Δ[n²])`
-/

namespace A126284.P15153500661095555396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053599 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A126284.P15153500661095555396

namespace A126284

/-- `A053599(Δ[n²])` -/
def P15153500661095555396.Spec : Prop :=
  ∀ n, P15153500661095555396.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P12022503658820955715

`∑[∑[A146523(n)]]`
-/

namespace A126284.P12022503658820955715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P12022503658820955715

namespace A126284

/-- `∑[∑[A146523(n)]]` -/
def P12022503658820955715.Spec : Prop :=
  ∀ n, P12022503658820955715.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P13006727147498120079

`∑[A051633(n)-2]`
-/

namespace A126284.P13006727147498120079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051633 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P13006727147498120079

namespace A126284

/-- `∑[A051633(n)-2]` -/
def P13006727147498120079.Spec : Prop :=
  ∀ n, P13006727147498120079.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P14046520444619108890

`∑[A123208(2*n)]`
-/

namespace A126284.P14046520444619108890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123208 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P14046520444619108890

namespace A126284

/-- `∑[A123208(2*n)]` -/
def P14046520444619108890.Spec : Prop :=
  ∀ n, P14046520444619108890.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P17126656468619647942

`∑[A153894(n)-3]`
-/

namespace A126284.P17126656468619647942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P17126656468619647942

namespace A126284

/-- `∑[A153894(n)-3]` -/
def P17126656468619647942.Spec : Prop :=
  ∀ n, P17126656468619647942.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P14919398379229931120

`∑[A020714(n)-4]`
-/

namespace A126284.P14919398379229931120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P14919398379229931120

namespace A126284

/-- `∑[A020714(n)-4]` -/
def P14919398379229931120.Spec : Prop :=
  ∀ n, P14919398379229931120.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P7210975674220966088

`∑[A268896(3*n)]`
-/

namespace A126284.P7210975674220966088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268896 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P7210975674220966088

namespace A126284

/-- `∑[A268896(3*n)]` -/
def P7210975674220966088.Spec : Prop :=
  ∀ n, P7210975674220966088.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P10868436499513591020

`∑[A083575(n)-5]`
-/

namespace A126284.P10868436499513591020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P10868436499513591020

namespace A126284

/-- `∑[A083575(n)-5]` -/
def P10868436499513591020.Spec : Prop :=
  ∀ n, P10868436499513591020.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P2179570608519267611

`∑[A094002(n)+n]`
-/

namespace A126284.P2179570608519267611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094002 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P2179570608519267611

namespace A126284

/-- `∑[A094002(n)+n]` -/
def P2179570608519267611.Spec : Prop :=
  ∀ n, P2179570608519267611.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P6443143768119184035

`∑[A154117(n+1)-1]`
-/

namespace A126284.P6443143768119184035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154117 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P6443143768119184035

namespace A126284

/-- `∑[A154117(n+1)-1]` -/
def P6443143768119184035.Spec : Prop :=
  ∀ n, P6443143768119184035.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P11233711062837529905

`∑[A052549(n+1)-3]`
-/

namespace A126284.P11233711062837529905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P11233711062837529905

namespace A126284

/-- `∑[A052549(n+1)-3]` -/
def P11233711062837529905.Spec : Prop :=
  ∀ n, P11233711062837529905.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P13043269942756706510

`∑[A238549(2*n+1)]`
-/

namespace A126284.P13043269942756706510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238549 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P13043269942756706510

namespace A126284

/-- `∑[A238549(2*n+1)]` -/
def P13043269942756706510.Spec : Prop :=
  ∀ n, P13043269942756706510.a n = A126284 (n + 1)

end A126284

/-! ## A126284.P2076321695876285695

`∑[A154252(n+1)/2]`
-/

namespace A126284.P2076321695876285695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154252 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126284.P2076321695876285695

namespace A126284

/-- `∑[A154252(n+1)/2]` -/
def P2076321695876285695.Spec : Prop :=
  ∀ n, P2076321695876285695.a n = (A126284 (n + 1) : ℚ)

end A126284

/-!
# A126285: Number of partial mappings (or mapping patterns) from n points to themselves; number of partial endofunctions.

The programs for A126285, there is no canonical definition to state claims against.
-/

/-! ## A126285.P16274822503979786855

`A127911(n)+A001372(n)`
-/

namespace A126285.P16274822503979786855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127911 n + A001372 n

end

end A126285.P16274822503979786855

/-! ## A126285.P2149952121420697613

`A001372(n)-A057428(n)*A127911(n)`
-/

namespace A126285.P2149952121420697613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 n - A057428 n * A127911 n

end

end A126285.P2149952121420697613

/-! ## A126285.P18160864195042287216

`A127911(n)+A254529(n)/n!`
-/

namespace A126285.P18160864195042287216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127911 n : ℚ) + (A254529 n : ℚ) / (Nat.factorial n : ℚ)

end

end A126285.P18160864195042287216

/-! ## A126285.P17497395921770763926

`A127911(n)+A254529(n)/A000142(n)`
-/

namespace A126285.P17497395921770763926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127911 n : ℚ) + (A254529 n : ℚ) / (A000142 n : ℚ)

end

end A126285.P17497395921770763926

/-! ## A126285.P13013751434910377675

`A127911(n)+A254529(n)/∏[A028310(n)]`
-/

namespace A126285.P13013751434910377675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127911 n : ℚ) + (A254529 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A126285.P13013751434910377675

/-! ## A126285.P11976950835135268976

`A127911(n)+A254529(n)/A130850(A000217(n))`
-/

namespace A126285.P11976950835135268976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127911 n : ℚ) + (A254529 n : ℚ) / (A130850 (A000217 n).toNat : ℚ)

end

end A126285.P11976950835135268976

/-!
# A126286: a(1) = 2, a(n) = n * LeastPrimeFactor(n+1) / LeastPrimeFactor(n).

The programs for A126286, there is no canonical definition to state claims against.
-/

/-! ## A126286.P3188314316785282999

`A032742(n+1)*A020639(n+2)`
-/

namespace A126286.P3188314316785282999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A020639 (n + 2)

end

end A126286.P3188314316785282999

/-! ## A126286.P4408080867622279020

`(n+1)*ratio[A020639(n+1)]`
-/

namespace A126286.P4408080867622279020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A126286.P4408080867622279020

/-! ## A126286.P16933191152380407281

`(n+1)/A020639(n+1)*A020639(n+2)`
-/

namespace A126286.P16933191152380407281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ) * (A020639 (n + 2) : ℚ)

end

end A126286.P16933191152380407281

/-! ## A126286.P6090938828954981719

`lcm(A020639(A000027(n+2)), A032742(n+1))`
-/

namespace A126286.P6090938828954981719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A000027 (n + 2)).toNat) (A032742 (n + 1))

end

end A126286.P6090938828954981719

/-! ## A126286.P16955745933287914307

`A032742(n+1)+A032742(n+1)*A057237(n+2)`
-/

namespace A126286.P16955745933287914307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + A032742 (n + 1) * A057237 (n + 2)

end

end A126286.P16955745933287914307

/-! ## A126286.P1292640683629141937

`(A111234(n+1)-A020639(n+1))*A020639(n+2)`
-/

namespace A126286.P1292640683629141937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111234 (n + 1) - A020639 (n + 1)) * A020639 (n + 2)

end

end A126286.P1292640683629141937

/-! ## A126286.P14337931620203348078

`A032742(n+1)/A326065(n+2)*A326136(n+2)`
-/

namespace A126286.P14337931620203348078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A326065 (n + 2) : ℚ) * (A326136 (n + 2) : ℚ)

end

end A126286.P14337931620203348078

/-! ## A126286.P13696750364465066490

`(n+1)*(n+2)/A126287(n+2)`
-/

namespace A126286.P13696750364465066490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) / (A126287 (n + 2) : ℚ))

end

end A126286.P13696750364465066490

/-! ## A126286.P4349367330535518737

`p?[A028233(∏{p}[n+1, #])]*A032742(n+1)`
-/

namespace A126286.P4349367330535518737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A032742 (n + 1)

end

end A126286.P4349367330535518737

/-! ## A126286.P546398247206691113

`A014963(A028233(n+2))*A032742(n+1)`
-/

namespace A126286.P546398247206691113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028233 (n + 2)).toNat * A032742 (n + 1)

end

end A126286.P546398247206691113

/-! ## A126286.P7646894823206845021

`p?[A008578(A055396(n+1)+1)]*A032742(n+1)`
-/

namespace A126286.P7646894823206845021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A055396 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A032742 (n + 1)

end

end A126286.P7646894823206845021

/-! ## A126286.P4376961203326339746

`(A046669(n+2)-A046669(n+1))*A032742(n+1)`
-/

namespace A126286.P4376961203326339746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046669 (n + 2) - A046669 (n + 1)) * A032742 (n + 1)

end

end A126286.P4376961203326339746

/-! ## A126286.P3833172403595788085

`(A111234(n+2)-A032742(n+2))*A032742(n+1)`
-/

namespace A126286.P3833172403595788085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111234 (n + 2) - A032742 (n + 2)) * A032742 (n + 1)

end

end A126286.P3833172403595788085

/-! ## A126286.P15977697717772389972

`(A285109(n+2)-A020639(n+2))/A020639(n+1)`
-/

namespace A126286.P15977697717772389972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285109 (n + 2) - A020639 (n + 2) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A126286.P15977697717772389972

/-! ## A126286.P5959831261553716657

`A032742(n+1)/A006530(n+2)*A066048(n+2)`
-/

namespace A126286.P5959831261553716657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A006530 (n + 2) : ℚ) * (A066048 (n + 2) : ℚ)

end

end A126286.P5959831261553716657

/-! ## A126286.P1086746364045485372

`A032742(n+1)/A088377(n+2)*A088378(n+2)`
-/

namespace A126286.P1086746364045485372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A088377 (n + 2) : ℚ) * (A088378 (n + 2) : ℚ)

end

end A126286.P1086746364045485372

/-! ## A126286.P12180891334229331345

`A032742(n+1)/A088378(n+2)*A088379(n+2)`
-/

namespace A126286.P12180891334229331345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A088378 (n + 2) : ℚ) * (A088379 (n + 2) : ℚ)

end

end A126286.P12180891334229331345

/-!
# A126287: a(1) = 1, a(2) = 1, a(n) = n * LeastPrimeFactor(n-1) / LeastPrimeFactor(n).

The programs for A126287, there is no canonical definition to state claims against.
-/

/-! ## A126287.P193482144335799817

`A020639(∏{p}[n, #])*A032742(n+1)`
-/

namespace A126287.P193482144335799817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) * A032742 (n + 1)

end

end A126287.P193482144335799817

/-! ## A126287.P4034175362151418823

`A028233(∏{p}[n, #])*A032742(n+1)`
-/

namespace A126287.P4034175362151418823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n), p) * A032742 (n + 1)

end

end A126287.P4034175362151418823

/-! ## A126287.P13123750464989787545

`A032742(n+1)*A034684(∏{p}[n, #])`
-/

namespace A126287.P13123750464989787545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A034684 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A126287.P13123750464989787545

/-! ## A126287.P10753384015077570556

`A032742(n+1)*A126773(∏{p}[n, #])`
-/

namespace A126287.P10753384015077570556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A126773 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A126287.P10753384015077570556

/-! ## A126287.P5493722475129795183

`(n+1)/∏{p}[A020639(n+1), #/A020639(n)]`
-/

namespace A126287.P5493722475129795183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A020639 n : ℚ))

end

end A126287.P5493722475129795183

/-! ## A126287.P8078605021313289806

`A020639(A028310(n))*A032742(n+1)`
-/

namespace A126287.P8078605021313289806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028310 n).toNat * A032742 (n + 1)

end

end A126287.P8078605021313289806

/-! ## A126287.P10763953459045394980

`(n+1-A060681(n+1))*A020639(A028310(n))`
-/

namespace A126287.P10763953459045394980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A060681 (n + 1)) * A020639 (A028310 n).toNat

end

end A126287.P10763953459045394980

/-! ## A126287.P6912295260681511001

`(n+1)/A020639(n+1)*A020639(A028310(n))`
-/

namespace A126287.P6912295260681511001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ) * (A020639 (A028310 n).toNat : ℚ)

end

end A126287.P6912295260681511001

/-! ## A126287.P4172601838077117727

`(n+1)/A020639(n+1)*A020639(A257088(n))`
-/

namespace A126287.P4172601838077117727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ) * (A020639 (A257088 n).toNat : ℚ)

end

end A126287.P4172601838077117727

/-! ## A126287.P3456963078686211166

`gcd(n+1, A285639(n+1))*A020639(A028310(n))`
-/

namespace A126287.P3456963078686211166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A285639 (n + 1)) : ℤ) * A020639 (A028310 n).toNat

end

end A126287.P3456963078686211166

/-! ## A126287.P17321041791080313875

`(n+1)/A020639(n+1)*A020639(A000007(n)+n)`
-/

namespace A126287.P17321041791080313875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ) * (A020639 (A000007 n + (n : ℤ)).toNat : ℚ)

end

end A126287.P17321041791080313875

/-! ## A126287.P14626291514652553097

`gcd((2*n+1)²+n, A220096(n+1))*A020639(A028310(n))`
-/

namespace A126287.P14626291514652553097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((2 * n + 1) ^ 2 + n : ℤ) (A220096 (n + 1)) : ℤ) * A020639 (A028310 n).toNat

end

end A126287.P14626291514652553097

/-! ## A126287.P16496856762387824600

`(n+1)/ratio[A020639(A000007(n)+n)]`
-/

namespace A126287.P16496856762387824600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A126287.P16496856762387824600

/-! ## A126287.P17807519726620642469

`A020639(A253909(n))*A032742(n+1)`
-/

namespace A126287.P17807519726620642469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A253909 n).toNat * A032742 (n + 1)

end

end A126287.P17807519726620642469

/-! ## A126287.P14984038627258319582

`(n+1)/A020639(n+1)*A020639(A253909(n))`
-/

namespace A126287.P14984038627258319582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ) * (A020639 (A253909 n).toNat : ℚ)

end

end A126287.P14984038627258319582

/-!
# A126288: a(1) = 2, a(n) = n * LargestPrimeFactor(n+1) / LargestPrimeFactor(n).

The programs for A126288, the canonical program `A126288.P6496446595798080403` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126288 has offset 1).

The definition of A126288 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A126288.P6496446595798080403

`A006530(n+2)*A052126(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A126288

/-- `A006530(n+2)*A052126(n+1)` -/
def P6496446595798080403.Spec : Prop :=
  ∀ n, P6496446595798080403.a n = A126288 (n + 1)

theorem P6496446595798080403.correct : P6496446595798080403.Spec := by
  intro n
  simp only [A126288, Nat.add_sub_cancel]

end A126288

/-! ## A126288.P14162394253966841104

`(n+1)*A006530(n+2)/A006530(n+1)`
-/

namespace A126288.P14162394253966841104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A006530 (n + 2) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A126288.P14162394253966841104

namespace A126288

/-- `(n+1)*A006530(n+2)/A006530(n+1)` -/
def P14162394253966841104.Spec : Prop :=
  ∀ n, P14162394253966841104.a n = (A126288 (n + 1) : ℚ)

end A126288

/-! ## A126288.P2958632479746622179

`(n+1)*ratio[A006530(n+1)]`
-/

namespace A126288.P2958632479746622179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A126288.P2958632479746622179

namespace A126288

/-- `(n+1)*ratio[A006530(n+1)]` -/
def P2958632479746622179.Spec : Prop :=
  ∀ n, P2958632479746622179.a n = (A126288 (n + 1) : ℚ)

end A126288

/-! ## A126288.P18033168370758842223

`A052126(n+1)*A088387(A007947(n+2))`
-/

namespace A126288.P18033168370758842223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A088387 (A007947 (n + 2)).toNat

end

end A126288.P18033168370758842223

namespace A126288

/-- `A052126(n+1)*A088387(A007947(n+2))` -/
def P18033168370758842223.Spec : Prop :=
  ∀ n, P18033168370758842223.a n = A126288 (n + 1)

end A126288

/-! ## A126288.P16834160863407543335

`lcm(A006530(n+2), A052126(A000027(n+1)))`
-/

namespace A126288.P16834160863407543335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (n + 2)) (A052126 (A000027 (n + 1)).toNat)

end

end A126288.P16834160863407543335

namespace A126288

/-- `lcm(A006530(n+2), A052126(A000027(n+1)))` -/
def P16834160863407543335.Spec : Prop :=
  ∀ n, (P16834160863407543335.a n : ℤ) = A126288 (n + 1)

end A126288

/-! ## A126288.P705906137519838867

`A008578(A061395(n+2)+1)*A052126(n+1)`
-/

namespace A126288.P705906137519838867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061395 (n + 2) + 1).toNat * A052126 (n + 1)

end

end A126288.P705906137519838867

namespace A126288

/-- `A008578(A061395(n+2)+1)*A052126(n+1)` -/
def P705906137519838867.Spec : Prop :=
  ∀ n, P705906137519838867.a n = A126288 (n + 1)

end A126288

/-! ## A126288.P17833203727471580779

`p?[A318884(n+1)-A318886(n+1)]*A052126(n+1)`
-/

namespace A126288.P17833203727471580779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - A318886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A052126 (n + 1)

end

end A126288.P17833203727471580779

namespace A126288

/-- `p?[A318884(n+1)-A318886(n+1)]*A052126(n+1)` -/
def P17833203727471580779.Spec : Prop :=
  ∀ n, P17833203727471580779.a n = A126288 (n + 1)

end A126288

/-! ## A126288.P2468572724515355986

`(n+1)*(n+2)/A126289(n+2)`
-/

namespace A126288.P2468572724515355986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) / (A126289 (n + 2) : ℚ))

end

end A126288.P2468572724515355986

namespace A126288

/-- `(n+1)*(n+2)/A126289(n+2)` -/
def P2468572724515355986.Spec : Prop :=
  ∀ n, P2468572724515355986.a n = (A126288 (n + 1) : ℚ)

end A126288

/-! ## A126288.P9394961676679687411

`A052126(n+1)*A111089(n+2)`
-/

namespace A126288.P9394961676679687411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A111089 (n + 2)

end

end A126288.P9394961676679687411

namespace A126288

/-- `A052126(n+1)*A111089(n+2)` -/
def P9394961676679687411.Spec : Prop :=
  ∀ n, P9394961676679687411.a n = A126288 (n + 1)

end A126288

/-! ## A126288.P17025984758313077363

`p?[A053585(∏{p}[n+1, #])]*A052126(n+1)`
-/

namespace A126288.P17025984758313077363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A052126 (n + 1)

end

end A126288.P17025984758313077363

namespace A126288

/-- `p?[A053585(∏{p}[n+1, #])]*A052126(n+1)` -/
def P17025984758313077363.Spec : Prop :=
  ∀ n, P17025984758313077363.a n = A126288 (n + 1)

end A126288

/-! ## A126288.P15520480166408637057

`(n+2)/A052126(n+2)*A052126(n+1)`
-/

namespace A126288.P15520480166408637057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A052126 (n + 2) : ℚ) * (A052126 (n + 1) : ℚ)

end

end A126288.P15520480166408637057

namespace A126288

/-- `(n+2)/A052126(n+2)*A052126(n+1)` -/
def P15520480166408637057.Spec : Prop :=
  ∀ n, P15520480166408637057.a n = (A126288 (n + 1) : ℚ)

end A126288

/-! ## A126288.P1757289711153009965

`A006530(n+2)*A269304(n+1)-A253560(n+2)`
-/

namespace A126288.P1757289711153009965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A269304 (n + 1) - A253560 (n + 2)

end

end A126288.P1757289711153009965

namespace A126288

/-- `A006530(n+2)*A269304(n+1)-A253560(n+2)` -/
def P1757289711153009965.Spec : Prop :=
  ∀ n, P1757289711153009965.a n = A126288 (n + 1)

theorem P1757289711153009965.correct : P1757289711153009965.Spec := by
  intro n
  simp only [A126288, Nat.add_sub_cancel, A126288.P1757289711153009965.a, A126288.P6496446595798080403.a, A006530, A006530.P13372528560459906635.a, A052126, A052126.P1944428405920482243.a, A253560, A253560.P6679352984908299498.a, A269304, A269304.P13577493983909923936.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126288

/-! ## A126288.P7848931786467576493

`(A129598(n+2)-A006530(n+2))/A006530(n+1)`
-/

namespace A126288.P7848931786467576493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129598 (n + 2) - A006530 (n + 2) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A126288.P7848931786467576493

namespace A126288

/-- `(A129598(n+2)-A006530(n+2))/A006530(n+1)` -/
def P7848931786467576493.Spec : Prop :=
  ∀ n, P7848931786467576493.a n = (A126288 (n + 1) : ℚ)

end A126288

/-! ## A126288.P1983743158078758232

`(A253560(n+2)-A006530(n+2))/A006530(n+1)`
-/

namespace A126288.P1983743158078758232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 2) - A006530 (n + 2) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A126288.P1983743158078758232

namespace A126288

/-- `(A253560(n+2)-A006530(n+2))/A006530(n+1)` -/
def P1983743158078758232.Spec : Prop :=
  ∀ n, P1983743158078758232.a n = (A126288 (n + 1) : ℚ)

end A126288

/-! ## A126288.P8740878733981497293

`p?[A051664(n+1)-A070536(n+1)]*A052126(n+1)`
-/

namespace A126288.P8740878733981497293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - A070536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A052126 (n + 1)

end

end A126288.P8740878733981497293

namespace A126288

/-- `p?[A051664(n+1)-A070536(n+1)]*A052126(n+1)` -/
def P8740878733981497293.Spec : Prop :=
  ∀ n, P8740878733981497293.a n = A126288 (n + 1)

end A126288

/-! ## A126288.P11639840021964318445

`p?[A027746(A022559(n+1)+1)]*A052126(n+1)`
-/

namespace A126288.P11639840021964318445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (A022559 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A052126 (n + 1)

end

end A126288.P11639840021964318445

namespace A126288

/-- `p?[A027746(A022559(n+1)+1)]*A052126(n+1)` -/
def P11639840021964318445.Spec : Prop :=
  ∀ n, P11639840021964318445.a n = A126288 (n + 1)

end A126288

/-! ## A126288.P3766888773555747467

`A111089(n+2)/A111089(n+1)*A233583(n+2)`
-/

namespace A126288.P3766888773555747467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111089 (n + 2) : ℚ) / (A111089 (n + 1) : ℚ) * (A233583 (n + 2) : ℚ)

end

end A126288.P3766888773555747467

namespace A126288

/-- `A111089(n+2)/A111089(n+1)*A233583(n+2)` -/
def P3766888773555747467.Spec : Prop :=
  ∀ n, P3766888773555747467.a n = (A126288 (n + 1) : ℚ)

end A126288

/-! ## A126288.P2272834757402457239

`A014963(A304180(n+2))*A052126(n+1)`
-/

namespace A126288.P2272834757402457239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A304180 (n + 2)).toNat * A052126 (n + 1)

end

end A126288.P2272834757402457239

namespace A126288

/-- `A014963(A304180(n+2))*A052126(n+1)` -/
def P2272834757402457239.Spec : Prop :=
  ∀ n, P2272834757402457239.a n = A126288 (n + 1)

end A126288

/-!
# A126289: a(1) = 1, a(2) = 1, a(n) = n * LargestPrimeFactor(n-1) / LargestPrimeFactor(n).

The programs for A126289, the canonical program `A126289.P2545217101425683168` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126289 has offset 1).

The definition of A126289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126289.P8646818555940745172

`A006530(∏{p}[n, #])*A052126(n+1)`
-/

namespace A126289.P8646818555940745172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), p) * A052126 (n + 1)

end

end A126289.P8646818555940745172

namespace A126289

/-- `A006530(∏{p}[n, #])*A052126(n+1)` -/
def P8646818555940745172.Spec : Prop :=
  ∀ n, P8646818555940745172.a n = A126289 (n + 1)

end A126289

/-! ## A126289.P7216628106676532077

`A052126(n+1)*A053585(∏{p}[n, #])`
-/

namespace A126289.P7216628106676532077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A126289.P7216628106676532077

namespace A126289

/-- `A052126(n+1)*A053585(∏{p}[n, #])` -/
def P7216628106676532077.Spec : Prop :=
  ∀ n, P7216628106676532077.a n = A126289 (n + 1)

end A126289

/-! ## A126289.P11157866859817348813

`A006530(A028310(n))*A052126(n+1)`
-/

namespace A126289.P11157866859817348813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat * A052126 (n + 1)

end

end A126289.P11157866859817348813

namespace A126289

/-- `A006530(A028310(n))*A052126(n+1)` -/
def P11157866859817348813.Spec : Prop :=
  ∀ n, P11157866859817348813.a n = A126289 (n + 1)

theorem P11157866859817348813.correct : P11157866859817348813.Spec := by
  intro n
  simp only [A126289, Nat.add_sub_cancel, A126289.P11157866859817348813.a, A126289.P2545217101425683168.a, A006530, A006530.P13372528560459906635.a, A028310, A028310.P18130301328277559831.a, A052126, A052126.P1944428405920482243.a, A171462, A171462.P186066025836437895.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126289

/-! ## A126289.P2545217101425683168

`(1-A171462(n+1)+n)*A006530(A028310(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A126289

/-- `(1-A171462(n+1)+n)*A006530(A028310(n))` -/
def P2545217101425683168.Spec : Prop :=
  ∀ n, P2545217101425683168.a n = A126289 (n + 1)

theorem P2545217101425683168.correct : P2545217101425683168.Spec := by
  intro n
  simp only [A126289, Nat.add_sub_cancel]

end A126289

/-! ## A126289.P18066024107336930277

`(n+1)/A006530(n+1)*A006530(A028310(n))`
-/

namespace A126289.P18066024107336930277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A006530 (A028310 n).toNat : ℚ)

end

end A126289.P18066024107336930277

namespace A126289

/-- `(n+1)/A006530(n+1)*A006530(A028310(n))` -/
def P18066024107336930277.Spec : Prop :=
  ∀ n, P18066024107336930277.a n = (A126289 (n + 1) : ℚ)

end A126289

/-! ## A126289.P5599662695748227459

`(n+1)/A006530(n+1)*A006530(A257088(n))`
-/

namespace A126289.P5599662695748227459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A006530 (A257088 n).toNat : ℚ)

end

end A126289.P5599662695748227459

namespace A126289

/-- `(n+1)/A006530(n+1)*A006530(A257088(n))` -/
def P5599662695748227459.Spec : Prop :=
  ∀ n, P5599662695748227459.a n = (A126289 (n + 1) : ℚ)

end A126289

/-! ## A126289.P17035736945287961440

`lcm(n+1, A006530(A008574(n)))/A006530(n+1)`
-/

namespace A126289.P17035736945287961440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A006530 (A008574 n).toNat) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A126289.P17035736945287961440

namespace A126289

/-- `lcm(n+1, A006530(A008574(n)))/A006530(n+1)` -/
def P17035736945287961440.Spec : Prop :=
  ∀ n, P17035736945287961440.a n = (A126289 (n + 1) : ℚ)

end A126289

/-! ## A126289.P4003527466288827548

`(n+1)/ratio[A006530(A000007(n)+n)]`
-/

namespace A126289.P4003527466288827548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A126289.P4003527466288827548

namespace A126289

/-- `(n+1)/ratio[A006530(A000007(n)+n)]` -/
def P4003527466288827548.Spec : Prop :=
  ∀ n, P4003527466288827548.a n = (A126289 (n + 1) : ℚ)

end A126289

/-! ## A126289.P10939431452843375521

`A027746(A022559(n)+1)*A052126(n+1)`
-/

namespace A126289.P10939431452843375521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (A022559 n + 1).toNat * A052126 (n + 1)

end

end A126289.P10939431452843375521

namespace A126289

/-- `A027746(A022559(n)+1)*A052126(n+1)` -/
def P10939431452843375521.Spec : Prop :=
  ∀ n, P10939431452843375521.a n = A126289 (n + 1)

end A126289

/-! ## A126289.P10087503286811050104

`(n+1)/A006530(n+1)*A027746(A022559(n)+1)`
-/

namespace A126289.P10087503286811050104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A027746 (A022559 n + 1).toNat : ℚ)

end

end A126289.P10087503286811050104

namespace A126289

/-- `(n+1)/A006530(n+1)*A027746(A022559(n)+1)` -/
def P10087503286811050104.Spec : Prop :=
  ∀ n, P10087503286811050104.a n = (A126289 (n + 1) : ℚ)

end A126289

/-!
# A126290: Signature-permutation of a Catalan automorphism: A069772-conjugate of A125976.

The programs for A126290, there is no canonical definition to state claims against.
-/

/-! ## A126290.P18079220044999734161

`A126315(A069771(n))`
-/

namespace A126290.P18079220044999734161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 (A069771 n).toNat

end

end A126290.P18079220044999734161

/-! ## A126290.P5707988315050469146

`A126313(A069772(n))`
-/

namespace A126290.P5707988315050469146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A069772 n).toNat

end

end A126290.P5707988315050469146

/-! ## A126290.P14782478275074777143

`A069772(A126314(n))`
-/

namespace A126290.P14782478275074777143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A126314 n).toNat

end

end A126290.P14782478275074777143

/-! ## A126290.P3449062969751269936

`A069771(A126316(n))`
-/

namespace A126290.P3449062969751269936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 (A126316 n).toNat

end

end A126290.P3449062969751269936

/-! ## A126290.P4142815716290200610

`A126313(A069771(A057164(n)))`
-/

namespace A126290.P4142815716290200610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A069771 (A057164 n).toNat).toNat

end

end A126290.P4142815716290200610

/-! ## A126290.P10046074799790233800

`A126313(A126313(A125976(n)))`
-/

namespace A126290.P10046074799790233800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A126313 (A125976 n).toNat).toNat

end

end A126290.P10046074799790233800

/-! ## A126290.P11602820594424333697

`A126315(A126315(A125976(2*n-n)))`
-/

namespace A126290.P11602820594424333697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 (A126315 (A125976 (2 * n - n)).toNat).toNat

end

end A126290.P11602820594424333697

/-! ## A126290.P10430655375130028420

`A126313(A069888(A069771(A057501(n))))`
-/

namespace A126290.P10430655375130028420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A069888 (A069771 (A057501 n).toNat).toNat).toNat

end

end A126290.P10430655375130028420

/-! ## A126290.P5717169925602122602

`A126313(A069771(A057501(A069889(n))))`
-/

namespace A126290.P5717169925602122602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A069771 (A057501 (A069889 n).toNat).toNat).toNat

end

end A126290.P5717169925602122602

/-! ## A126290.P3597773424139245899

`A126313(A126313(A057163(A125977(n))))`
-/

namespace A126290.P3597773424139245899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A126313 (A057163 (A125977 n).toNat).toNat).toNat

end

end A126290.P3597773424139245899

/-!
# A126292: Maximum cycle size in range [A014137(n-1)..A014138(n-1)] of permutation A125985/A125986.

The programs for A126292, there is no canonical definition to state claims against.
-/

/-! ## A126292.P1980950674012774862

`A096115(A115451(n))`
-/

namespace A126292.P1980950674012774862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096115 (A115451 n).toNat

end

end A126292.P1980950674012774862

/-! ## A126292.P1970134413736637712

`A319626(A137564(n!))`
-/

namespace A126292.P1970134413736637712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A137564 (Nat.factorial n)).toNat

end

end A126292.P1970134413736637712

/-! ## A126292.P2314226087659693938

`A329900(n!*A316674(n))`
-/

namespace A126292.P2314226087659693938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 ((Nat.factorial n : ℤ) * A316674 n).toNat

end

end A126292.P2314226087659693938

/-! ## A126292.P4726369689333525965

`A307856(n+1)*A358372(ceil(2^(n-1)))`
-/

namespace A126292.P4726369689333525965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307856 (n + 1) * A358372 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A126292.P4726369689333525965

/-!
# A126293: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A125985/A125986.

The programs for A126293, there is no canonical definition to state claims against.
-/

/-! ## A126293.P5892313300079092341

`A020639(A162533(n))*A126297(n)`
-/

namespace A126293.P5892313300079092341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A162533 n).toNat * A126297 n

end

end A126293.P5892313300079092341

/-! ## A126293.P2424065078767653248

`A020639(A278241(n))*A126297(n)`
-/

namespace A126293.P2424065078767653248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A278241 n).toNat * A126297 n

end

end A126293.P2424065078767653248

/-! ## A126293.P14391502765646732135

`A006530(A069177(n+1))*A126297(n)`
-/

namespace A126293.P14391502765646732135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A069177 (n + 1)).toNat * A126297 n

end

end A126293.P14391502765646732135

/-! ## A126293.P8948861248830763220

`A020639(A126342(2*(n+1)))*A126297(n)`
-/

namespace A126293.P8948861248830763220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A126342 (2 * (n + 1))).toNat * A126297 n

end

end A126293.P8948861248830763220

/-!
# A126294: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A125987/A125988.

The programs for A126294, there is no canonical definition to state claims against.
-/

/-! ## A126294.P6257226542777331851

`A131996(A177432(n))`
-/

namespace A126294.P6257226542777331851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (A177432 n).toNat

end

end A126294.P6257226542777331851

/-! ## A126294.P9114640450623412932

`A353853(A000009(2*(n+2))-∑{d}[n+1, #])`
-/

namespace A126294.P9114640450623412932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (A000009 (2 * (n + 2)) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A126294.P9114640450623412932

/-! ## A126294.P6660554835640740584

`A085263(A104878(n)+A025192(n))`
-/

namespace A126294.P6660554835640740584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (A104878 n + A025192 n).toNat

end

end A126294.P6660554835640740584

/-! ## A126294.P2139200690225400433

`A364669(n)+A010449(A364673(n))`
-/

namespace A126294.P2139200690225400433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364669 n + A010449 (A364673 n).toNat

end

end A126294.P2139200690225400433

/-! ## A126294.P3275711730422942682

`and(A342622(A109553(n)), A351018(n))`
-/

namespace A126294.P3275711730422942682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A342622 (A109553 n).toNat) (A351018 n)

end

end A126294.P3275711730422942682

/-!
# A126296: Maximum cycle size in range [A014137(n-1)..A014138(n-1)] of permutation A125987/A125988.

The programs for A126296, there is no canonical definition to state claims against.
-/

/-! ## A126296.P8522087978144187011

`A163529(A052841(n))+1`
-/

namespace A126296.P8522087978144187011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A052841 n).toNat + 1

end

end A126296.P8522087978144187011

/-! ## A126296.P18320457114074640327

`A297769(A026021(n))-A002262(n)`
-/

namespace A126296.P18320457114074640327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297769 (A026021 n).toNat - A002262 n

end

end A126296.P18320457114074640327

/-! ## A126296.P1841392620831174843

`or(A000196(A216367(n)), A054358(n))`
-/

namespace A126296.P1841392620831174843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A216367 n).toNat) (A054358 n)

end

end A126296.P1841392620831174843

/-! ## A126296.P11271643490814180707

`or(A002330(A001349(n)), A327472(n))`
-/

namespace A126296.P11271643490814180707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002330 (A001349 n).toNat) (A327472 n)

end

end A126296.P11271643490814180707

/-!
# A126297: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A125987/A125988.

The programs for A126297, there is no canonical definition to state claims against.
-/

/-! ## A126297.P14181670216027516763

`ceil(A126293(n)/2)`
-/

namespace A126297.P14181670216027516763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126293 n : ℚ) / 2⌉

end

end A126297.P14181670216027516763

/-! ## A126297.P11987690142880757904

`A126293(n)/A020639(A000013(n))`
-/

namespace A126297.P11987690142880757904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126293 n : ℚ) / (A020639 (A000013 n).toNat : ℚ)

end

end A126297.P11987690142880757904

/-! ## A126297.P5746769343904349185

`A126293(n)/A020639(A037223(n))`
-/

namespace A126297.P5746769343904349185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126293 n : ℚ) / (A020639 (A037223 n).toNat : ℚ)

end

end A126297.P5746769343904349185

/-! ## A126297.P16280775055115194065

`A126293(n)/A020639(A152763(n))`
-/

namespace A126297.P16280775055115194065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126293 n : ℚ) / (A020639 (A152763 n).toNat : ℚ)

end

end A126297.P16280775055115194065

/-! ## A126297.P12965560344699520093

`A126293(n)/A020639(A174700(n))`
-/

namespace A126297.P12965560344699520093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126293 n : ℚ) / (A020639 (A174700 n).toNat : ℚ)

end

end A126297.P12965560344699520093

/-!
# A126298: Fixed points of the permutation A125987/A125988.

The programs for A126298, there is no canonical definition to state claims against.
-/

/-! ## A126298.P1596236798337802530

`eq[n, A125985(A125985(n))]`
-/

namespace A126298.P1596236798337802530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125985 (A125985 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126298.P1596236798337802530

/-! ## A126298.P2788496765070608249

`eq[n, A125986(A125986(n))]`
-/

namespace A126298.P2788496765070608249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125986 (A125986 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126298.P2788496765070608249

/-! ## A126298.P12739212742600971493

`lt[xor(A125985(n), A125986(n)), 1]`
-/

namespace A126298.P12739212742600971493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A125985 n) (A125986 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A126298.P12739212742600971493

/-! ## A126298.P9728630595610892267

`eq[n, A125987(n)]`
-/

namespace A126298.P9728630595610892267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126298.P9728630595610892267

/-! ## A126298.P8147117180871856638

`eq[n, A125988(n)]`
-/

namespace A126298.P8147117180871856638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126298.P8147117180871856638

/-!
# A126299: Factorial codes for the fixed points of the square of Vaillé's 1997 bijection on Dyck paths.

The programs for A126299, there is no canonical definition to state claims against.
-/

/-! ## A126299.P16821916549525770972

`A007623(A071156(A126298(n)))`
-/

namespace A126299.P16821916549525770972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A071156 (A126298 n).toNat).toNat

end

end A126299.P16821916549525770972

/-! ## A126299.P1171048180437391229

`∪[A002275(n), A076641(A002275(n))]`
-/

namespace A126299.P1171048180437391229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076641 (A002275 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126299.P1171048180437391229

/-! ## A126299.P8735721627209173614

`A071157(A326704(n+1)%A267030(n+1))`
-/

namespace A126299.P8735721627209173614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071157 (Int.tmod (A326704 (n + 1)) (A267030 (n + 1))).toNat

end

end A126299.P8735721627209173614

