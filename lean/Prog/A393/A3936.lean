import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A393601: Expansion of (1/x) * Series_Reversion( x / ((1+x)^3 * (1+x^2)^3) ).

The programs for A393601, there is no canonical definition to state claims against.
-/

/-! ## A393601.P11949947887829637208

`A195072(A052618(n+1)-1)`
-/

namespace A393601.P11949947887829637208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (A052618 (n + 1) - 1).toNat

end

end A393601.P11949947887829637208

/-!
# A393606: Rectangular array read by descending antidiagonals: row n shows the indices m such that prime(m) (mod n) = n-1.

The programs for A393606, there is no canonical definition to state claims against.
-/

/-! ## A393606.P2572762223101685391

`A000720(A393607(n+1))`
-/

namespace A393606.P2572762223101685391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A393607 (n + 1)).toNat

end

end A393606.P2572762223101685391

/-! ## A393606.P18353436086920485609

`A061395(A393607(C(n+1, n)))`
-/

namespace A393606.P18353436086920485609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A393607 (Nat.choose (n + 1) n)).toNat

end

end A393606.P18353436086920485609

/-! ## A393606.P6363984565215685603

`A061395(2*A393607(n+1))`
-/

namespace A393606.P6363984565215685603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A393607 (n + 1)).toNat

end

end A393606.P6363984565215685603

/-! ## A393606.P10041001315335567899

`A219109(A393607(n+1)+1)`
-/

namespace A393606.P10041001315335567899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219109 (A393607 (n + 1) + 1).toNat

end

end A393606.P10041001315335567899

/-! ## A393606.P15828357090957246925

`A003963(2*A393607(n+1))`
-/

namespace A393606.P15828357090957246925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A393607 (n + 1)).toNat

end

end A393606.P15828357090957246925

/-!
# A393607: Rectangular array R read by descending antidiagonals: row n shows primes p such that (p mod n) = n-1.

The programs for A393607, there is no canonical definition to state claims against.
-/

/-! ## A393607.P5482622161919485052

`A000040(A393606(n+1))`
-/

namespace A393607.P5482622161919485052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A393606 (n + 1)).toNat

end

end A393607.P5482622161919485052

/-!
# A393608: Rectangular array R read by descending antidiagonals: R(n,k) = prime(k) mod n, for n>=2.

The programs for A393608, the canonical program `A393608.P4231341936800649805` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393608 has offset 2).

The definition of A393608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393608.P4231341936800649805

`A104887(n+1)%(A002260(n+1)+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A393608

/-- `A104887(n+1)%(A002260(n+1)+1)` -/
def P4231341936800649805.Spec : Prop :=
  ∀ n, P4231341936800649805.a n = A393608 (n + 2)

theorem P4231341936800649805.correct : P4231341936800649805.Spec := by
  intro n
  simp only [A393608, Nat.add_sub_cancel]

end A393608

/-! ## A393608.P14815972390483427998

`A104887(n+1)%A161535(n+1)`
-/

namespace A393608.P14815972390483427998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104887 (n + 1)) (A161535 (n + 1))

end

end A393608.P14815972390483427998

namespace A393608

/-- `A104887(n+1)%A161535(n+1)` -/
def P14815972390483427998.Spec : Prop :=
  ∀ n, P14815972390483427998.a n = A393608 (n + 2)

end A393608

/-!
# A393609: Square array A read by descending antidiagonals: A(n,k) = prime(A035513(n, k)).

The programs for A393609, there is no canonical definition to state claims against.
-/

/-! ## A393609.P11922313531072709366

`A000040(A035513(n+1))`
-/

namespace A393609.P11922313531072709366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A035513 (n + 1)).toNat

end

end A393609.P11922313531072709366

/-! ## A393609.P15265227810318864226

`A008578(A035513(n+1)+1)`
-/

namespace A393609.P15265227810318864226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A035513 (n + 1) + 1).toNat

end

end A393609.P15265227810318864226

/-! ## A393609.P13389839710857913606

`A182986(A035513(n+1)+1)`
-/

namespace A393609.P13389839710857913606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A035513 (n + 1) + 1).toNat

end

end A393609.P13389839710857913606

/-! ## A393609.P7065867148147270037

`A158611(A035513(n+1)+2)`
-/

namespace A393609.P7065867148147270037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A035513 (n + 1) + 2).toNat

end

end A393609.P7065867148147270037

/-! ## A393609.P1491785406779487981

`A134824(2*(n+2))+A008864(A035513(n+1))`
-/

namespace A393609.P1491785406779487981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * (n + 2)) + A008864 (A035513 (n + 1)).toNat

end

end A393609.P1491785406779487981

/-! ## A393609.P14210141710472898530

`A006093(A035513(n+1))+A001511(2*n+3)`
-/

namespace A393609.P14210141710472898530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A035513 (n + 1)).toNat + A001511 (2 * n + 3)

end

end A393609.P14210141710472898530

/-! ## A393609.P8243597275328675286

`A000040(A287870(n+1)+A287869(n+1))`
-/

namespace A393609.P8243597275328675286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A287870 (n + 1) + A287869 (n + 1)).toNat

end

end A393609.P8243597275328675286

/-!
# A393611: a(n) = least positive integer k such that A002476(n) + 3^k + 1 is prime, or -1 if no such prime exists.

The programs for A393611, there is no canonical definition to state claims against.
-/

/-! ## A393611.P7999841072751617889

`A087372(A177965(n+2))`
-/

namespace A393611.P7999841072751617889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087372 (A177965 (n + 2)).toNat

end

end A393611.P7999841072751617889

/-! ## A393611.P1104839044448974320

`gcd(A007862(A022302(n)), A279563(n))`
-/

namespace A393611.P1104839044448974320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007862 (A022302 n).toNat) (A279563 n)

end

end A393611.P1104839044448974320

/-! ## A393611.P16600018752985122509

`A384877(A016789(3*n+1)%A054353(3*n+2))`
-/

namespace A393611.P16600018752985122509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384877 (Int.tmod (A016789 (3 * n + 1)) (A054353 (3 * n + 2))).toNat

end

end A393611.P16600018752985122509

/-! ## A393611.P10204112074081617891

`A228287(A314704(n+1))`
-/

namespace A393611.P10204112074081617891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228287 (A314704 (n + 1)).toNat

end

end A393611.P10204112074081617891

/-! ## A393611.P8352718637883151180

`gcd(A000009(n), A299263(A302224(2*(n+1))))`
-/

namespace A393611.P8352718637883151180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000009 n) (A299263 (A302224 (2 * (n + 1))).toNat)

end

end A393611.P8352718637883151180

/-!
# A393614: Numbers of the form a*b*c*r/60 where (a,b,c) is a primitive Pythagorean triple with inradius r.

The programs for A393614, there is no canonical definition to state claims against.
-/

/-! ## A393614.P9359502321090353425

`A393526(n+1)/60`
-/

namespace A393614.P9359502321090353425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393526 (n + 1) : ℚ) / 60

end

end A393614.P9359502321090353425

/-!
# A393615: a(n) is the largest integer m such that every integer from 1 to m can be represented as a sum of at most n squares from the set {1^2, 2^2, 3^2, ..., n^2}.

The programs for A393615, there is no canonical definition to state claims against.
-/

/-! ## A393615.P8071037434135172100

`∩[A001521(n+1), A302796(n+1)]`
-/

namespace A393615.P8071037434135172100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393615.P8071037434135172100

/-! ## A393615.P10489302099935621447

`A007947(A134136(3*n+2))/A007318(n)`
-/

namespace A393615.P10489302099935621447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (A134136 (3 * n + 2)).toNat : ℚ) / (A007318 n : ℚ)

end

end A393615.P10489302099935621447

/-!
# A393616: Positive integers expressible as a difference of two nonzero rational fourth powers.

The programs for A393616, there is no canonical definition to state claims against.
-/

/-! ## A393616.P4991584051515231381

`filter[A393617(n+1), A049240(#)]`
-/

namespace A393616.P4991584051515231381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A393616.P4991584051515231381

/-! ## A393616.P5613452884750544836

`filter[A393617(n+1), A267594(#)]`
-/

namespace A393616.P5613452884750544836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A393616.P5613452884750544836

/-! ## A393616.P7885362672822206789

`filter[A393617(n+1), A267612(#)]`
-/

namespace A393616.P7885362672822206789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267612 (f1 j).toNat = 1) n)

end

end A393616.P7885362672822206789

/-! ## A393616.P7002155029403954440

`filter[A393617(n+1), A267635(#)]`
-/

namespace A393616.P7002155029403954440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A393616.P7002155029403954440

/-! ## A393616.P17561563772863462333

`∩[A000037(n+1), A393617(n+1)]`
-/

namespace A393616.P17561563772863462333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393616.P17561563772863462333

/-! ## A393616.P232199511915629354

`∩[A003273(n+1), A393617(n+1)]`
-/

namespace A393616.P232199511915629354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393616.P232199511915629354

/-! ## A393616.P7447549626012339125

`∩[A028983(n+1), A393617(n+1)]`
-/

namespace A393616.P7447549626012339125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393616.P7447549626012339125

/-! ## A393616.P2121439091042947015

`∩[A092206(n+1), A393617(n+1)]`
-/

namespace A393616.P2121439091042947015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393616.P2121439091042947015

/-! ## A393616.P125594023613023593

`∩[A094784(n+1), A393617(n+1)]`
-/

namespace A393616.P125594023613023593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393616.P125594023613023593

/-!
# A393618: O.g.f. A(x) satisfies: [x^n] exp( n*(n-1)*x ) / A(x)^(n-1) = 0 for n > 0.

The programs for A393618, there is no canonical definition to state claims against.
-/

/-! ## A393618.P2520473974243996363

`A342202(A041823(n))`
-/

namespace A393618.P2520473974243996363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342202 (A041823 n).toNat

end

end A393618.P2520473974243996363

/-! ## A393618.P10504739865979830341

`A008679(A367154(n)-A000698(n))`
-/

namespace A393618.P10504739865979830341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A367154 n - A000698 n).toNat

end

end A393618.P10504739865979830341

/-!
# A393620: Rectangular table, read by ascending antidiagonals, in which the n-th row o.g.f. R(n,x) satisfies: [x^m] exp( m*(m+1) * x*R(n,x)^n ) / R(n,x)^(m+1) = 0 for m >= 1, n >= 0.

The programs for A393620, there is no canonical definition to state claims against.
-/

/-! ## A393620.P14950768720357573873

`A349552(A387597(n))`
-/

namespace A393620.P14950768720357573873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349552 (A387597 n).toNat

end

end A393620.P14950768720357573873

/-! ## A393620.P10061054217226242444

`A250000(A128325(n))+A128325(n)`
-/

namespace A393620.P10061054217226242444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250000 (A128325 n).toNat + A128325 n

end

end A393620.P10061054217226242444

/-! ## A393620.P7711102051696069508

`A343347(A079901(n)^A190483(3*n+1))`
-/

namespace A393620.P7711102051696069508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 (SequenceMachineLib.roundAway ((A079901 n : ℚ) ^ (A190483 (3 * n + 1) : ℤ))).toNat

end

end A393620.P7711102051696069508

/-!
# A393621: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x*A(x) ) / A(x)^(n+1) = 0 for n > 0.

The programs for A393621, there is no canonical definition to state claims against.
-/

/-! ## A393621.P1833469079710473915

`A393620(∑[n+1]+n)`
-/

namespace A393621.P1833469079710473915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A393621.P1833469079710473915

/-!
# A393622: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x*A(x)^2 ) / A(x)^(n+1) = 0 for n > 0.

The programs for A393622, there is no canonical definition to state claims against.
-/

/-! ## A393622.P11109725357077108345

`A393620(∑[n+3])`
-/

namespace A393622.P11109725357077108345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393622.P11109725357077108345

/-!
# A393623: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x*A(x)^3 ) / A(x)^(n+1) = 0 for n > 0.

The programs for A393623, there is no canonical definition to state claims against.
-/

/-! ## A393623.P622784479677352390

`A393620(A046691(n+2))`
-/

namespace A393623.P622784479677352390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A046691 (n + 2)).toNat

end

end A393623.P622784479677352390

/-!
# A393626: Main diagonal of rectangular table A393620.

The programs for A393626, there is no canonical definition to state claims against.
-/

/-! ## A393626.P7977379110061492041

`A393620(∑[4*n])`
-/

namespace A393626.P7977379110061492041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393626.P7977379110061492041

/-!
# A393627: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x*A(x)^6 ) / A(x)^(n+1) = 0 for n > 0.

The programs for A393627, there is no canonical definition to state claims against.
-/

/-! ## A393627.P13264255835037451939

`A393620(A055999(n+4)-1)`
-/

namespace A393627.P13264255835037451939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (A055999 (n + 4) - 1).toNat

end

end A393627.P13264255835037451939

/-!
# A393629: G.f. satisfies A(x) = x + x*d/dx ( x*d/dx A(x)^2/2 ).

The programs for A393629, there is no canonical definition to state claims against.
-/

/-! ## A393629.P4609353433945304316

`(n+1)*A323694(n)`
-/

namespace A393629.P4609353433945304316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A323694 n

end

end A393629.P4609353433945304316

/-! ## A393629.P16607049780602493825

`A216733(n+1)/(n+1)`
-/

namespace A393629.P16607049780602493825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216733 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A393629.P16607049780602493825

/-!
# A393631: Triangle read by rows giving successive states of the Code 10 1-D cellular automaton when started from a single ON cell.

The programs for A393631, there is no canonical definition to state claims against.
-/

/-! ## A393631.P8924704084046145999

`A029691(A157910(n+1))`
-/

namespace A393631.P8924704084046145999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029691 (A157910 (n + 1)).toNat

end

end A393631.P8924704084046145999

/-! ## A393631.P9117891196381581757

`A030302(A220652(n+1)+A023416(n))`
-/

namespace A393631.P9117891196381581757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A220652 (n + 1) + A023416 n).toNat

end

end A393631.P9117891196381581757

/-! ## A393631.P8519390158211453684

`A088911(A294017(n+1)*A346705(n))`
-/

namespace A393631.P8519390158211453684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (A294017 (n + 1) * A346705 n).toNat

end

end A393631.P8519390158211453684

/-! ## A393631.P1987414471614052545

`A008966(A156711(n+5)-A224944(n+1))`
-/

namespace A393631.P1987414471614052545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A156711 (n + 5) - A224944 (n + 1)).toNat

end

end A393631.P1987414471614052545

/-! ## A393631.P5791725053569575770

`A286804(A026747(n)*A288164(2*n+5))`
-/

namespace A393631.P5791725053569575770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286804 (A026747 n * A288164 (2 * n + 5)).toNat

end

end A393631.P5791725053569575770

/-!
# A393636: Decimal expansion of 2*cos(Pi/8)/(1+cos(Pi/8)).

The programs for A393636, there is no canonical definition to state claims against.
-/

/-! ## A393636.P7101694376782129710

`9-A393638(n)`
-/

namespace A393636.P7101694376782129710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A393638 n

end

end A393636.P7101694376782129710

/-!
# A393638: Decimal expansion of 2/(1+cos(Pi/8))-1.

The programs for A393638, there is no canonical definition to state claims against.
-/

/-! ## A393638.P9078219565830254542

`9-A393636(n)`
-/

namespace A393638.P9078219565830254542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A393636 n

end

end A393638.P9078219565830254542

/-!
# A393641: Primes p that are the greatest prime factor of 2^k + 1 for some k.

The programs for A393641, there is no canonical definition to state claims against.
-/

/-! ## A393641.P9786962531363662457

`A002587(A396044(n+1))`
-/

namespace A393641.P9786962531363662457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (A396044 (n + 1)).toNat

end

end A393641.P9786962531363662457

/-! ## A393641.P16122980590919076041

`eq[A235943(n), A341932(n)]`
-/

namespace A393641.P16122980590919076041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235943 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393641.P16122980590919076041

/-! ## A393641.P12887278336888458609

`eq[A308583(n+1), A341932(n)]`
-/

namespace A393641.P12887278336888458609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393641.P12887278336888458609

/-! ## A393641.P17453010739880574497

`∩[A135260(n+1), A144755(n+1)]`
-/

namespace A393641.P17453010739880574497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393641.P17453010739880574497

/-! ## A393641.P13301903352168686314

`∩[A038947(n+1), A327105(n+1)]`
-/

namespace A393641.P13301903352168686314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393641.P13301903352168686314

/-!
# A393642: First differences of fifth powers of triangular numbers.

The programs for A393642, the canonical program `A393642.P5833135613385001955` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393642 has offset 0).

The definition of A393642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393642.P5833135613385001955

`(5*n^9+10*n^7+n^5)/16`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393642

/-- `(5*n^9+10*n^7+n^5)/16` -/
def P5833135613385001955.Spec : Prop :=
  ∀ n, P5833135613385001955.a n = (A393642 n : ℚ)

end A393642

/-! ## A393642.P4112295005522346804

`Δ[C(n, 2)^5]`
-/

namespace A393642.P4112295005522346804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A393642.P4112295005522346804

namespace A393642

/-- `Δ[C(n, 2)^5]` -/
def P4112295005522346804.Spec : Prop :=
  ∀ n, P4112295005522346804.a n = A393642 n

end A393642

/-! ## A393642.P3690035602048842512

`Δ[A161680(n)^5]`
-/

namespace A393642.P3690035602048842512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393642.P3690035602048842512

namespace A393642

/-- `Δ[A161680(n)^5]` -/
def P3690035602048842512.Spec : Prop :=
  ∀ n, P3690035602048842512.a n = A393642 n

end A393642

/-! ## A393642.P10364541205267872005

`Δ[(A000124(n)-(n+1))^5]`
-/

namespace A393642.P10364541205267872005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000124 n - (n + 1 : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393642.P10364541205267872005

namespace A393642

/-- `Δ[(A000124(n)-(n+1))^5]` -/
def P10364541205267872005.Spec : Prop :=
  ∀ n, P10364541205267872005.a n = A393642 n

end A393642

/-! ## A393642.P1603592257672864310

`Δ[A000584(∑[n]-n)]`
-/

namespace A393642.P1603592257672864310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393642.P1603592257672864310

namespace A393642

/-- `Δ[A000584(∑[n]-n)]` -/
def P1603592257672864310.Spec : Prop :=
  ∀ n, P1603592257672864310.a n = A393642 n

end A393642

/-!
# A393655: Total number of descents over all paths from a fixed vertex on level 2*(n+1) to level 1 in the 3-Bratteli diagram, a(n) = 3^(n-3)*(16*n-13), n>=3.

The programs for A393655, the canonical program `A393655.P8117864334474351213` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393655 has offset 3).

The definition of A393655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(16*(n+3)-13)` (program `A393655.P8117864334474351213`, by `A393655.P8117864334474351213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393655.P8117864334474351213

`3^n*(16*(n+3)-13)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393655

/-- `3^n*(16*(n+3)-13)` -/
def P8117864334474351213.Spec : Prop :=
  ∀ n, P8117864334474351213.a n = A393655 (n + 3)

theorem P8117864334474351213.correct : P8117864334474351213.Spec := by
  intro n
  simp only [A393655, Nat.add_sub_cancel]

end A393655

/-! ## A393655.P13127005554135425931

`A393662(n+3)+A008776(n)`
-/

namespace A393655.P13127005554135425931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) + A008776 n

end

end A393655.P13127005554135425931

namespace A393655

/-- `A393662(n+3)+A008776(n)` -/
def P13127005554135425931.Spec : Prop :=
  ∀ n, P13127005554135425931.a n = A393655 (n + 3)

theorem P13127005554135425931.correct : P13127005554135425931.Spec := by
  intro n
  simp only [A393655, Nat.add_sub_cancel, A393655.P13127005554135425931.a, A393655.P8117864334474351213.a, A008776, A008776.P11088121667404015999.a, A393662, A393662.P12609403442720714031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393655

/-! ## A393655.P16991804448155382578

`A393662(n+3)+Δ[A000244(n)]`
-/

namespace A393655.P16991804448155382578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) + (f1 (n + 1) - f1 n)

end

end A393655.P16991804448155382578

namespace A393655

/-- `A393662(n+3)+Δ[A000244(n)]` -/
def P16991804448155382578.Spec : Prop :=
  ∀ n, P16991804448155382578.a n = A393655 (n + 3)

theorem P16991804448155382578.correct : P16991804448155382578.Spec := by
  intro n
  simp only [A393655, Nat.add_sub_cancel, A393655.P16991804448155382578.f1, A393655.P16991804448155382578.a, A393655.P8117864334474351213.a, A000244, A000244.P17162167222172810417.a, A393662, A393662.P12609403442720714031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393655

/-! ## A393655.P1287295664349239929

`A393662(n+3)+A393662(n+3)-A393661(n+3)`
-/

namespace A393655.P1287295664349239929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) + (A393662 (n + 3) - A393661 (n + 3))

end

end A393655.P1287295664349239929

namespace A393655

/-- `A393662(n+3)+A393662(n+3)-A393661(n+3)` -/
def P1287295664349239929.Spec : Prop :=
  ∀ n, P1287295664349239929.a n = A393655 (n + 3)

theorem P1287295664349239929.correct : P1287295664349239929.Spec := by
  intro n
  simp only [A393655, Nat.add_sub_cancel, A393655.P1287295664349239929.a, A393655.P8117864334474351213.a, A393661, A393661.P18445463208938884355.a, A393662, A393662.P12609403442720714031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393655

/-!
# A393656: Expansion of (1/x) * Series_Reversion( x * ( Sum_{k=0..3} (-x)^k )^2 ).

The programs for A393656, there is no canonical definition to state claims against.
-/

/-! ## A393656.P4138974858876710797

`A375815((n+1)^n)`
-/

namespace A393656.P4138974858876710797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 ((n + 1) ^ n)

end

end A393656.P4138974858876710797

/-! ## A393656.P10170651912524819930

`A254948(A149970(n))`
-/

namespace A393656.P10170651912524819930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254948 (A149970 n).toNat

end

end A393656.P10170651912524819930

/-!
# A393659: Expansion of (1/x) * Series_Reversion( x * ( Sum_{k=0..5} (-x)^k )^2 ).

The programs for A393659, there is no canonical definition to state claims against.
-/

/-! ## A393659.P7019224481953080925

`A072620(A125501(n))`
-/

namespace A393659.P7019224481953080925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072620 (A125501 n).toNat

end

end A393659.P7019224481953080925

/-! ## A393659.P10925217306222134406

`A072620(A126567(n))`
-/

namespace A393659.P10925217306222134406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072620 (A126567 n).toNat

end

end A393659.P10925217306222134406

/-! ## A393659.P15564908984663297795

`A072620(A126569(n))`
-/

namespace A393659.P15564908984663297795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072620 (A126569 n).toNat

end

end A393659.P15564908984663297795

/-!
# A393660: Expansion of (1/x) * Series_Reversion( x * ( Sum_{k=0..5} (-x)^k )^3 ).

The programs for A393660, there is no canonical definition to state claims against.
-/

/-! ## A393660.P9051628583256724747

`A342845(A165896(n))+A001764(n+1)`
-/

namespace A393660.P9051628583256724747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 (A165896 n).toNat + A001764 (n + 1)

end

end A393660.P9051628583256724747

/-! ## A393660.P1277481592847386920

`A172444(A372174(n))+A001764(n+1)`
-/

namespace A393660.P1277481592847386920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172444 (A372174 n).toNat + A001764 (n + 1)

end

end A393660.P1277481592847386920

/-!
# A393661: A sequence appearing in the 3-Bratteli diagram, a(n)=3^(n-3)*(16*n-17), n>=3.

The programs for A393661, the canonical program `A393661.P18445463208938884355` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393661 has offset 3).

The definition of A393661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393661.P18445463208938884355

`3^n*(16*(n+3)-17)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393661

/-- `3^n*(16*(n+3)-17)` -/
def P18445463208938884355.Spec : Prop :=
  ∀ n, P18445463208938884355.a n = A393661 (n + 3)

theorem P18445463208938884355.correct : P18445463208938884355.Spec := by
  intro n
  simp only [A393661, Nat.add_sub_cancel]

end A393661

/-! ## A393661.P11443650574921910585

`A393662(n+3)-A008776(n)`
-/

namespace A393661.P11443650574921910585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) - A008776 n

end

end A393661.P11443650574921910585

namespace A393661

/-- `A393662(n+3)-A008776(n)` -/
def P11443650574921910585.Spec : Prop :=
  ∀ n, P11443650574921910585.a n = A393661 (n + 3)

theorem P11443650574921910585.correct : P11443650574921910585.Spec := by
  intro n
  simp only [A393661, Nat.add_sub_cancel, A393661.P11443650574921910585.a, A393661.P18445463208938884355.a, A008776, A008776.P11088121667404015999.a, A393662, A393662.P12609403442720714031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393661

/-! ## A393661.P900779895693563734

`A393662(n+3)-Δ[A000244(n)]`
-/

namespace A393661.P900779895693563734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) - (f1 (n + 1) - f1 n)

end

end A393661.P900779895693563734

namespace A393661

/-- `A393662(n+3)-Δ[A000244(n)]` -/
def P900779895693563734.Spec : Prop :=
  ∀ n, P900779895693563734.a n = A393661 (n + 3)

theorem P900779895693563734.correct : P900779895693563734.Spec := by
  intro n
  simp only [A393661, Nat.add_sub_cancel, A393661.P900779895693563734.f1, A393661.P900779895693563734.a, A393661.P18445463208938884355.a, A000244, A000244.P17162167222172810417.a, A393662, A393662.P12609403442720714031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393661

/-! ## A393661.P13446363771370789380

`A113071(n+2)-A000244(n+2)`
-/

namespace A393661.P13446363771370789380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113071 (n + 2) - A000244 (n + 2)

end

end A393661.P13446363771370789380

namespace A393661

/-- `A113071(n+2)-A000244(n+2)` -/
def P13446363771370789380.Spec : Prop :=
  ∀ n, P13446363771370789380.a n = A393661 (n + 3)

end A393661

/-! ## A393661.P7954309138384180723

`or(A000244(n)*A125169(n+1), and(1, n))`
-/

namespace A393661.P7954309138384180723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 n * A125169 (n + 1)) (Nat.land 1 n : ℤ)

end

end A393661.P7954309138384180723

namespace A393661

/-- `or(A000244(n)*A125169(n+1), and(1, n))` -/
def P7954309138384180723.Spec : Prop :=
  ∀ n, P7954309138384180723.a n = A393661 (n + 3)

end A393661

/-! ## A393661.P14337946783475359604

`A393662(n+3)+A393662(n+3)-A393655(n+3)`
-/

namespace A393661.P14337946783475359604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393662 (n + 3) + (A393662 (n + 3) - A393655 (n + 3))

end

end A393661.P14337946783475359604

namespace A393661

/-- `A393662(n+3)+A393662(n+3)-A393655(n+3)` -/
def P14337946783475359604.Spec : Prop :=
  ∀ n, P14337946783475359604.a n = A393661 (n + 3)

theorem P14337946783475359604.correct : P14337946783475359604.Spec := by
  intro n
  simp only [A393661, Nat.add_sub_cancel, A393661.P14337946783475359604.a, A393661.P18445463208938884355.a, A393655, A393655.P8117864334474351213.a, A393662, A393662.P12609403442720714031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393661

/-!
# A393662: A sequence arising from the 3-Bratteli diagram, a(n) = 3^(n - 3)*(16*n - 15), n>=3.

The programs for A393662, the canonical program `A393662.P12609403442720714031` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393662 has offset 3).

The definition of A393662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(16*(n+3)-15)` (program `A393662.P12609403442720714031`, by `A393662.P12609403442720714031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393662.P12609403442720714031

`3^n*(16*(n+3)-15)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393662

/-- `3^n*(16*(n+3)-15)` -/
def P12609403442720714031.Spec : Prop :=
  ∀ n, P12609403442720714031.a n = A393662 (n + 3)

theorem P12609403442720714031.correct : P12609403442720714031.Spec := by
  intro n
  simp only [A393662, Nat.add_sub_cancel]

end A393662

/-! ## A393662.P8345907344821909065

`A393661(n+3)+A008776(n)`
-/

namespace A393662.P8345907344821909065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393661 (n + 3) + A008776 n

end

end A393662.P8345907344821909065

namespace A393662

/-- `A393661(n+3)+A008776(n)` -/
def P8345907344821909065.Spec : Prop :=
  ∀ n, P8345907344821909065.a n = A393662 (n + 3)

theorem P8345907344821909065.correct : P8345907344821909065.Spec := by
  intro n
  simp only [A393662, Nat.add_sub_cancel, A393662.P8345907344821909065.a, A393662.P12609403442720714031.a, A008776, A008776.P11088121667404015999.a, A393661, A393661.P18445463208938884355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393662

/-! ## A393662.P10977120787357902297

`A393655(n+3)-A008776(n)`
-/

namespace A393662.P10977120787357902297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393655 (n + 3) - A008776 n

end

end A393662.P10977120787357902297

namespace A393662

/-- `A393655(n+3)-A008776(n)` -/
def P10977120787357902297.Spec : Prop :=
  ∀ n, P10977120787357902297.a n = A393662 (n + 3)

theorem P10977120787357902297.correct : P10977120787357902297.Spec := by
  intro n
  simp only [A393662, Nat.add_sub_cancel, A393662.P10977120787357902297.a, A393662.P12609403442720714031.a, A008776, A008776.P11088121667404015999.a, A393655, A393655.P8117864334474351213.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393662

/-! ## A393662.P12440828574351666607

`A393655(n+3)-A225367(2*(n+1))`
-/

namespace A393662.P12440828574351666607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393655 (n + 3) - A225367 (2 * (n + 1))

end

end A393662.P12440828574351666607

namespace A393662

/-- `A393655(n+3)-A225367(2*(n+1))` -/
def P12440828574351666607.Spec : Prop :=
  ∀ n, P12440828574351666607.a n = A393662 (n + 3)

end A393662

/-!
# A393663: A sequence constructed by greedily sampling the discrete probability distribution p(k) = zeta(k+1)-1 to minimize ratio discrepancy.

The programs for A393663, there is no canonical definition to state claims against.
-/

/-! ## A393663.P17358004708538671629

`A038548(gcd(A121029(3*n+1), A213249(n+2)))`
-/

namespace A393663.P17358004708538671629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (Int.gcd (A121029 (3 * n + 1)) (A213249 (n + 2)))

end

end A393663.P17358004708538671629

/-! ## A393663.P11047332843479206339

`A373819(A312458(n))`
-/

namespace A393663.P11047332843479206339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373819 (A312458 n).toNat

end

end A393663.P11047332843479206339

/-! ## A393663.P10415066270360830539

`gcd(A048736(n+1), A215137(A352141(n+4)))`
-/

namespace A393663.P10415066270360830539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048736 (n + 1)) (A215137 (A352141 (n + 4)).toNat)

end

end A393663.P10415066270360830539

/-! ## A393663.P3236771734662959714

`gcd(A001221(3*(n+1)), A073355(A151897(n)))`
-/

namespace A393663.P3236771734662959714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (3 * (n + 1))) (A073355 (A151897 n).toNat)

end

end A393663.P3236771734662959714

/-! ## A393663.P9124117503196304256

`A103372(gcd(A334289(3*n+2), A334299(3*n+2)))`
-/

namespace A393663.P9124117503196304256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (Int.gcd (A334289 (3 * n + 2)) (A334299 (3 * n + 2)))

end

end A393663.P9124117503196304256

/-!
# A393665: Number of order-convex subsets of the square grid poset [n]^2 with componentwise partial order.

The programs for A393665, there is no canonical definition to state claims against.
-/

/-! ## A393665.P15734920940063618082

`A367109(∑[n+1])`
-/

namespace A393665.P15734920940063618082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367109 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393665.P15734920940063618082

/-!
# A393670: Irregular triangular array T, read by rows: when the partitions of n are arranged in reverse lexicographic order, T(n,k) is the position of the k-th partition in which adjacent parts differ by at least 2.

The programs for A393670, there is no canonical definition to state claims against.
-/

/-! ## A393670.P5052542733145709181

`A033638(A122197(A199474(A033638(n))))`
-/

namespace A393670.P5052542733145709181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A122197 (A199474 (A033638 n).toNat).toNat).toNat

end

end A393670.P5052542733145709181

/-! ## A393670.P11007594941552843122

`A237260(n+1)+A083651(A261049(n))`
-/

namespace A393670.P11007594941552843122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (n + 1) + A083651 (A261049 n).toNat

end

end A393670.P11007594941552843122

/-! ## A393670.P13686961498865900433

`or(A237260(n+1), A325414(A360254(n)))`
-/

namespace A393670.P13686961498865900433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A237260 (n + 1)) (A325414 (A360254 n).toNat)

end

end A393670.P13686961498865900433

/-! ## A393670.P7509178543241669524

`A237260(A351241(n+1)+A233583(n+1))`
-/

namespace A393670.P7509178543241669524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (A351241 (n + 1) + A233583 (n + 1)).toNat

end

end A393670.P7509178543241669524

/-! ## A393670.P9317039802403671364

`A293439(A192065(n)+A164717(2*n+5))`
-/

namespace A393670.P9317039802403671364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293439 (A192065 n + A164717 (2 * n + 5)).toNat

end

end A393670.P9317039802403671364

/-!
# A393671: a(n) = number of partitions of n into distinct prime parts, no two of which are adjacent primes.

The programs for A393671, there is no canonical definition to state claims against.
-/

/-! ## A393671.P12628038428459918529

`A380560(n+1)%A082844(A209403(n+1))`
-/

namespace A393671.P12628038428459918529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380560 (n + 1)) (A082844 (A209403 (n + 1)).toNat)

end

end A393671.P12628038428459918529

/-! ## A393671.P9277200593992094959

`and(A103095(A124234(n)), A380560(n+1))`
-/

namespace A393671.P9277200593992094959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103095 (A124234 n).toNat) (A380560 (n + 1))

end

end A393671.P9277200593992094959

/-! ## A393671.P3671262175587665778

`A111397(A371300(n+1))`
-/

namespace A393671.P3671262175587665778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111397 (A371300 (n + 1)).toNat

end

end A393671.P3671262175587665778

/-! ## A393671.P13904463150969730565

`and(A068970(A380446(n+1)), A380560(n+1))`
-/

namespace A393671.P13904463150969730565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068970 (A380446 (n + 1)).toNat) (A380560 (n + 1))

end

end A393671.P13904463150969730565

/-! ## A393671.P10117894828491016851

`C(A006928(A268944(3*n+2)), A175077(n+1))`
-/

namespace A393671.P10117894828491016851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006928 (A268944 (3 * n + 2)).toNat).toNat (A175077 (n + 1)).toNat

end

end A393671.P10117894828491016851

/-!
# A393672: a(n) = number of partitions of n into distinct odd parts, no two of which differ by 2.

The programs for A393672, there is no canonical definition to state claims against.
-/

/-! ## A393672.P6981427990707474288

`A280152(lt[A001414(n+1), A090034(n)])`
-/

namespace A393672.P6981427990707474288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393672.P6981427990707474288

/-! ## A393672.P4166376287911973162

`A056978(A230708(n+2))`
-/

namespace A393672.P4166376287911973162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A230708 (n + 2)).toNat

end

end A393672.P4166376287911973162

/-! ## A393672.P9342993415252696820

`A089053(A212966(n))`
-/

namespace A393672.P9342993415252696820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089053 (A212966 n).toNat

end

end A393672.P9342993415252696820

/-! ## A393672.P13977706926431960071

`A109072(A241119(n+2))`
-/

namespace A393672.P13977706926431960071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 (A241119 (n + 2)).toNat

end

end A393672.P13977706926431960071

/-! ## A393672.P14527827573395490802

`A113193(A295352(n+2))`
-/

namespace A393672.P14527827573395490802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113193 (A295352 (n + 2)).toNat

end

end A393672.P14527827573395490802

/-!
# A393673: a(n) = number of partitions of n into distinct parts that are triangular numbers, no two of which are consecutive triangular numbers.

The programs for A393673, there is no canonical definition to state claims against.
-/

/-! ## A393673.P16138273020837344740

`A078588(A215891(n+2))`
-/

namespace A393673.P16138273020837344740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A215891 (n + 2)).toNat

end

end A393673.P16138273020837344740

/-! ## A393673.P14468457156339034155

`A091949(A230428(n+2))`
-/

namespace A393673.P14468457156339034155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091949 (A230428 (n + 2)).toNat

end

end A393673.P14468457156339034155

/-! ## A393673.P15544052130073695180

`A010060(A079431(n+1)*A126796(n))`
-/

namespace A393673.P15544052130073695180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A079431 (n + 1) * A126796 n).toNat

end

end A393673.P15544052130073695180

/-! ## A393673.P3233312292966302965

`val(A291173(n+1), A003021(A002262(n)))`
-/

namespace A393673.P3233312292966302965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A291173 (n + 1)).toNat (A003021 (A002262 n).toNat).toNat

end

end A393673.P3233312292966302965

/-! ## A393673.P13767953031380933992

`A030190(A372100(n+4)+A210114(n+4))`
-/

namespace A393673.P13767953031380933992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A372100 (n + 4) + A210114 (n + 4)).toNat

end

end A393673.P13767953031380933992

/-!
# A393675: a(n) = number of partitions of n into distinct composite parts, no two of which are consecutive in A002808.

The programs for A393675, there is no canonical definition to state claims against.
-/

/-! ## A393675.P17612310117546910624

`A204389(n)-A122841(A375282(n))`
-/

namespace A393675.P17612310117546910624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 n - A122841 (A375282 n).toNat

end

end A393675.P17612310117546910624

/-! ## A393675.P8884125204173048390

`A047999(A113360(n))*A053280(n)`
-/

namespace A393675.P8884125204173048390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A113360 n).toNat * A053280 n

end

end A393675.P8884125204173048390

/-! ## A393675.P2905252205138761680

`A354579(A160051(n)*A182270(n))`
-/

namespace A393675.P2905252205138761680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A160051 n * A182270 n).toNat

end

end A393675.P2905252205138761680

/-! ## A393675.P10536496749344299184

`A354579(A182270(n)*A233583(n+1))`
-/

namespace A393675.P10536496749344299184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A182270 n * A233583 (n + 1)).toNat

end

end A393675.P10536496749344299184

/-! ## A393675.P18125716996547313155

`A083025(A002415(n+3)-A136762(n))`
-/

namespace A393675.P18125716996547313155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A002415 (n + 3) - A136762 n).toNat

end

end A393675.P18125716996547313155

/-!
# A393676: a(n) = number of partitions of n into distinct parts such that if x and y are parts and x < y then y - x != 2.

The programs for A393676, there is no canonical definition to state claims against.
-/

/-! ## A393676.P12836039061088096314

`A176816(A035965(n+1))`
-/

namespace A393676.P12836039061088096314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176816 (A035965 (n + 1)).toNat

end

end A393676.P12836039061088096314

/-!
# A393677: Upper (1,1/2) midsequence of (n^2) and ((n+1)^2); see Comments.

The programs for A393677, the canonical program `A393677.P2815755897781841043` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393677 has offset 0).

The definition of A393677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393677.P2815755897781841043

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=17`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393677

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2815755897781841043.Spec : Prop :=
  ∀ n, P2815755897781841043.a n = A393677 n

theorem P2815755897781841043.correct : P2815755897781841043.Spec := by
  intro n
  simp only [A393677]

end A393677

/-! ## A393677.P8429281777123449647

`∑[or(1, n)]+n²`
-/

namespace A393677.P8429281777123449647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A393677.P8429281777123449647

namespace A393677

/-- `∑[or(1, n)]+n²` -/
def P8429281777123449647.Spec : Prop :=
  ∀ n, (P8429281777123449647.a n : ℤ) = A393677 n

end A393677

/-! ## A393677.P12377510047579177842

`∑[a(n-2)+6]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A393677.P12377510047579177842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393677.P12377510047579177842

namespace A393677

/-- `∑[a(n-2)+6]` -/
def P12377510047579177842.Spec : Prop :=
  ∀ n, (P12377510047579177842.a n : ℤ) = A393677 n

end A393677

/-! ## A393677.P15735457954255596382

`ceil((n+1)²/2)+n²`
-/

namespace A393677.P15735457954255596382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / 2⌉ + (n ^ 2 : ℤ)

end

end A393677.P15735457954255596382

namespace A393677

/-- `ceil((n+1)²/2)+n²` -/
def P15735457954255596382.Spec : Prop :=
  ∀ n, P15735457954255596382.a n = A393677 n

end A393677

/-! ## A393677.P7627527083782017572

`∑[∑[6-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A393677.P7627527083782017572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393677.P7627527083782017572

namespace A393677

/-- `∑[∑[6-a(n-1)]]` -/
def P7627527083782017572.Spec : Prop :=
  ∀ n, P7627527083782017572.a n = A393677 n

end A393677

/-! ## A393677.P18322356895524839244

`ogf((1+x+3x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A393677.P18322356895524839244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 1] [1, -2, 0, 2, -1] n

end

end A393677.P18322356895524839244

namespace A393677

/-- `ogf((1+x+3x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P18322356895524839244.Spec : Prop :=
  ∀ n, P18322356895524839244.a n = A393677 n

end A393677

/-! ## A393677.P7413421384781684956

`floor(∑[n+1]+C(2*n, 2)/2)`
-/

namespace A393677.P7413421384781684956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.choose (2 * n) 2 : ℚ) / 2⌋

end

end A393677.P7413421384781684956

namespace A393677

/-- `floor(∑[n+1]+C(2*n, 2)/2)` -/
def P7413421384781684956.Spec : Prop :=
  ∀ n, P7413421384781684956.a n = A393677 n

end A393677

/-! ## A393677.P2156241244002051842

`or(1, 2*n+a(n-1)+n-1)` with `a(0)=1`
-/

namespace A393677.P2156241244002051842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 ((2 * n : ℤ) + (a (n - 1) + ((n : ℤ) - 1)))

end

end A393677.P2156241244002051842

namespace A393677

/-- `or(1, 2*n+a(n-1)+n-1)` -/
def P2156241244002051842.Spec : Prop :=
  ∀ n, P2156241244002051842.a n = A393677 n

end A393677

/-! ## A393677.P2798755376127979033

`or(1, A227017(n+1))`
-/

namespace A393677.P2798755376127979033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A227017 (n + 1))

end

end A393677.P2798755376127979033

namespace A393677

/-- `or(1, A227017(n+1))` -/
def P2798755376127979033.Spec : Prop :=
  ∀ n, P2798755376127979033.a n = A393677 n

end A393677

/-! ## A393677.P11475576555993541967

`A201279(n)%A173102(n+1)`
-/

namespace A393677.P11475576555993541967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201279 n) (A173102 (n + 1))

end

end A393677.P11475576555993541967

namespace A393677

/-- `A201279(n)%A173102(n+1)` -/
def P11475576555993541967.Spec : Prop :=
  ∀ n, P11475576555993541967.a n = A393677 n

end A393677

/-! ## A393677.P15649533215203389585

`∪[A126587(n+1), A136392(n+1)]`
-/

namespace A393677.P15649533215203389585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393677.P15649533215203389585

namespace A393677

/-- `∪[A126587(n+1), A136392(n+1)]` -/
def P15649533215203389585.Spec : Prop :=
  ∀ n, (P15649533215203389585.a n : ℤ) = A393677 n

end A393677

/-! ## A393677.P5707790508570183369

`A396812(Δ[n²])`
-/

namespace A393677.P5707790508570183369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396812 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A393677.P5707790508570183369

namespace A393677

/-- `A396812(Δ[n²])` -/
def P5707790508570183369.Spec : Prop :=
  ∀ n, P5707790508570183369.a n = A393677 n

end A393677

/-! ## A393677.P15562502263242532798

`or(1, A186423(2*n))`
-/

namespace A393677.P15562502263242532798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186423 (2 * n))

end

end A393677.P15562502263242532798

namespace A393677

/-- `or(1, A186423(2*n))` -/
def P15562502263242532798.Spec : Prop :=
  ∀ n, P15562502263242532798.a n = A393677 n

end A393677

/-! ## A393677.P13689389157764190155

`or(1, A282513(2*n))`
-/

namespace A393677.P13689389157764190155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A282513 (2 * n))

end

end A393677.P13689389157764190155

namespace A393677

/-- `or(1, A282513(2*n))` -/
def P13689389157764190155.Spec : Prop :=
  ∀ n, P13689389157764190155.a n = A393677 n

end A393677

/-! ## A393677.P391345307840299315

`or(1, A378790(2*n+1))`
-/

namespace A393677.P391345307840299315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A378790 (2 * n + 1))

end

end A393677.P391345307840299315

namespace A393677

/-- `or(1, A378790(2*n+1))` -/
def P391345307840299315.Spec : Prop :=
  ∀ n, P391345307840299315.a n = A393677 n

end A393677

/-! ## A393677.P4979633941826786944

`or(1, A396811(2*n+1))`
-/

namespace A393677.P4979633941826786944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A396811 (2 * n + 1))

end

end A393677.P4979633941826786944

namespace A393677

/-- `or(1, A396811(2*n+1))` -/
def P4979633941826786944.Spec : Prop :=
  ∀ n, P4979633941826786944.a n = A393677 n

end A393677

/-! ## A393677.P8688528171011734688

`A008747(3*n)`
-/

namespace A393677.P8688528171011734688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008747 (3 * n)

end

end A393677.P8688528171011734688

namespace A393677

/-- `A008747(3*n)` -/
def P8688528171011734688.Spec : Prop :=
  ∀ n, P8688528171011734688.a n = A393677 n

end A393677

/-! ## A393677.P9817571103658448362

`∑[record[A302551(n+1)]]`
-/

namespace A393677.P9817571103658448362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302551 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393677.P9817571103658448362

namespace A393677

/-- `∑[record[A302551(n+1)]]` -/
def P9817571103658448362.Spec : Prop :=
  ∀ n, P9817571103658448362.a n = A393677 n

end A393677

/-! ## A393677.P8034671226338290007

`∩[2*n+1, A396812(n)]`
-/

namespace A393677.P8034671226338290007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396812 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393677.P8034671226338290007

namespace A393677

/-- `∩[2*n+1, A396812(n)]` -/
def P8034671226338290007.Spec : Prop :=
  ∀ n, (P8034671226338290007.a n : ℤ) = A393677 n

end A393677

/-! ## A393677.P9716625707565056208

`filter[A396812(n+1), A379952(#)]`
-/

namespace A393677.P9716625707565056208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A393677.P9716625707565056208

namespace A393677

/-- `filter[A396812(n+1), A379952(#)]` -/
def P9716625707565056208.Spec : Prop :=
  ∀ n, P9716625707565056208.a n = A393677 n

end A393677

/-!
# A393678: Lower (1/2,1/3) midsequence of (n^2) and ((n+1)^2); see Comments.

The programs for A393678, the canonical program `A393678.P16894942421807432163` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393678 has offset 0).

The definition of A393678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393678.P16894942421807432163

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=9, a(4)=16, a(5)=24`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393678

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P16894942421807432163.Spec : Prop :=
  ∀ n, P16894942421807432163.a n = A393678 n

theorem P16894942421807432163.correct : P16894942421807432163.Spec := by
  intro n
  simp only [A393678]

end A393678

/-! ## A393678.P3062182989682178674

`floor((n+1)²/3+n²/2)`
-/

namespace A393678.P3062182989682178674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / 3 + (n ^ 2 : ℚ) / 2⌋

end

end A393678.P3062182989682178674

namespace A393678

/-- `floor((n+1)²/3+n²/2)` -/
def P3062182989682178674.Spec : Prop :=
  ∀ n, P3062182989682178674.a n = A393678 n

end A393678

/-! ## A393678.P2289924107194786110

`A374702(n+1)+∑[n]`
-/

namespace A393678.P2289924107194786110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374702 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A393678.P2289924107194786110

namespace A393678

/-- `A374702(n+1)+∑[n]` -/
def P2289924107194786110.Spec : Prop :=
  ∀ n, P2289924107194786110.a n = A393678 n

end A393678

/-! ## A393678.P17144661131583718297

`A397972(n)+A008615(n)`
-/

namespace A393678.P17144661131583718297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n + A008615 n

end

end A393678.P17144661131583718297

namespace A393678

/-- `A397972(n)+A008615(n)` -/
def P17144661131583718297.Spec : Prop :=
  ∀ n, P17144661131583718297.a n = A393678 n

end A393678

/-! ## A393678.P16441119972087097009

`A213041(n)-A008747(n)`
-/

namespace A393678.P16441119972087097009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213041 n - A008747 n

end

end A393678.P16441119972087097009

namespace A393678

/-- `A213041(n)-A008747(n)` -/
def P16441119972087097009.Spec : Prop :=
  ∀ n, P16441119972087097009.a n = A393678 n

end A393678

/-! ## A393678.P3593513366408703913

`A397980(n)-A374702(n)`
-/

namespace A393678.P3593513366408703913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397980 n - A374702 n

end

end A393678.P3593513366408703913

namespace A393678

/-- `A397980(n)-A374702(n)` -/
def P3593513366408703913.Spec : Prop :=
  ∀ n, P3593513366408703913.a n = A393678 n

end A393678

/-! ## A393678.P4412447674310673878

`A069905(n+1)+A006578(n)`
-/

namespace A393678.P4412447674310673878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) + A006578 n

end

end A393678.P4412447674310673878

namespace A393678

/-- `A069905(n+1)+A006578(n)` -/
def P4412447674310673878.Spec : Prop :=
  ∀ n, P4412447674310673878.a n = A393678 n

end A393678

/-! ## A393678.P15468533108893534712

`A274830(n+1)-A114209(n+1)`
-/

namespace A393678.P15468533108893534712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1) - A114209 (n + 1)

end

end A393678.P15468533108893534712

namespace A393678

/-- `A274830(n+1)-A114209(n+1)` -/
def P15468533108893534712.Spec : Prop :=
  ∀ n, P15468533108893534712.a n = A393678 n

end A393678

/-! ## A393678.P23697783696781319

`A331943(n+1)-A069813(n+3)`
-/

namespace A393678.P23697783696781319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331943 (n + 1) - A069813 (n + 3)

end

end A393678.P23697783696781319

namespace A393678

/-- `A331943(n+1)-A069813(n+3)` -/
def P23697783696781319.Spec : Prop :=
  ∀ n, P23697783696781319.a n = A393678 n

end A393678

/-! ## A393678.P3630803767412091560

`(n+1)²-∑[A267806(n+1)]`
-/

namespace A393678.P3630803767412091560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393678.P3630803767412091560

namespace A393678

/-- `(n+1)²-∑[A267806(n+1)]` -/
def P3630803767412091560.Spec : Prop :=
  ∀ n, P3630803767412091560.a n = A393678 n

end A393678

/-! ## A393678.P4398287361421121110

`A007590(n)+A000212(n+1)`
-/

namespace A393678.P4398287361421121110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + A000212 (n + 1)

end

end A393678.P4398287361421121110

namespace A393678

/-- `A007590(n)+A000212(n+1)` -/
def P4398287361421121110.Spec : Prop :=
  ∀ n, P4398287361421121110.a n = A393678 n

end A393678

/-! ## A393678.P560496871677032890

`A000212(n+1)+2*A002620(n)`
-/

namespace A393678.P560496871677032890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1) + 2 * A002620 n

end

end A393678.P560496871677032890

namespace A393678

/-- `A000212(n+1)+2*A002620(n)` -/
def P560496871677032890.Spec : Prop :=
  ∀ n, P560496871677032890.a n = A393678 n

end A393678

/-! ## A393678.P8371506625185929810

`A056827(n+1)+A056829(n+1)+A007590(n)`
-/

namespace A393678.P8371506625185929810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 (n + 1) + (A056829 (n + 1) + A007590 n)

end

end A393678.P8371506625185929810

namespace A393678

/-- `A056827(n+1)+A056829(n+1)+A007590(n)` -/
def P8371506625185929810.Spec : Prop :=
  ∀ n, P8371506625185929810.a n = A393678 n

end A393678

/-! ## A393678.P3898102298511440317

`A000217(n+1)+A007590(n)-A001840(n+1)`
-/

namespace A393678.P3898102298511440317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A007590 n - A001840 (n + 1))

end

end A393678.P3898102298511440317

namespace A393678

/-- `A000217(n+1)+A007590(n)-A001840(n+1)` -/
def P3898102298511440317.Spec : Prop :=
  ∀ n, P3898102298511440317.a n = A393678 n

end A393678

/-! ## A393678.P16618243858922739928

`A397972(n+1)+A006578(n)-A006578(n+1)`
-/

namespace A393678.P16618243858922739928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 (n + 1) + (A006578 n - A006578 (n + 1))

end

end A393678.P16618243858922739928

namespace A393678

/-- `A397972(n+1)+A006578(n)-A006578(n+1)` -/
def P16618243858922739928.Spec : Prop :=
  ∀ n, P16618243858922739928.a n = A393678 n

end A393678

/-! ## A393678.P12692385858062763309

`A130519(2*n+1)+A000212(n+1)`
-/

namespace A393678.P12692385858062763309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (2 * n + 1) + A000212 (n + 1)

end

end A393678.P12692385858062763309

namespace A393678

/-- `A130519(2*n+1)+A000212(n+1)` -/
def P12692385858062763309.Spec : Prop :=
  ∀ n, P12692385858062763309.a n = A393678 n

end A393678

/-! ## A393678.P12434523900617096294

`A229154(2*(n+1))-A074148(n+1)`
-/

namespace A393678.P12434523900617096294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229154 (2 * (n + 1)) - A074148 (n + 1)

end

end A393678.P12434523900617096294

namespace A393678

/-- `A229154(2*(n+1))-A074148(n+1)` -/
def P12434523900617096294.Spec : Prop :=
  ∀ n, P12434523900617096294.a n = A393678 n

end A393678

/-! ## A393678.P5664122553867511279

`A087483(2*n+1)-A000982(n+2)`
-/

namespace A393678.P5664122553867511279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 (2 * n + 1) - A000982 (n + 2)

end

end A393678.P5664122553867511279

namespace A393678

/-- `A087483(2*n+1)-A000982(n+2)` -/
def P5664122553867511279.Spec : Prop :=
  ∀ n, P5664122553867511279.a n = A393678 n

end A393678

/-!
# A393679: Upper (1/2,1/3) midsequence of (n^2) and ((n+1)^2); see Comments.

The programs for A393679, the canonical program `A393679.P2971570159515742930` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393679 has offset 0).

The definition of A393679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393679.P2971570159515742930

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=17, a(5)=25, a(6)=35, a(7)=46`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393679

/-- `2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` -/
def P2971570159515742930.Spec : Prop :=
  ∀ n, P2971570159515742930.a n = A393679 n

theorem P2971570159515742930.correct : P2971570159515742930.Spec := by
  intro n
  simp only [A393679]

end A393679

/-! ## A393679.P3997737072862151964

`floor(∑[∑[a(n-1)+5]]/(n+1))` with `a(0)=1, a(1)=3`
-/

namespace A393679.P3997737072862151964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A393679.P3997737072862151964

namespace A393679

/-- `floor(∑[∑[a(n-1)+5]]/(n+1))` -/
def P3997737072862151964.Spec : Prop :=
  ∀ n, P3997737072862151964.a n = A393679 n

end A393679

/-! ## A393679.P424773219158658263

`A171662(n)+A000124(n)`
-/

namespace A393679.P424773219158658263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171662 n + A000124 n

end

end A393679.P424773219158658263

namespace A393679

/-- `A171662(n)+A000124(n)` -/
def P424773219158658263.Spec : Prop :=
  ∀ n, P424773219158658263.a n = A393679 n

end A393679

/-! ## A393679.P11721432131486060257

`A161680(n)+A078617(n+1)`
-/

namespace A393679.P11721432131486060257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A078617 (n + 1)

end

end A393679.P11721432131486060257

namespace A393679

/-- `A161680(n)+A078617(n+1)` -/
def P11721432131486060257.Spec : Prop :=
  ∀ n, P11721432131486060257.a n = A393679 n

end A393679

/-! ## A393679.P2855468561897743617

`A393678(n)+A393683(n)-A393682(n)`
-/

namespace A393679.P2855468561897743617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393678 n + (A393683 n - A393682 n)

end

end A393679.P2855468561897743617

namespace A393679

/-- `A393678(n)+A393683(n)-A393682(n)` -/
def P2855468561897743617.Spec : Prop :=
  ∀ n, P2855468561897743617.a n = A393679 n

end A393679

/-!
# A393680: Lower (1/2,1/3) midsequence of (n^2) and ((n+2)^2); see Comments.

The programs for A393680, the canonical program `A393680.P17823751236329769493` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393680 has offset 0).

The definition of A393680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393680.P17823751236329769493

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=12, a(4)=20, a(5)=28`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393680

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P17823751236329769493.Spec : Prop :=
  ∀ n, P17823751236329769493.a n = A393680 n

theorem P17823751236329769493.correct : P17823751236329769493.Spec := by
  intro n
  simp only [A393680]

end A393680

/-! ## A393680.P4871951595673729004

`floor(∑[n+1]+∑[n²]/(n+2))`
-/

namespace A393680.P4871951595673729004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 2 : ℚ)⌋

end

end A393680.P4871951595673729004

namespace A393680

/-- `floor(∑[n+1]+∑[n²]/(n+2))` -/
def P4871951595673729004.Spec : Prop :=
  ∀ n, P4871951595673729004.a n = A393680 n

end A393680

/-! ## A393680.P11949709755106505836

`(n+1)²-floor(C(n+3, 3)/(n+2))`
-/

namespace A393680.P11949709755106505836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ⌊(Nat.choose (n + 3) 3 : ℚ) / (n + 2 : ℚ)⌋

end

end A393680.P11949709755106505836

namespace A393680

/-- `(n+1)²-floor(C(n+3, 3)/(n+2))` -/
def P11949709755106505836.Spec : Prop :=
  ∀ n, P11949709755106505836.a n = A393680 n

end A393680

/-! ## A393680.P10047596384546827513

`A320259(n)+A008747(n)`
-/

namespace A393680.P10047596384546827513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320259 n + A008747 n

end

end A393680.P10047596384546827513

namespace A393680

/-- `A320259(n)+A008747(n)` -/
def P10047596384546827513.Spec : Prop :=
  ∀ n, P10047596384546827513.a n = A393680 n

end A393680

/-! ## A393680.P15876072707138364570

`A008577(n)-A000982(n)`
-/

namespace A393680.P15876072707138364570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008577 n - A000982 n

end

end A393680.P15876072707138364570

namespace A393680

/-- `A008577(n)-A000982(n)` -/
def P15876072707138364570.Spec : Prop :=
  ∀ n, P15876072707138364570.a n = A393680 n

end A393680

/-! ## A393680.P15750571718691859301

`A397973(n)+A063208(n+1)`
-/

namespace A393680.P15750571718691859301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397973 n + A063208 (n + 1)

end

end A393680.P15750571718691859301

namespace A393680

/-- `A397973(n)+A063208(n+1)` -/
def P15750571718691859301.Spec : Prop :=
  ∀ n, P15750571718691859301.a n = A393680 n

end A393680

/-! ## A393680.P5253074087251959375

`A137928(n+1)-A156040(n)`
-/

namespace A393680.P5253074087251959375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137928 (n + 1) - A156040 n

end

end A393680.P5253074087251959375

namespace A393680

/-- `A137928(n+1)-A156040(n)` -/
def P5253074087251959375.Spec : Prop :=
  ∀ n, P5253074087251959375.a n = A393680 n

end A393680

/-! ## A393680.P606538596442844995

`(n+1)²-∑[A051274(n+1)]`
-/

namespace A393680.P606538596442844995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393680.P606538596442844995

namespace A393680

/-- `(n+1)²-∑[A051274(n+1)]` -/
def P606538596442844995.Spec : Prop :=
  ∀ n, P606538596442844995.a n = A393680 n

end A393680

/-! ## A393680.P5940868546248936406

`A001840(n+1)+A007590(n)+A001840(n)`
-/

namespace A393680.P5940868546248936406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1) + (A007590 n + A001840 n)

end

end A393680.P5940868546248936406

namespace A393680

/-- `A001840(n+1)+A007590(n)+A001840(n)` -/
def P5940868546248936406.Spec : Prop :=
  ∀ n, P5940868546248936406.a n = A393680 n

end A393680

/-! ## A393680.P3937556298818690372

`A156040(n+1)+A337483(n+1)+A007590(n)`
-/

namespace A393680.P3937556298818690372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 (n + 1) + (A337483 (n + 1) + A007590 n)

end

end A393680.P3937556298818690372

namespace A393680

/-- `A156040(n+1)+A337483(n+1)+A007590(n)` -/
def P3937556298818690372.Spec : Prop :=
  ∀ n, P3937556298818690372.a n = A393680 n

end A393680

/-! ## A393680.P16224671544493605850

`A007590(n)+A000212(n+2)`
-/

namespace A393680.P16224671544493605850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + A000212 (n + 2)

end

end A393680.P16224671544493605850

namespace A393680

/-- `A007590(n)+A000212(n+2)` -/
def P16224671544493605850.Spec : Prop :=
  ∀ n, P16224671544493605850.a n = A393680 n

end A393680

/-! ## A393680.P2941281002688609920

`A242771(n+1)+A242771(n+3)`
-/

namespace A393680.P2941281002688609920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242771 (n + 1) + A242771 (n + 3)

end

end A393680.P2941281002688609920

namespace A393680

/-- `A242771(n+1)+A242771(n+3)` -/
def P2941281002688609920.Spec : Prop :=
  ∀ n, P2941281002688609920.a n = A393680 n

end A393680

/-! ## A393680.P12025088997936381744

`A007590(n)+A001399(2*n+1)`
-/

namespace A393680.P12025088997936381744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + A001399 (2 * n + 1)

end

end A393680.P12025088997936381744

namespace A393680

/-- `A007590(n)+A001399(2*n+1)` -/
def P12025088997936381744.Spec : Prop :=
  ∀ n, P12025088997936381744.a n = A393680 n

end A393680

/-! ## A393680.P534783396468026310

`A087483(2*n)-A000982(n)`
-/

namespace A393680.P534783396468026310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 (2 * n) - A000982 n

end

end A393680.P534783396468026310

namespace A393680

/-- `A087483(2*n)-A000982(n)` -/
def P534783396468026310.Spec : Prop :=
  ∀ n, P534783396468026310.a n = A393680 n

end A393680

/-! ## A393680.P1067538352234458602

`A337483(n+1)+A008748(2*n+1)`
-/

namespace A393680.P1067538352234458602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337483 (n + 1) + A008748 (2 * n + 1)

end

end A393680.P1067538352234458602

namespace A393680

/-- `A337483(n+1)+A008748(2*n+1)` -/
def P1067538352234458602.Spec : Prop :=
  ∀ n, P1067538352234458602.a n = A393680 n

end A393680

/-! ## A393680.P12238505741850124875

`A130519(2*n+1)+A000212(n+2)`
-/

namespace A393680.P12238505741850124875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (2 * n + 1) + A000212 (n + 2)

end

end A393680.P12238505741850124875

namespace A393680

/-- `A130519(2*n+1)+A000212(n+2)` -/
def P12238505741850124875.Spec : Prop :=
  ∀ n, P12238505741850124875.a n = A393680 n

end A393680

/-! ## A393680.P17900850824266881108

`A309511(2*n)+A000212(n+2)`
-/

namespace A393680.P17900850824266881108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309511 (2 * n) + A000212 (n + 2)

end

end A393680.P17900850824266881108

namespace A393680

/-- `A309511(2*n)+A000212(n+2)` -/
def P17900850824266881108.Spec : Prop :=
  ∀ n, P17900850824266881108.a n = A393680 n

end A393680

/-! ## A393680.P16356814655811188614

`A309513(2*n+1)+A000212(n+2)`
-/

namespace A393680.P16356814655811188614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309513 (2 * n + 1) + A000212 (n + 2)

end

end A393680.P16356814655811188614

namespace A393680

/-- `A309513(2*n+1)+A000212(n+2)` -/
def P16356814655811188614.Spec : Prop :=
  ∀ n, P16356814655811188614.a n = A393680 n

end A393680

/-! ## A393680.P12723205980166446781

`A309513(2*n+1)+A001399(2*n+1)`
-/

namespace A393680.P12723205980166446781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309513 (2 * n + 1) + A001399 (2 * n + 1)

end

end A393680.P12723205980166446781

namespace A393680

/-- `A309513(2*n+1)+A001399(2*n+1)` -/
def P12723205980166446781.Spec : Prop :=
  ∀ n, P12723205980166446781.a n = A393680 n

end A393680

/-!
# A393681: Upper (1/2,1/3) midsequence of (n^2) and ((n+2)^2); see Comments.

The programs for A393681, there is no canonical definition to state claims against.
-/

/-! ## A393681.P17427727254270427962

`A008619(A033438(2*n+1)+n+2)`
-/

namespace A393681.P17427727254270427962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A033438 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A393681.P17427727254270427962

/-! ## A393681.P8958569782043099473

`A124156(A295905(n+2))`
-/

namespace A393681.P8958569782043099473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124156 (A295905 (n + 2)).toNat

end

end A393681.P8958569782043099473

/-! ## A393681.P11583689757278027711

`∑[A035100(A131347(n+1))]`
-/

namespace A393681.P11583689757278027711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (A131347 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393681.P11583689757278027711

/-! ## A393681.P15503727093818157561

`A135664(A100189(n+2))`
-/

namespace A393681.P15503727093818157561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A100189 (n + 2)).toNat

end

end A393681.P15503727093818157561

/-! ## A393681.P2471700315797905044

`∑[∑[A036578(A047653(n))]]+2`
-/

namespace A393681.P2471700315797905044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (A047653 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A393681.P2471700315797905044

/-!
# A393682: Lower (1/3,1/6) midsequence of (n^2) and ((n+2)^2); see Comments.

The programs for A393682, the canonical program `A393682.P13212100984617720194` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393682 has offset 0).

The definition of A393682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393682.P13212100984617720194

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7, a(4)=11, a(5)=16, a(6)=22, a(7)=29`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393682

/-- `2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` -/
def P13212100984617720194.Spec : Prop :=
  ∀ n, P13212100984617720194.a n = A393682 n

theorem P13212100984617720194.correct : P13212100984617720194.Spec := by
  intro n
  simp only [A393682]

end A393682

/-! ## A393682.P6511376096207054141

`∑[n]-floor((1-n)/6)`
-/

namespace A393682.P6511376096207054141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(1 - (n : ℤ) : ℚ) / 6⌋

end

end A393682.P6511376096207054141

namespace A393682

/-- `∑[n]-floor((1-n)/6)` -/
def P6511376096207054141.Spec : Prop :=
  ∀ n, P6511376096207054141.a n = A393682 n

end A393682

/-! ## A393682.P16491065048514180573

`round(sqrt(A176060(n)))`
-/

namespace A393682.P16491065048514180573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A176060 n : ℝ))

end

end A393682.P16491065048514180573

namespace A393682

/-- `round(sqrt(A176060(n)))` -/
def P16491065048514180573.Spec : Prop :=
  ∀ n, P16491065048514180573.a n = A393682 n

end A393682

/-! ## A393682.P18418290346106824357

`round(A212959(n)/3)`
-/

namespace A393682.P18418290346106824357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A212959 n : ℚ) / 3)

end

end A393682.P18418290346106824357

namespace A393682

/-- `round(A212959(n)/3)` -/
def P18418290346106824357.Spec : Prop :=
  ∀ n, P18418290346106824357.a n = A393682 n

end A393682

/-! ## A393682.P17922183973332093958

`∑[A079979(n+4)+n]`
-/

namespace A393682.P17922183973332093958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (n + 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393682.P17922183973332093958

namespace A393682

/-- `∑[A079979(n+4)+n]` -/
def P17922183973332093958.Spec : Prop :=
  ∀ n, P17922183973332093958.a n = A393682 n

end A393682

/-! ## A393682.P16030483929398583902

`∑[or(n, A329680(n+4))]`
-/

namespace A393682.P16030483929398583902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A329680 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393682.P16030483929398583902

namespace A393682

/-- `∑[or(n, A329680(n+4))]` -/
def P16030483929398583902.Spec : Prop :=
  ∀ n, P16030483929398583902.a n = A393682 n

end A393682

/-! ## A393682.P7666189535679503158

`round(A000290(3*n+2)/18)`
-/

namespace A393682.P7666189535679503158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000290 (3 * n + 2) : ℚ) / 18)

end

end A393682.P7666189535679503158

namespace A393682

/-- `round(A000290(3*n+2)/18)` -/
def P7666189535679503158.Spec : Prop :=
  ∀ n, P7666189535679503158.a n = A393682 n

end A393682

/-! ## A393682.P3448697993308967195

`∑[A269518((n+1)²)+n]`
-/

namespace A393682.P3448697993308967195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269518 ((n + 1) ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393682.P3448697993308967195

namespace A393682

/-- `∑[A269518((n+1)²)+n]` -/
def P3448697993308967195.Spec : Prop :=
  ∀ n, P3448697993308967195.a n = A393682 n

end A393682

/-! ## A393682.P14449492918904577841

`A309945(A393683(n+1))`
-/

namespace A393682.P14449492918904577841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309945 (A393683 (n + 1)).toNat

end

end A393682.P14449492918904577841

namespace A393682

/-- `A309945(A393683(n+1))` -/
def P14449492918904577841.Spec : Prop :=
  ∀ n, P14449492918904577841.a n = A393682 n

end A393682

/-! ## A393682.P4854005717085454023

`A110654(A262523(n))`
-/

namespace A393682.P4854005717085454023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A262523 n).toNat

end

end A393682.P4854005717085454023

namespace A393682

/-- `A110654(A262523(n))` -/
def P4854005717085454023.Spec : Prop :=
  ∀ n, P4854005717085454023.a n = A393682 n

end A393682

/-!
# A393683: Upper (1/3,1/6) midsequence of (n^2) and ((n+2)^2); see Comments.

The programs for A393683, the canonical program `A393683.P8133223760399323745` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393683 has offset 0).

The definition of A393683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393683.P8133223760399323745

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=12, a(5)=17, a(6)=23, a(7)=30`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A393683

/-- `2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` -/
def P8133223760399323745.Spec : Prop :=
  ∀ n, P8133223760399323745.a n = A393683 n

theorem P8133223760399323745.correct : P8133223760399323745.Spec := by
  intro n
  simp only [A393683]

end A393683

/-! ## A393683.P4179049700940904250

`A096386(n)+A061925(n)`
-/

namespace A393683.P4179049700940904250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096386 n + A061925 n

end

end A393683.P4179049700940904250

namespace A393683

/-- `A096386(n)+A061925(n)` -/
def P4179049700940904250.Spec : Prop :=
  ∀ n, P4179049700940904250.a n = A393683 n

end A393683

/-! ## A393683.P7967398904492127037

`A152947(n+1)+A047318(n+1)`
-/

namespace A393683.P7967398904492127037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) + A047318 (n + 1)

end

end A393683.P7967398904492127037

namespace A393683

/-- `A152947(n+1)+A047318(n+1)` -/
def P7967398904492127037.Spec : Prop :=
  ∀ n, P7967398904492127037.a n = A393683 n

end A393683

/-! ## A393683.P18157596080433982895

`A024401(n+1)-A047368(n+1)`
-/

namespace A393683.P18157596080433982895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024401 (n + 1) - A047368 (n + 1)

end

end A393683.P18157596080433982895

namespace A393683

/-- `A024401(n+1)-A047368(n+1)` -/
def P18157596080433982895.Spec : Prop :=
  ∀ n, P18157596080433982895.a n = A393683 n

end A393683

/-! ## A393683.P5722270103347852690

`A074148(n+1)-A047503(n+1)`
-/

namespace A393683.P5722270103347852690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1) - A047503 (n + 1)

end

end A393683.P5722270103347852690

namespace A393683

/-- `A074148(n+1)-A047503(n+1)` -/
def P5722270103347852690.Spec : Prop :=
  ∀ n, P5722270103347852690.a n = A393683 n

end A393683

/-! ## A393683.P13160480102672000367

`A393679(n)+A393682(n)-A393678(n)`
-/

namespace A393683.P13160480102672000367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393679 n + (A393682 n - A393678 n)

end

end A393683.P13160480102672000367

namespace A393683

/-- `A393679(n)+A393682(n)-A393678(n)` -/
def P13160480102672000367.Spec : Prop :=
  ∀ n, P13160480102672000367.a n = A393683 n

end A393683

/-! ## A393683.P10635003616920379119

`A004523(A267529(n+1))`
-/

namespace A393683.P10635003616920379119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A267529 (n + 1)).toNat

end

end A393683.P10635003616920379119

namespace A393683

/-- `A004523(A267529(n+1))` -/
def P10635003616920379119.Spec : Prop :=
  ∀ n, P10635003616920379119.a n = A393683 n

end A393683

/-! ## A393683.P1757627276610735821

`A008620(A282513(2*n)+n+1)`
-/

namespace A393683.P1757627276610735821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A282513 (2 * n) + (n + 1 : ℤ)).toNat

end

end A393683.P1757627276610735821

namespace A393683

/-- `A008620(A282513(2*n)+n+1)` -/
def P1757627276610735821.Spec : Prop :=
  ∀ n, P1757627276610735821.a n = A393683 n

end A393683

/-! ## A393683.P2682166151425921653

`A097992(A271740(n+1))`
-/

namespace A393683.P2682166151425921653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A271740 (n + 1)).toNat

end

end A393683.P2682166151425921653

namespace A393683

/-- `A097992(A271740(n+1))` -/
def P2682166151425921653.Spec : Prop :=
  ∀ n, P2682166151425921653.a n = A393683 n

end A393683

/-!
# A393685: Records in A393684.

The programs for A393685, there is no canonical definition to state claims against.
-/

/-! ## A393685.P5566947244915847523

`record[A393684(n+1)]`
-/

namespace A393685.P5566947244915847523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393685.P5566947244915847523

/-! ## A393685.P10028664366786521331

`A393684(∑[3^n])`
-/

namespace A393685.P10028664366786521331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393684 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393685.P10028664366786521331

/-!
# A393689: Array read by antidiagonals: A(n, k) is the minimum number of whole unit squares under the polygonal path (i, h_k(v_i)), associated to a k-dimensional balanced ballot path, n >= 1, k >= 2.

The programs for A393689, there is no canonical definition to state claims against.
-/

/-! ## A393689.P4700915626158479255

`A390990(A329049(n))`
-/

namespace A393689.P4700915626158479255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390990 (A329049 n).toNat

end

end A393689.P4700915626158479255

/-! ## A393689.P5830403656812729712

`A193648(n+1)-A026492(A062092(n))`
-/

namespace A393689.P5830403656812729712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (n + 1) - A026492 (A062092 n).toNat

end

end A393689.P5830403656812729712

/-! ## A393689.P5925407349802310808

`A193648(n+1)-A152822(A000337(n))`
-/

namespace A393689.P5925407349802310808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (n + 1) - A152822 (A000337 n).toNat

end

end A393689.P5925407349802310808

/-! ## A393689.P16148803571438868505

`A193648(n+1)-A346467(A083595(n))`
-/

namespace A393689.P16148803571438868505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (n + 1) - A346467 (A083595 n).toNat

end

end A393689.P16148803571438868505

/-! ## A393689.P2413814479983636670

`A193648(n+1)-A369162(A292556(n))`
-/

namespace A393689.P2413814479983636670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (n + 1) - A369162 (A292556 n).toNat

end

end A393689.P2413814479983636670

/-!
# A393692: Number of plane partitions of n with 4 parts.

The programs for A393692, there is no canonical definition to state claims against.
-/

/-! ## A393692.P5152097019877297511

`A091298(A000124(n+3)+3)`
-/

namespace A393692.P5152097019877297511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (A000124 (n + 3) + 3).toNat

end

end A393692.P5152097019877297511

/-!
# A393695: Number of decimal places which are known after using n terms of A241773 and treating them as the coefficients of a continued fraction.

The programs for A393695, there is no canonical definition to state claims against.
-/

/-! ## A393695.P3432735448759374879

`A000005(A000079(n))-A137735(n+3)`
-/

namespace A393695.P3432735448759374879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 n).toNat - A137735 (n + 3)

end

end A393695.P3432735448759374879

/-!
# A393697: a(n) is the number of unit squares in the square lattice, divided by 4, that have 1 vertex strictly inside and 3 vertices strictly outside the circle x^2 + y^2 = n.

The programs for A393697, the canonical program `A393697.P7831953345102612304` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393697 has offset 0).

The definition of A393697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393697.P7831953345102612304

`A393562(n)-A172471(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A393697

/-- `A393562(n)-A172471(n)` -/
def P7831953345102612304.Spec : Prop :=
  ∀ n, P7831953345102612304.a n = A393697 n

theorem P7831953345102612304.correct : P7831953345102612304.Spec := by
  intro n
  simp only [A393697]

end A393697

/-!
# A393699: a(n) is the position of the first occurrence of 2*n+1 in A393562.

The programs for A393699, there is no canonical definition to state claims against.
-/

/-! ## A393699.P2773341765242889893

`A358371(A358380(2*n+1))+n²`
-/

namespace A393699.P2773341765242889893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (A358380 (2 * n + 1)).toNat + (n ^ 2 : ℤ)

end

end A393699.P2773341765242889893

/-! ## A393699.P8252517591404249796

`or(A010000(n), A321090(A001005(n)))`
-/

namespace A393699.P8252517591404249796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010000 n) (A321090 (A001005 n).toNat)

end

end A393699.P8252517591404249796

/-! ## A393699.P6865716988566195134

`or(n², A175064(A029447(n+1)))`
-/

namespace A393699.P6865716988566195134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) (A175064 (A029447 (n + 1)).toNat)

end

end A393699.P6865716988566195134

/-! ## A393699.P10602442860337871200

`A020639(A339302(n+4))+n²`
-/

namespace A393699.P10602442860337871200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A339302 (n + 4)).toNat + (n ^ 2 : ℤ)

end

end A393699.P10602442860337871200

/-! ## A393699.P2673199551359057921

`A018194(A270890(2*n+5))+n²`
-/

namespace A393699.P2673199551359057921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018194 (A270890 (2 * n + 5)).toNat + (n ^ 2 : ℤ)

end

end A393699.P2673199551359057921

