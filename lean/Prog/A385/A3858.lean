import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
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
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A385800: Primes having only {6, 8, 9} as digits.

The programs for A385800, there is no canonical definition to state claims against.
-/

/-! ## A385800.P3776503226122152958

`∩[A053580(n+1), A386198(n+1)]`
-/

namespace A385800.P3776503226122152958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P3776503226122152958

/-! ## A385800.P15788038826061390472

`∩[A053580(n+1), A386167(n+1)]`
-/

namespace A385800.P15788038826061390472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P15788038826061390472

/-! ## A385800.P10576996089394269873

`∩[A386167(n+1), A386198(n+1)]`
-/

namespace A385800.P10576996089394269873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P10576996089394269873

/-! ## A385800.P7029378970151058163

`∩[A051416(n+1), A053580(n+1)]`
-/

namespace A385800.P7029378970151058163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P7029378970151058163

/-! ## A385800.P11546588293732798821

`∩[A051416(n+1), A386167(n+1)]`
-/

namespace A385800.P11546588293732798821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P11546588293732798821

/-! ## A385800.P15156095903572932889

`∩[A051416(n+1), A386198(n+1)]`
-/

namespace A385800.P15156095903572932889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P15156095903572932889

/-! ## A385800.P9931255869556772682

`∩[A051416(n+1), A106111(n+1)]`
-/

namespace A385800.P9931255869556772682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P9931255869556772682

/-! ## A385800.P4336966136444867307

`∩[A053580(n+1), A106111(n+1)]`
-/

namespace A385800.P4336966136444867307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P4336966136444867307

/-! ## A385800.P16166076016953626300

`∩[A106111(n+1), A386167(n+1)]`
-/

namespace A385800.P16166076016953626300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P16166076016953626300

/-! ## A385800.P12018238970282890696

`∩[A106111(n+1), A386198(n+1)]`
-/

namespace A385800.P12018238970282890696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P12018238970282890696

/-! ## A385800.P17150200094423889025

`∩[A051416(n+1), A386137(n+1)]`
-/

namespace A385800.P17150200094423889025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P17150200094423889025

/-! ## A385800.P13191973655721490735

`∩[A051416(n+1), A386186(n+1)]`
-/

namespace A385800.P13191973655721490735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P13191973655721490735

/-! ## A385800.P9295884851447818288

`∩[A053580(n+1), A386137(n+1)]`
-/

namespace A385800.P9295884851447818288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P9295884851447818288

/-! ## A385800.P13743732213872517031

`∩[A053580(n+1), A386186(n+1)]`
-/

namespace A385800.P13743732213872517031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P13743732213872517031

/-! ## A385800.P17083936008099608416

`∩[A106111(n+1), A386137(n+1)]`
-/

namespace A385800.P17083936008099608416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P17083936008099608416

/-! ## A385800.P15124005579651225840

`∩[A106111(n+1), A386186(n+1)]`
-/

namespace A385800.P15124005579651225840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P15124005579651225840

/-! ## A385800.P10408017304863586621

`∩[A386137(n+1), A386167(n+1)]`
-/

namespace A385800.P10408017304863586621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P10408017304863586621

/-! ## A385800.P7336216115771281008

`∩[A386137(n+1), A386186(n+1)]`
-/

namespace A385800.P7336216115771281008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P7336216115771281008

/-! ## A385800.P12199814062337360162

`∩[A386137(n+1), A386198(n+1)]`
-/

namespace A385800.P12199814062337360162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P12199814062337360162

/-! ## A385800.P31941247976861333

`∩[A386167(n+1), A386186(n+1)]`
-/

namespace A385800.P31941247976861333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385800.P31941247976861333

/-!
# A385801: G.f. A(x) satisfies A(x) = 1/(1 - x*A(x)^3 - x^2*A(x)^2*A'(x)).

The programs for A385801, there is no canonical definition to state claims against.
-/

/-! ## A385801.P10365935980497642822

`A261093((n+1)^n-n)`
-/

namespace A385801.P10365935980497642822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261093 ((n + 1) ^ n - n)

end

end A385801.P10365935980497642822

/-!
# A385806: G.f. A(x) satisfies A(x) = 1/(1 - x*A(x)^4 - x^2*A(x)^3*A'(x)).

The programs for A385806, there is no canonical definition to state claims against.
-/

/-! ## A385806.P11582846658545427283

`A008407(or(3, a(n-1)/sqrt(1/4)))` with `a(0)=1, a(1)=1`
-/

namespace A385806.P11582846658545427283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008407 (Int.lor 3 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ)))).toNat

end

end A385806.P11582846658545427283

/-!
# A385807: Number of integer lattice points (x, y) strictly inside a triangle of base 2n - 1 and height n - 1, such that 1 <= x <= 2n - 1, 1 <= y < min(x, 2n - x), and y | x.

The programs for A385807, there is no canonical definition to state claims against.
-/

/-! ## A385807.P2593493362553262383

`A366968(Δ[n²])`
-/

namespace A385807.P2593493362553262383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366968 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A385807.P2593493362553262383

/-! ## A385807.P15408500355609451254

`A325459(Δ[n²])+n`
-/

namespace A385807.P15408500355609451254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A385807.P15408500355609451254

/-! ## A385807.P8617255199993426941

`A002541(Δ[n²])-n`
-/

namespace A385807.P8617255199993426941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A385807.P8617255199993426941

/-! ## A385807.P7423957118560241516

`abs(A002541(2*n+1)-n)`
-/

namespace A385807.P7423957118560241516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002541 (2 * n + 1) - (n : ℤ)|

end

end A385807.P7423957118560241516

/-! ## A385807.P10026546579833788539

`record[A002541(n+1)-lcm(2, n)/2]`
-/

namespace A385807.P10026546579833788539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002541 (n + 1) : ℚ) - (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385807.P10026546579833788539

/-! ## A385807.P403089866244716246

`A006218(2*n+1)-(3*n+1)`
-/

namespace A385807.P403089866244716246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * n + 1) - (3 * n + 1 : ℤ)

end

end A385807.P403089866244716246

/-! ## A385807.P1339239393278236103

`A099056(n)-A016789(n)`
-/

namespace A385807.P1339239393278236103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099056 n - A016789 n

end

end A385807.P1339239393278236103

/-! ## A385807.P4321889203663062432

`record[A366968(A065190(n+1))]`
-/

namespace A385807.P4321889203663062432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366968 (A065190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385807.P4321889203663062432

/-! ## A385807.P12184743275123625828

`A327326(2*n+1)+A011371(n)`
-/

namespace A385807.P12184743275123625828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327326 (2 * n + 1) + A011371 n

end

end A385807.P12184743275123625828

/-! ## A385807.P4005293075342693768

`A049993(2*n+1)-A014406(2*n+1)`
-/

namespace A385807.P4005293075342693768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049993 (2 * n + 1) - A014406 (2 * n + 1)

end

end A385807.P4005293075342693768

/-!
# A385808: a(n) = numerator of rational number Im(P(x))/Pi, for x in interval (1/A005117(n+1),1/A005117(n)), where P(x) is the prime zeta function.

The programs for A385808, there is no canonical definition to state claims against.
-/

/-! ## A385808.P12958724790313841408

`A070888(A005117(n+1))`
-/

namespace A385808.P12958724790313841408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070888 (A005117 (n + 1)).toNat

end

end A385808.P12958724790313841408

/-! ## A385808.P11821910638800121151

`A070888(A077377(n+1))`
-/

namespace A385808.P11821910638800121151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070888 (A077377 (n + 1)).toNat

end

end A385808.P11821910638800121151

/-! ## A385808.P10327549319311797511

`A070888(A348506(n+1))`
-/

namespace A385808.P10327549319311797511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070888 (A348506 (n + 1)).toNat

end

end A385808.P10327549319311797511

/-! ## A385808.P38402085667106084

`A070888(A367801(n+1))`
-/

namespace A385808.P38402085667106084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070888 (A367801 (n + 1)).toNat

end

end A385808.P38402085667106084

/-! ## A385808.P15510473451692693396

`A070888(A076144(n+2))`
-/

namespace A385808.P15510473451692693396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070888 (A076144 (n + 2)).toNat

end

end A385808.P15510473451692693396

/-!
# A385810: Integers x such that sigma(x)^2 - 3*x^2 is a square.

The programs for A385810, there is no canonical definition to state claims against.
-/

/-! ## A385810.P6763271879517016805

`filter[A385531(n+1), A213729(#)]`
-/

namespace A385810.P6763271879517016805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A213729 (f1 j).toNat = 1) n)

end

end A385810.P6763271879517016805

/-! ## A385810.P98446733181702660

`A385531(A029804(n+2))`
-/

namespace A385810.P98446733181702660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385531 (A029804 (n + 2)).toNat

end

end A385810.P98446733181702660

/-! ## A385810.P16761284495804049017

`∩[A179797(n+1), A385531(n+1)]`
-/

namespace A385810.P16761284495804049017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385810.P16761284495804049017

/-!
# A385812: Numbers k such that A063655(k) > A063655(k+1).

The programs for A385812, there is no canonical definition to state claims against.
-/

/-! ## A385812.P1734852895672181233

`lt[A262767(n+1), A262767(A028310(n))]`
-/

namespace A385812.P1734852895672181233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262767 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385812.P1734852895672181233

/-! ## A385812.P14792614776441718143

`lt[Δ[A386318(n)], 0]`
-/

namespace A385812.P14792614776441718143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A385812.P14792614776441718143

/-! ## A385812.P15400894312699718526

`lt[A386318(n+1), A386318(n)]`
-/

namespace A385812.P15400894312699718526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385812.P15400894312699718526

/-! ## A385812.P3419428933989429929

`lt[A274624(2*(n+1)), A036301(A300977(n))]`
-/

namespace A385812.P3419428933989429929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274624 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (A300977 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385812.P3419428933989429929

/-! ## A385812.P12547970377520557120

`lt[A285331(n+1), A066246(A000203(n+1))]`
-/

namespace A385812.P12547970377520557120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385812.P12547970377520557120

/-!
# A385813: Expansion of 1/((1-3*x) * (1-7*x))^(3/2).

The programs for A385813, the canonical program `A385813.P17013996345610110773` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385813 has offset 0).

The definition of A385813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385813.P16040128449939351333

`∑{#}[n, 3^(n-#)*(2*#+1)*C(2*#, #)*C(n+2, n-#)]`
-/

namespace A385813.P16040128449939351333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (2 * k + 1 : ℚ) * (Nat.choose (2 * k) k : ℚ) * (Nat.choose (n + 2) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A385813.P16040128449939351333

namespace A385813

/-- `∑{#}[n, 3^(n-#)*(2*#+1)*C(2*#, #)*C(n+2, n-#)]` -/
def P16040128449939351333.Spec : Prop :=
  ∀ n, P16040128449939351333.a n = (A385813 n : ℚ)

end A385813

/-! ## A385813.P17013996345610110773

`C(n+2, 2)*A182401(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385813

/-- `C(n+2, 2)*A182401(n)` -/
def P17013996345610110773.Spec : Prop :=
  ∀ n, P17013996345610110773.a n = A385813 n

theorem P17013996345610110773.correct : P17013996345610110773.Spec := by
  intro n
  simp only [A385813]

end A385813

/-! ## A385813.P10668083487513132013

`∑[1+n]*A182401(n)`
-/

namespace A385813.P10668083487513132013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A182401 n

end

end A385813.P10668083487513132013

namespace A385813

/-- `∑[1+n]*A182401(n)` -/
def P10668083487513132013.Spec : Prop :=
  ∀ n, P10668083487513132013.a n = A385813 n

end A385813

/-! ## A385813.P8522343295837827958

`∑[n+1]*A125906(∑[n])`
-/

namespace A385813.P8522343295837827958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A125906 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A385813.P8522343295837827958

namespace A385813

/-- `∑[n+1]*A125906(∑[n])` -/
def P8522343295837827958.Spec : Prop :=
  ∀ n, P8522343295837827958.a n = A385813 n

end A385813

/-!
# A385814: Triangle read by rows where T(n,k) is the number of integer partitions of n with k maximal proper anti-runs (sequences decreasing by more than 1).

The programs for A385814, there is no canonical definition to state claims against.
-/

/-! ## A385814.P14623781967839482568

`ceil(A096653(n)/A127255(3*n+2))`
-/

namespace A385814.P14623781967839482568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A096653 n : ℚ) / (A127255 (3 * n + 2) : ℚ)⌉

end

end A385814.P14623781967839482568

/-! ## A385814.P3713693622379529203

`A115722(A301924(n+1))`
-/

namespace A385814.P3713693622379529203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (A301924 (n + 1)).toNat

end

end A385814.P3713693622379529203

/-! ## A385814.P2360664968639874378

`A347609(A200370(n+1)%A105999(n))`
-/

namespace A385814.P2360664968639874378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (Int.tmod (A200370 (n + 1)) (A105999 n)).toNat

end

end A385814.P2360664968639874378

/-! ## A385814.P6373571256039158511

`A055090(A110518(n))`
-/

namespace A385814.P6373571256039158511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 (A110518 n).toNat

end

end A385814.P6373571256039158511

/-! ## A385814.P513206881948678513

`A124766(A122538(n))`
-/

namespace A385814.P513206881948678513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A122538 n).toNat

end

end A385814.P513206881948678513

/-!
# A385815: Triangle read by rows where T(n,k) is the number of integer partitions of n with k maximal runs of consecutive elements decreasing by 0 or 1.

The programs for A385815, there is no canonical definition to state claims against.
-/

/-! ## A385815.P13645757624007981378

`and(A317245(A317533(n+1)), A317533(n+4))`
-/

namespace A385815.P13645757624007981378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A317245 (A317533 (n + 1)).toNat) (A317533 (n + 4))

end

end A385815.P13645757624007981378

/-! ## A385815.P12596893324179171492

`A353846(lt[A354907(3*n+4), A353851(n)])`
-/

namespace A385815.P12596893324179171492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385815.P12596893324179171492

/-! ## A385815.P1444636689009675997

`and(A131495(A353833(n+1)), A261585(3*n))`
-/

namespace A385815.P1444636689009675997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131495 (A353833 (n + 1)).toNat) (A261585 (3 * n))

end

end A385815.P1444636689009675997

/-! ## A385815.P7583184554688650183

`and(A131495(A353844(n+1)), A261585(3*n))`
-/

namespace A385815.P7583184554688650183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131495 (A353844 (n + 1)).toNat) (A261585 (3 * n))

end

end A385815.P7583184554688650183

/-!
# A385816: The number k such that the k-th composition in standard order lists the maximal anti-run lengths of the binary indices of n. Standard composition number of row n of A384877.

The programs for A385816, there is no canonical definition to state claims against.
-/

/-! ## A385816.P13174462305340664042

`xor(A088512(n), A385889(n))`
-/

namespace A385816.P13174462305340664042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088512 n) (A385889 n)

end

end A385816.P13174462305340664042

/-! ## A385816.P11066549635344929297

`A209859(n)+A385887(n)-A385889(n)`
-/

namespace A385816.P11066549635344929297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 n + (A385887 n - A385889 n)

end

end A385816.P11066549635344929297

/-! ## A385816.P16320589950283112916

`A209859(A030101(n))`
-/

namespace A385816.P16320589950283112916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 (A030101 n).toNat

end

end A385816.P16320589950283112916

/-! ## A385816.P7840870218796810869

`A209859(A057889(n))`
-/

namespace A385816.P7840870218796810869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 (A057889 n).toNat

end

end A385816.P7840870218796810869

/-! ## A385816.P10912443799035074591

`A209859(A322464(n))`
-/

namespace A385816.P10912443799035074591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 (A322464 n).toNat

end

end A385816.P10912443799035074591

/-! ## A385816.P8029689606479837977

`A209859(A337304(n))`
-/

namespace A385816.P8029689606479837977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 (A337304 n).toNat

end

end A385816.P8029689606479837977

/-!
# A385817: Irregular triangle read by rows listing the lengths of maximal runs (sequences of consecutive elements increasing by 1) of binary indices, duplicate rows removed.

The programs for A385817, there is no canonical definition to state claims against.
-/

/-! ## A385817.P10392995552054587838

`A080577(A334433(n)+A210322(n+1))`
-/

namespace A385817.P10392995552054587838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (A334433 n + A210322 (n + 1)).toNat

end

end A385817.P10392995552054587838

/-! ## A385817.P5452992625996897805

`A211999(A378163(n+4)+A211999(n+1))`
-/

namespace A385817.P5452992625996897805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211999 (A378163 (n + 4) + A211999 (n + 1)).toNat

end

end A385817.P5452992625996897805

/-! ## A385817.P1765301987096581467

`A080577(or(A209337(n+1), A329202(n+1)))`
-/

namespace A385817.P1765301987096581467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (Int.lor (A209337 (n + 1)) (A329202 (n + 1))).toNat

end

end A385817.P1765301987096581467

/-! ## A385817.P5010862054605984374

`A337243(A358124(n+1)%A128674(3*n+4))`
-/

namespace A385817.P5010862054605984374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337243 (Int.tmod (A358124 (n + 1)) (A128674 (3 * n + 4))).toNat

end

end A385817.P5010862054605984374

/-!
# A385818: The number k such that the k-th composition in standard order lists the maximal run lengths of each nonnegative integer's binary indices, with duplicates removed.

The programs for A385818, there is no canonical definition to state claims against.
-/

/-! ## A385818.P9312520800970346289

`A385889(A057428(2*(n+1))+eq[0, A334076(n)]+1)`
-/

namespace A385818.P9312520800970346289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 (A057428 (2 * (n + 1)) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)).toNat

end

end A385818.P9312520800970346289

/-! ## A385818.P17497981179376925217

`A385889(lt[A309894(3*n+1), A026465(n+1)²]-1)`
-/

namespace A385818.P17497981179376925217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309894 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 1)

end

end A385818.P17497981179376925217

/-! ## A385818.P6838419643365576471

`A385889(lt[A309894(3*n+1), A285972(n+1)+2]-1)`
-/

namespace A385818.P6838419643365576471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309894 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285972 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 1)

end

end A385818.P6838419643365576471

/-! ## A385818.P10304092216490968114

`A385889(eq[2*n, A265716(n)]+1-A158388(2*(n+1)))`
-/

namespace A385818.P10304092216490968114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A158388 (2 * (n + 1))).toNat

end

end A385818.P10304092216490968114

/-! ## A385818.P17805471064341876511

`A385889(eq[2*n, A265716(n)]+1-A023532(3*n+1))`
-/

namespace A385818.P17805471064341876511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A023532 (3 * n + 1)).toNat

end

end A385818.P17805471064341876511

/-! ## A385818.P4555294458521465418

`A385889(A385890(n+1)-1)`
-/

namespace A385818.P4555294458521465418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 (A385890 (n + 1) - 1).toNat

end

end A385818.P4555294458521465418

/-!
# A385820: Number of equivalence classes of finitely-supported integer functions on Z^2 modulo moves that add + or -1 to every cell whose coordinates form an arithmetic progression of length n.

The programs for A385820, there is no canonical definition to state claims against.
-/

/-! ## A385820.P11183989385285880445

`sqrt(A056916(n+1))^(n+1)`
-/

namespace A385820.P11183989385285880445
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056916 (n + 1) : ℝ) ^ (n + 1)

end

end A385820.P11183989385285880445

/-!
# A385821: Numbers k such that ceiling((k^2 + 1)/2) is prime.

The programs for A385821, the canonical program `A385821.P3088482818284566734` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385821 has offset 1).

The definition of A385821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385821.P3088482818284566734

`lt[0, A101264(A002620(n))]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A385821

/-- `lt[0, A101264(A002620(n))]` -/
def P3088482818284566734.Spec : Prop :=
  ∀ n, (P3088482818284566734.a n : ℤ) = A385821 (n + 1)

theorem P3088482818284566734.correct : P3088482818284566734.Spec := by
  intro n
  simp only [A385821, Nat.add_sub_cancel]

end A385821

/-! ## A385821.P1595935583744068695

`eq[1, A001222(A099392(n+1))]`
-/

namespace A385821.P1595935583744068695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A099392 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385821.P1595935583744068695

namespace A385821

/-- `eq[1, A001222(A099392(n+1))]` -/
def P1595935583744068695.Spec : Prop :=
  ∀ n, (P1595935583744068695.a n : ℤ) = A385821 (n + 1)

end A385821

/-! ## A385821.P13873864926905498471

`lt[A125811(n), A020639(A099392(n+1))]`
-/

namespace A385821.P13873864926905498471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A099392 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385821.P13873864926905498471

namespace A385821

/-- `lt[A125811(n), A020639(A099392(n+1))]` -/
def P13873864926905498471.Spec : Prop :=
  ∀ n, (P13873864926905498471.a n : ℤ) = A385821 (n + 1)

end A385821

/-! ## A385821.P10445526811070876341

`eq[2, A278223(A033638(n))]`
-/

namespace A385821.P10445526811070876341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A033638 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385821.P10445526811070876341

namespace A385821

/-- `eq[2, A278223(A033638(n))]` -/
def P10445526811070876341.Spec : Prop :=
  ∀ n, (P10445526811070876341.a n : ℤ) = A385821 (n + 1)

end A385821

/-! ## A385821.P9502322779484836664

`eq[1, A082343(A007590(n)+1)]`
-/

namespace A385821.P9502322779484836664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (A007590 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385821.P9502322779484836664

namespace A385821

/-- `eq[1, A082343(A007590(n)+1)]` -/
def P9502322779484836664.Spec : Prop :=
  ∀ n, (P9502322779484836664.a n : ℤ) = A385821 (n + 1)

end A385821

/-! ## A385821.P14256823577190514701

`eq[4, A000005(gcd(2, n)+n²)]`
-/

namespace A385821.P14256823577190514701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd 2 n + n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385821.P14256823577190514701

namespace A385821

/-- `eq[4, A000005(gcd(2, n)+n²)]` -/
def P14256823577190514701.Spec : Prop :=
  ∀ n, (P14256823577190514701.a n : ℤ) = A385821 (n + 1)

end A385821

/-! ## A385821.P11228822357518321942

`eq[2, A001222(A248800(n))]`
-/

namespace A385821.P11228822357518321942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A248800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385821.P11228822357518321942

namespace A385821

/-- `eq[2, A001222(A248800(n))]` -/
def P11228822357518321942.Spec : Prop :=
  ∀ n, (P11228822357518321942.a n : ℤ) = A385821 (n + 1)

end A385821

/-! ## A385821.P17883397999371408180

`eq[1, A228037(floor((n/2)²))]`
-/

namespace A385821.P17883397999371408180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228037 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385821.P17883397999371408180

namespace A385821

/-- `eq[1, A228037(floor((n/2)²))]` -/
def P17883397999371408180.Spec : Prop :=
  ∀ n, (P17883397999371408180.a n : ℤ) = A385821 (n + 1)

end A385821

/-!
# A385822: Numbers k such that phi(k) is not a perfect square.

The programs for A385822, the canonical program `A385822.P7363694969260658902` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385822 has offset 1).

The definition of A385822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385822.P7363694969260658902

`comp[A039770(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A385822

/-- `comp[A039770(n+1)-1]+1` -/
def P7363694969260658902.Spec : Prop :=
  ∀ n, (P7363694969260658902.a n : ℤ) = A385822 (n + 1)

theorem P7363694969260658902.correct : P7363694969260658902.Spec := by
  intro n
  simp only [A385822, Nat.add_sub_cancel]

end A385822

/-! ## A385822.P11666883747206337938

`lt[0, A053188(A000010(n+1))]+1`
-/

namespace A385822.P11666883747206337938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A385822.P11666883747206337938

namespace A385822

/-- `lt[0, A053188(A000010(n+1))]+1` -/
def P11666883747206337938.Spec : Prop :=
  ∀ n, (P11666883747206337938.a n : ℤ) = A385822 (n + 1)

end A385822

/-! ## A385822.P7399105737688540945

`eq[1, A055396(A062821(n+1)+2)]+1`
-/

namespace A385822.P7399105737688540945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A062821 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A385822.P7399105737688540945

namespace A385822

/-- `eq[1, A055396(A062821(n+1)+2)]+1` -/
def P7399105737688540945.Spec : Prop :=
  ∀ n, (P7399105737688540945.a n : ℤ) = A385822 (n + 1)

end A385822

/-! ## A385822.P8122320170718440603

`eq[char[A039770(n+1)], A000007(n)]`
-/

namespace A385822.P8122320170718440603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A385822.P8122320170718440603

namespace A385822

/-- `eq[char[A039770(n+1)], A000007(n)]` -/
def P8122320170718440603.Spec : Prop :=
  ∀ n, (P8122320170718440603.a n : ℤ) = A385822 (n + 1)

end A385822

/-! ## A385822.P3052585302783683596

`eq[char[A039770(n+1)], A167858(n+2)]`
-/

namespace A385822.P3052585302783683596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167858 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A385822.P3052585302783683596

namespace A385822

/-- `eq[char[A039770(n+1)], A167858(n+2)]` -/
def P3052585302783683596.Spec : Prop :=
  ∀ n, (P3052585302783683596.a n : ℤ) = A385822 (n + 1)

end A385822

/-!
# A385823: a(n) = Sum_{k=0..n} binomial(3*n-3,k).

The programs for A385823, there is no canonical definition to state claims against.
-/

/-! ## A385823.P1919966700865473182

`A193820(A117625(n))`
-/

namespace A385823.P1919966700865473182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A117625 n).toNat

end

end A385823.P1919966700865473182

/-! ## A385823.P14248437991904478508

`A193820(A051682(n)+1)`
-/

namespace A385823.P14248437991904478508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A051682 n + 1).toNat

end

end A385823.P14248437991904478508

/-! ## A385823.P12386463526030699609

`A052509(A360416(n))`
-/

namespace A385823.P12386463526030699609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A360416 n).toNat

end

end A385823.P12386463526030699609

/-! ## A385823.P12316559602984862105

`A004070(A051870(n))`
-/

namespace A385823.P12316559602984862105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A051870 n).toNat

end

end A385823.P12316559602984862105

/-! ## A385823.P7446402421393049113

`A054123(A383464(n))`
-/

namespace A385823.P7446402421393049113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A383464 n).toNat

end

end A385823.P7446402421393049113

/-!
# A385825: a(n) = Sum_{k=0..n} (binomial(n, k) mod 5).

The programs for A385825, the canonical program `A385825.P1161522994120190577` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385825 has offset 0).

The definition of A385825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)%5]` (program `A385825.P1161522994120190577`, by `A385825.P1161522994120190577.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385825.P1161522994120190577

`∑{#}[n, C(n, #)%5]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385825

/-- `∑{#}[n, C(n, #)%5]` -/
def P1161522994120190577.Spec : Prop :=
  ∀ n, (P1161522994120190577.a n : ℤ) = A385825 n

theorem P1161522994120190577.correct : P1161522994120190577.Spec := by
  intro n
  simp only [A385825]

end A385825

/-!
# A385826: a(n) = Sum_{k=0..n} (binomial(n, k) mod 7).

The programs for A385826, the canonical program `A385826.P17347965067040602139` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385826 has offset 0).

The definition of A385826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)%7]` (program `A385826.P17347965067040602139`, by `A385826.P17347965067040602139.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385826.P17347965067040602139

`∑{#}[n, C(n, #)%7]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385826

/-- `∑{#}[n, C(n, #)%7]` -/
def P17347965067040602139.Spec : Prop :=
  ∀ n, (P17347965067040602139.a n : ℤ) = A385826 n

theorem P17347965067040602139.correct : P17347965067040602139.Spec := by
  intro n
  simp only [A385826]

end A385826

/-!
# A385827: a(n) is the unique k such that 2^k is closest to 5^n.

The programs for A385827, the canonical program `A385827.P17938306064123805802` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385827 has offset 0).

The definition of A385827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385827.P17938306064123805802

`ceil(log2(A082685(n)))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385827

/-- `ceil(log2(A082685(n)))` -/
def P17938306064123805802.Spec : Prop :=
  ∀ n, P17938306064123805802.a n = A385827 n

theorem P17938306064123805802.correct : P17938306064123805802.Spec := by
  intro n
  simp only [A385827]

end A385827

/-! ## A385827.P10829504949234708748

`ceil(log2(A083217(n)))`
-/

namespace A385827.P10829504949234708748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A083217 n : ℝ)⌉

end

end A385827.P10829504949234708748

namespace A385827

/-- `ceil(log2(A083217(n)))` -/
def P10829504949234708748.Spec : Prop :=
  ∀ n, P10829504949234708748.a n = A385827 n

end A385827

/-! ## A385827.P178068019406096999

`ceil(log2(Δ[A015531(n)]))`
-/

namespace A385827.P178068019406096999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (f1 (n + 1) - f1 n : ℝ)⌉

end

end A385827.P178068019406096999

namespace A385827

/-- `ceil(log2(Δ[A015531(n)]))` -/
def P178068019406096999.Spec : Prop :=
  ∀ n, P178068019406096999.a n = A385827 n

end A385827

/-! ## A385827.P3839409065096954664

`round(log2(A199399(n)))`
-/

namespace A385827.P3839409065096954664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A199399 n : ℝ))

end

end A385827.P3839409065096954664

namespace A385827

/-- `round(log2(A199399(n)))` -/
def P3839409065096954664.Spec : Prop :=
  ∀ n, P3839409065096954664.a n = A385827 n

end A385827

/-! ## A385827.P3007020472770314866

`A244644(2*(n+1))-(n+3)`
-/

namespace A385827.P3007020472770314866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 (2 * (n + 1)) - (n + 3 : ℤ)

end

end A385827.P3007020472770314866

namespace A385827

/-- `A244644(2*(n+1))-(n+3)` -/
def P3007020472770314866.Spec : Prop :=
  ∀ n, P3007020472770314866.a n = A385827 n

end A385827

/-!
# A385828: a(n) = Sum_{k=0..n} (binomial(n, k) mod 11).

The programs for A385828, the canonical program `A385828.P2750649397613598606` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385828 has offset 0).

The definition of A385828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)%11]` (program `A385828.P2750649397613598606`, by `A385828.P2750649397613598606.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385828.P2750649397613598606

`∑{#}[n, C(n, #)%11]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385828

/-- `∑{#}[n, C(n, #)%11]` -/
def P2750649397613598606.Spec : Prop :=
  ∀ n, (P2750649397613598606.a n : ℤ) = A385828 n

theorem P2750649397613598606.correct : P2750649397613598606.Spec := by
  intro n
  simp only [A385828]

end A385828

/-!
# A385830: a(0) = 1; a(n) = Sum_{k=0..n-1} (1 + k^2) * a(k) * a(n-1-k).

The programs for A385830, there is no canonical definition to state claims against.
-/

/-! ## A385830.P12125135665970942764

`Δ[A238782(2^n)]`
-/

namespace A385830.P12125135665970942764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238782 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A385830.P12125135665970942764

/-!
# A385831: a(0) = 1; a(n) = Sum_{k=0..n-1} (1 + k^3) * a(k) * a(n-1-k).

The programs for A385831, there is no canonical definition to state claims against.
-/

/-! ## A385831.P7768198898528158651

`A373712(∑[A382031(n)])`
-/

namespace A385831.P7768198898528158651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373712 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A385831.P7768198898528158651

/-!
# A385832: a(0) = 1; a(n) = Sum_{k=0..n-1} (1 + k^4) * a(k) * a(n-1-k).

The programs for A385832, there is no canonical definition to state claims against.
-/

/-! ## A385832.P17232148265345190043

`A196735(n)*A360571(A030019(n))`
-/

namespace A385832.P17232148265345190043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196735 n * A360571 (A030019 n).toNat

end

end A385832.P17232148265345190043

/-!
# A385833: a(0) = 1; a(n) = Sum_{k=0..n-1} (1 + k^5) * a(k) * a(n-1-k).

The programs for A385833, there is no canonical definition to state claims against.
-/

/-! ## A385833.P6402988555872151674

`A245962(A001045(n*A193450(n+1)))`
-/

namespace A385833.P6402988555872151674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245962 (A001045 ((n : ℤ) * A193450 (n + 1)).toNat).toNat

end

end A385833.P6402988555872151674

/-!
# A385835: a(n) = 1 + Sum_{k=0..n-1} (1 + k^2) * a(k) * a(n-1-k).

The programs for A385835, there is no canonical definition to state claims against.
-/

/-! ## A385835.P15660575436880052918

`A142594(A108479(n+1))`
-/

namespace A385835.P15660575436880052918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142594 (A108479 (n + 1)).toNat

end

end A385835.P15660575436880052918

/-!
# A385836: a(n) = 1 + Sum_{k=0..n-1} (1 + k^3) * a(k) * a(n-1-k).

The programs for A385836, there is no canonical definition to state claims against.
-/

/-! ## A385836.P8097864921855214145

`or(A005097(n+1), A361191(A367902(n)))`
-/

namespace A385836.P8097864921855214145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005097 (n + 1)) (A361191 (A367902 n).toNat)

end

end A385836.P8097864921855214145

/-!
# A385840: a(n) = 1 + Sum_{k=0..n-1} k^2 * a(k) * a(n-1-k).

The programs for A385840, there is no canonical definition to state claims against.
-/

/-! ## A385840.P11609188987977548990

`A324583(A006125(n))+A001349(n)`
-/

namespace A385840.P11609188987977548990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324583 (A006125 n).toNat + A001349 n

end

end A385840.P11609188987977548990

/-!
# A385841: a(n) = 1 + Sum_{k=0..n-1} k^3 * a(k) * a(n-1-k).

The programs for A385841, there is no canonical definition to state claims against.
-/

/-! ## A385841.P4799737304557310537

`A127757(A134954(n)²)`
-/

namespace A385841.P4799737304557310537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A134954 n ^ 2).toNat

end

end A385841.P4799737304557310537

/-!
# A385842: a(n) = 1 + Sum_{k=0..n-1} k^4 * a(k) * a(n-1-k).

The programs for A385842, there is no canonical definition to state claims against.
-/

/-! ## A385842.P2362900713399724614

`A098641(n)+A025431(A375435(n))`
-/

namespace A385842.P2362900713399724614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098641 n + A025431 (A375435 n).toNat

end

end A385842.P2362900713399724614

/-!
# A385844: G.f. A(x) satisfies A(x) = 1/((1 - x) * (1 - x^3*A''(x))).

The programs for A385844, there is no canonical definition to state claims against.
-/

/-! ## A385844.P16045804121612910552

`A364533(C(n+2, 4))`
-/

namespace A385844.P16045804121612910552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364533 (Nat.choose (n + 2) 4)

end

end A385844.P16045804121612910552

/-! ## A385844.P7993301597390582960

`A364533(∑[∑[C(n, 2)]])`
-/

namespace A385844.P7993301597390582960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364533 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385844.P7993301597390582960

/-!
# A385845: G.f. A(x) satisfies A(x) = 1/((1 - x) * (1 - x^4*A'''(x))).

The programs for A385845, there is no canonical definition to state claims against.
-/

/-! ## A385845.P15934588478716814902

`∏[A098538(n)%A061967(2*n+3)]`
-/

namespace A385845.P15934588478716814902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098538 n) (A061967 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A385845.P15934588478716814902

/-! ## A385845.P13762477355465725874

`∏[A162235(n!)]`
-/

namespace A385845.P13762477355465725874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162235 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A385845.P13762477355465725874

/-!
# A385846: G.f. A(x) satisfies A(x) = 1/((1 - x) * (1 - x^5*A''''(x))).

The programs for A385846, there is no canonical definition to state claims against.
-/

/-! ## A385846.P13288277482151610337

`A130031(A000009(n))^A036453(A129579(n))`
-/

namespace A385846.P13288277482151610337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130031 (A000009 n).toNat : ℚ) ^ (A036453 (A129579 n).toNat : ℤ)

end

end A385846.P13288277482151610337

/-! ## A385846.P17143383964485085688

`A210651(n*a(n-1))²` with `a(0)=1`
-/

namespace A385846.P17143383964485085688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210651 ((n : ℤ) * a (n - 1)).toNat ^ 2

end

end A385846.P17143383964485085688

/-! ## A385846.P9153504264623124331

`A322837((n+1)*a(n-1))²` with `a(0)=1`
-/

namespace A385846.P9153504264623124331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322837 ((n + 1 : ℤ) * a (n - 1)).toNat ^ 2

end

end A385846.P9153504264623124331

/-!
# A385848: Numbers not of the form 2^m*k + m + 1, for integers m, k >= 1.

The programs for A385848, there is no canonical definition to state claims against.
-/

/-! ## A385848.P16513396637090891457

`eq[1, A227277(n)]+1`
-/

namespace A385848.P16513396637090891457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A385848.P16513396637090891457

/-! ## A385848.P13392929920774773360

`eq[1, A227318(n)]+1`
-/

namespace A385848.P13392929920774773360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A385848.P13392929920774773360

/-! ## A385848.P8317960631150737225

`record[A000027(n+1)/A227277(n)]`
-/

namespace A385848.P8317960631150737225
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A227277 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385848.P8317960631150737225

/-! ## A385848.P11586870949523089759

`record[A166079(n+1)/A227277(n)]`
-/

namespace A385848.P11586870949523089759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166079 (n + 1) : ℚ) / (A227277 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385848.P11586870949523089759

/-! ## A385848.P14362404620465911475

`∑[A034444(∑[A055395(n+1)])]`
-/

namespace A385848.P14362404620465911475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385848.P14362404620465911475

/-!
# A385853: Decimal expansion of log_10(1 + 1/4).

The programs for A385853, there is no canonical definition to state claims against.
-/

/-! ## A385853.P17022155110953593725

`9-A153790(n+1)`
-/

namespace A385853.P17022155110953593725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153790 (n + 1)

end

end A385853.P17022155110953593725

/-!
# A385858: Numbers m in A385402 which are not prime.

The programs for A385858, there is no canonical definition to state claims against.
-/

/-! ## A385858.P15734385321235337903

`filter[A385402(n+1), A005171(#)]`
-/

namespace A385858.P15734385321235337903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A385858.P15734385321235337903

/-! ## A385858.P12588307229464255149

`filter[A385402(n+1), A292438(#)]`
-/

namespace A385858.P12588307229464255149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A385858.P12588307229464255149

/-! ## A385858.P6358190374682012553

`filter[A385402(n+1), A354927(#)]`
-/

namespace A385858.P6358190374682012553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A385858.P6358190374682012553

/-! ## A385858.P7338493088844165889

`filter[A385402(n+1), A359464(#)]`
-/

namespace A385858.P7338493088844165889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A385858.P7338493088844165889

/-! ## A385858.P14946041204526564867

`filter[A385402(n+1), A373481(#)]`
-/

namespace A385858.P14946041204526564867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A385858.P14946041204526564867

/-! ## A385858.P73892852004460471

`filter[A385402(n+1), A383575(#)]`
-/

namespace A385858.P73892852004460471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A385858.P73892852004460471

/-! ## A385858.P4031717067892523129

`filter[A385402(n+1), A385055(#)]`
-/

namespace A385858.P4031717067892523129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385055 (f1 j).toNat = 1) n)

end

end A385858.P4031717067892523129

/-! ## A385858.P17356554595135019027

`∩[A000379(n+1), A385402(n+1)]`
-/

namespace A385858.P17356554595135019027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385858.P17356554595135019027

/-! ## A385858.P17086484611630439142

`∩[A007422(n+1), A385402(n+1)]`
-/

namespace A385858.P17086484611630439142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385858.P17086484611630439142

/-! ## A385858.P9721315236705678450

`∩[A014076(n+1), A385402(n+1)]`
-/

namespace A385858.P9721315236705678450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385858.P9721315236705678450

/-!
# A385859: a(n) = Sum_{k=0..n} (C(n,k) mod 3)^2.

The programs for A385859, the canonical program `A385859.P12807764152539201664` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385859 has offset 0).

The definition of A385859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (C(n, #)%3)²]` (program `A385859.P12807764152539201664`, by `A385859.P12807764152539201664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385859.P12807764152539201664

`∑{#}[n, (C(n, #)%3)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385859

/-- `∑{#}[n, (C(n, #)%3)²]` -/
def P12807764152539201664.Spec : Prop :=
  ∀ n, (P12807764152539201664.a n : ℤ) = A385859 n

theorem P12807764152539201664.correct : P12807764152539201664.Spec := by
  intro n
  simp only [A385859]

end A385859

/-! ## A385859.P16864669968975083291

`2*A227428(n)+A051638(n)`
-/

namespace A385859.P16864669968975083291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A227428 n + A051638 n

end

end A385859.P16864669968975083291

namespace A385859

/-- `2*A227428(n)+A051638(n)` -/
def P16864669968975083291.Spec : Prop :=
  ∀ n, P16864669968975083291.a n = A385859 n

end A385859

/-! ## A385859.P2635097612785413969

`A227428(3*n+2)+A005843(A227428(n))`
-/

namespace A385859.P2635097612785413969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (3 * n + 2) + A005843 (A227428 n).toNat

end

end A385859.P2635097612785413969

namespace A385859

/-- `A227428(3*n+2)+A005843(A227428(n))` -/
def P2635097612785413969.Spec : Prop :=
  ∀ n, P2635097612785413969.a n = A385859 n

end A385859

/-! ## A385859.P8395933161954360156

`A227428(3*n+1)+A227428(A000027(3*n+2))`
-/

namespace A385859.P8395933161954360156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (3 * n + 1) + A227428 (A000027 (3 * n + 2)).toNat

end

end A385859.P8395933161954360156

namespace A385859

/-- `A227428(3*n+1)+A227428(A000027(3*n+2))` -/
def P8395933161954360156.Spec : Prop :=
  ∀ n, P8395933161954360156.a n = A385859 n

end A385859

/-!
# A385860: a(n) is the number of distinct multisets of sides of quadrilaterals with perimeter n, where all four sides are squares.

The programs for A385860, there is no canonical definition to state claims against.
-/

/-! ## A385860.P8360279492963968032

`A339825(A068855(n+1))`
-/

namespace A385860.P8360279492963968032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339825 (A068855 (n + 1)).toNat

end

end A385860.P8360279492963968032

/-! ## A385860.P8291398737078467778

`and(A112778(n+1), A341258(A120641(n)))`
-/

namespace A385860.P8291398737078467778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112778 (n + 1)) (A341258 (A120641 n).toNat)

end

end A385860.P8291398737078467778

/-! ## A385860.P9017890202506566107

`A011699(A329927(n))`
-/

namespace A385860.P9017890202506566107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011699 (A329927 n).toNat

end

end A385860.P9017890202506566107

/-! ## A385860.P11276074757521819377

`A353488(A280969(n+1))`
-/

namespace A385860.P11276074757521819377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 (A280969 (n + 1)).toNat

end

end A385860.P11276074757521819377

/-! ## A385860.P12859210925721883534

`A135022(A074202(n+2))`
-/

namespace A385860.P12859210925721883534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135022 (A074202 (n + 2)).toNat

end

end A385860.P12859210925721883534

/-!
# A385861: Number of n X n yesnograms that can be solved uniquely.

The programs for A385861, there is no canonical definition to state claims against.
-/

/-! ## A385861.P15582813531675191691

`A385862(∑[4*n])`
-/

namespace A385861.P15582813531675191691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385862 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385861.P15582813531675191691

/-!
# A385863: a(n) is the largest number of distinct prime factors a number with at most n digits can have.

The programs for A385863, there is no canonical definition to state claims against.
-/

/-! ## A385863.P5627289870799047360

`∑[char[∑[A387173(n)]]]+1`
-/

namespace A385863.P5627289870799047360
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387173 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A385863.P5627289870799047360

/-! ## A385863.P1808563117660902965

`∑[char[A048856(n+1)-1]]+1`
-/

namespace A385863.P1808563117660902965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048856 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A385863.P1808563117660902965

/-! ## A385863.P18231048556091359217

`A243196(n+1)-1`
-/

namespace A385863.P18231048556091359217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243196 (n + 1) - 1

end

end A385863.P18231048556091359217

/-! ## A385863.P3018871160497939586

`A060207(A062413(n+2))`
-/

namespace A385863.P3018871160497939586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060207 (A062413 (n + 2)).toNat

end

end A385863.P3018871160497939586

/-! ## A385863.P480175014462258281

`A048766(A028347(3*n+4)+A014125(n))`
-/

namespace A385863.P480175014462258281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A028347 (3 * n + 4) + A014125 n).toNat

end

end A385863.P480175014462258281

/-!
# A385864: Number of simple graphs on n unlabeled vertices having a unique independence polynomial.

The programs for A385864, there is no canonical definition to state claims against.
-/

/-! ## A385864.P14990623236346347674

`A184966(a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A385864.P14990623236346347674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A184966 (a (n - 1)).toNat + 1

end

end A385864.P14990623236346347674

/-! ## A385864.P7298592666982207559

`A074712(A150391(n))`
-/

namespace A385864.P7298592666982207559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (A150391 n).toNat

end

end A385864.P7298592666982207559

/-! ## A385864.P15975845834301762651

`A354912(ceil(2^(n-1)))+A065770(n+1)`
-/

namespace A385864.P15975845834301762651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A065770 (n + 1)

end

end A385864.P15975845834301762651

/-! ## A385864.P14378276741931476249

`A354912(A011782(n))+A353862(n+1)`
-/

namespace A385864.P14378276741931476249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 (A011782 n).toNat + A353862 (n + 1)

end

end A385864.P14378276741931476249

/-!
# A385865: Triangle read by rows where T(n,k), for 1 <= k < n, is the column number where (n-k)^2 occurs in an n X n grid filled rowwise with the numbers 1 to n^2.

The programs for A385865, the canonical program `A385865.P12036821787748699265` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385865 has offset 2).

The definition of A385865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385865.P12036821787748699265

`A003057(n+2)-A233558(n+2)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A385865

/-- `A003057(n+2)-A233558(n+2)` -/
def P12036821787748699265.Spec : Prop :=
  ∀ n, P12036821787748699265.a n = A385865 (n + 2)

theorem P12036821787748699265.correct : P12036821787748699265.Spec := by
  intro n
  simp only [A385865, Nat.add_sub_cancel]

end A385865

/-! ## A385865.P3522317174570529040

`A286357(A168517(n))`
-/

namespace A385865.P3522317174570529040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (A168517 n).toNat

end

end A385865.P3522317174570529040

namespace A385865

/-- `A286357(A168517(n))` -/
def P3522317174570529040.Spec : Prop :=
  ∀ n, P3522317174570529040.a n = A385865 (n + 2)

end A385865

/-! ## A385865.P7519115660865156155

`A400228(n+1)^A399980(A159913(n))`
-/

namespace A385865.P7519115660865156155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400228 (n + 1) : ℚ) ^ (A399980 (A159913 n).toNat : ℤ)

end

end A385865.P7519115660865156155

namespace A385865

/-- `A400228(n+1)^A399980(A159913(n))` -/
def P7519115660865156155.Spec : Prop :=
  ∀ n, P7519115660865156155.a n = (A385865 (n + 2) : ℚ)

end A385865

/-! ## A385865.P1992840683242281122

`A356300(n+1)^A001285(A302010(n+1))`
-/

namespace A385865.P1992840683242281122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356300 (n + 1) : ℚ) ^ (A001285 (A302010 (n + 1)).toNat : ℤ)

end

end A385865.P1992840683242281122

namespace A385865

/-- `A356300(n+1)^A001285(A302010(n+1))` -/
def P1992840683242281122.Spec : Prop :=
  ∀ n, P1992840683242281122.a n = (A385865 (n + 2) : ℚ)

end A385865

/-! ## A385865.P8012526904251199210

`gcd(A033718(A001844(3*n+2)), A060036(n+2))`
-/

namespace A385865.P8012526904251199210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033718 (A001844 (3 * n + 2)).toNat) (A060036 (n + 2))

end

end A385865.P8012526904251199210

namespace A385865

/-- `gcd(A033718(A001844(3*n+2)), A060036(n+2))` -/
def P8012526904251199210.Spec : Prop :=
  ∀ n, (P8012526904251199210.a n : ℤ) = A385865 (n + 2)

end A385865

/-!
# A385866: Triangle read by rows where T(n,k), for 1 <= k < n, is the row number where (n-k)^2 occurs in an n X n grid filled rowwise with the numbers 1 to n^2.

The programs for A385866, there is no canonical definition to state claims against.
-/

/-! ## A385866.P15075363196670373030

`A025581(n)+A010052(A157243(n))`
-/

namespace A385866.P15075363196670373030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A010052 (A157243 n).toNat

end

end A385866.P15075363196670373030

/-! ## A385866.P14287398233119085539

`A122200(n)+A010054(A066094(n))`
-/

namespace A385866.P14287398233119085539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 n + A010054 (A066094 n).toNat

end

end A385866.P14287398233119085539

/-! ## A385866.P2022117151546744800

`A105827(A142465(n))+A025581(n)`
-/

namespace A385866.P2022117151546744800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105827 (A142465 n).toNat + A025581 n

end

end A385866.P2022117151546744800

/-! ## A385866.P7082130230456245522

`A156297(A156278(n))+A025581(n)`
-/

namespace A385866.P7082130230456245522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A156278 n).toNat + A025581 n

end

end A385866.P7082130230456245522

/-! ## A385866.P12704643210893848697

`A285527(A028657(n))+A025581(n)`
-/

namespace A385866.P12704643210893848697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285527 (A028657 n).toNat + A025581 n

end

end A385866.P12704643210893848697

/-!
# A385869: The maximum possible number of 7-cycles in an outerplanar graph on n vertices.

The programs for A385869, the canonical program `A385869.P8140800252053773762` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385869 has offset 7).

The definition of A385869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385869.P8140800252053773762

`ogf((1+3x+3x^2+5x^3+4x^4+4x^5)/(1-x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385869

/-- `ogf((1+3x+3x^2+5x^3+4x^4+4x^5)/(1-x-x^4+x^5))` -/
def P8140800252053773762.Spec : Prop :=
  ∀ n, P8140800252053773762.a n = A385869 (n + 7)

theorem P8140800252053773762.correct : P8140800252053773762.Spec := by
  intro n
  simp only [A385869, Nat.add_sub_cancel]

end A385869

/-! ## A385869.P7123830249210921867

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=5, a(4)=5, a(5)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A385869.P7123830249210921867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 5, 5, 7] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385869.P7123830249210921867

namespace A385869

/-- `∑[floor(a(n-4))]` -/
def P7123830249210921867.Spec : Prop :=
  ∀ n, (P7123830249210921867.a n : ℤ) = A385869 (n + 7)

end A385869

/-!
# A385870: Number of subsets of {1,2,...,n} such that no two elements differ by 1 or 6.

The programs for A385870, there is no canonical definition to state claims against.
-/

/-! ## A385870.P17993438110296168010

`filter[A054181(n), A255887(#)]`
-/

namespace A385870.P17993438110296168010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255887 (f1 j).toNat = 1) n)

end

end A385870.P17993438110296168010

/-! ## A385870.P13462614492284121377

`A027383(n)-A025474(A000110(n))`
-/

namespace A385870.P13462614492284121377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n - A025474 (A000110 n).toNat

end

end A385870.P13462614492284121377

/-! ## A385870.P3942880785155728275

`A027383(n)-A373145(A002628(n))`
-/

namespace A385870.P3942880785155728275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n - A373145 (A002628 n).toNat

end

end A385870.P3942880785155728275

/-! ## A385870.P653849624619151934

`A060482(n+1)-A122841(A057574(n))`
-/

namespace A385870.P653849624619151934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060482 (n + 1) - A122841 (A057574 n).toNat

end

end A385870.P653849624619151934

/-! ## A385870.P6681982133520965802

`A060482(n+1)-A010059(A173519(n))`
-/

namespace A385870.P6681982133520965802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060482 (n + 1) - A010059 (A173519 n).toNat

end

end A385870.P6681982133520965802

/-!
# A385873: A sequence constructed by greedily sampling the Poisson distribution for parameter value 1 so as to minimize discrepancy.

The programs for A385873, there is no canonical definition to state claims against.
-/

/-! ## A385873.P16333913828868403651

`A001511(A020336(n+1)%A375137(3*n+1))`
-/

namespace A385873.P16333913828868403651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.tmod (A020336 (n + 1)) (A375137 (3 * n + 1))).toNat

end

end A385873.P16333913828868403651

/-! ## A385873.P13591441759445620055

`A191770(A086614(n))`
-/

namespace A385873.P13591441759445620055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (A086614 n).toNat

end

end A385873.P13591441759445620055

/-! ## A385873.P15520329155773093525

`A001511(∑[7*A136394(n)])`
-/

namespace A385873.P15520329155773093525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A136394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A385873.P15520329155773093525

/-! ## A385873.P9306787074092617759

`gcd(A105662(A299291(3*n)), A319698(n+1))`
-/

namespace A385873.P9306787074092617759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105662 (A299291 (3 * n)).toNat) (A319698 (n + 1))

end

end A385873.P9306787074092617759

/-! ## A385873.P11811004990126761573

`A001221(A357357(n+1)+A250120(2*(n+2)))`
-/

namespace A385873.P11811004990126761573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A357357 (n + 1) + A250120 (2 * (n + 2))).toNat

end

end A385873.P11811004990126761573

/-!
# A385874: a(n) = 1 + Sum_{k=0..n-1} binomial(k+1,2) * a(k) * a(n-1-k).

The programs for A385874, there is no canonical definition to state claims against.
-/

/-! ## A385874.P7686243705617689830

`A047243(A007091(2+a(n-1)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=8`
-/

namespace A385874.P7686243705617689830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 8] fun n a =>
  A047243 (A007091 (2 + a (n - 1)).toNat).toNat

end

end A385874.P7686243705617689830

/-! ## A385874.P17519508342049498803

`A369192(n)+A005614(A001761(n))`
-/

namespace A385874.P17519508342049498803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369192 n + A005614 (A001761 n).toNat

end

end A385874.P17519508342049498803

/-!
# A385875: a(n) = 1 + Sum_{k=0..n-1} binomial(k+2,3) * a(k) * a(n-1-k).

The programs for A385875, there is no canonical definition to state claims against.
-/

/-! ## A385875.P12490963589635783783

`A051889(n!²)`
-/

namespace A385875.P12490963589635783783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Nat.factorial n ^ 2)

end

end A385875.P12490963589635783783

/-!
# A385876: a(n) = 1 + Sum_{k=0..n-1} binomial(k+3,4) * a(k) * a(n-1-k).

The programs for A385876, there is no canonical definition to state claims against.
-/

/-! ## A385876.P9707410291209596840

`A244970(n*a(n-1))` with `a(0)=1`
-/

namespace A385876.P9707410291209596840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A244970 ((n : ℤ) * a (n - 1)).toNat

end

end A385876.P9707410291209596840

/-!
# A385877: a(n) = 1 + Sum_{k=0..n-1} binomial(k+4,5) * a(k) * a(n-1-k).

The programs for A385877, there is no canonical definition to state claims against.
-/

/-! ## A385877.P730141194003011015

`A183292(∏[n!])`
-/

namespace A385877.P730141194003011015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183292 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A385877.P730141194003011015

/-!
# A385879: Values of u in triples (u, v, w) such that the polynomial x^3 + u*x^2 + v*x + w has 3 (possibly repeated) negative integer zeros; the triples are ordered by the inequality u < v.

The programs for A385879, the canonical program `A385879.P5429911478239775443` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385879 has offset 1).

The definition of A385879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385879.P5108768065677419898

`A385880(n+1)-3`
-/

namespace A385879.P5108768065677419898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385880 (n + 1) - 3

end

end A385879.P5108768065677419898

namespace A385879

/-- `A385880(n+1)-3` -/
def P5108768065677419898.Spec : Prop :=
  ∀ n, P5108768065677419898.a n = A385879 (n + 1)

theorem P5108768065677419898.correct : P5108768065677419898.Spec := by
  intro n
  simp only [A385879, Nat.add_sub_cancel, A385879.P5108768065677419898.a, A385879.P5429911478239775443.f3, A385879.P5429911478239775443.f2, A385879.P5429911478239775443.f1, A385879.P5429911478239775443.a, A069905, A069905.P9161905402948910103.a, A385880, A385880.P8400592766073740552.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A385879

/-! ## A385879.P15395752209782453782

`∑[char[A000601(n)]]+3`
-/

namespace A385879.P15395752209782453782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A385879.P15395752209782453782

namespace A385879

/-- `∑[char[A000601(n)]]+3` -/
def P15395752209782453782.Spec : Prop :=
  ∀ n, (P15395752209782453782.a n : ℤ) = A385879 (n + 1)

end A385879

/-! ## A385879.P5429911478239775443

`∑[char[∑[A069905(n)]]]+2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385879

/-- `∑[char[∑[A069905(n)]]]+2` -/
def P5429911478239775443.Spec : Prop :=
  ∀ n, (P5429911478239775443.a n : ℤ) = A385879 (n + 1)

theorem P5429911478239775443.correct : P5429911478239775443.Spec := by
  intro n
  simp only [A385879, Nat.add_sub_cancel]

end A385879

/-! ## A385879.P5833192557234813715

`∑[char[∑[A211540(n)]]]+2`
-/

namespace A385879.P5833192557234813715
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A385879.P5833192557234813715

namespace A385879

/-- `∑[char[∑[A211540(n)]]]+2` -/
def P5833192557234813715.Spec : Prop :=
  ∀ n, (P5833192557234813715.a n : ℤ) = A385879 (n + 1)

end A385879

/-! ## A385879.P13354917087006445064

`∑[char[∑[A001399(n)]]]+3`
-/

namespace A385879.P13354917087006445064
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A385879.P13354917087006445064

namespace A385879

/-- `∑[char[∑[A001399(n)]]]+3` -/
def P13354917087006445064.Spec : Prop :=
  ∀ n, (P13354917087006445064.a n : ℤ) = A385879 (n + 1)

end A385879

/-! ## A385879.P16003016988384947541

`∑[char[A062890(2*n+3)]]+2`
-/

namespace A385879.P16003016988384947541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062890 (2 * n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A385879.P16003016988384947541

namespace A385879

/-- `∑[char[A062890(2*n+3)]]+2` -/
def P16003016988384947541.Spec : Prop :=
  ∀ n, (P16003016988384947541.a n : ℤ) = A385879 (n + 1)

end A385879

/-! ## A385879.P16279715259408740745

`∑[char[∑[A266755(2*n+3)]]]+3`
-/

namespace A385879.P16279715259408740745
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A385879.P16279715259408740745

namespace A385879

/-- `∑[char[∑[A266755(2*n+3)]]]+3` -/
def P16279715259408740745.Spec : Prop :=
  ∀ n, (P16279715259408740745.a n : ℤ) = A385879 (n + 1)

end A385879

/-! ## A385879.P14958915618075612165

`A095791(A272949(n+1))-3`
-/

namespace A385879.P14958915618075612165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A272949 (n + 1)).toNat - 3

end

end A385879.P14958915618075612165

namespace A385879

/-- `A095791(A272949(n+1))-3` -/
def P14958915618075612165.Spec : Prop :=
  ∀ n, P14958915618075612165.a n = A385879 (n + 1)

end A385879

/-! ## A385879.P18270374624142166098

`A316843(3*n+3)-A122876(A256418(n+1))`
-/

namespace A385879.P18270374624142166098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (3 * n + 3) - A122876 (A256418 (n + 1)).toNat

end

end A385879.P18270374624142166098

namespace A385879

/-- `A316843(3*n+3)-A122876(A256418(n+1))` -/
def P18270374624142166098.Spec : Prop :=
  ∀ n, P18270374624142166098.a n = A385879 (n + 1)

end A385879

/-! ## A385879.P13931721650019337922

`A095791(A094564(n+1))`
-/

namespace A385879.P13931721650019337922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A094564 (n + 1)).toNat

end

end A385879.P13931721650019337922

namespace A385879

/-- `A095791(A094564(n+1))` -/
def P13931721650019337922.Spec : Prop :=
  ∀ n, P13931721650019337922.a n = A385879 (n + 1)

end A385879

/-!
# A385880: Values of u in triples (u, v, w) such that the polynomial x^3 + u*x^2 + v*x + w has 3 distinct negative integer zeros; the triples are ordered by the inequality u < v.

The programs for A385880, the canonical program `A385880.P8400592766073740552` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385880 has offset 1).

The definition of A385880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385880.P8400592766073740552

`A385879(n+1)+3`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A385880

/-- `A385879(n+1)+3` -/
def P8400592766073740552.Spec : Prop :=
  ∀ n, P8400592766073740552.a n = A385880 (n + 1)

theorem P8400592766073740552.correct : P8400592766073740552.Spec := by
  intro n
  simp only [A385880, Nat.add_sub_cancel]

end A385880

/-! ## A385880.P17158557973077314836

`∑[char[A000601(n)]]+6`
-/

namespace A385880.P17158557973077314836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A385880.P17158557973077314836

namespace A385880

/-- `∑[char[A000601(n)]]+6` -/
def P17158557973077314836.Spec : Prop :=
  ∀ n, (P17158557973077314836.a n : ℤ) = A385880 (n + 1)

end A385880

/-! ## A385880.P12371257677453152464

`∑[char[∑[A069905(n)]]]+5`
-/

namespace A385880.P12371257677453152464
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A385880.P12371257677453152464

namespace A385880

/-- `∑[char[∑[A069905(n)]]]+5` -/
def P12371257677453152464.Spec : Prop :=
  ∀ n, (P12371257677453152464.a n : ℤ) = A385880 (n + 1)

end A385880

/-! ## A385880.P10850302308219189913

`∑[char[∑[A001399(n)]]]+6`
-/

namespace A385880.P10850302308219189913
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A385880.P10850302308219189913

namespace A385880

/-- `∑[char[∑[A001399(n)]]]+6` -/
def P10850302308219189913.Spec : Prop :=
  ∀ n, (P10850302308219189913.a n : ℤ) = A385880 (n + 1)

end A385880

/-! ## A385880.P9426486730466214678

`A009005(A385879(n+1))`
-/

namespace A385880.P9426486730466214678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A385879 (n + 1)).toNat

end

end A385880.P9426486730466214678

namespace A385880

/-- `A009005(A385879(n+1))` -/
def P9426486730466214678.Spec : Prop :=
  ∀ n, P9426486730466214678.a n = A385880 (n + 1)

end A385880

/-! ## A385880.P990110795155744562

`A095791(A272949(n+1))`
-/

namespace A385880.P990110795155744562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A272949 (n + 1)).toNat

end

end A385880.P990110795155744562

namespace A385880

/-- `A095791(A272949(n+1))` -/
def P990110795155744562.Spec : Prop :=
  ∀ n, P990110795155744562.a n = A385880 (n + 1)

end A385880

/-! ## A385880.P1914386805536951744

`A108852(A094564(n+1))`
-/

namespace A385880.P1914386805536951744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A094564 (n + 1)).toNat

end

end A385880.P1914386805536951744

namespace A385880

/-- `A108852(A094564(n+1))` -/
def P1914386805536951744.Spec : Prop :=
  ∀ n, P1914386805536951744.a n = A385880 (n + 1)

end A385880

/-!
# A385881: Algebraic rank of elliptic curve y^2 = x^3 - n*x - n.

The programs for A385881, there is no canonical definition to state claims against.
-/

/-! ## A385881.P16398573864827816269

`A115211(A310218(n+1))`
-/

namespace A385881.P16398573864827816269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115211 (A310218 (n + 1)).toNat

end

end A385881.P16398573864827816269

/-! ## A385881.P1229850544469761848

`A267371(A330153(n+1))`
-/

namespace A385881.P1229850544469761848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267371 (A330153 (n + 1)).toNat

end

end A385881.P1229850544469761848

/-! ## A385881.P4600569783288095880

`A213728(A089720(n+2))`
-/

namespace A385881.P4600569783288095880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 (A089720 (n + 2)).toNat

end

end A385881.P4600569783288095880

/-! ## A385881.P13601192622951664431

`A010060(A239849(2*n+1)%A059801(n+1))`
-/

namespace A385881.P13601192622951664431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.tmod (A239849 (2 * n + 1)) (A059801 (n + 1))).toNat

end

end A385881.P13601192622951664431

/-! ## A385881.P10388876058226596621

`A030190(or(A014963(2*(n+2)), A080298(n)))`
-/

namespace A385881.P10388876058226596621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (Int.lor (A014963 (2 * (n + 2))) (A080298 n)).toNat

end

end A385881.P10388876058226596621

/-!
# A385882: Values of v in the (1,3)-quartals (m,u,v,w) having m=1; i.e., values of v for solutions to m^1 + u^3 = v^1 + w^3, in positive integers, with m<v, sorted by u, then v.

The programs for A385882, there is no canonical definition to state claims against.
-/

/-! ## A385882.P3697940499478794478

`A386215(n+1)-1`
-/

namespace A385882.P3697940499478794478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386215 (n + 1) - 1

end

end A385882.P3697940499478794478

/-! ## A385882.P15479476326194281446

`A386217(1+n)-2`
-/

namespace A385882.P15479476326194281446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386217 (1 + n) - 2

end

end A385882.P15479476326194281446

/-! ## A385882.P9157465878278355993

`A386219(n+1)-3`
-/

namespace A385882.P9157465878278355993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386219 (n + 1) - 3

end

end A385882.P9157465878278355993

/-! ## A385882.P15358000641900946114

`A023443(A386215(n+1))`
-/

namespace A385882.P15358000641900946114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A386215 (n + 1)).toNat

end

end A385882.P15358000641900946114

/-! ## A385882.P13023022970700998097

`A023444(A386217(n+1))`
-/

namespace A385882.P13023022970700998097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A386217 (n + 1)).toNat

end

end A385882.P13023022970700998097

/-! ## A385882.P7566969405100898029

`A023445(A386219(n+1))`
-/

namespace A385882.P7566969405100898029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A386219 (n + 1)).toNat

end

end A385882.P7566969405100898029

/-!
# A385884: Values of u in the quartets (2, u, v, w) of type 2; i.e., values of u for solutions to 2*(2 + u) = v*(v - w), in positive integers, with v > 1, sorted by nondecreasing values of u; see Comments.

The programs for A385884, there is no canonical definition to state claims against.
-/

/-! ## A385884.P9442399453816103458

`A130250(A340637(n+1))`
-/

namespace A385884.P9442399453816103458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 (A340637 (n + 1)).toNat

end

end A385884.P9442399453816103458

/-! ## A385884.P17732115390824124414

`A070939(A296712(n+1)*A302601(n+1))`
-/

namespace A385884.P17732115390824124414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A296712 (n + 1) * A302601 (n + 1)).toNat

end

end A385884.P17732115390824124414

/-! ## A385884.P13658196987891869296

`A070939(A003754(n+1)*A107036(n+1))`
-/

namespace A385884.P13658196987891869296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A003754 (n + 1) * A107036 (n + 1)).toNat

end

end A385884.P13658196987891869296

/-! ## A385884.P15230203924278846092

`A070939(A258775(n+1)*A272919(n+1))`
-/

namespace A385884.P15230203924278846092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A258775 (n + 1) * A272919 (n + 1)).toNat

end

end A385884.P15230203924278846092

/-! ## A385884.P5792565852924722211

`A070939(A228364(n+2)*A302920(n+1))`
-/

namespace A385884.P5792565852924722211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A228364 (n + 2) * A302920 (n + 1)).toNat

end

end A385884.P5792565852924722211

/-!
# A385886: Irregular triangle read by rows listing the lengths of maximal anti-runs (sequences of distinct consecutive elements increasing by more than 1) of binary indices, duplicate rows removed.

The programs for A385886, there is no canonical definition to state claims against.
-/

/-! ## A385886.P14049189731062567056

`A300410(A132576(n+2))`
-/

namespace A385886.P14049189731062567056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300410 (A132576 (n + 2)).toNat

end

end A385886.P14049189731062567056

/-! ## A385886.P7808812284305641453

`A317905(A064040(2*(n+1))+A033676(2*n+5))`
-/

namespace A385886.P7808812284305641453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317905 (A064040 (2 * (n + 1)) + A033676 (2 * n + 5)).toNat

end

end A385886.P7808812284305641453

/-! ## A385886.P15161596462077221680

`A305831(A074806(n+2))`
-/

namespace A385886.P15161596462077221680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305831 (A074806 (n + 2)).toNat

end

end A385886.P15161596462077221680

/-! ## A385886.P11657125447205886752

`gcd(A235791(2*(n+2)), A297828(A086504(3*n+2)))`
-/

namespace A385886.P11657125447205886752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235791 (2 * (n + 2))) (A297828 (A086504 (3 * n + 2)).toNat)

end

end A385886.P11657125447205886752

/-! ## A385886.P2563390027145906916

`gcd(A020639(A285280(3*n+5)), A258361(2*(n+1)))`
-/

namespace A385886.P2563390027145906916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A285280 (3 * n + 5)).toNat) (A258361 (2 * (n + 1) + 21))

end

end A385886.P2563390027145906916

/-!
# A385887: The number k such that the k-th composition in standard order is the reversed sequence of lengths of maximal runs of binary indices of n.

The programs for A385887, there is no canonical definition to state claims against.
-/

/-! ## A385887.P10400719902090527961

`A346702(xor(n, 2*n))`
-/

namespace A385887.P10400719902090527961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (Nat.xor n (2 * n))

end

end A385887.P10400719902090527961

/-! ## A385887.P16558978571064312078

`A346702(A003188(n))`
-/

namespace A385887.P16558978571064312078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (A003188 n).toNat

end

end A385887.P16558978571064312078

/-! ## A385887.P11359743564498370418

`A346702(A048724(n))`
-/

namespace A385887.P11359743564498370418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (A048724 n).toNat

end

end A385887.P11359743564498370418

/-! ## A385887.P2296758538961043492

`A346702(A048726(n))`
-/

namespace A385887.P2296758538961043492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (A048726 n).toNat

end

end A385887.P2296758538961043492

/-! ## A385887.P1456530666172317227

`A385889(A030101(n))`
-/

namespace A385887.P1456530666172317227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 (A030101 n).toNat

end

end A385887.P1456530666172317227

/-! ## A385887.P12270395650445775170

`A385889(A057889(n))`
-/

namespace A385887.P12270395650445775170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 (A057889 n).toNat

end

end A385887.P12270395650445775170

/-! ## A385887.P3852980013607930439

`A385889(A160638(n))`
-/

namespace A385887.P3852980013607930439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 (A160638 n).toNat

end

end A385887.P3852980013607930439

/-! ## A385887.P7186615137908411634

`A385889(A322464(n))`
-/

namespace A385887.P7186615137908411634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 (A322464 n).toNat

end

end A385887.P7186615137908411634

/-! ## A385887.P14474270735539514190

`A385889(A366389(n))`
-/

namespace A385887.P14474270735539514190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 (A366389 n).toNat

end

end A385887.P14474270735539514190

/-! ## A385887.P10798886795761390389

`xor(A088512(n), A209859(n))`
-/

namespace A385887.P10798886795761390389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088512 n) (A209859 n)

end

end A385887.P10798886795761390389

/-!
# A385888: Irregular triangle read by rows where row n is the Stolarsky representation of n.

The programs for A385888, there is no canonical definition to state claims against.
-/

/-! ## A385888.P2602895888032559408

`A093879(A351330(3*n+2)+A200213(n+1))`
-/

namespace A385888.P2602895888032559408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (A351330 (3 * n + 2) + A200213 (n + 1)).toNat

end

end A385888.P2602895888032559408

/-! ## A385888.P6531185894213952880

`A014493(n+1)%A299229(A258219(n))`
-/

namespace A385888.P6531185894213952880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014493 (n + 1)) (A299229 (A258219 n).toNat)

end

end A385888.P6531185894213952880

/-! ## A385888.P9165478653836761094

`A168046(A088483(n+3)-A088520(n+3))`
-/

namespace A385888.P9165478653836761094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A088483 (n + 3) - A088520 (n + 3)).toNat

end

end A385888.P9165478653836761094

/-! ## A385888.P2069724823286452925

`lcm(A355689(A306977(n+1)), A355689(n+5))`
-/

namespace A385888.P2069724823286452925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A355689 (A306977 (n + 1)).toNat) (A355689 (n + 5))

end

end A385888.P2069724823286452925

/-! ## A385888.P15259811145986749066

`A135528(A006753(n+1)*A124524(3*n+2))`
-/

namespace A385888.P15259811145986749066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A006753 (n + 1) * A124524 (3 * n + 2)).toNat

end

end A385888.P15259811145986749066

/-!
# A385889: The number k such that the k-th composition in standard order is the sequence of lengths of maximal runs of binary indices of n.

The programs for A385889, there is no canonical definition to state claims against.
-/

/-! ## A385889.P17703199990400613290

`xor(A088512(n), A385816(n))`
-/

namespace A385889.P17703199990400613290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088512 n) (A385816 n)

end

end A385889.P17703199990400613290

/-! ## A385889.P4973913764275644592

`∑{p}[A253563(n), A156552(#)]`
-/

namespace A385889.P4973913764275644592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A385889.P4973913764275644592

/-! ## A385889.P18198791475888833106

`∑{p}[A253563(n), A233249(#)]`
-/

namespace A385889.P18198791475888833106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A385889.P18198791475888833106

/-! ## A385889.P14114959505977308455

`∑{p}[A253563(n), A297112(#)]`
-/

namespace A385889.P14114959505977308455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297112 p

end

end A385889.P14114959505977308455

/-! ## A385889.P12629194981612100976

`∑{p}[A253563(n), A329372(#)]`
-/

namespace A385889.P12629194981612100976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A329372 p

end

end A385889.P12629194981612100976

/-! ## A385889.P13905025101527426515

`∑{p}[A253563(n), A357877(#)]`
-/

namespace A385889.P13905025101527426515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A357877 p

end

end A385889.P13905025101527426515

/-! ## A385889.P11174701647008665910

`A087207(∏{p}[A253563(n), #])`
-/

namespace A385889.P11174701647008665910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A385889.P11174701647008665910

/-! ## A385889.P10792726211760778844

`A087207(A253563(n))`
-/

namespace A385889.P10792726211760778844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A253563 n).toNat

end

end A385889.P10792726211760778844

/-! ## A385889.P15476184788822837867

`A209859(n)+A385887(n)-A385816(n)`
-/

namespace A385889.P15476184788822837867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 n + (A385887 n - A385816 n)

end

end A385889.P15476184788822837867

/-! ## A385889.P7566117767194899189

`xor(A088512(n), A209859(A030101(n)))`
-/

namespace A385889.P7566117767194899189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088512 n) (A209859 (A030101 n).toNat)

end

end A385889.P7566117767194899189

/-!
# A385890: Positions of first appearances in A245563 = run lengths of binary indices.

The programs for A385890, there is no canonical definition to state claims against.
-/

/-! ## A385890.P819608336143308155

`A052499(floor(ϕ*n))`
-/

namespace A385890.P819608336143308155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat

end

end A385890.P819608336143308155

/-! ## A385890.P15676436405980885932

`eq[0, A334076(n)]+1`
-/

namespace A385890.P15676436405980885932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A385890.P15676436405980885932

/-! ## A385890.P5292770267068617683

`eq[1, A087117(2*n)]+1`
-/

namespace A385890.P5292770267068617683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A385890.P5292770267068617683

/-! ## A385890.P13807787761075318937

`eq[2*n, A265716(n)]+1`
-/

namespace A385890.P13807787761075318937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A385890.P13807787761075318937

/-! ## A385890.P8689271700560296069

`record[A152271(A052499(n))]`
-/

namespace A385890.P8689271700560296069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A052499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385890.P8689271700560296069

/-! ## A385890.P4699044785393923555

`A003754(A026351(n))+1`
-/

namespace A385890.P4699044785393923555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (A026351 n).toNat + 1

end

end A385890.P4699044785393923555

/-! ## A385890.P4946787988211067767

`A087627(A365808(n+1))`
-/

namespace A385890.P4946787988211067767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087627 (A365808 (n + 1)).toNat

end

end A385890.P4946787988211067767

/-! ## A385890.P10750151707147377770

`filter[A052499(n), A135528(#)]`
-/

namespace A385890.P10750151707147377770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A385890.P10750151707147377770

/-! ## A385890.P7796344857775467270

`filter[A052499(n), A266591(#)]`
-/

namespace A385890.P7796344857775467270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A385890.P7796344857775467270

/-! ## A385890.P13107936289648278053

`filter[A052499(n), A285384(#)]`
-/

namespace A385890.P13107936289648278053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285384 (f1 j).toNat = 1) n)

end

end A385890.P13107936289648278053

/-!
# A385892: In the sequence of run lengths of binary indices of each positive integer (A245563), remove all duplicate rows after the first and take the last term of each remaining row.

The programs for A385892, there is no canonical definition to state claims against.
-/

/-! ## A385892.P15328994977116215193

`A090996(2*eq[and(n, 2*n+1), and(n, 2*n+n+2)]+1)`
-/

namespace A385892.P15328994977116215193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A385892.P15328994977116215193

/-! ## A385892.P12833720906296630311

`A181631(A022413(n))`
-/

namespace A385892.P12833720906296630311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181631 (A022413 n).toNat

end

end A385892.P12833720906296630311

/-! ## A385892.P3027395020827839199

`A090996(A060142(n+1))`
-/

namespace A385892.P3027395020827839199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A060142 (n + 1)).toNat

end

end A385892.P3027395020827839199

/-! ## A385892.P9521743676432338736

`A181631(A000201(n+1))`
-/

namespace A385892.P9521743676432338736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181631 (A000201 (n + 1)).toNat

end

end A385892.P9521743676432338736

/-! ## A385892.P15884387197205228918

`A181631(A001950(n+1))`
-/

namespace A385892.P15884387197205228918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181631 (A001950 (n + 1)).toNat

end

end A385892.P15884387197205228918

/-! ## A385892.P4110451759773223632

`A181631(A066096(n+1))`
-/

namespace A385892.P4110451759773223632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181631 (A066096 (n + 1)).toNat

end

end A385892.P4110451759773223632

/-! ## A385892.P15520524539377755391

`A090996(A175055(n+1))`
-/

namespace A385892.P15520524539377755391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A175055 (n + 1)).toNat

end

end A385892.P15520524539377755391

/-! ## A385892.P1191349955981508554

`A181631(A089910(n+1))`
-/

namespace A385892.P1191349955981508554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181631 (A089910 (n + 1)).toNat

end

end A385892.P1191349955981508554

/-! ## A385892.P3062367887460663478

`A181631(A101870(n+1))`
-/

namespace A385892.P3062367887460663478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181631 (A101870 (n + 1)).toNat

end

end A385892.P3062367887460663478

/-! ## A385892.P17435053081458917057

`A065120(A232559(n+1))`
-/

namespace A385892.P17435053081458917057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A232559 (n + 1)).toNat

end

end A385892.P17435053081458917057

/-!
# A385893: Cycle of length 130 in the dynamical system A385938 starting from 26.

The programs for A385893, the canonical program `A385893.P14429800463252187484` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385893 has offset 0).

The definition of A385893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385893.P14429800463252187484

`A385938(a(n-1))` with `a(0)=26`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385893

/-- `A385938(a(n-1))` -/
def P14429800463252187484.Spec : Prop :=
  ∀ n, P14429800463252187484.a n = A385893 n

theorem P14429800463252187484.correct : P14429800463252187484.Spec := by
  intro n
  simp only [A385893]

end A385893

/-!
# A385894: a(n) = n^5/5 + n^3/3 + 7*n/15.

The programs for A385894, the canonical program `A385894.P12431540993753887142` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385894 has offset 0).

The definition of A385894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385894.P12431540993753887142

`ogf((x+4x^2+14x^3+4x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385894

/-- `ogf((x+4x^2+14x^3+4x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P12431540993753887142.Spec : Prop :=
  ∀ n, P12431540993753887142.a n = A385894 n

theorem P12431540993753887142.correct : P12431540993753887142.Spec := by
  intro n
  simp only [A385894]

end A385894

/-! ## A385894.P7502482160749098558

`n^5/5+n^3/3+7*n/15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385894.P7502482160749098558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℚ) / 5 + (n ^ 3 : ℚ) / 3 + (7 * n : ℚ) / 15

end

end A385894.P7502482160749098558

namespace A385894

/-- `n^5/5+n^3/3+7*n/15` -/
def P7502482160749098558.Spec : Prop :=
  ∀ n, P7502482160749098558.a n = (A385894 n : ℚ)

end A385894

/-! ## A385894.P2947035347433430151

`a(n-1)+((n-1)²+n)²` with `a(0)=0`
-/

namespace A385894.P2947035347433430151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((n : ℤ) - 1) ^ 2 + (n : ℤ)) ^ 2

end

end A385894.P2947035347433430151

namespace A385894

/-- `a(n-1)+((n-1)²+n)²` -/
def P2947035347433430151.Spec : Prop :=
  ∀ n, P2947035347433430151.a n = A385894 n

end A385894

/-! ## A385894.P17945533053526042665

`∑[n^4+n]-C(n²+1, 2)`
-/

namespace A385894.P17945533053526042665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (n ^ 2 + 1) 2 : ℤ)

end

end A385894.P17945533053526042665

namespace A385894

/-- `∑[n^4+n]-C(n²+1, 2)` -/
def P17945533053526042665.Spec : Prop :=
  ∀ n, P17945533053526042665.a n = A385894 n

end A385894

/-! ## A385894.P17686817273907218619

`∑[∑[A004275(n)]²]`
-/

namespace A385894.P17686817273907218619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385894.P17686817273907218619

namespace A385894

/-- `∑[∑[A004275(n)]²]` -/
def P17686817273907218619.Spec : Prop :=
  ∀ n, P17686817273907218619.a n = A385894 n

end A385894

/-! ## A385894.P5733922461074563178

`∑[(1-A386480(n))²]`
-/

namespace A385894.P5733922461074563178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A386480 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385894.P5733922461074563178

namespace A385894

/-- `∑[(1-A386480(n))²]` -/
def P5733922461074563178.Spec : Prop :=
  ∀ n, P5733922461074563178.a n = A385894 n

end A385894

/-! ## A385894.P3838360097464515439

`∑[(n+1-A010000(n))²]`
-/

namespace A385894.P3838360097464515439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A010000 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385894.P3838360097464515439

namespace A385894

/-- `∑[(n+1-A010000(n))²]` -/
def P3838360097464515439.Spec : Prop :=
  ∀ n, P3838360097464515439.a n = A385894 n

end A385894

/-! ## A385894.P11695496026105453992

`∑[A203554(n²)²]`
-/

namespace A385894.P11695496026105453992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203554 (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385894.P11695496026105453992

namespace A385894

/-- `∑[A203554(n²)²]` -/
def P11695496026105453992.Spec : Prop :=
  ∀ n, P11695496026105453992.a n = A385894 n

end A385894

/-! ## A385894.P12651989765504245596

`∑[A083479(n²+n)²]`
-/

namespace A385894.P12651989765504245596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (n ^ 2 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385894.P12651989765504245596

namespace A385894

/-- `∑[A083479(n²+n)²]` -/
def P12651989765504245596.Spec : Prop :=
  ∀ n, P12651989765504245596.a n = A385894 n

end A385894

/-!
# A385895: Table read by rows: T(n, k) = T(n, k-1) + m * T(n-1, n-k) for k > 1, T(n, 1) = T(n-1, n-1), and T(n, 0) = 0^n, for m = 2.

The programs for A385895, there is no canonical definition to state claims against.
-/

/-! ## A385895.P11300430307167323011

`∑{d}[A008281(n), A027585(A324376(#))]`
-/

namespace A385895.P11300430307167323011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A027585 (A324376 d).toNat

end

end A385895.P11300430307167323011

/-! ## A385895.P1289044168613365781

`A006046(A008281(n)%A065374(n+1))`
-/

namespace A385895.P1289044168613365781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (Int.tmod (A008281 n) (A065374 (n + 1))).toNat

end

end A385895.P1289044168613365781

/-! ## A385895.P11998571614779504606

`A083892(10^A008281(n))`
-/

namespace A385895.P11998571614779504606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083892 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A008281 n : ℤ))).toNat

end

end A385895.P11998571614779504606

/-! ## A385895.P2969768124021254470

`A028950(A355007(n))`
-/

namespace A385895.P2969768124021254470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 (A355007 n).toNat

end

end A385895.P2969768124021254470

/-! ## A385895.P11556656866617440674

`A319420(A087736(n))`
-/

namespace A385895.P11556656866617440674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (A087736 n).toNat

end

end A385895.P11556656866617440674

/-!
# A385896: Array read by ascending antidiagonals: A(n, k) = k! * [x^k] (1 - sin(n*x))^(-1/n) for n > 0, A(0, k) = 1.

The programs for A385896, there is no canonical definition to state claims against.
-/

/-! ## A385896.P985645275704036716

`or(A124530(n), A172542(A124530(n+1)))`
-/

namespace A385896.P985645275704036716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124530 n) (A172542 (A124530 (n + 1)).toNat)

end

end A385896.P985645275704036716

/-! ## A385896.P17515577353422583846

`or(A124530(n), A395089(A303763(2*n+1)))`
-/

namespace A385896.P17515577353422583846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124530 n) (A395089 (A303763 (2 * n + 1)).toNat)

end

end A385896.P17515577353422583846

/-! ## A385896.P2989639917340763879

`A291785(A243631(n)^A243631(n+3))`
-/

namespace A385896.P2989639917340763879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291785 (SequenceMachineLib.roundAway ((A243631 n : ℚ) ^ (A243631 (n + 3) : ℤ))).toNat

end

end A385896.P2989639917340763879

/-! ## A385896.P7866439542098077265

`A124530(n)+A007949(A071951(n+1))`
-/

namespace A385896.P7866439542098077265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124530 n + A007949 (A071951 (n + 1)).toNat

end

end A385896.P7866439542098077265

/-! ## A385896.P15015414185542169081

`A291785(A243631(n)%A131062(n+1))`
-/

namespace A385896.P15015414185542169081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291785 (Int.tmod (A243631 n) (A131062 (n + 1))).toNat

end

end A385896.P15015414185542169081

/-!
# A385897: a(n) = 1 - 5*(n + 1)^2 + 5*(n + 1)^4.

The programs for A385897, the canonical program `A385897.P11105662046187679461` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385897 has offset 0).

The definition of A385897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-5*(n+1)²+5*(n+1)^4` (program `A385897.P11105662046187679461`, by `A385897.P11105662046187679461.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385897.P11105662046187679461

`1-5*(n+1)²+5*(n+1)^4`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385897

/-- `1-5*(n+1)²+5*(n+1)^4` -/
def P11105662046187679461.Spec : Prop :=
  ∀ n, P11105662046187679461.a n = A385897 n

theorem P11105662046187679461.correct : P11105662046187679461.Spec := by
  intro n
  simp only [A385897]

end A385897

/-! ## A385897.P11270201077289309330

`xor(1, 5*∑[∑[12*n²]])`
-/

namespace A385897.P11270201077289309330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A385897.P11270201077289309330

namespace A385897

/-- `xor(1, 5*∑[∑[12*n²]])` -/
def P11270201077289309330.Spec : Prop :=
  ∀ n, (P11270201077289309330.a n : ℤ) = A385897 n

end A385897

/-! ## A385897.P14247280463770396584

`Δ[2*n*n²²]-a(n-1)` with `a(0)=1`
-/

namespace A385897.P14247280463770396584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1)

end

end A385897.P14247280463770396584

namespace A385897

/-- `Δ[2*n*n²²]-a(n-1)` -/
def P14247280463770396584.Spec : Prop :=
  ∀ n, P14247280463770396584.a n = A385897 n

theorem P14247280463770396584.correct : P14247280463770396584.Spec := by
  intro n
  induction n with
  | zero => simp [A385897, A385897.P14247280463770396584.f1, A385897.P14247280463770396584.a, A385897.P11105662046187679461.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A385897, Nat.add_sub_cancel, A385897.P14247280463770396584.f1, A385897.P14247280463770396584.a, A385897.P11105662046187679461.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A385897

/-! ## A385897.P1361574028468224251

`∑[A062786(n+1)²]/(n+1)`
-/

namespace A385897.P1361574028468224251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A385897.P1361574028468224251

namespace A385897

/-- `∑[A062786(n+1)²]/(n+1)` -/
def P1361574028468224251.Spec : Prop :=
  ∀ n, P1361574028468224251.a n = (A385897 n : ℚ)

end A385897

/-! ## A385897.P1715417898710578292

`record[10*C(A265110(n+1)², 2)+1]`
-/

namespace A385897.P1715417898710578292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (A265110 (n + 1) ^ 2).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385897.P1715417898710578292

namespace A385897

/-- `record[10*C(A265110(n+1)², 2)+1]` -/
def P1715417898710578292.Spec : Prop :=
  ∀ n, (P1715417898710578292.a n : ℤ) = A385897 n

end A385897

/-! ## A385897.P6688453646435060641

`A062786((1+n)²)`
-/

namespace A385897.P6688453646435060641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 ((1 + n) ^ 2)

end

end A385897.P6688453646435060641

namespace A385897

/-- `A062786((1+n)²)` -/
def P6688453646435060641.Spec : Prop :=
  ∀ n, P6688453646435060641.a n = A385897 n

end A385897

/-! ## A385897.P1414774344727525924

`A193448((n+1)²)/4`
-/

namespace A385897.P1414774344727525924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193448 ((n + 1) ^ 2) : ℚ) / 4

end

end A385897.P1414774344727525924

namespace A385897

/-- `A193448((n+1)²)/4` -/
def P1414774344727525924.Spec : Prop :=
  ∀ n, P1414774344727525924.a n = (A385897 n : ℚ)

end A385897

/-! ## A385897.P11682281405859587186

`record[A062786(A100727(n)²)]`
-/

namespace A385897.P11682281405859587186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (A100727 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385897.P11682281405859587186

namespace A385897

/-- `record[A062786(A100727(n)²)]` -/
def P11682281405859587186.Spec : Prop :=
  ∀ n, P11682281405859587186.a n = A385897 n

end A385897

/-! ## A385897.P11014690954717423671

`record[A062786(A152271(n)²)]`
-/

namespace A385897.P11014690954717423671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (A152271 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385897.P11014690954717423671

namespace A385897

/-- `record[A062786(A152271(n)²)]` -/
def P11014690954717423671.Spec : Prop :=
  ∀ n, P11014690954717423671.a n = A385897 n

end A385897

/-! ## A385897.P5609762520907134503

`or(1, A062786(A000290(n+1)))`
-/

namespace A385897.P5609762520907134503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062786 (A000290 (n + 1)).toNat)

end

end A385897.P5609762520907134503

namespace A385897

/-- `or(1, A062786(A000290(n+1)))` -/
def P5609762520907134503.Spec : Prop :=
  ∀ n, P5609762520907134503.a n = A385897 n

end A385897

/-!
# A385898: a(n) = 16*n^5 + 70*n^4 + 105*n^3 + 65*n^2 + 15*n + 1.

The programs for A385898, the canonical program `A385898.P6094748751542339153` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385898 has offset 0).

The definition of A385898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n^5+70*n^4+105*n^3+65*n²+15*n+1` (program `A385898.P6094748751542339153`, by `A385898.P6094748751542339153.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385898.P6094748751542339153

`16*n^5+70*n^4+105*n^3+65*n²+15*n+1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385898

/-- `16*n^5+70*n^4+105*n^3+65*n²+15*n+1` -/
def P6094748751542339153.Spec : Prop :=
  ∀ n, (P6094748751542339153.a n : ℤ) = A385898 n

theorem P6094748751542339153.correct : P6094748751542339153.Spec := by
  intro n
  simp only [A385898]

end A385898

