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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A226101: Smallest number k such that prime(n) divides the n-th divisor of k.

The programs for A226101, there is no canonical definition to state claims against.
-/

/-! ## A226101.P15216299706486499654

`A061799(A080513(n))*A065091(n+1)`
-/

namespace A226101.P15216299706486499654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A080513 n).toNat * A065091 (n + 1)

end

end A226101.P15216299706486499654

/-! ## A226101.P13205673398783207540

`A000040(n+2)*A061799(A080513(n))`
-/

namespace A226101.P13205673398783207540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A061799 (A080513 n).toNat

end

end A226101.P13205673398783207540

/-! ## A226101.P7897155353557179268

`p?[A004273(n)]*A061799(A008619(n+1))`
-/

namespace A226101.P7897155353557179268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A061799 (A008619 (n + 1)).toNat

end

end A226101.P7897155353557179268

/-! ## A226101.P10211937859940394905

`p?[A005408(n)]*A061799(A008619(n+1))`
-/

namespace A226101.P10211937859940394905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A061799 (A008619 (n + 1)).toNat

end

end A226101.P10211937859940394905

/-! ## A226101.P17216285545731177438

`A061799(A008619(n+1))*A065091(n+1)`
-/

namespace A226101.P17216285545731177438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A008619 (n + 1)).toNat * A065091 (n + 1)

end

end A226101.P17216285545731177438

/-!
# A226102: Prime powers (A025475) representable as triangular(k)+1.

The programs for A226102, there is no canonical definition to state claims against.
-/

/-! ## A226102.P13081427447311774175

`A000217(A226103(n+1))+1`
-/

namespace A226102.P13081427447311774175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A226103 (n + 1)).toNat + 1

end

end A226102.P13081427447311774175

/-! ## A226102.P3702742499446101485

`∩[A025475(n+1), a(n-1)+n]` with `a(0)=1`
-/

namespace A226102.P3702742499446101485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A226102.P3702742499446101485

/-! ## A226102.P17918109228660149689

`A000124(A226103(n+1))`
-/

namespace A226102.P17918109228660149689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A226103 (n + 1)).toNat

end

end A226102.P17918109228660149689

/-!
# A226103: Numbers k such that triangular(k)+1 is a prime power (A025475).

The programs for A226103, there is no canonical definition to state claims against.
-/

/-! ## A226103.P18205310274586134351

`A006451(lt[A074306(n), 8])`
-/

namespace A226103.P18205310274586134351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A226103.P18205310274586134351

/-! ## A226103.P7184615993618681222

`A006451(lt[A282978(n), 8])`
-/

namespace A226103.P7184615993618681222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282978 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A226103.P7184615993618681222

/-! ## A226103.P8583113031446242778

`A006451(lt[A076891(n+1), 3])`
-/

namespace A226103.P8583113031446242778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076891 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A226103.P8583113031446242778

/-! ## A226103.P948856516308818564

`A006451(lt[n, A198332(n+5)])`
-/

namespace A226103.P948856516308818564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198332 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A226103.P948856516308818564

/-!
# A226104: Numbers k such that phi(k)+3 divides k+3.

The programs for A226104, there is no canonical definition to state claims against.
-/

/-! ## A226104.P5543323087663159807

`filter[A166627(n+1), A008966(#)]`
-/

namespace A226104.P5543323087663159807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A226104.P5543323087663159807

/-! ## A226104.P15999956071420613249

`filter[A166627(n+1), A323154(#)]`
-/

namespace A226104.P15999956071420613249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A226104.P15999956071420613249

/-! ## A226104.P11651765776333075214

`filter[A166627(n+1), A323511(#)]`
-/

namespace A226104.P11651765776333075214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A226104.P11651765776333075214

/-! ## A226104.P7632397117115462326

`filter[A166627(n+1), A354819(#)]`
-/

namespace A226104.P7632397117115462326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A226104.P7632397117115462326

/-!
# A226106: G.f.: exp( Sum_{n>=1} A068963(n)*x^n/n ) where A068963(n) = Sum_{d|n} phi(d^3).

The programs for A226106, there is no canonical definition to state claims against.
-/

/-! ## A226106.P4683116996061240223

`A003056(A117422(n))-A265515(n)`
-/

namespace A226106.P4683116996061240223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A117422 n).toNat - A265515 n

end

end A226106.P4683116996061240223

/-! ## A226106.P3315057308985893174

`A084525(A232464(n*A010143(n)))`
-/

namespace A226106.P3315057308985893174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084525 (A232464 ((n : ℤ) * A010143 n).toNat).toNat

end

end A226106.P3315057308985893174

/-!
# A226107: Number of strict partitions of n with Cookie Monster number 2.

The programs for A226107, the canonical program `A226107.P16233036213944861701` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226107 has offset 1).

The definition of A226107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226107.P16233036213944861701

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A226107

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P16233036213944861701.Spec : Prop :=
  ∀ n, P16233036213944861701.a n = A226107 (n + 1)

theorem P16233036213944861701.correct : P16233036213944861701.Spec := by
  intro n
  simp only [A226107, Nat.add_sub_cancel]

end A226107

/-! ## A226107.P13247713850948445045

`a(n-2)+gcd(4, n+1)%3` with `a(0)=0, a(1)=0`
-/

namespace A226107.P13247713850948445045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + Nat.gcd 4 (n + 1) % 3

end

end A226107.P13247713850948445045

namespace A226107

/-- `a(n-2)+gcd(4, n+1)%3` -/
def P13247713850948445045.Spec : Prop :=
  ∀ n, (P13247713850948445045.a n : ℤ) = A226107 (n + 1)

end A226107

/-! ## A226107.P4876592824885504138

`n-floor(a(n-1)+2-n/4)` with `a(0)=0`
-/

namespace A226107.P4876592824885504138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℚ) + (2 - (n : ℚ) / 4)⌋

end

end A226107.P4876592824885504138

namespace A226107

/-- `n-floor(a(n-1)+2-n/4)` -/
def P4876592824885504138.Spec : Prop :=
  ∀ n, P4876592824885504138.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P8353821570693850875

`n-floor(a(n-1)-n/4)-2` with `a(0)=0`
-/

namespace A226107.P8353821570693850875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℚ) - (n : ℚ) / 4⌋ - 2

end

end A226107.P8353821570693850875

namespace A226107

/-- `n-floor(a(n-1)-n/4)-2` -/
def P8353821570693850875.Spec : Prop :=
  ∀ n, P8353821570693850875.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P11183991067762834477

`(n*ratio[gcd(2, n)])%∑[and(2, n^3)!]`
-/

namespace A226107.P11183991067762834477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 (n ^ 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A226107.P11183991067762834477

namespace A226107

/-- `(n*ratio[gcd(2, n)])%∑[and(2, n^3)!]` -/
def P11183991067762834477.Spec : Prop :=
  ∀ n, P11183991067762834477.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P9727643516392368245

`floor(abs((and(1, n)+2)*(n-2)+4)/4)`
-/

namespace A226107.P9727643516392368245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|(Nat.land 1 n + 2 : ℤ) * ((n : ℤ) - 2) + 4| : ℚ) / 4⌋

end

end A226107.P9727643516392368245

namespace A226107

/-- `floor(abs((and(1, n)+2)*(n-2)+4)/4)` -/
def P9727643516392368245.Spec : Prop :=
  ∀ n, P9727643516392368245.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P5300901169028596284

`A318972(n)%(n+1)`
-/

namespace A226107.P5300901169028596284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318972 n) (n + 1 : ℤ)

end

end A226107.P5300901169028596284

namespace A226107

/-- `A318972(n)%(n+1)` -/
def P5300901169028596284.Spec : Prop :=
  ∀ n, P5300901169028596284.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P5789784747679166108

`A001068(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A226107.P5789784747679166108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001068 (n - 1) - a (n - 1)

end

end A226107.P5789784747679166108

namespace A226107

/-- `A001068(n-1)-a(n-1)` -/
def P5789784747679166108.Spec : Prop :=
  ∀ n, P5789784747679166108.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P12436782273406546943

`(2*n/gcd(2, n)²)%comp[A075326(n)]`
-/

namespace A226107.P12436782273406546943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 * n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ))) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A226107.P12436782273406546943

namespace A226107

/-- `(2*n/gcd(2, n)²)%comp[A075326(n)]` -/
def P12436782273406546943.Spec : Prop :=
  ∀ n, P12436782273406546943.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P1512781577415182855

`A000010(gcd(n+3, n-1))+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A226107.P1512781577415182855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000010 (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1)) + a (n - 2)

end

end A226107.P1512781577415182855

namespace A226107

/-- `A000010(gcd(n+3, n-1))+a(n-2)` -/
def P1512781577415182855.Spec : Prop :=
  ∀ n, P1512781577415182855.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P14192049166822596060

`A014682(n)%A265428(n)`
-/

namespace A226107.P14192049166822596060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014682 n) (A265428 n)

end

end A226107.P14192049166822596060

namespace A226107

/-- `A014682(n)%A265428(n)` -/
def P14192049166822596060.Spec : Prop :=
  ∀ n, P14192049166822596060.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P12595491284130582480

`A064680(n)%∑[A177704(n)]`
-/

namespace A226107.P12595491284130582480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064680 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226107.P12595491284130582480

namespace A226107

/-- `A064680(n)%∑[A177704(n)]` -/
def P12595491284130582480.Spec : Prop :=
  ∀ n, P12595491284130582480.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P3953958328136990863

`A130722(n)+A059169(n+1)`
-/

namespace A226107.P3953958328136990863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 n + A059169 (n + 1)

end

end A226107.P3953958328136990863

namespace A226107

/-- `A130722(n)+A059169(n+1)` -/
def P3953958328136990863.Spec : Prop :=
  ∀ n, P3953958328136990863.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P14640837294616343577

`A198442(n+1)-A211521(n)`
-/

namespace A226107.P14640837294616343577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 1) - A211521 n

end

end A226107.P14640837294616343577

namespace A226107

/-- `A198442(n+1)-A211521(n)` -/
def P14640837294616343577.Spec : Prop :=
  ∀ n, P14640837294616343577.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P9939030962130715867

`A006370(n)%A056991(n+1)`
-/

namespace A226107.P9939030962130715867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006370 n) (A056991 (n + 1))

end

end A226107.P9939030962130715867

namespace A226107

/-- `A006370(n)%A056991(n+1)` -/
def P9939030962130715867.Spec : Prop :=
  ∀ n, P9939030962130715867.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P11031579100389156198

`A186349(n+1)-A134519(n+1)`
-/

namespace A226107.P11031579100389156198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186349 (n + 1) - A134519 (n + 1)

end

end A226107.P11031579100389156198

namespace A226107

/-- `A186349(n+1)-A134519(n+1)` -/
def P11031579100389156198.Spec : Prop :=
  ∀ n, P11031579100389156198.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P16774200946676514926

`A059169(n+1)+A178804(n+1)-1`
-/

namespace A226107.P16774200946676514926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1) + (A178804 (n + 1) - 1)

end

end A226107.P16774200946676514926

namespace A226107

/-- `A059169(n+1)+A178804(n+1)-1` -/
def P16774200946676514926.Spec : Prop :=
  ∀ n, P16774200946676514926.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P5494506664426466942

`∑{d}[n+1, A069735(#)*A397788((n+1)/#)]`
-/

namespace A226107.P5494506664426466942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069735 d * A397788 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A226107.P5494506664426466942

namespace A226107

/-- `∑{d}[n+1, A069735(#)*A397788((n+1)/#)]` -/
def P5494506664426466942.Spec : Prop :=
  ∀ n, P5494506664426466942.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P13791603434057082681

`∑{d}[n+1, A166698(#)*A304183((n+1)/#)]`
-/

namespace A226107.P13791603434057082681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A166698 d * A304183 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A226107.P13791603434057082681

namespace A226107

/-- `∑{d}[n+1, A166698(#)*A304183((n+1)/#)]` -/
def P13791603434057082681.Spec : Prop :=
  ∀ n, P13791603434057082681.a n = A226107 (n + 1)

end A226107

/-! ## A226107.P15656192732258571856

`∑{d}[n+1, A004526(#-1)*A019590((n+1)/#)]`
-/

namespace A226107.P15656192732258571856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004526 (d - 1) * A019590 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A226107.P15656192732258571856

namespace A226107

/-- `∑{d}[n+1, A004526(#-1)*A019590((n+1)/#)]` -/
def P15656192732258571856.Spec : Prop :=
  ∀ n, P15656192732258571856.a n = A226107 (n + 1)

end A226107

/-!
# A226108: Primes remaining prime if all but two digits are deleted.

The programs for A226108, there is no canonical definition to state claims against.
-/

/-! ## A226108.P12486530211085718877

`∩[A038187(n+1), A387963(n+1)]`
-/

namespace A226108.P12486530211085718877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226108.P12486530211085718877

/-! ## A226108.P6383461483324811913

`∩[A056758(n+1), A387963(n+1)]`
-/

namespace A226108.P6383461483324811913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226108.P6383461483324811913

/-! ## A226108.P9818546701944344639

`∩[A171491(n+1), A387963(n+1)]`
-/

namespace A226108.P9818546701944344639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226108.P9818546701944344639

/-! ## A226108.P16191472084880650660

`∩[A320427(n+1), A387963(n+1)]`
-/

namespace A226108.P16191472084880650660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226108.P16191472084880650660

/-! ## A226108.P283373620515616870

`∩[A065877(n+1), A387963(n+1)]`
-/

namespace A226108.P283373620515616870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226108.P283373620515616870

/-!
# A226109: Triangular numbers t such that t - 4, t - 2, t + 2, t + 4 are four primes.

The programs for A226109, there is no canonical definition to state claims against.
-/

/-! ## A226109.P10987700981764130989

`∩[A129752(n+1), A173037(n+1)]`
-/

namespace A226109.P10987700981764130989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226109.P10987700981764130989

/-! ## A226109.P3053784245168470070

`∩[A173037(n+1), A226196(n+1)]`
-/

namespace A226109.P3053784245168470070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226109.P3053784245168470070

/-! ## A226109.P13818981351598846389

`∩[A173037(n+1), A000217(A181902(n+2))]`
-/

namespace A226109.P13818981351598846389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A181902 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226109.P13818981351598846389

/-! ## A226109.P13643674773263388677

`∩[A130178(n+1), A173037(n+1)]`
-/

namespace A226109.P13643674773263388677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226109.P13643674773263388677

/-!
# A226110: a(1) = 0. For n > 1, a(n) = maximum distance between two consecutive elements in Collatz(3x+1) trajectory of n.

The programs for A226110, there is no canonical definition to state claims against.
-/

/-! ## A226110.P6471569780081962762

`A057561(A025586(n+1))-A122698(n+1)`
-/

namespace A226110.P6471569780081962762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A025586 (n + 1)).toNat - A122698 (n + 1)

end

end A226110.P6471569780081962762

/-! ## A226110.P16272782362965692926

`or(A025480(A082217(n+1)), A348006(n+1))`
-/

namespace A226110.P16272782362965692926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025480 (A082217 (n + 1)).toNat) (A348006 (n + 1))

end

end A226110.P16272782362965692926

/-!
# A226118: Numbers k such that sigma(tau(phi(k))) = phi(tau(sigma(k))).

The programs for A226118, there is no canonical definition to state claims against.
-/

/-! ## A226118.P18149632085475137848

`eq[A163367(n+1), A163375(n+1)]+1`
-/

namespace A226118.P18149632085475137848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226118.P18149632085475137848

/-!
# A226119: Numbers such that sigma(phi(tau(n)))=tau(phi(sigma(n))).

The programs for A226119, there is no canonical definition to state claims against.
-/

/-! ## A226119.P14936505628327297215

`eq[A163371(n+1), A163378(n+1)]+1`
-/

namespace A226119.P14936505628327297215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226119.P14936505628327297215

/-!
# A226121: Decimal expansion of sum_{n=1..infinity} n^3/(exp(2*Pi*n/13)-1).

The programs for A226121, there is no canonical definition to state claims against.
-/

/-! ## A226121.P12591248449286027777

`and(9, A014332(A264443(n)))`
-/

namespace A226121.P12591248449286027777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 9 (A014332 (A264443 n).toNat)

end

end A226121.P12591248449286027777

/-!
# A226122: Expansion of (1+2*x+x^2+x^3+2*x^4+x^5)/(1-2*x^3+x^6).

The programs for A226122, the canonical program `A226122.P14073912841439967486` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226122 has offset 0).

The definition of A226122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226122.P14073912841439967486

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3, a(4)=6, a(5)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A226122

/-- `2*a(n-3)-a(n-6)` -/
def P14073912841439967486.Spec : Prop :=
  ∀ n, P14073912841439967486.a n = A226122 n

theorem P14073912841439967486.correct : P14073912841439967486.Spec := by
  intro n
  simp only [A226122]

end A226122

/-! ## A226122.P1838150712281364861

`xor(1, a(n-3))+3` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A226122.P1838150712281364861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  Nat.xor 1 (a (n - 3)) + 3

end

end A226122.P1838150712281364861

namespace A226122

/-- `xor(1, a(n-3))+3` -/
def P1838150712281364861.Spec : Prop :=
  ∀ n, (P1838150712281364861.a n : ℤ) = A226122 n

end A226122

/-! ## A226122.P3028332805884090419

`2-xor(-2, a(n-3))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A226122.P3028332805884090419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  2 - Int.xor (-2) (a (n - 3))

end

end A226122.P3028332805884090419

namespace A226122

/-- `2-xor(-2, a(n-3))` -/
def P3028332805884090419.Spec : Prop :=
  ∀ n, P3028332805884090419.a n = A226122 n

end A226122

/-! ## A226122.P13765339350119904532

`Δ[∪[(2*n)², n²+1+n]]`
-/

namespace A226122.P13765339350119904532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A226122.P13765339350119904532

namespace A226122

/-- `Δ[∪[(2*n)², n²+1+n]]` -/
def P13765339350119904532.Spec : Prop :=
  ∀ n, P13765339350119904532.a n = A226122 n

end A226122

/-! ## A226122.P11169829351536074696

`4-xor(1, 1-a(n-3))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A226122.P11169829351536074696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  4 - Int.xor 1 (1 - a (n - 3))

end

end A226122.P11169829351536074696

namespace A226122

/-- `4-xor(1, 1-a(n-3))` -/
def P11169829351536074696.Spec : Prop :=
  ∀ n, P11169829351536074696.a n = A226122 n

end A226122

/-! ## A226122.P2711450348134650414

`a(n-3)+5-gcd(3, ∑[n])` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A226122.P2711450348134650414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (n - 3) + (5 - (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A226122.P2711450348134650414

namespace A226122

/-- `a(n-3)+5-gcd(3, ∑[n])` -/
def P2711450348134650414.Spec : Prop :=
  ∀ n, P2711450348134650414.a n = A226122 n

end A226122

/-! ## A226122.P7772530889358719401

`a(n-3)+2*gcd(2, a(n-3))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A226122.P7772530889358719401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (n - 3) + 2 * Nat.gcd 2 (a (n - 3))

end

end A226122.P7772530889358719401

namespace A226122

/-- `a(n-3)+2*gcd(2, a(n-3))` -/
def P7772530889358719401.Spec : Prop :=
  ∀ n, (P7772530889358719401.a n : ℤ) = A226122 n

end A226122

/-! ## A226122.P16764574780925054199

`a(n-3)+(-1)^a(n-3)+3` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A226122.P16764574780925054199
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (n - 3) + ((-1 : ℝ) ^ (a (n - 3)) + 3)

end

end A226122.P16764574780925054199

namespace A226122

/-- `a(n-3)+(-1)^a(n-3)+3` -/
def P16764574780925054199.Spec : Prop :=
  ∀ n, P16764574780925054199.a n = (A226122 n : ℝ)

end A226122

/-! ## A226122.P14863542016982535274

`a(n-3)+gcd(4, a(n-3)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A226122.P14863542016982535274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (n - 3) + Nat.gcd 4 (a (n - 3) + a (n - 3))

end

end A226122.P14863542016982535274

namespace A226122

/-- `a(n-3)+gcd(4, a(n-3)+a(n-3))` -/
def P14863542016982535274.Spec : Prop :=
  ∀ n, (P14863542016982535274.a n : ℤ) = A226122 n

end A226122

/-! ## A226122.P526403922995638672

`floor(a(n-3)/a(n-2)+a(n-3)+2)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A226122.P526403922995638672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  ⌊(a (n - 3) : ℚ) / (a (n - 2) : ℚ) + (a (n - 3) + 2 : ℚ)⌋

end

end A226122.P526403922995638672

namespace A226122

/-- `floor(a(n-3)/a(n-2)+a(n-3)+2)` -/
def P526403922995638672.Spec : Prop :=
  ∀ n, P526403922995638672.a n = A226122 n

end A226122

/-! ## A226122.P4210989113384124424

`A061393(a(n-3))+a(n-3)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A226122.P4210989113384124424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  A061393 (a (n - 3)).toNat + a (n - 3)

end

end A226122.P4210989113384124424

namespace A226122

/-- `A061393(a(n-3))+a(n-3)` -/
def P4210989113384124424.Spec : Prop :=
  ∀ n, P4210989113384124424.a n = A226122 n

end A226122

/-! ## A226122.P16771670681698703594

`A043547(A133310(n))`
-/

namespace A226122.P16771670681698703594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043547 (A133310 n).toNat

end

end A226122.P16771670681698703594

namespace A226122

/-- `A043547(A133310(n))` -/
def P16771670681698703594.Spec : Prop :=
  ∀ n, P16771670681698703594.a n = A226122 n

end A226122

/-! ## A226122.P18308876249559541340

`A099254(A047240(n+1))`
-/

namespace A226122.P18308876249559541340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (A047240 (n + 1)).toNat

end

end A226122.P18308876249559541340

namespace A226122

/-- `A099254(A047240(n+1))` -/
def P18308876249559541340.Spec : Prop :=
  ∀ n, P18308876249559541340.a n = A226122 n

end A226122

/-! ## A226122.P5667545726705370460

`A222657(n)-A110090(n)`
-/

namespace A226122.P5667545726705370460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222657 n - A110090 n

end

end A226122.P5667545726705370460

namespace A226122

/-- `A222657(n)-A110090(n)` -/
def P5667545726705370460.Spec : Prop :=
  ∀ n, P5667545726705370460.a n = A226122 n

end A226122

/-! ## A226122.P9120971884704376862

`A332057(n+1)-A011655(n)`
-/

namespace A226122.P9120971884704376862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332057 (n + 1) - A011655 n

end

end A226122.P9120971884704376862

namespace A226122

/-- `A332057(n+1)-A011655(n)` -/
def P9120971884704376862.Spec : Prop :=
  ∀ n, P9120971884704376862.a n = A226122 n

end A226122

/-! ## A226122.P6430001617125240827

`A130823(n+1)*A131534(n)`
-/

namespace A226122.P6430001617125240827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (n + 1) * A131534 n

end

end A226122.P6430001617125240827

namespace A226122

/-- `A130823(n+1)*A131534(n)` -/
def P6430001617125240827.Spec : Prop :=
  ∀ n, P6430001617125240827.a n = A226122 n

end A226122

/-! ## A226122.P5865296426321487532

`A099254(2*n-A010872(n))`
-/

namespace A226122.P5865296426321487532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 ((2 * n : ℤ) - A010872 n).toNat

end

end A226122.P5865296426321487532

namespace A226122

/-- `A099254(2*n-A010872(n))` -/
def P5865296426321487532.Spec : Prop :=
  ∀ n, P5865296426321487532.a n = A226122 n

end A226122

/-! ## A226122.P13957960721893417506

`lcm(A057079(n), A130823(n+1))`
-/

namespace A226122.P13957960721893417506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057079 n) (A130823 (n + 1))

end

end A226122.P13957960721893417506

namespace A226122

/-- `lcm(A057079(n), A130823(n+1))` -/
def P13957960721893417506.Spec : Prop :=
  ∀ n, (P13957960721893417506.a n : ℤ) = A226122 n

end A226122

/-! ## A226122.P13082051552280246333

`A099254(n-A010872(n)+n)`
-/

namespace A226122.P13082051552280246333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 ((n : ℤ) - A010872 n + (n : ℤ)).toNat

end

end A226122.P13082051552280246333

namespace A226122

/-- `A099254(n-A010872(n)+n)` -/
def P13082051552280246333.Spec : Prop :=
  ∀ n, P13082051552280246333.a n = A226122 n

end A226122

/-! ## A226122.P8628568165034903564

`A099254(n-(A010872(n)-n))`
-/

namespace A226122.P8628568165034903564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 ((n : ℤ) - (A010872 n - (n : ℤ))).toNat

end

end A226122.P8628568165034903564

namespace A226122

/-- `A099254(n-(A010872(n)-n))` -/
def P8628568165034903564.Spec : Prop :=
  ∀ n, P8628568165034903564.a n = A226122 n

end A226122

/-!
# A226123: Number of terms of the form 2^k in Collatz(3x+1) trajectory of n.

The programs for A226123, there is no canonical definition to state claims against.
-/

/-! ## A226123.P4968240308588832824

`A135282(n+1)+1`
-/

namespace A226123.P4968240308588832824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135282 (n + 1) + 1

end

end A226123.P4968240308588832824

/-! ## A226123.P7991845271788224259

`A005496(A135282(n+1))`
-/

namespace A226123.P7991845271788224259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A135282 (n + 1)).toNat

end

end A226123.P7991845271788224259

/-! ## A226123.P2358173829414805040

`A008908(n+1)-A208981(n+1)`
-/

namespace A226123.P2358173829414805040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A208981 (n + 1)

end

end A226123.P2358173829414805040

/-! ## A226123.P7602086401738385804

`A006577(n+1)+1-A208981(n+1)`
-/

namespace A226123.P7602086401738385804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A208981 (n + 1))

end

end A226123.P7602086401738385804

/-! ## A226123.P18033233770474601565

`A006577(n+1)-A023443(A208981(n+1))`
-/

namespace A226123.P18033233770474601565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A023443 (A208981 (n + 1)).toNat

end

end A226123.P18033233770474601565

/-! ## A226123.P10873249154548966088

`log2(A232503(n+1))+1`
-/

namespace A226123.P10873249154548966088
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A232503 (n + 1) : ℝ) + 1

end

end A226123.P10873249154548966088

/-! ## A226123.P12982876637761495240

`A000005(A232503(n+1))`
-/

namespace A226123.P12982876637761495240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A232503 (n + 1)).toNat

end

end A226123.P12982876637761495240

/-! ## A226123.P1126087049887574049

`A006577(2*A232503(n+1))`
-/

namespace A226123.P1126087049887574049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (2 * A232503 (n + 1)).toNat

end

end A226123.P1126087049887574049

/-! ## A226123.P5181281958338835281

`A007814(2*A232503(n+1))`
-/

namespace A226123.P5181281958338835281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A232503 (n + 1)).toNat

end

end A226123.P5181281958338835281

/-! ## A226123.P18135635334156493664

`A317753(2*A232503(n+1))`
-/

namespace A226123.P18135635334156493664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317753 (2 * A232503 (n + 1)).toNat

end

end A226123.P18135635334156493664

/-! ## A226123.P7890038419525661533

`A347409(2*A232503(n+1))`
-/

namespace A226123.P7890038419525661533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347409 (2 * A232503 (n + 1)).toNat

end

end A226123.P7890038419525661533

/-! ## A226123.P15246936045357027199

`A000120(A232503(n+1)-1)+1`
-/

namespace A226123.P15246936045357027199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A232503 (n + 1) - 1).toNat + 1

end

end A226123.P15246936045357027199

/-! ## A226123.P12636453940092188573

`A089080(A232503(n+1)+1)-1`
-/

namespace A226123.P12636453940092188573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (A232503 (n + 1) + 1).toNat - 1

end

end A226123.P12636453940092188573

/-! ## A226123.P8565567012344967998

`A285717(2*A232503(n+1)-1)`
-/

namespace A226123.P8565567012344967998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285717 (2 * A232503 (n + 1) - 1).toNat

end

end A226123.P8565567012344967998

/-! ## A226123.P12562269948492347128

`A320538(A232503(2*n+1-n))`
-/

namespace A226123.P12562269948492347128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320538 (A232503 (2 * n + 1 - n)).toNat

end

end A226123.P12562269948492347128

/-! ## A226123.P10121984731419485227

`∑{d}[A232503(n+1), A078349(#)]+1`
-/

namespace A226123.P10121984731419485227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A078349 d + 1

end

end A226123.P10121984731419485227

/-! ## A226123.P3800162984996587044

`A232528(∑{e}[A232503(n+1), #]+1)`
-/

namespace A226123.P3800162984996587044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232528 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1)

end

end A226123.P3800162984996587044

/-! ## A226123.P8067488595931145243

`∑{d}[A232503(n+1), #/A232503(#)]`
-/

namespace A226123.P8067488595931145243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232503 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A232503 d : ℚ)

end

end A226123.P8067488595931145243

/-! ## A226123.P3728805353115877507

`A007814(A232503(n+1))+char[A080412(n)]`
-/

namespace A226123.P3728805353115877507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A232503 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A226123.P3728805353115877507

/-! ## A226123.P15556636208506151426

`A006577(A232503(n+1)+A232503(n+1))`
-/

namespace A226123.P15556636208506151426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A232503 (n + 1) + A232503 (n + 1)).toNat

end

end A226123.P15556636208506151426

/-!
# A226124: Denominators of signed reciprocal primes with sums converging to 1.

The programs for A226124, there is no canonical definition to state claims against.
-/

/-! ## A226124.P17893047116209556873

`∑{d}[∑[A019464(n)!]+1, #]-1`
-/

namespace A226124.P17893047116209556873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A019464 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1

end

end A226124.P17893047116209556873

/-!
# A226130: Denominators of rational numbers as generated by the rules: 1 is in S, and if nonzero x is in S, then x+1 and -1/x are in S. (See Comments.)

The programs for A226130, there is no canonical definition to state claims against.
-/

/-! ## A226130.P2131217736114622878

`A226247(ceil(7/(n+1)+n))`
-/

namespace A226130.P2131217736114622878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226247 ⌈7 / (n + 1 : ℚ) + (n : ℚ)⌉.toNat

end

end A226130.P2131217736114622878

/-! ## A226130.P4225441715963891703

`A123317(A137518(n+2)+1)`
-/

namespace A226130.P4225441715963891703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123317 (A137518 (n + 2) + 1).toNat

end

end A226130.P4225441715963891703

/-! ## A226130.P14222723909008365691

`A193592(round(log(A338861(n+1))))`
-/

namespace A226130.P14222723909008365691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.roundAway (Real.log (A338861 (n + 1) : ℝ))).toNat

end

end A226130.P14222723909008365691

/-! ## A226130.P13132332665688167890

`A193592(A161315(n+1)^n+n)`
-/

namespace A226130.P13132332665688167890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A161315 (n + 1) ^ n + (n : ℤ)).toNat

end

end A226130.P13132332665688167890

/-! ## A226130.P13948496536975625362

`A193592(record[A004185(A163352(n))])`
-/

namespace A226130.P13948496536975625362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A163352 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226130.P13948496536975625362

/-!
# A226132: Expansion of - c(-q) * c(q^2) / 9 in powers of q where c() is a cubic AGM theta function.

The programs for A226132, the canonical program `A226132.P3984057379380350820` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226132 has offset 1).

The definition of A226132 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226132.P3984057379380350820

`(-1)^n*A121443(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A226132

/-- `(-1)^n*A121443(n+1)` -/
def P3984057379380350820.Spec : Prop :=
  ∀ n, P3984057379380350820.a n = A226132 (n + 1)

theorem P3984057379380350820.correct : P3984057379380350820.Spec := by
  intro n
  simp only [A226132, Nat.add_sub_cancel]

end A226132

/-! ## A226132.P12168534596059692851

`A124449(n+1)/3^(n%2)`
-/

namespace A226132.P12168534596059692851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124449 (n + 1) : ℚ) / (3 ^ (n % 2) : ℚ)

end

end A226132.P12168534596059692851

namespace A226132

/-- `A124449(n+1)/3^(n%2)` -/
def P12168534596059692851.Spec : Prop :=
  ∀ n, P12168534596059692851.a n = (A226132 (n + 1) : ℚ)

end A226132

/-! ## A226132.P5942140955478604749

`A124449(n+1)/A010684(n)`
-/

namespace A226132.P5942140955478604749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124449 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A226132.P5942140955478604749

namespace A226132

/-- `A124449(n+1)/A010684(n)` -/
def P5942140955478604749.Spec : Prop :=
  ∀ n, P5942140955478604749.a n = (A226132 (n + 1) : ℚ)

end A226132

/-! ## A226132.P2136457377216051961

`A121443(n+1)/A033999(n)`
-/

namespace A226132.P2136457377216051961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121443 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A226132.P2136457377216051961

namespace A226132

/-- `A121443(n+1)/A033999(n)` -/
def P2136457377216051961.Spec : Prop :=
  ∀ n, P2136457377216051961.a n = (A226132 (n + 1) : ℚ)

end A226132

/-! ## A226132.P15965040627296598145

`A385138(n+1)/A118827(n+1)`
-/

namespace A226132.P15965040627296598145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385138 (n + 1) : ℚ) / (A118827 (n + 1) : ℚ)

end

end A226132.P15965040627296598145

namespace A226132

/-- `A385138(n+1)/A118827(n+1)` -/
def P15965040627296598145.Spec : Prop :=
  ∀ n, P15965040627296598145.a n = (A226132 (n + 1) : ℚ)

end A226132

/-! ## A226132.P7856777765703741461

`A124449(n+1)/(2-A033999(n))`
-/

namespace A226132.P7856777765703741461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124449 (n + 1) : ℚ) / (2 - A033999 n : ℚ)

end

end A226132.P7856777765703741461

namespace A226132

/-- `A124449(n+1)/(2-A033999(n))` -/
def P7856777765703741461.Spec : Prop :=
  ∀ n, P7856777765703741461.a n = (A226132 (n + 1) : ℚ)

end A226132

/-! ## A226132.P16188915546818440267

`A124449(n+1)/(Δ[A109613(n)]+1)`
-/

namespace A226132.P16188915546818440267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124449 (n + 1) : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A226132.P16188915546818440267

namespace A226132

/-- `A124449(n+1)/(Δ[A109613(n)]+1)` -/
def P16188915546818440267.Spec : Prop :=
  ∀ n, P16188915546818440267.a n = (A226132 (n + 1) : ℚ)

end A226132

/-! ## A226132.P18003053022588393459

`(A124449(n+1)+A121443(n+1))/2`
-/

namespace A226132.P18003053022588393459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124449 (n + 1) + A121443 (n + 1) : ℚ) / 2

end

end A226132.P18003053022588393459

namespace A226132

/-- `(A124449(n+1)+A121443(n+1))/2` -/
def P18003053022588393459.Spec : Prop :=
  ∀ n, P18003053022588393459.a n = (A226132 (n + 1) : ℚ)

end A226132

/-! ## A226132.P12767069833001260270

`2*A121443(n+1)-A214361(n+1)`
-/

namespace A226132.P12767069833001260270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121443 (n + 1) - A214361 (n + 1)

end

end A226132.P12767069833001260270

namespace A226132

/-- `2*A121443(n+1)-A214361(n+1)` -/
def P12767069833001260270.Spec : Prop :=
  ∀ n, P12767069833001260270.a n = A226132 (n + 1)

end A226132

/-! ## A226132.P2034387135630312597

`∑{d}[n+1, A256232(#)*A319997((n+1)/#)]`
-/

namespace A226132.P2034387135630312597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A256232 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A226132.P2034387135630312597

namespace A226132

/-- `∑{d}[n+1, A256232(#)*A319997((n+1)/#)]` -/
def P2034387135630312597.Spec : Prop :=
  ∀ n, P2034387135630312597.a n = A226132 (n + 1)

end A226132

/-! ## A226132.P16827961518694401268

`A124449(n+1)/A109613(Δ[A109613(n)])`
-/

namespace A226132.P16827961518694401268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124449 (n + 1) : ℚ) / (A109613 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A226132.P16827961518694401268

namespace A226132

/-- `A124449(n+1)/A109613(Δ[A109613(n)])` -/
def P16827961518694401268.Spec : Prop :=
  ∀ n, P16827961518694401268.a n = (A226132 (n + 1) : ℚ)

end A226132

/-! ## A226132.P8154434333236015441

`A121443(n+1)/A098098(n)*A258831(n)`
-/

namespace A226132.P8154434333236015441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121443 (n + 1) : ℚ) / (A098098 n : ℚ) * (A258831 n : ℚ)

end

end A226132.P8154434333236015441

namespace A226132

/-- `A121443(n+1)/A098098(n)*A258831(n)` -/
def P8154434333236015441.Spec : Prop :=
  ∀ n, P8154434333236015441.a n = (A226132 (n + 1) : ℚ)

end A226132

/-! ## A226132.P9560840020656565642

`A124449(n+1)+A214361(n+1)-A121443(n+1)`
-/

namespace A226132.P9560840020656565642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124449 (n + 1) + (A214361 (n + 1) - A121443 (n + 1))

end

end A226132.P9560840020656565642

namespace A226132

/-- `A124449(n+1)+A214361(n+1)-A121443(n+1)` -/
def P9560840020656565642.Spec : Prop :=
  ∀ n, P9560840020656565642.a n = A226132 (n + 1)

end A226132

/-! ## A226132.P11140960315491867353

`A124449(n+1)/A106151(A022998(n+1)/(n+1)+1)`
-/

namespace A226132.P11140960315491867353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124449 (n + 1) : ℚ) / (A106151 (SequenceMachineLib.roundAway ((A022998 (n + 1) : ℚ) / (n + 1 : ℚ) + 1)).toNat : ℚ)

end

end A226132.P11140960315491867353

namespace A226132

/-- `A124449(n+1)/A106151(A022998(n+1)/(n+1)+1)` -/
def P11140960315491867353.Spec : Prop :=
  ∀ n, P11140960315491867353.a n = (A226132 (n + 1) : ℚ)

end A226132

/-! ## A226132.P2854027290022982487

`A121443(n+1)*A133739(n+1)/A329651(n+1)`
-/

namespace A226132.P2854027290022982487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121443 (n + 1) * A133739 (n + 1) : ℚ) / (A329651 (n + 1) : ℚ)

end

end A226132.P2854027290022982487

namespace A226132

/-- `A121443(n+1)*A133739(n+1)/A329651(n+1)` -/
def P2854027290022982487.Spec : Prop :=
  ∀ n, P2854027290022982487.a n = (A226132 (n + 1) : ℚ)

end A226132

/-! ## A226132.P16418983404078666359

`2*A121443(n+1)-A121443(A080512(n+1))`
-/

namespace A226132.P16418983404078666359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121443 (n + 1) - A121443 (A080512 (n + 1)).toNat

end

end A226132.P16418983404078666359

namespace A226132

/-- `2*A121443(n+1)-A121443(A080512(n+1))` -/
def P16418983404078666359.Spec : Prop :=
  ∀ n, P16418983404078666359.a n = A226132 (n + 1)

end A226132

/-! ## A226132.P10917758571344843894

`A124449(n+1)/(2-A057077(A005408(n)))`
-/

namespace A226132.P10917758571344843894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124449 (n + 1) : ℚ) / (2 - A057077 (A005408 n).toNat : ℚ)

end

end A226132.P10917758571344843894

namespace A226132

/-- `A124449(n+1)/(2-A057077(A005408(n)))` -/
def P10917758571344843894.Spec : Prop :=
  ∀ n, P10917758571344843894.a n = (A226132 (n + 1) : ℚ)

end A226132

/-! ## A226132.P1587894136680768098

`2*A121443(n+1)-A121443(A165998(n))`
-/

namespace A226132.P1587894136680768098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121443 (n + 1) - A121443 (A165998 n).toNat

end

end A226132.P1587894136680768098

namespace A226132

/-- `2*A121443(n+1)-A121443(A165998(n))` -/
def P1587894136680768098.Spec : Prop :=
  ∀ n, P1587894136680768098.a n = A226132 (n + 1)

end A226132

/-! ## A226132.P3855135091420149236

`2*A121443(n+1)-A121443(A106832(n+1))`
-/

namespace A226132.P3855135091420149236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121443 (n + 1) - A121443 (A106832 (n + 1)).toNat

end

end A226132.P3855135091420149236

namespace A226132

/-- `2*A121443(n+1)-A121443(A106832(n+1))` -/
def P3855135091420149236.Spec : Prop :=
  ∀ n, P3855135091420149236.a n = A226132 (n + 1)

end A226132

/-! ## A226132.P111413172352721928

`∑{d}[n+1, A115235(#)*A278085((n+1)/#)]`
-/

namespace A226132.P111413172352721928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115235 d * A278085 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A226132.P111413172352721928

namespace A226132

/-- `∑{d}[n+1, A115235(#)*A278085((n+1)/#)]` -/
def P111413172352721928.Spec : Prop :=
  ∀ n, P111413172352721928.a n = A226132 (n + 1)

end A226132

/-!
# A226133: Integers of the form (p*q-1)/24 where p < q are primes.

The programs for A226133, the canonical program `A226133.P1863923535064680015` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226133 has offset 1).

The definition of A226133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226133.P18331405842660980135

`eq[4, A000005(24*n+1)]`
-/

namespace A226133.P18331405842660980135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (24 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226133.P18331405842660980135

namespace A226133

/-- `eq[4, A000005(24*n+1)]` -/
def P18331405842660980135.Spec : Prop :=
  ∀ n, (P18331405842660980135.a n : ℤ) = A226133 (n + 1)

end A226133

/-! ## A226133.P2384324760799504699

`eq[4, A077462(A103214(n))]`
-/

namespace A226133.P2384324760799504699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A103214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226133.P2384324760799504699

namespace A226133

/-- `eq[4, A077462(A103214(n))]` -/
def P2384324760799504699.Spec : Prop :=
  ∀ n, (P2384324760799504699.a n : ℤ) = A226133 (n + 1)

end A226133

/-! ## A226133.P1863923535064680015

`eq[2, A051709(24*n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A226133

/-- `eq[2, A051709(24*n+1)]` -/
def P1863923535064680015.Spec : Prop :=
  ∀ n, (P1863923535064680015.a n : ℤ) = A226133 (n + 1)

theorem P1863923535064680015.correct : P1863923535064680015.Spec := by
  intro n
  simp only [A226133, Nat.add_sub_cancel]

end A226133

/-! ## A226133.P11666340366308301061

`eq[6, A278223(A017533(n))]`
-/

namespace A226133.P11666340366308301061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A017533 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226133.P11666340366308301061

namespace A226133

/-- `eq[6, A278223(A017533(n))]` -/
def P11666340366308301061.Spec : Prop :=
  ∀ n, (P11666340366308301061.a n : ℤ) = A226133 (n + 1)

end A226133

/-! ## A226133.P10918085148585785106

`eq[12, A281113(6*8*n+2)]`
-/

namespace A226133.P10918085148585785106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281113 (6 * (8 * n) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226133.P10918085148585785106

namespace A226133

/-- `eq[12, A281113(6*8*n+2)]` -/
def P10918085148585785106.Spec : Prop :=
  ∀ n, (P10918085148585785106.a n : ℤ) = A226133 (n + 1)

end A226133

/-! ## A226133.P347329545477877834

`eq[3, A002033(A008606(n))]`
-/

namespace A226133.P347329545477877834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A008606 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226133.P347329545477877834

namespace A226133

/-- `eq[3, A002033(A008606(n))]` -/
def P347329545477877834.Spec : Prop :=
  ∀ n, (P347329545477877834.a n : ℤ) = A226133 (n + 1)

end A226133

/-!
# A226136: Positions of the positive integers in the ordering of rational numbers as generated by the rules: 1 is in S, and if nonzero x is in S, then x+1 and -1/x are in S. (See Comments.)

The programs for A226136, the canonical program `A226136.P9465439025965053359` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226136 has offset 1).

The definition of A226136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226136.P9465439025965053359

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=10, a(5)=15`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A226136

/-- `a(n-1)+a(n-3)` -/
def P9465439025965053359.Spec : Prop :=
  ∀ n, (P9465439025965053359.a n : ℤ) = A226136 (n + 1)

theorem P9465439025965053359.correct : P9465439025965053359.Spec := by
  intro n
  simp only [A226136, Nat.add_sub_cancel]

end A226136

/-! ## A226136.P11481179086149217580

`A003410(floor(atan(n)+n))-char[2]`
-/

namespace A226136.P11481179086149217580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A226136.P11481179086149217580

namespace A226136

/-- `A003410(floor(atan(n)+n))-char[2]` -/
def P11481179086149217580.Spec : Prop :=
  ∀ n, P11481179086149217580.a n = A226136 (n + 1)

end A226136

/-! ## A226136.P2180338344480328081

`A226275(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A226136.P2180338344480328081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A226275 (n - 1) + a (n - 1)

end

end A226136.P2180338344480328081

namespace A226136

/-- `A226275(n-1)+a(n-1)` -/
def P2180338344480328081.Spec : Prop :=
  ∀ n, P2180338344480328081.a n = A226136 (n + 1)

end A226136

/-! ## A226136.P4943938339771995409

`∑[A226275(log2(ceil(2^(n-1))))]`
-/

namespace A226136.P4943938339771995409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226275 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226136.P4943938339771995409

namespace A226136

/-- `∑[A226275(log2(ceil(2^(n-1))))]` -/
def P4943938339771995409.Spec : Prop :=
  ∀ n, P4943938339771995409.a n = A226136 (n + 1)

end A226136

/-!
# A226137: Positions of the integers in the ordering of rational numbers as generated by the rules: 1 is in S, and if nonzero x is in S, then x+1 and -1/x are in S. (See Comments.)

The programs for A226137, there is no canonical definition to state claims against.
-/

/-! ## A226137.P11672450101329242829

`eq[1, A226130(n+1)]+1`
-/

namespace A226137.P11672450101329242829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226130 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226137.P11672450101329242829

/-! ## A226137.P14392344196263895619

`record[A133310(n)/A226130(A133310(n))]`
-/

namespace A226137.P14392344196263895619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133310 n : ℚ) / (A226130 (A133310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226137.P14392344196263895619

/-! ## A226137.P14719315678406128187

`record[A344180(n)/A226130(A344180(n))]`
-/

namespace A226137.P14719315678406128187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344180 n : ℚ) / (A226130 (A344180 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226137.P14719315678406128187

/-! ## A226137.P13557863667076575540

`record[A232560(A232559(n+1))/A226130(n+1)]`
-/

namespace A226137.P13557863667076575540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232560 (A232559 (n + 1)).toNat : ℚ) / (A226130 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226137.P13557863667076575540

/-! ## A226137.P7271383152707669473

`record[A325563(n+1)/A226130(A325563(n+1))]`
-/

namespace A226137.P7271383152707669473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325563 (n + 1) : ℚ) / (A226130 (A325563 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226137.P7271383152707669473

/-!
# A226138: Numbers k such that k^2 = (2i+1)^2 + (2j+1)^2 - 1, where i <= j and i,j > 0, retaining multiples of same k obtained from different i, j combinations.

The programs for A226138, there is no canonical definition to state claims against.
-/

/-! ## A226138.P14659732048558054341

`lt[2, A060689(n²+1)]`
-/

namespace A226138.P14659732048558054341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226138.P14659732048558054341

/-! ## A226138.P18272093375805558565

`lt[1, Δ[A066295(n²+1)]]`
-/

namespace A226138.P18272093375805558565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066295 (n ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226138.P18272093375805558565

/-! ## A226138.P8094326132585308329

`lt[7, A051516(5*(n²+1))]`
-/

namespace A226138.P8094326132585308329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (5 * (n ^ 2 + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226138.P8094326132585308329

/-! ## A226138.P4957127251538507069

`A183110(A166080(n+2))`
-/

namespace A226138.P4957127251538507069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183110 (A166080 (n + 2)).toNat

end

end A226138.P4957127251538507069

/-! ## A226138.P16357854697969439209

`A180263(A077741(n+1)+1)`
-/

namespace A226138.P16357854697969439209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180263 (A077741 (n + 1) + 1).toNat

end

end A226138.P16357854697969439209

/-!
# A226139: Expansion of b(-q) * b(q^2) in powers of q where b() is a cubic AGM theta function.

The programs for A226139, there is no canonical definition to state claims against.
-/

/-! ## A226139.P16893166663178907450

`(-1)^n*A131943(n)`
-/

namespace A226139.P16893166663178907450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A131943 n

end

end A226139.P16893166663178907450

/-! ## A226139.P18438567396254021817

`3^(n%2)*A118271(n)`
-/

namespace A226139.P18438567396254021817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A118271 n

end

end A226139.P18438567396254021817

/-! ## A226139.P10150887355882483507

`A010684(n)*A118271(n)`
-/

namespace A226139.P10150887355882483507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A118271 n

end

end A226139.P10150887355882483507

/-! ## A226139.P17010655485577896212

`(2-A033999(n))*A118271(n)`
-/

namespace A226139.P17010655485577896212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A118271 n

end

end A226139.P17010655485577896212

/-! ## A226139.P12774117219012807803

`2*A118271(n)-A214456(n)`
-/

namespace A226139.P12774117219012807803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118271 n - A214456 n

end

end A226139.P12774117219012807803

/-! ## A226139.P6183925091391398778

`A131943(n)/(-A054977(n))^n`
-/

namespace A226139.P6183925091391398778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131943 n : ℚ) / ((-A054977 n) ^ n : ℚ)

end

end A226139.P6183925091391398778

/-! ## A226139.P350852221406807605

`A083243(Δ[or(1, n)]+1)*A118271(n)`
-/

namespace A226139.P350852221406807605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083243 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat * A118271 n

end

end A226139.P350852221406807605

/-! ## A226139.P11154422456764102294

`A118271(n)*A336655(1-A052928(n)+n)`
-/

namespace A226139.P11154422456764102294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118271 n * A336655 (1 - A052928 n + (n : ℤ)).toNat

end

end A226139.P11154422456764102294

/-! ## A226139.P10525902427013169520

`(Δ[A052928(n)]+1)*A118271(n)`
-/

namespace A226139.P10525902427013169520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A118271 n

end

end A226139.P10525902427013169520

/-! ## A226139.P14174340326742437597

`A033999(n)*A118271(2*n)`
-/

namespace A226139.P14174340326742437597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A118271 (2 * n)

end

end A226139.P14174340326742437597

/-! ## A226139.P7944709819583178110

`A033999(n)*A214456(2*n)`
-/

namespace A226139.P7944709819583178110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A214456 (2 * n)

end

end A226139.P7944709819583178110

/-! ## A226139.P11984170278475337488

`(2-A010684(n))*A214456(2*n)`
-/

namespace A226139.P11984170278475337488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A214456 (2 * n)

end

end A226139.P11984170278475337488

/-! ## A226139.P525934062321724273

`A009001(2*n)*A118271(2*n)`
-/

namespace A226139.P525934062321724273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A118271 (2 * n)

end

end A226139.P525934062321724273

/-! ## A226139.P7710725720096623262

`A131943(n)/A057077(A005408(n))`
-/

namespace A226139.P7710725720096623262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131943 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A226139.P7710725720096623262

/-! ## A226139.P18373241162492720126

`A131943(n)/A033999(n²)`
-/

namespace A226139.P18373241162492720126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131943 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A226139.P18373241162492720126

/-!
# A226141: Sum of the squared parts of the partitions of n into exactly two parts.

The programs for A226141, the canonical program `A226141.P16351931165388701670` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226141 has offset 1).

The definition of A226141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226141.P16351931165388701670

`A000330(n+1)-A308422(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226141

/-- `A000330(n+1)-A308422(n+1)` -/
def P16351931165388701670.Spec : Prop :=
  ∀ n, P16351931165388701670.a n = A226141 (n + 1)

theorem P16351931165388701670.correct : P16351931165388701670.Spec := by
  intro n
  simp only [A226141, Nat.add_sub_cancel]

end A226141

/-! ## A226141.P9004547557431381096

`∑[n²]+(∑[n]%(n+1))²`
-/

namespace A226141.P9004547557431381096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)) ^ 2

end

end A226141.P9004547557431381096

namespace A226141

/-- `∑[n²]+(∑[n]%(n+1))²` -/
def P9004547557431381096.Spec : Prop :=
  ∀ n, (P9004547557431381096.a n : ℤ) = A226141 (n + 1)

end A226141

/-! ## A226141.P6132643424229271453

`A212766(n)-A176060(n)`
-/

namespace A226141.P6132643424229271453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212766 n - A176060 n

end

end A226141.P6132643424229271453

namespace A226141

/-- `A212766(n)-A176060(n)` -/
def P6132643424229271453.Spec : Prop :=
  ∀ n, P6132643424229271453.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P126553923807694542

`A212968(n)-A212760(n)`
-/

namespace A226141.P126553923807694542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212968 n - A212760 n

end

end A226141.P126553923807694542

namespace A226141

/-- `A212968(n)-A212760(n)` -/
def P126553923807694542.Spec : Prop :=
  ∀ n, P126553923807694542.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P14267144664297286486

`A167875(n)-A056136(n+1)`
-/

namespace A226141.P14267144664297286486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n - A056136 (n + 1)

end

end A226141.P14267144664297286486

namespace A226141

/-- `A167875(n)-A056136(n+1)` -/
def P14267144664297286486.Spec : Prop :=
  ∀ n, P14267144664297286486.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P8025844458277510881

`A006331(n)-A294286(n+1)`
-/

namespace A226141.P8025844458277510881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n - A294286 (n + 1)

end

end A226141.P8025844458277510881

namespace A226141

/-- `A006331(n)-A294286(n+1)` -/
def P8025844458277510881.Spec : Prop :=
  ∀ n, P8025844458277510881.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P6937911190065676481

`A178946(n+1)-A390802(n+1)`
-/

namespace A226141.P6937911190065676481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178946 (n + 1) - A390802 (n + 1)

end

end A226141.P6937911190065676481

namespace A226141

/-- `A178946(n+1)-A390802(n+1)` -/
def P6937911190065676481.Spec : Prop :=
  ∀ n, P6937911190065676481.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P15477245959294185424

`2*A000330(n)-A294286(n+1)`
-/

namespace A226141.P15477245959294185424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000330 n - A294286 (n + 1)

end

end A226141.P15477245959294185424

namespace A226141

/-- `2*A000330(n)-A294286(n+1)` -/
def P15477245959294185424.Spec : Prop :=
  ∀ n, P15477245959294185424.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P16321182187781303996

`(A177755(n+1)-A036464(n+1))/2`
-/

namespace A226141.P16321182187781303996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177755 (n + 1) - A036464 (n + 1) : ℚ) / 2

end

end A226141.P16321182187781303996

namespace A226141

/-- `(A177755(n+1)-A036464(n+1))/2` -/
def P16321182187781303996.Spec : Prop :=
  ∀ n, P16321182187781303996.a n = (A226141 (n + 1) : ℚ)

end A226141

/-! ## A226141.P3279508917935377176

`A000330(n)+(A000035(n)*A008619(n))²`
-/

namespace A226141.P3279508917935377176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + (A000035 n * A008619 n) ^ 2

end

end A226141.P3279508917935377176

namespace A226141

/-- `A000330(n)+(A000035(n)*A008619(n))²` -/
def P3279508917935377176.Spec : Prop :=
  ∀ n, P3279508917935377176.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P5167918502265047268

`∑[n²]+A142150(n+1)²`
-/

namespace A226141.P5167918502265047268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A142150 (n + 1) ^ 2

end

end A226141.P5167918502265047268

namespace A226141

/-- `∑[n²]+A142150(n+1)²` -/
def P5167918502265047268.Spec : Prop :=
  ∀ n, P5167918502265047268.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P5385252374437726102

`A000330(n)+Δ[A000330(A004526(n))]`
-/

namespace A226141.P5385252374437726102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + (f1 (n + 1) - f1 n)

end

end A226141.P5385252374437726102

namespace A226141

/-- `A000330(n)+Δ[A000330(A004526(n))]` -/
def P5385252374437726102.Spec : Prop :=
  ∀ n, P5385252374437726102.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P16231756726428020940

`A000330(n)+A142150(n+1)*A142150(n+1)`
-/

namespace A226141.P16231756726428020940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + A142150 (n + 1) * A142150 (n + 1)

end

end A226141.P16231756726428020940

namespace A226141

/-- `A000330(n)+A142150(n+1)*A142150(n+1)` -/
def P16231756726428020940.Spec : Prop :=
  ∀ n, P16231756726428020940.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P17972745945322531594

`A295317(A042964(n+1))`
-/

namespace A226141.P17972745945322531594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295317 (A042964 (n + 1)).toNat

end

end A226141.P17972745945322531594

namespace A226141

/-- `A295317(A042964(n+1))` -/
def P17972745945322531594.Spec : Prop :=
  ∀ n, P17972745945322531594.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P7695363886413570335

`A295317(A053438(n+1))`
-/

namespace A226141.P7695363886413570335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295317 (A053438 (n + 1)).toNat

end

end A226141.P7695363886413570335

namespace A226141

/-- `A295317(A053438(n+1))` -/
def P7695363886413570335.Spec : Prop :=
  ∀ n, P7695363886413570335.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P8425352754505437971

`A295317(A042963(n+1)+1)`
-/

namespace A226141.P8425352754505437971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295317 (A042963 (n + 1) + 1).toNat

end

end A226141.P8425352754505437971

namespace A226141

/-- `A295317(A042963(n+1)+1)` -/
def P8425352754505437971.Spec : Prop :=
  ∀ n, P8425352754505437971.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P18195571816275854646

`A295317(lt[A295292(n+1), A295293(n+1)])`
-/

namespace A226141.P18195571816275854646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295317 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226141.P18195571816275854646

namespace A226141

/-- `A295317(lt[A295292(n+1), A295293(n+1)])` -/
def P18195571816275854646.Spec : Prop :=
  ∀ n, P18195571816275854646.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P4118276589813582635

`A295317(lt[A295318(n+1), A295293(n+1)])`
-/

namespace A226141.P4118276589813582635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295317 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226141.P4118276589813582635

namespace A226141

/-- `A295317(lt[A295318(n+1), A295293(n+1)])` -/
def P4118276589813582635.Spec : Prop :=
  ∀ n, P4118276589813582635.a n = A226141 (n + 1)

end A226141

/-! ## A226141.P1695136834136007733

`A295317(lt[1, A295317(n+1)-A295318(n+1)])`
-/

namespace A226141.P1695136834136007733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295317 (n + 1) - A295318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A226141.P1695136834136007733

namespace A226141

/-- `A295317(lt[1, A295317(n+1)-A295318(n+1)])` -/
def P1695136834136007733.Spec : Prop :=
  ∀ n, P1695136834136007733.a n = A226141 (n + 1)

end A226141

/-!
# A226144: Primes p that become composite when any nonzero decimal digit is appended or deleted on the right or left of p.

The programs for A226144, there is no canonical definition to state claims against.
-/

/-! ## A226144.P1701519245251259335

`A240843(lt[A240882(n+5), A240880(n)])`
-/

namespace A226144.P1701519245251259335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240882 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226144.P1701519245251259335

/-!
# A226145: Numbers k such that triangular(k) is a sum of three successive primes.

The programs for A226145, there is no canonical definition to state claims against.
-/

/-! ## A226145.P12368363064492963905

`floor(sqrt(2*A167788(n+1)))`
-/

namespace A226145.P12368363064492963905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A167788 (n + 1))

end

end A226145.P12368363064492963905

/-! ## A226145.P12288266897735917730

`ceil(sqrt(2*A167788(n+1))-A020985(n)²)`
-/

namespace A226145.P12288266897735917730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A167788 (n + 1) : ℝ) - (A020985 n ^ 2 : ℝ)⌉

end

end A226145.P12288266897735917730

/-! ## A226145.P7498644344432170787

`A080098(A167788(n+1))`
-/

namespace A226145.P7498644344432170787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A167788 (n + 1)).toNat

end

end A226145.P7498644344432170787

/-!
# A226146: Numbers k such that k^2 is an average of three successive primes.

The programs for A226146, there is no canonical definition to state claims against.
-/

/-! ## A226146.P8916887639200485510

`ceil(sqrt(A226149(n+1)))`
-/

namespace A226146.P8916887639200485510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A226149 (n + 1) : ℝ)⌉

end

end A226146.P8916887639200485510

/-! ## A226146.P14140008567786722690

`A004442(floor(sqrt(A226149(n+1))))`
-/

namespace A226146.P14140008567786722690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.sqrt (A226149 (n + 1))).toNat

end

end A226146.P14140008567786722690

/-! ## A226146.P10848856815148888366

`A011760(floor(sqrt(A226149(n+1))))`
-/

namespace A226146.P10848856815148888366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (Int.sqrt (A226149 (n + 1))).toNat

end

end A226146.P10848856815148888366

/-! ## A226146.P11283639843856983327

`A020725(floor(sqrt(A226149(n+1))))`
-/

namespace A226146.P11283639843856983327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (Int.sqrt (A226149 (n + 1))).toNat

end

end A226146.P11283639843856983327

/-! ## A226146.P3883384744086727625

`A109613(floor(sqrt(A226149(n+1))))`
-/

namespace A226146.P3883384744086727625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.sqrt (A226149 (n + 1))).toNat

end

end A226146.P3883384744086727625

/-!
# A226147: Numbers k such that triangular(k) is an average of three successive primes.

The programs for A226147, there is no canonical definition to state claims against.
-/

/-! ## A226147.P16998853529879025147

`floor(sqrt(2*A226150(n+1)))`
-/

namespace A226147.P16998853529879025147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A226150 (n + 1))

end

end A226147.P16998853529879025147

/-! ## A226147.P15666145736801327699

`A060000(ceil(sqrt(2*A226150(n+1))))`
-/

namespace A226147.P15666145736801327699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 ⌈Real.sqrt (2 * A226150 (n + 1) : ℝ)⌉.toNat

end

end A226147.P15666145736801327699

/-!
# A226151: Numbers k such that triangular(k) is a sum of 4 consecutive primes.

The programs for A226151, there is no canonical definition to state claims against.
-/

/-! ## A226151.P945366584364313454

`floor(sqrt(2*A173420(n+1)))`
-/

namespace A226151.P945366584364313454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A173420 (n + 1))

end

end A226151.P945366584364313454

/-! ## A226151.P6145350559032064886

`round(sqrt(2*A173420(n%(n+1)+1)))`
-/

namespace A226151.P6145350559032064886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A173420 (n % (n + 1) + 1) : ℝ))

end

end A226151.P6145350559032064886

/-! ## A226151.P2078631907006582223

`round(A033999(n)²*sqrt(2*A173420(n+1)))`
-/

namespace A226151.P2078631907006582223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A033999 n ^ 2 : ℝ) * Real.sqrt (2 * A173420 (n + 1) : ℝ))

end

end A226151.P2078631907006582223

/-! ## A226151.P2957522415435635625

`round(sqrt(2*(A173420(n+1)-A028310(n)+1)))`
-/

namespace A226151.P2957522415435635625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (A173420 (n + 1) - A028310 n + 1) : ℝ))

end

end A226151.P2957522415435635625

/-! ## A226151.P9903225542456207107

`round(sqrt(2*(A173420(n+1)-A054977(n)+1)))`
-/

namespace A226151.P9903225542456207107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (A173420 (n + 1) - A054977 n + 1) : ℝ))

end

end A226151.P9903225542456207107

/-! ## A226151.P1754106066921421111

`ceil(sqrt(2*A173420(n+1))-A000034(2*n))`
-/

namespace A226151.P1754106066921421111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A173420 (n + 1) : ℝ) - (A000034 (2 * n) : ℝ)⌉

end

end A226151.P1754106066921421111

/-! ## A226151.P18180688926959791105

`round(sqrt(2*A173420(n+1)))%A042434(n)`
-/

namespace A226151.P18180688926959791105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A173420 (n + 1) : ℝ))) (A042434 n)

end

end A226151.P18180688926959791105

/-!
# A226152: Numbers n such that n^2 is an average of 4 consecutive primes.

The programs for A226152, there is no canonical definition to state claims against.
-/

/-! ## A226152.P523072000748848610

`A051395(n+1)/2`
-/

namespace A226152.P523072000748848610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051395 (n + 1) : ℚ) / 2

end

end A226152.P523072000748848610

/-! ## A226152.P18353121022818913625

`ceil(sqrt(A206280(n+1)))`
-/

namespace A226152.P18353121022818913625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A206280 (n + 1) : ℝ)⌉

end

end A226152.P18353121022818913625

/-! ## A226152.P288709578473144345

`A014682(A051395(n+1))`
-/

namespace A226152.P288709578473144345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A051395 (n + 1)).toNat

end

end A226152.P288709578473144345

/-! ## A226152.P8184725077744230404

`A328399(A051395(n+1)-2)`
-/

namespace A226152.P8184725077744230404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A051395 (n + 1) - 2).toNat

end

end A226152.P8184725077744230404

/-! ## A226152.P16606798429900940278

`A038572(A051395(n+1)+2)-1`
-/

namespace A226152.P16606798429900940278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A051395 (n + 1) + 2).toNat - 1

end

end A226152.P16606798429900940278

/-! ## A226152.P12114433512351079497

`A038572(A051395(n+1))%A016826(n)`
-/

namespace A226152.P12114433512351079497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038572 (A051395 (n + 1)).toNat) (A016826 n)

end

end A226152.P12114433512351079497

/-! ## A226152.P13602335074377997599

`or(A000007(n), A038572(A051395(n+1)))`
-/

namespace A226152.P13602335074377997599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A038572 (A051395 (n + 1)).toNat)

end

end A226152.P13602335074377997599

/-! ## A226152.P13000919199981170314

`A038572(A051395(n+1)%A061275(n+1))`
-/

namespace A226152.P13000919199981170314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.tmod (A051395 (n + 1)) (A061275 (n + 1))).toNat

end

end A226152.P13000919199981170314

/-! ## A226152.P9104718357012291861

`A038572(A051395(n+1)+n*A000007(n))`
-/

namespace A226152.P9104718357012291861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A051395 (n + 1) + (n : ℤ) * A000007 n).toNat

end

end A226152.P9104718357012291861

/-! ## A226152.P857083179682004758

`A004526(A051395(n+1)+1)`
-/

namespace A226152.P857083179682004758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A051395 (n + 1) + 1).toNat

end

end A226152.P857083179682004758

/-! ## A226152.P3353559342511324016

`A000463(A051395(n+1)-1)`
-/

namespace A226152.P3353559342511324016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A051395 (n + 1) - 1).toNat

end

end A226152.P3353559342511324016

/-! ## A226152.P11950507555465413531

`A001057(A051395(n+1)-1)`
-/

namespace A226152.P11950507555465413531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A051395 (n + 1) - 1).toNat

end

end A226152.P11950507555465413531

/-! ## A226152.P7592201343517947137

`A003602(A051395(n+1)-1)`
-/

namespace A226152.P7592201343517947137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A051395 (n + 1) - 1).toNat

end

end A226152.P7592201343517947137

/-! ## A226152.P11954670830851742057

`A008619(A051395(n+1)-1)`
-/

namespace A226152.P11954670830851742057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A051395 (n + 1) - 1).toNat

end

end A226152.P11954670830851742057

/-! ## A226152.P15376854039904297226

`A220466(A051395(n+1)-1)`
-/

namespace A226152.P15376854039904297226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A051395 (n + 1) - 1).toNat

end

end A226152.P15376854039904297226

/-! ## A226152.P15894271214141816767

`A001281(lcm(2, A051395(n+1)))`
-/

namespace A226152.P15894271214141816767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A051395 (n + 1)))

end

end A226152.P15894271214141816767

/-! ## A226152.P8396153323835860686

`A001281(A051395(n+1)+2)-1`
-/

namespace A226152.P8396153323835860686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A051395 (n + 1) + 2).toNat - 1

end

end A226152.P8396153323835860686

/-!
# A226153: Numbers n such that triangular(n) is an average of 4 consecutive primes.

The programs for A226153, there is no canonical definition to state claims against.
-/

/-! ## A226153.P5756796444770320392

`floor(sqrt(2*A226196(n+1)))`
-/

namespace A226153.P5756796444770320392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A226196 (n + 1))

end

end A226153.P5756796444770320392

/-! ## A226153.P16152603451788641845

`round(sqrt(2*A226196(n%(n+1)²+1)))`
-/

namespace A226153.P16152603451788641845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A226196 (n % (n + 1) ^ 2 + 1) : ℝ))

end

end A226153.P16152603451788641845

/-! ## A226153.P10124315883215609988

`round(sqrt(2*A226196(n+1)))%A017138(n)`
-/

namespace A226153.P10124315883215609988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A226196 (n + 1) : ℝ))) (A017138 n)

end

end A226153.P10124315883215609988

/-! ## A226153.P11666968389102689010

`ceil(sqrt(2*A226196(n+1))-(A005408(n)-2*n))`
-/

namespace A226153.P11666968389102689010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A226196 (n + 1) : ℝ) - (A005408 n - (2 * n : ℤ) : ℝ)⌉

end

end A226153.P11666968389102689010

/-! ## A226153.P8004102604442135899

`ceil(sqrt(2*A226196(n+1))-A014963(6*(n+1)))`
-/

namespace A226153.P8004102604442135899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A226196 (n + 1) : ℝ) - (A014963 (6 * (n + 1)) : ℝ)⌉

end

end A226153.P8004102604442135899

/-! ## A226153.P377449592292824739

`A028310(round(sqrt(2*A226196(n+1))))`
-/

namespace A226153.P377449592292824739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (2 * A226196 (n + 1) : ℝ))).toNat

end

end A226153.P377449592292824739

/-!
# A226155: Smallest of four consecutive primes whose average is a triangular number.

The programs for A226155, there is no canonical definition to state claims against.
-/

/-! ## A226155.P9552679016347478643

`A359199(2*A226196(n+1))`
-/

namespace A226155.P9552679016347478643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359199 (2 * A226196 (n + 1)).toNat

end

end A226155.P9552679016347478643

/-!
# A226156: a(n) = BS(n) * W(n) where BS = Sum_{k=0..n} ((-1)^k*k!/(k+1)) S(n, k) and S(n, k) the Stirling subset numbers A048993(n, k). W(n) = Product_{ p primes <= n+1 such that p divides n+1 or p-1 divides n } = A225481(n).

The programs for A226156, there is no canonical definition to state claims against.
-/

/-! ## A226156.P6297467526315179032

`A027641(n)*A226040(n)`
-/

namespace A226156.P6297467526315179032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A226040 n

end

end A226156.P6297467526315179032

/-! ## A226156.P13228170100755059074

`A050925(n)/A000189(n+1)`
-/

namespace A226156.P13228170100755059074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050925 n : ℚ) / (A000189 (n + 1) : ℚ)

end

end A226156.P13228170100755059074

/-! ## A226156.P2795123408204284599

`A050925(n)/A000190(n+1)`
-/

namespace A226156.P2795123408204284599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050925 n : ℚ) / (A000190 (n + 1) : ℚ)

end

end A226156.P2795123408204284599

/-! ## A226156.P6474386656788355775

`A050925(n)/A003557(n+1)`
-/

namespace A226156.P6474386656788355775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050925 n : ℚ) / (A003557 (n + 1) : ℚ)

end

end A226156.P6474386656788355775

/-! ## A226156.P14726919755604090680

`A050925(n)/A327502(n+1)`
-/

namespace A226156.P14726919755604090680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050925 n : ℚ) / (A327502 (n + 1) : ℚ)

end

end A226156.P14726919755604090680

/-!
# A226158: a(n) = 2*n*(2^n - 1)*zeta(1-n) where in the case n=0 the limit is understood, zeta(s) the Riemann zeta function.

The programs for A226158, there is no canonical definition to state claims against.
-/

/-! ## A226158.P876957945925496152

`A036968(round(acot(n)+n))*A178334(n)`
-/

namespace A226158.P876957945925496152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036968 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat * A178334 n

end

end A226158.P876957945925496152

/-! ## A226158.P7490306396856033930

`A036968(A233583(n+1)+A000007(n))`
-/

namespace A226158.P7490306396856033930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036968 (A233583 (n + 1) + A000007 n).toNat

end

end A226158.P7490306396856033930

/-! ## A226158.P12452285801505340123

`A036968(A233583(n+1))*A057427(n)`
-/

namespace A226158.P12452285801505340123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036968 (A233583 (n + 1)).toNat * A057427 n

end

end A226158.P12452285801505340123

/-! ## A226158.P6416371170255213160

`A036968(A233583(n+1))*A178334(n)`
-/

namespace A226158.P6416371170255213160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036968 (A233583 (n + 1)).toNat * A178334 n

end

end A226158.P6416371170255213160

/-! ## A226158.P14001997234676477625

`A036968(A233583(n+1)+1-A057427(n))`
-/

namespace A226158.P14001997234676477625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036968 (A233583 (n + 1) + (1 - A057427 n)).toNat

end

end A226158.P14001997234676477625

/-! ## A226158.P8614359373157763261

`A239977(n)-2*n`
-/

namespace A226158.P8614359373157763261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239977 n - (2 * n : ℤ)

end

end A226158.P8614359373157763261

/-! ## A226158.P2102631759664725573

`(A157779(n)-A239275(n))/A141459(n)`
-/

namespace A226158.P2102631759664725573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157779 n - A239275 n : ℚ) / (A141459 n : ℚ)

end

end A226158.P2102631759664725573

/-! ## A226158.P1055927221626770280

`A230324(A233583(n+1))%A240485(n)`
-/

namespace A226158.P1055927221626770280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230324 (A233583 (n + 1)).toNat) (A240485 n)

end

end A226158.P1055927221626770280

/-! ## A226158.P6505581423097496714

`(A240677(n)+A230324(n))%A240677(n)`
-/

namespace A226158.P6505581423097496714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240677 n + A230324 n) (A240677 n)

end

end A226158.P6505581423097496714

/-! ## A226158.P14026353455995456748

`A230324(n)-(A240485(n+1)+A036968(n+2))`
-/

namespace A226158.P14026353455995456748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230324 n - (A240485 (n + 1) + A036968 (n + 2))

end

end A226158.P14026353455995456748

/-!
# A226159: a(n) = -prime(n) if prime(n) is an irregular prime else prime(n).

The programs for A226159, there is no canonical definition to state claims against.
-/

/-! ## A226159.P12444746904857299050

`A000040(n+1)*A096809(A096801(n))`
-/

namespace A226159.P12444746904857299050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A096809 (A096801 n).toNat

end

end A226159.P12444746904857299050

/-! ## A226159.P15629009240706587736

`A000040(n+1)*A162511(A179791(n+1))`
-/

namespace A226159.P15629009240706587736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A162511 (A179791 (n + 1)).toNat

end

end A226159.P15629009240706587736

/-! ## A226159.P9144367023502663077

`A000040(n+1)*A033999(A034452(2*n+3))`
-/

namespace A226159.P9144367023502663077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A033999 (A034452 (2 * n + 3)).toNat

end

end A226159.P9144367023502663077

/-! ## A226159.P8156511172236190076

`A000040(n+1)*A189022(A203301(n+1))`
-/

namespace A226159.P8156511172236190076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A189022 (A203301 (n + 1)).toNat

end

end A226159.P8156511172236190076

/-! ## A226159.P8037184043321419663

`Δ[A007504(n)]*A049347(A370206(3*n+5))`
-/

namespace A226159.P8037184043321419663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A049347 (A370206 (3 * n + 5)).toNat

end

end A226159.P8037184043321419663

/-!
# A226160: Least positive integer k such that 1 + 1/2 + ... + 1/k > n/phi, where phi = golden ratio = (1+sqrt(5))/2.

The programs for A226160, there is no canonical definition to state claims against.
-/

/-! ## A226160.P14725147194128956084

`A214672(A018179(n+1))`
-/

namespace A226160.P14725147194128956084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214672 (A018179 (n + 1)).toNat

end

end A226160.P14725147194128956084

/-! ## A226160.P5680001767721876571

`A001462(floor(∑[cosh(n)]))`
-/

namespace A226160.P5680001767721876571
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A226160.P5680001767721876571

/-! ## A226160.P725744171109721890

`A001462(ceil(∑[cosh(n)]))`
-/

namespace A226160.P725744171109721890
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A226160.P725744171109721890

/-! ## A226160.P15972873841096213275

`A001462(∑[round(cosh(n))])`
-/

namespace A226160.P15972873841096213275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226160.P15972873841096213275

/-! ## A226160.P17102738492601187373

`A001462(∑[A002459(n)])`
-/

namespace A226160.P17102738492601187373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226160.P17102738492601187373

/-!
# A226161: Least positive integer k such that 1 + 1/2 + ... + 1/k > n/2.

The programs for A226161, there is no canonical definition to state claims against.
-/

/-! ## A226161.P12384744706703069518

`round(exp((n+1)/2-γ))`
-/

namespace A226161.P12384744706703069518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (((n + 1 : ℚ) / 2 : ℝ) - Real.eulerMascheroniConstant))

end

end A226161.P12384744706703069518

/-! ## A226161.P15732790573537607314

`A257639(A271898(n)+1)`
-/

namespace A226161.P15732790573537607314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A271898 n + 1).toNat

end

end A226161.P15732790573537607314

/-! ## A226161.P6703531056732177306

`A257639(or(1, A271898(n)))`
-/

namespace A226161.P6703531056732177306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.lor 1 (A271898 n)).toNat

end

end A226161.P6703531056732177306

/-! ## A226161.P11797530611749647144

`A257639(xor(2, A271898(n)))`
-/

namespace A226161.P11797530611749647144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.xor 2 (A271898 n)).toNat

end

end A226161.P11797530611749647144

/-! ## A226161.P14078843708314574993

`A257639(2-(n-A271898(n)))`
-/

namespace A226161.P14078843708314574993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (2 - ((n : ℤ) - A271898 n)).toNat

end

end A226161.P14078843708314574993

/-!
# A226162: a(n) = Kronecker Symbol (-5/n), n >= 0.

The programs for A226162, the canonical program `A226162.P12871478300109874519` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226162 has offset 0).

The definition of A226162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226162.P12871478300109874519

`Δ[xor(n, 2*n-1)]%2*A080891(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226162

/-- `Δ[xor(n, 2*n-1)]%2*A080891(n)` -/
def P12871478300109874519.Spec : Prop :=
  ∀ n, P12871478300109874519.a n = A226162 n

theorem P12871478300109874519.correct : P12871478300109874519.Spec := by
  intro n
  simp only [A226162]

end A226162

/-! ## A226162.P10512995765893578298

`A080891(n)*A112347(n)`
-/

namespace A226162.P10512995765893578298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A112347 n

end

end A226162.P10512995765893578298

namespace A226162

/-- `A080891(n)*A112347(n)` -/
def P10512995765893578298.Spec : Prop :=
  ∀ n, P10512995765893578298.a n = A226162 n

end A226162

/-! ## A226162.P9127509961261038259

`A080891(n)*A121238(n)`
-/

namespace A226162.P9127509961261038259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A121238 n

end

end A226162.P9127509961261038259

namespace A226162

/-- `A080891(n)*A121238(n)` -/
def P9127509961261038259.Spec : Prop :=
  ∀ n, P9127509961261038259.a n = A226162 n

end A226162

/-! ## A226162.P8189916337914550279

`A080891(n)/(1-2*A038189(n))`
-/

namespace A226162.P8189916337914550279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080891 n : ℚ) / (1 - 2 * A038189 n : ℚ)

end

end A226162.P8189916337914550279

namespace A226162

/-- `A080891(n)/(1-2*A038189(n))` -/
def P8189916337914550279.Spec : Prop :=
  ∀ n, P8189916337914550279.a n = (A226162 n : ℚ)

end A226162

/-! ## A226162.P13720251180351010028

`A056594(A300867(n)-A080891(n))`
-/

namespace A226162.P13720251180351010028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A300867 n - A080891 n).toNat

end

end A226162.P13720251180351010028

namespace A226162

/-- `A056594(A300867(n)-A080891(n))` -/
def P13720251180351010028.Spec : Prop :=
  ∀ n, P13720251180351010028.a n = A226162 n

end A226162

/-! ## A226162.P14950108483090893939

`A034947(A028310(n))*A080891(n)`
-/

namespace A226162.P14950108483090893939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A028310 n).toNat * A080891 n

end

end A226162.P14950108483090893939

namespace A226162

/-- `A034947(A028310(n))*A080891(n)` -/
def P14950108483090893939.Spec : Prop :=
  ∀ n, P14950108483090893939.a n = A226162 n

end A226162

/-! ## A226162.P16991048908082146002

`A080891(n)*A134824(A089309(n))`
-/

namespace A226162.P16991048908082146002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A134824 (A089309 n).toNat

end

end A226162.P16991048908082146002

namespace A226162

/-- `A080891(n)*A134824(A089309(n))` -/
def P16991048908082146002.Spec : Prop :=
  ∀ n, P16991048908082146002.a n = A226162 n

end A226162

/-! ## A226162.P7187667314598188924

`A056594(A080891(n)+A300867(n)+2)`
-/

namespace A226162.P7187667314598188924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A080891 n + (A300867 n + 2)).toNat

end

end A226162.P7187667314598188924

namespace A226162

/-- `A056594(A080891(n)+A300867(n)+2)` -/
def P7187667314598188924.Spec : Prop :=
  ∀ n, P7187667314598188924.a n = A226162 n

end A226162

/-! ## A226162.P206109339740996429

`A080891(n*(A038189(n)+1))`
-/

namespace A226162.P206109339740996429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 ((n : ℤ) * (A038189 n + 1)).toNat

end

end A226162.P206109339740996429

namespace A226162

/-- `A080891(n*(A038189(n)+1))` -/
def P206109339740996429.Spec : Prop :=
  ∀ n, P206109339740996429.a n = A226162 n

end A226162

/-! ## A226162.P8966926655461046882

`A100047(2*n)*A112347(n)`
-/

namespace A226162.P8966926655461046882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (2 * n) * A112347 n

end

end A226162.P8966926655461046882

namespace A226162

/-- `A100047(2*n)*A112347(n)` -/
def P8966926655461046882.Spec : Prop :=
  ∀ n, P8966926655461046882.a n = A226162 n

end A226162

/-! ## A226162.P10067625685537585477

`A034947(A008574(n))*A080891(n)`
-/

namespace A226162.P10067625685537585477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A008574 n).toNat * A080891 n

end

end A226162.P10067625685537585477

namespace A226162

/-- `A034947(A008574(n))*A080891(n)` -/
def P10067625685537585477.Spec : Prop :=
  ∀ n, P10067625685537585477.a n = A226162 n

end A226162

/-!
# A226164: Sequence used for the quadratic irrational number belonging to the principal indefinite binary quadratic form.

The programs for A226164, the canonical program `A226164.P6502635701503376103` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226164 has offset 1).

The definition of A226164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226164.P6502635701503376103

`floor(sqrt(Δ[n²]))+n%2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A226164

/-- `floor(sqrt(Δ[n²]))+n%2` -/
def P6502635701503376103.Spec : Prop :=
  ∀ n, P6502635701503376103.a n = A226164 (n + 1)

theorem P6502635701503376103.correct : P6502635701503376103.Spec := by
  intro n
  simp only [A226164, Nat.add_sub_cancel]

end A226164

/-! ## A226164.P1263590684577063808

`comp[∑[or(1, n-1)]]-or(1, n)`
-/

namespace A226164.P1263590684577063808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (Nat.lor 1 n : ℤ)

end

end A226164.P1263590684577063808

namespace A226164

/-- `comp[∑[or(1, n-1)]]-or(1, n)` -/
def P1263590684577063808.Spec : Prop :=
  ∀ n, P1263590684577063808.a n = A226164 (n + 1)

end A226164

/-! ## A226164.P17592706126755504253

`floor(sqrt(Δ[n²]))+2-gcd(2, n)`
-/

namespace A226164.P17592706126755504253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (2 - (Nat.gcd 2 n : ℤ))

end

end A226164.P17592706126755504253

namespace A226164

/-- `floor(sqrt(Δ[n²]))+2-gcd(2, n)` -/
def P17592706126755504253.Spec : Prop :=
  ∀ n, P17592706126755504253.a n = A226164 (n + 1)

end A226164

/-! ## A226164.P739940908808391394

`char[2*n-1]+floor(sqrt(Δ[n²]))`
-/

namespace A226164.P739940908808391394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + Int.sqrt ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A226164.P739940908808391394

namespace A226164

/-- `char[2*n-1]+floor(sqrt(Δ[n²]))` -/
def P739940908808391394.Spec : Prop :=
  ∀ n, P739940908808391394.a n = A226164 (n + 1)

end A226164

/-! ## A226164.P244408564134547994

`floor(A059841(n+1)+sqrt(2*n+1))`
-/

namespace A226164.P244408564134547994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059841 (n + 1) : ℝ) + Real.sqrt (2 * n + 1 : ℝ)⌋

end

end A226164.P244408564134547994

namespace A226164

/-- `floor(A059841(n+1)+sqrt(2*n+1))` -/
def P244408564134547994.Spec : Prop :=
  ∀ n, P244408564134547994.a n = A226164 (n + 1)

end A226164

/-! ## A226164.P1669000330685709636

`A116939(A103128(n+1)+n)`
-/

namespace A226164.P1669000330685709636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A103128 (n + 1) + (n : ℤ)).toNat

end

end A226164.P1669000330685709636

namespace A226164

/-- `A116939(A103128(n+1)+n)` -/
def P1669000330685709636.Spec : Prop :=
  ∀ n, P1669000330685709636.a n = A226164 (n + 1)

end A226164

/-! ## A226164.P146963083291615496

`round(sqrt(A170950(A170950(2*(n+1)))))`
-/

namespace A226164.P146963083291615496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A170950 (A170950 (2 * (n + 1))).toNat : ℝ))

end

end A226164.P146963083291615496

namespace A226164

/-- `round(sqrt(A170950(A170950(2*(n+1)))))` -/
def P146963083291615496.Spec : Prop :=
  ∀ n, P146963083291615496.a n = A226164 (n + 1)

end A226164

/-! ## A226164.P7028890480242867549

`A340134(A079896(n+1))`
-/

namespace A226164.P7028890480242867549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340134 (A079896 (n + 1)).toNat

end

end A226164.P7028890480242867549

namespace A226164

/-- `A340134(A079896(n+1))` -/
def P7028890480242867549.Spec : Prop :=
  ∀ n, P7028890480242867549.a n = A226164 (n + 1)

end A226164

/-! ## A226164.P18092643442587648718

`A002024(A084469(n+1))`
-/

namespace A226164.P18092643442587648718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A084469 (n + 1)).toNat

end

end A226164.P18092643442587648718

namespace A226164

/-- `A002024(A084469(n+1))` -/
def P18092643442587648718.Spec : Prop :=
  ∀ n, P18092643442587648718.a n = A226164 (n + 1)

end A226164

/-! ## A226164.P2623384350724509318

`A290251(A084467(n+1))`
-/

namespace A226164.P2623384350724509318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A084467 (n + 1)).toNat

end

end A226164.P2623384350724509318

namespace A226164

/-- `A290251(A084467(n+1))` -/
def P2623384350724509318.Spec : Prop :=
  ∀ n, P2623384350724509318.a n = A226164 (n + 1)

end A226164

/-!
# A226165: Squarefree part of A077425(n) (numbers 4*k+1, k>=0, not a square).

The programs for A226165, the canonical program `A226165.P14809637293415994692` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226165 has offset 1).

The definition of A226165 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A077425, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226165.P14809637293415994692

`A007913(A077425(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A226165

/-- `A007913(A077425(n+1))` -/
def P14809637293415994692.Spec : Prop :=
  ∀ n, P14809637293415994692.a n = A226165 (n + 1)

theorem P14809637293415994692.correct : P14809637293415994692.Spec := by
  intro n
  simp only [A226165, Nat.add_sub_cancel]

end A226165

/-! ## A226165.P11620913607911107094

`A007913(∑[A000122(n)²+4])`
-/

namespace A226165.P11620913607911107094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226165.P11620913607911107094

namespace A226165

/-- `A007913(∑[A000122(n)²+4])` -/
def P11620913607911107094.Spec : Prop :=
  ∀ n, P11620913607911107094.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P7942897655877041061

`A007913(A266251(2*(floor(sqrt(n))+2+n)))`
-/

namespace A226165.P7942897655877041061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A266251 (2 * (Nat.sqrt n + 2 + n))).toNat

end

end A226165.P7942897655877041061

namespace A226165

/-- `A007913(A266251(2*(floor(sqrt(n))+2+n)))` -/
def P7942897655877041061.Spec : Prop :=
  ∀ n, P7942897655877041061.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P13492215034997329523

`filter[A037449(2*n+1), A323158(#)]`
-/

namespace A226165.P13492215034997329523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A226165.P13492215034997329523

namespace A226165

/-- `filter[A037449(2*n+1), A323158(#)]` -/
def P13492215034997329523.Spec : Prop :=
  ∀ n, P13492215034997329523.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P15650139990702297993

`filter[A037449(2*n+1), A324908(#)]`
-/

namespace A226165.P15650139990702297993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A226165.P15650139990702297993

namespace A226165

/-- `filter[A037449(2*n+1), A324908(#)]` -/
def P15650139990702297993.Spec : Prop :=
  ∀ n, P15650139990702297993.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P1458501463252485086

`filter[A037449(2*n+1), A353638(#)]`
-/

namespace A226165.P1458501463252485086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A226165.P1458501463252485086

namespace A226165

/-- `filter[A037449(2*n+1), A353638(#)]` -/
def P1458501463252485086.Spec : Prop :=
  ∀ n, P1458501463252485086.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P14014242781184715539

`filter[A037449(2*n+1), A374474(#)]`
-/

namespace A226165.P14014242781184715539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A226165.P14014242781184715539

namespace A226165

/-- `filter[A037449(2*n+1), A374474(#)]` -/
def P14014242781184715539.Spec : Prop :=
  ∀ n, P14014242781184715539.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P11723790158836495356

`A007913(eq[A009531(n), A267635(n)])`
-/

namespace A226165.P11723790158836495356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A226165.P11723790158836495356

namespace A226165

/-- `A007913(eq[A009531(n), A267635(n)])` -/
def P11723790158836495356.Spec : Prop :=
  ∀ n, P11723790158836495356.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P12494228264051017374

`A007913(eq[A089810(n), A206774(n+1)])`
-/

namespace A226165.P12494228264051017374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A226165.P12494228264051017374

namespace A226165

/-- `A007913(eq[A089810(n), A206774(n+1)])` -/
def P12494228264051017374.Spec : Prop :=
  ∀ n, P12494228264051017374.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P10977692513530013460

`filter[A037449(2*n+1), A053867(#)]`
-/

namespace A226165.P10977692513530013460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A226165.P10977692513530013460

namespace A226165

/-- `filter[A037449(2*n+1), A053867(#)]` -/
def P10977692513530013460.Spec : Prop :=
  ∀ n, P10977692513530013460.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P5792210988580996891

`filter[A037449(2*n+1), A231600(#)]`
-/

namespace A226165.P5792210988580996891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231600 (f1 j).toNat = 1) n)

end

end A226165.P5792210988580996891

namespace A226165

/-- `filter[A037449(2*n+1), A231600(#)]` -/
def P5792210988580996891.Spec : Prop :=
  ∀ n, P5792210988580996891.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P10400926801404992954

`filter[A037449(2*n+1), A266070(#)]`
-/

namespace A226165.P10400926801404992954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A226165.P10400926801404992954

namespace A226165

/-- `filter[A037449(2*n+1), A266070(#)]` -/
def P10400926801404992954.Spec : Prop :=
  ∀ n, P10400926801404992954.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P6518994009280315569

`filter[A037449(2*n+1), A266246(#)]`
-/

namespace A226165.P6518994009280315569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A226165.P6518994009280315569

namespace A226165

/-- `filter[A037449(2*n+1), A266246(#)]` -/
def P6518994009280315569.Spec : Prop :=
  ∀ n, P6518994009280315569.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P1256169101655562152

`filter[A037449(2*n+1), A266611(#)]`
-/

namespace A226165.P1256169101655562152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A226165.P1256169101655562152

namespace A226165

/-- `filter[A037449(2*n+1), A266611(#)]` -/
def P1256169101655562152.Spec : Prop :=
  ∀ n, P1256169101655562152.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P15843958134201760796

`filter[A037449(2*n+1), A266719(#)]`
-/

namespace A226165.P15843958134201760796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A226165.P15843958134201760796

namespace A226165

/-- `filter[A037449(2*n+1), A266719(#)]` -/
def P15843958134201760796.Spec : Prop :=
  ∀ n, P15843958134201760796.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P11988805979642676368

`filter[A037449(2*n+1), A267155(#)]`
-/

namespace A226165.P11988805979642676368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A226165.P11988805979642676368

namespace A226165

/-- `filter[A037449(2*n+1), A267155(#)]` -/
def P11988805979642676368.Spec : Prop :=
  ∀ n, P11988805979642676368.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P590010236605613565

`filter[A037449(2*n+1), A272664(#)]`
-/

namespace A226165.P590010236605613565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A272664 (f1 j).toNat = 1) n)

end

end A226165.P590010236605613565

namespace A226165

/-- `filter[A037449(2*n+1), A272664(#)]` -/
def P590010236605613565.Spec : Prop :=
  ∀ n, P590010236605613565.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P1289097975916690534

`filter[A037449(2*n+1), A296066(#)]`
-/

namespace A226165.P1289097975916690534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A226165.P1289097975916690534

namespace A226165

/-- `filter[A037449(2*n+1), A296066(#)]` -/
def P1289097975916690534.Spec : Prop :=
  ∀ n, P1289097975916690534.a n = A226165 (n + 1)

end A226165

/-! ## A226165.P9455018875272884539

`filter[A037449(2*n+1), A381955(#)]`
-/

namespace A226165.P9455018875272884539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A226165.P9455018875272884539

namespace A226165

/-- `filter[A037449(2*n+1), A381955(#)]` -/
def P9455018875272884539.Spec : Prop :=
  ∀ n, P9455018875272884539.a n = A226165 (n + 1)

end A226165

/-!
# A226166: One half of the length of the period of the principal indefinite quadratic binary form of discriminant D(n) = A079896(n).

The programs for A226166, there is no canonical definition to state claims against.
-/

/-! ## A226166.P9457055099839322693

`gcd(record[A233117(n+1)], A091419(n+1))`
-/

namespace A226166.P9457055099839322693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A091419 (n + 1))

end

end A226166.P9457055099839322693

/-! ## A226166.P9740756481741949831

`gcd(A220178(n), A259153(A210736(n)))`
-/

namespace A226166.P9740756481741949831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220178 n) (A259153 (A210736 n).toNat)

end

end A226166.P9740756481741949831

/-! ## A226166.P2174474059526337675

`A071974(A050357(n+1)+A035573(n))`
-/

namespace A226166.P2174474059526337675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A050357 (n + 1) + A035573 n).toNat

end

end A226166.P2174474059526337675

/-! ## A226166.P4961411975938636689

`gcd(A007814(n+1), A064654(A335997(n)))`
-/

namespace A226166.P4961411975938636689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A064654 (A335997 n).toNat)

end

end A226166.P4961411975938636689

/-! ## A226166.P16732556217306125019

`gcd(A231441(A199530(n+1)), A278706(n))`
-/

namespace A226166.P16732556217306125019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231441 (A199530 (n + 1)).toNat) (A278706 n)

end

end A226166.P16732556217306125019

/-!
# A226167: Array read by antidiagonals: a(i,j) is the number of ways of labeling a tableau of shape (i,1^j) with the integers 1, 2, ... i+j-2 (each label being used once) such that the first row is decreasing, and the first column has m-1 labels.

The programs for A226167, there is no canonical definition to state claims against.
-/

/-! ## A226167.P16999854179943076925

`A185105(n+1)-A073089(A060101(n))`
-/

namespace A226167.P16999854179943076925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (n + 1) - A073089 (A060101 n).toNat

end

end A226167.P16999854179943076925

/-! ## A226167.P745031307812105942

`A185105(n+1)-A024155(A156676(n))`
-/

namespace A226167.P745031307812105942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (n + 1) - A024155 (A156676 n).toNat

end

end A226167.P745031307812105942

/-! ## A226167.P8768817489003081094

`A185105(n+1)-A055641(A153732(n))`
-/

namespace A226167.P8768817489003081094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (n + 1) - A055641 (A153732 n).toNat

end

end A226167.P8768817489003081094

/-! ## A226167.P17083850975570844733

`A185105(n+1)-A288167(A127040(n))`
-/

namespace A226167.P17083850975570844733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (n + 1) - A288167 (A127040 n).toNat

end

end A226167.P17083850975570844733

/-! ## A226167.P5376164333434440073

`A185105(n+1)-A358753(A166135(n+1))`
-/

namespace A226167.P5376164333434440073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185105 (n + 1) - A358753 (A166135 (n + 1)).toNat

end

end A226167.P5376164333434440073

/-!
# A226168: Numbers n such that 1/a + 1/b + 1/c + 1/a*b*c = m /(a+b+c) where a, b and c are the 3 distinct prime divisors of n, and m is a positive integer such that the equation has infinitely many solutions.

The programs for A226168, there is no canonical definition to state claims against.
-/

/-! ## A226168.P2844169274298806571

`Δ[A230310(∑[A002858(n+3)])]`
-/

namespace A226168.P2844169274298806571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226168.P2844169274298806571

/-! ## A226168.P14597473350882639110

`∩[A337244(n+1), A008596(n)]`
-/

namespace A226168.P14597473350882639110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226168.P14597473350882639110

/-!
# A226170: The number of cycles over all even permutations of {1,2,...,n}.

The programs for A226170, there is no canonical definition to state claims against.
-/

/-! ## A226170.P7090625443421729694

`A081048(n*n%2)+2*A024337(n)`
-/

namespace A226170.P7090625443421729694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 (n * (n % 2)) + 2 * A024337 n

end

end A226170.P7090625443421729694

/-!
# A226171: Smallest base in which n is not Niven (or zero if n is Niven in every base).

The programs for A226171, there is no canonical definition to state claims against.
-/

/-! ## A226171.P8994963479815093165

`A147848(n+1)%A120395(n+1)`
-/

namespace A226171.P8994963479815093165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147848 (n + 1)) (A120395 (n + 1))

end

end A226171.P8994963479815093165

/-! ## A226171.P9981793382459441834

`A000096(A026709(n*n%2))%(n+1)`
-/

namespace A226171.P9981793382459441834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 (A026709 (n * (n % 2))).toNat) (n + 1 : ℤ)

end

end A226171.P9981793382459441834

/-! ## A226171.P6401762366519200112

`A022292(A089870(2^(∑[n]%(n+1))))%(n+1)`
-/

namespace A226171.P6401762366519200112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022292 (A089870 (2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)))).toNat) (n + 1 : ℤ)

end

end A226171.P6401762366519200112

/-! ## A226171.P6438274354415039871

`A053603(A185317(n)^A133265(n))`
-/

namespace A226171.P6438274354415039871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 (SequenceMachineLib.roundAway ((A185317 n : ℚ) ^ (A133265 n : ℤ))).toNat

end

end A226171.P6438274354415039871

/-! ## A226171.P16000084066716468370

`A335452(A326020(n+2))*A335474(n)`
-/

namespace A226171.P16000084066716468370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A326020 (n + 2)).toNat * A335474 n

end

end A226171.P16000084066716468370

/-!
# A226172: The number of faithful connected quandles of order n.

The programs for A226172, there is no canonical definition to state claims against.
-/

/-! ## A226172.P16249941040394645373

`A181771(n+1)-A279372(A046682(n))`
-/

namespace A226172.P16249941040394645373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181771 (n + 1) - A279372 (A046682 n).toNat

end

end A226172.P16249941040394645373

/-! ## A226172.P1894132617260200956

`A181771(n+1)-A102679(A075500(n+1))`
-/

namespace A226172.P1894132617260200956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181771 (n + 1) - A102679 (A075500 (n + 1)).toNat

end

end A226172.P1894132617260200956

/-!
# A226173: The number of connected keis (involutory quandles) of order n.

The programs for A226173, there is no canonical definition to state claims against.
-/

/-! ## A226173.P11005990333443493475

`and(A006530(n+1), A347187(A068106(n)))`
-/

namespace A226173.P11005990333443493475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (n + 1)) (A347187 (A068106 n).toNat)

end

end A226173.P11005990333443493475

/-! ## A226173.P797667410895054061

`floor(A000005(5*2^n+1)/4)`
-/

namespace A226173.P797667410895054061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (5 * 2 ^ n + 1) : ℚ) / 4⌋

end

end A226173.P797667410895054061

/-! ## A226173.P4770804609471519712

`round(∑{d}[A083575(n), A001222(#)]/8)`
-/

namespace A226173.P4770804609471519712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n).natAbs, A001222 d : ℤ) : ℚ) / 8)

end

end A226173.P4770804609471519712

/-! ## A226173.P14089393696274255700

`A002265(A000005(A083575(n)))`
-/

namespace A226173.P14089393696274255700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000005 (A083575 n).toNat).toNat

end

end A226173.P14089393696274255700

/-! ## A226173.P2240346380979610342

`A227752(A038377(n+1))`
-/

namespace A226173.P2240346380979610342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 (A038377 (n + 1)).toNat

end

end A226173.P2240346380979610342

/-!
# A226175: a(n) = A068336(n+1) - 1.

The programs for A226175, there is no canonical definition to state claims against.
-/

/-! ## A226175.P6645285174708475574

`A068336(n+2)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226175.P6645285174708475574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068336 (n + 2) - 1

end

end A226175.P6645285174708475574

/-! ## A226175.P1997380596755699995

`∑{d}[n+1, A068336(#)]`
-/

namespace A226175.P1997380596755699995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068336 d

end

end A226175.P1997380596755699995

/-! ## A226175.P7073244107820013605

`∑[2*A214579(n+1)]+1`
-/

namespace A226175.P7073244107820013605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A226175.P7073244107820013605

/-! ## A226175.P11026513006773947440

`∑[abs(Δ[A068336(n+1)])]`
-/

namespace A226175.P11026513006773947440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068336 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226175.P11026513006773947440

/-! ## A226175.P4282607802344641853

`2*A003238(n+2)-1`
-/

namespace A226175.P4282607802344641853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003238 (n + 2) - 1

end

end A226175.P4282607802344641853

/-! ## A226175.P15541225058826678834

`Δ[2*A003318(n+1)]-1`
-/

namespace A226175.P15541225058826678834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A226175.P15541225058826678834

/-! ## A226175.P12195268619934559737

`Δ[A290845(n+2)]-1`
-/

namespace A226175.P12195268619934559737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290845 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A226175.P12195268619934559737

/-! ## A226175.P1089555299017382404

`record[2*A214576(n+1)-1]`
-/

namespace A226175.P1089555299017382404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214576 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226175.P1089555299017382404

/-! ## A226175.P11959487646401198493

`∑[A028310(2*A214579(n+1))]`
-/

namespace A226175.P11959487646401198493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A214579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226175.P11959487646401198493

/-! ## A226175.P12790509260972280313

`A004273(A003238(n+2))`
-/

namespace A226175.P12790509260972280313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A003238 (n + 2)).toNat

end

end A226175.P12790509260972280313

/-!
# A226176: Refactorable numbers between a pair of twin primes.

The programs for A226176, the canonical program `A226176.P15595214845803153090` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226176 has offset 1).

The definition of A226176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226176.P13688070041237132516

`∩[A014574(n+1), A308494(n+1)]`
-/

namespace A226176.P13688070041237132516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P13688070041237132516

namespace A226176

/-- `∩[A014574(n+1), A308494(n+1)]` -/
def P13688070041237132516.Spec : Prop :=
  ∀ n, (P13688070041237132516.a n : ℤ) = A226176 (n + 1)

end A226176

/-! ## A226176.P5755833193021309312

`∩[A056853(n+1), A308494(n+1)]`
-/

namespace A226176.P5755833193021309312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P5755833193021309312

namespace A226176

/-- `∩[A056853(n+1), A308494(n+1)]` -/
def P5755833193021309312.Spec : Prop :=
  ∀ n, (P5755833193021309312.a n : ℤ) = A226176 (n + 1)

end A226176

/-! ## A226176.P13010051221707653883

`∩[A217259(n+1), A308494(n+1)]`
-/

namespace A226176.P13010051221707653883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P13010051221707653883

namespace A226176

/-- `∩[A217259(n+1), A308494(n+1)]` -/
def P13010051221707653883.Spec : Prop :=
  ∀ n, (P13010051221707653883.a n : ℤ) = A226176 (n + 1)

end A226176

/-! ## A226176.P611872170339408286

`∩[A308494(n+1), A370395(n+1)]`
-/

namespace A226176.P611872170339408286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P611872170339408286

namespace A226176

/-- `∩[A308494(n+1), A370395(n+1)]` -/
def P611872170339408286.Spec : Prop :=
  ∀ n, (P611872170339408286.a n : ℤ) = A226176 (n + 1)

end A226176

/-! ## A226176.P15595214845803153090

`∩[A014574(n+1), A057265(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A226176

/-- `∩[A014574(n+1), A057265(n+1)]` -/
def P15595214845803153090.Spec : Prop :=
  ∀ n, (P15595214845803153090.a n : ℤ) = A226176 (n + 1)

theorem P15595214845803153090.correct : P15595214845803153090.Spec := by
  intro n
  simp only [A226176, Nat.add_sub_cancel]

end A226176

/-! ## A226176.P5500807044073902875

`∩[A056853(n+1), A057265(n+1)]`
-/

namespace A226176.P5500807044073902875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P5500807044073902875

namespace A226176

/-- `∩[A056853(n+1), A057265(n+1)]` -/
def P5500807044073902875.Spec : Prop :=
  ∀ n, (P5500807044073902875.a n : ℤ) = A226176 (n + 1)

end A226176

/-! ## A226176.P13794827997210437260

`∩[A057265(n+1), A370395(n+1)]`
-/

namespace A226176.P13794827997210437260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P13794827997210437260

namespace A226176

/-- `∩[A057265(n+1), A370395(n+1)]` -/
def P13794827997210437260.Spec : Prop :=
  ∀ n, (P13794827997210437260.a n : ℤ) = A226176 (n + 1)

end A226176

/-! ## A226176.P5516293490435536795

`∩[A014574(n+1), A033950(n+1)]`
-/

namespace A226176.P5516293490435536795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P5516293490435536795

namespace A226176

/-- `∩[A014574(n+1), A033950(n+1)]` -/
def P5516293490435536795.Spec : Prop :=
  ∀ n, (P5516293490435536795.a n : ℤ) = A226176 (n + 1)

end A226176

/-! ## A226176.P9585058214815181458

`∩[A033950(n+1), A056853(n+1)]`
-/

namespace A226176.P9585058214815181458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P9585058214815181458

namespace A226176

/-- `∩[A033950(n+1), A056853(n+1)]` -/
def P9585058214815181458.Spec : Prop :=
  ∀ n, (P9585058214815181458.a n : ℤ) = A226176 (n + 1)

end A226176

/-! ## A226176.P3586807472688768294

`∩[A033950(n+1), A370395(n+1)]`
-/

namespace A226176.P3586807472688768294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P3586807472688768294

namespace A226176

/-- `∩[A033950(n+1), A370395(n+1)]` -/
def P3586807472688768294.Spec : Prop :=
  ∀ n, (P3586807472688768294.a n : ℤ) = A226176 (n + 1)

end A226176

/-! ## A226176.P15410013806895237923

`∩[A167706(n+1), A308494(n+1)]`
-/

namespace A226176.P15410013806895237923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P15410013806895237923

namespace A226176

/-- `∩[A167706(n+1), A308494(n+1)]` -/
def P15410013806895237923.Spec : Prop :=
  ∀ n, (P15410013806895237923.a n : ℤ) = A226176 (n + 1)

end A226176

/-! ## A226176.P5468850063801692872

`∩[A174219(n+1), A308494(n+1)]`
-/

namespace A226176.P5468850063801692872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P5468850063801692872

namespace A226176

/-- `∩[A174219(n+1), A308494(n+1)]` -/
def P5468850063801692872.Spec : Prop :=
  ∀ n, (P5468850063801692872.a n : ℤ) = A226176 (n + 1)

end A226176

/-! ## A226176.P10418655436401036109

`filter[A014574(n+1), A336040(#)]`
-/

namespace A226176.P10418655436401036109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A226176.P10418655436401036109

namespace A226176

/-- `filter[A014574(n+1), A336040(#)]` -/
def P10418655436401036109.Spec : Prop :=
  ∀ n, P10418655436401036109.a n = A226176 (n + 1)

end A226176

/-! ## A226176.P3012991264545222677

`filter[A056853(n+1), A336040(#)]`
-/

namespace A226176.P3012991264545222677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A226176.P3012991264545222677

namespace A226176

/-- `filter[A056853(n+1), A336040(#)]` -/
def P3012991264545222677.Spec : Prop :=
  ∀ n, P3012991264545222677.a n = A226176 (n + 1)

end A226176

/-! ## A226176.P348227278969377482

`filter[A370395(n+1), A336040(#)]`
-/

namespace A226176.P348227278969377482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A226176.P348227278969377482

namespace A226176

/-- `filter[A370395(n+1), A336040(#)]` -/
def P348227278969377482.Spec : Prop :=
  ∀ n, P348227278969377482.a n = A226176 (n + 1)

end A226176

/-! ## A226176.P12778754413399130283

`filter[A167706(n+2), A336040(#)]`
-/

namespace A226176.P12778754413399130283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A226176.P12778754413399130283

namespace A226176

/-- `filter[A167706(n+2), A336040(#)]` -/
def P12778754413399130283.Spec : Prop :=
  ∀ n, P12778754413399130283.a n = A226176 (n + 1)

end A226176

/-! ## A226176.P10687201799422005548

`filter[A163656(2*(n+1)), A336040(#)]`
-/

namespace A226176.P10687201799422005548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A226176.P10687201799422005548

namespace A226176

/-- `filter[A163656(2*(n+1)), A336040(#)]` -/
def P10687201799422005548.Spec : Prop :=
  ∀ n, P10687201799422005548.a n = A226176 (n + 1)

end A226176

/-! ## A226176.P16156887612814673326

`∩[A057265(n+1), A242040(n+1)]`
-/

namespace A226176.P16156887612814673326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P16156887612814673326

namespace A226176

/-- `∩[A057265(n+1), A242040(n+1)]` -/
def P16156887612814673326.Spec : Prop :=
  ∀ n, (P16156887612814673326.a n : ℤ) = A226176 (n + 1)

end A226176

/-! ## A226176.P14455396623312129246

`∩[A242040(n+1), A308494(n+1)]`
-/

namespace A226176.P14455396623312129246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P14455396623312129246

namespace A226176

/-- `∩[A242040(n+1), A308494(n+1)]` -/
def P14455396623312129246.Spec : Prop :=
  ∀ n, (P14455396623312129246.a n : ℤ) = A226176 (n + 1)

end A226176

/-!
# A226177: a(n) = mu(n)*d(n), where mu(n) = A008683 and d(n) = A000005.

The programs for A226177, the canonical program `A226177.P17362868091198495197` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226177 has offset 1).

The definition of A226177 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226177.P17362868091198495197

`A008683(n+1)*A000005(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A226177

/-- `A008683(n+1)*A000005(n+1)` -/
def P17362868091198495197.Spec : Prop :=
  ∀ n, P17362868091198495197.a n = A226177 (n + 1)

theorem P17362868091198495197.correct : P17362868091198495197.Spec := by
  intro n
  simp only [A226177, Nat.add_sub_cancel]

end A226177

/-! ## A226177.P15063206447224580093

`∏{e}[n+1, -C(2, #²)]`
-/

namespace A226177.P15063206447224580093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p ^ 2) : ℤ))

end

end A226177.P15063206447224580093

namespace A226177

/-- `∏{e}[n+1, -C(2, #²)]` -/
def P15063206447224580093.Spec : Prop :=
  ∀ n, P15063206447224580093.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P10971293891488903047

`∏{e}[n+1, 2%#²-2]`
-/

namespace A226177.P10971293891488903047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (((2 % Nat.factorization (f1 n) p ^ 2 : ℕ) : ℤ) - 2)

end

end A226177.P10971293891488903047

namespace A226177

/-- `∏{e}[n+1, 2%#²-2]` -/
def P10971293891488903047.Spec : Prop :=
  ∀ n, P10971293891488903047.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P3564729166159176086

`∏{e}[n+1, -and(2, 2^#)]`
-/

namespace A226177.P3564729166159176086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.land 2 (2 ^ Nat.factorization (f1 n) p) : ℤ))

end

end A226177.P3564729166159176086

namespace A226177

/-- `∏{e}[n+1, -and(2, 2^#)]` -/
def P3564729166159176086.Spec : Prop :=
  ∀ n, P3564729166159176086.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P6290314318643742593

`∏{e}[n+1, -floor(2/#²)]`
-/

namespace A226177.P6290314318643742593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-⌊2 / (Nat.factorization (f1 n) p ^ 2 : ℚ)⌋)

end

end A226177.P6290314318643742593

namespace A226177

/-- `∏{e}[n+1, -floor(2/#²)]` -/
def P6290314318643742593.Spec : Prop :=
  ∀ n, P6290314318643742593.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P3396551781991452451

`∑{d}[n+1, A326814(#)]`
-/

namespace A226177.P3396551781991452451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326814 d

end

end A226177.P3396551781991452451

namespace A226177

/-- `∑{d}[n+1, A326814(#)]` -/
def P3396551781991452451.Spec : Prop :=
  ∀ n, P3396551781991452451.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P4987888841004788962

`∑{d}[n+1, A008683(lcm(#, n+1))]`
-/

namespace A226177.P4987888841004788962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (Nat.lcm d (n + 1))

end

end A226177.P4987888841004788962

namespace A226177

/-- `∑{d}[n+1, A008683(lcm(#, n+1))]` -/
def P4987888841004788962.Spec : Prop :=
  ∀ n, P4987888841004788962.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P15119351911096587336

`A053985(A074823(n+1))`
-/

namespace A226177.P15119351911096587336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A074823 (n + 1)).toNat

end

end A226177.P15119351911096587336

namespace A226177

/-- `A053985(A074823(n+1))` -/
def P15119351911096587336.Spec : Prop :=
  ∀ n, P15119351911096587336.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P14175248370448851849

`A162397(A073184(n+1))`
-/

namespace A226177.P14175248370448851849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162397 (A073184 (n + 1)).toNat

end

end A226177.P14175248370448851849

namespace A226177

/-- `A162397(A073184(n+1))` -/
def P14175248370448851849.Spec : Prop :=
  ∀ n, P14175248370448851849.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P11513885443792294696

`A355837(A007948(n+1))`
-/

namespace A226177.P11513885443792294696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355837 (A007948 (n + 1)).toNat

end

end A226177.P11513885443792294696

namespace A226177

/-- `A355837(A007948(n+1))` -/
def P11513885443792294696.Spec : Prop :=
  ∀ n, P11513885443792294696.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P2020839453881787510

`A059285(A351521(n+1))`
-/

namespace A226177.P2020839453881787510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059285 (A351521 (n + 1)).toNat

end

end A226177.P2020839453881787510

namespace A226177

/-- `A059285(A351521(n+1))` -/
def P2020839453881787510.Spec : Prop :=
  ∀ n, P2020839453881787510.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P10808113568659199194

`A008683(n+1)*Δ[A006218(n)]`
-/

namespace A226177.P10808113568659199194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f1 (n + 1) - f1 n)

end

end A226177.P10808113568659199194

namespace A226177

/-- `A008683(n+1)*Δ[A006218(n)]` -/
def P10808113568659199194.Spec : Prop :=
  ∀ n, P10808113568659199194.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P5307220673521277328

`A008683(n+1)*Δ[A054519(n)]`
-/

namespace A226177.P5307220673521277328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f1 (n + 1) - f1 n)

end

end A226177.P5307220673521277328

namespace A226177

/-- `A008683(n+1)*Δ[A054519(n)]` -/
def P5307220673521277328.Spec : Prop :=
  ∀ n, P5307220673521277328.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P349627199103269128

`A001616(n+1)*A008683(n+1)`
-/

namespace A226177.P349627199103269128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (n + 1) * A008683 (n + 1)

end

end A226177.P349627199103269128

namespace A226177

/-- `A001616(n+1)*A008683(n+1)` -/
def P349627199103269128.Spec : Prop :=
  ∀ n, P349627199103269128.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P865617838136269354

`A007427(n+1)*A008966(n+1)`
-/

namespace A226177.P865617838136269354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (n + 1) * A008966 (n + 1)

end

end A226177.P865617838136269354

namespace A226177

/-- `A007427(n+1)*A008966(n+1)` -/
def P865617838136269354.Spec : Prop :=
  ∀ n, P865617838136269354.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P3246816917420458733

`A008683(n+1)*A034444(n+1)`
-/

namespace A226177.P3246816917420458733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A034444 (n + 1)

end

end A226177.P3246816917420458733

namespace A226177

/-- `A008683(n+1)*A034444(n+1)` -/
def P3246816917420458733.Spec : Prop :=
  ∀ n, P3246816917420458733.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P17252860239697651445

`A008683(n+1)*A037445(n+1)`
-/

namespace A226177.P17252860239697651445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A037445 (n + 1)

end

end A226177.P17252860239697651445

namespace A226177

/-- `A008683(n+1)*A037445(n+1)` -/
def P17252860239697651445.Spec : Prop :=
  ∀ n, P17252860239697651445.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P10575741403587853518

`A008683(n+1)*A038148(n+1)`
-/

namespace A226177.P10575741403587853518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A038148 (n + 1)

end

end A226177.P10575741403587853518

namespace A226177

/-- `A008683(n+1)*A038148(n+1)` -/
def P10575741403587853518.Spec : Prop :=
  ∀ n, P10575741403587853518.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P4743668394595751045

`A008683(n+1)*A046644(n+1)`
-/

namespace A226177.P4743668394595751045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A046644 (n + 1)

end

end A226177.P4743668394595751045

namespace A226177

/-- `A008683(n+1)*A046644(n+1)` -/
def P4743668394595751045.Spec : Prop :=
  ∀ n, P4743668394595751045.a n = A226177 (n + 1)

end A226177

/-! ## A226177.P8005868687871181248

`A008683(n+1)*A048106(n+1)`
-/

namespace A226177.P8005868687871181248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A048106 (n + 1)

end

end A226177.P8005868687871181248

namespace A226177

/-- `A008683(n+1)*A048106(n+1)` -/
def P8005868687871181248.Spec : Prop :=
  ∀ n, P8005868687871181248.a n = A226177 (n + 1)

end A226177

/-!
# A226178: Exponents n such that 2^n - previous_prime(2^n) = next_prime(2^n) - 2^n.

The programs for A226178, there is no canonical definition to state claims against.
-/

/-! ## A226178.P8509600679985503098

`A071087(n+2)-1`
-/

namespace A226178.P8509600679985503098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071087 (n + 2) - 1

end

end A226178.P8509600679985503098

/-! ## A226178.P385155264794729680

`∑[abs(Δ[A071087(n+1)])]`
-/

namespace A226178.P385155264794729680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226178.P385155264794729680

/-! ## A226178.P5010526372799448225

`record[Δ[A071087(val(n+1, 2)+1)]]`
-/

namespace A226178.P5010526372799448225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071087 (SequenceMachineLib.valuation (n + 1) 2 + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226178.P5010526372799448225

/-! ## A226178.P2739255368022258515

`record[Δ[A071087(C(comp[∑[n]]-n, 2)-n)]]`
-/

namespace A226178.P2739255368022258515
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071087 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226178.P2739255368022258515

/-!
# A226179: Fixed points of A218468 (= least unused number which is a multiple of a digit of the preceding term).

The programs for A226179, there is no canonical definition to state claims against.
-/

/-! ## A226179.P12540636975026496998

`eq[n+1, A218468(n+1)]+1`
-/

namespace A226179.P12540636975026496998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226179.P12540636975026496998

/-!
# A226180: Denominators in Taylor series for integral of tan(x)/x.

The programs for A226180, there is no canonical definition to state claims against.
-/

/-! ## A226180.P10602555257211251814

`A036279(n+1)*(2*(n+1)-1)`
-/

namespace A226180.P10602555257211251814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036279 (n + 1) * ((2 * (n + 1) : ℤ) - 1)

end

end A226180.P10602555257211251814

/-! ## A226180.P11879801006377863127

`Δ[n²]*A036279(n+1)`
-/

namespace A226180.P11879801006377863127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A036279 (n + 1)

end

end A226180.P11879801006377863127

/-! ## A226180.P9059401935042984499

`Δ[n²]*A046983(Δ[n²])`
-/

namespace A226180.P9059401935042984499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A046983 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A226180.P9059401935042984499

/-! ## A226180.P3954940952928752395

`A046983(2*n+1)*(2*n+1)`
-/

namespace A226180.P3954940952928752395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046983 (2 * n + 1) * (2 * n + 1 : ℤ)

end

end A226180.P3954940952928752395

/-! ## A226180.P16761726513882469139

`or(1, A005408(n)*A046983(A005408(n)))`
-/

namespace A226180.P16761726513882469139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005408 n * A046983 (A005408 n).toNat)

end

end A226180.P16761726513882469139

/-!
# A226181: Primes p such that p-1 divided by the period of the binary expansion of 1/p equals 2^x for some nonnegative integer x.

The programs for A226181, there is no canonical definition to state claims against.
-/

/-! ## A226181.P8075106263236075252

`p?[(2*n+1)*A000120(A006694(n))]`
-/

namespace A226181.P8075106263236075252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000120 (A006694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226181.P8075106263236075252

/-! ## A226181.P18256208741418887023

`p?[A005843(n)+A003958(A037226(n))]`
-/

namespace A226181.P18256208741418887023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A003958 (A037226 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226181.P18256208741418887023

/-! ## A226181.P8933135069209942447

`p?[A000120(A037226(n))*A005408(n)]`
-/

namespace A226181.P8933135069209942447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A037226 n).toNat * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226181.P8933135069209942447

/-! ## A226181.P5460279618370286388

`record[A065091(n+1)/A007733(A001917(n+2))]`
-/

namespace A226181.P5460279618370286388
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) : ℚ) / (A007733 (A001917 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226181.P5460279618370286388

/-!
# A226182: a(n) is the smallest integer k >= 2 such that the number of divisors d>1 of n + k with k|n + d equals A225867(n).

The programs for A226182, there is no canonical definition to state claims against.
-/

/-! ## A226182.P15330338334942695782

`A220395(A285707(A007989(n))!)`
-/

namespace A226182.P15330338334942695782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220395 (Nat.factorial (A285707 (A007989 n).toNat).toNat)

end

end A226182.P15330338334942695782

/-! ## A226182.P8144764564951003833

`A000005(A327076(∑[A080172(n+1)]))`
-/

namespace A226182.P8144764564951003833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A327076 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A226182.P8144764564951003833

/-! ## A226182.P4571348882071369633

`A037300(A037325(n+1)+A011620(n))`
-/

namespace A226182.P4571348882071369633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037300 (A037325 (n + 1) + A011620 n).toNat

end

end A226182.P4571348882071369633

/-! ## A226182.P12952947431554417633

`A072411(A099774(3*n+5)+A005899(3*n+2))+1`
-/

namespace A226182.P12952947431554417633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A099774 (3 * n + 5) + A005899 (3 * n + 2)).toNat + 1

end

end A226182.P12952947431554417633

/-! ## A226182.P10230377864117756949

`A375341(A250266(n))`
-/

namespace A226182.P10230377864117756949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375341 (A250266 n).toNat

end

end A226182.P10230377864117756949

/-!
# A226183: Least positive integer k such that 1 + 1/2 + ... + 1/n < 1/(n+1) + ... + 1/k.

The programs for A226183, there is no canonical definition to state claims against.
-/

/-! ## A226183.P993838445596957086

`A226184(n+1)+n+1`
-/

namespace A226183.P993838445596957086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226184 (n + 1) + (n + 1 : ℤ)

end

end A226183.P993838445596957086

/-! ## A226183.P6518237083208638693

`A289183(n+1)+1`
-/

namespace A226183.P6518237083208638693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289183 (n + 1) + 1

end

end A226183.P6518237083208638693

/-! ## A226183.P13781429200443353577

`record[A289183(A328399(n))]-log2(1/2)`
-/

namespace A226183.P13781429200443353577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289183 (A328399 n).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

end

end A226183.P13781429200443353577

/-! ## A226183.P7381471721285130510

`record[A289183(A344180(n))]-log2(1/2)`
-/

namespace A226183.P7381471721285130510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289183 (A344180 n).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

end

end A226183.P7381471721285130510

/-! ## A226183.P9831034176016335318

`record[A226184(A008619(n))+A028242(n)]`
-/

namespace A226183.P9831034176016335318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226184 (A008619 n).toNat + A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226183.P9831034176016335318

/-! ## A226183.P10562972499402165013

`record[A226184(A028920(n))+A028920(n)]`
-/

namespace A226183.P10562972499402165013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226184 (A028920 n).toNat + A028920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226183.P10562972499402165013

/-! ## A226183.P6051361525476203280

`A020725(A289183(n+1))`
-/

namespace A226183.P6051361525476203280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A289183 (n + 1)).toNat

end

end A226183.P6051361525476203280

/-! ## A226183.P10015424900534544980

`A020725(A226184(n+1)+n)`
-/

namespace A226183.P10015424900534544980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A226184 (n + 1) + (n : ℤ)).toNat

end

end A226183.P10015424900534544980

/-! ## A226183.P12297677269953709025

`A065475(A226184(n+1)+n)`
-/

namespace A226183.P12297677269953709025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A226184 (n + 1) + (n : ℤ)).toNat

end

end A226183.P12297677269953709025

/-!
# A226184: Least positive integer k such that 1 + 1/2 + ... + 1/n < 1/(n+1) + ... + 1/(n+k).

The programs for A226184, there is no canonical definition to state claims against.
-/

/-! ## A226184.P168227496224747768

`A226183(n+1)-(n+1)`
-/

namespace A226184.P168227496224747768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226183 (n + 1) - (n + 1 : ℤ)

end

end A226184.P168227496224747768

/-! ## A226184.P16641836853748974126

`A289183(n+1)-n`
-/

namespace A226184.P16641836853748974126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289183 (n + 1) - (n : ℤ)

end

end A226184.P16641836853748974126

/-! ## A226184.P9052943106197515470

`record[A289183(A126759(n))]-n`
-/

namespace A226184.P9052943106197515470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289183 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A226184.P9052943106197515470

/-! ## A226184.P3808745408272757032

`record[A289183(A328399(n))]-n`
-/

namespace A226184.P3808745408272757032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289183 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A226184.P3808745408272757032

/-! ## A226184.P1127786079479080963

`record[A289183(A344180(n))]-n`
-/

namespace A226184.P1127786079479080963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289183 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A226184.P1127786079479080963

/-! ## A226184.P1743466788722096690

`abs(A289183(n+1)+A001489(n))`
-/

namespace A226184.P1743466788722096690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A289183 (n + 1) + A001489 n|

end

end A226184.P1743466788722096690

/-! ## A226184.P7242436262669084995

`abs(A289183(A328399(2*n))-n)`
-/

namespace A226184.P7242436262669084995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A289183 (A328399 (2 * n)).toNat - (n : ℤ)|

end

end A226184.P7242436262669084995

/-! ## A226184.P2095703505664381025

`A001478(n+1)+A226183(n+1)`
-/

namespace A226184.P2095703505664381025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A226183 (n + 1)

end

end A226184.P2095703505664381025

/-! ## A226184.P10459050300043781624

`A000027(A226183(n+1)+xor(n, -1))`
-/

namespace A226184.P10459050300043781624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A226183 (n + 1) + Int.xor (n : ℤ) (-1)).toNat

end

end A226184.P10459050300043781624

/-! ## A226184.P12232531676686716733

`A023443(A226183(n+1)-n)`
-/

namespace A226184.P12232531676686716733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A226183 (n + 1) - (n : ℤ)).toNat

end

end A226184.P12232531676686716733

/-!
# A226185: Least positive integer k such that 1 + 1/2 + ... + 1/n < 1 + 1/3 + 1/5 + ... + 1/(2k-1).

The programs for A226185, there is no canonical definition to state claims against.
-/

/-! ## A226185.P5710793942761627971

`A257639(A051797(n)+record[lcm(3, n+1)])`
-/

namespace A226185.P5710793942761627971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A051797 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A226185.P5710793942761627971

/-! ## A226185.P6072003585979894112

`A257639(A313788(n)+A051797(n))`
-/

namespace A226185.P6072003585979894112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A313788 n + A051797 n).toNat

end

end A226185.P6072003585979894112

/-! ## A226185.P11750639474463342332

`A257639(A313975(n)+A051797(n))`
-/

namespace A226185.P11750639474463342332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A313975 n + A051797 n).toNat

end

end A226185.P11750639474463342332

/-! ## A226185.P17976861159265797247

`A257639(A315520(n)+A051797(n))`
-/

namespace A226185.P17976861159265797247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A315520 n + A051797 n).toNat

end

end A226185.P17976861159265797247

/-! ## A226185.P17984473090573248958

`A257639(or(A051797(n), A313975(n)))`
-/

namespace A226185.P17984473090573248958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.lor (A051797 n) (A313975 n)).toNat

end

end A226185.P17984473090573248958

/-!
# A226186: Composite numbers with both additive and multiplicative digital roots prime.

The programs for A226186, there is no canonical definition to state claims against.
-/

/-! ## A226186.P14579404509578476945

`A333223(A345731(n+6))+A048793(n)`
-/

namespace A226186.P14579404509578476945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (A345731 (n + 6)).toNat + A048793 n

end

end A226186.P14579404509578476945

/-! ## A226186.P11475441637146472333

`A211982(n+3)+A031018(A069217(3*n+5))`
-/

namespace A226186.P11475441637146472333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211982 (n + 3) + A031018 (A069217 (3 * n + 5)).toNat

end

end A226186.P11475441637146472333

/-!
# A226187: Least positive integer k such that 1 + 1/2 + ... + 1/k > n/3.

The programs for A226187, there is no canonical definition to state claims against.
-/

/-! ## A226187.P3166436267365048933

`floor(root(A095765(2*n+3), 4))`
-/

namespace A226187.P3166436267365048933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095765 (2 * n + 3) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A226187.P3166436267365048933

/-! ## A226187.P9361138455847072206

`floor(sqrt(sqrt(A095766(2*n+3))))`
-/

namespace A226187.P9361138455847072206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A095766 (2 * n + 3) : ℝ))⌋

end

end A226187.P9361138455847072206

/-! ## A226187.P1623410764534228512

`A257639(A164236(n))`
-/

namespace A226187.P1623410764534228512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A164236 n).toNat

end

end A226187.P1623410764534228512

/-! ## A226187.P17880710333632887086

`A257639(A209888(n))`
-/

namespace A226187.P17880710333632887086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A209888 n).toNat

end

end A226187.P17880710333632887086

/-! ## A226187.P13402057415291125041

`A257639(record[A277751(n)])`
-/

namespace A226187.P13402057415291125041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226187.P13402057415291125041

/-!
# A226188: Least positive integer k such that 1 + 1/2 + ... + 1/k > 2n/3.

The programs for A226188, there is no canonical definition to state claims against.
-/

/-! ## A226188.P12519650337967557288

`A226187(2*(n+1))`
-/

namespace A226188.P12519650337967557288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226187 (2 * (n + 1))

end

end A226188.P12519650337967557288

/-! ## A226188.P14580911885042481278

`round(exp(2*(n+1)/3-γ))`
-/

namespace A226188.P14580911885042481278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (((2 * (n + 1) : ℚ) / 3 : ℝ) - Real.eulerMascheroniConstant))

end

end A226188.P14580911885042481278

/-! ## A226188.P12947610496733677047

`record[A226187(n+1)^(n%2)]`
-/

namespace A226188.P12947610496733677047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226187 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226188.P12947610496733677047

/-! ## A226188.P8604798917023036922

`and(-1, A226187(record[2-xor(1, -n)]))`
-/

namespace A226188.P8604798917023036922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A226187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A226188.P8604798917023036922

/-! ## A226188.P3722008361096827433

`record[A226187(A133265(n))]`
-/

namespace A226188.P3722008361096827433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226187 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226188.P3722008361096827433

/-!
# A226189: Least positive integer k such that 1 + 1/2 + ... + 1/k >= sqrt(n).

The programs for A226189, there is no canonical definition to state claims against.
-/

/-! ## A226189.P5381426642900679792

`A000196(∑[3*A341153(n)])`
-/

namespace A226189.P5381426642900679792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A341153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226189.P5381426642900679792

/-! ## A226189.P9247427389402954790

`record[A000196(A069950(n)-n)]`
-/

namespace A226189.P9247427389402954790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A069950 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226189.P9247427389402954790

/-! ## A226189.P11215119699854070143

`A000196(A008486(∑[A341153(n)]))`
-/

namespace A226189.P11215119699854070143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A226189.P11215119699854070143

/-! ## A226189.P8194783900006621853

`A056556(A261635(n))`
-/

namespace A226189.P8194783900006621853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A261635 n).toNat

end

end A226189.P8194783900006621853

/-!
# A226190: Least positive integer k such that 1 + 1/2 + ... + 1/k >= log(n).

The programs for A226190, the canonical program `A226190.P10931344988865400973` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226190 has offset 1).

The definition of A226190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226190.P10931344988865400973

`round((n+1)/exp(γ))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A226190

/-- `round((n+1)/exp(γ))` -/
def P10931344988865400973.Spec : Prop :=
  ∀ n, P10931344988865400973.a n = A226190 (n + 1)

theorem P10931344988865400973.correct : P10931344988865400973.Spec := by
  intro n
  simp only [A226190, Nat.add_sub_cancel]

end A226190

/-! ## A226190.P9755053275385446504

`A226896(n+1)-n`
-/

namespace A226190.P9755053275385446504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226896 (n + 1) - (n : ℤ)

end

end A226190.P9755053275385446504

namespace A226190

/-- `A226896(n+1)-n` -/
def P9755053275385446504.Spec : Prop :=
  ∀ n, P9755053275385446504.a n = A226190 (n + 1)

end A226190

/-! ## A226190.P7955053355430767775

`∑[char[A215000(n+1)]]+1`
-/

namespace A226190.P7955053355430767775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215000 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A226190.P7955053355430767775

namespace A226190

/-- `∑[char[A215000(n+1)]]+1` -/
def P7955053355430767775.Spec : Prop :=
  ∀ n, (P7955053355430767775.a n : ℤ) = A226190 (n + 1)

end A226190

/-! ## A226190.P11444462236484743986

`record[A226896(A344180(n))]-n`
-/

namespace A226190.P11444462236484743986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226896 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A226190.P11444462236484743986

namespace A226190

/-- `record[A226896(A344180(n))]-n` -/
def P11444462236484743986.Spec : Prop :=
  ∀ n, P11444462236484743986.a n = A226190 (n + 1)

end A226190

/-! ## A226190.P7572142457505076839

`abs(A226896(n+1)+A001489(n))`
-/

namespace A226190.P7572142457505076839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226896 (n + 1) + A001489 n|

end

end A226190.P7572142457505076839

namespace A226190

/-- `abs(A226896(n+1)+A001489(n))` -/
def P7572142457505076839.Spec : Prop :=
  ∀ n, P7572142457505076839.a n = A226190 (n + 1)

end A226190

/-! ## A226190.P16666572251288112942

`A023443(a(n-1)+char[A215000(n+1)]+1)` with `a(0)=1, a(1)=1`
-/

namespace A226190.P16666572251288112942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215000 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A023443 (a (n - 1) + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ)).toNat

end

end A226190.P16666572251288112942

namespace A226190

/-- `A023443(a(n-1)+char[A215000(n+1)]+1)` -/
def P16666572251288112942.Spec : Prop :=
  ∀ n, P16666572251288112942.a n = A226190 (n + 1)

end A226190

/-! ## A226190.P13999622001104112543

`A028310(A226896(n+1)+A001489(n))`
-/

namespace A226190.P13999622001104112543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A226896 (n + 1) + A001489 n).toNat

end

end A226190.P13999622001104112543

namespace A226190

/-- `A028310(A226896(n+1)+A001489(n))` -/
def P13999622001104112543.Spec : Prop :=
  ∀ n, P13999622001104112543.a n = A226190 (n + 1)

end A226190

/-! ## A226190.P8122071201970884452

`A285727(4*(A226896(n+1)+A001489(n)))`
-/

namespace A226190.P8122071201970884452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (4 * (A226896 (n + 1) + A001489 n)).toNat

end

end A226190.P8122071201970884452

namespace A226190

/-- `A285727(4*(A226896(n+1)+A001489(n)))` -/
def P8122071201970884452.Spec : Prop :=
  ∀ n, P8122071201970884452.a n = A226190 (n + 1)

end A226190

/-! ## A226190.P14929059712593553903

`A000007(n+5)+A226896(n+1)+A001489(n)`
-/

namespace A226190.P14929059712593553903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 5) + (A226896 (n + 1) + A001489 n)

end

end A226190.P14929059712593553903

namespace A226190

/-- `A000007(n+5)+A226896(n+1)+A001489(n)` -/
def P14929059712593553903.Spec : Prop :=
  ∀ n, P14929059712593553903.a n = A226190 (n + 1)

end A226190

/-! ## A226190.P2111992364852546228

`(A226896(n+1)+A001489(n))%A000203(n+5)`
-/

namespace A226190.P2111992364852546228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226896 (n + 1) + A001489 n) (A000203 (n + 5))

end

end A226190.P2111992364852546228

namespace A226190

/-- `(A226896(n+1)+A001489(n))%A000203(n+5)` -/
def P2111992364852546228.Spec : Prop :=
  ∀ n, P2111992364852546228.a n = A226190 (n + 1)

end A226190

/-! ## A226190.P2349139221677284490

`A000196(A008611(n)+∑[A020915(n)])`
-/

namespace A226190.P2349139221677284490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008611 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226190.P2349139221677284490

namespace A226190

/-- `A000196(A008611(n)+∑[A020915(n)])` -/
def P2349139221677284490.Spec : Prop :=
  ∀ n, P2349139221677284490.a n = A226190 (n + 1)

end A226190

/-!
# A226191: Odd numbers n such that n*2^k + 1 is a Carmichael number for some k.

The programs for A226191, there is no canonical definition to state claims against.
-/

/-! ## A226191.P749251928719888879

`A005277(A095239(n+1)+1)+1`
-/

namespace A226191.P749251928719888879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (A095239 (n + 1) + 1).toNat + 1

end

end A226191.P749251928719888879

/-!
# A226192: Expansion of phi(x^2) * psi(-x) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A226192, the canonical program `A226192.P10528376356951425839` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226192 has offset 0).

The definition of A226192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113407, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226192.P10528376356951425839

`(-1)^n*A113407(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A226192

/-- `(-1)^n*A113407(n)` -/
def P10528376356951425839.Spec : Prop :=
  ∀ n, P10528376356951425839.a n = A226192 n

theorem P10528376356951425839.correct : P10528376356951425839.Spec := by
  intro n
  simp only [A226192]

end A226192

/-! ## A226192.P17962264360767806617

`A113407(n)/A033999(n)`
-/

namespace A226192.P17962264360767806617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113407 n : ℚ) / (A033999 n : ℚ)

end

end A226192.P17962264360767806617

namespace A226192

/-- `A113407(n)/A033999(n)` -/
def P17962264360767806617.Spec : Prop :=
  ∀ n, P17962264360767806617.a n = (A226192 n : ℚ)

end A226192

/-! ## A226192.P10963552059242704009

`A008441(2*n)*A033999(n)`
-/

namespace A226192.P10963552059242704009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (2 * n) * A033999 n

end

end A226192.P10963552059242704009

namespace A226192

/-- `A008441(2*n)*A033999(n)` -/
def P10963552059242704009.Spec : Prop :=
  ∀ n, P10963552059242704009.a n = A226192 n

end A226192

/-! ## A226192.P14763858487658300641

`A008441(2*n)*A062157(n+1)`
-/

namespace A226192.P14763858487658300641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (2 * n) * A062157 (n + 1)

end

end A226192.P14763858487658300641

namespace A226192

/-- `A008441(2*n)*A062157(n+1)` -/
def P14763858487658300641.Spec : Prop :=
  ∀ n, P14763858487658300641.a n = A226192 n

end A226192

/-! ## A226192.P5633213417727755269

`(1-A010673(n))*A008441(2*n)`
-/

namespace A226192.P5633213417727755269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A008441 (2 * n)

end

end A226192.P5633213417727755269

namespace A226192

/-- `(1-A010673(n))*A008441(2*n)` -/
def P5633213417727755269.Spec : Prop :=
  ∀ n, P5633213417727755269.a n = A226192 n

end A226192

/-! ## A226192.P17075623181715967139

`(-1)^n*A134343(2*n)`
-/

namespace A226192.P17075623181715967139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A134343 (2 * n)

end

end A226192.P17075623181715967139

namespace A226192

/-- `(-1)^n*A134343(2*n)` -/
def P17075623181715967139.Spec : Prop :=
  ∀ n, P17075623181715967139.a n = A226192 n

end A226192

/-! ## A226192.P2731578387189159009

`A008441(2*n)*A034947(2*n+1)`
-/

namespace A226192.P2731578387189159009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (2 * n) * A034947 (2 * n + 1)

end

end A226192.P2731578387189159009

namespace A226192

/-- `A008441(2*n)*A034947(2*n+1)` -/
def P2731578387189159009.Spec : Prop :=
  ∀ n, P2731578387189159009.a n = A226192 n

end A226192

/-! ## A226192.P12134167431952223661

`A020985(2*n+1)*A020985(n)*A008441(2*n)`
-/

namespace A226192.P12134167431952223661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A008441 (2 * n)

end

end A226192.P12134167431952223661

namespace A226192

/-- `A020985(2*n+1)*A020985(n)*A008441(2*n)` -/
def P12134167431952223661.Spec : Prop :=
  ∀ n, P12134167431952223661.a n = A226192 n

end A226192

/-! ## A226192.P15251725671327699659

`(2-A073575(3*n+1))*A116604(4*n)`
-/

namespace A226192.P15251725671327699659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A073575 (3 * n + 1)) * A116604 (4 * n)

end

end A226192.P15251725671327699659

namespace A226192

/-- `(2-A073575(3*n+1))*A116604(4*n)` -/
def P15251725671327699659.Spec : Prop :=
  ∀ n, P15251725671327699659.a n = A226192 n

end A226192

/-! ## A226192.P18367790173473438708

`(2-A073575(3*n+1))*A129447(4*n)`
-/

namespace A226192.P18367790173473438708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A073575 (3 * n + 1)) * A129447 (4 * n)

end

end A226192.P18367790173473438708

namespace A226192

/-- `(2-A073575(3*n+1))*A129447(4*n)` -/
def P18367790173473438708.Spec : Prop :=
  ∀ n, P18367790173473438708.a n = A226192 n

end A226192

/-! ## A226192.P13607682083227906851

`A020985(2*n+1)*A020985(n)*A116604(4*n)`
-/

namespace A226192.P13607682083227906851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A116604 (4 * n)

end

end A226192.P13607682083227906851

namespace A226192

/-- `A020985(2*n+1)*A020985(n)*A116604(4*n)` -/
def P13607682083227906851.Spec : Prop :=
  ∀ n, P13607682083227906851.a n = A226192 n

end A226192

/-! ## A226192.P2323551649782792947

`A020985(2*n+1)*A020985(n)*A129447(4*n)`
-/

namespace A226192.P2323551649782792947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A129447 (4 * n)

end

end A226192.P2323551649782792947

namespace A226192

/-- `A020985(2*n+1)*A020985(n)*A129447(4*n)` -/
def P2323551649782792947.Spec : Prop :=
  ∀ n, P2323551649782792947.a n = A226192 n

end A226192

/-! ## A226192.P13102655753014563843

`A008441(2*n)*A273225(3*n)/A274621(3*n)`
-/

namespace A226192.P13102655753014563843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (2 * n) * A273225 (3 * n) : ℚ) / (A274621 (3 * n) : ℚ)

end

end A226192.P13102655753014563843

namespace A226192

/-- `A008441(2*n)*A273225(3*n)/A274621(3*n)` -/
def P13102655753014563843.Spec : Prop :=
  ∀ n, P13102655753014563843.a n = (A226192 n : ℚ)

end A226192

/-! ## A226192.P3743713157839610327

`A244526(n)-A244526(A017173(n))`
-/

namespace A226192.P3743713157839610327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244526 n - A244526 (A017173 n).toNat

end

end A226192.P3743713157839610327

namespace A226192

/-- `A244526(n)-A244526(A017173(n))` -/
def P3743713157839610327.Spec : Prop :=
  ∀ n, P3743713157839610327.a n = A226192 n

end A226192

/-! ## A226192.P10890327584730866544

`A008441(2*n)/A001936(3*n)*A079006(3*n)`
-/

namespace A226192.P10890327584730866544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (2 * n) : ℚ) / (A001936 (3 * n) : ℚ) * (A079006 (3 * n) : ℚ)

end

end A226192.P10890327584730866544

namespace A226192

/-- `A008441(2*n)/A001936(3*n)*A079006(3*n)` -/
def P10890327584730866544.Spec : Prop :=
  ∀ n, P10890327584730866544.a n = (A226192 n : ℚ)

end A226192

/-!
# A226194: Expansion of f(-x^1, -x^7) * f(-x^3, -x^5) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A226194, the canonical program `A226194.P16380617872470380368` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226194 has offset 0).

The definition of A226194 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053692, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226194.P16380617872470380368

`(-1)^n*A053692(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A226194

/-- `(-1)^n*A053692(n)` -/
def P16380617872470380368.Spec : Prop :=
  ∀ n, P16380617872470380368.a n = A226194 n

theorem P16380617872470380368.correct : P16380617872470380368.Spec := by
  intro n
  simp only [A226194]

end A226194

/-! ## A226194.P18239196163468466362

`A053692(n)/A033999(n)`
-/

namespace A226194.P18239196163468466362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053692 n : ℚ) / (A033999 n : ℚ)

end

end A226194.P18239196163468466362

namespace A226194

/-- `A053692(n)/A033999(n)` -/
def P18239196163468466362.Spec : Prop :=
  ∀ n, P18239196163468466362.a n = (A226194 n : ℚ)

end A226194

/-! ## A226194.P10877534891441319255

`A053692(n)*A062157(n+1)`
-/

namespace A226194.P10877534891441319255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 n * A062157 (n + 1)

end

end A226194.P10877534891441319255

namespace A226194

/-- `A053692(n)*A062157(n+1)` -/
def P10877534891441319255.Spec : Prop :=
  ∀ n, P10877534891441319255.a n = A226194 n

end A226194

/-! ## A226194.P3904740704641282180

`(-1)^n*A052343(2*n+1)`
-/

namespace A226194.P3904740704641282180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A052343 (2 * n + 1)

end

end A226194.P3904740704641282180

namespace A226194

/-- `(-1)^n*A052343(2*n+1)` -/
def P3904740704641282180.Spec : Prop :=
  ∀ n, P3904740704641282180.a n = A226194 n

end A226194

/-! ## A226194.P651513250397042889

`A053692(n)*A056594(2*n)`
-/

namespace A226194.P651513250397042889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 n * A056594 (2 * n)

end

end A226194.P651513250397042889

namespace A226194

/-- `A053692(n)*A056594(2*n)` -/
def P651513250397042889.Spec : Prop :=
  ∀ n, P651513250397042889.a n = A226194 n

end A226194

/-! ## A226194.P12312370376916765785

`A053692(n)/A034947(2*n+1)`
-/

namespace A226194.P12312370376916765785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053692 n : ℚ) / (A034947 (2 * n + 1) : ℚ)

end

end A226194.P12312370376916765785

namespace A226194

/-- `A053692(n)/A034947(2*n+1)` -/
def P12312370376916765785.Spec : Prop :=
  ∀ n, P12312370376916765785.a n = (A226194 n : ℚ)

end A226194

/-! ## A226194.P9446361352196820165

`A134343(2*n+1)/(2*A033999(n+1))`
-/

namespace A226194.P9446361352196820165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134343 (2 * n + 1) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A226194.P9446361352196820165

namespace A226194

/-- `A134343(2*n+1)/(2*A033999(n+1))` -/
def P9446361352196820165.Spec : Prop :=
  ∀ n, P9446361352196820165.a n = (A226194 n : ℚ)

end A226194

/-! ## A226194.P5940826376975481823

`A008441(2*n+1)/(2*A034947(2*n+1))`
-/

namespace A226194.P5940826376975481823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (2 * n + 1) : ℚ) / (2 * A034947 (2 * n + 1) : ℚ)

end

end A226194.P5940826376975481823

namespace A226194

/-- `A008441(2*n+1)/(2*A034947(2*n+1))` -/
def P5940826376975481823.Spec : Prop :=
  ∀ n, P5940826376975481823.a n = (A226194 n : ℚ)

end A226194

/-! ## A226194.P6735766859656879097

`A004020(2*n+1)/(A132954(2*n+1)*A132954(n+1))`
-/

namespace A226194.P6735766859656879097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004020 (2 * n + 1) : ℚ) / (A132954 (2 * n + 1) * A132954 (n + 1) : ℚ)

end

end A226194.P6735766859656879097

namespace A226194

/-- `A004020(2*n+1)/(A132954(2*n+1)*A132954(n+1))` -/
def P6735766859656879097.Spec : Prop :=
  ∀ n, P6735766859656879097.a n = (A226194 n : ℚ)

end A226194

/-!
# A226195: Numbers n = x0 x1 x2...x9 such that xi is the number of digits greater than i in n.

The programs for A226195, there is no canonical definition to state claims against.
-/

/-! ## A226195.P14364715651161083767

`A215940(lt[A359497(n), A151574(n)])`
-/

namespace A226195.P14364715651161083767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359497 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215940 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226195.P14364715651161083767

/-! ## A226195.P7134195082685055485

`A007089(eq[A070103(3*n+2), A171882(n+1)])`
-/

namespace A226195.P7134195082685055485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070103 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A226195.P7134195082685055485

/-!
# A226196: Triangular numbers which are an average of four consecutive primes.

The programs for A226196, there is no canonical definition to state claims against.
-/

/-! ## A226196.P3072904360682947308

`A000217(A226153(n+1))`
-/

namespace A226196.P3072904360682947308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A226153 (n + 1)).toNat

end

end A226196.P3072904360682947308

/-! ## A226196.P18394694559370754070

`A161680(A226153(n+1)+1)`
-/

namespace A226196.P18394694559370754070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A226153 (n + 1) + 1).toNat

end

end A226196.P18394694559370754070

/-! ## A226196.P162716541922462360

`A000096(A226153(n+1)-1)+1`
-/

namespace A226196.P162716541922462360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A226153 (n + 1) - 1).toNat + 1

end

end A226196.P162716541922462360

/-! ## A226196.P12061253947882957422

`A002378(A226153(n+1))/2%A277959(n+1)`
-/

namespace A226196.P12061253947882957422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A226153 (n + 1)).toNat : ℚ) / (Int.tmod 2 (A277959 (n + 1)) : ℚ)

end

end A226196.P12061253947882957422

/-! ## A226196.P6076863552153945746

`∩[A102655(n+1), A000217(n)]`
-/

namespace A226196.P6076863552153945746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226196.P6076863552153945746

/-! ## A226196.P6054811505890974795

`∩[A102655(n+1), A253145(n)]`
-/

namespace A226196.P6054811505890974795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226196.P6054811505890974795

/-! ## A226196.P2777552712690514170

`∩[A102655(n+1), A186783(n+1)]`
-/

namespace A226196.P2777552712690514170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226196.P2777552712690514170

/-! ## A226196.P2977858947725348023

`∩[A102655(n+1), A350295(n+3)]`
-/

namespace A226196.P2977858947725348023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226196.P2977858947725348023

/-!
# A226197: Numbers of vectors with 2*n integers such that each element is either 1 or -1, and their sum > n.

The programs for A226197, there is no canonical definition to state claims against.
-/

/-! ## A226197.P10529814878199756390

`A104709(A397976(n+1))`
-/

namespace A226197.P10529814878199756390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 (A397976 (n + 1)).toNat

end

end A226197.P10529814878199756390

/-! ## A226197.P11705267544580594334

`A204621(∑[A007310(n+1)+1+n])`
-/

namespace A226197.P11705267544580594334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226197.P11705267544580594334

/-! ## A226197.P9355920848824307672

`A055248(A008619(∑[A004768(n)]))`
-/

namespace A226197.P9355920848824307672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A226197.P9355920848824307672

/-! ## A226197.P14747577616174206974

`A008949(A004526(n)+∑[A004767(n)])`
-/

namespace A226197.P14747577616174206974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A004526 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226197.P14747577616174206974

/-! ## A226197.P10865250559823827680

`A054143(A007310(n+1)+∑[A047393(n+1)])`
-/

namespace A226197.P10865250559823827680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A007310 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226197.P10865250559823827680

/-!
# A226198: a(n) = floor((n-1)!/n).

The programs for A226198, the canonical program `A226198.P14335989640108541051` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226198 has offset 1).

The definition of A226198 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n!/(n+1))` (program `A226198.P14335989640108541051`, by `A226198.P14335989640108541051.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226198.P14335989640108541051

`floor(n!/(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A226198

/-- `floor(n!/(n+1))` -/
def P14335989640108541051.Spec : Prop :=
  ∀ n, P14335989640108541051.a n = A226198 (n + 1)

theorem P14335989640108541051.correct : P14335989640108541051.Spec := by
  intro n
  simp only [A226198, Nat.add_sub_cancel]

end A226198

/-! ## A226198.P4731426350782529187

`ceil((n!-n)/(n+1))`
-/

namespace A226198.P4731426350782529187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.factorial n : ℤ) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A226198.P4731426350782529187

namespace A226198

/-- `ceil((n!-n)/(n+1))` -/
def P4731426350782529187.Spec : Prop :=
  ∀ n, P4731426350782529187.a n = A226198 (n + 1)

end A226198

/-! ## A226198.P4815925005952225355

`floor((n+1)^-1*n!)`
-/

namespace A226198.P4815925005952225355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ (-1 : ℤ) * (Nat.factorial n : ℚ)⌋

end

end A226198.P4815925005952225355

namespace A226198

/-- `floor((n+1)^-1*n!)` -/
def P4815925005952225355.Spec : Prop :=
  ∀ n, P4815925005952225355.a n = A226198 (n + 1)

theorem P4815925005952225355.correct : P4815925005952225355.Spec := by
  intro n
  simp only [A226198, Nat.add_sub_cancel, A226198.P4815925005952225355.a, A226198.P14335989640108541051.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A226198

/-! ## A226198.P12329727341379377681

`floor(∏[round(1/acot(n))]/(n+1))`
-/

namespace A226198.P12329727341379377681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A226198.P12329727341379377681

namespace A226198

/-- `floor(∏[round(1/acot(n))]/(n+1))` -/
def P12329727341379377681.Spec : Prop :=
  ∀ n, P12329727341379377681.a n = A226198 (n + 1)

end A226198

/-! ## A226198.P3805167470750993163

`floor(∏[ceil(abs(γ-n))]/(n+1))`
-/

namespace A226198.P3805167470750993163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A226198.P3805167470750993163

namespace A226198

/-- `floor(∏[ceil(abs(γ-n))]/(n+1))` -/
def P3805167470750993163.Spec : Prop :=
  ∀ n, P3805167470750993163.a n = A226198 (n + 1)

end A226198

/-! ## A226198.P4025963974605252221

`abs(ceil(n!/(n-1-2*n)))`
-/

namespace A226198.P4025963974605252221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(Nat.factorial n : ℚ) / ((n : ℤ) - 1 - (2 * n : ℤ) : ℚ)⌉|

end

end A226198.P4025963974605252221

namespace A226198

/-- `abs(ceil(n!/(n-1-2*n)))` -/
def P4025963974605252221.Spec : Prop :=
  ∀ n, P4025963974605252221.a n = A226198 (n + 1)

end A226198

/-! ## A226198.P4021443151108961858

`-ceil(n!/(n-1-2*n))`
-/

namespace A226198.P4021443151108961858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Nat.factorial n : ℚ) / ((n : ℤ) - 1 - (2 * n : ℤ) : ℚ)⌉

end

end A226198.P4021443151108961858

namespace A226198

/-- `-ceil(n!/(n-1-2*n))` -/
def P4021443151108961858.Spec : Prop :=
  ∀ n, P4021443151108961858.a n = A226198 (n + 1)

end A226198

/-! ## A226198.P6818154450101051417

`ceil((∏[A028310(n)]-n)/(n+1))`
-/

namespace A226198.P6818154450101051417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A226198.P6818154450101051417

namespace A226198

/-- `ceil((∏[A028310(n)]-n)/(n+1))` -/
def P6818154450101051417.Spec : Prop :=
  ∀ n, P6818154450101051417.a n = A226198 (n + 1)

end A226198

/-! ## A226198.P4561586461988547390

`A180589(n+1)-A000254(n)`
-/

namespace A226198.P4561586461988547390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180589 (n + 1) - A000254 n

end

end A226198.P4561586461988547390

namespace A226198

/-- `A180589(n+1)-A000254(n)` -/
def P4561586461988547390.Spec : Prop :=
  ∀ n, P4561586461988547390.a n = A226198 (n + 1)

end A226198

/-!
# A226199: a(n) = 7^n + n.

The programs for A226199, the canonical program `A226199.P3513308682891619503` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226199 has offset 0).

The definition of A226199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+n` (program `A226199.P3513308682891619503`, by `A226199.P3513308682891619503.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226199.P3513308682891619503

`7^n+n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A226199

/-- `7^n+n` -/
def P3513308682891619503.Spec : Prop :=
  ∀ n, (P3513308682891619503.a n : ℤ) = A226199 n

theorem P3513308682891619503.correct : P3513308682891619503.Spec := by
  intro n
  simp only [A226199]

end A226199

