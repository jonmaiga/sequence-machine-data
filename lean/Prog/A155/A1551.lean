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
import Seq.B000.C020
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A155100: Triangle read by rows: coefficients in polynomials P_n(u) arising from the expansion of D^(n-1) (tan x) in increasing powers of tan x for n>=1 and 1 for n=0.

The programs for A155100, there is no canonical definition to state claims against.
-/

/-! ## A155100.P11816914820096221122

`lcm(A350970(n), A369736(n))`
-/

namespace A155100.P11816914820096221122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A350970 n) (A369736 n)

end

end A155100.P11816914820096221122

/-! ## A155100.P2909838877078396640

`A128174(n+1)*A350970(n)`
-/

namespace A155100.P2909838877078396640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A350970 n

end

end A155100.P2909838877078396640

/-! ## A155100.P1267899398114091512

`A000035(A055461(n+1))*A350970(n)`
-/

namespace A155100.P1267899398114091512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A055461 (n + 1)).toNat * A350970 n

end

end A155100.P1267899398114091512

/-! ## A155100.P12542593753449949743

`A000035(A064801(n+1))*A350970(n)`
-/

namespace A155100.P12542593753449949743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A064801 (n + 1)).toNat * A350970 n

end

end A155100.P12542593753449949743

/-! ## A155100.P4236331365131024381

`(1-A038189(A099375(n)))*A350970(n)`
-/

namespace A155100.P4236331365131024381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A038189 (A099375 n).toNat) * A350970 n

end

end A155100.P4236331365131024381

/-! ## A155100.P12224075868436455741

`A038189(A099375(n)+2)*A350970(n)`
-/

namespace A155100.P12224075868436455741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A099375 n + 2).toNat * A350970 n

end

end A155100.P12224075868436455741

/-! ## A155100.P1352561408257399300

`A350970(n)%(A104035(n)+1)`
-/

namespace A155100.P1352561408257399300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350970 n) (A104035 n + 1)

end

end A155100.P1352561408257399300

/-!
# A155102: Triangle T(n,k) read by rows. If n=k then T(n,k)=1, elseif n=2*k then T(n,k)=-(k+1), else T(n,k)=0.

The programs for A155102, there is no canonical definition to state claims against.
-/

/-! ## A155102.P3136408745615030935

`A115359(n)*A155103(n+1)`
-/

namespace A155102.P3136408745615030935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A155103 (n + 1)

end

end A155102.P3136408745615030935

/-! ## A155102.P12322749634557743303

`A054525(n+1)*A155103(n+1)`
-/

namespace A155102.P12322749634557743303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A155103 (n + 1)

end

end A155102.P12322749634557743303

/-! ## A155102.P17693837039339789714

`A115359(n)*A285731(n+1)`
-/

namespace A155102.P17693837039339789714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A285731 (n + 1)

end

end A155102.P17693837039339789714

/-! ## A155102.P12136828272307999175

`A115359(n)*A141675(n+1)`
-/

namespace A155102.P12136828272307999175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A141675 (n + 1)

end

end A155102.P12136828272307999175

/-! ## A155102.P10935293533945052259

`A115359(n)*A240236(n+2)`
-/

namespace A155102.P10935293533945052259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A240236 (n + 2)

end

end A155102.P10935293533945052259

/-! ## A155102.P12739216556828146226

`A112543(n+1)*A115359(n)`
-/

namespace A155102.P12739216556828146226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (n + 1) * A115359 n

end

end A155102.P12739216556828146226

/-! ## A155102.P12344554986814774232

`A115359(n)*A323954(n+1)`
-/

namespace A155102.P12344554986814774232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A323954 (n + 1)

end

end A155102.P12344554986814774232

/-! ## A155102.P425744900405749463

`A115359(n)*A388718(n+1)`
-/

namespace A155102.P425744900405749463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A388718 (n + 1)

end

end A155102.P425744900405749463

/-! ## A155102.P6272317846963915194

`A000005(A130321(n))*A115359(n)`
-/

namespace A155102.P6272317846963915194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A115359 n

end

end A155102.P6272317846963915194

/-! ## A155102.P14332712065120494307

`A115359(n)*A251721(n+1)`
-/

namespace A155102.P14332712065120494307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A251721 (n + 1)

end

end A155102.P14332712065120494307

/-! ## A155102.P11213720123925175364

`A115359(n)*A251722(n+1)`
-/

namespace A155102.P11213720123925175364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A251722 (n + 1)

end

end A155102.P11213720123925175364

/-!
# A155103: Triangle read by rows: Matrix inverse of A155102.

The programs for A155103, there is no canonical definition to state claims against.
-/

/-! ## A155103.P12656992525220690009

`A053735(A115361(n)*A286781(n))`
-/

namespace A155103.P12656992525220690009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A115361 n * A286781 n).toNat

end

end A155103.P12656992525220690009

/-! ## A155103.P8857338522992565344

`A135034(A115363(n)^A193739(n))`
-/

namespace A155103.P8857338522992565344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (SequenceMachineLib.roundAway ((A115363 n : ℚ) ^ (A193739 n : ℤ))).toNat

end

end A155103.P8857338522992565344

/-! ## A155103.P2529161788697323144

`A115361(n)*A171898(A232376(n+1))`
-/

namespace A155103.P2529161788697323144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A171898 (A232376 (n + 1)).toNat

end

end A155103.P2529161788697323144

/-! ## A155103.P13075192216888996625

`A007895(A115363(n)^(n+1))`
-/

namespace A155103.P13075192216888996625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A115363 n ^ (n + 1)).toNat

end

end A155103.P13075192216888996625

/-! ## A155103.P7039704705702105519

`A357019(A092288(n+1))`
-/

namespace A155103.P7039704705702105519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357019 (A092288 (n + 1)).toNat

end

end A155103.P7039704705702105519

/-!
# A155104: Numbers appearing in the fourth column of A155103.

The programs for A155104, there is no canonical definition to state claims against.
-/

/-! ## A155104.P8374322399177087403

`A028362(n+2)/3`
-/

namespace A155104.P8374322399177087403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028362 (n + 2) : ℚ) / 3

end

end A155104.P8374322399177087403

/-! ## A155104.P17977335524764187939

`∏[∑[2^(char[1]+n)]]`
-/

namespace A155104.P17977335524764187939
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((if ∃ j, f3 j = n then 1 else 0) + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A155104.P17977335524764187939

/-! ## A155104.P6879524353516418391

`∏[or(1, 2^(n+1))]/3`
-/

namespace A155104.P6879524353516418391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A155104.P6879524353516418391

/-! ## A155104.P3972161867589485710

`∏[xor(1, 2^(n+1))]/3`
-/

namespace A155104.P3972161867589485710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 ^ (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A155104.P3972161867589485710

/-! ## A155104.P9898971735979505094

`(∑[2^n]+2)*a(n-1)` with `a(0)=1`
-/

namespace A155104.P9898971735979505094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) * a (n - 1)

end

end A155104.P9898971735979505094

/-!
# A155105: Positive numbers appearing in the third column of A155103.

The programs for A155105, there is no canonical definition to state claims against.
-/

/-! ## A155105.P4458414331078128211

`∏[3*record[and(n, -n)]+1]`
-/

namespace A155105.P4458414331078128211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A155105.P4458414331078128211

/-! ## A155105.P12067618183877211644

`∏[record[n+1-xor(n, -n)]]`
-/

namespace A155105.P12067618183877211644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A155105.P12067618183877211644

/-! ## A155105.P7694785460054422964

`∏[record[1-(xor(n, -n)-n)]]`
-/

namespace A155105.P7694785460054422964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.xor (n : ℤ) (-(n : ℤ)) - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A155105.P7694785460054422964

/-! ## A155105.P7188560243992441580

`∏[2*a(n-1)-1]` with `a(0)=1, a(1)=4`
-/

namespace A155105.P7188560243992441580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A155105.P7188560243992441580

/-! ## A155105.P9114383102841790814

`∏[a(n-1)+a(n-1)-1]` with `a(0)=1, a(1)=4`
-/

namespace A155105.P9114383102841790814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A155105.P9114383102841790814

/-!
# A155106: Numbers k such that both k and k+1 can be expressed as the sum of three distinct nonzero squares in 2 or more ways.

The programs for A155106, there is no canonical definition to state claims against.
-/

/-! ## A155106.P11683730888487124181

`∩[A024804(n+1)-1, A024804(n+1)]`
-/

namespace A155106.P11683730888487124181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024804 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155106.P11683730888487124181

/-!
# A155107: Numbers that are 23 or 30 (mod 53).

The programs for A155107, the canonical program `A155107.P6731637127113723794` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155107 has offset 1).

The definition of A155107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155107.P6731637127113723794

`a(n-2)+53` with `a(0)=23, a(1)=30`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155107

/-- `a(n-2)+53` -/
def P6731637127113723794.Spec : Prop :=
  ∀ n, (P6731637127113723794.a n : ℤ) = A155107 (n + 1)

theorem P6731637127113723794.correct : P6731637127113723794.Spec := by
  intro n
  simp only [A155107, Nat.add_sub_cancel]

end A155107

/-! ## A155107.P17420511047407145170

`23*(-1)^(n+2)+53*floor((n+1)/2)`
-/

namespace A155107.P17420511047407145170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * (-1) ^ (n + 2) + 53 * ⌊(n + 1 : ℚ) / 2⌋

end

end A155107.P17420511047407145170

namespace A155107

/-- `23*(-1)^(n+2)+53*floor((n+1)/2)` -/
def P17420511047407145170.Spec : Prop :=
  ∀ n, P17420511047407145170.a n = A155107 (n + 1)

end A155107

/-! ## A155107.P9947595090856418349

`∑[floor(a(n-2))]` with `a(0)=23, a(1)=7, a(2)=46`

`floor` is left out, it is the identity on integers.
-/

namespace A155107.P9947595090856418349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [23, 7, 46] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155107.P9947595090856418349

namespace A155107

/-- `∑[floor(a(n-2))]` -/
def P9947595090856418349.Spec : Prop :=
  ∀ n, (P9947595090856418349.a n : ℤ) = A155107 (n + 1)

end A155107

/-! ## A155107.P1628136967084101953

`∑[or(6, A040433(n))]`
-/

namespace A155107.P1628136967084101953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (A040433 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155107.P1628136967084101953

namespace A155107

/-- `∑[or(6, A040433(n))]` -/
def P1628136967084101953.Spec : Prop :=
  ∀ n, P1628136967084101953.a n = A155107 (n + 1)

end A155107

/-! ## A155107.P7241409556780353380

`∑[or(6, A040551(n))]`
-/

namespace A155107.P7241409556780353380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (A040551 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155107.P7241409556780353380

namespace A155107

/-- `∑[or(6, A040551(n))]` -/
def P7241409556780353380.Spec : Prop :=
  ∀ n, P7241409556780353380.a n = A155107 (n + 1)

end A155107

/-! ## A155107.P2771565467950231625

`∑[A040135(n)+A040131(n)]`
-/

namespace A155107.P2771565467950231625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040135 n + A040131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155107.P2771565467950231625

namespace A155107

/-- `∑[A040135(n)+A040131(n)]` -/
def P2771565467950231625.Spec : Prop :=
  ∀ n, P2771565467950231625.a n = A155107 (n + 1)

end A155107

/-! ## A155107.P7130303294933248100

`∑[A040559(n)-A280193(n)]`
-/

namespace A155107.P7130303294933248100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040559 n - A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155107.P7130303294933248100

namespace A155107

/-- `∑[A040559(n)-A280193(n)]` -/
def P7130303294933248100.Spec : Prop :=
  ∀ n, P7130303294933248100.a n = A155107 (n + 1)

end A155107

/-! ## A155107.P966296941543012832

`∑[or(7*A040011(n), A040011(n))]`
-/

namespace A155107.P966296941543012832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (7 * A040011 n) (A040011 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155107.P966296941543012832

namespace A155107

/-- `∑[or(7*A040011(n), A040011(n))]` -/
def P966296941543012832.Spec : Prop :=
  ∀ n, P966296941543012832.a n = A155107 (n + 1)

end A155107

/-!
# A155108: Primes k such that the k-th composite is even.

The programs for A155108, the canonical program `A155108.P14627046994044769413` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155108 has offset 1).

The definition of A155108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155108.P14164412969419256970

`p?[A305800(2*(n+1))-2]`
-/

namespace A155108.P14164412969419256970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (2 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155108.P14164412969419256970

namespace A155108

/-- `p?[A305800(2*(n+1))-2]` -/
def P14164412969419256970.Spec : Prop :=
  ∀ n, P14164412969419256970.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P4947347340824202555

`p?[A305801(2*(n+1))-3]`
-/

namespace A155108.P4947347340824202555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (2 * (n + 1)) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155108.P4947347340824202555

namespace A155108

/-- `p?[A305801(2*(n+1))-3]` -/
def P4947347340824202555.Spec : Prop :=
  ∀ n, P4947347340824202555.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P14627046994044769413

`p?[2*n+1-A000720(2*n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A155108

/-- `p?[2*n+1-A000720(2*n+1)]` -/
def P14627046994044769413.Spec : Prop :=
  ∀ n, P14627046994044769413.a n = A155108 (n + 1)

theorem P14627046994044769413.correct : P14627046994044769413.Spec := by
  intro n
  simp only [A155108, Nat.add_sub_cancel]

end A155108

/-! ## A155108.P5618864414781956145

`p?[A065896(n+1)]`
-/

namespace A155108.P5618864414781956145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155108.P5618864414781956145

namespace A155108

/-- `p?[A065896(n+1)]` -/
def P5618864414781956145.Spec : Prop :=
  ∀ n, P5618864414781956145.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P1572004327939937673

`p?[A065855(2*(n+1))]`
-/

namespace A155108.P1572004327939937673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155108.P1572004327939937673

namespace A155108

/-- `p?[A065855(2*(n+1))]` -/
def P1572004327939937673.Spec : Prop :=
  ∀ n, P1572004327939937673.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P13583220358072716773

`p?[A210469(n+1)+n]`
-/

namespace A155108.P13583220358072716773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155108.P13583220358072716773

namespace A155108

/-- `p?[A210469(n+1)+n]` -/
def P13583220358072716773.Spec : Prop :=
  ∀ n, P13583220358072716773.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P2750926451748908260

`p?[2*n+1-A099802(n+1)]`
-/

namespace A155108.P2750926451748908260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A099802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155108.P2750926451748908260

namespace A155108

/-- `p?[2*n+1-A099802(n+1)]` -/
def P2750926451748908260.Spec : Prop :=
  ∀ n, P2750926451748908260.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P12713229102837860318

`p?[abs(A000720(2*n+1)-Δ[n²])]`
-/

namespace A155108.P12713229102837860318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000720 (2 * n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155108.P12713229102837860318

namespace A155108

/-- `p?[abs(A000720(2*n+1)-Δ[n²])]` -/
def P12713229102837860318.Spec : Prop :=
  ∀ n, P12713229102837860318.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P7724791458463996460

`record[A006530(A065896(n+3))]`
-/

namespace A155108.P7724791458463996460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A065896 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155108.P7724791458463996460

namespace A155108

/-- `record[A006530(A065896(n+3))]` -/
def P7724791458463996460.Spec : Prop :=
  ∀ n, P7724791458463996460.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P8716574192092358059

`filter[A065896(n+2), A010051(#)]`
-/

namespace A155108.P8716574192092358059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A155108.P8716574192092358059

namespace A155108

/-- `filter[A065896(n+2), A010051(#)]` -/
def P8716574192092358059.Spec : Prop :=
  ∀ n, P8716574192092358059.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P12557083656608619006

`p?[eq[2, A020639(A018252(n+1))]]`
-/

namespace A155108.P12557083656608619006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018252 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155108.P12557083656608619006

namespace A155108

/-- `p?[eq[2, A020639(A018252(n+1))]]` -/
def P12557083656608619006.Spec : Prop :=
  ∀ n, (P12557083656608619006.a n : ℤ) = A155108 (n + 1)

end A155108

/-! ## A155108.P17920269728512343327

`∩[A000040(n+1), A065896(n+1)]`
-/

namespace A155108.P17920269728512343327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155108.P17920269728512343327

namespace A155108

/-- `∩[A000040(n+1), A065896(n+1)]` -/
def P17920269728512343327.Spec : Prop :=
  ∀ n, (P17920269728512343327.a n : ℤ) = A155108 (n + 1)

end A155108

/-! ## A155108.P10123225999749018988

`∩[A065896(n+1), A175787(n+1)]`
-/

namespace A155108.P10123225999749018988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155108.P10123225999749018988

namespace A155108

/-- `∩[A065896(n+1), A175787(n+1)]` -/
def P10123225999749018988.Spec : Prop :=
  ∀ n, (P10123225999749018988.a n : ℤ) = A155108 (n + 1)

end A155108

/-! ## A155108.P12589733226192679436

`p?[∑[A204897(2*n+1)]]`
-/

namespace A155108.P12589733226192679436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204897 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155108.P12589733226192679436

namespace A155108

/-- `p?[∑[A204897(2*n+1)]]` -/
def P12589733226192679436.Spec : Prop :=
  ∀ n, P12589733226192679436.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P18179502410680941161

`filter[A000040(n+1), A361121(#)]`
-/

namespace A155108.P18179502410680941161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361121 (f1 j).toNat = 1) n)

end

end A155108.P18179502410680941161

namespace A155108

/-- `filter[A000040(n+1), A361121(#)]` -/
def P18179502410680941161.Spec : Prop :=
  ∀ n, P18179502410680941161.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P14046687047903621313

`filter[A175787(n+1), A361121(#)]`
-/

namespace A155108.P14046687047903621313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361121 (f1 j).toNat = 1) n)

end

end A155108.P14046687047903621313

namespace A155108

/-- `filter[A175787(n+1), A361121(#)]` -/
def P14046687047903621313.Spec : Prop :=
  ∀ n, P14046687047903621313.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P781824182154301803

`filter[A008578(n+2), A361121(#)]`
-/

namespace A155108.P781824182154301803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361121 (f1 j).toNat = 1) n)

end

end A155108.P781824182154301803

namespace A155108

/-- `filter[A008578(n+2), A361121(#)]` -/
def P781824182154301803.Spec : Prop :=
  ∀ n, P781824182154301803.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P14451193170193968717

`filter[A046022(n+2), A361121(#)]`
-/

namespace A155108.P14451193170193968717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361121 (f1 j).toNat = 1) n)

end

end A155108.P14451193170193968717

namespace A155108

/-- `filter[A046022(n+2), A361121(#)]` -/
def P14451193170193968717.Spec : Prop :=
  ∀ n, P14451193170193968717.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P6884061377542022535

`filter[A182986(n+2), A361121(#)]`
-/

namespace A155108.P6884061377542022535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361121 (f1 j).toNat = 1) n)

end

end A155108.P6884061377542022535

namespace A155108

/-- `filter[A182986(n+2), A361121(#)]` -/
def P6884061377542022535.Spec : Prop :=
  ∀ n, P6884061377542022535.a n = A155108 (n + 1)

end A155108

/-! ## A155108.P485462160609096146

`filter[A065896(n+3), A080339(#)]`
-/

namespace A155108.P485462160609096146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A155108.P485462160609096146

namespace A155108

/-- `filter[A065896(n+3), A080339(#)]` -/
def P485462160609096146.Spec : Prop :=
  ∀ n, P485462160609096146.a n = A155108 (n + 1)

end A155108

/-!
# A155109: Odd nonprime numbers k such that composite(k) is even.

The programs for A155109, there is no canonical definition to state claims against.
-/

/-! ## A155109.P6180519308915738089

`filter[A014076(n+1), A361121(#)]`
-/

namespace A155109.P6180519308915738089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361121 (f1 j).toNat = 1) n)

end

end A155109.P6180519308915738089

/-! ## A155109.P15467986944359611645

`eq[atan(A181923(n+1)), A107279(n)]`
-/

namespace A155109.P15467986944359611645
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A181923 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A155109.P15467986944359611645

/-! ## A155109.P3766889654514185904

`filter[A075065(2*n+1), A361121(#)]`
-/

namespace A155109.P3766889654514185904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361121 (f1 j).toNat = 1) n)

end

end A155109.P3766889654514185904

/-! ## A155109.P1466592924136974215

`∩[A014076(n+1), A065896(n+1)]`
-/

namespace A155109.P1466592924136974215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155109.P1466592924136974215

/-! ## A155109.P8481240884713965208

`∩[A065896(n+1), A014092(n+3)-2]`
-/

namespace A155109.P8481240884713965208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 3) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155109.P8481240884713965208

/-! ## A155109.P18180800792914534109

`∩[A066246(2*(n+2)), A014076(n+1)]`
-/

namespace A155109.P18180800792914534109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155109.P18180800792914534109

/-! ## A155109.P4031508328100723332

`∩[2*A047845(n+1)+1, A065896(n+1)]`
-/

namespace A155109.P4031508328100723332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047845 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155109.P4031508328100723332

/-! ## A155109.P13642780699769596519

`∩[2*A104275(n+1)-1, A065896(n+1)]`
-/

namespace A155109.P13642780699769596519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104275 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155109.P13642780699769596519

/-! ## A155109.P17561238941359310940

`∩[A065896(n+1), a(n-1)+2*A196274(n)]` with `a(0)=1`
-/

namespace A155109.P17561238941359310940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 2 * A196274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155109.P17561238941359310940

/-! ## A155109.P12063210092756646294

`eq[A106458(A060462(n+1)), A107279(n)]`
-/

namespace A155109.P12063210092756646294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (A060462 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155109.P12063210092756646294

/-!
# A155110: a(n) = 8*Fibonacci(2n+1).

The programs for A155110, the canonical program `A155110.P1647809718960722810` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155110 has offset 0).

The definition of A155110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155110.P1647809718960722810

`8*A122367(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A155110

/-- `8*A122367(n)` -/
def P1647809718960722810.Spec : Prop :=
  ∀ n, P1647809718960722810.a n = A155110 n

theorem P1647809718960722810.correct : P1647809718960722810.Spec := by
  intro n
  simp only [A155110]

end A155110

/-! ## A155110.P10699671860039645200

`8*A001519(n+1)`
-/

namespace A155110.P10699671860039645200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A001519 (n + 1)

end

end A155110.P10699671860039645200

namespace A155110

/-- `8*A001519(n+1)` -/
def P10699671860039645200.Spec : Prop :=
  ∀ n, P10699671860039645200.a n = A155110 n

end A155110

/-! ## A155110.P10715247365896731528

`A153873(n)-A027941(n)`
-/

namespace A155110.P10715247365896731528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153873 n - A027941 n

end

end A155110.P10715247365896731528

namespace A155110

/-- `A153873(n)-A027941(n)` -/
def P10715247365896731528.Spec : Prop :=
  ∀ n, P10715247365896731528.a n = A155110 n

end A155110

/-! ## A155110.P13199527094152769620

`record[a(n-2)-a(n-1)]` with `a(0)=8, a(1)=0`
-/

namespace A155110.P13199527094152769620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155110.P13199527094152769620

namespace A155110

/-- `record[a(n-2)-a(n-1)]` -/
def P13199527094152769620.Spec : Prop :=
  ∀ n, P13199527094152769620.a n = A155110 n

end A155110

/-! ## A155110.P12188228441542898352

`3*a(n-1)-a(n-2)` with `a(0)=8, a(1)=16`
-/

namespace A155110.P12188228441542898352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 16] fun n a =>
  3 * a (n - 1) - a (n - 2)

end

end A155110.P12188228441542898352

namespace A155110

/-- `3*a(n-1)-a(n-2)` -/
def P12188228441542898352.Spec : Prop :=
  ∀ n, P12188228441542898352.a n = A155110 n

end A155110

/-! ## A155110.P2857920321458646558

`A022091(Δ[n²])`
-/

namespace A155110.P2857920321458646558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A155110.P2857920321458646558

namespace A155110

/-- `A022091(Δ[n²])` -/
def P2857920321458646558.Spec : Prop :=
  ∀ n, P2857920321458646558.a n = A155110 n

end A155110

/-! ## A155110.P11051313533523761582

`4*A052995(n+1)`
-/

namespace A155110.P11051313533523761582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A052995 (n + 1)

end

end A155110.P11051313533523761582

namespace A155110

/-- `4*A052995(n+1)` -/
def P11051313533523761582.Spec : Prop :=
  ∀ n, P11051313533523761582.a n = A155110 n

end A155110

/-! ## A155110.P16907543672086169263

`4*A055819(n+1)`
-/

namespace A155110.P16907543672086169263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055819 (n + 1)

end

end A155110.P16907543672086169263

namespace A155110

/-- `4*A055819(n+1)` -/
def P16907543672086169263.Spec : Prop :=
  ∀ n, P16907543672086169263.a n = A155110 n

end A155110

/-! ## A155110.P15251742636838149385

`4*(A069403(n)+1)`
-/

namespace A155110.P15251742636838149385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A069403 n + 1)

end

end A155110.P15251742636838149385

namespace A155110

/-- `4*(A069403(n)+1)` -/
def P15251742636838149385.Spec : Prop :=
  ∀ n, P15251742636838149385.a n = A155110 n

end A155110

/-! ## A155110.P16894764190402093960

`A111733(2*n)+7`
-/

namespace A155110.P16894764190402093960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111733 (2 * n) + 7

end

end A155110.P16894764190402093960

namespace A155110

/-- `A111733(2*n)+7` -/
def P16894764190402093960.Spec : Prop :=
  ∀ n, P16894764190402093960.a n = A155110 n

end A155110

/-! ## A155110.P3406292192422829691

`8*A094967(2*n)`
-/

namespace A155110.P3406292192422829691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A094967 (2 * n)

end

end A155110.P3406292192422829691

namespace A155110

/-- `8*A094967(2*n)` -/
def P3406292192422829691.Spec : Prop :=
  ∀ n, P3406292192422829691.a n = A155110 n

end A155110

/-! ## A155110.P874935593694122875

`8*A097131(2*n)`
-/

namespace A155110.P874935593694122875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A097131 (2 * n)

end

end A155110.P874935593694122875

namespace A155110

/-- `8*A097131(2*n)` -/
def P874935593694122875.Spec : Prop :=
  ∀ n, P874935593694122875.a n = A155110 n

end A155110

/-! ## A155110.P5217884227918237335

`8*A108362(2*n)`
-/

namespace A155110.P5217884227918237335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A108362 (2 * n)

end

end A155110.P5217884227918237335

namespace A155110

/-- `8*A108362(2*n)` -/
def P5217884227918237335.Spec : Prop :=
  ∀ n, P5217884227918237335.a n = A155110 n

end A155110

/-! ## A155110.P17376370935989774274

`8*A115008(2*n)`
-/

namespace A155110.P17376370935989774274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A115008 (2 * n)

end

end A155110.P17376370935989774274

namespace A155110

/-- `8*A115008(2*n)` -/
def P17376370935989774274.Spec : Prop :=
  ∀ n, P17376370935989774274.a n = A155110 n

end A155110

/-! ## A155110.P7175859047600628398

`8*A116698(2*n)`
-/

namespace A155110.P7175859047600628398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A116698 (2 * n)

end

end A155110.P7175859047600628398

namespace A155110

/-- `8*A116698(2*n)` -/
def P7175859047600628398.Spec : Prop :=
  ∀ n, P7175859047600628398.a n = A155110 n

end A155110

/-! ## A155110.P11963248071118265321

`8*A127968(2*n)`
-/

namespace A155110.P11963248071118265321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A127968 (2 * n)

end

end A155110.P11963248071118265321

namespace A155110

/-- `8*A127968(2*n)` -/
def P11963248071118265321.Spec : Prop :=
  ∀ n, P11963248071118265321.a n = A155110 n

end A155110

/-! ## A155110.P13222977993837159141

`2*A022087(Δ[n²])`
-/

namespace A155110.P13222977993837159141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022087 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A155110.P13222977993837159141

namespace A155110

/-- `2*A022087(Δ[n²])` -/
def P13222977993837159141.Spec : Prop :=
  ∀ n, P13222977993837159141.a n = A155110 n

end A155110

/-! ## A155110.P6176365573586864803

`8*A000045(Δ[n²])`
-/

namespace A155110.P6176365573586864803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A155110.P6176365573586864803

namespace A155110

/-- `8*A000045(Δ[n²])` -/
def P6176365573586864803.Spec : Prop :=
  ∀ n, P6176365573586864803.a n = A155110 n

end A155110

/-! ## A155110.P3542238119524415759

`4*Δ[A192908(n+1)]`
-/

namespace A155110.P3542238119524415759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A155110.P3542238119524415759

namespace A155110

/-- `4*Δ[A192908(n+1)]` -/
def P3542238119524415759.Spec : Prop :=
  ∀ n, P3542238119524415759.a n = A155110 n

end A155110

/-!
# A155111: Odd numbers k such that composite(k) is odd.

The programs for A155111, there is no canonical definition to state claims against.
-/

/-! ## A155111.P9103717839889588503

`comp[n-A082460(n+1)]`
-/

namespace A155111.P9103717839889588503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155111.P9103717839889588503

/-! ## A155111.P14149559227502922137

`comp[n-A084360(n+3)]`
-/

namespace A155111.P14149559227502922137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A084360 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155111.P14149559227502922137

/-! ## A155111.P1226036335446503414

`comp[lcm(gcd(2, n), A065855(n+1))]`
-/

namespace A155111.P1226036335446503414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 n : ℤ) (A065855 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A155111.P1226036335446503414

/-! ## A155111.P404535999395184359

`comp[n-A000720(n^(n%2))]`
-/

namespace A155111.P404535999395184359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000720 (n ^ (n % 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155111.P404535999395184359

/-! ## A155111.P2652508278006976007

`eq[1, (n*A018252(n+1))%2]`
-/

namespace A155111.P2652508278006976007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A018252 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155111.P2652508278006976007

/-! ## A155111.P3619051174789246034

`∩[2*n+1, A073432(n+2)]`
-/

namespace A155111.P3619051174789246034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073432 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155111.P3619051174789246034

/-! ## A155111.P996747925908832227

`comp[2-(A010051(n+2)-a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A155111.P996747925908832227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 - (A010051 (n + 2) - f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155111.P996747925908832227

/-! ## A155111.P11409422648914110990

`filter[A073432(n+1), A266070(#)]`
-/

namespace A155111.P11409422648914110990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A155111.P11409422648914110990

/-! ## A155111.P12638928148406228615

`filter[A073432(n+1), A266611(#)]`
-/

namespace A155111.P12638928148406228615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A155111.P12638928148406228615

/-! ## A155111.P3026867369729207569

`filter[A073432(n+1), A266719(#)]`
-/

namespace A155111.P3026867369729207569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A155111.P3026867369729207569

/-!
# A155112: Triangle T(n,k), 0<=k<=n, read by rows given by [0,2,-1/2,-1/2,0,0,0,0,0,0,0,0,...] DELTA [1,0,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A155112, there is no canonical definition to state claims against.
-/

/-! ## A155112.P16025798900947132406

`A063967(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A155112.P16025798900947132406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063967 (n - 1) - a (n - 1)

end

end A155112.P16025798900947132406

/-! ## A155112.P17518940847865397258

`A319856(A227655(n))+A122542(n)`
-/

namespace A155112.P17518940847865397258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319856 (A227655 n).toNat + A122542 n

end

end A155112.P17518940847865397258

/-! ## A155112.P6739253292251502372

`A319856(A227655(n))+A266213(A061579(n))`
-/

namespace A155112.P6739253292251502372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319856 (A227655 n).toNat + A266213 (A061579 n).toNat

end

end A155112.P6739253292251502372

/-! ## A155112.P7647726682423513269

`A319856(A227655(n))+A266213(A038722(n+2))`
-/

namespace A155112.P7647726682423513269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319856 (A227655 n).toNat + A266213 (A038722 (n + 2)).toNat

end

end A155112.P7647726682423513269

/-! ## A155112.P12882039223902268782

`A035607(n)+A319856(A227655(n))-A128966(n)`
-/

namespace A155112.P12882039223902268782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n + (A319856 (A227655 n).toNat - A128966 n)

end

end A155112.P12882039223902268782

/-!
# A155113: Odd numbers n with odd largest digit of prime(n).

The programs for A155113, the canonical program `A155113.P12705420447747489867` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155113 has offset 1).

The definition of A155113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155113.P12705420447747489867

`record[A000265(A000720(A155058(n+2)))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A155113

/-- `record[A000265(A000720(A155058(n+2)))]` -/
def P12705420447747489867.Spec : Prop :=
  ∀ n, P12705420447747489867.a n = A155113 (n + 1)

theorem P12705420447747489867.correct : P12705420447747489867.Spec := by
  intro n
  simp only [A155113, Nat.add_sub_cancel]

end A155113

/-! ## A155113.P11264495719932053600

`eq[1, (n+1)%A000034(A028905(n+1))]+1`
-/

namespace A155113.P11264495719932053600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000034 (A028905 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A155113.P11264495719932053600

namespace A155113

/-- `eq[1, (n+1)%A000034(A028905(n+1))]+1` -/
def P11264495719932053600.Spec : Prop :=
  ∀ n, (P11264495719932053600.a n : ℤ) = A155113 (n + 1)

end A155113

/-! ## A155113.P2856738312968442652

`lt[A000034(n), A000034(A028905(n+1))]+1`
-/

namespace A155113.P2856738312968442652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A028905 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A155113.P2856738312968442652

namespace A155113

/-- `lt[A000034(n), A000034(A028905(n+1))]+1` -/
def P2856738312968442652.Spec : Prop :=
  ∀ n, (P2856738312968442652.a n : ℤ) = A155113 (n + 1)

end A155113

/-! ## A155113.P10901694354495231954

`eq[A000034(n), A055029(A217678(n+2))]`
-/

namespace A155113.P10901694354495231954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (A217678 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155113.P10901694354495231954

namespace A155113

/-- `eq[A000034(n), A055029(A217678(n+2))]` -/
def P10901694354495231954.Spec : Prop :=
  ∀ n, (P10901694354495231954.a n : ℤ) = A155113 (n + 1)

end A155113

/-! ## A155113.P4452868787421245106

`lt[1, A300003(A146076(n+1))]`
-/

namespace A155113.P4452868787421245106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300003 (A146076 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155113.P4452868787421245106

namespace A155113

/-- `lt[1, A300003(A146076(n+1))]` -/
def P4452868787421245106.Spec : Prop :=
  ∀ n, (P4452868787421245106.a n : ℤ) = A155113 (n + 1)

end A155113

/-!
# A155116: a(n) = 3*a(n-1) + 3*a(n-2), n>2, a(0)=1, a(1)=2, a(2)=8.

The programs for A155116, the canonical program `A155116.P6846200436500610728` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155116 has offset 0).

The definition of A155116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)` (program `A155116.P6846200436500610728`, by `A155116.P6846200436500610728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155116.P6846200436500610728

`3*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155116

/-- `3*a(n-1)+3*a(n-2)` -/
def P6846200436500610728.Spec : Prop :=
  ∀ n, (P6846200436500610728.a n : ℤ) = A155116 n

theorem P6846200436500610728.correct : P6846200436500610728.Spec := by
  intro n
  simp only [A155116]

end A155116

/-! ## A155116.P3193374359964109806

`3*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A155116.P3193374359964109806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  3 * (a (n - 1) + a (n - 2))

end

end A155116.P3193374359964109806

namespace A155116

/-- `3*(a(n-1)+a(n-2))` -/
def P3193374359964109806.Spec : Prop :=
  ∀ n, (P3193374359964109806.a n : ℤ) = A155116 n

theorem P3193374359964109806.correct : P3193374359964109806.Spec := by
  intro n
  simp only [A155116, Nat.add_sub_cancel, A155116.P3193374359964109806.a, A155116.P6846200436500610728.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155116

/-! ## A155116.P15045728799812524919

`3-or(1, 3*(1-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A155116.P15045728799812524919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - Int.lor 1 (3 * (1 - a (n - 1) - a (n - 2)))

end

end A155116.P15045728799812524919

namespace A155116

/-- `3-or(1, 3*(1-a(n-1)-a(n-2)))` -/
def P15045728799812524919.Spec : Prop :=
  ∀ n, P15045728799812524919.a n = A155116 n

end A155116

/-! ## A155116.P12020318687234449839

`3*a(n-1)-(and(1, a(n-2))-3*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A155116.P12020318687234449839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) - (Int.land 1 (a (n - 2)) - 3 * a (n - 2))

end

end A155116.P12020318687234449839

namespace A155116

/-- `3*a(n-1)-(and(1, a(n-2))-3*a(n-2))` -/
def P12020318687234449839.Spec : Prop :=
  ∀ n, P12020318687234449839.a n = A155116 n

end A155116

/-! ## A155116.P10665727906264511532

`ceil(A123620(n)/2)`
-/

namespace A155116.P10665727906264511532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123620 n : ℚ) / 2⌉

end

end A155116.P10665727906264511532

namespace A155116

/-- `ceil(A123620(n)/2)` -/
def P10665727906264511532.Spec : Prop :=
  ∀ n, P10665727906264511532.a n = A155116 n

end A155116

/-! ## A155116.P3202013902646850607

`A123620(n)/A036453(n+1)`
-/

namespace A155116.P3202013902646850607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123620 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A155116.P3202013902646850607

namespace A155116

/-- `A123620(n)/A036453(n+1)` -/
def P3202013902646850607.Spec : Prop :=
  ∀ n, P3202013902646850607.a n = (A155116 n : ℚ)

end A155116

/-! ## A155116.P8362227992438407489

`A180142(n)-2*A030195(n)`
-/

namespace A155116.P8362227992438407489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180142 n - 2 * A030195 n

end

end A155116.P8362227992438407489

namespace A155116

/-- `A180142(n)-2*A030195(n)` -/
def P8362227992438407489.Spec : Prop :=
  ∀ n, P8362227992438407489.a n = A155116 n

end A155116

/-! ## A155116.P13157398062995416270

`A123620(n)/gcd(2, A000079(n))`
-/

namespace A155116.P13157398062995416270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123620 n : ℚ) / (Int.gcd 2 (A000079 n) : ℚ)

end

end A155116.P13157398062995416270

namespace A155116

/-- `A123620(n)/gcd(2, A000079(n))` -/
def P13157398062995416270.Spec : Prop :=
  ∀ n, P13157398062995416270.a n = (A155116 n : ℚ)

end A155116

/-! ## A155116.P17163328911879623107

`A180142(n+1)+A180142(n)-A123620(n+1)`
-/

namespace A155116.P17163328911879623107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180142 (n + 1) + (A180142 n - A123620 (n + 1))

end

end A155116.P17163328911879623107

namespace A155116

/-- `A180142(n+1)+A180142(n)-A123620(n+1)` -/
def P17163328911879623107.Spec : Prop :=
  ∀ n, P17163328911879623107.a n = A155116 n

end A155116

/-!
# A155117: a(n) = 4*a(n-1) + 4*a(n-2), n>2, a(0)=1, a(1)=3, a(2)=15.

The programs for A155117, the canonical program `A155117.P4553343644277525618` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155117 has offset 0).

The definition of A155117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+4*a(n-2)` (program `A155117.P4553343644277525618`, by `A155117.P4553343644277525618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155117.P4553343644277525618

`4*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=3, a(2)=15`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155117

/-- `4*a(n-1)+4*a(n-2)` -/
def P4553343644277525618.Spec : Prop :=
  ∀ n, (P4553343644277525618.a n : ℤ) = A155117 n

theorem P4553343644277525618.correct : P4553343644277525618.Spec := by
  intro n
  simp only [A155117]

end A155117

/-! ## A155117.P14096748240143548267

`round((sqrt(8)+2)*a(n-1))` with `a(0)=1, a(1)=3, a(2)=15`
-/

namespace A155117.P14096748240143548267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 15] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (8 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A155117.P14096748240143548267

namespace A155117

/-- `round((sqrt(8)+2)*a(n-1))` -/
def P14096748240143548267.Spec : Prop :=
  ∀ n, P14096748240143548267.a n = A155117 n

end A155117

/-! ## A155117.P463946394585414096

`4*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=3, a(2)=15`
-/

namespace A155117.P463946394585414096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 15] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A155117.P463946394585414096

namespace A155117

/-- `4*(a(n-1)+a(n-2))` -/
def P463946394585414096.Spec : Prop :=
  ∀ n, (P463946394585414096.a n : ℤ) = A155117 n

theorem P463946394585414096.correct : P463946394585414096.Spec := by
  intro n
  simp only [A155117, Nat.add_sub_cancel, A155117.P463946394585414096.a, A155117.P4553343644277525618.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155117

/-! ## A155117.P1260931311869610574

`ceil(3*2^(n-2)*A000129(n+1))`
-/

namespace A155117.P1260931311869610574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A000129 (n + 1) : ℚ)⌉

end

end A155117.P1260931311869610574

namespace A155117

/-- `ceil(3*2^(n-2)*A000129(n+1))` -/
def P1260931311869610574.Spec : Prop :=
  ∀ n, P1260931311869610574.a n = A155117 n

end A155117

/-! ## A155117.P9109029334839554129

`A042950(n)/4*Δ[A078057(n)]`
-/

namespace A155117.P9109029334839554129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042950 n : ℚ) / 4 * (f1 (n + 1) - f1 n : ℚ)

end

end A155117.P9109029334839554129

namespace A155117

/-- `A042950(n)/4*Δ[A078057(n)]` -/
def P9109029334839554129.Spec : Prop :=
  ∀ n, P9109029334839554129.a n = (A155117 n : ℚ)

end A155117

/-! ## A155117.P6024059289692488264

`A215928(n+1)/2*Δ[A055010(n)]`
-/

namespace A155117.P6024059289692488264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215928 (n + 1) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A155117.P6024059289692488264

namespace A155117

/-- `A215928(n+1)/2*Δ[A055010(n)]` -/
def P6024059289692488264.Spec : Prop :=
  ∀ n, P6024059289692488264.a n = (A155117 n : ℚ)

end A155117

/-! ## A155117.P4690768453840446999

`A057087(n)+A057087(n)-A123871(n)`
-/

namespace A155117.P4690768453840446999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 n + (A057087 n - A123871 n)

end

end A155117.P4690768453840446999

namespace A155117

/-- `A057087(n)+A057087(n)-A123871(n)` -/
def P4690768453840446999.Spec : Prop :=
  ∀ n, P4690768453840446999.a n = A155117 n

end A155117

/-! ## A155117.P8866534048878042085

`2*A057087(n)-A123871(n)`
-/

namespace A155117.P8866534048878042085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057087 n - A123871 n

end

end A155117.P8866534048878042085

namespace A155117

/-- `2*A057087(n)-A123871(n)` -/
def P8866534048878042085.Spec : Prop :=
  ∀ n, P8866534048878042085.a n = A155117 n

end A155117

/-!
# A155118: Array T(n,k) read by antidiagonals: the k-th term of the n-th iterated differences of A140429.

The programs for A155118, the canonical program `A155118.P18324433763876345140` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155118 has offset 0).

The definition of A155118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155118.P5535952695390582472

`ceil(A230445(n)/3)`
-/

namespace A155118.P5535952695390582472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A230445 n : ℚ) / 3⌉

end

end A155118.P5535952695390582472

namespace A155118

/-- `ceil(A230445(n)/3)` -/
def P5535952695390582472.Spec : Prop :=
  ∀ n, P5535952695390582472.a n = A155118 n

end A155118

/-! ## A155118.P18324433763876345140

`round(A036561(n)/3)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A155118

/-- `round(A036561(n)/3)` -/
def P18324433763876345140.Spec : Prop :=
  ∀ n, P18324433763876345140.a n = A155118 n

theorem P18324433763876345140.correct : P18324433763876345140.Spec := by
  intro n
  simp only [A155118]

end A155118

/-! ## A155118.P17543751932282709648

`round(A094615(n)/6)`
-/

namespace A155118.P17543751932282709648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A094615 n : ℚ) / 6)

end

end A155118.P17543751932282709648

namespace A155118

/-- `round(A094615(n)/6)` -/
def P17543751932282709648.Spec : Prop :=
  ∀ n, P17543751932282709648.a n = A155118 n

end A155118

/-! ## A155118.P16238941406519664203

`floor(A094617(n+1)/3)`
-/

namespace A155118.P16238941406519664203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094617 (n + 1) : ℚ) / 3⌋

end

end A155118.P16238941406519664203

namespace A155118

/-- `floor(A094617(n+1)/3)` -/
def P16238941406519664203.Spec : Prop :=
  ∀ n, P16238941406519664203.a n = A155118 n

end A155118

/-! ## A155118.P7762468294196626694

`(A036561(n)-A197870(n))/3`
-/

namespace A155118.P7762468294196626694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036561 n - A197870 n : ℚ) / 3

end

end A155118.P7762468294196626694

namespace A155118

/-- `(A036561(n)-A197870(n))/3` -/
def P7762468294196626694.Spec : Prop :=
  ∀ n, P7762468294196626694.a n = (A155118 n : ℚ)

end A155118

/-! ## A155118.P11195598987608735098

`floor((A036561(n)+A033676(A089026(n+1)))/3)`
-/

namespace A155118.P11195598987608735098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036561 n + A033676 (A089026 (n + 1)).toNat : ℚ) / 3⌋

end

end A155118.P11195598987608735098

namespace A155118

/-- `floor((A036561(n)+A033676(A089026(n+1)))/3)` -/
def P11195598987608735098.Spec : Prop :=
  ∀ n, P11195598987608735098.a n = A155118 n

end A155118

/-! ## A155118.P5337425409506845023

`round(A175840(A061579(n))/3)`
-/

namespace A155118.P5337425409506845023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175840 (A061579 n).toNat : ℚ) / 3)

end

end A155118.P5337425409506845023

namespace A155118

/-- `round(A175840(A061579(n))/3)` -/
def P5337425409506845023.Spec : Prop :=
  ∀ n, P5337425409506845023.a n = A155118 n

end A155118

/-! ## A155118.P18355610239571384662

`A004396(floor(A036561(n)/2))`
-/

namespace A155118.P18355610239571384662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ⌊(A036561 n : ℚ) / 2⌋.toNat

end

end A155118.P18355610239571384662

namespace A155118

/-- `A004396(floor(A036561(n)/2))` -/
def P18355610239571384662.Spec : Prop :=
  ∀ n, P18355610239571384662.a n = A155118 n

end A155118

/-! ## A155118.P2631302110205911640

`A002264(A036561(n)+1)`
-/

namespace A155118.P2631302110205911640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A036561 n + 1).toNat

end

end A155118.P2631302110205911640

namespace A155118

/-- `A002264(A036561(n)+1)` -/
def P2631302110205911640.Spec : Prop :=
  ∀ n, P2631302110205911640.a n = A155118 n

end A155118

/-! ## A155118.P11993521266863165531

`A002264(A094617(n+1))`
-/

namespace A155118.P11993521266863165531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A094617 (n + 1)).toNat

end

end A155118.P11993521266863165531

namespace A155118

/-- `A002264(A094617(n+1))` -/
def P11993521266863165531.Spec : Prop :=
  ∀ n, P11993521266863165531.a n = A155118 n

end A155118

/-!
# A155119: a(n) = 5*a(n-1) + 5*a(n-2), n > 2, a(0)=1, a(1)=4, a(2)=24.

The programs for A155119, the canonical program `A155119.P13486849663267032112` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155119 has offset 0).

The definition of A155119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+5*a(n-2)` (program `A155119.P13486849663267032112`, by `A155119.P13486849663267032112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155119.P13486849663267032112

`5*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=4, a(2)=24`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155119

/-- `5*a(n-1)+5*a(n-2)` -/
def P13486849663267032112.Spec : Prop :=
  ∀ n, (P13486849663267032112.a n : ℤ) = A155119 n

theorem P13486849663267032112.correct : P13486849663267032112.Spec := by
  intro n
  simp only [A155119]

end A155119

/-! ## A155119.P11637760842645745438

`5*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=4, a(2)=24`
-/

namespace A155119.P11637760842645745438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 24] fun n a =>
  5 * (a (n - 1) + a (n - 2))

end

end A155119.P11637760842645745438

namespace A155119

/-- `5*(a(n-1)+a(n-2))` -/
def P11637760842645745438.Spec : Prop :=
  ∀ n, (P11637760842645745438.a n : ℤ) = A155119 n

theorem P11637760842645745438.correct : P11637760842645745438.Spec := by
  intro n
  simp only [A155119, Nat.add_sub_cancel, A155119.P11637760842645745438.a, A155119.P13486849663267032112.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155119

/-! ## A155119.P11253743490530103395

`5*(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=4, a(2)=24`

`floor` is left out, it is the identity on integers.
-/

namespace A155119.P11253743490530103395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 24] fun n a =>
  5 * (a (n - 1) - (-a (n - 2)))

end

end A155119.P11253743490530103395

namespace A155119

/-- `5*(a(n-1)-floor(-a(n-2)))` -/
def P11253743490530103395.Spec : Prop :=
  ∀ n, P11253743490530103395.a n = A155119 n

end A155119

/-! ## A155119.P1536091611028565830

`5*(2-(4/2-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=4, a(2)=24`
-/

namespace A155119.P1536091611028565830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 24] fun n a =>
  5 * (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2)))

end

end A155119.P1536091611028565830

namespace A155119

/-- `5*(2-(4/2-a(n-1)-a(n-2)))` -/
def P1536091611028565830.Spec : Prop :=
  ∀ n, P1536091611028565830.a n = (A155119 n : ℚ)

end A155119

/-! ## A155119.P14795942620356978984

`A057088(n)+A057088(n)-A123887(n)`
-/

namespace A155119.P14795942620356978984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057088 n + (A057088 n - A123887 n)

end

end A155119.P14795942620356978984

namespace A155119

/-- `A057088(n)+A057088(n)-A123887(n)` -/
def P14795942620356978984.Spec : Prop :=
  ∀ n, P14795942620356978984.a n = A155119 n

end A155119

/-! ## A155119.P7875925221998100931

`2*A057088(n)-A123887(n)`
-/

namespace A155119.P7875925221998100931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057088 n - A123887 n

end

end A155119.P7875925221998100931

namespace A155119

/-- `2*A057088(n)-A123887(n)` -/
def P7875925221998100931.Spec : Prop :=
  ∀ n, P7875925221998100931.a n = A155119 n

end A155119

/-!
# A155120: a(n) = 2*(n^3 + n^2 + n - 1).

The programs for A155120, the canonical program `A155120.P5089336753226088707` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155120 has offset 0).

The definition of A155120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n^3+n²+n-1)` (program `A155120.P5089336753226088707`, by `A155120.P5089336753226088707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155120.P5089336753226088707

`2*(n^3+n²+n-1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155120

/-- `2*(n^3+n²+n-1)` -/
def P5089336753226088707.Spec : Prop :=
  ∀ n, P5089336753226088707.a n = A155120 n

theorem P5089336753226088707.correct : P5089336753226088707.Spec := by
  intro n
  simp only [A155120]

end A155120

/-! ## A155120.P11406648189163850004

`A048395(n)-2+n`
-/

namespace A155120.P11406648189163850004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n - 2 + (n : ℤ)

end

end A155120.P11406648189163850004

namespace A155120

/-- `A048395(n)-2+n` -/
def P11406648189163850004.Spec : Prop :=
  ∀ n, P11406648189163850004.a n = A155120 n

end A155120

/-! ## A155120.P4843790503456658890

`A384288(n)/(n+1)-2`
-/

namespace A155120.P4843790503456658890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384288 n : ℚ) / (n + 1 : ℚ) - 2

end

end A155120.P4843790503456658890

namespace A155120

/-- `A384288(n)/(n+1)-2` -/
def P4843790503456658890.Spec : Prop :=
  ∀ n, P4843790503456658890.a n = (A155120 n : ℚ)

end A155120

/-! ## A155120.P6347248170417284980

`(n+1)*A271624(n+1)-4`
-/

namespace A155120.P6347248170417284980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A271624 (n + 1) - 4

end

end A155120.P6347248170417284980

namespace A155120

/-- `(n+1)*A271624(n+1)-4` -/
def P6347248170417284980.Spec : Prop :=
  ∀ n, P6347248170417284980.a n = A155120 n

end A155120

/-! ## A155120.P6773822016453692620

`A048395(n)+A023444(n)`
-/

namespace A155120.P6773822016453692620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n + A023444 n

end

end A155120.P6773822016453692620

namespace A155120

/-- `A048395(n)+A023444(n)` -/
def P6773822016453692620.Spec : Prop :=
  ∀ n, P6773822016453692620.a n = A155120 n

end A155120

/-! ## A155120.P16430960160273503713

`A005898(n)-A027688(n)`
-/

namespace A155120.P16430960160273503713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - A027688 n

end

end A155120.P16430960160273503713

namespace A155120

/-- `A005898(n)-A027688(n)` -/
def P16430960160273503713.Spec : Prop :=
  ∀ n, P16430960160273503713.a n = A155120 n

end A155120

/-! ## A155120.P10348160060834381006

`A048395(n)-A022958(n)`
-/

namespace A155120.P10348160060834381006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n - A022958 n

end

end A155120.P10348160060834381006

namespace A155120

/-- `A048395(n)-A022958(n)` -/
def P10348160060834381006.Spec : Prop :=
  ∀ n, P10348160060834381006.a n = A155120 n

end A155120

/-! ## A155120.P8901352794799287124

`A163683(n)-A271740(n)`
-/

namespace A155120.P8901352794799287124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163683 n - A271740 n

end

end A155120.P8901352794799287124

namespace A155120

/-- `A163683(n)-A271740(n)` -/
def P8901352794799287124.Spec : Prop :=
  ∀ n, P8901352794799287124.a n = A155120 n

end A155120

/-! ## A155120.P9101032333574632382

`A275709(n)-A160457(n)`
-/

namespace A155120.P9101032333574632382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275709 n - A160457 n

end

end A155120.P9101032333574632382

namespace A155120

/-- `A275709(n)-A160457(n)` -/
def P9101032333574632382.Spec : Prop :=
  ∀ n, P9101032333574632382.a n = A155120 n

end A155120

/-! ## A155120.P13459365057569243723

`A123968(n+1)+A099721(n)`
-/

namespace A155120.P13459365057569243723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123968 (n + 1) + A099721 n

end

end A155120.P13459365057569243723

namespace A155120

/-- `A123968(n+1)+A099721(n)` -/
def P13459365057569243723.Spec : Prop :=
  ∀ n, P13459365057569243723.a n = A155120 n

end A155120

/-! ## A155120.P7070794166678688266

`A181617(n+1)-A239229(n)`
-/

namespace A155120.P7070794166678688266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181617 (n + 1) - A239229 n

end

end A155120.P7070794166678688266

namespace A155120

/-- `A181617(n+1)-A239229(n)` -/
def P7070794166678688266.Spec : Prop :=
  ∀ n, P7070794166678688266.a n = A155120 n

end A155120

/-! ## A155120.P11103630258656879467

`A033996(n)+2*A083074(n)`
-/

namespace A155120.P11103630258656879467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n + 2 * A083074 n

end

end A155120.P11103630258656879467

namespace A155120

/-- `A033996(n)+2*A083074(n)` -/
def P11103630258656879467.Spec : Prop :=
  ∀ n, P11103630258656879467.a n = A155120 n

end A155120

/-! ## A155120.P18132539453375947201

`A047672(n+1)-A183199(n+1)`
-/

namespace A155120.P18132539453375947201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047672 (n + 1) - A183199 (n + 1)

end

end A155120.P18132539453375947201

namespace A155120

/-- `A047672(n+1)-A183199(n+1)` -/
def P18132539453375947201.Spec : Prop :=
  ∀ n, P18132539453375947201.a n = A155120 n

end A155120

/-! ## A155120.P18289184760027888277

`A035006(n+1)-A271624(n+1)`
-/

namespace A155120.P18289184760027888277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035006 (n + 1) - A271624 (n + 1)

end

end A155120.P18289184760027888277

namespace A155120

/-- `A035006(n+1)-A271624(n+1)` -/
def P18289184760027888277.Spec : Prop :=
  ∀ n, P18289184760027888277.a n = A155120 n

end A155120

/-! ## A155120.P3788893563822632651

`A069778(n)+A318765(n)-A056108(n)`
-/

namespace A155120.P3788893563822632651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n + (A318765 n - A056108 n)

end

end A155120.P3788893563822632651

namespace A155120

/-- `A069778(n)+A318765(n)-A056108(n)` -/
def P3788893563822632651.Spec : Prop :=
  ∀ n, P3788893563822632651.a n = A155120 n

end A155120

/-! ## A155120.P16978565057451049027

`A005843(n)*A014206(n)-A005843(n+1)`
-/

namespace A155120.P16978565057451049027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A014206 n - A005843 (n + 1)

end

end A155120.P16978565057451049027

namespace A155120

/-- `A005843(n)*A014206(n)-A005843(n+1)` -/
def P16978565057451049027.Spec : Prop :=
  ∀ n, P16978565057451049027.a n = A155120 n

end A155120

/-! ## A155120.P4188895280531386632

`n*A051890(n+1)-2`
-/

namespace A155120.P4188895280531386632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051890 (n + 1) - 2

end

end A155120.P4188895280531386632

namespace A155120

/-- `n*A051890(n+1)-2` -/
def P4188895280531386632.Spec : Prop :=
  ∀ n, P4188895280531386632.a n = A155120 n

end A155120

/-! ## A155120.P17355452507849589485

`A061317(n)-A168244(n+1)`
-/

namespace A155120.P17355452507849589485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061317 n - A168244 (n + 1)

end

end A155120.P17355452507849589485

namespace A155120

/-- `A061317(n)-A168244(n+1)` -/
def P17355452507849589485.Spec : Prop :=
  ∀ n, P17355452507849589485.a n = A155120 n

end A155120

/-! ## A155120.P17673178215979350733

`A083074(n+1)+A083074(n)+A028387(n)`
-/

namespace A155120.P17673178215979350733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083074 (n + 1) + (A083074 n + A028387 n)

end

end A155120.P17673178215979350733

namespace A155120

/-- `A083074(n+1)+A083074(n)+A028387(n)` -/
def P17673178215979350733.Spec : Prop :=
  ∀ n, P17673178215979350733.a n = A155120 n

end A155120

/-! ## A155120.P15671950747788391031

`A054602(n+1)+A054602(n)-A028387(n+1)`
-/

namespace A155120.P15671950747788391031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 (n + 1) + (A054602 n - A028387 (n + 1))

end

end A155120.P15671950747788391031

namespace A155120

/-- `A054602(n+1)+A054602(n)-A028387(n+1)` -/
def P15671950747788391031.Spec : Prop :=
  ∀ n, P15671950747788391031.a n = A155120 n

end A155120

/-!
# A155121: a(n) = 2*n*(1 + n + n^2 + n^3) - 3.

The programs for A155121, the canonical program `A155121.P17654017140215766815` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155121 has offset 0).

The definition of A155121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(1+n+n²+n^3)-3` (program `A155121.P17654017140215766815`, by `A155121.P17654017140215766815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155121.P17654017140215766815

`2*n*(1+n+n²+n^3)-3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155121

/-- `2*n*(1+n+n²+n^3)-3` -/
def P17654017140215766815.Spec : Prop :=
  ∀ n, P17654017140215766815.a n = A155121 n

theorem P17654017140215766815.correct : P17654017140215766815.Spec := by
  intro n
  simp only [A155121]

end A155121

/-! ## A155121.P9965827156776286102

`ceil(2*((n+1)/acot(n)^3-2))`
-/

namespace A155121.P9965827156776286102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3 - 2)⌉

end

end A155121.P9965827156776286102

namespace A155121

/-- `ceil(2*((n+1)/acot(n)^3-2))` -/
def P9965827156776286102.Spec : Prop :=
  ∀ n, P9965827156776286102.a n = A155121 n

end A155121

/-! ## A155121.P16743246388712653194

`or(1, 2*(n+1)*(n^3+n)-3)`
-/

namespace A155121.P16743246388712653194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 * ((n + 1) * (n ^ 3 + n)) : ℤ) - 3)

end

end A155121.P16743246388712653194

namespace A155121

/-- `or(1, 2*(n+1)*(n^3+n)-3)` -/
def P16743246388712653194.Spec : Prop :=
  ∀ n, P16743246388712653194.a n = A155121 n

end A155121

/-! ## A155121.P9288330579534660103

`xor(2, A060747(A027445(n)))`
-/

namespace A155121.P9288330579534660103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A060747 (A027445 n).toNat)

end

end A155121.P9288330579534660103

namespace A155121

/-- `xor(2, A060747(A027445(n)))` -/
def P9288330579534660103.Spec : Prop :=
  ∀ n, P9288330579534660103.a n = A155121 n

end A155121

/-! ## A155121.P14388910459059708969

`A023447(lcm(2, ceil((n+1)/acot(n)^3)))`
-/

namespace A155121.P14388910459059708969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (Int.lcm 2 ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3⌉)

end

end A155121.P14388910459059708969

namespace A155121

/-- `A023447(lcm(2, ceil((n+1)/acot(n)^3)))` -/
def P14388910459059708969.Spec : Prop :=
  ∀ n, P14388910459059708969.a n = A155121 n

end A155121

/-!
# A155122: a(n) = 4*(3*n+2)*(2*n+1)*(n+2)*(n+1).

The programs for A155122, there is no canonical definition to state claims against.
-/

/-! ## A155122.P16624100025145059058

`4*(3*(n-1)+2)*(2*(n-1)+1)*(n+1)*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155122.P16624100025145059058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((3 * ((n : ℤ) - 1) + 2) * ((2 * ((n : ℤ) - 1) + 1) * ((n + 1) * n : ℤ)))

end

end A155122.P16624100025145059058

/-! ## A155122.P6306268774586539122

`A014105(n)*A014642(n)-A014642(n)`
-/

namespace A155122.P6306268774586539122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n * A014642 n - A014642 n

end

end A155122.P6306268774586539122

/-! ## A155122.P13809113690344820573

`A045944(n)*A085250(n)-A085250(n)`
-/

namespace A155122.P13809113690344820573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n * A085250 n - A085250 n

end

end A155122.P13809113690344820573

/-! ## A155122.P2430683125843194749

`record[(n+3)*∑[n]*A006370(n)]`
-/

namespace A155122.P2430683125843194749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 3) * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) * A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155122.P2430683125843194749

/-! ## A155122.P14877886749235004860

`A279905(2*n+1)+2*A279905(2*n)`
-/

namespace A155122.P14877886749235004860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279905 (2 * n + 1) + 2 * A279905 (2 * n)

end

end A155122.P14877886749235004860

/-!
# A155124: Triangle T(n, k) = 1-n if k=0 else 2, read by rows.

The programs for A155124, the canonical program `A155124.P11009308192955337438` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155124 has offset 0).

The definition of A155124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155124.P14163874250468189320

`(n%2)!+1-round(sqrt(2*(n+1)))*char[∑[n]]`
-/

namespace A155124.P14163874250468189320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) + (1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A155124.P14163874250468189320

namespace A155124

/-- `(n%2)!+1-round(sqrt(2*(n+1)))*char[∑[n]]` -/
def P14163874250468189320.Spec : Prop :=
  ∀ n, P14163874250468189320.a n = A155124 n

end A155124

/-! ## A155124.P1554058318670633320

`((-1)^n)²+1-round(sqrt(2*(n+1)))*char[∑[n]]`
-/

namespace A155124.P1554058318670633320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 + (1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A155124.P1554058318670633320

namespace A155124

/-- `((-1)^n)²+1-round(sqrt(2*(n+1)))*char[∑[n]]` -/
def P1554058318670633320.Spec : Prop :=
  ∀ n, P1554058318670633320.a n = A155124 n

end A155124

/-! ## A155124.P9586277599833764721

`Δ[2*n-A000124(round(sqrt(2*n)))]`
-/

namespace A155124.P9586277599833764721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000124 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155124.P9586277599833764721

namespace A155124

/-- `Δ[2*n-A000124(round(sqrt(2*n)))]` -/
def P9586277599833764721.Spec : Prop :=
  ∀ n, P9586277599833764721.a n = A155124 n

end A155124

/-! ## A155124.P17544931603526261194

`Δ[2*n-A000217(round(sqrt(2*n)))]`
-/

namespace A155124.P17544931603526261194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155124.P17544931603526261194

namespace A155124

/-- `Δ[2*n-A000217(round(sqrt(2*n)))]` -/
def P17544931603526261194.Spec : Prop :=
  ∀ n, P17544931603526261194.a n = A155124 n

end A155124

/-! ## A155124.P11009308192955337438

`A195084(A198954(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A155124

/-- `A195084(A198954(n))` -/
def P11009308192955337438.Spec : Prop :=
  ∀ n, P11009308192955337438.a n = A155124 n

theorem P11009308192955337438.correct : P11009308192955337438.Spec := by
  intro n
  simp only [A155124]

end A155124

/-! ## A155124.P9401807166479609940

`Δ[n-A002260(A038722(n+1)+1)]`
-/

namespace A155124.P9401807166479609940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002260 (A038722 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155124.P9401807166479609940

namespace A155124

/-- `Δ[n-A002260(A038722(n+1)+1)]` -/
def P9401807166479609940.Spec : Prop :=
  ∀ n, P9401807166479609940.a n = A155124 n

end A155124

/-! ## A155124.P14749396209311762635

`A022958(A010054(n)*A010766(n+1))`
-/

namespace A155124.P14749396209311762635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A010054 n * A010766 (n + 1)).toNat

end

end A155124.P14749396209311762635

namespace A155124

/-- `A022958(A010054(n)*A010766(n+1))` -/
def P14749396209311762635.Spec : Prop :=
  ∀ n, P14749396209311762635.a n = A155124 n

end A155124

/-! ## A155124.P11415567614008738580

`A022958(A010054(n)*A208920(n+1))`
-/

namespace A155124.P11415567614008738580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A010054 n * A208920 (n + 1)).toNat

end

end A155124.P11415567614008738580

namespace A155124

/-- `A022958(A010054(n)*A208920(n+1))` -/
def P11415567614008738580.Spec : Prop :=
  ∀ n, P11415567614008738580.a n = A155124 n

end A155124

/-! ## A155124.P1769817448821192160

`(A167407(n)+A061347(n+1))*A061347(n+1)`
-/

namespace A155124.P1769817448821192160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167407 n + A061347 (n + 1)) * A061347 (n + 1)

end

end A155124.P1769817448821192160

namespace A155124

/-- `(A167407(n)+A061347(n+1))*A061347(n+1)` -/
def P1769817448821192160.Spec : Prop :=
  ∀ n, P1769817448821192160.a n = A155124 n

end A155124

/-!
# A155126: Indices of Bernoulli numbers of the form 4k+2 whose fractional part is < 2/3 and is incrementally smallest.

The programs for A155126, there is no canonical definition to state claims against.
-/

/-! ## A155126.P6705002971480648645

`A155125(∪[2^n, A155155(n)])`
-/

namespace A155126.P6705002971480648645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155155 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155125 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A155126.P6705002971480648645

/-! ## A155126.P7095792033398939428

`A155125(∪[2^n, A350267(n+2)])`
-/

namespace A155126.P7095792033398939428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350267 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155125 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A155126.P7095792033398939428

/-!
# A155127: a(n) = 6*a(n-1) + 6*a(n-2), n>2, a(0)=1, a(1)=5, a(2)=35.

The programs for A155127, the canonical program `A155127.P4307539489232502270` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155127 has offset 0).

The definition of A155127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+6*a(n-2)` (program `A155127.P4307539489232502270`, by `A155127.P4307539489232502270.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155127.P4307539489232502270

`6*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=5, a(2)=35`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155127

/-- `6*a(n-1)+6*a(n-2)` -/
def P4307539489232502270.Spec : Prop :=
  ∀ n, (P4307539489232502270.a n : ℤ) = A155127 n

theorem P4307539489232502270.correct : P4307539489232502270.Spec := by
  intro n
  simp only [A155127]

end A155127

/-! ## A155127.P10946455652928496152

`6*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=5, a(2)=35`
-/

namespace A155127.P10946455652928496152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 35] fun n a =>
  6 * (a (n - 1) + a (n - 2))

end

end A155127.P10946455652928496152

namespace A155127

/-- `6*(a(n-1)+a(n-2))` -/
def P10946455652928496152.Spec : Prop :=
  ∀ n, (P10946455652928496152.a n : ℤ) = A155127 n

theorem P10946455652928496152.correct : P10946455652928496152.Spec := by
  intro n
  simp only [A155127, Nat.add_sub_cancel, A155127.P10946455652928496152.a, A155127.P4307539489232502270.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155127

/-!
# A155128: Primes P(n) such that 2*P(n) - P(n+1) has all factors less than P(n+1) - P(n). This means that no prime less than P(n) can divide P(n) to give a remainder added to P(n) to give P(n+1).

The programs for A155128, there is no canonical definition to state claims against.
-/

/-! ## A155128.P1241381086317049935

`record[p?[A320055(A029618(n))]]`
-/

namespace A155128.P1241381086317049935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (A029618 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155128.P1241381086317049935

/-! ## A155128.P8329770700421014248

`record[p?[A320055(A029620(n))]]`
-/

namespace A155128.P8329770700421014248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (A029620 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155128.P8329770700421014248

/-!
# A155130: a(n) = 7*a(n-1) + 7*a(n-2), n>2, a(0)=1, a(1)=6, a(2)=48.

The programs for A155130, the canonical program `A155130.P7791367495976852363` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155130 has offset 0).

The definition of A155130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+7*a(n-2)` (program `A155130.P7791367495976852363`, by `A155130.P7791367495976852363.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155130.P7791367495976852363

`7*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=6, a(2)=48`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155130

/-- `7*a(n-1)+7*a(n-2)` -/
def P7791367495976852363.Spec : Prop :=
  ∀ n, (P7791367495976852363.a n : ℤ) = A155130 n

theorem P7791367495976852363.correct : P7791367495976852363.Spec := by
  intro n
  simp only [A155130]

end A155130

/-! ## A155130.P3133893921239184832

`7*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=6, a(2)=48`
-/

namespace A155130.P3133893921239184832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 48] fun n a =>
  7 * (a (n - 1) + a (n - 2))

end

end A155130.P3133893921239184832

namespace A155130

/-- `7*(a(n-1)+a(n-2))` -/
def P3133893921239184832.Spec : Prop :=
  ∀ n, (P3133893921239184832.a n : ℤ) = A155130 n

theorem P3133893921239184832.correct : P3133893921239184832.Spec := by
  intro n
  simp only [A155130, Nat.add_sub_cancel, A155130.P3133893921239184832.a, A155130.P7791367495976852363.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155130

/-!
# A155131: Numbers k such that 2^44+k is prime.

The programs for A155131, there is no canonical definition to state claims against.
-/

/-! ## A155131.P16281674018909841242

`or(n, record[A247577(n+6)])`
-/

namespace A155131.P16281674018909841242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247577 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A155131.P16281674018909841242

/-!
# A155132: a(n) = 8*a(n-1) + 8*a(n-2), n > 2, a(0)=1, a(1)=7, a(2)=63.

The programs for A155132, the canonical program `A155132.P6245764454362967706` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155132 has offset 0).

The definition of A155132 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+8*a(n-2)` (program `A155132.P6245764454362967706`, by `A155132.P6245764454362967706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155132.P6245764454362967706

`8*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=7, a(2)=63`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155132

/-- `8*a(n-1)+8*a(n-2)` -/
def P6245764454362967706.Spec : Prop :=
  ∀ n, (P6245764454362967706.a n : ℤ) = A155132 n

theorem P6245764454362967706.correct : P6245764454362967706.Spec := by
  intro n
  simp only [A155132]

end A155132

/-! ## A155132.P1628317334366898004

`Δ[9*a(n-1)-8*a(n-3)]` with `a(0)=0, a(1)=1, a(2)=8, a(3)=71`
-/

namespace A155132.P1628317334366898004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8, 71] fun n f1 =>
  9 * f1 (n - 1) - 8 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155132.P1628317334366898004

namespace A155132

/-- `Δ[9*a(n-1)-8*a(n-3)]` -/
def P1628317334366898004.Spec : Prop :=
  ∀ n, P1628317334366898004.a n = A155132 n

end A155132

/-!
# A155133: Numbers k >= 0 such that 5k^2+4k+1 is prime.

The programs for A155133, the canonical program `A155133.P16298633087751083546` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155133 has offset 1).

The definition of A155133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155133.P16298633087751083546

`eq[1, A147809(5*n+2)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A155133

/-- `eq[1, A147809(5*n+2)]` -/
def P16298633087751083546.Spec : Prop :=
  ∀ n, (P16298633087751083546.a n : ℤ) = A155133 (n + 1)

theorem P16298633087751083546.correct : P16298633087751083546.Spec := by
  intro n
  simp only [A155133, Nat.add_sub_cancel]

end A155133

/-! ## A155133.P13560201005689936835

`eq[4, A193432(5*n+2)]`
-/

namespace A155133.P13560201005689936835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155133.P13560201005689936835

namespace A155133

/-- `eq[4, A193432(5*n+2)]` -/
def P13560201005689936835.Spec : Prop :=
  ∀ n, (P13560201005689936835.a n : ℤ) = A155133 (n + 1)

end A155133

/-! ## A155133.P1326547093415782174

`eq[A107279(n), A193330(A273669(n+1))]`
-/

namespace A155133.P1326547093415782174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A273669 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155133.P1326547093415782174

namespace A155133

/-- `eq[A107279(n), A193330(A273669(n+1))]` -/
def P1326547093415782174.Spec : Prop :=
  ∀ n, (P1326547093415782174.a n : ℤ) = A155133 (n + 1)

end A155133

/-! ## A155133.P13565582728526245996

`eq[A040011(n), A278162(A273669(n+1))]`
-/

namespace A155133.P13565582728526245996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 (A273669 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155133.P13565582728526245996

namespace A155133

/-- `eq[A040011(n), A278162(A273669(n+1))]` -/
def P13565582728526245996.Spec : Prop :=
  ∀ n, (P13565582728526245996.a n : ℤ) = A155133 (n + 1)

end A155133

/-! ## A155133.P189287251463748366

`eq[A074723(n+1), A193330(A273669(n+1))]`
-/

namespace A155133.P189287251463748366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A273669 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155133.P189287251463748366

namespace A155133

/-- `eq[A074723(n+1), A193330(A273669(n+1))]` -/
def P189287251463748366.Spec : Prop :=
  ∀ n, (P189287251463748366.a n : ℤ) = A155133 (n + 1)

end A155133

/-! ## A155133.P2434854258821651529

`eq[A079612(n+1), A193330(A273669(n+1))]`
-/

namespace A155133.P2434854258821651529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A273669 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155133.P2434854258821651529

namespace A155133

/-- `eq[A079612(n+1), A193330(A273669(n+1))]` -/
def P2434854258821651529.Spec : Prop :=
  ∀ n, (P2434854258821651529.a n : ℤ) = A155133 (n + 1)

end A155133

/-! ## A155133.P682985347108130587

`eq[6, A278260(A017317(n))]`
-/

namespace A155133.P682985347108130587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (A017317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155133.P682985347108130587

namespace A155133

/-- `eq[6, A278260(A017317(n))]` -/
def P682985347108130587.Spec : Prop :=
  ∀ n, (P682985347108130587.a n : ℤ) = A155133 (n + 1)

end A155133

/-!
# A155134: G.f. satisfies: A(x) = x + A( A(x)^2 + A(x)^3 ).

The programs for A155134, there is no canonical definition to state claims against.
-/

/-! ## A155134.P5026703983077819087

`A006605(n)-A185284(A047229(3*n+1))`
-/

namespace A155134.P5026703983077819087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006605 n - A185284 (A047229 (3 * n + 1)).toNat

end

end A155134.P5026703983077819087

/-! ## A155134.P3538091943747750231

`A028310(A006605(n)-∑{digits}[n, floor(#/7)])`
-/

namespace A155134.P3538091943747750231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A006605 n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 7⌋).sum).toNat

end

end A155134.P3538091943747750231

/-! ## A155134.P16437136121604665892

`A006605(n)-A083917(-∏[n-C(2, n+2)])`
-/

namespace A155134.P16437136121604665892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006605 n - A083917 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A155134.P16437136121604665892

/-! ## A155134.P18117425905388730804

`A178798(A343386(n))+A006605(n)`
-/

namespace A155134.P18117425905388730804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A343386 n).toNat + A006605 n

end

end A155134.P18117425905388730804

/-!
# A155135: Integers k such that k^3+28*k^2 is a square.

The programs for A155135, the canonical program `A155135.P16541040411238345064` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155135 has offset 1).

The definition of A155135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155135.P16541040411238345064

`∪[∑[a(n-1)+8], n²-28]` with `a(0)=0, a(1)=36, a(2)=36`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155135

/-- `∪[∑[a(n-1)+8], n²-28]` -/
def P16541040411238345064.Spec : Prop :=
  ∀ n, (P16541040411238345064.a n : ℤ) = A155135 (n + 1)

theorem P16541040411238345064.correct : P16541040411238345064.Spec := by
  intro n
  simp only [A155135, Nat.add_sub_cancel]

end A155135

/-!
# A155136: Integers k such that k + 28 is a square.

The programs for A155136, the canonical program `A155136.P13069767529719982210` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155136 has offset 1).

The definition of A155136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155136.P13069767529719982210

`(n+1)²-2*(n+1)-27`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155136

/-- `(n+1)²-2*(n+1)-27` -/
def P13069767529719982210.Spec : Prop :=
  ∀ n, P13069767529719982210.a n = A155136 (n + 1)

theorem P13069767529719982210.correct : P13069767529719982210.Spec := by
  intro n
  simp only [A155136, Nat.add_sub_cancel]

end A155136

/-! ## A155136.P11166046966489653962

`(a(n-1)+2*n-1)%A049203(n+1)` with `a(0)=-28`
-/

namespace A155136.P11166046966489653962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-28] fun n a =>
  Int.tmod (a (n - 1) + (2 * n : ℤ) - 1) (A049203 (n + 1))

end

end A155136.P11166046966489653962

namespace A155136

/-- `(a(n-1)+2*n-1)%A049203(n+1)` -/
def P11166046966489653962.Spec : Prop :=
  ∀ n, P11166046966489653962.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P12523638609677784100

`Δ[A000330(n)-A132766(n+2)]`
-/

namespace A155136.P12523638609677784100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - A132766 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155136.P12523638609677784100

namespace A155136

/-- `Δ[A000330(n)-A132766(n+2)]` -/
def P12523638609677784100.Spec : Prop :=
  ∀ n, P12523638609677784100.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P12188282402646706257

`record[A123596(n)-28]`
-/

namespace A155136.P12188282402646706257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155136.P12188282402646706257

namespace A155136

/-- `record[A123596(n)-28]` -/
def P12188282402646706257.Spec : Prop :=
  ∀ n, P12188282402646706257.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P4629221901655855427

`record[A289506(3*(n+1))-32]`
-/

namespace A155136.P4629221901655855427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (3 * (n + 1)) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155136.P4629221901655855427

namespace A155136

/-- `record[A289506(3*(n+1))-32]` -/
def P4629221901655855427.Spec : Prop :=
  ∀ n, P4629221901655855427.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P10092230496505098625

`A023470(n²)`
-/

namespace A155136.P10092230496505098625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023470 (n ^ 2)

end

end A155136.P10092230496505098625

namespace A155136

/-- `A023470(n²)` -/
def P10092230496505098625.Spec : Prop :=
  ∀ n, P10092230496505098625.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P8252379290458364576

`A023471(n²+1)`
-/

namespace A155136.P8252379290458364576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023471 (n ^ 2 + 1)

end

end A155136.P8252379290458364576

namespace A155136

/-- `A023471(n²+1)` -/
def P8252379290458364576.Spec : Prop :=
  ∀ n, P8252379290458364576.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P984372434560104392

`A023479(n²+9)`
-/

namespace A155136.P984372434560104392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023479 (n ^ 2 + 9)

end

end A155136.P984372434560104392

namespace A155136

/-- `A023479(n²+9)` -/
def P984372434560104392.Spec : Prop :=
  ∀ n, P984372434560104392.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P10935647247532515083

`A023472(A059100(n))`
-/

namespace A155136.P10935647247532515083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (A059100 n).toNat

end

end A155136.P10935647247532515083

namespace A155136

/-- `A023472(A059100(n))` -/
def P10935647247532515083.Spec : Prop :=
  ∀ n, P10935647247532515083.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P17573920894535210843

`A023474(A087475(n))`
-/

namespace A155136.P17573920894535210843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023474 (A087475 n).toNat

end

end A155136.P17573920894535210843

namespace A155136

/-- `A023474(A087475(n))` -/
def P17573920894535210843.Spec : Prop :=
  ∀ n, P17573920894535210843.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P666217114480904271

`A023480(A114948(n))`
-/

namespace A155136.P666217114480904271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023480 (A114948 n).toNat

end

end A155136.P666217114480904271

namespace A155136

/-- `A023480(A114948(n))` -/
def P666217114480904271.Spec : Prop :=
  ∀ n, P666217114480904271.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P16757459407695005178

`A023476(A114949(n))`
-/

namespace A155136.P16757459407695005178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023476 (A114949 n).toNat

end

end A155136.P16757459407695005178

namespace A155136

/-- `A023476(A114949(n))` -/
def P16757459407695005178.Spec : Prop :=
  ∀ n, P16757459407695005178.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P10109111891760869614

`A023477(A117619(n))`
-/

namespace A155136.P10109111891760869614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023477 (A117619 n).toNat

end

end A155136.P10109111891760869614

namespace A155136

/-- `A023477(A117619(n))` -/
def P10109111891760869614.Spec : Prop :=
  ∀ n, P10109111891760869614.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P2840198576365654888

`A023473(A117950(n))`
-/

namespace A155136.P2840198576365654888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023473 (A117950 n).toNat

end

end A155136.P2840198576365654888

namespace A155136

/-- `A023473(A117950(n))` -/
def P2840198576365654888.Spec : Prop :=
  ∀ n, P2840198576365654888.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P3317404235527486536

`A023475(A117951(n))`
-/

namespace A155136.P3317404235527486536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023475 (A117951 n).toNat

end

end A155136.P3317404235527486536

namespace A155136

/-- `A023475(A117951(n))` -/
def P3317404235527486536.Spec : Prop :=
  ∀ n, P3317404235527486536.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P723922975629443456

`A023478(A189833(n))`
-/

namespace A155136.P723922975629443456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (A189833 n).toNat

end

end A155136.P723922975629443456

namespace A155136

/-- `A023478(A189833(n))` -/
def P723922975629443456.Spec : Prop :=
  ∀ n, P723922975629443456.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P8571976594518412369

`A023481(A189836(n))`
-/

namespace A155136.P8571976594518412369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023481 (A189836 n).toNat

end

end A155136.P8571976594518412369

namespace A155136

/-- `A023481(A189836(n))` -/
def P8571976594518412369.Spec : Prop :=
  ∀ n, P8571976594518412369.a n = A155136 (n + 1)

end A155136

/-! ## A155136.P14131468857805279821

`A023482(A241748(n))`
-/

namespace A155136.P14131468857805279821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023482 (A241748 n).toNat

end

end A155136.P14131468857805279821

namespace A155136

/-- `A023482(A241748(n))` -/
def P14131468857805279821.Spec : Prop :=
  ∀ n, P14131468857805279821.a n = A155136 (n + 1)

end A155136

/-!
# A155138: a(n) = nonnegative value y such that (A155136(n), y) is a solution to the Diophantine equation x^3+28*x^2 = y^2.

The programs for A155138, the canonical program `A155138.P11273007086136845416` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155138 has offset 1).

The definition of A155138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155138.P11273007086136845416

`abs(n^3-28*n)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155138

/-- `abs(n^3-28*n)` -/
def P11273007086136845416.Spec : Prop :=
  ∀ n, P11273007086136845416.a n = A155138 (n + 1)

theorem P11273007086136845416.correct : P11273007086136845416.Spec := by
  intro n
  simp only [A155138, Nat.add_sub_cancel]

end A155138

/-! ## A155138.P12998114627613249624

`lcm(3, n*(28-n²))`
-/

namespace A155138.P12998114627613249624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ((n : ℤ) * (28 - (n ^ 2 : ℤ)))

end

end A155138.P12998114627613249624

namespace A155138

/-- `lcm(3, n*(28-n²))` -/
def P12998114627613249624.Spec : Prop :=
  ∀ n, (P12998114627613249624.a n : ℤ) = A155138 (n + 1)

end A155138

/-! ## A155138.P14623121864732494593

`n*gcd(n²-28, floor(acot(n)²))`
-/

namespace A155138.P14623121864732494593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd ((n ^ 2 : ℤ) - 28) ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A155138.P14623121864732494593

namespace A155138

/-- `n*gcd(n²-28, floor(acot(n)²))` -/
def P14623121864732494593.Spec : Prop :=
  ∀ n, (P14623121864732494593.a n : ℤ) = A155138 (n + 1)

end A155138

/-! ## A155138.P1195059494971057323

`gcd(-n*(28-n²), and(4, gcd(2, n)))`
-/

namespace A155138.P1195059494971057323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-((n : ℤ) * (28 - (n ^ 2 : ℤ)))) (Nat.land 4 (Nat.gcd 2 n) : ℤ)

end

end A155138.P1195059494971057323

namespace A155138

/-- `gcd(-n*(28-n²), and(4, gcd(2, n)))` -/
def P1195059494971057323.Spec : Prop :=
  ∀ n, (P1195059494971057323.a n : ℤ) = A155138 (n + 1)

end A155138

/-! ## A155138.P5164087249401120560

`n*abs(A155136(n+1))`
-/

namespace A155138.P5164087249401120560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * |A155136 (n + 1)|

end

end A155138.P5164087249401120560

namespace A155138

/-- `n*abs(A155136(n+1))` -/
def P5164087249401120560.Spec : Prop :=
  ∀ n, P5164087249401120560.a n = A155138 (n + 1)

end A155138

/-!
# A155141: Primes p such that both p-+4 are squarefree.

The programs for A155141, the canonical program `A155141.P9472894967905439765` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155141 has offset 1).

The definition of A155141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2736 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155141.P9472894967905439765

`record[A006530(A007913(n+1)+A007913(n+9))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A155141

/-- `record[A006530(A007913(n+1)+A007913(n+9))]` -/
def P9472894967905439765.Spec : Prop :=
  ∀ n, P9472894967905439765.a n = A155141 (n + 1)

theorem P9472894967905439765.correct : P9472894967905439765.Spec := by
  intro n
  simp only [A155141, Nat.add_sub_cancel]

end A155141

/-! ## A155141.P6392602680984406477

`record[A006530(A007947(n+1)+A007947(n+9))]`
-/

namespace A155141.P6392602680984406477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007947 (n + 1) + A007947 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155141.P6392602680984406477

namespace A155141

/-- `record[A006530(A007947(n+1)+A007947(n+9))]` -/
def P6392602680984406477.Spec : Prop :=
  ∀ n, P6392602680984406477.a n = A155141 (n + 1)

end A155141

/-! ## A155141.P2124057671106230251

`p?[record[A335523(n+1)-A335458(n)]]`
-/

namespace A155141.P2124057671106230251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (n + 1) - A335458 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155141.P2124057671106230251

namespace A155141

/-- `p?[record[A335523(n+1)-A335458(n)]]` -/
def P2124057671106230251.Spec : Prop :=
  ∀ n, P2124057671106230251.a n = A155141 (n + 1)

end A155141

/-! ## A155141.P6404190067532143635

`∩[A375818(n+1), A195128(n)]`
-/

namespace A155141.P6404190067532143635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155141.P6404190067532143635

namespace A155141

/-- `∩[A375818(n+1), A195128(n)]` -/
def P6404190067532143635.Spec : Prop :=
  ∀ n, (P6404190067532143635.a n : ℤ) = A155141 (n + 1)

end A155141

/-! ## A155141.P1133017757854010193

`p?[A119675(∑[A340786(n+1)])]`
-/

namespace A155141.P1133017757854010193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340786 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119675 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155141.P1133017757854010193

namespace A155141

/-- `p?[A119675(∑[A340786(n+1)])]` -/
def P1133017757854010193.Spec : Prop :=
  ∀ n, P1133017757854010193.a n = A155141 (n + 1)

end A155141

/-!
# A155142: Primes p that belong neither to A155140 nor to A155141.

The programs for A155142, there is no canonical definition to state claims against.
-/

/-! ## A155142.P14290236555809833152

`A317587(A074276(n+1))`
-/

namespace A155142.P14290236555809833152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317587 (A074276 (n + 1)).toNat

end

end A155142.P14290236555809833152

/-! ## A155142.P15643527420696548910

`p?[eq[A100808(n+1), A246144(n+1)]]`
-/

namespace A155142.P15643527420696548910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246144 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155142.P15643527420696548910

/-! ## A155142.P15484311211297632489

`A123318(A350879(n+1)+A074276(n+1))`
-/

namespace A155142.P15484311211297632489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A350879 (n + 1) + A074276 (n + 1)).toNat

end

end A155142.P15484311211297632489

/-! ## A155142.P7267707017088920680

`A123318(A055041(n+1)-A196777(n+1))`
-/

namespace A155142.P7267707017088920680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A055041 (n + 1) - A196777 (n + 1)).toNat

end

end A155142.P7267707017088920680

/-! ## A155142.P11282631707148295036

`A123318(A055041(n+1))`
-/

namespace A155142.P11282631707148295036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A055041 (n + 1)).toNat

end

end A155142.P11282631707148295036

/-!
# A155143: Primes p such that p-+2, p-+4, p-+6 are squarefree.

The programs for A155143, there is no canonical definition to state claims against.
-/

/-! ## A155143.P14870602813242554662

`p?[∑[A123388(n+1)%24]]`
-/

namespace A155143.P14870602813242554662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123388 (n + 1)) 24

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155143.P14870602813242554662

/-!
# A155144: a(n) = 9*a(n-1) + 9*a(n-2), n>2; a(0)=1, a(1)=8, a(2)=80.

The programs for A155144, the canonical program `A155144.P2336757377884699321` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155144 has offset 0).

The definition of A155144 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+9*a(n-2)` (program `A155144.P2336757377884699321`, by `A155144.P2336757377884699321.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155144.P2336757377884699321

`9*a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=8, a(2)=80`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155144

/-- `9*a(n-1)+9*a(n-2)` -/
def P2336757377884699321.Spec : Prop :=
  ∀ n, (P2336757377884699321.a n : ℤ) = A155144 n

theorem P2336757377884699321.correct : P2336757377884699321.Spec := by
  intro n
  simp only [A155144]

end A155144

/-! ## A155144.P4805597187486544168

`9*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=8, a(2)=80`
-/

namespace A155144.P4805597187486544168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 80] fun n a =>
  9 * (a (n - 1) + a (n - 2))

end

end A155144.P4805597187486544168

namespace A155144

/-- `9*(a(n-1)+a(n-2))` -/
def P4805597187486544168.Spec : Prop :=
  ∀ n, (P4805597187486544168.a n : ℤ) = A155144 n

theorem P4805597187486544168.correct : P4805597187486544168.Spec := by
  intro n
  simp only [A155144, Nat.add_sub_cancel, A155144.P4805597187486544168.a, A155144.P2336757377884699321.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155144

/-!
# A155146: Numbers k such that k^3 has exactly 3 different digits.

The programs for A155146, there is no canonical definition to state claims against.
-/

/-! ## A155146.P11241750474578015909

`∩[comp[A030292(n+1)], A030294(n+1)]`
-/

namespace A155146.P11241750474578015909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030292 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A155146.P11241750474578015909

/-! ## A155146.P6460222436713457287

`A335376(A275525(n+1)+3)`
-/

namespace A155146.P6460222436713457287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335376 (A275525 (n + 1) + 3).toNat

end

end A155146.P6460222436713457287

/-!
# A155147: Numbers k such that k^3 has exactly 4 different digits.

The programs for A155147, there is no canonical definition to state claims against.
-/

/-! ## A155147.P9840990487422622982

`A332061(A033560(n+1))+6`
-/

namespace A155147.P9840990487422622982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332061 (A033560 (n + 1)).toNat + 6

end

end A155147.P9840990487422622982

/-! ## A155147.P15940512407889088489

`record[A298200(A175153(n+1))+1]`
-/

namespace A155147.P15940512407889088489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298200 (A175153 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155147.P15940512407889088489

/-!
# A155148: Numbers k such that k^4 has exactly 2 different decimal digits.

The programs for A155148, there is no canonical definition to state claims against.
-/

/-! ## A155148.P12688914698661839952

`10*a(n-1)` with `a(0)=2, a(1)=3, a(2)=10`
-/

namespace A155148.P12688914698661839952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 10] fun n a =>
  10 * a (n - 1)

end

end A155148.P12688914698661839952

/-! ## A155148.P6492529731164945718

`a(n-1)/tan(acot(10))` with `a(0)=2, a(1)=3, a(2)=10`
-/

namespace A155148.P6492529731164945718
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 3, 10] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (10 : ℝ))

end

end A155148.P6492529731164945718

/-! ## A155148.P3127892732788178618

`10^((n-1)%a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A155148.P3127892732788178618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  (10 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ)

end

end A155148.P3127892732788178618

/-! ## A155148.P3088453133953989672

`a(n-1)/sin(acot(3))²` with `a(0)=2, a(1)=3, a(2)=10`
-/

namespace A155148.P3088453133953989672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 3, 10] fun n a =>
  a (n - 1) / Real.sin (SequenceMachineLib.acot (3 : ℝ)) ^ 2

end

end A155148.P3088453133953989672

/-!
# A155150: Numbers k such that k^4 has exactly 4 distinct decimal digits.

The programs for A155150, there is no canonical definition to state claims against.
-/

/-! ## A155150.P12959425601047981090

`sqrt(∩[A054032(n+1), n²])`
-/

namespace A155150.P12959425601047981090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054032 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A155150.P12959425601047981090

/-! ## A155150.P3728377139272933840

`sqrt(∩[A002620(2*(n+2)), A054032(n+1)])`
-/

namespace A155150.P3728377139272933840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054032 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A155150.P3728377139272933840

/-! ## A155150.P8268305210546304586

`A056926(∩[A054032(n+1), n²])`
-/

namespace A155150.P8268305210546304586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054032 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A155150.P8268305210546304586

/-! ## A155150.P6316515090912138829

`A262689(∩[A054032(n+1), n²])`
-/

namespace A155150.P6316515090912138829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054032 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A155150.P6316515090912138829

/-! ## A155150.P3187468903919899993

`A056926(∩[A002620(2*(n+2)), A054032(n+1)])`
-/

namespace A155150.P3187468903919899993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054032 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A155150.P3187468903919899993

/-!
# A155151: Triangle T(n, k) = 4*n*k + 2*n + 2*k + 2, read by rows.

The programs for A155151, the canonical program `A155151.P15562018363835472075` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155151 has offset 1).

The definition of A155151 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144650, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A155151.P15562018363835472075

`2*A144650(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A155151

/-- `2*A144650(n+1)` -/
def P15562018363835472075.Spec : Prop :=
  ∀ n, P15562018363835472075.a n = A155151 (n + 1)

theorem P15562018363835472075.correct : P15562018363835472075.Spec := by
  intro n
  simp only [A155151, Nat.add_sub_cancel]

end A155151

/-! ## A155151.P15476988433192048469

`A172292(n+1)+1`
-/

namespace A155151.P15476988433192048469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) + 1

end

end A155151.P15476988433192048469

namespace A155151

/-- `A172292(n+1)+1` -/
def P15476988433192048469.Spec : Prop :=
  ∀ n, P15476988433192048469.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P16947146364253709761

`A155156(n+1)+2`
-/

namespace A155151.P16947146364253709761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) + 2

end

end A155151.P16947146364253709761

namespace A155151

/-- `A155156(n+1)+2` -/
def P16947146364253709761.Spec : Prop :=
  ∀ n, P16947146364253709761.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P15289070442406781545

`A163676(n+1)+3`
-/

namespace A155151.P15289070442406781545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) + 3

end

end A155151.P15289070442406781545

namespace A155151

/-- `A163676(n+1)+3` -/
def P15289070442406781545.Spec : Prop :=
  ∀ n, P15289070442406781545.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P17726713668743185196

`2*(A083487(n+1)+1)`
-/

namespace A155151.P17726713668743185196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083487 (n + 1) + 1)

end

end A155151.P17726713668743185196

namespace A155151

/-- `2*(A083487(n+1)+1)` -/
def P17726713668743185196.Spec : Prop :=
  ∀ n, P17726713668743185196.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P5772493056981732416

`2*(A144562(n+1)+2)`
-/

namespace A155151.P5772493056981732416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144562 (n + 1) + 2)

end

end A155151.P5772493056981732416

namespace A155151

/-- `2*(A144562(n+1)+2)` -/
def P5772493056981732416.Spec : Prop :=
  ∀ n, P5772493056981732416.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P2117530143656589579

`2*(A155705(n+1)-1)`
-/

namespace A155151.P2117530143656589579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155705 (n + 1) - 1)

end

end A155151.P2117530143656589579

namespace A155151

/-- `2*(A155705(n+1)-1)` -/
def P2117530143656589579.Spec : Prop :=
  ∀ n, P2117530143656589579.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P4833500902680130323

`2*(A154680(n+1)+3)`
-/

namespace A155151.P4833500902680130323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154680 (n + 1) + 3)

end

end A155151.P4833500902680130323

namespace A155151

/-- `2*(A154680(n+1)+3)` -/
def P4833500902680130323.Spec : Prop :=
  ∀ n, P4833500902680130323.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P8262200371639513950

`2*(A154681(n+1)-2)`
-/

namespace A155151.P8262200371639513950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154681 (n + 1) - 2)

end

end A155151.P8262200371639513950

namespace A155151

/-- `2*(A154681(n+1)-2)` -/
def P8262200371639513950.Spec : Prop :=
  ∀ n, P8262200371639513950.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P1149673709656361703

`2*(A154684(n+1)+4)`
-/

namespace A155151.P1149673709656361703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154684 (n + 1) + 4)

end

end A155151.P1149673709656361703

namespace A155151

/-- `2*(A154684(n+1)+4)` -/
def P1149673709656361703.Spec : Prop :=
  ∀ n, P1149673709656361703.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P12388369159454703028

`2*(A154685(n+1)-3)`
-/

namespace A155151.P12388369159454703028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154685 (n + 1) - 3)

end

end A155151.P12388369159454703028

namespace A155151

/-- `2*(A154685(n+1)-3)` -/
def P12388369159454703028.Spec : Prop :=
  ∀ n, P12388369159454703028.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P1903402030892999272

`2*(A154631(n+1)-4)`
-/

namespace A155151.P1903402030892999272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154631 (n + 1) - 4)

end

end A155151.P1903402030892999272

namespace A155151

/-- `2*(A154631(n+1)-4)` -/
def P1903402030892999272.Spec : Prop :=
  ∀ n, P1903402030892999272.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P9088389286753014424

`2*(A155724(n+1)+5)`
-/

namespace A155151.P9088389286753014424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155724 (n + 1) + 5)

end

end A155151.P9088389286753014424

namespace A155151

/-- `2*(A155724(n+1)+5)` -/
def P9088389286753014424.Spec : Prop :=
  ∀ n, P9088389286753014424.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P17772853612803196854

`2*(A163652(n+1)-5)`
-/

namespace A155151.P17772853612803196854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A163652 (n + 1) - 5)

end

end A155151.P17772853612803196854

namespace A155151

/-- `2*(A163652(n+1)-5)` -/
def P17772853612803196854.Spec : Prop :=
  ∀ n, P17772853612803196854.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P2277126114296128016

`2*(A155550(n+1)+7)`
-/

namespace A155151.P2277126114296128016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155550 (n + 1) + 7)

end

end A155151.P2277126114296128016

namespace A155151

/-- `2*(A155550(n+1)+7)` -/
def P2277126114296128016.Spec : Prop :=
  ∀ n, P2277126114296128016.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P5198752353919978165

`2*(A155546(n+1)+5)+2`
-/

namespace A155151.P5198752353919978165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155546 (n + 1) + 5) + 2

end

end A155151.P5198752353919978165

namespace A155151

/-- `2*(A155546(n+1)+5)+2` -/
def P5198752353919978165.Spec : Prop :=
  ∀ n, P5198752353919978165.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P17126770287196297555

`A155705(n+1)+A083487(n+1)`
-/

namespace A155151.P17126770287196297555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) + A083487 (n + 1)

end

end A155151.P17126770287196297555

namespace A155151

/-- `A155705(n+1)+A083487(n+1)` -/
def P17126770287196297555.Spec : Prop :=
  ∀ n, P17126770287196297555.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P8247305056109002757

`A154681(n+1)+A144562(n+1)`
-/

namespace A155151.P8247305056109002757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) + A144562 (n + 1)

end

end A155151.P8247305056109002757

namespace A155151

/-- `A154681(n+1)+A144562(n+1)` -/
def P8247305056109002757.Spec : Prop :=
  ∀ n, P8247305056109002757.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P3927648848947732015

`A163674(n+1)+A144670(n+1)`
-/

namespace A155151.P3927648848947732015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163674 (n + 1) + A144670 (n + 1)

end

end A155151.P3927648848947732015

namespace A155151

/-- `A163674(n+1)+A144670(n+1)` -/
def P3927648848947732015.Spec : Prop :=
  ∀ n, P3927648848947732015.a n = A155151 (n + 1)

end A155151

/-! ## A155151.P6471357927531264950

`A154684(n+1)+A154631(n+1)`
-/

namespace A155151.P6471357927531264950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + A154631 (n + 1)

end

end A155151.P6471357927531264950

namespace A155151

/-- `A154684(n+1)+A154631(n+1)` -/
def P6471357927531264950.Spec : Prop :=
  ∀ n, P6471357927531264950.a n = A155151 (n + 1)

end A155151

/-!
# A155152: Numbers k such that 13*k^2 + 3*k + 1 is prime.

The programs for A155152, there is no canonical definition to state claims against.
-/

/-! ## A155152.P4991377043447335026

`eq[1, A001222(A244805(n+1)+n²)]`
-/

namespace A155152.P4991377043447335026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A244805 (n + 1) + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155152.P4991377043447335026

/-! ## A155152.P4761398134348590134

`eq[2, A000005(A244805(n+1)+n²)]`
-/

namespace A155152.P4761398134348590134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A244805 (n + 1) + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155152.P4761398134348590134

/-! ## A155152.P11100716999993698643

`eq[1, A001222((13*n+3)*A028310(n)+1)]`
-/

namespace A155152.P11100716999993698643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((13 * n + 3 : ℤ) * A028310 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155152.P11100716999993698643

/-! ## A155152.P8590762296451573322

`eq[1, A001222(A016778(n)+A001107(n))]`
-/

namespace A155152.P8590762296451573322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016778 n + A001107 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155152.P8590762296451573322

/-! ## A155152.P3344010052818838497

`eq[1, A001222(A033583(n)+A003215(n))]`
-/

namespace A155152.P3344010052818838497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033583 n + A003215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155152.P3344010052818838497

/-!
# A155153: Primes p such that 13*p^2+3*p+1 is a prime.

The programs for A155153, there is no canonical definition to state claims against.
-/

/-! ## A155153.P727715008200021265

`p?[A155152(n+1)]`
-/

namespace A155153.P727715008200021265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155153.P727715008200021265

/-! ## A155153.P18239716240714514326

`p?[record[A155152(A291769(n))]]`
-/

namespace A155153.P18239716240714514326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155152 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155153.P18239716240714514326

/-! ## A155153.P8239874449479600647

`record[A006530(A155152(n+2))]`
-/

namespace A155153.P8239874449479600647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A155152 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155153.P8239874449479600647

/-! ## A155153.P6799245682664672125

`filter[A155152(n+1), A010051(#)]`
-/

namespace A155153.P6799245682664672125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A155153.P6799245682664672125

/-! ## A155153.P9691070524249267814

`∩[A000040(n+1), A155152(n+1)]`
-/

namespace A155153.P9691070524249267814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155153.P9691070524249267814

/-! ## A155153.P8356819779221489270

`∩[A045319(n+1), A155152(n+1)]`
-/

namespace A155153.P8356819779221489270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155153.P8356819779221489270

/-! ## A155153.P17583413290684165482

`∩[A049549(n+1), A155152(n+1)]`
-/

namespace A155153.P17583413290684165482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155153.P17583413290684165482

/-! ## A155153.P14686120584435913511

`∩[A155152(n+1), A175787(n+1)]`
-/

namespace A155153.P14686120584435913511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155153.P14686120584435913511

/-! ## A155153.P11954769838219138791

`∩[A155152(n+1), A182986(n+1)]`
-/

namespace A155153.P11954769838219138791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155153.P11954769838219138791

/-! ## A155153.P7610463669046303934

`filter[A155152(n+2), A080339(#)]`
-/

namespace A155153.P7610463669046303934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155152 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A155153.P7610463669046303934

/-!
# A155154: Number of right triangles with nonnegative integer coordinates less than or equal to n and one corner at the origin.

The programs for A155154, there is no canonical definition to state claims against.
-/

/-! ## A155154.P4346741393668157438

`A000035(A278935(n+3))+2*n+9*C(n, 2)`
-/

namespace A155154.P4346741393668157438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A278935 (n + 3)).toNat + (2 * n + 9 * Nat.choose n 2 : ℤ)

end

end A155154.P4346741393668157438

/-! ## A155154.P12018284167346482935

`A062708(n)+A000007(A055750(n))`
-/

namespace A155154.P12018284167346482935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n + A000007 (A055750 n).toNat

end

end A155154.P12018284167346482935

/-! ## A155154.P5650260534701394835

`A062708(n)+A000007(A055756(n))`
-/

namespace A155154.P5650260534701394835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n + A000007 (A055756 n).toNat

end

end A155154.P5650260534701394835

/-!
# A155155: a(n) = 2*(10*3^n - 1).

The programs for A155155, the canonical program `A155155.P2074818852686111782` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155155 has offset 0).

The definition of A155155 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(10*3^n-1)` (program `A155155.P2074818852686111782`, by `A155155.P2074818852686111782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155155.P2074818852686111782

`2*(10*3^n-1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155155

/-- `2*(10*3^n-1)` -/
def P2074818852686111782.Spec : Prop :=
  ∀ n, P2074818852686111782.a n = A155155 n

theorem P2074818852686111782.correct : P2074818852686111782.Spec := by
  intro n
  simp only [A155155]

end A155155

/-! ## A155155.P12790356460693280408

`4*a(n-1)-3*a(n-2)` with `a(0)=18, a(1)=58`
-/

namespace A155155.P12790356460693280408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18, 58] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2)

end

end A155155.P12790356460693280408

namespace A155155

/-- `4*a(n-1)-3*a(n-2)` -/
def P12790356460693280408.Spec : Prop :=
  ∀ n, P12790356460693280408.a n = A155155 n

theorem P12790356460693280408.correct : P12790356460693280408.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A155155, Nat.add_sub_cancel, A155155.P12790356460693280408.a, A155155.P2074818852686111782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A155155, Nat.add_sub_cancel, A155155.P12790356460693280408.a, A155155.P2074818852686111782.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155155

/-! ## A155155.P6153793197619245142

`10*A048473(n)+8`
-/

namespace A155155.P6153793197619245142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A048473 n + 8

end

end A155155.P6153793197619245142

namespace A155155

/-- `10*A048473(n)+8` -/
def P6153793197619245142.Spec : Prop :=
  ∀ n, P6153793197619245142.a n = A155155 n

end A155155

/-! ## A155155.P8431416933441308481

`A048473(n)+A048473(n+2)`
-/

namespace A155155.P8431416933441308481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n + A048473 (n + 2)

end

end A155155.P8431416933441308481

namespace A155155

/-- `A048473(n)+A048473(n+2)` -/
def P8431416933441308481.Spec : Prop :=
  ∀ n, P8431416933441308481.a n = A155155 n

end A155155

/-! ## A155155.P18114150284841715341

`18*A003462(n+1)-14*A003462(n)`
-/

namespace A155155.P18114150284841715341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A003462 (n + 1) - 14 * A003462 n

end

end A155155.P18114150284841715341

namespace A155155

/-- `18*A003462(n+1)-14*A003462(n)` -/
def P18114150284841715341.Spec : Prop :=
  ∀ n, P18114150284841715341.a n = A155155 n

end A155155

/-! ## A155155.P14344309420728692105

`xor(6, 20*3^n)`
-/

namespace A155155.P14344309420728692105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (20 * 3 ^ n)

end

end A155155.P14344309420728692105

namespace A155155

/-- `xor(6, 20*3^n)` -/
def P14344309420728692105.Spec : Prop :=
  ∀ n, (P14344309420728692105.a n : ℤ) = A155155 n

end A155155

/-! ## A155155.P9737166216818503015

`3*a(n-1)+4` with `a(0)=18`
-/

namespace A155155.P9737166216818503015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18] fun n a =>
  3 * a (n - 1) + 4

end

end A155155.P9737166216818503015

namespace A155155

/-- `3*a(n-1)+4` -/
def P9737166216818503015.Spec : Prop :=
  ∀ n, (P9737166216818503015.a n : ℤ) = A155155 n

theorem P9737166216818503015.correct : P9737166216818503015.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A155155, Nat.add_sub_cancel, A155155.P9737166216818503015.a, A155155.P2074818852686111782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A155155, Nat.add_sub_cancel, A155155.P9737166216818503015.a, A155155.P2074818852686111782.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155155

/-! ## A155155.P8485146401978140478

`∑[3*a(n-1)]` with `a(0)=18, a(1)=40`
-/

namespace A155155.P8485146401978140478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 40] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155155.P8485146401978140478

namespace A155155

/-- `∑[3*a(n-1)]` -/
def P8485146401978140478.Spec : Prop :=
  ∀ n, (P8485146401978140478.a n : ℤ) = A155155 n

end A155155

/-! ## A155155.P4577962026729210773

`Δ[3*a(n-1)]-2` with `a(0)=10`
-/

namespace A155155.P4577962026729210773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2

end

end A155155.P4577962026729210773

namespace A155155

/-- `Δ[3*a(n-1)]-2` -/
def P4577962026729210773.Spec : Prop :=
  ∀ n, P4577962026729210773.a n = A155155 n

end A155155

/-! ## A155155.P12052694596449925101

`Δ[A005052(n)]-2`
-/

namespace A155155.P12052694596449925101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A155155.P12052694596449925101

namespace A155155

/-- `Δ[A005052(n)]-2` -/
def P12052694596449925101.Spec : Prop :=
  ∀ n, P12052694596449925101.a n = A155155 n

end A155155

/-! ## A155155.P150329904694195034

`Δ[A199112(n)]-2`
-/

namespace A155155.P150329904694195034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A155155.P150329904694195034

namespace A155155

/-- `Δ[A199112(n)]-2` -/
def P150329904694195034.Spec : Prop :=
  ∀ n, P150329904694195034.a n = A155155 n

end A155155

/-! ## A155155.P4489687032864981667

`A116530(n+1)-2`
-/

namespace A155155.P4489687032864981667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116530 (n + 1) - 2

end

end A155155.P4489687032864981667

namespace A155155

/-- `A116530(n+1)-2` -/
def P4489687032864981667.Spec : Prop :=
  ∀ n, P4489687032864981667.a n = A155155 n

end A155155

/-! ## A155155.P6862325106763828770

`4*A198643(n)+2`
-/

namespace A155155.P6862325106763828770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A198643 n + 2

end

end A155155.P6862325106763828770

namespace A155155

/-- `4*A198643(n)+2` -/
def P6862325106763828770.Spec : Prop :=
  ∀ n, P6862325106763828770.a n = A155155 n

end A155155

/-! ## A155155.P1134144390688510669

`4*A005030(n)-2`
-/

namespace A155155.P1134144390688510669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005030 n - 2

end

end A155155.P1134144390688510669

namespace A155155

/-- `4*A005030(n)-2` -/
def P1134144390688510669.Spec : Prop :=
  ∀ n, P1134144390688510669.a n = A155155 n

end A155155

/-! ## A155155.P10573566125331510422

`5*A171498(n)+3`
-/

namespace A155155.P10573566125331510422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A171498 n + 3

end

end A155155.P10573566125331510422

namespace A155155

/-- `5*A171498(n)+3` -/
def P10573566125331510422.Spec : Prop :=
  ∀ n, P10573566125331510422.a n = A155155 n

end A155155

/-! ## A155155.P15915659670548406152

`A355492(n+1)-3^n`
-/

namespace A155155.P15915659670548406152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355492 (n + 1) - (3 ^ n : ℤ)

end

end A155155.P15915659670548406152

namespace A155155

/-- `A355492(n+1)-3^n` -/
def P15915659670548406152.Spec : Prop :=
  ∀ n, P15915659670548406152.a n = A155155 n

end A155155

/-! ## A155155.P6482974223539452958

`A258598(n)+A058481(n+1)`
-/

namespace A155155.P6482974223539452958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258598 n + A058481 (n + 1)

end

end A155155.P6482974223539452958

namespace A155155

/-- `A258598(n)+A058481(n+1)` -/
def P6482974223539452958.Spec : Prop :=
  ∀ n, P6482974223539452958.a n = A155155 n

end A155155

/-! ## A155155.P1399256108851991820

`A198644(n)+A171498(n+1)`
-/

namespace A155155.P1399256108851991820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198644 n + A171498 (n + 1)

end

end A155155.P1399256108851991820

namespace A155155

/-- `A198644(n)+A171498(n+1)` -/
def P1399256108851991820.Spec : Prop :=
  ∀ n, P1399256108851991820.a n = A155155 n

end A155155

/-! ## A155155.P17374863809967026017

`A198643(n+1)+A198643(n)`
-/

namespace A155155.P17374863809967026017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198643 (n + 1) + A198643 n

end

end A155155.P17374863809967026017

namespace A155155

/-- `A198643(n+1)+A198643(n)` -/
def P17374863809967026017.Spec : Prop :=
  ∀ n, P17374863809967026017.a n = A155155 n

end A155155

/-!
# A155156: Triangle T(n, k) = 4*n*k + 2*n + 2*k, read by rows.

The programs for A155156, the canonical program `A155156.P2516037963333073016` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155156 has offset 1).

The definition of A155156 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083487, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A155156.P2516037963333073016

`2*A083487(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A155156

/-- `2*A083487(n+1)` -/
def P2516037963333073016.Spec : Prop :=
  ∀ n, P2516037963333073016.a n = A155156 (n + 1)

theorem P2516037963333073016.correct : P2516037963333073016.Spec := by
  intro n
  simp only [A155156, Nat.add_sub_cancel]

end A155156

/-! ## A155156.P10216964590612583868

`A163676(n+1)+1`
-/

namespace A155156.P10216964590612583868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) + 1

end

end A155156.P10216964590612583868

namespace A155156

/-- `A163676(n+1)+1` -/
def P10216964590612583868.Spec : Prop :=
  ∀ n, P10216964590612583868.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P15232264167734270197

`A172292(n+1)-1`
-/

namespace A155156.P15232264167734270197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - 1

end

end A155156.P15232264167734270197

namespace A155156

/-- `A172292(n+1)-1` -/
def P15232264167734270197.Spec : Prop :=
  ∀ n, P15232264167734270197.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P10295453485770277939

`A155151(n+1)-2`
-/

namespace A155156.P10295453485770277939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - 2

end

end A155156.P10295453485770277939

namespace A155156

/-- `A155151(n+1)-2` -/
def P10295453485770277939.Spec : Prop :=
  ∀ n, P10295453485770277939.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P14675365323180699689

`2*(A144562(n+1)+1)`
-/

namespace A155156.P14675365323180699689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144562 (n + 1) + 1)

end

end A155156.P14675365323180699689

namespace A155156

/-- `2*(A144562(n+1)+1)` -/
def P14675365323180699689.Spec : Prop :=
  ∀ n, P14675365323180699689.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P17131304931660833735

`2*(A144650(n+1)-1)`
-/

namespace A155156.P17131304931660833735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144650 (n + 1) - 1)

end

end A155156.P17131304931660833735

namespace A155156

/-- `2*(A144650(n+1)-1)` -/
def P17131304931660833735.Spec : Prop :=
  ∀ n, P17131304931660833735.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P9520390043824960979

`2*(A154680(n+1)+2)`
-/

namespace A155156.P9520390043824960979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154680 (n + 1) + 2)

end

end A155156.P9520390043824960979

namespace A155156

/-- `2*(A154680(n+1)+2)` -/
def P9520390043824960979.Spec : Prop :=
  ∀ n, P9520390043824960979.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P12418334785222434884

`2*(A154684(n+1)+3)`
-/

namespace A155156.P12418334785222434884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154684 (n + 1) + 3)

end

end A155156.P12418334785222434884

namespace A155156

/-- `2*(A154684(n+1)+3)` -/
def P12418334785222434884.Spec : Prop :=
  ∀ n, P12418334785222434884.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P17384533220324893152

`2*(A155705(n+1)-2)`
-/

namespace A155156.P17384533220324893152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155705 (n + 1) - 2)

end

end A155156.P17384533220324893152

namespace A155156

/-- `2*(A155705(n+1)-2)` -/
def P17384533220324893152.Spec : Prop :=
  ∀ n, P17384533220324893152.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P17917738876728965700

`2*(A154681(n+1)-3)`
-/

namespace A155156.P17917738876728965700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154681 (n + 1) - 3)

end

end A155156.P17917738876728965700

namespace A155156

/-- `2*(A154681(n+1)-3)` -/
def P17917738876728965700.Spec : Prop :=
  ∀ n, P17917738876728965700.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P10341136809087925393

`2*(A155724(n+1)+4)`
-/

namespace A155156.P10341136809087925393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155724 (n + 1) + 4)

end

end A155156.P10341136809087925393

namespace A155156

/-- `2*(A155724(n+1)+4)` -/
def P10341136809087925393.Spec : Prop :=
  ∀ n, P10341136809087925393.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P13395273505807442370

`2*(A154685(n+1)-4)`
-/

namespace A155156.P13395273505807442370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154685 (n + 1) - 4)

end

end A155156.P13395273505807442370

namespace A155156

/-- `2*(A154685(n+1)-4)` -/
def P13395273505807442370.Spec : Prop :=
  ∀ n, P13395273505807442370.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P1458133051484361023

`2*(A155546(n+1)+5)`
-/

namespace A155156.P1458133051484361023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155546 (n + 1) + 5)

end

end A155156.P1458133051484361023

namespace A155156

/-- `2*(A155546(n+1)+5)` -/
def P1458133051484361023.Spec : Prop :=
  ∀ n, P1458133051484361023.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P6294536257282636971

`2*(A154631(n+1)-5)`
-/

namespace A155156.P6294536257282636971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154631 (n + 1) - 5)

end

end A155156.P6294536257282636971

namespace A155156

/-- `2*(A154631(n+1)-5)` -/
def P6294536257282636971.Spec : Prop :=
  ∀ n, P6294536257282636971.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P16921665148921965803

`2*(A155550(n+1)+5)+2`
-/

namespace A155156.P16921665148921965803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155550 (n + 1) + 5) + 2

end

end A155156.P16921665148921965803

namespace A155156

/-- `2*(A155550(n+1)+5)+2` -/
def P16921665148921965803.Spec : Prop :=
  ∀ n, P16921665148921965803.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P7651319233633389651

`A144650(n+1)+A144562(n+1)`
-/

namespace A155156.P7651319233633389651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + A144562 (n + 1)

end

end A155156.P7651319233633389651

namespace A155156

/-- `A144650(n+1)+A144562(n+1)` -/
def P7651319233633389651.Spec : Prop :=
  ∀ n, P7651319233633389651.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P5737472487018726918

`A163672(n+1)+A144670(n+1)`
-/

namespace A155156.P5737472487018726918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) + A144670 (n + 1)

end

end A155156.P5737472487018726918

namespace A155156

/-- `A163672(n+1)+A144670(n+1)` -/
def P5737472487018726918.Spec : Prop :=
  ∀ n, P5737472487018726918.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P2877033363397710154

`A154684(n+1)+A154681(n+1)`
-/

namespace A155156.P2877033363397710154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + A154681 (n + 1)

end

end A155156.P2877033363397710154

namespace A155156

/-- `A154684(n+1)+A154681(n+1)` -/
def P2877033363397710154.Spec : Prop :=
  ∀ n, P2877033363397710154.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P11640860065405757064

`A155546(n+1)+A154631(n+1)`
-/

namespace A155156.P11640860065405757064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + A154631 (n + 1)

end

end A155156.P11640860065405757064

namespace A155156

/-- `A155546(n+1)+A154631(n+1)` -/
def P11640860065405757064.Spec : Prop :=
  ∀ n, P11640860065405757064.a n = A155156 (n + 1)

end A155156

/-! ## A155156.P102811500497752425

`A155705(n+1)+A154680(n+1)`
-/

namespace A155156.P102811500497752425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) + A154680 (n + 1)

end

end A155156.P102811500497752425

namespace A155156

/-- `A155705(n+1)+A154680(n+1)` -/
def P102811500497752425.Spec : Prop :=
  ∀ n, P102811500497752425.a n = A155156 (n + 1)

end A155156

/-!
# A155157: a(n) = 10*a(n-1) + 10*a(n-2), with a(0)=1, a(1)=9, a(2)=99.

The programs for A155157, the canonical program `A155157.P900161471531632130` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155157 has offset 0).

The definition of A155157 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+10*a(n-2)` (program `A155157.P900161471531632130`, by `A155157.P900161471531632130.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155157.P900161471531632130

`10*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=9, a(2)=99`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155157

/-- `10*a(n-1)+10*a(n-2)` -/
def P900161471531632130.Spec : Prop :=
  ∀ n, (P900161471531632130.a n : ℤ) = A155157 n

theorem P900161471531632130.correct : P900161471531632130.Spec := by
  intro n
  simp only [A155157]

end A155157

/-! ## A155157.P5823397572054089747

`10*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=9, a(2)=99`
-/

namespace A155157.P5823397572054089747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 99] fun n a =>
  10 * (a (n - 1) + a (n - 2))

end

end A155157.P5823397572054089747

namespace A155157

/-- `10*(a(n-1)+a(n-2))` -/
def P5823397572054089747.Spec : Prop :=
  ∀ n, (P5823397572054089747.a n : ℤ) = A155157 n

theorem P5823397572054089747.correct : P5823397572054089747.Spec := by
  intro n
  simp only [A155157, Nat.add_sub_cancel, A155157.P5823397572054089747.a, A155157.P900161471531632130.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155157

/-!
# A155158: Period 4: repeat [1, 5, 7, 3].

The programs for A155158, the canonical program `A155158.P12528383533584352408` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155158 has offset 0).

The definition of A155158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155158.P12528383533584352408

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155158

/-- `a(n-1)-a(n-2)+a(n-3)` -/
def P12528383533584352408.Spec : Prop :=
  ∀ n, P12528383533584352408.a n = A155158 n

theorem P12528383533584352408.correct : P12528383533584352408.Spec := by
  intro n
  simp only [A155158]

end A155158

/-!
# A155159: a(n) = 1 + 2*n*n!.

The programs for A155159, the canonical program `A155159.P11292373864759780123` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155159 has offset 0).

The definition of A155159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*n*n!` (program `A155159.P11292373864759780123`, by `A155159.P11292373864759780123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155159.P11292373864759780123

`1+2*n*n!`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155159

/-- `1+2*n*n!` -/
def P11292373864759780123.Spec : Prop :=
  ∀ n, (P11292373864759780123.a n : ℤ) = A155159 n

theorem P11292373864759780123.correct : P11292373864759780123.Spec := by
  intro n
  simp only [A155159]

end A155159

/-! ## A155159.P15917878620755059851

`2*A001563(n)+1`
-/

namespace A155159.P15917878620755059851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001563 n + 1

end

end A155159.P15917878620755059851

namespace A155159

/-- `2*A001563(n)+1` -/
def P15917878620755059851.Spec : Prop :=
  ∀ n, P15917878620755059851.a n = A155159 n

end A155159

/-! ## A155159.P1330323025780674882

`Δ[2*n!]+1`
-/

namespace A155159.P1330323025780674882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A155159.P1330323025780674882

namespace A155159

/-- `Δ[2*n!]+1` -/
def P1330323025780674882.Spec : Prop :=
  ∀ n, P1330323025780674882.a n = A155159 n

theorem P1330323025780674882.correct : P1330323025780674882.Spec := by
  intro n
  simp only [A155159, Nat.add_sub_cancel, A155159.P1330323025780674882.f1, A155159.P1330323025780674882.a, A155159.P11292373864759780123.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A155159

/-! ## A155159.P3657106112520441545

`or(1, Δ[2*n!])`
-/

namespace A155159.P3657106112520441545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A155159.P3657106112520441545

namespace A155159

/-- `or(1, Δ[2*n!])` -/
def P3657106112520441545.Spec : Prop :=
  ∀ n, P3657106112520441545.a n = A155159 n

end A155159

/-! ## A155159.P13102318610642699031

`xor(1, Δ[2*n!])`
-/

namespace A155159.P13102318610642699031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A155159.P13102318610642699031

namespace A155159

/-- `xor(1, Δ[2*n!])` -/
def P13102318610642699031.Spec : Prop :=
  ∀ n, P13102318610642699031.a n = A155159 n

end A155159

/-! ## A155159.P5880653680565497148

`or(1, 2*n*n!)`
-/

namespace A155159.P5880653680565497148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * (n * Nat.factorial n))

end

end A155159.P5880653680565497148

namespace A155159

/-- `or(1, 2*n*n!)` -/
def P5880653680565497148.Spec : Prop :=
  ∀ n, (P5880653680565497148.a n : ℤ) = A155159 n

end A155159

/-! ## A155159.P8097724439583454502

`xor(1, 2*n*n!)`
-/

namespace A155159.P8097724439583454502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * (n * Nat.factorial n))

end

end A155159.P8097724439583454502

namespace A155159

/-- `xor(1, 2*n*n!)` -/
def P8097724439583454502.Spec : Prop :=
  ∀ n, (P8097724439583454502.a n : ℤ) = A155159 n

end A155159

/-! ## A155159.P13041543502893966058

`1-Δ[-2*n!]`
-/

namespace A155159.P13041543502893966058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A155159.P13041543502893966058

namespace A155159

/-- `1-Δ[-2*n!]` -/
def P13041543502893966058.Spec : Prop :=
  ∀ n, P13041543502893966058.a n = A155159 n

theorem P13041543502893966058.correct : P13041543502893966058.Spec := by
  intro n
  simp only [A155159, Nat.add_sub_cancel, A155159.P13041543502893966058.f1, A155159.P13041543502893966058.a, A155159.P11292373864759780123.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A155159

/-! ## A155159.P7952694908374883653

`Δ[n!+n!+n]`
-/

namespace A155159.P7952694908374883653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + (Nat.factorial n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A155159.P7952694908374883653

namespace A155159

/-- `Δ[n!+n!+n]` -/
def P7952694908374883653.Spec : Prop :=
  ∀ n, P7952694908374883653.a n = A155159 n

theorem P7952694908374883653.correct : P7952694908374883653.Spec := by
  intro n
  simp only [A155159, Nat.add_sub_cancel, A155159.P7952694908374883653.f1, A155159.P7952694908374883653.a, A155159.P11292373864759780123.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A155159

/-! ## A155159.P6722593658635406084

`Δ[n*a(n-1)]+1` with `a(0)=2`
-/

namespace A155159.P6722593658635406084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A155159.P6722593658635406084

namespace A155159

/-- `Δ[n*a(n-1)]+1` -/
def P6722593658635406084.Spec : Prop :=
  ∀ n, P6722593658635406084.a n = A155159 n

end A155159

/-!
# A155160: a(n) = 2^n * (n + 3)!!.

The programs for A155160, there is no canonical definition to state claims against.
-/

/-! ## A155160.P5284698271454502922

`∏[4*(n+3)/a(n-1)]` with `a(0)=3`
-/

namespace A155160.P5284698271454502922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * ((n + 3 : ℚ) / f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A155160.P5284698271454502922

/-! ## A155160.P7106182818292114675

`2^n*A006882(n+3)`
-/

namespace A155160.P7106182818292114675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006882 (n + 3)

end

end A155160.P7106182818292114675

/-! ## A155160.P9070739327923589328

`2^n*A216466(n+3)`
-/

namespace A155160.P9070739327923589328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A216466 (n + 3)

end

end A155160.P9070739327923589328

/-! ## A155160.P8585123107452574865

`A006882(n+3)*A011782(n+1)`
-/

namespace A155160.P8585123107452574865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 3) * A011782 (n + 1)

end

end A155160.P8585123107452574865

/-! ## A155160.P16804550495130762103

`A005563(n+1)/A006882(n)*A000165(n)`
-/

namespace A155160.P16804550495130762103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 (n + 1) : ℚ) / (A006882 n : ℚ) * (A000165 n : ℚ)

end

end A155160.P16804550495130762103

/-!
# A155161: A Fibonacci convolution triangle: Riordan array (1, x/(1 - x - x^2)). Triangle T(n,k), 0 <= k <= n, read by rows.

The programs for A155161, there is no canonical definition to state claims against.
-/

/-! ## A155161.P15032989824291891027

`A000007(n)+A037027(n)-A055830(n)`
-/

namespace A155161.P15032989824291891027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A037027 n - A055830 n)

end

end A155161.P15032989824291891027

/-! ## A155161.P16850750627304017010

`A037027(n)-abs(A070750(n+1))*A055830(n)`
-/

namespace A155161.P16850750627304017010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n - |A070750 (n + 1)| * A055830 n

end

end A155161.P16850750627304017010

/-! ## A155161.P17279244402305510698

`A037027(n)-Δ[A002260(n+1)]*A055830(n)`
-/

namespace A155161.P17279244402305510698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n - (f1 (n + 1) - f1 n) * A055830 n

end

end A155161.P17279244402305510698

/-! ## A155161.P12256879423533911994

`A008683(A008574(n))+A037027(n)-A055830(n)`
-/

namespace A155161.P12256879423533911994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (A037027 n - A055830 n)

end

end A155161.P12256879423533911994

/-! ## A155161.P15625432527651246293

`A037027(n)-A055641(A127648(n))*A055830(n)`
-/

namespace A155161.P15625432527651246293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n - A055641 (A127648 n).toNat * A055830 n

end

end A155161.P15625432527651246293

/-! ## A155161.P14592978769021725185

`A303709(A025478(n+1))+A037027(n)-A055830(n)`
-/

namespace A155161.P14592978769021725185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A025478 (n + 1)).toNat + (A037027 n - A055830 n)

end

end A155161.P14592978769021725185

/-! ## A155161.P3428727103947022032

`(A037027(n)-A055830(n))^(A004526(A062545(n))-n)`
-/

namespace A155161.P3428727103947022032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037027 n - A055830 n : ℚ) ^ (A004526 (A062545 n).toNat - (n : ℤ) : ℤ)

end

end A155161.P3428727103947022032

/-! ## A155161.P6823491131778187044

`A037027(n)-(A055830(n)+A008683(A124434(n+1)))`
-/

namespace A155161.P6823491131778187044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n - (A055830 n + A008683 (A124434 (n + 1)).toNat)

end

end A155161.P6823491131778187044

/-! ## A155161.P15357396199556459171

`A037027(n)-A055830(n)%A000079(n)`
-/

namespace A155161.P15357396199556459171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n - Int.tmod (A055830 n) (A000079 n)

end

end A155161.P15357396199556459171

/-! ## A155161.P3047698983671163730

`A303709(n²+1)+A037027(n)-A055830(n)`
-/

namespace A155161.P3047698983671163730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (n ^ 2 + 1) + (A037027 n - A055830 n)

end

end A155161.P3047698983671163730

/-! ## A155161.P497788930646435425

`A037027(n)+A188585(A167487(n))-A055830(n)`
-/

namespace A155161.P497788930646435425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + (A188585 (A167487 n).toNat - A055830 n)

end

end A155161.P497788930646435425

/-!
# A155162: Triangle T(n,k) = binomial(n, k)*(k! + (n-k)!), read by rows.

The programs for A155162, the canonical program `A155162.P4392720739016387663` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155162 has offset 0).

The definition of A155162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155162.P4392720739016387663

`A094587(n)+A008279(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A155162

/-- `A094587(n)+A008279(n)` -/
def P4392720739016387663.Spec : Prop :=
  ∀ n, P4392720739016387663.a n = A155162 n

theorem P4392720739016387663.correct : P4392720739016387663.Spec := by
  intro n
  simp only [A155162]

end A155162

/-! ## A155162.P15333543702591240595

`A008279(n)+A008279(A061579(n))`
-/

namespace A155162.P15333543702591240595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n + A008279 (A061579 n).toNat

end

end A155162.P15333543702591240595

namespace A155162

/-- `A008279(n)+A008279(A061579(n))` -/
def P15333543702591240595.Spec : Prop :=
  ∀ n, P15333543702591240595.a n = A155162 n

end A155162

/-! ## A155162.P7788337892410289166

`A094587(A061579(n))+A094587(n)`
-/

namespace A155162.P7788337892410289166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A061579 n).toNat + A094587 n

end

end A155162.P7788337892410289166

namespace A155162

/-- `A094587(A061579(n))+A094587(n)` -/
def P7788337892410289166.Spec : Prop :=
  ∀ n, P7788337892410289166.a n = A155162 n

end A155162

/-! ## A155162.P11962575576518619150

`A094587(A038722(n+1)-1)+A094587(n)`
-/

namespace A155162.P11962575576518619150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A038722 (n + 1) - 1).toNat + A094587 n

end

end A155162.P11962575576518619150

namespace A155162

/-- `A094587(A038722(n+1)-1)+A094587(n)` -/
def P11962575576518619150.Spec : Prop :=
  ∀ n, P11962575576518619150.a n = A155162 n

end A155162

/-! ## A155162.P1760349932992373645

`A008279(A038722(n+2))+A008279(n)`
-/

namespace A155162.P1760349932992373645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A038722 (n + 2)).toNat + A008279 n

end

end A155162.P1760349932992373645

namespace A155162

/-- `A008279(A038722(n+2))+A008279(n)` -/
def P1760349932992373645.Spec : Prop :=
  ∀ n, P1760349932992373645.a n = A155162 n

end A155162

/-! ## A155162.P9196548314085815780

`A008279(n)+A196347(n)/A008279(n)`
-/

namespace A155162.P9196548314085815780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) + (A196347 n : ℚ) / (A008279 n : ℚ)

end

end A155162.P9196548314085815780

namespace A155162

/-- `A008279(n)+A196347(n)/A008279(n)` -/
def P9196548314085815780.Spec : Prop :=
  ∀ n, P9196548314085815780.a n = (A155162 n : ℚ)

end A155162

/-! ## A155162.P6957334932434622270

`A094587(n)+A196347(n)/A094587(n)`
-/

namespace A155162.P6957334932434622270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 n : ℚ) + (A196347 n : ℚ) / (A094587 n : ℚ)

end

end A155162.P6957334932434622270

namespace A155162

/-- `A094587(n)+A196347(n)/A094587(n)` -/
def P6957334932434622270.Spec : Prop :=
  ∀ n, P6957334932434622270.a n = (A155162 n : ℚ)

end A155162

/-!
# A155163: Triangle T(n,k): the coefficient of [x^k] of the series -(x-1)^(2*n+1) *Sum_{j>=0} (j+1)^n *binomial(j,n) * x^(j-n); columns 0<=k

The programs for A155163, there is no canonical definition to state claims against.
-/

/-! ## A155163.P17450145614967304205

`A003057(n+2)*A156653(n+1)`
-/

namespace A155163.P17450145614967304205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A156653 (n + 1)

end

end A155163.P17450145614967304205

/-! ## A155163.P11785830623564731547

`(A003056(n)+2)*A156653(n+1)`
-/

namespace A155163.P11785830623564731547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 2) * A156653 (n + 1)

end

end A155163.P11785830623564731547

/-! ## A155163.P16105789417688920791

`floor(log2(A084468(n+1)))*A156653(n+1)`
-/

namespace A155163.P16105789417688920791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A084468 (n + 1)).toNat : ℤ) * A156653 (n + 1)

end

end A155163.P16105789417688920791

/-! ## A155163.P14309782480865913806

`A002024(A014132(n+1))*A156653(n+1)`
-/

namespace A155163.P14309782480865913806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (n + 1)).toNat * A156653 (n + 1)

end

end A155163.P14309782480865913806

/-! ## A155163.P722912639045932043

`A135523(A140513(n))*A156653(n+1)`
-/

namespace A155163.P722912639045932043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A140513 n).toNat * A156653 (n + 1)

end

end A155163.P722912639045932043

/-!
# A155167: (L)-sieve transform of A004767 = {3,7,11,15,...,4n-1,...}.

The programs for A155167, the canonical program `A155167.P10479172717719966263` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155167 has offset 1).

The definition of A155167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155167.P10479172717719966263

`floor((4*a(n-1)+3)/3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155167

/-- `floor((4*a(n-1)+3)/3)` -/
def P10479172717719966263.Spec : Prop :=
  ∀ n, P10479172717719966263.a n = A155167 (n + 1)

theorem P10479172717719966263.correct : P10479172717719966263.Spec := by
  intro n
  simp only [A155167, Nat.add_sub_cancel]

end A155167

/-! ## A155167.P18030154267350411642

`ceil((4*a(n-1)+1)/3)` with `a(0)=1`
-/

namespace A155167.P18030154267350411642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(4 * a (n - 1) + 1 : ℚ) / 3⌉

end

end A155167.P18030154267350411642

namespace A155167

/-- `ceil((4*a(n-1)+1)/3)` -/
def P18030154267350411642.Spec : Prop :=
  ∀ n, P18030154267350411642.a n = A155167 (n + 1)

end A155167

/-! ## A155167.P14985894984376708194

`round((4*a(n-1)+2)/3)` with `a(0)=1`
-/

namespace A155167.P14985894984376708194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((4 * a (n - 1) + 2 : ℚ) / 3)

end

end A155167.P14985894984376708194

namespace A155167

/-- `round((4*a(n-1)+2)/3)` -/
def P14985894984376708194.Spec : Prop :=
  ∀ n, P14985894984376708194.a n = A155167 (n + 1)

end A155167

/-! ## A155167.P5666141479348947300

`ceil(or(1, 4*a(n-1))/3)` with `a(0)=1`
-/

namespace A155167.P5666141479348947300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Int.lor 1 (4 * a (n - 1)) : ℚ) / 3⌉

end

end A155167.P5666141479348947300

namespace A155167

/-- `ceil(or(1, 4*a(n-1))/3)` -/
def P5666141479348947300.Spec : Prop :=
  ∀ n, P5666141479348947300.a n = A155167 (n + 1)

end A155167

/-! ## A155167.P13320634481116923257

`ceil(xor(1, 4*a(n-1))/3)` with `a(0)=1`
-/

namespace A155167.P13320634481116923257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Int.xor 1 (4 * a (n - 1)) : ℚ) / 3⌉

end

end A155167.P13320634481116923257

namespace A155167

/-- `ceil(xor(1, 4*a(n-1))/3)` -/
def P13320634481116923257.Spec : Prop :=
  ∀ n, P13320634481116923257.a n = A155167 (n + 1)

end A155167

/-!
# A155169: Triangle sequence:t(n,m)=(2 n - Binomial[n, m] + m! + (-m + n)!).

The programs for A155169, there is no canonical definition to state claims against.
-/

/-! ## A155169.P828144350076516923

`A239665(n+1)+A050870(A010926(n))`
-/

namespace A155169.P828144350076516923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239665 (n + 1) + A050870 (A010926 n).toNat

end

end A155169.P828144350076516923

/-! ## A155169.P4510691203725738110

`A239665(n+1)+A010060(A184291(n+1))`
-/

namespace A155169.P4510691203725738110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239665 (n + 1) + A010060 (A184291 (n + 1)).toNat

end

end A155169.P4510691203725738110

/-!
# A155170: Triangle T(n, k) = k! - n! + (n-k)! read by rows.

The programs for A155170, there is no canonical definition to state claims against.
-/

/-! ## A155170.P13727003121504241456

`2-A156045(n)`
-/

namespace A155170.P13727003121504241456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A156045 n

end

end A155170.P13727003121504241456

/-! ## A155170.P10000799740863726100

`A028326(n)-A155451(n)`
-/

namespace A155170.P10000799740863726100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A155451 n

end

end A155170.P10000799740863726100

/-! ## A155170.P17902259209895167202

`2*A007318(n)-A155451(n)`
-/

namespace A155170.P17902259209895167202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A155451 n

end

end A155170.P17902259209895167202

/-! ## A155170.P6668612932899534838

`2*A176149(n)-A176151(n)`
-/

namespace A155170.P6668612932899534838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176149 n - A176151 n

end

end A155170.P6668612932899534838

/-! ## A155170.P3198754295544539999

`2*A001263(n+1)-A176152(n)`
-/

namespace A155170.P3198754295544539999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001263 (n + 1) - A176152 n

end

end A155170.P3198754295544539999

/-! ## A155170.P15276105556145608664

`A004277(A176149(n))-A176151(n)`
-/

namespace A155170.P15276105556145608664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A176149 n).toNat - A176151 n

end

end A155170.P15276105556145608664

/-! ## A155170.P17158230006835338267

`A008683(A272815(n+1))*A156045(n)+2`
-/

namespace A155170.P17158230006835338267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A272815 (n + 1)).toNat * A156045 n + 2

end

end A155170.P17158230006835338267

/-! ## A155170.P4646577776607093321

`A008683(A330833(n+1))*A156045(n)+2`
-/

namespace A155170.P4646577776607093321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A330833 (n + 1)).toNat * A156045 n + 2

end

end A155170.P4646577776607093321

/-! ## A155170.P971249711432722952

`A004277(A001263(n+1))-A176152(n)`
-/

namespace A155170.P971249711432722952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001263 (n + 1)).toNat - A176152 n

end

end A155170.P971249711432722952

/-! ## A155170.P2142376573724556882

`A156044(n)+2-A156046(n)`
-/

namespace A155170.P2142376573724556882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156044 n + (2 - A156046 n)

end

end A155170.P2142376573724556882

/-!
# A155171: Numbers p such that if q = p+1 then (a = q^2-p^2, b = 2*p*q, c = q^2 + p^2) is a primitive Pythagorean triple with s-1 and s+1 primes, where s = a+b+c.

The programs for A155171, there is no canonical definition to state claims against.
-/

/-! ## A155171.P1291374270254020511

`eq[1, A082466(2*n+1)]`
-/

namespace A155171.P1291374270254020511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155171.P1291374270254020511

/-! ## A155171.P17418285092824065104

`record[A057979(A088485(n+1))]`
-/

namespace A155171.P17418285092824065104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A088485 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155171.P17418285092824065104

/-! ## A155171.P602336863508131351

`record[A032742(A088485(n+1)-1)]`
-/

namespace A155171.P602336863508131351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A088485 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155171.P602336863508131351

/-! ## A155171.P17816814298283431333

`record[A078898(A088485(n+1)-1)]`
-/

namespace A155171.P17816814298283431333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A088485 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155171.P17816814298283431333

/-! ## A155171.P2797656441077534945

`record[A057979(A131530(n+1)-1)]`
-/

namespace A155171.P2797656441077534945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A131530 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155171.P2797656441077534945

/-! ## A155171.P14873681636870155485

`record[A032742(A131530(n+1)-2)]`
-/

namespace A155171.P14873681636870155485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A131530 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155171.P14873681636870155485

/-! ## A155171.P16216734870315176075

`record[A078898(A131530(n+1)-2)]`
-/

namespace A155171.P16216734870315176075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A131530 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155171.P16216734870315176075

/-! ## A155171.P14122483354019646788

`record[A260739(A131530(n+1)-2)]`
-/

namespace A155171.P14122483354019646788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A131530 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155171.P14122483354019646788

/-! ## A155171.P12432517545038124878

`eq[2, A289357(2*n+1)+A289356(2*n+1)]`
-/

namespace A155171.P12432517545038124878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289357 (2 * n + 1) + A289356 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155171.P12432517545038124878

/-! ## A155171.P428190324754070841

`record[A088486(n+1)%A008619(A088485(n+1))]`
-/

namespace A155171.P428190324754070841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088486 (n + 1)) (A008619 (A088485 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155171.P428190324754070841

/-!
# A155172: Decimal expansion of log_2 (20).

The programs for A155172, there is no canonical definition to state claims against.
-/

/-! ## A155172.P8521881679310386948

`A020862(n)+A000007(n)`
-/

namespace A155172.P8521881679310386948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020862 (n + 1) + A000007 n

end

end A155172.P8521881679310386948

/-! ## A155172.P512935301604212667

`(A000007(n)+1)*A020858(n)`
-/

namespace A155172.P512935301604212667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A020858 (n + 1)

end

end A155172.P512935301604212667

/-! ## A155172.P15267825783173890138

`2*A020862(n)-A020858(n)`
-/

namespace A155172.P15267825783173890138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020862 (n + 1) - A020858 (n + 1)

end

end A155172.P15267825783173890138

/-! ## A155172.P909149925638395555

`A020858(C(2, n+2)+n)+A000007(n)`
-/

namespace A155172.P909149925638395555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020858 (Nat.choose 2 (n + 2) + n + 1) + A000007 n

end

end A155172.P909149925638395555

/-! ## A155172.P11370441724175095394

`A020862(n)+a(n-1)-A028899(a(n-1))` with `a(0)=4`
-/

namespace A155172.P11370441724175095394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A020862 (n + 1) + a (n - 1) - A028899 (a (n - 1)).toNat

end

end A155172.P11370441724175095394

/-! ## A155172.P13976812840441514532

`A020862(n-(a(n-1)-A028899(a(n-1))))` with `a(0)=4`
-/

namespace A155172.P13976812840441514532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A020862 (((n : ℤ) - (a (n - 1) - A028899 (a (n - 1)).toNat)).toNat + 1)

end

end A155172.P13976812840441514532

/-! ## A155172.P15355666805656909297

`A020859(n)+A020862(n)-A020857(n)`
-/

namespace A155172.P15355666805656909297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) + (A020862 (n + 1) - A020857 (n + 1))

end

end A155172.P15355666805656909297

/-! ## A155172.P4266072827000447327

`A020862(n)+A154905(n)-A020861(n)`
-/

namespace A155172.P4266072827000447327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020862 (n + 1) + (A154905 (n + 1) - A020861 (n + 1))

end

end A155172.P4266072827000447327

/-! ## A155172.P16268652109905334192

`A020858(n)+A155921(n)-A020859(n)`
-/

namespace A155172.P16268652109905334192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020858 (n + 1) + (A155921 (n + 1) - A020859 (n + 1))

end

end A155172.P16268652109905334192

/-! ## A155172.P2557284383157776257

`A028232(n+1)+A020862(n)-A028508(n)`
-/

namespace A155172.P2557284383157776257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028232 (n + 1) + (A020862 (n + 1) - A028508 n)

end

end A155172.P2557284383157776257

/-!
# A155173: Short leg A of primitive Pythagorean triangles such that perimeter s is average of twin prime pairs, q=p+1, A=q^2-p^2, C=q^2+p^2, B=2*p*q, s=A+B+C; s - /+ 1 are primes.

The programs for A155173, there is no canonical definition to state claims against.
-/

/-! ## A155173.P2740880271649688350

`2*A155171(n+1)+1`
-/

namespace A155173.P2740880271649688350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155171 (n + 1) + 1

end

end A155173.P2740880271649688350

/-! ## A155173.P16917416227874386528

`∩[2*n+1, A088485(n+1)]`
-/

namespace A155173.P16917416227874386528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155173.P16917416227874386528

/-! ## A155173.P4895291149855651820

`∩[2*n+1, floor(sqrt(A088486(n+1)))]`
-/

namespace A155173.P4895291149855651820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A088486 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155173.P4895291149855651820

/-! ## A155173.P487465355742204737

`A005408(A155171(n+1))`
-/

namespace A155173.P487465355742204737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A155171 (n + 1)).toNat

end

end A155173.P487465355742204737

/-! ## A155173.P15325635844892012315

`record[A000265(A088485(n+2))]`
-/

namespace A155173.P15325635844892012315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A088485 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155173.P15325635844892012315

/-! ## A155173.P10275930825447373143

`A004273(A155171(n+1)+1)`
-/

namespace A155173.P10275930825447373143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A155171 (n + 1) + 1).toNat

end

end A155173.P10275930825447373143

/-! ## A155173.P10221648697852660809

`A004274(A155171(n+1)+2)`
-/

namespace A155173.P10221648697852660809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A155171 (n + 1) + 2).toNat

end

end A155173.P10221648697852660809

/-! ## A155173.P13681620989972294163

`A004280(A155171(n+1)+2)`
-/

namespace A155173.P13681620989972294163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A155171 (n + 1) + 2).toNat

end

end A155173.P13681620989972294163

/-! ## A155173.P12175533866223249948

`A004442(2*A155171(n+1))`
-/

namespace A155173.P12175533866223249948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A155171 (n + 1)).toNat

end

end A155173.P12175533866223249948

/-!
# A155174: Long leg B of primitive Pythagorean triangles such that perimeters are Averages of twin prime pairs, q=p+1, a=q^2-p^2, c=q^2+p^2, b=2*p*q, s=a+b+c, s-+1 are primes.

The programs for A155174, there is no canonical definition to state claims against.
-/

/-! ## A155174.P4939325555312142144

`A155175(n+1)-1`
-/

namespace A155174.P4939325555312142144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155175 (n + 1) - 1

end

end A155174.P4939325555312142144

/-! ## A155174.P16848682371247129313

`floor(A155173(n+1)²/2)`
-/

namespace A155174.P16848682371247129313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155173 (n + 1) ^ 2 : ℚ) / 2⌋

end

end A155174.P16848682371247129313

/-! ## A155174.P2207585224671257738

`floor((2*A155171(n+1)+1)²/2)`
-/

namespace A155174.P2207585224671257738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * A155171 (n + 1) + 1) ^ 2 : ℚ) / 2⌋

end

end A155174.P2207585224671257738

/-! ## A155174.P621561127475981139

`A007590(A155173(n+1))`
-/

namespace A155174.P621561127475981139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A155173 (n + 1)).toNat

end

end A155174.P621561127475981139

/-! ## A155174.P15624038706870892711

`A046092(A155171(n+1))`
-/

namespace A155174.P15624038706870892711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (A155171 (n + 1)).toNat

end

end A155174.P15624038706870892711

/-!
# A155175: Hypotenuse C of primitive Pythagorean triangles such that perimeters are Averages of twin prime pairs, q=p+1, a=q^2-p^2, c=q^2+p^2, b=2*p*q, s=a+b+c, s-+1 are primes.

The programs for A155175, there is no canonical definition to state claims against.
-/

/-! ## A155175.P7313526417027981914

`A155174(n+1)+1`
-/

namespace A155175.P7313526417027981914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155174 (n + 1) + 1

end

end A155175.P7313526417027981914

/-! ## A155175.P9873910928073379422

`ceil(A155173(n+1)²/2)`
-/

namespace A155175.P9873910928073379422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155173 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A155175.P9873910928073379422

/-! ## A155175.P1774094409471716013

`xor(1, A155174(n-log2(1/2)))`
-/

namespace A155175.P1774094409471716013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155174 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A155175.P1774094409471716013

/-! ## A155175.P10162370451805382765

`ceil((2*A155171(n+1)+1)²/2)`
-/

namespace A155175.P10162370451805382765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * A155171 (n + 1) + 1) ^ 2 : ℚ) / 2⌉

end

end A155175.P10162370451805382765

/-! ## A155175.P2941664909062312197

`A000982(A155173(n+1))`
-/

namespace A155175.P2941664909062312197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A155173 (n + 1)).toNat

end

end A155175.P2941664909062312197

/-!
# A155176: Perimeter s/6 (divided by 6) of primitive Pythagorean triangles such that perimeters are Averages of twin prime pairs, q=p+1, a=q^2-p^2, c=q^2+p^2, b=2*p*q, s=a+b+c, s-+1 are primes.

The programs for A155176, there is no canonical definition to state claims against.
-/

/-! ## A155176.P7927183986400593424

`A008822(A155171(n+1))`
-/

namespace A155176.P7927183986400593424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 (A155171 (n + 1)).toNat

end

end A155176.P7927183986400593424

/-! ## A155176.P4849829392716369761

`A001840(A155173(n+1)-1)`
-/

namespace A155176.P4849829392716369761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A155173 (n + 1) - 1).toNat

end

end A155176.P4849829392716369761

/-! ## A155176.P566757205327163627

`A001840(2*A155171(n+1))`
-/

namespace A155176.P566757205327163627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (2 * A155171 (n + 1)).toNat

end

end A155176.P566757205327163627

/-! ## A155176.P15884600544718587120

`A001840(xor(1, A155173(n+1)))`
-/

namespace A155176.P15884600544718587120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (Int.xor 1 (A155173 (n + 1))).toNat

end

end A155176.P15884600544718587120

/-!
# A155177: Area ar/6 (divided by 6) of primitive Pythagorean triangles such that perimeters are Averages of twin prime pairs, q=p+1, a=q^2-p^2, c=q^2+p^2, b=2*p*q, ar=a*b/2; s=a+b+c, s-+1 are primes.

The programs for A155177, there is no canonical definition to state claims against.
-/

/-! ## A155177.P5806082328976057144

`A000330(A155171(n+1))`
-/

namespace A155177.P5806082328976057144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A155171 (n + 1)).toNat

end

end A155177.P5806082328976057144

/-! ## A155177.P5814245456843451294

`A060422(A155173(n+1))`
-/

namespace A155177.P5814245456843451294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060422 (A155173 (n + 1)).toNat

end

end A155177.P5814245456843451294

/-! ## A155177.P16114305680829518912

`A006918(A155173(n+1)-2)`
-/

namespace A155177.P16114305680829518912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A155173 (n + 1) - 2).toNat

end

end A155177.P16114305680829518912

/-! ## A155177.P351627988489303982

`A008610(A155173(n+1)-2)`
-/

namespace A155177.P351627988489303982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (A155173 (n + 1) - 2).toNat

end

end A155177.P351627988489303982

/-! ## A155177.P4018910680148838963

`A000330(floor(A155173(n+1)/2))`
-/

namespace A155177.P4018910680148838963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 ⌊(A155173 (n + 1) : ℚ) / 2⌋.toNat

end

end A155177.P4018910680148838963

/-!
# A155178: Numbers p of primitive Pythagorean triangles such that perimeters and products of 3 sides are Averages of twin prime pairs, q=p+1, a=q^2-p^2, c=q^2+p^2, b=2*p*q, ar=a*b/2; s=a+b+c, s-+1 are primes, pr=a*b*c, pr-+1 are primes.

The programs for A155178, there is no canonical definition to state claims against.
-/

/-! ## A155178.P1092368802323959605

`floor(A155180(n+1)/2)`
-/

namespace A155178.P1092368802323959605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155180 (n + 1) : ℚ) / 2⌋

end

end A155178.P1092368802323959605

/-! ## A155178.P13290862635000087790

`(A155180(A000027(n+1))-1)/2`
-/

namespace A155178.P13290862635000087790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155180 (A000027 (n + 1)).toNat - 1 : ℚ) / 2

end

end A155178.P13290862635000087790

/-! ## A155178.P1827585207039473999

`(A155180(n+1)-A057427(n+1))/2`
-/

namespace A155178.P1827585207039473999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155180 (n + 1) - A057427 (n + 1) : ℚ) / 2

end

end A155178.P1827585207039473999

/-!
# A155179: a(n) = 4*a(n-1)+a(n-2), n>2; a(0)=1, a(1)=3, a(2)=12.

The programs for A155179, the canonical program `A155179.P15921481247004515599` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155179 has offset 0).

The definition of A155179 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+a(n-2)` (program `A155179.P15921481247004515599`, by `A155179.P15921481247004515599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155179.P15921481247004515599

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=12`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155179

/-- `4*a(n-1)+a(n-2)` -/
def P15921481247004515599.Spec : Prop :=
  ∀ n, (P15921481247004515599.a n : ℤ) = A155179 n

theorem P15921481247004515599.correct : P15921481247004515599.Spec := by
  intro n
  simp only [A155179]

end A155179

/-! ## A155179.P13828094560480151244

`Δ[floor(ϕ^3*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A155179.P13828094560480151244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 3 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155179.P13828094560480151244

namespace A155179

/-- `Δ[floor(ϕ^3*a(n-1))]` -/
def P13828094560480151244.Spec : Prop :=
  ∀ n, P13828094560480151244.a n = A155179 n

end A155179

/-! ## A155179.P8613429153529442805

`ceil(ϕ*floor(ϕ²*a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A155179.P8613429153529442805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌈Real.goldenRatio * (⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋ : ℝ)⌉

end

end A155179.P8613429153529442805

namespace A155179

/-- `ceil(ϕ*floor(ϕ²*a(n-1)))` -/
def P8613429153529442805.Spec : Prop :=
  ∀ n, P8613429153529442805.a n = A155179 n

end A155179

/-! ## A155179.P1388325161682595721

`ceil(ϕ^3*a(n-1)-2/n)` with `a(0)=1`
-/

namespace A155179.P1388325161682595721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.goldenRatio ^ 3 * (a (n - 1) : ℝ) - (2 / (n : ℚ) : ℝ)⌉

end

end A155179.P1388325161682595721

namespace A155179

/-- `ceil(ϕ^3*a(n-1)-2/n)` -/
def P1388325161682595721.Spec : Prop :=
  ∀ n, P1388325161682595721.a n = A155179 n

end A155179

/-! ## A155179.P5316119522803726813

`ceil(ϕ*floor(a(n-1)/(2-ϕ)))` with `a(0)=1, a(1)=3`
-/

namespace A155179.P5316119522803726813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌈Real.goldenRatio * (⌊(a (n - 1) : ℝ) / (2 - Real.goldenRatio)⌋ : ℝ)⌉

end

end A155179.P5316119522803726813

namespace A155179

/-- `ceil(ϕ*floor(a(n-1)/(2-ϕ)))` -/
def P5316119522803726813.Spec : Prop :=
  ∀ n, P5316119522803726813.a n = A155179 n

end A155179

/-! ## A155179.P11781734577111545840

`∑[record[gcd(3, n+1)*A000045(n+2)]]`
-/

namespace A155179.P11781734577111545840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (n + 1) : ℤ) * A000045 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155179.P11781734577111545840

namespace A155179

/-- `∑[record[gcd(3, n+1)*A000045(n+2)]]` -/
def P11781734577111545840.Spec : Prop :=
  ∀ n, P11781734577111545840.a n = A155179 n

end A155179

/-! ## A155179.P1792645606904154661

`A286311(A008486(n))`
-/

namespace A155179.P1792645606904154661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (A008486 n).toNat

end

end A155179.P1792645606904154661

namespace A155179

/-- `A286311(A008486(n))` -/
def P1792645606904154661.Spec : Prop :=
  ∀ n, P1792645606904154661.a n = A155179 n

end A155179

/-! ## A155179.P12091686241881165184

`A364754(n)+A232970(n)`
-/

namespace A155179.P12091686241881165184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364754 n + A232970 n

end

end A155179.P12091686241881165184

namespace A155179

/-- `A364754(n)+A232970(n)` -/
def P12091686241881165184.Spec : Prop :=
  ∀ n, P12091686241881165184.a n = A155179 n

end A155179

/-! ## A155179.P3952383896390763104

`or(A010056(A151712(n)), A286350(3*n))`
-/

namespace A155179.P3952383896390763104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010056 (A151712 n).toNat) (A286350 (3 * n))

end

end A155179.P3952383896390763104

namespace A155179

/-- `or(A010056(A151712(n)), A286350(3*n))` -/
def P3952383896390763104.Spec : Prop :=
  ∀ n, P3952383896390763104.a n = A155179 n

end A155179

/-! ## A155179.P13017486722690655866

`or(A010056(A005823(n+1)), A286350(3*n))`
-/

namespace A155179.P13017486722690655866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010056 (A005823 (n + 1)).toNat) (A286350 (3 * n))

end

end A155179.P13017486722690655866

namespace A155179

/-- `or(A010056(A005823(n+1)), A286350(3*n))` -/
def P13017486722690655866.Spec : Prop :=
  ∀ n, P13017486722690655866.a n = A155179 n

end A155179

/-! ## A155179.P876949064558109120

`A167808(3*(n+1))-A212804(A028310(3*n))`
-/

namespace A155179.P876949064558109120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (3 * (n + 1)) - A212804 (A028310 (3 * n)).toNat

end

end A155179.P876949064558109120

namespace A155179

/-- `A167808(3*(n+1))-A212804(A028310(3*n))` -/
def P876949064558109120.Spec : Prop :=
  ∀ n, P876949064558109120.a n = A155179 n

end A155179

/-! ## A155179.P8931833709880393220

`or(A003849(2/A014963(2*(n+1))), A286350(3*n))`
-/

namespace A155179.P8931833709880393220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (SequenceMachineLib.roundAway (2 / (A014963 (2 * (n + 1)) : ℚ))).toNat) (A286350 (3 * n))

end

end A155179.P8931833709880393220

namespace A155179

/-- `or(A003849(2/A014963(2*(n+1))), A286350(3*n))` -/
def P8931833709880393220.Spec : Prop :=
  ∀ n, P8931833709880393220.a n = A155179 n

end A155179

/-! ## A155179.P9092820446622394180

`or(A159689(2/A014963(2*(n+1))), A286350(3*n))`
-/

namespace A155179.P9092820446622394180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A159689 (SequenceMachineLib.roundAway (2 / (A014963 (2 * (n + 1)) : ℚ))).toNat) (A286350 (3 * n))

end

end A155179.P9092820446622394180

namespace A155179

/-- `or(A159689(2/A014963(2*(n+1))), A286350(3*n))` -/
def P9092820446622394180.Spec : Prop :=
  ∀ n, P9092820446622394180.a n = A155179 n

end A155179

/-! ## A155179.P11859372131314135963

`or(A286350(3*n), A316343(2/A014963(2*(n+1))))`
-/

namespace A155179.P11859372131314135963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286350 (3 * n)) (A316343 (SequenceMachineLib.roundAway (2 / (A014963 (2 * (n + 1)) : ℚ))).toNat)

end

end A155179.P11859372131314135963

namespace A155179

/-- `or(A286350(3*n), A316343(2/A014963(2*(n+1))))` -/
def P11859372131314135963.Spec : Prop :=
  ∀ n, P11859372131314135963.a n = A155179 n

end A155179

/-! ## A155179.P12953052684592641879

`A045925(A004277(n)+n)/A004277(n)`
-/

namespace A155179.P12953052684592641879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045925 (A004277 n + (n : ℤ)).toNat : ℚ) / (A004277 n : ℚ)

end

end A155179.P12953052684592641879

namespace A155179

/-- `A045925(A004277(n)+n)/A004277(n)` -/
def P12953052684592641879.Spec : Prop :=
  ∀ n, P12953052684592641879.a n = (A155179 n : ℚ)

end A155179

/-!
# A155180: Short leg A of primitive Pythagorean triangles such that perimeters and products of 3 sides are Averages of twin prime pairs, q=p+1, a=q^2-p^2, c=q^2+p^2, b=2*p*q, ar=a*b/2; s=a+b+c, s-+1 are primes, pr=a*b*c, pr-+1 are primes.

The programs for A155180, there is no canonical definition to state claims against.
-/

/-! ## A155180.P5678529587458673161

`2*A155178(n+1)+1`
-/

namespace A155180.P5678529587458673161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155178 (n + 1) + 1

end

end A155180.P5678529587458673161

/-! ## A155180.P11859652161871299674

`A155178(n+1)+A155178(n+1)+A025442(n)!`
-/

namespace A155180.P11859652161871299674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155178 (n + 1) + (A155178 (n + 1) + (Nat.factorial (A025442 n).toNat : ℤ))

end

end A155180.P11859652161871299674

/-! ## A155180.P12820463682419258367

`A155178(n+1)+A272901(n+1)+A155178(n+1)`
-/

namespace A155180.P12820463682419258367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155178 (n + 1) + (A272901 (n + 1) + A155178 (n + 1))

end

end A155180.P12820463682419258367

/-! ## A155180.P14910179577538401226

`A000041(C(2, n+2))+A155178(n+1)+A155178(n+1)`
-/

namespace A155180.P14910179577538401226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) + (A155178 (n + 1) + A155178 (n + 1))

end

end A155180.P14910179577538401226

/-! ## A155180.P719667424410492882

`A155178(n+1)+A155178(n+1)+A010054(A000217(n))`
-/

namespace A155180.P719667424410492882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155178 (n + 1) + (A155178 (n + 1) + A010054 (A000217 n).toNat)

end

end A155180.P719667424410492882

/-!
# A155181: a(n)=5*a(n-1)+a(n-2), n>2 ; a(0)=1, a(1)=4, a(2)=20 .

The programs for A155181, the canonical program `A155181.P8199568193168241114` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155181 has offset 0).

The definition of A155181 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+a(n-2)` (program `A155181.P8199568193168241114`, by `A155181.P8199568193168241114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155181.P8199568193168241114

`5*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4, a(2)=20`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155181

/-- `5*a(n-1)+a(n-2)` -/
def P8199568193168241114.Spec : Prop :=
  ∀ n, (P8199568193168241114.a n : ℤ) = A155181 n

theorem P8199568193168241114.correct : P8199568193168241114.Spec := by
  intro n
  simp only [A155181]

end A155181

/-! ## A155181.P3877910840832398092

`A000007(n)+A052918(n)-A015449(n)`
-/

namespace A155181.P3877910840832398092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A052918 n - A015449 n)

end

end A155181.P3877910840832398092

namespace A155181

/-- `A000007(n)+A052918(n)-A015449(n)` -/
def P3877910840832398092.Spec : Prop :=
  ∀ n, P3877910840832398092.a n = A155181 n

end A155181

/-! ## A155181.P12391659628412702390

`A052918(n)-A087130(n)%A100237(n)`
-/

namespace A155181.P12391659628412702390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052918 n - Int.tmod (A087130 n) (A100237 n)

end

end A155181.P12391659628412702390

namespace A155181

/-- `A052918(n)-A087130(n)%A100237(n)` -/
def P12391659628412702390.Spec : Prop :=
  ∀ n, P12391659628412702390.a n = A155181 n

end A155181

/-! ## A155181.P12900823296432693322

`A086299(A082372(n+1))+A052918(n)-A015449(n)`
-/

namespace A155181.P12900823296432693322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (A082372 (n + 1)).toNat + (A052918 n - A015449 n)

end

end A155181.P12900823296432693322

namespace A155181

/-- `A086299(A082372(n+1))+A052918(n)-A015449(n)` -/
def P12900823296432693322.Spec : Prop :=
  ∀ n, P12900823296432693322.a n = A155181 n

end A155181

/-! ## A155181.P11811416063276177806

`A351521(A180098(n+1))+A052918(n)-A015449(n)`
-/

namespace A155181.P11811416063276177806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351521 (A180098 (n + 1)).toNat + (A052918 n - A015449 n)

end

end A155181.P11811416063276177806

namespace A155181

/-- `A351521(A180098(n+1))+A052918(n)-A015449(n)` -/
def P11811416063276177806.Spec : Prop :=
  ∀ n, P11811416063276177806.a n = A155181 n

end A155181

/-! ## A155181.P16807543644238900406

`A351521((n+1)²)+A052918(n)-A015449(n)`
-/

namespace A155181.P16807543644238900406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351521 ((n + 1) ^ 2) + (A052918 n - A015449 n)

end

end A155181.P16807543644238900406

namespace A155181

/-- `A351521((n+1)²)+A052918(n)-A015449(n)` -/
def P16807543644238900406.Spec : Prop :=
  ∀ n, P16807543644238900406.a n = A155181 n

end A155181

/-!
# A155182: Divisors of 12!.

The programs for A155182, the canonical program `A155182.P16204467128585160948` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155182 has offset 1).

The definition of A155182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155182.P16204467128585160948

`record[gcd(n+1, A004454(gcd(n, n+1))!)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A155182

/-- `record[gcd(n+1, A004454(gcd(n, n+1))!)]` -/
def P16204467128585160948.Spec : Prop :=
  ∀ n, (P16204467128585160948.a n : ℤ) = A155182 (n + 1)

theorem P16204467128585160948.correct : P16204467128585160948.Spec := by
  intro n
  simp only [A155182, Nat.add_sub_cancel]

end A155182

/-! ## A155182.P15043825949346492305

`lt[A002034(n+1), 13]+1`
-/

namespace A155182.P15043825949346492305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A155182.P15043825949346492305

namespace A155182

/-- `lt[A002034(n+1), 13]+1` -/
def P15043825949346492305.Spec : Prop :=
  ∀ n, (P15043825949346492305.a n : ℤ) = A155182 (n + 1)

end A155182

/-! ## A155182.P17566670230483243624

`record[A346089(13*(n+1))]`
-/

namespace A155182.P17566670230483243624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346089 (13 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155182.P17566670230483243624

namespace A155182

/-- `record[A346089(13*(n+1))]` -/
def P17566670230483243624.Spec : Prop :=
  ∀ n, P17566670230483243624.a n = A155182 (n + 1)

end A155182

/-! ## A155182.P5769479040990442449

`record[A048842(n)/A002034(A048842(n))]`
-/

namespace A155182.P5769479040990442449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048842 n : ℚ) / (A002034 (A048842 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155182.P5769479040990442449

namespace A155182

/-- `record[A048842(n)/A002034(A048842(n))]` -/
def P5769479040990442449.Spec : Prop :=
  ∀ n, P5769479040990442449.a n = (A155182 (n + 1) : ℚ)

end A155182

/-! ## A155182.P3339959373081843108

`lt[A122416(A002620(2*n+1)+n+1), 25]+1`
-/

namespace A155182.P3339959373081843108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (A002620 (2 * n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A155182.P3339959373081843108

namespace A155182

/-- `lt[A122416(A002620(2*n+1)+n+1), 25]+1` -/
def P3339959373081843108.Spec : Prop :=
  ∀ n, (P3339959373081843108.a n : ℤ) = A155182 (n + 1)

end A155182

/-! ## A155182.P15907345185202622022

`∩[A033620(n+1), A359415(n+1)]`
-/

namespace A155182.P15907345185202622022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155182.P15907345185202622022

namespace A155182

/-- `∩[A033620(n+1), A359415(n+1)]` -/
def P15907345185202622022.Spec : Prop :=
  ∀ n, (P15907345185202622022.a n : ℤ) = A155182 (n + 1)

end A155182

/-! ## A155182.P5982883617299916834

`∩[A033637(n+1), A359415(n+1)]`
-/

namespace A155182.P5982883617299916834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155182.P5982883617299916834

namespace A155182

/-- `∩[A033637(n+1), A359415(n+1)]` -/
def P5982883617299916834.Spec : Prop :=
  ∀ n, (P5982883617299916834.a n : ℤ) = A155182 (n + 1)

end A155182

/-! ## A155182.P7906151810113970230

`∩[A051038(n+1), A359415(n+1)]`
-/

namespace A155182.P7906151810113970230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155182.P7906151810113970230

namespace A155182

/-- `∩[A051038(n+1), A359415(n+1)]` -/
def P7906151810113970230.Spec : Prop :=
  ∀ n, (P7906151810113970230.a n : ℤ) = A155182 (n + 1)

end A155182

/-! ## A155182.P2586713967833475636

`∩[A084034(n+1), A359415(n+1)]`
-/

namespace A155182.P2586713967833475636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155182.P2586713967833475636

namespace A155182

/-- `∩[A084034(n+1), A359415(n+1)]` -/
def P2586713967833475636.Spec : Prop :=
  ∀ n, (P2586713967833475636.a n : ℤ) = A155182 (n + 1)

end A155182

/-!
# A155183: Decimal expansion of log_4 (20).

The programs for A155183, there is no canonical definition to state claims against.
-/

/-! ## A155183.P262661359266109568

`floor(A153201(n)+acot(n))`
-/

namespace A155183.P262661359266109568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153201 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A155183.P262661359266109568

/-!
# A155185: Primes in A155175.

The programs for A155185, there is no canonical definition to state claims against.
-/

/-! ## A155185.P14747043785184957655

`record[A293958(A155171(n+1))]`
-/

namespace A155185.P14747043785184957655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (A155171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155185.P14747043785184957655

/-! ## A155185.P18221320231726060466

`record[A293958(floor(A155173(n+1)/2))]`
-/

namespace A155185.P18221320231726060466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 ⌊(A155173 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155185.P18221320231726060466

/-! ## A155185.P2922775628447328865

`record[A293958((A155173(n+1)-1)/2)]`
-/

namespace A155185.P2922775628447328865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (SequenceMachineLib.roundAway ((A155173 (n + 1) - 1 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155185.P2922775628447328865

/-! ## A155185.P1308507775544523177

`p?[A155175(n+1)]`
-/

namespace A155185.P1308507775544523177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155185.P1308507775544523177

/-! ## A155185.P4805090946788418313

`p?[A155174(n+1)+1]`
-/

namespace A155185.P4805090946788418313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155174 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155185.P4805090946788418313

/-!
# A155186: Primes in A155171.

The programs for A155186, there is no canonical definition to state claims against.
-/

/-! ## A155186.P5293652056012975222

`p?[A246425(A088485(n+1))-1]`
-/

namespace A155186.P5293652056012975222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A088485 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155186.P5293652056012975222

/-! ## A155186.P8069348561510078176

`p?[A057979(A088485(n+1))]`
-/

namespace A155186.P8069348561510078176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A088485 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155186.P8069348561510078176

/-! ## A155186.P2210310811723079598

`p?[A006370(A088485(n+1)-1)]`
-/

namespace A155186.P2210310811723079598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A088485 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155186.P2210310811723079598

/-! ## A155186.P17750625770901939359

`p?[A029578(A088485(n+1)-1)]`
-/

namespace A155186.P17750625770901939359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A088485 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155186.P17750625770901939359

/-! ## A155186.P2312314946706679495

`p?[A131732(A131530(n+1))-2]`
-/

namespace A155186.P2312314946706679495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A131530 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155186.P2312314946706679495

/-!
# A155187: Prime numbers q of primitive Pythagorean triangles such that perimeters are averages of twin prime pairs, p+1=q(prime), a=q^2-p^2, c=q^2+p^2, b=2*p*q, ar=a*b/2; s=a+b+c, s-+1 are primes.

The programs for A155187, there is no canonical definition to state claims against.
-/

/-! ## A155187.P16689459872370741279

`record[p?[A007913(2*A131530(n+1))]]`
-/

namespace A155187.P16689459872370741279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * A131530 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155187.P16689459872370741279

/-! ## A155187.P1871156552202249646

`p?[A007494(A238364(n+1))]`
-/

namespace A155187.P1871156552202249646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A238364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155187.P1871156552202249646

/-! ## A155187.P18329355712965620690

`p?[A000217(A088485(n+1))%A131530(n+1)]`
-/

namespace A155187.P18329355712965620690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A088485 (n + 1)).toNat) (A131530 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155187.P18329355712965620690

/-! ## A155187.P14565476046967854140

`p?[A246425(A088485(n+1))]`
-/

namespace A155187.P14565476046967854140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A088485 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155187.P14565476046967854140

/-! ## A155187.P526899207738541526

`p?[A001281(A131530(n+1))]`
-/

namespace A155187.P526899207738541526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A131530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155187.P526899207738541526

/-!
# A155188: Sophie Germain primes that are also strong primes and lesser of twin prime pairs.

The programs for A155188, the canonical program `A155188.P10073715610909491198` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155188 has offset 1).

The definition of A155188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155188.P10073715610909491198

`A045536(n+3)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A155188

/-- `A045536(n+3)` -/
def P10073715610909491198.Spec : Prop :=
  ∀ n, P10073715610909491198.a n = A155188 (n + 1)

theorem P10073715610909491198.correct : P10073715610909491198.Spec := by
  intro n
  simp only [A155188, Nat.add_sub_cancel]

end A155188

/-! ## A155188.P12557577315064200451

`∩[A001359(n+1), A005384(n+4)]`
-/

namespace A155188.P12557577315064200451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P12557577315064200451

namespace A155188

/-- `∩[A001359(n+1), A005384(n+4)]` -/
def P12557577315064200451.Spec : Prop :=
  ∀ n, (P12557577315064200451.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P6167393542439396759

`∩[A005384(n+1), A087693(n)]`
-/

namespace A155188.P6167393542439396759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P6167393542439396759

namespace A155188

/-- `∩[A005384(n+1), A087693(n)]` -/
def P6167393542439396759.Spec : Prop :=
  ∀ n, (P6167393542439396759.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P10037644481143536450

`∩[A246857(n+1), A087693(n)]`
-/

namespace A155188.P10037644481143536450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P10037644481143536450

namespace A155188

/-- `∩[A246857(n+1), A087693(n)]` -/
def P10037644481143536450.Spec : Prop :=
  ∀ n, (P10037644481143536450.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P18160721145907746532

`∩[A348511(n+1), A087693(n)]`
-/

namespace A155188.P18160721145907746532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P18160721145907746532

namespace A155188

/-- `∩[A348511(n+1), A087693(n)]` -/
def P18160721145907746532.Spec : Prop :=
  ∀ n, (P18160721145907746532.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P15022880897123337248

`∩[A364926(n+1), A087693(n)]`
-/

namespace A155188.P15022880897123337248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P15022880897123337248

namespace A155188

/-- `∩[A364926(n+1), A087693(n)]` -/
def P15022880897123337248.Spec : Prop :=
  ∀ n, (P15022880897123337248.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P11755031248220303518

`∩[A005384(n+1), A111166(n+3)]`
-/

namespace A155188.P11755031248220303518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P11755031248220303518

namespace A155188

/-- `∩[A005384(n+1), A111166(n+3)]` -/
def P11755031248220303518.Spec : Prop :=
  ∀ n, (P11755031248220303518.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P13650218615920552157

`∩[A072667(n+1), A087693(n)]`
-/

namespace A155188.P13650218615920552157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P13650218615920552157

namespace A155188

/-- `∩[A072667(n+1), A087693(n)]` -/
def P13650218615920552157.Spec : Prop :=
  ∀ n, (P13650218615920552157.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P13267351132999553911

`p?[A206037(n+4)+1]`
-/

namespace A155188.P13267351132999553911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206037 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155188.P13267351132999553911

namespace A155188

/-- `p?[A206037(n+4)+1]` -/
def P13267351132999553911.Spec : Prop :=
  ∀ n, P13267351132999553911.a n = A155188 (n + 1)

end A155188

/-! ## A155188.P7405370004620118350

`p?[A063908(n+4)-2]`
-/

namespace A155188.P7405370004620118350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 4) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155188.P7405370004620118350

namespace A155188

/-- `p?[A063908(n+4)-2]` -/
def P7405370004620118350.Spec : Prop :=
  ∀ n, P7405370004620118350.a n = A155188 (n + 1)

end A155188

/-! ## A155188.P13099737818121449098

`∩[A005384(n+1), A132247(n+1)]`
-/

namespace A155188.P13099737818121449098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P13099737818121449098

namespace A155188

/-- `∩[A005384(n+1), A132247(n+1)]` -/
def P13099737818121449098.Spec : Prop :=
  ∀ n, (P13099737818121449098.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P14895650579564091610

`∩[A132247(n+1), A246857(n+1)]`
-/

namespace A155188.P14895650579564091610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P14895650579564091610

namespace A155188

/-- `∩[A132247(n+1), A246857(n+1)]` -/
def P14895650579564091610.Spec : Prop :=
  ∀ n, (P14895650579564091610.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P15302330548258530864

`∩[A132247(n+1), A348511(n+1)]`
-/

namespace A155188.P15302330548258530864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P15302330548258530864

namespace A155188

/-- `∩[A132247(n+1), A348511(n+1)]` -/
def P15302330548258530864.Spec : Prop :=
  ∀ n, (P15302330548258530864.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P15966837209043204883

`∩[A132247(n+1), A364926(n+1)]`
-/

namespace A155188.P15966837209043204883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P15966837209043204883

namespace A155188

/-- `∩[A132247(n+1), A364926(n+1)]` -/
def P15966837209043204883.Spec : Prop :=
  ∀ n, (P15966837209043204883.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P8993815253010930929

`p?[A120806(n+4)]`
-/

namespace A155188.P8993815253010930929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120806 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155188.P8993815253010930929

namespace A155188

/-- `p?[A120806(n+4)]` -/
def P8993815253010930929.Spec : Prop :=
  ∀ n, P8993815253010930929.a n = A155188 (n + 1)

end A155188

/-! ## A155188.P4834947589806399290

`∩[A215751(n+1), A087693(n)]`
-/

namespace A155188.P4834947589806399290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P4834947589806399290

namespace A155188

/-- `∩[A215751(n+1), A087693(n)]` -/
def P4834947589806399290.Spec : Prop :=
  ∀ n, (P4834947589806399290.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P13819293529863504452

`∩[A132247(n+1), A215751(n+1)]`
-/

namespace A155188.P13819293529863504452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P13819293529863504452

namespace A155188

/-- `∩[A132247(n+1), A215751(n+1)]` -/
def P13819293529863504452.Spec : Prop :=
  ∀ n, (P13819293529863504452.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P6802401740613640495

`p?[A244520(n+4)]`
-/

namespace A155188.P6802401740613640495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244520 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155188.P6802401740613640495

namespace A155188

/-- `p?[A244520(n+4)]` -/
def P6802401740613640495.Spec : Prop :=
  ∀ n, P6802401740613640495.a n = A155188 (n + 1)

end A155188

/-! ## A155188.P10703388013105273338

`∩[A259973(n+1), A087693(n)]`
-/

namespace A155188.P10703388013105273338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P10703388013105273338

namespace A155188

/-- `∩[A259973(n+1), A087693(n)]` -/
def P10703388013105273338.Spec : Prop :=
  ∀ n, (P10703388013105273338.a n : ℤ) = A155188 (n + 1)

end A155188

/-! ## A155188.P4896895451071528454

`∩[A132247(n+1), A259973(n+1)]`
-/

namespace A155188.P4896895451071528454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155188.P4896895451071528454

namespace A155188

/-- `∩[A132247(n+1), A259973(n+1)]` -/
def P4896895451071528454.Spec : Prop :=
  ∀ n, (P4896895451071528454.a n : ℤ) = A155188 (n + 1)

end A155188

/-!
# A155189: Square-weak primes.

The programs for A155189, there is no canonical definition to state claims against.
-/

/-! ## A155189.P3470574707462195107

`A003961(A147813(n+1))`
-/

namespace A155189.P3470574707462195107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A147813 (n + 1)).toNat

end

end A155189.P3470574707462195107

/-! ## A155189.P11889044111367128925

`A065091(A333230(n+1))`
-/

namespace A155189.P11889044111367128925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A333230 (n + 1)).toNat

end

end A155189.P11889044111367128925

/-! ## A155189.P255275340040708236

`eq[n, A151800(A051698(n))]`
-/

namespace A155189.P255275340040708236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A051698 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155189.P255275340040708236

/-! ## A155189.P10565212562754782280

`A065091(∑[A333252(n+1)])`
-/

namespace A155189.P10565212562754782280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155189.P10565212562754782280

/-! ## A155189.P15465273865092251723

`A007918(A147813(n+1)+1)`
-/

namespace A155189.P15465273865092251723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A147813 (n + 1) + 1).toNat

end

end A155189.P15465273865092251723

/-! ## A155189.P10479905024569108771

`A000040(A333230(n+1)+1)`
-/

namespace A155189.P10479905024569108771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A333230 (n + 1) + 1).toNat

end

end A155189.P10479905024569108771

/-! ## A155189.P8684405905082795297

`A065091(lt[0, A137174(n+1)])`
-/

namespace A155189.P8684405905082795297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A155189.P8684405905082795297

/-! ## A155189.P11226977005868120206

`eq[A051698(n), A283463(n+1)]`
-/

namespace A155189.P11226977005868120206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155189.P11226977005868120206

/-! ## A155189.P17327630903956240408

`A000040(∑[A333252(n+1)]+1)`
-/

namespace A155189.P17327630903956240408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A155189.P17327630903956240408

/-! ## A155189.P6431971866770110287

`A000040(lt[3, Δ[A048852(n)]]+1)`
-/

namespace A155189.P6431971866770110287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A155189.P6431971866770110287

/-!
# A155190: Non-triangular numbers having a unique representation as p + t, where p is prime and t is a triangular number.

The programs for A155190, there is no canonical definition to state claims against.
-/

/-! ## A155190.P16069161284499311974

`eq[A132399(n), A167407(n)]`
-/

namespace A155190.P16069161284499311974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132399 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155190.P16069161284499311974

/-! ## A155190.P14398567736453399723

`eq[A035214(n)², A132399(n)]`
-/

namespace A155190.P14398567736453399723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155190.P14398567736453399723

/-! ## A155190.P18040764318067209957

`eq[A035214(n)², A224362(n)]`
-/

namespace A155190.P18040764318067209957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155190.P18040764318067209957

/-! ## A155190.P1020963596985062570

`eq[1, A132399(n)+A010054(n)]`
-/

namespace A155190.P1020963596985062570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132399 n + A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155190.P1020963596985062570

/-! ## A155190.P14414318841743317592

`eq[A128218(n+1), A224362(n)]`
-/

namespace A155190.P14414318841743317592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155190.P14414318841743317592

/-!
# A155191: Number of cubic equations ax^3 + bx^2 + cx + d = 0 with integer coefficients |a|,|b|,|c|,|d| <= n, a <> 0, having three distinct real roots.

The programs for A155191, there is no canonical definition to state claims against.
-/

/-! ## A155191.P17587037175221188426

`A002266(A062741(n)*A264443(n))`
-/

namespace A155191.P17587037175221188426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A062741 n * A264443 n).toNat

end

end A155191.P17587037175221188426

/-!
# A155192: Number of cubic equations ax^3 + bx^2 + cx + d = 0 with integer coefficients |a|,|b|,|c|,|d| <= n, a <> 0, having three real roots, of which at least two are equal.

The programs for A155192, there is no canonical definition to state claims against.
-/

/-! ## A155192.P11872295504033440836

`A000120(A382194(3*n+1))*A343657(n+1)`
-/

namespace A155192.P11872295504033440836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A382194 (3 * n + 1)).toNat * A343657 (n + 1)

end

end A155192.P11872295504033440836

/-!
# A155194: Triangle read by rows: t(n,m)=If[m*(n - m) == 0, 1, n!*(1 - 1/Binomial[n, m])].

The programs for A155194, there is no canonical definition to state claims against.
-/

/-! ## A155194.P9385609643065069940

`floor(A174690(n)/A007318(n))`
-/

namespace A155194.P9385609643065069940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174690 n : ℚ) / (A007318 n : ℚ)⌋

end

end A155194.P9385609643065069940

/-! ## A155194.P7088827217377278767

`floor(A174790(n)/A008459(n))`
-/

namespace A155194.P7088827217377278767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174790 n : ℚ) / (A008459 n : ℚ)⌋

end

end A155194.P7088827217377278767

/-! ## A155194.P7819026013258750365

`floor(A174690(n)/Δ[A102363(n)])`
-/

namespace A155194.P7819026013258750365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174690 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A155194.P7819026013258750365

/-! ## A155194.P6555616421819799480

`gcd(A014473(n)*A098361(n), A103452(n))`
-/

namespace A155194.P6555616421819799480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n * A098361 n) (A103452 n)

end

end A155194.P6555616421819799480

/-! ## A155194.P8207888959429963282

`floor((A174689(n)+1-A174690(n))/A008459(n))`
-/

namespace A155194.P8207888959429963282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174689 n + (1 - A174690 n) : ℚ) / (A008459 n : ℚ)⌋

end

end A155194.P8207888959429963282

/-!
# A155195: a(n)=6*a(n-1)+a(n-2), n>2 ; a(0)=1, a(1)=5, a(2)=30 .

The programs for A155195, the canonical program `A155195.P7381973625778826909` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155195 has offset 0).

The definition of A155195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+a(n-2)` (program `A155195.P7381973625778826909`, by `A155195.P7381973625778826909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155195.P7381973625778826909

`6*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5, a(2)=30`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155195

/-- `6*a(n-1)+a(n-2)` -/
def P7381973625778826909.Spec : Prop :=
  ∀ n, (P7381973625778826909.a n : ℤ) = A155195 n

theorem P7381973625778826909.correct : P7381973625778826909.Spec := by
  intro n
  simp only [A155195]

end A155195

/-! ## A155195.P2848532609479398471

`A116559(A008458(n))`
-/

namespace A155195.P2848532609479398471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A008458 n).toNat

end

end A155195.P2848532609479398471

namespace A155195

/-- `A116559(A008458(n))` -/
def P2848532609479398471.Spec : Prop :=
  ∀ n, P2848532609479398471.a n = A155195 n

end A155195

/-! ## A155195.P239513553250726968

`A116559(record[A165998(n)])`
-/

namespace A155195.P239513553250726968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155195.P239513553250726968

namespace A155195

/-- `A116559(record[A165998(n)])` -/
def P239513553250726968.Spec : Prop :=
  ∀ n, P239513553250726968.a n = A155195 n

end A155195

/-! ## A155195.P15877735320325575443

`A116559(A101328(n+2))`
-/

namespace A155195.P15877735320325575443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A101328 (n + 2)).toNat

end

end A155195.P15877735320325575443

namespace A155195

/-- `A116559(A101328(n+2))` -/
def P15877735320325575443.Spec : Prop :=
  ∀ n, P15877735320325575443.a n = A155195 n

end A155195

/-! ## A155195.P15484407803985837876

`A116559(A271114(n)-1)`
-/

namespace A155195.P15484407803985837876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A271114 n - 1).toNat

end

end A155195.P15484407803985837876

namespace A155195

/-- `A116559(A271114(n)-1)` -/
def P15484407803985837876.Spec : Prop :=
  ∀ n, P15484407803985837876.a n = A155195 n

end A155195

/-! ## A155195.P15709257176520528253

`A116559(A008706(n)+n)`
-/

namespace A155195.P15709257176520528253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A008706 n + (n : ℤ)).toNat

end

end A155195.P15709257176520528253

namespace A155195

/-- `A116559(A008706(n)+n)` -/
def P15709257176520528253.Spec : Prop :=
  ∀ n, P15709257176520528253.a n = A155195 n

end A155195

/-! ## A155195.P15480241886696781532

`A116559(A008574(n)+2*n)`
-/

namespace A155195.P15480241886696781532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A008574 n + (2 * n : ℤ)).toNat

end

end A155195.P15480241886696781532

namespace A155195

/-- `A116559(A008574(n)+2*n)` -/
def P15480241886696781532.Spec : Prop :=
  ∀ n, P15480241886696781532.a n = A155195 n

end A155195

/-! ## A155195.P18399970659611108220

`A116559(2*(A008574(n)-n))`
-/

namespace A155195.P18399970659611108220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (2 * (A008574 n - (n : ℤ))).toNat

end

end A155195.P18399970659611108220

namespace A155195

/-- `A116559(2*(A008574(n)-n))` -/
def P18399970659611108220.Spec : Prop :=
  ∀ n, P18399970659611108220.a n = A155195 n

end A155195

/-! ## A155195.P8626295848013486623

`A116559(A008574(n)+n+n)`
-/

namespace A155195.P8626295848013486623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A008574 n + (n : ℤ) + (n : ℤ)).toNat

end

end A155195.P8626295848013486623

namespace A155195

/-- `A116559(A008574(n)+n+n)` -/
def P8626295848013486623.Spec : Prop :=
  ∀ n, P8626295848013486623.a n = A155195 n

end A155195

/-! ## A155195.P4814522587872576765

`record[A295333(n+1)-Δ[A295333(n+1)]]`
-/

namespace A155195.P4814522587872576765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295333 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295333 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155195.P4814522587872576765

namespace A155195

/-- `record[A295333(n+1)-Δ[A295333(n+1)]]` -/
def P4814522587872576765.Spec : Prop :=
  ∀ n, P4814522587872576765.a n = A155195 n

end A155195

/-! ## A155195.P12399660128001466394

`A116559(A016813(n)+A004275(n))`
-/

namespace A155195.P12399660128001466394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A016813 n + A004275 n).toNat

end

end A155195.P12399660128001466394

namespace A155195

/-- `A116559(A016813(n)+A004275(n))` -/
def P12399660128001466394.Spec : Prop :=
  ∀ n, P12399660128001466394.a n = A155195 n

end A155195

/-! ## A155195.P13625069555234677923

`A116559(A004275(2*n+1)+A004275(n+1))`
-/

namespace A155195.P13625069555234677923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A004275 (2 * n + 1) + A004275 (n + 1)).toNat

end

end A155195.P13625069555234677923

namespace A155195

/-- `A116559(A004275(2*n+1)+A004275(n+1))` -/
def P13625069555234677923.Spec : Prop :=
  ∀ n, P13625069555234677923.a n = A155195 n

end A155195

/-!
# A155196: a(n)=7*a(n-1)+a(n-2), n>2 ; a(0)=1, a(1)=6, a(2)=42 .

The programs for A155196, the canonical program `A155196.P1158140456891904547` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155196 has offset 0).

The definition of A155196 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+a(n-2)` (program `A155196.P1158140456891904547`, by `A155196.P1158140456891904547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155196.P1158140456891904547

`7*a(n-1)+a(n-2)` with `a(0)=1, a(1)=6, a(2)=42`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155196

/-- `7*a(n-1)+a(n-2)` -/
def P1158140456891904547.Spec : Prop :=
  ∀ n, (P1158140456891904547.a n : ℤ) = A155196 n

theorem P1158140456891904547.correct : P1158140456891904547.Spec := by
  intro n
  simp only [A155196]

end A155196

/-! ## A155196.P17199434518285219183

`A054413(n)+A015453(n)*A057428(n)`
-/

namespace A155196.P17199434518285219183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054413 n + A015453 n * A057428 n

end

end A155196.P17199434518285219183

namespace A155196

/-- `A054413(n)+A015453(n)*A057428(n)` -/
def P17199434518285219183.Spec : Prop :=
  ∀ n, P17199434518285219183.a n = A155196 n

end A155196

/-! ## A155196.P18042579869435269995

`A000007(n)+Δ[A054413(n+1)]%A054413(n)`
-/

namespace A155196.P18042579869435269995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (f1 (n + 1) - f1 n) (A054413 n)

end

end A155196.P18042579869435269995

namespace A155196

/-- `A000007(n)+Δ[A054413(n+1)]%A054413(n)` -/
def P18042579869435269995.Spec : Prop :=
  ∀ n, P18042579869435269995.a n = A155196 n

end A155196

/-! ## A155196.P5645858973978023656

`A054413(n)-A015453(n)%A129921(A008576(n))`
-/

namespace A155196.P5645858973978023656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054413 n - Int.tmod (A015453 n) (A129921 (A008576 n).toNat)

end

end A155196.P5645858973978023656

namespace A155196

/-- `A054413(n)-A015453(n)%A129921(A008576(n))` -/
def P5645858973978023656.Spec : Prop :=
  ∀ n, P5645858973978023656.a n = A155196 n

end A155196

/-!
# A155197: a(n) = 8*a(n-1) + a(n-2) for n>2, with a(0)=1, a(1)=7, a(2)=56.

The programs for A155197, the canonical program `A155197.P15035442078477025990` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155197 has offset 0).

The definition of A155197 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+a(n-2)` (program `A155197.P15035442078477025990`, by `A155197.P15035442078477025990.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155197.P15035442078477025990

`8*a(n-1)+a(n-2)` with `a(0)=1, a(1)=7, a(2)=56`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155197

/-- `8*a(n-1)+a(n-2)` -/
def P15035442078477025990.Spec : Prop :=
  ∀ n, (P15035442078477025990.a n : ℤ) = A155197 n

theorem P15035442078477025990.correct : P15035442078477025990.Spec := by
  intro n
  simp only [A155197]

end A155197

/-! ## A155197.P13581183249762609368

`A000007(n)+A041025(n)-A015454(n)`
-/

namespace A155197.P13581183249762609368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A041025 n - A015454 n)

end

end A155197.P13581183249762609368

namespace A155197

/-- `A000007(n)+A041025(n)-A015454(n)` -/
def P13581183249762609368.Spec : Prop :=
  ∀ n, P13581183249762609368.a n = A155197 n

end A155197

/-! ## A155197.P4666892617451530579

`A176045(n+1)%2-(A015454(n)-A041025(n))`
-/

namespace A155197.P4666892617451530579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176045 (n + 1)) 2 - (A015454 n - A041025 n)

end

end A155197.P4666892617451530579

namespace A155197

/-- `A176045(n+1)%2-(A015454(n)-A041025(n))` -/
def P4666892617451530579.Spec : Prop :=
  ∀ n, P4666892617451530579.a n = A155197 n

end A155197

/-! ## A155197.P15771947949028810222

`A010815(A129727(n+1))+A041025(n)-A015454(n)`
-/

namespace A155197.P15771947949028810222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A129727 (n + 1)).toNat + (A041025 n - A015454 n)

end

end A155197.P15771947949028810222

namespace A155197

/-- `A010815(A129727(n+1))+A041025(n)-A015454(n)` -/
def P15771947949028810222.Spec : Prop :=
  ∀ n, P15771947949028810222.a n = A155197 n

end A155197

/-! ## A155197.P15213623393727800637

`A041025(n)-A015454(n)%A041041(n)`
-/

namespace A155197.P15213623393727800637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041025 n - Int.tmod (A015454 n) (A041041 n)

end

end A155197.P15213623393727800637

namespace A155197

/-- `A041025(n)-A015454(n)%A041041(n)` -/
def P15213623393727800637.Spec : Prop :=
  ∀ n, P15213623393727800637.a n = A155197 n

end A155197

/-!
# A155198: a(n)=9*a(n-1)+a(n-2), n>2 ; a(0)=1, a(1)=8, a(2)=72 .

The programs for A155198, the canonical program `A155198.P6723048707771703090` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155198 has offset 0).

The definition of A155198 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+a(n-2)` (program `A155198.P6723048707771703090`, by `A155198.P6723048707771703090.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155198.P6723048707771703090

`9*a(n-1)+a(n-2)` with `a(0)=1, a(1)=8, a(2)=72`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155198

/-- `9*a(n-1)+a(n-2)` -/
def P6723048707771703090.Spec : Prop :=
  ∀ n, (P6723048707771703090.a n : ℤ) = A155198 n

theorem P6723048707771703090.correct : P6723048707771703090.Spec := by
  intro n
  simp only [A155198]

end A155198

/-! ## A155198.P15810226641548942946

`record[a(n-2)+a(n-1)/(1/3)²]` with `a(0)=1, a(1)=0, a(2)=8`
-/

namespace A155198.P15810226641548942946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 8] fun n f1 =>
  f1 (n - 2) + f1 (n - 1) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155198.P15810226641548942946

namespace A155198

/-- `record[a(n-2)+a(n-1)/(1/3)²]` -/
def P15810226641548942946.Spec : Prop :=
  ∀ n, P15810226641548942946.a n = (A155198 n : ℚ)

end A155198

/-! ## A155198.P4166321087029311550

`record[a(n-2)-3*(a(n-1)-4*a(n-1))]` with `a(0)=1, a(1)=0, a(2)=8`
-/

namespace A155198.P4166321087029311550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 8] fun n f1 =>
  f1 (n - 2) - 3 * (f1 (n - 1) - 4 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155198.P4166321087029311550

namespace A155198

/-- `record[a(n-2)-3*(a(n-1)-4*a(n-1))]` -/
def P4166321087029311550.Spec : Prop :=
  ∀ n, P4166321087029311550.a n = A155198 n

end A155198

/-!
# A155199: a(n) = 10*a(n-1) + a(n-2), n > 2 ; a(0) = 1, a(1) = 9, a(2) = 90.

The programs for A155199, the canonical program `A155199.P2605466560378311155` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155199 has offset 0).

The definition of A155199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+a(n-2)` (program `A155199.P2605466560378311155`, by `A155199.P2605466560378311155.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155199.P2605466560378311155

`10*a(n-1)+a(n-2)` with `a(0)=1, a(1)=9, a(2)=90`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A155199

/-- `10*a(n-1)+a(n-2)` -/
def P2605466560378311155.Spec : Prop :=
  ∀ n, (P2605466560378311155.a n : ℤ) = A155199 n

theorem P2605466560378311155.correct : P2605466560378311155.Spec := by
  intro n
  simp only [A155199]

end A155199

/-! ## A155199.P5000101298364829534

`A041041(n)-A015456(n)%A041041(n)`
-/

namespace A155199.P5000101298364829534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041041 n - Int.tmod (A015456 n) (A041041 n)

end

end A155199.P5000101298364829534

namespace A155199

/-- `A041041(n)-A015456(n)%A041041(n)` -/
def P5000101298364829534.Spec : Prop :=
  ∀ n, P5000101298364829534.a n = A155199 n

end A155199

/-! ## A155199.P4040354013907245607

`A041041(n)-A086927(n)%A109108(n)`
-/

namespace A155199.P4040354013907245607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041041 n - Int.tmod (A086927 n) (A109108 n)

end

end A155199.P4040354013907245607

namespace A155199

/-- `A041041(n)-A086927(n)%A109108(n)` -/
def P4040354013907245607.Spec : Prop :=
  ∀ n, P4040354013907245607.a n = A155199 n

end A155199

/-! ## A155199.P18073298229499042955

`A109108(n)-A171510(n+1)%A015456(n)`
-/

namespace A155199.P18073298229499042955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109108 n - Int.tmod (A171510 (n + 1)) (A015456 n)

end

end A155199.P18073298229499042955

namespace A155199

/-- `A109108(n)-A171510(n+1)%A015456(n)` -/
def P18073298229499042955.Spec : Prop :=
  ∀ n, P18073298229499042955.a n = A155199 n

end A155199

