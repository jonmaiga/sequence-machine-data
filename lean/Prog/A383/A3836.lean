import SequenceMachineLib.Basic
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A383600: Expansion of 1/( (1-x)^3 * (1-9*x) )^(1/4).

The programs for A383600, there is no canonical definition to state claims against.
-/

/-! ## A383600.P13423505713192240898

`A048569(A079522(n+1))`
-/

namespace A383600.P13423505713192240898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048569 (A079522 (n + 1)).toNat

end

end A383600.P13423505713192240898

/-!
# A383601: Expansion of 1/( (1-x) * (1-10*x)^2 )^(1/3).

The programs for A383601, the canonical program `A383601.P257771129488146488` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383601 has offset 0).

The definition of A383601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383601.P257771129488146488

`∑[A377233(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A383601

/-- `∑[A377233(n)]` -/
def P257771129488146488.Spec : Prop :=
  ∀ n, P257771129488146488.a n = A383601 n

theorem P257771129488146488.correct : P257771129488146488.Spec := by
  intro n
  simp only [A383601]

end A383601

/-! ## A383601.P2112175886262994485

`∑[((11*n-5)*a(n-1)-10*(n-2)*a(n-2))/n]` with `a(0)=1, a(1)=6`
-/

namespace A383601.P2112175886262994485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  (((11 * n : ℤ) - 5 : ℚ) * f1 (n - 1) - 10 * (((n : ℤ) - 2 : ℚ) * f1 (n - 2))) / (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383601.P2112175886262994485

namespace A383601

/-- `∑[((11*n-5)*a(n-1)-10*(n-2)*a(n-2))/n]` -/
def P2112175886262994485.Spec : Prop :=
  ∀ n, P2112175886262994485.a n = (A383601 n : ℚ)

end A383601

/-!
# A383605: Expansion of 1/( (1-x) * (1-x-9*x^2)^2 )^(1/3).

The programs for A383605, there is no canonical definition to state claims against.
-/

/-! ## A383605.P17019769538587931163

`A179772(A151443(n))`
-/

namespace A383605.P17019769538587931163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179772 (A151443 n).toNat

end

end A383605.P17019769538587931163

/-! ## A383605.P4414698258577301890

`A002487(A359797(n)+A109957(n))`
-/

namespace A383605.P4414698258577301890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A359797 n + A109957 n).toNat

end

end A383605.P4414698258577301890

/-!
# A383608: Expansion of e.g.f. (1+x)*cosh(x)^2.

The programs for A383608, the canonical program `A383608.P15605246280891763015` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383608 has offset 0).

The definition of A383608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383608.P15605246280891763015

`8*a(n-2)-16*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=8, a(5)=40`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383608

/-- `8*a(n-2)-16*a(n-4)` -/
def P15605246280891763015.Spec : Prop :=
  ∀ n, P15605246280891763015.a n = A383608 n

theorem P15605246280891763015.correct : P15605246280891763015.Spec := by
  intro n
  simp only [A383608]

end A383608

/-! ## A383608.P2269883663153123565

`gcd(A057711(n), A199573(n))`
-/

namespace A383608.P2269883663153123565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057711 n) (A199573 n)

end

end A383608.P2269883663153123565

namespace A383608

/-- `gcd(A057711(n), A199573(n))` -/
def P2269883663153123565.Spec : Prop :=
  ∀ n, (P2269883663153123565.a n : ℤ) = A383608 n

end A383608

/-! ## A383608.P4086888873839835373

`A119468(A000217(n)+A000035(n))`
-/

namespace A383608.P4086888873839835373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119468 (A000217 n + A000035 n).toNat

end

end A383608.P4086888873839835373

namespace A383608

/-- `A119468(A000217(n)+A000035(n))` -/
def P4086888873839835373.Spec : Prop :=
  ∀ n, P4086888873839835373.a n = A383608 n

end A383608

/-! ## A383608.P9313784532446890060

`A119468(A279024(2*(n+2))+A000217(n))`
-/

namespace A383608.P9313784532446890060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119468 (A279024 (2 * (n + 2)) + A000217 n).toNat

end

end A383608.P9313784532446890060

namespace A383608

/-- `A119468(A279024(2*(n+2))+A000217(n))` -/
def P9313784532446890060.Spec : Prop :=
  ∀ n, P9313784532446890060.a n = A383608 n

end A383608

/-! ## A383608.P12571730647497149595

`A198792(A000124(n+1)+A000035(n))`
-/

namespace A383608.P12571730647497149595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (A000124 (n + 1) + A000035 n).toNat

end

end A383608.P12571730647497149595

namespace A383608

/-- `A198792(A000124(n+1)+A000035(n))` -/
def P12571730647497149595.Spec : Prop :=
  ∀ n, P12571730647497149595.a n = A383608 n

end A383608

/-!
# A383609: Triangle read by rows: T(n,k) = T(n-1, k-2) + T(n-1, k-1) + T(n-1, k) for 0 < k < n, T(n,0) = T(n,n) = 1.

The programs for A383609, there is no canonical definition to state claims against.
-/

/-! ## A383609.P4614618710399928139

`A167630(A061579(n))`
-/

namespace A383609.P4614618710399928139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167630 (A061579 n).toNat

end

end A383609.P4614618710399928139

/-! ## A383609.P14170400234835237748

`A167630(A038722(n+2))`
-/

namespace A383609.P14170400234835237748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167630 (A038722 (n + 2)).toNat

end

end A383609.P14170400234835237748

/-! ## A383609.P18069424557030435516

`A167630(A114327(n)+n)`
-/

namespace A383609.P18069424557030435516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167630 (A114327 n + (n : ℤ)).toNat

end

end A383609.P18069424557030435516

/-! ## A383609.P2090134469935741071

`A124460(n)-A163351(A102480(n))`
-/

namespace A383609.P2090134469935741071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 n - A163351 (A102480 n).toNat

end

end A383609.P2090134469935741071

/-! ## A383609.P2521346929157307388

`A087845(A232968(n))`
-/

namespace A383609.P2521346929157307388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A232968 n).toNat

end

end A383609.P2521346929157307388

/-!
# A383610: Expansion of 1/( (1-x^2) * (1-x^2-9*x)^2 )^(1/3).

The programs for A383610, there is no canonical definition to state claims against.
-/

/-! ## A383610.P3305235534902130505

`A039089(A034164(n))+1`
-/

namespace A383610.P3305235534902130505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039089 (A034164 n).toNat + 1

end

end A383610.P3305235534902130505

/-!
# A383611: Expansion of 1/( (1-x^3) * (1-x^3-9*x)^2 )^(1/3).

The programs for A383611, there is no canonical definition to state claims against.
-/

/-! ## A383611.P3514728444347097031

`A095765(A095793(n))+A004988(n)`
-/

namespace A383611.P3514728444347097031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095765 (A095793 n).toNat + A004988 n

end

end A383611.P3514728444347097031

/-!
# A383615: Length of the long leg of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 = A000108(n) and its long leg and hypotenuse are consecutive natural numbers.

The programs for A383615, there is no canonical definition to state claims against.
-/

/-! ## A383615.P11049262811237557698

`4*A051789(n+2)`
-/

namespace A383615.P11049262811237557698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051789 (n + 2)

end

end A383615.P11049262811237557698

/-! ## A383615.P16696251172409127344

`A383958(n+2)-A131428(n+2)`
-/

namespace A383615.P16696251172409127344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383958 (n + 2) - A131428 (n + 2)

end

end A383615.P16696251172409127344

/-! ## A383615.P9402992889836626578

`A001453(n+2)*A068875(n+2)`
-/

namespace A383615.P9402992889836626578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001453 (n + 2) * A068875 (n + 2)

end

end A383615.P9402992889836626578

/-! ## A383615.P18417615561881138824

`A000108(n+2)*A128634(n+2)`
-/

namespace A383615.P18417615561881138824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) * A128634 (n + 2)

end

end A383615.P18417615561881138824

/-! ## A383615.P5456237497960440679

`A000108(n+2)*A341732(2*n+5)`
-/

namespace A383615.P5456237497960440679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) * A341732 (2 * n + 5)

end

end A383615.P5456237497960440679

/-! ## A383615.P5845486145004392580

`A128634(n+2)+A001453(n+2)*A128634(n+2)`
-/

namespace A383615.P5845486145004392580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128634 (n + 2) + A001453 (n + 2) * A128634 (n + 2)

end

end A383615.P5845486145004392580

/-!
# A383616: Semiperimeter of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A383616, the canonical program `A383616.P14573704481256755049` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383616 has offset 0).

The definition of A383616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383616.P14573704481256755049

`(2*n)!/(n!*(n+1)!)*(2*(2*n)!/(n!*(n+1)!)-1)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383616

/-- `(2*n)!/(n!*(n+1)!)*(2*(2*n)!/(n!*(n+1)!)-1)` -/
def P14573704481256755049.Spec : Prop :=
  ∀ n, P14573704481256755049.a n = (A383616 n : ℚ)

end A383616

/-! ## A383616.P2985977800052129542

`A000108(n)*A131428(n)`
-/

namespace A383616.P2985977800052129542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A131428 n

end

end A383616.P2985977800052129542

namespace A383616

/-- `A000108(n)*A131428(n)` -/
def P2985977800052129542.Spec : Prop :=
  ∀ n, P2985977800052129542.a n = A383616 n

end A383616

/-! ## A383616.P17097377738814981364

`A001246(n)+A001246(n)-A000108(n)`
-/

namespace A383616.P17097377738814981364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n + (A001246 n - A000108 n)

end

end A383616.P17097377738814981364

namespace A383616

/-- `A001246(n)+A001246(n)-A000108(n)` -/
def P17097377738814981364.Spec : Prop :=
  ∀ n, P17097377738814981364.a n = A383616 n

end A383616

/-! ## A383616.P12169079357233638084

`A115140(n+1)+A002420(n+1)*A115140(n+1)`
-/

namespace A383616.P12169079357233638084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 1) + A002420 (n + 1) * A115140 (n + 1)

end

end A383616.P12169079357233638084

namespace A383616

/-- `A115140(n+1)+A002420(n+1)*A115140(n+1)` -/
def P12169079357233638084.Spec : Prop :=
  ∀ n, P12169079357233638084.a n = A383616 n

end A383616

/-! ## A383616.P2749790589557239659

`C(2*C(2*n, n)/(n+1), 2)`
-/

namespace A383616.P2749790589557239659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (2 * ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)))).toNat 2

end

end A383616.P2749790589557239659

namespace A383616

/-- `C(2*C(2*n, n)/(n+1), 2)` -/
def P2749790589557239659.Spec : Prop :=
  ∀ n, (P2749790589557239659.a n : ℤ) = A383616 n

end A383616

/-!
# A383617: Triangle read by rows: T(n,k) is the number of binary relations on a set of n objects, k of which are picked out, 0 <= k <= n.

The programs for A383617, there is no canonical definition to state claims against.
-/

/-! ## A383617.P2005307272242253449

`A347271(A337721(n))*A347437(n+3)`
-/

namespace A383617.P2005307272242253449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347271 (A337721 n).toNat * A347437 (n + 3)

end

end A383617.P2005307272242253449

/-!
# A383620: Number of weak compositions of n such that the set of adjacent differences is a subset of {-1,1}.

The programs for A383620, there is no canonical definition to state claims against.
-/

/-! ## A383620.P7522565539220071611

`A003005(∩[A028260(n+1), A029747(n+1)])`
-/

namespace A383620.P7522565539220071611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A383620.P7522565539220071611

/-!
# A383621: a(n) is the minimum possible value of x_1 + x_2 + ... + x_n where x_1, x_2, ..., x_n are positive integers such that x_i does not divide x_j for any i != j.

The programs for A383621, there is no canonical definition to state claims against.
-/

/-! ## A383621.P2073301757752029835

`∑[A383622(n+1)]`
-/

namespace A383621.P2073301757752029835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383621.P2073301757752029835

/-! ## A383621.P10467690518005720940

`A001971(3*(n+1))-A010051(A286072(n))`
-/

namespace A383621.P10467690518005720940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (3 * (n + 1)) - A010051 (A286072 n).toNat

end

end A383621.P10467690518005720940

/-! ## A383621.P6109601144455362465

`A001971(3*(n+1))-A010051(A286076(n))`
-/

namespace A383621.P6109601144455362465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (3 * (n + 1)) - A010051 (A286076 n).toNat

end

end A383621.P6109601144455362465

/-! ## A383621.P12767831155242939358

`A001971(3*(n+1))-A010051(A286077(n))`
-/

namespace A383621.P12767831155242939358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (3 * (n + 1)) - A010051 (A286077 n).toNat

end

end A383621.P12767831155242939358

/-!
# A383622: First differences of A383621.

The programs for A383622, there is no canonical definition to state claims against.
-/

/-! ## A383622.P14629622837272792618

`A084087(n+1)-A152140(A218293(n))`
-/

namespace A383622.P14629622837272792618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1) - A152140 (A218293 n).toNat

end

end A383622.P14629622837272792618

/-! ## A383622.P1208610219853842202

`eq[A002325(A329316(3*n+1)), A087888(n+1)]`
-/

namespace A383622.P1208610219853842202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A329316 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383622.P1208610219853842202

/-! ## A383622.P7093423341748083410

`lt[A182818(A121289(3*(n+1))), A139214(2*n+5)]`
-/

namespace A383622.P7093423341748083410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182818 (A121289 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139214 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383622.P7093423341748083410

/-!
# A383623: a(n) = 4^n - (n^2 + 3*n + 4)*2^(n-2).

The programs for A383623, the canonical program `A383623.P12812546610134656333` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383623 has offset 0).

The definition of A383623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383623.P12812546610134656333

`4^n-(n*(n+3)+4)*2^(n-2)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383623

/-- `4^n-(n*(n+3)+4)*2^(n-2)` -/
def P12812546610134656333.Spec : Prop :=
  ∀ n, P12812546610134656333.a n = (A383623 n : ℚ)

end A383623

/-! ## A383623.P1437607279264951816

`4^n-(n²+3*n+4)*2^(n-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383623.P1437607279264951816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) - (n ^ 2 + 3 * n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A383623.P1437607279264951816

namespace A383623

/-- `4^n-(n²+3*n+4)*2^(n-2)` -/
def P1437607279264951816.Spec : Prop :=
  ∀ n, P1437607279264951816.a n = (A383623 n : ℚ)

end A383623

/-! ## A383623.P9572222731506286036

`2^(n-1)*∑[A000295(n)]`
-/

namespace A383623.P9572222731506286036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A383623.P9572222731506286036

namespace A383623

/-- `2^(n-1)*∑[A000295(n)]` -/
def P9572222731506286036.Spec : Prop :=
  ∀ n, P9572222731506286036.a n = (A383623 n : ℚ)

end A383623

/-! ## A383623.P15531769968222153271

`2^(n-1)*A002662(n+1)`
-/

namespace A383623.P15531769968222153271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002662 (n + 1) : ℚ)

end

end A383623.P15531769968222153271

namespace A383623

/-- `2^(n-1)*A002662(n+1)` -/
def P15531769968222153271.Spec : Prop :=
  ∀ n, P15531769968222153271.a n = (A383623 n : ℚ)

end A383623

/-! ## A383623.P3471690322475112546

`(A024012(n+2)+n)*2^(n-2)`
-/

namespace A383623.P3471690322475112546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024012 (n + 2) + (n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A383623.P3471690322475112546

namespace A383623

/-- `(A024012(n+2)+n)*2^(n-2)` -/
def P3471690322475112546.Spec : Prop :=
  ∀ n, P3471690322475112546.a n = (A383623 n : ℚ)

end A383623

/-! ## A383623.P7209295587133443633

`∑[A000295(n)]*A011782(n)`
-/

namespace A383623.P7209295587133443633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011782 n

end

end A383623.P7209295587133443633

namespace A383623

/-- `∑[A000295(n)]*A011782(n)` -/
def P7209295587133443633.Spec : Prop :=
  ∀ n, P7209295587133443633.a n = A383623 n

end A383623

/-! ## A383623.P792901961085228546

`∑[A000295(n)]*A131577(n)`
-/

namespace A383623.P792901961085228546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A131577 n

end

end A383623.P792901961085228546

namespace A383623

/-- `∑[A000295(n)]*A131577(n)` -/
def P792901961085228546.Spec : Prop :=
  ∀ n, P792901961085228546.a n = A383623 n

end A383623

/-! ## A383623.P5510747759696101575

`A002662(n+1)*A011782(n)`
-/

namespace A383623.P5510747759696101575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 (n + 1) * A011782 n

end

end A383623.P5510747759696101575

namespace A383623

/-- `A002662(n+1)*A011782(n)` -/
def P5510747759696101575.Spec : Prop :=
  ∀ n, P5510747759696101575.a n = A383623 n

end A383623

/-! ## A383623.P4632499383811352502

`(A000079(n+1)-A000124(n+1))*A011782(n)`
-/

namespace A383623.P4632499383811352502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A000124 (n + 1)) * A011782 n

end

end A383623.P4632499383811352502

namespace A383623

/-- `(A000079(n+1)-A000124(n+1))*A011782(n)` -/
def P4632499383811352502.Spec : Prop :=
  ∀ n, P4632499383811352502.a n = A383623 n

end A383623

/-! ## A383623.P12096297151391127040

`Δ[A002450(n)-A053730(n)]`
-/

namespace A383623.P12096297151391127040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n - A053730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383623.P12096297151391127040

namespace A383623

/-- `Δ[A002450(n)-A053730(n)]` -/
def P12096297151391127040.Spec : Prop :=
  ∀ n, P12096297151391127040.a n = A383623 n

end A383623

/-!
# A383624: Expansion of 1/( Product_{k=0..3} (1 + (-1)^k * (2*k+1) * x) )^(1/4).

The programs for A383624, there is no canonical definition to state claims against.
-/

/-! ## A383624.P13479586409986677003

`A233970(A006131(n))`
-/

namespace A383624.P13479586409986677003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A006131 n).toNat

end

end A383624.P13479586409986677003

/-!
# A383627: Expansion of 1/( Product_{k=0..2} (1 - (3*k+1) * x) )^(1/3).

The programs for A383627, there is no canonical definition to state claims against.
-/

/-! ## A383627.P15305920073170338452

`A004183(A007564(n+1))`
-/

namespace A383627.P15305920073170338452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A007564 (n + 1)).toNat

end

end A383627.P15305920073170338452

/-! ## A383627.P7280970467017238234

`A289437(A047891(n+2))`
-/

namespace A383627.P7280970467017238234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A047891 (n + 2)).toNat

end

end A383627.P7280970467017238234

/-!
# A383634: Expansion of 1/( Product_{k=0..3} (1 - (4*k+1) * x) ).

The programs for A383634, the canonical program `A383634.P17694194367612494972` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383634 has offset 0).

The definition of A383634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383634.P17694194367612494972

`(13^(n+3)-3*9^(n+3)+3*5^(n+3)-1)/384`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383634

/-- `(13^(n+3)-3*9^(n+3)+3*5^(n+3)-1)/384` -/
def P17694194367612494972.Spec : Prop :=
  ∀ n, P17694194367612494972.a n = (A383634 n : ℚ)

end A383634

/-! ## A383634.P4294056420719052058

`A111578(A055999(n)+10)`
-/

namespace A383634.P4294056420719052058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111578 (A055999 n + 10).toNat

end

end A383634.P4294056420719052058

namespace A383634

/-- `A111578(A055999(n)+10)` -/
def P4294056420719052058.Spec : Prop :=
  ∀ n, P4294056420719052058.a n = A383634 n

end A383634

/-! ## A383634.P11948101648565809818

`A111578(A000217(n+4)-n)`
-/

namespace A383634.P11948101648565809818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111578 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A383634.P11948101648565809818

namespace A383634

/-- `A111578(A000217(n+4)-n)` -/
def P11948101648565809818.Spec : Prop :=
  ∀ n, P11948101648565809818.a n = A383634 n

end A383634

/-!
# A383637: Expansion of 1/((1-x) * (1+3*x) * (1-5*x)).

The programs for A383637, the canonical program `A383637.P15357854976745534419` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383637 has offset 0).

The definition of A383637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-13x^2+15x^3))` (program `A383637.P15357854976745534419`, by `A383637.P15357854976745534419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383637.P15357854976745534419

`ogf(1/(1-3x-13x^2+15x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383637

/-- `ogf(1/(1-3x-13x^2+15x^3))` -/
def P15357854976745534419.Spec : Prop :=
  ∀ n, P15357854976745534419.a n = A383637 n

theorem P15357854976745534419.correct : P15357854976745534419.Spec := by
  intro n
  simp only [A383637]

end A383637

/-! ## A383637.P7535177669822115373

`3*a(n-1)+13*a(n-2)-15*a(n-3)` with `a(0)=1, a(1)=3, a(2)=22`
-/

namespace A383637.P7535177669822115373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 22] fun n a =>
  3 * a (n - 1) + 13 * a (n - 2) - 15 * a (n - 3)

end

end A383637.P7535177669822115373

namespace A383637

/-- `3*a(n-1)+13*a(n-2)-15*a(n-3)` -/
def P7535177669822115373.Spec : Prop :=
  ∀ n, P7535177669822115373.a n = A383637 n

end A383637

/-! ## A383637.P9951533701859186320

`(5^(n+2)+(-3)^(n+2)-2)/32`
-/

namespace A383637.P9951533701859186320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 2) : ℤ) + (-3) ^ (n + 2) - 2 : ℚ) / 32

end

end A383637.P9951533701859186320

namespace A383637

/-- `(5^(n+2)+(-3)^(n+2)-2)/32` -/
def P9951533701859186320.Spec : Prop :=
  ∀ n, P9951533701859186320.a n = (A383637 n : ℚ)

end A383637

/-! ## A383637.P9799520229081907533

`∑[5^n-3*a(n-1)]` with `a(0)=1`
-/

namespace A383637.P9799520229081907533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (5 ^ n : ℤ) - 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383637.P9799520229081907533

namespace A383637

/-- `∑[5^n-3*a(n-1)]` -/
def P9799520229081907533.Spec : Prop :=
  ∀ n, P9799520229081907533.a n = A383637 n

end A383637

/-! ## A383637.P6891818010065866308

`∑[∑[A120612(n)]]`
-/

namespace A383637.P6891818010065866308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120612 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383637.P6891818010065866308

namespace A383637

/-- `∑[∑[A120612(n)]]` -/
def P6891818010065866308.Spec : Prop :=
  ∀ n, P6891818010065866308.a n = A383637 n

end A383637

/-! ## A383637.P8559317446291543235

`∑[A079773(n+1)]`
-/

namespace A383637.P8559317446291543235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383637.P8559317446291543235

namespace A383637

/-- `∑[A079773(n+1)]` -/
def P8559317446291543235.Spec : Prop :=
  ∀ n, P8559317446291543235.a n = A383637 n

end A383637

/-! ## A383637.P2651378422800794547

`∑[5*a(n-1)]-3*a(n-1)` with `a(0)=1`
-/

namespace A383637.P2651378422800794547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3 * a (n - 1)

end

end A383637.P2651378422800794547

namespace A383637

/-- `∑[5*a(n-1)]-3*a(n-1)` -/
def P2651378422800794547.Spec : Prop :=
  ∀ n, P2651378422800794547.a n = A383637 n

end A383637

/-!
# A383638: Right-truncatable happy numbers: every prefix is a happy number and no digits are zero.

The programs for A383638, there is no canonical definition to state claims against.
-/

/-! ## A383638.P2573768599194713017

`∩[A276137(n+1), A124095(n)]`
-/

namespace A383638.P2573768599194713017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383638.P2573768599194713017

/-! ## A383638.P6006346263891765464

`∩[A117679(n+1), A124095(n)]`
-/

namespace A383638.P6006346263891765464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383638.P6006346263891765464

/-!
# A383641: a(n) is the difference between the sum of even composites and the sum of the odd composites in the first n positive integers.

The programs for A383641, the canonical program `A383641.P12370481159656482094` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383641 has offset 1).

The definition of A383641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383641.P12370481159656482094

`∑[(A010051(n+1)-1)*A131738(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A383641

/-- `∑[(A010051(n+1)-1)*A131738(n)]` -/
def P12370481159656482094.Spec : Prop :=
  ∀ n, P12370481159656482094.a n = A383641 (n + 1)

theorem P12370481159656482094.correct : P12370481159656482094.Spec := by
  intro n
  simp only [A383641, Nat.add_sub_cancel]

end A383641

/-!
# A383649: Numbers k such that A206369(k) is prime.

The programs for A383649, there is no canonical definition to state claims against.
-/

/-! ## A383649.P3635032446718324738

`eq[1, A001222(A206369(n+1))]+1`
-/

namespace A383649.P3635032446718324738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A206369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383649.P3635032446718324738

/-!
# A383650: Averages k of a twin prime pair such that 3*k*2^d is also the average of a twin prime pair for some divisor d of 3*k.

The programs for A383650, there is no canonical definition to state claims against.
-/

/-! ## A383650.P12417248092798949777

`A014574(lt[A126087(n), A071951(2*n+3)])`
-/

namespace A383650.P12417248092798949777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383650.P12417248092798949777

/-! ## A383650.P10786294225614307889

`A014574(lt[A141618(2*n+1), A303642(3*n+2)])`
-/

namespace A383650.P10786294225614307889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141618 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303642 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383650.P10786294225614307889

/-! ## A383650.P14359526648319221339

`A014574(lt[A003114(n), A083949(n)])`
-/

namespace A383650.P14359526648319221339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383650.P14359526648319221339

/-! ## A383650.P6190349344371373904

`A014574(lt[A007661(n), A121698(2*n+3)])`
-/

namespace A383650.P6190349344371373904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121698 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383650.P6190349344371373904

/-! ## A383650.P8069911166843359393

`∩[A014574(n+1), A003056(A292768(n+1))]`
-/

namespace A383650.P8069911166843359393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A292768 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383650.P8069911166843359393

/-!
# A383651: Expansion of 1/((1-x) * (1+4*x) * (1-6*x)).

The programs for A383651, the canonical program `A383651.P5950758598728714525` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383651 has offset 0).

The definition of A383651 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-22x^2+24x^3))` (program `A383651.P5950758598728714525`, by `A383651.P5950758598728714525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383651.P5950758598728714525

`ogf(1/(1-3x-22x^2+24x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383651

/-- `ogf(1/(1-3x-22x^2+24x^3))` -/
def P5950758598728714525.Spec : Prop :=
  ∀ n, P5950758598728714525.a n = A383651 n

theorem P5950758598728714525.correct : P5950758598728714525.Spec := by
  intro n
  simp only [A383651]

end A383651

/-! ## A383651.P7539543403531354967

`3*a(n-1)+22*a(n-2)-24*a(n-3)` with `a(0)=1, a(1)=3, a(2)=31`
-/

namespace A383651.P7539543403531354967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 31] fun n a =>
  3 * a (n - 1) + 22 * a (n - 2) - 24 * a (n - 3)

end

end A383651.P7539543403531354967

namespace A383651

/-- `3*a(n-1)+22*a(n-2)-24*a(n-3)` -/
def P7539543403531354967.Spec : Prop :=
  ∀ n, P7539543403531354967.a n = A383651 n

end A383651

/-! ## A383651.P4825376339613672528

`(6^(n+2)-2+(-4)^(n+2))/50`
-/

namespace A383651.P4825376339613672528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ (n + 2) : ℤ) - 2 + (-4) ^ (n + 2) : ℚ) / 50

end

end A383651.P4825376339613672528

namespace A383651

/-- `(6^(n+2)-2+(-4)^(n+2))/50` -/
def P4825376339613672528.Spec : Prop :=
  ∀ n, P4825376339613672528.a n = (A383651 n : ℚ)

end A383651

/-! ## A383651.P8514415842072600325

`∑[6^n-4*a(n-1)]` with `a(0)=1`
-/

namespace A383651.P8514415842072600325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (6 ^ n : ℤ) - 4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383651.P8514415842072600325

namespace A383651

/-- `∑[6^n-4*a(n-1)]` -/
def P8514415842072600325.Spec : Prop :=
  ∀ n, P8514415842072600325.a n = A383651 n

end A383651

/-! ## A383651.P4555135613468783189

`∑[6*a(n-1)]-4*a(n-1)` with `a(0)=1`
-/

namespace A383651.P4555135613468783189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4 * a (n - 1)

end

end A383651.P4555135613468783189

namespace A383651

/-- `∑[6*a(n-1)]-4*a(n-1)` -/
def P4555135613468783189.Spec : Prop :=
  ∀ n, P4555135613468783189.a n = A383651 n

end A383651

/-! ## A383651.P17808693894884609518

`∑[∑[A083578(n)]]`
-/

namespace A383651.P17808693894884609518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383651.P17808693894884609518

namespace A383651

/-- `∑[∑[A083578(n)]]` -/
def P17808693894884609518.Spec : Prop :=
  ∀ n, P17808693894884609518.a n = A383651 n

end A383651

/-! ## A383651.P10235478303880158750

`∑[A051958(n+1)]`
-/

namespace A383651.P10235478303880158750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383651.P10235478303880158750

namespace A383651

/-- `∑[A051958(n+1)]` -/
def P10235478303880158750.Spec : Prop :=
  ∀ n, P10235478303880158750.a n = A383651 n

end A383651

/-!
# A383653: Integers m such that m^4 is the sum of squares of two or more consecutive integers, positive or negative.

The programs for A383653, there is no canonical definition to state claims against.
-/

/-! ## A383653.P8372131823054479894

`A380181(A302552(n+1)^n)`
-/

namespace A383653.P8372131823054479894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380181 (A302552 (n + 1) ^ n).toNat

end

end A383653.P8372131823054479894

/-!
# A383655: Triangle read by rows: T(n,k) is the number of n-node Stanley graphs containing exactly k isolated points, n>=0, 0<=k<=n.

The programs for A383655, there is no canonical definition to state claims against.
-/

/-! ## A383655.P7259389905314222483

`A007318(n)*A323842(A025581(n))`
-/

namespace A383655.P7259389905314222483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A323842 (A025581 n).toNat

end

end A383655.P7259389905314222483

/-! ## A383655.P7874634916632729001

`or(A008290(n), A188171(A000051(n)))`
-/

namespace A383655.P7874634916632729001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008290 n) (A188171 (A000051 n).toNat)

end

end A383655.P7874634916632729001

/-! ## A383655.P15914578720911600705

`A008290(n)+A000122(A027761(n+1))`
-/

namespace A383655.P15914578720911600705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 n + A000122 (A027761 (n + 1)).toNat

end

end A383655.P15914578720911600705

/-! ## A383655.P10745763759737320851

`A326152(A127194(n+1))+A008290(n)`
-/

namespace A383655.P10745763759737320851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326152 (A127194 (n + 1)).toNat + A008290 n

end

end A383655.P10745763759737320851

/-! ## A383655.P5228552377889678471

`or(A008290(n), A345197(A000041(n)))`
-/

namespace A383655.P5228552377889678471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008290 n) (A345197 (A000041 n).toNat)

end

end A383655.P5228552377889678471

/-!
# A383656: Triangular array read by rows: T(n,k) is the number of n-node Stanley graphs containing exactly k connected components, n>=0, 0<=k<=n.

The programs for A383656, there is no canonical definition to state claims against.
-/

/-! ## A383656.P11442667022162867927

`A151511(n)+A003141(A151511(n+1))`
-/

namespace A383656.P11442667022162867927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 n + A003141 (A151511 (n + 1)).toNat

end

end A383656.P11442667022162867927

/-! ## A383656.P2467447479629012862

`A333382(A226031(n+2))+A264430(n)`
-/

namespace A383656.P2467447479629012862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A226031 (n + 2)).toNat + A264430 n

end

end A383656.P2467447479629012862

/-! ## A383656.P10097754777805995593

`A132393(n)+A073267(A100784(n+5))`
-/

namespace A383656.P10097754777805995593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n + A073267 (A100784 (n + 5)).toNat

end

end A383656.P10097754777805995593

/-! ## A383656.P9854383297640370818

`A344855(n)*A381635(A025065(2*(n+1)))`
-/

namespace A383656.P9854383297640370818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 n * A381635 (A025065 (2 * (n + 1))).toNat

end

end A383656.P9854383297640370818

/-! ## A383656.P16973692299745242393

`A264428(n)+A083896(A108084(n))`
-/

namespace A383656.P16973692299745242393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 n + A083896 (A108084 n).toNat

end

end A383656.P16973692299745242393

/-!
# A383657: Numerator of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s)^(3/2).

The programs for A383657, the canonical program `A383657.P13992406352732443113` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383657 has offset 1).

The definition of A383657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383657.P13992406352732443113

`∏{e}[n+1, A001803(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A383657

/-- `∏{e}[n+1, A001803(#)]` -/
def P13992406352732443113.Spec : Prop :=
  ∀ n, P13992406352732443113.a n = A383657 (n + 1)

theorem P13992406352732443113.correct : P13992406352732443113.Spec := by
  intro n
  simp only [A383657, Nat.add_sub_cancel]

end A383657

/-! ## A383657.P8969192820913059973

`A046643(n+1)*A048691(n+1)`
-/

namespace A383657.P8969192820913059973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (n + 1) * A048691 (n + 1)

end

end A383657.P8969192820913059973

namespace A383657

/-- `A046643(n+1)*A048691(n+1)` -/
def P8969192820913059973.Spec : Prop :=
  ∀ n, P8969192820913059973.a n = A383657 (n + 1)

end A383657

/-!
# A383661: Number of closed knight's tours in the first 2n cells of a 5 X ceiling(2n/5) board.

The programs for A383661, there is no canonical definition to state claims against.
-/

/-! ## A383661.P13821571242894694584

`A089913(A019536(n+1))*A185951(n+1)`
-/

namespace A383661.P13821571242894694584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089913 (A019536 (n + 1)).toNat * A185951 (n + 1)

end

end A383661.P13821571242894694584

/-! ## A383661.P15628886373064516805

`A324337(and(A002224(n+1), A328211(n+1)))`
-/

namespace A383661.P15628886373064516805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (Int.land (A002224 (n + 1)) (A328211 (n + 1))).toNat

end

end A383661.P15628886373064516805

/-!
# A383666: Numbers in whose binary representation no bit (0 or 1) occurs exactly once.

The programs for A383666, the canonical program `A383666.P5075493228816387423` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383666 has offset 1).

The definition of A383666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383666.P17764936011618511015

`∪[A033015(n+1), A158581(n+1)]`
-/

namespace A383666.P17764936011618511015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383666.P17764936011618511015

namespace A383666

/-- `∪[A033015(n+1), A158581(n+1)]` -/
def P17764936011618511015.Spec : Prop :=
  ∀ n, (P17764936011618511015.a n : ℤ) = A383666 (n + 1)

end A383666

/-! ## A383666.P5075493228816387423

`∪[A099248(n+1), A158581(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A383666

/-- `∪[A099248(n+1), A158581(n+1)]` -/
def P5075493228816387423.Spec : Prop :=
  ∀ n, (P5075493228816387423.a n : ℤ) = A383666 (n + 1)

theorem P5075493228816387423.correct : P5075493228816387423.Spec := by
  intro n
  simp only [A383666, Nat.add_sub_cancel]

end A383666

/-! ## A383666.P16920528709774832991

`∪[A121016(n+1), A158581(n+1)]`
-/

namespace A383666.P16920528709774832991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383666.P16920528709774832991

namespace A383666

/-- `∪[A121016(n+1), A158581(n+1)]` -/
def P16920528709774832991.Spec : Prop :=
  ∀ n, (P16920528709774832991.a n : ℤ) = A383666 (n + 1)

end A383666

/-! ## A383666.P10859379234836197946

`∪[A158581(n+1), A222813(n+1)]`
-/

namespace A383666.P10859379234836197946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383666.P10859379234836197946

namespace A383666

/-- `∪[A158581(n+1), A222813(n+1)]` -/
def P10859379234836197946.Spec : Prop :=
  ∀ n, (P10859379234836197946.a n : ℤ) = A383666 (n + 1)

end A383666

/-! ## A383666.P2914052122586159090

`∪[A158581(n+1), A277716(n+1)]`
-/

namespace A383666.P2914052122586159090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383666.P2914052122586159090

namespace A383666

/-- `∪[A158581(n+1), A277716(n+1)]` -/
def P2914052122586159090.Spec : Prop :=
  ∀ n, (P2914052122586159090.a n : ℤ) = A383666 (n + 1)

end A383666

/-! ## A383666.P9067297140917913845

`∪[A158581(n+1), A320441(n+1)]`
-/

namespace A383666.P9067297140917913845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383666.P9067297140917913845

namespace A383666

/-- `∪[A158581(n+1), A320441(n+1)]` -/
def P9067297140917913845.Spec : Prop :=
  ∀ n, (P9067297140917913845.a n : ℤ) = A383666 (n + 1)

end A383666

/-! ## A383666.P10773289617492610344

`∪[A158581(n+1), A389765(n+1)]`
-/

namespace A383666.P10773289617492610344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383666.P10773289617492610344

namespace A383666

/-- `∪[A158581(n+1), A389765(n+1)]` -/
def P10773289617492610344.Spec : Prop :=
  ∀ n, (P10773289617492610344.a n : ℤ) = A383666 (n + 1)

end A383666

/-! ## A383666.P9417927224709545994

`filter[A384189(n+1), A347523(#)]`
-/

namespace A383666.P9417927224709545994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A383666.P9417927224709545994

namespace A383666

/-- `filter[A384189(n+1), A347523(#)]` -/
def P9417927224709545994.Spec : Prop :=
  ∀ n, P9417927224709545994.a n = A383666 (n + 1)

end A383666

/-! ## A383666.P3891198193776713808

`∩[A384189(n+1), A057716(n)]`
-/

namespace A383666.P3891198193776713808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383666.P3891198193776713808

namespace A383666

/-- `∩[A384189(n+1), A057716(n)]` -/
def P3891198193776713808.Spec : Prop :=
  ∀ n, (P3891198193776713808.a n : ℤ) = A383666 (n + 1)

end A383666

/-! ## A383666.P16461125130630804064

`filter[A384189(n+2), A267579(#)]`
-/

namespace A383666.P16461125130630804064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384189 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A383666.P16461125130630804064

namespace A383666

/-- `filter[A384189(n+2), A267579(#)]` -/
def P16461125130630804064.Spec : Prop :=
  ∀ n, P16461125130630804064.a n = A383666 (n + 1)

end A383666

/-! ## A383666.P15975657967987904432

`∪[A158581(n+1), A375704(n+1)]`
-/

namespace A383666.P15975657967987904432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383666.P15975657967987904432

namespace A383666

/-- `∪[A158581(n+1), A375704(n+1)]` -/
def P15975657967987904432.Spec : Prop :=
  ∀ n, (P15975657967987904432.a n : ℤ) = A383666 (n + 1)

end A383666

/-! ## A383666.P12962865317368403437

`∪[A158581(n+1), A354616(n+1)]`
-/

namespace A383666.P12962865317368403437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383666.P12962865317368403437

namespace A383666

/-- `∪[A158581(n+1), A354616(n+1)]` -/
def P12962865317368403437.Spec : Prop :=
  ∀ n, (P12962865317368403437.a n : ℤ) = A383666 (n + 1)

end A383666

/-!
# A383667: Binary words beginning with 1 in which no binary digit occurs only once.

The programs for A383667, the canonical program `A383667.P532673511746496279` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383667 has offset 1).

The definition of A383667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383667.P532673511746496279

`A007088(A383666(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A383667

/-- `A007088(A383666(n+1))` -/
def P532673511746496279.Spec : Prop :=
  ∀ n, P532673511746496279.a n = A383667 (n + 1)

theorem P532673511746496279.correct : P532673511746496279.Spec := by
  intro n
  simp only [A383667, Nat.add_sub_cancel]

end A383667

/-! ## A383667.P17341072882643895090

`∩[A115853(n+1), A007088(n)]`
-/

namespace A383667.P17341072882643895090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383667.P17341072882643895090

namespace A383667

/-- `∩[A115853(n+1), A007088(n)]` -/
def P17341072882643895090.Spec : Prop :=
  ∀ n, (P17341072882643895090.a n : ℤ) = A383667 (n + 1)

end A383667

/-!
# A383668: Numbers whose binary representation has a positive number of 0's, all with even runlength.

The programs for A383668, there is no canonical definition to state claims against.
-/

/-! ## A383668.P15152926164495612205

`∩[A144794(n+1), A060142(n)]`
-/

namespace A383668.P15152926164495612205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383668.P15152926164495612205

/-! ## A383668.P10392304020480552838

`∩[A004753(n+1), A060142(n)]`
-/

namespace A383668.P10392304020480552838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383668.P10392304020480552838

/-! ## A383668.P8376493703820384463

`∩[A158582(n+1), A060142(n)]`
-/

namespace A383668.P8376493703820384463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383668.P8376493703820384463

/-! ## A383668.P10402595738772141416

`filter[A060142(n), A043545(#)]`
-/

namespace A383668.P10402595738772141416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A383668.P10402595738772141416

/-! ## A383668.P7031286554196382139

`eq[A086747(n), A267442(n)]`
-/

namespace A383668.P7031286554196382139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383668.P7031286554196382139

/-! ## A383668.P11606692561919104233

`eq[A086747(n), A286299(n)]`
-/

namespace A383668.P11606692561919104233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286299 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383668.P11606692561919104233

/-! ## A383668.P3737694834957619637

`eq[A036987(n), A343030(n)]`
-/

namespace A383668.P3737694834957619637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383668.P3737694834957619637

/-! ## A383668.P12000799086516198332

`eq[A099894(n), A343030(n)]`
-/

namespace A383668.P12000799086516198332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383668.P12000799086516198332

/-! ## A383668.P984836266172646304

`eq[A127802(n), A343030(n)]`
-/

namespace A383668.P984836266172646304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383668.P984836266172646304

/-! ## A383668.P6991558676526532892

`eq[A267442(n), A316831(n)]`
-/

namespace A383668.P6991558676526532892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383668.P6991558676526532892

/-! ## A383668.P17970222025857906755

`eq[A286299(n), A316831(n)]`
-/

namespace A383668.P17970222025857906755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286299 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383668.P17970222025857906755

/-! ## A383668.P7919172722394678025

`eq[A343030(n), A391442(n)]`
-/

namespace A383668.P7919172722394678025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383668.P7919172722394678025

/-! ## A383668.P14606735848155681545

`filter[A004753(n+1), A086747(#)]`
-/

namespace A383668.P14606735848155681545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086747 (f1 j).toNat = 1) n)

end

end A383668.P14606735848155681545

/-! ## A383668.P11601126580965120683

`filter[A062289(n+1), A086747(#)]`
-/

namespace A383668.P11601126580965120683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086747 (f1 j).toNat = 1) n)

end

end A383668.P11601126580965120683

/-! ## A383668.P3573328236256586657

`filter[A144794(n+1), A086747(#)]`
-/

namespace A383668.P3573328236256586657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086747 (f1 j).toNat = 1) n)

end

end A383668.P3573328236256586657

/-! ## A383668.P185771900195759370

`filter[A158582(n+1), A086747(#)]`
-/

namespace A383668.P185771900195759370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086747 (f1 j).toNat = 1) n)

end

end A383668.P185771900195759370

/-! ## A383668.P14467184859209255712

`filter[A060142(n+1), A267442(#)]`
-/

namespace A383668.P14467184859209255712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A383668.P14467184859209255712

/-! ## A383668.P2858415768230609840

`filter[A247875(n+1), A086747(#)]`
-/

namespace A383668.P2858415768230609840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086747 (f1 j).toNat = 1) n)

end

end A383668.P2858415768230609840

/-! ## A383668.P16972456439869067845

`eq[A086747(n), A297382(n+1)]`
-/

namespace A383668.P16972456439869067845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383668.P16972456439869067845

/-! ## A383668.P16689660871281125023

`eq[A065332(n+1), A343030(n)]`
-/

namespace A383668.P16689660871281125023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383668.P16689660871281125023

/-!
# A383669: Numbers whose binary representation has a positive number of 0's, all with odd runlength.

The programs for A383669, there is no canonical definition to state claims against.
-/

/-! ## A383669.P15835144531018673852

`lt[A162797(A124758(n)), A333766(n)]`
-/

namespace A383669.P15835144531018673852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162797 (A124758 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383669.P15835144531018673852

/-! ## A383669.P17958674461929278236

`lt[A001068(A375374(n+1)), A266150(n)]`
-/

namespace A383669.P17958674461929278236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A375374 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383669.P17958674461929278236

/-! ## A383669.P2039169558963516523

`lt[A001068(A375375(n+1)), A266150(n)]`
-/

namespace A383669.P2039169558963516523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A375375 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383669.P2039169558963516523

/-! ## A383669.P16506259372216686117

`lt[A362609(n), A362607(A266150(n))]`
-/

namespace A383669.P16506259372216686117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362607 (A266150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383669.P16506259372216686117

/-! ## A383669.P3957292724726596409

`eq[A151622(n), A361522(A087117(n))]`
-/

namespace A383669.P3957292724726596409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361522 (A087117 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383669.P3957292724726596409

/-!
# A383670: Limiting word, as a sequence, obtained by prefixing with 0 the limiting sequence of s(n) defined by s(0) = 0, s(1) = 12, s(n) = the concatenation of s(n - 1) and s(n - 2).

The programs for A383670, the canonical program `A383670.P12936080934003293389` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383670 has offset 1).

The definition of A383670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383670.P10755728624957472885

`and(A014675(n), A219608(n+1))`
-/

namespace A383670.P10755728624957472885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014675 n) (A219608 (n + 1))

end

end A383670.P10755728624957472885

namespace A383670

/-- `and(A014675(n), A219608(n+1))` -/
def P10755728624957472885.Spec : Prop :=
  ∀ n, P10755728624957472885.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P6514708860193119427

`(A003842(n)-A114986(n))*A014675(n)`
-/

namespace A383670.P6514708860193119427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003842 n - A114986 n) * A014675 n

end

end A383670.P6514708860193119427

namespace A383670

/-- `(A003842(n)-A114986(n))*A014675(n)` -/
def P6514708860193119427.Spec : Prop :=
  ∀ n, P6514708860193119427.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P12936080934003293389

`A188432(n+1)+A188432(n+1)+A003849(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A383670

/-- `A188432(n+1)+A188432(n+1)+A003849(n)` -/
def P12936080934003293389.Spec : Prop :=
  ∀ n, P12936080934003293389.a n = A383670 (n + 1)

theorem P12936080934003293389.correct : P12936080934003293389.Spec := by
  intro n
  simp only [A383670, Nat.add_sub_cancel]

end A383670

/-! ## A383670.P18300556683107063002

`A383671(A393813(n+2))`
-/

namespace A383670.P18300556683107063002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383671 (A393813 (n + 2)).toNat

end

end A383670.P18300556683107063002

namespace A383670

/-- `A383671(A393813(n+2))` -/
def P18300556683107063002.Spec : Prop :=
  ∀ n, P18300556683107063002.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P6532135094218735537

`A188433(n+2)+A188432(n+1)`
-/

namespace A383670.P6532135094218735537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188433 (n + 2) + A188432 (n + 1)

end

end A383670.P6532135094218735537

namespace A383670

/-- `A188433(n+2)+A188432(n+1)` -/
def P6532135094218735537.Spec : Prop :=
  ∀ n, P6532135094218735537.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P6524638102947201635

`(A003842(n)-A114986(n))*A001468(n+1)`
-/

namespace A383670.P6524638102947201635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003842 n - A114986 n) * A001468 (n + 1)

end

end A383670.P6524638102947201635

namespace A383670

/-- `(A003842(n)-A114986(n))*A001468(n+1)` -/
def P6524638102947201635.Spec : Prop :=
  ∀ n, P6524638102947201635.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P6443588667758302800

`A289034(n+2)+A289034(n+2)+A003849(n)`
-/

namespace A383670.P6443588667758302800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (n + 2) + (A289034 (n + 2) + A003849 n)

end

end A383670.P6443588667758302800

namespace A383670

/-- `A289034(n+2)+A289034(n+2)+A003849(n)` -/
def P6443588667758302800.Spec : Prop :=
  ∀ n, P6443588667758302800.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P9486996286056322456

`A188432(n+1)+A188432(n+1)+A188432(n+2)`
-/

namespace A383670.P9486996286056322456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1) + (A188432 (n + 1) + A188432 (n + 2))

end

end A383670.P9486996286056322456

namespace A383670

/-- `A188432(n+1)+A188432(n+1)+A188432(n+2)` -/
def P9486996286056322456.Spec : Prop :=
  ∀ n, P9486996286056322456.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P16063484970442179414

`(A188467(n+1)+A188433(n+2))*A188433(n+2)`
-/

namespace A383670.P16063484970442179414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A188467 (n + 1) + A188433 (n + 2)) * A188433 (n + 2)

end

end A383670.P16063484970442179414

namespace A383670

/-- `(A188467(n+1)+A188433(n+2))*A188433(n+2)` -/
def P16063484970442179414.Spec : Prop :=
  ∀ n, P16063484970442179414.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P3878432396334695056

`A383671(A114637(n+1))`
-/

namespace A383670.P3878432396334695056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383671 (A114637 (n + 1)).toNat

end

end A383670.P3878432396334695056

namespace A383670

/-- `A383671(A114637(n+1))` -/
def P3878432396334695056.Spec : Prop :=
  ∀ n, P3878432396334695056.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P9076099147108285397

`A284620(A072062(n+1))`
-/

namespace A383670.P9076099147108285397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (A072062 (n + 1)).toNat

end

end A383670.P9076099147108285397

namespace A383670

/-- `A284620(A072062(n+1))` -/
def P9076099147108285397.Spec : Prop :=
  ∀ n, P9076099147108285397.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P11586020210901068527

`A285677(A285683(n+1)+A114986(n))`
-/

namespace A383670.P11586020210901068527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285677 (A285683 (n + 1) + A114986 n).toNat

end

end A383670.P11586020210901068527

namespace A383670

/-- `A285677(A285683(n+1)+A114986(n))` -/
def P11586020210901068527.Spec : Prop :=
  ∀ n, P11586020210901068527.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P10375097924466737967

`A383671(A022415(A022413(n)))`
-/

namespace A383670.P10375097924466737967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383671 (A022415 (A022413 n).toNat).toNat

end

end A383670.P10375097924466737967

namespace A383670

/-- `A383671(A022415(A022413(n)))` -/
def P10375097924466737967.Spec : Prop :=
  ∀ n, P10375097924466737967.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P15784741997186057231

`A098178(A232559(n+2))`
-/

namespace A383670.P15784741997186057231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 (A232559 (n + 2)).toNat

end

end A383670.P15784741997186057231

namespace A383670

/-- `A098178(A232559(n+2))` -/
def P15784741997186057231.Spec : Prop :=
  ∀ n, P15784741997186057231.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P17633006482435160968

`xor(A114986(n), A120614(n+1))`
-/

namespace A383670.P17633006482435160968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A114986 n) (A120614 (n + 1))

end

end A383670.P17633006482435160968

namespace A383670

/-- `xor(A114986(n), A120614(n+1))` -/
def P17633006482435160968.Spec : Prop :=
  ∀ n, P17633006482435160968.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P6678892930760401019

`A098178(A052499(n+1))`
-/

namespace A383670.P6678892930760401019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 (A052499 (n + 1)).toNat

end

end A383670.P6678892930760401019

namespace A383670

/-- `A098178(A052499(n+1))` -/
def P6678892930760401019.Spec : Prop :=
  ∀ n, P6678892930760401019.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P2648711940005431131

`A140081(A345292(n))`
-/

namespace A383670.P2648711940005431131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 (A345292 n).toNat

end

end A383670.P2648711940005431131

namespace A383670

/-- `A140081(A345292(n))` -/
def P2648711940005431131.Spec : Prop :=
  ∀ n, P2648711940005431131.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P14147526076208576752

`A036586(A165404(n+1))`
-/

namespace A383670.P14147526076208576752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036586 (A165404 (n + 1)).toNat

end

end A383670.P14147526076208576752

namespace A383670

/-- `A036586(A165404(n+1))` -/
def P14147526076208576752.Spec : Prop :=
  ∀ n, P14147526076208576752.a n = A383670 (n + 1)

end A383670

/-! ## A383670.P10537023349393986677

`A098178(A215025(n+1))`
-/

namespace A383670.P10537023349393986677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 (A215025 (n + 1)).toNat

end

end A383670.P10537023349393986677

namespace A383670

/-- `A098178(A215025(n+1))` -/
def P10537023349393986677.Spec : Prop :=
  ∀ n, P10537023349393986677.a n = A383670 (n + 1)

end A383670

/-!
# A383671: The limiting word that starts with 0, as a sequence, generated by s(0) = 0, s(1) = 12, s(n) = concatenation of s(n - 2) and s(n - 1).

The programs for A383671, there is no canonical definition to state claims against.
-/

/-! ## A383671.P17391805952218624137

`A383670(A306583(n+2))`
-/

namespace A383671.P17391805952218624137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383670 (A306583 (n + 2)).toNat

end

end A383671.P17391805952218624137

/-! ## A383671.P2101877015483791306

`A079343(A391394(n+1))`
-/

namespace A383671.P2101877015483791306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079343 (A391394 (n + 1)).toNat

end

end A383671.P2101877015483791306

/-! ## A383671.P14750141498946383691

`A098178(A391394(n+2))`
-/

namespace A383671.P14750141498946383691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 (A391394 (n + 2)).toNat

end

end A383671.P14750141498946383691

/-! ## A383671.P956298130777531813

`A383670(A224987(n+1))`
-/

namespace A383671.P956298130777531813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383670 (A224987 (n + 1)).toNat

end

end A383671.P956298130777531813

/-!
# A383672: Squarefree numbers k such that k^2+1 is not squarefree.

The programs for A383672, there is no canonical definition to state claims against.
-/

/-! ## A383672.P12739952059748013820

`filter[A049532(n+1), A008966(#)]`
-/

namespace A383672.P12739952059748013820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A383672.P12739952059748013820

/-! ## A383672.P13453248556273559768

`∩[A005117(n+1), A049532(n+1)]`
-/

namespace A383672.P13453248556273559768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383672.P13453248556273559768

/-! ## A383672.P14959869912349504181

`filter[A049532(n+1), A323154(#)]`
-/

namespace A383672.P14959869912349504181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A383672.P14959869912349504181

/-! ## A383672.P10942529938415987530

`∩[A049532(n+1), A064594(n+1)]`
-/

namespace A383672.P10942529938415987530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383672.P10942529938415987530

/-! ## A383672.P6261925402635162557

`∩[A049532(n+1), A144338(n+1)]`
-/

namespace A383672.P6261925402635162557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383672.P6261925402635162557

/-! ## A383672.P3065084550568890111

`∩[A049532(n+1), A366882(n+1)]`
-/

namespace A383672.P3065084550568890111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383672.P3065084550568890111

/-! ## A383672.P5691727599996927398

`∩[A049532(n+1), A167207(n+1)]`
-/

namespace A383672.P5691727599996927398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383672.P5691727599996927398

/-!
# A383673: a(n) is the number of n X n Latin squares obeying a certain self-referential property defined in the comments.

The programs for A383673, there is no canonical definition to state claims against.
-/

/-! ## A383673.P4493174671538742907

`A059473(n)%A360562(n+1)`
-/

namespace A383673.P4493174671538742907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059473 n) (A360562 (n + 1))

end

end A383673.P4493174671538742907

/-! ## A383673.P13944086141002402189

`A214212(n)%A360562(n+1)`
-/

namespace A383673.P13944086141002402189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214212 n) (A360562 (n + 1))

end

end A383673.P13944086141002402189

/-! ## A383673.P10588726135653057694

`A259192(n)%A360562(n+1)`
-/

namespace A383673.P10588726135653057694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259192 n) (A360562 (n + 1))

end

end A383673.P10588726135653057694

/-! ## A383673.P5859542628854078769

`A360922(n+1)%A360562(n+1)`
-/

namespace A383673.P5859542628854078769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360922 (n + 1)) (A360562 (n + 1))

end

end A383673.P5859542628854078769

/-! ## A383673.P4493770492396367808

`and(A071512(n+1), A107749(n+1))`
-/

namespace A383673.P4493770492396367808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071512 (n + 1)) (A107749 (n + 1))

end

end A383673.P4493770492396367808

/-!
# A383678: a(n) = [x^n] Product_{k=0..n} (1 + (2*n+k)*x).

The programs for A383678, there is no canonical definition to state claims against.
-/

/-! ## A383678.P11672066992803967348

`A382347(∑[n+3])`
-/

namespace A383678.P11672066992803967348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383678.P11672066992803967348

/-! ## A383678.P17726554408776693638

`A093905(A276819(n))`
-/

namespace A383678.P17726554408776693638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (A276819 n).toNat

end

end A383678.P17726554408776693638

/-! ## A383678.P9163016351271358630

`A093905(A022266(n)+1)`
-/

namespace A383678.P9163016351271358630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (A022266 n + 1).toNat

end

end A383678.P9163016351271358630

/-! ## A383678.P4929213800057258248

`A093905(A054556(n+1)+A000217(n))`
-/

namespace A383678.P4929213800057258248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (A054556 (n + 1) + A000217 n).toNat

end

end A383678.P4929213800057258248

/-! ## A383678.P3697399530655668771

`A105954(A062725(n))`
-/

namespace A383678.P3697399530655668771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105954 (A062725 n).toNat

end

end A383678.P3697399530655668771

/-!
# A383679: The lesser of two consecutive primes whose gap equals the difference between their digital sums.

The programs for A383679, there is no canonical definition to state claims against.
-/

/-! ## A383679.P16898407588849986339

`A064989(A383680(n+1))`
-/

namespace A383679.P16898407588849986339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A383680 (n + 1)).toNat

end

end A383679.P16898407588849986339

/-! ## A383679.P4544468387371335298

`∩[A049386(n), A175584(n+1)]`
-/

namespace A383679.P4544468387371335298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383679.P4544468387371335298

/-! ## A383679.P6082840612276219781

`∩[A113619(n+1), A175584(n+1)]`
-/

namespace A383679.P6082840612276219781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383679.P6082840612276219781

/-! ## A383679.P18192499641098742522

`eq[A010106(n), A341932(n)]`
-/

namespace A383679.P18192499641098742522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383679.P18192499641098742522

/-! ## A383679.P2115661090970919598

`eq[A030121(n), A341932(n)]`
-/

namespace A383679.P2115661090970919598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383679.P2115661090970919598

/-!
# A383680: The greater of two consecutive primes whose gap equals the difference between their digital sums.

The programs for A383680, there is no canonical definition to state claims against.
-/

/-! ## A383680.P11412283522962967317

`A003961(A383679(n+1))`
-/

namespace A383680.P11412283522962967317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A383679 (n + 1)).toNat

end

end A383680.P11412283522962967317

/-! ## A383680.P7210246838255718258

`∩[A077040(n+1), A377286(n+1)]`
-/

namespace A383680.P7210246838255718258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383680.P7210246838255718258

/-! ## A383680.P4921527426611036367

`A367584(or(1, A291284(n+1)))`
-/

namespace A383680.P4921527426611036367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367584 (Int.lor 1 (A291284 (n + 1))).toNat

end

end A383680.P4921527426611036367

/-! ## A383680.P7334803439281037553

`A291284(n+1)+A193356(A230551(n+1))`
-/

namespace A383680.P7334803439281037553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291284 (n + 1) + A193356 (A230551 (n + 1)).toNat

end

end A383680.P7334803439281037553

/-! ## A383680.P4111238812662968967

`A291284(n+1)-A121373(A061418(2*n+1))`
-/

namespace A383680.P4111238812662968967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291284 (n + 1) - A121373 (A061418 (2 * n + 1)).toNat

end

end A383680.P4111238812662968967

/-!
# A383681: Disjunctive union of A383679 and A383680.

The programs for A383681, there is no canonical definition to state claims against.
-/

/-! ## A383681.P3499726870119423256

`A000040(lt[A357313(2*n+3), A328677(3*n+2)])`
-/

namespace A383681.P3499726870119423256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357313 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328677 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383681.P3499726870119423256

/-! ## A383681.P6626786028121391013

`record[A020639(A300305(n+5))]`
-/

namespace A383681.P6626786028121391013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A300305 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383681.P6626786028121391013

/-! ## A383681.P134385045101455417

`∩[A097143(n+1), A029903(n)]`
-/

namespace A383681.P134385045101455417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383681.P134385045101455417

/-! ## A383681.P13371421157258192215

`∩[A138889(n+1), A029903(n)]`
-/

namespace A383681.P13371421157258192215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383681.P13371421157258192215

/-! ## A383681.P7587656980999663908

`∩[A145673(n+1), A029903(n)]`
-/

namespace A383681.P7587656980999663908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383681.P7587656980999663908

/-!
# A383682: The largest nonnegative integer value of j for which each integer n, n+2, ..., j-4, j-2, j can be written as the sum of the squares of the elements of a partition of n.

The programs for A383682, there is no canonical definition to state claims against.
-/

/-! ## A383682.P14733855605620290224

`2*A381811(n+1)+n+1`
-/

namespace A383682.P14733855605620290224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A381811 (n + 1) + (n + 1 : ℤ)

end

end A383682.P14733855605620290224

/-! ## A383682.P17238455710675361183

`A005408(A381811(n+1))+n`
-/

namespace A383682.P17238455710675361183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A381811 (n + 1)).toNat + (n : ℤ)

end

end A383682.P17238455710675361183

/-!
# A383684: Minimum number of transversals in an extended self-orthogonal diagonal Latin square of order n.

The programs for A383684, there is no canonical definition to state claims against.
-/

/-! ## A383684.P7068180926283138442

`A357514(n+1)*A375353(A375353(n+1))`
-/

namespace A383684.P7068180926283138442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357514 (n + 1) * A375353 (A375353 (n + 1)).toNat

end

end A383684.P7068180926283138442

/-!
# A383685: The lesser of two consecutive primes whose gap equals the difference between their digital roots.

The programs for A383685, the canonical program `A383685.P17659077601752719078` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383685 has offset 1).

The definition of A383685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383685.P17659077601752719078

`A000040(lt[A054541(n+1), A038194(n+1)])`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A383685

/-- `A000040(lt[A054541(n+1), A038194(n+1)])` -/
def P17659077601752719078.Spec : Prop :=
  ∀ n, P17659077601752719078.a n = A383685 (n + 1)

theorem P17659077601752719078.correct : P17659077601752719078.Spec := by
  intro n
  simp only [A383685, Nat.add_sub_cancel]

end A383685

/-! ## A383685.P10233317000277121508

`A064989(A383686(n+1))`
-/

namespace A383685.P10233317000277121508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A383686 (n + 1)).toNat

end

end A383685.P10233317000277121508

namespace A383685

/-- `A064989(A383686(n+1))` -/
def P10233317000277121508.Spec : Prop :=
  ∀ n, P10233317000277121508.a n = A383685 (n + 1)

end A383685

/-! ## A383685.P1895783345701212582

`A000040(A283295(n+1)%A119298(n+1))`
-/

namespace A383685.P1895783345701212582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A283295 (n + 1)) (A119298 (n + 1))).toNat

end

end A383685.P1895783345701212582

namespace A383685

/-- `A000040(A283295(n+1)%A119298(n+1))` -/
def P1895783345701212582.Spec : Prop :=
  ∀ n, P1895783345701212582.a n = A383685 (n + 1)

end A383685

/-! ## A383685.P7296119545986429419

`A300271(A262839(n+2))`
-/

namespace A383685.P7296119545986429419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300271 (A262839 (n + 2)).toNat

end

end A383685.P7296119545986429419

namespace A383685

/-- `A300271(A262839(n+2))` -/
def P7296119545986429419.Spec : Prop :=
  ∀ n, P7296119545986429419.a n = A383685 (n + 1)

end A383685

/-! ## A383685.P2191652979364822507

`p?[n^∏{e}[∑[n+1], #]]`
-/

namespace A383685.P2191652979364822507
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A383685.P2191652979364822507

namespace A383685

/-- `p?[n^∏{e}[∑[n+1], #]]` -/
def P2191652979364822507.Spec : Prop :=
  ∀ n, (P2191652979364822507.a n : ℤ) = A383685 (n + 1)

end A383685

/-!
# A383686: The greater of two consecutive primes whose gap equals the difference between their digital roots.

The programs for A383686, the canonical program `A383686.P10838272820652633482` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383686 has offset 1).

The definition of A383686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383686.P10838272820652633482

`A003961(A383685(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A383686

/-- `A003961(A383685(n+1))` -/
def P10838272820652633482.Spec : Prop :=
  ∀ n, P10838272820652633482.a n = A383686 (n + 1)

theorem P10838272820652633482.correct : P10838272820652633482.Spec := by
  intro n
  simp only [A383686, Nat.add_sub_cancel]

end A383686

/-! ## A383686.P13769179184060312900

`A007918(A383685(n+1)+1)`
-/

namespace A383686.P13769179184060312900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A383685 (n + 1) + 1).toNat

end

end A383686.P13769179184060312900

namespace A383686

/-- `A007918(A383685(n+1)+1)` -/
def P13769179184060312900.Spec : Prop :=
  ∀ n, P13769179184060312900.a n = A383686 (n + 1)

end A383686

/-! ## A383686.P16691018416211680877

`A159477(A383685(n+1)+1)`
-/

namespace A383686.P16691018416211680877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A383685 (n + 1) + 1).toNat

end

end A383686.P16691018416211680877

namespace A383686

/-- `A159477(A383685(n+1)+1)` -/
def P16691018416211680877.Spec : Prop :=
  ∀ n, P16691018416211680877.a n = A383686 (n + 1)

end A383686

/-! ## A383686.P1650688873282981528

`A346153(A067389(n+1))`
-/

namespace A383686.P1650688873282981528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346153 (A067389 (n + 1)).toNat

end

end A383686.P1650688873282981528

namespace A383686

/-- `A346153(A067389(n+1))` -/
def P1650688873282981528.Spec : Prop :=
  ∀ n, P1650688873282981528.a n = A383686 (n + 1)

end A383686

/-! ## A383686.P5279309265213254347

`A346153(A130884(n+1))`
-/

namespace A383686.P5279309265213254347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346153 (A130884 (n + 1)).toNat

end

end A383686.P5279309265213254347

namespace A383686

/-- `A346153(A130884(n+1))` -/
def P5279309265213254347.Spec : Prop :=
  ∀ n, P5279309265213254347.a n = A383686 (n + 1)

end A383686

/-!
# A383687: Disjunctive union of A383685 and A383686.

The programs for A383687, there is no canonical definition to state claims against.
-/

/-! ## A383687.P3943410881487517752

`A045344(lt[A378358(2*(n+2)), A119679(2*n+1)])`
-/

namespace A383687.P3943410881487517752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378358 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119679 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383687.P3943410881487517752

/-! ## A383687.P12810190958408120003

`A042988(n+2)%A155548(3*n+2)`
-/

namespace A383687.P12810190958408120003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042988 (n + 2)) (A155548 (3 * n + 2))

end

end A383687.P12810190958408120003

/-! ## A383687.P6615686542799784445

`A000040(lt[A152245(2*n+3), A103167(n+3)])`
-/

namespace A383687.P6615686542799784445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152245 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103167 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383687.P6615686542799784445

/-! ## A383687.P17332684700248530450

`record[A020639(n+4)%A330923(n+1)]`
-/

namespace A383687.P17332684700248530450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 4)) (A330923 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383687.P17332684700248530450

/-! ## A383687.P10840923315214409756

`A042988(n+2)%A142730(A214727(n))`
-/

namespace A383687.P10840923315214409756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042988 (n + 2)) (A142730 (A214727 n).toNat)

end

end A383687.P10840923315214409756

/-!
# A383688: Partial sums of A383442.

The programs for A383688, there is no canonical definition to state claims against.
-/

/-! ## A383688.P6390703963531576768

`∑[A383442(n)]`
-/

namespace A383688.P6390703963531576768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383688.P6390703963531576768

/-! ## A383688.P15345447477904260758

`∑[∑[A383443(n)]-A383443(n)]`
-/

namespace A383688.P15345447477904260758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A383443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383688.P15345447477904260758

/-!
# A383692: a(n) = round(Chi(n)) where Chi(x) is the cosh integral function.

The programs for A383692, there is no canonical definition to state claims against.
-/

/-! ## A383692.P313244906300927479

`A065033(A229171(n+1)-1)`
-/

namespace A383692.P313244906300927479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A229171 (n + 1) - 1).toNat

end

end A383692.P313244906300927479

/-! ## A383692.P3494789188453990629

`A004526(A229171(n+1)+A121373(3*n))`
-/

namespace A383692.P3494789188453990629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A229171 (n + 1) + A121373 (3 * n)).toNat

end

end A383692.P3494789188453990629

/-! ## A383692.P3387091768178660006

`A194163(A002460(n+1))`
-/

namespace A383692.P3387091768178660006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194163 (A002460 (n + 1)).toNat

end

end A383692.P3387091768178660006

/-!
# A383693: Exponential unitary abundant numbers: numbers k such that A322857(k) > 2*k.

The programs for A383693, there is no canonical definition to state claims against.
-/

/-! ## A383693.P2920288417723825012

`∩[A129575(n+1), A391088(n+1)]`
-/

namespace A383693.P2920288417723825012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383693.P2920288417723825012

/-! ## A383693.P18035700331203816423

`A383697(n+1)+A000007(A000032(n))`
-/

namespace A383693.P18035700331203816423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1) + A000007 (A000032 n).toNat

end

end A383693.P18035700331203816423

/-! ## A383693.P4457468971840305985

`A383697(n+1)+A070109(A383708(n))`
-/

namespace A383693.P4457468971840305985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1) + A070109 (A383708 n).toNat

end

end A383693.P4457468971840305985

/-! ## A383693.P14103646709791313799

`A383697(n+1)+A185274(A308772(n))`
-/

namespace A383693.P14103646709791313799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1) + A185274 (A308772 n).toNat

end

end A383693.P14103646709791313799

/-!
# A383694: Primitive exponential unitary abundant numbers: the powerful terms of A383693.

The programs for A383694, there is no canonical definition to state claims against.
-/

/-! ## A383694.P7854692467810685910

`∩[A001694(n+1), A383693(n+1)]`
-/

namespace A383694.P7854692467810685910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P7854692467810685910

/-! ## A383694.P9421287248881317875

`∩[A192636(n+1), A383693(n+1)]`
-/

namespace A383694.P9421287248881317875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P9421287248881317875

/-! ## A383694.P4632385542344763302

`∩[A286708(n+1), A383693(n+1)]`
-/

namespace A383694.P4632385542344763302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P4632385542344763302

/-! ## A383694.P2144048904408567185

`∩[A325240(n+1), A383693(n+1)]`
-/

namespace A383694.P2144048904408567185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P2144048904408567185

/-! ## A383694.P4953897022816482313

`∩[A328136(n+1), A383693(n+1)]`
-/

namespace A383694.P4953897022816482313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P4953897022816482313

/-! ## A383694.P16679514377180679204

`∩[A335851(n+1), A383693(n+1)]`
-/

namespace A383694.P16679514377180679204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P16679514377180679204

/-! ## A383694.P14040678363282846703

`∩[A356871(n+1), A383693(n+1)]`
-/

namespace A383694.P14040678363282846703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P14040678363282846703

/-! ## A383694.P11555768473769107765

`∩[A363169(n+1), A383693(n+1)]`
-/

namespace A383694.P11555768473769107765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P11555768473769107765

/-! ## A383694.P3043174768926284205

`∩[A363216(n+1), A383693(n+1)]`
-/

namespace A383694.P3043174768926284205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P3043174768926284205

/-! ## A383694.P17573699304051758714

`∩[A376172(n+1), A383693(n+1)]`
-/

namespace A383694.P17573699304051758714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P17573699304051758714

/-! ## A383694.P793975539251738985

`∩[A376217(n+1), A383693(n+1)]`
-/

namespace A383694.P793975539251738985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P793975539251738985

/-! ## A383694.P16159965074586101017

`∩[A383693(n+1), A387256(n+1)]`
-/

namespace A383694.P16159965074586101017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P16159965074586101017

/-! ## A383694.P3381516054469491235

`∩[A383693(n+1), A390010(n+1)]`
-/

namespace A383694.P3381516054469491235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P3381516054469491235

/-! ## A383694.P3637433733276272565

`∩[A383693(n+1), A390950(n+1)]`
-/

namespace A383694.P3637433733276272565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P3637433733276272565

/-! ## A383694.P271349270527843857

`∩[A383693(n+1), A391139(n+1)]`
-/

namespace A383694.P271349270527843857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383694.P271349270527843857

/-!
# A383695: Exponential infinitary abundant numbers that are not exponential unitary abundant: numbers k such that A361175(k) > 2*k >= A322857(k).

The programs for A383695, there is no canonical definition to state claims against.
-/

/-! ## A383695.P16547800328473211705

`A383696(n+1)+A281116(A133494(n))`
-/

namespace A383695.P16547800328473211705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383696 (n + 1) + A281116 (A133494 n).toNat

end

end A383695.P16547800328473211705

/-! ## A383695.P16379664143178641952

`A127153(A000217(n))*A383696(n+1)`
-/

namespace A383695.P16379664143178641952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127153 (A000217 n).toNat * A383696 (n + 1)

end

end A383695.P16379664143178641952

/-! ## A383695.P8157817316736890386

`A383696(n+1)+A380469(A109298(n+1))`
-/

namespace A383695.P8157817316736890386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383696 (n + 1) + A380469 (A109298 (n + 1)).toNat

end

end A383695.P8157817316736890386

/-! ## A383695.P639080858527761530

`A383696(n+1)+A010815(A000079(n+2))`
-/

namespace A383695.P639080858527761530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383696 (n + 1) + A010815 (A000079 (n + 2)).toNat

end

end A383695.P639080858527761530

/-! ## A383695.P17963837754651630699

`A378282(A019538(n+1))*A383696(n+1)`
-/

namespace A383695.P17963837754651630699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378282 (A019538 (n + 1)).toNat * A383696 (n + 1)

end

end A383695.P17963837754651630699

/-!
# A383698: Primitive exponential squarefree exponential abundant numbers: the powerful terms of A383697.

The programs for A383698, there is no canonical definition to state claims against.
-/

/-! ## A383698.P5987142070151195190

`∩[A328136(n+1), A384418(n+1)]`
-/

namespace A383698.P5987142070151195190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P5987142070151195190

/-! ## A383698.P18159017512934778651

`∩[A001694(n+1), A383697(n+1)]`
-/

namespace A383698.P18159017512934778651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P18159017512934778651

/-! ## A383698.P8529840068584662814

`∩[A192636(n+1), A383697(n+1)]`
-/

namespace A383698.P8529840068584662814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P8529840068584662814

/-! ## A383698.P9504636773422315051

`∩[A286708(n+1), A383697(n+1)]`
-/

namespace A383698.P9504636773422315051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P9504636773422315051

/-! ## A383698.P9418146750017886354

`∩[A325240(n+1), A383697(n+1)]`
-/

namespace A383698.P9418146750017886354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P9418146750017886354

/-! ## A383698.P13595242790519763775

`∩[A328136(n+1), A383697(n+1)]`
-/

namespace A383698.P13595242790519763775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P13595242790519763775

/-! ## A383698.P4098300491312696682

`∩[A335851(n+1), A383697(n+1)]`
-/

namespace A383698.P4098300491312696682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P4098300491312696682

/-! ## A383698.P7345593677485811874

`∩[A356871(n+1), A383697(n+1)]`
-/

namespace A383698.P7345593677485811874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P7345593677485811874

/-! ## A383698.P7116722302668981634

`∩[A363169(n+1), A383697(n+1)]`
-/

namespace A383698.P7116722302668981634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P7116722302668981634

/-! ## A383698.P10098644962540825020

`∩[A363216(n+1), A383697(n+1)]`
-/

namespace A383698.P10098644962540825020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P10098644962540825020

/-! ## A383698.P12059968064302685079

`∩[A383694(n+1), A383697(n+1)]`
-/

namespace A383698.P12059968064302685079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P12059968064302685079

/-! ## A383698.P10187104115862668151

`∩[A383697(n+1), A387256(n+1)]`
-/

namespace A383698.P10187104115862668151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P10187104115862668151

/-! ## A383698.P11008229412884568884

`∩[A383697(n+1), A390010(n+1)]`
-/

namespace A383698.P11008229412884568884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P11008229412884568884

/-! ## A383698.P6645824092220535886

`∩[A383697(n+1), A390950(n+1)]`
-/

namespace A383698.P6645824092220535886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P6645824092220535886

/-! ## A383698.P10560261521284312992

`∩[A383697(n+1), A391139(n+1)]`
-/

namespace A383698.P10560261521284312992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P10560261521284312992

/-! ## A383698.P14923333467300960856

`∩[A129575(n+1), A384418(n+1)]`
-/

namespace A383698.P14923333467300960856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383698.P14923333467300960856

