import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A028600: Expansion of (theta_3(z)*theta_3(8z)+theta_2(z)*theta_2(8z))^4.

The programs for A028600, there is no canonical definition to state claims against.
-/

/-! ## A028600.P5478682082690258149

`∑{#}[n, A028598(#)*A028598(n-#)]`
-/

namespace A028600.P5478682082690258149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028598 k * A028598 (n - k)

end

end A028600.P5478682082690258149

/-! ## A028600.P10063085631235692239

`A028624(A120634(n))`
-/

namespace A028600.P10063085631235692239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028624 (A120634 n).toNat

end

end A028600.P10063085631235692239

/-! ## A028600.P11953316441267827233

`A028608(A159966(n))`
-/

namespace A028600.P11953316441267827233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028608 (A159966 n).toNat

end

end A028600.P11953316441267827233

/-!
# A028601: Expansion of (theta_3(z)*theta_3(9z) + theta_2(z)*theta_2(9z)).

The programs for A028601, there is no canonical definition to state claims against.
-/

/-! ## A028601.P15335980342074031276

`(2*n+1)%3*A258256(n)`
-/

namespace A028601.P15335980342074031276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) % 3 : ℕ) : ℤ) * A258256 n

end

end A028601.P15335980342074031276

/-! ## A028601.P15440251441006297697

`A057078(n)*A258228(n)`
-/

namespace A028601.P15440251441006297697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A258228 n

end

end A028601.P15440251441006297697

/-! ## A028601.P12193656640965932996

`A204418(n)*A259761(n)`
-/

namespace A028601.P12193656640965932996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 n * A259761 n

end

end A028601.P12193656640965932996

/-! ## A028601.P853530191265857036

`lcm(A057078(n), A258210(n))`
-/

namespace A028601.P853530191265857036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057078 n) (A258210 n)

end

end A028601.P853530191265857036

/-! ## A028601.P16013402788734450205

`lcm(A109265(n), A258228(n))`
-/

namespace A028601.P16013402788734450205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109265 n) (A258228 n)

end

end A028601.P16013402788734450205

/-! ## A028601.P12752109060984555917

`lcm(A110568(n), A259761(n))`
-/

namespace A028601.P12752109060984555917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110568 n) (A259761 n)

end

end A028601.P12752109060984555917

/-! ## A028601.P6061646321231192746

`A260190(n)²*A259761(n)`
-/

namespace A028601.P6061646321231192746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260190 n ^ 2 * A259761 n

end

end A028601.P6061646321231192746

/-! ## A028601.P1095265903345749248

`2*A258256(n)-A258034(n)`
-/

namespace A028601.P1095265903345749248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258256 n - A258034 n

end

end A028601.P1095265903345749248

/-! ## A028601.P18195083371584894494

`A010892(n+1)*A258210(n)`
-/

namespace A028601.P18195083371584894494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) * A258210 n

end

end A028601.P18195083371584894494

/-! ## A028601.P3711798322296659373

`A258034(2*n)`
-/

namespace A028601.P3711798322296659373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258034 (2 * n)

end

end A028601.P3711798322296659373

/-! ## A028601.P16864262595156021217

`(A057078(n+1)+1)*A258210(2*n)`
-/

namespace A028601.P16864262595156021217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057078 (n + 1) + 1) * A258210 (2 * n)

end

end A028601.P16864262595156021217

/-! ## A028601.P15543440227581557167

`A258322(2*n)`
-/

namespace A028601.P15543440227581557167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258322 (2 * n)

end

end A028601.P15543440227581557167

/-! ## A028601.P3468759657877968471

`A010892(2*n)*A258228(n)`
-/

namespace A028601.P3468759657877968471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n) * A258228 n

end

end A028601.P3468759657877968471

/-! ## A028601.P16407773523033375128

`A049347(2*n)*A258228(n)`
-/

namespace A028601.P16407773523033375128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (2 * n) * A258228 n

end

end A028601.P16407773523033375128

/-! ## A028601.P123342322108515999

`lcm(A122857(n), A256269(2*n))`
-/

namespace A028601.P123342322108515999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122857 n) (A256269 (2 * n))

end

end A028601.P123342322108515999

/-! ## A028601.P9576310017707167742

`lcm(A132003(n), A256279(2*n))`
-/

namespace A028601.P9576310017707167742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132003 n) (A256279 (2 * n))

end

end A028601.P9576310017707167742

/-! ## A028601.P5350365360007305663

`A099544(2*n+1)*A258292(n)`
-/

namespace A028601.P5350365360007305663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099544 (2 * n + 1) * A258292 n

end

end A028601.P5350365360007305663

/-! ## A028601.P9780961173709414452

`A010892(2*n)*A256014(2*n)`
-/

namespace A028601.P9780961173709414452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n) * A256014 (2 * n)

end

end A028601.P9780961173709414452

/-! ## A028601.P11271899841018423585

`A259761(n)%A174505(n)`
-/

namespace A028601.P11271899841018423585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259761 n) (A174505 n)

end

end A028601.P11271899841018423585

/-!
# A028602: Expansion of (theta_3(z)*theta_3(9z)+theta_2(z)*theta_2(9z))^2.

The programs for A028602, there is no canonical definition to state claims against.
-/

/-! ## A028602.P13989446528753000070

`∑{#}[n, A028601(#)*A028601(n-#)]`
-/

namespace A028602.P13989446528753000070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028601 k * A028601 (n - k)

end

end A028602.P13989446528753000070

/-!
# A028604: Expansion of (theta_3(z)*theta_3(9z)+theta_2(z)*theta_2(9z))^4.

The programs for A028604, there is no canonical definition to state claims against.
-/

/-! ## A028604.P4083993218897325699

`∑{#}[n, A028602(#)*A028602(n-#)]`
-/

namespace A028604.P4083993218897325699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028602 k * A028602 (n - k)

end

end A028604.P4083993218897325699

/-!
# A028605: Expansion of (theta_3(z)*theta_3(10z)+theta_2(z)*theta_2(10z)).

The programs for A028605, there is no canonical definition to state claims against.
-/

/-! ## A028605.P11956790654255987429

`lcm(A102560(n), A317641(n))`
-/

namespace A028605.P11956790654255987429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A102560 n) (A317641 n)

end

end A028605.P11956790654255987429

/-! ## A028605.P3428376936948202022

`Δ[A004525(n)]*A317641(n)`
-/

namespace A028605.P3428376936948202022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A317641 n

end

end A028605.P3428376936948202022

/-! ## A028605.P13424211822555770815

`char[A014601(n)]*A317641(n)`
-/

namespace A028605.P13424211822555770815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A317641 n

end

end A028605.P13424211822555770815

/-! ## A028605.P13368692621149789696

`A133872(n+1)*A317641(n)`
-/

namespace A028605.P13368692621149789696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (n + 1) * A317641 n

end

end A028605.P13368692621149789696

/-! ## A028605.P16402640425098054379

`A000124(n)%2*A317641(n)`
-/

namespace A028605.P16402640425098054379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) 2 * A317641 n

end

end A028605.P16402640425098054379

/-! ## A028605.P5564276946291138380

`A000096(n+3)%2*A317641(n)`
-/

namespace A028605.P5564276946291138380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 (n + 3)) 2 * A317641 n

end

end A028605.P5564276946291138380

/-! ## A028605.P12321188754466777868

`A021913(n+3)*A317641(n)`
-/

namespace A028605.P12321188754466777868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (n + 3) * A317641 n

end

end A028605.P12321188754466777868

/-! ## A028605.P8818353695546692399

`and(1, A000096(n+9)+11)*A317641(n)`
-/

namespace A028605.P8818353695546692399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000096 (n + 9) + 11) * A317641 n

end

end A028605.P8818353695546692399

/-! ## A028605.P11951093212122945296

`A317642(A047401(n+1))`
-/

namespace A028605.P11951093212122945296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317642 (A047401 (n + 1)).toNat

end

end A028605.P11951093212122945296

/-! ## A028605.P16083873040183881033

`A317641(A112652(n)+n)`
-/

namespace A028605.P16083873040183881033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (A112652 n + (n : ℤ)).toNat

end

end A028605.P16083873040183881033

/-! ## A028605.P16296880225974107321

`A317641(3*A072833(n))`
-/

namespace A028605.P16296880225974107321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (3 * A072833 n).toNat

end

end A028605.P16296880225974107321

/-! ## A028605.P17592077385747779430

`and(A317641(n), A359066(n+1))`
-/

namespace A028605.P17592077385747779430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A317641 n) (A359066 (n + 1))

end

end A028605.P17592077385747779430

/-! ## A028605.P14887937395592682236

`and(A009001(A014206(n)), A317641(n))`
-/

namespace A028605.P14887937395592682236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009001 (A014206 n).toNat) (A317641 n)

end

end A028605.P14887937395592682236

/-!
# A028606: Expansion of (theta_3(z)*theta_3(10z)+theta_2(z)*theta_2(10z))^2.

The programs for A028606, there is no canonical definition to state claims against.
-/

/-! ## A028606.P9201230068151871129

`∑{#}[n, A028605(#)*A028605(n-#)]`
-/

namespace A028606.P9201230068151871129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028605 k * A028605 (n - k)

end

end A028606.P9201230068151871129

/-! ## A028606.P2209427707650436215

`A028614(A120634(n))`
-/

namespace A028606.P2209427707650436215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028614 (A120634 n).toNat

end

end A028606.P2209427707650436215

/-! ## A028606.P9975269344052867729

`A028614(A102370(n))`
-/

namespace A028606.P9975269344052867729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028614 (A102370 n).toNat

end

end A028606.P9975269344052867729

/-!
# A028607: Expansion of (theta_3(z)*theta_3(10z)+theta_2(z)*theta_2(10z))^3.

The programs for A028607, there is no canonical definition to state claims against.
-/

/-! ## A028607.P3029966292503151535

`A028615(A120634(n))`
-/

namespace A028607.P3029966292503151535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028615 (A120634 n).toNat

end

end A028607.P3029966292503151535

/-!
# A028608: Expansion of (theta_3(z)*theta_3(10z)+theta_2(z)*theta_2(10z))^4.

The programs for A028608, there is no canonical definition to state claims against.
-/

/-! ## A028608.P11544588427757137004

`∑{#}[n, A028606(#)*A028606(n-#)]`
-/

namespace A028608.P11544588427757137004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028606 k * A028606 (n - k)

end

end A028608.P11544588427757137004

/-! ## A028608.P14818565704373704573

`A028616(A120634(n))`
-/

namespace A028608.P14818565704373704573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028616 (A120634 n).toNat

end

end A028608.P14818565704373704573

/-!
# A028609: Expansion of (theta_3(z)*theta_3(11z) + theta_2(z)*theta_2(11z)).

The programs for A028609, the canonical program `A028609.P15696668425956349877` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028609 has offset 0).

The definition of A028609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028609.P3501180126505968860

`A028953(4*n)`
-/

namespace A028609.P3501180126505968860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (4 * n)

end

end A028609.P3501180126505968860

namespace A028609

/-- `A028953(4*n)` -/
def P3501180126505968860.Spec : Prop :=
  ∀ n, P3501180126505968860.a n = A028609 n

end A028609

/-! ## A028609.P17430509449185828190

`A033723(4*n)`
-/

namespace A028609.P17430509449185828190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033723 (4 * n)

end

end A028609.P17430509449185828190

namespace A028609

/-- `A033723(4*n)` -/
def P17430509449185828190.Spec : Prop :=
  ∀ n, P17430509449185828190.a n = A028609 n

end A028609

/-! ## A028609.P1205010344191750420

`A028953(A008574(n))+A000007(n)`
-/

namespace A028609.P1205010344191750420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A008574 n).toNat + A000007 n

end

end A028609.P1205010344191750420

namespace A028609

/-- `A028953(A008574(n))+A000007(n)` -/
def P1205010344191750420.Spec : Prop :=
  ∀ n, P1205010344191750420.a n = A028609 n

end A028609

/-! ## A028609.P14426755940084909385

`A028953(A008486(n)+n)+A000007(n)`
-/

namespace A028609.P14426755940084909385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A008486 n + (n : ℤ)).toNat + A000007 n

end

end A028609.P14426755940084909385

namespace A028609

/-- `A028953(A008486(n)+n)+A000007(n)` -/
def P14426755940084909385.Spec : Prop :=
  ∀ n, P14426755940084909385.a n = A028609 n

end A028609

/-! ## A028609.P15696668425956349877

`A000032(floor(1/(n+1)))*A035179(A008574(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A028609

/-- `A000032(floor(1/(n+1)))*A035179(A008574(n))` -/
def P15696668425956349877.Spec : Prop :=
  ∀ n, P15696668425956349877.a n = A028609 n

theorem P15696668425956349877.correct : P15696668425956349877.Spec := by
  intro n
  simp only [A028609]

end A028609

/-! ## A028609.P10266547154658293661

`A028953(A008574(n))^A001221(A034444(n+1))`
-/

namespace A028609.P10266547154658293661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028953 (A008574 n).toNat : ℚ) ^ (A001221 (A034444 (n + 1)).toNat : ℤ)

end

end A028609.P10266547154658293661

namespace A028609

/-- `A028953(A008574(n))^A001221(A034444(n+1))` -/
def P10266547154658293661.Spec : Prop :=
  ∀ n, P10266547154658293661.a n = (A028609 n : ℚ)

end A028609

/-!
# A028610: Expansion of (theta_3(z)*theta_3(11z) + theta_2(z)*theta_2(11z))^2.

The programs for A028610, the canonical program `A028610.P7977923338784683921` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028610 has offset 0).

The definition of A028610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028610.P7977923338784683921

`∑{#}[n, A028609(#)*A028609(n-#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A028610

/-- `∑{#}[n, A028609(#)*A028609(n-#)]` -/
def P7977923338784683921.Spec : Prop :=
  ∀ n, P7977923338784683921.a n = A028610 n

theorem P7977923338784683921.correct : P7977923338784683921.Spec := by
  intro n
  simp only [A028610]

end A028610

/-! ## A028610.P17264000638449939568

`A008704(n)%A040462(A041011(n))`
-/

namespace A028610.P17264000638449939568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008704 n) (A040462 (A041011 n).toNat)

end

end A028610.P17264000638449939568

namespace A028610

/-- `A008704(n)%A040462(A041011(n))` -/
def P17264000638449939568.Spec : Prop :=
  ∀ n, P17264000638449939568.a n = A028610 n

end A028610

/-! ## A028610.P15197632972695203011

`A008704(A062399(n))%A040462(n)`
-/

namespace A028610.P15197632972695203011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008704 (A062399 n).toNat) (A040462 n)

end

end A028610.P15197632972695203011

namespace A028610

/-- `A008704(A062399(n))%A040462(n)` -/
def P15197632972695203011.Spec : Prop :=
  ∀ n, P15197632972695203011.a n = A028610 n

end A028610

/-!
# A028612: Expansion of (theta_3(z)*theta_3(11z) + theta_2(z)*theta_2(11z))^4.

The programs for A028612, the canonical program `A028612.P3597305288717292760` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028612 has offset 0).

The definition of A028612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028612.P3597305288717292760

`∑{#}[n, A028610(#)*A028610(n-#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A028612

/-- `∑{#}[n, A028610(#)*A028610(n-#)]` -/
def P3597305288717292760.Spec : Prop :=
  ∀ n, P3597305288717292760.a n = A028612 n

theorem P3597305288717292760.correct : P3597305288717292760.Spec := by
  intro n
  simp only [A028612]

end A028612

/-! ## A028612.P15988481164133125928

`A119792(A315436(n))`
-/

namespace A028612.P15988481164133125928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119792 (A315436 n).toNat

end

end A028612.P15988481164133125928

namespace A028612

/-- `A119792(A315436(n))` -/
def P15988481164133125928.Spec : Prop :=
  ∀ n, P15988481164133125928.a n = A028612 n

end A028612

/-!
# A028613: Expansion of theta_3(q) * theta_3(q^12) + theta_2(q) * theta_2(q^12) in powers of q^(1/4).

The programs for A028613, there is no canonical definition to state claims against.
-/

/-! ## A028613.P4358502981119923179

`and(A028615(n), A127750(n²))`
-/

namespace A028613.P4358502981119923179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028615 n) (A127750 (n ^ 2))

end

end A028613.P4358502981119923179

/-! ## A028613.P11093729721866333229

`and(A028615(n), A127752(n²))`
-/

namespace A028613.P11093729721866333229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028615 n) (A127752 (n ^ 2))

end

end A028613.P11093729721866333229

/-! ## A028613.P5660233761677092782

`and(A028615(n), A335458(2*n))`
-/

namespace A028613.P5660233761677092782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028615 n) (A335458 (2 * n))

end

end A028613.P5660233761677092782

/-! ## A028613.P6443193831938210688

`and(A028615(n), A182731(n+1))`
-/

namespace A028613.P6443193831938210688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028615 n) (A182731 (n + 1))

end

end A028613.P6443193831938210688

/-! ## A028613.P800159176891675579

`and(A028615(n), A289849(n+1))`
-/

namespace A028613.P800159176891675579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028615 n) (A289849 (n + 1))

end

end A028613.P800159176891675579

/-!
# A028614: Expansion of (theta_3(z)*theta_3(12z)+theta_2(z)*theta_2(12z))^2.

The programs for A028614, there is no canonical definition to state claims against.
-/

/-! ## A028614.P5197356071870066980

`∑{#}[n, A028613(#)*A028613(n-#)]`
-/

namespace A028614.P5197356071870066980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028613 k * A028613 (n - k)

end

end A028614.P5197356071870066980

/-! ## A028614.P10269247874448822569

`A028638(A120634(n))`
-/

namespace A028614.P10269247874448822569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028638 (A120634 n).toNat

end

end A028614.P10269247874448822569

/-! ## A028614.P1447145349727890091

`and(-A329297(2*(n+1)), A329290(n))`
-/

namespace A028614.P1447145349727890091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A329297 (2 * (n + 1))) (A329290 n)

end

end A028614.P1447145349727890091

/-!
# A028615: Expansion of (theta_3(z)*theta_3(12z)+theta_2(z)*theta_2(12z))^3.

The programs for A028615, there is no canonical definition to state claims against.
-/

/-! ## A028615.P8390435168889109280

`A028639(A120634(n))`
-/

namespace A028615.P8390435168889109280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028639 (A120634 n).toNat

end

end A028615.P8390435168889109280

/-! ## A028615.P16175477828787062051

`A028623(A159966(n))`
-/

namespace A028615.P16175477828787062051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028623 (A159966 n).toNat

end

end A028615.P16175477828787062051

/-!
# A028616: Expansion of (theta_3(z)*theta_3(12z)+theta_2(z)*theta_2(12z))^4.

The programs for A028616, there is no canonical definition to state claims against.
-/

/-! ## A028616.P1477405618210928399

`∑{#}[n, A028614(#)*A028614(n-#)]`
-/

namespace A028616.P1477405618210928399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028614 k * A028614 (n - k)

end

end A028616.P1477405618210928399

/-! ## A028616.P17528590420576163449

`A028640(A120634(n))`
-/

namespace A028616.P17528590420576163449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028640 (A120634 n).toNat

end

end A028616.P17528590420576163449

/-! ## A028616.P1087317250288484442

`A028624(A159966(n)%A099971(n))`
-/

namespace A028616.P1087317250288484442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028624 (Int.tmod (A159966 n) (A099971 n)).toNat

end

end A028616.P1087317250288484442

/-!
# A028617: Expansion of (theta_3(z)*theta_3(13z) + theta_2(z)*theta_2(13z)).

The programs for A028617, there is no canonical definition to state claims against.
-/

/-! ## A028617.P11346440639168791539

`A022067(n)%26`
-/

namespace A028617.P11346440639168791539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022067 n) 26

end

end A028617.P11346440639168791539

/-! ## A028617.P2222316435101488199

`A022045(n)%A040156(n)`
-/

namespace A028617.P2222316435101488199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022045 n) (A040156 n)

end

end A028617.P2222316435101488199

/-! ## A028617.P9535549887313685429

`A033725(2*n)`
-/

namespace A028617.P9535549887313685429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033725 (2 * n)

end

end A028617.P9535549887313685429

/-!
# A028618: Expansion of (theta_3(z)*theta_3(13z)+theta_2(z)*theta_2(13z))^2.

The programs for A028618, there is no canonical definition to state claims against.
-/

/-! ## A028618.P6095275929500347759

`∑{#}[n, A028617(#)*A028617(n-#)]`
-/

namespace A028618.P6095275929500347759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028617 k * A028617 (n - k)

end

end A028618.P6095275929500347759

/-! ## A028618.P4529075700039858053

`A028634(xor(1, A077168(n)))`
-/

namespace A028618.P4529075700039858053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028634 (Int.xor 1 (A077168 n)).toNat

end

end A028618.P4529075700039858053

/-! ## A028618.P4049966931927949744

`A028622(A014601(n)%A353746(n+1))`
-/

namespace A028618.P4049966931927949744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028622 (Int.tmod (A014601 n) (A353746 (n + 1))).toNat

end

end A028618.P4049966931927949744

/-!
# A028619: Expansion of (theta_3(z)*theta_3(13z)+theta_2(z)*theta_2(13z))^3.

The programs for A028619, there is no canonical definition to state claims against.
-/

/-! ## A028619.P1143675511318186720

`A028615(A042948(n))`
-/

namespace A028619.P1143675511318186720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028615 (A042948 n).toNat

end

end A028619.P1143675511318186720

/-! ## A028619.P7107301124283900394

`A028635(xor(1, A077168(n)))`
-/

namespace A028619.P7107301124283900394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028635 (Int.xor 1 (A077168 n)).toNat

end

end A028619.P7107301124283900394

/-! ## A028619.P12748322007200353741

`A028623(comp[or(2, n)-1]%A200170(n+2))`
-/

namespace A028619.P12748322007200353741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028623 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A200170 (n + 2))).toNat

end

end A028619.P12748322007200353741

/-!
# A028620: Expansion of (theta_3(z)*theta_3(13z)+theta_2(z)*theta_2(13z))^4.

The programs for A028620, there is no canonical definition to state claims against.
-/

/-! ## A028620.P17144825085486992951

`∑{#}[n, A028618(#)*A028618(n-#)]`
-/

namespace A028620.P17144825085486992951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028618 k * A028618 (n - k)

end

end A028620.P17144825085486992951

/-! ## A028620.P12077752873582837432

`A028636(xor(1, A077168(n)))`
-/

namespace A028620.P12077752873582837432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028636 (Int.xor 1 (A077168 n)).toNat

end

end A028620.P12077752873582837432

/-! ## A028620.P2389227885439868828

`A028616(A042948(n)%A054682(3*n+2))`
-/

namespace A028620.P2389227885439868828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028616 (Int.tmod (A042948 n) (A054682 (3 * n + 2))).toNat

end

end A028620.P2389227885439868828

/-! ## A028620.P10467483339787618

`A028636(A065190(n+1))+A010054(A001605(2*n+1))`
-/

namespace A028620.P10467483339787618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028636 (A065190 (n + 1)).toNat + A010054 (A001605 (2 * n + 1)).toNat

end

end A028620.P10467483339787618

/-! ## A028620.P7114229015474029113

`A028616(A042948(n))`
-/

namespace A028620.P7114229015474029113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028616 (A042948 n).toNat

end

end A028620.P7114229015474029113

/-!
# A028621: Expansion of (theta_3(z)*theta_3(14z)+theta_2(z)*theta_2(14z)).

The programs for A028621, there is no canonical definition to state claims against.
-/

/-! ## A028621.P8295859692776405173

`and(A006530(A122111(1+n)), A028623(n))`
-/

namespace A028621.P8295859692776405173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A122111 (1 + n)).toNat) (A028623 n)

end

end A028621.P8295859692776405173

/-! ## A028621.P16035124463997773213

`A028629(A102370(n)-A104853(2*n))`
-/

namespace A028621.P16035124463997773213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028629 (A102370 n - A104853 (2 * n)).toNat

end

end A028621.P16035124463997773213

/-! ## A028621.P15010620631959812610

`and(A191417(n+1)+A000005(3*n+5), A028623(n))`
-/

namespace A028621.P15010620631959812610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A191417 (n + 1) + A000005 (3 * n + 5)) (A028623 n)

end

end A028621.P15010620631959812610

/-!
# A028622: Expansion of (theta_3(z)*theta_3(14z)+theta_2(z)*theta_2(14z))^2.

The programs for A028622, there is no canonical definition to state claims against.
-/

/-! ## A028622.P16328510255856651385

`∑{#}[n, A028621(#)*A028621(n-#)]`
-/

namespace A028622.P16328510255856651385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028621 k * A028621 (n - k)

end

end A028622.P16328510255856651385

/-! ## A028622.P1535475891700278939

`A028630(A102370(n))`
-/

namespace A028622.P1535475891700278939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028630 (A102370 n).toNat

end

end A028622.P1535475891700278939

/-!
# A028623: Expansion of (theta_3(z)*theta_3(14z)+theta_2(z)*theta_2(14z))^3.

The programs for A028623, there is no canonical definition to state claims against.
-/

/-! ## A028623.P8474849248011925967

`A028631(A120634(n))`
-/

namespace A028623.P8474849248011925967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028631 (A120634 n).toNat

end

end A028623.P8474849248011925967

/-!
# A028624: Expansion of (theta_3(z)*theta_3(14z)+theta_2(z)*theta_2(14z))^4.

The programs for A028624, there is no canonical definition to state claims against.
-/

/-! ## A028624.P9879211149680657185

`∑{#}[n, A028622(#)*A028622(n-#)]`
-/

namespace A028624.P9879211149680657185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028622 k * A028622 (n - k)

end

end A028624.P9879211149680657185

/-! ## A028624.P5215750392294871474

`A028616(A159966(n))`
-/

namespace A028624.P5215750392294871474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028616 (A159966 n).toNat

end

end A028624.P5215750392294871474

/-! ## A028624.P7158153894370967085

`A028632(A065190(n+1)%A119036(n+1))`
-/

namespace A028624.P7158153894370967085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028632 (Int.tmod (A065190 (n + 1)) (A119036 (n + 1))).toNat

end

end A028624.P7158153894370967085

/-!
# A028625: Expansion of (theta_3(z)*theta_3(15z)+theta_2(z)*theta_2(15z)).

The programs for A028625, there is no canonical definition to state claims against.
-/

/-! ## A028625.P262086583671946995

`A260671(4*n)`
-/

namespace A028625.P262086583671946995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (4 * n)

end

end A028625.P262086583671946995

/-! ## A028625.P4590366173380319135

`A028956(3*n)`
-/

namespace A028625.P4590366173380319135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 (3 * n)

end

end A028625.P4590366173380319135

/-! ## A028625.P7966089234621051391

`or(A000122(n), A028956(A008486(n)))`
-/

namespace A028625.P7966089234621051391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A028956 (A008486 n).toNat)

end

end A028625.P7966089234621051391

/-! ## A028625.P16975174688645248156

`2*A122855(4*n)-A192323(4*n)`
-/

namespace A028625.P16975174688645248156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122855 (4 * n) - A192323 (4 * n)

end

end A028625.P16975174688645248156

/-! ## A028625.P15559370136572884151

`A260671(A008706(n)-n)-A000007(n)`
-/

namespace A028625.P15559370136572884151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (A008706 n - (n : ℤ)).toNat - A000007 n

end

end A028625.P15559370136572884151

/-! ## A028625.P12667296863820795609

`A028956(A008706(n))+A000007(n)`
-/

namespace A028625.P12667296863820795609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 (A008706 n).toNat + A000007 n

end

end A028625.P12667296863820795609

/-! ## A028625.P16116152320038928010

`A192323(12*n)`
-/

namespace A028625.P16116152320038928010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (12 * n)

end

end A028625.P16116152320038928010

/-! ## A028625.P332346573885840084

`A028956(n²)+A028956(A008486(n))`
-/

namespace A028625.P332346573885840084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 (n ^ 2) + A028956 (A008486 n).toNat

end

end A028625.P332346573885840084

/-! ## A028625.P13667211612368190249

`A028956(n²)+A028956(A008706(n))`
-/

namespace A028625.P13667211612368190249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 (n ^ 2) + A028956 (A008706 n).toNat

end

end A028625.P13667211612368190249

/-!
# A028626: Expansion of (theta_3(z)*theta_3(15z) + theta_2(z)*theta_2(15z))^2.

The programs for A028626, there is no canonical definition to state claims against.
-/

/-! ## A028626.P17887718651815564058

`∑{#}[n, A028625(#)*A028625(n-#)]`
-/

namespace A028626.P17887718651815564058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028625 k * A028625 (n - k)

end

end A028626.P17887718651815564058

/-!
# A028628: Expansion of (theta_3(z)*theta_3(15z) + theta_2(z)*theta_2(15z))^4.

The programs for A028628, there is no canonical definition to state claims against.
-/

/-! ## A028628.P17502265302333198667

`∑{#}[n, A028626(#)*A028626(n-#)]`
-/

namespace A028628.P17502265302333198667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028626 k * A028626 (n - k)

end

end A028628.P17502265302333198667

/-! ## A028628.P8452166821961375309

`A000005(A254870(n+1))*A053012(n+1)`
-/

namespace A028628.P8452166821961375309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A254870 (n + 1)).toNat * A053012 (n + 1)

end

end A028628.P8452166821961375309

/-! ## A028628.P4944768141590944561

`A028636(2*n)+A028636(A077168(2*n))`
-/

namespace A028628.P4944768141590944561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028636 (2 * n) + A028636 (A077168 (2 * n)).toNat

end

end A028628.P4944768141590944561

/-!
# A028629: Expansion of (theta_3(z)*theta_3(16z)+theta_2(z)*theta_2(16z)).

The programs for A028629, there is no canonical definition to state claims against.
-/

/-! ## A028629.P6313810259845867082

`and(A010702(or(n-4, n)²), A028631(n))`
-/

namespace A028629.P6313810259845867082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 (Int.lor ((n : ℤ) - 4) (n : ℤ) ^ 2).toNat) (A028631 n)

end

end A028629.P6313810259845867082

/-! ## A028629.P5776399295776663182

`and(A010702(or(2*n, n)*n), A028631(n))`
-/

namespace A028629.P5776399295776663182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 (Nat.lor (2 * n) n * n)) (A028631 n)

end

end A028629.P5776399295776663182

/-! ## A028629.P12115366884409217525

`and(A010702(n*A097932(n+1)), A028631(n))`
-/

namespace A028629.P12115366884409217525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 ((n : ℤ) * A097932 (n + 1)).toNat) (A028631 n)

end

end A028629.P12115366884409217525

/-! ## A028629.P7028684687634827807

`and(A010702(A006918(n)), A028631(n))`
-/

namespace A028629.P7028684687634827807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 (A006918 n).toNat) (A028631 n)

end

end A028629.P7028684687634827807

/-! ## A028629.P10867499651485307955

`and(A010702(A145284(n+1)), A028631(n))`
-/

namespace A028629.P10867499651485307955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 (A145284 (n + 1)).toNat) (A028631 n)

end

end A028629.P10867499651485307955

/-! ## A028629.P1412815597336405467

`and(A010702(n*A039649(3*n+4)), A028631(n))`
-/

namespace A028629.P1412815597336405467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 ((n : ℤ) * A039649 (3 * n + 4)).toNat) (A028631 n)

end

end A028629.P1412815597336405467

/-! ## A028629.P16543484688995922856

`and(A010702(n*A207873(n+1)), A028631(n))`
-/

namespace A028629.P16543484688995922856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 ((n : ℤ) * A207873 (n + 1)).toNat) (A028631 n)

end

end A028629.P16543484688995922856

/-! ## A028629.P13922670035724839784

`and(A010702(A032525(n)), A028631(n))`
-/

namespace A028629.P13922670035724839784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 (A032525 n).toNat) (A028631 n)

end

end A028629.P13922670035724839784

/-! ## A028629.P14670056749577840314

`and(A028631(n), A034444(A000069(n+1)²))`
-/

namespace A028629.P14670056749577840314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028631 n) (A034444 (A000069 (n + 1) ^ 2).toNat)

end

end A028629.P14670056749577840314

/-!
# A028630: Expansion of (theta_3(z)*theta_3(16z)+theta_2(z)*theta_2(16z))^2.

The programs for A028630, there is no canonical definition to state claims against.
-/

/-! ## A028630.P3521310336386309080

`∑{#}[n, A028629(#)*A028629(n-#)]`
-/

namespace A028630.P3521310336386309080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028629 k * A028629 (n - k)

end

end A028630.P3521310336386309080

/-! ## A028630.P13293742801584531727

`A028654(A120634(n))`
-/

namespace A028630.P13293742801584531727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028654 (A120634 n).toNat

end

end A028630.P13293742801584531727

/-! ## A028630.P12439617859292958762

`A028638(A065190(n+1))+A010054(A001605(n+1))`
-/

namespace A028630.P12439617859292958762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028638 (A065190 (n + 1)).toNat + A010054 (A001605 (n + 1)).toNat

end

end A028630.P12439617859292958762

/-!
# A028631: Expansion of (theta_3(z)*theta_3(16z)+theta_2(z)*theta_2(16z))^3.

The programs for A028631, there is no canonical definition to state claims against.
-/

/-! ## A028631.P11430624226162795437

`A028655(A120634(n))`
-/

namespace A028631.P11430624226162795437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028655 (A120634 n).toNat

end

end A028631.P11430624226162795437

/-! ## A028631.P11458513652187130542

`A028639(A065190(n+1))+A010054(A001605(n+1))`
-/

namespace A028631.P11458513652187130542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028639 (A065190 (n + 1)).toNat + A010054 (A001605 (n + 1)).toNat

end

end A028631.P11458513652187130542

/-!
# A028632: Expansion of (theta_3(z)*theta_3(16z)+theta_2(z)*theta_2(16z))^4.

The programs for A028632, there is no canonical definition to state claims against.
-/

/-! ## A028632.P9131385336011374922

`∑{#}[n, A028630(#)*A028630(n-#)]`
-/

namespace A028632.P9131385336011374922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028630 k * A028630 (n - k)

end

end A028632.P9131385336011374922

/-! ## A028632.P7646475116476552827

`A028640(A159966(n)%A343729(n+1))`
-/

namespace A028632.P7646475116476552827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028640 (Int.tmod (A159966 n) (A343729 (n + 1))).toNat

end

end A028632.P7646475116476552827

/-! ## A028632.P8867019731714493509

`A028640(A065190(n+1))+A010054(A001605(n+1))`
-/

namespace A028632.P8867019731714493509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028640 (A065190 (n + 1)).toNat + A010054 (A001605 (n + 1)).toNat

end

end A028632.P8867019731714493509

/-!
# A028633: Expansion of (theta_3(z)*theta_3(17z) + theta_2(z)*theta_2(17z)).

The programs for A028633, there is no canonical definition to state claims against.
-/

/-! ## A028633.P11090611900384224146

`A022071(n)%A040272(n)`
-/

namespace A028633.P11090611900384224146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022071 n) (A040272 n)

end

end A028633.P11090611900384224146

/-! ## A028633.P13194425491014352217

`A033729(2*n)`
-/

namespace A028633.P13194425491014352217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033729 (2 * n)

end

end A028633.P13194425491014352217

/-! ## A028633.P793719409210906732

`A022049(n)%A040272(n)`
-/

namespace A028633.P793719409210906732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022049 n) (A040272 n)

end

end A028633.P793719409210906732

/-! ## A028633.P18314490557615165650

`and(A028635(n), A289849(n+1))`
-/

namespace A028633.P18314490557615165650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028635 n) (A289849 (n + 1))

end

end A028633.P18314490557615165650

/-!
# A028634: Expansion of (theta_3(z)*theta_3(17z)+theta_2(z)*theta_2(17z))^2.

The programs for A028634, there is no canonical definition to state claims against.
-/

/-! ## A028634.P5955719347293672267

`∑{#}[n, A028633(#)*A028633(n-#)]`
-/

namespace A028634.P5955719347293672267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028633 k * A028633 (n - k)

end

end A028634.P5955719347293672267

/-! ## A028634.P4422860532392903074

`A028630(A042948(n))`
-/

namespace A028634.P4422860532392903074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028630 (A042948 n).toNat

end

end A028634.P4422860532392903074

/-! ## A028634.P10922795546131051260

`A028638(lt[A058965(n), A370154(n+2)])`
-/

namespace A028634.P10922795546131051260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370154 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028638 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028634.P10922795546131051260

/-!
# A028635: Expansion of (theta_3(z)*theta_3(17z)+theta_2(z)*theta_2(17z))^3.

The programs for A028635, there is no canonical definition to state claims against.
-/

/-! ## A028635.P4798471250021145593

`A028631(A042948(n))`
-/

namespace A028635.P4798471250021145593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028631 (A042948 n).toNat

end

end A028635.P4798471250021145593

/-! ## A028635.P12175788610425734336

`A028639(A014601(n)%A120937(2*n))`
-/

namespace A028635.P12175788610425734336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028639 (Int.tmod (A014601 n) (A120937 (2 * n))).toNat

end

end A028635.P12175788610425734336

/-!
# A028636: Expansion of (theta_3(z)*theta_3(17z)+theta_2(z)*theta_2(17z))^4.

The programs for A028636, there is no canonical definition to state claims against.
-/

/-! ## A028636.P18328122994247967761

`∑{#}[n, A028634(#)*A028634(n-#)]`
-/

namespace A028636.P18328122994247967761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028634 k * A028634 (n - k)

end

end A028636.P18328122994247967761

/-! ## A028636.P2570856236505755905

`A028640(A014601(n))`
-/

namespace A028636.P2570856236505755905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028640 (A014601 n).toNat

end

end A028636.P2570856236505755905

/-!
# A028637: Expansion of (theta_3(z)*theta_3(18z)+theta_2(z)*theta_2(18z)).

The programs for A028637, there is no canonical definition to state claims against.
-/

/-! ## A028637.P13431969299090177671

`A010892(n)*A263767(3*n)`
-/

namespace A028637.P13431969299090177671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A263767 (3 * n)

end

end A028637.P13431969299090177671

/-! ## A028637.P14687989592222123130

`abs(A049347(n)*A263767(3*n))`
-/

namespace A028637.P14687989592222123130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049347 n * A263767 (3 * n)|

end

end A028637.P14687989592222123130

/-! ## A028637.P11132543013781471890

`lcm((n+1)%3, A263767(A008585(n)))`
-/

namespace A028637.P11132543013781471890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n + 1) % 3 : ℕ) : ℤ) (A263767 (A008585 n).toNat)

end

end A028637.P11132543013781471890

/-! ## A028637.P13458985144192346917

`lcm(A049347(n), A263767(A008585(n)))`
-/

namespace A028637.P13458985144192346917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049347 n) (A263767 (A008585 n).toNat)

end

end A028637.P13458985144192346917

/-! ## A028637.P11475085800009782123

`A049347(n)*A263767(3*n)/A033999(n)`
-/

namespace A028637.P11475085800009782123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 n * A263767 (3 * n) : ℚ) / (A033999 n : ℚ)

end

end A028637.P11475085800009782123

/-! ## A028637.P7923714264902159318

`lcm(A063524(n)+1, A049347(n)*A263767(3*n))`
-/

namespace A028637.P7923714264902159318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063524 n + 1) (A049347 n * A263767 (3 * n))

end

end A028637.P7923714264902159318

/-! ## A028637.P6279689578896681620

`and(A028639(n), A122855(A167614(2*(n+1))))`
-/

namespace A028637.P6279689578896681620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028639 n) (A122855 (A167614 (2 * (n + 1))).toNat)

end

end A028637.P6279689578896681620

/-! ## A028637.P11730785584910426331

`and(A122855(A167614(2*(n+1))), A138805(n))`
-/

namespace A028637.P11730785584910426331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122855 (A167614 (2 * (n + 1))).toNat) (A138805 n)

end

end A028637.P11730785584910426331

/-!
# A028638: Expansion of (theta_3(z)*theta_3(18z)+theta_2(z)*theta_2(18z))^2.

The programs for A028638, there is no canonical definition to state claims against.
-/

/-! ## A028638.P14193640885779522528

`∑{#}[n, A028637(#)*A028637(n-#)]`
-/

namespace A028638.P14193640885779522528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028637 k * A028637 (n - k)

end

end A028638.P14193640885779522528

/-! ## A028638.P13404179277833999229

`A028646(A120634(n)%A001605(n+1))`
-/

namespace A028638.P13404179277833999229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028646 (Int.tmod (A120634 n) (A001605 (n + 1))).toNat

end

end A028638.P13404179277833999229

/-! ## A028638.P3615020770900752390

`A028646(A120634(n))`
-/

namespace A028638.P3615020770900752390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028646 (A120634 n).toNat

end

end A028638.P3615020770900752390

/-! ## A028638.P16519853510610402025

`A028646(A065190(n+1))+A010054(A141214(n))`
-/

namespace A028638.P16519853510610402025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028646 (A065190 (n + 1)).toNat + A010054 (A141214 n).toNat

end

end A028638.P16519853510610402025

/-! ## A028638.P13636141737799299869

`and(A028606(n), A137284(n))`
-/

namespace A028638.P13636141737799299869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028606 n) (A137284 n)

end

end A028638.P13636141737799299869

/-!
# A028639: Expansion of (theta_3(z)*theta_3(18z)+theta_2(z)*theta_2(18z))^3.

The programs for A028639, there is no canonical definition to state claims against.
-/

/-! ## A028639.P5769898669362067109

`A028647(A120634(n)%A029494(n+1))`
-/

namespace A028639.P5769898669362067109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028647 (Int.tmod (A120634 n) (A029494 (n + 1))).toNat

end

end A028639.P5769898669362067109

/-! ## A028639.P16524633779338933073

`A028647(A120634(n))`
-/

namespace A028639.P16524633779338933073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028647 (A120634 n).toNat

end

end A028639.P16524633779338933073

/-!
# A028640: Expansion of (theta_3(z)*theta_3(18z)+theta_2(z)*theta_2(18z))^4.

The programs for A028640, there is no canonical definition to state claims against.
-/

/-! ## A028640.P10686873979283627470

`∑{#}[n, A028638(#)*A028638(n-#)]`
-/

namespace A028640.P10686873979283627470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028638 k * A028638 (n - k)

end

end A028640.P10686873979283627470

/-! ## A028640.P7944547501880651160

`A028648(A120634(n))`
-/

namespace A028640.P7944547501880651160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (A120634 n).toNat

end

end A028640.P7944547501880651160

/-!
# A028641: Expansion of theta_3(q) * theta_3(q^19) + theta_2(q) * theta_2(q^19) in powers of q.

The programs for A028641, the canonical program `A028641.P1682886195086187544` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028641 has offset 0).

The definition of A028641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028641.P1682886195086187544

`gcd(2, T(n-1,k+1))*A035171(n)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A028641

/-- `gcd(2, T(n-1,k+1))*A035171(n)` -/
def P1682886195086187544.Spec : Prop :=
  ∀ n, P1682886195086187544.a n = A028641 n

theorem P1682886195086187544.correct : P1682886195086187544.Spec := by
  intro n
  simp only [A028641]

end A028641

/-! ## A028641.P13791089646457567183

`A022073(n)%A040342(n)`
-/

namespace A028641.P13791089646457567183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022073 n) (A040342 n)

end

end A028641.P13791089646457567183

namespace A028641

/-- `A022073(n)%A040342(n)` -/
def P13791089646457567183.Spec : Prop :=
  ∀ n, P13791089646457567183.a n = A028641 n

end A028641

/-! ## A028641.P13670610726119059802

`A033731(4*n)`
-/

namespace A028641.P13670610726119059802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033731 (4 * n)

end

end A028641.P13670610726119059802

namespace A028641

/-- `A033731(4*n)` -/
def P13670610726119059802.Spec : Prop :=
  ∀ n, P13670610726119059802.a n = A028641 n

end A028641

/-! ## A028641.P3004228978900354309

`A033731(A008574(n))-A000007(n)`
-/

namespace A028641.P3004228978900354309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033731 (A008574 n).toNat - A000007 n

end

end A028641.P3004228978900354309

namespace A028641

/-- `A033731(A008574(n))-A000007(n)` -/
def P3004228978900354309.Spec : Prop :=
  ∀ n, P3004228978900354309.a n = A028641 n

end A028641

/-! ## A028641.P7785348088343723983

`A035171(A008574(n))*A040000(n)`
-/

namespace A028641.P7785348088343723983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (A008574 n).toNat * A040000 n

end

end A028641.P7785348088343723983

namespace A028641

/-- `A035171(A008574(n))*A040000(n)` -/
def P7785348088343723983.Spec : Prop :=
  ∀ n, P7785348088343723983.a n = A028641 n

end A028641

/-! ## A028641.P4724023172134024475

`A035171(A008574(n))*A036453(n+1)`
-/

namespace A028641.P4724023172134024475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (A008574 n).toNat * A036453 (n + 1)

end

end A028641.P4724023172134024475

namespace A028641

/-- `A035171(A008574(n))*A036453(n+1)` -/
def P4724023172134024475.Spec : Prop :=
  ∀ n, P4724023172134024475.a n = A028641 n

end A028641

/-! ## A028641.P10476125986019987777

`A033731(A008574(n)+A000007(n))+A000007(n)`
-/

namespace A028641.P10476125986019987777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033731 (A008574 n + A000007 n).toNat + A000007 n

end

end A028641.P10476125986019987777

namespace A028641

/-- `A033731(A008574(n)+A000007(n))+A000007(n)` -/
def P10476125986019987777.Spec : Prop :=
  ∀ n, P10476125986019987777.a n = A028641 n

end A028641

/-!
# A028642: Expansion of (theta_3(z)*theta_3(19z) + theta_2(z)*theta_2(19z))^2.

The programs for A028642, the canonical program `A028642.P10872637354643920535` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028642 has offset 0).

The definition of A028642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028642.P10872637354643920535

`∑{#}[n, A028641(#)*A028641(n-#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A028642

/-- `∑{#}[n, A028641(#)*A028641(n-#)]` -/
def P10872637354643920535.Spec : Prop :=
  ∀ n, P10872637354643920535.a n = A028642 n

theorem P10872637354643920535.correct : P10872637354643920535.Spec := by
  intro n
  simp only [A028642]

end A028642

/-!
# A028644: Expansion of (theta_3(z)*theta_3(19z) + theta_2(z)*theta_2(19z))^4.

The programs for A028644, the canonical program `A028644.P14001608310389930881` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028644 has offset 0).

The definition of A028644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028644.P14001608310389930881

`∑{#}[n, A028642(#)*A028642(n-#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A028644

/-- `∑{#}[n, A028642(#)*A028642(n-#)]` -/
def P14001608310389930881.Spec : Prop :=
  ∀ n, P14001608310389930881.a n = A028644 n

theorem P14001608310389930881.correct : P14001608310389930881.Spec := by
  intro n
  simp only [A028644]

end A028644

/-! ## A028644.P18179250919569612918

`A195208(A009858(n+1))`
-/

namespace A028644.P18179250919569612918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195208 (A009858 (n + 1)).toNat

end

end A028644.P18179250919569612918

namespace A028644

/-- `A195208(A009858(n+1))` -/
def P18179250919569612918.Spec : Prop :=
  ∀ n, P18179250919569612918.a n = A028644 n

end A028644

/-! ## A028644.P5817007159458022852

`A000118(lt[A236932(n), 13])`
-/

namespace A028644.P5817007159458022852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236932 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A028644.P5817007159458022852

namespace A028644

/-- `A000118(lt[A236932(n), 13])` -/
def P5817007159458022852.Spec : Prop :=
  ∀ n, P5817007159458022852.a n = A028644 n

end A028644

/-!
# A028645: Expansion of (theta_3(z)*theta_3(20z)+theta_2(z)*theta_2(20z)).

The programs for A028645, there is no canonical definition to state claims against.
-/

/-! ## A028645.P11729659578350465212

`A028653(A159966(n))`
-/

namespace A028645.P11729659578350465212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028653 (A159966 n).toNat

end

end A028645.P11729659578350465212

/-! ## A028645.P5941147302853318161

`and(A028647(n), A134982(n+1))`
-/

namespace A028645.P5941147302853318161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028647 n) (A134982 (n + 1))

end

end A028645.P5941147302853318161

/-!
# A028646: Expansion of (theta_3(z)*theta_3(20z)+theta_2(z)*theta_2(20z))^2.

The programs for A028646, there is no canonical definition to state claims against.
-/

/-! ## A028646.P6209761318380987044

`∑{#}[n, A028645(#)*A028645(n-#)]`
-/

namespace A028646.P6209761318380987044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028645 k * A028645 (n - k)

end

end A028646.P6209761318380987044

/-! ## A028646.P6617414717174362228

`and(A028614(n), A250316(A322315(n+1)))`
-/

namespace A028646.P6617414717174362228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028614 n) (A250316 (A322315 (n + 1)).toNat)

end

end A028646.P6617414717174362228

/-! ## A028646.P16614477018840450212

`and(A028614(n), A343659(A317230(n+1)))`
-/

namespace A028646.P16614477018840450212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028614 n) (A343659 (A317230 (n + 1)).toNat)

end

end A028646.P16614477018840450212

/-! ## A028646.P15151326330357942792

`and(A028614(n), A128849(n))`
-/

namespace A028646.P15151326330357942792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028614 n) (A128849 n)

end

end A028646.P15151326330357942792

/-! ## A028646.P15839805965934543214

`and(A028614(n), A113182(n+1))`
-/

namespace A028646.P15839805965934543214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028614 n) (A113182 (n + 1))

end

end A028646.P15839805965934543214

/-!
# A028647: Expansion of (theta_3(z)*theta_3(20z)+theta_2(z)*theta_2(20z))^3.

The programs for A028647, there is no canonical definition to state claims against.
-/

/-! ## A028647.P1947260378803066636

`A028655(A159966(n))`
-/

namespace A028647.P1947260378803066636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028655 (A159966 n).toNat

end

end A028647.P1947260378803066636

/-! ## A028647.P8507781102301617884

`A028655(A065190(n+1))+A010054(A141214(n))`
-/

namespace A028647.P8507781102301617884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028655 (A065190 (n + 1)).toNat + A010054 (A141214 n).toNat

end

end A028647.P8507781102301617884

/-!
# A028648: Expansion of (theta_3(z)*theta_3(20z)+theta_2(z)*theta_2(20z))^4.

The programs for A028648, there is no canonical definition to state claims against.
-/

/-! ## A028648.P10837979741173648965

`∑{#}[n, A028646(#)*A028646(n-#)]`
-/

namespace A028648.P10837979741173648965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028646 k * A028646 (n - k)

end

end A028648.P10837979741173648965

/-! ## A028648.P15176933411312764268

`A028656(A159966(n)%A054682(n+1))`
-/

namespace A028648.P15176933411312764268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028656 (Int.tmod (A159966 n) (A054682 (n + 1))).toNat

end

end A028648.P15176933411312764268

/-! ## A028648.P16013193125078806599

`A028656(A159966(n)%A120937(n))`
-/

namespace A028648.P16013193125078806599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028656 (Int.tmod (A159966 n) (A120937 n)).toNat

end

end A028648.P16013193125078806599

/-! ## A028648.P10053865452992045365

`A028656(A159966(n))`
-/

namespace A028648.P10053865452992045365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028656 (A159966 n).toNat

end

end A028648.P10053865452992045365

/-!
# A028649: Expansion of (theta_3(z)*theta_3(21z) + theta_2(z)*theta_2(21z)).

The programs for A028649, there is no canonical definition to state claims against.
-/

/-! ## A028649.P17506724719578869811

`A028653(A014601(n)%A054682(n+1))`
-/

namespace A028649.P17506724719578869811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028653 (Int.tmod (A014601 n) (A054682 (n + 1))).toNat

end

end A028649.P17506724719578869811

/-! ## A028649.P10230349965212556503

`A028645(A042948(n)%A054682(n+1))`
-/

namespace A028649.P10230349965212556503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (Int.tmod (A042948 n) (A054682 (n + 1))).toNat

end

end A028649.P10230349965212556503

/-! ## A028649.P1591290355755594319

`A028653(A014601(n)%A120937(n))`
-/

namespace A028649.P1591290355755594319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028653 (Int.tmod (A014601 n) (A120937 n)).toNat

end

end A028649.P1591290355755594319

/-! ## A028649.P6508702027584480087

`A028645(A042948(n)%A120937(n))`
-/

namespace A028649.P6508702027584480087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (Int.tmod (A042948 n) (A120937 n)).toNat

end

end A028649.P6508702027584480087

/-! ## A028649.P12297320586103997946

`and(A028651(n), A289849(n+1))`
-/

namespace A028649.P12297320586103997946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028651 n) (A289849 (n + 1))

end

end A028649.P12297320586103997946

/-!
# A028650: Expansion of (theta_3(z)*theta_3(21z)+theta_2(z)*theta_2(21z))^2.

The programs for A028650, there is no canonical definition to state claims against.
-/

/-! ## A028650.P7705520207271256365

`∑{#}[n, A028649(#)*A028649(n-#)]`
-/

namespace A028650.P7705520207271256365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028649 k * A028649 (n - k)

end

end A028650.P7705520207271256365

/-! ## A028650.P10375408735139362141

`A028654(A014601(n)%A119175(n+1))`
-/

namespace A028650.P10375408735139362141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028654 (Int.tmod (A014601 n) (A119175 (n + 1))).toNat

end

end A028650.P10375408735139362141

/-! ## A028650.P8457606188464730758

`A028654(0+A014601(n))`
-/

namespace A028650.P8457606188464730758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028654 (0 + A014601 n).toNat

end

end A028650.P8457606188464730758

/-! ## A028650.P5539910482866640447

`A028654(2*n+1)+0+A028654(2*n)`
-/

namespace A028650.P5539910482866640447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028654 (2 * n + 1) + (0 + A028654 (2 * n))

end

end A028650.P5539910482866640447

/-! ## A028650.P9219853008552831039

`and(A028618(n), A112511(A077168(n)))`
-/

namespace A028650.P9219853008552831039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028618 n) (A112511 (A077168 n).toNat)

end

end A028650.P9219853008552831039

/-!
# A028651: Expansion of (theta_3(z)*theta_3(21z)+theta_2(z)*theta_2(21z))^3.

The programs for A028651, there is no canonical definition to state claims against.
-/

/-! ## A028651.P9429055452512830702

`A028655(A014601(n))`
-/

namespace A028651.P9429055452512830702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028655 (A014601 n).toNat

end

end A028651.P9429055452512830702

/-! ## A028651.P17700223571446749827

`A028647(A042948(n)+0)`
-/

namespace A028651.P17700223571446749827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028647 (A042948 n + 0).toNat

end

end A028651.P17700223571446749827

/-!
# A028652: Expansion of (theta_3(z)*theta_3(21z)+theta_2(z)*theta_2(21z))^4.

The programs for A028652, there is no canonical definition to state claims against.
-/

/-! ## A028652.P13364572226561201006

`∑{#}[n, A028650(#)*A028650(n-#)]`
-/

namespace A028652.P13364572226561201006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028650 k * A028650 (n - k)

end

end A028652.P13364572226561201006

/-! ## A028652.P7400117757367901434

`A028648(A042948(n))`
-/

namespace A028652.P7400117757367901434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (A042948 n).toNat

end

end A028652.P7400117757367901434

/-!
# A028653: Expansion of (theta_3(z)*theta_3(22z)+theta_2(z)*theta_2(22z)).

The programs for A028653, there is no canonical definition to state claims against.
-/

/-! ## A028653.P496890760959206570

`and(A028655(n), A402435(n))`
-/

namespace A028653.P496890760959206570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028655 n) (A402435 n)

end

end A028653.P496890760959206570

/-! ## A028653.P4065670802738952962

`A028645(A159966(n))*A168046(A097519(2*n+3))`
-/

namespace A028653.P4065670802738952962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (A159966 n).toNat * A168046 (A097519 (2 * n + 3)).toNat

end

end A028653.P4065670802738952962

/-! ## A028653.P11508802793437051834

`A028645(A159966(n))`
-/

namespace A028653.P11508802793437051834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (A159966 n).toNat

end

end A028653.P11508802793437051834

/-! ## A028653.P5134520901672169850

`and(A138811(n), A214002(n+1))`
-/

namespace A028653.P5134520901672169850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138811 n) (A214002 (n + 1))

end

end A028653.P5134520901672169850

/-! ## A028653.P10361890433182115027

`and(A138811(n), A329120(n))`
-/

namespace A028653.P10361890433182115027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138811 n) (A329120 n)

end

end A028653.P10361890433182115027

/-!
# A028654: Expansion of (theta_3(z)*theta_3(22z)+theta_2(z)*theta_2(22z))^2.

The programs for A028654, there is no canonical definition to state claims against.
-/

/-! ## A028654.P583587936932016385

`∑{#}[n, A028653(#)*A028653(n-#)]`
-/

namespace A028654.P583587936932016385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028653 k * A028653 (n - k)

end

end A028654.P583587936932016385

/-! ## A028654.P1154642794100484613

`and(A061799(n+1), A162351(A028639(n)))`
-/

namespace A028654.P1154642794100484613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061799 (n + 1)) (A162351 (A028639 n).toNat)

end

end A028654.P1154642794100484613

/-! ## A028654.P5300148906722670536

`and(A003056(A081489(n+1)), A028622(n))`
-/

namespace A028654.P5300148906722670536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003056 (A081489 (n + 1)).toNat) (A028622 n)

end

end A028654.P5300148906722670536

/-! ## A028654.P11571635205740164146

`and(A028622(n), A031886(A166661(n+1)))`
-/

namespace A028654.P11571635205740164146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028622 n) (A031886 (A166661 (n + 1)).toNat)

end

end A028654.P11571635205740164146

/-! ## A028654.P9240864811712783781

`and(A028622(n), A321197(n))`
-/

namespace A028654.P9240864811712783781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028622 n) (A321197 n)

end

end A028654.P9240864811712783781

/-!
# A028655: Expansion of (theta_3(z)*theta_3(22z)+theta_2(z)*theta_2(22z))^3.

The programs for A028655, there is no canonical definition to state claims against.
-/

/-! ## A028655.P9999805786965240400

`A028663(A120634(n)%A084644(n+1))`
-/

namespace A028655.P9999805786965240400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028663 (Int.tmod (A120634 n) (A084644 (n + 1))).toNat

end

end A028655.P9999805786965240400

/-! ## A028655.P15851612116696379799

`A028663(A120634(n))`
-/

namespace A028655.P15851612116696379799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028663 (A120634 n).toNat

end

end A028655.P15851612116696379799

/-!
# A028656: Expansion of (theta_3(z)*theta_3(22z)+theta_2(z)*theta_2(22z))^4.

The programs for A028656, there is no canonical definition to state claims against.
-/

/-! ## A028656.P4978074682561624745

`∑{#}[n, A028654(#)*A028654(n-#)]`
-/

namespace A028656.P4978074682561624745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028654 k * A028654 (n - k)

end

end A028656.P4978074682561624745

/-! ## A028656.P2185093779620541820

`A028664(A120634(n))`
-/

namespace A028656.P2185093779620541820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028664 (A120634 n).toNat

end

end A028656.P2185093779620541820

/-! ## A028656.P15306257203886895389

`A028648(A159966(n)%A175552(3*n+4))`
-/

namespace A028656.P15306257203886895389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (Int.tmod (A159966 n) (A175552 (3 * n + 4))).toNat

end

end A028656.P15306257203886895389

/-! ## A028656.P14235656539867444844

`A028648(A159966(n)%A054682(n+1))`
-/

namespace A028656.P14235656539867444844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (Int.tmod (A159966 n) (A054682 (n + 1))).toNat

end

end A028656.P14235656539867444844

/-! ## A028656.P17029100361785122157

`A028648(A159966(n)%A120937(n))`
-/

namespace A028656.P17029100361785122157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (Int.tmod (A159966 n) (A120937 n)).toNat

end

end A028656.P17029100361785122157

/-!
# A028657: Triangle read by rows: T(n,k) = number of n-node graphs with k nodes in distinguished bipartite block, k = 0..n.

The programs for A028657, there is no canonical definition to state claims against.
-/

/-! ## A028657.P18406875396932686209

`A331995(A086617(n))`
-/

namespace A028657.P18406875396932686209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (A086617 n).toNat

end

end A028657.P18406875396932686209

/-! ## A028657.P11294008283068187287

`A343380(A088699(n))+A088699(n)`
-/

namespace A028657.P11294008283068187287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A088699 n).toNat + A088699 n

end

end A028657.P11294008283068187287

/-! ## A028657.P1902742461605321024

`A343380(A094526(n))+A094526(n)`
-/

namespace A028657.P1902742461605321024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A094526 n).toNat + A094526 n

end

end A028657.P1902742461605321024

/-! ## A028657.P3651182129658174705

`A287929(A088699(n)%A078861(n+1))`
-/

namespace A028657.P3651182129658174705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287929 (Int.tmod (A088699 n) (A078861 (n + 1))).toNat

end

end A028657.P3651182129658174705

/-! ## A028657.P17432389877644209997

`A327913(n)`
-/

namespace A028657.P17432389877644209997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327913 n

end

end A028657.P17432389877644209997

/-!
# A028658: Expansion of (theta_3(z)*theta_3(23z) + theta_2(z)*theta_2(23z))^2.

The programs for A028658, there is no canonical definition to state claims against.
-/

/-! ## A028658.P1583781752708198657

`(A253185(2*n)+A253185(4*n))/2`
-/

namespace A028658.P1583781752708198657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253185 (2 * n) + A253185 (4 * n) : ℚ) / 2

end

end A028658.P1583781752708198657

/-! ## A028658.P5389319780281929188

`A004525(A253185(2*n)+A253185(4*n))`
-/

namespace A028658.P5389319780281929188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A253185 (2 * n) + A253185 (4 * n)).toNat

end

end A028658.P5389319780281929188

/-! ## A028658.P7591501021493597809

`A006370(A253185(2*n)+A253185(4*n))`
-/

namespace A028658.P7591501021493597809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A253185 (2 * n) + A253185 (4 * n)).toNat

end

end A028658.P7591501021493597809

/-! ## A028658.P12125970220785042272

`∑{#}[n, A028959(#)*A028959(n-#)]`
-/

namespace A028658.P12125970220785042272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028959 k * A028959 (n - k)

end

end A028658.P12125970220785042272

/-!
# A028660: Expansion of (theta_3(z)*theta_3(23z)+theta_2(z)*theta_2(23z))^4.

The programs for A028660, there is no canonical definition to state claims against.
-/

/-! ## A028660.P5919458133997165397

`∑{#}[n, A028658(#)*A028658(n-#)]`
-/

namespace A028660.P5919458133997165397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028658 k * A028658 (n - k)

end

end A028660.P5919458133997165397

/-! ## A028660.P15182294120971105591

`A289814(A241455(n+1))+A000118(n)`
-/

namespace A028660.P15182294120971105591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A241455 (n + 1)).toNat + A000118 n

end

end A028660.P15182294120971105591

/-! ## A028660.P2473044782984257771

`A000118(eq[A300978(2*n), A328220(n)])`
-/

namespace A028660.P2473044782984257771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300978 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028660.P2473044782984257771

/-!
# A028661: Expansion of (theta_3(z)*theta_3(24z)+theta_2(z)*theta_2(24z)) in powers of q^(1/4).

The programs for A028661, there is no canonical definition to state claims against.
-/

/-! ## A028661.P14968212827280062846

`and(A010703(n²), A028663(n))`
-/

namespace A028661.P14968212827280062846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010703 (n ^ 2)) (A028663 n)

end

end A028661.P14968212827280062846

/-! ## A028661.P2010634362933021057

`and(A010704(n²), A028663(n))`
-/

namespace A028661.P2010634362933021057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010704 (n ^ 2)) (A028663 n)

end

end A028661.P2010634362933021057

/-! ## A028661.P13856983844673857866

`and(A010705(n²), A028663(n))`
-/

namespace A028661.P13856983844673857866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010705 (n ^ 2)) (A028663 n)

end

end A028661.P13856983844673857866

/-! ## A028661.P16742377758803589959

`and(A028663(n), A092910(n²))`
-/

namespace A028661.P16742377758803589959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028663 n) (A092910 (n ^ 2))

end

end A028661.P16742377758803589959

/-! ## A028661.P13300558938287038730

`and(A028663(n), A103947(n²))`
-/

namespace A028661.P13300558938287038730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028663 n) (A103947 (n ^ 2))

end

end A028661.P13300558938287038730

/-! ## A028661.P12112008716567508266

`and(A028663(n), A106469(n²))`
-/

namespace A028661.P12112008716567508266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028663 n) (A106469 (n ^ 2))

end

end A028661.P12112008716567508266

/-! ## A028661.P11403354770678861642

`and(A028663(n), A164356(n²))`
-/

namespace A028661.P11403354770678861642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028663 n) (A164356 (n ^ 2))

end

end A028661.P11403354770678861642

/-! ## A028661.P17431752865103872839

`and(A028663(n), A174978(n))`
-/

namespace A028661.P17431752865103872839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028663 n) (A174978 n)

end

end A028661.P17431752865103872839

/-! ## A028661.P6927247699456005890

`and(A005811(A019565(n)), A028663(n))`
-/

namespace A028661.P6927247699456005890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005811 (A019565 n).toNat) (A028663 n)

end

end A028661.P6927247699456005890

/-!
# A028662: Expansion of (theta_3(z)*theta_3(24z)+theta_2(z)*theta_2(24z))^2.

The programs for A028662, there is no canonical definition to state claims against.
-/

/-! ## A028662.P577003782447098999

`∑{#}[n, A028661(#)*A028661(n-#)]`
-/

namespace A028662.P577003782447098999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028661 k * A028661 (n - k)

end

end A028662.P577003782447098999

/-! ## A028662.P17150570891174615232

`and(A028630(n), A162576(n+1))`
-/

namespace A028662.P17150570891174615232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028630 n) (A162576 (n + 1))

end

end A028662.P17150570891174615232

/-! ## A028662.P1711697612651966265

`and(A028630(n), A127335(A121757(n)))`
-/

namespace A028662.P1711697612651966265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028630 n) (A127335 (A121757 n).toNat)

end

end A028662.P1711697612651966265

/-! ## A028662.P1039052438331235760

`and(A003363(A056151(n+1)), A028630(n))`
-/

namespace A028662.P1039052438331235760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003363 (A056151 (n + 1)).toNat) (A028630 n)

end

end A028662.P1039052438331235760

/-! ## A028662.P18295165798400960438

`and(A028630(n), A176150(n))`
-/

namespace A028662.P18295165798400960438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028630 n) (A176150 n)

end

end A028662.P18295165798400960438

/-!
# A028663: Expansion of (theta_3(z)*theta_3(24z)+theta_2(z)*theta_2(24z))^3.

The programs for A028663, there is no canonical definition to state claims against.
-/

/-! ## A028663.P3692294884166600361

`A028639(A057889(n))%A131452(A144353(n+1))`
-/

namespace A028663.P3692294884166600361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028639 (A057889 n).toNat) (A131452 (A144353 (n + 1)).toNat)

end

end A028663.P3692294884166600361

/-! ## A028663.P7095441179263198988

`A028639(A057889(n))`
-/

namespace A028663.P7095441179263198988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028639 (A057889 n).toNat

end

end A028663.P7095441179263198988

/-! ## A028663.P6911659309930121025

`A004013(lcm(2, A135381(n)))`
-/

namespace A028663.P6911659309930121025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (Int.lcm 2 (A135381 n))

end

end A028663.P6911659309930121025

/-! ## A028663.P5408418083571135450

`A004013(A135381(n))*A133872(n)`
-/

namespace A028663.P5408418083571135450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A135381 n).toNat * A133872 n

end

end A028663.P5408418083571135450

/-!
# A028664: Expansion of (theta_3(z)*theta_3(24z)+theta_2(z)*theta_2(24z))^4.

The programs for A028664, there is no canonical definition to state claims against.
-/

/-! ## A028664.P1215431173159523943

`∑{#}[n, A028662(#)*A028662(n-#)]`
-/

namespace A028664.P1215431173159523943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028662 k * A028662 (n - k)

end

end A028664.P1215431173159523943

/-!
# A028665: Galois numbers for p=3; order of group AGL(n,3).

The programs for A028665, there is no canonical definition to state claims against.
-/

/-! ## A028665.P2646237758769000110

`2*C(3^n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A028665.P2646237758769000110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.choose (3 ^ n) 2 * a (n - 1)

end

end A028665.P2646237758769000110

/-! ## A028665.P5493260339347935976

`(9^n-3^n)*a(n-1)` with `a(0)=1`
-/

namespace A028665.P5493260339347935976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((9 ^ n : ℤ) - (3 ^ n : ℤ)) * a (n - 1)

end

end A028665.P5493260339347935976

/-! ## A028665.P13220985810434544079

`3^n*A053290(n)`
-/

namespace A028665.P13220985810434544079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A053290 n

end

end A028665.P13220985810434544079

/-! ## A028665.P17784475937059090785

`a(n-1)*A059410(n)` with `a(0)=1`
-/

namespace A028665.P17784475937059090785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A059410 n

end

end A028665.P17784475937059090785

/-!
# A028666: a(n) = order of the orthogonal group O_n(2) if n is odd or O^(+)_n(2) if n is even.

The programs for A028666, there is no canonical definition to state claims against.
-/

/-! ## A028666.P722588998583431867

`2*C(4^n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A028666.P722588998583431867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (Nat.choose (4 ^ n) 2 * a (n - 1))

end

end A028666.P722588998583431867

/-! ## A028666.P409648024662825818

`∏[A285835(4*n)]`
-/

namespace A028666.P409648024662825818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285835 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028666.P409648024662825818

/-! ## A028666.P12016024093512083103

`4^n*A053291(n)`
-/

namespace A028666.P12016024093512083103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A053291 n

end

end A028666.P12016024093512083103

/-! ## A028666.P737005083624418311

`∏[4^n]*A027637(n)`
-/

namespace A028666.P737005083624418311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A027637 n

end

end A028666.P737005083624418311

/-! ## A028666.P4012395483553746773

`A020522(2*n)*a(n-1)` with `a(0)=1`
-/

namespace A028666.P4012395483553746773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020522 (2 * n) * a (n - 1)

end

end A028666.P4012395483553746773

/-!
# A028667: Galois numbers for p=5; order of group AGL(n,5).

The programs for A028667, there is no canonical definition to state claims against.
-/

/-! ## A028667.P2065366042849764309

`∏[5^n*ceil(abs(5^n-ϕ))]`
-/

namespace A028667.P2065366042849764309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * ⌈|(5 ^ n : ℝ) - Real.goldenRatio|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028667.P2065366042849764309

/-! ## A028667.P17978933015181036684

`((5^n)²-5^n)*a(n-1)` with `a(0)=1`
-/

namespace A028667.P17978933015181036684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((5 ^ n) ^ 2 : ℤ) - (5 ^ n : ℤ)) * a (n - 1)

end

end A028667.P17978933015181036684

/-! ## A028667.P15875222375457428922

`5^n*A053292(n)`
-/

namespace A028667.P15875222375457428922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A053292 n

end

end A028667.P15875222375457428922

/-! ## A028667.P7711106496107600615

`A027872(n)*A109345(n+1)`
-/

namespace A028667.P7711106496107600615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027872 n * A109345 (n + 1)

end

end A028667.P7711106496107600615

/-! ## A028667.P9021552676348607283

`A020729(n)*A053292(n)/2`
-/

namespace A028667.P9021552676348607283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020729 n * A053292 n : ℚ) / 2

end

end A028667.P9021552676348607283

/-!
# A028668: Pseudo Galois numbers for d=6.

The programs for A028668, there is no canonical definition to state claims against.
-/

/-! ## A028668.P15716380235432583823

`2*C(6^n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A028668.P15716380235432583823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.choose (6 ^ n) 2 * a (n - 1)

end

end A028668.P15716380235432583823

/-! ## A028668.P8327589379836778687

`6^n*A220790(n)`
-/

namespace A028668.P8327589379836778687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A220790 n

end

end A028668.P8327589379836778687

/-! ## A028668.P14180328680138280821

`∏[A000400(n)]*A027873(n)`
-/

namespace A028668.P14180328680138280821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A027873 n

end

end A028668.P14180328680138280821

/-! ## A028668.P17663836766819725356

`A027873(n)*A109354(n+1)`
-/

namespace A028668.P17663836766819725356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027873 n * A109354 (n + 1)

end

end A028668.P17663836766819725356

/-!
# A028669: Galois numbers for p=7; order of group AGL(n,7).

The programs for A028669, there is no canonical definition to state claims against.
-/

/-! ## A028669.P10610355451523786099

`2*C(7^n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A028669.P10610355451523786099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.choose (7 ^ n) 2 * a (n - 1)

end

end A028669.P10610355451523786099

/-! ## A028669.P16767001026210534411

`A027875(n)*A109493(n+1)`
-/

namespace A028669.P16767001026210534411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027875 n * A109493 (n + 1)

end

end A028669.P16767001026210534411

/-! ## A028669.P16353401577108462379

`record[A165828(n+1)]*A053293(n)`
-/

namespace A028669.P16353401577108462379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A053293 n

end

end A028669.P16353401577108462379

/-! ## A028669.P10360560438399199781

`A053293(n)*A165828(A000079(n))`
-/

namespace A028669.P10360560438399199781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053293 n * A165828 (A000079 n).toNat

end

end A028669.P10360560438399199781

/-! ## A028669.P9065815749045580525

`A053293(n+1)/A027875(n+1)*A027875(n)`
-/

namespace A028669.P9065815749045580525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053293 (n + 1) : ℚ) / (A027875 (n + 1) : ℚ) * (A027875 n : ℚ)

end

end A028669.P9065815749045580525

/-!
# A028670: Pseudo Galois numbers for d=8; order of group AGL(n,2^3).

The programs for A028670, there is no canonical definition to state claims against.
-/

/-! ## A028670.P15092128875304073494

`8^n*A052496(n)`
-/

namespace A028670.P15092128875304073494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A052496 n

end

end A028670.P15092128875304073494

/-!
# A028671: Pseudo Galois numbers for d=9; order of group AGL(n,3^2).

The programs for A028671, there is no canonical definition to state claims against.
-/

/-! ## A028671.P17129229628739681091

`∏[A001019(n)]*A027877(n)`
-/

namespace A028671.P17129229628739681091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A027877 n

end

end A028671.P17129229628739681091

/-! ## A028671.P11712490984171770235

`A027877(n)*A053764(n+1)`
-/

namespace A028671.P11712490984171770235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027877 n * A053764 (n + 1)

end

end A028671.P11712490984171770235

/-!
# A028672: Pseudo Galois numbers for d=10.

The programs for A028672, there is no canonical definition to state claims against.
-/

/-! ## A028672.P12204313907144526220

`((10^n)²-10^n)*a(n-1)` with `a(0)=1`
-/

namespace A028672.P12204313907144526220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ)) * a (n - 1)

end

end A028672.P12204313907144526220

/-! ## A028672.P3844766816677491901

`a(n-1)*A276352(n)` with `a(0)=1`
-/

namespace A028672.P3844766816677491901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A276352 n

end

end A028672.P3844766816677491901

/-! ## A028672.P2866542372305183461

`2*a(n-1)*A037182(n)` with `a(0)=1`
-/

namespace A028672.P2866542372305183461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * A037182 n

end

end A028672.P2866542372305183461

/-!
# A028673: Galois numbers for p=11; order of group AGL(n,11).

The programs for A028673, there is no canonical definition to state claims against.
-/

/-! ## A028673.P2179096317420549556

`lcm(A052498(n), A110195(n+1))`
-/

namespace A028673.P2179096317420549556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052498 n) (A110195 (n + 1))

end

end A028673.P2179096317420549556

/-!
# A028675: Galois numbers for p=13; order of group AGL(n,13).

The programs for A028675, there is no canonical definition to state claims against.
-/

/-! ## A028675.P3725247666198614124

`13^n*A220791(n)`
-/

namespace A028675.P3725247666198614124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 ^ n : ℤ) * A220791 n

end

end A028675.P3725247666198614124

/-!
# A028689: Sorted Galois numbers.

The programs for A028689, there is no canonical definition to state claims against.
-/

/-! ## A028689.P2953832595591786563

`A340143(A340076(n+1)^3)`
-/

namespace A028689.P2953832595591786563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340143 (A340076 (n + 1) ^ 3).toNat

end

end A028689.P2953832595591786563

/-! ## A028689.P4020889811971349656

`A340146(A340076(n+1)^3)`
-/

namespace A028689.P4020889811971349656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340146 (A340076 (n + 1) ^ 3).toNat

end

end A028689.P4020889811971349656

/-! ## A028689.P5513307749191306765

`record[A225650(record[A379010(n+1)])]`
-/

namespace A028689.P5513307749191306765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028689.P5513307749191306765

/-!
# A028690: Sorted Galois and Pseudo-Galois numbers.

The programs for A028690, there is no canonical definition to state claims against.
-/

/-! ## A028690.P12999090055265460174

`A004277(eq[A014430(n), A171307(n+1)])`
-/

namespace A028690.P12999090055265460174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028690.P12999090055265460174

/-! ## A028690.P8055063743147390061

`∪[A384329(3*(n+1))+1, A350792(n+1)]`
-/

namespace A028690.P8055063743147390061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384329 (3 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028690.P8055063743147390061

/-!
# A028691: Least positive value of k for which the n-th sorted Galois number divides k!.

The programs for A028691, there is no canonical definition to state claims against.
-/

/-! ## A028691.P1423194240988044110

`gcd(A028689(n+1), A072480(A028689(n+1)))`
-/

namespace A028691.P1423194240988044110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028689 (n + 1)) (A072480 (A028689 (n + 1)).toNat)

end

end A028691.P1423194240988044110

/-! ## A028691.P10165129057880076201

`A028689(A028310(n)+1)-A072480(A028689(n+1))`
-/

namespace A028691.P10165129057880076201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028689 (A028310 n + 1).toNat - A072480 (A028689 (n + 1)).toNat

end

end A028691.P10165129057880076201

/-! ## A028691.P6460707980525577307

`A345931(A028689(n+1)/A238303(n²))`
-/

namespace A028691.P6460707980525577307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (SequenceMachineLib.roundAway ((A028689 (n + 1) : ℚ) / (A238303 (n ^ 2) : ℚ))).toNat

end

end A028691.P6460707980525577307

/-! ## A028691.P8284140647502506120

`A345931(A028689(n+1))`
-/

namespace A028691.P8284140647502506120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (A028689 (n + 1)).toNat

end

end A028691.P8284140647502506120

/-! ## A028691.P8778742983919218051

`A002034(A028689(n+1))`
-/

namespace A028691.P8778742983919218051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A028689 (n + 1)).toNat

end

end A028691.P8778742983919218051

/-!
# A028692: 23-factorial numbers.

The programs for A028692, there is no canonical definition to state claims against.
-/

/-! ## A028692.P8104050912080762886

`(23^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A028692.P8104050912080762886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((23 ^ n : ℤ) - 1) * a (n - 1)

end

end A028692.P8104050912080762886

/-! ## A028692.P2399279255781726285

`∏[A009967(n)-A001221(A165844(n+1))]`
-/

namespace A028692.P2399279255781726285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009967 n - A001221 (A165844 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028692.P2399279255781726285

/-!
# A028693: 24-factorial numbers.

The programs for A028693, there is no canonical definition to state claims against.
-/

/-! ## A028693.P8692455187371000081

`(24^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A028693.P8692455187371000081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((24 ^ n : ℤ) - 1) * a (n - 1)

end

end A028693.P8692455187371000081

/-!
# A028694: 25-factorial numbers.

The programs for A028694, there is no canonical definition to state claims against.
-/

/-! ## A028694.P17804591419487803578

`(25^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A028694.P17804591419487803578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((25 ^ n : ℤ) - 1) * a (n - 1)

end

end A028694.P17804591419487803578

/-! ## A028694.P6702024498460676801

`∏[A103455(2*n)]`
-/

namespace A028694.P6702024498460676801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103455 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028694.P6702024498460676801

/-! ## A028694.P4502837356356831588

`∏[25^n-A178334(n)]`
-/

namespace A028694.P4502837356356831588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (25 ^ n : ℤ) - A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028694.P4502837356356831588

/-! ## A028694.P2364064657375240334

`∏[xor(A009969(n), A178334(n))]`
-/

namespace A028694.P2364064657375240334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009969 n) (A178334 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028694.P2364064657375240334

/-!
# A028696: Expansion of (theta_3(z^4)^3 + theta_2(z^4)^3)^3.

The programs for A028696, there is no canonical definition to state claims against.
-/

/-! ## A028696.P16824978507964074331

`A053824(A110130(n))*A055302(n+1)`
-/

namespace A028696.P16824978507964074331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A110130 n).toNat * A055302 (n + 1)

end

end A028696.P16824978507964074331

/-! ## A028696.P18121854341417089031

`A240805(n)*A353835(A283847(n+3))`
-/

namespace A028696.P18121854341417089031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240805 n * A353835 (A283847 (n + 3)).toNat

end

end A028696.P18121854341417089031

/-! ## A028696.P6201939618014909747

`and(A252660(n+1)-n, A104601(3*n+1))`
-/

namespace A028696.P6201939618014909747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A252660 (n + 1) - (n : ℤ)) (A104601 (3 * n + 1))

end

end A028696.P6201939618014909747

/-!
# A028697: Expansion of (theta_3(z^4)^3 + theta_2(z^4)^3)^4.

The programs for A028697, there is no canonical definition to state claims against.
-/

/-! ## A028697.P6318180509636740162

`∑{#}[n, A008665(#)*A008665(n-#)]`
-/

namespace A028697.P6318180509636740162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008665 k * A008665 (n - k)

end

end A028697.P6318180509636740162

/-! ## A028697.P8581191309178016864

`A028579(n)*A061394(A029857(n+1))`
-/

namespace A028697.P8581191309178016864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028579 n * A061394 (A029857 (n + 1)).toNat

end

end A028697.P8581191309178016864

/-! ## A028697.P9862905488834164228

`A028630(lcm(n, A183467(n+1)))`
-/

namespace A028697.P9862905488834164228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028630 (Int.lcm (n : ℤ) (A183467 (n + 1)))

end

end A028697.P9862905488834164228

/-!
# A028698: Expansion of (theta_3(z)*theta_3(2z)*theta_3(4z)+theta_2(z)*theta_2(2z)*theta_2(4z)).

The programs for A028698, there is no canonical definition to state claims against.
-/

/-! ## A028698.P4226247498439196474

`and(A000689(n), A005900(A084080(n)))`
-/

namespace A028698.P4226247498439196474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000689 n) (A005900 (A084080 n).toNat)

end

end A028698.P4226247498439196474

/-! ## A028698.P12485236038866453447

`and(A000689(n), A065033(A214932(n)))`
-/

namespace A028698.P12485236038866453447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000689 n) (A065033 (A214932 n).toNat)

end

end A028698.P12485236038866453447

/-! ## A028698.P12909084767774966222

`and(A027245(A004475(n)), A083948(n))`
-/

namespace A028698.P12909084767774966222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027245 (A004475 n).toNat) (A083948 n)

end

end A028698.P12909084767774966222

/-! ## A028698.P15841553143907796729

`and(A000196(A208960(n+1)), A083948(n))`
-/

namespace A028698.P15841553143907796729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000196 (A208960 (n + 1)).toNat) (A083948 n)

end

end A028698.P15841553143907796729

/-!
# A028699: Expansion of (theta_3(z)*theta_3(2z)*theta_3(4z)+theta_2(z)*theta_2(2z)*theta_2(4z))^2.

The programs for A028699, there is no canonical definition to state claims against.
-/

/-! ## A028699.P4108989000942888175

`∑{#}[n, A028698(#)*A028698(n-#)]`
-/

namespace A028699.P4108989000942888175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028698 k * A028698 (n - k)

end

end A028699.P4108989000942888175

/-! ## A028699.P3316525302611077723

`and(A058717(n+1)², A166633(A064476(n+1)))`
-/

namespace A028699.P3316525302611077723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058717 (n + 1) ^ 2) (A166633 (A064476 (n + 1)).toNat)

end

end A028699.P3316525302611077723

/-! ## A028699.P6179405434908383815

`and(A145366(3*(n+1)), A166633(A064476(n+1)))`
-/

namespace A028699.P6179405434908383815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145366 (3 * (n + 1))) (A166633 (A064476 (n + 1)).toNat)

end

end A028699.P6179405434908383815

/-! ## A028699.P4650163657174070672

`and(∏{e}[n+1, #+1]², A326205(n))`
-/

namespace A028699.P4650163657174070672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ 2 : ℕ) : ℤ) (A326205 n)

end

end A028699.P4650163657174070672

/-! ## A028699.P16604976898818510813

`and(A000005(n+1)², A326205(n))`
-/

namespace A028699.P16604976898818510813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1) ^ 2) (A326205 n)

end

end A028699.P16604976898818510813

