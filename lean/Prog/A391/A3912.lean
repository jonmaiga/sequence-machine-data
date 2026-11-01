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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
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
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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
# A391200: Expansion of g^2/(1 - x*g^2)^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391200, there is no canonical definition to state claims against.
-/

/-! ## A391200.P2419566928965124329

`A027750(A004004(n)+A000244(n)²)`
-/

namespace A391200.P2419566928965124329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A004004 n + A000244 n ^ 2).toNat

end

end A391200.P2419566928965124329

/-!
# A391201: Expansion of g^3/(1 - x*g^2)^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391201, there is no canonical definition to state claims against.
-/

/-! ## A391201.P3949320730037328436

`A391199(n)+A390811(n)-A390237(n)`
-/

namespace A391201.P3949320730037328436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391199 n + A390811 n - A390237 n

end

end A391201.P3949320730037328436

/-! ## A391201.P14961312834408326906

`A390237(n+1)-(A390811(n)+A002293(n+1))`
-/

namespace A391201.P14961312834408326906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390237 (n + 1) - (A390811 n + A002293 (n + 1))

end

end A391201.P14961312834408326906

/-! ## A391201.P1708803229669231423

`A390237(A130472(2*(n+1)))-A390709(A130472(2*(n+1)))`
-/

namespace A391201.P1708803229669231423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390237 (A130472 (2 * (n + 1))).toNat - A390709 (A130472 (2 * (n + 1))).toNat

end

end A391201.P1708803229669231423

/-! ## A391201.P5178192259649736910

`A390811(n)+∑{#}[n, (#+1)²*C(4*n-2*#+2, n-#)/(2*n-#+1)]-A390237(n)`
-/

namespace A391201.P5178192259649736910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390811 n : ℚ) + ∑ k ∈ Finset.range (f1 n + 1), ((k + 1) ^ 2 * Nat.choose ((4 * n : ℤ) - (2 * k : ℤ) + 2).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ) / ((2 * n : ℤ) - (k : ℤ) + 1 : ℚ) - (A390237 n : ℚ)

end

end A391201.P5178192259649736910

/-!
# A391202: Expansion of (g/(1 - x*g^2))^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391202, there is no canonical definition to state claims against.
-/

/-! ## A391202.P14400863310065390215

`A391198(n+1)-A390237(n+1)`
-/

namespace A391202.P14400863310065390215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391198 (n + 1) - A390237 (n + 1)

end

end A391202.P14400863310065390215

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

/-! ## A391203.P17241809757782393209

`∑[A273190(A174613(n+1))%A146425(n+1)]`
-/

namespace A391203.P17241809757782393209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273190 (A174613 (n + 1)).toNat) (A146425 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391203.P17241809757782393209

/-! ## A391203.P12017796130139563136

`A000194(C(A000037(n+1), 10))`
-/

namespace A391203.P12017796130139563136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Nat.choose (A000037 (n + 1)).toNat 10)

end

end A391203.P12017796130139563136

/-! ## A391203.P5926177293775784418

`A000194(C(A028785(n+1), 10))`
-/

namespace A391203.P5926177293775784418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Nat.choose (A028785 (n + 1)).toNat 10)

end

end A391203.P5926177293775784418

/-! ## A391203.P7855574622097932162

`A210631(2*n)*A367622(A007999(n))`
-/

namespace A391203.P7855574622097932162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210631 (2 * n) * A367622 (A007999 n).toNat

end

end A391203.P7855574622097932162

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

/-! ## A391204.P6097627314826617810

`A294142(A114140(n+1))`
-/

namespace A391204.P6097627314826617810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294142 (A114140 (n + 1)).toNat

end

end A391204.P6097627314826617810

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

/-! ## A391206.P3433516914117280058

`A080836(n)-A083025(A080836(n))`
-/

namespace A391206.P3433516914117280058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080836 n - A083025 (A080836 n).toNat

end

end A391206.P3433516914117280058

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

/-! ## A391208.P12487898199256006844

`A261221(A089876(2*n)-∑[A000045(n)])`
-/

namespace A391208.P12487898199256006844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A089876 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A391208.P12487898199256006844

/-! ## A391208.P12185369699092286972

`A358638(A150796(n))`
-/

namespace A391208.P12185369699092286972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358638 (A150796 n).toNat

end

end A391208.P12185369699092286972

/-!
# A391209: Expansion of 1/(g * (2-g)), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391209, there is no canonical definition to state claims against.
-/

/-! ## A391209.P18274586452342095363

`A369146(n)+A030190(A001564(n))`
-/

namespace A391209.P18274586452342095363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369146 n + A030190 (A001564 n).toNat

end

end A391209.P18274586452342095363

/-! ## A391209.P4651062638485769651

`A369146(n)+A056594(A218375(n))`
-/

namespace A391209.P4651062638485769651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369146 n + A056594 (A218375 n).toNat

end

end A391209.P4651062638485769651

/-!
# A391210: Triangle read by rows: T(n,k) = Sum_{j=0..k} (-1)^j * binomial(k,j) * (3-j)^n.

The programs for A391210, the canonical program `A391210.P12404369314649554756` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391210 has offset 0).

The definition of A391210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391210.P12404369314649554756

`(T(n-1,k-1)-T(n-1,k))*col(n)+3*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391210

/-- `(T(n-1,k-1)-T(n-1,k))*col(n)+3*T(n-1,k)` -/
def P12404369314649554756.Spec : Prop :=
  ∀ n, P12404369314649554756.a n = A391210 n

theorem P12404369314649554756.correct : P12404369314649554756.Spec := by
  intro n
  simp only [A391210]

end A391210

/-! ## A391210.P14480762840144742493

`3*T(n-1,k)-(T(n-1,k)-T(n-1,k-1))*col(n)` with `a(0)=1`
-/

namespace A391210.P14480762840144742493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * SequenceMachineLib.triUp a n - (SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A391210.P14480762840144742493

namespace A391210

/-- `3*T(n-1,k)-(T(n-1,k)-T(n-1,k-1))*col(n)` -/
def P14480762840144742493.Spec : Prop :=
  ∀ n, P14480762840144742493.a n = A391210 n

end A391210

/-!
# A391211: Difference between A333242(n) and the next lower prime number.

The programs for A391211, the canonical program `A391211.P17799184732969912048` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391211 has offset 2).

The definition of A391211 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333242, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391211.P17799184732969912048

`A333242(n+2)-A151799(A333242(n+2))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A391211

/-- `A333242(n+2)-A151799(A333242(n+2))` -/
def P17799184732969912048.Spec : Prop :=
  ∀ n, P17799184732969912048.a n = A391211 (n + 2)

theorem P17799184732969912048.correct : P17799184732969912048.Spec := by
  intro n
  simp only [A391211, Nat.add_sub_cancel]

end A391211

/-! ## A391211.P10439270306054438528

`A054541(A121543(2+n))`
-/

namespace A391211.P10439270306054438528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A121543 (2 + n)).toNat

end

end A391211.P10439270306054438528

namespace A391211

/-- `A054541(A121543(2+n))` -/
def P10439270306054438528.Spec : Prop :=
  ∀ n, P10439270306054438528.a n = A391211 (n + 2)

end A391211

/-! ## A391211.P1171837404122710972

`A001223(A000720(A151799(A333242(n+2))))`
-/

namespace A391211.P1171837404122710972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (A151799 (A333242 (n + 2)).toNat).toNat).toNat

end

end A391211.P1171837404122710972

namespace A391211

/-- `A001223(A000720(A151799(A333242(n+2))))` -/
def P1171837404122710972.Spec : Prop :=
  ∀ n, P1171837404122710972.a n = A391211 (n + 2)

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

/-! ## A391211.P5553395937011808721

`A001223(A000720(A000720(A358274(n+2))))`
-/

namespace A391211.P5553395937011808721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (A000720 (A358274 (n + 2)).toNat).toNat).toNat

end

end A391211.P5553395937011808721

namespace A391211

/-- `A001223(A000720(A000720(A358274(n+2))))` -/
def P5553395937011808721.Spec : Prop :=
  ∀ n, P5553395937011808721.a n = A391211 (n + 2)

end A391211

/-!
# A391212: Maximum number of diagonal transversals in the diagonal Latin squares of order 2n+1 defined in A372922.

The programs for A391212, there is no canonical definition to state claims against.
-/

/-! ## A391212.P2318419650835028505

`A345911(A003470(n))-n`
-/

namespace A391212.P2318419650835028505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345911 (A003470 n).toNat - (n : ℤ)

end

end A391212.P2318419650835028505

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

/-! ## A391214.P1805785342124862015

`A385213((n+1)/2^val(n+1, 2)+(n+1)/2^val(n+1, 2))`
-/

namespace A391214.P1805785342124862015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A391214.P1805785342124862015

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

/-!
# A391216: a(n) is the least k for which omega(k)*omega(k + 1) = n where omega = A001221.

The programs for A391216, there is no canonical definition to state claims against.
-/

/-! ## A391216.P3439887729102767640

`A088835(A002110(n)-A056557(n))`
-/

namespace A391216.P3439887729102767640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088835 (A002110 n - A056557 n).toNat

end

end A391216.P3439887729102767640

/-! ## A391216.P4697816891046544989

`or(A392184(n), A392200(A000984(n+2)))`
-/

namespace A391216.P4697816891046544989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A392184 n) (A392200 (A000984 (n + 2)).toNat)

end

end A391216.P4697816891046544989

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

/-! ## A391218.P8234913012788421844

`∑{#}[n, A391208(#)*A391208(n-#)]`
-/

namespace A391218.P8234913012788421844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A391208 k * A391208 (n - k)

end

end A391218.P8234913012788421844

/-! ## A391218.P3892557714322969730

`A329789(n+1)+(A006670((n+1)^n)-n)%2`
-/

namespace A391218.P3892557714322969730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329789 (n + 1) + Int.tmod (A006670 ((n + 1) ^ n) - (n : ℤ)) 2

end

end A391218.P3892557714322969730

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

/-! ## A391220.P18445437302524376625

`∑{#}[n, A391209(#)*A391209(n-#)]`
-/

namespace A391220.P18445437302524376625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A391209 k * A391209 (n - k)

end

end A391220.P18445437302524376625

/-! ## A391220.P6063224373368361338

`A251706(3*n+1)+A121373(A356290(n))`
-/

namespace A391220.P6063224373368361338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 (3 * n + 1) + A121373 (A356290 n).toNat

end

end A391220.P6063224373368361338

/-!
# A391221: Expansion of 1/(g * (2-g))^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391221, there is no canonical definition to state claims against.
-/

/-! ## A391221.P8531724626394251249

`A028903(A075197(n)-A006190(n))`
-/

namespace A391221.P8531724626394251249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A075197 n - A006190 n).toNat

end

end A391221.P8531724626394251249

/-!
# A391222: Expansion of 1/(g * (2-g))^2, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391222, the canonical program `A391222.P8087994009273593311` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391222 has offset 0).

The definition of A391222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391222.P8087994009273593311

`4*a(n-1)+A115143(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A391222

/-- `4*a(n-1)+A115143(n)` -/
def P8087994009273593311.Spec : Prop :=
  ∀ n, P8087994009273593311.a n = A391222 n

theorem P8087994009273593311.correct : P8087994009273593311.Spec := by
  intro n
  simp only [A391222]

end A391222

/-! ## A391222.P7958799922872927846

`A006670((n+1)^n)-n`
-/

namespace A391222.P7958799922872927846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 ((n + 1) ^ n) - (n : ℤ)

end

end A391222.P7958799922872927846

namespace A391222

/-- `A006670((n+1)^n)-n` -/
def P7958799922872927846.Spec : Prop :=
  ∀ n, P7958799922872927846.a n = A391222 n

end A391222

/-!
# A391223: Expansion of 1/(g * (2-g))^3, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391223, there is no canonical definition to state claims against.
-/

/-! ## A391223.P11687190380463512373

`A002265(or(A002001(n), A031100(3*n+4)))`
-/

namespace A391223.P11687190380463512373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lor (A002001 n) (A031100 (3 * n + 4))).toNat

end

end A391223.P11687190380463512373

/-! ## A391223.P12500855979890048955

`A331388(2^n)`
-/

namespace A391223.P12500855979890048955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331388 (2 ^ n)

end

end A391223.P12500855979890048955

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

/-! ## A391225.P7974296956623383532

`record[A035363(n)]-A390092(n+1)`
-/

namespace A391225.P7974296956623383532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A390092 (n + 1)

end

end A391225.P7974296956623383532

/-! ## A391225.P9252902796329574628

`A325346(1+n)+A325338(n+1)`
-/

namespace A391225.P9252902796329574628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325346 (1 + n) + A325338 (n + 1)

end

end A391225.P9252902796329574628

/-! ## A391225.P11561497073101445723

`A000041(n+1)-A390092(n+1)`
-/

namespace A391225.P11561497073101445723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A390092 (n + 1)

end

end A391225.P11561497073101445723

/-! ## A391225.P10723577815319912175

`A035363(2*(n+1))-A390092(n+1)`
-/

namespace A391225.P10723577815319912175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A390092 (n + 1)

end

end A391225.P10723577815319912175

/-! ## A391225.P13111702096761805416

`A026804(n+1)+A026805(n+1)-A390092(n+1)`
-/

namespace A391225.P13111702096761805416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026804 (n + 1) + (A026805 (n + 1) - A390092 (n + 1))

end

end A391225.P13111702096761805416

/-!
# A391226: Numbers k > 1 such that the least prime index of k plus the greatest prime index of k is even.

The programs for A391226, the canonical program `A391226.P4652616117976445603` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391226 has offset 1).

The definition of A391226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391226.P4652616117976445603

`comp[A390988(n+1)-2]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A391226

/-- `comp[A390988(n+1)-2]+2` -/
def P4652616117976445603.Spec : Prop :=
  ∀ n, (P4652616117976445603.a n : ℤ) = A391226 (n + 1)

theorem P4652616117976445603.correct : P4652616117976445603.Spec := by
  intro n
  simp only [A391226, Nat.add_sub_cancel]

end A391226

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

namespace A391226

/-- `lt[val(A074036(n+1)+2+n, 2), 1]+1` -/
def P4088157196322016342.Spec : Prop :=
  ∀ n, (P4088157196322016342.a n : ℤ) = A391226 (n + 1)

end A391226

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

namespace A391226

/-- `∪[A390093(n+1), A391232(n+1)]` -/
def P15057256754955098694.Spec : Prop :=
  ∀ n, (P15057256754955098694.a n : ℤ) = A391226 (n + 1)

end A391226

/-! ## A391226.P14201631300276952671

`comp[∪[A131116(n+1)^9, A390988(n+1)]]`
-/

namespace A391226.P14201631300276952671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131116 (n + 1) ^ 9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390988 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A391226.P14201631300276952671

namespace A391226

/-- `comp[∪[A131116(n+1)^9, A390988(n+1)]]` -/
def P14201631300276952671.Spec : Prop :=
  ∀ n, (P14201631300276952671.a n : ℤ) = A391226 (n + 1)

end A391226

/-! ## A391226.P5839639539137116631

`lt[1, A126241(1+A390430(n+1))]+1`
-/

namespace A391226.P5839639539137116631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (1 + A390430 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391226.P5839639539137116631

namespace A391226

/-- `lt[1, A126241(1+A390430(n+1))]+1` -/
def P5839639539137116631.Spec : Prop :=
  ∀ n, (P5839639539137116631.a n : ℤ) = A391226 (n + 1)

end A391226

/-!
# A391227: Number of strict integer partitions of n > 0 such that the least and greatest parts are either both even or both odd (equivalently, their sum is even).

The programs for A391227, there is no canonical definition to state claims against.
-/

/-! ## A391227.P14172709293340285133

`A391233(1+n)+A391228(n+1)`
-/

namespace A391227.P14172709293340285133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391233 (1 + n) + A391228 (n + 1)

end

end A391227.P14172709293340285133

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

/-! ## A391227.P9416682343723272285

`A316978(A099089(n)+A057048(n))`
-/

namespace A391227.P9416682343723272285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316978 (A099089 n + A057048 n).toNat

end

end A391227.P9416682343723272285

/-!
# A391228: Number of strict integer partitions of n > 0 such that the least part and the greatest part are both odd (equivalently, their product is odd).

The programs for A391228, there is no canonical definition to state claims against.
-/

/-! ## A391228.P14817924396783261945

`A391227(1+n)-A391233(n+1)`
-/

namespace A391228.P14817924396783261945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391227 (1 + n) - A391233 (n + 1)

end

end A391228.P14817924396783261945

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

/-! ## A391228.P15756751116612865438

`A383706(A000040(n+1))-A391231(n+1)`
-/

namespace A391228.P15756751116612865438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (A000040 (n + 1)).toNat - A391231 (n + 1)

end

end A391228.P15756751116612865438

/-!
# A391229: Numbers k > 1 such that the least prime index of k and the greatest prime index of k are not both odd (equivalently, their product is even).

The programs for A391229, the canonical program `A391229.P9739029163309589113` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391229 has offset 1).

The definition of A391229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391229.P9739029163309589113

`∪[A390988(n+1), A391232(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A391229

/-- `∪[A390988(n+1), A391232(n+1)]` -/
def P9739029163309589113.Spec : Prop :=
  ∀ n, (P9739029163309589113.a n : ℤ) = A391229 (n + 1)

theorem P9739029163309589113.correct : P9739029163309589113.Spec := by
  intro n
  simp only [A391229, Nat.add_sub_cancel]

end A391229

/-! ## A391229.P4719153857815826761

`lt[1, A000034(A333352(1+n)+1)]+1`
-/

namespace A391229.P4719153857815826761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A333352 (1 + n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391229.P4719153857815826761

namespace A391229

/-- `lt[1, A000034(A333352(1+n)+1)]+1` -/
def P4719153857815826761.Spec : Prop :=
  ∀ n, (P4719153857815826761.a n : ℤ) = A391229 (n + 1)

end A391229

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

namespace A391229

/-- `∪[A340933(n+1), A390988(n+1)]` -/
def P13668861436541245561.Spec : Prop :=
  ∀ n, (P13668861436541245561.a n : ℤ) = A391229 (n + 1)

end A391229

/-! ## A391229.P6316533780328214459

`A324929(n+1)+A180598(A090318(n+1))`
-/

namespace A391229.P6316533780328214459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324929 (n + 1) + A180598 (A090318 (n + 1)).toNat

end

end A391229.P6316533780328214459

namespace A391229

/-- `A324929(n+1)+A180598(A090318(n+1))` -/
def P6316533780328214459.Spec : Prop :=
  ∀ n, P6316533780328214459.a n = A391229 (n + 1)

end A391229

/-!
# A391230: Number of integer partitions of n > 0 such that the least and greatest parts are not both odd (equivalently, their product is even).

The programs for A391230, there is no canonical definition to state claims against.
-/

/-! ## A391230.P6938631564433702138

`Δ[A000070(n)]-A325338(n+1)`
-/

namespace A391230.P6938631564433702138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A325338 (n + 1)

end

end A391230.P6938631564433702138

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

/-! ## A391230.P13537211639812353924

`A119620(A023443(2*(n+2)))-A325338(n+1)`
-/

namespace A391230.P13537211639812353924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A023443 (2 * (n + 2))).toNat - A325338 (n + 1)

end

end A391230.P13537211639812353924

/-!
# A391231: Number of strict integer partitions of n > 0 such that the least and greatest parts are not both odd (equivalently, their product is even).

The programs for A391231, there is no canonical definition to state claims against.
-/

/-! ## A391231.P16833542765491665285

`A391233(1+n)+A390746(n+1)`
-/

namespace A391231.P16833542765491665285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391233 (1 + n) + A390746 (n + 1)

end

end A391231.P16833542765491665285

/-! ## A391231.P13247022625866396618

`A000009(n+1)-A391228(n+1)`
-/

namespace A391231.P13247022625866396618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A391228 (n + 1)

end

end A391231.P13247022625866396618

/-! ## A391231.P5589362582998018801

`A387115(A000040(n+1))-A391228(n+1)`
-/

namespace A391231.P5589362582998018801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387115 (A000040 (n + 1)).toNat - A391228 (n + 1)

end

end A391231.P5589362582998018801

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

The programs for A391232, the canonical program `A391232.P9763517087075985162` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391232 has offset 1).

The definition of A391232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391232.P9763517087075985162

`∩[A244990(n+1), A391226(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A391232

/-- `∩[A244990(n+1), A391226(n+1)]` -/
def P9763517087075985162.Spec : Prop :=
  ∀ n, (P9763517087075985162.a n : ℤ) = A391232 (n + 1)

theorem P9763517087075985162.correct : P9763517087075985162.Spec := by
  intro n
  simp only [A391232, Nat.add_sub_cancel]

end A391232

/-! ## A391232.P5523492096640414296

`∩[A391226(n+1), A391229(n+1)]`
-/

namespace A391232.P5523492096640414296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391232.P5523492096640414296

namespace A391232

/-- `∩[A391226(n+1), A391229(n+1)]` -/
def P5523492096640414296.Spec : Prop :=
  ∀ n, (P5523492096640414296.a n : ℤ) = A391232 (n + 1)

end A391232

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

namespace A391232

/-- `∩[A244990(n+1), A340933(n+1)]` -/
def P12884138595294240611.Spec : Prop :=
  ∀ n, (P12884138595294240611.a n : ℤ) = A391232 (n + 1)

end A391232

/-! ## A391232.P4807062004551562795

`∩[A340933(n+1), A391226(n+1)]`
-/

namespace A391232.P4807062004551562795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391232.P4807062004551562795

namespace A391232

/-- `∩[A340933(n+1), A391226(n+1)]` -/
def P4807062004551562795.Spec : Prop :=
  ∀ n, (P4807062004551562795.a n : ℤ) = A391232 (n + 1)

end A391232

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

namespace A391232

/-- `∩[A336620(n+1), A340933(n+1)]` -/
def P13398176148465659985.Spec : Prop :=
  ∀ n, (P13398176148465659985.a n : ℤ) = A391232 (n + 1)

end A391232

/-!
# A391233: Number of strict integer partitions of n > 0 such that the least part and the greatest part are both even.

The programs for A391233, there is no canonical definition to state claims against.
-/

/-! ## A391233.P13746288040906905582

`A391227(1+n)-A391228(n+1)`
-/

namespace A391233.P13746288040906905582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391227 (1 + n) - A391228 (n + 1)

end

end A391233.P13746288040906905582

/-! ## A391233.P2902274310313990035

`A391231(1+n)-A390746(n+1)`
-/

namespace A391233.P2902274310313990035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391231 (1 + n) - A390746 (n + 1)

end

end A391233.P2902274310313990035

/-! ## A391233.P14798068988025853075

`Δ[A357456(n)]%A092816(n+1)`
-/

namespace A391233.P14798068988025853075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A092816 (n + 1))

end

end A391233.P14798068988025853075

/-! ## A391233.P17066164993923580821

`Δ[A000009(n)-A359550(A282799(n)+1)]`
-/

namespace A391233.P17066164993923580821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A359550 (A282799 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391233.P17066164993923580821

/-! ## A391233.P15784954129435404112

`Δ[A357456(n)%A092816(n+1)]`
-/

namespace A391233.P15784954129435404112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357456 n) (A092816 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391233.P15784954129435404112

/-!
# A391235: Number of integer compositions of n that are the first sums of some composition with all parts > 1.

The programs for A391235, the canonical program `A391235.P5268194633034274609` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391235 has offset 1).

The definition of A391235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391235.P5268194633034274609

`ogf((x^3+x^4-x^5-x^6)/(1-2x^2-x^5+x^6+x^7+x^9))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391235

/-- `ogf((x^3+x^4-x^5-x^6)/(1-2x^2-x^5+x^6+x^7+x^9))` -/
def P5268194633034274609.Spec : Prop :=
  ∀ n, P5268194633034274609.a n = A391235 (n + 1)

theorem P5268194633034274609.correct : P5268194633034274609.Spec := by
  intro n
  simp only [A391235, Nat.add_sub_cancel]

end A391235

/-! ## A391235.P13140709366674002363

`2^n-A391641(n+1)`
-/

namespace A391235.P13140709366674002363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A391641 (n + 1)

end

end A391235.P13140709366674002363

namespace A391235

/-- `2^n-A391641(n+1)` -/
def P13140709366674002363.Spec : Prop :=
  ∀ n, P13140709366674002363.a n = A391235 (n + 1)

end A391235

/-! ## A391235.P6653018767509535001

`A000079(n)%A391641(n+1)`
-/

namespace A391235.P6653018767509535001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A391641 (n + 1))

end

end A391235.P6653018767509535001

namespace A391235

/-- `A000079(n)%A391641(n+1)` -/
def P6653018767509535001.Spec : Prop :=
  ∀ n, P6653018767509535001.a n = A391235 (n + 1)

end A391235

/-! ## A391235.P14891615391013165315

`A155559(n)%A391641(n+1)`
-/

namespace A391235.P14891615391013165315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155559 n) (A391641 (n + 1))

end

end A391235.P14891615391013165315

namespace A391235

/-- `A155559(n)%A391641(n+1)` -/
def P14891615391013165315.Spec : Prop :=
  ∀ n, P14891615391013165315.a n = A391235 (n + 1)

end A391235

/-! ## A391235.P6222406971182413781

`A171449(n)%A391641(n+1)`
-/

namespace A391235.P6222406971182413781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171449 n) (A391641 (n + 1))

end

end A391235.P6222406971182413781

namespace A391235

/-- `A171449(n)%A391641(n+1)` -/
def P6222406971182413781.Spec : Prop :=
  ∀ n, P6222406971182413781.a n = A391235 (n + 1)

end A391235

/-! ## A391235.P494363461194684206

`A171559(n)%A391641(n+1)`
-/

namespace A391235.P494363461194684206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171559 n) (A391641 (n + 1))

end

end A391235.P494363461194684206

namespace A391235

/-- `A171559(n)%A391641(n+1)` -/
def P494363461194684206.Spec : Prop :=
  ∀ n, P494363461194684206.a n = A391235 (n + 1)

end A391235

/-! ## A391235.P11220190075879581793

`A186949(n)%A391641(n+1)`
-/

namespace A391235.P11220190075879581793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186949 n) (A391641 (n + 1))

end

end A391235.P11220190075879581793

namespace A391235

/-- `A186949(n)%A391641(n+1)` -/
def P11220190075879581793.Spec : Prop :=
  ∀ n, P11220190075879581793.a n = A391235 (n + 1)

end A391235

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

/-! ## A391237.P3448875835544790537

`∑{e}[A284011(n+1), #]-A391238(n+1)`
-/

namespace A391237.P3448875835544790537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A391238 (n + 1)

end

end A391237.P3448875835544790537

/-! ## A391237.P3104164122587685709

`A001222(A284011(n+1))-A391238(n+1)`
-/

namespace A391237.P3104164122587685709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284011 (n + 1)).toNat - A391238 (n + 1)

end

end A391237.P3104164122587685709

/-! ## A391237.P16296211873850168984

`sqrt(A277027(n+1))-A391238(n+1)`
-/

namespace A391237.P16296211873850168984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277027 (n + 1) : ℝ) - (A391238 (n + 1) : ℝ)

end

end A391237.P16296211873850168984

/-! ## A391237.P15633531928574871634

`A000194(xor(2, A277027(n+1)+2))-A391238(n+1)`
-/

namespace A391237.P15633531928574871634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.xor 2 (A277027 (n + 1) + 2)).toNat - A391238 (n + 1)

end

end A391237.P15633531928574871634

/-! ## A391237.P16798516189063971986

`A000196(A288710(n+1)+A277027(n+1))-A391238(n+1)`
-/

namespace A391237.P16798516189063971986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A288710 (n + 1) + A277027 (n + 1)).toNat - A391238 (n + 1)

end

end A391237.P16798516189063971986

/-! ## A391237.P10337888857156995881

`∑{e}[A284011(n+1), #]-A359893(2*A340365(n+1)+1)`
-/

namespace A391237.P10337888857156995881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A359893 (2 * A340365 (n + 1) + 1).toNat

end

end A391237.P10337888857156995881

/-! ## A391237.P17418512005796568705

`A001222(A284011(n+1))-A359893(2*A340365(n+1)+1)`
-/

namespace A391237.P17418512005796568705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284011 (n + 1)).toNat - A359893 (2 * A340365 (n + 1) + 1).toNat

end

end A391237.P17418512005796568705

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

/-! ## A391238.P13134270856192696541

`∑{e}[A284011(n+1), #]-A391237(n+1)`
-/

namespace A391238.P13134270856192696541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A391237 (n + 1)

end

end A391238.P13134270856192696541

/-! ## A391238.P15449212349155509394

`sqrt(A277027(n+1))-A391237(n+1)`
-/

namespace A391238.P15449212349155509394
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277027 (n + 1) : ℝ) - (A391237 (n + 1) : ℝ)

end

end A391238.P15449212349155509394

/-! ## A391238.P1619354423824818610

`A000194(xor(2, A277027(n+1)+2))-A391237(n+1)`
-/

namespace A391238.P1619354423824818610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.xor 2 (A277027 (n + 1) + 2)).toNat - A391237 (n + 1)

end

end A391238.P1619354423824818610

/-! ## A391238.P779232141469600395

`A000196(A277027(n+1)%(n+3))-A391237(n+1)`
-/

namespace A391238.P779232141469600395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A277027 (n + 1)) (n + 3 : ℤ)).toNat - A391237 (n + 1)

end

end A391238.P779232141469600395

/-! ## A391238.P6055858065097450664

`A000196(A288710(n+1)+A277027(n+1))-A391237(n+1)`
-/

namespace A391238.P6055858065097450664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A288710 (n + 1) + A277027 (n + 1)).toNat - A391237 (n + 1)

end

end A391238.P6055858065097450664

/-! ## A391238.P16177226715825786965

`and(A182581(n+1), A355384(n))`
-/

namespace A391238.P16177226715825786965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A182581 (n + 1)) (A355384 n)

end

end A391238.P16177226715825786965

/-! ## A391238.P13123677055370338935

`A388073(A063659(3*(n+1))*A263027(n+1))`
-/

namespace A391238.P13123677055370338935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 (A063659 (3 * (n + 1)) * A263027 (n + 1)).toNat

end

end A391238.P13123677055370338935

/-! ## A391238.P2539897176030846483

`A008615(A247478(n+1)%A034444(2*(n+1)))`
-/

namespace A391238.P2539897176030846483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.tmod (A247478 (n + 1)) (A034444 (2 * (n + 1)))).toNat

end

end A391238.P2539897176030846483

/-! ## A391238.P8646103758249976580

`A323510(ceil(A300647(n+1)/3)+2)`
-/

namespace A391238.P8646103758249976580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323510 (⌈(A300647 (n + 1) : ℚ) / 3⌉ + 2).toNat

end

end A391238.P8646103758249976580

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

/-! ## A391239.P10767459618323145681

`gcd(A000005(n+1), A135198(A399166(n)))`
-/

namespace A391239.P10767459618323145681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A135198 (A399166 n).toNat)

end

end A391239.P10767459618323145681

/-!
# A391240: a(n) = 1 if n occurs exactly twice in square array A391260, otherwise 0.

The programs for A391240, there is no canonical definition to state claims against.
-/

/-! ## A391240.P4432901855335418506

`Δ[fp[A391241(n+1)]]`
-/

namespace A391240.P4432901855335418506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391241 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A391240.P4432901855335418506

/-! ## A391240.P6613442362302865622

`char[A391241(1+n)-1]`
-/

namespace A391240.P6613442362302865622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391241 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A391240.P6613442362302865622

/-! ## A391240.P2330351921982404750

`char[eq[2, A391239(n+1)]]`
-/

namespace A391240.P2330351921982404750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391239 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A391240.P2330351921982404750

/-! ## A391240.P1141889397863424676

`A154272(A391239(1+n)+1)`
-/

namespace A391240.P1141889397863424676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (A391239 (1 + n) + 1).toNat

end

end A391240.P1141889397863424676

/-! ## A391240.P458106488108240595

`A125184(C(2, A391239(n+1)))`
-/

namespace A391240.P458106488108240595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (Nat.choose 2 (A391239 (n + 1)).toNat)

end

end A391240.P458106488108240595

/-! ## A391240.P17524345738843237094

`A209229(C(A391239(n+1), 2))`
-/

namespace A391240.P17524345738843237094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (Nat.choose (A391239 (n + 1)).toNat 2)

end

end A391240.P17524345738843237094

/-! ## A391240.P17344380023672595815

`A253580(C(2, A391239(n+1)))`
-/

namespace A391240.P17344380023672595815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (Nat.choose 2 (A391239 (n + 1)).toNat)

end

end A391240.P17344380023672595815

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

/-! ## A391240.P4646635162390623189

`A007632(A391239(n+1))^A282019(n)`
-/

namespace A391240.P4646635162390623189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007632 (A391239 (n + 1)).toNat : ℚ) ^ (A282019 n : ℤ)

end

end A391240.P4646635162390623189

/-! ## A391240.P5991657295079869413

`A114785(n+5)%A333254(A391239(n+1))`
-/

namespace A391240.P5991657295079869413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114785 (n + 5)) (A333254 (A391239 (n + 1)).toNat)

end

end A391240.P5991657295079869413

/-!
# A391241: Numbers k such that there are no nontrivial factorizations of Stern polynomial B(k,x) to a pair of Stern polynomials B(i,x), B(j,x).

The programs for A391241, there is no canonical definition to state claims against.
-/

/-! ## A391241.P5756000301282613161

`filter[A344180(n), A391240(#)]`
-/

namespace A391241.P5756000301282613161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A391241.P5756000301282613161

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

/-! ## A391241.P13057750252868297166

`comp[A391242(1+n)-2]+2`
-/

namespace A391241.P13057750252868297166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (1 + n) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A391241.P13057750252868297166

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

/-! ## A391241.P11492098937601722820

`eq[2, A391239(1+n)]+1`
-/

namespace A391241.P11492098937601722820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391239 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391241.P11492098937601722820

/-! ## A391241.P9854649897835917249

`record[n+3-C(A391239(n+2), 2)]`
-/

namespace A391241.P9854649897835917249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.choose (A391239 (n + 2)).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391241.P9854649897835917249

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

/-!
# A391242: Numbers k such that Stern polynomial B(k,x) can be expressed as a product of two Stern polynomials B(i,x) and B(j,x), with i, j < k.

The programs for A391242, there is no canonical definition to state claims against.
-/

/-! ## A391242.P3807483477959904306

`comp[A391241(n+1)-2]+2`
-/

namespace A391242.P3807483477959904306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391241 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A391242.P3807483477959904306

/-! ## A391242.P3935000310556391685

`comp[record[A391240(n+1)*n]]+1`
-/

namespace A391242.P3935000310556391685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391240 (n + 1) * (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A391242.P3935000310556391685

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

/-! ## A391242.P18325302739423402184

`A020725(eq[A000007(n), A391240(n+1)])`
-/

namespace A391242.P18325302739423402184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A391242.P18325302739423402184

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

/-! ## A391243.P7569977736620244090

`filter[A391242(n+1), A000035(#)]`
-/

namespace A391243.P7569977736620244090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391243.P7569977736620244090

/-! ## A391243.P12732312243256729887

`filter[A391242(n+1), A266070(#)]`
-/

namespace A391243.P12732312243256729887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A391243.P12732312243256729887

/-! ## A391243.P13635126901072784995

`filter[A391242(n+1), A266611(#)]`
-/

namespace A391243.P13635126901072784995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A391243.P13635126901072784995

/-! ## A391243.P2587798503519558862

`filter[A391242(n+1), A266719(#)]`
-/

namespace A391243.P2587798503519558862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A391243.P2587798503519558862

/-! ## A391243.P5917381924901357767

`filter[A391242(n+1), A296066(#)]`
-/

namespace A391243.P5917381924901357767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A391243.P5917381924901357767

/-! ## A391243.P12501427859061377404

`filter[A391242(n+2), A266246(#)]`
-/

namespace A391243.P12501427859061377404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A391243.P12501427859061377404

/-! ## A391243.P13641651438670839016

`filter[A391242(n+3), A267256(#)]`
-/

namespace A391243.P13641651438670839016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A391243.P13641651438670839016

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

/-! ## A391245.P716070762924327425

`A391244(n+1)%A133675(n+2)`
-/

namespace A391245.P716070762924327425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391244 (n + 1)) (A133675 (n + 2))

end

end A391245.P716070762924327425

/-! ## A391245.P13282761349462134927

`((row(n)+1)*(col(n)+1))%A381220(A000045(n+2))`
-/

namespace A391245.P13282761349462134927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triCol n + 1) : ℤ) (A381220 (A000045 (n + 2)).toNat)

end

end A391245.P13282761349462134927

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

/-! ## A391246.P17193935910703673450

`ceil((A387855(n+1)+1)/2)`
-/

namespace A391246.P17193935910703673450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A387855 (n + 1) + 1 : ℚ) / 2⌉

end

end A391246.P17193935910703673450

/-! ## A391246.P8389656638572049633

`A237048(A140987(n+1))+A072670(n)`
-/

namespace A391246.P8389656638572049633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (A140987 (n + 1)).toNat + A072670 n

end

end A391246.P8389656638572049633

/-! ## A391246.P3933393256458328118

`A055642(A000203(n+1)*A387855(n+1))`
-/

namespace A391246.P3933393256458328118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000203 (n + 1) * A387855 (n + 1)).toNat

end

end A391246.P3933393256458328118

/-! ## A391246.P8283751759916591138

`A055642(A163300(n+1)*A387855(n+1))`
-/

namespace A391246.P8283751759916591138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A163300 (n + 1) * A387855 (n + 1)).toNat

end

end A391246.P8283751759916591138

/-! ## A391246.P13300269149909152508

`A070939(or(A340655(n+1), A387855(n+1)))`
-/

namespace A391246.P13300269149909152508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.lor (A340655 (n + 1)) (A387855 (n + 1))).toNat

end

end A391246.P13300269149909152508

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

/-! ## A391247.P12520671904462192568

`lt[A391246(1+n), 2]+1`
-/

namespace A391247.P12520671904462192568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391246 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A391247.P12520671904462192568

/-! ## A391247.P7323197985027087056

`record[A000027(n+1)/A391246(n+1)]`
-/

namespace A391247.P7323197985027087056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A391246 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391247.P7323197985027087056

/-! ## A391247.P4769706774838885962

`A141310(lt[A391246(1+n), 2])`
-/

namespace A391247.P4769706774838885962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391246 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A391247.P4769706774838885962

/-! ## A391247.P10045701289067607102

`record[A373188(n+1)/A391246(n+1)]`
-/

namespace A391247.P10045701289067607102
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373188 (n + 1) : ℚ) / (A391246 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391247.P10045701289067607102

/-!
# A391248: Odd composites k such that for all divisor pairs (d, k/d), d <= k/d, it holds that k = A048720(k/d, A065621(d)).

The programs for A391248, there is no canonical definition to state claims against.
-/

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

/-! ## A391248.P89367474821399860

`A391343(lt[A120040(n), A053123(3*n+2)])`
-/

namespace A391248.P89367474821399860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391343 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A391248.P89367474821399860

/-!
# A391249: Main diagonal of A391260.

The programs for A391249, there is no canonical definition to state claims against.
-/

/-! ## A391249.P12579808605880841487

`A391260((1+n)²+n²)`
-/

namespace A391249.P12579808605880841487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391260 ((1 + n) ^ 2 + n ^ 2)

end

end A391249.P12579808605880841487

/-! ## A391249.P5737959152148758908

`lcm(n+1, A391260(A001844(n)))`
-/

namespace A391249.P5737959152148758908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A391260 (A001844 n).toNat)

end

end A391249.P5737959152148758908

/-! ## A391249.P8446204998319015107

`A391260(A001844(n))%A371381(n+1)`
-/

namespace A391249.P8446204998319015107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391260 (A001844 n).toNat) (A371381 (n + 1))

end

end A391249.P8446204998319015107

/-! ## A391249.P195576767815583865

`A391260(A001844(n))+A000007(2*(n+1))`
-/

namespace A391249.P195576767815583865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391260 (A001844 n).toNat + A000007 (2 * (n + 1))

end

end A391249.P195576767815583865

/-! ## A391249.P16882058413397499941

`A391260(A001844(n))+A298931(3*n+2)`
-/

namespace A391249.P16882058413397499941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391260 (A001844 n).toNat + A298931 (3 * n + 2)

end

end A391249.P16882058413397499941

/-! ## A391249.P4531464116720285383

`A330942(A298931(n))*A391260(A001844(n))`
-/

namespace A391249.P4531464116720285383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (A298931 n).toNat * A391260 (A001844 n).toNat

end

end A391249.P4531464116720285383

/-! ## A391249.P16498573198620983982

`A391260(A001844(n))^A365673(A255741(n+1))`
-/

namespace A391249.P16498573198620983982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391260 (A001844 n).toNat : ℚ) ^ (A365673 (A255741 (n + 1)).toNat : ℤ)

end

end A391249.P16498573198620983982

/-!
# A391250: Numbers k such that the square of Stern polynomial B(k,x) is not a Stern polynomial.

The programs for A391250, there is no canonical definition to state claims against.
-/

/-! ## A391250.P12223750220909638648

`eq[0, A391249(1+n)]+1`
-/

namespace A391250.P12223750220909638648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391250.P12223750220909638648

/-! ## A391250.P1696027735443031115

`lt[A391249(n+1), A000217(n)]+1`
-/

namespace A391250.P1696027735443031115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P1696027735443031115

/-! ## A391250.P12346612920753155127

`lt[A391249(n+1), A000010(n+1)]+1`
-/

namespace A391250.P12346612920753155127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P12346612920753155127

/-! ## A391250.P13413635482656591024

`lt[A391249(n+1), A000203(n+1)]+1`
-/

namespace A391250.P13413635482656591024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P13413635482656591024

/-! ## A391250.P7855567618153507404

`lt[A391249(n+1), A214526(n+1)]+1`
-/

namespace A391250.P7855567618153507404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P7855567618153507404

/-! ## A391250.P5869240029764933518

`lt[1, A286622(n)-A391249(n+1)]+1`
-/

namespace A391250.P5869240029764933518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 n - A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391250.P5869240029764933518

/-! ## A391250.P12271895213657735699

`lt[1, A317713(n+1)-A391249(n+1)]+1`
-/

namespace A391250.P12271895213657735699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317713 (n + 1) - A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391250.P12271895213657735699

/-! ## A391250.P3200878989015730599

`lt[A391249(n+1), A004396(n)]+1`
-/

namespace A391250.P3200878989015730599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P3200878989015730599

/-! ## A391250.P2635039949716813320

`lt[A391249(n+1), A007093(n)]+1`
-/

namespace A391250.P2635039949716813320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P2635039949716813320

/-! ## A391250.P7754449674892411178

`lt[A391249(n+1), A055649(n)]+1`
-/

namespace A391250.P7754449674892411178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P7754449674892411178

/-! ## A391250.P2204886964656132005

`lt[A391249(n+1), A129459(n)]+1`
-/

namespace A391250.P2204886964656132005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P2204886964656132005

/-! ## A391250.P4866738283461198124

`lt[A391249(n+1), A391264(n)]+1`
-/

namespace A391250.P4866738283461198124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P4866738283461198124

/-! ## A391250.P13147937376987882739

`lt[A391249(n+1), A003056(n)-1]+1`
-/

namespace A391250.P13147937376987882739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P13147937376987882739

/-! ## A391250.P1686274047681439417

`lt[A391249(n+1), A002378(n)]+1`
-/

namespace A391250.P1686274047681439417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P1686274047681439417

/-! ## A391250.P16210730409053221334

`lt[A391249(n+1), A000924(n+1)]+1`
-/

namespace A391250.P16210730409053221334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P16210730409053221334

/-! ## A391250.P6147395576354282051

`lt[A391249(n+1), A000961(n+1)]+1`
-/

namespace A391250.P6147395576354282051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P6147395576354282051

/-! ## A391250.P7353596703533447607

`lt[A391249(n+1), A003557(n+1)]+1`
-/

namespace A391250.P7353596703533447607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P7353596703533447607

/-! ## A391250.P6466359771970959643

`lt[A391249(n+1), A005836(n+1)]+1`
-/

namespace A391250.P6466359771970959643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P6466359771970959643

/-! ## A391250.P7309172251472043934

`lt[A391249(n+1), A006995(n+1)]+1`
-/

namespace A391250.P7309172251472043934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P7309172251472043934

/-! ## A391250.P4685840642758565540

`lt[A391249(n+1), A028233(n+1)]+1`
-/

namespace A391250.P4685840642758565540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391250.P4685840642758565540

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

/-! ## A391251.P5630193973278625313

`comp[A391250(n+1)-1]+1`
-/

namespace A391251.P5630193973278625313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391250 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A391251.P5630193973278625313

/-! ## A391251.P5338772365693152858

`record[A391249(n+1)-A002378(n)]`
-/

namespace A391251.P5338772365693152858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1) - A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391251.P5338772365693152858

/-! ## A391251.P10742945552520938817

`lt[A000217(n), A391249(n+1)]+1`
-/

namespace A391251.P10742945552520938817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P10742945552520938817

/-! ## A391251.P15535951643573731524

`lt[A004396(n), A391249(n+1)]+1`
-/

namespace A391251.P15535951643573731524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P15535951643573731524

/-! ## A391251.P8287196773796000627

`lt[A007093(n), A391249(n+1)]+1`
-/

namespace A391251.P8287196773796000627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P8287196773796000627

/-! ## A391251.P1069771022388753611

`lt[A010060(n), A391249(n+1)]+1`
-/

namespace A391251.P1069771022388753611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P1069771022388753611

/-! ## A391251.P2590860659701841233

`lt[A010873(n), A391249(n+1)]+1`
-/

namespace A391251.P2590860659701841233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P2590860659701841233

/-! ## A391251.P4499988902892231890

`lt[A055649(n), A391249(n+1)]+1`
-/

namespace A391251.P4499988902892231890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P4499988902892231890

/-! ## A391251.P12007672172792574301

`lt[A129459(n), A391249(n+1)]+1`
-/

namespace A391251.P12007672172792574301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P12007672172792574301

/-! ## A391251.P11993618842679604643

`lt[A209229(n), A391249(n+1)]+1`
-/

namespace A391251.P11993618842679604643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P11993618842679604643

/-! ## A391251.P13625583849061682676

`lt[A005836(n+1), A391249(n+1)]+1`
-/

namespace A391251.P13625583849061682676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P13625583849061682676

/-! ## A391251.P7184416444336549742

`lt[A006995(n+1), A391249(n+1)]+1`
-/

namespace A391251.P7184416444336549742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P7184416444336549742

/-! ## A391251.P9872937175052457426

`lt[A214526(n+1), A391249(n+1)]+1`
-/

namespace A391251.P9872937175052457426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P9872937175052457426

/-! ## A391251.P15612885881146028604

`lt[A391237(n+1), A391249(n+1)]+1`
-/

namespace A391251.P15612885881146028604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P15612885881146028604

/-! ## A391251.P13457513534384937212

`lt[A003056(n)-1, A391249(n+1)]+1`
-/

namespace A391251.P13457513534384937212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P13457513534384937212

/-! ## A391251.P8619372061379889102

`lt[A274640(n)-1, A391249(n+1)]+1`
-/

namespace A391251.P8619372061379889102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P8619372061379889102

/-! ## A391251.P2225869240450607703

`lt[1, A391249(n+1)+A061347(n+1)]+1`
-/

namespace A391251.P2225869240450607703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1) + A061347 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391251.P2225869240450607703

/-! ## A391251.P18362111380073663146

`lt[1, A391249(n+1)*A181687(n+2)²]+1`
-/

namespace A391251.P18362111380073663146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1) * A181687 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391251.P18362111380073663146

/-! ## A391251.P16066384705839589223

`lt[A225058(4*A274640(n)), A391249(n+1)]+1`
-/

namespace A391251.P16066384705839589223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (4 * A274640 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391251.P16066384705839589223

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

/-! ## A391253.P2872032443294830507

`A391336(n+1)-A090071(n+1)%A146417(n+1)`
-/

namespace A391253.P2872032443294830507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391336 (n + 1) - Int.tmod (A090071 (n + 1)) (A146417 (n + 1))

end

end A391253.P2872032443294830507

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

/-!
# A391254: Semiprimes k = p*q such that neither k = A048720(p,x) nor k = A048720(q,x) for any x, where A048720 is the carryless binary multiplication.

The programs for A391254, the canonical program `A391254.P635341094671507549` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391254 has offset 1).

The definition of A391254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391254.P635341094671507549

`∩[A001358(1+n), A325559(n+1)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A391254

/-- `∩[A001358(1+n), A325559(n+1)]` -/
def P635341094671507549.Spec : Prop :=
  ∀ n, (P635341094671507549.a n : ℤ) = A391254 (n + 1)

theorem P635341094671507549.correct : P635341094671507549.Spec := by
  intro n
  simp only [A391254, Nat.add_sub_cancel]

end A391254

/-! ## A391254.P12548822786043239856

`filter[A325559(1+n), A064911(#)]`
-/

namespace A391254.P12548822786043239856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325559 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A391254.P12548822786043239856

namespace A391254

/-- `filter[A325559(1+n), A064911(#)]` -/
def P12548822786043239856.Spec : Prop :=
  ∀ n, P12548822786043239856.a n = A391254 (n + 1)

end A391254

/-! ## A391254.P6212128114802021753

`∩[A046315(n+1), A325559(n+1)]`
-/

namespace A391254.P6212128114802021753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391254.P6212128114802021753

namespace A391254

/-- `∩[A046315(n+1), A325559(n+1)]` -/
def P6212128114802021753.Spec : Prop :=
  ∀ n, (P6212128114802021753.a n : ℤ) = A391254 (n + 1)

end A391254

/-! ## A391254.P4338484009805701444

`∩[A176540(n+1), A325559(n+1)]`
-/

namespace A391254.P4338484009805701444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391254.P4338484009805701444

namespace A391254

/-- `∩[A176540(n+1), A325559(n+1)]` -/
def P4338484009805701444.Spec : Prop :=
  ∀ n, (P4338484009805701444.a n : ℤ) = A391254 (n + 1)

end A391254

/-! ## A391254.P14603050845004578759

`∩[A077135(n+1), A325559(n+1)]`
-/

namespace A391254.P14603050845004578759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391254.P14603050845004578759

namespace A391254

/-- `∩[A077135(n+1), A325559(n+1)]` -/
def P14603050845004578759.Spec : Prop :=
  ∀ n, (P14603050845004578759.a n : ℤ) = A391254 (n + 1)

end A391254

/-! ## A391254.P17709887653067245652

`∩[A077136(n+1), A325559(n+1)]`
-/

namespace A391254.P17709887653067245652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391254.P17709887653067245652

namespace A391254

/-- `∩[A077136(n+1), A325559(n+1)]` -/
def P17709887653067245652.Spec : Prop :=
  ∀ n, (P17709887653067245652.a n : ℤ) = A391254 (n + 1)

end A391254

/-!
# A391255: Odd semiprimes in A391253 that are neither in A365473 nor in A391248.

The programs for A391255, there is no canonical definition to state claims against.
-/

/-! ## A391255.P675358166969098680

`∩[A208136(n+1), A258744(n+1)]`
-/

namespace A391255.P675358166969098680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391255.P675358166969098680

/-!
# A391256: Odd semiprimes p*q, such that Stern polynomial B(p*q,x) is a product of B(p,x) and B(q,x).

The programs for A391256, there is no canonical definition to state claims against.
-/

/-! ## A391256.P17339811396177798546

`∩[A391243(n+1), A391257(n+1)]`
-/

namespace A391256.P17339811396177798546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391256.P17339811396177798546

/-! ## A391256.P11718733390850427316

`∩[A391243(n+1), A391336(n+1)]`
-/

namespace A391256.P11718733390850427316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391256.P11718733390850427316

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

/-! ## A391256.P4538038820776547706

`∩[A001358(n+1), A391243(n+1)]`
-/

namespace A391256.P4538038820776547706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391256.P4538038820776547706

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

/-! ## A391256.P11210808590435080736

`∩[A046315(n+1), A391243(n+1)]`
-/

namespace A391256.P11210808590435080736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391256.P11210808590435080736

/-! ## A391256.P12047610944274027511

`∩[A131368(n+1), A391243(n+1)]`
-/

namespace A391256.P12047610944274027511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391256.P12047610944274027511

/-! ## A391256.P14363279876127815028

`∩[A176540(n+1), A391243(n+1)]`
-/

namespace A391256.P14363279876127815028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391256.P14363279876127815028

/-!
# A391257: Odd semiprimes p*q, such that Stern polynomial B(p*q,x) is a multiple of either B(p,x) or B(q,x).

The programs for A391257, there is no canonical definition to state claims against.
-/

/-! ## A391257.P7175793305916740359

`A391336(1+n)%A335743(n+1)`
-/

namespace A391257.P7175793305916740359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391336 (1 + n)) (A335743 (n + 1))

end

end A391257.P7175793305916740359

/-! ## A391257.P12726206950593315581

`or(A325509(2*n+1), A391336(n+1))`
-/

namespace A391257.P12726206950593315581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A325509 (2 * n + 1)) (A391336 (n + 1))

end

end A391257.P12726206950593315581

/-! ## A391257.P2020707537213863211

`A391336(n+1)%Δ[A125879(2*(n+2))]`
-/

namespace A391257.P2020707537213863211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125879 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391336 (n + 1)) (f1 (n + 1) - f1 n)

end

end A391257.P2020707537213863211

/-! ## A391257.P9803948167462794033

`A391336(1+n)+A083929(A100827(n+1))`
-/

namespace A391257.P9803948167462794033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391336 (1 + n) + A083929 (A100827 (n + 1)).toNat

end

end A391257.P9803948167462794033

/-! ## A391257.P1317802980508661084

`A391336(n+1)+A389449(A065772(n+1))`
-/

namespace A391257.P1317802980508661084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391336 (n + 1) + A389449 (A065772 (n + 1)).toNat

end

end A391257.P1317802980508661084

/-! ## A391257.P5083132889711421513

`A035263(A174030(n+1))*A391336(n+1)`
-/

namespace A391257.P5083132889711421513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A174030 (n + 1)).toNat * A391336 (n + 1)

end

end A391257.P5083132889711421513

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

/-! ## A391257.P10074118091361676661

`A391336(n+1)%A217146(n+1)`
-/

namespace A391257.P10074118091361676661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391336 (n + 1)) (A217146 (n + 1))

end

end A391257.P10074118091361676661

/-! ## A391257.P4310229961112934908

`or(A257000(A325535(n)), A391336(n+1))`
-/

namespace A391257.P4310229961112934908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A257000 (A325535 n).toNat) (A391336 (n + 1))

end

end A391257.P4310229961112934908

/-!
# A391259: Square array A(n,k), read by antidiagonals: product of two Stern polynomials, B(n,x) and B(k,x), converted to a natural number via prime factorization encoding explained in A297845.

The programs for A391259, there is no canonical definition to state claims against.
-/

/-! ## A391259.P11551751674124373783

`A297845(C(A260443(col(n)+1)+A260443(row(n)-col(n)+1)-1, 2)+A260443(col(n)+1))`
-/

namespace A391259.P11551751674124373783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297845 ((Nat.choose (A260443 (SequenceMachineLib.triCol n + 1) + A260443 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat - 1).toNat 2 : ℤ) + A260443 (SequenceMachineLib.triCol n + 1)).toNat

end

end A391259.P11551751674124373783

/-! ## A391259.P11045456276664140444

`A260443(A003991(n+1)%A330580(n+2))`
-/

namespace A391259.P11045456276664140444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (Int.tmod (A003991 (n + 1)) (A330580 (n + 2))).toNat

end

end A391259.P11045456276664140444

/-! ## A391259.P896009192898303989

`A260443(A391260(n+1))%A399907(2*(n+3))`
-/

namespace A391259.P896009192898303989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260443 (A391260 (n + 1)).toNat) (A399907 (2 * (n + 3)))

end

end A391259.P896009192898303989

/-! ## A391259.P6086231722582883918

`A260443(A391260(n+1)%A386560(n+1))`
-/

namespace A391259.P6086231722582883918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (Int.tmod (A391260 (n + 1)) (A386560 (n + 1))).toNat

end

end A391259.P6086231722582883918

/-! ## A391259.P16978433790483016777

`A260443(A003991(n+1))%A268064(n+3)`
-/

namespace A391259.P16978433790483016777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260443 (A003991 (n + 1)).toNat) (A268064 (n + 3))

end

end A391259.P16978433790483016777

/-!
# A391260: Square array A(n,k): Index of the product of Stern polynomials B(n,x) and B(k,x) among the Stern polynomials, or 0 if the product is not a Stern polynomial (see A125184).

The programs for A391260, there is no canonical definition to state claims against.
-/

/-! ## A391260.P15111431510831205431

`A003991(n+1)*A389449(A391259(n+1))`
-/

namespace A391260.P15111431510831205431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A389449 (A391259 (n + 1)).toNat

end

end A391260.P15111431510831205431

/-! ## A391260.P13443642204613630756

`A277333(A297845(C(A260443(col(n)+1)+A260443(row(n)-col(n)+1)-1, 2)+A260443(col(n)+1)))`
-/

namespace A391260.P13443642204613630756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277333 (A297845 ((Nat.choose (A260443 (SequenceMachineLib.triCol n + 1) + A260443 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat - 1).toNat 2 : ℤ) + A260443 (SequenceMachineLib.triCol n + 1)).toNat).toNat

end

end A391260.P13443642204613630756

/-! ## A391260.P7834692221557721023

`A003991(n+1)%A109725(A027642(n))`
-/

namespace A391260.P7834692221557721023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003991 (n + 1)) (A109725 (A027642 n).toNat)

end

end A391260.P7834692221557721023

/-! ## A391260.P5109339248693975716

`A003991(n+1)%A017765(2*n+3)`
-/

namespace A391260.P5109339248693975716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003991 (n + 1)) (A017765 (2 * n + 3))

end

end A391260.P5109339248693975716

/-! ## A391260.P4754911534678160302

`A003991(n+1)*A319566(A181340(n+2))`
-/

namespace A391260.P4754911534678160302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A319566 (A181340 (n + 2)).toNat

end

end A391260.P4754911534678160302

/-!
# A391263: The number of two-component spanning forests of the wheel graph W_{n+1} in which vertices v_1 and v_3 lie in different components.

The programs for A391263, the canonical program `A391263.P17886300817763852613` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391263 has offset 2).

The definition of A391263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

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

/-! ## A391263.P17886300817763852613

`2*A004146(n+1)-2`

The canonical program, it is in `Seq.B002.C008`.
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

theorem P6198638937357430639.correct : P6198638937357430639.Spec := by
  intro n
  simp only [A391263, Nat.add_sub_cancel, A391263.P6198638937357430639.a, A391263.P17886300817763852613.a, A004146, A004146.P7346826017881566823.a, A005248, A005248.P3255906601217542815.a, A000032, A000032.P8352177345629330861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391263

/-! ## A391263.P3873657710972956172

`2*(A000032(2*(n+2)-2)-3)`
-/

namespace A391263.P3873657710972956172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 (2 * (n + 2) - 2) - 3)

end

end A391263.P3873657710972956172

namespace A391263

/-- `2*(A000032(2*(n+2)-2)-3)` -/
def P3873657710972956172.Spec : Prop :=
  ∀ n, P3873657710972956172.a n = A391263 (n + 2)

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

/-! ## A391263.P1961786026324517045

`2*(A004146(n+1)-1)`
-/

namespace A391263.P1961786026324517045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004146 (n + 1) - 1)

end

end A391263.P1961786026324517045

namespace A391263

/-- `2*(A004146(n+1)-1)` -/
def P1961786026324517045.Spec : Prop :=
  ∀ n, P1961786026324517045.a n = A391263 (n + 2)

theorem P1961786026324517045.correct : P1961786026324517045.Spec := by
  intro n
  simp only [A391263, Nat.add_sub_cancel, A391263.P1961786026324517045.a, A391263.P17886300817763852613.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

theorem P16321844555560326351.correct : P16321844555560326351.Spec := by
  intro n
  simp only [A391263, Nat.add_sub_cancel, A391263.P16321844555560326351.a, A391263.P17886300817763852613.a, A004146, A004146.P7346826017881566823.a, A005592, A005592.P14150685278040946245.a, A000032, A000032.P8352177345629330861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391263

/-! ## A391263.P8636747983879434230

`2*(A005248(n+1)-3)`
-/

namespace A391263.P8636747983879434230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005248 (n + 1) - 3)

end

end A391263.P8636747983879434230

namespace A391263

/-- `2*(A005248(n+1)-3)` -/
def P8636747983879434230.Spec : Prop :=
  ∀ n, P8636747983879434230.a n = A391263 (n + 2)

theorem P8636747983879434230.correct : P8636747983879434230.Spec := by
  intro n
  simp only [A391263, Nat.add_sub_cancel, A391263.P8636747983879434230.a, A391263.P17886300817763852613.a, A004146, A004146.P7346826017881566823.a, A005248, A005248.P3255906601217542815.a, A000032, A000032.P8352177345629330861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

/-!
# A391264: a(3*n) = 1, a(3*n+1) = 3*n+1, a(3*n+2) = (3*n+1)*(3*n+2)/2.

The programs for A391264, the canonical program `A391264.P6076929936978925194` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391264 has offset 0).

The definition of A391264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391264.P6076929936978925194

`ogf((1+x+x^2-2x^3+x^4+7x^5+x^6-2x^7+x^8)/(1-3x^3+3x^6-x^9))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391264

/-- `ogf((1+x+x^2-2x^3+x^4+7x^5+x^6-2x^7+x^8)/(1-3x^3+3x^6-x^9))` -/
def P6076929936978925194.Spec : Prop :=
  ∀ n, P6076929936978925194.a n = A391264 n

theorem P6076929936978925194.correct : P6076929936978925194.Spec := by
  intro n
  simp only [A391264]

end A391264

/-! ## A391264.P7367445441425205946

`C(n, n%3)`
-/

namespace A391264.P7367445441425205946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n % 3)

end

end A391264.P7367445441425205946

namespace A391264

/-- `C(n, n%3)` -/
def P7367445441425205946.Spec : Prop :=
  ∀ n, (P7367445441425205946.a n : ℤ) = A391264 n

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

The programs for A391265, the canonical program `A391265.P2002959780654966542` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391265 has offset 0).

The definition of A391265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(2*n/5), C(#, 2*n-5*#)]` (program `A391265.P2002959780654966542`, by `A391265.P2002959780654966542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391265.P1898400897348443974

`ogf((1-x^3)/(1-2x^3-x^5+x^6))`
-/

namespace A391265.P1898400897348443974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1] [1, 0, 0, -2, 0, -1, 1] n

end

end A391265.P1898400897348443974

namespace A391265

/-- `ogf((1-x^3)/(1-2x^3-x^5+x^6))` -/
def P1898400897348443974.Spec : Prop :=
  ∀ n, P1898400897348443974.a n = A391265 n

end A391265

/-! ## A391265.P12173664234301480603

`2*a(n-3)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1`
-/

namespace A391265.P12173664234301480603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 1] fun n a =>
  2 * a (n - 3) + a (n - 5) - a (n - 6)

end

end A391265.P12173664234301480603

namespace A391265

/-- `2*a(n-3)+a(n-5)-a(n-6)` -/
def P12173664234301480603.Spec : Prop :=
  ∀ n, P12173664234301480603.a n = A391265 n

end A391265

/-! ## A391265.P2002959780654966542

`∑{#}[floor(2*n/5), C(#, 2*n-5*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391265

/-- `∑{#}[floor(2*n/5), C(#, 2*n-5*#)]` -/
def P2002959780654966542.Spec : Prop :=
  ∀ n, (P2002959780654966542.a n : ℤ) = A391265 n

theorem P2002959780654966542.correct : P2002959780654966542.Spec := by
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

/-! ## A391271.P5103499536411997601

`A175181(A288933(n+1)+A004171(n))`
-/

namespace A391271.P5103499536411997601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175181 (A288933 (n + 1) + A004171 n).toNat

end

end A391271.P5103499536411997601

/-!
# A391272: Row sums of the triangle A391318, given by T(n,k) = T(n-1,k) + T(n-1,k-1) + T(n-2,k-1) + 1, with T(0,0) = T(n,-1) = T(n,n+1) = 0.

The programs for A391272, the canonical program `A391272.P540422450543250602` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391272 has offset 0).

The definition of A391272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391272.P540422450543250602

`ogf((2x-x^2)/(1-4x+4x^2-x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391272

/-- `ogf((2x-x^2)/(1-4x+4x^2-x^4))` -/
def P540422450543250602.Spec : Prop :=
  ∀ n, P540422450543250602.a n = A391272 n

theorem P540422450543250602.correct : P540422450543250602.Spec := by
  intro n
  simp only [A391272]

end A391272

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

/-! ## A391272.P13329201290402455589

`∑[2*a(n-1)+a(n-2)+1]` with `a(0)=0, a(1)=2`
-/

namespace A391272.P13329201290402455589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * f1 (n - 1) + (f1 (n - 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391272.P13329201290402455589

namespace A391272

/-- `∑[2*a(n-1)+a(n-2)+1]` -/
def P13329201290402455589.Spec : Prop :=
  ∀ n, (P13329201290402455589.a n : ℤ) = A391272 n

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

/-! ## A391272.P491122525582256079

`∑[3-(2*(1-a(n-1))-a(n-2))]` with `a(0)=0, a(1)=2`
-/

namespace A391272.P491122525582256079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  3 - (2 * (1 - f1 (n - 1)) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391272.P491122525582256079

namespace A391272

/-- `∑[3-(2*(1-a(n-1))-a(n-2))]` -/
def P491122525582256079.Spec : Prop :=
  ∀ n, P491122525582256079.a n = A391272 n

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

/-! ## A391273.P2683453981997988045

`A136480(4*∑[A385090(n)])`
-/

namespace A391273.P2683453981997988045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (4 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A391273.P2683453981997988045

/-! ## A391273.P137082431884123889

`A087229(A045309(n+5)*n*n)`
-/

namespace A391273.P137082431884123889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087229 (A045309 (n + 5) * (n : ℤ) * (n : ℤ)).toNat

end

end A391273.P137082431884123889

/-! ## A391273.P16236867557144533785

`A384890(A195600(n))+A000034(n)`
-/

namespace A391273.P16236867557144533785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384890 (A195600 n).toNat + A000034 n

end

end A391273.P16236867557144533785

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

/-! ## A391275.P571935576297516129

`A091374(A129327(n+1))`
-/

namespace A391275.P571935576297516129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091374 (A129327 (n + 1)).toNat

end

end A391275.P571935576297516129

/-!
# A391276: Expansion of g^2/(1 - x*g)^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391276, there is no canonical definition to state claims against.
-/

/-! ## A391276.P18254110778897414695

`A064775(A162326(n+2))`
-/

namespace A391276.P18254110778897414695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064775 (A162326 (n + 2)).toNat

end

end A391276.P18254110778897414695

/-!
# A391277: Expansion of g^3/(1 - x*g)^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391277, there is no canonical definition to state claims against.
-/

/-! ## A391277.P2190190266614569803

`A337011(n)-A216503(A145350(n))`
-/

namespace A391277.P2190190266614569803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337011 n - A216503 (A145350 n).toNat

end

end A391277.P2190190266614569803

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
# A391279: Expansion of g^3/(1 - x*g)^4, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391279, there is no canonical definition to state claims against.
-/

/-! ## A391279.P1326218178604083391

`A056023(∑[∑[A358451(2*n+3)]])`
-/

namespace A391279.P1326218178604083391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358451 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A391279.P1326218178604083391

/-!
# A391280: Array read by ascending antidiagonals: T(n,k) is the number of primes p in the range n*(k-1) < p <= n*k.

The programs for A391280, there is no canonical definition to state claims against.
-/

/-! ## A391280.P11759889715857132724

`A325169(or(A055249(n), A325169(n+4)))`
-/

namespace A391280.P11759889715857132724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (Int.lor (A055249 n) (A325169 (n + 4))).toNat

end

end A391280.P11759889715857132724

/-! ## A391280.P7022123035983593262

`A060467(A060451(n+1)-A060447(n+1))`
-/

namespace A391280.P7022123035983593262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060467 (A060451 (n + 1) - A060447 (n + 1)).toNat

end

end A391280.P7022123035983593262

/-! ## A391280.P15901432366838062758

`A335294(A320078(3*n+2)+A113693(n+1))`
-/

namespace A391280.P15901432366838062758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335294 (A320078 (3 * n + 2) + A113693 (n + 1)).toNat

end

end A391280.P15901432366838062758

/-! ## A391280.P13566408570198068224

`A326413(A196721(n)+1)`
-/

namespace A391280.P13566408570198068224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326413 (A196721 n + 1).toNat

end

end A391280.P13566408570198068224

/-! ## A391280.P4934827861902070550

`A001221(A046897(n²+1)²)-col(n)`
-/

namespace A391280.P4934827861902070550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A046897 (n ^ 2 + 1) ^ 2).toNat - (SequenceMachineLib.triCol n : ℤ)

end

end A391280.P4934827861902070550

/-!
# A391281: Primitive e-unitary perfect numbers: powerful numbers k for which A322857(k) = 2*k.

The programs for A391281, there is no canonical definition to state claims against.
-/

/-! ## A391281.P7220094527500782350

`A054980(lt[1, 3*T(n-1,k-1)])` with `a(0)=1, a(1)=2, a(2)=6, a(3)=2, a(4)=1, a(5)=1, a(6)=2`
-/

namespace A391281.P7220094527500782350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6, 2, 1, 1, 2] fun n f2 =>
  3 * SequenceMachineLib.triUpLeft f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054980 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A391281.P7220094527500782350

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

/-! ## A391284.P14579254026514806369

`A329188(n+1)^A326843(A106349(n+1))`
-/

namespace A391284.P14579254026514806369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329188 (n + 1) : ℚ) ^ (A326843 (A106349 (n + 1)).toNat : ℤ)

end

end A391284.P14579254026514806369

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

/-! ## A391285.P10669168025626511084

`∑[A399266(A308805(3*n+4)*A399270(n))]`
-/

namespace A391285.P10669168025626511084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399266 (A308805 (3 * n + 4) * A399270 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391285.P10669168025626511084

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

/-! ## A391286.P16523008889955796140

`A255070(A182969(n))`
-/

namespace A391286.P16523008889955796140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255070 (A182969 n).toNat

end

end A391286.P16523008889955796140

/-! ## A391286.P12967629027687362504

`A213177(A185043(3*n+1))+(n+1)!-C(2*(n+1), n+1)/(n+2)`
-/

namespace A391286.P12967629027687362504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213177 (A185043 (3 * n + 1)).toNat : ℚ) + ((Nat.factorial (n + 1) : ℚ) - (Nat.choose (2 * (n + 1)) (n + 1) : ℚ) / (n + 2 : ℚ))

end

end A391286.P12967629027687362504

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

/-! ## A391294.P5856889974758739968

`A138999(A052918(n)+∑[n])`
-/

namespace A391294.P5856889974758739968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A052918 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A391294.P5856889974758739968

/-!
# A391295: Expansion of g^2/(1 + x^2*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391295, there is no canonical definition to state claims against.
-/

/-! ## A391295.P4554597128055797884

`A391122(n)-A055679(∑[A390280(n)])`
-/

namespace A391295.P4554597128055797884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391122 n - A055679 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A391295.P4554597128055797884

/-! ## A391295.P16836123362769993049

`A068050(A391178(n)+A191668(n+1))`
-/

namespace A391295.P16836123362769993049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068050 (A391178 n + A191668 (n + 1)).toNat

end

end A391295.P16836123362769993049

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

/-! ## A391296.P10117029521981707767

`∑[A076885(∑[A001850(n)])]`
-/

namespace A391296.P10117029521981707767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391296.P10117029521981707767

/-!
# A391297: Expansion of g^2/(1 + x^2*g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391297, there is no canonical definition to state claims against.
-/

/-! ## A391297.P7521971622194684015

`∑[A100452(A001764(n))]`
-/

namespace A391297.P7521971622194684015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100452 (A001764 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391297.P7521971622194684015

/-! ## A391297.P9608964343198420645

`∑[A100452(A110616(∑[n]))]`
-/

namespace A391297.P9608964343198420645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100452 (A110616 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391297.P9608964343198420645

/-!
# A391298: Expansion of g^2/(1 + x^3*g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391298, there is no canonical definition to state claims against.
-/

/-! ## A391298.P7297823840914972412

`A367221(∑[A022840(n+1)]+1)`
-/

namespace A391298.P7297823840914972412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367221 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A391298.P7297823840914972412

/-! ## A391298.P14168184564305280283

`A367221(∑[∑[A091787(3*n+1)]])`
-/

namespace A391298.P14168184564305280283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091787 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A391298.P14168184564305280283

/-!
# A391299: Expansion of g^2/(1 + x^2*g^3), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391299, there is no canonical definition to state claims against.
-/

/-! ## A391299.P504227896453624243

`Δ[∑[A001764(n)]-A389697(n)]`
-/

namespace A391299.P504227896453624243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A389697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391299.P504227896453624243

/-! ## A391299.P3050242475817954996

`∑[A037918(A394946(n))]`
-/

namespace A391299.P3050242475817954996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A394946 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391299.P3050242475817954996

