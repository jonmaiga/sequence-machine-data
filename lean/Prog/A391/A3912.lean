import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A391200: Expansion of g^2/(1 - x*g^2)^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391200, there is no canonical definition to state claims against.
-/

/-! ## A391200.P5419528089888094061

`A074286(A006231(n+3))-A014161(n)`
-/

namespace A391200.P5419528089888094061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A006231 (n + 3)).toNat - A014161 n

end

end A391200.P5419528089888094061

/-!
# A391201: Expansion of g^3/(1 - x*g^2)^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391201, there is no canonical definition to state claims against.
-/

/-! ## A391201.P14627060059361822605

`∑[A118301(∑[A242482(2*(n+1))])]`
-/

namespace A391201.P14627060059361822605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242482 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118301 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391201.P14627060059361822605

/-!
# A391202: Expansion of (g/(1 - x*g^2))^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391202, there is no canonical definition to state claims against.
-/

/-! ## A391202.P10600777073813456850

`∑[A103221(A358582(2*n+5))]`
-/

namespace A391202.P10600777073813456850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A358582 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391202.P10600777073813456850

/-!
# A391203: a(n) is the number of 5 element sets of distinct integer-sided trapezoids whose base angles are 60 degrees that fill an equilateral triangular grid of side n units formed by directly binary space partitioning 3-trapezoid sets without forming 4-trapezoid sets.

The programs for A391203, there is no canonical definition to state claims against.
-/

/-! ## A391203.P7053462008700117080

`A301506(A333497(n))`
-/

namespace A391203.P7053462008700117080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301506 (A333497 n).toNat

end

end A391203.P7053462008700117080

/-! ## A391203.P12428986573859580828

`filter[A210631(2*n), A385395(#)]`
-/

namespace A391203.P12428986573859580828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210631 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A391203.P12428986573859580828

/-! ## A391203.P14293595557071335081

`A268173(A268599(n))`
-/

namespace A391203.P14293595557071335081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268173 (A268599 n).toNat

end

end A391203.P14293595557071335081

/-! ## A391203.P1248054814718692639

`A305734(A224810(n+1))`
-/

namespace A391203.P1248054814718692639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305734 (A224810 (n + 1)).toNat

end

end A391203.P1248054814718692639

/-! ## A391203.P12598335024905203145

`filter[A210631(2*n), A106468(#)]`
-/

namespace A391203.P12598335024905203145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210631 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106468 (f1 j).toNat = 1) n)

end

end A391203.P12598335024905203145

/-!
# A391204: a(n) is the number of 5 element sets of distinct integer-sided trapezoids whose base angles are 60 degrees that fill an equilateral triangular grid of side n units with a trapezoid filled by 3 trapezoids.

The programs for A391204, there is no canonical definition to state claims against.
-/

/-! ## A391204.P11613244526318024868

`A294142(A096816(n))`
-/

namespace A391204.P11613244526318024868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294142 (A096816 n).toNat

end

end A391204.P11613244526318024868

/-! ## A391204.P1059216199693789157

`A294142(A073031(n+1))`
-/

namespace A391204.P1059216199693789157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294142 (A073031 (n + 1)).toNat

end

end A391204.P1059216199693789157

/-! ## A391204.P14983198740356368394

`A294142(A079971(n+1))`
-/

namespace A391204.P14983198740356368394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294142 (A079971 (n + 1)).toNat

end

end A391204.P14983198740356368394

/-! ## A391204.P11090515634017273197

`A294142(A114138(n+1))`
-/

namespace A391204.P11090515634017273197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294142 (A114138 (n + 1)).toNat

end

end A391204.P11090515634017273197

/-!
# A391206: E.g.f. A(x) satisfies A(x) = 1/(1 - A(x) * Sum_{i>0} x^i/(i! + A(x)*x^i)).

The programs for A391206, there is no canonical definition to state claims against.
-/

/-! ## A391206.P5967074474978513612

`A085295(n)-A063865(A002443(n))`
-/

namespace A391206.P5967074474978513612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085295 n - A063865 (A002443 n).toNat

end

end A391206.P5967074474978513612

/-!
# A391207: The smallest nonnegative integer k such that n + k is not a sum of two squares.

The programs for A391207, there is no canonical definition to state claims against.
-/

/-! ## A391207.P9448447228707456895

`A007814(A166572(3*n+5)+A003602(n+1))`
-/

namespace A391207.P9448447228707456895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A166572 (3 * n + 5) + A003602 (n + 1)).toNat

end

end A391207.P9448447228707456895

/-!
# A391208: Expansion of 1/(g * (2-g)), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391208, there is no canonical definition to state claims against.
-/

/-! ## A391208.P12185369699092286972

`A358638(A150796(n))`
-/

namespace A391208.P12185369699092286972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358638 (A150796 n).toNat

end

end A391208.P12185369699092286972

/-! ## A391208.P9195294798280300065

`A091056(n)+A030308(A002110(n))`
-/

namespace A391208.P9195294798280300065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091056 n + A030308 (A002110 n).toNat

end

end A391208.P9195294798280300065

/-!
# A391209: Expansion of 1/(g * (2-g)), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391209, there is no canonical definition to state claims against.
-/

/-! ## A391209.P4651062638485769651

`A369146(n)+A056594(A218375(n))`
-/

namespace A391209.P4651062638485769651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369146 n + A056594 (A218375 n).toNat

end

end A391209.P4651062638485769651

/-! ## A391209.P11346115053046844023

`A269371(A303559(n))-A053840(n)`
-/

namespace A391209.P11346115053046844023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (A303559 n).toNat - A053840 n

end

end A391209.P11346115053046844023

/-!
# A391211: Difference between A333242(n) and the next lower prime number.

The programs for A391211, the canonical program `A391211.P8292871902387921407` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391211 has offset 2).

The definition of A391211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8935 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391211.P8292871902387921407

`A054541(A121543(n+2))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A391211

/-- `A054541(A121543(n+2))` -/
def P8292871902387921407.Spec : Prop :=
  ∀ n, P8292871902387921407.a n = A391211 (n + 2)

theorem P8292871902387921407.correct : P8292871902387921407.Spec := by
  intro n
  simp only [A391211, Nat.add_sub_cancel]

end A391211

/-! ## A391211.P4474907552403400024

`A049711(A333242(n+2))`
-/

namespace A391211.P4474907552403400024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A333242 (n + 2)).toNat

end

end A391211.P4474907552403400024

namespace A391211

/-- `A049711(A333242(n+2))` -/
def P4474907552403400024.Spec : Prop :=
  ∀ n, P4474907552403400024.a n = A391211 (n + 2)

end A391211

/-! ## A391211.P17352692614318342209

`A175851(eq[(-1)^n+1, gcd(2, A049076(n+1))])`
-/

namespace A391211.P17352692614318342209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A049076 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n)

end

end A391211.P17352692614318342209

namespace A391211

/-- `A175851(eq[(-1)^n+1, gcd(2, A049076(n+1))])` -/
def P17352692614318342209.Spec : Prop :=
  ∀ n, P17352692614318342209.a n = A391211 (n + 2)

end A391211

/-!
# A391214: Number of divisors d of n such that d^2 - 4 is relatively prime to n.

The programs for A391214, there is no canonical definition to state claims against.
-/

/-! ## A391214.P8984881747166612079

`A385213(2*(n+1)/2^val(n+1, 2))`
-/

namespace A391214.P8984881747166612079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

end

end A391214.P8984881747166612079

/-! ## A391214.P2617897351278211320

`A385213(2*A000265(n+1))`
-/

namespace A391214.P2617897351278211320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (2 * A000265 (n + 1)).toNat

end

end A391214.P2617897351278211320

/-! ## A391214.P1871000550030452430

`A385213(2*(n+1))-A007814(n+1)`
-/

namespace A391214.P1871000550030452430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (2 * (n + 1)) - A007814 (n + 1)

end

end A391214.P1871000550030452430

/-! ## A391214.P9639740900364508681

`A368594(A205377(n+1))`
-/

namespace A391214.P9639740900364508681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368594 (A205377 (n + 1)).toNat

end

end A391214.P9639740900364508681

/-! ## A391214.P8609509528666654892

`A352085(A058298(n+2))`
-/

namespace A391214.P8609509528666654892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352085 (A058298 (n + 2)).toNat

end

end A391214.P8609509528666654892

/-!
# A391217: Sequence generated by iterative conditional Gauss-Kuzmin probabilities (see Comments).

The programs for A391217, there is no canonical definition to state claims against.
-/

/-! ## A391217.P7213447177320566343

`A210959(A161951(n+2))`
-/

namespace A391217.P7213447177320566343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210959 (A161951 (n + 2)).toNat

end

end A391217.P7213447177320566343

/-! ## A391217.P9687503052851791843

`A212121(A373289(n+1))`
-/

namespace A391217.P9687503052851791843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212121 (A373289 (n + 1)).toNat

end

end A391217.P9687503052851791843

/-! ## A391217.P5478531290659799683

`A356228(A355482(n+1))`
-/

namespace A391217.P5478531290659799683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356228 (A355482 (n + 1)).toNat

end

end A391217.P5478531290659799683

/-! ## A391217.P9078949306042363898

`A056538(∑[A112395(n+1)!])`
-/

namespace A391217.P9078949306042363898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A112395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391217.P9078949306042363898

/-!
# A391218: Expansion of 1/(g * (2-g))^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391218, there is no canonical definition to state claims against.
-/

/-! ## A391218.P18276598809382406422

`A329789(n+1)+A010060(A366733(n))`
-/

namespace A391218.P18276598809382406422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329789 (n + 1) + A010060 (A366733 n).toNat

end

end A391218.P18276598809382406422

/-! ## A391218.P18054113684774139971

`A000260(n)-A305802(A167892(n+1))`
-/

namespace A391218.P18054113684774139971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n - A305802 (A167892 (n + 1)).toNat

end

end A391218.P18054113684774139971

/-!
# A391219: Expansion of 1/(g * (2-g))^3, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391219, there is no canonical definition to state claims against.
-/

/-! ## A391219.P18297911941614804296

`xor((n+1)!, ∑{p}[(2*n)!, #])`
-/

namespace A391219.P18297911941614804296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.factorial (n + 1)) (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A391219.P18297911941614804296

/-!
# A391220: Expansion of 1/(g * (2-g))^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391220, there is no canonical definition to state claims against.
-/

/-! ## A391220.P17652384505038630541

`A165006(A007582(n))`
-/

namespace A391220.P17652384505038630541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (A007582 n).toNat

end

end A391220.P17652384505038630541

/-!
# A391221: Expansion of 1/(g * (2-g))^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391221, there is no canonical definition to state claims against.
-/

/-! ## A391221.P14936004821372134598

`A065199(a(n-1)+4)` with `a(0)=1, a(1)=0`
-/

namespace A391221.P14936004821372134598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A065199 (a (n - 1) + 4).toNat

end

end A391221.P14936004821372134598

/-!
# A391222: Expansion of 1/(g * (2-g))^2, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391222, there is no canonical definition to state claims against.
-/

/-! ## A391222.P7958799922872927846

`A006670((n+1)^n)-n`
-/

namespace A391222.P7958799922872927846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 ((n + 1) ^ n) - (n : ℤ)

end

end A391222.P7958799922872927846

/-! ## A391222.P17309498915973588482

`A369715(A150153(n))`
-/

namespace A391222.P17309498915973588482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (A150153 n).toNat

end

end A391222.P17309498915973588482

/-!
# A391223: Expansion of 1/(g * (2-g))^3, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391223, there is no canonical definition to state claims against.
-/

/-! ## A391223.P12500855979890048955

`A331388(2^n)`
-/

namespace A391223.P12500855979890048955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331388 (2 ^ n)

end

end A391223.P12500855979890048955

/-! ## A391223.P9367009984024587984

`Δ[A228849(4^n)]`
-/

namespace A391223.P9367009984024587984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228849 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391223.P9367009984024587984

/-!
# A391224: Expansion of 1/(g * (2-g))^4, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391224, there is no canonical definition to state claims against.
-/

/-! ## A391224.P8284299540840524453

`A340611((2*n)²)`
-/

namespace A391224.P8284299540840524453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340611 ((2 * n) ^ 2)

end

end A391224.P8284299540840524453

/-!
# A391225: Number of integer partitions of n such that the least and greatest parts are both even or both odd.

The programs for A391225, there is no canonical definition to state claims against.
-/

/-! ## A391225.P1097532846569824432

`A325346(n+1)+A325338(n+1)`
-/

namespace A391225.P1097532846569824432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325346 (n + 1) + A325338 (n + 1)

end

end A391225.P1097532846569824432

/-! ## A391225.P11561497073101445723

`A000041(n+1)-A390092(n+1)`
-/

namespace A391225.P11561497073101445723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A390092 (n + 1)

end

end A391225.P11561497073101445723

/-! ## A391225.P13111702096761805416

`A026804(n+1)+A026805(n+1)-A390092(n+1)`
-/

namespace A391225.P13111702096761805416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026804 (n + 1) + (A026805 (n + 1) - A390092 (n + 1))

end

end A391225.P13111702096761805416

/-! ## A391225.P1634761971809204107

`A000041(n+1)-(A325345(n+1)+A325344(n+1))`
-/

namespace A391225.P1634761971809204107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A325345 (n + 1) + A325344 (n + 1))

end

end A391225.P1634761971809204107

/-!
# A391226: Numbers k > 1 such that the least prime index of k plus the greatest prime index of k is even.

The programs for A391226, there is no canonical definition to state claims against.
-/

/-! ## A391226.P4652616117976445603

`comp[A390988(n+1)-2]+2`
-/

namespace A391226.P4652616117976445603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390988 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A391226.P4652616117976445603

/-! ## A391226.P4088157196322016342

`lt[val(A074036(n+1)+2+n, 2), 1]+1`
-/

namespace A391226.P4088157196322016342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074036 (n + 1) + 2 + (n : ℤ)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391226.P4088157196322016342

/-! ## A391226.P15057256754955098694

`∪[A390093(n+1), A391232(n+1)]`
-/

namespace A391226.P15057256754955098694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391226.P15057256754955098694

/-!
# A391227: Number of strict integer partitions of n > 0 such that the least and greatest parts are either both even or both odd (equivalently, their sum is even).

The programs for A391227, there is no canonical definition to state claims against.
-/

/-! ## A391227.P13879085388304763742

`A391233(n+1)+A391228(n+1)`
-/

namespace A391227.P13879085388304763742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391233 (n + 1) + A391228 (n + 1)

end

end A391227.P13879085388304763742

/-! ## A391227.P4636463577114191830

`A000009(n+1)-A390746(n+1)`
-/

namespace A391227.P4636463577114191830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A390746 (n + 1)

end

end A391227.P4636463577114191830

/-! ## A391227.P13638924843419943414

`A391228(n+1)+A391231(n+1)-A390746(n+1)`
-/

namespace A391227.P13638924843419943414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391228 (n + 1) + (A391231 (n + 1) - A390746 (n + 1))

end

end A391227.P13638924843419943414

/-!
# A391228: Number of strict integer partitions of n > 0 such that the least part and the greatest part are both odd (equivalently, their product is odd).

The programs for A391228, there is no canonical definition to state claims against.
-/

/-! ## A391228.P16830617736756646883

`A391227(n+1)-A391233(n+1)`
-/

namespace A391228.P16830617736756646883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391227 (n + 1) - A391233 (n + 1)

end

end A391228.P16830617736756646883

/-! ## A391228.P6627953079031453624

`A000009(n+1)-A391231(n+1)`
-/

namespace A391228.P6627953079031453624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A391231 (n + 1)

end

end A391228.P6627953079031453624

/-! ## A391228.P10691017098780959625

`A026832(n+1)+A026833(n+1)-A391231(n+1)`
-/

namespace A391228.P10691017098780959625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026832 (n + 1) + (A026833 (n + 1) - A391231 (n + 1))

end

end A391228.P10691017098780959625

/-! ## A391228.P5454789202230922813

`A390746(n+1)+A391227(n+1)-A391231(n+1)`
-/

namespace A391228.P5454789202230922813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390746 (n + 1) + (A391227 (n + 1) - A391231 (n + 1))

end

end A391228.P5454789202230922813

/-! ## A391228.P18361627024758299547

`A071651(A054685(n)%A162694(n+1))`
-/

namespace A391228.P18361627024758299547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071651 (Int.tmod (A054685 n) (A162694 (n + 1))).toNat

end

end A391228.P18361627024758299547

/-!
# A391229: Numbers k > 1 such that the least prime index of k and the greatest prime index of k are not both odd (equivalently, their product is even).

The programs for A391229, there is no canonical definition to state claims against.
-/

/-! ## A391229.P13668861436541245561

`∪[A340933(n+1), A390988(n+1)]`
-/

namespace A391229.P13668861436541245561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391229.P13668861436541245561

/-! ## A391229.P9739029163309589113

`∪[A390988(n+1), A391232(n+1)]`
-/

namespace A391229.P9739029163309589113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391229.P9739029163309589113

/-! ## A391229.P5686426114563068279

`lt[A001221(n+1), A344931(n+1)]+1`
-/

namespace A391229.P5686426114563068279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391229.P5686426114563068279

/-!
# A391230: Number of integer partitions of n > 0 such that the least and greatest parts are not both odd (equivalently, their product is even).

The programs for A391230, there is no canonical definition to state claims against.
-/

/-! ## A391230.P17166751183476914520

`A325344(n+1)+A026805(n+1)`
-/

namespace A391230.P17166751183476914520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325344 (n + 1) + A026805 (n + 1)

end

end A391230.P17166751183476914520

/-! ## A391230.P2094614126035526829

`A390092(n+1)+A325346(n+1)`
-/

namespace A391230.P2094614126035526829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390092 (n + 1) + A325346 (n + 1)

end

end A391230.P2094614126035526829

/-! ## A391230.P13863781565520534466

`A000041(n+1)-A325338(n+1)`
-/

namespace A391230.P13863781565520534466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A325338 (n + 1)

end

end A391230.P13863781565520534466

/-! ## A391230.P3011014175278549668

`A325344(n+1)+A325346(n+1)+A325345(n+1)`
-/

namespace A391230.P3011014175278549668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325344 (n + 1) + (A325346 (n + 1) + A325345 (n + 1))

end

end A391230.P3011014175278549668

/-! ## A391230.P3458347224705359415

`A026804(n+1)+A026805(n+1)-A325338(n+1)`
-/

namespace A391230.P3458347224705359415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026804 (n + 1) + (A026805 (n + 1) - A325338 (n + 1))

end

end A391230.P3458347224705359415

/-!
# A391231: Number of strict integer partitions of n > 0 such that the least and greatest parts are not both odd (equivalently, their product is even).

The programs for A391231, there is no canonical definition to state claims against.
-/

/-! ## A391231.P5434486328750663406

`A391233(n+1)+A390746(n+1)`
-/

namespace A391231.P5434486328750663406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391233 (n + 1) + A390746 (n + 1)

end

end A391231.P5434486328750663406

/-! ## A391231.P5563731626767073683

`A026832(n+1)+A026833(n+1)-A391228(n+1)`
-/

namespace A391231.P5563731626767073683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026832 (n + 1) + (A026833 (n + 1) - A391228 (n + 1))

end

end A391231.P5563731626767073683

/-! ## A391231.P887439764095952516

`A390746(n+1)+A391227(n+1)-A391228(n+1)`
-/

namespace A391231.P887439764095952516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390746 (n + 1) + (A391227 (n + 1) - A391228 (n + 1))

end

end A391231.P887439764095952516

/-!
# A391232: Numbers k > 1 such that the least prime index of k and the greatest prime index of k are both even.

The programs for A391232, there is no canonical definition to state claims against.
-/

/-! ## A391232.P12884138595294240611

`∩[A244990(n+1), A340933(n+1)]`
-/

namespace A391232.P12884138595294240611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391232.P12884138595294240611

/-! ## A391232.P13398176148465659985

`∩[A336620(n+1), A340933(n+1)]`
-/

namespace A391232.P13398176148465659985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391232.P13398176148465659985

/-! ## A391232.P11078500576487953030

`filter[A066207(n+2), A137161(#)]`
-/

namespace A391232.P11078500576487953030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137161 (f1 j).toNat = 1) n)

end

end A391232.P11078500576487953030

/-! ## A391232.P1155911850518138725

`filter[A066207(n+2), A165556(#)]`
-/

namespace A391232.P1155911850518138725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165556 (f1 j).toNat = 1) n)

end

end A391232.P1155911850518138725

/-! ## A391232.P11441842988451274836

`A066207(2%A339044(n+4)+n)`
-/

namespace A391232.P11441842988451274836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (Int.tmod 2 (A339044 (n + 4)) + (n : ℤ)).toNat

end

end A391232.P11441842988451274836

/-!
# A391233: Number of strict integer partitions of n > 0 such that the least part and the greatest part are both even.

The programs for A391233, there is no canonical definition to state claims against.
-/

/-! ## A391233.P7501776826512255962

`A391227(n+1)-A391228(n+1)`
-/

namespace A391233.P7501776826512255962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391227 (n + 1) - A391228 (n + 1)

end

end A391233.P7501776826512255962

/-! ## A391233.P14087008857630431076

`A391231(n+1)-A390746(n+1)`
-/

namespace A391233.P14087008857630431076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391231 (n + 1) - A390746 (n + 1)

end

end A391233.P14087008857630431076

/-! ## A391233.P8853925782070504190

`Δ[A357456(n)%A167995(n+1)]`
-/

namespace A391233.P8853925782070504190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357456 n) (A167995 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391233.P8853925782070504190

/-! ## A391233.P7240236379420769292

`Δ[A000700(2*(n+2))%A062572(n+1)]`
-/

namespace A391233.P7240236379420769292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 (2 * (n + 2))) (A062572 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391233.P7240236379420769292

/-! ## A391233.P11170158389456123507

`Δ[A000700(2*(n+2))]%A152277(n+1)`
-/

namespace A391233.P11170158389456123507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A152277 (n + 1))

end

end A391233.P11170158389456123507

/-!
# A391235: Number of integer compositions of n that are the first sums of some composition with all parts > 1.

The programs for A391235, there is no canonical definition to state claims against.
-/

/-! ## A391235.P13140709366674002363

`2^n-A391641(n+1)`
-/

namespace A391235.P13140709366674002363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A391641 (n + 1)

end

end A391235.P13140709366674002363

/-! ## A391235.P6653018767509535001

`A000079(n)%A391641(n+1)`
-/

namespace A391235.P6653018767509535001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A391641 (n + 1))

end

end A391235.P6653018767509535001

/-! ## A391235.P14891615391013165315

`A155559(n)%A391641(n+1)`
-/

namespace A391235.P14891615391013165315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155559 n) (A391641 (n + 1))

end

end A391235.P14891615391013165315

/-! ## A391235.P6222406971182413781

`A171449(n)%A391641(n+1)`
-/

namespace A391235.P6222406971182413781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171449 n) (A391641 (n + 1))

end

end A391235.P6222406971182413781

/-! ## A391235.P494363461194684206

`A171559(n)%A391641(n+1)`
-/

namespace A391235.P494363461194684206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171559 n) (A391641 (n + 1))

end

end A391235.P494363461194684206

/-! ## A391235.P11220190075879581793

`A186949(n)%A391641(n+1)`
-/

namespace A391235.P11220190075879581793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186949 n) (A391641 (n + 1))

end

end A391235.P11220190075879581793

/-!
# A391237: Number of irreducible polynomial factors of Stern polynomial B(n,x) that themselves are Stern polynomials, counted with multiplicity.

The programs for A391237, there is no canonical definition to state claims against.
-/

/-! ## A391237.P1249161560313365911

`A277013(n+1)-A391238(n+1)`
-/

namespace A391237.P1249161560313365911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (n + 1) - A391238 (n + 1)

end

end A391237.P1249161560313365911

/-! ## A391237.P5886323967671886836

`gcd(A001222(n+1), A302698(A333940(3*(n+1))))`
-/

namespace A391237.P5886323967671886836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A302698 (A333940 (3 * (n + 1))).toNat)

end

end A391237.P5886323967671886836

/-! ## A391237.P1086354263657772436

`gcd(∑{e}[n+1, #], A381993(A035622(n)))`
-/

namespace A391237.P1086354263657772436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A381993 (A035622 n).toNat)

end

end A391237.P1086354263657772436

/-! ## A391237.P8994779080265697126

`A053652(A255726(n+1))%A001222(2*(n+1))`
-/

namespace A391237.P8994779080265697126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053652 (A255726 (n + 1)).toNat) (A001222 (2 * (n + 1)))

end

end A391237.P8994779080265697126

/-! ## A391237.P12311582311626420104

`gcd(A001222(n+1), A238403(A084849(n)))`
-/

namespace A391237.P12311582311626420104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A238403 (A084849 n).toNat)

end

end A391237.P12311582311626420104

/-!
# A391238: Number of irreducible polynomial factors of Stern polynomial B(n,x) that are not Stern polynomials, counted with multiplicity.

The programs for A391238, there is no canonical definition to state claims against.
-/

/-! ## A391238.P1197071237571236314

`A277013(n+1)-A391237(n+1)`
-/

namespace A391238.P1197071237571236314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (n + 1) - A391237 (n + 1)

end

end A391238.P1197071237571236314

/-! ## A391238.P16177226715825786965

`and(A182581(n+1), A355384(n))`
-/

namespace A391238.P16177226715825786965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A182581 (n + 1)) (A355384 n)

end

end A391238.P16177226715825786965

/-! ## A391238.P8646103758249976580

`A323510(ceil(A300647(n+1)/3)+2)`
-/

namespace A391238.P8646103758249976580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323510 (⌈(A300647 (n + 1) : ℚ) / 3⌉ + 2).toNat

end

end A391238.P8646103758249976580

/-! ## A391238.P12578113137107954835

`A323510(round(A300647(n+1)/3)+2)`
-/

namespace A391238.P12578113137107954835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323510 (SequenceMachineLib.roundAway ((A300647 (n + 1) : ℚ) / 3) + 2).toNat

end

end A391238.P12578113137107954835

/-! ## A391238.P13626782640705658347

`A288177(A292584(n+1))%A061347(n+1)`
-/

namespace A391238.P13626782640705658347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288177 (A292584 (n + 1)).toNat) (A061347 (n + 1))

end

end A391238.P13626782640705658347

/-! ## A391238.P3005412415630467013

`A201198(n+3)%A165103(A001227(n+1))`
-/

namespace A391238.P3005412415630467013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201198 (n + 3)) (A165103 (A001227 (n + 1)).toNat)

end

end A391238.P3005412415630467013

/-! ## A391238.P17123473705123040629

`A127829(A142531(n+1))`
-/

namespace A391238.P17123473705123040629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127829 (A142531 (n + 1)).toNat

end

end A391238.P17123473705123040629

/-! ## A391238.P1433339603355320474

`A359893(2*A340365(n+1)+1)`
-/

namespace A391238.P1433339603355320474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (2 * A340365 (n + 1) + 1).toNat

end

end A391238.P1433339603355320474

/-! ## A391238.P8689411112512936485

`A342494(n)%A195825(A335452(2*(n+1)))`
-/

namespace A391238.P8689411112512936485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342494 n) (A195825 (A335452 (2 * (n + 1))).toNat)

end

end A391238.P8689411112512936485

/-!
# A391239: Number of ways to form Stern polynomial B(n,x) as a product of two Stern polynomials B(i,x), B(j,x), when the order matters.

The programs for A391239, there is no canonical definition to state claims against.
-/

/-! ## A391239.P18301614577752349603

`gcd(∑[A115960(n+1)], A000005(n+1))`
-/

namespace A391239.P18301614577752349603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000005 (n + 1))

end

end A391239.P18301614577752349603

/-! ## A391239.P7031010876939417851

`gcd(∏{e}[n+1, #+1], A321378(A014963(3*n+1)))`
-/

namespace A391239.P7031010876939417851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A321378 (A014963 (3 * n + 1)).toNat)

end

end A391239.P7031010876939417851

/-! ## A391239.P11148968517706613658

`A000005(n+1)/A362644(A333270(n+1))`
-/

namespace A391239.P11148968517706613658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A362644 (A333270 (n + 1)).toNat : ℚ)

end

end A391239.P11148968517706613658

/-! ## A391239.P16662022548640679554

`A295280(A326842(n+1))`
-/

namespace A391239.P16662022548640679554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295280 (A326842 (n + 1)).toNat

end

end A391239.P16662022548640679554

/-! ## A391239.P9128072100318521868

`A001511(n+1)*A001511(A307607(n+1))`
-/

namespace A391239.P9128072100318521868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A001511 (A307607 (n + 1)).toNat

end

end A391239.P9128072100318521868

/-!
# A391240: a(n) = 1 if n occurs exactly twice in square array A391260, otherwise 0.

The programs for A391240, there is no canonical definition to state claims against.
-/

/-! ## A391240.P2755427342100434006

`char[A391241(n+1)-1]`
-/

namespace A391240.P2755427342100434006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391241 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A391240.P2755427342100434006

/-! ## A391240.P17524345738843237094

`A209229(C(A391239(n+1), 2))`
-/

namespace A391240.P17524345738843237094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (Nat.choose (A391239 (n + 1)).toNat 2)

end

end A391240.P17524345738843237094

/-! ## A391240.P10399689335590354993

`A339451(C(2, A391239(n+1)))`
-/

namespace A391240.P10399689335590354993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 (Nat.choose 2 (A391239 (n + 1)).toNat)

end

end A391240.P10399689335590354993

/-! ## A391240.P16444271084219490758

`A035327(ceil(2*sqrt(2)/A391239(n+1)))`
-/

namespace A391240.P16444271084219490758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 ⌈2 * Real.sqrt (2 : ℝ) / (A391239 (n + 1) : ℝ)⌉.toNat

end

end A391240.P16444271084219490758

/-! ## A391240.P5991657295079869413

`A114785(n+5)%A333254(A391239(n+1))`
-/

namespace A391240.P5991657295079869413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114785 (n + 5)) (A333254 (A391239 (n + 1)).toNat)

end

end A391240.P5991657295079869413

/-! ## A391240.P1887143417269045915

`A240833(n+2)%A333254(A391239(n+1))`
-/

namespace A391240.P1887143417269045915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240833 (n + 2)) (A333254 (A391239 (n + 1)).toNat)

end

end A391240.P1887143417269045915

/-! ## A391240.P6656531426281895849

`A167202(A391239(n+1))%A036453(n+1)`
-/

namespace A391240.P6656531426281895849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167202 (A391239 (n + 1)).toNat) (A036453 (n + 1))

end

end A391240.P6656531426281895849

/-!
# A391241: Numbers k such that there are no nontrivial factorizations of Stern polynomial B(k,x) to a pair of Stern polynomials B(i,x), B(j,x).

The programs for A391241, there is no canonical definition to state claims against.
-/

/-! ## A391241.P10525190491086941934

`filter[A205006(2*n+1), A391240(#)]`
-/

namespace A391241.P10525190491086941934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P10525190491086941934

/-! ## A391241.P5781105426986481653

`filter[A004280(n+1), A391240(#)]`
-/

namespace A391241.P5781105426986481653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P5781105426986481653

/-! ## A391241.P8028016808696648537

`filter[A004281(n), A391240(#)]`
-/

namespace A391241.P8028016808696648537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P8028016808696648537

/-! ## A391241.P18136676813402230674

`filter[A004274(n+1), A391240(#)]`
-/

namespace A391241.P18136676813402230674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P18136676813402230674

/-! ## A391241.P12860188003490329505

`filter[A004276(n+1), A391240(#)]`
-/

namespace A391241.P12860188003490329505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P12860188003490329505

/-! ## A391241.P16653898261480269255

`filter[A088948(n+1), A391240(#)]`
-/

namespace A391241.P16653898261480269255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P16653898261480269255

/-! ## A391241.P10587527243173105031

`filter[A053460(n+1), A391240(#)]`
-/

namespace A391241.P10587527243173105031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P10587527243173105031

/-! ## A391241.P12389363035760562120

`filter[A293205(n+1), A391240(#)]`
-/

namespace A391241.P12389363035760562120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P12389363035760562120

/-! ## A391241.P3548143940199765906

`filter[A171087(n+1), A391240(#)]`
-/

namespace A391241.P3548143940199765906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P3548143940199765906

/-! ## A391241.P374402634455386121

`filter[A042996(n+1), A391240(#)]`
-/

namespace A391241.P374402634455386121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P374402634455386121

/-! ## A391241.P12218309644369983625

`filter[A329048(2*n+1), A391240(#)]`
-/

namespace A391241.P12218309644369983625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329048 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P12218309644369983625

/-! ## A391241.P7092128968541309265

`filter[A196499(n+1), A391240(#)]`
-/

namespace A391241.P7092128968541309265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P7092128968541309265

/-! ## A391241.P848651696520516974

`filter[A066248(n+1), A391240(#)]`
-/

namespace A391241.P848651696520516974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P848651696520516974

/-! ## A391241.P3014673455635586250

`filter[A073898(n+1), A391240(#)]`
-/

namespace A391241.P3014673455635586250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P3014673455635586250

/-! ## A391241.P15223561188999888758

`filter[A047489(n+1), A391240(#)]`
-/

namespace A391241.P15223561188999888758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P15223561188999888758

/-! ## A391241.P12126261862396008034

`filter[A137698(n+1), A391240(#)]`
-/

namespace A391241.P12126261862396008034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P12126261862396008034

/-! ## A391241.P16043843896716822734

`filter[A047255(n+2), A391240(#)]`
-/

namespace A391241.P16043843896716822734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P16043843896716822734

/-! ## A391241.P16511131907666026946

`filter[A053661(n+1), A391240(#)]`
-/

namespace A391241.P16511131907666026946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P16511131907666026946

/-! ## A391241.P5980412828751290863

`filter[A242482(n+1), A391240(#)]`
-/

namespace A391241.P5980412828751290863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P5980412828751290863

/-! ## A391241.P4884432125012531837

`filter[A277383(n+2), A391240(#)]`
-/

namespace A391241.P4884432125012531837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P4884432125012531837

/-!
# A391242: Numbers k such that Stern polynomial B(k,x) can be expressed as a product of two Stern polynomials B(i,x) and B(j,x), with i, j < k.

The programs for A391242, there is no canonical definition to state claims against.
-/

/-! ## A391242.P4089480830117473972

`lt[2, A391239(n+1)]+1`
-/

namespace A391242.P4089480830117473972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391242.P4089480830117473972

/-! ## A391242.P770179319282209396

`lt[A136480(A007211(n+1)), A032741(n)]`
-/

namespace A391242.P770179319282209396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A007211 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391242.P770179319282209396

/-! ## A391242.P2536373419861185691

`lt[ratio[A193093(n)], A055396(n+1)]`
-/

namespace A391242.P2536373419861185691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193093 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A391242.P2536373419861185691

/-! ## A391242.P3664100838059237350

`lt[A125162(3*n+5), A111956(n+4)]+3`
-/

namespace A391242.P3664100838059237350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111956 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A391242.P3664100838059237350

/-!
# A391243: Odd numbers k such that Stern polynomial B(k,x) can be expressed as a product of two Stern polynomials B(i,x) and B(j,x), with i,j < k.

The programs for A391243, there is no canonical definition to state claims against.
-/

/-! ## A391243.P7114371010160868286

`∩[2*n+1, A391242(n+1)]`
-/

namespace A391243.P7114371010160868286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391243.P7114371010160868286

/-! ## A391243.P6964802554659296980

`∩[A391242(n+1), A004273(n)]`
-/

namespace A391243.P6964802554659296980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391243.P6964802554659296980

/-! ## A391243.P12470609331894422890

`∩[A391242(n+1), A004274(n)]`
-/

namespace A391243.P12470609331894422890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391243.P12470609331894422890

/-! ## A391243.P14241491166269977233

`∩[A391242(n+1), A020742(n)]`
-/

namespace A391243.P14241491166269977233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391243.P14241491166269977233

/-! ## A391243.P1967902450688812812

`∩[A391242(n+1), A060747(n)]`
-/

namespace A391243.P1967902450688812812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391243.P1967902450688812812

/-! ## A391243.P11278021248606817139

`∩[A391242(n+1), A062545(n)]`
-/

namespace A391243.P11278021248606817139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391243.P11278021248606817139

/-! ## A391243.P8243422394088805917

`∩[A391242(n+1), A130773(n)]`
-/

namespace A391243.P8243422394088805917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391243.P8243422394088805917

/-! ## A391243.P7266455752595557006

`∩[A391242(n+1), A163985(n)]`
-/

namespace A391243.P7266455752595557006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391243.P7266455752595557006

/-!
# A391245: Triangular table T(n,k) = n*k if A048720(n, A065621(k)) = n*k, otherwise 0, read by rows for n >= 1, 1 <= k <= n.

The programs for A391245, there is no canonical definition to state claims against.
-/

/-! ## A391245.P1606010761688204489

`A344880(A016791(n))*A391244(n+1)`
-/

namespace A391245.P1606010761688204489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (A016791 n).toNat * A391244 (n + 1)

end

end A391245.P1606010761688204489

/-! ## A391245.P6124253771426475188

`A075362(n+1)^A001163(A048993(n))`
-/

namespace A391245.P6124253771426475188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) ^ (A001163 (A048993 n).toNat : ℤ)

end

end A391245.P6124253771426475188

/-! ## A391245.P15876901740058864792

`A075362(n+1)%A325700(A359199(n))`
-/

namespace A391245.P15876901740058864792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075362 (n + 1)) (A325700 (A359199 n).toNat)

end

end A391245.P15876901740058864792

/-!
# A391246: Number of natural number pairs (x, y) such that x >= y, x*y = n and n = A048720(x, A065621(y)).

The programs for A391246, there is no canonical definition to state claims against.
-/

/-! ## A391246.P8863836951009985942

`A365632(A080212(n+1))`
-/

namespace A391246.P8863836951009985942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365632 (A080212 (n + 1)).toNat

end

end A391246.P8863836951009985942

/-! ## A391246.P17840573966286907981

`A127238(A318518(n+1)%A102994(n+1))`
-/

namespace A391246.P17840573966286907981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127238 (Int.tmod (A318518 (n + 1)) (A102994 (n + 1))).toNat

end

end A391246.P17840573966286907981

/-! ## A391246.P10415046410368132937

`A277696(gcd(A347050(n+1), A350355(3*n+4)))`
-/

namespace A391246.P10415046410368132937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277696 (Int.gcd (A347050 (n + 1)) (A350355 (3 * n + 4)))

end

end A391246.P10415046410368132937

/-! ## A391246.P36047237503950592

`A060128(A063509(n+1))`
-/

namespace A391246.P36047237503950592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A063509 (n + 1)).toNat

end

end A391246.P36047237503950592

/-! ## A391246.P873730261276753288

`A322794(A231716(n+1))`
-/

namespace A391246.P873730261276753288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (A231716 (n + 1)).toNat

end

end A391246.P873730261276753288

/-!
# A391247: Numbers k such that there are no divisor pair (d, k/d) with 1 < d <= k/d for which k = A048720(k/d, A065621(d)).

The programs for A391247, there is no canonical definition to state claims against.
-/

/-! ## A391247.P6990699935376635514

`eq[1, A391246(n+1)]+1`
-/

namespace A391247.P6990699935376635514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391247.P6990699935376635514

/-! ## A391247.P2566554719283911047

`A141310(lt[A391246(n+1), 2])`
-/

namespace A391247.P2566554719283911047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391246 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A391247.P2566554719283911047

/-! ## A391247.P17391075447443728858

`∑[A343240(∑[A070939(n)])]`
-/

namespace A391247.P17391075447443728858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343240 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391247.P17391075447443728858

/-! ## A391247.P16505170911650700091

`eq[A130209(2*n+3), A153006(A079981(n))]`
-/

namespace A391247.P16505170911650700091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130209 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (A079981 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391247.P16505170911650700091

/-! ## A391247.P16146468406074583191

`lt[A285773(3*n), A261223(A084534(2*n+3))]`
-/

namespace A391247.P16146468406074583191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285773 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (A084534 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391247.P16146468406074583191

/-!
# A391248: Odd composites k such that for all divisor pairs (d, k/d), d <= k/d, it holds that k = A048720(k/d, A065621(d)).

The programs for A391248, there is no canonical definition to state claims against.
-/

/-! ## A391248.P6703708858584687967

`∩[A325573(n+1), A335912(n+1)]`
-/

namespace A391248.P6703708858584687967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391248.P6703708858584687967

/-! ## A391248.P10265916837826319252

`∩[A290426(n+1), A391343(n+1)]`
-/

namespace A391248.P10265916837826319252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391248.P10265916837826319252

/-! ## A391248.P7568595151766072499

`∩[A335912(n+1), A391343(n+1)]`
-/

namespace A391248.P7568595151766072499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391248.P7568595151766072499

/-!
# A391249: Main diagonal of A391260.

The programs for A391249, there is no canonical definition to state claims against.
-/

/-! ## A391249.P12598363141206969068

`A391260((n+1)²+n²)`
-/

namespace A391249.P12598363141206969068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391260 ((n + 1) ^ 2 + n ^ 2)

end

end A391249.P12598363141206969068

/-! ## A391249.P16882058413397499941

`A391260(A001844(n))+A298931(3*n+2)`
-/

namespace A391249.P16882058413397499941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391260 (A001844 n).toNat + A298931 (3 * n + 2)

end

end A391249.P16882058413397499941

/-! ## A391249.P10963842003218721376

`C(A002620(2*(n+1)), A002967(A080100(n)))`
-/

namespace A391249.P10963842003218721376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002620 (2 * (n + 1))).toNat (A002967 (A080100 n).toNat).toNat

end

end A391249.P10963842003218721376

/-!
# A391250: Numbers k such that the square of Stern polynomial B(k,x) is not a Stern polynomial.

The programs for A391250, there is no canonical definition to state claims against.
-/

/-! ## A391250.P18030999950445428383

`lt[A071032(2*n+3), A333628(A278222(n))]`
-/

namespace A391250.P18030999950445428383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071032 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333628 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391250.P18030999950445428383

/-! ## A391250.P12494218666408439611

`lt[1-A140080(n²), A086784(n)]`
-/

namespace A391250.P12494218666408439611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A140080 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391250.P12494218666408439611

/-! ## A391250.P1677207580763471752

`lt[A389532(n+4), A163511(A083031(n+1))]`
-/

namespace A391250.P1677207580763471752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389532 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A083031 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391250.P1677207580763471752

/-! ## A391250.P2298214091432709283

`lt[A296774(A318810(n+1)), A124772(n)]`
-/

namespace A391250.P2298214091432709283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296774 (A318810 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391250.P2298214091432709283

/-! ## A391250.P2070553379692026176

`lt[A095771(2*(n+2)), A000110(A124772(n))]`
-/

namespace A391250.P2070553379692026176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095771 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A124772 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391250.P2070553379692026176

/-!
# A391251: Numbers k such that the square of Stern polynomial B(k,x) is also a Stern polynomial.

The programs for A391251, there is no canonical definition to state claims against.
-/

/-! ## A391251.P13096798329215880496

`record[sqrt(A391249(n+1))]`
-/

namespace A391251.P13096798329215880496
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A391249 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391251.P13096798329215880496

/-! ## A391251.P8363236021835199794

`A000188(record[A391249(n+1)])`
-/

namespace A391251.P8363236021835199794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A391251.P8363236021835199794

/-! ## A391251.P13341934332951146449

`A175948(A114391(n+1))`
-/

namespace A391251.P13341934332951146449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (A114391 (n + 1)).toNat

end

end A391251.P13341934332951146449

/-! ## A391251.P12159804573648738193

`lt[A334045(n+1), A181819(n+1)]+1`
-/

namespace A391251.P12159804573648738193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P12159804573648738193

/-! ## A391251.P13426731952714864302

`eq[A067742(A366637(2*n+1)), A069010(n)]`
-/

namespace A391251.P13426731952714864302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A366637 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391251.P13426731952714864302

/-!
# A391253: Odd semiprimes p*q such that either p*q = A048720(p,x) or p*q = A048720(q,x) for some x, where A048720 is the carryless binary multiplication.

The programs for A391253, there is no canonical definition to state claims against.
-/

/-! ## A391253.P17359799296472093561

`A199426(A391257(n+1))`
-/

namespace A391253.P17359799296472093561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199426 (A391257 (n + 1)).toNat

end

end A391253.P17359799296472093561

/-! ## A391253.P13659652090668317541

`A199426(A391336(n+1))`
-/

namespace A391253.P13659652090668317541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199426 (A391336 (n + 1)).toNat

end

end A391253.P13659652090668317541

/-! ## A391253.P7389677039120977508

`A391257(A032555(n+1))`
-/

namespace A391253.P7389677039120977508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (A032555 (n + 1)).toNat

end

end A391253.P7389677039120977508

/-! ## A391253.P1782036649429161397

`A391257(A032559(n+1))`
-/

namespace A391253.P1782036649429161397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (A032559 (n + 1)).toNat

end

end A391253.P1782036649429161397

/-! ## A391253.P15647496899360571955

`A391257(A077739(n+1))`
-/

namespace A391253.P15647496899360571955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (A077739 (n + 1)).toNat

end

end A391253.P15647496899360571955

/-!
# A391256: Odd semiprimes p*q, such that Stern polynomial B(p*q,x) is a product of B(p,x) and B(q,x).

The programs for A391256, there is no canonical definition to state claims against.
-/

/-! ## A391256.P6744446434313957006

`filter[A391243(n+1), A359828(#)]`
-/

namespace A391256.P6744446434313957006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A391256.P6744446434313957006

/-! ## A391256.P12529385824259968944

`filter[A391243(n+1), A064911(#)]`
-/

namespace A391256.P12529385824259968944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A391256.P12529385824259968944

/-! ## A391256.P14467425742784419355

`filter[A391243(n+1), A101040(#)]`
-/

namespace A391256.P14467425742784419355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A391256.P14467425742784419355

/-! ## A391256.P3345559326843361905

`filter[A391243(n+1), A353480(#)]`
-/

namespace A391256.P3345559326843361905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A391256.P3345559326843361905

/-! ## A391256.P14321872680403372647

`∩[A046315(n+1), A391242(n+1)]`
-/

namespace A391256.P14321872680403372647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391256.P14321872680403372647

/-!
# A391257: Odd semiprimes p*q, such that Stern polynomial B(p*q,x) is a multiple of either B(p,x) or B(q,x).

The programs for A391257, there is no canonical definition to state claims against.
-/

/-! ## A391257.P1524704233895524721

`A391336(n+1)%A335743(n+1)`
-/

namespace A391257.P1524704233895524721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391336 (n + 1)) (A335743 (n + 1))

end

end A391257.P1524704233895524721

/-! ## A391257.P12486350614506653416

`A391336(n+1)+A010054(A335743(n+1)+1)`
-/

namespace A391257.P12486350614506653416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391336 (n + 1) + A010054 (A335743 (n + 1) + 1).toNat

end

end A391257.P12486350614506653416

/-! ## A391257.P18063157248619466552

`A391336(n+1)+A358777(A323271(2*n+1))`
-/

namespace A391257.P18063157248619466552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391336 (n + 1) + A358777 (A323271 (2 * n + 1)).toNat

end

end A391257.P18063157248619466552

/-! ## A391257.P17903261201044635573

`or(A010060(A217102(2*n+1)), A391336(n+1))`
-/

namespace A391257.P17903261201044635573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A217102 (2 * n + 1)).toNat) (A391336 (n + 1))

end

end A391257.P17903261201044635573

/-! ## A391257.P6055232561292217039

`A391336(n+1)+A010054(A110172(n+1)+1)`
-/

namespace A391257.P6055232561292217039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391336 (n + 1) + A010054 (A110172 (n + 1) + 1).toNat

end

end A391257.P6055232561292217039

/-!
# A391259: Square array A(n,k), read by antidiagonals: product of two Stern polynomials, B(n,x) and B(k,x), converted to a natural number via prime factorization encoding explained in A297845.

The programs for A391259, there is no canonical definition to state claims against.
-/

/-! ## A391259.P13742465177347995726

`A260442(A048675(A260443(A277416(A391260(n+1)))))`
-/

namespace A391259.P13742465177347995726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 (A048675 (A260443 (A277416 (A391260 (n + 1)).toNat).toNat).toNat).toNat

end

end A391259.P13742465177347995726

/-! ## A391259.P13333850708728707213

`A260443(A277416(A277415(A391260(n+1))))`
-/

namespace A391259.P13333850708728707213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A277416 (A277415 (A391260 (n + 1)).toNat).toNat).toNat

end

end A391259.P13333850708728707213

/-!
# A391263: The number of two-component spanning forests of the wheel graph W_{n+1} in which vertices v_1 and v_3 lie in different components.

The programs for A391263, the canonical program `A391263.P17886300817763852613` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391263 has offset 2).

The definition of A391263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391263.P17886300817763852613

`2*A004146(n+1)-2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A391263

/-- `2*A004146(n+1)-2` -/
def P17886300817763852613.Spec : Prop :=
  ∀ n, P17886300817763852613.a n = A391263 (n + 2)

theorem P17886300817763852613.correct : P17886300817763852613.Spec := by
  intro n
  simp only [A391263, Nat.add_sub_cancel]

end A391263

/-! ## A391263.P6198638937357430639

`2*A005248(n+1)-6`
-/

namespace A391263.P6198638937357430639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005248 (n + 1) - 6

end

end A391263.P6198638937357430639

namespace A391263

/-- `2*A005248(n+1)-6` -/
def P6198638937357430639.Spec : Prop :=
  ∀ n, P6198638937357430639.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P9973616392868215924

`∑[ogf((8x-2x^2)/(1-3x+x^2))]`
-/

namespace A391263.P9973616392868215924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -2] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391263.P9973616392868215924

namespace A391263

/-- `∑[ogf((8x-2x^2)/(1-3x+x^2))]` -/
def P9973616392868215924.Spec : Prop :=
  ∀ n, P9973616392868215924.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P3818467588099565212

`ogf((8x-2x^2)/(1-4x+4x^2-x^3))`
-/

namespace A391263.P3818467588099565212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -2] [1, -4, 4, -1] n

end

end A391263.P3818467588099565212

namespace A391263

/-- `ogf((8x-2x^2)/(1-4x+4x^2-x^3))` -/
def P3818467588099565212.Spec : Prop :=
  ∀ n, P3818467588099565212.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P3225739191519828995

`3*(a(n-1)+2)-a(n-2)` with `a(0)=0, a(1)=8`
-/

namespace A391263.P3225739191519828995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  3 * (a (n - 1) + 2) - a (n - 2)

end

end A391263.P3225739191519828995

namespace A391263

/-- `3*(a(n-1)+2)-a(n-2)` -/
def P3225739191519828995.Spec : Prop :=
  ∀ n, P3225739191519828995.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P16628572683150025258

`3*a(n-1)-(a(n-2)-6)` with `a(0)=0, a(1)=8`
-/

namespace A391263.P16628572683150025258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  3 * a (n - 1) - (a (n - 2) - 6)

end

end A391263.P16628572683150025258

namespace A391263

/-- `3*a(n-1)-(a(n-2)-6)` -/
def P16628572683150025258.Spec : Prop :=
  ∀ n, P16628572683150025258.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P16321844555560326351

`2*(A005592(n+1)-2)`
-/

namespace A391263.P16321844555560326351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005592 (n + 1) - 2)

end

end A391263.P16321844555560326351

namespace A391263

/-- `2*(A005592(n+1)-2)` -/
def P16321844555560326351.Spec : Prop :=
  ∀ n, P16321844555560326351.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P1010552087198467746

`2*A007390(2*(n+1))`
-/

namespace A391263.P1010552087198467746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007390 (2 * (n + 1))

end

end A391263.P1010552087198467746

namespace A391263

/-- `2*A007390(2*(n+1))` -/
def P1010552087198467746.Spec : Prop :=
  ∀ n, P1010552087198467746.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P1022872501831260995

`A168674(2*n+1)-4`
-/

namespace A391263.P1022872501831260995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 (2 * n + 1) - 4

end

end A391263.P1022872501831260995

namespace A391263

/-- `A168674(2*n+1)-4` -/
def P1022872501831260995.Spec : Prop :=
  ∀ n, P1022872501831260995.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P14785577764765317479

`A022319(2*n+1)-5`
-/

namespace A391263.P14785577764765317479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 (2 * n + 1) - 5

end

end A391263.P14785577764765317479

namespace A391263

/-- `A022319(2*n+1)-5` -/
def P14785577764765317479.Spec : Prop :=
  ∀ n, P14785577764765317479.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P121790254712216229

`A153263(2*n+1)-5`
-/

namespace A391263.P121790254712216229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153263 (2 * n + 1) - 5

end

end A391263.P121790254712216229

namespace A391263

/-- `A153263(2*n+1)-5` -/
def P121790254712216229.Spec : Prop :=
  ∀ n, P121790254712216229.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P4860202164988250480

`A022112(2*n+1)-6`
-/

namespace A391263.P4860202164988250480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 (2 * n + 1) - 6

end

end A391263.P4860202164988250480

namespace A391263

/-- `A022112(2*n+1)-6` -/
def P4860202164988250480.Spec : Prop :=
  ∀ n, P4860202164988250480.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P15124633893298230498

`A192762(2*n)+2*n`
-/

namespace A391263.P15124633893298230498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192762 (2 * n) + (2 * n : ℤ)

end

end A391263.P15124633893298230498

namespace A391263

/-- `A192762(2*n)+2*n` -/
def P15124633893298230498.Spec : Prop :=
  ∀ n, P15124633893298230498.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P3213205929367682919

`A256233(n)+A122678(n+1)`
-/

namespace A391263.P3213205929367682919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256233 n + A122678 (n + 1)

end

end A391263.P3213205929367682919

namespace A391263

/-- `A256233(n)+A122678(n+1)` -/
def P3213205929367682919.Spec : Prop :=
  ∀ n, P3213205929367682919.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P8227083923001262955

`A210731(2*n)+A002062(2*n)`
-/

namespace A391263.P8227083923001262955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 (2 * n) + A002062 (2 * n)

end

end A391263.P8227083923001262955

namespace A391263

/-- `A210731(2*n)+A002062(2*n)` -/
def P8227083923001262955.Spec : Prop :=
  ∀ n, P8227083923001262955.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P1042790533356271899

`A168193(2*n)+A019274(2*n+1)`
-/

namespace A391263.P1042790533356271899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 (2 * n) + A019274 (2 * n + 1)

end

end A391263.P1042790533356271899

namespace A391263

/-- `A168193(2*n)+A019274(2*n+1)` -/
def P1042790533356271899.Spec : Prop :=
  ∀ n, P1042790533356271899.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P11046105347421922993

`A210675(2*n)-A065220(2*n+1)`
-/

namespace A391263.P11046105347421922993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210675 (2 * n) - A065220 (2 * n + 1)

end

end A391263.P11046105347421922993

namespace A391263

/-- `A210675(2*n)-A065220(2*n+1)` -/
def P11046105347421922993.Spec : Prop :=
  ∀ n, P11046105347421922993.a n = A391263 (n + 2)

end A391263

/-! ## A391263.P12888869478298840118

`A004146(n+1)+A256233(n)+A004146(n)`
-/

namespace A391263.P12888869478298840118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 (n + 1) + (A256233 n + A004146 n)

end

end A391263.P12888869478298840118

namespace A391263

/-- `A004146(n+1)+A256233(n)+A004146(n)` -/
def P12888869478298840118.Spec : Prop :=
  ∀ n, P12888869478298840118.a n = A391263 (n + 2)

end A391263

/-!
# A391264: a(3*n) = 1, a(3*n+1) = 3*n+1, a(3*n+2) = (3*n+1)*(3*n+2)/2.

The programs for A391264, the canonical program `A391264.P7367445441425205946` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391264 has offset 0).

The definition of A391264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391264.P7367445441425205946

`C(n, n%3)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A391264

/-- `C(n, n%3)` -/
def P7367445441425205946.Spec : Prop :=
  ∀ n, (P7367445441425205946.a n : ℤ) = A391264 n

theorem P7367445441425205946.correct : P7367445441425205946.Spec := by
  intro n
  simp only [A391264]

end A391264

/-! ## A391264.P4212276651252534271

`C(n, 3*floor(n/3))`
-/

namespace A391264.P4212276651252534271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (3 * ⌊(n : ℚ) / 3⌋).toNat

end

end A391264.P4212276651252534271

namespace A391264

/-- `C(n, 3*floor(n/3))` -/
def P4212276651252534271.Spec : Prop :=
  ∀ n, (P4212276651252534271.a n : ℤ) = A391264 n

end A391264

/-! ## A391264.P7387678254544781897

`A000027(C(n, A010872(n)))`
-/

namespace A391264.P7387678254544781897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose n (A010872 n).toNat)

end

end A391264.P7387678254544781897

namespace A391264

/-- `A000027(C(n, A010872(n)))` -/
def P7387678254544781897.Spec : Prop :=
  ∀ n, P7387678254544781897.a n = A391264 n

end A391264

/-! ## A391264.P10196235194389298317

`A000027(C(n, A093390(3*n)))`
-/

namespace A391264.P10196235194389298317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose n (A093390 (3 * n)).toNat)

end

end A391264.P10196235194389298317

namespace A391264

/-- `A000027(C(n, A093390(3*n)))` -/
def P10196235194389298317.Spec : Prop :=
  ∀ n, P10196235194389298317.a n = A391264 n

end A391264

/-! ## A391264.P1128186326713592486

`A028310(C(n, A010872(n)))`
-/

namespace A391264.P1128186326713592486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose n (A010872 n).toNat)

end

end A391264.P1128186326713592486

namespace A391264

/-- `A028310(C(n, A010872(n)))` -/
def P1128186326713592486.Spec : Prop :=
  ∀ n, P1128186326713592486.a n = A391264 n

end A391264

/-! ## A391264.P16303406911219815104

`A028310(C(n, A080425(2*n)))`
-/

namespace A391264.P16303406911219815104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose n (A080425 (2 * n)).toNat)

end

end A391264.P16303406911219815104

namespace A391264

/-- `A028310(C(n, A080425(2*n)))` -/
def P16303406911219815104.Spec : Prop :=
  ∀ n, P16303406911219815104.a n = A391264 n

end A391264

/-! ## A391264.P15292489936666338374

`A098172(A389142(n+1))`
-/

namespace A391264.P15292489936666338374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098172 (A389142 (n + 1)).toNat

end

end A391264.P15292489936666338374

namespace A391264

/-- `A098172(A389142(n+1))` -/
def P15292489936666338374.Spec : Prop :=
  ∀ n, P15292489936666338374.a n = A391264 n

end A391264

/-! ## A391264.P6700869867750491406

`A007318(A143097(A143101(n+1)-n))`
-/

namespace A391264.P6700869867750491406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A143097 (A143101 (n + 1) - (n : ℤ)).toNat).toNat

end

end A391264.P6700869867750491406

namespace A391264

/-- `A007318(A143097(A143101(n+1)-n))` -/
def P6700869867750491406.Spec : Prop :=
  ∀ n, P6700869867750491406.a n = A391264 n

end A391264

/-! ## A391264.P5745266549896881767

`A007318(A064429(A143101(n+1)-(n+1)))`
-/

namespace A391264.P5745266549896881767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A064429 (A143101 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A391264.P5745266549896881767

namespace A391264

/-- `A007318(A064429(A143101(n+1)-(n+1)))` -/
def P5745266549896881767.Spec : Prop :=
  ∀ n, P5745266549896881767.a n = A391264 n

end A391264

/-!
# A391265: a(n) = Sum_{k=0..floor(2*n/5)} binomial(k,2*n-5*k).

The programs for A391265, the canonical program `A391265.P12173664234301480603` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391265 has offset 0).

The definition of A391265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391265.P12173664234301480603

`2*a(n-3)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A391265

/-- `2*a(n-3)+a(n-5)-a(n-6)` -/
def P12173664234301480603.Spec : Prop :=
  ∀ n, P12173664234301480603.a n = A391265 n

theorem P12173664234301480603.correct : P12173664234301480603.Spec := by
  intro n
  simp only [A391265]

end A391265

/-! ## A391265.P10403859994815154567

`A017837(2*n)`
-/

namespace A391265.P10403859994815154567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (2 * n)

end

end A391265.P10403859994815154567

namespace A391265

/-- `A017837(2*n)` -/
def P10403859994815154567.Spec : Prop :=
  ∀ n, P10403859994815154567.a n = A391265 n

end A391265

/-! ## A391265.P9278700477547817883

`A127840(2*n+7)`
-/

namespace A391265.P9278700477547817883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (2 * n + 7)

end

end A391265.P9278700477547817883

namespace A391265

/-- `A127840(2*n+7)` -/
def P9278700477547817883.Spec : Prop :=
  ∀ n, P9278700477547817883.a n = A391265 n

end A391265

/-!
# A391271: Negated discriminants of imaginary quadratic fields F such that 16 is an 8th power in F_2, where F_2 is the completion of F with respect to a place above 2.

The programs for A391271, there is no canonical definition to state claims against.
-/

/-! ## A391271.P11948483223988965311

`A156097(3*n+7)+A001055(A156052(3*n+2))`
-/

namespace A391271.P11948483223988965311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156097 (3 * n + 7) + A001055 (A156052 (3 * n + 2)).toNat

end

end A391271.P11948483223988965311

/-!
# A391272: Row sums of the triangle A391318, given by T(n,k) = T(n-1,k) + T(n-1,k-1) + T(n-2,k-1) + 1, with T(0,0) = T(n,-1) = T(n,n+1) = 0.

The programs for A391272, the canonical program `A391272.P13329201290402455589` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391272 has offset 0).

The definition of A391272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391272.P9359659357292561336

`∑[ogf((2x-x^2)/(1-3x+x^2+x^3))]`
-/

namespace A391272.P9359659357292561336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -3, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391272.P9359659357292561336

namespace A391272

/-- `∑[ogf((2x-x^2)/(1-3x+x^2+x^3))]` -/
def P9359659357292561336.Spec : Prop :=
  ∀ n, P9359659357292561336.a n = A391272 n

end A391272

/-! ## A391272.P540422450543250602

`ogf((2x-x^2)/(1-4x+4x^2-x^4))`
-/

namespace A391272.P540422450543250602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -4, 4, 0, -1] n

end

end A391272.P540422450543250602

namespace A391272

/-- `ogf((2x-x^2)/(1-4x+4x^2-x^4))` -/
def P540422450543250602.Spec : Prop :=
  ∀ n, P540422450543250602.a n = A391272 n

end A391272

/-! ## A391272.P13329201290402455589

`∑[2*a(n-1)+a(n-2)+1]` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A391272

/-- `∑[2*a(n-1)+a(n-2)+1]` -/
def P13329201290402455589.Spec : Prop :=
  ∀ n, (P13329201290402455589.a n : ℤ) = A391272 n

theorem P13329201290402455589.correct : P13329201290402455589.Spec := by
  intro n
  simp only [A391272]

end A391272

/-! ## A391272.P17686280866690870572

`2*a(n-1)+1+a(n-2)+n` with `a(0)=0, a(1)=2`
-/

namespace A391272.P17686280866690870572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * a (n - 1) + 1 + (a (n - 2) + n)

end

end A391272.P17686280866690870572

namespace A391272

/-- `2*a(n-1)+1+a(n-2)+n` -/
def P17686280866690870572.Spec : Prop :=
  ∀ n, (P17686280866690870572.a n : ℤ) = A391272 n

end A391272

/-! ## A391272.P4090886733130479045

`∑[a(n-1)+1+a(n-1)+a(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A391272.P4090886733130479045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 1 + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391272.P4090886733130479045

namespace A391272

/-- `∑[a(n-1)+1+a(n-1)+a(n-2)]` -/
def P4090886733130479045.Spec : Prop :=
  ∀ n, (P4090886733130479045.a n : ℤ) = A391272 n

theorem P4090886733130479045.correct : P4090886733130479045.Spec := by
  intro n
  simp only [A391272, Nat.add_sub_cancel, A391272.P4090886733130479045.f1, A391272.P4090886733130479045.a, A391272.P13329201290402455589.f1, A391272.P13329201290402455589.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A391272

/-! ## A391272.P15548991251449101584

`n+1+a(n-1)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A391272.P15548991251449101584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  n + 1 + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A391272.P15548991251449101584

namespace A391272

/-- `n+1+a(n-1)+a(n-1)+a(n-2)` -/
def P15548991251449101584.Spec : Prop :=
  ∀ n, (P15548991251449101584.a n : ℤ) = A391272 n

end A391272

/-! ## A391272.P12886656315870380495

`A114697(n)-A008619(n)`
-/

namespace A391272.P12886656315870380495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114697 n - A008619 n

end

end A391272.P12886656315870380495

namespace A391272

/-- `A114697(n)-A008619(n)` -/
def P12886656315870380495.Spec : Prop :=
  ∀ n, P12886656315870380495.a n = A391272 n

end A391272

/-! ## A391272.P9392906514503874817

`A117585(n)-A171842(n)`
-/

namespace A391272.P9392906514503874817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117585 n - A171842 n

end

end A391272.P9392906514503874817

namespace A391272

/-- `A117585(n)-A171842(n)` -/
def P9392906514503874817.Spec : Prop :=
  ∀ n, P9392906514503874817.a n = A391272 n

end A391272

/-! ## A391272.P17393980174748011017

`A048776(n)-A000129(n+1)`
-/

namespace A391272.P17393980174748011017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048776 n - A000129 (n + 1)

end

end A391272.P17393980174748011017

namespace A391272

/-- `A048776(n)-A000129(n+1)` -/
def P17393980174748011017.Spec : Prop :=
  ∀ n, P17393980174748011017.a n = A391272 n

end A391272

/-! ## A391272.P5537686398546152474

`A129589(n+1)-A307465(n)`
-/

namespace A391272.P5537686398546152474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129589 (n + 1) - A307465 n

end

end A391272.P5537686398546152474

namespace A391272

/-- `A129589(n+1)-A307465(n)` -/
def P5537686398546152474.Spec : Prop :=
  ∀ n, P5537686398546152474.a n = A391272 n

end A391272

/-! ## A391272.P2518681297682769796

`A048776(n)-A000129(n)-A001333(n)`
-/

namespace A391272.P2518681297682769796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048776 n - A000129 n - A001333 n

end

end A391272.P2518681297682769796

namespace A391272

/-- `A048776(n)-A000129(n)-A001333(n)` -/
def P2518681297682769796.Spec : Prop :=
  ∀ n, P2518681297682769796.a n = A391272 n

end A391272

/-! ## A391272.P12466195141002806194

`(A048746(n)-(n+1))/2`
-/

namespace A391272.P12466195141002806194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048746 n - (n + 1 : ℤ) : ℚ) / 2

end

end A391272.P12466195141002806194

namespace A391272

/-- `(A048746(n)-(n+1))/2` -/
def P12466195141002806194.Spec : Prop :=
  ∀ n, P12466195141002806194.a n = (A391272 n : ℚ)

end A391272

/-! ## A391272.P11430269645322441672

`A048777(n)-A117585(n)`
-/

namespace A391272.P11430269645322441672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048777 n - A117585 n

end

end A391272.P11430269645322441672

namespace A391272

/-- `A048777(n)-A117585(n)` -/
def P11430269645322441672.Spec : Prop :=
  ∀ n, P11430269645322441672.a n = A391272 n

end A391272

/-! ## A391272.P5620066670335393130

`A117585(n+1)-A001333(n+2)`
-/

namespace A391272.P5620066670335393130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117585 (n + 1) - A001333 (n + 2)

end

end A391272.P5620066670335393130

namespace A391272

/-- `A117585(n+1)-A001333(n+2)` -/
def P5620066670335393130.Spec : Prop :=
  ∀ n, P5620066670335393130.a n = A391272 n

end A391272

/-! ## A391272.P5810445101685054229

`A000129(n+1)+A117585(n+1)-A048654(n+1)`
-/

namespace A391272.P5810445101685054229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A117585 (n + 1) - A048654 (n + 1))

end

end A391272.P5810445101685054229

namespace A391272

/-- `A000129(n+1)+A117585(n+1)-A048654(n+1)` -/
def P5810445101685054229.Spec : Prop :=
  ∀ n, P5810445101685054229.a n = A391272 n

end A391272

/-!
# A391273: Smallest base b >= 2 for which one "Reverse and Add" step in base b starting from n yields a palindrome in base b.

The programs for A391273, there is no canonical definition to state claims against.
-/

/-! ## A391273.P15177167018212498582

`A286520(3*n+5)+A108103(A103196(n))`
-/

namespace A391273.P15177167018212498582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286520 (3 * n + 5) + A108103 (A103196 n).toNat

end

end A391273.P15177167018212498582

/-! ## A391273.P15934213926437506329

`A199968(xor(A007947(n+1), A098844(2*(n+2))))`
-/

namespace A391273.P15934213926437506329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (Int.xor (A007947 (n + 1)) (A098844 (2 * (n + 2)))).toNat

end

end A391273.P15934213926437506329

/-! ## A391273.P16236867557144533785

`A384890(A195600(n))+A000034(n)`
-/

namespace A391273.P16236867557144533785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384890 (A195600 n).toNat + A000034 n

end

end A391273.P16236867557144533785

/-! ## A391273.P8547773650868231925

`A129654(A033999(n)+A001248(2*n+1))`
-/

namespace A391273.P8547773650868231925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (A033999 n + A001248 (2 * n + 1)).toNat

end

end A391273.P8547773650868231925

/-! ## A391273.P5736944338019728021

`A129654(A001248(2*n+1)-A040001(n))`
-/

namespace A391273.P5736944338019728021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (A001248 (2 * n + 1) - A040001 n).toNat

end

end A391273.P5736944338019728021

/-!
# A391274: Expansion of g/(1 - x*g)^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391274, there is no canonical definition to state claims against.
-/

/-! ## A391274.P4362314795531641152

`A189484(A014329(n))`
-/

namespace A391274.P4362314795531641152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189484 (A014329 n).toNat

end

end A391274.P4362314795531641152

/-!
# A391275: Expansion of (g/(1 - x*g))^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391275, there is no canonical definition to state claims against.
-/

/-! ## A391275.P17828464828043434013

`A258746(A033312(n+2)%A142873(n+4))`
-/

namespace A391275.P17828464828043434013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (Int.tmod (A033312 (n + 2)) (A142873 (n + 4))).toNat

end

end A391275.P17828464828043434013

/-!
# A391276: Expansion of g^2/(1 - x*g)^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391276, there is no canonical definition to state claims against.
-/

/-! ## A391276.P2976062183509752411

`A083036(A036378(3*n+2))+n`
-/

namespace A391276.P2976062183509752411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083036 (A036378 (3 * n + 2)).toNat + (n : ℤ)

end

end A391276.P2976062183509752411

/-!
# A391277: Expansion of g^3/(1 - x*g)^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391277, there is no canonical definition to state claims against.
-/

/-! ## A391277.P5605958831634831648

`A086993(A003945(n))+A001906(2*n)`
-/

namespace A391277.P5605958831634831648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086993 (A003945 n).toNat + A001906 (2 * n)

end

end A391277.P5605958831634831648

/-!
# A391278: Expansion of (g/(1 - x*g))^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391278, there is no canonical definition to state claims against.
-/

/-! ## A391278.P1414293278997377438

`A321695(A005040(n+2)*A028260(n+1))`
-/

namespace A391278.P1414293278997377438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321695 (A005040 (n + 2) * A028260 (n + 1)).toNat

end

end A391278.P1414293278997377438

/-!
# A391280: Array read by ascending antidiagonals: T(n,k) is the number of primes p in the range n*(k-1) < p <= n*k.

The programs for A391280, there is no canonical definition to state claims against.
-/

/-! ## A391280.P15901432366838062758

`A335294(A320078(3*n+2)+A113693(n+1))`
-/

namespace A391280.P15901432366838062758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335294 (A320078 (3 * n + 2) + A113693 (n + 1)).toNat

end

end A391280.P15901432366838062758

/-!
# A391281: Primitive e-unitary perfect numbers: powerful numbers k for which A322857(k) = 2*k.

The programs for A391281, there is no canonical definition to state claims against.
-/

/-! ## A391281.P17771674739801456145

`A054980(A015841(n+1))`
-/

namespace A391281.P17771674739801456145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054980 (A015841 (n + 1)).toNat

end

end A391281.P17771674739801456145

/-!
# A391283: Primitive exponential admirable numbers: the powerful terms in A336680.

The programs for A391283, there is no canonical definition to state claims against.
-/

/-! ## A391283.P4496598632041322030

`∩[A001694(n+1), A336680(n+1)]`
-/

namespace A391283.P4496598632041322030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P4496598632041322030

/-! ## A391283.P12118279908107932295

`∩[A192636(n+1), A336680(n+1)]`
-/

namespace A391283.P12118279908107932295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P12118279908107932295

/-! ## A391283.P1689863691671972735

`∩[A286708(n+1), A336680(n+1)]`
-/

namespace A391283.P1689863691671972735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P1689863691671972735

/-! ## A391283.P10203673117570840320

`∩[A325240(n+1), A336680(n+1)]`
-/

namespace A391283.P10203673117570840320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P10203673117570840320

/-! ## A391283.P16834555602148343869

`∩[A328136(n+1), A336680(n+1)]`
-/

namespace A391283.P16834555602148343869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P16834555602148343869

/-! ## A391283.P14423075391540098416

`∩[A335851(n+1), A336680(n+1)]`
-/

namespace A391283.P14423075391540098416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P14423075391540098416

/-! ## A391283.P13361364916491104388

`∩[A336680(n+1), A356871(n+1)]`
-/

namespace A391283.P13361364916491104388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P13361364916491104388

/-! ## A391283.P804029659000575462

`∩[A336680(n+1), A363169(n+1)]`
-/

namespace A391283.P804029659000575462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P804029659000575462

/-! ## A391283.P14048643195075629531

`∩[A336680(n+1), A363216(n+1)]`
-/

namespace A391283.P14048643195075629531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P14048643195075629531

/-! ## A391283.P835570724807788213

`∩[A336680(n+1), A376172(n+1)]`
-/

namespace A391283.P835570724807788213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P835570724807788213

/-! ## A391283.P6261120903116141590

`∩[A336680(n+1), A376217(n+1)]`
-/

namespace A391283.P6261120903116141590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P6261120903116141590

/-! ## A391283.P7672888592418515340

`∩[A336680(n+1), A387256(n+1)]`
-/

namespace A391283.P7672888592418515340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P7672888592418515340

/-! ## A391283.P5471990601258637867

`∩[A336680(n+1), A390010(n+1)]`
-/

namespace A391283.P5471990601258637867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P5471990601258637867

/-! ## A391283.P9743662502079935310

`∩[A336680(n+1), A390950(n+1)]`
-/

namespace A391283.P9743662502079935310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P9743662502079935310

/-! ## A391283.P3744469156410965980

`∩[A336680(n+1), A391087(n+1)]`
-/

namespace A391283.P3744469156410965980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P3744469156410965980

/-! ## A391283.P1956045941840333532

`∩[A336680(n+1), A391139(n+1)]`
-/

namespace A391283.P1956045941840333532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391283.P1956045941840333532

/-!
# A391284: Primitive odd exponential admirable numbers: the powerful terms in A336681.

The programs for A391284, there is no canonical definition to state claims against.
-/

/-! ## A391284.P10298738507258229179

`A329188(n+1)^A006519(A277324(n))`
-/

namespace A391284.P10298738507258229179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329188 (n + 1) : ℚ) ^ (A006519 (A277324 n).toNat : ℤ)

end

end A391284.P10298738507258229179

/-! ## A391284.P17267544390309428289

`∩[A336681(n+1), A391430(n+1)]`
-/

namespace A391284.P17267544390309428289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391284.P17267544390309428289

/-! ## A391284.P18122991057129315935

`A329188(A276142(n+1))*A329188(n+1)`
-/

namespace A391284.P18122991057129315935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329188 (A276142 (n + 1)).toNat * A329188 (n + 1)

end

end A391284.P18122991057129315935

/-! ## A391284.P17489710264058320176

`A329188(A154701(n+1))*A329188(n+1)`
-/

namespace A391284.P17489710264058320176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329188 (A154701 (n + 1)).toNat * A329188 (n + 1)

end

end A391284.P17489710264058320176

/-!
# A391285: Number of decimal places which are known after n terms of the continued fraction for the silver ratio.

The programs for A391285, there is no canonical definition to state claims against.
-/

/-! ## A391285.P12941882191768211172

`∑[A285975(record[A026758(2*n)])]`
-/

namespace A391285.P12941882191768211172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285975 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391285.P12941882191768211172

/-! ## A391285.P14949792774432563101

`A029837(A345166(3*n+2)+A005940(n+1))`
-/

namespace A391285.P14949792774432563101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A345166 (3 * n + 2) + A005940 (n + 1)).toNat

end

end A391285.P14949792774432563101

/-!
# A391286: Total number of 123 patterns in all heapable permutations of length n.

The programs for A391286, there is no canonical definition to state claims against.
-/

/-! ## A391286.P12024703834591379491

`A331608(n)-A103128(A259943(n+1))`
-/

namespace A391286.P12024703834591379491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331608 n - A103128 (A259943 (n + 1)).toNat

end

end A391286.P12024703834591379491

/-! ## A391286.P4500881935312679306

`A238628(A367766(n+1))+A056986(n+1)`
-/

namespace A391286.P4500881935312679306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238628 (A367766 (n + 1)).toNat + A056986 (n + 1)

end

end A391286.P4500881935312679306

/-!
# A391294: Expansion of g^2/(1 + x*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391294, there is no canonical definition to state claims against.
-/

/-! ## A391294.P9679538331870522861

`A001764(n+1)-A023053(n+1)`
-/

namespace A391294.P9679538331870522861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 1) - A023053 (n + 1)

end

end A391294.P9679538331870522861

/-! ## A391294.P80530600797802368

`A369488(n)+A054372(A054357(2*n+1))`
-/

namespace A391294.P80530600797802368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369488 n + A054372 (A054357 (2 * n + 1)).toNat

end

end A391294.P80530600797802368

/-!
# A391295: Expansion of g^2/(1 + x^2*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391295, there is no canonical definition to state claims against.
-/

/-! ## A391295.P9365602577952706999

`A368316(floor(exp(n)))`
-/

namespace A391295.P9365602577952706999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368316 ⌊Real.exp (n : ℝ)⌋.toNat

end

end A391295.P9365602577952706999

/-!
# A391296: Expansion of g^2/(1 + x^3*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391296, there is no canonical definition to state claims against.
-/

/-! ## A391296.P13454710122477787881

`A225819(A150055(n))`
-/

namespace A391296.P13454710122477787881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225819 (A150055 n).toNat

end

end A391296.P13454710122477787881

/-! ## A391296.P14443223979549689495

`A391298(n)+A000120(A096117(n+1))`
-/

namespace A391296.P14443223979549689495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391298 n + A000120 (A096117 (n + 1)).toNat

end

end A391296.P14443223979549689495

/-!
# A391297: Expansion of g^2/(1 + x^2*g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391297, there is no canonical definition to state claims against.
-/

/-! ## A391297.P8228869971997278652

`A050430(A213100(n))+A015532(n)`
-/

namespace A391297.P8228869971997278652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (A213100 n).toNat + A015532 n

end

end A391297.P8228869971997278652

/-!
# A391298: Expansion of g^2/(1 + x^3*g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391298, there is no canonical definition to state claims against.
-/

/-! ## A391298.P10749434673963402366

`A367221(∑[∑[A357621(2*n+3)]])`
-/

namespace A391298.P10749434673963402366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A391298.P10749434673963402366

/-! ## A391298.P2212524183081440291

`A367221(A185597(n+2)+A126255(n+2))`
-/

namespace A391298.P2212524183081440291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367221 (A185597 (n + 2) + A126255 (n + 2)).toNat

end

end A391298.P2212524183081440291

/-!
# A391299: Expansion of g^2/(1 + x^2*g^3), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391299, there is no canonical definition to state claims against.
-/

/-! ## A391299.P7136597926198203674

`A295218(7^n)`
-/

namespace A391299.P7136597926198203674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295218 (7 ^ n)

end

end A391299.P7136597926198203674

